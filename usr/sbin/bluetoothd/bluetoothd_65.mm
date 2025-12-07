BOOL sub_100495718(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_10000C7D0(a1, a2) + 800);
  v3 = v2 - 3000;
  v4 = v2 - 22;
  return v3 < 0x3E8 || v4 < 0x7BA;
}

BOOL sub_10049574C()
{
  v16 = 1;
  v0 = sub_10000E92C();
  sub_100007E30(v14, "Device");
  sub_100007E30(__p, "EnableHDR");
  v1 = (*(*v0 + 72))(v0, v14, __p, &v16);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v3 = sub_10000C7D0(v1, v2);
  v5 = *(v3 + 800);
  if ((v5 - 3000) < 0x3E8)
  {
    return 1;
  }

  v6 = sub_10000C798(v3, v4);
  v7 = (*(*v6 + 368))(v6);
  if (v7)
  {
    return 1;
  }

  v10 = sub_10000C798(v7, v8);
  if ((*(*v10 + 416))(v10))
  {
    v11 = (v5 - 21) >= 0x7BB;
  }

  else
  {
    v11 = (v5 - 20) >= 0x7BC;
  }

  return !v11;
}

void sub_1004958A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100495908(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_10000C7D0(a1, a2) + 800);
  result = _os_feature_enabled_impl();
  if (result)
  {
    result = 1;
    if ((v2 - 13) >= 0x7C3 && (v2 - 5000) >= 0x3E8)
    {
      return (v2 - 3000) < 0x3E8;
    }
  }

  return result;
}

uint64_t sub_100495970(uint64_t a1)
{
  result = (*(*a1 + 416))(a1);
  if (result)
  {

    return _os_feature_enabled_impl();
  }

  return result;
}

uint64_t sub_1004959DC(uint64_t a1)
{
  result = (*(*a1 + 416))(a1);
  if (result)
  {

    return _os_feature_enabled_impl();
  }

  return result;
}

uint64_t sub_100495A48(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E318 != -1)
  {
    sub_10083129C();
  }

  return byte_100B6E310;
}

uint64_t sub_100495AD4(uint64_t a1, uint64_t a2)
{
  v2 = 1;
  if ((*(sub_10000C7D0(a1, a2) + 800) - 3000) >= 0x3E8)
  {
    v3 = sub_1000271F0();
    if ((v3 - 258 > 0x15 || v3 == 259) && (v3 - 119 > 0x31 || ((1 << (v3 - 119)) & 0x2000000078F0FLL) == 0) && (v3 > 0x37 || ((1 << v3) & 0xE3F00000000000) == 0))
    {
      return 0;
    }
  }

  return v2;
}

id sub_100495C00(uint64_t a1)
{
  result = MGGetStringAnswer();
  if (result)
  {
    v3 = result;
    v4 = [result isEqualToString:a1];
    CFRelease(v3);
    return v4;
  }

  return result;
}

uint64_t sub_100495C4C(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E338 != -1)
  {
    sub_1008312C4();
  }

  return byte_100B6E330;
}

uint64_t sub_100495CAC(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E348 != -1)
  {
    sub_1008312D8();
  }

  return byte_100B6E340;
}

uint64_t sub_100495DB8(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E398 != -1)
  {
    sub_10083133C();
  }

  return byte_100B6E390;
}

BOOL sub_100495E18(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E3A8 != -1)
  {
    sub_100831350();
  }

  return (byte_100B6E3A0 & 1) == 0;
}

void sub_100495E58(id a1)
{
  v1 = MGGetProductType();
  if (v1 <= 1110205731)
  {
    if (v1 != 33245053)
    {
      v2 = 741626682;
LABEL_7:
      if (v1 != v2)
      {
        return;
      }
    }
  }

  else if (v1 != 1110205732 && v1 != 2692844695)
  {
    v2 = 2271819421;
    goto LABEL_7;
  }

  byte_100B6E3A0 = 1;
}

uint64_t sub_100495ED8()
{
  v8 = 0;
  v0 = sub_10000E92C();
  sub_100007E30(buf, "SMP");
  sub_100007E30(__p, "DisableCTKD");
  v1 = (*(*v0 + 72))(v0, buf, __p, &v8);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(*buf);
    if (!v1)
    {
      return v8;
    }
  }

  else if (!v1)
  {
    return v8;
  }

  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Warning: DisableCTKD", buf, 2u);
  }

  return v8;
}

void sub_100495FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049600C(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E3B8 != -1)
  {
    sub_100831364();
  }

  return byte_100B6E3B0;
}

void sub_100496044(id a1)
{
  v1 = malloc_type_malloc(0x16uLL, 0x100004077774924uLL);
  snprintf(v1, 0x16uLL, "%s%s", "IODeviceTree", ":/product");
  v2 = IORegistryEntryFromPath(kIOMainPortDefault, v1);
  if (v2)
  {
    v3 = v2;
    CFProperty = IORegistryEntryCreateCFProperty(v2, @"boot-ios-diagnostics", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      CFRelease(CFProperty);
      v5 = 1;
    }

    else
    {
      v5 = 0;
    }

    IOObjectRelease(v3);
    if (v1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if (v1)
    {
LABEL_8:
      free(v1);
    }
  }

  byte_100B6E3B0 = v5;
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting diagnositcs mode to %d", buf, 8u);
  }
}

void sub_1004961A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*v1 + 352))(v1);
  if (v2 & 1) != 0 || (v2 = (*(*v1 + 360))(v1), (v2) || (v2 = (*(*v1 + 416))(v1), (v2) || (v2 = (*(*v1 + 368))(v1), v2))
  {
    v4 = sub_10000C7D0(v2, v3);
    v5 = (*(*v4 + 2472))(v4);
    byte_100B6E3C0 = v5;
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "disabled";
      if (v5)
      {
        v7 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BT chip support for extended scans : %s", buf, 0xCu);
    }

    v15 = 0;
    v8 = sub_10000E92C();
    sub_100007E30(buf, "AE");
    sub_100007E30(__p, "DisableExtScans");
    v9 = (*(*v8 + 72))(v8, buf, __p, &v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 < 0)
    {
      operator delete(*buf);
      if (!v9)
      {
        goto LABEL_18;
      }
    }

    else if (!v9)
    {
      goto LABEL_18;
    }

    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Overriding DisableExtScans=%d", buf, 8u);
    }

    byte_100B6E3C0 &= v15 ^ 1;
  }

LABEL_18:
  v11 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E3C0)
    {
      v12 = "enabled";
    }

    else
    {
      v12 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "support for Extended Scanning is %s", buf, 0xCu);
  }
}

void sub_1004964C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100496500(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*v1 + 352))(v1);
  if (v2 & 1) != 0 || (v2 = (*(*v1 + 360))(v1), (v2) || (v2 = (*(*v1 + 416))(v1), (v2) || (v2 = (*(*v1 + 368))(v1), v2))
  {
    v4 = sub_10000C7D0(v2, v3);
    v5 = (*(*v4 + 2328))(v4);
    byte_100B6E3D0 = v5;
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "disabled";
      if (v5)
      {
        v7 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BT chip support for extended advertisingsets : %s", buf, 0xCu);
    }

    v15 = 0;
    v8 = sub_10000E92C();
    sub_100007E30(buf, "AE");
    sub_100007E30(__p, "DisableExtAdvertising");
    v9 = (*(*v8 + 72))(v8, buf, __p, &v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 < 0)
    {
      operator delete(*buf);
      if (!v9)
      {
        goto LABEL_18;
      }
    }

    else if (!v9)
    {
      goto LABEL_18;
    }

    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Overriding DisableAdvertising=%d", buf, 8u);
    }

    byte_100B6E3D0 &= v15 ^ 1;
  }

LABEL_18:
  v11 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E3D0)
    {
      v12 = "enabled";
    }

    else
    {
      v12 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "support for Extended Advertising is %s", buf, 0xCu);
  }
}

void sub_100496824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100496860(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E3E8 != -1)
  {
    sub_100831378();
  }

  return byte_100B6E3E0;
}

void sub_100496898(id a1)
{
  v2 = sub_10000C7D0(a1, v1);
  v3 = (*(*v2 + 2336))(v2);
  byte_100B6E3E0 = v3;
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "disabled";
    if (v3)
    {
      v5 = "enabled";
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for periodic advertising advertiser : %s", buf, 0xCu);
    if ((byte_100B6E3E0 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (!v3)
  {
    goto LABEL_16;
  }

  v13 = 0;
  v6 = sub_10000E92C();
  sub_100007E30(buf, "AE");
  sub_100007E30(__p, "DisablePeriodicAdvertisingAdv");
  v7 = (*(*v6 + 72))(v6, buf, __p, &v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 < 0)
  {
    operator delete(*buf);
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (!v7)
  {
    goto LABEL_16;
  }

  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overriding DisablePeriodicAdvertisingAdv=%d", buf, 8u);
  }

  byte_100B6E3E0 &= v13 ^ 1;
LABEL_16:
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E3E0)
    {
      v10 = "enabled";
    }

    else
    {
      v10 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "support for Periodic Advertising Advertiser is %s", buf, 0xCu);
  }
}

void sub_100496AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100496B34(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E3F8 != -1)
  {
    sub_10083138C();
  }

  return byte_100B6E3F0;
}

void sub_100496B6C(id a1)
{
  v2 = sub_10000C7D0(a1, v1);
  v3 = (*(*v2 + 2344))(v2);
  byte_100B6E3F0 = v3;
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "disabled";
    if (v3)
    {
      v5 = "enabled";
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for periodic advertising synchronizer : %s", buf, 0xCu);
    if ((byte_100B6E3F0 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (!v3)
  {
    goto LABEL_16;
  }

  v13 = 0;
  v6 = sub_10000E92C();
  sub_100007E30(buf, "AE");
  sub_100007E30(__p, "DisablePeriodicAdvertisingSync");
  v7 = (*(*v6 + 72))(v6, buf, __p, &v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 < 0)
  {
    operator delete(*buf);
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (!v7)
  {
    goto LABEL_16;
  }

  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overriding DisablePeriodicAdvertisingSync=%d", buf, 8u);
  }

  byte_100B6E3F0 &= v13 ^ 1;
LABEL_16:
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E3F0)
    {
      v10 = "enabled";
    }

    else
    {
      v10 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "support for Periodic Advertising Synchronizer is %s", buf, 0xCu);
  }
}

void sub_100496DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100496E08(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E408 != -1)
  {
    sub_1008313A0();
  }

  return byte_100B6E400;
}

void sub_100496E40(id a1)
{
  v2 = sub_10000C7D0(a1, v1);
  v3 = (*(*v2 + 2352))(v2);
  byte_100B6E400 = v3;
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "disabled";
    if (v3)
    {
      v5 = "enabled";
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for periodic advertising sync transfer sender : %s", buf, 0xCu);
    if ((byte_100B6E400 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (!v3)
  {
    goto LABEL_16;
  }

  v13 = 0;
  v6 = sub_10000E92C();
  sub_100007E30(buf, "AE");
  sub_100007E30(__p, "DisablePeriodicAdvSyncTranSender");
  v7 = (*(*v6 + 72))(v6, buf, __p, &v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 < 0)
  {
    operator delete(*buf);
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (!v7)
  {
    goto LABEL_16;
  }

  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overriding DisablePeriodicAdvSyncTranSender=%d", buf, 8u);
  }

  byte_100B6E400 &= v13 ^ 1;
LABEL_16:
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E400)
    {
      v10 = "enabled";
    }

    else
    {
      v10 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "support for Periodic Advertising Sync Transfer Sender is %s", buf, 0xCu);
  }
}

void sub_1004970A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004970DC(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E418 != -1)
  {
    sub_1008313B4();
  }

  return byte_100B6E410;
}

void sub_100497114(id a1)
{
  v2 = sub_10000C7D0(a1, v1);
  v3 = (*(*v2 + 2360))(v2);
  byte_100B6E410 = v3;
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "disabled";
    if (v3)
    {
      v5 = "enabled";
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for periodic advertising sync transfer recipient: %s", buf, 0xCu);
    if ((byte_100B6E410 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (!v3)
  {
    goto LABEL_16;
  }

  v13 = 0;
  v6 = sub_10000E92C();
  sub_100007E30(buf, "AE");
  sub_100007E30(__p, "DisablePeriodicAdvSyncTranRecipient");
  v7 = (*(*v6 + 72))(v6, buf, __p, &v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 < 0)
  {
    operator delete(*buf);
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (!v7)
  {
    goto LABEL_16;
  }

  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overriding DisablePeriodicAdvSyncTranRecipient=%d", buf, 8u);
  }

  byte_100B6E410 &= v13 ^ 1;
LABEL_16:
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E410)
    {
      v10 = "enabled";
    }

    else
    {
      v10 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "support for Periodic Advertising Sync Transfer Recipient is %s", buf, 0xCu);
  }
}

void sub_100497374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004973B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*v1 + 352))(v1);
  if (v2 & 1) != 0 || (v2 = (*(*v1 + 360))(v1), (v2) || (v2 = (*(*v1 + 416))(v1), v2))
  {
    v4 = sub_10000C7D0(v2, v3);
    v5 = (*(*v4 + 2368))(v4);
    byte_100B6E420 = v5;
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "disabled";
      if (v5)
      {
        v7 = "enabled";
      }

      v10 = 136315138;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BT chip support for extended advertising report with scan source core : %s", &v10, 0xCu);
    }
  }

  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E420)
    {
      v9 = "enabled";
    }

    else
    {
      v9 = "disabled";
    }

    v10 = 136315138;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "support for extended advertising report with scan source core is %s", &v10, 0xCu);
  }
}

void sub_1004975B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*v1 + 352))(v1);
  if (v2 & 1) != 0 || (v2 = (*(*v1 + 360))(v1), (v2) || (v2 = (*(*v1 + 416))(v1), v2))
  {
    v4 = sub_10000C7D0(v2, v3);
    v5 = (*(*v4 + 2376))(v4);
    byte_100B6E430 = v5;
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "disabled";
      if (v5)
      {
        v7 = "enabled";
      }

      v10 = 136315138;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BT chip support for extended advertising report with pass up : %s", &v10, 0xCu);
    }
  }

  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E430)
    {
      v9 = "enabled";
    }

    else
    {
      v9 = "disabled";
    }

    v10 = 136315138;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "support for extended advertising report with pass up is %s", &v10, 0xCu);
  }
}

void sub_1004977B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*v1 + 352))(v1);
  if (v2 & 1) != 0 || (v2 = (*(*v1 + 360))(v1), (v2) || (v2 = (*(*v1 + 416))(v1), v2))
  {
    v4 = sub_10000C7D0(v2, v3);
    v5 = (*(*v4 + 2384))(v4);
    byte_100B6E440 = v5;
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "disabled";
      if (v5)
      {
        v7 = "enabled";
      }

      v10 = 136315138;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BT chip support for extended advertising report with ELNA mode : %s", &v10, 0xCu);
    }
  }

  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E440)
    {
      v9 = "enabled";
    }

    else
    {
      v9 = "disabled";
    }

    v10 = 136315138;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "support for extended advertising report with ELNA mode is %s", &v10, 0xCu);
  }
}

uint64_t sub_1004979B0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100497A40;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E458 != -1)
  {
    dispatch_once(&qword_100B6E458, block);
  }

  return byte_100B6E450;
}

void sub_100497A40(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*v1 + 352))(v1);
  if ((v2 & 1) == 0)
  {
    v2 = (*(*v1 + 432))(v1);
    if ((v2 & 1) == 0)
    {
      v2 = (*(*v1 + 408))(v1);
      if ((v2 & 1) == 0)
      {
        v2 = (*(*v1 + 416))(v1);
        if (!v2)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v4 = sub_10000C7D0(v2, v3);
  byte_100B6E450 = (*(*v4 + 2544))(v4);
  v5 = sub_1000271F0();
  if (v5 == 100 || (v5 = sub_1000271F0(), v5 == 101))
  {
    v7 = sub_10000C7D0(v5, v6);
    (*(*v7 + 16))(&buf);
    if ((v20 & 0x80000000) == 0)
    {
      if (v20 != 2 || buf != 12355)
      {
        goto LABEL_15;
      }

LABEL_13:
      byte_100B6E450 = 0;
      goto LABEL_15;
    }

    if (*(&buf + 1) != 2)
    {
      operator delete(buf);
      goto LABEL_15;
    }

    v8 = *buf;
    operator delete(buf);
    if (v8 == 12355)
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E450)
    {
      v10 = "enabled";
    }

    else
    {
      v10 = "disabled";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BT chip support for LowPowerCore Scan : %s", &buf, 0xCu);
  }

  v18 = 0;
  v11 = sub_10000E92C();
  sub_100007E30(&buf, "LowPowerCoreScan");
  sub_100007E30(__p, "DisableLowPowerCoreScan");
  v12 = (*(*v11 + 72))(v11, &buf, __p, &v18);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v20 < 0)
  {
    operator delete(buf);
    if (!v12)
    {
      goto LABEL_29;
    }
  }

  else if (!v12)
  {
    goto LABEL_29;
  }

  v13 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v18;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Overriding Disabling LowPowerCore Scan=%d", &buf, 8u);
  }

  byte_100B6E450 &= v18 ^ 1;
LABEL_29:
  v14 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E450)
    {
      v15 = "enabled";
    }

    else
    {
      v15 = "disabled";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "support for new LowPowerCore scan is %s", &buf, 0xCu);
  }
}

void sub_100497DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100497E34(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100497EC4;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E468 != -1)
  {
    dispatch_once(&qword_100B6E468, block);
  }

  return byte_100B6E460;
}

void sub_100497EC4(uint64_t a1)
{
  v1 = (*(**(a1 + 32) + 352))(*(a1 + 32));
  if (v1)
  {
    v3 = sub_10000C7D0(v1, v2);
    v4 = (*(*v3 + 2392))(v3);
    byte_100B6E460 = v4;
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "disabled";
      if (v4)
      {
        v6 = "enabled";
      }

      v9 = 136315138;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BT chip support for extended advertising report with SC Compensation : %s", &v9, 0xCu);
    }
  }

  v7 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E460)
    {
      v8 = "enabled";
    }

    else
    {
      v8 = "disabled";
    }

    v9 = 136315138;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "support for extended advertising report with SC Compensation is %s", &v9, 0xCu);
  }
}

uint64_t sub_100498058(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004980E8;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E478 != -1)
  {
    dispatch_once(&qword_100B6E478, block);
  }

  return dword_100B6E470;
}

void sub_1004980E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_10000C7D0(a1, a2);
  v4 = (*(*v3 + 2408))(v3);
  v6 = v4;
  if (v4)
  {
    v7 = qword_100BCE8D8;
    v4 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BT chip support for extended advertising report with antenna enabled", buf, 2u);
    }
  }

  v8 = sub_10000C7D0(v4, v5);
  v9 = (*(*v8 + 2400))(v8);
  v11 = v9;
  if (v9)
  {
    v12 = qword_100BCE8D8;
    v9 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "BT chip support for extended advertising report with Coex Denial enabled", buf, 2u);
    }
  }

  v13 = *(sub_10000C7D0(v9, v10) + 800);
  if ((v13 - 1) > 0x7CE)
  {
    if ((v13 - 5000) <= 0x3E7)
    {
      if ((*(*v2 + 352))(v2))
      {
        if (v11)
        {
LABEL_18:
          v15 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "getEstimateScanRequestTxDeniedByCoexType : Yes", buf, 2u);
          }

          dword_100B6E470 = 2;
          goto LABEL_33;
        }
      }

      else if (v11 & (*(*v2 + 416))(v2))
      {
        goto LABEL_18;
      }

      v18 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "getEstimateScanRequestTxDeniedByCoexType : No", buf, 2u);
      }

LABEL_33:
      if ((v11 & 1) == 0)
      {
        return;
      }

      goto LABEL_39;
    }

    if ((v13 - 2000) > 0x7CF)
    {
      return;
    }

    if ((*(*v2 + 352))(v2) & 1) != 0 || ((*(*v2 + 416))(v2))
    {
      if (v11)
      {
LABEL_27:
        v17 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "getEstimateScanRequestTxDeniedByCoexType : Yes", buf, 2u);
        }

        dword_100B6E470 = 2;
        goto LABEL_38;
      }
    }

    else if (v11 & (*(*v2 + 408))(v2))
    {
      goto LABEL_27;
    }

    v19 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "getEstimateScanRequestTxDeniedByCoexType : No", buf, 2u);
    }

LABEL_38:
    if (!v11)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v6)
  {
    v16 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "getEstimateScanRequestTxDeniedByCoexType : No", buf, 2u);
    }

    return;
  }

  if (((*(*v2 + 352))(v2) & 1) != 0 || ((*(*v2 + 416))(v2) & 1) != 0 || (*(*v2 + 456))(v2))
  {
    v14 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "getEstimateScanRequestTxDeniedByCoexType : Yes", buf, 2u);
    }

    dword_100B6E470 = 1;
  }

LABEL_39:
  v25 = 0;
  v20 = sub_10000E92C();
  sub_100007E30(buf, "BBFC");
  sub_100007E30(__p, "EnableEstimateScanRequestTxDeniedByCoex");
  v21 = (*(*v20 + 88))(v20, buf, __p, &v25);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  if (v29 < 0)
  {
    operator delete(*buf);
    if (!v21)
    {
      return;
    }
  }

  else if (!v21)
  {
    return;
  }

  v22 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = dword_100B6E470;
    v27 = 1024;
    v28 = v25;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "getEstimateScanRequestTxDeniedByCoexType (overriden): original %d overriden %d", buf, 0xEu);
  }

  dword_100B6E470 = v25;
}

void sub_1004986FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100498738(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*v1 + 352))(v1);
  if ((v2 & 1) == 0)
  {
    v2 = (*(*v1 + 432))(v1);
    if ((v2 & 1) == 0)
    {
      v2 = (*(*v1 + 416))(v1);
      if (!v2)
      {
        goto LABEL_40;
      }
    }
  }

  v4 = sub_10000C7D0(v2, v3);
  byte_100B6E480 = (*(*v4 + 2536))(v4);
  v5 = sub_1000271F0();
  if (v5 == 100 || (v5 = sub_1000271F0(), v5 == 101))
  {
    v7 = sub_10000C7D0(v5, v6);
    (*(*v7 + 16))(&buf);
    if (v26 < 0)
    {
      if (*(&buf + 1) != 2)
      {
        operator delete(buf);
        goto LABEL_14;
      }

      v8 = *buf;
      operator delete(buf);
      if (v8 == 12355)
      {
        goto LABEL_12;
      }
    }

    else if (v26 == 2 && buf == 12355)
    {
LABEL_12:
      byte_100B6E480 = 0;
    }
  }

LABEL_14:
  v9 = (*(*v1 + 416))(v1);
  if (v9 && *(sub_10000C7D0(v9, v10) + 800) == 21)
  {
    byte_100B6E480 = 0;
  }

  v11 = (*(*v1 + 456))(v1);
  if (!v11)
  {
    goto LABEL_26;
  }

  v13 = sub_10000C7D0(v11, v12);
  (*(*v13 + 16))(&buf);
  if ((v26 & 0x80000000) == 0)
  {
    if (v26 != 2 || buf != 12355)
    {
      goto LABEL_26;
    }

LABEL_24:
    byte_100B6E480 = 0;
    goto LABEL_26;
  }

  if (*(&buf + 1) != 2)
  {
    operator delete(buf);
    goto LABEL_26;
  }

  v14 = *buf;
  operator delete(buf);
  if (v14 == 12355)
  {
    goto LABEL_24;
  }

LABEL_26:
  v15 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E480)
    {
      v16 = "enabled";
    }

    else
    {
      v16 = "disabled";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "BT chip support for LowPowerCore Scan : %s", &buf, 0xCu);
  }

  v24 = 0;
  v17 = sub_10000E92C();
  sub_100007E30(&buf, "LowPowerCoreScan");
  sub_100007E30(__p, "DisableLowPowerCoreScan");
  v18 = (*(*v17 + 72))(v17, &buf, __p, &v24);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v26 < 0)
  {
    operator delete(buf);
    if (!v18)
    {
      goto LABEL_40;
    }
  }

  else if (!v18)
  {
    goto LABEL_40;
  }

  v19 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v24;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Overriding Disabling LowPowerCore Scan=%d", &buf, 8u);
  }

  byte_100B6E480 &= v24 ^ 1;
LABEL_40:
  v20 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E480)
    {
      v21 = "enabled";
    }

    else
    {
      v21 = "disabled";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "support for new LowPowerCore scan is %s", &buf, 0xCu);
  }
}

void sub_100498BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100498BF0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100498C80;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E498 != -1)
  {
    dispatch_once(&qword_100B6E498, block);
  }

  return byte_100B6E490;
}

void sub_100498C80(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*v1 + 352))(v1);
  if (v2 & 1) != 0 || (v2 = (*(*v1 + 432))(v1), (v2) || (v2 = (*(*v1 + 416))(v1), v2))
  {
    v4 = sub_10000C7D0(v2, v3);
    v5 = (*(*v4 + 2552))(v4);
    byte_100B6E490 = v5;
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "disabled";
      if (v5)
      {
        v7 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BT chip support for Low Power Scan with Limited RSSI Reading: %s", buf, 0xCu);
    }

    v15 = 0;
    v8 = sub_10000E92C();
    sub_100007E30(buf, "LowPowerCoreScan");
    sub_100007E30(__p, "DisableLowPowerCoreScanWithLimitedRSSIReading");
    v9 = (*(*v8 + 72))(v8, buf, __p, &v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 < 0)
    {
      operator delete(*buf);
      if (!v9)
      {
        goto LABEL_17;
      }
    }

    else if (!v9)
    {
      goto LABEL_17;
    }

    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Overriding Disabling LowPowerCore with limited RSSI Reading %d", buf, 8u);
    }

    byte_100B6E490 &= v15 ^ 1;
  }

LABEL_17:
  v11 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E490)
    {
      v12 = "enabled";
    }

    else
    {
      v12 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "support for Low Power Scan with Limited RSSI Reading %s", buf, 0xCu);
  }
}

void sub_100498F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100498FAC(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E4A8 != -1)
  {
    sub_1008313C8();
  }

  return byte_100B6E4A0;
}

void sub_100498FE4(id a1)
{
  v2 = sub_10000C7D0(a1, v1);
  byte_100B6E4A0 = (*(*v2 + 2560))(v2);
  v9 = 0;
  v3 = sub_10000E92C();
  sub_100007E30(buf, "VSCScanParams");
  sub_100007E30(__p, "DisableVSCScanParams");
  v4 = (*(*v3 + 72))(v3, buf, __p, &v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 < 0)
  {
    operator delete(*buf);
  }

  v5 = qword_100BCE8D8;
  if (v4)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Overriding Disabling VSScanParams Scan=%d", buf, 8u);
      v5 = qword_100BCE8D8;
    }

    byte_100B6E4A0 &= v9 ^ 1;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E4A0)
    {
      v6 = "enabled";
    }

    else
    {
      v6 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "support for new VSScanParams scan is %s", buf, 0xCu);
  }
}

void sub_1004991C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100499204(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*v1 + 352))(v1);
  if ((v2 & 1) == 0)
  {
    v2 = (*(*v1 + 432))(v1);
    if ((v2 & 1) == 0)
    {
      v2 = (*(*v1 + 416))(v1);
      if (!v2)
      {
        goto LABEL_39;
      }
    }
  }

  v4 = sub_10000C7D0(v2, v3);
  v5 = (*(*v4 + 2568))(v4);
  byte_100B6E4B0 = v5;
  v6 = sub_1000271F0();
  if (v6 == 100 || (v6 = sub_1000271F0(), v6 == 101))
  {
    v8 = sub_10000C7D0(v6, v7);
    (*(*v8 + 16))(&buf);
    if (v26 < 0)
    {
      if (*(&buf + 1) == 2)
      {
        v9 = *buf;
        operator delete(buf);
        if (v9 != 12355)
        {
          goto LABEL_14;
        }

        goto LABEL_12;
      }

      operator delete(buf);
    }

    else if (v26 == 2 && buf == 12355)
    {
LABEL_12:
      byte_100B6E4B0 = 0;
    }
  }

LABEL_14:
  v10 = (*(*v1 + 456))(v1);
  if (v10)
  {
    v12 = sub_10000C7D0(v10, v11);
    (*(*v12 + 16))(&buf);
    if ((v26 & 0x80000000) == 0)
    {
      if (v26 != 2 || buf != 12355)
      {
        goto LABEL_23;
      }

LABEL_21:
      byte_100B6E4B0 = 0;
      goto LABEL_23;
    }

    if (*(&buf + 1) != 2)
    {
      operator delete(buf);
      goto LABEL_23;
    }

    v13 = *buf;
    operator delete(buf);
    if (v13 == 12355)
    {
      goto LABEL_21;
    }
  }

LABEL_23:
  v14 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = "disabled";
    if (v5)
    {
      v15 = "enabled";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "BT chip support for Scan Core : %s", &buf, 0xCu);
  }

  v24 = 0;
  v16 = sub_10000E92C();
  sub_100007E30(&buf, "ScanCore");
  sub_100007E30(__p, "EnableScanCore");
  v17 = (*(*v16 + 72))(v16, &buf, __p, &v24);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v26 < 0)
  {
    operator delete(buf);
    if (!v17)
    {
      goto LABEL_39;
    }
  }

  else if (!v17)
  {
    goto LABEL_39;
  }

  v18 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (v24)
    {
      v19 = "Enabled";
    }

    else
    {
      v19 = "Disabled";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Overriding EnableScanCore with %s", &buf, 0xCu);
  }

  byte_100B6E4B0 = v5 & v24;
LABEL_39:
  v20 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E4B0)
    {
      v21 = "enabled";
    }

    else
    {
      v21 = "disabled";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Support for Scan Core is %s", &buf, 0xCu);
  }
}

void sub_100499650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049968C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049971C;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E4C8 != -1)
  {
    dispatch_once(&qword_100B6E4C8, block);
  }

  return byte_100B6E4C0;
}

void sub_10049971C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*v1 + 352))(v1);
  if (v2 & 1) != 0 || (v2 = (*(*v1 + 432))(v1), (v2) || (v2 = (*(*v1 + 416))(v1), v2))
  {
    v4 = sub_10000C7D0(v2, v3);
    v5 = (*(*v4 + 2568))(v4);
    byte_100B6E4C0 = v5;
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "disabled";
      if (v5)
      {
        v7 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BT chip support for LE non-Connection Stats : %s", buf, 0xCu);
    }

    v15 = 0;
    v8 = sub_10000E92C();
    sub_100007E30(buf, "LowPowerCoreScan");
    sub_100007E30(__p, "DisableLEConnectionStatsV1");
    v9 = (*(*v8 + 72))(v8, buf, __p, &v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 < 0)
    {
      operator delete(*buf);
      if (!v9)
      {
        goto LABEL_17;
      }
    }

    else if (!v9)
    {
      goto LABEL_17;
    }

    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Overriding Disabling LE non-Connection stats V1 (going back to V0)=%d", buf, 8u);
    }

    byte_100B6E4C0 &= v15 ^ 1;
  }

LABEL_17:
  v11 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E4C0)
    {
      v12 = "enabled";
    }

    else
    {
      v12 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "support for new LE non-Connection Stats V1 scan is %s", buf, 0xCu);
  }
}

void sub_100499A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100499A48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*v1 + 352))(v1);
  if ((v2 & 1) != 0 || (v2 = (*(*v1 + 416))(v1), v2))
  {
    v4 = sub_10000C7D0(v2, v3);
    v5 = (*(*v4 + 2600))(v4);
    byte_100B6E4D0 = v5;
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "disabled";
      if (v5)
      {
        v7 = "enabled";
      }

      v10 = 136315138;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BT chip support for Get Scan Stats : %s", &v10, 0xCu);
    }
  }

  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E4D0)
    {
      v9 = "enabled";
    }

    else
    {
      v9 = "disabled";
    }

    v10 = 136315138;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "support for Get Scan Stats is %s", &v10, 0xCu);
  }
}

void sub_100499C14(id a1)
{
  v2 = sub_10000C7D0(a1, v1);
  v3 = (*(*v2 + 2616))(v2);
  byte_100B6E4E0 = v3;
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "disabled";
    if (v3)
    {
      v5 = "enabled";
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for scan core compensation : %s", &v6, 0xCu);
  }
}

uint64_t sub_100499D08(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100499D98;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E4F8 != -1)
  {
    dispatch_once(&qword_100B6E4F8, block);
  }

  return byte_100B6E4F0;
}

void sub_100499D98(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*v1 + 352))(v1);
  if (v2 & 1) != 0 || (v2 = (*(*v1 + 368))(v1), (v2) || (v2 = (*(*v1 + 432))(v1), v2))
  {
    v4 = sub_10000C7D0(v2, v3);
    v5 = (*(*v4 + 2664))(v4);
    byte_100B6E4F0 = v5;
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "disabled";
      if (v5)
      {
        v7 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BT chip support for Low Energy Long Range : %s", buf, 0xCu);
    }

    v15 = 0;
    v8 = sub_10000E92C();
    sub_100007E30(buf, "LowEnergyLongRange");
    sub_100007E30(__p, "LowEnergyLongRangeDisable");
    v9 = (*(*v8 + 72))(v8, buf, __p, &v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 < 0)
    {
      operator delete(*buf);
      if (!v9)
      {
LABEL_16:
        byte_100B6E4F0 &= v15 ^ 1;
        goto LABEL_17;
      }
    }

    else if (!v9)
    {
      goto LABEL_16;
    }

    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Overriding Disabling Low Energy Long Range=%d", buf, 8u);
    }

    goto LABEL_16;
  }

LABEL_17:
  v11 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E4F0)
    {
      v12 = "enabled";
    }

    else
    {
      v12 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "support for new Low Energy Long Range is %s", buf, 0xCu);
  }
}

void sub_10049A088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049A0C4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049A154;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E500 != -1)
  {
    dispatch_once(&qword_100B6E500, block);
  }

  return byte_100B543B8;
}

void sub_10049A154(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*v1 + 352))(v1);
  if ((v2 & 1) != 0 || (v2 = (*(*v1 + 368))(v1), v2))
  {
    v4 = sub_10000C7D0(v2, v3);
    v5 = (*(*v4 + 2680))(v4);
    byte_100B543B8 = v5;
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "disabled";
      if (v5)
      {
        v7 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BT chip support for LE 2M PHy  : %s", buf, 0xCu);
    }

    v15 = 0;
    v8 = sub_10000E92C();
    sub_100007E30(buf, "LE");
    sub_100007E30(__p, "LE2MPhyDisabled");
    v9 = (*(*v8 + 72))(v8, buf, __p, &v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 < 0)
    {
      operator delete(*buf);
      if (!v9)
      {
LABEL_15:
        byte_100B543B8 &= v15 ^ 1;
        goto LABEL_16;
      }
    }

    else if (!v9)
    {
      goto LABEL_15;
    }

    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Overriding Force LE PHY 2M =%d", buf, 8u);
    }

    goto LABEL_15;
  }

LABEL_16:
  v11 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B543B8)
    {
      v12 = "enabled";
    }

    else
    {
      v12 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Support for LE2MPhy  is %s", buf, 0xCu);
  }
}

void sub_10049A410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049A44C(id a1)
{
  v2 = sub_10000C7D0(a1, v1);
  v3 = (*(*v2 + 2512))(v2);
  byte_100B6E508 = v3;
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "disabled";
    if (v3)
    {
      v5 = "enabled";
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for Scan With New Vsc : %s", buf, 0xCu);
  }

  v12 = 0;
  v6 = sub_10000E92C();
  sub_100007E30(buf, "ScanEnhancements");
  sub_100007E30(__p, "DisableScanEnhancements");
  v7 = (*(*v6 + 72))(v6, buf, __p, &v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(*buf);
  }

  v8 = qword_100BCE8D8;
  if (v7)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overriding Disabling ScanEnhancements=%d", buf, 8u);
      v8 = qword_100BCE8D8;
    }

    byte_100B6E508 &= v12 ^ 1;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E508)
    {
      v9 = "enabled";
    }

    else
    {
      v9 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "support for new Scan Enhancement VSC is %s", buf, 0xCu);
  }
}

void sub_10049A694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049A6D0(id a1)
{
  v2 = sub_10000C7D0(a1, v1);
  v3 = (*(*v2 + 2520))(v2);
  byte_100B6E518 = v3;
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "disabled";
    if (v3)
    {
      v5 = "enabled";
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for removeMultipleDuplicateEntries VSC is %s", buf, 0xCu);
  }

  v12 = 0;
  v6 = sub_10000E92C();
  sub_100007E30(buf, "ScanEnhancements");
  sub_100007E30(__p, "DisableRemoveMultipleDupliateEntries");
  v7 = (*(*v6 + 72))(v6, buf, __p, &v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(*buf);
  }

  v8 = qword_100BCE8D8;
  if (v7)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overriding Disabling removeMultipleDuplicateEntries=%d", buf, 8u);
      v8 = qword_100BCE8D8;
    }

    byte_100B6E518 &= v12 ^ 1;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E518)
    {
      v9 = "enabled";
    }

    else
    {
      v9 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "support for removeMultipleDuplicateEntries VSC is %s", buf, 0xCu);
  }
}

void sub_10049A918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049A954(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E530 != -1)
  {
    sub_100831418();
  }

  return byte_100B6E528;
}

void sub_10049A98C(id a1)
{
  v2 = sub_10000C7D0(a1, v1);
  v3 = (*(*v2 + 2528))(v2);
  byte_100B6E528 = v3;
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "disabled";
    if (v3)
    {
      v5 = "enabled";
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "support keeping Duplicate filter when Scan Enable VSC is: %s", buf, 0xCu);
  }

  v12 = 0;
  v6 = sub_10000E92C();
  sub_100007E30(buf, "ScanEnhancements");
  sub_100007E30(__p, "KeepDupFilterWhenScanEnable");
  v7 = (*(*v6 + 72))(v6, buf, __p, &v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(*buf);
  }

  v8 = qword_100BCE8D8;
  if (v7)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overriding Disabling KeepDupFilterWhenScanEnable=%d", buf, 8u);
      v8 = qword_100BCE8D8;
    }

    byte_100B6E528 &= v12 ^ 1;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E528)
    {
      v9 = "enabled";
    }

    else
    {
      v9 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "support for KeepDupFilterWhenScanEnable VSC is %s", buf, 0xCu);
  }
}

void sub_10049ABD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049AC10(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049ACA0;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E540 != -1)
  {
    dispatch_once(&qword_100B6E540, block);
  }

  return byte_100B6E538;
}

void sub_10049ACA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*v1 + 352))(v1);
  if (v2 & 1) != 0 || (v2 = (*(*v1 + 360))(v1), (v2) || (v2 = (*(*v1 + 416))(v1), (v2) || (v2 = (*(*v1 + 368))(v1), v2))
  {
    v4 = sub_10000C7D0(v2, v3);
    v5 = (*(*v4 + 2496))(v4);
    byte_100B6E538 = v5;
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "disabled";
      if (v5)
      {
        v7 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BT chip support for BT Spec advertisingsets : %s", buf, 0xCu);
    }

    v15 = 0;
    v8 = sub_10000E92C();
    sub_100007E30(buf, "AE");
    sub_100007E30(__p, "DisableSpecSets");
    v9 = (*(*v8 + 72))(v8, buf, __p, &v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 < 0)
    {
      operator delete(*buf);
      if (!v9)
      {
        goto LABEL_18;
      }
    }

    else if (!v9)
    {
      goto LABEL_18;
    }

    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Overriding DisableSpecSets=%d", buf, 8u);
    }

    byte_100B6E538 &= v15 ^ 1;
  }

LABEL_18:
  v11 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E538)
    {
      v12 = "enabled";
    }

    else
    {
      v12 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "support for BT 5.0 advertising sets is %s", buf, 0xCu);
  }
}

void sub_10049AFC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049B000(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*v1 + 352))(v1);
  if (v2 & 1) != 0 || (v2 = (*(*v1 + 360))(v1), (v2) || (v2 = (*(*v1 + 416))(v1), (v2) || (v2 = (*(*v1 + 408))(v1), v2))
  {
    v4 = sub_10000C7D0(v2, v3);
    v5 = (*(*v4 + 2480))(v4);
    byte_100B6E548 = v5;
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "disabled";
      if (v5)
      {
        v7 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BT chip support for Enhanced Connections : %s", buf, 0xCu);
    }

    v15 = 0;
    v8 = sub_10000E92C();
    sub_100007E30(buf, "AE");
    sub_100007E30(__p, "DisableEnhancedConnections");
    v9 = (*(*v8 + 72))(v8, buf, __p, &v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 < 0)
    {
      operator delete(*buf);
      if (!v9)
      {
        goto LABEL_18;
      }
    }

    else if (!v9)
    {
      goto LABEL_18;
    }

    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Overriding DisableEnhancedConnections=%d", buf, 8u);
    }

    byte_100B6E548 &= v15 ^ 1;
  }

LABEL_18:
  v11 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E548)
    {
      v12 = "enabled";
    }

    else
    {
      v12 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "support for Enhanced Connections is %s", buf, 0xCu);
  }
}

void sub_10049B324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049B360(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049B3F0;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E560 != -1)
  {
    dispatch_once(&qword_100B6E560, block);
  }

  return byte_100B6E558;
}

void sub_10049B3F0(uint64_t a1)
{
  v1 = (*(**(a1 + 32) + 352))(*(a1 + 32));
  if (v1)
  {
    v3 = sub_10000C7D0(v1, v2);
    v4 = (*(*v3 + 2488))(v3);
    byte_100B6E558 = v4;
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "disabled";
      if (v4)
      {
        v6 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BT chip support for Enhanced Connections V2 : %s", buf, 0xCu);
    }

    v14 = 0;
    v7 = sub_10000E92C();
    sub_100007E30(buf, "AE");
    sub_100007E30(__p, "DisableEnhancedConnectionsV2");
    v8 = (*(*v7 + 72))(v7, buf, __p, &v14);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (v16 < 0)
    {
      operator delete(*buf);
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    else if (!v8)
    {
      goto LABEL_15;
    }

    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Overriding DisableEnhancedConnectionsV2=%d", buf, 8u);
    }

    byte_100B6E558 &= v14 ^ 1;
  }

LABEL_15:
  v10 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E558)
    {
      v11 = "enabled";
    }

    else
    {
      v11 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "support for Enhanced Connections V2 is %s", buf, 0xCu);
  }
}

void sub_10049B678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049B6B4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049B744;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E570 != -1)
  {
    dispatch_once(&qword_100B6E570, block);
  }

  return byte_100B6E568;
}

void sub_10049B744(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*v1 + 352))(v1);
  if ((v2 & 1) != 0 || (v2 = (*(*v1 + 368))(v1), v2))
  {
    v4 = sub_10000C7D0(v2, v3);
    v5 = (*(*v4 + 2624))(v4);
    byte_100B6E568 = v5;
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "disabled";
      if (v5)
      {
        v7 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BT chip support for Controller BT clock capture : %s", buf, 0xCu);
    }

    v15 = 0;
    v8 = sub_10000E92C();
    sub_100007E30(buf, "LE");
    sub_100007E30(__p, "DisallowControllerBTClockConfigure");
    v9 = (*(*v8 + 72))(v8, buf, __p, &v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 < 0)
    {
      operator delete(*buf);
      if (!v9)
      {
        goto LABEL_16;
      }
    }

    else if (!v9)
    {
      goto LABEL_16;
    }

    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Overriding Controller BT clock capture =%d", buf, 8u);
    }

    byte_100B6E568 &= v15 ^ 1;
  }

LABEL_16:
  v11 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E568)
    {
      v12 = "enabled";
    }

    else
    {
      v12 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "support for new Controller BT clock capture is %s", buf, 0xCu);
  }
}

void sub_10049BA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049BA3C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049BACC;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E580 != -1)
  {
    dispatch_once(&qword_100B6E580, block);
  }

  return byte_100B6E578;
}

void sub_10049BACC(uint64_t a1)
{
  v1 = (*(**(a1 + 32) + 376))(*(a1 + 32));
  if (v1)
  {
    v3 = sub_10000C7D0(v1, v2);
    v4 = (*(*v3 + 2632))(v3);
    byte_100B6E578 = v4;
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "disabled";
      if (v4)
      {
        v6 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BT chip support for Configure Synchronize Event : %s", buf, 0xCu);
    }

    v14 = 0;
    v7 = sub_10000E92C();
    sub_100007E30(buf, "LE");
    sub_100007E30(__p, "DisallowConfigureSynchronizeEvent");
    v8 = (*(*v7 + 72))(v7, buf, __p, &v14);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (v16 < 0)
    {
      operator delete(*buf);
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    else if (!v8)
    {
      goto LABEL_15;
    }

    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Overriding Configure Synchronize Event  =%d", buf, 8u);
    }

    byte_100B6E578 &= v14 ^ 1;
  }

LABEL_15:
  v10 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E578)
    {
      v11 = "enabled";
    }

    else
    {
      v11 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "support for Configure Synchronize Event is %s", buf, 0xCu);
  }
}

void sub_10049BD54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049BD90(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*v1 + 352))(v1);
  if ((v2 & 1) != 0 || (v2 = (*(*v1 + 368))(v1), v2))
  {
    v4 = sub_10000C7D0(v2, v3);
    v5 = (*(*v4 + 2640))(v4);
    byte_100B6E588 = v5;
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "disabled";
      if (v5)
      {
        v7 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BT chip support for RSSI Connection statistics and detection : %s", buf, 0xCu);
    }

    v15 = 0;
    v8 = sub_10000E92C();
    sub_100007E30(buf, "LE");
    sub_100007E30(__p, "DisallowRSSIConnectionStatisticAndInterval");
    v9 = (*(*v8 + 72))(v8, buf, __p, &v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 < 0)
    {
      operator delete(*buf);
      if (!v9)
      {
        goto LABEL_16;
      }
    }

    else if (!v9)
    {
      goto LABEL_16;
    }

    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Overriding RSSI Connection statistics and detection =%d", buf, 8u);
    }

    byte_100B6E588 &= v15 ^ 1;
  }

LABEL_16:
  v11 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E588)
    {
      v12 = "enabled";
    }

    else
    {
      v12 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "support for new RSSI Connection statistics and detection is %s", buf, 0xCu);
  }
}

void sub_10049C04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049C088(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049C118;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E5A0 != -1)
  {
    dispatch_once(&qword_100B6E5A0, block);
  }

  return byte_100B6E598;
}

void sub_10049C118(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((*(*v1 + 352))(v1) & 1) != 0 || (*(*v1 + 368))(v1))
  {
    byte_100B6E598 = 1;
    v9 = 0;
    v2 = sub_10000E92C();
    sub_100007E30(buf, "LE");
    sub_100007E30(__p, "MagnetTimeoutABCLog");
    v3 = (*(*v2 + 72))(v2, buf, __p, &v9);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    if (v11 < 0)
    {
      operator delete(*buf);
      if (!v3)
      {
        goto LABEL_12;
      }
    }

    else if (!v3)
    {
      goto LABEL_12;
    }

    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Overriding MagnetTimeoutABCLog =%d", buf, 8u);
    }

    byte_100B6E598 = v9;
  }

LABEL_12:
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E598)
    {
      v6 = "enabled";
    }

    else
    {
      v6 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "support for Magnet Timeout ABC Log is %s", buf, 0xCu);
  }
}

void sub_10049C338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049C374(id a1)
{
  v2 = sub_10000C7D0(a1, v1);
  v3 = (*(*v2 + 2832))(v2);
  byte_100B6E5A8 = v3;
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v5 = "enabled";
    }

    else
    {
      v5 = "disabled";
    }

    v8 = 136315138;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for LE Manufacturer Scan Filter : %s", &v8, 0xCu);
    if ((byte_100B6E5A8 & 1) == 0)
    {
      v3 = 0;
      goto LABEL_9;
    }
  }

  else if (!v3)
  {
    goto LABEL_9;
  }

  v3 = _os_feature_enabled_impl();
LABEL_9:
  byte_100B6E5A8 = v3;
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v7 = "enabled";
    }

    else
    {
      v7 = "disabled";
    }

    v8 = 136315138;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "support for LE Manufacturer Scan Filter %s", &v8, 0xCu);
  }
}

uint64_t sub_10049C4FC(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049C58C;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E5C0 != -1)
  {
    dispatch_once(&qword_100B6E5C0, block);
  }

  return byte_100B6E5B8;
}

void sub_10049C58C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*v1 + 352))(v1);
  if ((v2 & 1) != 0 || (v2 = (*(*v1 + 368))(v1), v2))
  {
    v4 = sub_10000C7D0(v2, v3);
    v5 = (*(*v4 + 2648))(v4);
    byte_100B6E5B8 = v5;
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "disabled";
      if (v5)
      {
        v7 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BT chip support for Bluetooth Usage  : %s", buf, 0xCu);
    }

    v15 = 0;
    v8 = sub_10000E92C();
    sub_100007E30(buf, "LE");
    sub_100007E30(__p, "DisallowBluetoothUsageNotification");
    v9 = (*(*v8 + 72))(v8, buf, __p, &v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 < 0)
    {
      operator delete(*buf);
      if (!v9)
      {
        goto LABEL_16;
      }
    }

    else if (!v9)
    {
      goto LABEL_16;
    }

    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Overriding Bluetooth usage notification =%d", buf, 8u);
    }

    byte_100B6E5B8 &= v15 ^ 1;
  }

LABEL_16:
  v11 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E5B8)
    {
      v12 = "enabled";
    }

    else
    {
      v12 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "support for Bluetooth usage notification is %s", buf, 0xCu);
  }
}

void sub_10049C848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049C884(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049C914;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E5D0 != -1)
  {
    dispatch_once(&qword_100B6E5D0, block);
  }

  return byte_100B6E5C8;
}

void sub_10049C914(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*v1 + 352))(v1);
  if ((v2 & 1) != 0 || (v2 = (*(*v1 + 368))(v1), v2))
  {
    v4 = sub_10000C7D0(v2, v3);
    v5 = (*(*v4 + 2656))(v4);
    byte_100B6E5C8 = v5;
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "disabled";
      if (v5)
      {
        v7 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BT chip support for Phy Statistics Usage : %s", buf, 0xCu);
    }

    v15 = 0;
    v8 = sub_10000E92C();
    sub_100007E30(buf, "LE");
    sub_100007E30(__p, "DisallowPhyStatisticsUsageNotification");
    v9 = (*(*v8 + 72))(v8, buf, __p, &v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 < 0)
    {
      operator delete(*buf);
      if (!v9)
      {
        goto LABEL_16;
      }
    }

    else if (!v9)
    {
      goto LABEL_16;
    }

    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Overriding Phy Statistics Bluetooth usage notification =%d", buf, 8u);
    }

    byte_100B6E5C8 &= v15 ^ 1;
  }

LABEL_16:
  v11 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E5C8)
    {
      v12 = "enabled";
    }

    else
    {
      v12 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "support for Phy Statistics Bluetooth notification is %s", buf, 0xCu);
  }
}

void sub_10049CBD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049CC0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*v1 + 352))(v1);
  if ((v2 & 1) != 0 || (v2 = (*(*v1 + 408))(v1), v2))
  {
    v4 = sub_10000C7D0(v2, v3);
    v5 = (*(*v4 + 2688))(v4);
    byte_100B6E5D8 = v5;
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "YES";
      if (!v5)
      {
        v7 = "NO";
      }

      *buf = 136315394;
      *&buf[4] = v7;
      v17 = 1024;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BT chip support for ADV Buffers is : %s (%d buffers)", buf, 0x12u);
    }

    v15 = 0;
    v8 = sub_10000E92C();
    sub_100007E30(buf, "LE");
    sub_100007E30(__p, "DisableADVBuffers");
    v9 = (*(*v8 + 72))(v8, buf, __p, &v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v19 < 0)
    {
      operator delete(*buf);
      if (!v9)
      {
        goto LABEL_16;
      }
    }

    else if (!v9)
    {
      goto LABEL_16;
    }

    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Overriding DisableADVBuffers=%d", buf, 8u);
    }

    byte_100B6E5D8 = 0;
  }

LABEL_16:
  v11 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "YES";
    if (!byte_100B6E5D8)
    {
      v12 = "NO";
    }

    *buf = 136315394;
    *&buf[4] = v12;
    v17 = 1024;
    v18 = byte_100B6E5D8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "support for ADV Buffering is %s (%d buffers)", buf, 0x12u);
  }
}

void sub_10049CED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049CF0C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049CF9C;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E5F0 != -1)
  {
    dispatch_once(&qword_100B6E5F0, block);
  }

  return byte_100B6E5E8;
}

void sub_10049CF9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*v1 + 352))(v1);
  if ((v2 & 1) != 0 || (v2 = (*(*v1 + 408))(v1), v2))
  {
    v4 = sub_10000C7D0(v2, v3);
    v5 = (*(*v4 + 2864))(v4);
    byte_100B6E5E8 = v5;
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "disabled";
      if (v5)
      {
        v7 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BT chip support for Match Buffers is  : %s", buf, 0xCu);
    }

    v15 = 0;
    v8 = sub_10000E92C();
    sub_100007E30(buf, "LE");
    sub_100007E30(__p, "DisableMatchBuffers");
    v9 = (*(*v8 + 72))(v8, buf, __p, &v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 < 0)
    {
      operator delete(*buf);
      if (!v9)
      {
        goto LABEL_16;
      }
    }

    else if (!v9)
    {
      goto LABEL_16;
    }

    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Overriding DisableMatchBuffers=%d", buf, 8u);
    }

    byte_100B6E5E8 &= v15 ^ 1;
  }

LABEL_16:
  v11 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E5E8)
    {
      v12 = "enabled";
    }

    else
    {
      v12 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "support for Match Buffering is %s", buf, 0xCu);
  }
}

void sub_10049D258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049D294()
{
  if (qword_100B6E600 != -1)
  {
    sub_100831440();
  }

  v7 = 0;
  v0 = sub_10000E92C();
  sub_100007E30(buf, "A2DP");
  sub_100007E30(__p, "WirelessSplitter");
  (*(*v0 + 72))(v0, buf, __p, &v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(*buf);
  }

  v1 = byte_100B6E5F8 | v7;
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = "not supported";
    if (v1)
    {
      v3 = "supported";
    }

    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Wireless Splitter is %s on this hardware platform", buf, 0xCu);
  }

  return v1 & 1;
}

void sub_10049D3F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049D4F0(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E608 != -1)
  {
    sub_100831454();
  }

  return word_100B543BA;
}

void sub_10049D528(id a1)
{
  v2 = sub_10000C7D0(a1, v1);
  v3 = (*(*v2 + 3136))(v2);
  word_100B543BA = v3;
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Minimum advertising interval supported by HW : %d", buf, 8u);
  }

  v10 = 32;
  v5 = sub_10000E92C();
  sub_100007E30(buf, "AE");
  sub_100007E30(__p, "MinAdvertisingInterval");
  v6 = (*(*v5 + 88))(v5, buf, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(*buf);
  }

  v7 = qword_100BCE8D8;
  if (v6)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Overriding MinAdvertisingInterval=%d", buf, 8u);
      v7 = qword_100BCE8D8;
    }

    word_100B543BA = v10;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = word_100B543BA;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Minimum advertising interval is %d", buf, 8u);
  }
}

void sub_10049D738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049D794(id a1)
{
  v9 = 0;
  v1 = sub_10000E92C();
  sub_100007E30(buf, "Scan");
  sub_100007E30(__p, "DisableMatchTableConfigV2");
  v2 = (*(*v1 + 72))(v1, buf, __p, &v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 < 0)
  {
    operator delete(*buf);
  }

  v4 = sub_10000C7D0(v2, v3);
  if ((v9 & 1) == 0 && (*(v4 + 800) - 4000) >= 0xFFFFF831)
  {
    byte_100B6E610 = 1;
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E610)
    {
      v6 = "enabled";
    }

    else
    {
      v6 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "support for MatchTableV2 usage notification is %s", buf, 0xCu);
  }
}

void sub_10049D8FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049D938(id a1)
{
  v9 = 0;
  v1 = sub_10000E92C();
  sub_100007E30(buf, "Scan");
  sub_100007E30(__p, "DisableMatchTableConfigV3");
  v2 = (*(*v1 + 72))(v1, buf, __p, &v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 < 0)
  {
    operator delete(*buf);
  }

  v4 = sub_10000C7D0(v2, v3);
  if ((v9 & 1) == 0 && (*(v4 + 800) - 4000) >= 0xFFFFF831)
  {
    byte_100B6E620 = 1;
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E620)
    {
      v6 = "enabled";
    }

    else
    {
      v6 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "support for MatchTableV3 usage notification is %s", buf, 0xCu);
  }
}

void sub_10049DAA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049DADC(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049DB6C;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E638 != -1)
  {
    dispatch_once(&qword_100B6E638, block);
  }

  return byte_100B6E630;
}

void sub_10049DB6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_10000C7D0(a1, a2);
  v4 = (*(*v3 + 3104))(v3);
  byte_100B6E630 = v4;
  v5 = (*(*v2 + 360))(v2);
  if (v5)
  {
    v7 = sub_10000C7D0(v5, v6);
    if (*(v7 + 800))
    {
      if (*(sub_10000C7D0(v7, v8) + 800) <= 0x7CFu)
      {
        byte_100B6E630 = 0;
      }
    }
  }

  v17 = 0;
  v9 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "FeatureVendorList");
  v10 = (*(*v9 + 72))(v9, buf, __p, &v17);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(*buf);
  }

  v11 = qword_100BCE8D8;
  if (v10)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v17)
      {
        v12 = "Enabled";
      }

      else
      {
        v12 = "Disabled";
      }

      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Overriding isLEFeatureVendorListEnabled with %s", buf, 0xCu);
      v11 = qword_100BCE8D8;
    }

    byte_100B6E630 = v4 & v17;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "disabled";
    v14 = "N";
    if (byte_100B6E630)
    {
      v13 = "enabled";
    }

    if (v4)
    {
      v14 = "Y";
    }

    *buf = 136315394;
    *&buf[4] = v13;
    v19 = 2080;
    v20 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "LE Feature Vendor List is %s (hw %s)", buf, 0x16u);
  }
}

void sub_10049DDF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049DE30(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E648 != -1)
  {
    sub_100831490();
  }

  return byte_100B6E640;
}

void sub_10049DE68(id a1)
{
  v12 = 0;
  v1 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "IncludeHiddenLEFeatureVendors");
  v2 = (*(*v1 + 72))(v1, buf, __p, &v12);
  v4 = v2;
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(*buf);
  }

  v5 = sub_10000C7D0(v2, v3);
  v6 = (*(*v5 + 3104))(v5);
  v7 = v6;
  if (v4)
  {
    v7 = (v6 & v12);
  }

  byte_100B6E640 = v7;
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "not include";
    if (v7)
    {
      v9 = "include";
    }

    *buf = 136315138;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "support for Include Hidden LE Feature Vendor List Vendors is %s", buf, 0xCu);
  }
}

void sub_10049DFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049E028(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E658 != -1)
  {
    sub_1008314A4();
  }

  return byte_100B6E650;
}

void sub_10049E060(id a1)
{
  v2 = sub_10000C7D0(a1, v1);
  v3 = (*(*v2 + 3080))(v2);
  byte_100B6E650 = v3;
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "disabled";
    if (v3)
    {
      v5 = "enabled";
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for Set Extended Advertising Parameters V2 : %s", buf, 0xCu);
  }

  v12 = 0;
  v6 = sub_10000E92C();
  sub_100007E30(buf, "AE");
  sub_100007E30(__p, "SetExtendedAdvertisingParametersV2");
  v7 = (*(*v6 + 72))(v6, buf, __p, &v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(*buf);
  }

  v8 = qword_100BCE8D8;
  if (v7)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overriding SetExtendedAdvertisingParametersV2=%d", buf, 8u);
      v8 = qword_100BCE8D8;
    }

    byte_100B6E650 &= v12 ^ 1;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E650)
    {
      v9 = "enabled";
    }

    else
    {
      v9 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "support for Set Extended Advertising Parameters V2 is %s", buf, 0xCu);
  }
}

void sub_10049E2A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049E2E4()
{
  v0 = sub_10000E92C();
  v1 = (*(*v0 + 8))(v0);
  if (!v1)
  {
    goto LABEL_10;
  }

  v12 = 0;
  v3 = sub_10000E92C();
  sub_100007E30(buf, "HFP");
  sub_100007E30(__p, "DisableUWBS");
  v1 = (*(*v3 + 72))(v3, buf, __p, &v12);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 < 0)
  {
    operator delete(*buf);
  }

  if (v12 == 1)
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "UWBS for HFP disabled by defaults write", buf, 2u);
    }

    return 0;
  }

  else
  {
LABEL_10:
    v6 = sub_10000C7D0(v1, v2);
    return sub_100410138(v6, v7);
  }
}

void sub_10049E414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049E448(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000C798(a1, a2);
  result = (*(*v2 + 352))(v2);
  if (!result || (result = _os_feature_enabled_impl(), result))
  {
    v5 = sub_10000C7D0(result, v4);

    return sub_100410430(v5, v6);
  }

  return result;
}

uint64_t sub_10049E4C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000C798(a1, a2);
  v3 = (*(*v2 + 416))(v2);
  if (v3)
  {
    v5 = sub_10000E92C();
    v3 = (*(*v5 + 8))(v5);
    if (v3)
    {
      v21 = 0;
      v6 = sub_10000E92C();
      sub_100007E30(v19, "HFP");
      sub_100007E30(__p, "DisableUWBSStereo");
      v3 = (*(*v6 + 72))(v6, v19, __p, &v21);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      if (v21)
      {
        return 0;
      }
    }
  }

  v7 = sub_10000C798(v3, v4);
  v8 = (*(*v7 + 352))(v7);
  if (v8)
  {
    v10 = sub_10000E92C();
    v8 = (*(*v10 + 8))(v10);
    if (v8)
    {
      v21 = 0;
      v11 = sub_10000E92C();
      sub_100007E30(v19, "HFP");
      sub_100007E30(__p, "DisableUWBSStereo");
      v8 = (*(*v11 + 72))(v11, v19, __p, &v21);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      if (v21)
      {
        return 0;
      }
    }
  }

  v13 = sub_10000C798(v8, v9);
  result = (*(*v13 + 360))(v13);
  if (!result || (result = _os_feature_enabled_impl(), result))
  {
    v15 = sub_10000C7D0(result, v14);
    return sub_1004102C4(v15, v16);
  }

  return result;
}

void sub_10049E714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049E750(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000C798(a1, a2);
  result = (*(*v2 + 352))(v2);
  if (!result || (result = _os_feature_enabled_impl(), result))
  {
    v5 = sub_10000C798(result, v4);
    v6 = (*(*v5 + 416))(v5);
    if (v6)
    {
      result = _os_feature_enabled_impl();
      if (!result)
      {
        return result;
      }

      v18 = 0;
      v8 = sub_10000E92C();
      v9 = (*(*v8 + 8))(v8);
      if (!v9)
      {
        goto LABEL_11;
      }

      v11 = sub_10000E92C();
      sub_100007E30(v16, "HFP");
      sub_100007E30(__p, "DisableUWBSStereo");
      v9 = (*(*v11 + 72))(v11, v16, __p, &v18);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      if (v17 < 0)
      {
        operator delete(v16[0]);
      }

      if ((v18 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v13 = sub_10000C798(v6, v7);
      v9 = (*(*v13 + 360))(v13);
      if ((v9 & 1) == 0)
      {
LABEL_11:
        v12 = sub_10000C7D0(v9, v10);
        return sub_1004104DC(v12);
      }
    }

    return 0;
  }

  return result;
}

void sub_10049E904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049E938()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v2 = *(*sub_10000C7D0(result, v1) + 2880);

    return v2();
  }

  return result;
}

uint64_t sub_10049E9A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000C798(a1, a2);
  result = (*(*v2 + 416))(v2);
  if ((result & 1) != 0 || (v5 = sub_10000C798(result, v4), result = (*(*v5 + 352))(v5), result))
  {
    v6 = sub_10000C7D0(result, v4);

    return sub_1004102C4(v6, v7);
  }

  return result;
}

uint64_t sub_10049EA40()
{
  v0 = sub_10000E92C();
  v1 = (*(*v0 + 8))(v0);
  if (!v1)
  {
    goto LABEL_10;
  }

  v12 = 0;
  v3 = sub_10000E92C();
  sub_100007E30(buf, "HFP");
  sub_100007E30(__p, "DisableWBS");
  v1 = (*(*v3 + 72))(v3, buf, __p, &v12);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 < 0)
  {
    operator delete(*buf);
  }

  if (v12 == 1)
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "WBS for HFP disabled by defaults write", buf, 2u);
    }

    return 0;
  }

  else
  {
LABEL_10:
    v6 = sub_10000C7D0(v1, v2);
    return sub_1004100E0(v6, v7);
  }
}

void sub_10049EB70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049EBA4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 > 8)
  {
    if (a2 <= 10)
    {
      if (a2 == 9)
      {
        v4 = *(*a1 + 224);
      }

      else
      {
        v4 = *(*a1 + 232);
      }

      return v4();
    }

    if (a2 == 11)
    {
      v4 = *(*a1 + 240);

      return v4();
    }

    if (a2 == 12)
    {
      v4 = *(*a1 + 248);

      return v4();
    }

LABEL_33:
    v7 = sub_10000C7D0(a1, a2);
    v5 = 0;
    v9 = *(v7 + 800);
    if (v2 <= 3)
    {
      if (v2)
      {
        if (v2 != 1)
        {
          if (v2 != 2)
          {
            return v5;
          }

          v10 = sub_10000C798(v7, v8);
          v11 = (*(*v10 + 352))(v10);
          if (v11)
          {
            v13 = sub_10000C798(v11, v12);
            if ((*(*v13 + 840))(v13, 0))
            {
              v14 = sub_10000E92C();
              if (!(*(*v14 + 8))(v14))
              {
                return 1;
              }

              v15 = sub_10000E92C();
              if ((*(*v15 + 600))(v15))
              {
                return 1;
              }
            }
          }

          return 0;
        }

        if ((*(*a1 + 384))(a1) && v9 - 12 < 0x7C4)
        {
          return 1;
        }

        v25 = (*(*a1 + 392))(a1);
        if (v9 > 0xC)
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        v5 = 1;
        if ((v26 & 1) != 0 || v9 - 5000 < 0x3E8)
        {
          return v5;
        }

        v27 = v9 - 3000 >= 0x3E8;
      }

      else
      {
        v5 = 1;
        v19 = sub_1000271F0();
        if (v19 <= 73)
        {
          if ((v19 - 6) <= 0x3F && ((1 << (v19 - 6)) & 0xCC00000007C3FFFFLL) != 0)
          {
            return v5;
          }
        }

        else if ((v19 - 74) <= 0x39 && ((1 << (v19 - 74)) & 0x21E0C3FFFDFFFFFLL) != 0 || (v19 - 154) <= 0x33 && ((1 << (v19 + 102)) & 0xFC0000000004FLL) != 0 || v19 == 296)
        {
          return v5;
        }

        if (v9 - 20 < 0x7BC)
        {
          return v5;
        }

        v27 = v9 - 12 >= 0x7C4 && v9 - 5000 >= 0x3E8 && v9 - 3000 >= 0x3E8;
      }

      return !v27;
    }

    if (v2 == 4)
    {
      if ((*(*a1 + 384))(a1))
      {
        v20 = v9 > 0xB;
      }

      else
      {
        v20 = 0;
      }

      if (!v20)
      {
        v21 = (*(*a1 + 392))(a1);
        if (v9 > 0xC)
        {
          return v21;
        }

        else
        {
          return 0;
        }
      }

      return 1;
    }

    if (v2 != 5)
    {
      if (v2 != 13)
      {
        return v5;
      }

      if ((*(*a1 + 352))(a1) & 1) != 0 || ((*(*a1 + 368))(a1))
      {
        return 1;
      }

      v17 = *(*a1 + 456);
      v18 = a1;
      goto LABEL_71;
    }

    v22 = sub_10000C798(v7, v8);
    v23 = (*(*v22 + 840))(v22, 0);
    if (v23)
    {
      v18 = sub_10000C798(v23, v24);
      v17 = *(*v18 + 456);
LABEL_71:

      return v17(v18);
    }

    return 0;
  }

  if (a2 > 6)
  {
    if (a2 == 7)
    {
      v4 = *(*a1 + 208);
    }

    else
    {
      v4 = *(*a1 + 216);
    }

    return v4();
  }

  if (a2 != 3)
  {
    if (a2 == 6)
    {
      v4 = *(*a1 + 200);

      return v4();
    }

    goto LABEL_33;
  }

  if ((*(*a1 + 368))(a1))
  {
    return 0;
  }

  v16 = *(*a1 + 840);

  return v16(a1, 1);
}

uint64_t sub_10049F294()
{
  v0 = sub_1000271F0();
  if (v0 > 0x16)
  {
    return 0;
  }

  else
  {
    return byte_1008A87CC[v0];
  }
}

BOOL sub_10049F2C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C7D0(a1, a2);
  v4 = sub_1004106D0(v3, 0x1388u);
  result = 1;
  if (!v4)
  {
    v7 = sub_10000C7D0(v4, v5);
    if (*(v7 + 800) < 0x7D0u || (v7 = sub_10000C7D0(v7, v8), *(v7 + 800) > 0xF9Fu) || (v7 = sub_10000C7D0(v7, v8), *(v7 + 800) < 0xBB8u) || (v7 = (*(*a1 + 416))(a1), v7))
    {
      v9 = sub_10000C7D0(v7, v8);
      if (!*(v9 + 800))
      {
        return 0;
      }

      v11 = sub_10000C7D0(v9, v10);
      if (*(v11 + 800) > 0x7CFu || *(sub_10000C7D0(v11, v12) + 800) < 0x16u || (*(*a1 + 416))(a1))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10049F3C8(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E668 != -1)
  {
    sub_1008314B8();
  }

  return byte_100B6E660;
}

void sub_10049F400(id a1)
{
  v2 = sub_10000C7D0(a1, v1);
  v3 = (*(*v2 + 2424))(v2);
  byte_100B6E660 = v3;
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Support power Tag feature =%d", v5, 8u);
  }
}

uint64_t sub_10049F4DC(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E678 != -1)
  {
    sub_1008314CC();
  }

  return byte_100B6E670;
}

void sub_10049F514(id a1)
{
  v2 = sub_10000C7D0(a1, v1);
  v3 = (*(*v2 + 2432))(v2);
  byte_100B6E670 = v3;
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Support power Tag feature =%d", v5, 8u);
  }
}

uint64_t sub_10049F5F8(uint64_t a1, char a2)
{
  result = _os_feature_enabled_impl();
  *(a1 + 12) = result & a2;
  return result;
}

uint64_t sub_10049F638(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E688 != -1)
  {
    sub_1008314E0();
  }

  return byte_100B6E680;
}

void sub_10049F670(id a1)
{
  v2 = sub_10000C7D0(a1, v1);
  v3 = (*(*v2 + 2448))(v2);
  v15 = 0;
  v4 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "EnableAdjustLEInstantFactor");
  v5 = (*(*v4 + 72))(v4, buf, __p, &v15);
  v6 = v15;
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = v5 & v6;
  if (SHIBYTE(v19) < 0)
  {
    operator delete(*buf);
  }

  v8 = v7 | v3;
  byte_100B6E680 = (v7 | v3) & 1;
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "No";
    if (v8)
    {
      v11 = "Yes";
    }

    else
    {
      v11 = "No";
    }

    if (v3)
    {
      v12 = "Yes";
    }

    else
    {
      v12 = "No";
    }

    *buf = 136315650;
    *&buf[4] = v11;
    v17 = 2080;
    v18 = v12;
    if (v15)
    {
      v10 = "Yes";
    }

    v19 = 2080;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Support for Adjusting LE Instant Factor is enabled: %s (hw %s override %s)", buf, 0x20u);
  }
}

void sub_10049F828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049F864(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*v1 + 352))(v1);
  if (v2 & 1) != 0 || (v2 = (*(*v1 + 416))(v1), (v2) || (v2 = (*(*v1 + 360))(v1), (v2) || (v2 = (*(*v1 + 368))(v1), (v2) || (v2 = (*(*v1 + 456))(v1), (v2))
  {
    v4 = sub_10000C7D0(v2, v3);
    v2 = (*(*v4 + 3168))(v4);
    byte_100B6E690 = v2;
    if (!v2)
    {
      goto LABEL_21;
    }
  }

  else if ((byte_100B6E690 & 1) == 0)
  {
    goto LABEL_21;
  }

  v5 = *(sub_10000C7D0(v2, v3) + 800);
  if ((*(*v1 + 416))(v1))
  {
    v6 = v5 == 20;
  }

  else
  {
    v6 = 0;
  }

  if (v6 || (*(*v1 + 360))(v1) && (v5 - 1) <= 0x7CE)
  {
    v21 = 0;
    v7 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "EnforcePrioritization");
    v8 = (*(*v7 + 72))(v7, buf, __p, &v21);
    v9 = v21;
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    v10 = v8 & v9;
    if (v25 < 0)
    {
      operator delete(*buf);
      if (v10)
      {
LABEL_17:
        v11 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Support for Discovery Scan Prioritization is enforced.", buf, 2u);
        }

        goto LABEL_21;
      }
    }

    else if (v10)
    {
      goto LABEL_17;
    }

    byte_100B6E690 = 0;
  }

LABEL_21:
  v12 = qword_100BCE8D8;
  v13 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (byte_100B6E690)
    {
      v15 = "enabled";
    }

    else
    {
      v15 = "disabled";
    }

    v16 = sub_10000C7D0(v13, v14);
    v17 = (*(*v16 + 3168))(v16);
    v18 = "N";
    if (v17)
    {
      v18 = "Y";
    }

    *buf = 136315394;
    *&buf[4] = v15;
    v23 = 2080;
    v24 = v18;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Support for Discovery Scan Prioritization is %s (hw capability %s)", buf, 0x16u);
  }
}

void sub_10049FC34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049FC70(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E6A8 != -1)
  {
    sub_1008314F4();
  }

  return byte_100B6E6A0;
}

void sub_10049FCA8(id a1)
{
  v2 = sub_10000C7D0(a1, v1);
  v3 = (*(*v2 + 3200))(v2);
  byte_100B6E6A0 = v3;
  if (v3)
  {
    v17 = 0;
    v4 = sub_10000E92C();
    sub_100007E30(buf, "LE");
    sub_100007E30(__p, "DisableLEConnectionPrioritization");
    v5 = (*(*v4 + 72))(v4, buf, __p, &v17);
    v6 = v17;
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = v5 & v6;
    if (v21 < 0)
    {
      operator delete(*buf);
      if (!v7)
      {
        goto LABEL_10;
      }
    }

    else if (!v7)
    {
      goto LABEL_10;
    }

    byte_100B6E6A0 = 0;
    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Disable LE Connection Prioritization.", buf, 2u);
    }
  }

LABEL_10:
  v9 = qword_100BCE8D8;
  v10 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (byte_100B6E6A0)
    {
      v12 = "enabled";
    }

    else
    {
      v12 = "disabled";
    }

    v13 = sub_10000C7D0(v10, v11);
    v14 = (*(*v13 + 3200))(v13);
    *buf = 136315394;
    *&buf[4] = v12;
    v19 = 1024;
    v20 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Support for LE Connection Prioritization is %s (hw capability %{BOOL}d)", buf, 0x12u);
  }
}

void sub_10049FEBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049FEF8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049FF88;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E6B8 != -1)
  {
    dispatch_once(&qword_100B6E6B8, block);
  }

  return byte_100B6E6B0;
}

void sub_10049FF88(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*v1 + 368))(v1);
  if (v2 & 1) != 0 || (v2 = (*(*v1 + 352))(v1), (v2) || (v2 = (*(*v1 + 416))(v1), v2))
  {
    v4 = sub_10000C7D0(v2, v3);
    v5 = (*(*v4 + 4168))(v4);
    byte_100B6E6B0 = v5;
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "disabled";
      if (v5)
      {
        v7 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BT chip support for Controller Scan Rx Stats : %s", buf, 0xCu);
    }
  }

  if (byte_100B6E6B0 != 1)
  {
    goto LABEL_18;
  }

  v8 = _os_feature_enabled_impl();
  byte_100B6E6B0 = v8;
  if (!v8 || !(*(*v1 + 368))(v1))
  {
    goto LABEL_19;
  }

  v18 = 0;
  v9 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "FWStatsScan");
  v10 = (*(*v9 + 72))(v9, buf, __p, &v18);
  v11 = v18;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = v10 & v11;
  if ((v20 & 0x80000000) == 0)
  {
    if (v12)
    {
      goto LABEL_15;
    }

LABEL_18:
    byte_100B6E6B0 = 0;
    goto LABEL_19;
  }

  operator delete(*buf);
  if (!v12)
  {
    goto LABEL_18;
  }

LABEL_15:
  byte_100B6E6B0 = 1;
  v13 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Controller Scan Rx Stats is enabled with override.", buf, 2u);
  }

LABEL_19:
  v14 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E6B0)
    {
      v15 = "enabled";
    }

    else
    {
      v15 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "support for Get Scan Stats is %s", buf, 0xCu);
  }
}

void sub_1004A02CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004A0308(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_10000C60C(v1);
  if (v2)
  {
    v4 = sub_10000C7D0(v2, v3);
    if ((*(*v4 + 2576))(v4))
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    if (!sub_100032658(v1))
    {
      goto LABEL_8;
    }

    v5 = 1;
  }

  dword_100B6E6C0 = v5;
LABEL_8:
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (dword_100B6E6C0 > 3)
    {
      v7 = "Unknown ScanCoreHWType";
    }

    else
    {
      v7 = off_100AF8828[dword_100B6E6C0];
    }

    v8 = 136315138;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ScanCore HW Type : %s", &v8, 0xCu);
  }
}

void sub_1004A0434(uint64_t a1)
{
  v1 = sub_10000C60C(*(a1 + 32));
  if (v1)
  {
    v3 = sub_10000C7D0(v1, v2);
    if ((*(*v3 + 2584))(v3))
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  dword_100B6E6D0 = v4;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = off_100AF8848[v4];
    v7 = 136315138;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ScanCore Compensation Type : %s", &v7, 0xCu);
  }
}

void sub_1004A0538(id a1)
{
  v7 = 0;
  v1 = sub_10000E92C();
  sub_100007E30(v5, "LE");
  sub_100007E30(__p, "ScanCoreSupporteLNAandeLNABypassInSingleWindow");
  v2 = (*(*v1 + 72))(v1, v5, __p, &v7);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
    if (!v2)
    {
      return;
    }
  }

  else if (!v2)
  {
    return;
  }

  byte_100B6E6E0 &= v7;
}

void sub_1004A0600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004A0634(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E700 != -1)
  {
    sub_10083151C();
  }

  return byte_100B6E6F8;
}

void sub_1004A066C(id a1)
{
  v2 = sub_10000C7D0(a1, v1);
  v3 = sub_10008215C(v2, 5u);
  byte_100B6E6F8 = v3;
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v5 = "enabled";
    }

    else
    {
      v5 = "disabled";
    }

    v8 = 136315138;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for LE Connection Scan Prioritization : %s", &v8, 0xCu);
    if ((byte_100B6E6F8 & 1) == 0)
    {
      v3 = 0;
      goto LABEL_9;
    }
  }

  else if (!v3)
  {
    goto LABEL_9;
  }

  v3 = _os_feature_enabled_impl();
LABEL_9:
  byte_100B6E6F8 = v3;
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v7 = "enabled";
    }

    else
    {
      v7 = "disabled";
    }

    v8 = 136315138;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "support for LE Connection Scan Prioritization is %s", &v8, 0xCu);
  }
}

uint64_t sub_1004A07D0(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E710 != -1)
  {
    sub_100831530();
  }

  v2 = sub_10000C7D0(a1, a2);
  if (*(v2 + 800) >> 3 >= 0x271u && *(sub_10000C7D0(v2, v3) + 800) >> 4 <= 0x176u)
  {
    byte_100B6E708 = 1;
  }

  return byte_100B6E708;
}

void sub_1004A083C(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "AllowFindMyActionConnScanPrioritization");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100B6E709);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(*buf);
    if (!v2)
    {
      return;
    }
  }

  else if (!v2)
  {
    return;
  }

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E709)
    {
      v4 = "Yes";
    }

    else
    {
      v4 = "No";
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Warning: FindMyConnScanPrioritization: %s", buf, 0xCu);
  }

  byte_100B6E708 = byte_100B6E709;
}

void sub_1004A0998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004A09D4()
{
  if ((atomic_load_explicit(&qword_100B6E720, memory_order_acquire) & 1) == 0)
  {
    v1 = __cxa_guard_acquire(&qword_100B6E720);
    if (v1)
    {
      v3 = sub_10000C7D0(v1, v2);
      byte_100B6E718 = (*(*v3 + 3040))(v3);
      __cxa_guard_release(&qword_100B6E720);
    }
  }

  if (qword_100B6E730 != -1)
  {
    sub_100831544();
  }

  return byte_100B6E718;
}

void sub_1004A0A8C(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "AllowFindMyActionTxPowerIncreaseLEConnecting");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100B6E728);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(*buf);
    if (!v2)
    {
      return;
    }
  }

  else if (!v2)
  {
    return;
  }

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E728)
    {
      v4 = "Yes";
    }

    else
    {
      v4 = "No";
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Warning: AllowFindMyActionTxPowerIncreaseLEConnecting: %s", buf, 0xCu);
  }

  byte_100B6E718 = byte_100B6E728;
}

void sub_1004A0BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004A0C24(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004A0CB4;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E740 != -1)
  {
    dispatch_once(&qword_100B6E740, block);
  }

  return byte_100B6E738;
}

void sub_1004A0CB4(uint64_t a1)
{
  v1 = (*(**(a1 + 32) + 352))(*(a1 + 32));
  if (v1)
  {
    v3 = sub_10000C7D0(v1, v2);
    v4 = (*(*v3 + 3048))(v3);
    byte_100B6E738 = v4;
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "disabled";
      if (v4)
      {
        v6 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BT chip support for Controller LE Connection Tx Power Increase HPLink : %s", buf, 0xCu);
    }
  }

  if (byte_100B6E738 == 1)
  {
    v7 = _os_feature_enabled_impl();
  }

  else
  {
    v7 = 0;
  }

  byte_100B6E738 = v7;
  v16 = 0;
  v8 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "forceLEConnectionTxPowerEPA");
  v9 = (*(*v8 + 72))(v8, buf, __p, &v16);
  v10 = v16;
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = v9 & v10;
  if (v18 < 0)
  {
    operator delete(*buf);
  }

  v12 = qword_100BCE8D8;
  if (v11)
  {
    byte_100B6E738 = v16;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "forceLEConnectionTxPowerEPA is enabled with override.", buf, 2u);
      v12 = qword_100BCE8D8;
    }
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E738)
    {
      v13 = "enabled";
    }

    else
    {
      v13 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "support for LE connection enable EPA is %s", buf, 0xCu);
  }
}

void sub_1004A0F48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004A0F84(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E750 != -1)
  {
    sub_100831558();
  }

  return byte_100B6E748;
}

void sub_1004A0FBC(id a1)
{
  if (IsAppleInternalBuild())
  {
    v1 = sub_10000E92C();
    sub_100007E30(v4, "LE");
    sub_100007E30(__p, "supportsNCSecondaryAdvInstance");
    (*(*v1 + 72))(v1, v4, __p, &byte_100B6E748);
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }

    if (v5 < 0)
    {
      operator delete(v4[0]);
    }
  }
}

void sub_1004A1068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004A109C(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E760 != -1)
  {
    sub_10083156C();
  }

  return byte_100B6E758;
}

void sub_1004A10D4(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "BBFC");
  sub_100007E30(__p, "EnforceBBFCScanPrioritization");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100B6E758);
  v3 = byte_100B6E758;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v2 & v3;
  if (v9 < 0)
  {
    operator delete(*buf);
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Warning: BBFC: enforceBBFCScanPrioritization=true", buf, 2u);
  }
}

void sub_1004A11D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004A120C(uint64_t a1)
{
  if (((*(*a1 + 368))(a1) & 1) != 0 || (result = (*(*a1 + 352))(a1), result))
  {

    return _os_feature_enabled_impl();
  }

  return result;
}

void sub_1004A12BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_10000C7D0(a1, a2);
  byte_100B6E769 = (*(*v3 + 3312))(v3);
  v4 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "forceEnableMRC");
  v5 = (*(*v4 + 72))(v4, buf, __p, &byte_100B543BC);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 < 0)
  {
    operator delete(*buf);
  }

  if (v5)
  {
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (byte_100B543BC)
      {
        v7 = "enabled";
      }

      else
      {
        v7 = "disabled";
      }

      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "forceEnableMRC: %s", buf, 0xCu);
    }
  }

  if ((*(*v2 + 352))(v2))
  {
    byte_100B6E768 = byte_100B6E769 & byte_100B543BC;
  }

  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E768)
    {
      v9 = "enabled";
    }

    else
    {
      v9 = "disabled";
    }

    v10 = "N";
    if (byte_100B6E769)
    {
      v10 = "Y";
    }

    *buf = 136315394;
    *&buf[4] = v9;
    v14 = 2080;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Support for Discovery Scan MRC is %s (hw capability %s)", buf, 0x16u);
  }
}

void sub_1004A1524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004A1560(id a1)
{
  v2 = *(sub_10000C7D0(a1, v1) + 800);
  v10 = 0;
  v3 = sub_10000E92C();
  sub_100007E30(buf, "WillSleep");
  sub_100007E30(__p, "requiresWillSleepWorkaround");
  v4 = (*(*v3 + 72))(v3, buf, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(*buf);
  }

  v5 = qword_100BCE8D8;
  if (v4)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v10)
      {
        v6 = 89;
      }

      else
      {
        v6 = 78;
      }

      *buf = 67109120;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Overriding requiresWillSleepWorkaround=%c", buf, 8u);
      v5 = qword_100BCE8D8;
    }

    byte_100B6E778 = v10;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E778)
    {
      v7 = 89;
    }

    else
    {
      v7 = 78;
    }

    *buf = 67109376;
    *&buf[4] = v7;
    v12 = 1024;
    v13 = v2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "requiresWillSleepWorkaround %c chipset %d", buf, 0xEu);
  }
}

void sub_1004A1724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004A1760(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E790 != -1)
  {
    sub_100831594();
  }

  return byte_100B6E788;
}

void sub_1004A1798(id a1)
{
  if ((*(sub_10000C7D0(a1, v1) + 800) - 3000) <= 0x3E7)
  {
    byte_100B6E788 = 1;
    v2 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Connection Scan on ScanCore is allowed under WiFi Critical Condition.", v3, 2u);
    }
  }
}

void sub_1004A19DC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = AppProtectionObserver;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1004A1AB8(uint64_t a1)
{
  v2 = sub_100017E6C();
  if (v2)
  {
    v3 = v2;
    (*(*v2 + 288))(v2, *(a1 + 32));
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = (*(*v3 + 296))(v3);
      v6 = off_100AF8860[(*(*v3 + 296))(v3)];
      v7[0] = 67109378;
      v7[1] = v5;
      v8 = 2080;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "smartCoverStateDidChange -- getSmartCoverState() returned %d (%s)", v7, 0x12u);
    }
  }
}

void sub_1004A1DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1004A1EB8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = SystemScreenObserver;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1004A204C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v4 - 72));

  _Unwind_Resume(a1);
}

void sub_1004A2084(uint64_t a1)
{
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
  {
    sub_1008315DC();
  }

  v2 = +[BLSBacklight sharedBacklight];
  v3 = [v2 isAlwaysOnEnabled];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained screenStateChanged:1];
  }
}

id sub_1004A2334(uint64_t a1)
{
  [*(a1 + 32) _managedSettingsSubcribeForChangesAndEvents];
  v2 = *(a1 + 32);

  return [v2 _fetchManagedSettings];
}

void sub_1004A23BC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ManagedSettingsObserver;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1004A27CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = sub_100017F4C(v6, v7);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1004A28D4;
  v11[3] = &unk_100AE2550;
  v11[4] = *(a1 + 32);
  v9 = v5;
  v12 = v9;
  v10 = v6;
  v13 = v10;
  sub_10000CA94(v8, v11);
}

void sub_1004A28F4(uint64_t a1)
{
  sub_10038ADE8(a1);
  *v2 = off_100AF88E0;
  *(v2 + 8) = off_100AF8CC0;
  *(v2 + 16) = off_100AF8CE0;
  *(v2 + 24) = off_100AF8D00;
  *(v2 + 32) = off_100AF8D20;
  *(v2 + 40) = off_100AF8D40;
  *(v2 + 48) = off_100AF8D60;
  *(v2 + 56) = off_100AF8D80;
  *(v2 + 64) = off_100AF8DA0;
  *(v2 + 72) = off_100AF8DC0;
  *(v2 + 80) = off_100AF8DE0;
  *(v2 + 88) = off_100AF8E00;
  *(v2 + 96) = off_100AF8E20;
  *(v2 + 104) = off_100AF8E40;
  *(v2 + 112) = off_100AF8E60;
  *(v2 + 120) = off_100AF8E80;
  *(v2 + 128) = off_100AF8EA0;
  *(v2 + 136) = off_100AF8EC0;
  *(v2 + 144) = off_100AF8EE0;
  *(v2 + 152) = off_100AF8F00;
  *(v2 + 160) = off_100AF8F20;
  *(v2 + 168) = off_100AF8F40;
  *(v2 + 176) = off_100AF8F60;
  *(v2 + 184) = off_100AF8F80;
  *(v2 + 192) = off_100AF8FA0;
  *(v2 + 200) = off_100AF8FC0;
  *(v2 + 208) = off_100AF8FE0;
  *(v2 + 216) = off_100AF9000;
  *(v2 + 1352) = off_100AF9020;
  *(v2 + 1360) = &off_100AF9080;
  *(v2 + 1432) = 0;
  *(v2 + 1393) = 0u;
  *(v2 + 1368) = 0u;
  *(v2 + 1384) = 0u;
  *(v2 + 1412) = 0u;
  *(v2 + 1428) = 0;
  *(v2 + 1452) = -1;
  *(v2 + 1456) = -1;
  *(v2 + 1464) = 0;
  *(v2 + 1472) = -1;
  *(v2 + 1476) = 0;
  *(v2 + 1484) = -1;
  *(v2 + 1492) = 1;
  *(v2 + 1552) = 0;
  *(v2 + 1560) = 0;
  *(v2 + 1568) = 0;
  *(v2 + 1496) = 0u;
  *(v2 + 1576) = 257;
  *(v2 + 1584) = 0;
  sub_100044BBC((v2 + 1592));
  *(a1 + 1656) = 256;
  *(a1 + 1664) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1689) = 0u;
  *(a1 + 1712) = @"XZ";
  *(a1 + 1720) = 0;
  v3 = *(a1 + 1552);
  *(a1 + 1552) = 0;

  *(a1 + 1512) = -1;
  *(a1 + 1516) = 0;
  operator new();
}

void sub_1004A3004(_Unwind_Exception *a1)
{
  sub_10007A068(v1 + 1592);

  sub_1004A3290(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1004A3068(uint64_t a1)
{
  v1 = *(a1 + 32);
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, v1 + 1592);
  *(v1 + 1656) = 1;
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 1656);
    v4 = *(v1 + 1657);
    *buf = 67109376;
    v8 = v3;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SystemSettingsModel::systemMonitor fDeviceFirstUnlocked:%d fDeviceLocked:%d", buf, 0xEu);
  }

  sub_10000801C(v6);
  sub_10038E054(v1);
  return sub_1000088CC(v6);
}

uint64_t sub_1004A316C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, v1 + 1592);
  v2 = [*(v1 + 1584) systemLockStateSync] == 3 || objc_msgSend(*(v1 + 1584), "systemLockStateSync") == 2;
  *(v1 + 1657) = v2;
  *(v1 + 1656) = [*(v1 + 1584) firstUnlockedSync];
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 1656);
    v5 = *(v1 + 1657);
    *buf = 67109376;
    v9 = v4;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SystemSettings::SystemMonitor activated fDeviceFirstUnlocked:%d fDeviceLocked:%d", buf, 0xEu);
  }

  return sub_1000088CC(v7);
}

void *sub_1004A3290(void *a1)
{
  *a1 = &off_100AEE9B8;
  a1[1] = &off_100AEEBB8;
  a1[2] = &off_100AEEBD8;
  a1[3] = &off_100AEEBF8;
  a1[4] = &off_100AEEC18;
  a1[5] = &off_100AEEC38;
  a1[6] = &off_100AEEC58;
  a1[7] = &off_100AEEC78;
  a1[8] = &off_100AEEC98;
  a1[9] = &off_100AEECB8;
  a1[10] = &off_100AEECD8;
  a1[11] = &off_100AEECF8;
  a1[12] = &off_100AEED18;
  a1[13] = &off_100AEED38;
  a1[14] = &off_100AEED58;
  a1[15] = &off_100AEED78;
  a1[16] = &off_100AEED98;
  a1[17] = &off_100AEEDB8;
  a1[18] = &off_100AEEDD8;
  a1[19] = &off_100AEEDF8;
  a1[20] = &off_100AEEE18;
  a1[21] = &off_100AEEE38;
  a1[22] = &off_100AEEE58;
  a1[23] = &off_100AEEE78;
  a1[24] = &off_100AEEE98;
  a1[25] = &off_100AEEEB8;
  a1[26] = &off_100AEEED8;
  a1[27] = &off_100AEEEF8;
  v2 = a1[164];
  if (v2)
  {
    a1[165] = v2;
    operator delete(v2);
  }

  v3 = a1[159];
  if (v3)
  {
    a1[160] = v3;
    operator delete(v3);
  }

  v4 = a1[154];
  if (v4)
  {
    a1[155] = v4;
    operator delete(v4);
  }

  v5 = a1[149];
  if (v5)
  {
    a1[150] = v5;
    operator delete(v5);
  }

  v6 = a1[144];
  if (v6)
  {
    a1[145] = v6;
    operator delete(v6);
  }

  v7 = a1[139];
  if (v7)
  {
    a1[140] = v7;
    operator delete(v7);
  }

  v8 = a1[134];
  if (v8)
  {
    a1[135] = v8;
    operator delete(v8);
  }

  v9 = a1[129];
  if (v9)
  {
    a1[130] = v9;
    operator delete(v9);
  }

  v10 = a1[124];
  if (v10)
  {
    a1[125] = v10;
    operator delete(v10);
  }

  v11 = a1[119];
  if (v11)
  {
    a1[120] = v11;
    operator delete(v11);
  }

  v12 = a1[114];
  if (v12)
  {
    a1[115] = v12;
    operator delete(v12);
  }

  v13 = a1[109];
  if (v13)
  {
    a1[110] = v13;
    operator delete(v13);
  }

  v14 = a1[104];
  if (v14)
  {
    a1[105] = v14;
    operator delete(v14);
  }

  v15 = a1[99];
  if (v15)
  {
    a1[100] = v15;
    operator delete(v15);
  }

  v16 = a1[94];
  if (v16)
  {
    a1[95] = v16;
    operator delete(v16);
  }

  v17 = a1[89];
  if (v17)
  {
    a1[90] = v17;
    operator delete(v17);
  }

  v18 = a1[84];
  if (v18)
  {
    a1[85] = v18;
    operator delete(v18);
  }

  v19 = a1[79];
  if (v19)
  {
    a1[80] = v19;
    operator delete(v19);
  }

  v20 = a1[74];
  if (v20)
  {
    a1[75] = v20;
    operator delete(v20);
  }

  v21 = a1[69];
  if (v21)
  {
    a1[70] = v21;
    operator delete(v21);
  }

  v22 = a1[64];
  if (v22)
  {
    a1[65] = v22;
    operator delete(v22);
  }

  v23 = a1[59];
  if (v23)
  {
    a1[60] = v23;
    operator delete(v23);
  }

  v24 = a1[54];
  if (v24)
  {
    a1[55] = v24;
    operator delete(v24);
  }

  v25 = a1[49];
  if (v25)
  {
    a1[50] = v25;
    operator delete(v25);
  }

  v26 = a1[44];
  if (v26)
  {
    a1[45] = v26;
    operator delete(v26);
  }

  v27 = a1[39];
  if (v27)
  {
    a1[40] = v27;
    operator delete(v27);
  }

  v28 = a1[34];
  if (v28)
  {
    a1[35] = v28;
    operator delete(v28);
  }

  v29 = a1[29];
  if (v29)
  {
    a1[30] = v29;
    operator delete(v29);
  }

  return a1;
}

uint64_t sub_1004A37F4(int a1, std::string *this)
{
  if ((atomic_load_explicit(&qword_100B6E7B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100B6E7B8))
  {
    sub_100007E30(&stru_100B6E7A0, "");
    __cxa_atexit(&std::string::~string, &stru_100B6E7A0, &_mh_execute_header);
    __cxa_guard_release(&qword_100B6E7B8);
  }

  if (qword_100B6E7C0 != -1)
  {
    sub_100831644();
  }

  std::string::operator=(this, &stru_100B6E7A0);
  return 0;
}

void sub_1004A38C0(id a1)
{
  __val = 1;
  v1 = container_system_group_path_for_identifier();
  if (v1)
  {
    v2 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = v1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Using containerized path %s", buf, 0xCu);
    }

    std::string::assign(&stru_100B6E7A0, v1);
    free(v1);
  }

  else if (IsAppleInternalBuild())
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    *v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    memset(v13, 0, sizeof(v13));
    *buf = 0u;
    sub_100007AD0(buf);
    v3 = sub_100007774(&v12, "Failed to find the system container: ", 37);
    std::to_string(&__p, __val);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      LODWORD(p_p) = __p.__r_.__value_.__l.__data_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v5 = __p.__r_.__value_.__r.__words[1];
    }

    sub_100007774(v3, p_p, v5);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::stringbuf::str();
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &__p;
    }

    else
    {
      v6 = __p.__r_.__value_.__r.__words[0];
    }

    sub_1001C4B04(v6);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    *&v12 = v7;
    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14[1]);
    }

    std::locale::~locale(v13);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  else
  {
    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_100831658(&__val, v8);
    }
  }
}

void sub_1004A3BD8(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

id sub_1004A3C2C(uint64_t a1)
{
  v2 = _os_feature_enabled_impl();
  if (!v2 || !sub_1005FCECC(v2, v3))
  {
    return 0;
  }

  v4 = *(a1 + 1688);

  return [v4 allowTemporaryPairingOfAppleAudioAccessories];
}

void sub_1004A3C90(uint64_t a1)
{
  *(a1 + 1376) = SCDynamicStoreKeyCreateComputerName(kCFAllocatorDefault);

  sub_1004A3CD8(a1);
}

void sub_1004A3CD8(uint64_t a1)
{
  if (*(a1 + 1376) || *(a1 + 1384))
  {
    if (*(a1 + 1368))
    {
      goto LABEL_6;
    }

    v11.version = 0;
    memset(&v11.retain, 0, 24);
    v11.info = a1;
    v2 = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.MobileBluetooth.SystemSettings", sub_1004A3EF8, &v11);
    *(a1 + 1368) = v2;
    if (v2)
    {
      v4 = v2;
      v5 = sub_100017F4C(v2, v3);
      SCDynamicStoreSetDispatchQueue(v4, *(v5 + 8));
LABEL_6:
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      if (Mutable)
      {
        v7 = Mutable;
        v8 = *(a1 + 1376);
        if (v8)
        {
          CFArrayAppendValue(Mutable, v8);
        }

        v9 = *(a1 + 1384);
        if (v9)
        {
          CFArrayAppendValue(v7, v9);
        }

        SCDynamicStoreSetNotificationKeys(*(a1 + 1368), v7, 0);
        CFRelease(v7);
      }

      return;
    }

    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008316D4();
    }
  }

  else
  {
    v10 = *(a1 + 1368);
    if (v10)
    {
      SCDynamicStoreSetDispatchQueue(v10, 0);
      CFRelease(*(a1 + 1368));
      *(a1 + 1368) = 0;
    }
  }
}

void sub_1004A3E18(uint64_t a1)
{
  v2 = *(a1 + 1376);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 1376) = 0;
  }

  sub_1004A3CD8(a1);
}

void sub_1004A3E5C(uint64_t a1)
{
  if (sub_1005FCA54())
  {
    *(a1 + 1384) = @"com.apple.MobileInternetSharing";

    sub_1004A3CD8(a1);
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100831708();
  }
}

uint64_t sub_1004A3F00(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C7D0(a1, a2);
  if (*(v4 + 800) >> 3 >= 0x271u && *(sub_10000C7D0(v4, v5) + 800) >> 4 <= 0x176u && qword_100B6E7D0 != -1)
  {
    sub_10083173C();
  }

  HostName = SCDynamicStoreCopyComputerName(*(a1 + 1368), 0);
  if (HostName)
  {
    v7 = HostName;
  }

  else
  {
    v9 = SCPreferencesCreate(kCFAllocatorDefault, @"com.apple.MobileBluetooth.SystemSettings", 0);
    if (!v9)
    {
      v8 = 1;
      goto LABEL_9;
    }

    v7 = v9;
    HostName = SCPreferencesGetHostName();
    if (!HostName)
    {
      v8 = 1;
      goto LABEL_8;
    }
  }

  std::string::assign(a2, [(__SCPreferences *)HostName UTF8String]);
  v8 = 0;
LABEL_8:
  CFRelease(v7);
LABEL_9:
  v11 = sub_10000C7D0(v9, v10);
  if (*(v11 + 800) >= 0x7D0u)
  {
    v13 = sub_10000C7D0(v11, v12);
    if (*(v13 + 800) <= 0xF9Fu && *(sub_10000C7D0(v13, v14) + 800) >= 0xBB8u)
    {
      if (qword_100B6E7E0 != -1)
      {
        sub_100831750();
      }

      if (byte_100B6E7D8 == 1)
      {
        std::string::assign(a2, "Apple Watch");
        v15 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 23) >= 0)
          {
            v16 = a2;
          }

          else
          {
            v16 = *a2;
          }

          v18 = 136315138;
          v19 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Override Name to %s", &v18, 0xCu);
        }
      }
    }
  }

  if (byte_100B6E7C8 == 1)
  {
    std::string::assign(a2, "Apple Watch");
  }

  return v8;
}

void sub_1004A40FC(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "MaskLocalNameAsAppleWatch");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100B6E7C8);
  v3 = byte_100B6E7C8;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v2 & v3;
  if (v9 < 0)
  {
    operator delete(*buf);
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Mask as Apple Watch in readHostname", buf, 2u);
  }
}

void sub_1004A4200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004A4234(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "MaskCODandNameAsAppleWatch");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100B6E7D8);
  v3 = byte_100B6E7D8;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v2 & v3;
  if (v9 < 0)
  {
    operator delete(*buf);
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Mask as Apple Watch", buf, 2u);
  }
}

void sub_1004A4338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004A436C(uint64_t a1, BOOL *a2, _BYTE *a3, _BYTE *a4)
{
  *a2 = 0;
  *a4 = 0;
  *a3 = 0;
  if (!sub_1005FCA54())
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100831708();
    }

    return 1;
  }

  v8 = *(a1 + 1368);
  if (!v8)
  {
    return 1;
  }

  v9 = *(a1 + 1384);
  if (!v9)
  {
    return 1;
  }

  v10 = SCDynamicStoreCopyValue(v8, v9);
  if (!v10)
  {
    return 1;
  }

  v11 = v10;
  v12 = CFGetTypeID(v10);
  if (v12 == CFDictionaryGetTypeID())
  {
    valuePtr = 0;
    Value = CFDictionaryGetValue(v11, @"State");
    if (Value && (v14 = Value, v15 = CFGetTypeID(Value), v15 == CFNumberGetTypeID()) && CFNumberGetValue(v14, kCFNumberIntType, &valuePtr))
    {
      v16 = 0;
      *a2 = valuePtr == 1023;
    }

    else
    {
      v16 = 1;
    }

    v18 = CFDictionaryGetValue(v11, @"Hosts");
    if (v18)
    {
      v19 = v18;
      v20 = CFGetTypeID(v18);
      if (v20 == CFDictionaryGetTypeID())
      {
        v21 = CFDictionaryGetValue(v19, @"Current");
        if (v21)
        {
          v22 = v21;
          v23 = CFGetTypeID(v21);
          if (v23 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v22, kCFNumberIntType, &valuePtr);
            *a3 = valuePtr;
          }
        }

        v24 = CFDictionaryGetValue(v19, @"Max");
        if (v24)
        {
          v25 = v24;
          v26 = CFGetTypeID(v24);
          if (v26 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v25, kCFNumberIntType, &valuePtr);
            *a4 = valuePtr;
          }
        }
      }
    }
  }

  else
  {
    v16 = 1;
  }

  CFRelease(v11);
  return v16;
}

void sub_1004A4554(os_unfair_lock_s *a1, const __CFArray *a2)
{
  if (sub_1005FCA54())
  {
    if (CFArrayGetCount(a2) >= 1)
    {
      v4 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v4);
        v6 = ValueAtIndex;
        v7 = *&a1[344]._os_unfair_lock_opaque;
        if (v7 && CFStringCompare(ValueAtIndex, v7, 0) == kCFCompareEqualTo)
        {
          memset(&v11, 0, sizeof(v11));
          if (!(*(*&a1->_os_unfair_lock_opaque + 24))(a1, &v11))
          {
            if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100008904(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
            }

            else
            {
              __p = v11;
            }

            sub_10038B3A8(a1, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v11.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v8 = *&a1[346]._os_unfair_lock_opaque;
          if (v8 && CFStringCompare(v6, v8, 0) == kCFCompareEqualTo)
          {
            v11.__r_.__value_.__s.__data_[0] = 0;
            v9 = 0;
            if (!(*(*&a1->_os_unfair_lock_opaque + 32))(a1, &v11, &v9 + 1, &v9))
            {
              sub_10038BA58(a1, v11.__r_.__value_.__s.__data_[0], HIBYTE(v9), v9);
            }
          }
        }

        ++v4;
      }

      while (v4 < CFArrayGetCount(a2));
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100831708();
  }
}

void sub_1004A4708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004A473C()
{
  if (!sub_1005FCA40() && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100831764();
  }
}

uint64_t sub_1004A478C(uint64_t a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, _BYTE *a6, _DWORD *a7)
{
  if (sub_1005FCA40())
  {
    *a2 = 0;
    *a3 = 0;
    *a4 = 0;
    v14 = sub_1007265D4(*(a1 + 1504));
    *a5 = v14;
    if (v14 && sub_1007265F4(*(a1 + 1504)))
    {
      if (sub_1007265E4(*(a1 + 1504)) == 1)
      {
        *a2 = 1;
      }

      if (sub_1007265E4(*(a1 + 1504)) == 2)
      {
        *a3 = 1;
      }

      if (sub_1007265E4(*(a1 + 1504)) == 3)
      {
        *a4 = 1;
      }
    }

    *a6 = sub_100726604(*(a1 + 1504));
    v15 = sub_1007265C8(*(a1 + 1504));
    result = 0;
    *a7 = v15;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100831764();
    }

    return 1;
  }

  return result;
}

void sub_1004A48A4(uint64_t a1)
{
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  if (!(*(*a1 + 56))(a1, &v14 + 1, &v14, &v13 + 1, &v13, &v12, &v11))
  {
    if (v13)
    {
      v1 = "On";
    }

    else
    {
      v1 = "Off";
    }

    sub_100007E30(&v8, v1);
    v2 = std::string::insert(&v8, 0, "WiFi State: ");
    v3 = *&v2->__r_.__value_.__l.__data_;
    v9.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
    *&v9.__r_.__value_.__l.__data_ = v3;
    v2->__r_.__value_.__l.__size_ = 0;
    v2->__r_.__value_.__r.__words[2] = 0;
    v2->__r_.__value_.__r.__words[0] = 0;
    v4 = std::string::append(&v9, ", Band: ");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v10.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v10.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    if (v14)
    {
      v6 = "5 GHz";
    }

    else if ((v14 & 0x100) != 0)
    {
      v6 = "2.4 GHz";
    }

    else if (HIBYTE(v13))
    {
      v6 = "6 GHz";
    }

    else
    {
      v6 = "Unknown";
    }

    std::string::append(&v10, v6);
    if (v12 == 1)
    {
      std::string::append(&v10, ". [WARNING] 2.4 GHz critical state!");
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v10;
    }

    else
    {
      v7 = v10.__r_.__value_.__r.__words[0];
    }

    sub_1001C429C(v7);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1004A4A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004A4A88(uint64_t a1, _BYTE *a2)
{
  if (sub_1005FCA40())
  {
    v4 = sub_1007265F4(*(a1 + 1504));
    result = 0;
    *a2 = v4;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100831764();
    }

    return 1;
  }

  return result;
}

void sub_1004A4B00(uint64_t a1)
{
  v2 = sub_1005FCA40();
  if (v2)
  {
    v4 = sub_100017F4C(v2, v3);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1004A4BB0;
    v5[3] = &unk_100ADF8F8;
    v5[4] = a1;
    sub_10000CA94(v4, v5);
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100831764();
  }
}

void sub_1004A4BB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1007265D4(*(v1 + 1504));
  v3 = sub_1007265E4(*(v1 + 1504)) - 1;
  if (v3 >= 3)
  {
    sub_1007265F4(*(v1 + 1504));
    v4 = 0;
  }

  else
  {
    v4 = &_mh_execute_header + (v3 << 32);
  }

  v5 = sub_100726604(*(v1 + 1504));
  v6 = v5 | (sub_1007265C8(*(v1 + 1504)) << 32);
  sub_1004A48A4(v1);

  sub_10038BCA4(v1, v4 | v2, v6);
}

void sub_1004A4C54(uint64_t a1)
{
  v2 = SCPreferencesCreate(kCFAllocatorDefault, @"com.apple.MobileBluetooth.SystemSettings", @"com.apple.radios.plist");
  *(a1 + 1400) = v2;
  if (v2)
  {
    v8.version = 0;
    memset(&v8.retain, 0, 24);
    v8.info = a1;
    v3 = SCPreferencesSetCallback(v2, sub_1004A4D20, &v8);
    v4 = *(a1 + 1400);
    v6 = sub_100017F4C(v3, v5);
    SCPreferencesSetDispatchQueue(v4, *(v6 + 8));
  }

  if ((*(a1 + 1408) & 1) == 0)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, a1, sub_1004A4D28, NSProcessInfoPowerStateDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    *(a1 + 1408) = 1;
  }
}

void sub_1004A4D28(uint64_t a1, os_unfair_lock_s *a2)
{
  v3 = +[NSProcessInfo processInfo];
  v4 = [v3 isLowPowerModeEnabled];

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Low Power Mode Enabled: %d", v6, 8u);
  }

  sub_10038C0F8(a2, v4);
}

void sub_1004A4E20(uint64_t a1)
{
  v2 = *(a1 + 1400);
  if (v2)
  {
    SCPreferencesSetDispatchQueue(v2, 0);
    CFRelease(*(a1 + 1400));
    *(a1 + 1400) = 0;
  }

  if (*(a1 + 1408) == 1)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterRemoveObserver(LocalCenter, a1, NSProcessInfoPowerStateDidChangeNotification, 0);
    *(a1 + 1408) = 0;
  }
}

BOOL sub_1004A4EB8(uint64_t a1, const __CFString *a2, BOOL *a3)
{
  Value = SCPreferencesGetValue(*(a1 + 1400), a2);
  v5 = Value != 0;
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    if (v7 != CFBooleanGetTypeID())
    {
      return 0;
    }

    v8 = CFBooleanGetValue(v6) != 0;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  return v5;
}

uint64_t sub_1004A4F34(uint64_t a1, _BYTE *a2)
{
  v3 = +[NSProcessInfo processInfo];
  *a2 = [v3 isLowPowerModeEnabled];

  return 0;
}

void sub_1004A4F88(uint64_t result, char a2)
{
  if ((a2 & 2) != 0)
  {
    v3 = 0;
    SCPreferencesSynchronize(*(result + 1400));
    if (!(*(*result + 80))(result, &v3))
    {
      sub_10038BEF8(result, v3);
    }
  }
}

void sub_1004A5000(uint64_t a1)
{
  v2 = IORegisterForSystemPower(a1, (a1 + 1416), sub_1000A11B0, (a1 + 1424));
  *(a1 + 1412) = v2;
  if (v2)
  {
    *(a1 + 1428) = 0;
    v4 = *(a1 + 1416);
    v5 = *(sub_100017F4C(v2, v3) + 8);

    IONotificationPortSetDispatchQueue(v4, v5);
  }
}

uint64_t sub_1004A507C(uint64_t result)
{
  if (*(result + 1412))
  {
    v1 = result;
    IODeregisterForSystemPower((result + 1424));
    IONotificationPortDestroy(*(v1 + 1416));
    result = IOServiceClose(*(v1 + 1412));
    *(v1 + 1412) = 0;
  }

  return result;
}

uint64_t sub_1004A50CC(os_unfair_lock_s *a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notifying system is shutting down with reason %d", v6, 8u);
  }

  return sub_1000A2CA4(a1, 4u, a2);
}

void sub_1004A519C(uint64_t a1, uint64_t a2)
{
  v3 = *(sub_100017F4C(a1, a2) + 8);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1004A5294;
  handler[3] = &unk_100AF0BA0;
  handler[4] = a1;
  v4 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", (a1 + 1448), v3, handler);
  v5 = qword_100BCE8D8;
  if (v4)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100831AB4();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully registered for MKB first unlock notification", v6, 2u);
  }
}

void sub_1004A5294(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = MKBDeviceUnlockedSinceBoot();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received MKB first unlock notification. MKBDeviceUnlockedSinceBoot returns : %d", v4, 8u);
  }

  if (MKBDeviceUnlockedSinceBoot() != 1 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
  {
    sub_10081ADB8();
  }

  v3 = MKBDeviceUnlockedSinceBoot() == 1;
  sub_10038C22C(v1, v3);
}

uint64_t sub_1004A53A8(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1448));
  *(a1 + 1448) = -1;
  return result;
}

uint64_t sub_1004A53D8(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1400));
  *(a1 + 1400) = -1;
  return result;
}

void sub_1004A543C(const void *a1)
{
  if (sub_1005FCA7C() && BYSetupAssistantNeedsToRun())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v3 = BYSetupAssistantFinishedDarwinNotification;

    CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_1004A54B4, v3, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

void sub_1004A54C4(const void *a1)
{
  if (sub_1005FCA7C())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v3 = BYSetupAssistantFinishedDarwinNotification;

    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, v3, 0);
  }
}

uint64_t sub_1004A5528(uint64_t a1, _BYTE *a2)
{
  v3 = sub_1005FCA7C();
  if (v3)
  {
    LOBYTE(v3) = BYSetupAssistantNeedsToRun();
  }

  *a2 = v3;
  return 0;
}

void sub_1004A555C(uint64_t a1)
{
  v2 = sub_1005FCA7C();
  if (v2)
  {
    v4 = *(sub_100017F4C(v2, v3) + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1004A55E4;
    block[3] = &unk_100ADF8F8;
    block[4] = a1;
    dispatch_async(v4, block);
  }
}

void sub_1004A55E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = BYSetupAssistantNeedsToRun();

  sub_10038C42C(v1, v2);
}

uint64_t sub_1004A5620(uint64_t a1, uint64_t a2)
{
  v3 = *(sub_100017F4C(a1, a2) + 8);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1004A56AC;
  handler[3] = &unk_100AF0BA0;
  handler[4] = a1;
  return notify_register_dispatch("com.apple.system.powersources.percent", (a1 + 1452), v3, handler);
}

void sub_1004A56AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 0;
  if (!(*(*&v1->_os_unfair_lock_opaque + 104))(v1, &v2 + 1, &v2))
  {
    sub_10038C598(v1, HIBYTE(v2), v2);
  }
}

uint64_t sub_1004A5724(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1452));
  *(a1 + 1452) = -1;
  return result;
}

uint64_t sub_1004A5754(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1412));
  *(a1 + 1412) = -1;
  return result;
}

uint64_t sub_1004A5784(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v5 = sub_10000C798(a1, a2);
  if ((*(*v5 + 424))(v5))
  {
    result = IOPSGetPercentRemaining();
    if (result)
    {
      return 1;
    }

    else
    {
      *a3 = 0;
      *a2 = 0;
    }
  }

  else
  {
    result = 0;
    *a2 = 1;
    *a3 = 100;
  }

  return result;
}

uint64_t sub_1004A5830(uint64_t a1, uint64_t a2)
{
  v3 = *(sub_100017F4C(a1, a2) + 8);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1004A58BC;
  handler[3] = &unk_100AF0BA0;
  handler[4] = a1;
  return notify_register_dispatch("com.apple.system.powersources.source", (a1 + 1456), v3, handler);
}

void sub_1004A58BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 0;
  if (!(*(*&v1->_os_unfair_lock_opaque + 128))(v1, &v2))
  {
    sub_10038C7C8(v1, v2);
  }
}

uint64_t sub_1004A592C(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1456));
  *(a1 + 1456) = -1;
  return result;
}

uint64_t sub_1004A595C(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1392));
  *(a1 + 1392) = -1;
  return result;
}

void sub_1004A598C(uint64_t a1)
{
  v2 = sub_10000C240();
  if (v2)
  {
    v4 = *(sub_100017F4C(v2, v3) + 8);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10009AB88;
    handler[3] = &unk_100AF0BA0;
    handler[4] = a1;
    notify_register_dispatch("com.apple.coreaudio.ActivePorts", (a1 + 1460), v4, handler);
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100831B28();
  }
}

uint64_t sub_1004A5A54(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1460));
  *(a1 + 1460) = -1;
  return result;
}

uint64_t sub_1004A5A84(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1388));
  *(a1 + 1388) = -1;
  return result;
}

void sub_1004A5AB4(CFBundleRef *a1)
{
  v2 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/System/Library/PrivateFrameworks/AssistantServices.framework", kCFURLPOSIXPathStyle, 1u);
  a1[183] = CFBundleCreate(kCFAllocatorDefault, v2);
  CFRelease(v2);
  if (a1[183] && MGGetBoolAnswer())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v4 = *CFBundleGetDataPointerForName(a1[183], @"kAFPreferencesDidChangeDarwinNotification");

    CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_1004A5B90, v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

void sub_1004A5BA0(CFBundleRef *a1)
{
  if (MGGetBoolAnswer())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    DataPointerForName = CFBundleGetDataPointerForName(a1[183], @"kAFPreferencesDidChangeDarwinNotification");
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, *DataPointerForName, 0);
  }

  CFRelease(a1[183]);
  a1[183] = 0;
}

uint64_t sub_1004A5C10(uint64_t a1, BOOL *a2)
{
  v4 = sub_10000C798(a1, a2);
  if (!(*(*v4 + 64))(v4) || !*(a1 + 1464) || !MGGetBoolAnswer())
  {
    return 1;
  }

  FunctionPointerForName = CFBundleGetFunctionPointerForName(*(a1 + 1464), @"AFSupportPreferencesSynchronize");
  FunctionPointerForName();
  v6 = CFBundleGetFunctionPointerForName(*(a1 + 1464), @"AFPreferencesAssistantEnabled");
  v7 = v6();
  result = 0;
  *a2 = v7 != 0;
  return result;
}

void sub_1004A5CBC(uint64_t a1, uint64_t a2)
{
  v3 = *(sub_100017F4C(a1, a2) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004A5D3C;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_async(v3, block);
}

void sub_1004A5D3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 0;
  if (!(*(*&v1->_os_unfair_lock_opaque + 144))(v1, &v2))
  {
    sub_10038C9E8(v1, v2);
  }
}

uint64_t sub_1004A5DA4(uint64_t a1, uint64_t a2)
{
  v3 = *(sub_100017F4C(a1, a2) + 8);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1004A5E30;
  handler[3] = &unk_100AF0BA0;
  handler[4] = a1;
  return notify_register_dispatch("com.apple.coreaudio.BorealisToggled", (a1 + 1472), v3, handler);
}

uint64_t sub_1004A5E40(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1472));
  *(a1 + 1472) = -1;
  return result;
}

uint64_t sub_1004A5E70(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1384));
  *(a1 + 1384) = -1;
  return result;
}

void sub_1004A5EA0(_BYTE *a1)
{
  if (sub_1005FC8E0())
  {
    a1[1476] = 0;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_1004A5F40, @"com.apple.carplay.allowed-changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    sub_1004A5F48(a1);
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100831B5C();
  }
}

void sub_1004A5F48(uint64_t a1)
{
  if (sub_1005FC8E0())
  {
    v1 = objc_autoreleasePoolPush();
    CRIsCarPlayAllowed();
    objc_autoreleasePoolPop(v1);
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100831B5C();
  }
}

void sub_1004A600C(_BYTE *a1)
{
  if (sub_1005FC8E0())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, @"com.apple.carplay.allowed-changed", 0);
    a1[1476] = 0;
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100831B5C();
  }
}

void sub_1004A6094(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  v4 = *(sub_100017F4C(a1, a2) + 8);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004A611C;
  v5[3] = &unk_100AE15D8;
  v5[4] = v3;
  v6 = v2;
  dispatch_async(v4, v5);
}

void sub_1004A611C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v2 + 1476) != v3)
  {
    *(v2 + 1476) = v3;
    sub_10038CD70(v2, v3);
  }
}

void *sub_1004A6140(void *result)
{
  if (!result[209])
  {
    v1 = result;
    v2 = objc_alloc_init(SystemScreenObserver);
    result = [(SystemScreenObserver *)v2 activateWithSystemMonitor:v1[198]];
    v1[209] = v2;
  }

  return result;
}

uint64_t sub_1004A61AC(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_10000C798(a1, a2);
  v5 = (*(*v4 + 440))(v4);
  if (v5 & 1) != 0 || (v7 = sub_10000C798(v5, v6), ((*(*v7 + 416))(v7)))
  {
    v8 = 1;
  }

  else
  {
    v8 = [*(a1 + 1672) screenOn];
  }

  *a2 = v8;
  return 0;
}

uint64_t sub_1004A6268(uint64_t a1, uint64_t a2)
{
  v3 = *(sub_100017F4C(a1, a2) + 8);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1004A62F4;
  handler[3] = &unk_100AF0BA0;
  handler[4] = a1;
  return notify_register_dispatch("com.apple.keyboard.isOnScreen", (a1 + 1484), v3, handler);
}

void sub_1004A62F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 0;
  if (!(*(*&v1->_os_unfair_lock_opaque + 216))(v1, &v2, 0))
  {
    sub_10038DC18(v1, v2);
  }
}

uint64_t sub_1004A6368(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1484));
  *(a1 + 1484) = -1;
  return result;
}

uint64_t sub_1004A6398(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1364));
  *(a1 + 1364) = -1;
  return result;
}

uint64_t sub_1004A63C8(uint64_t a1, BOOL *a2, int a3)
{
  state64 = 0;
  if (a3)
  {
    notify_register_check("com.apple.keyboard.isOnScreen", (a1 + 1484));
  }

  result = notify_get_state(*(a1 + 1484), &state64);
  if (result)
  {
    return 1;
  }

  *a2 = state64 == 1;
  return result;
}

uint64_t sub_1004A6434(uint64_t a1, uint64_t a2)
{
  v3 = *(sub_100017F4C(a1, a2) + 8);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1004A64C0;
  handler[3] = &unk_100AF0BA0;
  handler[4] = a1;
  return notify_register_dispatch("com.apple.bluetooth.prefsChanged", (a1 + 1540), v3, handler);
}

void sub_1004A64C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CFPreferencesCopyValue(@"enableGameControllerAutoSwitchMode", @"com.apple.bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue];
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "virtual void BT::SystemSettings::listenersWillBecomeNonEmpty(const ObservedListeners<GameControllerAutoSwitchListener> &)_block_invoke";
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Using Pref Setting for game controller auto switch: %d", &v7, 0x12u);
    }
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + 1544) != v3)
  {
    *(v1 + 1544) = v3;
    sub_10038CF88(v1, v3);
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v1 + 1544);
    v7 = 136315394;
    v8 = "virtual void BT::SystemSettings::listenersWillBecomeNonEmpty(const ObservedListeners<GameControllerAutoSwitchListener> &)_block_invoke";
    v9 = 1024;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: game controller auto switch is currently set to %d", &v7, 0x12u);
  }
}

uint64_t sub_1004A6688(uint64_t a1)
{
  *(a1 + 1544) = 0;
  result = notify_cancel(*(a1 + 1540));
  *(a1 + 1540) = -1;
  return result;
}

uint64_t sub_1004A66BC(uint64_t a1)
{
  *(a1 + 1408) = 0;
  result = notify_cancel(*(a1 + 1404));
  *(a1 + 1404) = -1;
  return result;
}

uint64_t sub_1004A66F0(uint64_t a1, uint64_t a2)
{
  v3 = *(sub_100017F4C(a1, a2) + 8);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1004A677C;
  handler[3] = &unk_100AF0BA0;
  handler[4] = a1;
  return notify_register_dispatch("com.apple.bluetooth.prefsChanged", (a1 + 1532), v3, handler);
}

void sub_1004A677C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CFPreferencesCopyValue(@"enableGameControllerUSBBluetoothPairing", @"com.apple.bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue];
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "virtual void BT::SystemSettings::listenersWillBecomeNonEmpty(const ObservedListeners<GameControllerUSBBTPairingListener> &)_block_invoke";
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Using Pref Setting for GC's USB BT Pairing: %d", &v7, 0x12u);
    }
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + 1536) != v3)
  {
    *(v1 + 1536) = v3;
    sub_10038D1A0(v1, v3);
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v1 + 1536);
    v7 = 136315394;
    v8 = "virtual void BT::SystemSettings::listenersWillBecomeNonEmpty(const ObservedListeners<GameControllerUSBBTPairingListener> &)_block_invoke";
    v9 = 1024;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: game controller USB BT Pairing is currently set to %d", &v7, 0x12u);
  }
}

uint64_t sub_1004A6944(uint64_t a1)
{
  *(a1 + 1536) = 0;
  result = notify_cancel(*(a1 + 1532));
  *(a1 + 1532) = -1;
  return result;
}

uint64_t sub_1004A6978(uint64_t a1)
{
  *(a1 + 1392) = 0;
  result = notify_cancel(*(a1 + 1388));
  *(a1 + 1388) = -1;
  return result;
}

uint64_t sub_1004A69AC(uint64_t a1, uint64_t a2)
{
  v3 = *(sub_100017F4C(a1, a2) + 8);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1004A6A38;
  handler[3] = &unk_100AF0BA0;
  handler[4] = a1;
  return notify_register_dispatch("com.apple.mobilegarageband.appAndSessionState", (a1 + 1488), v3, handler);
}

void sub_1004A6A38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 0;
  if (!(*(*&v1->_os_unfair_lock_opaque + 224))(v1, &v2))
  {
    sub_10038D3B8(v1, v2);
  }
}

uint64_t sub_1004A6AA8(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1488));
  *(a1 + 1488) = -1;
  return result;
}

uint64_t sub_1004A6AD8(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1336));
  *(a1 + 1336) = -1;
  return result;
}

uint64_t sub_1004A6B08(uint64_t a1, BOOL *a2)
{
  state64 = 0;
  result = notify_get_state(*(a1 + 1488), &state64);
  if (result)
  {
    return 1;
  }

  *a2 = state64 != 0;
  return result;
}

void sub_1004A6B6C(uint64_t a1, uint64_t a2)
{
  v7 = 1;
  v3 = sub_1000E36A0(a1, a2);
  (*(*v3 + 64))(v3, &v7);
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 1492);
    *buf = 67109376;
    v9 = v7;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SystemSettings Accessibility setting newHT:%u, currHT:%u", buf, 0xEu);
  }

  v6 = v7;
  if (*(a1 + 1492) != v7)
  {
    *(a1 + 1492) = v7;
    sub_10038D5D0(a1, v6);
  }
}

void sub_1004A6C84(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = (a1 + 1712);
  objc_storeStrong(v5, a2);
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v7 = *v5;
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Country code changed %@", &v8, 0xCu);
  }
}

void sub_1004A6D6C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100017F4C(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1004A6DE8;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000CA94(v3, v4);
}

void sub_1004A6E00(uint64_t a1, uint64_t a2)
{
  v3 = sub_100017F4C(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1004A6E7C;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000CA94(v3, v4);
}

uint64_t sub_1004A6E90(uint64_t a1, uint64_t a2)
{
  result = sub_1005FCCC4(a1, a2);
  if (result)
  {
    *(a1 + 1516) = 0;
    result = notify_cancel(*(a1 + 1512));
    *(a1 + 1512) = -1;
  }

  return result;
}

uint64_t sub_1004A6ECC(uint64_t a1, uint64_t a2)
{
  result = sub_1005FCCC4(a1, a2);
  if (result)
  {
    *(a1 + 1340) = 0;
    result = notify_cancel(*(a1 + 1336));
    *(a1 + 1336) = -1;
  }

  return result;
}

uint64_t sub_1004A6F08(uint64_t a1, uint64_t a2)
{
  result = sub_1005FCCC4(a1, a2);
  if (result)
  {
    if (*(a1 + 1512) == -1)
    {
      v5 = *(sub_100017F4C(result, v4) + 8);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1004A6FA8;
      handler[3] = &unk_100AF0BA0;
      handler[4] = a1;
      return notify_register_dispatch("com.apple.bluetooth.prefsChanged", (a1 + 1512), v5, handler);
    }
  }

  return result;
}

void sub_1004A6FA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = CFPreferencesCopyValue(@"SpatialSoundProfileAllowed", @"com.apple.bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v3 BOOLValue];
  }

  else
  {
    v2 = 1;
  }

  if (*(v1 + 1516) != v2)
  {
    *(v1 + 1516) = v2;
    sub_10038D7E8(v1, v2);
  }
}

uint64_t sub_1004A707C(uint64_t a1, _BYTE *a2)
{
  if (sub_1005FCCC4(a1, a2))
  {
    v4 = CFPreferencesCopyValue(@"SpatialSoundProfileAllowed", @"com.apple.bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = [v4 BOOLValue];
    }

    else
    {
      v5 = 1;
    }

    *a2 = v5;
    if (*(a1 + 1516) != v5)
    {
      *(a1 + 1516) = v5;
    }
  }

  return 0;
}

uint64_t sub_1004A713C(uint64_t a1, uint64_t a2)
{
  v3 = *(sub_100017F4C(a1, a2) + 8);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1004A71C8;
  handler[3] = &unk_100AF0BA0;
  handler[4] = a1;
  return notify_register_dispatch("com.apple.bluetooth.prefsChanged", (a1 + 1520), v3, handler);
}

void sub_1004A71C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CFPreferencesCopyValue(@"move3PPLEMSToLegacyMode", @"com.apple.bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue];
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "virtual void BT::SystemSettings::listenersWillBecomeNonEmpty(const ObservedListeners<HID3ppLELegacyModeListener> &)_block_invoke";
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Using Pref Setting for LE Mouse at 7.5ms: %d", &v7, 0x12u);
    }
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + 1524) != v3)
  {
    *(v1 + 1524) = v3;
    sub_10038DA00(v1, v3);
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v1 + 1524);
    v7 = 136315394;
    v8 = "virtual void BT::SystemSettings::listenersWillBecomeNonEmpty(const ObservedListeners<HID3ppLELegacyModeListener> &)_block_invoke";
    v9 = 1024;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: LE Mouse at 7.5ms is currently set to %d", &v7, 0x12u);
  }
}

uint64_t sub_1004A7390(uint64_t a1)
{
  *(a1 + 1524) = 0;
  result = notify_cancel(*(a1 + 1520));
  *(a1 + 1520) = -1;
  return result;
}

uint64_t sub_1004A73C4(uint64_t a1)
{
  *(a1 + 1340) = 0;
  result = notify_cancel(*(a1 + 1336));
  *(a1 + 1336) = -1;
  return result;
}

uint64_t sub_1004A73F8(uint64_t a1, uint64_t a2)
{
  v3 = *(sub_100017F4C(a1, a2) + 8);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1004A7484;
  handler[3] = &unk_100AF0BA0;
  handler[4] = a1;
  return notify_register_dispatch("com.apple.system.console_mode_changed", (a1 + 1528), v3, handler);
}

void sub_1004A7484(uint64_t a1)
{
  v1 = *(a1 + 32);
  state64 = 0;
  state = notify_get_state(v1[382]._os_unfair_lock_opaque, &state64);
  v3 = qword_100BCE8D8;
  v4 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (state)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "fGameConsoleModeNotifyToken is invalid", buf, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 134217984;
      v7 = state64;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "com.apple.system.console_mode_changed: %llu", buf, 0xCu);
    }

    sub_10038E1C4(v1, state64 == 1);
  }
}

uint64_t sub_1004A75A4(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1528));
  *(a1 + 1528) = -1;
  return result;
}

uint64_t sub_1004A75D4(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1320));
  *(a1 + 1320) = -1;
  return result;
}

uint64_t sub_1004A7604(uint64_t a1, BOOL *a2)
{
  v3 = sub_10000C798(a1, a2);
  v4 = (*(*v3 + 416))(v3);
  if ((v4 & 1) == 0)
  {
    v6 = sub_10000C798(v4, v5);
    if (!(*(*v6 + 352))(v6))
    {
      return 1;
    }
  }

  v8 = 8;
  v9 = 0;
  if (sysctlbyname("kern.console_mode", &v9, &v8, 0, 0) == -1)
  {
    return 1;
  }

  result = 0;
  *a2 = v9 == 1;
  return result;
}

void sub_1004A76DC(uint64_t a1, uint64_t a2)
{
  if (sub_1005FC95C(a1, a2))
  {
    v3 = *(a1 + 1552);
    if (!v3)
    {
      v4 = objc_alloc_init(CMDeviceOrientationManager);
      v5 = *(a1 + 1552);
      *(a1 + 1552) = v4;

      v3 = *(a1 + 1552);
    }

    v6 = +[NSOperationQueue mainQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1004A77E4;
    v7[3] = &unk_100AF9120;
    v7[4] = a1;
    [v3 startDeviceOrientationUpdatesToQueue:v6 withHandler:v7];
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100831B90();
  }
}

void sub_1004A77E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Receiving device orientation update", buf, 2u);
  }

  v10 = 0;
  v9 = [v5 orientation];
  if (!sub_1004A78B4(v9, v9, &v10))
  {
    sub_10038DE30(v7, v10);
  }
}

uint64_t sub_1004A78B4(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = a2;
  if ((sub_1005FC95C(a1, a2) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100831B90();
    }

    return 1;
  }

  if (v4 > 3)
  {
    if (v4 <= 5)
    {
      result = 0;
      if (v4 == 4)
      {
        v6 = 3;
      }

      else
      {
        v6 = 4;
      }

      goto LABEL_21;
    }

    if (v4 == 6)
    {
      result = 0;
      v6 = 5;
      goto LABEL_21;
    }

    if (v4 != 7)
    {
      goto LABEL_22;
    }

LABEL_17:
    result = 0;
    v6 = 1;
    goto LABEL_21;
  }

  if (v4 > 1)
  {
    result = 0;
    if (v4 == 2)
    {
      v6 = 6;
    }

    else
    {
      v6 = 7;
    }

    goto LABEL_21;
  }

  if (!v4)
  {
    goto LABEL_17;
  }

  if (v4 != 1)
  {
LABEL_22:
    *a3 = 0;
    return 1;
  }

  result = 0;
  v6 = 2;
LABEL_21:
  *a3 = v6;
  return result;
}

uint64_t sub_1004A79D8(uint64_t a1, uint64_t a2)
{
  if (sub_1005FC95C(a1, a2))
  {
    v12 = 0;
    v3 = [*(a1 + 1552) deviceOrientationBlocking];
    v4 = v3;
    if (!v3)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100831BC4();
      }

      v10 = 0;
      goto LABEL_16;
    }

    v5 = [v3 orientation];
    v6 = sub_1004A78B4(v5, v5, &v12);
    v7 = qword_100BCE8D8;
    v8 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *buf = 67109120;
        v14 = v12;
        v9 = "Unexpected device orientation received - %u";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 8u);
      }
    }

    else if (v8)
    {
      *buf = 67109120;
      v14 = v12;
      v9 = "Successfully queried device orientation - %u";
      goto LABEL_14;
    }

    v10 = v12;
LABEL_16:

    return v10;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100831B90();
  }

  return 0;
}

BOOL sub_1004A7B6C()
{
  v3 = 8;
  v4 = 0;
  if (sysctlbyname("security.mac.amfi.developer_mode_status", &v4, &v3, 0, 0))
  {
    return 0;
  }

  v1 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Developer Mode enabled", v2, 2u);
  }

  return v4 == 1;
}

uint64_t sub_1004A7C10(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E7F0 != -1)
  {
    sub_100831BF8();
  }

  return byte_100B6E7E8;
}

void sub_1004A7C48(id a1)
{
  v2 = 0;
  v1 = 4;
  if (!sysctlbyname("kern.hv_vmm_present", &v2, &v1, 0, 0))
  {
    byte_100B6E7E8 = v2 != 0;
  }
}

id sub_1004A7CA4(uint64_t a1, uint64_t a2)
{
  result = sub_1005FCE30(a1, a2);
  if (result)
  {
    v4 = *(a1 + 1680);

    return [v4 messagesAppLockState];
  }

  return result;
}

uint64_t sub_1004A7CEC(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004A7DBC;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E7F8 != -1)
  {
    dispatch_once(&qword_100B6E7F8, block);
  }

  if (*(a1 + 1696))
  {
    return 0;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100831C0C();
  }

  return 1;
}

void sub_1004A7DBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSDate dateWithTimeIntervalSinceNow:10.0];
  for (i = 10000; ; i *= 2)
  {
    [v2 timeIntervalSinceNow];
    if (v4 <= 0.0)
    {
      break;
    }

    v5 = IOServiceNameMatching("AppleOLYHAL");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
    v7 = MatchingService;
    if (MatchingService)
    {
      v8 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"HWIdentifiers", kCFAllocatorDefault, 1u);
      v9 = v8;
      if (v8)
      {
        v10 = CFGetTypeID(v8);
        if (v10 == CFDictionaryGetTypeID())
        {
          v11 = *(v1 + 1696);
          if (v11)
          {
            CFRelease(v11);
            *(v1 + 1696) = 0;
          }

          CFRetain(v9);
          *(v1 + 1696) = v9;
        }

        CFRelease(v9);
      }

      IOObjectRelease(v7);
      v12 = qword_100BCE8D8;
      if (*(v1 + 1696))
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(v1 + 1696);
          v15 = 138412290;
          v16 = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "HWIdentifiers property is set: %@", &v15, 0xCu);
        }

        break;
      }

      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "No HWIdentifiers property. Retrying...\n", &v15, 2u);
      }
    }

    else
    {
      v13 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "No AppleOLYHAL service. Retrying...\n", &v15, 2u);
      }
    }

    usleep(i);
  }
}

uint64_t sub_1004A8010(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004A80FC;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E800 != -1)
  {
    dispatch_once(&qword_100B6E800, block);
  }

  if (*(a1 + 1704))
  {
    return 0;
  }

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "WiFi has not booted", v4, 2u);
  }

  return 1;
}

void sub_1004A80FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSDate dateWithTimeIntervalSinceNow:10.0];
  for (i = 10000; ; i *= 2)
  {
    [v2 timeIntervalSinceNow];
    if (v4 <= 0.0)
    {
      break;
    }

    v5 = IOServiceNameMatching("AppleOLYHAL");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
    v7 = MatchingService;
    if (MatchingService)
    {
      v8 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"WiFiBootState", kCFAllocatorDefault, 1u);
      v9 = v8;
      if (v8)
      {
        v10 = CFGetTypeID(v8);
        if (v10 == CFBooleanGetTypeID())
        {
          *(v1 + 1704) = CFBooleanGetValue(v9) != 0;
        }

        CFRelease(v9);
      }

      IOObjectRelease(v7);
      v11 = *(v1 + 1704);
      v12 = qword_100BCE8D8;
      v13 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
      if (v11 == 1)
      {
        if (v13)
        {
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "WiFi has booted", v17, 2u);
        }

        break;
      }

      if (v13)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "WiFi has not booted", buf, 2u);
      }
    }

    else
    {
      v14 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "No AppleOLYHAL service. Retrying...\n", v15, 2u);
      }
    }

    usleep(i);
  }
}

uint64_t sub_1004A8300(void *a1)
{
  result = a1[212];
  if (!result)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100831C40();
    }

    if ((*(*a1 + 304))(a1))
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100831C74();
      }

      return 0;
    }

    else
    {
      return a1[212];
    }
  }

  return result;
}

uint64_t sub_1004A83B8(CFDictionaryRef *a1)
{
  if (!(*(*a1 + 39))(a1))
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100831CDC();
    }

    return 0;
  }

  valuePtr = 0;
  Value = CFDictionaryGetValue(a1[212], @"C");
  if (!Value)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100831CA8();
    }

    return 0;
  }

  CFNumberGetValue(Value, kCFNumberLongType, &valuePtr);
  if (valuePtr == 276347)
  {
    return 4377;
  }

  else
  {
    return valuePtr;
  }
}

void *sub_1004A84A0@<X0>(CFDictionaryRef *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  if ((*(*a1 + 39))(a1))
  {
    *buffer = 0u;
    v15 = 0u;
    cStr[0] = v3;
    cStr[1] = 0;
    v6 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
    v7 = CFAutorelease(v6);
    Value = CFDictionaryGetValue(a1[212], v7);
    if (Value)
    {
      v9 = buffer;
      CFStringGetCString(Value, buffer, 32, 0x8000100u);
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100831D10();
      }

      v9 = "";
    }

    v11 = a3;
    v10 = v9;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100831D88();
    }

    v10 = "";
    v11 = a3;
  }

  return sub_100007E30(v11, v10);
}

void sub_1004A86FC(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a2;
  sub_1004A89EC(a2, 0, buf);
  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  *v5 = *buf;
  v5[2] = *&buf[16];
  v8 = v5;
  if (*(v5 + 23) < 0)
  {
    v8 = *v5;
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = [NSString stringWithFormat:@".*(%@)", v9];
  v11 = (*(*a1 + 424))(a1, @"/etc/bluetool/", v10, a3, 0);
  v12 = MGCopyAnswer();
  v13 = qword_100BCE8D8;
  if (v12 && v11)
  {
    v14 = qword_100BCE8D8;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = [@"/etc/bluetool/" stringByAppendingString:v11];
      v18 = v17;
      v19 = [v17 UTF8String];
      if (*(v5 + 23) < 0)
      {
        v5 = *v5;
      }

      *buf = 136315394;
      *&buf[4] = v19;
      *&buf[12] = 2080;
      *&buf[14] = v5;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Found file from override directory: %s with extension: %s", buf, 0x16u);
    }

    v15 = [@"/etc/bluetool/" stringByAppendingString:v11];
    v16 = v15;
    sub_100007E30(a4, [v15 UTF8String]);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v5 + 23) < 0)
      {
        v5 = *v5;
      }

      *buf = 136315394;
      *&buf[4] = v5;
      *&buf[12] = 2112;
      *&buf[14] = @"/etc/bluetool/";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No override %s file in %@", buf, 0x16u);
    }

    sub_100007E30(a4, "");
  }
}

char *sub_1004A89EC@<X0>(const void **a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = *(a1 + 23);
  v7 = a1[1];
  a3[1] = 0;
  a3[2] = 0;
  if ((v6 & 0x80u) == 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  *a3 = 0;
  result = sub_1003A5170(a3, v8 + 1);
  if (result[23] >= 0)
  {
    v10 = result;
  }

  else
  {
    v10 = *result;
  }

  if (v8)
  {
    if (*(a1 + 23) >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    result = memmove(v10, v11, v8);
  }

  v12 = &v10[v8];
  *v12 = a2;
  v12[1] = 0;
  return result;
}

void sub_1004A8A88(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  sub_1004A89EC(a2, 0, __p);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  *v3 = *__p;
  v3[2] = *&__p[16];
  v5 = v3;
  if (*(v3 + 23) < 0)
  {
    v5 = *v3;
  }

  v26 = [NSString stringWithUTF8String:v5];
  (*(*a1 + 352))(__p, a1);
  if (__p[23] >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = *__p;
  }

  v28 = [NSString stringWithUTF8String:v6];
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  (*(*a1 + 360))(__p, a1);
  if (__p[23] >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = *__p;
  }

  v27 = [NSString stringWithUTF8String:v7];
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  (*(*a1 + 336))(__p, a1);
  if (__p[23] >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = *__p;
  }

  v9 = [NSString stringWithUTF8String:v8];
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  (*(*a1 + 464))(__p, a1);
  if (__p[23] >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = *__p;
  }

  v11 = [NSString stringWithUTF8String:v10];
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if ([v28 length] && objc_msgSend(v27, "length") && objc_msgSend(v9, "length"))
  {
    v12 = [v9 uppercaseString];
    if ([v12 characterAtIndex:0] == 71)
    {
      v13 = [NSString stringWithUTF8String:"S"];

      v9 = v13;
    }

    if ([v26 containsString:@"ptb"])
    {
      if ([(__CFString *)v11 length])
      {
        v14 = [NSString stringWithFormat:@"K_%@", v11];

        v11 = v14;
      }

      else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100831E00();
      }
    }

    else
    {

      v11 = &stru_100B0F9E0;
    }

    if (-[__CFString length](v11, "length") || ([v26 containsString:@"ptb"] & 1) == 0)
    {
      v16 = [NSString stringWithFormat:@".*(%@).*(%@).*._(%@).*(%@)_.*(%@)", v28, v27, v9, v11, v26];
      v17 = (*(*a1 + 424))(a1, @"/usr/share/firmware/bluetooth/", v16, 0, 0);
      v15 = v16;
      if (v17)
      {
        v18 = v17;
        goto LABEL_44;
      }
    }

    else
    {
      v15 = 0;
    }

    if (![v26 containsString:@"ptb"] || (v11, v11 = @"K_R", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @".*(%@).*(%@).*._(%@).*(%@)_.*(%@)", v28, v27, v9, @"K_R", v26), v16 = objc_claimAutoreleasedReturnValue(), v15, (*(*a1 + 424))(a1, @"/usr/share/firmware/bluetooth/", v16, 0, 0), v18 = objc_claimAutoreleasedReturnValue(), v15 = v16, !v18))
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100831E34();
      }

      sub_100007E30(a3, "");
      goto LABEL_52;
    }

LABEL_44:
    v19 = qword_100BCE8D8;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [@"/usr/share/firmware/bluetooth/" stringByAppendingString:v18];
      v21 = v20;
      v22 = [v20 UTF8String];
      if (*(v3 + 23) < 0)
      {
        v3 = *v3;
      }

      *__p = 136315394;
      *&__p[4] = v22;
      *&__p[12] = 2080;
      *&__p[14] = v3;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Found file from HWIdentifiers: %s with extension: %s", __p, 0x16u);
    }

    v23 = [@"/usr/share/firmware/bluetooth/" stringByAppendingString:v18];
    v24 = v23;
    sub_100007E30(a3, [v23 UTF8String]);

    v15 = v16;
LABEL_52:

    goto LABEL_53;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100831EAC();
  }

  sub_100007E30(a3, "");
LABEL_53:
}

void sub_1004A9204(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a2;
  sub_1004A89EC(a2, 0, buffer);
  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  *v5 = *buffer;
  v5[2] = v45;
  v8 = v5;
  if (*(v5 + 23) < 0)
  {
    v8 = *v5;
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = IOServiceNameMatching("bluetooth-pcie");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v10);
  v12 = MatchingService;
  if (MatchingService)
  {
    v13 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"IOName", kCFAllocatorDefault, 1u);
    v14 = v13;
    if (v13)
    {
      *buffer = 0u;
      v45 = 0u;
      if (CFStringGetCString(v13, buffer, 32, 0x8000100u))
      {
        CFRelease(v14);
        IOObjectRelease(v12);
        v15 = strtok(buffer, ",");
        v16 = strtok(0, ",");
        v17 = v16;
        v18 = qword_100BCE8D8;
        if (v15 && v16)
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v39 = v15;
            v40 = 2080;
            v41 = v17;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Got IOName with vendorId %s, deviceId %s", buf, 0x16u);
          }

          v19 = [NSString stringWithUTF8String:v15];
          if (strcmp(v17, "792b"))
          {
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
            {
              sub_100831F24();
            }

LABEL_15:
            sub_100007E30(a4, "");
LABEL_61:

            goto LABEL_62;
          }

          if (strcmp(v15, "pci14c3"))
          {
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
            {
              sub_100831F94();
            }

            goto LABEL_31;
          }

          if ([v9 containsString:@"ptx"])
          {
            v20 = (*(*a1 + 392))(a1);
            v21 = [@"MT7923A0" substringToIndex:{objc_msgSend(@"MT7923A0", "length") - 2}];
            if (v20)
            {
              [NSString stringWithFormat:@".*(%@)_PTB_(%@)_.*(%@)", v21, v20, v9];
            }

            else
            {
              [NSString stringWithFormat:@".*(%@).*(%@)", @"MT7923A0", v9];
            }
            v37 = ;
          }

          else
          {
            v22 = sub_1000271F0();
            v23 = strcmp(v17, "793b");
            v24 = &stru_100B0F9E0;
            if (!v23)
            {
              if ((v22 - 173) >= 4)
              {
                v25 = @"TypeC";
                if (v22 != 131)
                {
                  v25 = &stru_100B0F9E0;
                }

                if (v22 == 296)
                {
                  v24 = @"TypeB";
                }

                else
                {
                  v24 = v25;
                }
              }

              else
              {
                v24 = @"TypeA";
              }
            }

            v37 = [NSString stringWithFormat:@".*(%@)_.*(%@).*(%@)", @"MT7923A0", v24, v9];
            if ([v9 containsString:@"bin"] && sub_10037D384())
            {
              v26 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Loading Bluetooth firmware signed with the development secure boot key", buf, 2u);
              }

              v27 = [NSString stringWithFormat:@".*(%@).*dev_sign.*(%@).*(%@)", @"MT7923A0", v24, v9];

              v37 = v27;
            }
          }

          v28 = (*(*a1 + 424))(a1, @"/usr/share/firmware/bluetooth/", v37, a3, 0);
          if (v28)
          {
            v29 = "no";
          }

          else
          {
            sub_1000271F0();
            v30 = [NSString stringWithFormat:@".*(%@)_PTB_.*(%@)", @"MT7923A0", v9];
            v28 = (*(*a1 + 424))(a1, @"/usr/share/firmware/bluetooth/", v30, a3, 0);

            if (!v28)
            {

LABEL_31:
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
              {
                sub_100832004();
              }

              goto LABEL_15;
            }

            v29 = "yes";
          }

          v31 = qword_100BCE8D8;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [@"/usr/share/firmware/bluetooth/" stringByAppendingString:v28];
            v33 = v32;
            v34 = [v32 UTF8String];
            if (*(v5 + 23) < 0)
            {
              v5 = *v5;
            }

            *buf = 136315650;
            v39 = v34;
            v40 = 2080;
            v41 = v5;
            v42 = 2080;
            v43 = v29;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Found file from IOName: %s with extension: %s 2Chance: %s", buf, 0x20u);
          }

          v35 = [@"/usr/share/firmware/bluetooth/" stringByAppendingString:v28];
          v36 = v35;
          sub_100007E30(a4, [v35 UTF8String]);

          goto LABEL_61;
        }

        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v39 = v15;
          v40 = 2080;
          v41 = v17;
          v42 = 2080;
          v43 = buffer;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Missing vendorId (%s) or deviceId (%s) from IOName %s", buf, 0x20u);
        }

        sub_100007E30(a4, "");
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_10083207C();
        }

        CFRelease(v14);
        IOObjectRelease(v12);
        sub_100007E30(a4, "");
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_1008320B0();
      }

      IOObjectRelease(v12);
      sub_100007E30(a4, "");
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008320E4();
    }

    sub_100007E30(a4, "");
  }

LABEL_62:
}

NSObject *sub_1004A9A84(uint64_t a1, void *a2, void *a3, unsigned int a4, void *a5)
{
  v9 = a2;
  v30 = a3;
  v29 = a5;
  v10 = +[NSFileManager defaultManager];
  v11 = [NSURL fileURLWithPath:v9];
  v12 = [NSArray arrayWithObject:NSURLNameKey];
  v28 = a4;
  v35 = 0;
  v13 = [v10 contentsOfDirectoryAtURL:v11 includingPropertiesForKeys:v12 options:4 error:&v35];
  v14 = v35;

  if (v14)
  {
    v15 = qword_100BCE8D8;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v14 debugDescription];
      sub_100832118(v9, v16, v37);
    }

    v17 = 0;
  }

  else
  {
    v18 = +[NSMutableArray array];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v19 = v13;
    v20 = [v19 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v20)
    {
      v21 = *v32;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v31 + 1) + 8 * i);
          if (v23)
          {
            v24 = [v23 lastPathComponent];
            [v18 addObject:v24];
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v20);
    }

    v25 = [v18 count];
    v26 = 0;
    if (v30 && v25)
    {
      v26 = (*(*a1 + 456))(a1, v18, v30, v28, v29);
    }

    v15 = v26;

    v17 = v15;
  }

  return v17;
}