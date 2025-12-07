void sub_10078F6F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_10078F7A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v8) = 138543362;
    *(&v8 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DIS for device %{public}@", &v8, 0xCu);
  }

  v8 = 0uLL;
  sub_100007F88(&v8, a1 + 96);
  v5 = sub_10004B1D8(a1, v3);
  if (v5)
  {
    v6 = v5[42];
  }

  else
  {
    v6 = 0;
  }

  sub_1000088CC(&v8);

  return v6;
}

void sub_10078F8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078F8D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 138412546;
    *&v9[4] = v5;
    *&v9[12] = 2112;
    *&v9[14] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DIS for device %@ DIS UDI: %@", v9, 0x16u);
  }

  *v9 = 0;
  *&v9[8] = 0;
  sub_100007F88(v9, a1 + 96);
  v8 = sub_10004B1D8(a1, v5);
  if (v8)
  {
    objc_storeStrong(v8 + 43, a3);
  }

  sub_1000088CC(v9);
}

void sub_10078F9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078FA14(uint64_t a1, void *a2, int a3, int a4)
{
  v7 = a2;
  v8 = &word_100BC7B7A;
  v9 = 5;
  do
  {
    if (*(v8 - 1) == a3 && *v8 == a4)
    {
      sub_100007E30(__p, "LEPhyDenylist");
      v10 = sub_10004EB40(a1, v7, __p);
      v11 = v10;
      if (v16 < 0)
      {
        operator delete(__p[0]);
        if (v11)
        {
          goto LABEL_12;
        }
      }

      else if (v10)
      {
        goto LABEL_12;
      }

      sub_100007E30(v13, "LEPhyDenylist");
      sub_10078787C(a1, v7, v13);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }

      v12 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v18 = a3;
        v19 = 1024;
        v20 = a4;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "LEPhyDenylist: set tag for VID = 0x%04x, PID = 0x%04x", buf, 0xEu);
      }
    }

LABEL_12:
    v8 += 16;
    --v9;
  }

  while (v9);
}

void sub_10078FBA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_10078FBE8(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_100007E30(__p, "LEPhyDenylist");
  v4 = sub_10004EB40(a1, v3, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_10078FC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10078FC7C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    sub_1000D4E98(v6);
  }

  else
  {
    sub_100007E30(a3, "");
  }

  sub_1000088CC(v7);
}

uint64_t sub_10078FD20(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 355);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_10078FD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078FDAC(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 355) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078FE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078FE38(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 356);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_10078FEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078FEC4(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 356) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078FF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078FF50(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 354);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_10078FFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078FFDC(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 354) = a3;
  }

  sub_1000088CC(v7);
}

void sub_100790048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100790068(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 358) = a3;
  }

  sub_1000088CC(v7);
}

void sub_1007900D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_1007900F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 358);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5 & 1;
}

void sub_100790160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100790180(uint64_t a1, void *a2, char a3, int a4)
{
  v7 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 96);
  v8 = sub_10004B1D8(a1, v7);
  if (v8)
  {
    *(v8 + 386) = a3;
    *(v8 + 97) = a4;
  }

  sub_1000088CC(v9);
}

void sub_1007901F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100790214(uint64_t a1, void *a2, _BYTE *a3, _DWORD *a4)
{
  v7 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 96);
  v8 = sub_10004B1D8(a1, v7);
  if (v8)
  {
    *a3 = *(v8 + 386);
    *a4 = *(v8 + 97);
  }

  sub_1000088CC(v9);
}

void sub_100790290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

double sub_1007902B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = v4[50];
  }

  else
  {
    v5 = 0.0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100790324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100790344(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = a2;
  if (sub_100790420(a1, v5))
  {
    sub_1000AFD60(a1, v5, 2u, a3);
  }

  else
  {
    v6 = sub_100046458(a1, v5, 0);
    sub_100799588(a3, &v6, 1);
  }
}

BOOL sub_100790420(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = [*(a1 + 176) objectForKey:v3];
  if (v4)
  {
    v5 = sub_1000AF748(v4);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

id sub_1007904B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 96);
  v4 = [*(a1 + 176) objectForKey:v3];
  if (v4 && (v5 = v4[8]) != 0)
  {
    v6 = v5;
    v7 = [v5 userIdentifier];
  }

  else
  {
    v7 = 0;
  }

  sub_1000088CC(v9);

  return v7;
}

void sub_100790550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

id sub_10079057C(uint64_t a1, void *a2)
{
  v3 = a2;
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 96);
  v14 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 288);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = *([*(a1 + 176) objectForKey:v8] + 8);
        v10 = v9;
        if (v9)
        {
          v11 = [v9 groupIdentifier];
          v12 = [v11 isEqual:v3];

          if (v12)
          {
            [v14 addObject:v8];
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v5);
  }

  sub_1000088CC(v19);

  return v14;
}

void sub_100790714(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

id sub_100790774(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 96);
  v4 = [*(a1 + 176) objectForKey:v3];
  if (v4 && (v5 = v4[8]) != 0)
  {
    v6 = v5;
    v7 = [v5 groupIdentifier];
  }

  else
  {
    v7 = 0;
  }

  sub_1000088CC(v9);

  return v7;
}

void sub_100790814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

id sub_100790840(uint64_t a1, void *a2)
{
  v3 = sub_100790774(a1, a2);
  if (v3)
  {
    v4 = sub_10079057C(a1, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1007908B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 96);
  v4 = [*(a1 + 176) objectForKey:v3];
  if (v4 && (v5 = v4[8]) != 0)
  {
    v6 = v5;
    v7 = [v5 partIdentifier];
  }

  else
  {
    v7 = 0;
  }

  sub_1000088CC(v9);

  return v7;
}

void sub_100790940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

id sub_10079096C(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 96);
  v4 = [*(a1 + 176) objectForKey:v3];
  if (v4 && (v5 = v4[8]) != 0)
  {
    v6 = v5;
    v7 = [v5 managedByFindMy];
  }

  else
  {
    v7 = 0;
  }

  sub_1000088CC(v9);

  return v7;
}

void sub_1007909F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100790A24(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 96);
  v4 = [*(a1 + 176) objectForKey:v3];
  if (v4)
  {
    sub_1007791B4(v4);
  }

  sub_1000088CC(v5);
}

void sub_100790AA4()
{
  if (qword_100B508F0 != -1)
  {
    sub_1000DAE38();
  }

  v33 = 0;
  __dst = 0;
  v35 = 0;
  sub_10056D908(off_100B508E8, 8212, &v33);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  if (qword_100B508F0 != -1)
  {
    sub_100873EAC();
  }

  sub_10056D908(off_100B508E8, 8228, &v30);
  sub_10057EB60(&v33, __dst, v30, v31, (v31 - v30) >> 3);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  if (qword_100B508F0 != -1)
  {
    sub_100873EAC();
  }

  sub_10056D908(off_100B508E8, 8219, &v27);
  sub_10057EB60(&v33, __dst, v27, v28, (v28 - v27) >> 3);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (qword_100B508F0 != -1)
  {
    sub_100873EAC();
  }

  sub_10056D908(off_100B508E8, 8224, &v24);
  sub_10057EB60(&v33, __dst, v24, v25, (v25 - v24) >> 3);
  v0 = qword_100BCE900;
  v1 = os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT);
  if (v1)
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = (__dst - v33) >> 3;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "parseCurrentAACPInfo devices:%lu", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v42 = 0x4812000000;
  v43 = sub_1000424A8;
  v44 = sub_1000426B0;
  v45 = "";
  v47[0] = 0;
  v47[1] = 0;
  v46 = v47;
  v4 = v33;
  v3 = __dst;
  if (v33 != __dst)
  {
    do
    {
      v5 = *v4;
      v1 = sub_1000E2140(*v4, 3u);
      if ((v1 & 1) == 0)
      {
        break;
      }

      memset(&__p, 0, sizeof(__p));
      v1 = sub_1000E2D2C(v5, 3u, &v37);
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        size = v37.__r_.__value_.__l.__size_;
        operator delete(v37.__r_.__value_.__l.__data_);
        if (size >= 2)
        {
LABEL_17:
          sub_1000E2D2C(v5, 3u, &v37);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v37;
          memset(&__str, 0, sizeof(__str));
          v7 = sub_1000E2D2C(v5, 8u, &v37);
          if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
          {
            v9 = v37.__r_.__value_.__l.__size_;
            operator delete(v37.__r_.__value_.__l.__data_);
            if (v9 < 2)
            {
              goto LABEL_47;
            }
          }

          else if (HIBYTE(v37.__r_.__value_.__r.__words[2]) <= 1u)
          {
LABEL_47:
            v18 = sub_100017F4C(v7, v8);
            v21[0] = _NSConcreteStackBlock;
            v21[1] = 3221225472;
            v21[2] = sub_100791144;
            v21[3] = &unk_100ADF8F8;
            v21[4] = v5;
            sub_10000CA94(v18, v21);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            goto LABEL_49;
          }

          v7 = sub_1000E2D2C(v5, 8u, &v37);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          __str = v37;
          v10 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
          if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v10 = __str.__r_.__value_.__l.__size_;
          }

          if (!v10)
          {
            v7 = sub_1000E2D2C(v5, 9u, &v37);
            if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v11 = SHIBYTE(v37.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v11 = v37.__r_.__value_.__l.__size_;
            }

            if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
            {
              operator delete(v37.__r_.__value_.__l.__data_);
            }

            if (v11 >= 2)
            {
              v7 = sub_1000E2D2C(v5, 9u, &v37);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              __str = v37;
            }
          }

          v12 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          v13 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v12 = __str.__r_.__value_.__l.__size_;
          }

          if (v12)
          {
            v14 = qword_100BCE900;
            if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
            {
              p_str = __str.__r_.__value_.__r.__words[0];
              if (v13 >= 0)
              {
                p_str = &__str;
              }

              p_p = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              LODWORD(v37.__r_.__value_.__l.__data_) = 141558787;
              *(v37.__r_.__value_.__r.__words + 4) = 1752392040;
              WORD2(v37.__r_.__value_.__r.__words[1]) = 2081;
              *(&v37.__r_.__value_.__r.__words[1] + 6) = p_str;
              HIWORD(v37.__r_.__value_.__r.__words[2]) = 2160;
              v38 = 1752392040;
              v39 = 2081;
              v40 = p_p;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "otherSN:%{private, mask.hash}s caseSN:%{private, mask.hash}s", &v37, 0x2Au);
            }

            v37.__r_.__value_.__r.__words[0] = &__p;
            v17 = sub_1007996BC((*(&buf + 1) + 48), &__p.__r_.__value_.__l.__data_, &unk_1008A9BD0, &v37, &v36);
            v7 = std::string::operator=((v17 + 7), &__str);
          }

          goto LABEL_47;
        }
      }

      else if (HIBYTE(v37.__r_.__value_.__r.__words[2]) > 1u)
      {
        goto LABEL_17;
      }

LABEL_49:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v4;
    }

    while (v4 != v3);
  }

  v19 = sub_100007EE8(v1, v2);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10079119C;
  v20[3] = &unk_100AE1120;
  v20[4] = &buf;
  sub_10000CA94(v19, v20);
  _Block_object_dispose(&buf, 8);
  sub_100799608(&v46, v47[0]);
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

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v33)
  {
    __dst = v33;
    operator delete(v33);
  }
}

void sub_100791068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Block_object_dispose((v45 - 192), 8);
  sub_100799608(v44 + 48, *(v45 - 136));
  if (a34)
  {
    operator delete(a34);
  }

  if (a37)
  {
    operator delete(a37);
  }

  if (a40)
  {
    operator delete(a40);
  }

  if (a43)
  {
    operator delete(a43);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100791144(uint64_t a1)
{
  if (qword_100B508F0 != -1)
  {
    sub_1000DAE38();
  }

  v2 = off_100B508E8;
  v3 = *(a1 + 32);

  return sub_10056B15C(v2, v3, 15);
}

void sub_10079119C(uint64_t a1, __n128 a2)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2[8])
  {
    v3 = v2[6];
    v4 = v2 + 7;
    if (v3 != v2 + 7)
    {
      a2.n128_u64[0] = 141559043;
      v17 = a2;
      do
      {
        v28[0] = 0;
        v28[1] = 0;
        if (qword_100B51078 != -1)
        {
          sub_1008733BC();
        }

        v5 = v3 + 7;
        v6 = off_100B51070;
        if (*(v3 + 79) < 0)
        {
          v5 = *v5;
        }

        v7 = [NSString stringWithUTF8String:v5, *&v17];
        v8 = sub_1000AFB14(v6, v7, v28);

        if (v8)
        {
          v9 = v3 + 4;
          v10 = qword_100BCE900;
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
          {
            v11 = v3 + 4;
            if (*(v3 + 55) < 0)
            {
              v11 = *v9;
            }

            *buf = v17.n128_u32[0];
            v19 = 1752392040;
            v20 = 2081;
            v21 = v11;
            v22 = 2160;
            v23 = 1752392040;
            v24 = 1041;
            v25 = 16;
            v26 = 2097;
            v27 = v28;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Setting %{private, mask.hash}s encryption key to %{private, mask.hash}.16P", buf, 0x30u);
          }

          if (qword_100B51078 != -1)
          {
            sub_1008733BC();
          }

          v12 = off_100B51070;
          if (*(v3 + 55) < 0)
          {
            v9 = *v9;
          }

          v13 = [NSString stringWithUTF8String:v9];
          sub_1007B0C38(v12, v13, v28);
        }

        v14 = v3[1];
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
            v15 = v3[2];
            v16 = *v15 == v3;
            v3 = v15;
          }

          while (!v16);
        }

        v3 = v15;
      }

      while (v15 != v4);
    }
  }
}

uint64_t sub_1007913E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    goto LABEL_24;
  }

  v4 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Checking if device %{public}@ is Apple Device", buf, 0xCu);
  }

  *buf = 0uLL;
  sub_100007F88(buf, a1 + 96);
  v5 = sub_10004B1D8(a1, v3);
  if (!v5)
  {
LABEL_23:
    sub_1000088CC(buf);
LABEL_24:
    v15 = 0;
    goto LABEL_25;
  }

  v6 = v5[42];
  v7 = v6;
  if (v6 && [v6 length] >= 5)
  {
    v8 = v7;
    v9 = [v7 bytes];
    v10 = *v9;
    v11 = *(v9 + 1);
    if (v10 == 2 && v11 == 1452)
    {
      goto LABEL_20;
    }

    if (v10 == 1 && v11 == 76)
    {
      goto LABEL_20;
    }
  }

  if (qword_100B508D0 != -1)
  {
    sub_10087303C();
  }

  v12 = off_100B508C8;
  sub_100007E30(__p, "IsAppleWatch");
  if (sub_10004EB40(v12, v3, __p))
  {
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_20;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10087303C();
  }

  v13 = sub_100788ED8(off_100B508C8, v3);
  v14 = v13;
  if (v18 < 0)
  {
    operator delete(__p[0]);
    if (v14)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  if ((v13 & 1) == 0)
  {
LABEL_22:

    goto LABEL_23;
  }

LABEL_20:

  sub_1000088CC(buf);
  v15 = 1;
LABEL_25:

  return v15;
}

void sub_1007915DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_1000088CC(&a16);

  _Unwind_Resume(a1);
}

uint64_t sub_10079162C(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_100873ED4();
  }

  v2 = sub_100029630(off_100B508A8);
  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, a1 + 96);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = *v20;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        sub_100007E30(v17, "A1603");
        if (sub_10004EB40(a1, v7, v17))
        {
          v8 = 1;
        }

        else
        {
          sub_100007E30(v15, "A2051");
          if (sub_10004EB40(a1, v7, v15))
          {
            v8 = 1;
          }

          else
          {
            sub_100007E30(v13, "A3085");
            if (sub_10004EB40(a1, v7, v13))
            {
              v8 = 1;
            }

            else
            {
              sub_100007E30(__p, "A2538");
              v8 = sub_10004EB40(a1, v7, __p);
              if (v12 < 0)
              {
                operator delete(__p[0]);
              }
            }

            if (v14 < 0)
            {
              operator delete(v13[0]);
            }
          }

          if (v16 < 0)
          {
            operator delete(v15[0]);
          }
        }

        if (v18 < 0)
        {
          operator delete(v17[0]);
        }

        if (v8)
        {
          v9 = 1;
          goto LABEL_27;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_27:

  sub_1000088CC(v23);
  return v9;
}

void sub_10079187C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  sub_1000088CC(&a43);

  _Unwind_Resume(a1);
}

uint64_t sub_100791918(uint64_t a1, void *a2, int a3, void *a4, int a5)
{
  v9 = a2;
  v10 = a4;
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 96);
  v11 = sub_10004B1D8(a1, v9);
  if (v11)
  {
    v12 = sub_100779F0C(v11, a3, v10, a5);
  }

  else
  {
    v12 = 8;
  }

  sub_1000088CC(v14);

  return v12;
}

NSMutableArray *sub_1007919F0(uint64_t a1, int a2)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 96);
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(a1 + 176);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (*([*(a1 + 176) objectForKey:{v9, v11}] + 133) == a2)
        {
          [v4 addObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  sub_1000088CC(v15);

  return v4;
}

void sub_100791B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100791B88(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 133);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100791BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100791C14(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    v7 = sub_10077AF88(v6, a3);
  }

  else
  {
    v7 = 8;
  }

  sub_1000088CC(v9);

  return v7;
}

void sub_100791CB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 96);
  v7 = sub_10004B1D8(a1, v5);
  if (v7)
  {
    objc_storeStrong(v7 + 25, a3);
  }

  sub_1000088CC(v8);
}

void sub_100791D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100791D58(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = sub_10077B344(v4);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100791DE8(uint64_t a1, void *a2, _WORD *a3, char a4)
{
  v7 = a2;
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 96);
  v8 = sub_10004B1D8(a1, v7);
  v9 = v8;
  if (v8)
  {
    sub_10077B704(v8, a4);
    sub_10077B8BC(v9, 0);
    v10 = a3[40];
    if ((v10 & 8) != 0)
    {
      v19 = 0;
      v20 = 0;
      sub_10000C704(&v19, a3 + 14, 0x10uLL);
      if (sub_10000C5E0(&v19))
      {
        v11 = sub_10000C5F8(&v19);
        v12 = [NSData dataWithBytes:v11 length:sub_10000C5E0(&v19)];
        sub_10077B8BC(v9, v12);
      }

      v19 = &off_100AE0A78;
      if (v20)
      {
        sub_10000C808(v20);
      }

      v10 = a3[40];
    }

    if ((v10 & 0x80) != 0)
    {
      v19 = 0;
      v20 = 0;
      sub_10000C704(&v19, a3 + 36, 7uLL);
      if (sub_10000C5E0(&v19))
      {
        v13 = *(sub_10000C5F8(&v19) + 1);
        v14 = *(sub_10000C5F8(&v19) + 2);
        v15 = *(sub_10000C5F8(&v19) + 3);
        v16 = *(sub_10000C5F8(&v19) + 4);
        v17 = *(sub_10000C5F8(&v19) + 5);
        v18 = *(sub_10000C5F8(&v19) + 6);
        v9[3] = (v13 << 40) | (v14 << 32) | (v15 << 24) | (v16 << 16) | (v17 << 8) | v18 | (*sub_10000C5F8(&v19) << 48);
      }

      v19 = &off_100AE0A78;
      if (v20)
      {
        sub_10000C808(v20);
      }
    }

    else
    {
      v9[3] = 0;
    }
  }

  sub_1000088CC(v21);
}

void sub_100791FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, atomic_uint *a5, ...)
{
  va_start(va, a5);

  if (a5)
  {
    sub_10000C808(a5);
  }

  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

BOOL sub_100792058(uint64_t a1, void *a2, char a3, char a4, __int16 a5, __int16 a6, __int16 a7, char a8, char a9, char a10)
{
  v17 = a2;
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 96);
  v18 = sub_10004B1D8(a1, v17);
  if (v18)
  {
    *(v18 + 566) = a3;
    *(v18 + 567) = a4;
    *(v18 + 284) = a5;
    *(v18 + 285) = a6;
    *(v18 + 286) = a7;
    *(v18 + 574) = a8;
    *(v18 + 575) = a9;
    *(v18 + 576) = a10;
  }

  v19 = v18 != 0;
  sub_1000088CC(v21);

  return v19;
}

void sub_100792118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

BOOL sub_100792138(uint64_t a1, void *a2, _BYTE *a3, _BYTE *a4, _WORD *a5, _WORD *a6, _WORD *a7, _BYTE *a8, _BYTE *a9, _BYTE *a10)
{
  v17 = a2;
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 96);
  v18 = sub_10004B1D8(a1, v17);
  if (v18)
  {
    v19 = sub_100792218(v18, a3, a4, a5, a6, a7, a8, a9, a10);
  }

  else
  {
    v19 = 0;
  }

  sub_1000088CC(v21);

  return v19;
}

void sub_1007921F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

BOOL sub_100792218(uint64_t a1, _BYTE *a2, _BYTE *a3, _WORD *a4, _WORD *a5, _WORD *a6, _BYTE *a7, _BYTE *a8, _BYTE *a9)
{
  v9 = *(a1 + 566) != 0;
  if (*(a1 + 566))
  {
    *a2 = *(a1 + 566);
  }

  if (*(a1 + 567))
  {
    *a3 = *(a1 + 567);
    v9 = 1;
  }

  if (*(a1 + 568))
  {
    *a4 = *(a1 + 568);
    v9 = 1;
  }

  if (*(a1 + 570))
  {
    *a5 = *(a1 + 570);
    v9 = 1;
  }

  if (*(a1 + 572))
  {
    *a6 = *(a1 + 572);
    v9 = 1;
  }

  if (*(a1 + 574))
  {
    *a7 = *(a1 + 574);
    v9 = 1;
  }

  if (*(a1 + 575))
  {
    *a8 = *(a1 + 575);
    v9 = 1;
  }

  if (*(a1 + 576))
  {
    *a9 = *(a1 + 576);
    return 1;
  }

  return v9;
}

uint64_t sub_1007922A8(uint64_t a1, int a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 96);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = *(a1 + 176);
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = Current - (60 * a2);
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(a1 + 176) objectForKey:{*(*(&v15 + 1) + 8 * i), v15}];
        v12 = v11[50];
        v13 = v12 <= 0.0 || v12 < v8;
        if (!v13 || !a2 || (v11[20] & 1) != 0)
        {
          ++v6;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v7);
  }

  sub_1000088CC(v19);
  return v6;
}

void sub_100792408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

const char *sub_100792434(int a1)
{
  if (a1 <= 2703)
  {
    if (a1 > 2700)
    {
      if (a1 == 2701)
      {
        return "BT_ERROR_NAME_IS_UUID";
      }

      if (a1 == 2702)
      {
        return "BT_ERROR_NAME_IS_BDADDR";
      }

      return "BT_ERROR_NAME_START_OR_END_INVALID";
    }

    if (!a1)
    {
      return "BT_SUCCESS";
    }

    if (a1 == 2700)
    {
      return "BT_ERROR_NAME_EMPTY";
    }

    return "Unknown";
  }

  if (a1 > 2705)
  {
    switch(a1)
    {
      case 2706:
        return "BT_ERROR_NAME_LEXICON_TOO_MANY_INVALID_WORDS";
      case 2707:
        return "BT_ERROR_NAME_LEXICON_NO_VALID_WORD";
      case 2708:
        return "BT_ERROR_NAME_LEXICON_CAPITALIZED_WORDS";
    }

    return "Unknown";
  }

  if (a1 == 2704)
  {
    return "BT_ERROR_NAME_FAILED_TO_TOKENIZE";
  }

  else
  {
    return "BT_ERROR_NAME_LEXICON_FOUND_UNWANTED_WORDS";
  }
}

const char *sub_10079251C(int a1)
{
  if (a1 <= 2703)
  {
    if (a1 > 2700)
    {
      if (a1 == 2701)
      {
        return "NameIsUUID";
      }

      if (a1 == 2702)
      {
        return "NameIsBDADDR";
      }

      return "StartOrEndInvalid";
    }

    if (!a1)
    {
      return "Success";
    }

    if (a1 == 2700)
    {
      return "NameEmpty";
    }

    return "Unknown";
  }

  if (a1 > 2705)
  {
    switch(a1)
    {
      case 2706:
        return "LexiconTooManyInvalidWords";
      case 2707:
        return "LexiconNoValidWords";
      case 2708:
        return "LexiconCapitalizedWords";
    }

    return "Unknown";
  }

  if (a1 == 2704)
  {
    return "FailedToTokenize";
  }

  else
  {
    return "LexiconFailedToTokenize";
  }
}

uint64_t sub_100792604(void *a1, void *a2, int a3, uint64_t a4, unsigned __int16 *a5, _WORD *a6, _BYTE *a7, unsigned __int16 *a8, uint64_t a9)
{
  v13 = a2;
  if ([v13 length])
  {
    v14 = a1[42];
    if (!v14)
    {
      v15 = +[NSMutableCharacterSet whitespaceAndNewlineCharacterSet];
      v16 = a1[42];
      a1[42] = v15;

      v17 = a1[42];
      v18 = +[NSCharacterSet punctuationCharacterSet];
      [v17 formUnionWithCharacterSet:v18];

      v19 = a1[42];
      v20 = +[NSCharacterSet symbolCharacterSet];
      [v19 formUnionWithCharacterSet:v20];

      v14 = a1[42];
    }

    v21 = [v13 componentsSeparatedByCharactersInSet:v14];
    v22 = [NSSet setWithArray:v21];

    v23 = [v22 count];
    *a8 = v23;
    if (v23)
    {
      v24 = +[NSLocale currentLocale];
      v25 = [v24 localeIdentifier];

      v26 = [(__CFString *)v25 hasPrefix:@"en"];
      if (v26)
      {
        v27 = v25;
      }

      else
      {
        v27 = @"en";
      }

      v28 = v27;
      v29 = v28;
      if (!a1[43] && (a3 & 1) == 0)
      {
        v28 = sub_1007928E8(v28, v28);
        a1[43] = v28;
      }

      if (!(v26 & 1 | ((a3 & 1) == 0)) && !a1[44])
      {
        a1[44] = sub_1007928E8(v28, v25);
      }

      v30 = 43;
      if (a3)
      {
        v30 = 44;
      }

      v31 = a1[v30];
      if (v31)
      {
        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = sub_100792A0C;
        v37[3] = &unk_100B0C7F8;
        v37[4] = a6;
        v37[5] = v31;
        v37[6] = a4;
        v37[7] = a9;
        v37[8] = a7;
        v37[9] = a5;
        [v22 enumerateObjectsUsingBlock:v37];
        if (*a7)
        {
          v32 = 2705;
        }

        else if (*a5 == *a8)
        {
          if (*a6)
          {
            v32 = 2708;
          }

          else
          {
            v32 = 2707;
          }
        }

        else
        {
          v32 = 0;
        }
      }

      else
      {
        v32 = 2704;
      }
    }

    else
    {
      v32 = 2704;
    }
  }

  else
  {
    v32 = 2700;
  }

  return v32;
}

uint64_t sub_1007928E8(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = kLXLexiconLocaleKey;
  v6[1] = kLXLexiconEnumerateCachedOnlyOTAPaths;
  v7[0] = v2;
  v7[1] = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = LXLexiconCreate();

  return v4;
}

void sub_100792A0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  if ([v3 rangeOfString:@"(?:^[A-Z][a-z]{3 options:{}$)", 1024}] != 0x7FFFFFFFFFFFFFFFLL)
  {
    ++**(a1 + 32);
  }

  v4 = v3;
  LXLexiconEnumerateEntriesForString();
  if ((v6[3] & 1) == 0)
  {
    ++**(a1 + 72);
  }

  _Block_object_dispose(&v5, 8);
}

void sub_100792B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  _Block_object_dispose((v15 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_100792B5C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = LXEntryCopyString();
  **(a1 + 48) = LXEntryGetMetaFlags();
  if ([v5 caseInsensitiveCompare:*(a1 + 32)] && !**(a1 + 48))
  {
    std::string::assign(*(a1 + 56), [*(a1 + 32) UTF8String]);
  }

  else
  {
    if ((LXEntryGetMetaFlags() & 0x3800000) != 0)
    {
      std::string::assign(*(a1 + 56), [*(a1 + 32) UTF8String]);
      **(a1 + 64) = 1;
      *a3 = 1;
    }

    if ((LXEntryGetMetaFlags() & 0x86) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

uint64_t sub_100792C6C(void *a1, void *a2, int a3)
{
  v5 = a2;
  if ([v5 length])
  {
    if ([v5 rangeOfString:@"(?:[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12})" options:1024] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v5 rangeOfString:@"(?:[0-9A-Fa-f]{2}_|-){5}[0-9A-Fa-f]{2}" options:1024] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = [NSCharacterSet characterSetWithCharactersInString:@"_.-"];
        v7 = [v5 rangeOfCharacterFromSet:v6];
        if (v7 && v7 != [v5 length] - 1)
        {
          v8 = 0;
        }

        else
        {
          v8 = 2703;
        }
      }

      else
      {
        v8 = 2702;
      }
    }

    else
    {
      v8 = 2701;
    }
  }

  else
  {
    v8 = 2700;
  }

  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v32[0] = 0;
  v32[1] = 0;
  v33 = 0;
  sub_100007E30(v32, "");
  v9 = [NSRegularExpression regularExpressionWithPattern:@"([a-z])([A-Z0-9])" options:0 error:0];
  v10 = [v9 stringByReplacingMatchesInString:v5 options:0 range:0 withTemplate:{objc_msgSend(v5, "length"), @"$1 $2"}];
  if (!v8)
  {
    v8 = sub_100792604(a1, v10, 0, &v37, &v36, &v34, &v35, &v34 + 1, v32);
    if (v8)
    {
      if (a1[44])
      {
        v8 = sub_100792604(a1, v10, 1, &v37, &v36, &v34, &v35, &v34 + 1, v32);
      }
    }
  }

  v11 = sub_10000E92C();
  if ((*(*v11 + 160))(v11))
  {
    if (a3)
    {
      if (v8 == 2700)
      {
        goto LABEL_37;
      }

      v12 = qword_100BCE900;
      if (!os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      v13 = v5;
      v14 = [v5 UTF8String];
      v15 = v37;
      sub_100793198(v37);
      v16 = sub_100792434(v8);
      if (v31 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      v18 = v32;
      if (v33 < 0)
      {
        v18 = v32[0];
      }

      *buf = 136317699;
      v39 = v14;
      v40 = 2112;
      *v41 = v10;
      *&v41[8] = 1024;
      *&v41[10] = v8;
      v42 = 2080;
      *v43 = v16;
      *&v43[8] = 1024;
      *&v43[10] = v15;
      v44 = 2080;
      *v45 = v17;
      *&v45[8] = 1024;
      *v46 = v36;
      *&v46[4] = 1024;
      *v47 = v34;
      *&v47[4] = 1024;
      *v48 = v35;
      *&v48[4] = 1024;
      *&v48[6] = HIWORD(v34);
      v49 = 2081;
      v50 = v18;
      v19 = "statedump: isDeviceNameValidForDisplay deviceName:%s newDeviceName:%@ result:%d(%s) flags:%d(%s) lexiconNonMatches:%d capitalizedCount:%d unwantedWord:%d tokenCount:%d outToken:%{private}s";
      v20 = v12;
      v21 = 88;
    }

    else
    {
      if (!v8)
      {
        goto LABEL_37;
      }

      if (v8 == 2700)
      {
        goto LABEL_37;
      }

      v22 = qword_100BCE900;
      if (!os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      v23 = v5;
      v24 = [v5 UTF8String];
      v25 = v37;
      sub_100793198(v37);
      v26 = sub_100792434(v8);
      if (v31 >= 0)
      {
        v27 = __p;
      }

      else
      {
        v27 = __p[0];
      }

      v28 = v32;
      if (v33 < 0)
      {
        v28 = v32[0];
      }

      *buf = 136317443;
      v39 = v24;
      v40 = 1024;
      *v41 = v8;
      *&v41[4] = 2080;
      *&v41[6] = v26;
      v42 = 1024;
      *v43 = v25;
      *&v43[4] = 2080;
      *&v43[6] = v27;
      v44 = 1024;
      *v45 = v36;
      *&v45[4] = 1024;
      *&v45[6] = v34;
      *v46 = 1024;
      *&v46[2] = v35;
      *v47 = 1024;
      *&v47[2] = HIWORD(v34);
      *v48 = 2081;
      *&v48[2] = v28;
      v19 = "Warning: isDeviceNameValidForDisplay name:%s result:%d(%s) flags:%d(%s) lexiconNonMatches:%d capitalizedCount:%d unwantedWord:%d tokenCount:%d outToken:%{private}s";
      v20 = v22;
      v21 = 78;
    }

    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_37:

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
  }

  return v8;
}

void sub_100793124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100793198(int a1)
{
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *__p = 0u;
  v6 = 0u;
  v3 = 0u;
  memset(v4, 0, sizeof(v4));
  sub_100008760(&v3);
  sub_100007774(&v3, "[LXMetaFlags:", 13);
  if (a1)
  {
    sub_100007774(&v3, "HasTitleCase ", 13);
  }

  if ((a1 & 2) != 0)
  {
    sub_100007774(&v3, "NoSuggest ", 10);
  }

  if ((a1 & 4) != 0)
  {
    sub_100007774(&v3, "NoPredictUntilLearned ", 22);
  }

  if ((a1 & 8) != 0)
  {
    sub_100007774(&v3, "PreferredFormForSortKey ", 24);
  }

  if ((a1 & 0x20) != 0)
  {
    sub_100007774(&v3, "CannotBeCapitalized ", 20);
  }

  if ((a1 & 0x40) != 0)
  {
    sub_100007774(&v3, "PreventShiftAfterPeriod ", 24);
  }

  if ((a1 & 0x80) != 0)
  {
    sub_100007774(&v3, "NoSuggestUntilLearned ", 22);
  }

  if ((a1 & 0x200000) != 0)
  {
    sub_100007774(&v3, "HasCustomCapitalization ", 24);
  }

  if ((a1 & 0x400000) != 0)
  {
    sub_100007774(&v3, "FormInsertion ", 14);
  }

  if ((a1 & 0x800000) != 0)
  {
    sub_100007774(&v3, "Vulgar ", 7);
  }

  if ((a1 & 0x1000000) != 0)
  {
    sub_100007774(&v3, "Offensive ", 10);
  }

  if ((a1 & 0x2000000) != 0)
  {
    sub_100007774(&v3, "Sensitive ", 10);
  }

  if ((a1 & 0x4000000) != 0)
  {
    sub_100007774(&v3, "Recent ", 7);
  }

  if ((a1 & 0x8000000) != 0)
  {
    sub_100007774(&v3, "Transient ", 10);
  }

  if ((a1 & 0x10000000) != 0)
  {
    sub_100007774(&v3, "Probationary ", 13);
  }

  if ((a1 & 0x20000000) != 0)
  {
    sub_100007774(&v3, "ContainsEmoji ", 14);
  }

  sub_100007774(&v3, "]", 1);
  std::stringbuf::str();
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v4);
  std::ostream::~ostream();
  return std::ios::~ios();
}

__CFString *sub_1007934C0(uint64_t a1, unsigned int a2, int a3)
{
  v3 = &stru_100B0F9E0;
  if (a2)
  {
    v6 = @"BT_GLOBAL_TCC_CENTER_LABEL_ONE_DEVICE";
    if (a3)
    {
      v6 = &stru_100B0F9E0;
    }

    v7 = v6;
    if (a2 <= 0x32)
    {
      if (a2 == 1)
      {
        v8 = @"%d device found";
LABEL_12:
        v11 = sub_100438B14(v7, v8);
        if (a2 >= 0x32)
        {
          v12 = 50;
        }

        else
        {
          v12 = a2;
        }

        v15 = 0;
        v3 = [NSString stringWithValidatedFormat:v11 validFormatSpecifiers:@"%d" error:&v15, v12];
        v13 = v15;

        goto LABEL_16;
      }

      v8 = @"%d devices found";
      v9 = @"BT_GLOBAL_TCC_CENTER_LABEL_MULTI_DEVICES";
    }

    else
    {
      v8 = @"More than %d devices found";
      v9 = @"BT_GLOBAL_TCC_CENTER_LABEL_MULTI_DEVICES_CAPPED";
    }

    if (a3)
    {
      v9 = &stru_100B0F9E0;
    }

    v10 = v9;

    v7 = v10;
    goto LABEL_12;
  }

LABEL_16:

  return v3;
}

double sub_10079360C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v24 = v5;
  if ([v5 containsObject:v6])
  {
    v7 = v6;
    *a3 = v6;
    v8 = 1.5;
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v9)
    {
      v10 = *v27;
      v8 = 0.0;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          for (j = 1; ; ++j)
          {
            v14 = [v12 length];
            v15 = [v6 length];
            v16 = v15 >= v14 ? v14 : v15;
            if (j >= v16)
            {
              break;
            }

            v17 = [v12 substringWithRange:{0, j}];
            v18 = [v6 substringWithRange:{0, j}];
            v19 = [v17 isEqualToString:v18];

            if ((v19 & 1) == 0)
            {
              break;
            }

            v20 = [v6 length];
            v21 = j / v20 + j / [v12 length];
            if (a3 && v21 > v8)
            {
              v22 = v12;
              *a3 = v12;
            }

            if (v21 >= v8)
            {
              v8 = v21;
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v9);
    }

    else
    {
      v8 = 0.0;
    }
  }

  return v8;
}

void sub_1007938A0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = 0;
  v22 = 0;
  sub_1000D42DC(&v23, &v22);
  Current = CFAbsoluteTimeGetCurrent();
  v5 = *(a1 + 140);
  if (v5)
  {
    v6 = v23 - v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = Current - v6;
  if (!v6)
  {
    v7 = 0.0;
  }

  if (!*(a1 + 164))
  {
    Current = v7;
  }

  if (*(a1 + 400) >= Current)
  {
    v8 = *(a1 + 400);
  }

  else
  {
    v8 = Current;
  }

  v9 = *(a1 + 584);
  v10 = *(a1 + 592);
  v11 = -127;
  if (v9 != v10)
  {
    do
    {
      v13 = *v9++;
      v12 = v13;
      if (v11 <= v13)
      {
        v11 = v12;
      }
    }

    while (v9 != v10);
    if (!v11)
    {
      v11 = *(a1 + 476);
    }
  }

  if ((*(a1 + 231) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 216))
    {
      goto LABEL_19;
    }
  }

  else if (*(a1 + 231))
  {
LABEL_19:
    v14 = 1;
    goto LABEL_26;
  }

  sub_100007E30(__p, "HasTS");
  v14 = a1 + 184 != sub_1000463C8(a1 + 176, __p) || (*(a1 + 608) & 1) != 0 || *(a1 + 64) != 0;
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_26:
  if (*(a1 + 127) < 0)
  {
    sub_100008904(v18, *(a1 + 104), *(a1 + 112));
  }

  else
  {
    *v18 = *(a1 + 104);
    v19 = *(a1 + 120);
  }

  v15 = *(a1 + 128);
  *a2 = v8;
  v16 = (a2 + 8);
  if (SHIBYTE(v19) < 0)
  {
    sub_100008904(v16, v18[0], v18[1]);
    v17 = SHIBYTE(v19);
    *(a2 + 32) = v11;
    *(a2 + 36) = v15;
    *(a2 + 40) = v14;
    if (v17 < 0)
    {
      operator delete(v18[0]);
    }
  }

  else
  {
    *v16 = *v18;
    *(a2 + 24) = v19;
    *(a2 + 32) = v11;
    *(a2 + 36) = v15;
    *(a2 + 40) = v14;
  }
}

void sub_100793A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

NSMutableArray *sub_100793A90(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v151 = objc_opt_new();
  if (_os_feature_enabled_impl())
  {
    Current = CFAbsoluteTimeGetCurrent();
    v153 = objc_opt_new();
    v4 = 0;
    v156[0] = 0;
    v156[1] = 0;
    v155 = v156;
    v5 = 0uLL;
    memset(v207, 0, sizeof(v207));
    v205 = 0u;
    memset(v206, 0, sizeof(v206));
    do
    {
      *&v6 = &v206[v4 - 1];
      *(&v6 + 1) = &v206[v4] + 8;
      v7 = v6;
      vst3q_f64(v6, *(&v5 - 2));
      v4 += 3;
    }

    while (v4 != 6);
    v148 = objc_opt_new();
    for (i = 2700; i != 2709; ++i)
    {
      LODWORD(buf[0].__locale_) = i;
      __p[0] = buf;
      *(sub_100375190(&v155, buf, &unk_1008A9BD0, __p) + 16) = 0;
    }

    v9 = *(a2 + 8);
    if (v9 != a2)
    {
      v147 = 0;
      v10 = 0.0;
      v11 = 0.0;
      while (1)
      {
        if (*(v9 + 47) < 0)
        {
          sub_100008904(__p, *(v9 + 24), *(v9 + 32));
        }

        else
        {
          *__p = *(v9 + 24);
          __p[2] = *(v9 + 40);
        }

        if (SHIBYTE(__p[2]) >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        v13 = [NSString stringWithUTF8String:v12];
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        LODWORD(v193[0]) = sub_100792C6C(a1, v13, 1);
        __p[0] = v193;
        v14 = sub_100375190(&v155, v193, &unk_1008A9BD0, __p);
        ++*(v14 + 16);
        if (LODWORD(v193[0]) != 2700)
        {
          v15 = HIDWORD(v147);
          if (*(v9 + 52) == 1)
          {
            v15 = HIDWORD(v147) + 1;
          }

          HIDWORD(v147) = v15;
        }

        v16 = *(v9 + 16);
        if (v16 > 0.0)
        {
          v17 = Current - v16;
          v18 = v11 < v17 || v11 == 0.0;
          if (v18)
          {
            v11 = v17;
          }

          if (v10 == 0.0)
          {
            v10 = v17;
          }

          else if (v17 < v10)
          {
            v10 = v17;
          }
        }

        if ((LODWORD(v193[0]) - 2707) < 2 || !LODWORD(v193[0]))
        {
          v154 = 0;
          v19 = sub_10079360C(v148, v13, &v154);
          v20 = v154;
          v21 = v19;
          if (v21 >= 1.5)
          {
            v23 = qword_100BCE900;
            if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
            {
              sub_10079577C(v9 + 16);
              locale = buf;
              if (SHIBYTE(buf[2].__locale_) < 0)
              {
                locale = buf[0].__locale_;
              }

              LODWORD(__p[0]) = 136381443;
              *(__p + 4) = locale;
              WORD2(__p[1]) = 2048;
              *(&__p[1] + 6) = v21;
              HIWORD(__p[2]) = 2048;
              __p[3] = 0x3FF8000000000000;
              LOWORD(v178) = 2113;
              *(&v178 + 2) = v20;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "_retrieveRecentDevicesInfo nameSimilarToReportedName %{private}s similarity %f > %f already reported as %{private}@", __p, 0x2Au);
              if (SHIBYTE(buf[2].__locale_) < 0)
              {
                operator delete(buf[0].__locale_);
              }
            }

            LOWORD(v147) = v147 + 1;
          }

          else
          {
            [v148 addObject:v13];
            if (*(v9 + 56))
            {
              v22 = &v205;
LABEL_35:
              sub_100799900(v22, 0, 0, v9 + 16);
            }

            v25 = v193[0];
            v22 = v206 + 8;
            if (!LODWORD(v193[0]))
            {
              goto LABEL_35;
            }

            v22 = &v207[1] + 8;
            if (LODWORD(v193[0]) == 2707)
            {
              goto LABEL_35;
            }

            v22 = v207;
            if (LODWORD(v193[0]) == 2708)
            {
              goto LABEL_35;
            }

            v26 = qword_100BCE900;
            if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
            {
              LODWORD(__p[0]) = 67109120;
              HIDWORD(__p[0]) = v25;
              _os_log_fault_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "_retrieveRecentDevicesInfo invalid code path sanityCheckResult:%d", __p, 8u);
            }
          }
        }

        v9 = *(v9 + 8);
        if (v9 == a2)
        {
          goto LABEL_51;
        }
      }
    }

    v147 = 0;
    v11 = 0.0;
    v10 = 0.0;
LABEL_51:
    v27 = sub_10000E92C();
    if ((*(*v27 + 160))(v27))
    {
      for (j = 0; j != 4; ++j)
      {
        v29 = &v206[-1] + 24 * j;
        for (k = *(v29 + 1); k != v29; k = *(k + 8))
        {
          v31 = qword_100BCE900;
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
          {
            v32 = "Unknown";
            if (j <= 4)
            {
              v32 = off_100B0C9E0[j];
            }

            sub_10079577C(k + 16);
            if (SHIBYTE(__p[2]) >= 0)
            {
              v33 = __p;
            }

            else
            {
              v33 = __p[0];
            }

            LODWORD(buf[0].__locale_) = 136315394;
            *(&buf[0].__locale_ + 4) = v32;
            WORD2(buf[1].__locale_) = 2080;
            *(&buf[1].__locale_ + 6) = v33;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "_retrieveRecentDevicesInfo deviceBucket[%s]:%s", buf, 0x16u);
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }
    }

    v34 = 0;
    v35 = 0;
    v204 = 0;
    v203 = 0;
    v193[0] = 0x200000000;
    v195 = 0u;
    v196 = 0u;
    v197 = 0u;
    *&v193[1] = Current;
    *&v193[2] = Current + -1800.0;
    v194 = 1;
    WORD2(v194) = *(a1 + 382);
    *&v195 = Current;
    *(&v195 + 1) = Current + -1800.0;
    LODWORD(v196) = 2;
    WORD2(v196) = WORD2(v194);
    *(&v196 + 1) = Current;
    *&v197 = Current + -1800.0;
    DWORD2(v197) = 3;
    WORD6(v197) = WORD2(v194);
    v198 = Current;
    v199 = Current + -1800.0;
    v201 = 0;
    v200 = 4;
    v36 = v193;
    v202 = 0;
    do
    {
      v37 = &v206[-1] + 24 * v34;
      v38 = *(v37 + 1);
      if (v38 != v37)
      {
        v152 = *(v36 + 2);
        do
        {
          v39 = *(v38 + 16);
          if (v39 > 0.0)
          {
            v40 = v36[2];
            if (v40 != 0.0)
            {
              v41 = v36[1];
              if (v39 <= v41 && v39 >= v40 && v41 != 0.0)
              {
                ++*(&v203 + v34);
                if (*(a1 + 382) > [v151 count])
                {
                  v43 = *(&v204 + v34);
                  if (v43 < v152)
                  {
                    *(&v204 + v34) = v43 + 1;
                    v44 = objc_opt_new();
                    if (*(v38 + 47) < 0)
                    {
                      sub_100008904(__p, *(v38 + 24), *(v38 + 32));
                    }

                    else
                    {
                      *__p = *(v38 + 24);
                      __p[2] = *(v38 + 40);
                    }

                    if (SHIBYTE(__p[2]) >= 0)
                    {
                      v45 = __p;
                    }

                    else
                    {
                      v45 = __p[0];
                    }

                    v46 = [NSString stringWithUTF8String:v45];
                    [v44 setObject:v46 forKeyedSubscript:@"mapLabelCalloutTitleKey"];

                    if (SHIBYTE(__p[2]) < 0)
                    {
                      operator delete(__p[0]);
                    }

                    v47 = *(v38 + 48);
                    if (v47 - 129 > 0xFFFFFF93)
                    {
                      v48 = 25;
                    }

                    else if (v47 <= -65)
                    {
                      if (v47 <= 0xB4)
                      {
                        v48 = 25;
                      }

                      else
                      {
                        v48 = 50;
                      }
                    }

                    else
                    {
                      v48 = 100;
                    }

                    v49 = [NSString stringWithFormat:@"%d", v48];
                    [v44 setObject:v49 forKeyedSubscript:@"mapLabelCalloutPercentageValue"];

                    v50 = [NSString stringWithFormat:@"%d", *(v38 + 48)];
                    [v44 setObject:v50 forKeyedSubscript:@"rssiValue"];

                    v51 = "Unknown";
                    if (v34 < 5)
                    {
                      v51 = off_100B0C9E0[v34];
                    }

                    v52 = [NSString stringWithUTF8String:v51];
                    [v44 setObject:v52 forKeyedSubscript:@"bucketName"];

                    if (v39 > 0.0)
                    {
                      v53 = [NSString stringWithFormat:@"%f", (Current - v39) / 60.0];
                      [v44 setObject:v53 forKeyedSubscript:@"seenMinutesAgo"];
                    }

                    [v151 addObject:v44];
                  }
                }
              }
            }
          }

          v38 = *(v38 + 8);
        }

        while (v38 != v37);
      }

      v36 = &v193[3 * ++v35];
      v34 = *v36;
    }

    while (v34 != 4);
    if ([v151 count] > *(a1 + 382) && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
    {
      [v151 count];
      sub_100873F68();
    }

    [v153 setObject:&off_100B33C18 forKeyedSubscript:@"DeviceAgeThresholdMinutes"];
    v54 = &xpc_dictionary_set_uint64_ptr;
    v55 = [NSNumber numberWithInt:a3];
    [v153 setObject:v55 forKeyedSubscript:@"MetricSourceTrigger"];

    v56 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v151 count]);
    [v153 setObject:v56 forKeyedSubscript:@"TotalReported"];

    v57 = [NSNumber numberWithUnsignedLong:*(a2 + 16)];
    [v153 setObject:v57 forKeyedSubscript:@"DiscoveredDevices"];

    v58 = [NSNumber numberWithInt:*(a1 + 160)];
    [v153 setObject:v58 forKeyedSubscript:@"DBSize"];

    v59 = [NSNumber numberWithUnsignedShort:v204];
    [v153 setObject:v59 forKeyedSubscript:@"ReportedMyAppleDevicesCount"];

    v60 = [NSNumber numberWithUnsignedShort:WORD1(v204)];
    [v153 setObject:v60 forKeyedSubscript:@"ReportedOtherSanitizedLexicalCount"];

    v61 = [NSNumber numberWithUnsignedShort:WORD2(v204)];
    [v153 setObject:v61 forKeyedSubscript:@"ReportedOtherSanitizedCapitalizedCount"];

    v62 = [NSNumber numberWithUnsignedShort:HIWORD(v204)];
    [v153 setObject:v62 forKeyedSubscript:@"ReportedOtherSanitizedCount"];

    if (qword_100B50910 != -1)
    {
      sub_10087336C();
    }

    v63 = [NSNumber numberWithUnsignedInt:*(off_100B50908 + 128)];
    [v153 setObject:v63 forKeyedSubscript:@"ActiveScansCount"];

    v64 = [NSNumber numberWithUnsignedInt:*(a1 + 376)];
    [v153 setObject:v64 forKeyedSubscript:@"ActiveScansForNameSearchCount"];

    v65 = [NSNumber numberWithUnsignedShort:0];
    [v153 setObject:v65 forKeyedSubscript:@"ScanRSPNamesCount"];

    v66 = [NSNumber numberWithUnsignedShort:WORD2(v147)];
    [v153 setObject:v66 forKeyedSubscript:@"ADVNameCount"];

    v67 = [NSNumber numberWithDouble:v11];
    [v153 setObject:v67 forKeyedSubscript:@"OldestDeviceAgeSeconds"];

    v68 = [NSNumber numberWithDouble:v10];
    [v153 setObject:v68 forKeyedSubscript:@"NewestDeviceAgeSeconds"];

    v69 = [NSNumber numberWithUnsignedShort:v147];
    [v153 setObject:v69 forKeyedSubscript:@"DupNameDropCount"];

    v70 = [NSNumber numberWithUnsignedLong:*(a1 + 280)];
    [v153 setObject:v70 forKeyedSubscript:@"CachedEvictedCount"];

    [v153 setObject:&off_100B33C30 forKeyedSubscript:@"CachedEvictedMaxCount"];
    v192 = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v186 = 0u;
    v187 = 0u;
    v184 = 0u;
    v185 = 0u;
    v182 = 0u;
    v183 = 0u;
    *v180 = 0u;
    v181 = 0u;
    v178 = 0u;
    v179 = 0u;
    memset(__p, 0, sizeof(__p));
    sub_100008760(__p);
    v71 = 15;
    do
    {
      for (m = 0; m != 4; ++m)
      {
        v73 = "Unknown";
        if (m <= 4)
        {
          v73 = off_100B0C9E0[m];
        }

        v74 = [NSString stringWithFormat:@"Bucket%dMin%s", v71, v73];
        v75 = &v206[-1] + 24 * m;
        v76 = *(v75 + 1);
        if (v76 == v75)
        {
          v77 = 0;
        }

        else
        {
          v77 = 0;
          do
          {
            v78 = *(v76 + 16);
            v79 = v78 >= 0.0;
            if (Current < v78)
            {
              v79 = 0;
            }

            if (Current - v78 > (60 * v71))
            {
              v79 = 0;
            }

            v77 += v79;
            v76 = *(v76 + 8);
          }

          while (v76 != v75);
        }

        v80 = [v54[469] numberWithUnsignedShort:v77];
        [v153 setObject:v80 forKeyedSubscript:v74];

        v81 = sub_10000E92C();
        if ((*(*v81 + 160))(v81))
        {
          v82 = std::ostream::operator<<();
          v83 = sub_100007774(v82, "m", 1);
          v84 = v54;
          v85 = "Unknown";
          if (m <= 4)
          {
            v85 = off_100B0C9E0[m];
          }

          v86 = strlen(v85);
          v87 = sub_100007774(v83, v85, v86);
          v54 = v84;
          sub_100007774(v87, ":", 1);
          v88 = std::ostream::operator<<();
          sub_100007774(v88, " ", 1);
        }
      }

      v89 = v71 >= 0x2E;
      v71 = (v71 + 15);
    }

    while (!v89);
    v90 = v155;
    if (v155 != v156)
    {
      do
      {
        v91 = *(v90 + 28);
        v92 = [NSString stringWithFormat:@"NameError%s", sub_10079251C(v91)];
        v93 = [v54[469] numberWithUnsignedShort:WORD2(v91)];
        [v153 setObject:v93 forKeyedSubscript:v92];

        v94 = v90[1];
        if (v94)
        {
          do
          {
            v95 = v94;
            v94 = *v94;
          }

          while (v94);
        }

        else
        {
          do
          {
            v95 = v90[2];
            v18 = *v95 == v90;
            v90 = v95;
          }

          while (!v18);
        }

        v90 = v95;
      }

      while (v95 != v156);
    }

    v96 = sub_10000E92C();
    v97 = (*(*v96 + 160))(v96);
    if (v97)
    {
      if (qword_100B50910 != -1)
      {
        sub_10087336C();
      }

      v176 = 0;
      v174 = 0u;
      v175 = 0u;
      v172 = 0u;
      v173 = 0u;
      v170 = 0u;
      v171 = 0u;
      v168 = 0u;
      v169 = 0u;
      v166 = 0u;
      v167 = 0u;
      *v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      memset(buf, 0, sizeof(buf));
      sub_100008760(buf);
      [v151 count];
      [v151 count];
      v99 = std::ostream::operator<<();
      sub_100007774(v99, "/", 1);
      v100 = std::ostream::operator<<();
      v101 = sub_100007774(v100, "(", 1);
      v102 = *v101;
      *(v101 + *(*v101 - 24) + 24) = 5;
      *(v101 + *(v102 - 24) + 16) = 3;
      v103 = std::ostream::operator<<();
      sub_100007774(v103, "%) dbUtilization:", 17);
      v104 = std::ostream::operator<<();
      sub_100007774(v104, "/", 1);
      v105 = std::ostream::operator<<();
      v106 = sub_100007774(v105, "(", 1);
      v107 = *v106;
      *(v106 + *(*v106 - 24) + 24) = 5;
      *(v106 + *(v107 - 24) + 16) = 3;
      v108 = std::ostream::operator<<();
      sub_100007774(v108, "%)", 2);
      v109 = 0;
      v110 = v206;
      do
      {
        v111 = sub_100007774(buf, " ", 1);
        v112 = "Unknown";
        if (v109 <= 4)
        {
          v112 = off_100B0C9E0[v109];
        }

        v113 = strlen(v112);
        v114 = sub_100007774(v111, v112, v113);
        sub_100007774(v114, ":", 1);
        v115 = std::ostream::operator<<();
        sub_100007774(v115, "/", 1);
        v116 = std::ostream::operator<<();
        sub_100007774(v116, "/", 1);
        std::ostream::operator<<();
        ++v109;
        v110 = (v110 + 24);
      }

      while (v109 != 4);
      sub_100007774(buf, " oldestAge", 10);
      if (v11 <= 60.0)
      {
        sub_100007774(buf, "Seconds:", 8);
      }

      else if (v11 <= 3600.0)
      {
        sub_100007774(buf, "Minutes:", 8);
      }

      else
      {
        sub_100007774(buf, "Hours:", 6);
      }

      std::ostream::operator<<();
      sub_100007774(buf, " newestAge", 10);
      if (v10 <= 60.0)
      {
        sub_100007774(buf, "Seconds:", 8);
      }

      else if (v10 <= 3600.0)
      {
        sub_100007774(buf, "Minutes:", 8);
      }

      else
      {
        sub_100007774(buf, "Hours:", 6);
      }

      std::ostream::operator<<();
      sub_100007774(buf, " dupNameCount:", 14);
      std::ostream::operator<<();
      sub_100007774(buf, " evictedCacheSize:", 18);
      v117 = std::ostream::operator<<();
      sub_100007774(v117, "/", 1);
      std::ostream::operator<<();
      sub_100007774(buf, " activeScans:", 13);
      v118 = std::ostream::operator<<();
      sub_100007774(v118, " nameSearchActiveScans:", 23);
      std::ostream::operator<<();
      sub_100007774(buf, " scanRspNames:", 14);
      v119 = std::ostream::operator<<();
      sub_100007774(v119, "/", 1);
      v120 = std::ostream::operator<<();
      v121 = sub_100007774(v120, "(", 1);
      v122 = *v121;
      *(v121 + *(*v121 - 24) + 24) = 5;
      *(v121 + *(v122 - 24) + 16) = 3;
      v123 = std::ostream::operator<<();
      sub_100007774(v123, "%) ", 3);
      sub_100007774(buf, " advIndNames:", 13);
      v124 = std::ostream::operator<<();
      sub_100007774(v124, "/", 1);
      v125 = std::ostream::operator<<();
      v126 = sub_100007774(v125, "(", 1);
      v127 = *v126;
      *(v126 + *(*v126 - 24) + 24) = 5;
      *(v126 + *(v127 - 24) + 16) = 3;
      v128 = std::ostream::operator<<();
      sub_100007774(v128, "%) ", 3);
      sub_100007774(buf, " errors: ", 9);
      v129 = v155;
      if (v155 != v156)
      {
        do
        {
          v130 = sub_100792434(*(v129 + 7));
          v131 = v130;
          v132 = strlen(v130);
          v133 = sub_100007774(buf, v131, v132);
          sub_100007774(v133, ":", 1);
          v134 = std::ostream::operator<<();
          v135 = sub_100007774(v134, "(", 1);
          v136 = *v135;
          *(v135 + *(*v135 - 24) + 24) = 5;
          *(v135 + *(v136 - 24) + 16) = 3;
          v137 = std::ostream::operator<<();
          sub_100007774(v137, "%) ", 3);
          v138 = v129[1];
          if (v138)
          {
            do
            {
              v139 = v138;
              v138 = *v138;
            }

            while (v138);
          }

          else
          {
            do
            {
              v139 = v129[2];
              v18 = *v139 == v129;
              v129 = v139;
            }

            while (!v18);
          }

          v129 = v139;
        }

        while (v139 != v156);
      }

      v140 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        std::stringbuf::str();
        if (v158 >= 0)
        {
          v141 = v157;
        }

        else
        {
          v141 = *v157;
        }

        *v159 = 136315138;
        v160 = v141;
        _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "statedump: _retrieveRecentDevicesInfo stats reported: %s", v159, 0xCu);
        if (v158 < 0)
        {
          operator delete(*v157);
        }

        v140 = qword_100BCE900;
      }

      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
      {
        std::stringbuf::str();
        if (v158 >= 0)
        {
          v142 = v157;
        }

        else
        {
          v142 = *v157;
        }

        *v159 = 136315138;
        v160 = v142;
        _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "statedump: _retrieveRecentDevicesInfo time buckets: %s", v159, 0xCu);
        if (v158 < 0)
        {
          operator delete(*v157);
        }

        v140 = qword_100BCE900;
      }

      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
      {
        *v157 = 138477827;
        *&v157[4] = v151;
        _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "statedump: _retrieveRecentDevicesInfo return dict: %{private}@", v157, 0xCu);
      }

      if (SHIBYTE(v165) < 0)
      {
        operator delete(v164[1]);
      }

      std::locale::~locale(&buf[2]);
      std::ostream::~ostream();
      v97 = std::ios::~ios();
    }

    v143 = sub_10000F034(v97, v98);
    (*(*v143 + 736))(v143, v153);
    if (SHIBYTE(v181) < 0)
    {
      operator delete(v180[1]);
    }

    std::locale::~locale(&__p[2]);
    std::ostream::~ostream();
    std::ios::~ios();

    for (n = 72; n != -24; n -= 24)
    {
      sub_100798814((&v206[-1] + n));
    }

    sub_10000CEDC(&v155, v156[0]);
  }

  return v151;
}

void sub_100795510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1003B8618(&a37);
  sub_1003B8618(&__p);

  for (i = 72; i != -24; i -= 24)
  {
    sub_100798814((v65 - 256 + i));
  }

  sub_10000CEDC(&a28, a29);

  _Unwind_Resume(a1);
}

uint64_t sub_10079577C(uint64_t a1)
{
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  *__p = 0u;
  v21 = 0u;
  v18 = 0u;
  memset(v19, 0, sizeof(v19));
  sub_100008760(&v18);
  sub_100007774(&v18, "CachedLeDeviceEntry:", 20);
  v2 = *(a1 + 36);
  if (v2 <= 2)
  {
    if (v2 == 1)
    {
      v3 = "Adv,";
      goto LABEL_10;
    }

    if (v2 == 2)
    {
      v3 = "GAP,";
LABEL_10:
      v4 = &v18;
      v5 = 4;
      goto LABEL_12;
    }

LABEL_8:
    v4 = sub_100007774(&v18, ", ", 2);
    v3 = "Unknown,";
    v5 = 8;
    goto LABEL_12;
  }

  if (v2 != 3)
  {
    if (v2 == 4)
    {
      v3 = "FindMy,";
      v4 = &v18;
      v5 = 7;
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v3 = "User,";
  v4 = &v18;
  v5 = 5;
LABEL_12:
  sub_100007774(v4, v3, v5);
  v6 = *(a1 + 31);
  if (v6 >= 0)
  {
    LODWORD(v7) = a1 + 8;
  }

  else
  {
    v7 = *(a1 + 8);
  }

  if (v6 >= 0)
  {
    LODWORD(v8) = *(a1 + 31);
  }

  else
  {
    v8 = *(a1 + 16);
  }

  v9 = sub_100007774(&v18, v7, v8);
  sub_100007774(v9, " RSSI:", 6);
  std::ostream::operator<<();
  v10 = sub_100007774(&v18, " MyAppleDevice:", 15);
  if (*(a1 + 40))
  {
    v11 = "YES";
  }

  else
  {
    v11 = "NO";
  }

  if (*(a1 + 40))
  {
    v12 = 3;
  }

  else
  {
    v12 = 2;
  }

  sub_100007774(v10, v11, v12);
  sub_100007774(&v18, " LastSeen:", 10);
  if (*a1 <= 0.0)
  {
    sub_100007774(&v18, "Never", 5);
    goto LABEL_33;
  }

  v13 = CFAbsoluteTimeGetCurrent() - *a1;
  if (v13 <= 60.0)
  {
    v14 = std::ostream::operator<<();
    v15 = " seconds";
LABEL_31:
    v16 = 8;
    goto LABEL_32;
  }

  if (v13 <= 3600.0)
  {
    v14 = std::ostream::operator<<();
    v15 = " minutes";
    goto LABEL_31;
  }

  v14 = std::ostream::operator<<();
  v15 = " hours";
  v16 = 6;
LABEL_32:
  sub_100007774(v14, v15, v16);
LABEL_33:
  std::stringbuf::str();
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v19);
  std::ostream::~ostream();
  return std::ios::~ios();
}

NSArray *sub_100795AEC(void *a1, unsigned int a2)
{
  v4 = objc_opt_new();
  if (_os_feature_enabled_impl())
  {
    v15[0] = 0;
    v15[1] = 0;
    sub_100007F88(v15, (a1 + 12));
    v14[0] = v14;
    v14[1] = v14;
    v14[2] = 0;
    v5 = a1[27];
    if (v5 != a1 + 26)
    {
      v6 = a1[22];
      v7 = sub_10004DF60((v5 + 16));
      v8 = [v6 objectForKey:v7];

      sub_1007938A0(v8, &v13);
      operator new();
    }

    v9 = a1[34];
    if (v9 != a1 + 33)
    {
      sub_100799900(v14, 0, 0, (v9 + 2));
    }

    sub_1007999A8(v12, v14);
    v10 = sub_100793A90(a1, v12, a2);

    sub_100798814(v12);
    sub_100798814(v14);
    sub_1000088CC(v15);
    v4 = v10;
  }

  return v4;
}

void sub_100795CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_100798814(&a9);
  sub_100798814(&a21);
  sub_1000088CC(&a24);

  _Unwind_Resume(a1);
}

void sub_100795D54(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 360) == a2)
  {
    v14 = v5;
    v15 = v6;
    v11 = sub_100007EE8(a1, a2);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100795E00;
    v12[3] = &unk_100AF6B90;
    v13 = a3;
    v12[4] = a1;
    v12[5] = a4;
    v12[6] = a5;
    sub_10000CA94(v11, v12);
  }
}

void sub_100795E00(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 60 * arc4random_uniform(0xCu) + 720;
  *(v2 + 380) = v3;
  v4 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v11[0] = 67109888;
    v11[1] = v5;
    v12 = 2048;
    v13 = v6;
    v14 = 2048;
    v15 = v7;
    v16 = 1024;
    v17 = v3 / 0x3Cu;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[BTGlobalTCCNames] LeDeviceManager::leScanComplete result:%d totalRXTimeMS:%llu BtMCRxTimeMS%llu nextScan in %d hours", v11, 0x22u);
  }

  if (qword_100B50B88 != -1)
  {
    sub_1008734C0();
  }

  v8 = qword_100B50B80;
  v9 = sub_100011794(*(v2 + 360));
  v10 = sub_100079604(v8, v9);
  *(v2 + 360) = 0;
  if (v10)
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_100873FC4();
    }
  }
}

uint64_t sub_100795F74(uint64_t a1)
{
  if (qword_100B50910 != -1)
  {
    sub_1008734AC();
  }

  v2 = *(off_100B50908 + 63);
  if (v2 == 0.0)
  {
    v3 = 9999;
  }

  else
  {
    v3 = ((CFAbsoluteTimeGetCurrent() - v2) / 60.0);
  }

  v4 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 383);
    v6 = *(a1 + 329);
    v7 = *(a1 + 384);
    v8 = *(a1 + 385);
    v9 = *(a1 + 376);
    v11[0] = 67110400;
    v11[1] = v5;
    v12 = 1024;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 1024;
    v19 = v9;
    v20 = 1024;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[BTGlobalTCCNames] LeDeviceManager::checkForBTTCCNamesCache fScreenState:%d fStackStarted:%d fDeviceFirstUnlocked:%d fDeviceLocked:%d fNameSearchActiveScanCounter:%d LastActiveScanTime:%d minutes ago", v11, 0x26u);
  }

  return 0;
}

uint64_t sub_1007960B8(uint64_t a1)
{
  v2 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[BTGlobalTCCNames] LeDeviceManager::startNameScan", __p, 2u);
  }

  if (*(a1 + 360))
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_100874044();
    }

    return 12;
  }

  v10 = 0;
  if (qword_100B50B88 != -1)
  {
    sub_1008734C0();
  }

  v3 = qword_100B50B80;
  sub_100007E30(__p, [*(a1 + 368) UTF8String]);
  v4 = sub_100044414(v3, __p, &v10, 1);
  v5 = v4;
  if (v9 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
LABEL_10:
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        sub_1008740B4();
      }

      return 12;
    }
  }

  else if (v4)
  {
    goto LABEL_10;
  }

  if (qword_100B50B88 != -1)
  {
    sub_1008734C0();
  }

  v7 = sub_1000117DC(qword_100B50B80, v10);
  *(a1 + 360) = v7;
  if (!v7)
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_1008740F0();
    }

    return 12;
  }

  if (*(a1 + 329) == 1)
  {
    operator new();
  }

  return 0;
}

uint64_t sub_100796320(uint64_t a1)
{
  v2 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[BTGlobalTCCNames] LeDeviceManager::stopNameScan", v7, 2u);
  }

  if (*(a1 + 360))
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_100874044();
    }

    return 12;
  }

  else
  {
    if (*(a1 + 329) == 1)
    {
      if (qword_100B51078 != -1)
      {
        sub_1008733BC();
      }

      if (sub_100023EC0(off_100B51070, *(a1 + 360), 1, 1, 0) && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        sub_10087412C();
      }
    }

    if (qword_100B50B88 != -1)
    {
      sub_1008734C0();
    }

    v4 = qword_100B50B80;
    v5 = sub_100011794(*(a1 + 360));
    v3 = sub_100079604(v4, v5);
    if (v3 && os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
    {
      sub_10087419C();
    }

    *(a1 + 360) = 0;
  }

  return v3;
}

uint64_t sub_1007964A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v150[0] = 0;
  v150[1] = 0;
  sub_100007F88(v150, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  *v248 = 0u;
  v249 = 0u;
  *v246 = 0u;
  memset(v247, 0, sizeof(v247));
  memset(v245, 0, sizeof(v245));
  v243 = 0u;
  *v244 = 0u;
  *v241 = 0u;
  v242 = 0u;
  memset(v240, 0, sizeof(v240));
  v238 = 0u;
  *__p = 0u;
  v236 = 0u;
  v237 = 0u;
  data = 0u;
  v235 = 0u;
  *&__dst[3] = 0;
  *__dst = 0;
  v146 = 0;
  v147 = 0;
  v148 = 0;
  *v232 = xmmword_1008A4D28;
  LODWORD(v233) = 0;
  sub_10000D03C(buf, v232);
  sub_10000CDB8(&v146, buf);
  v232[1] = 0;
  v232[0] = 0;
  v233 = 0;
  *v230 = xmmword_1008A4D3C;
  v231 = 0;
  sub_10000D03C(buf, v230);
  sub_10000CDB8(v232, buf);
  if (*(v4 + 357) == 1)
  {
    v5 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Identification - metric has already been updated", buf, 2u);
    }

    v6 = 3;
    goto LABEL_240;
  }

  if (qword_100B50900 != -1)
  {
    sub_10087420C();
  }

  if (sub_10070BFF0(qword_100B508F8, v3, &v146, 1, 0, 0))
  {
    BYTE3(data) = 1;
  }

  else
  {
    if (qword_100B50900 != -1)
    {
      sub_10087420C();
    }

    if (!sub_10070BFF0(qword_100B508F8, v3, v232, 1, 0, 0))
    {
      v22 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Identification - le metric only send for HIDs and GHSS, returning", buf, 2u);
      }

      v6 = 1;
      goto LABEL_240;
    }

    BYTE8(v249) = 1;
  }

  if (*(v4 + 359))
  {
    v7 = v4[3];
    if (v7)
    {
      *&v230[4] = 0;
      *v230 = 0;
      v8 = sub_1002D3618(v7);
      *v230 = v8;
      *&v230[4] = WORD2(v8);
      LOWORD(data) = v8;
      BYTE2(data) = BYTE2(v8);
      v9 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289538;
        *&buf[4] = 6;
        *&buf[8] = 2098;
        *&buf[10] = v230;
        *&buf[18] = 1042;
        *&buf[20] = 3;
        *&buf[24] = 2098;
        p_data = &data;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Identification - device has resolved address %{public}.6P and OUI %{public}.3P", buf, 0x22u);
        v9 = qword_100BCE900;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = BYTE6(v7) == 1;
        v11 = (v7 >> 40) & 0xC0;
        if (v11)
        {
          v12 = 0;
        }

        else
        {
          v12 = BYTE6(v7) == 1;
        }

        v13 = v11 != 128 && BYTE6(v7) == 1;
        *buf = 67110144;
        *&buf[4] = BYTE6(v7) == 0;
        if (BYTE6(v7))
        {
          v14 = v13;
        }

        else
        {
          v14 = 1;
        }

        *&buf[8] = 1024;
        v15 = v11 == 64 && BYTE6(v7) == 1;
        *&buf[10] = v15;
        *&buf[14] = 1024;
        if (v11 != 192)
        {
          v10 = 0;
        }

        *&buf[16] = v10;
        *&buf[20] = 1024;
        *&buf[22] = v12;
        LOWORD(p_data) = 1024;
        *(&p_data + 2) = v14;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Identification - le device has address type %d, %d, %d, %d, %d", buf, 0x20u);
      }

      LOWORD(data) = -1;
      BYTE2(data) = -1;
    }

    else
    {
      v7 = v4[2];
      if (BYTE6(v7))
      {
        v30 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
        {
          v31 = BYTE6(v7) == 1;
          v32 = (v7 >> 40) & 0xC0;
          if (v32)
          {
            v33 = 0;
          }

          else
          {
            v33 = BYTE6(v7) == 1;
          }

          *buf = 67110144;
          *&buf[4] = 0;
          v34 = v32 == 64 && BYTE6(v7) == 1;
          *&buf[8] = 1024;
          *&buf[10] = v34;
          v35 = v32 == 192 && BYTE6(v7) == 1;
          *&buf[14] = 1024;
          *&buf[16] = v35;
          if (v32 == 128)
          {
            v31 = 0;
          }

          *&buf[20] = 1024;
          *&buf[22] = v33;
          LOWORD(p_data) = 1024;
          *(&p_data + 2) = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Identification - le device has address type %d, %d, %d, %d, %d, can not generate metric", buf, 0x20u);
        }

        memset(buf, 0, 24);
        if (qword_100B508D0 != -1)
        {
          sub_10087303C();
        }

        sub_10004FFDC(off_100B508C8, v3, buf);
        v36 = std::string::compare(buf, "Arc Touch BT Mouse");
        if (v36)
        {
          *(v4 + 368) = 0;
        }

        else
        {
          v135 = qword_100BCE900;
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
          {
            *v230 = 0;
            _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "HIDIdentification - WAR for Arc Touch BT Mouse Identification", v230, 2u);
          }

          LOWORD(data) = -1;
          BYTE2(data) = -1;
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (v36)
        {
          v6 = 2;
          goto LABEL_240;
        }
      }

      else
      {
        *&v230[4] = 0;
        *v230 = 0;
        v133 = sub_1002D3618(v7);
        *v230 = v133;
        *&v230[4] = WORD2(v133);
        LOWORD(data) = v133;
        BYTE2(data) = BYTE2(v133);
        v134 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289538;
          *&buf[4] = 6;
          *&buf[8] = 2098;
          *&buf[10] = v230;
          *&buf[18] = 1042;
          *&buf[20] = 3;
          *&buf[24] = 2098;
          p_data = &data;
          _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "Identification - device has public address %{public}.6P and OUI %{public}.3P", buf, 0x22u);
        }
      }
    }

    if (qword_100B512F8 != -1)
    {
      sub_100872F74();
    }

    sub_1003ADE54(off_100B512F0, v3);
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v16 = v143 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v142 objects:v229 count:16];
    if (v17)
    {
      v18 = *v143;
LABEL_38:
      v19 = 0;
      while (1)
      {
        if (*v143 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v142 + 1) + 8 * v19);
        if (([v20 isEqualToString:@"com.apple.BTLEServer"] & 1) == 0 && (objc_msgSend(v20, "isEqualToString:", @"com.apple.Preferences") & 1) == 0)
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [v16 countByEnumeratingWithState:&v142 objects:v229 count:16];
          if (v17)
          {
            goto LABEL_38;
          }

          goto LABEL_45;
        }
      }

      v138 = v20;

      if (!v138)
      {
        goto LABEL_58;
      }

      v23 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = v138;
        *&buf[12] = 2114;
        *&buf[14] = v3;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ bundleid found for uuid %{public}@", buf, 0x16u);
      }

      v24 = v138;
      sub_100007E30(buf, [v138 UTF8String]);
      if (SHIBYTE(v240[0]) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = *buf;
      v240[0] = *&buf[16];
    }

    else
    {
LABEL_45:

LABEL_58:
      v25 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v3;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "No bundleid found for uuid %{public}@", buf, 0xCu);
      }

      v138 = 0;
    }

    v26 = v4[42];
    v137 = v26;
    if (v26)
    {
      v27 = v26;
      memcpy(__dst, [v137 bytes], objc_msgSend(v137, "length"));
      v28 = __dst[0];
      v29 = *&__dst[1];
      DWORD2(v236) = __dst[0];
      HIDWORD(v236) = *&__dst[1];
      LODWORD(v237) = *&__dst[3];
      DWORD1(v237) = *&__dst[5];
    }

    else
    {
      v28 = DWORD2(v236);
      v29 = HIDWORD(v236);
    }

    if (v28 == 2 && v29 == 1452 || (v136 = 0, v28 == 1) && v29 == 76)
    {
      v37 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Overriding LE OUI for apple devices", buf, 2u);
        v28 = DWORD2(v236);
        v29 = HIDWORD(v236);
      }

      LOWORD(data) = 2560;
      BYTE2(data) = 39;
      v136 = 1;
    }

    if (v28 == 2 && v29 == 1118)
    {
      v38 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Overriding LE OUI for MSFT devices", buf, 2u);
      }

      LOWORD(data) = 7664;
      BYTE2(data) = -68;
    }

    if (qword_100B508D0 != -1)
    {
      sub_10087303C();
    }

    sub_10004FFDC(off_100B508C8, v3, buf);
    if (SBYTE7(v249) < 0)
    {
      operator delete(v248[0]);
    }

    *&v249 = *&buf[16];
    *v248 = *buf;
    v39 = buf[23];
    if (buf[23] >= 0)
    {
      v40 = v248;
    }

    else
    {
      v40 = v248[0];
    }

    if (buf[23] < 0)
    {
      v39 = v248[1];
    }

    buf[0] = 13;
    v41 = sub_100545740(v40, &v39[v40], buf);
    v42 = v248 + BYTE7(v249);
    if ((SBYTE7(v249) & 0x80u) == 0)
    {
      v43 = v248;
    }

    else
    {
      v42 = v248[0] + v248[1];
      v43 = v248[0];
    }

    std::string::erase(v248, v41 - v43, v42 - v41);
    v44 = BYTE7(v249);
    if ((SBYTE7(v249) & 0x80u) == 0)
    {
      v45 = v248;
    }

    else
    {
      v45 = v248[0];
    }

    if (SBYTE7(v249) < 0)
    {
      v44 = v248[1];
    }

    buf[0] = 10;
    v46 = sub_100545740(v45, &v44[v45], buf);
    v47 = v248 + BYTE7(v249);
    if ((SBYTE7(v249) & 0x80u) == 0)
    {
      v48 = v248;
    }

    else
    {
      v47 = v248[0] + v248[1];
      v48 = v248[0];
    }

    std::string::erase(v248, v46 - v48, v47 - v46);
    v49 = BYTE7(v249);
    if ((SBYTE7(v249) & 0x80u) == 0)
    {
      v50 = v248;
    }

    else
    {
      v50 = v248[0];
    }

    if (SBYTE7(v249) < 0)
    {
      v49 = v248[1];
    }

    buf[0] = 44;
    v51 = sub_100545740(v50, &v49[v50], buf);
    v52 = v248 + BYTE7(v249);
    if ((SBYTE7(v249) & 0x80u) == 0)
    {
      v53 = v248;
    }

    else
    {
      v52 = v248[0] + v248[1];
      v53 = v248[0];
    }

    std::string::erase(v248, v51 - v53, v52 - v51);
    v141 = 0;
    sub_1000216B4(&v141);
    *&v230[3] = 0;
    *v230 = 0;
    v54 = sub_10009A66C(v7);
    *v230 = v54;
    v230[6] = BYTE6(v54);
    *&v230[4] = WORD2(v54);
    if (sub_1000E5E28(v230, &data + 2, &data + 8, &data + 3) && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_100874234();
    }

    if (sub_10023DDEC(v230, &v238) && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_1008742A4();
    }

    sub_100022214(&v141);
    v55 = v4[34];
    v56 = v55 == 0;

    if (!v56)
    {
      v57 = v4[34];
      v58 = v57;
      sub_100007E30(buf, [v57 UTF8String]);
      if (SHIBYTE(v240[3]) < 0)
      {
        operator delete(v240[1]);
      }

      *&v240[1] = *buf;
      v240[3] = *&buf[16];
      buf[23] = 0;
      buf[0] = 0;
    }

    v59 = v4[35];
    v60 = v59 == 0;

    if (!v60)
    {
      v61 = v4[35];
      v62 = v61;
      sub_100007E30(buf, [v61 UTF8String]);
      if (SBYTE7(v242) < 0)
      {
        operator delete(v241[0]);
      }

      *v241 = *buf;
      *&v242 = *&buf[16];
      buf[23] = 0;
      buf[0] = 0;
    }

    v63 = v4[37];
    v64 = v63 == 0;

    if (!v64)
    {
      v65 = v4[37];
      v66 = v65;
      sub_100007E30(buf, [v65 UTF8String]);
      if (SHIBYTE(v245[0]) < 0)
      {
        operator delete(v244[0]);
      }

      *v244 = *buf;
      v245[0] = *&buf[16];
      buf[23] = 0;
      buf[0] = 0;
    }

    v67 = v4[38];
    v68 = v67 == 0;

    if (!v68)
    {
      v69 = v4[38];
      v70 = v69;
      sub_100007E30(buf, [v69 UTF8String]);
      if (SHIBYTE(v245[3]) < 0)
      {
        operator delete(v245[1]);
      }

      *&v245[1] = *buf;
      v245[3] = *&buf[16];
      buf[23] = 0;
      buf[0] = 0;
    }

    v71 = v4[39];
    v72 = v71 == 0;

    if (!v72)
    {
      v73 = v4[39];
      v74 = v73;
      sub_100007E30(buf, [v73 UTF8String]);
      if (SBYTE7(v247[0]) < 0)
      {
        operator delete(v246[0]);
      }

      *v246 = *buf;
      *&v247[0] = *&buf[16];
      buf[23] = 0;
      buf[0] = 0;
    }

    v75 = BYTE7(v249);
    if ((SBYTE7(v249) & 0x80u) == 0)
    {
      v76 = v248;
    }

    else
    {
      v76 = v248[0];
    }

    if (SBYTE7(v249) < 0)
    {
      v75 = v248[1];
    }

    buf[0] = 13;
    v77 = sub_100545740(v76, &v75[v76], buf);
    v78 = v248 + BYTE7(v249);
    if ((SBYTE7(v249) & 0x80u) == 0)
    {
      v79 = v248;
    }

    else
    {
      v78 = v248[0] + v248[1];
      v79 = v248[0];
    }

    std::string::erase(v248, v77 - v79, v78 - v77);
    v80 = BYTE7(v249);
    if ((SBYTE7(v249) & 0x80u) == 0)
    {
      v81 = v248;
    }

    else
    {
      v81 = v248[0];
    }

    if (SBYTE7(v249) < 0)
    {
      v80 = v248[1];
    }

    buf[0] = 10;
    v82 = sub_100545740(v81, &v80[v81], buf);
    v83 = v248 + BYTE7(v249);
    if ((SBYTE7(v249) & 0x80u) == 0)
    {
      v84 = v248;
    }

    else
    {
      v83 = v248[0] + v248[1];
      v84 = v248[0];
    }

    std::string::erase(v248, v82 - v84, v83 - v82);
    v85 = BYTE7(v249);
    if ((SBYTE7(v249) & 0x80u) == 0)
    {
      v86 = v248;
    }

    else
    {
      v86 = v248[0];
    }

    if (SBYTE7(v249) < 0)
    {
      v85 = v248[1];
    }

    buf[0] = 44;
    v87 = sub_100545740(v86, &v85[v86], buf);
    v88 = v248 + BYTE7(v249);
    if ((SBYTE7(v249) & 0x80u) == 0)
    {
      v89 = v248;
    }

    else
    {
      v88 = v248[0] + v248[1];
      v89 = v248[0];
    }

    std::string::erase(v248, v87 - v89, v88 - v87);
    v90 = HIBYTE(v240[0]);
    if (SHIBYTE(v240[0]) < 0)
    {
      v90 = __p[1];
    }

    v91 = HIBYTE(v240[3]);
    if (SHIBYTE(v240[3]) < 0)
    {
      v91 = v240[2];
    }

    v92 = &v91[v90];
    v93 = BYTE7(v242);
    if (SBYTE7(v242) < 0)
    {
      v93 = v241[1];
    }

    v94 = malloc_type_calloc(v93 + v92 + 80, 1uLL, 0x100004077774924uLL);
    v95 = v94;
    *v94 = data;
    v96 = v235;
    v97 = v236;
    v98 = v238;
    *(v94 + 3) = v237;
    *(v94 + 4) = v98;
    *(v94 + 1) = v96;
    *(v94 + 2) = v97;
    if (v136)
    {
      v99 = 80;
    }

    else
    {
      if (SHIBYTE(v240[0]) >= 0)
      {
        v100 = __p;
      }

      else
      {
        v100 = __p[0];
      }

      if (SHIBYTE(v240[0]) >= 0)
      {
        v101 = HIBYTE(v240[0]);
      }

      else
      {
        v101 = __p[1];
      }

      memcpy(v94 + 80, v100, v101);
      v102 = HIBYTE(v240[0]);
      if (SHIBYTE(v240[0]) < 0)
      {
        v102 = __p[1];
      }

      v99 = (v102 + 80);
    }

    if (SHIBYTE(v240[3]) >= 0)
    {
      v103 = &v240[1];
    }

    else
    {
      v103 = v240[1];
    }

    if (SHIBYTE(v240[3]) >= 0)
    {
      v104 = HIBYTE(v240[3]);
    }

    else
    {
      v104 = v240[2];
    }

    memcpy(&v95[v99], v103, v104);
    v105 = HIBYTE(v240[3]);
    if (SHIBYTE(v240[3]) < 0)
    {
      v105 = v240[2];
    }

    v106 = v105 + v99;
    if ((SBYTE7(v242) & 0x80u) == 0)
    {
      v107 = v241;
    }

    else
    {
      v107 = v241[0];
    }

    if ((SBYTE7(v242) & 0x80u) == 0)
    {
      v108 = BYTE7(v242);
    }

    else
    {
      v108 = v241[1];
    }

    memcpy(&v95[v106], v107, v108);
    v109 = BYTE7(v242);
    if (SBYTE7(v242) < 0)
    {
      v109 = v241[1];
    }

    v110 = v109 + v106;
    CC_SHA1(&data, v110, v247 + 8);
    v111 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *&buf[4] = v110;
      *&buf[8] = 2098;
      *&buf[10] = &data;
      _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "Identification - LE raw serialized data dump {%{public}.*P}", buf, 0x12u);
      v111 = qword_100BCE900;
    }

    if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
    {
      v112 = &v242 + 8;
      if ((SBYTE7(v249) & 0x80u) == 0)
      {
        v113 = v248;
      }

      else
      {
        v113 = v248[0];
      }

      v114 = __p[0];
      if (SHIBYTE(v240[0]) >= 0)
      {
        v114 = __p;
      }

      if (v243 < 0)
      {
        v112 = *(&v242 + 1);
      }

      v115 = v240[1];
      if (SHIBYTE(v240[3]) >= 0)
      {
        v115 = &v240[1];
      }

      if ((SBYTE7(v242) & 0x80u) == 0)
      {
        v116 = v241;
      }

      else
      {
        v116 = v241[0];
      }

      v117 = v244;
      if (SHIBYTE(v245[0]) < 0)
      {
        v117 = v244[0];
      }

      v118 = &v245[1];
      if (SHIBYTE(v245[3]) < 0)
      {
        v118 = v245[1];
      }

      v119 = v246[0];
      if ((SBYTE7(v247[0]) & 0x80u) == 0)
      {
        v119 = v246;
      }

      *&buf[4] = 20;
      *&buf[20] = 3;
      p_data = &data;
      v154 = v113;
      v156 = WORD2(data);
      v158 = BYTE8(data);
      v160 = WORD3(data);
      v164 = &v238;
      *&buf[18] = 1042;
      v161 = 1042;
      v165 = 1042;
      v162 = 8;
      v166 = 8;
      *&buf[8] = 2098;
      *&buf[24] = 2098;
      v163 = 2098;
      v167 = 2098;
      v168 = &v238 + 8;
      v170 = HIDWORD(v237);
      v172 = WORD5(data);
      v174 = WORD6(data);
      v176 = HIWORD(data);
      v178 = v235;
      v180 = WORD1(v235);
      v182 = WORD2(v235);
      v184 = WORD3(v235);
      v186 = WORD4(v235);
      v188 = WORD5(v235);
      v190 = WORD6(v235);
      v192 = HIWORD(v235);
      v194 = v236;
      v196 = WORD1(v236);
      v198 = WORD2(v236);
      v200 = WORD3(v236);
      v204 = HIDWORD(v236);
      v202 = DWORD2(v236);
      v220 = v116;
      v222 = v117;
      v224 = v118;
      v228 = BYTE8(v249);
      v208 = DWORD1(v237);
      v206 = v237;
      v210 = DWORD2(v237);
      v212 = BYTE3(data);
      v214 = v114;
      v216 = v112;
      v218 = v115;
      v153 = 2082;
      v213 = 2082;
      v215 = 2082;
      v217 = 2082;
      v219 = 2082;
      v221 = 2082;
      v223 = 2082;
      v225 = 2082;
      v226 = v119;
      v155 = 1024;
      v157 = 1024;
      v159 = 1024;
      v169 = 1024;
      v171 = 1024;
      v173 = 1024;
      v175 = 1024;
      v177 = 1024;
      v179 = 1024;
      v181 = 1024;
      v183 = 1024;
      v185 = 1024;
      v187 = 1024;
      v189 = 1024;
      v191 = 1024;
      v193 = 1024;
      v195 = 1024;
      v197 = 1024;
      v199 = 1024;
      v201 = 1024;
      v203 = 1024;
      v205 = 1024;
      v207 = 1024;
      v209 = 1024;
      v211 = 1024;
      v227 = 1024;
      *buf = 68299266;
      *&buf[10] = v247 + 8;
      _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "Identification - generating LE metric {%{public}.20P, %{public}.3P, %{public}s, 0x%x, 0x%x, 0x%x, %{public}.8P, %{public}.8P, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, %d, %{public}s, %{public}s, %{public}s, %{public}s, %{public}s, %{public}s, %{public}s, %d}", buf, 0x12Eu);
    }

    free(v95);
    v120 = sub_10000E92C();
    if ((*(*v120 + 8))(v120) && (WORD1(v236) || BYTE3(data)))
    {
      v130 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        v131 = sub_10000E92C();
        v132 = (*(*v131 + 8))(v131);
        *buf = 67109376;
        *&buf[4] = v132;
        *&buf[8] = 1024;
        *&buf[10] = BYTE3(data);
        _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "Identification - routing LE friendly name: internal %d, le hid service present %d", buf, 0xEu);
      }
    }

    else
    {
      v121 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        v122 = sub_10000E92C();
        v123 = (*(*v122 + 8))(v122);
        *buf = 67109632;
        *&buf[4] = v123;
        *&buf[8] = 1024;
        *&buf[10] = BYTE3(data);
        *&buf[14] = 1024;
        *&buf[16] = BYTE8(v249);
        _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "Identification - clearing LE friendly name: internal %d, le hid service present %d, le ghs service present %d", buf, 0x14u);
      }

      if (SBYTE7(v249) < 0)
      {
        operator delete(v248[0]);
      }

      v248[0] = 0;
      v248[1] = 0;
      *&v249 = 0;
    }

    if (qword_100B508D0 != -1)
    {
      sub_10087303C();
    }

    v124 = off_100B508C8;
    sub_100007E30(v139, "LeIdentificationHashExist");
    sub_10078787C(v124, v3, v139);
    if (v140 < 0)
    {
      operator delete(v139[0]);
    }

    *(v4 + 357) = 1;
    v125 = [NSData dataWithBytes:v247 + 8 length:20];
    objc_storeStrong(v4 + 45, v125);

    sub_10000801C(v150);
    v128 = sub_10000F034(v126, v127);
    (*(*v128 + 232))(v128, &data);
    sub_10002249C(&v141);

    v6 = 0;
  }

  else
  {
    v21 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Identification - DI not yet completed, returning", buf, 2u);
    }

    v6 = 4;
  }

LABEL_240:
  if (v232[0])
  {
    v232[1] = v232[0];
    operator delete(v232[0]);
  }

  if (v146)
  {
    v147 = v146;
    operator delete(v146);
  }

  sub_1000E3D14(&data);
  sub_1000088CC(v150);

  return v6;
}

void sub_100797B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  v37 = STACK[0x2B0];
  if (STACK[0x2B0])
  {
    STACK[0x2B8] = v37;
    operator delete(v37);
  }

  if (a31)
  {
    operator delete(a31);
  }

  sub_1000E3D14(&STACK[0x2D0]);
  sub_1000088CC(&a35);

  _Unwind_Resume(a1);
}

uint64_t sub_100797C68(uint64_t a1)
{
  v62[0] = 0;
  v62[1] = 0;
  sub_100007F88(v62, a1 + 96);
  v1 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "statedump: ------------------ LE Device Manager -------------------", buf, 2u);
  }

  *buf = 0;
  sub_100016250(buf);
  v2 = qword_100BCE900;
  v3 = a1;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Devices:", buf, 2u);
  }

  v61[0] = 0;
  v61[1] = 0;
  v60 = v61;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = *(a1 + 176);
  v4 = [obj countByEnumeratingWithState:&v56 objects:v85 count:16];
  if (v4)
  {
    v5 = *v57;
    v41 = *v57;
    do
    {
      v6 = 0;
      v43 = v4;
      do
      {
        if (*v57 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v56 + 1) + 8 * v6);
        v8 = [*(v3 + 176) objectForKey:v7];
        v55 = *(v8 + 15);
        *v64 = sub_100788D8C(v3, v7);
        *buf = v64;
        v9 = *(sub_100773E70(&v60, v64, &unk_1008A9BD0, buf) + 16);
        *v64 = *(v8 + 93);
        *buf = v64;
        *(sub_100773E70(&v60, v64, &unk_1008A9BD0, buf) + 16) = v9 + 1;
        v10 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000D4514(v8);
          if (v65 >= 0)
          {
            v11 = v64;
          }

          else
          {
            v11 = *v64;
          }

          sub_100773740(&v55);
          log = v10;
          if (v54 >= 0)
          {
            v12 = &v53;
          }

          else
          {
            v12 = v53;
          }

          v13 = v8[358];
          v14 = *(v8 + 93);
          v15 = v8[355];
          v16 = v8[356];
          v45 = v8[488];
          v17 = sub_10077B344(v8);
          v18 = sub_10077B320(v17);
          sub_10077BCE0(v8);
          p_p = &__p;
          if (v52 < 0)
          {
            p_p = __p;
          }

          *buf = 138545667;
          *&buf[4] = v7;
          v67 = 2082;
          v68 = v11;
          v69 = 2082;
          v70 = v12;
          v71 = 1024;
          v72 = v13;
          v73 = 1024;
          v74 = v14;
          v75 = 1024;
          v76 = v15;
          v77 = 1024;
          v78 = v16;
          v79 = 1024;
          v80 = v45;
          v81 = 2080;
          v82 = v18;
          v83 = 2081;
          v84 = p_p;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}@ → %{public}s (added to WL %{public}s ago) disableDisconnect:%d useCase:%d scanDutyCycle screenON:%d screenOFF:%d pendingDelete:%d type:%s FindMy:%{private}s ", buf, 0x52u);
          if (v52 < 0)
          {
            operator delete(__p);
          }

          v5 = v41;
          v3 = a1;
          v4 = v43;
          if (v54 < 0)
          {
            operator delete(v53);
          }

          if (v65 < 0)
          {
            operator delete(*v64);
          }
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v56 objects:v85 count:16];
    }

    while (v4);
  }

  v20 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "statedump:    useCase map:", buf, 2u);
  }

  v21 = v60;
  if (v60 != v61)
  {
    v22 = qword_100BCE900;
    do
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = sub_10002E6D4(*(v21 + 7));
        v24 = *(v21 + 16);
        *buf = 136446466;
        *&buf[4] = v23;
        v67 = 1024;
        LODWORD(v68) = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "statedump:    \tuseCase:%{public}s count:%d", buf, 0x12u);
        v22 = qword_100BCE900;
      }

      v25 = v21[1];
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
          v26 = v21[2];
          v27 = *v26 == v21;
          v21 = v26;
        }

        while (!v27);
      }

      v21 = v26;
    }

    while (v26 != v61);
  }

  sub_100420378(*(a1 + 256));
  if (_os_feature_enabled_impl())
  {
    v28 = sub_10000E92C();
    if ((*(*v28 + 160))(v28))
    {
      v29 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump: Device name check:", buf, 2u);
      }

      sub_100795AEC(a1, 1u);
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v30 = v48 = 0u;
      v31 = [v30 countByEnumeratingWithState:&v47 objects:v63 count:16];
      if (v31)
      {
        v32 = *v48;
        do
        {
          for (i = 0; i != v31; i = i + 1)
          {
            if (*v48 != v32)
            {
              objc_enumerationMutation(v30);
            }

            v34 = qword_100BCE900;
            if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
            {
              v35 = [*(*(&v47 + 1) + 8 * i) objectForKeyedSubscript:@"mapLabelCalloutTitleKey"];
              *buf = 138412290;
              *&buf[4] = v35;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "statedump:    %@", buf, 0xCu);
            }
          }

          v31 = [v30 countByEnumeratingWithState:&v47 objects:v63 count:16];
        }

        while (v31);
      }

      v36 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "statedump: evicted devices:", buf, 2u);
      }

      for (j = *(a1 + 272); j != a1 + 264; j = *(j + 8))
      {
        v38 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
        {
          sub_10079577C(j + 16);
          if (v69 >= 0)
          {
            v39 = buf;
          }

          else
          {
            v39 = *buf;
          }

          *v64 = 136380675;
          *&v64[4] = v39;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "statedump:    %{private}s", v64, 0xCu);
          if (SHIBYTE(v69) < 0)
          {
            operator delete(*buf);
          }
        }
      }
    }
  }

  sub_10000CEDC(&v60, v61[0]);
  return sub_1000088CC(v62);
}

void sub_100798404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, char a49)
{
  sub_10000CEDC(&a46, a47);
  sub_1000088CC(&a49);
  _Unwind_Resume(a1);
}

uint64_t sub_1007984B8(uint64_t a1)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 96);
  v21 = 0uLL;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 176);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v3)
  {
    v4 = *v15;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v14 + 1) + 8 * i);
        v7 = [*(a1 + 176) objectForKey:{v6, __p[0], __p[1], v12, v13, v14}];
        v19 = 0uLL;
        [v6 getUUIDBytes:&v19];
        v21 = v19;
        if (v7[164] == 1)
        {
          *(&v13 + 3) = 0;
          LODWORD(v13) = 0;
          v8 = sub_10009A66C(*(v7 + 3));
          LODWORD(v13) = v8;
          BYTE6(v13) = BYTE6(v8);
          WORD2(v13) = WORD2(v8);
          if (v7[127] < 0)
          {
            sub_100008904(__p, *(v7 + 13), *(v7 + 14));
          }

          else
          {
            *__p = *(v7 + 104);
            v12 = *(v7 + 15);
          }

          if (v12 >= 0)
          {
            v9 = __p;
          }

          else
          {
            v9 = __p[0];
          }

          sub_1001C4BCC(&v13, v9, &v21);
          if (SHIBYTE(v12) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v3);
  }

  return sub_1000088CC(v18);
}

uint64_t sub_1007986D0(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 96);
  sub_100798734(a1 + 296, a2);
  return sub_1000088CC(v5);
}

void sub_100798734(uint64_t a1, uint64_t a2)
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
    sub_100799AA4((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

void sub_1007987C4(uint64_t a1)
{
  sub_100798DFC(a1);

  operator delete();
}

void sub_100798814(uint64_t *result)
{
  if (result[2])
  {
    v2 = result[1];
    v3 = *(*result + 8);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    result[2] = 0;
    if (v2 != result)
    {
      do
      {
        v5 = *(v2 + 8);
        sub_100798878(result, v2);
        v2 = v5;
      }

      while (v5 != result);
    }
  }
}

void sub_100798878(int a1, void **__p)
{
  if (*(__p + 47) < 0)
  {
    operator delete(__p[3]);
  }

  operator delete(__p);
}

void sub_1007988BC(uint64_t a1, uint64_t a2)
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
    sub_100798988((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_100798988(void *a1, char *__src, char *a3)
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

void sub_100798B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100798B5C(uint64_t a1, uint64_t a2)
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
    sub_100798C28((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_100798C28(void *a1, char *__src, char *a3)
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

void sub_100798DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100798DFC(uint64_t a1)
{
  *a1 = off_100B0C480;
  *(a1 + 8) = off_100B0C530;
  *(a1 + 16) = off_100B0C550;
  *(a1 + 24) = off_100B0C578;
  *(a1 + 32) = &off_100B0C5A8;
  *(a1 + 40) = &off_100B0C5C0;
  *(a1 + 48) = &off_100B0C5D8;
  *(a1 + 56) = &off_100B0C5F0;
  *(a1 + 64) = off_100B0C608;
  *(a1 + 72) = &off_100B0C668;

  v2 = *(a1 + 304);
  if (v2)
  {
    *(a1 + 312) = v2;
    operator delete(v2);
  }

  sub_100798814((a1 + 264));
  sub_10000CEDC(a1 + 232, *(a1 + 240));
  sub_100028EB4((a1 + 208));
  sub_10000CEDC(a1 + 184, *(a1 + 192));

  sub_10007A068(a1 + 96);
  return a1;
}

uint64_t sub_100799588(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      sub_100775FF0(a1, v4, a2, a2);
      ++a2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

void sub_100799608(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100799608(a1, *a2);
    sub_100799608(a1, a2[1]);
    sub_100799664((a2 + 4));

    operator delete(a2);
  }
}

void sub_100799664(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void *sub_1007996BC(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v5 = *sub_1000867EC(a1, &v10, a2);
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_100799770();
  }

  return v5;
}

uint64_t sub_100799814(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100799664(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_100799860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v7 = *(a3 + 8);
    v5 = a3 + 8;
    v6 = v7;
    v8 = *(v5 + 23);
    if (v8 >= 0)
    {
      v9 = *(v5 + 23);
    }

    else
    {
      v9 = *(v5 + 8);
    }

    if (v8 >= 0)
    {
      v10 = v5;
    }

    else
    {
      v10 = v6;
    }

    while (1)
    {
      v11 = *(v3 + 47);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v3 + 32);
      }

      if (v11 == v9)
      {
        v13 = v12 >= 0 ? (v3 + 24) : *(v3 + 24);
        if (!memcmp(v13, v10, v9))
        {
          break;
        }
      }

      v3 = *(v3 + 8);
      if (v3 == a2)
      {
        return a2;
      }
    }
  }

  return v3;
}

uint64_t *sub_1007999A8(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    sub_100799900(a1, 0, 0, v2 + 16);
  }

  return a1;
}

char *sub_100799AA4(void *a1, char *__src, char *a3)
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

void sub_100799C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100799C78(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 8u);
}

void sub_100799C94()
{
  v0 = &byte_100BC7BF7;
  v1 = -160;
  v2 = &byte_100BC7BF7;
  do
  {
    v3 = *v2;
    v2 -= 32;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 32;
  }

  while (v1);
}

void sub_100799CDC()
{
  v0 = objc_autoreleasePoolPush();
  v1 = sub_100007E30(&qword_100BC7B60, "CORSAIR HARPOON");
  *(v1 + 6) = 454826846;
  sub_100007E30(v1 + 4, "CORSAIR IRONCLAW");
  dword_100BC7B98 = 454826828;
  sub_100007E30(qword_100BC7BA0, "DARK CORE RGB PRO SE");
  dword_100BC7BB8 = 461249308;
  sub_100007E30(qword_100BC7BC0, "DARK CORE RGB PRO");
  dword_100BC7BD8 = 454826880;
  sub_100007E30(qword_100BC7BE0, "KATAR PRO Wireless");
  dword_100BC7BF8 = 454826926;
  __cxa_atexit(sub_100799C94, 0, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100799DF8(uint64_t a1)
{
  *a1 = &off_100B0D338;
  *(a1 + 8) = off_100B0D370;
  *(a1 + 16) = &off_100B0BB20;
  *(a1 + 24) = &off_100B0BB50;
  *(a1 + 32) = &off_100B0BB98;
  *(a1 + 40) = &off_100B0BB68;
  *(a1 + 48) = off_100B0D3E0;
  v2 = (a1 + 56);
  sub_100007E30(&__p, "LeObserver");
  sub_1005B0B68(v2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = off_100B0CA18;
  *(a1 + 8) = off_100B0CB18;
  *(a1 + 16) = off_100B0CB88;
  *(a1 + 24) = &off_100B0CBB8;
  *(a1 + 32) = off_100B0CBD0;
  *(a1 + 40) = off_100B0CC30;
  *(a1 + 48) = off_100B0CC60;
  *(a1 + 56) = &off_100B0CD20;
  *(a1 + 112) = &off_100B0CD38;
  *(a1 + 120) = &off_100B0CD50;
  *(a1 + 128) = off_100B0CD68;
  *(a1 + 136) = &off_100B0CD98;
  *(a1 + 152) = 0;
  *(a1 + 1792) = 1;
  *(a1 + 1818) = 0;
  *(a1 + 1824) = 0;
  *(a1 + 1840) = 0u;
  *(a1 + 1816) = 0;
  *(a1 + 1800) = 0u;
  *(a1 + 1832) = a1 + 1840;
  *(a1 + 1856) = 1;
  *(a1 + 1858) = 0;
  *(a1 + 1864) = -16777216;
  *(a1 + 1868) = 0;
  *(a1 + 1870) = 0;
  *(a1 + 1872) = 0;
  *(a1 + 1888) = 0;
  *(a1 + 1896) = 0;
  *(a1 + 1952) = 0;
  *(a1 + 1936) = 0u;
  *(a1 + 1968) = 0u;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 0;
  *(a1 + 1904) = 0u;
  *(a1 + 1960) = a1 + 1968;
  *(a1 + 1984) = 0;
  *(a1 + 2032) = 0u;
  *(a1 + 2024) = a1 + 2032;
  *(a1 + 2072) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2064) = a1 + 2072;
  *(a1 + 2096) = 0u;
  *(a1 + 2088) = a1 + 2096;
  *(a1 + 2128) = 0;
  *(a1 + 2112) = 0u;
  *(a1 + 2136) = 0u;
  *(a1 + 2152) = 300000;
  *(a1 + 2192) = 0;
  *(a1 + 2200) = 0u;
  *(a1 + 2216) = 0u;
  *(a1 + 2230) = 0u;
  *(a1 + 2276) = 1;
  *(a1 + 2279) = 0;
  *(a1 + 2324) = 0;
  *(a1 + 2376) = 0;
  *(a1 + 2384) = 0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 3248) = 0x700000003;
  *(a1 + 3256) = 0;
  *(a1 + 3288) = 0;
  *(a1 + 3296) = 0;
  *(a1 + 4328) = 0;
  *(a1 + 4344) = 0u;
  *(a1 + 4336) = a1 + 4344;
  *(a1 + 4376) = 0u;
  *(a1 + 4368) = a1 + 4376;
  *(a1 + 4421) = 0;
  *(a1 + 4392) = 0u;
  *(a1 + 4408) = 0;
  *(a1 + 4422) = 1;
  *(a1 + 4425) = 1;
  v3 = +[NSMutableSet set];
  v4 = *(a1 + 3296);
  *(a1 + 3296) = v3;

  return a1;
}

void sub_10079A220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  sub_10000CEDC(v15 + v19, *(v15 + 4376));
  sub_10000CEDC(v15 + v18, *(v15 + 4344));

  sub_1000161FC(&a15);
  sub_1007B20B4(v15 + 2088, *(v15 + 2096));
  sub_10000CEDC(v15 + 2064, *(v15 + 2072));
  sub_1007B1FC8(v15 + 2024, *(v15 + 2032));
  sub_10000CEDC(v15 + 1960, *(v15 + 1968));
  v21 = *(v15 + 1936);
  if (v21)
  {
    *(v15 + 1944) = v21;
    operator delete(v21);
  }

  v22 = *v17;
  if (*v17)
  {
    *(v15 + 1912) = v22;
    operator delete(v22);
  }

  sub_10000CEDC(v15 + 1832, *(v15 + 1840));

  sub_1005B0D58(v16);
  _Unwind_Resume(a1);
}

void sub_10079A310(uint64_t a1)
{
  if (qword_100B512F8 != -1)
  {
    sub_100874358();
  }

  sub_1006D6828(off_100B512F0 + 192, a1);
  if (qword_100B50AA0 != -1)
  {
    sub_10087436C();
  }

  sub_100312650(off_100B50A98 + 64, a1 + 16);
  if (qword_100B50910 != -1)
  {
    sub_100874380();
  }

  sub_1005BB5D4(off_100B50908, a1 + 32);
  if (qword_100B508B0 != -1)
  {
    sub_100874394();
  }

  sub_100749B80(off_100B508A8, a1 + 48, 0);
  if (qword_100B51098 != -1)
  {
    sub_1008743A8();
  }

  sub_10048776C();
  if (qword_100B508D0 != -1)
  {
    sub_1008743BC();
  }

  sub_1007986D0(off_100B508C8, a1 + 136);
  v2 = sub_100017E6C();
  sub_1007988BC(v2 + 1224, a1 + 120);
  v3 = sub_100017E6C();
  sub_100798B5C(v3 + 1184, a1 + 112);
  v6 = *sub_10000C798(v4, v5);
  if (((*(v6 + 440))() & 1) == 0)
  {
    v7 = sub_100017E6C();
    sub_100532818(v7 + 744, a1 + 24);
  }

  v8 = sub_100017E6C();
  (*(*v8 + 160))(v8, a1 + 144);
  v9 = *sub_10000E92C();
  *(a1 + 2192) = (*(v9 + 792))();
  v10 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "EnableScanAgentPrints");
  v11 = (*(*v10 + 72))(v10, buf, __p, a1 + 4425);
  if (v169 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v171[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (v11)
  {
    v12 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 4425);
      *buf = 67109120;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "fEnableDebugScanAgent is now %d", buf, 8u);
    }
  }

  v14 = sub_10000E92C();
  sub_100007E30(buf, "ADVBUFF");
  sub_100007E30(__p, "UseDebugTypes");
  if ((*(*v14 + 72))(v14, buf, __p, a1 + 2128))
  {
    v15 = *(a1 + 2128);
    if (v169 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v171[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
      if (!v15)
      {
        goto LABEL_35;
      }
    }

    else if (!v15)
    {
      goto LABEL_35;
    }

    v16 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Warning: Using debug types for ADV buffer", buf, 2u);
    }
  }

  else
  {
    if (v169 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v171[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

LABEL_35:
  v167 = 0;
  v17 = sub_10000E92C();
  sub_100007E30(buf, "ADVBUFF");
  sub_100007E30(__p, "DisableENADVBuffers");
  v18 = (*(*v17 + 72))(v17, buf, __p, &v167);
  v20 = v18;
  v21 = v167;
  if (v169 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = v20 & v21;
  if ((v171[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v22)
    {
      goto LABEL_43;
    }
  }

  else if (!v22)
  {
    goto LABEL_43;
  }

  *(a1 + 1792) = 0;
  v23 = qword_100BCEA38;
  v18 = os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Disabling EN ADV Buffers for this platform", buf, 2u);
  }

LABEL_43:
  v24 = sub_10000C7D0(v18, v19);
  v25 = (*(*v24 + 2840))(v24);
  *(a1 + 1816) = v25;
  *(a1 + 1818) = v25 | 0x100;
  if (v25)
  {
    v26 = 256;
    do
    {
      v166[0] = v26;
      *buf = v166;
      v27 = sub_1000BED44(a1 + 1832, v166, &unk_1008A9BD0, buf);
      *(v27 + 14) = 255;
      *(v27 + 15) = v26;
      v27[4] = 0;
      v28 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67110144;
        *&buf[4] = v26;
        *&buf[8] = 1024;
        *&buf[10] = 255;
        *&buf[14] = 1024;
        *&buf[16] = 0;
        *v171 = 1024;
        *&v171[2] = 0;
        *v172 = 1024;
        *&v172[2] = 0;
        _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "MATCH TABLE Setting up table entry handle:%d type:%d length:%d created:%d enabled:%d", buf, 0x20u);
      }

      ++v26;
    }

    while (v26 < *(a1 + 1818));
  }

  *v166 = 0;
  v29 = sub_10000E92C();
  sub_100007E30(buf, "ADVBUFF");
  sub_100007E30(__p, "OverrideAPWakeDebounceTimerSeconds");
  v30 = (*(*v29 + 144))(v29, buf, __p, v166);
  if (*v166)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  if (v169 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v171[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v31)
    {
      goto LABEL_59;
    }
  }

  else if (!v31)
  {
    goto LABEL_59;
  }

  v32 = 1000 * *v166;
  *(a1 + 2152) = 1000 * *v166;
  v33 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v32;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Warning: Overriding fApWakeReadADVBuffersDebounceDelta with %llu seconds", buf, 0xCu);
  }

LABEL_59:
  *(a1 + 2246) = 0;
  *(a1 + 2160) = 0u;
  *(a1 + 2176) = 0u;
  v165 = 0;
  *(a1 + 2248) = 0;
  *(a1 + 2252) = 0;
  *(a1 + 2258) = 0;
  *(a1 + 2260) = 0;
  *(a1 + 2265) = 0;
  *(a1 + 4360) = 0;
  *(a1 + 4432) = 0;
  v34 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "IsMRCScanEnableOverride");
  v35 = (*(*v34 + 72))(v34, buf, __p, a1 + 2263);
  if (v169 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v171[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v35)
    {
      goto LABEL_75;
    }
  }

  else if (!v35)
  {
    goto LABEL_75;
  }

  *(a1 + 2263) = 1;
  v36 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "Yes";
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters MRC Enable: %{public}s", buf, 0xCu);
  }

  v37 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "IsMRCScanEnableOverrideValue");
  v38 = (*(*v37 + 72))(v37, buf, __p, a1 + 2264);
  if (v169 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v171[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v38)
    {
      goto LABEL_75;
    }
  }

  else if (!v38)
  {
    goto LABEL_75;
  }

  *(a1 + 2264) = 1;
  v39 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "Yes";
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters MRC Enable value: %{public}s", buf, 0xCu);
  }

LABEL_75:
  v40 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "IsScanParamsOverriden");
  if ((*(*v40 + 72))(v40, buf, __p, a1 + 2246))
  {
    v41 = *(a1 + 2246);
    if (v169 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v171[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
      if (!v41)
      {
        goto LABEL_219;
      }
    }

    else if (!v41)
    {
      goto LABEL_219;
    }

    v42 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters.", buf, 2u);
    }

    v43 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "Interval");
    v44 = (*(*v43 + 88))(v43, buf, __p, &v165 + 4);
    if (HIDWORD(v165))
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    if (v169 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v171[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v45)
    {
      v46 = HIDWORD(v165);
      *(a1 + 2248) = WORD2(v165);
      v47 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v46;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters Interval %d.", buf, 8u);
      }
    }

    v48 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "WindowMainCoreELNAOn");
    v49 = (*(*v48 + 88))(v48, buf, __p, &v165 + 4);
    if (HIDWORD(v165))
    {
      v50 = v49;
    }

    else
    {
      v50 = 0;
    }

    if (v169 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v171[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v50)
    {
      v51 = HIDWORD(v165);
      *(a1 + 2250) = WORD2(v165);
      v52 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v51;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters WindowMainCoreELNAOn %d.", buf, 8u);
      }
    }

    v53 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "WindowMainCoreELNABypass");
    v54 = (*(*v53 + 88))(v53, buf, __p, &v165 + 4);
    if (HIDWORD(v165))
    {
      v55 = v54;
    }

    else
    {
      v55 = 0;
    }

    if (v169 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v171[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v55)
    {
      v56 = HIDWORD(v165);
      *(a1 + 2252) = WORD2(v165);
      v57 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v56;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters WindowMainCoreELNABypass %d.", buf, 8u);
      }
    }

    v58 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "IsScanCoreELNAOn");
    if ((*(*v58 + 72))(v58, buf, __p, a1 + 2258))
    {
      v59 = *(a1 + 2258);
      if (v169 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v171[3] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (v59)
      {
        v60 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters ScanCore ELNA is On", buf, 2u);
        }
      }
    }

    else
    {
      if (v169 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v171[3] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v61 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "WindowScanCore");
    v62 = (*(*v61 + 88))(v61, buf, __p, &v165 + 4);
    if (HIDWORD(v165))
    {
      v63 = v62;
    }

    else
    {
      v63 = 0;
    }

    if (v169 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v171[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v63)
    {
      v64 = HIDWORD(v165);
      *(a1 + 2260) = WORD2(v165);
      v65 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v64;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters WindowScancore %d", buf, 8u);
      }
    }

    v164[0] = _NSConcreteStackBlock;
    v164[1] = 3221225472;
    v164[2] = sub_10079C5D4;
    v164[3] = &unk_100ADF8F8;
    v164[4] = a1;
    v66 = v164;
    if (qword_100BC7CB8 != -1)
    {
      dispatch_once(&qword_100BC7CB8, v66);
    }

    v67 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "IsScanCoreELNAOn");
    if ((*(*v67 + 72))(v67, buf, __p, a1 + 2258))
    {
      v68 = *(a1 + 2258);
      if (v169 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v171[3] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (v68)
      {
        v69 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters ScanCore ELNA is On", buf, 2u);
        }
      }
    }

    else
    {
      if (v169 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v171[3] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v70 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "IsScanCoreConcurrent");
    if ((*(*v70 + 72))(v70, buf, __p, a1 + 2262))
    {
      v71 = *(a1 + 2262);
      if (v169 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v171[3] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (v71)
      {
        v72 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters ScanCore Concurrent", buf, 2u);
        }
      }
    }

    else
    {
      if (v169 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v171[3] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v73 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "IsScanParamsPhyOverride");
    v74 = (*(*v73 + 88))(v73, buf, __p, &v165);
    if (v169 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v171[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v74)
    {
      v75 = v165;
      *(a1 + 2265) = v165;
      *(a1 + 2266) = 1;
      v76 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *&buf[4] = 1;
        *&buf[8] = 1024;
        *&buf[10] = v75;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters Phy Scan: %d:%d", buf, 0xEu);
      }
    }

    *(a1 + 2267) = 0;
    v77 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "IsScanCoreCompensated");
    v78 = (*(*v77 + 72))(v77, buf, __p, a1 + 2270);
    if (v169 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v171[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v78)
    {
      *(a1 + 2267) = 1;
      v79 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 2270))
        {
          v80 = "Yes";
        }

        else
        {
          v80 = "No";
        }

        *buf = 136446210;
        *&buf[4] = v80;
        _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters ScanCore Compensated: %{public}s", buf, 0xCu);
      }
    }

    *(a1 + 2268) = 0;
    v81 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "ScanCoreCompensationPercent");
    v82 = (*(*v81 + 88))(v81, buf, __p, &v165 + 4);
    if (v169 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v171[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v82)
    {
      v83 = HIDWORD(v165);
      if (HIDWORD(v165) > 0x64)
      {
        v84 = qword_100BCE918;
        if (!os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_194;
        }

        *buf = 67109120;
        *&buf[4] = v83;
        v85 = "Overriding BLE ScanCore Compensation Percent %d failed (0<= ScanCoreCompensationPercent <=100)";
      }

      else
      {
        *(a1 + 2268) = 1;
        *(a1 + 2272) = v83;
        v84 = qword_100BCE918;
        if (!os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_194;
        }

        *buf = 67109120;
        *&buf[4] = v83;
        v85 = "Overriding BLE ScanCore Compensation Percent %d";
      }

      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, v85, buf, 8u);
    }

LABEL_194:
    *(a1 + 2269) = 0;
    v86 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "ScanCoreCoexQueryPeriod");
    v87 = (*(*v86 + 88))(v86, buf, __p, &v165 + 4);
    if (v169 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v171[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (!v87)
    {
      goto LABEL_204;
    }

    v88 = HIDWORD(v165);
    if (HIDWORD(v165) > 4 || HIDWORD(v165) == 3)
    {
      v89 = qword_100BCE918;
      if (!os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
LABEL_204:
        v91 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          v92 = *(a1 + 2248);
          v93 = *(a1 + 2250);
          v94 = *(a1 + 2252);
          v95 = *(a1 + 2260);
          v96 = v95 * 0.625;
          if (*(a1 + 2258))
          {
            v97 = v95 * 0.625;
          }

          else
          {
            v97 = 0.0;
          }

          if (*(a1 + 2258))
          {
            v98 = *(a1 + 2260);
          }

          else
          {
            v98 = 0;
          }

          if (*(a1 + 2258))
          {
            v95 = 0;
            v96 = 0.0;
          }

          v99 = "No";
          if (*(a1 + 2262))
          {
            v100 = "Yes";
          }

          else
          {
            v100 = "No";
          }

          v101 = *(a1 + 2272);
          if (*(a1 + 2267))
          {
            v99 = "Yes";
          }

          v102 = *(a1 + 2274);
          v103 = *(a1 + 2263);
          v104 = *(a1 + 2264);
          v105 = *(a1 + 2265);
          *buf = 67113218;
          *&buf[4] = v92;
          *&buf[8] = 2048;
          *&buf[10] = v92 * 0.625;
          *&buf[18] = 1024;
          *v171 = v93;
          *&v171[4] = 1024;
          *v172 = v94;
          *&v172[4] = 1024;
          v173 = v98;
          v174 = 1024;
          v175 = v95;
          v176 = 2048;
          v177 = v93 * 0.625;
          v178 = 2048;
          v179 = v94 * 0.625;
          v180 = 2048;
          v181 = v97;
          v182 = 2048;
          v183 = v96;
          v184 = 2082;
          v185 = v100;
          v186 = 2082;
          v187 = v99;
          v188 = 1024;
          v189 = v101;
          v190 = 1024;
          v191 = v102;
          v192 = 1024;
          v193 = v103;
          v194 = 1024;
          v195 = v104;
          v196 = 1024;
          v197 = v105;
          _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters Interval %d(%.2fms) Window %d/%d/%d/%d(%.2fms/%.2fms/%.2fms/%.2fms) Concurrent %{public}s Compensation %{public}s percent %d period %d MRC:%d:%d ScanPhy:%d", buf, 0x84u);
        }

        goto LABEL_219;
      }

      *buf = 67109120;
      *&buf[4] = v88;
      v90 = "Overriding BLE ScanCore Query Period %d failed (period must be in {0, 1, 2, 4}";
    }

    else
    {
      *(a1 + 2269) = 1;
      *(a1 + 2274) = v88;
      v89 = qword_100BCE918;
      if (!os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_204;
      }

      *buf = 67109120;
      *&buf[4] = v88;
      v90 = "Overriding BLE ScanCore Query Period %d";
    }

    _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, v90, buf, 8u);
    goto LABEL_204;
  }

  if (v169 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v171[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

LABEL_219:
  v163 = 0;
  v106 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "IsScanCompensationDisabled");
  v107 = (*(*v106 + 72))(v106, buf, __p, &v163);
  v108 = v163;
  if (v169 < 0)
  {
    operator delete(__p[0]);
  }

  v109 = v107 & v108;
  if ((v171[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v109)
    {
      goto LABEL_228;
    }
  }

  else if (!v109)
  {
    goto LABEL_228;
  }

  v110 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "Disable ScanCore Compensation", buf, 2u);
  }

  *(a1 + 2276) = 0;
LABEL_228:
  v111 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "ApplyRSSIOffset");
  v112 = (a1 + 2324);
  if (!(*(*v111 + 88))(v111, buf, __p, a1 + 2324) || (v113 = *v112) == 0 || v113 > 127)
  {
    if (v169 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v171[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    goto LABEL_242;
  }

  if (v169 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v171[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (v113 < -128)
  {
LABEL_242:
    *v112 = 0;
    goto LABEL_243;
  }

  v114 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v115 = *v112;
    *buf = 67109120;
    *&buf[4] = v115;
    _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "Warning: Applying RSSI offset of %d", buf, 8u);
  }

LABEL_243:
  *(a1 + 2277) = 0;
  v116 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "IsScanCoreDebug");
  if ((*(*v116 + 72))(v116, buf, __p, a1 + 2277))
  {
    v117 = *(a1 + 2277);
    if (v169 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v171[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
      if (!v117)
      {
        goto LABEL_256;
      }
    }

    else if (!v117)
    {
      goto LABEL_256;
    }

    v118 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "Enabling ScanCore Debug prints", buf, 2u);
    }
  }

  else
  {
    if (v169 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v171[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

LABEL_256:
  xpc_set_event_stream_handler("com.apple.alarm", 0, &stru_100B0CDC8);
  v119 = sub_10000E92C();
  sub_100007E30(buf, "SCANDEBUG");
  sub_100007E30(__p, "DebugControllerConfigDispatchSequence");
  if ((*(*v119 + 72))(v119, buf, __p, a1 + 4421))
  {
    v120 = *(a1 + 4421);
    if (v169 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v171[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
      if (!v120)
      {
        goto LABEL_269;
      }
    }

    else if (!v120)
    {
      goto LABEL_269;
    }

    v121 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "fDebugControllerConfigDispatchSequence is true, dispatching config after serial config", buf, 2u);
    }
  }

  else
  {
    if (v169 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v171[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

LABEL_269:
  v122 = sub_10000E92C();
  sub_100007E30(buf, "SCANDEBUG");
  sub_100007E30(__p, "ForceDispatchInsteadOfSerialConfig");
  if ((*(*v122 + 72))(v122, buf, __p, a1 + 4422))
  {
    v123 = *(a1 + 4422);
    if (v169 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v171[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
      if (v123)
      {
        goto LABEL_282;
      }
    }

    else if (v123)
    {
      goto LABEL_282;
    }

    v124 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "fForceDispatchInsteadOfSerialConfig is false, Forcing disable dispatch config", buf, 2u);
    }
  }

  else
  {
    if (v169 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v171[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

LABEL_282:
  v125 = sub_10000E92C();
  sub_100007E30(buf, "SCANDEBUG");
  sub_100007E30(__p, "DebugScanConfigSequence");
  v126 = (*(*v125 + 72))(v125, buf, __p, &byte_100BC7CC4);
  v127 = byte_100BC7CC4;
  if (v169 < 0)
  {
    operator delete(__p[0]);
  }

  v128 = v126 & v127;
  if ((v171[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v128)
    {
      goto LABEL_290;
    }
  }

  else if (!v128)
  {
    goto LABEL_290;
  }

  v129 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "gSniffScanDebug is true", buf, 2u);
  }

LABEL_290:
  v130 = sub_10000E92C();
  sub_100007E30(buf, "SCANDEBUG");
  sub_100007E30(__p, "DebugScanConfigHeySiri");
  v131 = (*(*v130 + 72))(v130, buf, __p, &byte_100BC7CC5);
  v132 = byte_100BC7CC5;
  if (v169 < 0)
  {
    operator delete(__p[0]);
  }

  v133 = v131 & v132;
  if ((v171[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v133)
    {
      goto LABEL_298;
    }
  }

  else if (!v133)
  {
    goto LABEL_298;
  }

  v134 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "gSniffScanHeysiriDebug is true", buf, 2u);
  }

LABEL_298:
  v135 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "DisablePrioritizationOverBT");
  v136 = (*(*v135 + 72))(v135, buf, __p, &byte_100BC7CC6);
  v137 = byte_100BC7CC6;
  if (v169 < 0)
  {
    operator delete(__p[0]);
  }

  v138 = v136 & v137;
  if ((v171[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v138)
    {
      goto LABEL_306;
    }
  }

  else if (!v138)
  {
    goto LABEL_306;
  }

  v139 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "Disable Scan Prioritization over BT.", buf, 2u);
  }

LABEL_306:
  v140 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "PrioritizationOverWiFiEnabled");
  v141 = (*(*v140 + 72))(v140, buf, __p, &byte_100BC7CC7);
  v142 = byte_100BC7CC7;
  if (v169 < 0)
  {
    operator delete(__p[0]);
  }

  v143 = v141 & v142;
  if ((v171[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v143)
    {
      goto LABEL_314;
    }
  }

  else if (!v143)
  {
    goto LABEL_314;
  }

  v144 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "Scan Prioritization over WiFi is supported.", buf, 2u);
  }

LABEL_314:
  *(a1 + 2278) = 0;
  v145 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "forcePassiveScan");
  if ((*(*v145 + 72))(v145, buf, __p, a1 + 2278))
  {
    v146 = *(a1 + 2278);
    if (v169 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v171[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
      if (!v146)
      {
        goto LABEL_331;
      }
    }

    else if (!v146)
    {
      goto LABEL_331;
    }

    v147 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "forcePassiveScanEnable");
    (*(*v147 + 72))(v147, buf, __p, a1 + 2279);
    if (v169 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v171[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v148 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v149 = *(a1 + 2278);
      v150 = *(a1 + 2279);
      *buf = 67109376;
      *&buf[4] = v149;
      *&buf[8] = 1024;
      *&buf[10] = v150;
      _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters to force passive scan to %d force to : %d", buf, 0xEu);
    }
  }

  else
  {
    if (v169 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v171[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

LABEL_331:
  *(a1 + 2280) = 0;
  v151 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "enableMatchingRuleAndAddressBatched");
  if ((*(*v151 + 72))(v151, buf, __p, a1 + 2280))
  {
    v152 = *(a1 + 2280);
    if (v169 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v171[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
      if (!v152)
      {
        goto LABEL_344;
      }
    }

    else if (!v152)
    {
      goto LABEL_344;
    }

    v153 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters to enable matching rules batched", buf, 2u);
    }
  }

  else
  {
    if (v169 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v171[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

LABEL_344:
  *(a1 + 2344) = 0u;
  *(a1 + 2360) = 0u;
  *(a1 + 2328) = 0u;
  *(a1 + 2312) = 0;
  *(a1 + 2744) = 0;
  *(a1 + 2751) = 0;
  sub_10079CA64(a1);
  sub_10079CB54(a1);
  *(a1 + 3240) = 0;
  sub_10079CC0C(a1);
  sub_10079CC8C(a1);
  sub_10079CE3C(a1, v154);
  v155 = +[NSMutableArray array];
  v156 = *(a1 + 4392);
  *(a1 + 4392) = v155;

  v157 = +[NSMutableArray array];
  v158 = *(a1 + 4400);
  *(a1 + 4400) = v157;

  v159 = +[NSMutableArray array];
  v160 = *(a1 + 4408);
  *(a1 + 4408) = v159;

  v161 = +[NSMutableDictionary dictionary];
  v162 = *(a1 + 2112);
  *(a1 + 2112) = v161;
}

void sub_10079C4B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void sub_10079C5D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "IsScanParamsWitheLNAOnandeLNABypassScanCoreOverriden");
  if ((*(*v2 + 72))(v2, buf, __p, v1 + 2247))
  {
    v3 = *(v1 + 2247);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v18 < 0)
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

    v4 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Scan offload on Scan Core", buf, 2u);
    }

    v5 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "WindowScanCoreELNAOn");
    v6 = (*(*v5 + 88))(v5, buf, __p, &dword_100BC7CC0);
    if (dword_100BC7CC0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v18 < 0)
    {
      operator delete(*buf);
    }

    if (v7)
    {
      v8 = dword_100BC7CC0;
      *(v1 + 2254) = dword_100BC7CC0;
      v9 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters ELNAOn WindowScancore %d", buf, 8u);
      }
    }

    v10 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "WindowScanCoreELNABypass");
    v11 = (*(*v10 + 88))(v10, buf, __p, &dword_100BC7CC0);
    if (dword_100BC7CC0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v18 < 0)
    {
      operator delete(*buf);
    }

    if (v12)
    {
      v13 = dword_100BC7CC0;
      *(v1 + 2256) = dword_100BC7CC0;
      v14 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters ELNA Bypass WindowScancore %d", buf, 8u);
      }
    }
  }

  else
  {
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v18 < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_10079C8F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10079C940(id a1, void *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  xpc_set_event();
  v3 = qword_100BCEA38;
  if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[NSDate date];
    v5 = 138412546;
    v6 = v4;
    v7 = 2082;
    v8 = string;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "com.apple.alarm xpc event handler at %@ for %{public}s", &v5, 0x16u);
  }

  if (qword_100B54770 != -1)
  {
    sub_1008743D0();
  }

  ++*(off_100B54768 + 117);
}

void sub_10079CA64(uint64_t a1)
{
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Reset BLE Scan Configuration Stat", v3, 2u);
  }

  *(a1 + 2712) = 0u;
  *(a1 + 2728) = 0u;
  *(a1 + 2680) = 0u;
  *(a1 + 2696) = 0u;
  *(a1 + 2648) = 0u;
  *(a1 + 2664) = 0u;
  *(a1 + 2616) = 0u;
  *(a1 + 2632) = 0u;
  *(a1 + 2584) = 0u;
  *(a1 + 2600) = 0u;
  *(a1 + 2552) = 0u;
  *(a1 + 2568) = 0u;
  *(a1 + 2520) = 0u;
  *(a1 + 2536) = 0u;
  *(a1 + 2488) = 0u;
  *(a1 + 2504) = 0u;
  *(a1 + 2456) = 0u;
  *(a1 + 2472) = 0u;
  *(a1 + 2424) = 0u;
  *(a1 + 2440) = 0u;
  *(a1 + 2392) = 0u;
  *(a1 + 2408) = 0u;
  *(a1 + 2524) = -1;
  *(a1 + 2392) = CFAbsoluteTimeGetCurrent();
  *(a1 + 2568) = 0u;
  *(a1 + 2584) = 0u;
  *(a1 + 2600) = 0u;
  *(a1 + 2616) = 0u;
  *(a1 + 2632) = 0u;
  *(a1 + 2648) = 0u;
  *(a1 + 2664) = 0u;
  *(a1 + 2680) = 0u;
  *(a1 + 2696) = 0u;
  *(a1 + 2712) = 0u;
  *(a1 + 2728) = 0u;
  *(a1 + 2744) = 0u;
  *(a1 + 2760) = 0u;
  *(a1 + 2776) = 0u;
  *(a1 + 2792) = 0u;
  *(a1 + 2808) = 0u;
  *(a1 + 2824) = 0u;
  *(a1 + 2840) = 0u;
  *(a1 + 2856) = 0u;
  *(a1 + 2872) = 0u;
  *(a1 + 2888) = 0u;
  *(a1 + 2904) = 0u;
  *(a1 + 2700) = -1;
  *(a1 + 2568) = CFAbsoluteTimeGetCurrent();
}

void sub_10079CB54(uint64_t a1)
{
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Reset BLE Scan Stat", v3, 2u);
  }

  *(a1 + 3208) = 0u;
  *(a1 + 3224) = 0u;
  *(a1 + 3176) = 0u;
  *(a1 + 3192) = 0u;
  *(a1 + 3144) = 0u;
  *(a1 + 3160) = 0u;
  *(a1 + 3112) = 0u;
  *(a1 + 3128) = 0u;
  *(a1 + 3080) = 0u;
  *(a1 + 3096) = 0u;
  *(a1 + 3048) = 0u;
  *(a1 + 3064) = 0u;
  *(a1 + 3016) = 0u;
  *(a1 + 3032) = 0u;
  *(a1 + 2984) = 0u;
  *(a1 + 3000) = 0u;
  *(a1 + 2952) = 0u;
  *(a1 + 2968) = 0u;
  *(a1 + 2920) = 0u;
  *(a1 + 2936) = 0u;
  *(a1 + 2888) = 0u;
  *(a1 + 2904) = 0u;
  *(a1 + 2856) = 0u;
  *(a1 + 2872) = 0u;
  *(a1 + 2824) = 0u;
  *(a1 + 2840) = 0u;
  *(a1 + 2792) = 0u;
  *(a1 + 2808) = 0u;
  *(a1 + 2760) = 0u;
  *(a1 + 2776) = 0u;
  *(a1 + 2760) = CFAbsoluteTimeGetCurrent();
}

void sub_10079CC0C(uint64_t a1)
{
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Reset ScanCore BLE Connection Scan Stat", v3, 2u);
  }

  *(a1 + 3280) = 0;
  *(a1 + 3264) = 0u;
  *(a1 + 3264) = CFAbsoluteTimeGetCurrent();
}

double sub_10079CC8C(uint64_t a1)
{
  v2 = a1 + 710;
  bzero((a1 + 200), 0x638uLL);
  *(a1 + 160) = 5046046;
  v3 = *(a1 + 2128) == 0;
  if (*(a1 + 2128))
  {
    v4 = 16;
  }

  else
  {
    v4 = 18;
  }

  *(a1 + 164) = v4;
  if (v3)
  {
    v5 = 14;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 165) = v5;
  *(a1 + 172) = -1;
  *(a1 + 170) = 0;
  *(a1 + 166) = 100;
  *(a1 + 181) = 0;
  *(a1 + 173) = 0;
  *(a1 + 188) = 0xFCB2160600000000;
  *(a1 + 196) = 25690112;
  *(a1 + 200) = 2;
  *(a1 + 229) = 1;
  *(a1 + 202) = 0;
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    *(a1 + 260) = 25690112;
    *(a1 + 256) = -22407674;
    *(a1 + 264) = 258;
    *(a1 + 292) = 1;
  }

  *(a1 + 704) = 5046158;
  v6 = *(a1 + 2128) == 0;
  if (*(a1 + 2128))
  {
    v7 = 16;
  }

  else
  {
    v7 = 18;
  }

  *(a1 + 708) = v7;
  if (v6)
  {
    v8 = 14;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 709) = v8;
  *(a1 + 716) = -1;
  *(a1 + 714) = 0;
  *v2 = 100;
  result = 0.0;
  *(a1 + 717) = 0u;
  *(a1 + 732) = 0xFCB2160600000000;
  *(a1 + 740) = 25690112;
  *(a1 + 744) = 2;
  *(a1 + 772) = 511;
  *(a1 + 745) = 257;
  *(a1 + 1248) = -43051482;
  *(a1 + 1260) = -1;
  *(v2 + 542) = 13107200;
  *(a1 + 1276) = 0;
  *(a1 + 1261) = 0u;
  return result;
}

uint64_t sub_10079CE3C(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 8; ++i)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = (a1 + 3304 + (i << 6) + 32 * v3);
      *(v5 + 3) = 0;
      *v5 = 0;
      v6 = (a1 + 3816 + (i << 6) + 32 * v3);
      *v6 = 0;
      *(v6 + 3) = 0;
      v7 = v4;
      v5[2] = 0;
      *(v5 + 11) = 0;
      v6[2] = 0;
      *(v6 + 11) = 0;
      v5[4] = 0;
      *(v5 + 19) = 0;
      v6[4] = 0;
      *(v6 + 19) = 0;
      v5[6] = 0;
      *(v5 + 27) = 0;
      *(v6 + 27) = 0;
      v3 = 1;
      v6[6] = 0;
      v4 = 0;
    }

    while ((v7 & 1) != 0);
  }

  v8 = 0;
  v50 = a1 + 3624;
  v51 = a1 + 3560;
  v48 = a1;
  v49 = a1 + 3688;
  v9 = 1;
  do
  {
    v10 = 0;
    v52 = v9;
    v53 = v51 + 32 * v8;
    v54 = v49 + 32 * v8;
    v11 = 1;
    v12 = v50 + 32 * v8;
    do
    {
      v13 = 0;
      v14 = v54 + 16 * v10;
      v15 = v11;
      v16 = 1;
      v17 = v53 + 16 * v10;
      v18 = v12 + 16 * v10;
      do
      {
        v19 = v16;
        v20 = sub_10000C798(a1, a2);
        a1 = (*(*v20 + 672))(v20);
        if ((a1 & 1) == 0)
        {
          v21 = v17 + 8 * v13;
          *v21 = 43;
          *(v21 + 4) = 0;
          *(v21 + 6) = 0;
          v22 = v18 + 8 * v13;
          *v22 = 16;
          *(v22 + 4) = 0;
          *(v22 + 6) = 0;
        }

        v16 = 0;
        v23 = v14 + 8 * v13;
        *v23 = 48;
        *(v23 + 4) = 0;
        *(v23 + 6) = 0;
        v13 = 1;
      }

      while ((v19 & 1) != 0);
      v11 = 0;
      v10 = 1;
    }

    while ((v15 & 1) != 0);
    v9 = 0;
    v8 = 1;
  }

  while ((v52 & 1) != 0);
  v24 = 0;
  *(v48 + 3864) = 3145728;
  *(v48 + 3868) = 0;
  v25 = 1;
  *(v48 + 3870) = 1;
  *(v48 + 3872) = 3145728;
  *(v48 + 3876) = 0;
  *(v48 + 3878) = 1;
  do
  {
    v26 = v48 + 4104 + 16 * v24;
    *(v26 + 8) = 2818048;
    *(v26 + 12) = 0;
    v27 = v25;
    *(v26 + 14) = 0;
    *v26 = 0;
    *(v26 + 4) = 80;
    *(v26 + 6) = 0;
    v28 = v48 + 4072 + 16 * v24;
    *(v28 + 8) = 524331;
    *(v28 + 12) = 0;
    *(v28 + 14) = 0;
    *v28 = 43;
    *(v28 + 4) = 16;
    v24 = 1;
    *(v28 + 6) = 0;
    v25 = 0;
  }

  while ((v27 & 1) != 0);
  v29 = 0;
  v30 = 1;
  do
  {
    v31 = v48 + 4168 + 16 * v29;
    *(v31 + 8) = 0x100000;
    *(v31 + 12) = 0;
    v32 = v30;
    *(v31 + 14) = 0;
    *v31 = 0;
    *(v31 + 4) = 32;
    *(v31 + 6) = 0;
    v33 = v48 + 4136 + 16 * v29;
    *(v33 + 8) = 524304;
    *(v33 + 12) = 0;
    *(v33 + 14) = 0;
    *v33 = 16;
    *(v33 + 4) = 16;
    v29 = 1;
    *(v33 + 6) = 0;
    v30 = 0;
  }

  while ((v32 & 1) != 0);
  v34 = 0;
  v35 = 1;
  do
  {
    v36 = 0;
    v37 = v35;
    v38 = 1;
    v39 = v48 + 4200 + 32 * v34;
    v40 = v48 + 3880 + 32 * v34;
    do
    {
      result = 0;
      v42 = v38;
      v43 = 1;
      v44 = v39 + 16 * v36;
      v45 = v40 + 16 * v36;
      do
      {
        v46 = v44 + 8 * result;
        *v46 = 32;
        *(v46 + 4) = 32;
        *(v46 + 6) = 0;
        v47 = v45 + 8 * result;
        *v47 = 0;
        LOBYTE(v46) = v43;
        *(v47 + 4) = 16;
        *(v47 + 6) = 0;
        result = 1;
        v43 = 0;
      }

      while ((v46 & 1) != 0);
      v38 = 0;
      v36 = 1;
    }

    while ((v42 & 1) != 0);
    v35 = 0;
    v34 = 1;
  }

  while ((v37 & 1) != 0);
  return result;
}

void sub_10079D198(id a1)
{
  v9 = 0;
  v1 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "ScanWindowSOSBeaconPrecisionFindRequest");
  v2 = (*(*v1 + 88))(v1, buf, __p, &v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(*buf);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else if (!v2)
  {
    goto LABEL_10;
  }

  v3 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = 48;
    v11 = 1024;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Override ScanWindowSOSBeaconPrecisionFindRequest %d by %d", buf, 0xEu);
  }

  word_100B54F88 = v9;
LABEL_10:
  v4 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "ScanWindowSOSBeaconActivateScan");
  v5 = (*(*v4 + 88))(v4, buf, __p, &v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(*buf);
    if (!v5)
    {
      return;
    }
  }

  else if (!v5)
  {
    return;
  }

  v6 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = 32;
    v11 = 1024;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Override ScanWindowSOSBeaconActivateScan %d by %d", buf, 0xEu);
  }

  word_100B54F8A = v9;
}

void sub_10079D3E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

__n128 sub_10079D428(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  *(a1 + 48) = *(a2 + 12);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = v2;
  v5 = *(a2 + 7);
  *(a2 + 7) = 0;
  *(a1 + 56) = v5;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = a2[4];
  *(a1 + 80) = *(a2 + 10);
  a2[4] = 0uLL;
  *(a2 + 10) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 13);
  a2[6] = 0uLL;
  *(a2 + 11) = 0;
  *(a1 + 112) = *(a2 + 14);
  v6 = a2 + 15;
  v7 = *(a2 + 15);
  *(a1 + 120) = v7;
  v8 = a1 + 120;
  v9 = *(a2 + 16);
  *(a1 + 128) = v9;
  if (v9)
  {
    *(v7 + 16) = v8;
    *(a2 + 14) = v6;
    *v6 = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *(a1 + 112) = v8;
  }

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  result = a2[9];
  *(a1 + 144) = result;
  *(a1 + 160) = *(a2 + 20);
  a2[9] = 0uLL;
  *(a2 + 20) = 0;
  return result;
}

BOOL sub_10079D4EC(id a1, unsigned int a2, const void *a3)
{
  v4 = *(a3 + 1);
  v12 = xmmword_1008A4F70;
  v13 = 0;
  sub_10000D03C(&v14, &v12);
  v5 = sub_100058794(v4 + 112, &v14);
  if (v4 + 120 != v5)
  {
    v14.n128_u16[0] = 22;
    if (a2 == 851969)
    {
      v6 = 2;
    }

    else
    {
      if (a2 != 851968)
      {
LABEL_8:
        v8 = [NSData dataWithBytes:&v14 length:2];
        v9 = sub_10000C5F8(v5 + 56);
        v10 = [NSData dataWithBytes:v9 length:sub_10000C5E0(v5 + 56)];
        v7 = [v10 rangeOfData:v8 options:0 range:{0, objc_msgSend(v10, "length")}] != 0x7FFFFFFFFFFFFFFFLL;

        return v7;
      }

      v6 = 1;
    }

    v14.n128_u8[1] = v6;
    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_10079D668(uint64_t a1, void *a2)
{
  v2 = *(a1 + 2064);
  v3 = (a1 + 2072);
  if (v2 == (a1 + 2072))
  {
    return 0;
  }

  v4 = a2 + 1;
  while (1)
  {
    v5 = v2[5];
    if (sub_1000178BC(v5) && *(*(v5 + 8) + 88) != *(*(v5 + 8) + 96))
    {
      v6 = *(v5 + 81);
      v7 = v6 == 32 || v6 == 16;
      if (v7)
      {
        v8 = *a2;
        if (*a2 != v4)
        {
          break;
        }
      }
    }

LABEL_27:
    v16 = v2[1];
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
        v17 = v2[2];
        v7 = *v17 == v2;
        v2 = v17;
      }

      while (!v7);
    }

    v2 = v17;
    if (v17 == v3)
    {
      return 0;
    }
  }

  while (1)
  {
    v9 = *(v8 + 25);
    v10 = (1 << v9) & *(*(v5 + 8) + ((v9 >> 3) & 0x18) + 280);
    v11 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      if (*(v5 + 255) < 0)
      {
        sub_100008904(__p, *(v5 + 232), *(v5 + 240));
        LODWORD(v9) = *(v8 + 25);
      }

      else
      {
        *__p = *(v5 + 232);
        v21 = *(v5 + 248);
      }

      v12 = v21 >= 0 ? __p : __p[0];
      v13 = sub_10079D8BC(v9);
      *buf = 136315906;
      v23 = v12;
      v24 = 1024;
      v25 = v9;
      v26 = 2080;
      v27 = v13;
      v28 = 1024;
      v29 = v10 != 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "LeObserver::currentMatchRulesIncludeTypes checking %s type %d(%s) hasAppleType:%d", buf, 0x22u);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v10)
    {
      return 1;
    }

    v14 = v8[1];
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
        v15 = v8[2];
        v7 = *v15 == v8;
        v8 = v15;
      }

      while (!v7);
    }

    v8 = v15;
    if (v15 == v4)
    {
      goto LABEL_27;
    }
  }
}

const char *sub_10079D8BC(int a1)
{
  result = "Invalid";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "Hash";
      break;
    case 2:
      result = "iBeacon";
      break;
    case 3:
      result = "AirPrint";
      break;
    case 4:
      result = "LegacyATVSetup";
      break;
    case 5:
      result = "AirDrop";
      break;
    case 6:
      result = "HomeKitV1";
      break;
    case 7:
      result = "ProxPairing";
      break;
    case 8:
      result = "HeySiri";
      break;
    case 9:
      result = "AirPlayTarget";
      break;
    case 10:
      result = "AirPlaySource";
      break;
    case 11:
      result = "MagicSwitch";
      break;
    case 12:
      result = "Continuity";
      break;
    case 13:
      result = "TetheringTarget";
      break;
    case 14:
      result = "TetheringSource";
      break;
    case 15:
      result = "NearbyAction";
      break;
    case 16:
      result = "NearbyInfo";
      break;
    case 17:
      result = "HomeKitV2";
      break;
    case 18:
      result = "ObjectDiscovery";
      break;
    case 19:
      result = "SpatialInteraction";
      break;
    case 20:
      result = "DCKit";
      break;
    case 21:
      result = "NearbyActionV2";
      break;
    case 22:
      result = "NearbyInfoV2";
      break;
    case 23:
    case 25:
      goto LABEL_5;
    case 24:
      result = "DSInfo";
      break;
    case 26:
      result = "NearbyActionNoWake";
      break;
    case 27:
      result = "SoftwareUpdate";
      break;
    default:
      if (a1 == 100)
      {
        result = "FastLEConnection";
      }

      else
      {
LABEL_5:
        result = "?";
      }

      break;
  }

  return result;
}

void sub_10079DA40(uint64_t a1)
{
  v2 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    sub_100874448();
  }

  v4 = sub_100007EE8(v2, v3);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10079DAE4;
  v5[3] = &unk_100ADF8F8;
  v5[4] = a1;
  sub_10000D334(v4, v5);
}

uint64_t sub_10079DAE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  *(v2 + 4426) = 1;
  v3 = sub_10000C798(a1, a2);
  result = (*(*v3 + 1048))(v3);
  if (result)
  {

    return sub_100017DE0(v2, 1);
  }

  return result;
}

void sub_10079DB70(uint64_t a1)
{
  v2 = qword_100BCE918;
  v3 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (*(a1 + 144))
    {
      v5 = "On";
    }

    else
    {
      v5 = "Off";
    }

    *buf = 136446210;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "LeObserver Power : system woke up, screen is %{public}s", buf, 0xCu);
  }

  v6 = sub_100007EE8(v3, v4);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10079DC84;
  v7[3] = &unk_100ADF8F8;
  v7[4] = a1;
  sub_10000D334(v6, v7);
}

void sub_10079DC84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  *(v2 + 4426) = 0;
  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10079DD08;
  v4[3] = &unk_100ADF8F8;
  v4[4] = v2;
  sub_10000CA94(v3, v4);
}

_BYTE *sub_10079DD1C(uint64_t a1)
{
  v11 = 0;
  sub_1000216B4(&v11);
  if (sub_1002D359C())
  {
    sub_1002D0A4C(0x200000);
    v2 = sub_100022214(&v11);
    v4 = 0;
    v5 = 167;
    do
    {
      if (*(a1 + v5) == 1)
      {
        v6 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
        {
          v7 = off_100B0D748[v4];
          *buf = 138412290;
          v13 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Destroying stale ADVBUFF(%@):", buf, 0xCu);
        }

        v2 = sub_10079DECC(a1, v4);
      }

      ++v4;
      v5 += 544;
    }

    while (v4 != 3);
    *(a1 + 4424) = 0;
    v8 = sub_100007EE8(v2, v3);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10079E31C;
    v10[3] = &unk_100ADF8F8;
    v10[4] = a1;
    sub_10000D334(v8, v10);
  }

  return sub_10002249C(&v11);
}

uint64_t sub_10079DECC(uint64_t a1, uint64_t a2)
{
  if (qword_100BC7D48 != -1)
  {
    sub_100874484();
  }

  if (a2 < 3)
  {
    v6 = a1 + 544 * a2;
    *(v6 + 171) = 0;
    *(v6 + 169) = 0;
    if (*(v6 + 167))
    {
      if (a2 != 2 && (byte_100BC7D40 & 1) != 0)
      {
        v7 = sub_10000C7D0(a1, a2);
        v8 = (*(*v7 + 2696))(v7);
        v30 = 0;
        v29 = 0;
        if (v8)
        {
          v10 = v8;
          v11 = 0;
          v12 = a1 + 544 * a2 + 228;
          do
          {
            if (*(v12 - 34))
            {
              v13 = sub_10000C7D0(v8, v9);
              BYTE2(v28) = *(v12 - 28);
              LOWORD(v28) = *(v12 - 30);
              v8 = (*(*v13 + 3360))(v13, a2, *(v12 - 36), &v29, *(v12 - 35), *(v12 - 34), *(v12 - 32), *(v12 - 31), v28, v12 - 27, v12);
              if (v8)
              {
                v14 = v8;
                v15 = qword_100BCE918;
                v8 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR);
                if (v8)
                {
                  v16 = off_100B0D748[a2];
                  *buf = 138543618;
                  v32 = v16;
                  v33 = 1024;
                  v34 = v14;
                  _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "ADVBUFF(%{public}@): Failed to remove ext buffer adv rule: %d", buf, 0x12u);
                }
              }

              else
              {
                --v10;
              }
            }

            if (v11 > 6)
            {
              break;
            }

            ++v11;
            v12 += 64;
          }

          while (v10);
        }

        v17 = sub_10000C7D0(v8, v9);
        (*(*v17 + 3368))(v17, a2);
      }

      v18 = qword_100BCE918;
      v19 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
      if (v19)
      {
        v21 = off_100B0D748[a2];
        *buf = 138543362;
        v32 = v21;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): Destroying ADV buffer", buf, 0xCu);
      }

      v22 = sub_10000C7D0(v19, v20);
      v5 = (*(*v22 + 3408))(v22, a2, 0, 0);
      v23 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        v24 = off_100B0D748[a2];
        *buf = 138543618;
        v32 = v24;
        v33 = 1024;
        v34 = v5;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): advBufControl Disabled returned %d", buf, 0x12u);
      }

      if (v5)
      {
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
        {
          sub_100874498();
        }
      }

      else
      {
        *(v6 + 167) = 0;
        *(v6 + 172) = -1;
      }
    }

    else
    {
      v25 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        v26 = off_100B0D748[a2];
        *buf = 138543362;
        v32 = v26;
        v5 = 12;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): destroyADVBuffer - not created", buf, 0xCu);
      }

      else
      {
        return 12;
      }
    }
  }

  else
  {
    v4 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v32) = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "HW ADV Buffer handle out of range (%d), ignoring agent request", buf, 8u);
    }

    return 7;
  }

  return v5;
}

void sub_10079E31C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10007C438(v1, 1u);
  *(v1 + 1863) = 0;
  *(v1 + 1856) = 0;
  v4 = sub_10000C7D0(v2, v3);
  v5 = sub_1004132C4(v4, v1 + 8);
  v7 = *sub_10000C7D0(v5, v6);
  v8 = (*(v7 + 624))();
  v10 = *sub_10000C7D0(v8, v9);
  v11 = (*(v10 + 976))();
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v13 = sub_1000E2738(v11, v12);
  v14 = (**v13)(v13, &v25);
  v16 = v25;
  if (v25 != v26)
  {
    while (1)
    {
      v17 = *v16;
      v32[0] = 0;
      v32[1] = 0;
      v18 = sub_1000E2738(v14, v15);
      v19 = (*(*v18 + 96))(v18, v17, 3, v32);
      v20 = qword_100BCE918;
      v14 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        sub_1000E5A58(v17, __p);
        v21 = v24 >= 0 ? __p : __p[0];
        *buf = 136446466;
        v29 = v21;
        v30 = 1024;
        v31 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Read encryption key for device %{public}s : result %d", buf, 0x12u);
        if (v24 < 0)
        {
          break;
        }
      }

      if (!v19)
      {
        goto LABEL_8;
      }

LABEL_10:
      if (++v16 == v26)
      {
        goto LABEL_11;
      }
    }

    operator delete(__p[0]);
    if (v19)
    {
      goto LABEL_10;
    }

LABEL_8:
    LOBYTE(__p[0]) = 0;
    *(__p + 1) = *(v17 + 128);
    *(__p + 5) = *(v17 + 132);
    sub_10079E618(v1, __p, v32);
    goto LABEL_10;
  }

LABEL_11:
  v22 = sub_100017E6C();
  sub_1003128B0(v22 + 384, v1 + 40);
  if (qword_100B50AA0 != -1)
  {
    sub_100874520();
  }

  sub_10009BE34(off_100B50A98, v1 + 2240);
  sub_10007F460(v1);
  *(v1 + 4423) = 0;
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }
}

void sub_10079E618(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      v5 = a2 + 1;
      v6 = sub_100063D0C((a2[1] << 40) | (a2[2] << 32) | (a2[3] << 24) | (a2[4] << 16) | (a2[5] << 8) | a2[6] | (*a2 << 48));
      if (![v6 length])
      {
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
        {
          sub_10087455C();
        }

        goto LABEL_42;
      }

      v7 = [NSData dataWithBytes:a3 length:16];
      [*(a1 + 2112) setObject:v7 forKeyedSubscript:v6];

      if (qword_100B508F0 != -1)
      {
        sub_100874548();
      }

      LODWORD(v20) = *v5;
      WORD2(v20) = *(v5 + 2);
      v8 = sub_1000E6554(off_100B508E8, &v20, 1);
      if (!v8)
      {
LABEL_42:

        return;
      }

      v20 = 0;
      v21 = 0;
      v22 = 0;
      if (!sub_1000DFC04(v8, &v20))
      {
        goto LABEL_41;
      }

      v9 = v20;
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 3);
      if (v10 < 4)
      {
        goto LABEL_41;
      }

      v11 = (v20 + 72);
      if (*(v20 + 95) < 0)
      {
        if (*(v20 + 80) <= 1uLL)
        {
          goto LABEL_23;
        }

        v11 = *v11;
      }

      else if (*(v20 + 95) <= 1u)
      {
        goto LABEL_23;
      }

      v12 = [NSString stringWithUTF8String:v11];
      if ([v12 length])
      {
        v13 = [NSData dataWithBytes:a3 length:16];
        [*(a1 + 2112) setObject:v13 forKeyedSubscript:v12];
      }

      v9 = v20;
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 3);
LABEL_23:
      if (v10 < 9)
      {
        goto LABEL_41;
      }

      v14 = (v9 + 192);
      if (*(v9 + 215) < 0)
      {
        if (*(v9 + 200) <= 1uLL)
        {
          goto LABEL_32;
        }

        v14 = *v14;
      }

      else if (*(v9 + 215) <= 1u)
      {
        goto LABEL_32;
      }

      v15 = [NSString stringWithUTF8String:v14];
      if ([v15 length])
      {
        v16 = [NSData dataWithBytes:a3 length:16];
        [*(a1 + 2112) setObject:v16 forKeyedSubscript:v15];
      }

      v9 = v20;
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 3);
LABEL_32:
      if (v10 >= 0xA)
      {
        v17 = (v9 + 216);
        if ((*(v9 + 239) & 0x80000000) == 0)
        {
          if (*(v9 + 239) <= 1u)
          {
            goto LABEL_41;
          }

LABEL_38:
          v18 = [NSString stringWithUTF8String:v17];
          if ([v18 length])
          {
            v19 = [NSData dataWithBytes:a3 length:16];
            [*(a1 + 2112) setObject:v19 forKeyedSubscript:v18];
          }

          goto LABEL_41;
        }

        if (*(v9 + 224) > 1uLL)
        {
          v17 = *v17;
          goto LABEL_38;
        }
      }

LABEL_41:
      v23 = &v20;
      sub_1000161FC(&v23);
      goto LABEL_42;
    }

    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100874598();
    }
  }

  else if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
  {
    sub_1008745D4();
  }
}

void sub_10079E984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_1000161FC(&a12);

  _Unwind_Resume(a1);
}

void sub_10079EA00(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(v4, "POWER");
  sub_100007E30(__p, "ForceWakeScanForClient");
  (*(*v1 + 72))(v1, v4, __p, &byte_100BC7CF0);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_10079EAA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_10079EAD8(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(v4, "POWER");
  sub_100007E30(__p, "ForceWakeScanConfig");
  (*(*v1 + 72))(v1, v4, __p, &byte_100BC7D00);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_10079EB7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

_BYTE *sub_10079EBB0(uint64_t a1)
{
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LeObserver::stackWillStop enter", buf, 2u);
  }

  v9 = 0;
  sub_1000216B4(&v9);
  if (sub_1002D359C())
  {
    sub_1002D0A4C(0);
    v3 = sub_100022214(&v9);
    v5 = sub_100007EE8(v3, v4);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10079ECF4;
    v8[3] = &unk_100ADF8F8;
    v8[4] = a1;
    sub_10000D334(v5, v8);
    v6 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "LeObserver::stackWillStop exit", buf, 2u);
    }
  }

  return sub_10002249C(&v9);
}

void sub_10079ECF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_100017E6C();
  sub_10036F1AC(v2 + 384, v1 + 40);
  v5 = *sub_10000C7D0(v3, v4);
  v6 = (*(v5 + 624))();
  v8 = sub_10000C7D0(v6, v7);
  sub_10041332C(v8, v1 + 8);
  sub_10079EE84(v1);
  v9 = *(v1 + 2136);
  *(v1 + 2136) = 0;

  v10 = *(v1 + 2144);
  *(v1 + 2144) = 0;

  sub_10007C438(v1, 0);
  *(v1 + 1988) = 0;
  v11 = *(v1 + 2064);
  v12 = (v1 + 2072);
  if (v11 != (v1 + 2072))
  {
    do
    {
      v13 = v11[5];
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }

      v14 = v11[1];
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
          v15 = v11[2];
          v16 = *v15 == v11;
          v11 = v15;
        }

        while (!v16);
      }

      v11 = v15;
    }

    while (v15 != v12);
  }

  sub_10000CEDC(v1 + 2064, *(v1 + 2072));
  *(v1 + 2064) = v12;
  *v12 = 0u;
  sub_1007B20B4(v1 + 2088, *(v1 + 2096));
  *(v1 + 2088) = v1 + 2096;
  *(v1 + 2096) = 0u;
  sub_1000367C8(v1);
  sub_10079F094(v1, v17);
  sub_10079F1D0(v1);
  sub_10003C478(v1, v18);

  sub_1005B0DAC(v1 + 56);
}

uint64_t sub_10079EE84(uint64_t a1)
{
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Destroying match table for all registered types", buf, 2u);
  }

  v3 = *(a1 + 1832);
  if (v3 != (a1 + 1840))
  {
    do
    {
      v4 = *(v3 + 28);
      v5 = *(v3 + 29);
      v6 = *(v3 + 15);
      v7 = *(v3 + 18);
      v8 = *(v3 + 19);
      v9 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109632;
        *&buf[4] = v6;
        v17 = 1024;
        v18 = v4;
        v19 = 1024;
        v20 = v7;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "handle:%d type:%d length:%d setCreated(false) setEnabled(false)", buf, 0x14u);
      }

      v15 = v6;
      *buf = &v15;
      v10 = sub_1000BED44(a1 + 1832, &v15, &unk_1008A9BD0, buf);
      *(v10 + 28) = v4;
      *(v10 + 29) = v5;
      *(v10 + 15) = v6;
      *(v10 + 8) = 0;
      *(v10 + 18) = v7;
      *(v10 + 19) = v8;
      v11 = v3[1];
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
          v12 = v3[2];
          v13 = *v12 == v3;
          v3 = v12;
        }

        while (!v13);
      }

      v3 = v12;
    }

    while (v12 != (a1 + 1840));
  }

  if (qword_100B51098 != -1)
  {
    sub_1008746E4();
  }

  sub_10048A1BC(qword_100B51090, &off_100B344A0);
  *(a1 + 1872) = 0;
  sub_1000C71BC(a1, 22, 0);
  return 0;
}

void sub_10079F094(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C7D0(a1, a2);
  if ((*(*v3 + 3008))(v3))
  {
    v4 = 0;
    v5 = a1 + 167;
    do
    {
      if (*v5 == 1)
      {
        v6 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
        {
          v7 = off_100B0D748[v4];
          *buf = 138412290;
          v9 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Clear stale ADVBUFF(%@):", buf, 0xCu);
        }

        *v5 = 0;
        *(v5 + 4) = -256;
      }

      ++v4;
      v5 += 544;
    }

    while (v4 != 3);
  }
}

uint64_t sub_10079F1D0(dispatch_object_t *a1)
{
  v2 = qword_100BCEA38;
  if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Disarming contactTracing timers", v8, 2u);
  }

  if (qword_100B54770 != -1)
  {
    sub_1008743D0();
  }

  sub_100511FD0(off_100B54768);
  sub_1007A17DC(a1, v3);
  sub_1007A93E8(a1);
  v4 = a1[288];
  if (v4)
  {
    dispatch_source_cancel(v4);
    dispatch_release(a1[288]);
    a1[288] = 0;
  }

  v5 = a1[286];
  if (v5)
  {
    dispatch_source_cancel(v5);
    dispatch_release(a1[286]);
    a1[286] = 0;
  }

  v6 = a1[287];
  if (v6)
  {
    dispatch_source_cancel(v6);
    dispatch_release(a1[287]);
    a1[287] = 0;
  }

  return xpc_set_event();
}

void sub_10079F2D8(uint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  v5 = *a2;
  v6 = v2;
  v7 = a2[2];
  v8 = *(a2 + 6);
  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10079F388;
  v4[3] = &unk_100B048E0;
  sub_10000CA94(v3, v4);
}

void sub_10079F388(uint64_t a1)
{
  v1 = *(a1 + 48);
  v30[0] = *(a1 + 32);
  v30[1] = v1;
  v31 = *(a1 + 64);
  v32 = *(a1 + 80);
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
  {
    sub_10087470C();
  }

  v2 = BYTE7(v31);
  v3 = qword_100BCE918;
  v4 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG);
  if (BYTE7(v31))
  {
    if (v4)
    {
      v8 = CUPrintAddress();
      *buf = 138413570;
      v16 = v8;
      v17 = 1024;
      v18 = BYTE7(v31);
      v19 = 1040;
      v20 = 31;
      v21 = 2096;
      v22 = v30 + 8;
      v23 = 1024;
      v24 = SBYTE14(v31);
      v25 = 1024;
      v26 = HIBYTE(v31);
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "aopReceivedDeviceFoundEvent: Parsing entry, address:%@ len:%d payload:%.31P rssi:%d channel:%d", buf, 0x2Eu);

      v2 = BYTE7(v31);
    }

    if (v2 < 0x20)
    {
      bzero(buf, 0x1788uLL);
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v10 = 0u;
      sub_1000075EC(&v10 + 2, &v31 + 8, 6uLL);
      v5 = (BYTE2(v10) << 40) | (BYTE3(v10) << 32) | (BYTE4(v10) << 24) | (BYTE5(v10) << 16) | (BYTE6(v10) << 8) | BYTE7(v10);
      if (v5 && (!HIWORD(v5) || HIWORD(v5) == 1 && (BYTE2(v10) & 0xC0) != 0x80))
      {
        LOWORD(v10) = 256;
        WORD4(v10) = BYTE7(v31);
        *&v11 = v30 + 8;
        BYTE11(v12) = 0;
        BYTE8(v11) = BYTE14(v31);
        v9 = 0;
        sub_1000216B4(&v9);
        sub_100008D54(&v10, buf, v7);
        sub_100022214(&v9);
        BYTE2(v18) = 0;
        v28 = 0;
        v29 = 1;
        v27 = 0;
        sub_100009B00(buf);
      }

      v6 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_100874790(v5, v6);
      }
    }

    else if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_10087482C();
    }
  }

  else if (v4)
  {
    sub_100874898();
  }
}

void sub_10079F688(uint64_t a1, void *a2)
{
  v4 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3);
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AOPBTBUFF: Read Event with %lu advertisements", &buf, 0xCu);
  }

  buf = 0uLL;
  v14 = 0;
  v6 = sub_10048D004(&buf, a2);
  v8 = sub_100007EE8(v6, v7);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_10079F860;
  v9[3] = &unk_100B0CE88;
  v9[4] = a1;
  __p = 0;
  __dst = 0;
  v12 = 0;
  if (*(&buf + 1) != buf)
  {
    sub_10048D080(&__p, 0x6DB6DB6DB6DB6DB7 * ((*(&buf + 1) - buf) >> 3));
  }

  sub_10000CA94(v8, v9);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  if (buf)
  {
    *(&buf + 1) = buf;
    operator delete(buf);
  }
}

void sub_10079F824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_10079F860(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v34 = v1[4];
  v2 = qword_100BCE918;
  v3 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "AOPBTBUFF: Read Event unpack devices", buf, 2u);
  }

  v5 = v1[5];
  if (v1[6] != v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 39;
    do
    {
      v9 = *(v5 + v8);
      if (v9 < 0x20)
      {
        bzero(buf, 0x1788uLL);
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
        sub_1000075EC(&v36 + 2, v5 + v8 + 1, 6uLL);
        BYTE1(v36) = 1;
        v11 = BYTE2(v36);
        v12 = BYTE3(v36);
        v13 = BYTE4(v36);
        v14 = BYTE5(v36);
        v15 = BYTE6(v36);
        v16 = BYTE7(v36);
        if (qword_100B508C0 != -1)
        {
          sub_100874964();
        }

        v17 = (v12 << 32) | (v11 << 40) | (v13 << 24) | (v14 << 16) | (v15 << 8) | v16 | 0x1000000000000;
        if (!sub_1007CAE38(off_100B508B8, v17, &v36 + 1) && (v17 = (BYTE2(v36) << 40) | (BYTE3(v36) << 32) | (BYTE4(v36) << 24) | (BYTE5(v36) << 16) | (BYTE6(v36) << 8) | BYTE7(v36) | (BYTE1(v36) << 48)) == 0 || HIWORD(v17) && (HIWORD(v17) == 1 ? (v18 = (v17 & 0xC00000000000) == 0x800000000000) : (v18 = 1), v18))
        {
          v19 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
          {
            sub_10004D9B0(v17);
            p_p = &__p;
            if (SBYTE3(v47) < 0)
            {
              p_p = __p;
            }

            *v41 = 136315138;
            *&v41[4] = p_p;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "AOPBTBUFF: Remote Bluetooth address %s is invalid!", v41, 0xCu);
            if (SBYTE3(v47) < 0)
            {
              operator delete(__p);
            }
          }
        }

        else
        {
          v21 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
          {
            v22 = *(v1[5] + v8 - 39);
            sub_10004D9B0(v17);
            v23 = v42;
            v24 = *v41;
            v25 = *(v1[5] + v8);
            v26 = CUPrintHex();
            v27 = v26;
            v28 = v41;
            if (v23 < 0)
            {
              v28 = v24;
            }

            v29 = *(v1[5] + v8 + 7);
            LODWORD(__p) = 67110402;
            HIDWORD(__p) = v7;
            v44 = 2048;
            v45 = v22;
            v46 = 2080;
            v47 = v28;
            v48 = 1024;
            v49 = v25;
            v50 = 2112;
            v51 = v26;
            v52 = 1024;
            v53 = v29;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "AOPBTBUFF: Parsing entry %d, TIMESTAMP %f, ADDR %s, LEN %d, PAYLOAD %@, RSSI %3d", &__p, 0x32u);
            if (v42 < 0)
            {
              operator delete(*v41);
            }
          }
        }

        LOBYTE(v36) = 3;
        v30 = (v1[5] + v8);
        WORD4(v36) = *v30;
        BYTE8(v37) = v30[7];
        *&v37 = v30 - 31;
        BYTE11(v38) = 0;
        LOBYTE(__p) = 0;
        sub_1000216B4(&__p);
        sub_100008D54(&v36, buf, v31);
        sub_100022214(&__p);
        v56 = 0;
        v32 = v1[5];
        v58 = *(v32 + v8 - 39);
        if (*(v32 + v8 + 9))
        {
          v59 = *(v32 + v8 + 9);
        }

        v57 = *(v32 + v8 + 8);
        v60 = (v6 + 0x6DB6DB6DB6DB6DB7 * ((v1[6] - v32) >> 3)) > 1;
        v61 = 1;
        sub_100009B00(buf);
      }

      v10 = qword_100BCE918;
      v3 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR);
      if (v3)
      {
        *buf = 67109120;
        v55 = v9;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Ignoring invalid data length %d", buf, 8u);
      }

      ++v7;
      v5 = v1[5];
      v8 += 56;
      --v6;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((v1[6] - v5) >> 3) > v7);
  }

  v33 = sub_100007EE8(v3, v4);
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10079FDE8;
  v35[3] = &unk_100ADF8F8;
  v35[4] = v34;
  sub_10000CA94(v33, v35);
  v34[1870] = 0;
  v34[1888] = 0;
  sub_10007CD50(v34);
}