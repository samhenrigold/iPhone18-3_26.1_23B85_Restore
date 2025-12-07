uint64_t sub_1006BB29C(uint64_t a1, __IOHIDDevice *a2)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 32);
  if (a2)
  {
    v4 = IOHIDDeviceGetProperty(a2, @"LocationID");
    v5 = *(a1 + 104);
    v6 = (a1 + 112);
    if (v5 == v6)
    {
LABEL_10:
      v11 = 0;
    }

    else
    {
      while (1)
      {
        v7 = *(v5 + 10);
        if (v7 == [v4 intValue])
        {
          break;
        }

        v8 = v5[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v5[2];
            v10 = *v9 == v5;
            v5 = v9;
          }

          while (!v10);
        }

        v5 = v9;
        if (v9 == v6)
        {
          goto LABEL_10;
        }
      }

      v12 = qword_100BCE9F0;
      if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000DEEA4(v5[4], __p);
        v13 = v19;
        v14 = __p[0];
        v15 = [v4 intValue];
        v16 = __p;
        if (v13 < 0)
        {
          v16 = v14;
        }

        *buf = 136315394;
        v22 = v16;
        v23 = 1024;
        v24 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found HID device %s with location ID %d", buf, 0x12u);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v11 = v5[4];
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1000088CC(v20);
  return v11;
}

void sub_1006BB444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a16);
  _Unwind_Resume(a1);
}

void sub_1006BB488(uint64_t a1)
{
  if (qword_100B50AC0 != -1)
  {
    sub_100860EA0();
  }

  v2 = *(a1 + 32);
  memset(&__p, 0, sizeof(__p));
  sub_10059234C(off_100B50AB8, v2, 32, &__p, 2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1006BB4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006BB518(uint64_t a1, unint64_t a2)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 32);
  if (a2)
  {
    v6 = *(a1 + 112);
    v5 = (a1 + 112);
    v4 = v6;
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = (v5 - 1);
    v8 = v5;
    do
    {
      v9 = *(v4 + 32);
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v8 = v4;
      }

      v4 = *(v4 + 8 * v11);
    }

    while (v4);
    if (v8 != v5 && v8[4] <= a2)
    {
      v13 = qword_100BCE9F0;
      if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000DEEA4(a2, __p);
        v14 = v17 >= 0 ? __p : __p[0];
        *buf = 136315138;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Removing HID device %s from map", buf, 0xCu);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_10002717C(v7, v8);
      operator delete(v8);
    }

    else
    {
LABEL_10:
      v12 = qword_100BCE9F0;
      if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
      {
        sub_1000DEEA4(a2, __p);
        sub_10085CD80(__p, buf, v12);
      }
    }
  }

  return sub_1000088CC(v18);
}

void sub_1006BB6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1006BB6C8(uint64_t a1, uint64_t a2, __IOHIDDevice *a3)
{
  v6 = qword_100BCE9F0;
  if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = os_variant_is_recovery();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "handleIncomingUSBDevice called isBaseSystem %d", buf, 8u);
  }

  if (!a2 || !a3)
  {
    v7 = qword_100BCE9F0;
LABEL_12:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 128);
      *buf = 134218496;
      *&buf[4] = a2;
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 1024;
      v55 = v12;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Sony Pairing: Invalid context (%p) / device (%p) / enabled (%d)\n", buf, 0x1Cu);
    }

    return;
  }

  v7 = qword_100BCE9F0;
  if ((*(a1 + 128) & 1) == 0)
  {
    goto LABEL_12;
  }

  if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Found Sony Device", buf, 2u);
  }

  v46 = 0;
  v45 = 0;
  bytes = 0uLL;
  if (IOHIDDeviceOpen(a3, 0))
  {
    if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
    {
      sub_100860EB4();
    }

    return;
  }

  *report = 0;
  v51 = 0;
  v52 = 0;
  pReportLength = 20;
  if (sub_1006BD118(a3) >= 2)
  {
    v8 = 9;
  }

  else
  {
    v8 = 18;
  }

  if (IOHIDDeviceGetReport(a3, kIOHIDReportTypeFeature, v8, report, &pReportLength))
  {
    v9 = os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      sub_100860EF0();
    }

    v11 = sub_100017F4C(v9, v10);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1006BCB28;
    v32[3] = &unk_100ADF8F8;
    v32[4] = a1;
    sub_10008E008(v11, 5000, v32);
    return;
  }

  __dst = 0;
  v42 = 0;
  v43 = 0;
  if (pReportLength >= 0x14)
  {
    v13 = 20;
  }

  else
  {
    v13 = pReportLength;
  }

  memcpy(&__dst, report, v13);
  v39 = *(&__dst + 1);
  v40 = *(&__dst + 5);
  v14 = &v45;
  for (i = 5; i != -1; --i)
  {
    *v14 = *(&v39 + i);
    v14 = (v14 + 1);
  }

  v16 = qword_100BCE9F0;
  if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Successfully got device report", buf, 2u);
  }

  if (v45 | v46)
  {
    v37 = v45;
    v38 = v46;
    v17 = qword_100BCE9F0;
    v18 = os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      sub_1000BE6F8(&v37, buf);
      v19 = (buf[23] & 0x80u) == 0 ? buf : *buf;
      v48.n128_u32[0] = 136446210;
      *(v48.n128_u64 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "BT ADDR %{public}s", &v48, 0xCu);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    v20 = sub_1006BBF1C(v18, &v45);
    if (v20)
    {
      sub_1006BC04C(a1, a3, v20);
      if (sub_1006BC30C(a1, a3))
      {
        if (sub_1000C0348(v20))
        {
          if (qword_100B50AC0 != -1)
          {
            sub_100860E78();
          }

          v36[0] = _NSConcreteStackBlock;
          v36[1] = 3221225472;
          v36[2] = sub_1006BC52C;
          v36[3] = &unk_100ADF8F8;
          v36[4] = v20;
          sub_100592E70(off_100B50AB8, v36);
        }

        v20[1360] = 1;
        return;
      }

      v21 = qword_100BCE9F0;
      if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Did not find existing link key. Must generate new one", buf, 2u);
      }
    }

    v22 = CCRandomGenerateBytes(&bytes, 0x10uLL);
    v23 = qword_100BCE9F0;
    if (v22)
    {
      if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
      {
        sub_10085CF28();
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Successfully generated Link Key preparing it to send to device", buf, 2u);
      }

      if (sub_1006BC584(a1, a3, &bytes))
      {
        v24 = qword_100BCE9F0;
        if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
        {
          sub_100860F64(&v37, v24);
        }
      }

      else
      {
        v48 = 0uLL;
        v49 = 0;
        sub_1006D1BB0(&v48, &bytes, 5u);
        if (!v20)
        {
          if (qword_100B508F0 != -1)
          {
            sub_10086101C();
          }

          v20 = sub_1000E6554(off_100B508E8, &v37, 1);
        }

        memset(buf, 0, sizeof(buf));
        sub_1006BC904(a3, buf);
        v47 = 0;
        sub_100016250(&v47);
        *&v35 = v47;
        *(&v35 + 1) = SWORD2(v47);
        sub_100538494(v20, buf, &v35);
        v20[583] = 1;
        sub_100548A1C(v20, 1);
        v25 = BYTE1(v42);
        v26 = v42;
        v27 = HIBYTE(__dst);
        valuePtr = 0;
        LODWORD(v35) = 0;
        LODWORD(v47) = 0;
        Property = IOHIDDeviceGetProperty(a3, @"ProductID");
        v29 = IOHIDDeviceGetProperty(a3, @"VendorID");
        v30 = IOHIDDeviceGetProperty(a3, @"VersionNumber");
        if (Property)
        {
          CFNumberGetValue(Property, kCFNumberIntType, &valuePtr);
        }

        if (v29)
        {
          CFNumberGetValue(v29, kCFNumberIntType, &v47);
        }

        if (v30)
        {
          CFNumberGetValue(v30, kCFNumberIntType, &v35);
        }

        if (qword_100B508F0 != -1)
        {
          sub_10086101C();
        }

        sub_10056B7FC(off_100B508E8, v20, (v25 << 16) | (v26 << 8) | v27);
        if (qword_100B508F0 != -1)
        {
          sub_10086101C();
        }

        v31 = (*(*off_100B508E8 + 48))(off_100B508E8, v20, 1);
        sub_1006BC964(v31, v20, &v48);
        if (sub_1000C0348(v20))
        {
          if (qword_100B50AC0 != -1)
          {
            sub_100860E78();
          }

          v33[0] = _NSConcreteStackBlock;
          v33[1] = 3221225472;
          v33[2] = sub_1006BCAD0;
          v33[3] = &unk_100ADF8F8;
          v33[4] = v20;
          sub_100592E70(off_100B50AB8, v33);
        }

        v20[1360] = 1;
        sub_10053D890(v20, 2, v47, valuePtr, v35);
        sub_1006BC04C(a1, a3, v20);
        if (qword_100B50F88 != -1)
        {
          sub_100861044();
        }

        sub_1006E1E34(off_100B50F80, v20);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        nullsub_21();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
  {
    sub_10085D038();
  }
}

uint64_t sub_1006BBF1C(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v15 = 0;
  v16 = 0;
  if (qword_100B512E8 != -1)
  {
    sub_10086106C();
  }

  v3 = sub_10009DF08(off_100B512E0, &__p);
  v4 = __p;
  if (v3 || __p == v15)
  {
LABEL_4:
    v5 = 0;
  }

  else
  {
    v7 = __p;
    while (1)
    {
      v5 = *v7;
      v12 = *(*v7 + 128);
      v8 = *(v5 + 132);
      v13 = *(v5 + 132);
      if (v12 == *a2 && v8 == *(a2 + 4))
      {
        break;
      }

      v7 += 8;
      if (v7 == v15)
      {
        goto LABEL_4;
      }
    }

    v10 = qword_100BCE9F0;
    if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device Already paired", v11, 2u);
      v4 = __p;
    }
  }

  if (v4)
  {
    v15 = v4;
    operator delete(v4);
  }

  return v5;
}

void sub_1006BC030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006BC04C(uint64_t a1, __IOHIDDevice *a2, unint64_t a3)
{
  v28[1] = 0;
  v29 = a3;
  v28[0] = 0;
  sub_100007F88(v28, a1 + 32);
  if (a2 && a3)
  {
    v6 = IOHIDDeviceGetProperty(a2, @"LocationID");
    if (v6)
    {
      v9 = *(a1 + 112);
      v8 = a1 + 112;
      v7 = v9;
      if (!v9)
      {
        goto LABEL_12;
      }

      v10 = v8;
      do
      {
        v11 = *(v7 + 32);
        v12 = v11 >= a3;
        v13 = v11 < a3;
        if (v12)
        {
          v10 = v7;
        }

        v7 = *(v7 + 8 * v13);
      }

      while (v7);
      if (v10 != v8 && *(v10 + 32) <= a3)
      {
        v20 = qword_100BCE9F0;
        if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
        {
          sub_1000DEEA4(a3, __p);
          v22 = v27;
          v23 = __p[0];
          v24 = [v6 intValue];
          v25 = __p;
          if (v22 < 0)
          {
            v25 = v23;
          }

          *buf = 136315394;
          v31 = v25;
          v32 = 1024;
          v33 = v24;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Already have a USB HID device %s with location ID %d", buf, 0x12u);
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      else
      {
LABEL_12:
        v14 = qword_100BCE9F0;
        if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000DEEA4(a3, __p);
          v15 = v27;
          v16 = __p[0];
          v17 = [v6 intValue];
          v18 = __p;
          if (v15 < 0)
          {
            v18 = v16;
          }

          *buf = 136315394;
          v31 = v18;
          v32 = 1024;
          v33 = v17;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Adding HID device %s with location ID %d", buf, 0x12u);
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v19 = [v6 intValue];
        __p[0] = &v29;
        *(sub_1005C468C(v8 - 8, &v29, &unk_1008A9BD0, __p) + 10) = v19;
      }
    }

    else if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
    {
      sub_10085D088();
    }
  }

  return sub_1000088CC(v28);
}

void sub_1006BC2C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1006BC30C(uint64_t a1, __IOHIDDevice *a2)
{
  v4 = qword_100BCE9F0;
  if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 134217984;
    *&__p[4] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Seeing if paired device Link Key already exists for iohid ref %p", __p, 0xCu);
  }

  v5 = sub_1006BB29C(a1, a2);
  if (v5)
  {
    v14 = 0uLL;
    v15 = 0;
    sub_1006D1B74(&v14);
    if (qword_100B512E8 != -1)
    {
      sub_100861080();
    }

    if (sub_1006E7E2C(off_100B512E0, v5, &v14))
    {
      goto LABEL_7;
    }

    v7 = qword_100BCE9F0;
    if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(v5, __p);
      if (v11 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = *__p;
      }

      *buf = 136315138;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Preparing to send existing Link Key to %s", buf, 0xCu);
      if (v11 < 0)
      {
        operator delete(*__p);
      }
    }

    nullsub_21();
    if (sub_1006BC584(a1, a2, v9))
    {
      if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
      {
        sub_10085D0EC();
      }

LABEL_7:
      nullsub_21();
      return 0;
    }

    nullsub_21();
  }

  else if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
  {
    sub_10085D128();
  }

  return 1;
}

uint64_t sub_1006BC52C(uint64_t a1)
{
  if (qword_100B50AC0 != -1)
  {
    sub_100860EA0();
  }

  v2 = off_100B50AB8;
  v3 = *(a1 + 32);

  return sub_100593A4C(v2, v3, -1);
}

uint64_t sub_1006BC584(uint64_t a1, __IOHIDDevice *a2, _OWORD *a3)
{
  v5 = a1 + 97;
  v29 = *(a1 + 97);
  v30 = *(a1 + 101);
  v28 = 0;
  v27 = 0;
  v6 = &v27;
  for (i = 5; i != -1; --i)
  {
    *v6 = *(&v29 + i);
    v6 = (v6 + 1);
  }

  v25 = v27;
  v26 = v28;
  v8 = qword_100BCE9F0;
  if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8(&v25, __p);
    v9 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
    buf[0] = 136446210;
    *&buf[1] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sendLinkKeyToDevice HOST BT ADDR %{public}s", buf, 0xCu);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(&buf[5] + 3) = 0;
  if (sub_1006BD118(a2) >= 2)
  {
    v10 = 10;
  }

  else
  {
    v10 = 19;
  }

  LOBYTE(buf[0]) = v10;
  *(buf + 1) = v25;
  *(&buf[1] + 1) = v26;
  *(&buf[1] + 3) = *a3;
  if (sub_1006BD118(a2) >= 2)
  {
    v11 = 10;
  }

  else
  {
    v11 = 19;
  }

  v12 = IOHIDDeviceSetReport(a2, kIOHIDReportTypeFeature, v11, buf, 27);
  if (v12)
  {
    v13 = v12;
    if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
    {
      sub_1008610A8();
    }
  }

  else
  {
    *report = 0;
    v33 = 0;
    v34 = 0;
    pReportLength = 20;
    if (sub_1006BD118(a2) >= 2)
    {
      v15 = 9;
    }

    else
    {
      v15 = 18;
    }

    if (!IOHIDDeviceGetReport(a2, kIOHIDReportTypeFeature, v15, report, &pReportLength) || ((memset(__p, 0, 20), pReportLength >= 0x14) ? (v16 = 20) : (v16 = pReportLength), (memcpy(__p, report, v16), v22 = *(&__p[1] + 2), v23 = HIWORD(__p[1]), *(&__p[1] + 2) == *v5) ? (v17 = HIWORD(__p[1]) == *(v5 + 4)) : (v17 = 0), v17))
    {
      v18 = qword_100BCE9F0;
      if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Successfully resent Link Key to paired device", __p, 2u);
      }

      memset(__p + 2, 0, 46);
      if (sub_1006BD118(a2) >= 2)
      {
        v19 = 8;
      }

      else
      {
        v19 = 20;
      }

      LOBYTE(__p[0]) = v19;
      BYTE1(__p[0]) = 2;
      if (sub_1006BD118(a2) >= 2)
      {
        v20 = 8;
      }

      else
      {
        v20 = 20;
      }

      v13 = IOHIDDeviceSetReport(a2, kIOHIDReportTypeFeature, v20, __p, 48);
      v21 = qword_100BCE9F0;
      if (v13)
      {
        if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
        {
          sub_100861194();
        }
      }

      else if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Successfully to command teardown BT Link to paired device", &v22, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
      {
        sub_10086111C();
      }

      return 0;
    }
  }

  return v13;
}

void *sub_1006BC904@<X0>(__IOHIDDevice *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_1006BD118(a1);
  v4 = "DUALSHOCK 4 Wireless Controller";
  if (v3 == 3)
  {
    v4 = "DualSense Edge Wireless Controller";
  }

  if (v3 == 2)
  {
    v5 = "DualSense Wireless Controller";
  }

  else
  {
    v5 = v4;
  }

  return sub_100007E30(a2, v5);
}

void sub_1006BC964(uint64_t a1, unsigned __int8 *a2, __n128 *a3)
{
  v5 = qword_100BCE9F0;
  if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting To Pair device", __p, 2u);
  }

  if (qword_100B512E8 != -1)
  {
    sub_100861080();
  }

  v6 = sub_1006E7F2C(off_100B512E0, a2, a3, 1);
  v7 = qword_100BCE9F0;
  if (v6)
  {
    if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_ERROR))
    {
      sub_10085D27C();
    }
  }

  else if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8(a2 + 128, __p);
    if (v10 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 136446210;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SUCCESSFULLY PAIRED ADDR: %{public}s", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_1006BCAD0(uint64_t a1)
{
  if (qword_100B50AC0 != -1)
  {
    sub_100860EA0();
  }

  v2 = off_100B50AB8;
  v3 = *(a1 + 32);

  return sub_100593A4C(v2, v3, -1);
}

void sub_1006BCB30(uint64_t a1, int a2)
{
  v4 = qword_100BCE9F0;
  if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "virtual void BT::SonyGamepadPairingManager::gameControllerUSBBTPairingChanged(BOOL)";
    v7 = 1024;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: GC USB Bluetooth Pairing changed to %d", &v5, 0x12u);
  }

  *(a1 + 128) = a2;
}

void sub_1006BCC00(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = *(a1 + 16);
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    if (v4 == v5)
    {
      (***(a1 + 32))(*(a1 + 32), a1);
    }

    v7 = a2;
    sub_1006BCCCC((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1006BCCCC(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_1006BCE68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006BCEA0(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 16) = &v5[v6];
    sub_1000C8CF0((a1 + 8));
    if (*(a1 + 8) == *(a1 + 16))
    {
      (*(**(a1 + 32) + 8))(*(a1 + 32), a1);
    }
  }

LABEL_10:

  os_unfair_lock_unlock(a1);
}

void sub_1006BCF78(uint64_t a1)
{
  v2 = qword_100BCE9F0;
  if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sony USB Device Matched, handleIncomingUSBDevice", v3, 2u);
  }

  if (qword_100B54CB0 != -1)
  {
    sub_100861208();
  }

  sub_1006BB6C8(off_100B54CA8, *(a1 + 32), *(a1 + 40));
  CFRelease(*(a1 + 40));
}

void sub_1006BD07C(uint64_t a1)
{
  v2 = qword_100BCE9F0;
  if (os_log_type_enabled(qword_100BCE9F0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sony USB Device Removed", v4, 2u);
  }

  if (qword_100B54CB0 != -1)
  {
    sub_100861208();
  }

  sub_1006BB0F0(off_100B54CA8, v3, *(a1 + 40));
  CFRelease(*(a1 + 40));
}

const __CFNumber *sub_1006BD118(__IOHIDDevice *a1)
{
  result = IOHIDDeviceGetProperty(a1, @"ProductID");
  if (result)
  {
    valuePtr = 0;
    CFNumberGetValue(result, kCFNumberIntType, &valuePtr);
    if (valuePtr == 3570)
    {
      v2 = 3;
    }

    else
    {
      v2 = 1;
    }

    if (valuePtr == 3302)
    {
      return 2;
    }

    else
    {
      return v2;
    }
  }

  return result;
}

uint64_t sub_1006BD378(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  free(*(a1 + 24));
  return a1;
}

uint64_t sub_1006BD3D0(uint64_t a1)
{
  v2 = sub_10032F49C(a1, 7);
  v2->__sig = off_100B075E0;
  sub_100044BBC(v2 + 4);
  *(a1 + 320) = 0;
  return a1;
}

uint64_t sub_1006BD43C(void *a1)
{
  *a1 = off_100B075E0;
  sub_10007A068((a1 + 32));

  return sub_10032F580(a1);
}

void sub_1006BD494(void *a1)
{
  *a1 = off_100B075E0;
  sub_10007A068((a1 + 32));
  sub_10032F580(a1);

  operator delete();
}

BOOL sub_1006BD500()
{
  v3 = off_100B07680;
  v2 = 0;
  sub_1000216B4(&v2);
  v0 = sub_10022B4F0(0, sub_1006BDBA8, sub_1006BDD48, sub_1006BDDE0, &off_100B07640, &v3, 0, 9, 15) != 0;
  sub_10002249C(&v2);
  return v0;
}

uint64_t sub_1006BD5BC(int a1, int a2, int a3, int a4, void *__src, size_t __n, __int16 a7, __int16 a8, uint64_t a9, __int16 a10)
{
  __dst = 0uLL;
  v32 = 0;
  v16 = __n;
  if (__n >= 0x17)
  {
    operator new();
  }

  HIBYTE(v32) = __n;
  if (__n)
  {
    memcpy(&__dst, __src, __n);
  }

  *(&__dst + v16) = 0;
  if (qword_100B54920 != -1)
  {
    sub_100861230();
  }

  v17 = off_100B54918;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3321888768;
  v20[2] = sub_1006BFD24;
  v20[3] = &unk_100B076C0;
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v18 = SHIBYTE(v32);
  if (SHIBYTE(v32) < 0)
  {
    sub_100008904(__p, __dst, *(&__dst + 1));
  }

  else
  {
    *__p = __dst;
    v22 = v32;
  }

  v28 = a7;
  v29 = a8;
  v23 = a9;
  v30 = a10;
  sub_1005897E0(v17, v20);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
    if ((v18 & 0x80000000) == 0)
    {
      return 0;
    }

LABEL_15:
    operator delete(__dst);
    return 0;
  }

  if (v18 < 0)
  {
    goto LABEL_15;
  }

  return 0;
}

uint64_t sub_1006BD7A4(int a1, int a2, uint64_t *a3, int a4, __int16 a5, __int16 a6, __int16 a7, char a8, uint64_t a9, __int16 a10)
{
  v17 = *a3;
  if (qword_100B54920 != -1)
  {
    sub_100861230();
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1006BFD94;
  v19[3] = &unk_100B02E90;
  v28 = a8;
  v24 = a7;
  v20 = a1;
  v21 = a2;
  v22 = v17;
  v23 = a4;
  v25 = a5;
  v26 = a6;
  v19[4] = a9;
  v27 = a10;
  sub_1005897E0(off_100B54918, v19);
  return 0;
}

uint64_t sub_1006BD8A4(int a1, int a2, int a3, uint64_t *a4, int a5, uint64_t a6, __int16 a7)
{
  v13 = *a4;
  if (qword_100B54920 != -1)
  {
    sub_100861230();
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1006BFEB4;
  v15[3] = &unk_100AFDDF8;
  v16 = a1;
  v17 = a2;
  v18 = v13;
  v19 = a5;
  v20 = a3;
  v15[4] = a6;
  v21 = a7;
  sub_1005897E0(off_100B54918, v15);
  return 0;
}

void sub_1006BD980(uint64_t a1, __int16 a2, int a3)
{
  if (qword_100B54920 != -1)
  {
    sub_100861230();
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006BFF18;
  v6[3] = &unk_100AF9DB0;
  v6[4] = a1;
  v8 = a2;
  v7 = a3;
  sub_1005897E0(off_100B54918, v6);
}

uint64_t sub_1006BDA30(uint64_t a1, unsigned int a2, uint64_t a3, char a4, __int16 a5)
{
  if ((a4 & 4) != 0)
  {
    v9 = ((a2 / 681.0) * 3.75);
    v10 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v16 = v9;
      v17 = 1024;
      v18 = a2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set delay in SRM enabled:%d ms, maxRead:%d bytes", buf, 0xEu);
    }
  }

  else
  {
    v9 = 0;
  }

  if (qword_100B54920 != -1)
  {
    sub_100861244();
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1006BFF70;
  v12[3] = &unk_100AE0880;
  v13 = a2;
  v12[4] = a1;
  v12[5] = a3;
  v14 = a5;
  sub_1006C2520(off_100B54918, v9, v12);
  return 0;
}

void sub_1006BDBA8(int *a1, char a2, const void *a3, unsigned int a4, __int16 a5)
{
  v17 = *a1;
  v18 = *(a1 + 2);
  v15 = 0;
  v16 = 0;
  sub_10000C704(&v15, a3, a4);
  if (qword_100B54920 != -1)
  {
    sub_100861244();
  }

  v7 = off_100B54918;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3321888768;
  v8[2] = sub_1006BFC18;
  v8[3] = &unk_100B07690;
  v12 = v17;
  v13 = v18;
  v14 = a2;
  v9 = &off_100AE0A78;
  v10 = v16;
  if (v16)
  {
    sub_10000C69C(v16);
  }

  v11 = a5;
  sub_1005897E0(v7, v8);
  v9 = &off_100AE0A78;
  if (v10)
  {
    sub_10000C808(v10);
  }

  v15 = &off_100AE0A78;
  if (v16)
  {
    sub_10000C808(v16);
  }
}

void sub_1006BDCF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v15 - 56) = &off_100AE0A78;
  v17 = *(v15 - 48);
  if (v17)
  {
    sub_10000C808(v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006BDD48(__int16 a1)
{
  if (qword_100B54920 != -1)
  {
    sub_100861230();
  }

  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1006BFC78;
  v2[3] = &unk_100AF59D0;
  v3 = a1;
  sub_1005897E0(off_100B54918, v2);
}

void sub_1006BDDE0(__int16 a1, int a2, int a3)
{
  if (qword_100B54920 != -1)
  {
    sub_100861230();
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006BFCCC;
  v6[3] = &unk_100AEB940;
  v9 = a1;
  v7 = a2;
  v8 = a3;
  sub_1005897E0(off_100B54918, v6);
}

BOOL sub_1006BDE8C()
{
  v2 = 0;
  sub_1000216B4(&v2);
  v0 = sub_10022BDE4() != 0;
  sub_10002249C(&v2);
  return v0;
}

BOOL sub_1006BDEE8(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 256);
  v4 = *(a1 + 320);
  if (v4 && *v4 == a2)
  {
    v6 = *(v4 + 8);
    sub_10000801C(v9);
    v8 = 0;
    sub_1000216B4(&v8);
    v5 = sub_10022C8C4(v6) != 0;
    sub_10002249C(&v8);
  }

  else
  {
    v5 = 1;
  }

  sub_1000088CC(v9);
  return v5;
}

void sub_1006BDF7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14)
{
  sub_10002249C(&a13);
  sub_1000088CC(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_1006BDFA4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 256);
  v6 = *(a1 + 320);
  if (v6 && *v6 == a2)
  {
    v10 = 0;
    sub_1000216B4(&v10);
    v8 = sub_1001C3310(*(v6 + 8), a3);
    sub_10002249C(&v10);
    if (v8)
    {
      v7 = 312;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 312;
  }

  sub_1000088CC(v11);
  return v7;
}

void sub_1006BE044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14)
{
  sub_10002249C(&a13);
  sub_1000088CC(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_1006BE068(uint64_t a1, int a2, unsigned int a3)
{
  if (a2 == 1)
  {
    if (a3)
    {
      return 0;
    }

    else
    {
      return 10;
    }
  }

  else if (a2 || a3 >= 6)
  {
    return 0;
  }

  else
  {
    return dword_1008C4D00[a3];
  }
}

_BYTE *sub_1006BE0A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (qword_100B508F0 != -1)
  {
    sub_10086126C();
  }

  LODWORD(v29) = *a2;
  WORD2(v29) = *(a2 + 4);
  v10 = sub_1000E6554(off_100B508E8, &v29, 1);
  v26[0] = 0;
  v26[1] = 0;
  sub_1006A5878(v26, v10);
  v11 = sub_1006A587C(v26, 6, 0x64u);
  v12 = sub_10057DFAC(a1, v10);
  v25 = 0;
  sub_1000216B4(&v25);
  if ((a3 & v12) == 1)
  {
    v13 = sub_10000C5F8(a4);
    v14 = sub_10000C5E0(a4);
    v15 = sub_10022C138(a5, v13, v14, "0000");
    v12 = 1;
  }

  else
  {
    v37 = 0;
    v36 = 0u;
    memset(v35, 0, sizeof(v35));
    v33 = 0u;
    *v34 = 0u;
    v31 = 0u;
    *v32 = 0u;
    v29 = 0u;
    *v30 = 0u;
    sub_1000DE474(&v29 + 1);
    BYTE2(v30[0]) = 0;
    BYTE4(v30[0]) = 0;
    BYTE2(v32[0]) = 0;
    BYTE4(v32[0]) = 0;
    DWORD1(v35[1]) = 0;
    v31 = 0uLL;
    v30[1] = 0;
    LOBYTE(v32[0]) = 0;
    v33 = 0uLL;
    v32[1] = 0;
    LOBYTE(v34[0]) = 0;
    memset(v35, 0, 19);
    v34[1] = 0;
    BYTE8(v35[1]) = 1;
    *(&v35[1] + 14) = 0;
    *(&v35[1] + 9) = 0;
    v36 = 0uLL;
    *(&v35[2] + 1) = 0;
    LOBYTE(v37) = 0;
    *(&v37 + 2) = 0;
    sub_100536A18(v10, &v29);
    v24 = 0;
    v16 = sub_10000E92C();
    sub_100007E30(v22, "PBAP");
    sub_100007E30(__p, "BypassRCP");
    (*(*v16 + 72))(v16, v22, __p, &v24);
    if (v28 < 0)
    {
      operator delete(*__p);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    if (BYTE11(v36) & 1) != 0 || (sub_100540D38(v10) & 1) != 0 || (v24)
    {
      v17 = 0;
    }

    else
    {
      v20 = qword_100BCE978;
      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v10, v22);
        v21 = v23 >= 0 ? v22 : v22[0];
        *__p = 136446210;
        *&__p[4] = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Phonebook connection to device %{public}s is unauthorized as user has not yet responded to Rental Car Privacy dialog", __p, 0xCu);
        if (v23 < 0)
        {
          operator delete(v22[0]);
        }
      }

      v12 = 0;
      *(v10 + 1388) = 1;
      v17 = 1742;
    }

    v15 = sub_10022BFA4(a5, v11, v12, v17);
    if (SHIBYTE(v35[0]) < 0)
    {
      operator delete(v34[1]);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32[1]);
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30[1]);
    }

    nullsub_21();
  }

  sub_100022214(&v25);
  if (v15)
  {
    v18 = 0;
  }

  else
  {
    v18 = v12;
  }

  if (v18 == 1)
  {
    sub_10057D9B0(a1, v10, 1);
  }

  if ((sub_10053F074(v10) & 1) == 0)
  {
    sub_10054097C(v10);
    sub_10057E984(a1, v10, 303, 0);
  }

  return sub_10002249C(&v25);
}

void sub_1006BE4E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  sub_100320BE8(&a28);
  sub_10002249C(&a18);
  _Unwind_Resume(a1);
}

_BYTE *sub_1006BE560(uint64_t a1, int a2)
{
  v7 = 0;
  sub_1000216B4(&v7);
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 256);
  v4 = *(a1 + 320);
  if (v4 && *(v4 + 8) == a2)
  {
    sub_1006BD378(v4);
    operator delete();
  }

  sub_1000088CC(v6);
  return sub_10002249C(&v7);
}

void sub_1006BE614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  sub_10002249C((v3 - 17));
  _Unwind_Resume(a1);
}

_BYTE *sub_1006BE638(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v5 = *(a1 + 320);
  if (v5 && *(v5 + 8) == a2)
  {
    v8 = *v5;
    v30[0] = 0;
    v30[1] = 0;
    v9 = sub_1006A5878(v30, v8);
    v10 = sub_1006BE068(v9, a3, a4);
    v11 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      v12 = "Invalid";
      v13 = "Sim";
      if (a3 != 1)
      {
        v13 = "Invalid";
      }

      if (a3)
      {
        v14 = v13;
      }

      else
      {
        v14 = "Local";
      }

      if (a4 <= 5)
      {
        v12 = off_100B07768[a4];
      }

      sub_1000E5A58(v8, &__p);
      if (v34 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 136315650;
      *&buf[4] = v14;
      v36 = 2080;
      v37 = v12;
      v38 = 2082;
      v39 = p_p;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received 'get size' request for '%s'/'%s' from device %{public}s", buf, 0x20u);
      if (v34 < 0)
      {
        operator delete(__p);
      }
    }

    v16 = sub_1006A587C(v30, v10, 0x64u);
    v17 = sub_1006A6064(v30, v10);
    v19 = v18;
    v20 = sub_1006A6104(v30, v10);
    v22 = v21;
    v23 = sub_1006A6188(v30, v21);
    v25 = v24;
    v26 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v8, buf);
      v27 = buf;
      if (v38 < 0)
      {
        v27 = *buf;
      }

      LODWORD(__p) = 67109378;
      HIDWORD(__p) = v16;
      v32 = 2082;
      v33 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Sending response (%u entries) to device %{public}s", &__p, 0x12u);
      if (SHIBYTE(v38) < 0)
      {
        operator delete(*buf);
      }
    }

    v28 = 0;
  }

  else
  {
    v25 = 0;
    v23 = 0;
    v22 = 0;
    v20 = 0;
    v19 = 0;
    v17 = 0;
    LOWORD(v16) = 0;
    v28 = 1715;
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  sub_10022C1F8(a2, v16, v17, v19, v20, v22, v23, v25, v28);
  return sub_10002249C(buf);
}

void sub_1006BE8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_1006BE910(uint64_t a1, int a2, unsigned int a3, unsigned int a4, unsigned int a5, __int128 *a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unsigned __int16), unsigned __int16 a10)
{
  v10 = *(a1 + 320);
  if (!v10)
  {
    v20 = 0;
    v21 = 0;
LABEL_7:
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 1715;
    goto LABEL_8;
  }

  if (*(v10 + 8) != a10)
  {
    v20 = 0;
    v21 = 0;
    v10 = 0;
    goto LABEL_7;
  }

  v18 = *v10;
  v62[0] = 0;
  v62[1] = 0;
  v56 = v18;
  v19 = sub_1006A5878(v62, v18);
  v57 = sub_1006BE068(v19, a2, a3);
  if (a4 > 2)
  {
    v55 = 0;
  }

  else
  {
    v55 = dword_1008C4D18[a4];
  }

  v27 = *(a6 + 23);
  if (v27 >= 0)
  {
    v28 = *(a6 + 23);
  }

  else
  {
    v28 = *(a6 + 1);
  }

  v29 = qword_100BCE978;
  v30 = os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT);
  if (!v28)
  {
    if (v30)
    {
      v38 = "Invalid";
      v39 = "Sim";
      if (a2 != 1)
      {
        v39 = "Invalid";
      }

      if (a2)
      {
        v40 = v39;
      }

      else
      {
        v40 = "Local";
      }

      if (a3 <= 5)
      {
        v38 = off_100B07768[a3];
      }

      sub_1000E5A58(v56, v72);
      if (v75 >= 0)
      {
        v41 = v72;
      }

      else
      {
        v41 = *v72;
      }

      *buf = 67110146;
      *&buf[4] = a8;
      *&buf[8] = 1024;
      *&buf[10] = a7;
      *v64 = 2080;
      *&v64[2] = v40;
      *v65 = 2080;
      *&v65[2] = v38;
      v66 = 2082;
      v67 = v41;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Received 'list' request (offset = %u, count = %u) for '%s'/'%s' from device %{public}s", buf, 0x2Cu);
      if (v75 < 0)
      {
        operator delete(*v72);
      }
    }

    v37 = v57;
    v42 = sub_1006A5A08(v62, v57, v55, a8, a7, 0x64u, 0);
    v43 = v42;
    if (v42)
    {
      v25 = 0;
    }

    else
    {
      v25 = 1715;
    }

    if (v42)
    {
LABEL_68:
      operator new();
    }

    goto LABEL_52;
  }

  if (v30)
  {
    v31 = "Invalid";
    v32 = "Invalid";
    if (a5 <= 2)
    {
      v32 = off_100B07750[a5];
    }

    v54 = v32;
    v33 = *a6;
    if (v27 >= 0)
    {
      v33 = a6;
    }

    v53 = v33;
    v34 = "Sim";
    if (a2 != 1)
    {
      v34 = "Invalid";
    }

    if (a2)
    {
      v35 = v34;
    }

    else
    {
      v35 = "Local";
    }

    if (a3 <= 5)
    {
      v31 = off_100B07768[a3];
    }

    sub_1000E5A58(v56, v72);
    if (v75 >= 0)
    {
      v36 = v72;
    }

    else
    {
      v36 = *v72;
    }

    *buf = 136316674;
    *&buf[4] = v54;
    *&buf[12] = 2080;
    *v64 = v53;
    *&v64[8] = 1024;
    *v65 = a8;
    *&v65[4] = 1024;
    *&v65[6] = a7;
    v66 = 2080;
    v67 = v35;
    v68 = 2080;
    v69 = v31;
    v70 = 2082;
    v71 = v36;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Received 'search' request (%s ~= %s, offset = %u, count = %u) in '%s'/'%s' from device %{public}s", buf, 0x40u);
    if (v75 < 0)
    {
      operator delete(*v72);
    }
  }

  if (a5 == 1)
  {
    v37 = v57;
    if (*(a6 + 23) < 0)
    {
      sub_100008904(&v58, *a6, *(a6 + 1));
    }

    else
    {
      v58 = *a6;
      v59 = *(a6 + 2);
    }

    v43 = sub_1006A5EE8(v62, v57, &v58, v55, a8, a7, 0);
    if ((SHIBYTE(v59) & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    p_dst = &v58;
    goto LABEL_62;
  }

  v37 = v57;
  if (a5)
  {
    v43 = 0;
    v44 = 0;
    v45 = 1743;
    goto LABEL_64;
  }

  if (*(a6 + 23) < 0)
  {
    sub_100008904(&__dst, *a6, *(a6 + 1));
  }

  else
  {
    __dst = *a6;
    v61 = *(a6 + 2);
  }

  v43 = sub_1006A5DE8(v62, v57, &__dst, v55, a8, a7);
  if (SHIBYTE(v61) < 0)
  {
    p_dst = &__dst;
LABEL_62:
    operator delete(*p_dst);
  }

LABEL_63:
  v45 = 0;
  v44 = 1;
LABEL_64:
  if ((v44 & (v43 == 0)) != 0)
  {
    v25 = 1724;
  }

  else
  {
    v25 = v45;
  }

  if (v43)
  {
    goto LABEL_68;
  }

LABEL_52:
  v24 = sub_1006A6064(v62, v37);
  v23 = v47;
  v22 = sub_1006A6104(v62, v37);
  v10 = v48;
  v21 = sub_1006A6188(v62, v48);
  v20 = v49;
  v50 = qword_100BCE978;
  if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
  {
    if (v43)
    {
      LODWORD(v43) = sub_1006A633C(v43);
    }

    sub_1000E5A58(v56, buf);
    v52 = buf;
    if (v64[9] < 0)
    {
      v52 = *buf;
    }

    *v72 = 67109378;
    *&v72[4] = v43;
    v73 = 2082;
    v74 = v52;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Building response (%u entries) for device %{public}s", v72, 0x12u);
    if ((v64[9] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

LABEL_8:
  buf[0] = 0;
  sub_1000216B4(buf);
  a9(0, v24, v23, v22, v10, v21, v20, v25, a10);
  return sub_10002249C(buf);
}

void sub_1006BEEF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1006BEF54(uint64_t a1, int a2, unsigned int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unsigned __int16), unsigned __int16 a9)
{
  v9 = *(a1 + 320);
  if (!v9)
  {
    goto LABEL_30;
  }

  if (*(v9 + 8) != a9)
  {
    v9 = 0;
LABEL_30:
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    goto LABEL_31;
  }

  v16 = *v9;
  v44[0] = 0;
  v44[1] = 0;
  v42 = v16;
  v17 = sub_1006A5878(v44, v16);
  v41 = sub_1006BE068(v17, a2, a3);
  if (a5 == 1)
  {
    v18 = 135;
  }

  else
  {
    v18 = 133;
  }

  v19 = v18 | HIDWORD(a4);
  if (a4)
  {
    v20 = v19;
  }

  else
  {
    v20 = -1;
  }

  v21 = qword_100BCE978;
  if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
  {
    v22 = "Invalid";
    v23 = "Sim";
    if (a2 != 1)
    {
      v23 = "Invalid";
    }

    if (a2)
    {
      v24 = v23;
    }

    else
    {
      v24 = "Local";
    }

    if (a3 <= 5)
    {
      v22 = off_100B07768[a3];
    }

    sub_1000E5A58(v42, &__p);
    if (v48 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 67110402;
    *&buf[4] = a7;
    v50 = 1024;
    v51 = a6;
    v52 = 1024;
    v53 = v20;
    v54 = 2080;
    v55 = v24;
    v56 = 2080;
    v57 = v22;
    v58 = 2082;
    v59 = p_p;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received 'open' request (offset = %u, count = %u, attributes = %x) for '%s'/'%s' from device %{public}s", buf, 0x32u);
    if (v48 < 0)
    {
      operator delete(__p);
    }
  }

  if (a3 - 5 >= 0xFFFFFFFC && (v20 & 8) != 0)
  {
    v26 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Ignoring request for contact photos for call history", buf, 2u);
    }
  }

  sub_1000C23E0(v42, buf);
  if (!std::string::compare(buf, "HandsFreeLink"))
  {
    v33 = sub_10053A438(v42);
    if (SBYTE1(v55) < 0)
    {
      operator delete(*buf);
    }

    if ((v33 & 1) == 0)
    {
      v34 = qword_100BCE978;
      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Workaround: disabling contact photos for this device", buf, 2u);
      }
    }
  }

  else if (SBYTE1(v55) < 0)
  {
    operator delete(*buf);
  }

  v35 = sub_1006A5A08(v44, v41, 2, a7, a6, 0x64u, 0);
  if (v35)
  {
    operator new();
  }

  v31 = sub_1006A6064(v44, v41);
  v30 = v36;
  v29 = sub_1006A6104(v44, v41);
  v28 = v37;
  v27 = sub_1006A6188(v44, v37);
  v9 = v38;
  v39 = qword_100BCE978;
  if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v42, buf);
    v40 = buf;
    if (SBYTE1(v55) < 0)
    {
      v40 = *buf;
    }

    LODWORD(__p) = 67109378;
    HIDWORD(__p) = v35;
    v46 = 2082;
    v47 = v40;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Building response (%u entries) for device %{public}s", &__p, 0x12u);
    if (SBYTE1(v55) < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_31:
  buf[0] = 0;
  sub_1000216B4(buf);
  a8(0, v31, v30, v29, v28, v27, v9, 1715, a9);
  return sub_10002249C(buf);
}

void sub_1006BF3FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1006BF444(uint64_t a1, int a2, unsigned int a3, uint64_t a4, int a5, int a6, void (*a7)(uint64_t, void, void, void, void, uint64_t, uint64_t, uint64_t, __int16), int a8)
{
  v8 = a8;
  v10 = *(a1 + 320);
  if (v10 && *(v10 + 8) == a8)
  {
    v16 = *v10;
    v37[0] = 0;
    v37[1] = 0;
    v36 = v16;
    v17 = sub_1006A5878(v37, v16);
    v35 = sub_1006BE068(v17, a2, a3);
    if (a5 == 1)
    {
      v18 = 135;
    }

    else
    {
      v18 = 133;
    }

    v19 = v18 | HIDWORD(a4);
    if (a4)
    {
      v20 = v19;
    }

    else
    {
      v20 = -1;
    }

    v21 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      v22 = "Invalid";
      v23 = "Sim";
      if (a2 != 1)
      {
        v23 = "Invalid";
      }

      if (a2)
      {
        v24 = v23;
      }

      else
      {
        v24 = "Local";
      }

      if (a3 <= 5)
      {
        v22 = off_100B07768[a3];
      }

      sub_1000E5A58(v36, &__p);
      if (v41 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 67110146;
      *&buf[4] = a6;
      v43 = 1024;
      v44 = v20;
      v45 = 2080;
      v46 = v24;
      v47 = 2080;
      v48 = v22;
      v49 = 2082;
      v50 = p_p;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received 'open card' request (uid = %u, attributes = %x) for '%s'/'%s' from device %{public}s", buf, 0x2Cu);
      if (v41 < 0)
      {
        operator delete(__p);
      }
    }

    v27 = sub_1006A5C5C(v37, v35, a6);
    if (v27)
    {
      operator new();
    }

    v30 = 1724;
    v29 = sub_1006A6188(v37, v26);
    v28 = v32;
    v33 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v36, buf);
      if (SHIBYTE(v46) >= 0)
      {
        v34 = buf;
      }

      else
      {
        v34 = *buf;
      }

      LODWORD(__p) = 67109378;
      HIDWORD(__p) = v27;
      v39 = 2082;
      v40 = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Building response (%u entries) for device %{public}s", &__p, 0x12u);
      if (SHIBYTE(v46) < 0)
      {
        operator delete(*buf);
      }
    }
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v30 = 1715;
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  a7(0, 0, 0, 0, 0, v29, v28, v30, v8);
  return sub_10002249C(buf);
}

void sub_1006BF7CC(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 320);
  if (v3 && *(v3 + 8) == a3)
  {
    v5 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(*v3, __p);
      v6 = v11 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received 'close' request from device %{public}s", buf, 0xCu);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = *(v3 + 16);
    if (v7 == a2)
    {
      v8 = qword_100BCE978;
      if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(*v3, __p);
        if (v11 >= 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        *buf = 136446210;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Closing response for device %{public}s", buf, 0xCu);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        v7 = *(v3 + 16);
      }

      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      *(v3 + 16) = 0;
    }
  }
}

_BYTE *sub_1006BF97C(uint64_t a1, uint64_t a2, unsigned int a3, void (*a4)(uint64_t, void *, void, uint64_t, uint64_t), uint64_t a5)
{
  v7 = *(a1 + 320);
  if (v7 && *(v7 + 8) == a5)
  {
    v21 = 0;
    v9 = *v7;
    v10 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_INFO))
    {
      sub_1000E5A58(v9, &__p);
      v11 = SBYTE3(v30) >= 0 ? &__p : __p;
      *buf = 67109378;
      *&buf[4] = a3;
      v23 = 2082;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Received 'read' request (%u bytes) from device %{public}s", buf, 0x12u);
      if (SBYTE3(v30) < 0)
      {
        operator delete(__p);
      }
    }

    v12 = *(v7 + 16);
    if (v12)
    {
      v13 = *(v7 + 24);
      if (*(v7 + 32) < a3)
      {
        v13 = malloc_type_realloc(*(v7 + 24), a3, 0x100004077774924uLL);
        *(v7 + 24) = v13;
        *(v7 + 32) = a3;
      }

      v14 = sub_1006AF208(v12, v13, a3, &v21);
      if (v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = 135;
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 135;
    }

    v17 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_INFO))
    {
      v18 = v21;
      if (v14)
      {
        v19 = "continue";
      }

      else
      {
        v19 = "eof";
      }

      sub_1000E5A58(v9, buf);
      if (v25 >= 0)
      {
        v20 = buf;
      }

      else
      {
        v20 = *buf;
      }

      LODWORD(__p) = 67109634;
      HIDWORD(__p) = v18;
      v27 = 2080;
      v28 = v19;
      v29 = 2082;
      v30 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Sending response (%u bytes, %s) to device %{public}s", &__p, 0x1Cu);
      if (v25 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v21 = 0;
    v15 = 1715;
  }

  LOBYTE(__p) = 0;
  sub_1000216B4(&__p);
  a4(v12, v13, v21, v15, a5);
  return sub_10002249C(&__p);
}

void sub_1006BFBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_1006BFC18(uint64_t a1)
{
  if (qword_100B549E0 != -1)
  {
    sub_100861304();
  }

  v2 = off_100B549D8;
  v3 = *(a1 + 56);
  v4 = *(a1 + 48);

  return sub_1006BE0A4(v2, a1 + 50, v3, a1 + 32, v4);
}

_BYTE *sub_1006BFC78(uint64_t a1)
{
  if (qword_100B549E0 != -1)
  {
    sub_100861304();
  }

  v2 = off_100B549D8;
  v3 = *(a1 + 32);

  return sub_1006BE560(v2, v3);
}

_BYTE *sub_1006BFCCC(uint64_t a1)
{
  if (qword_100B549E0 != -1)
  {
    sub_100861304();
  }

  v2 = off_100B549D8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = *(a1 + 36);

  return sub_1006BE638(v2, v3, v4, v5);
}

_BYTE *sub_1006BFD24(uint64_t a1)
{
  if (qword_100B549E0 != -1)
  {
    sub_100861304();
  }

  return sub_1006BE910(off_100B549D8, *(a1 + 64), *(a1 + 68), *(a1 + 72), *(a1 + 76), (a1 + 32), *(a1 + 80), *(a1 + 82), *(a1 + 56), *(a1 + 84));
}

_BYTE *sub_1006BFD94(uint64_t a1)
{
  if (*(a1 + 68))
  {
    v2 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 60);
      *buf = 67109376;
      v6 = ((v3 / 681.0) * 3.75);
      v7 = 1024;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Expected delay in SRM enabled:%d ms, maxRead:%d bytes", buf, 0xEu);
    }
  }

  if (qword_100B549E0 != -1)
  {
    sub_100861318();
  }

  return sub_1006BEF54(off_100B549D8, *(a1 + 40), *(a1 + 44), *(a1 + 48), *(a1 + 56), *(a1 + 62), *(a1 + 64), *(a1 + 32), *(a1 + 66));
}

_BYTE *sub_1006BFEB4(uint64_t a1)
{
  if (qword_100B549E0 != -1)
  {
    sub_100861304();
  }

  v2 = off_100B549D8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 44);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 60);
  v8 = *(a1 + 32);
  v9 = *(a1 + 64);

  return sub_1006BF444(v2, v3, v4, v5, v6, v7, v8, v9);
}

void sub_1006BFF18(uint64_t a1)
{
  if (qword_100B549E0 != -1)
  {
    sub_100861304();
  }

  v2 = off_100B549D8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 44);

  sub_1006BF7CC(v2, v3, v4);
}

_BYTE *sub_1006BFF70(uint64_t a1, uint64_t a2)
{
  if (qword_100B549E0 != -1)
  {
    sub_100861304();
  }

  v3 = off_100B549D8;
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = *(a1 + 50);

  return sub_1006BF97C(v3, a2, v4, v5, v6);
}

uint64_t sub_1006C0114(uint64_t a1)
{
  *a1 = off_100B077A8;
  *(a1 + 8) = off_100B07840;
  *(a1 + 16) = &off_100B07868;
  sub_100044BBC((a1 + 24));
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  return a1;
}

void *sub_1006C01A4(void *a1)
{
  *a1 = off_100B077A8;
  a1[1] = off_100B07840;
  a1[2] = &off_100B07868;
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  sub_10007A068((a1 + 3));
  return a1;
}

void sub_1006C0248(void *a1)
{
  sub_1006C01A4(a1);

  operator delete();
}

void sub_1006C0280(uint64_t a1)
{
  sub_1006C01A4((a1 - 8));

  operator delete();
}

void sub_1006C02BC(uint64_t a1)
{
  v2 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "AccessoryAudioClient initialize", v3, 2u);
  }

  *(a1 + 96) = *(a1 + 88);
}

uint64_t sub_1006C0330(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  if (v2 == v3)
  {
    return 0;
  }

  while (1)
  {
    v5 = *v2;
    if (*v2)
    {
      if (*(v5 + 416) == a2)
      {
        break;
      }
    }

    if (++v2 == v3)
    {
      return 0;
    }
  }

  v6 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v7 = v42 >= 0 ? __p : *__p;
    *&buf.byte0 = 136446210;
    *&buf.byte4 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AccessoryAudioClient publish Device %{public}s", &buf.byte0, 0xCu);
    if (v42 < 0)
    {
      operator delete(*__p);
    }
  }

  if (*(v5 + 24) != 1)
  {
    v11 = sub_100537920(a2);
    sub_1003A3A8C(v5, v11);
    sub_1000BE6F8(a2 + 128, &buf);
    if (v38 >= 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = *&buf.byte0;
    }

    sub_100007E30(__p, p_buf);
    sub_1003A2964(v5, __p);
    if (v42 < 0)
    {
      operator delete(*__p);
    }

    if (v38 < 0)
    {
      operator delete(*&buf.byte0);
    }

    sub_1000C23E0(a2, &buf);
    if (v38 >= 0)
    {
      v13 = &buf;
    }

    else
    {
      v13 = *&buf.byte0;
    }

    sub_100007E30(__p, v13);
    sub_1003A2AF0(v5, __p);
    if (v42 < 0)
    {
      operator delete(*__p);
    }

    if (v38 < 0)
    {
      operator delete(*&buf.byte0);
    }

    sub_1000BE6F8(a2 + 128, &buf);
    if (v38 >= 0)
    {
      v14 = &buf;
    }

    else
    {
      v14 = *&buf.byte0;
    }

    sub_100007E30(__p, v14);
    sub_1003A28D8(v5, __p);
    if (v42 < 0)
    {
      operator delete(*__p);
    }

    if (v38 < 0)
    {
      operator delete(*&buf.byte0);
    }

    sub_1003A2AE8(v5, a2);
    *&buf.byte0 = 0;
    *&buf.byte8 = 0;
    v35 = 0;
    v36 = 0;
    sub_1000C2364(a2, &v36 + 1, &v36, &v35 + 1, &v35);
    if (qword_100B508D0 != -1)
    {
      sub_100861340();
    }

    sub_1000498D4(off_100B508C8, (a2[128] << 40) | (a2[129] << 32) | (a2[130] << 24) | (a2[131] << 16) | (a2[132] << 8) | a2[133], 1u, 1u, 0, 0, __p);
    v15 = sub_10004DF60(__p);
    [v15 getUUIDBytes:&buf];

    v16 = sub_1005499AC(a2);
    v17 = qword_100BCE8B8;
    v18 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (!v18)
      {
        goto LABEL_49;
      }

      *__p = 0;
      v19 = "AccessoryAudioClient Device support enhanced EQ";
    }

    else
    {
      if (!v18)
      {
        goto LABEL_49;
      }

      *__p = 0;
      v19 = "AccessoryAudioClient Device does not support enhanced EQ";
    }

    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v19, __p, 2u);
LABEL_49:
    sub_1006FEF30(v5, v16 != 0);
    sub_1003A39AC(v5, &buf);
    sub_1003A39BC(v5, SHIDWORD(v35));
    sub_1003A39CC(v5, v35);
    sub_1003A39DC(v5, v36);
    if (!_os_feature_enabled_impl())
    {
LABEL_65:
      v34 = 0.0;
      if (qword_100B541D0 != -1)
      {
        sub_100861390();
      }

      v29 = sub_1006C4558(off_100B541C8, a2, &v34);
      if (v29)
      {
        v30 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 134217984;
          *&__p[4] = v34;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Setting audio device volume to %f", __p, 0xCu);
        }

        sub_1003A2788(v5, v34);
      }

      sub_1003A32D0(v5, v29);
      v31 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        v32 = sub_1000E2140(a2, 0x20u);
        *__p = 67109120;
        *&__p[4] = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "AccessoryAudioClient setSupportsTipi %d", __p, 8u);
      }

      v33 = sub_1000E2140(a2, 0x20u);
      sub_1003A3318(v5, v33);
      sub_1003A1E50(v5);
      return 0;
    }

    v20 = sub_1000E3218(a2, 0x22u);
    if (qword_100B50940 != -1)
    {
      sub_100861368();
    }

    v21 = sub_100639AAC();
    v22 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      v23 = "not supported";
      if (v20)
      {
        v23 = "supported";
      }

      v24 = "Allowed";
      if (!v21)
      {
        v24 = "not Allowed";
      }

      *__p = 136315394;
      *&__p[4] = v23;
      v40 = 2080;
      v41 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "StudioMic notify BTHAL StudioMic %s , %s", __p, 0x16u);
    }

    v25 = (v20 != 0) & v21;
    v26 = qword_100BCE8B8;
    v27 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT);
    if (v25 == 1)
    {
      if (v27)
      {
        *__p = 0;
        v28 = "AccessoryAudioClient publish with StudioMic enabled";
LABEL_63:
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v28, __p, 2u);
      }
    }

    else if (v27)
    {
      *__p = 0;
      v28 = "AccessoryAudioClient publish with StudioMic disabled";
      goto LABEL_63;
    }

    sub_1006FEF20(v5, v25);
    goto LABEL_65;
  }

  v8 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    if (v42 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = *__p;
    }

    *&buf.byte0 = 136446210;
    *&buf.byte4 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AccessoryAudioClient Device %{public}s already published ", &buf.byte0, 0xCu);
    if (v42 < 0)
    {
      operator delete(*__p);
    }
  }

  return 311;
}

uint64_t sub_1006C09F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  while (v2 != v3)
  {
    result = *v2;
    if (*v2 && *(result + 416) == a2)
    {
      return result;
    }

    ++v2;
  }

  return 0;
}

uint64_t sub_1006C0BC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  if (v2 == v3)
  {
    return 0;
  }

  for (i = (v2 + 1); ; i += 8)
  {
    v6 = *v2;
    if (*v2)
    {
      if (*(v6 + 416) == a2)
      {
        break;
      }
    }

    if (++v2 == v3)
    {
      return 0;
    }
  }

  v8 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AccessoryAudioClient destroyAccessoryAudioDevice %p", &v11, 0xCu);
  }

  sub_1003A2794(v6);
  v9 = *(a1 + 96);
  v10 = v9 - i;
  if (v9 != i)
  {
    memmove(i - 8, i, v9 - i);
  }

  *(a1 + 96) = &i[v10 - 8];
  return 1;
}

void sub_1006C0CE0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  if (v3 == v4)
  {
LABEL_5:
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_1008613CC();
    }
  }

  else
  {
    while (1)
    {
      v6 = *v3;
      if (*v3)
      {
        if (*(v6 + 416) == a2)
        {
          break;
        }
      }

      if (++v3 == v4)
      {
        goto LABEL_5;
      }
    }

    if (qword_100B50940 != -1)
    {
      sub_1008613B8();
    }

    v7 = sub_100639AAC();
    v8 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "not supported";
      if (a3)
      {
        v9 = "supported";
      }

      v10 = "Allowed";
      if (!v7)
      {
        v10 = "not Allowed";
      }

      v11 = 136315394;
      v12 = v9;
      v13 = 2080;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "StudioMic notify BTHAL StudioMic %s , %s", &v11, 0x16u);
    }

    sub_1006FEF20(v6, a3 & v7);
  }
}

void sub_1006C0E50(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  for (i = *(a1 + 88); i != *(a1 + 96); ++i)
  {
    v5 = *i;
    if (*i && *(v5 + 416) == a2)
    {
      if (*(v5 + 400) == 3)
      {
        sub_1006FF118(v5, a3, a4);
        v6 = *(v5 + 408);
        if (v6 <= 3)
        {
          v7 = qword_100BCE8B8;
          if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
          {
            v8[0] = 67109120;
            v8[1] = v6;
            _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "AMP Link pre warm frame:%d", v8, 8u);
            v6 = *(v5 + 408);
          }

          *(v5 + 408) = v6 + 1;
          if (v6 == 3)
          {
            sub_1006FF2D8(v5, 1, 0);
          }
        }

        return;
      }

      break;
    }
  }

  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100861400();
  }
}

void sub_1006C0F9C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = sub_1000D999C(a1, a2);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006C1030;
  v9[3] = &unk_100AEC130;
  v9[4] = a1;
  v9[5] = a2;
  v10 = a3;
  v11 = a4;
  sub_10000CA94(v8, v9);
}

uint64_t sub_1006C1030(uint64_t a1)
{
  v2 = *(a1 + 32);
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, v2 + 24);
  v3 = *(a1 + 40);
  if (!*(a1 + 48))
  {
    v5 = *(v3 + 400);
    if (v5 > 2)
    {
      if ((v5 - 4) >= 3)
      {
        if (v5 == 3)
        {
          v14 = qword_100BCE8B8;
          v15 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT);
          if (v15)
          {
            *v17 = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "AMP link connected, perform disconnect request", v17, 2u);
            v3 = *(a1 + 40);
          }

          *(v3 + 400) = 4;
          sub_1006C1400(v15, *(v3 + 416));
        }

        return sub_1000088CC(v18);
      }

      v6 = qword_100BCE8B8;
      if (!os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        return sub_1000088CC(v18);
      }

      *v17 = 0;
      v7 = "AMP link already disconnecting, skip disconnect request";
LABEL_42:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, v17, 2u);
      return sub_1000088CC(v18);
    }

    switch(v5)
    {
      case 0:
        v6 = qword_100BCE8B8;
        if (!os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          return sub_1000088CC(v18);
        }

        *v17 = 0;
        v7 = "AMP link already disconnected, skip disconnect request";
        goto LABEL_42;
      case 1:
        v10 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          v11 = "AMP link connecting, delay disconnect request";
          goto LABEL_46;
        }

        break;
      case 2:
        v10 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          v11 = "AMP link connect delayed, replaced with delayed disconnect";
LABEL_46:
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, v17, 2u);
          v3 = *(a1 + 40);
        }

        break;
      default:
        return sub_1000088CC(v18);
    }

    v13 = 5;
    goto LABEL_35;
  }

  *(v3 + 404) = *(a1 + 52);
  v4 = *(v3 + 400);
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        v8 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          v9 = "AMP link already connecting, skip connect request";
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      if (v4 == 2)
      {
        v8 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          v9 = "AMP link already waiting to start connect, duplicate connect request";
LABEL_33:
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, v17, 2u);
          v3 = *(a1 + 40);
        }

LABEL_34:
        v13 = 2;
LABEL_35:
        *(v3 + 400) = v13;
      }
    }

    else
    {
      v12 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "AMP link disconnected, perform connect request", v17, 2u);
        v3 = *(a1 + 40);
      }

      *(v3 + 400) = 1;
      sub_1006C1490(v2, *(v3 + 416));
    }
  }

  else if (v4 > 4)
  {
    if (v4 == 5)
    {
      v8 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        v9 = "AMP link disconnect delayed, replaced with delayed connect";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v4 == 6)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v4 != 3)
    {
LABEL_17:
      v8 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        v9 = "AMP link already disconnecting, delay connect request";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    v6 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      v7 = "AMP link connected, noop";
      goto LABEL_42;
    }
  }

  return sub_1000088CC(v18);
}

void sub_1006C13EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1006C1400(uint64_t a1, uint64_t a2)
{
  v3 = 259;
  if (a2)
  {
    if (qword_100B50950 != -1)
    {
      sub_100861434();
    }

    sub_100340570(off_100B50948, a2, &v3, 2u);
  }

  else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100861448();
  }
}

void sub_1006C1490(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 88); ; ++i)
  {
    v4 = *i;
    if (*i)
    {
      if (*(v4 + 416) == a2)
      {
        break;
      }
    }
  }

  v13 = 256;
  v14 = *(v4 + 404);
  v16 = 150;
  v15 = 4;
  if (a2)
  {
    if (sub_1000E2140(a2, 0x1Au))
    {
      v5 = sub_10000E92C();
      if (((*(*v5 + 776))(v5) & 1) == 0)
      {
        v6 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000BE6F8((a2 + 128), __p);
          v7 = v12 >= 0 ? __p : __p[0];
          *buf = 136446210;
          v18 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AMP link: Disable Software volume for %{public}s", buf, 0xCu);
          if (v12 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (qword_100B50950 != -1)
        {
          sub_10086147C();
        }

        v8 = sub_1003349D4(off_100B50948, a2, 2, 2);
        if (v8)
        {
          v9 = v8;
          v10 = qword_100BCE8B8;
          if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
          {
            sub_1008614A4(v9, v10);
          }
        }
      }
    }

    if (qword_100B50950 != -1)
    {
      sub_10086147C();
    }

    sub_100340570(off_100B50948, a2, &v13, 9u);
  }

  else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_10086151C();
  }
}

uint64_t sub_1006C16AC(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1 + 24);
  for (i = *(a1 + 88); ; ++i)
  {
    if (i == *(a1 + 96))
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_100861668();
      }

      return sub_1000088CC(v24);
    }

    v7 = *i;
    if (*i)
    {
      if (*(v7 + 416) == a2)
      {
        break;
      }
    }
  }

  v9 = *a3;
  if (v9 > 0x102)
  {
    switch(v9)
    {
      case 0x103u:
        v12 = qword_100BCE8B8;
        v13 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          v14 = *(v7 + 400);
          *buf = 67109120;
          LODWORD(v26) = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "AMP link remote disconnect request, state %d", buf, 8u);
        }

        sub_1006C1AE8(v13, a2);
        if (!*(v7 + 400))
        {
          return sub_1000088CC(v24);
        }

        break;
      case 0x105u:
        goto LABEL_21;
      case 0x104u:
        v10 = *(v7 + 400);
        if (v10 > 6)
        {
          return sub_1000088CC(v24);
        }

        v11 = 1 << v10;
        if ((v11 & 0x2B) != 0)
        {
          if (!os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
          {
            return sub_1000088CC(v24);
          }

          goto LABEL_20;
        }

        if ((v11 & 0x50) == 0)
        {
          if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
          {
            sub_100861634();
          }

          sub_1006C1490(a1, a2);
          v21 = 1;
          goto LABEL_51;
        }

        v18 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "AMP Link received disc confirm, notify BTHAL", buf, 2u);
        }

        break;
      default:
        return sub_1000088CC(v24);
    }

    *(v7 + 400) = 0;
    sub_1006FF2D8(v7, 0, 0);
    return sub_1000088CC(v24);
  }

  if (v9 == 256)
  {
    goto LABEL_21;
  }

  if (v9 == 257)
  {
    v15 = *(a3 + 2);
    v16 = qword_100BCE8B8;
    if (!v15)
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_1008615B8(v16);
      }

      return sub_1000088CC(v24);
    }

    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v26) = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "AMP Link accepted=%d", buf, 8u);
    }

    v17 = *(v7 + 400);
    if (v17 > 6)
    {
      return sub_1000088CC(v24);
    }

    if (((1 << v17) & 0x5D) != 0)
    {
      if (!os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        return sub_1000088CC(v24);
      }

LABEL_20:
      sub_100861584();
      return sub_1000088CC(v24);
    }

    if (v17 == 1)
    {
      v19 = mach_absolute_time();
      v20 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v26 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "AMP Link connected, BTHAL, nowTs %llu", buf, 0xCu);
      }

      *(v7 + 400) = 3;
      *(v7 + 408) = 0;
      if (qword_100B50940 != -1)
      {
        sub_100861368();
      }

      sub_10062EF84(off_100B50938, a2);
      return sub_1000088CC(v24);
    }

    v22 = qword_100BCE8B8;
    v23 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "AMP Link proceed pending disconnect", buf, 2u);
    }

    sub_1006C1400(v23, a2);
    v21 = 4;
LABEL_51:
    *(v7 + 400) = v21;
    return sub_1000088CC(v24);
  }

  if (v9 != 258)
  {
    return sub_1000088CC(v24);
  }

LABEL_21:
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100861550();
  }

  return sub_1000088CC(v24);
}

void sub_1006C1AE8(uint64_t a1, uint64_t a2)
{
  v3 = 260;
  if (a2)
  {
    if (qword_100B50950 != -1)
    {
      sub_100861434();
    }

    sub_100340570(off_100B50948, a2, &v3, 2u);
  }

  else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_10086169C();
  }
}

void sub_1006C1B78(uint64_t a1, uint64_t a2)
{
  v8 = 261;
  v9 = 1;
  if (a2)
  {
    if (qword_100B50940 != -1)
    {
      sub_1008613B8();
    }

    v3 = *(off_100B50938 + 101);
    v4 = qword_100BCE8B8;
    v5 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Skip AMP link audio trigger feedback", v6, 2u);
      }
    }

    else
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AMP link audio trigger feedback", buf, 2u);
      }

      if (qword_100B50950 != -1)
      {
        sub_10086147C();
      }

      sub_100340570(off_100B50948, a2, &v8, 3u);
      if (qword_100B50940 != -1)
      {
        sub_100861368();
      }

      sub_10062EB9C(off_100B50938, a2);
      if (qword_100B50940 != -1)
      {
        sub_100861368();
      }

      *(off_100B50938 + 101) = 10;
    }
  }

  else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_1008616D0();
  }
}

void sub_1006C1D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D999C(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006C1D84;
  v5[3] = &unk_100AE0860;
  v5[4] = a1;
  v5[5] = a2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_1006C1D84(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = 0;
  v5[1] = 0;
  v3 = sub_100007F88(v5, v2 + 24);
  sub_1006C1B78(v3, *(*(a1 + 40) + 416));
  return sub_1000088CC(v5);
}

void sub_1006C1DE8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 416);
  if (v3)
  {
    v6 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v3, __p);
      if (v9 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      *buf = 67109378;
      v11 = a3;
      v12 = 2082;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "headtrackingAvailabilityChanged  %d for device %{public}s", buf, 0x12u);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }

      v3 = *(a2 + 416);
    }

    sub_100547894(v3, a3);
    if (qword_100B508E0 != -1)
    {
      sub_100861704();
    }

    sub_1005177FC(off_100B508D8, *(a2 + 416));
  }
}

void sub_1006C1F1C(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v5 = a3;
  v6 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = v5;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AccessoryAudioClient::usbcPlaybackStatus BTAddress %@ status %d", buf, 0x12u);
  }

  if (_os_feature_enabled_impl())
  {
    if (qword_100B50940 != -1)
    {
      sub_100861368();
    }

    v7 = *(off_100B50938 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1006C2098;
    v8[3] = &unk_100AE1750;
    v9 = v5;
    v10 = a4;
    dispatch_async(v7, v8);
  }
}

void sub_1006C2098(uint64_t a1)
{
  if (qword_100B50930 != -1)
  {
    sub_10086172C();
  }

  v2 = off_100B50928;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_1000F2F08(v2, v3, v4);
}

uint64_t sub_1006C20F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  if (v3 != v4)
  {
    while (1)
    {
      v5 = *v3;
      if (*v3)
      {
        if (*(v5 + 416) == a2)
        {
          break;
        }
      }

      if (++v3 == v4)
      {
        return 0;
      }
    }

    sub_1006FEF40(v5, a3);
  }

  return 0;
}

uint64_t sub_1006C214C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  if (v3 != v4)
  {
    while (1)
    {
      v5 = *v3;
      if (*v3)
      {
        if (*(v5 + 416) == a2)
        {
          break;
        }
      }

      if (++v3 == v4)
      {
        return 0;
      }
    }

    sub_1006FEF50(v5, a3);
  }

  return 0;
}

uint64_t sub_1006C2438(uint64_t a1)
{
  *sub_100589578(a1, "PhonebookService", 2) = &off_100B07958;
  if (qword_100B549E0 != -1)
  {
    sub_100861740();
  }

  sub_100589880(a1, off_100B549D8);
  return a1;
}

uint64_t sub_1006C24C8(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  sub_100016250(&v5);
  *&v4 = v5;
  *(&v4 + 1) = SWORD2(v5);
  return sub_100539554(a2, 2u, 1, &v4, 0);
}

void sub_1006C2520(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = sub_100589718(a1);
  sub_10008E008(v5, a2, v6);
}

void sub_1006C2594(uint64_t a1)
{
  sub_100589670(a1);

  operator delete();
}

uint64_t sub_1006C2634(uint64_t a1)
{
  v8 = 0;
  sub_1000216B4(&v8);
  v2 = sub_1002029E4(off_100B07A68);
  if (v2)
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_100861754();
    }

    goto LABEL_15;
  }

  v4 = sub_10000C798(v2, v3);
  if ((*(*v4 + 352))(v4))
  {
    v5 = 465;
  }

  else
  {
    v5 = 17;
  }

  if (sub_1002080F0(&off_100B07A98, v5, 0, &off_100B07AC0))
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1008617BC();
    }

LABEL_14:
    sub_100202B7C();
LABEL_15:
    v6 = 1;
    goto LABEL_16;
  }

  if (sub_1001A4E24(off_100B07AD0, 2, &off_100B07AC0))
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_100861824();
    }

    sub_100208DE8();
    goto LABEL_14;
  }

  atomic_store(0, (a1 + 545));
  if (qword_100B50AE0 != -1)
  {
    sub_10086188C();
  }

  sub_1006CEF54(qword_100B50AD8 + 464, a1 + 272);
  v6 = 0;
LABEL_16:
  sub_10002249C(&v8);
  return v6;
}

uint64_t sub_1006C27EC(uint64_t a1)
{
  v4 = 0;
  sub_1000216B4(&v4);
  if (sub_100208DE8())
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1008618B4();
    }

LABEL_10:
    v2 = 1;
    goto LABEL_11;
  }

  if (sub_1001A52AC())
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_10086191C();
    }

    goto LABEL_10;
  }

  if (sub_100202B7C())
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_100861984();
    }

    goto LABEL_10;
  }

  if (qword_100B50AE0 != -1)
  {
    sub_10086188C();
  }

  sub_10007A3F0(qword_100B50AD8 + 464, a1 + 272);
  v2 = 0;
LABEL_11:
  sub_10002249C(&v4);
  return v2;
}

uint64_t sub_1006C2920(uint64_t a1, uint64_t a2)
{
  v3 = qword_100BCE930;
  v4 = os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    sub_1000E5A58(a2, &__p);
    v6 = v23 >= 0 ? &__p : __p;
    *buf = 136446210;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Connecting AVRCP profile to device %{public}s", buf, 0xCu);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p);
    }
  }

  v7 = sub_10000C798(v4, v5);
  v8 = (*(*v7 + 352))(v7);
  if (v8)
  {
    v20 = xmmword_1008C4D80;
    __p = 0;
    v22 = 0;
    v23 = 0;
    if (sub_1006C2C24(v8, a2, 0x110Fu) >= 0x104 && sub_10053BFB4(a2, &v20, 0x311u, &__p))
    {
      v19 = *__p;
      if ((BYTE8(v19) & 0x40) != 0)
      {
        v10 = qword_100BCE930;
        v11 = os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT);
        if (v11)
        {
          sub_1000E5A58(a2, buf);
          v12 = v25;
          v13 = *buf;
          v15 = sub_1006C2D14(v14, a2);
          v16 = buf;
          if (v12 < 0)
          {
            v16 = v13;
          }

          *v26 = 136446466;
          v27 = v16;
          v28 = 1024;
          v29 = v15;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Browsing is supported on device %{public}s, isBrowsingBroken %d", v26, 0x12u);
          if (v25 < 0)
          {
            operator delete(*buf);
          }
        }

        v9 = sub_1006C2D14(v11, a2) ^ 1;
      }

      else
      {
        v9 = 0;
      }

      sub_10037D4F4(&v19);
    }

    else
    {
      v9 = 0;
    }

    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v9 = 0;
  }

  v26[0] = 0;
  sub_1000216B4(v26);
  if (sub_100202C08((a2 + 128), xmmword_1008C4D28, v9))
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, &__p);
      sub_1008619EC();
    }

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  sub_10002249C(v26);
  return v17;
}

void sub_1006C2BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006C2C24(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v12[0] = 131075;
  v12[1] = a3;
  __p = 0;
  v10 = 0;
  v11 = 0;
  v3 = sub_10053BFB4(a2, v12, 9u, &__p);
  v4 = __p;
  if (!v3)
  {
    LOWORD(v6) = 0;
    if (!__p)
    {
      return v6;
    }

    goto LABEL_10;
  }

  v5 = *(__p + 1);
  if (*(v5 + 8) == 4366)
  {
    v6 = *(v5 + 24);
  }

  else
  {
    LOWORD(v6) = 0;
  }

  if (__p == v10)
  {
    goto LABEL_10;
  }

  do
  {
    *v8 = *v4;
    sub_10037D4F4(v8);
    ++v4;
  }

  while (v4 != v10);
  v4 = __p;
  if (__p)
  {
LABEL_10:
    v10 = v4;
    operator delete(v4);
  }

  return v6;
}

void sub_1006C2CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006C2D14(uint64_t a1, uint64_t a2)
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

uint64_t sub_1006C2E5C(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    if (v10 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136446210;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Disconnecting AVRCP profile to device %{public}s", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = 0;
  sub_1000216B4(&v8);
  if (sub_100202DCC((a2 + 128)))
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      sub_1000E5A58(a2, __p);
      sub_100861A3C();
    }
  }

  else
  {
    if (!*(a1 + 528) || !sub_1001A7FE0())
    {
      v6 = 0;
      goto LABEL_16;
    }

    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }
  }

  v6 = 1;
LABEL_16:
  sub_10002249C(&v8);
  return v6;
}

uint64_t sub_1006C3020(uint64_t a1, uint64_t a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v4 = sub_1000E6554(off_100B508E8, __p, 1);
  v5 = sub_10057DFAC(a1, v4);
  v6 = qword_100BCE930;
  v7 = os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT);
  if (v7 && (!v5 ? (v9 = "Rejecting") : (v9 = "Accepting"), (sub_1000E5A58(v4, __p), SHIBYTE(__p[2]) >= 0) ? (v10 = __p) : (v10 = __p[0]), *buf = 136446466, *&buf[4] = v9, v30 = 2082, v31 = v10, _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s incoming connection attempt from device %{public}s", buf, 0x16u), SHIBYTE(__p[2]) < 0))
  {
    operator delete(__p[0]);
    if (v5)
    {
LABEL_12:
      v11 = sub_10000C798(v7, v8);
      v12 = (*(*v11 + 352))(v11);
      if (v12)
      {
        v26 = xmmword_1008C4D80;
        memset(__p, 0, sizeof(__p));
        if (sub_1006C2C24(v12, v4, 0x110Fu) >= 0x104 && sub_10053BFB4(v4, &v26, 0x311u, __p))
        {
          v25 = *__p[0];
          if ((BYTE8(v25) & 0x40) != 0)
          {
            v14 = qword_100BCE930;
            v15 = os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT);
            if (v15)
            {
              sub_1000E5A58(v4, buf);
              v16 = v32;
              v17 = *buf;
              v19 = sub_1006C2D14(v18, v4);
              v20 = buf;
              if (v16 < 0)
              {
                v20 = v17;
              }

              *v33 = 136446466;
              v34 = v20;
              v35 = 1024;
              v36 = v19;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Browsing is supported on device %{public}s, isBrowsingBroken %d", v33, 0x12u);
              if (v32 < 0)
              {
                operator delete(*buf);
              }
            }

            sub_1006C2D14(v15, v4);
          }

          sub_10037D4F4(&v25);
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      sub_10057D9B0(a1, v4, 1);
    }
  }

  else if (v5)
  {
    goto LABEL_12;
  }

  result = sub_100202CEC(a2, 0, 0);
  v21 = result;
  if (result)
  {
    v22 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      v23 = v5 ? "accept" : "reject";
      sub_1000E5A58(v4, buf);
      v24 = v32 >= 0 ? buf : *buf;
      LODWORD(__p[0]) = 136446722;
      *(__p + 4) = v23;
      WORD2(__p[1]) = 2082;
      *(&__p[1] + 6) = v24;
      HIWORD(__p[2]) = 1024;
      v28 = v21;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to %{public}s connection attempt from device %{public}s - result was %{bluetooth:OI_STATUS}u", __p, 0x1Cu);
      if (v32 < 0)
      {
        operator delete(*buf);
      }
    }

    sub_10057DA84(a1, v4, 1);
  }

  return result;
}

void sub_1006C33D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C341C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  *__p = *a2;
  *&__p[4] = *(a2 + 4);
  v6 = sub_1000E6554(off_100B508E8, __p, 1);
  v7 = qword_100BCE930;
  if (a3)
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(v6, __p);
      v23 = v28 >= 0 ? __p : *__p;
      buf[0] = 136446466;
      *&buf[1] = v23;
      v25 = 1024;
      v26 = a3;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to connect to device %{public}s - result was %{bluetooth:OI_STATUS}u", buf, 0x12u);
      if (v28 < 0)
      {
        operator delete(*__p);
      }
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100861AA0();
    }

    v8 = sub_1000DD584(off_100B50A98, a3, 20000);
    sub_10057DA84(a1, v6, v8);
  }

  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v6, __p);
    v9 = v28 >= 0 ? __p : *__p;
    buf[0] = 136446466;
    *&buf[1] = v9;
    v25 = 1024;
    v26 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "RemoteClient connect confirm device %{public}s with result %{bluetooth:OI_STATUS}u", buf, 0x12u);
    if (v28 < 0)
    {
      operator delete(*__p);
    }
  }

  v10 = *(a1 + 352);
  if (v10)
  {
    v11 = a1 + 352;
    do
    {
      v12 = *(v10 + 32);
      v13 = v12 >= v6;
      v14 = v12 < v6;
      if (v13)
      {
        v11 = v10;
      }

      v10 = *(v10 + 8 * v14);
    }

    while (v10);
    if (v11 != a1 + 352 && v6 >= *(v11 + 32))
    {
      v15 = qword_100BCE930;
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_FAULT))
      {
        sub_100861AC8(v15, v16, v17, v18, v19, v20, v21, v22);
      }
    }
  }

  operator new();
}

void sub_1006C37DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C3814(uint64_t a1, uint64_t a2)
{
  v3 = sub_1006C2C24(a1, a2, 0x110Cu);
  if (v3)
  {
    v4 = v3;
    v5 = sub_100542A94(a2, v3);
  }

  else
  {
    v5 = sub_1005429CC(a2);
    v4 = v5;
  }

  if (v4 < 0x104 || (sub_1006C41F8(v5, a2) & 1) != 0)
  {
    v6 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v7 = v15;
      v8 = *__p;
      v10 = sub_1006C41F8(v9, a2);
      v11 = __p;
      *buf = 136446722;
      if (v7 < 0)
      {
        v11 = v8;
      }

      *&buf[4] = v11;
      v17 = 1024;
      v18 = v4;
      v19 = 1024;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Skipping capability check for device %{public}s with remote control version 0x%x, brokenAbs %d", buf, 0x18u);
      if (v15 < 0)
      {
        operator delete(*__p);
      }
    }
  }

  else
  {
    v12 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, buf);
      v13 = v20 >= 0 ? buf : *buf;
      *__p = 136446210;
      *&__p[4] = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Querying capabilities of remote device %{public}s to see if they support absolute volume", __p, 0xCu);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(*buf);
      }
    }

    buf[0] = 0;
    if (sub_1002043C4((a2 + 128), buf) && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_100861B68();
    }
  }
}

void sub_1006C3A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C3A34(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, __p, 1);
  v14 = v8;
  v9 = qword_100BCE930;
  if (a3)
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
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

      *buf = 136446466;
      *v16 = v10;
      *&v16[8] = 1024;
      *&v16[10] = a3;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to establish browsing channel with device %{public}s: %{bluetooth:OI_STATUS}u", buf, 0x12u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v8, __p);
      v11 = v13 >= 0 ? __p : __p[0];
      *buf = 67109378;
      *v16 = a4;
      *&v16[4] = 2082;
      *&v16[6] = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Browsing channel (MTU = %u) established with device %{public}s", buf, 0x12u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    __p[0] = &v14;
    *(sub_10057EDF4(a1 + 504, &v14, &unk_1008A9BD0, __p) + 20) = a4;
  }
}

void sub_1006C3C20(uint64_t a1, uint64_t a2, __int16 a3, int a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, __p, 1);
  v9 = qword_100BCE930;
  if (a4)
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
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

      *buf = 136446466;
      v15 = v10;
      v16 = 1024;
      v17 = a4;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to establish BIP cover art channel with device %{public}s: %{bluetooth:OI_STATUS}u", buf, 0x12u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v8, __p);
      v11 = v13 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BIP cover art channel established with device %{public}s", buf, 0xCu);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *(a1 + 528) = v8;
    *(a1 + 536) = a3;
  }
}

void sub_1006C3DDC(uint64_t a1, uint64_t a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v4 = sub_1000E6554(off_100B508E8, __p, 1);
  v5 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v4, __p);
    v6 = v16 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BIP cover art channel disestablished with device %{public}s", buf, 0xCu);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v4 != *(a1 + 528))
  {
    v7 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_FAULT))
    {
      sub_100861BD0(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  *(a1 + 528) = 0;
}

void sub_1006C3F34(uint64_t a1, uint64_t a2, int a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(v24[0]) = *a2;
  WORD2(v24[0]) = *(a2 + 4);
  v6 = sub_1000E6554(off_100B508E8, v24, 1);
  v25 = v6;
  v7 = *(a1 + 352);
  if (!v7)
  {
    goto LABEL_38;
  }

  v8 = a1 + 352;
  do
  {
    v9 = *(v7 + 32);
    v10 = v9 >= v6;
    v11 = v9 < v6;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * v11);
  }

  while (v7);
  if (v8 != a1 + 352 && v6 >= *(v8 + 32))
  {
    v24[0] = 0;
    v24[1] = 0;
    sub_100007F88(v24, a1 + 280);
    v12 = *sub_10056E904(a1 + 344, &v25);
    if (v12)
    {
      (*(*v12 + 64))(v12);
    }

    sub_100075DC4((a1 + 344), &v25);
    sub_100075DC4((a1 + 504), &v25);
    sub_10000801C(v24);
    v23[0] = 0;
    v23[1] = 0;
    sub_100007F88(v23, a1 + 392);
    sub_100075DC4((a1 + 456), &v25);
    sub_10000801C(v23);
    v14 = *(a1 + 488);
    v15 = v25;
    if (v14)
    {
      v16 = a1 + 488;
      do
      {
        v17 = *(v14 + 32);
        v10 = v17 >= v25;
        v18 = v17 < v25;
        if (v10)
        {
          v16 = v14;
        }

        v14 = *(v14 + 8 * v18);
      }

      while (v14);
      if (v16 != a1 + 488 && v25 >= *(v16 + 32))
      {
        v19 = *(v16 + 40);
        if (v19 != (v16 + 48))
        {
          do
          {
            if (*(v19 + 33) == 32)
            {
              sub_1006C41AC(v13, v19[5]);
            }

            v20 = v19[1];
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
                v21 = v19[2];
                v22 = *v21 == v19;
                v19 = v21;
              }

              while (!v22);
            }

            v19 = v21;
          }

          while (v21 != (v16 + 48));
        }

        sub_100480394((a1 + 480), v16);
        v15 = v25;
      }
    }

    if (v15 == *(a1 + 552))
    {
      *(a1 + 552) = 0;
    }

    sub_10057E710(a1, v15, 0, a3);
    sub_1000088CC(v23);
    sub_1000088CC(v24);
  }

  else
  {
LABEL_38:
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_100861C48();
    }
  }
}

void sub_1006C4180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1006C41AC(uint64_t a1, char *a2)
{
  for (i = 8; i != 200; i += 24)
  {
    free(*&a2[i]);
  }

  free(a2);
}

uint64_t sub_1006C41F8(uint64_t a1, uint64_t a2)
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
  v4 = BYTE13(v12[2]);
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

void sub_1006C4340(uint64_t a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v7 = v12 >= 0 ? __p : __p[0];
    *buf = 136446466;
    v14 = v7;
    v15 = 1024;
    v16 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "RemoteClient queryComplete for device %{public}s with result %d", buf, 0x12u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a3 != 307)
  {
    if (!a3)
    {
      *(a1 + 544) = 0;
      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      sub_1006C3814(a1, a2);
      sub_100022214(__p);
      sub_10002249C(__p);
      return;
    }

    if ((a3 - 316) >= 0x13)
    {
      v8 = *(a1 + 544);
      if (v8 <= 3)
      {
        v9 = v8 + 1;
        *(a1 + 544) = v8 + 1;
        v10 = qword_100BCE930;
        if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(__p[0]) = 67109120;
          HIDWORD(__p[0]) = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "RemoteClient retrying with sdpAttempts %d", __p, 8u);
        }

        if (qword_100B54670 != -1)
        {
          sub_100861B40();
        }

        sub_100587D6C(qword_100B54668, a2, a1 + 256, 1, 2);
      }
    }
  }

  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_100861C84();
  }

  *(a1 + 544) = 0;
}

void sub_1006C4534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C4558(uint64_t a1, unint64_t a2, float *a3)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 392);
  v6 = *(a1 + 464);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = a1 + 464;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 != a1 + 464 && *(v7 + 32) <= a2)
  {
    *a3 = *(v7 + 40) / 127.0;
    v11 = 1;
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  sub_1000088CC(v13);
  return v11;
}

void sub_1006C460C(uint64_t a1, uint64_t a2, unsigned int a3, char a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  *__p = *a2;
  *&__p[4] = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, __p, 1);
  v32 = v8;
  v9 = a4 & 0x7F;
  if (v9 > 0x45)
  {
    if ((a4 & 0x7Fu) <= 0x48)
    {
      if (v9 == 70)
      {
        sub_1003641E4(7);
        v10 = 9;
        v11 = 502;
        v12 = "Pause";
        goto LABEL_36;
      }

      if (v9 != 72)
      {
        goto LABEL_35;
      }

      if (a4 >= 0)
      {
        v11 = 511;
      }

      else
      {
        v11 = 512;
      }

      v10 = 9;
      v12 = "Rewind";
    }

    else
    {
      if (v9 != 73)
      {
        if (v9 == 75)
        {
          v10 = 9;
          v11 = 505;
          v12 = "Next Track";
          goto LABEL_36;
        }

        if (v9 == 76)
        {
          v10 = 9;
          v11 = 504;
          v12 = "Previous Track";
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (a4 >= 0)
      {
        v11 = 509;
      }

      else
      {
        v11 = 510;
      }

      v10 = 9;
      v12 = "Fast Forward";
    }
  }

  else
  {
    if ((a4 & 0x7Fu) <= 0x42)
    {
      if (v9 == 65)
      {
        v10 = 8;
        v11 = 506;
        v12 = "Volume Up";
        goto LABEL_36;
      }

      if (v9 == 66)
      {
        v10 = 8;
        v11 = 507;
        v12 = "Volume Down";
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (v9 == 67)
    {
      v10 = 8;
      v11 = 508;
      v12 = "Mute";
      goto LABEL_36;
    }

    if (v9 != 68)
    {
      if (v9 == 69)
      {
        sub_1003641E4(7);
        v10 = 9;
        v11 = 503;
        v12 = "Stop";
        goto LABEL_36;
      }

LABEL_35:
      v11 = 0;
      v10 = 8;
      v12 = "Unknown";
      goto LABEL_36;
    }

    sub_1003641E4(7);
    if (sub_1006C4B78(v13, v8))
    {
      v11 = 513;
    }

    else
    {
      v11 = 501;
    }

    v10 = 9;
    v12 = "Play";
  }

LABEL_36:
  if (sub_100208F0C(a2, a3, a4, v10) && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_100861CC0();
    if (!v11)
    {
      return;
    }
  }

  else if (!v11)
  {
    return;
  }

  if ((a4 & 0x80) == 0 || (a4 & 0xFE) == 0xC8)
  {
    v14 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v8, __p);
      v15 = v36 >= 0 ? __p : *__p;
      *buf = 136446466;
      v38 = v12;
      v39 = 2082;
      v40 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received AVRCP %{public}s command from device %{public}s", buf, 0x16u);
      if (v36 < 0)
      {
        operator delete(*__p);
      }
    }

    v16 = sub_1000DEB14(v8);
    v17 = v16;
    v19 = sub_1000154A8(v16, v18);
    v20 = (*(*v19 + 64))(v19);
    v21 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      v22 = atomic_load((a1 + 545));
      *__p = 67109632;
      *&__p[4] = v20;
      *&__p[8] = 1024;
      *&__p[10] = v22 & 1;
      v34 = 1024;
      v35 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "CoP: %d, call related session:%d delayPlay:%d", __p, 0x14u);
      v8 = v32;
    }

    if (v8 && (v23 = sub_1000C0348(v8)))
    {
      v25 = atomic_load((a1 + 545));
      if ((v25 & 1) == 0 || v17 != 22 && v17 != 17)
      {
        goto LABEL_65;
      }

      if ((v11 - 502) < 2)
      {
        v26 = qword_100BCE930;
        if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 136315138;
          *&__p[4] = v12;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "AVRCP %s received during call session, ignoring", __p, 0xCu);
        }

        return;
      }

      if (v11 != 501)
      {
LABEL_65:
        v28 = sub_100066098(v23, v24);
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_1006C4BD8;
        v30[3] = &unk_100AE0880;
        v31 = v11;
        v30[4] = v32;
        v30[5] = v12;
        sub_10000CA94(v28, v30);
        v29 = sub_10056E904(a1 + 344, &v32);
        (*(**(*v29 + 8) + 8))(*(*v29 + 8), v32, v11);
        return;
      }

      v27 = qword_100BCE930;
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 136315138;
        *&__p[4] = v12;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "AVRCP %s received during call session, queueing resumption after session ends", __p, 0xCu);
      }

      *(a1 + 552) = v32;
    }

    else if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_100861D28();
    }
  }
}

uint64_t sub_1006C4B78(uint64_t a1, uint64_t a2)
{
  if (!a2 || !sub_10054FD60(a2))
  {
    return 0;
  }

  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  v2 = off_100B508E8;

  return sub_10056E240(v2);
}

void sub_1006C4BD8(uint64_t a1)
{
  if (sub_1000E2140(*(a1 + 32), 0xCu) && (*(a1 + 48) - 501) <= 1)
  {
    sub_1000BE6F8((*(a1 + 32) + 128), __p);
    if (v8 >= 0)
    {
      v2 = __p;
    }

    else
    {
      v2 = __p[0];
    }

    v3 = [NSString stringWithUTF8String:v2];
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v9[0] = @"CommandType";
    v4 = [NSString stringWithUTF8String:*(a1 + 40)];
    v9[1] = @"BTAddress";
    v10[0] = v4;
    v10[1] = v3;
    v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

    v6 = +[NSDistributedNotificationCenter defaultCenter];
    [v6 postNotificationName:@"com.apple.BTavrcp.CommandReceived" object:0 userInfo:v5];
  }
}

void sub_1006C4D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v17 = v15;

  _Unwind_Resume(a1);
}

void sub_1006C4D84(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v15 = 6488;
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v7 = sub_1000E6554(off_100B508E8, __p, 1);
  v8 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "unknown";
    if (a4 == 3)
    {
      v9 = "supported events";
    }

    if (a4 == 2)
    {
      v10 = "company ID";
    }

    else
    {
      v10 = v9;
    }

    sub_1000E5A58(v7, __p);
    if (v14 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *buf = 136446466;
    v17 = v10;
    v18 = 2082;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received 'get capabilities' (%{public}s) request from device %{public}s", buf, 0x16u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a4 == 2)
  {
    v12 = sub_100205578(a2, a3, 1, &v15);
  }

  else
  {
    if (a4 == 3)
    {
      sub_100206658(a2, a3, 7, &unk_1008C4D48);
      return;
    }

    v12 = sub_100205418(a2, a3, 16, 3306);
  }

  if (v12)
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_100861D64();
    }
  }
}

void sub_1006C4F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v5 = sub_1000E6554(off_100B508E8, __p, 1);
  v6 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v5, __p);
    v7 = v9 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received 'list player attributes' request from device %{public}s", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_1002066BC(a2, a3, 2, &unk_1008C4D4F))
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_100861DCC();
    }
  }
}

void sub_1006C50E4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v7 = sub_1000E6554(off_100B508E8, __p, 1);
  v8 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "unsupported";
    if (a4 == 3)
    {
      v9 = "shuffle mode";
    }

    if (a4 == 2)
    {
      v10 = "repeat mode";
    }

    else
    {
      v10 = v9;
    }

    sub_1000E5A58(v7, __p);
    if (v22 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *buf = 136446466;
    v24 = v10;
    v25 = 2082;
    v26 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received 'list player attribute value' (%{public}s) request from device %{public}s", buf, 0x16u);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v12 = &unk_1008C4D54;
      v13 = a2;
      v14 = a3;
      v15 = 3;
      v16 = 2;
      goto LABEL_22;
    }

    if (a4 != 4)
    {
      goto LABEL_23;
    }
  }

  else if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v12 = &unk_1008C4D51;
      v13 = a2;
      v14 = a3;
      v15 = 2;
      v16 = 3;
LABEL_22:
      v20 = sub_100206710(v13, v14, v15, v16, v12);
      goto LABEL_25;
    }

LABEL_23:
    v17 = a2;
    v18 = a3;
    v19 = 3306;
    goto LABEL_24;
  }

  v17 = a2;
  v18 = a3;
  v19 = 3301;
LABEL_24:
  v20 = sub_100205418(v17, v18, 18, v19);
LABEL_25:
  if (v20)
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_100861E34();
    }
  }
}

void sub_1006C5300(uint64_t a1, uint64_t a2, char a3, unsigned int a4, const void *a5)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  *buf = *a2;
  LOWORD(v27) = *(a2 + 4);
  v10 = sub_1000E6554(off_100B508E8, buf, 1);
  v24 = 0;
  v25 = v10;
  v23 = 0;
  sub_10000C704(&v23, a5, a4);
  v11 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v10, __p);
    v12 = "s";
    if (a4 == 1)
    {
      v12 = "";
    }

    *buf = 67109634;
    if (v22 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    v27 = a4;
    v28 = 2082;
    v29 = v12;
    v30 = 2082;
    v31 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received 'get player attribute value' (%u value%{public}s) request from device %{public}s", buf, 0x1Cu);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v14 = *(*sub_10056E904(a1 + 344, &v25) + 8);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3321888768;
  v15[2] = sub_1006C55D4;
  v15[3] = &unk_100B07B18;
  v19 = a4;
  v16 = &off_100AE0A78;
  v17 = v24;
  if (v24)
  {
    sub_10000C69C(v24);
  }

  v18 = v25;
  v20 = a3;
  (*(*v14 + 16))(v14, v15);
  v16 = &off_100AE0A78;
  if (v17)
  {
    sub_10000C808(v17);
  }

  v23 = &off_100AE0A78;
  if (v24)
  {
    sub_10000C808(v24);
  }
}

void sub_1006C5578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, atomic_uint *a21)
{
  if (a21)
  {
    sub_10000C808(a21);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1006C55D4(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v29 = 0;
  if (!*(a1 + 56))
  {
    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    v9 = 3301;
LABEL_25:
    v23 = sub_100205418((*(a1 + 48) + 128), *(a1 + 57), 19, v9);
    goto LABEL_28;
  }

  v5 = a4;
  v6 = a3;
  v7 = 0;
  v8 = 0;
  v25 = a3 - 1;
  v26 = a4 - 1;
  v9 = 3301;
  do
  {
    if (v8 >= 2u)
    {
      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      goto LABEL_27;
    }

    v10 = sub_10072502C(a1 + 32, v7);
    if (v10 > 2)
    {
      if (v10 != 3)
      {
        if (v10 == 4)
        {
LABEL_13:
          v9 = 3301;
          goto LABEL_21;
        }

LABEL_20:
        v9 = 3306;
        goto LABEL_21;
      }

      v18 = sub_10072502C(a1 + 32, v7);
      v19 = &buf[2 * v8 - 4];
      *v19 = v18;
      v19[1] = v5;
      ++v8;
      v20 = qword_100BCE930;
      if (!os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v21 = off_100B07B00[v26];
      sub_1000E5A58(*(a1 + 48), __p);
      v22 = __p;
      if (v28 < 0)
      {
        v22 = __p[0];
      }

      *buf = 136446466;
      v31 = v21;
      v32 = 2082;
      v33 = v22;
      v16 = v20;
      v17 = "Sending shuffle mode status '%{public}s' to device %{public}s";
    }

    else
    {
      if (v10 < 2)
      {
        goto LABEL_13;
      }

      if (v10 != 2)
      {
        goto LABEL_20;
      }

      v11 = sub_10072502C(a1 + 32, v7);
      v12 = &buf[2 * v8 - 4];
      *v12 = v11;
      v12[1] = v6;
      ++v8;
      v13 = qword_100BCE930;
      if (!os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v14 = off_100B07AE8[v25];
      sub_1000E5A58(*(a1 + 48), __p);
      v15 = __p;
      if (v28 < 0)
      {
        v15 = __p[0];
      }

      *buf = 136446466;
      v31 = v14;
      v32 = 2082;
      v33 = v15;
      v16 = v13;
      v17 = "Sending repeat mode status '%{public}s' to device %{public}s";
    }

    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 0x16u);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_21:
    ++v7;
  }

  while (v7 < *(a1 + 56));
  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  if (!v8)
  {
    goto LABEL_25;
  }

LABEL_27:
  v23 = sub_100206764((*(a1 + 48) + 128), *(a1 + 57), v8, &v29);
LABEL_28:
  if (v23 && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_100861E9C();
  }

  return sub_10002249C(__p);
}

void sub_1006C58C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

void sub_1006C58E0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  *buf = *a2;
  *&buf[4] = *(a2 + 4);
  v9 = sub_1000E6554(off_100B508E8, buf, 1);
  v34 = v9;
  v10 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a4 == 1 ? "" : "s";
    sub_1000E5A58(v9, v35);
    v12 = v38 >= 0 ? v35 : *v35;
    *buf = 67109634;
    *&buf[4] = a4;
    *&buf[8] = 2082;
    *&buf[10] = v11;
    v40 = 2082;
    v41 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received 'set player attribute value' (%d value%{public}s) request from device %{public}s", buf, 0x1Cu);
    if (v38 < 0)
    {
      operator delete(*v35);
      if (a4)
      {
        goto LABEL_12;
      }

LABEL_37:
      v18 = 3301;
      goto LABEL_38;
    }
  }

  if (!a4)
  {
    goto LABEL_37;
  }

LABEL_12:
  v32 = a3;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = a4;
  v17 = (a5 + 1);
  v18 = 3301;
  do
  {
    v19 = *(v17 - 1);
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v15 = *v17;
        if ((v15 - 1) <= 1)
        {
          v24 = qword_100BCE930;
          if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
          {
            v25 = off_100B07B00[(v15 - 1)];
            *buf = 136446210;
            *&buf[4] = v25;
            v22 = v24;
            v23 = "Setting shuffle mode to '%{public}s'";
            goto LABEL_24;
          }

LABEL_25:
          ++v13;
          goto LABEL_27;
        }
      }

      else if (v19 == 4)
      {
LABEL_20:
        v18 = 3301;
        goto LABEL_27;
      }
    }

    else
    {
      if (v19 < 2)
      {
        goto LABEL_20;
      }

      v14 = *v17;
      if ((v14 - 1) <= 2)
      {
        v20 = qword_100BCE930;
        if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
        {
          v21 = off_100B07AE8[(v14 - 1)];
          *buf = 136446210;
          *&buf[4] = v21;
          v22 = v20;
          v23 = "Setting repeat mode to '%{public}s'";
LABEL_24:
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
          goto LABEL_25;
        }

        goto LABEL_25;
      }
    }

    v18 = 3306;
LABEL_27:
    v17 += 2;
    --v16;
  }

  while (v16);
  v26 = v13 == 0;
  a3 = v32;
  if (!v26)
  {
    v27 = sub_10056E904(a1 + 344, &v34);
    (*(**(*v27 + 8) + 40))(*(*v27 + 8), v14, v15);
    v28 = sub_100205418(a2, v32, 20, 0);
    if (v28)
    {
      v29 = v28;
      v30 = qword_100BCE930;
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v34, buf);
        if (SBYTE3(v41) >= 0)
        {
          v31 = buf;
        }

        else
        {
          v31 = *buf;
        }

        *v35 = 136446466;
        *&v35[4] = v31;
        v36 = 1024;
        v37 = v29;
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to respond to set attribute value request on device %{public}s - result was %{bluetooth:OI_STATUS}u", v35, 0x12u);
        if (SBYTE3(v41) < 0)
        {
          operator delete(*buf);
        }
      }
    }

    return;
  }

LABEL_38:
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_100861F04();
  }

  if (sub_100205418(a2, a3, 20, v18) && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_100861F6C();
  }
}

uint64_t sub_1006C5CE4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  __p[0] = *a2;
  LOWORD(__p[1]) = *(a2 + 4);
  v7 = sub_1000E6554(off_100B508E8, __p, 1);
  v13 = v7;
  if (a4 <= 0xC && ((1 << a4) & 0x1F06) != 0)
  {
    operator new();
  }

  if (a4 - 1 >= 0xD)
  {
    v8 = 3306;
  }

  else
  {
    v8 = 3301;
  }

  v9 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    if (a4 - 1 >= 0xD)
    {
      v11 = "invalid";
    }

    else
    {
      v11 = "unimplemented";
    }

    sub_1000E5A58(v7, buf);
    if (v15 >= 0)
    {
      v12 = buf;
    }

    else
    {
      v12 = *buf;
    }

    __p[0] = 136446722;
    *&__p[1] = v11;
    v17 = 1024;
    v18 = a4;
    v19 = 2082;
    v20 = v12;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Received notification registration request for %{public}s event %d from device %{public}s", __p, 0x1Cu);
    if (v15 < 0)
    {
      operator delete(*buf);
    }
  }

  return sub_100205418(a2, a3, 49, v8);
}

uint64_t sub_1006C62D4(uint64_t a1, unsigned int a2, int a3, unint64_t a4, int *a5)
{
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, a1 + 280);
  v10 = *(a1 + 352);
  if (!v10)
  {
    goto LABEL_28;
  }

  v11 = a1 + 352;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a4;
    v14 = v12 < a4;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 != a1 + 352 && *(v11 + 32) <= a4)
  {
    v15 = *a5;
    v24 = *(a5 + 2);
    v23 = v15;
    v16 = *(a5 + 6);
    if (a3)
    {
      operator delete();
    }

    sub_10000801C(v25);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v17 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      v18 = a2 > 4 ? "unknown" : (&off_100B07FC0)[a2];
      sub_1000E5A58(a4, __p);
      *buf = 136446722;
      v19 = v22 >= 0 ? __p : __p[0];
      v27 = "interim";
      v28 = 2082;
      v29 = v18;
      v30 = 2082;
      v31 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Sending %{public}s notification for playback state '%{public}s' to device %{public}s", buf, 0x20u);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }
    }

    LOBYTE(v32) = 1;
    LOBYTE(v33) = a2;
    if (a2 <= 2)
    {
      sub_1003641E4(8);
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    sub_100206868(&v23, v16, &v32, 0);
    sub_100022214(buf);
    sub_10002249C(buf);
  }

  else
  {
LABEL_28:
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a4, buf);
      sub_100861FD4();
    }
  }

  return sub_1000088CC(v25);
}

void sub_1006C6538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

const char *sub_1006C6574(unsigned int a1)
{
  if (a1 > 4)
  {
    return "unknown";
  }

  else
  {
    return (&off_100B07FC0)[a1];
  }
}

uint64_t sub_1006C65A0(uint64_t a1, uint64_t a2, int a3, unint64_t a4, int *a5)
{
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1 + 280);
  v10 = *(a1 + 352);
  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = a1 + 352;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a4;
    v14 = v12 < a4;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 != a1 + 352 && *(v11 + 32) <= a4)
  {
    v15 = *a5;
    v23 = *(a5 + 2);
    v22 = v15;
    v16 = *(a5 + 6);
    if (a3)
    {
      operator delete();
    }

    sub_10000801C(v24);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v17 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a4, __p);
      *buf = 136446722;
      v18 = v21 >= 0 ? __p : __p[0];
      v26 = "interim";
      v27 = 2048;
      v28 = a2;
      v29 = 2082;
      v30 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Sending %{public}s notification for track ID [%llu] to device %{public}s", buf, 0x20u);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    LOBYTE(v31) = 2;
    v32 = a2;
    buf[0] = 0;
    sub_1000216B4(buf);
    sub_100206868(&v22, v16, &v31, 0);
    sub_100022214(buf);
    sub_10002249C(buf);
  }

  else
  {
LABEL_23:
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a4, buf);
      sub_100861FD4();
    }
  }

  return sub_1000088CC(v24);
}

void sub_1006C67D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C6810(uint64_t a1, int a2, int a3, int a4, unint64_t a5, int *a6)
{
  v29[0] = 0;
  v29[1] = 0;
  sub_100007F88(v29, a1 + 280);
  v12 = *(a1 + 352);
  if (!v12)
  {
    goto LABEL_23;
  }

  v13 = a1 + 352;
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
  if (v13 != a1 + 352 && *(v13 + 32) <= a5)
  {
    v17 = *a6;
    v28 = *(a6 + 2);
    v27 = v17;
    v18 = *(a6 + 6);
    if (a4)
    {
      operator delete();
    }

    sub_10000801C(v29);
    v26 = 196610;
    BYTE1(v26) = a2;
    HIBYTE(v26) = a3;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v19 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      v20 = off_100B07AE8[a2 - 1];
      v21 = off_100B07B00[a3 - 1];
      sub_1000E5A58(a5, __p);
      *buf = 136446978;
      v22 = v25 >= 0 ? __p : __p[0];
      v31 = "interim";
      v32 = 2082;
      v33 = v20;
      v34 = 2082;
      v35 = v21;
      v36 = 2082;
      v37 = v22;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending %{public}s notification for player settings '%{public}s'/'%{public}s' to device %{public}s", buf, 0x2Au);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }

    LOBYTE(v38) = 8;
    v39 = &v26;
    LOBYTE(v40) = 2;
    buf[0] = 0;
    sub_1000216B4(buf);
    sub_100206868(&v27, v18, &v38, 0);
    sub_100022214(buf);
    sub_10002249C(buf);
  }

  else
  {
LABEL_23:
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a5, buf);
      sub_100861FD4();
    }
  }

  return sub_1000088CC(v29);
}

void sub_1006C6A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C6AD0(uint64_t a1, int a2, unint64_t a3, int *a4)
{
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 280);
  v8 = *(a1 + 352);
  if (!v8)
  {
    goto LABEL_23;
  }

  v9 = a1 + 352;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a3;
    v12 = v10 < a3;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 != a1 + 352 && *(v9 + 32) <= a3)
  {
    v13 = *a4;
    v19 = *(a4 + 2);
    v18 = v13;
    v14 = *(a4 + 6);
    if (a2)
    {
      operator delete();
    }

    sub_10000801C(v21);
    memset(v20, 0, sizeof(v20));
    v15 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a3, __p);
      v16 = v23 >= 0 ? __p : __p[0];
      *buf = 136446466;
      v25 = "interim";
      v26 = 2082;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sending %{public}s notification for now playing content to device %{public}s", buf, 0x16u);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    LOBYTE(v20[0]) = 9;
    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    sub_100206868(&v18, v14, v20, 0);
    sub_100022214(__p);
    sub_10002249C(__p);
  }

  else
  {
LABEL_23:
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a3, v20);
      sub_100861FD4();
    }
  }

  return sub_1000088CC(v21);
}

void sub_1006C6CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C6D2C(uint64_t a1, int a2, unint64_t a3, int *a4)
{
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 280);
  v8 = *(a1 + 352);
  if (!v8)
  {
    goto LABEL_23;
  }

  v9 = a1 + 352;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a3;
    v12 = v10 < a3;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 != a1 + 352 && *(v9 + 32) <= a3)
  {
    v13 = *a4;
    v19 = *(a4 + 2);
    v18 = v13;
    v14 = *(a4 + 6);
    if (a2)
    {
      operator delete();
    }

    sub_10000801C(v21);
    memset(v20, 0, sizeof(v20));
    v15 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a3, __p);
      v16 = v23 >= 0 ? __p : __p[0];
      *buf = 136446466;
      v25 = "interim";
      v26 = 2082;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sending %{public}s notification for available players to device %{public}s", buf, 0x16u);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    LOBYTE(v20[0]) = 10;
    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    sub_100206868(&v18, v14, v20, 0);
    sub_100022214(__p);
    sub_10002249C(__p);
  }

  else
  {
LABEL_23:
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a3, v20);
      sub_100861FD4();
    }
  }

  return sub_1000088CC(v21);
}

void sub_1006C6F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C6F88(uint64_t a1, int a2, __int16 a3, int a4, unint64_t a5, int *a6)
{
  v26[0] = 0;
  v26[1] = 0;
  sub_100007F88(v26, a1 + 280);
  v12 = *(a1 + 352);
  if (!v12)
  {
    goto LABEL_23;
  }

  v13 = a1 + 352;
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
  if (v13 != a1 + 352 && *(v13 + 32) <= a5)
  {
    v17 = *a6;
    v25 = *(a6 + 2);
    v24 = v17;
    v18 = *(a6 + 6);
    if (a4)
    {
      operator delete();
    }

    sub_10000801C(v26);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v19 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a5, __p);
      *buf = 136446722;
      v20 = v23 >= 0 ? __p : __p[0];
      v28 = "interim";
      v29 = 1024;
      v30 = a2;
      v31 = 2082;
      v32 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending %{public}s notification for player addressed %u to device %{public}s", buf, 0x1Cu);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    LOBYTE(v33) = 11;
    LOWORD(v34) = a2;
    WORD1(v34) = a3;
    buf[0] = 0;
    sub_1000216B4(buf);
    sub_100206868(&v24, v18, &v33, 0);
    sub_100022214(buf);
    sub_10002249C(buf);
  }

  else
  {
LABEL_23:
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a5, buf);
      sub_100861FD4();
    }
  }

  return sub_1000088CC(v26);
}

void sub_1006C71C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C7208(uint64_t a1, int a2, int a3, unint64_t a4, int *a5)
{
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1 + 280);
  v10 = *(a1 + 352);
  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = a1 + 352;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a4;
    v14 = v12 < a4;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 != a1 + 352 && *(v11 + 32) <= a4)
  {
    v15 = *a5;
    v23 = *(a5 + 2);
    v22 = v15;
    v16 = *(a5 + 6);
    if (a3)
    {
      operator delete();
    }

    sub_10000801C(v24);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v17 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a4, __p);
      *buf = 136446722;
      v18 = v21 >= 0 ? __p : __p[0];
      v26 = "interim";
      v27 = 1024;
      v28 = a2;
      v29 = 2082;
      v30 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Sending %{public}s notification for uidCounter %u to device %{public}s", buf, 0x1Cu);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    LOBYTE(v31) = 12;
    LOWORD(v32) = a2;
    buf[0] = 0;
    sub_1000216B4(buf);
    sub_100206868(&v22, v16, &v31, 0);
    sub_100022214(buf);
    sub_10002249C(buf);
  }

  else
  {
LABEL_23:
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a4, buf);
      sub_100861FD4();
    }
  }

  return sub_1000088CC(v24);
}

void sub_1006C7438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C7478(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v6 = sub_1000E6554(off_100B508E8, __p, 1);
  v15 = v6;
  v7 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v6, __p);
    if (v14 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 136446210;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received 'get play status' request from device %{public}s", buf, 0xCu);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = *(*sub_10056E904(a1 + 344, &v15) + 8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1006C7634;
  v11[3] = &unk_100B07B48;
  v11[4] = v15;
  v12 = a3;
  return (*(*v9 + 32))(v9, v11);
}

_BYTE *sub_1006C7634(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5)
{
  v15[1] = a4;
  v15[0] = a3;
  v15[2] = a5;
  v9 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_INFO))
  {
    v10 = a5 > 4 ? "unknown" : (&off_100B07FC0)[a5];
    sub_1000E5A58(*(a1 + 32), __p);
    v11 = v14 >= 0 ? __p : __p[0];
    *buf = 136446978;
    v17 = v10;
    v18 = 1024;
    v19 = a4;
    v20 = 1024;
    v21 = a3;
    v22 = 2082;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Sending current play status (%{public}s - %u of %ums) to device %{public}s", buf, 0x22u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  if (sub_1002067B8((*(a1 + 32) + 128), *(a1 + 40), v15) && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_100862028();
  }

  return sub_10002249C(buf);
}

void sub_1006C77C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

void sub_1006C77E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a3;
  v22[0] = 0;
  v22[1] = 0;
  v8 = sub_1002068C4(a2, a3, a4, v22);
  if (qword_100B508F0 != -1)
  {
    sub_100862090();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v9 = sub_1000E6554(off_100B508E8, __p, 1);
  v21 = v9;
  v10 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_INFO))
  {
    sub_1000E5A58(v9, __p);
    v11 = v20 >= 0 ? __p : __p[0];
    *buf = 67109378;
    *v24 = a4;
    *&v24[4] = 2082;
    *&v24[6] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Received 'continue' command for PDU 0x%x from device %{public}s", buf, 0x12u);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v8 != 3304)
  {
    if (v8)
    {
      v17 = qword_100BCE930;
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v9, __p);
        v18 = v20 >= 0 ? __p : __p[0];
        *buf = 136446466;
        *v24 = v18;
        *&v24[8] = 1024;
        *&v24[10] = v8;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to continue response for device %{public}s - result was %{bluetooth:OI_STATUS}u", buf, 0x12u);
        if (v20 < 0)
        {
          v16 = __p[0];
LABEL_15:
          operator delete(v16);
        }
      }
    }

    else
    {
      __p[0] = &v21;
      v12 = sub_10041F204(a1 + 480, &v21, &unk_1008A9BD0, __p);
      LOBYTE(__p[0]) = v5;
      BYTE1(__p[0]) = a4;
      v13 = sub_1006CF450((v12 + 5), __p);
      __p[0] = &v21;
      v14 = sub_10041F204(a1 + 480, &v21, &unk_1008A9BD0, __p);
      if (v14 + 6 != v13)
      {
        if (a4 == 32)
        {
          sub_1006C41AC(v14, v13[5]);
        }

        __p[0] = &v21;
        v15 = sub_10041F204(a1 + 480, &v21, &unk_1008A9BD0, __p);
        sub_10002717C(v15 + 5, v13);
        v16 = v13;
        goto LABEL_15;
      }
    }
  }
}

uint64_t sub_1006C7A8C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, __p, 1);
  v18 = v8;
  v9 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_INFO))
  {
    sub_1000E5A58(v8, __p);
    v10 = v17 >= 0 ? __p : __p[0];
    *buf = 67109378;
    v20 = a4;
    v21 = 2082;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Received 'abort' command for PDU 0x%x from device %{public}s", buf, 0x12u);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = &v18;
  v11 = sub_10041F204(a1 + 480, &v18, &unk_1008A9BD0, __p);
  LOBYTE(__p[0]) = a3;
  BYTE1(__p[0]) = a4;
  v12 = sub_1006CF450((v11 + 5), __p);
  __p[0] = &v18;
  v13 = sub_10041F204(a1 + 480, &v18, &unk_1008A9BD0, __p);
  if (v13 + 6 != v12)
  {
    if (a4 == 32)
    {
      sub_1006C41AC(v13, v12[5]);
    }

    __p[0] = &v18;
    v14 = sub_10041F204(a1 + 480, &v18, &unk_1008A9BD0, __p);
    sub_10002717C(v14 + 5, v12);
    operator delete(v12);
  }

  return sub_100205418(a2, a3, 65, 0);
}

uint64_t sub_1006C7C98(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, __p, 1);
  v17 = v8;
  v9 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v8, __p);
    if (v16 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 67109378;
    v19 = a4;
    v20 = 2082;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received 'SetAddressedPlayer' request (id - %u) from device %{public}s", buf, 0x12u);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = *(*sub_10056E904(a1 + 344, &v17) + 8);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1006C7E68;
  v13[3] = &unk_100B07B68;
  v13[4] = a1;
  v13[5] = v17;
  v14 = a3;
  return (*(*v11 + 104))(v11, a4, v13);
}

_BYTE *sub_1006C7E68(uint64_t a1, int a2)
{
  v17 = 0x1000060581900;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v4 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(*(a1 + 40), __p);
    v5 = v9 >= 0 ? __p : __p[0];
    *buf = 67109378;
    v14 = a2;
    v15 = 2082;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending 'SetAddressedPlayer' response (result - %02x) to device %{public}s", buf, 0x12u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  HIBYTE(v17) = a2;
  if (a2 == 4)
  {
    v6 = 9;
  }

  else
  {
    v6 = 10;
  }

  LOBYTE(v10) = v6;
  *(&v10 + 1) = 9;
  BYTE3(v10) = 0;
  v11 = &v17;
  LOWORD(v12) = 8;
  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  if (sub_100208F8C((*(a1 + 40) + 128), *(a1 + 48), &v10) && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_1008620B8();
  }

  return sub_10002249C(__p);
}

void sub_1006C7FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C800C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, __p, 1);
  v17 = v8;
  v9 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v8, __p);
    if (v16 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 67109378;
    v19 = a4;
    v20 = 2082;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received 'SetBrowsedPlayer' request (id - %u) from device %{public}s", buf, 0x12u);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = *(*sub_10056E904(a1 + 344, &v17) + 8);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1006C81DC;
  v13[3] = &unk_100B07B88;
  v13[4] = v17;
  v14 = a3;
  return (*(*v11 + 112))(v11, a4, v13);
}

_BYTE *sub_1006C81DC(uint64_t a1, int a2, __int16 a3, int a4, uint64_t a5)
{
  if (a2 == 4)
  {
    v10 = *(a5 + 8);
    v11 = 13;
    while (v10 != a5)
    {
      v12 = *(v10 + 39);
      if (v12 < 0)
      {
        v12 = *(v10 + 24);
      }

      v11 += v12 + 2;
      v10 = *(v10 + 8);
    }
  }

  else
  {
    v11 = 4;
  }

  v13 = qword_100BCE930;
  v14 = os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    sub_1000E5A58(*(a1 + 32), v37);
    v15 = v11;
    if (v38 >= 0)
    {
      v16 = v37;
    }

    else
    {
      v16 = v37[0];
    }

    *buf = 67109890;
    v40 = a2;
    v41 = 1024;
    v42 = a4;
    v43 = 1024;
    v44 = v11;
    v45 = 2082;
    v46 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Sending 'SetBrowsedPlayer' response (result - %02x, nbItems - %u, length - %u) to device %{public}s", buf, 0x1Eu);
    if (v38 < 0)
    {
      operator delete(v37[0]);
    }
  }

  else
  {
    v15 = v11;
  }

  __chkstk_darwin(v14);
  v18 = &v37[-1] - v17;
  bzero(&v37[-1] - v17, v19);
  *v18 = 112;
  v18[2] = v15 - 3;
  v18[1] = (v15 - 3) >> 8;
  v18[3] = a2;
  if (a2 == 4)
  {
    v18[5] = a3;
    v18[4] = HIBYTE(a3);
    v18[9] = a4;
    v18[8] = BYTE1(a4);
    v18[7] = BYTE2(a4);
    v18[6] = HIBYTE(a4);
    *(v18 + 5) = 27136;
    v20 = *(a5 + 8);
    v18[12] = *(a5 + 16);
    if (v20 == a5)
    {
      v26 = 13;
    }

    else
    {
      v21 = 13;
      do
      {
        v22 = *(v20 + 39);
        if ((v22 & 0x8000000000000000) != 0)
        {
          v25 = &v18[v21];
          v25[1] = *(v20 + 24);
          *v25 = BYTE1(*(v20 + 24));
          v24 = v21 + 2;
          memcpy(&v18[(v21 + 2)], *(v20 + 16), *(v20 + 24));
          v22 = *(v20 + 24);
        }

        else
        {
          v23 = &v18[v21];
          v23[1] = v22;
          *v23 = 0;
          v24 = v21 + 2;
          memcpy(&v18[(v21 + 2)], (v20 + 16), v22);
        }

        v21 = v24 + v22;
        v20 = *(v20 + 8);
      }

      while (v20 != a5);
      v26 = (v24 + v22);
    }
  }

  else
  {
    v26 = 4;
  }

  if (v26 != v15)
  {
    v27 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_FAULT))
    {
      sub_100862120(v27, v28, v29, v30, v31, v32, v33, v34);
    }
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  if (sub_100208FE8(*(a1 + 32) + 128, *(a1 + 40), v18, v11) && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_100862198();
  }

  return sub_10002249C(buf);
}

uint64_t sub_1006C84F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5, uint64_t *a6)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  *buf = *a2;
  LOWORD(v25) = *(a2 + 4);
  v12 = sub_1000E6554(off_100B508E8, buf, 1);
  v23 = v12;
  v13 = *a6;
  v14 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    if (a5)
    {
      v15 = "down";
    }

    else
    {
      v15 = "up";
    }

    sub_1000E5A58(v12, __p);
    if (v22 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    *buf = 136315650;
    v25 = v15;
    v26 = 1024;
    v27 = a4;
    v28 = 2082;
    v29 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received 'ChangePath(%s)' request (uidCounter - %u) from device %{public}s", buf, 0x1Cu);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v17 = *(*sub_10056E904(a1 + 344, &v23) + 8);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1006C8710;
  v19[3] = &unk_100B07BA8;
  v19[4] = v23;
  v20 = a3;
  return (*(*v17 + 120))(v17, a4, a5 == 0, v13, v19);
}

_BYTE *sub_1006C8710(uint64_t a1, int a2, unsigned int a3)
{
  if (a2 == 4)
  {
    v6 = 8;
  }

  else
  {
    v6 = 4;
  }

  v7 = qword_100BCE930;
  v8 = os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    sub_1000E5A58(*(a1 + 32), v23);
    v9 = v24 >= 0 ? v23 : v23[0];
    *buf = 67109634;
    v26 = a2;
    v27 = 1024;
    v28 = a3;
    v29 = 2082;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending 'ChangePath' response (result - %02x, nbItems - %u) to device %{public}s", buf, 0x18u);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }
  }

  __chkstk_darwin(v8);
  v11 = &v23[-1] - v10;
  bzero(&v23[-1] - v10, v6);
  *v11 = 114;
  v11[2] = v6 - 3;
  v11[3] = a2;
  if (a2 == 4)
  {
    *(v11 + 1) = bswap32(a3);
    v12 = 8;
  }

  else
  {
    v12 = 4;
  }

  if (v12 != v6)
  {
    v13 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_FAULT))
    {
      sub_100862120(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  if (sub_100208FE8(*(a1 + 32) + 128, *(a1 + 40), v11, v6) && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_100862200();
  }

  return sub_10002249C(buf);
}

void *sub_1006C8924(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  *buf = *a2;
  LOWORD(v28) = *(a2 + 4);
  v14 = sub_1000E6554(off_100B508E8, buf, 1);
  v26 = v14;
  v15 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    v16 = a4 > 3 ? "Unknown" : (&off_100B08028)[a4];
    sub_1000E5A58(v14, __p);
    v17 = v25 >= 0 ? __p : __p[0];
    *buf = 136315906;
    v28 = v16;
    v29 = 1024;
    v30 = a5;
    v31 = 1024;
    v32 = a6;
    v33 = 2082;
    v34 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received 'GetFolderItems(%s)' request (startItem - %u, endItem - %u) from device %{public}s", buf, 0x22u);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a4 > 3)
  {
    *buf = 167837809;
    return sub_100208FE8(a2, a3, buf, 4uLL);
  }

  else
  {
    v18 = *(*sub_10056E904(a1 + 344, &v26) + 8);
    sub_1006C8BB8(a8, a7, buf);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1006C8E84;
    v22[3] = &unk_100B07BC8;
    v22[4] = a1;
    v22[5] = v26;
    v23 = a3;
    (*(*v18 + 128))(v18, a4, a5, a6, buf, v22);
    return sub_100028EB4(buf);
  }
}

void sub_1006C8B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_100028EB4(va);
  _Unwind_Resume(a1);
}

void sub_1006C8BB8(uint64_t a1@<X1>, unsigned int a2@<W2>, uint64_t *a3@<X8>)
{
  *a3 = a3;
  a3[1] = a3;
  a3[2] = 0;
  if (!a2)
  {
    operator new();
  }

  if (a1)
  {
    operator new();
  }
}

void sub_1006C8E84(uint64_t a1, int a2, __int16 a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 512);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = a4;
  v10 = v5 + 512;
  v11 = *(a1 + 40);
  v12 = v5 + 512;
  do
  {
    v13 = *(v6 + 32);
    v14 = v13 >= v11;
    v15 = v13 < v11;
    if (v14)
    {
      v12 = v6;
    }

    v6 = *(v6 + 8 * v15);
  }

  while (v6);
  if (v12 != v10 && v11 >= *(v12 + 32))
  {
    if (a2 == 4)
    {
      v18 = *(a4 + 8);
      if (v18 == a4)
      {
        v19 = 0;
        LOWORD(v20) = 8;
        v18 = a4;
      }

      else
      {
        v19 = 0;
        v20 = *(v12 + 40);
        v21 = 8;
        while (1)
        {
          v22 = (*(**(v18 + 16) + 16))(*(v18 + 16));
          v23 = v22 + v21;
          if (v18 != *(v7 + 8) && v20 < v23)
          {
            break;
          }

          ++v19;
          v18 = *(v18 + 8);
          v21 += v22;
          if (v18 == v7)
          {
            v18 = v7;
            LOWORD(v20) = v23;
            goto LABEL_24;
          }
        }

        if (v20 >= v21)
        {
          LOWORD(v20) = v21;
        }

        else if (v19 == 1)
        {
          v19 = 1;
        }

        else
        {
          v47 = qword_100BCE930;
          if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_FAULT))
          {
            sub_100862268(v47, v48, v49, v50, v51, v52, v53, v54);
          }
        }
      }
    }

    else
    {
      v18 = 0;
      v19 = 0;
      LOWORD(v20) = 4;
    }

LABEL_24:
    v24 = qword_100BCE930;
    v25 = os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT);
    if (v25)
    {
      sub_1000E5A58(*(a1 + 40), v57);
      v26 = v20;
      v27 = v57;
      if (v58 < 0)
      {
        v27 = *v57;
      }

      *buf = 67109890;
      *&buf[4] = a2;
      *&buf[8] = 1024;
      *&buf[10] = v19;
      *&buf[14] = 1024;
      LODWORD(v60[0]) = v20;
      WORD2(v60[0]) = 2082;
      *(v60 + 6) = v27;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Sending 'GetFolderItems' response (result - %02x, nbItems - %u, length - %u) to device %{public}s", buf, 0x1Eu);
      if (v58 < 0)
      {
        operator delete(*v57);
      }
    }

    else
    {
      v26 = v20;
    }

    v55[1] = v55;
    __chkstk_darwin(v25);
    v29 = v55 - v28;
    bzero(v55 - v28, v30);
    *v29 = 113;
    v29[2] = v26 - 3;
    v29[1] = (v26 - 3) >> 8;
    v29[3] = a2;
    if (a2 == 4)
    {
      v29[5] = a3;
      v29[4] = HIBYTE(a3);
      v29[7] = v19;
      v29[6] = HIBYTE(v19);
      v32 = 8;
      *&v31 = 136315138;
      v56 = v31;
      do
      {
        v7 = *(v7 + 8);
        if (v7 == v18)
        {
          break;
        }

        v33 = qword_100BCE930;
        if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *(v7 + 16);
          if (*(v34 + 47) < 0)
          {
            sub_100008904(buf, *(v34 + 24), *(v34 + 32));
          }

          else
          {
            *buf = *(v34 + 24);
            v60[0] = *(v34 + 40);
          }

          v35 = buf;
          if (v60[0] < 0)
          {
            v35 = *buf;
          }

          *v57 = v56;
          *&v57[4] = v35;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Sending item %s", v57, 0xCu);
          if (SHIBYTE(v60[0]) < 0)
          {
            operator delete(*buf);
          }
        }

        v36 = *(v7 + 16);
        v37 = v20 >= v32 ? v20 - v32 : 0;
        if ((*(*v36 + 24))(*(v7 + 16)) > v37)
        {
          break;
        }

        v38 = (*(*v36 + 32))(v36, &v29[v32], v37);
        v32 += v38;
      }

      while (v38);
    }

    else
    {
      v32 = 4;
    }

    if (v32 > v20)
    {
      v39 = qword_100BCE930;
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_FAULT))
      {
        sub_1008622E0(v39, v40, v41, v42, v43, v44, v45, v46);
      }
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    if (sub_100208FE8(*(a1 + 40) + 128, *(a1 + 48), v29, v32) && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_100862358();
    }

    sub_10002249C(buf);
  }

  else
  {
LABEL_9:
    v16 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1008623C0((a1 + 40), v16, v17);
    }
  }
}

void *sub_1006C9348(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, uint64_t a6, unsigned int a7, uint64_t a8)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  *buf = *a2;
  LOWORD(v29) = *(a2 + 4);
  v14 = sub_1000E6554(off_100B508E8, buf, 1);
  v27 = v14;
  v15 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    v16 = a4 > 3 ? "Unknown" : (&off_100B08028)[a4];
    sub_1000E5A58(v14, __p);
    v17 = v26 >= 0 ? __p : __p[0];
    *buf = 136315650;
    v29 = v16;
    v30 = 1024;
    v31 = a6;
    v32 = 2082;
    v33 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received 'GetItemAttributes(%s)' request (uidCounter - %u) from device %{public}s", buf, 0x1Cu);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if ((a4 - 1) > 2)
  {
    *buf = 167837811;
    return sub_100208FE8(a2, a3, buf, 4uLL);
  }

  else
  {
    v18 = *a5;
    v19 = *(*sub_10056E904(a1 + 344, &v27) + 8);
    sub_1006C8BB8(a8, a7, buf);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1006C95DC;
    v23[3] = &unk_100B07BE8;
    v23[4] = a1;
    v23[5] = v27;
    v24 = a3;
    (*(*v19 + 136))(v19, a4, v18, a6, buf, v23);
    return sub_100028EB4(buf);
  }
}

void sub_1006C95C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_100028EB4(va);
  _Unwind_Resume(a1);
}

void sub_1006C95DC(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 512);
  if (!v5)
  {
    goto LABEL_9;
  }

  v8 = *(a1 + 40);
  v9 = v4 + 512;
  do
  {
    v10 = *(v5 + 32);
    v11 = v10 >= v8;
    v12 = v10 < v8;
    if (v11)
    {
      v9 = v5;
    }

    v5 = *(v5 + 8 * v12);
  }

  while (v5);
  if (v9 == v4 + 512 || v8 < *(v9 + 32))
  {
LABEL_9:
    v13 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_100862534((a1 + 40), v13, v14);
    }

    return;
  }

  if (a2 != 4)
  {
    v19 = 0;
    v16 = 0;
    LOWORD(v17) = 4;
    goto LABEL_29;
  }

  v15 = *(a3 + 8);
  if (v15 == a3)
  {
    v16 = 0;
    LOWORD(v17) = 5;
    v19 = a3;
    goto LABEL_29;
  }

  v16 = 0;
  v17 = *(v9 + 40);
  v18 = 5;
  v19 = *(a3 + 8);
  while (1)
  {
    v20 = *(v19 + 16);
    if (*(v20 + 4) == 8 && v8 != *(v4 + 528))
    {
      goto LABEL_21;
    }

    v21 = *(v20 + 31);
    if (v21 < 0)
    {
      v21 = *(v20 + 16);
    }

    if (v19 != v15 && v17 < (v18 + v21 + 8))
    {
      break;
    }

    ++v16;
    v18 += v21 + 8;
LABEL_21:
    v19 = *(v19 + 8);
    if (v19 == a3)
    {
      v19 = a3;
LABEL_28:
      LOWORD(v17) = v18;
      goto LABEL_29;
    }
  }

  if (v17 >= v18)
  {
    goto LABEL_28;
  }

  if (v16 == 1)
  {
    v16 = 1;
  }

  else
  {
    v49 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_FAULT))
    {
      sub_100862454(v49, v50, v51, v52, v53, v54, v55, v56);
    }
  }

LABEL_29:
  v22 = qword_100BCE930;
  v23 = os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT);
  if (v23)
  {
    sub_1000E5A58(*(a1 + 40), v59);
    v24 = v17;
    if (v62 >= 0)
    {
      v25 = v59;
    }

    else
    {
      v25 = *v59;
    }

    *buf = 67109890;
    *&buf[4] = a2;
    *&buf[8] = 1024;
    *&buf[10] = v16;
    *&buf[14] = 1024;
    LODWORD(v64[0]) = v17;
    WORD2(v64[0]) = 2082;
    *(v64 + 6) = v25;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Sending 'GetItemAttributes' response (result - %02x, nbAttributes - %u, length - %u) to device %{public}s", buf, 0x1Eu);
    if (v62 < 0)
    {
      operator delete(*v59);
    }
  }

  else
  {
    v24 = v17;
  }

  v57[1] = v57;
  __chkstk_darwin(v23);
  v27 = v57 - v26;
  bzero(v57 - v26, v28);
  *v27 = 115;
  v27[2] = v24 - 3;
  v27[1] = (v24 - 3) >> 8;
  v27[3] = a2;
  if (a2 == 4)
  {
    v27[4] = v16;
    v30 = *(a3 + 8);
    v31 = 5;
    if (v30 != v19)
    {
      *&v29 = 136315394;
      v58 = v29;
      do
      {
        v32 = *(v30 + 16);
        v33 = *(v32 + 4);
        if (v33 != 8 || *(a1 + 40) == *(v4 + 528))
        {
          v34 = qword_100BCE930;
          v35 = os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT);
          if (v35)
          {
            v36 = sub_1006C9A88(v35, v33);
            if (*(v32 + 31) < 0)
            {
              sub_100008904(buf, *(v32 + 8), *(v32 + 16));
            }

            else
            {
              v37 = *(v32 + 8);
              v64[0] = *(v32 + 24);
              *buf = v37;
            }

            v38 = buf;
            if (v64[0] < 0)
            {
              v38 = *buf;
            }

            *v59 = v58;
            *&v59[4] = v36;
            v60 = 2080;
            v61 = v38;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Sending '%s' attribute: %s", v59, 0x16u);
            if (SHIBYTE(v64[0]) < 0)
            {
              operator delete(*buf);
            }

            v32 = *(v30 + 16);
          }

          v39 = v17 >= v31 ? v17 - v31 : 0;
          v40 = sub_10043CEF4(v32, &v27[v31], v39);
          v31 += v40;
          if (!v40)
          {
            break;
          }
        }

        v30 = *(v30 + 8);
      }

      while (v30 != v19);
    }
  }

  else
  {
    v31 = 4;
  }

  if (v31 > v17)
  {
    v41 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_FAULT))
    {
      sub_1008622E0(v41, v42, v43, v44, v45, v46, v47, v48);
    }
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  if (sub_100208FE8(*(a1 + 40) + 128, *(a1 + 48), v27, v31) && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_1008624CC();
  }

  sub_10002249C(buf);
}

const char *sub_1006C9A88(uint64_t a1, int a2)
{
  if ((a2 - 1) > 7)
  {
    return "Unknown";
  }

  else
  {
    return (&off_100B07FE8)[a2 - 1];
  }
}

void sub_1006C9AB0(uint64_t a1, uint64_t a2, unsigned int a3, int a4, unsigned int a5, const void *a6)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(__dst[0]) = *a2;
  WORD2(__dst[0]) = *(a2 + 4);
  v12 = sub_1000E6554(off_100B508E8, __dst, 1);
  v24 = 0;
  v25 = v12;
  __dst[0] = 0;
  __dst[1] = 0;
  if (a5 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v24) = a5;
  if (a5)
  {
    memcpy(__dst, a6, a5);
  }

  *(__dst + a5) = 0;
  v13 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    v14 = SHIBYTE(v24);
    v15 = __dst[0];
    sub_1000E5A58(v25, __p);
    v16 = __dst;
    if (v14 < 0)
    {
      v16 = v15;
    }

    if (v22 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    *buf = 136315394;
    v27 = v16;
    v28 = 2082;
    v29 = v17;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received 'Search(%s)' request from device %{public}s", buf, 0x16u);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a4 == 106)
  {
    v18 = *(*sub_10056E904(a1 + 344, &v25) + 8);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1006C9D74;
    v19[3] = &unk_100B07C08;
    v19[4] = v25;
    v20 = a3;
    (*(*v18 + 144))(v18, __dst, v19);
  }

  else
  {
    LODWORD(__p[0]) = 16842880;
    sub_100208FE8(a2, a3, __p, 4uLL);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1006C9D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1006C9D74(uint64_t a1, int a2, __int16 a3, int a4)
{
  v5 = HIBYTE(a3);
  if (a2 == 4)
  {
    v8 = 10;
  }

  else
  {
    v8 = 4;
  }

  v9 = qword_100BCE930;
  v10 = os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    sub_1000E5A58(*(a1 + 32), v25);
    v11 = v26 >= 0 ? v25 : v25[0];
    *buf = 67109634;
    v28 = a2;
    v29 = 1024;
    v30 = a4;
    v31 = 2082;
    v32 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending 'Search' response (result - %02x, nbItems - %u) to device %{public}s", buf, 0x18u);
    if (v26 < 0)
    {
      operator delete(v25[0]);
    }
  }

  __chkstk_darwin(v10);
  v13 = &v25[-1] - v12;
  bzero(&v25[-1] - v12, v8);
  *v13 = 128;
  v13[2] = v8 - 3;
  v13[3] = a2;
  if (a2 == 4)
  {
    v13[5] = v5;
    v13[4] = 0;
    v13[9] = a4;
    v13[8] = BYTE1(a4);
    v13[7] = BYTE2(a4);
    v14 = 10;
    v13[6] = HIBYTE(a4);
  }

  else
  {
    v14 = 4;
  }

  if (v14 != v8)
  {
    v15 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_FAULT))
    {
      sub_100862120(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  if (sub_100208FE8(*(a1 + 32) + 128, *(a1 + 40), v13, v8) && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_1008625C8();
  }

  return sub_10002249C(buf);
}

uint64_t sub_1006C9FAC(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, __p, 1);
  v18 = v8;
  v9 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a4 > 3 ? "Unknown" : (&off_100B08028)[a4];
    sub_1000E5A58(v8, __p);
    v11 = v17 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v20 = v10;
    v21 = 2082;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received 'GetTotalNumberOfItems(%s)' request from device %{public}s", buf, 0x16u);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a4 > 3)
  {
    LODWORD(__p[0]) = 167837813;
    return sub_100208FE8(a2, a3, __p, 4uLL);
  }

  else
  {
    v12 = *(*sub_10056E904(a1 + 344, &v18) + 8);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1006CA1D0;
    v14[3] = &unk_100B07C08;
    v14[4] = v18;
    v15 = a3;
    return (*(*v12 + 152))(v12, a4, v14);
  }
}

_BYTE *sub_1006CA1D0(uint64_t a1, int a2, __int16 a3, int a4)
{
  v5 = HIBYTE(a3);
  if (a2 == 4)
  {
    v8 = 10;
  }

  else
  {
    v8 = 4;
  }

  v9 = qword_100BCE930;
  v10 = os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    sub_1000E5A58(*(a1 + 32), v25);
    v11 = v26 >= 0 ? v25 : v25[0];
    *buf = 67109634;
    v28 = a2;
    v29 = 1024;
    v30 = a4;
    v31 = 2082;
    v32 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending 'GetTotalNumberOfItems' response (result - %02x, nbItems - %u) to device %{public}s", buf, 0x18u);
    if (v26 < 0)
    {
      operator delete(v25[0]);
    }
  }

  __chkstk_darwin(v10);
  v13 = &v25[-1] - v12;
  bzero(&v25[-1] - v12, v8);
  *v13 = 117;
  v13[2] = v8 - 3;
  v13[3] = a2;
  if (a2 == 4)
  {
    v13[5] = v5;
    v13[4] = 0;
    v13[9] = a4;
    v13[8] = BYTE1(a4);
    v13[7] = BYTE2(a4);
    v14 = 10;
    v13[6] = HIBYTE(a4);
  }

  else
  {
    v14 = 4;
  }

  if (v14 != v8)
  {
    v15 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_FAULT))
    {
      sub_100862120(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  if (sub_100208FE8(*(a1 + 32) + 128, *(a1 + 40), v13, v8) && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_100862630();
  }

  return sub_10002249C(buf);
}

uint64_t sub_1006CA408(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  *buf = *a2;
  *&buf[4] = *(a2 + 4);
  v12 = sub_1000E6554(off_100B508E8, buf, 1);
  v21 = v12;
  v13 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    v14 = a4 > 3 ? "Unknown" : (&off_100B08028)[a4];
    sub_1000E5A58(v12, __p);
    v15 = v23 >= 0 ? __p : __p[0];
    *buf = 136315650;
    *&buf[4] = v14;
    *&buf[12] = 1024;
    *&buf[14] = a6;
    *&buf[18] = 2082;
    *&buf[20] = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received 'PlayItem(%s)' request (uidCounter - %u) from device %{public}s", buf, 0x1Cu);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if ((a4 - 1) > 2)
  {
    __p[0] = 0xA01000074581900;
    *buf = 2314;
    *&buf[8] = __p;
    *&buf[16] = 8;
    return sub_100208F8C(a2, a3, buf);
  }

  else
  {
    v16 = *a5;
    v17 = *(*sub_10056E904(a1 + 344, &v21) + 8);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1006CA678;
    v19[3] = &unk_100B07B68;
    v19[4] = a1;
    v19[5] = v21;
    v20 = a3;
    return (*(*v17 + 160))(v17, a4, v16, a6, v19);
  }
}

_BYTE *sub_1006CA678(uint64_t a1, int a2)
{
  v17 = 0x1000074581900;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v4 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(*(a1 + 40), __p);
    v5 = v9 >= 0 ? __p : __p[0];
    *buf = 67109378;
    v14 = a2;
    v15 = 2082;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending 'play item' response (result - %02x) to device %{public}s", buf, 0x12u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  HIBYTE(v17) = a2;
  if (a2 == 4)
  {
    v6 = 9;
  }

  else
  {
    v6 = 10;
  }

  LOBYTE(v10) = v6;
  *(&v10 + 1) = 9;
  BYTE3(v10) = 0;
  v11 = &v17;
  LOWORD(v12) = 8;
  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  if (sub_100208F8C((*(a1 + 40) + 128), *(a1 + 48), &v10) && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_100862698();
  }

  return sub_10002249C(__p);
}

void sub_1006CA800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

void sub_1006CA81C(uint64_t a1, uint64_t a2, __int16 a3, char *a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(v27[0]) = *a2;
  WORD2(v27[0]) = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, v27, 1);
  v28 = 0;
  v29 = v8;
  v27[0] = 0;
  v27[1] = 0;
  sub_100007E30(v27, a4);
  v9 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    v10 = SHIBYTE(v28);
    v11 = v27[0];
    sub_1000E5A58(v8, __p);
    v12 = v27;
    if (v10 < 0)
    {
      v12 = v11;
    }

    if (v26 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    *buf = 136315394;
    *&buf[4] = v12;
    *&buf[12] = 2082;
    *&buf[14] = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received 'GetImageProperties(%s)' request from device %{public}s", buf, 0x16u);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_100007F88(buf, a1 + 280);
  v14 = *(a1 + 352);
  if (!v14)
  {
    goto LABEL_30;
  }

  v15 = a1 + 352;
  do
  {
    v16 = *(v14 + 32);
    v17 = v16 >= v8;
    v18 = v16 < v8;
    if (v17)
    {
      v15 = v14;
    }

    v14 = *(v14 + 8 * v18);
  }

  while (v14);
  if (v15 != a1 + 352 && v8 >= *(v15 + 32))
  {
    v19 = *(*sub_10056E904(a1 + 344, &v29) + 8);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3321888768;
    v20[2] = sub_1006CAB50;
    v20[3] = &unk_100B07C28;
    v20[4] = a1;
    if (SHIBYTE(v28) < 0)
    {
      sub_100008904(&v21, v27[0], v27[1]);
    }

    else
    {
      v21 = *v27;
      v22 = v28;
    }

    v23 = v29;
    v24 = a3;
    (*(*v19 + 168))(v19, v27, v20);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21);
    }
  }

  else
  {
LABEL_30:
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(v8, __p);
      sub_100862700();
    }
  }

  sub_1000088CC(buf);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }
}

void sub_1006CAAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(v31 - 112);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

void sub_1006CAB50(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = qword_100BCE930;
  if (*(*(a1 + 32) + 528))
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      if (a2 > 2)
      {
        v11 = "UNKNOWN";
      }

      else
      {
        v11 = (&off_100B08048)[a2];
      }

      v13 = (a1 + 40);
      if (*(a1 + 63) < 0)
      {
        v13 = *v13;
      }

      sub_1000E5A58(*(a1 + 64), __p);
      if (v17 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      *buf = 136315650;
      v19 = v11;
      v20 = 2080;
      v21 = v13;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending 'GetImageProperties' response (result - %s, handle - %s) to device %{public}s", buf, 0x20u);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    v15 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v15 = *v15;
    }

    if (sub_1001A7C40(*(a1 + 72), v15, *a3, *a4, *a5, a3[1] - *a3))
    {
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
      {
        sub_100862754();
      }
    }

    sub_10002249C(buf);
  }

  else if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_1008627BC(a1, v6, v12);
  }
}

void sub_1006CAD2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

void sub_1006CAD48(uint64_t a1, uint64_t a2, __int16 a3, char *a4, uint64_t a5, uint64_t a6)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  *buf = *a2;
  LOWORD(v35) = *(a2 + 4);
  v12 = sub_1000E6554(off_100B508E8, buf, 1);
  v32 = 0;
  v33 = v12;
  v31[0] = 0;
  v31[1] = 0;
  sub_100007E30(v31, a4);
  v13 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    v14 = SHIBYTE(v32);
    v15 = v31[0];
    sub_1000E5A58(v12, __p);
    v16 = v31;
    if (v14 < 0)
    {
      v16 = v15;
    }

    if (v30 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    *buf = 136315906;
    v35 = v16;
    v36 = 1024;
    v37 = a5;
    v38 = 1024;
    v39 = a6;
    v40 = 2082;
    v41 = v17;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received 'GetImage(%s)' request (width - %d, height - %d) from device %{public}s", buf, 0x22u);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  sub_100007F88(__p, a1 + 280);
  v18 = *(a1 + 352);
  if (!v18)
  {
    goto LABEL_30;
  }

  v19 = a1 + 352;
  do
  {
    v20 = *(v18 + 32);
    v21 = v20 >= v12;
    v22 = v20 < v12;
    if (v21)
    {
      v19 = v18;
    }

    v18 = *(v18 + 8 * v22);
  }

  while (v18);
  if (v19 != a1 + 352 && v12 >= *(v19 + 32))
  {
    v23 = *(*sub_10056E904(a1 + 344, &v33) + 8);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3321888768;
    v24[2] = sub_1006CB0A0;
    v24[3] = &unk_100B07C58;
    v24[4] = a1;
    if (SHIBYTE(v32) < 0)
    {
      sub_100008904(&v25, v31[0], v31[1]);
    }

    else
    {
      v25 = *v31;
      v26 = v32;
    }

    v27 = v33;
    v28 = a3;
    (*(*v23 + 176))(v23, v31, a5, a6, v24);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }
  }

  else
  {
LABEL_30:
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(v12, buf);
      sub_100862700();
    }
  }

  sub_1000088CC(__p);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }
}

void sub_1006CB04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a23);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

void sub_1006CB0A0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = qword_100BCE930;
  if (*(*(a1 + 32) + 528))
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      if (a2 > 2)
      {
        v9 = "UNKNOWN";
      }

      else
      {
        v9 = (&off_100B08048)[a2];
      }

      v11 = (a1 + 40);
      if (*(a1 + 63) < 0)
      {
        v11 = *v11;
      }

      sub_1000E5A58(*(a1 + 64), __p);
      if (v14 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      *buf = 136315906;
      v16 = v9;
      v17 = 2080;
      v18 = v11;
      v19 = 2048;
      v20 = a4;
      v21 = 2082;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending 'GetImage' response (result - %s, handle - %s, length - %zu) to device %{public}s", buf, 0x2Au);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    if (sub_1001A7E38(*(a1 + 72), a3, a4))
    {
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
      {
        sub_100862850();
      }
    }

    sub_10002249C(buf);
  }

  else if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_1008628B8(a1, v5, v10);
  }
}

void sub_1006CB264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

void sub_1006CB280(uint64_t a1, uint64_t a2, __int16 a3, char *a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  LODWORD(v22[0]) = *a2;
  WORD2(v22[0]) = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, v22, 1);
  v24 = v8;
  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  sub_100007E30(v22, a4);
  v9 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    v10 = SHIBYTE(v23);
    v11 = v22[0];
    sub_1000E5A58(v8, __p);
    v12 = v22;
    if (v10 < 0)
    {
      v12 = v11;
    }

    if (v21 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    *buf = 136315394;
    v26 = v12;
    v27 = 2082;
    v28 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received 'GetLinkedThumbnail(%s)' request from device %{public}s", buf, 0x16u);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v14 = *(*sub_10056E904(a1 + 344, &v24) + 8);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3321888768;
  v15[2] = sub_1006CB514;
  v15[3] = &unk_100B07C58;
  v15[4] = a1;
  if (SHIBYTE(v23) < 0)
  {
    sub_100008904(&v16, v22[0], v22[1]);
  }

  else
  {
    v16 = *v22;
    v17 = v23;
  }

  v18 = v24;
  v19 = a3;
  (*(*v14 + 184))(v14, v22, v15);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }
}

void sub_1006CB4D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006CB514(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = qword_100BCE930;
  if (*(*(a1 + 32) + 528))
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      if (a2 > 2)
      {
        v9 = "UNKNOWN";
      }

      else
      {
        v9 = (&off_100B08048)[a2];
      }

      v11 = (a1 + 40);
      if (*(a1 + 63) < 0)
      {
        v11 = *v11;
      }

      sub_1000E5A58(*(a1 + 64), __p);
      if (v14 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      *buf = 136315906;
      v16 = v9;
      v17 = 2080;
      v18 = v11;
      v19 = 2048;
      v20 = a4;
      v21 = 2082;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending 'GetLinkedThumbnail' response (result - %s, handle - %s, length - %zu) to device %{public}s", buf, 0x2Au);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    if (sub_1001A7F10(*(a1 + 72), a3, a4))
    {
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
      {
        sub_10086294C();
      }
    }

    sub_10002249C(buf);
  }

  else if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_1008629B4(a1, v5, v10);
  }
}

void sub_1006CB6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

void sub_1006CB6F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unsigned int a5, const void *a6)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  *buf = *a2;
  *&buf[4] = *(a2 + 4);
  v11 = sub_1000E6554(off_100B508E8, buf, 1);
  v26 = 0;
  v27 = v11;
  v25 = &off_100AE0A78;
  v12 = qword_100BCE930;
  v13 = os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT);
  if (a5)
  {
    if (v13)
    {
      sub_1000E5A58(v11, __p);
      v14 = "s";
      if (a5 == 1)
      {
        v14 = "";
      }

      *buf = 67109634;
      *&buf[4] = a5;
      if (v29 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = *__p;
      }

      *v31 = 2080;
      *&v31[2] = v14;
      v32 = 2082;
      v33 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received 'get element attributes' (%d attribute%s) request from device %{public}s", buf, 0x1Cu);
      if (v29 < 0)
      {
        operator delete(*__p);
      }
    }

    sub_10000C704(buf, a6, 4 * a5);
    sub_10000AE20(&v25, buf);
  }

  else
  {
    if (v13)
    {
      sub_1000E5A58(v11, buf);
      v16 = SBYTE3(v33) >= 0 ? buf : *buf;
      *__p = 136446210;
      *&__p[4] = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received 'get element attributes' (all attributes) request from device %{public}s", __p, 0xCu);
      if (SBYTE3(v33) < 0)
      {
        operator delete(*buf);
      }
    }

    if (*(a1 + 528) == v11)
    {
      LOBYTE(a5) = 8;
    }

    else
    {
      LOBYTE(a5) = 7;
    }

    if (*(a1 + 528) == v11)
    {
      v17 = 32;
    }

    else
    {
      v17 = 28;
    }

    sub_10000C704(buf, &unk_1008C4D58, v17);
    sub_10000AE20(&v25, buf);
  }

  *buf = &off_100AE0A78;
  if (*v31)
  {
    sub_10000C808(*v31);
  }

  v18 = *(*sub_10056E904(a1 + 344, &v27) + 8);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3321888768;
  v19[2] = sub_1006CBAEC;
  v19[3] = &unk_100B07C88;
  v19[4] = a1;
  v23 = a5;
  v20 = &off_100AE0A78;
  v21 = v26;
  if (v26)
  {
    sub_10000C69C(v26);
  }

  v22 = v27;
  v24 = a3;
  (*(*v18 + 24))(v18, v19);
  v20 = &off_100AE0A78;
  if (v21)
  {
    sub_10000C808(v21);
  }

  v25 = &off_100AE0A78;
  if (v26)
  {
    sub_10000C808(v26);
  }
}

void sub_1006CBA70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, atomic_uint *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (a19)
  {
    sub_10000C808(a19);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1006CBAEC(uint64_t a1, uint64_t a2, int *a3)
{
  v44 = *(a1 + 32);
  v5 = malloc_type_calloc(8uLL, 0x18uLL, 0x1010040D8983CCAuLL);
  if (!*(a1 + 64))
  {
    v45 = 0;
    sub_1000216B4(&v45);
    goto LABEL_86;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = *(sub_10000C5F8(a1 + 40) + 4 * v6);
    if (v8 <= 4)
    {
      if (v8 <= 2)
      {
        if (v8 == 1)
        {
          if (*(a3 + 39) >= 0)
          {
            v9 = a3 + 4;
          }

          else
          {
            v9 = *(a3 + 2);
          }

          v24 = qword_100BCE930;
          if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(*(a1 + 56), __p);
            v25 = __p;
            if (v47 < 0)
            {
              v25 = __p[0];
            }

            *buf = 136315394;
            *v49 = v9;
            *&v49[8] = 2082;
            *&v49[10] = v25;
            v12 = v24;
            v13 = "Sending attribute 'title: %s' to device %{public}s";
            goto LABEL_71;
          }

LABEL_73:
          v32 = &v5[24 * v7];
          *v32 = v8;
          *(v32 + 2) = 106;
          if (v9)
          {
            v37 = strlen(v9);
            if (v37 >= 0x100)
            {
              v38 = 256;
            }

            else
            {
              v38 = v37;
            }

            v39 = malloc_type_malloc(v38 + 1, 0x100004077774924uLL);
            *(v32 + 1) = v39;
            strlcpy(v39, v9, v38 + 1);
            goto LABEL_80;
          }

          v33 = malloc_type_malloc(0xBuLL, 0x100004077774924uLL);
          *(v32 + 1) = v33;
          goto LABEL_79;
        }

        if (v8 == 2)
        {
          if (*(a3 + 63) >= 0)
          {
            v9 = a3 + 10;
          }

          else
          {
            v9 = *(a3 + 5);
          }

          v10 = qword_100BCE930;
          if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(*(a1 + 56), __p);
            v11 = __p;
            if (v47 < 0)
            {
              v11 = __p[0];
            }

            *buf = 136315394;
            *v49 = v9;
            *&v49[8] = 2082;
            *&v49[10] = v11;
            v12 = v10;
            v13 = "Sending attribute 'artist: %s' to device %{public}s";
LABEL_71:
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0x16u);
            if (v47 < 0)
            {
              operator delete(__p[0]);
            }

            goto LABEL_73;
          }

          goto LABEL_73;
        }

LABEL_62:
        v34 = qword_100BCE930;
        if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__p[0]) = 67109120;
          HIDWORD(__p[0]) = v8;
          _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Request for unknown attribute attributeID %d", __p, 8u);
        }

        goto LABEL_81;
      }

      if (v8 == 3)
      {
        if (*(a3 + 87) >= 0)
        {
          v9 = a3 + 16;
        }

        else
        {
          v9 = *(a3 + 8);
        }

        v28 = qword_100BCE930;
        if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(*(a1 + 56), __p);
          v29 = __p;
          if (v47 < 0)
          {
            v29 = __p[0];
          }

          *buf = 136315394;
          *v49 = v9;
          *&v49[8] = 2082;
          *&v49[10] = v29;
          v12 = v28;
          v13 = "Sending attribute 'album: %s' to device %{public}s";
          goto LABEL_71;
        }

        goto LABEL_73;
      }

      v16 = *a3;
      v17 = qword_100BCE930;
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(*(a1 + 56), __p);
        v18 = __p;
        if (v47 < 0)
        {
          v18 = __p[0];
        }

        *buf = 67109378;
        *v49 = v16;
        *&v49[4] = 2082;
        *&v49[6] = v18;
        v19 = v17;
        v20 = "Sending attribute 'track number: %u' to device %{public}s";
LABEL_58:
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0x12u);
        if (v47 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_60;
      }

      goto LABEL_60;
    }

    if (v8 <= 6)
    {
      if (v8 != 5)
      {
        if (*(a3 + 111) >= 0)
        {
          v9 = a3 + 22;
        }

        else
        {
          v9 = *(a3 + 11);
        }

        v14 = qword_100BCE930;
        if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(*(a1 + 56), __p);
          v15 = __p;
          if (v47 < 0)
          {
            v15 = __p[0];
          }

          *buf = 136315394;
          *v49 = v9;
          *&v49[8] = 2082;
          *&v49[10] = v15;
          v12 = v14;
          v13 = "Sending attribute 'genre: %s' to device %{public}s";
          goto LABEL_71;
        }

        goto LABEL_73;
      }

      v16 = a3[1];
      v26 = qword_100BCE930;
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(*(a1 + 56), __p);
        v27 = __p;
        if (v47 < 0)
        {
          v27 = __p[0];
        }

        *buf = 67109378;
        *v49 = v16;
        *&v49[4] = 2082;
        *&v49[6] = v27;
        v19 = v26;
        v20 = "Sending attribute 'total tracks: %u' to device %{public}s";
        goto LABEL_58;
      }

LABEL_60:
      v32 = &v5[24 * v7];
      *v32 = v8;
      *(v32 + 2) = 106;
      v33 = malloc_type_malloc(0xBuLL, 0x100004077774924uLL);
      *(v32 + 1) = v33;
      if (v16)
      {
        snprintf(v33, 0xBuLL, "%u", v16);
LABEL_80:
        *(v32 + 4) = strlen(*(v32 + 1));
        ++v7;
        goto LABEL_81;
      }

LABEL_79:
      *v33 = 0;
      goto LABEL_80;
    }

    if (v8 == 7)
    {
      v16 = a3[2];
      v30 = qword_100BCE930;
      if (!os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_60;
      }

      sub_1000E5A58(*(a1 + 56), __p);
      v31 = __p;
      if (v47 < 0)
      {
        v31 = __p[0];
      }

      *buf = 67109378;
      *v49 = v16;
      *&v49[4] = 2082;
      *&v49[6] = v31;
      v19 = v30;
      v20 = "Sending attribute 'playing time: %ums' to device %{public}s";
      goto LABEL_58;
    }

    if (v8 != 8)
    {
      goto LABEL_62;
    }

    v21 = *(a1 + 56);
    if (v21 == *(v44 + 528))
    {
      if (*(a3 + 135) >= 0)
      {
        v9 = a3 + 28;
      }

      else
      {
        v9 = *(a3 + 14);
      }

      v35 = qword_100BCE930;
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v21, __p);
        v36 = __p;
        if (v47 < 0)
        {
          v36 = __p[0];
        }

        *buf = 136315394;
        *v49 = v9;
        *&v49[8] = 2082;
        *&v49[10] = v36;
        v12 = v35;
        v13 = "Sending attribute 'image handle: %s' to device %{public}s";
        goto LABEL_71;
      }

      goto LABEL_73;
    }

    v22 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(v21, __p);
      v23 = __p;
      if (v47 < 0)
      {
        v23 = __p[0];
      }

      *buf = 136446210;
      *v49 = v23;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Ignoring 'image handle' attribute request as device %{public}s did not establish BIP", buf, 0xCu);
      if (v47 < 0)
      {
        operator delete(__p[0]);
      }
    }

LABEL_81:
    ++v6;
  }

  while (v6 < *(a1 + 64) && v7 < 8u);
  v45 = 0;
  sub_1000216B4(&v45);
  if (v7)
  {
    v40 = sub_100206814((*(a1 + 56) + 128), *(a1 + 65), v7, v5);
    goto LABEL_87;
  }

LABEL_86:
  v40 = sub_100205418((*(a1 + 56) + 128), *(a1 + 65), 32, 3306);
LABEL_87:
  if (!v40)
  {
    goto LABEL_94;
  }

  if (v40 != 3304)
  {
    v40 = os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR);
    if (v40)
    {
      sub_1000E5A58(*(a1 + 56), __p);
      sub_100862A48();
    }

LABEL_94:
    sub_1006C41AC(v40, v5);
    return sub_10002249C(&v45);
  }

  v41 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_INFO))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Message too big, sent only the first chunk of data. Wait for next request from CT", __p, 2u);
  }

  __p[0] = (a1 + 56);
  v42 = sub_10041F204(v44 + 480, (a1 + 56), &unk_1008A9BD0, __p);
  buf[0] = *(a1 + 65);
  buf[1] = 32;
  __p[0] = buf;
  *(sub_1006CF4E0(v42 + 5, buf, &unk_1008A9BD0, __p) + 40) = v5;
  return sub_10002249C(&v45);
}