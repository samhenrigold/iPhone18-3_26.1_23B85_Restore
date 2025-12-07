void *sub_10036BF44(void *result)
{
  if (!result[271])
  {
    v1 = result;
    v2 = [PRSettingsObserver alloc];
    v3 = +[PRGlobalDebugSettings sharedSettings];
    v4 = [(PRSettingsObserver *)v2 initWithSettings:v3 queue:v1[5]];
    v5 = v1[271];
    v1[271] = v4;

    v6 = v1[271];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10036DC6C;
    v11[3] = &unk_10099D2D8;
    v11[4] = v1;
    [v6 startObserving:PRDebugConfigArgMcc observeImmediately:0 callback:v11];
    v7 = v1[271];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10036DE64;
    v10[3] = &unk_10099D2D8;
    v10[4] = v1;
    [v7 startObserving:PRDebugConfigArgAccessoryState observeImmediately:0 callback:v10];
    v8 = v1[271];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10036DFE4;
    v9[3] = &unk_10099D2D8;
    v9[4] = v1;
    return [v8 startObserving:PRDebugConfigArgIsoCountry observeImmediately:0 callback:v9];
  }

  return result;
}

void sub_10036C0EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000149C4(*(a1 + 24));
  v5 = qword_1009F7410;
  if (v4)
  {
    v6 = qword_1009F7410;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_100316574(a2);
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#reg-prov,Airplane Mode changed: %@.", &v11, 0xCu);
    }

    v8 = a2 == 1;
    v9 = sub_10030AC1C(a1 + 48, v8);
    if (v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    sub_10022D9D4(a1 + 280, v10);
    if (v9)
    {
      sub_10036C760(a1, 1u, 1);
    }

    if ((v9 & 0x10000) != 0)
    {
      sub_10036C938(a1, 1u, 1);
    }
  }

  else if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#reg-prov,onAirplaneModeStateChange,exited early,device does not support UWB.", &v11, 2u);
  }
}

void sub_10036C270(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = qword_1009F7410;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_10041C9CC(a4);
    v9 = "detached";
    if (a2)
    {
      v9 = "attached";
    }

    if (v20 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315394;
    v22 = v9;
    v23 = 2080;
    v24 = p_p;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#reg-prov,accessory:%s,type:%s", buf, 0x16u);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  v11 = sub_1000054A8();
  if (sub_100014670(v11))
  {
    if (!a3)
    {
      v12 = sub_10030AAEC(a1 + 48, a2, a4);
      if (a2)
      {
        v13 = 4;
      }

      else
      {
        v13 = 5;
      }

      LODWORD(__p) = 2;
      HIDWORD(__p) = v13;
      v16 = BYTE1(v12) & 1;
      v17 = a4;
      v18 = 1;
      v19 = 0;
      sub_10036CB1C(a1, &__p);
    }
  }

  else
  {
    v14 = qword_1009F7410;
    if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#reg-prov,Ignore accessory event", &__p, 2u);
    }
  }
}

void sub_10036C448(uint64_t a1, int a2)
{
  v4 = qword_1009F7410;
  if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5) = 67109120;
    DWORD1(v5) = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#reg-prov,onNarrowbandSARChange,index,%d", &v5, 8u);
  }

  *&v5 = 0x800000005;
  BYTE8(v5) = 1;
  BYTE12(v5) = 0;
  v6 = 0;
  v7 = a2;
  v8 = 1;
  sub_10036C690(a1, &v5);
}

uint64_t sub_10036C52C(id *a1)
{
  [a1[269] setStateChangedHandler:0];
  [a1[268] setAirplaneModeChangedHandler:0];
  [a1[270] setStateChangeHandler:0];
  return 1;
}

uint64_t sub_10036C574(id *a1)
{
  [a1[268] setStateChangedHandler:0];
  [a1[267] setAirplaneModeChangedHandler:0];
  [a1[269] setStateChangeHandler:0];
  return 1;
}

void sub_10036C5BC(uint64_t a1)
{
  if (sub_1000149C4(*(a1 + 24)))
  {
    v2 = *(a1 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10036C688;
    block[3] = &unk_10098AD98;
    block[4] = a1;
    dispatch_async(v2, block);
  }

  else
  {
    v3 = qword_1009F7410;
    if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#reg-prov,onFirstUnlock,exited early,device does not support UWB.", buf, 2u);
    }
  }
}

void sub_10036C690(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 32);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10036C720;
    v3[3] = &unk_1009A7F40;
    v3[4] = a1;
    v4 = *a2;
    v5 = *(a2 + 2);
    dispatch_async(v2, v3);
  }
}

void sub_10036C720(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  sub_1001A45D0(v1, &v2);
}

void sub_10036C760(uint64_t a1, unsigned int a2, int a3)
{
  v6 = sub_10036C8F0(a1);
  v7 = qword_1009F7410;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 8)
    {
      v8 = "Unknown";
    }

    else
    {
      v8 = off_1009A8238[a2];
    }

    sub_100004A08(__p, v8);
    v9 = __p[0];
    v10 = "UWBDisallowed";
    if (v13 >= 0)
    {
      v9 = __p;
    }

    if (v6)
    {
      v10 = "UWBAllowed";
    }

    *buf = 136315650;
    v15 = v9;
    v16 = 2080;
    v17 = v10;
    if (a3)
    {
      v11 = "yes";
    }

    else
    {
      v11 = "no";
    }

    v18 = 2080;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#reg-prov,relayUwbState,%s,allowed,%s,actionRequired,%s", buf, 0x20u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *buf = v6;
  LODWORD(v15) = a2;
  BYTE4(v15) = a3;
  LOBYTE(v16) = 0;
  BYTE2(v17) = 0;
  HIWORD(v17) = 0;
  sub_10036C690(a1, buf);
}

uint64_t sub_10036C8F0(uint64_t a1)
{
  sub_10030BF58(a1 + 48, v3);
  v1 = v3[0];
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return v1;
}

void sub_10036C938(uint64_t a1, unsigned int a2, int a3)
{
  v6 = sub_10036CAD4(a1);
  v7 = qword_1009F7410;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 8)
    {
      v8 = "Unknown";
    }

    else
    {
      v8 = off_1009A8238[a2];
    }

    sub_100004A08(__p, v8);
    v9 = __p[0];
    v10 = "NBDisallowed";
    if (v14 >= 0)
    {
      v9 = __p;
    }

    if (v6)
    {
      v10 = "NBAllowed";
    }

    *buf = 136315650;
    v16 = v9;
    v17 = 2080;
    v18 = v10;
    if (a3)
    {
      v11 = "yes";
    }

    else
    {
      v11 = "no";
    }

    v19 = 2080;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#reg-prov,relayNBState,%s,allowed,%s,actionRequired,%s", buf, 0x20u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v6)
  {
    v12 = 4;
  }

  else
  {
    v12 = 3;
  }

  *buf = v12;
  LODWORD(v16) = a2;
  BYTE4(v16) = a3;
  LOBYTE(v17) = 0;
  BYTE2(v18) = 0;
  HIWORD(v18) = 0;
  sub_10036C690(a1, buf);
}

uint64_t sub_10036CAD4(uint64_t a1)
{
  sub_10030BF58(a1 + 48, v3);
  v1 = v3[1];
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return v1;
}

void sub_10036CB1C(uint64_t a1, uint64_t a2)
{
  sub_10030BF58(a1 + 48, v12);
  v4 = qword_1009F7410;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 4);
    if (v5 > 8)
    {
      v6 = "Unknown";
    }

    else
    {
      v6 = off_1009A8238[v5];
    }

    sub_100004A08(__p, v6);
    if (v11 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = &v13;
    if (v14 < 0)
    {
      v8 = v13;
    }

    if (*(a2 + 8))
    {
      v9 = "yes";
    }

    else
    {
      v9 = "no";
    }

    *buf = 136315906;
    v17 = v7;
    v18 = 2080;
    v19 = v8;
    v20 = 1024;
    v21 = v15;
    v22 = 2080;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#reg-prov,relaySettingsChange,%s,country,%s,flags,%d,actionRequired,%s", buf, 0x26u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10036C690(a1, a2);
  if (v14 < 0)
  {
    operator delete(v13);
  }
}

void sub_10036CCA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10036CCC8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100003AE0();
  sub_10030BF58(a1 + 48, v7);
  if (SHIBYTE(v9) < 0)
  {
    sub_1000056BC(__p, v8, *(&v8 + 1));
  }

  else
  {
    *__p = v8;
    v6 = v9;
  }

  sub_10045BB78(v4, __p, a2);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8);
  }
}

void sub_10036CD6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10036CDA8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100003AE0();
  sub_10030BF58(a1 + 48, v7);
  if (SHIBYTE(v9) < 0)
  {
    sub_1000056BC(__p, v8, *(&v8 + 1));
  }

  else
  {
    *__p = v8;
    v6 = v9;
  }

  sub_10045BDD0(v4, __p, a2);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8);
  }
}

void sub_10036CE4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10036CE88(uint64_t a1, char *a2)
{
  v4 = qword_1009F7410;
  if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#reg-prov,onCountryChange", buf, 2u);
  }

  if ((a2[23] & 0x80000000) == 0)
  {
    if (a2[23])
    {
      __p = *a2;
      goto LABEL_8;
    }

LABEL_14:
    v6 = sub_10030BA54(a1 + 48);
    v11 = qword_1009F7410;
    if (!os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v8 = "#reg-prov,onCountryChange callback: <empty isoCode>.";
    v9 = v11;
    v10 = 2;
    goto LABEL_16;
  }

  v5 = *(a2 + 1);
  if (!v5)
  {
    goto LABEL_14;
  }

  sub_1000056BC(&__p, *a2, v5);
LABEL_8:
  v6 = sub_10030B0D8(a1 + 48, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = qword_1009F7410;
  if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEFAULT))
  {
    if (a2[23] < 0)
    {
      a2 = *a2;
    }

    *buf = 136315138;
    *&buf[4] = a2;
    v8 = "#reg-prov,onCountryChange callback: %s.";
    v9 = v7;
    v10 = 12;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
  }

LABEL_17:
  if (v6)
  {
    sub_10036C760(a1, 3u, 1);
  }

  if ((v6 & 0x100) != 0)
  {
    *buf = 0x300000002;
    buf[8] = 1;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    sub_10036CB1C(a1, buf);
  }

  if ((v6 & 0x10000) != 0)
  {
    sub_10036C938(a1, 3u, 1);
  }

  if ((v6 & 0x1000000) != 0)
  {
    *buf = 0x300000005;
    buf[8] = 1;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    sub_10036CB1C(a1, buf);
  }
}

void sub_10036D0A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10036D0C4(uint64_t a1, int a2)
{
  v4 = sub_10030AE88(a1 + 48, a2);
  if (v4)
  {
    v5 = qword_1009F7410;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 79) < 0)
      {
        sub_1000056BC(__p, *(a1 + 56), *(a1 + 64));
      }

      else
      {
        *__p = *(a1 + 56);
        v10 = *(a1 + 72);
      }

      v6 = __p;
      if (v10 < 0)
      {
        v6 = __p[0];
      }

      *buf = 67109378;
      v12 = a2;
      v13 = 2080;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#reg-prov,onRestrictedRegionChanged,%d,isoCountry,%s,uwbChannelSettingChanged", buf, 0x12u);
      if (SHIBYTE(v10) < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10036C760(a1, 7u, 1);
  }

  if ((v4 & 0x10000) != 0)
  {
    v7 = qword_1009F7410;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 79) < 0)
      {
        sub_1000056BC(__p, *(a1 + 56), *(a1 + 64));
      }

      else
      {
        *__p = *(a1 + 56);
        v10 = *(a1 + 72);
      }

      v8 = __p;
      if (v10 < 0)
      {
        v8 = __p[0];
      }

      *buf = 67109378;
      v12 = a2;
      v13 = 2080;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#reg-prov,onRestrictedRegionChanged,%d,isoCountry,%s,isNBChannelSettingChanged", buf, 0x12u);
      if (SHIBYTE(v10) < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10036C938(a1, 7u, 1);
  }
}

uint64_t sub_10036D2CC(uint64_t a1)
{
  v2 = sub_10036D3CC();
  if ((v2 & 0x100) != 0)
  {
    v3 = v2;
    v4 = qword_1009F7410;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100457E08(v3, v6);
      sub_1004C3E20(v6, buf, v4);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEBUG))
    {
      sub_1004C3E94();
    }

    sub_10030BF58(a1 + 48, v6);
    v3 = v8;
    if (v7 < 0)
    {
      operator delete(v6[4]);
    }
  }

  return v3 | 0x100u;
}

uint64_t sub_10036D3CC()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 stringForKey:@"RegulatoryGroup"];
  v2 = v1;
  if (v1)
  {
    if ([v1 isEqualToString:@"US"])
    {
      v3 = 0;
LABEL_7:
      v4 = 1;
      goto LABEL_8;
    }

    if ([v2 isEqualToString:@"EU"])
    {
      v3 = 1;
      goto LABEL_7;
    }

    if ([v2 isEqualToString:@"TW"])
    {
      v4 = 1;
      v3 = 2;
    }

    else if ([v2 isEqualToString:@"CN"])
    {
      v4 = 1;
      v3 = 3;
    }

    else if ([v2 isEqualToString:@"JP"])
    {
      v4 = 1;
      v3 = 4;
    }

    else if ([v2 isEqualToString:@"KR"])
    {
      v4 = 1;
      v3 = 5;
    }

    else if ([v2 isEqualToString:@"RU"])
    {
      v4 = 1;
      v3 = 6;
    }

    else
    {
      v4 = [v2 isEqualToString:@"AR"];
      if (v4)
      {
        v3 = 7;
      }

      else
      {
        v3 = 0;
      }
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

LABEL_8:

  return v3 | (v4 << 8);
}

uint64_t sub_10036D554(uint64_t a1)
{
  sub_10030BF58(a1 + 48, v19);
  v1 = sub_10036D3CC();
  v2 = v22;
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 stringForKey:@"UNII3RegulatoryGroup"];
  v5 = v4;
  if (!v4)
  {
    LOBYTE(v6) = 0;
    v7 = 0;
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"CC0"])
  {
    LOBYTE(v6) = 0;
LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  if ([v5 isEqualToString:@"CC1"])
  {
    LOBYTE(v6) = 1;
    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"CC2"])
  {
    v7 = 1;
    LOBYTE(v6) = 2;
  }

  else if ([v5 isEqualToString:@"CC3"])
  {
    v7 = 1;
    LOBYTE(v6) = 3;
  }

  else if ([v5 isEqualToString:@"CC4"])
  {
    v7 = 1;
    LOBYTE(v6) = 4;
  }

  else if ([v5 isEqualToString:@"CC5"])
  {
    v7 = 1;
    LOBYTE(v6) = 5;
  }

  else if ([v5 isEqualToString:@"NA"])
  {
    v7 = 1;
    LOBYTE(v6) = -2;
  }

  else
  {
    v7 = [v5 isEqualToString:@"UNKNOWN"];
    v6 = (v7 << 31) >> 31;
  }

LABEL_8:

  v8 = v23;
  v9 = +[NSUserDefaults standardUserDefaults];
  v10 = [v9 stringForKey:@"UNII3SARGroup"];
  v11 = v10;
  if (!v10)
  {
    LOBYTE(v12) = 0;
    v13 = 0;
    goto LABEL_15;
  }

  if ([v10 isEqualToString:@"CC0"])
  {
    LOBYTE(v12) = 0;
LABEL_14:
    v13 = 1;
    goto LABEL_15;
  }

  if ([v11 isEqualToString:@"CC1"])
  {
    LOBYTE(v12) = 1;
    goto LABEL_14;
  }

  if ([v11 isEqualToString:@"CC2"])
  {
    v13 = 1;
    LOBYTE(v12) = 2;
  }

  else if ([v11 isEqualToString:@"CC3"])
  {
    v13 = 1;
    LOBYTE(v12) = 3;
  }

  else if ([v11 isEqualToString:@"NA"])
  {
    v13 = 1;
    LOBYTE(v12) = -2;
  }

  else
  {
    v13 = [v11 isEqualToString:@"UNKNOWN"];
    v12 = (v13 << 31) >> 31;
  }

LABEL_15:

  v14 = v24;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  if (v13)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14;
  }

  if (v7)
  {
    v16 = v6;
  }

  else
  {
    v16 = v8;
  }

  if ((v1 & 0x100) != 0)
  {
    v17 = v1;
  }

  else
  {
    v17 = v2;
  }

  return (v16 << 8) | (v15 << 16) | v17 | 0x1000000u;
}

void sub_10036D818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10036D864(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10036D910;
  v4[3] = &unk_10099CEE0;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sub_10036D910(uint64_t a1)
{
  v2 = *(a1 + 40);
  sub_10036B798(v2);
  result = sub_10036C8F0(v2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_10036D958(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10036DA04;
  v4[3] = &unk_10099CEE0;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sub_10036DA04(uint64_t a1)
{
  v2 = *(a1 + 40);
  sub_10036B798(v2);
  result = sub_10036CAD4(v2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t *sub_10036DA4C(uint64_t a1)
{
  v2 = sub_100003AE0();
  sub_10030BF58(a1 + 48, v7);
  if (SHIBYTE(v9) < 0)
  {
    sub_1000056BC(__p, v8, *(&v8 + 1));
  }

  else
  {
    *__p = v8;
    v6 = v9;
  }

  v3 = sub_10045AF8C(v2, __p, v10, v11);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8);
  }

  return v3;
}

void sub_10036DAF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10036DB3C(uint64_t a1, _DWORD *a2)
{
  if (!*a2 && os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_ERROR))
  {
    sub_1004C3ED4();
  }

  return 0;
}

void sub_10036DB8C(uint64_t a1)
{
  if (sub_1000149C4(*(a1 + 24)))
  {
    v2 = *(a1 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10036DC58;
    block[3] = &unk_10098AD98;
    block[4] = a1;
    dispatch_async(v2, block);
  }

  else
  {
    v3 = qword_1009F7410;
    if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#reg-prov,refreshRegulatoryInformation,exited early,device does not support UWB.", buf, 2u);
    }
  }
}

void sub_10036DC6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = +[PRGlobalDebugSettings sharedSettings];
  v6 = [v5 objectForKey:v3 ofClass:objc_opt_class()];

  v7 = qword_1009F7410;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = [v6 UTF8String];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#reg-prov,test,received mcc: %s", &__p, 0xCu);
  }

  if (sub_1000149C4(*(v4 + 24)))
  {
    v8 = v6;
    sub_100004A08(&__p, [v6 UTF8String]);
    sub_10022CA28((v4 + 280), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v9 = qword_1009F7410;
    if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#reg-prov,test,received mcc,skipped,device does not support UWB", &__p, 2u);
    }
  }
}

void sub_10036DE04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10036DE64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = +[PRGlobalDebugSettings sharedSettings];
  v6 = [v5 integerForKey:v3];

  v7 = sub_10041CB6C(v6);
  v8 = qword_1009F7410;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_10041C9CC(v7);
    if (v11 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 67109378;
    v13 = v6;
    v14 = 2080;
    v15 = p_p;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#reg-prov,test,received accessoryState %d, accessoryType %s", buf, 0x12u);
    if (v11 < 0)
    {
      operator delete(__p);
    }
  }

  sub_10036C270(v4, v7 != 0, 0, v7);
}

void sub_10036DFE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = +[PRGlobalDebugSettings sharedSettings];
  v6 = [v5 objectForKey:v3 ofClass:objc_opt_class()];

  v7 = qword_1009F7410;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = [v6 UTF8String];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#reg-prov,test,received isoCountry %s", buf, 0xCu);
  }

  if (sub_1000149C4(*(v4 + 24)))
  {
    v8 = v6;
    sub_100004A08(__p, [v6 UTF8String]);
    sub_10036CE88(v4, __p);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v9 = qword_1009F7410;
    if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#reg-prov,test,received isoCountry,skipped,device does not support UWB", buf, 2u);
    }
  }
}

void sub_10036E17C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10036E1D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10030BF58(a1 + 48, v15);
  if (v15[4])
  {
    v3 = 0;
    goto LABEL_8;
  }

  if ((v17 & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_FAULT))
    {
      sub_1004C3F14();
    }

    v6 = 662;
LABEL_36:
    __assert_rtn("toRegulatoryState", "PRRegulatoryProvider.mm", v6, "false");
  }

  if ((v16 - 2) < 2)
  {
    v3 = 2;
    goto LABEL_8;
  }

  if (!v16)
  {
    if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_FAULT))
    {
      sub_1004C3F54();
    }

    v6 = 674;
    goto LABEL_36;
  }

  v3 = 1;
LABEL_8:
  v4 = sub_100003AE0();
  if (SHIBYTE(v19) < 0)
  {
    sub_1000056BC(__dst, v18, *(&v18 + 1));
  }

  else
  {
    *__dst = v18;
    v14 = v19;
  }

  v5 = sub_10045AF8C(v4, __dst, v20, v21);
  if (SHIBYTE(v19) < 0)
  {
    sub_1000056BC(v10, v18, *(&v18 + 1));
  }

  else
  {
    *v10 = v18;
    v11 = v19;
  }

  sub_10045B2E8(v4, v10, v20, v21, v12);
  if (SHIBYTE(v19) < 0)
  {
    sub_1000056BC(v7, v18, *(&v18 + 1));
  }

  else
  {
    *v7 = v18;
    v8 = v19;
  }

  sub_10045B730(v4, v7, v20, v21, __p);
  sub_10036E928(a2, v3, v5, v12, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18);
  }
}

void sub_10036E3FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10036E4A0(uint64_t a1, std::string *a2)
{
  if (sub_10041C748(*(a1 + 24)) && sub_1000149C4(*(a1 + 24)))
  {
    v4 = sub_10022CED0((a1 + 280), a2);
    v5 = qword_1009F7410;
    if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEBUG))
    {
      sub_1004C3F94(a2, v4, v5);
    }
  }

  else
  {
    v6 = qword_1009F7410;
    v4 = 0;
    if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#reg-prov,injectIsoCode,exited early,device is not a UWB watch.", v8, 2u);
      return 0;
    }
  }

  return v4;
}

id sub_10036E57C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 2160);
  if (v3)
  {

    return [v3 injectNarrowbandSARState:a2];
  }

  else
  {
    if (os_log_type_enabled(qword_1009F7410, OS_LOG_TYPE_ERROR))
    {
      sub_1004C4030();
    }

    return 0;
  }
}

id sub_10036E5F4(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10036E6E4;
  v9 = sub_10036E6F4;
  v10 = 0;
  v1 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10036E6FC;
  v4[3] = &unk_10099CEE0;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t sub_10036E6E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10036E6FC(uint64_t a1)
{
  v2 = sub_10036B8A8(*(a1 + 40));
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10036E748(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSString stringWithFormat:@"    %@", a2];
  [v2 addObject:?];
}

void sub_10036E7C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSString stringWithFormat:@"    %@", a2];
  [v2 addObject:?];
}

void sub_10036E840(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSString stringWithFormat:@"    %@", a2];
  [v2 addObject:?];
}

uint64_t sub_10036E8BC(uint64_t a1)
{
  std::mutex::~mutex((a1 + 152));
  sub_10002074C(a1 + 128, *(a1 + 136));
  sub_10017AC74(a1 + 104, *(a1 + 112));
  sub_10002074C(a1 + 80, *(a1 + 88));
  sub_10017AC74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_10036E928(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_10026AADC((a1 + 8), *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 3);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_10026ABDC((a1 + 32), *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_10026AC58((a1 + 56), *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 3);
  return a1;
}

void sub_10036E9C4(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10036EA68(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1009A7FC0;
  a2[1] = v2;
  return result;
}

void sub_10036EA94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  sub_10036CE88(v2, __p);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10036EB04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10036EB20(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10036EBDC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1009A8040;
  a2[1] = v2;
  return result;
}

uint64_t sub_10036EC14(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10036ECD0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1009A80C0;
  a2[1] = v2;
  return result;
}

void sub_10036ECFC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  if (*(v3 + 79) < 0)
  {
    sub_1000056BC(__s1, *(v3 + 56), *(v3 + 64));
  }

  else
  {
    *__s1 = *(v3 + 56);
    v22 = *(v3 + 72);
  }

  v4 = qword_1009F7410;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v3 + 79) < 0)
    {
      sub_1000056BC(__p, *(v3 + 56), *(v3 + 64));
    }

    else
    {
      *__p = *(v3 + 56);
      v20 = *(v3 + 72);
    }

    v5 = __p;
    if (v20 < 0)
    {
      v5 = __p[0];
    }

    *buf = 136315138;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#reg-prov,IsoCountry %s", buf, 0xCu);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = strlen(off_1009EC420[0]);
  v7 = v6;
  v8 = SHIBYTE(v22);
  if ((SHIBYTE(v22) & 0x8000000000000000) != 0)
  {
    if (v6 != __s1[1])
    {
      goto LABEL_19;
    }

    if (v6 == -1)
    {
      sub_1001B96B4();
    }

    v9 = __s1[0];
  }

  else
  {
    if (v6 != SHIBYTE(v22))
    {
      goto LABEL_19;
    }

    v9 = __s1;
  }

  if (!memcmp(v9, off_1009EC420[0], v7))
  {
    goto LABEL_41;
  }

LABEL_19:
  v10 = strlen(off_1009EC438[0]);
  v11 = v10;
  if ((v8 & 0x80000000) != 0)
  {
    if (v10 != __s1[1])
    {
      goto LABEL_26;
    }

    if (v10 == -1)
    {
      sub_1001B96B4();
    }

    v12 = __s1[0];
  }

  else
  {
    if (v10 != v8)
    {
      goto LABEL_26;
    }

    v12 = __s1;
  }

  if (!memcmp(v12, off_1009EC438[0], v11))
  {
    goto LABEL_41;
  }

LABEL_26:
  v13 = strlen(off_1009EC408[0]);
  v14 = v13;
  if ((v8 & 0x80000000) != 0)
  {
    if (v13 != __s1[1])
    {
      goto LABEL_33;
    }

    if (v13 == -1)
    {
      sub_1001B96B4();
    }

    v15 = __s1[0];
  }

  else
  {
    if (v13 != v8)
    {
      goto LABEL_33;
    }

    v15 = __s1;
  }

  if (!memcmp(v15, off_1009EC408[0], v14))
  {
    goto LABEL_41;
  }

LABEL_33:
  v16 = strlen(off_1009EC430[0]);
  v17 = v16;
  if ((v8 & 0x80000000) == 0)
  {
    if (v16 == v8)
    {
      v18 = __s1;
      goto LABEL_39;
    }

LABEL_40:
    *a2 = *__s1;
    a2[2] = v22;
    return;
  }

  if (v16 != __s1[1])
  {
    goto LABEL_40;
  }

  if (v16 == -1)
  {
    sub_1001B96B4();
  }

  v18 = __s1[0];
LABEL_39:
  if (memcmp(v18, off_1009EC430[0], v17))
  {
    goto LABEL_40;
  }

LABEL_41:
  sub_100004A08(a2, "");
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__s1[0]);
  }
}

void sub_10036EFBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_100020444(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10036F008(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10036F054()
{
  v0 = objc_autoreleasePoolPush();
  qword_1009F7410 = os_log_create("com.apple.nearbyd", "Regulatory");

  objc_autoreleasePoolPop(v0);
}

void sub_10036F6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_10000AD84(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100372390(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = NIServerHomePassiveSensingSession;
  v2 = objc_msgSendSuper2(&v5, "resourcesManager");
  v3 = v2;
  if (*(*(a1 + 32) + 72) == 1)
  {
    v4 = [v2 remote];
    [v4 didUpdateNearbyObjects:*(a1 + 40)];
  }
}

void sub_100372648()
{
  if ((atomic_load_explicit(&qword_1009E9448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9448))
  {
    sub_100004A08(qword_1009E9430, "PRRoseProviderNetworkListener");
    __cxa_atexit(&std::string::~string, qword_1009E9430, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9448);
  }
}

void sub_1003726F8()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_1003727A8()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_100372858()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(qword_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, qword_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_100372908()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(qword_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, qword_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_1003729B8()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(qword_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, qword_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_100372A68()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_100372B18()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(qword_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, qword_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_100372BC8()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_10056DAB0;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

void sub_100372CBC()
{
  v0 = objc_autoreleasePoolPush();
  sub_10041C9CC(0);
  v1 = std::string::insert(&v37, 0, "reverseLUT_A");
  v2 = *&v1->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v1->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v2;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  v1->__r_.__value_.__r.__words[0] = 0;
  v3 = std::string::append(&v38, ".bin");
  v4 = *&v3->__r_.__value_.__l.__data_;
  qword_1009F7428 = v3->__r_.__value_.__r.__words[2];
  xmmword_1009F7418 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F7418, &_mh_execute_header);
  sub_10041C9CC(1);
  v5 = std::string::insert(&v37, 0, "reverseLUT_A");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v38, ".bin");
  v8 = *&v7->__r_.__value_.__l.__data_;
  qword_1009F7440 = v7->__r_.__value_.__r.__words[2];
  xmmword_1009F7430 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F7430, &_mh_execute_header);
  sub_10041C9CC(2);
  v9 = std::string::insert(&v37, 0, "reverseLUT_A");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v38, ".bin");
  v12 = *&v11->__r_.__value_.__l.__data_;
  qword_1009F7458 = v11->__r_.__value_.__r.__words[2];
  xmmword_1009F7448 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F7448, &_mh_execute_header);
  sub_10041C9CC(3);
  v13 = std::string::insert(&v37, 0, "reverseLUT_A");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v38, ".bin");
  v16 = *&v15->__r_.__value_.__l.__data_;
  qword_1009F7470 = v15->__r_.__value_.__r.__words[2];
  xmmword_1009F7460 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F7460, &_mh_execute_header);
  sub_10041C9CC(4);
  v17 = std::string::insert(&v37, 0, "reverseLUT_A");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v38, ".bin");
  v20 = *&v19->__r_.__value_.__l.__data_;
  qword_1009F7488 = v19->__r_.__value_.__r.__words[2];
  xmmword_1009F7478 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F7478, &_mh_execute_header);
  sub_10041C9CC(5);
  v21 = std::string::insert(&v37, 0, "reverseLUT_A");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v38, ".bin");
  v24 = *&v23->__r_.__value_.__l.__data_;
  qword_1009F74A0 = v23->__r_.__value_.__r.__words[2];
  xmmword_1009F7490 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F7490, &_mh_execute_header);
  sub_10041C9CC(6);
  v25 = std::string::insert(&v37, 0, "reverseLUT_A");
  v26 = *&v25->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v38, ".bin");
  v28 = *&v27->__r_.__value_.__l.__data_;
  qword_1009F74B8 = v27->__r_.__value_.__r.__words[2];
  xmmword_1009F74A8 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F74A8, &_mh_execute_header);
  sub_10041C9CC(7);
  v29 = std::string::insert(&v37, 0, "reverseLUT_A");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v38, ".bin");
  v32 = *&v31->__r_.__value_.__l.__data_;
  qword_1009F74D0 = v31->__r_.__value_.__r.__words[2];
  xmmword_1009F74C0 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F74C0, &_mh_execute_header);
  sub_10041C9CC(8);
  v33 = std::string::insert(&v37, 0, "reverseLUT_A");
  v34 = *&v33->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v35 = std::string::append(&v38, ".bin");
  v36 = *&v35->__r_.__value_.__l.__data_;
  qword_1009F74E8 = v35->__r_.__value_.__r.__words[2];
  xmmword_1009F74D8 = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F74D8, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_1003732FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_1003733B4(id a1)
{
  v1 = [[_FindingAdvertiser alloc] _initInternal];
  v2 = qword_1009F74F0;
  qword_1009F74F0 = v1;

  v3 = +[NIServerSpatialInteractionPayloadAggregator sharedInstance];
  [v3 addPayloadChangeObserver:qword_1009F74F0];
}

uint64_t sub_1003735D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1003735F0(uint64_t a1)
{
  v2 = sub_1000086B0(*(a1 + 64));
  v3 = *(a1 + 32);
  v12 = 0;
  v13 = 0;
  v4 = [v3 _peerIndexReferenceForAdvertisementType:v2 outPeers:&v13 outAdvertisements:&v12];
  v5 = v13;
  v6 = v12;
  v7 = [v5 indexOfObject:*(a1 + 40)];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [*(a1 + 32) _configureAdvertiserForType:v2 toPeer:*(a1 + 40) withAdvertisement:*(a1 + 48)];
    if (v8)
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v8);
    }

    else
    {
      [v5 addObject:*(a1 + 40)];
      [v6 addObject:*(a1 + 48)];
      v11 = [v5 count];
      if (v11 != [v6 count])
      {
        __assert_rtn("[_FindingAdvertiser startAdvertisingAsFinder:toPeer:withAdvertisement:]_block_invoke", "NIServerFindingDiscovery.mm", 169, "_peers.count == _advertisements.count");
      }

      *v4 = [v5 count] - 1;
      if ([*(a1 + 32) _totalPeers] == 1)
      {
        [*(a1 + 32) _startRoundRobinTimer];
      }
    }

    goto LABEL_10;
  }

  [v6 setObject:*(a1 + 48) atIndexedSubscript:v7];
  if (*v4 == v7)
  {
    v9 = [*(a1 + 32) _configureAdvertiserForType:v2 toPeer:*(a1 + 40) withAdvertisement:*(a1 + 48)];
    if (v9)
    {
      v10 = *(*(a1 + 56) + 8);
      v8 = *(v10 + 40);
      *(v10 + 40) = v9;
LABEL_10:
    }
  }
}

void sub_1003738D4(uint64_t a1)
{
  v2 = sub_1000086B0(*(a1 + 56));
  v3 = *(a1 + 32);
  v16 = 0;
  v17 = 0;
  v4 = [v3 _peerIndexReferenceForAdvertisementType:v2 outPeers:&v17 outAdvertisements:&v16];
  v5 = v17;
  v6 = v16;
  v7 = [v5 indexOfObject:*(a1 + 40)];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 removeObjectAtIndex:v7];
    [v6 removeObjectAtIndex:v7];
    v8 = [v5 count];
    if (v8 != [v6 count])
    {
      __assert_rtn("[_FindingAdvertiser stopAdvertisingAsFinder:toPeer:]_block_invoke", "NIServerFindingDiscovery.mm", 203, "_peers.count == _advertisements.count");
    }

    *v4 = 0;
    v9 = [v5 count];
    v10 = *(a1 + 32);
    if (v9)
    {
      v11 = [v5 firstObject];
      v12 = [v6 firstObject];
      v13 = [v10 _configureAdvertiserForType:v2 toPeer:v11 withAdvertisement:v12];

      if (v13)
      {
        v14 = *(*(a1 + 48) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;

        goto LABEL_9;
      }
    }

    else
    {
      [*(a1 + 32) _resetAdvertiserForType:v2];
    }

    if (![*(a1 + 32) _totalPeers])
    {
      [*(a1 + 32) _stopRoundRobinTimer];
    }
  }

LABEL_9:
}

void sub_100373B94(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [NSString stringWithFormat:@"Advertiser singleton. Round robin timer active: %d", *(*(a1 + 32) + 16) != 0];
  [v2 addObject:v3];

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  if (v5 && (v6 & 1) != 0)
  {
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v8 = [v5 advertisingAddressDataConnectable];
    v9 = CUPrintNSDataAddress();
    v10 = [*(*(a1 + 32) + 24) advertiseRate];
    if (v10 > 39)
    {
      if (v10 <= 44)
      {
        if (v10 == 40)
        {
          v11 = "Medium";
          goto LABEL_28;
        }

        if (v10 == 42)
        {
          v11 = "MediumMid";
          goto LABEL_28;
        }
      }

      else
      {
        switch(v10)
        {
          case '-':
            v11 = "MediumHigh";
            goto LABEL_28;
          case '2':
            v11 = "High";
            goto LABEL_28;
          case '<':
            v11 = "Max";
            goto LABEL_28;
        }
      }
    }

    else if (v10 <= 14)
    {
      if (!v10)
      {
        v11 = "Default";
        goto LABEL_28;
      }

      if (v10 == 10)
      {
        v11 = "Periodic";
        goto LABEL_28;
      }
    }

    else
    {
      switch(v10)
      {
        case 15:
          v11 = "PeriodicHigh";
          goto LABEL_28;
        case 20:
          v11 = "Background";
          goto LABEL_28;
        case 30:
          v11 = "Low";
LABEL_28:
          v14 = [NSString stringWithFormat:@"    T26 conn-addr: %@. Adv rate: %s.", v9, v11];
          [v7 addObject:v14];

          v15 = *(*(*(a1 + 40) + 8) + 40);
          v16 = [*(*(a1 + 32) + 24) nearbyActionNoWakeType];
          v13 = [*(*(a1 + 32) + 24) nearbyActionNoWakeAuthTagData];
          v17 = CUPrintNSDataHex();
          v18 = [*(*(a1 + 32) + 24) nearbyActionNWPrecisionFindingStatus];
          v19 = [*(*(a1 + 32) + 24) nearbyActionNoWakeConfigData];
          v20 = CUPrintNSDataHex();
          v21 = [NSString stringWithFormat:@"    T26 type: %d. ATag: 0x%@. Status: 0x%02X. Cfg: 0x%@", v16, v17, v18, v20];
          [v15 addObject:v21];

          goto LABEL_29;
      }
    }

    v11 = "?";
    goto LABEL_28;
  }

  v12 = *(*(*(a1 + 40) + 8) + 40);
  v13 = [NSString stringWithFormat:@"    T26 advertiser: %d. Activated: %d", v5 != 0, v6];
  [v12 addObject:v13];
LABEL_29:

  v22 = *(a1 + 32);
  v23 = *(v22 + 40);
  v24 = *(v22 + 48);
  if (v23 && (v24 & 1) != 0)
  {
    v25 = *(*(*(a1 + 40) + 8) + 40);
    v26 = [v23 advertisingAddressData];
    v27 = CUPrintNSDataAddress();
    v28 = [*(*(a1 + 32) + 40) advertiseRate];
    if (v28 > 39)
    {
      if (v28 <= 44)
      {
        if (v28 == 40)
        {
          v29 = "Medium";
          goto LABEL_56;
        }

        if (v28 == 42)
        {
          v29 = "MediumMid";
          goto LABEL_56;
        }
      }

      else
      {
        switch(v28)
        {
          case '-':
            v29 = "MediumHigh";
            goto LABEL_56;
          case '2':
            v29 = "High";
            goto LABEL_56;
          case '<':
            v29 = "Max";
            goto LABEL_56;
        }
      }
    }

    else if (v28 <= 14)
    {
      if (!v28)
      {
        v29 = "Default";
        goto LABEL_56;
      }

      if (v28 == 10)
      {
        v29 = "Periodic";
        goto LABEL_56;
      }
    }

    else
    {
      switch(v28)
      {
        case 15:
          v29 = "PeriodicHigh";
          goto LABEL_56;
        case 20:
          v29 = "Background";
          goto LABEL_56;
        case 30:
          v29 = "Low";
LABEL_56:
          v32 = [*(*(a1 + 32) + 40) clientIrkData];
          v33 = CUPrintNSObjectMasked();
          v34 = [*(*(a1 + 32) + 40) clientIdentifierData];
          v35 = CUPrintNSDataHex();
          v36 = [NSString stringWithFormat:@"    T19 non-conn-addr: %@. Adv rate: %s. CIRK: %@. CID: %@", v27, v29, v33, v35];
          [v25 addObject:v36];

          v37 = *(*(*(a1 + 40) + 8) + 40);
          v38 = [*(*(a1 + 32) + 40) controlFlags];
          v31 = [*(*(a1 + 32) + 40) uwbConfigData];
          v39 = CUPrintNSDataHex();
          v40 = [NSString stringWithFormat:@"    T19 control flags: 0x%08X. UWB config data: %@", v38, v39];
          [v37 addObject:v40];

          goto LABEL_57;
      }
    }

    v29 = "?";
    goto LABEL_56;
  }

  v30 = *(*(*(a1 + 40) + 8) + 40);
  v31 = [NSString stringWithFormat:@"    T19 advertiser: %d. Activated: %d", v23 != 0, v24];
  [v30 addObject:v31];
LABEL_57:

  v41 = 1;
  do
  {
    v42 = v41;
    v43 = 80;
    if (v41)
    {
      v43 = 56;
      v44 = 64;
    }

    else
    {
      v44 = 88;
    }

    if (v41)
    {
      v45 = 72;
    }

    else
    {
      v45 = 96;
    }

    if (v41)
    {
      v46 = @"T26";
    }

    else
    {
      v46 = @"T19";
    }

    v47 = *(*(a1 + 32) + v43);
    v48 = *(*(a1 + 32) + v44);
    v49 = *(*(a1 + 32) + v45);
    v50 = [v47 count];
    v51 = [v48 count];
    v52 = *(*(*(a1 + 40) + 8) + 40);
    v61 = v42;
    if (v50 == v51)
    {
      v53 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"    %@ peers (%d)", v46, [v47 count]);
      [v52 addObject:v53];

      for (i = 0; i < [v47 count]; ++i)
      {
        v55 = *(*(*(a1 + 40) + 8) + 40);
        if (v49 == i)
        {
          v56 = [v47 objectAtIndexedSubscript:v49];
          v57 = [v56 descriptionInternal];
          v58 = [v48 objectAtIndexedSubscript:v49];
          [NSString stringWithFormat:@"      > %@: %@", v57, v58];
        }

        else
        {
          v56 = [v47 objectAtIndexedSubscript:i];
          v57 = [v56 descriptionInternal];
          v58 = [v48 objectAtIndexedSubscript:i];
          [NSString stringWithFormat:@"        %@: %@", v57, v58];
        }
        v59 = ;
        [v55 addObject:v59];
      }
    }

    else
    {
      v60 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"    %@ state mismatch!!! %d peers, %d advertisements, %d current index", v46, [v47 count], objc_msgSend(v48, "count"), v49);
      [v52 addObject:v60];
    }

    v41 = 0;
  }

  while ((v61 & 1) != 0);
}

void sub_100374D74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cbAdvertisingAddressChanged];
}

void sub_100374DD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005288();
  v5 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = v4 - v5;
    v8 = qword_1009F9820;
    if (v3)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004C5238();
      }

      v9 = WeakRetained[3];
      WeakRetained[3] = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        v11 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#find-disc,NearbyActionNoWake: activate advertiser complete [%0.6f s]", &v10, 0xCu);
      }

      *(WeakRetained + 32) = 1;
      [*(a1 + 32) _updateAdvertisementAfterActivationForType:26];
    }
  }
}

id sub_100374F1C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v13 = "token";
    v14 = 2500;
    goto LABEL_19;
  }

  if (!v4)
  {
    v13 = "address";
    v14 = 2501;
LABEL_19:
    __assert_rtn("_getAuthTagForToken", "NIServerFindingDiscovery.mm", v14, v13);
  }

  v6 = [v3 getIRK];
  v7 = v6;
  if (v6 && [v6 length] == 16)
  {
    if (qword_1009F7508 != -1)
    {
      sub_1004C52A8();
    }

    v8 = byte_1009F7500;
    v9 = v7;
    [v7 bytes];
    if (v8 != 1)
    {
      [v5 bytes];
      [v5 length];
    }

    v10 = SipHash();
    v15 = v10;
    v16 = BYTE2(v10);
    v11 = [NSData dataWithBytes:&v15 length:3];
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004C52BC();
    }

    v11 = 0;
  }

  return v11;
}

void sub_1003757E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005288();
  v5 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = v4 - v5;
    v8 = qword_1009F9820;
    if (v3)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004C5334();
      }

      v9 = WeakRetained[5];
      WeakRetained[5] = 0;

      v10 = +[NIServerSpatialInteractionPayloadAggregator sharedInstance];
      [v10 setFindingEnabled:0];

      v11 = +[NIServerSpatialInteractionPayloadAggregator sharedInstance];
      [v11 commitChange];
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134217984;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#find-disc,SpatialInteraction: activate advertiser complete [%0.6f s]", &v12, 0xCu);
      }

      *(WeakRetained + 48) = 1;
      [*(a1 + 32) _updateAdvertisementAfterActivationForType:19];
    }
  }
}

void sub_100375D2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _roundRobinTimerHandler];
}

void sub_100375FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1003761C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100376C94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 120));
  _Unwind_Resume(a1);
}

void sub_100376D5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cbInterruptionHandler];
}

void sub_100376DB8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cbErrorHandler:v3];
}

void sub_100376E2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cbBluetoothStateChangedHandler];
}

void sub_100376E88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005288();
  v5 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = v4 - v5;
    v8 = qword_1009F9820;
    if (v3)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004C53A4();
      }

      v9 = *(WeakRetained + 8);
      *(WeakRetained + 8) = 0;
      goto LABEL_6;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#find-disc,Activate controller complete [%0.6f s]", &v10, 0xCu);
    }

    *(WeakRetained + 72) = 1;
    [WeakRetained _cbBluetoothStateChangedHandler];
    if (*(WeakRetained + 72) == 1 && *(WeakRetained + 88) == 1)
    {
      v9 = objc_loadWeakRetained(WeakRetained + 5);
      [v9 bluetoothDiscoveryFinishedActivating];
LABEL_6:
    }
  }
}

void sub_100376FD8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10037700C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cbAdvertisingAddressChangedHandler];
}

void sub_100377068(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005288();
  v5 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = v4 - v5;
    v8 = qword_1009F9820;
    if (v3)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004C5414();
      }

      v9 = *(WeakRetained + 10);
      *(WeakRetained + 10) = 0;
      goto LABEL_6;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#find-disc,Activate address observer complete [%0.6f s]", &v10, 0xCu);
    }

    *(WeakRetained + 88) = 1;
    [WeakRetained _cbAdvertisingAddressChangedHandler];
    if (*(WeakRetained + 72) == 1 && *(WeakRetained + 88) == 1)
    {
      v9 = objc_loadWeakRetained(WeakRetained + 5);
      [v9 bluetoothDiscoveryFinishedActivating];
LABEL_6:
    }
  }
}

void sub_1003771B8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100377314(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[_FindingAdvertiser sharedInstance];
  v4 = [v3 stopAdvertisingAsFinder:*(*(a1 + 32) + 32) toPeer:v5];
}

void sub_100377794(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

void sub_100377808(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([*(a1 + 32) containsObject:v6] & 1) == 0)
  {
    dispatch_source_cancel(v5);
    [*(a1 + 40) addObject:v6];
  }
}

void sub_100377BD0(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 40));
  [WeakRetained didUpdateAdvertisement:a1[5] toSendOOBToPeer:a1[6]];
}

void sub_100378354(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained didLosePeer:*(a1 + 40)];
}

void sub_100378DF4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 144), 8);

  _Unwind_Resume(a1);
}

const char *sub_100378ED4(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return "?";
  }

  else
  {
    return off_1009A8568[a1];
  }
}

void sub_100378EF8(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = [a2 descriptionInternal];
  v7 = [NSString stringWithFormat:@"        %@: %@", v6, v8];
  [v5 addObject:v7];
}

void sub_100378FCC(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = [a2 descriptionInternal];
  v7 = sub_1003465F0(v9);
  v8 = [NSString stringWithFormat:@"        %@: %@", v6, v7];
  [v5 addObject:v8];
}

void sub_1003790BC(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = [a2 descriptionInternal];
  v7 = [NSString stringWithFormat:@"        %@: %@", v6, v8];
  [v5 addObject:v7];
}

void sub_100379E84(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(*(a1 + 32) + 168) objectForKey:?];
  v4 = [v3 copy];

  [v4 setAddress:*(a1 + 40) | (*(a1 + 44) << 32)];
  [*(*(a1 + 32) + 168) setObject:v4 forKey:v5];
}

void sub_100379F4C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = +[_FindingAdvertiser sharedInstance];
  v7 = [v6 startAdvertisingAsFinder:*(*(a1 + 32) + 32) toPeer:v8 withAdvertisement:v5];
}

void sub_10037A5A4(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_opt_new();
  [v3 setKeyType:1];
  v4 = [v6 getIRK];
  [v3 setIrkData:v4];

  v5 = sub_100346F54(v6);
  [v3 setBtAddressData:v5];

  [*(a1 + 32) addObject:v3];
}

void sub_10037A7B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if (![WeakRetained[17] count] && (objc_msgSend(v2[12], "discoveryFlags") & 0x200100000) != 0)
    {
      v3 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v5[0] = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-disc,NearbyActionNoWake: disabling scan dupes", v5, 2u);
      }

      [v2[12] setDiscoveryFlags:{objc_msgSend(v2[12], "discoveryFlags") & 0xFFFFFFFDFFEFFFFFLL}];
    }

    v4 = v2[15];
    v2[15] = 0;
  }
}

void sub_10037AD0C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cbDeviceFoundHandler:v3];
}

void sub_10037AD80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005288();
  v5 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = v4 - v5;
    if (v3)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004C57C8();
      }

      v9 = v7[12];
      v7[12] = 0;
    }

    else
    {
      *(WeakRetained + 112) = 1;
      v10 = [WeakRetained _nearbyActionNoWakeOOBKeysFromEligibleDiscoveryPeers];
      [v7[12] setOobKeys:v10];

      if (![v7[17] count])
      {
        [v7 _nearbyActionNoWakeDisableScanDupesIfNecessary];
      }

      v11 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v7[12];
        v14 = 134218243;
        v15 = v8;
        v16 = 2113;
        v17 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#find-disc,NearbyActionNoWake: activated scanner [%0.6f s]: %{private}@", &v14, 0x16u);
      }

      v9 = qword_1009F9820;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v7[12] discoveredDevices];
        v14 = 138477827;
        v15 = *&v13;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#find-disc,NearbyActionNoWake: discovered devices after activating scanner: %{private}@", &v14, 0xCu);
      }
    }
  }
}

void sub_10037B2B8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cbDeviceFoundHandler:v3];
}

void sub_10037B32C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005288();
  v5 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = v4 - v5;
    if (v3)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004C5838();
      }

      v9 = v7[13];
      v7[13] = 0;

      v10 = v7[23];
      v7[23] = 0;
    }

    else
    {
      *(WeakRetained + 112) = 1;
      v11 = +[NSDate now];
      v12 = v7[23];
      v7[23] = v11;

      v13 = v7[16];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10037B50C;
      v16[3] = &unk_10099EEB0;
      v16[4] = v7;
      [v13 enumerateObjectsUsingBlock:v16];
      v14 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v7[13];
        *buf = 134218243;
        v18 = v8;
        v19 = 2113;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#find-disc,SpatialInteraction: activated scanner [%0.6f s]: %{private}@", buf, 0x16u);
      }
    }
  }
}

void sub_10037B50C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005288();
  v5 = *(*(a1 + 32) + 104);
  v6 = [v3 rawToken];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10037B604;
  v8[3] = &unk_1009A06B8;
  v10 = v4;
  v7 = v3;
  v9 = v7;
  [v5 addPeerToken:v6 completion:v8];
}

void sub_10037B604(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005288() - *(a1 + 40);
  v5 = qword_1009F9820;
  if (v3)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004C58A8();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138478083;
    v8 = v6;
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#find-disc,SpatialInteraction: added %{private}@ to scanner [%0.6f s]", &v7, 0x16u);
  }
}

void sub_10037BA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  v24 = v23;

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_10037BAA8(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = sub_100346F54(v6);
  v4 = [v6 getIRK];
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_data(v5, "btAd", [v3 bytes], objc_msgSend(v3, "length"));
  xpc_dictionary_set_data(v5, "irkD", [v4 bytes], objc_msgSend(v4, "length"));
  xpc_dictionary_set_uint64(v5, "irkT", 1uLL);
  xpc_array_set_value(*(*(*(a1 + 32) + 8) + 40), 0xFFFFFFFFFFFFFFFFLL, v5);
}

void sub_10037BDE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained[22] removeObjectForKey:*(a1 + 32)];
    v3 = [v6[21] objectForKey:*(a1 + 32)];

    WeakRetained = v6;
    if (v3)
    {
      v4 = [v6 stopAdvertisingToPeer:*(a1 + 32)];
      v5 = objc_loadWeakRetained(v6 + 5);
      [v5 didStopAdvertisingToPeer:*(a1 + 32)];

      WeakRetained = v6;
    }
  }
}

void sub_10037C070(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained[19] removeObjectForKey:*(a1 + 32)];
    v3 = [v5[17] objectForKey:*(a1 + 32)];

    [v5 _resetDiscoveryStateForPeer:*(a1 + 32)];
    WeakRetained = v5;
    if (v3)
    {
      v4 = objc_loadWeakRetained(v5 + 5);
      [v4 didLosePeer:*(a1 + 32)];

      WeakRetained = v5;
    }
  }
}

void sub_10037C3C4(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v6 = [*(a1 + 32) btAddressData];
  v7 = sub_100374F1C(v10, v6);

  v8 = [*(a1 + 32) nearbyActionNoWakeAuthTagData];
  v9 = [v7 isEqualToData:v8];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void sub_10037C750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10037D258(_Unwind_Exception *a1)
{
  if (!v2)
  {
  }

  _Unwind_Resume(a1);
}

void sub_10037D598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10037D6DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10037D83C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10037DF5C(_Unwind_Exception *a1)
{
  if (v4)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_10037E09C(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return sub_10037E450(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
}

uint64_t *sub_10037E0D4(uint64_t *result, char **a2)
{
  if (result != a2)
  {
    return sub_10037E4CC(result, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  return result;
}

void sub_10037E1B0(id a1)
{
  if (+[NIPlatformInfo isInternalBuild])
  {
    v1 = +[NSUserDefaults standardUserDefaults];
    byte_1009F7500 = [v1 BOOLForKey:@"FindingTestModeStaticAuthTag"];

    v2 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v7[0] = 67109120;
    v7[1] = byte_1009F7500;
    v3 = "#find-disc,Static tag test mode: %d";
    v4 = v2;
    v5 = 8;
  }

  else
  {
    byte_1009F7500 = 0;
    v6 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v7[0]) = 0;
    v3 = "#find-disc,Static tag test mode never allowed";
    v4 = v6;
    v5 = 2;
  }

  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v3, v7, v5);
}

void sub_10037E2F4(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_1009F7518 = [v1 BOOLForKey:@"FindingDisableClientDiscoveryEvents"];

  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = byte_1009F7518;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#find-disc,Disable client discovery events: %d", v3, 8u);
  }
}

uint64_t *sub_10037E3DC(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    sub_10004F5E0(result, a4);
  }

  return result;
}

void sub_10037E434(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10037E450(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10004F5E0(result, a4);
  }

  return result;
}

void sub_10037E4B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10037E4CC(uint64_t *result, char *__src, char *a3, unint64_t a4)
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

      sub_10004F5E0(v6, v10);
    }

    sub_100019B38();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_10037EC64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a12 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

void sub_100380CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41)
{
  sub_10029B230(&a41);
  sub_10002074C(&STACK[0x278], STACK[0x280]);

  STACK[0x440] = &STACK[0x310];
  sub_10038C574(&STACK[0x440]);

  _Unwind_Resume(a1);
}

void sub_100381238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_10000AD84(a12);
  }

  operator delete();
}

void sub_1003814EC(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_1009F7960);

  _Unwind_Resume(a1);
}

void sub_1003833DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100383530(int a1, float a2)
{
  sub_10026B0D4(&v5);
  v3 = v5;
  *(&v7[0].__locale_ + *(v5 - 3)) = a1;
  *(&v5 + *(v3 - 3) + 8) = *(&v5 + *(v3 - 3) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  std::stringbuf::str();
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  std::locale::~locale(v7);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1003836F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10038B85C(va);
  _Unwind_Resume(a1);
}

void sub_100384740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100384FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, uint64_t a46, char a47)
{
  sub_10038C500(&a16);

  a16 = v50 - 168;
  sub_10038E8C0(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_1003850A0(unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10038EA0C(a1, a2);
  }

  else
  {
    sub_10038E964(a1, a2);
    result = v3 + 248;
  }

  a1[1] = result;
  return result;
}

void *sub_100385D00(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_1009EC1C0, memory_order_acquire) & 1) == 0)
  {
    sub_1004C5F84();
  }

  return &unk_1009EC1B8;
}

void sub_100385E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100385FA0(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10040E500(result);

    operator delete();
  }

  return result;
}

uint64_t *sub_100385FEC(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 984);
    if (v3)
    {
      sub_10000AD84(v3);
    }

    sub_10038F4A4((v2 + 928));
    *(v2 + 824) = off_1009991A0;
    *(v2 + 656) = off_1009991A0;
    *(v2 + 584) = off_1009991A0;
    *(v2 + 384) = off_1009991A0;
    *(v2 + 312) = off_1009991A0;
    sub_10002074C(v2 + 272, *(v2 + 280));
    sub_10002074C(v2 + 248, *(v2 + 256));
    sub_1001B3D00((v2 + 176));
    sub_10038F4A4((v2 + 128));
    sub_100021914(v2 + 48);
    sub_100021914(v2 + 8);

    operator delete();
  }

  return result;
}

void sub_100387B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100387C80(double a1)
{
  sub_100193120(v3);
  *(&v3[2] + *(v3[0] - 3)) = 4;
  std::ostream::operator<<();
  std::stringbuf::str();
  v3[2] = v1;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  std::locale::~locale(v5);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100387E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100387FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10038B828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  sub_10038B85C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10038B85C(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

void sub_10038BFE4(_Unwind_Exception *a1)
{
  sub_10002074C(v1, *(v1 + 8));

  _Unwind_Resume(a1);
}

uint64_t sub_10038C4A8(uint64_t a1)
{
  if (*(a1 + 520) == 1 && *(a1 + 519) < 0)
  {
    operator delete(*(a1 + 496));
  }

  sub_10002074C(a1 + 440, *(a1 + 448));
  sub_10002074C(a1, *(a1 + 8));
  return a1;
}

uint64_t sub_10038C500(uint64_t a1)
{
  if (*(a1 + 200) == 1)
  {
    v2 = *(a1 + 168);
    if (v2)
    {
      *(a1 + 176) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 144);
    if (v3)
    {
      *(a1 + 152) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 120);
    if (v4)
    {
      *(a1 + 128) = v4;
      operator delete(v4);
    }

    v5 = *(a1 + 96);
    if (v5)
    {
      *(a1 + 104) = v5;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_10038C574(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10038C5C8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10038C5C8(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 25);
    v3 -= 6;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t sub_10038C618(unint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_100019B38();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_10038C760(a1, v6);
  }

  v7 = 48 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 20);
  *(v7 + 24) = v9;
  *&v18 = 48 * v2 + 48;
  v10 = a1[1];
  v11 = 48 * v2 + *a1 - v10;
  sub_10038C7B8(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_10038C8FC(&v16);
  return v15;
}

void sub_10038C74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10038C8FC(va);
  _Unwind_Resume(a1);
}

void sub_10038C760(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_10038C7B8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 20);
      *(a4 + 24) = v8;
      v6 += 3;
      a4 += 48;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 3;
    }
  }

  return sub_10038C87C(v10);
}

uint64_t sub_10038C87C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10038C8B4(a1);
  }

  return a1;
}

void sub_10038C8B4(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 25);
    v1 -= 6;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t sub_10038C8FC(uint64_t a1)
{
  sub_10038C934(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10038C934(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 6;
      *(a1 + 16) = v2 - 6;
      if (*(v2 - 25) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t **sub_10038C990(uint64_t **a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_10038C9E8(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t **sub_10038C9E8(uint64_t **result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1001BD130(v5, v5 + 1, v4 + 7, v4 + 7);
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

uint64_t sub_10038CA70(uint64_t a1)
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

uint64_t sub_10038CAF0(uint64_t a1)
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

uint64_t sub_10038CB70(uint64_t a1)
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

uint64_t sub_10038CBF0(uint64_t a1)
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

uint64_t sub_10038CC70(uint64_t a1)
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

void sub_10038CD1C(uint64_t a1)
{

  operator delete();
}

id sub_10038CDD0(uint64_t a1, void *a2)
{
  *a2 = off_1009A85D0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10038CE20(id *a1)
{

  operator delete(a1);
}

void sub_10038CE5C(uint64_t a1, double *a2, uint64_t *a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t *a7, unsigned __int8 *a8)
{
  v8 = *a2;
  v9 = *a3;
  LOBYTE(v33[0]) = 0;
  v37 = 0;
  if (*(a4 + 48) == 1)
  {
    *v33 = *a4;
    v34 = *(a4 + 16);
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = 0;
    v35 = *(a4 + 24);
    v36 = *(a4 + 40);
    v37 = 1;
  }

  LOBYTE(__p[0]) = 0;
  v32 = 0;
  if (*(a5 + 48) == 1)
  {
    *__p = *a5;
    v29 = *(a5 + 16);
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    *a5 = 0;
    v30 = *(a5 + 24);
    v31 = *(a5 + 40);
    v32 = 1;
  }

  v25 = a6[12];
  v26 = a6[13];
  v27 = a6[14];
  v21 = a6[8];
  v22 = a6[9];
  v23 = a6[10];
  v24 = a6[11];
  v17 = a6[4];
  v18 = a6[5];
  v19 = a6[6];
  v20 = a6[7];
  v13 = *a6;
  v14 = a6[1];
  v15 = a6[2];
  v16 = a6[3];
  v10 = *a7;
  v11 = *a8;
  v12 = *(a1 + 8);
  sub_100012FB4(__dst, v33);
  sub_100012FB4(v39, __p);
  v38[12] = v25;
  v38[13] = v26;
  v38[14] = v27;
  v38[8] = v21;
  v38[9] = v22;
  v38[10] = v23;
  v38[11] = v24;
  v38[4] = v17;
  v38[5] = v18;
  v38[6] = v19;
  v38[7] = v20;
  v38[0] = v13;
  v38[1] = v14;
  v38[2] = v15;
  v38[3] = v16;
  [v12 _handleRegionChangeForDevice:v9 currentRegion:__dst prevRegion:v39 timestamp:v38 rangeResult:v10 intentPrediction:v11 regionTransitionSuppressed:v8];
  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39[0]);
  }

  if (v44 == 1 && v43 < 0)
  {
    operator delete(__dst[0]);
  }

  if (v32 == 1 && SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
  }

  if (v37 == 1 && SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
  }
}

void sub_10038D064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  if (*(v59 - 128) == 1 && *(v59 - 153) < 0)
  {
    operator delete(*(v59 - 176));
  }

  if (*(v59 - 72) == 1 && *(v59 - 97) < 0)
  {
    operator delete(*(v59 - 120));
  }

  if (a48 == 1 && a44 < 0)
  {
    operator delete(__p);
  }

  if (a59 == 1 && a55 < 0)
  {
    operator delete(a50);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10038D0F0(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A8640))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10038D168(uint64_t a1)
{

  operator delete();
}

id sub_10038D21C(uint64_t a1, void *a2)
{
  *a2 = off_1009A8660;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10038D26C(id *a1)
{

  operator delete(a1);
}

void sub_10038D2A8(uint64_t a1, unsigned __int8 *a2, uint64_t *a3, double *a4, unsigned int *a5, __int128 *a6, unsigned int *a7)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  LOBYTE(v13) = 0;
  v15 = 0;
  if (*(a6 + 24) == 1)
  {
    v13 = *a6;
    v14 = *(a6 + 2);
    *(a6 + 8) = 0uLL;
    *a6 = 0;
    v15 = 1;
  }

  else if (v7)
  {
    __assert_rtn("operator()", "NIServerNearbyUpdatesEngine.mm", 521, "regionsVector.has_value()");
  }

  v11 = *a7;
  v12 = *(a1 + 8);
  sub_10038D458(v16, &v13);
  [v12 _handleDeviceMonitorActivation:v7 forDevice:v8 timestamp:v10 regionSizeCategory:v16 regions:v11 predictorType:{v9, v13}];
  if (v17 == 1)
  {
    v18 = v16;
    sub_10038C574(&v18);
  }

  if (v15 == 1)
  {
    v16[0] = &v13;
    sub_10038C574(v16);
  }
}

void sub_10038D3C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t *a18)
{
  if (a17 == 1)
  {
    a18 = &a14;
    sub_10038C574(&a18);
  }

  if (a12 == 1)
  {
    a18 = &a9;
    sub_10038C574(&a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10038D40C(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A86D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10038D458(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_10038D4B4(a1, a2);
  return a1;
}

void sub_10038D490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    sub_10038C574(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10038D4B4(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_10038D514(result, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 4));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t *sub_10038D514(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_10038D59C(result, a4);
  }

  return result;
}

void sub_10038D57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10038C574(&a9);
  _Unwind_Resume(a1);
}

void sub_10038D59C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_10038C760(a1, a2);
  }

  sub_100019B38();
}

char *sub_10038D5E8(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v13 = __dst;
  v14 = __dst;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_1000056BC(v4, *v6, *(v6 + 1));
        v8 = v14;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      v9 = *(v6 + 24);
      *(v4 + 20) = *(v6 + 20);
      *(v4 + 24) = v9;
      v6 += 3;
      v4 = v8 + 48;
      v14 = v8 + 48;
    }

    while (v6 != a3);
  }

  v12 = 1;
  sub_10038C87C(v11);
  return v4;
}

void sub_10038D6E8(uint64_t a1)
{

  operator delete();
}

id sub_10038D79C(uint64_t a1, void *a2)
{
  *a2 = off_1009A86F0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10038D7EC(id *a1)
{

  operator delete(a1);
}

id sub_10038D828(uint64_t a1, double *a2, uint64_t *a3, _OWORD *a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = a4[13];
  v14[12] = a4[12];
  v14[13] = v6;
  v14[14] = a4[14];
  v7 = a4[9];
  v14[8] = a4[8];
  v14[9] = v7;
  v8 = a4[11];
  v14[10] = a4[10];
  v14[11] = v8;
  v9 = a4[5];
  v14[4] = a4[4];
  v14[5] = v9;
  v10 = a4[7];
  v14[6] = a4[6];
  v14[7] = v10;
  v11 = a4[1];
  v14[0] = *a4;
  v14[1] = v11;
  v12 = a4[3];
  v14[2] = a4[2];
  v14[3] = v12;
  return [*(a1 + 8) _handleBoundedRegionRange:v5 forDevice:v14 rangeResult:v4];
}

uint64_t sub_10038D8A0(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A8760))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10038D8EC(uint64_t a1, uint64_t a2)
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

uint64_t sub_10038D984(uint64_t a1, uint64_t a2)
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

uint64_t sub_10038DA1C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10038DAB4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10038DB4C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10038DBE4(uint64_t a1)
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

uint64_t sub_10038DC64(uint64_t a1)
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

uint64_t sub_10038DCE4(uint64_t a1)
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

void *sub_10038DD64(void *a1, unint64_t *a2, uint64_t a3, uint64_t **a4, uint64_t **a5)
{
  v5 = *a2;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = *a2;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != v5)
  {
    goto LABEL_17;
  }

  return v10;
}

void sub_10038DFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10038DFD8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10038DFD8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100385FA0(v2 + 3, 0);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_10038E028(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v6 = (v2 + 576);
    sub_10038E148(&v6);
    sub_10004EDBC((v2 + 504));
    v3 = *(v2 + 136);
    *(v2 + 136) = 0;
    if (v3)
    {
      v3[21] = off_1009991A0;
      v3[13] = off_1009991A0;
      v3[5] = off_1009991A0;
      operator delete();
    }

    if (*(v2 + 128) == 1)
    {
      v4 = *(v2 + 96);
      if (v4)
      {
        *(v2 + 104) = v4;
        operator delete(v4);
      }
    }

    v5 = *(v2 + 72);
    *(v2 + 72) = 0;
    if (v5)
    {
      sub_10038E1EC(v5);
      operator delete();
    }

    operator delete();
  }

  return result;
}

void sub_10038E148(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10038E19C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10038E19C(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 73);
    v3 -= 12;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t sub_10038E1EC(uint64_t a1)
{
  *(a1 + 856) = off_1009991A0;
  *(a1 + 776) = off_1009991A0;
  v7 = (a1 + 712);
  sub_10038E378(&v7);
  v7 = (a1 + 688);
  sub_10038E3D0(&v7);
  v7 = (a1 + 664);
  sub_10038E378(&v7);
  *(a1 + 536) = off_1009991A0;
  *(a1 + 472) = off_1009991A0;
  *(a1 + 336) = off_1009991A0;
  *(a1 + 264) = off_1009991A0;
  *(a1 + 192) = off_1009991A0;
  v7 = (a1 + 168);
  sub_10038E448(&v7);
  v2 = *(a1 + 136);
  if (v2)
  {
    *(a1 + 144) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    *(a1 + 96) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    *(a1 + 48) = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_10038E378(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    if (v3 != v2)
    {
      v4 = v3 - 72;
      do
      {
        *(v3 - 9) = off_1009991A0;
        v4 -= 112;
        v3 -= 112;
      }

      while (v3 != v2);
    }

    v1[1] = v2;
    operator delete(v2);
  }
}

void sub_10038E3D0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    if (v3 != v2)
    {
      v4 = v3 - 176;
      do
      {
        *(v3 - 14) = off_1009991A0;
        *(v3 - 22) = off_1009991A0;
        v4 -= 208;
        v3 -= 208;
      }

      while (v3 != v2);
    }

    v1[1] = v2;
    operator delete(v2);
  }
}

void sub_10038E448(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10038E49C(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_10038E49C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != a2)
  {
    v3 = 0;
    do
    {
      v4 = v2 + v3;
      *(v4 - 64) = off_1009991A0;
      *(v4 - 192) = off_1009991A0;
      *(v2 + v3 - 304) = off_1009991A0;
      *(v2 + v3 - 368) = off_1009991A0;
      *(v2 + v3 - 432) = off_1009991A0;
      v3 -= 432;
    }

    while (v2 + v3 != a2);
  }

  *(result + 8) = a2;
  return result;
}

uint64_t *sub_10038E568(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10038E5F0(result, a4);
  }

  return result;
}

void sub_10038E5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_10038E814(&a9);
  _Unwind_Resume(a1);
}

void sub_10038E5F0(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    sub_10038E63C(a1, a2);
  }

  sub_100019B38();
}

void sub_10038E63C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    operator new();
  }

  sub_100013B04();
}

void *sub_10038E694(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v16 = a4;
  v17 = a4;
  v14[0] = a1;
  v14[1] = &v16;
  v14[2] = &v17;
  v15 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_100009A48(v4, *v6, *(v6 + 8), *(v6 + 8) - *v6);
      *(v4 + 3) = *(v6 + 24);
      v7 = *(v6 + 40);
      v8 = *(v6 + 56);
      v9 = *(v6 + 72);
      *(v4 + 11) = *(v6 + 88);
      *(v4 + 9) = v9;
      *(v4 + 7) = v8;
      *(v4 + 5) = v7;
      v10 = *(v6 + 104);
      v11 = *(v6 + 120);
      v12 = *(v6 + 136);
      *(v4 + 152) = *(v6 + 152);
      *(v4 + 17) = v12;
      *(v4 + 15) = v11;
      *(v4 + 13) = v10;
      v6 += 160;
      v4 = v17 + 20;
      v17 += 20;
    }

    while (v6 != a3);
  }

  v15 = 1;
  sub_10038E78C(v14);
  return v4;
}

uint64_t sub_10038E78C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10038E7C4(a1);
  }

  return a1;
}

void sub_10038E7C4(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 160);
      v3 -= 160;
      v4 = v5;
      if (v5)
      {
        *(v1 - 152) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void sub_10038E814(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10038E868(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10038E868(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 160);
      v4 -= 160;
      v5 = v6;
      if (v6)
      {
        *(v2 - 152) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sub_10038E8C0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10038E914(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10038E914(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 248)
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

uint64_t *sub_10038E964(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 80);
  *(v3 + 64) = *(a2 + 64);
  *(v3 + 80) = v7;
  *(v3 + 32) = v5;
  *(v3 + 48) = v6;
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 144);
  *(v3 + 128) = *(a2 + 128);
  *(v3 + 144) = v10;
  *(v3 + 96) = v8;
  *(v3 + 112) = v9;
  v11 = *(a2 + 160);
  v12 = *(a2 + 176);
  v13 = *(a2 + 192);
  *(v3 + 201) = *(a2 + 201);
  *(v3 + 176) = v12;
  *(v3 + 192) = v13;
  *(v3 + 160) = v11;
  *(v3 + 232) = 0;
  *(v3 + 240) = 0;
  *(v3 + 224) = 0;
  result = sub_10038EBB8((v3 + 224), *(a2 + 224), *(a2 + 232), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 232) - *(a2 + 224)) >> 4));
  *(a1 + 8) = v3 + 248;
  return result;
}

uint64_t sub_10038EA0C(unint64_t *a1, uint64_t a2)
{
  v2 = 0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x108421084210842)
  {
    sub_100019B38();
  }

  if (0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEF7BDEF7BDEF7BDFLL * ((a1[2] - *a1) >> 3) >= 0x84210842108421)
  {
    v6 = 0x108421084210842;
  }

  else
  {
    v6 = v3;
  }

  v27 = a1;
  if (v6)
  {
    sub_10038ECE0(a1, v6);
  }

  v7 = 248 * v2;
  v24 = 0;
  v25 = v7;
  v26 = 248 * v2;
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  v10 = *(a2 + 80);
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 80) = v10;
  *(v7 + 32) = v8;
  *(v7 + 48) = v9;
  v11 = *(a2 + 96);
  v12 = *(a2 + 112);
  v13 = *(a2 + 144);
  *(v7 + 128) = *(a2 + 128);
  *(v7 + 144) = v13;
  *(v7 + 96) = v11;
  *(v7 + 112) = v12;
  v14 = *(a2 + 160);
  v15 = *(a2 + 176);
  v16 = *(a2 + 192);
  *(v7 + 201) = *(a2 + 201);
  *(v7 + 176) = v15;
  *(v7 + 192) = v16;
  *(v7 + 160) = v14;
  v17 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v17;
  *(v7 + 232) = 0;
  *(v7 + 240) = 0;
  *(v7 + 224) = 0;
  sub_10038EBB8((248 * v2 + 224), *(a2 + 224), *(a2 + 232), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 232) - *(a2 + 224)) >> 4));
  *&v26 = v26 + 248;
  v18 = a1[1];
  v19 = v25 + *a1 - v18;
  sub_10038ED3C(a1, *a1, v18, v19);
  v20 = *a1;
  *a1 = v19;
  v21 = a1[2];
  v23 = v26;
  *(a1 + 1) = v26;
  *&v26 = v20;
  *(&v26 + 1) = v21;
  v24 = v20;
  v25 = v20;
  sub_10038EEB8(&v24);
  return v23;
}

void sub_10038EBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10038EEB8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10038EBB8(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10038EC34(result, a4);
  }

  return result;
}

void sub_10038EC18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10038EC34(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    sub_10038EC84(a1, a2);
  }

  sub_100019B38();
}

void sub_10038EC84(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_100013B04();
}

void sub_10038ECE0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x108421084210843)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_10038ED3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v21 = a4;
  v19[0] = a1;
  v19[1] = &v21;
  v19[2] = &v22;
  if (a2 == a3)
  {
    v20 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      *a4 = *v6;
      *(a4 + 16) = v7;
      v8 = *(v6 + 32);
      v9 = *(v6 + 48);
      v10 = *(v6 + 80);
      *(a4 + 64) = *(v6 + 64);
      *(a4 + 80) = v10;
      *(a4 + 32) = v8;
      *(a4 + 48) = v9;
      v11 = *(v6 + 96);
      v12 = *(v6 + 112);
      v13 = *(v6 + 144);
      *(a4 + 128) = *(v6 + 128);
      *(a4 + 144) = v13;
      *(a4 + 96) = v11;
      *(a4 + 112) = v12;
      v14 = *(v6 + 160);
      v15 = *(v6 + 176);
      v16 = *(v6 + 192);
      *(a4 + 201) = *(v6 + 201);
      *(a4 + 176) = v15;
      *(a4 + 192) = v16;
      *(a4 + 160) = v14;
      *(a4 + 232) = 0;
      *(a4 + 240) = 0;
      *(a4 + 224) = 0;
      *(a4 + 224) = *(v6 + 224);
      *(a4 + 240) = *(v6 + 240);
      *(v6 + 224) = 0;
      *(v6 + 232) = 0;
      *(v6 + 240) = 0;
      v6 += 248;
      a4 += 248;
    }

    while (v6 != a3);
    v22 = a4;
    v20 = 1;
    while (v5 != a3)
    {
      v17 = *(v5 + 224);
      if (v17)
      {
        *(v5 + 232) = v17;
        operator delete(v17);
      }

      v5 += 248;
    }
  }

  return sub_10038EE38(v19);
}

uint64_t sub_10038EE38(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10038EE70(a1);
  }

  return a1;
}

void sub_10038EE70(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 248;
  }
}

uint64_t sub_10038EEB8(uint64_t a1)
{
  sub_10038EEF0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10038EEF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 248;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 248;
    }
  }
}

void sub_10038EF50(uint64_t a1)
{
  if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 24);

  sub_10002074C(a1 + 16, v2);
}

uint64_t *sub_10038EFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    sub_10038F064();
  }

  v4 = *(a2 + 8);
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 5);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v3;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v3;
    }

    v3 = v3[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_10038F15C(_Unwind_Exception *a1)
{
  sub_10002074C(v2 + 48, *(v2 + 56));
  sub_10038F184(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10038F184(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10038EF50(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_10038F1D0(double **a1, double *a2, uint64_t a3, uint64_t a4)
{
  v4 = *sub_10038F264(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    sub_10038F064();
  }

  return v4;
}

double *sub_10038F264(double **a1, double *a2, double **a3, double *a4, uint64_t a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *(a5 + 8), v7 = a2[5], v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = *(v13 + 2);
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *(a5 + 8);
    if (v10[5] < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = *&v16;
          v18 = *(*&v16 + 40);
          if (v15 >= v18)
          {
            break;
          }

          v16 = **&v16;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_43;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = (*&v16 + 8);
        v16 = *(*&v16 + 8);
      }

      while (v16 != 0.0);
      goto LABEL_43;
    }

LABEL_42:
    v17 = (a1 + 1);
LABEL_43:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    v12 = *(a2 + 1);
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = *(v19 + 2);
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[5])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v20;
          v21 = v20[5];
          if (v6 >= v21)
          {
            break;
          }

          v20 = *v20;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_43;
          }
        }

        if (v21 >= v6)
        {
          break;
        }

        v5 = v20 + 1;
        v20 = *(v20 + 1);
      }

      while (v20);
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_10038F400(uint64_t result)
{
  if (*(result + 24))
  {
    sub_10038F45C(result, *(result + 16));
    *(result + 16) = 0;
    v2 = *(result + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*result + 8 * i) = 0;
      }
    }

    *(result + 24) = 0;
  }
}

void sub_10038F45C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_100385FA0(v2 + 3, 0);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_10038F4A4(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 42;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 85;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_10004EE68(a1);
}

void *sub_10038F550(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
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

uint64_t sub_10038F61C(uint64_t a1)
{
  sub_10038F45C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_10038F660()
{
  v0 = objc_autoreleasePoolPush();
  sub_100004A08(&qword_1009F7520, "/System/Library/NearbyInteractionBundles");
  __cxa_atexit(&std::string::~string, &qword_1009F7520, &_mh_execute_header);
  sub_100004A08(&qword_1009F7538, "BiasEstimatorResourceBundle.bundle");
  __cxa_atexit(&std::string::~string, &qword_1009F7538, &_mh_execute_header);
  v7 = xmmword_10056DBE8;
  v8[0] = unk_10056DBF8;
  sub_1001BD0B0(qword_1009F7550, &v7, 4);
  xmmword_1009F7568 = xmmword_100563BD0;
  *&qword_1009F7578 = xmmword_100563BE0;
  qword_1009F7590 = 0;
  unk_1009F7598 = 0;
  qword_1009F7588 = 0x3FD999999999999ALL;
  unk_1009F75A0 = xmmword_100563BF0;
  dword_1009F75B0 = 5;
  qword_1009F75B8 = 0x4000000000000000;
  LODWORD(qword_1009F75C0) = 5;
  byte_1009F75C8 = 0;
  unk_1009F75CC = 0x30000000ALL;
  xmmword_1009F75D8 = xmmword_100563C00;
  unk_1009F75E8 = xmmword_100563C10;
  xmmword_1009F75F8 = xmmword_100563C20;
  qword_1009F7608 = 0x3FE3333333333333;
  dword_1009F7610 = 3;
  xmmword_1009F7618 = xmmword_100563C30;
  unk_1009F7628 = xmmword_100563C10;
  xmmword_1009F7638 = xmmword_100563C00;
  qword_1009F7648 = 0x3FE3333333333333;
  LOBYTE(qword_1009F7650) = 0;
  xmmword_1009F7658 = xmmword_100563C40;
  unk_1009F7668 = xmmword_100563C50;
  __asm { FMOV            V0.2D, #1.0 }

  v6 = _Q0;
  xmmword_1009F7678 = _Q0;
  qword_1009F7688 = 0xBFD3333333333333;
  xmmword_1009F7690 = xmmword_100563C60;
  qword_1009F76A0 = 0x3E99999A40000000;
  xmmword_1009F76A8 = xmmword_100563BE0;
  qword_1009F76C0 = 0;
  unk_1009F76C8 = 0;
  qword_1009F76B8 = 0x3FD999999999999ALL;
  xmmword_1009F76D0 = xmmword_100563BF0;
  dword_1009F76E0 = 5;
  qword_1009F76E8 = 0x4000000000000000;
  dword_1009F76F0 = 4;
  *&xmmword_1009F76F8 = 0x300000008;
  *(&xmmword_1009F76F8 + 1) = 0xC04E800000000000;
  *(&v9 + 1) = 0xC04E800000000000;
  sub_1001BD370(algn_1009F7708, &v9 + 1, 1);
  xmmword_1009F7720 = xmmword_100563C70;
  qword_1009F7730 = 0x4024000000000000;
  dword_1009F7738 = 45;
  LOBYTE(byte_1009F7740) = 0;
  byte_1009F7758 = 0;
  *&xmmword_1009F7760 = 0;
  BYTE8(xmmword_1009F7760) = 0;
  HIDWORD(xmmword_1009F7760) = 1;
  byte_1009F7770 = 1;
  xmmword_1009F7778 = xmmword_100563C80;
  xmmword_1009F7788 = xmmword_100563C90;
  xmmword_1009F7798 = v6;
  qword_1009F77A8 = 0xC059000000000000;
  xmmword_1009F77B0 = xmmword_100563CA0;
  *&xmmword_1009F77C0 = vdup_n_s32(0x3DCCCCCDu);
  *(&xmmword_1009F77C0 + 8) = xmmword_100563BE0;
  qword_1009F77D8 = 0x3FD999999999999ALL;
  xmmword_1009F77E0 = 0u;
  unk_1009F77F0 = xmmword_100563BF0;
  LODWORD(xmmword_1009F7800) = 5;
  *(&xmmword_1009F7800 + 1) = 0x4000000000000000;
  dword_1009F7810 = 10;
  qword_1009F7818 = 0x4034000000000000;
  LODWORD(xmmword_1009F7820) = 3;
  *(&xmmword_1009F7820 + 8) = xmmword_100563CB0;
  __cxa_atexit(sub_1001BB564, qword_1009F7550, &_mh_execute_header);
  __cxa_atexit(nullsub_73, off_1009EC1A8, &_mh_execute_header);
  __cxa_atexit(nullsub_74, &off_1009EC1B0, &_mh_execute_header);
  v7 = xmmword_10056DC08;
  v8[0] = unk_10056DC18;
  v8[1] = xmmword_10056DC28;
  v8[2] = unk_10056DC38;
  qword_1009F7840 = 0;
  unk_1009F7848 = 0;
  qword_1009F7838 = 0;
  sub_10004EEB8(&qword_1009F7838, &v7, &v9, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F7838, &_mh_execute_header);
  v7 = xmmword_10056DC48;
  qword_1009F7858 = 0;
  unk_1009F7860 = 0;
  qword_1009F7850 = 0;
  sub_10004EEB8(&qword_1009F7850, &v7, v8, 1uLL);
  __cxa_atexit(sub_100045220, &qword_1009F7850, &_mh_execute_header);
  *&v7 = "AntennaMask_1_NN_V5_Model_DeviceType_201.mlmodelc/fp16_model.espresso";
  *(&v7 + 1) = "net";
  sub_1002EB624(qword_1009F7868, &v7);
  *(&v9 + 1) = "AntennaMask_2_NN_V5_Model_DeviceType_201.mlmodelc/fp16_model.espresso";
  v10 = "net";
  sub_1002EB624(qword_1009F7898, &v9 + 1);
  __cxa_atexit(sub_1002D901C, qword_1009F7868, &_mh_execute_header);
  *&v7 = "AntennaMask_1_NN_V5_ScalingModel_DeviceType_201";
  *(&v7 + 1) = "mlmodelc";
  sub_1002EB624(qword_1009F78C8, &v7);
  *(&v9 + 1) = "AntennaMask_2_NN_V5_ScalingModel_DeviceType_201";
  v10 = "mlmodelc";
  sub_1002EB624(qword_1009F78F8, &v9 + 1);
  __cxa_atexit(sub_1002D901C, qword_1009F78C8, &_mh_execute_header);
  sub_100004A08(qword_1009F7928, "input_1");
  __cxa_atexit(&std::string::~string, qword_1009F7928, &_mh_execute_header);
  sub_100004A08(qword_1009F7940, "Identity");
  __cxa_atexit(&std::string::~string, qword_1009F7940, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_10038FE50(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100391850(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100391FF0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100392A48(id a1)
{
  v1 = objc_alloc_init(PRGlobalDebugSettings);
  v2 = qword_1009F7968;
  qword_1009F7968 = v1;
}

void sub_100394318(const void **a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  v5 = [NSString stringWithCString:v4 encoding:4];
  v6 = [NSMutableString stringWithString:v5];
  v7 = objc_alloc_init(NSDateFormatter);
  v8 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C6904(v11);
    }

    v12 = sub_100005288();
    std::to_string(&v21, v12);
    sub_100175684(a1, &v21.__r_.__value_.__l.__data_, &__p);
    v13 = std::string::append(&__p, ".protobuf.log");
    *a2 = *v13;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    [v7 setLocale:v8];
    [v7 setDateFormat:@"yyyy_MM_dd_HH_mm_ss"];
    v14 = [NSTimeZone timeZoneWithName:@"UTC"];
    [v7 setTimeZone:v14];

    v15 = +[NSDate date];
    v16 = [v7 stringFromDate:v15];

    [v6 appendString:v16];
    [v6 appendString:@".protobuf.log"];
    v17 = [v6 UTF8String];
    v18 = strlen(v17);
    if (v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100013AEC();
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v18;
    if (v18)
    {
      memmove(a2, v17, v18);
    }

    *(a2 + v19) = 0;
  }
}

id sub_100394AE8(void *a1, id a2)
{
  v3 = a1;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:v3];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    a2 = [v5 intValue];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v8 = off_1009A8978[v6];
    v10 = 138412802;
    v11 = v3;
    v12 = 2112;
    v13 = v8;
    v14 = 1024;
    v15 = a2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#PRDefaults,%@[%@] = %d", &v10, 0x1Cu);
  }

  return a2;
}

id sub_100394C68(void *a1, id a2)
{
  v3 = a1;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:v3];

  if (v5)
  {
    a2 = [v4 BOOLForKey:v3];
  }

  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v7 = off_1009A8978[v5 != 0];
    v9 = 138412802;
    v10 = v3;
    v11 = 2112;
    v12 = v7;
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#PRDefaults,%@[%@] = %d", &v9, 0x1Cu);
  }

  return a2;
}

double sub_100394DC0(void *a1, double a2)
{
  v3 = a1;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:v3];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v5 doubleValue];
    a2 = v6;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v9 = off_1009A8978[v7];
    v11 = 138412802;
    v12 = v3;
    v13 = 2112;
    v14 = v9;
    v15 = 2048;
    v16 = a2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#PRDefaults,%@[%@] = %f", &v11, 0x20u);
  }

  return a2;
}

id sub_1003958A8()
{
  result = [objc_allocWithZone(type metadata accessor for AONSenseSampleProvider(0)) init];
  static AONSenseSampleProvider.shared = result;
  return result;
}

id AONSenseSampleProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *AONSenseSampleProvider.shared.unsafeMutableAddressor()
{
  if (qword_1009F7978 != -1)
  {
    swift_once();
  }

  return &static AONSenseSampleProvider.shared;
}

id static AONSenseSampleProvider.shared.getter()
{
  if (qword_1009F7978 != -1)
  {
    swift_once();
  }

  v1 = static AONSenseSampleProvider.shared;

  return v1;
}

uint64_t AONSenseSampleProvider.register(queue:callback:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = &v4[OBJC_IVAR____TtC19ProximityDaemonCore22AONSenseSampleProvider__callout];
  v7 = *&v4[OBJC_IVAR____TtC19ProximityDaemonCore22AONSenseSampleProvider__callout];
  v8 = *&v4[OBJC_IVAR____TtC19ProximityDaemonCore22AONSenseSampleProvider__callout + 8];
  *v6 = a2;
  *(v6 + 1) = a3;

  sub_1000085A8(v7, v8);
  type metadata accessor for ALFBtAdvResultsRequester();
  swift_allocObject();
  v9 = a1;
  *&v4[OBJC_IVAR____TtC19ProximityDaemonCore22AONSenseSampleProvider__aonSense] = ALFBtAdvResultsRequester.init(queue:)();

  *(swift_allocObject() + 16) = v4;
  v10 = v4;
  dispatch thunk of ALFBtAdvResultsRequester.register(callback:intervalSec:)();
}

id AONSenseSampleProvider.init()()
{
  Logger.init(subsystem:category:)();
  v1 = &v0[OBJC_IVAR____TtC19ProximityDaemonCore22AONSenseSampleProvider__callout];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtC19ProximityDaemonCore22AONSenseSampleProvider__aonSense] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AONSenseSampleProvider(0);
  return objc_msgSendSuper2(&v3, "init");
}

id AONSenseSampleProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AONSenseSampleProvider(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AONSenseSampleProvider(uint64_t a1)
{
  result = qword_1009F7990;
  if (!qword_1009F7990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100395ED0(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100395F74(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100395FBC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1003967E8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100396EA0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100396088(v11);
  return v7;
}

uint64_t sub_100396088(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

const char *sub_1003960EC(int a1)
{
  if (a1 > 21759)
  {
    if (a1 > 28943)
    {
      if (a1 <= 29714)
      {
        if (a1 == 28944)
        {
          return "AudioAccessory1,2";
        }

        if (a1 == 29455)
        {
          return "AppleTV11,1";
        }
      }

      else
      {
        switch(a1)
        {
          case 29715:
            return "AudioAccessory5,1";
          case 65533:
            return "HeGn";
          case 65534:
            return "ApGn";
        }
      }
    }

    else if (a1 <= 28419)
    {
      if (a1 == 21760)
      {
        return "Device1,21760";
      }

      if (a1 == 22034)
      {
        return "Device1,22034";
      }
    }

    else
    {
      switch(a1)
      {
        case 28420:
          return "AppleTV5,3";
        case 28936:
          return "AppleTV6,2";
        case 28943:
          return "AudioAccessory1,1";
      }
    }

    return "?";
  }

  if (a1 <= 8193)
  {
    switch(a1)
    {
      case 0:
        return "Invalid";
      case 614:
        return "ATVRemote1,1";
      case 621:
        return "ATVRemote1,2";
    }

    return "?";
  }

  switch(a1)
  {
    case 8194:
      result = "AirPods1,1";
      break;
    case 8195:
      result = "PowerBeats3,1";
      break;
    case 8197:
      result = "BeatsX1,1";
      break;
    case 8198:
      result = "BeatsSolo3,1";
      break;
    case 8201:
      result = "BeatsStudio3,2";
      break;
    case 8202:
      result = "Device1,8202";
      break;
    case 8203:
      result = "PowerbeatsPro1,1";
      break;
    case 8204:
      result = "BeatsSoloPro1,1";
      break;
    case 8205:
      result = "Powerbeats4,1";
      break;
    case 8206:
      result = "AirPodsPro1,1";
      break;
    case 8207:
      result = "AirPods1,3";
      break;
    case 8208:
      result = "Device1,8208";
      break;
    case 8209:
      result = "BeatsStudioBuds1,1";
      break;
    case 8210:
      result = "Device1,8210";
      break;
    case 8211:
      result = "Device1,8211";
      break;
    case 8212:
      result = "Device1,8212";
      break;
    case 8213:
      result = "Device1,8213";
      break;
    case 8214:
      result = "BeatsStudioBuds1,2";
      break;
    case 8215:
      result = "BeatsStudioPro1,1";
      break;
    case 8216:
      result = "Device1,8216";
      break;
    case 8217:
      result = "Device1,8217";
      break;
    case 8218:
      result = "Device1,8218";
      break;
    case 8219:
      result = "Device1,8219";
      break;
    case 8220:
      result = "Device1,8220";
      break;
    case 8221:
      result = "Powerb3,1";
      break;
    case 8222:
      result = "Device1,8222";
      break;
    case 8223:
      result = "Device1,8223";
      break;
    case 8224:
      result = "Device1,8224";
      break;
    case 8228:
      result = "Device1,8228";
      break;
    case 8229:
      result = "Device1,8229";
      break;
    case 8230:
      result = "Device1,8230";
      break;
    case 8231:
      result = "AirPods3,4";
      break;
    case 8232:
      result = "Device1,8232";
      break;
    case 8233:
      result = "Device1,8233";
      break;
    case 8239:
      result = "Device1,8239";
      break;
    default:
      return "?";
  }

  return result;
}

id sub_100396430(uint64_t a1)
{
  if (a1 > 619)
  {
    if (a1 <= 799)
    {
      if (a1 > 776)
      {
        if (a1 <= 780)
        {
          if (a1 == 777)
          {
            v2 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
            v3 = v2;
            v4 = @"apple_wireless_mouse";
            goto LABEL_49;
          }

          if (a1 != 780)
          {
            goto LABEL_68;
          }

          v2 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v3 = v2;
          v4 = @"apple_mighty_mouse";
LABEL_49:
          v5 = [v2 localizedStringForKey:v4 value:&stru_1009B1428 table:@"CBLocalizable"];
LABEL_50:
          v6 = v5;

          goto LABEL_51;
        }

        if (a1 != 781)
        {
          if (a1 != 782)
          {
            goto LABEL_68;
          }

          goto LABEL_63;
        }

        goto LABEL_64;
      }

      if (a1 <= 667)
      {
        if (a1 == 620)
        {
          v2 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v3 = v2;
          v4 = @"apple_magic_keyboard_keypad";
          goto LABEL_49;
        }

        if (a1 != 666)
        {
          goto LABEL_68;
        }

        goto LABEL_26;
      }

      if (a1 == 668)
      {
LABEL_60:
        v2 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
        v3 = v2;
        v4 = @"apple_magic_keyboard";
        goto LABEL_49;
      }

      if (a1 != 671)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (a1 > 803)
      {
        if (a1 > 8215)
        {
          if (a1 == 8216 || a1 == 8220)
          {
            goto LABEL_42;
          }

          v1 = 8233;
LABEL_41:
          if (a1 == v1)
          {
LABEL_42:
            v2 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
            v3 = v2;
            v4 = @"apple_airpods_case";
            goto LABEL_49;
          }

LABEL_68:
          v3 = [CBProductInfo productInfoWithProductID:a1];
          v5 = [v3 productName];
          goto LABEL_50;
        }

        if (a1 != 804)
        {
          v1 = 8213;
          goto LABEL_41;
        }

LABEL_63:
        v2 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
        v3 = v2;
        v4 = @"apple_magic_trackpad";
        goto LABEL_49;
      }

      if (a1 <= 801)
      {
        if (a1 != 800)
        {
LABEL_26:
          v2 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v3 = v2;
          v4 = @"apple_magic_keyboard_touch";
          goto LABEL_49;
        }

        goto LABEL_60;
      }

      if (a1 != 802)
      {
LABEL_64:
        v2 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
        v3 = v2;
        v4 = @"apple_magic_mouse";
        goto LABEL_49;
      }
    }

    v2 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
    v3 = v2;
    v4 = @"apple_magic_keyboard_touch_keypad";
    goto LABEL_49;
  }

  if (a1 > 569)
  {
    if (a1 > 598)
    {
      if (a1 > 614)
      {
        if (a1 == 615)
        {
          goto LABEL_60;
        }

        if (a1 != 617)
        {
          goto LABEL_68;
        }

        goto LABEL_64;
      }

      if (a1 != 599)
      {
        if (a1 != 613)
        {
          goto LABEL_68;
        }

        goto LABEL_63;
      }
    }

    else if (a1 <= 596 && a1 != 570 && a1 != 571)
    {
      goto LABEL_68;
    }

LABEL_48:
    v2 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
    v3 = v2;
    v4 = @"apple_wireless_keyboard";
    goto LABEL_49;
  }

  if (a1 > 555)
  {
    if (a1 > 558 && a1 != 569)
    {
      goto LABEL_68;
    }

    goto LABEL_48;
  }

  if (a1 > 520)
  {
    if (a1 != 521 && a1 != 522)
    {
      goto LABEL_68;
    }

    goto LABEL_48;
  }

  if (a1)
  {
    if (a1 != 520)
    {
      goto LABEL_68;
    }

    goto LABEL_48;
  }

  v6 = 0;
LABEL_51:

  return v6;
}

unint64_t sub_1003967E8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1003968F4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1003968F4(uint64_t a1, unint64_t a2)
{
  v3 = sub_100396940(a1, a2);
  sub_100396A70(&off_1009A8988);
  return v3;
}

char *sub_100396940(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100396B5C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100396B5C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_100396A70(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100396BD0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_100396B5C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100395F74(&qword_1009EC208, &qword_10056E2B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100396BD0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100395F74(&qword_1009EC208, &qword_10056E2B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100396CC4(uint64_t a1)
{
  v2 = type metadata accessor for ALBtAdvInfoType7.Placement();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = 0;
  if (v7 != enum case for ALBtAdvInfoType7.Placement.unknown(_:))
  {
    if (v7 == enum case for ALBtAdvInfoType7.Placement.inEar(_:))
    {
      return 1;
    }

    else if (v7 == enum case for ALBtAdvInfoType7.Placement.outOfEar(_:))
    {
      return 2;
    }

    else if (v7 == enum case for ALBtAdvInfoType7.Placement.inCase(_:))
    {
      return 3;
    }

    else if (v7 == enum case for ALBtAdvInfoType7.Placement.onEar(_:))
    {
      return 4;
    }

    else if (v7 == enum case for ALBtAdvInfoType7.Placement.offEar(_:))
    {
      return 5;
    }

    else if (v7 == enum case for ALBtAdvInfoType7.Placement.onNeck(_:))
    {
      return 6;
    }

    else if (v7 == enum case for ALBtAdvInfoType7.Placement.disabled(_:))
    {
      return 7;
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      return 0;
    }
  }

  return v8;
}

uint64_t sub_100396EA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100396F00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100395F74(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100396F7C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a4[1];
  *a1 = *a4;
  *(a1 + 8) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = a3[1];
  *(a1 + 16) = *a3;
  *(a1 + 24) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_1001FBC68((a1 + 32), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  *(a1 + 72) = 0;
  *(a1 + 64) = v11;
  *(a1 + 56) = v10;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_100009A48((a1 + 72), *(a2 + 40), *(a2 + 48), *(a2 + 48) - *(a2 + 40));
  *(a1 + 96) = 0;
  sub_1003980F8(a1 + 104, a5);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 158) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 172) = 0;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0;
  *(a1 + 204) = 0;
  if (!*(a1 + 16))
  {
    v13 = "_uwbSystem";
    v14 = 254;
    goto LABEL_12;
  }

  if (!*a1)
  {
    v13 = "_configProvider";
    v14 = 255;
    goto LABEL_12;
  }

  if (!*(a1 + 128))
  {
    v13 = "_getTimeCb";
    v14 = 256;
LABEL_12:
    __assert_rtn("ParameterNegotiator", "AlishaParameterNegotiation.cpp", v14, v13);
  }

  return a1;
}

void sub_1003970BC(_Unwind_Exception *a1)
{
  sub_10034335C(v2);
  v4 = *(v1 + 24);
  if (v4)
  {
    sub_10000AD84(v4);
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    sub_10000AD84(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10039711C(uint64_t result)
{
  if (*(result + 144) == 1)
  {
    *(result + 144) = 0;
  }

  return result;
}

uint64_t sub_100397130(uint64_t result)
{
  *(result + 96) = 0;
  if (*(result + 158) == 1)
  {
    *(result + 158) = 0;
  }

  if (*(result + 168) == 1)
  {
    *(result + 168) = 0;
  }

  if (*(result + 184) == 1)
  {
    *(result + 184) = 0;
  }

  if (*(result + 204) == 1)
  {
    *(result + 204) = 0;
  }

  return result;
}

void sub_100397178(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  if (v6 == 12)
  {
    v7 = 1000;
  }

  else
  {
    v7 = 0;
  }

  if (v6 == 138)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  if (v6 == 138)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 16);
  v11 = sub_1002C5608(a2, v6);
  (*(*v10 + 48))(v32, v10, v11);
  if (LODWORD(v32[0]) || (v33 & 1) == 0)
  {
    v25 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      if (*a2 == 12)
      {
        v26 = "LESetPHY";
      }

      else
      {
        v26 = "ConnCmpltEventCount0";
      }

      sub_100004A08(buf, v26);
      v27 = SHIBYTE(v41);
      v28 = *buf;
      v30 = sub_1002C5608(a2, v29);
      v31 = buf;
      if (v27 < 0)
      {
        v31 = v28;
      }

      *__p = 136315394;
      *&__p[4] = v31;
      v35 = 2048;
      v36 = v30;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "#alisha-param-neg,BT event %s. Failed to convert BT clock %llu [us]", __p, 0x16u);
      if (SHIBYTE(v41) < 0)
      {
        operator delete(*buf);
      }
    }

    v22 = 0;
    v24 = 0;
    v23 = -1;
  }

  else
  {
    v12 = v32[1];
    v13 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      if (*a2 == 12)
      {
        v14 = "LESetPHY";
      }

      else
      {
        v14 = "ConnCmpltEventCount0";
      }

      sub_100004A08(__p, v14);
      v15 = v37;
      v16 = *__p;
      v18 = sub_1002C5608(a2, v17);
      v19 = __p;
      *buf = 136315650;
      if (v15 < 0)
      {
        v19 = v16;
      }

      *&buf[4] = v19;
      v39 = 2048;
      v40 = v18;
      v41 = 2048;
      v42 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#alisha-param-neg,BT event %s. Converted BT clock %llu [us] to UWB clock %llu [us]", buf, 0x20u);
      if (v37 < 0)
      {
        operator delete(*__p);
      }
    }

    if ((*(a1 + 144) & 1) == 0)
    {
      v20 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT) || (*buf = 0, _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#alisha-param-neg,Setting this BT event as the shared event for sending timing info to vehicle", buf, 2u), (*(a1 + 144) & 1) == 0))
      {
        *(a1 + 144) = 1;
      }

      *(a1 + 136) = v12;
    }

    v21 = *(a1 + 136);
    v22 = v12 - v21;
    if (v12 < v21)
    {
      sub_1004C6A04(v12, v21);
    }

    v8 = 0;
    v23 = *(a2 + 5);
    v24 = 1;
    v9 = 1;
  }

  *a3 = 0;
  *(a3 + 8) = v23;
  *(a3 + 16) = v22;
  *(a3 + 24) = 0;
  *(a3 + 25) = v24;
  *(a3 + 26) = 100;
  *(a3 + 28) = v9;
  *(a3 + 30) = v8;
  *(a3 + 32) = 1;
}

void sub_10039747C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003974B4(uint64_t a1, uint64_t *a2)
{
  if ((*(a1 + 144) & 1) == 0)
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *a2;
      v9 = 134217984;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#alisha-param-neg,Setting ranging start time UWB clock (%llu [us]) as the shared event for sending timing info to vehicle", &v9, 0xCu);
      v5 = *a2;
      if (*(a1 + 144))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = *a2;
    }

    *(a1 + 144) = 1;
LABEL_9:
    *(a1 + 136) = v5;
    return *a2 - v5;
  }

  v4 = *a2;
  v5 = *(a1 + 136);
  if (*a2 < v5)
  {
    sub_1004C6AD8(v4, v5);
  }

  return *a2 - v5;
}

uint64_t sub_1003975AC(uint64_t a1, unsigned __int16 **a2)
{
  if (*(a1 + 96))
  {
    LODWORD(v23[0]) = -2000;
    *(v23 + 4) = 0;
    return v23[0];
  }

  (*(**a1 + 16))(&__p);
  v4 = *a2;
  v5 = a2[1];
  v6 = __p;
  if (*a2 == v5)
  {
    goto LABEL_19;
  }

  while (__p == v22)
  {
LABEL_8:
    if (++v4 == v5)
    {
      goto LABEL_19;
    }
  }

  v7 = __p;
  while (*v4 != *v7)
  {
    if (++v7 == v22)
    {
      goto LABEL_8;
    }
  }

  if (v4 == v5)
  {
LABEL_19:
    v12 = -2002;
  }

  else
  {
    v8 = a2[3];
    v9 = a2[4];
    if (v8 == v9)
    {
      goto LABEL_29;
    }

    v10 = *(a1 + 40);
    while (*(a1 + 32) == v10)
    {
LABEL_17:
      if (++v8 == v9)
      {
        goto LABEL_29;
      }
    }

    v11 = *(a1 + 32);
    while (*v8 != *v11)
    {
      if (++v11 == v10)
      {
        goto LABEL_17;
      }
    }

    if (v8 == v9)
    {
LABEL_29:
      v12 = -2003;
    }

    else
    {
      v13 = a2[6];
      v14 = a2[7];
      if (v13 != v14)
      {
        v15 = *(a1 + 80);
        while (*(a1 + 72) == v15)
        {
LABEL_27:
          v13 = (v13 + 1);
          if (v13 == v14)
          {
            goto LABEL_34;
          }
        }

        v16 = *(a1 + 72);
        while (*v13 != *v16)
        {
          if (++v16 == v15)
          {
            goto LABEL_27;
          }
        }

        if (v13 != v14)
        {
          v17 = *v4;
          v18 = *v8;
          v19 = *v13;
          if ((*(a1 + 158) & 1) == 0)
          {
            *(a1 + 158) = 1;
          }

          *(a1 + 152) = v17;
          *(a1 + 154) = v18;
          *(a1 + 156) = v19;
          LODWORD(v23[0]) = 0;
          *(v23 + 4) = *(a1 + 152);
          goto LABEL_36;
        }
      }

LABEL_34:
      v12 = -2004;
    }
  }

  LODWORD(v23[0]) = v12;
  *(v23 + 4) = 0;
LABEL_36:
  if (v6)
  {
    v22 = v6;
    operator delete(v6);
  }

  return v23[0];
}

void sub_10039778C(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 96))
  {
    v4 = -2000;
LABEL_10:
    *a3 = v4;
    *(a3 + 4) = 0;
    *(a3 + 16) = 0;
    return;
  }

  v7 = *(a1 + 158);
  v8 = qword_1009F9820;
  v9 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (v7 == 1)
  {
    if (v9)
    {
      LOWORD(__p) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#alisha-param-neg,Negotiating session parameters WITH a previously cached capability response", &__p, 2u);
      if ((*(a1 + 158) & 1) == 0)
      {
        sub_1000195BC();
      }
    }

    if (*a2 != *(a1 + 152) || a2[1] != *(a1 + 154) || *(a2 + 4) != *(a1 + 156))
    {
      v4 = -2005;
      goto LABEL_10;
    }

    goto LABEL_40;
  }

  if (v9)
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#alisha-param-neg,Negotiating session parameters WITHOUT a previously cached capability response", &__p, 2u);
  }

  (*(**a1 + 16))(&__p);
  v10 = __p;
  v11 = v32;
  v12 = __p;
  if (__p != v32)
  {
    v12 = __p;
    while (*v12 != *a2)
    {
      if (++v12 == v32)
      {
        v12 = v32;
        break;
      }
    }
  }

  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  if (v13 != v14)
  {
    while (*v13 != a2[1])
    {
      if (++v13 == v14)
      {
        v13 = *(a1 + 40);
        break;
      }
    }
  }

  v15 = *(a1 + 80);
  v16 = memchr(*(a1 + 72), *(a2 + 4), v15 - *(a1 + 72));
  v18 = v12 != v11 && v13 != v14;
  if (v16)
  {
    v19 = v16 == v15;
  }

  else
  {
    v19 = 1;
  }

  v20 = !v19 && v18;
  if (!v20)
  {
    *a3 = -2020;
    *(a3 + 4) = 0;
    *(a3 + 16) = 0;
  }

  if (v10)
  {
    v32 = v10;
    operator delete(v10);
  }

  if (v20)
  {
LABEL_40:
    v21 = (*(a1 + 64) & *(a2 + 5));
    (*(**a1 + 24))(&__p);
    if (v21)
    {
      for (i = __p; ; i = (i + 1))
      {
        if (i == v32)
        {
          v24 = -2008;
          goto LABEL_47;
        }

        v23 = *i;
        if ((v21 >> *i))
        {
          break;
        }
      }

      if (a2[3])
      {
        v25 = 1;
      }

      else
      {
        v25 = a2[3] & 2;
      }

      if (*(a1 + 168) == 1)
      {
        v26 = *a2;
        *(a1 + 163) = *(a2 + 3);
        *(a1 + 160) = v26;
      }

      else
      {
        *(a1 + 160) = *a2;
        *(a1 + 168) = 1;
      }

      v27 = (*(**a1 + 40))();
      v28 = *(a1 + 56);
      v29 = *(a1 + 60);
      v30 = *(a1 + 65);
      if ((*(a1 + 184) & 1) == 0)
      {
        *(a1 + 184) = 1;
      }

      *(a1 + 172) = v27;
      *(a1 + 173) = v28;
      *(a1 + 176) = v29;
      *(a1 + 180) = v23;
      *(a1 + 181) = v30;
      *(a1 + 182) = v25;
      *(a1 + 96) = 1;
      *a3 = 0;
      *(a3 + 4) = *(a1 + 172);
    }

    else
    {
      v24 = -2016;
LABEL_47:
      *a3 = v24;
      *(a3 + 4) = 0;
      *(a3 + 16) = 0;
    }

    if (__p)
    {
      v32 = __p;
      operator delete(__p);
    }
  }
}

void sub_100397ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_100397AE8@<X0>(unint64_t result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(result + 96) != 1)
  {
    v7 = 0;
    v8 = -2000;
    goto LABEL_8;
  }

  v4 = result;
  if (*(result + 168) != 1 || (*(result + 184) & 1) == 0)
  {
    v7 = 0;
    v8 = -2001;
    goto LABEL_8;
  }

  v6 = *a2;
  if (v6 < *(result + 172))
  {
    v7 = 0;
    v8 = -2007;
LABEL_8:
    *a3 = v8;
LABEL_9:
    *(a3 + 8) = 0;
    goto LABEL_10;
  }

  v9 = a2[10];
  if (v9 == 1)
  {
    v10 = *(result + 182);
  }

  else
  {
    v10 = 0;
  }

  v11 = a2[1];
  v8 = -2010;
  if (v11 > 0x18 || ((1 << v11) & 0x1001358) == 0)
  {
LABEL_24:
    v7 = 0;
    goto LABEL_8;
  }

  v12 = a2[3];
  v13 = a2[2];
  if ((v12 > 0x30 || ((1 << v12) & 0x1001101051350) == 0) && v12 != 96 && v12 != 72)
  {
    v8 = -2009;
    goto LABEL_24;
  }

  v14 = v13 + (v13 & ((v10 << 30) >> 31)) + 4;
  v15 = v13 + 5;
  if ((v10 & 1) == 0)
  {
    v15 = v14;
  }

  if (v12 < v15)
  {
    v8 = -2012;
    goto LABEL_24;
  }

  if (0x120 % (v12 * v11))
  {
    v8 = -2011;
    goto LABEL_24;
  }

  if (a2[1] <= 7u)
  {
    switch(v11)
    {
      case 3u:
        v16 = 1;
        break;
      case 4u:
        v16 = 2;
        break;
      case 6u:
        v16 = 4;
        break;
      default:
        goto LABEL_41;
    }
  }

  else if (a2[1] > 0xBu)
  {
    if (v11 == 12)
    {
      v16 = 32;
    }

    else
    {
      if (v11 != 24)
      {
        goto LABEL_41;
      }

      v16 = 64;
    }
  }

  else
  {
    if (v11 != 8)
    {
      if (v11 == 9)
      {
        v16 = 16;
        goto LABEL_45;
      }

LABEL_41:
      v7 = 0;
      v8 = -2009;
      goto LABEL_8;
    }

    v16 = 8;
  }

LABEL_45:
  if ((*(result + 173) & v16) == 0)
  {
    v7 = 0;
    v8 = -2017;
    goto LABEL_8;
  }

  v17 = a2[8];
  v18 = v17 & 0xE0;
  if (v18 == 32 || v18 == 64)
  {
    if ((((v17 & 0x1F) - 8) & 0xFFFFFFF7) == 0)
    {
      goto LABEL_50;
    }

LABEL_56:
    v8 = -2015;
    goto LABEL_24;
  }

  if (v18 != 128)
  {
    v8 = -2014;
    goto LABEL_24;
  }

  if ((v17 & 0x1F) != 0)
  {
    goto LABEL_56;
  }

LABEL_50:
  if ((v17 & ~*(result + 181)) != 0)
  {
    v7 = 0;
    v8 = -2019;
    goto LABEL_8;
  }

  if (v9)
  {
    result = sub_100397EE8(a2[9], v10, v6, v11, v12);
    if (result)
    {
      v7 = 0;
      *a3 = result;
      goto LABEL_9;
    }

    v20 = HIDWORD(result) & 0xFF000000;
    v21 = HIDWORD(result) & 0xFFFF00;
    v19 = BYTE4(result);
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  result = (*(**v4 + 32))(*v4, (*(a2 + 1) & v4[22]));
  if ((result & 0x1000000000000) != 0)
  {
    v23 = 0;
  }

  else
  {
    v23 = -1004;
  }

  if (result)
  {
    v8 = result;
  }

  else
  {
    v8 = v23;
  }

  if (v8)
  {
    goto LABEL_24;
  }

  if ((result & 0x1000000000000) == 0 || (v4[23] & 1) == 0 || (v4[21] & 1) == 0)
  {
    sub_1000195BC();
  }

  v24 = a2[8];
  v22.i32[0] = *a2;
  *(v4 + 188) = *(v4 + 180);
  v25 = *(v4 + 40);
  v26 = *(v4 + 164);
  v27 = *(v4 + 204);
  v28 = vmovl_u8(v22).u64[0];
  *(v4 + 189) = BYTE5(result);
  v29 = vrev32_s16(v28);
  v29.i32[0] = v28.i32[0];
  *(v4 + 190) = v25;
  *(v4 + 194) = vuzp1_s8(v29, v28).u32[0];
  *(v4 + 198) = v24;
  *(v4 + 199) = v26;
  *(v4 + 50) = v20 | v19 | v21;
  if ((v27 & 1) == 0)
  {
    *(v4 + 204) = 1;
  }

  v30 = HIDWORD(result);
  *(v4 + 168) = 0;
  *(v4 + 184) = 0;
  result = (*(**v4 + 48))(*v4, v4 + 188);
  *(v4 + 24) = 2;
  *&v31[7] = *(v4 + 188);
  *a3 = 0;
  *(a3 + 8) = v30;
  *(a3 + 9) = *v31;
  *(a3 + 24) = *&v31[15];
  *(a3 + 32) = result;
  v7 = 1;
LABEL_10:
  *(a3 + 40) = v7;
  return result;
}

uint64_t sub_100397EE8(unsigned int a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v5 = a1 >> 6;
  if (!(a1 >> 6))
  {
    return (a2 << 48) | 0x100000000000000;
  }

  v6 = a1;
  result = 4294965273;
  if (v5 != 1)
  {
    return 4294965274;
  }

  if (!a4)
  {
    return 4294965286;
  }

  if (!a5)
  {
    return 4294965287;
  }

  v8 = 288 * a3 / a4;
  if (v8 < a5)
  {
    return 4294965275;
  }

  v9 = v6 & 0x3F;
  if (v9 && v9 <= 0x10 && v8 / a5 - 1 >= v9)
  {
    return (v9 << 40) | (a2 << 48) | 0x100000100000000;
  }

  return result;
}

double sub_100397F80@<D0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 24) != 2)
  {
    v9 = -2000;
LABEL_12:
    *a3 = v9;
    *(a3 + 8) = 0;
    *(a3 + 40) = 0;
    return result;
  }

  if ((*(a1 + 204) & 1) == 0)
  {
    v9 = -2001;
    goto LABEL_12;
  }

  v14 = *(a1 + 188);
  if (a2[1] == 1)
  {
    if (!*a2)
    {
      v6 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#alisha-param-neg,Recovery RAN multiplier of 0 was specified. Using a multiplier of 1 instead.", v13, 2u);
        if ((a2[1] & 1) == 0)
        {
          sub_1000195BC();
        }
      }
    }

    v7 = *a2;
    if (v7 <= 1)
    {
      LOWORD(v7) = 1;
    }

    BYTE6(v14) = v7;
    v8 = 1;
  }

  else
  {
    LOWORD(v7) = 0;
    v8 = 0;
  }

  v10 = v7 | (v8 << 8);
  v11 = (*(**a1 + 48))(*a1, &v14);
  *&v15[6] = v14;
  *a3 = 0;
  *(a3 + 8) = v10;
  result = *v15;
  *(a3 + 10) = *v15;
  *(a3 + 24) = *&v15[14];
  *(a3 + 32) = v11;
  *(a3 + 40) = 1;
  return result;
}

uint64_t sub_1003980F8(uint64_t a1, uint64_t a2)
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

void *sub_100398190@<X0>(int a1@<W0>, void *a2@<X8>)
{
  if (a1 == 2)
  {
    v2 = "RequireCapabilityExchange";
  }

  else if (a1 == 255)
  {
    v2 = "WrongParameters";
  }

  else
  {
    v2 = "UnsupportedChannelBitmask";
  }

  return sub_100004A08(a2, v2);
}

void sub_1003981E4(char *a1@<X0>, std::string *a2@<X8>)
{
  sub_100004A08(&v20, off_1009A8A78[*a1 - 1]);
  memset(&v19, 0, sizeof(v19));
  v4 = *a1;
  switch(v4)
  {
    case 3:
      if ((a1[6] & 1) == 0)
      {
        v14 = "deviceRangingIntentSubEventCode.has_value()";
        v15 = 323;
        goto LABEL_36;
      }

      sub_100004A08(&v18, off_1009A8A90[a1[5]]);
      break;
    case 2:
      if (a1[4] != 1)
      {
        v14 = "rangingSessionStatusChangedSubEventCode.has_value()";
        v15 = 319;
        goto LABEL_36;
      }

      sub_1003981CC(a1[3], &v18);
      break;
    case 1:
      if (a1[2])
      {
        v5 = a1[1];
        if (v5 == 2)
        {
          v6 = "RequireCapabilityExchange";
        }

        else if (v5 == 255)
        {
          v6 = "WrongParameters";
        }

        else
        {
          v6 = "UnsupportedChannelBitmask";
        }

        sub_100004A08(&v18, v6);
        break;
      }

      v14 = "commandCompleteSubEventCode.has_value()";
      v15 = 315;
LABEL_36:
      __assert_rtn("toString", "AlishaDCKCoder.cpp", v15, v14);
    default:
      goto LABEL_16;
  }

  v19 = v18;
LABEL_16:
  std::operator+<char>();
  v7 = std::string::append(&v16, ", ");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v19;
  }

  else
  {
    v9 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  v11 = std::string::append(&v17, v9, size);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v18, ")");
  *a2 = *v13;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }
}

void sub_100398418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 17) < 0)
  {
    operator delete(*(v28 - 40));
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1003984A8(uint64_t a1, uint64_t *a2)
{
  v2 = 4294963292;
  v3 = *a2;
  v4 = a2[1] - *a2;
  if (v4 >= 4)
  {
    if (v4 >> 16)
    {
      v5 = 0;
      v6 = 0;
      v2 = 4294963295;
    }

    else if (v4 == __rev16(*(v3 + 2)) + 4)
    {
      v5 = *v3 & 0x3F;
      if (v5 > 5)
      {
        v5 = 0;
        v6 = 0;
        v2 = 4294963293;
      }

      else
      {
        v7 = *(v3 + 1);
        if ((v7 - 1) > 0x14)
        {
          v5 = 0;
          v6 = 0;
        }

        else
        {
          v6 = v7 << 8;
          v2 = 0x1000000000000;
        }
      }
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v2 = 4294963294;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v2 = 4294963296;
  }

  return v2 | ((v6 | v5) << 32);
}

void sub_100398558(unsigned __int16 *a1@<X1>, _DWORD *a2@<X8>)
{
  LOBYTE(__p) = 0;
  sub_100025100(&v25, 4, &__p);
  if ((v26 - v25 - 65534) < 0xFFFFFFFFFFFF0000 || (v4 = *a1, LOBYTE(__p) = HIBYTE(*a1), sub_1001FE4D0(&v25, &__p), LOBYTE(__p) = v4, sub_1001FE4D0(&v25, &__p), (v26 - v25 - 65534) < 0xFFFFFFFFFFFF0000))
  {
    v18 = "msg.size() + sizeof(data) <= kMaxMessageSize";
    v19 = 232;
LABEL_27:
    v20 = "append";
    goto LABEL_29;
  }

  v5 = a1[1];
  LOBYTE(__p) = HIBYTE(v5);
  sub_1001FE4D0(&v25, &__p);
  LOBYTE(__p) = v5;
  sub_1001FE4D0(&v25, &__p);
  v6 = v25;
  v7 = v26;
  v8 = (v26 - v25);
  if ((v26 - v25 - 0xFFFF) < 0xFFFFFFFFFFFF0000)
  {
    v18 = "msg.size() + sizeof(data) <= kMaxMessageSize";
    v19 = 225;
    goto LABEL_27;
  }

  v9 = *(a1 + 4);
  if (v26 >= v27)
  {
    v11 = v27 - v25;
    if (2 * (v27 - v25) <= (v8 + 1))
    {
      v12 = (v8 + 1);
    }

    else
    {
      v12 = 2 * v11;
    }

    if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      operator new();
    }

    v14 = v26 - v25;
    *v8 = v9;
    v10 = v8 + 1;
    memcpy(0, v6, v14);
    v25 = 0;
    v26 = v8 + 1;
    v27 = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v26 = v9;
    v10 = v7 + 1;
  }

  v26 = v10;
  v15 = v25;
  v16 = v10 - v25;
  if ((v10 - v25) >= 0x10000)
  {
    v18 = "msg.size() <= kMaxMessageSize";
    v19 = 166;
    v20 = "populateHeader";
LABEL_29:
    __assert_rtn(v20, "AlishaDCKCoder.cpp", v19, v18);
  }

  if (v16 <= 3)
  {
    sub_100009838(&v25, 4 - v16);
    v15 = v25;
    LOWORD(v16) = v26 - v25;
  }

  v17 = v16 - 4;
  *v15 = 2;
  *(v25 + 1) = 2;
  *(v25 + 2) = HIBYTE(v17);
  *(v25 + 3) = v17;
  __p = 0;
  v22 = 0;
  v23 = 0;
  sub_100009A48(&__p, v25, v26, v26 - v25);
  v24 = 1;
  *a2 = 0;
  sub_10039B130(a2 + 8, &__p);
  if (v24 == 1 && __p)
  {
    v22 = __p;
    operator delete(__p);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }
}

void sub_1003987EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15)
{
  if (a13 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100398830(char *a1@<X1>, _DWORD *a2@<X8>)
{
  LOBYTE(__p) = 0;
  sub_100025100(&v49, 4, &__p);
  v4 = v49;
  v5 = v50;
  v6 = (v50 - v49);
  if ((v50 - v49 - 0xFFFF) < 0xFFFFFFFFFFFF0000)
  {
    goto LABEL_63;
  }

  v7 = *a1;
  if (v50 >= v51)
  {
    v9 = v51 - v49;
    if (2 * (v51 - v49) <= (v6 + 1))
    {
      v10 = (v6 + 1);
    }

    else
    {
      v10 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v50 - v49;
    *v6 = v7;
    v8 = v6 + 1;
    memcpy(0, v4, v12);
    v49 = 0;
    v50 = v6 + 1;
    v51 = 0;
    if (v4)
    {
      operator delete(v4);
    }
  }

  else
  {
    *v50 = v7;
    v8 = v5 + 1;
  }

  v50 = v8;
  v13 = v49;
  v14 = (v8 - v49);
  if ((v8 - v49 - 0xFFFF) < 0xFFFFFFFFFFFF0000)
  {
    goto LABEL_63;
  }

  v15 = a1[1];
  if (v8 >= v51)
  {
    v17 = v51 - v49;
    if (2 * (v51 - v49) <= (v14 + 1))
    {
      v18 = (v14 + 1);
    }

    else
    {
      v18 = 2 * v17;
    }

    if (v17 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18;
    }

    if (v19)
    {
      operator new();
    }

    v20 = v8 - v49;
    *v14 = v15;
    v16 = v14 + 1;
    memcpy(0, v13, v20);
    v49 = 0;
    v50 = v14 + 1;
    v51 = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v8 = v15;
    v16 = v8 + 1;
  }

  v50 = v16;
  if ((v16 - v49 - 65532) < 0xFFFFFFFFFFFF0000)
  {
    v42 = "msg.size() + sizeof(data) <= kMaxMessageSize";
    v43 = 240;
    goto LABEL_65;
  }

  v21 = *(a1 + 1);
  LOBYTE(__p) = HIBYTE(v21);
  sub_1001FE4D0(&v49, &__p);
  LOBYTE(__p) = BYTE2(v21);
  sub_1001FE4D0(&v49, &__p);
  LOBYTE(__p) = BYTE1(v21);
  sub_1001FE4D0(&v49, &__p);
  LOBYTE(__p) = v21;
  sub_1001FE4D0(&v49, &__p);
  v22 = v49;
  v23 = v50;
  v24 = (v50 - v49);
  if ((v50 - v49 - 0xFFFF) < 0xFFFFFFFFFFFF0000)
  {
    goto LABEL_63;
  }

  v25 = a1[8];
  if (v50 >= v51)
  {
    v27 = v51 - v49;
    if (2 * (v51 - v49) <= (v24 + 1))
    {
      v28 = (v24 + 1);
    }

    else
    {
      v28 = 2 * v27;
    }

    if (v27 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v29 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v29 = v28;
    }

    if (v29)
    {
      operator new();
    }

    v30 = v50 - v49;
    *v24 = v25;
    v26 = v24 + 1;
    memcpy(0, v22, v30);
    v49 = 0;
    v50 = v24 + 1;
    v51 = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v50 = v25;
    v26 = v23 + 1;
  }

  v50 = v26;
  v31 = v49;
  v32 = (v26 - v49);
  if ((v26 - v49 - 0xFFFF) < 0xFFFFFFFFFFFF0000)
  {
LABEL_63:
    v42 = "msg.size() + sizeof(data) <= kMaxMessageSize";
    v43 = 225;
LABEL_65:
    v44 = "append";
    goto LABEL_66;
  }

  v33 = a1[9];
  if (v26 >= v51)
  {
    v35 = v51 - v49;
    if (2 * (v51 - v49) <= (v32 + 1))
    {
      v36 = (v32 + 1);
    }

    else
    {
      v36 = 2 * v35;
    }

    if (v35 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v37 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v37 = v36;
    }

    if (v37)
    {
      operator new();
    }

    v38 = v26 - v49;
    *v32 = v33;
    v34 = v32 + 1;
    memcpy(0, v31, v38);
    v49 = 0;
    v50 = v32 + 1;
    v51 = 0;
    if (v31)
    {
      operator delete(v31);
    }
  }

  else
  {
    *v26 = v33;
    v34 = v26 + 1;
  }

  v50 = v34;
  v39 = v49;
  v40 = v34 - v49;
  if ((v34 - v49) >= 0x10000)
  {
    v42 = "msg.size() <= kMaxMessageSize";
    v43 = 166;
    v44 = "populateHeader";
LABEL_66:
    __assert_rtn(v44, "AlishaDCKCoder.cpp", v43, v42);
  }

  if (v40 <= 3)
  {
    sub_100009838(&v49, 4 - v40);
    v39 = v49;
    LOWORD(v40) = v50 - v49;
  }

  v41 = v40 - 4;
  *v39 = 2;
  *(v49 + 1) = 4;
  *(v49 + 2) = HIBYTE(v41);
  *(v49 + 3) = v41;
  __p = 0;
  v46 = 0;
  v47 = 0;
  sub_100009A48(&__p, v49, v50, v50 - v49);
  v48 = 1;
  *a2 = 0;
  sub_10039B130(a2 + 8, &__p);
  if (v48 == 1 && __p)
  {
    v46 = __p;
    operator delete(__p);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }
}

void sub_100398CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15)
{
  if (a13 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100398D3C(unsigned int *a1@<X1>, _DWORD *a2@<X8>)
{
  LOBYTE(__p) = 0;
  sub_100025100(&v25, 4, &__p);
  if ((v26 - v25 - 65532) < 0xFFFFFFFFFFFF0000 || (v4 = *a1, LOBYTE(__p) = HIBYTE(*a1), sub_1001FE4D0(&v25, &__p), LOBYTE(__p) = BYTE2(v4), sub_1001FE4D0(&v25, &__p), LOBYTE(__p) = BYTE1(v4), sub_1001FE4D0(&v25, &__p), LOBYTE(__p) = v4, sub_1001FE4D0(&v25, &__p), sub_100399074(*(a1 + 1), &v25), (v26 - v25 - 65532) < 0xFFFFFFFFFFFF0000))
  {
    v18 = "msg.size() + sizeof(data) <= kMaxMessageSize";
    v19 = 240;
LABEL_27:
    v20 = "append";
    goto LABEL_29;
  }

  v5 = a1[4];
  LOBYTE(__p) = HIBYTE(v5);
  sub_1001FE4D0(&v25, &__p);
  LOBYTE(__p) = BYTE2(v5);
  sub_1001FE4D0(&v25, &__p);
  LOBYTE(__p) = BYTE1(v5);
  sub_1001FE4D0(&v25, &__p);
  LOBYTE(__p) = v5;
  sub_1001FE4D0(&v25, &__p);
  v6 = v25;
  v7 = v26;
  v8 = (v26 - v25);
  if ((v26 - v25 - 0xFFFF) < 0xFFFFFFFFFFFF0000)
  {
    v18 = "msg.size() + sizeof(data) <= kMaxMessageSize";
    v19 = 225;
    goto LABEL_27;
  }

  v9 = *(a1 + 20);
  if (v26 >= v27)
  {
    v11 = v27 - v25;
    if (2 * (v27 - v25) <= (v8 + 1))
    {
      v12 = (v8 + 1);
    }

    else
    {
      v12 = 2 * v11;
    }

    if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      operator new();
    }

    v14 = v26 - v25;
    *v8 = v9;
    v10 = v8 + 1;
    memcpy(0, v6, v14);
    v25 = 0;
    v26 = v8 + 1;
    v27 = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v26 = v9;
    v10 = v7 + 1;
  }

  v26 = v10;
  v15 = v25;
  v16 = v10 - v25;
  if ((v10 - v25) >= 0x10000)
  {
    v18 = "msg.size() <= kMaxMessageSize";
    v19 = 166;
    v20 = "populateHeader";
LABEL_29:
    __assert_rtn(v20, "AlishaDCKCoder.cpp", v19, v18);
  }

  if (v16 <= 3)
  {
    sub_100009838(&v25, 4 - v16);
    v15 = v25;
    LOWORD(v16) = v26 - v25;
  }

  v17 = v16 - 4;
  *v15 = 2;
  *(v25 + 1) = 6;
  *(v25 + 2) = HIBYTE(v17);
  *(v25 + 3) = v17;
  __p = 0;
  v22 = 0;
  v23 = 0;
  sub_100009A48(&__p, v25, v26, v26 - v25);
  v24 = 1;
  *a2 = 0;
  sub_10039B130(a2 + 8, &__p);
  if (v24 == 1 && __p)
  {
    v22 = __p;
    operator delete(__p);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }
}

void sub_100399030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15)
{
  if (a13 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100399074(uint64_t a1, void *a2)
{
  if ((a2[1] - *a2 - 65528) <= 0xFFFFFFFFFFFEFFFFLL)
  {
    sub_1004C6BAC();
  }

  v11 = HIBYTE(a1);
  sub_1001FE4D0(a2, &v11);
  v10 = BYTE6(a1);
  sub_1001FE4D0(a2, &v10);
  v9 = BYTE5(a1);
  sub_1001FE4D0(a2, &v9);
  v8 = BYTE4(a1);
  sub_1001FE4D0(a2, &v8);
  v7 = BYTE3(a1);
  sub_1001FE4D0(a2, &v7);
  v6 = BYTE2(a1);
  sub_1001FE4D0(a2, &v6);
  v5 = BYTE1(a1);
  sub_1001FE4D0(a2, &v5);
  v4 = a1;
  sub_1001FE4D0(a2, &v4);
}

void sub_10039915C(int *a1@<X1>, _DWORD *a2@<X8>)
{
  LOBYTE(__p) = 0;
  sub_100025100(&v15, 4, &__p);
  if ((v16 - v15 - 65532) < 0xFFFFFFFFFFFF0000)
  {
    v8 = "msg.size() + sizeof(data) <= kMaxMessageSize";
    v9 = 240;
    v10 = "append";
    goto LABEL_13;
  }

  v4 = *a1;
  LOBYTE(__p) = HIBYTE(v4);
  sub_1001FE4D0(&v15, &__p);
  LOBYTE(__p) = BYTE2(v4);
  sub_1001FE4D0(&v15, &__p);
  LOBYTE(__p) = BYTE1(v4);
  sub_1001FE4D0(&v15, &__p);
  LOBYTE(__p) = v4;
  sub_1001FE4D0(&v15, &__p);
  v5 = v15;
  v6 = v16 - v15;
  if ((v16 - v15) >= 0x10000)
  {
    v8 = "msg.size() <= kMaxMessageSize";
    v9 = 166;
    v10 = "populateHeader";
LABEL_13:
    __assert_rtn(v10, "AlishaDCKCoder.cpp", v9, v8);
  }

  if (v6 <= 3)
  {
    sub_100009838(&v15, 4 - v6);
    v5 = v15;
    LOWORD(v6) = v16 - v15;
  }

  v7 = v6 - 4;
  *v5 = 2;
  *(v15 + 1) = 7;
  *(v15 + 2) = HIBYTE(v7);
  *(v15 + 3) = v7;
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_100009A48(&__p, v15, v16, v16 - v15);
  v14 = 1;
  *a2 = 0;
  sub_10039B130(a2 + 8, &__p);
  if (v14 == 1 && __p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_1003992FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15)
{
  if (a13 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100399340(char *a1@<X1>, _DWORD *a2@<X8>)
{
  LOBYTE(__p) = 0;
  sub_100025100(&v23, 4, &__p);
  v4 = v23;
  v5 = v24;
  v6 = (v24 - v23);
  if ((v24 - v23 - 0xFFFF) < 0xFFFFFFFFFFFF0000)
  {
    v16 = "msg.size() + sizeof(data) <= kMaxMessageSize";
    v17 = 225;
    v18 = "append";
    goto LABEL_25;
  }

  v7 = *a1;
  if (v24 >= v25)
  {
    v9 = v25 - v23;
    if (2 * (v25 - v23) <= (v6 + 1))
    {
      v10 = (v6 + 1);
    }

    else
    {
      v10 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v24 - v23;
    *v6 = v7;
    v8 = v6 + 1;
    memcpy(0, v4, v12);
    v23 = 0;
    v24 = v6 + 1;
    v25 = 0;
    if (v4)
    {
      operator delete(v4);
    }
  }

  else
  {
    *v24 = v7;
    v8 = v5 + 1;
  }

  v24 = v8;
  v13 = v23;
  v14 = v8 - v23;
  if ((v8 - v23) >= 0x10000)
  {
    v16 = "msg.size() <= kMaxMessageSize";
    v17 = 166;
    v18 = "populateHeader";
LABEL_25:
    __assert_rtn(v18, "AlishaDCKCoder.cpp", v17, v16);
  }

  if (v14 <= 3)
  {
    sub_100009838(&v23, 4 - v14);
    v13 = v23;
    LOWORD(v14) = v24 - v23;
  }

  v15 = v14 - 4;
  *v13 = 2;
  *(v23 + 1) = 8;
  *(v23 + 2) = HIBYTE(v15);
  *(v23 + 3) = v15;
  __p = 0;
  v20 = 0;
  v21 = 0;
  sub_100009A48(&__p, v23, v24, v24 - v23);
  v22 = 1;
  *a2 = 0;
  sub_10039B130(a2 + 8, &__p);
  if (v22 == 1 && __p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }
}

void sub_100399548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15)
{
  if (a13 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10039958C(int *a1@<X1>, _DWORD *a2@<X8>)
{
  LOBYTE(__p) = 0;
  sub_100025100(&v15, 4, &__p);
  if ((v16 - v15 - 65532) < 0xFFFFFFFFFFFF0000)
  {
    v8 = "msg.size() + sizeof(data) <= kMaxMessageSize";
    v9 = 240;
    v10 = "append";
    goto LABEL_13;
  }

  v4 = *a1;
  LOBYTE(__p) = HIBYTE(*a1);
  sub_1001FE4D0(&v15, &__p);
  LOBYTE(__p) = BYTE2(v4);
  sub_1001FE4D0(&v15, &__p);
  LOBYTE(__p) = BYTE1(v4);
  sub_1001FE4D0(&v15, &__p);
  LOBYTE(__p) = v4;
  sub_1001FE4D0(&v15, &__p);
  sub_100399074(*(a1 + 1), &v15);
  v5 = v15;
  v6 = v16 - v15;
  if ((v16 - v15) >= 0x10000)
  {
    v8 = "msg.size() <= kMaxMessageSize";
    v9 = 166;
    v10 = "populateHeader";
LABEL_13:
    __assert_rtn(v10, "AlishaDCKCoder.cpp", v9, v8);
  }

  if (v6 <= 3)
  {
    sub_100009838(&v15, 4 - v6);
    v5 = v15;
    LOWORD(v6) = v16 - v15;
  }

  v7 = v6 - 4;
  *v5 = 2;
  *(v15 + 1) = 10;
  *(v15 + 2) = HIBYTE(v7);
  *(v15 + 3) = v7;
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_100009A48(&__p, v15, v16, v16 - v15);
  v14 = 1;
  *a2 = 0;
  sub_10039B130(a2 + 8, &__p);
  if (v14 == 1 && __p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_100399740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15)
{
  if (a13 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100399784(char *a1@<X1>, _DWORD *a2@<X8>)
{
  LOBYTE(__p) = 0;
  sub_100025100(&v24, 4, &__p);
  v4 = v24;
  v5 = v25;
  v6 = (v25 - v24);
  if ((v25 - v24 - 0xFFFF) < 0xFFFFFFFFFFFF0000)
  {
    v17 = "msg.size() + sizeof(data) <= kMaxMessageSize";
    v18 = 225;
LABEL_26:
    v19 = "append";
    goto LABEL_28;
  }

  v7 = *a1;
  if (v25 >= v26)
  {
    v9 = v26 - v24;
    if (2 * (v26 - v24) <= (v6 + 1))
    {
      v10 = (v6 + 1);
    }

    else
    {
      v10 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v25 - v24;
    *v6 = v7;
    v8 = v6 + 1;
    memcpy(0, v4, v12);
    v24 = 0;
    v25 = v6 + 1;
    v26 = 0;
    if (v4)
    {
      operator delete(v4);
    }
  }

  else
  {
    *v25 = v7;
    v8 = v5 + 1;
  }

  v25 = v8;
  if ((v8 - v24 - 65532) < 0xFFFFFFFFFFFF0000)
  {
    v17 = "msg.size() + sizeof(data) <= kMaxMessageSize";
    v18 = 240;
    goto LABEL_26;
  }

  v13 = *(a1 + 1);
  LOBYTE(__p) = HIBYTE(v13);
  sub_1001FE4D0(&v24, &__p);
  LOBYTE(__p) = BYTE2(v13);
  sub_1001FE4D0(&v24, &__p);
  LOBYTE(__p) = BYTE1(v13);
  sub_1001FE4D0(&v24, &__p);
  LOBYTE(__p) = v13;
  sub_1001FE4D0(&v24, &__p);
  sub_100399074(*(a1 + 1), &v24);
  v14 = v24;
  v15 = v25 - v24;
  if ((v25 - v24) >= 0x10000)
  {
    v17 = "msg.size() <= kMaxMessageSize";
    v18 = 166;
    v19 = "populateHeader";
LABEL_28:
    __assert_rtn(v19, "AlishaDCKCoder.cpp", v18, v17);
  }

  if (v15 <= 3)
  {
    sub_100009838(&v24, 4 - v15);
    v14 = v24;
    LOWORD(v15) = v25 - v24;
  }

  v16 = v15 - 4;
  *v14 = 2;
  *(v24 + 1) = 19;
  *(v24 + 2) = HIBYTE(v16);
  *(v24 + 3) = v16;
  __p = 0;
  v21 = 0;
  v22 = 0;
  sub_100009A48(&__p, v24, v25, v25 - v24);
  v23 = 1;
  *a2 = 0;
  sub_10039B130(a2 + 8, &__p);
  if (v23 == 1 && __p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }
}

void sub_100399A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15)
{
  if (a13 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100399A5C(uint64_t *a1@<X1>, int *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1] - *a1;
  if (v4 < 4)
  {
    v5 = -4000;
LABEL_9:
    LOBYTE(v50) = 0;
    v56 = 0;
    *a2 = v5;
    sub_10039B1AC((a2 + 2), &v50);
    if (v56 == 1)
    {
      if (v54)
      {
        *(&v54 + 1) = v54;
        operator delete(v54);
      }

      if (v52)
      {
        *(&v52 + 1) = v52;
        operator delete(v52);
      }

      v6 = v50;
      if (v50)
      {
        *(&v50 + 1) = v50;
LABEL_71:
        operator delete(v6);
        return;
      }
    }

    return;
  }

  if (v4 >> 16)
  {
    v5 = -4001;
    goto LABEL_9;
  }

  if (v4 != __rev16(*(v3 + 2)) + 4)
  {
    v5 = -4002;
    goto LABEL_9;
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  __p = 0;
  v41 = 0;
  v42 = 0;
  if (v4 == 4)
  {
    LOBYTE(v50) = 0;
    v56 = 0;
    *a2 = -4007;
    sub_10039B1AC((a2 + 2), &v50);
    goto LABEL_28;
  }

  v7 = *(v3 + 4);
  if (v7 + 4 >= v4)
  {
    LOBYTE(v50) = 0;
    v56 = 0;
    *a2 = -4011;
    sub_10039B1AC((a2 + 2), &v50);
    goto LABEL_28;
  }

  if (!v7)
  {
    LOBYTE(v50) = 0;
    v56 = 0;
    *a2 = -4008;
    sub_10039B1AC((a2 + 2), &v50);
    goto LABEL_28;
  }

  if (v7)
  {
    LOBYTE(v50) = 0;
    v56 = 0;
    *a2 = -4009;
    sub_10039B1AC((a2 + 2), &v50);
LABEL_28:
    if (v56 == 1)
    {
      if (v54)
      {
        *(&v54 + 1) = v54;
        operator delete(v54);
      }

      if (v52)
      {
        *(&v52 + 1) = v52;
        operator delete(v52);
      }

      if (v50)
      {
        *(&v50 + 1) = v50;
        operator delete(v50);
      }
    }

    goto LABEL_65;
  }

  v39 = v7;
  sub_10039A138(&v46, v7 >> 1);
  v9 = v46;
  v10 = v47;
  if (v46 != v47)
  {
    v11 = *a1;
    v12 = a1[1] - *a1;
    v13 = 5;
    v14 = "msg.size() <= kMaxMessageSize";
    while (!(v12 >> 16))
    {
      if (v13 + 2 > v12)
      {
        v30 = 191;
        v14 = "offset + sizeof(val) <= msg.size()";
LABEL_61:
        __assert_rtn("readAndAdvance", "AlishaDCKCoder.cpp", v30, v14);
      }

      v15 = v13 + 1;
      v16 = *(v11 + v13);
      *v9 = v16 << 8;
      v13 += 2;
      *v9++ = *(v11 + v15) | (v16 << 8);
      if (v9 == v10)
      {
        goto LABEL_36;
      }
    }

    v30 = 190;
    goto LABEL_61;
  }

  v13 = 5;
LABEL_36:
  v49 = v13;
  if (v4 <= v13)
  {
    LOBYTE(v50) = 0;
    v56 = 0;
    *a2 = -4012;
    sub_10039B1AC((a2 + 2), &v50);
  }

  else
  {
    v17 = *(*a1 + v13);
    if (v17 + v13 >= v4)
    {
      LOBYTE(v50) = 0;
      v56 = 0;
      *a2 = -4016;
      sub_10039B1AC((a2 + 2), &v50);
    }

    else if (*(*a1 + v13))
    {
      if (v17)
      {
        LOBYTE(v50) = 0;
        v56 = 0;
        *a2 = -4014;
        sub_10039B1AC((a2 + 2), &v50);
      }

      else
      {
        sub_10039A0F0(&v39, a1, &v49);
        sub_10039A138(&v43, v39 >> 1);
        v18 = v43;
        v19 = v44;
        v20 = v49;
        if (v43 != v44)
        {
          v21 = *a1;
          v22 = a1[1] - *a1;
          v23 = "msg.size() <= kMaxMessageSize";
          while (!(v22 >> 16))
          {
            if (v20 + 2 > v22)
            {
              v31 = 191;
              v23 = "offset + sizeof(val) <= msg.size()";
LABEL_75:
              __assert_rtn("readAndAdvance", "AlishaDCKCoder.cpp", v31, v23);
            }

            v24 = v20 + 1;
            v25 = *(v21 + v20);
            *v18 = v25 << 8;
            v20 += 2;
            *v18++ = *(v21 + v24) | (v25 << 8);
            if (v18 == v19)
            {
              goto LABEL_45;
            }
          }

          v31 = 190;
          goto LABEL_75;
        }

LABEL_45:
        v49 = v20;
        if (v4 <= v20)
        {
          LOBYTE(v50) = 0;
          v56 = 0;
          *a2 = -4017;
          sub_10039B1AC((a2 + 2), &v50);
        }

        else
        {
          v26 = v20;
          v27 = *(*a1 + v20);
          if (v27 + v26 >= v4)
          {
            LOBYTE(v50) = 0;
            v56 = 0;
            *a2 = -4020;
            sub_10039B1AC((a2 + 2), &v50);
          }

          else if (v27)
          {
            sub_10039A0F0(&v39, a1, &v49);
            sub_1002501F0(&__p, v39);
            v32 = v4;
            v28 = __p;
            v29 = v41;
            while (v28 != v29)
            {
              sub_10039A0F0(v28++, a1, &v49);
            }

            if (v32 == v49)
            {
              sub_10039AF98(&v33, &v46, &v43, &__p);
              v50 = v33;
              v51 = v34;
              v33 = 0uLL;
              v52 = v35;
              v53 = v36;
              v34 = 0;
              v35 = 0uLL;
              v36 = 0;
              v54 = v37;
              v55 = v38;
              v38 = 0;
              v37 = 0uLL;
              v56 = 1;
              *a2 = 0;
              sub_10039B1AC((a2 + 2), &v50);
              sub_10039A090(&v50);
              sub_10039A168(&v33);
              goto LABEL_65;
            }

            LOBYTE(v50) = 0;
            v56 = 0;
            *a2 = -4006;
            sub_10039B1AC((a2 + 2), &v50);
          }

          else
          {
            LOBYTE(v50) = 0;
            v56 = 0;
            *a2 = -4018;
            sub_10039B1AC((a2 + 2), &v50);
          }
        }
      }
    }

    else
    {
      LOBYTE(v50) = 0;
      v56 = 0;
      *a2 = -4013;
      sub_10039B1AC((a2 + 2), &v50);
    }
  }

  sub_10039A090(&v50);
LABEL_65:
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  v6 = v46;
  if (v46)
  {
    v47 = v46;
    goto LABEL_71;
  }
}