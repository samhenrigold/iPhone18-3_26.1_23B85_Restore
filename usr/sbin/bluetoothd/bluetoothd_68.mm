float sub_1004D1688(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = a4;
  v8 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v12[0]) = 67109120;
    HIDWORD(v12[0]) = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Initiate Audio Delivery Speed Change Latency change target=%d", v12, 8u);
  }

  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 552);
  v9 = 1.1;
  if (a3 != 1)
  {
    v9 = 1.0;
  }

  if (a3 == 2)
  {
    v10 = *"fff?";
  }

  else
  {
    v10 = v9;
  }

  if (a2)
  {
    sub_100703758(a2, v4, v10);
    if (!v4)
    {
      *(a2 + 716) = v10;
    }
  }

  sub_1000088CC(v12);
  return v10;
}

uint64_t sub_1004D17C8(os_unfair_lock_s *a1, uint64_t a2)
{
  v4 = sub_1004D03D4(a1, a2);
  v5 = sub_1004CEE18(a1, a2);
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v6, &__p);
    v8 = v23 >= 0 ? &__p : __p;
    *buf = 136446210;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Suspending A2DP audio stream to device %{public}s", buf, 0xCu);
    if (v23 < 0)
    {
      operator delete(__p);
    }
  }

  sub_1004D0FAC(a1, a2);
  *buf = sub_100508ED0((v4 + 50));
  if (!*buf)
  {
    return 1;
  }

  v9 = *(v4 + 182);
  if (v9 == 5)
  {
    LOBYTE(__p) = 0;
    sub_1000216B4(&__p);
    v10 = sub_1001F85A8(buf, 1, 0);
    sub_100022214(&__p);
    if (v10)
    {
      v11 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR);
      if (v11)
      {
        sub_10083752C();
      }

      v13 = sub_1000DAB84(v11, v12);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1004D1A4C;
      v18[3] = &unk_100AEB940;
      v18[4] = a1;
      v19 = a2;
      sub_10008E008(v13, 2000, v18);
    }

    else
    {
      *(v4 + 182) = 6;
    }

    sub_10002249C(&__p);
  }

  else
  {
    v15 = qword_100BCE8B8;
    v16 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (!v16)
    {
      return result;
    }

    v17 = *(v4 + 183);
    LODWORD(__p) = 67109376;
    HIDWORD(__p) = v9;
    v21 = 1024;
    v22 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Could not suspend, stream state is %d and pending request is %d", &__p, 0xEu);
  }

  return 0;
}

void sub_1004D1A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D1A4C(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(result + 536);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = result + 536;
    do
    {
      v6 = *(v3 + 32);
      v7 = v6 >= v4;
      v8 = v6 < v4;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
    if (v5 != result + 536 && *(v5 + 32) <= v4)
    {
      return sub_1004D1A9C(result, v4);
    }
  }

  return result;
}

uint64_t sub_1004D1A9C(os_unfair_lock_s *a1, uint64_t a2)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, &a1[138]);
  v4 = sub_1004D03D4(a1, a2);
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 182);
    v12 = sub_100508ED0((v4 + 50));
    if (v6 == 5)
    {
      v7 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device is in streaming state, checking if we should suspend the stream", v11, 2u);
      }

      if ((sub_100703628(v5) & 1) == 0)
      {
        v8 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "There is no audio device or HAL is not streaming to us, suspend the stream!", v11, 2u);
        }

        sub_1004D0FAC(a1, a2);
        v11[0] = 0;
        sub_1000216B4(v11);
        v9 = sub_1001F85A8(&v12, 1, 0);
        sub_100022214(v11);
        if (v9 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          sub_1008375AC();
        }

        *(v5 + 728) = 6;
        sub_10002249C(v11);
      }
    }
  }

  return sub_1000088CC(v13);
}

void sub_1004D1C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D1C40(os_unfair_lock_s *a1, uint64_t a2)
{
  v4 = sub_1004D03D4(a1, a2);
  v5 = sub_1004CEE18(a1, a2);
  v6 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    if (!v5)
    {
      *buf = 136446210;
      v14 = "NULL";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Resetting A2DP audio stream to device %{public}s", buf, 0xCu);
      return 1;
    }

    sub_1000E5A58(v5, __p);
    if (v12 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136446210;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Resetting A2DP audio stream to device %{public}s", buf, 0xCu);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (!v5)
  {
    return 1;
  }

  if (*(v4 + 704) == 1)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1004D1DF4;
    v9[3] = &unk_100AF9D90;
    v10 = a2;
    sub_1004CEEC4(a1 + 108, v9);
  }

  return 0;
}

BOOL sub_1004D1E24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004CEE18(a1, a2);
  v5 = sub_1004D03D4(a1, a2);
  if (!v4)
  {
    return 1;
  }

  v6 = v5;
  v7 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ConnectMediaStream for a2dpHandle %d", buf, 8u);
  }

  v18 = sub_100508ED0((v6 + 50));
  v8 = *(v6 + 182);
  v9 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v4, __p);
    v10 = v20 >= 0 ? __p : *__p;
    v11 = *(v6 + 183);
    *buf = 136446722;
    *&buf[4] = v10;
    v22 = 1024;
    v23 = v8;
    v24 = 1024;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Starting Media connection to device %{public}s. Current stream state is %d and pending stream request is %d ", buf, 0x18u);
    if (v20 < 0)
    {
      operator delete(*__p);
    }
  }

  result = 0;
  if (v8 <= 3)
  {
    if (!v8)
    {
      sub_1004D21B8(a1, a2);
      return 0;
    }

    if (v8 != 3)
    {
      return result;
    }

    v13 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v4, buf);
      v14 = v25 >= 0 ? buf : *buf;
      *__p = 136446210;
      *&__p[4] = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Attempting to start streaming to device %{public}s", __p, 0xCu);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(*buf);
      }
    }

    if (!atomic_load((a1 + 752)))
    {
      buf[0] = 0;
      sub_1000216B4(buf);
      v16 = sub_10024DEFC(sub_1004D25B0, (v4 + 16));
      atomic_store(mach_absolute_time(), (a1 + 744));
      sub_100022214(buf);
      if (v16 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_100837658();
      }

      sub_10002249C(buf);
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    sub_1002429D4((v4 + 16));
    v17 = sub_1001F7840(&v18, 1, 0);
    sub_100022214(buf);
    if (!v17)
    {
      *(v6 + 182) = 4;
      sub_10002249C(buf);
      return 0;
    }

    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_1008376C8();
    }

    if (v17 == 408)
    {
      *(v6 + 183) = 1;
    }

    sub_10002249C(buf);
    return 1;
  }

  switch(v8)
  {
    case 4:
      result = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_10083761C();
      return 0;
    case 5:
      sub_1004D0A0C(a1, a2);
      return 0;
    case 6:
      result = 0;
      *(v6 + 183) = 1;
      break;
  }

  return result;
}

void sub_1004D2198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D21B8(os_unfair_lock_s *a1, uint64_t a2)
{
  v30[0] = 0;
  v30[1] = 0;
  sub_100007F88(v30, &a1[138]);
  v4 = sub_1004D03D4(a1, a2);
  v5 = *(v4 + 182);
  v6 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SelectStreamConfig for a2dpHandle %d", buf, 8u);
  }

  v7 = sub_10050A6F0((v4 + 50));
  v8 = sub_10050DCAC(&a1[70], v7);
  v9 = sub_10050B61C((v4 + 50), v8);
  v10 = sub_1004CEE18(a1, a2);
  if (v5 < 2)
  {
    v13 = v10;
    if (v9)
    {
      v29 = 0;
      v14 = *(v4 + 139);
      v15 = *(v4 + 138);
      v16 = sub_100509098((v4 + 50));
      v27 = *(v16 + 32);
      v17 = sub_100509144((v4 + 50));
      v18 = *(v4 + 592);
      v19 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v13, &__p);
        p_p = &__p;
        if (v34 < 0)
        {
          p_p = __p;
        }

        *buf = 67110146;
        *&buf[4] = v15;
        v36 = 1024;
        v37 = v14;
        v38 = 2082;
        v39 = p_p;
        v40 = 1024;
        v41 = v17;
        v42 = 1024;
        v43 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Setting stream configuration for local SEID %u and remote SEID %u on device %{public}s, remote delay reporting %d, local delay reporting %d", buf, 0x24u);
        if (v34 < 0)
        {
          operator delete(__p);
        }
      }

      v21 = *(v16 + 44);
      v28 = 0;
      sub_1000216B4(&v28);
      v22 = sub_1001F6F28(a2, v14, v15, v27, (v21 - (v18 & (v17 ^ 1))), 0, &v29);
      sub_100022214(&v28);
      v23 = qword_100BCE8B8;
      if (v22)
      {
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          sub_100837738();
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v29;
          sub_1000E5A58(v13, buf);
          v25 = SHIBYTE(v39) >= 0 ? buf : *buf;
          LODWORD(__p) = 67109378;
          HIDWORD(__p) = v24;
          v32 = 2082;
          v33 = v25;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "SelectStreamConfig setting a2dp stream handle to %d for device %{public}s", &__p, 0x12u);
          if (SHIBYTE(v39) < 0)
          {
            operator delete(*buf);
          }
        }

        sub_100508F20((v4 + 50), v29);
      }

      sub_10002249C(&v28);
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v13, buf);
        sub_1008377A8();
      }

      sub_1004CFE18(a1, a2);
    }

    v12 = 0;
  }

  else
  {
    v11 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Invalid stream state %d, cannot select stream config unless in CONNECTING or INVALID state", buf, 8u);
    }

    v12 = 1;
  }

  sub_1000088CC(v30);
  return v12;
}

void sub_1004D255C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, int a13, char a14)
{
  sub_10002249C(&a12);
  sub_1000088CC(&a14);
  _Unwind_Resume(a1);
}

void sub_1004D25B0(int a1, uint64_t a2, int a3, __int16 a4)
{
  v8 = mach_absolute_time();
  v10 = sub_1000DAB84(v8, v9);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1004E445C;
  v11[3] = &unk_100AFA2C0;
  v12 = a1;
  v13 = a3;
  v14 = a4;
  v11[4] = a2;
  v11[5] = v8;
  sub_10000CA94(v10, v11);
}

uint64_t sub_1004D2658(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v6 = a4;
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, &a1[138]);
  v9 = sub_1004D03D4(a1, a3);
  sub_10050C288((v9 + 50), v6);
  v10 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a5, __p);
    v11 = v18 >= 0 ? __p : __p[0];
    v12 = *(v9 + 162);
    *buf = 136446722;
    v21 = v11;
    v22 = 1024;
    v23 = v6;
    v24 = 1024;
    v25 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Configuring A2DP audio device %{public}s MTU=%u, RTP_len=%u", buf, 0x18u);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10050CF50((v9 + 50));
  if (sub_1004D28A8(a1, a3, a5) == 311)
  {
    v13 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "A2DP audio device already exists, since mtu size changed, need to reconfigure the audio device", buf, 2u);
    }

    sub_1007038E4(v9, *(v9 + 85));
    sub_1007038B4(v9, *(v9 + 166));
    sub_1007038C4(v9, *(v9 + 165));
    sub_1007038D4(v9, *(v9 + 163));
    sub_100703718(v9, 1);
    sub_1007036E8(v9, *(v9 + 712));
    sub_100703758(v9, 0, 1.0);
    sub_1007036B8(v9, *(v9 + 704));
    if (*(v9 + 704) == 1)
    {
      v15 = sub_10050BE78((v9 + 50), v14);
      sub_1007036D8(v9, v15);
      *(v9 + 706) = 0;
    }
  }

  sub_1000088CC(v19);
  return 0;
}

void sub_1004D2888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D28A8(os_unfair_lock_s *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a3, &__p);
    v6 = (SBYTE7(v153) & 0x80u) == 0 ? &__p : __p;
    *buf = 136446466;
    *&buf[4] = v6;
    *&buf[12] = 1024;
    *&buf[14] = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Publishing audio device %{public}s on a2dpHandle %d", buf, 0x12u);
    if (SBYTE7(v153) < 0)
    {
      operator delete(__p);
    }
  }

  v142 = a2;
  v7 = sub_1004D03D4(a1, a2);
  v8 = v7;
  if (*(v7 + 24) == 1)
  {
    v9 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a3, &__p);
      if ((SBYTE7(v153) & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 136446466;
      *&buf[4] = p_p;
      *&buf[12] = 1024;
      *&buf[14] = a2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Audio device %{public}s on a2dpHandle %d is already published", buf, 0x12u);
      if (SBYTE7(v153) < 0)
      {
        operator delete(__p);
      }
    }

    return 311;
  }

  v12 = sub_1005095A4((v7 + 50));
  sub_1000BE6F8(a3 + 128, buf);
  if (v160 >= 0)
  {
    v13 = buf;
  }

  else
  {
    v13 = *buf;
  }

  sub_100007E30(&__p, v13);
  sub_1003A2964(v8, &__p);
  if (SBYTE7(v153) < 0)
  {
    operator delete(__p);
  }

  if (v160 < 0)
  {
    operator delete(*buf);
  }

  sub_1000C23E0(a3, buf);
  if (v160 >= 0)
  {
    v14 = buf;
  }

  else
  {
    v14 = *buf;
  }

  sub_100007E30(&__p, v14);
  sub_1003A2AF0(v8, &__p);
  if (SBYTE7(v153) < 0)
  {
    operator delete(__p);
  }

  if (v160 < 0)
  {
    operator delete(*buf);
  }

  sub_1000BE6F8(a3 + 128, buf);
  if (v160 >= 0)
  {
    v15 = buf;
  }

  else
  {
    v15 = *buf;
  }

  sub_100007E30(&__p, v15);
  sub_1003A28D8(v8, &__p);
  if (SBYTE7(v153) < 0)
  {
    operator delete(__p);
  }

  if (v160 < 0)
  {
    operator delete(*buf);
  }

  sub_1003A2AE8(v8, a3);
  sub_100703898(v8, v12);
  v149 = 0.0;
  if (qword_100B541D0 != -1)
  {
    sub_100837804();
  }

  v16 = sub_1006C4558(off_100B541C8, a3, &v149);
  if (v16)
  {
    v17 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p) = 134217984;
      *(&__p + 4) = v149;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Setting audio device volume to %f", &__p, 0xCu);
    }

    sub_1003A2788(v8, v149);
  }

  sub_10050C1BC((v8 + 50), v16);
  sub_1003A32D0(v8, v16);
  v18 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = sub_1000E2140(a3, 0x20u);
    LODWORD(__p) = 67109120;
    DWORD1(__p) = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "A2DPClient setSupportsTipi %d", &__p, 8u);
  }

  v20 = sub_1000E2140(a3, 0x20u);
  sub_1003A3318(v8, v20);
  sub_1007038B4(v8, *(v8 + 166));
  sub_1007038A8(v8, *(v8 + 84));
  sub_1007038C4(v8, *(v8 + 165));
  sub_1007038D4(v8, *(v8 + 163));
  sub_1007038E4(v8, *(v8 + 85));
  v22 = sub_10050BE78((v8 + 50), v21);
  sub_1003A34D0(v8, v22);
  v23 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v25 = sub_10050BE78((v8 + 50), v24);
    LODWORD(__p) = 67109120;
    DWORD1(__p) = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Setting audio device latency to %d", &__p, 8u);
  }

  v26 = sub_100509234((v8 + 50));
  sub_10069BD7C(v8, v26);
  sub_100703718(v8, 1);
  sub_1007036E8(v8, *(v8 + 712));
  sub_100703758(v8, 0, 1.0);
  sub_1007036B8(v8, *(v8 + 704));
  v27 = sub_100537920(a3);
  sub_1003A3A8C(v8, v27);
  v28 = qword_100BCE8B8;
  v29 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT);
  if (v29)
  {
    v31 = sub_10000C798(v29, v30);
    v32 = (*(*v31 + 248))(v31);
    v33 = sub_1000E2140(a3, 0x31u);
    v34 = sub_1005465D4(a3);
    LODWORD(__p) = 67109632;
    DWORD1(__p) = v32;
    WORD4(__p) = 1024;
    *(&__p + 10) = v33;
    HIWORD(__p) = 1024;
    LODWORD(v153) = v34;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Local and remote low latency game support, local: %d remote: %d Bandswitch Support %d", &__p, 0x14u);
  }

  v35 = sub_1000E2140(a3, 0x31u);
  if (v35)
  {
    v37 = sub_10000C798(v35, v36);
    v38 = (*(*v37 + 248))(v37);
  }

  else
  {
    v38 = 0;
  }

  sub_100703858(v8, v38);
  if (!sub_1000E2140(a3, 0xCu))
  {
    v40 = sub_100539FE8(a3);
    if (!v40)
    {
      v41 = sub_1004DBF5C(v40, a3);
      sub_10069BFD4(v8, v41);
    }
  }

  if (*(v8 + 704) == 1)
  {
    v42 = sub_10050BE78((v8 + 50), v39);
    sub_1007036D8(v8, v42);
    *(v8 + 706) = 0;
  }

  if (qword_100B50950 != -1)
  {
    sub_1008373EC();
  }

  v43 = sub_1003391A4(off_100B50948, a3);
  sub_1003A3574(v8, v43);
  v44 = sub_1000E2140(a3, 0xCu);
  sub_1003A354C(v8, v44);
  if (qword_100B50950 != -1)
  {
    sub_1008373EC();
  }

  if (sub_1003391A4(off_100B50948, a3))
  {
    if (qword_100B50950 != -1)
    {
      sub_1008373EC();
    }

    v45 = sub_10033C0B8(off_100B50948, a3);
    sub_1003A359C(v8, v45);
    LODWORD(__p) = 0;
    *buf = 0;
    if (qword_100B50950 != -1)
    {
      sub_1008373EC();
    }

    sub_10033C1E4(off_100B50948, a3, &__p, buf);
    sub_1003A35C4(v8, __p, buf[0]);
    *v150 = 3;
    if (qword_100B50950 != -1)
    {
      sub_1008373EC();
    }

    sub_10033C47C(off_100B50948, a3, v150);
    sub_1003A35D4(v8, v150[0]);
    v46 = sub_1000E3314(a3);
    sub_1003A35E4(v8, v46);
  }

  v47 = sub_1000E2140(a3, 0x24u);
  sub_100703748(v8, v47);
  if (sub_1000E2140(a3, 0xCu) || sub_100539FE8(a3))
  {
    if (qword_100B50950 != -1)
    {
      sub_1008373EC();
    }

    v48 = sub_1000E0264(off_100B50948, a3);
    sub_1003A35F4(v8, v48);
  }

  if (sub_1000E012C(a3, 0xB0u))
  {
    v49 = 4;
  }

  else
  {
    v49 = 0;
  }

  v148 = v49;
  sub_1004DBA04(a1, a3, &v148);
  if (sub_100541024(a3))
  {
    v50 = sub_1000E3284(a3);
    sub_1003A3614(v8, v50);
  }

  if (sub_100549214(a3))
  {
    v51 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a3, &__p);
      v52 = (SBYTE7(v153) & 0x80u) == 0 ? &__p : __p;
      *buf = 136446210;
      *&buf[4] = v52;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Applying DontAutoRoute: %{public}s", buf, 0xCu);
      if (SBYTE7(v153) < 0)
      {
        operator delete(__p);
      }
    }

    sub_100546F14(a3, 0);
    sub_1003A4008(v8, 0);
  }

  if (sub_10054925C(a3))
  {
    v53 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a3, &__p);
      v54 = (SBYTE7(v153) & 0x80u) == 0 ? &__p : __p;
      *buf = 136446210;
      *&buf[4] = v54;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Applying AudioRouteHidden: %{public}s", buf, 0xCu);
      if (SBYTE7(v153) < 0)
      {
        operator delete(__p);
      }
    }

    sub_100546F5C(a3, 0);
    sub_1003A407C(v8, 1);
  }

  v146 = 0;
  v147 = 0;
  sub_1000C2364(a3, &v147 + 1, &v147, &v146 + 1, &v146);
  v55 = sub_1000E012C(a3, 0x20u);
  sub_1003A3F6C(v8, v55);
  v56 = sub_1000E012C(a3, 0x40u);
  if (v56)
  {
    v58 = sub_10000C798(v56, v57);
    v59 = (*(*v58 + 840))(v58, 1);
  }

  else
  {
    v59 = 0;
  }

  sub_1003A3CF4(v8, v59);
  v62 = sub_10000C798(v60, v61);
  if (*(*v62 + 840))(v62, 3) && (v63 = sub_1000E012C(a3, 0x40u), (v63))
  {
    v65 = sub_10000C798(v63, v64);
    v66 = (*(*v65 + 840))(v65, 1);
    sub_1003A3E6C(v8, v66);
    if (v66)
    {
      if (qword_100B50940 != -1)
      {
        sub_100837504();
      }

      v67 = sub_100639FCC(off_100B50938, a3);
      sub_100703728(v8, v67);
      if (qword_100B50940 != -1)
      {
        sub_100837504();
      }

      v68 = sub_100639CE0(off_100B50938);
      sub_1003A3D44(v8, v68);

      v69 = 1;
      goto LABEL_107;
    }
  }

  else
  {
    sub_1003A3E6C(v8, 0);
  }

  v69 = 0;
LABEL_107:
  *buf = 0;
  *&buf[8] = 0;
  if (qword_100B508D0 != -1)
  {
    sub_10083782C();
  }

  sub_1000498D4(off_100B508C8, (a3[128] << 40) | (a3[129] << 32) | (a3[130] << 24) | (a3[131] << 16) | (a3[132] << 8) | a3[133], 1u, 1u, 0, 0, &__p);
  v70 = sub_10004DF60(&__p);
  [v70 getUUIDBytes:buf];

  sub_1003A39AC(v8, buf);
  sub_1003A39BC(v8, SHIDWORD(v146));
  sub_1003A39CC(v8, v146);
  sub_1003A39DC(v8, v147);
  v71 = sub_10054AFB4(a3);
  sub_1003A3A14(v8, v71);
  sub_1003A5D88(&__p, a3 + 148);
  sub_1003A3A9C(v8, &__p);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  v72 = sub_10054B04C(a3);
  sub_1003A3BF4(v8, v72);
  v73 = sub_1005493C4(a3);
  sub_1003A3950(v8, v73);
  v74 = sub_10054F974(a3);
  sub_1003A3C04(v8, v74);
  v75 = sub_1000E012C(a3, 0x40u);
  if (v75)
  {
    v77 = sub_10000C798(v75, v76);
    v78 = (*(*v77 + 840))(v77, 1);
    v79 = 0;
    v145 = 0;
    if (v78)
    {
      if (qword_100B508F0 != -1)
      {
        sub_100837854();
      }

      sub_10056C0AC(off_100B508E8, a3, &v145);
      LOBYTE(__p) = 1;
      v80 = sub_100017E6C();
      (*(*v80 + 256))(v80, &__p);
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEBUG))
      {
        sub_10083787C();
      }

      sub_1003A3670(v8, __p);
      if (qword_100B50940 != -1)
      {
        sub_100837504();
      }

      v81 = sub_100639508(off_100B50938);
      (*(*v8 + 128))(v8, v81);
      if (qword_100B508F0 != -1)
      {
        sub_100837854();
      }

      sub_10056C0AC(off_100B508E8, a3, &v145);
      v82 = v145;
      if (!v145)
      {
        if (qword_100B508F0 != -1)
        {
          sub_100837854();
        }

        v82 = 1;
        sub_10056C1D8(off_100B508E8, a3, 1);
        v145 = 1;
      }

      sub_1003A3648(v8, v82 == 1);
      v83 = sub_10000E92C();
      if ((*(*v83 + 8))(v83))
      {
        v84 = sub_10000E92C();
        v85 = (*(*v84 + 592))(v84);
        sub_100703738(v8, v85);
      }

      v79 = 1;
    }
  }

  else
  {
    v79 = 0;
    v145 = 0;
  }

  v86 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    if (qword_100B50950 != -1)
    {
      sub_1008373EC();
    }

    v87 = sub_1003391A4(off_100B50948, a3);
    v88 = sub_1000E2140(a3, 0xCu);
    if (qword_100B50950 != -1)
    {
      sub_1008373EC();
    }

    v89 = sub_10033C0B8(off_100B50948, a3);
    v90 = " NO ";
    if (v79)
    {
      v91 = "YES ";
    }

    else
    {
      v91 = " NO ";
    }

    LODWORD(__p) = 67110658;
    if (v145 == 1)
    {
      v90 = "YES ";
    }

    DWORD1(__p) = v87;
    WORD4(__p) = 1024;
    v92 = "NO";
    *(&__p + 10) = v88;
    HIWORD(__p) = 1024;
    if (v69)
    {
      v92 = "YES";
    }

    LODWORD(v153) = v89;
    WORD2(v153) = 2082;
    *(&v153 + 6) = v91;
    HIWORD(v153) = 2082;
    v154 = v90;
    v155 = 2082;
    v156 = v92;
    v157 = 1024;
    v158 = v148;
    _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "AudioDevice. SupportsInEarDetection %d, isAppleAudioDevice %d, InEarDetectionEnabled %d SpatialSupport  %{public}s SpatialAllowed %{public}s Spatial Profile %{public}s supportedListeningModes %u", &__p, 0x38u);
  }

  if (a3[1032] == 1)
  {
    v93 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a3, &__p);
      v94 = (SBYTE7(v153) & 0x80u) == 0 ? &__p : __p;
      *v150 = 136446210;
      v151 = v94;
      _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Wireless Splitter guest not in contacts %{public}s doAP is not supported", v150, 0xCu);
      if (SBYTE7(v153) < 0)
      {
        operator delete(__p);
      }
    }
  }

  else
  {
    v95 = sub_1000E2140(a3, 0x16u);
    sub_1003A3974(v8, v95);
    if (sub_1000E2140(a3, 0x16u))
    {
      sub_1003A399C(v8, buf);
    }
  }

  sub_1003A3C2C(v8, *(v8 + 722));
  sub_1003A3C54(v8, *(v8 + 723));
  sub_1003A3C7C(v8, a3[1016]);
  sub_1003A3CA4(v8, a3[1032]);
  v96 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    if (a3[1016])
    {
      v97 = "guest device";
    }

    else
    {
      v97 = "owner device";
    }

    LODWORD(__p) = 136315138;
    *(&__p + 4) = v97;
    _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "Wireless Splitter this is %s", &__p, 0xCu);
    v96 = qword_100BCE8B8;
  }

  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
  {
    v98 = sub_1000E2140(a3, 0x1Au);
    v99 = sub_10000E92C();
    v100 = (*(*v99 + 776))(v99);
    v101 = v100;
    v103 = sub_10000C798(v100, v102);
    v104 = (*(*v103 + 840))(v103, 13);
    LODWORD(__p) = 67109632;
    DWORD1(__p) = v98;
    WORD4(__p) = 1024;
    *(&__p + 10) = v101;
    HIWORD(__p) = 1024;
    LODWORD(v153) = v104;
    _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "SupportsSoftwareVol %d getSoftwareVolumeDisabled %d StackSupportSWVolume %d", &__p, 0x14u);
  }

  *(v8 + 726) = 0;
  if (sub_1000E2140(a3, 0x1Au) && (v105 = sub_10000E92C(), v106 = (*(*v105 + 776))(v105), (v106 & 1) == 0))
  {
    v109 = sub_10000C798(v106, v107);
    v108 = (*(*v109 + 840))(v109, 13);
  }

  else
  {
    v108 = 0;
  }

  sub_1003A3CCC(v8, v108);
  *v150 = 0;
  if (sub_1003A3438(v8, v150))
  {
    if (sub_1000E2140(a3, 0x1Au) && ((*v150 - 8202) < 4 || sub_1000E012C(a3, 0xAu)))
    {
      v110 = sub_10000E92C();
      v111 = (*(*v110 + 784))(v110) ^ 1;
    }

    else
    {
      v111 = 0;
    }

    sub_1003A33C8(v8, v111);
    *(v8 + 727) = v111;
    if (sub_1000E2140(a3, 0x1Au))
    {
      v112 = sub_10000E92C();
      v113 = (*(*v112 + 776))(v112);
      if ((v113 & 1) == 0)
      {
        v115 = sub_10000C798(v113, v114);
        v116 = (*(*v115 + 840))(v115, 13);
        v117 = *v150 == 8202 ? 0 : v116;
        if (v117 == 1 && (sub_1000E012C(a3, 0x20u) & 1) == 0)
        {
          v118 = sub_10054F974(a3);
          if (!(*(v8 + 723) | v118))
          {
            v120 = sub_1000DAB84(v118, v119);
            v144[0] = _NSConcreteStackBlock;
            v144[1] = 3221225472;
            v144[2] = sub_1004DC2F4;
            v144[3] = &unk_100AE0860;
            v144[4] = a1;
            v144[5] = a3;
            sub_10000CA94(v120, v144);
          }
        }
      }
    }
  }

  v121 = sub_1000E012C(a3, 0x90u);
  if (v121)
  {
    v123 = sub_10000C7D0(v121, v122);
    v124 = sub_1000E01B4(v123, 0);
  }

  else
  {
    v124 = 0;
  }

  v125 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v126 = "not supported";
    if (v124)
    {
      v126 = "supported";
    }

    LODWORD(__p) = 136315138;
    *(&__p + 4) = v126;
    _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "Adaptive Volume: setAdaptiveVolumeSupport %s", &__p, 0xCu);
  }

  sub_1003A3E94(v8, v124);
  v127 = sub_1000E012C(a3, 0x50u);
  if (v127)
  {
    v129 = sub_10000C7D0(v127, v128);
    v130 = sub_1000E01B4(v129, 1);
  }

  else
  {
    v130 = 0;
  }

  sub_1003A3ECC(v8, v130);
  v131 = sub_1000E012C(a3, 0xA0u);
  if (v131)
  {
    v133 = sub_10000C7D0(v131, v132);
    v134 = sub_1000E01B4(v133, 2);
  }

  else
  {
    v134 = 0;
  }

  sub_1003A3EF4(v8, v134);
  v135 = (sub_1000E31D0(a3) & 2) == 0;
  sub_1003A4F44(v8, v135);
  v136 = sub_1000E012C(a3, 0x14u);
  sub_1003A3F1C(v8, v136);
  v137 = sub_1000E012C(a3, 0x14u);
  if (v137)
  {
    v139 = sub_10000C7D0(v137, v138);
    v141 = sub_100410814(v139, v140) ^ 1;
  }

  else
  {
    v141 = 1;
  }

  sub_1003A3F44(v8, v141);
  *&__p = _NSConcreteStackBlock;
  *(&__p + 1) = 3221225472;
  *&v153 = sub_1004CF858;
  *(&v153 + 1) = &unk_100AF9CC8;
  v154 = a3;
  v155 = v142;
  LOBYTE(v156) = 1;
  sub_1004CEEC4(a1 + 108, &__p);
  sub_1003A1E50(v8);
  return 0;
}

uint64_t sub_1004D3E74(uint64_t a1, uint64_t a2, uint64_t a3, uint8_t a4, uint64_t a5)
{
  if (!a3)
  {
    return 0;
  }

  v10 = sub_1004D03D4(a1, a5);
  v11 = sub_1004CEE18(a1, a5);
  v12 = 120;
  if (v10 && v11)
  {
    v34 = v11;
    v35 = sub_100508ED0((v10 + 50));
    v13 = *(v10 + 360) + 1;
    *(v10 + 360) = v13;
    if ((12157 * v13) <= 0x8Bu)
    {
      buf[0] = 0;
      sub_1000216B4(buf);
      sub_10024DEFC(sub_1004D25B0, v34 + 128);
      sub_100022214(buf);
      atomic_store(mach_absolute_time(), (a1 + 744));
      sub_10002249C(buf);
    }

    v14 = atomic_load((a1 + 760));
    v15 = v14 == 0;
    v16 = mach_absolute_time();
    if (v15)
    {
      v18 = atomic_load((a1 + 744));
      v17 = (v16 - v18) * *(a1 + 620) / *(a1 + 624) / 0x3E8;
      *(a1 + 768) = mach_absolute_time();
      v19 = atomic_load((a1 + 752));
      atomic_store(v19 + v17, (a1 + 760));
    }

    else
    {
      v17 = (v16 - *(a1 + 768)) * *(a1 + 620) / *(a1 + 624) / 0x3E8;
      atomic_fetch_add((a1 + 760), v17);
      *(a1 + 768) = mach_absolute_time();
    }

    v20 = v13;
    if (*(a1 + 780) == 1)
    {
      v21 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 768);
        *buf = 67109632;
        *&buf[4] = v20;
        *&buf[8] = 2048;
        *&buf[10] = v17;
        *&buf[18] = 2048;
        *&buf[20] = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "A2DP Send[%d]: delta time %llu us current time %llu", buf, 0x1Cu);
      }
    }

    memset(buf, 0, 32);
    *buf = 24704;
    buf[2] = BYTE1(v20);
    buf[3] = v20;
    v23 = atomic_load((a1 + 760));
    buf[7] = v23 / 0x3E8;
    v24 = atomic_load((a1 + 760));
    buf[6] = v24 / 0x3E800;
    v25 = atomic_load((a1 + 760));
    buf[5] = v25 / 0x3E80000;
    v26 = atomic_load((a1 + 760));
    buf[4] = v26 / 0x3E8000000;
    *&buf[8] = 0;
    buf[12] = a4;
    *&buf[16] = a3;
    *&buf[24] = a2;
    kdebug_trace();
    v36 = 0;
    sub_1000216B4(&v36);
    v27 = v35;
    v28 = sub_1001F96F4(v35, buf);
    v29 = v28;
    v12 = v28;
    if (v28 == 410)
    {
      atomic_load((a1 + 760));
      kdebug_trace();
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_10083790C();
        v27 = v35;
      }

      v12 = sub_1001F9828(v27);
      if (v12)
      {
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          sub_10083798C();
          v27 = v35;
        }

        if (v12 == 485)
        {
          sub_1001F97F0(v27);
          v12 = 485;
        }
      }

      else
      {
        v30 = sub_1001F96F4(v27, buf);
        v12 = v30;
        if (v30 && v30 != 412 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          sub_1008379FC();
        }
      }
    }

    sub_100022214(&v36);
    if (v20 >= 0x33 && v29 == 410)
    {
      if (qword_100B50940 != -1)
      {
        sub_100837504();
      }

      v31 = off_100B50938;
      v32 = atomic_load((a1 + 760));
      sub_10062E4CC(v31, v34, v32);
      if (qword_100B50940 != -1)
      {
        sub_100837504();
      }

      sub_1006315C0(off_100B50938, v34, 0, 0, 1);
    }

    else if (v20 >= 0x33 && v29 != 410)
    {
      if (qword_100B50940 != -1)
      {
        sub_100837504();
      }

      atomic_load((a1 + 760));
      sub_1006309CC(off_100B50938);
    }

    sub_10002249C(&v36);
  }

  return v12;
}

void sub_1004D4330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D435C(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 552);
  v4 = sub_1004D03D4(a1, a2);
  if (v4 && *(v4 + 182) == 1)
  {
    v7 = 0;
    sub_1000216B4(&v7);
    v5 = sub_1001F69AC(a2, 0);
    sub_100022214(&v7);
    if (v5 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100837A6C();
    }

    sub_10002249C(&v7);
  }

  return sub_1000088CC(v8);
}

void sub_1004D4418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1004D4440(os_unfair_lock_s *a1)
{
  if (qword_100B50940 != -1)
  {
    sub_100837ADC();
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  sub_100637A2C(off_100B50938, &v9);
  sub_1004CEEC4(a1 + 108, &stru_100AF9D28);
  v2 = v9;
  v3 = v10;
  if (v9 != v10)
  {
    do
    {
      v4 = *v2;
      if (*v2)
      {
        v5 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
          HIDWORD(buf.__r_.__value_.__r.__words[0]) = v4;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Wireless Splitter guest device is gone, destroy aggregate with handle %hu", &buf, 8u);
        }

        memset(&buf, 0, sizeof(buf));
        v6 = sub_100007E30(&buf, "WS_ERROR_DISCONNECTION_GUEST_GONE");
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          v6 = sub_100008904(&__p, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = buf;
        }

        sub_1004E11F0(v6, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v7 = sub_1004D03D4(a1, *v2);
        if (v7)
        {
          (*(*&a1->_os_unfair_lock_opaque + 192))(a1, v7, 0, 0);
          sub_1003A3C54(v7, 0);
          *(v7 + 723) = 0;
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = v9;
  }

  if (v2)
  {
    v10 = v2;
    operator delete(v2);
  }
}

void sub_1004D464C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1004D46A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v12 = 0;
  sub_1000216B4(&v12);
  v11 = 0;
  if ((sub_1001F4528(a2 + 128, &v11) || !v11) && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(a2, v10);
    sub_100837AF0();
  }

  sub_100022214(&v12);
  if (v3)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, v9);
      sub_100837B44();
    }

    sub_1000618AC(&v12);
    sub_1001F6464(v11, 0);
  }

  else
  {
    v7 = sub_10057DFAC(a1, a2);
    sub_1000618AC(&v12);
    v8 = sub_1001F6464(v11, v7);
    sub_100022214(&v12);
    if (v8)
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_100837B94();
      }
    }

    else if (v7)
    {
      sub_10057D9B0(a1, a2, 1);
    }
  }

  return sub_10002249C(&v12);
}

uint64_t sub_1004D487C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 552);
  if (qword_100B508F0 != -1)
  {
    sub_100837854();
  }

  v6 = sub_1000504C8(off_100B508E8, a2, 1);
  v7 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v6, __p);
    v8 = v18 >= 0 ? __p : __p[0];
    *buf = 136446466;
    v21 = v8;
    v22 = 1024;
    LODWORD(v23) = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ConnectInd from device %{public}s on a2dpHandle %d", buf, 0x12u);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (!sub_10053C3E8(v6))
  {
    v14 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v6, __p);
      v15 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Delaying incoming connection attempt for device %{public}s as SDP is missing", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (qword_100B54670 != -1)
    {
      sub_100837C04();
    }

    sub_100587D6C(qword_100B54668, v6, a1 + 264, 1, 2);
  }

  v9 = sub_10057DFAC(a1, v6);
  v10 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v6, __p);
    v11 = "Rejecting";
    if (v9)
    {
      v11 = "Accepting";
    }

    if (v18 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *buf = 136446466;
    v21 = v11;
    v22 = 2082;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s incoming connection attempt from device %{public}s", buf, 0x16u);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v13 = sub_1001F6464(a3, v9);
  sub_100022214(__p);
  if (v13)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100837B94();
    }
  }

  else if (v9)
  {
    sub_10057D9B0(a1, v6, 1);
  }

  sub_10002249C(__p);
  sub_1000088CC(v19);
  return v13;
}

void sub_1004D4BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1004D4BE4(uint64_t a1, uint64_t a2, unsigned __int16 a3, uint64_t a4)
{
  v10 = a3;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 552);
  if (qword_100B508F0 != -1)
  {
    sub_100837854();
  }

  v7 = sub_1000504C8(off_100B508E8, a2, 1);
  if (a4)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(v7, &__p);
      sub_100837C2C();
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100837C80();
    }

    v8 = sub_1000DD584(off_100B50A98, a4, 20000);
    sub_10057DA84(a1, v7, v8);
  }

  sub_10057DA84(a1, v7, 0);
}

void sub_1004D5334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  sub_10002249C(&a18);
  sub_1000088CC(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D53B4(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  v3 = sub_10000E92C();
  sub_100007E30(buf, "A2DP");
  sub_100007E30(__p, "SampleRate");
  v4 = (*(*v3 + 128))(v3, buf, __p, &v18);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v20) < 0)
  {
    operator delete(*buf);
    if (!v4)
    {
      goto LABEL_16;
    }
  }

  else if (!v4)
  {
    goto LABEL_16;
  }

  v5 = qword_100BCE8B8;
  if (v18 == 48000)
  {
    v6 = 0;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = 48000;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Warning: Bad48KHzCodecs: Setting user defined A2DP Sample Rate for our endpoints to %d Hz", buf, 8u);
      return 0;
    }
  }

  else
  {
    if (v18 != 44100)
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_100837D98();
      }

LABEL_16:
      v27 = 0;
      v26 = 0u;
      memset(v25, 0, sizeof(v25));
      v23 = 0u;
      *v24 = 0u;
      v21 = 0u;
      *v22 = 0u;
      *buf = 0u;
      v20 = 0u;
      sub_1000DE474(&buf[1]);
      BYTE2(v20) = 0;
      BYTE4(v20) = 0;
      BYTE2(v22[0]) = 0;
      BYTE4(v22[0]) = 0;
      DWORD1(v25[1]) = 0;
      v21 = 0uLL;
      *(&v20 + 1) = 0;
      LOBYTE(v22[0]) = 0;
      v23 = 0uLL;
      v22[1] = 0;
      LOBYTE(v24[0]) = 0;
      memset(v25, 0, 19);
      v24[1] = 0;
      BYTE8(v25[1]) = 1;
      *(&v25[1] + 14) = 0;
      *(&v25[1] + 9) = 0;
      v26 = 0uLL;
      *(&v25[2] + 1) = 0;
      LOBYTE(v27) = 0;
      *(&v27 + 2) = 0;
      sub_100536A18(a2, buf);
      v15 = 0;
      v7 = sub_10000E92C();
      sub_100007E30(__p, "A2DP");
      sub_100007E30(v13, "Default48KHz");
      (*(*v7 + 72))(v7, __p, v13, &v15);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }

      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      if (v15 == 1)
      {
        v8 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: Bad48KHzCodecs: Defaulting to 48 KHz based on defaults write - using denylist instead of allowlist", __p, 2u);
        }

        if (BYTE8(v26) == 1)
        {
          v9 = qword_100BCE8B8;
          if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p[0]) = 0;
            v6 = 2;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Bad48KHzCodecs: Disabling 48 KHz - Device is in 48 KHz AAC denylist", __p, 2u);
          }

          else
          {
            v6 = 2;
          }

          goto LABEL_31;
        }
      }

      else
      {
        if ((BYTE9(v26) & 1) == 0 && !sub_100539FE8(a2))
        {
          v12 = qword_100BCE8B8;
          if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p[0]) = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Bad48KHzCodecs: Disabling 48 KHz - Device is NOT in 48 KHz AAC allowlist", __p, 2u);
          }

          v6 = 0xFFFFFFFFLL;
          goto LABEL_31;
        }

        v10 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Bad48KHzCodecs: Device is in 48 KHz AAC allowlist", __p, 2u);
        }
      }

      v6 = 0;
LABEL_31:
      if (SHIBYTE(v25[0]) < 0)
      {
        operator delete(v24[1]);
      }

      if (SHIBYTE(v23) < 0)
      {
        operator delete(v22[1]);
      }

      if (SHIBYTE(v21) < 0)
      {
        operator delete(*(&v20 + 1));
      }

      nullsub_21();
      return v6;
    }

    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = 44100;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Warning: Bad48KHzCodecs: Setting user defined A2DP Sample Rate for our endpoints to %d Hz", buf, 8u);
    }

    return 0xFFFFFFFFLL;
  }

  return v6;
}

void sub_1004D5820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_100320BE8(&a23);
  _Unwind_Resume(a1);
}

_BYTE *sub_1004D58A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C798(a1, a2);
  if (((*(*v3 + 104))(v3) & 1) != 0 || (v4 = sub_10000E92C(), result = (*(*v4 + 312))(v4), result))
  {
    v6 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "3EDR packet types are disabled on this platform", buf, 2u);
    }

    v14 = 0;
    v13 = 0;
    sub_1000216B4(&v13);
    if (!sub_10023DB58(a2 + 128, &v14) && v14 && (*(v14 + 278) & 1) == 0)
    {
      sub_10024DD74(v14, 60956, v7, v8, v9, v10, v11, v12);
    }

    sub_100022214(&v13);
    return sub_10002249C(&v13);
  }

  return result;
}

uint64_t sub_1004D59D0(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(result + 536);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = result + 536;
    do
    {
      v6 = *(v3 + 32);
      v7 = v6 >= v4;
      v8 = v6 < v4;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
    if (v5 != result + 536 && *(v5 + 32) <= v4)
    {
      return sub_1004D435C(result, v4);
    }
  }

  return result;
}

uint64_t sub_1004D5A20(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  v10 = 0u;
  *__p = 0u;
  v8 = 0u;
  *v9 = 0u;
  v6 = 0u;
  *v7 = 0u;
  sub_1000DE474(&v6 + 1);
  BYTE2(v7[0]) = 0;
  BYTE4(v7[0]) = 0;
  BYTE2(v9[0]) = 0;
  BYTE4(v9[0]) = 0;
  DWORD1(v12[1]) = 0;
  v8 = 0uLL;
  v7[1] = 0;
  LOBYTE(v9[0]) = 0;
  v10 = 0uLL;
  v9[1] = 0;
  LOBYTE(__p[0]) = 0;
  memset(v12, 0, 19);
  __p[1] = 0;
  BYTE8(v12[1]) = 1;
  *(&v12[1] + 14) = 0;
  *(&v12[1] + 9) = 0;
  v13 = 0uLL;
  *(&v12[2] + 1) = 0;
  LOBYTE(v14) = 0;
  *(&v14 + 2) = 0;
  v3 = sub_100536A18(a2, &v6);
  v4 = BYTE14(v12[2]);
  if (SHIBYTE(v12[0]) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[1]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[1]);
  }

  nullsub_21();
  return v3 & v4;
}

uint64_t sub_1004D5B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v26 = a3;
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, a1 + 552);
  if (qword_100B508F0 != -1)
  {
    sub_100837854();
  }

  v8 = sub_1000504C8(off_100B508E8, a2, 1);
  v9 = *(a1 + 536);
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = a1 + 536;
  do
  {
    v11 = *(v9 + 32);
    v12 = v11 >= a3;
    v13 = v11 < a3;
    if (v12)
    {
      v10 = v9;
    }

    v9 = *(v9 + 8 * v13);
  }

  while (v9);
  if (v10 == a1 + 536 || *(v10 + 32) > a3)
  {
    goto LABEL_11;
  }

  sub_1004D0FAC(a1, a3);
  v15 = *(v10 + 40);
  if (*(v15 + 723) == 1)
  {
    if (*(v8 + 1016) == 1)
    {
      *(v8 + 1036) = 1;
    }

    sub_1005484E8(v8, 0);
    sub_1004D4440(a1);
  }

  sub_1003A2794(v15);
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v30 = sub_1004CF858;
  v31 = &unk_100AF9CC8;
  v32 = v8;
  v33 = a3;
  v34 = 0;
  sub_1004CEEC4((a1 + 432), &buf);
  sub_100480E04(a1 + 528, &v26);
  v16 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 544);
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Current number of A2DP devices: %lu", &buf, 0xCu);
  }

  v18 = *(a1 + 512);
  if (!v18)
  {
    goto LABEL_41;
  }

  v19 = a1 + 512;
  do
  {
    v20 = *(v18 + 32);
    v12 = v20 >= v26;
    v21 = v20 < v26;
    if (v12)
    {
      v19 = v18;
    }

    v18 = *(v18 + 8 * v21);
  }

  while (v18);
  if (v19 == a1 + 512 || v26 < *(v19 + 32))
  {
LABEL_41:
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_FAULT))
    {
      sub_100837E08();
    }
  }

  v22 = sub_100480E04(a1 + 504, &v26);
  if (sub_1004D5A20(v22, v8))
  {
    v23 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v8, &buf);
      if (SHIBYTE(v30) >= 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf;
      }

      *v27 = 136446210;
      v28 = p_buf;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Device %{public}s that requires a workaround for AVDTP start disconnected", v27, 0xCu);
      if (SHIBYTE(v30) < 0)
      {
        operator delete(buf);
      }
    }

    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v30 = sub_1004CFBB4;
    v31 = &unk_100AF9D48;
    v32 = v8;
    sub_1004CFAB8((a1 + 464), &buf);
  }

  if (v8)
  {
LABEL_11:
    sub_10057E710(a1, v8, 0, v4);
  }

  sub_1000088CC(v25);
  return 0;
}

void sub_1004D5ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D5F00(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v6 = a6;
  v28[0] = 0;
  v28[1] = 0;
  sub_100007F88(v28, &a1[138]);
  v11 = sub_1004D03D4(a1, a3);
  v12 = sub_1004CEE18(a1, a3);
  v13 = qword_100BCE8B8;
  if (!v6)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT) && ((sub_1000E5A58(v12, v29), (v35 & 0x8000) == 0) ? (v14 = v29) : (v14 = *v29), *buf = 67109378, v39 = a5, v40 = 2082, v41 = v14, _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Endpoint discovery succeeded - found %d stream endpoint(s) for device %{public}s", buf, 0x12u), SBYTE1(v35) < 0))
    {
      operator delete(*v29);
      if (!a5)
      {
        goto LABEL_38;
      }
    }

    else if (!a5)
    {
      goto LABEL_38;
    }

    v27 = v12;
    v15 = 0;
    v16 = qword_100BCE8B8;
    v17 = (a4 + 3);
    do
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(v17 - 3);
        v19 = *(v17 - 2);
        v20 = *(v17 - 1);
        v21 = *v17;
        *v29 = 67110144;
        *&v29[4] = v15;
        v30 = 1024;
        v31 = v18;
        v32 = 1024;
        v33 = v19;
        v34 = 1024;
        v35 = v20;
        v36 = 1024;
        v37 = v21;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Endpoint[%d]: mediaType = %d, endpointType = %d, seid = %d, inUse = %d", v29, 0x20u);
        v16 = qword_100BCE8B8;
      }

      ++v15;
      v17 += 4;
    }

    while (a5 != v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 67109120;
      *&v29[4] = a3;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Saving discovered peer endpoints for a2dp handle %d", v29, 8u);
    }

    sub_10050B310((v11 + 50), a4, a5);
    v22 = sub_10050BD58((v11 + 50));
    v23 = qword_100BCE8B8;
    if (v22 == 255)
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v27, v29);
        sub_100837FC4();
      }

      goto LABEL_21;
    }

    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v27, v29);
      v25 = (v35 & 0x8000) == 0 ? v29 : *v29;
      *buf = 67109378;
      v39 = v22;
      v40 = 2082;
      v41 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Querying stream capabilities of endpoint %u on device %{public}s", buf, 0x12u);
      if (SBYTE1(v35) < 0)
      {
        operator delete(*v29);
      }
    }

    v29[0] = 0;
    sub_1000216B4(v29);
    if (sub_10050922C((v11 + 50)) < 0x103)
    {
      if (sub_1001F6C3C(a3, v22, 0) && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_100837EE4();
      }
    }

    else if (sub_1001F6D74(a3, v22, 0) && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100837F54();
    }

    sub_10002249C(v29);
LABEL_38:
    v24 = 0;
    goto LABEL_39;
  }

  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    if (v12)
    {
      sub_1000E5A58(v12, v29);
      sub_100837E48();
    }

    else
    {
      sub_100837E98(buf, v6);
    }
  }

LABEL_21:
  sub_1004CFE18(a1, a3);
  v24 = 1;
LABEL_39:
  sub_1000088CC(v28);
  return v24;
}

void sub_1004D6320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D6368(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = a6;
  v10 = a4;
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, &a1[138]);
  v13 = sub_1004D03D4(a1, a3);
  v14 = v13;
  if (a7)
  {
    v15 = qword_100BCE8B8;
    if (*(v13 + 182) < 3)
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109632;
        v24 = a7;
        v25 = 1024;
        v26 = v10;
        v27 = 1024;
        v28 = a3;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Received get capability failure with error %d for stream endpoint ID %u on a2dp handle %d - disconnecting", buf, 0x14u);
      }

      sub_1004CFE18(a1, a3);
    }

    else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v24 = a7;
      v25 = 1024;
      v26 = v10;
      v27 = 1024;
      v28 = a3;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "GetCaps rejected with error %d, but already in >= open state for stream endpoint ID %u on a2dp handle %d", buf, 0x14u);
    }
  }

  else
  {
    v16 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(v14 + 182);
      *buf = 67109632;
      v24 = v10;
      v25 = 1024;
      v26 = a3;
      v27 = 1024;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "GetCapsCfm: Successfully retrieved capabilities for stream endpoint %u on a2dp handle %d, stream state 0x%d", buf, 0x14u);
    }

    if (*(v14 + 182) == 1)
    {
      sub_100509868((v14 + 50), v8, a5, v10);
      v18 = sub_10050BD58((v14 + 50));
      if (v18 == 255)
      {
        sub_1004D21B8(a1, a3);
      }

      else
      {
        v19 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          v24 = v18;
          v25 = 1024;
          v26 = a3;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Querying stream capabilities of endpoint %u on a2dpHandle %d", buf, 0xEu);
        }

        buf[0] = 0;
        sub_1000216B4(buf);
        v20 = sub_1001F6C3C(a3, v18, 0);
        sub_100022214(buf);
        if (v20 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          sub_100837EE4();
        }

        sub_10002249C(buf);
      }
    }
  }

  sub_1000088CC(v22);
  return 0;
}

uint64_t sub_1004D667C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v31[0] = 0;
  v31[1] = 0;
  sub_100007F88(v31, a1 + 552);
  v16 = sub_1004D03D4(a1, a3);
  v27 = sub_1004CEE18(a1, a3);
  v17 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    v33 = v12;
    v34 = 1024;
    v35 = v11;
    v36 = 1024;
    *v37 = a3;
    *&v37[4] = 1024;
    *&v37[6] = v10;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received set stream configuration request for local SEID %u and remote SEID %u from a2dpHandle %d, stream handle %d", buf, 0x1Au);
  }

  v18 = sub_10050DCE8(a1 + 280, v12);
  if (sub_100509C38((v16 + 50), v12, v11, v10, a7, v8, v18))
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838020();
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    v19 = sub_1001F90AC(v10, a2, 0, 41);
    sub_100022214(buf);
    if (v19 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838090();
    }

    v20 = buf;
  }

  else
  {
    v30 = 0;
    sub_1000216B4(&v30);
    v21 = sub_1001F90AC(v10, a2, 0, 0);
    sub_100022214(&v30);
    if (v21)
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_100838100();
      }
    }

    else
    {
      v22 = sub_100509144((v16 + 50));
      v23 = *(v16 + 592);
      v24 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v27, __p);
        v25 = v29 >= 0 ? __p : __p[0];
        *buf = 67110146;
        v33 = v12;
        v34 = 1024;
        v35 = v11;
        v36 = 2082;
        *v37 = v25;
        *&v37[8] = 1024;
        v38 = v22;
        v39 = 1024;
        v40 = v23;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Approved and configured incoming stream configuration for local SEID %d and remote SEID %d on device %{public}s, remote delay reporting %d, local delay reporting %d", buf, 0x24u);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }
      }

      *(v16 + 182) = 2;
    }

    v20 = &v30;
  }

  sub_10002249C(v20);
  sub_1000088CC(v31);
  return 0;
}

void sub_1004D697C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18)
{
  sub_10002249C(&a17);
  sub_1000088CC(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D69D0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30[0] = 0;
  v30[1] = 0;
  sub_100007F88(v30, a1 + 552);
  v15 = sub_1004D03D4(a1, a3);
  v16 = sub_1004CEE18(a1, a3);
  if (!v16)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838170();
    }

    goto LABEL_14;
  }

  v17 = sub_100508ED0((v15 + 50));
  if (v17)
  {
    v18 = *(v15 + 182);
    if (v18 <= 6 && ((1 << v18) & 0x68) != 0)
    {
      v19 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000BE6F8(v16 + 128, __p);
        if (v29 >= 0)
        {
          v20 = __p;
        }

        else
        {
          v20 = __p[0];
        }

        *buf = 136446210;
        v32[0] = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Rejecting incoming set config from device %{public}s", buf, 0xCu);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }
      }

      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      sub_1001F90AC(a6, a2, 0, 19);
      sub_100022214(__p);
      sub_10002249C(__p);
LABEL_14:
      v21 = 1;
      goto LABEL_26;
    }

    log = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000BE6F8(v16 + 128, __p);
      v22 = __p;
      if (v29 < 0)
      {
        v22 = __p[0];
      }

      *buf = 67109378;
      LODWORD(v32[0]) = v17;
      WORD2(v32[0]) = 2082;
      *(v32 + 6) = v22;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "SetConfigInd, there already exists stream handle %d for device %{public}s, but accepting since we are not in streaming state", buf, 0x12u);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v23 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8(v16 + 128, __p);
    v24 = __p;
    if (v29 < 0)
    {
      v24 = __p[0];
    }

    *buf = 67109378;
    LODWORD(v32[0]) = a6;
    WORD2(v32[0]) = 2082;
    *(v32 + 6) = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "SetConfigInd setting a2dp stream handle to %d for device %{public}s", buf, 0x12u);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_100508F20((v15 + 50), a6);
  sub_1004D667C(a1, a2, a3, a4, a5, a6, a7, a8);
  v21 = 0;
LABEL_26:
  sub_1000088CC(v30);
  return v21;
}

void sub_1004D6CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D6D40(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, &a1[138]);
  v8 = sub_1004D05C4(a1, a3);
  v9 = sub_1004CEE18(a1, v8);
  v10 = qword_100BCE8B8;
  if (v5)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      if (v9)
      {
        sub_1000E5A58(v9, __p);
        sub_1008381AC();
      }

      else
      {
        sub_1008381FC(buf, v5);
      }
    }

    sub_1004CFE18(a1, v8);
LABEL_14:
    v12 = 1;
    goto LABEL_31;
  }

  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    if (v9)
    {
      sub_1000E5A58(v9, __p);
      if (v20 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 136446210;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received set stream configuration success from device %{public}s", buf, 0xCu);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136446210;
      v22 = "null";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received set stream configuration success from device %{public}s", buf, 0xCu);
    }
  }

  v13 = qword_100BCE8B8;
  v14 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (v14)
    {
      LODWORD(__p[0]) = 67109120;
      HIDWORD(__p[0]) = a3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Set stream configuration returned an unknown stream handle %d, stream handle was likely reconfigured. Not moving to open AVDTP", __p, 8u);
    }

    goto LABEL_14;
  }

  if (v14)
  {
    if (v9)
    {
      sub_1000E5A58(v9, __p);
      if (v20 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      *buf = 136446466;
      v22 = v15;
      v23 = 1024;
      v24 = a3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Attempting to open streaming channel to device %{public}s on handle %d", buf, 0x12u);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136446466;
      v22 = "null";
      v23 = 1024;
      v24 = a3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Attempting to open streaming channel to device %{public}s on handle %d", buf, 0x12u);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v16 = sub_1001F7534(a3, 0);
  sub_100022214(__p);
  if (v16 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100838248();
  }

  sub_10002249C(__p);
  v12 = 0;
LABEL_31:
  sub_1000088CC(v18);
  return v12;
}

uint64_t sub_1004D70B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 552);
  v9 = sub_1004D05C4(a1, a3);
  v10 = sub_1004CEE18(a1, v9);
  v11 = qword_100BCE8B8;
  if (v6)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      if (v10)
      {
        sub_1000E5A58(v10, __p);
        sub_1008382B8();
      }

      else
      {
        sub_100838308(buf, v6);
      }
    }

    sub_1004CFE18(a1, v9);
    v13 = 1;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      if (v10)
      {
        sub_1000E5A58(v10, __p);
        if (v19 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        *buf = 136446210;
        v22 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received get stream configuration success from device %{public}s", buf, 0xCu);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136446210;
        v22 = "null";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received get stream configuration success from device %{public}s", buf, 0xCu);
      }
    }

    if (*(a1 + 616) == 1)
    {
      v14 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        if (v10)
        {
          sub_1000E5A58(v10, __p);
          if (v19 >= 0)
          {
            v15 = __p;
          }

          else
          {
            v15 = __p[0];
          }

          *buf = 136446210;
          v22 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Attempting to open streaming channel to device %{public}s", buf, 0xCu);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          v22 = "null";
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Attempting to open streaming channel to device %{public}s", buf, 0xCu);
        }
      }

      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      v16 = sub_1001F7534(a3, 0);
      sub_100022214(__p);
      if (v16 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_100838248();
      }

      sub_10002249C(__p);
    }

    v13 = 0;
  }

  sub_1000088CC(v20);
  return v13;
}

void sub_1004D73A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D73E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 552);
  v6 = sub_1004D05C4(a1, a3);
  v7 = sub_1004D03D4(a1, v6);
  v8 = sub_1004CEE18(a1, v6);
  v9 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      sub_1000E5A58(v8, __p);
      if (v14 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136446466;
      v17 = v10;
      v18 = 1024;
      v19 = a3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received open streaming channel request from device %{public}s on stream handle %d", buf, 0x12u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136446466;
      v17 = "null";
      v18 = 1024;
      v19 = a3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received open streaming channel request from device %{public}s on stream handle %d", buf, 0x12u);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v11 = sub_1001F76F0(a2, a3, 0);
  sub_100022214(__p);
  if (v11 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100838354();
  }

  *(v7 + 182) = 3;
  sub_10002249C(__p);
  sub_1000088CC(v15);
  return 0;
}

void sub_1004D75DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D7618(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, &a1[138]);
  v9 = sub_1004D05C4(a1, a3);
  v10 = sub_1004CEE18(a1, v9);
  v11 = sub_1004D03D4(a1, v9);
  v12 = qword_100BCE8B8;
  if (v5 || !v10)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      if (v10)
      {
        sub_1000E5A58(v10, __p);
        sub_100838410();
      }

      else
      {
        sub_1008383C4(buf, v5);
      }
    }

    goto LABEL_32;
  }

  v13 = v11;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v10, __p);
    v14 = v27 >= 0 ? __p : *__p;
    *buf = 136446466;
    v29 = v14;
    v30 = 1024;
    v31 = a3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Successfully opened streaming channel to device %{public}s on stream handle %d", buf, 0x12u);
    if (v27 < 0)
    {
      operator delete(*__p);
    }
  }

  if (*(v13 + 728) == 7)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(v10, __p);
      sub_100838460();
    }

LABEL_32:
    sub_1004CFE18(a1, v9);
    goto LABEL_33;
  }

  *(v13 + 728) = 3;
  v15 = sub_1000E2140(v10, 0xDu);
  if (v15 && (v17 = sub_10000C798(v15, v16), (*(*v17 + 840))(v17, 0)) && sub_1005095A4(v13 + 400) == 33023)
  {
    v18 = 1;
    *(v13 + 704) = 1;
    *(v13 + 706) = 0;
  }

  else
  {
    v18 = 0;
  }

  v19 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v13 + 704))
    {
      v21 = "supported";
    }

    else
    {
      v21 = "not supported";
    }

    *__p = 136315138;
    *&__p[4] = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Dynamic Latency is %s", __p, 0xCu);
  }

  if (*(v13 + 704) == 1)
  {
    v22 = sub_10050BE78(v13 + 400, v20);
    sub_1007036D8(v13, v22);
  }

  if ((v18 & 1) != 0 || (v23 = sub_10000E92C(), ((*(*v23 + 536))(v23) & 1) == 0))
  {
    *(v13 + 712) = 1;
  }

  sub_1004D79A8(a1, v10);
  sub_1004D2658(a1, 0, v9, a4, v10);
LABEL_33:
  sub_1000088CC(v25);
  return 0;
}

void sub_1004D79A8(os_unfair_lock_s *a1, uint64_t a2)
{
  v4 = sub_1000E04A4(a1, a2);
  v5 = sub_1004D03D4(a1, v4);
  if (a2 && (v6 = v5) != 0)
  {
    v33 = 0;
    v7 = sub_10000E92C();
    sub_100007E30(&buf, "A2DP");
    sub_100007E30(__p, "WirelessSplitter");
    (*(*v7 + 72))(v7, &buf, __p, &v33);
    if (v41 < 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (v33)
    {
      v8 = sub_1000E2140(a2, 0xCu);
      v33 = v8;
      if (v8)
      {
        v9 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Wireless Splitter is enabled via defaults writes", &buf, 2u);
        }
      }
    }

    v10 = sub_1000E2140(a2, 0x1Bu);
    if (v10 || v33)
    {
      v12 = sub_10000C798(v10, v11);
      if ((*(*v12 + 512))(v12))
      {
        *(v6 + 722) = 1;
        v13 = sub_100702ABC(v6);
        v14 = sub_1004D06D4(a1, v13);
        if (v14)
        {
          v15 = sub_1004CEE18(a1, v14);
          v16 = sub_1004D03D4(a1, v14);
          if (v16 && v15)
          {
            if (v33 || (*(a2 + 1016) & 1) != 0 || (v15[127] & 1) != 0 || *(a2 + 1041) == 1)
            {
              v17 = qword_100BCE8B8;
              if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
              {
                sub_1000E5A58(a2, __p);
                v18 = v41;
                v19 = *__p;
                v20 = *(a2 + 1016);
                sub_1000E5A58(v15, v31);
                v21 = __p;
                if (v18 < 0)
                {
                  v21 = v19;
                }

                v22 = "owner";
                v23 = *(v15 + 1016);
                if (v20)
                {
                  v24 = "guest";
                }

                else
                {
                  v24 = "owner";
                }

                LODWORD(buf.__r_.__value_.__l.__data_) = 136446978;
                *(buf.__r_.__value_.__r.__words + 4) = v21;
                if (v32 >= 0)
                {
                  v25 = v31;
                }

                else
                {
                  v25 = v31[0];
                }

                WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
                if (v23)
                {
                  v22 = "guest";
                }

                *(&buf.__r_.__value_.__r.__words[1] + 6) = v24;
                HIWORD(buf.__r_.__value_.__r.__words[2]) = 2082;
                v35 = v25;
                v36 = 2082;
                v37 = v22;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Wireless Splitter is enabled on device %{public}s which is %{public}s and device %{public}s which is %{public}s", &buf, 0x2Au);
                if (v32 < 0)
                {
                  operator delete(v31[0]);
                }

                if (v41 < 0)
                {
                  operator delete(*__p);
                }
              }

              sub_1003A3C54(v16, 1);
              sub_1003A3C54(v6, 1);
              (*(*&a1->_os_unfair_lock_opaque + 192))(a1, v6, 1, 0);
              (*(*&a1->_os_unfair_lock_opaque + 192))(a1, v16, 1, 0);
              sub_1004CF9B8(a1, v6, 1);
              sub_1004CF9B8(a1, v16, 1);
            }
          }

          else
          {
            memset(&buf, 0, sizeof(buf));
            v26 = sub_100007E30(&buf, "WS_ERROR_START_FAILED_TO_FIND_LAST_CONNECTED");
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              v26 = sub_100008904(&v30, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
            }

            else
            {
              v30 = buf;
            }

            sub_1004E11F0(v26, &v30);
            if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v30.__r_.__value_.__l.__data_);
            }

            if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
            {
              sub_1008384F8();
            }

            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }
        }
      }
    }

    v27 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v6 + 722))
      {
        v28 = "supported";
      }

      else
      {
        v28 = "not supported";
      }

      sub_1000E5A58(a2, &buf);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      *__p = 136446466;
      *&__p[4] = v28;
      v39 = 2082;
      v40 = p_buf;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Wireless Splitter is %{public}s on device %{public}s", __p, 0x16u);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_1008384BC();
  }
}

void sub_1004D7ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004D7F3C(uint64_t a1, uint64_t a2, __int16 a3, const void *a4, unsigned int a5)
{
  v8 = a2;
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 552);
  v11 = 0;
  sub_1000216B4(&v11);
  v9 = sub_1001F94C8(a3, v8, a4, a5, 0);
  sub_100022214(&v11);
  if (v9 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100838534();
  }

  sub_10002249C(&v11);
  sub_1000088CC(v12);
  return 0;
}

void sub_1004D8000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D8024(uint64_t a1, uint64_t a2, __int16 a3)
{
  v8 = a3;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 552);
  if (*(a1 + 616) == 1)
  {
    v6 = 0;
    sub_1000216B4(&v6);
    v4 = sub_1001F7840(&v8, 1, 0);
    sub_100022214(&v6);
    if (v4 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_1008385A4();
    }

    sub_10002249C(&v6);
  }

  sub_1000088CC(v7);
  return 0;
}

void sub_1004D80D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D80FC(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  v27[0] = 0;
  v27[1] = 0;
  sub_100007F88(v27, a1 + 552);
  if (a3)
  {
    v8 = *a3;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838614();
    }

    v8 = 0;
  }

  v9 = sub_1004D05C4(a1, v8);
  v10 = sub_1004D03D4(a1, v9);
  v11 = sub_1004CEE18(a1, v9);
  if (v11)
  {
    v12 = qword_100BCE8B8;
    v13 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      sub_1000E5A58(v11, __p);
      v14 = SHIBYTE(v29) >= 0 ? __p : __p[0];
      *buf = 136446210;
      v33 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received start streaming command from device %{public}s", buf, 0xCu);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_1004D5A20(v13, v11))
    {
      v15 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v11, __p);
        v16 = SHIBYTE(v29) >= 0 ? __p : __p[0];
        *buf = 136446210;
        v33 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "StartInd, forwarding play command to RemoteClient for device %{public}s", buf, 0xCu);
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }
      }

      __p[0] = _NSConcreteStackBlock;
      __p[1] = 3221225472;
      v29 = sub_1004CFBE4;
      v30 = &unk_100AF9D48;
      v31 = v11;
      sub_1004CFAB8((a1 + 464), __p);
    }

    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    if (!atomic_load((a1 + 752)))
    {
      v20 = sub_10024DEFC(sub_1004D25B0, (v11 + 16));
      atomic_store(mach_absolute_time(), (a1 + 744));
      if (v20)
      {
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          sub_100838650();
        }
      }
    }

    sub_1002429D4((v11 + 16));
    v18 = sub_1001F7ABC(a2, a3, a4, 0, 0);
    sub_100022214(__p);
    if (v18)
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_1008386C0();
      }
    }

    else
    {
      *(v10 + 182) = 5;
      v21 = sub_100703628(v10);
      if ((v21 & 1) == 0)
      {
        v23 = sub_1000DAB84(v21, v22);
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1004D84DC;
        v25[3] = &unk_100AEB940;
        v25[4] = a1;
        v26 = v9;
        sub_10008E008(v23, 12000, v25);
      }
    }

    sub_10002249C(__p);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  sub_1000088CC(v27);
  return v19;
}

void sub_1004D8498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D84DC(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(result + 536);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = result + 536;
    do
    {
      v6 = *(v3 + 32);
      v7 = v6 >= v4;
      v8 = v6 < v4;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
    if (v5 != result + 536 && *(v5 + 32) <= v4)
    {
      return sub_1004D1A9C(result, v4);
    }
  }

  return result;
}

uint64_t sub_1004D852C(os_unfair_lock_s *a1, uint64_t a2, unsigned __int16 *a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, &a1[138]);
  if (a3 && a4)
  {
    v10 = sub_1004D05C4(a1, *a3);
    v11 = sub_1004D03D4(a1, v10);
    v12 = sub_1004CEE18(a1, v10);
    if (v12)
    {
      v13 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT) && ((sub_1000E5A58(v12, __p), v21 >= 0) ? (v14 = __p) : (v14 = __p[0]), *buf = 136446210, v24 = v14, _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received confirm from %{public}s to start streaming", buf, 0xCu), v21 < 0))
      {
        operator delete(__p[0]);
        if (v6)
        {
LABEL_10:
          if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
          {
            sub_1000E5A58(v12, __p);
            sub_1008387A4();
          }

          v15 = 1;
          if (v6 > 252)
          {
            if (v6 == 255)
            {
              v15 = 338;
            }

            else if (v6 == 253)
            {
              v15 = 337;
            }
          }

          else if (v6 == 17)
          {
            v15 = 340;
          }

          else if (v6 == 24)
          {
            v15 = 339;
          }

          sub_10057E984(a1, v12, 201, v15);
        }
      }

      else if (v6)
      {
        goto LABEL_10;
      }

      if (*(v11 + 182) == 5)
      {
        v17 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(v12, __p);
          v18 = v21 >= 0 ? __p : __p[0];
          *buf = 136446210;
          v24 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Device %{public}s was already in streaming state", buf, 0xCu);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      *(v11 + 182) = 5;
      sub_1004D0A0C(a1, v10);
      v16 = 0;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838730();
    }

    v16 = 7;
  }

  sub_1000088CC(v22);
  return v16;
}

void sub_1004D88E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D8924(os_unfair_lock_s *a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, &a1[138]);
  if (a3 && a4)
  {
    v8 = sub_1004D05C4(a1, *a3);
    v9 = sub_1004CEE18(a1, v8);
    v10 = sub_1004D03D4(a1, v8);
    v11 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      if (v9)
      {
        sub_1000E5A58(v9, __p);
        if (v17 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        *buf = 136446210;
        v20 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received suspend streaming request from device %{public}s", buf, 0xCu);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136446210;
        v20 = "null";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received suspend streaming request from device %{public}s", buf, 0xCu);
      }
    }

    if (!sub_1004D0FAC(a1, v8) || *(v10 + 182) != 3)
    {
      *(v10 + 182) = 3;
      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      sub_1001F889C(a2, a3, a4, 0, 0);
      sub_100022214(__p);
      sub_10002249C(__p);
      goto LABEL_19;
    }

    v14 = qword_100BCE8B8;
    v13 = 0;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "streaming already suspended, racing transaction", __p, 2u);
LABEL_19:
      v13 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838614();
    }

    v13 = 7;
  }

  sub_1000088CC(v18);
  return v13;
}

void sub_1004D8B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D8BC8(os_unfair_lock_s *a1, uint64_t a2, unsigned __int16 *a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v32[0] = 0;
  v32[1] = 0;
  sub_100007F88(v32, &a1[138]);
  if (a3 && a4)
  {
    v10 = sub_1004D05C4(a1, *a3);
    v11 = sub_1004D03D4(a1, v10);
    v12 = sub_1004CEE18(a1, v10);
    v13 = v12;
    if (v6)
    {
      v14 = *(v11 + 182);
      v15 = qword_100BCE8B8;
      if (v14 == 3)
      {
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(v13, __p);
          if (v31 >= 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = __p[0];
          }

          *buf = 67109378;
          LODWORD(v34[0]) = v6;
          WORD2(v34[0]) = 2082;
          *(v34 + 6) = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Stream is already in open state, ignoring with suspend error %u on device %{public}s", buf, 0x12u);
          if (v31 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          sub_1000E5A58(v13, __p);
          sub_10083881C();
        }

        sub_1004CFE18(a1, v10);
      }
    }

    else
    {
      v18 = *(v12 + 66);
      v19 = *(v12 + 32);
      v20 = qword_100BCE8B8;
      v21 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT);
      if (v21)
      {
        sub_1000E5A58(v13, __p);
        v23 = v31 >= 0 ? __p : __p[0];
        *buf = 136446210;
        v34[0] = v23;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Successfully suspended stream to device %{public}s", buf, 0xCu);
        if (v31 < 0)
        {
          operator delete(__p[0]);
        }
      }

      *(v11 + 182) = 3;
      if (*(v11 + 183) != 1)
      {
        goto LABEL_34;
      }

      *(v11 + 183) = 0;
      v24 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_INFO))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Checking if HAL still thinks we are streaming, if so, start up A2DP stream if not done so already", __p, 2u);
      }

      v21 = sub_100703628(v11);
      if (v21)
      {
        v25 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(v13, __p);
          v26 = v31 >= 0 ? __p : __p[0];
          *buf = 136446210;
          v34[0] = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Pending start stream, connecting media stream for %{public}s", buf, 0xCu);
          if (v31 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_1004D1E24(a1, v10);
      }

      else
      {
LABEL_34:
        v27 = sub_10000C7D0(v21, v22);
        v28 = sub_1000DEB14(v13);
        (*(*v27 + 56))(v27, (v19 | (v18 << 32)) & 0xFFFFFFFFFFFFLL, v28, 2, 0, 1, 1, 0);
      }
    }

    v17 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838614();
    }

    v17 = 7;
  }

  sub_1000088CC(v32);
  return v17;
}

void sub_1004D8F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D8FAC(os_unfair_lock_s *a1, uint64_t a2, unsigned __int16 *a3, int a4, uint64_t a5, uint64_t a6)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, &a1[138]);
  if (a4)
  {
    v10 = sub_1004D05C4(a1, *a3);
    v11 = sub_1004CEE18(a1, v10);
    v12 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      if (v11)
      {
        sub_1000E5A58(v11, __p);
        if (v17 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        *buf = 136446210;
        v20 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received transition confirm from device %{public}s", buf, 0xCu);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136446210;
        v20 = "null";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received transition confirm from device %{public}s", buf, 0xCu);
      }
    }

    v14 = sub_1004D8BC8(a1, 0, a3, a4, 0, a6);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_10083886C();
    }

    v14 = 7;
  }

  sub_1000088CC(v18);
  return v14;
}

void sub_1004D9170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D9194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 552);
  v6 = sub_1004D05C4(a1, a3);
  v7 = sub_1004CEE18(a1, v6);
  v8 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      sub_1000E5A58(v7, __p);
      if (v13 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      *buf = 136446210;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received reconfigure stream request from device %{public}s", buf, 0xCu);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136446210;
      v16 = "null";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received reconfigure stream request from device %{public}s", buf, 0xCu);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v10 = sub_1001F9384(a3, a2, 1, 25);
  sub_100022214(__p);
  if (v10 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_1008388A8();
  }

  sub_10002249C(__p);
  sub_1000088CC(v14);
  return 0;
}

void sub_1004D9354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D938C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v8 = a3;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 552);
  if (*(a1 + 616) == 1)
  {
    v6 = 0;
    sub_1000216B4(&v6);
    v4 = sub_1001F7840(&v8, 1, 0);
    sub_100022214(&v6);
    if (v4 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_1008385A4();
    }

    sub_10002249C(&v6);
  }

  sub_1000088CC(v7);
  return 0;
}

void sub_1004D9440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D9464(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, &a1[138]);
  v6 = sub_1004D05C4(a1, a3);
  v7 = sub_1004D03D4(a1, v6);
  v8 = sub_1004CEE18(a1, v6);
  v9 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      sub_1000E5A58(v8, __p);
      if (v13 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136446210;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received close stream request from device %{public}s", buf, 0xCu);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136446210;
      v16 = "null";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received close stream request from device %{public}s", buf, 0xCu);
    }
  }

  sub_1004D0FAC(a1, v6);
  v7[91] = 0;
  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  sub_1001F7EA8(a2, a3, 0);
  sub_100022214(__p);
  sub_10002249C(__p);
  sub_1000088CC(v14);
  return 0;
}

void sub_1004D9628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D9664(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 552);
  v1 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Successfully closed stream", v3, 2u);
  }

  sub_1000088CC(v4);
  return 0;
}

uint64_t sub_1004D96EC(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, &a1[138]);
  v6 = sub_1004D05C4(a1, a3);
  v7 = sub_1004D03D4(a1, v6);
  v8 = sub_1004CEE18(a1, v6);
  v9 = qword_100BCE8B8;
  if (v8)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v8, __p);
      if (v14 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136446210;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received abort stream request from device %{public}s", buf, 0xCu);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *(v7 + 182) = 7;
    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    sub_1001F7FF4(a2, a3);
    sub_100022214(__p);
    sub_1004D0FAC(a1, v6);
    sub_1004CFE18(a1, v6);
    sub_10002249C(__p);
    v11 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838918();
    }

    v11 = 1;
  }

  sub_1000088CC(v15);
  return v11;
}

void sub_1004D9898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D98D4(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, &a1[138]);
  v5 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stream aborted on handle %d.", buf, 8u);
  }

  v6 = sub_1004D05C4(a1, a3);
  v7 = sub_1004D03D4(a1, v6);
  if (v7)
  {
    sub_1004D0FAC(a1, v6);
    *(v7 + 182) = 0;
  }

  sub_1000088CC(v9);
  return 0;
}

uint64_t sub_1004D99F4(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = a6;
  v10 = a4;
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, &a1[138]);
  v13 = sub_1004D03D4(a1, a3);
  v14 = v13;
  if (a7)
  {
    v15 = qword_100BCE8B8;
    if (*(v13 + 182) < 3)
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109632;
        *&buf[4] = a7;
        v26 = 1024;
        v27 = v10;
        v28 = 1024;
        v29 = a3;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Received get all capability failure with error %d for stream endpoint ID %u on a2dp handle %d - disconnecting", buf, 0x14u);
      }

      sub_1004CFE18(a1, a3);
      if (qword_100B53FE8 != -1)
      {
        sub_100838954();
      }

      v18 = qword_100B53FE0;
      sub_100007E30(buf, "A2DPClient::GetAllCapsCfm");
      sub_100007E30(__p, "A2DP Get All Capabilities Error");
      sub_1005780BC(v18, buf, __p, 0.0);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v30 < 0)
      {
        operator delete(*buf);
      }
    }

    else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *&buf[4] = a7;
      v26 = 1024;
      v27 = v10;
      v28 = 1024;
      v29 = a3;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "GetAllCaps rejected with error %d, but already in >= open state for stream endpoint ID %u on a2dp handle %d", buf, 0x14u);
    }
  }

  else
  {
    v16 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v10;
      v26 = 1024;
      v27 = a3;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "GetAllCapsCfm: Successfully retrieved capabilities for stream endpoint %u on a2dp handle %d", buf, 0xEu);
    }

    sub_100509868((v14 + 50), v8, a5, v10);
    v17 = sub_10050BD58((v14 + 50));
    if (v17 == 255)
    {
      sub_1004D21B8(a1, a3);
    }

    else
    {
      v19 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *&buf[4] = v17;
        v26 = 1024;
        v27 = a3;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Querying stream capabilities of endpoint %u on a2dp handle %d", buf, 0xEu);
      }

      buf[0] = 0;
      sub_1000216B4(buf);
      v20 = sub_1001F6D74(a3, v17, 0);
      sub_100022214(buf);
      if (v20 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_100837EE4();
      }

      sub_10002249C(buf);
    }
  }

  sub_1000088CC(v24);
  return 0;
}

uint64_t sub_1004D9D98(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, a1 + 552);
  v8 = sub_1004D05C4(a1, a2);
  v9 = sub_1004CEE18(a1, v8);
  v10 = sub_1004D03D4(a1, v8);
  v12 = v10;
  if (v10)
  {
    v13 = sub_10000C798(v10, v11);
    if ((*(*v13 + 760))(v13))
    {
      v14 = 5000;
    }

    else
    {
      v14 = a4;
    }

    v15 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      if (v9)
      {
        sub_1000E5A58(v9, __p);
        if (v22 >= 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = __p[0];
        }

        *buf = 136446466;
        v25 = v16;
        v26 = 1024;
        v27 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received delay report stream request from device %{public}s, delay in 1/10th of milliseconds %d", buf, 0x12u);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136446466;
        v25 = "null";
        v26 = 1024;
        v27 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received delay report stream request from device %{public}s, delay in 1/10th of milliseconds %d", buf, 0x12u);
      }
    }

    if (*(v12 + 728) == 5 && *(v12 + 705) == 1)
    {
      dispatch_block_cancel(*(a1 + 496));
      sub_1007036D8(v12, 100 * v14);
      sub_1004DA09C(a1, v12, v9);
      sub_1004DA4B0(a1, v12, (52429 * v14) >> 19);
    }

    else
    {
      sub_10050C108(v12 + 400, 100 * v14);
      v19 = sub_10050BE78(v12 + 400, v18);
      sub_1003A34D0(v12, v19);
    }

    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    sub_1001F9554(a2, a3, 1, 0);
    sub_100022214(__p);
    sub_10002249C(__p);
    v17 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_10083897C();
    }

    v17 = 1;
  }

  sub_1000088CC(v23);
  return v17;
}

void sub_1004DA05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1004DA09C(os_unfair_lock_s *a1, uint64_t a2, unint64_t a3)
{
  v6 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 708);
    v26 = 67109120;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Current Dynamic latency JBL: %d", &v26, 8u);
  }

  v8 = *(a2 + 708);
  if (v8 > 0x77)
  {
    if (*(a2 + 708) > 0x95u)
    {
      if (v8 == 150)
      {
        if (qword_100B50940 != -1)
        {
          sub_100837504();
        }

        if (sub_1006315B8(off_100B50938, 1))
        {
          if (qword_100B50940 != -1)
          {
            sub_100837504();
          }

          if (sub_10062D330(off_100B50938, a3))
          {
            v11 = qword_100BCE8B8;
            if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v26) = 0;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Adaptive Latency prevent disable LLM, set flush to 200ms", &v26, 2u);
            }

            LOBYTE(v26) = 0;
            sub_1000216B4(&v26);
            v12 = sub_10023DF34(a3 + 128);
            sub_100022214(&v26);
            if (v12 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
            {
              sub_1008389EC();
            }

            goto LABEL_44;
          }
        }

        v9 = 0;
        v8 = 200;
      }

      else
      {
        if (v8 != 300)
        {
          goto LABEL_30;
        }

        v9 = 0;
      }

      v10 = 1;
      goto LABEL_35;
    }

    if (v8 == 120 || v8 == 140)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (*(a2 + 708) <= 0x4Fu)
    {
      if (v8 == 30)
      {
        v9 = 1;
        v8 = 60;
        v10 = 3;
        goto LABEL_35;
      }

      if (v8 != 60)
      {
        goto LABEL_30;
      }

LABEL_14:
      v9 = 1;
      v10 = 2;
LABEL_35:
      sub_1007036C8(a2, v10);
      v13 = sub_1004D1518(a1, *(a2 + 600), v9);
      v15 = v9 ^ 1;
      if (*(a2 + 728) == 5)
      {
        v15 = 1;
      }

      if ((v15 & 1) == 0)
      {
        v16 = sub_10000C7D0(v13, v14);
        v17 = *(a3 + 132);
        v18 = *(a3 + 128);
        v19 = sub_1000DEB14(a3);
        v20 = (*(*v16 + 56))(v16, (v18 | (v17 << 32)) & 0xFFFFFFFFFFFFLL, v19, 2, 1, 1, 1, 0);
        v22 = sub_10000C7D0(v20, v21);
        v13 = (*(*v22 + 944))(v22, 1, 1);
      }

      v23 = sub_10000C7D0(v13, v14);
      (*(*v23 + 80))(v23, a3, v9);
      v24 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 67109120;
        v27 = v8;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Dynamic Latency settting flush timeout to %d ms", &v26, 8u);
      }

      LOBYTE(v26) = 0;
      sub_1000216B4(&v26);
      v25 = sub_10023DF34(a3 + 128);
      sub_100022214(&v26);
      if (v25 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_100838A5C();
      }

LABEL_44:
      sub_10002249C(&v26);
      return;
    }

    if (v8 == 80 || v8 == 100)
    {
      goto LABEL_14;
    }
  }

LABEL_30:
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100838ACC();
  }

  *(a2 + 705) = 0;
  sub_1004CF0E0(a1, a2, 0);
}

void sub_1004DA490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

void sub_1004DA4B0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a2 + 708);
  v7 = fabs((a3 - v6));
  if (a3 >= v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (v7 <= 0xAu || v6 == 150)
  {
    v10 = v7;
  }

  else
  {
    v10 = v7 - 10;
  }

  v11 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "Down";
    if (v6 > a3)
    {
      v12 = "Up";
    }

    v13 = 136315394;
    v14 = v12;
    v15 = 1024;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Dynamic Latency: Request JBL  %s by %dMsec", &v13, 0x12u);
  }

  if (v10)
  {
    sub_1004D1688(a1, a2, v8, v10);
  }

  else
  {
    (*(*a1 + 224))(a1, a2, 1);
  }
}

uint64_t sub_1004DA620(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, unint64_t a6)
{
  v9 = a2;
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 552);
  if (v9)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838B08();
    }
  }

  else
  {
    v11 = a4 * 312.5;
    atomic_store(0, (a1 + 760));
    v12 = atomic_load((a1 + 744));
    atomic_store(v11 + (a6 - v12) * *(a1 + 620) / *(a1 + 624) / 0x3E8, (a1 + 752));
    atomic_store(a6, (a1 + 744));
    *(a1 + 776) = a4;
    if (*(a1 + 780) == 1)
    {
      v13 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_INFO))
      {
        v14 = atomic_load((a1 + 752));
        *buf = 67109888;
        v18 = 0;
        v19 = 1024;
        v20 = v11;
        v21 = 1024;
        v22 = a5;
        v23 = 1024;
        v24 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "status %d, clock %uus, accuracy %u, adjusted clock %uus", buf, 0x1Au);
      }
    }
  }

  return sub_1000088CC(v16);
}

void sub_1004DA7C8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = atomic_load((a1 + 760));
  v4 = sub_1004D03D4(a1, a2);
  kdebug_trace();
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100838B78();
  }

  v5 = *(v4 + 360);
  if (qword_100B50940 != -1)
  {
    sub_100837504();
  }

  sub_10063AA70(off_100B50938, v2, v5, v3);
}

uint64_t sub_1004DA8A4(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, (a1 + 69));
  v6 = sub_1000E04A4(a1, a2);
  v7 = sub_1004D03D4(a1, v6);
  v8 = v7;
  if (v7)
  {
    sub_10050C1BC((v7 + 50), v3);
    sub_1003A32D0(v8, v3);
  }

  sub_1000088CC(v10);
  return 0;
}

BOOL sub_1004DA948(float a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = sub_1000E2140(a3, 0xCu);
  v11 = !v7 && (v9 = sub_10000C798(v7, v8), ((*(*v9 + 416))(v9) & 1) == 0) && !sub_1000E2140(a3, 0x1Au) || a4 != 9 && a4 != 15;
  v12 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "No";
    if (v11)
    {
      v13 = "Yes";
    }

    v15 = 134218242;
    v16 = (a1 * 100.0);
    v17 = 2082;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "REMOTE DEVICE Volume : Should send volume %f to driver = %{public}s", &v15, 0x16u);
  }

  return v11;
}

uint64_t sub_1004DAA9C(void *a1, uint64_t a2, int a3, float a4)
{
  v8 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = (a4 * 100.0);
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AVRCP REMOTE DEVICE: Volume changed to %f", &v13, 0xCu);
  }

  v9 = sub_1000E04A4(a1, a2);
  v10 = sub_1004D03D4(a1, v9);
  if (v10)
  {
    v11 = v10;
    if (sub_1004DA948(a4, v10, a2, a3))
    {
      sub_1003A2788(v11, a4);
    }
  }

  return 0;
}

uint64_t sub_1004DABB0(void *a1, uint64_t a2)
{
  v4 = sub_1000E04A4(a1, a2);
  v5 = sub_1004D03D4(a1, v4);
  if (!v5)
  {
    return 312;
  }

  v6 = v5;
  v11 = 0;
  if (qword_100B50950 != -1)
  {
    sub_100838BFC();
  }

  v7 = sub_10033C1E4(off_100B50948, a2, &v11 + 1, &v11);
  sub_1003A35C4(v6, BYTE4(v11), v11);
  v10 = 3;
  if (qword_100B50950 != -1)
  {
    sub_1008373EC();
  }

  sub_10033C47C(off_100B50948, a2, &v10);
  sub_1003A35D4(v6, v10);
  v8 = sub_1000E3314(a2);
  sub_1003A35E4(v6, v8);
  return v7;
}

uint64_t sub_1004DACA4(void *a1, uint64_t a2)
{
  v4 = sub_1000E04A4(a1, a2);
  v5 = sub_1004D03D4(a1, v4);
  if (v5)
  {
    v6 = v5;
    if (qword_100B50950 != -1)
    {
      sub_100838BFC();
    }

    v7 = sub_10033C0B8(off_100B50948, a2);
    sub_1003A359C(v6, v7);
  }

  return 0;
}

uint64_t sub_1004DAD18(void *a1, uint64_t a2, int a3)
{
  v5 = sub_1000E04A4(a1, a2);
  v6 = sub_1004D03D4(a1, v5);
  if (v6)
  {
    sub_1003A35F4(v6, a3);
  }

  return 0;
}

uint64_t sub_1004DAD5C(void *a1, uint64_t a2)
{
  v4 = sub_1000E04A4(a1, a2);
  v5 = sub_1004D03D4(a1, v4);
  if (v5)
  {
    v6 = v5;
    v7 = sub_1000E3284(a2);
    sub_1003A3614(v6, v7);
  }

  return 0;
}

uint64_t sub_1004DADB0(void *a1, uint64_t a2)
{
  v4 = sub_1000E04A4(a1, a2);
  v5 = sub_1004D03D4(a1, v4);
  if (v5)
  {
    v6 = v5;
    v7 = sub_10054B04C(a2);
    sub_1003A3BF4(v6, v7);
  }

  return 0;
}

uint64_t sub_1004DAE04(void *a1, uint64_t a2)
{
  v4 = sub_1000E04A4(a1, a2);
  v5 = sub_1004D03D4(a1, v4);
  if (v5)
  {
    v6 = v5;
    v7 = sub_1005493C4(a2);
    sub_1003A3950(v6, v7);
  }

  return 0;
}

uint64_t sub_1004DAE58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 528);
  if (v4 != (a1 + 536))
  {
    do
    {
      v5 = *(v4 + 16);
      v6 = sub_1004D03D4(a1, v5);
      if (v6)
      {
        v7 = sub_1004CEE18(a1, v5);
        if (v7)
        {
          if (sub_1000E012C(v7, 0x40u))
          {
            v8 = qword_100BCE8B8;
            if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v14 = v3;
              v15 = 1024;
              v16 = v5;
              _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Notify Foreground App Chanbed to BTHAL: %@, a2dpHandle:%u", buf, 0x12u);
            }

            sub_1003A3698(v6, v3);
          }
        }
      }

      v9 = v4[1];
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
          v10 = v4[2];
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v4 = v10;
    }

    while (v10 != (a1 + 536));
  }

  return 0;
}

uint64_t sub_1004DAFF4(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_1000E04A4(a1, a2);
  v7 = sub_1004D03D4(a1, v6);
  if (v7)
  {
    (*(*v7 + 136))(v7, v5);
    v8 = 0;
  }

  else
  {
    v8 = 7;
  }

  return v8;
}

uint64_t sub_1004DB094(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000E04A4(a1, a2);
  v6 = sub_1004D03D4(a1, v5);
  v7 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "A2DPClient::notifyPersonalizedVolumeDRCInfoChanged  called", v9, 2u);
  }

  if (!v6)
  {
    return 7;
  }

  (*(*v6 + 144))(v6, a3);
  return 0;
}

uint64_t sub_1004DB15C(uint64_t a1, int a2)
{
  v2 = *(a1 + 528);
  v3 = (a1 + 536);
  if (v2 != (a1 + 536))
  {
    v6 = "Off";
    if (a2)
    {
      v6 = "On";
    }

    v17 = v6;
    do
    {
      v7 = *(v2 + 16);
      v8 = sub_1004D03D4(a1, v7);
      if (v8)
      {
        v9 = v8;
        v10 = sub_1004CEE18(a1, v7);
        if (v10)
        {
          v11 = v10;
          if (sub_1000E012C(v10, 0x40u))
          {
            v12 = qword_100BCE8B8;
            if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v19 = v17;
              v20 = 1024;
              v21 = v7;
              _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Notify AccessHeadTrack Change to BTHAL: %s, a2dpHandle:%u", buf, 0x12u);
            }

            sub_1003A3670(v9, a2);
            if (qword_100B508E0 != -1)
            {
              sub_1008372B0();
            }

            sub_10051774C(off_100B508D8, v11);
          }
        }
      }

      v13 = v2[1];
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
          v14 = v2[2];
          v15 = *v14 == v2;
          v2 = v14;
        }

        while (!v15);
      }

      v2 = v14;
    }

    while (v14 != v3);
  }

  return 0;
}

uint64_t sub_1004DB318(uint64_t a1)
{
  v1 = *(a1 + 528);
  v2 = (a1 + 536);
  if (v1 != (a1 + 536))
  {
    do
    {
      v4 = *(v1 + 16);
      v5 = sub_1004D03D4(a1, v4);
      if (v5)
      {
        v6 = v5;
        v7 = sub_1004CEE18(a1, v4);
        v8 = sub_1000E012C(v7, 0x40u);
        if (v8)
        {
          v10 = sub_10000C798(v8, v9);
          v11 = (*(*v10 + 840))(v10, 3);
          if (v7)
          {
            if (v11)
            {
              if (qword_100B50940 != -1)
              {
                sub_100837ADC();
              }

              v12 = sub_100639CE0(off_100B50938);
              sub_1003A3D44(v6, v12);

              if (qword_100B50940 != -1)
              {
                sub_100837ADC();
              }

              v13 = sub_100639FCC(off_100B50938, v7);
              sub_100703728(v6, v13);
            }
          }
        }
      }

      v14 = v1[1];
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
          v15 = v1[2];
          v16 = *v15 == v1;
          v1 = v15;
        }

        while (!v16);
      }

      v1 = v15;
    }

    while (v15 != v2);
  }

  return 0;
}

uint64_t sub_1004DB488(void *a1, uint64_t a2)
{
  v4 = sub_1000E04A4(a1, a2);
  v5 = sub_1004D03D4(a1, v4);
  if (v5)
  {
    v6 = v5;
    v11 = 0;
    if (qword_100B508F0 != -1)
    {
      sub_100836E24();
    }

    v7 = sub_10056C0AC(off_100B508E8, a2, &v11);
    v9 = *sub_10000C798(v7, v8);
    if ((*(v9 + 848))() != 1)
    {
      sub_1003A3648(v6, v11 == 1);
      if (qword_100B508E0 != -1)
      {
        sub_1008372B0();
      }

      sub_100519738(off_100B508D8, a2);
    }
  }

  return 0;
}

uint64_t sub_1004DB580(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = sub_1000E04A4(a1, a2);
  v7 = sub_1004D03D4(a1, v6);
  if (v7)
  {
    v8 = v7;
    v9 = sub_1000E012C(a2, 0x40u);
    if (v9)
    {
      v11 = sub_10000C798(v9, v10);
      if ((*(*v11 + 840))(v11, 3))
      {
        v12 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          v13 = "NO";
          if (v3)
          {
            v13 = "YES";
          }

          v15 = 136315138;
          v16 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Personalized HRTF enhanced Tuning %s", &v15, 0xCu);
        }

        sub_100703738(v8, v3);
      }
    }
  }

  return 0;
}

uint64_t sub_1004DB6BC(void *a1, uint64_t a2, void *a3, int a4, int a5)
{
  v9 = a3;
  v10 = sub_1000E04A4(a1, a2);
  v11 = sub_1004D03D4(a1, v10);
  v24 = 0;
  if (qword_100B508F0 != -1)
  {
    sub_100836E24();
  }

  v12 = sub_10056C0AC(off_100B508E8, a2, &v24);
  v14 = sub_10000C798(v12, v13);
  if ((*(*v14 + 848))(v14) == 1)
  {
    v15 = a1[66];
    if (v15 != a1 + 67)
    {
      do
      {
        v16 = *(v15 + 16);
        v17 = sub_1004D03D4(a1, v16);
        if (v17)
        {
          v18 = sub_1004CEE18(a1, v16);
          v19 = v18;
          if (v18)
          {
            if (sub_1000E012C(v18, 0x40u))
            {
              if (v9)
              {
                sub_1003A3788(v17, a4, v9, a5);
              }

              if (qword_100B508E0 != -1)
              {
                sub_1008372B0();
              }

              sub_100519738(off_100B508D8, v19);
            }
          }
        }

        v20 = v15[1];
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
            v21 = v15[2];
            v22 = *v21 == v15;
            v15 = v21;
          }

          while (!v22);
        }

        v15 = v21;
      }

      while (v21 != a1 + 67);
    }
  }

  else if (v9 && v11)
  {
    sub_1003A3788(v11, a4, v9, a5);
  }

  return 0;
}

uint64_t sub_1004DB8A8(void *a1, uint64_t a2, int a3)
{
  v6 = sub_1000E04A4(a1, a2);
  v7 = sub_1004D03D4(a1, v6);
  if (!v7)
  {
    return 7;
  }

  v8 = v7;
  result = sub_1000E2140(a2, 0x1Au);
  if (result)
  {
    v10 = sub_10000E92C();
    if (((*(*v10 + 784))(v10) & 1) == 0)
    {
      sub_1003A33C8(v8, a3);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1004DB94C(void *a1, uint64_t a2, int a3)
{
  v5 = sub_1000E04A4(a1, a2);
  v6 = sub_1004D03D4(a1, v5);
  if (!v6)
  {
    return 7;
  }

  sub_1003A3F6C(v6, a3);
  return 0;
}

uint64_t sub_1004DB998(void *a1, uint64_t a2, int a3)
{
  v5 = sub_1000E04A4(a1, a2);
  v6 = sub_1004D03D4(a1, v5);
  if (!v6)
  {
    return 7;
  }

  v8 = v6;
  if (a3)
  {
    v9 = sub_10000C7D0(v6, v7);
    v10 = sub_1000E01B4(v9, 2);
  }

  else
  {
    v10 = 0;
  }

  sub_1003A3EF4(v8, v10);
  return 0;
}

uint64_t sub_1004DBA04(void *a1, uint64_t a2, int *a3)
{
  v6 = sub_1000E04A4(a1, a2);
  v7 = sub_1004D03D4(a1, v6);
  if (a3)
  {
    v8 = v7;
    if (v7)
    {
      if (sub_1000E2140(a2, 0x10u))
      {
        *a3 |= 1u;
      }

      v9 = sub_1000E2140(a2, 0x11u);
      v10 = *a3;
      if (v9)
      {
        v10 |= 2u;
        *a3 = v10;
      }

      sub_100540FDC(a2, v10);
      sub_1003A3638(v8, *a3);
      return 0;
    }

    else
    {
      return 7;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838C10();
    }

    return 3;
  }
}

uint64_t sub_1004DBAD8(void *a1, uint64_t a2, int a3)
{
  v6 = sub_1000E04A4(a1, a2);
  v7 = sub_1004D03D4(a1, v6);
  if (!v7)
  {
    return 7;
  }

  v9 = v7;
  if (a3)
  {
    v10 = sub_10000C7D0(v7, v8);
    v11 = sub_1000E01B4(v10, 0);
  }

  else
  {
    v11 = 0;
  }

  sub_1003A3E94(v9, v11);
  v13 = sub_1000E00E4(a2);
  sub_1004DBB68(a1, a2, v13);
  return 0;
}

uint64_t sub_1004DBB68(void *a1, uint64_t a2, int a3)
{
  v5 = sub_1000E04A4(a1, a2);
  v6 = sub_1004D03D4(a1, v5);
  if (!v6)
  {
    return 7;
  }

  sub_1003A3EBC(v6, a3);
  return 0;
}

uint64_t sub_1004DBBB4(void *a1, uint64_t a2, int a3)
{
  v5 = sub_1000E04A4(a1, a2);
  v6 = sub_1004D03D4(a1, v5);
  if (!v6)
  {
    return 7;
  }

  v8 = v6;
  if (a3)
  {
    v9 = sub_10000C7D0(v6, v7);
    v10 = sub_1000E01B4(v9, 1);
  }

  else
  {
    v10 = 0;
  }

  sub_1003A3ECC(v8, v10);
  return 0;
}

uint64_t sub_1004DBC20(void *a1, uint64_t a2, int a3)
{
  v6 = sub_1000E04A4(a1, a2);
  v7 = sub_1004D03D4(a1, v6);
  if (!v7)
  {
    return 7;
  }

  v9 = v7;
  if (a3)
  {
    v10 = sub_10000C798(v7, v8);
    v11 = (*(*v10 + 840))(v10, 1);
    if (v11)
    {
      v13 = sub_10000C798(v11, v12);
      a3 = (*(*v13 + 840))(v13, 3);
      v14 = 1;
    }

    else
    {
      v14 = 0;
      a3 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v24 = 0;
  sub_1003A3CF4(v9, v14);
  sub_1003A3E6C(v9, a3);
  if (v14)
  {
    if (a3)
    {
      if (qword_100B50940 != -1)
      {
        sub_100837ADC();
      }

      v16 = sub_100639CE0(off_100B50938);
      sub_1003A3D44(v9, v16);

      if (qword_100B50940 != -1)
      {
        sub_100837ADC();
      }

      v17 = sub_100639FCC(off_100B50938, a2);
      sub_100703728(v9, v17);
    }

    if (qword_100B508F0 != -1)
    {
      sub_100836E24();
    }

    sub_10056C0AC(off_100B508E8, a2, &v24);
    v18 = v24;
    if (!v24)
    {
      if (qword_100B508F0 != -1)
      {
        sub_100837854();
      }

      v18 = 1;
      sub_10056C1D8(off_100B508E8, a2, 1);
      v24 = 1;
    }

    sub_1003A3648(v9, v18 == 1);
    if (qword_100B50940 != -1)
    {
      sub_100837504();
    }

    v19 = sub_100639508(off_100B50938);
    (*(*v9 + 128))(v9, v19);
    v20 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v21 = "YES";
      }

      else
      {
        v21 = "NO";
      }

      if (qword_100B50940 != -1)
      {
        sub_100837504();
      }

      v22 = sub_100639FCC(off_100B50938, a2);
      v23 = " NO ";
      *buf = 136446722;
      v26 = "YES ";
      v27 = 2082;
      v28 = v21;
      if (v22)
      {
        v23 = " YES ";
      }

      v29 = 2082;
      v30 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "AudioDevice. Spatial Audio :  SpatialSupport  %{public}s Custom HRTF Support %{public}s Custom HRTF Allowed %{public}s", buf, 0x20u);
    }
  }

  return 0;
}

uint64_t sub_1004DBF5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000E45E8(a2);
  v4 = qword_100BCE8B8;
  result = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        if (result)
        {
          sub_1000E5A58(a2, __p);
          v10 = v15 >= 0 ? __p : __p[0];
          *buf = 136446210;
          v17 = v10;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User selected device type is hearing aid. Returning user selected device type as kBluetoothAudioDeviceCategoryHearingAid for device %{public}s.", buf, 0xCu);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        return 4;
      case 4:
        if (result)
        {
          sub_1000E5A58(a2, __p);
          v13 = v15 >= 0 ? __p : __p[0];
          *buf = 136446210;
          v17 = v13;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Returning user selected device type as kBluetoothAudioDeviceCategorySpeaker for device %{public}s.", buf, 0xCu);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        return 3;
      case 5:
        if (result)
        {
          sub_1000E5A58(a2, __p);
          v7 = v15 >= 0 ? __p : __p[0];
          *buf = 136446210;
          v17 = v7;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User selected device type is other. Returning user selected device type as kBluetoothAudioDeviceCategoryOther for device %{public}s.", buf, 0xCu);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        return 5;
      default:
LABEL_34:
        if (!result)
        {
          return result;
        }

        sub_1000E5A58(a2, __p);
        if (v15 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        *buf = 136446210;
        v17 = v11;
        v9 = "Returning user selected device type as kBluetoothAudioDeviceCategoryUnknown for device %{public}s.";
        goto LABEL_39;
    }
  }

  else
  {
    if (!v3)
    {
      if (!result)
      {
        return result;
      }

      sub_1000E5A58(a2, __p);
      if (v15 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 136446210;
      v17 = v8;
      v9 = "User selected device type is unknown. Returning user selected device type as kBluetoothAudioDeviceCategoryUnknown for device %{public}s.";
LABEL_39:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      return 0;
    }

    if (v3 != 1)
    {
      if (v3 == 2)
      {
        if (result)
        {
          sub_1000E5A58(a2, __p);
          if (v15 >= 0)
          {
            v6 = __p;
          }

          else
          {
            v6 = __p[0];
          }

          *buf = 136446210;
          v17 = v6;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Returning user selected device type as kBluetoothAudioDeviceCategoryHeadphone for device %{public}s.", buf, 0xCu);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        return 1;
      }

      goto LABEL_34;
    }

    if (result)
    {
      sub_1000E5A58(a2, __p);
      v12 = v15 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Returning user selected device type as kBluetoothAudioDeviceCategoryCarkit for device %{public}s.", buf, 0xCu);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 2;
  }
}

uint64_t sub_1004DC2F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, v2 + 552);
  v3 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Software Volume: Initialize software volume enabled", v5, 2u);
  }

  if (qword_100B50950 != -1)
  {
    sub_1008373EC();
  }

  if (sub_1003349D4(off_100B50948, *(a1 + 40), 2, 1) && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100838C4C();
  }

  return sub_1000088CC(v6);
}

void sub_1004DC3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1004DC3F4(uint64_t a1, uint64_t a2)
{
  if (sub_1003A42E4(a2))
  {
    v4 = sub_100702ABC(a2);
    v5 = v4;
    v7 = sub_1000DAB84(v4, v6);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1004DC4D8;
    v9[3] = &unk_100AEB940;
    v9[4] = a1;
    v10 = v5;
    sub_10000CA94(v7, v9);
  }

  else
  {
    v8 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Audio device is not valid, not handling streamWillStart", buf, 2u);
    }
  }
}

uint64_t sub_1004DC4D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v26[0] = 0;
  v26[1] = 0;
  sub_100007F88(v26, (v2 + 69));
  v3 = sub_1004CEE18(v2, *(a1 + 40));
  v4 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    *buf = 67109120;
    v28 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received system 'audio started' notification from HAL on a2dpHandle %d", buf, 8u);
  }

  atomic_store(0, v2 + 93);
  atomic_store(0, v2 + 94);
  atomic_store(0, v2 + 95);
  if (v3)
  {
    *buf = 0;
    v25 = 0;
    v24 = 0;
    v6 = sub_1000C2364(v3, buf, &v25 + 1, &v25, &v24);
    v8 = sub_10000C798(v6, v7);
    if ((*(*v8 + 760))(v8) && (v25 - 8202) <= 0x25 && ((1 << (v25 - 10)) & 0x200020033FLL) != 0)
    {
      if (qword_100B50950 != -1)
      {
        sub_1008373EC();
      }

      if (sub_100331844(off_100B50948, v3, 11, 500, 1) && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_100838CBC();
      }
    }

    v9 = sub_1004D1E24(v2, *(a1 + 40));
    v10 = *(v3 + 32);
    v11 = *(v3 + 66);
    v13 = sub_10000C7D0(v9, v12);
    v14 = sub_1000DEB14(v3);
    v15 = (*(*v13 + 56))(v13, (v10 | (v11 << 32)) & 0xFFFFFFFFFFFFLL, v14, 2, 1, 1, 1, 0);
    v17 = sub_10000C7D0(v15, v16);
    (*(*v17 + 944))(v17, 1, 1);
    v23 = 0;
    sub_1000216B4(&v23);
    v18 = sub_1001F969C((v3 + 16));
    v19 = sub_100022214(&v23);
    if (!v18)
    {
      v21 = sub_10000C7D0(v19, v20);
      (*(*v21 + 296))(v21, v3, 1, 1);
    }

    sub_10002249C(&v23);
  }

  return sub_1000088CC(v26);
}

void sub_1004DC7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004DC818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  result = sub_100702ABC(a2);
  if (result)
  {
    v10 = result;
    if (*(a1 + 780) == 1)
    {
      v11 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEBUG))
      {
        v12 = 134218496;
        v13 = a4;
        v14 = 1024;
        v15 = v10;
        v16 = 1024;
        v17 = a5;
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Sending data of length %lu to a2dpHandle %d with frameCount %d", &v12, 0x18u);
      }
    }

    return sub_1004D3E74(a1, a3, a4, a5, v10);
  }

  return result;
}

void sub_1004DC92C(uint64_t a1, uint64_t a2)
{
  if (sub_1003A42E4(a2))
  {
    v4 = sub_100702ABC(a2);
    v5 = v4;
    v7 = sub_1000DAB84(v4, v6);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1004DCA10;
    v9[3] = &unk_100AEB940;
    v9[4] = a1;
    v10 = v5;
    sub_10000CA94(v7, v9);
  }

  else
  {
    v8 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Audio device is not valid, not handling streamDidStop", buf, 2u);
    }
  }
}

uint64_t sub_1004DCA10(uint64_t a1)
{
  v2 = *(a1 + 32);
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, &v2[138]);
  v3 = sub_1004CEE18(v2, *(a1 + 40));
  v4 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    *buf = 67109120;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received system 'audio stop' notification from HAL on a2dpHandle %d", buf, 8u);
  }

  if (v3)
  {
    v6 = sub_1004D17C8(v2, *(a1 + 40));
    v8 = sub_10000C7D0(v6, v7);
    (*(*v8 + 944))(v8, 0, 1);
    buf[0] = 0;
    sub_1000216B4(buf);
    v9 = sub_1001F969C((v3 + 16));
    v10 = sub_100022214(buf);
    if (!v9)
    {
      v12 = sub_10000C7D0(v10, v11);
      (*(*v12 + 296))(v12, v3, 0, 1);
    }

    sub_10002249C(buf);
  }

  return sub_1000088CC(v14);
}

void sub_1004DCBD4(uint64_t a1, uint64_t a2)
{
  if (sub_1003A42E4(a2))
  {
    v4 = sub_100702ABC(a2);
    v5 = v4;
    v7 = sub_1000DAB84(v4, v6);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1004DCCB8;
    v9[3] = &unk_100AEB940;
    v9[4] = a1;
    v10 = v5;
    sub_10000CA94(v7, v9);
  }

  else
  {
    v8 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Audio device is not valid, not handling streamDidReset", buf, 2u);
    }
  }
}

uint64_t *sub_1004DCCB8(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = sub_1004CEE18(v2, *(a1 + 40));
  if (result)
  {
    sub_1004D17C8(v2, *(a1 + 40));
    v4 = *(a1 + 40);

    return sub_1004D1C40(v2, v4);
  }

  return result;
}

void sub_1004DCD24(uint64_t a1, uint64_t a2, float a3)
{
  if (sub_1003A42E4(a2))
  {
    v6 = sub_100702ABC(a2);
    v7 = v6;
    v9 = sub_1000DAB84(v6, v8);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1004DCE18;
    v11[3] = &unk_100AF9DB0;
    v11[4] = a1;
    v13 = v7;
    v12 = a3;
    sub_10000CA94(v9, v11);
  }

  else
  {
    v10 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Audio device is not valid, not handling volumeDidUpdate", buf, 2u);
    }
  }
}

uint64_t sub_1004DCE18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, v2 + 552);
  v3 = sub_1004CEE18(v2, *(a1 + 44));
  if (v3)
  {
    v4 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_INFO))
    {
      v5 = (*(a1 + 40) * 100.0);
      *buf = 67109120;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Sending volume %d", buf, 8u);
    }

    if (qword_100B541D0 != -1)
    {
      sub_100837804();
    }

    sub_1006CCF18(*(a1 + 40), off_100B541C8, v3);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_1004DCF58(void *a1, uint64_t a2, int a3)
{
  v6 = sub_1000E04A4(a1, a2);
  if (!v6)
  {
    return 1;
  }

  v7 = sub_1004D03D4(a1, v6);
  v8 = qword_100BCE8B8;
  if (!v7)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838D40();
    }

    return 1;
  }

  v9 = v7;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v10 = __p[0];
    v11 = "No";
    if (v14 >= 0)
    {
      v10 = __p;
    }

    if (a3)
    {
      v11 = "Yes";
    }

    *buf = 136446466;
    v16 = v10;
    v17 = 2082;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setAllowsAutoRoute: %{public}s, allows %{public}s", buf, 0x16u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_1003A4008(v9, a3);
  return 0;
}

uint64_t sub_1004DD0C0(void *a1, uint64_t a2, int a3)
{
  v6 = sub_1000E04A4(a1, a2);
  if (!v6)
  {
    return 1;
  }

  v7 = sub_1004D03D4(a1, v6);
  v8 = qword_100BCE8B8;
  if (!v7)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838DB0();
    }

    return 1;
  }

  v9 = v7;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v10 = __p[0];
    v11 = "No";
    if (v14 >= 0)
    {
      v10 = __p;
    }

    if (a3)
    {
      v11 = "Yes";
    }

    *buf = 136446466;
    v16 = v10;
    v17 = 2082;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setAudioRouteHidden: %{public}s, %{public}s", buf, 0x16u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_1003A407C(v9, a3);
  return 0;
}

uint64_t sub_1004DD228(void *a1, uint64_t a2, int a3)
{
  v5 = sub_1000E04A4(a1, a2);
  if (v5)
  {
    v6 = sub_1004D03D4(a1, v5);
    if (v6)
    {
      sub_1003A3F94(v6, a3);
      return 0;
    }

    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838E20();
    }
  }

  return 1;
}

uint64_t sub_1004DD2B0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = sub_1000E04A4(a1, a2);
  if (!v6)
  {
LABEL_10:
    v11 = 1;
    goto LABEL_11;
  }

  v7 = sub_1004D03D4(a1, v6);
  v8 = qword_100BCE8B8;
  if (!v7)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838E90();
    }

    goto LABEL_10;
  }

  v9 = v7;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "No";
    if (v3)
    {
      v10 = "Yes";
    }

    v13 = 136315138;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Smart Route: [A2DP] Tipi Connection status : %s", &v13, 0xCu);
  }

  sub_1003A325C(v9, v3);
  v11 = 0;
LABEL_11:
  if (qword_100B50940 != -1)
  {
    sub_100837504();
  }

  sub_10063AD60(off_100B50938, a2, v3);
  return v11;
}

void sub_1004DD40C(void *a1, uint64_t a2, int a3)
{
  v6 = sub_1000E04A4(a1, a2);
  if (v6)
  {
    v7 = sub_1004D03D4(a1, v6);
    if (v7)
    {
      v8 = v7;
      if ((a3 - 1) > 4)
      {
        v9 = 0;
      }

      else
      {
        v9 = dword_1008A9BE8[a3 - 1];
      }

      v10 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, __p);
        if (v14 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        *buf = 67109634;
        v16 = a3;
        v17 = 1024;
        v18 = v9;
        v19 = 2082;
        v20 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "User selected device type is %d. Setting category as %d for device %{public}s.", buf, 0x18u);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_10069BFD4(v8, v9);
      v12 = sub_100509234(v8 + 400);
      sub_10069BD7C(v8, v12);
    }

    else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838F00();
    }
  }
}

uint64_t sub_1004DD59C(os_unfair_lock_s *a1, uint64_t a2, int a3, uint64_t a4)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, &a1[138]);
  v8 = sub_1004D03D4(a1, a2);
  if (!v8)
  {
    goto LABEL_5;
  }

  if (qword_100B50940 != -1)
  {
    sub_100837504();
  }

  if ((sub_10062CF3C(off_100B50938, a2) & 1) == 0)
  {
    sub_1004D1688(a1, v8, a3, a4);
    v9 = 0;
    if (a4)
    {
      *(v8 + 710) = 1;
    }
  }

  else
  {
LABEL_5:
    if (a4)
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_100838F70();
      }

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1004CF890;
      v12[3] = &unk_100AF9CA8;
      v13 = a2;
      v14 = 0;
      sub_1004CEEC4(a1 + 108, v12);
    }

    v9 = 1;
  }

  sub_1000088CC(v11);
  return v9;
}

void sub_1004DD6F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1004DD70C(os_unfair_lock_s *a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dynamic Latency ExpanseStateChanged to: %d", v7, 8u);
  }

  sub_1004CF36C(a1, a2, a3);
}

void sub_1004DD7D8(os_unfair_lock_s *a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dynamic Latency gameStateChanged to: %d", v8, 8u);
  }

  sub_1004CF43C(a1, a2, a3);
  if ((a3 & 1) == 0)
  {
    v7 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Dynamic Latency ExpanseState disabled", v8, 2u);
    }

    sub_1004CF36C(a1, a2, 0);
  }
}

void sub_1004DD8FC(os_unfair_lock_s *a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dynamic Latency aggregationStateChanged to: %d", v7, 8u);
  }

  sub_1004CF50C(a1, a2, a3);
}

void sub_1004DD9C8(os_unfair_lock_s *a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dynamic Latency voiceOverChanged to: %d", v7, 8u);
  }

  sub_1004CF5E8(a1, a2, a3);
}

void sub_1004DDA94(os_unfair_lock_s *a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dynamic Latency MUSIC spatial changed to: %d", v7, 8u);
  }

  sub_1004CF6B8(a1, a2, a3);
}

void sub_1004DDB60(os_unfair_lock_s *a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dynamic Latency VIDEO spatial changed to: %d", v7, 8u);
  }

  sub_1004CF788(a1, a2, a3);
}

void sub_1004DDC2C(uint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4, unsigned __int8 a5)
{
  v9 = a4;
  v10 = sub_100702ABC(a2);
  v11 = sub_1004CEE18(a1, v10);
  if (v11)
  {
    v12[0] = 2;
    v12[1] = a3;
    v12[2] = sub_1003A2B68(a2, v9);
    v12[3] = a5;
    if (qword_100B50950 != -1)
    {
      sub_100838BFC();
    }

    if (sub_10033FD88(off_100B50948, v11, 4u, v12) && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838FE4();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100839054();
  }
}

void sub_1004DDD68(uint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4, unsigned __int8 a5, unsigned __int8 a6)
{
  v11 = a4;
  v12 = sub_100702ABC(a2);
  v13 = sub_1004CEE18(a1, v12);
  if (v13)
  {
    v14[0] = 3;
    v14[1] = sub_1003A2B68(a2, v11);
    v14[2] = a3;
    v14[3] = a5;
    v14[4] = a6;
    if (qword_100B50950 != -1)
    {
      sub_100838BFC();
    }

    if (sub_10033FD88(off_100B50948, v13, 5u, v14) && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100839090();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100839100();
  }
}

void sub_1004DDEAC(os_unfair_lock_s *a1, uint64_t a2, int a3, int a4)
{
  if (*(a2 + 723) != a3)
  {
    *(a2 + 723) = a3;
    v8 = sub_100702ABC(a2);
    v9 = sub_1004CEE18(a1, v8);
    if (v9)
    {
      v10 = v9;
      v11 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = a3 ? "enabled" : "disabled";
        sub_1000BE6F8((v10 + 128), __p);
        v13 = v18 >= 0 ? __p : __p[0];
        *buf = 136446466;
        v20 = v12;
        v21 = 2082;
        v22 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Wireless Splitter: %{public}s for device %{public}s", buf, 0x16u);
        if (v18 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (sub_1000E2140(v10, 0xDu) && sub_1005095A4(a2 + 400) == 33023)
      {
        *(a2 + 704) = a3 ^ 1;
        sub_1007036B8(a2, a3 ^ 1);
      }

      if (a3)
      {
        if (sub_1000E2140(v10, 0x1Au))
        {
          v14 = sub_10000E92C();
          if (((*(*v14 + 776))(v14) & 1) == 0)
          {
            v15 = qword_100BCE8B8;
            if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000BE6F8((v10 + 128), __p);
              v16 = v18 >= 0 ? __p : __p[0];
              *buf = 136446210;
              v20 = v16;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Wireless Splitter: Disable Software volume for %{public}s", buf, 0xCu);
              if (v18 < 0)
              {
                operator delete(__p[0]);
              }
            }

            if (qword_100B50950 != -1)
            {
              sub_1008373EC();
            }

            if (sub_1003349D4(off_100B50948, v10, 2, 2))
            {
              if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
              {
                sub_100838C4C();
              }
            }
          }
        }

        sub_1004CF9B8(a1, a2, 1);
      }

      else
      {
        sub_1004CF9B8(a1, a2, 0);
        if (a4 && *(v10 + 1016) == 1)
        {
          *(v10 + 1036) = 3;
          if (qword_100B50F88 != -1)
          {
            sub_10083913C();
          }

          sub_1006E0DBC(off_100B50F80, v10);
        }
      }
    }
  }
}

uint64_t *sub_1004DE1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100702ABC(a2);
  result = sub_1004CEE18(a1, v5);
  if (result)
  {
    v7 = result;
    v8 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000BE6F8((v7 + 128), __p);
      v9 = v11 >= 0 ? __p : __p[0];
      *buf = 67109378;
      v13 = a3;
      v14 = 2082;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Spatial Audio Active(via BTHAL) is : %d for device %{public}s", buf, 0x12u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (qword_100B508E0 != -1)
    {
      sub_1008372B0();
    }

    return sub_1005199DC(off_100B508D8, v7, a3);
  }

  return result;
}

void sub_1004DE2F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v9 = a3;
  v10 = sub_100702ABC(a2);
  v11 = sub_1004CEE18(a1, v10);
  v12 = qword_100BCE8B8;
  if (v11)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000BE6F8(v11 + 128, __p);
      v13 = @"None";
      if (v9)
      {
        v13 = v9;
      }

      if (v16 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      *buf = 138412802;
      v18 = v13;
      v19 = 1024;
      v20 = a4;
      v21 = 2082;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Spatial Audio: Spatial Audio mode for App: %@ From User(via BTHAL) is : %d for device %{public}s", buf, 0x1Cu);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (qword_100B508E0 != -1)
    {
      sub_1008372B0();
    }

    sub_100519AF8(off_100B508D8, v11, v9, a4, v5);
  }

  else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100839164();
  }
}

void sub_1004DE4A8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100702ABC(a2);
  v6 = v5;
  v8 = sub_1000DAB84(v5, v7);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1004DE544;
  v9[3] = &unk_100AF5948;
  v9[4] = a1;
  v10 = v6;
  v11 = a3;
  sub_10000CA94(v8, v9);
}

uint64_t sub_1004DE544(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, v2 + 552);
  v3 = sub_1004CEE18(v2, *(a1 + 40));
  if (v3)
  {
    v4 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 42))
      {
        v5 = "enabled";
      }

      else
      {
        v5 = "disabled";
      }

      *buf = 136315138;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PME On Buds: %s", buf, 0xCu);
    }

    *buf = 1;
    if (*(a1 + 42))
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    buf[1] = v6;
    if (qword_100B50950 != -1)
    {
      sub_1008373EC();
    }

    if (sub_10033FFAC(off_100B50948, v3, 2u, buf) && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_1008391A0();
    }
  }

  return sub_1000088CC(v8);
}

void sub_1004DE6D4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_100702ABC(a2);
  v7 = v6;
  v9 = sub_1000DAB84(v6, v8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1004DE774;
  v10[3] = &unk_100AEDA40;
  v11 = v7;
  v12 = a3;
  v10[4] = a1;
  v10[5] = a2;
  sub_10000CA94(v9, v10);
}

uint64_t sub_1004DE774(uint64_t a1)
{
  v2 = *(a1 + 32);
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, v2 + 552);
  v3 = sub_1004CEE18(v2, *(a1 + 48));
  if (v3)
  {
    v4 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 50))
      {
        v5 = "enabled";
      }

      else
      {
        v5 = "disabled";
      }

      *buf = 136315138;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Software Volume: %s", buf, 0xCu);
    }

    *(*(a1 + 40) + 726) = *(a1 + 50);
    v6 = sub_1000E012C(v3, 0x20u);
    if (*(a1 + 50))
    {
      v7 = 0;
    }

    else
    {
      v7 = (*(*(a1 + 40) + 723) | v6) ^ 1;
    }

    v8 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "No";
      if (v7)
      {
        v9 = "Yes";
      }

      *buf = 136315138;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Software Volume: Drop software volume enabled command : %s", buf, 0xCu);
    }

    if ((v7 & 1) == 0)
    {
      if (*(a1 + 50))
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      if (qword_100B50950 != -1)
      {
        sub_1008373EC();
      }

      if (sub_1003349D4(off_100B50948, v3, 2, v10) && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_100838C4C();
      }
    }
  }

  return sub_1000088CC(v12);
}

void sub_1004DE9A4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 3 && (*(a2 + 704) & 1) != 0)
  {
    v5 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "AAC-ELD frame count update notification from BTHALPlugIn received: %d", v6, 8u);
    }

    *(a2 + 660) = a3;
  }
}

void sub_1004DEA6C(os_unfair_lock_s *a1, uint64_t a2, unint64_t a3)
{
  if (sub_1005095A4(a2 + 400) == 33023)
  {
    v6 = sub_10000E92C();
    if (((*(*v6 + 448))(v6) & 1) == 0)
    {
      v7 = a3 / (10 * *(a2 + 660));
      v8 = *(a2 + 720) + v7;
      *(a2 + 720) = v8;
      v9 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134218240;
        v11 = v7;
        v12 = 1024;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "AudioSkywalkReadLoop Skip A2DP sequence number Skipped = %llu, current seq Num = %d", &v10, 0x12u);
      }
    }
  }

  sub_1004CF8F8(a1, a2, a3);
}

uint64_t sub_1004DEBB4(os_unfair_lock_s *a1, uint64_t a2, int a3)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, &a1[138]);
  v6 = sub_100702ABC(a2);
  v7 = v6;
  v8 = sub_1004D03D4(a1, v6);
  v9 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v7;
    LOWORD(v13) = 1024;
    *(&v13 + 2) = a3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Dynamic Latency received system 'audio speed change complete' notification from HAL on a2dpHandle %d, status %d", buf, 0xEu);
  }

  if (v8)
  {
    if (*(v8 + 705) == 1)
    {
      sub_1004D1688(a1, v8, 0, 0);
      *(v8 + 705) = 0;
      sub_1004CF0E0(a1, a2, 1);
    }

    else if (*(v8 + 710) == 1)
    {
      *(v8 + 710) = 0;
      *buf = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_1004CF890;
      v15 = &unk_100AF9CA8;
      v16 = v7;
      v17 = 1;
      sub_1004CEEC4(a1 + 108, buf);
    }

    else
    {
      sub_1004D1688(a1, v8, 0, 0);
    }
  }

  return sub_1000088CC(v11);
}

void sub_1004DED98(uint64_t a1, uint64_t a2)
{
  v3 = sub_100702ABC(a2);
  v4 = v3;
  v6 = sub_1000DAB84(v3, v5);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1004DEE24;
  v7[3] = &unk_100AEB940;
  v7[4] = a1;
  v8 = v4;
  sub_10000CA94(v6, v7);
}

uint64_t sub_1004DEE24(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, v2 + 552);
  v3 = sub_1004CEE18(v2, *(a1 + 40));
  v4 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR);
  if (v3)
  {
    if (v4)
    {
      sub_1000E5A58(v3, v9);
      sub_100839210();
    }

    v8 = 0;
    sub_1000216B4(&v8);
    v5 = sub_10023BA68((v3 + 16), 20);
    v6 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Forced disconnect with return status %{bluetooth:OI_STATUS}u", buf, 8u);
    }

    sub_10002249C(&v8);
  }

  else if (v4)
  {
    sub_10083926C();
  }

  return sub_1000088CC(v10);
}

void sub_1004DEF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1004DEFA0(uint64_t a1, uint64_t a2)
{
  if (sub_1003A42E4(a2))
  {
    v4 = sub_100702ABC(a2);
    v5 = v4;
    v7 = sub_1000DAB84(v4, v6);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1004DF08C;
    v9[3] = &unk_100AE0EF8;
    v10 = v5;
    v9[4] = a1;
    v9[5] = a2;
    sub_10000CA94(v7, v9);
  }

  else
  {
    v8 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Audio device is not valid, not handling uni to bi transition", buf, 2u);
    }
  }
}

uint64_t sub_1004DF08C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, &v2[138]);
  v3 = sub_1004CEE18(v2, *(a1 + 48));
  v4 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    *buf = 67109120;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received system 'uni to bi' notification from HAL on a2dpHandle %d", buf, 8u);
  }

  if (*(*(a1 + 40) + 728) == 5)
  {
    v6 = sub_1004D0FAC(v2, *(a1 + 48));
    v8 = sub_10000C7D0(v6, v7);
    (*(*v8 + 944))(v8, 0, 1);
    v14 = 0;
    sub_1000216B4(&v14);
    v9 = sub_1001F969C((v3 + 16));
    *buf = sub_100508ED0(*(a1 + 40) + 400);
    sub_1001F8B80(buf, 1, 0);
    v10 = sub_100022214(&v14);
    if (!v9)
    {
      v12 = sub_10000C7D0(v10, v11);
      (*(*v12 + 296))(v12, v3, 0, 1);
    }

    sub_10002249C(&v14);
  }

  else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_1008392A8();
  }

  return sub_1000088CC(v15);
}

void sub_1004DF270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14)
{
  sub_10002249C(&a13);
  sub_1000088CC(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_1004DF2AC(uint64_t a1, uint64_t a2, int a3)
{
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 552);
  v6 = sub_1004D03D4(a1, a2);
  v7 = sub_1004CEE18(a1, a2);
  if (v6 && (v8 = v7) != 0)
  {
    if (*(v6 + 705) != 1)
    {
      *(v6 + 705) = 1;
      v10 = sub_1004D14B4(v7, v7, a3);
      *(v6 + 354) = v10;
      v11 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(v6 + 182);
        *buf = 67109376;
        v24 = v10;
        v25 = 1024;
        v26 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Dynamic Latency trying to set jitter buffer to %d Current Stream state %d", buf, 0xEu);
      }

      sub_10000801C(v22);
      if (qword_100B50950 != -1)
      {
        sub_1008373EC();
      }

      v13 = sub_100331844(off_100B50948, v8, 11, *(v6 + 354), 1);
      sub_100007FB8(v22);
      if (v13)
      {
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          sub_100839388();
        }
      }

      else
      {
        if (*(v6 + 182) == 5)
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1004DF5C0;
          block[3] = &unk_100AE0EF8;
          v21 = a2;
          block[4] = a1;
          block[5] = v6;
          v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
          v15 = *(a1 + 496);
          *(a1 + 496) = v14;

          v18 = sub_1000DAB84(v16, v17);
          sub_10008E008(v18, 2000, *(a1 + 496));
          return sub_1000088CC(v22);
        }

        sub_1004DA09C(a1, v6, v8);
      }

      *(v6 + 705) = 0;
      sub_1004CF0E0(a1, v6, 0);
      return sub_1000088CC(v22);
    }

    v9 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Dynamic Latency change already in progress", buf, 2u);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100839318();
  }

  sub_1004CF0E0(a1, v6, 0);
  return sub_1000088CC(v22);
}

void sub_1004DF598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004DF5C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, &v2[138]);
  v3 = sub_1004D03D4(v2, *(a1 + 48));
  v4 = sub_1004CEE18(v2, *(a1 + 48));
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && *(v3 + 182) == 5)
  {
    v7 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Dynamic Latency did not receive Delay Report from accessory assuming audio modification is not needed", v9, 2u);
    }

    *(v3 + 705) = 0;
    sub_1004DA09C(v2, v3, v5);
    sub_1004CF0E0(v2, *(a1 + 40), 0);
  }

  return sub_1000088CC(v10);
}

void sub_1004DF6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1004DF6CC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = sub_1004D03D4(a1, a2);
  v7 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v6 + 182);
    v9 = *(v6 + 705);
    v10 = *(v6 + 354);
    v12[0] = 67109888;
    v12[1] = v8;
    v13 = 1024;
    v14 = v9;
    v15 = 1024;
    v16 = v10;
    v17 = 1024;
    v18 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adaptive Latency speed modify stream:%d, inprogress:%d, curr:%d, delay:%d", v12, 0x1Au);
  }

  if (*(v6 + 182) == 5 && (*(v6 + 705) & 1) == 0)
  {
    v11 = sub_1004D03D4(a1, a2);
    if (v11)
    {
      *(v11 + 705) = 1;
      sub_1004DA4B0(a1, v11, a3);
    }

    else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_10083940C();
    }
  }
}

uint64_t *sub_1004DF814(uint64_t a1, uint64_t a2)
{
  result = sub_1004D03D4(a1, a2);
  if (result)
  {
    return *(result + 360);
  }

  return result;
}

void sub_1004DF868(uint64_t a1, uint64_t a2, int a3)
{
  v4 = sub_1004D03D4(a1, a2);
  if (v4)
  {

    sub_1007036F8(v4, a3);
  }
}

void sub_1004DF8B0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = sub_1004D03D4(a1, a2);
  if (v4)
  {

    sub_100703708(v4, a3);
  }
}

uint64_t sub_1004DF8F8(uint64_t a1, int *a2, unsigned __int16 *a3, _WORD *a4)
{
  v4 = sub_1001FF024(a2, xmmword_1008A9BB0, &unk_100B54648, a3, a4);
  if (v4 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100839448();
  }

  return v4;
}

uint64_t sub_1004DF968(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  sub_10057C6D0(a2, 3);
  sub_10057C6D0(a2, 2);
  sub_10057C70C(a2, 102);
  sub_10057C6D0(a2, 16);
  sub_10057C6D0(a2, 2);
  sub_10057C70C(a2, 103);
  v7 = sub_100007618(0x1F4uLL, 0xA5B8AE77uLL);
  if (v7)
  {
    v8 = v7;
    __src = v7;
    v17 = 0x2000001F401F4;
    v9 = sub_1001FFC7C(&__src);
    v10 = v9;
    v11 = WORD2(v17);
    if (BYTE6(v17) == 2)
    {
      WORD1(v17) = WORD2(v17);
    }

    BYTE6(v17) = 15;
    if (v9)
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_100839484();
      }
    }

    else
    {
      if (!__src || !v17)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/a2dp/A2DPClient.cpp", 5183, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
      }

      BYTE6(v17) = 1;
      *(&v17 + 2) = v17;
      if (v11 < 0x100)
      {
        sub_10057C6D0(a2, 17);
        sub_10057C6D0(a2, v11);
      }

      else
      {
        sub_10057C6D0(a2, 145);
        sub_10057C70C(a2, v11);
      }

      sub_10057C6B8(a2, __src, v11);
      v15 = 0;
      v14 = 0;
      v13 = 0;
      if (sub_1000C0D40(*a3, &v13, &v15, &v14))
      {
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          sub_1008394C0();
        }
      }

      else
      {
        sub_10057C6D0(a2, 1);
        sub_10057C6D0(a2, 7);
        sub_10057C70C(a2, *a3);
        sub_10057C70C(a2, v13);
        sub_10057C70C(a2, v15);
        sub_10057C6D0(a2, v14);
      }

      v10 = sub_1000C0D40(*a4, &v13, &v15, &v14);
      if (v10)
      {
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          sub_1008394FC();
        }
      }

      else
      {
        sub_10057C6D0(a2, 19);
        sub_10057C6D0(a2, 7);
        sub_10057C70C(a2, *a4);
        sub_10057C70C(a2, v13);
        sub_10057C70C(a2, v15);
        sub_10057C6D0(a2, v14);
      }
    }

    sub_10000C1E8(v8);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100839538();
    }

    return 106;
  }

  return v10;
}

uint64_t sub_1004DFC48(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, _WORD *a6)
{
  v49 = a4;
  v48[0] = 0;
  v48[1] = 0;
  sub_100007F88(v48, a1 + 552);
  v47 = 0;
  v8 = sub_10000C5E0(a2 + 8) - *(a2 + 24);
  if (v8 < 1)
  {
    goto LABEL_64;
  }

  v9 = 103;
  do
  {
    v10 = sub_10057C548(a2);
    if (v10 < 0)
    {
      v11 = sub_10057C598(a2);
      v12 = -3;
    }

    else
    {
      v11 = sub_10057C548(a2);
      v12 = -2;
    }

    v13 = v10 & 0x7F;
    if (v13 <= 16)
    {
      if (v13 != 1)
      {
        if (v13 == 3)
        {
          if (v11 == 2)
          {
            sub_10057C598(a2);
            goto LABEL_53;
          }

          v31 = qword_100BCE8B8;
          if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v11;
            v20 = v31;
            v21 = "parseA2DPDescriptor Error FC_COMMON_VERSION size wrong %d";
LABEL_42:
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, v21, buf, 8u);
          }
        }

        else if (v13 == 16)
        {
          if (v11 == 2)
          {
            v9 = sub_10057C598(a2);
            goto LABEL_53;
          }

          v29 = qword_100BCE8B8;
          if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v11;
            v20 = v29;
            v21 = "parseA2DPDescriptor Error FC_A2DP_AVDTP_VERSION size wrong %d";
            goto LABEL_42;
          }
        }

        else
        {
LABEL_24:
          v19 = qword_100BCE8B8;
          if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v13;
            v20 = v19;
            v21 = "parseA2DPDescriptor Key not recognized %d";
            goto LABEL_42;
          }
        }

        goto LABEL_43;
      }

      if (v11 < 7)
      {
        v28 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v11;
          v20 = v28;
          v21 = "parseA2DPDescriptor Error FC_COMMON_L2CAP_CONFIG size wrong %d";
          goto LABEL_42;
        }

        goto LABEL_43;
      }

      v17 = sub_10057C598(a2);
      sub_10057C598(a2);
      v18 = sub_10057C598(a2);
      sub_10057C548(a2);
      *buf = 0;
      v52[0] = 0;
      sub_1000216B4(v52);
      if (sub_1000ABC7C(a4, buf) || !sub_1000B12AC(*buf))
      {
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          sub_100839574(&v45, v46);
        }
      }

      else
      {
        *(sub_1000B12AC(*buf) + 8) = v17;
        *(sub_1000B12AC(*buf) + 32) = v18;
      }

      sub_100022214(v52);
      v32 = v11 - 7;
      if (v11 == 7)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }

    if (v13 == 17)
    {
      sub_1004E02AC(a1, a2, a3, &v49, a6, v9, &v47, v11);
      goto LABEL_53;
    }

    if (v13 != 18)
    {
      if (v13 != 19)
      {
        goto LABEL_24;
      }

      if (v11 < 7)
      {
        v30 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v11;
          v20 = v30;
          v21 = "parseA2DPDescriptor Error FC_A2DP_L2CAP_MEDIA size wrong %d";
          goto LABEL_42;
        }

LABEL_43:
        sub_10057C660(a2, v11);
        goto LABEL_53;
      }

      v15 = sub_10057C598(a2);
      sub_10057C598(a2);
      v16 = sub_10057C598(a2);
      sub_10057C548(a2);
      *buf = 0;
      v52[0] = 0;
      sub_1000216B4(v52);
      if (sub_1000ABC7C(a5, buf) || !sub_1000B12AC(*buf))
      {
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          sub_100839574(&v43, v44);
        }
      }

      else
      {
        *(sub_1000B12AC(*buf) + 8) = v15;
        *(sub_1000B12AC(*buf) + 32) = v16;
      }

      sub_100022214(v52);
      v32 = v11 - 7;
      if (v11 == 7)
      {
        goto LABEL_52;
      }

LABEL_51:
      sub_10057C660(a2, v32);
LABEL_52:
      sub_10002249C(v52);
      goto LABEL_53;
    }

    v22 = sub_10057C598(a2);
    v23 = v47;
    if (v47)
    {
      v24 = v22;
      v25 = sub_10000C798(v22, v14);
      if ((*(*v25 + 760))(v25))
      {
        v26 = 5000;
      }

      else
      {
        v26 = v24;
      }

      v27 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEBUG))
      {
        if (a3)
        {
          sub_1000E5A58(a3, buf);
          v33 = buf;
          if (v51 < 0)
          {
            v33 = *buf;
          }

          *v52 = 136446466;
          v53 = v33;
          v54 = 1024;
          v55 = v26;
          _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Fast Connect: Received delay report stream request from device %{public}s, delay in 1/10th of milliseconds %d", v52, 0x12u);
          if (v51 < 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          *v52 = 136446466;
          v53 = "null";
          v54 = 1024;
          v55 = v26;
          _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Fast Connect: Received delay report stream request from device %{public}s, delay in 1/10th of milliseconds %d", v52, 0x12u);
        }
      }

      sub_10050C108(v23 + 400, 100 * v26);
    }

LABEL_53:
    LOWORD(v8) = v8 + v12 - v11;
  }

  while (v8 > 0);
  v34 = v47;
  if (v47)
  {
    v35 = sub_10050BE78(v47 + 400, v14);
    sub_1003A34D0(v34, v35);
    if (*(v34 + 704) == 1)
    {
      v37 = sub_10050BE78(v34 + 400, v36);
      sub_1007036D8(v34, v37);
    }
  }

LABEL_64:
  sub_1000088CC(v48);
  return 0;
}

void sub_1004E024C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004E02AC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, _WORD *a5, uint64_t a6, uint64_t *a7, __int16 a8)
{
  v12 = sub_10057C548(a2);
  if (v12)
  {
    if (sub_100007618(4 * v12, 0x100004052888210uLL))
    {
      *a5 = 0;
      v29 = 0;
      sub_1000216B4(&v29);
      if (!sub_1001F4454(*a4, a5))
      {
        v13 = *(a1 + 512);
        if (v13)
        {
          v14 = *a5;
          v15 = a1 + 512;
          do
          {
            v16 = *(v13 + 32);
            v17 = v16 >= v14;
            v18 = v16 < v14;
            if (v17)
            {
              v15 = v13;
            }

            v13 = *(v13 + 8 * v18);
          }

          while (v13);
          if (v15 != a1 + 512 && v14 >= *(v15 + 32))
          {
            v19 = qword_100BCE8B8;
            if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_FAULT))
            {
              sub_100837CA8(v19, v20, v21, v22, v23, v24, v25, v26);
            }
          }
        }

        __p = a5;
        sub_1003750BC(a1 + 504, a5, &unk_1008A9BD0, &__p)[5] = a3;
        operator new();
      }

      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_1008395A8();
      }

      sub_10002249C(&v29);
    }

    else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_1008396C0();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_1008396FC();
  }

  return 129;
}

uint64_t sub_1004E08E4(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, unsigned __int16 *a5, unsigned int a6)
{
  v31[0] = 0;
  v31[1] = 0;
  sub_100007F88(v31, a1 + 552);
  v12 = sub_1004D03D4(a1, a2);
  v13 = *(v12 + 182);
  v14 = sub_10050A6F0((v12 + 50));
  v15 = sub_10050DCAC(a1 + 280, v14);
  v16 = sub_10050B61C((v12 + 50), v15);
  v17 = sub_1004CEE18(a1, a2);
  *a5 = 0;
  if (v13 < 2)
  {
    if (v16)
    {
      v29 = a6;
      v19 = *(v12 + 139);
      v20 = *(v12 + 138);
      v21 = sub_100509098((v12 + 50));
      v28 = *(v21 + 32);
      v22 = sub_100509144((v12 + 50));
      v23 = *(v12 + 592);
      *a3 = v20;
      *a4 = v19;
      v24 = *(v21 + 44);
      LOBYTE(v30[0]) = 0;
      sub_1000216B4(v30);
      v25 = sub_1001FFF7C(a2, v19, v20, v28, (v24 - (v23 & (v22 ^ 1))), a5, v29);
      sub_100022214(v30);
      if (v25)
      {
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          sub_100839738();
        }
      }

      else
      {
        sub_100508F20((v12 + 50), *a5);
      }

      sub_10002249C(v30);
    }

    else
    {
      v26 = v17;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v26, v30);
        sub_1008397A8();
      }
    }

    v18 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100839804();
    }

    v18 = 1;
  }

  sub_1000088CC(v31);
  return v18;
}

void sub_1004E0B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1004E0B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    if (v9 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136446210;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fast Connect A2DP Report Connection attempt for %{public}s", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10057D9B0(a1, a2, v3);
}

void sub_1004E0C60(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v13) = a5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Fast Connect A2DP Setup Complete result %d", buf, 8u);
  }

  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, &a1[138]);
  sub_1004D03D4(a1, a3);
  if (a5)
  {
    if (qword_100B50AA0 != -1)
    {
      sub_100837C80();
    }

    v10 = sub_1000DD584(off_100B50A98, a5, 20000);
    sub_10057DA84(a1, a2, v10);
  }

  sub_10057DA84(a1, a2, 0);
}

uint64_t sub_1004E0FE4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v24 = a5;
  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, a1 + 552);
  if (a5)
  {
    sub_1004D0FAC(a1, a5);
    v12 = *(a1 + 512);
    if (v12)
    {
      v13 = a1 + 512;
      do
      {
        v14 = *(v12 + 32);
        v15 = v14 >= a5;
        v16 = v14 < a5;
        if (v15)
        {
          v13 = v12;
        }

        v12 = *(v12 + 8 * v16);
      }

      while (v12);
      if (v13 != a1 + 512 && *(v13 + 32) <= a5)
      {
        sub_100480E04(a1 + 504, &v24);
      }
    }

    v17 = *(a1 + 536);
    if (!v17)
    {
      goto LABEL_26;
    }

    v18 = a1 + 536;
    do
    {
      v19 = *(v17 + 32);
      v15 = v19 >= v24;
      v20 = v19 < v24;
      if (v15)
      {
        v18 = v17;
      }

      v17 = *(v17 + 8 * v20);
    }

    while (v17);
    if (v18 != a1 + 536 && v24 >= *(v18 + 32))
    {
      v22 = *sub_1004D0684(a1 + 528, &v24);
      if (v22)
      {
        sub_100480E04(a1 + 528, &v24);
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1004CF858;
        v25[3] = &unk_100AF9CC8;
        v25[4] = a2;
        v26 = v24;
        v27 = 0;
        sub_1004CEEC4((a1 + 432), v25);
        sub_1003A2794(v22);
      }
    }

    else
    {
LABEL_26:
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_10083991C();
      }
    }
  }

  LOBYTE(v25[0]) = 0;
  sub_1000216B4(v25);
  sub_1001FFA6C(a2 + 128, a3, a4, a6);
  sub_10002249C(v25);
  return sub_1000088CC(v23);
}

void sub_1004E11C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1004E11F0(uint64_t a1, const std::string *a2)
{
  *__p = 0u;
  v14 = 0u;
  v11 = 0u;
  *v12 = 0u;
  *v9 = 0u;
  *v10 = 0u;
  memset(v8, 0, sizeof(v8));
  sub_1004E4528(v8);
  std::string::operator=(&__p[1], a2);
  v3 = qword_100BCE8B8;
  v4 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v14 >= 0)
    {
      v6 = &__p[1];
    }

    else
    {
      v6 = __p[1];
    }

    *buf = 136315138;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Wireless Splitter submitting following error metric: fErrorCode %s", buf, 0xCu);
  }

  v7 = sub_10000F034(v4, v5);
  (*(*v7 + 176))(v7, v8);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[1]);
  }

  if (SHIBYTE(v10[0]) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_1004E1364(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a2;
  v3 = (*a1 << 40) | (a1[1] << 32) | (a1[2] << 24) | (a1[3] << 16) | (a1[4] << 8) | a1[5];
  v4 = sub_1000DAB84(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004E24F0;
  v5[3] = &unk_100AEB940;
  v5[4] = v3;
  v6 = v2;
  sub_10000CA94(v4, v5);
}

void sub_1004E1414(unsigned __int8 *a1, uint64_t a2, int a3)
{
  v4 = a2;
  v5 = (*a1 << 40) | (a1[1] << 32) | (a1[2] << 24) | (a1[3] << 16) | (a1[4] << 8) | a1[5];
  v6 = sub_1000DAB84(a1, a2);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1004E25B0;
  v7[3] = &unk_100AF9DB0;
  v7[4] = v5;
  v9 = v4;
  v8 = a3;
  sub_10000CA94(v6, v7);
}

void sub_1004E14D4(unsigned __int8 *a1, uint64_t a2, int a3)
{
  v4 = a2;
  v5 = (*a1 << 40) | (a1[1] << 32) | (a1[2] << 24) | (a1[3] << 16) | (a1[4] << 8) | a1[5];
  v6 = sub_1000DAB84(a1, a2);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1004E260C;
  v7[3] = &unk_100AF9DB0;
  v7[4] = v5;
  v9 = v4;
  v8 = a3;
  sub_10000CA94(v6, v7);
}

void sub_1004E2474(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = sub_1000DAB84(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1004E4408;
  v4[3] = &unk_100AF59D0;
  v5 = v2;
  sub_10000CA94(v3, v4);
}

uint64_t sub_1004E24F0(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1004D487C(v2, v3, v4);
}

void sub_1004E25B0(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 44);
  v5 = *(a1 + 40);

  sub_1004D4BE4(v2, v3, v4, v5);
}

uint64_t sub_1004E260C(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 44);
  v5 = *(a1 + 40);

  return sub_1004D5B68(v2, v3, v4, v5);
}

uint64_t sub_1004E2668(uint64_t a1, char a2, __int16 a3, const void *a4, unsigned int a5, char a6)
{
  *(a1 + 8) = 1;
  *a1 = off_100AF9E00;
  *(a1 + 10) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a5;
  *(a1 + 25) = a6;
  if (a4)
  {
    v10 = malloc_type_malloc(4 * a5, 0x100004052888210uLL);
    *(a1 + 16) = v10;
    memcpy(v10, a4, 4 * a5);
  }

  *(a1 + 24) = a5;
  *(a1 + 25) = a6;
  return a1;
}

void *sub_1004E2718(void *a1)
{
  *a1 = off_100AF9E00;
  v2 = a1[2];
  if (v2)
  {
    free(v2);
  }

  return a1;
}

void sub_1004E2764(void *a1)
{
  *a1 = off_100AF9E00;
  v1 = a1[2];
  if (v1)
  {
    free(v1);
  }

  operator delete();
}

uint64_t sub_1004E27D0(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);

  return sub_1004D5F00(v2, 0, v3, v4, v5, v6);
}

uint64_t sub_1004E2834(uint64_t a1, char a2, __int16 a3, char a4, const void **a5, unsigned int a6, char a7)
{
  *(a1 + 8) = 1;
  *a1 = off_100AF9E38;
  *(a1 + 10) = a2;
  *(a1 + 12) = a3;
  *(a1 + 14) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = a6;
  *(a1 + 25) = a7;
  if (a5)
  {
    LODWORD(v8) = a6;
    v10 = 16 * a6;
    v11 = malloc_type_malloc(v10, 0x105204037B82EA9uLL);
    *(a1 + 16) = v11;
    memcpy(v11, a5, v10);
    if (v8)
    {
      v12 = a5 + 1;
      v13 = 8;
      v8 = v8;
      do
      {
        v14 = *(v12 - 8);
        v15 = v14 == 7 || v14 == 4;
        if (v15 && *v12 && *(v12 - 5))
        {
          *(*(a1 + 16) + v13) = malloc_type_malloc(*(v12 - 5), 0x100004077774924uLL);
          memcpy(*(*(a1 + 16) + v13), *v12, *(v12 - 5));
        }

        v12 += 2;
        v13 += 16;
        --v8;
      }

      while (v8);
    }
  }

  return a1;
}

void sub_1004E2954(uint64_t a1)
{
  sub_1004E29F4(a1);

  operator delete();
}

uint64_t sub_1004E298C(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 12);
  v4 = *(a1 + 14);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);

  return sub_1004D6368(v2, 0, v3, v4, v5, v6, v7);
}

uint64_t sub_1004E29F4(uint64_t a1)
{
  *a1 = off_100AF9E38;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    if (*(a1 + 24))
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 == 7 || v7 == 4)
        {
          v9 = v6 + v4;
          v10 = *(v9 + 8);
          if (v10)
          {
            if (*(v9 + 3))
            {
              free(v10);
              v3 = *(a1 + 24);
            }
          }
        }

        ++v5;
        v4 += 16;
      }

      while (v5 < v3);
      v2 = *(a1 + 16);
    }

    free(v2);
  }

  return a1;
}

uint64_t sub_1004E2A9C(uint64_t a1, char a2, __int16 a3, char a4, char a5, __int16 a6, const void **a7, unsigned int a8)
{
  *(a1 + 8) = 1;
  *a1 = off_100AF9E70;
  *(a1 + 10) = a2;
  *(a1 + 12) = a3;
  *(a1 + 14) = a4;
  *(a1 + 15) = a5;
  *(a1 + 16) = a6;
  *(a1 + 24) = 0;
  *(a1 + 32) = a8;
  if (a7)
  {
    LODWORD(v9) = a8;
    v11 = 16 * a8;
    v12 = malloc_type_malloc(v11, 0x105204037B82EA9uLL);
    *(a1 + 24) = v12;
    memcpy(v12, a7, v11);
    if (v9)
    {
      v13 = a7 + 1;
      v14 = 8;
      v9 = v9;
      do
      {
        v15 = *(v13 - 8);
        v16 = v15 == 7 || v15 == 4;
        if (v16 && *v13 && *(v13 - 5))
        {
          *(*(a1 + 24) + v14) = malloc_type_malloc(*(v13 - 5), 0x100004077774924uLL);
          memcpy(*(*(a1 + 24) + v14), *v13, *(v13 - 5));
        }

        v13 += 2;
        v14 += 16;
        --v9;
      }

      while (v9);
    }
  }

  return a1;
}

void sub_1004E2BC0(uint64_t a1)
{
  sub_1004E2C64(a1);

  operator delete();
}

uint64_t sub_1004E2BF8(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 10);
  v4 = *(a1 + 12);
  v5 = *(a1 + 14);
  v6 = *(a1 + 15);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);

  return sub_1004D69D0(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1004E2C64(uint64_t a1)
{
  *a1 = off_100AF9E70;
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    if (*(a1 + 32))
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = *(a1 + 24);
        v7 = *(v6 + v4);
        if (v7 == 7 || v7 == 4)
        {
          v9 = v6 + v4;
          v10 = *(v9 + 8);
          if (v10)
          {
            if (*(v9 + 3))
            {
              free(v10);
              v3 = *(a1 + 32);
            }
          }
        }

        ++v5;
        v4 += 16;
      }

      while (v5 < v3);
      v2 = *(a1 + 24);
    }

    free(v2);
  }

  return a1;
}

uint64_t sub_1004E2D24(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 12);
  v4 = *(a1 + 15);

  return sub_1004D6D40(v2, 0, v3, 0, v4);
}

uint64_t sub_1004E2D84(uint64_t a1, char a2, __int16 a3, const void **a4, unsigned int a5, char a6)
{
  *(a1 + 8) = 1;
  *a1 = off_100AF9EE0;
  *(a1 + 10) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a5;
  *(a1 + 25) = a6;
  if (a4)
  {
    LODWORD(v7) = a5;
    v9 = 16 * a5;
    v10 = malloc_type_malloc(v9, 0x105204037B82EA9uLL);
    *(a1 + 16) = v10;
    memcpy(v10, a4, v9);
    if (v7)
    {
      v11 = a4 + 1;
      v12 = 8;
      v7 = v7;
      do
      {
        v13 = *(v11 - 8);
        v14 = v13 == 7 || v13 == 4;
        if (v14 && *v11 && *(v11 - 5))
        {
          *(*(a1 + 16) + v12) = malloc_type_malloc(*(v11 - 5), 0x100004077774924uLL);
          memcpy(*(*(a1 + 16) + v12), *v11, *(v11 - 5));
        }

        v11 += 2;
        v12 += 16;
        --v7;
      }

      while (v7);
    }
  }

  return a1;
}

void sub_1004E2EA0(uint64_t a1)
{
  sub_1004E2F38(a1);

  operator delete();
}

uint64_t sub_1004E2ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v5 = qword_100B50AD8;
  v6 = *(a1 + 12);
  v7 = *(a1 + 25);

  return sub_1004D70B8(v5, 0, v6, a4, 0, v7);
}

uint64_t sub_1004E2F38(uint64_t a1)
{
  *a1 = off_100AF9EE0;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    if (*(a1 + 24))
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 == 7 || v7 == 4)
        {
          v9 = v6 + v4;
          v10 = *(v9 + 8);
          if (v10)
          {
            if (*(v9 + 3))
            {
              free(v10);
              v3 = *(a1 + 24);
            }
          }
        }

        ++v5;
        v4 += 16;
      }

      while (v5 < v3);
      v2 = *(a1 + 16);
    }

    free(v2);
  }

  return a1;
}

uint64_t sub_1004E2FF8(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 12);
  v4 = *(a1 + 14);
  v5 = *(a1 + 16);

  return sub_1004D7618(v2, 0, v3, v4, v5);
}

uint64_t sub_1004E3070(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 10);
  v4 = *(a1 + 12);

  return sub_1004D73E4(v2, v3, v4);
}

uint64_t sub_1004E30E0(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 10);
  v4 = *(a1 + 12);

  return sub_1004D9464(v2, v3, v4);
}

uint64_t sub_1004E3150(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;

  return sub_1004D9664(v2);
}

uint64_t sub_1004E31A0(uint64_t a1, char a2, const void *a3, unsigned int a4)
{
  *(a1 + 8) = 1;
  *a1 = off_100AF9FF8;
  *(a1 + 10) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a4;
  if (a3 && a4)
  {
    v6 = 2 * a4;
    v7 = malloc_type_malloc(v6, 0x1000040BDFB0063uLL);
    *(a1 + 16) = v7;
    memcpy(v7, a3, v6);
  }

  return a1;
}

void *sub_1004E3234(void *a1)
{
  *a1 = off_100AF9FF8;
  v2 = a1[2];
  if (v2)
  {
    free(v2);
  }

  return a1;
}

void sub_1004E3280(void *a1)
{
  *a1 = off_100AF9FF8;
  v1 = a1[2];
  if (v1)
  {
    free(v1);
  }

  operator delete();
}

uint64_t sub_1004E32EC(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 10);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);

  return sub_1004D80FC(v2, v3, v4, v5);
}

uint64_t sub_1004E3348(uint64_t a1, char a2, const void *a3, unsigned int a4, __int16 a5, char a6)
{
  *(a1 + 8) = 1;
  *a1 = off_100AFA030;
  *(a1 + 10) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a4;
  *(a1 + 26) = a5;
  *(a1 + 28) = a6;
  if (a3 && a4)
  {
    v8 = 2 * a4;
    v9 = malloc_type_malloc(v8, 0x1000040BDFB0063uLL);
    *(a1 + 16) = v9;
    memcpy(v9, a3, v8);
  }

  return a1;
}

void *sub_1004E33E4(void *a1)
{
  *a1 = off_100AFA030;
  v2 = a1[2];
  if (v2)
  {
    free(v2);
  }

  return a1;
}

void sub_1004E3430(void *a1)
{
  *a1 = off_100AFA030;
  v1 = a1[2];
  if (v1)
  {
    free(v1);
  }

  operator delete();
}

uint64_t sub_1004E349C(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 28);

  return sub_1004D852C(v2, 0, v3, v4, 0, v5);
}

uint64_t sub_1004E3500(uint64_t a1, char a2, const void *a3, unsigned int a4)
{
  *(a1 + 8) = 1;
  *a1 = off_100AFA068;
  *(a1 + 10) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a4;
  if (a3 && a4)
  {
    v6 = 2 * a4;
    v7 = malloc_type_malloc(v6, 0x1000040BDFB0063uLL);
    *(a1 + 16) = v7;
    memcpy(v7, a3, v6);
  }

  return a1;
}

void *sub_1004E3594(void *a1)
{
  *a1 = off_100AFA068;
  v2 = a1[2];
  if (v2)
  {
    free(v2);
  }

  return a1;
}

void sub_1004E35E0(void *a1)
{
  *a1 = off_100AFA068;
  v1 = a1[2];
  if (v1)
  {
    free(v1);
  }

  operator delete();
}

uint64_t sub_1004E364C(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 10);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);

  return sub_1004D8924(v2, v3, v4, v5);
}

uint64_t sub_1004E36A8(uint64_t a1, char a2, const void *a3, unsigned int a4, __int16 a5, char a6)
{
  *(a1 + 8) = 1;
  *a1 = off_100AFA0A0;
  *(a1 + 10) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a4;
  *(a1 + 26) = a5;
  *(a1 + 28) = a6;
  if (a3 && a4)
  {
    v8 = 2 * a4;
    v9 = malloc_type_malloc(v8, 0x1000040BDFB0063uLL);
    *(a1 + 16) = v9;
    memcpy(v9, a3, v8);
  }

  return a1;
}

void *sub_1004E3744(void *a1)
{
  *a1 = off_100AFA0A0;
  v2 = a1[2];
  if (v2)
  {
    free(v2);
  }

  return a1;
}

void sub_1004E3790(void *a1)
{
  *a1 = off_100AFA0A0;
  v1 = a1[2];
  if (v1)
  {
    free(v1);
  }

  operator delete();
}

uint64_t sub_1004E37FC(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 28);

  return sub_1004D8BC8(v2, 0, v3, v4, 0, v5);
}

uint64_t sub_1004E3860(uint64_t a1, char a2, const void *a3, unsigned int a4, __int16 a5, char a6)
{
  *(a1 + 8) = 1;
  *a1 = off_100AFA0D8;
  *(a1 + 10) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a4;
  *(a1 + 26) = a5;
  *(a1 + 28) = a6;
  if (a3 && a4)
  {
    v8 = 2 * a4;
    v9 = malloc_type_malloc(v8, 0x1000040BDFB0063uLL);
    *(a1 + 16) = v9;
    memcpy(v9, a3, v8);
  }

  return a1;
}

void *sub_1004E38FC(void *a1)
{
  *a1 = off_100AFA0D8;
  v2 = a1[2];
  if (v2)
  {
    free(v2);
  }

  return a1;
}

void sub_1004E3948(void *a1)
{
  *a1 = off_100AFA0D8;
  v1 = a1[2];
  if (v1)
  {
    free(v1);
  }

  operator delete();
}

uint64_t sub_1004E39B4(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 28);

  return sub_1004D8FAC(v2, 0, v3, v4, 0, v5);
}

uint64_t sub_1004E3A18(uint64_t a1, char a2, __int16 a3, const void **a4, unsigned int a5)
{
  *(a1 + 8) = 1;
  *a1 = off_100AFA110;
  *(a1 + 10) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a5;
  if (a4)
  {
    LODWORD(v6) = a5;
    v8 = 16 * a5;
    v9 = malloc_type_malloc(v8, 0x105204037B82EA9uLL);
    *(a1 + 16) = v9;
    memcpy(v9, a4, v8);
    if (v6)
    {
      v10 = a4 + 1;
      v11 = 8;
      v6 = v6;
      do
      {
        v12 = *(v10 - 8);
        v13 = v12 == 7 || v12 == 4;
        if (v13 && *v10 && *(v10 - 5))
        {
          *(*(a1 + 16) + v11) = malloc_type_malloc(*(v10 - 5), 0x100004077774924uLL);
          memcpy(*(*(a1 + 16) + v11), *v10, *(v10 - 5));
        }

        v10 += 2;
        v11 += 16;
        --v6;
      }

      while (v6);
    }
  }

  return a1;
}

void sub_1004E3B30(uint64_t a1)
{
  sub_1004E3BC4(a1);

  operator delete();
}

uint64_t sub_1004E3B68(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 10);
  v4 = *(a1 + 12);

  return sub_1004D9194(v2, v3, v4);
}

uint64_t sub_1004E3BC4(uint64_t a1)
{
  *a1 = off_100AFA110;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    if (*(a1 + 24))
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 == 7 || v7 == 4)
        {
          v9 = v6 + v4;
          v10 = *(v9 + 8);
          if (v10)
          {
            if (*(v9 + 3))
            {
              free(v10);
              v3 = *(a1 + 24);
            }
          }
        }

        ++v5;
        v4 += 16;
      }

      while (v5 < v3);
      v2 = *(a1 + 16);
    }

    free(v2);
  }

  return a1;
}

uint64_t sub_1004E3C84(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 12);

  return sub_1004D938C(v2, 0, v3);
}

uint64_t sub_1004E3CE4(uint64_t a1, char a2, __int16 a3, const void *a4, size_t size)
{
  *(a1 + 8) = 1;
  *a1 = off_100AFA180;
  *(a1 + 10) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = size;
  if (a4 && size)
  {
    v7 = size;
    v8 = malloc_type_malloc(size, 0x100004077774924uLL);
    *(a1 + 16) = v8;
    memcpy(v8, a4, v7);
  }

  return a1;
}

void *sub_1004E3D7C(void *a1)
{
  *a1 = off_100AFA180;
  v2 = a1[2];
  if (v2)
  {
    free(v2);
  }

  return a1;
}

void sub_1004E3DC8(void *a1)
{
  *a1 = off_100AFA180;
  v1 = a1[2];
  if (v1)
  {
    free(v1);
  }

  operator delete();
}

uint64_t sub_1004E3E34(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 10);
  v4 = *(a1 + 12);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);

  return sub_1004D7F3C(v2, v3, v4, v5, v6);
}

uint64_t sub_1004E3E94(uint64_t a1, char a2, __int16 a3, const void *a4, size_t size, char a6)
{
  *(a1 + 8) = 1;
  *a1 = off_100AFA1B8;
  *(a1 + 10) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = size;
  *(a1 + 26) = a6;
  if (a4 && size)
  {
    v8 = size;
    v9 = malloc_type_malloc(size, 0x100004077774924uLL);
    *(a1 + 16) = v9;
    memcpy(v9, a4, v8);
  }

  return a1;
}

void *sub_1004E3F30(void *a1)
{
  *a1 = off_100AFA1B8;
  v2 = a1[2];
  if (v2)
  {
    free(v2);
  }

  return a1;
}

void sub_1004E3F7C(void *a1)
{
  *a1 = off_100AFA1B8;
  v1 = a1[2];
  if (v1)
  {
    free(v1);
  }

  operator delete();
}

uint64_t sub_1004E3FE8(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 12);

  return sub_1004D8024(v2, 0, v3);
}

uint64_t sub_1004E4060(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 10);
  v4 = *(a1 + 12);

  return sub_1004D96EC(v2, v3, v4);
}

uint64_t sub_1004E40D0(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 12);

  return sub_1004D98D4(v2, 0, v3);
}

uint64_t sub_1004E412C(uint64_t a1, char a2, __int16 a3, char a4, const void **a5, unsigned int a6, char a7)
{
  *(a1 + 8) = 1;
  *a1 = off_100AFA260;
  *(a1 + 10) = a2;
  *(a1 + 12) = a3;
  *(a1 + 14) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = a6;
  *(a1 + 25) = a7;
  if (a5)
  {
    LODWORD(v8) = a6;
    v10 = 16 * a6;
    v11 = malloc_type_malloc(v10, 0x105204037B82EA9uLL);
    *(a1 + 16) = v11;
    memcpy(v11, a5, v10);
    if (v8)
    {
      v12 = a5 + 1;
      v13 = 8;
      v8 = v8;
      do
      {
        v14 = *(v12 - 8);
        v15 = v14 == 7 || v14 == 4;
        if (v15 && *v12 && *(v12 - 5))
        {
          *(*(a1 + 16) + v13) = malloc_type_malloc(*(v12 - 5), 0x100004077774924uLL);
          memcpy(*(*(a1 + 16) + v13), *v12, *(v12 - 5));
        }

        v12 += 2;
        v13 += 16;
        --v8;
      }

      while (v8);
    }
  }

  return a1;
}

void sub_1004E424C(uint64_t a1)
{
  sub_1004E42EC(a1);

  operator delete();
}

uint64_t sub_1004E4284(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 12);
  v4 = *(a1 + 14);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);

  return sub_1004D99F4(v2, 0, v3, v4, v5, v6, v7);
}

uint64_t sub_1004E42EC(uint64_t a1)
{
  *a1 = off_100AFA260;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    if (*(a1 + 24))
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 == 7 || v7 == 4)
        {
          v9 = v6 + v4;
          v10 = *(v9 + 8);
          if (v10)
          {
            if (*(v9 + 3))
            {
              free(v10);
              v3 = *(a1 + 24);
            }
          }
        }

        ++v5;
        v4 += 16;
      }

      while (v5 < v3);
      v2 = *(a1 + 16);
    }

    free(v2);
  }

  return a1;
}

uint64_t sub_1004E43AC(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 12);
  v4 = *(a1 + 10);
  v5 = *(a1 + 14);

  return sub_1004D9D98(v2, v3, v4, v5);
}

void sub_1004E4408(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);

  sub_1004DA7C8(v2, v3);
}

_BYTE *sub_1004E445C(uint64_t a1)
{
  v7 = 0;
  v6 = 0;
  v5 = 0;
  sub_1000216B4(&v5);
  v2 = sub_10023DC00(*(a1 + 32), &v6);
  sub_100022214(&v5);
  if (v2)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_1008399A4();
    }
  }

  else
  {
    if (qword_100B50AE0 != -1)
    {
      sub_1008399E0();
    }

    sub_1004DA620(qword_100B50AD8, *(a1 + 48), v3, *(a1 + 52), *(a1 + 56), *(a1 + 40));
  }

  return sub_10002249C(&v5);
}

uint64_t sub_1004E4528(uint64_t a1)
{
  *(a1 + 60) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  sub_100007E30((a1 + 80), "");
  sub_100007E30((a1 + 104), "");
  sub_100007E30((a1 + 128), "");
  sub_100007E30((a1 + 152), "");
  return a1;
}

void sub_1004E4598(_Unwind_Exception *exception_object)
{
  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004E45E4(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  return a1;
}

uint64_t sub_1004E4C74(uint64_t result, int a2, float a3)
{
  *result = a3;
  *(result + 4) = a2;
  *(result + 8) = 2082;
  return result;
}

uint64_t sub_1004E4C88(uint64_t a1)
{
  v2 = a1 + 24;
  *a1 = off_100AFA470;
  *(a1 + 8) = off_100AFA4C8;
  *(a1 + 16) = off_100AFA4F0;
  *(a1 + 24) = &off_100AFA520;
  *(a1 + 32) = 0;
  sub_100044BBC((a1 + 40));
  *(a1 + 240) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 256) = a1 + 264;
  *(a1 + 288) = 0;
  *(a1 + 232) = a1 + 240;
  *(a1 + 280) = a1 + 288;
  *(a1 + 296) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 384) = a1 + 392;
  *(a1 + 312) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 408) = a1 + 416;
  *(a1 + 432) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 480) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 512) = a1 + 520;
  *(a1 + 544) = 0u;
  *(a1 + 536) = a1 + 544;
  v16 = xmmword_1008A4BC0;
  v17 = 0;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C((a1 + 232), &v18, &v18);
  v16 = xmmword_1008A4B48;
  v17 = 0;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C((a1 + 232), &v18, &v18);
  v16 = xmmword_1008A4B5C;
  v17 = 0;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C((a1 + 232), &v18, &v18);
  v16 = xmmword_1008A4D28;
  v17 = 0;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C((a1 + 232), &v18, &v18);
  v16 = xmmword_1008A4D14;
  v17 = 0;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C((a1 + 232), &v18, &v18);
  v16 = xmmword_1008A4CEC;
  v17 = 0;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C((a1 + 232), &v18, &v18);
  v16 = xmmword_1008A4D50;
  v17 = 0;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C((a1 + 232), &v18, &v18);
  v16 = xmmword_1008A4D64;
  v17 = -805294830;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C((a1 + 232), &v18, &v18);
  v16 = xmmword_1008A4D78;
  v17 = -587704915;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C((a1 + 232), &v18, &v18);
  v16 = xmmword_1008A4D8C;
  v17 = -1765695659;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C((a1 + 232), &v18, &v18);
  v16 = xmmword_1008A4DA0;
  v17 = -601477452;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C((a1 + 232), &v18, &v18);
  v16 = xmmword_1008A4EA8;
  v17 = 1880579407;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C((a1 + 232), &v18, &v18);
  v16 = xmmword_1008A4DB4;
  v17 = -1171415960;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C((a1 + 232), &v18, &v18);
  v16 = xmmword_1008A4EE4;
  v17 = -815610143;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C((a1 + 232), &v18, &v18);
  v16 = xmmword_1008A4EF8;
  v17 = 1323364242;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C((a1 + 232), &v18, &v18);
  v16 = xmmword_1008A4F0C;
  v17 = 0;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C((a1 + 232), &v18, &v18);
  v16 = xmmword_1008A4D3C;
  v17 = 0;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C((a1 + 232), &v18, &v18);
  v16 = xmmword_1008A4E18;
  v17 = 0;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C((a1 + 232), &v18, &v18);
  v16 = xmmword_1008A4E40;
  v17 = 1729713604;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C((a1 + 232), &v18, &v18);
  v16 = xmmword_1008A4F34;
  v17 = 0;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C((a1 + 232), &v18, &v18);
  v16 = xmmword_1008A4F5C;
  v17 = -1079296166;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C((a1 + 232), &v18, &v18);
  v16 = xmmword_1008A4E94;
  v17 = -2130188885;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C((a1 + 232), &v18, &v18);
  v16 = xmmword_1008A4E04;
  v17 = 0;
  sub_10000D03C(&v18, &v16);
  *&v16 = &v18;
  v3 = sub_1004F27E4((a1 + 280), &v18, &unk_1008A9BD0, &v16);
  v14 = xmmword_1008A4EBC;
  v15 = 295542594;
  sub_10000D03C(&v16, &v14);
  sub_100051F7C((v3 + 56), &v16, &v16);
  v16 = xmmword_1008A4E04;
  v17 = 0;
  sub_10000D03C(&v18, &v16);
  *&v16 = &v18;
  v4 = sub_1004F27E4((a1 + 280), &v18, &unk_1008A9BD0, &v16);
  v14 = xmmword_1008A4ED0;
  v15 = 312319810;
  sub_10000D03C(&v16, &v14);
  sub_100051F7C((v4 + 56), &v16, &v16);
  v5 = sub_100017E6C();
  sub_1004F0F04(v5 + 224, v2);
  v6 = sub_100017E6C();
  (*(*v6 + 24))(v6, a1 + 304);
  v7 = +[NSMutableSet set];
  v8 = *(a1 + 488);
  *(a1 + 488) = v7;

  v9 = +[NSMutableSet set];
  v10 = *(a1 + 496);
  *(a1 + 496) = v9;

  v11 = [[NSMapTable alloc] initWithKeyOptions:0x10000 valueOptions:256 capacity:0];
  v12 = *(a1 + 504);
  *(a1 + 504) = v11;

  return a1;
}

void sub_1004E5428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10000CEDC(v18 + 296, *(v12 + 544));
  sub_1004F2784(v18 + 272, *(v12 + 520));

  sub_1004F26D8(v17);
  sub_10008E0A0(a10, *(v12 + 416));
  sub_10000CEDC(a11, *(v12 + 392));
  v20 = *(v12 + 360);
  if (v20)
  {
    *(v12 + 368) = v20;
    operator delete(v20);
  }

  v21 = *(v18 + 96);
  if (v21)
  {
    *(v12 + 344) = v21;
    operator delete(v21);
  }

  if (*(v12 + 327) < 0)
  {
    operator delete(*(v18 + 64));
  }

  sub_1004F2678(v15, *v16);
  sub_10000CEDC(a12, *v13);
  sub_10000CEDC(v14, *v18);
  sub_10007A068(v12 + 40);
  _Unwind_Resume(a1);
}

void sub_1004E5554(void *a1)
{
  v9 = 0;
  v1 = sub_10000E92C();
  sub_100007E30(buf, "GATT");
  sub_100007E30(__p, "DUMMY_DIS");
  v2 = (*(*v1 + 72))(v1, buf, __p, &v9);
  v3 = v9;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v2 & v3;
  if (SHIBYTE(v13) < 0)
  {
    operator delete(*buf);
  }

  v5 = qword_100BCE910;
  v6 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Warning: Creating Dumy DIS entry, with dummy data", buf, 2u);
    }

    operator new();
  }

  if (v6)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Creating real DIS entry", buf, 2u);
  }

  memset(buf, 0, sizeof(buf));
  v13 = 0;
  v8 = sub_10000C798(v6, v7);
  (**v8)(v8, buf);
  operator new();
}

void sub_1004E6B50(void *a1, uint64_t a2)
{
  v5 = a1[18];
  v4 = a1[19];
  if (v5 >= v4)
  {
    v7 = a1[17];
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_1000C7698();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      sub_100008108((a1 + 17), v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = 8 * v8 + 8;
    v13 = a1[17];
    v14 = a1[18] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = a1[17];
    a1[17] = v15;
    a1[18] = v6;
    a1[19] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  a1[18] = v6;
}

void sub_1004E6C1C(void *a1)
{
  if (qword_100B50F78 != -1)
  {
    sub_100839C78();
  }

  sub_100580E68(qword_100B50F70, a1);
  if (qword_100B508C0 != -1)
  {
    sub_100839C8C();
  }

  sub_1007BF384(off_100B508B8, (a1 + 1));
  if (qword_100B50AA0 != -1)
  {
    sub_100839CA0();
  }

  sub_100312650(off_100B50A98 + 64, (a1 + 2));
  operator new();
}