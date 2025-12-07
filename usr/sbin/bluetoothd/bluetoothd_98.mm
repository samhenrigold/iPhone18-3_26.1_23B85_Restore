void sub_100709238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, std::__shared_weak_count *a47)
{
  sub_10002249C((v48 - 224));
  if (a47)
  {
    sub_100117644(a47);
  }

  sub_10000CEDC(v48 - 248, *(v48 - 240));

  _Unwind_Resume(a1);
}

void sub_1007093E0(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_10004DF60(a2);
  v5 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MIDI: Trying to detect built in MIDI service on device %@", buf, 0xCu);
  }

  v37 = 0;
  v38 = 0;
  sub_10004DFB4(buf, v4);
  sub_10070B42C(a1, buf, 0, &v37);
  v6 = v37;
  if (v37)
  {
    sub_1005B7638(v37, "");
    v41 = xmmword_1008A4E80;
    v42 = 13091918;
    sub_10000D03C(buf, &v41);
    sub_10003A364(&v41);
    v7 = sub_1005B68E8(v6, buf, &v41);
    if (sub_10070E714(a1, &xmmword_1008A4E80, a2))
    {
      v8 = _os_feature_enabled_impl();
      if (v7)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (v9 == 1 && (v10 = *(v7 + 8), v11 = *(v10 + 20), *buf = *(v10 + 4), *&buf[16] = v11, sub_10000D03C(&v41, buf), *buf = xmmword_1008C50C4, *&buf[16] = 0, sub_10004E15C(&v41, buf)))
      {
        if (qword_100B508D0 != -1)
        {
          sub_1008666F4();
        }

        if (sub_1007913E4(off_100B508C8, v4))
        {
          goto LABEL_16;
        }

        if (qword_100B508B0 != -1)
        {
          sub_10086671C();
        }

        v12 = off_100B508A8;
        sub_10004DFB4(buf, v4);
        if (sub_10074E9A4(v12, buf))
        {
LABEL_16:
          v13 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v4;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "MIDI: The device %@ supports MIDI, but it's Apple device - No AutoConnect", buf, 0xCu);
          }

          goto LABEL_24;
        }

        if (qword_100B508D0 != -1)
        {
          sub_1008666F4();
        }

        v16 = sub_10078E828(off_100B508C8, v4);
        v17 = v16;
        if (!v16)
        {
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
          {
            sub_1008668FC();
          }

          goto LABEL_35;
        }

        v18 = [v16 localizedCaseInsensitiveContainsString:@"Apple"];
        v19 = qword_100BCE910;
        v20 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT);
        if (v18)
        {
          if (v20)
          {
            *buf = 138412546;
            *&buf[4] = v4;
            *&buf[12] = 2112;
            *&buf[14] = v17;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "MIDI: The device %@ supports MIDI, but it's %@ manufacturer - No AutoConnect", buf, 0x16u);
          }

LABEL_35:

          goto LABEL_24;
        }

        if (v20)
        {
          *buf = 138412290;
          *&buf[4] = v4;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "MIDI: The device %@ supports MIDI", buf, 0xCu);
        }

        if (qword_100B508D0 != -1)
        {
          sub_1008666F4();
        }

        v21 = off_100B508C8;
        v22 = sub_10004DF60(a2);
        sub_10078D4F4(v21, v22, 1);

        if (qword_100B508C0 != -1)
        {
          sub_1008665BC();
        }

        if (sub_10004EE74(off_100B508B8, v4))
        {
          if (qword_100B508D0 != -1)
          {
            sub_1008666F4();
          }

          v23 = off_100B508C8;
          sub_100007E30(__p, "_MIDI_DEVICE_");
          sub_10078787C(v23, v4, __p);
          if (v36 < 0)
          {
            operator delete(__p[0]);
          }

          v24 = [NSData dataWithBytes:&xmmword_1008A4E80 + 4 length:16];
          v25 = [CBUUID UUIDWithData:v24];

          if (qword_100B508D0 != -1)
          {
            sub_1008666F4();
          }

          sub_10004FFDC(off_100B508C8, v4, buf);
          if (v40 >= 0)
          {
            v26 = buf;
          }

          else
          {
            v26 = *buf;
          }

          v27 = [NSString stringWithUTF8String:v26];
          if (v40 < 0)
          {
            operator delete(*buf);
          }

          v28 = qword_100BCE910;
          v29 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT);
          if (v29)
          {
            *buf = 138412546;
            *&buf[4] = v25;
            *&buf[12] = 2112;
            *&buf[14] = v27;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "MIDI: Starting MIDI service %@ on paired device %@", buf, 0x16u);
          }

          v31 = sub_100432610(v29, v30);
          (*(*v31 + 24))(v31, v4);
          v32 = gCBDaemonServer;
          v33 = [NSArray arrayWithObject:v25];
          [v32 notifyConnectedDeviceUUID:v4 name:v27 servicesUUIDs:v33];

          sub_10070E940(a1, &xmmword_1008A4E80, a2);
        }

        else
        {
          v34 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v4;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "MIDI: %@ is not paired - No AutoConnect", buf, 0xCu);
          }
        }
      }

      else
      {
        v14 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
        {
          v15 = _os_feature_enabled_impl();
          sub_1008668A0(v15, v7, buf, v14);
        }
      }
    }

    else if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100866864();
    }
  }

  else if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_100866938();
  }

LABEL_24:
  if (v38)
  {
    sub_100117644(v38);
  }
}

void sub_100709A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17)
  {
    sub_100117644(a17);
  }

  _Unwind_Resume(a1);
}

void sub_100709B34(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a2;
  v6 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = v5;
    v13 = 1024;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "GattGateway init on device %{public}@ with mtu %d", buf, 0x12u);
  }

  v10 = 0;
  if (qword_100B508D0 != -1)
  {
    sub_1008666F4();
  }

  v7 = sub_10078B32C(off_100B508C8, v5, &v10);
  v8 = v10;
  sub_10004DFB4(buf, v5);
  v9 = v8 != 2 || !v7;
  sub_100709C80(a1, buf, v3, v9);
}

void sub_100709C80(uint64_t a1, const unsigned __int8 *a2, __int16 a3, char a4)
{
  v5 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, 37);
    uuid_unparse_upper(a2, out);
    sub_100007E30(__p, out);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *out = 136446210;
    *&out[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Beginning init sequence for device %{public}s", out, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *out = 0;
  operator new();
}

void sub_100709FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = a10;
  a10 = 0;
  if (v16)
  {
    sub_100713478(&a10, v16);
  }

  v17 = a15;
  a15 = 0;
  if (v17)
  {
    sub_100713478(&a15, v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_10070A054(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  sub_10004DFB4(buf, v5);
  v6 = sub_10004E34C(a1 + 192, buf);
  v7 = qword_100BCE910;
  if (a1 + 200 != v6 && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "fCommandSchedulerMap.find(device) == fCommandSchedulerMap.end()";
    _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", buf, 0xCu);
    v7 = qword_100BCE910;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v5;
    *&buf[12] = 1024;
    *&buf[14] = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "GattGateway device %{public}@ is connected with Gatt handle 0x%x", buf, 0x12u);
  }

  *v11 = 0;
  v15 = 0;
  v16 = 0;
  v14 = &v15;
  sub_10004DFB4(buf, v5);
  *&buf[16] = 0;
  memset(v18, 0, sizeof(v18));
  memset(v12, 0, sizeof(v12));
  memset(v19, 0, sizeof(v19));
  memset(v13, 0, sizeof(v13));
  v20 = *&v13[32];
  v22 = 0;
  v21 = 0;
  v23 = &v15;
  v24[0] = v15;
  v24[1] = v16;
  if (v16)
  {
    v15[2] = v24;
    v14 = &v15;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v23 = v24;
  }

  sub_100713124((a1 + 192), buf, buf);
  sub_10037505C(&v23, v24[0]);
  sub_100712CCC(v19);
  sub_100712CCC(v18);
  sub_10037505C(&v14, v15);
  sub_100712CCC(v13);
  sub_100712CCC(v12);
  sub_10004DFB4(buf, v5);
  v8 = sub_10070A400(a1 + 192, buf);
  *v8 = a3;
  *buf = 0;
  *&buf[8] = 0;
  sub_10004DFB4(buf, v5);
  sub_100713334((a1 + 248), buf);
  v9 = sub_10000E92C();
  if ((*(*v9 + 8))(v9) && *(a1 + 244) == 1)
  {
    if (qword_100B508D0 != -1)
    {
      sub_1008666F4();
    }

    if ((sub_10078D924(off_100B508C8, v5) & 1) == 0)
    {
      v10 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "GattGateway initSqequence on deviceConnected", v11, 2u);
      }

      *(v8 + 105) = 1;
      sub_100709B34(a1, v5, 24);
    }
  }
}

void sub_10070A3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_100712C4C(va);
  sub_100712C8C(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10070A400(uint64_t a1, unsigned __int8 *uu1)
{
  v4 = 0;
  v2 = *sub_10004A7D0(a1, &v4, uu1);
  if (!v2)
  {
    abort();
  }

  return v2 + 48;
}

void sub_10070A43C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5) = 138543362;
    *(&v5 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "GattGateway device %{public}@ is disconnected", &v5, 0xCu);
  }

  sub_10070A560(a1, v3);
  sub_10004DFB4(&v5, v3);
  sub_10071337C((a1 + 192), &v5);
  sub_10070A66C(a1, v3);
  v5 = 0uLL;
  sub_10004DFB4(&v5, v3);
  sub_100713334((a1 + 248), &v5);
}

void sub_10070A560(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_10004DFB4(uu2, v3);
  if (a1 + 176 != sub_10004E34C(a1 + 168, uu2))
  {
    sub_10004DFB4(uu2, v3);
    v7 = uu2;
    v4 = sub_10071380C((a1 + 168), uu2, &unk_1008A9BD0, &v7, &v6);
    v5 = v4 + 7;
    sub_10000CEDC((v4 + 6), v4[7]);
    *v5 = 0;
    v5[1] = 0;
    *(v5 - 1) = v5;
    sub_10004DFB4(uu2, v3);
    sub_100713334((a1 + 168), uu2);
  }
}

void sub_10070A66C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (qword_100B50F78 != -1)
  {
    sub_1008665F8();
  }

  v3 = sub_100580920(qword_100B50F70, v2);
  v48 = 0;
  v49 = 0;
  sub_10004DFB4(&v56, v2);
  sub_10070B42C(a1, &v56, 0, &v48);
  v4 = v48;
  if (v48)
  {
    *__p = xmmword_1008A4B5C;
    LODWORD(v55) = 0;
    sub_10000D03C(&v56, __p);
    *buf = xmmword_1008A4BAC;
    LODWORD(v51) = 0;
    sub_10000D03C(__p, buf);
    v5 = sub_1005B68E8(v4, &v56, __p);
    v56 = 0uLL;
    v57 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v55 = 0;
    if (!sub_1005B38CC(v4, 0, __p))
    {
      v6 = __p[0];
      if (__p[0] != __p[1])
      {
        v45 = v3;
        do
        {
          v7 = *v6;
          *buf = *(*v6 + 72);
          LODWORD(v51) = *(v7 + 88);
          sub_10000D03C(v52, buf);
          v8 = v56.n128_u64[1];
          if (v56.n128_u64[1] >= v57)
          {
            v11 = 0xCCCCCCCCCCCCCCCDLL * ((v56.n128_u64[1] - v56.n128_u64[0]) >> 2);
            v12 = v11 + 1;
            if (v11 + 1 > 0xCCCCCCCCCCCCCCCLL)
            {
              sub_1000C7698();
            }

            if (0x999999999999999ALL * ((v57 - v56.n128_u64[0]) >> 2) > v12)
            {
              v12 = 0x999999999999999ALL * ((v57 - v56.n128_u64[0]) >> 2);
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((v57 - v56.n128_u64[0]) >> 2) >= 0x666666666666666)
            {
              v13 = 0xCCCCCCCCCCCCCCCLL;
            }

            else
            {
              v13 = v12;
            }

            if (v13)
            {
              sub_100018404(&v56, v13);
            }

            v14 = 4 * ((v56.n128_u64[1] - v56.n128_u64[0]) >> 2);
            v15 = *v52;
            *(v14 + 16) = v53;
            *v14 = v15;
            v17 = v56.n128_u64[1];
            v16 = v56.n128_u64[0];
            v18 = 20 * v11 + v56.n128_u64[0] - v56.n128_u64[1];
            if (v56.n128_u64[0] != v56.n128_u64[1])
            {
              v19 = v14 + v56.n128_u64[0] - v56.n128_u64[1];
              do
              {
                v20 = *v16;
                *(v19 + 16) = v16[4];
                *v19 = v20;
                v19 += 20;
                v16 += 5;
              }

              while (v16 != v17);
              v16 = v56.n128_u64[0];
            }

            v10 = v14 + 20;
            v56.n128_u64[0] = v18;
            v56.n128_u64[1] = v14 + 20;
            v57 = 0;
            if (v16)
            {
              operator delete(v16);
            }
          }

          else
          {
            v9 = *v52;
            *(v56.n128_u64[1] + 16) = v53;
            *v8 = v9;
            v10 = v8 + 20;
          }

          v56.n128_u64[1] = v10;
          if (*v6)
          {
            (*(**v6 + 8))(*v6);
          }

          ++v6;
        }

        while (v6 != __p[1]);
        v6 = __p[0];
        v3 = v45;
      }

      __p[1] = v6;
      memset(buf, 0, sizeof(buf));
      v51 = 0;
      sub_100579774(buf, v2, &v56);
      if (qword_100B541F8 != -1)
      {
        sub_1008669A8();
      }

      sub_10000EFDC(qword_100B541F0, buf);
    }

    if (v3)
    {
      v21 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        *&buf[4] = v2;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Keeping database for paired device %{public}@", buf, 0xCu);
      }

      v22 = v48;
      *v52 = xmmword_1008A4D14;
      v53 = 0;
      sub_10000D03C(buf, v52);
      sub_1005B7478(v22, buf);
    }

    else
    {
      if (qword_100B508D0 != -1)
      {
        sub_1008666F4();
      }

      v24 = sub_100046458(off_100B508C8, v2, 0);
      if (v5 || BYTE6(v24) && (BYTE6(v24) != 1 || (~v24 & 0xC00000000000) != 0))
      {
        sub_100707D50(a1, v2);
      }

      else
      {
        v25 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          *&buf[4] = v2;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Keeping database for public/static device %{public}@", buf, 0xCu);
        }

        memset(buf, 0, sizeof(buf));
        uuid_clear(buf);
        v26 = 0;
        v27 = (a1 + 224);
        v28 = 0x7FFFFFFF;
        while (1)
        {
          v29 = *(a1 + 216);
          if (v29 != v27)
          {
            do
            {
              if (qword_100B50F78 != -1)
              {
                sub_10086656C();
              }

              v30 = qword_100B50F70;
              v31 = sub_10004DF60(v29 + 32);
              LOBYTE(v30) = sub_100580920(v30, v31);

              if ((v30 & 1) == 0)
              {
                if (qword_100B50F78 != -1)
                {
                  sub_10086656C();
                }

                v32 = qword_100B50F70;
                v33 = sub_10004DF60(v29 + 32);
                LOBYTE(v32) = sub_100052A90(v32, v33);

                ++v26;
                if ((v32 & 1) == 0)
                {
                  v47 = 0;
                  if (qword_100B50F78 != -1)
                  {
                    sub_10086656C();
                  }

                  v34 = qword_100B50F70;
                  sub_10004DFB4(v52, v2);
                  if (!sub_1005807A8(v34, v52, &v47))
                  {
                    if (v47 == 1)
                    {
                      if (qword_100B508D0 != -1)
                      {
                        sub_1008666F4();
                      }

                      v38 = off_100B508C8;
                      v39 = sub_10004DF60(v29 + 32);
                      v37 = sub_100786A14(v38, v39);
                    }

                    else if (v47 == 2)
                    {
                      if (qword_100B508D0 != -1)
                      {
                        sub_1008666F4();
                      }

                      v35 = off_100B508C8;
                      v36 = sub_10004DF60(v29 + 32);
                      v37 = sub_100786988(v35, v36);
                    }

                    else
                    {
                      v40 = qword_100BCE910;
                      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
                      {
                        *v52 = 138543362;
                        *&v52[4] = v2;
                        _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Cannot update last connected time for device %{public}@ as no transport was found", v52, 0xCu);
                      }

                      v37 = 0;
                    }

                    if (uuid_is_null(buf) || v37 < v28)
                    {
                      uuid_copy(buf, v29 + 32);
                      v28 = v37;
                    }
                  }
                }
              }

              v41 = *(v29 + 1);
              if (v41)
              {
                do
                {
                  v42 = v41;
                  v41 = *v41;
                }

                while (v41);
              }

              else
              {
                do
                {
                  v42 = *(v29 + 2);
                  v43 = *v42 == v29;
                  v29 = v42;
                }

                while (!v43);
              }

              v29 = v42;
            }

            while (v42 != v27);
          }

          if (*(a1 + 240) >= v26 || uuid_is_null(buf))
          {
            break;
          }

          v44 = sub_10004DF60(buf);
          sub_100707D50(a1, v44);
        }
      }
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v56.n128_u64[0])
    {
      v56.n128_u64[1] = v56.n128_u64[0];
      operator delete(v56.n128_u64[0]);
    }
  }

  else
  {
    v23 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
    {
      v56.n128_u32[0] = 138543362;
      *(v56.n128_u64 + 4) = v2;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Database not found for device %{public}@", &v56, 0xCu);
    }
  }

  if (v49)
  {
    sub_100117644(v49);
  }
}

void sub_10070ADC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  v29 = *(v27 - 128);
  if (v29)
  {
    *(v27 - 120) = v29;
    operator delete(v29);
  }

  if (a16)
  {
    sub_100117644(a16);
  }

  _Unwind_Resume(a1);
}

void sub_10070AE94(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v7 = a2;
  v8 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138543618;
    v21 = v7;
    v22 = 1024;
    v23 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "GattGateway device %{public}@ is ready with mtu %d", &v20, 0x12u);
  }

  sub_10004DFB4(&v20, v7);
  if (a1 + 200 == sub_10004E34C(a1 + 192, &v20))
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_100866A40();
    }

    if (qword_100B508B0 != -1)
    {
      sub_10086671C();
    }

    v12 = off_100B508A8;
    sub_10004DFB4(&v20, v7);
    if (sub_10074CD90(v12, &v20, 3) && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100866A80();
    }
  }

  else
  {
    sub_10004DFB4(&v20, v7);
    v9 = sub_10070A400(a1 + 192, &v20);
    if (*v9)
    {
      if (a3)
      {
        v10 = *(a1 + 242);
        if (*(a1 + 242))
        {
          v11 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
          {
            v20 = 67109120;
            LODWORD(v21) = v10;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Warning: MTU override to %d", &v20, 8u);
          }

          a4 = v10;
        }
      }

      else
      {
        a4 = 0;
      }

      if (qword_100B508D0 != -1)
      {
        sub_1008666F4();
      }

      if (sub_10078D924(off_100B508C8, v7))
      {
        v14 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 138543362;
          v21 = v7;
          v15 = "Device %{public}@ connected, LE GATT disabled, blocking all GATT client communications";
          v16 = v14;
          v17 = 12;
LABEL_27:
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &v20, v17);
        }
      }

      else
      {
        v18 = sub_10000E92C();
        if (!(*(*v18 + 8))(v18) || *(a1 + 244) != 1)
        {
          *(v9 + 105) = 1;
          sub_100709B34(a1, v7, a4);
        }

        v19 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v20) = 0;
          v15 = "GattGateway initSqequence on deviceConnected, skipping for linkReady ";
          v16 = v19;
          v17 = 2;
          goto LABEL_27;
        }
      }
    }

    else
    {
      v13 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v20) = 0;
        _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Gatt session handle is invalid", &v20, 2u);
        v13 = qword_100BCE910;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1008669D0();
      }
    }
  }
}

void sub_10070B220(uint64_t a1@<X0>, void *a2@<X1>, const void **a3@<X8>)
{
  v5 = a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  sub_10004DFB4(&v20, v5);
  v18 = 0;
  v19 = 0;
  sub_10070B42C(a1, &v20, 0, &v18);
  if (v18)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    sub_1005B381C(v18, &v20);
    v6 = v20;
    if (v21 != v20)
    {
      sub_10070B5B4(a3, v21 - v20);
      v6 = v20;
      if (v20 != v21)
      {
        v7 = a3[1];
        do
        {
          v8 = *v6;
          v9 = a3[2];
          if (v7 >= v9)
          {
            v10 = (v7 - *a3) >> 3;
            if ((v10 + 1) >> 61)
            {
              sub_1000C7698();
            }

            v11 = v9 - *a3;
            v12 = v11 >> 2;
            if (v11 >> 2 <= (v10 + 1))
            {
              v12 = v10 + 1;
            }

            if (v11 >= 0x7FFFFFFFFFFFFFF8)
            {
              v13 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v13 = v12;
            }

            if (v13)
            {
              sub_100008108(a3, v13);
            }

            v14 = (8 * v10);
            *v14 = v8;
            v7 = (8 * v10 + 8);
            v15 = a3[1] - *a3;
            v16 = v14 - v15;
            memcpy(v14 - v15, *a3, v15);
            v17 = *a3;
            *a3 = v16;
            a3[1] = v7;
            a3[2] = 0;
            if (v17)
            {
              operator delete(v17);
            }
          }

          else
          {
            *v7 = v8;
            v7 += 8;
          }

          a3[1] = v7;
          ++v6;
        }

        while (v6 != v21);
        v6 = v20;
      }
    }

    if (v6)
    {
      v21 = v6;
      operator delete(v6);
    }
  }

  if (v19)
  {
    sub_100117644(v19);
  }
}

void sub_10070B3DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    sub_100117644(a10);
  }

  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10070B42C@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  result = sub_10004E34C(a1 + 216, a2);
  if (a1 + 224 == result)
  {
    if (a3)
    {
      sub_100714AF8();
    }
  }

  else
  {
    v10 = *(result + 48);
    v9 = *(result + 56);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    *a4 = v10;
    a4[1] = v9;
    if (v10)
    {
      *&v11 = 0;
      if (qword_100B508B0 != -1)
      {
        sub_10086671C();
      }

      result = sub_1000C4FCC(off_100B508A8, a2, &v11);
      if (result)
      {
        LOBYTE(v12) = 0;
        sub_1000216B4(&v12);
        *(v10 + 146) = sub_100255698(v11);
        return sub_10002249C(&v12);
      }

      else
      {
        *(v10 + 146) = 0;
      }
    }
  }

  return result;
}

void sub_10070B570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, char a12)
{
  if (a10)
  {
    sub_100117644(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10070B5B4(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_100008108(a1, a2);
    }

    sub_1000C7698();
  }
}

void sub_10070B654(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, const void **a4@<X8>)
{
  v7 = a3;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  sub_10004DFB4(v28, v7);
  v8 = sub_10070B868(a1, v28);
  if (v8)
  {
    v9 = *(v8 + 112);
    v10 = (v8 + 120);
    if (v9 != (v8 + 120))
    {
      v11 = 0;
      do
      {
        v12 = v9[6];
        if (v12)
        {
          v13 = v9 + 6;
          do
          {
            v14 = v12[4];
            v15 = v14 >= a2;
            v16 = v14 < a2;
            if (v15)
            {
              v13 = v12;
            }

            v12 = v12[v16];
          }

          while (v12);
          if (v13 != v9 + 6 && v13[4] <= a2)
          {
            v17 = a4[2];
            if (v11 >= v17)
            {
              v18 = *a4;
              v19 = v11 - *a4;
              v20 = v19 >> 1;
              if (v19 >> 1 <= -2)
              {
                sub_1000C7698();
              }

              v21 = v17 - v18;
              if (v21 <= v20 + 1)
              {
                v22 = v20 + 1;
              }

              else
              {
                v22 = v21;
              }

              if (v21 >= 0x7FFFFFFFFFFFFFFELL)
              {
                v23 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v23 = v22;
              }

              if (v23)
              {
                sub_1003705C4(a4, v23);
              }

              *(2 * v20) = *(v9 + 16);
              v11 = (2 * v20 + 2);
              memcpy(0, v18, v19);
              v24 = *a4;
              *a4 = 0;
              a4[1] = v11;
              a4[2] = 0;
              if (v24)
              {
                operator delete(v24);
              }
            }

            else
            {
              *v11 = *(v9 + 16);
              v11 += 2;
            }

            a4[1] = v11;
          }
        }

        v25 = v9[1];
        if (v25)
        {
          do
          {
            v26 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v26 = v9[2];
            v27 = *v26 == v9;
            v9 = v26;
          }

          while (!v27);
        }

        v9 = v26;
      }

      while (v26 != v10);
    }
  }
}

void sub_10070B838(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10070B868(uint64_t a1, const unsigned __int8 *a2)
{
  v3 = sub_10004DF60(a2);
  sub_10004DFB4(uu2, v3);
  v4 = sub_10004E34C(a1 + 192, uu2);

  if (a1 + 200 == v4)
  {
    return 0;
  }

  else
  {
    return v4 + 48;
  }
}

uint64_t sub_10070B91C(uint64_t a1, const unsigned __int8 *a2, uint64_t *a3, int a4)
{
  if (!*(*a3 + 24))
  {
    v8 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_100866AF0(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = sub_10070B868(a1, a2);
  if (!v16)
  {
    return 312;
  }

  v17 = v16;
  if (a4)
  {
    if (*(v16 + 104) == 1)
    {
      if (!*(v16 + 48))
      {
        v18 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
        {
          sub_100866B68(v18, v19, v20, v21, v22, v23, v24, v25);
        }
      }

      v26 = *(v17 + 16);
      v27 = (v26 + 8 * (*(v17 + 40) >> 9));
      v28 = *v27 + 8 * (*(v17 + 40) & 0x1FFLL);
      if (*(v17 + 24) == v26)
      {
        v28 = 0;
      }

      v29 = (v28 - *v27) >> 3;
      if (v29 < 0)
      {
        v35 = 510 - v29;
        v31 = &v27[-(v35 >> 9)];
        v32 = *v31;
        v33 = ~v35 & 0x1FFLL;
      }

      else
      {
        v30 = v29 + 1;
        v31 = &v27[v30 >> 9];
        v32 = *v31;
        v33 = v30 & 0x1FF;
      }

      sub_10070FE04((v17 + 8), v31, v32 + 8 * v33, a3);
    }

    else
    {
      sub_1007101BC(v16 + 8, a3);
    }
  }

  else
  {
    sub_100710240((v16 + 8), a3);
  }

  if (*(v17 + 105) == 1)
  {
    v36 = sub_10004DF60(a2);
    sub_1007102CC(a1, v36, v17);
  }

  return 0;
}

BOOL sub_10070BAC0(uint64_t a1, void *a2, unsigned __int8 *a3, unsigned int a4)
{
  v7 = a2;
  sub_10004DFB4(&v17, v7);
  v15 = 0;
  v16 = 0;
  sub_10070B42C(a1, &v17, 0, &v15);
  if (v15)
  {
    v8 = sub_1005B6820(v15, a4);
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 8);
      v11 = *(v10 + 20);
      v17 = *(v10 + 4);
      LODWORD(v18) = v11;
      sub_10000D03C(&v19, &v17);
      v17 = xmmword_1008C50B0;
      LODWORD(v18) = 0;
      if (sub_10004E15C(&v19, &v17))
      {
        v19 = 0uLL;
        v20 = 0;
        v17 = *(v9 + 76);
        LODWORD(v18) = *(v9 + 92);
        sub_10000D03C(&v19, &v17);
        v12 = sub_100058794(a1 + 144, a3);
        if (a1 + 152 != v12)
        {
          v17 = 0uLL;
          v18 = 0;
          sub_1007134F4(&v17, v12 + 56);
          v13 = (&v17 + 8) != sub_10007C324(&v17, &v19);
          sub_10000CEDC(&v17, *(&v17 + 1));
          goto LABEL_9;
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_1008667B4();
  }

  v13 = 0;
LABEL_9:
  if (v16)
  {
    sub_100117644(v16);
  }

  return v13;
}

void sub_10070BC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, void *a12)
{
  sub_10000CEDC(&a11, a12);
  if (a10)
  {
    sub_100117644(a10);
  }

  _Unwind_Resume(a1);
}

void sub_10070BCBC(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v5 = a2;
  sub_10004DFB4(uu1, v5);
  v8 = uu1;
  v6 = sub_10071380C((a1 + 168), uu1, &unk_1008A9BD0, &v8, &v7);
  sub_100051F7C(v6 + 6, a3, a3);
}

BOOL sub_10070BD80(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v5 = a3;
  sub_10004DFB4(uu2, v5);
  if (a1 + 176 == sub_10004E34C(a1 + 168, uu2) || (sub_10004DFB4(uu1, v5), v11 = uu1, !sub_10071380C((a1 + 168), uu1, &unk_1008A9BD0, &v11, &v10)[8]))
  {
    v8 = 0;
  }

  else
  {
    sub_10004DFB4(uu2, v5);
    *uu1 = uu2;
    v6 = sub_10071380C((a1 + 168), uu2, &unk_1008A9BD0, uu1, &v11);
    v7 = sub_10007C324((v6 + 6), a2);
    sub_10004DFB4(uu1, v5);
    v11 = uu1;
    v8 = sub_10071380C((a1 + 168), uu1, &unk_1008A9BD0, &v11, &v10) + 7 != v7;
  }

  return v8;
}

void sub_10070BEF4(uint64_t a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, __n128 *a4@<X8>)
{
  v7 = a2;
  sub_10004DFB4(v10, v7);
  v8 = 0;
  v9 = 0;
  sub_10070B42C(a1, v10, 0, &v8);
  if (v8)
  {
    sub_1005B6D68(v8, a3, a4);
    if (v9)
    {
      sub_100117644(v9);
    }
  }

  else
  {
    if (v9)
    {
      sub_100117644(v9);
    }

    sub_10003A364(a4);
  }
}

uint64_t sub_10070BFF0(uint64_t a1, void *a2, __int128 **a3, char a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v11 = a2;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v12 = *a3;
  for (i = a3[1]; v12 != i; v12 = (v12 + 20))
  {
    if (qword_100B50900 != -1)
    {
      sub_100866BE0();
    }

    if (sub_100066E24(qword_100B508F8, v12, a4, v10, v11))
    {
      sub_10000CDB8(&v27, v12);
    }
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v14 = sub_10070C2D0(v11, v6);
  v15 = v27;
  if (v14)
  {
    sub_10003A598(&v24, v27, v28, 0xCCCCCCCCCCCCCCCDLL * ((v28 - v27) >> 2));
  }

  else
  {
    v16 = v28;
    if (v27 != v28)
    {
      do
      {
        if (a1 + 128 == sub_10007C324(a1 + 120, v15))
        {
          sub_10000CDB8(&v24, v15);
        }

        else
        {
          v17 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
          {
            sub_10003B85C(v15, &__p);
            p_p = &__p;
            if (v23 < 0)
            {
              p_p = __p;
            }

            *buf = 136446466;
            v31 = p_p;
            v32 = 2114;
            v33 = v11;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "deviceHasAnyService skipping %{public}s because %{public}@ link is not encrypted", buf, 0x16u);
            if (v23 < 0)
            {
              operator delete(__p);
            }
          }
        }

        v15 = (v15 + 20);
      }

      while (v15 != v16);
    }
  }

  __p = 0;
  v22 = 0;
  sub_10004DFB4(buf, v11);
  sub_10070B42C(a1, buf, 0, &__p);
  if (__p)
  {
    v19 = sub_1005B370C(__p, &v24);
  }

  else
  {
    v19 = 0;
  }

  if (v22)
  {
    sub_100117644(v22);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  return v19;
}

void sub_10070C270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (a13)
  {
    sub_100117644(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10070C2D0(void *a1, int a2)
{
  v3 = a1;
  if (a2)
  {
    v9 = 0xFFFF;
    if (qword_100B50F78 != -1)
    {
      sub_1008665F8();
    }

    v4 = qword_100B50F70;
    sub_10004DFB4(v10, v3);
    sub_1005807A8(v4, v10, &v9);
    if (qword_100B508B0 != -1)
    {
      sub_10086671C();
    }

    v5 = off_100B508A8;
    sub_10004DFB4(v10, v3);
    v6 = sub_100050304(v5, v10);
    if (v9 == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void sub_10070C3E4(uint64_t a1, uint64_t a2, uint64_t a3, const unsigned __int8 *a4, uint64_t a5)
{
  v7 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, 37);
    uuid_unparse_upper(a4, out);
    sub_100007E30(__p, out);
    v8 = v11 >= 0 ? __p : __p[0];
    out[0] = 136446210;
    *&out[1] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finding all primary services on device %{public}s", out, 0xCu);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v13 = 0;
  memset(out, 0, sizeof(out));
  sub_100018384(a3, __p);
  v9 = sub_10004DF60(a4);
  sub_10057973C(out, __p, 1, v9, 0);

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (qword_100B541F8 != -1)
  {
    sub_1008669A8();
  }

  sub_10000EFDC(qword_100B541F0, out);
  operator new();
}

void sub_10070C67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  v17 = a9;
  a9 = 0;
  if (v17)
  {
    sub_100713478(&a9, v17);
  }

  v18 = __p;
  __p = 0;
  if (v18)
  {
    sub_100713478(&__p, v18);
  }

  sub_1003B169C(&a16);
  _Unwind_Resume(a1);
}

void sub_10070C718(uint64_t a1, uint64_t a2, uint64_t a3, const unsigned __int8 *a4, uint64_t *a5, uint64_t a6)
{
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v21 = 0u;
  v22 = 0u;
  memset(v20, 0, sizeof(v20));
  v19 = 0u;
  sub_100007AD0(&v19);
  for (i = *a5; i != a5[1]; i += 20)
  {
    sub_10003B85C(i, out);
    if (SHIBYTE(out[2]) >= 0)
    {
      v10 = out;
    }

    else
    {
      LODWORD(v10) = out[0];
    }

    if (SHIBYTE(out[2]) >= 0)
    {
      v11 = HIBYTE(out[2]);
    }

    else
    {
      v11 = out[1];
    }

    v12 = sub_100007774(v20, v10, v11);
    sub_100007774(v12, ", ", 2);
    if (SHIBYTE(out[2]) < 0)
    {
      operator delete(out[0]);
    }
  }

  v13 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    v14 = &v34;
    std::stringbuf::str();
    if (v35 < 0)
    {
      v14 = v34;
    }

    memset(out, 0, 37);
    uuid_unparse_upper(a4, out);
    sub_100007E30(__p, out);
    if (v18 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    *buf = 136446466;
    v38 = v14;
    v39 = 2082;
    v40 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Finding all primary services with UUID(s) %{public}s on device %{public}s", buf, 0x16u);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (v35 < 0)
    {
      operator delete(v34);
    }
  }

  memset(out, 0, 56);
  sub_100018384(a3, &v34);
  v16 = sub_10004DF60(a4);
  sub_10057973C(out, &v34, 1, v16, a5);

  if (v35 < 0)
  {
    operator delete(v34);
  }

  if (qword_100B541F8 != -1)
  {
    sub_1008669A8();
  }

  sub_10000EFDC(qword_100B541F0, out);
  operator new();
}

void sub_10070CBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1007FC91C(va);
  _Unwind_Resume(a1);
}

void sub_10070CCC0(uint64_t a1, uint64_t a2, uint64_t a3, const unsigned __int8 *a4, int a5, int a6, uint64_t a7)
{
  v10 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a4, out);
    sub_100007E30(__p, out);
    if (v13 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *out = 67109634;
    *&out[4] = a5;
    *&out[8] = 1024;
    *&out[10] = a6;
    *&out[14] = 2082;
    *&out[16] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Finding included services in range [0x%04x, 0x%04x] on device %{public}s", out, 0x18u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_10070CEF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a9;
  a9 = 0;
  if (v14)
  {
    sub_100713478(&a9, v14);
  }

  v15 = a13;
  a13 = 0;
  if (v15)
  {
    sub_100713478(&a13, v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10070CF58(uint64_t a1, uint64_t a2, uint64_t a3, const unsigned __int8 *a4, int a5, int a6, uint64_t a7)
{
  v10 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a4, out);
    sub_100007E30(__p, out);
    if (v13 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *out = 67109634;
    *&out[4] = a5;
    *&out[8] = 1024;
    *&out[10] = a6;
    *&out[14] = 2082;
    *&out[16] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Finding all characteristics in range [0x%04x, 0x%04x] on device %{public}s", out, 0x18u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_10070D18C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a9;
  a9 = 0;
  if (v14)
  {
    sub_100713478(&a9, v14);
  }

  v15 = a13;
  a13 = 0;
  if (v15)
  {
    sub_100713478(&a13, v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10070D1F0(uint64_t a1, uint64_t a2, uint64_t a3, const unsigned __int8 *a4, int a5, uint64_t a6)
{
  v8 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a4, out);
    sub_100007E30(__p, out);
    if (v11 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *out = 67109378;
    *&out[4] = a5;
    *&out[8] = 2082;
    *&out[10] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finding all descriptors for characteristic handle 0x%04x on device %{public}s", out, 0x12u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_10070D42C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a9;
  a9 = 0;
  if (v14)
  {
    sub_100713478(&a9, v14);
  }

  v15 = a13;
  a13 = 0;
  if (v15)
  {
    sub_100713478(&a13, v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10070D490(uint64_t a1, uint64_t a2, uint64_t a3, const unsigned __int8 *a4, int a5, int a6, uint64_t a7)
{
  v10 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a4, out);
    sub_100007E30(__p, out);
    if (v13 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *out = 67109634;
    *&out[4] = a6;
    *&out[8] = 1024;
    *&out[10] = a5;
    *&out[14] = 2082;
    *&out[16] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Reading value for characteristic value handle 0x%04x, char handle 0x%04x on device %{public}s", out, 0x18u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_10070D6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a9;
  a9 = 0;
  if (v14)
  {
    sub_100713478(&a9, v14);
  }

  v15 = a13;
  a13 = 0;
  if (v15)
  {
    sub_100713478(&a13, v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10070D728(uint64_t a1, uint64_t a2, uint64_t a3, const unsigned __int8 *a4, int a5, uint64_t a6)
{
  v8 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a4, out);
    sub_100007E30(__p, out);
    if (v11 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *out = 67109378;
    *&out[4] = a5;
    *&out[8] = 2082;
    *&out[10] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reading value for descriptor handle 0x%04x on device %{public}s", out, 0x12u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_10070D940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a9;
  a9 = 0;
  if (v14)
  {
    sub_100713478(&a9, v14);
  }

  v15 = a13;
  a13 = 0;
  if (v15)
  {
    sub_100713478(&a13, v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10070D9A4(uint64_t a1, uint64_t a2, uint64_t a3, const unsigned __int8 *a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v10 = a5;
  v12 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    if (v10)
    {
      v13 = "with";
    }

    else
    {
      v13 = "without";
    }

    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a4, out);
    sub_100007E30(__p, out);
    if (v16 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    *out = 136446722;
    *&out[4] = v13;
    *&out[12] = 1024;
    *&out[14] = a7;
    *&out[18] = 2082;
    *&out[20] = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Writing value %{public}s response to characteristic handle 0x%04x on device %{public}s", out, 0x1Cu);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_10070DBE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = a11;
  a11 = 0;
  if (v16)
  {
    sub_100713478(&a11, v16);
  }

  v17 = a15;
  a15 = 0;
  if (v17)
  {
    sub_100713478(&a15, v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_10070DC44(uint64_t a1, uint64_t a2, uint64_t a3, const unsigned __int8 *a4, int a5, uint64_t a6, uint64_t a7)
{
  v9 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a4, out);
    sub_100007E30(__p, out);
    if (v12 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *out = 67109378;
    *&out[4] = a5;
    *&out[8] = 2082;
    *&out[10] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Writing value to descriptor handle 0x%04x on device %{public}s", out, 0x12u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_10070DE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a9;
  a9 = 0;
  if (v14)
  {
    sub_100713478(&a9, v14);
  }

  v15 = a13;
  a13 = 0;
  if (v15)
  {
    sub_100713478(&a13, v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10070DEB4(uint64_t a1, uint64_t a2, unint64_t a3, const unsigned __int8 *a4, unsigned int a5, int a6, uint64_t a7)
{
  v29 = a3;
  v28 = a5;
  v11 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    v12 = a6 ? "Subscribing" : "Unsubscribing";
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a4, out);
    sub_100007E30(__p, out);
    v13 = v27 >= 0 ? __p : __p[0];
    *out = 136446722;
    *&out[4] = v12;
    *&out[12] = 1024;
    *&out[14] = a5;
    *&out[18] = 2082;
    *&out[20] = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s to updates of characteristic handle 0x%04x on device %{public}s", out, 0x1Cu);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v14 = sub_10070B868(a1, a4);
  if (!v14)
  {
    goto LABEL_28;
  }

  v17 = *(v14 + 120);
  v15 = v14 + 120;
  v16 = v17;
  v18 = (v15 - 8);
  if (!v17)
  {
    goto LABEL_19;
  }

  v19 = v15;
  do
  {
    v20 = *(v16 + 32);
    v21 = v20 >= a5;
    v22 = v20 < a5;
    if (v21)
    {
      v19 = v16;
    }

    v16 = *(v16 + 8 * v22);
  }

  while (v16);
  if (v19 == v15 || *(v19 + 32) > a5)
  {
LABEL_19:
    v19 = v15;
  }

  if (a6)
  {
    *out = &v28;
    v23 = sub_100713AA8(v15 - 8, &v28, &unk_1008A9BD0, out);
    sub_1000452CC((v23 + 5), &v29, &v29);
    goto LABEL_28;
  }

  if (v19 == v15)
  {
LABEL_28:
    operator new();
  }

  sub_100075DC4((v19 + 40), &v29);
  if (!*(v19 + 56))
  {
    sub_100480394(v18, v19);
    goto LABEL_28;
  }

  v24 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *out = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Swallowing unsubscription event as there are other session(s) still subscribed", out, 2u);
  }

  return 913;
}

void sub_10070E228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = a9;
  a9 = 0;
  if (v16)
  {
    sub_100713478(&a9, v16);
  }

  v17 = a15;
  a15 = 0;
  if (v17)
  {
    sub_100713478(&a15, v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_10070E28C(uint64_t a1, uint64_t a2, uint64_t a3, const unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v8 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a4, out);
    sub_100007E30(__p, out);
    if (v12 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    if (*(a5 + 23) >= 0)
    {
      v10 = a5;
    }

    else
    {
      v10 = *a5;
    }

    *out = 136446466;
    *&out[4] = v9;
    *&out[12] = 2080;
    *&out[14] = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting GAP name on device %{public}s to %s", out, 0x16u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_10070E498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a9;
  a9 = 0;
  if (v14)
  {
    sub_100713478(&a9, v14);
  }

  v15 = a13;
  a13 = 0;
  if (v15)
  {
    sub_100713478(&a13, v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10070E4FC(uint64_t a1, const unsigned __int8 *a2, uint64_t *a3)
{
  v6 = qword_100BCE910;
  if (!*(*a3 + 24) && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
  {
    *out = 136446210;
    *&out[4] = "holder->command";
    _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", out, 0xCu);
    v6 = qword_100BCE910;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a2, out);
    sub_100007E30(__p, out);
    v7 = v15 >= 0 ? __p : __p[0];
    *out = 136446210;
    *&out[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Enqueuing a delayed command for device %{public}s", out, 0xCu);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = sub_10070B868(a1, a2);
  if (!v8)
  {
    return 312;
  }

  v9 = v8;
  sub_100710240((v8 + 56), a3);
  if (*(v9 + 96) == 1)
  {
    *(v9 + 106) = 1;
    *out = 0;
    *&out[8] = 0;
    uuid_copy(out, a2);
    v12 = sub_100007EE8(v10, v11);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3321888768;
    v16[2] = sub_10071038C;
    v16[3] = &unk_100B0A538;
    uuid_copy(v17, out);
    sub_10008E008(v12, 1000, v16);
  }

  return 0;
}

BOOL sub_10070E714(uint64_t a1, uint64_t a2, unsigned __int8 *uu1)
{
  v13 = 0;
  v14[0] = 0;
  v14[1] = 0;
  *out = uu1;
  v5 = sub_100713C3C((a1 + 248), uu1, &unk_1008A9BD0, out, buf);
  sub_1007134F4(&v13, (v5 + 6));
  *buf = *a2;
  *&buf[16] = *(a2 + 16);
  sub_10000D03C(out, buf);
  v6 = sub_10007C324(&v13, out);
  v7 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
  {
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(uu1, out);
    v8 = __p;
    sub_100007E30(__p, out);
    if (v12 < 0)
    {
      v8 = __p[0];
    }

    v15 = *a2;
    v16 = *(a2 + 16);
    sub_10000D03C(&v17, &v15);
    sub_10003B85C(&v17, out);
    if (out[23] >= 0)
    {
      v9 = out;
    }

    else
    {
      v9 = *out;
    }

    *buf = 136315650;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = v9;
    v19 = 1024;
    v20 = v14 == v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "shouldNotifyBuiltInService device:%s service:%s notify:%d", buf, 0x1Cu);
    if (out[23] < 0)
    {
      operator delete(*out);
    }

    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10000CEDC(&v13, v14[0]);
  return v14 == v6;
}

void sub_10070E904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10000CEDC(&a15, a16);
  _Unwind_Resume(a1);
}

void sub_10070E940(uint64_t a1, uint64_t a2, unsigned __int8 *uu1)
{
  v11 = 0;
  v12[0] = 0;
  v12[1] = 0;
  *out = uu1;
  v6 = sub_100713C3C((a1 + 248), uu1, &unk_1008A9BD0, out, __p);
  sub_1007134F4(&v11, (v6 + 6));
  *__p = *a2;
  v17 = *(a2 + 16);
  sub_10000D03C(out, __p);
  sub_100051F7C(&v11, out, out);
  *out = uu1;
  v7 = (sub_100713C3C((a1 + 248), uu1, &unk_1008A9BD0, out, __p) + 6);
  if (v7 != &v11)
  {
    sub_100713D7C(v7, v11, v12);
  }

  v8 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
  {
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(uu1, out);
    v9 = __p;
    sub_100007E30(__p, out);
    if (v18 < 0)
    {
      v9 = __p[0];
    }

    v13 = *a2;
    v14 = *(a2 + 16);
    sub_10000D03C(&v15, &v13);
    sub_10003B85C(&v15, out);
    if (out[23] >= 0)
    {
      v10 = out;
    }

    else
    {
      v10 = *out;
    }

    *buf = 136315394;
    v20 = v9;
    v21 = 2080;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "didNotifyBuiltInService device:%s service:%s", buf, 0x16u);
    if (out[23] < 0)
    {
      operator delete(*out);
    }

    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10000CEDC(&v11, v12[0]);
}

void sub_10070EB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_10000CEDC(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t sub_10070EB84(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_10004DF60(a2);
  sub_10004DFB4(buf, v4);
  v44 = 0;
  v45 = 0;
  sub_10070B42C(a1, buf, 0, &v44);
  v5 = v44;
  if (!v44)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_1008667B4();
    }

    goto LABEL_58;
  }

  sub_1005B7638(v44, "");
  *v51 = xmmword_1008A4C9C;
  v52 = 0;
  sub_10000D03C(buf, v51);
  sub_10003A364(v51);
  v6 = sub_1005B68E8(v5, buf, v51);
  *v51 = xmmword_1008A4CB0;
  v52 = 0;
  sub_10000D03C(buf, v51);
  sub_10003A364(v51);
  v7 = sub_1005B68E8(v5, buf, v51);
  *v51 = xmmword_1008A4CC4;
  v52 = 0;
  sub_10000D03C(buf, v51);
  sub_10003A364(v51);
  v8 = sub_1005B68E8(v5, buf, v51);
  *v51 = xmmword_1008A4CD8;
  v52 = 0;
  sub_10000D03C(buf, v51);
  sub_10003A364(v51);
  v9 = sub_1005B68E8(v5, buf, v51);
  v11 = v9;
  if (!v6 && !v7 && !v8 && !v9)
  {
    v12 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "LE Audio Services not found.", buf, 2u);
    }

    goto LABEL_58;
  }

  v42 = v8;
  v13 = sub_10000C7D0(v9, v10);
  v14 = (*(*v13 + 4336))(v13);
  if (qword_100B50920 != -1)
  {
    sub_100866C08();
  }

  v43 = sub_1006447FC(qword_100B50918, v4);
  v15 = sub_10000E92C();
  v16 = (*(*v15 + 912))(v15);
  v17 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    v18 = "not supported";
    if (v14)
    {
      v18 = "supported";
    }

    *buf = 136315906;
    *&buf[4] = v18;
    if (v43)
    {
      v19 = "enabled";
    }

    else
    {
      v19 = "disabled";
    }

    *&buf[12] = 2080;
    *&buf[14] = v19;
    v47 = 2080;
    if (v16)
    {
      v20 = "enabled";
    }

    else
    {
      v20 = "disabled";
    }

    v48 = v20;
    v49 = 2080;
    v50 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "LE Audio Platform Feature is %s. Hearing Aid: %s. TMAS: %s. Generic Audio: %s.", buf, 0x2Au);
  }

  if ((v14 & (v43 | v16)) != 1)
  {
    goto LABEL_58;
  }

  if (!sub_10070E714(a1, &xmmword_1008A4C9C, a2))
  {
    goto LABEL_37;
  }

  if (v6)
  {
    v21 = *(v6 + 8);
    v22 = *(v21 + 20);
    *buf = *(v21 + 4);
    *&buf[16] = v22;
    sub_10000D03C(v51, buf);
    *buf = xmmword_1008C50C4;
    *&buf[16] = 0;
    v23 = sub_10004E15C(v51, buf);
    if (v7)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23;
    }

    if ((v24 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (!v7)
  {
    goto LABEL_37;
  }

  if (v16)
  {
    v25 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v4;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "The device %@ supports CAS or ASCS", buf, 0xCu);
    }

    sub_10070E940(a1, &xmmword_1008A4C9C, a2);
    if (qword_100B508D0 != -1)
    {
      sub_1008666F4();
    }

    sub_10078DF8C(off_100B508C8, v4);
    v26 = 0;
    v27 = &xmmword_1008A4C9C;
    goto LABEL_38;
  }

LABEL_37:
  v27 = 0;
  v26 = 1;
LABEL_38:
  if ((sub_10070E714(a1, &xmmword_1008A4CD8, a2) & v16) != 1)
  {
    goto LABEL_46;
  }

  if (!v11)
  {
LABEL_47:
    v31 = 1;
    goto LABEL_48;
  }

  v28 = *(v11 + 1);
  v29 = *(v28 + 20);
  *buf = *(v28 + 4);
  *&buf[16] = v29;
  sub_10000D03C(v51, buf);
  *buf = xmmword_1008C50C4;
  *&buf[16] = 0;
  if (!sub_10004E15C(v51, buf))
  {
LABEL_46:
    v11 = 0;
    goto LABEL_47;
  }

  v30 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "The device %@ supports TMAS", buf, 0xCu);
  }

  if (qword_100B508D0 != -1)
  {
    sub_1008666F4();
  }

  sub_10078E094(off_100B508C8, v4);
  v31 = 0;
  v11 = &xmmword_1008A4CD8;
LABEL_48:
  if ((sub_10070E714(a1, &xmmword_1008A4CC4, a2) & v43) == 1)
  {
    if (v8)
    {
      v32 = *(v8 + 8);
      v33 = *(v32 + 20);
      *buf = *(v32 + 4);
      *&buf[16] = v33;
      sub_10000D03C(v51, buf);
      *buf = xmmword_1008C50C4;
      *&buf[16] = 0;
      if (sub_10004E15C(v51, buf))
      {
        v34 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v4;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "The device %@ supports HAS", buf, 0xCu);
        }

        if (qword_100B508D0 != -1)
        {
          sub_1008666F4();
        }

        sub_10078E010(off_100B508C8, v4);
        v11 = &xmmword_1008A4CC4;
        goto LABEL_62;
      }
    }
  }

  if ((v31 & 1) == 0)
  {
LABEL_62:
    sub_10070E940(a1, v11, a2);
    v27 = v11;
    goto LABEL_63;
  }

  if (v26)
  {
LABEL_58:
    v35 = 0;
    goto LABEL_59;
  }

LABEL_63:
  *buf = 0;
  *&buf[8] = 0;
  sub_10007A978(buf, v27, 1);
  v37 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Launching LE Audio Services", v51, 2u);
  }

  v38 = +[BluetoothAudiodConnection sharedInstance];
  v39 = [[NSUUID alloc] initWithUUIDBytes:buf];
  [v38 deviceConnected:v4 withServiceUUID:v39];

  if (sub_10004E15C(v27, &xmmword_1008A4CC4))
  {
    v40 = qword_100BCE910;
    v41 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT);
    if (v41)
    {
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Notify LE audio device connection", v51, 2u);
    }

    sub_10070F874(v41, v4, 4);
  }

  v35 = 1;
LABEL_59:
  if (v45)
  {
    sub_100117644(v45);
  }

  return v35;
}

void sub_10070F340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100117644(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10070F3C0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B508F0 != -1)
  {
    sub_10086660C();
  }

  v3 = sub_1000504C8(off_100B508E8, *(a1 + 48), 0);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1000E2140(v3, 0xCu);
    v6 = sub_1000E2140(v4, 0x1Fu);
    LOBYTE(v4) = v6;
    v8 = sub_100007EE8(v6, v7);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10070F4E8;
    v12[3] = &unk_100B0A518;
    v14 = v2;
    v18 = v5;
    v9 = *(a1 + 32);
    v11 = *(a1 + 48);
    v10 = *(a1 + 56);
    v13 = v9;
    v15 = v10;
    v16 = v11;
    v17 = *(a1 + 64);
    v19 = v4;
    sub_10000CA94(v8, v12);
  }
}

void sub_10070F4E8(uint64_t a1)
{
  if (*(a1 + 72) != 1)
  {
    goto LABEL_24;
  }

  v2 = *(a1 + 40);
  v3 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    buf.n128_u32[0] = 138412290;
    *(buf.n128_u64 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "The device %@ supports Classic HRM", &buf, 0xCu);
  }

  if (qword_100B508D0 != -1)
  {
    sub_1008666F4();
  }

  v5 = off_100B508C8;
  v6 = *(a1 + 32);
  sub_100007E30(__p, "BlockCATTHRM");
  v7 = sub_10004EB40(v5, v6, __p);
  v9 = v7;
  if (v26 < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
      goto LABEL_19;
    }

LABEL_10:
    v10 = sub_100432610(v7, v8);
    (*(*v10 + 72))(v10, *(a1 + 32));
    if (qword_100B508D0 != -1)
    {
      sub_1008666F4();
    }

    v11 = off_100B508C8;
    v12 = *(a1 + 32);
    sub_100007E30(v23, "HKQuantityTypeIdentifierHeartRate");
    sub_10078787C(v11, v12, v23);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    if (qword_100B508D0 != -1)
    {
      sub_1008666F4();
    }

    v13 = off_100B508C8;
    v14 = *(a1 + 32);
    sub_100007E30(v21, "FitnessClassic");
    sub_10078787C(v13, v14, v21);
    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    sub_10070E940(v2, &xmmword_1008A4D00, *(a1 + 48));
    goto LABEL_19;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_19:
  v20 = 0;
  sub_1000216B4(&v20);
  v15 = sub_1002D3618(*(a1 + 56));
  LODWORD(v27) = v15;
  WORD2(v27) = WORD2(v15);
  v16 = sub_100255934(&v27);
  if (v16)
  {
    v17 = sub_100255698(v16);
    if ((sub_1001C4E94(v17 & 0xFFF, **(*(a1 + 64) + 8), *(*(a1 + 64) + 48)) & 1) == 0)
    {
      v18 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        v19 = sub_10004DF60(*(a1 + 48));
        buf.n128_u32[0] = 138412290;
        *(buf.n128_u64 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Failed to redact HRM reports for device %@", &buf, 0xCu);
      }
    }
  }

  sub_10002249C(&v20);
LABEL_24:
  if (*(a1 + 73) == 1)
  {
    buf = 0uLL;
    v30 = 0;
    v27 = xmmword_1008A4D00;
    v28 = 0;
    sub_10000D03C(&buf, &v27);
    if (qword_100B50900 != -1)
    {
      sub_100866BE0();
    }

    sub_10070BCBC(qword_100B508F8, *(a1 + 32), &buf);
  }
}

void sub_10070F874(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v6 = v4;
  if (qword_100B512F8 == -1)
  {
    v5 = v4;
  }

  else
  {
    sub_100866C30();
    v5 = v6;
  }

  sub_1003AE530(off_100B512F0, v5, a3);
}

void sub_10070F8FC(uint64_t a1, uint64_t a2, const unsigned __int8 *a3)
{
  v4 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, 37);
    uuid_unparse_upper(a3, out);
    sub_100007E30(__p, out);
    if (v7 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *out = 136446210;
    *&out[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Beginning GAP name update sequence for device %{public}s", out, 0xCu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_10070FB1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a9;
  a9 = 0;
  if (v14)
  {
    sub_100713478(&a9, v14);
  }

  v15 = a13;
  a13 = 0;
  if (v15)
  {
    sub_100713478(&a13, v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10070FB80(uint64_t a1, uint64_t a2, const unsigned __int8 *a3)
{
  v4 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, 37);
    uuid_unparse_upper(a3, out);
    sub_100007E30(__p, out);
    if (v7 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *out = 136446210;
    *&out[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Beginning delete bond sequence for device %{public}s", out, 0xCu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_10070FDA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a9;
  a9 = 0;
  if (v14)
  {
    sub_100713478(&a9, v14);
  }

  v15 = a13;
  a13 = 0;
  if (v15)
  {
    sub_100713478(&a13, v15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10070FE04(int64x2_t *a1, char *a2, uint64_t a3, uint64_t *a4)
{
  v6 = a1[2].u64[0];
  v7 = a1->i64[1];
  v8 = a1[1].i64[0];
  v9 = (v7 + 8 * (v6 >> 9));
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v9 + 8 * (a1[2].i64[0] & 0x1FF);
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = ((a3 - *a2) >> 3) + ((a2 - v9) << 6) - ((v10 - *v9) >> 3);
  }

  v12 = a1[2].i64[1];
  v13 = v12 - v11;
  if (v11 < v12 - v11)
  {
    if (v6)
    {
      if (v11)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100714098(a1);
      if (v11)
      {
LABEL_10:
        v14 = a1[2].u64[0];
        v15 = a1->i64[1];
        v16 = (v15 + 8 * (v14 >> 9));
        if (a1[1].i64[0] == v15)
        {
          v17 = 0;
        }

        else
        {
          v17 = (*v16 + 8 * (a1[2].i64[0] & 0x1FF));
        }

        v58.n128_u64[0] = v15 + 8 * (v14 >> 9);
        v58.n128_u64[1] = v17;
        sub_1007142E0(v16, v17);
        v32 = *v17;
        *v17 = 0;
        *v33 = v32;
        a1[2] = vaddq_s64(a1[2], xmmword_1008C50A0);
        if (v11 != 1)
        {
          v34 = (v17 - *v16) >> 3;
          if (v34 < 0)
          {
            v45 = 510 - v34;
            v36 = &v16[-(v45 >> 9)];
            v37 = (*v36 + 8 * (~v45 & 0x1FF));
          }

          else
          {
            v35 = v34 + 1;
            v36 = &v16[v35 >> 9];
            v37 = (*v36 + 8 * (v35 & 0x1FF));
          }

          v46 = sub_100361350(&v58, v11);
          v59 = v58;
          sub_100714508(v36, v37, v46, v47, &v59);
          v17 = v59.n128_u64[1];
          v58 = v59;
        }

        v48 = *a4;
        *a4 = 0;
        v49 = *v17;
        *v17 = v48;
        if (v49)
        {
          v50 = v17;
LABEL_46:
          sub_100713478(v50, v49);
          goto LABEL_47;
        }

        goto LABEL_47;
      }
    }

    v26 = a1[2].u64[0];
    v27 = a1->i64[1];
    v28 = (v27 + 8 * (v26 >> 9));
    if (a1[1].i64[0] == v27)
    {
      v29 = 0;
    }

    else
    {
      v29 = *v28 + 8 * (a1[2].i64[0] & 0x1FF);
    }

    if (v29 == *v28)
    {
      v29 = *(v28 - 1) + 4096;
    }

    v30 = *a4;
    *a4 = 0;
    *(v29 - 8) = v30;
    v31 = a1[2].i64[1] + 1;
    a1[2].i64[0] = v26 - 1;
    a1[2].i64[1] = v31;
    goto LABEL_47;
  }

  if (v8 == v7)
  {
    v18 = 0;
  }

  else
  {
    v18 = ((v8 - v7) << 6) - 1;
  }

  if (v18 == v12 + v6)
  {
    sub_100714334(a1);
    v12 = a1[2].i64[1];
    v13 = v12 - v11;
  }

  if (v12 == v11)
  {
    v19 = a1[2].i64[0] + v11;
    v20 = *(a1->i64[1] + ((v19 >> 6) & 0x3FFFFFFFFFFFFF8));
    v21 = *a4;
    *a4 = 0;
    *(v20 + 8 * (v19 & 0x1FF)) = v21;
    a1[2].i64[1] = v11 + 1;
    goto LABEL_47;
  }

  v22 = a1[2].i64[0] + v12;
  v23 = a1->i64[1];
  v24 = (v23 + 8 * (v22 >> 9));
  if (a1[1].i64[0] == v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = (*v24 + 8 * (v22 & 0x1FF));
  }

  v38 = sub_1007142E0(v24, v25);
  v40 = *v39;
  *v39 = 0;
  *v25 = v40;
  ++a1[2].i64[1];
  if (v13 >= 2)
  {
    v41 = v39;
    v42 = ((v25 - *v24) >> 3) - v13;
    if (v42 < 1)
    {
      v51 = 511 - v42;
      v43 = &v24[-(v51 >> 9)];
      v44 = (*v43 + 8 * (~v51 & 0x1FF));
    }

    else
    {
      v43 = &v24[v42 >> 9];
      v44 = (*v43 + 8 * (v42 & 0x1FF));
    }

    v59 = 0u;
    v60 = 0u;
    sub_10071470C(v43, v44, v38, v41, v24, v25, &v59);
    v25 = *(&v60 + 1);
    v24 = v60;
  }

  if (v25 == *v24)
  {
    v25 = (*(v24 - 1) + 4096);
  }

  v52 = *a4;
  *a4 = 0;
  v54 = *(v25 - 1);
  v53 = v25 - 1;
  v49 = v54;
  *v53 = v52;
  if (v54)
  {
    v50 = v53;
    goto LABEL_46;
  }

LABEL_47:
  v55 = a1->i64[1];
  if (a1[1].i64[0] == v55)
  {
    v56 = 0;
  }

  else
  {
    v56 = *(v55 + 8 * (a1[2].i64[0] >> 9)) + 8 * (a1[2].i64[0] & 0x1FF);
  }

  v59.n128_u64[0] = v55 + 8 * (a1[2].i64[0] >> 9);
  v59.n128_u64[1] = v56;
  return sub_100361350(&v59, v11);
}

void sub_1007101BC(uint64_t result, uint64_t *a2)
{
  v4 = *(result + 32);
  if (!v4)
  {
    sub_100714098(result);
    v4 = *(result + 32);
  }

  v5 = *(result + 8);
  v6 = (v5 + 8 * (v4 >> 9));
  if (*(result + 16) == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 8 * (v4 & 0x1FF);
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4096;
  }

  v8 = *a2;
  *a2 = 0;
  *(v7 - 8) = v8;
  v9 = *(result + 40) + 1;
  *(result + 32) = v4 - 1;
  *(result + 40) = v9;
}

void sub_100710240(unint64_t *result, uint64_t *a2)
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
    sub_100714334(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  v9 = *(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8));
  v10 = *a2;
  *a2 = 0;
  *(v9 + 8 * (v8 & 0x1FF)) = v10;
  result[5] = v7 + 1;
}

void sub_1007102CC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ((*(a3 + 105) & 1) == 0)
  {
    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_100866C44(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (!*(a3 + 48))
  {
    v14 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_100866CBC(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  if ((*(a3 + 104) & 1) == 0)
  {
    sub_10071056C(a1, v5, a3);
  }
}

void sub_10071038C(uint64_t a1)
{
  if (qword_100B50900 != -1)
  {
    sub_100866D34();
  }

  v2 = qword_100B508F8;

  sub_1007103E0(v2, (a1 + 32));
}

void sub_1007103E0(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = sub_10070B868(a1, a2);
  if (v4)
  {
    v5 = v4;
    if (*(v4 + 96))
    {
      if (*(v4 + 105) != 1 || *(v4 + 106) != 1 || (sub_100710240((v4 + 8), (*(*(v4 + 64) + ((*(v4 + 88) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(v4 + 88) & 0x1FFLL))), sub_1007106A4((v5 + 56)), sub_10004DF60(a2), v6 = objc_claimAutoreleasedReturnValue(), sub_1007102CC(a1, v6, v5), v6, *(v5 + 96)))
      {
        *(v5 + 106) = 1;
        memset(dst, 0, sizeof(dst));
        uuid_copy(dst, a2);
        v9 = sub_100007EE8(v7, v8);
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3321888768;
        v10[2] = sub_10071071C;
        v10[3] = &unk_100B0A538;
        uuid_copy(v11, dst);
        sub_10008E008(v9, 1000, v10);
      }
    }
  }
}

void sub_10071056C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ((*(a3 + 104) & 1) != 0 || !*(a3 + 48))
  {
    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_100866D48(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(*(*(*(a3 + 16) + ((*(a3 + 40) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a3 + 40) & 0x1FFLL)) + 24);
  sub_10004DFB4(v17, v5);
  sub_10070B42C(a1, v17, 1, &v15);
  sub_1006EF22C(v14, v5, &v15, *a3);
  if (v16)
  {
    sub_100117644(v16);
  }

  *(a3 + 104) = 1;
  *(a3 + 106) = 0;
}

void sub_100710678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100117644(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007106A4(void *a1)
{
  v2 = a1[4];
  v3 = (*(a1[1] + ((v2 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v2 & 0x1FF));
  v4 = *v3;
  *v3 = 0;
  if (v4)
  {
    sub_100713478(v3, v4);
    v2 = a1[4];
  }

  v5 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v5;

  return sub_100374F94(a1, 1);
}

void sub_10071071C(uint64_t a1)
{
  if (qword_100B50900 != -1)
  {
    sub_100866D34();
  }

  v2 = qword_100B508F8;

  sub_1007103E0(v2, (a1 + 32));
}

void sub_100710770(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  *src = 0;
  v18 = 0;
  v7 = sub_10004DFB4(src, *(a2 + 16));
  v8 = *(a2 + 40);
  v10 = sub_100007EE8(v7, v9);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3321888768;
  v12[2] = sub_1007108B8;
  v12[3] = &unk_100B0A570;
  v14 = a1;
  uuid_copy(v16, src);
  v15 = v8;
  v11 = v5;
  v13 = v11;
  sub_10000CA94(v10, v12);

  objc_autoreleasePoolPop(v6);
}

unsigned __int16 *sub_1007108B8(uint64_t a1)
{
  result = sub_10070B868(*(a1 + 40), (a1 + 50));
  if (result && *result == *(a1 + 48))
  {
    v3 = *(*(a1 + 32) + 16);

    return v3();
  }

  return result;
}

void sub_100710930(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_100007F20(&v12, a4);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_100710A70;
  v7[3] = &unk_100B0A5A0;
  v7[4] = a1;
  v7[5] = a2;
  v11 = a3;
  __dst = 0;
  v10 = 0;
  __p = 0;
  if (v13 != v12)
  {
    sub_1000080CC(&__p, (v13 - v12) >> 3);
  }

  sub_100710770(a1, a2, v7);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }
}

void sub_100710A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  v19 = *(v17 - 72);
  if (v19)
  {
    *(v17 - 64) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_100710A70(uint64_t a1)
{
  sub_100710AE8(*(a1 + 32), *(a1 + 40), *(a1 + 72), (a1 + 48));
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  while (v3 != v2)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
      v2 = *(a1 + 56);
    }

    ++v3;
  }
}

void sub_100710AE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a2 + 16);
  if (v5)
  {
    if (v5 > 255)
    {
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_100866DC0();
      }

      v9 = 1;
    }

    else
    {
      v9 = (v5 + 1000);
    }
  }

  else
  {
    if (*a4 != a4[1])
    {
      *uu1 = 0;
      v30 = 0;
      sub_10004DFB4(v28, v8);
      sub_10070B42C(a1, v28, 0, uu1);
      if (*uu1)
      {
        sub_1005B7638(*uu1, "");
      }

      if (v30)
      {
        sub_100117644(v30);
      }
    }

    v9 = 0;
  }

  sub_10004DFB4(uu1, v8);
  v10 = sub_10070A400(a1 + 192, uu1);
  if (!*(v10 + 48))
  {
    v11 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_100866CBC(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  v19 = *(*(*(v10 + 16) + ((*(v10 + 40) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(v10 + 40) & 0x1FFLL));
  if (v19[3] != a2)
  {
    v20 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_100866E30(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  if (*v19)
  {
    (***v19)(*v19, v8, v19[1], v9, a4, v19[2]);
  }

  sub_1007106A4((v10 + 8));
  *(v10 + 104) = 0;
  if (*(v10 + 48))
  {
    sub_10071056C(a1, v8, v10);
  }
}

void sub_100710CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100117644(a13);
  }

  _Unwind_Resume(a1);
}

void sub_100710D3C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_100710D5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = sub_100007EE8(v3, v4);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100710E28;
  v7[3] = &unk_100AE1200;
  v9 = a1;
  v6 = v3;
  v8 = v6;
  sub_10000CA94(v5, v7);
}

void sub_100710E34(os_unfair_lock_s *a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100710FAC;
  v4[3] = &unk_100B0A5D8;
  v5 = a2;
  v3 = v5;
  sub_100710EE0(a1 + 10, v4);
}

void sub_100710EE0(os_unfair_lock_s *a1, void *a2)
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

void sub_100710FDC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = sub_100007EE8(v5, v6);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1007110B0;
  v9[3] = &unk_100AE0BC0;
  v11 = a1;
  v8 = v5;
  v10 = v8;
  v12 = a3;
  sub_10000CA94(v7, v9);
}

void sub_1007110C0(os_unfair_lock_s *a1, void *a2, uint64_t a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100711170;
  v6[3] = &unk_100B0A600;
  v7 = a2;
  v8 = a3;
  v5 = v7;
  sub_100710EE0(a1 + 10, v6);
}

void sub_1007111A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = sub_100007EE8(v3, v4);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10071126C;
  v7[3] = &unk_100AE1200;
  v9 = a1;
  v6 = v3;
  v8 = v6;
  sub_10000CA94(v5, v7);
}

void sub_10071126C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100711308;
  v2[3] = &unk_100B0A5D8;
  v1 = *(a1 + 40);
  v3 = *(a1 + 32);
  sub_100710EE0(v1 + 10, v2);
}

void sub_100711338(uint64_t a1, void *a2, __int16 a3)
{
  v5 = a2;
  v7 = sub_100007EE8(v5, v6);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10071140C;
  v9[3] = &unk_100AF9820;
  v11 = a1;
  v8 = v5;
  v10 = v8;
  v12 = a3;
  sub_10000CA94(v7, v9);
}

void sub_10071141C(os_unfair_lock_s *a1, void *a2, __int16 a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1007114D0;
  v6[3] = &unk_100B0A628;
  v7 = a2;
  v8 = a3;
  v5 = v7;
  sub_100710EE0(a1 + 10, v6);
}

void sub_100711504(id a1)
{
  if (qword_100B50900 == -1)
  {
  }

  else
  {
    sub_100866D34();
  }

  sub_10071154C();
}

uint64_t sub_10071154C()
{
  if (qword_100B512F8 != -1)
  {
    sub_100866C30();
  }

  v0 = *(*off_100B512F0 + 280);

  return v0();
}

void sub_1007115B8(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_100866EA8();
  }

  v2 = sub_1000ACEE4(off_100B508A8, *(a1 + 32));
  if (v2)
  {
    goto LABEL_4;
  }

  if (!*(a1 + 40))
  {
    goto LABEL_13;
  }

  if (qword_100B508D0 != -1)
  {
    sub_1008666E0();
  }

  sub_1000498D4(off_100B508C8, *(a1 + 40), 0, 1u, 0, 0, &v6);
  v2 = sub_10004DF60(&v6);
  if (v2)
  {
LABEL_4:
    v3 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
    {
      v6 = 138543362;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Dispatching indication for device %{public}@", &v6, 0xCu);
    }

    if (qword_100B50900 != -1)
    {
      sub_100866BE0();
    }

    sub_100711790(qword_100B508F8, v2, *(a1 + 80), a1 + 48, v4, *(a1 + 82), *(a1 + 72));
  }

  else
  {
LABEL_13:
    v5 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "incoming indication from a device that is no longer connected. Ignoring.", &v6, 2u);
    }

    v2 = 0;
  }
}

void sub_100711790(os_unfair_lock_s *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v10 = a2;
  if (v10)
  {
    v73 = 0;
    v74 = 0;
    sub_10004DFB4(&v78, v10);
    sub_10070B42C(a1, &v78, 0, &v73);
    v11 = v73;
    if (v73)
    {
      v12 = sub_1005B6820(v73, a3);
      v13 = v12;
      if (!v12)
      {
        operator new();
      }

      v14 = *(v12 + 8);
      v15 = *(v14 + 20);
      v78 = *(v14 + 4);
      LODWORD(v79) = v15;
      sub_10000D03C(uu2, &v78);
      v78 = xmmword_1008C50D8;
      LODWORD(v79) = 0;
      if (sub_10004E15C(v16, &v78))
      {
        sub_10000AE20((v13 + 9), a4);
        *uu2 = xmmword_1008A4B5C;
        LODWORD(v96) = 0;
        sub_10000D03C(&v78, uu2);
        *&buf.__r_.__value_.__l.__data_ = xmmword_1008A4BAC;
        LODWORD(buf.__r_.__value_.__r.__words[2]) = 0;
        sub_10000D03C(uu2, &buf);
        v17 = sub_1005B68E8(v11, &v78, uu2);
        v94 = 0;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        *__p = 0u;
        v83 = 0u;
        memset(v81, 0, sizeof(v81));
        v79 = 0u;
        v80 = 0u;
        v78 = 0u;
        sub_100007AD0(&v78);
        if (v17 && *(v17 + 74) == a3 && sub_10000C5E0(a4) == 4)
        {
          *uu2 = 0u;
          v96 = 0u;
          v18 = sub_10057C4B4(uu2, 0, a4);
          v19 = sub_10057C598(v18);
          v64 = sub_10057C598(uu2);
          v20 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf.__r_.__value_.__l.__data_) = 67109890;
            HIDWORD(buf.__r_.__value_.__r.__words[0]) = v19;
            LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 2) = v64;
            HIWORD(buf.__r_.__value_.__r.__words[1]) = 2114;
            buf.__r_.__value_.__r.__words[2] = v10;
            v76 = 1024;
            v77 = a6;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Received service changed notification for [0x%04x;0x%04x] for device %{public}@ wakeUp:%d", &buf, 0x1Eu);
          }

          sub_10004DFB4(&buf, v10);
          v21 = v64;
          if (&a1[50] == sub_10004E34C(&a1[48], &buf))
          {
            v57 = qword_100BCE910;
            if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
            {
              sub_100866F40(v19, v64, v57);
            }
          }

          else
          {
            sub_10004DFB4(&buf, v10);
            v22 = sub_10070A400(&a1[48], &buf);
            v23 = *(v22 + 112);
            v63 = (v22 + 112);
            v24 = (v22 + 120);
            if (v23 != v22 + 120)
            {
              v62 = v10;
              do
              {
                v25 = *(v23 + 32);
                if (v25 < v19 || v25 > v21)
                {
                  v27 = *(v23 + 8);
                  if (v27)
                  {
                    do
                    {
                      v28 = v27;
                      v27 = *v27;
                    }

                    while (v27);
                  }

                  else
                  {
                    do
                    {
                      v28 = *(v23 + 16);
                      v29 = *v28 == v23;
                      v23 = v28;
                    }

                    while (!v29);
                  }
                }

                else
                {
                  v30 = v19;
                  v31 = *(v23 + 40);
                  if (v31 != (v23 + 48))
                  {
                    do
                    {
                      sub_100614BB8(v31[4], &buf);
                      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        p_buf = &buf;
                      }

                      else
                      {
                        LODWORD(p_buf) = buf.__r_.__value_.__l.__data_;
                      }

                      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v33 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v33 = buf.__r_.__value_.__r.__words[1];
                      }

                      v34 = sub_100007774(&v79, p_buf, v33);
                      sub_100007774(v34, ",", 1);
                      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(buf.__r_.__value_.__l.__data_);
                      }

                      v35 = v31[1];
                      if (v35)
                      {
                        do
                        {
                          v36 = v35;
                          v35 = *v35;
                        }

                        while (v35);
                      }

                      else
                      {
                        do
                        {
                          v36 = v31[2];
                          v29 = *v36 == v31;
                          v31 = v36;
                        }

                        while (!v29);
                      }

                      v31 = v36;
                    }

                    while (v36 != (v23 + 48));
                  }

                  v28 = sub_100480394(v63, v23);
                  v19 = v30;
                  v10 = v62;
                  v21 = v64;
                }

                v23 = v28;
              }

              while (v28 != v24);
            }

            sub_1005B6E60(v11, v19, v21);
            v69[0] = _NSConcreteStackBlock;
            v69[1] = 3221225472;
            v69[2] = sub_10071231C;
            v69[3] = &unk_100B0A6A0;
            v70 = v10;
            v71 = v19;
            v72 = v21;
            sub_100710EE0(a1 + 10, v69);
          }

          *&uu2[8] = &off_100AE0A78;
          v39 = v96;
          if (v96)
          {
            sub_10000C808(v96);
          }
        }

        else
        {
          sub_10004DFB4(uu2, v10);
          if (&a1[50] == sub_10004E34C(&a1[48], uu2))
          {
            v39 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR);
            if (v39)
            {
              sub_100867068();
            }
          }

          else
          {
            sub_10004DFB4(uu2, v10);
            v38 = sub_10070A400(&a1[48], uu2);
            v41 = *(v38 + 120);
            v39 = v38 + 120;
            v40 = v41;
            if (!v41)
            {
              goto LABEL_57;
            }

            v42 = a3 - 1;
            v43 = v39;
            do
            {
              v44 = *(v40 + 32);
              v45 = v44 >= v42;
              v46 = v44 < v42;
              if (v45)
              {
                v43 = v40;
              }

              v40 = *(v40 + 8 * v46);
            }

            while (v40);
            if (v43 != v39 && *(v43 + 32) <= v42)
            {
              if (*(v43 + 56))
              {
                v48 = *(v43 + 40);
                v49 = (v43 + 48);
                if (v48 != (v43 + 48))
                {
                  do
                  {
                    v50 = v48[4];
                    if (qword_100B512F8 != -1)
                    {
                      sub_100866FD0();
                    }

                    sub_1003B7804(off_100B512F0, v10, v50, a3, a4, a7);
                    sub_100614BB8(v50, uu2);
                    if ((SBYTE7(v96) & 0x80u) == 0)
                    {
                      v51 = uu2;
                    }

                    else
                    {
                      LODWORD(v51) = *uu2;
                    }

                    if ((SBYTE7(v96) & 0x80u) == 0)
                    {
                      v52 = BYTE7(v96);
                    }

                    else
                    {
                      v52 = *&uu2[8];
                    }

                    v53 = sub_100007774(&v79, v51, v52);
                    sub_100007774(v53, ",", 1);
                    if (SBYTE7(v96) < 0)
                    {
                      operator delete(*uu2);
                    }

                    v54 = v48[1];
                    if (v54)
                    {
                      do
                      {
                        v55 = v54;
                        v54 = *v54;
                      }

                      while (v54);
                    }

                    else
                    {
                      do
                      {
                        v55 = v48[2];
                        v29 = *v55 == v48;
                        v48 = v55;
                      }

                      while (!v29);
                    }

                    v48 = v55;
                  }

                  while (v55 != v49);
                }

                *&buf.__r_.__value_.__l.__data_ = 0uLL;
                std::ostream::sentry::sentry();
                v56 = &v79 + *(v79 - 24);
                if ((v56[32] & 5) == 0)
                {
                  (*(**(v56 + 5) + 32))(uu2);
                  if (v97 == -1)
                  {
                    std::ios_base::clear((&v79 + *(v79 - 24)), *(v81 + *(v79 - 24)) | 4);
                  }
                }

                std::ostream::sentry::~sentry();
                uu2[0] = 0;
                v39 = sub_100007774(&v79, uu2, 1);
              }
            }

            else
            {
LABEL_57:
              v39 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR);
              if (v39)
              {
                sub_100866FF8();
              }
            }
          }
        }

        if (a6)
        {
          v58 = sub_100432718(v39, v37);
          std::stringbuf::str();
          if ((SBYTE7(v96) & 0x80u) == 0)
          {
            v59 = uu2;
          }

          else
          {
            v59 = *uu2;
          }

          v60 = *(a4 + 8);
          v67 = &off_100AE0A78;
          v68 = v60;
          if (v60)
          {
            sub_10000C69C(v60);
          }

          (*(*v58 + 40))(v58, 4, v59, v10, &v67);
          v67 = &off_100AE0A78;
          if (v68)
          {
            sub_10000C808(v68);
          }

          if (SBYTE7(v96) < 0)
          {
            operator delete(*uu2);
          }
        }

        *&v79 = v61;
        if (SHIBYTE(v83) < 0)
        {
          operator delete(__p[1]);
        }

        std::locale::~locale(&v80);
        std::iostream::~basic_iostream();
        std::ios::~ios();
      }

      else
      {
        v47 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
        {
          sub_1006E3698(v13, &v78);
          sub_100866EBC(v10, &v78, uu2, v47);
        }
      }
    }

    else if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_1008670D8();
    }

    if (v74)
    {
      sub_100117644(v74);
    }
  }

  else if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_100867148();
  }
}

void sub_1007121A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  std::ostream::sentry::~sentry();
  sub_1007FC91C(&a30);
  if (a22)
  {
    sub_100117644(a22);
  }

  _Unwind_Resume(a1);
}

void sub_100712354(void *a1)
{
  v1 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "statedump: ------------------- GATT Gateway --------------------", buf, 2u);
    v1 = qword_100BCE910;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "statedump: Active commands:", buf, 2u);
  }

  v2 = a1[24];
  v53 = (a1 + 25);
  if (v2 != (a1 + 25))
  {
    do
    {
      if (v2[152] == 1)
      {
        v3 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          memset(buf, 0, 37);
          uuid_unparse_upper(v2 + 32, buf);
          sub_100007E30(__p, buf);
          v4 = v60 >= 0 ? __p : *__p;
          *buf = 136446210;
          *&buf[4] = v4;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", buf, 0xCu);
          if (v60 < 0)
          {
            operator delete(*__p);
          }
        }
      }

      v5 = *(v2 + 1);
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
          v6 = *(v2 + 2);
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v53);
  }

  v8 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "statedump: Pending commands:", buf, 2u);
  }

  v9 = a1[24];
  if (v9 != v53)
  {
    do
    {
      if (*(v9 + 12))
      {
        v10 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          memset(buf, 0, 37);
          uuid_unparse_upper(v9 + 32, buf);
          sub_100007E30(__p, buf);
          if (v60 >= 0)
          {
            v11 = __p;
          }

          else
          {
            v11 = *__p;
          }

          v12 = *(v9 + 12);
          v13 = "s";
          if (v12 == 1)
          {
            v13 = "";
          }

          if (v9[153])
          {
            v14 = "flowing";
          }

          else
          {
            v14 = "frozen";
          }

          *buf = 136446978;
          *&buf[4] = v11;
          *&buf[12] = 2048;
          *&buf[14] = v12;
          *&buf[22] = 2082;
          *&buf[24] = v13;
          *&buf[32] = 2082;
          *&buf[34] = v14;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s - %lu command%{public}s (%{public}s)", buf, 0x2Au);
          if (v60 < 0)
          {
            operator delete(*__p);
          }
        }
      }

      v15 = *(v9 + 1);
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
          v16 = *(v9 + 2);
          v7 = *v16 == v9;
          v9 = v16;
        }

        while (!v7);
      }

      v9 = v16;
    }

    while (v16 != v53);
  }

  v17 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "statedump: Device databases:", buf, 2u);
  }

  v18 = a1[27];
  if (v18 != (a1 + 28))
  {
    do
    {
      v19 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        memset(buf, 0, 37);
        uuid_unparse_upper(v18 + 32, buf);
        sub_100007E30(__p, buf);
        v20 = v60 >= 0 ? __p : *__p;
        *buf = 136446210;
        *&buf[4] = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", buf, 0xCu);
        if (v60 < 0)
        {
          operator delete(*__p);
        }
      }

      sub_1005B7638(*(v18 + 6), "      ");
      v21 = *(v18 + 1);
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
          v22 = *(v18 + 2);
          v7 = *v22 == v18;
          v18 = v22;
        }

        while (!v7);
      }

      v18 = v22;
    }

    while (v22 != a1 + 28);
  }

  v23 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "statedump: Client subscriptions:", buf, 2u);
  }

  v24 = a1[24];
  if (v24 != v53)
  {
    do
    {
      v25 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        memset(buf, 0, 37);
        uuid_unparse_upper(v24 + 32, buf);
        sub_100007E30(__p, buf);
        v26 = __p;
        if (v60 < 0)
        {
          v26 = *__p;
        }

        *buf = 136446210;
        *&buf[4] = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", buf, 0xCu);
        if (v60 < 0)
        {
          operator delete(*__p);
        }
      }

      v27 = *(v24 + 20);
      if (v27 != v24 + 168)
      {
        do
        {
          v28 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
          {
            v29 = *(v27 + 16);
            *buf = 67109120;
            *&buf[4] = v29;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "statedump:       0x%04x", buf, 8u);
          }

          v30 = *(v27 + 5);
          if (v30 != v27 + 48)
          {
            do
            {
              v31 = qword_100BCE910;
              if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
              {
                sub_100018384(*(v30 + 4), buf);
                v32 = (buf[23] & 0x80u) == 0 ? buf : *buf;
                *__p = 136446210;
                *&__p[4] = v32;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "statedump:          %{public}s", __p, 0xCu);
                if (buf[23] < 0)
                {
                  operator delete(*buf);
                }
              }

              v33 = *(v30 + 1);
              if (v33)
              {
                do
                {
                  v34 = v33;
                  v33 = *v33;
                }

                while (v33);
              }

              else
              {
                do
                {
                  v34 = *(v30 + 2);
                  v7 = *v34 == v30;
                  v30 = v34;
                }

                while (!v7);
              }

              v30 = v34;
            }

            while (v34 != v27 + 48);
          }

          v35 = *(v27 + 1);
          if (v35)
          {
            do
            {
              v36 = v35;
              v35 = *v35;
            }

            while (v35);
          }

          else
          {
            do
            {
              v36 = *(v27 + 2);
              v7 = *v36 == v27;
              v27 = v36;
            }

            while (!v7);
          }

          v27 = v36;
        }

        while (v36 != v24 + 168);
      }

      v37 = *(v24 + 1);
      if (v37)
      {
        do
        {
          v38 = v37;
          v37 = *v37;
        }

        while (v37);
      }

      else
      {
        do
        {
          v38 = *(v24 + 2);
          v7 = *v38 == v24;
          v24 = v38;
        }

        while (!v7);
      }

      v24 = v38;
    }

    while (v38 != v53);
  }

  v39 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "statedump: Built-in services detected:", buf, 2u);
  }

  v40 = a1[31];
  if (v40 != (a1 + 32))
  {
    do
    {
      v41 = *(v40 + 6);
      if (v41 != v40 + 56)
      {
        v42 = qword_100BCE910;
        do
        {
          v54 = *(v41 + 28);
          v55 = *(v41 + 11);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            sub_10003B85C(&v54, buf);
            v43 = buf[23];
            v44 = *buf;
            v45 = sub_10004DF60(v40 + 32);
            v46 = v45;
            *__p = 136315394;
            v47 = buf;
            if (v43 < 0)
            {
              v47 = v44;
            }

            *&__p[4] = v47;
            v58 = 2112;
            v59 = v45;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Detected service %s on device %@ and notified", __p, 0x16u);
            if (buf[23] < 0)
            {
              operator delete(*buf);
            }

            v42 = qword_100BCE910;
          }

          v48 = *(v41 + 1);
          if (v48)
          {
            do
            {
              v49 = v48;
              v48 = *v48;
            }

            while (v48);
          }

          else
          {
            do
            {
              v49 = *(v41 + 2);
              v7 = *v49 == v41;
              v41 = v49;
            }

            while (!v7);
          }

          v41 = v49;
        }

        while (v49 != v40 + 56);
      }

      v50 = *(v40 + 1);
      if (v50)
      {
        do
        {
          v51 = v50;
          v50 = *v50;
        }

        while (v50);
      }

      else
      {
        do
        {
          v51 = *(v40 + 2);
          v7 = *v51 == v40;
          v40 = v51;
        }

        while (!v7);
      }

      v40 = v51;
    }

    while (v51 != a1 + 32);
  }
}

void sub_100712C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100712C4C(uint64_t a1)
{
  sub_10037505C(a1 + 128, *(a1 + 136));
  sub_100712CCC((a1 + 72));
  sub_100712CCC((a1 + 24));
  return a1;
}

uint64_t sub_100712C8C(uint64_t a1)
{
  sub_10037505C(a1 + 112, *(a1 + 120));
  sub_100712CCC((a1 + 56));
  sub_100712CCC((a1 + 8));
  return a1;
}

uint64_t sub_100712CCC(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 9];
    v7 = (*v6 + 8 * (v5 & 0x1FF));
    v8 = *(v2 + (((a1[5] + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[5] + v5) & 0x1FF);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7;
        *v7 = 0;
        if (v9)
        {
          sub_100713478(v7, v9);
        }

        if (++v7 - *v6 == 4096)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 256;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_18;
    }

    v12 = 512;
  }

  a1[4] = v12;
LABEL_18:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return sub_10035F858(a1);
}

void sub_100712E14(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100712E14(a1, *a2);
    sub_100712E14(a1, a2[1]);
    sub_100712E74(a1, (a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_100712E74(uint64_t a1, uint64_t a2)
{
  sub_10037505C(a2 + 128, *(a2 + 136));
  sub_100712CCC((a2 + 72));

  return sub_100712CCC((a2 + 24));
}

void sub_100712EBC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100712EBC(a1, *a2);
    sub_100712EBC(a1, a2[1]);
    v4 = a2[7];
    if (v4)
    {
      sub_100117644(v4);
    }

    operator delete(a2);
  }
}

void *sub_100713124(uint64_t **a1, unsigned __int8 *uu1, uint64_t a3)
{
  v4 = 0;
  result = *sub_10004A7D0(a1, &v4, uu1);
  if (!result)
  {
    sub_1007131B0();
  }

  return result;
}

void sub_1007132BC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1007132D8(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1007132D8(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_100712E74(*a1, __p + 32);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_100713334(uint64_t **a1, unsigned __int8 *a2)
{
  v3 = sub_10004E34C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_10067D88C(a1, v3);
  return 1;
}

uint64_t sub_10071337C(uint64_t **a1, unsigned __int8 *a2)
{
  v3 = sub_10004E34C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_1007133C4(a1, v3);
  return 1;
}

uint64_t *sub_1007133C4(uint64_t **a1, uint64_t *a2)
{
  v4 = sub_10002717C(a1, a2);
  sub_100712E74(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

void sub_100713478(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 24);
    *(a2 + 24) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    operator delete();
  }
}

void *sub_1007134F4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10071354C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_10071354C(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1007135D4(v5, (v5 + 8), v4 + 28, (v4 + 28));
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

uint64_t sub_1007135D4(uint64_t **a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = 0;
  v7 = 0;
  v4 = *sub_100713678(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

unsigned __int8 *sub_100713678(uint64_t **a1, uint64_t *a2, unsigned __int8 **a3, uint64_t *a4, unsigned __int8 *a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !sub_10007C3A8(a5, a2 + 28))
  {
    if (!sub_10007C3A8(a2 + 28, a5))
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
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_10007C3A8(a5, v15 + 28))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

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

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
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

  if (sub_10007C3A8(v12 + 28, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_10004E3C8(a1, a3, a5);
}

void *sub_10071380C(uint64_t **a1, unsigned __int8 *uu1, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_10004A7D0(a1, &v6, uu1);
  if (!result)
  {
    sub_1007138B0();
  }

  return result;
}

void sub_100713930(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10067DA0C(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_1007139E4(void *a1, uint64_t a2, __int16 a3, char a4, uint64_t a5)
{
  v9 = sub_1006EF1B4(a1, a2);
  *v9 = off_100B097A8;
  *(v9 + 48) = &off_100B097E0;
  *(v9 + 56) = a3;
  *(v9 + 58) = a4;
  v10 = *(a5 + 8);
  a1[8] = &off_100AE0A78;
  a1[9] = v10;
  if (v10)
  {
    sub_10000C69C(v10);
  }

  a1[10] = 0;
  return a1;
}

uint64_t *sub_100713AA8(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
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
      v7 = *(v4 + 32);
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

uint64_t sub_100713B88(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = sub_1006EF1B4(a1, a2);
  *v5 = off_100B09668;
  v5[6] = &off_100B096A0;
  v5[7] = 0;
  if (*(a3 + 23) < 0)
  {
    sub_100008904((a1 + 64), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 80) = *(a3 + 2);
    *(a1 + 64) = v6;
  }

  return a1;
}

void sub_100713C18(_Unwind_Exception *a1)
{
  v3 = *(v1 + 56);
  *(v1 + 56) = 0;
  if (v3)
  {
    sub_100867184(v3);
  }

  sub_1006F57F0(v1);
  _Unwind_Resume(a1);
}

void *sub_100713C3C(uint64_t **a1, unsigned __int8 *uu1, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_10004A7D0(a1, &v6, uu1);
  if (!result)
  {
    sub_100713CE0();
  }

  return result;
}

void sub_100713D60(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10067DA0C(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_100713D7C(void *result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = result + 1;
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_100083B10(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v10 = *(v9 + 28);
          *(v8 + 11) = *(v9 + 11);
          *(v8 + 28) = v10;
          sub_100713EE8(v5, v8);
          v8 = v14;
          v15 = v14;
          if (v14)
          {
            v14 = sub_100083B10(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_100084E60(&v13);
  }

  if (a2 != a3)
  {
    sub_100713F6C(v5, a2 + 28);
  }

  return result;
}

void sub_100713ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100084E60(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100713EE8(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!sub_10007C3A8((a2 + 28), v4 + 28))
        {
          break;
        }

        v4 = *v5;
        v6 = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    v6 = v5 + 1;
  }

  else
  {
    v6 = (a1 + 8);
  }

LABEL_8:
  sub_10000856C(a1, v5, v6, a2);
  return a2;
}

void sub_100714098(const void **a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v1) << 6) - 1;
  }

  v5 = a1[4];
  if ((v4 - (a1[5] + v5)) < 0x200)
  {
    v6 = a1[3];
    v7 = *a1;
    v8 = v6 - *a1;
    if (v3 < v8)
    {
      if (v1 != v7)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v10[4] = a1;
    sub_100008108(a1, v9);
  }

  a1[4] = (v5 + 512);
  v10[0] = *(v2 - 8);
  a1[2] = (v2 - 8);
  sub_1004F3608(a1, v10);
}

void sub_100714294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1007142E0(void *a1, uint64_t a2)
{
  v2 = (a2 - *a1) >> 3;
  if (v2 < 2)
  {
    return &a1[-((512 - v2) >> 9)];
  }

  else
  {
    return &a1[(v2 - 1) >> 9];
  }
}

void sub_100714334(unint64_t *a1)
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
    sub_100008108(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_1004F3500(a1, &v9);
}

void sub_1007144BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_100714508(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t **a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = a5[1];
  }

  else
  {
    v11 = a1 + 1;
    v10 = *a1;
    v7 = *a5;
    v8 = a5[1];
    v15 = 0;
    v16 = 0uLL;
    for (i = (v10 + 4096); ; i = v13 + 512)
    {
      sub_1007145C4(a2, i, v7, v8, &v15);
      v8 = *(&v16 + 1);
      v7 = v16;
      *a5 = v16;
      a5[1] = v8;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      a2 = v13;
      v15 = 0;
      v16 = 0uLL;
    }

    a2 = *v11;
  }

  v15 = 0;
  v16 = 0uLL;
  sub_1007145C4(a2, a4, v7, v8, &v15);
  result = *&v16;
  *a5 = v16;
  return result;
}

void sub_1007145C4(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t **a5@<X8>)
{
  v5 = a3;
  i = a1;
  if (a1 != a2)
  {
    v9 = *a3 - a4 + 4096;
    if (a2 - a1 >= v9 >> 3)
    {
      v10 = v9 >> 3;
    }

    else
    {
      v10 = a2 - a1;
    }

    for (i = sub_10071469C(&v16, a1, &a1[v10], a4); i != a2; i = sub_10071469C(&v16, i, &i[v14], v12))
    {
      v13 = v5[1];
      ++v5;
      v12 = v13;
      v14 = a2 - i;
      if (v14 >= 512)
      {
        v14 = 512;
      }
    }

    a4 = v11;
    if ((*v5 + 4096) == v11)
    {
      v15 = v5[1];
      ++v5;
      a4 = v15;
    }
  }

  *a5 = i;
  a5[1] = v5;
  a5[2] = a4;
}

uint64_t *sub_10071469C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      v8 = *a4;
      *a4 = v7;
      if (v8)
      {
        sub_100713478(a4, v8);
      }

      ++v5;
      ++a4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

__n128 sub_10071470C@<Q0>(uint64_t *a1@<X1>, void *a2@<X2>, uint64_t *a3@<X3>, void *a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v22 = 0;
    v23 = 0uLL;
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = a3 - 1;
    v16 = *a3;
    v22 = 0;
    v23 = 0uLL;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      sub_1007147FC(v16, v18, v13, v14, &v22);
      v14 = v23.n128_i64[1];
      v13 = v23.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v22 = 0;
      v23 = 0uLL;
      v18 = (v19 + 4096);
    }

    v20 = *v17;
    v22 = 0;
    v23 = 0uLL;
    v12 = (v20 + 4096);
    v11 = a2;
  }

  sub_1007147FC(v11, v12, v13, v14, &v22);
  result = v23;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *sub_1007147FC@<X0>(void *a1@<X1>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v5 = a3;
  if (a1 == a2)
  {
    v8 = a1;
  }

  else
  {
    v8 = a2;
    v9 = a4 - *a3;
    if (a2 - a1 >= v9 >> 3)
    {
      v10 = v9 >> 3;
    }

    else
    {
      v10 = a2 - a1;
    }

    v11 = &a2[-v10];
    result = sub_1007148EC(&v19, v11, a2, a4);
    if (v11 != a1)
    {
      do
      {
        v15 = *--v5;
        v14 = v15;
        v16 = v11 - a1;
        if (v16 >= 512)
        {
          v16 = 512;
        }

        v17 = &v11[-v16];
        result = sub_1007148EC(&v19, v17, v11, v14 + 4096);
        v11 = v17;
      }

      while (v17 != a1);
    }

    a4 = v13;
    if (*v5 + 4096 == v13)
    {
      v18 = v5[1];
      ++v5;
      a4 = v18;
    }
  }

  *a5 = v8;
  a5[1] = v5;
  a5[2] = a4;
  return result;
}

void *sub_1007148EC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v6 = (a4 - 8);
    v7 = a3;
    do
    {
      v8 = *--v7;
      *v7 = 0;
      v9 = *v6;
      *v6 = v8;
      if (v9)
      {
        sub_100713478(v6, v9);
      }

      --v6;
    }

    while (v7 != a2);
  }

  return a3;
}

void *sub_10071495C(uint64_t **a1, unsigned __int8 *uu1, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_10004A7D0(a1, &v6, uu1);
  if (!result)
  {
    sub_100714A00();
  }

  return result;
}

void sub_100714A7C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100714A98(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100714A98(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[7];
    if (v3)
    {
      sub_100117644(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_100714B54(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_100B0A7F0;
  *(a1 + 24) = off_100AFF5D0;
  sub_100044BBC((a1 + 32));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1 + 128;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  return a1;
}

void sub_100714C10(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100B0A7F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_100714C8C(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_10002717C(a1, a2);
  v4 = a2[7];
  if (v4)
  {
    sub_100117644(v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t sub_100714D64(uint64_t a1, uint64_t a2)
{
  *sub_1000A1AE4(a1, a2) = &off_100B0A848;
  if (qword_100BC7060 != -1)
  {
    sub_1008671A8();
  }

  return a1;
}

void sub_100714DC0(id a1)
{
  v123 = "kCBGeneralMsgIdAntennaDiversity";
  v124 = 31;
  v125 = &v123;
  v1 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v1[4] = sub_100716BCC;
  v1[5] = 0;
  v123 = "kCBGeneralMsgIdReadRSSI";
  v124 = 23;
  v125 = &v123;
  v2 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v2[4] = sub_10071749C;
  v2[5] = 0;
  v123 = "kCBGeneralMsgIdReadCurrentAntenna";
  v124 = 33;
  v125 = &v123;
  v3 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v3[4] = sub_1007175E0;
  v3[5] = 0;
  v123 = "kCBGeneralMsgIdDelayedWake";
  v124 = 26;
  v125 = &v123;
  v4 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v4[4] = sub_100717704;
  v4[5] = 0;
  v123 = "kCBGeneralMsgIdChangeConnectionPacketType";
  v124 = 41;
  v125 = &v123;
  v5 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v5[4] = sub_100717824;
  v5[5] = 0;
  v123 = "kCBGeneralMsgIdReadTxPowerLevel";
  v124 = 31;
  v125 = &v123;
  v6 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v6[4] = sub_100717950;
  v6[5] = 0;
  v123 = "kCBGeneralMsgIdSetTxPowerCap";
  v124 = 28;
  v125 = &v123;
  v7 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v7[4] = sub_100717B6C;
  v7[5] = 0;
  v123 = "kCBGeneralMsgIdCountryCode";
  v124 = 26;
  v125 = &v123;
  v8 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v8[4] = sub_100717C88;
  v8[5] = 0;
  v123 = "kCBGeneralMsgIdTASCountryCodes";
  v124 = 30;
  v125 = &v123;
  v9 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v9[4] = sub_100717E10;
  v9[5] = 0;
  v123 = "kCBGeneralMsgIdRFTestSetTXRXChains";
  v124 = 34;
  v125 = &v123;
  v10 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v10[4] = sub_1007180BC;
  v10[5] = 0;
  v123 = "kCBGeneralMsgIdReadRXChainsRSSI";
  v124 = 31;
  v125 = &v123;
  v11 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v11[4] = sub_100718224;
  v11[5] = 0;
  v123 = "kCBGeneralMsgIdTASGetPowerTableInfo";
  v124 = 35;
  v125 = &v123;
  v12 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v12[4] = sub_1007183CC;
  v12[5] = 0;
  v123 = "kCBGeneralMsgIdSetSARType";
  v124 = 25;
  v125 = &v123;
  v13 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v13[4] = sub_10071855C;
  v13[5] = 0;
  v123 = "kCBGeneralMsgIdPowerControlDiversityAlgoV2";
  v124 = 42;
  v125 = &v123;
  v14 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v14[4] = sub_1007186BC;
  v14[5] = 0;
  v123 = "kCBGeneralMsgIdSetDefaultChainForCore";
  v124 = 37;
  v125 = &v123;
  v15 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v15[4] = sub_10071895C;
  v15[5] = 0;
  v123 = "kCBGeneralMsgIdBtAudioSyncConfig";
  v124 = 32;
  v125 = &v123;
  v16 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v16[4] = sub_100718AA8;
  v16[5] = 0;
  v123 = "kCBGeneralMsgIdPHYPowerLevelLoadV3";
  v124 = 34;
  v125 = &v123;
  v17 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v17[4] = sub_100718BE4;
  v17[5] = 0;
  v123 = "kCBGeneralMsgIdControlAutoConnectionTagging";
  v124 = 43;
  v125 = &v123;
  v18 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v18[4] = sub_100718D88;
  v18[5] = 0;
  v123 = "kCBGeneralMsgIdGetConnectionTaggingInfo";
  v124 = 39;
  v125 = &v123;
  v19 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v19[4] = sub_100718E80;
  v19[5] = 0;
  v123 = "kCBGeneralMsgIdCountryCodeMultiBand";
  v124 = 35;
  v125 = &v123;
  v20 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v20[4] = sub_100719020;
  v20[5] = 0;
  v123 = "kCBGeneralMsgIdSimulateLocationUpdate";
  v124 = 37;
  v125 = &v123;
  v21 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v21[4] = sub_1007192E8;
  v21[5] = 0;
  v123 = "kCBGeneralMsgIdCellularTransmitState";
  v124 = 36;
  v125 = &v123;
  v22 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v22[4] = sub_1007193AC;
  v22[5] = 0;
  v123 = "kCBGeneralMsgIdReadFactoryCalTable";
  v124 = 34;
  v125 = &v123;
  v23 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v23[4] = sub_100719460;
  v23[5] = 0;
  v123 = "kCBGeneralMsgIdDisableTpc";
  v124 = 25;
  v125 = &v123;
  v24 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v24[4] = sub_100719664;
  v24[5] = 0;
  v123 = "kCBGeneralMsgIdBlackMagickSet";
  v124 = 29;
  v125 = &v123;
  v25 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v25[4] = sub_100719734;
  v25[5] = 0;
  v123 = "kCBGeneralMsgIdRxTest";
  v124 = 21;
  v125 = &v123;
  v26 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v26[4] = sub_100719900;
  v26[5] = 0;
  v123 = "kCBGeneralMsgIdTxTest";
  v124 = 21;
  v125 = &v123;
  v27 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v27[4] = sub_100719AA4;
  v27[5] = 0;
  v123 = "kCBGeneralMsgIdLeTestEnd";
  v124 = 24;
  v125 = &v123;
  v28 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v28[4] = sub_100719C7C;
  v28[5] = 0;
  v123 = "kCBGeneralMsgIdRxEnhancedTest";
  v124 = 29;
  v125 = &v123;
  v29 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v29[4] = sub_100719DD8;
  v29[5] = 0;
  v123 = "kCBGeneralMsgIdTxEnhancedTest";
  v124 = 29;
  v125 = &v123;
  v30 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v30[4] = sub_100719FB0;
  v30[5] = 0;
  v123 = "kCBGeneralMsgIdReadCountrySettingsTest";
  v124 = 38;
  v125 = &v123;
  v31 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v31[4] = sub_10071A1A0;
  v31[5] = 0;
  v123 = "kCBGeneralMsgIdReadePAGPIOState";
  v124 = 31;
  v125 = &v123;
  v32 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v32[4] = sub_10071A320;
  v32[5] = 0;
  v123 = "kCBGeneralMsgIdSetSARState";
  v124 = 26;
  v125 = &v123;
  v33 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v33[4] = sub_10071A444;
  v33[5] = 0;
  v123 = "kCBGeneralMsgIdWiFi5GState";
  v124 = 26;
  v125 = &v123;
  v34 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v34[4] = sub_10071A4E4;
  v34[5] = 0;
  v123 = "kCBGeneralMsgIdReadPowerCapState";
  v124 = 32;
  v125 = &v123;
  v35 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v35[4] = sub_10071A59C;
  v35[5] = 0;
  v123 = "kCBGeneralMsgIdEnhancedReadPowerCapState";
  v124 = 40;
  v125 = &v123;
  v36 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v36[4] = sub_10071A6B4;
  v36[5] = 0;
  v123 = "kCBGeneralMsgIdReadRFState";
  v124 = 26;
  v125 = &v123;
  v37 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v37[4] = sub_10071A840;
  v37[5] = 0;
  v123 = "kCBGeneralMsgIdBtSyncAdjustSyncTiming";
  v124 = 37;
  v125 = &v123;
  v38 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v38[4] = sub_10071A9E4;
  v38[5] = 0;
  v123 = "kCBGeneralMsgIdSetCellularTransmitAntenna";
  v124 = 41;
  v125 = &v123;
  v39 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v39[4] = sub_10071AAF8;
  v39[5] = 0;
  v123 = "kCBGeneralMsgIdSetBTAntenna";
  v124 = 27;
  v125 = &v123;
  v40 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v40[4] = sub_10071ABA8;
  v40[5] = 0;
  v123 = "kCBGeneralMsgIdTunablesEnable";
  v124 = 29;
  v125 = &v123;
  v41 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v41[4] = sub_10071ACEC;
  v41[5] = 0;
  v123 = "kCBGeneralMsgIdSetDiversityAntenna";
  v124 = 34;
  v125 = &v123;
  v42 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v42[4] = sub_10071AD94;
  v42[5] = 0;
  v123 = "kCBGeneralMsgIdADVBufConfigTool";
  v124 = 31;
  v125 = &v123;
  v43 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v43[4] = sub_10071AE88;
  v43[5] = 0;
  v123 = "kCBGeneralMsgIdADVBufMatchControlTool";
  v124 = 37;
  v125 = &v123;
  v44 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v44[4] = sub_10071AFE0;
  v44[5] = 0;
  v123 = "kCBGeneralMsgIdADVBufReadTool";
  v124 = 29;
  v125 = &v123;
  v45 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v45[4] = sub_10071B0E0;
  v45[5] = 0;
  v123 = "kCBGeneralMsgIdMatchTableConfigTool";
  v124 = 35;
  v125 = &v123;
  v46 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v46[4] = sub_10071B228;
  v46[5] = 0;
  v123 = "kCBGeneralMsgIdMatchTableExtendedFilterConfigTool";
  v124 = 49;
  v125 = &v123;
  v47 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v47[4] = sub_10071B400;
  v47[5] = 0;
  v123 = "kCBGeneralMsgIdMatchTableParamsTool";
  v124 = 35;
  v125 = &v123;
  v48 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v48[4] = sub_10071B548;
  v48[5] = 0;
  v123 = "kCBGeneralMsgIdMatchBufferConfigTool";
  v124 = 36;
  v125 = &v123;
  v49 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v49[4] = sub_10071B7D0;
  v49[5] = 0;
  v123 = "kCBGeneralMsgIdMatchBufferReadTool";
  v124 = 34;
  v125 = &v123;
  v50 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v50[4] = sub_10071B8FC;
  v50[5] = 0;
  v123 = "kCBGeneralMsgIdSPMIDiagnosticsTool";
  v124 = 34;
  v125 = &v123;
  v51 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v51[4] = sub_10071B9D8;
  v51[5] = 0;
  v123 = "kCBGeneralMsgIdBTCLKSensorCTimeSyncTool";
  v124 = 39;
  v125 = &v123;
  v52 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v52[4] = sub_10071BA8C;
  v52[5] = 0;
  v123 = "kCBGeneralMsgIdAdvTxTriggerTimeStampTool";
  v124 = 40;
  v125 = &v123;
  v53 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v53[4] = sub_10071BB70;
  v53[5] = 0;
  v123 = "kCBGeneralMsgIdReadLEConnEventCounterTool";
  v124 = 41;
  v125 = &v123;
  v54 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v54[4] = sub_10071BC54;
  v54[5] = 0;
  v123 = "kCBGeneralMsgIdStartLEConnEventTriggerTool";
  v124 = 42;
  v125 = &v123;
  v55 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v55[4] = sub_10071BD64;
  v55[5] = 0;
  v123 = "kCBGeneralMsgIdSPMIDebugControlTool";
  v124 = 35;
  v125 = &v123;
  v56 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v56[4] = sub_10071BE9C;
  v56[5] = 0;
  v123 = "kCBGeneralMsgIdSetGPIOStateMsgTool";
  v124 = 34;
  v125 = &v123;
  v57 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v57[4] = sub_10071BF50;
  v57[5] = 0;
  v123 = "kCBGeneralMsgIdReadACLConnHandle";
  v124 = 32;
  v125 = &v123;
  v58 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v58[4] = sub_10071C054;
  v58[5] = 0;
  v123 = "kCBGeneralMsgIdHDRSetupSyncConnMsgTool";
  v124 = 38;
  v125 = &v123;
  v59 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v59[4] = sub_10071C140;
  v59[5] = 0;
  v123 = "kCBGeneralMsgIdHDRAcceptSyncConnMsgTool";
  v124 = 39;
  v125 = &v123;
  v60 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v60[4] = sub_10071C2E0;
  v60[5] = 0;
  v123 = "kCBGeneralMsgIdSCOBufferSizeControl";
  v124 = 35;
  v125 = &v123;
  v61 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v61[4] = sub_10071C4A8;
  v61[5] = 0;
  v123 = "kCBGeneralMsgIdHRBControl";
  v124 = 25;
  v125 = &v123;
  v62 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v62[4] = sub_10071C608;
  v62[5] = 0;
  v123 = "kCBGeneralMsgIdHRBAllowedBands";
  v124 = 30;
  v125 = &v123;
  v63 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v63[4] = sub_10071C794;
  v63[5] = 0;
  v123 = "kCBGeneralMsgIdHRBClassificationBands";
  v124 = 37;
  v125 = &v123;
  v64 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v64[4] = sub_10071C920;
  v64[5] = 0;
  v123 = "kCBGeneralMsgIdHRBChangeConnectionBand";
  v124 = 38;
  v125 = &v123;
  v65 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v65[4] = sub_10071CAAC;
  v65[5] = 0;
  v123 = "kCBGeneralMsgIdHRBWriteScanEnable";
  v124 = 33;
  v125 = &v123;
  v66 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v66[4] = sub_10071CCF8;
  v66[5] = 0;
  v123 = "kCBGeneralMsgIdHRBWritePageScanActivity";
  v124 = 39;
  v125 = &v123;
  v67 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v67[4] = sub_10071CE38;
  v67[5] = 0;
  v123 = "kCBGeneralMsgIdHRBSetAFHHostChannelClassification";
  v124 = 49;
  v125 = &v123;
  v68 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v68[4] = sub_10071CF78;
  v68[5] = 0;
  v123 = "kCBGeneralMsgIdGetEssentialPowerDatabaseEntries";
  v124 = 47;
  v125 = &v123;
  v69 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v69[4] = sub_10071D28C;
  v69[5] = 0;
  v123 = "kCBGeneralMsgIdHRBReadEnhancedTransmitPowerLevel";
  v124 = 48;
  v125 = &v123;
  v70 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v70[4] = sub_10071D4DC;
  v70[5] = 0;
  v123 = "kCBGeneralMsgIdHRBReadAFHChannelMap";
  v124 = 35;
  v125 = &v123;
  v71 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v71[4] = sub_10071D838;
  v71[5] = 0;
  v123 = "kCBGeneralMsgIdHRBLimitChannelMap";
  v124 = 33;
  v125 = &v123;
  v72 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v72[4] = sub_10071DB38;
  v72[5] = 0;
  v123 = "kCBGeneralMsgIdHRBSetBandEdges";
  v124 = 30;
  v125 = &v123;
  v73 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v73[4] = sub_10071DC4C;
  v73[5] = 0;
  v123 = "kCBGeneralMsgIdEnhancedTxTest";
  v124 = 29;
  v125 = &v123;
  v74 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v74[4] = sub_10071DDEC;
  v74[5] = 0;
  v123 = "kCBGeneralMsgIdEnhancedRxTest2G";
  v124 = 31;
  v125 = &v123;
  v75 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v75[4] = sub_10071E140;
  v75[5] = 0;
  v123 = "kCBGeneralMsgIdEnhancedRxTestHRB";
  v124 = 32;
  v125 = &v123;
  v76 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v76[4] = sub_10071E3B8;
  v76[5] = 0;
  v123 = "kCBGeneralMsgIdEnhancedTxTestCont";
  v124 = 33;
  v125 = &v123;
  v77 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v77[4] = sub_10071E634;
  v77[5] = 0;
  v123 = "kCBGeneralMsgIdLERoles";
  v124 = 22;
  v125 = &v123;
  v78 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v78[4] = sub_10071E884;
  v78[5] = 0;
  v123 = "kCBGeneralMsgIdBTPerfTest";
  v124 = 25;
  v125 = &v123;
  v79 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v79[4] = sub_10071E968;
  v79[5] = 0;
  v123 = "kCBGeneralMsgIdSetupL2CAPServer";
  v124 = 31;
  v125 = &v123;
  v80 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v80[4] = sub_10071EC7C;
  v80[5] = 0;
  v123 = "kCBGeneralMsgIdRemoveL2CAPServer";
  v124 = 32;
  v125 = &v123;
  v81 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v81[4] = sub_10071ED34;
  v81[5] = 0;
  v123 = "kCBGeneralMsgIdCreateL2CAPConnection";
  v124 = 36;
  v125 = &v123;
  v82 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v82[4] = sub_10071EE90;
  v82[5] = 0;
  v123 = "kCBGeneralMsgIdRemoveL2CAPConnection";
  v124 = 36;
  v125 = &v123;
  v83 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v83[4] = sub_10071EFDC;
  v83[5] = 0;
  v123 = "kCBGeneralMsgIdEnterSniffMode";
  v124 = 29;
  v125 = &v123;
  v84 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v84[4] = sub_10071F1E8;
  v84[5] = 0;
  v123 = "kCBGeneralMsgIdExitSniffMode";
  v124 = 28;
  v125 = &v123;
  v85 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v85[4] = sub_10071F418;
  v85[5] = 0;
  v123 = "kCBGeneralMsgIdEnablePhyStats";
  v124 = 29;
  v125 = &v123;
  v86 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v86[4] = sub_10071F5B4;
  v86[5] = 0;
  v123 = "kCBGeneralMsgIdAdvancedSniffMode";
  v124 = 32;
  v125 = &v123;
  v87 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v87[4] = sub_10071F744;
  v87[5] = 0;
  v123 = "kCBGeneralMsgIdExitAdvancedSniffMode";
  v124 = 36;
  v125 = &v123;
  v88 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v88[4] = sub_10071FA3C;
  v88[5] = 0;
  v123 = "kCBGeneralMsgIdAdvancedSniffReconfig";
  v124 = 36;
  v125 = &v123;
  v89 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v89[4] = sub_10071FBD8;
  v89[5] = 0;
  v123 = "kCBGeneralMsgIdSetPeripheralMaxAge";
  v124 = 34;
  v125 = &v123;
  v90 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v90[4] = sub_10071FE0C;
  v90[5] = 0;
  v123 = "kCBGeneralMsgIdLMPFlow";
  v124 = 22;
  v125 = &v123;
  v91 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v91[4] = sub_10071FFD0;
  v91[5] = 0;
  v123 = "kCBGeneralMsgIdAoSEmptyPacketReport";
  v124 = 35;
  v125 = &v123;
  v92 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v92[4] = sub_100720194;
  v92[5] = 0;
  v123 = "kCBGeneralMsgIdConotrolAoS";
  v124 = 26;
  v125 = &v123;
  v93 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v93[4] = sub_100720358;
  v93[5] = 0;
  v123 = "kCBGeneralMsgIdBTSCPageScan";
  v124 = 27;
  v125 = &v123;
  v94 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v94[4] = sub_10072046C;
  v94[5] = 0;
  v123 = "kCBGeneralMsgIdSetQoSConfig";
  v124 = 27;
  v125 = &v123;
  v95 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v95[4] = sub_100720664;
  v95[5] = 0;
  v123 = "kCBGeneralMsgIdGetQoSConfig";
  v124 = 27;
  v125 = &v123;
  v96 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v96[4] = sub_100720D5C;
  v96[5] = 0;
  v123 = "kCBGeneralMsgIdGetLeScanStats";
  v124 = 29;
  v125 = &v123;
  v97 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v97[4] = sub_100720E0C;
  v97[5] = 0;
  v123 = "kCBGeneralMsgIdSpmiCoexGetDebugCounter";
  v124 = 38;
  v125 = &v123;
  v98 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v98[4] = sub_100720EC0;
  v98[5] = 0;
  v123 = "kCBGeneralMsgIdSpmiCoexResetDebugCounter";
  v124 = 40;
  v125 = &v123;
  v99 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v99[4] = sub_100720FC0;
  v99[5] = 0;
  v123 = "kCBGeneralMsgIdSpmiCoexTestWriteMsg";
  v124 = 35;
  v125 = &v123;
  v100 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v100[4] = sub_100721090;
  v100[5] = 0;
  v123 = "kCBGeneralMsgIdSpmiCoexTxControl";
  v124 = 32;
  v125 = &v123;
  v101 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v101[4] = sub_1007211CC;
  v101[5] = 0;
  v123 = "kCBGeneralMsgIdSpmiCoexType53Config";
  v124 = 35;
  v125 = &v123;
  v102 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v102[4] = sub_1007212D0;
  v102[5] = 0;
  v123 = "kCBGeneralMsgIdSpmiCoexType60Config";
  v124 = 35;
  v125 = &v123;
  v103 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v103[4] = sub_1007213B4;
  v103[5] = 0;
  v123 = "kCBGeneralMsgIdReadControllerRam";
  v124 = 32;
  v125 = &v123;
  v104 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v104[4] = sub_10072153C;
  v104[5] = 0;
  v123 = "kCBGeneralMsgIdSetMinEncryptionKeySize";
  v124 = 38;
  v125 = &v123;
  v105 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v105[4] = sub_100721770;
  v105[5] = 0;
  v123 = "kCBGeneralMsgIdCalSetTxPower";
  v124 = 28;
  v125 = &v123;
  v106 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v106[4] = sub_100721804;
  v106[5] = 0;
  v123 = "kCBGeneralMsgIdHPLinkBFCmd";
  v124 = 26;
  v125 = &v123;
  v107 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v107[4] = sub_1007219BC;
  v107[5] = 0;
  v123 = "kCBGeneralMsgIdMRCLoggingCmd";
  v124 = 28;
  v125 = &v123;
  v108 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v108[4] = sub_100721E2C;
  v108[5] = 0;
  v123 = "kCBGeneralMsgIdBTAntennaCfg";
  v124 = 27;
  v125 = &v123;
  v109 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v109[4] = sub_100722038;
  v109[5] = 0;
  v123 = "kCBGeneralMsgIdLoadMSFFile";
  v124 = 26;
  v125 = &v123;
  v110 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v110[4] = sub_100722264;
  v110[5] = 0;
  v123 = "kCBGeneralMsgIdLoadPwrRegulatoryFile";
  v124 = 36;
  v125 = &v123;
  v111 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v111[4] = sub_100722508;
  v111[5] = 0;
  v123 = "kCBGeneralMsgIdLoadPwrRegulatoryFileA3";
  v124 = 38;
  v125 = &v123;
  v112 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v112[4] = sub_100722694;
  v112[5] = 0;
  v123 = "kCBGeneralMsgIdTriggerULLM";
  v124 = 26;
  v125 = &v123;
  v113 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v113[4] = sub_1007228F0;
  v113[5] = 0;
  v123 = "kCBGeneralMsgIdSimulateBudswapCmd";
  v124 = 33;
  v125 = &v123;
  v114 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v114[4] = sub_100722AF4;
  v114[5] = 0;
  v123 = "kCBGeneralMsgIdSrsFwLogConfig";
  v124 = 29;
  v125 = &v123;
  v115 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v115[4] = sub_100722C30;
  v115[5] = 0;
  v123 = "kCBGeneralMsgIdLMPLogConfig";
  v124 = 27;
  v125 = &v123;
  v116 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v116[4] = sub_100722D70;
  v116[5] = 0;
  v123 = "kCBGeneralMsgIDInqPageMode";
  v124 = 26;
  v125 = &v123;
  v117 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v117[4] = sub_100722E20;
  v117[5] = 0;
  v123 = "kCBGeneralMsgHCICMD";
  v124 = 19;
  v125 = &v123;
  v118 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v118[4] = sub_100722EF0;
  v118[5] = 0;
  v123 = "kCBGeneralMsgIdLEAdvTxPowerIncrease";
  v124 = 35;
  v125 = &v123;
  v119 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v119[4] = sub_10072324C;
  v119[5] = 0;
  v123 = "kCBGeneralMsgIdWriteBdAddr";
  v124 = 26;
  v125 = &v123;
  v120 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v120[4] = sub_100723370;
  v120[5] = 0;
  v123 = "kCBGeneralMsgIdCrcErredPduReportEnable";
  v124 = 38;
  v125 = &v123;
  v121 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v121[4] = sub_1007234A0;
  v121[5] = 0;
  v123 = "kCBGeneralMsgIdAppleExtendedAdvReportEnable";
  v124 = 43;
  v125 = &v123;
  v122 = sub_100724A64(&xmmword_100BCEB18, &v123, &unk_1008A9BD0, &v125);
  v122[4] = sub_100723554;
  v122[5] = 0;
}

void sub_100716BCC(uint64_t a1, void *a2)
{
  v4 = sub_10000E92C();
  if (!(*(*v4 + 8))(v4))
  {
    return;
  }

  v33 = a1;
  original = a2;
  v43 = 0;
  v44 = 0;
  v46 = 0;
  v45 = 0;
  v40 = 26;
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  int64 = xpc_dictionary_get_int64(value, "kCBMsgArgAction");
  v6 = xpc_dictionary_get_int64(value, "kCBMsgArgConnHandle");
  v38 = xpc_dictionary_get_int64(value, "kCBMsgArgAntennaDiversityEnable");
  v7 = xpc_dictionary_get_int64(value, "kCBMsgArgDiversityRSSIThreshold");
  v8 = xpc_dictionary_get_int64(value, "kCBMsgArgRssiSwitchThreshold");
  v9 = xpc_dictionary_get_int64(value, "kCBMsgArgSwitchDecisionDuration");
  v10 = xpc_dictionary_get_int64(value, "kCBMsgArgDeepFadingTimeout");
  v37 = xpc_dictionary_get_int64(value, "kCBMsgArgPacketOnFavorite");
  v11 = xpc_dictionary_get_int64(value, "kCBMsgArgRssiFav");
  v12 = xpc_dictionary_get_int64(value, "kCBMsgArgRssiBak");
  v35 = xpc_dictionary_get_int64(value, "kCBMsgArgInstantRssiFav");
  v36 = xpc_dictionary_get_int64(value, "kCBMsgArgInstantRssiBak");
  v13 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Args received : \n", buf, 2u);
    v13 = qword_100BCE950;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v42 = int64;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "action : %u\n", buf, 8u);
    v13 = qword_100BCE950;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v42 = v6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "connHandle : %u\n", buf, 8u);
    v13 = qword_100BCE950;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v42 = v38;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "antennaDiversityEnable : %u\n", buf, 8u);
    v13 = qword_100BCE950;
  }

  v14 = v7;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v42 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "diversityRSSITHreshold : %d\n", buf, 8u);
    v13 = qword_100BCE950;
  }

  v15 = v8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v42 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "rssiSwitchThreshold : %d\n", buf, 8u);
    v13 = qword_100BCE950;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v42 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "switchDecisionDuration : %u\n", buf, 8u);
    v13 = qword_100BCE950;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v42 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "deepFadingTimeout : %u\n", buf, 8u);
    v13 = qword_100BCE950;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v42 = v37;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "packetOnFavorite : %u\n", buf, 8u);
    v13 = qword_100BCE950;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v42 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "rssiFav : %d\n", buf, 8u);
    v13 = qword_100BCE950;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v42 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "rssiBak : %d\n", buf, 8u);
    v13 = qword_100BCE950;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v42 = v35;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "instantRSSIFav : %d\n", buf, 8u);
    v13 = qword_100BCE950;
  }

  v16 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v16)
  {
    *buf = 67109120;
    v42 = v36;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "instantRSSIBak : %d\n", buf, 8u);
  }

  v18 = sub_10000C7D0(v16, v17);
  BYTE4(v32) = v36;
  BYTE3(v32) = v35;
  BYTE2(v32) = v12;
  BYTE1(v32) = v11;
  LOBYTE(v32) = v37;
  v19 = (*(*v18 + 904))(v18, int64, v6, v38, v14, v15, v9, v10, v32, &v40, &v43, 1);
  v20 = qword_100BCE950;
  if (v19)
  {
    v21 = v19;
    if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    *buf = 67109120;
    v42 = v21;
    v22 = "Response : %d";
    v23 = v20;
    v24 = OS_LOG_TYPE_DEFAULT;
    v25 = 8;
  }

  else
  {
    if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
    {
      goto LABEL_34;
    }

    *buf = 0;
    v22 = "Response to BCM4350:antennaDiversity registered successfully\n";
    v23 = v20;
    v24 = OS_LOG_TYPE_INFO;
    v25 = 2;
  }

  _os_log_impl(&_mh_execute_header, v23, v24, v22, buf, v25);
LABEL_34:
  v26 = v40;
  if (v40 >= 2u)
  {
    v27 = 0;
    v28 = qword_100BCE950;
    do
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = *(&v43 + v27);
        *buf = 67109120;
        v42 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%x\t", buf, 8u);
        v28 = qword_100BCE950;
        v26 = v40;
      }

      ++v27;
    }

    while (v27 < v26);
    reply = xpc_dictionary_create_reply(original);
    if (reply)
    {
      v31 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", BYTE3(v43));
      xpc_dictionary_set_int64(v31, "kCBMsgArgConnHandle", WORD2(v43));
      xpc_dictionary_set_int64(v31, "kCBMsgArgCurrProposedAntenna", BYTE6(v43));
      xpc_dictionary_set_int64(v31, "kCBMsgArgRssiFav", HIBYTE(v43));
      xpc_dictionary_set_int64(v31, "kCBMsgArgRssiBak", v44);
      xpc_dictionary_set_int64(v31, "kCBMsgArgInstantRssiFav", BYTE1(v44));
      xpc_dictionary_set_int64(v31, "kCBMsgArgInstantRssiBak", BYTE2(v44));
      xpc_dictionary_set_int64(v31, "kCBMsgArgLinkQualityA", BYTE3(v44));
      xpc_dictionary_set_int64(v31, "kCBMsgArgLinkQualityB", BYTE4(v44));
      xpc_dictionary_set_int64(v31, "kCBMsgArgAutoModeEnable", BYTE5(v44));
      xpc_dictionary_set_int64(v31, "kCBMsgArgCurrPowerCap", BYTE6(v44));
      xpc_dictionary_set_int64(v31, "kCBMsgArgCurrPowerControlIndex", HIBYTE(v44));
      xpc_dictionary_set_int64(v31, "kCBMsgArgRxCounterOnActive", v45);
      xpc_dictionary_set_int64(v31, "kCBMsgArgAntennaSwap0to1Counter", WORD1(v45));
      xpc_dictionary_set_int64(v31, "kCBMsgArgAntennaSwap1to0Counter", WORD2(v45));
      xpc_dictionary_set_int64(v31, "kCBMsgArgDeepFadingCount", HIWORD(v45));
      xpc_dictionary_set_int64(v31, "kCBMsgArgAntCmp", v46);
      xpc_connection_send_message(*(*(v33 + 72) + 16), v31);
      xpc_release(v31);
    }
  }
}

void sub_10071749C(uint64_t a1, xpc_object_t xdict)
{
  value_5 = 0;
  value_1 = 0;
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_100013CA4(v4, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgBTAddr");
  if (v11)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008671BC();
    }
  }

  else
  {
    value = 0;
    v13 = sub_10000C7D0(v11, v12);
    if ((*(*v13 + 304))(v13, &value_1, &value))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008671F8();
      }
    }

    else
    {
      reply = xpc_dictionary_create_reply(xdict);
      xpc_dictionary_set_int64(reply, "kCBMsgArgRawRSSI", value);
      xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
      xpc_release(reply);
    }
  }
}

void sub_1007175E0(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgConnHandle");
  v6 = *sub_10000C7D0(uint64, v5);
  if (!(*(v6 + 896))())
  {
    reply = xpc_dictionary_create_reply(xdict);
    xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", 0);
    xpc_dictionary_set_int64(reply, "kCBMsgArgCurrAntenna", 0);
    xpc_release(reply);
  }
}

void sub_100717704(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgResumeTimer");
  v7 = sub_10000C7D0(uint64, v6);
  v8 = sub_100413630(v7);
  v9 = v8;
  v11 = *sub_10000C7D0(v8, v10);
  if (v9)
  {
    v12 = (*(v11 + 1920))();
  }

  else
  {
    v12 = (*(v11 + 1192))();
  }

  if (!v12)
  {
    reply = xpc_dictionary_create_reply(xdict);
    xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", 0);
    xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
    xpc_release(reply);
  }
}

void sub_100717824(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (!sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgBTAddr"))
  {
    uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgConnectionPacketType");
    if (qword_100B508A0 != -1)
    {
      sub_100867268();
    }

    if (sub_100576928(off_100B50898, 0, uint64))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100867290();
      }
    }

    else
    {
      reply = xpc_dictionary_create_reply(xdict);
      xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", 0);
      xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
      xpc_release(reply);
    }
  }
}

void sub_100717950(int a1, xpc_object_t object)
{
  v3 = qword_100BCEB08;
  if (!qword_100BCEB08)
  {
    goto LABEL_8;
  }

  v4 = &qword_100BCEB08;
  do
  {
    if (*(v3 + 32) >= 15)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < 15));
  }

  while (v3);
  if (v4 != &qword_100BCEB08 && *(v4 + 8) <= 15)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100867300();
    }
  }

  else
  {
LABEL_8:
    v5 = xpc_retain(object);
    v23 = 15;
    v25 = &v23;
    sub_100724D48(&qword_100BCEB00, &v23, &unk_1008A9BD0, &v25)[5] = v5;
    v25 = -1;
    v24 = 0;
    v23 = 0;
    value = xpc_dictionary_get_value(object, "kCBMsgArgs");
    if (!sub_100013CA4(value, 1, v7, v8, v9, v10, v11, v12, "kCBMsgArgTransmitPowerLevelType"))
    {
      v13 = sub_1000E1FE8(&v23);
      if (v13)
      {
        v14 = v13;
        sub_1000031B0();
        v20 = sub_10024E134(sub_10072360C, v14, v25, v15, v16, v17, v18, v19);
        sub_10000C198();
        v21 = qword_100BCE950;
        if (v20)
        {
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            sub_10086733C();
          }
        }

        else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Response to XPC ReadTransmitPowerLevel registered successfully", buf, 2u);
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_1008673AC();
        }

        sub_10072360C(0x19Eu, 0, 0);
      }
    }
  }
}

void sub_100717B6C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  int64 = xpc_dictionary_get_int64(value, "kCBMsgArgTxPowerCap");
  v7 = *sub_10000C7D0(int64, v6);
  if (!(*(v7 + 928))())
  {
    reply = xpc_dictionary_create_reply(xdict);
    xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", 0);
    xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
    xpc_release(reply);
  }
}

void sub_100717C88(uint64_t a1, xpc_object_t xdict)
{
  LODWORD(value) = 0;
  v13 = 0;
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  int64 = xpc_dictionary_get_int64(v4, "kCBMsgArgAction");
  v7 = int64;
  if (int64)
  {
    v8 = xpc_dictionary_get_int64(v4, "kCBMsgArgCountryCode");
    int64 = xpc_dictionary_get_int64(v4, "kCBMsgArgLeFlag");
    v9 = int64;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = sub_10000C7D0(int64, v6);
  if ((*(*v10 + 568))(v10, v7, v8, v9, &v13, &value))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008673E8();
    }
  }

  else if (v13 >= 2u)
  {
    reply = xpc_dictionary_create_reply(xdict);
    if (reply)
    {
      v12 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", 0);
      xpc_dictionary_set_int64(v12, "kCBMsgArgCountryCode", value);
      xpc_dictionary_set_int64(v12, "kCBMsgArgLeFlag", BYTE1(value));
      xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
      xpc_release(v12);
    }
  }
}

void sub_100717E10(uint64_t a1, void *a2)
{
  v21 = 0;
  value = 0;
  v19 = 0;
  v4 = *sub_10000C7D0(a1, a2);
  if ((*(v4 + 2944))())
  {
    v5 = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(v5, "kCBMsgArgAction");
    v7 = xpc_dictionary_get_uint64(v5, "kCBMsgArgCountryCodeType");
    v9 = v7;
    length = 0;
    if (uint64)
    {
      data = xpc_dictionary_get_data(v5, "kCBMsgArgCountryCodeBands", &length);
      if (length == 8)
      {
        v12 = data;
        v13 = sub_10000C7D0(data, v11);
        LODWORD(v14) = (*(*v13 + 1464))(v13, v9, v12, length);
        if (!v14)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100867494();
        }

        LODWORD(v14) = 1;
      }

      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008674D0();
      }

      goto LABEL_15;
    }

    v15 = sub_10000C7D0(v7, v8);
    LODWORD(v14) = (*(*v15 + 1472))(v15, v9, &v19, &value);
LABEL_15:
    v14 = v14;
    goto LABEL_16;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100867458();
  }

  v14 = 1;
LABEL_16:
  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v17 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v14);
    if (v19 == 9)
    {
      xpc_dictionary_set_uint64(v17, "kCBMsgArgCountryCodeType", value);
      xpc_dictionary_set_data(v17, "kCBMsgArgCountryCodeBands", &value + 1, v19 - 1);
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v17);
    xpc_release(v17);
  }
}

void sub_1007180BC(uint64_t a1, void *a2)
{
  v4 = sub_10000C7D0(a1, a2);
  if ((*(*v4 + 2952))(v4))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    xpc_dictionary_get_uint64(value, "kCBMsgArgRFTestCoreIndex");
    xpc_dictionary_get_uint64(value, "kCBMsgArgRFTestTxChains");
    uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgRFTestRxChains");
    v8 = *sub_10000C7D0(uint64, v7);
    v9 = (*(v8 + 1480))();
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100867540();
    }

    v9 = 1;
  }

  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v11 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", v9);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v11);
    xpc_release(v11);
  }
}

void sub_100718224(uint64_t a1, void *a2)
{
  *(value + 1) = 0;
  LOBYTE(value[0]) = 0;
  v4 = *sub_10000C7D0(a1, a2);
  if ((*(v4 + 2960))())
  {
    v5 = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(v5, "kCBMsgArgConnHandle");
    *(&value[1] + 1) = uint64;
    v8 = *sub_10000C7D0(uint64, v7);
    v9 = (*(v8 + 1488))();
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086757C();
    }

    v9 = 1;
  }

  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v11 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", v9);
    xpc_dictionary_set_uint64(v11, "kCBMsgArgConnHandle", *(&value[1] + 1));
    xpc_dictionary_set_int64(v11, "kCBMsgArgChain0RSSI", SLOBYTE(value[1]));
    xpc_dictionary_set_int64(v11, "kCBMsgArgChain1RSSI", SHIBYTE(value[0]));
    xpc_dictionary_set_int64(v11, "kCBMsgArgChain2RSSI", SLOBYTE(value[0]));
    xpc_connection_send_message(*(*(a1 + 72) + 16), v11);
    xpc_release(v11);
  }
}

void sub_1007183CC(uint64_t a1, void *a2)
{
  memset(length, 0, 252);
  v4 = *sub_10000C7D0(a1, a2);
  v5 = (*(v4 + 2968))();
  if (v5)
  {
    v7 = sub_10000C7D0(v5, v6);
    v8 = (*(*v7 + 1496))(v7, length, length + 1);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008675B8();
    }

    v8 = 1;
  }

  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", v8);
    if (LOBYTE(length[0]))
    {
      xpc_dictionary_set_data(v10, "kCBMsgArgTASPowerTableInfo", length + 1, LOBYTE(length[0]));
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_10071855C(uint64_t a1, void *a2)
{
  v4 = sub_10000C7D0(a1, a2);
  if ((*(*v4 + 2976))(v4))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgSARType");
    v8 = *sub_10000C7D0(uint64, v7);
    LODWORD(v9) = (*(v8 + 1504))();
    if (v9 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100867630();
    }

    v9 = v9;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008675F4();
    }

    v9 = 1;
  }

  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v11 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", v9);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v11);
    xpc_release(v11);
  }
}

void sub_1007186BC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgConnHandle");
  xpc_dictionary_get_uint64(value, "kCBMsgArgControlType");
  xpc_dictionary_get_uint64(value, "kCBMsgArgRssiThresholdLevel1_2G");
  xpc_dictionary_get_uint64(value, "kCBMsgArgRssiThresholdLevel2_2G");
  xpc_dictionary_get_uint64(value, "kCBMsgArgRssiThresholdLevel3_2G");
  xpc_dictionary_get_uint64(value, "kCBMsgArgAntennaImbalanceRssiThreshold_2G");
  xpc_dictionary_get_uint64(value, "kCBMsgArgRssiThresholdLevel1_5G");
  xpc_dictionary_get_uint64(value, "kCBMsgArgRssiThresholdLevel2_5G");
  xpc_dictionary_get_uint64(value, "kCBMsgArgRssiThresholdLevel3_5G");
  xpc_dictionary_get_uint64(value, "kCBMsgArgAntennaImbalanceRssiThreshold_5G");
  xpc_dictionary_get_uint64(value, "kCBMsgArgNackRatioThresholdLevel1_high");
  xpc_dictionary_get_uint64(value, "kCBMsgArgNackRatioThresholdLevel1_low");
  xpc_dictionary_get_uint64(value, "kCBMsgArgNackRatioThresholdLevel2_high");
  xpc_dictionary_get_uint64(value, "kCBMsgArgNackRatioThresholdLevel2_low");
  xpc_dictionary_get_uint64(value, "kCBMsgArgNackRatioThresholdLevel3_high");
  v3 = xpc_dictionary_get_uint64(value, "kCBMsgArgNackRatioThresholdLevel3_low");
  v5 = sub_10000C7D0(v3, v4);
  v6 = (*(*v5 + 1584))(v5, uint64);
  if (v6 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_1008676A0();
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", v6);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_10071895C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgConnHandle");
  xpc_dictionary_get_uint64(value, "kCBMsgArgSetDefaultChainForCoreChainTx");
  xpc_dictionary_get_uint64(value, "kCBMsgArgSetDefaultChainForCoreChainRx");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgSetDefaultChainForCoreCoreIndex");
  v7 = *sub_10000C7D0(uint64, v6);
  v8 = (*(v7 + 1528))();
  if (v8 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100867710();
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", v8);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_100718AA8(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgEnable");
  if (xpc_dictionary_get_uint64(value, "kCBMsgArgTriggerType") - 1 <= 1)
  {
    xpc_dictionary_get_uint64(value, "kCBMsgArgSyncInterval");
    xpc_dictionary_get_uint64(value, "kCBMsgArgVseInterval");
  }

  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgConnHandle");
  v5 = *sub_10000C7D0(uint64, v4);
  if ((*(v5 + 1912))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100867780();
    }
  }
}

void sub_100718BE4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgAntenna");
  xpc_dictionary_get_uint64(value, "kCBMsgArgBand");
  xpc_dictionary_get_uint64(value, "kCBMsgArgModulation");
  xpc_dictionary_get_uint64(value, "kCBMsgArglpMax");
  xpc_dictionary_get_uint64(value, "kCBMsgArglpStep");
  xpc_dictionary_get_uint64(value, "kCBMsgArghpMax");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArghpStep");
  v7 = *sub_10000C7D0(uint64, v6);
  v8 = (*(v7 + 1600))();
  if (v8 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_1008677F0();
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", v8);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_100718D88(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgControlAutoConnectionTaggingEnable");
  v7 = *sub_10000C7D0(uint64, v6);
  v8 = (*(v7 + 1616))();
  if (v8 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100867860();
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", v8);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_100718E80(uint64_t a1, xpc_object_t xdict)
{
  *(value + 5) = 0;
  value[0] = 0;
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgGetConnectionTaggingInfoHandle");
  v6 = uint64;
  v8 = *sub_10000C7D0(uint64, v7);
  v9 = (*(v8 + 1624))();
  if (v9 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_1008678D0();
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v11 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v9);
    xpc_dictionary_set_uint64(v11, "kCBMsgArgGetConnectionTaggingInfoHandle", v6);
    xpc_dictionary_set_uint64(v11, "kCBMsgArgGetConnectionTaggingInfoDeviceType", LOWORD(value[0]));
    xpc_dictionary_set_uint64(v11, "kCBMsgArgGetConnectionTaggingInfo DLTrafficType", BYTE2(value[0]));
    xpc_dictionary_set_uint64(v11, "kCBMsgArgGetConnectionTaggingInfoULTrafficType", BYTE3(value[0]));
    xpc_dictionary_set_uint64(v11, "kCBMsgArgGetConnectionTaggingInfoLatency", BYTE4(value[0]));
    xpc_dictionary_set_uint64(v11, "kCBMsgArgGetConnectionTaggingInfoDLThroughput", *(value + 5));
    xpc_dictionary_set_uint64(v11, "kCBMsgArgGetConnectionTaggingInfoULThroughput", *(&value[1] + 1));
    xpc_connection_send_message(*(*(a1 + 72) + 16), v11);
    xpc_release(v11);
  }
}

void sub_100719020(uint64_t a1, void *a2)
{
  v21 = 0;
  value = 0;
  v19 = 0;
  v4 = *sub_10000C7D0(a1, a2);
  if ((*(v4 + 2936))())
  {
    v5 = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(v5, "kCBMsgArgAction");
    v8 = uint64;
    if (uint64)
    {
      v9 = xpc_dictionary_get_uint64(v5, "kCBMsgArgCountryCode2G");
      v10 = xpc_dictionary_get_uint64(v5, "kCBMsgArgLeFlag");
      v11 = xpc_dictionary_get_uint64(v5, "kCBMsgArgCountryCodeUNII1");
      v12 = xpc_dictionary_get_uint64(v5, "kCBMsgArgCountryCodeUNII3");
      uint64 = xpc_dictionary_get_uint64(v5, "kCBMsgArgCountryCodeUNII5");
      v13 = uint64;
    }

    else
    {
      v13 = 0;
      v12 = 0;
      v11 = 0;
      v10 = 0;
      v9 = 0;
    }

    v15 = sub_10000C7D0(uint64, v7);
    HIBYTE(v18) = v13;
    LOBYTE(v18) = v13;
    LODWORD(v14) = (*(*v15 + 576))(v15, v8, v9, v10, v11, v12, v13, v13, v18, &v19, &value);
    if (v14 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086797C();
    }

    v14 = v14;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100867940();
    }

    v14 = 1;
  }

  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v17 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v14);
    xpc_dictionary_set_uint64(v17, "kCBMsgArgCountryCode2G", value);
    xpc_dictionary_set_uint64(v17, "kCBMsgArgLeFlag", BYTE1(value));
    xpc_dictionary_set_uint64(v17, "kCBMsgArgCountryCodeUNII1", BYTE2(value));
    xpc_dictionary_set_uint64(v17, "kCBMsgArgCountryCodeUNII3", BYTE4(value));
    xpc_dictionary_set_uint64(v17, "kCBMsgArgCountryCodeUNII5", BYTE6(value));
    xpc_connection_send_message(*(*(a1 + 72) + 16), v17);
    xpc_release(v17);
  }
}

void sub_1007192E8(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v3 = [[NSString alloc] initWithCString:xpc_dictionary_get_string(value encoding:{"kCBMsgArgCountryString"), 4}];
  v4 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    sub_1008679EC();
  }

  v6 = sub_1004327A0(v4, v5);
  (*(*v6 + 64))(v6, v3);
}

void sub_1007193AC(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v3 = xpc_dictionary_get_BOOL(value, "kCBMsgArgCellularTransmitState");
  v5 = *sub_10000C7D0(v3, v4);
  if ((*(v5 + 560))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100867A60();
    }
  }
}

void sub_100719460(uint64_t a1, xpc_object_t xdict)
{
  memset(v37, 0, 55);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *objects = 0u;
  v13 = 0u;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgFactoryCalTableType");
  v7 = *sub_10000C7D0(uint64, v6);
  if ((*(v7 + 584))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100867AD0();
    }
  }

  else
  {
    reply = xpc_dictionary_create_reply(xdict);
    if (reply)
    {
      v9 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", v37[3]);
      xpc_dictionary_set_int64(v9, "kCBMsgArgFactoryCalTableType", v37[4]);
      for (i = 0; i != 50; ++i)
      {
        objects[i] = xpc_int64_create(v37[i]);
      }

      v11 = xpc_array_create(objects, 0x32uLL);
      xpc_dictionary_set_value(v9, "kCBMsgArgFactoryCalTable", v11);
      xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
      xpc_release(v9);
    }
  }
}

void sub_100719664(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = xpc_dictionary_get_BOOL(value, "kCBMsgArgDisableTpc");
  v7 = *sub_10000C7D0(v5, v6);
  v8 = (*(v7 + 312))();
  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", v8);
  xpc_connection_send_message(*(*(a1 + 72) + 16), reply);

  xpc_release(reply);
}

void sub_100719734(int a1, xpc_object_t xdict)
{
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 1;
  v20 = 1;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v3 = sub_100013C04(value, "kCBMsgArgCountryCode");
  v5 = sub_1004327A0(v3, v4);
  (*(*v5 + 8))(v5, v3, &v22, &v21, &v20);
  if (!sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgBTAddr"))
  {
    v17 = 0;
    v18 = v23;
    v19 = v24;
    v16 = 0;
    sub_1000216B4(&v16);
    v12 = sub_1000E5EA8(&v17);
    v14 = v12;
    if (v12)
    {
      v15 = sub_10000C7D0(v12, v13);
      if ((*(*v15 + 952))(v15, v14, v21) && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100867B40();
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008673AC();
    }

    sub_10002249C(&v16);
  }
}

void sub_100719900(int a1, xpc_object_t object)
{
  v3 = qword_100BCEB08;
  if (!qword_100BCEB08)
  {
    goto LABEL_8;
  }

  v4 = &qword_100BCEB08;
  do
  {
    if (*(v3 + 32) >= 23)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < 23));
  }

  while (v3);
  if (v4 != &qword_100BCEB08 && *(v4 + 8) <= 23)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100867BB0();
    }
  }

  else
  {
LABEL_8:
    v5 = xpc_retain(object);
    *buf = 23;
    v22 = buf;
    sub_100724D48(&qword_100BCEB00, buf, &unk_1008A9BD0, &v22)[5] = v5;
    v22 = 0;
    value = xpc_dictionary_get_value(object, "kCBMsgArgs");
    if (!sub_100013CA4(value, 1, v7, v8, v9, v10, v11, v12, "kCBMsgArgRxChannel"))
    {
      sub_1000031B0();
      v19 = sub_10024E164(sub_100723734, v22, v13, v14, v15, v16, v17, v18);
      sub_10000C198();
      v20 = qword_100BCE950;
      if (v19)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100867BEC();
        }
      }

      else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Response to XPC HCI_StartRxTest registered successfully", buf, 2u);
      }
    }
  }
}

void sub_100719AA4(int a1, xpc_object_t object)
{
  v3 = qword_100BCEB08;
  if (!qword_100BCEB08)
  {
    goto LABEL_8;
  }

  v4 = &qword_100BCEB08;
  do
  {
    if (*(v3 + 32) >= 24)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < 24));
  }

  while (v3);
  if (v4 != &qword_100BCEB08 && *(v4 + 8) <= 24)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100867C5C();
    }
  }

  else
  {
LABEL_8:
    v5 = xpc_retain(object);
    LODWORD(v21) = 24;
    v22 = &v21;
    sub_100724D48(&qword_100BCEB00, &v21, &unk_1008A9BD0, &v22)[5] = v5;
    v21 = 0;
    v22 = 0;
    v20 = 0;
    value = xpc_dictionary_get_value(object, "kCBMsgArgs");
    if (!sub_100013CA4(value, 1, v7, v8, v9, v10, v11, v12, "kCBMsgArgTxChannel"))
    {
      sub_1000031B0();
      v17 = sub_10024E194(sub_100723818, v22, v21, v20, v13, v14, v15, v16);
      sub_10000C198();
      v18 = qword_100BCE950;
      if (v17)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100867C98();
        }
      }

      else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Response to XPC HCI_StartTxTest registered successfully", buf, 2u);
      }
    }
  }
}

void sub_100719C7C(int a1, xpc_object_t object)
{
  v2 = qword_100BCEB08;
  if (!qword_100BCEB08)
  {
    goto LABEL_8;
  }

  v3 = &qword_100BCEB08;
  do
  {
    if (*(v2 + 32) >= 25)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < 25));
  }

  while (v2);
  if (v3 != &qword_100BCEB08 && *(v3 + 8) <= 25)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100867D08();
    }
  }

  else
  {
LABEL_8:
    v4 = xpc_retain(object);
    v14 = 25;
    v15 = &v14;
    sub_100724D48(&qword_100BCEB00, &v14, &unk_1008A9BD0, &v15)[5] = v4;
    sub_1000031B0();
    v11 = sub_100018960(191, sub_1007238FC, v5, v6, v7, v8, v9, v10, v13);
    sub_10000C198();
    v12 = qword_100BCE950;
    if (v11)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100867D44();
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Response to XPC HCI_LeTestEnd registered successfully", &v13, 2u);
    }
  }
}

void sub_100719DD8(int a1, xpc_object_t object)
{
  v3 = qword_100BCEB08;
  if (!qword_100BCEB08)
  {
    goto LABEL_8;
  }

  v4 = &qword_100BCEB08;
  do
  {
    if (*(v3 + 32) >= 26)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < 26));
  }

  while (v3);
  if (v4 != &qword_100BCEB08 && *(v4 + 8) <= 26)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100867DB4();
    }
  }

  else
  {
LABEL_8:
    v5 = xpc_retain(object);
    LODWORD(v21) = 26;
    v22 = &v21;
    sub_100724D48(&qword_100BCEB00, &v21, &unk_1008A9BD0, &v22)[5] = v5;
    v21 = 0;
    v22 = 0;
    v20 = 0;
    value = xpc_dictionary_get_value(object, "kCBMsgArgs");
    if (!sub_100013CA4(value, 1, v7, v8, v9, v10, v11, v12, "kCBMsgArgRxChannel"))
    {
      sub_1000031B0();
      v17 = sub_10024E1C8(sub_100723A00, v22, v21, v20, v13, v14, v15, v16);
      sub_10000C198();
      v18 = qword_100BCE950;
      if (v17)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100867DF0();
        }
      }

      else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Response to XPC HCI_StartRxEnhancedTest registered successfully", buf, 2u);
      }
    }
  }
}

void sub_100719FB0(int a1, xpc_object_t object)
{
  v3 = qword_100BCEB08;
  if (!qword_100BCEB08)
  {
    goto LABEL_8;
  }

  v4 = &qword_100BCEB08;
  do
  {
    if (*(v3 + 32) >= 27)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < 27));
  }

  while (v3);
  if (v4 != &qword_100BCEB08 && *(v4 + 8) <= 27)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100867E60();
    }
  }

  else
  {
LABEL_8:
    v5 = xpc_retain(object);
    LODWORD(v21) = 27;
    v22 = &v21;
    sub_100724D48(&qword_100BCEB00, &v21, &unk_1008A9BD0, &v22)[5] = v5;
    v21 = 0;
    v22 = 0;
    v19 = 0;
    v20 = 0;
    value = xpc_dictionary_get_value(object, "kCBMsgArgs");
    if (!sub_100013CA4(value, 1, v7, v8, v9, v10, v11, v12, "kCBMsgArgTxChannel"))
    {
      sub_1000031B0();
      v16 = sub_10024E1FC(sub_100723AE4, v22, v21, v20, v19, v13, v14, v15);
      sub_10000C198();
      v17 = qword_100BCE950;
      if (v16)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100867E9C();
        }
      }

      else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Response to XPC HCI_StartTxEnhancedTest registered successfully", buf, 2u);
      }
    }
  }
}

void sub_10071A1A0(uint64_t a1, xpc_object_t xdict)
{
  *&value[1] = 0;
  value[0] = 1;
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_100013C04(v4, "kCBMsgArgCountryCode");
  v6 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    sub_100867F0C();
  }

  v8 = sub_1004327A0(v6, v7);
  (*(*v8 + 8))(v8, v5, &value[2], &value[1], value);
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100867F80();
  }

  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", 0);
  xpc_dictionary_set_int64(reply, "kCBMsgArgCountryCode", value[2]);
  xpc_dictionary_set_int64(reply, "kCBMsgArgLeFlag", value[1]);
  xpc_dictionary_set_int64(reply, "kCBMsgArgHDRFlag", value[0]);
  xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
  xpc_release(reply);
}

void sub_10071A320(uint64_t a1, void *a2)
{
  value_1 = -1;
  value = -1;
  v4 = *sub_10000C7D0(a1, a2);
  if ((*(v4 + 1944))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868004();
    }
  }

  else
  {
    reply = xpc_dictionary_create_reply(a2);
    if (reply)
    {
      v6 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgEpaGpioEnabled", HIBYTE(value_1));
      xpc_dictionary_set_int64(v6, "kCBMsgArgEpaGpioNum", value_1);
      xpc_dictionary_set_int64(v6, "kCBMsgArgEpaGpioState", value);
      xpc_connection_send_message(*(*(a1 + 72) + 16), v6);
      xpc_release(v6);
    }
  }
}

void sub_10071A444(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v3 = xpc_dictionary_get_BOOL(value, "kCBMsgArgSARHeadState");
  v5 = sub_10000C7D0(v3, v4);
  if ((*(*v5 + 72))(v5, 1, v3))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868074();
    }
  }
}

void sub_10071A4E4(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v3 = xpc_dictionary_get_BOOL(value, "kCBMsgArgWiFi5GState");
  v5 = *sub_10000C7D0(v3, v4);
  if ((*(v5 + 1968))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008680E4();
    }
  }
}

void sub_10071A59C(uint64_t a1, xpc_object_t xdict)
{
  v11 = 0;
  *&length[1] = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgConnHandle");
  v7 = *sub_10000C7D0(uint64, v6);
  if (!(*(v7 + 1984))())
  {
    reply = xpc_dictionary_create_reply(xdict);
    if (reply)
    {
      v9 = reply;
      xpc_dictionary_set_data(reply, "kCBMsgArgData", &length[1], 0);
      xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
      xpc_release(v9);
    }
  }
}

void sub_10071A6B4(uint64_t a1, xpc_object_t xdict)
{
  memset(&length[1], 0, 256);
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (value)
  {
    v5 = value;
    xpc_dictionary_get_uint64(value, "kCBMsgArgConnHandle");
    uint64 = xpc_dictionary_get_uint64(v5, "kCBMsgArgVersion");
    v8 = *sub_10000C7D0(uint64, v7);
    if (!(*(v8 + 1992))())
    {
      reply = xpc_dictionary_create_reply(xdict);
      if (reply)
      {
        v10 = reply;
        xpc_dictionary_set_data(reply, "kCBMsgArgData", &length[1], 0);
        xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
        xpc_release(v10);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100868154();
  }
}

void sub_10071A840(uint64_t a1, xpc_object_t xdict)
{
  memset(&length[1], 0, 256);
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (value)
  {
    v5 = value;
    xpc_dictionary_get_uint64(value, "kCBMsgArgConnHandle");
    uint64 = xpc_dictionary_get_uint64(v5, "kCBMsgArgAdvInstance");
    v8 = *sub_10000C7D0(uint64, v7);
    v9 = (*(v8 + 1992))();
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868154();
    }

    v9 = 3;
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v11 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v9);
    xpc_dictionary_set_data(v11, "kCBMsgArgData", &length[1], 0);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v11);
    xpc_release(v11);
  }
}

void sub_10071A9E4(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (value)
  {
    v3 = value;
    xpc_dictionary_get_uint64(value, "kCBMsgArgBtSyncOperation");
    xpc_dictionary_get_uint64(v3, "kCBMsgArgBtSyncCompensation");
    uint64 = xpc_dictionary_get_uint64(v3, "kCBMsgArgBtSyncEdge");
    v6 = *sub_10000C7D0(uint64, v5);
    if (!(*(v6 + 2000))())
    {
      return;
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100868154();
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100868190();
  }
}

void sub_10071AAF8(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgCellularTransmitAntenna");
  v5 = *sub_10000C7D0(uint64, v4);
  if ((*(v5 + 2024))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008681CC();
    }
  }
}

void sub_10071ABA8(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgConnHandle");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgCurrProposedAntenna");
  v7 = sub_10000C7D0(uint64, v6);
  v9 = *(*sub_10000C7D0(v7, v8) + 896);
  if (v9())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868208();
    }
  }
}

void sub_10071ACEC(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v3 = xpc_dictionary_get_BOOL(value, "kCBMsgArgTunablesReadEnable");
  v5 = *sub_10000C7D0(v3, v4);
  if ((*(v5 + 2176))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868284();
    }
  }
}

void sub_10071AD94(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgConnHandle");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgCurrDiversityAntenna");
  v7 = *sub_10000C7D0(uint64, v6);
  if ((*(v7 + 896))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008682C0();
    }
  }
}

void sub_10071AE88(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAdvBufMatchHandle");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v5, "kCBMsgArgConfigMask");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v6, "kCBMsgArgAdvBufMatchAdvType");
  v7 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v8 = xpc_dictionary_get_uint64(v7, "kCBMsgArgPayloadSize");
  v10 = sub_10000C7D0(v8, v9);
  if ((*(*v10 + 3344))(v10, uint64))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086833C();
    }
  }
}

void sub_10071AFE0(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgAdvBufMatchHandle");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v4, "kCBMsgArgAdvBufEnable");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v5, "kCBMsgArgAdvBufPause");
  v8 = *sub_10000C7D0(uint64, v7);
  if ((*(v8 + 3408))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008683AC();
    }
  }
}

void sub_10071B0E0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAdvBufMatchHandle");
  v7 = *sub_10000C7D0(uint64, v6);
  if ((*(v7 + 3376))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086841C();
    }
  }

  else
  {
    reply = xpc_dictionary_create_reply(xdict);
    if (reply)
    {
      v9 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgAdvBufNumEntries", 255);
      xpc_dictionary_set_int64(v9, "kCBMsgArgAdvBufStatusMask", 255);
      xpc_dictionary_set_int64(v9, "kCBMsgArgAdvBufNumOverflows", 0xFFFFLL);
      xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
      xpc_release(v9);
    }
  }
}

void sub_10071B228(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAdvBufMatchHandle");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v6 = xpc_dictionary_get_uint64(v5, "kCBMsgArgConfigMask");
  v7 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v8 = xpc_dictionary_get_uint64(v7, "kCBMsgArgAdvBufMatchAdvType");
  v9 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v9, "kCBMsgArgPayloadSize");
  v10 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v10, "kCBMsgArgAdvBufNumEntries");
  v11 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_int64(v11, "kCBMsgArgAdvBufRSSIThreshold");
  v12 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v12, "kCBMsgArgAdvBufDupNumEntries");
  v13 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v14 = xpc_dictionary_get_uint64(v13, "kCBMsgArgAdvBufDupClearTimeoutSeconds");
  v16 = sub_10000C7D0(v14, v15);
  if ((*(*v16 + 3384))(v16, uint64, v6, 255, 76, v8))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086848C();
    }
  }
}

void sub_10071B400(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgAdvBufMatchHandle");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v4, "kCBMsgArgConfigMask");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_int64(v5, "kCBMsgArgAdvBufRSSIThreshold");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v6, "kCBMsgArgAdvBufDupNumEntries");
  v7 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v7, "kCBMsgArgAdvBufDupClearTimeoutSeconds");
  v10 = *sub_10000C7D0(uint64, v9);
  if ((*(v10 + 3392))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008684FC();
    }
  }
}

void sub_10071B548(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAdvBufMatchHandle");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v6 = xpc_dictionary_get_uint64(v5, "kCBMsgArgStartEntry");
  v7 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v8 = xpc_dictionary_get_uint64(v7, "kCBMsgArgEndEntry");
  v9 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v10 = xpc_dictionary_get_uint64(v9, "kCBMsgArgAdvBufEnable");
  memset(v29, 0, sizeof(v29));
  v28 = 0u;
  v11 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v18 = sub_100013CA4(v11, 1, v12, v13, v14, v15, v16, v17, "kCBMsgArgBTAddr");
  if (v18)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086856C();
    }
  }

  else
  {
    v20 = v8 - v6;
    if (v8 < v6 || v8 - v6 - 14 <= 0xFFFFFFF0)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10086864C();
      }
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = v10;
      v26 = 0x12554433221100;
      v27 = 0;
      if (v20 >= 1)
      {
        v21 = v29;
        do
        {
          *(v21 - 4) = -573785174;
          *(v21 - 6) = -18;
          *(v21 - 10) = v10;
          *(v21 - 9) = 0x12554433221100;
          *(v21 - 1) = 0;
          v21 += 17;
          --v20;
        }

        while (v20);
      }

      v22 = sub_10000C7D0(v18, v19);
      if ((*(*v22 + 3432))(v22, uint64, v6, v8, &v23) && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008685DC();
      }
    }
  }
}

void sub_10071B7D0(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgAdvBufMatchHandle");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v4, "kCBMsgArgConfigMask");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v5, "kCBMsgArgPayloadSize");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v6, "kCBMsgArgAdvBufNumEntries");
  v9 = *sub_10000C7D0(uint64, v8);
  if ((*(v9 + 3440))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008686C8();
    }
  }
}

void sub_10071B8FC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAdvBufMatchHandle");
  v7 = *sub_10000C7D0(uint64, v6);
  if (!(*(v7 + 3448))())
  {
    reply = xpc_dictionary_create_reply(xdict);
    if (reply)
    {
      v9 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgAdvBufNumEntries", 255);
      xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
      xpc_release(v9);
    }
  }
}

void sub_10071B9D8(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgSPMIDiagSubOpcode");
  v5 = *sub_10000C7D0(uint64, v4);
  if ((*(v5 + 3456))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868738();
    }
  }
}

void sub_10071BA8C(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgAdvBufMatchHandle");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAdvBufEnable");
  v7 = *sub_10000C7D0(uint64, v6);
  if ((*(v7 + 3464))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008687A8();
    }
  }
}

void sub_10071BB70(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgAdvBufMatchHandle");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgAdvBufEnable");
  v7 = *sub_10000C7D0(uint64, v6);
  if ((*(v7 + 3472))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868818();
    }
  }
}

void sub_10071BC54(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAdvBufMatchHandle");
  v7 = *sub_10000C7D0(uint64, v6);
  if ((*(v7 + 3480))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868888();
    }
  }

  else
  {
    reply = xpc_dictionary_create_reply(xdict);
    if (reply)
    {
      v9 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgStartInstant", 43690);
      xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
      xpc_release(v9);
    }
  }
}

void sub_10071BD64(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAdvBufMatchHandle");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v5, "kCBMsgArgStartInstant");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v6, "kCBMsgArgModValue");
  v7 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v7, "kCBMsgArgAdvBufEnable");
  v8 = sub_1000ABB80(uint64);
  v10 = *sub_10000C7D0(v8, v9);
  if ((*(v10 + 3488))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A0E8();
    }
  }
}

void sub_10071BE9C(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAdvBufEnable");
  v5 = *sub_10000C7D0(uint64, v4);
  if ((*(v5 + 3496))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008688F8();
    }
  }
}

void sub_10071BF50(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgGenericGPIOPinNum");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v4, "kCBMsgArgGenericGPIOControl");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v5, "kCBMsgArgGenericGPIOState");
  v8 = *sub_10000C7D0(uint64, v7);
  if ((*(v8 + 3552))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868968();
    }
  }
}

void sub_10071C054(uint64_t a1, xpc_object_t xdict)
{
  v15 = 0;
  v14 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgBTAddr"))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008671BC();
    }
  }

  else
  {
    v11 = sub_1000E1FE8(&v14);
    if (v11)
    {
      v12 = *v11;
    }

    else
    {
      v12 = 0;
    }

    reply = xpc_dictionary_create_reply(xdict);
    xpc_dictionary_set_int64(reply, "kCBMsgArgACLConnHandle", v12);
    xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
    xpc_release(reply);
  }
}

void sub_10071C140(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgHDRSyncConnHandle");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v4, "kCBMsgArgHDRSyncConnTxBw");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v5, "kCBMsgArgHDRSyncConnRxBw");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v6, "kCBMsgArgHDRSyncConnMaxLatency");
  v7 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v7, "kCBMsgArgHDRSyncConnVoiceSettting");
  v8 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v8, "kCBMsgArgHDRSyncConnRetxEffort");
  v9 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v9, "kCBMsgArgHDRSyncConnPacketType");
  v12 = sub_10000C7D0(uint64, v11);
  if ((*(*v12 + 1392))(v12))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008689D8();
    }
  }
}

void sub_10071C2E0(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v22 = 0;
  v21 = 0;
  if (!sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgBTAddr"))
  {
    v10 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(v10, "kCBMsgArgHDRSyncConnTxBw");
    v12 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v13 = xpc_dictionary_get_uint64(v12, "kCBMsgArgHDRSyncConnRxBw");
    v14 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v14, "kCBMsgArgHDRSyncConnMaxLatency");
    v15 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v15, "kCBMsgArgHDRSyncConnVoiceSettting");
    v16 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v16, "kCBMsgArgHDRSyncConnRetxEffort");
    v17 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v18 = xpc_dictionary_get_uint64(v17, "kCBMsgArgHDRSyncConnPacketType");
    v20 = sub_10000C7D0(v18, v19);
    if ((*(*v20 + 1400))(v20, &v21, uint64, v13))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100868A48();
      }
    }
  }
}

void sub_10071C4A8(uint64_t a1, void *a2)
{
  v3 = sub_10000C7D0(a1, a2);
  if ((*(*v3 + 3016))(v3))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    xpc_dictionary_get_uint64(value, "kCBMsgArgSCOControlFormat");
    v5 = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v5, "kCBMsgArgSCOControlBufferSize");
    v6 = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(v6, "kCBMsgArgSCOControlNumBuffer");
    v9 = *sub_10000C7D0(uint64, v8);
    if ((*(v9 + 1408))())
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100868AF4();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100868AB8();
  }
}

void sub_10071C608(uint64_t a1, void *a2)
{
  v4 = sub_10000C7D0(a1, a2);
  if ((*(*v4 + 2872))(v4))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgHRBEnable");
    v7 = uint64;
    v9 = *sub_10000C7D0(uint64, v8);
    v10 = (*(v9 + 1688))();
    if (v10)
    {
      LODWORD(v11) = v10;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100868BA0();
      }

      v11 = v11;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868B64();
    }

    v7 = 0;
    v11 = 1;
  }

  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v13 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v11);
    xpc_dictionary_set_uint64(v13, "kCBMsgArgHRBEnable", v7);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v13);
    xpc_release(v13);
  }
}

void sub_10071C794(uint64_t a1, void *a2)
{
  v4 = sub_10000C7D0(a1, a2);
  if ((*(*v4 + 2872))(v4))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgHRBBands");
    v7 = uint64;
    v9 = *sub_10000C7D0(uint64, v8);
    v10 = (*(v9 + 1696))();
    if (v10)
    {
      LODWORD(v11) = v10;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100868C10();
      }

      v11 = v11;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868B64();
    }

    v7 = 0;
    v11 = 1;
  }

  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v13 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v11);
    xpc_dictionary_set_uint64(v13, "kCBMsgArgHRBBands", v7);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v13);
    xpc_release(v13);
  }
}

void sub_10071C920(uint64_t a1, void *a2)
{
  v4 = sub_10000C7D0(a1, a2);
  if ((*(*v4 + 2872))(v4))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgHRBBands");
    v7 = uint64;
    v9 = *sub_10000C7D0(uint64, v8);
    v10 = (*(v9 + 1704))();
    if (v10)
    {
      LODWORD(v11) = v10;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100868C10();
      }

      v11 = v11;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868B64();
    }

    v7 = 0;
    v11 = 1;
  }

  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v13 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v11);
    xpc_dictionary_set_uint64(v13, "kCBMsgArgHRBBands", v7);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v13);
    xpc_release(v13);
  }
}

void sub_10071CAAC(uint64_t a1, void *a2)
{
  v4 = sub_10000C7D0(a1, a2);
  if ((*(*v4 + 2872))(v4))
  {
    v22 = 0;
    v21 = 0;
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    v12 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgBTAddr");
    if (v12)
    {
      LODWORD(v13) = v12;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008671BC();
      }

      v14 = 0;
    }

    else
    {
      if (sub_1000E1FE8(&v21))
      {
        v15 = xpc_dictionary_get_value(a2, "kCBMsgArgs");
        uint64 = xpc_dictionary_get_uint64(v15, "kCBMsgArgHRBBand");
        LOBYTE(v14) = uint64;
        v18 = *sub_10000C7D0(uint64, v17);
        LODWORD(v13) = (*(v18 + 1720))();
        if (v13 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100868C80();
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100868CF0();
        }

        LOBYTE(v14) = 0;
        LODWORD(v13) = 0;
      }

      v14 = v14;
    }

    v13 = v13;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868B64();
    }

    v14 = 0;
    v13 = 1;
  }

  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v20 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v13);
    xpc_dictionary_set_uint64(v20, "kCBMsgArgHRBBand", v14);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v20);
    xpc_release(v20);
  }
}

void sub_10071CCF8(uint64_t a1, void *a2)
{
  v3 = sub_10000C7D0(a1, a2);
  if ((*(*v3 + 2872))(v3))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    xpc_dictionary_get_uint64(value, "kCBMsgArgHRBEnable");
    v5 = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(v5, "kCBMsgArgHRBBands");
    v8 = *sub_10000C7D0(uint64, v7);
    if ((*(v8 + 1736))())
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100868D2C();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100868B64();
  }
}

void sub_10071CE38(uint64_t a1, void *a2)
{
  v3 = sub_10000C7D0(a1, a2);
  if ((*(*v3 + 2872))(v3))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    xpc_dictionary_get_uint64(value, "kCBMsgArgHRBScanInterval");
    v5 = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(v5, "kCBMsgArgHRBScanWindow");
    v8 = *sub_10000C7D0(uint64, v7);
    if ((*(v8 + 1744))())
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100868D9C();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100868B64();
  }
}

void sub_10071CF78(uint64_t a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  v6 = sub_10000C7D0(reply, v5);
  if ((*(*v6 + 2872))(v6))
  {
    value = xpc_dictionary_get_value(original, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgHRBNumOfGroups");
    if (uint64 - 4 <= 0xFFFFFFFC)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100868FF0();
      }

      v9 = reply;
      v10 = 3;
      goto LABEL_24;
    }

    length = 0;
    v11 = xpc_dictionary_get_value(original, "kCBMsgArgs");
    data = xpc_dictionary_get_data(v11, "kCBMsgArgHRBStartGroupFrequency", &length);
    v13 = length;
    if (length == 2 * uint64)
    {
      v14 = data;
      v15 = xpc_dictionary_get_value(original, "kCBMsgArgs");
      v16 = xpc_dictionary_get_data(v15, "kCBMsgArgHRBSizeGroupChannelMap", &length);
      if (length == v13)
      {
        v17 = v16;
        v18 = xpc_dictionary_get_value(original, "kCBMsgArgs");
        v19 = xpc_dictionary_get_data(v18, "kCBMsgArgHRBChannelMap", &length);
        if (length == 63 * uint64)
        {
          v21 = v19;
          v22 = sub_10000C7D0(v19, v20);
          v23 = (*(*v22 + 1752))(v22, uint64, v14, v17, v21, 1);
          if (v23 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            sub_100868F80();
          }

          v10 = v23;
          goto LABEL_23;
        }

        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100868F04();
        }
      }

      else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100868E88();
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868E0C();
    }

    v10 = 3;
LABEL_23:
    v9 = reply;
    goto LABEL_24;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100868B64();
  }

  v9 = reply;
  v10 = 11;
LABEL_24:
  xpc_dictionary_set_int64(v9, "kCBMsgArgStatus", v10);
  xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
  xpc_release(reply);
}

void sub_10071D28C(uint64_t a1, xpc_object_t xdict)
{
  v19 = 0;
  v18 = 0;
  bytes = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgPowerDatabaseVscVersion");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v22 = xpc_dictionary_get_uint64(v5, "kCBMsgArgPowerDatabaseAntenna");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v21 = xpc_dictionary_get_uint64(v6, "kCBMsgArgPowerDatabasePCap");
  v7 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v8 = xpc_dictionary_get_uint64(v7, "kCBMsgArgPowerDatabaseBandCode");
  v20 = v8;
  v10 = sub_10000C7D0(v8, v9);
  if ((*(*v10 + 1760))(v10, &uint64) && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100869070();
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgPowerDatabaseVscVersion", uint64);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgPowerDatabaseCountryCode", v19);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgPowerDatabaseAntenna", v22);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgPowerDatabasePCap", v21);
    if (uint64 - 1 <= 1)
    {
      xpc_dictionary_set_data(v12, "kCBMsgArgPowerDatabaseIpaMaxTxPwr", &bytes, 5uLL);
      xpc_dictionary_set_data(v12, "kCBMsgArgPowerDatabaseEpaMaxTxPwr", &v15, 5uLL);
      xpc_dictionary_set_data(v12, "kCBMsgArgPowerDatabaseIpaMaxPwrIdx", &v13, 5uLL);
      if (uint64 == 2)
      {
        xpc_dictionary_set_uint64(v12, "kCBMsgArgPowerDatabaseBandCode", v20);
      }
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }
}

void sub_10071D4DC(uint64_t a1, void *a2)
{
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v4 = *sub_10000C7D0(a1, a2);
  if ((*(v4 + 2872))())
  {
    v23 = 0;
    v22 = 0;
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    v12 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgBTAddr");
    if (v12)
    {
      LODWORD(v13) = v12;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008671BC();
      }
    }

    else
    {
      v16 = sub_1000E1FE8(&v22);
      if (v16)
      {
        v13 = *v16;
        v17 = xpc_dictionary_get_value(a2, "kCBMsgArgs");
        uint64 = xpc_dictionary_get_uint64(v17, "kCBMsgArgHRBReadTxPwrType");
        v19 = uint64;
        v21 = sub_10000C7D0(uint64, v20);
        LODWORD(v13) = (*(*v21 + 1768))(v21, v13, v19, 1, &v29, &v28 + 1, &v28);
        if (v13 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_1008690E0();
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100868CF0();
        }

        LODWORD(v13) = 0;
      }
    }

    v13 = v13;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868B64();
    }

    v13 = 1;
  }

  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v15 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgConnHandle", v29);
    xpc_dictionary_set_int64(v15, "kCBMsgArgStatus", v13);
    xpc_dictionary_set_int64(v15, "kCBMsgArgHRBTxPower2GBr", SHIBYTE(v28));
    xpc_dictionary_set_int64(v15, "kCBMsgArgHRBTxPower2GEdr2", v28);
    xpc_dictionary_set_int64(v15, "kCBMsgArgHRBTxPower2GEdr3", SHIBYTE(v27));
    xpc_dictionary_set_int64(v15, "kCBMsgArgHRBTxPower2GHdr4", v27);
    xpc_dictionary_set_int64(v15, "kCBMsgArgHRBTxPower2GHdr8", SHIBYTE(v26));
    xpc_dictionary_set_int64(v15, "kCBMsgArgHRBTxPowerHRBBr", v26);
    xpc_dictionary_set_int64(v15, "kCBMsgArgHRBTxPowerHRBEdr2", SHIBYTE(v25));
    xpc_dictionary_set_int64(v15, "kCBMsgArgHRBTxPowerHRBEdr3", v25);
    xpc_dictionary_set_int64(v15, "kCBMsgArgHRBTxPowerHRBHdr4", SHIBYTE(v24));
    xpc_dictionary_set_int64(v15, "kCBMsgArgHRBTxPowerHRBHdr8", v24);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v15);
    xpc_release(v15);
  }
}

void sub_10071D838(uint64_t a1, void *a2)
{
  v30 = 0;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v4 = *sub_10000C7D0(a1, a2);
  if ((*(v4 + 2872))())
  {
    WORD2(v22[0]) = 0;
    LODWORD(v22[0]) = 0;
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    if (sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgBTAddr"))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008671BC();
      }
    }

    else
    {
      v12 = sub_1000E1FE8(v22);
      if (v12)
      {
        v14 = *v12;
        v15 = sub_10000C7D0(v12, v13);
        if ((*(*v15 + 1784))(v15, v14, &v29, v28, 1))
        {
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            sub_100869150();
          }
        }

        else
        {
          reply = xpc_dictionary_create_reply(a2);
          if (reply)
          {
            v17 = reply;
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            *objects = 0u;
            bzero(v22, 0x280uLL);
            xpc_dictionary_set_uint64(v17, "kCBMsgArgConnHandle", v14);
            xpc_dictionary_set_int64(v17, "kCBMsgArgStatus", 0);
            for (i = 0; i != 10; ++i)
            {
              objects[i] = xpc_int64_create(*(&v29 + i));
            }

            v19 = xpc_array_create(objects, 0xAuLL);
            xpc_dictionary_set_value(v17, "kCBMsgArgHRBAfhChannelMap", v19);
            for (j = 0; j != 80; ++j)
            {
              v22[j] = xpc_int64_create(*(v28 + j));
            }

            v21 = xpc_array_create(v22, 0x50uLL);
            xpc_dictionary_set_value(v17, "kCBMsgArgHRBAfhFreqMap", v21);
            xpc_connection_send_message(*(*(a1 + 72) + 16), v17);
            xpc_release(v17);
          }
        }
      }

      else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100868CF0();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100868B64();
  }
}

void sub_10071DB38(uint64_t a1, void *a2)
{
  v3 = sub_10000C7D0(a1, a2);
  if ((*(*v3 + 2872))(v3))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgHRBLimitChannelMap");
    v7 = *sub_10000C7D0(uint64, v6);
    if ((*(v7 + 1800))())
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008691C0();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100868B64();
  }
}

void sub_10071DC4C(uint64_t a1, void *a2)
{
  v3 = sub_10000C7D0(a1, a2);
  if ((*(*v3 + 2872))(v3))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgHRBBand");
    v5 = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    v14 = xpc_dictionary_get_uint64(v5, "kCBMsgArgHRBChannelMaskNumLow");
    v6 = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    v7 = xpc_dictionary_get_uint64(v6, "kCBMsgArgHRBChannelMaskNumHigh");
    v13 = v7;
    v9 = *sub_10000C7D0(v7, v8);
    LODWORD(v10) = (*(v9 + 1808))();
    if (v10 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086926C();
    }

    v10 = v10;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100869230();
    }

    v10 = 0;
  }

  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v10);
    xpc_release(v12);
  }
}

void sub_10071DDEC(int a1, xpc_object_t xdict)
{
  v35 = -1;
  v34 = -1;
  v33 = xmmword_1008C5110;
  v32 = 0;
  v31 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v10 = sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgBTAddr");
  if (v10)
  {
    v11 = v10;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008671BC();
    }
  }

  else
  {
    v12 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v12, "kCBMsgArgEnhTestEnable");
    v13 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(v13, "kCBMsgArgEnhTxTestHoppingMode");
    v15 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v15, "kCBMsgArgEnhTxTestBand");
    v16 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v30 = xpc_dictionary_get_uint64(v16, "kCBMsgArgEnhTxTestFrequency");
    v17 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v17, "kCBMsgArgEnhTxTestInterval");
    v18 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v18, "kCBMsgArgEnhTxTestNumberPacket");
    v19 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v19, "kCBMsgArgEnhTxTestModulationType");
    v20 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v20, "kCBMsgArgEnhTxTestLogicalChan");
    v21 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v21, "kCBMsgArgEnhTxTestPacketType");
    v22 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v22, "kCBMsgArgEnhTxTestPacketLen");
    v23 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v23, "kCBMsgArgEnhTxTestTxPowerLevel");
    v24 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v25 = xpc_dictionary_get_uint64(v24, "kCBMsgArgEnhTxTestTxPowerTableIdx");
    v27 = sub_10000C7D0(v25, v26);
    v11 = (*(*v27 + 1816))(v27, &v31, uint64, v30);
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v29 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v11);
    xpc_release(v29);
  }
}

void sub_10071E140(int a1, xpc_object_t xdict)
{
  v30 = 0;
  v29 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v10 = sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgBTAddr");
  if (v10)
  {
    v11 = v10;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008671BC();
    }
  }

  else
  {
    v12 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v12, "kCBMsgArgEnhTestEnable");
    v13 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(v13, "kCBMsgArgEnhRxTestReportPeriod");
    v14 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v15 = xpc_dictionary_get_uint64(v14, "kCBMsgArgEnhRxTestIs2G");
    v16 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v16, "kCBMsgArgEnhRxTestOffset");
    v17 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v17, "kCBMsgArgEnhRxTestFrequency");
    v18 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v18, "kCBMsgArgEnhRxTestModulationType");
    v19 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v19, "kCBMsgArgEnhRxTestLogicalChan");
    v20 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v20, "kCBMsgArgEnhRxTestBand");
    v21 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v21, "kCBMsgArgEnhRxTestPacketType");
    v22 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v23 = xpc_dictionary_get_uint64(v22, "kCBMsgArgEnhRxTestPacketLen");
    v25 = sub_10000C7D0(v23, v24);
    v11 = (*(*v25 + 1824))(v25, &v29, uint64, v15);
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v27 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v11);
    xpc_release(v27);
  }
}