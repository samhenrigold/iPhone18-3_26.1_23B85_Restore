void sub_100098734(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100098814()
{
  v0 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 68289026;
    v1[1] = 0;
    v2 = 2082;
    v3 = "";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bm,onSettingsChanged}", v1, 0x12u);
  }
}

uint64_t sub_1000988C8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100098914(uint64_t **a1, int a2)
{
  v4 = a1 + 1;
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      if (*(v6 + 7) >= a2)
      {
        v5 = v6;
      }

      v6 = v6[*(v6 + 7) < a2];
    }

    while (v6);
    if (v5 != v4 && *(v5 + 7) <= a2)
    {
      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        v9 = v5;
        do
        {
          v8 = v9[2];
          v10 = *v8 == v9;
          v9 = v8;
        }

        while (!v10);
      }

      if (*a1 == v5)
      {
        *a1 = v8;
      }

      a1[2] = (a1[2] - 1);
      sub_100066C10(v3, v5);

      operator delete(v5);
    }
  }
}

uint64_t sub_100098A58(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013D988;
  a2[1] = v2;
  return result;
}

uint64_t sub_100098A84(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    LOWORD(v12) = 2082;
    *(&v12 + 2) = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bm,bgSysTaskCallback}", buf, 0x12u);
  }

  v3 = time(0);
  if ((*(v1 + 232) & 1) == 0)
  {
    *buf = 1;
    sub_100066B44((v1 + 168), 1, buf);
  }

  if (*(v1 + 216))
  {
    *buf = 0;
    sub_100066B44((v1 + 168), 0, buf);
    v4 = (v3 + -978307200.0);
    v5 = *(v1 + 216);
    *buf = _NSConcreteStackBlock;
    *&v12 = 3221225472;
    *(&v12 + 1) = sub_100097D3C;
    v13 = &unk_10013B568;
    v14 = v1;
    v15 = v4;
    v17 = 0;
    v16[0] = off_100138F50;
    v16[1] = objc_retainBlock(buf);
    v17 = v16;
    (*(*v5 + 24))(v5, v16, 0.0);
    sub_10000F274(v16);
  }

  LODWORD(v10[0]) = 2;
  v6 = sub_100066B44((v1 + 168), 2, v10);
  v7 = SASettings::instance(v6);
  v8 = *(v1 + 136);
  v10[0] = off_10013DA08;
  v10[1] = v1;
  v10[3] = v10;
  (*(*v7 + 96))(v7, v8, v10);
  return sub_10001E0C0(v10);
}

uint64_t sub_100098D00(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100098DBC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013DA08;
  a2[1] = v2;
  return result;
}

void sub_100098DE8(uint64_t a1, char *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bm,bgSysTaskCallback,ble status done}", v5, 0x12u);
  }

  sub_100097E68(v3, 2);
  *(v3 + 233) = v2;
  sub_100097810(v3);
}

uint64_t sub_100098EC4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100098F10(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
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
  *(a1 + 185) = 0u;
  *(a1 + 204) = 5;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  *(a1 + 328) = -1;
  *(a1 + 332) = 0;
  *(a1 + 336) = 0;
  *(a1 + 340) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 376) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 696) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0;
  *(a1 + 704) = 0xBFF0000000000000;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = a1 + 768;
  *(a1 + 872) = 0;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 880) = 1;
  *(a1 + 888) = 5;
  *(a1 + 896) = 0xBFF0000000000000;
  *(a1 + 904) = 257;
  *(a1 + 908) = 0;
  *(a1 + 912) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 0;
  if (!sub_100074238("/var/mobile/Library/com.apple.safetyalerts/"))
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,#warning,unableToCreateAppRoot}", buf, 0x12u);
    }
  }

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.safetyalert.listener", v3);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;

  v6 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009965C;
  block[3] = &unk_1001390D0;
  block[4] = a1;
  dispatch_async(v6, block);
  v8[0] = off_10013EE78;
  v8[1] = a1;
  v8[3] = v8;
  operator new();
}

void sub_100099204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_10002F8D0(va);
  operator delete();
}

void sub_10009965C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_autoreleasePoolPush();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000996E4;
  v3[3] = &unk_1001390D0;
  v3[4] = v1;
  sub_1000996E4(v3);
}

void sub_1000996E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v8[0] = 2082;
    *&v8[1] = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,safetyAlertsDaemon is up and running}", buf, 0x12u);
  }

  v3 = sub_100002DB0();
  v4 = mach_continuous_time();
  *(v3 + 23) = sub_1000B1880(v4);
  *(v3 + 24) = 0xBFF0000000000000;
  *(v3 + 50) = -1;
  *buf = 2;
  sub_100066B44((v1 + 760), 2, buf);
  *buf = 0;
  sub_100066B44((v1 + 760), 0, buf);
  *buf = 1;
  sub_100066B44((v1 + 760), 1, buf);
  v11 = 0;
  v5 = *(v1 + 8);
  sub_1000060C4(&__p, "safetyalertsblem");
  sub_10001CA20(v9, v10);
  SACoreRoutine::create(v5);
}

void sub_10009B808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17)
{
  sub_10009D160(&STACK[0x4B0]);

  sub_10009BF90(&STACK[0x710]);
  sub_10001CAB8(v17 - 256);
  _Unwind_Resume(a1);
}

void sub_10009BBE0(id a1)
{
  v1 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 68289026;
    v2[1] = 0;
    v3 = 2082;
    v4 = "";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,stopped monitoring for peopleDensity,metric}", v2, 0x12u);
  }
}

void sub_10009BCA8(id a1)
{
  v1 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 68289026;
    v2[1] = 0;
    v3 = 2082;
    v4 = "";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,stopped monitoring for peopleDensity,ble}", v2, 0x12u);
  }
}

void sub_10009BD5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 68289026;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,timer invoked}", &v12, 0x12u);
  }

  (*(**(v1 + 808) + 40))(*(v1 + 808));
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 0xCBEEA4E1A08AD8F3 * ((*(v1 + 744) - *(v1 + 736)) >> 3);
    v5 = 0x2E8BA2E8BA2E8BA3 * ((*(v1 + 720) - *(v1 + 712)) >> 3);
    v6 = 0xAAAAAAAAAAAAAAABLL * ((*(v1 + 792) - *(v1 + 784)) >> 3);
    v12 = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2050;
    v17 = v4;
    v18 = 2050;
    v19 = v5;
    v20 = 2050;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,timer invoked, igneousAlert:%{public}llu, capAlert:%{public}llu, Wea:%{public}llu}", &v12, 0x30u);
  }

  v7 = *(v1 + 744);
  v8 = *(v1 + 736);
  if (v7 != v8)
  {
    do
    {
      v9 = v7 - 472;
      sub_10002D754(v7 - 392);
      v7 = v9;
    }

    while (v9 != v8);
    *(v1 + 744) = v8;
  }

  v10 = *(v1 + 720);
  v11 = *(v1 + 712);
  if (v10 != v11)
  {
    do
    {

      v10 -= 88;
    }

    while (v10 != v11);
    *(v1 + 720) = v11;
  }

  if (*(v1 + 792) != *(v1 + 784))
  {
    sub_10000525C((v1 + 784));
  }
}

uint64_t sub_10009BF90(uint64_t a1)
{
  sub_10000F274(a1 + 160);
  sub_10003197C(a1 + 128);
  sub_10001E0C0(a1 + 96);
  sub_10001E0C0(a1 + 64);
  sub_10003197C(a1 + 32);

  return sub_1000A1D88(a1);
}

void sub_10009BFEC(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 32);
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 1026;
    LODWORD(v21[0]) = a2;
    WORD2(v21[0]) = 1026;
    *(v21 + 6) = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onChannelUpdate, saChannelCount:%{public}d, igneousChannelCount:%{public}d}", buf, 0x1Eu);
  }

  if (*(v5 + 704) > 0.0)
  {
    if (*(v5 + 416))
    {
      v7 = sub_100002DB0();
      if (*(v7 + 145) == 1 && *(v7 + 144) == 1)
      {
        v8 = *(v5 + 432);
        if (v8)
        {
          v9 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289282;
            v17 = 0;
            v18 = 2082;
            v19 = "";
            v20 = 1026;
            LODWORD(v21[0]) = a2;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,onChannelUpdate, noOfChannels:%{public}d}", buf, 0x18u);
          }

          v10 = *(v8 + 80);
          if (v10)
          {
            sub_1000547E8(*(v10 + 136), a2 > 0);
          }

          sub_100040518(*(v5 + 432), a3);
        }

        v11 = *(v5 + 792);
        v12 = *(v5 + 784);
        if (v12 != v11)
        {
          do
          {
            v13 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              v14 = v12;
              if (v12[23] < 0)
              {
                v14 = *v12;
              }

              *buf = 68289283;
              v17 = 0;
              v18 = 2082;
              v19 = "";
              v20 = 2081;
              v21[0] = v14;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onChannelUpdate,processPendingWeaDisplayedAlert, alert:%{private, location:escape_only}s}", buf, 0x1Cu);
            }

            v15 = v12;
            if (v12[23] < 0)
            {
              v15 = *v12;
            }

            sub_10009C270(v5, v15);
            v12 += 24;
          }

          while (v12 != v11);
          sub_10000525C((v5 + 784));
        }
      }
    }
  }
}

void sub_10009C270(uint64_t a1, char *a2)
{
  if (*(a1 + 704) <= 0.0)
  {
    v11 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = a2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,#warning,onWeaDisplayedNotification,noLocation,deferAlert, weaMessage:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    sub_1000060C4(__p, a2);
    v12 = *(a1 + 792);
    v13 = *(a1 + 800);
    if (v12 < v13)
    {
      v14 = *__p;
      *(v12 + 16) = v35;
      *v12 = v14;
      *(a1 + 792) = v12 + 24;
      return;
    }

    v16 = *(a1 + 784);
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v16) >> 3);
    v18 = v17 + 1;
    if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10000509C();
    }

    v19 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v16) >> 3);
    if (2 * v19 > v18)
    {
      v18 = 2 * v19;
    }

    if (v19 >= 0x555555555555555)
    {
      v20 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v20 = v18;
    }

    *&buf[32] = a1 + 784;
    if (v20)
    {
      sub_1000050B4(a1 + 784, v20);
    }

    v21 = 24 * v17;
    v22 = *__p;
    *(v21 + 16) = v35;
    *v21 = v22;
    __p[1] = 0;
    v35 = 0;
    __p[0] = 0;
    v23 = 24 * v17 + 24;
    v24 = *(a1 + 784);
    v25 = *(a1 + 792) - v24;
    v26 = 24 * v17 - v25;
    memcpy((v21 - v25), v24, v25);
    v27 = *(a1 + 784);
    *(a1 + 784) = v26;
    *(a1 + 792) = v23;
    v28 = *(a1 + 800);
    *(a1 + 800) = 0;
    *&buf[16] = v27;
    *&buf[24] = v28;
    *buf = v27;
    *&buf[8] = v27;
    sub_10000510C(buf);
    v29 = SHIBYTE(v35);
    *(a1 + 792) = v23;
    if (v29 < 0)
    {
      goto LABEL_28;
    }

    return;
  }

  v4 = sub_100002DB0();
  if (*(v4 + 115) != 1 || (*(v4 + 114) & 1) == 0)
  {
    v15 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onWeaNotification,#warning,notSupported}", buf, 0x12u);
    }

    return;
  }

  if ((sub_100042820()[41] & 1) == 0)
  {
    v5 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v30 = "{msg%{public}.0s:#ctsa,not in wea test}";
LABEL_34:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v30, buf, 0x12u);
    goto LABEL_35;
  }

  v5 = SALogObjectGeneral;
  v6 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (!a2)
  {
    if (!v6)
    {
      goto LABEL_35;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v30 = "{msg%{public}.0s:#ctsa,not valid wea}";
    goto LABEL_34;
  }

  if (v6)
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,sendWeaTestNotification}", buf, 0x12u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v8 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = a2;
    *&buf[28] = 2050;
    *&buf[30] = Current;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,sendWeaTestNotification, weaMessage:%{public, location:escape_only}s, RecieveTS:%{public}0.3f}", buf, 0x26u);
  }

  sub_1000060C4(buf, a2);
  v9 = (a1 + 1024);
  if (*(a1 + 1047) < 0)
  {
    operator delete(*v9);
  }

  *v9 = *buf;
  *(a1 + 1040) = *&buf[16];
  *(a1 + 1064) = Current;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kSAWEAAlertReceived", 0, 0, 1u);
LABEL_35:
  sub_1000060C4(buf, a2);
  SACommonUtils::getHashForString(__p, buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v31 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v32 = __p;
    if (v35 < 0)
    {
      v32 = __p[0];
    }

    *buf = 68289539;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = a2;
    *&buf[28] = 2081;
    *&buf[30] = v32;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onWeaDisplayedNotification, message:%{private, location:escape_only}s, hash:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v33 = *(a1 + 432);
  if (v33)
  {
    sub_1000060C4(buf, a2);
    sub_10003DF1C(v33, buf);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (*(a1 + 520) && sub_10004011C(*(a1 + 432)) && sub_100047A6C(*(a1 + 520), __p))
    {
      sub_10003E4DC(*(a1 + 432), __p);
    }
  }

  if (SHIBYTE(v35) < 0)
  {
LABEL_28:
    operator delete(__p[0]);
  }
}

void sub_10009C7F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10009C850(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 32);
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 68289538;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 1026;
    v12 = a2;
    v13 = 1026;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onBLERelayUpdateCB,, isIgenousCapable:%{public}d, isIgenousEnabled:%{public}d}", v8, 0x1Eu);
  }

  result = *(v5 + 544);
  if (result)
  {
    sub_1000A8E70(result);
    return sub_1000A8F30(*(v5 + 544));
  }

  return result;
}

void sub_10009C944(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 544);
  if (v2)
  {
    sub_1000A88CC(v2);
  }

  v3 = *(v1 + 432);
  if (v3)
  {
    *(v3 + 113) = 1;
    v4 = *(v3 + 80);
    if (v4)
    {

      sub_100063DC4(v4);
    }
  }
}

uint64_t *sub_10009C9A4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10002FE54(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_10009C9EC(uint64_t a1, uint64_t a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 68289282;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 1026;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onEnhancedDeliveryEnabled,, enhancedDeliveryEnabled,:%{public}hhd}", v8, 0x18u);
  }

  *(a1 + 968) = a2;
  v5 = *(a1 + 416);
  if (v5)
  {
    sub_100030ED8(v5, a2);
  }

  v6 = *(a1 + 432);
  if (v6)
  {
    sub_10004032C(v6, a2);
  }

  result = *(a1 + 544);
  if (result)
  {
    return sub_1000A8F30(result);
  }

  return result;
}

void sub_10009CAEC(uint64_t a1, uint64_t a2, CLLocationDegrees a3, CLLocationDegrees a4, double a5, double a6, double a7)
{
  v13 = *(a1 + 32);
  v14 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 68289795;
    v26 = 2082;
    v27 = "";
    v28 = 2053;
    v29 = a3;
    v30 = 2053;
    v31 = a4;
    v32 = 2049;
    v33 = a6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onLocationChanged, lat:%{sensitive}0.6f, lon:%{sensitive}0.6f, unc:%{private}0.2f}", &v25, 0x30u);
  }

  (*(**(v13 + 952) + 16))(*(v13 + 952), a3, a4, a6);
  *(v13 + 680) = CLLocationCoordinate2DMake(a3, a4);
  *(v13 + 704) = a6;
  *(v13 + 696) = CFAbsoluteTimeGetCurrent();
  sub_10002FFEC(*(v13 + 416), a2, *(v13 + 680), *(v13 + 688), a5, *(v13 + 704), a7);
  v15 = *(v13 + 456);
  if (v15)
  {
    (*(*v15 + 80))(v15, a2, *(v13 + 680), *(v13 + 688), a5, *(v13 + 704), a7);
  }

  v16 = *(v13 + 432);
  if (v16)
  {
    v17 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(v13 + 704);
      v19 = *(v13 + 688);
      v20 = *(v13 + 680);
      v25 = 68289795;
      v26 = 2082;
      v27 = "";
      v28 = 2053;
      v29 = v20;
      v30 = 2053;
      v31 = v19;
      v32 = 2049;
      v33 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,onLocationChanged, lat:%{sensitive}0.6f, lon:%{sensitive}0.6f, unc:%{private}0.2f}", &v25, 0x30u);
    }

    v21 = *(v16 + 80);
    if (v21)
    {
      v25 = (time(0) + -978307200.0);
      sub_100054080(*(v21 + 136), &v25);
    }
  }

  v22 = *(v13 + 544);
  if (v22)
  {
    sub_1000A898C(v22);
  }

  sub_10009D474(a3, a4);
  v23 = (*(**(v13 + 928) + 24))(*(v13 + 928), v13 + 680);
  v24 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 68289283;
    v26 = 2082;
    v27 = "";
    v28 = 1029;
    LODWORD(v29) = v23;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#uimetrics,SAUiDisplayMetricsEntry,onLocationChanged, isNearCachedLocation:%{sensitive}hhd}", &v25, 0x18u);
  }

  *(sub_100002DB0() + 74) = v23 | 0x100;
  sub_100098914((v13 + 760), 1);
  sub_10009D6C4(v13);
}

void sub_10009CE50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 1026;
    v17 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,SafetyAlertsDaemon::onLocationAuthorized, isAuthorized:%{public}d}", &v12, 0x18u);
  }

  v5 = v3[52];
  if (v5)
  {
    sub_10003011C(v5, a2);
  }

  v6 = v3[54];
  if (v6)
  {
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 1026;
      v17 = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saanalytics,onLocationAuthorized, status:%{public}hhd}", &v12, 0x18u);
    }

    v8 = *(v6 + 80);
    if (v8)
    {
      sub_100053ED8(*(v8 + 136), a2);
    }
  }

  v9 = v3[116];
  if (v9)
  {
    (*(*v9 + 32))(v9, a2);
  }

  v10 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 68289283;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 1025;
    v17 = a2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,updateCfuLocationServiceStatus, isEnabled:%{private}hhd}", &v12, 0x18u);
  }

  v11 = +[SAEDFollowUpManager sharedInstance];
  [v11 setLocationServicesEnabled:a2];
}

void sub_10009D08C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 68289026;
    v3[1] = 0;
    v4 = 2082;
    v5 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onCountryChangeCb}", v3, 0x12u);
  }

  sub_10009D9E8(v1);
  sub_100098914((v1 + 760), 0);
  sub_10009D6C4(v1);
}

uint64_t sub_10009D160(uint64_t a1)
{
  sub_1000A242C(a1 + 288);
  sub_1000A222C(a1 + 256);
  sub_1000A22AC(a1 + 224);
  sub_10000F274(a1 + 192);
  sub_10001E0C0(a1 + 160);
  sub_10000F274(a1 + 128);
  sub_1000A232C(a1 + 96);
  sub_1000A23AC(a1 + 64);
  sub_10000F274(a1 + 32);

  return sub_1000A1D88(a1);
}

void sub_10009D1DC(unsigned __int8 *a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *a1;
    v8[0] = 68289283;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 1025;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,refreshStates, SAPushParticipation:%{private}hhd}", v8, 0x18u);
  }

  sub_10002FF14(*(a1 + 52), *a1);
  v4 = *(a1 + 54);
  if (v4)
  {
    v5 = *a1;
    v6 = *(v4 + 80);
    if (v6)
    {
      sub_100054420(*(v6 + 136), v5);
    }

    v7 = "kNone";
    *(v4 + 112) = v5;
    if (v5)
    {
      v7 = "kAny";
    }

    *(v4 + 8) = v7;
  }
}

void sub_10009D2F0(uint64_t a1, int a2, uint64_t a3)
{
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 68289538;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 1026;
    v13 = a2;
    v14 = 1026;
    v15 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,networkReachability, type:%{public}d, isConnected:%{public}hhd}", &v8, 0x1Eu);
  }

  if (a2)
  {
    if (a2 == 1)
    {
      sub_1000302D0(*(a1 + 416), a3);
    }

    else if (a2 == 2)
    {
      v7 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 68289026;
        v9 = 0;
        v10 = 2082;
        v11 = "";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,networkReachability,invalid type}", &v8, 0x12u);
      }
    }
  }

  else
  {
    sub_1000301F8(*(a1 + 416), a3);
    if (*(a1 + 544))
    {
      sub_1000A8C3C();
    }
  }
}

void sub_10009D474(float64_t a1, float64_t a2)
{
  v4 = sub_10008E020();
  sub_1000900A0(v4, &v12);
  v5 = v12;
  v6 = v13;
  if (v12 == v13)
  {
LABEL_31:
    v11 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      LOWORD(v16[0]) = 2082;
      *(v16 + 2) = "";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,igneousRegionCheck,rd.size==0,!updateRegionCoverage}", buf, 0x12u);
    }
  }

  else
  {
    while (1)
    {
      sub_10006E650(buf, v5);
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v24), vceqzq_f64(v25))))))
      {
        if (v24.f64[0] > a1 || v25.f64[0] < a1 || v24.f64[1] > a2 || v25.f64[1] < a2)
        {
          v10 = 0;
        }

        else
        {
          v10 = 1;
          sub_1000A1B2C(1);
        }
      }

      else
      {
        v10 = 3;
      }

      v14 = &v29;
      sub_100005208(&v14);
      v14 = &v28;
      sub_100005208(&v14);
      if (__p)
      {
        v27 = __p;
        operator delete(__p);
      }

      if (v23 < 0)
      {
        operator delete(v22);
      }

      if (v21 < 0)
      {
        operator delete(v20);
      }

      if (v19 < 0)
      {
        operator delete(v18);
      }

      if (v17 < 0)
      {
        operator delete(v16[0]);
      }

      if (v10 != 3 && v10)
      {
        break;
      }

      v5 += 280;
      if (v5 == v6)
      {
        if (v13 == v12)
        {
          goto LABEL_31;
        }

        sub_1000A1B2C(0);
        break;
      }
    }
  }

  *buf = &v12;
  sub_10006EB04(buf);
}

void sub_10009D68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a9;
  sub_10006EB04(&a13);
  _Unwind_Resume(a1);
}

void sub_10009D6C4(uint64_t a1)
{
  v1 = *(a1 + 776);
  if (v1)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289283;
      v23 = 0;
      v24 = 2082;
      v25 = "";
      v26 = 1025;
      LODWORD(v27) = v1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,processPendingAlerts, remainingInit:%{private}d}", buf, 0x18u);
    }
  }

  else
  {
    v4 = *(a1 + 704);
    if (v4 > 0.0)
    {
      v5 = *(a1 + 744);
      v6 = *(a1 + 736);
      if (v6 != v5)
      {
        v7 = v6 + 232;
        do
        {
          v8 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            v9 = v7;
            if (*(v7 + 23) < 0)
            {
              v9 = *v7;
            }

            *buf = 68289283;
            v23 = 0;
            v24 = 2082;
            v25 = "";
            v26 = 2081;
            v27 = v9;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onLocationChanged,processPendingAlert, bleAlertUID:%{private, location:escape_only}s}", buf, 0x1Cu);
          }

          sub_10009E13C(a1, v7 - 152, (v7 - 232));
          v10 = v7 + 240;
          v7 += 472;
        }

        while (v10 != v5);
        v11 = *(a1 + 744);
        v12 = *(a1 + 736);
        if (v11 != v12)
        {
          do
          {
            v13 = v11 - 472;
            sub_10002D754(v11 - 392);
            v11 = v13;
          }

          while (v13 != v12);
        }

        *(a1 + 744) = v12;
        v4 = *(a1 + 704);
      }
    }

    if (v4 > 0.0)
    {
      v14 = *(a1 + 720);
      v15 = *(a1 + 712);
      if (v15 != v14)
      {
        do
        {
          v16 = SALogObjectGeneral;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            SACommonUtils::getAnyCmam(__p, *(v15 + 80));
            v17 = __p;
            if (v21 < 0)
            {
              v17 = __p[0];
            }

            *buf = 68289283;
            v23 = 0;
            v24 = 2082;
            v25 = "";
            v26 = 2081;
            v27 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onLocationChanged,processPendingAlert, alert:%{private, location:escape_only}s}", buf, 0x1Cu);
            if (v21 < 0)
            {
              operator delete(__p[0]);
            }
          }

          sub_10009F710(a1, v15, *(v15 + 80));
          v15 += 88;
        }

        while (v15 != v14);
        v18 = *(a1 + 720);
        v19 = *(a1 + 712);
        while (v18 != v19)
        {

          v18 -= 88;
        }

        *(a1 + 720) = v19;
      }
    }
  }
}

void sub_10009D9E8(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v48 = 0;
    v49 = 2082;
    v50 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onAssetReceived}", buf, 0x12u);
    v2 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v48 = 0;
    v49 = 2082;
    v50 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,updateCountrySupport}", buf, 0x12u);
  }

  memset(&v46, 0, sizeof(v46));
  v3 = sub_100002DB0();
  std::string::operator=(&v46, (v3 + 5));
  v4 = sub_100002DB0();
  if (*(v4 + 109) == 1 && (*(v4 + 108) & 1) != 0)
  {
    *(v4 + 57) = 256;
  }

  else if (*(v4 + 115) == 1)
  {
    *(v4 + 115) = 0;
  }

  *(sub_100002DB0() + 58) = 256;
  *(sub_100002DB0() + 68) = 256;
  size = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v46.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v6 = sub_10008E020();
    sub_10009041C(v6, &__p);
    v7 = SALogObjectGeneral;
    v8 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      p_p = &__p;
      if (v45 < 0)
      {
        p_p = __p;
      }

      *buf = 68289283;
      v48 = 0;
      v49 = 2082;
      v50 = "";
      v51 = 2081;
      v52 = *&p_p;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,updateCountrySupport, countrySupportStr:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    v10 = v45;
    if (v45 < 0)
    {
      if (v44 != 7)
      {
        if (v44 != 17)
        {
          goto LABEL_41;
        }

        v11 = __p;
        goto LABEL_26;
      }

      if (*__p != 1869376609 || *(__p + 3) != 1684371311)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v45 != 7)
      {
        if (v45 != 17)
        {
          goto LABEL_41;
        }

        v11 = &__p;
LABEL_26:
        v13 = *v11;
        v14 = v11[1];
        v15 = *(v11 + 16);
        if (v13 == 0x61486E6F69746F6DLL && v14 == 0x6C6E4F7473657672 && v15 == 121)
        {
          if (![*SAPlatformInfo::instance(v8) isEqualToString:@"iPhone"] || (*(sub_100002DB0() + 58) = 257, v18 = SALogObjectGeneral, !os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT)))
          {
LABEL_46:
            if (v45 < 0)
            {
              operator delete(__p);
            }

            goto LABEL_48;
          }

          *buf = 68289026;
          v48 = 0;
          v49 = 2082;
          v50 = "";
          v19 = "{msg%{public}.0s:#daemon,updateCountrySupport,motion harvest only supported}";
          v20 = v18;
          v21 = 18;
LABEL_45:
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
          goto LABEL_46;
        }

LABEL_41:
        v23 = SALogObjectGeneral;
        if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_46;
        }

        v24 = &__p;
        if (v10 < 0)
        {
          v24 = __p;
        }

        *buf = 68289283;
        v48 = 0;
        v49 = 2082;
        v50 = "";
        v51 = 2081;
        v52 = *&v24;
        v19 = "{msg%{public}.0s:#daemon,updateCountrySupport,not supported, countrySupportStr:%{private, location:escape_only}s}";
        v20 = v23;
        v21 = 28;
        goto LABEL_45;
      }

      if (__p != 1869376609 || *(&__p + 3) != 1684371311)
      {
        goto LABEL_41;
      }
    }

    v40 = sub_100002DB0();
    if (*(v40 + 109) == 1 && (*(v40 + 108) & 1) != 0)
    {
      *(v40 + 57) = 257;
    }

    else if (*(v40 + 115) == 1)
    {
      *(v40 + 115) = 0;
    }

    v41 = SALogObjectGeneral;
    v42 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v42)
    {
      *buf = 68289026;
      v48 = 0;
      v49 = 2082;
      v50 = "";
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,updateCountrySupport,country supported}", buf, 0x12u);
    }

    if ([*SAPlatformInfo::instance(v42) isEqualToString:@"iPhone"])
    {
      *(sub_100002DB0() + 58) = 257;
    }

    goto LABEL_46;
  }

  v12 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v48 = 0;
    v49 = 2082;
    v50 = "";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,updateCountrySupport,country not known}", buf, 0x12u);
  }

LABEL_48:
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 704) > 0.0)
  {
    sub_10009D474(*(a1 + 680), *(a1 + 688));
  }

  v25 = *(a1 + 416);
  if (v25)
  {
    sub_1000469E4(v25 + 128);
  }

  v26 = *(a1 + 432);
  if (v26)
  {
    sub_100040458(v26);
  }

  v27 = sub_10008E020();
  v28 = sub_10009011C(v27);
  v29 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v48 = 0;
    v49 = 2082;
    v50 = "";
    v51 = 2050;
    v52 = v28;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,updateCfuUptakeCoefficient, uptakeCoefficient:%{public}f}", buf, 0x1Cu);
  }

  v30 = +[SAEDFollowUpManager sharedInstance];
  *&v31 = v28;
  [v30 setUptakeCoefficient:v31];

  if (*(a1 + 704) > 0.0)
  {
    sub_10009D474(*(a1 + 680), *(a1 + 688));
  }

  v32 = *(a1 + 544);
  if (v32)
  {
    sub_1000A8DB0(v32);
  }

  v33 = *(a1 + 928);
  if (v33)
  {
    (*(*v33 + 16))(v33);
  }

  v34 = *(a1 + 456);
  if (v34)
  {
    (*(*v34 + 88))(v34);
  }

  v35 = *(a1 + 584);
  if (v35)
  {
    sub_1000956C4(v35);
  }

  v36 = sub_10001FA68();
  sub_1000229AC(v36);
  v37 = sub_100002DB0();
  if (*(v37 + 145) == 1 && (v37[9] & 1) != 0)
  {
    sub_100098914((a1 + 760), 2);
    sub_10009D6C4(a1);
  }

  else
  {
    v38 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v48 = 0;
      v49 = 2082;
      v50 = "";
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onAssetReceived,country not known}", buf, 0x12u);
    }
  }
}

void sub_10009E0F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void **sub_10009E13C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  sub_1000060C4(__p, "com.apple.safetyalerts.igalert");
  v235[0] = off_10013EF08;
  v235[3] = v235;
  sub_100032950(__dst, __p, v235);
  sub_10000F274(v235);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 68289026;
    *&__p[8] = 2082;
    *&__p[10] = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,processIgneousAlert}", __p, 0x12u);
    v6 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 152);
    if (*(a2 + 175) >= 0)
    {
      v7 = a2 + 152;
    }

    v8 = *(a2 + 352);
    v9 = *(a2 + 384);
    v10 = *(a2 + 184);
    v11 = *(a2 + 192);
    v12 = *(a2 + 200);
    v13 = *(a2 + 208);
    v14 = *(a2 + 216);
    v15 = *(a2 + 320);
    *__p = 68292355;
    *&__p[8] = 2082;
    *&__p[10] = "";
    *&__p[18] = 2081;
    *&__p[20] = "info";
    *&__p[28] = 2081;
    *&__p[30] = "igAlertFlow";
    *&__p[38] = 2081;
    *&__p[40] = "daemon";
    *v204 = 2081;
    *&v204[2] = "processIgneousAlert";
    *&v204[10] = 2081;
    *&v204[12] = v7;
    *&v204[20] = 1025;
    *&v204[22] = v8;
    *&v204[26] = 1025;
    *&v204[28] = v9;
    v205 = 2049;
    *v206 = v10;
    *&v206[8] = 2049;
    *&v206[10] = v11;
    *&v206[18] = 2049;
    *&v206[20] = v12;
    *&v206[28] = 2049;
    *&v206[30] = v13;
    *&v206[38] = 2049;
    *&v206[40] = v14;
    *&v206[48] = 2049;
    *&v206[50] = v15;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:processing igneous alert, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", __p, 0x8Cu);
  }

  if (!*(a1 + 776))
  {
    sub_1000A08D8(a1 + 24, a2);
    v177[0] = off_10013EF88;
    v177[1] = a1;
    v177[3] = v177;
    v176[0] = off_10013F008;
    v176[1] = a1;
    v176[3] = v176;
    sub_1000104CC(v178, v177, v176);
    sub_10000F274(v176);
    sub_10000F274(v177);
    v41 = *(a1 + 608);
    if (v41)
    {
      v42 = sub_1000736F8(v41, a2, (a1 + 16));
    }

    else
    {
      v42 = 0;
    }

    v48 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 68289283;
      *&__p[8] = 2082;
      *&__p[10] = "";
      *&__p[18] = 1025;
      *&__p[20] = v42;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,processIgneousAlert, protocolResult:%{private}hhd}", __p, 0x18u);
      v48 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = *(a2 + 152);
      if (*(a2 + 175) >= 0)
      {
        v49 = a2 + 152;
      }

      v50 = *(a2 + 352);
      v51 = *(a2 + 384);
      v52 = *(a2 + 184);
      v53 = *(a2 + 192);
      v54 = *(a2 + 200);
      v55 = *(a2 + 208);
      v56 = *(a2 + 216);
      v57 = *(a2 + 320);
      *__p = 68292611;
      *&__p[8] = 2082;
      *&__p[10] = "";
      *&__p[18] = 2081;
      *&__p[20] = "info";
      *&__p[28] = 2081;
      *&__p[30] = "igAlertFlow";
      *&__p[38] = 2081;
      *&__p[40] = "daemon";
      *v204 = 2081;
      *&v204[2] = "processIgneousAlert";
      *&v204[10] = 2081;
      *&v204[12] = v49;
      *&v204[20] = 1025;
      *&v204[22] = v50;
      *&v204[26] = 1025;
      *&v204[28] = v51;
      v205 = 2049;
      *v206 = v52;
      *&v206[8] = 2049;
      *&v206[10] = v53;
      *&v206[18] = 2049;
      *&v206[20] = v54;
      *&v206[28] = 2049;
      *&v206[30] = v55;
      *&v206[38] = 2049;
      *&v206[40] = v56;
      *&v206[48] = 2049;
      *&v206[50] = v57;
      *&v206[58] = 1025;
      *&v206[60] = v42;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:protocol manager done, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f, protocolResult:%{private}hhd}", __p, 0x92u);
    }

    if (v42)
    {
      v58 = *(a1 + 920);
      if (v58)
      {
        v59 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 68289026;
          *&__p[8] = 2082;
          *&__p[10] = "";
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,processIgneousAlert,forward to display}", __p, 0x12u);
          v58 = *(a1 + 920);
        }

        sub_1000AD384(v58, a2);
      }

      v60 = *(a1 + 544);
      if (v60)
      {
        v61 = sub_1000A9338(v60, a2);
        v62 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 68289283;
          *&__p[8] = 2082;
          *&__p[10] = "";
          *&__p[18] = 1025;
          *&__p[20] = v61;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,processIgneousAlert, bleCoreResult:%{private}hhd}", __p, 0x18u);
          v62 = SALogObjectGeneral;
        }

        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          v63 = *(a2 + 152);
          if (*(a2 + 175) >= 0)
          {
            v63 = a2 + 152;
          }

          v64 = *(a2 + 352);
          v65 = *(a2 + 384);
          v66 = *(a2 + 184);
          v67 = *(a2 + 192);
          v68 = *(a2 + 200);
          v69 = *(a2 + 208);
          v70 = *(a2 + 216);
          v71 = *(a2 + 320);
          *__p = 68292611;
          *&__p[8] = 2082;
          *&__p[10] = "";
          *&__p[18] = 2081;
          *&__p[20] = "info";
          *&__p[28] = 2081;
          *&__p[30] = "igAlertFlow";
          *&__p[38] = 2081;
          *&__p[40] = "daemon";
          *v204 = 2081;
          *&v204[2] = "processIgneousAlert";
          *&v204[10] = 2081;
          *&v204[12] = v63;
          *&v204[20] = 1025;
          *&v204[22] = v64;
          *&v204[26] = 1025;
          *&v204[28] = v65;
          v205 = 2049;
          *v206 = v66;
          *&v206[8] = 2049;
          *&v206[10] = v67;
          *&v206[18] = 2049;
          *&v206[20] = v68;
          *&v206[28] = 2049;
          *&v206[30] = v69;
          *&v206[38] = 2049;
          *&v206[40] = v70;
          *&v206[48] = 2049;
          *&v206[50] = v71;
          *&v206[58] = 1025;
          *&v206[60] = v61;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:bleCore processing done, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f, bleCoreResult:%{private}hhd}", __p, 0x92u);
        }
      }

      sub_1000A0504(a1, a2, a3);
      v72 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v73 = *(a2 + 152);
        if (*(a2 + 175) >= 0)
        {
          v73 = a2 + 152;
        }

        v74 = *(a2 + 352);
        v75 = *(a2 + 384);
        v76 = *(a2 + 184);
        v77 = *(a2 + 192);
        v78 = *(a2 + 200);
        v79 = *(a2 + 208);
        v80 = *(a2 + 216);
        v81 = *(a2 + 320);
        *__p = 68292355;
        *&__p[8] = 2082;
        *&__p[10] = "";
        *&__p[18] = 2081;
        *&__p[20] = "info";
        *&__p[28] = 2081;
        *&__p[30] = "igAlertFlow";
        *&__p[38] = 2081;
        *&__p[40] = "daemon";
        *v204 = 2081;
        *&v204[2] = "forwardAlertToHarvest";
        *&v204[10] = 2081;
        *&v204[12] = v73;
        *&v204[20] = 1025;
        *&v204[22] = v74;
        *&v204[26] = 1025;
        *&v204[28] = v75;
        v205 = 2049;
        *v206 = v76;
        *&v206[8] = 2049;
        *&v206[10] = v77;
        *&v206[18] = 2049;
        *&v206[20] = v78;
        *&v206[28] = 2049;
        *&v206[30] = v79;
        *&v206[38] = 2049;
        *&v206[40] = v80;
        *&v206[48] = 2049;
        *&v206[50] = v81;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:forwarding alert to harvest, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", __p, 0x8Cu);
      }

      v82 = *(a2 + 312);
      if ((v82 + 1024) <= 0x400u)
      {
        v83 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 68289283;
          *&__p[8] = 2082;
          *&__p[10] = "";
          *&__p[18] = 1025;
          *&__p[20] = v82;
          _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,forwardAlertToHarvest,invalid sender for harvesting, senderId:%{private}d}", __p, 0x18u);
          v83 = SALogObjectGeneral;
        }

        if (!os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_101;
        }

        v86 = *(a2 + 152);
        v85 = a2 + 152;
        v84 = v86;
        if (*(v85 + 23) >= 0)
        {
          v84 = v85;
        }

        v87 = *(v85 + 200);
        v88 = *(v85 + 232);
        v89 = *(v85 + 32);
        v90 = *(v85 + 40);
        v91 = *(v85 + 48);
        v92 = *(v85 + 56);
        v93 = *(v85 + 64);
        v94 = *(v85 + 168);
        v95 = *(v85 + 160);
        *__p = 68292611;
        *&__p[8] = 2082;
        *&__p[10] = "";
        *&__p[18] = 2081;
        *&__p[20] = "warning";
        *&__p[28] = 2081;
        *&__p[30] = "igAlertFlow";
        *&__p[38] = 2081;
        *&__p[40] = "daemon";
        *v204 = 2081;
        *&v204[2] = "forwardAlertToHarvest";
        *&v204[10] = 2081;
        *&v204[12] = v84;
        *&v204[20] = 1025;
        *&v204[22] = v87;
        *&v204[26] = 1025;
        *&v204[28] = v88;
        v205 = 2049;
        *v206 = v89;
        *&v206[8] = 2049;
        *&v206[10] = v90;
        *&v206[18] = 2049;
        *&v206[20] = v91;
        *&v206[28] = 2049;
        *&v206[30] = v92;
        *&v206[38] = 2049;
        *&v206[40] = v93;
        *&v206[48] = 2049;
        *&v206[50] = v94;
        *&v206[58] = 1025;
        *&v206[60] = v95;
        v96 = "{msg%{public}.0s:invalid sender for harvesting, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f, senderId:%{private}d}";
        goto LABEL_87;
      }

      v126 = *(a2 + 180);
      if ((v126 - 1) >= 2)
      {
        v83 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 68289283;
          *&__p[8] = 2082;
          *&__p[10] = "";
          *&__p[18] = 1025;
          *&__p[20] = v126;
          _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,forwardAlertToHarvest,invalid alert type for harvesting, alertType:%{private}d}", __p, 0x18u);
          v83 = SALogObjectGeneral;
        }

        if (!os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_101;
        }

        v143 = *(a2 + 152);
        v142 = a2 + 152;
        v141 = v143;
        if (*(v142 + 23) >= 0)
        {
          v141 = v142;
        }

        v144 = *(v142 + 200);
        v145 = *(v142 + 232);
        v146 = *(v142 + 32);
        v147 = *(v142 + 40);
        v148 = *(v142 + 48);
        v149 = *(v142 + 56);
        v150 = *(v142 + 64);
        v151 = *(v142 + 168);
        v152 = *(v142 + 28);
        *__p = 68292611;
        *&__p[8] = 2082;
        *&__p[10] = "";
        *&__p[18] = 2081;
        *&__p[20] = "warning";
        *&__p[28] = 2081;
        *&__p[30] = "igAlertFlow";
        *&__p[38] = 2081;
        *&__p[40] = "daemon";
        *v204 = 2081;
        *&v204[2] = "forwardAlertToHarvest";
        *&v204[10] = 2081;
        *&v204[12] = v141;
        *&v204[20] = 1025;
        *&v204[22] = v144;
        *&v204[26] = 1025;
        *&v204[28] = v145;
        v205 = 2049;
        *v206 = v146;
        *&v206[8] = 2049;
        *&v206[10] = v147;
        *&v206[18] = 2049;
        *&v206[20] = v148;
        *&v206[28] = 2049;
        *&v206[30] = v149;
        *&v206[38] = 2049;
        *&v206[40] = v150;
        *&v206[48] = 2049;
        *&v206[50] = v151;
        *&v206[58] = 1025;
        *&v206[60] = v152;
        v96 = "{msg%{public}.0s:invalid alert type for harvesting, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f, alertType:%{private}d}";
LABEL_87:
        v139 = v83;
        v140 = 146;
LABEL_88:
        _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, v96, __p, v140);
        goto LABEL_101;
      }

      if (*a2 != 1)
      {
        v237[0] = @"Guid";
        if (*(a2 + 175) >= 0)
        {
          v153 = a2 + 152;
        }

        else
        {
          v153 = *(a2 + 152);
        }

        v174 = [NSString stringWithUTF8String:v153];
        *buf = v174;
        v237[1] = @"saUpdateNumber";
        v173 = [NSNumber numberWithDouble:*(a2 + 232)];
        *v180 = v173;
        v237[2] = @"saAlertSource";
        v154 = [NSNumber numberWithInt:*(a2 + 312)];
        *&v180[8] = v154;
        v237[3] = @"saMagnitude";
        v155 = [NSNumber numberWithDouble:*(a2 + 256)];
        *&v180[16] = v155;
        v237[4] = @"saEpicenterLat";
        v156 = [NSNumber numberWithDouble:*(a2 + 240)];
        *&v180[24] = v156;
        v237[5] = @"saEpicenterLon";
        v157 = [NSNumber numberWithDouble:*(a2 + 248)];
        v181 = v157;
        v237[6] = @"saMMILevel";
        v158 = [NSNumber numberWithDouble:*(a2 + 264)];
        *v182 = v158;
        v175 = [NSDictionary dictionaryWithObjects:buf forKeys:v237 count:7];

        v159 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 68289283;
          *&__p[8] = 2082;
          *&__p[10] = "";
          *&__p[18] = 2113;
          *&__p[20] = v175;
          _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,forwardAlertToHarvest, dictionary:%{private, location:escape_only}@}", __p, 0x1Cu);
        }

        v160 = objc_opt_new();
        v161 = v160;
        if (v160)
        {
          [v160 notifyEvent:v175];
          v162 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a2 + 175) >= 0)
            {
              v163 = a2 + 152;
            }

            else
            {
              v163 = *(a2 + 152);
            }

            v164 = *(a2 + 352);
            v165 = *(a2 + 384);
            v166 = *(a2 + 184);
            v167 = *(a2 + 192);
            v168 = *(a2 + 200);
            v169 = *(a2 + 208);
            v170 = *(a2 + 216);
            v171 = *(a2 + 320);
            *__p = 68292355;
            *&__p[8] = 2082;
            *&__p[10] = "";
            *&__p[18] = 2081;
            *&__p[20] = "info";
            *&__p[28] = 2081;
            *&__p[30] = "igAlertFlow";
            *&__p[38] = 2081;
            *&__p[40] = "daemon";
            *v204 = 2081;
            *&v204[2] = "forwardAlertToHarvest";
            *&v204[10] = 2081;
            *&v204[12] = v163;
            *&v204[20] = 1025;
            *&v204[22] = v164;
            *&v204[26] = 1025;
            *&v204[28] = v165;
            v205 = 2049;
            *v206 = v166;
            *&v206[8] = 2049;
            *&v206[10] = v167;
            *&v206[18] = 2049;
            *&v206[20] = v168;
            *&v206[28] = 2049;
            *&v206[30] = v169;
            *&v206[38] = 2049;
            *&v206[40] = v170;
            *&v206[48] = 2049;
            *&v206[50] = v171;
            _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:motion notified, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", __p, 0x8Cu);
          }
        }

        goto LABEL_101;
      }

      v127 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 68289026;
        *&__p[8] = 2082;
        *&__p[10] = "";
        _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,forwardAlertToHarvest,duplicate}", __p, 0x12u);
        v127 = SALogObjectGeneral;
      }

      if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
      {
        v130 = *(a2 + 152);
        v129 = a2 + 152;
        v128 = v130;
        if (*(v129 + 23) >= 0)
        {
          v128 = v129;
        }

        v131 = *(v129 + 200);
        v132 = *(v129 + 232);
        v133 = *(v129 + 32);
        v134 = *(v129 + 40);
        v135 = *(v129 + 48);
        v136 = *(v129 + 56);
        v137 = *(v129 + 64);
        v138 = *(v129 + 168);
        *__p = 68292355;
        *&__p[8] = 2082;
        *&__p[10] = "";
        *&__p[18] = 2081;
        *&__p[20] = "warning";
        *&__p[28] = 2081;
        *&__p[30] = "igAlertFlow";
        *&__p[38] = 2081;
        *&__p[40] = "daemon";
        *v204 = 2081;
        *&v204[2] = "forwardAlertToHarvest";
        *&v204[10] = 2081;
        *&v204[12] = v128;
        *&v204[20] = 1025;
        *&v204[22] = v131;
        *&v204[26] = 1025;
        *&v204[28] = v132;
        v205 = 2049;
        *v206 = v133;
        *&v206[8] = 2049;
        *&v206[10] = v134;
        *&v206[18] = 2049;
        *&v206[20] = v135;
        *&v206[28] = 2049;
        *&v206[30] = v136;
        *&v206[38] = 2049;
        *&v206[40] = v137;
        *&v206[48] = 2049;
        *&v206[50] = v138;
        v96 = "{msg%{public}.0s:duplicate, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
        v139 = v127;
        v140 = 140;
        goto LABEL_88;
      }
    }

    else
    {
      sub_1000A0504(a1, a2, a3);
    }

LABEL_101:
    sub_100011208(v178);
    return sub_100032BE0(__dst);
  }

  __asm { FMOV            V0.2D, #-1.0 }

  *__p = _Q0;
  *&__p[24] = _Q0;
  *&__p[16] = 0;
  *&__p[40] = 0;
  *v204 = 0xBFF0000000000000;
  *&v204[8] = 0;
  *&v204[16] = xmmword_1000E3F30;
  LOBYTE(v205) = 0;
  memset(&v206[6], 0, 64);
  v207 = 0u;
  v208 = 0u;
  v209 = 0u;
  v210 = 0u;
  v211 = 0u;
  memset(v212, 0, sizeof(v212));
  v213 = 5;
  v214 = 0u;
  v215 = 0u;
  v216 = 0u;
  v217 = 0u;
  v218 = 0u;
  v219 = 0u;
  v220 = 0u;
  v221 = 0;
  v222 = -1;
  v223 = 0;
  v224 = 0;
  v225 = 0;
  v226 = 0;
  v227 = 0;
  v230 = 0;
  v228 = 0;
  v229 = 0;
  v232 = 0;
  v231 = 0;
  v234 = 0;
  v233 = 0;
  v21 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v22 = a2 + 8;
    if (*(a2 + 31) < 0)
    {
      v22 = *(a2 + 8);
    }

    *buf = 68289283;
    *&buf[4] = 0;
    *v180 = 2082;
    *&v180[2] = "";
    *&v180[10] = 2081;
    *&v180[12] = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,processIgneousAlert,location not available, bleAlertUID:%{private, location:escape_only}s}", buf, 0x1Cu);
    v21 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(a2 + 152);
    if (*(a2 + 175) >= 0)
    {
      v23 = a2 + 152;
    }

    v24 = *(a2 + 352);
    v25 = *(a2 + 384);
    v26 = *(a2 + 184);
    v27 = *(a2 + 192);
    v28 = *(a2 + 200);
    v29 = *(a2 + 208);
    v30 = *(a2 + 216);
    v31 = *(a2 + 320);
    v32 = a2 + 8;
    if (*(a2 + 31) < 0)
    {
      v32 = *(a2 + 8);
    }

    *buf = 68292611;
    *&buf[4] = 0;
    *v180 = 2082;
    *&v180[2] = "";
    *&v180[10] = 2081;
    *&v180[12] = "info";
    *&v180[20] = 2081;
    *&v180[22] = "igAlertFlow";
    *&v180[30] = 2081;
    v181 = "daemon";
    *v182 = 2081;
    *&v182[2] = "processIgneousAlert";
    v183 = 2081;
    v184 = v23;
    v185 = 1025;
    v186 = v24;
    v187 = 1025;
    v188 = v25;
    v189 = 2049;
    v190 = v26;
    v191 = 2049;
    v192 = v27;
    v193 = 2049;
    v194 = v28;
    v195 = 2049;
    v196 = v29;
    v197 = 2049;
    v198 = v30;
    v199 = 2049;
    v200 = v31;
    v201 = 2081;
    v202 = v32;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:location not available, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f, bleAlertUID:%{private, location:escape_only}s}", buf, 0x96u);
  }

  v33 = a3[3];
  *&__p[32] = a3[2];
  *v204 = v33;
  *&v204[16] = a3[4];
  v34 = a3[1];
  *__p = *a3;
  *&__p[16] = v34;
  sub_1000A08D8(&v205, a2);
  v35 = *(a1 + 744);
  v36 = *(a1 + 752);
  if (v35 >= v36)
  {
    v43 = *(a1 + 736);
    v44 = 0xCBEEA4E1A08AD8F3 * ((v35 - v43) >> 3);
    if (v44 + 1 > 0x8AD8F2FBA93868)
    {
      sub_10000509C();
    }

    v45 = 0xCBEEA4E1A08AD8F3 * ((v36 - v43) >> 3);
    v46 = 2 * v45;
    if (2 * v45 <= v44 + 1)
    {
      v46 = v44 + 1;
    }

    if (v45 >= 0x456C797DD49C34)
    {
      v47 = 0x8AD8F2FBA93868;
    }

    else
    {
      v47 = v46;
    }

    *&v180[24] = a1 + 736;
    if (v47)
    {
      if (v47 <= 0x8AD8F2FBA93868)
      {
        operator new();
      }

      sub_100004E38();
    }

    v97 = 472 * v44;
    *buf = 0;
    *v180 = v97;
    *&v180[8] = 472 * v44;
    v98 = *v204;
    *(v97 + 32) = *&__p[32];
    *(v97 + 48) = v98;
    *(v97 + 64) = *&v204[16];
    v99 = *&__p[16];
    *v97 = *__p;
    *(v97 + 16) = v99;
    sub_100038AF0(472 * v44 + 80, &v205);
    v100 = *&v180[8];
    v101 = *(a1 + 744);
    v102 = *(a1 + 736);
    v103 = *v180 + v102 - v101;
    if (v101 != v102)
    {
      v104 = *(a1 + 736);
      v105 = *v180 + v102 - v101;
      do
      {
        *v105 = *v104;
        v106 = *(v104 + 16);
        v107 = *(v104 + 32);
        v108 = *(v104 + 64);
        *(v105 + 48) = *(v104 + 48);
        *(v105 + 64) = v108;
        *(v105 + 16) = v106;
        *(v105 + 32) = v107;
        *(v105 + 80) = *(v104 + 80);
        v109 = *(v104 + 88);
        *(v105 + 104) = *(v104 + 104);
        *(v105 + 88) = v109;
        *(v104 + 96) = 0;
        *(v104 + 104) = 0;
        *(v104 + 88) = 0;
        v110 = *(v104 + 112);
        *(v105 + 128) = *(v104 + 128);
        *(v105 + 112) = v110;
        *(v104 + 120) = 0;
        *(v104 + 128) = 0;
        *(v104 + 112) = 0;
        v111 = *(v104 + 136);
        *(v105 + 152) = *(v104 + 152);
        *(v105 + 136) = v111;
        *(v104 + 144) = 0;
        *(v104 + 152) = 0;
        *(v104 + 136) = 0;
        v112 = *(v104 + 160);
        *(v105 + 176) = *(v104 + 176);
        *(v105 + 160) = v112;
        *(v104 + 160) = 0;
        *(v104 + 168) = 0;
        *(v104 + 176) = 0;
        v113 = *(v104 + 184);
        *(v105 + 200) = *(v104 + 200);
        *(v105 + 184) = v113;
        *(v104 + 184) = 0;
        *(v104 + 192) = 0;
        *(v104 + 200) = 0;
        v114 = *(v104 + 208);
        *(v105 + 224) = *(v104 + 224);
        *(v105 + 208) = v114;
        *(v104 + 208) = 0;
        *(v104 + 216) = 0;
        *(v104 + 224) = 0;
        v115 = *(v104 + 232);
        *(v105 + 248) = *(v104 + 248);
        *(v105 + 232) = v115;
        *(v104 + 232) = 0;
        *(v104 + 240) = 0;
        *(v104 + 248) = 0;
        v116 = *(v104 + 336);
        v118 = *(v104 + 288);
        v117 = *(v104 + 304);
        *(v105 + 320) = *(v104 + 320);
        *(v105 + 336) = v116;
        *(v105 + 288) = v118;
        *(v105 + 304) = v117;
        v120 = *(v104 + 368);
        v119 = *(v104 + 384);
        v121 = *(v104 + 352);
        *(v105 + 393) = *(v104 + 393);
        *(v105 + 368) = v120;
        *(v105 + 384) = v119;
        *(v105 + 352) = v121;
        v122 = *(v104 + 272);
        *(v105 + 256) = *(v104 + 256);
        *(v105 + 272) = v122;
        *(v105 + 416) = *(v104 + 416);
        *(v104 + 416) = 0;
        *(v104 + 424) = 0;
        *(v105 + 432) = *(v104 + 432);
        v123 = *(v104 + 440);
        *(v105 + 456) = *(v104 + 456);
        *(v105 + 440) = v123;
        *(v104 + 448) = 0;
        *(v104 + 456) = 0;
        *(v104 + 440) = 0;
        *(v105 + 464) = *(v104 + 464);
        v104 += 472;
        v105 += 472;
      }

      while (v104 != v101);
      do
      {
        sub_10002D754(v102 + 80);
        v102 += 472;
      }

      while (v102 != v101);
      v102 = *(a1 + 736);
    }

    v40 = (v100 + 472);
    *(a1 + 736) = v103;
    *(a1 + 744) = v100 + 472;
    v124 = *(a1 + 752);
    *(a1 + 752) = *&v180[16];
    *&v180[8] = v102;
    *&v180[16] = v124;
    *buf = v102;
    *v180 = v102;
    sub_1000A24AC(buf);
  }

  else
  {
    *v35 = *__p;
    v37 = *&__p[16];
    v38 = *&__p[32];
    v39 = *&v204[16];
    v35[3] = *v204;
    v35[4] = v39;
    v35[1] = v37;
    v35[2] = v38;
    sub_100038AF0((v35 + 5), &v205);
    v40 = v35 + 472;
    *(a1 + 744) = v35 + 472;
  }

  *(a1 + 744) = v40;
  v125 = *(a1 + 448);
  if (v125)
  {
    (*(*v125 + 56))(v125);
  }

  sub_10002D754(&v205);
  return sub_100032BE0(__dst);
}

void sub_10009F604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  sub_100011208(va);
  sub_100032BE0((v21 - 248));
  _Unwind_Resume(a1);
}

void sub_10009F710(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if (*(SAPlatformInfo::instance(v5) + 9) == 1)
    {
      v7 = sub_100002DB0();
      if (*(v7 + 115) == 1 && *(v7 + 114) == 1 && SACommonUtils::isLivabiltyEnabled(v7))
      {
        v8 = [v6 valueForKey:@"encodedPDUList"];
        v9 = COERCE_DOUBLE([v8 count]);
        v10 = [v6 objectForKey:@"server_timestamp"];
        if (v10)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
            Current = CFAbsoluteTimeGetCurrent();
            v13 = v6;
            [v11 doubleValue];
            v15 = v14;
            v16 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289794;
              *&buf[8] = 2082;
              *&buf[10] = "";
              v86 = 2050;
              v87 = v15 + -978307200.0;
              v88 = 2050;
              v89 = Current;
              v90 = 2050;
              v91 = Current - (v15 + -978307200.0);
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,livabilityMessageLatency, serverTimestamp:%{public}0.1f, deviceTimestamp:%{public}0.1f, latency:%{public}0.1f}", buf, 0x30u);
            }

            v6 = v13;
          }
        }

        v17 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289282;
          *&buf[8] = 2082;
          *&buf[10] = "";
          v86 = 2050;
          v87 = v9;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,encodedpdulist array,size, size:%{public}lu}", buf, 0x1Cu);
        }

        if (v9 != 0.0)
        {
          v81[0] = _NSConcreteStackBlock;
          v81[1] = 3221225472;
          v81[2] = sub_1000A110C;
          v81[3] = &unk_10013DB18;
          v81[4] = a1;
          [v8 enumerateObjectsUsingBlock:v81];

          goto LABEL_87;
        }
      }
    }

    v19 = SALogObjectGeneral;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      SACommonUtils::getAnyCmam(__p, v6);
      if (v80 >= 0)
      {
        *&v20 = COERCE_DOUBLE(__p);
      }

      else
      {
        v20 = __p[0];
      }

      *buf = 68289283;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v86 = 2081;
      v87 = *&v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dbg,#daemon,onSafetyAlertReceived, alert:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (v80 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v21 = [v6 objectForKey:@"geometry"];
    v22 = v21;
    if (!v21)
    {
      v43 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,#warning,onSafetyAlertReceived,missingGeometry}", buf, 0x12u);
      }

      goto LABEL_86;
    }

    v77 = v21;
    if (*(a1 + 776))
    {
      v23 = SALogObjectGeneral;
      v76 = v6;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        SACommonUtils::getAnyCmam(__p, v6);
        if (v80 >= 0)
        {
          *&v24 = COERCE_DOUBLE(__p);
        }

        else
        {
          v24 = __p[0];
        }

        *buf = 68289283;
        *&buf[8] = 2082;
        *&buf[10] = "";
        v86 = 2081;
        v87 = *&v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,#warning,onSafetyAlertReceived,noLocation,deferAlert, alert:%{private, location:escape_only}s}", buf, 0x1Cu);
        if (v80 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v26 = *a2;
      v25 = a2[1];
      v27 = *(a2 + 4);
      v28 = *(a2 + 5);
      v30 = a2[3];
      v29 = a2[4];
      v31 = *(a2 + 10);
      v32 = *(a2 + 11);
      v33 = a2[6];
      v35 = *(a2 + 14);
      v34 = *(a2 + 15);
      v36 = v6;
      v37 = a2[9];
      v75 = a2[8];
      DeepCopy = CFPropertyListCreateDeepCopy(kCFAllocatorDefault, v36, 1uLL);
      v39 = *(a1 + 720);
      v40 = *(a1 + 728);
      if (v39 >= v40)
      {
        v54 = *(a1 + 712);
        v55 = 0x2E8BA2E8BA2E8BA3 * ((v39 - v54) >> 3);
        if ((v55 + 1) > 0x2E8BA2E8BA2E8BALL)
        {
          sub_10000509C();
        }

        v56 = 0x2E8BA2E8BA2E8BA3 * ((v40 - v54) >> 3);
        v57 = 2 * v56;
        if (2 * v56 <= v55 + 1)
        {
          v57 = v55 + 1;
        }

        if (v56 >= 0x1745D1745D1745DLL)
        {
          v58 = 0x2E8BA2E8BA2E8BALL;
        }

        else
        {
          v58 = v57;
        }

        if (v58)
        {
          if (v58 <= 0x2E8BA2E8BA2E8BALL)
          {
            operator new();
          }

          sub_100004E38();
        }

        v60 = 88 * v55;
        *v60 = v26;
        *(v60 + 8) = v25;
        *(v60 + 16) = v27;
        *(v60 + 20) = v28;
        *(v60 + 24) = v30;
        *(v60 + 32) = v29;
        *(v60 + 40) = v31;
        *(v60 + 44) = v32;
        *(v60 + 48) = v33;
        *(v60 + 56) = v35;
        *(v60 + 60) = v34;
        *(v60 + 64) = v75;
        *(v60 + 72) = v37;
        v61 = DeepCopy;
        *(v60 + 80) = DeepCopy;
        v62 = *(a1 + 720);
        v63 = *(a1 + 712);
        v64 = (v60 + v63 - v62);
        if (v63 == v62)
        {
          v6 = v76;
        }

        else
        {
          v65 = *(a1 + 712);
          v66 = (v60 + v63 - v62);
          v6 = v76;
          do
          {
            *v66 = *v65;
            v67 = *(v65 + 16);
            v68 = *(v65 + 32);
            v69 = *(v65 + 64);
            *(v66 + 3) = *(v65 + 48);
            *(v66 + 4) = v69;
            *(v66 + 1) = v67;
            *(v66 + 2) = v68;
            v70 = *(v65 + 80);
            *(v65 + 80) = 0;
            *(v66 + 10) = v70;
            v65 += 88;
            v66 += 88;
          }

          while (v65 != v62);
          do
          {

            v63 += 11;
          }

          while (v63 != v62);
          v63 = *(a1 + 712);
        }

        v42 = v60 + 88;
        *(a1 + 712) = v64;
        *(a1 + 720) = v60 + 88;
        *(a1 + 728) = 0;
        if (v63)
        {
          operator delete(v63);
        }

        v41 = v61;
      }

      else
      {
        *v39 = v26;
        *(v39 + 8) = v25;
        *(v39 + 16) = v27;
        *(v39 + 20) = v28;
        *(v39 + 24) = v30;
        *(v39 + 32) = v29;
        *(v39 + 40) = v31;
        *(v39 + 44) = v32;
        *(v39 + 48) = v33;
        *(v39 + 56) = v35;
        *(v39 + 60) = v34;
        *(v39 + 64) = v75;
        *(v39 + 72) = v37;
        v41 = DeepCopy;
        *(v39 + 80) = DeepCopy;
        v42 = v39 + 88;
        v6 = v76;
      }

      *(a1 + 720) = v42;

      goto LABEL_85;
    }

    __p[0] = COERCE_VOID_(CFAbsoluteTimeGetCurrent());
    __p[1] = 0xBFF0000000000000;
    v79 = -1;
    v44 = [v6 objectForKey:@"server_timestamp"];
    if (v44 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v45 = v44;
      sub_1000060C4(buf, [v44 cStringUsingEncoding:4]);
      v46 = BYTE3(v87);
      if (SBYTE3(v87) < 0)
      {
        v46 = *&buf[8];
      }

      if (v46)
      {
        CFAbsoluteTimeFromTimeString = SACommonUtils::extractCFAbsoluteTimeFromTimeString(buf);
        v48 = __p[0];
        v22 = v77;
        v49 = sub_100042820();
        if (*(v49 + 208) != 1 || ((isLivabiltyEnabled = SACommonUtils::isLivabiltyEnabled(v49), *__p < 0.0) ? (v51 = 1) : (v51 = isLivabiltyEnabled), (v51 & 1) != 0 || vabdd_f64(*&v48, CFAbsoluteTimeFromTimeString) <= *(sub_100042820() + 24)))
        {
          v53 = 1;
        }

        else
        {
          v52 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *v82 = 68289026;
            *&v82[4] = 0;
            v83 = 2082;
            v84 = "";
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,#warning,onSafetyAlertReceived,alertTooOld}", v82, 0x12u);
          }

          v53 = 0;
        }
      }

      else
      {
        v71 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *v82 = 68289026;
          *&v82[4] = 0;
          v83 = 2082;
          v84 = "";
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,#warning,onSafetyAlertReceived,serverTimeStampEmpty}", v82, 0x12u);
        }

        v53 = 1;
        v22 = v77;
      }

      if (SBYTE3(v87) < 0)
      {
        operator delete(*buf);
      }

      if ((v53 & 1) == 0)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v59 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,#warning,onSafetyAlertReceived,serverTimeStampMissingOrInvalid}", buf, 0x12u);
      }
    }

    if (sub_100033788((a1 + 656), v6))
    {
      v72 = *(a1 + 520);
      if (v72)
      {
        sub_100047370(v72, v6);
      }

      v73 = v22;
      operator new();
    }

    v74 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,#warning,onSafetyAlertReceived,saAlreadyExists}", buf, 0x12u);
    }

LABEL_84:

LABEL_85:
    v22 = v77;
LABEL_86:

    goto LABEL_87;
  }

  v18 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,#warning,onSafetyAlertReceived,nilAlertReceived}", buf, 0x12u);
  }

LABEL_87:
}

void sub_1000A03D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  sub_1000A14EC(&a15);

  _Unwind_Resume(a1);
}

void sub_1000A0504(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,forwardAlertToCA}", buf, 0x12u);
    v6 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 152);
    if (*(a2 + 175) >= 0)
    {
      v7 = a2 + 152;
    }

    v8 = *(a2 + 352);
    v9 = *(a2 + 384);
    v10 = *(a2 + 184);
    v11 = *(a2 + 192);
    v12 = *(a2 + 200);
    v13 = *(a2 + 208);
    v14 = *(a2 + 216);
    v15 = *(a2 + 320);
    *buf = 68292355;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = "info";
    *&buf[28] = 2081;
    *&buf[30] = "igAlertFlow";
    *&buf[38] = 2081;
    *&buf[40] = "daemon";
    *v35 = 2081;
    *&v35[2] = "forwardAlertToCA";
    *&v35[10] = 2081;
    *&v35[12] = v7;
    *&v35[20] = 1025;
    *&v35[22] = v8;
    *&v35[26] = 1025;
    *&v35[28] = v9;
    v36 = 2049;
    v37 = v10;
    v38 = 2049;
    v39 = v11;
    v40 = 2049;
    v41 = v12;
    v42 = 2049;
    v43 = v13;
    v44 = 2049;
    v45 = v14;
    v46 = 2049;
    v47 = v15;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:forwarding alert to CA, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
  }

  v16 = *(a1 + 432);
  if (v16)
  {
    if (*(a2 + 384) == 2)
    {
      buf[1] = 0;
      *&buf[4] = 0;
      buf[0] = **(a1 + 544);
      sub_10003DC84(v16, a2, buf);
    }

    v17 = sub_100002DB0();
    v33 = CLLocationCoordinate2DMake(*v17, v17[1]);
    v18 = *(a1 + 432);
    v19 = a3[3];
    *&buf[32] = a3[2];
    *v35 = v19;
    *&v35[16] = a3[4];
    v20 = a3[1];
    *buf = *a3;
    *&buf[16] = v20;
    sub_10003D410(v18, a2, buf, &v33.latitude);
  }

  else
  {
    v21 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,forwardAlertToCA,CA nil}", buf, 0x12u);
      v21 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a2 + 152);
      v23 = a2 + 152;
      v22 = v24;
      if (*(v23 + 23) >= 0)
      {
        v22 = v23;
      }

      v25 = *(v23 + 200);
      v26 = *(v23 + 232);
      v27 = *(v23 + 32);
      v28 = *(v23 + 40);
      v29 = *(v23 + 48);
      v30 = *(v23 + 56);
      v31 = *(v23 + 64);
      v32 = *(v23 + 168);
      *buf = 68292355;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = "warning";
      *&buf[28] = 2081;
      *&buf[30] = "igAlertFlow";
      *&buf[38] = 2081;
      *&buf[40] = "daemon";
      *v35 = 2081;
      *&v35[2] = "forwardAlertToCA";
      *&v35[10] = 2081;
      *&v35[12] = v22;
      *&v35[20] = 1025;
      *&v35[22] = v25;
      *&v35[26] = 1025;
      *&v35[28] = v26;
      v36 = 2049;
      v37 = v27;
      v38 = 2049;
      v39 = v28;
      v40 = 2049;
      v41 = v29;
      v42 = 2049;
      v43 = v30;
      v44 = 2049;
      v45 = v31;
      v46 = 2049;
      v47 = v32;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CA nil, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
    }
  }
}

uint64_t sub_1000A08D8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::string::operator=((a1 + 8), (a2 + 8));
  std::string::operator=((a1 + 32), (a2 + 32));
  std::string::operator=((a1 + 56), (a2 + 56));
  std::string::operator=((a1 + 80), (a2 + 80));
  std::string::operator=((a1 + 104), (a2 + 104));
  std::string::operator=((a1 + 128), (a2 + 128));
  std::string::operator=((a1 + 152), (a2 + 152));
  v4 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v4;
  v5 = *(a2 + 256);
  v7 = *(a2 + 208);
  v6 = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = v5;
  *(a1 + 208) = v7;
  *(a1 + 224) = v6;
  v9 = *(a2 + 288);
  v8 = *(a2 + 304);
  v10 = *(a2 + 272);
  *(a1 + 313) = *(a2 + 313);
  *(a1 + 288) = v9;
  *(a1 + 304) = v8;
  *(a1 + 272) = v10;
  v12 = *(a2 + 336);
  v11 = *(a2 + 344);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a1 + 344);
  *(a1 + 336) = v12;
  *(a1 + 344) = v11;
  if (v13)
  {
    sub_10002A838(v13);
  }

  *(a1 + 352) = *(a2 + 352);
  std::string::operator=((a1 + 360), (a2 + 360));
  *(a1 + 384) = *(a2 + 384);
  return a1;
}

void sub_1000A09CC(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v17[0] = 68289026;
    v17[1] = 0;
    LOWORD(v18) = 2082;
    *(&v18 + 2) = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onAlertReceived}", v17, 0x12u);
  }

  LOBYTE(v17[0]) = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  v28 = 5;
  v34 = 0u;
  v35 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v36 = 0;
  v37 = -1;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v45 = 0;
  v43 = 0;
  v44 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v46 = 0;
  if (!sub_100080B74(v5, v17))
  {
    goto LABEL_11;
  }

  v7 = v28;
  v8 = SALogObjectGeneral;
  v9 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v7 == 5)
  {
    if (v9)
    {
      buf = 68289026;
      v51 = 2082;
      v52 = "";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,#warning,isIgneousAlert,NO}", &buf, 0x12u);
      v8 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v27;
      if (v27[23] < 0)
      {
        v10 = *v27;
      }

      buf = 68292355;
      v51 = 2082;
      v52 = "";
      v53 = 2081;
      v54 = "info";
      v55 = 2081;
      v56 = "igAlertFlow";
      v57 = 2081;
      v58 = "daemon";
      v59 = 2081;
      v60 = "isIgneousAlert";
      v61 = 2081;
      v62 = v10;
      v63 = 1025;
      v64 = v45;
      v65 = 1025;
      v66 = v49;
      v67 = 2049;
      v68 = v29;
      v69 = 2049;
      v70 = *(&v29 + 1);
      v71 = 2049;
      v72 = v30;
      v73 = 2049;
      v74 = *(&v30 + 1);
      v75 = 2049;
      v76 = v31;
      v77 = 2049;
      v78 = v41;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:it is not igneous alert, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", &buf, 0x8Cu);
    }

LABEL_11:
    sub_10009F710(a1, a2, v5);
    goto LABEL_34;
  }

  if (v9)
  {
    buf = 68289026;
    v51 = 2082;
    v52 = "";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,isIgneousAlert,YES}", &buf, 0x12u);
    v8 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v27;
    if (v27[23] < 0)
    {
      v11 = *v27;
    }

    buf = 68292355;
    v51 = 2082;
    v52 = "";
    v53 = 2081;
    v54 = "info";
    v55 = 2081;
    v56 = "igAlertFlow";
    v57 = 2081;
    v58 = "daemon";
    v59 = 2081;
    v60 = "isIgneousAlert";
    v61 = 2081;
    v62 = v11;
    v63 = 1025;
    v64 = v45;
    v65 = 1025;
    v66 = v49;
    v67 = 2049;
    v68 = v29;
    v69 = 2049;
    v70 = *(&v29 + 1);
    v71 = 2049;
    v72 = v30;
    v73 = 2049;
    v74 = *(&v30 + 1);
    v75 = 2049;
    v76 = v31;
    v77 = 2049;
    v78 = v41;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:it is igneous alert, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", &buf, 0x8Cu);
    v8 = SALogObjectGeneral;
  }

  v12 = a2[8];
  v13 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v12 == 1)
  {
    if (v13)
    {
      buf = 68289283;
      v51 = 2082;
      v52 = "";
      v53 = 1025;
      LODWORD(v54) = 1;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,processIgneousAlert,fIncomingMessageInterface,cell, interface:%{private}d}", &buf, 0x18u);
    }

    v14 = 2;
  }

  else if (v12 == 2)
  {
    if (v13)
    {
      buf = 68289283;
      v51 = 2082;
      v52 = "";
      v53 = 1025;
      LODWORD(v54) = 2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,processIgneousAlert,fIncomingMessageInterface,wifi, interface:%{private}d}", &buf, 0x18u);
    }

    v14 = 1;
  }

  else
  {
    if (v13)
    {
      buf = 68289283;
      v51 = 2082;
      v52 = "";
      v53 = 1025;
      LODWORD(v54) = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,processIgneousAlert,fIncomingMessageInterface,unknown, interface:%{private}d}", &buf, 0x18u);
    }

    v14 = 0;
  }

  v45 = v14;
  v15 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v27;
    if (v27[23] < 0)
    {
      v16 = *v27;
    }

    buf = 68292355;
    v51 = 2082;
    v52 = "";
    v53 = 2081;
    v54 = "info";
    v55 = 2081;
    v56 = "igAlertFlow";
    v57 = 2081;
    v58 = "daemon";
    v59 = 2081;
    v60 = "onAlertReceived";
    v61 = 2081;
    v62 = v16;
    v63 = 1025;
    v64 = v14;
    v65 = 1025;
    v66 = v49;
    v67 = 2049;
    v68 = v29;
    v69 = 2049;
    v70 = *(&v29 + 1);
    v71 = 2049;
    v72 = v30;
    v73 = 2049;
    v74 = *(&v30 + 1);
    v75 = 2049;
    v76 = v31;
    v77 = 2049;
    v78 = v41;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:igneous alert received over APNS, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", &buf, 0x8Cu);
  }

  v49 = 1;
  sub_10009E13C(a1, v17, a2);
LABEL_34:
  sub_10002D754(v17);
}

void sub_1000A10EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10002D754(&a9);

  _Unwind_Resume(a1);
}

void sub_1000A110C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    __p = 68289283;
    v8 = 2082;
    v9 = "";
    v10 = 2113;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,object, object:%{private, location:escape_only}@}", &__p, 0x1Cu);
  }

  v6 = v3;
  sub_1000060C4(&__p, [v3 UTF8String]);
  (*(**(v4 + 456) + 40))(*(v4 + 456), &__p);
  if (SBYTE3(v11) < 0)
  {
    operator delete(__p);
  }
}

void sub_1000A1240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A1270(void *a1)
{
  v1 = a1;
  memset(&__p, 0, sizeof(__p));
  SACommonUtils::getWEAHandling(v1, &__p);
  WeaHandlingType = SACommonUtils::getWeaHandlingType(&__p);
  v3 = SALogObjectGeneral;
  v4 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    *buf = 68289283;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 1025;
    v20 = WeaHandlingType;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,alertType, type:%{private}d}", buf, 0x18u);
  }

  if (WeaHandlingType > 3)
  {
    switch(WeaHandlingType)
    {
      case 4:
        v9 = SASettings::instance(v4);
        v6 = (*(*v9 + 88))(v9);
        break;
      case 5:
        v11 = SASettings::instance(v4);
        v6 = (*(*v11 + 64))(v11);
        break;
      case 6:
        v7 = SASettings::instance(v4);
        v6 = (*(*v7 + 80))(v7);
        break;
      default:
        goto LABEL_18;
    }
  }

  else
  {
    switch(WeaHandlingType)
    {
      case 1:
        v8 = SASettings::instance(v4);
        v6 = (*(*v8 + 72))(v8);
        break;
      case 2:
        v10 = SASettings::instance(v4);
        v6 = (*(*v10 + 56))(v10);
        break;
      case 3:
        v5 = SASettings::instance(v4);
        v6 = (*(*v5 + 48))(v5);
        break;
      default:
        goto LABEL_18;
    }
  }

  if (v6)
  {
    v12 = 0;
    goto LABEL_19;
  }

LABEL_18:
  v12 = 1;
LABEL_19:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_1000A14C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id **sub_1000A14EC(id **a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *v1;
    *v1 = 0;

    operator delete();
  }

  return a1;
}

void sub_1000A1548(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  string = xpc_dictionary_get_string(v2, _xpc_event_key_name);
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289282;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = string;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,com.apple.notifyd.matching rebroadcast, notificationName:%{public, location:escape_only}s}", v7, 0x1Cu);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  v6 = [NSString stringWithUTF8String:string];
  [v5 postNotificationName:v6 object:0];
}

void sub_1000A1670(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_1000A16A4(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  v13 = *a2;
  v14 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100030DE8(&v13);
  if (v14)
  {
    sub_10002A838(v14);
  }

  v5 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1000A17D4;
  block[3] = &unk_10013DB78;
  v7 = *a2;
  v6 = a2[1];
  block[4] = a1;
  block[5] = v7;
  v12 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v5, block);
  v8 = a2[1];
  v9 = *a2;
  v10 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100030DE8(&v9);
  if (v10)
  {
    sub_10002A838(v10);
  }

  if (v12)
  {
    sub_10002A838(v12);
  }
}

void sub_1000A17A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a11)
  {
    sub_10002A838(a11);
  }

  if (a18)
  {
    sub_10002A838(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000A17D4(void *a1)
{
  v2 = a1[4];
  v3 = objc_autoreleasePoolPush();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v7 = sub_1000A18B0;
  v8 = &unk_10013DB78;
  v5 = a1[5];
  v4 = a1[6];
  v9 = v2;
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v7(v6);
  }

  else
  {
    sub_1000A18B0(v6);
  }

  if (v11)
  {
    sub_10002A838(v11);
  }

  objc_autoreleasePoolPop(v3);
}

void sub_1000A1898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_10002A838(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000A18B0(void *a1)
{
  v2 = a1[4];
  v3 = v2[52];
  if (v3)
  {
    v4 = a1[6];
    v26 = a1[5];
    v27 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100030C90(v3, &v26);
    if (v27)
    {
      sub_10002A838(v27);
    }
  }

  v5 = v2[56];
  if (v5)
  {
    v6 = a1[6];
    v24 = a1[5];
    v25 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v5 + 48))(v5, &v24);
    if (v25)
    {
      sub_10002A838(v25);
    }
  }

  v7 = v2[57];
  if (v7)
  {
    v8 = a1[6];
    v22 = a1[5];
    v23 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v7 + 32))(v7, &v22);
    if (v23)
    {
      sub_10002A838(v23);
    }
  }

  v9 = v2[59];
  if (v9)
  {
    v10 = a1[6];
    v20 = a1[5];
    v21 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v9 + 16))(v9, &v20);
    if (v21)
    {
      sub_10002A838(v21);
    }
  }

  v11 = v2[60];
  if (v11)
  {
    v12 = a1[6];
    v18 = a1[5];
    v19 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v11 + 16))(v11, &v18);
    if (v19)
    {
      sub_10002A838(v19);
    }
  }

  v13 = v2[54];
  if (v13)
  {
    v14 = a1[6];
    v16 = a1[5];
    v17 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10003FFC4(v13, &v16);
    v13 = v17;
    if (v17)
    {
      sub_10002A838(v17);
    }
  }

  return SASettings::finalize(v13);
}

void sub_1000A1A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a10)
  {
    sub_10002A838(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000A1B00(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1000A1B1C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_10002A838(v1);
  }
}

void sub_1000A1B2C(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289283;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 1025;
    v8 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,updateRegionCoverage, isCovered:%{private}hhd}", v4, 0x18u);
  }

  *(sub_100002DB0() + 52) = a1 | 0x100;
  v3 = +[SAEDFollowUpManager sharedInstance];
  [v3 setCurrentLocationInCoveredRegion:a1];
}

uint64_t sub_1000A1C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A1CF0(a1, a2);
  sub_10004497C(v4 + 32, a2 + 32);
  sub_10001EF44(a1 + 64, a2 + 64);
  sub_10001EF44(a1 + 96, a2 + 96);
  sub_10004497C(a1 + 128, a2 + 128);
  sub_10000F1DC(a1 + 160, a2 + 160);
  return a1;
}

void sub_1000A1C9C(_Unwind_Exception *a1)
{
  sub_10003197C(v1 + 128);
  sub_10001E0C0(v1 + 96);
  sub_10001E0C0(v1 + 64);
  sub_10003197C(v1 + 32);
  sub_1000A1D88(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A1CF0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000A1D88(uint64_t a1)
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

uint64_t sub_1000A1E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A1CF0(a1, a2);
  sub_10000F1DC(v4 + 32, a2 + 32);
  sub_1000A1F34(a1 + 64, a2 + 64);
  sub_1000A1FCC(a1 + 96, a2 + 96);
  sub_10000F1DC(a1 + 128, a2 + 128);
  sub_10001EF44(a1 + 160, a2 + 160);
  sub_10000F1DC(a1 + 192, a2 + 192);
  sub_1000A2064(a1 + 224, a2 + 224);
  sub_1000A20FC(a1 + 256, a2 + 256);
  sub_1000A2194(a1 + 288, a2 + 288);
  return a1;
}

void sub_1000A1EA0(_Unwind_Exception *a1)
{
  sub_1000A222C(v1 + 256);
  sub_1000A22AC(v1 + 224);
  sub_10000F274(v1 + 192);
  sub_10001E0C0(v1 + 160);
  sub_10000F274(v1 + 128);
  sub_1000A232C(v1 + 96);
  sub_1000A23AC(v1 + 64);
  sub_10000F274(v1 + 32);
  sub_1000A1D88(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A1F34(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000A1FCC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000A2064(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000A20FC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000A2194(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000A222C(uint64_t a1)
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

uint64_t sub_1000A22AC(uint64_t a1)
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

uint64_t sub_1000A232C(uint64_t a1)
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

uint64_t sub_1000A23AC(uint64_t a1)
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

uint64_t sub_1000A242C(uint64_t a1)
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

uint64_t sub_1000A24AC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 472;
    sub_10002D754(i - 392);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1000A2500(uint64_t a1)
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

uint64_t sub_1000A2580(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1000A861C(result);

    operator delete();
  }

  return result;
}

id *sub_1000A25CC(id **a1, id *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1000955F4(result);

    operator delete();
  }

  return result;
}

id *sub_1000A2618(id **a1, id *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100073628(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1000A2664(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10002F8D0(result);

    operator delete();
  }

  return result;
}

void *sub_1000A26B0(void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100075C1C(result);

    operator delete();
  }

  return result;
}

void sub_1000A271C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10013DBB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000A27EC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013DC08;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000A2824(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013DC78))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1000A2870(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1000A2AC8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10000DB70(a1);
}

uint64_t sub_1000A2B44(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013DC98;
  a2[1] = v2;
  return result;
}

void sub_1000A2B70(uint64_t a1, id *a2)
{
  v2 = *(a1 + 8);
  v4 = *a2;
  v3 = *(v2 + 432);
  if (v3)
  {
    sub_10003DEB0(v3, v4);
  }
}

uint64_t sub_1000A2BDC(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013DCF8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A2C98(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013DD18;
  a2[1] = v2;
  return result;
}

void sub_1000A2CC4(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  *(sub_100002DB0() + 55) = v2 | 0x100;
  v4 = *(v3 + 416) + 128;

  sub_100046B44(v4, v2);
}

uint64_t sub_1000A2D10(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013DD78))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1000A2D5C(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1000A2FB4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10000DB70(a1);
}

uint64_t sub_1000A3030(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013DD98;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000A3068(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013DDF8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A3124(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013DE18;
  a2[1] = v2;
  return result;
}

void sub_1000A3150(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onUserSettingsChanged}", v4, 0x12u);
  }

  v3 = *(v1 + 544);
  if (v3)
  {
    sub_1000AAB18(v3);
  }
}

uint64_t sub_1000A3214(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013DE78))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A32D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013DE98;
  a2[1] = v2;
  return result;
}

void sub_1000A32FC(uint64_t a1, id *a2)
{
  v2 = *a2;
  if (([*SAPlatformInfo::instance(v2) isEqualToString:@"iPhone"] & 1) == 0)
  {
    goto LABEL_37;
  }

  v3 = sub_100002DB0();
  if (*(v3 + 137) != 1 || (*(v3 + 136) & 1) == 0)
  {
    v15 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    *buf = 68289026;
    v24 = 0;
    v25 = 2082;
    v26 = "";
    v16 = "{msg%{public}.0s:#daemon,onMotionHarvestWeaTrigger,not allowed}";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0x12u);
    goto LABEL_37;
  }

  if (!v2)
  {
    v15 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    *buf = 68289026;
    v24 = 0;
    v25 = 2082;
    v26 = "";
    v16 = "{msg%{public}.0s:#daemon,onMotionHarvestWeaTrigger,weaReceivedDict null}";
    goto LABEL_21;
  }

  v4 = [(SAPlatformInfo *)v2 objectForKey:@"AlertMessageID"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([v4 intValue] == 4352)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v6 = "12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE7isFoundES8_RdRS8_EUlvE0_NS6_ISC_EEFvvEEE";
      LODWORD(v6) = vcvtmd_s64_f64(Current / 3600.0);
      v7 = [NSString stringWithFormat:@"J%d", v6];
      v8 = v7;
      if (v7)
      {
        v21 = @"Guid";
        v22 = v7;
        v9 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v10 = objc_opt_new();
        if (v9 && (([v9 objectForKey:@"Guid"], (v11 = objc_claimAutoreleasedReturnValue()) != 0) ? (v12 = v10 == 0) : (v12 = 1), !v12 ? (v13 = 0) : (v13 = 1), v11, !v13))
        {
          v20 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289026;
            v24 = 0;
            v25 = 2082;
            v26 = "";
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onMotionHarvestWeaTrigger,triggered harvest}", buf, 0x12u);
          }

          [v10 notifyEvent:v9];
        }

        else
        {
          v14 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289026;
            v24 = 0;
            v25 = 2082;
            v26 = "";
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onMotionHarvestWeaTrigger,fail to call motion SPI}", buf, 0x12u);
          }
        }
      }

      else
      {
        v19 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          v24 = 0;
          v25 = 2082;
          v26 = "";
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onMotionHarvestWeaTrigger,uid null}", buf, 0x12u);
        }
      }
    }

    else
    {
      v18 = SALogObjectGeneral;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        v24 = 0;
        v25 = 2082;
        v26 = "";
        v27 = 1026;
        v28 = [v4 intValue];
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onMotionHarvestWeaTrigger,not ETWS, alertMessageID:%{public}d}", buf, 0x18u);
      }
    }
  }

  else
  {
    v17 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onMotionHarvestWeaTrigger,invalid messageID}", buf, 0x12u);
    }
  }

LABEL_37:
}

uint64_t sub_1000A37E4(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013DEF8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000A3850(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10013DF18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000A3920(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013DF68;
  a2[1] = v2;
  return result;
}

void **sub_1000A394C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 68289026;
    *&v20[8] = 2082;
    *&v20[10] = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onBLEAlertReceivedCb}", v20, 0x12u);
    v4 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 152);
    if (*(a2 + 175) >= 0)
    {
      v5 = a2 + 152;
    }

    v6 = *(a2 + 352);
    v7 = *(a2 + 384);
    v8 = *(a2 + 184);
    v9 = *(a2 + 192);
    v10 = *(a2 + 200);
    v11 = *(a2 + 208);
    v12 = *(a2 + 216);
    v13 = *(a2 + 320);
    *v20 = 68292355;
    *&v20[8] = 2082;
    *&v20[10] = "";
    *&v20[18] = 2081;
    *v21 = "info";
    *&v21[8] = 2081;
    *&v21[10] = "igAlertFlow";
    *&v21[18] = 2081;
    v22 = "daemon";
    *v23 = 2081;
    *&v23[2] = "onBLEAlertReceivedCb";
    *&v23[10] = 2081;
    *v24 = v5;
    *&v24[8] = 1025;
    *&v24[10] = v6;
    *&v24[14] = 1025;
    *&v24[16] = v7;
    v25 = 2049;
    v26 = v8;
    v27 = 2049;
    v28 = v9;
    v29 = 2049;
    v30 = v10;
    v31 = 2049;
    v32 = v11;
    v33 = 2049;
    v34 = v12;
    v35 = 2049;
    v36 = v13;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Ble alert received, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", v20, 0x8Cu);
  }

  *(a2 + 384) = 2;
  *(a2 + 352) = 3;
  __asm { FMOV            V0.2D, #-1.0 }

  *v20 = _Q0;
  *&v20[16] = 0;
  *&v21[4] = _Q0;
  LODWORD(v22) = 0;
  *v23 = 0xBFF0000000000000;
  *&v23[8] = 0;
  *&v24[4] = xmmword_1000E3F30;
  return sub_10009E13C(v3, a2, v20);
}

uint64_t sub_1000A3B78(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013DFD8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A3C34(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013DFF8;
  a2[1] = v2;
  return result;
}

void sub_1000A3C60(uint64_t a1, id *a2, void **a3)
{
  v4 = *a3;
  v5 = *a2;
  v6 = v4;
  v7 = *(a1 + 8);
  __asm { FMOV            V0.2D, #-1.0 }

  v25 = _Q0;
  v26 = 0;
  v27 = 0xBFF0000000000000;
  v29 = xmmword_1000E3F30;
  v28 = 2;
  v23[0] = CFAbsoluteTimeGetCurrent();
  v23[1] = 0xBFF0000000000000;
  v24 = -1;
  v13 = [v6 objectForKey:kIncomingMessageInterfaceKey];

  if (v13)
  {
    v14 = [v6 objectForKey:kIncomingMessageInterfaceKey];
    *&v29 = [v14 intValue];
  }

  v15 = SALogObjectGeneral;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    SACommonUtils::getAnyCmam(__p, v5);
    v16 = v22;
    v17 = __p[0];
    v18 = [v6 objectForKey:kIncomingMessageInterfaceKey];
    v19 = v18;
    v20 = __p;
    *buf = 68289539;
    if (v16 < 0)
    {
      v20 = v17;
    }

    v31 = 0;
    v32 = 2082;
    v33 = "";
    v34 = 2081;
    v35 = v20;
    v36 = 2113;
    v37 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onAlertReceived,push, alert:%{private, location:escape_only}s, IncomingInterface:%{private, location:escape_only}@}", buf, 0x26u);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_1000A09CC(v7, v23, v5);
}

void sub_1000A3E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A3EA0(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013E058))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000A3F18(uint64_t a1)
{

  operator delete();
}

id sub_1000A3F6C(uint64_t a1, void *a2)
{
  *a2 = off_10013E078;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t sub_1000A3FDC(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013E0E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000A4054(uint64_t a1)
{

  operator delete();
}

id sub_1000A40A8(uint64_t a1, void *a2)
{
  *a2 = off_10013E108;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t sub_1000A4118(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013E168))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000A4168(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000A41A0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_10002FE54(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1000A41E4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1000A4250(uint64_t a1)
{

  operator delete();
}

id sub_1000A42A4(uint64_t a1, void *a2)
{
  *a2 = off_10013E1E8;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t sub_1000A4324(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013E258))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000A4374(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000A43AC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1000A43DC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A448C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013E2D8;
  a2[1] = v2;
  return result;
}

void sub_1000A44B8(uint64_t a1, char **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = sub_100002DB0();
  if (*(v4 + 115) == 1 && (*(v4 + 114) & 1) != 0)
  {
    v5 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      __p = 68289283;
      v13 = 2082;
      v14 = "";
      v15 = 2081;
      v16 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onUserTappedOnWea, hash:%{private, location:escape_only}s}", &__p, 0x1Cu);
    }

    if (*(v3 + 520) && *(sub_100042820() + 202) == 1)
    {
      v6 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        __p = 68289283;
        v13 = 2082;
        v14 = "";
        v15 = 2081;
        v16 = v2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dbg,#daemon,onUserTappedOnWea, weaHash:%{private, location:escape_only}s}", &__p, 0x1Cu);
      }

      v7 = *(v3 + 520);
      sub_1000060C4(&__p, v2);
      v8 = sub_100047A6C(v7, &__p);
      if (SBYTE3(v16) < 0)
      {
        operator delete(__p);
      }

      if (v8)
      {
        v9 = *(v3 + 432);
        sub_1000060C4(&__p, v2);
        sub_10003E4DC(v9, &__p);
        if (SBYTE3(v16) < 0)
        {
          operator delete(__p);
        }
      }
    }

    v10 = *(v3 + 432);
    if (v10)
    {
      sub_1000060C4(&__p, v2);
      sub_10003E370(v10, &__p);
      if (SBYTE3(v16) < 0)
      {
        operator delete(__p);
      }
    }
  }

  else
  {
    v11 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      __p = 68289283;
      v13 = 2082;
      v14 = "";
      v15 = 2081;
      v16 = v2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onUserTappedOnWea,#warning,notSupported, hash:%{private, location:escape_only}s}", &__p, 0x1Cu);
    }
  }
}

void sub_1000A471C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000A4748(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013E338))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A4804(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013E358;
  a2[1] = v2;
  return result;
}

void sub_1000A4830()
{
  v0 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 68289026;
    v1[1] = 0;
    v2 = 2082;
    v3 = "";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onNetworkConnectivityChanged}", v1, 0x12u);
  }
}

uint64_t sub_1000A48E4(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013E3B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A49A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013E3D8;
  a2[1] = v2;
  return result;
}

BOOL sub_1000A49CC(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 416);
  v2 = *(v1 + 103);
  if (v2 < 0)
  {
    v2 = *(v1 + 88);
  }

  return v2 != 0;
}

uint64_t sub_1000A49EC(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013E448))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000A4AC0(uint64_t a1, id *a2, _BYTE **a3)
{
  v3 = *a3;
  v4 = *a2;
  memset(&v11, 0, sizeof(v11));
  v5 = sub_100002DB0();
  std::string::operator=(&v11, (v5 + 5));
  size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
  v7 = HIBYTE(v11.__r_.__value_.__r.__words[2]);
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v11.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    *v3 = 0;
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *v3 = 1;
  [v4 removeAllObjects];
  v8 = sub_10008E020();
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v11;
  }

  else
  {
    v9 = v11.__r_.__value_.__r.__words[0];
  }

  v10 = [NSString stringWithUTF8String:v9];
  sub_10008F0AC(v8, v10, v4);

  if ((*(&v11.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_8:
    operator delete(v11.__r_.__value_.__l.__data_);
  }

LABEL_9:
}

void sub_1000A4BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A4BD0(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013E4D8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A4CA4(SASettings *a1)
{
  v1 = *(*SASettings::instance(a1) + 104);

  return v1();
}

uint64_t sub_1000A4CEC(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013E558))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A4DA8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013E578;
  a2[1] = v2;
  return result;
}

void sub_1000A4DD4()
{
  v0 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 68289026;
    v3 = 0;
    v4 = 2082;
    v5 = "";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onSettingsVisited}", &v2, 0x12u);
    v0 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 68289026;
    v3 = 0;
    v4 = 2082;
    v5 = "";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,updateCfuOnSettingsVisited}", &v2, 0x12u);
  }

  v1 = +[SAEDFollowUpManager sharedInstance];
  [v1 noteUserViewedEDSettings];
}

uint64_t sub_1000A4F14(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013E5D8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A4FD0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013E5F8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000A5008(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013E658))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A50C4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013E678;
  a2[1] = v2;
  return result;
}

__n128 sub_1000A50F0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if (*(v3 + 999) < 0)
  {
    sub_100004CEC(a2, *(v3 + 976), *(v3 + 984));
  }

  else
  {
    v4 = *(v3 + 976);
    *(a2 + 16) = *(v3 + 992);
    *a2 = v4;
  }

  if (*(v3 + 1023) < 0)
  {
    sub_100004CEC((a2 + 24), *(v3 + 1000), *(v3 + 1008));
  }

  else
  {
    v5 = *(v3 + 1000);
    *(a2 + 40) = *(v3 + 1016);
    *(a2 + 24) = v5;
  }

  if (*(v3 + 1047) < 0)
  {
    sub_100004CEC((a2 + 48), *(v3 + 1024), *(v3 + 1032));
  }

  else
  {
    v6 = *(v3 + 1024);
    *(a2 + 64) = *(v3 + 1040);
    *(a2 + 48) = v6;
  }

  result = *(v3 + 1048);
  v8 = *(v3 + 1064);
  *(a2 + 104) = *(v3 + 1080);
  *(a2 + 88) = v8;
  *(a2 + 72) = result;
  return result;
}

void sub_1000A51BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000A51F0(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013E6E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A52AC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013E708;
  a2[1] = v2;
  return result;
}

void sub_1000A52D8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = SALogObjectGeneral;
  v3 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 68289026;
    v20 = 0;
    v21 = 2082;
    v22 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,igneousStateInfo,readFromChMgr}", buf, 0x12u);
  }

  if ([*SAPlatformInfo::instance(v3) isEqualToString:@"iPhone"])
  {
    v4 = +[MCProfileConnection sharedConnection];
    v5 = [v4 isSafetyDataSubmissionAllowed];
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100002DB0();
  if (*(v6 + 135) == 1 && *(v6 + 134) == 1 && (v7 = sub_100002DB0(), *(v7 + 117) == 1))
  {
    v8 = *(v7 + 116);
  }

  else
  {
    v8 = 0;
  }

  *(sub_100002DB0() + 68) = v5 & v8 | 0x100;
  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sub_100002DB0();
    v11 = *(v10 + 135);
    v12 = *(v10 + 134);
    v13 = sub_100002DB0();
    if (v11)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    if (*(v13 + 117))
    {
      v15 = *(v13 + 116);
    }

    else
    {
      v15 = 0;
    }

    *buf = 68290307;
    v20 = 0;
    v21 = 2082;
    v22 = "";
    v23 = 1025;
    v24 = v5;
    v25 = 1025;
    v26 = v14;
    v27 = 1025;
    v28 = v15;
    v29 = 1025;
    v30 = v8 & 1;
    v31 = 1025;
    v32 = v5 & v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,updateMotionHarvestStatus, improveSafety:%{private}hhd, motionHarvestPref:%{private}hhd, motionHarvestOnlyInCountry:%{private}hhd, motionHarvestAvailable:%{private}hhd, motionHarvestAllowed:%{private}hhd}", buf, 0x30u);
  }

  v16 = *(v1 + 416);
  if (v16)
  {
    sub_100046DD8((v16 + 128), v18);
    v17 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68290307;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 1025;
      v24 = v18[4];
      v25 = 1025;
      v26 = v18[1];
      v27 = 1025;
      v28 = v18[3];
      v29 = 1025;
      v30 = v18[2];
      v31 = 1025;
      v32 = v18[0];
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,igneousStateInfo,state, isEnabled:%{private}hhd, inSupportedCountry:%{private}hhd, isInMagnetMode:%{private}hhd, isUserOptedIn:%{private}hhd, inCoverageRegion:%{private}hhd}", buf, 0x30u);
    }
  }
}

uint64_t sub_1000A55D0(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013E778))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A568C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013E798;
  a2[1] = v2;
  return result;
}

void sub_1000A56B8(uint64_t a1, uint64_t a2, double *a3, double *a4)
{
  v4 = *a3;
  v5 = *a4;
  sub_100071480(*(*(*(a1 + 8) + 432) + 104), a2, &v7);
  if (v7)
  {
    sub_100070604(v7, v4);
    sub_1000706C8(v7, v5);
    sub_10006FD88(v7);
  }

  else
  {
    v6 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,OnUserTappedOnNotificationCb,uidNotFound}", buf, 0x12u);
    }
  }

  if (v8)
  {
    sub_10002A838(v8);
  }
}

uint64_t sub_1000A57E4(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013E808))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A58A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013E828;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000A58DC(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013E898))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A5998(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013E8B8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000A59D4(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013E918))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A5A90(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013E938;
  a2[1] = v2;
  return result;
}

void sub_1000A5ABC(uint64_t a1, id *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  memset(__p, 0, 24);
  v4 = [NSString stringWithUTF8String:"title"];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      SACommonUtils::getStringValue(buf, v5);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = *buf;
      __p[2] = *&buf[16];
    }
  }

  memset(v34, 0, 24);
  v6 = [NSString stringWithUTF8String:"body"];
  v7 = [v3 objectForKey:v6];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      SACommonUtils::getStringValue(buf, v7);
      if (SHIBYTE(v34[2]) < 0)
      {
        operator delete(v34[0]);
      }

      *v34 = *buf;
      v34[2] = *&buf[16];
    }
  }

  memset(v33, 0, 24);
  v8 = [NSString stringWithUTF8String:"attribution"];
  v9 = [v3 objectForKey:v8];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      SACommonUtils::getStringValue(buf, v9);
      if (SHIBYTE(v33[2]) < 0)
      {
        operator delete(v33[0]);
      }

      *v33 = *buf;
      v33[2] = *&buf[16];
    }
  }

  v10 = [NSString stringWithUTF8String:"level"];
  v11 = [v3 objectForKey:v10];

  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [v11 intValue];
  }

  else
  {
    v12 = -1;
  }

  memset(v32, 0, 24);
  v13 = [NSString stringWithUTF8String:"uid"];
  v14 = [v3 objectForKey:v13];

  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      SACommonUtils::getStringValue(buf, v14);
      if (SHIBYTE(v32[2]) < 0)
      {
        operator delete(v32[0]);
      }

      *v32 = *buf;
      v32[2] = *&buf[16];
    }
  }

  if (SHIBYTE(v34[2]) >= 0)
  {
    v15 = HIBYTE(v34[2]);
  }

  else
  {
    v15 = v34[1];
  }

  if (v15)
  {
    v16 = HIBYTE(v33[2]);
    if (SHIBYTE(v33[2]) < 0)
    {
      v16 = v33[1];
    }

    if (v16 && v12 - 1 <= 1)
    {
      v17 = HIBYTE(v32[2]);
      if (SHIBYTE(v32[2]) < 0)
      {
        v17 = v32[1];
      }

      if (v17)
      {
        log = SALogObjectGeneral;
        if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
LABEL_89:
          (*(**(v2 + 592) + 16))(*(v2 + 592), v3);
          goto LABEL_90;
        }

        v18 = "<empty>";
        if (SHIBYTE(v32[2]) < 0)
        {
          v20 = v32[0];
          v19 = v32[1] == 0;
        }

        else
        {
          v19 = SHIBYTE(v32[2]) == 0;
          v20 = v32;
        }

        if (v19)
        {
          v20 = "<empty>";
        }

        if (SHIBYTE(__p[2]) < 0)
        {
          if (__p[1])
          {
            v26 = __p[0];
          }

          else
          {
            v26 = "<empty>";
          }

          if ((HIBYTE(v34[2]) & 0x80) == 0)
          {
LABEL_75:
            v27 = HIBYTE(v34[2]) == 0;
            v28 = v34;
LABEL_81:
            if (v27)
            {
              v28 = "<empty>";
            }

            if (SHIBYTE(v33[2]) < 0)
            {
              v30 = v33[0];
              v29 = v33[1] == 0;
            }

            else
            {
              v29 = SHIBYTE(v33[2]) == 0;
              v30 = v33;
            }

            if (!v29)
            {
              v18 = v30;
            }

            *buf = 68290563;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2081;
            *&buf[20] = v20;
            v37 = 2081;
            v38 = v26;
            v39 = 2081;
            v40 = v28;
            v41 = 2081;
            v42 = v18;
            v43 = 1025;
            v44 = v12;
            v45 = 1025;
            v46 = 1;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onAlertRelayedFromCompanion,params, uid:%{private, location:escape_only}s, title:%{private, location:escape_only}s, body:%{private, location:escape_only}s, attribution:%{private, location:escape_only}s, level:%{private}d, isAlertable:%{private}hhd}", buf, 0x46u);
            goto LABEL_89;
          }
        }

        else
        {
          v26 = __p;
          if (!HIBYTE(__p[2]))
          {
            v26 = "<empty>";
          }

          if ((HIBYTE(v34[2]) & 0x80) == 0)
          {
            goto LABEL_75;
          }
        }

        v28 = v34[0];
        v27 = v34[1] == 0;
        goto LABEL_81;
      }
    }
  }

  v21 = SALogObjectGeneral;
  if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_90;
  }

  if (SHIBYTE(v32[2]) < 0)
  {
    if (v32[1])
    {
      v22 = v32[0];
    }

    else
    {
      v22 = "<empty>";
    }
  }

  else
  {
    v22 = v32;
    if (!HIBYTE(v32[2]))
    {
      v22 = "<empty>";
    }
  }

  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    v23 = __p;
    if (!HIBYTE(__p[2]))
    {
      v23 = "<empty>";
    }

    if ((HIBYTE(v34[2]) & 0x80) == 0)
    {
      goto LABEL_51;
    }

LABEL_58:
    v24 = v34[0];
    if (!v34[1])
    {
      v24 = "<empty>";
    }

    goto LABEL_60;
  }

  if (__p[1])
  {
    v23 = __p[0];
  }

  else
  {
    v23 = "<empty>";
  }

  if ((HIBYTE(v34[2]) & 0x80) != 0)
  {
    goto LABEL_58;
  }

LABEL_51:
  v24 = "<empty>";
  if (HIBYTE(v34[2]))
  {
    v24 = v34;
  }

LABEL_60:
  if (SHIBYTE(v33[2]) < 0)
  {
    if (v33[1])
    {
      v25 = v33[0];
    }

    else
    {
      v25 = "<empty>";
    }
  }

  else
  {
    v25 = v33;
    if (!HIBYTE(v33[2]))
    {
      v25 = "<empty>";
    }
  }

  *buf = 68290307;
  *&buf[4] = 0;
  *&buf[8] = 2082;
  *&buf[10] = "";
  *&buf[18] = 2081;
  *&buf[20] = v22;
  v37 = 2081;
  v38 = v23;
  v39 = 2081;
  v40 = v24;
  v41 = 2081;
  v42 = v25;
  v43 = 1025;
  v44 = v12;
  _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onAlertRelayedFromCompanion,invalidValues, uid:%{private, location:escape_only}s, title:%{private, location:escape_only}s, body:%{private, location:escape_only}s, attribution:%{private, location:escape_only}s, level:%{private}d}", buf, 0x40u);
LABEL_90:
  if (SHIBYTE(v32[2]) < 0)
  {
    operator delete(v32[0]);
  }

  if (SHIBYTE(v33[2]) < 0)
  {
    operator delete(v33[0]);
  }

  if (SHIBYTE(v34[2]) < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1000A6118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A6228(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013E998))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A62E4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013E9B8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000A6310(uint64_t a1, int *a2, uint64_t a3)
{
  v5 = *(a3 + 9);
  v6 = *(a1 + 8);
  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 8);
    v10 = *a2;
    v11 = *a3;
    v14[0] = 68290306;
    v14[1] = 0;
    v15 = 2082;
    v16 = "";
    v17 = 1026;
    v18 = v11;
    v19 = 1026;
    v20 = v9;
    v21 = 1026;
    v22 = v5;
    v23 = 1026;
    v24 = v8;
    v25 = 1026;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onBatteryServiceStateChanged, level:%{public}d, fullyCharged:%{public}hhd, connected:%{public}hhd, wasConnected:%{public}hhd, state:%{public}d}", v14, 0x30u);
  }

  v12 = *(v6 + 528);
  if (v12)
  {
    (*(*v12 + 16))(v12, v5 & 1);
  }

  result = *(v6 + 544);
  if (result)
  {
    return sub_1000A8CF0(result);
  }

  return result;
}

uint64_t sub_1000A6464(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013EA28))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A6520(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013EA48;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000A6554(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013EAA8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A6610(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013EAC8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000A663C(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 416);
  if (v3)
  {
    sub_100046C28((v3 + 128), *a2);
  }

  result = *(v2 + 456);
  if (result)
  {
    v5 = *(*result + 72);

    return v5();
  }

  return result;
}

uint64_t sub_1000A66BC(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013EB28))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A6778(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013EB48;
  a2[1] = v2;
  return result;
}

void sub_1000A67A4(uint64_t a1, double *a2, uint64_t *a3, id *a4)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  v8 = *(a1 + 8);
  __asm { FMOV            V0.2D, #-1.0 }

  v28 = _Q0;
  v32 = 0;
  LODWORD(v29) = 0;
  LODWORD(v31) = 1;
  Current = CFAbsoluteTimeGetCurrent();
  v26 = 0xBFF0000000000000;
  LODWORD(v27) = -1;
  v30 = v5 * 1000.0;
  v33 = v6;
  v14 = SALogObjectGeneral;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    SACommonUtils::getAnyCmam(&__p, v7);
    v15 = v37 >= 0 ? &__p : __p;
    *buf = 68289795;
    *&buf[4] = 0;
    v39 = 2082;
    v40 = "";
    v41 = 2081;
    v42 = v15;
    v43 = 2050;
    v44 = v6;
    v45 = 2050;
    v46 = v5;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onAlertReceived,pull, alert:%{private, location:escape_only}s, responseCode:%{public}ld, latency:%{public}0.1f}", buf, 0x30u);
    if (v37 < 0)
    {
      operator delete(__p);
    }
  }

  if (v6 == 200)
  {
    sub_1000A09CC(v8, &Current, v7);
  }

  else
  {
    v16 = v7;
    v17 = v16;
    if (v16)
    {
      v18 = [(SACommonUtils *)v16 objectForKey:@"SafetyAlertMissingForHash", *&Current, v26, v27, v28, v29, *&v30, v31, v32, v33];
      if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v19 = v18;
        sub_1000060C4(buf, [v18 UTF8String]);
        v20 = *(v8 + 432);
        if (v20)
        {
          sub_10003E6FC(v20, buf, &Current);
        }

        if (!sub_100033D18((v8 + 656), buf))
        {
          v21 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            __p = 68289026;
            v35 = 2082;
            v36 = "";
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onAlertPullFailure,sendToTelephony}", &__p, 0x12u);
          }

          (*(**(v8 + 456) + 24))(*(v8 + 456), v17);
        }

        v22 = *(v8 + 520);
        if (v22)
        {
          sub_100047768(v22, buf);
        }

        if (SBYTE3(v42) < 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        v23 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          v39 = 2082;
          v40 = "";
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,#warning,onAlertPullFailure,invalidMissingHash}", buf, 0x12u);
        }
      }
    }

    else
    {
      v24 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        v39 = 2082;
        v40 = "";
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,#warning,onAlertPullFailure,nilDictionary}", buf, 0x12u);
      }
    }
  }
}

uint64_t sub_1000A6BA4(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013EBB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A6C60(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013EBD8;
  a2[1] = v2;
  return result;
}

void sub_1000A6C8C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 68289026;
    LOWORD(v10) = 2082;
    *(&v10 + 2) = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onFirstUnlocked}", &v9, 0x12u);
  }

  v3 = *(v1 + 432);
  if (v3)
  {
    v4 = *(v3 + 80);
    if (v4)
    {
      sub_100056028(*(v4 + 136));
    }

    v5 = *(v3 + 88);
    if (v5)
    {
      sub_100024124(v5);
    }

    v6 = sub_10004ECB4();
    v7 = *(v6 + 25);
    v9 = _NSConcreteStackBlock;
    *&v10 = 3221225472;
    *(&v10 + 1) = sub_10004FFF0;
    v11 = &unk_1001390D0;
    v12 = v6;
    dispatch_async(v7, &v9);
  }

  v8 = *(v1 + 608);
  if (v8)
  {
    sub_10007412C(v8);
  }
}

uint64_t sub_1000A6DD0(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013EC38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A6E8C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013EC58;
  a2[1] = v2;
  return result;
}

void sub_1000A6EB8(uint64_t a1, unsigned __int8 *a2)
{
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a2;
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 1026;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,onLockedStatusChanged, isLocked:%{public}hhd}", v5, 0x18u);
  }
}

uint64_t sub_1000A6F80(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013ECB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A703C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013ECD8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000A7068(uint64_t a1)
{
  result = *(*(a1 + 8) + 544);
  if (result)
  {
    return sub_1000A8B7C(result);
  }

  return result;
}

uint64_t sub_1000A707C(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013ED48))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A7138(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013ED68;
  a2[1] = v2;
  return result;
}

void sub_1000A7164(uint64_t a1)
{
  if (*(*(a1 + 8) + 544))
  {
    sub_100002CFC();
  }
}

uint64_t sub_1000A7178(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013EDD8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A7234(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013EDF8;
  a2[1] = v2;
  return result;
}

void sub_1000A7260(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_100042820();
  v3 = *(v2 + 65);
  if (SACommonUtils::isLivabiltyEnabled(v2))
  {
    v3 = 100;
  }

  if ((v3 & 0x80000000) != 0)
  {
    v4 = sub_10008E020();
    v3 = sub_10008F240(v4);
  }

  v5 = v3 <= 0x64 && arc4random_uniform(0x64u) <= v3;
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 68289539;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 1025;
    v12 = v3;
    v13 = 1025;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,isParticipatingInMetrics, appc:%{private}d, isParticipating:%{private}hhd}", v8, 0x1Eu);
  }

  *v1 = v5;
  v7 = sub_100042820();
  sub_100042264(v7, @"SA_PUSH_PARTICIPATION", *v1);

  sub_10009D1DC(v1);
}

uint64_t sub_1000A73A8(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013EE58))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A7464(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013EE78;
  a2[1] = v2;
  return result;
}

double sub_1000A7490(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,IgneousStatusUpdate}", v6, 0x12u);
  }

  *(v3 + 1080) = *(a2 + 104);
  std::string::operator=((v3 + 976), a2);
  std::string::operator=((v3 + 1000), (a2 + 24));
  *(v3 + 1048) = *(a2 + 72);
  result = *(a2 + 96);
  *(v3 + 1072) = result;
  return result;
}

uint64_t sub_1000A7588(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A7660(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A771C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013EF88;
  a2[1] = v2;
  return result;
}

void sub_1000A7748(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 68289026;
    v3[1] = 0;
    v4 = 2082;
    v5 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,processIgneousAlert,raii,init}", v3, 0x12u);
  }

  *(v1 + 16) = 0;
}

uint64_t sub_1000A7804(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A78C0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013F008;
  a2[1] = v2;
  return result;
}

void sub_1000A78EC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    __p = 68289026;
    v8 = 2082;
    v9 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#daemon,processIgneousAlert,raii,destroy}", &__p, 0x12u);
  }

  v3 = *(v1 + 616);
  if (v3)
  {
    v4 = *(v1 + 16);
    v6 = *(v1 + 208);
    v5 = *(v1 + 216);
    sub_1000060C4(&__p, "");
    sub_10002F3A0(v3, v4, &__p, v1 + 32, v5, v6);
    if (v10 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_1000A7A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000A7A24(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000A7A70(void *a1)
{
  v3 = a1;
  if (*(sub_100042820() + 274) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_1000A7BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10007A3A0(va);
  operator delete();
}

void sub_1000A7C4C(void *a1)
{
  a1;
  if (*(sub_100042820() + 241) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_1000A7D40(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  v7 = a2;
  *a1 = 0;
  v8 = v7;
  v10 = *a3;
  v9 = a3[1];
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a4[1];
  *(a1 + 32) = *a4;
  *(a1 + 40) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  v12 = SALogObjectGeneral;
  v13 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,init}", buf, 0x12u);
  }

  v14 = SASettings::instance(v13);
  v15[0] = off_10013F0F0;
  v15[3] = v15;
  (*(*v14 + 16))(v14, v15);
  sub_10000F274(v15);
  sub_1000A7F84(a1);
}

void sub_1000A7ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10000F274(&a9);
  sub_1000AAACC(v11, 0);
  v14 = *(v9 + 56);
  *(v9 + 56) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *v12;
  *v12 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(v9 + 40);
  if (v16)
  {
    sub_10002A838(v16);
  }

  v17 = *(v9 + 24);
  if (v17)
  {
    sub_10002A838(v17);
  }

  _Unwind_Resume(a1);
}

void sub_1000A7F84(uint64_t a1)
{
  v12 = 0;
  v2 = sub_100042820();
  if ((sub_10004236C(v2, @"advertiseEvaluationIntervalSeconds", &v12) & 1) == 0)
  {
    sub_100017378(buf);
    v3 = sub_10008E020();
    sub_10008FEA0(v3, buf);
    v12 = *v14;
    sub_100017590(v18);
    sub_100017590(v17);
  }

  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    *&buf[4] = 0;
    *v14 = 2082;
    *&v14[2] = "";
    v15 = 1025;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,getAdvertiserEvaluationTimeout, timeoutValue:%{private}d}", buf, 0x18u);
  }

  v12 = 0;
  v5 = sub_100042820();
  if ((sub_10004236C(v5, @"discoveryEvaluationIntervalSeconds", &v12) & 1) == 0)
  {
    sub_100017378(buf);
    v6 = sub_10008E020();
    sub_10008FEA0(v6, buf);
    v12 = *&v14[4];
    sub_100017590(v18);
    sub_100017590(v17);
  }

  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    *&buf[4] = 0;
    *v14 = 2082;
    *&v14[2] = "";
    v15 = 1025;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,getDiscoverableEvaluationTimeout, timeoutValue:%{private}d}", buf, 0x18u);
    v7 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *v14 = 2082;
    *&v14[2] = "";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,initEvaluationTimers}", buf, 0x12u);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(*v8 + 40))(v8);
    v9 = *(a1 + 48);
    *(a1 + 48) = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  v10 = *(a1 + 8);
  sub_1000060C4(&__p, "blecoreAdvertiserTimer");
  SATimer::create(v10);
}

uint64_t sub_1000A861C(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 68289026;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,release}", v8, 0x12u);
  }

  sub_1000AAACC((a1 + 64), 0);
  v3 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    sub_10002A838(v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    sub_10002A838(v6);
  }

  return a1;
}

void sub_1000A8764()
{
  v0 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 68289026;
    v1[1] = 0;
    v2 = 2082;
    v3 = "";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,advertiserTimerExpiredCb}", v1, 0x12u);
  }
}

void sub_1000A8818()
{
  v0 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 68289026;
    v1[1] = 0;
    v2 = 2082;
    v3 = "";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,discoverabilityTimerExpiredCb}", v1, 0x12u);
  }
}

void sub_1000A88CC(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 68289026;
    v3[1] = 0;
    v4 = 2082;
    v5 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,onInitCompleted}", v3, 0x12u);
  }

  *(a1 + 2) = 1;
}

uint64_t sub_1000A898C(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,onLocationChanged}", v4, 0x12u);
  }

  return sub_1000A8A4C(a1);
}

uint64_t sub_1000A8A4C(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  v3 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 68289026;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,getBleEnablementStatus}", buf, 0x12u);
  }

  v4 = SASettings::instance(v3);
  v5 = *(a1 + 8);
  v7[0] = off_10013F200;
  v7[1] = a1;
  v7[3] = v7;
  (*(*v4 + 96))(v4, v5, v7);
  return sub_10001E0C0(v7);
}

uint64_t sub_1000A8B7C(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,onMotionStateChange}", v4, 0x12u);
  }

  return sub_1000A8A4C(a1);
}

void sub_1000A8C3C()
{
  v0 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 68289026;
    v1[1] = 0;
    v2 = 2082;
    v3 = "";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,onCellNetworkConnected}", v1, 0x12u);
  }
}

uint64_t sub_1000A8CF0(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,onBatteryStatusChanged}", v4, 0x12u);
  }

  return sub_1000A8A4C(a1);
}

void sub_1000A8DB0(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 68289026;
    v3[1] = 0;
    v4 = 2082;
    v5 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,onAssetReceived}", v3, 0x12u);
  }

  sub_1000A7F84(a1);
}

uint64_t sub_1000A8E70(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,onIgneousEnablementChanged}", v4, 0x12u);
  }

  return sub_1000A8A4C(a1);
}

uint64_t sub_1000A8F30(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,onIgneousCoverageRegionChanged}", v4, 0x12u);
  }

  return sub_1000A8A4C(a1);
}

__int128 *sub_1000A8FF0(unsigned __int8 *a1)
{
  sub_100017378(buf);
  v2 = sub_10008E020();
  sub_10008FEA0(v2, buf);
  v4 = [*SAPlatformInfo::instance(v3) isEqualToString:@"iPhone"];
  v5 = sub_100002DB0();
  v6 = *(v5 + 109);
  v7 = *(v5 + 108);
  v8 = sub_10008DE00();
  v9 = sub_10008DE80(v8);
  v10 = sub_100002DB0();
  v11 = sub_10007A4E8(v10);
  v12 = v6 & v7;
  v13 = SALogObjectGeneral;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = a1[1];
    v15 = sub_100002DB0();
    if (*(v15 + 133))
    {
      v16 = *(v15 + 132);
    }

    else
    {
      v16 = 0;
    }

    v25[0] = 68290563;
    v25[1] = 0;
    v26 = 2082;
    v27 = "";
    v28 = 1025;
    v29 = v14;
    v30 = 1025;
    v31 = v4;
    v32 = 1025;
    v33 = v12 & 1;
    v34 = 1025;
    v35 = v11;
    v36 = 1025;
    v37 = v9;
    v38 = 1025;
    v39 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,areAllGatesOpenForDiscovery, isBluetoothEnabled:%{private}hhd, isHWAllowed:%{private}hhd, isLocationAuth:%{private}hhd, isSwitchEnabled:%{private}hhd, isBLERelayFeatureEnabled:%{private}hhd, isEnhancedDeliverySwitchEnabled:%{private}hhd}", v25, 0x36u);
  }

  v17 = a1[1] & v12 & v4 & v11 & v9;
  sub_100017590(&v49);
  sub_100017590(&v48);
  v18 = SALogObjectGeneral;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(sub_100002DB0() + 12);
    *buf = 68289539;
    v41 = 0;
    v42 = 2082;
    v43 = "";
    v44 = 1025;
    v45 = v19;
    v46 = 1025;
    v47 = v17 & 1;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,evaluateBLEQDiscoverability, motionState:%{private}d, isSystemReadyForDiscovery:%{private}hhd}", buf, 0x1Eu);
  }

  v20 = SALogObjectGeneral;
  v21 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (!v21)
    {
      goto LABEL_14;
    }

    *buf = 68289026;
    v41 = 0;
    v42 = 2082;
    v43 = "";
    v22 = "{msg%{public}.0s:#blecore,evaluateBLEQDiscoverability,true}";
  }

  else
  {
    if (!v21)
    {
      goto LABEL_14;
    }

    *buf = 68289026;
    v41 = 0;
    v42 = 2082;
    v43 = "";
    v22 = "{msg%{public}.0s:#blecore,evaluateBLEQDiscoverability,BLE relay not possible}";
  }

  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v22, buf, 0x12u);
LABEL_14:
  v23 = *a1;
  *a1 = v17 & 1;
  if (v23 != (v17 & 1))
  {
    sub_10008C550(*(a1 + 4), v17 & 1);
  }

  result = sub_100002DB0();
  *(result + 75) = *a1 | 0x100;
  return result;
}

BOOL sub_1000A9338(uint64_t a1, uint64_t a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *v170 = 2082;
    *&v170[2] = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,process}", buf, 0x12u);
    v4 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 152);
    if (*(a2 + 175) >= 0)
    {
      v5 = a2 + 152;
    }

    v6 = *(a2 + 352);
    v7 = *(a2 + 384);
    v8 = *(a2 + 184);
    v9 = *(a2 + 192);
    v10 = *(a2 + 200);
    v11 = *(a2 + 208);
    v12 = *(a2 + 216);
    v13 = *(a2 + 320);
    *buf = 68292355;
    *&buf[4] = 0;
    *v170 = 2082;
    *&v170[2] = "";
    v171 = 2081;
    *v172 = "info";
    *&v172[8] = 2081;
    *&v172[10] = "igAlertFlow";
    *v173 = 2081;
    *&v173[2] = "bleCore";
    v174 = 2081;
    *v175 = "process";
    *&v175[8] = 2081;
    v176 = v5;
    v177 = 1025;
    v178 = v6;
    v179 = 1025;
    v180 = v7;
    v181 = 2049;
    v182 = v8;
    v183 = 2049;
    v184 = v9;
    v185 = 2049;
    v186 = v10;
    v187 = 2049;
    v188 = v11;
    v189 = 2049;
    v190 = v12;
    v191 = 2049;
    v192 = v13;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:entering bleCore process, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
  }

  v14 = sub_10008DE00();
  if (sub_10008DE80(v14))
  {
    v15 = sub_100002DB0();
    if (*(v15 + 125) == 1 && *(v15 + 124) == 1 && (v15 = sub_100002DB0(), *(v15 + 127) == 1))
    {
      v16 = *(v15 + 126);
    }

    else
    {
      v16 = 0;
    }

    v31 = [*SAPlatformInfo::instance(v15) isEqualToString:@"iPhone"];
    v32 = sub_100002DB0();
    v33 = *(v32 + 109);
    v34 = *(v32 + 108);
    v35 = sub_10008DE00();
    v36 = sub_10008DE80(v35);
    v37 = v33 & v34;
    v38 = SALogObjectGeneral;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = sub_100002DB0();
      if (*(v39 + 125))
      {
        v40 = *(v39 + 124);
      }

      else
      {
        v40 = 0;
      }

      v41 = sub_100002DB0();
      if (v41[127])
      {
        v42 = v41[126];
      }

      else
      {
        v42 = 0;
      }

      v43 = *(a1 + 1);
      v44 = [*SAPlatformInfo::instance(v41) isEqualToString:@"iPhone"];
      *buf = 68291075;
      *&buf[4] = 0;
      *v170 = 2082;
      *&v170[2] = "";
      v171 = 1025;
      *v172 = v40;
      *&v172[4] = 1025;
      *&v172[6] = v42;
      *&v172[10] = 1025;
      *&v172[12] = v16 & 1;
      *&v172[16] = 1025;
      *v173 = v43;
      *&v173[4] = 1025;
      *&v173[6] = v31;
      v174 = 1025;
      *v175 = v37 & 1;
      *&v175[4] = 1025;
      *&v175[6] = v36;
      LOWORD(v176) = 1025;
      *(&v176 + 2) = v44;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,areAllGatesOpenForAdvertiser, isIgneousCapable:%{private}hhd, isIgneousEnabled:%{private}hhd, isIgneousAllowed:%{private}hhd, isBluetoothEnabled:%{private}hhd, isHWAllowed:%{private}hhd, isLocationAuth:%{private}hhd, isBLERelayFeatureEnabled:%{private}hhd, isPhone:%{private}hhd}", buf, 0x42u);
    }

    if ((*(a1 + 1) & v16 & v37) & v31 & v36)
    {
      v45 = *(a2 + 180);
      if (v45 < 3)
      {
        if (*(a2 + 176))
        {
          v46 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289026;
            *&buf[4] = 0;
            *v170 = 2082;
            *&v170[2] = "";
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,handleRelaySM}", buf, 0x12u);
            v46 = SALogObjectGeneral;
          }

          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v63 = *(a2 + 152);
            if (*(a2 + 175) >= 0)
            {
              v63 = a2 + 152;
            }

            v64 = *(a2 + 352);
            v65 = *(a2 + 384);
            v66 = *(a2 + 184);
            v67 = *(a2 + 192);
            v68 = *(a2 + 200);
            v69 = *(a2 + 208);
            v70 = *(a2 + 216);
            v71 = *(a2 + 320);
            *buf = 68292355;
            *&buf[4] = 0;
            *v170 = 2082;
            *&v170[2] = "";
            v171 = 2081;
            *v172 = "info";
            *&v172[8] = 2081;
            *&v172[10] = "igAlertFlow";
            *v173 = 2081;
            *&v173[2] = "bleCore";
            v174 = 2081;
            *v175 = "handleRelaySM";
            *&v175[8] = 2081;
            v176 = v63;
            v177 = 1025;
            v178 = v64;
            v179 = 1025;
            v180 = v65;
            v181 = 2049;
            v182 = v66;
            v183 = 2049;
            v184 = v67;
            v185 = 2049;
            v186 = v68;
            v187 = 2049;
            v188 = v69;
            v189 = 2049;
            v190 = v70;
            v191 = 2049;
            v192 = v71;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:entering bleCore handleRelaySM, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
          }

          if (!*(a1 + 32))
          {
            v90 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289026;
              *&buf[4] = 0;
              *v170 = 2082;
              *&v170[2] = "";
              _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,handleRelaySM,transport error}", buf, 0x12u);
              v90 = SALogObjectGeneral;
            }

            if (!os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
            {
              return 1;
            }

            v93 = *(a2 + 152);
            v92 = a2 + 152;
            v91 = v93;
            if (*(v92 + 23) >= 0)
            {
              v91 = v92;
            }

            v94 = *(v92 + 200);
            v95 = *(v92 + 232);
            v96 = *(v92 + 32);
            v97 = *(v92 + 40);
            v98 = *(v92 + 48);
            v99 = *(v92 + 56);
            v100 = *(v92 + 64);
            v101 = *(v92 + 168);
            *buf = 68292355;
            *&buf[4] = 0;
            *v170 = 2082;
            *&v170[2] = "";
            v171 = 2081;
            *v172 = "warning";
            *&v172[8] = 2081;
            *&v172[10] = "igAlertFlow";
            *v173 = 2081;
            *&v173[2] = "bleCore";
            v174 = 2081;
            *v175 = "handleRelaySM";
            *&v175[8] = 2081;
            v176 = v91;
            v177 = 1025;
            v178 = v94;
            v179 = 1025;
            v180 = v95;
            v181 = 2049;
            v182 = v96;
            v183 = 2049;
            v184 = v97;
            v185 = 2049;
            v186 = v98;
            v187 = 2049;
            v188 = v99;
            v189 = 2049;
            v190 = v100;
            v191 = 2049;
            v192 = v101;
            v102 = "{msg%{public}.0s:transport error, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
            goto LABEL_94;
          }

          v73 = (a1 + 64);
          v72 = *(a1 + 64);
          if (!v72)
          {
            goto LABEL_79;
          }

          if ((*v72 & 1) == 0)
          {
            v74 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289026;
              *&buf[4] = 0;
              *v170 = 2082;
              *&v170[2] = "";
              _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,handleRelaySM,invalid relaySM initialization}", buf, 0x12u);
              v74 = SALogObjectGeneral;
            }

            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              v75 = *(a2 + 152);
              if (*(a2 + 175) >= 0)
              {
                v75 = a2 + 152;
              }

              v76 = *(a2 + 352);
              v77 = *(a2 + 384);
              v78 = *(a2 + 184);
              v79 = *(a2 + 192);
              v80 = *(a2 + 200);
              v81 = *(a2 + 208);
              v82 = *(a2 + 216);
              v83 = *(a2 + 320);
              *buf = 68292355;
              *&buf[4] = 0;
              *v170 = 2082;
              *&v170[2] = "";
              v171 = 2081;
              *v172 = "warning";
              *&v172[8] = 2081;
              *&v172[10] = "igAlertFlow";
              *v173 = 2081;
              *&v173[2] = "bleCore";
              v174 = 2081;
              *v175 = "handleRelaySM";
              *&v175[8] = 2081;
              v176 = v75;
              v177 = 1025;
              v178 = v76;
              v179 = 1025;
              v180 = v77;
              v181 = 2049;
              v182 = v78;
              v183 = 2049;
              v184 = v79;
              v185 = 2049;
              v186 = v80;
              v187 = 2049;
              v188 = v81;
              v189 = 2049;
              v190 = v82;
              v191 = 2049;
              v192 = v83;
              _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:invalid relaySM initialization, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
            }

            sub_1000AAACC((a1 + 64), 0);
            v72 = *v73;
            if (!*v73)
            {
LABEL_79:
              if (*a2 != 1)
              {
                goto LABEL_123;
              }

              v90 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 68289026;
                *&buf[4] = 0;
                *v170 = 2082;
                *&v170[2] = "";
                _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,handleRelaySM,dropping duplicate alert}", buf, 0x12u);
                v90 = SALogObjectGeneral;
              }

              if (!os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
              {
                return 1;
              }

              v105 = *(a2 + 152);
              v104 = a2 + 152;
              v103 = v105;
              if (*(v104 + 23) >= 0)
              {
                v103 = v104;
              }

              goto LABEL_93;
            }
          }

          sub_100038AF0(buf, (v72 + 16));
          if ((v196 & 0x80u) == 0)
          {
            v84 = v196;
          }

          else
          {
            v84 = v195[1];
          }

          v85 = *(a2 + 175);
          v86 = v85;
          if ((v85 & 0x80u) != 0)
          {
            v85 = *(a2 + 160);
          }

          if (v84 == v85)
          {
            if ((v196 & 0x80u) == 0)
            {
              v87 = v195;
            }

            else
            {
              v87 = v195[0];
            }

            if (v86 >= 0)
            {
              v88 = (a2 + 152);
            }

            else
            {
              v88 = *(a2 + 152);
            }

            v89 = memcmp(v87, v88, v84);
            sub_10002D754(buf);
            if (!v89)
            {
LABEL_123:
              v147 = *v73;
              if (!*v73)
              {
                v163[3] = 0;
                v165[1] = 0;
                v167[0] = 0;
                *buf = off_10013F280;
                *v170 = a1;
                *&v172[4] = buf;
                sub_1000AB3E8(buf, v166);
                sub_100038E20(buf);
                *buf = off_10013F310;
                *v170 = a1;
                *&v172[4] = buf;
                sub_1000AB3E8(buf, &v164);
                sub_100038E20(buf);
                *buf = off_10013F390;
                *v170 = a1;
                *&v172[4] = buf;
                sub_1000AB3E8(buf, v163);
                sub_100038E20(buf);
                operator new();
              }

              if (*v147)
              {
                v148 = *(a2 + 384);
                if (v148 == 2)
                {
                  sub_1000370C0(v147, (a2 + 152));
                }

                else if (v148 == 1)
                {
                  sub_100038010(v147, (a2 + 152));
                }

                return 1;
              }

              v149 = SALogObjectGeneral;
              if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                return 1;
              }

              *buf = 68289026;
              *&buf[4] = 0;
              *v170 = 2082;
              *&v170[2] = "";
              v102 = "{msg%{public}.0s:#blecore,handleRelaySM,invalid SM initialization}";
              v115 = v149;
              v116 = 18;
LABEL_132:
              _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, v102, buf, v116);
              return 1;
            }
          }

          else
          {
            sub_10002D754(buf);
          }

          if (*a2 == 1)
          {
            v90 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289026;
              *&buf[4] = 0;
              *v170 = 2082;
              *&v170[2] = "";
              _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,handleRelaySM,dropping duplicate alert}", buf, 0x12u);
              v90 = SALogObjectGeneral;
            }

            if (!os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
            {
              return 1;
            }

            v106 = *(a2 + 152);
            v104 = a2 + 152;
            v103 = v106;
            if (*(v104 + 23) >= 0)
            {
              v103 = v104;
            }

LABEL_93:
            v107 = *(v104 + 200);
            v108 = *(v104 + 232);
            v109 = *(v104 + 32);
            v110 = *(v104 + 40);
            v111 = *(v104 + 48);
            v112 = *(v104 + 56);
            v113 = *(v104 + 64);
            v114 = *(v104 + 168);
            *buf = 68292355;
            *&buf[4] = 0;
            *v170 = 2082;
            *&v170[2] = "";
            v171 = 2081;
            *v172 = "warning";
            *&v172[8] = 2081;
            *&v172[10] = "igAlertFlow";
            *v173 = 2081;
            *&v173[2] = "bleCore";
            v174 = 2081;
            *v175 = "handleRelaySM";
            *&v175[8] = 2081;
            v176 = v103;
            v177 = 1025;
            v178 = v107;
            v179 = 1025;
            v180 = v108;
            v181 = 2049;
            v182 = v109;
            v183 = 2049;
            v184 = v110;
            v185 = 2049;
            v186 = v111;
            v187 = 2049;
            v188 = v112;
            v189 = 2049;
            v190 = v113;
            v191 = 2049;
            v192 = v114;
            v102 = "{msg%{public}.0s:dropping duplicate alert, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
LABEL_94:
            v115 = v90;
            v116 = 140;
            goto LABEL_132;
          }

          sub_100017378(v163);
          v117 = sub_10008E020();
          sub_10008FEA0(v117, v163);
          switch(v168)
          {
            case 0:
              v150 = SALogObjectGeneral;
              if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
              {
                v153 = *(a2 + 152);
                v151 = a2 + 152;
                v152 = v153;
                v154 = *(v151 + 23);
                sub_100038AF0(buf, (*v73 + 16));
                if (v154 >= 0)
                {
                  v155 = v151;
                }

                else
                {
                  v155 = v152;
                }

                v156 = v195;
                if ((v196 & 0x80u) != 0)
                {
                  v156 = v195[0];
                }

                v157 = 68289539;
                v158[0] = 2082;
                *&v158[1] = "";
                v159 = 2081;
                v160 = v155;
                v161 = 2081;
                v162 = v156;
                _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,handleRelaySM,another sm in progress,dropping new alert, newUid:%{private, location:escape_only}s, inProgressUid:%{private, location:escape_only}s}", &v157, 0x26u);
                sub_10002D754(buf);
              }

              sub_100017590(v167);
              sub_100017590(v165);
              return 1;
            case 1:
              v133 = SALogObjectGeneral;
              if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
              {
                v134 = *(a2 + 152);
                v135 = *(a2 + 175);
                sub_100038AF0(buf, (*v73 + 16));
                if (v135 >= 0)
                {
                  v136 = a2 + 152;
                }

                else
                {
                  v136 = v134;
                }

                v137 = v195;
                if ((v196 & 0x80u) != 0)
                {
                  v137 = v195[0];
                }

                v157 = 68289539;
                v158[0] = 2082;
                *&v158[1] = "";
                v159 = 2081;
                v160 = v136;
                v161 = 2081;
                v162 = v137;
                _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#blecore,handleRelaySM,another sm in progress,not supporting Queue,sending new alert, newUid:%{private, location:escape_only}s, inProgressUid:%{private, location:escape_only}s}", &v157, 0x26u);
                sub_10002D754(buf);
              }

              sub_10008DAEC(*(a1 + 32));
              v123 = SALogObjectGeneral;
              if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_121;
              }

              v138 = *(a2 + 152);
              if (*(a2 + 175) >= 0)
              {
                v138 = a2 + 152;
              }

              v139 = *(a2 + 352);
              v140 = *(a2 + 384);
              v141 = *(a2 + 184);
              v142 = *(a2 + 192);
              v143 = *(a2 + 200);
              v144 = *(a2 + 208);
              v145 = *(a2 + 216);
              v146 = *(a2 + 320);
              *buf = 68292611;
              *&buf[4] = 0;
              *v170 = 2082;
              *&v170[2] = "";
              v171 = 2081;
              *v172 = "info";
              *&v172[8] = 2081;
              *&v172[10] = "igAlertFlow";
              *v173 = 2081;
              *&v173[2] = "bleCore";
              v174 = 2081;
              *v175 = "handleRelaySM";
              *&v175[8] = 2081;
              v176 = v138;
              v177 = 1025;
              v178 = v139;
              v179 = 1025;
              v180 = v140;
              v181 = 2049;
              v182 = v141;
              v183 = 2049;
              v184 = v142;
              v185 = 2049;
              v186 = v143;
              v187 = 2049;
              v188 = v144;
              v189 = 2049;
              v190 = v145;
              v191 = 2049;
              v192 = v146;
              v193 = 1025;
              v194 = 1;
              break;
            case 2:
              v118 = SALogObjectGeneral;
              if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                v119 = *(a2 + 152);
                v120 = *(a2 + 175);
                sub_100038AF0(buf, (*v73 + 16));
                if (v120 >= 0)
                {
                  v121 = a2 + 152;
                }

                else
                {
                  v121 = v119;
                }

                v122 = v195;
                if ((v196 & 0x80u) != 0)
                {
                  v122 = v195[0];
                }

                v157 = 68289539;
                v158[0] = 2082;
                *&v158[1] = "";
                v159 = 2081;
                v160 = v121;
                v161 = 2081;
                v162 = v122;
                _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,handleRelaySM,another sm in progress,sending new alert, newUid:%{private, location:escape_only}s, inProgressUid:%{private, location:escape_only}s}", &v157, 0x26u);
                sub_10002D754(buf);
              }

              sub_10008DAEC(*(a1 + 32));
              v123 = SALogObjectGeneral;
              if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
LABEL_121:
                sub_1000AAACC((a1 + 64), 0);
                goto LABEL_122;
              }

              v124 = *(a2 + 152);
              if (*(a2 + 175) >= 0)
              {
                v124 = a2 + 152;
              }

              v125 = *(a2 + 352);
              v126 = *(a2 + 384);
              v127 = *(a2 + 184);
              v128 = *(a2 + 192);
              v129 = *(a2 + 200);
              v130 = *(a2 + 208);
              v131 = *(a2 + 216);
              v132 = *(a2 + 320);
              *buf = 68292611;
              *&buf[4] = 0;
              *v170 = 2082;
              *&v170[2] = "";
              v171 = 2081;
              *v172 = "info";
              *&v172[8] = 2081;
              *&v172[10] = "igAlertFlow";
              *v173 = 2081;
              *&v173[2] = "bleCore";
              v174 = 2081;
              *v175 = "handleRelaySM";
              *&v175[8] = 2081;
              v176 = v124;
              v177 = 1025;
              v178 = v125;
              v179 = 1025;
              v180 = v126;
              v181 = 2049;
              v182 = v127;
              v183 = 2049;
              v184 = v128;
              v185 = 2049;
              v186 = v129;
              v187 = 2049;
              v188 = v130;
              v189 = 2049;
              v190 = v131;
              v191 = 2049;
              v192 = v132;
              v193 = 1025;
              v194 = 2;
              break;
            default:
LABEL_122:
              sub_100017590(v167);
              sub_100017590(v165);
              goto LABEL_123;
          }

          _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:stop advertising previous alert, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f, overridePolicy:%{private}d}", buf, 0x92u);
          goto LABEL_121;
        }

LABEL_37:
        v17 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          *v170 = 2082;
          *&v170[2] = "";
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,process,forward blocked}", buf, 0x12u);
          v17 = SALogObjectGeneral;
        }

        result = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (result)
        {
          v54 = *(a2 + 152);
          v53 = a2 + 152;
          v52 = v54;
          if (*(v53 + 23) >= 0)
          {
            v52 = v53;
          }

          v55 = *(v53 + 200);
          v56 = *(v53 + 232);
          v57 = *(v53 + 32);
          v58 = *(v53 + 40);
          v59 = *(v53 + 48);
          v60 = *(v53 + 56);
          v61 = *(v53 + 64);
          v62 = *(v53 + 168);
          *buf = 68292355;
          *&buf[4] = 0;
          *v170 = 2082;
          *&v170[2] = "";
          v171 = 2081;
          *v172 = "warning";
          *&v172[8] = 2081;
          *&v172[10] = "igAlertFlow";
          *v173 = 2081;
          *&v173[2] = "bleCore";
          v174 = 2081;
          *v175 = "process";
          *&v175[8] = 2081;
          v176 = v52;
          v177 = 1025;
          v178 = v55;
          v179 = 1025;
          v180 = v56;
          v181 = 2049;
          v182 = v57;
          v183 = 2049;
          v184 = v58;
          v185 = 2049;
          v186 = v59;
          v187 = 2049;
          v188 = v60;
          v189 = 2049;
          v190 = v61;
          v191 = 2049;
          v192 = v62;
          v30 = "{msg%{public}.0s:forward blocked, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
LABEL_43:
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v30, buf, 0x8Cu);
          return 0;
        }

        return result;
      }

      v51 = SALogObjectGeneral;
      if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      *buf = 68289283;
      *&buf[4] = 0;
      *v170 = 2082;
      *&v170[2] = "";
      v171 = 1025;
      *v172 = v45;
      v48 = "{msg%{public}.0s:#blecore,canForwardOverBLE,invalid type, alertType:%{private}d}";
      v49 = v51;
      v50 = 24;
    }

    else
    {
      v47 = SALogObjectGeneral;
      if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      *buf = 68289026;
      *&buf[4] = 0;
      *v170 = 2082;
      *&v170[2] = "";
      v48 = "{msg%{public}.0s:#blecore,canForwardOverBLE,system is not ready for advertisement}";
      v49 = v47;
      v50 = 18;
    }

    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, v48, buf, v50);
    goto LABEL_37;
  }

  v17 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *v170 = 2082;
    *&v170[2] = "";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,process,BLEAlertRelay not supported}", buf, 0x12u);
    v17 = SALogObjectGeneral;
  }

  result = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v21 = *(a2 + 152);
    v20 = a2 + 152;
    v19 = v21;
    if (*(v20 + 23) >= 0)
    {
      v19 = v20;
    }

    v22 = *(v20 + 200);
    v23 = *(v20 + 232);
    v24 = *(v20 + 32);
    v25 = *(v20 + 40);
    v26 = *(v20 + 48);
    v27 = *(v20 + 56);
    v28 = *(v20 + 64);
    v29 = *(v20 + 168);
    *buf = 68292355;
    *&buf[4] = 0;
    *v170 = 2082;
    *&v170[2] = "";
    v171 = 2081;
    *v172 = "warning";
    *&v172[8] = 2081;
    *&v172[10] = "igAlertFlow";
    *v173 = 2081;
    *&v173[2] = "bleCore";
    v174 = 2081;
    *v175 = "process";
    *&v175[8] = 2081;
    v176 = v19;
    v177 = 1025;
    v178 = v22;
    v179 = 1025;
    v180 = v23;
    v181 = 2049;
    v182 = v24;
    v183 = 2049;
    v184 = v25;
    v185 = 2049;
    v186 = v26;
    v187 = 2049;
    v188 = v27;
    v189 = 2049;
    v190 = v28;
    v191 = 2049;
    v192 = v29;
    v30 = "{msg%{public}.0s:BLEAlertRelay not supported, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
    goto LABEL_43;
  }

  return result;
}

void sub_1000AAA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);

  sub_100017590(va1);
  sub_100017590(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AAACC(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100036D0C(result);

    operator delete();
  }

  return result;
}

void sub_1000AAB18(unsigned __int8 *a1)
{
  v2 = sub_100002DB0();
  v3 = sub_10007A4E8(v2);
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[3];
    v6[0] = 68289539;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1025;
    v10 = v3;
    v11 = 1025;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,onUserSettingsChanged, discoveryAllowed:%{private}d, fIsBleDiscoveryEnabled:%{private}d}", v6, 0x1Eu);
  }

  if (a1[3] != v3)
  {
    a1[3] = v3;
    sub_1000A8FF0(a1);
  }
}

void sub_1000AACA0()
{
  v0 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 68289026;
    v1[1] = 0;
    v2 = 2082;
    v3 = "";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,onSettingsChanged}", v1, 0x12u);
  }
}

uint64_t sub_1000AAD54(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000AADCC(uint64_t a1)
{

  operator delete();
}

id sub_1000AAE20(uint64_t a1, void *a2)
{
  *a2 = off_10013F170;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t sub_1000AAE8C(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013F1E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000AAED8(uint64_t a1)
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

uint64_t sub_1000AAFC8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013F200;
  a2[1] = v2;
  return result;
}

__int128 *sub_1000AAFF4(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289283;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1025;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,getBleEnablementStatus,cb, isBleEnabled:%{private}hhd}", v6, 0x18u);
  }

  v3[1] = v2;
  return sub_1000A8FF0(v3);
}

uint64_t sub_1000AB0D0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000AB18C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013F280;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000AB1B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 68289026;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,handleRelaySM,stop adv cb}", &v17, 0x12u);
    v4 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 152);
    v6 = a2 + 152;
    v5 = v7;
    if (*(v6 + 23) >= 0)
    {
      v5 = v6;
    }

    v8 = *(v6 + 200);
    v9 = *(v6 + 232);
    v10 = *(v6 + 32);
    v11 = *(v6 + 40);
    v12 = *(v6 + 48);
    v13 = *(v6 + 56);
    v14 = *(v6 + 64);
    v15 = *(v6 + 168);
    v17 = 68292355;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2081;
    v22 = "info";
    v23 = 2081;
    v24 = "igAlertFlow";
    v25 = 2081;
    v26 = "bleCore";
    v27 = 2081;
    v28 = "stopAdvertisingCb";
    v29 = 2081;
    v30 = v5;
    v31 = 1025;
    v32 = v8;
    v33 = 1025;
    v34 = v9;
    v35 = 2049;
    v36 = v10;
    v37 = 2049;
    v38 = v11;
    v39 = 2049;
    v40 = v12;
    v41 = 2049;
    v42 = v13;
    v43 = 2049;
    v44 = v14;
    v45 = 2049;
    v46 = v15;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:stop advertising, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", &v17, 0x8Cu);
  }

  return sub_10008DAEC(*(v3 + 32));
}

uint64_t sub_1000AB39C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1000AB3E8(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1000AB640(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10000DB70(a1);
}

uint64_t sub_1000AB6BC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013F310;
  a2[1] = v2;
  return result;
}

void sub_1000AB6E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 68289026;
    *v15 = 0;
    *&v15[4] = 2082;
    *&v15[6] = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,handleRelaySM,start adv cb}", &v14, 0x12u);
    v4 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 152);
    if (*(a2 + 175) >= 0)
    {
      v5 = a2 + 152;
    }

    v6 = *(a2 + 352);
    v7 = *(a2 + 384);
    v8 = *(a2 + 184);
    v9 = *(a2 + 192);
    v10 = *(a2 + 200);
    v11 = *(a2 + 208);
    v12 = *(a2 + 216);
    v13 = *(a2 + 320);
    v14 = 68292355;
    *v15 = 0;
    *&v15[4] = 2082;
    *&v15[6] = "";
    v16 = 2081;
    v17 = "info";
    v18 = 2081;
    v19 = "igAlertFlow";
    v20 = 2081;
    v21 = "bleCore";
    v22 = 2081;
    v23 = "startAdvertisingCb";
    v24 = 2081;
    v25 = v5;
    v26 = 1025;
    v27 = v6;
    v28 = 1025;
    v29 = v7;
    v30 = 2049;
    v31 = v8;
    v32 = 2049;
    v33 = v9;
    v34 = 2049;
    v35 = v10;
    v36 = 2049;
    v37 = v11;
    v38 = 2049;
    v39 = v12;
    v40 = 2049;
    v41 = v13;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:start advertising, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", &v14, 0x8Cu);
  }

  sub_10008D160(*(v3 + 32), a2);
  BYTE1(v14) = 0;
  *v15 = 0;
  LOBYTE(v14) = *v3;
  sub_10003DDD4(*(v3 + 16), a2, &v14);
}

uint64_t sub_1000AB8F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000AB9B0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013F390;
  a2[1] = v2;
  return result;
}

void sub_1000AB9DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 68289026;
    *v18 = 2082;
    *&v18[2] = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#blecore,handleRelaySM,state machine exit cb}", &v17, 0x12u);
    v4 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 152);
    v6 = a2 + 152;
    v5 = v7;
    if (*(v6 + 23) >= 0)
    {
      v5 = v6;
    }

    v8 = *(v6 + 200);
    v9 = *(v6 + 232);
    v10 = *(v6 + 32);
    v11 = *(v6 + 40);
    v12 = *(v6 + 48);
    v13 = *(v6 + 56);
    v14 = *(v6 + 64);
    v15 = *(v6 + 168);
    v17 = 68292355;
    *v18 = 2082;
    *&v18[2] = "";
    *&v18[10] = 2081;
    *&v18[12] = "info";
    *&v18[20] = 2081;
    *&v18[22] = "igAlertFlow";
    *&v18[30] = 2081;
    v19 = "bleCore";
    v20 = 2081;
    v21 = "stateMachineExitCb";
    v22 = 2081;
    v23 = v5;
    v24 = 1025;
    v25 = v8;
    v26 = 1025;
    v27 = v9;
    v28 = 2049;
    v29 = v10;
    v30 = 2049;
    v31 = v11;
    v32 = 2049;
    v33 = v12;
    v34 = 2049;
    v35 = v13;
    v36 = 2049;
    v37 = v14;
    v38 = 2049;
    v39 = v15;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:state machine exit cb, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", &v17, 0x8Cu);
  }

  sub_10008DAEC(*(v3 + 32));
  v16 = *(v3 + 8);
  v17 = _NSConcreteStackBlock;
  *v18 = 3221225472;
  *&v18[8] = sub_1000ABC60;
  *&v18[16] = &unk_1001390D0;
  *&v18[24] = v3;
  dispatch_async(v16, &v17);
}

uint64_t sub_1000ABC14(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000ABC70(void *a1)
{
  v3 = a1;
  if (*(sub_100042820() + 240) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_1000ABD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100035480(va);
  operator delete();
}

uint64_t sub_1000ABDE4(uint64_t a1, char *a2, const std::string *a3)
{
  *a1 = &off_10013F410;
  *(a1 + 40) = 0u;
  v4 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  if (a2)
  {
    sub_10001D128((a1 + 16), a2);
    std::string::operator=(v4, a3);
  }

  return a1;
}

void sub_1000ABE60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1000ABE8C(const std::__fs::filesystem::path *a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289283;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2081;
    v9 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#fi,removing, filePath:%{private, location:escape_only}s}", v5, 0x1Cu);
  }

  return remove(a1, v3);
}

uint64_t sub_1000ABF60(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000ABDE4(a1, a2, a4);
  *v8 = &off_10013F428;
  *(v8 + 64) = 0u;
  v9 = (v8 + 64);
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  if (!a2)
  {
    v12 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return a1;
    }

    __ptr = 68289026;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v13 = "{msg%{public}.0s:#fi,#warning,read,invalidFileArgs}";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, &__ptr, 0x12u);
    return a1;
  }

  v10 = *(a4 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (!v10)
  {
    v12 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return a1;
    }

    __ptr = 68289026;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v13 = "{msg%{public}.0s:#fi,#warning,read,invalidFileFormatVersion}";
    goto LABEL_13;
  }

  *(a1 + 104) = a3;
  v11 = fopen(a2, "r");
  *v9 = v11;
  if (v11)
  {
    operator new[]();
  }

  v12 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    __ptr = 68289026;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v13 = "{msg%{public}.0s:#fi,#warning,read,cannotOpenFile}";
    goto LABEL_13;
  }

  return a1;
}

void sub_1000AC370(_Unwind_Exception *a1)
{
  v3 = *(v1 + 96);
  *(v1 + 96) = 0;
  if (v3)
  {
    operator delete[]();
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  sub_1000AC3D4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AC3D4(uint64_t a1)
{
  *a1 = &off_10013F410;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

FILE *sub_1000AC434(uint64_t a1)
{
  result = *(a1 + 64);
  if (result)
  {
    fclose(result);
    result = *(a1 + 96);
    *(a1 + 96) = 0;
    if (result)
    {
      operator delete[]();
    }

    *(a1 + 64) = 0;
  }

  return result;
}

uint64_t sub_1000AC484(uint64_t a1)
{
  *a1 = &off_10013F428;
  sub_1000AC434(a1);
  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v2)
  {
    operator delete[]();
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  return sub_1000AC3D4(a1);
}

uint64_t sub_1000AC508()
{
  v0 = __chkstk_darwin();
  if (!v0)
  {
    v11 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 68289026;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v12 = "{msg%{public}.0s:#fi,#warning,isValid,invalidArgs}";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0x12u);
    return 0;
  }

  v2 = v1;
  v3 = v0;
  v4 = fopen(v0, "r");
  if (!v4)
  {
    v11 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 68289026;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v12 = "{msg%{public}.0s:#fi,#warning,isValid,cannotOpenFile}";
    goto LABEL_10;
  }

  v5 = v4;
  v6 = fread(__ptr, 1uLL, 0x41uLL, v4);
  if (!ferror(v5))
  {
    if (v6 == 65)
    {
      __ptr[64] = 0;
      if (*(v2 + 23) >= 0)
      {
        v13 = v2;
      }

      else
      {
        v13 = *v2;
      }

      strlen(v13);
      operator new[]();
    }

    v14 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 68289026;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v8 = "{msg%{public}.0s:#fi,#warning,isValid,cannotReadHash}";
    v9 = v14;
    v10 = 18;
    goto LABEL_19;
  }

  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2081;
    v22 = v3;
    v8 = "{msg%{public}.0s:#fi,isContentValid,read hash error, filename:%{private, location:escape_only}s}";
    v9 = v7;
    v10 = 28;
LABEL_19:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
  }

LABEL_20:
  v15 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cu,Closing fp}", buf, 0x12u);
  }

  fclose(v5);
  return 0;
}

char *sub_1000ACB1C(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2 || feof(v2))
  {
    return 0;
  }

  v3 = fgets(*(a1 + 96), *(a1 + 104), *(a1 + 64));
  if (!v3)
  {
    return v3;
  }

  if (feof(*(a1 + 64)))
  {
    return 0;
  }

  v5 = strlen(v3);
  if (v5 == *(a1 + 104) - 1)
  {
    for (__ptr = 0; __ptr != 10; fread(&__ptr, 1uLL, 1uLL, *(a1 + 64)))
    {
      if (feof(*(a1 + 64)))
      {
        break;
      }
    }

    return 0;
  }

  v6 = v5;
  if (feof(*(a1 + 64)))
  {
    return 0;
  }

  if (v3[v6 - 1] == 10)
  {
    v3[v6 - 1] = 0;
  }

  return v3;
}

uint64_t sub_1000ACC04(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = sub_1000ABDE4(a1, a2, a3);
  *v6 = &off_10013F440;
  *(v6 + 64) = 0u;
  v7 = (v6 + 64);
  *(v6 + 80) = 0u;
  if (!a2)
  {
    v16 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return a1;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v17 = "{msg%{public}.0s:#fi,#warning,write,invalidFileArgs}";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 0x12u);
    return a1;
  }

  v8 = fopen(a2, "w");
  *v7 = v8;
  if (!v8)
  {
    v16 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return a1;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v17 = "{msg%{public}.0s:#fi,#warning,write,cannotOpenFile}";
    goto LABEL_20;
  }

  *&v9 = 0x6161616161616161;
  *(&v9 + 1) = 0x6161616161616161;
  v23 = v9;
  v24 = v9;
  *buf = v9;
  *&buf[16] = v9;
  v25 = 10;
  fputs(buf, v8);
  *(&v19.__r_.__value_.__s + 23) = 1;
  LOWORD(v19.__r_.__value_.__l.__data_) = 10;
  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v10 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 8);
  }

  v13 = std::string::insert(&v19, 0, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v21 = v13->__r_.__value_.__r.__words[2];
  *__p = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (v21 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  fputs(v15, *v7);
  CC_SHA256_Init((a1 + 96));
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1000ACE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 + 95) < 0)
  {
    operator delete(*(v21 + 72));
  }

  sub_1000AC3D4(v21);
  _Unwind_Resume(a1);
}

uint64_t sub_1000ACE70(uint64_t result)
{
  if (*(result + 64))
  {
    v1 = result;
    CC_SHA256_Final(md, (result + 96));
    v2 = 0;
    v7 = 0u;
    v8 = 0u;
    *__str = 0u;
    v6 = 0u;
    v3 = __str;
    do
    {
      v3 += snprintf(v3, 3uLL, "%02x", md[v2++]);
    }

    while (v2 != 32);
    v9 = 10;
    v4 = fseek(*(v1 + 64), 0, 2);
    fseek(*(v1 + 64), 0, 0);
    fputs(__str, *(v1 + 64));
    fseek(*(v1 + 64), v4, 0);
    result = *(v1 + 64);
    if (result)
    {
      result = fclose(result);
    }

    *(v1 + 64) = 0;
  }

  return result;
}

uint64_t sub_1000ACF88(uint64_t a1)
{
  *a1 = &off_10013F440;
  if (*(a1 + 64))
  {
    sub_1000ACE70(a1);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  return sub_1000AC3D4(a1);
}

const char *sub_1000ACFFC(const char *result, const char *a2)
{
  v2 = a2;
  v3 = result;
  if (a2[23] < 0)
  {
    if (!*(a2 + 1))
    {
      return result;
    }

    result = *a2;
  }

  else
  {
    result = a2;
    if (!a2[23])
    {
      return result;
    }
  }

  fputs(result, *(v3 + 8));
  if (v2[23] < 0)
  {
    v2 = *v2;
  }

  v4 = strlen(v2);
  CC_SHA256_Update((v3 + 96), v2, v4);
  data = 10;
  fputc(10, *(v3 + 8));
  return CC_SHA256_Update((v3 + 96), &data, 1u);
}

void sub_1000AD09C(void *a1)
{
  a1;
  if (*(sub_100042820() + 412) == 1)
  {
    operator new();
  }

  sub_1000AD21C();
}

void sub_1000AD1A0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10013F4B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1000AD288(void *a1, void **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10013F508;
  sub_100044574((a1 + 3), *a2);
  return a1;
}

void sub_1000AD308(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10013F508;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000AD384(uint64_t a1, uint64_t a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *v284 = 2082;
    *&v284[2] = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igdisp,display}", buf, 0x12u);
    v4 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 152);
    if (*(a2 + 175) >= 0)
    {
      v5 = a2 + 152;
    }

    v6 = *(a2 + 352);
    v7 = *(a2 + 384);
    v8 = *(a2 + 184);
    v9 = *(a2 + 192);
    v10 = *(a2 + 200);
    v11 = *(a2 + 208);
    v12 = *(a2 + 216);
    v13 = *(a2 + 320);
    *buf = 68292355;
    *&buf[4] = 0;
    *v284 = 2082;
    *&v284[2] = "";
    *&v284[10] = 2081;
    *&v284[12] = "info";
    *&v284[20] = 2081;
    *&v284[22] = "igAlertFlow";
    *&v284[30] = 2081;
    v285 = "igdisp";
    *v286 = 2081;
    *&v286[2] = "display";
    *&v286[10] = 2081;
    *&v286[12] = v5;
    *&v286[20] = 1025;
    *&v286[22] = v6;
    *&v286[26] = 1025;
    *&v286[28] = v7;
    *v287 = 2049;
    *&v287[2] = v8;
    *&v287[10] = 2049;
    *&v287[12] = v9;
    *&v287[20] = 2049;
    *&v287[22] = v10;
    v288 = 2049;
    v289 = v11;
    v290 = 2049;
    v291 = v12;
    v292 = 2049;
    v293 = v13;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:entering display alert, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
  }

  if (*a2 == 1)
  {
    v14 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *v284 = 2082;
      *&v284[2] = "";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igdisp,display,duplicate alert}", buf, 0x12u);
      v14 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a2 + 152);
      v16 = a2 + 152;
      v15 = v17;
      if (*(v16 + 23) >= 0)
      {
        v15 = v16;
      }

      v18 = *(v16 + 200);
      v19 = *(v16 + 232);
      v20 = *(v16 + 32);
      v21 = *(v16 + 40);
      v22 = *(v16 + 48);
      v23 = *(v16 + 56);
      v24 = *(v16 + 64);
      v25 = *(v16 + 168);
      *buf = 68292355;
      *&buf[4] = 0;
      *v284 = 2082;
      *&v284[2] = "";
      *&v284[10] = 2081;
      *&v284[12] = "warning";
      *&v284[20] = 2081;
      *&v284[22] = "igAlertFlow";
      *&v284[30] = 2081;
      v285 = "igdisp";
      *v286 = 2081;
      *&v286[2] = "display";
      *&v286[10] = 2081;
      *&v286[12] = v15;
      *&v286[20] = 1025;
      *&v286[22] = v18;
      *&v286[26] = 1025;
      *&v286[28] = v19;
      *v287 = 2049;
      *&v287[2] = v20;
      *&v287[10] = 2049;
      *&v287[12] = v21;
      *&v287[20] = 2049;
      *&v287[22] = v22;
      v288 = 2049;
      v289 = v23;
      v290 = 2049;
      v291 = v24;
      v292 = 2049;
      v293 = v25;
      v26 = "{msg%{public}.0s:duplicate alert, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
LABEL_177:
      v72 = v14;
      v73 = 140;
LABEL_178:
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, v26, buf, v73);
      return;
    }

    return;
  }

  v27 = sub_10008BCD8(*(a2 + 180));
  v28 = v27;
  if (v27 != 1)
  {
    v60 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      *v284 = 2082;
      *&v284[2] = "";
      *&v284[10] = 1025;
      *&v284[12] = v28;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igdisp,display,invalid purpose, purpose:%{private}d}", buf, 0x18u);
      v60 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      v63 = *(a2 + 152);
      v62 = a2 + 152;
      v61 = v63;
      if (*(v62 + 23) >= 0)
      {
        v61 = v62;
      }

      v64 = *(v62 + 200);
      v65 = *(v62 + 232);
      v66 = *(v62 + 32);
      v67 = *(v62 + 40);
      v68 = *(v62 + 48);
      v69 = *(v62 + 56);
      v70 = *(v62 + 64);
      v71 = *(v62 + 168);
      *buf = 68292611;
      *&buf[4] = 0;
      *v284 = 2082;
      *&v284[2] = "";
      *&v284[10] = 2081;
      *&v284[12] = "warning";
      *&v284[20] = 2081;
      *&v284[22] = "igAlertFlow";
      *&v284[30] = 2081;
      v285 = "igdisp";
      *v286 = 2081;
      *&v286[2] = "display";
      *&v286[10] = 2081;
      *&v286[12] = v61;
      *&v286[20] = 1025;
      *&v286[22] = v64;
      *&v286[26] = 1025;
      *&v286[28] = v65;
      *v287 = 2049;
      *&v287[2] = v66;
      *&v287[10] = 2049;
      *&v287[12] = v67;
      *&v287[20] = 2049;
      *&v287[22] = v68;
      v288 = 2049;
      v289 = v69;
      v290 = 2049;
      v291 = v70;
      v292 = 2049;
      v293 = v71;
      v294 = 1025;
      LODWORD(v295) = v28;
      v26 = "{msg%{public}.0s:invalid purpose, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f, purpose:%{private}d}";
      v72 = v60;
      v73 = 146;
      goto LABEL_178;
    }

    return;
  }

  if (*(a2 + 312) == -1024 && (SACommonUtils::isLivabiltyEnabled(v27) & 1) == 0)
  {
    v14 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v92 = *(a2 + 152);
    v91 = a2 + 152;
    v90 = v92;
    if (*(v91 + 23) >= 0)
    {
      v90 = v91;
    }

    v93 = *(v91 + 200);
    v94 = *(v91 + 232);
    v95 = *(v91 + 32);
    v96 = *(v91 + 40);
    v97 = *(v91 + 48);
    v98 = *(v91 + 56);
    v99 = *(v91 + 64);
    v100 = *(v91 + 168);
    *buf = 68292355;
    *&buf[4] = 0;
    *v284 = 2082;
    *&v284[2] = "";
    *&v284[10] = 2081;
    *&v284[12] = "warning";
    *&v284[20] = 2081;
    *&v284[22] = "igAlertFlow";
    *&v284[30] = 2081;
    v285 = "igdisp";
    *v286 = 2081;
    *&v286[2] = "display";
    *&v286[10] = 2081;
    *&v286[12] = v90;
    *&v286[20] = 1025;
    *&v286[22] = v93;
    *&v286[26] = 1025;
    *&v286[28] = v94;
    *v287 = 2049;
    *&v287[2] = v95;
    *&v287[10] = 2049;
    *&v287[12] = v96;
    *&v287[20] = 2049;
    *&v287[22] = v97;
    v288 = 2049;
    v289 = v98;
    v290 = 2049;
    v291 = v99;
    v292 = 2049;
    v293 = v100;
    v26 = "{msg%{public}.0s:livability not enabled, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
    goto LABEL_177;
  }

  *v252 = 0u;
  v253 = 0u;
  v250 = 0u;
  *v251 = 0u;
  *v248 = 0u;
  *v249 = 0u;
  sub_100077350(a2, v248);
  v29 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v30 = &v249[1];
    if (v250 < 0)
    {
      v30 = v249[1];
    }

    *buf = 68289283;
    *&buf[4] = 0;
    *v284 = 2082;
    *&v284[2] = "";
    *&v284[10] = 2081;
    *&v284[12] = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igdisp,post, text:%{private, location:escape_only}s}", buf, 0x1Cu);
    v29 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *(a2 + 152);
    if (*(a2 + 175) >= 0)
    {
      v31 = a2 + 152;
    }

    v32 = *(a2 + 352);
    v33 = *(a2 + 384);
    v34 = *(a2 + 184);
    v35 = *(a2 + 192);
    v36 = *(a2 + 200);
    v37 = *(a2 + 208);
    v38 = *(a2 + 216);
    v39 = *(a2 + 320);
    *buf = 68292355;
    *&buf[4] = 0;
    *v284 = 2082;
    *&v284[2] = "";
    *&v284[10] = 2081;
    *&v284[12] = "info";
    *&v284[20] = 2081;
    *&v284[22] = "igAlertFlow";
    *&v284[30] = 2081;
    v285 = "igdisp";
    *v286 = 2081;
    *&v286[2] = "post";
    *&v286[10] = 2081;
    *&v286[12] = v31;
    *&v286[20] = 1025;
    *&v286[22] = v32;
    *&v286[26] = 1025;
    *&v286[28] = v33;
    *v287 = 2049;
    *&v287[2] = v34;
    *&v287[10] = 2049;
    *&v287[12] = v35;
    *&v287[20] = 2049;
    *&v287[22] = v36;
    v288 = 2049;
    v289 = v37;
    v290 = 2049;
    v291 = v38;
    v292 = 2049;
    v293 = v39;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:posting alert, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
  }

  v40 = HIBYTE(v250);
  v41 = SHIBYTE(v250);
  if (v250 < 0)
  {
    v40 = v250;
  }

  if (v40)
  {
    v42 = HIBYTE(v252[0]);
    if (SHIBYTE(v252[0]) < 0)
    {
      v42 = v251[1];
    }

    v43 = SALogObjectGeneral;
    if (v42)
    {
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *v284 = 2082;
        *&v284[2] = "";
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igdisp,post,userNotification}", buf, 0x12u);
        v43 = SALogObjectGeneral;
      }

      v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
      if (v44)
      {
        v45 = *(a2 + 152);
        if (*(a2 + 175) >= 0)
        {
          v45 = a2 + 152;
        }

        v46 = *(a2 + 352);
        v47 = *(a2 + 384);
        v48 = *(a2 + 184);
        v49 = *(a2 + 192);
        v50 = *(a2 + 200);
        v51 = *(a2 + 208);
        v52 = *(a2 + 216);
        v53 = *(a2 + 320);
        *buf = 68292355;
        *&buf[4] = 0;
        *v284 = 2082;
        *&v284[2] = "";
        *&v284[10] = 2081;
        *&v284[12] = "info";
        *&v284[20] = 2081;
        *&v284[22] = "igAlertFlow";
        *&v284[30] = 2081;
        v285 = "igdisp";
        *v286 = 2081;
        *&v286[2] = "post";
        *&v286[10] = 2081;
        *&v286[12] = v45;
        *&v286[20] = 1025;
        *&v286[22] = v46;
        *&v286[26] = 1025;
        *&v286[28] = v47;
        *v287 = 2049;
        *&v287[2] = v48;
        *&v287[10] = 2049;
        *&v287[12] = v49;
        *&v287[20] = 2049;
        *&v287[22] = v50;
        v288 = 2049;
        v289 = v51;
        v290 = 2049;
        v291 = v52;
        v292 = 2049;
        v293 = v53;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:platform supports unnotification, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
      }

      v54 = [*SAPlatformInfo::instance(v44) isEqualToString:@"iPhone"];
      if (v54)
      {
        v55 = "rich";
      }

      else
      {
        v101 = SAPlatformInfo::instance(v54);
        if (![*v101 isEqualToString:@"Watch"] || *(v101 + 8) != 1)
        {
          goto LABEL_72;
        }

        v55 = "text";
      }

      v56 = [NSString stringWithUTF8String:v55];
      if (v56)
      {
        v57 = sub_100002DB0();
        v58 = -1000.0;
        if (*(v57 + 107) == 1)
        {
          v59 = -1000.0;
          if (*(v57 + 106) == 1)
          {
            v57 = sub_100002DB0();
            v59 = *v57;
            v58 = *(v57 + 1);
          }
        }

        else
        {
          v59 = -1000.0;
        }

        v245 = 0;
        v246 = 0;
        v247 = 0;
        v112 = SASettings::instance(v57);
        (*(*v112 + 112))(v243);
        if (v244 < 0)
        {
          if (v243[1] != 5)
          {
            goto LABEL_89;
          }

          v113 = v243[0];
        }

        else
        {
          if (v244 != 5)
          {
            goto LABEL_89;
          }

          v113 = v243;
        }

        v114 = *v113;
        v115 = *(v113 + 4);
        v116 = v114 == 1429042021 && v115 == 83;
        if (v116)
        {
          if (SHIBYTE(v247) < 0)
          {
            v246 = 15;
            v190 = v245;
          }

          else
          {
            HIBYTE(v247) = 15;
            v190 = &v245;
          }

          strcpy(v190, "Alerta sísmica");
          v118 = v190 + 15;
LABEL_93:
          *v118 = 0;
          if (SHIBYTE(v249[0]) < 0)
          {
            if (v248[1])
            {
              v119 = v248[0];
              goto LABEL_100;
            }
          }

          else if (HIBYTE(v249[0]))
          {
            v119 = v248;
LABEL_100:
            v239 = v119;
            v120 = *(a2 + 175);
            if ((v120 & 0x80u) != 0)
            {
              v120 = *(a2 + 160);
            }

            v116 = v120 == 0;
            v121 = 152;
            if (v116)
            {
              v121 = 8;
            }

            v122 = a2 + v121;
            if (*(v122 + 23) < 0)
            {
              sub_100004CEC(__p, *v122, *(v122 + 8));
            }

            else
            {
              *__p = *v122;
              v242 = *(v122 + 16);
            }

            v123 = HIBYTE(v242);
            if (v242 < 0)
            {
              v123 = __p[1];
            }

            if (v123)
            {
              v236 = v56;
              v237 = [NSMutableDictionary alloc];
              v268[0] = [NSString stringWithUTF8String:"type"];
              v235 = v268[0];
              v269[0] = [NSString stringWithUTF8String:"igneous"];
              v233 = v269[0];
              v231 = [NSString stringWithUTF8String:"subType"];
              v268[1] = v231;
              v269[1] = v56;
              v229 = [NSString stringWithUTF8String:"title"];
              v268[2] = v229;
              v227 = [NSString stringWithUTF8String:v239];
              v269[2] = v227;
              v225 = [NSString stringWithUTF8String:"body"];
              v268[3] = v225;
              if (v250 >= 0)
              {
                v124 = &v249[1];
              }

              else
              {
                v124 = v249[1];
              }

              v223 = [NSString stringWithUTF8String:v124];
              v269[3] = v223;
              v221 = [NSString stringWithUTF8String:"attribution"];
              v268[4] = v221;
              if (SHIBYTE(v252[0]) >= 0)
              {
                v125 = v251;
              }

              else
              {
                v125 = v251[0];
              }

              v270 = [NSString stringWithUTF8String:v125];
              v219 = v270;
              v217 = [NSString stringWithUTF8String:"tone"];
              v268[5] = v217;
              if (v253 >= 0)
              {
                v126 = &v252[1];
              }

              else
              {
                v126 = v252[1];
              }

              v215 = [NSString stringWithUTF8String:v126, &v252[1]];
              v271 = v215;
              v213 = [NSString stringWithUTF8String:"epiLat"];
              v268[6] = v213;
              v211 = [NSNumber numberWithDouble:*(a2 + 240)];
              v272 = v211;
              v209 = [NSString stringWithUTF8String:"epiLon"];
              v268[7] = v209;
              v207 = [NSNumber numberWithDouble:*(a2 + 248)];
              v273 = v207;
              v205 = [NSString stringWithUTF8String:"userLat"];
              v268[8] = v205;
              v203 = [NSNumber numberWithDouble:v59];
              v274 = v203;
              v201 = [NSString stringWithUTF8String:"userLon"];
              v268[9] = v201;
              v199 = [NSNumber numberWithDouble:v58];
              v275 = v199;
              v198 = [NSString stringWithUTF8String:"radius"];
              v268[10] = v198;
              v197 = [NSNumber numberWithDouble:*(a2 + 296)];
              v276 = v197;
              v196 = [NSString stringWithUTF8String:"isSilent"];
              v268[11] = v196;
              v277 = &__kCFBooleanFalse;
              v195 = [NSString stringWithUTF8String:"interface"];
              v268[12] = v195;
              v194 = [NSNumber numberWithInt:*(a2 + 352)];
              v278 = v194;
              v193 = [NSString stringWithUTF8String:"level"];
              v268[13] = v193;
              v192 = [NSNumber numberWithInt:v254];
              v279 = v192;
              v127 = [NSString stringWithUTF8String:"uid"];
              v268[14] = v127;
              if (v242 >= 0)
              {
                v128 = __p;
              }

              else
              {
                v128 = __p[0];
              }

              v129 = [NSString stringWithUTF8String:v128];
              v280 = v129;
              v130 = [NSString stringWithUTF8String:"serverTs"];
              v268[15] = v130;
              v131 = [NSNumber numberWithDouble:*(a2 + 192)];
              v281 = v131;
              v132 = [NSString stringWithUTF8String:"isRelayed"];
              v268[16] = v132;
              v282 = &__kCFBooleanFalse;
              v133 = [NSDictionary dictionaryWithObjects:v269 forKeys:v268 count:17];
              v238 = [v237 initWithDictionary:v133];

              v135 = *(a1 + 32);
              v136 = v238;
              if (v135)
              {
                v137 = SALogObjectGeneral;
                if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                {
                  v138 = *(a2 + 152);
                  if (*(a2 + 175) >= 0)
                  {
                    v138 = a2 + 152;
                  }

                  v139 = *(a2 + 352);
                  v140 = *(a2 + 384);
                  v141 = *(a2 + 184);
                  v142 = *(a2 + 192);
                  v143 = *(a2 + 200);
                  v144 = *(a2 + 208);
                  v145 = *(a2 + 216);
                  v146 = *(a2 + 320);
                  *buf = 68292355;
                  *&buf[4] = 0;
                  *v284 = 2082;
                  *&v284[2] = "";
                  *&v284[10] = 2081;
                  *&v284[12] = "info";
                  *&v284[20] = 2081;
                  *&v284[22] = "igAlertFlow";
                  *&v284[30] = 2081;
                  v285 = "igdisp";
                  *v286 = 2081;
                  *&v286[2] = "post";
                  *&v286[10] = 2081;
                  *&v286[12] = v138;
                  *&v286[20] = 1025;
                  *&v286[22] = v139;
                  *&v286[26] = 1025;
                  *&v286[28] = v140;
                  *v287 = 2049;
                  *&v287[2] = v141;
                  *&v287[10] = 2049;
                  *&v287[12] = v142;
                  *&v287[20] = 2049;
                  *&v287[22] = v143;
                  v288 = 2049;
                  v289 = v144;
                  v290 = 2049;
                  v291 = v145;
                  v292 = 2049;
                  v293 = v146;
                  _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:sending to userNotification, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
                  v135 = *(a1 + 32);
                }

                v134 = (*(*v135 + 16))(v135, v238);
              }

              if ([*SAPlatformInfo::instance(v134) isEqualToString:@"iPhone"] && (v147 = *(a1 + 48)) != 0 && ((*(*v147 + 32))(v147) & 1) != 0)
              {
                if (v254 == 2)
                {
                  v148 = [NSMutableDictionary alloc];
                  v234 = [NSString stringWithUTF8String:"type"];
                  v255 = v234;
                  *buf = [NSString stringWithUTF8String:"igneous"];
                  v232 = *buf;
                  v256 = [NSString stringWithUTF8String:"subType"];
                  v230 = v256;
                  v228 = [NSString stringWithUTF8String:"text"];
                  *v284 = v228;
                  v226 = [NSString stringWithUTF8String:"title"];
                  v257 = v226;
                  v240 = [NSString stringWithUTF8String:v239];
                  *&v284[8] = v240;
                  v224 = [NSString stringWithUTF8String:"body"];
                  v258 = v224;
                  if (v250 >= 0)
                  {
                    v149 = &v249[1];
                  }

                  else
                  {
                    v149 = v249[1];
                  }

                  *&v284[16] = [NSString stringWithUTF8String:v149];
                  v222 = *&v284[16];
                  v220 = [NSString stringWithUTF8String:"attribution"];
                  v259 = v220;
                  if (SHIBYTE(v252[0]) >= 0)
                  {
                    v150 = v251;
                  }

                  else
                  {
                    v150 = v251[0];
                  }

                  v218 = [NSString stringWithUTF8String:v150];
                  *&v284[24] = v218;
                  v216 = [NSString stringWithUTF8String:"isSilent"];
                  v260 = v216;
                  v285 = &__kCFBooleanFalse;
                  v214 = [NSString stringWithUTF8String:"level"];
                  v261 = v214;
                  v212 = [NSNumber numberWithInt:v254];
                  *v286 = v212;
                  v210 = [NSString stringWithUTF8String:"uid"];
                  v262 = v210;
                  if (v242 >= 0)
                  {
                    v151 = __p;
                  }

                  else
                  {
                    v151 = __p[0];
                  }

                  v208 = [NSString stringWithUTF8String:v151];
                  *&v286[8] = v208;
                  v206 = [NSString stringWithUTF8String:"tone"];
                  v263 = v206;
                  if (v253 >= 0)
                  {
                    v152 = v191;
                  }

                  else
                  {
                    v152 = v252[1];
                  }

                  v204 = [NSString stringWithUTF8String:v152];
                  *&v286[16] = v204;
                  v202 = [NSString stringWithUTF8String:"isSilent"];
                  v264 = v202;
                  *&v286[24] = &__kCFBooleanFalse;
                  v200 = [NSString stringWithUTF8String:"interface"];
                  v265 = v200;
                  v153 = [NSNumber numberWithInt:*(a2 + 352)];
                  *v287 = v153;
                  v154 = [NSString stringWithUTF8String:"serverTs"];
                  v266 = v154;
                  v155 = [NSNumber numberWithDouble:*(a2 + 192)];
                  *&v287[8] = v155;
                  v156 = [NSString stringWithUTF8String:"isRelayed"];
                  v267 = v156;
                  *&v287[16] = &__kCFBooleanTrue;
                  v157 = [NSDictionary dictionaryWithObjects:buf forKeys:&v255 count:13];
                  v158 = [v148 initWithDictionary:v157];

                  (*(**(a1 + 48) + 16))(*(a1 + 48), v158);
                  v136 = v238;
                }
              }

              else
              {
                v159 = SALogObjectGeneral;
                if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 68289026;
                  *&buf[4] = 0;
                  *v284 = 2082;
                  *&v284[2] = "";
                  _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igdisp,post,userNotification,skipForwarding}", buf, 0x12u);
                  v159 = SALogObjectGeneral;
                }

                if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
                {
                  v160 = *(a2 + 152);
                  if (*(a2 + 175) >= 0)
                  {
                    v160 = a2 + 152;
                  }

                  v161 = *(a2 + 352);
                  v162 = *(a2 + 384);
                  v163 = *(a2 + 184);
                  v164 = *(a2 + 192);
                  v165 = *(a2 + 200);
                  v166 = *(a2 + 208);
                  v167 = *(a2 + 216);
                  v168 = *(a2 + 320);
                  *buf = 68292355;
                  *&buf[4] = 0;
                  *v284 = 2082;
                  *&v284[2] = "";
                  *&v284[10] = 2081;
                  *&v284[12] = "warning";
                  *&v284[20] = 2081;
                  *&v284[22] = "igAlertFlow";
                  *&v284[30] = 2081;
                  v285 = "igdisp";
                  *v286 = 2081;
                  *&v286[2] = "post";
                  *&v286[10] = 2081;
                  *&v286[12] = v160;
                  *&v286[20] = 1025;
                  *&v286[22] = v161;
                  *&v286[26] = 1025;
                  *&v286[28] = v162;
                  *v287 = 2049;
                  *&v287[2] = v163;
                  *&v287[10] = 2049;
                  *&v287[12] = v164;
                  *&v287[20] = 2049;
                  *&v287[22] = v165;
                  v288 = 2049;
                  v289 = v166;
                  v290 = 2049;
                  v291 = v167;
                  v292 = 2049;
                  v293 = v168;
                  _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:skip forwarding to watch, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
                }
              }

              v56 = v236;
            }

            else
            {
              v169 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                v170 = *(a2 + 152);
                if (*(a2 + 175) >= 0)
                {
                  v170 = a2 + 152;
                }

                v171 = *(a2 + 352);
                v172 = *(a2 + 384);
                v173 = *(a2 + 184);
                v174 = *(a2 + 192);
                v175 = *(a2 + 200);
                v176 = *(a2 + 208);
                v177 = *(a2 + 216);
                v178 = *(a2 + 320);
                *buf = 68292355;
                *&buf[4] = 0;
                *v284 = 2082;
                *&v284[2] = "";
                *&v284[10] = 2081;
                *&v284[12] = "warning";
                *&v284[20] = 2081;
                *&v284[22] = "igAlertFlow";
                *&v284[30] = 2081;
                v285 = "igdisp";
                *v286 = 2081;
                *&v286[2] = "post";
                *&v286[10] = 2081;
                *&v286[12] = v170;
                *&v286[20] = 1025;
                *&v286[22] = v171;
                *&v286[26] = 1025;
                *&v286[28] = v172;
                *v287 = 2049;
                *&v287[2] = v173;
                *&v287[10] = 2049;
                *&v287[12] = v174;
                *&v287[20] = 2049;
                *&v287[22] = v175;
                v288 = 2049;
                v289 = v176;
                v290 = 2049;
                v291 = v177;
                v292 = 2049;
                v293 = v178;
                _os_log_impl(&_mh_execute_header, v169, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:invalid uid, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
              }
            }

            if (SHIBYTE(v242) < 0)
            {
              operator delete(__p[0]);
            }

            if (v244 < 0)
            {
              operator delete(v243[0]);
            }

            if (SHIBYTE(v247) < 0)
            {
              operator delete(v245);
            }

            goto LABEL_163;
          }

          v119 = &v245;
          if (v247 < 0)
          {
            v119 = v245;
          }

          goto LABEL_100;
        }

LABEL_89:
        if (SHIBYTE(v247) < 0)
        {
          v246 = 16;
          v117 = v245;
        }

        else
        {
          HIBYTE(v247) = 16;
          v117 = &v245;
        }

        *v117 = *"Earthquake Alert";
        v118 = v117 + 1;
        goto LABEL_93;
      }

LABEL_72:
      v102 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *v284 = 2082;
        *&v284[2] = "";
        _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igdisp,post,userNotification,not supported platform}", buf, 0x12u);
        v102 = SALogObjectGeneral;
      }

      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
      {
        v103 = *(a2 + 152);
        if (*(a2 + 175) >= 0)
        {
          v103 = a2 + 152;
        }

        v104 = *(a2 + 352);
        v105 = *(a2 + 384);
        v106 = *(a2 + 184);
        v107 = *(a2 + 192);
        v108 = *(a2 + 200);
        v109 = *(a2 + 208);
        v110 = *(a2 + 216);
        v111 = *(a2 + 320);
        *buf = 68292355;
        *&buf[4] = 0;
        *v284 = 2082;
        *&v284[2] = "";
        *&v284[10] = 2081;
        *&v284[12] = "warning";
        *&v284[20] = 2081;
        *&v284[22] = "igAlertFlow";
        *&v284[30] = 2081;
        v285 = "igdisp";
        *v286 = 2081;
        *&v286[2] = "post";
        *&v286[10] = 2081;
        *&v286[12] = v103;
        *&v286[20] = 1025;
        *&v286[22] = v104;
        *&v286[26] = 1025;
        *&v286[28] = v105;
        *v287 = 2049;
        *&v287[2] = v106;
        *&v287[10] = 2049;
        *&v287[12] = v107;
        *&v287[20] = 2049;
        *&v287[22] = v108;
        v288 = 2049;
        v289 = v109;
        v290 = 2049;
        v291 = v110;
        v292 = 2049;
        v293 = v111;
        v87 = "{msg%{public}.0s:not supported platform, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
        v88 = v102;
        v89 = 140;
LABEL_78:
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, v87, buf, v89);
        goto LABEL_163;
      }

      goto LABEL_163;
    }
  }

  else
  {
    v43 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v74 = v249[1];
    v75 = v251[0];
    if (v41 >= 0)
    {
      v74 = &v249[1];
    }

    if (SHIBYTE(v252[0]) >= 0)
    {
      v75 = v251;
    }

    *buf = 68289539;
    *&buf[4] = 0;
    *v284 = 2082;
    *&v284[2] = "";
    *&v284[10] = 2081;
    *&v284[12] = v74;
    *&v284[20] = 2081;
    *&v284[22] = v75;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igdisp,post,invalid alert, alert:%{private, location:escape_only}s, attribution:%{private, location:escape_only}s}", buf, 0x26u);
    v43 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v76 = *(a2 + 152);
    if (*(a2 + 175) >= 0)
    {
      v76 = a2 + 152;
    }

    v77 = *(a2 + 352);
    v78 = *(a2 + 384);
    v79 = *(a2 + 184);
    v80 = *(a2 + 192);
    v81 = *(a2 + 200);
    v82 = *(a2 + 208);
    v83 = *(a2 + 216);
    v84 = *(a2 + 320);
    if (v250 >= 0)
    {
      v85 = &v249[1];
    }

    else
    {
      v85 = v249[1];
    }

    v86 = v251;
    if (SHIBYTE(v252[0]) < 0)
    {
      v86 = v251[0];
    }

    *buf = 68292867;
    *&buf[4] = 0;
    *v284 = 2082;
    *&v284[2] = "";
    *&v284[10] = 2081;
    *&v284[12] = "warning";
    *&v284[20] = 2081;
    *&v284[22] = "igAlertFlow";
    *&v284[30] = 2081;
    v285 = "igdisp";
    *v286 = 2081;
    *&v286[2] = "post";
    *&v286[10] = 2081;
    *&v286[12] = v76;
    *&v286[20] = 1025;
    *&v286[22] = v77;
    *&v286[26] = 1025;
    *&v286[28] = v78;
    *v287 = 2049;
    *&v287[2] = v79;
    *&v287[10] = 2049;
    *&v287[12] = v80;
    *&v287[20] = 2049;
    *&v287[22] = v81;
    v288 = 2049;
    v289 = v82;
    v290 = 2049;
    v291 = v83;
    v292 = 2049;
    v293 = v84;
    v294 = 2081;
    v295 = v85;
    v296 = 2081;
    v297 = v86;
    v87 = "{msg%{public}.0s:invalid alert, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f, alert:%{private, location:escape_only}s, attribution:%{private, location:escape_only}s}";
    v88 = v43;
    v89 = 160;
    goto LABEL_78;
  }

LABEL_163:
  if (SHIBYTE(v253) < 0)
  {
    operator delete(v252[1]);
  }

  if (SHIBYTE(v252[0]) < 0)
  {
    operator delete(v251[0]);
  }

  if (SHIBYTE(v250) < 0)
  {
    operator delete(v249[1]);
  }

  if (SHIBYTE(v249[0]) < 0)
  {
    operator delete(v248[0]);
  }

  v14 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *v284 = 2082;
    *&v284[2] = "";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igdisp,display,done}", buf, 0x12u);
    v14 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v181 = *(a2 + 152);
    v180 = a2 + 152;
    v179 = v181;
    if (*(v180 + 23) >= 0)
    {
      v179 = v180;
    }

    v182 = *(v180 + 200);
    v183 = *(v180 + 232);
    v184 = *(v180 + 32);
    v185 = *(v180 + 40);
    v186 = *(v180 + 48);
    v187 = *(v180 + 56);
    v188 = *(v180 + 64);
    v189 = *(v180 + 168);
    *buf = 68292355;
    *&buf[4] = 0;
    *v284 = 2082;
    *&v284[2] = "";
    *&v284[10] = 2081;
    *&v284[12] = "info";
    *&v284[20] = 2081;
    *&v284[22] = "igAlertFlow";
    *&v284[30] = 2081;
    v285 = "igdisp";
    *v286 = 2081;
    *&v286[2] = "display";
    *&v286[10] = 2081;
    *&v286[12] = v179;
    *&v286[20] = 1025;
    *&v286[22] = v182;
    *&v286[26] = 1025;
    *&v286[28] = v183;
    *v287 = 2049;
    *&v287[2] = v184;
    *&v287[10] = 2049;
    *&v287[12] = v185;
    *&v287[20] = 2049;
    *&v287[22] = v186;
    v288 = 2049;
    v289 = v187;
    v290 = 2049;
    v291 = v188;
    v292 = 2049;
    v293 = v189;
    v26 = "{msg%{public}.0s:display done, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
    goto LABEL_177;
  }
}