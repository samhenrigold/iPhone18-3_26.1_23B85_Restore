void sub_1007329D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t (**a16)(), atomic_uint *a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  a16 = &off_100AE0A78;
  if (a17)
  {
    sub_10000C808(a17);
  }

  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  sub_10002249C(&a15);
  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void sub_100732BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10057C70C(a2, 1);
  *__p = 0u;
  v16 = 0u;
  sub_10057C6A8(__p, 0);
  sub_10057C6D0(__p, 1);
  sub_10057C6D0(__p, 4);
  sub_10057C75C(__p, *(a4 + 20));
  sub_10057C6D0(__p, 2);
  sub_10057C6D0(__p, 8);
  sub_10057C7AC(__p, 0);
  sub_10057C6D0(__p, 3);
  sub_10057C6D0(__p, 4);
  v14 = 0;
  v13 = 0;
  sub_1000216B4(&v13);
  sub_1002AB4B8(&v14);
  sub_10057C75C(__p, v14);
  sub_10057C6D0(__p, 4);
  sub_10057C6D0(__p, 8);
  __src = 0;
  sub_10028E064(&__src);
  sub_10057C6B8(__p, &__src, 8);
  sub_10000C704(&v11, __p[1], v16 - __p[1]);
  v6 = sub_10000C5E0(&v11);
  sub_10057C70C(a2, v6);
  v11 = &off_100AE0A78;
  if (v12)
  {
    sub_10000C808(v12);
  }

  sub_10000C704(&v11, __p[1], v16 - __p[1]);
  v7 = sub_10000C5F8(&v11);
  sub_10000C704(&v9, __p[1], v16 - __p[1]);
  v8 = sub_10000C5E0(&v9);
  sub_10057C6B8(a2, v7, v8);
  v9 = &off_100AE0A78;
  if (v10)
  {
    sub_10000C808(v10);
  }

  v11 = &off_100AE0A78;
  if (v12)
  {
    sub_10000C808(v12);
  }

  sub_10002249C(&v13);
  if (__p[1])
  {
    *&v16 = __p[1];
    operator delete(__p[1]);
  }
}

void sub_100732E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (a13)
  {
    sub_10000C808(a13);
  }

  sub_10002249C(&a16);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100732EE4(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109376;
    v7[1] = a3;
    v8 = 1024;
    v9 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Wrote %d bytes with result %d", v7, 0xEu);
  }
}

_BYTE *sub_100732FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (sub_10057C598(a3) != 1 && os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
  {
    sub_10086C2CC();
  }

  v43 = 0;
  sub_1000216B4(&v43);
  v42 = 0;
  v41 = 0;
  if (sub_1002AD958(v4, &v41))
  {
    sub_100022214(&v43);
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086C33C();
    }

    return sub_10002249C(&v43);
  }

  v6 = sub_1000E6A38(a1, &v41);
  v7 = *(v6 + 16);
  if (v7 >= 5 && os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_FAULT))
  {
    sub_10086C3B0(v7);
  }

  sub_100730C34(a1, v6, 5);
  v8 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(*v6, __p);
    v9 = (SBYTE7(v45) & 0x80u) == 0 ? __p : __p[0];
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Parsing Profile Descriptor for device %s", &buf, 0xCu);
    if (SBYTE7(v45) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v10 = sub_10057C598(a3);
  v11 = sub_1000E1FE8(&v41);
  if (v10)
  {
    v12 = v11;
    while (1)
    {
      v13 = sub_10057C548(a3);
      if (v13 < 0)
      {
        v14 = sub_10057C598(a3);
        v15 = 65533;
      }

      else
      {
        v14 = sub_10057C548(a3);
        v15 = 65534;
      }

      v16 = v13 & 0x7F;
      if (v16 <= 2)
      {
        break;
      }

      if (v16 != 3)
      {
        if (v16 == 4)
        {
          if (v14)
          {
            if (v14 != 8)
            {
              goto LABEL_42;
            }

            __p[0] = 0;
            sub_10057C50C(a3, __p, 8uLL);
            sub_100295954(sub_1002D7A34);
            sub_100291C84(&v41, 0, 3, __p, 8, 0);
            sub_1002958EC(sub_1002D7A34, 48);
          }

          goto LABEL_45;
        }

LABEL_32:
        v17 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__p[0]) = 67109120;
          HIDWORD(__p[0]) = v16;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "fastConnectParseProfileDescriptorMessage Key not recognized %d", __p, 8u);
          if (v14)
          {
LABEL_42:
            v18 = qword_100BCEAC0;
            if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
            {
              LODWORD(__p[0]) = 67109632;
              HIDWORD(__p[0]) = v16;
              LOWORD(__p[1]) = 1024;
              *(&__p[1] + 2) = v14;
              HIWORD(__p[1]) = 1024;
              LODWORD(v45) = v14;
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "fastConnectParseProfileDescriptorMessage Key:%d Dumped %d of %d bytes ", __p, 0x14u);
            }

            sub_10057C660(a3, v14);
            goto LABEL_45;
          }
        }

        else if (v14)
        {
          goto LABEL_42;
        }

        goto LABEL_45;
      }

      if (v14)
      {
        if (v14 != 4)
        {
          goto LABEL_42;
        }

        *(v12 + 229) = sub_10057C600(a3);
        *(v12 + 228) = 1;
      }

LABEL_45:
      v19 = v10 + v15;
      v10 = v10 + v15 - v14;
      if (v19 == v14)
      {
        goto LABEL_46;
      }
    }

    if (v16 == 1)
    {
      if (v14)
      {
        if (v14 != 4)
        {
          goto LABEL_42;
        }

        sub_10057C600(a3);
      }

      goto LABEL_45;
    }

    if (v16 == 2)
    {
      if (v14)
      {
        if (v14 != 8)
        {
          goto LABEL_42;
        }

        __p[0] = 0;
        sub_10057C50C(a3, __p, 8uLL);
      }

      goto LABEL_45;
    }

    goto LABEL_32;
  }

LABEL_46:
  sub_100022214(&v43);
  if (sub_10057C598(a3) != 2 && os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
  {
    sub_10086C42C();
  }

  v39 = v41;
  v40 = v42;
  if (qword_100B508F0 != -1)
  {
    sub_10086BF44();
  }

  v20 = sub_1000E6554(off_100B508E8, &v39, 1);
  v21 = 0;
  while ((sub_10000C5E0(a3 + 8) - *(a3 + 24)) >= 9)
  {
    v22 = sub_10057C600(a3);
    v23 = sub_10057C598(a3);
    if (sub_10000C5E0(a3 + 8) - *(a3 + 24) < v23)
    {
      v28 = qword_100BCEAC0;
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        v32 = sub_10000C5E0(a3 + 8) - *(a3 + 24);
        LODWORD(__p[0]) = 67109376;
        HIDWORD(__p[0]) = v23;
        LOWORD(__p[1]) = 1024;
        *(&__p[1] + 2) = v32;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "fastConnectParseProfileDescriptorMessage Length Error Descriptor length %u remaining %u", __p, 0xEu);
      }

      break;
    }

    v24 = v23;
    v25 = sub_100007618(v23, 0x68764FADuLL);
    if (!v25)
    {
      break;
    }

    sub_10057C50C(a3, v25, v24);
    buf = 0uLL;
    sub_10000C704(&buf, v25, v24);
    *__p = 0u;
    v45 = 0u;
    v26 = sub_10057C4B4(__p, 0, &buf);
    if (v22 <= 15)
    {
      if (v22 == 1)
      {
        if (qword_100B50AD0 != -1)
        {
          sub_10086C05C();
        }

        if (sub_1005E68C0(off_100B50AC8, __p, v20, *(v6 + 74), (v6 + 140), (v6 + 142), (v6 + 143), (v6 + 144)))
        {
          if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
          {
            sub_10086C504(&v35, v36);
          }

          *(v6 + 20) &= ~1u;
          if (qword_100B50AD0 != -1)
          {
            sub_10086C05C();
          }

          sub_1005E64C8(off_100B50AC8, *v6 + 128, (v6 + 74), (v6 + 140));
          if (*(v6 + 145) == 1)
          {
            sub_1000618AC(&v43);
            sub_100309078(*v6 + 128, *(v6 + 124));
            sub_100022214(&v43);
            *(v6 + 124) = 0;
          }
        }
      }

      else if (v22 == 8)
      {
        if (qword_100B541D0 != -1)
        {
          sub_10086C160();
        }

        sub_1006CD538(off_100B541C8, __p, v20, *(v6 + 94), *(v6 + 104));
      }
    }

    else
    {
      switch(v22)
      {
        case 0x10:
          if (qword_100B50AE0 != -1)
          {
            sub_10086BFF8();
          }

          if (sub_1004DFC48(qword_100B50AD8, __p, v20, *(v6 + 54), *(v6 + 64), (v6 + 136)))
          {
            if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
            {
              sub_10086C538(&v37, v38);
            }

            *(v6 + 20) &= ~0x10u;
            if (qword_100B50AE0 != -1)
            {
              sub_10086BFF8();
            }

            sub_1004E0FE4(qword_100B50AD8, v20, *(v6 + 54), *(v6 + 64), *(v6 + 136), *(v6 + 135));
          }

          else
          {
            if (qword_100B50AE0 != -1)
            {
              sub_10086BFF8();
            }

            sub_1004E08E4(qword_100B50AD8, *(v6 + 136), (v6 + 135), (v6 + 134), (v6 + 138), *(v6 + 64));
          }

          break;
        case 0x80000:
          if (qword_100B50950 != -1)
          {
            sub_10086C0FC();
          }

          if (sub_100358C64(off_100B50948, __p, v20, *(v6 + 84)))
          {
            if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
            {
              sub_10086C4D0(&v33, v34);
            }

            *(v6 + 20) &= ~0x80000u;
            if (qword_100B50950 != -1)
            {
              sub_10086C0FC();
            }

            sub_10035B49C(off_100B50948, *v6, *(v6 + 84), 114);
          }

          break;
        case 0x100000:
          sub_1007339FC(v26, __p, v27, *(v6 + 114));
          break;
      }
    }

    sub_10000C1E8(v25);
    __p[1] = &off_100AE0A78;
    if (v45)
    {
      sub_10000C808(v45);
    }

    *&buf = &off_100AE0A78;
    if (*(&buf + 1))
    {
      sub_10000C808(*(&buf + 1));
    }

    v21 |= v22;
  }

  v29 = *(v6 + 20);
  if (v29 != v21)
  {
    v30 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p[0]) = 67109376;
      HIDWORD(__p[0]) = v21;
      LOWORD(__p[1]) = 1024;
      *(&__p[1] + 2) = v29;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Profile mismatch error expected 0x%x received 0x%x", __p, 0xEu);
      v29 = *(v6 + 20);
    }

    *(v6 + 20) = v29 & v21;
  }

  return sub_10002249C(&v43);
}

uint64_t sub_1007339FC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = sub_10000C5E0(a2 + 8) - *(a2 + 24);
  if (v5 >= 1)
  {
    v20 = 0;
    do
    {
      v6 = sub_10057C548(a2);
      if (v6 < 0)
      {
        v7 = sub_10057C598(a2);
        v8 = -3;
      }

      else
      {
        v7 = sub_10057C548(a2);
        v8 = -2;
      }

      v9 = v6 & 0x7F;
      if (v9 == 16)
      {
        v10 = v7;
        v11 = v7;
        if (v7 != 2)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v9 != 3)
        {
          if (v9 == 1)
          {
            v10 = v7;
            v11 = v7;
            if (v7 >= 7)
            {
              v12 = sub_10057C598(a2);
              sub_10057C598(a2);
              v13 = sub_10057C598(a2);
              sub_10057C548(a2);
              buf[0] = 0;
              sub_1000216B4(buf);
              if (sub_1000ABC7C(a4, &v20) || !sub_1000B12AC(v20))
              {
                if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
                {
                  sub_10086C56C(&v18, v19);
                }
              }

              else
              {
                *(sub_1000B12AC(v20) + 8) = v12;
                *(sub_1000B12AC(v20) + 32) = v13;
              }

              sub_100022214(buf);
              sub_10002249C(buf);
              v10 = (v7 - 7);
              v11 = v7 - 7;
            }
          }

          else
          {
            v14 = qword_100BCEAC0;
            v10 = v7;
            v11 = v7;
            if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v22 = v9;
              _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "parseGATTDescriptor Key not recognized %d", buf, 8u);
              v10 = v7;
              v11 = v7;
            }
          }

LABEL_22:
          if (v11)
          {
            v15 = qword_100BCEAC0;
            if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109632;
              v22 = v9;
              v23 = 1024;
              v24 = v10;
              v25 = 1024;
              v26 = v7;
              _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "parseGATTDescriptor Key:%d Dumped %d of %d bytes ", buf, 0x14u);
            }

            sub_10057C660(a2, v11);
          }

          goto LABEL_26;
        }

        v10 = v7;
        v11 = v7;
        if (v7 != 2)
        {
          goto LABEL_22;
        }
      }

      sub_10057C598(a2);
LABEL_26:
      LOWORD(v5) = v5 + v8 - v7;
    }

    while (v5 > 0);
  }

  return 0;
}

void sub_100733CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_100733CFC(uint64_t a1, uint64_t a2)
{
  WORD2(v29) = 0;
  LODWORD(v29) = 0;
  v28 = 0;
  sub_1000216B4(&v28);
  if (sub_1002AD958(a2, &v29))
  {
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086C5A0();
    }
  }

  else
  {
    sub_100022214(&v28);
    v4 = sub_1000E6A38(a1, &v29);
    v5 = *(v4 + 16);
    if (v5 >= 6 && os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_FAULT))
    {
      sub_10086C614(v5);
    }

    v6 = mach_absolute_time();
    *(v4 + 184) = v6;
    v7 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      v8 = (v6 - *(v4 + 176)) * dword_100BC7AD4 / *algn_100BC7AD8 / 0xF4240;
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Descriptor took %d ms", buf, 8u);
      v7 = qword_100BCEAC0;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(*v4, buf);
      v9 = (SBYTE7(v33) & 0x80u) == 0 ? buf : *buf;
      v10 = *(v4 + 20);
      *v31 = 136315394;
      *&v31[4] = v9;
      *&v31[12] = 1024;
      *&v31[14] = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Compose Service Configure message for device %s with profiles %x", v31, 0x12u);
      if (SBYTE7(v33) < 0)
      {
        operator delete(*buf);
      }
    }

    v26 = v29;
    v27 = WORD2(v29);
    if (qword_100B508F0 != -1)
    {
      sub_10086BF44();
    }

    v11 = sub_1000E6554(off_100B508E8, &v26, 1);
    if (*(v4 + 20))
    {
      v12 = v11;
      *buf = 0u;
      v33 = 0u;
      sub_10057C6A8(buf, 0);
      v13 = *(a1 + 680);
      sub_10057C6D0(buf, 5);
      sub_10057C6D0(buf, 0);
      sub_10057C70C(buf, v13);
      sub_10057C70C(buf, 2);
      v14 = *(v4 + 20);
      if ((v14 & 0x10) != 0)
      {
        sub_10057C75C(buf, 0x10u);
        sub_10057C70C(buf, 6);
        sub_10057C6D0(buf, 21);
        sub_10057C6D0(buf, 1);
        sub_10057C6D0(buf, *(v4 + 134));
        sub_10057C6D0(buf, 20);
        sub_10057C6D0(buf, 1);
        sub_10057C6D0(buf, *(v4 + 135));
        v14 = *(v4 + 20);
      }

      if (v14)
      {
        sub_10057C75C(buf, 1u);
        sub_10057C70C(buf, 0);
        v14 = *(v4 + 20);
      }

      if ((v14 & 0x80000) != 0)
      {
        memset(v31, 0, sizeof(v31));
        sub_10057C6A8(v31, 0);
        if (qword_100B50950 != -1)
        {
          sub_10086C0FC();
        }

        if (sub_10035A5DC(off_100B50948, v12, v31))
        {
          *(v4 + 20) &= ~0x80000u;
          if (qword_100B50950 != -1)
          {
            sub_10086C0FC();
          }

          sub_10035B49C(off_100B50948, *v4, *(v4 + 84), 114);
        }

        else
        {
          sub_10057C75C(buf, 0x80000u);
          sub_10000C704(&v29 + 1, *&v31[8], *&v31[16] - *&v31[8]);
          v15 = sub_10000C5E0(&v29 + 8);
          sub_10057C70C(buf, v15);
          *(&v29 + 1) = &off_100AE0A78;
          if (v30)
          {
            sub_10000C808(v30);
          }

          sub_10000C704(&v29 + 1, *&v31[8], *&v31[16] - *&v31[8]);
          v16 = sub_10000C5F8(&v29 + 8);
          sub_10000C704(&v24, *&v31[8], *&v31[16] - *&v31[8]);
          v17 = sub_10000C5E0(&v24);
          sub_10057C6B8(buf, v16, v17);
          v24 = &off_100AE0A78;
          if (v25)
          {
            sub_10000C808(v25);
          }

          *(&v29 + 1) = &off_100AE0A78;
          if (v30)
          {
            sub_10000C808(v30);
          }
        }

        if (*&v31[8])
        {
          *&v31[16] = *&v31[8];
          operator delete(*&v31[8]);
        }

        v14 = *(v4 + 20);
      }

      if ((v14 & 8) != 0)
      {
        sub_10057C75C(buf, 8u);
        sub_10057C70C(buf, 0);
        v14 = *(v4 + 20);
      }

      if ((v14 & 0x100000) != 0)
      {
        sub_10057C75C(buf, 0x100000u);
        sub_10057C70C(buf, 0);
      }

      sub_1000618AC(&v28);
      sub_10000C704(v31, *&buf[8], v33 - *&buf[8]);
      v18 = sub_10000C5F8(v31);
      sub_10000C704(&v29 + 1, *&buf[8], v33 - *&buf[8]);
      v19 = sub_10000C5E0(&v29 + 8);
      v20 = sub_10028E1F0(sub_100732EE4, a2, &v29, v18, v19);
      *(&v29 + 1) = &off_100AE0A78;
      if (v30)
      {
        sub_10000C808(v30);
      }

      *v31 = &off_100AE0A78;
      if (*&v31[8])
      {
        sub_10000C808(*&v31[8]);
      }

      sub_100022214(&v28);
      if (v20)
      {
        v21 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
        {
          sub_10000C704(v31, *&buf[8], v33 - *&buf[8]);
          v23 = sub_10000C5E0(v31);
          DWORD2(v29) = 67109376;
          HIDWORD(v29) = v20;
          LOWORD(v30) = 1024;
          *(&v30 + 2) = v23;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "L2CAP Write failed with result %d for data size %d", &v29 + 8, 0xEu);
          *v31 = &off_100AE0A78;
          if (*&v31[8])
          {
            sub_10000C808(*&v31[8]);
          }
        }

        sub_1000DE594(a1, *v4 + 128, v20);
      }

      else
      {
        sub_100730C34(a1, v4, 6);
      }

      if (*&buf[8])
      {
        *&v33 = *&buf[8];
        operator delete(*&buf[8]);
      }
    }
  }

  return sub_10002249C(&v28);
}

void sub_1007343BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t (**a16)(), atomic_uint *a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  a16 = &off_100AE0A78;
  if (a17)
  {
    sub_10000C808(a17);
  }

  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  sub_10002249C(&a14);
  _Unwind_Resume(a1);
}

void sub_100734540(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  if ((*a2 & 0x10) != 0)
  {
    v16 = 0;
    sub_1000216B4(&v16);
    v15 = 0;
    v8 = sub_1000ABC7C(*(a4 + 64), &v15);
    v9 = sub_1000B12AC(v15);
    sub_100022214(&v16);
    if (!v8 && v9)
    {
      if (qword_100B50AE0 != -1)
      {
        sub_10086BFF8();
      }

      sub_1004E0B64(qword_100B50AD8, a3, *(a4 + 28));
    }

    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086C690();
    }

    *(a4 + 20) &= ~0x10u;
    *a2 &= ~0x10u;
    if (qword_100B50AE0 != -1)
    {
      sub_10086BFF8();
    }

    sub_1004E0FE4(qword_100B50AD8, a3, *(a4 + 54), *(a4 + 64), *(a4 + 136), *(a4 + 135));
    sub_10002249C(&v16);
    v7 = *a2;
  }

  if (v7)
  {
    v15 = 0;
    v16 = 0;
    sub_1000216B4(&v16);
    v10 = sub_1000ABC7C(*(a4 + 74), &v15);
    sub_100022214(&v16);
    if (!v10)
    {
      if (qword_100B50AD0 != -1)
      {
        sub_10086C05C();
      }

      sub_1005E7028(off_100B50AC8, a3, *(a4 + 28));
    }

    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086C700();
    }

    *(a4 + 20) &= ~1u;
    *a2 &= ~1u;
    sub_10002249C(&v16);
    v7 = *a2;
  }

  if ((v7 & 0x80000) != 0)
  {
    v15 = 0;
    v16 = 0;
    sub_1000216B4(&v16);
    v11 = sub_1000ABC7C(*(a4 + 84), &v15);
    sub_100022214(&v16);
    if (!v11)
    {
      if (qword_100B50950 != -1)
      {
        sub_10086C0FC();
      }

      sub_10035B168(off_100B50948, a3, *(a4 + 28));
    }

    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086C770();
    }

    *(a4 + 20) &= ~0x80000u;
    *a2 &= ~0x80000u;
    sub_10002249C(&v16);
    v7 = *a2;
  }

  if ((v7 & 8) != 0)
  {
    v15 = 0;
    v16 = 0;
    sub_1000216B4(&v16);
    v12 = sub_1000ABC7C(*(a4 + 94), &v15);
    sub_100022214(&v16);
    if (!v12)
    {
      if (qword_100B541D0 != -1)
      {
        sub_10086C160();
      }

      sub_1006CD988(off_100B541C8, a3, *(a4 + 28));
    }

    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086C7E0();
    }

    *(a4 + 20) &= ~0x80000u;
    *a2 &= ~0x80000u;
    sub_10002249C(&v16);
    v7 = *a2;
  }

  if ((v7 & 0x100000) != 0)
  {
    v16 = 0;
    sub_1000216B4(&v16);
    v15 = 0;
    v13 = sub_1000ABC7C(*(a4 + 114), &v15);
    v14 = sub_1000B12AC(v15);
    sub_100022214(&v16);
    if (!v13 && v14)
    {
      if (qword_100B54790 != -1)
      {
        sub_10086C850();
      }

      sub_100528538(qword_100B54788, a3, *(a4 + 28));
    }

    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086C878();
    }

    *(a4 + 20) &= ~0x100000u;
    *a2 &= ~0x100000u;
    sub_10002249C(&v16);
  }
}

void sub_10073499C(uint64_t a1, int *a2, unsigned __int8 *a3, uint64_t a4)
{
  v7 = *a2;
  if ((*a2 & 0x10) != 0)
  {
    v23[0] = 0;
    sub_1000216B4(v23);
    v25 = 0;
    v8 = sub_1000ABC7C(*(a4 + 64), &v25);
    v9 = sub_1000B12AC(v25);
    sub_100022214(v23);
    if (!v8 && v9)
    {
      if (qword_100B50AE0 != -1)
      {
        sub_10086BFF8();
      }

      v10 = qword_100B50AD8;
      v11 = *a4;
      v12 = *(a4 + 136);
      v13 = sub_1000B12AC(v25);
      sub_1004E0C60(v10, v11, v12, *(v13 + 32), 0);
    }

    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086C8E8();
    }

    *(a4 + 20) &= ~0x10u;
    *a2 &= ~0x10u;
    if (qword_100B50AE0 != -1)
    {
      sub_10086BFF8();
    }

    sub_1004E0FE4(qword_100B50AD8, a3, *(a4 + 54), *(a4 + 64), *(a4 + 136), *(a4 + 135));
    if (qword_100B50AE0 != -1)
    {
      sub_10086BFF8();
    }

    sub_1004E0C60(qword_100B50AD8, *a4, *(a4 + 136), 0, 4509);
  }

  if (v7)
  {
    v25 = 0;
    v24 = 0;
    sub_1000216B4(&v24);
    v14 = sub_1000ABC7C(*(a4 + 74), &v25);
    sub_100022214(&v24);
    if (v14)
    {
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        sub_10086C958();
      }

      *(a4 + 20) &= ~1u;
      *a2 &= ~1u;
      if (qword_100B50AD0 != -1)
      {
        sub_10086C05C();
      }

      sub_1005E7124(off_100B50AC8, a3, (a4 + 140), (a4 + 142), (a4 + 143), *(a4 + 144), 4510);
    }

    if (qword_100B50AD0 != -1)
    {
      sub_10086C05C();
    }

    sub_1005E7124(off_100B50AC8, a3, (a4 + 140), (a4 + 142), (a4 + 143), *(a4 + 144), 0);
  }

  if ((v7 & 0x80000) != 0)
  {
    v25 = 0;
    v23[0] = 0;
    sub_1000216B4(v23);
    v15 = sub_1000ABC7C(*(a4 + 84), &v25);
    sub_100022214(v23);
    if (v15)
    {
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        sub_10086C9C8();
      }

      *(a4 + 20) &= ~0x80000u;
      *a2 &= ~0x80000u;
      if (qword_100B50950 != -1)
      {
        sub_10086C0FC();
      }

      sub_10035B264(off_100B50948, a3, 4512);
    }

    if (qword_100B50950 != -1)
    {
      sub_10086C0FC();
    }

    sub_10035B264(off_100B50948, a3, 0);
  }

  if ((v7 & 8) != 0)
  {
    v25 = 0;
    v23[0] = 0;
    sub_1000216B4(v23);
    v16 = sub_1000ABC7C(*(a4 + 94), &v25);
    sub_100022214(v23);
    if (v16)
    {
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        sub_10086CA38();
      }

      *(a4 + 20) &= ~8u;
      *a2 &= ~8u;
      if (qword_100B541D0 != -1)
      {
        sub_10086C160();
      }

      sub_1006CDA84(off_100B541C8, a3, 4511);
    }

    if (qword_100B541D0 != -1)
    {
      sub_10086C160();
    }

    sub_1006CDA84(off_100B541C8, a3, 0);
  }

  if ((v7 & 0x100000) != 0)
  {
    v24 = 0;
    sub_1000216B4(&v24);
    v25 = 0;
    v17 = (a4 + 114);
    v18 = sub_1000ABC7C(*(a4 + 114), &v25);
    if (!v18)
    {
      if (sub_1000B12AC(v25))
      {
        v19 = *v17;
        v20 = *(sub_1000B12AC(v25) + 36);
        v21 = sub_1000B12AC(v25);
        v18 = sub_1001BD0EC(v19, v20, *(v21 + 32), 0);
      }

      else
      {
        v18 = 0;
      }
    }

    sub_100022214(&v24);
    v22 = qword_100BCEAC0;
    if (v18)
    {
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        sub_10086CAA8();
      }

      if (qword_100B54790 != -1)
      {
        sub_10086C850();
      }

      sub_100528634(qword_100B54788, a3, 4513);
    }

    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "GATT Setup Complete", v23, 2u);
    }

    *v17 = 0;
    sub_10002249C(&v24);
  }
}

_BYTE *sub_100734FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  sub_1000216B4(&v86);
  v5 = sub_1002AD958(v4, &v87);
  sub_100022214(&v86);
  if (v5)
  {
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086CB18();
    }

    return sub_10002249C(&v86);
  }

  v84 = v87;
  v85 = v88;
  if (qword_100B508F0 != -1)
  {
    sub_10086BF44();
  }

  v73 = sub_1000E6554(off_100B508E8, &v84, 1);
  v6 = sub_1000E6A38(a1, &v87);
  if (v6)
  {
    v76 = v6;
    v7 = *(v6 + 16);
    if (v7 >= 9 && os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_FAULT))
    {
      sub_10086CB8C(v7);
    }

    sub_100730C34(a1, v76, 9);
    v8 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(*v76, __p);
      v9 = (SBYTE7(v106) & 0x80u) == 0 ? __p : __p[0];
      *buf = 136315138;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setup Complete received from device %s", buf, 0xCu);
      if (SBYTE7(v106) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10057C598(a3) != 1 && os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086CC08();
    }

    v10 = sub_10057C598(a3);
    v75 = +[NSMutableDictionary dictionary];
    sub_1000618AC(&v86);
    v11 = sub_1000E1FE8(&v87);
    LOWORD(v12) = v10;
    if (v10 >= 1)
    {
      v13 = v11;
      v72 = 0;
      while (1)
      {
        v14 = sub_10057C548(a3);
        if (v14 < 0)
        {
          v15 = sub_10057C598(a3);
          v16 = -3;
        }

        else
        {
          v15 = sub_10057C548(a3);
          v16 = -2;
        }

        v17 = v14 & 0x7F;
        if (v17 <= 2)
        {
          break;
        }

        if (v17 != 3)
        {
          if (v17 == 4)
          {
            if (v15)
            {
              if (v15 != 8)
              {
                goto LABEL_45;
              }

              __p[0] = 0;
              sub_10057C50C(a3, __p, 8uLL);
              sub_100295954(sub_1002D7A34);
              sub_100291C84(&v87, 0, 3, __p, 8, 0);
              sub_1002958EC(sub_1002D7A34, 48);
            }

            goto LABEL_48;
          }

LABEL_35:
          v18 = qword_100BCEAC0;
          if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
          {
            LODWORD(__p[0]) = 67109120;
            HIDWORD(__p[0]) = v17;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Key %d not recognized in setup complete message", __p, 8u);
            if (v15)
            {
LABEL_45:
              v19 = qword_100BCEAC0;
              if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
              {
                LODWORD(__p[0]) = 67109632;
                HIDWORD(__p[0]) = v17;
                LOWORD(__p[1]) = 1024;
                *(&__p[1] + 2) = v15;
                HIWORD(__p[1]) = 1024;
                LODWORD(v106) = v15;
                _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Key:%d Dumped %d of %d bytes ", __p, 0x14u);
              }

              sub_10057C660(a3, v15);
              goto LABEL_48;
            }
          }

          else if (v15)
          {
            goto LABEL_45;
          }

          goto LABEL_48;
        }

        if (v15)
        {
          if (v15 != 4)
          {
            goto LABEL_45;
          }

          *(v13 + 229) = sub_10057C600(a3);
          *(v13 + 228) = 1;
        }

LABEL_48:
        v12 = (v12 + v16 - v15);
        if (v12 <= 0)
        {
          goto LABEL_53;
        }
      }

      if (v17 == 1)
      {
        if (v15)
        {
          if (v15 != 4)
          {
            goto LABEL_45;
          }

          v72 = sub_10057C600(a3);
        }

        goto LABEL_48;
      }

      if (v17 == 2)
      {
        if (v15)
        {
          if (v15 != 8)
          {
            goto LABEL_45;
          }

          __p[0] = 0;
          sub_10057C50C(a3, __p, 8uLL);
        }

        goto LABEL_48;
      }

      goto LABEL_35;
    }

    v15 = 0;
    v72 = 0;
LABEL_53:
    sub_100022214(&v86);
    if (sub_10057C598(a3) == 2)
    {
      while (1)
      {
        if ((sub_10000C5E0(a3 + 8) - *(a3 + 24)) < 9)
        {
          goto LABEL_95;
        }

        v20 = sub_10057C600(a3);
        v21 = sub_10057C598(a3);
        LOWORD(v22) = v21;
        if (sub_10000C5E0(a3 + 8) - *(a3 + 24) < v21)
        {
          v33 = qword_100BCEAC0;
          if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
          {
            v71 = sub_10000C5E0(a3 + 8) - *(a3 + 24);
            LODWORD(__p[0]) = 67109376;
            HIDWORD(__p[0]) = v21;
            LOWORD(__p[1]) = 1024;
            *(&__p[1] + 2) = v71;
            _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "fastConnectParseSetupCompleteMessage Length Error Descriptor length %u remaining %u", __p, 0xEu);
          }

          goto LABEL_95;
        }

        v23 = sub_100007618(v21, 0x917E74A8uLL);
        if (!v23)
        {
          goto LABEL_95;
        }

        sub_10057C50C(a3, v23, v21);
        v82 = 0;
        v83 = 0;
        sub_10000C704(&v82, v23, v21);
        *__p = 0u;
        v106 = 0u;
        sub_10057C4B4(__p, 0, &v82);
        if (v20 > 0x10 || ((1 << v20) & 0x10102) == 0)
        {
          if (v20 == 0x80000)
          {
            if (qword_100B50950 != -1)
            {
              sub_10086C0FC();
            }

            if (sub_100359020(off_100B50948, __p, v73, v75) && os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
            {
              sub_10086CCE8(&v80, v81);
            }

            goto LABEL_87;
          }

          if (v20 != 0x100000)
          {
            goto LABEL_87;
          }
        }

        if (v21 >= 1)
        {
          do
          {
            v24 = sub_10057C548(__p);
            if (v24 < 0)
            {
              v25 = sub_10057C598(__p);
              v26 = -3;
            }

            else
            {
              v25 = sub_10057C548(__p);
              v26 = -2;
            }

            v27 = v24 & 0x7F;
            if (v27 == 4)
            {
              if (v25 == 2)
              {
                v28 = sub_10057C598(__p);
                if (v28)
                {
                  v29 = qword_100BCEAC0;
                  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109376;
                    *&buf[4] = v20;
                    *&buf[8] = 1024;
                    *&buf[10] = v28;
                    _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "fastConnectParseSetupCompleteMessage Service 0x%x status %u", buf, 0xEu);
                  }
                }
              }

              else
              {
                v31 = qword_100BCEAC0;
                if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109120;
                  *&buf[4] = v25;
                  _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "fastConnectParseSetupCompleteMessage Error FC_COMMON_STATUS size wrong %d", buf, 8u);
                  if (v25)
                  {
                    goto LABEL_75;
                  }
                }

                else if (v25)
                {
                  goto LABEL_75;
                }
              }
            }

            else if (v25)
            {
              v30 = qword_100BCEAC0;
              if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109632;
                *&buf[4] = v24 & 0x7F;
                *&buf[8] = 1024;
                *&buf[10] = v25;
                *&buf[14] = 1024;
                LODWORD(v90) = v15;
                _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Key not recognized :%d Dumped %d of %d bytes ", buf, 0x14u);
              }

LABEL_75:
              v32 = qword_100BCEAC0;
              if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109376;
                *&buf[4] = v25;
                *&buf[8] = 1024;
                *&buf[10] = v27;
                _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "fastConnectParseSetupCompleteMessage dumping %d for Key:%d ", buf, 0xEu);
              }

              sub_10057C660(a3, v25);
            }

            v22 = (v22 + v26 - v25);
          }

          while (v22 > 0);
        }

LABEL_87:
        sub_10000C1E8(v23);
        __p[1] = &off_100AE0A78;
        if (v106)
        {
          sub_10000C808(v106);
        }

        v82 = &off_100AE0A78;
        if (v83)
        {
          sub_10000C808(v83);
        }
      }
    }

    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086CC78();
    }

LABEL_95:
    if (v72 != *(v76 + 20) && os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_FAULT))
    {
      sub_10086CD1C();
    }

    v34 = mach_absolute_time();
    v35 = (v34 - *(v76 + 176)) * dword_100BC7AD4 / *algn_100BC7AD8 / 0xF4240;
    *(v76 + 192) += v35;
    v36 = *(v76 + 200);
    v37 = [NSNumber numberWithInt:v35];
    [v75 setObject:v37 forKeyedSubscript:@"ProfileSetupDuration"];

    v38 = [v75 objectForKey:@"BasebandDurationTotal"];
    v39 = v38 == 0;

    if (!v39)
    {
      v40 = [v75 objectForKeyedSubscript:@"BasebandDurationTotal"];
      *(v76 + 192) += [v40 intValue];
    }

    v41 = [NSNumber numberWithInt:*(v76 + 192)];
    [v75 setObject:v41 forKeyedSubscript:@"DurationWithRetries"];

    v42 = [v36 objectForKeyedSubscript:@"EncryptionConnectionTimeMs"];
    [v75 setObject:v42 forKeyedSubscript:@"EncryptionSetupDuration"];

    v43 = [v36 objectForKey:@"BasebandConnectionTimeMs"];
    v44 = v43 == 0;

    if (!v44)
    {
      v47 = *(v76 + 160);
      v49 = dword_100BC7AD4;
      v48 = *algn_100BC7AD8;
      v50 = [v36 objectForKeyedSubscript:@"BasebandConnectionTimeMs"];
      [v75 setObject:v50 forKeyedSubscript:@"BasebandDurationTotal"];

      v51 = [NSNumber numberWithInt:v47 * v49 / v48 / 0xF4240];
      [v75 setObject:v51 forKeyedSubscript:@"BasebandDuration"];
    }

    v52 = sub_10000F034(v45, v46);
    v53 = (*(*v52 + 552))(v52, v73, v75);
    LODWORD(v82) = v72;
    sub_100734540(v53, &v82, v73, v76);
    v54 = v82;
    v79 = v82;
    sub_10073499C(v55, &v79, v73, v76);
    v56 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p[0]) = 67109632;
      HIDWORD(__p[0]) = v72;
      LOWORD(__p[1]) = 1024;
      *(&__p[1] + 2) = v54;
      HIWORD(__p[1]) = 1024;
      LODWORD(v106) = v79;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Setup Complete with profiles: %x, profile attempts: %x, profile results: %x", __p, 0x14u);
    }

    v57 = *(v76 + 200);
    v58 = [NSNumber numberWithInt:v35];
    [v57 setObject:v58 forKey:@"ProfileConnectionTimeMs"];

    v59 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      v60 = (v34 - *(v76 + 184)) * dword_100BC7AD4 / *algn_100BC7AD8 / 0xF4240;
      LODWORD(__p[0]) = 67109120;
      HIDWORD(__p[0]) = v60;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Configuration took %d ms", __p, 8u);
      v59 = qword_100BCEAC0;
    }

    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p[0]) = 67109120;
      HIDWORD(__p[0]) = v35;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Profile setup took %d ms", __p, 8u);
    }

    v61 = *(v76 + 200);
    v62 = [NSNumber numberWithInt:*(v76 + 192)];
    [v61 setObject:v62 forKey:@"TotalConnectionTimeMs"];

    v63 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      v64 = *(v76 + 192);
      LODWORD(__p[0]) = 67109120;
      HIDWORD(__p[0]) = v64;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Total connection took %d ms!", __p, 8u);
    }

    v65 = *(v76 + 200);
    sub_1000E2D2C(v73, 0xAu, __p);
    if ((SBYTE7(v106) & 0x80u) == 0)
    {
      v66 = __p;
    }

    else
    {
      v66 = __p[0];
    }

    v67 = [NSString stringWithUTF8String:v66];
    [v65 setObject:v67 forKey:@"FWVersion"];

    if (SBYTE7(v106) < 0)
    {
      operator delete(__p[0]);
    }

    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007360EC;
    block[3] = &unk_100ADF820;
    v69 = v36;
    v78 = v69;
    dispatch_async(global_queue, block);
    sub_1000618AC(&v86);
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    *__p = 0u;
    v106 = 0u;
    sub_100304ACC(__p, 256, "PFC Profile Setup took %d", v35);
    sub_1001C429C(__p);
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    *buf = 0u;
    v90 = 0u;
    sub_100304ACC(buf, 256, "PFC Total connection took %d", *(v76 + 192));
    sub_1001C429C(buf);
    sub_100022214(&v86);
    sub_1000DE594(a1, &v87, 0);
  }

  else if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
  {
    sub_1000BE6F8(&v84, __p);
    sub_10086CD5C();
  }

  return sub_10002249C(&v86);
}

uint64_t sub_1007360EC(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000F034(a1, a2) + 368);

  return v2();
}

void sub_10073614C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_10028E018(a1);
  if (v6)
  {
    v7 = qword_100BCEAC0;
    if (a2)
    {
      v8 = v6;
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        v9 = *(v8 + 2);
        v10 = 67109888;
        v11 = a2;
        v12 = 1024;
        v13 = v9;
        v14 = 1024;
        v15 = a1;
        v16 = 1024;
        v17 = a3;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "FastConnectMagicPolicyCB: Policy enforcement failed %{bluetooth:OI_STATUS}u - cid 0x%x, handle %d securityFailed %d", &v10, 0x1Au);
        v7 = qword_100BCEAC0;
      }
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67109120;
      v11 = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Magic Pairing came back with result %d", &v10, 8u);
    }

    if (a2 != 1500)
    {
      sub_1007362C0(a2, a1);
    }
  }

  else if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
  {
    sub_10086CDBC();
  }
}

void sub_10073634C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_10028E018(a3);
  if (v5)
  {
    v6 = v5;
    v7 = v5;
    v8 = sub_1000B12AC(v5);
    v24 = *(v8 + 10);
    v25 = *(v8 + 14);
    v9 = sub_1000E6A38(a1, &v24);
    if (v9)
    {
      v10 = v9;
      if (a2 == 1414 || a2 == 742)
      {
        if (!*(v9 + 51))
        {
          v18 = qword_100BCEAC0;
          v19 = os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT);
          v20 = 1;
          if (v19)
          {
            *buf = 67109632;
            *&buf[4] = a2;
            *&buf[8] = 1024;
            *&buf[10] = 0;
            *&buf[14] = 1024;
            LODWORD(v27) = 1;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Authentication failed with result: %d. Retrying authentication since auth retries %d < %d", buf, 0x14u);
            v20 = *(v10 + 51) + 1;
          }

          *(v10 + 51) = v20;
          *(v7 + 8) = &unk_100B0AE88;
          v23 = 0;
          sub_1000216B4(&v23);
          v21 = sub_100305BDC(sub_10073614C, &v24, *(v7 + 8), v6 + 18, 1);
          if (v21)
          {
            v22 = qword_100BCEAC0;
            if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *&buf[4] = v21;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Policy Mgr for PFC new connection failed %d", buf, 8u);
            }
          }

          sub_100022214(&v23);
          if (v21)
          {
            sub_1000DE594(a1, &v24, v21);
          }

          goto LABEL_25;
        }
      }

      else if (!a2)
      {
        v11 = (mach_absolute_time() - *(v9 + 168)) * dword_100BC7AD4 / *algn_100BC7AD8 / 0xF4240;
        *(v10 + 192) += v11;
        v12 = *(v10 + 200);
        v13 = [NSNumber numberWithInt:v11];
        [v12 setObject:v13 forKey:@"EncryptionConnectionTimeMs"];

        v14 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v11;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Authentication took %d ms", buf, 8u);
        }

        v15 = mach_absolute_time();
        v16 = *(v10 + 48);
        *(v10 + 176) = v15;
        if (sub_1002AD958(v16, &v24))
        {
          if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
          {
            sub_10086CDF8();
          }

          return;
        }

        v23 = 0;
        sub_1000216B4(&v23);
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        *buf = 0u;
        v27 = 0u;
        sub_100304ACC(buf, 256, "PFC Authentication took %d", v11);
        sub_1001C429C(buf);
        sub_100022214(&v23);
        *(v10 + 51) = 0;
        sub_100731BF4(a1, v10);
LABEL_25:
        sub_10002249C(&v23);
        return;
      }

      *(v9 + 51) = 0;
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        sub_10086CE6C();
      }

      sub_1000DE594(a1, v10 + 8, a2);
    }

    else
    {
      v17 = qword_100BCEAC0;
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        sub_10086CEA8(&v24, v17);
      }
    }
  }
}

void sub_100736748(uint64_t a1, __int16 a2, char a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v70 = a8;
  v71 = WORD2(a8);
  v14 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Channel support came back with status %d", buf, 8u);
  }

  v68 = v70;
  v69 = v71;
  if (qword_100B508F0 != -1)
  {
    sub_10086BF44();
  }

  v15 = sub_1000E6554(off_100B508E8, &v68, 1);
  v17 = a6 != 4500 && a6 != 0;
  if (!a4 || v17)
  {
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086CFAC();
    }

    if (a7 || !v15)
    {
      if (a6 == 4515 && a7 && v15)
      {
        sub_1000DE9EC(a1, &v70);
        v31 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Start SDP due to SDP mismatch of incoming FC", buf, 2u);
        }

        if (qword_100B54670 != -1)
        {
          sub_10086D01C();
        }

        sub_100587F9C();
      }

      return;
    }

    v24 = sub_1000E6A38(a1, &v70);
    if (!v24)
    {
      if (a6 == 711)
      {
        goto LABEL_113;
      }

      goto LABEL_112;
    }

    v25 = v24;
    v26 = (mach_absolute_time() - *(v24 + 152)) * dword_100BC7AD4 / *algn_100BC7AD8 / 0xF4240;
    if (a6 != 716 && a6 != 704)
    {
      v53 = qword_100BCEAC0;
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v26;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "PFC failed, took %d ms", buf, 8u);
      }

      goto LABEL_103;
    }

    v27 = *(v25 + 52);
    v28 = *(v25 + 53);
    v29 = qword_100BCEAC0;
    if (v27 >= v28)
    {
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        sub_10086D044();
      }

      sub_1000DE594(a1, &v70, a6);
      goto LABEL_103;
    }

    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *&buf[4] = a6;
      *&buf[8] = 1024;
      *&buf[10] = v26;
      *&buf[14] = 1024;
      LODWORD(v73) = v27;
      WORD2(v73) = 1024;
      *(&v73 + 6) = v28;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Status: %d, took %d ms. Retrying echo request since retries %d < %d", buf, 0x1Au);
    }

    sub_100730C34(a1, v25, 1);
    v30 = *(v25 + 200);
    *(v25 + 200) = 0;

    *(v25 + 160) = 0;
    ++*(v25 + 52);
    if (qword_100B50AC0 != -1)
    {
      sub_10086BF94();
    }

    sub_100594D24(off_100B50AB8, v15, 1, 2);
    if (!sub_1000E2140(v15, 0xCu))
    {
LABEL_103:
      if (a6 <= 715)
      {
        if (a6 == 704)
        {
          return;
        }

        if (a6 != 711)
        {
LABEL_106:
          sub_1000DE9EC(a1, &v70);
          *(a1 + 682) = a6 == 4515;
          v63 = qword_100BCEAC0;
          if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
          {
            v64 = "Legacy";
            if (a6 == 4515)
            {
              v64 = "FC";
            }

            *buf = 136315138;
            *&buf[4] = v64;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Profile connection: %s", buf, 0xCu);
            if ((*(a1 + 682) & 1) == 0)
            {
              goto LABEL_120;
            }
          }

          else if (a6 != 4515)
          {
LABEL_120:
            if (qword_100B50AC0 != -1)
            {
              sub_10086BF94();
            }

            sub_100594D24(off_100B50AB8, v15, 0, 2);
            return;
          }

          if (qword_100B54670 != -1)
          {
            sub_10086D01C();
          }

          sub_100587F9C();
        }

LABEL_113:
        v65 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = a6;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Cleaning up PFC because status is %d", buf, 8u);
        }

        sub_1000DE594(a1, &v70, a6);
        return;
      }

      if (a6 == 716)
      {
        return;
      }

LABEL_112:
      if (a6 != 1339)
      {
        goto LABEL_106;
      }

      goto LABEL_113;
    }

    memset(buf, 0, sizeof(buf));
    *&v73 = 0;
    if (*(v15 + 1567) < 0)
    {
      sub_100008904(buf, *(v15 + 1544), *(v15 + 1552));
    }

    else
    {
      *buf = *(v15 + 1544);
      *&v73 = *(v15 + 1560);
    }

    if (SBYTE7(v73) < 0)
    {
      if (*&buf[8])
      {
        v54 = *buf;
        goto LABEL_87;
      }
    }

    else if (BYTE7(v73))
    {
      v54 = buf;
LABEL_87:
      v55 = [NSString stringWithUTF8String:v54];
      goto LABEL_89;
    }

    v55 = @"Unknown";
LABEL_89:
    *uu = 0;
    v93 = 0;
    if (qword_100B508D0 != -1)
    {
      sub_10086D0B4();
    }

    sub_1000CC438(off_100B508C8, (v15 + 128), uu);
    if (uuid_is_null(uu))
    {
      v56 = os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR);
      if (v56)
      {
        sub_1000E5A58(v15, v88);
        sub_10086D0DC();
      }
    }

    else
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086D0B4();
      }

      v58 = off_100B508C8;
      v59 = sub_10004DF60(uu);
      v60 = sub_1007902B0(v58, v59);

      if (v60 > 0.0)
      {
        v61 = (CFAbsoluteTimeGetCurrent() - v60);
LABEL_99:
        v62 = sub_10000F034(v56, v57);
        sub_1000E5A58(v15, __p);
        (*(*v62 + 416))(v62, __p, v55, v61, *(v25 + 52), *(v25 + 53));
        if (v67 < 0)
        {
          operator delete(__p[0]);
        }

        if (SBYTE7(v73) < 0)
        {
          operator delete(*buf);
        }

        goto LABEL_103;
      }
    }

    v61 = -1;
    goto LABEL_99;
  }

  if (a7)
  {
    v18 = sub_100730DD8(a1, v15);
    v19 = v18;
    if (v18)
    {
      if (*(v18 + 16) >= 2)
      {
        v20 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
        {
          sub_1000E5A58(v15, buf);
          if ((SBYTE7(v73) & 0x80u) == 0)
          {
            v22 = buf;
          }

          else
          {
            v22 = *buf;
          }

          v23 = sub_100730F30(v21, *(v19 + 16));
          *v88 = 136446466;
          v89 = v22;
          v90 = 2080;
          v91 = v23;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "PFC in progress for device %{public}s, ignoring duplicate request - current state is %s", v88, 0x16u);
          if (SBYTE7(v73) < 0)
          {
            operator delete(*buf);
          }
        }

        return;
      }

      sub_100730C34(a1, v18, 3);
      v39 = +[NSMutableDictionary dictionary];
      v40 = *(v19 + 200);
      *(v19 + 200) = v39;

      *v19 = v15;
      goto LABEL_52;
    }

    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086CF70();
    }
  }

  else
  {
    v32 = sub_1000E6A38(a1, &v70);
    if (v32)
    {
      v19 = v32;
      v33 = mach_absolute_time();
      v34 = v33 - *(v19 + 152);
      *(v19 + 160) = v33 - *(v19 + 160);
      v35 = v34 * dword_100BC7AD4 / *algn_100BC7AD8;
      *(v19 + 192) += v35 / 0xF4240;
      v36 = *(v19 + 200);
      v37 = [NSNumber numberWithInt:v35 / 0xF4240];
      [v36 setObject:v37 forKey:@"BasebandConnectionTimeMs"];

      v38 = qword_100BCEAC0;
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v35 / 0xF4240;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Baseband took %d ms", buf, 8u);
      }

      *(v19 + 52) = 0;
      v88[0] = 0;
      sub_1000216B4(v88);
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      *buf = 0u;
      v73 = 0u;
      sub_100304ACC(buf, 256, "PFC Baseband took %d", v35 / 0xF4240);
      sub_1001C429C(buf);
      sub_100022214(v88);
      sub_10002249C(v88);
LABEL_52:
      v41 = qword_100BCEAC0;
      v42 = os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT);
      if (v42)
      {
        sub_1000E5A58(v15, buf);
        v44 = (SBYTE7(v73) & 0x80u) == 0 ? buf : *buf;
        *v88 = 136446466;
        v89 = v44;
        v90 = 1024;
        LODWORD(v91) = a4;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Fast Connect supported by device %{public}s with profileMask %x", v88, 0x12u);
        if (SBYTE7(v73) < 0)
        {
          operator delete(*buf);
        }
      }

      v45 = sub_10000C7D0(v42, v43);
      v46 = (*(*v45 + 2888))(v45);
      if (v46)
      {
        LOBYTE(v46) = sub_10054F920(*v19);
      }

      *(v19 + 145) = v46;
      v47 = mach_absolute_time();
      *(v19 + 48) = a2;
      v48 = (v19 + 48);
      *(v48 + 15) = v47;
      *(v48 - 7) &= a4;
      *(v48 - 6) = a4;
      *(v48 - 20) = a7 != 0;
      *buf = 0;
      uu[0] = 0;
      sub_1000216B4(uu);
      v49 = sub_1000ABC7C(*v48, buf);
      sub_100022214(uu);
      if (v49)
      {
        goto LABEL_70;
      }

      if ((sub_1000295DC(v15) & 1) != 0 || (a3 & 0x10) != 0 && (*(a1 + 672) & 0x10) != 0)
      {
        v50 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
        {
          v51 = sub_1000295DC(v15);
          *v88 = 67109120;
          LODWORD(v89) = v51;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "isPaired:%d", v88, 8u);
        }

        *(*buf + 64) = &unk_100B0AE88;
        sub_1000618AC(uu);
        v49 = sub_100305BDC(sub_10073614C, (v15 + 128), *(*buf + 64), (*buf + 72), 1);
        if (v49)
        {
          v52 = qword_100BCEAC0;
          if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
          {
            *v88 = 67109120;
            LODWORD(v89) = v49;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Policy Mgr for PFC new connection failed %d", v88, 8u);
          }
        }

        sub_100022214(uu);
        if (v49)
        {
LABEL_70:
          sub_1000DE594(a1, &v70, v49);
        }
      }

      sub_10002249C(uu);
      return;
    }

    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086CF34();
    }
  }
}

void sub_10073735C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1007373E4(uint64_t a1, int a2, uint64_t a3)
{
  v6 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 67109376;
    v10 = a2;
    v11 = 1024;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fast connect channel disconnected for CID %d with status %d", &v9, 0xEu);
  }

  if (a3 != 436)
  {
    for (i = 0; i != 624; i += 208)
    {
      if (*(a1 + i + 32) && *(a1 + i + 64) == a2)
      {
        sub_1000DE594(a1, a1 + i + 24, a3);
        return;
      }
    }

    v8 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 67109120;
      v10 = a2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fast connect channel disconnected can not find FC device for cid %d", &v9, 8u);
    }
  }
}

void sub_10073753C(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  v14 = 0;
  v15 = 0;
  sub_10000C704(&v14, a3, a4);
  v12 = 0u;
  v13 = 0u;
  sub_10057C4B4(&v12, 0, &v14);
  v6 = sub_10057C548(&v12);
  sub_10057C548(&v12);
  v7 = sub_10057C598(&v12);
  v8 = 0;
  while (!*(a1 + v8 + 32) || *(a1 + v8 + 64) != a2)
  {
    v8 += 208;
    if (v8 == 624)
    {
      goto LABEL_7;
    }
  }

  *(a1 + v8 + 48) = v7;
LABEL_7:
  v9 = qword_100BCEAC0;
  if (v6 > 4)
  {
    if (v6 != 5)
    {
      if (v6 != 6)
      {
        if (v6 == 7)
        {
          if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
          {
            sub_10086D13C();
          }

          goto LABEL_28;
        }

        goto LABEL_26;
      }

      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setup Complete received", v11, 2u);
      }

      sub_100734FEC(a1, a2, &v12);
      goto LABEL_28;
    }

    if (!os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *v11 = 0;
    v10 = "Service Negotiation received";
LABEL_25:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
    goto LABEL_28;
  }

  if (v6 == 3)
  {
    if (!os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *v11 = 0;
    v10 = "Service Descriptor received";
    goto LABEL_25;
  }

  if (v6 != 4)
  {
LABEL_26:
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086D178();
    }

    goto LABEL_28;
  }

  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Service Descriptor Rsp received", v11, 2u);
  }

  sub_100732FA0(a1, a2, &v12);
  sub_100733CFC(a1, a2);
LABEL_28:
  *(&v12 + 1) = &off_100AE0A78;
  if (v13)
  {
    sub_10000C808(v13);
  }

  v14 = &off_100AE0A78;
  if (v15)
  {
    sub_10000C808(v15);
  }
}

void sub_1007377CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, atomic_uint *a13, uint64_t a14, uint64_t a15, atomic_uint *a16)
{
  if (a13)
  {
    sub_10000C808(a13);
  }

  if (a16)
  {
    sub_10000C808(a16);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100737844(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, char a5, uint64_t a6)
{
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  sub_1000216B4(&v75);
  if (sub_10023DC00(a6, &v76))
  {
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086D1E8();
    }

    return sub_10002249C(&v75);
  }

  sub_100022214(&v75);
  v73 = v76;
  v74 = v77;
  if (qword_100B508F0 != -1)
  {
    sub_10086BF44();
  }

  v12 = sub_1000E6554(off_100B508E8, &v73, 1);
  if (sub_1000E6A38(a1, &v76))
  {
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_1000C23E0(v12, buf);
      sub_10086D258();
    }

    return sub_10002249C(&v75);
  }

  v13 = *(a1 + 664);
  if (*(v12 + 1032) == 1)
  {
    v14 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Wireless Splitter guest device removing HFP and GATT profiles from support", buf, 2u);
    }

    v13 &= 0xFFEFFFFE;
  }

  if (a4 < 0x18)
  {
LABEL_56:
    sub_1000618AC(&v75);
    sub_1002AB810("d", 9, 0, a6, a5, v32, v33, v34, 0);
    sub_100022214(&v75);
    return sub_10002249C(&v75);
  }

  v15 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(v12, buf);
    v16 = v81[3] >= 0 ? buf : *buf;
    *v83 = 136315138;
    *&v83[4] = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received Echo Request from %s", v83, 0xCu);
    if ((v81[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  sub_1000618AC(&v75);
  if (!a2)
  {
    v53 = "data";
LABEL_124:
    v54 = 2235;
    goto LABEL_131;
  }

  if (!a3)
  {
    v53 = "(dataSize) > 0";
    goto LABEL_124;
  }

  if (a3 == 1)
  {
    v53 = "ByteStream_NumReadBytesAvail(pBs) >= 1";
    v54 = 2238;
    goto LABEL_131;
  }

  if (a3 < 4)
  {
    v53 = "ByteStream_NumReadBytesAvail(pBs) >= 2";
    v54 = 2239;
    goto LABEL_131;
  }

  if (a3 < 6)
  {
    v53 = "ByteStream_NumReadBytesAvail(pBs) >= 2";
    v54 = 2240;
    goto LABEL_131;
  }

  if (a3 == 6)
  {
    v53 = "ByteStream_NumReadBytesAvail(pBs) >= 1";
    v54 = 2241;
    goto LABEL_131;
  }

  if (a3 < 8)
  {
    v53 = "ByteStream_NumReadBytesAvail(pBs) >= 1";
    v54 = 2242;
    goto LABEL_131;
  }

  if (a3 <= 9)
  {
    v53 = "ByteStream_NumReadBytesAvail(pBs) >= 2";
    v54 = 2243;
LABEL_131:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/core/FastConnectManager.mm", v54, v53);
  }

  v17 = *(a2 + 6);
  v66 = *(a2 + 7);
  v18 = *(a2 + 8);
  v19 = sub_1000B8B5C(a6);
  if (v17 != 1 || !v19 || *(a6 + 148) > 2)
  {
    sub_100022214(&v75);
    v31 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_1000C23E0(v12, v83);
      v36 = v84 >= 0 ? v83 : *v83;
      v37 = v19 ? *(a6 + 148) : 0;
      *buf = 136315906;
      *&buf[4] = v36;
      *&buf[12] = 1024;
      *v80 = v17;
      *&v80[4] = 1024;
      *v81 = v19;
      *&v81[4] = 1024;
      v82 = v37;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Echo Request failed for device %s cmd:%d validHandle:%d refCount:%d", buf, 0x1Eu);
      if (v84 < 0)
      {
        operator delete(*v83);
      }
    }

    goto LABEL_56;
  }

  v72 = 0;
  v65 = sub_1002FCF64(a6, &v72);
  v20 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v65;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "parseFastConnectEchoReq isPaired %d", buf, 8u);
  }

  if (!v65)
  {
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086D2B8();
    }

    v63 = 0;
    LOBYTE(v64) = 0;
    v30 = 4502;
    goto LABEL_94;
  }

  if (a3 < 0xC)
  {
    v55 = "ByteStream_NumReadBytesAvail(pBs) >= 2";
    v56 = 2261;
    goto LABEL_139;
  }

  if (a3 < 0xE)
  {
    v55 = "ByteStream_NumReadBytesAvail(pBs) >= 2";
    v56 = 2263;
    goto LABEL_139;
  }

  if (a3 < 0x12)
  {
    v55 = "ByteStream_NumReadBytesAvail(pBs) >= 4";
    v56 = 2266;
    goto LABEL_139;
  }

  if (a3 <= 0x19)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/core/FastConnectManager.mm", 2267, "ByteStream_NumReadBytesAvail(pBs) >= (8)");
  }

  v59 = *(a2 + 12);
  v60 = *(a2 + 10);
  v63 = *(a2 + 14);
  v64 = *(a2 + 18);
  v21 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v18;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "parseFastConnectEchoReq remote version %d", buf, 8u);
  }

  if (v18 >= 2)
  {
    if (a3 < 0x1E)
    {
      v55 = "ByteStream_NumReadBytesAvail(pBs) >= 4";
      v56 = 2272;
    }

    else if (a3 < 0x22)
    {
      v55 = "ByteStream_NumReadBytesAvail(pBs) >= 4";
      v56 = 2273;
    }

    else
    {
      if (a3 > 0x23)
      {
        v61 = *(a2 + 26);
        v22 = *(a2 + 30);
        v23 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *&buf[4] = v61;
          *&buf[8] = 1024;
          *&buf[10] = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "remoteAppleSupportedFeatures %x remoteSdpServiceDataBaseState %x", buf, 0xEu);
        }

        v58 = v22;
        v70 = 0;
        v71 = 0;
        sub_1007386F0(&v76, &v71, &v70);
        v24 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *&buf[4] = v71;
          *&buf[8] = 1024;
          *&buf[10] = v70;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "parseFastConnectEchoReq deviceAppleSupportedFeatures %x deviceSdpServiceDataBaseState %x", buf, 0xEu);
        }

        v28 = v71;
        if (v71 != v61)
        {
          v29 = qword_100BCEAC0;
          if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *&buf[4] = v28;
            *&buf[8] = 1024;
            *&buf[10] = v61;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "parseFastConnectEchoReq DID expected %x received %x", buf, 0xEu);
            v29 = qword_100BCEAC0;
          }

          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_1000C23E0(v12, v83);
            sub_10086D2F4();
          }

          sub_10053DCEC(v12, v61, 0);
        }

        if (v70 == v58)
        {
          v30 = 4500;
        }

        else
        {
          if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
          {
            sub_10086D350();
          }

          if (((v64 >> 4) & 1 & (*(a1 + 672) >> 4)) != 0)
          {
            v30 = 4515;
          }

          else
          {
            v30 = 4504;
          }
        }

        if (v18 != 2)
        {
          v69 = 0;
          if (a3 <= 0x27)
          {
            v57 = 2302;
          }

          else
          {
            if (a3 > 0x2B)
            {
              v38 = *(a2 + 40);
              v62 = *(a2 + 36);
              sub_100738814(&v76, &v69);
              v39 = v69;
              v40 = HIDWORD(v69);
              if (__PAIR64__(v69, HIDWORD(v69)) != __PAIR64__(v38, v62))
              {
                v41 = qword_100BCEAC0;
                if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109888;
                  *&buf[4] = v39;
                  *&buf[8] = 1024;
                  *&buf[10] = v40;
                  *v80 = 1024;
                  *&v80[2] = v38;
                  *v81 = 1024;
                  *&v81[2] = v62;
                  _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Supported Extended Features expected: 0x%x 0x%x, Received: 0x%x 0x%x", buf, 0x1Au);
                  v41 = qword_100BCEAC0;
                }

                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  sub_1000C23E0(v12, __p);
                  v42 = v68 >= 0 ? __p : __p[0];
                  *buf = 136315650;
                  *&buf[4] = v42;
                  *&buf[12] = 1024;
                  *v80 = v38;
                  *&v80[4] = 1024;
                  *v81 = v62;
                  _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Updating Supported Extended Features for device %s to 0x%x 0x%x", buf, 0x18u);
                  if (v68 < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                sub_10053DFDC(v12, v38 | (v62 << 32), 0);
              }

              goto LABEL_86;
            }

            v57 = 2303;
          }

          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/core/FastConnectManager.mm", v57, "ByteStream_NumReadBytesAvail(pBs) >= 4");
        }

LABEL_86:
        if ((v64 & 1) == 0)
        {
          if (v30 == 4500)
          {
            goto LABEL_88;
          }

LABEL_94:
          byte_100BCEB9A = 7;
          byte_100BCEB9B = v66;
          word_100BCEB9C = *(a1 + 680);
          byte_100BCEB9E = v30;
          byte_100BCEB9F = 17;
          goto LABEL_95;
        }

LABEL_91:
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
        {
          sub_10086D3CC();
        }

        v30 = 4507;
        goto LABEL_94;
      }

      v55 = "ByteStream_NumReadBytesAvail(pBs) >= 2";
      v56 = 2274;
    }

LABEL_139:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/core/FastConnectManager.mm", v56, v55);
  }

  if (v64)
  {
    goto LABEL_91;
  }

LABEL_88:
  if (sub_10028E3EC(2u, &v78, 0))
  {
    sub_100022214(&v75);
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086D408();
    }

    return sub_10002249C(&v75);
  }

  *(sub_1000B12AC(v78) + 8) = v60;
  *(sub_1000B12AC(v78) + 32) = v59;
  if ((v64 & 4) != 0)
  {
    sub_1002D7A34(&v76);
  }

  byte_100BCEB9A = 2;
  byte_100BCEB9B = v66;
  word_100BCEB9C = *(a1 + 680);
  v44 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEBUG))
  {
    v45 = *(v78 + 2);
    v46 = sub_1000B12AC(v78);
    sub_10086D478(v45, v46, buf, v44);
  }

  byte_100BCEB9E = *(v78 + 4);
  byte_100BCEB9F = *(v78 + 5);
  byte_100BCEBA0 = *(sub_1000B12AC(v78) + 36);
  byte_100BCEBA1 = *(sub_1000B12AC(v78) + 37);
  dword_100BCEBA2 = v13;
  unk_100BCEBA6 = *(a1 + 672);
  if (qword_100B50AA0 != -1)
  {
    sub_10086BF1C();
  }

  byte_100BCEBAE = sub_1005A5338(off_100B50A98);
  if (qword_100B50AA0 != -1)
  {
    sub_10086BF1C();
  }

  byte_100BCEBAF = sub_1005A5338(off_100B50A98) >> 8;
  if (qword_100B50AA0 != -1)
  {
    sub_10086BF1C();
  }

  byte_100BCEBB0 = sub_1005A5338(off_100B50A98) >> 16;
  if (qword_100B50AA0 != -1)
  {
    sub_10086BF1C();
  }

  byte_100BCEBB1 = sub_1005A5338(off_100B50A98) >> 24;
  byte_100BCEBB2 = sub_1002F8128();
  byte_100BCEBB3 = sub_1002F8128() >> 8;
  byte_100BCEBB4 = sub_1002F8128() >> 16;
  byte_100BCEBB5 = sub_1002F8128() >> 24;
  *algn_100BCEBB6 = 0;
  if (qword_100B50AA0 != -1)
  {
    sub_10086BF1C();
  }

  v47 = sub_1005A5340(off_100B50A98);
  byte_100BCEBB8 = BYTE4(v47);
  byte_100BCEBB9 = BYTE5(v47);
  byte_100BCEBBA = BYTE6(v47);
  byte_100BCEBBB = HIBYTE(v47);
  word_100BCEBBC = v47;
  byte_100BCEBBE = BYTE2(v47);
  byte_100BCEBBF = BYTE3(v47);
  sub_10023B994(a6);
  v48 = sub_1000B12AC(v78);
  *(v48 + 10) = v76;
  *(v48 + 14) = v77;
  *sub_1000B12AC(v78) = a6;
  *(sub_1000B12AC(v78) + 25) = 0;
  *(sub_1000B12AC(v78) + 16) = 4;
  *(sub_1000B12AC(v78) + 28) = 0;
  v49 = sub_1000B12AC(v78);
  sub_1000CD5B8(*v49);
  v50 = v78;
  v78[19] = -1;
  if (sub_10029E064(*(v50 + 2), 4, 5u, 0, v50 + 12, 0xFFFFFFFF))
  {
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086D4D8();
    }

    sub_10028E908(v78);
    return sub_10002249C(&v75);
  }

  *(sub_1000B12AC(v78) + 88) = sub_1007314F0;
  v51 = v78;
  *(v78 + 4) = sub_100731580;
  *(sub_1000B12AC(v51) + 40) = 5000;
  v52 = sub_1000B12AC(v78);
  sub_10028ED44(*v52);
  v30 = 0;
LABEL_95:
  sub_1002AB810("d", 9, 0, a6, a5, v25, v26, v27, &byte_100BCEB9A);
  sub_100022214(&v75);
  if (v65)
  {
    if (v78)
    {
      v43 = *(v78 + 2);
    }

    else
    {
      v43 = 0;
    }

    sub_100736748(a1, v43, v64, v63, 0, v30, 1, v76 | (v77 << 32));
  }

  return sub_10002249C(&v75);
}

void sub_1007386F0(int *a1, _DWORD *a2, _DWORD *a3)
{
  v12 = *a1;
  v13 = *(a1 + 2);
  if (qword_100B508F0 != -1)
  {
    sub_10086BF80();
  }

  v5 = sub_1000E6554(off_100B508E8, &v12, 1);
  if (v5)
  {
    v6 = v5;
    sub_10053E4A8(v5, a2);
    v11 = xmmword_1008AA1A0;
    __p = 0;
    v9 = 0;
    v10 = 0;
    if (sub_10053BFB4(v6, &v11, 0x201u, &__p))
    {
      v7 = __p;
      if (*__p == 1)
      {
        *a3 = *(__p + 2);
      }
    }

    else
    {
      *a3 = 0;
      v7 = __p;
      if (!__p)
      {
        return;
      }
    }

    v9 = v7;
    operator delete(v7);
  }

  else if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
  {
    sub_10086D548();
  }
}

void sub_1007387F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100738814(int *a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  if (qword_100B508F0 != -1)
  {
    sub_10086BF80();
  }

  v3 = sub_1000E6554(off_100B508E8, &v4, 1);
  if (v3)
  {
    sub_10053E4E0(v3, a2);
  }

  else if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
  {
    sub_10086D584();
  }
}

void sub_1007388B0(uint64_t a1, int *a2, unsigned __int16 a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, unsigned int a7, uint64_t a8)
{
  if (*(a1 + 683))
  {
    v65 = *a2;
    v66 = *(a2 + 2);
    if (qword_100B508F0 != -1)
    {
      sub_10086BF80();
    }

    v14 = sub_1000E6554(off_100B508E8, &v65, 1);
    v64 = 0;
    sub_1000216B4(&v64);
    v63 = 0;
    if (sub_1000ABC7C(a3, &v63) || !v63 || !sub_1000B12AC(v63))
    {
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        sub_10086D71C();
      }

      goto LABEL_25;
    }

    v15 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(v14, __p);
      v16 = v62 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *v68 = v16;
      *&v68[8] = 1024;
      *v69 = a7;
      *&v69[4] = 1024;
      *v70 = a8;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "fastConnectEchoRspEvent for device %s of length %d with result %d", buf, 0x18u);
      if (v62 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (a7 < 0x18)
    {
LABEL_18:
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        sub_10086D6AC();
      }

      sub_10028E908(v63);
      sub_100022214(&v64);
LABEL_25:
      sub_100736748(a1, 0, 0, 0, 0, a8, 0, *a2 | (*(a2 + 2) << 32));
LABEL_26:
      sub_10002249C(&v64);
      return;
    }

    v17 = *a6;
    if (v17 != 2)
    {
      if (v17 == 7)
      {
        a8 = *(a6 + 2);
        v18 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *v68 = a8;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "fastConnectEchoRspEvent with errorCode %d", buf, 8u);
        }
      }

      goto LABEL_18;
    }

    v55 = sub_1000E1FE8(a2);
    v20 = *(a6 + 1);
    v21 = a6[4];
    v22 = a6[5];
    *(sub_1000B12AC(v63) + 8) = v21 | (v22 << 8);
    v23 = a6[6];
    v24 = a6[7];
    *(sub_1000B12AC(v63) + 32) = v23 | (v24 << 8);
    v25 = *(a6 + 2);
    v26 = *(a6 + 12);
    if (v20 < 2)
    {
LABEL_62:
      if (v26)
      {
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
        {
          sub_10086D3CC();
        }

        a8 = 4507;
      }

      else if (!a8)
      {
        v37 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
        {
          v38 = v25;
          v39 = *(sub_1000B12AC(v63) + 8);
          v40 = *(v63 + 2);
          v41 = *(sub_1000B12AC(v63) + 32);
          v42 = *(sub_1000B12AC(v63) + 36);
          *buf = 67110144;
          *v68 = v39;
          *&v68[4] = 1024;
          *&v68[6] = v40;
          *v69 = 1024;
          *&v69[2] = v41;
          *v70 = 1024;
          *&v70[2] = v42;
          v71 = 1024;
          v25 = v38;
          v72 = v38;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "fastConnectEchoRspEvent CID sizes Remote %d, Local %d, Remote MTU %d, local %d, supported profiles %d", buf, 0x20u);
        }

        sub_10023B994(v55);
        v43 = sub_1000B12AC(v63);
        v44 = *(v55 + 48);
        *(v43 + 14) = *(v55 + 52);
        *(v43 + 10) = v44;
        *sub_1000B12AC(v63) = v55;
        *(sub_1000B12AC(v63) + 25) = 0;
        *(sub_1000B12AC(v63) + 28) = 0;
        if ((v26 & 4) != 0)
        {
          sub_1002D7A34(a2);
        }

        *(sub_1000B12AC(v63) + 16) = 4;
        v45 = v63;
        v63[19] = -1;
        a8 = sub_10029E064(*(v45 + 2), 4, 5u, 0, v45 + 12, 0xFFFFFFFF);
        v46 = sub_1000B12AC(v63);
        sub_1000CD5B8(*v46);
        *(sub_1000B12AC(v63) + 40) = 5000;
        v47 = sub_1000B12AC(v63);
        sub_10028ED44(*v47);
        if (!a8)
        {
          sub_100022214(&v64);
          a8 = 0;
          v48 = *(v63 + 2);
LABEL_76:
          sub_100736748(a1, v48, v26, v25, 0, a8, 0, *a2 | (*(a2 + 2) << 32));
          goto LABEL_26;
        }
      }

      sub_10028E908(v63);
      sub_100022214(&v64);
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        sub_10086D63C();
      }

      v48 = 0;
      LOBYTE(v26) = 0;
      v25 = 0;
      goto LABEL_76;
    }

    if (a7 < 0x1C)
    {
      v49 = "ByteStream_NumReadBytesAvail(bs) >= 4";
      v50 = 2554;
    }

    else
    {
      v52 = *(a6 + 2);
      if (a7 > 0x1D)
      {
        v53 = *(a6 + 12);
        v56 = *(a6 + 5);
        v54 = *(a6 + 6);
        v27 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *v68 = v56;
          *&v68[4] = 1024;
          *&v68[6] = v54;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "remoteAppleSupportedFeatures %x remoteSdpServiceDataBaseState %x", buf, 0xEu);
        }

        v60 = 0;
        sub_1007386F0(a2, &v60 + 1, &v60);
        v28 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *v68 = HIDWORD(v60);
          *&v68[4] = 1024;
          *&v68[6] = v60;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "deviceAppleSupportedFeatures %x deviceSdpServiceDataBaseState %x", buf, 0xEu);
        }

        v29 = HIDWORD(v60);
        if (HIDWORD(v60) != v56)
        {
          v30 = qword_100BCEAC0;
          if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *v68 = v29;
            *&v68[4] = 1024;
            *&v68[6] = v56;
            _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "DID expected %x received %x", buf, 0xEu);
            v30 = qword_100BCEAC0;
          }

          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_1000C23E0(v14, __p);
            sub_10086D2F4();
          }

          sub_10053DCEC(v14, v56, 0);
        }

        LOBYTE(v26) = v53;
        if (v60 != v54)
        {
          if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
          {
            sub_10086D5C0();
          }

          if (((v53 >> 4) & 1 & (*(a1 + 672) >> 4)) != 0)
          {
            a8 = 4515;
          }

          else
          {
            a8 = 4504;
          }
        }

        if (v20 == 2)
        {
          goto LABEL_61;
        }

        v59 = 0;
        if (a7 <= 0x21)
        {
          v51 = 2581;
        }

        else
        {
          if (a7 > 0x25)
          {
            v31 = *(a6 + 30);
            v32 = *(a6 + 34);
            sub_100738814(a2, &v59);
            v34 = v59;
            v33 = HIDWORD(v59);
            if (__PAIR64__(v59, HIDWORD(v59)) != __PAIR64__(v32, v31))
            {
              v35 = qword_100BCEAC0;
              if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109888;
                *v68 = v34;
                *&v68[4] = 1024;
                *&v68[6] = v33;
                *v69 = 1024;
                *&v69[2] = v32;
                *v70 = 1024;
                *&v70[2] = v31;
                _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Supported Extended Features expected: 0x%x 0x%x, Received: 0x%x 0x%x", buf, 0x1Au);
                v35 = qword_100BCEAC0;
              }

              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                sub_1000C23E0(v14, v57);
                v36 = v58 >= 0 ? v57 : v57[0];
                *buf = 136315650;
                *v68 = v36;
                *&v68[8] = 1024;
                *v69 = v32;
                *&v69[4] = 1024;
                *v70 = v31;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Updating Supported Extended Features for device %s to 0x%x 0x%x", buf, 0x18u);
                if (v58 < 0)
                {
                  operator delete(v57[0]);
                }
              }

              sub_10053DFDC(v14, v32 | (v31 << 32), 0);
            }

            LOBYTE(v26) = v53;
LABEL_61:
            v25 = v52;
            goto LABEL_62;
          }

          v51 = 2582;
        }

        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/core/FastConnectManager.mm", v51, "ByteStream_NumReadBytesAvail(bs) >= 4");
      }

      v49 = "ByteStream_NumReadBytesAvail(bs) >= 2";
      v50 = 2555;
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/core/FastConnectManager.mm", v50, v49);
  }

  v19 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Stack has stopped, so don't handle Fast Connect event.", buf, 2u);
  }
}

void sub_1007391B4(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 16);
  v4 = 3;
  do
  {
    if (*(v3 + 4))
    {
      v5 = *v3;
      if (*v3)
      {
        v7 = *(a2 + 8);
        v6 = *(a2 + 16);
        if (v7 >= v6)
        {
          v9 = (v7 - *a2) >> 3;
          if ((v9 + 1) >> 61)
          {
            sub_1000C7698();
          }

          v10 = v6 - *a2;
          v11 = v10 >> 2;
          if (v10 >> 2 <= (v9 + 1))
          {
            v11 = v9 + 1;
          }

          if (v10 >= 0x7FFFFFFFFFFFFFF8)
          {
            v12 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v11;
          }

          if (v12)
          {
            sub_100008108(a2, v12);
          }

          *(8 * v9) = v5;
          v8 = 8 * v9 + 8;
          v13 = *(a2 + 8) - *a2;
          v14 = (8 * v9 - v13);
          memcpy(v14, *a2, v13);
          v15 = *a2;
          *a2 = v14;
          *(a2 + 8) = v8;
          *(a2 + 16) = 0;
          if (v15)
          {
            operator delete(v15);
          }
        }

        else
        {
          *v7 = v5;
          v8 = (v7 + 1);
        }

        *(a2 + 8) = v8;
      }
    }

    v3 += 26;
    --v4;
  }

  while (v4);
}

void sub_1007392B4(uint64_t a1)
{
  v2 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "stackDidStart", v3, 2u);
  }

  *(a1 + 683) = 1;
}

void sub_100739328()
{
  v0 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "stackWillStop", v1, 2u);
  }
}

void sub_100739390(uint64_t a1)
{
  v2 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "stackDidStop", v3, 2u);
  }

  sub_100730D34(a1);
  *(a1 + 683) = 0;
}

void sub_100739428(uint64_t a1)
{
  if (qword_100B540E0 != -1)
  {
    sub_10086D7A0();
  }

  v2 = off_100B540D8;
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);

  sub_10073634C(v2, v3, v4);
}

void *sub_10073947C(void *a1)
{
  *a1 = off_100B0AF00;
  if (a1[2])
  {
    operator delete[]();
  }

  return a1;
}

void sub_1007394D8(void *a1)
{
  *a1 = off_100B0AF00;
  if (a1[2])
  {
    operator delete[]();
  }

  operator delete();
}

_BYTE *sub_100739554(uint64_t a1)
{
  if (qword_100B540E0 != -1)
  {
    sub_10086D7A0();
  }

  v2 = off_100B540D8;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 26);
  v6 = *(a1 + 28);
  v7 = *(a1 + 32);

  return sub_100737844(v2, v3, v4, v5, v6, v7);
}

void sub_1007395B8(uint64_t a1, int *a2, uint64_t a3, const void *a4, unsigned int a5, const void *a6, unsigned int a7, int a8)
{
  *(a1 + 8) = 1;
  *a1 = off_100B0AF38;
  v8 = *a2;
  *(a1 + 14) = *(a2 + 2);
  *(a1 + 10) = v8;
  *(a1 + 16) = a3;
  operator new[]();
}

void sub_1007396A0(void *a1)
{
  sub_100739740(a1);

  operator delete();
}

void sub_1007396D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100B540E0 != -1)
  {
    sub_10086D7A0();
  }

  v5 = off_100B540D8;
  v6 = *(a1 + 16);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 52);

  sub_1007388B0(v5, (a1 + 10), v6, a4, 0, v7, v8, v9);
}

void *sub_100739740(void *a1)
{
  *a1 = off_100B0AF38;
  if (a1[3])
  {
    operator delete[]();
  }

  if (a1[5])
  {
    operator delete[]();
  }

  return a1;
}

void sub_1007397C8(uint64_t a1)
{
  if (qword_100B540E0 != -1)
  {
    sub_10086D7A0();
  }

  v2 = off_100B540D8;
  v3 = *(a1 + 10);
  v4 = *(a1 + 12);

  sub_1007373E4(v2, v3, v4);
}

void *sub_100739820(void *a1)
{
  *a1 = &off_100B0AFA8;
  if (a1[2])
  {
    operator delete[]();
  }

  return a1;
}

void sub_10073987C(void *a1)
{
  *a1 = &off_100B0AFA8;
  if (a1[2])
  {
    operator delete[]();
  }

  operator delete();
}

void sub_1007398F8(uint64_t a1)
{
  if (qword_100B540E0 != -1)
  {
    sub_10086D7A0();
  }

  v2 = off_100B540D8;
  v3 = *(a1 + 10);
  v4 = *(a1 + 16);
  v5 = *(a1 + 12);

  sub_10073753C(v2, v3, v4, v5);
}

uint64_t sub_100739DD8(uint64_t a1)
{
  *a1 = &off_100B0BB20;
  *(a1 + 8) = &off_100B0BB50;
  *(a1 + 16) = &off_100B0BB68;
  *(a1 + 24) = &off_100B0BB98;
  sub_100007E30(&__p, "LeConnectionManager");
  sub_1005B0B68((a1 + 32), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = off_100B0B190;
  *(a1 + 8) = &off_100B0B220;
  *(a1 + 16) = off_100B0B238;
  *(a1 + 24) = off_100B0B268;
  *(a1 + 32) = &off_100B0B2C8;
  *(a1 + 88) = off_100B0B2E0;
  *(a1 + 96) = off_100B0B300;
  sub_100044BBC((a1 + 120));
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 336) = a1 + 344;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 360) = a1 + 368;
  *(a1 + 392) = 0u;
  *(a1 + 384) = a1 + 392;
  *(a1 + 416) = 0u;
  *(a1 + 408) = a1 + 416;
  *(a1 + 440) = 0u;
  *(a1 + 432) = a1 + 440;
  *(a1 + 464) = 0u;
  *(a1 + 456) = a1 + 464;
  *(a1 + 488) = 0u;
  *(a1 + 480) = a1 + 488;
  *(a1 + 512) = 0u;
  *(a1 + 504) = a1 + 512;
  *(a1 + 536) = 0u;
  *(a1 + 528) = a1 + 536;
  *(a1 + 552) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 608) = a1 + 616;
  *(a1 + 632) = 0;
  *(a1 + 648) = 0u;
  *(a1 + 640) = a1 + 648;
  *(a1 + 672) = 0u;
  *(a1 + 664) = a1 + 672;
  *(a1 + 696) = 0u;
  *(a1 + 688) = a1 + 696;
  *(a1 + 720) = 0u;
  *(a1 + 712) = a1 + 720;
  *(a1 + 736) = -127;
  *(a1 + 808) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0;
  *(a1 + 800) = a1 + 808;
  *(a1 + 824) = 0;
  *(a1 + 832) = 0;
  *(a1 + 834) = 30;
  *(a1 + 848) = 0u;
  *(a1 + 840) = a1 + 848;
  *(a1 + 864) = 0;
  *(a1 + 872) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 928) = 0;
  *(a1 + 912) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 936) = a1 + 944;
  sub_100364534((a1 + 960));
  *(a1 + 1008) = 1;
  sub_100364534((a1 + 1016));
  *(a1 + 1064) = 1;
  *(a1 + 1067) = 0;
  *(a1 + 1082) = xmmword_1008C52C0;
  *(a1 + 1098) = 0xE10025801F407D0;
  *(a1 + 1106) = 786444;
  *(a1 + 1110) = 3074;
  *(a1 + 1112) = 0;
  *(a1 + 1114) = 0x6000600180018;
  *(a1 + 1122) = 771;
  *(a1 + 1126) = 1;
  *(a1 + 1128) = 0;
  *(a1 + 1144) = 0u;
  *(a1 + 1136) = a1 + 1144;
  *(a1 + 1168) = 0u;
  *(a1 + 1160) = a1 + 1168;
  *(a1 + 1184) = 0;
  *(a1 + 1200) = 0u;
  *(a1 + 1192) = a1 + 1200;
  *(a1 + 1216) = 10;
  *(a1 + 1220) = 3600;
  *(a1 + 1224) = 2;
  *(a1 + 1228) = 3600;
  *(a1 + 1240) = 0u;
  *(a1 + 1232) = a1 + 1240;
  *(a1 + 1264) = 0u;
  *(a1 + 1256) = a1 + 1264;
  *(a1 + 1288) = 0u;
  *(a1 + 1280) = a1 + 1288;
  *(a1 + 1312) = 0u;
  *(a1 + 1304) = a1 + 1312;
  *(a1 + 1336) = 0u;
  *(a1 + 1328) = a1 + 1336;
  *(a1 + 1352) = -1415142493;
  *(a1 + 1356) = -24149;
  *(a1 + 1358) = -90;
  *(a1 + 1368) = 0u;
  *(a1 + 1360) = a1 + 1368;
  *(a1 + 1384) = 0;
  *(a1 + 1392) = 2;
  *(a1 + 1408) = 0u;
  *(a1 + 1400) = a1 + 1408;
  *(a1 + 1432) = 0u;
  *(a1 + 1424) = a1 + 1432;
  *(a1 + 1456) = 0u;
  *(a1 + 1448) = a1 + 1456;
  *(a1 + 1480) = 0u;
  *(a1 + 1472) = a1 + 1480;
  *(a1 + 1496) = 0x7080000000ALL;
  *(a1 + 1504) = 10;
  *(a1 + 1512) = 0;
  *(a1 + 1520) = 0;
  *(a1 + 1540) = 0;
  *(a1 + 1548) = 0;
  *(a1 + 1524) = 0u;
  *(a1 + 1552) = 1;
  *(a1 + 1568) = 0u;
  *(a1 + 1560) = a1 + 1568;
  *(a1 + 1584) = 0;
  *(a1 + 1592) = 0;
  *(a1 + 1601) = 0;
  *(a1 + 1603) = 0;
  v196 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v194, "MaxFilterAcceptListSize");
  v3 = (*(*v2 + 88))(v2, buf, v194, &v196);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v199 < 0)
  {
    operator delete(*buf);
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  else if (!v3)
  {
    goto LABEL_15;
  }

  v4 = v196;
  v5 = qword_100BCE980;
  if (v196 < 2)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086D7B4();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Warning: Using override value (%d) for max number of devices in connection Filter Accept List", buf, 8u);
      LOBYTE(v4) = v196;
    }

    *(a1 + 832) = v4;
  }

LABEL_15:
  v6 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v194, "DefaultConnectionInterval");
  v7 = (*(*v6 + 88))(v6, buf, v194, &v196);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v199 < 0)
  {
    operator delete(*buf);
    if (!v7)
    {
      goto LABEL_27;
    }
  }

  else if (!v7)
  {
    goto LABEL_27;
  }

  v8 = v196;
  v9 = qword_100BCE980;
  if ((v196 - 8) > 0x3E0)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086D824();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Warning: Using override value %d ms for default LE connection interval", buf, 8u);
      LOWORD(v8) = v196;
    }

    *(a1 + 834) = v8;
  }

LABEL_27:
  v10 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v194, "DataLength");
  v11 = (*(*v10 + 88))(v10, buf, v194, &v196);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v199 < 0)
  {
    operator delete(*buf);
    if (!v11)
    {
      goto LABEL_39;
    }
  }

  else if (!v11)
  {
    goto LABEL_39;
  }

  v12 = v196;
  v13 = qword_100BCE980;
  if (v196)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Warning: Using override value %d ms for LE data length", buf, 8u);
      LOWORD(v12) = v196;
    }

    *(a1 + 836) = v12;
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10086D894();
  }

LABEL_39:
  v14 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v194, "AllowAllConnectionParameterUpdates");
  v15 = (*(*v14 + 88))(v14, buf, v194, &v196);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v199 < 0)
  {
    operator delete(*buf);
    if (!v15)
    {
      goto LABEL_52;
    }
  }

  else if (!v15)
  {
    goto LABEL_52;
  }

  v16 = qword_100BCE980;
  if (v196)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Warning: Allow all connection parameters from remote request", buf, 2u);
      v17 = v196 != 0;
    }

    else
    {
      v17 = 1;
    }

    byte_100BC7AE0 = v17;
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10086D908();
  }

LABEL_52:
  v18 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v194, "EnablePhyStatsFindMy");
  v19 = (*(*v18 + 88))(v18, buf, v194, &v196);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v199 < 0)
  {
    operator delete(*buf);
    if (!v19)
    {
      goto LABEL_65;
    }
  }

  else if (!v19)
  {
    goto LABEL_65;
  }

  v20 = qword_100BCE980;
  if (v196)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Warning: Enabling PHY Stats for findMy connections", buf, 2u);
      v21 = v196 != 0;
    }

    else
    {
      v21 = 1;
    }

    byte_100BC7AE1 = v21;
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10086D97C();
  }

LABEL_65:
  *(a1 + 568) = xmmword_1008C52D0;
  *(a1 + 584) = xmmword_1008C52E0;
  *(a1 + 600) = 9000;
  *(a1 + 256) = xmmword_1008C52F0;
  *(a1 + 272) = xmmword_1008C5300;
  v22 = sub_10000E92C();
  sub_100007E30(buf, "CoexConnectionScanParameters");
  sub_100007E30(v194, "CoexConnectionScanTimeout");
  v23 = (*(*v22 + 88))(v22, buf, v194, &v196);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v199 < 0)
  {
    operator delete(*buf);
    if (!v23)
    {
      goto LABEL_77;
    }
  }

  else if (!v23)
  {
    goto LABEL_77;
  }

  v24 = v196;
  v25 = qword_100BCE980;
  if (v196)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Warning: Override fFastConnectionScanDurationMsCoexCarPlay=%dms", buf, 8u);
      v24 = v196;
    }

    *(a1 + 596) = v24;
    *(a1 + 600) = v24;
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10086D908();
  }

LABEL_77:
  v26 = sub_10000E92C();
  sub_100007E30(buf, "CoexConnectionScanParameters");
  sub_100007E30(v194, "CoexConnectionScanIntervalWithAudio");
  v27 = (*(*v26 + 88))(v26, buf, v194, &v196);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v199 < 0)
  {
    operator delete(*buf);
    if (!v27)
    {
      goto LABEL_89;
    }
  }

  else if (!v27)
  {
    goto LABEL_89;
  }

  v28 = v196;
  v29 = qword_100BCE980;
  if (v196)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v28 * 0.625;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Warning: Override fFastConnectionScanIntervalMsCoexCarPlayWithAudio=%fms", buf, 0xCu);
      LOWORD(v28) = v196;
    }

    *(a1 + 272) = v28;
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10086D9F0();
  }

LABEL_89:
  v30 = sub_10000E92C();
  sub_100007E30(buf, "CoexConnectionScanParameters");
  sub_100007E30(v194, "CoexConnectionScanIntervalWithoutAudio");
  v31 = (*(*v30 + 88))(v30, buf, v194, &v196);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v199 < 0)
  {
    operator delete(*buf);
    if (!v31)
    {
      goto LABEL_101;
    }
  }

  else if (!v31)
  {
    goto LABEL_101;
  }

  v32 = v196;
  v33 = qword_100BCE980;
  if (v196)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v32 * 0.625;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Warning: Override fFastConnectionScanIntervalMsCoexCarPlayNoAudio=%fms", buf, 0xCu);
      LOWORD(v32) = v196;
    }

    *(a1 + 270) = v32;
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10086DA64();
  }

LABEL_101:
  v34 = +[NSMutableSet set];
  v35 = *(a1 + 744);
  *(a1 + 744) = v34;

  v36 = +[NSMutableSet set];
  v37 = *(a1 + 752);
  *(a1 + 752) = v36;

  v38 = +[NSMutableSet set];
  v39 = *(a1 + 760);
  *(a1 + 760) = v38;

  v40 = +[NSMutableSet set];
  v41 = *(a1 + 768);
  *(a1 + 768) = v40;

  v42 = +[NSMutableSet set];
  v43 = *(a1 + 776);
  *(a1 + 776) = v42;

  v44 = +[NSMutableSet set];
  v45 = *(a1 + 784);
  *(a1 + 784) = v44;

  v46 = +[NSMutableSet set];
  v47 = *(a1 + 792);
  *(a1 + 792) = v46;

  v48 = +[NSMutableSet set];
  v49 = *(a1 + 824);
  *(a1 + 824) = v48;

  *(a1 + 1111) = 24;
  v52 = sub_10000C7D0(v50, v51);
  *(a1 + 1110) = (*(*v52 + 4088))(v52, *(a1 + 1111));
  v53 = sub_10000E92C();
  if ((*(*v53 + 8))(v53))
  {
    sub_10073CC88(a1);
  }

  v54 = *(a1 + 552);
  *(a1 + 552) = 0;

  *buf = 0;
  sub_100016250(buf);
  v55 = *&buf[4];
  *(a1 + 872) = *buf;
  *(a1 + 880) = v55;
  *(a1 + 888) = 0;
  v193 = 0;
  v192 = 0;
  *(a1 + 1068) = 0;
  v56 = (a1 + 1070);
  *(a1 + 1070) = 0;
  *(a1 + 1074) = 0;
  v57 = sub_10000E92C();
  sub_100007E30(buf, "ScanCore");
  sub_100007E30(v194, "IsScanCoreConnectionOverriden");
  if ((*(*v57 + 72))(v57, buf, v194, a1 + 1068))
  {
    v58 = *(a1 + 1068);
    if (v195 < 0)
    {
      operator delete(v194[0]);
    }

    if (v199 < 0)
    {
      operator delete(*buf);
      if (!v58)
      {
        goto LABEL_165;
      }
    }

    else if (!v58)
    {
      goto LABEL_165;
    }

    v59 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Overriding Connection Scan Parameters on ScanCore.", buf, 2u);
    }

    v60 = sub_10000E92C();
    sub_100007E30(buf, "ScanCore");
    sub_100007E30(v194, "IsScanCoreEnabledConnectionScan");
    if (!(*(*v60 + 72))(v60, buf, v194, a1 + 1075))
    {
      if (v195 < 0)
      {
        operator delete(v194[0]);
      }

      if (v199 < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_162;
    }

    v61 = *(a1 + 1075);
    if (v195 < 0)
    {
      operator delete(v194[0]);
    }

    if (v199 < 0)
    {
      operator delete(*buf);
      if (!v61)
      {
LABEL_162:
        v80 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "Overriding ScanCore Disabled for Connection Scan.", buf, 2u);
        }

        *(a1 + 1070) = 0;
        goto LABEL_165;
      }
    }

    else if (!v61)
    {
      goto LABEL_162;
    }

    v62 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Overriding ScanCore Enabled for Connection Scan.", buf, 2u);
    }

    v63 = sub_10000E92C();
    sub_100007E30(buf, "ScanCore");
    sub_100007E30(v194, "IntervalConnection");
    v64 = (*(*v63 + 88))(v63, buf, v194, &v193);
    if (v193)
    {
      v65 = v64;
    }

    else
    {
      v65 = 0;
    }

    if (v195 < 0)
    {
      operator delete(v194[0]);
    }

    if (v199 < 0)
    {
      operator delete(*buf);
    }

    if (v65)
    {
      v66 = v193;
      *(a1 + 1072) = v193;
      v67 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v66;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Overriding ScanCore Connection Scan Interval %d.", buf, 8u);
      }
    }

    v68 = sub_10000E92C();
    sub_100007E30(buf, "ScanCore");
    sub_100007E30(v194, "WindowConnection");
    v69 = (*(*v68 + 88))(v68, buf, v194, &v193);
    if (v193)
    {
      v70 = v69;
    }

    else
    {
      v70 = 0;
    }

    if (v195 < 0)
    {
      operator delete(v194[0]);
    }

    if (v199 < 0)
    {
      operator delete(*buf);
    }

    if (v70)
    {
      v71 = v193;
      *v56 = v193;
      v72 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v71;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Overriding ScanCore Connection Scan Window %d.", buf, 8u);
        LOWORD(v71) = *v56;
      }

      if (*(a1 + 1072) < v71)
      {
        *(a1 + 1068) = 0;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
        {
          sub_10086DAD8();
        }

        *(a1 + 1070) = 0;
      }
    }

    v73 = sub_10000E92C();
    sub_100007E30(buf, "ScanCore");
    sub_100007E30(v194, "eLNAConnection");
    v74 = (*(*v73 + 72))(v73, buf, v194, &v192);
    v75 = v192;
    if (v195 < 0)
    {
      operator delete(v194[0]);
    }

    v76 = v74 & v75;
    if (v199 < 0)
    {
      operator delete(*buf);
    }

    if (v76)
    {
      v77 = v192;
      *(a1 + 1074) = v192;
      v78 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        v79 = "disabled";
        if (v77)
        {
          v79 = "enabled";
        }

        *buf = 136315138;
        *&buf[4] = v79;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Overriding ScanCore Connection Scan eLNA %s.", buf, 0xCu);
      }
    }
  }

  else
  {
    if (v195 < 0)
    {
      operator delete(v194[0]);
    }

    if (v199 < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_165:
  v191 = 0;
  *(a1 + 1076) = 0;
  *(a1 + 1078) = 0;
  v81 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v194, "IsConnectionScanOverriden");
  if ((*(*v81 + 72))(v81, buf, v194, a1 + 1076))
  {
    v82 = *(a1 + 1076);
    if (v195 < 0)
    {
      operator delete(v194[0]);
    }

    if (v199 < 0)
    {
      operator delete(*buf);
      if (!v82)
      {
        goto LABEL_202;
      }
    }

    else if (!v82)
    {
      goto LABEL_202;
    }

    v83 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "Overriding Connection Scan Parameters on MainCore.", buf, 2u);
    }

    v84 = sub_10000E92C();
    sub_100007E30(buf, "LE");
    sub_100007E30(v194, "ConnectionScanInterval");
    v85 = (*(*v84 + 88))(v84, buf, v194, &v191);
    if (v191)
    {
      v86 = v85;
    }

    else
    {
      v86 = 0;
    }

    if (v195 < 0)
    {
      operator delete(v194[0]);
    }

    if (v199 < 0)
    {
      operator delete(*buf);
    }

    if (v86)
    {
      v87 = v191;
      *(a1 + 1080) = v191;
      v88 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v87;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "Overriding MainCore Connection Scan Interval %d.", buf, 8u);
      }
    }

    v89 = sub_10000E92C();
    sub_100007E30(buf, "LE");
    sub_100007E30(v194, "ConnectionScanWindow");
    v90 = (*(*v89 + 88))(v89, buf, v194, &v191);
    if (v191)
    {
      v91 = v90;
    }

    else
    {
      v91 = 0;
    }

    if (v195 < 0)
    {
      operator delete(v194[0]);
    }

    if (v199 < 0)
    {
      operator delete(*buf);
    }

    if (v91)
    {
      v92 = v191;
      *(a1 + 1078) = v191;
      v93 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v92;
        _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Overriding MainCore Connection Scan Window %d.", buf, 8u);
      }
    }

    if (*(a1 + 1078) > *(a1 + 1080))
    {
      *(a1 + 1076) = 0;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086DB48();
      }

      *(a1 + 1078) = 0;
    }
  }

  else
  {
    if (v195 < 0)
    {
      operator delete(v194[0]);
    }

    if (v199 < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_202:
  v190 = 0;
  v94 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v194, "MinRSSIConnection");
  v95 = (*(*v94 + 88))(v94, buf, v194, &v190);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v199 < 0)
  {
    operator delete(*buf);
    if (!v95)
    {
      goto LABEL_210;
    }
  }

  else if (!v95)
  {
    goto LABEL_210;
  }

  v96 = v190;
  *(a1 + 1125) = v190;
  v97 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v96;
    _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "MinRSSIConnection %d overridden", buf, 8u);
  }

LABEL_210:
  v189 = 0;
  v98 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v194, "GlobalMinRSSIConnection");
  v99 = (*(*v98 + 88))(v98, buf, v194, &v189);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v199 < 0)
  {
    operator delete(*buf);
    if (!v99)
    {
      goto LABEL_218;
    }
  }

  else if (!v99)
  {
    goto LABEL_218;
  }

  v100 = v189;
  *(a1 + 1128) = v189;
  v101 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v100;
    _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "GlobalMinRSSIConnection %d overridden", buf, 8u);
  }

LABEL_218:
  v102 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v194, "MinRSSIConnectionEnabled");
  if ((*(*v102 + 72))(v102, buf, v194, a1 + 1126))
  {
    v103 = *(a1 + 1126);
    if (v195 < 0)
    {
      operator delete(v194[0]);
    }

    if (v199 < 0)
    {
      operator delete(*buf);
      if (!v103)
      {
        goto LABEL_231;
      }
    }

    else if (!v103)
    {
      goto LABEL_231;
    }

    v104 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "MinRSSIConnectionEnabled is enabled (overridden)", buf, 2u);
    }
  }

  else
  {
    if (v195 < 0)
    {
      operator delete(v194[0]);
    }

    if (v199 < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_231:
  v188 = 0;
  v105 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v194, "NumDisconnectionsFromDisabledToStageOne");
  v106 = (*(*v105 + 88))(v105, buf, v194, &v188);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v199 < 0)
  {
    operator delete(*buf);
    if (!v106)
    {
      goto LABEL_239;
    }
  }

  else if (!v106)
  {
    goto LABEL_239;
  }

  v107 = v188;
  *(a1 + 1216) = v188;
  v108 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v107;
    _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "NumDisconnectionsFromDisabledToStageOne %d overridden", buf, 8u);
  }

LABEL_239:
  v109 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v194, "NumDisconnectionsFromStageOneToDisabled");
  v110 = (*(*v109 + 88))(v109, buf, v194, &v188);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v199 < 0)
  {
    operator delete(*buf);
    if (!v110)
    {
      goto LABEL_247;
    }
  }

  else if (!v110)
  {
    goto LABEL_247;
  }

  v111 = v188;
  *(a1 + 1224) = v188;
  v112 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v111;
    _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "NumDisconnectionsFromStageOneToDisabled %d overridden", buf, 8u);
  }

LABEL_247:
  v187 = 0;
  v113 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v194, "TimeDurationFromDisabledToStageOne");
  v114 = (*(*v113 + 88))(v113, buf, v194, &v187);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v199 < 0)
  {
    operator delete(*buf);
    if (!v114)
    {
      goto LABEL_255;
    }
  }

  else if (!v114)
  {
    goto LABEL_255;
  }

  v115 = v187;
  *(a1 + 1220) = v187;
  v116 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v115;
    _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "TimeDurationFromDisabledToStageOne %d overridden", buf, 8u);
  }

LABEL_255:
  v117 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v194, "TimeDurationFromStageOneToDisabled");
  v118 = (*(*v117 + 88))(v117, buf, v194, &v187);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v199 < 0)
  {
    operator delete(*buf);
    if (!v118)
    {
      goto LABEL_263;
    }
  }

  else if (!v118)
  {
    goto LABEL_263;
  }

  v119 = v187;
  *(a1 + 1228) = v187;
  v120 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v119;
    _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "TimeDurationFromStageOneToDisabled %d overridden", buf, 8u);
  }

LABEL_263:
  v186 = -93;
  v121 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v194, "ConnRSSIStageOneFindMy");
  v122 = (*(*v121 + 88))(v121, buf, v194, &v186);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v199 < 0)
  {
    operator delete(*buf);
    if (!v122)
    {
      goto LABEL_271;
    }
  }

  else if (!v122)
  {
    goto LABEL_271;
  }

  v123 = v186;
  *(a1 + 1352) = v186;
  v124 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v123;
    _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "ConnRSSIStageOneFindMy %d overridden", buf, 8u);
  }

LABEL_271:
  v125 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v194, "ConnRSSIStageOneMagnet");
  v126 = (*(*v125 + 88))(v125, buf, v194, &v186);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v199 < 0)
  {
    operator delete(*buf);
    if (!v126)
    {
      goto LABEL_279;
    }
  }

  else if (!v126)
  {
    goto LABEL_279;
  }

  v127 = v186;
  *(a1 + 1353) = v186;
  v128 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v127;
    _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "ConnRSSIStageOneMagnet %d overridden", buf, 8u);
  }

LABEL_279:
  v129 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v194, "ConnRSSIStageOneExternal_Lock");
  v130 = (*(*v129 + 88))(v129, buf, v194, &v186);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v199 < 0)
  {
    operator delete(*buf);
    if (!v130)
    {
      goto LABEL_287;
    }
  }

  else if (!v130)
  {
    goto LABEL_287;
  }

  v131 = v186;
  *(a1 + 1354) = v186;
  v132 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v131;
    _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "ConnRSSIStageOneExternal_Lock %d overridden", buf, 8u);
  }

LABEL_287:
  v133 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v194, "ConnRSSIStageOneDigitalCarKey");
  v134 = (*(*v133 + 88))(v133, buf, v194, &v186);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v199 < 0)
  {
    operator delete(*buf);
    if (!v134)
    {
      goto LABEL_295;
    }
  }

  else if (!v134)
  {
    goto LABEL_295;
  }

  v135 = v186;
  *(a1 + 1355) = v186;
  v136 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v135;
    _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEFAULT, "ConnRSSIStageOneDigitalCarKey %d overridden", buf, 8u);
  }

LABEL_295:
  v137 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v194, "ConnRSSIStageOneDigitalHomeKey");
  v138 = (*(*v137 + 88))(v137, buf, v194, &v186);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v199 < 0)
  {
    operator delete(*buf);
    if (!v138)
    {
      goto LABEL_303;
    }
  }

  else if (!v138)
  {
    goto LABEL_303;
  }

  v139 = v186;
  *(a1 + 1356) = v186;
  v140 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v139;
    _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "ConnRSSIStageOneDigitalHomeKey %d overridden", buf, 8u);
  }

LABEL_303:
  v141 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v194, "ConfigureCreateConnectionEnabled");
  v142 = (*(*v141 + 72))(v141, buf, v194, a1 + 1127);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v199 < 0)
  {
    operator delete(*buf);
    if (!v142)
    {
      goto LABEL_311;
    }
  }

  else if (!v142)
  {
    goto LABEL_311;
  }

  v143 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v144 = *(a1 + 1127);
    *buf = 67109120;
    *&buf[4] = v144;
    _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEFAULT, "ConfigureCreateConnectionEnabled is set to %d (overridden)", buf, 8u);
  }

LABEL_311:
  v145 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v194, "ConnRSSIStageOneThirdPartyApp");
  v146 = (*(*v145 + 88))(v145, buf, v194, &v186);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v199 < 0)
  {
    operator delete(*buf);
    if (!v146)
    {
      goto LABEL_319;
    }
  }

  else if (!v146)
  {
    goto LABEL_319;
  }

  v147 = v186;
  *(a1 + 1357) = v186;
  v148 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v147;
    _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "LEConnectionThirdPartyAppStageOneThresholdRssi %d overridden", buf, 8u);
  }

LABEL_319:
  v149 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v194, "ConnRSSIStageOneLECarPlay");
  v150 = (*(*v149 + 88))(v149, buf, v194, &v186);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v199 < 0)
  {
    operator delete(*buf);
    if (!v150)
    {
      goto LABEL_327;
    }
  }

  else if (!v150)
  {
    goto LABEL_327;
  }

  v151 = v186;
  *(a1 + 1358) = v186;
  v152 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v151;
    _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "LEConnectionLECarPlayStageOneThresholdRssi %d overridden", buf, 8u);
  }

LABEL_327:
  v185 = 0.0;
  v153 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v194, "ConnScanTimeoutExtendPercent");
  v154 = (*(*v153 + 104))(v153, buf, v194, &v185);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v199 < 0)
  {
    operator delete(*buf);
    if (!v154)
    {
      goto LABEL_339;
    }
  }

  else if (!v154)
  {
    goto LABEL_339;
  }

  v155 = v185;
  v156 = qword_100BCE980;
  if (v185 <= 0.0)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086DBB8();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v155;
      _os_log_impl(&_mh_execute_header, v156, OS_LOG_TYPE_DEFAULT, "Set ConnScanTimeoutExtendPercent %f percent", buf, 0xCu);
      v155 = v185;
    }

    *(a1 + 1388) = v155;
  }

LABEL_339:
  v157 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v194, "ConnectionDenyListTimeoutSecondsOverride");
  v158 = (*(*v157 + 88))(v157, buf, v194, &v196);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v199 < 0)
  {
    operator delete(*buf);
  }

  v159 = v196;
  if (v196 > 0)
  {
    v160 = v158;
  }

  else
  {
    v160 = 0;
  }

  if (v160 == 1)
  {
    v161 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v159;
      _os_log_impl(&_mh_execute_header, v161, OS_LOG_TYPE_DEFAULT, "Warning: LeConnectionDenyList: Using override value (%d) for fLeConnectionDenyListTimeoutSec", buf, 8u);
      v159 = v196;
    }

    *(a1 + 1500) = v159;
  }

  v162 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v194, "ConnectionDenyListIntervalSecondsOverride");
  v163 = (*(*v162 + 88))(v162, buf, v194, &v196);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v199 < 0)
  {
    operator delete(*buf);
  }

  v164 = v196;
  if (v196 > 0)
  {
    v165 = v163;
  }

  else
  {
    v165 = 0;
  }

  if (v165 == 1)
  {
    v166 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v164;
      _os_log_impl(&_mh_execute_header, v166, OS_LOG_TYPE_DEFAULT, "Warning: LeConnectionDenyList: Using override value (%d) for fLeConnectionDenyListIntervalSec", buf, 8u);
      v164 = v196;
    }

    *(a1 + 1496) = v164;
  }

  v167 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v194, "ConnectionDenyListCountThresholdOverride");
  v168 = (*(*v167 + 88))(v167, buf, v194, &v196);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v199 < 0)
  {
    operator delete(*buf);
  }

  v169 = v196;
  if (v196 > 0)
  {
    v170 = v168;
  }

  else
  {
    v170 = 0;
  }

  if (v170 == 1)
  {
    v171 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v169;
      _os_log_impl(&_mh_execute_header, v171, OS_LOG_TYPE_DEFAULT, "Warning: LeConnectionDenyList: Using override value (%d) for fLeConnectionDenyListCountThreshold", buf, 8u);
      v169 = v196;
    }

    *(a1 + 1504) = v169;
  }

  *(a1 + 1601) = 1;
  v172 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v194, "MRCConfigForExtendedRangeUseCase");
  v173 = (*(*v172 + 88))(v172, buf, v194, &v196);
  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v199 < 0)
  {
    operator delete(*buf);
  }

  v174 = v196;
  if (v196 > 0)
  {
    v175 = v173;
  }

  else
  {
    v175 = 0;
  }

  if (v175 == 1)
  {
    v176 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v174;
      _os_log_impl(&_mh_execute_header, v176, OS_LOG_TYPE_DEFAULT, "Warning: Using override value (%d) for MRCConfigForExtendedRangeUseCase", buf, 8u);
      LOBYTE(v174) = v196;
    }

    *(a1 + 1601) = v174;
  }

  v177 = objc_opt_new();
  v178 = *(a1 + 1536);
  *(a1 + 1536) = v177;

  v179 = objc_opt_new();
  v180 = *(a1 + 1544);
  *(a1 + 1544) = v179;

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v181 = _os_feature_enabled_impl();
  if (v181)
  {
    v183 = sub_10000C798(v181, v182);
    LOBYTE(v181) = (*(*v183 + 352))(v183);
  }

  *(a1 + 1603) = v181;
  return a1;
}

void sub_10073C820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  sub_100773C7C(v34 + 1560, *(v34 + 1568));
  sub_100773BDC(v34 + 1472, *(v34 + 1480));
  sub_100773BDC(v34 + 1448, *(v34 + 1456));
  sub_10000CEDC(v34 + 1424, *(v34 + 1432));
  sub_10000CEDC(v34 + 1400, *(v34 + 1408));
  sub_10004B61C(v34 + 1360, *(v34 + 1368));
  sub_10000CEDC(v34 + 1328, *(v34 + 1336));
  sub_10000CEDC(v34 + 1304, *(v34 + 1312));
  sub_10000CEDC(v34 + 1280, *(v34 + 1288));
  sub_10000CEDC(v34 + 1256, *(v34 + 1264));
  sub_10000CEDC(v34 + 1232, *(v34 + 1240));
  sub_10004B61C(v34 + 1192, *(v34 + 1200));
  sub_1003C46E0(v34 + 1160, *(v34 + 1168));
  sub_10000CEDC(v34 + 1136, *(v34 + 1144));
  sub_1003645A0((v34 + 1016));
  sub_1003645A0((v39 + 760));
  sub_10007A490(v39 + 736, *(v34 + 944));
  v40 = *(v34 + 904);
  if (v40)
  {
    *(v34 + 912) = v40;
    operator delete(v40);
  }

  sub_10000CEDC(v39 + 640, *(v34 + 848));

  sub_10000CEDC(v39 + 600, *(v34 + 808));
  sub_10000CEDC(v39 + 512, *(v34 + 720));
  sub_10000CEDC(v39 + 488, *(v34 + 696));
  sub_10000CEDC(v39 + 464, *(v34 + 672));
  sub_100773B78(v39 + 440, *(v34 + 648));
  sub_10000CEDC(v39 + 408, *(v34 + 616));

  sub_10000CEDC(v39 + 328, *(v34 + 536));
  sub_10000CEDC(v39 + 304, *(v34 + 512));
  sub_10000CEDC(v39 + 280, *(v34 + 488));
  sub_10000CEDC(v39 + 256, *(v34 + 464));
  sub_10000CEDC(v39 + 232, *(v34 + 440));
  sub_10000CEDC(v38, *(v34 + 416));
  sub_10000CEDC(v37, *(v34 + 392));
  sub_10000CEDC(v36, *(v34 + 368));
  sub_10000CEDC(v35, *(v34 + 344));
  v41 = *(v34 + 232);
  if (v41)
  {
    *(v34 + 240) = v41;
    operator delete(v41);
  }

  v42 = *v39;
  if (*v39)
  {
    *(v34 + 208) = v42;
    operator delete(v42);
  }

  sub_10007A068(v34 + 120);
  sub_1005B0D58(a10);
  _Unwind_Resume(a1);
}

void sub_10073CC88(uint64_t a1)
{
  v115 = 0;
  v114 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionLatencyLowMinInterval");
  v3 = (*(*v2 + 88))(v2, buf, __p, &v115 + 4);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else if (!v3)
  {
    goto LABEL_13;
  }

  v4 = HIDWORD(v115);
  v5 = qword_100BCE980;
  if ((SHIDWORD(v115) < 8 || (4 * HIDWORD(v115)) >= 0x3E85) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Override rejected latency minInterval:%d LeConnectionLatencyLow", buf, 8u);
    LOWORD(v4) = WORD2(v115);
    v5 = qword_100BCE980;
  }

  *(a1 + 1082) = v4;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Override latency minInterval:%d LeConnectionLatencyLow", buf, 8u);
  }

LABEL_13:
  v6 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionLatencyLowMaxInterval");
  v7 = (*(*v6 + 88))(v6, buf, __p, &v115);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v7)
    {
      goto LABEL_25;
    }
  }

  else if (!v7)
  {
    goto LABEL_25;
  }

  v8 = v115;
  v9 = qword_100BCE980;
  if ((v115 < 8 || (4 * v115) >= 0x3E85) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Override rejected latency maxInterval:%d LeConnectionLatencyLow", buf, 8u);
    LOWORD(v8) = v115;
    v9 = qword_100BCE980;
  }

  *(a1 + 1084) = v8;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Override latency maxInterval:%d LeConnectionLatencyLow", buf, 8u);
  }

LABEL_25:
  v10 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionLatencyLowSupervisionTimeout");
  v11 = (*(*v10 + 88))(v10, buf, __p, &v114);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v11)
    {
      goto LABEL_36;
    }
  }

  else if (!v11)
  {
    goto LABEL_36;
  }

  v12 = v114;
  v13 = qword_100BCE980;
  if ((v114 - 100) >= 0x7C9D && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v12;
    _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Override rejected latency supervisionTimeout:%d LeConnectionLatencyLow", buf, 8u);
    LOWORD(v12) = v114;
    v13 = qword_100BCE980;
  }

  *(a1 + 1086) = v12;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Override latency supervisionTimeout:%d LeConnectionLatencyLow", buf, 8u);
  }

LABEL_36:
  if (*(a1 + 1084) < *(a1 + 1082) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    sub_10086DC34();
  }

  v14 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionLatencyMediumMinInterval");
  v15 = (*(*v14 + 88))(v14, buf, __p, &v115 + 4);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v15)
    {
      goto LABEL_51;
    }
  }

  else if (!v15)
  {
    goto LABEL_51;
  }

  v16 = HIDWORD(v115);
  v17 = qword_100BCE980;
  if ((SHIDWORD(v115) < 8 || (4 * HIDWORD(v115)) >= 0x3E85) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v16;
    _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "Override rejected latency minInterval:%d LeConnectionLatencyMedium", buf, 8u);
    LOWORD(v16) = WORD2(v115);
    v17 = qword_100BCE980;
  }

  *(a1 + 1088) = v16;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Override latency minInterval:%d LeConnectionLatencyMedium", buf, 8u);
  }

LABEL_51:
  v18 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionLatencyMediumMaxInterval");
  v19 = (*(*v18 + 88))(v18, buf, __p, &v115);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v19)
    {
      goto LABEL_63;
    }
  }

  else if (!v19)
  {
    goto LABEL_63;
  }

  v20 = v115;
  v21 = qword_100BCE980;
  if ((v115 < 8 || (4 * v115) >= 0x3E85) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v20;
    _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "Override rejected latency maxInterval:%d LeConnectionLatencyMedium", buf, 8u);
    LOWORD(v20) = v115;
    v21 = qword_100BCE980;
  }

  *(a1 + 1090) = v20;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Override latency maxInterval:%d LeConnectionLatencyMedium", buf, 8u);
  }

LABEL_63:
  v22 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionLatencyMediumSupervisionTimeout");
  v23 = (*(*v22 + 88))(v22, buf, __p, &v114);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v23)
    {
      goto LABEL_74;
    }
  }

  else if (!v23)
  {
    goto LABEL_74;
  }

  v24 = v114;
  v25 = qword_100BCE980;
  if ((v114 - 100) >= 0x7C9D && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v24;
    _os_log_fault_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "Override rejected latency supervisionTimeout:%d LeConnectionLatencyMedium", buf, 8u);
    LOWORD(v24) = v114;
    v25 = qword_100BCE980;
  }

  *(a1 + 1092) = v24;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v24;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Override latency supervisionTimeout:%d LeConnectionLatencyMedium", buf, 8u);
  }

LABEL_74:
  if (*(a1 + 1090) < *(a1 + 1088) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    sub_10086DCA8();
  }

  v26 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionLatencyHighMinInterval");
  v27 = (*(*v26 + 88))(v26, buf, __p, &v115 + 4);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v27)
    {
      goto LABEL_89;
    }
  }

  else if (!v27)
  {
    goto LABEL_89;
  }

  v28 = HIDWORD(v115);
  v29 = qword_100BCE980;
  if ((SHIDWORD(v115) < 8 || (4 * HIDWORD(v115)) >= 0x3E85) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v28;
    _os_log_fault_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, "Override rejected latency minInterval:%d LeConnectionLatencyHigh", buf, 8u);
    LOWORD(v28) = WORD2(v115);
    v29 = qword_100BCE980;
  }

  *(a1 + 1094) = v28;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v28;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Override latency minInterval:%d LeConnectionLatencyHigh", buf, 8u);
  }

LABEL_89:
  v30 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionLatencyHighMaxInterval");
  v31 = (*(*v30 + 88))(v30, buf, __p, &v115);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v31)
    {
      goto LABEL_101;
    }
  }

  else if (!v31)
  {
    goto LABEL_101;
  }

  v32 = v115;
  v33 = qword_100BCE980;
  if ((v115 < 8 || (4 * v115) >= 0x3E85) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v32;
    _os_log_fault_impl(&_mh_execute_header, v33, OS_LOG_TYPE_FAULT, "Override rejected latency maxInterval:%d LeConnectionLatencyHigh", buf, 8u);
    LOWORD(v32) = v115;
    v33 = qword_100BCE980;
  }

  *(a1 + 1096) = v32;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v32;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Override latency maxInterval:%d LeConnectionLatencyHigh", buf, 8u);
  }

LABEL_101:
  v34 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionLatencyHighSupervisionTimeout");
  v35 = (*(*v34 + 88))(v34, buf, __p, &v114);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v35)
    {
      goto LABEL_112;
    }
  }

  else if (!v35)
  {
    goto LABEL_112;
  }

  v36 = v114;
  v37 = qword_100BCE980;
  if ((v114 - 100) >= 0x7C9D && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v36;
    _os_log_fault_impl(&_mh_execute_header, v37, OS_LOG_TYPE_FAULT, "Override rejected latency supervisionTimeout:%d LeConnectionLatencyHigh", buf, 8u);
    LOWORD(v36) = v114;
    v37 = qword_100BCE980;
  }

  *(a1 + 1098) = v36;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v36;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Override latency supervisionTimeout:%d LeConnectionLatencyHigh", buf, 8u);
  }

LABEL_112:
  if (*(a1 + 1096) < *(a1 + 1094) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    sub_10086DD44();
  }

  v38 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionLatencyVeryHighMinInterval");
  v39 = (*(*v38 + 88))(v38, buf, __p, &v115 + 4);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v39)
    {
      goto LABEL_127;
    }
  }

  else if (!v39)
  {
    goto LABEL_127;
  }

  v40 = HIDWORD(v115);
  v41 = qword_100BCE980;
  if ((SHIDWORD(v115) < 8 || (4 * HIDWORD(v115)) >= 0x3E85) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v40;
    _os_log_fault_impl(&_mh_execute_header, v41, OS_LOG_TYPE_FAULT, "Override rejected latency minInterval:%d LeConnectionLatencyVeryHigh", buf, 8u);
    LOWORD(v40) = WORD2(v115);
    v41 = qword_100BCE980;
  }

  *(a1 + 1100) = v40;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v40;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Override latency minInterval:%d LeConnectionLatencyVeryHigh", buf, 8u);
  }

LABEL_127:
  v42 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionLatencyVeryHighMaxInterval");
  v43 = (*(*v42 + 88))(v42, buf, __p, &v115);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v43)
    {
      goto LABEL_139;
    }
  }

  else if (!v43)
  {
    goto LABEL_139;
  }

  v44 = v115;
  v45 = qword_100BCE980;
  if ((v115 < 8 || (4 * v115) >= 0x3E85) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v44;
    _os_log_fault_impl(&_mh_execute_header, v45, OS_LOG_TYPE_FAULT, "Override rejected latency maxInterval:%d LeConnectionLatencyVeryHigh", buf, 8u);
    LOWORD(v44) = v115;
    v45 = qword_100BCE980;
  }

  *(a1 + 1102) = v44;
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v44;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Override latency maxInterval:%d LeConnectionLatencyVeryHigh", buf, 8u);
  }

LABEL_139:
  v46 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionLatencyVeryHighSupervisionTimeout");
  v47 = (*(*v46 + 88))(v46, buf, __p, &v114);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v47)
    {
      goto LABEL_150;
    }
  }

  else if (!v47)
  {
    goto LABEL_150;
  }

  v48 = v114;
  v49 = qword_100BCE980;
  if ((v114 - 100) >= 0x7C9D && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v48;
    _os_log_fault_impl(&_mh_execute_header, v49, OS_LOG_TYPE_FAULT, "Override rejected latency supervisionTimeout:%d LeConnectionLatencyVeryHigh", buf, 8u);
    LOWORD(v48) = v114;
    v49 = qword_100BCE980;
  }

  *(a1 + 1104) = v48;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v48;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Override latency supervisionTimeout:%d LeConnectionLatencyVeryHigh", buf, 8u);
  }

LABEL_150:
  if (*(a1 + 1102) < *(a1 + 1100) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    sub_10086DDB8();
  }

  v111 = 0;
  v50 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionMinIntervalDigitalID");
  v51 = (*(*v50 + 88))(v50, buf, __p, &v111);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v51)
    {
      goto LABEL_161;
    }
  }

  else if (!v51)
  {
    goto LABEL_161;
  }

  v52 = v111;
  *(a1 + 1106) = v111;
  v53 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v52;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Override LeConnectionMinIntervalDigitalID:%d", buf, 8u);
  }

LABEL_161:
  v110 = 0;
  v54 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionMaxIntervalDigitalID");
  v55 = (*(*v54 + 88))(v54, buf, __p, &v110);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v55)
    {
      goto LABEL_169;
    }
  }

  else if (!v55)
  {
    goto LABEL_169;
  }

  v56 = v110;
  *(a1 + 1108) = v110;
  v57 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v56;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Override LeConnectionMaxIntervalDigitalID:%d", buf, 8u);
  }

LABEL_169:
  v109 = 0;
  v58 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeMaxCEDigitalID");
  v59 = (*(*v58 + 88))(v58, buf, __p, &v109);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v59)
    {
      goto LABEL_177;
    }
  }

  else if (!v59)
  {
    goto LABEL_177;
  }

  v60 = v109;
  *(a1 + 1111) = v109;
  v61 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v60;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Override LeMaxCEDigitalID:%d", buf, 8u);
  }

LABEL_177:
  v108 = 0;
  v62 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeMinCEDigitalID");
  v63 = (*(*v62 + 88))(v62, buf, __p, &v108);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v63)
    {
      goto LABEL_185;
    }
  }

  else if (!v63)
  {
    goto LABEL_185;
  }

  v64 = v108;
  *(a1 + 1110) = v108;
  v65 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v64;
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Override LeMinCEDigitalID:%d", buf, 8u);
  }

LABEL_185:
  v66 = *(a1 + 1110);
  v67 = *(a1 + 1111);
  if (v66 > v67)
  {
    v68 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109632;
      *&buf[4] = v66;
      *&buf[8] = 1024;
      *&buf[10] = v67;
      *&buf[14] = 1024;
      *&buf[16] = v67;
      _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "fMinCELenDigitalID %d is greater than fMaxCELenDigitalID %d. Replace fMinCELenDigitalID by %d.", buf, 0x14u);
      LOBYTE(v67) = *(a1 + 1111);
    }

    *(a1 + 1110) = v67;
  }

  v107 = 0;
  v69 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "OverrideConnectionIntervalFindMy");
  v70 = (*(*v69 + 72))(v69, buf, __p, &v107);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v70)
    {
      goto LABEL_199;
    }
  }

  else if (!v70)
  {
    goto LABEL_199;
  }

  v71 = v107;
  *(a1 + 1112) = v107;
  v72 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v73 = "disabled";
    if (v71)
    {
      v73 = "enabled";
    }

    *buf = 136315138;
    *&buf[4] = v73;
    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "OverrideConnectionIntervalFindMy %s", buf, 0xCu);
  }

LABEL_199:
  v106 = 0;
  v74 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionMinIntervalFindMy");
  v75 = (*(*v74 + 88))(v74, buf, __p, &v106);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v75)
    {
      goto LABEL_207;
    }
  }

  else if (!v75)
  {
    goto LABEL_207;
  }

  v76 = v106;
  *(a1 + 1114) = v106;
  v77 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v76;
    _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Override LeConnectionMinIntervalFindMy:%d", buf, 8u);
  }

LABEL_207:
  v105 = 0;
  v78 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionMaxIntervalFindMy");
  v79 = (*(*v78 + 88))(v78, buf, __p, &v105);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v79)
    {
      goto LABEL_215;
    }
  }

  else if (!v79)
  {
    goto LABEL_215;
  }

  v80 = v105;
  *(a1 + 1116) = v105;
  v81 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v80;
    _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Override LeConnectionMaxIntervalFindMy:%d", buf, 8u);
  }

LABEL_215:
  v104 = 0;
  v82 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionMinIntervalMIDIv2InFrames");
  v83 = (*(*v82 + 88))(v82, buf, __p, &v104);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v83)
    {
      goto LABEL_223;
    }
  }

  else if (!v83)
  {
    goto LABEL_223;
  }

  v84 = v104;
  *(a1 + 1118) = v104;
  v85 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v84;
    *&buf[8] = 2048;
    *&buf[10] = (v84 * 1.25);
    _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Override MinIntervalFramesMIDIv2:%d (frames) %.3f (msec)", buf, 0x12u);
  }

LABEL_223:
  v103 = 0;
  v86 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeConnectionMaxIntervalMIDIv2InFrames");
  v87 = (*(*v86 + 88))(v86, buf, __p, &v103);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v87)
    {
      goto LABEL_231;
    }
  }

  else if (!v87)
  {
    goto LABEL_231;
  }

  v88 = v103;
  *(a1 + 1120) = v103;
  v89 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v88;
    *&buf[8] = 2048;
    *&buf[10] = (v88 * 1.25);
    _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "Override MaxIntervalFramesMIDIv2:%d (frames) %.3f (msec)", buf, 0x12u);
  }

LABEL_231:
  v102 = 0;
  v90 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeMaxCEMIDIv2InTimeslots");
  v91 = (*(*v90 + 88))(v90, buf, __p, &v102);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v91)
    {
      goto LABEL_239;
    }
  }

  else if (!v91)
  {
    goto LABEL_239;
  }

  v92 = v102;
  *(a1 + 1123) = v102;
  v93 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v92;
    _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Override LeMaxCEMIDIv2:%d", buf, 8u);
  }

LABEL_239:
  v101 = 0;
  v94 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeMinCEMIDIv2InTimeslots");
  v95 = (*(*v94 + 88))(v94, buf, __p, &v101);
  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v95)
    {
      goto LABEL_247;
    }
  }

  else if (!v95)
  {
    goto LABEL_247;
  }

  v96 = v101;
  *(a1 + 1122) = v101;
  v97 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v96;
    _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "Override LeMinCEMIDIv2:%d", buf, 8u);
  }

LABEL_247:
  v98 = *(a1 + 1122);
  v99 = *(a1 + 1123);
  if (v98 > v99)
  {
    v100 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109632;
      *&buf[4] = v98;
      *&buf[8] = 1024;
      *&buf[10] = v99;
      *&buf[14] = 1024;
      *&buf[16] = v99;
      _os_log_error_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "fMinCELenMIDIv2 %d is greater than fMaxCELenMIDIv2 %d. Replace fMinCELenMIDIv2 by %d.", buf, 0x14u);
      LOBYTE(v99) = *(a1 + 1123);
    }

    *(a1 + 1122) = v99;
  }
}

void sub_10073E8DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 41) < 0)
  {
    operator delete(*(v21 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_10073E9CC(unsigned __int8 *a1, unsigned __int8 *a2, int a3, char a4)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = *a1;
  v12 = sub_1000BE280(a2);
  v14 = v12;
  if (a2)
  {
    v15 = (a2[49] << 40) | (a2[50] << 32) | (a2[51] << 24) | (a2[52] << 16) | (a2[53] << 8) | a2[54] | (a2[48] << 48);
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_100007EE8(v12, v13);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10076C3E4;
  v19[3] = &unk_100AF6B30;
  v21 = v14;
  v19[4] = a2;
  v19[5] = (v5 << 40) | (v6 << 32) | (v7 << 24) | (v8 << 16) | (v9 << 8) | v10 | (v11 << 48);
  v20 = a3;
  v22 = a4;
  v19[6] = v15;
  sub_10000CA94(v16, v19);
}

void sub_10073EB08(uint64_t a1, int a2, char a3, int a4)
{
  v7 = 48;
  if (*(a1 + 55))
  {
    v7 = 56;
  }

  v8 = 49;
  if (*(a1 + 55))
  {
    v8 = 57;
  }

  v9 = 50;
  if (*(a1 + 55))
  {
    v9 = 58;
  }

  v10 = 51;
  if (*(a1 + 55))
  {
    v10 = 59;
  }

  v11 = 52;
  if (*(a1 + 55))
  {
    v11 = 60;
  }

  v12 = 53;
  if (*(a1 + 55))
  {
    v12 = 61;
  }

  v13 = 54;
  if (*(a1 + 55))
  {
    v13 = 62;
  }

  v14 = (*(a1 + v8) << 40) | (*(a1 + v9) << 32) | (*(a1 + v10) << 24) | (*(a1 + v11) << 16) | (*(a1 + v12) << 8) | *(a1 + v13) | (*(a1 + v7) << 48);
  v15 = *(a1 + 70);
  v16 = *(a1 + 168);
  v17 = *(a1 + 312);
  v18 = sub_100255698(a1);
  v19 = sub_1000ABD24(a1);
  if (v19 && *(a1 + 252) == 1)
  {
    v21 = sub_100007EE8(v19, v20);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10076C588;
    v36[3] = &unk_100AE0860;
    v36[4] = v14;
    v36[5] = a1;
    sub_10000CA94(v21, v36);
  }

  v22 = v16 == 1;
  v23 = v16 > 1;
  v24 = v22;
  v25 = v17 | a3;
  if (a2 == 708 && v23)
  {
    a2 = 4834;
  }

  v26 = sub_100007EE8(v19, v20);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10076C674;
  v28[3] = &unk_100AF6B30;
  v28[4] = a1;
  v28[5] = v14;
  v32 = v23;
  v31 = v18;
  v33 = v15;
  v34 = v25;
  v35 = v24;
  v29 = a2;
  v30 = a4;
  sub_10000CA94(v26, v28);
}

void sub_10073ED00(int a1)
{
  v2 = qword_100BCE980;
  v3 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 67109120;
    v9 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LE Connection Cancelled with status %d", buf, 8u);
  }

  v5 = sub_100007EE8(v3, v4);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10076C534;
  v6[3] = &unk_100AE0900;
  v7 = a1;
  sub_10000CA94(v5, v6);
}

void sub_10073EDF8(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  v14 = qword_100BCE980;
  v15 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    *buf = 134219520;
    v26 = a1;
    v27 = 1024;
    v28 = a2;
    v29 = 1024;
    v30 = a3;
    v31 = 1024;
    v32 = a4;
    v33 = 1024;
    v34 = a5;
    v35 = 1024;
    v36 = a6;
    v37 = 1024;
    v38 = a7;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "LE Connection Parameters Updated for handle %p, interval:%d peripheral latency:%d supervisionTO:%d minCELen:%d maxCELen:%d, localRole:%d", buf, 0x30u);
  }

  v17 = sub_100007EE8(v15, v16);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10076CDB4;
  v18[3] = &unk_100AEDA40;
  v18[4] = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  sub_10000CA94(v17, v18);
}

void sub_10073EF6C(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v12 = qword_100BCE980;
  v13 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    *buf = 134219008;
    v23 = a1;
    v24 = 1024;
    v25 = a3;
    v26 = 1024;
    v27 = a4;
    v28 = 1024;
    v29 = a5;
    v30 = 1024;
    v31 = a6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Connection Subrating Update completed for handle %p. Subrate factor: %d, Peripheral latency: %d, Continuation Number: %d, Supervision TO: %d", buf, 0x24u);
  }

  v15 = sub_100007EE8(v13, v14);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10076CE20;
  v16[3] = &unk_100AE0880;
  v16[4] = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  sub_10000CA94(v15, v16);
}

void sub_10073F0C8(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  if (*(a1 + 22) == 26119)
  {
    v6 = sub_10000C798(a1, a2);
    v7 = (*(*v6 + 368))(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 368);
  v9 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219008;
    v32 = a1;
    v33 = 1024;
    v34 = v4;
    v35 = 1024;
    v36 = a3;
    v37 = 1024;
    v38 = v8;
    v39 = 1024;
    v40 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "LE Link Ready for handle %p with status %d fastLEConnectionEnabled:%d linkReadyDurationMS:%d requiresCTOFix:%d", buf, 0x24u);
  }

  v18 = *(a1 + 88);
  v10 = *(a1 + 70);
  v11 = *(a1 + 144);
  v12 = sub_1002D0224(a1);
  v13 = sub_1002D026C(a1);
  v14 = sub_1002D02B4(a1);
  *buf = 0;
  v15 = sub_1002D00E4(a1, buf);
  v17 = sub_100007EE8(v15, v16);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10076CE88;
  v19[3] = &unk_100AFDDF8;
  v19[4] = a1;
  v29 = v7;
  v30 = a3;
  v20 = v4;
  v21 = v8;
  v22 = v11;
  v23 = v18;
  v24 = v10;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = *buf;
  sub_10000CA94(v17, v19);
}

uint64_t sub_10073F2D0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a2;
  v3 = (a1[1] << 40) | (a1[2] << 32) | (a1[3] << 24) | (a1[4] << 16) | (a1[5] << 8) | a1[6] | (*a1 << 48);
  v4 = objc_autoreleasePoolPush();
  v5 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_100063D0C(v3);
    *v9 = 138543618;
    *&v9[4] = v6;
    *&v9[12] = 1024;
    *&v9[14] = v2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Address %{public}@ Added to Filter Accept List with status:%d", v9, 0x12u);
  }

  objc_autoreleasePoolPop(v4);
  if (v2)
  {
    if (v2 != 758)
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086DE7C(v3);
      }

      v8 = sub_10000E92C();
      sub_100693F74(v8, 1);
    }

    *v9 = 0;
    *&v9[8] = 0;
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    sub_1000498D4(off_100B508C8, v3, 0, 0, 0, 0, v9);
    if (qword_100B508B0 != -1)
    {
      sub_10086DE54();
    }

    sub_100749E70(off_100B508A8, v9);
    if (qword_100B508B0 != -1)
    {
      sub_10086DE54();
    }

    sub_100745874(off_100B508A8, 4);
  }

  *v9 = 0;
  *&v9[8] = 0;
  sub_100007F88(v9, &stru_100BCEC28);
  byte_100BCECA8 = 0;
  sub_10002286C(&stru_100BCEBC8);
  return sub_1000088CC(v9);
}

uint64_t sub_10073F500(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a2;
  v3 = (a1[1] << 40) | (a1[2] << 32) | (a1[3] << 24) | (a1[4] << 16) | (a1[5] << 8) | a1[6] | (*a1 << 48);
  v4 = objc_autoreleasePoolPush();
  v5 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_100063D0C(v3);
    *v9 = 138543618;
    *&v9[4] = v6;
    *&v9[12] = 1024;
    *&v9[14] = v2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Address %{public}@ Removed from Filter Accept List with status:%d", v9, 0x12u);
  }

  objc_autoreleasePoolPop(v4);
  if (v2)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086DF20(v3);
    }

    if (v2 != 718)
    {
      if (v2 != 758)
      {
        v8 = sub_10000E92C();
        sub_100693F74(v8, 1);
      }

      *v9 = 0;
      *&v9[8] = 0;
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      sub_1000498D4(off_100B508C8, v3, 0, 0, 0, 0, v9);
      if (qword_100B508B0 != -1)
      {
        sub_10086DE54();
      }

      sub_100749FCC(off_100B508A8, v9);
      if (qword_100B508B0 != -1)
      {
        sub_10086DE54();
      }

      sub_100745874(off_100B508A8, 4);
    }
  }

  *v9 = 0;
  *&v9[8] = 0;
  sub_100007F88(v9, &stru_100BCEC68);
  byte_100BCECA9 = 0;
  sub_10002286C(&stru_100BCEBF8);
  return sub_1000088CC(v9);
}

void sub_10073F738(int a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = qword_100BCE980;
  v7 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    v9 = *a3;
    *buf = 134218240;
    v14 = a2;
    v15 = 1024;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "LE Read Remote FAE Table  handle %p, FAETable[0]:%0X ", buf, 0x12u);
  }

  v10 = sub_100007EE8(v7, v8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100769820;
  v11[3] = &unk_100AE0880;
  v12 = a1;
  v11[4] = a2;
  v11[5] = a3;
  sub_10000CA94(v10, v11);
}

void sub_10073F854(int a1, uint64_t a2)
{
  v4 = qword_100BCE980;
  v5 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    *buf = 134217984;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "LE Security Enable handle %p, FAETable[0]: ", buf, 0xCu);
  }

  v7 = sub_100007EE8(v5, v6);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100769878;
  v8[3] = &unk_100ADF940;
  v9 = a1;
  v8[4] = a2;
  sub_10000CA94(v7, v8);
}

void sub_10073F95C(int a1, uint64_t a2, char a3, int a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, uint64_t a14, char a15, char a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23)
{
  v27 = qword_100BCE980;
  v28 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
  if (v28)
  {
    *buf = 134218496;
    v58 = a2;
    v59 = 1024;
    v60 = a4;
    v61 = 1024;
    v62 = a1;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "LE CS Create Config  handle %p, action:%0X  status%d", buf, 0x18u);
  }

  v30 = sub_100007EE8(v28, v29);
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1007698D0;
  v35[3] = &unk_100AF6B70;
  v36 = a1;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = a6;
  v41 = a7;
  v42 = a8;
  v43 = a9;
  v44 = a10;
  v45 = a11;
  v46 = a12;
  v47 = a13;
  v35[4] = a2;
  v35[5] = a14;
  v48 = a15;
  v49 = a16;
  v50 = a17;
  v51 = a18;
  v52 = a19;
  v53 = a20;
  v54 = a21;
  v55 = a22;
  v56 = a23;
  sub_10000CA94(v30, v35);
}

void sub_10073FB88(int a1, uint64_t a2, char a3, int a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12)
{
  v18 = qword_100BCE980;
  v19 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    *buf = 134218240;
    v37 = a2;
    v38 = 1024;
    v39 = a4;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "LE Procedure Enable  handle %p, enable:%0X ", buf, 0x12u);
  }

  v21 = sub_100007EE8(v19, v20);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100769958;
  v24[3] = &unk_100B00C18;
  v25 = a1;
  v24[4] = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = a8;
  v32 = a9;
  v33 = a10;
  v34 = a11;
  v35 = a12;
  sub_10000CA94(v21, v24);
}

void sub_10073FD0C(uint64_t a1, int a2, __int16 a3, __int16 a4, __int16 a5, char a6, char a7, char a8, char a9, char a10, unsigned __int8 a11, const void *a12, const void *a13, unsigned __int8 *a14, const void *a15)
{
  v17 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v19 = a1;
    v20 = 1024;
    v21 = a2;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "LE SubEvent Result handle %p, enable:%0X ", buf, 0x12u);
  }

  operator new[]();
}

void sub_10073FF40(uint64_t a1, int a2, char a3, char a4, char a5, char a6, unsigned int a7, const void *a8, const void *a9, unsigned __int8 *a10, const void *a11)
{
  v13 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v15 = a1;
    v16 = 1024;
    v17 = a2;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "LE SubEvent Result Continue handle %p, enable:%0X ", buf, 0x12u);
  }

  operator new[]();
}

void sub_100740150(uint64_t a1, uint64_t a2, unsigned __int8 a3, int a4, unsigned __int8 a5, int a6)
{
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v12 = *(a1 + 384);
  if (v12 != (a1 + 392))
  {
    while (*(v12 + 6) != a2)
    {
      v13 = *(v12 + 1);
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
          v14 = *(v12 + 2);
          v15 = *v14 == v12;
          v12 = v14;
        }

        while (!v15);
      }

      v12 = v14;
      if (v14 == (a1 + 392))
      {
        goto LABEL_11;
      }
    }

    uuid_copy(uu, v12 + 32);
  }

LABEL_11:
  if (!uuid_is_null(uu))
  {
    *&v24 = uu;
    sub_100773D48((a1 + 432), uu, &unk_1008A9BD0, &v24, &v29)[6] = a2;
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = sub_10004DF60(uu);
    sub_100740410(a1, v16, &v24);

    if (!v24)
    {
LABEL_23:
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3321888768;
      v30[2] = sub_1007406C0;
      v30[3] = &unk_100B0B390;
      uuid_copy(v33, uu);
      v33[16] = a3;
      v33[17] = a5;
      v31 = a4;
      v32 = a6;
      sub_10074063C(a1, v30);

      return;
    }

    if ((a4 & 0x40) != 0)
    {
      v17 = 5;
    }

    else
    {
      if ((a4 & 0x80) != 0)
      {
        *(&v26 + 1) = 0;
        goto LABEL_22;
      }

      if ((a4 & 0x100) != 0)
      {
        v17 = 1;
      }

      else
      {
        v17 = 6;
      }
    }

    *(&v26 + 1) = v17;
LABEL_22:
    v18 = sub_10004DF60(uu);
    v19[0] = v24;
    v19[1] = *(&v24 + 1);
    v20 = v25;
    v21 = v26;
    v22 = v27;
    v23 = v28;
    sub_100740538(a1, v18, v19);

    goto LABEL_23;
  }

  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10086DFC4();
  }
}

void sub_100740410(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  sub_10004DFB4(uu2, v5);
  if (a1 + 1568 != sub_10004E34C(a1 + 1560, uu2))
  {
    sub_10004DFB4(uu2, v5);
    v11 = uu2;
    v6 = sub_100776CC8((a1 + 1560), uu2, &unk_1008A9BD0, &v11, &v10);
    *a3 = v6[6];
    *(a3 + 8) = v6[7];
    v8 = *(v6 + 5);
    v7 = *(v6 + 6);
    v9 = *(v6 + 4);
    *(a3 + 64) = *(v6 + 28);
    *(a3 + 32) = v8;
    *(a3 + 48) = v7;
    *(a3 + 16) = v9;
  }
}

void sub_100740514(_Unwind_Exception *a1)
{
  sub_10074075C(v2);

  _Unwind_Resume(a1);
}

void sub_100740538(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  sub_10004DFB4(uu1, v5);
  v11 = uu1;
  v6 = sub_100776CC8((a1 + 1560), uu1, &unk_1008A9BD0, &v11, &v10);
  objc_storeStrong(v6 + 6, *a3);
  objc_storeStrong(v6 + 7, *(a3 + 8));
  v7 = *(a3 + 16);
  v8 = *(a3 + 32);
  v9 = *(a3 + 48);
  *(v6 + 28) = *(a3 + 64);
  *(v6 + 5) = v8;
  *(v6 + 6) = v9;
  *(v6 + 4) = v7;
}

void sub_10074061C(_Unwind_Exception *a1)
{
  sub_10074075C(v2);

  _Unwind_Resume(a1);
}

void sub_10074063C(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, &a1[30]);
  sub_100762BF8(a1 + 48, v3);
  sub_100762BF8(a1 + 56, v3);
  sub_1000088CC(v4);
}

void sub_1007406C0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004DF60((a1 + 40));
  (*(*a2 + 8))(a2);
}

uint64_t sub_100740790(uint64_t **a1)
{
  v88 = 1800;
  v89 = 3;
  v86 = 7200;
  v87 = 1;
  v84 = 1800;
  v85 = 3;
  v82 = 7200;
  v83 = 1;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionDCKDisconnectionDisabledToStageOneValue");
  v3 = (*(*v2 + 88))(v2, buf, __p, &v89);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else if (!v3)
  {
    goto LABEL_9;
  }

  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v89;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "LeConnectionDCKDisconnectionDisabledToStageOneValue=%d (override)", buf, 8u);
  }

LABEL_9:
  v5 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionDCKTimeDurationFromDisabledToStageOneValue");
  v6 = (*(*v5 + 88))(v5, buf, __p, &v88);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v6)
    {
      goto LABEL_17;
    }
  }

  else if (!v6)
  {
    goto LABEL_17;
  }

  v7 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v88;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "LeConnectionDCKTimeDurationFromDisabledToStageOneValue=%d (override)", buf, 8u);
  }

LABEL_17:
  v8 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionDCKDisconnectionStageOneToDisabledValue");
  v9 = (*(*v8 + 88))(v8, buf, __p, &v87);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  else if (!v9)
  {
    goto LABEL_25;
  }

  v10 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v87;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "LeConnectionDCKDisconnectionStageOneToDisabledValue=%d (override)", buf, 8u);
  }

LABEL_25:
  v11 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionDCKTimeDurationFromStageOneToDisabledValue");
  v12 = (*(*v11 + 88))(v11, buf, __p, &v86);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v12)
    {
      goto LABEL_33;
    }
  }

  else if (!v12)
  {
    goto LABEL_33;
  }

  v13 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v86;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "LeConnectionDCKTimeDurationFromStageOneToDisabledValue=%d (override)", buf, 8u);
  }

LABEL_33:
  v14 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionHomeDisconnectionDisabledToStageOneValue");
  v15 = (*(*v14 + 88))(v14, buf, __p, &v85);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v15)
    {
      goto LABEL_41;
    }
  }

  else if (!v15)
  {
    goto LABEL_41;
  }

  v16 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v85;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "LeConnectionHomeDisconnectionDisabledToStageOneValue=%d (override)", buf, 8u);
  }

LABEL_41:
  v17 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionHomeTimeDurationFromDisabledToStageOneValue");
  v18 = (*(*v17 + 88))(v17, buf, __p, &v84);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v18)
    {
      goto LABEL_49;
    }
  }

  else if (!v18)
  {
    goto LABEL_49;
  }

  v19 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v84;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "LeConnectionHomeTimeDurationFromDisabledToStageOneValue=%d (override)", buf, 8u);
  }

LABEL_49:
  v20 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionHomeDisconnectionStageOneToDisabledValue");
  v21 = (*(*v20 + 88))(v20, buf, __p, &v83);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v21)
    {
      goto LABEL_57;
    }
  }

  else if (!v21)
  {
    goto LABEL_57;
  }

  v22 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v83;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "LeConnectionHomeDisconnectionStageOneToDisabledValue=%d (override)", buf, 8u);
  }

LABEL_57:
  v23 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionHomeTimeDurationFromStageOneToDisabledValue");
  v24 = (*(*v23 + 88))(v23, buf, __p, &v82);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v24)
    {
      goto LABEL_65;
    }
  }

  else if (!v24)
  {
    goto LABEL_65;
  }

  v25 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v82;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "LeConnectionHomeTimeDurationFromStageOneToDisabledValue=%d (override)", buf, 8u);
  }

LABEL_65:
  v26 = v89;
  LODWORD(__p[0]) = 21;
  *buf = __p;
  *(sub_100773E70((a1 + 154), __p, &unk_1008A9BD0, buf) + 16) = v26;
  v27 = v88;
  LODWORD(__p[0]) = 21;
  *buf = __p;
  *(sub_100023DF0((a1 + 157), __p, &unk_1008A9BD0, buf) + 8) = v27;
  LOWORD(v27) = v87;
  LODWORD(__p[0]) = 21;
  *buf = __p;
  *(sub_100773E70((a1 + 160), __p, &unk_1008A9BD0, buf) + 16) = v27;
  v28 = v86;
  LODWORD(__p[0]) = 21;
  *buf = __p;
  *(sub_100023DF0((a1 + 163), __p, &unk_1008A9BD0, buf) + 8) = v28;
  LOWORD(v28) = v85;
  LODWORD(__p[0]) = 655360;
  *buf = __p;
  *(sub_100773E70((a1 + 154), __p, &unk_1008A9BD0, buf) + 16) = v28;
  v29 = v84;
  LODWORD(__p[0]) = 655360;
  *buf = __p;
  *(sub_100023DF0((a1 + 157), __p, &unk_1008A9BD0, buf) + 8) = v29;
  LOWORD(v29) = v83;
  LODWORD(__p[0]) = 655360;
  *buf = __p;
  *(sub_100773E70((a1 + 160), __p, &unk_1008A9BD0, buf) + 16) = v29;
  v30 = v82;
  LODWORD(__p[0]) = 655360;
  *buf = __p;
  *(sub_100023DF0((a1 + 163), __p, &unk_1008A9BD0, buf) + 8) = v30;
  __p[0] = 3;
  *buf = __p;
  *(sub_100773F44(a1 + 166, __p, &unk_1008A9BD0, buf) + 36) = 0;
  LOBYTE(v30) = *(a1 + 1352);
  __p[0] = (&_mh_execute_header + 3);
  *buf = __p;
  *(sub_100773F44(a1 + 166, __p, &unk_1008A9BD0, buf) + 36) = v30;
  __p[0] = 0x200000003;
  *buf = __p;
  *(sub_100773F44(a1 + 166, __p, &unk_1008A9BD0, buf) + 36) = 0;
  v31 = *(a1 + 1353);
  v78 = 24;
  v79 = v31;
  v76 = 5;
  v77 = 1800;
  v75 = 3600;
  v32 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionMagnetRSSIThresholdStageOne");
  v33 = (*(*v32 + 88))(v32, buf, __p, &v79);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v33)
    {
      goto LABEL_73;
    }
  }

  else if (!v33)
  {
    goto LABEL_73;
  }

  v34 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v79;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "LeConnectionMagnetRSSIThresholdStageOne =%d (override)", buf, 8u);
  }

LABEL_73:
  v35 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionMagnetDisabledToStageOneValue");
  v36 = (*(*v35 + 88))(v35, buf, __p, &v78);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v36)
    {
      goto LABEL_81;
    }
  }

  else if (!v36)
  {
    goto LABEL_81;
  }

  v37 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v78;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "LeConnectionMagnetDisabledToStageOneValue =%d (override)", buf, 8u);
  }

LABEL_81:
  v38 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionMagnetTimeDurationFromDisabledToStageOneValue");
  v39 = (*(*v38 + 88))(v38, buf, __p, &v77);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v39)
    {
      goto LABEL_89;
    }
  }

  else if (!v39)
  {
    goto LABEL_89;
  }

  v40 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v77;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "LeConnectionMagnetTimeDurationFromDisabledToStageOneValue =%d (override)", buf, 8u);
  }

LABEL_89:
  v41 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionMagnetStageOneToDisabledValue");
  v42 = (*(*v41 + 88))(v41, buf, __p, &v76);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v42)
    {
      goto LABEL_97;
    }
  }

  else if (!v42)
  {
    goto LABEL_97;
  }

  v43 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v76;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "LeConnectionMagnetStageOneToDisabledValue =%d (override)", buf, 8u);
  }

LABEL_97:
  v44 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionMagnetTimeDurationFromStageOneToDisabledValue");
  v45 = (*(*v44 + 88))(v44, buf, __p, &v75);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v45)
    {
      goto LABEL_105;
    }
  }

  else if (!v45)
  {
    goto LABEL_105;
  }

  v46 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v75;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "LeConnectionMagnetTimeDurationFromStageOneToDisabledValue =%d (override)", buf, 8u);
  }

LABEL_105:
  __p[0] = 11;
  *buf = __p;
  *(sub_100773F44(a1 + 166, __p, &unk_1008A9BD0, buf) + 36) = 0;
  v47 = v79;
  __p[0] = &dword_100000008 + 3;
  *buf = __p;
  *(sub_100773F44(a1 + 166, __p, &unk_1008A9BD0, buf) + 36) = v47;
  __p[0] = 0x20000000BLL;
  *buf = __p;
  *(sub_100773F44(a1 + 166, __p, &unk_1008A9BD0, buf) + 36) = 0;
  v48 = v78;
  LODWORD(__p[0]) = 11;
  *buf = __p;
  *(sub_100773E70((a1 + 154), __p, &unk_1008A9BD0, buf) + 16) = v48;
  v49 = v77;
  LODWORD(__p[0]) = 11;
  *buf = __p;
  *(sub_100023DF0((a1 + 157), __p, &unk_1008A9BD0, buf) + 8) = v49;
  LOWORD(v49) = v76;
  LODWORD(__p[0]) = 11;
  *buf = __p;
  *(sub_100773E70((a1 + 160), __p, &unk_1008A9BD0, buf) + 16) = v49;
  v50 = v75;
  LODWORD(__p[0]) = 11;
  *buf = __p;
  *(sub_100023DF0((a1 + 163), __p, &unk_1008A9BD0, buf) + 8) = v50;
  LODWORD(__p[0]) = 16;
  *buf = __p;
  *(sub_100773E70((a1 + 154), __p, &unk_1008A9BD0, buf) + 16) = 12;
  LODWORD(__p[0]) = 16;
  *buf = __p;
  *(sub_100023DF0((a1 + 157), __p, &unk_1008A9BD0, buf) + 8) = 1800;
  LODWORD(__p[0]) = 16;
  *buf = __p;
  *(sub_100773E70((a1 + 160), __p, &unk_1008A9BD0, buf) + 16) = 2;
  LODWORD(__p[0]) = 16;
  *buf = __p;
  *(sub_100023DF0((a1 + 163), __p, &unk_1008A9BD0, buf) + 8) = 3600;
  __p[0] = 16;
  *buf = __p;
  *(sub_100773F44(a1 + 166, __p, &unk_1008A9BD0, buf) + 36) = 0;
  v51 = *(a1 + 1354);
  __p[0] = &dword_100000010;
  *buf = __p;
  *(sub_100773F44(a1 + 166, __p, &unk_1008A9BD0, buf) + 36) = v51;
  __p[0] = 0x200000010;
  *buf = __p;
  *(sub_100773F44(a1 + 166, __p, &unk_1008A9BD0, buf) + 36) = 0;
  __p[0] = 21;
  *buf = __p;
  *(sub_100773F44(a1 + 166, __p, &unk_1008A9BD0, buf) + 36) = 0;
  v52 = *(a1 + 1355);
  __p[0] = &dword_100000014 + 1;
  *buf = __p;
  *(sub_100773F44(a1 + 166, __p, &unk_1008A9BD0, buf) + 36) = v52;
  __p[0] = 0x200000015;
  *buf = __p;
  *(sub_100773F44(a1 + 166, __p, &unk_1008A9BD0, buf) + 36) = 0;
  __p[0] = 655360;
  *buf = __p;
  *(sub_100773F44(a1 + 166, __p, &unk_1008A9BD0, buf) + 36) = 0;
  v53 = *(a1 + 1356);
  __p[0] = &loc_1000A0000;
  *buf = __p;
  *(sub_100773F44(a1 + 166, __p, &unk_1008A9BD0, buf) + 36) = v53;
  __p[0] = 0x2000A0000;
  *buf = __p;
  *(sub_100773F44(a1 + 166, __p, &unk_1008A9BD0, buf) + 36) = 0;
  v73 = 1800;
  v74 = 12;
  v71 = 3600;
  v72 = 2;
  v54 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionThirdPartyAppDisabledToStageOneValue");
  v55 = (*(*v54 + 88))(v54, buf, __p, &v74);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v55)
    {
      goto LABEL_113;
    }
  }

  else if (!v55)
  {
    goto LABEL_113;
  }

  v56 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v74;
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "LeConnectionThirdPartyAppDisabledToStageOneValue =%d (override)", buf, 8u);
  }

LABEL_113:
  v57 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionThirdPartyAppTimeDurationFromDisabledToStageOneValue");
  v58 = (*(*v57 + 88))(v57, buf, __p, &v73);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v58)
    {
      goto LABEL_121;
    }
  }

  else if (!v58)
  {
    goto LABEL_121;
  }

  v59 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v73;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "LeConnectionThirdPartyAppTimeDurationFromDisabledToStageOneValue =%d (override)", buf, 8u);
  }

LABEL_121:
  v60 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionThirdPartyAppStageOneToDisabledValue");
  v61 = (*(*v60 + 88))(v60, buf, __p, &v72);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v61)
    {
      goto LABEL_129;
    }
  }

  else if (!v61)
  {
    goto LABEL_129;
  }

  v62 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v72;
    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "LeConnectionThirdPartyAppStageOneToDisabledValue =%d (override)", buf, 8u);
  }

LABEL_129:
  v63 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionThirdPartyAppTimeDurationFromStageOneToDisabledValue");
  v64 = (*(*v63 + 88))(v63, buf, __p, &v71);
  if (v81 < 0)
  {
    operator delete(__p[0]);
  }

  if (v91 < 0)
  {
    operator delete(*buf);
    if (!v64)
    {
      goto LABEL_137;
    }
  }

  else if (!v64)
  {
    goto LABEL_137;
  }

  v65 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v71;
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "LeConnectionThirdPartyAppTimeDurationFromStageOneToDisabledValue =%d (override)", buf, 8u);
  }

LABEL_137:
  v66 = v74;
  LODWORD(__p[0]) = 23;
  *buf = __p;
  *(sub_100773E70((a1 + 154), __p, &unk_1008A9BD0, buf) + 16) = v66;
  v67 = v73;
  LODWORD(__p[0]) = 23;
  *buf = __p;
  *(sub_100023DF0((a1 + 157), __p, &unk_1008A9BD0, buf) + 8) = v67;
  LOWORD(v67) = v72;
  LODWORD(__p[0]) = 23;
  *buf = __p;
  *(sub_100773E70((a1 + 160), __p, &unk_1008A9BD0, buf) + 16) = v67;
  v68 = v71;
  LODWORD(__p[0]) = 23;
  *buf = __p;
  *(sub_100023DF0((a1 + 163), __p, &unk_1008A9BD0, buf) + 8) = v68;
  __p[0] = 23;
  *buf = __p;
  *(sub_100773F44(a1 + 166, __p, &unk_1008A9BD0, buf) + 36) = 0;
  LOBYTE(v68) = *(a1 + 1357);
  __p[0] = &dword_100000014 + 3;
  *buf = __p;
  *(sub_100773F44(a1 + 166, __p, &unk_1008A9BD0, buf) + 36) = v68;
  __p[0] = 0x200000017;
  *buf = __p;
  *(sub_100773F44(a1 + 166, __p, &unk_1008A9BD0, buf) + 36) = 0;
  LODWORD(__p[0]) = 267;
  *buf = __p;
  *(sub_100773E70((a1 + 154), __p, &unk_1008A9BD0, buf) + 16) = 12;
  LODWORD(__p[0]) = 267;
  *buf = __p;
  *(sub_100023DF0((a1 + 157), __p, &unk_1008A9BD0, buf) + 8) = 1800;
  LODWORD(__p[0]) = 267;
  *buf = __p;
  *(sub_100773E70((a1 + 160), __p, &unk_1008A9BD0, buf) + 16) = 2;
  LODWORD(__p[0]) = 267;
  *buf = __p;
  *(sub_100023DF0((a1 + 163), __p, &unk_1008A9BD0, buf) + 8) = 3600;
  __p[0] = 267;
  *buf = __p;
  *(sub_100773F44(a1 + 166, __p, &unk_1008A9BD0, buf) + 36) = 0;
  v69 = *(a1 + 1358);
  __p[0] = &stru_100000100 + 11;
  *buf = __p;
  *(sub_100773F44(a1 + 166, __p, &unk_1008A9BD0, buf) + 36) = v69;
  __p[0] = 0x20000010BLL;
  *buf = __p;
  result = sub_100773F44(a1 + 166, __p, &unk_1008A9BD0, buf);
  *(result + 36) = 0;
  return result;
}

void sub_100741FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 - 41) < 0)
  {
    operator delete(*(v20 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100742080(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 1125);
  if (v4)
  {
    goto LABEL_34;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v5 = sub_10078A13C(off_100B508C8, v3);
  if (v5)
  {
    if (v5 == -127)
    {
      v4 = 0;
    }

    else
    {
      v4 = v5;
    }

    goto LABEL_34;
  }

  if (!sub_1007422D0(a1, v3))
  {
    v4 = 0;
    goto LABEL_34;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v6 = sub_100788D8C(off_100B508C8, v3);
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  v7 = [v3 UUIDString];
  sub_100007E30(v17, [v7 UTF8String]);

  if (SHIBYTE(v18) < 0)
  {
    sub_100008904(__p, v17[0], v17[1]);
  }

  else
  {
    *__p = *v17;
    v16 = v18;
  }

  v8 = sub_1000463C8(a1 + 1192, __p);
  if (a1 + 1200 == v8)
  {
    v9 = 2;
  }

  else
  {
    v9 = *(v8 + 56);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  v14[0] = v6;
  v14[1] = v9;
  v10 = sub_1007740CC(a1 + 1328, v14);
  if (a1 + 1336 == v10)
  {
    v4 = 0;
    goto LABEL_32;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  v11 = sub_100786BB8(off_100B508C8, v3);
  v4 = *(v10 + 36);
  if (v11 == 1)
  {
    goto LABEL_32;
  }

  if (v9 != 1)
  {
    goto LABEL_30;
  }

  if (v6 == 16)
  {
    v12 = 8;
    goto LABEL_31;
  }

  if (v6 == 267 || v6 == 23)
  {
    v12 = 4;
  }

  else
  {
LABEL_30:
    v12 = 0;
  }

LABEL_31:
  v4 += v12;
LABEL_32:
  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

LABEL_34:

  return v4;
}

void sub_100742274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007422D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 1126) != 1)
  {
    v4 = 0;
    goto LABEL_8;
  }

  if (*(a1 + 1125))
  {
    goto LABEL_6;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  if (sub_10078A13C(off_100B508C8, v3))
  {
    goto LABEL_6;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v6 = sub_100788D8C(off_100B508C8, v3);
  v4 = 0;
  if (v6 <= 22)
  {
    if (v6 != 11 && v6 != 16 && v6 != 21)
    {
      goto LABEL_8;
    }

LABEL_6:
    v4 = 1;
    goto LABEL_8;
  }

  if (v6 == 23 || v6 == 267 || v6 == 655360)
  {
    goto LABEL_6;
  }

LABEL_8:

  return v4;
}

uint64_t sub_1007423CC(uint64_t a1, int a2)
{
  v2 = *(a1 + 336);
  v3 = (a1 + 344);
  if (v2 == (a1 + 344))
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086E034();
      }

      v6 = off_100B508C8;
      v7 = sub_10004DF60(v2 + 25);
      v8 = sub_100788D8C(v6, v7);

      if (v8 == a2)
      {
        break;
      }

      v9 = *(v2 + 1);
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
          v10 = *(v2 + 2);
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v5 |= v8 == a2;
      v2 = v10;
      if (v10 == v3)
      {
        return v5 & 1;
      }
    }

    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_1007424C8(uint64_t a1, void *a2)
{
  v2 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v3 = sub_100789BB0(off_100B508C8, v2);
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v4 = sub_100789A60(off_100B508C8, v2);
  v6 = v4;
  if ((v4 & 4) != 0)
  {
    if (v3 != 1)
    {
      if (v3 == 2)
      {
        v10 = 8;
        goto LABEL_22;
      }

      v11 = qword_100BCE980;
      v4 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
      if (v4)
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PHY options are not specified, set to default S2 only", v14, 2u);
      }
    }

    v10 = 16;
LABEL_22:
    v12 = sub_10000C798(v4, v5);
    if ((*(*v12 + 728))(v12))
    {
      v9 = v10 | v6 | 2;
    }

    else
    {
      v9 = v10 | v6;
    }

    goto LABEL_25;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v7 = sub_100788D8C(off_100B508C8, v2);
  if (_os_feature_enabled_impl())
  {
    v9 = (v7 & 0xFFFFFFFE) == 0x1001A || (v7 & 0xFFFFFFFE) == 65564;
  }

  else
  {
    v9 = 0;
  }

LABEL_25:

  return v9;
}

void sub_10074267C(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10086E048();
  }

  sub_100312650(off_100B50A98 + 64, a1);
  v4 = *sub_10000C798(v2, v3);
  if (((*(v4 + 440))() & 1) == 0)
  {
    v5 = sub_100017E6C();
    sub_100532818(v5 + 744, a1 + 8);
  }

  if (qword_100B50910 != -1)
  {
    sub_10086E05C();
  }

  sub_1005BB5D4(off_100B50908, a1 + 24);
  if (qword_100B51098 != -1)
  {
    sub_10086E070();
  }

  sub_10048776C();
  v50 = 0;
  v6 = sub_10000E92C();
  sub_100007E30(buf, "CONNECTION");
  sub_100007E30(__p, "LeConnectionManagerConnectionScansDefaultDuration");
  v7 = (*(*v6 + 88))(v6, buf, __p, &v50);
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(*buf);
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  else if (!v7)
  {
    goto LABEL_17;
  }

  v8 = v50;
  *(a1 + 568) = v50;
  v9 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "LeConnectionManagerConnectionScansDefault duration=%d", buf, 8u);
  }

LABEL_17:
  sub_100195CF0(sub_100742DE4);
  *buf = 0;
  v52 = 0;
  v53 = 0;
  v10 = sub_10000E92C();
  sub_100007E30(__p, "BTUCMCustomConnectionSegments");
  if (!(*(*v10 + 120))(v10, __p, buf) || v52 == *buf)
  {
    if (v49 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_24;
  }

  v11 = 0xAAAAAAAAAAAAAAABLL * (&v52[-*buf] >> 3);
  if ((v49 & 0x80000000) == 0)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_24:
    *(a1 + 112) = 5;
    v12 = malloc_type_malloc(0x28uLL, 0x100004000313F17uLL);
    *(a1 + 104) = v12;
    *v12 = xmmword_1008C5310;
    v12[1] = xmmword_1008C5310;
    *(v12 + 4) = 500;
    goto LABEL_25;
  }

  operator delete(__p[0]);
  if (v11)
  {
    goto LABEL_24;
  }

LABEL_46:
  v35 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Overriding connection schedule segments with user defined", __p, 2u);
  }

  v36 = malloc_type_malloc(0x5555555555555558 * (&v52[-*buf] >> 3), 0x100004000313F17uLL);
  *(a1 + 104) = v36;
  v37 = *buf;
  v38 = v52;
  if (*buf == v52)
  {
    v43 = 0;
  }

  else
  {
    v39 = 0;
    do
    {
      v40 = v39;
      v41 = v37[23];
      v42 = v37;
      if (v39)
      {
        if (v41 < 0)
        {
          v42 = *v37;
        }

        v36[2 * (v39 >> 1) + 1] = atoi(v42);
      }

      else
      {
        if (v41 < 0)
        {
          v42 = *v37;
        }

        v36[2 * (v39 >> 1)] = atoi(v42);
      }

      v39 = v40 + 1;
      v37 += 24;
    }

    while (v37 != v38);
    v43 = v39 >> 1;
  }

  *(a1 + 112) = v43;
LABEL_25:
  sub_100740790(a1);
  v47 = 0;
  v13 = sub_10000E92C();
  sub_100007E30(__p, "Sentinel");
  sub_100007E30(v45, "IsFindMyWatchCoexHandled");
  v14 = (*(*v13 + 72))(v13, __p, v45, &v47);
  v16 = v14;
  v17 = v47;
  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  v18 = v16 & v17;
  if (v49 < 0)
  {
    operator delete(__p[0]);
    if (!v18)
    {
      goto LABEL_33;
    }
  }

  else if (!v18)
  {
    goto LABEL_33;
  }

  v19 = qword_100BCE980;
  v14 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Overriding to handle Coex on watchOS for FindMy.", __p, 2u);
  }

LABEL_33:
  v20 = sub_10000C798(v14, v15);
  v21 = (*(*v20 + 888))(v20);
  *(a1 + 1384) = v21;
  v23 = sub_10000C798(v21, v22);
  v24 = (*(*v23 + 928))(v23);
  *(a1 + 1385) = v24;
  v26 = sub_10000C798(v24, v25);
  v27 = (*(*v26 + 984))(v26);
  *(a1 + 1386) = v27;
  if (*(a1 + 1385) == 1)
  {
    v44 = *(a1 + 1392);
    v29 = sub_10000E92C();
    sub_100007E30(__p, "LE");
    sub_100007E30(v45, "LEInstantFactorMacAU");
    v27 = (*(*v29 + 88))(v29, __p, v45, &v44);
    v30 = v27;
    if (v46 < 0)
    {
      operator delete(v45[0]);
    }

    if (v49 < 0)
    {
      operator delete(__p[0]);
      if (!v30)
      {
        goto LABEL_44;
      }
    }

    else if (!v30)
    {
      goto LABEL_44;
    }

    if (HIWORD(v44))
    {
      v27 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR);
      if (v27)
      {
        sub_10086E084();
      }
    }

    else
    {
      *(a1 + 1392) = v44;
    }
  }

LABEL_44:
  v31 = sub_10000C798(v27, v28);
  v32 = (*(*v31 + 880))(v31);
  *(a1 + 1387) = v32;
  v34 = sub_10000F034(v32, v33);
  (*(*v34 + 640))(v34, *(a1 + 1387));
  __p[0] = buf;
  sub_1000161FC(__p);
}

void sub_100742D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void **a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  a18 = &a25;
  sub_1000161FC(&a18);
  _Unwind_Resume(a1);
}

void sub_100742DE4(uint64_t a1, uint64_t a2, int a3, char a4, int a5)
{
  v8 = a2;
  v10 = sub_100007EE8(a1, a2);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100773A64;
  v11[3] = &unk_100AE0EF8;
  v11[4] = a1;
  v14 = v8;
  v15 = a4;
  v12 = a3;
  v13 = a5;
  sub_10000CA94(v10, v11);
}

_BYTE *sub_100742E8C(uint64_t a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stack Will Start", buf, 2u);
  }

  v20 = 0;
  sub_1000216B4(&v20);
  if (sub_1002D359C())
  {
    v3 = sub_10000E92C();
    if ((*(*v3 + 8))(v3))
    {
      v19 = 0;
      v4 = sub_10000E92C();
      sub_100007E30(buf, "CONNECTION");
      sub_100007E30(__p, "ForceConnectionDelay");
      v5 = (*(*v4 + 88))(v4, buf, __p, &v19);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (v23 < 0)
      {
        operator delete(*buf);
      }

      v6 = qword_100BCE980;
      v7 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        if (v7)
        {
          *buf = 67109120;
          *&buf[4] = v19;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ForceConnectionDelay=%d", buf, 8u);
        }

        sub_1002D3528(v19);
      }

      else if (v7)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Could not find ForceConnectionDelay", buf, 2u);
      }
    }

    sub_1002D1C88();
    if (sub_1002D0844(8))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086E108();
      }
    }

    else if (sub_1002D0844(4))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086E178();
      }
    }

    else if (sub_1002CE244(off_100B0B320))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086E1E8();
      }
    }

    else if (sub_1002CE314(off_100B0B360))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086E258();
      }
    }

    else if (sub_1002D0518(sub_100743360))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086E2C8();
      }
    }

    else if (sub_1002D06A4(sub_1007434E8))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086E338();
      }
    }

    else if (sub_1002E9070(off_100B0B350))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086E3A8();
      }
    }

    else
    {
      sub_1002D07DC(sub_100743560);
      sub_1002D0808(sub_10074366C);
      v9 = *(a1 + 836);
      if (*(a1 + 836))
      {
        v9 = sub_1002C0F84(v9);
      }

      v10 = sub_10000C798(v9, v8);
      if ((*(*v10 + 384))(v10))
      {
        v11 = *(a1 + 1536);
        v12 = *(a1 + 1544);
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10074379C;
        v16[3] = &unk_100B0B3C0;
        v16[4] = a1;
        [v11 startActivityUpdatesToQueue:v12 withHandler:v16];
      }

      v13 = *(a1 + 1528);
      *(a1 + 1528) = 0;

      *(a1 + 1552) = 1;
      sub_100022214(&v20);
      *(a1 + 1066) = 0;
      *buf = 0;
      v22 = 0;
      v14 = sub_100007F88(buf, a1 + 120);
      sub_1000088CC(v14);
    }
  }

  return sub_10002249C(&v20);
}

void sub_100743360()
{
  *&v14[3] = 0;
  *v14 = 0;
  sub_1000841FC(v14);
  v5 = 0;
  v6 = &v5;
  v7 = 0x4812000000;
  v8 = sub_10076C1A8;
  v9 = nullsub_688;
  v10 = "";
  v12 = 0;
  v13 = 0;
  v11 = (v14[1] << 40) | (v14[2] << 32) | (v14[3] << 24) | (v14[4] << 16) | (v14[5] << 8) | v14[6] | (v14[0] << 48);
  v0 = sub_1002D2704(1, v14);
  v6[7] = (v14[1] << 40) | (v14[2] << 32) | (v14[3] << 24) | (v14[4] << 16) | (v14[5] << 8) | v14[6] | (v14[0] << 48);
  v2 = sub_100007EE8(v0, v1);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10076C1C0;
  v3[3] = &unk_100B0B9E0;
  v3[4] = &v5;
  v4 = 0;
  sub_10000CA94(v2, v3);
  _Block_object_dispose(&v5, 8);
}

void sub_1007434CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1007434E8()
{
  v0 = qword_100BCE980;
  v1 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO);
  if (v1)
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "LeConnectionManager::leAddressWillChangeCallback", v4, 2u);
  }

  v3 = sub_100007EE8(v1, v2);
  sub_10000CA94(v3, &stru_100B0BA00);
}

void sub_100743560(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6, int a7, char a8)
{
  if (a1)
  {
    v14 = a2;
    v16 = *(a1 + 70);
    v17 = sub_100007EE8(a1, a2);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100767B18;
    v18[3] = &unk_100B0B868;
    v18[4] = a1;
    v24 = v14;
    v20 = a3;
    v21 = a4;
    v22 = a5;
    v23 = a6;
    v19 = a7;
    v25 = v16;
    v26 = a8;
    sub_10000CA94(v17, v18);
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10086E418();
  }
}

void sub_10074366C(void *a1, uint64_t a2, __int16 a3, unsigned int a4, unint64_t *a5)
{
  v6 = a2;
  v7 = a1;
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  if (a4)
  {
    v9 = a4;
    do
    {
      a1 = sub_10005B93C(&v16, a5, a5);
      ++a5;
      --v9;
    }

    while (v9);
  }

  v10 = sub_100007EE8(a1, a2);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3321888768;
  v11[2] = sub_100768F84;
  v11[3] = &unk_100B0B888;
  v15 = v7;
  v13 = v6;
  v14 = a3;
  sub_100775F10(v12, &v16);
  sub_10000CA94(v10, v11);
  sub_10000CEDC(v12, v12[1]);
  sub_10000CEDC(&v16, v17[0]);
}

void sub_10074376C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  sub_10000CEDC(v19 + 32, a15);
  sub_10000CEDC(&a18, a19);
  _Unwind_Resume(a1);
}

void sub_1007437A4(uint64_t a1, void *a2)
{
  v4 = a2;
  v6 = sub_10000C7D0(v4, v5);
  if ((sub_10008215C(v6, 3u) & 1) != 0 && [v4 confidence] == 2)
  {
    if (!*(a1 + 1528) || (v7 = *(a1 + 1552), v7 != [v4 stationary]))
    {
      objc_storeStrong((a1 + 1528), a2);
      *(a1 + 1552) = [v4 stationary];
      v8 = [v4 stationary];
      if ((v8 & 1) == 0)
      {
        v10 = sub_100007EE8(v8, v9);
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_100748090;
        v11[3] = &unk_100ADF8F8;
        v11[4] = a1;
        sub_10000CA94(v10, v11);
      }
    }
  }
}

_BYTE *sub_1007438A8(uint64_t a1)
{
  v2 = qword_100BCE980;
  v3 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stack Did Start", buf, 2u);
  }

  v5 = sub_10000C7D0(v3, v4);
  v6 = (*(*v5 + 336))(v5, 1);
  v8 = sub_10000C7D0(v6, v7);
  v9 = (*(*v8 + 448))(v8, 12, 1);
  v11 = sub_10000C7D0(v9, v10);
  v13 = *(v11 + 800);
  if ((v13 - 1) >= 0xB)
  {
    if ((v13 - 2000) > 0x7CF)
    {
      goto LABEL_8;
    }

    v14 = 14;
  }

  else
  {
    v14 = 7;
  }

  v15 = sub_10000C7D0(v11, v12);
  v11 = (*(*v15 + 856))(v15, v14, 1);
LABEL_8:
  v16 = sub_10000C7D0(v11, v12);
  v17 = (*(*v16 + 984))(v16, 10);
  v19 = sub_10000C7D0(v17, v18);
  v20 = (*(*v19 + 4040))(v19);
  if (v20)
  {
    v22 = sub_10000C7D0(v20, v21);
    (*(*v22 + 4048))(v22, 0);
  }

  *(a1 + 184) = 1;
  *(a1 + 1008) = 1;
  *(a1 + 1064) = 1;
  *(a1 + 1067) = 0;
  v23 = sub_100017E6C();
  sub_1003128B0(v23 + 384, a1 + 16);
  v24 = sub_100017E6C();
  sub_1005689CC(v24 + 344, a1 + 88);
  v56 = 0;
  *(a1 + 633) = 0;
  v25 = sub_100017E6C();
  (*(*v25 + 80))(v25, &v56);
  v26 = sub_100017E6C();
  (*(*v26 + 88))(v26, a1 + 633);
  v27 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v28 = *(a1 + 633);
    *buf = 67109376;
    *&buf[4] = v28;
    *&buf[8] = 1024;
    *&buf[10] = v56;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Low Power mode: %d. Airplane Mode: %d", buf, 0xEu);
  }

  v55 = 0;
  sub_1000216B4(&v55);
  *&v54[3] = 0;
  *v54 = 0;
  *&v53[3] = 0;
  *v53 = 0;
  sub_1000841FC(v54);
  sub_1002D2704(1, v53);
  *(a1 + 1593) = sub_10024E430();
  sub_100022214(&v55);
  v29 = (v53[1] << 40) | (v53[2] << 32) | (v53[3] << 24) | (v53[4] << 16) | (v53[5] << 8) | v53[6] | (v53[0] << 48);
  *(a1 + 288) = (v54[1] << 40) | (v54[2] << 32) | (v54[3] << 24) | (v54[4] << 16) | (v54[5] << 8) | v54[6] | (v54[0] << 48);
  *(a1 + 296) = v29;
  *(a1 + 328) = CFAbsoluteTimeGetCurrent();
  if (qword_100B50910 != -1)
  {
    sub_10086E454();
  }

  sub_1005BC904(off_100B50908, 0);
  sub_1007440F4(a1, *(a1 + 352) != 0);
  sub_100744178(a1, 0, 0, 1);
  if (qword_100BC7AE8 != -1)
  {
    sub_10086E47C();
  }

  v52 = 0;
  v30 = sub_10000E92C();
  sub_100007E30(buf, "Magnet");
  sub_100007E30(__p, "DisableMagnetSetLatency");
  v31 = (*(*v30 + 72))(v30, buf, __p, &v52);
  if (v51 < 0)
  {
    operator delete(__p[0]);
  }

  if ((SBYTE7(v58) & 0x80000000) == 0)
  {
    if (!v31)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  operator delete(*buf);
  if (v31)
  {
LABEL_20:
    *(a1 + 632) = 1;
  }

LABEL_21:
  v49 = 0;
  *(a1 + 1520) = 0;
  v32 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ConnectionScanTimeoutOverride");
  v33 = (*(*v32 + 88))(v32, buf, __p, &v49);
  if (v51 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v58) < 0)
  {
    operator delete(*buf);
    if (!v33)
    {
      goto LABEL_32;
    }
  }

  else if (!v33)
  {
    goto LABEL_32;
  }

  v34 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v49;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Warning: LeConnectionScanTimeoutOverride: Using override value (%d) for fLeConnectionScanTimeoutOverride", buf, 8u);
  }

  *(a1 + 1524) = v49;
  *(a1 + 1520) = 1;
LABEL_32:
  sub_100773BDC(a1 + 1448, *(a1 + 1456));
  *(a1 + 1448) = a1 + 1456;
  *(a1 + 1456) = 0u;
  sub_100773BDC(a1 + 1472, *(a1 + 1480));
  *(a1 + 1472) = a1 + 1480;
  *(a1 + 1480) = 0u;
  LOBYTE(__p[0]) = -1;
  v70 = 0u;
  memset(v71, 0, sizeof(v71));
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
  *buf = 0u;
  v48 = 0;
  if (qword_100B50AA0 != -1)
  {
    sub_10086E4A4();
  }

  if (*(off_100B50A98 + 572))
  {
    v37 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR);
    if (v37)
    {
      sub_10086E53C();
    }
  }

  else
  {
    v39 = sub_10000C7D0(v35, v36);
    if ((*(*v39 + 2200))(v39, &v48, __p, buf))
    {
      v37 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR);
      if (v37)
      {
        sub_10086E4CC();
      }
    }

    else
    {
      v40 = [NSData dataWithBytes:buf length:LOBYTE(__p[0])];
      v41 = *(a1 + 1584);
      *(a1 + 1584) = v40;

      *(a1 + 1592) = v48;
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_100744680;
      v47[3] = &unk_100B0B400;
      v47[4] = a1;
      sub_10074063C(a1, v47);
      v44 = sub_100007EE8(v42, v43);
      sub_10000CA94(v44, &stru_100B0B420);
    }
  }

  v45 = sub_10000C798(v37, v38);
  if ((*(*v45 + 352))(v45))
  {
    if (qword_100B54208 != -1)
    {
      sub_10086E578();
    }

    sub_1007F024C(qword_100B54200, 0x10000);
    if (qword_100B54208 != -1)
    {
      sub_10086E578();
    }

    sub_1007F024C(qword_100B54200, 65537);
  }

  return sub_10002249C(&v55);
}

void sub_100744084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, __int16 a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  sub_10002249C(&a25);
  _Unwind_Resume(a1);
}

void sub_1007440F4(os_unfair_lock_s *a1, int a2)
{
  if (byte_100B54ED8 != a2)
  {
    v6 = v2;
    v7 = v3;
    byte_100B54ED8 = a2;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10076B9EC;
    v4[3] = &unk_100B0B8F8;
    v5 = a2;
    sub_10074063C(a1, v4);
  }
}

void sub_100744178(uint64_t a1, void *a2, char a3, int a4)
{
  v7 = a2;
  v9 = sub_10000C7D0(v7, v8);
  if ((*(*v9 + 3144))(v9))
  {
    v10 = *(a1 + 336);
    v11 = -127;
    if (v10 != (a1 + 344))
    {
      do
      {
        v12 = sub_10004DF60(v10 + 25);
        v13 = sub_100742080(a1, v12);

        if (v13)
        {
          v14 = sub_10004DF60(v10 + 25);
          v15 = sub_100742080(a1, v14);

          if (v15 > v11)
          {
            v16 = sub_10004DF60(v10 + 25);
            v11 = sub_100742080(a1, v16);
          }
        }

        v17 = *(v10 + 1);
        if (v17)
        {
          do
          {
            v18 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = *(v10 + 2);
            v24 = *v18 == v10;
            v10 = v18;
          }

          while (!v24);
        }

        v10 = v18;
      }

      while (v18 != (a1 + 344));
    }

    v19 = *(a1 + 1128);
    if (*(a1 + 1128))
    {
      v20 = *(a1 + 1128);
    }

    else
    {
      v20 = v11;
    }

    if (sub_1007423CC(a1, 3))
    {
      v21 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 736);
        v31 = 67109120;
        LODWORD(v32) = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "FindMy object connection enabled, skipping Global RSSI. LastApplied =%d dBm)", &v31, 8u);
      }

      if (*(a1 + 736))
      {
        v20 = 0;
        a4 = 1;
      }
    }

    if (a4)
    {
      v23 = a3;
    }

    else
    {
      v23 = v20;
    }

    if ((a4 & 1) != 0 || (v20 == a3 ? (v24 = v19 == 0) : (v24 = 0), !v24))
    {
      *(a1 + 736) = v23;
      v25 = qword_100BCE980;
      v26 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
      if (v26)
      {
        v31 = 138544386;
        v32 = v7;
        v33 = 1024;
        v34 = -1;
        v35 = 1024;
        v36 = -1;
        v37 = 1024;
        v38 = -1;
        v39 = 1024;
        v40 = v23;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Applying configureCreateConnection for device %{public}@ to connection filter accept list with option Timeout=%d, smartNotification=%d, connectRequestRetry=%d, minRssiToUpdate=%d", &v31, 0x24u);
      }

      v28 = sub_10000C7D0(v26, v27);
      v29 = (*(*v28 + 1952))(v28, 255, 255, 255, v23);
      if (v29)
      {
        v30 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v31 = 67109120;
          LODWORD(v32) = v29;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "configureCreateConnection failed with error %d", &v31, 8u);
        }
      }
    }
  }
}

void sub_1007444D4(id a1)
{
  v10 = 0;
  v1 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "FastConnectionOverrideInstance");
  v2 = (*(*v1 + 88))(v1, buf, __p, &v10);
  if (v10 > 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(*buf);
    if (!v3)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  v4 = qword_100BCE980;
  v5 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    *buf = 67109120;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FastLEConnection:calling setMaxInstantUpdateForFastLEConnection with %d", buf, 8u);
  }

  v7 = sub_10000C7D0(v5, v6);
  (*(*v7 + 2224))(v7, v10);
}

void sub_100744644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_1007446B8(id a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v2 = off_100B508C8;

  sub_10078B92C(v2);
}

_BYTE *sub_1007446FC(uint64_t a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LeConnectionManager::stackWillStop enter", buf, 2u);
  }

  v3 = sub_100017E6C();
  sub_10036F1AC(v3 + 384, a1 + 16);
  v4 = sub_100017E6C();
  sub_100568C6C(v4 + 344, a1 + 88);
  v51 = 0;
  sub_1000216B4(&v51);
  if (sub_1002D359C())
  {
    sub_100022214(&v51);
    *(a1 + 1067) = 1;
    v5 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 352);
      *buf = 134217984;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Trying to cancel all pending connections (%lu)", buf, 0xCu);
    }

    *buf = 0uLL;
    sub_100007F88(buf, a1 + 120);
    if (*(a1 + 352) && !sub_10074518C(a1, 1) && *(a1 + 1064) == 1 && !sub_10002220C((a1 + 1016), buf, 0x1388uLL))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086E5A0();
      }

      v44 = sub_10000E92C();
      sub_100007E30(&v50, "");
      sub_100693260(v44, 141, &v50, 1);
    }

    sub_10000801C(buf);
    sub_1000618AC(&v51);
    v7 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Trying to disconnect all LE connections", v53, 2u);
    }

    v8 = sub_1002D1EEC(sub_10074577C);
    if (v8)
    {
      v9 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *v53 = 67109120;
        v54 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "LE_GAP_DisconnectAll returned %{bluetooth:OI_STATUS}u", v53, 8u);
      }
    }

    sub_100022214(&v51);
    v10 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *v53 = 67109120;
      v54 = 5000;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "waiting for all LE devices complete disconnection, timeout %d", v53, 8u);
    }

    sub_100007FB8(buf);
    if (!v8 && *(a1 + 1008) == 1 && !sub_10002220C((a1 + 960), buf, 0x1388uLL))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086E5DC();
      }

      v43 = sub_10000E92C();
      sub_100007E30(v49, "");
      sub_100693260(v43, 141, v49, 1);
    }

    sub_10000801C(buf);
    byte_100BCECA8 = 0;
    byte_100BCECA9 = 0;
    sub_10002286C(&stru_100BCEBF8);
    sub_10002286C(&stru_100BCEBC8);
    v11 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No more LE connections", v53, 2u);
    }

    sub_10002286C(&stru_100BCECB0);
    byte_100BCED20 = 0;
    sub_1000618AC(&v51);
    if (sub_1002D08F0(8, v12, v13, v14, v15, v16, v17, v18) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086E618();
    }

    sub_1002CE3E4(off_100B0B320);
    sub_1002D05E8(sub_100743360);
    sub_100022214(&v51);
    sub_100007FB8(buf);
    *(a1 + 184) = 0;
    v19 = *(a1 + 384);
    v20 = (a1 + 392);
    if (v19 != (a1 + 392))
    {
      do
      {
        if (qword_100B54208 != -1)
        {
          sub_10086E578();
        }

        v21 = qword_100B54200;
        v22 = sub_10004DF60(v19 + 32);
        sub_1007F1548(v21, v22, 0);

        v23 = *(v19 + 1);
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v24 = *(v19 + 2);
            v25 = *v24 == v19;
            v19 = v24;
          }

          while (!v25);
        }

        v19 = v24;
      }

      while (v24 != v20);
    }

    sub_10000CEDC(a1 + 384, *(a1 + 392));
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 384) = v20;
    v26 = *(a1 + 336);
    v27 = (a1 + 344);
    if (v26 != (a1 + 344))
    {
      do
      {
        if (qword_100B54208 != -1)
        {
          sub_10086E578();
        }

        v28 = qword_100B54200;
        v29 = sub_10004DF60(v26 + 25);
        sub_1007F1548(v28, v29, 0);

        v30 = *(v26 + 1);
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
            v31 = *(v26 + 2);
            v25 = *v31 == v26;
            v26 = v31;
          }

          while (!v25);
        }

        v26 = v31;
      }

      while (v31 != v27);
    }

    sub_10000CEDC(a1 + 336, *(a1 + 344));
    *(a1 + 336) = v27;
    *v27 = 0u;
    sub_10000CEDC(a1 + 608, *(a1 + 616));
    *(a1 + 608) = a1 + 616;
    *(a1 + 616) = 0u;
    sub_10000CEDC(a1 + 360, *(a1 + 368));
    *(a1 + 360) = a1 + 368;
    *(a1 + 368) = 0u;
    sub_100773B78(a1 + 640, *(a1 + 648));
    *(a1 + 640) = a1 + 648;
    *(a1 + 648) = 0u;
    sub_10000CEDC(a1 + 664, *(a1 + 672));
    *(a1 + 664) = a1 + 672;
    *(a1 + 672) = 0u;
    sub_10000CEDC(a1 + 688, *(a1 + 696));
    *(a1 + 688) = a1 + 696;
    *(a1 + 696) = 0u;
    sub_10000CEDC(a1 + 712, *(a1 + 720));
    *(a1 + 712) = a1 + 720;
    *(a1 + 720) = 0u;
    sub_10000CEDC(a1 + 408, *(a1 + 416));
    *(a1 + 408) = a1 + 416;
    *(a1 + 416) = 0u;
    sub_10000CEDC(a1 + 432, *(a1 + 440));
    *(a1 + 432) = a1 + 440;
    *(a1 + 440) = 0u;
    sub_10000CEDC(a1 + 840, *(a1 + 848));
    *(a1 + 840) = a1 + 848;
    *(a1 + 848) = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v32 = *(a1 + 744);
    v33 = [v32 countByEnumeratingWithState:&v45 objects:v52 count:16];
    if (v33)
    {
      v34 = *v46;
      do
      {
        v35 = 0;
        do
        {
          if (*v46 != v34)
          {
            objc_enumerationMutation(v32);
          }

          v36 = *(*(&v45 + 1) + 8 * v35);
          if (qword_100B54208 != -1)
          {
            sub_10086E578();
          }

          sub_1007F1548(qword_100B54200, v36, 0);

          v35 = v35 + 1;
        }

        while (v33 != v35);
        v33 = [v32 countByEnumeratingWithState:&v45 objects:v52 count:16];
      }

      while (v33);
    }

    [*(a1 + 744) removeAllObjects];
    [*(a1 + 752) removeAllObjects];
    [*(a1 + 760) removeAllObjects];
    [*(a1 + 768) removeAllObjects];
    [*(a1 + 776) removeAllObjects];
    [*(a1 + 784) removeAllObjects];
    [*(a1 + 792) removeAllObjects];
    [*(a1 + 824) removeAllObjects];
    sub_10000CEDC(a1 + 456, *(a1 + 464));
    *(a1 + 456) = a1 + 464;
    *(a1 + 464) = 0u;
    sub_10000CEDC(a1 + 480, *(a1 + 488));
    *(a1 + 480) = a1 + 488;
    *(a1 + 488) = 0u;
    sub_10000CEDC(a1 + 504, *(a1 + 512));
    *(a1 + 504) = a1 + 512;
    *(a1 + 512) = 0u;
    sub_10000CEDC(a1 + 528, *(a1 + 536));
    *(a1 + 528) = a1 + 536;
    *(a1 + 536) = 0u;
    sub_10000CEDC(a1 + 800, *(a1 + 808));
    *(a1 + 800) = a1 + 808;
    *(a1 + 808) = 0u;
    v37 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Setting initial connection state", v53, 2u);
    }

    sub_100745874(a1, 0);
    sub_100745C6C(a1, 0);
    sub_100745DEC(a1);
    sub_100745EFC(a1);
    sub_10007A490(a1 + 936, *(a1 + 944));
    *(a1 + 936) = a1 + 944;
    *(a1 + 944) = 0u;
    *(a1 + 328) = 0;
    sub_1003C46E0(a1 + 1160, *(a1 + 1168));
    *(a1 + 1160) = a1 + 1168;
    *(a1 + 1168) = 0u;
    sub_10004B61C(a1 + 1192, *(a1 + 1200));
    *(a1 + 1192) = a1 + 1200;
    *(a1 + 1200) = 0u;
    sub_10004B61C(a1 + 1360, *(a1 + 1368));
    *(a1 + 1360) = a1 + 1368;
    *(a1 + 1368) = 0u;
    sub_10000CEDC(a1 + 1400, *(a1 + 1408));
    *(a1 + 1400) = a1 + 1408;
    *(a1 + 1408) = 0u;
    sub_10000CEDC(a1 + 1136, *(a1 + 1144));
    *(a1 + 1136) = a1 + 1144;
    *(a1 + 1144) = 0u;
    sub_1005B0DAC(a1 + 32);
    sub_100773BDC(a1 + 1448, *(a1 + 1456));
    *(a1 + 1448) = a1 + 1456;
    *(a1 + 1456) = 0u;
    sub_100773BDC(a1 + 1472, *(a1 + 1480));
    *(a1 + 1472) = a1 + 1480;
    *(a1 + 1480) = 0u;
    sub_100745F94(a1);
    v40 = sub_10000C7D0(v38, v39);
    (*(*v40 + 4328))(v40);
    [*(a1 + 1536) stopActivityUpdates];
    v41 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "LeConnectionManager::stackWillStop exit", v53, 2u);
    }

    sub_1000088CC(buf);
  }

  return sub_10002249C(&v51);
}