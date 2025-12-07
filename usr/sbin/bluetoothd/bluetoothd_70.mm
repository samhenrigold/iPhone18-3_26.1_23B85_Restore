id sub_1004F8224(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_1000C7698();
    }

    v9 = v4 - *a1;
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

    v13[4] = a1;
    if (v11)
    {
      sub_1003138F4(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_100313844(a1, v13);
    v7 = a1[1];
    result = sub_10031393C(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_1004F8304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10031393C(va);
  _Unwind_Resume(a1);
}

void sub_1004F8318(uint64_t a1)
{
  if (!*(a1 + 456))
  {
    *(a1 + 448) = 1;
    if (qword_100B51078 != -1)
    {
      sub_10083AE3C();
    }

    v2 = sub_1007AD898(off_100B51070, @"com.apple.bluetooth.LatencyCriticalAction");
    v4 = sub_100007EE8(v2, v3);
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v4 + 8));
    *(a1 + 456) = v5;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1004F84A0;
    handler[3] = &unk_100ADF8F8;
    handler[4] = a1;
    dispatch_source_set_event_handler(v5, handler);
    v6 = *(a1 + 456);
    v7 = dispatch_time(0, 7500000000);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
    v8 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 456);
      *buf = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Latency Critical Action: Timer Start - %@", buf, 0xCu);
    }

    dispatch_activate(*(a1 + 456));
  }
}

uint64_t sub_1004F84A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Latency Critical Action: Timer expired!", v4, 2u);
  }

  return sub_1004F8514(v1);
}

uint64_t sub_1004F8514(uint64_t result)
{
  v1 = *(result + 456);
  if (v1)
  {
    v2 = result;
    v3 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v1;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Latency Critical Action: Cancel timer: %@", &v4, 0xCu);
      v1 = *(v2 + 456);
    }

    dispatch_source_cancel(v1);
    dispatch_release(*(v2 + 456));
    *(v2 + 456) = 0;
    *(v2 + 448) = 0;
    if (qword_100B51078 != -1)
    {
      sub_10083AE14();
    }

    return sub_1007ADB50(off_100B51070, @"com.apple.bluetooth.LatencyCriticalAction");
  }

  return result;
}

void sub_1004F8610(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(a1 + 464);
  if (v8 != -1)
  {
    v9 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v31 = v5;
      v32 = 1024;
      v33 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Overriding device %{public}@ coexConnectionPriority to %d", buf, 0x12u);
    }

    if (qword_100B508D0 != -1)
    {
      sub_10083B158();
    }

    sub_10078FFDC(off_100B508C8, v5, *(a1 + 464));
    goto LABEL_16;
  }

  if ([v6 connectionUseCase] != 21 && objc_msgSend(v7, "connectionUseCase") != 20 && objc_msgSend(v7, "connectionUseCase") != 655360)
  {
    v10 = 0;
    v12 = *(a1 + 129);
    if (v12 == 4 || v12 == 8)
    {
      goto LABEL_11;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000E74F4();
    }

    if ((sub_100788ED8(off_100B508C8, v5) & 1) == 0)
    {
      if (qword_100B508D0 != -1)
      {
        sub_1000E74F4();
      }

      v13 = off_100B508C8;
      sub_100007E30(__p, "A1603");
      if (sub_10004EB40(v13, v5, __p))
      {
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        if (qword_100B508D0 != -1)
        {
          sub_10083B158();
        }

        v14 = off_100B508C8;
        sub_100007E30(v26, "A2051");
        if (sub_10004EB40(v14, v5, v26))
        {
          v15 = 1;
        }

        else
        {
          if (qword_100B508D0 != -1)
          {
            sub_10083B158();
          }

          v16 = off_100B508C8;
          sub_100007E30(v24, "A3085");
          if (sub_10004EB40(v16, v5, v24))
          {
            v15 = 1;
          }

          else
          {
            if (qword_100B508D0 != -1)
            {
              sub_10083B158();
            }

            v17 = off_100B508C8;
            sub_100007E30(v22, "A2538");
            v15 = sub_10004EB40(v17, v5, v22);
            if (v23 < 0)
            {
              operator delete(v22[0]);
            }
          }

          if (v25 < 0)
          {
            operator delete(v24[0]);
          }
        }

        if (v27 < 0)
        {
          operator delete(v26[0]);
        }

        if (v29 < 0)
        {
          operator delete(__p[0]);
        }

        if ((v15 & 1) == 0)
        {
          if ([v7 connectionUseCase] == 19 || objc_msgSend(v7, "connectionUseCase") == 196608 || *(a1 + 129) == 32)
          {
            goto LABEL_54;
          }

          if (qword_100B508D0 != -1)
          {
            sub_10083B158();
          }

          v18 = off_100B508C8;
          sub_100007E30(v20, "_HID_DEVICE_");
          v19 = sub_10004EB40(v18, v5, v20);
          if (v21 < 0)
          {
            operator delete(v20[0]);
          }

          if (v19)
          {
LABEL_54:
            v10 = 1;
            goto LABEL_11;
          }

          if (*(a1 + 129) == 16)
          {
            v10 = 2;
            goto LABEL_11;
          }

          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
          {
            sub_10083B468();
          }
        }
      }
    }
  }

  v10 = 0;
LABEL_11:
  v11 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Device %{public}@ overriding wifi coex policy", buf, 0xCu);
  }

  if (qword_100B508D0 != -1)
  {
    sub_10083B158();
  }

  sub_10078FFDC(off_100B508C8, v5, v10);
LABEL_16:
}

void sub_1004F8A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1004F8AC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 88) isEqualToString:@"com.teslamotors.TeslaApp"] & 1) != 0 || (objc_msgSend(*(a1 + 88), "isEqualToString:", @"com.teslamotors.enterpriseapp") & 1) != 0 || objc_msgSend(v6, "connectionUseCase") == 3 || objc_msgSend(v6, "connectionUseCase") == 4)
  {
    goto LABEL_9;
  }

  if (qword_100B508D0 != -1)
  {
    sub_1000E74F4();
  }

  if ((sub_100788ED8(off_100B508C8, v5) & 1) != 0 || [v6 waitForConnectionPoll])
  {
LABEL_9:
    if (qword_100B508D0 != -1)
    {
      sub_1000E74F4();
    }

    sub_10078A254(off_100B508C8, v5, 1);
    v7 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Enabling Poll/Null check for device %{public}@", &v8, 0xCu);
    }
  }

  else
  {
    if (qword_100B508D0 != -1)
    {
      sub_1000E74F4();
    }

    sub_10078A254(off_100B508C8, v5, 0);
  }
}

void sub_1004F8C80(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ([v8 connectionUseCase])
  {
    v9 = [v8 connectionUseCase];
    v10 = v9;
    if (v9 != 23 && v9)
    {
      goto LABEL_29;
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  if (([*(a1 + 88) isEqualToString:@"com.teslamotors.TeslaApp"] & 1) != 0 || (objc_msgSend(*(a1 + 88), "isEqualToString:", @"com.teslamotors.enterpriseapp") & 1) != 0 || objc_msgSend(*(a1 + 88), "hasPrefix:", @"com.rivian.ios.consumer"))
  {
    if (qword_100B508D0 != -1)
    {
      sub_1000E74F4();
    }

    if (sub_100788ED8(off_100B508C8, v7))
    {
      if (qword_100B508D0 != -1)
      {
        sub_1000E74F4();
      }

      sub_10078380C(off_100B508C8, v7, @"HasTS");
      if (qword_100B508D0 != -1)
      {
        sub_1000E74F4();
      }

      if ((sub_10078A024(off_100B508C8, v7) & 1) == 0)
      {
        if (qword_100B53FE8 != -1)
        {
          sub_10083B4A4();
        }

        v11 = qword_100B53FE0;
        sub_100007E30(v31, "HasTS");
        sub_100007E30(__p, "Tesla Tagged HasTS UnsetTag");
        sub_1005780BC(v11, v31, __p, 60.0);
        if (v30 < 0)
        {
          operator delete(__p[0]);
        }

        if (v32 < 0)
        {
          operator delete(v31[0]);
        }

        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
        {
          sub_10083B4B8();
        }

        if (qword_100B508D0 != -1)
        {
          sub_10083B158();
        }

        sub_10078A0B0(off_100B508C8, v7, 1);
      }
    }

    v10 = 16;
  }

  else
  {
    if (qword_100B508D0 != -1)
    {
      sub_1000E74F4();
    }

    if (sub_100788ED8(off_100B508C8, v7))
    {
      v10 = 11;
    }

    else
    {
      if (qword_100B508D0 != -1)
      {
        sub_1000E74F4();
      }

      v25 = off_100B508C8;
      sub_100007E30(v27, "ANCSAuthorized");
      v26 = sub_10004EB40(v25, v7, v27);
      if (v28 < 0)
      {
        operator delete(v27[0]);
      }

      if (v26)
      {
        v10 = 23;
      }

      else
      {
        v10 = v10;
      }
    }
  }

LABEL_29:
  if (qword_100B508D0 != -1)
  {
    sub_10083B158();
  }

  sub_10078BFA0(off_100B508C8, v7, v10);
  if (qword_100B508D0 != -1)
  {
    sub_10083B158();
  }

  v12 = off_100B508C8;
  v13 = [v8 useCaseList];
  sub_10078C02C(v12, v7, v13);

  sub_100018384(a2, v31);
  v14 = v32;
  v15 = v31[0];
  v16 = +[NSString defaultCStringEncoding];
  if (v14 >= 0)
  {
    v17 = v31;
  }

  else
  {
    v17 = v15;
  }

  v18 = [NSString stringWithCString:v17 encoding:v16];
  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  v19 = [v8 useCaseList];
  if (v19 && ([v8 useCaseList], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "count"), v20, v19, v21))
  {
    if (qword_100B508D0 != -1)
    {
      sub_10083B158();
    }

    v22 = off_100B508C8;
    v23 = [v8 useCaseList];
    sub_10078C484(v22, v7, v18, v23);
  }

  else
  {
    v24 = [NSNumber numberWithUnsignedInt:v10];
    v23 = [NSArray arrayWithObjects:v24, 0];

    if (qword_100B508D0 != -1)
    {
      sub_10083B158();
    }

    sub_10078C484(off_100B508C8, v7, v18, v23);
  }
}

void sub_1004F90AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1004F915C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v5 minRSSILevelForConnection])
  {
    if (qword_100B508D0 != -1)
    {
      sub_1000E74F4();
    }

    sub_10078A1C8(off_100B508C8, v4, [v5 minRSSILevelForConnection]);
    v6 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109378;
      v7[1] = [v5 minRSSILevelForConnection];
      v8 = 2114;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting minimum RSSI level for connection to %d for device %{public}@ requested in connectOptions", v7, 0x12u);
    }
  }
}

void sub_1004F9298(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 376);
  if (!v3)
  {
    operator new();
  }

  sub_10042B5BC(v3, v4);
}

uint64_t sub_1004F935C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 360);
  v5 = (a1 + 368);
  if (v4 == v5)
  {
LABEL_9:
    v9 = 0;
  }

  else
  {
    while (1)
    {
      sub_10004DFB4(uu2, v3);
      if (!uuid_compare(v4 + 40, uu2))
      {
        break;
      }

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
      if (v7 == v5)
      {
        goto LABEL_9;
      }
    }

    v9 = *(v4 + 4);
  }

  return v9;
}

void sub_1004F9450(uint64_t a1, uint64_t a2, void *a3, int a4, int a5, unsigned int a6)
{
  v11 = a3;
  v60 = v11;
  if (*(a1 + 44) == 1 && (a4 & 1) == 0)
  {
    if (qword_100B54208 != -1)
    {
      sub_10083B4F4();
    }

    v12 = qword_100B54200;
    v13 = [*(a1 + 224) objectForKeyedSubscript:v11];
    sub_1007F1090(v12, a2, v11, v13);
  }

  [*(a1 + 80) removeObjectForKey:v11];
  v14 = *(a1 + 296);
  if (v14)
  {
    v15 = a1 + 296;
    do
    {
      v16 = *(v14 + 32);
      v17 = v16 >= v11;
      v18 = v16 < v11;
      if (v17)
      {
        v15 = v14;
      }

      v14 = *(v14 + 8 * v18);
    }

    while (v14);
    if (v15 != a1 + 296 && *(v15 + 32) <= v11)
    {
      sub_100506E64(a1 + 288, &v60);
      [*(a1 + 224) removeObjectForKey:v60];
      v11 = v60;
      goto LABEL_112;
    }
  }

  v19 = [*(a1 + 384) objectForKey:v11];

  if (!v19)
  {
    v24 = [*(a1 + 232) objectForKey:v11];
    if (v24)
    {
      v25 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        sub_100018384(a2, buf);
        v26 = (SBYTE7(v65) & 0x80u) == 0 ? buf : *buf;
        LODWORD(v63.__r_.__value_.__l.__data_) = 138543618;
        *(v63.__r_.__value_.__r.__words + 4) = v11;
        WORD2(v63.__r_.__value_.__r.__words[1]) = 2082;
        *(&v63.__r_.__value_.__r.__words[1] + 6) = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Device %{public}@ for session %{public}s is already disconnecting, removing it from the pending devices list", &v63, 0x16u);
        if (SBYTE7(v65) < 0)
        {
          operator delete(*buf);
        }
      }

      [*(a1 + 232) removeObjectForKey:v11];
    }

    v27 = [*(a1 + 224) objectForKeyedSubscript:v11];

    v28 = v27;
    if (!v27)
    {
      goto LABEL_111;
    }

    if ([v27 isLatencyCritical])
    {
      v29 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v11;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Latency Critical Action: Device %{public}@ disconnecting cancel timer", buf, 0xCu);
      }

      sub_1004F8514(a1);
    }

    v65 = 0u;
    v66 = 0u;
    *buf = 0u;
    sub_100007E30(&v63, [*(a1 + 88) UTF8String]);
    sub_1005796F0(buf, &v63, *(a1 + 129), v11);
    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (qword_100B541F8 != -1)
    {
      sub_10083B440();
    }

    v30 = sub_10000EFDC(qword_100B541F0, buf);
    v32 = sub_100432718(v30, v31);
    sub_100614BB8(a2, &v63);
    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &v63;
    }

    else
    {
      v33 = v63.__r_.__value_.__r.__words[0];
    }

    (**v32)(v32, v33, 0, v11);
    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    v34 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(a2, &v63);
      v35 = (v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v63 : v63.__r_.__value_.__r.__words[0];
      *v61 = 138543618;
      *&v61[4] = v11;
      *&v61[12] = 2082;
      *&v61[14] = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Disconnecting device %{public}@ for session %{public}s", v61, 0x16u);
      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }
    }

    [*(a1 + 224) removeObjectForKey:v11];
    v58 = a6;
    v59 = a4;
    v36 = a5;
    v37 = a2;
    sub_100018384(a2, &v63);
    v38 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = &v63;
    }

    else
    {
      v39 = v63.__r_.__value_.__r.__words[0];
    }

    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v63.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v63.__r_.__value_.__l.__size_;
    }

    if (size >= 20)
    {
      v43 = v39 + size;
      v44 = v39;
      while (1)
      {
        v45 = memchr(v44, 99, size - 19);
        if (!v45)
        {
LABEL_77:
          v41 = 0;
          goto LABEL_78;
        }

        v46 = *v45 == 0x6C7070612E6D6F63 && *(v45 + 1) == 0x6F7465756C622E65;
        if (v46 && *(v45 + 4) == 1684567151)
        {
          break;
        }

        v44 = (v45 + 1);
        size = v43 - v44;
        if (v43 - v44 < 20)
        {
          goto LABEL_77;
        }
      }

      v41 = 0;
      if (v45 != v43)
      {
        v46 = v45 - v39 == -1;
        v48 = v36;
        v50 = v58;
        v49 = v59;
        if (!v46)
        {
          if (qword_100B508D0 != -1)
          {
            sub_10083B158();
          }

          sub_1000B006C(off_100B508C8, v11, v61);
          v57 = *&v61[8];
          if (v62 >= 0)
          {
            v57 = v62;
          }

          v41 = v57 != 0;
          if ((v62 & 0x8000000000000000) != 0)
          {
            operator delete(*v61);
          }

          v38 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
        }

LABEL_79:
        if (v38 < 0)
        {
          operator delete(v63.__r_.__value_.__l.__data_);
          if (!v41)
          {
LABEL_86:
            if ([v28 requiresLowLatency])
            {
              if (qword_100B508B0 != -1)
              {
                sub_10083AEE8();
              }

              v52 = off_100B508A8;
              sub_10004DFB4(&v63, v11);
              sub_10074EB78(v52, &v63);
            }

            v53 = qword_100BCE9B8;
            if (os_log_type_enabled(qword_100BCE9B8, OS_LOG_TYPE_DEFAULT))
            {
              v54 = *(a1 + 88);
              LODWORD(v63.__r_.__value_.__l.__data_) = 138543618;
              *(v63.__r_.__value_.__r.__words + 4) = v11;
              WORD2(v63.__r_.__value_.__r.__words[1]) = 2114;
              *(&v63.__r_.__value_.__r.__words[1] + 6) = v54;
              _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "App disconnecting - {cbuuid: %{public}@, bundle: %{public}@}", &v63, 0x16u);
            }

            if (qword_100B512F8 != -1)
            {
              sub_10083AC60();
            }

            sub_1003B5E7C(off_100B512F0, v37, a1, v11, v50, 0);
            if (v49)
            {
              if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
              {
                sub_10083B508();
              }

              if (v48)
              {
                v55 = qword_100BCE988;
                if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(v63.__r_.__value_.__l.__data_) = 138543362;
                  *(v63.__r_.__value_.__r.__words + 4) = v11;
                  _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Disconnecting Do Not Autoconnect device %{public}@ if with builtInServices", &v63, 0xCu);
                }

                if (qword_100B508D0 != -1)
                {
                  sub_10083B158();
                }

                sub_10078D764(off_100B508C8, v11);
              }

              if (qword_100B508B0 != -1)
              {
                sub_10083AEE8();
              }

              v56 = off_100B508A8;
              sub_10004DFB4(&v63, v11);
              sub_10074CD90(v56, &v63, 2);
            }

            else
            {
              if (qword_100B512F8 != -1)
              {
                sub_10083AC60();
              }

              sub_1000C39CC(off_100B512F0);
            }

            if (SHIBYTE(v65) < 0)
            {
              operator delete(*&buf[8]);
            }

LABEL_111:
            [*(a1 + 312) removeObject:v11];

            goto LABEL_112;
          }
        }

        else if (!v41)
        {
          goto LABEL_86;
        }

        if (qword_100B508B0 != -1)
        {
          sub_10083AEE8();
        }

        v51 = off_100B508A8;
        sub_10004DFB4(&v63, v11);
        sub_10074EB78(v51, &v63);
        goto LABEL_86;
      }
    }

    else
    {
      v41 = 0;
    }

LABEL_78:
    v48 = v36;
    v50 = v58;
    v49 = v59;
    goto LABEL_79;
  }

  v20 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Removing delayed connection to device %{public}@", buf, 0xCu);
  }

  if (qword_100B512F8 != -1)
  {
    sub_10083AC60();
  }

  sub_1003B5E7C(off_100B512F0, a2, a1, v11, 0, 0);
  v21 = *(a1 + 392);
  if (v21 != (a1 + 400))
  {
    while ([v11 compare:v21[4]])
    {
      v22 = v21[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v21[2];
          v46 = *v23 == v21;
          v21 = v23;
        }

        while (!v46);
      }

      v21 = v23;
      if (v23 == (a1 + 400))
      {
        goto LABEL_66;
      }
    }

    sub_100506598(a1 + 392, v21 + 4);
    v11 = v60;
  }

LABEL_66:
  [*(a1 + 384) removeObjectForKey:v11];
  sub_1004F576C(a1, v42);
LABEL_112:
}

void sub_1004F9D04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_1003B169C(&a24);

  _Unwind_Resume(a1);
}

uint64_t sub_1004F9DBC(void *a1, void *a2)
{
  v3 = a2;
  if (a1[33])
  {
    __p = 0;
    v14 = 0;
    v15 = 0;
    v4 = a1[31];
    if (v4 != a1 + 32)
    {
      do
      {
        memset(v18, 0, sizeof(v18));
        v16 = *(v4 + 2);
        v17 = *(v4 + 12);
        *&v18[1] = v4[7];
        sub_10000CDB8(&__p, &v16);

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

      while (v6 != a1 + 32);
    }

    v8 = a1[15];
    if (qword_100B50900 != -1)
    {
      sub_10083B180();
    }

    if (v8)
    {
      v9 = *(v8 + 40);
      v10 = *(v8 + 56);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v11 = sub_10070BFF0(qword_100B508F8, v3, &__p, v9 & 1, v10, 1);
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_1004F9F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004F9F98(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v6 = a3;
  if (qword_100B50F78 != -1)
  {
    sub_10083AFF4();
  }

  v12 = 0;
  v7 = qword_100B50F70;
  sub_10004DFB4(v13, v6);
  if (sub_1005807A8(v7, v13, &v12))
  {
    v8 = 0;
  }

  else
  {
    v8 = v12 == 1;
  }

  if (v8)
  {
    v10 = 11;
  }

  else
  {
    if (qword_100B508B0 != -1)
    {
      sub_10083AEE8();
    }

    v9 = off_100B508A8;
    sub_10004DFB4(v13, v6);
    v10 = sub_10074E798(v9, a2, v13, v4);
  }

  return v10;
}

uint64_t sub_1004FA0C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a3;
  v9 = a5;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v10 = *(a4 + 16);
  v13[0] = *a4;
  v13[1] = v10;
  v14 = *(a4 + 32);
  v11 = sub_10074F748(off_100B508A8, a2, v8, v13, v9);

  return v11;
}

uint64_t sub_1004FA170(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5, uint64_t a6)
{
  v8 = a3;
  v10 = a4;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v11 = sub_100750514(off_100B508A8, a2, v8, v10, a5, a6);

  return v11;
}

uint64_t sub_1004FA208(uint64_t a1, uint64_t a2)
{
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  return sub_100750E28();
}

uint64_t sub_1004FA25C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v5 = sub_100750FDC(off_100B508A8, a2, v4);

  return v5;
}

uint64_t sub_1004FA2CC(uint64_t a1, unint64_t a2, void *a3, __int128 *a4)
{
  v6 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v7 = a4[1];
  v10 = *a4;
  v11[0] = v7;
  *(v11 + 10) = *(a4 + 26);
  v8 = sub_100751160(off_100B508A8, a2, v6, &v10);

  return v8;
}

uint64_t sub_1004FA364(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v5 = sub_100751474(off_100B508A8, a2, v4);

  return v5;
}

uint64_t sub_1004FA3D4(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v5 = sub_1007515BC(off_100B508A8, a2, v4);

  return v5;
}

uint64_t sub_1004FA444(uint64_t a1, unint64_t a2, void *a3, __int128 *a4)
{
  v6 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v7 = a4[1];
  v10 = *a4;
  v11[0] = v7;
  *(v11 + 10) = *(a4 + 26);
  v8 = sub_100751704(off_100B508A8, a2, v6, &v10);

  return v8;
}

uint64_t sub_1004FA510(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v7 = sub_10075193C(off_100B508A8, a2, v6, a4);

  return v7;
}

uint64_t sub_1004FA590(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v7 = sub_100751C14(off_100B508A8, a2, v6);

  return v7;
}

uint64_t sub_1004FA618(uint64_t a1, unint64_t a2, void *a3, _OWORD *a4)
{
  v6 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v7 = a4[1];
  v10[0] = *a4;
  v10[1] = v7;
  v8 = sub_100751EC8(off_100B508A8, a2, v6, v10);

  return v8;
}

uint64_t sub_1004FA6A8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v5 = off_100B508A8;

  return sub_10075217C(v5, a2, a3);
}

uint64_t sub_1004FA704(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v8 = sub_1007522E4(off_100B508A8, a2, v7);

  return v8;
}

uint64_t sub_1004FA79C(uint64_t a1, unint64_t a2)
{
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v3 = off_100B508A8;

  return sub_1007524C0(v3, a2);
}

uint64_t sub_1004FA7F0(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v5 = sub_100752618(off_100B508A8, a2, v4);

  return v5;
}

uint64_t sub_1004FA860(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v7 = sub_100752E78(off_100B508A8, a2, v6, a4);

  return v7;
}

BOOL sub_1004FA924(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_1000C7698();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void sub_1004FA9A0(void *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 138543618;
    *&v10[4] = v5;
    *&v10[12] = 1024;
    *&v10[14] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device %{public}@ CL Ready with result %d", v10, 0x12u);
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  *v10 = 0;
  *&v10[8] = 0;
  [v5 getUUIDBytes:v10];
  xpc_dictionary_set_uuid(v7, "kCBMsgArgDeviceUUID", v10);
  xpc_dictionary_set_int64(v7, "kCBMsgArgResult", a3);
  if (qword_100B508D0 != -1)
  {
    sub_10083B158();
  }

  v8 = sub_10005016C(off_100B508C8, v5);
  xpc_dictionary_set_int64(v7, "kCBMsgArgVisibleInSettings", v8 ^ 1u);
  v9 = sub_100050F18(v7);
  sub_100052C08(a1, 93, v9);

  xpc_release(v7);
}

void sub_1004FAB44(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v69 = v5;
  v6 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v5;
    *&buf[12] = 1024;
    *&buf[14] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device %{public}@ connected with result %d", buf, 0x12u);
  }

  if (v5)
  {
    v7 = *(a1 + 120);
    if (qword_100B508D0 != -1)
    {
      sub_10083B158();
    }

    if (sub_10004FF0C(off_100B508C8, v5, *(a1 + 88), *(a1 + 104)))
    {
      if (sub_100050B20(a1, v5))
      {
        xdict = xpc_dictionary_create(0, 0, 0);
        if (qword_100B508B0 != -1)
        {
          sub_10083AEE8();
        }

        v8 = off_100B508A8;
        sub_10004DFB4(buf, v5);
        v58 = sub_100050290(v8, buf);
        uuid[0] = 0;
        uuid[1] = 0;
        [v5 getUUIDBytes:uuid];
        v59 = [*(a1 + 224) objectForKeyedSubscript:v5];
        xpc_dictionary_set_uuid(xdict, "kCBMsgArgDeviceUUID", uuid);
        xpc_dictionary_set_int64(xdict, "kCBMsgArgResult", a3);
        if (!a3)
        {
          if (v7)
          {
            v9 = *(v7 + 24);
          }

          else
          {
            v9 = 0;
          }

          if (qword_100B508B0 != -1)
          {
            sub_10083AEE8();
          }

          v13 = off_100B508A8;
          sub_10004DFB4(buf, v5);
          v14 = sub_1000501F8(v13, buf);
          xpc_dictionary_set_int64(xdict, "kCBMsgArgConnectionRole", v14);
          if (qword_100B541E8 != -1)
          {
            sub_10083B878();
          }

          v15 = sub_1000503B8(qword_100B541E0, v5);
          xpc_dictionary_set_int64(xdict, "kCBMsgArgATTMTU", v15);
          if (v58)
          {
            v16 = 2;
          }

          else
          {
            v16 = 1;
          }

          xpc_dictionary_set_int64(xdict, "kCBMsgArgConnectionTransport", v16);
          if (v9)
          {
            if (qword_100B508B0 != -1)
            {
              sub_10083AEE8();
            }

            v17 = off_100B508A8;
            sub_10004DFB4(buf, v5);
            v18 = sub_100050304(v17, buf);
            xpc_dictionary_set_BOOL(xdict, "kCBMsgArgIsLinkEncrypted", v18);
          }

          if (v7 && *(v7 - 64) >= 1)
          {
            if (qword_100B508D0 != -1)
            {
              sub_10083B158();
            }

            v19 = sub_10005016C(off_100B508C8, v5);
            xpc_dictionary_set_int64(xdict, "kCBMsgArgVisibleInSettings", v19 ^ 1u);
          }

          if (v58)
          {
            v74 = 0;
            v72 = 0u;
            v73 = 0u;
            memset(buf, 0, sizeof(buf));
            if (qword_100B508B0 != -1)
            {
              sub_10083AEE8();
            }

            sub_100740410(off_100B508A8, v5, buf);
            if (*buf)
            {
              v20 = [v59 connectingClients];
              v21 = *&buf[8];
              *&buf[8] = v20;

              if (*(a1 + 472))
              {
                LODWORD(v74) = 1;
              }

              if (*(a1 + 481) == 1)
              {
                LODWORD(v74) = 2;
              }

              if (*(a1 + 482) == 1)
              {
                LODWORD(v74) = 4;
              }

              if (qword_100B508B0 != -1)
              {
                sub_10083AEE8();
              }

              v22 = off_100B508A8;
              v64[0] = *buf;
              v64[1] = *&buf[8];
              v65 = *&buf[16];
              v66 = v72;
              v67 = v73;
              v68 = v74;
              sub_100740538(v22, v5, v64);
            }

            if ((*(a1 + 481) & 1) != 0 || *(a1 + 482) == 1)
            {
              v23 = qword_100BCE988;
              if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
              {
                *v70 = 0;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Disabling pairing with BT device for DA extenstions", v70, 2u);
              }

              v63 = 0;
              if (qword_100B508B0 != -1)
              {
                sub_10083AEE8();
              }

              v24 = off_100B508A8;
              sub_10004DFB4(v70, v5);
              if (sub_1000C4FCC(v24, v70, &v63))
              {
                v70[0] = 0;
                sub_1000216B4(v70);
                sub_1002DA3B0(v63, 0);
                sub_10002249C(v70);
              }
            }

            LODWORD(v63) = 0;
            if (qword_100B50F78 != -1)
            {
              sub_10083B1A8();
            }

            v25 = qword_100B50F70;
            sub_10004DFB4(v70, v5);
            if (!sub_1005807A8(v25, v70, &v63) && v63 == 1)
            {
              v26 = *(a1 + 376);
              if (v26)
              {
                sub_10042BDEC(v26, v5);
              }
            }
          }

          ++*(a1 + 352);
        }

        v27 = qword_100BCE9B8;
        if (os_log_type_enabled(qword_100BCE9B8, OS_LOG_TYPE_DEFAULT))
        {
          v28 = "classic";
          v29 = *(a1 + 88);
          *buf = 138544130;
          if (v58)
          {
            v28 = "le";
          }

          *&buf[4] = v5;
          *&buf[12] = 2114;
          *&buf[14] = v29;
          *&buf[22] = 2082;
          *&buf[24] = v28;
          LOWORD(v72) = 1024;
          *(&v72 + 2) = a3;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "App ready - {cbuuid: %{public}@, bundle: %{public}@, transport: %{public}s, result: %d}", buf, 0x26u);
        }

        if (a3 != 341 && a3 != 348)
        {
          v30 = [v59 connectionUseCase];
          v31 = qword_100BCE988;
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
          {
            v32 = sub_10002B1DC(v30);
            v33 = *(a1 + 88);
            *buf = 136446722;
            *&buf[4] = v32;
            *&buf[12] = 2114;
            *&buf[14] = v5;
            *&buf[22] = 2114;
            *&buf[24] = v33;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "BLE Connection Ready %{public}s %{public}@ for %{public}@", buf, 0x20u);
            v31 = qword_100BCE988;
          }

          if (os_signpost_enabled(v31))
          {
            v34 = sub_10002B1DC(v30);
            v35 = *(a1 + 88);
            *buf = 136446722;
            *&buf[4] = v34;
            *&buf[12] = 2114;
            *&buf[14] = v5;
            *&buf[22] = 2114;
            *&buf[24] = v35;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BTSignPost", "BLE Connection Ready %{public}s %{public}@ for %{public}@", buf, 0x20u);
          }

          if (qword_100B508D0 != -1)
          {
            sub_10083B158();
          }

          v36 = off_100B508C8;
          Current = CFAbsoluteTimeGetCurrent();
          sub_100786E8C(v36, v5, Current);
        }

        if (qword_100B508D0 != -1)
        {
          sub_10083B158();
        }

        v38 = sub_1000500A0(off_100B508C8, v5);
        v40 = a3 == 315 && v38 != 0;

        if (v40)
        {
          v41 = qword_100BCE988;
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v5;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is FindMy but has no valid addresses/keys, parking connection attempt until we get an update", buf, 0xCu);
          }

          if (!v59)
          {
            goto LABEL_103;
          }

          if (qword_100B512F8 != -1)
          {
            sub_10083AC60();
          }

          v42 = sub_1003BF57C(off_100B512F0, a1);
          if (!v42)
          {
            goto LABEL_103;
          }

          v43 = v59;
          *buf = &v69;
          v44 = sub_100506788(a1 + 288, &v69, &unk_1008A9BD0, buf);
          objc_storeStrong(v44 + 5, v59);
          v44[6] = v42;
        }

        else
        {
          v45 = sub_100050F18(xdict);
          sub_100052C08(a1, 92, v45);

          v46 = [v59 connectionUseCase];
          v47 = [v5 UUIDString];
          v48 = v47;
          sub_100007E30(buf, [v47 UTF8String]);
          v49 = sub_10000EEB8(a1 + 424, buf);
          if (buf[23] < 0)
          {
            operator delete(*buf);
          }

          if (v46 != 655360 && v46 != 21 || a3 || a1 + 432 == v49)
          {
            goto LABEL_103;
          }

          v50 = *(v49 + 56);
          v51 = *(v49 + 58);
          v53 = *(v49 + 60);
          v52 = *(v49 + 64);
          v54 = *(v49 + 68);
          v55 = *(v49 + 72);
          v43 = *(v49 + 80);
          (*(**(a1 + 120) + 80))(*(a1 + 120), 0, v43, v50, v55, v53, v51, v52, v54);
          sub_1004FB6F8((a1 + 424), v49);
        }

LABEL_103:
        if (*(a1 + 352) >= 1)
        {
          if (qword_100B512F8 != -1)
          {
            sub_10083AC60();
          }

          sub_1003B2518(off_100B512F0, *(a1 + 88), 1);
        }

        sub_1004FB734(a1, v69);
        xpc_release(xdict);
        if (!a3)
        {
          *v70 = 0;
          LOWORD(v63) = 0;
          v62 = 0;
          v61 = 0;
          if (qword_100B508B0 != -1)
          {
            sub_10083AEE8();
          }

          v56 = off_100B508A8;
          sub_10004DFB4(buf, v69);
          if (!sub_100767968(v56, buf, v70, &v63, &v62 + 1, &v62, &v61))
          {
            v57 = *(a1 + 120);
            if (v57 != 0 && v58)
            {
              (*(*v57 + 224))(v57, 0, v69, *v70, v63, v61);
            }
          }
        }

        v5 = v69;
        goto LABEL_114;
      }

      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
      {
        sub_10083B578();
      }
    }

    else
    {
      v10 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 88);
        v12 = *(a1 + 104);
        *buf = 138412802;
        *&buf[4] = v11;
        *&buf[12] = 2112;
        *&buf[14] = v12;
        *&buf[22] = 2112;
        *&buf[24] = v5;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_10083B7A8();
    }

    v5 = 0;
  }

LABEL_114:
}

uint64_t *sub_1004FB6F8(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_10002717C(a1, a2);
  sub_100506390((a2 + 4));
  operator delete(a2);
  return v3;
}

void sub_1004FB734(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 376);
  if (v4)
  {
    v7 = v3;
    sub_10042BE68(v4, v3);
    v5 = sub_10042BC1C(*(a1 + 376));
    v3 = v7;
    if (!v5)
    {
      v6 = *(a1 + 376);
      if (v6)
      {
        (*(*v6 + 8))(v6, v7);
        v3 = v7;
      }

      *(a1 + 376) = 0;
    }
  }
}

void sub_1004FB7DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 356) == 1)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "kCBMsgArgResult", a3);
    xpc_dictionary_set_uint64(v7, "kCBScanOptionTotalRXTimeMS", a4);
    v8 = sub_100050F18(v7);
    sub_100052C08(a1, 140, v8);

    xpc_release(v7);
    *(a1 + 356) = 0;
  }
}

uint64_t sub_1004FB890(uint64_t a1, void *a2)
{
  v29 = a2;
  v34 = 0;
  v35[0] = 0;
  v35[1] = 0;
  sub_100506F80(&v34, a1 + 288);
  v3 = v34;
  if (v34 != v35)
  {
    do
    {
      v4 = (v3 + 4);
      v5 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
      {
        v6 = *v4;
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "notifyFindMyDevicesUpdated checking device %{public}@", &buf, 0xCu);
      }

      if (qword_100B508D0 != -1)
      {
        sub_10083B158();
      }

      sub_1000AFD60(off_100B508C8, *v4, 2u, &buf);
      v7 = v38;
      sub_10000CEDC(&buf, *(&buf + 1));
      v8 = qword_100BCE988;
      v9 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO);
      if (v7)
      {
        if (v9)
        {
          v10 = *v4;
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v10;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "notifyFindMyDevicesUpdated Device %{public}@ is FindMy and now has valid keys, trying to connect again", &buf, 0xCu);
        }

        *&buf = v3 + 4;
        v11 = sub_100506788(&v34, v3 + 4, &unk_1008A9BD0, &buf);
        v12 = v11[5];
        v13 = v11[6];
        sub_100506E64(a1 + 288, v3 + 4);
        sub_1004F5B74(a1, v13, *v4, v12);
      }

      else if (v9)
      {
        v14 = *v4;
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v14;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "notifyFindMyDevicesUpdated Device %{public}@ is FindMy and still doesnt have valid keys", &buf, 0xCu);
      }

      v15 = v3[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v3[2];
          v17 = *v16 == v3;
          v3 = v16;
        }

        while (!v17);
      }

      v3 = v16;
    }

    while (v16 != v35);
  }

  v18 = *(a1 + 358);
  if (v18)
  {
    v19 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "notifyFindMyDevicesUpdated", &buf, 2u);
    }

    v20 = objc_opt_new();
    v21 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v22 = v29;
    v23 = [v22 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v23)
    {
      v24 = *v31;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v31 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = sub_10005201C(*(*(&v30 + 1) + 8 * i), 0, 1);
          v27 = sub_100050F18(v26);
          [v21 addObject:v27];

          xpc_release(v26);
        }

        v23 = [v22 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v23);
    }

    [v20 setObject:v21 forKeyedSubscript:@"kCBMsgArgDevices"];
    sub_100052C08(a1, 142, v20);
  }

  sub_100079450(&v34, v35[0]);

  return v18;
}

void sub_1004FBC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  sub_100079450(&a21, a22);

  _Unwind_Resume(a1);
}

void sub_1004FBCE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 88);
    v10 = 138543874;
    v11 = v8;
    v12 = 1024;
    v13 = a3;
    v14 = 2048;
    v15 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Scan ended for bundle %{public}@ result:%d totalRXTimeMS:%llu", &v10, 0x1Cu);
  }

  *(a1 + 280) = 0;
  [*(a1 + 320) removeAllObjects];
  sub_1004FB7DC(a1, v9, a3, a4);
}

void sub_1004FBDCC(void *a1, int a2, unsigned int a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v6, "kCBMsgArgResult", a2);
  xpc_dictionary_set_uint64(v6, "kCBLEAudioArgCigId", a3);
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEBUG))
  {
    sub_10083B8A0();
  }

  v7 = sub_100050F18(v6);
  sub_100052C08(a1, 157, v7);

  xpc_release(v6);
}

void sub_1004FBE98(void *a1, int a2, unsigned int a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v6, "kCBMsgArgResult", a2);
  xpc_dictionary_set_uint64(v6, "kCBLEAudioArgCigId", a3);
  v7 = sub_100050F18(v6);
  sub_100052C08(a1, 159, v7);

  xpc_release(v6);
}

void sub_1004FBF48(void *a1, void *a2, unsigned int a3)
{
  v5 = a2;
  v6 = xpc_dictionary_create(0, 0, 0);
  *uuid = 0;
  v9 = 0;
  [v5 getUUIDBytes:uuid];
  xpc_dictionary_set_uuid(v6, "kCBMsgArgDeviceUUID", uuid);
  xpc_dictionary_set_uint64(v6, "kCBMsgArgLEAudioServiceID", a3);
  v7 = sub_100050F18(v6);
  sub_100052C08(a1, 236, v7);

  xpc_release(v6);
}

uint64_t sub_1004FC054(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_1000E74F4();
  }

  if ((sub_10004FF0C(off_100B508C8, v3, *(a1 + 88), *(a1 + 104)) & 1) == 0)
  {
    v6 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 88);
      v8 = *(a1 + 104);
      v10 = 138412802;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v3;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", &v10, 0x20u);
    }

    goto LABEL_11;
  }

  if ((sub_100050B20(a1, v3) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_10083B578();
    }

LABEL_11:
    v5 = 0;
    goto LABEL_14;
  }

  v4 = [*(a1 + 240) objectForKeyedSubscript:v3];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(a1 + 281);
  }

LABEL_14:
  return v5 & 1;
}

void sub_1004FC1F0(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  v6 = *(a1 + 272);
  if (a3)
  {
    [v6 addObject:v5];
  }

  else
  {
    [v6 removeObject:v5];
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  *uuid = 0;
  v32 = 0;
  [v5 getUUIDBytes:uuid];
  v8 = *(a1 + 120);
  if (qword_100B508B0 != -1)
  {
    sub_10083AEE8();
  }

  v9 = off_100B508A8;
  sub_10004DFB4(__p, v5);
  v10 = sub_100050290(v9, __p);
  xpc_dictionary_set_uuid(v7, "kCBMsgArgDeviceUUID", uuid);
  if (v10)
  {
    if (qword_100B508D0 != -1)
    {
      sub_10083B158();
    }

    sub_10004FFDC(off_100B508C8, v5, __p);
    if (v30 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = *__p;
    }

    xpc_dictionary_set_string(v7, "kCBMsgArgName", v11);
    if (v30 < 0)
    {
      operator delete(*__p);
    }

    if (qword_100B508D0 != -1)
    {
      sub_10083B158();
    }

    v12 = off_100B508C8;
    sub_100007E30(v27, "ANCSAuthorized");
    v13 = sub_10004EB40(v12, v5, v27);
    xpc_dictionary_set_BOOL(v7, "kCBMsgArgAncsAuthorization", v13);
    if (v28 < 0)
    {
      operator delete(v27[0]);
    }
  }

  else
  {
    if (qword_100B508D0 != -1)
    {
      sub_10083B158();
    }

    v14 = sub_100046458(off_100B508C8, v5, 0);
    if (!v14 || (v14 & 0xFF000000000000) != 0)
    {
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
      {
        sub_10083B8DC();
      }
    }

    else
    {
      v26[0] = BYTE5(v14);
      v26[1] = BYTE4(v14);
      v26[2] = BYTE3(v14);
      v26[3] = BYTE2(v14);
      v26[4] = BYTE1(v14);
      v26[5] = v14;
      if (qword_100B508F0 != -1)
      {
        sub_10083B2F4();
      }

      v15 = sub_1000E6554(off_100B508E8, v26, 0);
      v16 = v15;
      if (v15)
      {
        sub_1000DEEA4(v15, __p);
        if (v30 >= 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = *__p;
        }

        xpc_dictionary_set_string(v7, "kCBMsgArgName", v17);
        if (v30 < 0)
        {
          operator delete(*__p);
        }

        *__p = 0;
        value = 0;
        v24 = 0;
        if (sub_1000C2364(v16, __p, &value + 1, &value, &v24))
        {
          xpc_dictionary_set_int64(v7, "kCBMsgArgPID", value);
          xpc_dictionary_set_int64(v7, "kCBMsgArgVID", HIDWORD(value));
        }
      }

      else
      {
        v18 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 138543362;
          *&__p[4] = v5;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Could not find a classic device object for %{public}@", __p, 0xCu);
        }
      }
    }
  }

  if (qword_100B508B0 != -1)
  {
    sub_10083AEE8();
  }

  v19 = off_100B508A8;
  sub_10004DFB4(__p, v5);
  v20 = sub_1000501F8(v19, __p);
  xpc_dictionary_set_int64(v7, "kCBMsgArgConnectionRole", v20);
  if (qword_100B541E8 != -1)
  {
    sub_10083B878();
  }

  v21 = sub_1000503B8(qword_100B541E0, v5);
  xpc_dictionary_set_int64(v7, "kCBMsgArgATTMTU", v21);
  if (a3)
  {
    if (v10)
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    xpc_dictionary_set_int64(v7, "kCBMsgArgConnectionTransport", v22);
  }

  xpc_dictionary_set_int64(v7, "kCBMsgArgConnectionEvent", a3);
  if (v8)
  {
    if (*(v8 - 64) >= 1)
    {
      if (qword_100B508D0 != -1)
      {
        sub_10083B158();
      }

      v23 = sub_10005016C(off_100B508C8, v5);
      xpc_dictionary_set_int64(v7, "kCBMsgArgVisibleInSettings", v23 ^ 1u);
    }

    sub_10004DFB8(v8 - 144, 101, v7, 1);
  }

  else
  {
    xpc_release(v7);
  }

  if (*(a1 + 352))
  {
    if (qword_100B512F8 != -1)
    {
      sub_10083AC60();
    }

    sub_1003B2518(off_100B512F0, *(a1 + 88), 1);
  }
}

void sub_1004FC6C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1004FC738(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  --*(a1 + 352);
  v8 = *(a1 + 120);
  if (v8 && *(v8 - 64) >= 1)
  {
    if (qword_100B508D0 != -1)
    {
      sub_1000E74F4();
    }

    v9 = sub_10005016C(off_100B508C8, v7) ^ 1;
  }

  else
  {
    if (a3 == 182)
    {
      a3 = 1;
    }

    else
    {
      a3 = a3;
    }

    v9 = 1;
  }

  v19 = 0;
  sub_1000D42DC(&v19 + 1, &v19);
  if (qword_100B508D0 != -1)
  {
    sub_10083B158();
  }

  v10 = sub_100786AA0(off_100B508C8, v7);
  if (v10)
  {
    v11 = ((1000 * HIDWORD(v19) - v10 + v19 / 1000) / 0x3E8u);
  }

  else
  {
    v11 = 0.0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v21[0] = v7;
  v20[0] = @"kCBMsgArgDeviceUUID";
  v20[1] = @"kCBMsgArgResult";
  v13 = [NSNumber numberWithInt:a3];
  v21[1] = v13;
  v20[2] = @"kCBMsgArgVisibleInSettings";
  v14 = [NSNumber numberWithUnsignedLongLong:v9];
  v21[2] = v14;
  v20[3] = @"kCBDisconnectInfoTimestamp";
  v15 = [NSNumber numberWithDouble:Current - v11];
  v21[3] = v15;
  v20[4] = @"kCBDisconnectInfoIsReconnecting";
  v16 = [NSNumber numberWithBool:a4];
  v21[4] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:5];

  if (_os_feature_enabled_impl() && (v18 = *(a1 + 192)) != 0 && ([v18 containsObject:v7] & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_10083B94C();
    }
  }

  else if (sub_100052C08(a1, 94, v17))
  {
    (*(**(a1 + 120) + 16))(*(a1 + 120), 0, v7, a3);
  }

  if (qword_100B508D0 != -1)
  {
    sub_10083B158();
  }

  sub_10078D898(off_100B508C8, v7, 0);
  if (!*(a1 + 352))
  {
    if (qword_100B512F8 != -1)
    {
      sub_10083AC60();
    }

    sub_1003B2518(off_100B512F0, *(a1 + 88), 0);
  }

  sub_1004FB734(a1, v7);
}

id sub_1004FCAE4(uint64_t a1)
{
  if (*(a1 + 24) == 1 && *(a1 + 96) && (*(*a1 + 40))(a1))
  {
    v2 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v2 encodeObject:*(a1 + 88) forKey:@"bundleIdentifier"];
    [v2 encodeObject:*(a1 + 96) forKey:@"restoreIdentifier"];
    [v2 encodeObject:*(a1 + 320) forKey:@"servicesToScan"];
    [v2 encodeBool:*(a1 + 280) forKey:@"isScanning"];
    [v2 encodeBool:*(a1 + 282) forKey:@"isContactTracingScan"];
    v3 = objc_alloc_init(NSMutableSet);
    v4 = [*(a1 + 312) copy];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v34 count:16];
    if (v6)
    {
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          *buf = 0;
          *&buf[8] = 0;
          [v9 getUUIDBytes:{buf, v19}];
          v10 = [NSData dataWithBytes:buf length:16];
          [v3 addObject:v10];
        }

        v6 = [v5 countByEnumeratingWithState:&v19 objects:v34 count:16];
      }

      while (v6);
    }

    [v2 encodeObject:v3 forKey:@"peripherals"];
    v11 = qword_100BCE9E0;
    if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 88);
      v13 = *(a1 + 96);
      v14 = *(a1 + 320);
      v15 = "False";
      if (*(a1 + 280))
      {
        v15 = "True";
      }

      if (*(a1 + 282))
      {
        v16 = "YES";
      }

      else
      {
        v16 = "NO";
      }

      *buf = 138413826;
      *&buf[4] = v2;
      *&buf[12] = 2114;
      *&buf[14] = v12;
      v24 = 2114;
      v25 = v13;
      v26 = 2114;
      v27 = v14;
      v28 = 2114;
      v29 = v3;
      v30 = 2082;
      v31 = v15;
      v32 = 2082;
      v33 = v16;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Saving Central restoration data: %@ - bundleId %{public}@, restorationId: %{public}@, servicesToScan: %{public}@, peripherals: %{public}@, isScanning: %{public}s, fIsContactTracingScanning:%{public}s", buf, 0x48u);
    }

    v17 = [v2 encodedData];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t sub_1004FCE54(uint64_t a1, void *a2)
{
  v3 = a2;
  v55 = v3;
  if (v3)
  {
    v66 = 0;
    v4 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v3 error:&v66];
    v53 = v66;
    v5 = qword_100BCE9E0;
    if (v4)
    {
      if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v68 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Restoring Central restoration data: %@", buf, 0xCu);
      }

      v54 = v4;
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
      v7 = *(a1 + 88);
      *(a1 + 88) = v6;

      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"restoreIdentifier"];
      v9 = *(a1 + 96);
      *(a1 + 96) = v8;

      if (*(a1 + 88) && *(a1 + 96))
      {
        v81[0] = objc_opt_class();
        v81[1] = objc_opt_class();
        v10 = [NSArray arrayWithObjects:v81 count:2];
        v11 = [NSSet setWithArray:v10];
        v51 = [v4 decodeObjectOfClasses:v11 forKey:@"servicesToScan"];

        v12 = v51;
        if (v51)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v51;
          }

          else
          {
            if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_ERROR))
            {
              sub_10083B9BC();
            }

            v12 = 0;
          }
        }

        v65 = 0u;
        v63 = 0u;
        v64 = 0u;
        v62 = 0u;
        v14 = v12;
        v15 = [v14 countByEnumeratingWithState:&v62 objects:v80 count:16];
        v52 = v14;
        if (v15)
        {
          v16 = *v63;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v63 != v16)
              {
                objc_enumerationMutation(v14);
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_ERROR))
                {
                  sub_10083B9F8();
                }

                v52 = 0;
                goto LABEL_32;
              }
            }

            v15 = [v14 countByEnumeratingWithState:&v62 objects:v80 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }

          v52 = v14;
        }

LABEL_32:

        v18 = [v52 mutableCopy];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = objc_alloc_init(NSMutableSet);
        }

        v21 = *(a1 + 320);
        *(a1 + 320) = v20;

        *(a1 + 280) = [v54 decodeBoolForKey:@"isScanning"];
        if ([*(a1 + 320) count] && (*(a1 + 280) & 1) == 0)
        {
          if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_ERROR))
          {
            sub_10083BA34();
          }

          v13 = 0;
        }

        else
        {
          *(a1 + 282) = [v54 decodeBoolForKey:@"isContactTracingScan"];
          v22 = objc_opt_new();
          v23 = *(a1 + 312);
          *(a1 + 312) = v22;

          sub_100079450(a1 + 288, *(a1 + 296));
          *(a1 + 296) = 0;
          *(a1 + 304) = 0;
          *(a1 + 288) = a1 + 296;
          v79[0] = objc_opt_class();
          v79[1] = objc_opt_class();
          v24 = [NSArray arrayWithObjects:v79 count:2];
          v25 = [NSSet setWithArray:v24];
          v26 = [v54 decodeObjectOfClasses:v25 forKey:@"peripherals"];

          sub_1000794B4(a1 + 424, *(a1 + 432));
          *(a1 + 432) = 0;
          *(a1 + 440) = 0;
          *(a1 + 424) = a1 + 432;
          if (v26)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_ERROR))
              {
                sub_10083BA70();
              }

              v26 = 0;
            }
          }

          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v27 = v26;
          v28 = [v27 countByEnumeratingWithState:&v58 objects:v78 count:16];
          if (v28)
          {
            v29 = *v59;
            while (2)
            {
              v30 = 0;
              do
              {
                if (*v59 != v29)
                {
                  objc_enumerationMutation(v27);
                }

                v31 = *(*(&v58 + 1) + 8 * v30);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_ERROR))
                  {
                    sub_10083BAAC();
                  }

                  goto LABEL_71;
                }

                if ([v31 length] == 16)
                {
                  v32 = [NSUUID alloc];
                  v33 = v31;
                  v34 = [v32 initWithUUIDBytes:{objc_msgSend(v31, "bytes")}];
                  if (qword_100B512F8 != -1)
                  {
                    sub_10083AC60();
                  }

                  v35 = sub_1003AD784(off_100B512F0, *(a1 + 88));
                  if (qword_100B508C0 != -1)
                  {
                    sub_10083B37C();
                  }

                  v36 = sub_10004EE74(off_100B508B8, v34);
                  if (qword_100B508D0 != -1)
                  {
                    sub_10083B158();
                  }

                  v37 = off_100B508C8;
                  sub_100007E30(__p, "DA_ASK_RETAIN_DEVICE");
                  v38 = sub_10004EB40(v37, v34, __p);
                  if (v57 < 0)
                  {
                    operator delete(__p[0]);
                  }

                  v39 = qword_100BCE9E0;
                  if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
                  {
                    v40 = *(a1 + 88);
                    *buf = 138544130;
                    v68 = v40;
                    v69 = 1024;
                    *v70 = v35;
                    *&v70[4] = 1024;
                    *&v70[6] = v36;
                    LOWORD(v71) = 1024;
                    *(&v71 + 2) = v38;
                    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Restoring data for app %{public}@ isAppAuthorized: %d, isLeDevicePaired %d isDeviceForDA %d", buf, 0x1Eu);
                  }

                  if ((v35 | v36 | v38))
                  {
                    [*(a1 + 312) addObject:v34];
                  }

                  else
                  {
                    if (qword_100B508D0 != -1)
                    {
                      sub_10083B158();
                    }

                    v41 = sub_100046458(off_100B508C8, v34, 0);
                    v42 = qword_100BCE9E0;
                    if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_INFO))
                    {
                      v43 = *(a1 + 88);
                      *buf = 138543618;
                      v68 = v43;
                      v69 = 2048;
                      *v70 = v41;
                      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "Not adding app %{public}@ peripheral device %llu ", buf, 0x16u);
                    }
                  }
                }

                v30 = v30 + 1;
              }

              while (v28 != v30);
              v28 = [v27 countByEnumeratingWithState:&v58 objects:v78 count:16];
              if (v28)
              {
                continue;
              }

              break;
            }
          }

LABEL_71:

          v44 = qword_100BCE9E0;
          if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_INFO))
          {
            v45 = *(a1 + 88);
            v46 = *(a1 + 96);
            v47 = *(a1 + 320);
            if (*(a1 + 280))
            {
              v48 = "True";
            }

            else
            {
              v48 = "False";
            }

            if (*(a1 + 282))
            {
              v49 = "YES";
            }

            else
            {
              v49 = "NO";
            }

            *buf = 138544642;
            v68 = v45;
            v69 = 2114;
            *v70 = v46;
            *&v70[8] = 2114;
            v71 = v47;
            v72 = 2114;
            v73 = v27;
            v74 = 2082;
            v75 = v48;
            v76 = 2082;
            v77 = v49;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "Central Restoring - bundleId %{public}@, restorationId: %{public}@, servicesToScan: %{public}@, peripherals: %{public}@, isScanning: %{public}s, fIsContactTracingScanning:%{public}s", buf, 0x3Eu);
          }

          *(a1 + 189) = 1;

          v13 = 1;
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_ERROR))
        {
          sub_10083BAE8();
        }

        v13 = 0;
      }

      v4 = v54;
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_ERROR))
      {
        sub_10083BB24();
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_1004FD840(uint64_t a1, void *a2)
{
  if (*(a1 + 189))
  {
    *(a1 + 189) = 0;
    if ([*(a1 + 320) count])
    {
      operator new();
    }

    v3 = [*(a1 + 312) copy];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = *v16;
      do
      {
        v7 = 0;
        do
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v15 + 1) + 8 * v7);
          if (_os_feature_enabled_impl() && (v9 = *(a1 + 192)) != 0 && ([v9 containsObject:v8] & 1) == 0)
          {
            v11 = qword_100BCE988;
            if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
            {
              v12 = *(a1 + 88);
              buf = 138412546;
              *buf_4 = v8;
              v22 = 2112;
              v23 = v12;
              _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@ is not allowed for %@, removing from connect list", &buf, 0x16u);
            }

            [*(a1 + 312) removeObject:v8];
          }

          else
          {
            v10 = [ConnectOptions alertOptionsWithConnectionAlerts:1 disconnectionAlerts:1 notificationAlerts:1 delay:0 bridgeTransport:0];
            sub_1004F5B74(a1, a2, v8, v10);
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v13 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v5 = v13;
      }

      while (v13);
    }
  }

  else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
  {
    sub_10083BB94();
  }
}

void sub_1004FDCE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  v27 = *(v25 - 128);
  if (v27)
  {
    *(v25 - 120) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

id sub_1004FDD78(uint64_t a1, unint64_t a2)
{
  v4 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 88);
    *buf = 138543362;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Clear all state for session %{public}@", buf, 0xCu);
  }

  sub_1004F8514(a1);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = *(a1 + 224);
  v6 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v6)
  {
    v39 = *v44;
    *&v7 = 138543618;
    v37 = v7;
    do
    {
      v8 = 0;
      v40 = v6;
      do
      {
        if (*v44 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v43 + 1) + 8 * v8);
        if (*(a1 + 44) == 1)
        {
          if (qword_100B54208 != -1)
          {
            sub_10083AD7C();
          }

          v10 = qword_100B54200;
          v11 = [*(a1 + 224) objectForKeyedSubscript:{v9, v37}];
          sub_1007F1090(v10, a2, v9, v11);
        }

        v12 = [*(a1 + 224) objectForKeyedSubscript:{v9, v37}];
        v13 = [v12 isLatencyCritical];

        if (v13)
        {
          sub_1004F8514(a1);
        }

        v50 = 0u;
        v51 = 0u;
        *buf = 0u;
        sub_100007E30(__p, [*(a1 + 88) UTF8String]);
        sub_1005796F0(buf, __p, *(a1 + 129), v9);
        if (v48 < 0)
        {
          operator delete(*__p);
        }

        if (qword_100B541F8 != -1)
        {
          sub_10083B440();
        }

        v14 = sub_10000EFDC(qword_100B541F0, buf);
        v16 = sub_100432718(v14, v15);
        sub_100018384(a2, __p);
        if (v48 >= 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = *__p;
        }

        (**v16)(v16, v17, 0, v9);
        if (v48 < 0)
        {
          operator delete(*__p);
        }

        sub_100018384(a2, __p);
        v18 = v48;
        if (v48 >= 0)
        {
          v19 = __p;
        }

        else
        {
          v19 = *__p;
        }

        if (v48 >= 0)
        {
          v20 = v48;
        }

        else
        {
          v20 = *&__p[8];
        }

        if (v20 < 20)
        {
          v21 = 0;
          goto LABEL_43;
        }

        v22 = a2;
        v23 = &v19[v20];
        v24 = v19;
        while (1)
        {
          v25 = memchr(v24, 99, v20 - 19);
          if (!v25)
          {
LABEL_41:
            v21 = 0;
LABEL_42:
            a2 = v22;
            goto LABEL_43;
          }

          v26 = *v25 == 0x6C7070612E6D6F63 && v25[1] == 0x6F7465756C622E65;
          if (v26 && *(v25 + 4) == 1684567151)
          {
            break;
          }

          v24 = v25 + 1;
          v20 = v23 - v24;
          if (v23 - v24 < 20)
          {
            goto LABEL_41;
          }
        }

        v21 = 0;
        if (v25 == v23)
        {
          goto LABEL_42;
        }

        a2 = v22;
        if (v25 - v19 != -1)
        {
          if (qword_100B508D0 != -1)
          {
            sub_10083B158();
          }

          sub_1000B006C(off_100B508C8, v9, v41);
          v34 = v41[1];
          if (v42 >= 0)
          {
            v34 = v42;
          }

          v21 = v34 != 0;
          if ((v42 & 0x8000000000000000) != 0)
          {
            operator delete(v41[0]);
          }

          v18 = v48;
        }

LABEL_43:
        if (v18 < 0)
        {
          operator delete(*__p);
          if (v21)
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (!v21)
          {
            goto LABEL_50;
          }

LABEL_47:
          if (qword_100B508B0 != -1)
          {
            sub_10083AEE8();
          }

          v28 = off_100B508A8;
          sub_10004DFB4(__p, v9);
          sub_10074EB78(v28, __p);
        }

LABEL_50:
        v29 = [*(a1 + 224) objectForKeyedSubscript:v9];
        v30 = v29;
        if (v29 && [v29 requiresLowLatency])
        {
          if (qword_100B508B0 != -1)
          {
            sub_10083AEE8();
          }

          v31 = off_100B508A8;
          sub_10004DFB4(__p, v9);
          sub_10074EB78(v31, __p);
        }

        v32 = qword_100BCE9B8;
        if (os_log_type_enabled(qword_100BCE9B8, OS_LOG_TYPE_DEFAULT))
        {
          v33 = *(a1 + 88);
          *__p = v37;
          *&__p[4] = v9;
          *&__p[12] = 2114;
          *&__p[14] = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "App disconnecting - {cbuuid: %{public}@, bundle: %{public}@}", __p, 0x16u);
        }

        if (SHIBYTE(v50) < 0)
        {
          operator delete(*&buf[8]);
        }

        v8 = v8 + 1;
      }

      while (v8 != v40);
      v6 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v6);
  }

  [*(a1 + 224) removeAllObjects];
  [*(a1 + 232) removeAllObjects];
  [*(a1 + 80) removeAllObjects];
  [*(a1 + 384) removeAllObjects];
  sub_1004F576C(a1, v35);
  sub_10005CFE4(a1 + 392, *(a1 + 400));
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 392) = a1 + 400;
  [*(a1 + 312) removeAllObjects];
  sub_100079450(a1 + 288, *(a1 + 296));
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = a1 + 296;
  sub_1000794B4(a1 + 424, *(a1 + 432));
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 424) = a1 + 432;
  return sub_100023D10(a1, a2);
}

id sub_1004FE3D0(uint64_t a1, unint64_t a2)
{
  v3 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 88);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clear for system sleep for central session %{public}@", &buf, 0xCu);
  }

  sub_1004F8514(a1);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [*(a1 + 224) allKeys];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v21 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        if (qword_100B508B0 != -1)
        {
          sub_10083AEE8();
        }

        v10 = off_100B508A8;
        sub_10004DFB4(v20, v9);
        if (sub_100050290(v10, v20))
        {
          if (qword_100B508D0 != -1)
          {
            sub_10083B158();
          }

          sub_1000B006C(off_100B508C8, v9, &buf);
          if (v19 >= 0)
          {
            v11 = v19;
          }

          else
          {
            v11 = *(&buf + 1);
          }

          if ((v19 & 0x8000000000000000) != 0)
          {
            operator delete(buf);
            if (!v11)
            {
              goto LABEL_21;
            }

LABEL_20:
            [*(a1 + 224) removeObjectForKey:v9];
            goto LABEL_21;
          }

          if (v11)
          {
            goto LABEL_20;
          }
        }

LABEL_21:
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v14 objects:v21 count:16];
    }

    while (v6);
  }

  [*(a1 + 232) removeAllObjects];
  [*(a1 + 80) removeAllObjects];
  [*(a1 + 312) removeAllObjects];
  sub_100079450(a1 + 288, *(a1 + 296));
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = a1 + 296;
  sub_1000794B4(a1 + 424, *(a1 + 432));
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 424) = a1 + 432;
  return sub_100023D10(a1, a2);
}

void sub_1004FE650(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v12[0] = v7;
  v11[0] = @"kCBMsgArgDeviceUUID";
  v11[1] = @"kCBMsgArgServiceStartHandle";
  v8 = [NSNumber numberWithUnsignedShort:a3];
  v12[1] = v8;
  v11[2] = @"kCBMsgArgServiceEndHandle";
  v9 = [NSNumber numberWithUnsignedShort:a4];
  v12[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  sub_100052C08(a1, 190, v10);
}

void sub_1004FE798(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  v12 = sub_10000C5F8(a4);
  v13 = [NSData dataWithBytes:v12 length:sub_10000C5E0(a4)];
  v18[0] = @"kCBMsgArgResult";
  v14 = [NSNumber numberWithInt:a6];
  v19[0] = v14;
  v19[1] = v11;
  v18[1] = @"kCBMsgArgDeviceUUID";
  v18[2] = @"kCBMsgArgCharacteristicHandle";
  v15 = [NSNumber numberWithUnsignedShort:a3];
  v19[2] = v15;
  v19[3] = v13;
  v18[3] = @"kCBMsgArgData";
  v18[4] = @"kCBMsgArgTimestamp";
  v16 = [NSNumber numberWithUnsignedLongLong:a5];
  v19[4] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:5];

  sub_100052C08(a1, 208, v17);
}

id sub_1004FE97C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableString);
  v3 = sub_1004F4F74(a1);
  [v2 appendString:v3];

  v4 = *(a1 + 376);
  if (v4)
  {
    v5 = sub_10042BF54(v4);
    [v2 appendFormat:@"Pending Catt Connections: %@\n", v5];
  }

  return v2;
}

void sub_1004FEA1C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1004FEA48(uint64_t a1, int a2, int a3)
{
  *(a1 + 480) = a2;
  *(a1 + 36) = 0;
  if (a3)
  {
    if (qword_100B512F8 != -1)
    {
      sub_10083AC88();
    }

    v5 = sub_1003BF57C(off_100B512F0, a1);
    v6 = *(a1 + 88);
    if (v5)
    {
      sub_100018384(v5, __p);
      if (v15 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = *__p;
      }

      v8 = [NSString stringWithUTF8String:v7];

      if (SHIBYTE(v15) < 0)
      {
        operator delete(*__p);
      }

      v6 = v8;
    }

    if (a2)
    {
      v9 = _os_feature_enabled_impl();
    }

    else
    {
      v9 = 0;
    }

    *(a1 + 36) = v9;
    *(a1 + 37) = v9;
    v10 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 138413058;
      *&__p[4] = v6;
      v12 = 1024;
      v13 = a2;
      v14 = 1024;
      v15 = 1;
      v16 = 1024;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setDeviceAccessSessionStarted session:%@ started:%d powerOnInRestrictedMode:%d fNeedsRestrictedStateOperation:%d", __p, 0x1Eu);
    }
  }
}

void sub_1004FEC1C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (_os_feature_enabled_impl())
  {
    v5 = objc_opt_new();
    v6 = *(a1 + 192);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1004FEEE4;
    v14[3] = &unk_100AFAA28;
    v7 = v4;
    v15 = v7;
    v8 = v5;
    v16 = v8;
    [v6 enumerateObjectsUsingBlock:v14];
    objc_storeStrong((a1 + 192), a2);
    if (qword_100B512F8 != -1)
    {
      sub_10083AC60();
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1004FEF58;
    v13[3] = &unk_100AFAA48;
    v13[4] = sub_1003BF57C(off_100B512F0, a1);
    [v8 enumerateObjectsUsingBlock:v13];
    v9 = [*(a1 + 192) count];
    *(a1 + 480) = v9 != 0;
    v10 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = v7;
      v19 = 1024;
      v20 = v9 != 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "configureDeviceAccessSessionWithLimits devices:%@ sessionStarted:%d", buf, 0x12u);
    }

    if (qword_100B512F8 != -1)
    {
      sub_10083AC60();
    }

    v11 = off_100B512F0;
    if (qword_100B512C8 != -1)
    {
      sub_10083BC18();
    }

    v12 = sub_10000EE78(off_100B512C0);
    sub_1003ABF1C(v11, a1, v12);
    sub_1004FEA48(a1, *(a1 + 480), 1);
  }
}

void sub_1004FEEE4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

void sub_1004FEF58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "configureDeviceAccessSessionWithLimits disconnecting device %@", &v5, 0xCu);
  }

  if (qword_100B512F8 != -1)
  {
    sub_10083AC60();
  }

  sub_1003B217C(off_100B512F0, *(a1 + 32), v3, 0, 1, 0);
}

void sub_1004FF060(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6)
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (_os_feature_enabled_impl())
  {
    v16 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412546;
      v28 = v12;
      v29 = 1024;
      v30 = a2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "configureDeviceAccessSessionWithLimits devices:%@ sessionStarted:%d", &v27, 0x12u);
    }

    if (a2)
    {
      objc_storeStrong((a1 + 192), a3);
      objc_storeStrong((a1 + 200), a4);
      objc_storeStrong((a1 + 208), a5);
      v17 = v15;
    }

    else
    {
      v18 = +[NSArray array];
      v19 = *(a1 + 192);
      *(a1 + 192) = v18;

      v20 = +[NSArray array];
      v21 = *(a1 + 200);
      *(a1 + 200) = v20;

      v22 = +[NSArray array];
      v23 = *(a1 + 208);
      *(a1 + 208) = v22;

      v17 = +[NSArray array];
    }

    v24 = *(a1 + 216);
    *(a1 + 216) = v17;

    if (qword_100B512F8 != -1)
    {
      sub_10083AC60();
    }

    v25 = off_100B512F0;
    if (qword_100B512C8 != -1)
    {
      sub_10083BC18();
    }

    v26 = sub_10000EE78(off_100B512C0);
    sub_1003ABF1C(v25, a1, v26);
    *(a1 + 480) = a2;
    *(a1 + 36) = 0;
  }
}

uint64_t sub_1004FF2A4(uint64_t a1, uint64_t a2)
{
  if (((*(a1 + 482) & 1) != 0 || _os_feature_enabled_impl() && *(a1 + 472)) && !_os_feature_enabled_impl())
  {
    return 1;
  }

  if (!*(a1 + 200))
  {
    return 1;
  }

  sub_10003A364(v17);
  if (!LOBYTE(v17[0]))
  {
    return 1;
  }

  sub_10003B85C(a2, v17);
  if (v18 >= 0)
  {
    v4 = v17;
  }

  else
  {
    v4 = v17[0];
  }

  v5 = [NSString stringWithUTF8String:v4];
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = *(a1 + 200);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v12 + 1) + 8 * v9) isEqualToString:{v5, v12}])
        {

          v10 = 1;
          goto LABEL_25;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
  {
    sub_10083BC40();
  }

  v10 = 0;
LABEL_25:

  return v10;
}

void sub_1004FF4D0(uint64_t a1)
{
  v2 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 88);
    v4 = *(a1 + 472);
    *buf = 138412546;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "registerForDeviceAccessForMedia:%@ fDeviceAccessSession:%@", buf, 0x16u);
  }

  if (*(a1 + 472))
  {
    v5 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Already registered", buf, 2u);
    }
  }

  else
  {
    *(a1 + 480) = 0;
    *(a1 + 36) = 0;
    v6 = objc_alloc_init(DASession);
    v7 = *(a1 + 472);
    *(a1 + 472) = v6;

    v8 = [*(a1 + 472) setBundleID:*(a1 + 88)];
    [*(a1 + 472) setDispatchQueue:{*(sub_100007EE8(v8, v9) + 8)}];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1004FF6C0;
    v12[3] = &unk_100AFAA88;
    v12[4] = a1;
    [*(a1 + 472) setEventHandler:v12];
    v10 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 88);
      *buf = 138412290;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Session now registering for deviceAccess with bundle ID %@", buf, 0xCu);
    }

    [*(a1 + 472) activate];
  }
}

void sub_1004FF6C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 eventType];
  if (v5 <= 29)
  {
    if (v5 == 10)
    {
      v14 = qword_100BCE988;
      if (!os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      v19 = *(v4 + 88);
      *buf = 138412290;
      v34 = v19;
      v16 = "DAEventTypeActivated for bundleID %@";
    }

    else
    {
      if (v5 != 20)
      {
        goto LABEL_22;
      }

      v14 = qword_100BCE988;
      if (!os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      v15 = *(v4 + 88);
      *buf = 138412290;
      v34 = v15;
      v16 = "DAEventTypeInvalidated for bundleID %@";
    }

LABEL_21:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
    goto LABEL_22;
  }

  switch(v5)
  {
    case 30:
      v14 = qword_100BCE988;
      if (!os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        break;
      }

      v17 = *(v4 + 88);
      *buf = 138412290;
      v34 = v17;
      v16 = "DAEventTypeSessionStarted for bundleID %@";
      goto LABEL_21;
    case 31:
      v14 = qword_100BCE988;
      if (!os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        break;
      }

      v18 = *(v4 + 88);
      *buf = 138412290;
      v34 = v18;
      v16 = "DAEventTypeSessionEnded for bundleID %@";
      goto LABEL_21;
    case 42:
      v6 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(v4 + 88);
        *buf = 138412290;
        v34 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DAEventTypeDeviceChanged for bundleID %@", buf, 0xCu);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v3;
        v9 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(v4 + 88);
          v11 = [v8 device];
          [v11 state];
          v12 = DADeviceStateToString();
          if (_os_feature_enabled_impl())
          {
            v13 = *(v4 + 480);
          }

          else
          {
            v13 = 0;
          }

          *buf = 138412802;
          v34 = v10;
          v35 = 2112;
          v36 = v12;
          v37 = 1024;
          v38 = v13;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DAEventTypeDeviceChanged for bundleID %@ eventDevice.device.state:%@ isDeviceAccessSessionActive:%d", buf, 0x1Cu);
        }

        v20 = [v8 device];
        if ([v20 state] != 10)
        {
          v21 = [v8 device];
          if ([v21 state] != 20)
          {
            v23 = [v8 device];
            v24 = [v23 state] == 25;

            if (!v24)
            {
              v25 = [v8 device];
              if ([v25 state] || !_os_feature_enabled_impl())
              {
              }

              else
              {
                v26 = *(v4 + 480);

                if (v26)
                {
                  v29 = sub_100007EE8(v27, v28);
                  v31[0] = _NSConcreteStackBlock;
                  v31[1] = 3221225472;
                  v31[2] = sub_100500018;
                  v31[3] = &unk_100ADF8F8;
                  v31[4] = v4;
                  sub_10000CA94(v29, v31);
                  goto LABEL_30;
                }
              }

              v30 = qword_100BCE988;
              if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Ignoring event", buf, 2u);
              }

              goto LABEL_30;
            }

LABEL_29:
            v22 = *(v4 + 472);
            v32[0] = _NSConcreteStackBlock;
            v32[1] = 3221225472;
            v32[2] = sub_1004FFC14;
            v32[3] = &unk_100AFAA68;
            v32[4] = v4;
            [v22 getBluetoothAccessInfoWithCompletionHandler:v32];
LABEL_30:

            break;
          }
        }

        goto LABEL_29;
      }

      break;
  }

LABEL_22:
}

uint64_t sub_1004FFBCC(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    v2 = *(a1 + 480);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_1004FFC14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = +[NSMutableArray array];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = [v5 bluetoothDevices];
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v44 count:16];
  if (v10)
  {
    v11 = *v31;
    do
    {
      v12 = 0;
      do
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [*(*(&v30 + 1) + 8 * v12) identifier];
        [v8 addObject:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v30 objects:v44 count:16];
    }

    while (v10);
  }

  v14 = [NSSet setWithArray:v8];
  v15 = [NSSet setWithArray:*(v7 + 192)];
  v16 = [v14 isEqualToSet:v15];

  v17 = v16 ^ 1;
  v18 = qword_100BCE988;
  v19 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    v21 = CUPrintNSObjectOneLine();
    if (_os_feature_enabled_impl())
    {
      v22 = *(v7 + 480);
    }

    else
    {
      v22 = 0;
    }

    v23 = CUPrintNSObjectOneLine();
    *buf = 138413314;
    v35 = v21;
    v36 = 2112;
    v37 = v6;
    v38 = 1024;
    v39 = v17;
    v40 = 1024;
    v41 = v22;
    v42 = 2112;
    v43 = v23;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "getBluetoothAccessInfoWithCompletionHandler accessInfo:%@ error:%@ devicesChanged:%d previousPoweredOn:%d previousAllowed:%@", buf, 0x2Cu);
  }

  v24 = sub_100007EE8(v19, v20);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1004FFF7C;
  v26[3] = &unk_100AF7DC8;
  v28 = v7;
  v29 = v17;
  v25 = v8;
  v27 = v25;
  sub_10000CA94(v24, v26);
}

void sub_1004FFF7C(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 40);
    if (_os_feature_enabled_impl() && *(v3 + 480) == 1)
    {
      sub_1004FF060(v3, 0, 0, 0, 0, 0);
    }

    v4 = *(a1 + 32);

    sub_1004FF060(v3, 1, v4, 0, 0, 0);
  }
}

void sub_100500034(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(v1 + 472) setEventHandler:0];
  [*(v1 + 472) invalidate];
  v2 = *(v1 + 472);
  *(v1 + 472) = 0;
}

void sub_100500080(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    v2 = *(a1 + 472);
    if (v2)
    {
      v3 = [v2 availableDevices];
      v4 = +[NSMutableArray array];
      [*(a1 + 472) bundleID];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100500354;
      v5 = v20[3] = &unk_100AFAAB0;
      v21 = v5;
      v6 = v4;
      v22 = v6;
      [v3 enumerateObjectsUsingBlock:v20];
      v7 = [NSSet setWithArray:v6];
      v8 = [NSSet setWithArray:*(a1 + 192)];
      v9 = [v7 isEqualToSet:v8];

      v10 = qword_100BCE988;
      v11 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        v13 = *(a1 + 192);
        *buf = 67109634;
        v24 = v9 ^ 1;
        v25 = 2112;
        v26 = v6;
        v27 = 2112;
        v28 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "refreshAllowedDevicesForApp changed:%d devices:%@ oldDevices:%@", buf, 0x1Cu);
      }

      v14 = sub_100007EE8(v11, v12);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1005004A8;
      v16[3] = &unk_100AF7DC8;
      v18 = a1;
      v19 = v9 ^ 1;
      v15 = v6;
      v17 = v15;
      sub_10000CA94(v14, v16);
    }
  }
}

void sub_100500354(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 appAccessInfoMap];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  v5 = [v4 state];

  v6 = [v12 appAccessInfoMap];
  v7 = [v6 objectForKeyedSubscript:*(a1 + 32)];
  v8 = [v7 accessoryOptions];

  if ([v12 flags] & 8) != 0 && (v8)
  {
    v9 = [v12 bluetoothIdentifier];
    if (v9)
    {

      if (v5 == 25 || v5 == 20)
      {
        v10 = *(a1 + 40);
        v11 = [v12 bluetoothIdentifier];
        [v10 addObject:v11];
      }
    }
  }
}

void *sub_1005004A8(void *result)
{
  if (*(result + 48) == 1)
  {
    v1 = result;
    v2 = result[5];
    v3 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      if (_os_feature_enabled_impl())
      {
        v4 = *(v2 + 480);
      }

      else
      {
        v4 = 0;
      }

      v5 = [v1[4] count];
      v7[0] = 67109376;
      v7[1] = v4;
      v8 = 2048;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "refreshAllowedDevicesForApp isDeviceAccessSessionActive:%d allowedDevices.count:%ld", v7, 0x12u);
    }

    if (_os_feature_enabled_impl() && *(v2 + 480) == 1 && !*(v2 + 120) && (*(v2 + 189) & 1) == 0 && ![*(v2 + 192) count])
    {
      if (qword_100B512F8 != -1)
      {
        sub_10083AC60();
      }

      v6 = sub_1003BF57C(off_100B512F0, v2);
      if (qword_100B512F8 != -1)
      {
        sub_10083AC60();
      }

      sub_100022CE4(off_100B512F0, v6, 0);
    }

    sub_1004FEC1C(v2, v1[4]);
    result = [v1[4] count];
    if (result && *(v2 + 189) == 1)
    {
      if (qword_100B512F8 != -1)
      {
        sub_10083AC60();
      }

      result = sub_1003BF57C(off_100B512F0, v2);
      if (result)
      {
        return (*(*v2 + 64))(v2, result);
      }
    }
  }

  return result;
}

void sub_1005006B0(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    v2 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 88);
      v4 = *(a1 + 472);
      *buf = 138412546;
      *&buf[4] = v3;
      *&buf[12] = 2112;
      *&buf[14] = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "registerForDeviceAccessPerAccessory:%@ fDeviceAccessSession:%@", buf, 0x16u);
    }

    if (*(a1 + 472))
    {
      v5 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Already registered", buf, 2u);
      }
    }

    else
    {
      *&v6 = -1;
      *(&v6 + 1) = -1;
      *buf = v6;
      *&buf[16] = v6;
      v7 = *(a1 + 88);
      if (*(a1 + 73) == 1 && (*(a1 + 482) & 1) == 0)
      {
        v8 = *(a1 + 120);
        if (v8)
        {
          sub_10037CA50(v8 - 144, buf);
          *v30 = *buf;
          *&v30[16] = *&buf[16];
          v9 = [LSBundleRecord bundleRecordForAuditToken:v30 error:0];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v9;
            v11 = [v10 containingBundleRecord];
            v12 = qword_100BCE988;
            if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
            {
              v13 = *(a1 + 88);
              v14 = *(a1 + 472);
              v15 = [v11 bundleIdentifier];
              *v30 = 138412802;
              *&v30[4] = v13;
              *&v30[12] = 2112;
              *&v30[14] = v14;
              *&v30[22] = 2112;
              *&v30[24] = v15;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "registerForDeviceAccessPerAccessory:%@ fDeviceAccessSession:%@ overriding bundle to %@", v30, 0x20u);
            }

            v16 = [v11 bundleIdentifier];

            v7 = v16;
          }
        }
      }

      *(a1 + 480) = 0;
      *(a1 + 36) = 0;
      v17 = objc_alloc_init(DASession);
      v18 = *(a1 + 472);
      *(a1 + 472) = v17;

      v19 = [*(a1 + 472) setBundleID:v7];
      [*(a1 + 472) setDispatchQueue:{*(sub_100007EE8(v19, v20) + 8)}];
      [*(a1 + 472) setDeviceFlags:8];
      v24 = _NSConcreteStackBlock;
      v25 = 3221225472;
      v26 = sub_100500A90;
      v27 = &unk_100AFAAD8;
      v29 = a1;
      v21 = v7;
      v28 = v21;
      [*(a1 + 472) setEventHandler:&v24];
      v22 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 88);
        *v30 = 138412546;
        *&v30[4] = v23;
        *&v30[12] = 2112;
        *&v30[14] = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Session now registering for deviceAccess with bundle ID %@(%@)", v30, 0x16u);
      }

      [*(a1 + 472) activate];
    }
  }
}

void sub_100500A90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = [v3 eventType];
  if (v5 <= 0x2A && ((1 << v5) & 0x600C0100400) != 0)
  {
    v7 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      [v3 eventType];
      v8 = DAEventTypeToString();
      v9 = *(v4 + 88);
      v10 = *(a1 + 32);
      v11 = [v3 error];
      v14 = 138413058;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ for bundleID %@ error %@(%@)", &v14, 0x2Au);
    }

    v12 = [v3 error];
    v13 = v12 == 0;

    if (v13)
    {
      sub_100500080(v4);
    }
  }
}

void sub_100500C20(uint64_t a1, int a2)
{
  v4 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 88);
    *buf = 138412290;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CBCentralSession::setupDAExtensionSession %@", buf, 0xCu);
  }

  *&v6 = -1;
  *(&v6 + 1) = -1;
  *buf = v6;
  v13 = v6;
  v7 = *(a1 + 120);
  if (v7)
  {
    sub_10037CA50(v7 - 144, buf);
    v11[0] = *buf;
    v11[1] = v13;
    v10 = 0;
    v8 = [DASession processAllowedWithAuditToken:v11 error:&v10];
    v9 = v10;
    if (a2)
    {
      if (a2 == 1 && v8)
      {
        *(a1 + 481) = 1;
      }
    }

    else if (v8)
    {
      *(a1 + 482) = 1;
    }
  }

  else
  {
    v9 = 0;
  }
}

void sub_100500D54(uint64_t a1, int a2)
{
  v4 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 88);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CBCentralSession::setupDAAppSession %@", &v6, 0xCu);
  }

  if (a2)
  {
    if (a2 == 1)
    {
      sub_1004FF4D0(a1);
    }
  }

  else
  {
    sub_1005006B0(a1);
  }
}

void sub_100500E28(uint64_t a1, void *a2, __int16 a3, uint64_t a4, int a5, __int16 a6, int a7, int a8)
{
  v15 = a2;
  v16 = [v15 UUIDString];
  sub_100007E30(__p, [v16 UTF8String]);
  v21 = __p;
  v17 = sub_1005071D0((a1 + 424), __p, &unk_1008A9BD0, &v21);
  *(v17 + 56) = a3;
  *(v17 + 58) = a6;
  *(v17 + 60) = a5;
  *(v17 + 64) = a7;
  *(v17 + 68) = a8;
  *(v17 + 72) = a4;
  objc_storeStrong((v17 + 80), a2);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100500F1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100500F54(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  v9 = sub_100752890(off_100B508A8, a2, v8, a4, a5);

  return v9;
}

uint64_t sub_100500FDC(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  memcpy(v7, v2, sizeof(v7));
  v5 = sub_100752ABC(off_100B508A8);

  return v5;
}

uint64_t sub_1005010D0(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v10 = sub_10000C7D0(v8, v9);
  if ((*(*v10 + 3264))(v10))
  {
    if (qword_100B508D0 != -1)
    {
      sub_1000E74F4();
    }

    v11 = sub_100791B88(off_100B508C8, v7);
    v12 = *(a1 + 368);
    if (a3)
    {
      if ([v12 containsObject:v7])
      {
        v13 = 17;
        goto LABEL_23;
      }

      if (v11)
      {
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
        {
          sub_10083BD9C();
        }

LABEL_22:
        v13 = 12;
        goto LABEL_23;
      }

      if ([v8 length] < 2)
      {
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
        {
          sub_10083BDD8();
        }
      }

      else
      {
        v18 = [v8 bytes];
        v19 = *v18;
        if (*v18)
        {
          if (qword_100B508D0 != -1)
          {
            sub_1000E74F4();
          }

          v20 = sub_1007919F0(off_100B508C8, 3);
          if ([v20 count] > 1)
          {
            if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
            {
              sub_10083BE14();
            }

            v13 = 126;
          }

          else
          {
            if (qword_100B508D0 != -1)
            {
              sub_1000E74F4();
            }

            v21 = off_100B508C8;
            v22 = [v8 subdataWithRange:{1, objc_msgSend(v8, "length") - 1}];
            v13 = sub_100791918(v21, v7, v19, v22, 3);

            if (v13)
            {
              if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
              {
                sub_10083BE90();
              }
            }

            else
            {
              [*(a1 + 368) addObject:v7];
              v13 = 0;
            }
          }

          goto LABEL_23;
        }

        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
        {
          sub_10083BF04();
        }
      }

      v13 = 3;
      goto LABEL_23;
    }

    if (![v12 containsObject:v7])
    {
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
      {
        sub_10083BCEC();
      }

      goto LABEL_22;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000E74F4();
    }

    v13 = sub_100791918(off_100B508C8, v7, 0, 0, 0);
    if (v13 && os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_10083BD28();
    }

    [*(a1 + 368) removeObject:v7];
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_10083BCB0();
    }

    v13 = 11;
  }

LABEL_23:
  v14 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 88);
    v16 = *(a1 + 368);
    v23 = 138412546;
    v24 = v15;
    v25 = 2112;
    v26 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "FastLEConnection:CBCentralSession::enableFastLeConnectionWithDataToDevice session:%@ Fast LE Connection devices:%@", &v23, 0x16u);
  }

  return v13;
}

void *sub_1005014B0(void *a1)
{
  v2 = sub_10005DEBC(a1);
  *v2 = off_100AFAB08;
  *(v2 + 192) = 0;
  *(v2 + 200) = 0;
  *(v2 + 202) = 0;
  *(v2 + 208) = 0u;
  v3 = (v2 + 208);
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0;
  v4 = objc_alloc_init(NSMutableSet);
  v5 = a1[27];
  a1[27] = v4;

  v6 = objc_alloc_init(NSMutableSet);
  v7 = *v3;
  *v3 = v6;

  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = a1[24];
  a1[24] = v8;

  v10 = objc_alloc_init(NSMutableSet);
  v11 = a1[29];
  a1[29] = v10;

  v12 = objc_alloc_init(NSMutableSet);
  v13 = a1[28];
  a1[28] = v12;

  return a1;
}

uint64_t sub_1005015C8(uint64_t a1)
{
  *a1 = off_100AFAB08;
  v2 = *(a1 + 216);
  *(a1 + 216) = 0;

  v3 = *(a1 + 208);
  *(a1 + 208) = 0;

  v4 = *(a1 + 192);
  *(a1 + 192) = 0;

  v5 = *(a1 + 232);
  *(a1 + 232) = 0;

  v6 = *(a1 + 224);
  *(a1 + 224) = 0;

  return sub_10007956C(a1);
}

void sub_100501680(uint64_t a1)
{
  sub_1005015C8(a1);

  operator delete();
}

uint64_t sub_1005016B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a1 + 200);
  *(a3 + 18) = v7;
  v8 = *(a1 + 192);
  v9 = [NSNumber numberWithUnsignedShort:v6];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_100018384(a2, &v36);
      if (v38 >= 0)
      {
        v32 = &v36;
      }

      else
      {
        v32 = v36;
      }

      *v43 = 67109378;
      *&v43[4] = v6;
      LOWORD(v44) = 2082;
      *(&v44 + 2) = v32;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Already published service ID 0x%x for session %{public}s", v43, 0x12u);
      if (SHIBYTE(v38) < 0)
      {
        operator delete(v36);
      }
    }

    return 1;
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    sub_100007F20(&v36, (a3 + 104));
    v13 = v7 << 16;
    v14 = v36;
    v15 = v37;
    while (v14 != v15)
    {
      v16 = *v14++;
      *(v16 + 104) = *(v16 + 104) | v13;
    }

    *v43 = 0;
    v44 = 0uLL;
    sub_100007F20(v43, (a3 + 136));
    v17 = *v43;
    if (*v43 == v44)
    {
      v18 = 0;
    }

    else
    {
      v18 = 0;
      do
      {
        v19 = *v17;
        v20 = *(*v17 + 16) | v13;
        *(v19 + 16) = v20;
        *(*(v19 + 96) + 16) = v20;
        sub_100007F20(&__p, (v19 + 104));
        if (v18)
        {
          operator delete(v18);
        }

        v18 = __p;
        v21 = v34;
        v22 = __p;
        if (__p != v34)
        {
          do
          {
            v23 = *v22++;
            *(v23 + 16) = *(v23 + 16) | v13;
          }

          while (v22 != v21);
        }

        v17 += 8;
      }

      while (v17 != v44);
    }

    v24 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
    {
      sub_100018384(a2, &__p);
      v25 = v35 >= 0 ? &__p : __p;
      *buf = 67109378;
      v40 = v6;
      v41 = 2082;
      v42 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Adding service ID 0x%x for session %{public}s", buf, 0x12u);
      if (v35 < 0)
      {
        operator delete(__p);
      }
    }

    if (qword_100B541E8 != -1)
    {
      sub_10083B878();
    }

    v12 = sub_1004E7FE0(qword_100B541E0, a3, 0);
    if (!v12)
    {
      v26 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
      {
        sub_100018384(a2, &__p);
        v27 = v35 >= 0 ? &__p : __p;
        *buf = 67109378;
        v40 = v6;
        v41 = 2082;
        v42 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Successfully added service ID 0x%x for session %{public}s", buf, 0x12u);
        if (v35 < 0)
        {
          operator delete(__p);
        }
      }

      if (qword_100B541E8 != -1)
      {
        sub_10083B878();
      }

      sub_1004E8FF0(qword_100B541E0);
      v28 = +[NSMutableDictionary dictionary];
      v29 = *(a1 + 192);
      v30 = [NSNumber numberWithUnsignedShort:v6];
      [v29 setObject:v28 forKeyedSubscript:v30];
    }

    if (v18)
    {
      operator delete(v18);
    }

    if (*v43)
    {
      *&v44 = *v43;
      operator delete(*v43);
    }

    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }
  }

  return v12;
}

void sub_100501AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (v20)
  {
    operator delete(v20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100501B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 192);
  v7 = [NSNumber numberWithUnsignedShort:a3];
  v8 = [v6 objectForKeyedSubscript:v7];

  v9 = qword_100BCE988;
  if (v8)
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
    {
      sub_100018384(a2, __p);
      v10 = v19 >= 0 ? __p : __p[0];
      *buf = 67109378;
      v21 = v3;
      v22 = 2082;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Removing service ID 0x%x for session %{public}s", buf, 0x12u);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v11 = *(a1 + 200);
    if (qword_100B541E8 != -1)
    {
      sub_10083B878();
    }

    LODWORD(__p[0]) = (v11 << 16) | v3;
    v12 = sub_1004EA110(qword_100B541E0, __p);
    if (!v12)
    {
      v13 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
      {
        sub_100018384(a2, __p);
        v14 = v19 >= 0 ? __p : __p[0];
        *buf = 67109378;
        v21 = v3;
        v22 = 2082;
        v23 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Successfully removed service ID 0x%x for session %{public}s", buf, 0x12u);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (qword_100B541E8 != -1)
      {
        sub_10083B878();
      }

      sub_1004EAFD4(qword_100B541E0);
      if (qword_100B541E8 != -1)
      {
        sub_10083B878();
      }

      sub_1004E8FF0(qword_100B541E0);
      v15 = *(a1 + 192);
      v16 = [NSNumber numberWithUnsignedShort:v3];
      [v15 removeObjectForKey:v16];

      v12 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_100018384(a2, __p);
      sub_10083BFC4();
    }

    v12 = 1010;
  }

  return v12;
}

void sub_100501E18(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 192) count])
  {
    v17 = a2;
    v4 = *(a1 + 200);
    v5 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
    {
      sub_100018384(v17, __p);
      v6 = v25 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v28 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Removing all services for session %{public}s", buf, 0xCu);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = [*(a1 + 192) allKeys];
    v19 = [v7 sortedArrayUsingSelector:"compare:"];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [v19 reverseObjectEnumerator];
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v9)
    {
      v10 = v4 << 16;
      v11 = *v21;
      do
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * v12);
          if (qword_100B541E8 != -1)
          {
            sub_10083B878();
          }

          v14 = qword_100B541E0;
          LODWORD(__p[0]) = v10 | [v13 unsignedShortValue];
          sub_1004EA110(v14, __p);
          v12 = v12 + 1;
        }

        while (v9 != v12);
        v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v9);
    }

    [*(a1 + 192) removeAllObjects];
    v15 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
    {
      sub_100018384(v18, __p);
      v16 = v25 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v28 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Successfully removed all services for session %{public}s", buf, 0xCu);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (qword_100B541E8 != -1)
    {
      sub_10083B878();
    }

    sub_1004EAFD4(qword_100B541E0);
    if (qword_100B541E8 != -1)
    {
      sub_10083B878();
    }

    sub_1004E8FF0(qword_100B541E0);
  }
}

uint64_t sub_100502134(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (*(a1 + 128))
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEBUG))
    {
      sub_10083C0B4();
    }

    v8 = *(a1 + 120);
    if (!v8 || *(v8 - 64) < 1)
    {
      goto LABEL_10;
    }

    if (qword_100B54208 != -1)
    {
      sub_10083AD7C();
    }

    if (sub_100067048(qword_100B54200, 2uLL, *(a1 + 88)) && !*(*(a3 + 8) + 440))
    {
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
      {
        sub_10083C124();
      }

      return 348;
    }

    else
    {
LABEL_10:
      if (*(a1 + 202) == 1)
      {
        v9 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
        {
          sub_10083C1BC(a2, v9);
        }

        return 122;
      }

      else
      {
        [*(a1 + 208) removeAllObjects];
        __p = 0;
        v34 = 0;
        v35 = 0;
        sub_10000CB74(&__p, (*(a3 + 8) + 88));
        v11 = __p;
        v12 = v34;
        if (__p != v34)
        {
          do
          {
            v36 = 0uLL;
            v13 = [BTUUID UUIDWithBytes:&v36 length:sub_10007A930(v11, &v36)];
            if (v13)
            {
              [*(a1 + 208) addObject:v13];
            }

            v11 += 20;
          }

          while (v11 != v12);
        }

        if (qword_100B50C68 != -1)
        {
          sub_10083C194();
        }

        v10 = sub_10008E450(off_100B50C60, a2, a3, a4);
        if (!v10)
        {
          v14 = *(a3 + 8);
          v15 = v14[8];
          v16 = v14[9];
          if (v15 != v16)
          {
            do
            {
              v17 = *v15;
              v37 = *(v15 + 4);
              v36 = v17;
              v39 = 0;
              v40 = 0;
              v18 = sub_10007A930(&v36, &v39);
              v19 = v18 == 16 || v18 == 2;
              if (v19)
              {
                v20 = *(a1 + 216);
                v21 = [NSData dataWithBytes:&v39 length:v18];
                [v20 addObject:v21];
              }

              v15 = (v15 + 20);
            }

            while (v15 != v16);
            v14 = *(a3 + 8);
          }

          v22 = v14[14];
          v23 = v14 + 15;
          if (v22 != v14 + 15)
          {
            do
            {
              *&v38[8] = 0;
              *&v38[16] = 0;
              *v38 = 0;
              v37 = *(v22 + 12);
              v36 = *(v22 + 2);
              v24 = v22[8];
              *&v38[4] = &off_100AE0A78;
              *&v38[12] = v24;
              if (v24)
              {
                sub_10000C69C(v24);
              }

              v39 = 0;
              v40 = 0;
              v25 = sub_10007A930(&v36, &v39);
              v26 = sub_10000C5F8(&v38[4]);
              v27 = [NSData dataWithBytes:v26 length:sub_10000C5E0(&v38[4])];
              if (v25 == 2)
              {
                v28 = *(a1 + 224);
                v29 = [NSData dataWithBytes:&v39 length:2];
                [v28 addObject:v29];

                [*(a1 + 224) addObject:v27];
              }

              *&v38[4] = &off_100AE0A78;
              if (*&v38[12])
              {
                sub_10000C808(*&v38[12]);
              }

              v30 = v22[1];
              if (v30)
              {
                do
                {
                  v31 = v30;
                  v30 = *v30;
                }

                while (v30);
              }

              else
              {
                do
                {
                  v31 = v22[2];
                  v19 = *v31 == v22;
                  v22 = v31;
                }

                while (!v19);
              }

              v22 = v31;
            }

            while (v31 != v23);
          }

          v10 = 0;
          *(a1 + 202) = 1;
        }

        if (__p)
        {
          v34 = __p;
          operator delete(__p);
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_10083C044();
    }

    return 341;
  }

  return v10;
}

void sub_100502540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005025C0(uint64_t result, unint64_t a2)
{
  if (*(result + 202) == 1)
  {
    v3 = result;
    [*(result + 208) removeAllObjects];
    [*(v3 + 216) removeAllObjects];
    [*(v3 + 224) removeAllObjects];
    if (qword_100B50C68 != -1)
    {
      sub_10083C274();
    }

    result = sub_1000689C0(off_100B50C60, a2);
    *(v3 + 202) = 0;
  }

  return result;
}

void sub_100502670(void *a1, uint64_t a2, void *a3, unsigned int *a4, unsigned __int16 *a5, unsigned int *a6)
{
  v10 = a3;
  v17[0] = v10;
  v16[0] = @"kCBMsgArgDeviceUUID";
  v16[1] = @"kCBMsgArgATTMTU";
  if (qword_100B541E8 != -1)
  {
    sub_10083C288();
  }

  v11 = [NSNumber numberWithUnsignedShort:sub_1000503B8(qword_100B541E0, v10)];
  v17[1] = v11;
  v16[2] = @"kCBMsgArgAttributeID";
  v12 = [NSNumber numberWithUnsignedInt:*a4];
  v17[2] = v12;
  v16[3] = @"kCBMsgArgOffset";
  v13 = [NSNumber numberWithUnsignedShort:*a5];
  v17[3] = v13;
  v16[4] = @"kCBMsgArgTransactionID";
  v14 = [NSNumber numberWithUnsignedInt:*a6];
  v17[4] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:5];

  sub_100052C08(a1, 58, v15);
}

void sub_100502858(void *a1, uint64_t a2, void *a3, unsigned int **a4, unsigned int *a5)
{
  v21 = a3;
  v8 = objc_alloc_init(NSMutableDictionary);
  [v8 setObject:v21 forKey:@"kCBMsgArgDeviceUUID"];
  if (qword_100B541E8 != -1)
  {
    sub_10083C288();
  }

  v9 = [NSNumber numberWithUnsignedShort:sub_1000503B8(qword_100B541E0, v21)];
  [v8 setObject:v9 forKey:@"kCBMsgArgATTMTU"];

  v10 = [NSNumber numberWithUnsignedInt:*a5];
  [v8 setObject:v10 forKey:@"kCBMsgArgTransactionID"];
  v19 = a1;
  v20 = v8;

  v11 = objc_alloc_init(NSMutableArray);
  for (i = *a4; i != a4[1]; i += 8)
  {
    v13 = objc_alloc_init(NSMutableDictionary);
    v14 = sub_10000C5F8((i + 2));
    v15 = [NSData dataWithBytes:v14 length:sub_10000C5E0((i + 2))];
    v16 = [NSNumber numberWithUnsignedInt:*i];
    [v13 setObject:v16 forKey:@"kCBMsgArgAttributeID"];

    v17 = [NSNumber numberWithUnsignedShort:*(i + 2)];
    [v13 setObject:v17 forKey:@"kCBMsgArgOffset"];

    [v13 setObject:v15 forKey:@"kCBMsgArgData"];
    v18 = [NSNumber numberWithLongLong:*(i + 24)];
    [v13 setObject:v18 forKey:@"kCBMsgArgIgnoreResponse"];

    [v11 addObject:v13];
  }

  [v20 setObject:v11 forKey:@"kCBMsgArgATTWrites"];
  sub_100052C08(v19, 59, v20);
}

void sub_100502B4C(void *a1, uint64_t a2, unsigned int *a3, void *a4, int a5)
{
  v12 = a4;
  v8 = objc_alloc_init(NSMutableDictionary);
  [v8 setObject:v12 forKey:@"kCBMsgArgDeviceUUID"];
  if (qword_100B541E8 != -1)
  {
    sub_10083C288();
  }

  v9 = [NSNumber numberWithUnsignedShort:sub_1000503B8(qword_100B541E0, v12)];
  [v8 setObject:v9 forKey:@"kCBMsgArgATTMTU"];

  v10 = [NSNumber numberWithUnsignedInt:*a3];
  [v8 setObject:v10 forKey:@"kCBMsgArgAttributeID"];

  if (a5)
  {
    v11 = @"Notify";
  }

  else
  {
    v11 = @"Indicate";
  }

  [v8 setObject:v11 forKey:@"kCBMsgArgType"];
  sub_100052C08(a1, 60, v8);
}

void sub_100502CC4(void *a1, uint64_t a2, unsigned int *a3, void *a4)
{
  v9 = a4;
  v6 = objc_alloc_init(NSMutableDictionary);
  [v6 setObject:v9 forKey:@"kCBMsgArgDeviceUUID"];
  if (qword_100B541E8 != -1)
  {
    sub_10083C288();
  }

  v7 = [NSNumber numberWithUnsignedShort:sub_1000503B8(qword_100B541E0, v9)];
  [v6 setObject:v7 forKey:@"kCBMsgArgATTMTU"];

  v8 = [NSNumber numberWithUnsignedInt:*a3];
  [v6 setObject:v8 forKey:@"kCBMsgArgAttributeID"];

  sub_100052C08(a1, 61, v6);
}

uint64_t sub_100502E10(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v9 = a3;
  v10 = [NSNumber numberWithInt:a4];
  [*(a1 + 80) setObject:v10 forKeyedSubscript:v9];

  if (qword_100B512F8 != -1)
  {
    sub_10083AC88();
  }

  v11 = sub_1003ADBEC(off_100B512F0, v9);
  v12 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
  {
    v13 = sub_1003BE228(v11);
    sub_100018384(a2, __p);
    v14 = v19 >= 0 ? __p : __p[0];
    *buf = 136446722;
    v21 = v13;
    v22 = 2114;
    v23 = v9;
    v24 = 2082;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Requesting %{public}s connection latency to device %{public}@ for session %{public}s", buf, 0x20u);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v11 == a4)
  {
    if (qword_100B508B0 != -1)
    {
      sub_10083AEE8();
    }

    v15 = sub_1007489DC(off_100B508A8, v9, a4, v5);
    v16 = v15;
    if (v15 && v15 != 914)
    {
      [*(a1 + 80) removeObjectForKey:v9];
    }
  }

  else
  {
    v16 = 915;
  }

  return v16;
}

void sub_100503028(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (Current <= 86400.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = Current + -86400.0;
  }

  v16[0] = 0;
  v16[1] = 0;
  v15 = v16;
  sub_100503240(&v15, *(a1 + 136), (a1 + 144));
  sub_10005CFE4(a1 + 136, *(a1 + 144));
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = a1 + 144;
  v4 = v15;
  if (v15 != v16)
  {
    do
    {
      v5 = *(v4 + 5);
      if (v5 > v3)
      {
        v13 = (v4 + 4);
        *(sub_10050741C(a1 + 136, v4 + 4, &unk_1008A9BD0, &v13) + 5) = v5;
      }

      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v16);
  }

  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  sub_100503240(&v13, *(a1 + 160), (a1 + 168));
  sub_10005CFE4(a1 + 160, *(a1 + 168));
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = a1 + 168;
  v9 = v13;
  if (v13 != v14)
  {
    do
    {
      v10 = *(v9 + 5);
      if (v10 > v3)
      {
        v17 = v9 + 4;
        *(sub_10050741C(a1 + 160, v9 + 4, &unk_1008A9BD0, &v17) + 5) = v10;
      }

      v11 = v9[1];
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
          v12 = v9[2];
          v8 = *v12 == v9;
          v9 = v12;
        }

        while (!v8);
      }

      v9 = v12;
    }

    while (v12 != v14);
  }

  sub_10005CFE4(&v13, v14[0]);
  sub_10005CFE4(&v15, v16[0]);
}

void sub_10050320C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13)
{
  sub_10005CFE4(&a9, a10);
  sub_10005CFE4(&a12, a13);
  _Unwind_Resume(a1);
}

void *sub_100503240(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100507358(v5, (v5 + 8), v4 + 4, (v4 + 4));
      v6 = v4[1];
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
          v7 = v4[2];
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

uint64_t sub_1005032C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  sub_100503028(a1);
  if (qword_100B508D0 != -1)
  {
    sub_1000E74F4();
  }

  if (sub_100788D8C(off_100B508C8, v3) == 23)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = &v6;
    *(sub_10050741C(a1 + 136, &v6, &unk_1008A9BD0, &v7) + 5) = Current;
    (*(*a1 + 120))(a1);
    v3 = v6;
  }

  return 1;
}

void sub_1005033B4(uint64_t a1)
{
  v2 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    Current = CFAbsoluteTimeGetCurrent();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:         fGattWakeHistoryMap: %f", buf, 0xCu);
  }

  v3 = *(a1 + 136);
  if (v3 != (a1 + 144))
  {
    v4 = qword_100BCE988;
    do
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [v3[4] UUIDString];
        v6 = v5;
        v7 = [v5 UTF8String];
        v8 = v3[5];
        *buf = 136446466;
        Current = *&v7;
        v14 = 2048;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump:         %{public}s: %f", buf, 0x16u);

        v4 = qword_100BCE988;
      }

      v9 = v3[1];
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
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != (a1 + 144));
  }
}

uint64_t sub_100503560(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C7D0(a1, a2);
  if (!(*(*v3 + 2784))(v3))
  {
    return 1;
  }

  sub_100503028(a1);
  v4 = *(a1 + 152);
  if (qword_100B512F8 != -1)
  {
    sub_10083AC88();
  }

  if (v4 > *(off_100B512F0 + 184))
  {
    v5 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 88);
      v8[0] = 67109378;
      v8[1] = v4;
      v9 = 2114;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "We are over GATT AP Wake limit count %d for session %{public}@ ", v8, 0x12u);
    }

    return 1;
  }

  return 0;
}

uint64_t sub_100503694(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C7D0(a1, a2);
  result = (*(*v3 + 2784))(v3);
  if (result)
  {
    v5 = *(a1 + 152);
    if (qword_100B512F8 != -1)
    {
      sub_10083AC88();
    }

    v6 = *(off_100B512F0 + 185);
    if (v5 <= v6)
    {
      return 0;
    }

    else
    {
      v7 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 88);
        v9[0] = 67109634;
        v9[1] = v5;
        v10 = 1024;
        v11 = v6;
        v12 = 2114;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "We are near the max GATT AP Wake limit count %d : NearLimit %d for session %{public}@ ", v9, 0x18u);
      }

      return 1;
    }
  }

  return result;
}

BOOL sub_1005037CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v17 = v3;
  if (*(a1 + 28) != 1)
  {
    goto LABEL_11;
  }

  if (qword_100B508D0 != -1)
  {
    sub_1000E74F4();
  }

  if (sub_100788D8C(off_100B508C8, v3) == 23)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = Current - 0xAu;
    v6 = Current <= 0xAu;
    v7 = 0.0;
    if (!v6)
    {
      v7 = v5;
    }

    if (*(a1 + 48) > v7)
    {
      v8 = CFAbsoluteTimeGetCurrent();
      *buf = &v17;
      *(sub_10050741C(a1 + 160, &v17, &unk_1008A9BD0, buf) + 5) = v8;
      v9 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 48);
        v11 = CFAbsoluteTimeGetCurrent();
        v12 = *(a1 + 152);
        v13 = *(a1 + 176);
        v14 = *(a1 + 88);
        *buf = 134219266;
        *&buf[4] = v10;
        v19 = 2048;
        v20 = v11;
        v21 = 1024;
        v22 = v12;
        v23 = 1024;
        v24 = v13;
        v25 = 2114;
        v26 = v17;
        v27 = 2114;
        v28 = v14;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "App is over assertion limit (%f:%f) while in background. Count %d:%d : this to count %{public}@ on suspended session %{public}@ ", buf, 0x36u);
      }
    }

    v15 = *(a1 + 176) > 0xC8uLL;
    v3 = v17;
  }

  else
  {
LABEL_11:
    v15 = 0;
  }

  return v15;
}

void sub_1005039BC(void *a1, int a2, unsigned int a3, unsigned int a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v8, "kCBMsgArgResult", a2);
  xpc_dictionary_set_uint64(v8, "kCBLEAudioArgCigId", a3);
  xpc_dictionary_set_uint64(v8, "kCBLEAudioArgCisId", a4);
  v9 = sub_100050F18(v8);
  sub_100052C08(a1, 161, v9);

  xpc_release(v8);
}

void sub_100503A8C(void *a1, int a2, unsigned int a3, unsigned int a4, int a5)
{
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v10, "kCBMsgArgResult", a2);
  xpc_dictionary_set_uint64(v10, "kCBLEAudioArgCigId", a3);
  xpc_dictionary_set_uint64(v10, "kCBLEAudioArgCisId", a4);
  xpc_dictionary_set_uint64(v10, "kCBMsgArgReason", a5);
  v11 = sub_100050F18(v10);
  sub_100052C08(a1, 165, v11);

  xpc_release(v10);
}

void sub_100503B74(void *a1, int a2, unsigned int a3, unsigned int a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v8, "kCBMsgArgResult", a2);
  xpc_dictionary_set_uint64(v8, "kCBLEAudioArgCigId", a3);
  xpc_dictionary_set_uint64(v8, "kCBLEAudioArgCisId", a4);
  v9 = sub_100050F18(v8);
  sub_100052C08(a1, 163, v9);

  xpc_release(v8);
}

void sub_100503C44(void *a1, int a2, unsigned int a3, unsigned int a4, int a5)
{
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v10, "kCBMsgArgResult", a2);
  xpc_dictionary_set_uint64(v10, "kCBLEAudioArgCigId", a3);
  xpc_dictionary_set_uint64(v10, "kCBLEAudioArgCisId", a4);
  xpc_dictionary_set_uint64(v10, "kCBMsgArgReason", a5);
  v11 = sub_100050F18(v10);
  sub_100052C08(a1, 167, v11);

  xpc_release(v10);
}

void sub_100503D2C(void *a1, uint64_t a2)
{
  v5 = @"kCBMsgArgReason";
  v3 = [NSNumber numberWithUnsignedInt:a2];
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  sub_100052C08(a1, 68, v4);
}

uint64_t sub_100503E0C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6)
{
  v12 = a3;
  v8 = *(a1 + 200);
  v9 = *a6;
  if (qword_100B541E8 != -1)
  {
    sub_10083C288();
  }

  v11 = v9 | (v8 << 16);
  return sub_1004EB290(qword_100B541E0, &v12, a4, a5, &v11);
}

void sub_100503E88(uint64_t a1, uint64_t a2, void *a3, unsigned __int16 a4, uint64_t a5)
{
  v9 = a3;
  v10 = *(a1 + 200) << 16;
  v12 = v9;
  if (qword_100B541E8 == -1)
  {
    v11 = v9;
  }

  else
  {
    sub_10083C288();
    v11 = v12;
  }

  sub_1004EB480(qword_100B541E0, a2, v11, v10 | a4, a5);
}

id sub_100503F38(uint64_t a1)
{
  if (*(a1 + 24) == 1 && *(a1 + 96) && (*(*a1 + 40))(a1))
  {
    v2 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v2 encodeObject:*(a1 + 88) forKey:@"bundleIdentifier"];
    [v2 encodeObject:*(a1 + 96) forKey:@"restoreIdentifier"];
    [v2 encodeObject:*(a1 + 216) forKey:@"advertisedServices"];
    [v2 encodeObject:*(a1 + 224) forKey:@"advertisedServiceData"];
    [v2 encodeBool:*(a1 + 202) forKey:@"isAdvertising"];
    v3 = qword_100BCE9E0;
    if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 88);
      v5 = *(a1 + 96);
      v6 = *(a1 + 216);
      v7 = *(a1 + 224);
      if (*(a1 + 202))
      {
        v8 = "True";
      }

      else
      {
        v8 = "False";
      }

      v11 = 138413570;
      v12 = v2;
      v13 = 2114;
      v14 = v4;
      v15 = 2114;
      v16 = v5;
      v17 = 2114;
      v18 = v6;
      v19 = 2114;
      v20 = v7;
      v21 = 2082;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Saving Peripheral - restoration data: %@ bundleId: %{public}@, restorationId: %{public}@, advertisingServices: %{public}@, advertisingServiceData: %{public}@, isAdvertising: %{public}s", &v11, 0x3Eu);
    }

    v9 = [v2 encodedData];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_100504138(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v19 = 0;
    v4 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v3 error:&v19];
    v5 = v19;
    v6 = qword_100BCE9E0;
    if (v4)
    {
      if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v4;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Restoring Peripheral restoration data: %@", buf, 0xCu);
      }

      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
      v8 = *(a1 + 88);
      *(a1 + 88) = v7;

      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"restoreIdentifier"];
      v10 = *(a1 + 96);
      *(a1 + 96) = v9;

      if (*(a1 + 88) && *(a1 + 96))
      {
        v11 = objc_alloc_init(NSMutableSet);
        v12 = *(a1 + 216);
        *(a1 + 216) = v11;

        [v4 decodeBoolForKey:@"isAdvertisingContactTracing"];
        *(a1 + 202) = 0;
        v13 = qword_100BCE9E0;
        v14 = 1;
        if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_INFO))
        {
          v15 = *(a1 + 88);
          v16 = *(a1 + 96);
          v17 = *(a1 + 216);
          *buf = 138544130;
          v21 = v15;
          v22 = 2114;
          v23 = v16;
          v24 = 2114;
          v25 = v17;
          v26 = 2082;
          v27 = "False";
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Peripheral Restoring - bundleId: %{public}@, restorationId: %{public}@, advertisingServices: %{public}@, isAdvertising: %{public}s ", buf, 0x2Au);
        }

        *(a1 + 189) = 1;
        goto LABEL_14;
      }
    }

    else if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_ERROR))
    {
      sub_10083C29C();
    }

    v14 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v14 = 0;
LABEL_15:

  return v14;
}

void sub_1005043A0(uint64_t a1)
{
  v2 = qword_100BCE9E0;
  if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 88);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Continuing after restore: %{public}@", &v4, 0xCu);
  }

  if (qword_100B512F8 != -1)
  {
    sub_10083AC60();
  }

  sub_1003BCFEC(off_100B512F0, *(a1 + 88));
}

uint64_t sub_100504470(uint64_t a1, unint64_t a2)
{
  v4 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 88);
    *buf = 138543362;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Clear all state for peripheral session %{public}@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(a1 + 192);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(a1 + 192) objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * v9), v12}];
        [v10 removeAllObjects];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [*(a1 + 80) removeAllObjects];
  return sub_1005025C0(a1, a2);
}

void sub_100504638(uint64_t a1)
{
  v4 = @"kCBMsgArgResult";
  v2 = [NSNumber numberWithInt:?];
  v5 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  *(a1 + 202) = 0;
  [*(a1 + 208) removeAllObjects];
  [*(a1 + 216) removeAllObjects];
  [*(a1 + 224) removeAllObjects];
  sub_100052C08(a1, 54, v3);
}

uint64_t sub_100504730(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = *(a1 + 232);
  if (!a3)
  {
    if ([v6 containsObject:v5])
    {
      [*(a1 + 232) removeObject:v5];
      goto LABEL_6;
    }

LABEL_11:
    v10 = 17;
    goto LABEL_17;
  }

  if ([v6 containsObject:v5])
  {
    goto LABEL_11;
  }

  [*(a1 + 232) addObject:v5];
LABEL_6:
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  if (qword_100B508B0 != -1)
  {
    sub_10083AE50();
  }

  sub_100740410(off_100B508A8, v5, &v18);
  if (v18)
  {
    v7 = [*(&v18 + 1) mutableCopy];
    v8 = v7;
    v9 = *(a1 + 88);
    if (a3)
    {
      [v7 addObject:v9];
    }

    else
    {
      [v7 removeObject:v9];
    }

    objc_storeStrong(&v18 + 1, v8);
    if (qword_100B508B0 != -1)
    {
      sub_10083AEE8();
    }

    v11 = off_100B508A8;
    v13[0] = v18;
    v13[1] = *(&v18 + 1);
    v14 = v19;
    v15 = v20;
    v16 = v21;
    v17 = v22;
    sub_100740538(v11, v5, v13);
  }

  v10 = 0;
LABEL_17:

  return v10;
}

void sub_1005048F4(void *a1, void *a2, unsigned int a3, unsigned int a4)
{
  v7 = a2;
  v8 = xpc_dictionary_create(0, 0, 0);
  *uuid = 0;
  v11 = 0;
  [v7 getUUIDBytes:uuid];
  xpc_dictionary_set_uuid(v8, "kCBMsgArgDeviceUUID", uuid);
  xpc_dictionary_set_uint64(v8, "kCBLEAudioArgCigId", a3);
  xpc_dictionary_set_uint64(v8, "kCBLEAudioArgCisId", a4);
  v9 = sub_100050F18(v8);
  sub_100052C08(a1, 168, v9);

  xpc_release(v8);
}

uint64_t sub_100504A20(uint64_t a1)
{
  v2 = sub_10005DEBC(a1);
  *v2 = &off_100AFABC0;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0;
  v3 = +[NSMutableDictionary dictionary];
  v4 = *(a1 + 208);
  *(a1 + 208) = v3;

  v5 = objc_alloc_init(NSMutableSet);
  v6 = *(a1 + 216);
  *(a1 + 216) = v5;

  return a1;
}

uint64_t sub_100504ACC(uint64_t a1)
{
  *a1 = &off_100AFABC0;
  v2 = *(a1 + 208);
  *(a1 + 208) = 0;

  v3 = *(a1 + 216);
  *(a1 + 216) = 0;

  return sub_10007956C(a1);
}

void sub_100504B48(uint64_t a1)
{
  sub_100504ACC(a1);

  operator delete();
}

BOOL sub_100504B80(uint64_t a1, int64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 192);
  if (v6)
  {
    sub_100052EE4(v6 - 144, a2, v5);
  }

  else
  {
    v7 = [[BTQueuedMessage alloc] initWithMsg:a2 arguments:v5];
    sub_1004F4C94(a1, v7);
    if (sub_100052E80(a1) == 1)
    {
      if (qword_100B512F8 != -1)
      {
        sub_10083AC88();
      }

      sub_1003BCFEC(off_100B512F0, *(a1 + 88));
    }
  }

  return v6 != 0;
}

id sub_100504C9C(uint64_t a1)
{
  v2 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 88);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Clear all state for classic session %{public}@", &v5, 0xCu);
  }

  [*(a1 + 208) removeAllObjects];
  return [*(a1 + 216) removeAllObjects];
}

void sub_100504D78(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (qword_100B508D0 != -1)
  {
    sub_1000E74F4();
  }

  v9 = sub_100046458(off_100B508C8, v7, 0);
  if (qword_100B508F0 != -1)
  {
    sub_10083C30C();
  }

  v10 = sub_1000504C8(off_100B508E8, v9, 1);
  if (!v10)
  {
    sub_1005051B8(a1, v7, 3, 0);
    goto LABEL_39;
  }

  [*(a1 + 216) addObject:v7];
  v11 = [*(a1 + 208) objectForKey:v7];

  if (v11)
  {
    v12 = sub_1000C0348(v10);
    v13 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(a2, __p);
      v14 = v24 >= 0 ? __p : __p[0];
      *buf = 67109634;
      *&buf[4] = v12;
      *&buf[8] = 2114;
      *&buf[10] = v7;
      *&buf[18] = 2082;
      *&buf[20] = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Attempting to add device (%d) %{public}@ more than once for session %{public}s", buf, 0x1Cu);
      if (v24 < 0)
      {
        operator delete(__p[0]);
        if (!v12)
        {
          goto LABEL_39;
        }

        goto LABEL_13;
      }
    }

    if (v12)
    {
LABEL_13:
      v15 = sub_100537CDC(v10);
      sub_1005051B8(a1, v7, 0, v15);
    }
  }

  else
  {
    v16 = qword_100BCE9B8;
    if (os_log_type_enabled(qword_100BCE9B8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 88);
      *buf = 138543618;
      *&buf[4] = v7;
      *&buf[12] = 2114;
      *&buf[14] = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "App connecting - {cbuuid: %{public}@, bundle: %{public}@}", buf, 0x16u);
    }

    v18 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(a2, __p);
      v19 = v24 >= 0 ? __p : __p[0];
      *buf = 138543874;
      *&buf[4] = v7;
      *&buf[12] = 2082;
      *&buf[14] = v19;
      *&buf[22] = 2114;
      *&buf[24] = v8;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Connecting device %{public}@ for session %{public}s with options %{public}@", buf, 0x20u);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_100546F5C(v10, 0);
    if (*(v10 + 1396) == 1)
    {
      if (qword_100B50950 != -1)
      {
        sub_10083C348();
      }

      sub_10035BBE0(off_100B50948, v10, 0);
      sub_1005051B8(a1, v7, 0, 2);
    }

    else
    {
      if ([v8 connectingToPANServices])
      {
        v20 = -10305;
      }

      else
      {
        v20 = -14657;
      }

      if (qword_100B50AC0 != -1)
      {
        sub_10083C320();
      }

      v21 = off_100B50AB8;
      sub_100018384(a2, buf);
      v22 = sub_10059234C(v21, v10, v20, buf, 2);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (v22)
      {
        sub_1005051B8(a1, v7, v22, 0);
      }

      else
      {
        [*(a1 + 208) setObject:v8 forKey:v7];
      }
    }
  }

LABEL_39:
}

void sub_1005051B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  if (!a3)
  {
    ++*(a1 + 224);
  }

  if (a4 != 2)
  {
    [*(a1 + 208) removeObjectForKey:v22];
  }

  if (qword_100B508D0 != -1)
  {
    sub_1000E74F4();
  }

  v6 = sub_100046458(off_100B508C8, v22, 0);
  if (qword_100B508F0 != -1)
  {
    sub_10083C30C();
  }

  v7 = sub_1000504C8(off_100B508E8, v6, 0);
  v8 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(v7, __p);
    v9 = v25 >= 0 ? __p : __p[0];
    *buf = 136446722;
    v29 = v9;
    v30 = 1024;
    v31 = a3;
    v32 = 1024;
    v33 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CBClassicSession::deviceConnected for device %{public}s with result: %d and internalState %d", buf, 0x18u);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (qword_100B50F68 != -1)
  {
    sub_10083C370();
  }

  if (sub_1000E4DC4(off_100B50F60, v7))
  {
    v10 = *(v7 + 1397);
  }

  else
  {
    v10 = 1;
  }

  v11 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(v7, __p);
    v12 = v25 >= 0 ? __p : __p[0];
    *buf = 136315906;
    v29 = v12;
    v30 = 1024;
    v31 = a3;
    v32 = 1024;
    v33 = a4;
    v34 = 1024;
    v35 = v10 & 1;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CBClassicSession::deviceConnected for device %s with result: %d and internalState %d and isIncoming %d", buf, 0x1Eu);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v27[0] = v22;
  v26[0] = @"kCBMsgArgDeviceUUID";
  v26[1] = @"kCBMsgArgResult";
  v13 = [NSNumber numberWithInt:a3];
  v27[1] = v13;
  v26[2] = @"kCBMsgArgInternalState";
  v14 = [NSNumber numberWithInt:a4];
  v27[2] = v14;
  v26[3] = @"kCBMsgArgIsIncoming";
  v15 = [NSNumber numberWithBool:v10 & 1];
  v27[3] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];
  v17 = [NSMutableDictionary dictionaryWithDictionary:v16];

  if (v10)
  {
    v18 = [NSNumber numberWithInt:a4];
    [v17 setObject:v18 forKeyedSubscript:@"kCBMsgArgState"];
  }

  if (v7)
  {
    v19 = sub_10054D124(v7);
    v20 = [v19 count] == 0;

    if (!v20)
    {
      v21 = sub_10054D124(v7);
      [v17 setObject:v21 forKeyedSubscript:@"kCBMsgArgServices"];
    }
  }

  sub_100504B80(a1, 57, v17);
  sub_100504B80(a1, 55, v17);
  if (*(a1 + 224) >= 1)
  {
    if (qword_100B512F8 != -1)
    {
      sub_10083AC60();
    }

    sub_1003B2518(off_100B512F0, *(a1 + 88), 1);
  }
}

void sub_100505674(uint64_t a1, unint64_t a2, void *a3, int a4)
{
  v7 = a3;
  [*(a1 + 208) removeObjectForKey:v7];
  if (!a4)
  {
    sub_1005058F0(a1, v7, 0, 0);
    goto LABEL_21;
  }

  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
  {
    sub_10083B508();
  }

  if (qword_100B508D0 != -1)
  {
    sub_10083B158();
  }

  v8 = sub_100046458(off_100B508C8, v7, 0);
  if (!v8)
  {
    sub_1005058F0(a1, v7, 3, 0);
    goto LABEL_21;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083B2F4();
  }

  v9 = sub_1000504C8(off_100B508E8, v8, 0);
  v10 = v9;
  if (!v9)
  {
    v13 = 3;
LABEL_20:
    sub_1005058F0(a1, v7, v13, 0);
    goto LABEL_21;
  }

  if ((*(v9 + 1396) & 1) == 0)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if (sub_100542124(v9))
  {
    if (qword_100B50AC0 != -1)
    {
      sub_10083C320();
    }

    v11 = sub_100593A4C(off_100B50AB8, v10, -1);
    if (v11)
    {
      v12 = sub_100537CDC(v10);
      sub_1005058F0(a1, v7, v11, v12);
    }
  }

  else
  {
    *src = 0;
    v17 = 0;
    sub_10004DFB4(src, v7);
    if (qword_100B53FD8 != -1)
    {
      sub_10083C398();
    }

    v14 = qword_100B53FD0;
    uuid_copy(dst, src);
    sub_1004C91A4(v14, a2, dst);
    if (qword_100B50AC0 != -1)
    {
      sub_10083C320();
    }

    sub_1005922D4(off_100B50AB8, v10, 1);
  }

LABEL_21:
  [*(a1 + 216) removeObject:v7];
}

void sub_1005058F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  [*(a1 + 208) removeObjectForKey:v7];
  v16[0] = v7;
  v15[0] = @"kCBMsgArgDeviceUUID";
  v15[1] = @"kCBMsgArgResult";
  v8 = [NSNumber numberWithInt:a3];
  v16[1] = v8;
  v15[2] = @"kCBMsgArgInternalState";
  v9 = [NSNumber numberWithInt:a4];
  v16[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];

  v11 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109376;
    v12[1] = a3;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CBClassicSession::deviceDisconnected with result: %d and internalState %d", v12, 0xEu);
  }

  --*(a1 + 224);
  sub_100504B80(a1, 57, v10);
  sub_100504B80(a1, 56, v10);
  if (!*(a1 + 224))
  {
    if (qword_100B512F8 != -1)
    {
      sub_10083AC60();
    }

    sub_1003B2518(off_100B512F0, *(a1 + 88), 0);
  }
}

void sub_100505AFC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (qword_100B508D0 != -1)
  {
    sub_1000E74F4();
  }

  v9[0] = 0;
  v9[1] = 0;
  sub_1000498D4(off_100B508C8, (a3[128] << 40) | (a3[129] << 32) | (a3[130] << 24) | (a3[131] << 16) | (a3[132] << 8) | a3[133], 1u, 0, 0, 0, v9);
  v7 = @"kCBMsgArgDeviceUUID";
  v5 = sub_10004DF60(v9);
  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  sub_100504B80(a1, 18, v6);
}

void sub_100505C44(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  if (qword_100B508D0 != -1)
  {
    sub_1000E74F4();
  }

  *uuid = 0;
  v11 = 0;
  sub_1000498D4(off_100B508C8, (a3[128] << 40) | (a3[129] << 32) | (a3[130] << 24) | (a3[131] << 16) | (a3[132] << 8) | a3[133], 1u, 0, 0, 0, uuid);
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uuid(v7, "kCBMsgArgDeviceUUID", uuid);
  xpc_dictionary_set_int64(v7, "kCBMsgArgResult", a4);
  v8 = sub_1000295DC(a3);
  xpc_dictionary_set_int64(v7, "kCBMsgArgPairingState", v8);
  v9 = sub_100050F18(v7);
  sub_100504B80(a1, 19, v9);

  xpc_release(v7);
}

void sub_100505DAC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (qword_100B508D0 != -1)
  {
    sub_1000E74F4();
  }

  v9[0] = 0;
  v9[1] = 0;
  sub_1000498D4(off_100B508C8, (a3[128] << 40) | (a3[129] << 32) | (a3[130] << 24) | (a3[131] << 16) | (a3[132] << 8) | a3[133], 1u, 0, 0, 0, v9);
  v7 = @"kCBMsgArgDeviceUUID";
  v5 = sub_10004DF60(v9);
  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  sub_100504B80(a1, 20, v6);
}

void sub_100505EF4(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (qword_100B508D0 != -1)
  {
    sub_1000E74F4();
  }

  v14[0] = 0;
  v14[1] = 0;
  sub_1000498D4(off_100B508C8, (*(a3 + 128) << 40) | (*(a3 + 129) << 32) | (*(a3 + 130) << 24) | (*(a3 + 131) << 16) | (*(a3 + 132) << 8) | *(a3 + 133), 1u, 0, 0, 0, v14);
  v12[0] = @"kCBMsgArgDeviceUUID";
  v5 = sub_10004DF60(v14);
  v13[0] = v5;
  v12[1] = @"kCBMsgArgBatteryPercentRight";
  v6 = [NSNumber numberWithInt:sub_10053F8E4(a3, 2)];
  v13[1] = v6;
  v12[2] = @"kCBMsgArgBatteryPercentLeft";
  v7 = [NSNumber numberWithInt:sub_10053F8E4(a3, 4)];
  v13[2] = v7;
  v12[3] = @"kCBMsgArgBatteryPercentCase";
  v8 = [NSNumber numberWithInt:sub_10053F8E4(a3, 8)];
  v13[3] = v8;
  v12[4] = @"kCBMsgArgBatteryPercent";
  v9 = [NSNumber numberWithInt:sub_10053F8E4(a3, 1)];
  v13[4] = v9;
  v12[5] = @"kCBMsgArgBatteryPercentCombined";
  v10 = [NSNumber numberWithInt:sub_10053F8E4(a3, 16)];
  v13[5] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:6];
  sub_100504B80(a1, 51, v11);
}

void sub_1005061A4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (qword_100B508D0 != -1)
  {
    sub_1000E74F4();
  }

  v10[0] = 0;
  v10[1] = 0;
  sub_1000498D4(off_100B508C8, (a3[128] << 40) | (a3[129] << 32) | (a3[130] << 24) | (a3[131] << 16) | (a3[132] << 8) | a3[133], 1u, 0, 0, 0, v10);
  v8[0] = @"kCBMsgArgDeviceUUID";
  v5 = sub_10004DF60(v10);
  v8[1] = @"kCBMsgArgIsConnectedOverUSB";
  v9[0] = v5;
  v6 = [NSNumber numberWithBool:a3[1360]];
  v9[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
  sub_100504B80(a1, 51, v7);
}

void sub_100506390(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_100506518(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_100506598(uint64_t a1, unint64_t *a2)
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

  sub_1003C4E3C(a1, v4);
  return 1;
}

void *sub_100506788(uint64_t a1, unint64_t *a2, uint64_t a3, id **a4)
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
      v7 = v4[4];
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

void *sub_100506860(uint64_t a1, unint64_t *a2, uint64_t a3, id **a4)
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
      v7 = v4[4];
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

void *sub_100506A24(uint64_t **a1, unsigned __int8 *uu1, uint64_t a3)
{
  v4 = 0;
  result = *sub_1000C7430(a1, &v4, uu1);
  if (!result)
  {
    sub_100506AB0();
  }

  return result;
}

void sub_100506B18(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void *sub_100506B30(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100506B88(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_100506B88(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100506C10(v5, (v5 + 8), v4 + 25, v4 + 25);
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

uint64_t sub_100506C10(uint64_t **a1, uint64_t *a2, unsigned __int8 *uu2, const unsigned __int8 *a4)
{
  v5 = 0;
  v6 = 0;
  result = *sub_100506CA0(a1, a2, &v6, &v5, uu2);
  if (!result)
  {
    sub_1000C74B8();
  }

  return result;
}

const unsigned __int8 *sub_100506CA0(uint64_t **a1, uint64_t *a2, const unsigned __int8 **a3, uint64_t *a4, unsigned __int8 *uu2)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || uuid_compare(uu2, a2 + 25) < 0)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
      v11 = *a2;
      if (*a2)
      {
        do
        {
          v12 = v11;
          v11 = *(v11 + 8);
        }

        while (v11);
      }

      else
      {
        v16 = a2;
        do
        {
          v12 = v16[2];
          v17 = *v12 == v16;
          v16 = v12;
        }

        while (v17);
      }

      if ((uuid_compare(v12 + 25, uu2) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if ((uuid_compare(a2 + 25, uu2) & 0x80000000) == 0)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = a2 + 1;
  v13 = a2[1];
  if (v13)
  {
    v14 = a2[1];
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (uuid_compare(uu2, v15 + 25) < 0)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return sub_1000C7430(a1, a3, uu2);
}

uint64_t sub_100506E64(uint64_t a1, unint64_t *a2)
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

  sub_100506ED4(a1, v4);
  return 1;
}

uint64_t *sub_100506ED4(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10002717C(a1, a2);

  operator delete(a2);
  return v3;
}

void *sub_100506F80(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100506FD8(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_100506FD8(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100507060(v5, (v5 + 8), v4 + 4, (v4 + 4));
      v6 = v4[1];
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
          v7 = v4[2];
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

void *sub_100507060(uint64_t **a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  result = *sub_1000988F0(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_1005070F0();
  }

  return result;
}

uint64_t sub_1005071D0(uint64_t **a1, const void **a2, uint64_t a3, _OWORD **a4)
{
  v6 = 0;
  v4 = *sub_100044BC4(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t sub_1005072A4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100506390(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_100507358(uint64_t **a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v6 = 0;
  v7 = 0;
  v4 = *sub_1000988F0(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *sub_10050741C(uint64_t a1, unint64_t *a2, uint64_t a3, id **a4)
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
      v7 = v4[4];
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

uint64_t sub_1005076BC(uint64_t a1)
{
  v2 = sub_100589578(a1, "A2DPService", 16);
  *v2 = off_100AFAEB8;
  sub_100044BBC((v2 + 328));
  *(a1 + 400) = 0;
  if (qword_100B50AE0 != -1)
  {
    sub_10083C3C0();
  }

  v3 = qword_100B50AD8;
  *(a1 + 400) = qword_100B50AD8;
  sub_100589880(a1, v3);
  return a1;
}

void sub_100507744(_Unwind_Exception *a1)
{
  sub_10007A068(v1 + 328);
  sub_100589670(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10050776C(void *a1)
{
  *a1 = off_100AFAEB8;
  sub_10007A068((a1 + 41));

  return sub_100589670(a1);
}

void sub_1005077C4(void *a1)
{
  *a1 = off_100AFAEB8;
  sub_10007A068((a1 + 41));
  sub_100589670(a1);

  operator delete();
}

uint64_t sub_100507838(uint64_t a1, uint64_t a2)
{
  v12 = xmmword_1008A9C00;
  memset(v14, 0, sizeof(v14));
  v11 = 0;
  v10 = 0;
  if (sub_10053C3E8(a2))
  {
    if (sub_10053A020(a2, &v12, 4u))
    {
      v4 = 4;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v5 = sub_10054BE34(a2, v14, &v11);
    if (v11)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v4 = 4 * (sub_10024A9C0(v14, 4363, &v10) == 0);
    }

    else
    {
      v4 = 0;
    }
  }

  v7 = *(a1 + 32);
  v13 = 0;
  sub_100016250(&v13);
  *&v9 = v13;
  *(&v9 + 1) = SWORD2(v13);
  return sub_100539554(a2, v7, v4, &v9, 0);
}

uint64_t sub_100507984(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v8 = 0;
  v9 = xmmword_1008A9C00;
  memset(v10, 0, sizeof(v10));
  v7 = 0;
  v6 = 0;
  *a3 = 0;
  if (sub_10053C3E8(a2))
  {
    result = sub_10053A020(a2, &v9, 4u);
    if ((result & 1) == 0)
    {
      return result;
    }

LABEL_13:
    *a3 = 1;
    return result;
  }

  if (sub_10054BE34(a2, v10, &v7))
  {
    if (v7)
    {
      result = sub_10024A9C0(v10, 4363, &v6);
      if (!result)
      {
        goto LABEL_13;
      }
    }
  }

  result = sub_1005379CC(a2, &v8);
  if ((~v8 & 0x240000) == 0 && ((v8 & 0x1F00) == 0x400 || (v8 & 0x1FFC) == 0x118 || (v8 & 0x1F00) == 0x700 && ((v8 & 0xF4) == 4 || (v8 & 0xF8) == 0x10)))
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100507ADC(uint64_t a1, uint64_t a2, const char *a3, const char *a4)
{
  if (a3 && a4)
  {
    v6 = strlen(aBtKeyHandsfree);
    if (!strncmp(a3, aBtKeyHandsfree, v6))
    {
      v7 = strlen(a4);
      v27 = 0;
      v26 = 0;
      v25 = 0;
      __dst = 0;
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = 0;
        if (v7 >= 4)
        {
          v11 = 4;
        }

        else
        {
          v11 = v7;
        }

        do
        {
          v12 = 0;
          v13 = &a4[v9];
          while (v13[v12] != 58)
          {
            if (v11 == ++v12)
            {
              v12 = v11;
              break;
            }
          }

          memcpy(&__dst, v13, v12);
          *(&__dst + v12) = 0;
          *(&v26 + v10) = atoi(&__dst);
          v9 += v12 + 1;
          if (v9 >= v8)
          {
            break;
          }
        }

        while (v10++ < 9);
      }

      v23 = 0;
      sub_1000216B4(&v23);
      sub_10024DE9C(sub_100507C94, &v26, v15, v16, v17, v18, v19, v20);
      sub_100022214(&v23);
      sub_10002249C(&v23);
    }

    return 0;
  }

  else
  {
    v22 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_10083C3D4(v22);
    }

    return 1;
  }
}

void sub_100507C94()
{
  v0 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Set AFH enabled\n\n", v1, 2u);
  }
}

uint64_t sub_100507D64(uint64_t a1, int *a2, int *a3, uint64_t a4, void *a5)
{
  v9 = a5;
  *a1 = 0;
  sub_100044BBC((a1 + 8));
  *(a1 + 76) = 0;
  *(a1 + 72) = 0;
  *(a1 + 79) = 0;
  *(a1 + 83) = 0;
  v10 = *a2;
  *(a1 + 76) = *(a2 + 2);
  *(a1 + 72) = v10;
  *(a1 + 78) = 0;
  v11 = *a3;
  *(a1 + 83) = *(a3 + 2);
  *(a1 + 79) = v11;
  *(a1 + 85) = 0;
  *(a1 + 100) = 0;
  *(a1 + 88) = a4;
  *(a1 + 96) = 256;
  v12 = *a1;
  *a1 = v9;

  *(a1 + 102) = 0;
  return a1;
}

id *sub_100507E2C(id *a1)
{
  sub_10007A068((a1 + 1));

  return a1;
}

BOOL sub_100507E60(void *a1)
{
  v2 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting LEA easy pairing agent", buf, 2u);
  }

  *(a1 + 96) = 0;
  v3 = a1[11];
  if (v3)
  {
    v4 = qword_100BCEA90;
    v5 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
    v6 = v3;
    if (v5)
    {
      sub_1000BE6F8(a1 + 72, buf);
      v7 = v20;
      v8 = *buf;
      sub_1000BE6F8(a1 + 79, __p);
      v9 = buf;
      if (v7 < 0)
      {
        v9 = v8;
      }

      if (v18 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *v21 = 136315394;
      v22 = v9;
      v23 = 2080;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending pair status request to %s for device %s ", v21, 0x16u);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (v20 < 0)
      {
        operator delete(*buf);
      }

      v6 = a1[11];
    }

    (**v6)(v6, a1 + 9, a1 + 79, *a1);
    v11 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000BE6F8(a1 + 79, buf);
      v12 = v20;
      v13 = *buf;
      sub_1000BE6F8(a1 + 72, __p);
      v14 = buf;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if (v18 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      *v21 = 136315394;
      v22 = v14;
      v23 = 2080;
      v24 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending pair status request to %s  for device %s ", v21, 0x16u);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (v20 < 0)
      {
        operator delete(*buf);
      }
    }

    (**a1[11])(a1[11], a1 + 79, a1 + 9, *a1);
    *(a1 + 96) += 2;
  }

  return v3 != 0;
}

void sub_10050810C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100508134(void *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v8 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "Easy pairing not allowed";
    if (a4 == 1)
    {
      v9 = "Not paired";
    }

    if (a4 == 2)
    {
      v10 = "Paired";
    }

    else
    {
      v10 = v9;
    }

    sub_1000BE6F8(a2, v53);
    if (v54 >= 0)
    {
      v11 = v53;
    }

    else
    {
      v11 = v53[0];
    }

    *buf = 136446466;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received pair status response %{public}s from device %s", buf, 0x16u);
    if (v54 < 0)
    {
      operator delete(v53[0]);
    }
  }

  if (a4 != 3)
  {
    v46[0] = 0;
    v46[1] = 0;
    sub_100007F88(v46, (a1 + 1));
    if (*a2 == *(a1 + 18) && *(a2 + 4) == *(a1 + 38))
    {
      *(a1 + 78) = a4;
      --*(a1 + 96);
    }

    if (*a2 == *(a1 + 79) && *(a2 + 4) == *(a1 + 83))
    {
      *(a1 + 85) = a4;
      v14 = *(a1 + 96) - 1;
      *(a1 + 96) = v14;
    }

    else
    {
      v14 = *(a1 + 96);
    }

    if (!v14)
    {
      v15 = (*(a1 + 85) & *(a1 + 78));
      v16 = qword_100BCEA90;
      v17 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
      if (v15 == 2)
      {
        if (v17)
        {
          sub_1000BE6F8(a2, v53);
          v18 = v54;
          v19 = v53[0];
          sub_1000BE6F8(a3, buf);
          v20 = v53;
          if (v18 < 0)
          {
            v20 = v19;
          }

          if (v51 >= 0)
          {
            v21 = buf;
          }

          else
          {
            v21 = *buf;
          }

          *v52 = 136315394;
          *&v52[4] = v20;
          *&v52[12] = 2080;
          *&v52[14] = v21;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Devices %s and %s are already paired", v52, 0x16u);
          if (v51 < 0)
          {
            operator delete(*buf);
          }

          if (v54 < 0)
          {
            operator delete(v53[0]);
          }
        }
      }

      else
      {
        if (v17)
        {
          sub_1000BE6F8(a2, v53);
          v22 = v54;
          v23 = v53[0];
          sub_1000BE6F8(a3, buf);
          v24 = v53;
          if (v22 < 0)
          {
            v24 = v23;
          }

          if (v51 >= 0)
          {
            v25 = buf;
          }

          else
          {
            v25 = *buf;
          }

          *v52 = 136315394;
          *&v52[4] = v24;
          *&v52[12] = 2080;
          *&v52[14] = v25;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Generate bonding info to pair between %s and %s", v52, 0x16u);
          if (v51 < 0)
          {
            operator delete(*buf);
          }

          if (v54 < 0)
          {
            operator delete(v53[0]);
          }
        }

        __buf = 0;
        v49 = 0;
        *buf = 0;
        v53[0] = 0;
        v53[1] = 0;
        *&buf[8] = 0;
        *v52 = 0;
        *&v52[8] = 0;
        if (qword_100B508C0 != -1)
        {
          sub_10083C418();
        }

        *buf = *(off_100B508B8 + 168);
        v26 = sub_100240328((off_100B508B8 + 136), 3, 0, v52);
        if (v26)
        {
          v27 = qword_100BCEA90;
          if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_FAULT))
          {
            sub_10083C440(v26, v27);
          }
        }

        else
        {
          arc4random_buf(&__buf + 2, 2uLL);
          arc4random_buf(&v49, 8uLL);
          v28 = sub_10023FDC8(v52, &v49, &__buf);
          if (v28)
          {
            v29 = qword_100BCEA90;
            if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
            {
              sub_10083C4B8(v28, v29);
            }
          }

          else
          {
            v30 = __buf;
            v31 = HIWORD(__buf);
            v32 = sub_100240328(buf, SHIWORD(__buf), 0, v53);
            if (v32)
            {
              v33 = qword_100BCEA90;
              if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
              {
                sub_10083C530(v32, v33);
              }
            }

            else
            {
              if (qword_100B508D0 != -1)
              {
                sub_10083C5A8();
              }

              v34 = off_100B508C8;
              v35 = sub_100508798(a2);
              sub_1000498D4(v34, v35, 0, 0, 0, 0, v48);
              v36 = sub_10004DF60(v48);
              v48[0] = 0;
              v48[1] = 0;
              v44 = 16;
              v43 = 0;
              if (qword_100B508C0 != -1)
              {
                sub_10083C418();
              }

              sub_1007CA820(off_100B508B8, v36, v48, &v44, &v43);
              if (qword_100B508D0 != -1)
              {
                sub_10083C5A8();
              }

              v37 = off_100B508C8;
              v38 = sub_100508798(a3);
              sub_1000498D4(v37, v38, 0, 0, 0, 0, v47);
              v39 = sub_10004DF60(v47);
              v47[0] = 0;
              v47[1] = 0;
              v42 = 16;
              v41 = 0;
              if (qword_100B508C0 != -1)
              {
                sub_10083C418();
              }

              sub_1007CA820(off_100B508B8, v39, v47, &v42, &v41);
              v40 = v31 ^ v30;
              (*(*a1[11] + 8))(a1[11], a2, a3, v40, &v49, v53, v47, *a1);
              (*(*a1[11] + 8))(a1[11], a3, a2, v40, &v49, v53, v48, *a1);
            }
          }
        }
      }
    }

    sub_1000088CC(v46);
  }
}

void sub_100508738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005087CC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v8 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
  {
    if (a4)
    {
      v9 = "Fail";
    }

    else
    {
      v9 = "Success";
    }

    sub_1000BE6F8(a2, __p);
    if (v13 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136446466;
    v15 = v9;
    v16 = 2080;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received bonding info store result %{public}s from device %s ", buf, 0x16u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return (*(**(a1 + 88) + 16))(*(a1 + 88), a2, a3, 2 * (a4 != 0));
}

unsigned __int8 *sub_100508924(unsigned __int8 *result, int a2, int a3)
{
  v3 = *(result + 11);
  if (v3)
  {
    v5 = result;
    if (a2)
    {
      v6 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000BE6F8(v5 + 72, v18);
        v7 = v19;
        v8 = v18[0];
        sub_1000BE6F8(v5 + 79, __p);
        v9 = v18;
        if (v7 < 0)
        {
          v9 = v8;
        }

        if (v17 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        *buf = 136315394;
        v21 = v9;
        v22 = 2080;
        v23 = v10;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending easy unpair request to %s for device %s ", buf, 0x16u);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }

        if (v19 < 0)
        {
          operator delete(v18[0]);
        }

        v3 = *(v5 + 11);
      }

      result = (*(*v3 + 24))(v3, v5 + 9, v5 + 79, *v5);
    }

    if (a3)
    {
      v11 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000BE6F8(v5 + 79, v18);
        v12 = v19;
        v13 = v18[0];
        sub_1000BE6F8(v5 + 72, __p);
        v14 = v18;
        if (v12 < 0)
        {
          v14 = v13;
        }

        if (v17 >= 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = __p[0];
        }

        *buf = 136315394;
        v21 = v14;
        v22 = 2080;
        v23 = v15;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending easy unpair request to %s  for device %s ", buf, 0x16u);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }

        if (v19 < 0)
        {
          operator delete(v18[0]);
        }
      }

      return (*(**(v5 + 11) + 24))(*(v5 + 11), v5 + 79, v5 + 9, *v5);
    }
  }

  return result;
}

void sub_100508B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100508CE0(uint64_t a1, __int16 a2, uint64_t a3)
{
  sub_10050D254(a1);
  *(v6 + 224) = 0u;
  *(v6 + 216) = 0;
  *(v6 + 280) = 0;
  *(v6 + 328) = 0;
  *(v6 + 302) = 0;
  *(v6 + 292) = 0;
  *(v6 + 240) = 0u;
  *(v6 + 252) = 0u;
  *(v6 + 200) = a2;
  *(v6 + 208) = a3;
  *(v6 + 300) = 0;
  *(v6 + 312) = 0;
  *(v6 + 316) = 1065353216;
  *(v6 + 308) = 150;
  *(v6 + 322) = 0;
  *(v6 + 324) = 0;
  v7 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_INFO))
  {
    sub_1000E5A58(a3, __p);
    if (v11 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 136446210;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Created new stream config for device %{public}s", buf, 0xCu);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  return a1;
}

void sub_100508E3C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 232) = v4;
    operator delete(v4);
  }

  sub_10050D29C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100508E64(uint64_t a1)
{
  sub_10050B584(a1);
  *(a1 + 352) = 0;
  *(a1 + 344) = 0;
  sub_10050AA90(a1);
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  v2 = *(a1 + 224);
  if (v2)
  {
    *(a1 + 232) = v2;
    operator delete(v2);
  }

  return sub_10050D29C(a1);
}

uint64_t sub_100508ED0(uint64_t a1)
{
  v1 = *(a1 + 232);
  if (*(a1 + 224) == v1)
  {
    return 0;
  }

  else
  {
    return *(v1 - 4);
  }
}

BOOL sub_100508EEC(uint64_t a1, int a2)
{
  v2 = *(a1 + 224);
  v3 = *(a1 + 232);
  if (v2 != v3)
  {
    while (*v2 != a2)
    {
      if (++v2 == v3)
      {
        v2 = *(a1 + 232);
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

void sub_100508F20(uint64_t a1, int a2)
{
  v4 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 200);
    v20[0] = 67109376;
    v20[1] = a2;
    v21 = 1024;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Set stream handle %d for a2dpHandle %d", v20, 0xEu);
  }

  v7 = *(a1 + 232);
  v6 = *(a1 + 240);
  if (v7 >= v6)
  {
    v9 = *(a1 + 224);
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 2;
    v12 = v11 + 1;
    if ((v11 + 1) >> 62)
    {
      sub_1000C7698();
    }

    v13 = v6 - v9;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    v14 = v13 >= 0x7FFFFFFFFFFFFFFCLL;
    v15 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v14)
    {
      v15 = v12;
    }

    if (v15)
    {
      sub_10036F560(a1 + 224, v15);
    }

    v16 = (v7 - v9) >> 2;
    v17 = (4 * v11);
    v18 = (4 * v11 - 4 * v16);
    *v17 = a2;
    v8 = v17 + 1;
    memcpy(v18, v9, v10);
    v19 = *(a1 + 224);
    *(a1 + 224) = v18;
    *(a1 + 232) = v8;
    *(a1 + 240) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v7 = a2;
    v8 = v7 + 4;
  }

  *(a1 + 232) = v8;
}

uint64_t sub_100509098(uint64_t a1)
{
  v2 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 200);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Getting current channel info for a2dpHandle %d", v5, 8u);
  }

  return a1 + 152;
}

uint64_t sub_100509144(uint64_t a1)
{
  v2 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 156);
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Getting supports delay reporting for remote seid %d", v7, 8u);
  }

  v4 = *(a1 + 344);
  if (v4)
  {
    for (i = (*(a1 + 360) + 24); *(i - 5) != *(a1 + 156); i += 32)
    {
      if (!--v4)
      {
        return v4 & 1;
      }
    }

    LOBYTE(v4) = *i;
  }

  return v4 & 1;
}

uint64_t sub_100509234(uint64_t a1)
{
  v2 = sub_1000E45E8(*(a1 + 208));
  v3 = v2;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v4 = 4;
        goto LABEL_20;
      case 4:
        v4 = 3;
        goto LABEL_20;
      case 5:
        v4 = 5;
        goto LABEL_20;
    }

LABEL_17:
    v4 = 0;
    goto LABEL_20;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v4 = 2;
      goto LABEL_20;
    }

    if (v2 == 2)
    {
      v4 = 1;
LABEL_20:
      v7 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(*(a1 + 208), &__p);
        v8 = v19 >= 0 ? &__p : __p;
        *buf = 67109634;
        *&buf[4] = v3;
        v21 = 1024;
        v22 = v4;
        v23 = 2082;
        v24 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "User selected device type is %d. Returning device type as %d for device %{public}s.", buf, 0x18u);
        if (v19 < 0)
        {
          v9 = __p;
LABEL_26:
          operator delete(v9);
          return v4;
        }
      }

      return v4;
    }

    goto LABEL_17;
  }

  v5 = sub_1000DEB14(*(a1 + 208));
  if (v5 > 0x17)
  {
LABEL_33:
    v12 = qword_100BCE8B8;
    v4 = 0;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device type is unknown", buf, 2u);
      v4 = 0;
    }

    goto LABEL_36;
  }

  if (((1 << v5) & 0x150000) == 0)
  {
    if (((1 << v5) & 0xA80000) != 0)
    {
      v6 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device type is speaker", buf, 2u);
      }

      v4 = 3;
      goto LABEL_36;
    }

    if (((1 << v5) & 0x420000) != 0)
    {
      v11 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v4 = 2;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Device type is carkit", buf, 2u);
      }

      else
      {
        v4 = 2;
      }

      goto LABEL_36;
    }

    goto LABEL_33;
  }

  v10 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device type is headset", buf, 2u);
  }

  v4 = 1;
LABEL_36:
  v13 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(*(a1 + 208), buf);
    v14 = SHIBYTE(v24) >= 0 ? buf : *buf;
    LODWORD(__p) = 67109378;
    HIDWORD(__p) = v4;
    v17 = 2082;
    v18 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "User selected device type is unknown. Returning device type as %d for device %{public}s.", &__p, 0x12u);
    if (SHIBYTE(v24) < 0)
    {
      v9 = *buf;
      goto LABEL_26;
    }
  }

  return v4;
}

uint64_t sub_1005095A4(uint64_t a1)
{
  if (*(a1 + 176) == 255 && (v2 = sub_1005095F8(a1, 255)) != 0 && sub_10050969C(v2, *(v2 + 16)))
  {
    return 33023;
  }

  else
  {
    return *(a1 + 176);
  }
}

uint64_t sub_1005095F8(uint64_t a1, int a2)
{
  v2 = *(a1 + 344);
  if (!v2)
  {
    return 0;
  }

  v4 = a1;
  v5 = 0;
  v6 = 0;
  while (1)
  {
    v7 = *(v4 + 360);
    if (v7)
    {
      v8 = *(v7 + v5 + 16);
      if (v8)
      {
        v9 = *(v8 + 2);
        if (v9 == a2)
        {
          return v7 + v5;
        }

        if (v9 == 255)
        {
          break;
        }
      }
    }

LABEL_9:
    ++v6;
    v5 += 32;
    if (v6 >= v2)
    {
      return 0;
    }
  }

  LOBYTE(a1) = sub_10050969C(a1, v8);
  if ((a1 & 1) == 0)
  {
    v2 = *(v4 + 344);
    goto LABEL_9;
  }

  return *(v4 + 360) + v5;
}

BOOL sub_10050969C(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a2 + 3) > 0xDu)
  {
    v2 = *(a2 + 8);
    if (*v2 == 76 && !v2[1] && !v2[2] && !v2[3] && v2[4] == 1 && v2[5] == 128 && v2[7] < 0 && (~v2[9] & 0x84) == 0)
    {
      return 1;
    }
  }

  else
  {
    result = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_10083C5D0();
  }

  return 0;
}

uint64_t sub_100509750(uint64_t result, uint64_t a2, int a3)
{
  v5 = result;
  v6 = *(a2 + 2);
  if (v6 == 255)
  {
    result = sub_10050969C(result, a2);
    if (!result)
    {
      goto LABEL_6;
    }

    v7 = -1;
  }

  else
  {
    v7 = *(result + 352) | v6;
  }

  *(v5 + 352) = v7;
LABEL_6:
  v8 = *(v5 + 344);
  if (v8)
  {
    v9 = 0;
    v10 = 16;
    do
    {
      if (*(*(v5 + 360) + v10 - 12) == a3)
      {
        v11 = malloc_type_calloc(1uLL, 0x10uLL, 0x105204037B82EA9uLL);
        *(*(v5 + 360) + v10) = v11;
        *v11 = *a2;
        *(*(*(v5 + 360) + v10) + 8) = malloc_type_calloc(*(a2 + 3), 1uLL, 0x100004077774924uLL);
        result = memcpy(*(*(*(v5 + 360) + v10) + 8), *(a2 + 8), *(a2 + 3));
        v8 = *(v5 + 344);
      }

      ++v9;
      v10 += 32;
    }

    while (v9 < v8);
  }

  return result;
}

uint64_t sub_100509868(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  v7 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Parsing Audio Codec ID and information for seid %d", &buf, 8u);
  }

  if (a2)
  {
    v8 = 0;
    v22 = a2;
    do
    {
      v9 = (a3 + 16 * v8);
      v10 = *v9;
      if (v10 == 7)
      {
        if (!v9[1])
        {
          memset(&buf, 0, sizeof(buf));
          sub_100007E30(&buf, "Unknown");
          v16 = v9[2];
          if (v16 > 1)
          {
            if (v16 == 2)
            {
              sub_100509750(a1, v9, a4);
              v17 = "MPEG-2,4 AAC";
            }

            else
            {
              if (v16 != 255)
              {
                goto LABEL_23;
              }

              sub_100509750(a1, v9, a4);
              v17 = "VENDOR-SPECIFIC";
            }
          }

          else
          {
            if (v9[2])
            {
              if (v16 == 1)
              {
                sub_100509750(a1, v9, a4);
                v17 = "MPEG-1,2";
                goto LABEL_27;
              }

LABEL_23:
              v18 = qword_100BCE8B8;
              if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
              {
                *v24 = 67109120;
                LODWORD(v25) = v16;
                _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Found unknown Audio Codec ID %d", v24, 8u);
              }

LABEL_28:
              v19 = qword_100BCE8B8;
              if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
              {
                p_buf = &buf;
                if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  p_buf = buf.__r_.__value_.__r.__words[0];
                }

                *v24 = 136446466;
                v25 = p_buf;
                v26 = 1024;
                v27 = a4;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Audio Codec ID %{public}s for remote SEID %d", v24, 0x12u);
              }

              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              goto LABEL_34;
            }

            sub_100509750(a1, v9, a4);
            v17 = "SBC";
          }

LABEL_27:
          std::string::assign(&buf, v17);
          goto LABEL_28;
        }
      }

      else if (v10 == 8)
      {
        v11 = *(a1 + 344);
        if (v11)
        {
          v12 = 0;
          v13 = 0;
          v14 = *(a1 + 360);
          do
          {
            if (*(v14 + v12 + 4) == a4)
            {
              v15 = qword_100BCE8B8;
              if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
                HIDWORD(buf.__r_.__value_.__r.__words[0]) = a4;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Remote endpoint supports delay reporting (SEID %d)", &buf, 8u);
                v14 = *(a1 + 360);
                v11 = *(a1 + 344);
              }

              *(v14 + v12 + 24) = 1;
            }

            ++v13;
            v12 += 32;
          }

          while (v13 < v11);
        }
      }

LABEL_34:
      sub_100509BD8();
      ++v8;
    }

    while (v8 != v22);
  }

  return 0;
}

void sub_100509BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100509BD8()
{
  v1 = 0;
  sub_1000216B4(&v1);
  nullsub_21();
  sub_100022214(&v1);
  return sub_10002249C(&v1);
}

uint64_t sub_100509C38(uint64_t a1, int a2, int a3, int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  *(a1 + 348) = a6;
  *(a1 + 344) = a6;
  *(a1 + 352) = 0;
  v14 = *(a1 + 360);
  if (v14)
  {
    free(v14);
    v15 = *(a1 + 344);
  }

  else
  {
    v15 = a6;
  }

  v16 = malloc_type_calloc(v15, 0x20uLL, 0x1020040C75495F1uLL);
  *(a1 + 360) = v16;
  v16[1] = a3;
  *(v16 + 1) = 1;
  *v16 = 1;
  sub_100509868(a1, a6, a5, a3);
  v17 = sub_10050A6F0(a1);
  *(a1 + 176) = v17;
  v18 = (a1 + 176);
  v19 = sub_1005095F8(a1, v17);
  if (!v19)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_10083C8DC();
    }

    return 1;
  }

  if (!a7)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_10083C81C();
    }

    return 1;
  }

  v20 = v19;
  if (*v18)
  {
    goto LABEL_7;
  }

  if ((**(*(v19 + 16) + 8) & 0xF0 & **(*(a7 + 16) + 24) & 0xF0) == 0)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_10083C7AC();
    }

    return 3;
  }

  if ((**(*(v19 + 16) + 8) & 0xF & **(*(a7 + 16) + 24) & 0xF) == 0)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_10083C73C();
    }

    return 3;
  }

LABEL_7:
  sub_10050AA90(a1);
  *(a1 + 196) = 3;
  v21 = malloc_type_calloc(3uLL, 0x10uLL, 0x105204037B82EA9uLL);
  *(a1 + 184) = v21;
  *v21 = 1;
  *(*(a1 + 184) + 16) = 7;
  *(*(a1 + 184) + 17) = 0;
  *(*(a1 + 184) + 18) = *(a1 + 176);
  *(*(a1 + 184) + 19) = *(*(a7 + 16) + 19);
  *(*(a1 + 184) + 24) = malloc_type_calloc(*(*(a7 + 16) + 19), 1uLL, 0x100004077774924uLL);
  *(*(a1 + 184) + 32) = 8;
  *(a1 + 192) = 1;
  memcpy(*(*(a1 + 184) + 24), *(*(a7 + 16) + 24), *(*(a7 + 16) + 19));
  sub_100508F20(a1, a4);
  *(a1 + 152) = a2;
  *(a1 + 156) = a3;
  v22 = *(a1 + 176);
  if (v22 == 33023)
  {
    v33 = sub_10050AAE8(a1, 33023);
    *(a1 + 272) = v33;
    v34 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = a3;
      v67 = 2048;
      *v68 = v33 / 1000.0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Accepting remote Vendor-Specific Apple AAC-ELD SEID %u config with sample rate of %2.1f KHz", buf, 0x12u);
    }

    goto LABEL_28;
  }

  if (v22 == 2)
  {
    v27 = *(*(v20 + 16) + 8);
    v28 = *(v27 + 1);
    v29 = *(v27 + 2);
    if (v28)
    {
      if (v29 < 0)
      {
        v32 = sub_10050AAE8(a1, 2);
      }

      else
      {
        v32 = 44100.0;
      }
    }

    else if (v29 < 0)
    {
      v32 = 48000.0;
    }

    else
    {
      v30 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "AAC-LC set config received without any acceptable sample rate. Using default sample rate instead of rejecting", buf, 2u);
        v31 = *v18;
      }

      else
      {
        v31 = 2;
      }

      v32 = sub_10050AAE8(a1, v31);
    }

    *(a1 + 272) = v32;
    *(*(*(a1 + 184) + 24) + 1) = v32 == 44100.0;
    if (*(a1 + 272) == 44100.0)
    {
      v38 = 4;
    }

    else
    {
      v38 = -124;
    }

    *(*(*(a1 + 184) + 24) + 2) = v38;
    if (sub_10050B260(a1, *(*(v20 + 16) + 8)))
    {
      *(*(*(a1 + 184) + 24) + 3) = *(*(*(v20 + 16) + 8) + 3);
      *(*(*(a1 + 184) + 24) + 4) = *(*(*(v20 + 16) + 8) + 4);
      *(*(*(a1 + 184) + 24) + 5) = *(*(*(v20 + 16) + 8) + 5);
    }

    v39 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      v40 = *(a1 + 272) / 1000.0;
      *buf = 67109376;
      *&buf[4] = a3;
      v67 = 2048;
      *v68 = v40;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Accepting remote AAC-LC SEID %u config with sample rate of %2.1f KHz\n", buf, 0x12u);
    }

LABEL_28:
    sub_100509BD8();
    return 0;
  }

  if (v22)
  {
    v35 = sub_10050AAE8(a1, v22);
    *(a1 + 272) = v35;
    v36 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      v62 = *v18;
      *buf = 67109632;
      *&buf[4] = v62;
      v67 = 1024;
      *v68 = a3;
      *&v68[4] = 2048;
      *&v68[6] = v35 / 1000.0;
      _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Accepting remote UNKNOWN A2DP codec %x SEID %u config with sample rate of %2.1f KHz", buf, 0x18u);
    }

    sub_100509BD8();
    result = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    sub_10083C6C4();
    return 0;
  }

  v23 = **(*(v20 + 16) + 8);
  v24 = v23 & 0x30;
  if (v24 == 48)
  {
    v25 = sub_10050AAE8(a1, 0);
  }

  else
  {
    v37 = (v23 & 0x20) == 0;
    if (v24)
    {
      v25 = dbl_1008A9CA0[v37];
    }

    else
    {
      v41 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "SBC set config received without any acceptable sample rate. Using default sample rate instead of rejecting", buf, 2u);
        v42 = *v18;
      }

      else
      {
        v42 = 0;
      }

      v25 = sub_10050AAE8(a1, v42);
    }
  }

  *(a1 + 272) = v25;
  if (v25 == 44100.0)
  {
    v43 = 33;
  }

  else
  {
    v43 = 17;
  }

  **(*(a1 + 184) + 24) = v43;
  if (*(a1 + 272) == 44100.0)
  {
    v44 = 53;
  }

  else
  {
    v44 = 48;
  }

  *(a1 + 264) = v44;
  v65 = 0;
  v45 = sub_10000E92C();
  sub_100007E30(buf, "A2DP");
  sub_100007E30(__p, "SBCBitpool");
  v46 = (*(*v45 + 128))(v45, buf, __p, &v65);
  v48 = v46;
  if (v64 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v68[13] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (v48)
  {
    v49 = v65;
    v50 = qword_100BCE8B8;
    if ((v65 - 251) > 0xFFFFFF06)
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v49;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Warning: Setting user defined SBC Bitpool value to %d", buf, 8u);
        v49 = v65;
      }

      *(a1 + 264) = v49;
    }

    else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_10083C610();
    }
  }

  else
  {
    v51 = sub_10000C798(v46, v47);
    if ((*(*v51 + 416))(v51))
    {
      v52 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Adjusting bitpool if needed - we are Peripheral", buf, 2u);
      }

      sub_10050AF90(a1);
    }
  }

  sub_10050B10C(a1);
  v53 = *(v20 + 16);
  v54 = *(*(v53 + 8) + 2);
  if (v44 >= v54)
  {
    if (*(a1 + 264) < v54)
    {
      v56 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v54;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Warning: Increasing SBC Bitpool to %d based on sink's Minimum Bitpool Value", buf, 8u);
        v53 = *(v20 + 16);
        v54 = *(*(v53 + 8) + 2);
      }

      *(a1 + 264) = v54;
    }
  }

  else
  {
    v55 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v54;
      _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Ignoring sink's SBC Minimum Bitpool Value of %d because it is too high", buf, 8u);
      v53 = *(v20 + 16);
    }
  }

  v57 = *(*(v53 + 8) + 3);
  if (v57 > 1)
  {
    if (*(a1 + 264) > v57)
    {
      v58 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v57;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Warning: Reducing SBC Bitpool to %d based on sink's Maximum Bitpool Value", buf, 8u);
        v57 = *(*(*(v20 + 16) + 8) + 3);
      }

      *(a1 + 264) = v57;
    }
  }

  else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_10083C650();
  }

  v59 = qword_100BCE8B8;
  result = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v60 = *(a1 + 264);
    v61 = *(a1 + 272);
    *buf = 67109632;
    *&buf[4] = a3;
    v67 = 1024;
    *v68 = v60;
    *&v68[4] = 2048;
    *&v68[6] = v61 / 1000.0;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Accepting remote SBC SEID %u config with bitpool %d and sample rate of %2.1f KHz", buf, 0x18u);
    return 0;
  }

  return result;
}

void sub_10050A6B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10050A6F0(uint64_t a1)
{
  v21 = 0;
  v2 = sub_10000E92C();
  v3 = (*(*v2 + 8))(v2);
  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = sub_10000E92C();
  sub_100007E30(buf, "A2DP");
  sub_100007E30(__p, "DisableAAC");
  v3 = (*(*v5 + 72))(v5, buf, __p, &v21);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(*buf);
  }

  if (v21)
  {
    v6 = 0;
    v21 = 1;
  }

  else
  {
LABEL_8:
    v7 = sub_10000C798(v3, v4);
    v3 = (*(*v7 + 832))(v7);
    v21 = v3;
    if (v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(a1 + 352) & 2;
    }
  }

  v8 = sub_10000C798(v3, v4);
  v9 = (*(*v8 + 368))(v8);
  v10 = v9;
  v18 = v9 != 0;
  v11 = sub_10000E92C();
  if (!(*(*v11 + 8))(v11))
  {
    if (v10)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v12 = sub_10000E92C();
  sub_100007E30(buf, "A2DP");
  sub_100007E30(__p, "DisableAACELD");
  (*(*v12 + 72))(v12, buf, __p, &v18);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(*buf);
  }

  if (!v18)
  {
LABEL_19:
    if (*(a1 + 352))
    {
      v13 = sub_1005095F8(a1, 255);
      if (v13)
      {
        if (sub_10050969C(v13, *(v13 + 16)))
        {
          v6 = 33023;
        }

        else
        {
          v6 = v6;
        }
      }
    }
  }

LABEL_24:
  v14 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    if (v6 > 254)
    {
      if (v6 == 255)
      {
        v15 = "Unknown AVDTP_CODEC_VENDOR_SPECIFIC";
        goto LABEL_35;
      }

      if (v6 == 33023)
      {
        v15 = "AVDTP_CODEC_APPLE_AACELD";
        goto LABEL_35;
      }
    }

    else
    {
      if (!v6)
      {
        v15 = "AVDTP_CODEC_SBC";
        goto LABEL_35;
      }

      if (v6 == 2)
      {
        v15 = "AVDTP_CODEC_MPEG_AAC";
LABEL_35:
        v16 = *(a1 + 348);
        *buf = 136315650;
        *&buf[4] = v15;
        v23 = 1024;
        v24 = v6;
        v25 = 1024;
        v26 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Selected preferred codec %s (0x%0x) out of %d available endpoints", buf, 0x18u);
        return v6;
      }
    }

    v15 = "Unknown AVDTP codec";
    goto LABEL_35;
  }

  return v6;
}

void sub_10050AA4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10050AA90(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    if (v2[1])
    {
      free(v2[1]);
      v2 = *(a1 + 184);
    }

    if (v2[3])
    {
      free(v2[3]);
      v2 = *(a1 + 184);
    }

    free(v2);
    *(a1 + 184) = 0;
  }
}

double sub_10050AAE8(uint64_t a1, int a2)
{
  v19 = 0;
  v4 = sub_10000E92C();
  sub_100007E30(buf, "A2DP");
  sub_100007E30(__p, "SampleRate");
  v5 = (*(*v4 + 128))(v4, buf, __p, &v19);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v21) < 0)
  {
    operator delete(*buf);
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  else if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v19;
  if (v19 != 48000 && v19 != 44100)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_10083C99C();
    }

LABEL_14:
    v28 = 0;
    v27 = 0u;
    memset(v26, 0, sizeof(v26));
    v24 = 0u;
    *v25 = 0u;
    v22 = 0u;
    *v23 = 0u;
    *buf = 0u;
    v21 = 0u;
    sub_1000DE474(&buf[1]);
    BYTE2(v21) = 0;
    BYTE4(v21) = 0;
    BYTE2(v23[0]) = 0;
    BYTE4(v23[0]) = 0;
    DWORD1(v26[1]) = 0;
    v22 = 0uLL;
    *(&v21 + 1) = 0;
    LOBYTE(v23[0]) = 0;
    v24 = 0uLL;
    v23[1] = 0;
    LOBYTE(v25[0]) = 0;
    memset(v26, 0, 19);
    v25[1] = 0;
    BYTE8(v26[1]) = 1;
    *(&v26[1] + 14) = 0;
    *(&v26[1] + 9) = 0;
    v27 = 0uLL;
    *(&v26[2] + 1) = 0;
    LOBYTE(v28) = 0;
    *(&v28 + 2) = 0;
    sub_100536A18(*(a1 + 208), buf);
    v16 = 0;
    v9 = sub_10000E92C();
    sub_100007E30(__p, "A2DP");
    sub_100007E30(v14, "Default48KHz");
    (*(*v9 + 72))(v9, __p, v14, &v16);
    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (v16 == 1)
    {
      v10 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Warning: GetPreferredSampleRate: Defaulting to 48 KHz based on defaults write - using denylist instead of allowlist", __p, 2u);
      }

      v8 = 48000.0;
      if (a2 != 2)
      {
        goto LABEL_32;
      }

      if ((BYTE8(v27) & 1) == 0)
      {
        goto LABEL_32;
      }

      v11 = qword_100BCE8B8;
      v8 = 44100.0;
      if (!os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      LOWORD(__p[0]) = 0;
      v12 = "GetPreferredSampleRate: Reducing sample rate - Device is in 48 KHz denylist";
      goto LABEL_31;
    }

    if ((BYTE9(v27) & 1) != 0 || sub_100539FE8(*(a1 + 208)))
    {
      v11 = qword_100BCE8B8;
      v8 = 48000.0;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        v12 = "GetPreferredSampleRate: Device is in 48 KHz allowlist";
LABEL_31:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, __p, 2u);
      }
    }

    else
    {
      v11 = qword_100BCE8B8;
      v8 = 44100.0;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        v12 = "GetPreferredSampleRate: Reducing sample rate - Device is NOT in 48 KHz allowlist";
        goto LABEL_31;
      }
    }

LABEL_32:
    if (SHIBYTE(v26[0]) < 0)
    {
      operator delete(v25[1]);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[1]);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(*(&v21 + 1));
    }

    nullsub_21();
    return v8;
  }

  v7 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: GetPreferredSampleRate: Setting user defined A2DP Sample Rate to %d Hz", buf, 8u);
    return v19;
  }

  return v6;
}