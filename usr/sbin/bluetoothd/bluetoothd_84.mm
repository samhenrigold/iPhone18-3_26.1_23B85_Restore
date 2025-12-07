void sub_100601EB0(uint64_t a1)
{
  sub_100601C24(a1 - 272);

  operator delete();
}

uint64_t sub_100601EEC(uint64_t a1)
{
  v2 = os_log_create("com.apple.bluetooth", "HIDProfileDispatch");
  v3 = *(a1 + 512);
  *(a1 + 512) = v2;

  *(a1 + 528) = os_signpost_id_make_with_pointer(*(a1 + 512), a1);
  v4 = os_log_create("com.apple.bluetooth", "HIDProfileMutex");
  v5 = *(a1 + 520);
  *(a1 + 520) = v4;

  *(a1 + 536) = os_signpost_id_make_with_pointer(*(a1 + 520), a1);
  if (qword_100B50F88 != -1)
  {
    sub_100851110();
  }

  sub_1006DC960(off_100B50F80, a1 + 272);
  if (qword_100B50AC0 != -1)
  {
    sub_100851124();
  }

  sub_1005907D4(off_100B50AB8, a1 + 320);
  sub_100602170(a1);
  v6 = sub_100017E6C();
  sub_10060E7A8(v6 + 944, a1 + 328);
  if (qword_100B508B0 != -1)
  {
    sub_100851138();
  }

  sub_100749B80(off_100B508A8, a1 + 296, 0);
  if (qword_100B50900 != -1)
  {
    sub_10085114C();
  }

  sub_1000F125C(qword_100B508F8 + 40, a1 + 312);
  v7 = sub_100017E6C();
  sub_100532818(v7 + 744, a1 + 280);
  v8 = sub_100017E6C();
  (*(*v8 + 160))(v8, a1 + 658);
  v9 = sub_100017E6C();
  sub_1003128B0(v9 + 384, a1 + 288);
  v12 = *sub_10000C798(v10, v11);
  if ((*(v12 + 304))())
  {
    v13 = sub_100017E6C();
    sub_10060EA48(v13 + 1264, a1 + 304);
    v14 = sub_100017E6C();
    (*(*v14 + 208))(v14, a1 + 659);
  }

  else
  {
    v15 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Low Latency Gaming not eligible for this device", v17, 2u);
    }
  }

  if (qword_100B508C0 != -1)
  {
    sub_100851160();
  }

  sub_1007BF384(off_100B508B8, a1 + 336);
  return 0;
}

void sub_100602170(uint64_t a1)
{
  v2 = CFPreferencesCopyValue(@"enableGameControllerAutoSwitchMode", @"com.apple.bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v2 BOOLValue];
    }

    else
    {
      v3 = 0;
    }

    *(a1 + 508) = v3;
  }

  else
  {
    v4 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "void BT::HIDProfile::getSystemSettingForEnableClassicGCAutoSwitchMode()";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: enableGameControllerAutoSwitchMode does not exist in plist; by default is ON", &v8, 0xCu);
    }

    *(a1 + 508) = 1;
  }

  v5 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 508);
    v7 = "not present";
    v9 = "void BT::HIDProfile::getSystemSettingForEnableClassicGCAutoSwitchMode()";
    v8 = 136315650;
    if (v6)
    {
      v7 = "present";
    }

    v10 = 2080;
    v11 = v7;
    v12 = 1024;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Defaults write to enable Classic GC Auto Switch Mode is %s and current setting is %d.", &v8, 0x1Cu);
  }
}

uint64_t sub_100602334()
{
  v2 = 0;
  sub_1000216B4(&v2);
  v0 = sub_10021B0F0(&dword_1008AA830, off_100B01C00);
  sub_100022214(&v2);
  if (v0)
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100851188();
    }

    v0 = 1;
  }

  sub_10002249C(&v2);
  return v0;
}

uint64_t sub_1006023D8()
{
  v2 = 0;
  sub_1000216B4(&v2);
  v0 = sub_10021B574();
  if (v0)
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_1008511F8();
    }

    v0 = 1;
  }

  sub_10002249C(&v2);
  return v0;
}

uint64_t sub_100602464(uint64_t a1)
{
  if (qword_100B508C0 != -1)
  {
    sub_100851268();
  }

  sub_1007BF4C0(off_100B508B8, a1 + 336);
  if (qword_100B50AC0 != -1)
  {
    sub_100851124();
  }

  sub_1005908D4(off_100B50AB8, a1 + 320);
  v2 = sub_100017E6C();
  sub_10036F1AC(v2 + 384, a1 + 288);
  v3 = sub_100017E6C();
  sub_100532AB8(v3 + 744, a1 + 280);
  v4 = sub_100017E6C();
  sub_10060F5F8(v4 + 1264, a1 + 304);
  v5 = sub_100017E6C();
  sub_10060F6D0(v5 + 944, a1 + 328);
  if (qword_100B50F88 != -1)
  {
    sub_100851110();
  }

  sub_1006DCA90(off_100B50F80, a1 + 272);
  return 0;
}

_BYTE *sub_100602548(uint64_t a1, unint64_t a2, int a3)
{
  v6 = qword_100BCEAA0;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1000C0348(a2);
    sub_1000E5A58(a2, __p);
    v8 = "Not Connected";
    if (v7)
    {
      v8 = "Connected";
    }

    if (v20 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 136446466;
    v22 = v8;
    v23 = 2082;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s HID device %{public}s will unpair", buf, 0x16u);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v18 = 0;
  sub_1000216B4(&v18);
  v10 = sub_100219518(a2 + 128);
  v11 = v10;
  if (v10)
  {
    v12 = *(v10 + 7);
  }

  else
  {
    v12 = 0;
  }

  sub_100022214(&v18);
  if (!a3 && !(v12 & 1 | !sub_1000C0348(a2)))
  {
    sub_1000618AC(&v18);
    sub_1006027B0(a1, a2);
    sub_100022214(&v18);
    if (!v11)
    {
LABEL_22:
      *(a1 + 656) = 0;
      return sub_10002249C(&v18);
    }

    __p[0] = 0;
    __p[1] = 0;
    sub_100007F88(__p, a1 + 544);
    v13 = sub_10002220C((a1 + 608), __p, 0x7D0uLL);
    v14 = qword_100BCEAA0;
    v15 = os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        *buf = 0;
        v16 = "HID recanted Successfully";
LABEL_20:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
      }
    }

    else if (v15)
    {
      *buf = 0;
      v16 = "HID timedout waiting to recant";
      goto LABEL_20;
    }

    sub_1000088CC(__p);
    goto LABEL_22;
  }

  return sub_10002249C(&v18);
}

void sub_10060276C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, char a13)
{
  sub_1000088CC(&a13);
  sub_10002249C(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1006027B0(uint64_t a1, unint64_t a2)
{
  if ((sub_10000C240() & 1) == 0)
  {
    v4 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_FAULT))
    {
      sub_10085127C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = sub_10057E30C(a1, a2);
  v13 = sub_100219518(a2 + 128);
  if (v13)
  {
    *(v13 + 7) = 1;
  }

  v14 = qword_100BCEAA0;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      sub_1000E5A58(a2, __p);
      if (v24 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      *buf = 136446210;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Unplugging virtual cable to device %{public}s", buf, 0xCu);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136446210;
      v26 = "NULL";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Unplugging virtual cable to device %{public}s", buf, 0xCu);
    }
  }

  if (sub_10053C854(a2))
  {
    v16 = sub_10053C860(a2);
    if (v16)
    {
      v17 = &unk_1008AA834;
    }

    else
    {
      v17 = &unk_1008AA836;
    }

    *(a1 + 656) = v12;
    if (v16)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    v19 = sub_10021BC0C(v12, 3, v17, v18);
  }

  else
  {
    v19 = sub_10021B6D0(v12, 5u, sub_100603B60);
  }

  v20 = v19;
  if (!v19)
  {
    return 0;
  }

  v21 = qword_100BCEAA0;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    if (a2)
    {
      sub_1000E5A58(a2, __p);
      sub_1008512F4();
    }

    else
    {
      sub_100851344(buf, v20);
    }
  }

  return 1;
}

uint64_t sub_100602A1C(uint64_t a1, unint64_t a2)
{
  v17 = 0;
  sub_1000216B4(&v17);
  v16 = 0;
  v4 = sub_10053CB38(a2);
  if (v4)
  {
    v5 = qword_100BCEAA0;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v6 = v15 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Connecting to device %{public}s using Type S connection policy", buf, 0xCu);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = &unk_100B01CA8;
LABEL_9:

    v8 = sub_10021B6AC((a2 + 128), &off_100B01C88, &v16, v7);
    goto LABEL_26;
  }

  if (sub_100602D24(v4, a2) && sub_10053C974(a2))
  {
    v5 = qword_100BCEAA0;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v9 = v15 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Connecting to device %{public}s using Apple Mouse/TP connection policy", buf, 0xCu);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = &unk_100B54C18;
    goto LABEL_9;
  }

  v10 = qword_100BCEAA0;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v11 = v15 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Connecting to device %{public}s using default connection policy", buf, 0xCu);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = sub_10021B6AC((a2 + 128), &off_100B01C88, &v16, 0);
LABEL_26:
  if (v8)
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_10085139C();
    }

    v12 = 1;
  }

  else
  {
    sub_10057E218(a1, a2, v16);
    v12 = 0;
  }

  sub_10002249C(&v17);
  return v12;
}

uint64_t sub_100602D24(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1008514DC(buf);
    return buf[0];
  }

  v16 = 0;
  v17 = 0;
  if ((sub_1000C2364(a2, &v17 + 1, &v17, &v16 + 1, &v16) & 1) == 0)
  {
    v14 = qword_100BCEAA0;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, buf);
      sub_10085140C();
    }

    goto LABEL_26;
  }

  if (v17 != 76 && v17 != 1452)
  {
    v14 = qword_100BCEAA0;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, buf);
      sub_100851474();
    }

LABEL_26:

    return 0;
  }

  v3 = qword_100BCEAA0;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v4 = v19 >= 0 ? __p : __p[0];
    *buf = 136316418;
    v21 = "MIDSupports15msFeatureBit";
    v22 = 2082;
    v23 = v4;
    v24 = 1024;
    v25 = v17;
    v26 = 1024;
    v27 = HIDWORD(v16);
    v28 = 1024;
    v29 = HIDWORD(v17);
    v30 = 1024;
    v31 = v16;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: %{public}s is vid(0x%x), pid(0x%x), vidSrc(0x%x), fwver(0x%x)", buf, 0x2Eu);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (((HIDWORD(v16) - 803) < 2 || HIDWORD(v16) == 617 || HIDWORD(v16) == 613) && (v16 & 0xFFF) - 768 < 0x11)
  {
    return 1;
  }

  v5 = sub_10054AED0(a2);
  v6 = qword_100BCEAA0;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    if (v19 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136315650;
    v21 = "MIDSupports15msFeatureBit";
    v22 = 2082;
    v23 = v7;
    v24 = 1024;
    v25 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: %{public}s is MIDFeatureBits 0x%x", buf, 0x1Cu);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v5)
  {
    return 1;
  }

  v10 = sub_10000C798(v8, v9);
  v11 = (*(*v10 + 352))(v10);
  if (v11)
  {
    return 1;
  }

  v15 = sub_10000C798(v11, v12);
  return (*(*v15 + 456))(v15);
}

uint64_t sub_100603094(void *a1, unint64_t a2)
{
  v12 = 0;
  v11 = 0;
  sub_1000216B4(&v11);
  if (!sub_10023E4C8(a2 + 128, &v12) && v12 == 97 && sub_100538D24(a2))
  {
    v4 = qword_100BCEAA0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v5 = v14 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Forcing disconnect for unauthorized Type S device %{public}s", buf, 0xCu);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v6 = sub_10023BD60(a2 + 128);
    if (!v6)
    {
      v9 = 0;
      goto LABEL_17;
    }

    v7 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p[0]) = 67109120;
      HIDWORD(__p[0]) = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to force disconnect unauthorized Type S device with result %{bluetooth:OI_STATUS}u", __p, 8u);
    }

    goto LABEL_16;
  }

  v8 = sub_10057E30C(a1, a2);
  v9 = sub_10021B6CC(v8);
  if (v9)
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100851590();
    }

LABEL_16:
    v9 = 1;
  }

LABEL_17:
  sub_10002249C(&v11);
  return v9;
}

void sub_100603298(uint64_t a1, uint64_t a2)
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
        goto LABEL_6;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_6:
    v6 = a2;
    sub_10060FB6C((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

uint64_t sub_10060332C(void *a1, int a2, int a3, uint64_t a4)
{
  v4 = a4;
  v37 = a2;
  v8 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *&buf[4] = a3;
    *&buf[8] = 1024;
    *&buf[10] = a2;
    *&buf[14] = 1024;
    *&buf[16] = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sendControlOpCfm for op 0x%x with handle 0x%x returned status %d", buf, 0x14u);
  }

  v36[0] = 0;
  v36[1] = 0;
  sub_100007F88(v36, (a1 + 43));
  v9 = a1[85];
  if (!v9)
  {
LABEL_8:
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_1008516AC();
    }

    return sub_1000088CC(v36);
  }

  while (1)
  {
    v10 = *(v9 + 16);
    if (v37 >= v10)
    {
      break;
    }

LABEL_7:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  if (v10 < v37)
  {
    ++v9;
    goto LABEL_7;
  }

  if (!sub_10057E420(a1, v37) || (sub_10002223C() & 1) == 0)
  {
    v12 = sub_1004D0684((a1 + 84), &v37);
    v13 = v12;
    if (*(v12 + 72) == 1)
    {
      v14 = *(v12 + 73);
      v15 = *(v12 + 74);
      v16 = *(v12 + 19);
      v17 = v12[10];
      v18 = v12[11];
      if (v14)
      {
        v19 = sub_10021BAF4(v37, *(v12 + 74), *(v12 + 19), 0xFFFF);
        goto LABEL_40;
      }

      v28 = *(v12 + 19);
      *buf = 0u;
      v21 = v37;
      buf[0] = 5;
      *&buf[2] = v37;
      *&buf[4] = 255;
      *&buf[16] = v18;
      if (v17 && v18)
      {
        operator new[]();
      }

      buf[24] = 0;
      if (*(v12 + 64) != 1)
      {
LABEL_26:
        v34 = 1;
        v29[0] = 5;
        v30 = v21;
        v31 = 255;
        v32 = 0;
        v33 = v18;
        if (v18)
        {
          operator new[]();
        }

        v16 = v28;
        LOBYTE(v34) = 0;
        sub_10060F7A8((v13 + 4), v29);
        if (v34 == 1 && v32)
        {
          operator delete[]();
        }

        if (v15 == 2)
        {
          v24 = sub_10021BD98(v37, 2, v17, 0);
        }

        else
        {
          if (v15 != 3)
          {
            v19 = 101;
            goto LABEL_40;
          }

          v24 = sub_10021BC0C(v37, 3, v17, 0);
        }

        v19 = v24;
        goto LABEL_40;
      }

      v22 = sub_1006018EC(buf);
      v23 = qword_100BCEAA0;
      if (v22 == 2)
      {
        if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_INFO))
        {
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "HID Perf Mode is stopping", v35, 2u);
        }

        *(v13 + 64) = 0;
        goto LABEL_26;
      }

      if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
      {
        sub_100851600();
        v16 = v28;
        v19 = 104;
      }

      else
      {
        v19 = 104;
        v16 = v28;
      }

LABEL_40:
      v25 = qword_100BCEAA0;
      if (v19)
      {
        if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
        {
          sub_10085163C();
        }
      }

      else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
      {
        v26 = "set";
        *buf = 136316674;
        if (v14)
        {
          v26 = "get";
        }

        *&buf[4] = v26;
        *&buf[12] = 1024;
        *&buf[14] = v37;
        *&buf[18] = 1024;
        *&buf[20] = v15;
        *&buf[24] = 1024;
        *&buf[26] = v16;
        *&buf[30] = 2048;
        v39 = v18;
        v40 = 1040;
        v41 = v18;
        v42 = 2098;
        v43 = v17;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Sent queued %s report {handle: 0x%x, type: %d, ID: %d, size: %zu, {%{public}.*P}", buf, 0x38u);
      }

      *(v13 + 72) = 0;
      v27 = v13[10];
      if (v27)
      {
        free(v27);
      }

      v13[10] = 0;
    }

    else
    {
      v20 = qword_100BCEAA0;
      if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "sendControlOpCfm No pending reports", buf, 2u);
      }
    }
  }

  return sub_1000088CC(v36);
}

void sub_1006037F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100603878(void *a1, unsigned int a2, uint64_t a3)
{
  v3 = a3;
  v18 = a2;
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, (a1 + 43));
  v6 = a1[85];
  if (!v6)
  {
LABEL_6:
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_1008517FC();
    }

LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  while (1)
  {
    v7 = *(v6 + 16);
    if (v7 <= a2)
    {
      break;
    }

LABEL_5:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  if (v7 < a2)
  {
    ++v6;
    goto LABEL_5;
  }

  v10 = sub_1004D0684((a1 + 84), &v18);
  v11 = v10;
  if ((*(v10 + 9) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_10085171C();
    }

    goto LABEL_8;
  }

  if (v10[1])
  {
    v12 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v3;
      v20 = 1024;
      v21 = v18;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device already suspended with reason %d for handle 0x%x, do nothing", buf, 0xEu);
    }

    goto LABEL_29;
  }

  v13 = sub_10057E420(a1, v18);
  if (!sub_10053C854(v13))
  {
    goto LABEL_29;
  }

  v14 = qword_100BCEAA0;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v13, buf);
    v15 = v22 >= 0 ? buf : *buf;
    v16 = v3 > 3 ? "??" : off_100B01EC8[v3];
    *v23 = 136446466;
    v24 = v15;
    v25 = 2082;
    v26 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending SUSPEND command to device %{public}s due to reason %{public}s", v23, 0x16u);
    if (v22 < 0)
    {
      operator delete(*buf);
    }
  }

  v8 = sub_10021B6D0(v18, 3u, sub_100603B60);
  if (v8)
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_10085178C();
    }

LABEL_29:
    v8 = 0;
  }

  else
  {
    *(v11 + 8) = 1;
    *(v11 + 17) = 0;
  }

LABEL_9:
  sub_1000088CC(v17);
  return v8;
}

void sub_100603B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100603B60(int a1, int a2, uint64_t a3)
{
  if (qword_100B54398 != -1)
  {
    sub_1008518A0();
  }

  v6 = off_100B54390;

  return sub_10060332C(v6, a1, a2, a3);
}

uint64_t sub_100603BCC(void *a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  v23 = a2;
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, (a1 + 43));
  v6 = a1[85];
  if (!v6)
  {
LABEL_6:
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100851994();
    }

LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  while (1)
  {
    v7 = *(v6 + 16);
    if (v7 <= v4)
    {
      break;
    }

LABEL_5:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  if (v7 < v4)
  {
    ++v6;
    goto LABEL_5;
  }

  v10 = sub_1004D0684((a1 + 84), &v23);
  v11 = v10;
  if ((*(v10 + 9) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_1008518B4();
    }

    goto LABEL_8;
  }

  if (*(v10 + 8) != 1)
  {
    goto LABEL_24;
  }

  v12 = sub_10057E420(a1, v23);
  v13 = v12;
  if (!v12)
  {
    goto LABEL_8;
  }

  if (!sub_10053C854(v12))
  {
    goto LABEL_24;
  }

  v14 = qword_100BCEAA0;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = __p;
    sub_1000E5A58(v13, __p);
    if (v21 < 0)
    {
      v15 = __p[0];
    }

    v16 = sub_1006018C8(*(v11 + 17));
    v17 = sub_1006018C8(a3);
    *buf = 136446722;
    v25 = v15;
    v26 = 2082;
    v27 = v16;
    v28 = 2082;
    v29 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending EXIT_SUSPEND command to device %{public}s, reason %{public}s -> %{public}s", buf, 0x20u);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v18 = sub_10021B6D0(v23, 4u, sub_100603B60);
  v19 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v25) = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Exit Suspend returned status: %{bluetooth:OI_STATUS}u", buf, 8u);
  }

  if (v18)
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100851924();
    }

LABEL_24:
    v8 = 0;
  }

  else
  {
    *(v11 + 8) = 0;
    *(v11 + 17) = a3;
    v8 = 335;
  }

LABEL_9:
  sub_1000088CC(v22);
  return v8;
}

void sub_100603E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_100603E9C(uint64_t a1, unsigned int a2)
{
  v10 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 344);
  v4 = *(a1 + 680);
  if (!v4)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  while (1)
  {
    v5 = *(v4 + 16);
    if (v5 <= a2)
    {
      break;
    }

LABEL_5:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (v5 < a2)
  {
    ++v4;
    goto LABEL_5;
  }

  v6 = sub_1004D0684(a1 + 672, &v10);
  if (*(a1 + 658))
  {
    goto LABEL_8;
  }

  v7 = *(v6 + 17) == 2;
LABEL_9:
  sub_1000088CC(v9);
  return v7;
}

void sub_100603F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_100603F54(uint64_t a1, int a2)
{
  v7 = 0;
  sub_1000216B4(&v7);
  v4 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "Off";
    if (a2)
    {
      v5 = "On";
    }

    *buf = 136446210;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Screen state changed to %{public}s", buf, 0xCu);
  }

  *(a1 + 658) = a2;
  if (a2)
  {
    sub_100604070(a1, 1);
  }

  else
  {
    sub_100604194(a1, 1);
  }

  return sub_10002249C(&v7);
}

uint64_t sub_100604070(uint64_t a1, int a2)
{
  v16[0] = 0;
  v16[1] = 0;
  v4 = sub_100007F88(v16, a1 + 344);
  v6 = *(a1 + 672);
  if (v6 != (a1 + 680))
  {
    do
    {
      v7 = *(v6 + 16);
      v8 = sub_100017F4C(v4, v5);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100605D18;
      v13[3] = &unk_100AF9DB0;
      v13[4] = a1;
      v15 = v7;
      v14 = a2;
      sub_10000CA94(v8, v13);
      v9 = v6[1];
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
          v10 = v6[2];
          v11 = *v10 == v6;
          v6 = v10;
        }

        while (!v11);
      }

      v6 = v10;
    }

    while (v10 != (a1 + 680));
  }

  sub_1000088CC(v16);
  return 1;
}

void sub_100604180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100604194(void *a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, (a1 + 43));
  v4 = a1[84];
  if (v4 != a1 + 85)
  {
    do
    {
      sub_100603878(a1, *(v4 + 16), a2);
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
    }

    while (v6 != a1 + 85);
  }

  sub_1000088CC(v9);
  return 1;
}

uint64_t sub_100604258(uint64_t a1)
{
  v5 = 0;
  sub_1000216B4(&v5);
  v2 = qword_100BCEAA0;
  if (*(a1 + 658))
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100851A08();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "System can sleep and screen state is off, suspending HID", v4, 2u);
    }

    sub_100604194(a1, 2);
  }

  sub_10002249C(&v5);
  return 1;
}

void sub_10060433C(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006043CC;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_async(v2, block);
}

uint64_t sub_1006043CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v35[0] = 0;
  v35[1] = 0;
  sub_100007F88(v35, v1 + 344);
  v2 = *(v1 + 672);
  if (v2 != (v1 + 680))
  {
    do
    {
      v3 = *(v2 + 32);
      v4 = sub_10000E92C();
      if (((*(*v4 + 8))(v4) & 1) != 0 || (v5 = sub_10000E92C(), (*(*v5 + 488))(v5)))
      {
        v6 = sub_1000ABB80(v3);
        v8 = sub_10000F034(v6, v7);
        v9 = (*(*v8 + 592))(v8, v6, v3);
        if ((byte_100B6F790 & 1) == 0)
        {
          v11 = sub_10000C7D0(v9, v10);
          if ((*(*v11 + 1032))(v11, v3, 1, 0))
          {
            v12 = qword_100BCEAA0;
            if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
            {
              LODWORD(__p[0]) = 67109120;
              HIDWORD(__p[0]) = v3;
              _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to disable HID Latency Statistics for connection handle 0x%02x", __p, 8u);
            }
          }
        }
      }

      v13 = sub_10000E92C();
      if (((*(*v13 + 8))(v13) & 1) == 0)
      {
        v14 = sub_10000E92C();
        if (!(*(*v14 + 480))(v14))
        {
          goto LABEL_32;
        }
      }

      v15 = sub_1000ABB80(v3);
      if (!v15)
      {
        goto LABEL_32;
      }

      v16 = sub_100255A78(v15);
      if (qword_100B508F0 != -1)
      {
        sub_100851A44();
      }

      v17 = *v16;
      WORD2(__p[0]) = *(v16 + 4);
      LODWORD(__p[0]) = v17;
      v18 = sub_1000E6554(off_100B508E8, __p, 1);
      v19 = qword_100BCEAA0;
      if (v18)
      {
        v20 = qword_100BCEAA0;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(v18, __p);
          v21 = __p;
          if (v37 < 0)
          {
            v21 = __p[0];
          }

          *buf = 136446210;
          v39 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "PowerManagementEventSystemWillSleep: device %{public}s", buf, 0xCu);
          if (v37 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v22 = sub_1000295DC(v18);
        v23 = qword_100BCEAA0;
        v24 = os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT);
        if (v22)
        {
          if (v24)
          {
            LODWORD(__p[0]) = 67109120;
            HIDWORD(__p[0]) = v3;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Disabling phy stats for HCI LM Handle 0x%02X", __p, 8u);
          }

          v26 = sub_10000C7D0(v24, v25);
          (*(*v26 + 320))(v26, 0, 1, (v18[128] << 40) | (v18[129] << 32) | (v18[130] << 24) | (v18[131] << 16) | (v18[132] << 8) | v18[133], 1);
          v18[1178] = 0;
          v27 = qword_100BCEAA0;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            if (qword_100B508F0 != -1)
            {
              sub_100851A44();
            }

            v28 = sub_10056D550(off_100B508E8);
            LODWORD(__p[0]) = 67109120;
            HIDWORD(__p[0]) = v28;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "disablePhyStats, current number of devices %d", __p, 8u);
          }

          goto LABEL_32;
        }

        if (v24)
        {
          LOWORD(__p[0]) = 0;
          v29 = v23;
          v30 = "disablePhyStats: device is not paired!!!";
          goto LABEL_31;
        }
      }

      else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        v29 = v19;
        v30 = "PowerManagementEventSystemWillSleep: device is NULL";
LABEL_31:
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v30, __p, 2u);
      }

LABEL_32:
      v31 = v2[1];
      if (v31)
      {
        do
        {
          v32 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          v32 = v2[2];
          v33 = *v32 == v2;
          v2 = v32;
        }

        while (!v33);
      }

      v2 = v32;
    }

    while (v32 != (v1 + 680));
  }

  return sub_1000088CC(v35);
}

void sub_1006048C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100604914(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006049A4;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_async(v2, block);
}

uint64_t sub_1006049A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v42[0] = 0;
  v42[1] = 0;
  sub_100007F88(v42, v1 + 344);
  __p = 0;
  v40 = 0;
  v41 = 0;
  v2 = *(v1 + 672);
  v3 = (v1 + 680);
  if (v2 != (v1 + 680))
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 16);
      if (v4 >= v41)
      {
        v6 = (v4 - __p) >> 2;
        if ((v6 + 1) >> 62)
        {
          sub_1000C7698();
        }

        v7 = (v41 - __p) >> 1;
        if (v7 <= v6 + 1)
        {
          v7 = v6 + 1;
        }

        if (v41 - __p >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v8 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v8 = v7;
        }

        if (v8)
        {
          sub_10036F560(&__p, v8);
        }

        v9 = (4 * v6);
        *v9 = v5;
        v4 = (4 * v6 + 4);
        v10 = v9 - (v40 - __p);
        memcpy(v10, __p, v40 - __p);
        v11 = __p;
        __p = v10;
        v40 = v4;
        v41 = 0;
        if (v11)
        {
          operator delete(v11);
        }
      }

      else
      {
        *v4 = v5;
        v4 += 4;
      }

      v40 = v4;
      v12 = v2[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v2[2];
          v14 = *v13 == v2;
          v2 = v13;
        }

        while (!v14);
      }

      v2 = v13;
    }

    while (v13 != v3);
  }

  sub_10000801C(v42);
  v15 = __p;
  if (__p != v40)
  {
    do
    {
      v16 = sub_10000E92C();
      if (((*(*v16 + 8))(v16) & 1) != 0 || (v17 = sub_10000E92C(), (*(*v17 + 488))(v17)))
      {
        v18 = sub_1000ABB80(*v15);
        v20 = v18;
        if (v18)
        {
          v21 = v15[1];
          v22 = sub_10000F034(v18, v19);
          v23 = (*(*v22 + 576))(v22, *v15, v20, 1, v21);
          if ((byte_100B6F790 & 1) == 0)
          {
            v25 = sub_10000C7D0(v23, v24);
            if ((*(*v25 + 1032))(v25, *v15, 1, 1))
            {
              v26 = qword_100BCEAA0;
              if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
              {
                v37 = *v15;
                *v43 = 67109120;
                *&v43[4] = v37;
                _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to enable HID Latency Statistics for connection handle 0x%02x", v43, 8u);
              }
            }
          }
        }
      }

      v27 = sub_10000E92C();
      if (((*(*v27 + 8))(v27) & 1) != 0 || (v28 = sub_10000E92C(), (*(*v28 + 480))(v28)))
      {
        v29 = sub_1000ABB80(*v15);
        if (v29)
        {
          v30 = sub_100255A78(v29);
          if (qword_100B508F0 != -1)
          {
            sub_100851A44();
          }

          v31 = *v30;
          *&v43[4] = *(v30 + 4);
          *v43 = v31;
          v32 = sub_1000E6554(off_100B508E8, v43, 1);
          v33 = qword_100BCEAA0;
          if (v32)
          {
            v34 = qword_100BCEAA0;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(v32, v43);
              v35 = v43;
              if (v44 < 0)
              {
                v35 = *v43;
              }

              *buf = 136446210;
              v46 = v35;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "PowerManagementEventSystemWillSleep: device %{public}s", buf, 0xCu);
              if (v44 < 0)
              {
                operator delete(*v43);
              }
            }

            sub_100604E9C(v36, v32);
          }

          else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
          {
            *v43 = 0;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "PowerManagementEventSystemWillSleep: device is NULL", v43, 2u);
          }
        }
      }

      v15 += 2;
    }

    while (v15 != v40);
    v15 = __p;
  }

  if (v15)
  {
    v40 = v15;
    operator delete(v15);
  }

  return sub_1000088CC(v42);
}

void sub_100604E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100604E9C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C7D0(a1, a2);
  v5 = sub_100413560(v3, v4);
  v6 = v5;
  v8 = sub_10000C7D0(v5, v7);
  if (sub_1000ABD54(v8) && v6)
  {
    if (qword_100B508F0 != -1)
    {
      sub_100851A6C();
    }

    v9 = sub_10056D550(off_100B508E8);
    v10 = qword_100BCEAA0;
    v11 = os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT);
    if (v9 >= v6)
    {
      if (v11)
      {
        *buf = 67109376;
        v15 = v9;
        v16 = 1024;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Max HID GCs reached, not adding current %d max %d", buf, 0xEu);
      }
    }

    else
    {
      if (v11)
      {
        *buf = 67109376;
        v15 = v9;
        v16 = 1024;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "HID GCs connected, enabling stat, current number of devices %d max %d", buf, 0xEu);
      }

      v12 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10060D634;
      block[3] = &unk_100ADF8F8;
      block[4] = a2;
      dispatch_async(v12, block);
    }
  }
}

uint64_t sub_100605058(void *a1, unint64_t a2)
{
  result = sub_10057E30C(a1, a2);
  v7 = result;
  if (result)
  {
    v6[0] = 0;
    v6[1] = 0;
    sub_100007F88(v6, (a1 + 43));
    v5 = sub_1004D0684((a1 + 84), &v7);
    (*(**v5 + 24))(*v5, a2);
    return sub_1000088CC(v6);
  }

  return result;
}

void sub_1006050E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006050F4(uint64_t a1, unsigned __int16 a2, uint64_t a3, unsigned int a4)
{
  v10 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 344);
  v7 = sub_1004D0684(a1 + 672, &v10);
  sub_1006051B0(a1);
  (*(**v7 + 64))(*v7, a3, a4);
  sub_100605240(a1);
  return sub_1000088CC(v9);
}

void sub_100605198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1006051B0(uint64_t a1)
{
  if (IsAppleInternalBuild())
  {
    v2 = *(a1 + 512);
    v3 = v2;
    v4 = *(a1 + 528);
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "HIDInterruptData", "", v5, 2u);
    }
  }
}

void sub_100605240(uint64_t a1)
{
  if (IsAppleInternalBuild())
  {
    v2 = *(a1 + 512);
    v3 = v2;
    v4 = *(a1 + 528);
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "HIDInterruptData", "", v5, 2u);
    }
  }
}

_BYTE *sub_1006052D0(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  sub_1000216B4(&v12);
  v3 = sub_1002192EC(a2);
  v4 = v3;
  if (v3)
  {
    if (*(v3 + 76))
    {
      v5 = qword_100BCEAA0;
      if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(v4 + 77);
        v7 = *(v4 + 76);
        *buf = 67109376;
        v14 = v6;
        v15 = 1024;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Could not send pending control channel operation 0x%x due to pending operation 0x%x", buf, 0xEu);
      }
    }

    else
    {
      v8 = (v3 + 77);
      if (*(v3 + 77) == 5)
      {
        v9 = qword_100BCEAA0;
        if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *v8;
          *buf = 67109376;
          v14 = a2;
          v15 = 1024;
          v16 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending pending control virtual cable unpluged for handle 0x%x, queued operation 0x%x", buf, 0xEu);
        }

        if (sub_10021B6D0(a2, 5u, sub_100603B60))
        {
          if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
          {
            sub_100851A80();
          }
        }

        else
        {
          *v8 &= 0xFAu;
        }
      }
    }
  }

  return sub_10002249C(&v12);
}

uint64_t sub_1006054A8(uint64_t a1, unsigned __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v14 = a2;
  v10 = sub_1004D0684(a1 + 672, &v14);
  v11 = qword_100BCEAA0;
  v12 = os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    *buf = 67109376;
    v16 = v14;
    v17 = 1024;
    v18 = a3;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "getReportResponse for handle 0x%x success %d", buf, 0xEu);
  }

  sub_1006052D0(v12, v14);
  return (*(**v10 + 72))(*v10, a3, a4, a5, a6);
}

uint64_t sub_1006055CC(uint64_t a1, unsigned __int16 a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  v6 = sub_1004D0684(a1 + 672, &v11);
  v7 = qword_100BCEAA0;
  v8 = os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    *buf = 67109376;
    v13 = v11;
    v14 = 1024;
    v15 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setReportResponse for handle 0x%x success %d", buf, 0xEu);
  }

  if (*(v6 + 9))
  {
    sub_1006052D0(v8, v11);
    return (*(**v6 + 80))(*v6, a3, a4);
  }

  else
  {
    v10 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v13 = a3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device start pending on setReportResponse - starting device with status %d", buf, 8u);
    }

    *(v6 + 9) = 1;
    return (*(**v6 + 32))();
  }
}

uint64_t sub_100605764(uint64_t a1, int a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 344);
  v4 = *(a1 + 672);
  if (v4 == (a1 + 680))
  {
LABEL_9:
    v8 = 0;
  }

  else
  {
    while (*(v4 + 32) != a2)
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
      if (v6 == (a1 + 680))
      {
        goto LABEL_9;
      }
    }

    v8 = *(v4 + 16);
  }

  sub_1000088CC(v10);
  return v8;
}

uint64_t sub_10060580C(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 344);
  v4 = *(a1 + 672);
  if (v4 == (a1 + 680))
  {
LABEL_9:
    v8 = 0;
  }

  else
  {
    while (v4[5] != a2)
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
      if (v6 == (a1 + 680))
      {
        goto LABEL_9;
      }
    }

    v8 = *(v4 + 16);
  }

  sub_1000088CC(v10);
  return v8;
}

uint64_t sub_1006058B4(void *a1, uint64_t a2, unsigned __int16 a3)
{
  v26 = a3;
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, (a1 + 43));
  v5 = sub_1004D0684((a1 + 84), &v26);
  if (!sub_10053C3E8(a2))
  {
    v6 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_FAULT))
    {
      sub_100851B04(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = qword_100BCEAA0;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000DEEA4(a2, &__p);
    v15 = v24 >= 0 ? &__p : __p;
    *buf = 136446210;
    *&buf[4] = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Performing HID handshake for device %{public}s", buf, 0xCu);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p);
    }
  }

  if ((sub_10002223C() & 1) != 0 || (*(**v5 + 16))(*v5, a2))
  {
    *buf = xmmword_1008AA820;
    __p = 0;
    v23 = 0;
    v24 = 0;
    if (!sub_10053BFB4(a2, buf, 0x20Eu, &__p))
    {
      goto LABEL_24;
    }

    v17 = __p;
    v16 = v23;
    v18 = v23 - __p == 16 && (*(__p + 1) == 1) & *(__p + 8);
    while (v17 != v16)
    {
      v21 = *v17;
      sub_10037D4F4(&v21);
      ++v17;
      v16 = v23;
    }

    if (v18)
    {
      v19 = sub_10021BCBC(v26, 1);
      if (v19)
      {
        if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
        {
          sub_100851B7C();
        }

        v19 = 1;
      }
    }

    else
    {
LABEL_24:
      sub_100605B68(a1, v26);
      v19 = 0;
    }

    if (__p)
    {
      v23 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v19 = 1;
  }

  sub_1000088CC(v25);
  return v19;
}

void sub_100605B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100605B68(void *a1, uint64_t a2)
{
  v2 = a2;
  v13 = a2;
  v4 = sub_10057E420(a1, a2);
  if (sub_10053C974(v4) && (sub_10053C984(v4) & 1) == 0 && sub_10053C990(v4))
  {
    if (sub_10053C968(v4))
    {
      v5 = qword_100BCEAA0;
      v6 = os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        LOWORD(v10[0]) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Delaying setting sniff rate for 250ms", v10, 2u);
      }

      v8 = sub_100017F4C(v6, v7);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100608A84;
      v11[3] = &unk_100AEB940;
      v11[4] = a1;
      v12 = v2;
      sub_10008E008(v8, 250, v11);
    }

    else
    {
      sub_100608020(a1, v2);

      sub_100850FB0(a1, v2);
    }
  }

  else
  {
    v10[0] = 0;
    v10[1] = 0;
    sub_100007F88(v10, (a1 + 43));
    v9 = sub_1004D0684((a1 + 84), &v13);
    *(v9 + 9) = 1;
    (*(**v9 + 32))(*v9);
    sub_1000088CC(v10);
  }
}

_BYTE *sub_100605D18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = 0;
  sub_1000216B4(&v4);
  sub_100603BCC(v2, *(a1 + 44), *(a1 + 40));
  return sub_10002249C(&v4);
}

uint64_t sub_100605D7C(uint64_t a1, unint64_t a2, int a3, int a4, char a5)
{
  v10 = sub_10057DFAC(a1, a2);
  if (a4)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  if ((v11 & 1) == 0)
  {
    v12 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Denying connection attempt", __p, 2u);
    }
  }

  v13 = sub_10053CB38(a2);
  if (v13)
  {
    v14 = qword_100BCEAA0;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v15 = v23 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Accepting connection from device %{public}s using Type S connection policy", buf, 0xCu);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    result = sub_10021B6C8(a3, &off_100B01C88, &unk_100B01CA8, v11);
  }

  else if (sub_100602D24(v13, a2) && sub_10053C974(a2))
  {
    v17 = qword_100BCEAA0;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v18 = v23 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v25 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Accepting connection from device %{public}s using Apple Mouse/TP connection policy", buf, 0xCu);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    result = sub_10021B6C8(a3, &off_100B01C88, &unk_100B54C18, v11);
  }

  else
  {
    v19 = qword_100BCEAA0;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v20 = v23 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v25 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Accepting connection from device %{public}s using default connection policy", buf, 0xCu);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    result = sub_10021B6C8(a3, &off_100B01C88, 0, v11);
  }

  v21 = v11 ^ 1;
  if (result)
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0)
  {
    result = sub_10057E218(a1, a2, a3);
    if ((a5 & 1) == 0)
    {
      sub_10057D9B0(a1, a2, 1);
    }
  }

  return result;
}

uint64_t sub_1006060B4(uint64_t a1, uint64_t a2, int a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_100851A6C();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v6 = sub_1000E6554(off_100B508E8, __p, 1);
  v7 = qword_100BCEAA0;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v6, __p);
    v8 = v15 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received incoming connection attempt from HID device %{public}s", buf, 0xCu);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (!sub_10053C3E8(v6))
  {
    if (sub_10057E1F0(a1))
    {
      v10 = qword_100BCEAA0;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v6, __p);
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
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Outgoing attempt already exists, withdraw outgoing attempt for device %{public}s", buf, 0xCu);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_10057DA84(a1, v6, 314);
    }

    v12 = qword_100BCEAA0;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v6, __p);
      v13 = v15 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Delaying response to incoming HID connection request for device %{public}s as SDP is missing", buf, 0xCu);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (qword_100B54670 != -1)
    {
      sub_100851BEC();
    }

    sub_100587D6C(qword_100B54668, v6, a1 + 264, 1, 2);
  }

  return sub_100605D7C(a1, v6, a3, 0, 0);
}

void sub_100606394(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v12 = a2;
  v6 = sub_10057E420(a1, a2);
  if (v6)
  {
    v7 = v6;
    v8 = qword_100BCEAA0;
    v9 = v8;
    if (a3)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v7, buf);
        sub_100851C14();
      }

      if (qword_100B50AA0 != -1)
      {
        sub_100851C64();
      }

      v10 = sub_1000DD584(off_100B50A98, a3, 20000);
      sub_10057DA84(a1, v7, v10);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v7, v18);
      v11 = v19 >= 0 ? v18 : *v18;
      *buf = 67109634;
      *&buf[4] = v4;
      v14 = 2082;
      v15 = v11;
      v16 = 1024;
      v17 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "HID connection on handle 0x%x for device %{public}s with status %d", buf, 0x18u);
      if (v19 < 0)
      {
        operator delete(*v18);
      }
    }

    sub_10057DA84(a1, v7, 0);
  }

  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_100851D60();
  }
}

void sub_100607008(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (sub_1000DEB14(a2) == 26)
    {
      if (qword_100B54C90 != -1)
      {
        sub_100851E7C();
      }

      v3 = qword_100B54C88;

      sub_1005CD824(v3, a2, 1);
    }

    else
    {
      sub_100851DD4();
    }
  }

  else
  {
    sub_100851E90();
  }
}

void sub_10060708C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Overriding connection packet type to single slot", v11, 2u);
  }

  if (sub_10024DD74(a3, 13080, v5, v6, v7, v8, v9, v10))
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100851F24();
    }
  }
}

uint64_t sub_100607138(uint64_t a1)
{
  v2 = qword_100BCEAA0;
  v3 = os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    v5 = *(a1 + 40);
    v12 = 136315394;
    v13 = "connectionCallback_block_invoke";
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s -- Enable HID Latency Statistics event for connection handle 0x%02x", &v12, 0x12u);
  }

  v6 = sub_10000C7D0(v3, v4);
  result = (*(*v6 + 1032))(v6, *(a1 + 40), 1, 1);
  if (result)
  {
    v8 = os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      sub_100851F94();
    }

    result = sub_10000F034(v8, v9);
    if (result)
    {
      v11 = sub_10000F034(result, v10);
      return (*(*v11 + 568))(v11, *(a1 + 32), *(a1 + 40));
    }
  }

  return result;
}

uint64_t sub_1006072AC(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 3992);

  return v2();
}

void sub_100607310(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting active mode check timer", buf, 2u);
  }

  v5 = dispatch_time(0, 6000000000);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10060AC24;
  v6[3] = &unk_100AE0860;
  v6[4] = a1;
  v6[5] = a2;
  dispatch_after(v5, &_dispatch_main_q, v6);
}

void sub_1006073FC(uint64_t a1)
{
  v2 = qword_100BCEAA0;
  v3 = os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Evaluating Low Latency Gaming Topology", buf, 2u);
  }

  v47 = a1;
  if (*(a1 + 659) == 1)
  {
    *buf = 0;
    v56 = 0;
    v57 = 0;
    v54[0] = 0;
    v54[1] = 0;
    sub_100007F88(v54, a1 + 344);
    v4 = *(a1 + 672);
    v5 = (a1 + 680);
    if (v4 != (a1 + 680))
    {
      v6 = v56;
      do
      {
        if (v6 >= v57)
        {
          v7 = *buf;
          v8 = v6 - *buf;
          v9 = (v6 - *buf) >> 1;
          if (v9 <= -2)
          {
            sub_1000C7698();
          }

          if (v57 - *buf <= v9 + 1)
          {
            v10 = v9 + 1;
          }

          else
          {
            v10 = v57 - *buf;
          }

          if (v57 - *buf >= 0x7FFFFFFFFFFFFFFELL)
          {
            v11 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v11 = v10;
          }

          if (v11)
          {
            sub_1003705C4(buf, v11);
          }

          v12 = (v6 - *buf) >> 1;
          v13 = (2 * v9);
          v14 = (2 * v9 - 2 * v12);
          *v13 = *(v4 + 16);
          v6 = v13 + 1;
          memcpy(v14, v7, v8);
          v15 = *buf;
          *buf = v14;
          v56 = v6;
          v57 = 0;
          if (v15)
          {
            operator delete(v15);
          }

          a1 = v47;
        }

        else
        {
          *v6++ = *(v4 + 16);
        }

        v56 = v6;
        v16 = v4[1];
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = v4[2];
            v18 = *v17 == v4;
            v4 = v17;
          }

          while (!v18);
        }

        v4 = v17;
      }

      while (v17 != v5);
    }

    sub_10000801C(v54);
    v19 = *buf;
    v20 = v56;
    if (*buf == v56)
    {
      v48 = 0;
      v21 = 0;
    }

    else
    {
      v21 = 0;
      v48 = 0;
      do
      {
        v22 = sub_10057E420(a1, *v19);
        v23 = v22;
        if (v22 && sub_1000DEB14(v22) == 26)
        {
          v24 = sub_10053C8DC(v23);
          ++v21;
          v25 = v48;
          if (v24)
          {
            v25 = v23;
          }

          v48 = v25;
        }

        ++v19;
      }

      while (v19 != v20);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    if (qword_100B508B0 != -1)
    {
      sub_100852018();
    }

    sub_100029630(off_100B508A8);
    v30 = v29 = v48;
    v31 = [v30 countByEnumeratingWithState:&v50 objects:v60 count:16];
    v32 = v31;
    if (v31)
    {
      v49 = 0;
      v33 = 0;
      v34 = *v51;
      do
      {
        v35 = 0;
        do
        {
          if (*v51 != v34)
          {
            objc_enumerationMutation(v30);
          }

          v36 = *(*(&v50 + 1) + 8 * v35);
          if (sub_10060AEB0(v31, v36))
          {
            ++v21;
            if (!v29)
            {
              v37 = v36;

              v49 = v37;
              v29 = v48;
            }
          }

          if (qword_100B508D0 != -1)
          {
            sub_100852040();
            v29 = v48;
          }

          v31 = sub_10078DEFC(off_100B508C8, v36);
          v33 += v31;
          ++v35;
        }

        while (v32 != v35);
        v31 = [v30 countByEnumeratingWithState:&v50 objects:v60 count:16];
        v32 = v31;
      }

      while (v31);
    }

    else
    {
      v49 = 0;
      v33 = 0;
    }

    if (qword_100B508D0 != -1)
    {
      sub_100852040();
    }

    v38 = sub_10079162C(off_100B508C8);
    v39 = v33 - v21 - v38 + ((v56 - *buf) >> 1);
    if (v21 != 1)
    {
      v40 = qword_100BCEAA0;
      if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
      {
        *v58 = 67109120;
        v59 = v21;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Low Latency Gaming not eligible, due to %d connected game controllers", v58, 8u);
      }
    }

    if (v39 >= 3u)
    {
      v41 = qword_100BCEAA0;
      if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
      {
        *v58 = 67109120;
        v59 = v39;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Low Latency Gaming not eligible, due to %d non-GC HIDs", v58, 8u);
      }

      v42 = v49;
      if (!v48)
      {
LABEL_73:
        if (!v42)
        {
          goto LABEL_76;
        }

        goto LABEL_74;
      }

LABEL_72:
      *(v47 + 660) = 0;
      sub_10060C2E0(v47, v48, 0);
      goto LABEL_73;
    }

    v42 = v49;
    if (v48)
    {
      if (v21 != 1)
      {
        goto LABEL_72;
      }

      *(v47 + 660) = sub_10057E30C(v47, v48);
      sub_10060C2E0(v47, v48, 1);
    }

    if (!v49)
    {
      goto LABEL_76;
    }

    if (v21 == 1)
    {
      v43 = v49;
      v44 = *(v47 + 664);
      *(v47 + 664) = v43;
      v45 = 1;
LABEL_75:

      v42 = v49;
      sub_10060C588(v46, v49, v45);
LABEL_76:

      sub_1000088CC(v54);
      if (*buf)
      {
        v56 = *buf;
        operator delete(*buf);
      }

      return;
    }

LABEL_74:
    v45 = 0;
    v44 = *(v47 + 664);
    *(v47 + 664) = 0;
    goto LABEL_75;
  }

  if (*(a1 + 660))
  {
    v26 = sub_10057E420(a1, *(a1 + 660));
    sub_10060C2E0(a1, v26, 0);
    *(a1 + 660) = 0;
  }

  else
  {
    v27 = *(a1 + 664);
    if (v27)
    {
      sub_10060C588(v3, v27, 0);
      v28 = *(a1 + 664);
      *(a1 + 664) = 0;
    }
  }
}

void sub_10060796C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  sub_1000088CC(&a21);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1006079F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = sub_10000C7D0(a1, a2);
  (*(*v4 + 1056))(v4, *(a1 + 40) + 128, 1, 1);

  return sub_100607A68(v3);
}

void *sub_100607A68(os_unfair_lock_s *a1)
{
  v47 = &v47;
  v48 = &v47;
  v49 = 0;
  v46[0] = 0;
  v46[1] = 0;
  sub_100007F88(v46, &a1[86]);
  if (*&a1[168]._os_unfair_lock_opaque != &a1[170])
  {
    operator new();
  }

  sub_10000801C(v46);
  v2 = v48;
  if (v48 == &v47)
  {
    v4 = 0;
    v31 = 0;
    v3 = 0;
    v25 = 0;
    v28 = 0;
    v29 = 1;
  }

  else
  {
    v25 = 0;
    v3 = 0;
    v31 = 0;
    v4 = 0;
    v28 = 0;
    v29 = 1;
    do
    {
      v5 = sub_10057E420(a1, *(v2 + 8));
      v6 = v5;
      if (v5)
      {
        v7 = sub_1000E35FC(v5);
        switch(v7)
        {
          case 12:
            ++v28;
            break;
          case 18:
            ++v3;
            break;
          case 24:
            ++v4;
            break;
        }

        v8 = sub_10053C86C(v6);
        v9 = sub_1000E35FC(v6);
        ++v25;
        v31 += v8;
        if (((24576 * v9) | ((-21845 * v9) >> 3)) >= 0xAABu && !sub_10053C86C(v6) || (v10 = sub_1000E35FC(v6), ((24576 * v10) | ((-21845 * v10) >> 3)) >= 0xAABu) && sub_1000E35FC(v6) != 12 && sub_10053C86C(v6))
        {
          v29 = 0;
        }
      }

      v2 = v2[1];
    }

    while (v2 != &v47);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  if (qword_100B508B0 != -1)
  {
    sub_100852018();
  }

  obj = sub_100029630(off_100B508A8);
  v11 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
  v26 = v3;
  v27 = v4;
  v24 = a1;
  v12 = 0;
  if (v11)
  {
    v13 = *v43;
    do
    {
      v14 = 0;
      do
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v42 + 1) + 8 * v14);
        if (qword_100B508D0 != -1)
        {
          sub_100852040();
        }

        if (sub_10078DEFC(off_100B508C8, v15))
        {
          if (qword_100B508B0 != -1)
          {
            sub_100852018();
          }

          v16 = off_100B508A8;
          sub_10004DFB4(v51, v15);
          v17 = sub_10074F2BC(v16, v51);
          switch(v17)
          {
            case 6:
              ++v28;
              break;
            case 9:
              ++v26;
              break;
            case 12:
              ++v27;
              break;
          }

          if (qword_100B508D0 != -1)
          {
            sub_100852040();
          }

          v18 = off_100B508C8;
          sub_100007E30(__p, "IsBLEGameController");
          v19 = sub_10004EB40(v18, v15, __p);
          if (v41 < 0)
          {
            operator delete(__p[0]);
          }

          if (qword_100B508B0 != -1)
          {
            sub_100852018();
          }

          v20 = off_100B508A8;
          sub_10004DFB4(v51, v15);
          ++v12;
          v31 += v19;
          if (sub_10074F2BC(v20, v51) != 6)
          {
            if (qword_100B508B0 != -1)
            {
              sub_100852018();
            }

            v21 = off_100B508A8;
            sub_10004DFB4(v50, v15);
            v22 = sub_10074F2BC(v21, v50);
            v29 &= (((((-21845 * v22) & 0xFFF8u) >> 2) | (-16384 * v22)) >> 1) < 0xAABu;
          }
        }

        v14 = v14 + 1;
      }

      while (v11 != v14);
      v11 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
    }

    while (v11);
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10060B4CC;
  v32[3] = &unk_100B01CD8;
  v33 = v25;
  v34 = v12;
  v35 = v31;
  v36 = v28;
  v37 = v26;
  v38 = v27;
  v39 = v29 & 1;
  sub_10060B400(v24 + 102, v32);
  sub_1000088CC(v46);
  return sub_100028EB4(&v47);
}

void sub_100607FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  sub_1000088CC(&a35);
  sub_100028EB4(&a37);
  _Unwind_Resume(a1);
}

uint64_t sub_100608020(void *a1, unsigned __int16 a2)
{
  v23 = a2;
  v3 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Attempting to force HID sniff rate", buf, 2u);
  }

  *buf = 0;
  v22 = 0;
  sub_100007F88(buf, (a1 + 43));
  v20 = 32;
  v19 = 35127750;
  for (i = a1[85]; i; i = *i)
  {
    v5 = *(i + 16);
    if (v23 >= v5)
    {
      if (v5 >= v23)
      {
        sub_1004D0684((a1 + 84), &v23);
        operator new[]();
      }

      ++i;
    }
  }

  sub_10000801C(buf);
  sub_10021BC0C(v23, 3, &v19, 5uLL);
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_100852068();
  }

  v6 = sub_10057E420(a1, v23);
  v7 = v6;
  if (v6)
  {
    if (sub_100602D24(v6, v6))
    {
      v8 = sub_10053C974(v7);
      if (v8)
      {
        v10 = sub_100017F4C(v8, v9);
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_1006083A8;
        v18[3] = &unk_100AE0860;
        v18[4] = a1;
        v18[5] = v7;
        sub_10000CA94(v10, v18);
      }
    }
  }

  sub_100007FB8(buf);
  v11 = a1[85];
  if (!v11)
  {
    goto LABEL_30;
  }

  v12 = a1 + 85;
  do
  {
    v13 = *(v11 + 32);
    v14 = v13 >= v23;
    v15 = v13 < v23;
    if (v14)
    {
      v12 = v11;
    }

    v11 = *(v11 + 8 * v15);
  }

  while (v11);
  if (v12 != a1 + 85 && v23 >= *(v12 + 16))
  {
    v16 = sub_1004D0684((a1 + 84), &v23);
    *(v16 + 9) = 1;
    (*(**v16 + 32))(*v16);
  }

  else
  {
LABEL_30:
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_1008520D8();
    }
  }

  return sub_1000088CC(buf);
}

void sub_100608348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_1006083B8(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v18 = 0;
  v17 = 0;
  sub_1000216B4(&v17);
  sub_1003057B4(a2, &v17 + 1, &v18);
  v5 = qword_100BCEAA0;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_100777574((*a2 << 40) | (a2[1] << 32) | (a2[2] << 24) | (a2[3] << 16) | (a2[4] << 8) | a2[5]);
    v6 = v16 >= 0 ? __p : __p[0];
    *buf = 136315650;
    v20 = "updateLinkPolicyForHID";
    v21 = 2082;
    v22 = v6;
    v23 = 1024;
    v24 = v18;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s -- Link policy for %{public}s is 0x%x", buf, 0x1Cu);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v7 = v18 & 0xFFFB;
  if (a3)
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  v18 = v7 | v8;
  v9 = sub_100246F98(sub_10060C774, a2, SHIBYTE(v17), v7 | v8, 0);
  v10 = qword_100BCEAA0;
  if (v9)
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v20 = "updateLinkPolicyForHID";
      v21 = 1024;
      LODWORD(v22) = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s -- OI_DEVMGR_EnforceLinkPolicy failed 0x%x", buf, 0x12u);
    }
  }

  else
  {
    v11 = qword_100BCEAA0;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sub_100777574((*a2 << 40) | (a2[1] << 32) | (a2[2] << 24) | (a2[3] << 16) | (a2[4] << 8) | a2[5]);
      v12 = v16 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v20 = "updateLinkPolicyForHID";
      v21 = 2082;
      v22 = v12;
      v23 = 1024;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s -- OI_DEVMGR_EnforceLinkPolicy for %{public}s sets to 0x%x", buf, 0x1Cu);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (a3)
  {
    v13 = 0;
  }

  else
  {
    v13 = 3;
  }

  sub_1003058F8(a2, v13);
  return sub_10002249C(&v17);
}

void sub_1006086F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000C798(a1, a2);
  v6 = (*(*v5 + 352))(v5);
  if (!v6 || (v6 = _os_feature_enabled_impl(), (v6 & 1) == 0))
  {
    v8 = sub_10000C798(v6, v7);
    if (((*(*v8 + 416))(v8) & 1) == 0)
    {
      sub_100852114();
      return;
    }
  }

  v10 = CFPreferencesCopyValue(@"enableSpecialSniffTransitions", @"com.apple.Bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
      goto LABEL_10;
    }

    v11 = [v10 BOOLValue];
  }

  else
  {
    v12 = sub_10000C7D0(0, v9);
    v11 = (*(*v12 + 3120))(v12);
  }

  v13 = v11;
LABEL_10:
  if (qword_100B508F0 != -1)
  {
    sub_100851A6C();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v14 = sub_1000E6554(off_100B508E8, __p, 1);
  v15 = v14;
  if (v14 && (sub_10053C95C(v14) & v13) == 1)
  {
    v16 = qword_100BCEAA0;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(v15, __p);
      v17 = v25 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Sending Special Sniff Mode Enable for device: %s", buf, 0xCu);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v23 = 0;
    sub_1000216B4(&v23);
    v18 = sub_1000E1FE8(a2);
    sub_100022214(&v23);
    v19 = sub_1000B8B5C(v18);
    if (v19)
    {
      v21 = sub_10000C7D0(v19, v20);
      if ((*(*v21 + 3952))(v21, v18, a3))
      {
        if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
        {
          sub_100852204();
        }
      }
    }

    else
    {
      v22 = qword_100BCEAA0;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000C23E0(v15, __p);
        sub_1008521A8();
      }
    }

    sub_10002249C(&v23);
  }
}

void sub_100608A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12)
{
  sub_10002249C(&a12);

  _Unwind_Resume(a1);
}

_BYTE *sub_100608A84(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = 0;
  sub_1000216B4(&v4);
  sub_100608020(v2, *(a1 + 40));
  sub_100850FB0(v2, *(a1 + 40));
  return sub_10002249C(&v4);
}

uint64_t sub_100608AF0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = a3;
  v62 = a2;
  v6 = sub_10057E420(a1, a2);
  v61[0] = 0;
  v61[1] = 0;
  sub_100007F88(v61, a1 + 344);
  v7 = *(a1 + 680);
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = (a1 + 680);
  v9 = a1 + 680;
  do
  {
    v10 = *(v7 + 32);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v7;
    }

    v7 = *(v7 + 8 * v12);
  }

  while (v7);
  if (v9 != v8 && *(v9 + 32) <= a2)
  {
    v14 = sub_1004D0684(a1 + 672, &v62);
    sub_10000801C(v61);
    v15 = qword_100BCEAA0;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000DEEA4(v6, buf);
      v16 = v64 >= 0 ? buf : *buf;
      *v65 = 136446466;
      v66 = v16;
      v67 = 1024;
      v68 = v3;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received disconnection indication on device %{public}s reason %d", v65, 0x12u);
      if (v64 < 0)
      {
        operator delete(*buf);
      }
    }

    v17 = v14[2];
    *buf = 0;
    *v65 = 0;
    v60 = 0;
    sub_1000C2364(v6, buf, v65, &v60 + 1, &v60);
    v18 = *(v6 + 1220);
    if (v18)
    {
      v19 = *(v6 + 1224) / v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = *(v6 + 1212);
    if (v20)
    {
      v21 = *(v6 + 1216) / v20;
    }

    else
    {
      LOBYTE(v21) = 0;
    }

    v22 = *(v6 + 1178);
    v23 = sub_1000DEB14(v6);
    if (v22)
    {
      v24 = v19;
    }

    else
    {
      v24 = 128;
    }

    if (v22)
    {
      v25 = v21;
    }

    else
    {
      v25 = -1;
    }

    sub_1006090C4(v23, v3, *v65, SHIDWORD(v60), v17, v24, v25, v23);
    v28 = sub_10000C7D0(v26, v27);
    v29 = sub_1000ABD54(v28);
    if (v29 && *(v6 + 1178) == 1)
    {
      sub_100609194(v29, v6);
    }

    v31 = sub_10000C798(v29, v30);
    if (((*(*v31 + 416))(v31) & 1) != 0 || (v32 = sub_10000E92C(), (*(*v32 + 8))(v32)))
    {
      sub_100007FB8(v61);
      v33 = *v8;
      if (!*v8)
      {
        goto LABEL_42;
      }

      v34 = a1 + 680;
      do
      {
        v35 = *(v33 + 32);
        v11 = v35 >= v62;
        v36 = v35 < v62;
        if (v11)
        {
          v34 = v33;
        }

        v33 = *(v33 + 8 * v36);
      }

      while (v33);
      if (v34 != v8 && v62 >= *(v34 + 32))
      {
        v37 = *(v34 + 64);
      }

      else
      {
LABEL_42:
        v37 = 0;
      }

      sub_10000801C(v61);
      if (v37)
      {
        v59 = 0;
        sub_1000216B4(&v59);
        v38 = sub_1000ABB80(v37);
        v39 = sub_100022214(&v59);
        v41 = sub_10000F034(v39, v40);
        v42 = (*(*v41 + 592))(v41, v38, v37);
        v44 = sub_10000F034(v42, v43);
        v45 = (*(*v44 + 568))(v44, v38, v37);
        v47 = sub_100017F4C(v45, v46);
        v57[0] = _NSConcreteStackBlock;
        v57[1] = 3221225472;
        v57[2] = sub_100609224;
        v57[3] = &unk_100AF59D0;
        v58 = v37;
        sub_10000CA94(v47, v57);
        sub_10002249C(&v59);
      }
    }

    sub_10057E710(a1, v6, 0, v3);
    (*(**v14 + 40))(*v14, 0);
    (*(**v14 + 48))();
    *(v14 + 72) = 0;
    v48 = v14[10];
    if (v48)
    {
      free(v48);
    }

    v14[10] = 0;
    sub_100007FB8(v61);
    sub_100610074(a1 + 672, &v62);
    sub_10000801C(v61);
    v51 = *(a1 + 656);
    if (v51 == v62)
    {
      LOWORD(v51) = 0;
    }

    *(a1 + 656) = v51;
    if (*(a1 + 659) == 1)
    {
      v52 = sub_100017F4C(v49, v50);
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_1006092B0;
      v56[3] = &unk_100ADF8F8;
      v56[4] = a1;
      sub_10000CA94(v52, v56);
    }

    v53 = sub_100017F4C(v49, v50);
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_1006092B8;
    v55[3] = &unk_100ADF8F8;
    v55[4] = a1;
    sub_10000CA94(v53, v55);
  }

  else
  {
LABEL_9:
    v13 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v62;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No session for handle %d, likely because the interrupt channel failed to establish", buf, 8u);
    }
  }

  return sub_1000088CC(v61);
}

void sub_10060907C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1006090C4(uint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6, char a7, int a8)
{
  v15 = dispatch_get_global_queue(0, 0);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10060D458;
  v16[3] = &unk_100B01CF8;
  v17 = a4;
  v18 = a3;
  v16[4] = a5;
  v22 = a7;
  v19 = a6;
  v20 = a2;
  v21 = a8;
  dispatch_async(v15, v16);
}

void sub_100609194(uint64_t a1, uint64_t a2)
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10060D768;
  block[3] = &unk_100ADF8F8;
  block[4] = a2;
  dispatch_async(v3, block);
}

void sub_100609224(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C7D0(a1, a2);
  if ((*(*v3 + 1032))(v3, *(a1 + 32), 1, 0))
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100852274();
    }
  }
}

_BYTE *sub_1006092C0(void *a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = sub_10057E30C(a1, a2);
  v14 = 0;
  sub_1000216B4(&v14);
  if (v6)
  {
    if (v3)
    {
      v7 = qword_100BCEAA0;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(a2, __p);
        sub_1008522E4();
      }

LABEL_22:

      return sub_10002249C(&v14);
    }

    if (qword_100B547A0 != -1)
    {
      sub_100852334();
    }

    (*(*off_100B54798 + 40))(off_100B54798, a2);
    if (sub_1006058B4(a1, a2, v6))
    {
      if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
      {
        sub_10085235C();
      }

      sub_10021B6CC(v6);
    }
  }

  else
  {
    v8 = qword_100BCEAA0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v9 = v13 >= 0 ? __p : __p[0];
      *buf = 136446466;
      v16 = v9;
      v17 = 1024;
      v18 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "HID Host handle for device %{public}s is %d. Responding to delayed incoming connection request", buf, 0x12u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v10 = sub_100219518(a2 + 128);
    if (!v10)
    {
      v7 = qword_100BCEAA0;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(a2, __p);
        sub_1008523D8();
      }

      goto LABEL_22;
    }

    sub_100605D7C(a1, a2, *(v10 + 192), v3, 1);
    if (v3)
    {
      sub_10057DA84(a1, a2, v3);
    }
  }

  return sub_10002249C(&v14);
}

void sub_100609570(void *a1, int a2)
{
  v3 = sub_10057E420(a1, a2);
  v4 = sub_10021B6CC(a2);
  v5 = qword_100BCEAA0;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      sub_1000E5A58(v3, __p);
      if (v8 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      *buf = 136446210;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Remote unplugging virtual cable to device %{public}s", buf, 0xCu);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136446210;
      v10 = "NULL";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Remote unplugging virtual cable to device %{public}s", buf, 0xCu);
    }
  }

  if (qword_100B50F88 != -1)
  {
    sub_100852434();
  }

  sub_1006E0DBC(off_100B50F80, v3);
  if (v4)
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100851590();
    }
  }
}

void sub_100609718(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = a4;
  if (a3 && os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_10085245C();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_8:
    sub_100605B68(a1, a2);
    return;
  }

  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_100852498();
  }

  sub_10021B6CC(a2);
}

uint64_t sub_1006097BC(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6, uint64_t a7)
{
  v12 = qword_100B6F798++;
  if ((v12 & 0x1F) == 0)
  {
    v15 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_INFO))
    {
      v16 = "no";
      v23 = 1024;
      v21 = 67109890;
      if (a5)
      {
        v17 = "yes";
      }

      else
      {
        v17 = "no";
      }

      v22 = a2;
      v24 = a4;
      if (a6)
      {
        v16 = "yes";
      }

      v25 = 2082;
      v26 = v17;
      v27 = 2082;
      v28 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Received input report indication: handle=%d, length=%d, first=%{public}s, final=%{public}s", &v21, 0x22u);
    }
  }

  if (*(a7 + 9) == 1)
  {
    v18 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a7 + 12);
      v21 = 67109632;
      v22 = a2;
      v23 = 1024;
      v24 = a4;
      v25 = 1024;
      LODWORD(v26) = v20;
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "attrs BTCLK: handle=%d, length=%d, BTCLK=%08x", &v21, 0x14u);
    }
  }

  sub_100603BCC(a1, a2, 2u);
  return sub_1006050F4(a1, a2, a3, a4);
}

uint64_t sub_100609984(uint64_t a1, int a2, char a3)
{
  if (!a2)
  {
    return dword_1008AA8B8[a3 & 0xF];
  }

  if (a2 == 2604)
  {
    return 3758097110;
  }

  return 3758097084;
}

uint64_t sub_1006099B4(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  v8 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_INFO))
  {
    v12[0] = 67109632;
    v12[1] = a2;
    v13 = 1024;
    v14 = a4;
    v15 = 1024;
    v16 = a5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Received output report confirmation: handle=%d, length=%d, status=%{bluetooth:OI_STATUS}u", v12, 0x14u);
  }

  if (qword_100B54398 != -1)
  {
    sub_100852508();
  }

  if (a5 == 2604)
  {
    v9 = -536870186;
  }

  else
  {
    v9 = -536870212;
  }

  if (a5)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return sub_1006055CC(off_100B54390, a2, a5 == 0, v10);
}

void sub_100609AC4()
{
  v0 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Received boot-mode keyboard report", v1, 2u);
  }
}

uint64_t sub_100609B2C(uint64_t a1, unsigned __int16 a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, int a7, int a8)
{
  v13 = a3;
  v15 = qword_100BCEAA0;
  v16 = os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_INFO);
  if (v16)
  {
    v17 = "no";
    v22[0] = 67109890;
    v22[1] = a4;
    if (a7)
    {
      v18 = "yes";
    }

    else
    {
      v18 = "no";
    }

    v23 = 1024;
    v24 = a6;
    if (a8)
    {
      v17 = "yes";
    }

    v25 = 2082;
    v26 = v18;
    v27 = 2082;
    v28 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Received get report confirmation: reportType=%d, length=%d, first=%{public}s, final=%{public}s", v22, 0x22u);
  }

  if (v13)
  {
    v16 = os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR);
    if (v16)
    {
      sub_100852530();
    }
  }

  if (qword_100B54398 != -1)
  {
    sub_100852508();
  }

  v19 = off_100B54390;
  v20 = sub_100609984(v16, 0, v13);
  return sub_1006054A8(v19, a2, v13 == 0, v20, a5, a6);
}

uint64_t sub_100609CC0(uint64_t a1, int a2, uint64_t a3, _BYTE *a4, int a5, int a6)
{
  v9 = a3;
  v24 = a2;
  v12 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_INFO))
  {
    *buf = 67109632;
    *&buf[4] = a2;
    *&buf[8] = 1024;
    *&buf[10] = v9;
    *&buf[14] = 1024;
    LODWORD(v26) = a6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Received set report confirmation: handle=%d, handshake=%d, status=%d", buf, 0x14u);
  }

  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, a1 + 344);
  for (i = *(a1 + 680); i; i = *i)
  {
    v14 = *(i + 16);
    if (v24 >= v14)
    {
      if (v14 >= v24)
      {
        v15 = sub_1004D0684(a1 + 672, &v24);
        *buf = 0u;
        v26 = 0u;
        buf[0] = *(v15 + 32);
        *&buf[2] = *(v15 + 34);
        *&v26 = v15[6];
        BYTE9(v26) = *(v15 + 57);
        if (v26)
        {
          operator new[]();
        }

        BYTE8(v26) = 0;
        if (sub_1006018EC(buf) == 1 && !v9 && !a6)
        {
          log = qword_100BCEAA0;
          if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_INFO))
          {
            *v22 = 0;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "HID Perf Mode is running", v22, 2u);
          }

          *(v15 + 64) = 1;
        }

        break;
      }

      ++i;
    }
  }

  sub_10000801C(v23);
  if (v9)
  {
    v16 = os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR);
    if (v16)
    {
      sub_100852530();
    }
  }

  else if (*(a1 + 656) && *(a1 + 656) == v24)
  {
    if (a5 == 1)
    {
      if (*a4 != 65)
      {
        goto LABEL_29;
      }
    }

    else if (a5 != 2 || *a4 != 64 || a4[1] != 3)
    {
      goto LABEL_29;
    }

    *(a1 + 656) = 0;
    memset(buf, 0, sizeof(buf));
    sub_100007F88(buf, a1 + 544);
    sub_100364600((a1 + 608));
    v16 = sub_1000088CC(buf);
  }

LABEL_29:
  if (qword_100B54398 != -1)
  {
    sub_100852508();
  }

  v17 = off_100B54390;
  v18 = v24;
  v19 = sub_100609984(v16, a6, v9);
  sub_1006055CC(v17, v18, (v9 | a6) == 0, v19);
  return sub_1000088CC(v23);
}

void sub_10060A0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  if (v18)
  {
    if (v17)
    {
      operator delete[]();
    }
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10060A11C(void *a1, unsigned int a2)
{
  v4 = qword_100BCEAA0;
  v5 = os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v9[0] = 67109120;
    v9[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received idle indication on handle %d", v9, 8u);
  }

  v7 = sub_10000C798(v5, v6);
  result = (*(*v7 + 440))(v7);
  if (result)
  {
    return sub_100603878(a1, a2, 3);
  }

  return result;
}

void sub_10060A210(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100851A6C();
  }

  *buf = *a2;
  LOWORD(v14) = *(a2 + 4);
  v7 = sub_1000E6554(off_100B508E8, buf, 1);
  if (v7)
  {
    v8 = qword_100BCEAA0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v7, __p);
      if (v12 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      v10 = "good";
      *buf = 136446722;
      if (a4)
      {
        v10 = "poor";
      }

      v14 = v9;
      v15 = 2080;
      v16 = v10;
      v17 = 1024;
      v18 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device %{public}s identified with %s sniff interval %u", buf, 0x1Cu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_100545E40(v7, a4);
  }
}

uint64_t sub_10060A39C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = sub_10025585C(a2);
  v9 = sub_100605764(a1, v8);
  v10 = sub_1000E1FE8(a2);
  if (qword_100B508F0 != -1)
  {
    sub_100851A6C();
  }

  LODWORD(v31[0]) = *a2;
  WORD2(v31[0]) = *(a2 + 4);
  result = sub_1000E6554(off_100B508E8, v31, 1);
  if (v9)
  {
    v12 = result;
    v31[0] = 0;
    v31[1] = 0;
    v13 = sub_100007F88(v31, a1 + 344);
    v15 = *(a1 + 680);
    if (!v15)
    {
      goto LABEL_24;
    }

    v16 = (a1 + 680);
    v17 = (a1 + 680);
    do
    {
      v18 = v15[16];
      v19 = v18 >= v9;
      v20 = v18 < v9;
      if (v19)
      {
        v17 = v15;
      }

      v15 = *&v15[4 * v20];
    }

    while (v15);
    if (v17 != v16 && v9 >= v17[16])
    {
      if (a4 == 2)
      {
        v17[33] = a3;
        if (v12)
        {
          v13 = sub_10054F7C8(v12, a3);
        }

        v21 = sub_10000C798(v13, v14);
        v22 = (*(*v21 + 416))(v21);
        if ((v22 & 1) != 0 || (v24 = sub_10000E92C(), v22 = (*(*v24 + 8))(v24), v22))
        {
          v25 = sub_10000F034(v22, v23);
          v26 = sub_10025585C(a2);
          v27 = (*(*v25 + 592))(v25, v10, v26);
          v29 = sub_10000F034(v27, v28);
          v30 = sub_10025585C(a2);
          (*(*v29 + 576))(v29, v30, v10, 1, a3);
        }
      }

      v17[68] = a4;
    }

    else
    {
LABEL_24:
      if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
      {
        sub_1008525A0();
      }
    }

    return sub_1000088CC(v31);
  }

  return result;
}

void sub_10060A5F8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v8 = qword_100BCEAA0;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_100777574((*a2 << 40) | (a2[1] << 32) | (a2[2] << 24) | (a2[3] << 16) | (a2[4] << 8) | a2[5]);
    v9 = v19 >= 0 ? &__p : __p;
    *buf = 136315906;
    v21 = "void BT::HIDProfile::modeChangedInd(const OI_BD_ADDR *, uint16_t, uint8_t)";
    v22 = 2080;
    v23 = v9;
    v24 = 1024;
    v25 = 625 * a3;
    v26 = 1024;
    v27 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Sniff interval changed: device %s, interval %u us, mode %d", buf, 0x22u);
    if (v19 < 0)
    {
      operator delete(__p);
    }
  }

  if (a3 || a4 != 2)
  {
    if (a3 <= 0x18 && a4 == 2)
    {
      v13 = sub_10000C7D0(v10, v11);
      if ((*(v13 + 800) - 20) < 0xFFFFFFED || a3 <= 0x17)
      {
        sub_10060A870(v13, a2, a3, 1);
      }

      v14 = sub_10060A39C(a1, a2, a3, 2);
      v16 = sub_100017F4C(v14, v15);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10060AC1C;
      v17[3] = &unk_100ADF8F8;
      v17[4] = a1;
      sub_10000CA94(v16, v17);
    }
  }

  else
  {
    v12 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "void BT::HIDProfile::modeChangedInd(const OI_BD_ADDR *, uint16_t, uint8_t)";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Sniff interval should never be 0 when in sniff mode", buf, 0xCu);
    }
  }
}

void sub_10060A870(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = sub_10000C798(a1, a2);
  v8 = (*(*v7 + 352))(v7);
  if (v8 && (v8 = _os_feature_enabled_impl(), (v8 & 1) != 0) || (v10 = sub_10000C798(v8, v9), ((*(*v10 + 416))(v10) & 1) != 0))
  {
    v11 = CFPreferencesCopyValue(@"disableCentralSkipSniff", @"com.apple.Bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 BOOLValue];
    }

    else
    {
      v12 = 0;
    }

    if (qword_100B508F0 != -1)
    {
      sub_100851A6C();
    }

    LODWORD(__p[0]) = *a2;
    WORD2(__p[0]) = *(a2 + 4);
    v13 = sub_1000E6554(off_100B508E8, __p, 1);
    v14 = v13;
    if (v13)
    {
      v15 = sub_10053C854(v13);
      if (v15)
      {
        v17 = sub_10000C7D0(v15, v16);
        if (!(v12 & 1 | (((*(*v17 + 3112))(v17) & 1) == 0)))
        {
          if (a3 == 24)
          {
            v18 = 5000;
          }

          else
          {
            v18 = 100;
          }

          v19 = qword_100BCEAA0;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000C23E0(v14, __p);
            v20 = v28 >= 0 ? __p : __p[0];
            *buf = 136315138;
            v30 = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending Central Skip Sniff Mode for device: %s", buf, 0xCu);
            if (v28 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v26 = 0;
          sub_1000216B4(&v26);
          v21 = sub_1000E1FE8(a2);
          sub_100022214(&v26);
          v22 = sub_1000B8B5C(v21);
          if (v22)
          {
            v24 = sub_10000C7D0(v22, v23);
            if ((*(*v24 + 3944))(v24, v21, a4, 1, v18, 0))
            {
              if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
              {
                sub_1008526CC();
              }
            }
          }

          else
          {
            v25 = qword_100BCEAA0;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              sub_1000C23E0(v14, __p);
              sub_100852670();
            }
          }

          sub_10002249C(&v26);
        }
      }
    }
  }

  else
  {
    sub_1008525DC();
  }
}

void sub_10060ABCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12)
{
  sub_10002249C(&a12);

  _Unwind_Resume(a1);
}

void sub_10060AC24(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_10057E30C(v2, *(a1 + 40));
  v11 = v3;
  v4 = v2[85];
  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = v2 + 85;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= v3;
    v8 = v6 < v3;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != v2 + 85 && v3 >= *(v5 + 16))
  {
    if ((*(sub_1004D0684((v2 + 84), &v11) + 48) | 0x80) == 0x80)
    {
      v9 = qword_100BCEAA0;
      if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Active mode HID detected, marking as Poor", v10, 2u);
      }

      sub_100545E40(*(a1 + 40), 1);
    }
  }

  else
  {
LABEL_18:
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_10085273C();
    }
  }
}

void sub_10060AD30(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_100852778();
  }

  if (sub_10078DEFC(off_100B508C8, v3))
  {
    if (qword_100B508D0 != -1)
    {
      sub_100852778();
    }

    v4 = sub_100046458(off_100B508C8, v3, 0);
    v5 = sub_10009A66C(v4);
    v13 = v5;
    v15 = BYTE6(v5);
    v14 = WORD2(v5);
    v12 = 0;
    sub_1000216B4(&v12);
    v6 = sub_1000E5EA8(&v13);
    v7 = sub_100022214(&v12);
    if (v6)
    {
      v9 = sub_10000C7D0(v7, v8);
      (*(*v9 + 1056))(v9, &v13 + 1, 1, 2049);
    }

    else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_10085278C();
    }

    v10 = sub_100607A68(a1);
    v11 = sub_10060AEB0(v10, v3);
    if (v11)
    {
      sub_10060AF98(v11, v3);
    }

    sub_10002249C(&v12);
  }
}

unint64_t sub_10060AEB0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!v2)
  {
    goto LABEL_9;
  }

  if (qword_100B508D0 != -1)
  {
    sub_100852778();
  }

  if (sub_10078DEFC(off_100B508C8, v2))
  {
    if (qword_100B508D0 != -1)
    {
      sub_100852778();
    }

    v3 = off_100B508C8;
    sub_100007E30(__p, "IsBLEGameController");
    v4 = sub_10004EB40(v3, v2, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
LABEL_9:
    v4 = 0;
  }

  return v4;
}

void sub_10060AF70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10060AF98(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (!v2)
  {
    sub_100852898();
    goto LABEL_9;
  }

  if ((sub_10060AEB0(v2, v2) & 1) == 0)
  {
    v4 = qword_100BCEAA0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      if (qword_100B508D0 != -1)
      {
        sub_100852778();
      }

      sub_10004FFDC(off_100B508C8, v3, v5);
      sub_1008527C8();
    }

    goto LABEL_15;
  }

  if (qword_100B508C0 != -1)
  {
    sub_100851268();
  }

  if (!sub_10004EE74(off_100B508B8, v3))
  {
    v4 = qword_100BCEAA0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      if (qword_100B508D0 != -1)
      {
        sub_100852778();
      }

      sub_10004FFDC(off_100B508C8, v3, v5);
      sub_100852830();
    }

LABEL_15:

    goto LABEL_9;
  }

  if (qword_100B54C90 != -1)
  {
    sub_100851E7C();
  }

  sub_1005CDEB0(qword_100B54C88, v3, 1);
LABEL_9:
}

void sub_10060B16C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100607A68(a1);
  if (*(a1 + 659) == 1 && sub_10060AEB0(v4, v3))
  {
    v5 = qword_100BCEAA0;
    v6 = os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Low latency LE Game Controller disconnected", buf, 2u);
    }

    v8 = sub_100017F4C(v6, v7);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10060B270;
    v9[3] = &unk_100ADF8F8;
    v9[4] = a1;
    sub_10000CA94(v8, v9);
  }
}

void sub_10060B280(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = sub_100017F4C(v3, v4);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10060B3C8;
  v13[3] = &unk_100ADF8F8;
  v13[4] = a1;
  sub_10000CA94(v5, v13);
  if (*(a1 + 659) == 1 && sub_10060AEB0(v6, v3))
  {
    v7 = qword_100BCEAA0;
    v8 = os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Low latency LE Game Controller Connection Params Updated", buf, 2u);
    }

    v10 = sub_100017F4C(v8, v9);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10060B3D0;
    v11[3] = &unk_100ADF8F8;
    v11[4] = a1;
    sub_10000CA94(v10, v11);
  }
}

void sub_10060B400(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100007F20(&v5, &a1[2]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(a1);
  v4 = v5;
  if (v5 != v6)
  {
    do
    {
      v3[2](v3, *v4++);
    }

    while (v4 != v6);
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
    operator delete(v4);
  }
}

void sub_10060B514(uint64_t a1, int a2)
{
  v4 = qword_100BCEAA0;
  v5 = os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    *buf = 67109120;
    LODWORD(v12) = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Console mode enablement changed to %d", buf, 8u);
  }

  *(a1 + 659) = a2;
  if (a2)
  {
    v7 = *(a1 + 508);
    v8 = qword_100BCEAA0;
    v5 = os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT);
    if (v7 == 1)
    {
      if (v5)
      {
        *buf = 136315138;
        v12 = "virtual void BT::HIDProfile::gameConsoleModeChanged(BOOL)";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Start Classic Game Controller Auto Switch", buf, 0xCu);
      }

      sub_10060B6CC(a1, 1);
    }

    else if (v5)
    {
      *buf = 136315138;
      v12 = "virtual void BT::HIDProfile::gameConsoleModeChanged(BOOL)";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Skip Auto Switch because mode is OFF", buf, 0xCu);
    }
  }

  v9 = sub_100017F4C(v5, v6);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10060C200;
  v10[3] = &unk_100ADF8F8;
  v10[4] = a1;
  sub_10000CA94(v9, v10);
}

void sub_10060B6CC(uint64_t a1, int a2)
{
  if (*(a1 + 496) == 1)
  {
    *(a1 + 497) = 1;
    v3 = qword_100BCEAA0;
    if (!os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    *&buf[4] = "void BT::HIDProfile::startHIDAutoConnect(BOOL)";
    v4 = "%s  Delay HID paging because latency critical operation is in progress. i.e. AU";
    v5 = v3;
    goto LABEL_9;
  }

  if (qword_100B54398 != -1)
  {
    sub_1008518A0();
  }

  v7 = *(off_100B54390 + 61);
  v8 = qword_100BCEAA0;
  v9 = os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (v9)
    {
      *buf = 136315650;
      *&buf[4] = "void BT::HIDProfile::startHIDAutoConnect(BOOL)";
      v16 = 1024;
      v17 = 0;
      v18 = 1024;
      v19 = a2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s isBaseSystem %d forGC %d", buf, 0x18u);
    }

    v12 = 0;
    v13 = 0;
    v14 = 0;
    if (qword_100B50F88 != -1)
    {
      sub_100852434();
    }

    sub_10009DB3C(off_100B50F80, &v12);
    v10 = 126 - 2 * __clz((v13 - v12) >> 3);
    *buf = sub_10060E334;
    if (v13 == v12)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    sub_1005AF8D4(v12, v13, buf, v11, 1);
    *(a1 + 488) = 0;
    if (a2)
    {
      operator new();
    }

    operator new();
  }

  if (v9)
  {
    *buf = 136315138;
    *&buf[4] = "startHIDAutoConnect";
    v4 = "%s: AutoConnect is already started. Ignore the duplicated request.";
    v5 = v8;
LABEL_9:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v4, buf, 0xCu);
  }
}

void sub_10060C144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_10000CEDC(&a24, a25);
  if (a27)
  {
    a28 = a27;
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void sub_10060C210(uint64_t a1, int a2)
{
  v4 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "virtual void BT::HIDProfile::gameControllerAutoSwitchChanged(BOOL)";
    v7 = 1024;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: GC auto switch mode changed to %d", &v5, 0x12u);
  }

  *(a1 + 508) = a2;
}

void sub_10060C2E0(void *a1, unint64_t a2, int a3)
{
  if (a2)
  {
    v6 = sub_10057E30C(a1, a2);
    v16 = v6;
    if (v6)
    {
      v7 = sub_1004D0684((a1 + 84), &v16);
      v8 = *(v7 + 25);
      if (a3)
      {
        if (v8)
        {
          return;
        }

        v9 = qword_100BCEAA0;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, __p);
          if (v15 >= 0)
          {
            v10 = __p;
          }

          else
          {
            v10 = __p[0];
          }

          *buf = 136446210;
          v18 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Enabling Low Latency Gaming connection policy for %{public}s", buf, 0xCu);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        LODWORD(__p[0]) = 0;
        buf[0] = 0;
        sub_1000216B4(buf);
        sub_100306154(nullsub_483, (a2 + 128), &unk_100B54C48, __p);
        *(v7 + 25) = __p[0];
        sub_100022214(buf);
        v11 = buf;
      }

      else
      {
        if (!v8)
        {
          return;
        }

        v12 = qword_100BCEAA0;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, __p);
          v13 = v15 >= 0 ? __p : __p[0];
          *buf = 136446210;
          v18 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Removing Low Latency Gaming connection policy for %{public}s", buf, 0xCu);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        LOBYTE(__p[0]) = 0;
        sub_1000216B4(__p);
        sub_1003065C8(*(v7 + 25));
        *(v7 + 25) = 0;
        sub_100022214(__p);
        v11 = __p;
      }

      sub_10002249C(v11);
    }

    else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_10085292C();
    }
  }

  else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_100852968();
  }
}

void sub_10060C588(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  if (qword_100B508B0 != -1)
  {
    sub_100851138();
  }

  v12 = 0;
  v13 = 0;
  v11 = 0;
  v5 = off_100B508A8;
  sub_10004DFB4(buf, v4);
  if (!sub_100767968(v5, buf, &v13 + 1, &v13, &v12 + 1, &v12, &v11))
  {
    v6 = qword_100BCEAA0;
    v7 = os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT);
    if (a3)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Enabling LE Low Latency Gaming connection policy", buf, 2u);
      }

      v8 = 6;
    }

    else
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removing LE Low Latency Gaming connection policy", buf, 2u);
      }

      v8 = 12;
    }

    if (v8 != HIWORD(v13))
    {
      v11 = 720;
      v9 = v13;
      if (v13 >= 4u)
      {
        v9 = 4;
      }

      LOWORD(v13) = v9;
      if (qword_100B508B0 != -1)
      {
        sub_100852018();
      }

      v10 = off_100B508A8;
      sub_10004DFB4(buf, v4);
      sub_100767160(v10, buf, 4, 4, v13, v13, v11, v8 * 1.25, v8 * 1.25, v8 * 1.25);
    }
  }
}

void sub_10060C774(int a1, unsigned __int8 *a2)
{
  v4 = qword_100BCEAA0;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_100777574((*a2 << 40) | (a2[1] << 32) | (a2[2] << 24) | (a2[3] << 16) | (a2[4] << 8) | a2[5]);
    if (v7 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315650;
    v9 = "enforceDevmgrPolicyCallback";
    v10 = 1024;
    v11 = a1;
    v12 = 2080;
    v13 = p_p;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s -- Trace enforceDevmgrPolicyCallback - status 0x%x, device %s", buf, 0x1Cu);
    if (v7 < 0)
    {
      operator delete(__p);
    }
  }
}

BOOL sub_10060C8C0(void *a1, uint64_t a2, int a3, int a4)
{
  v22 = 0;
  sub_1000216B4(&v22);
  v8 = sub_10060580C(a1, a2);
  v21 = v8;
  v9 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v24 = v8;
    v25 = 1024;
    v26 = a3;
    v27 = 1024;
    v28 = a4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Getting report - {handle: 0x%x, type %d, ID: %d}", buf, 0x14u);
  }

  if (sub_100603BCC(a1, v8, 3u) != 335)
  {
    v12 = sub_10021BAF4(v8, a3, a4, 0xFFFF);
    if (v12)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_1008529A4();
  }

  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, (a1 + 43));
  v10 = a1[85];
  if (!v10)
  {
LABEL_11:
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_1008529E0();
    }

    goto LABEL_18;
  }

  while (1)
  {
    v11 = *(v10 + 16);
    if (v8 >= v11)
    {
      break;
    }

LABEL_10:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  if (v11 < v8)
  {
    ++v10;
    goto LABEL_10;
  }

  v13 = sub_1004D0684((a1 + 84), &v21);
  v14 = v13;
  v15 = *(v13 + 72);
  if (v15)
  {
    v16 = *(v13 + 74);
    v17 = *(v13 + 19);
    v18 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109632;
      v24 = v15;
      v25 = 1024;
      v26 = v16;
      v27 = 1024;
      v28 = v17;
      _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "Get report queue already occupied - {isEntryValid %d, reportType %d, reportID %d}", buf, 0x14u);
    }

LABEL_18:
    v12 = 118;
  }

  else
  {
    *(v13 + 74) = a3;
    *(v13 + 19) = a4;
    *(v13 + 72) = 1;
    v13[11] = 0;
    v12 = 0;
    v13[10] = malloc_type_malloc(0, 0x100004077774924uLL);
    *(v14 + 73) = 1;
  }

  sub_1000088CC(v20);
  if (v12)
  {
LABEL_20:
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100852A1C();
    }
  }

LABEL_22:
  sub_10002249C(&v22);
  return v12 == 0;
}

void sub_10060CB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1000088CC(&a10);
  sub_10002249C(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_10060CBA0(void *a1, uint64_t a2, int a3, int a4, char *a5, uint64_t *a6)
{
  v48 = 0;
  sub_1000216B4(&v48);
  v47 = sub_10060580C(a1, a2);
  v12 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110402;
    *&buf[4] = v47;
    *&buf[8] = 1024;
    *&buf[10] = a3;
    *&buf[14] = 1024;
    *&buf[16] = a4;
    *&buf[20] = 2048;
    *&buf[22] = a6;
    *&buf[30] = 1040;
    *v50 = a6;
    *&v50[4] = 2098;
    *&v50[6] = a5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Set report {handle: %d, type: %d, ID: %d, size: %zu, {%{public}.*P}", buf, 0x2Eu);
  }

  if (sub_100603BCC(a1, v47, 4u) != 335)
  {
    v45 = 0;
    v46 = 0;
    sub_100007F88(&v45, (a1 + 43));
    v15 = a1[85];
    if (!v15)
    {
      goto LABEL_45;
    }

    while (1)
    {
      v16 = *(v15 + 16);
      if (v47 >= v16)
      {
        if (v16 >= v47)
        {
          v17 = sub_1004D0684((a1 + 84), &v47);
          *buf = 0u;
          v18 = v47;
          buf[0] = 5;
          *&buf[2] = v47;
          *&buf[4] = 255;
          *&buf[16] = a6;
          if (a5 && a6)
          {
            operator new[]();
          }

          buf[24] = 0;
          if (*(v17 + 64) == 1)
          {
            v19 = sub_1006018EC(buf);
            v20 = qword_100BCEAA0;
            if (v19 == 2)
            {
              if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_INFO))
              {
                *v44 = 0;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "HID Perf Mode is stopping", v44, 2u);
              }

              *(v17 + 64) = 0;
              goto LABEL_27;
            }

            if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
            {
              sub_100851600();
            }

            v31 = 1;
          }

          else
          {
LABEL_27:
            v43 = 1;
            v38[0] = 5;
            v39 = v18;
            v40 = 255;
            v41 = 0;
            v42 = a6;
            if (a6)
            {
              operator new[]();
            }

            LOBYTE(v43) = 0;
            sub_10060F7A8((v17 + 4), v38);
            if (v43 == 1 && v41)
            {
              operator delete[]();
            }

            v31 = 0;
          }

          if (v31)
          {
            sub_1000088CC(&v45);
            goto LABEL_54;
          }

LABEL_45:
          sub_10000801C(&v45);
          if (a3 == 3)
          {
            v32 = sub_10021BC0C(v47, 3, a5, a6);
          }

          else
          {
            if (a3 != 2)
            {
              v24 = 101;
              goto LABEL_51;
            }

            v32 = sub_10021BD98(v47, 2, a5, a6);
          }

          v24 = v32;
          goto LABEL_51;
        }

        ++v15;
      }

      v15 = *v15;
      if (!v15)
      {
        goto LABEL_45;
      }
    }
  }

  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_100852A8C();
  }

  v45 = 0;
  v46 = 0;
  sub_100007F88(&v45, (a1 + 43));
  v13 = a1[85];
  if (!v13)
  {
LABEL_11:
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100852AC8();
    }

    goto LABEL_32;
  }

  while (1)
  {
    v14 = *(v13 + 16);
    if (v47 >= v14)
    {
      break;
    }

LABEL_10:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  if (v14 < v47)
  {
    ++v13;
    goto LABEL_10;
  }

  v21 = sub_1004D0684((a1 + 84), &v47);
  v22 = v21;
  if (*(v21 + 72) == 1)
  {
    v23 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_FAULT))
    {
      v35 = v22[11];
      v36 = *(v22 + 19);
      v37 = *(v22 + 74);
      *buf = 67109888;
      *&buf[4] = 1;
      *&buf[8] = 1024;
      *&buf[10] = v37;
      *&buf[14] = 1024;
      *&buf[16] = v36;
      *&buf[20] = 1024;
      *&buf[22] = v35;
      _os_log_fault_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "Set report queue already occupied - {isEntryValid %d, reportType %d, reportID %d, size %d}", buf, 0x1Au);
    }

LABEL_32:
    v24 = 118;
  }

  else
  {
    *(v21 + 74) = a3;
    *(v21 + 19) = a4;
    *(v21 + 72) = 1;
    v21[11] = a6;
    v25 = malloc_type_malloc(a6, 0x100004077774924uLL);
    v22[10] = v25;
    memcpy(v25, a5, a6);
    *(v22 + 73) = 0;
    v26 = qword_100BCEAA0;
    v24 = 0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v22[10];
      v27 = v22[11];
      v29 = *(v22 + 19);
      v30 = *(v22 + 74);
      *buf = 136316674;
      *&buf[4] = "set";
      *&buf[12] = 1024;
      *&buf[14] = v47;
      *&buf[18] = 1024;
      *&buf[20] = v30;
      *&buf[24] = 1024;
      *&buf[26] = v29;
      *&buf[30] = 2048;
      *v50 = v27;
      *&v50[8] = 1040;
      *&v50[10] = v27;
      v51 = 2098;
      v52 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Queued %s report {handle: 0x%x, type: %d, ID: %d, size: %zu, {%{public}.*P}", buf, 0x38u);
      v24 = 0;
    }
  }

  sub_10000801C(&v45);
LABEL_51:
  sub_1000088CC(&v45);
  if (v24)
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100852B04();
    }

LABEL_54:
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  sub_10002249C(&v48);
  return v33;
}

void sub_10060D178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (v20)
  {
    if (v19)
    {
      operator delete[]();
    }
  }

  sub_1000088CC(&a14);
  sub_10002249C(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_10060D220(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v10 = 0;
  sub_1000216B4(&v10);
  v6 = sub_10060580C(a1, a2);
  v7 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v12 = v6;
    v13 = 1024;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Send Hid Control {handle: %d, controlOP: %d}", buf, 0xEu);
  }

  if ((a3 - 3) > 1u || sub_10021B6D0(v6, a3, sub_100603B60))
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100852B74();
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  sub_10002249C(&v10);
  return v8;
}

_BYTE *sub_10060D390(void *a1, uint64_t a2)
{
  v4 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Clearing SDP record", buf, 2u);
  }

  v8 = 0;
  sub_1000216B4(&v8);
  v5 = sub_10060580C(a1, a2);
  v6 = sub_10057E420(a1, v5);
  sub_100536730(v6);
  return sub_10002249C(&v8);
}

uint64_t sub_10060D458(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 44);
  v4 = mach_continuous_time();
  v5 = *(a1 + 32);
  info = 0;
  mach_timebase_info(&info);
  v6 = v3 | (v2 << 16);
  v7 = (v4 - v5) * info.numer / info.denom / 0x3B9ACA00;
  v8 = *(a1 + 60);
  if (v8 >= 11)
  {
    LOBYTE(v8) = 10 * (*(a1 + 60) / 0xAu);
  }

  v9 = v8;
  v11 = *(a1 + 48);
  v10 = *(a1 + 52);
  v12 = *(a1 + 56);
  v21[0] = v6;
  v21[1] = v11;
  v21[2] = v8;
  v21[3] = v7;
  v21[4] = v10;
  v21[5] = v12;
  v13 = qword_100BCEAA0;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v12;
    v14 = sub_10056CB30(&v20);
    *buf = 67110402;
    v24 = v6;
    v25 = 1024;
    v26 = v11;
    v27 = 1024;
    v28 = v9;
    v29 = 1024;
    v30 = v7;
    v31 = 1024;
    v32 = v10;
    v33 = 2080;
    v34 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Posting HID Session Metric: Pid|Vid %x, RSSI Average %d, PER Average %d%%, Duration %ds, Disconnection Reason %d, DeviceType %s", buf, 0x2Au);
  }

  result = sub_10000F034(v15, v16);
  if (result)
  {
    v19 = sub_10000F034(result, v18);
    return (*(*v19 + 168))(v19, v21);
  }

  return result;
}

void sub_10060D634(uint64_t a1)
{
  v2 = sub_1000295DC(*(a1 + 32));
  if (v2)
  {
    v4 = sub_10000C7D0(v2, v3);
    v5 = *(a1 + 32);
    v6 = (*(*v4 + 320))(v4, 1, 1, (v5[128] << 40) | (v5[129] << 32) | (v5[130] << 24) | (v5[131] << 16) | (v5[132] << 8) | v5[133], 1);
    v7 = qword_100BCEAA0;
    v8 = os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to enable phy stats", v9, 2u);
      }
    }

    else
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Enabled phy stats", buf, 2u);
      }

      *(*(a1 + 32) + 1178) = 1;
    }
  }
}

void sub_10060D768(uint64_t a1)
{
  v2 = sub_1000295DC(*(a1 + 32));
  v3 = qword_100BCEAA0;
  if (v2)
  {
    v4 = qword_100BCEAA0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_10025585C(*(a1 + 32) + 128);
      v12 = 67109120;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Disabling phy stats for HCI LM Handle 0x%02X", &v12, 8u);
    }

    v8 = sub_10000C7D0(v6, v7);
    v9 = *(a1 + 32);
    (*(*v8 + 320))(v8, 0, 1, (v9[128] << 40) | (v9[129] << 32) | (v9[130] << 24) | (v9[131] << 16) | (v9[132] << 8) | v9[133], 1);
    *(*(a1 + 32) + 1178) = 0;
    v10 = qword_100BCEAA0;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (qword_100B508F0 != -1)
      {
        sub_100851A44();
      }

      v11 = sub_10056D550(off_100B508E8);
      v12 = 67109120;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "disablePhyStats, current number of devices %d", &v12, 8u);
    }
  }

  else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "disablePhyStats: device is not paired!!!", &v12, 2u);
  }
}

void sub_10060D980(uint64_t a1, uint64_t a2, int a3)
{
  v6 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "void BT::HIDProfile::autoConnectNextHID(Device *, BTResult)";
    v14 = 1024;
    v15 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s isBaseSystem %d", buf, 0x12u);
  }

  v7 = qword_100BCEAA0;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(a2, buf);
    if (v16 >= 0)
    {
      v8 = buf;
    }

    else
    {
      v8 = *buf;
    }

    *v17 = 67109378;
    v18 = a3;
    v19 = 2080;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "autoConnectNextHID(prevResult %d): %s ", v17, 0x12u);
    if (v16 < 0)
    {
      operator delete(*buf);
    }
  }

  v11 = sub_100017F4C(v9, v10);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10060DB4C;
  v12[3] = &unk_100AE0860;
  v12[4] = a1;
  v12[5] = a2;
  sub_10008E008(v11, 0, v12);
}

void sub_10060DB4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[60])
  {
    memset(&__p, 0, sizeof(__p));
    if (qword_100B50AC0 != -1)
    {
      sub_100851124();
    }

    if (sub_10059234C(off_100B50AB8, *(a1 + 40), -1, &__p, 0))
    {
      v3 = qword_100BCEAA0;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1000C23E0(*(a1 + 40), v6);
        sub_100852BE4();
      }

      v4 = sub_1000DEB14(*(a1 + 40));
      sub_10060DCE8(v1, v4, 1);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v5 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
      *(__p.__r_.__value_.__r.__words + 4) = "void BT::HIDProfile::autoConnectNextHID(Device *, BTResult)_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s AutoConnect is already paused or done", &__p, 0xCu);
    }
  }
}

void sub_10060DCB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10060DCE8(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 136315906;
    v27 = "void BT::HIDProfile::processAutoConnection(BTDeviceType, BTResult)";
    v28 = 1024;
    v29 = 0;
    v30 = 1024;
    *v31 = v4;
    *&v31[4] = 1024;
    *&v31[6] = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s isBaseSystem %d, type %d, result %d", &v26, 0x1Eu);
  }

  v7 = *(*(a1[56] + ((a1[59] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (a1[59] & 0x1FFLL));
  sub_10060E050(a1, v4, v3);
  v8 = a1[60];
  if (v8)
  {
    v9 = a1[56];
    v10 = a1[59];
    if (v7 && *v7 != **(*(v9 + (((v8 + v10 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v8 + v10 - 1) & 0x1FF)))
    {
      sub_1004F26D8((v7 + 8));
      goto LABEL_8;
    }

    while (1)
    {
      v13 = (v9 + 8 * (v10 >> 9));
      v14 = v10 & 0x1FF;
      a1[61] = *(*v13 + 8 * v14);
      v15 = *(*(*(*(*v13 + 8 * v14) + 16) + ((*(*(*v13 + 8 * v14) + 40) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(*(*v13 + 8 * v14) + 40));
      if (sub_100537CDC(v15) != 1 && sub_100537CDC(v15) != 2)
      {
        break;
      }

      v16 = *(*(a1[56] + ((a1[59] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (a1[59] & 0x1FFLL));
      v17 = sub_1000DEB14(v15);
      sub_10060E050(a1, v17, 0);
      v18 = a1[60];
      if (!v18)
      {
        v11 = a1;
        v12 = v16;
        goto LABEL_16;
      }

      v9 = a1[56];
      v10 = a1[59];
      if (v16 && *v16 != **(*(v9 + (((v18 + v10 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v18 + v10 - 1) & 0x1FF)))
      {
        sub_1004F26D8((v16 + 8));
LABEL_8:
        operator delete();
      }
    }

    v19 = *(*(a1[56] + ((a1[59] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (a1[59] & 0x1FFLL));
    v20 = *(*(v19 + 16) + ((*(v19 + 40) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(v19 + 40);
    ++*(v20 + 8);
    v21 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      v22 = a1[60];
      v23 = *(*(a1[56] + ((a1[59] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (a1[59] & 0x1FFLL));
      v24 = *v23;
      v25 = *(v23 + 6);
      v26 = 136315906;
      v27 = "processAutoConnection";
      v28 = 1024;
      v29 = v24;
      v30 = 2048;
      *v31 = v25;
      *&v31[8] = 2048;
      v32 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s fAutoConnectQueues front type(%d), front devices(%lu), queue size(%lu)", &v26, 0x26u);
    }

    sub_10060D980(a1, v15, v3);
  }

  else
  {
    v11 = a1;
    v12 = v7;
LABEL_16:
    sub_10060E248(v11, v12);
  }
}

void sub_10060E050(uint64_t a1, int a2, int a3)
{
  v6 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 136315394;
    *&v17[4] = "void BT::HIDProfile::updateAutoConnectQueues(BTDeviceType, BTResult)";
    v18 = 1024;
    v19 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s isBaseSystem %d", v17, 0x12u);
  }

  if (!a3 || a3 == 314 || a3 == 310)
  {
    *(a1 + 472) = vaddq_s64(*(a1 + 472), xmmword_1008A6430);
    sub_100374F94(a1 + 440, 1);
    v7 = *(a1 + 480);
    if (!v7)
    {
      return;
    }

    v8 = *(a1 + 472);
    v9 = *(*(*(a1 + 448) + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF));
    *v17 = v9;
    if (a2 == 49)
    {
      if (*v9 != 25)
      {
        return;
      }
    }

    else if (a2 != 25 || *v9 != 49)
    {
      return;
    }

    *(a1 + 472) = v8 + 1;
    *(a1 + 480) = v7 - 1;
    sub_100374F94(a1 + 440, 1);
    v15 = (a1 + 440);
    v16 = v17;
LABEL_20:
    sub_1006102A8(v15, v16);
    return;
  }

  v10 = *(a1 + 480);
  if (v10)
  {
    v11 = *(a1 + 472);
    v12 = *(*(*(a1 + 448) + ((v11 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v11 & 0x1FF));
    v13 = *(v12 + 48);
    if (v13)
    {
      ++*(v12 + 40);
      *(v12 + 48) = v13 - 1;
      sub_1004F2E10(v12 + 8, 1);
      v11 = *(a1 + 472);
      v10 = *(a1 + 480);
    }

    *(a1 + 472) = v11 + 1;
    *(a1 + 480) = v10 - 1;
    sub_100374F94(a1 + 440, 1);
  }

  v14 = *(a1 + 488);
  if (v14 && *(v14 + 48))
  {
    v15 = (a1 + 440);
    v16 = (a1 + 488);
    goto LABEL_20;
  }
}

void sub_10060E248(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "void BT::HIDProfile::cleanupAutoConnection(AutoConnectHIDQueue *)";
    v7 = 1024;
    v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s isBaseSystem %d", &v5, 0x12u);
  }

  if (a2)
  {
    sub_1004F26D8((a2 + 8));
    operator delete();
  }

  *(a1 + 488) = 0;
}

void sub_10060E36C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1000DEB14(*(a1 + 40));

  sub_10060DCE8(v1, v2, 0);
}

void sub_10060E3AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a2 && a4 == 11)
  {
    if (!a5 && (*(a1 + 488) || *(a1 + 496) == 1) && ((sub_10053C854(a2) & 1) != 0 || sub_10053C86C(a2)))
    {
      v25 = 0;
      sub_100016250(&v25);
      v8 = sub_100306DA4((a1 + 500), &v25);
      *(a1 + 500) = v25;
      v9 = qword_100BCEAA0;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000C23E0(a2, v23);
        v10 = v24;
        v11 = v23[0];
        sub_1000BE6F8((a2 + 128), __p);
        v12 = v23;
        if (v10 < 0)
        {
          v12 = v11;
        }

        if (v22 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        *buf = 67109634;
        v27 = v8;
        v28 = 2080;
        v29 = v12;
        v30 = 2082;
        v31 = v13;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "HID Auto Connect Time: took %u ms to connect %s, %{public}s", buf, 0x1Cu);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }

        if (v24 < 0)
        {
          operator delete(v23[0]);
        }
      }
    }

    v14 = sub_1000DEB14(a2);
    v15 = v14;
    v17 = sub_100017F4C(v14, v16);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10060E5E8;
    v18[3] = &unk_100AEC130;
    v18[4] = a1;
    v18[5] = a2;
    v19 = v15;
    v20 = a5;
    sub_10000CA94(v17, v18);
  }
}

void sub_10060E5B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10060E5E8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 488);
  if (v1 && *(*(*(v1 + 16) + ((*(v1 + 40) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(v1 + 40)) == *(a1 + 40))
  {
    v3 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "virtual void BT::HIDProfile::serviceEvent(Device *, BTServiceID, BTServiceSpecificEvent, BTResult)_block_invoke";
      v6 = 1024;
      v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s isBaseSystem %d", &v4, 0x12u);
    }

    if (qword_100B54398 != -1)
    {
      sub_100852508();
    }

    sub_10060DCE8(off_100B54390, *(a1 + 48), *(a1 + 52));
  }
}

void sub_10060E708(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  v6 = v4;
  if (!a3)
  {
    v5 = sub_10060AEB0(v4, v4);
    if (v5)
    {
      sub_10060AF98(v5, v6);
    }
  }
}

void sub_10060E7A8(uint64_t a1, uint64_t a2)
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
    sub_10060E874((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_10060E874(void *a1, char *__src, char *a3)
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

void sub_10060EA10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10060EA48(uint64_t a1, uint64_t a2)
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
    sub_10060EB14((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_10060EB14(void *a1, char *__src, char *a3)
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

void sub_10060ECB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10060ECE8(uint64_t a1, int a2)
{
  if (qword_100B54398 != -1)
  {
    sub_1008518A0();
  }

  v4 = off_100B54390;

  return sub_1006060B4(v4, a1, a2);
}

void sub_10060ED44(uint64_t a1, uint64_t a2)
{
  if (qword_100B54398 != -1)
  {
    sub_1008518A0();
  }

  v4 = off_100B54390;

  sub_100606394(v4, a1, a2);
}

void sub_10060EDA0(__int16 a1, int a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10060F3D4;
  block[3] = &unk_100AE0ED8;
  v7 = a1;
  v6 = a2;
  dispatch_async(v4, block);
}

void sub_10060EE40(int a1)
{
  if (qword_100B54398 != -1)
  {
    sub_1008518A0();
  }

  v2 = off_100B54390;

  sub_100609570(v2, a1);
}

void sub_10060EE94(__int16 a1, char a2, char a3, uint64_t a4, __int16 a5, char a6, char a7)
{
  v14 = dispatch_get_global_queue(0, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10060F42C;
  v15[3] = &unk_100AE0860;
  v16 = a1;
  v18 = a2;
  v19 = a3;
  v15[4] = a4;
  v17 = a5;
  v20 = a6;
  v21 = a7;
  dispatch_async(v14, v15);
}

void sub_10060EF6C(__int16 a1, char a2, uint64_t a3, __int16 a4, int a5)
{
  v10 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10060F490;
  block[3] = &unk_100AEAF08;
  v13 = a1;
  v15 = a2;
  block[4] = a3;
  v14 = a4;
  v12 = a5;
  dispatch_async(v10, block);
}

void sub_10060F02C(uint64_t a1, int a2, uint64_t a3)
{
  if (qword_100B54398 != -1)
  {
    sub_1008518A0();
  }

  v6 = off_100B54390;

  sub_100609718(v6, a1, a2, a3);
}

uint64_t sub_10060F098(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5, uint64_t a6)
{
  if (qword_100B54398 != -1)
  {
    sub_1008518A0();
  }

  v12 = off_100B54390;

  return sub_1006097BC(v12, a1, a2, a3, a4, a5, a6);
}

void sub_10060F124(__int16 a1, uint64_t a2, __int16 a3, int a4)
{
  v8 = dispatch_get_global_queue(0, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10060F4F4;
  v9[3] = &unk_100AE0860;
  v11 = a1;
  v9[4] = a2;
  v12 = a3;
  v10 = a4;
  dispatch_async(v8, v9);
}

void sub_10060F1DC(uint64_t a1)
{
  if (qword_100B54398 != -1)
  {
    sub_1008518A0();
  }

  sub_100609AC4();
}

uint64_t sub_10060F220(uint64_t a1)
{
  v1 = a1;
  if (qword_100B54398 != -1)
  {
    sub_1008518A0();
  }

  v2 = off_100B54390;

  return sub_10060A11C(v2, v1);
}

void sub_10060F274(int *a1, __int16 a2, char a3)
{
  v8 = *a1;
  v9 = *(a1 + 2);
  v5 = dispatch_get_global_queue(0, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10060F548;
  v6[3] = &unk_100AE15D8;
  v7 = a2;
  v10 = a3;
  dispatch_async(v5, v6);
}

void sub_10060F324(int *a1, __int16 a2, char a3)
{
  v8 = *a1;
  v9 = *(a1 + 2);
  v5 = dispatch_get_global_queue(0, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10060F59C;
  v6[3] = &unk_100AE15D8;
  v7 = a2;
  v10 = a3;
  dispatch_async(v5, v6);
}

uint64_t sub_10060F3D4(uint64_t a1)
{
  if (qword_100B54398 != -1)
  {
    sub_1008518A0();
  }

  v2 = off_100B54390;
  v3 = *(a1 + 36);
  v4 = *(a1 + 32);

  return sub_100608AF0(v2, v3, v4);
}

uint64_t sub_10060F42C(uint64_t a1)
{
  if (qword_100B54398 != -1)
  {
    sub_1008518A0();
  }

  v2 = *(a1 + 40);
  v3 = *(a1 + 44);
  v4 = *(a1 + 45);
  v5 = *(a1 + 32);
  v6 = *(a1 + 42);
  v7 = *(a1 + 46);
  v8 = *(a1 + 47);

  return sub_100609B2C(a1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10060F490(uint64_t a1)
{
  if (qword_100B54398 != -1)
  {
    sub_1008518A0();
  }

  v2 = off_100B54390;
  v3 = *(a1 + 44);
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 46);
  v7 = *(a1 + 40);

  return sub_100609CC0(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_10060F4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B54398 != -1)
  {
    sub_1008518A0();
  }

  v4 = *(a1 + 44);
  v5 = *(a1 + 46);
  v6 = *(a1 + 40);

  return sub_1006099B4(a1, v4, a3, v5, v6);
}

void sub_10060F548(uint64_t a1)
{
  if (qword_100B54398 != -1)
  {
    sub_1008518A0();
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  sub_10060A210(a1, a1 + 34, v2, v3);
}

void sub_10060F59C(uint64_t a1)
{
  if (qword_100B54398 != -1)
  {
    sub_1008518A0();
  }

  v2 = off_100B54390;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_10060A5F8(v2, (a1 + 34), v3, v4);
}

void sub_10060F5F8(uint64_t a1, uint64_t a2)
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

void sub_10060F6D0(uint64_t a1, uint64_t a2)
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

uint64_t sub_10060F7A8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 2);
  v3 = *(a2 + 16);
  *(a1 + 16) = v3;
  *(a1 + 25) = *(a2 + 25);
  if (*(a1 + 8) && *(a1 + 24) == 1)
  {
    operator delete[]();
  }

  if (v3)
  {
    operator new[]();
  }

  *(a1 + 24) = 0;
  return a1;
}

uint64_t sub_10060F85C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 24) = 1;
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 2);
  v3 = *(a2 + 16);
  *(a1 + 16) = v3;
  *(a1 + 25) = *(a2 + 25);
  if (v3)
  {
    operator new[]();
  }

  *(a1 + 24) = 0;
  return a1;
}

void sub_10060F8E8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10060F8E8(a1, *a2);
    sub_10060F8E8(a1, a2[1]);
    if (*(a2 + 96) == 1 && a2[10])
    {
      operator delete[]();
    }

    operator delete(a2);
  }
}

char *sub_10060FB6C(void *a1, char *__src, char *a3)
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

void sub_10060FD08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10060FE78(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    sub_10060FF34();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 32);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_10060FFDC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10060FFF8(v3, v2);
  _Unwind_Resume(a1);
}

void sub_10060FFF8(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 96) == 1 && __p[10])
    {
      operator delete[]();
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_100610074(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
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
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_1006100E4(a1, v4);
  return 1;
}

uint64_t *sub_1006100E4(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10002717C(a1, a2);
  if (*(a2 + 96) == 1 && *(a2 + 80))
  {
    operator delete[]();
  }

  operator delete(a2);
  return v3;
}

void sub_1006102A8(unint64_t *result, void *a2)
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
    sub_100610330(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

void sub_100610330(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    sub_1003138F4(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_1003613B4(a1, &v9);
}

void sub_1006104B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void **sub_100610504(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1003A4F88(v6, v10);
    }

    sub_1000C7698();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15++ = v16;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t sub_100610638(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_10002717C(a1, v4);
  operator delete(v4);
  return 1;
}

__n128 sub_1006106BC(unint64_t *a1, __n128 *a2)
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
    sub_100610748(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

void sub_100610748(unint64_t *a1)
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
    sub_100008108(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_1004F3500(a1, &v9);
}

void sub_1006108D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10061091C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C798(a1, a2);
  if ((*(*v3 + 384))(v3))
  {
    if (qword_100B54770 != -1)
    {
      sub_100852C40();
    }

    sub_100612A00(off_100B54768 + 176, a1);
    if (qword_100B512C8 != -1)
    {
      sub_100852C54();
    }

    sub_10036EF4C(off_100B512C0 + 80, a1 + 8);

    sub_1006109E8(a1);
  }
}

void sub_1006109E8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return;
  }

  v2 = @"/var/mobile/Library/ExposureNotification/Advertisements/";
  v3 = sub_10000E92C();
  if ((*(*v3 + 8))(v3))
  {
    v55 = 0;
    v4 = sub_10000E92C();
    sub_100007E30(buf, "ContactTracing");
    sub_100007E30(__p, "databaseFlushInterval");
    v5 = (*(*v4 + 88))(v4, buf, __p, &v55);
    if (v57 < 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v60) < 0)
    {
      operator delete(*buf);
    }

    if (v5)
    {
      v6 = qword_100BCEA30;
      if (os_log_type_enabled(qword_100BCEA30, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v55;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "overriding contact tracing database flush interval: %d", buf, 8u);
      }

      *(a1 + 40) = v55;
    }

    *buf = 0;
    v59 = 0;
    v60 = 0;
    v7 = sub_10000E92C();
    sub_100007E30(__p, "ContactTracing");
    sub_100007E30(v53, "databaseFolderPath");
    v8 = (*(*v7 + 56))(v7, __p, v53, buf);
    if (v54 < 0)
    {
      operator delete(v53[0]);
    }

    if (v57 < 0)
    {
      operator delete(*__p);
      if (v8)
      {
        goto LABEL_15;
      }
    }

    else if (v8)
    {
LABEL_15:
      v9 = qword_100BCEA30;
      if (os_log_type_enabled(qword_100BCEA30, OS_LOG_TYPE_INFO))
      {
        v10 = buf;
        if (v60 < 0)
        {
          v10 = *buf;
        }

        *__p = 136315138;
        *&__p[4] = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "overriding contact tracing database folder path: %s", __p, 0xCu);
      }

      if (v60 >= 0)
      {
        v11 = buf;
      }

      else
      {
        v11 = *buf;
      }

      v2 = [NSString stringWithUTF8String:v11];
      goto LABEL_25;
    }

    v2 = @"/var/mobile/Library/ExposureNotification/Advertisements/";
LABEL_25:
    v52 = 0;
    v12 = sub_10000E92C();
    sub_100007E30(__p, "ContactTracing");
    sub_100007E30(v53, "databaseCacheCount");
    v13 = (*(*v12 + 88))(v12, __p, v53, &v52);
    if (v54 < 0)
    {
      operator delete(v53[0]);
    }

    if (v57 < 0)
    {
      operator delete(*__p);
    }

    v14 = v52;
    if (v52)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    if (v15 == 1)
    {
      v16 = qword_100BCEA30;
      if (os_log_type_enabled(qword_100BCEA30, OS_LOG_TYPE_INFO))
      {
        *__p = 67109120;
        *&__p[4] = v14;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "overriding contact tracing database cache count: %d", __p, 8u);
        v14 = v52;
      }

      *(a1 + 44) = v14;
    }

    v51 = 0;
    v17 = sub_10000E92C();
    sub_100007E30(__p, "ContactTracing");
    sub_100007E30(v53, "scanTimestampOffset");
    v18 = (*(*v17 + 88))(v17, __p, v53, &v51);
    if (v54 < 0)
    {
      operator delete(v53[0]);
    }

    if (v57 < 0)
    {
      operator delete(*__p);
    }

    if (v18)
    {
      v19 = qword_100BCEA30;
      if (os_log_type_enabled(qword_100BCEA30, OS_LOG_TYPE_INFO))
      {
        *__p = 67109120;
        *&__p[4] = v51;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "overriding contact tracing scantimestamp offset: %d", __p, 8u);
      }

      *(a1 + 52) = v51;
    }

    v50 = 0;
    v20 = sub_10000E92C();
    sub_100007E30(__p, "ContactTracing");
    sub_100007E30(v53, "storageFullAlertInterval");
    v21 = (*(*v20 + 88))(v20, __p, v53, &v50);
    if (v54 < 0)
    {
      operator delete(v53[0]);
    }

    if (v57 < 0)
    {
      operator delete(*__p);
    }

    if (v21)
    {
      v22 = qword_100BCEA30;
      if (os_log_type_enabled(qword_100BCEA30, OS_LOG_TYPE_INFO))
      {
        *__p = 67109120;
        *&__p[4] = v50;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "overriding contact tracing storage full alert interval: %d", __p, 8u);
      }

      *(a1 + 48) = v50;
    }

    sub_1006113CC();
    if (SHIBYTE(v60) < 0)
    {
      operator delete(*buf);
    }
  }

  v23 = sub_10000E92C();
  v24 = (*(*v23 + 192))(v23);
  *(a1 + 56) = v24;
  if (v24)
  {
    v25 = sub_10000E92C();
    if ((*(*v25 + 176))(v25))
    {
      v26 = qword_100BCEA30;
      if (os_log_type_enabled(qword_100BCEA30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "enabling insecure database path", buf, 2u);
      }
    }

    v2 = @"/var/mobile/Library/Logs/Bluetooth/ENDatabase";
  }

  v27 = +[NSFileManager defaultManager];
  v49 = 0;
  v28 = [v27 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:&v49];
  v29 = v49;

  if (v28)
  {
    v30 = [NSURL fileURLWithPath:v2];
    v48 = v29;
    v31 = [v30 setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:&v48];
    v32 = v48;

    v29 = v32;
    if (v31)
    {
      v35 = sub_100570E38(v33, v34);
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_1006115F8;
      v45[3] = &unk_100AE1200;
      v47 = a1;
      v46 = v2;
      sub_10000D334(v35, v45);
      *(a1 + 32) = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
    }

    else
    {
      v41 = qword_100BCEA18;
      v42 = os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR);
      if (v42)
      {
        sub_100852CE0(v32, v41);
      }

      v44 = sub_10000F034(v42, v43);
      (*(*v44 + 504))(v44, 1008);
    }
  }

  else
  {
    v36 = sub_10000E92C();
    v37 = (*(*v36 + 176))(v36);
    if (v37)
    {
      v39 = qword_100BCEA30;
      v37 = os_log_type_enabled(qword_100BCEA30, OS_LOG_TYPE_ERROR);
      if (v37)
      {
        sub_100852C68(v29, v39);
      }
    }

    v40 = sub_10000F034(v37, v38);
    (*(*v40 + 504))(v40, 1007);
  }
}

double sub_100611374(uint64_t a1)
{
  *a1 = off_100B01EF8;
  *(a1 + 8) = &off_100B01F28;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *&result = 0x4C400000708;
  *(a1 + 40) = xmmword_1008AA900;
  *(a1 + 56) = 0;
  return result;
}

void sub_1006113CC()
{
  __p[0] = 0;
  __p[1] = 0;
  v15 = 0;
  v0 = sub_100017E6C();
  (*(*v0 + 176))(v0, __p);
  if (v15 >= 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  v2 = [NSString stringWithUTF8String:v1];
  v3 = [v2 stringByAppendingPathComponent:@"/Library/ContactTracingDatabase"];

  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    v13 = 0;
    v7 = [v6 removeItemAtPath:v3 error:&v13];
    v8 = v13;

    if ((v7 & 1) == 0)
    {
      v9 = qword_100BCEA18;
      if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
      {
        v10 = [v8 localizedDescription];
        v11 = v10;
        v12 = [v10 UTF8String];
        *buf = 136315138;
        v17 = v12;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to cleanup original database directory (%s)", buf, 0xCu);
      }
    }
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100611584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_1006115F8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [[ENAdvertisementDatabase alloc] initWithDatabaseFolderPath:*(a1 + 32) cacheCount:*(v1 + 44) errorMetricReporter:&stru_100B01F50];
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;

  if ((*(v1 + 56) & 1) == 0 && [*(v1 + 24) currentStoreType] == 1)
  {
    [*(v1 + 24) mergeStoresFromFolderPath:@"/var/mobile/Library/Logs/Bluetooth/ENDatabase"];
  }

  v5 = *(v1 + 24);
  LODWORD(v4) = *(v1 + 48);
  v6 = v4;

  return [v5 setStorageFullAlertInterval:v6];
}

void sub_10061168C(id a1, unsigned int a2)
{
  v2 = *(*sub_10000F034(a1, *&a2) + 504);

  v2();
}

id sub_1006116EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCEA30;
  if (os_log_type_enabled(qword_100BCEA30, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "purging advertisements older than %@", &v7, 0xCu);
  }

  v5 = [*(a1 + 24) purgeAdvertismentsSeenBeforeDate:v3];

  return v5;
}

uint64_t sub_1006117D0()
{
  v0 = +[NSFileManager defaultManager];
  v1 = [v0 fileExistsAtPath:@"/var/mobile/Library/Logs/Bluetooth/ENDatabase/sysdiagnose"];

  if (!v1)
  {
    return 1;
  }

  v2 = qword_100BCEA30;
  if (os_log_type_enabled(qword_100BCEA30, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "purging database clones", v6, 2u);
  }

  v3 = +[NSFileManager defaultManager];
  v4 = [v3 removeItemAtPath:@"/var/mobile/Library/Logs/Bluetooth/ENDatabase/sysdiagnose" error:0];

  return v4;
}

uint64_t sub_1006118B4(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v3 = sub_100570E38(a1, a2);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10061197C;
  v6[3] = &unk_100AE25F0;
  v6[4] = &v7;
  v6[5] = a1;
  sub_10000D334(v3, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_100611964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10061197C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ((sub_1006117D0() & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
    {
      sub_100852D58();
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  if (*(v2 + 56))
  {
    v3 = @"/var/mobile/Library/ExposureNotification/Advertisements/";
  }

  else
  {
    v3 = @"/var/mobile/Library/Logs/Bluetooth/ENDatabase";
  }

  v4 = v3;
  if (([ENAdvertisementDatabase purgeAllStoresInPath:v4]& 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  if (([*(v2 + 24) purgeAllStoresInActiveDatabasePath] & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_100611A54(uint64_t a1, uint64_t a2)
{
  v3 = sub_100570E38(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100611AD0;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000CA94(v3, v4);
}

id sub_100611AD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ([*(v1 + 24) currentStoreType] != 1)
  {
    [*(v1 + 24) switchToCentralStore];
  }

  result = [*(v1 + 24) currentStoreType];
  if (result == 1)
  {
    result = [*(v1 + 24) temporaryStoresPresent];
    if (result)
    {
      result = [*(v1 + 24) mergeTemporaryStores];
    }

    if ((*(v1 + 56) & 1) == 0)
    {
      v3 = *(v1 + 24);

      return [v3 mergeStoresFromFolderPath:@"/var/mobile/Library/Logs/Bluetooth/ENDatabase"];
    }
  }

  return result;
}

void sub_100611B5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCEA30;
  v5 = os_log_type_enabled(qword_100BCEA30, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "xpc activity triggered database purge", buf, 2u);
  }

  v7 = sub_100570E38(v5, v6);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100611C6C;
  v9[3] = &unk_100AE1200;
  v11 = a1;
  v8 = v3;
  v10 = v8;
  sub_10000D334(v7, v9);
}

void sub_100611C6C(uint64_t a1)
{
  if ((sub_1006116EC(*(a1 + 40), *(a1 + 32)) & 1) == 0 && os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
  {
    sub_100852D8C();
  }

  if ((sub_1006117D0() & 1) == 0 && os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
  {
    sub_100852DC0();
  }
}

id sub_100611CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000423AC;
  v15 = sub_10004266C;
  v16 = 0;
  v6 = sub_100570E38(a1, a2);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100611E10;
  v9[3] = &unk_100B01F78;
  v9[4] = &v11;
  v9[5] = a1;
  v10 = v4;
  v9[6] = a3;
  sub_10000D334(v6, v9);
  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

void sub_100611DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_100611E10(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 40) + 24) createQuerySessionWithAttenuationThreshold:*(a1 + 56) queue:*(sub_100570E38(a1 error:{a2) + 8), *(a1 + 48)}];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t sub_100611E80(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = sub_100570E38(a1, a2);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100611F44;
  v6[3] = &unk_100AE25F0;
  v6[4] = &v7;
  v6[5] = a1;
  sub_10000D334(v3, v6);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_100611F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100611F44(uint64_t a1)
{
  v2 = [*(*(a1 + 40) + 24) storedAdvertisementCount];
  *(*(*(a1 + 32) + 8) + 24) = [v2 unsignedIntValue];
}

void sub_100611FB8(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, int a6, int a7, double a8)
{
  v12 = a4;
  v15 = a2;
  v16 = a3;
  v17 = sub_10000E92C();
  v18 = (*(*v17 + 184))(v17);
  if (v18)
  {
    v20 = qword_100BCEA30;
    v18 = os_log_type_enabled(qword_100BCEA30, OS_LOG_TYPE_INFO);
    if (v18)
    {
      *buf = 138414082;
      v34 = v15;
      v35 = 2112;
      v36 = v16;
      v37 = 1024;
      v38 = v12;
      v39 = 1024;
      v40 = SHIBYTE(v12);
      v41 = 1024;
      v42 = a5;
      v43 = 1024;
      v44 = a6;
      v45 = 2048;
      v46 = a8;
      v47 = 1024;
      v48 = a7;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "saving contact tracing advertisement data:%@ encryptedAEM:%@ avgRSSI:%d maxRSSI:%d reportCount:%d saturated:%d timestamp:%f deltaSinceLastStop:%d", buf, 0x3Eu);
    }
  }

  v21 = sub_100570E38(v18, v19);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100612200;
  v24[3] = &unk_100B01FA0;
  v27 = a1;
  v28 = a8;
  v22 = v15;
  v25 = v22;
  v23 = v16;
  v26 = v23;
  v29 = a7;
  v30 = v12;
  v31 = a6;
  v32 = a5;
  sub_10000CA94(v21, v24);
}

void sub_100612200(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = sub_10000E92C();
  if ((*(*v4 + 8))(v4))
  {
    v3 = v3 + *(v2 + 52);
  }

  v5 = [ENAdvertisement alloc];
  LOBYTE(v12) = *(a1 + 69);
  v6 = [v5 initWithRPI:*(a1 + 32) encryptedAEM:*(a1 + 40) timestamp:*(a1 + 64) scanInterval:*(a1 + 66) typicalRSSI:*(a1 + 67) maxRSSI:*(a1 + 68) saturated:v3 counter:v12];
  [*(v2 + 24) saveContactTracingAdvertisement:v6];
  v7 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  if (v7 > *(v2 + 32) + 1000000000 * *(v2 + 40))
  {
    v8 = sub_10000E92C();
    if ((*(*v8 + 176))(v8))
    {
      v9 = qword_100BCEA30;
      if (os_log_type_enabled(qword_100BCEA30, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(v2 + 32);
        v11 = *(v2 + 40);
        *buf = 134218496;
        v14 = v7;
        v15 = 2048;
        v16 = v10;
        v17 = 1024;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "database flush interval hit flushTime:%llu lastFlush:%llu flushInterval:%u", buf, 0x1Cu);
      }
    }

    [*(v2 + 24) flushCache];
    *(v2 + 32) = v7;
  }
}

void sub_1006123D8(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 4)
  {
    v7[7] = v3;
    v7[8] = v4;
    v6 = sub_100570E38(a1, a2);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100612460;
    v7[3] = &unk_100ADF8F8;
    v7[4] = a1;
    sub_10000D334(v6, v7);
  }
}

__uint64_t sub_100612460(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  v3 = sub_10000E92C();
  if ((*(*v3 + 176))(v3))
  {
    v4 = qword_100BCEA30;
    if (os_log_type_enabled(qword_100BCEA30, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v1 + 32);
      v7 = 134218240;
      v8 = v2;
      v9 = 2048;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "flush database due to power off flushTime:%llu lastFlush:%llu", &v7, 0x16u);
    }
  }

  [*(v1 + 24) flushCache];
  result = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  *(v1 + 32) = result;
  return result;
}

void sub_100612570(uint64_t a1, uint64_t a2)
{
  v3 = sub_100570E38(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006125EC;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000D334(v3, v4);
}

void sub_1006125EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_10000E92C();
  if ((*(*v2 + 176))(v2))
  {
    v3 = qword_100BCEA30;
    if (os_log_type_enabled(qword_100BCEA30, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "statedump: ---------------- ContactTracing Database ----------------", &v11, 2u);
    }
  }

  v4 = sub_10000E92C();
  if ((*(*v4 + 176))(v4))
  {
    v5 = qword_100BCEA30;
    if (os_log_type_enabled(qword_100BCEA30, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(v1 + 24) storedAdvertisementCount];
      v7 = [v6 intValue];
      v11 = 67109120;
      LODWORD(v12) = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: Record Count:%d", &v11, 8u);
    }
  }

  v8 = sub_10000E92C();
  if ((*(*v8 + 176))(v8))
  {
    v9 = qword_100BCEA30;
    if (os_log_type_enabled(qword_100BCEA30, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(v1 + 24) droppedAdvertisementCount];
      v11 = 134217984;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "statedump: Filtered Advertisements:%lu", &v11, 0xCu);
    }
  }
}

uint64_t sub_1006127E8(uint64_t a1, std::string *a2)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    v10 = qword_100BCEA18;
    if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "database clone not allowed", buf, 2u);
    }

    return 0;
  }

  v4 = +[NSFileManager defaultManager];
  v5 = [v4 createDirectoryAtPath:@"/var/mobile/Library/Logs/Bluetooth/ENDatabase/sysdiagnose" withIntermediateDirectories:1 attributes:0 error:0];

  if ((v5 & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
    {
      sub_100852DF4();
    }

    return 0;
  }

  *buf = 0;
  v14 = buf;
  v15 = 0x2020000000;
  v16 = 0;
  v8 = sub_100570E38(v6, v7);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1006129BC;
  v12[3] = &unk_100AE25F0;
  v12[4] = buf;
  v12[5] = a1;
  sub_10000D334(v8, v12);
  v9 = v14[24];
  if (v9)
  {
    std::string::assign(a2, "/var/mobile/Library/Logs/Bluetooth/ENDatabase/sysdiagnose");
  }

  else if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
  {
    sub_100852E28();
  }

  _Block_object_dispose(buf, 8);
  return v9;
}

id sub_1006129BC(uint64_t a1)
{
  result = [*(*(a1 + 40) + 24) cloneDatabaseTo:@"/var/mobile/Library/Logs/Bluetooth/ENDatabase/sysdiagnose"];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_100612A00(uint64_t a1, uint64_t a2)
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
        goto LABEL_6;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_6:
    v6 = a2;
    sub_100612A8C((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_100612A8C(void *a1, char *__src, char *a3)
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

void sub_100612C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100612EC0(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_100613140(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_100613764(uint64_t a1)
{
  *sub_100589578(a1, "HidService", 32) = &off_100B02030;
  if (qword_100B54398 != -1)
  {
    sub_100852EB0();
  }

  sub_100589880(a1, off_100B54390);
  return a1;
}

uint64_t sub_1006137F4(uint64_t a1, _WORD *a2)
{
  v33 = xmmword_1008AA820;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v28 = 0;
  v29 = 0;
  if ((sub_10053BFB4(a2, &v33, 0x206u, &v30) & 1) == 0)
  {
    goto LABEL_35;
  }

  if (v30 == v31)
  {
LABEL_20:
    LODWORD(v6) = 0;
    v7 = 0;
    goto LABEL_21;
  }

  v3 = v30 + 2;
  while (1)
  {
    v4 = v3 - 2;
    if (*(v3 - 2) != 6)
    {
      if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
      {
        sub_100852EC4(&v26, v27);
      }

      goto LABEL_19;
    }

    if (*v3 != 2)
    {
      if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
      {
        sub_100852EC4(&v24, v25);
      }

      goto LABEL_19;
    }

    v5 = *(v3 + 6);
    if (*v5 != 1)
    {
      if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
      {
        sub_100852EC4(&v22, v23);
      }

      goto LABEL_19;
    }

    if (*(v5 + 8) != 34)
    {
      if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
      {
        sub_100852EF0(&v20, v21);
      }

      goto LABEL_19;
    }

    if (*(v5 + 16) == 4)
    {
      break;
    }

    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100852EC4(&v18, v19);
    }

LABEL_19:
    v3 += 16;
    if (v4 + 16 == v31)
    {
      goto LABEL_20;
    }
  }

  v6 = *(v5 + 18);
  v14 = *(v5 + 24);
  v15 = malloc_type_malloc(v6, 0x100004077774924uLL);
  v7 = v15;
  if (v15)
  {
    memcpy(v15, v14, v6);
  }

  else
  {
    LODWORD(v6) = 0;
  }

LABEL_21:
  for (i = v30; i != v31; i += 16)
  {
    *buf = 0;
    *&buf[8] = 0;
    *buf = *i;
    sub_10037D4F4(buf);
  }

  if (!v7)
  {
LABEL_35:
    v11 = 1;
    goto LABEL_42;
  }

  sub_100613CB8(a2, 0x201u, &v29 + 1);
  sub_100613CB8(a2, 0x205u, &v29);
  sub_100613CB8(a2, 0x202u, &v28 + 1);
  sub_100613CB8(a2, 0x203u, &v28);
  v9 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v10 = v17 >= 0 ? __p : __p[0];
    *buf = 136316418;
    *&buf[4] = v10;
    *&buf[12] = 1024;
    *&buf[14] = HIWORD(v29);
    v35 = 1024;
    v36 = v29;
    v37 = 1024;
    v38 = HIWORD(v28);
    v39 = 1024;
    v40 = v28;
    v41 = 1024;
    v42 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Caching HID info for %s: vendorID=0x%x vendorIDSource=0x%x productID=0x%x version=0x%x descriptorSize=%u", buf, 0x2Au);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v6 > 0x1000)
  {
    v12 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      *&buf[4] = v6;
      _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Read HID descriptor size %u from SDP which is too large!", buf, 8u);
      v12 = qword_100BCEAA0;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100852F1C(v6, v12);
    }

    v11 = 1;
  }

  else
  {
    sub_10000C704(buf, v7, v6);
    sub_10053C5E0(a2, buf, SHIWORD(v29), v29, SHIWORD(v28), v28);
    *buf = &off_100AE0A78;
    if (*&buf[8])
    {
      sub_10000C808(*&buf[8]);
    }

    v11 = 0;
  }

  free(v7);
LABEL_42:
  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  return v11;
}

void sub_100613C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100613CB8(uint64_t a1, unsigned int a2, _WORD *a3)
{
  v11[0] = 131075;
  v11[1] = 4608;
  __p = 0;
  v9 = 0;
  v10 = 0;
  v4 = sub_10053BFB4(a1, v11, a2, &__p);
  v5 = __p;
  if (v4)
  {
    v6 = v9;
    if (v9 - __p == 16 && *(__p + 1) == 2)
    {
      *a3 = *(__p + 2);
    }

    if (v5 != v6)
    {
      do
      {
        *v7 = *v5;
        sub_10037D4F4(v7);
        ++v5;
      }

      while (v5 != v9);
      v5 = __p;
    }
  }

  if (v5)
  {
    v9 = v5;
    operator delete(v5);
  }
}

void sub_100613D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100613D98(uint64_t a1, _WORD *a2)
{
  v15 = xmmword_1008AA820;
  v14 = 0;
  memset(v17, 0, sizeof(v17));
  v13 = 0;
  v12 = 0;
  if (sub_10053C3E8(a2))
  {
    v4 = sub_10053A020(a2, &v15, 4u);
    if (v4)
    {
      sub_1006137F4(v4, a2);
      goto LABEL_4;
    }

LABEL_14:
    v5 = 1;
    goto LABEL_16;
  }

  v6 = sub_10054BE34(a2, v17, &v13);
  if (v13)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v5 = 4 * (sub_10024A9C0(v17, 4388, &v12) == 0);
    goto LABEL_16;
  }

  if (!sub_1005379CC(a2, &v14))
  {
    v5 = 0;
    goto LABEL_16;
  }

  if ((v14 & 0x1F00) != 0x500)
  {
    v8 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Service is not capable because major is not peripheral", &v11, 2u);
    }

    goto LABEL_14;
  }

LABEL_4:
  v5 = 4;
LABEL_16:
  v9 = *(a1 + 32);
  v16 = 0;
  sub_100016250(&v16);
  *&v11 = v16;
  *(&v11 + 1) = SWORD2(v16);
  return sub_100539554(a2, v9, v5, &v11, 0);
}

void sub_100613F54(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v20 = xmmword_1008AA820;
  memset(v23, 0, sizeof(v23));
  v19 = 0;
  v17 = 0;
  v18 = 0;
  *a3 = 0;
  sub_10053C64C(a2);
  v5 = sub_1005379CC(a2, &v17);
  if (v5)
  {
    if ((v17 & 0x1F00) != 0x500)
    {
      return;
    }

    if ((v17 & 0x40) != 0)
    {
      goto LABEL_14;
    }

    if ((v17 & 0x80) == 0)
    {
      if (sub_1000DEB14(a2) != 26)
      {
        return;
      }

      goto LABEL_14;
    }

    v7 = sub_10000C798(v5, v6);
    v8 = (*(*v7 + 392))(v7);
    if ((v8 & 1) != 0 || (v10 = sub_10000C798(v8, v9), (*(*v10 + 456))(v10)))
    {
      v11 = qword_100BCEAA0;
      if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000C23E0(a2, __p);
        if (v16 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        *buf = 136315138;
        v22 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Allowing HID Pointing Device %s", buf, 0xCu);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }
      }

      goto LABEL_14;
    }

    v13 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000DEEA4(a2, __p);
      v14 = v16 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Rejecting HID Pointing Device %s", buf, 0xCu);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    if (sub_10053C3E8(a2))
    {
      if (!sub_10053A020(a2, &v20, 4u))
      {
        return;
      }

      goto LABEL_14;
    }

    if (sub_10054BE34(a2, v23, &v19) && v19 && !sub_10024A9C0(v23, 4388, &v18) || sub_1000DEB14(a2) == 24)
    {
LABEL_14:
      *a3 = 1;
    }
  }
}

uint64_t sub_100614220(uint64_t a1, unint64_t a2, const char *a3)
{
  if (!(*(*a1 + 32))(a1))
  {
    return 105;
  }

  if (strcmp(a3, "BT_KEY_HID_VIRTUAL_CABLE_UNPLUG"))
  {
    return 2;
  }

  v7 = 0;
  sub_1000216B4(&v7);
  if (qword_100B54398 != -1)
  {
    sub_100852F94();
  }

  v5 = sub_1006027B0(off_100B54390, a2);
  sub_10002249C(&v7);
  return v5;
}

uint64_t sub_1006142F0(uint64_t a1, _BYTE *a2, int a3, char a4)
{
  sub_10053CBF0(a2, a3 != 0, a4);
  if (qword_100B50F68 != -1)
  {
    sub_100852FBC();
  }

  result = sub_1005306DC(off_100B50F60, a2, 32);
  if (result)
  {
    if (qword_100B54398 != -1)
    {
      sub_100852EB0();
    }

    v6 = off_100B54390;

    return sub_100605058(v6, a2);
  }

  return result;
}

void sub_100614398(uint64_t a1)
{
  sub_100589670(a1);

  operator delete();
}

uint64_t sub_1006144A0(unint64_t *a1)
{
  if (qword_100B50B88 != -1)
  {
    sub_1000A2C90();
  }

  result = sub_100079604(qword_100B50B80, *a1);
  if (!result)
  {
    *a1 = 0;
  }

  return result;
}

void sub_100614558(uint64_t a1)
{
  *a1 = off_100B02198;
  *(a1 + 8) = off_100B021E8;
  *(a1 + 16) = &off_100B02208;
  sub_100044BBC((a1 + 24));
  *(a1 + 88) = 0;
  operator new();
}

void *sub_100614650(void *a1)
{
  *a1 = off_100B02198;
  a1[1] = off_100B021E8;
  a1[2] = &off_100B02208;
  v2 = a1[12];
  if (v2)
  {
    sub_1005711C4(v2);
    operator delete();
  }

  sub_10007A068((a1 + 3));
  return a1;
}

void sub_1006146FC(void *a1)
{
  sub_100614650(a1);

  operator delete();
}

uint64_t sub_100614734(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1 + 24);
  sub_100570C90(*(a1 + 96), QOS_CLASS_USER_INITIATED);
  if (qword_100B50B88 != -1)
  {
    sub_100852FD0();
  }

  sub_10051ABE0(qword_100B50B80 + 8, a1 + 8);
  if (qword_100B50AA0 != -1)
  {
    sub_100852FF8();
  }

  sub_100312650(off_100B50A98 + 64, a1 + 16);
  return sub_1000088CC(v3);
}

uint64_t sub_1006147EC(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1 + 24);
  sub_100571164(*(a1 + 96));
  if (qword_100B50B88 != -1)
  {
    sub_100852FD0();
  }

  sub_10007A3F0(qword_100B50B80 + 8, a1 + 8);
  if (qword_100B50AA0 != -1)
  {
    sub_100852FF8();
  }

  sub_10007A3F0(off_100B50A98 + 64, a1 + 16);
  return sub_1000088CC(v3);
}

uint64_t sub_1006148A0(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1 + 24);
  *(a1 + 88) = 1;
  return sub_1000088CC(v3);
}

uint64_t sub_1006148E8(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1 + 8);
  *(a1 + 72) = 1;
  return sub_1000088CC(v3);
}

uint64_t sub_100614930(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CallbackManager::stackWillStop enter", buf, 2u);
  }

  *buf = 0;
  v7 = 0;
  sub_100007F88(buf, a1 + 24);
  *(a1 + 88) = 0;
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CallbackManager::stackWillStop exit", v5, 2u);
  }

  return sub_1000088CC(buf);
}

uint64_t sub_100614A04(uint64_t a1, _BYTE *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 24);
  sub_100070A6C(*(a1 + 96), a2);
  return sub_1000088CC(v5);
}

void sub_100614A70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 24);
  sub_10000CA94(*(a1 + 96), v3);
  sub_1000088CC(v4);
}

void sub_100614AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100614BB8@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v36[0] = 0;
  v36[1] = 0;
  sub_100007F88(v36, a1);
  v4 = *(a1 + 103);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = *(a1 + 80);
    v6 = *(a1 + 88);
    if (!v6)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = (a1 + 80);
    v6 = *(a1 + 103);
    if (!*(a1 + 103))
    {
      goto LABEL_17;
    }
  }

  v7 = &v5[v6];
  v8 = v5;
  v9 = v7;
  do
  {
    if (*v8 == 45)
    {
      v10 = &_mh_execute_header.magic + 1;
      while (v10 != 8)
      {
        if (&v8[v10] == v7)
        {
          goto LABEL_15;
        }

        v11 = v8[v10];
        v12 = aCentral_1[v10++];
        if (v11 != v12)
        {
          goto LABEL_7;
        }
      }

      v9 = v8;
    }

LABEL_7:
    ++v8;
  }

  while (v8 != v7);
LABEL_15:
  if (v9 != v7)
  {
    v13 = v9 - v5;
    if (v9 - v5 != -1)
    {
      goto LABEL_63;
    }
  }

LABEL_17:
  if ((v4 & 0x80000000) == 0)
  {
    v14 = (a1 + 80);
    v15 = *(a1 + 103);
    if (!*(a1 + 103))
    {
      goto LABEL_33;
    }

LABEL_21:
    v16 = &v14[v15];
    v17 = v14;
    v18 = v16;
    do
    {
      if (*v17 == 45)
      {
        v19 = &_mh_execute_header.magic + 1;
        while (v19 != 11)
        {
          if (&v17[v19] == v16)
          {
            goto LABEL_31;
          }

          v20 = v17[v19];
          v21 = aPeripheral_1[v19++];
          if (v20 != v21)
          {
            goto LABEL_23;
          }
        }

        v18 = v17;
      }

LABEL_23:
      ++v17;
    }

    while (v17 != v16);
LABEL_31:
    if (v18 != v16)
    {
      v13 = v18 - v14;
      if (v18 - v14 != -1)
      {
        goto LABEL_63;
      }
    }

    goto LABEL_33;
  }

  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  if (v15)
  {
    goto LABEL_21;
  }

LABEL_33:
  if ((v4 & 0x80000000) != 0)
  {
    v22 = *(a1 + 80);
    v23 = *(a1 + 88);
    if (!v23)
    {
LABEL_49:
      if ((v4 & 0x80000000) != 0)
      {
        v30 = *(a1 + 80);
        v31 = *(a1 + 88);
      }

      else
      {
        v30 = (a1 + 80);
        v31 = *(a1 + 103);
      }

      if (v31 >= 1)
      {
        v32 = &v30[v31];
        v33 = v30;
        do
        {
          v34 = memchr(v33, 45, v31);
          if (!v34)
          {
            break;
          }

          if (*v34 == 45)
          {
            if (v34 != v32)
            {
              v13 = v34 - v30;
              if (v34 - v30 != -1)
              {
                goto LABEL_63;
              }
            }

            break;
          }

          v33 = v34 + 1;
          v31 = v32 - v33;
        }

        while (v32 - v33 >= 1);
      }

      if ((v4 & 0x80000000) != 0)
      {
        v13 = *(a1 + 88);
      }

      else
      {
        v13 = v4;
      }

      goto LABEL_63;
    }
  }

  else
  {
    v22 = (a1 + 80);
    v23 = *(a1 + 103);
    if (!*(a1 + 103))
    {
      goto LABEL_49;
    }
  }

  v24 = &v22[v23];
  v25 = v22;
  v26 = v24;
  do
  {
    if (*v25 == 45)
    {
      v27 = &_mh_execute_header.magic + 1;
      while (v27 != 13)
      {
        if (&v25[v27] == v24)
        {
          goto LABEL_47;
        }

        v28 = v25[v27];
        v29 = aScalablepipe[v27++];
        if (v28 != v29)
        {
          goto LABEL_39;
        }
      }

      v26 = v25;
    }

LABEL_39:
    ++v25;
  }

  while (v25 != v24);
LABEL_47:
  if (v26 == v24)
  {
    goto LABEL_49;
  }

  v13 = v26 - v22;
  if (v26 - v22 == -1)
  {
    goto LABEL_49;
  }

LABEL_63:
  std::string::basic_string(a2, (a1 + 80), 0, v13, &v37);
  return sub_1000088CC(v36);
}

void sub_100614E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100614E78(uint64_t a1, const std::string *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  std::string::operator=((a1 + 80), a2);
  return sub_1000088CC(v5);
}

void sub_100614EDC(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = qword_100BCE8D8;
  v4 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (!v4)
    {
      return;
    }

    v5 = *(a1 + 64);
    v6 = (a1 + 80);
    if (*(a1 + 103) < 0)
    {
      v6 = *v6;
    }

    sub_100025284(a1, __p);
    if (v13 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 134218498;
    v15 = v5;
    v16 = 2082;
    v17 = v6;
    v18 = 2082;
    v19 = v7;
    v8 = "statedump: SM: %p Detached %{public}s type:%{public}s";
  }

  else
  {
    if (!v4)
    {
      return;
    }

    v9 = *(a1 + 64);
    v10 = (a1 + 80);
    if (*(a1 + 103) < 0)
    {
      v10 = *v10;
    }

    sub_100025284(a1, __p);
    if (v13 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *buf = 134218498;
    v15 = v9;
    v16 = 2082;
    v17 = v10;
    v18 = 2082;
    v19 = v11;
    v8 = "statedump: SM: %p Attached %{public}s type:%{public}s";
  }

  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v8, buf, 0x20u);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_100615064(uint64_t a1)
{
  v2 = sub_10032F49C(a1, 26);
  *v2 = off_100B022A8;
  *(v2 + 272) = 0;
  *(v2 + 280) = 0;
  *(v2 + 256) = off_100B02368;
  *(v2 + 264) = v2 + 272;
  sub_100044BBC((v2 + 288));
  sub_100364534((a1 + 352));
  return a1;
}

void sub_1006150E8(_Unwind_Exception *a1)
{
  sub_10007A068(v1 + 288);
  sub_10000CEDC(v1 + 264, *(v1 + 272));
  sub_10032F580(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10061511C(uint64_t a1)
{
  *a1 = off_100B022A8;
  *(a1 + 256) = off_100B02368;
  sub_1003645A0((a1 + 352));
  sub_10007A068(a1 + 288);
  sub_10000CEDC(a1 + 264, *(a1 + 272));

  return sub_10032F580(a1);
}

void sub_1006151AC(uint64_t a1)
{
  sub_10061511C(a1);

  operator delete();
}

void sub_100615204(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCEA50;
  if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "LEConnectedAudioProfile::streamWillStart", buf, 2u);
  }

  v5 = *(a2 + 408);
  sub_10004DFB4(buf, v5);
  v11 = buf;
  v6 = sub_10061712C((a1 + 264), buf, &unk_1008A9BD0, &v11, &v10)[6];

  *buf = 0;
  v13 = 0;
  v7 = sub_100007F88(buf, a1 + 288);
  if (*(v6 + 160) == 1)
  {
    sub_1006153B0(v7, v6);
  }

  v8 = +[BluetoothAudiodConnection sharedInstance];
  [v8 notifyStreamWillStart:*(a2 + 408)];

  if (!sub_10002220C((a1 + 352), buf, 0x2710uLL))
  {
    v9 = qword_100BCEA50;
    if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_ERROR))
    {
      sub_100853020(v9);
    }
  }

  sub_1005FF188(v6, a2);
}

void sub_10061537C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1006153B0(uint64_t a1, uint64_t a2)
{
  v3 = qword_100BCEA50;
  if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_10004DF60((a2 + 80));
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Initializing Codec Config for session %@", &v12, 0xCu);
  }

  v5 = *(a2 + 196);
  v6 = sub_10004DF60((a2 + 80));
  v7 = +[NSMutableDictionary dictionary];
  v8 = [NSNumber numberWithUnsignedInteger:(v5 - 513)];
  [v7 setObject:v8 forKey:@"kCodecConfigID"];

  v9 = [NSNumber numberWithBool:v5 < 517];
  [v7 setObject:v9 forKey:@"kRequiresInput"];

  if (v5 >= 517)
  {
    [NSNumber numberWithInt:1];
  }

  else
  {
    [NSNumber numberWithInt:2];
  }
  v10 = ;
  [v7 setObject:v10 forKey:@"kContentType"];

  v11 = +[BluetoothAudiodConnection sharedInstance];
  [v11 updateCodecConfigForSession:v6 withCodecInfo:v7];

  *(a2 + 160) = 0;
}

uint64_t sub_10061560C(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCEA50;
  if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "LEConnectedAudioProfile::streamDidStop", buf, 2u);
  }

  v5 = *(a2 + 408);
  sub_10004DFB4(buf, v5);
  v11 = buf;
  v6 = sub_10061712C((a1 + 264), buf, &unk_1008A9BD0, &v11, &v10)[6];

  *buf = 0;
  v13 = 0;
  sub_100007F88(buf, a1 + 288);
  *(v6 + 208) = 0;
  v7 = +[BluetoothAudiodConnection sharedInstance];
  [v7 notifyStreamWillStop:*(a2 + 408)];

  if (!sub_10002220C((a1 + 352), buf, 0x2710uLL))
  {
    v8 = qword_100BCEA50;
    if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_ERROR))
    {
      sub_100853064(v8);
    }
  }

  return sub_1000088CC(buf);
}

void sub_100615768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1006157AC(uint64_t a1, uint64_t a2, float a3)
{
  v6 = qword_100BCEA50;
  if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "LEConnectedAudioProfile::volumeDidUpdate new Volume Value %f", &v12, 0xCu);
  }

  v7 = *(a2 + 408);
  sub_10004DFB4(&v12, v7);
  v8 = sub_10004E34C(a1 + 264, &v12);

  if (a1 + 272 != v8)
  {
    v9 = *(v8 + 48);
    if (*(v9 + 200) != a3)
    {
      *(v9 + 200) = a3;
      v10 = +[BluetoothAudiodConnection sharedInstance];
      *&v11 = a3;
      [v10 updateVolumeForSession:*(a2 + 408) withVolume:v11];
    }
  }
}

void sub_100615908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_100BCEA50;
  if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "LEConnectedAudioProfile::muteDidUpdate new mute Value %d", v11, 8u);
  }

  v7 = *(a2 + 408);
  sub_10004DFB4(v11, v7);
  v8 = sub_10004E34C(a1 + 264, v11);

  if (a1 + 272 != v8)
  {
    v9 = *(v8 + 48);
    if (*(v9 + 204) != a3)
    {
      *(v9 + 204) = a3;
      v10 = +[BluetoothAudiodConnection sharedInstance];
      [v10 updateMicrophoneForSession:*(a2 + 408) withMute:a3];
    }
  }
}

void sub_100615A58(uint64_t a1, uint64_t a2, int a3)
{
  v6 = qword_100BCEA50;
  if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "LEConnectedAudioProfile::selectCodec new codec %x", buf, 8u);
  }

  v7 = *(a2 + 408);
  sub_10004DFB4(buf, v7);
  v10 = buf;
  v8 = sub_10061712C((a1 + 264), buf, &unk_1008A9BD0, &v10, &v9)[6];

  if (*(v8 + 196) != a3)
  {
    *(v8 + 196) = a3;
    *(v8 + 160) = 1;
  }
}

void sub_100615E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100615EE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = sub_100570F18(v6, v7);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100615FEC;
  v11[3] = &unk_100AE25C8;
  v14 = a1;
  v9 = v5;
  v12 = v9;
  v10 = v6;
  v13 = v10;
  sub_10000CA94(v8, v11);
}

void sub_100615FEC(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = (a1 + 32);
  sub_10004DFB4(uu2, *(a1 + 32));
  if (v1 + 272 == sub_10004E34C(v1 + 264, uu2))
  {
    operator new();
  }

  v3 = qword_100BCEA50;
  if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_ERROR))
  {
    sub_1008530A8(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void sub_100616118(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = sub_100570F18(v6, v7);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10061621C;
  v11[3] = &unk_100AE25C8;
  v14 = a1;
  v9 = v5;
  v12 = v9;
  v10 = v6;
  v13 = v10;
  sub_10000CA94(v8, v11);
}

void sub_10061621C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = (a1 + 32);
  sub_10004DFB4(uu2, *(a1 + 32));
  if (v2 + 272 == sub_10004E34C(v2 + 264, uu2))
  {
    v5 = qword_100BCEA50;
    if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_ERROR))
    {
      sub_1008530A8(v3, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  else
  {
    sub_10004DFB4(uu2, *(a1 + 32));
    v13 = uu2;
    v4 = sub_10061712C((v2 + 264), uu2, &unk_1008A9BD0, &v13, &v12);
    sub_1005FE994(v4[6], *(a1 + 40));
  }
}