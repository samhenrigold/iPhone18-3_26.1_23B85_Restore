void sub_10053BEB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10053BF5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B508F0 != -1)
  {
    sub_1000E2FD0();
  }

  v2 = off_100B508E8;

  return sub_10056B15C(v2, v1, 4);
}

uint64_t sub_10053BFB4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v29[0] = 0;
  v29[1] = 0;
  sub_100007F88(v29, a1);
  v8 = *(a1 + 592);
  v9 = (a1 + 600);
  if (v8 == v9)
  {
LABEL_21:
    v20 = 0;
    goto LABEL_22;
  }

  while (!sub_10037E730(v8[4], a2))
  {
    v10 = v8[1];
    if (v10)
    {
      do
      {
        v11 = v10;
        v10 = *v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        v11 = v8[2];
        v12 = *v11 == v8;
        v8 = v11;
      }

      while (!v12);
    }

    v8 = v11;
    if (v11 == v9)
    {
      goto LABEL_21;
    }
  }

  v27 = 0;
  v28[0] = 0;
  v28[1] = 0;
  sub_10041F568(&v27, (v8 + 5));
  v13 = v28[0];
  if (!v28[0])
  {
    goto LABEL_18;
  }

  v14 = v28;
  v15 = v28[0];
  do
  {
    v16 = *(v15 + 32);
    v17 = v16 >= a3;
    v18 = v16 < a3;
    if (v17)
    {
      v14 = v15;
    }

    v15 = *(v15 + 8 * v18);
  }

  while (v15);
  if (v14 == v28 || *(v14 + 8) > a3)
  {
LABEL_18:
    v19 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Couldn't find SDP attribute 0x%04x", buf, 8u);
      v13 = v28[0];
    }

    sub_10000CEDC(&v27, v13);
    goto LABEL_21;
  }

  *buf = *(v14 + 5);
  v26 = 0uLL;
  if (buf[0] - 6 >= 2)
  {
    if (buf[0] && sub_10037E830(&v26, buf))
    {
      sub_10053C22C(a4, &v26);
    }

    v25 = v28[0];
  }

  else
  {
    v22 = *&buf[2];
    if (*&buf[2])
    {
      v23 = 0;
      v24 = *&buf[8];
      do
      {
        if (sub_10037E830(&v26, v24))
        {
          sub_10053C22C(a4, &v26);
        }

        ++v23;
        v24 += 16;
      }

      while (v23 < v22);
      v13 = v28[0];
    }

    v25 = v13;
  }

  sub_10000CEDC(&v27, v25);
  v20 = 1;
LABEL_22:
  sub_1000088CC(v29);
  return v20;
}

void sub_10053C1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void *);
  v11 = va_arg(va1, void);
  sub_10000CEDC(va, v10);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

void sub_10053C22C(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_1000C7698();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_100551490(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

BOOL sub_10053C304(uint64_t a1, _BYTE *a2)
{
  if (*a2 != 3)
  {
    return 0;
  }

  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1);
  v4 = *(a1 + 592);
  v5 = (a1 + 600);
  if (v4 == (a1 + 600))
  {
    v6 = 0;
  }

  else
  {
    while (1)
    {
      v6 = sub_10037E730(v4[4], a2);
      if (v6)
      {
        break;
      }

      v7 = v4[1];
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
        do
        {
          v8 = v4[2];
          v9 = *v8 == v4;
          v4 = v8;
        }

        while (!v9);
      }

      v4 = v8;
      if (v8 == v5)
      {
        goto LABEL_14;
      }
    }

    v6 = 1;
  }

LABEL_14:
  sub_1000088CC(v11);
  return v6;
}

BOOL sub_10053C3E8(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 608) != 0;
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10053C438(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1);
  v6 = (a1 + 312);
  if (*(a1 + 312) == 0 || *(a1 + 304) != a2)
  {
    *(a1 + 304) = a2;
    if (v6 != a3)
    {
      *v6 = *a3;
    }

    sub_10000801C(v12);
    if (sub_1000295DC(a1))
    {
      v7 = qword_100BCE8D8;
      v8 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        *buf = 67109120;
        v14 = a2;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Set class of device to %u", buf, 8u);
      }

      v10 = sub_1000BE4B4(v8, v9);
      (*(*v10 + 264))(v10, a1, a2);
    }

    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 5);
  }

  else if (v6 != a3)
  {
    *v6 = *a3;
  }

  return sub_1000088CC(v12);
}

unsigned __int16 *sub_10053C5E0(_WORD *a1, uint64_t a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6)
{
  sub_10000AE20((a1 + 532), a2);
  a1[540] = a3;
  a1[541] = a4;
  a1[542] = a5;
  a1[543] = a6;

  return sub_10053C64C(a1);
}

unsigned __int16 *sub_10053C64C(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Updating HID Device Types", v12, 2u);
  }

  result = sub_10000C5F8(a1 + 1064);
  if (result)
  {
    v4 = *(a1 + 1082);
    v5 = *(a1 + 1080);
    v6 = *(a1 + 1084);
  }

  else
  {
    if (*(a1 + 1124) != 1)
    {
      return result;
    }

    v4 = *(a1 + 1128);
    v5 = *(a1 + 1132);
    v6 = *(a1 + 1136);
  }

  v7 = qword_100BCE6B0;
  for (i = qword_100BCE6B8; v7 != i; v7 += 40)
  {
    result = sub_1003141CC(qword_100BCE668, v7);
    if (v4 == *result)
    {
      result = sub_1003141CC(&unk_100BCE680, (v7 + 4));
      if (v5 == *result)
      {
        v10 = *(v7 + 8);
        v9 = *(v7 + 16);
        if (v9 != v10)
        {
          while (1)
          {
            result = sub_1003141CC(&unk_100BCE698, v10);
            if (v6 == *result)
            {
              break;
            }

            if (++v10 == v9)
            {
              goto LABEL_16;
            }
          }
        }

        v11 = *(v7 + 32);
        if (v11 >= 0x20)
        {
          abort();
        }

        *(a1 + 784) |= 1 << v11;
      }
    }

LABEL_16:
    ;
  }

  return result;
}

BOOL sub_10053C7C8(_WORD *a1, uint64_t a2, _WORD *a3, _WORD *a4, _WORD *a5, _WORD *a6)
{
  if (sub_10000C5F8((a1 + 532)))
  {
    sub_10000AE20(a2, (a1 + 532));
    *a3 = a1[540];
    *a4 = a1[541];
    *a5 = a1[542];
    *a6 = a1[543];
  }

  return sub_10000C5F8((a1 + 532)) != 0;
}

uint64_t sub_10053C86C(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v2 = *(a1 + 176);
  sub_1000088CC(v7);
  if (v2 != 26)
  {
    return 0;
  }

  v3 = *(a1 + 784);
  v4 = (v3 & 0x2E800) == 0;
  v5 = (v3 >> 18) & 1;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10053C8DC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 176);
  sub_1000088CC(v4);
  if (v2 != 26)
  {
    return 0;
  }

  if ((*(a1 + 784) & 0x3000) != 0)
  {
    return 1;
  }

  return (*(a1 + 784) >> 14) & 1;
}

uint64_t sub_10053C990(uint64_t a1)
{
  result = sub_10000C5F8(a1 + 1064);
  if (result)
  {
    return *(a1 + 1086) > 0x100u;
  }

  return result;
}

uint64_t sub_10053C9C8(uint64_t a1)
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v10 = 0;
    v2 = sub_10000E92C();
    sub_100007E30(buf, "HID");
    sub_100007E30(__p, "EnableGamepads");
    (*(*v2 + 72))(v2, buf, __p, &v10);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    if (v9 < 0)
    {
      operator delete(*buf);
    }

    if ((*(a1 + 785) & 0x2E8) == 0)
    {
      v3 = v10;
      if ((v10 & 1) == 0)
      {
        return v3 & 1;
      }

      v5 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Bypassing MFi gamepad authentication", buf, 2u);
        v3 = v10;
        return v3 & 1;
      }
    }
  }

  v3 = 1;
  return v3 & 1;
}

void sub_10053CAF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10053CB68(uint64_t a1)
{
  v2 = &off_100AE0A78;
  v3 = 0;
  sub_10000AE20(a1 + 1064, &v2);
  v2 = &off_100AE0A78;
  if (v3)
  {
    sub_10000C808(v3);
  }

  *(a1 + 1080) = 0;
}

void sub_10053CBD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    sub_10000C808(a10);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10053CBF0(_BYTE *result, char a2, char a3)
{
  result[1051] = 1;
  result[1052] = a2;
  result[1060] = a3;
  return result;
}

uint64_t sub_10053CC04(_BYTE *a1, _BYTE *a2, _BYTE *a3)
{
  if (a1[1051] == 1)
  {
    *a2 = a1[1052];
    *a3 = a1[1060];
    v3 = a1[1051];
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

int32x2_t sub_10053CC34(uint64_t a1, __int32 a2)
{
  v2.i32[0] = 1;
  v2.i32[1] = a2;
  result = vadd_s32(*(a1 + 1220), v2);
  *(a1 + 1220) = result;
  return result;
}

int32x2_t sub_10053CC50(uint64_t a1, __int32 a2)
{
  v2.i32[0] = 1;
  v2.i32[1] = a2;
  result = vadd_s32(*(a1 + 1212), v2);
  *(a1 + 1212) = result;
  return result;
}

BOOL sub_10053CC6C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1053) != 255;
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10053CCBC(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v10[1] = 0;
  v4 = sub_100007F88(v10, a1);
  *(a1 + 1053) = a2;
  v6 = sub_1000BE4B4(v4, v5);
  v7 = (*(*v6 + 1424))(v6, a1, a2);
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v12 = a2;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setEncryptionKeySize to %d with result %d", buf, 0xEu);
  }

  return sub_1000088CC(v10);
}

uint64_t sub_10053CDEC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1053);
  sub_1000088CC(v4);
  return v2;
}

BOOL sub_10053CE34(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1054) != 255;
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10053CE84(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v10[1] = 0;
  v4 = sub_100007F88(v10, a1);
  *(a1 + 1054) = a2;
  v6 = sub_1000BE4B4(v4, v5);
  v7 = (*(*v6 + 1440))(v6, a1, a2);
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v12 = a2;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setEncryptionMode to %d with result %d", buf, 0xEu);
  }

  return sub_1000088CC(v10);
}

uint64_t sub_10053CFB4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1054);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10053CFFC(uint64_t a1, uint64_t a2)
{
  *(a1 + 1056) = a2;
  v2 = *(*sub_1000BE4B4(a1, a2) + 1456);

  return v2();
}

void sub_10053D06C(uint64_t a1, int a2)
{
  v4 = sub_10000C5F8(a1 + 1064);
  if (v4)
  {
    *(a1 + 1428) = a2;
    v6 = *(*sub_1000BE4B4(v4, v5) + 1472);

    v6();
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100840AE8(a1);
  }
}

uint64_t sub_10053D124(uint64_t a1)
{
  v2 = *(a1 + 1124);
  v3 = qword_100BCE8D8;
  v4 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      sub_1000C23E0(a1, __p);
      if (v15 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 136446466;
      v19 = "BOOL BT::Device::isDeviceSupported()";
      v20 = 2082;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s - “%{public}s” has deviceID - calling CBUtil isDeviceSupported:", buf, 0x16u);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v16[0] = @"DeviceType";
    v6 = [NSNumber numberWithUnsignedInt:*(a1 + 176)];
    v17[0] = v6;
    v16[1] = @"VendorIDSrc";
    v7 = [NSNumber numberWithUnsignedInt:*(a1 + 1128)];
    v17[1] = v7;
    v16[2] = @"VendorID";
    v8 = [NSNumber numberWithUnsignedInt:*(a1 + 1132)];
    v17[2] = v8;
    v16[3] = @"ProductID";
    v9 = [NSNumber numberWithUnsignedInt:*(a1 + 1136)];
    v17[3] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:4];
    v11 = [CBUtil isDeviceSupported:v10];
  }

  else
  {
    if (v4)
    {
      sub_1000C23E0(a1, __p);
      v12 = v15 >= 0 ? __p : __p[0];
      *buf = 136446466;
      v19 = "BOOL BT::Device::isDeviceSupported()";
      v20 = 2082;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s - “%{public}s” no deviceID - returning true", buf, 0x16u);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 1;
  }

  return v11;
}

uint64_t sub_10053D3E0(uint64_t a1)
{
  if (qword_100B54220 != -1)
  {
    sub_1008408A4();
  }

  v2 = sub_1003C62F8(qword_100B54218, 2);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  sub_100703DD4(v2, &v16);
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 1128);
    v12 = *(a1 + 1132);
    sub_1000E5A58(a1, __p);
    if (v15 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    *buf = 67109634;
    v20 = v11;
    v21 = 1024;
    v22 = v12;
    v23 = 2082;
    v24 = v13;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Identification - isVendorWithInvalidOUIs looking for vidSrc: %d and vendorID: %d for device %{public}s", buf, 0x18u);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v17)
  {
    v4 = *(a1 + 1128);
    v5 = *(a1 + 1132);
    v6 = v17;
    while (1)
    {
      v7 = *(v6 + 7);
      if (v4 >= v7)
      {
        if (v7 < v4)
        {
          goto LABEL_10;
        }

        v8 = *(v6 + 8);
        if (v5 >= v8)
        {
          break;
        }
      }

LABEL_11:
      v6 = *v6;
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    if (v8 >= v5)
    {
      v9 = 1;
      goto LABEL_13;
    }

LABEL_10:
    ++v6;
    goto LABEL_11;
  }

LABEL_12:
  v9 = 0;
LABEL_13:
  sub_10000CEDC(&v16, v17);
  return v9;
}

uint64_t sub_10053D5A0(uint64_t result, __int16 a2, int a3)
{
  if (a3 == 8194)
  {
    v3 = result;
    if (*(result + 1125) == 1 && (a2 & 0x4000) != 0 && (*(result + 1144) & 0x4000) == 0)
    {
      v4 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v3, &__p);
        if (v10 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        *buf = 136446210;
        v12 = p_p;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Upgrading Device %{public}s to enhanced double tap", buf, 0xCu);
        if (v10 < 0)
        {
          operator delete(__p);
        }
      }

      __p = 0;
      v9 = 0;
      sub_100007F88(&__p, v3);
      v6 = *(v3 + 800);
      sub_1000088CC(&__p);
      __p = 0;
      v9 = 0;
      sub_100007F88(&__p, v3);
      v7 = *(v3 + 800);
      sub_1000088CC(&__p);
      return sub_10053D6E4(v3, v6 | (v7 << 8));
    }
  }

  return result;
}

uint64_t sub_10053D6E4(uint64_t a1, int a2)
{
  v14[0] = 0;
  v14[1] = 0;
  v4 = sub_100007F88(v14, a1);
  v5 = *(a1 + 800);
  *(a1 + 800) = a2;
  v7 = sub_1000BE4B4(v4, v6);
  (*(*v7 + 856))(v7, a1, *(a1 + 800));
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 800);
    sub_1000E5A58(a1, __p);
    v10 = v13 >= 0 ? __p : __p[0];
    *buf = 67109378;
    v16 = v9;
    v17 = 2082;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Double tap settings is set to %d for Device %{public}s", buf, 0x12u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v5 != a2)
  {
    sub_10000801C(v14);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 10);
  }

  return sub_1000088CC(v14);
}

void sub_10053D870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10053D890(uint64_t a1, int a2, int a3, int a4, int a5)
{
  if ((*(a1 + 576) & 2) == 0)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_100007F88(buf, a1);
    v10 = *(a1 + 176);
    v12 = v10 == 17 || v10 == 22;
    sub_1000088CC(buf);
    if (a3 == 76 && v12)
    {
      if (qword_100B53FE8 != -1)
      {
        sub_100840794();
      }

      v13 = qword_100B53FE0;
      sub_100007E30(buf, "DID Corruption");
      sub_1000E5A58(a1, __p);
      sub_1005780BC(v13, buf, __p, 0.0);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v27) < 0)
      {
        operator delete(*buf);
      }

      v14 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a1, __p);
        v15 = v24 >= 0 ? __p : __p[0];
        v16 = *(a1 + 1132);
        *buf = 136446722;
        *&buf[4] = v15;
        *&buf[12] = 1024;
        *&buf[14] = v16;
        v26 = 1024;
        v27 = 76;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Warning: DID Corruption. Setting DID for %{public}s from 0x%x to 0x%x", buf, 0x18u);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    *(a1 + 1124) = 1;
    if (a2 && *(a1 + 1128) != a2)
    {
      *(a1 + 1128) = a2;
      v17 = 1;
      if (!a3)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v17 = 0;
      if (!a3)
      {
LABEL_35:
        if (a4 && *(a1 + 1136) != a4)
        {
          *(a1 + 1136) = a4;
          v17 = 1;
        }

        if (a5 && *(a1 + 1140) != a5)
        {
          *(a1 + 1140) = a5;
          v17 = 1;
        }

        v21 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a1, __p);
          v22 = v24 >= 0 ? __p : __p[0];
          *buf = 136447234;
          *&buf[4] = v22;
          *&buf[12] = 1024;
          *&buf[14] = a2;
          v26 = 1024;
          v27 = a3;
          v28 = 1024;
          v29 = a4;
          v30 = 1024;
          v31 = a5;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Setting device ID info for device %{public}s: vidSrc 0x%x vid 0x%x pid 0x%x version 0x%x", buf, 0x24u);
          if (v24 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (*(a1 + 520) && (_os_feature_enabled_impl() & 1) == 0)
        {
          (*(**(a1 + 520) + 16))(*(a1 + 520));
        }

        if (v17)
        {
          if (qword_100B508F0 != -1)
          {
            sub_100840690();
          }

          sub_10056B15C(off_100B508E8, a1, 27);
        }

        if (sub_100537920(a1) == 32)
        {
          sub_10053C64C(a1);
        }

        return;
      }
    }

    if (*(a1 + 1132) != a3)
    {
      *(a1 + 1132) = a3;
      v17 = 1;
    }

    goto LABEL_35;
  }

  v18 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a1, __p);
    v19 = v24 >= 0 ? __p : __p[0];
    v20 = *(a1 + 576);
    *buf = 136447490;
    *&buf[4] = v19;
    *&buf[12] = 1024;
    *&buf[14] = a2;
    v26 = 1024;
    v27 = a3;
    v28 = 1024;
    v29 = a4;
    v30 = 1024;
    v31 = a5;
    v32 = 1024;
    v33 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Skip device ID for device %{public}s: vidSrc 0x%x vid 0x%x pid 0x%x version 0x%x GAPA 0x%x", buf, 0x2Au);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_10053DCB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10053DCEC(uint64_t a1, int a2, char a3)
{
  v4 = *(a1 + 576);
  if ((v4 & 2) != 0)
  {
    v13 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v19) = 67109376;
      DWORD1(v19) = a2;
      WORD4(v19) = 1024;
      *(&v19 + 10) = v4;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Skip supportedFeatures 0x%x GAPA 0x%x", &v19, 0xEu);
    }
  }

  else
  {
    v7 = *(a1 + 1144);
    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v19) = 67109120;
      DWORD1(v19) = a2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "supportedFeatures 0x%x", &v19, 8u);
    }

    sub_10053D5A0(a1, a2, *(a1 + 1136));
    *(a1 + 1125) = 1;
    *(a1 + 1144) = a2;
    if (*(a1 + 1132) == 76 && ((v9 = *(a1 + 1136) - 8194, v10 = v9 > 0x2D, v11 = (1 << v9) & 0x200020037F9BLL, !v10) ? (v12 = v11 == 0) : (v12 = 1), !v12) || (a2 & 0x1000) != 0 || (*(a1 + 1157) & 2) != 0)
    {
      *buf = 0;
      v14 = sub_100016250(buf);
      *&v19 = *buf;
      *(&v19 + 1) = *&buf[4];
      if (!*(a1 + 176))
      {
        v16 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Applying workaround for Apple Audio Device: BT_DEVICE_TYPE_GENERIC->BT_DEVICE_TYPE_HEADPHONES", buf, 2u);
        }

        v14 = sub_100538254(a1, 20, &v19);
      }

      if (!*(a1 + 304))
      {
        v17 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = 2098200;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Applying workaround for Apple Audio Device, CoD: 0->%u", buf, 8u);
        }

        v14 = sub_10053C438(a1, 2098200, &v19);
      }

      v18 = sub_10000C798(v14, v15);
      if (((*(*v18 + 360))(v18) & 1) == 0)
      {
        sub_10053E56C(a1, 0);
      }
    }

    else
    {
      sub_10053E56C(a1, 1);
    }

    if ((a3 & 1) == 0 && v7 != a2)
    {
      if (qword_100B508F0 != -1)
      {
        sub_100840690();
      }

      sub_10056B15C(off_100B508E8, a1, 4099);
    }
  }
}

void sub_10053DFDC(uint64_t a1, unint64_t a2, char a3)
{
  v4 = *(a1 + 576);
  v5 = HIDWORD(a2);
  if ((v4 & 2) != 0)
  {
    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 67109632;
      v12 = a2;
      v13 = 1024;
      v14 = v5;
      v15 = 1024;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Skip supportedExtendedFeatures I1: 0x%x, I2: 0x%x GAPA 0x%x", &v11, 0x14u);
    }
  }

  else
  {
    v8 = *(a1 + 1152);
    *(a1 + 1126) = 1;
    *(a1 + 1152) = a2;
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 67109376;
      v12 = a2;
      v13 = 1024;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "supportedExtendedFeatures I1: 0x%x, I2: 0x%x", &v11, 0xEu);
    }

    if ((a3 & 1) == 0 && v8 != a2)
    {
      if (qword_100B508F0 != -1)
      {
        sub_100840690();
      }

      sub_10056B15C(off_100B508E8, a1, 4099);
    }
  }
}

void sub_10053E160(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "supportedFeaturesVersion 0x%x", v5, 8u);
  }

  *(a1 + 1127) = 1;
  *(a1 + 1148) = a2;
}

void sub_10053E21C(unsigned __int8 *a1)
{
  v19 = 0;
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  v15 = 0u;
  *v16 = 0u;
  v13 = 0u;
  *v14 = 0u;
  v11 = 0u;
  *v12 = 0u;
  sub_1000DE474(&v11 + 1);
  BYTE2(v12[0]) = 0;
  BYTE4(v12[0]) = 0;
  BYTE2(v14[0]) = 0;
  BYTE4(v14[0]) = 0;
  HIDWORD(v17[2]) = 0;
  v13 = 0uLL;
  v12[1] = 0;
  LOBYTE(v14[0]) = 0;
  v15 = 0uLL;
  v14[1] = 0;
  LOBYTE(v16[0]) = 0;
  v17[0] = 0;
  v17[1] = 0;
  v16[1] = 0;
  *(&v17[1] + 7) = 0;
  LOBYTE(v17[3]) = 1;
  *(&v17[3] + 6) = 0;
  *(&v17[3] + 1) = 0;
  v18 = 0uLL;
  v17[5] = 0;
  LOBYTE(v19) = 0;
  *(&v19 + 2) = 0;
  if (sub_100536A18(a1, &v11) && BYTE13(v18) == 1)
  {
    v2 = qword_100BCE8D8;
    v3 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO);
    if (v3)
    {
      sub_1000E5A58(a1, __p);
      v5 = v8 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Invoking Single Shot Role Switch WAR for %{public}s", buf, 0xCu);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v6 = sub_10000C7D0(v3, v4);
    if ((*(*v6 + 3968))(v6, 1, (a1[128] << 40) | (a1[129] << 32) | (a1[130] << 24) | (a1[131] << 16) | (a1[132] << 8) | a1[133]) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a1, __p);
      sub_100840B8C();
    }
  }

  if (SHIBYTE(v17[1]) < 0)
  {
    operator delete(v16[1]);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[1]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[1]);
  }

  nullsub_21();
}

void sub_10053E46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_100320BE8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10053E4A8(uint64_t a1, _DWORD *a2)
{
  result = *(a1 + 1125);
  if (result == 1)
  {
    *a2 = *(a1 + 1144);
  }

  return result;
}

uint64_t sub_10053E4C4(uint64_t a1, _DWORD *a2)
{
  result = *(a1 + 1127);
  if (result == 1)
  {
    *a2 = *(a1 + 1148);
  }

  return result;
}

uint64_t sub_10053E4E0(uint64_t a1, void *a2)
{
  result = *(a1 + 1126);
  if (result == 1)
  {
    *a2 = *(a1 + 1152);
  }

  return result;
}

uint64_t sub_10053E4FC(uint64_t a1, int a2, int a3)
{
  if (a2 == 32)
  {
    v3 = 0;
    *(a1 + 1156) |= a3;
  }

  else
  {
    v3 = 2;
    if (a2 == 14 && (*(a1 + 1125) & 1) != 0)
    {
      if (a3)
      {
        v4 = 0x4000;
      }

      else
      {
        v4 = 0;
      }

      sub_10053DCEC(a1, *(a1 + 1144) & 0xFFFFBFFF | v4, 0);
      return 0;
    }
  }

  return v3;
}

uint64_t sub_10053E56C(uint64_t a1, char a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v4 = sub_100007F88(v8, a1);
  *(a1 + 1044) = a2;
  v6 = sub_1000BE4B4(v4, v5);
  (*(*v6 + 1304))(v6, a1, *(a1 + 1044));
  return sub_1000088CC(v8);
}

void sub_10053E630(uint64_t a1)
{
  if (qword_100B508F0 != -1)
  {
    sub_1000E2FD0();
  }

  v2 = sub_1000BE6E8(off_100B508E8);
  v3 = qword_100BCE8D8;
  if (v2)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a1, &__dst);
      v4 = v58 >= 0 ? &__dst : __dst;
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Flushing settings to disk for device %{public}s", &buf, 0xCu);
      if (SHIBYTE(v58) < 0)
      {
        operator delete(__dst);
      }
    }

    v56[0] = 0;
    v56[1] = 0;
    sub_100007F88(v56, a1);
    __dst = 0uLL;
    v58 = 0;
    if (*(a1 + 223) < 0)
    {
      sub_100008904(&__dst, *(a1 + 200), *(a1 + 208));
    }

    else
    {
      __dst = *(a1 + 200);
      v58 = *(a1 + 216);
    }

    v5 = *(a1 + 224);
    v6 = *(a1 + 232);
    buf = 0uLL;
    v63 = 0;
    if (*(a1 + 263) < 0)
    {
      sub_100008904(&buf, *(a1 + 240), *(a1 + 248));
    }

    else
    {
      buf = *(a1 + 240);
      v63 = *(a1 + 256);
    }

    v7 = *(a1 + 264);
    v8 = *(a1 + 272);
    __p[0] = 0;
    __p[1] = 0;
    v55 = 0;
    if (*(a1 + 303) < 0)
    {
      sub_100008904(__p, *(a1 + 280), *(a1 + 288));
    }

    else
    {
      *__p = *(a1 + 280);
      v55 = *(a1 + 296);
    }

    *&v43 = v6;
    *(&v43 + 1) = v5;
    *&v42 = v8;
    *(&v42 + 1) = v7;
    v39 = *(a1 + 304);
    *&v41 = *(a1 + 320);
    *(&v41 + 1) = *(a1 + 312);
    v51 = 0;
    v52 = 0;
    v53 = 0;
    sub_100550C98(&v51, a1 + 328);
    *&v40 = *(a1 + 360);
    *(&v40 + 1) = *(a1 + 352);
    if (*(a1 + 651))
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    v10 = *(a1 + 1392) & 0xFFFFFFE0 | *(a1 + 650) | v9;
    if (*(a1 + 652))
    {
      v11 = 4;
    }

    else
    {
      v11 = 0;
    }

    if (*(a1 + 653))
    {
      v12 = 8;
    }

    else
    {
      v12 = 0;
    }

    v13 = v10 | v11 | v12;
    if (*(a1 + 654))
    {
      v14 = 16;
    }

    else
    {
      v14 = 0;
    }

    *(a1 + 1392) = v13 | v14;
    v49 = 0;
    v50 = 0;
    v44 = a1;
    v48 = &v49;
    v15 = *(a1 + 592);
    if (v15 != (a1 + 600))
    {
      do
      {
        v47[0] = 0;
        v47[1] = 0;
        *v46 = v47;
        v16 = v15[5];
        if (v16 != v15 + 6)
        {
          do
          {
            v45 = *(v16 + 8);
            v60 = *(v16 + 5);
            v61 = 0uLL;
            if (sub_10037E830(&v61, &v60))
            {
              v59 = &v45;
              v17 = sub_10041F130(v46, &v45, &unk_1008A9BD0, &v59);
              *(v17 + 5) = v61;
            }

            v18 = v16[1];
            if (v18)
            {
              do
              {
                v19 = v18;
                v18 = *v18;
              }

              while (v18);
            }

            else
            {
              do
              {
                v19 = v16[2];
                v20 = *v19 == v16;
                v16 = v19;
              }

              while (!v20);
            }

            v16 = v19;
          }

          while (v19 != v15 + 6);
        }

        *&v61 = malloc_type_calloc(1uLL, 0x10uLL, 0x10F2040C8FBA5E1uLL);
        sub_10037E830(v61, v15[4]);
        *&v60 = &v61;
        v21 = (sub_10041F204(&v48, &v61, &unk_1008A9BD0, &v60) + 5);
        if (v21 != v46)
        {
          sub_10041F2E0(v21, *v46, v47);
        }

        sub_10000CEDC(v46, v47[0]);
        v22 = v15[1];
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
            v23 = v15[2];
            v20 = *v23 == v15;
            v15 = v23;
          }

          while (!v20);
        }

        v15 = v23;
      }

      while (v23 != (a1 + 600));
    }

    sub_10000801C(v56);
    v24 = sub_1000295DC(a1);
    if (v24)
    {
      v26 = sub_1000BE4B4(v24, v25);
      v27 = v26;
      if (v43 != 0)
      {
        goto LABEL_56;
      }

      v28 = HIBYTE(v58);
      if (v58 < 0)
      {
        v28 = *(&__dst + 1);
      }

      if (v28)
      {
LABEL_56:
        (*(*v26 + 232))(v26, v44, &__dst);
      }

      if (v42 != 0)
      {
        goto LABEL_61;
      }

      v29 = HIBYTE(v63);
      if (v63 < 0)
      {
        v29 = *(&buf + 1);
      }

      if (v29)
      {
LABEL_61:
        (*(*v27 + 40))(v27, v44, &buf);
      }

      v30 = HIBYTE(v55);
      if (v55 < 0)
      {
        v30 = __p[1];
      }

      if (v30)
      {
        (*(*v27 + 216))(v27, v44, __p);
      }

      if (v41 != 0)
      {
        (*(*v27 + 264))(v27, v44, v39);
      }

      if (v40 == 0 || !(*(*v27 + 248))(v27, v44, &v51))
      {
        if (sub_10000C5F8(v44 + 1064))
        {
          (*(*v27 + 352))(v27, v44);
        }

        (*(*v27 + 1504))(v27, v44);
        if (qword_100B54670 != -1)
        {
          sub_100840C24();
        }

        sub_100588028();
      }

      v31 = v49;
    }

    else
    {
      v32 = v48;
      if (v48 != &v49)
      {
        do
        {
          v33 = v32[5];
          v34 = v32 + 6;
          if (v33 != v32 + 6)
          {
            do
            {
              v60 = *(v33 + 5);
              sub_10037D4F4(&v60);
              v35 = v33[1];
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
                  v36 = v33[2];
                  v20 = *v36 == v33;
                  v33 = v36;
                }

                while (!v20);
              }

              v33 = v36;
            }

            while (v36 != v34);
          }

          sub_10000CEDC((v32 + 5), v32[6]);
          v32[6] = 0;
          v32[7] = 0;
          v32[5] = v34;
          sub_10037D4F4(v32[4]);
          free(v32[4]);
          v37 = v32[1];
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
              v38 = v32[2];
              v20 = *v38 == v32;
              v32 = v38;
            }

            while (!v20);
          }

          v32 = v38;
        }

        while (v38 != &v49);
      }

      sub_10037505C(&v48, v49);
      v31 = 0;
      v49 = 0;
      v50 = 0;
      v48 = &v49;
    }

    sub_10037505C(&v48, v31);
    sub_10000CEDC(&v51, v52);
    if (SHIBYTE(v55) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v63) < 0)
    {
      operator delete(buf);
    }

    if (SHIBYTE(v58) < 0)
    {
      operator delete(__dst);
    }

    sub_1000088CC(v56);
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100840BE8();
  }
}

void sub_10053EFC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  sub_10037505C(&a25, a26);
  sub_10000CEDC(&a28, a29);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (*(v39 - 105) < 0)
  {
    operator delete(v38[10]);
  }

  if (*(v39 - 185) < 0)
  {
    operator delete(*v38);
  }

  sub_1000088CC(&a38);
  _Unwind_Resume(a1);
}

uint64_t sub_10053F074(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 650);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10053F0BC(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = *(a1 + 520);
  if (v4 && ((*(*v4 + 56))(v4, a2) & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 602;
  }

  sub_1000088CC(v7);
  return v5;
}

uint64_t sub_10053F158(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1);
  v4 = *(a1 + 520);
  if (!v4)
  {
    sub_1004328AC(a1);
  }

  v7 = 0;
  (*(*v4 + 56))(v4, &v7);
  (*(**(a1 + 520) + 48))(*(a1 + 520), a2);
  if (*(a1 + 520) && (_os_feature_enabled_impl() & 1) == 0)
  {
    (*(**(a1 + 520) + 16))(*(a1 + 520));
  }

  if (v7 != a2)
  {
    sub_10053F27C(a1, v5);
  }

  return sub_1000088CC(v8);
}

void sub_10053F264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10053F27C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 568);
  *(a1 + 568) = v4 + 1;
  if (!v4)
  {
    v7[7] = v2;
    v7[8] = v3;
    v6 = sub_100017F4C(a1, a2);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10053F9B4;
    v7[3] = &unk_100ADF8F8;
    v7[4] = a1;
    sub_10000CA94(v6, v7);
  }
}

uint64_t sub_10053F320(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v4 = *(a1 + 520);
  if (v4)
  {
    (*(*v4 + 64))(v4, a2);
    if (_os_feature_enabled_impl())
    {
      sub_10000801C(v6);
      if (qword_100B508F0 != -1)
      {
        sub_100840690();
      }

      sub_10056B15C(off_100B508E8, a1, 13);
    }

    else
    {
      (*(**(a1 + 520) + 16))(*(a1 + 520));
    }
  }

  return sub_1000088CC(v6);
}

uint64_t sub_10053F420(uint64_t a1)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1);
  v7 = 0;
  v2 = *(a1 + 520);
  if (v2)
  {
    (*(*v2 + 56))(v2, &v7);
    v4 = *(a1 + 520);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v7;
    *(a1 + 520) = 0;
    if (v5)
    {
      sub_10053F27C(a1, v3);
    }
  }

  return sub_1000088CC(v8);
}

void sub_10053F4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10053F4E8(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1);
  *(a1 + 528) = 0;
  *(a1 + 532) = 0;
  *(a1 + 536) = 0;
  *(a1 + 540) = 0;
  *(a1 + 544) = 0;
  *(a1 + 548) = 0;
  *(a1 + 552) = 0;
  *(a1 + 556) = 0;
  *(a1 + 560) = 0;
  *(a1 + 564) = 0;
  *(a1 + 568) = 0;
  return sub_1000088CC(v3);
}

void sub_10053F554(uint64_t a1, int *a2)
{
  v16 = 0u;
  v17 = 0u;
  sub_1000DEB5C(a1, &v16);
  v5 = a2[2];
  if (v5)
  {
    v6 = v5 == DWORD2(v16);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    *(a1 + 536) = v5;
    v7 = *(a2 + 12);
    if (*(a2 + 12))
    {
      v9 = v7 == BYTE12(v16);
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v7 = *(a2 + 12);
  if (*(a2 + 12))
  {
    v8 = v7 == BYTE12(v16);
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
LABEL_16:
    *(a1 + 540) = v7;
LABEL_17:
    sub_10053F6F8(a1, 4);
  }

  v10 = a2[4];
  if (v10 && v10 != v17)
  {
    *(a1 + 544) = v10;
    v11 = *(a2 + 20);
    if (!*(a2 + 20) || v11 == BYTE4(v17))
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v11 = *(a2 + 20);
  if (*(a2 + 20) && v11 != BYTE4(v17))
  {
LABEL_25:
    *(a1 + 548) = v11;
LABEL_26:
    sub_10053F6F8(a1, 2);
  }

  v12 = a2[6];
  if (v12 && v12 != DWORD2(v17))
  {
    *(a1 + 552) = v12;
    v13 = *(a2 + 28);
    if (!*(a2 + 28) || v13 == BYTE12(v17))
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v13 = *(a2 + 28);
  if (*(a2 + 28) && v13 != BYTE12(v17))
  {
LABEL_34:
    *(a1 + 556) = v13;
LABEL_35:
    sub_10053F6F8(a1, 8);
  }

  v14 = *a2;
  if (!*a2 || v14 == v16)
  {
    v15 = *(a2 + 4);
    if (!*(a2 + 4) || v15 == BYTE4(v16))
    {
      return;
    }

    goto LABEL_43;
  }

  *(a1 + 528) = v14;
  v15 = *(a2 + 4);
  if (*(a2 + 4) && v15 != BYTE4(v16))
  {
LABEL_43:
    *(a1 + 532) = v15;
  }

  sub_10053F27C(a1, v4);
}

void sub_10053F6F8(_DWORD *a1, uint64_t a2)
{
  v3 = 13;
  if (a2 > 3)
  {
    v5 = 30;
    if (a2 == 4)
    {
      v3 = 28;
    }

    else
    {
      v3 = 13;
    }

    v4 = a2 == 8;
    goto LABEL_8;
  }

  if (a2 != 1)
  {
    v4 = a2 == 2;
    v5 = 29;
LABEL_8:
    if (v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = v3;
    }

    v7 = qword_100BCE8D8;
    v8 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      sub_1000E5A58(a1, __p);
      if (v20 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      v11 = a1[132];
      v12 = a1[134];
      v13 = a1[136];
      v14 = a1[138];
      v15 = a1[140];
      *buf = 136447490;
      v22 = v10;
      v23 = 1024;
      v24 = v11;
      v25 = 1024;
      v26 = v12;
      v27 = 1024;
      v28 = v13;
      v29 = 1024;
      v30 = v14;
      v31 = 1024;
      v32 = v15;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Component battery changed: device %{public}s, S %d%%, L %d%%, R %d%%, Cs %d%%, Cm %d%%", buf, 0x2Au);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v16 = sub_100017F4C(v8, v9);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10053FBAC;
    v17[3] = &unk_100ADF940;
    v17[4] = a1;
    v18 = v6;
    sub_10000CA94(v16, v17);
    return;
  }

  sub_10053F27C(a1, a2);
}

uint64_t sub_10053F8E4(unsigned int *a1, uint64_t a2)
{
  v2 = a2;
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  if (v2 <= 3)
  {
    if (v2 == 1)
    {
      v4 = a1[132];
      goto LABEL_15;
    }

    if (v2 == 2)
    {
      v4 = a1[136];
      goto LABEL_15;
    }
  }

  else
  {
    switch(v2)
    {
      case 16:
        v4 = a1[140];
        goto LABEL_15;
      case 8:
        v4 = a1[138];
        goto LABEL_15;
      case 4:
        v4 = a1[134];
        goto LABEL_15;
    }
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100840CA8();
  }

  v4 = 0xFFFFFFFFLL;
LABEL_15:
  sub_1000088CC(v6);
  return v4;
}

uint64_t sub_10053F9B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, v1);
  v2 = *(v1 + 568);
  if (v2)
  {
    *(v1 + 568) = 0;
    v14 = 0;
    v3 = *(v1 + 520);
    if (v3)
    {
      (*(*v3 + 56))(v3, &v14);
    }

    v4 = *(v1 + 528);
    v5 = *(v1 + 536);
    v6 = *(v1 + 544);
    v7 = *(v1 + 552);
    v8 = *(v1 + 560);
    sub_10000801C(v15);
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v1, __p);
      v10 = v13 >= 0 ? __p : __p[0];
      *buf = 136448002;
      v17 = v10;
      v18 = 1024;
      v19 = v14;
      v20 = 1024;
      v21 = v4;
      v22 = 1024;
      v23 = v5;
      v24 = 1024;
      v25 = v6;
      v26 = 1024;
      v27 = v7;
      v28 = 1024;
      v29 = v8;
      v30 = 1024;
      v31 = v2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Battery changed: device %{public}s, I %d%%, S %d%%, L %d%%, R %d%%, Cs %d%%, Cm %d%%, CP %d", buf, 0x36u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, v1, 13);
  }

  return sub_1000088CC(v15);
}

void sub_10053FB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10053FBAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B508F0 != -1)
  {
    sub_1000E2FD0();
  }

  v3 = off_100B508E8;
  v4 = *(a1 + 40);

  return sub_10056B15C(v3, v2, v4);
}

uint64_t sub_10053FC08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5[0] = 0;
    v5[1] = 0;
    sub_100007F88(v5, a1);
    *a2 = *(a1 + 528);
    *(a2 + 4) = *(a1 + 532) == 1;
    *(a2 + 16) = *(a1 + 536);
    *(a2 + 20) = *(a1 + 540) == 1;
    *(a2 + 8) = *(a1 + 544);
    *(a2 + 12) = *(a1 + 548) == 1;
    *(a2 + 24) = *(a1 + 552);
    *(a2 + 28) = *(a1 + 556) == 1;
    *(a2 + 32) = *(a1 + 560);
    *(a2 + 36) = *(a1 + 564) == 1;
    sub_1000088CC(v5);
    return 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100840D18();
    }

    return 3;
  }
}

id sub_10053FCFC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1352);
  sub_1000088CC(v4);

  return v2;
}

uint64_t sub_10053FD5C(uint64_t a1, int *a2)
{
  existing = 0;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
  {
    sub_100840D54();
  }

  v4 = IOServiceMatching([@"IOAppleBluetoothHIDDriver" UTF8String]);
  if (IOServiceGetMatchingServices(kIOMainPortDefault, v4, &existing) == 1 || (result = sub_10053FF40(a1, a2, @"IOAppleBluetoothHIDDriver", existing), result))
  {
    v6 = IOServiceMatching([@"AppleDeviceManagementHIDEventService" UTF8String]);
    if (IOServiceGetMatchingServices(kIOMainPortDefault, v6, &existing) == 1 || (result = sub_10053FF40(a1, a2, @"AppleDeviceManagementHIDEventService", existing), result))
    {
      v7 = IOServiceMatching([@"IOBluetoothHIDDriver" UTF8String]);
      if (IOServiceGetMatchingServices(kIOMainPortDefault, v7, &existing) == 1 || (result = sub_10053FF40(a1, a2, @"IOBluetoothHIDDriver", existing), result))
      {
        if (!sub_10053C9C8(a1))
        {
          return 1;
        }

        v8 = sub_1005402C4(a1);
        *a2 = v8;
        v9 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          v12 = v8;
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "getBatteryLevel- Battery level for controller is %d", buf, 8u);
          v8 = *a2;
        }

        return v8 <= 0;
      }
    }
  }

  return result;
}

uint64_t sub_10053FF40(uint64_t a1, int *a2, void *a3, io_iterator_t a4)
{
  v7 = a3;
  v8 = [NSData dataWithBytes:a1 + 128 length:6];
  while (1)
  {
    v9 = IOIteratorNext(a4);
    v10 = v9;
    if (!v9)
    {
      v12 = 1;
      goto LABEL_18;
    }

    CFProperty = IORegistryEntryCreateCFProperty(v9, @"BD_ADDR", kCFAllocatorDefault, 0);
    if ([CFProperty isEqual:v8])
    {
      break;
    }

    IOObjectRelease(v10);
  }

  v13 = IORegistryEntryCreateCFProperty(v10, @"BatteryPercent", kCFAllocatorDefault, 0);
  if (v13)
  {
    goto LABEL_10;
  }

  v14 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = CFProperty;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "HID battery fetch failed for hid %@ as it doesn't exist in IORegistry", buf, 0xCu);
  }

  v13 = IORegistryEntryCreateCFProperty(v10, @"BatteryPercent", kCFAllocatorDefault, 0);
  if (v13)
  {
LABEL_10:
    *a2 = [v13 unsignedIntValue];
    v15 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a1, buf);
      v16 = v30 >= 0 ? buf : *buf;
      v17 = *a2;
      *__p = 136446466;
      *&__p[4] = v16;
      v23 = 1024;
      v24 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "HID Battery percentage for device %{public}s is %d", __p, 0x12u);
      if (SHIBYTE(v30) < 0)
      {
        operator delete(*buf);
      }
    }

    IOObjectRelease(v10);
    v12 = 0;
  }

  else
  {
    IOObjectRelease(v10);
    v12 = 1;
  }

LABEL_18:
  IOObjectRelease(a4);
  v18 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E5A58(a1, __p);
    v20 = v25 >= 0 ? __p : *__p;
    v21 = *a2;
    *buf = 136446722;
    *&buf[4] = v20;
    v27 = 1024;
    v28 = v12;
    v29 = 1024;
    v30 = v21;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "HID Battery fetch battery level for hid %{public}s with status 0x%x, level: %d", buf, 0x18u);
    if (v25 < 0)
    {
      operator delete(*__p);
    }
  }

  if (v12 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E5A58(a1, buf);
    sub_100840D94();
  }

  return v12;
}

id sub_1005402C4(uint64_t a1)
{
  v1 = IOHIDEventSystemClientCreate();
  v2 = &off_100B338D0;
  v3 = IOHIDEventSystemClientCopyServices(v1);
  v4 = v3;
  if (!v3)
  {
    goto LABEL_21;
  }

  Count = CFArrayGetCount(v3);
  if (!Count)
  {
    goto LABEL_20;
  }

  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, v6);
    v8 = IOHIDServiceClientCopyProperty(ValueAtIndex, @"SerialNumber");
    if (v8)
    {
      break;
    }

LABEL_18:
    if (Count == ++v6)
    {
      v2 = &off_100B338D0;
      goto LABEL_20;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_17:

    goto LABEL_18;
  }

  v9 = [v8 stringByReplacingOccurrencesOfString:@"-" withString:@":"];
  sub_1000BE6F8((a1 + 128), __p);
  if (v18 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  v11 = [NSString stringWithUTF8String:v10];
  if (v18 < 0)
  {
    operator delete(__p[0]);
    if (!v9)
    {
LABEL_16:

      goto LABEL_17;
    }
  }

  else if (!v9)
  {
    goto LABEL_16;
  }

  if (!v11 || [v11 caseInsensitiveCompare:v9])
  {
    goto LABEL_16;
  }

  v14 = IOHIDServiceClientCopyProperty(ValueAtIndex, @"BatteryCapacity");
  *&v15 = [v14 intValue];
  v2 = [NSNumber numberWithFloat:v15];

LABEL_20:
  CFRelease(v4);
LABEL_21:
  CFRelease(v1);
  v12 = [v2 intValue];

  return v12;
}

uint64_t sub_100540560(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1);
  if (v4 >= 0x65)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100840DF4();
    }

    return sub_1000088CC(v10);
  }

  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      v6 = 132;
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_21;
      }

      v6 = 136;
    }

LABEL_15:
    v7 = a1[v6];
    a1[v6] = v4;
    if (v7 != v4)
    {
      if (_os_feature_enabled_impl())
      {
        if (a3 != 1 && a3 != 16)
        {
          sub_10053F6F8(a1, a3);
        }
      }

      else
      {
        sub_10053F27C(a1, v8);
      }
    }

    return sub_1000088CC(v10);
  }

  switch(a3)
  {
    case 4:
      v6 = 134;
      goto LABEL_15;
    case 8:
      v6 = 138;
      goto LABEL_15;
    case 0x10:
      v6 = 140;
      goto LABEL_15;
  }

LABEL_21:
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100840CA8();
  }

  return sub_1000088CC(v10);
}

uint64_t sub_1005406CC(_DWORD *a1, int a2, uint64_t a3)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1);
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      v6 = 133;
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_17;
      }

      v6 = 137;
    }
  }

  else
  {
    switch(a3)
    {
      case 4:
        v6 = 135;
        break;
      case 8:
        v6 = 139;
        break;
      case 0x10:
        v6 = 141;
        break;
      default:
LABEL_17:
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100840CA8();
        }

        goto LABEL_19;
    }
  }

  v7 = LOBYTE(a1[v6]);
  LOBYTE(a1[v6]) = a2;
  if (v7 == a2)
  {
LABEL_19:
    v9 = 0;
    goto LABEL_20;
  }

  if (_os_feature_enabled_impl())
  {
    sub_10053F6F8(a1, a3);
  }

  else
  {
    sub_10053F27C(a1, v8);
  }

  v9 = 1;
LABEL_20:
  sub_1000088CC(v11);
  return v9;
}

uint64_t sub_100540800(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 572) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_100540848(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 572);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100540890(uint64_t a1, int a2, int a3)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1);
  v6 = *(a1 + 576);
  v7 = v6 & ~a3 | a3 & a2;
  *(a1 + 576) = v7;
  if (v7 != v6)
  {
    sub_10000801C(v12);
    v10 = sub_1000BE4B4(v8, v9);
    (*(*v10 + 1536))(v10, a1, *(a1 + 576));
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 4102);
  }

  return sub_1000088CC(v12);
}

uint64_t sub_10054097C(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a1, __p);
    if (v6 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    *buf = 136446210;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Device %{public}s supports phonebook sync", buf, 0xCu);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 650) = 1;
  return sub_1000088CC(v7);
}

void sub_100540A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100540A94(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 651);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100540ADC(uint64_t a1, int a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1);
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a1, __p);
    v5 = "disabled";
    if (a2)
    {
      v5 = "enabled";
    }

    if (v9 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315394;
    v12 = v5;
    v13 = 2082;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Phonebook sync %s for device %{public}s", buf, 0x16u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 651) = a2;
  return sub_1000088CC(v10);
}

void sub_100540BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100540C18(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 652);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100540C60(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 652) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_100540CA8(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 653);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100540CF0(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 653) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_100540D38(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 654);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100540D80(uint64_t a1, int a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1);
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a1, __p);
    v5 = "unselected";
    if (a2)
    {
      v5 = "selected";
    }

    if (v9 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315394;
    v12 = v5;
    v13 = 2082;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Phonebook privacy %s for device %{public}s", buf, 0x16u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 654) = a2;
  return sub_1000088CC(v10);
}

void sub_100540EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100540EBC(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 656) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_100540F04(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 656);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100540F4C(uint64_t a1, __int16 a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 658) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_100540F94(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 658);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100540FDC(uint64_t a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 860) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_100541024(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 860);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054106C(void *a1, _DWORD **a2)
{
  v18[0] = 0;
  v18[1] = 0;
  v4 = sub_100007F88(v18, a1);
  v6 = a1[94];
  a1[95] = v6;
  v7 = *a2;
  if (*a2 != a2[1])
  {
    v8 = (a1 + 94);
    do
    {
      v9 = a1[96];
      if (v6 >= v9)
      {
        v10 = *v8;
        v11 = v6 - *v8;
        v12 = v11 >> 2;
        v13 = (v11 >> 2) + 1;
        if (v13 >> 62)
        {
          sub_1000C7698();
        }

        v14 = v9 - v10;
        if (v14 >> 1 > v13)
        {
          v13 = v14 >> 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v15 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          sub_10036F560((a1 + 94), v15);
        }

        *(4 * v12) = *v7;
        v6 = (4 * v12 + 4);
        memcpy(0, v10, v11);
        v4 = a1[94];
        a1[94] = 0;
        a1[95] = v6;
        a1[96] = 0;
        if (v4)
        {
          operator delete(v4);
        }
      }

      else
      {
        *v6 = *v7;
        v6 += 4;
      }

      a1[95] = v6;
      ++v7;
    }

    while (v7 != a2[1]);
  }

  v16 = sub_100432498(v4, v5);
  (*(*v16 + 24))(v16);
  return sub_1000088CC(v18);
}

uint64_t sub_1005411F4(uint64_t a1, unsigned int a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = *(a1 + 752);
  if (a2 >= ((*(a1 + 760) - v4) >> 2))
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = *(v4 + 4 * a2);
  }

  sub_1000088CC(v7);
  return v5;
}

uint64_t sub_100541260@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  sub_1003A5D88(a2, (a1 + 752));
  return sub_1000088CC(v5);
}

uint64_t sub_1005412C4(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 751);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Read fMapEnabled : %d", v5, 8u);
  }

  return *(a1 + 751);
}

uint64_t sub_100541370(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  v5 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v7 = *(a1 + 751);
    v11[0] = 67109376;
    v11[1] = v7;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Set mapEnabled %d -> %d", v11, 0xEu);
  }

  *(a1 + 751) = a2;
  if (a2)
  {
    v8 = 32;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 1392) = *(a1 + 1392) & 0xFFFFFFDF | v8;
  v9 = *sub_1000BE4B4(v5, v6);
  return (*(v9 + 392))();
}

uint64_t sub_100541494(uint64_t a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 512) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_1005414DC(uint64_t a1, _DWORD *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *a2 = *(a1 + 512);
  sub_1000088CC(v5);
  return 0;
}

BOOL sub_10054152C(uint64_t a1)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1);
  v14 = 0;
  v15[0] = 0;
  v15[1] = 0;
  *&v18.__r_.__value_.__l.__data_ = xmmword_1008A9EE0;
  LOWORD(v18.__r_.__value_.__r.__words[2]) = 626;
  sub_100551540(&v14, &v18, 9);
  if ((*(a1 + 263) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 248))
    {
      goto LABEL_13;
    }

LABEL_5:
    v2 = std::string::basic_string(&v18, (a1 + 240), 0, 3uLL, &v13);
    if (!std::string::compare(v2, "BMW"))
    {
      v3 = 1;
    }

    else
    {
      std::string::basic_string(&v13, (a1 + 240), 0, 3uLL, &v17);
      v3 = std::string::compare(&v13, "MB ") == 0;
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
      if (!v3)
      {
        goto LABEL_13;
      }
    }

    else if (!v3)
    {
      goto LABEL_13;
    }

    v4 = 1;
    v5 = v15[0];
    goto LABEL_23;
  }

  if (*(a1 + 263))
  {
    goto LABEL_5;
  }

LABEL_13:
  v5 = v15[0];
  if (!v15[0])
  {
    goto LABEL_21;
  }

  v6 = *(a1 + 1132);
  v7 = v15;
  v8 = v15[0];
  do
  {
    v9 = *(v8 + 26);
    v10 = v9 >= v6;
    v11 = v9 < v6;
    if (v10)
    {
      v7 = v8;
    }

    v8 = *(v8 + 8 * v11);
  }

  while (v8);
  if (v7 == v15 || *(v7 + 13) > v6)
  {
LABEL_21:
    v7 = v15;
  }

  v4 = v7 != v15;
LABEL_23:
  sub_10000CEDC(&v14, v5);
  sub_1000088CC(v16);
  return v4;
}

void sub_1005416D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void *);
  v14 = va_arg(va1, void);
  if (*(v9 - 25) < 0)
  {
    operator delete(*(v9 - 48));
  }

  sub_10000CEDC(va, v13);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_100541720(uint64_t a1)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1);
  if ((*(a1 + 263) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 248))
    {
      goto LABEL_23;
    }
  }

  else if (!*(a1 + 263))
  {
    goto LABEL_23;
  }

  std::string::basic_string(&__p, (a1 + 240), 0, 4uLL, &v14);
  v2 = std::string::compare(&__p, "Audi");
  v3 = v2;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  else if (!v2)
  {
    goto LABEL_15;
  }

  std::string::basic_string(&__p, (a1 + 240), 0, 9uLL, &v14);
  v4 = std::string::compare(&__p, "bluetouch");
  v5 = v4;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v5)
    {
      goto LABEL_11;
    }
  }

  else if (v4)
  {
LABEL_11:
    std::string::basic_string(&__p, (a1 + 240), 0, 3uLL, &v14);
    v6 = std::string::compare(&__p, "BMW");
    v7 = v6;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!v7)
      {
        goto LABEL_23;
      }
    }

    else if (!v6)
    {
      goto LABEL_23;
    }

    std::string::basic_string(&__p, (a1 + 240), 0, 5uLL, &v14);
    v9 = std::string::compare(&__p, "Parrot");
    v10 = v9;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if (!v9)
      {
        goto LABEL_23;
      }

LABEL_21:
      std::string::basic_string(&__p, (a1 + 240), 0, 5uLL, &v14);
      std::string::compare(&__p, "TomTom");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_23;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if (v10)
    {
      goto LABEL_21;
    }

LABEL_23:
    v8 = 0;
    goto LABEL_24;
  }

LABEL_15:
  v8 = 1;
LABEL_24:
  sub_1000088CC(v13);
  return v8;
}

void sub_1005418DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100541900(uint64_t a1, int *a2)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1);
  if ((*(a1 + 263) & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 263))
    {
      goto LABEL_9;
    }

LABEL_5:
    std::string::basic_string(&__p, (a1 + 240), 0, 9uLL, &v13);
    v4 = std::string::compare(&__p, "bluetouch");
    v5 = v4;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v5)
      {
        goto LABEL_7;
      }
    }

    else if (v4)
    {
LABEL_7:
      std::string::basic_string(&__p, (a1 + 240), 0, 3uLL, &v13);
      v6 = std::string::compare(&__p, "BMW");
      v7 = v6;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v7)
        {
          goto LABEL_9;
        }
      }

      else if (v6)
      {
        goto LABEL_9;
      }

      v9 = 33;
LABEL_14:
      *a2 = v9;
      v8 = 1;
      goto LABEL_15;
    }

    v9 = 25;
    goto LABEL_14;
  }

  if (*(a1 + 248))
  {
    goto LABEL_5;
  }

LABEL_9:
  v8 = 0;
LABEL_15:
  sub_1000088CC(v12);
  return v8;
}

void sub_100541A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100541A24(uint64_t a1, std::string **a2)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1);
  v4 = (a1 + 1232);
  if ((a1 + 1232) != a2)
  {
    sub_1000DFCBC((a1 + 1232), *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1240) - *(a1 + 1232)) >> 3) >= 2)
  {
    v5 = 1;
    v6 = 24;
    do
    {
      if (qword_100B50950 != -1)
      {
        sub_100840E64();
      }

      v7 = off_100B50948;
      memset(v19, 0, sizeof(v19));
      sub_10003E428(v19, *(a1 + 1232), *(a1 + 1240), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1240) - *(a1 + 1232)) >> 3));
      LOBYTE(v7) = sub_10034A4D4(v7, v19, v5);
      v18[0] = v19;
      sub_1000161FC(v18);
      if ((v7 & 1) == 0)
      {
        std::string::assign((*v4 + v6), "");
      }

      ++v5;
      v6 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1240) - *(a1 + 1232)) >> 3) > v5);
  }

  memset(v18, 0, sizeof(v18));
  v8 = sub_1000DFC04(a1, v18);
  if (v8)
  {
    v10 = *(a1 + 1232);
    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1240) - v10) >> 3) >= 2)
    {
      v11 = 1;
      v12 = 3;
      do
      {
        if (v11 != 5)
        {
          if (qword_100B50950 != -1)
          {
            sub_100840E64();
          }

          v13 = off_100B50948;
          memset(v17, 0, sizeof(v17));
          sub_10003E428(v17, *(a1 + 1232), *(a1 + 1240), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1240) - *(a1 + 1232)) >> 3));
          LOBYTE(v13) = sub_10034A4D4(v13, v17, v11);
          v21 = v17;
          sub_1000161FC(&v21);
          v10 = *v4;
          if ((v13 & 1) == 0)
          {
            v8 = std::string::operator=((v10 + v12 * 8), &v18[0][v12]);
            v10 = *v4;
          }
        }

        ++v11;
        v12 += 3;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1240) - v10) >> 3) > v11);
    }
  }

  v14 = sub_1000BE4B4(v8, v9);
  memset(v16, 0, sizeof(v16));
  sub_10003E428(v16, *(a1 + 1232), *(a1 + 1240), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1240) - *(a1 + 1232)) >> 3));
  (*(*v14 + 944))(v14, a1, v16);
  v21 = v16;
  sub_1000161FC(&v21);
  v21 = v18;
  sub_1000161FC(&v21);
  return sub_1000088CC(v20);
}

void sub_100541D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100541D78(uint64_t a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if (a2 <= 2)
  {
    v3 = byte_1008A9EF2[a2];
  }

  else
  {
    v3 = 0;
  }

  sub_1000088CC(v5);
  return v3;
}

uint64_t sub_100541DD8(uint64_t a1, std::string *a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  if (*(a1 + 1279) < 0)
  {
    if (*(a1 + 1264))
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  if (!*(a1 + 1279))
  {
    goto LABEL_5;
  }

LABEL_3:
  std::string::operator=(a2, (a1 + 1256));
  v4 = 1;
LABEL_6:
  sub_1000088CC(v6);
  return v4;
}

uint64_t sub_100541E60(uint64_t a1, const std::string *a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1);
  v4 = std::string::operator=((a1 + 1256), a2);
  v6 = sub_1000BE4B4(v4, v5);
  if (*(a1 + 1279) < 0)
  {
    sub_100008904(__p, *(a1 + 1256), *(a1 + 1264));
  }

  else
  {
    *__p = *(a1 + 1256);
    v9 = *(a1 + 1272);
  }

  (*(*v6 + 960))(v6, a1, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return sub_1000088CC(v10);
}

void sub_100541F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_100541F64(uint64_t a1, char a2, __int16 a3, int a4, __int16 a5, char a6, uint64_t a7, int a8, const std::string *a9)
{
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1);
  *(a1 + 1280) = a2;
  *(a1 + 1282) = a3;
  *(a1 + 1284) = a4;
  *(a1 + 1288) = a5;
  *(a1 + 1290) = a6;
  *(a1 + 1296) = a7;
  *(a1 + 1304) = a8;
  v17 = std::string::operator=((a1 + 1312), a9);
  v19 = sub_1000BE4B4(v17, v18);
  v21[0] = *(a1 + 1280);
  *(v21 + 12) = *(a1 + 1292);
  if (*(a1 + 1335) < 0)
  {
    sub_100008904(__p, *(a1 + 1312), *(a1 + 1320));
  }

  else
  {
    *__p = *(a1 + 1312);
    v23 = *(a1 + 1328);
  }

  (*(*v19 + 976))(v19, a1, v21);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  return sub_1000088CC(v24);
}

void sub_1005420A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_1005420D0(uint64_t a1)
{
  if (qword_100B50F68 != -1)
  {
    sub_100840890();
  }

  v2 = off_100B50F60;

  return sub_100530768(v2, a1);
}

uint64_t sub_100542124(uint64_t a1)
{
  if (qword_100B50F68 != -1)
  {
    sub_100840890();
  }

  v2 = off_100B50F60;

  return sub_1005307E0(v2, a1);
}

uint64_t sub_100542178(uint64_t a1)
{
  if (qword_100B50F68 != -1)
  {
    sub_100840890();
  }

  v2 = sub_1005307E0(off_100B50F60, a1);
  v3 = 0;
  if (v2)
  {
    do
    {
      v3 += v2 & 1;
      v4 = v2 > 1;
      v2 >>= 1;
    }

    while (v4);
  }

  return v3;
}

uint64_t sub_1005421E4(uint64_t result, int a2)
{
  *(result + 1376) = a2;
  *(result + 1380) = 1;
  return result;
}

void sub_1005421F4(uint64_t a1, int a2, char a3)
{
  if (!a2)
  {
    __p[0] = 0;
    __p[1] = 0;
    sub_100007F88(__p, a1);
    *(a1 + 1396) = 1;
    *buf = 0;
    sub_100016250(buf);
    v6 = *&buf[4];
    *(a1 + 1400) = *buf;
    *(a1 + 1408) = v6;
    *(a1 + 1397) = a3;
    *(a1 + 1448) = 0;
    sub_10000801C(__p);
    sub_10053E21C(a1);
    sub_1000088CC(__p);
  }

  v7 = qword_100BCE8D8;
  if (os_signpost_enabled(qword_100BCE8D8))
  {
    sub_1000E5A58(a1, __p);
    if (v10 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 136446466;
    *&buf[4] = v8;
    v12 = 1024;
    v13 = a2;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BTSignPost", "ACL connected for device %{public}s with result:%d", buf, 0x12u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_10054234C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10054236C(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 1496) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_1005423B4(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100840E8C();
  }

  if (*(off_100B50A98 + 60))
  {
    v36 = 0;
    sub_1000216B4(&v36);
    *(a5 + 54) = sub_10024132C(a1 + 128);
    sub_100022214(&v36);
    *a5 = a3;
    *(a5 + 44) = a2;
    *(a5 + 48) = a4;
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    *(a5 + 52) = sub_10056D61C(off_100B508E8);
    if (qword_100B508B0 != -1)
    {
      sub_100840EA0();
    }

    v10 = sub_100029630(off_100B508A8);
    *(a5 + 53) = [v10 count];

    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    *(a5 + 64) = *(off_100B508E8 + 75);
    v35[0] = 0;
    v35[1] = 0;
    sub_100007F88(v35, a1 + 64);
    v11 = (a5 + 4);
    if (*(a1 + 748) == 1 && (v12 = *(a1 + 708), *(a5 + 20) = *(a1 + 724), *v11 = v12, *(a1 + 749) == 1))
    {
      v13 = *(a1 + 728);
      *(a5 + 40) = *(a1 + 744);
      *(a5 + 24) = v13;
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    *(a5 + 56) = *(a1 + 1384);
    *(a5 + 72) = sub_100542124(a1);
    *(a5 + 76) = sub_1005420D0(a1);
    v16 = *(a1 + 1392);
    *(a5 + 88) = v16;
    *(a5 + 80) = 0;
    if (*(a1 + 1380) == 1)
    {
      *(a5 + 80) = *(a1 + 1376);
      *(a5 + 81) = *(a1 + 1388);
    }

    *(a5 + 88) = v16;
    v17 = sub_1000DFB74(a1, 0x20u);
    *(a5 + 98) = v17 == 4;
    if (v14)
    {
      v18 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *a5;
        v20 = *(a5 + 44);
        v21 = *(a5 + 48);
        v22 = *(a5 + 52);
        v23 = *(a5 + 53);
        v24 = *(a5 + 54);
        v25 = *(a5 + 56);
        v26 = *(a5 + 64);
        v27 = *(a5 + 72);
        v28 = *(a5 + 76);
        v29 = *(a5 + 80);
        v30 = *(a5 + 81);
        v31 = *(a5 + 88);
        *buf = 67113474;
        v38 = v19;
        v39 = 1042;
        *v40 = 20;
        *&v40[4] = 2098;
        *&v40[6] = a5 + 4;
        *&v40[14] = 1042;
        *&v40[16] = 20;
        v41 = 2098;
        v42 = a5 + 24;
        v43 = 1024;
        v44 = v20;
        v45 = 1024;
        v46 = v21;
        v47 = 1024;
        v48 = v22;
        v49 = 1024;
        v50 = v23;
        v51 = 1024;
        v52 = v24;
        v53 = 1024;
        v54 = v25;
        v55 = 2048;
        v56 = v26;
        v57 = 1024;
        v58 = v27;
        v59 = 1024;
        v60 = v28;
        v61 = 1024;
        v62 = v29;
        v63 = 1024;
        v64 = v30;
        v65 = 2048;
        v66 = v31;
        v67 = 1024;
        v68 = v17 == 4;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Contextual Metric - {0x%x, %{public}.20P, %{public}.20P, 0x%x, %d, %d, %d, %d, 0x%x, 0x%llx, 0x%x, 0x%x, %d, %d, 0x%llx, %d}", buf, 0x7Eu);
      }

      v32 = [NSData dataWithBytes:a5 + 4 length:20];
      v33 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        v38 = 20;
        v39 = 2098;
        *v40 = v11;
        *&v40[8] = 2112;
        *&v40[10] = v32;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Contextual Metric primary hash %{public}.20P    data hash %@", buf, 0x1Cu);
      }
    }

    sub_1000088CC(v35);
    sub_10002249C(&v36);
  }

  else
  {
    v15 = qword_100BCE8D8;
    v14 = 0;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Stack is not ready, not generating contextual metric", buf, 2u);
      return 0;
    }
  }

  return v14;
}

void sub_1005427D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1000088CC(&a10);
  sub_10002249C(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_100542814(uint64_t a1, uint64_t a2)
{
  *(a1 + 794) = a2 != 0;
  v2 = *(*sub_1000BE4B4(a1, a2) + 408);

  return v2();
}

uint64_t sub_10054288C(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  v5 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    sub_1000E5A58(a1, __p);
    v7 = __p[0];
    v8 = "No";
    if (v12 >= 0)
    {
      v7 = __p;
    }

    if (a2)
    {
      v8 = "Yes";
    }

    *buf = 136446466;
    v14 = v7;
    v15 = 2080;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Setting device %{public}s to allow sco for turn by turn: %s", buf, 0x16u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 655) = a2;
  v9 = sub_1000BE4B4(v5, v6);
  return (*(*v9 + 424))(v9, a1, *(a1 + 655));
}

uint64_t sub_1005429CC(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 662);
    *buf = 67109120;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Last AVRCP version is %d", buf, 8u);
  }

  v4 = *(a1 + 662);
  sub_1000088CC(v6);
  return v4;
}

uint64_t sub_100542A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BE4B4(a1, a2);
  (*(*v4 + 440))(v4, a1, a2);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  *(a1 + 662) = a2;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting AVRCP version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_100542B90(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 668);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100542BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BE4B4(a1, a2);
  (*(*v4 + 488))(v4, a1, a2);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  *(a1 + 668) = a2;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting AVRCP Controller version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_100542CD4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 670);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100542D1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BE4B4(a1, a2);
  (*(*v4 + 504))(v4, a1, a2);
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  *(a1 + 670) = a2;
  return sub_1000088CC(v6);
}

uint64_t sub_100542D9C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 672);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100542DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BE4B4(a1, a2);
  (*(*v4 + 520))(v4, a1, a2);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  *(a1 + 672) = a2;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting AVRCP Target version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_100542EE0(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 674);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100542F28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BE4B4(a1, a2);
  (*(*v4 + 536))(v4, a1, a2);
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  *(a1 + 674) = a2;
  return sub_1000088CC(v6);
}

uint64_t sub_100542FA8(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 676);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100542FF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BE4B4(a1, a2);
  (*(*v4 + 552))(v4, a1, a2);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  *(a1 + 676) = a2;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting Handsfree version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_1005430EC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 678);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100543134(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BE4B4(a1, a2);
  (*(*v4 + 568))(v4, a1, a2);
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  *(a1 + 678) = a2;
  return sub_1000088CC(v6);
}

uint64_t sub_1005431B4(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = sub_1000BE4B4(a1, a2);
  (*(*v3 + 584))(v3, a1, &v8);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = v8;
  *(a1 + 680) = v8;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting A2DP Sink version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_1005432B4(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v3 = sub_1000BE4B4(a1, a2);
  (*(*v3 + 600))(v3, a1, &v6);
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 682) = v6;
  return sub_1000088CC(v5);
}

uint64_t sub_100543338(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = sub_1000BE4B4(a1, a2);
  (*(*v3 + 616))(v3, a1, &v8);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = v8;
  *(a1 + 684) = v8;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting MAP version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_100543438(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = sub_1000BE4B4(a1, a2);
  (*(*v3 + 632))(v3, a1, &v8);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = v8;
  *(a1 + 686) = v8;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting Object Push version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_100543538(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = sub_1000BE4B4(a1, a2);
  (*(*v3 + 648))(v3, a1, &v8);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = v8;
  *(a1 + 688) = v8;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting PNP version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_100543638(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = sub_1000BE4B4(a1, a2);
  (*(*v3 + 664))(v3, a1, &v8);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = v8;
  *(a1 + 690) = v8;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting SerialPort version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_100543738(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = sub_1000BE4B4(a1, a2);
  (*(*v3 + 680))(v3, a1, &v8);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = v8;
  *(a1 + 692) = v8;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting HID version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_100543838(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = sub_1000BE4B4(a1, a2);
  (*(*v3 + 696))(v3, a1, &v8);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = v8;
  *(a1 + 694) = v8;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting GATT version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_100543938(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = sub_1000BE4B4(a1, a2);
  (*(*v3 + 712))(v3, a1, &v8);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = v8;
  *(a1 + 696) = v8;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting WIAP version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_100543A38(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = sub_1000BE4B4(a1, a2);
  (*(*v3 + 728))(v3, a1, &v8);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = v8;
  *(a1 + 698) = v8;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting AVDTP version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_100543B38(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = sub_1000BE4B4(a1, a2);
  (*(*v3 + 744))(v3, a1, &v8);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = v8;
  *(a1 + 700) = v8;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting AVCTP version to %d", buf, 8u);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_100543C38(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 704);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100543C80(uint64_t a1, int a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  *(a1 + 704) = a2;
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting Firmware version to %d", buf, 8u);
  }

  return sub_1000088CC(v6);
}

__n128 sub_100543D4C(uint64_t a1, __n128 *a2)
{
  v3 = *(a1 + 748);
  if (a2)
  {
    if (v3)
    {
      result = *(a1 + 708);
      a2[1].n128_u32[0] = *(a1 + 724);
      *a2 = result;
    }
  }

  return result;
}

__n128 sub_100543D7C(uint64_t a1, __n128 *a2)
{
  v3 = *(a1 + 749);
  if (a2)
  {
    if (v3)
    {
      result = *(a1 + 728);
      a2[1].n128_u32[0] = *(a1 + 744);
      *a2 = result;
    }
  }

  return result;
}

uint64_t sub_100543DA4(uint64_t a1)
{
  v146[0] = 0;
  v146[1] = 0;
  sub_100007F88(v146, a1 + 64);
  *__p = 0u;
  v252 = 0u;
  memset(v250, 0, sizeof(v250));
  v248 = 0u;
  v249 = 0u;
  v246 = 0u;
  v247 = 0u;
  v244 = 0u;
  v245 = 0u;
  v242 = 0u;
  v243 = 0u;
  v240 = 0u;
  v241 = 0u;
  memset(v239, 0, sizeof(v239));
  v237 = 0u;
  v238 = 0u;
  *v144 = 0u;
  v145 = 0u;
  sub_10057C6A8(v144, 0);
  v236 = 0;
  v235 = 0u;
  memset(v234, 0, sizeof(v234));
  v232 = 0u;
  v233 = 0u;
  v230 = 0u;
  v231 = 0u;
  v228 = 0u;
  v229 = 0u;
  sub_1000DE474(&v228 + 1);
  BYTE2(v229) = 0;
  BYTE4(v229) = 0;
  BYTE2(v231) = 0;
  BYTE4(v231) = 0;
  HIDWORD(v234[2]) = 0;
  v230 = 0uLL;
  *(&v229 + 1) = 0;
  LOBYTE(v231) = 0;
  *(&v231 + 1) = 0;
  v232 = 0uLL;
  LOBYTE(v233) = 0;
  *(&v233 + 1) = 0;
  memset(v234, 0, 19);
  LOBYTE(v234[3]) = 1;
  *(&v234[3] + 6) = 0;
  *(&v234[3] + 1) = 0;
  v234[5] = 0;
  v235 = 0uLL;
  LOBYTE(v236) = 0;
  *(&v236 + 2) = 0;
  if (*(a1 + 750) == 1)
  {
    v2 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Identification - metric has already been updated", buf, 2u);
    }

    goto LABEL_228;
  }

  v3 = (a1 + 1132);
  v4 = *(a1 + 1132);
  if (v4 == 76 && (v5 = *(a1 + 1136) - 8194, v5 <= 0x2D) && ((1 << v5) & 0x200020037F9BLL) != 0 || *(a1 + 1125) == 1 && (*(a1 + 1145) & 0x10) != 0)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_100007F88(buf, a1);
    v6 = *(a1 + 704);
    sub_1000088CC(buf);
    if (!v6)
    {
      v18 = qword_100BCE8D8;
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_228;
      }

      sub_1000E5A58(a1, buf);
      v19 = buf[23] >= 0 ? buf : *buf;
      LODWORD(v226) = 136446210;
      *(&v226 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Identification - Apple Audio Device firmware version not yet known for device %{public}s. Waiting until firmware version comes in.", &v226, 0xCu);
      if ((buf[23] & 0x80000000) == 0)
      {
        goto LABEL_228;
      }

      v17 = *buf;
LABEL_35:
      operator delete(v17);
      goto LABEL_228;
    }

    v4 = *v3;
  }

  if (v4 == 76 && (v7 = *(a1 + 1136) - 8194, v7 <= 0x2D) && ((1 << v7) & 0x200020037F9BLL) != 0 || *(a1 + 1125) == 1 && (*(a1 + 1145) & 0x10) != 0 || *(a1 + 1433) == 1 && *(a1 + 1434) == 1 && (sub_1000295DC(a1) & 1) != 0)
  {
    sub_1000DEEA4(a1, buf);
    if (SBYTE7(v252) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *buf;
    *&v252 = *&buf[16];
    v8 = *(a1 + 1128);
    if (v8 == 2)
    {
      v9 = 1452;
    }

    else
    {
      if (v8 != 1)
      {
        goto LABEL_39;
      }

      v9 = 76;
    }

    if (*v3 == v9)
    {
      LOWORD(v237) = 2560;
      v20 = 39;
LABEL_42:
      BYTE2(v237) = v20;
      v21 = BYTE7(v252);
      if ((SBYTE7(v252) & 0x80u) == 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      if (SBYTE7(v252) < 0)
      {
        v21 = __p[1];
      }

      buf[0] = 13;
      v23 = sub_100545740(v22, &v21[v22], buf);
      v24 = __p + BYTE7(v252);
      if ((SBYTE7(v252) & 0x80u) == 0)
      {
        v25 = __p;
      }

      else
      {
        v24 = __p[0] + __p[1];
        v25 = __p[0];
      }

      std::string::erase(__p, v23 - v25, v24 - v23);
      v26 = BYTE7(v252);
      if ((SBYTE7(v252) & 0x80u) == 0)
      {
        v27 = __p;
      }

      else
      {
        v27 = __p[0];
      }

      if (SBYTE7(v252) < 0)
      {
        v26 = __p[1];
      }

      buf[0] = 10;
      v28 = sub_100545740(v27, &v26[v27], buf);
      v29 = __p + BYTE7(v252);
      if ((SBYTE7(v252) & 0x80u) == 0)
      {
        v30 = __p;
      }

      else
      {
        v29 = __p[0] + __p[1];
        v30 = __p[0];
      }

      std::string::erase(__p, v28 - v30, v29 - v28);
      v31 = BYTE7(v252);
      if ((SBYTE7(v252) & 0x80u) == 0)
      {
        v32 = __p;
      }

      else
      {
        v32 = __p[0];
      }

      if (SBYTE7(v252) < 0)
      {
        v31 = __p[1];
      }

      buf[0] = 44;
      v33 = sub_100545740(v32, &v31[v32], buf);
      v34 = __p + BYTE7(v252);
      if ((SBYTE7(v252) & 0x80u) == 0)
      {
        v35 = __p;
      }

      else
      {
        v34 = __p[0] + __p[1];
        v35 = __p[0];
      }

      std::string::erase(__p, v33 - v35, v34 - v33);
      sub_10000801C(v146);
      sub_1000E2FE4(a1, &v237 + 2, &v237 + 8, &v237 + 3);
      v143 = 0;
      sub_1000216B4(&v143);
      if (sub_10023DD84(a1 + 128, &v240, &v240 + 1) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100840EC8();
      }

      sub_100022214(&v143);
      sub_100007FB8(v146);
      sub_1005379CC(a1, &v239[1] + 3);
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v36 = *(a1 + 694);
      sub_1000088CC(buf);
      WORD5(v237) = v36;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v37 = *(a1 + 696);
      sub_1000088CC(buf);
      WORD6(v237) = v37;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v38 = *(a1 + 684);
      sub_1000088CC(buf);
      HIWORD(v237) = v38;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v39 = *(a1 + 676);
      sub_1000088CC(buf);
      LOWORD(v238) = v39;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v40 = *(a1 + 678);
      sub_1000088CC(buf);
      WORD1(v238) = v40;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v41 = *(a1 + 680);
      sub_1000088CC(buf);
      WORD2(v238) = v41;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v42 = *(a1 + 682);
      sub_1000088CC(buf);
      WORD3(v238) = v42;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v43 = *(a1 + 668);
      sub_1000088CC(buf);
      WORD4(v238) = v43;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v44 = *(a1 + 670);
      sub_1000088CC(buf);
      WORD5(v238) = v44;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v45 = *(a1 + 688);
      sub_1000088CC(buf);
      WORD6(v238) = v45;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v46 = *(a1 + 686);
      sub_1000088CC(buf);
      HIWORD(v238) = v46;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v47 = *(a1 + 690);
      sub_1000088CC(buf);
      LOWORD(v239[0]) = v47;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v48 = *(a1 + 692);
      sub_1000088CC(buf);
      WORD1(v239[0]) = v48;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v49 = *(a1 + 698);
      sub_1000088CC(buf);
      WORD2(v239[0]) = v49;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v50 = *(a1 + 700);
      sub_1000088CC(buf);
      WORD3(v239[0]) = v50;
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v51 = *(a1 + 704);
      sub_1000088CC(buf);
      DWORD2(v239[1]) = v51;
      v52 = *(a1 + 1128);
      if (*(a1 + 1124) == 1)
      {
        *(v239 + 12) = *v3;
        v53 = *(a1 + 1140);
        DWORD2(v239[0]) = v52;
        DWORD1(v239[1]) = v53;
      }

      BYTE3(v237) = 0;
      if (v52 == 2)
      {
        v54 = 1452;
      }

      else
      {
        if (v52 != 1)
        {
          goto LABEL_76;
        }

        v54 = 76;
      }

      if (*v3 == v54)
      {
LABEL_81:
        if (HIDWORD(v239[1]))
        {
          if ((WORD6(v239[1]) & 0x400) != 0 && (BYTE12(v239[1]) & 0x28) != 0)
          {
            HIDWORD(v239[1]) &= 0xFF001FFF;
          }

          v56 = BYTE7(v242);
          if (SBYTE7(v242) < 0)
          {
            v56 = DWORD2(v241);
          }

          v57 = HIBYTE(v243);
          if (v243 < 0)
          {
            v57 = v243;
          }

          v58 = v56 + v57;
          v59 = BYTE7(v245);
          if (SBYTE7(v245) < 0)
          {
            v59 = DWORD2(v244);
          }

          v60 = v58 + v59 + 80;
          v61 = malloc_type_calloc(v60, 1uLL, 0x100004077774924uLL);
          v62 = v61;
          *v61 = v237;
          v63 = v238;
          v64 = v239[0];
          v65 = v240;
          *(v61 + 3) = v239[1];
          *(v61 + 4) = v65;
          *(v61 + 1) = v63;
          *(v61 + 2) = v64;
          if ((SBYTE7(v242) & 0x80u) == 0)
          {
            v66 = &v241;
          }

          else
          {
            v66 = v241;
          }

          if ((SBYTE7(v242) & 0x80u) == 0)
          {
            v67 = BYTE7(v242);
          }

          else
          {
            v67 = *(&v241 + 1);
          }

          memcpy(v61 + 80, v66, v67);
          v68 = BYTE7(v242);
          if (SBYTE7(v242) < 0)
          {
            v68 = DWORD2(v241);
          }

          v69 = v68 + 80;
          if (v243 >= 0)
          {
            v70 = &v242 + 8;
          }

          else
          {
            v70 = *(&v242 + 1);
          }

          if (v243 >= 0)
          {
            v71 = HIBYTE(v243);
          }

          else
          {
            v71 = v243;
          }

          memcpy(&v62[v68 + 80], v70, v71);
          v72 = HIBYTE(v243);
          if (v243 < 0)
          {
            v72 = v243;
          }

          v73 = (v72 + v69);
          if ((SBYTE7(v245) & 0x80u) == 0)
          {
            v74 = &v244;
          }

          else
          {
            v74 = v244;
          }

          if ((SBYTE7(v245) & 0x80u) == 0)
          {
            v75 = BYTE7(v245);
          }

          else
          {
            v75 = *(&v244 + 1);
          }

          memcpy(&v62[v73], v74, v75);
          CC_SHA1(v62, v60, &v250[3]);
          v76 = sub_10000E92C();
          if (((*(*v76 + 160))(v76) & 1) == 0)
          {
            v77 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Identification - clearing friendly name due to release version", buf, 2u);
            }

            if (SBYTE7(v252) < 0)
            {
              *__p[0] = 0;
              __p[1] = 0;
            }

            else
            {
              LOBYTE(__p[0]) = 0;
              BYTE7(v252) = 0;
            }
          }

          v78 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109634;
            *&buf[4] = v60;
            *&buf[8] = 1040;
            *&buf[10] = v60;
            *&buf[14] = 2098;
            *&buf[16] = &v237;
            _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Identification - raw serialized data dump of length %d {%{public}.*P}", buf, 0x18u);
            v78 = qword_100BCE8D8;
          }

          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
          {
            if ((SBYTE7(v252) & 0x80u) == 0)
            {
              v79 = __p;
            }

            else
            {
              v79 = __p[0];
            }

            v80 = v241;
            if ((SBYTE7(v242) & 0x80u) == 0)
            {
              v80 = &v241;
            }

            v81 = *(&v245 + 1);
            if (v246 >= 0)
            {
              v81 = &v245 + 8;
            }

            if (v243 >= 0)
            {
              v82 = &v242 + 8;
            }

            else
            {
              v82 = *(&v242 + 1);
            }

            v83 = &v244;
            if (SBYTE7(v245) < 0)
            {
              v83 = v244;
            }

            if ((SBYTE7(v248) & 0x80u) == 0)
            {
              v84 = &v247;
            }

            else
            {
              v84 = v247;
            }

            v85 = &v248 + 8;
            if (v249 < 0)
            {
              v85 = *(&v248 + 1);
            }

            *&buf[4] = 20;
            *&buf[20] = 3;
            v149 = &v237;
            v151 = v79;
            v153 = WORD2(v237);
            v155 = BYTE8(v237);
            v157 = WORD3(v237);
            *&buf[18] = 1042;
            v158 = 1042;
            v162 = 1042;
            v159 = 8;
            v163 = 8;
            *&buf[8] = 2098;
            v148 = 2098;
            v160 = 2098;
            v164 = 2098;
            v169 = WORD5(v237);
            v173 = HIWORD(v237);
            v177 = WORD1(v238);
            v181 = WORD3(v238);
            v185 = WORD5(v238);
            v189 = HIWORD(v238);
            v193 = WORD1(v239[0]);
            v197 = WORD3(v239[0]);
            v201 = HIDWORD(v239[0]);
            v205 = DWORD1(v239[1]);
            v209 = BYTE3(v237);
            v211 = v80;
            v213 = v81;
            v161 = &v240;
            v165 = &v240 + 8;
            v217 = v83;
            v219 = v84;
            v221 = v85;
            v225 = BYTE8(v252);
            v167 = HIDWORD(v239[1]);
            v171 = WORD6(v237);
            v175 = v238;
            v179 = WORD2(v238);
            v183 = WORD4(v238);
            v187 = WORD6(v238);
            v191 = LOWORD(v239[0]);
            v195 = WORD2(v239[0]);
            v199 = DWORD2(v239[0]);
            v203 = v239[1];
            v207 = DWORD2(v239[1]);
            v215 = v82;
            v150 = 2082;
            v210 = 2082;
            v212 = 2082;
            v214 = 2082;
            v216 = 2082;
            v218 = 2082;
            v220 = 2082;
            v222 = 2082;
            v86 = v250[0];
            if (v250[2] >= 0)
            {
              v86 = v250;
            }

            v223 = v86;
            v152 = 1024;
            v154 = 1024;
            v156 = 1024;
            v166 = 1024;
            v168 = 1024;
            v170 = 1024;
            v172 = 1024;
            v174 = 1024;
            v176 = 1024;
            v178 = 1024;
            v180 = 1024;
            v182 = 1024;
            v184 = 1024;
            v186 = 1024;
            v188 = 1024;
            v190 = 1024;
            v192 = 1024;
            v194 = 1024;
            v196 = 1024;
            v198 = 1024;
            v200 = 1024;
            v202 = 1024;
            v204 = 1024;
            v206 = 1024;
            v208 = 1024;
            v224 = 1024;
            *buf = 68299266;
            *&buf[10] = &v250[3];
            _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Identification - generating metric {%{public}.20P, %{public}.3P, %{public}s, 0x%x, 0x%x, 0x%x, %{public}.8P, %{public}.8P, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, %d, %{public}s, %{public}s, %{public}s, %{public}s, %{public}s, %{public}s, %{public}s, %d}", buf, 0x12Eu);
          }

          free(v62);
          *(a1 + 708) = *&v250[3];
          *(a1 + 724) = v250[5];
          v89 = sub_1000BE4B4(v87, v88);
          v90 = (*(*v89 + 56))(v89, a1, a1 + 708);
          if (v90)
          {
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
            {
              sub_100840F38();
            }
          }

          else
          {
            *(a1 + 748) = 1;
            v92 = sub_1000BE4B4(v90, v91);
            v93 = (*(*v92 + 88))(v92, a1, &v237, 80);
            if (v93)
            {
              v93 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR);
              if (v93)
              {
                sub_100840F74();
              }
            }

            v95 = BYTE7(v242);
            if (SBYTE7(v242) < 0)
            {
              v95 = *(&v241 + 1);
            }

            if (v95)
            {
              v96 = sub_1000BE4B4(v93, v94);
              v93 = (*(*v96 + 104))(v96, a1, &v241);
            }

            v97 = HIBYTE(v246);
            if (v246 < 0)
            {
              v97 = v246;
            }

            if (v97)
            {
              v98 = sub_1000BE4B4(v93, v94);
              v93 = (*(*v98 + 120))(v98, a1, &v245 + 8);
            }

            v99 = HIBYTE(v243);
            if (v243 < 0)
            {
              v99 = v243;
            }

            if (v99)
            {
              v100 = sub_1000BE4B4(v93, v94);
              v93 = (*(*v100 + 136))(v100, a1, &v242 + 8);
            }

            v101 = BYTE7(v245);
            if (SBYTE7(v245) < 0)
            {
              v101 = *(&v244 + 1);
            }

            if (v101)
            {
              v102 = sub_1000BE4B4(v93, v94);
              v93 = (*(*v102 + 152))(v102, a1, &v244);
            }

            v103 = BYTE7(v248);
            if (SBYTE7(v248) < 0)
            {
              v103 = *(&v247 + 1);
            }

            if (v103)
            {
              v104 = sub_1000BE4B4(v93, v94);
              v93 = (*(*v104 + 168))(v104, a1, &v247);
            }

            v105 = HIBYTE(v249);
            if (v249 < 0)
            {
              v105 = v249;
            }

            if (v105)
            {
              v106 = sub_1000BE4B4(v93, v94);
              v93 = (*(*v106 + 184))(v106, a1, &v248 + 8);
            }

            v107 = HIBYTE(v250[2]);
            if (v250[2] < 0)
            {
              v107 = v250[1];
            }

            if (v107)
            {
              v108 = sub_1000BE4B4(v93, v94);
              (*(*v108 + 200))(v108, a1, v250);
            }

            v109 = sub_10000E92C();
            if ((*(*v109 + 8))(v109) && (WORD1(v239[0]) || ((v110 = sub_100537D2C(a1), BYTE3(v237)) ? (v111 = 1) : (v111 = v110), v111 == 1)))
            {
              v112 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                v113 = sub_10000E92C();
                v114 = (*(*v113 + 8))(v113);
                v115 = WORD1(v239[0]);
                v116 = sub_100537D2C(a1);
                *buf = 67109632;
                *&buf[4] = v114;
                *&buf[8] = 1024;
                *&buf[10] = v115;
                *&buf[14] = 1024;
                *&buf[16] = v116;
                _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "Identification - routing friendly name: internal %d, hid %d, carkit %d", buf, 0x14u);
              }
            }

            else
            {
              v117 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                v118 = sub_10000E92C();
                v119 = (*(*v118 + 8))(v118);
                v120 = WORD1(v239[0]);
                v121 = sub_100537D2C(a1);
                *buf = 67109632;
                *&buf[4] = v119;
                *&buf[8] = 1024;
                *&buf[10] = v120;
                *&buf[14] = 1024;
                *&buf[16] = v121;
                _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "Identification - clearing friendly name: internal %d, hid %d, carkit %d", buf, 0x14u);
              }

              if (SBYTE7(v252) < 0)
              {
                *__p[0] = 0;
                __p[1] = 0;
              }

              else
              {
                LOBYTE(__p[0]) = 0;
                BYTE7(v252) = 0;
              }
            }

            sub_10057C6D0(v144, SBYTE3(v237));
            sub_10057C70C(v144, SWORD2(v237));
            sub_10057C70C(v144, SWORD3(v237));
            sub_10057C6D0(v144, SBYTE8(v237));
            sub_10057C70C(v144, SWORD5(v237));
            sub_10057C70C(v144, SWORD6(v237));
            sub_10057C70C(v144, SHIWORD(v237));
            sub_10057C70C(v144, v238);
            sub_10057C70C(v144, SWORD1(v238));
            sub_10057C70C(v144, SWORD2(v238));
            sub_10057C70C(v144, SWORD3(v238));
            sub_10057C70C(v144, SWORD4(v238));
            sub_10057C70C(v144, SWORD5(v238));
            sub_10057C70C(v144, SWORD6(v238));
            sub_10057C70C(v144, SHIWORD(v238));
            sub_10057C70C(v144, v239[0]);
            sub_10057C70C(v144, SWORD1(v239[0]));
            sub_10057C70C(v144, SWORD2(v239[0]));
            sub_10057C70C(v144, SWORD3(v239[0]));
            sub_10057C75C(v144, DWORD2(v239[0]));
            sub_10057C75C(v144, HIDWORD(v239[0]));
            sub_10057C75C(v144, DWORD2(v239[1]));
            sub_10057C75C(v144, HIDWORD(v239[1]));
            sub_10057C6B8(v144, &v240, 8);
            sub_10057C6B8(v144, &v240 + 8, 8);
            if (v243 >= 0)
            {
              v122 = &v242 + 8;
            }

            else
            {
              v122 = *(&v242 + 1);
            }

            if (v243 >= 0)
            {
              v123 = HIBYTE(v243);
            }

            else
            {
              v123 = v243;
            }

            sub_10057C6B8(v144, v122, v123);
            sub_10000C704(buf, v144[1], v145 - v144[1]);
            v124 = sub_10000C5F8(buf);
            sub_10000C704(&v226, v144[1], v145 - v144[1]);
            v125 = sub_10000C5E0(&v226);
            CC_SHA1(v124, v125, &v250[5] + 4);
            *&v226 = &off_100AE0A78;
            if (*(&v226 + 1))
            {
              sub_10000C808(*(&v226 + 1));
            }

            *buf = &off_100AE0A78;
            if (*&buf[8])
            {
              sub_10000C808(*&buf[8]);
            }

            v126 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289026;
              *&buf[4] = 20;
              *&buf[8] = 2098;
              *&buf[10] = &v250[5] + 4;
              _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "Identification - Secondary hash {%{public}.20P}", buf, 0x12u);
              v126 = qword_100BCE8D8;
            }

            v127 = os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT);
            if (v127)
            {
              sub_10000C704(&v226, v144[1], v145 - v144[1]);
              v129 = sub_10000C5E0(&v226);
              sub_10000C704(&v141, v144[1], v145 - v144[1]);
              v130 = sub_10000C5F8(&v141);
              *buf = 68157954;
              *&buf[4] = v129;
              *&buf[8] = 2098;
              *&buf[10] = v130;
              _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "Identification - Raw buffer to create secondary hash {%{public}.*P}", buf, 0x12u);
              v141 = &off_100AE0A78;
              if (v142)
              {
                sub_10000C808(v142);
              }

              *&v226 = &off_100AE0A78;
              v127 = *(&v226 + 1);
              if (*(&v226 + 1))
              {
                sub_10000C808(*(&v226 + 1));
              }
            }

            *(a1 + 728) = *(&v250[5] + 4);
            *(a1 + 744) = HIDWORD(v250[7]);
            v131 = sub_1000BE4B4(v127, v128);
            if ((*(*v131 + 72))(v131, a1, a1 + 728))
            {
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
              {
                sub_100840FB0();
              }
            }

            else
            {
              *(a1 + 749) = 1;
            }

            *(a1 + 750) = 1;
            if (sub_100537D80(a1, WORD2(v237)) && (v132 = sub_10000E92C(), (*(*v132 + 8))(v132)))
            {
              v133 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                sub_1000E5A58(a1, buf);
                v134 = buf[23] >= 0 ? buf : *buf;
                LODWORD(v226) = 136446210;
                *(&v226 + 4) = v134;
                _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "Identification - skipping Core Analytics metric upload for automation dongle %{public}s", &v226, 0xCu);
                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }
              }
            }

            else
            {
              v135 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                sub_1000E5A58(a1, buf);
                v136 = buf[23] >= 0 ? buf : *buf;
                LODWORD(v226) = 136446210;
                *(&v226 + 4) = v136;
                _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "Identification - submitting Core Analytics metric upload for device %{public}s", &v226, 0xCu);
                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }
              }

              sub_10000801C(v146);
              v139 = sub_10000F034(v137, v138);
              (*(*v139 + 232))(v139, &v237);
            }
          }
        }

        else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100840FEC();
        }

        sub_10002249C(&v143);
        goto LABEL_228;
      }

LABEL_76:
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v55 = *(a1 + 176);
      sub_1000088CC(buf);
      if ((v55 == 22 || v55 == 17) && sub_100536A18(a1, &v228) && v233 == 1)
      {
        std::string::operator=((&v245 + 8), (&v233 + 8));
      }

      goto LABEL_81;
    }

LABEL_39:
    if (sub_10053D3E0(a1))
    {
      LOWORD(v237) = -1;
      v20 = -1;
    }

    else
    {
      LOWORD(v237) = *(a1 + 128);
      v20 = *(a1 + 130);
    }

    goto LABEL_42;
  }

  v10 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a1, &v226);
    v11 = v227;
    v12 = v226;
    v13 = *(a1 + 1433);
    v14 = *(a1 + 1434);
    v15 = sub_1000295DC(a1);
    v16 = &v226;
    *buf = 136446978;
    if (v11 < 0)
    {
      v16 = v12;
    }

    *&buf[4] = v16;
    *&buf[12] = 1024;
    *&buf[14] = v13;
    *&buf[18] = 1024;
    *&buf[20] = v14;
    v148 = 1024;
    LODWORD(v149) = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Identification - 3rd Party Device  %{public}s. Waiting until all criteria is met. Product Name Update:%d SDP Query Complete:%d Paired:%d", buf, 0x1Eu);
    if (v227 < 0)
    {
      v17 = v226;
      goto LABEL_35;
    }
  }

LABEL_228:
  if (SHIBYTE(v234[1]) < 0)
  {
    operator delete(*(&v233 + 1));
  }

  if (SHIBYTE(v232) < 0)
  {
    operator delete(*(&v231 + 1));
  }

  if (SHIBYTE(v230) < 0)
  {
    operator delete(*(&v229 + 1));
  }

  nullsub_21();
  if (v144[1])
  {
    *&v145 = v144[1];
    operator delete(v144[1]);
  }

  sub_1000E3D14(&v237);
  return sub_1000088CC(v146);
}

void sub_1005455BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10002249C(&a21);
  sub_100320BE8(&a65);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  sub_1000E3D14(&STACK[0x280]);
  sub_1000088CC(&a26);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_100545740(void *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = memchr(a1, *a3, a2 - a1);
  if (!result)
  {
    result = a2;
  }

  v6 = result + 1;
  if (result != a2 && v6 != a2)
  {
    do
    {
      v8 = *v6;
      if (v8 != *a3)
      {
        *result++ = v8;
      }

      ++v6;
    }

    while (v6 != a2);
  }

  return result;
}

uint64_t sub_1005457A8(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 660);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005457F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BE4B4(a1, a2);
  (*(*v4 + 760))(v4, a1, a2);
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  *(a1 + 660) = a2;
  return sub_1000088CC(v6);
}

uint64_t sub_100545870(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C798(a1, a2);
  if ((*(*v3 + 296))(v3))
  {
    v6[0] = 0;
    v6[1] = 0;
    sub_100007F88(v6, a1);
    v4 = *(a1 + 176);
    sub_1000088CC(v6);
    if (v4 == 25 || (*(a1 + 785) & 1) != 0)
    {
      return 1;
    }
  }

  if (*(a1 + 1432))
  {
    return 1;
  }

  else
  {
    return (*(a1 + 784) >> 1) & 1;
  }
}

void sub_100545910(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000DEEA4(a1, &__p);
    v3 = v28 >= 0 ? &__p : __p;
    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "HIDIdentification - Start identification for %s", buf, 0xCu);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p);
    }
  }

  __p = 0;
  v27 = 0;
  sub_100007F88(&__p, a1);
  v4 = *(a1 + 176);
  v5 = sub_1000088CC(&__p);
  if (v4 != 25 && (*(a1 + 784) & 0x302) == 0)
  {
    v14 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      v12 = "HIDIdentification - Not a mouse/TP. Wait for sniff param update";
      v13 = v14;
      goto LABEL_20;
    }
  }

  else
  {
    if (*(a1 + 784) & 2) != 0 || (v8 = sub_10000C798(v5, v6), ((*(*v8 + 296))(v8)))
    {
      v9 = 1;
    }

    else if ((*(a1 + 785) & 3) != 0)
    {
      v9 = 0;
    }

    else
    {
      memset(buf, 0, 20);
      v18 = *(a1 + 748);
      if (v18 == 1)
      {
        *&buf[16] = *(a1 + 724);
        *buf = *(a1 + 708);
      }

      v19 = *(a1 + 263);
      if (v19 < 0)
      {
        v19 = *(a1 + 248);
      }

      if (!v19)
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100841028();
        }

        operator new();
      }

      __p = 0;
      v27 = 0;
      v28 = 0;
      if (qword_100B508F0 != -1)
      {
        sub_100840690();
      }

      sub_10056DB18((a1 + 240), &__p);
      v20 = __p;
      v21 = v18 ^ 1;
      if (__p == v27)
      {
        v21 = 1;
      }

      if ((v21 & 1) == 0 && (*__p == *buf ? (v22 = *(__p + 1) == *&buf[8]) : (v22 = 0), v22 ? (v23 = *(__p + 4) == *&buf[16]) : (v23 = 0), v23))
      {
        *(a1 + 1432) = 1;
        v24 = qword_100BCE8D8;
        v9 = 0;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "HIDIdentification - Device found in allowlist", v25, 2u);
          v9 = 0;
          v20 = __p;
        }
      }

      else
      {
        v9 = 2;
      }

      if (v20)
      {
        v27 = v20;
        operator delete(v20);
      }
    }

    if (_os_feature_enabled_impl())
    {
      v10 = qword_100BCE8D8;
      v11 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
      if (v9 == 2)
      {
        if (v11)
        {
          LOWORD(__p) = 0;
          v12 = "HIDIdentification - Classic HID Device behavior is unknown. Wait for sniff param update";
          v13 = v10;
LABEL_20:
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, &__p, 2u);
        }
      }

      else
      {
        if (v11)
        {
          sub_1000DEEA4(a1, &__p);
          if (v28 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 67109378;
          *&buf[4] = v9;
          *&buf[8] = 2080;
          *&buf[10] = p_p;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "HIDIdentification - Set classic HID device behavior : %u for %s", buf, 0x12u);
          if (SHIBYTE(v28) < 0)
          {
            operator delete(__p);
          }
        }

        sub_10053D06C(a1, v9);
      }
    }

    else
    {
      v15 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000DEEA4(a1, &__p);
        v16 = v28 >= 0 ? &__p : __p;
        *buf = 67109378;
        *&buf[4] = v9;
        *&buf[8] = 2080;
        *&buf[10] = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "HIDIdentification - Set classic HID device behavior : %u for %s", buf, 0x12u);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(__p);
        }
      }

      sub_10053D06C(a1, v9);
    }
  }
}

void sub_100545E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_100545E40(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_10000C798(a1, a2);
  v5 = (*(*v4 + 352))(v4);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v8 = sub_10000C798(v5, v6);
    v7 = (*(*v8 + 360))(v8);
  }

  v9 = 0;
  if (_os_feature_enabled_impl() && v7)
  {
    if (sub_10000C5F8(a1 + 1064))
    {
      v9 = sub_100545870(a1, v10) ^ 1;
    }

    else
    {
      v9 = 0;
    }
  }

  if (*(a1 + 1124) == 1 && v2 != 0)
  {
    *buf = 0;
    v25 = 0uLL;
    *__p = xmmword_1008A9EF8;
    v23 = unk_1008A9F08;
    sub_10055193C(buf, __p, 4uLL);
    v12 = *buf;
    v13 = *buf;
    if (*buf != v25)
    {
      v13 = *buf;
      while (*v13 != ((*(a1 + 1132) << 16) | (*(a1 + 1128) << 32) | *(a1 + 1136)))
      {
        if (++v13 == v25)
        {
          goto LABEL_26;
        }
      }
    }

    if (v13 == v25)
    {
LABEL_26:
      v2 = 1;
    }

    else
    {
      v14 = qword_100BCE8D8;
      v2 = 0;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a1, __p);
        if ((SBYTE7(v23) & 0x80u) == 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = __p[0];
        }

        v20 = 136446210;
        v21 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "HIDIdentification - Overriding behavior for known good device %{public}s", &v20, 0xCu);
        if (SBYTE7(v23) < 0)
        {
          operator delete(__p[0]);
        }

        v2 = 0;
        v12 = *buf;
      }
    }

    if (v12)
    {
      *&v25 = v12;
      operator delete(v12);
    }
  }

  if (v9)
  {
    v16 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000DEEA4(a1, __p);
      if ((SBYTE7(v23) & 0x80u) == 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      *buf = 67109378;
      *&buf[4] = v2;
      LOWORD(v25) = 2080;
      *(&v25 + 2) = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "HIDIdentification - Update classic HID device behavior to %d for %s", buf, 0x12u);
      if (SBYTE7(v23) < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10053D06C(a1, v2);
    v18 = +[NSDistributedNotificationCenter defaultCenter];
    v19 = [NSNotification notificationWithName:@"com.apple.bluetooth.leHIDBehaviorKnown" object:0];
    [v18 postNotification:v19];
  }
}

void sub_100546168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005461A4(uint64_t a1, int a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v4 = sub_100007F88(v9, a1);
  v5 = *(a1 + 796);
  *(a1 + 796) = a2;
  v7 = sub_1000BE4B4(v4, v6);
  (*(*v7 + 840))(v7, a1, *(a1 + 796));
  if (v5 != a2)
  {
    sub_10000801C(v9);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 11);
  }

  return sub_1000088CC(v9);
}

BOOL sub_100546280(uint64_t a1, uint64_t a2)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1);
  v4 = *(a1 + 808);
  *(a1 + 808) = a2;
  v5 = qword_100BCE8D8;
  v6 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    sub_1000E5A58(a1, __p);
    v8 = v19 >= 0 ? __p : __p[0];
    *buf = 67109378;
    v22 = a2;
    v23 = 2082;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Smart Route enabled setting is set to %d for Device %{public}s", buf, 0x12u);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = sub_1000BE4B4(v6, v7);
  (*(*v9 + 888))(v9, a1, a2);
  if (v4 != a2)
  {
    sub_10000801C(v20);
    v10 = _os_feature_enabled_impl();
    if (v10)
    {
      v12 = sub_10000C798(v10, v11);
      v14 = (*(*v12 + 416))(v12) ^ 1;
      if (!a2)
      {
        LOBYTE(v14) = 1;
      }

      if ((v14 & 1) == 0)
      {
        if (qword_100B50950 != -1)
        {
          sub_100840E64();
        }

        v15 = off_100B50948;
        v16 = sub_1005464F8(a1, v13);
        sub_100331844(v15, a1, 54, v16, 1);
      }
    }

    if (qword_100B50950 != -1)
    {
      sub_100840E64();
    }

    sub_100331844(off_100B50948, a1, 32, a2, 1);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 7);
  }

  sub_1000088CC(v20);
  return v4 != a2;
}

void sub_1005464D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005464F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C798(a1, a2);
  v4 = (*(*v3 + 416))(v3);
  if (v4)
  {
    if (qword_100B508F0 != -1)
    {
      sub_1000E2FD0();
    }

    if (*(off_100B508E8 + 304) == 1 && *(a1 + 808) == 1)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v7 = sub_10000C798(v4, v5);
    if ((*(*v7 + 456))(v7))
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_100546604(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000C23E0(a1, __p);
    v4 = v9;
    v5 = __p[0];
    v6 = sub_1000E2E8C(a1);
    v7 = __p;
    if (v4 < 0)
    {
      v7 = v5;
    }

    *buf = 136446466;
    v11 = v7;
    v12 = 1024;
    v13 = v6;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Smart Route Supported was updated by SR daemon, updating device: “%{public}s” (state = %d)", buf, 0x12u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (qword_100B508F0 != -1)
  {
    sub_100840690();
  }

  return sub_10056B15C(off_100B508E8, a1, 17);
}

void sub_100546724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100546748(uint64_t a1, uint64_t a2)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1);
  v4 = *(a1 + 812);
  *(a1 + 812) = a2;
  v5 = qword_100BCE8D8;
  v6 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    sub_1000E5A58(a1, __p);
    v8 = v12 >= 0 ? __p : __p[0];
    *buf = 67109378;
    v15 = a2;
    v16 = 2082;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Spatial Audio Allowed is set to %d for Device %{public}s", buf, 0x12u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = sub_1000BE4B4(v6, v7);
  (*(*v9 + 912))(v9, a1, a2);
  if (v4 != a2)
  {
    sub_10000801C(v13);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 12);
  }

  return sub_1000088CC(v13);
}

void sub_1005468D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005468F0(uint64_t a1, int a2, int a3)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1);
  v6 = *(a1 + 804);
  *(a1 + 804) = a2;
  v7 = qword_100BCE8D8;
  v8 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (!v8 || ((sub_1000E5A58(a1, __p), v14 >= 0) ? (v10 = __p) : (v10 = __p[0]), *buf = 67109378, v17 = a2, v18 = 2082, v19 = v10, _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IED enabled setting is set to %d for Device %{public}s", buf, 0x12u), (v14 & 0x80000000) == 0))
  {
    if (!a3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(__p[0]);
  if (a3)
  {
LABEL_7:
    v11 = sub_1000BE4B4(v8, v9);
    (*(*v11 + 872))(v11, a1, *(a1 + 804));
  }

LABEL_8:
  if (v6 != a2)
  {
    sub_10000801C(v15);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 9);
  }

  return sub_1000088CC(v15);
}

void sub_100546A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100546AA8(uint64_t a1, int a2)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1);
  v4 = *(a1 + 816);
  *(a1 + 816) = a2;
  v5 = qword_100BCE8D8;
  v6 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    sub_1000E5A58(a1, __p);
    v8 = v12 >= 0 ? __p : __p[0];
    *buf = 67109378;
    v15 = a2;
    v16 = 2082;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Listening Mode is set to %d for Device %{public}s", buf, 0x12u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = sub_1000BE4B4(v6, v7);
  (*(*v9 + 928))(v9, a1, *(a1 + 816));
  if (v4 != a2)
  {
    sub_10000801C(v13);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v13);
}

void sub_100546C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_100546C50(uint64_t a1, unsigned int a2)
{
  if (a2 <= 8 && ((1 << a2) & 0x117) != 0)
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a1, __p);
      v8 = v10 >= 0 ? __p : __p[0];
      *buf = 136446466;
      v12 = v8;
      v13 = 1024;
      v14 = a2;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Device %{public}s with Invalid Listening Mode Configs %d", buf, 0x12u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return a2 != 4 && a2 != 8 && a2 > 2;
}

uint64_t sub_100546D6C(uint64_t a1, int a2)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1);
  v4 = *(a1 + 820);
  *(a1 + 820) = a2;
  v5 = qword_100BCE8D8;
  v6 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    sub_1000E5A58(a1, __p);
    v8 = v12 >= 0 ? __p : __p[0];
    *buf = 67109378;
    v15 = a2;
    v16 = 2082;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Listening Mode Configs is set to %d for Device %{public}s", buf, 0x12u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = sub_1000BE4B4(v6, v7);
  (*(*v9 + 992))(v9, a1, *(a1 + 820));
  if (v4 != a2)
  {
    sub_10000801C(v13);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v13);
}

void sub_100546EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100546F14(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 824) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_100546F5C(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 825) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_100546FA4(uint64_t a1, int a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v4 = sub_100007F88(v8, a1);
  *(a1 + 828) = a2;
  v6 = sub_1000BE4B4(v4, v5);
  (*(*v6 + 1008))(v6, a1, *(a1 + 828));
  return sub_1000088CC(v8);
}

uint64_t sub_100547038(uint64_t a1, int a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v4 = sub_100007F88(v8, a1);
  *(a1 + 832) = a2;
  v6 = sub_1000BE4B4(v4, v5);
  (*(*v6 + 1024))(v6, a1, *(a1 + 832));
  return sub_1000088CC(v8);
}

uint64_t sub_1005470CC(uint64_t a1, int a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v4 = sub_100007F88(v9, a1);
  v5 = *(a1 + 836);
  *(a1 + 836) = a2;
  v7 = sub_1000BE4B4(v4, v6);
  (*(*v7 + 1040))(v7, a1, *(a1 + 836));
  if (v5 != a2)
  {
    sub_10000801C(v9);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 16);
  }

  return sub_1000088CC(v9);
}

uint64_t sub_1005471A8(uint64_t a1, int a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v4 = sub_100007F88(v8, a1);
  *(a1 + 840) = a2;
  v6 = sub_1000BE4B4(v4, v5);
  (*(*v6 + 1056))(v6, a1, *(a1 + 840));
  return sub_1000088CC(v8);
}

uint64_t sub_10054723C(uint64_t a1, int a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v4 = sub_100007F88(v8, a1);
  *(a1 + 844) = a2;
  v6 = sub_1000BE4B4(v4, v5);
  (*(*v6 + 1072))(v6, a1, *(a1 + 844));
  return sub_1000088CC(v8);
}

uint64_t sub_1005472D0(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v4 = sub_100007F88(v8, a1);
  *(a1 + 848) = a2;
  v6 = sub_1000BE4B4(v4, v5);
  (*(*v6 + 1088))(v6, a1, a2);
  return sub_1000088CC(v8);
}

uint64_t sub_100547364(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 849) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_1005473AC(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 850) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_1005473F4(uint64_t a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 852) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_10054743C(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 856) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_100547484(uint64_t a1, char a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v4 = sub_100007F88(v8, a1);
  *(a1 + 864) = a2;
  v6 = sub_1000BE4B4(v4, v5);
  (*(*v6 + 1104))(v6, a1, *(a1 + 864));
  return sub_1000088CC(v8);
}

uint64_t sub_100547518(uint64_t a1, int a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v4 = sub_100007F88(v8, a1);
  *(a1 + 868) = a2;
  v6 = sub_1000BE4B4(v4, v5);
  (*(*v6 + 1120))(v6, a1, *(a1 + 868));
  return sub_1000088CC(v8);
}

uint64_t sub_1005475AC(uint64_t a1, int a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v4 = sub_100007F88(v9, a1);
  v5 = *(a1 + 876);
  *(a1 + 876) = a2;
  v7 = sub_1000BE4B4(v4, v6);
  (*(*v7 + 1168))(v7, a1, *(a1 + 876));
  if (v5 != a2)
  {
    sub_10000801C(v9);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v9);
}

uint64_t sub_100547688(uint64_t a1, int a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v4 = sub_100007F88(v9, a1);
  v6 = *(a1 + 872);
  *(a1 + 872) = a2;
  if (v6 != a2)
  {
    sub_10000801C(v9);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    v4 = sub_10056B15C(off_100B508E8, a1, 15);
  }

  v7 = sub_1000BE4B4(v4, v5);
  (*(*v7 + 1136))(v7, a1, *(a1 + 872));
  return sub_1000088CC(v9);
}

uint64_t sub_10054775C(uint64_t a1, int a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v4 = *(a1 + 880);
  *(a1 + 880) = a2;
  if (v4 != a2)
  {
    sub_10000801C(v6);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v6);
}

uint64_t sub_1005477F8(uint64_t a1, int a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v4 = *(a1 + 884);
  *(a1 + 884) = a2;
  if (v4 != a2)
  {
    sub_10000801C(v6);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v6);
}

uint64_t sub_100547894(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 888) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_1005478DC(uint64_t a1, int a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v4 = *(a1 + 892);
  *(a1 + 892) = a2;
  if (v4 != a2)
  {
    sub_10000801C(v6);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v6);
}

uint64_t sub_100547978(uint64_t a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 916) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_1005479C0(uint64_t a1, int a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v4 = *(a1 + 896);
  *(a1 + 896) = a2;
  if (v4 != a2)
  {
    sub_10000801C(v6);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v6);
}

uint64_t sub_100547A5C(uint64_t a1, int a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v4 = *(a1 + 912);
  *(a1 + 912) = a2;
  if (v4 != a2)
  {
    sub_10000801C(v6);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v6);
}

uint64_t sub_100547AF8(uint64_t a1, int a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v4 = *(a1 + 928);
  *(a1 + 928) = a2;
  if (v4 != a2)
  {
    sub_10000801C(v6);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v6);
}

uint64_t sub_100547B94(uint64_t a1, int a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v4 = *(a1 + 940);
  *(a1 + 940) = a2;
  if (v4 != a2)
  {
    sub_10000801C(v6);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v6);
}

uint64_t sub_100547C30(uint64_t a1, int a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v4 = *(a1 + 952);
  *(a1 + 952) = a2;
  if (v4 != a2)
  {
    sub_10000801C(v6);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v6);
}

uint64_t sub_100547CCC(uint64_t a1, int a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v4 = *(a1 + 956);
  *(a1 + 956) = a2;
  if (v4 != a2)
  {
    sub_10000801C(v6);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v6);
}

uint64_t sub_100547D68(uint64_t a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if (*(a1 + 960) != a2)
  {
    *(a1 + 960) = a2;
    sub_10000801C(v5);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_100547E04(uint64_t a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if (*(a1 + 920) != a2)
  {
    *(a1 + 920) = a2;
    sub_10000801C(v5);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_100547EA0(uint64_t a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if (*(a1 + 924) != a2)
  {
    *(a1 + 924) = a2;
    sub_10000801C(v5);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_100547F3C(uint64_t a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if (*(a1 + 936) != a2)
  {
    *(a1 + 936) = a2;
    sub_10000801C(v5);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_100547FD8(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v4 = sub_100007F88(v9, a1);
  v5 = *(a1 + 944);
  *(a1 + 944) = a2;
  v7 = sub_1000BE4B4(v4, v6);
  (*(*v7 + 1184))(v7, a1, a2);
  if (v5 != a2)
  {
    sub_10000801C(v9);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v9);
}

uint64_t sub_1005480B4(uint64_t a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if (*(a1 + 948) != a2)
  {
    *(a1 + 948) = a2;
    sub_10000801C(v5);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_100548150(uint64_t a1, int a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v4 = *(a1 + 900);
  *(a1 + 900) = a2;
  if (v4 != a2)
  {
    sub_10000801C(v6);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v6);
}

uint64_t sub_1005481EC(uint64_t a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if (*(a1 + 904) != a2)
  {
    *(a1 + 904) = a2;
    sub_10000801C(v5);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_100548288(uint64_t a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if (*(a1 + 908) != a2)
  {
    *(a1 + 908) = a2;
    sub_10000801C(v5);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_100548324(uint64_t a1, int a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v4 = *(a1 + 932);
  *(a1 + 932) = a2;
  if (v4 != a2)
  {
    sub_10000801C(v6);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v6);
}

uint64_t sub_1005483C0(uint64_t a1, char a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v4 = sub_100007F88(v8, a1);
  *(a1 + 1016) = a2;
  v6 = sub_1000BE4B4(v4, v5);
  (*(*v6 + 1240))(v6, a1, *(a1 + 1016));
  return sub_1000088CC(v8);
}

uint64_t sub_100548454(uint64_t a1, char a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v4 = sub_100007F88(v8, a1);
  *(a1 + 1032) = a2;
  v6 = sub_1000BE4B4(v4, v5);
  (*(*v6 + 1256))(v6, a1, *(a1 + 1032));
  return sub_1000088CC(v8);
}

uint64_t sub_1005484E8(uint64_t a1, char a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v4 = sub_100007F88(v8, a1);
  *(a1 + 1041) = a2;
  v6 = sub_1000BE4B4(v4, v5);
  (*(*v6 + 1288))(v6, a1, *(a1 + 1041));
  return sub_1000088CC(v8);
}

uint64_t sub_10054857C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1020);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005485C4(uint64_t a1, _DWORD *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v4 = sub_100007F88(v8, a1);
  *(a1 + 1020) = *a2;
  v6 = sub_1000BE4B4(v4, v5);
  (*(*v6 + 1280))(v6, a1, a1 + 1020);
  return sub_1000088CC(v8);
}

void sub_10054865C(uint64_t a1, int a2)
{
  if (_os_feature_enabled_impl())
  {
    v14[0] = 0;
    v14[1] = 0;
    sub_100007F88(v14, a1);
    v4 = *(a1 + 1045);
    v5 = qword_100BCE8D8;
    v6 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      sub_1000E5A58(a1, __p);
      if (v13 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      v9 = "Off";
      if (*(a1 + 1045))
      {
        v10 = "On";
      }

      else
      {
        v10 = "Off";
      }

      *buf = 136446722;
      if (a2)
      {
        v9 = "On";
      }

      v16 = v8;
      v17 = 2082;
      v18 = v10;
      v19 = 2082;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Temporary Managed Pairing Mode for Device %{public}s: Changing Mode %{public}s -> %{public}s", buf, 0x20u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *(a1 + 1045) = a2;
    v11 = sub_1000BE4B4(v6, v7);
    (*(*v11 + 1320))(v11, a1, *(a1 + 1045));
    if (v4 != a2)
    {
      sub_10000801C(v14);
      if (qword_100B508F0 != -1)
      {
        sub_100840690();
      }

      sub_10056B15C(off_100B508E8, a1, 15);
    }

    sub_1000088CC(v14);
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100841064();
  }
}

void sub_100548850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100548870(unsigned __int8 *a1, int a2)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1);
  v4 = a1[1046];
  v5 = (a2 ^ 1) & v4;
  v6 = qword_100BCE8D8;
  v7 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    v9 = "Off";
    if (v4)
    {
      v10 = "On";
    }

    else
    {
      v10 = "Off";
    }

    if (a2)
    {
      v9 = "On";
    }

    *buf = 136315650;
    v16 = v10;
    v17 = 2080;
    v18 = v9;
    if (v5)
    {
      v11 = "Yes";
    }

    else
    {
      v11 = "No";
    }

    v19 = 2080;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Guest Pairing: Changing Mode %s -> %s, trigger Magic Pairing: %s", buf, 0x20u);
  }

  a1[1046] = a2;
  v12 = sub_1000BE4B4(v7, v8);
  (*(*v12 + 1336))(v12, a1, a1[1046]);
  if (v5)
  {
    if (qword_100B50950 != -1)
    {
      sub_100840E64();
    }

    sub_1003337DC(off_100B50948, a1);
  }

  return sub_1000088CC(v14);
}

uint64_t sub_100548A1C(uint64_t a1, int a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1);
  v4 = *(a1 + 1047);
  *(a1 + 1047) = a2;
  if (v4 != a2)
  {
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a1, __p);
      v6 = v9 >= 0 ? __p : __p[0];
      *buf = 136446466;
      v12 = v6;
      v13 = 1024;
      v14 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Ownership changed: device %{public}s, state %d", buf, 0x12u);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10000801C(v10);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 8);
  }

  return sub_1000088CC(v10);
}

void sub_100548B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100548B84(uint64_t a1)
{
  v15[0] = 0;
  v15[1] = 0;
  v2 = sub_100007F88(v15, a1);
  *(a1 + 976) = *(a1 + 968);
  *(a1 + 1000) = *(a1 + 992);
  *(a1 + 1498) = 0;
  v4 = sub_1000BE4B4(v2, v3);
  __p = 0;
  v13 = 0;
  v14 = 0;
  v5 = *(a1 + 968);
  v6 = *(a1 + 976);
  if (v6 != v5)
  {
    if (v6 - v5 >= 0)
    {
      operator new();
    }

    sub_1000C7698();
  }

  (*(*v4 + 1200))(v4, a1, &__p);
  v8 = __p;
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  v9 = sub_1000BE4B4(v8, v7);
  sub_1003A5D88(v11, (a1 + 992));
  (*(*v9 + 1216))(v9, a1, v11);
  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }

  return sub_1000088CC(v15);
}

void sub_100548CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100548D28(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1);
  *(a1 + 1498) = 1;
  sub_10000801C(v3);
  if (qword_100B508F0 != -1)
  {
    sub_100840690();
  }

  sub_10056B15C(off_100B508E8, a1, 31);
  return sub_1000088CC(v3);
}

uint64_t sub_100548DB8(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1498);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100548E00(uint64_t a1, int a2, int a3)
{
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, a1);
  if (a2 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2 + 7;
  }

  v7 = *(a1 + 968);
  v8 = *(a1 + 976) - v7;
  v9 = (v6 >> 3);
  if (v8 <= v9)
  {
    buf[0] = 0;
    sub_10041F894((a1 + 968), (v9 + 1) - v8, buf);
    v7 = *(a1 + 968);
  }

  v10 = *(v7 + v9);
  v11 = a2 - (v6 & 0xF8);
  if (((1 << v11) & v10) == a3 << v11)
  {
    if (v8 > v9)
    {
      return sub_1000088CC(v25);
    }
  }

  else
  {
    *(v7 + v9) = v10 ^ (1 << v11);
  }

  v12 = qword_100BCE8D8;
  v13 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    sub_1000E5A58(a1, __p);
    v15 = v24 >= 0 ? __p : __p[0];
    *buf = 136446722;
    v27 = v15;
    v28 = 1024;
    v29 = a2;
    v30 = 1024;
    v31 = a3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "setAACPCapabilityBit: Writing device %{public}s, bit %d, value %d", buf, 0x18u);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v16 = sub_1000BE4B4(v13, v14);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v17 = *(a1 + 968);
  v18 = *(a1 + 976);
  if (v18 != v17)
  {
    if (v18 - v17 >= 0)
    {
      operator new();
    }

    sub_1000C7698();
  }

  (*(*v16 + 1200))(v16, a1, &v20);
  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  return sub_1000088CC(v25);
}

void sub_100549044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100549080(uint64_t result, unsigned int a2, int a3)
{
  if (a2 <= 0xFF)
  {
    v5 = result;
    v13[0] = 0;
    v13[1] = 0;
    v6 = sub_100007F88(v13, result);
    v8 = *(v5 + 992);
    if (a2 >= ((*(v5 + 1000) - v8) >> 2))
    {
      if (!a3)
      {
        return sub_1000088CC(v13);
      }

      v12 = 0;
      sub_10041DCD4((v5 + 992), a2 + 1, &v12);
      v9 = (*(v5 + 992) + 4 * a2);
      if (*v9 == a3)
      {
LABEL_8:
        v10 = sub_1000BE4B4(v6, v7);
        sub_1003A5D88(__p, (v5 + 992));
        (*(*v10 + 1216))(v10, v5, __p);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        return sub_1000088CC(v13);
      }
    }

    else
    {
      v9 = (v8 + 4 * a2);
      if (*v9 == a3)
      {
        return sub_1000088CC(v13);
      }
    }

    *v9 = a3;
    goto LABEL_8;
  }

  return result;
}

void sub_10054919C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005491CC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 812);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100549214(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 824);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054925C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 825);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005492A4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 828);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005492EC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 832);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100549334(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 840);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054937C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 844);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005493C4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 848);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054940C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 852);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100549454(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 864);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054949C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 868);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005494E4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 880);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054952C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 888);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100549574(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 896);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005495BC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 900);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100549604(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 904);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054964C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 908);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100549694(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 912);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005496DC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 928);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100549724(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 932);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054976C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 940);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005497B4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 952);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005497FC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 956);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100549844(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 960);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054988C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 916);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005498D4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 920);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054991C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 924);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100549964(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 936);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005499AC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 944);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005499F4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 948);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100549A3C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 856);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100549A84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *(a1 + 968);
  v5 = *(a1 + 976);
  if (v5 != v4)
  {
    sub_1000C9104(a2, v5 - v4);
  }

  return sub_1000088CC(v7);
}

id sub_100549B24(uint64_t a1, void *a2, uint64_t **a3)
{
  v5 = a2;
  v7 = *a3;
  v6 = a3[1];
  if (*a3 == v6)
  {
    goto LABEL_26;
  }

  v22 = 0;
  do
  {
    if (*v7 != a1)
    {
      sub_1000C23E0(*v7, __p);
      if (v26 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = *__p;
      }

      v9 = [NSString stringWithCString:v8 encoding:4];
      if (v26 < 0)
      {
        operator delete(*__p);
      }

      v10 = qword_100BCE960;
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 138412546;
        *&__p[4] = v9;
        v24 = 2112;
        v25 = v5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device Name: %@, Localized Name: %@", __p, 0x16u);
      }

      if ([v9 length] && objc_msgSend(v9, "hasPrefix:", v5))
      {
        if ([v5 isEqualToString:v9])
        {
          v11 = 1;
        }

        else
        {
          v21 = [NSString stringWithFormat:@"^%@ #\\d*$", v5];
          v12 = [NSRegularExpression regularExpressionWithPattern:"regularExpressionWithPattern:options:error:" options:? error:?];
          if ([v12 numberOfMatchesInString:v9 options:0 range:{0, objc_msgSend(v9, "length")}] == 1)
          {
            v13 = +[NSCharacterSet decimalDigitCharacterSet];
            v14 = [v13 invertedSet];
            v15 = [v9 componentsSeparatedByCharactersInSet:v14];
            v16 = [v15 componentsJoinedByString:&stru_100B0F9E0];

            v11 = [v16 intValue];
          }

          else
          {
            v11 = 0;
          }
        }

        v17 = v22;
        if (v11 > v22)
        {
          v17 = v11;
        }

        v22 = v17;
      }

      v6 = a3[1];
    }

    ++v7;
  }

  while (v7 != v6);
  if (v22 <= 0)
  {
LABEL_26:
    v19 = v5;
  }

  else
  {
    v18 = [NSString stringWithFormat:@" #%d", (v22 + 1)];
    v19 = [v5 stringByAppendingString:v18];
  }

  return v19;
}

void sub_100549EB0(uint64_t a1)
{
  if (*(a1 + 1132) != 76 || ((v2 = *(a1 + 1136) - 8194, v3 = v2 > 0x2D, v4 = (1 << v2) & 0x200020037F9BLL, !v3) ? (v5 = v4 == 0) : (v5 = 1), v5))
  {
    if (*(a1 + 1125) != 1 || (*(a1 + 1145) & 0x10) == 0 && (*(a1 + 1157) & 2) == 0)
    {
      return;
    }
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  memset(&v37, 0, sizeof(v37));
  sub_1000C23E0(a1, &v37);
  if (!std::string::compare(&v37, "AirPods"))
  {
    v15 = sub_100438B14(@"AIRPODS", @"Headsets");
    v16 = [NSString stringWithFormat:@"%@", v15];
LABEL_41:
    v12 = v16;

    goto LABEL_42;
  }

  if (!std::string::compare(&v37, "Powerbeats³"))
  {
    v15 = sub_100438B14(@"POWERBEATS3", @"Headsets");
    v16 = [NSString stringWithFormat:@"%@", v15];
    goto LABEL_41;
  }

  if (!std::string::compare(&v37, "Beats Solo³"))
  {
    v15 = sub_100438B14(@"SOLO3", @"Headsets");
    v16 = [NSString stringWithFormat:@"%@", v15];
    goto LABEL_41;
  }

  if (!std::string::compare(&v37, "Beatsˣ") || !std::string::compare(&v37, "BeatsX"))
  {
    v15 = sub_100438B14(@"BEATSX", @"Headsets");
    v16 = [NSString stringWithFormat:@"%@", v15];
    goto LABEL_41;
  }

  if (!std::string::compare(&v37, "Beats Studio³"))
  {
    v15 = sub_100438B14(@"BEATSSTUDIO3", @"Headsets");
    v16 = [NSString stringWithFormat:@"%@", v15];
    goto LABEL_41;
  }

  v6 = std::string::compare(&v37, "Beats Studio Pro");
  if (!v6)
  {
    v12 = @"Beats Studio Pro";
    goto LABEL_42;
  }

  if (!std::string::compare(&v37, "Powerbeats Pro"))
  {
    v15 = sub_100438B14(@"POWERBEATSPRO", @"Headsets");
    v16 = [NSString stringWithFormat:@"%@", v15];
    goto LABEL_41;
  }

  if (!std::string::compare(&v37, "Solo Pro"))
  {
    v15 = sub_100438B48(@"SOLOPRO", @"Headsets");
    v16 = [NSString stringWithFormat:@"%@", v15];
    goto LABEL_41;
  }

  v6 = std::string::compare(&v37, "AirPods Pro");
  if (v6)
  {
    v6 = std::string::compare(&v37, "AirPods Max");
    if (v6)
    {
      v6 = std::string::compare(&v37, "Beats Studio Buds");
      if (v6)
      {
        v6 = std::string::compare(&v37, "Beats Studio Buds +");
        if (v6)
        {
          size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
          if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v37.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            v9 = qword_100BCE960;
            if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(a1, &__p);
              if (v36 >= 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p;
              }

              v11 = &v37;
              if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v11 = v37.__r_.__value_.__r.__words[0];
              }

              *buf = 136315394;
              *&buf[4] = p_p;
              *&buf[12] = 2080;
              *&buf[14] = v11;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Set user-defined name for Apple Audio Device: %s to: %s", buf, 0x16u);
              if (SHIBYTE(v36) < 0)
              {
                operator delete(__p);
              }
            }

            sub_100007E30(&__p, "");
            *v41 = 0;
            sub_100016250(v41);
            *buf = *v41;
            *&buf[8] = *&v41[4];
            sub_100538494(a1, &__p, buf);
            if (SHIBYTE(v36) < 0)
            {
              operator delete(__p);
            }

            v12 = 0;
            sub_100538D30(a1, &v37, 0);
            v13 = 0;
            v14 = 0;
          }

          else
          {
            v13 = 0;
            v14 = 0;
            v12 = 0;
          }

          goto LABEL_75;
        }

        v12 = @"Beats Studio Buds +";
      }

      else
      {
        v12 = @"Beats Studio Buds";
      }
    }

    else
    {
      v12 = @"AirPods Max";
    }
  }

  else
  {
    v12 = @"AirPods Pro";
  }

LABEL_42:
  v17 = sub_100432410(v6, v7);
  if (v17)
  {
    __p = 0;
    v35 = 0;
    v36 = 0;
    v19 = sub_100432410(v17, v18);
    (*(*v19 + 112))(&__p);
    if (SHIBYTE(v36) < 0)
    {
      if (v35)
      {
        v20 = __p;
        goto LABEL_49;
      }
    }

    else if (HIBYTE(v36))
    {
      v20 = &__p;
LABEL_49:
      v21 = [NSString stringWithUTF8String:v20];
      v22 = qword_100BCE960;
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v21;
        *&buf[12] = 2112;
        *&buf[14] = v12;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Name prefix: %@, Device type: %@", buf, 0x16u);
      }

      v23 = sub_100438B14(@"APPLE_AUDIO_DEVICE_NAME", v12);
      v33 = 0;
      v13 = [NSString stringWithValidatedFormat:v23 validFormatSpecifiers:@"%@%@" error:&v33, v21, v12];
      v24 = v33;

      if (!v13)
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_1008410A0();
        }

        v13 = 0;
        v14 = v21;
        goto LABEL_73;
      }

      v14 = v21;
LABEL_56:
      v26 = qword_100BCE960;
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v13;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Localized name: %@", buf, 0xCu);
      }

      if (qword_100B50F88 != -1)
      {
        sub_100841114();
      }

      sub_10009DB3C(off_100B50F80, &v38);
      v30 = 0;
      __dst = 0;
      v32 = 0;
      if (v39 != v38)
      {
        sub_1000080CC(&v30, (v39 - v38) >> 3);
      }

      v24 = sub_100549B24(a1, v13, &v30);
      if (v30)
      {
        __dst = v30;
        operator delete(v30);
      }

      memset(buf, 0, sizeof(buf));
      v27 = v24;
      sub_100007E30(buf, [v24 UTF8String]);
      v28 = qword_100BCE960;
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
      {
        v29 = buf;
        if ((buf[23] & 0x80u) != 0)
        {
          v29 = *buf;
        }

        *v41 = 136315138;
        *&v41[4] = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Renaming device to: %s", v41, 0xCu);
      }

      sub_100538D30(a1, buf, 1);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

LABEL_73:

      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p);
      }

      goto LABEL_75;
    }

    v25 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "No name prefix", buf, 2u);
    }

    v13 = v12;
    v14 = 0;
    goto LABEL_56;
  }

  sub_10054A8E4(a1);
  v13 = 0;
  v14 = 0;
LABEL_75:
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }
}

void sub_10054A778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

void sub_10054A8E4(uint64_t a1)
{
  sub_10053781C(a1, v11);
  if (v12 < 0)
  {
    if (v11[1])
    {
      operator delete(v11[0]);
      return;
    }
  }

  else if (v12)
  {
    return;
  }

  if (*(a1 + 1132) == 76 && ((v2 = *(a1 + 1136) - 8194, v3 = v2 > 0x2D, v4 = (1 << v2) & 0x200020037F9BLL, !v3) ? (v5 = v4 == 0) : (v5 = 1), !v5) || *(a1 + 1125) == 1 && ((*(a1 + 1145) & 0x10) != 0 || (*(a1 + 1157) & 2) != 0))
  {
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }
  }

  else
  {
    v6 = *(a1 + 784);
    if (v12 < 0)
    {
      operator delete(v11[0]);
      if ((v6 & 1) == 0)
      {
        return;
      }
    }

    else if ((v6 & 1) == 0)
    {
      return;
    }
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10054AA44;
  v8[3] = &unk_100AFC338;
  v9 = objc_alloc_init(CBUserController);
  v10 = a1;
  v7 = v9;
  [v7 getCurrentUserGivenNameWithCompletion:v8];
}

void sub_10054AA44(uint64_t a1, void *a2)
{
  v3 = a2;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  sub_1000DEEA4(*(a1 + 40), __p);
  if (v26 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = *__p;
  }

  v5 = [NSString stringWithCString:v4 encoding:4];
  if (v26 < 0)
  {
    operator delete(*__p);
  }

  v6 = [v3 length];
  if (v3 && v6)
  {
    v7 = sub_100438B14(@"APPLE_DEVICE_NAME", v5);
    v21 = 0;
    v8 = [NSString stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@%@" error:&v21, v3, v5];
    v9 = v21;

    if (v8)
    {
      if (qword_100B50F88 != -1)
      {
        sub_100841114();
      }

      sub_10009DB3C(off_100B50F80, &v22);
      v10 = *(a1 + 40);
      __dst = 0;
      v20 = 0;
      v18 = 0;
      if (v23 != v22)
      {
        sub_1000080CC(&v18, (v23 - v22) >> 3);
      }

      v11 = sub_100549B24(v10, v8, &v18);
      if (v18)
      {
        __dst = v18;
        operator delete(v18);
      }

      v12 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v11;
        v14 = [v11 UTF8String];
        *__p = 136315138;
        *&__p[4] = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Bluetooth device name is auto updated to %s", __p, 0xCu);
      }

      v15 = *(a1 + 40);
      v16 = v11;
      sub_100007E30(__p, [v11 UTF8String]);
      sub_100538D30(v15, __p, 1);
      if (v26 < 0)
      {
        operator delete(*__p);
      }
    }

    else
    {
      v17 = qword_100BCE8D8;
      if (v9 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        *__p = 138412290;
        *&__p[4] = v9;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "stringWithValidatedFormat failed for APPLE_DEVICE_NAME: %@", __p, 0xCu);
        v17 = qword_100BCE8D8;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1008411BC();
      }

      v11 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084113C();
    }

    v11 = 0;
    v8 = 0;
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }
}

void sub_10054AD84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10054AE4C(uint64_t result, uint64_t a2)
{
  if (a2 && *(result + 424) != a2)
  {
    *(result + 424) = a2;
    v2 = *(*sub_1000BE4B4(result, a2) + 1360);

    return v2();
  }

  return result;
}

uint64_t sub_10054AED0(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 428);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054AF18(uint64_t a1, float a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v4 = sub_100007F88(v8, a1);
  *(a1 + 1180) = a2;
  v6 = sub_1000BE4B4(v4, v5);
  (*(*v6 + 1392))(v6, a1, *(a1 + 1180));
  return sub_1000088CC(v8);
}

float sub_10054AFB4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1180);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054B004(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 1208) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_10054B04C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1208);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054B094(uint64_t a1, char **a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v4 = sub_100007F88(v9, a1);
  if ((a1 + 1184) != a2)
  {
    v4 = sub_1003A5C5C((a1 + 1184), *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  v6 = sub_1000BE4B4(v4, v5);
  sub_1003A5D88(__p, (a1 + 1184));
  (*(*v6 + 1408))(v6, a1, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return sub_1000088CC(v9);
}

void sub_10054B15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10054B188(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = *(a1 + 1336);
  if (v4 != a2)
  {
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v9 = v4;
      v10 = 2048;
      v11 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating powerUISmartChargingState from %lu->%lu", buf, 0x16u);
    }

    *(a1 + 1336) = a2;
  }

  return sub_1000088CC(v7);
}

void sub_10054B26C(uint64_t a1, void *a2)
{
  v4 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  if (!v4 || ([*(a1 + 1344) isEqualToDate:v4] & 1) == 0)
  {
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 1344);
      *buf = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating powerUISmartChargingDeadline from %@->%@", buf, 0x16u);
    }

    objc_storeStrong((a1 + 1344), a2);
  }

  sub_1000088CC(v7);
}

void sub_10054B370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10054B398(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1336);
  sub_1000088CC(v4);
  return v2;
}

id sub_10054B3E0(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1344);
  sub_1000088CC(v4);

  return v2;
}

uint64_t sub_10054B440(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 432);
  v3 = &off_100AE0A78;
  v4 = 0;
  sub_10000AE20(a1 + 496, &v3);
  v3 = &off_100AE0A78;
  if (v4)
  {
    sub_10000C808(v4);
  }

  return sub_1000088CC(v5);
}

void sub_10054B4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, atomic_uint *a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    sub_10000C808(a5);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

id sub_10054B4E8(unsigned __int8 *a1, unsigned int a2)
{
  v4 = *a1;
  v5 = v4 | (a1[1] << 8);
  if (v5 == 76 || v5 == 19456)
  {
    v7 = 3;
    v8 = 2;
  }

  else
  {
    if (v4 != 76)
    {
      v9 = 0;
      goto LABEL_25;
    }

    v7 = 2;
    v8 = 1;
  }

  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = [NSNumber numberWithUnsignedShort:76];
  [v9 setObject:v10 forKey:@"kCBMsgArgVID"];

  [v9 setObject:&off_100B338E8 forKey:@"kCBMsgArgVIDSource"];
  v11 = a1[v8];
  v12 = [NSNumber numberWithUnsignedChar:a1[v8]];
  [v9 setObject:v12 forKey:@"CBCentralManagerScanOptionMatchingRuleTypeKey"];
  v13 = v8 + 1;

  if (v11 <= 2)
  {
    if (v11 != 1)
    {
      if (v11 == 2)
      {
        v14 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 0;
          v15 = "Warning: Received Apple EIR 3rd party advertising data - not processed";
          v16 = &v20;
LABEL_16:
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, v16, 2u);
          goto LABEL_25;
        }
      }

      goto LABEL_25;
    }

    if (a2 <= v7)
    {
      goto LABEL_25;
    }

    if (a2 == 20)
    {
      v17 = [NSData dataWithBytes:&a1[v13] length:16];
      [v9 setObject:v17 forKey:@"ServiceUUIDHash"];
    }

    else
    {
      v17 = [[NSString alloc] initWithBytes:&a1[v13] length:a2 - v7 encoding:4];
      if (v17)
      {
        [v9 setObject:v17 forKey:@"kCBMsgArgModelIdentifier"];
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  if (v11 == 3)
  {
    v17 = [NSNumber numberWithUnsignedChar:a1[v13]];
    [v9 setObject:v17 forKey:@"kCBMsgArgColorID"];
    goto LABEL_24;
  }

  if (v11 == 7)
  {
    v14 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 0;
      v15 = "Warning: Received Apple EIR ProxPairing data - not processed";
      v16 = &v19;
      goto LABEL_16;
    }
  }

LABEL_25:

  return v9;
}

BOOL sub_10054B7C4(uint64_t a1, void *a2, unsigned int a3)
{
  __s2 = 0;
  v40 = 0;
  *&__n[1] = 0;
  __n[0] = 0;
  v38 = 0;
  v37 = 0;
  v36[0] = 0;
  v36[1] = 0;
  sub_100007F88(v36, a1 + 432);
  v6 = sub_10000C5E0(a1 + 496);
  v8 = v6;
  if (v6 == a3)
  {
    v9 = sub_10000C5F8(a1 + 496);
    v6 = memcmp(a2, v9, v8);
    if (!v6)
    {
      v11 = 0;
      goto LABEL_50;
    }
  }

  if (!a3 || (v6 = sub_10024AD40(a2, 255, __n, &__n[1]), v6) || (v6 = sub_10000C5E0(a1 + 496)) != 0 && (v30 = sub_10000C5F8(a1 + 496), v6 = sub_10024AD40(v30, 255, &v40, &__s2), v6))
  {
    v10 = 0;
LABEL_6:
    v11 = 1;
    goto LABEL_7;
  }

  if (__n[0] != v40)
  {
    v10 = 1;
    goto LABEL_6;
  }

  v6 = memcmp(*&__n[1], __s2, __n[0]);
  v11 = v6 != 0;
  v10 = 1;
LABEL_7:
  v12 = sub_10000C798(v6, v7);
  if (v10 & (*(*v12 + 416))(v12) & v11)
  {
    v13 = sub_10054B4E8(*&__n[1], __n[0]);
    NSLog(@"Received EIR dict: %@", v13);
    if (v13)
    {
      v14 = [v13 valueForKey:@"kCBMsgArgVID"];
      v15 = [v13 valueForKey:@"kCBMsgArgVIDSource"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & (v15 != 0)) == 1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = [v14 unsignedShortValue];
          v16 = [v15 unsignedCharValue];
          v17 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a1, __p);
            v18 = __p;
            if (v35 < 0)
            {
              v18 = __p[0];
            }

            *buf = 136447234;
            *&buf[4] = v18;
            *&buf[12] = 1024;
            *&buf[14] = v16;
            *&buf[18] = 1024;
            *v43 = v32;
            *&v43[4] = 1024;
            v44 = 0;
            v45 = 1024;
            v46 = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "setEIRData %{public}s deviceId information: vidSrc 0x%x vid 0x%x pid 0x%x version 0x%x", buf, 0x24u);
            if (v35 < 0)
            {
              operator delete(__p[0]);
            }
          }

          sub_10053D890(a1, v16, v32, 0, 0);
        }
      }

      v19 = [v13 valueForKey:@"kCBMsgArgColorID"];
      if (v19)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          sub_10054AE4C(a1, [v19 unsignedCharValue]);
        }
      }

      v20 = [v13 valueForKey:@"kCBMsgArgModelIdentifier"];
      if (v20)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
          v22 = v21;
          sub_100007E30(&__str, [v21 UTF8String]);
          std::string::operator=((a1 + 392), &__str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  sub_10000C704(buf, a2, a3);
  sub_10000AE20(a1 + 496, buf);
  *buf = &off_100AE0A78;
  if (*&buf[8])
  {
    sub_10000C808(*&buf[8]);
  }

  if (a3)
  {
    v23 = sub_10024AD40(a2, 16, &v37, &v38);
    v24 = v37;
    if (!v23 && v37)
    {
      if (!v38)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/core/Device.mm", 6726, "(uint8_t *)newDeviceIdData");
      }

      if (v37 <= 1u)
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/core/Device.mm", 6729, "BOOL BT::Device::setEIRData(uint8_t *, uint8_t)");
        v25 = 0;
      }

      else
      {
        v25 = *v38;
        if (v37 > 3u)
        {
          v26 = *(v38 + 1);
          if (v37 > 5u)
          {
            v27 = *(v38 + 2);
            if (v37 >= 8u)
            {
              v28 = *(v38 + 3);
LABEL_49:
              sub_10053D890(a1, v25, v26, v27, v28);
              goto LABEL_50;
            }

LABEL_48:
            v28 = 0;
            goto LABEL_49;
          }

LABEL_47:
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/core/Device.mm", 6731, "BOOL BT::Device::setEIRData(uint8_t *, uint8_t)");
          v27 = 0;
          goto LABEL_48;
        }
      }

      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/core/Device.mm", 6730, "BOOL BT::Device::setEIRData(uint8_t *, uint8_t)");
      v26 = 0;
      goto LABEL_47;
    }

    v29 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109888;
      *&buf[4] = v24;
      *&buf[8] = 1024;
      *&buf[10] = a3;
      *&buf[14] = 1024;
      *&buf[16] = v40;
      *v43 = 1024;
      *&v43[2] = __n[0];
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Invalid newDeviceIdDataLength:%d, dataLength:%d, oldManufacturerDataLength:%d, newManufacturerDataLength:%d skipping setDeviceId", buf, 0x1Au);
    }
  }

LABEL_50:
  sub_1000088CC(v36);
  return v11;
}

BOOL sub_10054BE34(uint64_t a1, void *a2, _BYTE *a3)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 432);
  v6 = sub_10000C5E0(a1 + 496);
  v7 = sub_10004B788(a1 + 496, a2, v6);
  *a3 = v7;
  v8 = v7 != 0;
  sub_1000088CC(v10);
  return v8;
}

uint64_t sub_10054BEC0(uint64_t a1, _BYTE *a2)
{
  v21 = 0;
  v20 = 0;
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 432);
  if (!sub_10000C5E0(a1 + 496))
  {
LABEL_27:
    v13 = 0;
    goto LABEL_28;
  }

  v4 = sub_10000C5F8(a1 + 496);
  if (sub_10024AD40(v4, 255, &v20, &v21) || !v21 || !v20)
  {
    v11 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Could not get the EIR manufacturer data", __p, 2u);
    }

    goto LABEL_27;
  }

  if (*v21 && v21[1] != 76)
  {
    v14 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      sub_1000E5A58(a1, __p);
      v15 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Device %{public}s is not an Apple device", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_27;
  }

  v5 = 0;
  v6 = 1;
  if (*v21 != 76)
  {
    v6 = 2;
  }

  v7 = &v21[v6];
  v21 = v7;
  v8 = *v7;
  while (v8 == 1)
  {
    v9 = v5;
    do
    {
      v5 = v9;
      v10 = v7[v9];
      v9 = (v9 + 1);
    }

    while (v10);
    v8 = 0;
    if (v20 <= v5)
    {
      goto LABEL_27;
    }
  }

  if (v8 != 2)
  {
    goto LABEL_27;
  }

  if (v7[v5 + 1] < 3u)
  {
    goto LABEL_27;
  }

  v12 = &v7[(v5 + 2)];
  if (*v12 != 2)
  {
    goto LABEL_27;
  }

  *a2 = v12[1];
  v13 = 1;
LABEL_28:
  sub_1000088CC(v19);
  return v13;
}

void sub_10054C0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10054C108(uint64_t a1, char *a2, uint64_t a3)
{
  v27 = 0;
  v26 = 0;
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, a1 + 432);
  if (!sub_10000C5E0(a1 + 496))
  {
    v15 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      sub_1000E5A58(a1, __p);
      if (v24 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      *buf = 136446210;
      v29 = v16;
      v17 = "No EIR for device %{public}s";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, v17, buf, 0xCu);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

LABEL_34:
    v20 = 0;
    goto LABEL_35;
  }

  v6 = sub_10000C5F8(a1 + 496);
  if (sub_10024AD40(v6, 255, &v26, &v27) || !v27 || !v26)
  {
    v18 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Could not get the EIR manufacturer data", __p, 2u);
    }

    goto LABEL_34;
  }

  v7 = *v27;
  if (*v27 && v7 != 76 && v27[1] != 76)
  {
    v15 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      sub_1000E5A58(a1, __p);
      if (v24 >= 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = __p[0];
      }

      *buf = 136446210;
      v29 = v21;
      v17 = "Device %{public}s is not an Apple device";
      goto LABEL_21;
    }

    goto LABEL_34;
  }

  v8 = 0;
  v9 = v7 == 76;
  v10 = 1;
  if (!v9)
  {
    v10 = 2;
  }

  v11 = &v27[v10];
  v27 = v11;
  v12 = *v11;
  while (v12 == 1)
  {
    v13 = v8;
    do
    {
      v8 = v13;
      v14 = v11[v13];
      v13 = (v13 + 1);
    }

    while (v14);
    v12 = 0;
    if (v26 <= v8)
    {
      goto LABEL_34;
    }
  }

  if (v12 != 2)
  {
    goto LABEL_34;
  }

  v19 = v11[v8 + 1];
  if (v19 < 3 || v11[(v8 + 2)] != 2)
  {
    goto LABEL_34;
  }

  v20 = sub_100570558(&v11[(v8 + 4)], (v19 - 4), a2, a3);
LABEL_35:
  sub_1000088CC(v25);
  return v20;
}

void sub_10054C3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10054C3DC(uint64_t a1, void *a2, size_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v40[0] = 0;
  v40[1] = 0;
  sub_100007F88(v40, a1);
  if (!*(a1 + 608))
  {
    a5 = 0;
    goto LABEL_81;
  }

  v37 = 0;
  v38 = 0;
  v39 = 0;
  __p = 0;
  v35 = 0;
  v36 = 0;
  v33 = xmmword_1008A9EC0;
  v12 = sub_10053BFB4(a1, &v33, 0x200u, &__p);
  v13 = __p;
  if (!v12 || v35 - __p != 16)
  {
    goto LABEL_76;
  }

  if (*__p == 1)
  {
    v31 = *(__p + 2);
    if (__p != v35)
    {
      do
      {
        v32 = 0uLL;
        v32 = *v13;
        sub_10037D4F4(&v32);
        ++v13;
      }

      while (v13 != v35);
      v13 = __p;
    }

    v35 = v13;
    if (v31)
    {
      __s2 = a2;
      v14 = 0;
      if (a4)
      {
        v15 = a6 == 0;
      }

      else
      {
        v15 = 1;
      }

      v17 = !v15 && a5 != 0;
      v29 = v17;
      while (1)
      {
        v18 = v37;
        if (v37 != v38)
        {
          do
          {
            v32 = 0uLL;
            v32 = *v18;
            sub_10037D4F4(&v32);
            ++v18;
          }

          while (v18 != v38);
          v13 = __p;
          v38 = v37;
          if (__p != v35)
          {
            do
            {
              v32 = 0uLL;
              v32 = *v13;
              sub_10037D4F4(&v32);
              ++v13;
            }

            while (v13 != v35);
            v13 = __p;
          }
        }

        v35 = v13;
        if (!sub_10053BFB4(a1, &v33, 2 * v14 + 513, &v37) || (sub_10053BFB4(a1, &v33, 2 * v14 + 514, &__p) & 1) == 0)
        {
          goto LABEL_74;
        }

        v20 = v37;
        v19 = v38;
        if (v38 - v37 != 16)
        {
          break;
        }

        v13 = __p;
        v21 = v35;
        if (v35 - __p != 16)
        {
          break;
        }

        if (*v37 != 4 || *__p != 4)
        {
          if (v37 != v38)
          {
            do
            {
              v32 = 0uLL;
              v32 = *v20;
              sub_10037D4F4(&v32);
              ++v20;
            }

            while (v20 != v38);
            v20 = v37;
            v13 = __p;
            v21 = v35;
          }

          v38 = v20;
          if (v13 == v21)
          {
            goto LABEL_44;
          }

          do
          {
            v32 = 0uLL;
            v32 = *v13;
            sub_10037D4F4(&v32);
            ++v13;
          }

          while (v13 != v35);
          goto LABEL_43;
        }

        if (*(v37 + 1) != a3)
        {
          if (v37 != v38)
          {
            do
            {
              v32 = 0uLL;
              v32 = *v20;
              sub_10037D4F4(&v32);
              ++v20;
            }

            while (v20 != v38);
            v20 = v37;
            v13 = __p;
            v21 = v35;
          }

          v38 = v20;
          if (v13 == v21)
          {
            goto LABEL_44;
          }

          do
          {
            v32 = 0uLL;
            v32 = *v13;
            sub_10037D4F4(&v32);
            ++v13;
          }

          while (v13 != v35);
          goto LABEL_43;
        }

        v28 = *(__p + 1);
        v27 = *(__p + 1);
        if (memcmp(*(v37 + 1), __s2, a3))
        {
          if (v20 != v19)
          {
            do
            {
              v32 = 0uLL;
              v32 = *v20;
              sub_10037D4F4(&v32);
              ++v20;
            }

            while (v20 != v38);
            v20 = v37;
            v13 = __p;
            v21 = v35;
          }

          v38 = v20;
          if (v13 == v21)
          {
            goto LABEL_44;
          }

          do
          {
            v32 = 0uLL;
            v32 = *v13;
            sub_10037D4F4(&v32);
            ++v13;
          }

          while (v13 != v35);
          goto LABEL_43;
        }

        if (v29)
        {
          v23 = *a5;
          v24 = v28 + v23 + 2;
          if (v24 <= a6)
          {
            *(a4 + v23) = v28;
            v25 = (*a5 + 2);
            *a5 = v25;
            memcpy((a4 + v25), v27, v28);
            v24 = *a5 + v28;
          }
        }

        else
        {
          if (!a5)
          {
            if (v20 != v19)
            {
              do
              {
                v32 = *v20;
                sub_10037D4F4(&v32);
                ++v20;
              }

              while (v20 != v38);
              v20 = v37;
              v13 = __p;
              v21 = v35;
            }

            v38 = v20;
            if (v13 == v21)
            {
              a5 = 1;
              goto LABEL_77;
            }

            do
            {
              v32 = *v13;
              sub_10037D4F4(&v32);
              ++v13;
            }

            while (v13 != v35);
            a5 = 1;
            goto LABEL_75;
          }

          v24 = v28 + *a5 + 2;
        }

        *a5 = v24;
        if (v20 != v19)
        {
          do
          {
            v32 = 0uLL;
            v32 = *v20;
            sub_10037D4F4(&v32);
            ++v20;
          }

          while (v20 != v38);
          v20 = v37;
          v13 = __p;
          v21 = v35;
        }

        v38 = v20;
        if (v13 != v21)
        {
          do
          {
            v32 = 0uLL;
            v32 = *v13;
            sub_10037D4F4(&v32);
            ++v13;
          }

          while (v13 != v35);
LABEL_43:
          v13 = __p;
        }

LABEL_44:
        v35 = v13;
        if (++v14 == v31)
        {
          goto LABEL_82;
        }
      }

      if (v37 != v38)
      {
        do
        {
          v32 = 0uLL;
          v32 = *v20;
          sub_10037D4F4(&v32);
          ++v20;
        }

        while (v20 != v38);
        v20 = v37;
      }

      v38 = v20;
      v13 = __p;
      if (__p == v35)
      {
        goto LABEL_44;
      }

      do
      {
        v32 = 0uLL;
        v32 = *v13;
        sub_10037D4F4(&v32);
        ++v13;
      }

      while (v13 != v35);
      goto LABEL_43;
    }

LABEL_82:
    if (a5)
    {
      a5 = *a5 != 0;
    }

    goto LABEL_77;
  }

  if (__p != v35)
  {
    do
    {
      v32 = *v13;
      sub_10037D4F4(&v32);
      ++v13;
    }

    while (v13 != v35);
LABEL_74:
    a5 = 0;
LABEL_75:
    v13 = __p;
  }

  else
  {
LABEL_76:
    a5 = 0;
  }

LABEL_77:
  if (v13)
  {
    v35 = v13;
    operator delete(v13);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

LABEL_81:
  sub_1000088CC(v40);
  return a5;
}

void sub_10054C97C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  sub_1000088CC(v23 - 96);
  _Unwind_Resume(a1);
}

void sub_10054C9F4(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = *a2;
  if ((v6 - 6) < 2)
  {
    if (*(a2 + 1))
    {
      v9 = 0;
      do
      {
        sub_10054C9F4(a1, (*(a2 + 1) + 16 * v9++), a3);
      }

      while (*(a2 + 1) > v9);
    }
  }

  else if (v6 == 3)
  {
    v10 = xmmword_1008A9ED0;
    if (sub_10037E730(a2, &v10))
    {
      *(a1 + 584) = 1;
    }
  }

  else if (v6 == 1 && *(a1 + 584) == 1)
  {
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a2 + 2);
      LODWORD(v10) = 67109376;
      DWORD1(v10) = v8;
      WORD4(v10) = 1024;
      *(&v10 + 10) = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating RFCOMM channel from %d -> %d ", &v10, 0xEu);
    }

    *(a1 + 584) = 0;
    *(a2 + 2) = a3;
  }
}

uint64_t sub_10054CB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1);
  v6 = *(a1 + 592);
  if (v6 != (a1 + 600))
  {
    while (!sub_10037E730(v6[4], a2))
    {
      v7 = v6[1];
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
        do
        {
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v6 = v8;
      if (v8 == (a1 + 600))
      {
        goto LABEL_20;
      }
    }

    v17 = 0;
    v18[0] = 0;
    v18[1] = 0;
    sub_10041F568(&v17, (v6 + 5));
    v10 = v18[0];
    if (v18[0])
    {
      v11 = v18;
      v12 = v18[0];
      do
      {
        v13 = *(v12 + 32);
        v14 = v13 >= 4;
        v15 = v13 < 4;
        if (v14)
        {
          v11 = v12;
        }

        v12 = *(v12 + 8 * v15);
      }

      while (v12);
      if (v11 != v18 && *(v11 + 8) <= 4u)
      {
        sub_10054C9F4(a1, v11 + 40, a3);
        v10 = v18[0];
      }
    }

    sub_10000CEDC(&v17, v10);
  }

LABEL_20:
  *(a1 + 584) = 0;
  sub_1000088CC(v19);
  return 0;
}