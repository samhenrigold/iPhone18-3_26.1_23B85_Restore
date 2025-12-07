uint64_t sub_100033424(uint64_t a1)
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

uint64_t sub_1000334A4(uint64_t a1)
{
  sub_1000334DC((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_1000334DC(void *a1)
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
    v6 = &v2[v5 / 0x22];
    v7 = *v6 + 120 * (v5 % 0x22);
    v8 = v2[(a1[5] + v5) / 0x22] + 120 * ((a1[5] + v5) % 0x22);
    if (v7 != v8)
    {
      do
      {
        v9 = *(v7 + 112);
        if (v9)
        {
          *(v9 + 16) = 0;
        }

        v10 = *(v7 + 8);
        if (v10)
        {
          sub_10000E984(v10);
        }

        v7 += 120;
        if (v7 - *v6 == 4080)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 17;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_20;
    }

    v13 = 34;
  }

  a1[4] = v13;
LABEL_20:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return sub_10003363C(a1);
}

uint64_t sub_10003363C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

unint64_t sub_10003368C(uint64_t (*a1)(char **), void *a2, uint64_t a3, unint64_t a4, char a5)
{
  v8 = 0;
  v9 = 0;
  v10 = *(a3 + 208);
  v30[0] = 0;
  v39 = 0;
  while (!sub_10002DE0C(a2, a3))
  {
    if (a2[26] >= v10 || v9 >= a4)
    {
      break;
    }

    if (sub_1000E9608())
    {
      *&v28 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = io_result_t (&)(const sg_entry &)]";
      *(&v28 + 1) = 119;
      v29 = 2;
      sub_1000339C8(v25, &v28);
      sub_100001FE8(v27, "sg: ", 4);
      sub_100192838(v27, a2);
      std::ostream::~ostream();
      sub_100033C40(v25);
      std::ios::~ios();
    }

    v25[0] = 0;
    v25[1] = v10;
    v26 = 2;
    sub_100093990(a2, v25, &v28);
    v12 = a1(&v28);
    v14 = v12;
    v15 = v12 >= 0 || v12 == 0;
    v16 = v15;
    if (v15)
    {
      v17 = v13;
      if ((v8 & 1) == 0)
      {
        v8 = 1;
      }

      v18 = a2[26];
      if (v18 > v13 || *(a3 + 208) - v18 < v12)
      {
        sub_1000302E0(v24, a2);
        sub_10002F174(v24, a3, v17, v14, a4, v25);
        sub_100033B34(v30, v25);
        sub_10002F23C(v25);
        sub_10000FF88(v24);
        sub_1000302E0(v25, &v36);
        sub_100030B94(a2, v25);
        sub_10000FF88(v25);
        sub_1000302E0(v25, &v33);
        sub_100030B94(a3, v25);
        sub_10000FF88(v25);
      }

      if (a5)
      {
        sub_10002E60C(a2, v14);
      }

      else
      {
        sub_10002E6D0(a2, v14);
      }

      v9 += v14;
    }

    else
    {
      if (v12 >= 0)
      {
        v19 = v12;
      }

      else
      {
        v19 = -v12;
      }

      v21 = -v19;
    }

    if (*(&v28 + 1))
    {
      sub_10000E984(*(&v28 + 1));
    }

    if ((v16 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  v21 = v9;
LABEL_35:
  if (v39 == 1)
  {
    if (v38)
    {
      sub_10000E984(v38);
    }

    if (v37)
    {
      sub_10000E984(v37);
    }

    if (v35)
    {
      sub_10000E984(v35);
    }

    if (v34)
    {
      sub_10000E984(v34);
    }

    if (v32)
    {
      sub_10000E984(v32);
    }

    if (v31)
    {
      sub_10000E984(v31);
    }
  }

  return v21;
}

void sub_100033944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_10000FF88(&a41);
  if (STACK[0x3D8])
  {
    sub_10000E984(STACK[0x3D8]);
  }

  sub_10002F2A8(&STACK[0x440]);
  _Unwind_Resume(a1);
}

void *sub_1000339C8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100033B78(a1, a2);
  *a1 = off_1001F93D0;
  a1[45] = &off_1001F94D0;
  a1[46] = &off_1001F94F8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001F93D0;
  a1[45] = off_1001F9458;
  a1[46] = off_1001F9480;
  return a1;
}

void sub_100033ACC(_Unwind_Exception *a1)
{
  sub_100033C40(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100033AF0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100033C40(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100033B34(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 720) == 1)
  {
    sub_1000343D8(a1, a2);
  }

  else
  {
    sub_100030578(a1, a2);
    *(a1 + 720) = 1;
  }

  return a1;
}

uint64_t sub_100033B78(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1001F9568;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100033C28(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100033C40(uint64_t a1)
{
  *a1 = &off_1001F9568;
  sub_100034080(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100033DAC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100033C40(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100033E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100033E50(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100033EBC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100033C40(v1);

  return std::ios::~ios();
}

void sub_100033F08(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100033C40(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100033F6C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100033C40(v1);

  return std::ios::~ios();
}

void sub_100033FCC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100033C40(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100034048(uint64_t a1)
{
  sub_100033C40(a1);

  operator delete();
}

uint64_t sub_100034080(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_1000341F4((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000341CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000341F4(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 624;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 624;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000343D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v6;
  *(a1 + 24) = v5;
  v7 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v8 = *(a1 + 72);
  *(a1 + 64) = v7;
  if (v8)
  {
    sub_10000E984(v8);
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v9 = *(a2 + 112);
  v10 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v9;
  *(a1 + 128) = v10;
  v11 = *(a2 + 152);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  v12 = *(a1 + 160);
  *(a1 + 152) = v11;
  if (v12)
  {
    sub_10000E984(v12);
  }

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 264) = *(a2 + 264);
  if (*(a1 + 256) == *(a2 + 256))
  {
    if (*(a1 + 256))
    {
      v13 = *(a2 + 200);
      v14 = *(a2 + 216);
      v15 = *(a2 + 232);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 232) = v15;
      *(a1 + 216) = v14;
      *(a1 + 200) = v13;
    }
  }

  else if (*(a1 + 256))
  {
    *(a1 + 256) = 0;
  }

  else
  {
    sub_10009386C(a1 + 200, a2 + 200);
    *(a1 + 256) = 1;
  }

  sub_100030AE4(a1);
  return a1;
}

void sub_1000347F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint8_t buf, int a14, __int16 a15, uint64_t a16, __int16 a17, uint64_t a18, __int16 a19, uint64_t a20, __int16 a21, int a22)
{
  if (a2 == 1)
  {
    [DIError failWithDIException:__cxa_begin_catch(a1) prefix:@"Failed opening the shadow/cache file(s)" error:v24];
    __cxa_end_catch();
    JUMPOUT(0x1000347A0);
  }

  _Unwind_Resume(a1);
}

void sub_100035614(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14)
{
  sub_10000E950(&a13);
  v20 = a14;
  a14 = 0;
  if (v20)
  {
    (*(*v20 + 16))(v20);
  }

  if (a2 == 2)
  {
    [DIError failWithDIException:__cxa_begin_catch(a1) prefix:@"user data retrieving failed" error:v14];
    __cxa_end_catch();
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(a1);
    }

    v21 = [objc_begin_catch(a1) reason];
    [DIError failWithEnumValue:150 verboseInfo:v21 error:v14];

    objc_end_catch();
  }

  JUMPOUT(0x1000355D8);
}

void sub_100035CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = a2;
  if (a12)
  {
    (*(*a12 + 16))(a12, a2, a3, a4, a5, a6, a7, a8);
  }

  if (v15 == 2)
  {
    [DIError failWithDIException:__cxa_begin_catch(a1) prefix:@"user data embedding failed" error:v12];
    __cxa_end_catch();
  }

  else
  {
    if (v15 != 1)
    {
      _Unwind_Resume(a1);
    }

    v16 = [objc_begin_catch(a1) reason];
    [DIError failWithEnumValue:150 verboseInfo:v16 error:v12];

    objc_end_catch();
  }

  JUMPOUT(0x1000359C4);
}

void sub_100035F78(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v2 = (*(*(a2 + 560) + 144) + *(*(a2 + 560) + 152) - 1) / *(*(a2 + 560) + 152);
  sub_1000898AC();
}

void sub_1000360A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1000384E8(va);
  if (a11)
  {
    (*(*a11 + 16))(a11);
  }

  _Unwind_Resume(a1);
}

void sub_10003613C(void *a1, uint64_t a2)
{
  v3 = a1[1];
  *&v9 = *a1;
  *(&v9 + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  do
  {
    while (1)
    {
      (*(*v9 + 176))(v9, a2);
      v4 = v9;
      if (*(&v9 + 1))
      {
        atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      if (v3)
      {
        sub_10000E984(v3);
      }

      sub_100192F44(&v9, &v8);
      v5 = v8;
      v8 = 0uLL;
      v6 = *(&v9 + 1);
      v9 = v5;
      if (v6)
      {
        break;
      }

      v3 = *(&v4 + 1);
      if (v5 == v4)
      {
        goto LABEL_13;
      }
    }

    sub_10000E984(v6);
    v7 = v9;
    if (*(&v8 + 1))
    {
      sub_10000E984(*(&v8 + 1));
    }

    v3 = *(&v4 + 1);
  }

  while (v7 != v4);
LABEL_13:
  if (*(&v4 + 1))
  {
    sub_10000E984(*(&v4 + 1));
  }

  if (*(&v9 + 1))
  {
    sub_10000E984(*(&v9 + 1));
  }
}

void sub_100036244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    sub_10000E984(v12);
  }

  if (a12)
  {
    sub_10000E984(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100036274(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = off_1001F89F0;
  *(a1 + 32) = off_1001F8A20;
  *(a1 + 40) = off_1001F8A50;
  *(a1 + 48) = off_1001F8A80;
  *a1 = off_1001F9D38;
  *(a1 + 8) = off_1001F9D80;
  *(a1 + 16) = off_1001F9DC8;
  *(a1 + 24) = off_1001F9E10;
  *(a1 + *(*a1 - 48)) = off_1001F9E58;
  *(a1 + *(*a1 - 56)) = off_1001F9EA0;
  *(a1 + *(*a1 - 64)) = off_1001F9EE8;
  *a1 = off_1001F9B10;
  *(a1 + 8) = off_1001F9B58;
  *(a1 + 16) = off_1001F9BA0;
  *(a1 + 24) = off_1001F9BE8;
  *(a1 + *(*a1 - 48)) = off_1001F9C30;
  *(a1 + *(*a1 - 56)) = off_1001F9C78;
  *(a1 + *(*a1 - 64)) = off_1001F9CC0;
  *(a1 + 56) = off_1001F9F48;
  *(a1 + 8) = off_1001F9FA0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = off_1001FA090;
  *(a1 + 128) = 0;
  *(a1 + 24) = off_1001FA0E8;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  sub_10003699C((a1 + 160), &off_1001F9A90, a2);
  *a1 = off_1001F9658;
  *(a1 + 8) = off_1001F96A0;
  *(a1 + 16) = off_1001F96E8;
  *(a1 + 24) = off_1001F9730;
  *(a1 + 32) = off_1001F9778;
  *(a1 + 40) = off_1001F97C0;
  *(a1 + 48) = off_1001F9808;
  *(a1 + 56) = off_1001F9868;
  *(a1 + 120) = off_1001F98D8;
  *(a1 + 160) = off_1001F9948;
  *(a1 + *(*a1 - 112) + 8) = (*(**(a2 + 560) + 40))(*(a2 + 560));
  sub_100035F78(a1, a2);
}

void sub_100036944(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_10000E984(v1);
  }

  sub_100025DE0(v2, &off_1001F9A90);
  sub_100025F68(v3, &off_1001F9A70);
  _Unwind_Resume(a1);
}

uint64_t *sub_10003699C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = off_1001F8F10;
  v4 = a2[1];
  *a1 = v4;
  *(a1 + *(v4 - 24)) = a2[2];
  v5 = *a2;
  *a1 = *a2;
  *(a1 + *(v5 - 24)) = a2[3];
  a1[1] = 0;
  a1[2] = 0;
  v6 = (a1 + 1);
  a1[3] = 0;
  v10 = CFUUIDCreateFromUUIDBytes(kCFAllocatorDefault, *(*(a3 + 560) + 160));
  v7 = CFUUIDCreateString(kCFAllocatorDefault, v10);
  v9 = v7;
  if (*v6)
  {
    CFRelease(*v6);
    v7 = v9;
  }

  a1[1] = v7;
  v9 = 0;
  sub_1000283C8(&v9);
  sub_1000292AC(&v10);
  return a1;
}

void sub_100036B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_1000283C8(&a9);
  sub_1000292AC(&a10);
  sub_1000283C8((v10 + 24));
  sub_1000283C8((v10 + 16));
  sub_1000283C8(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_100036B98(void *a1, uint64_t a2, uint64_t a3)
{
  if ((*(*(a2 + 560) + 144) + *(*(a2 + 560) + 152) - 1) / *(*(a2 + 560) + 152) - 1 == a3)
  {
    return *(a1 + *(*a1 - 112) + 8) - *(a2 + 64) * a3;
  }

  else
  {
    return *(a2 + 64);
  }
}

uint64_t sub_100036BE8(uint64_t a1)
{
  *(a1 + 160) = off_1001FA1D8;
  *(a1 + 48) = off_1001FA230;
  sub_1000283C8((a1 + 184));
  sub_1000283C8((a1 + 176));
  sub_1000283C8((a1 + 168));
  *(a1 + 120) = off_1001FA090;
  *(a1 + 24) = off_1001FA0E8;
  sub_1000283C8((a1 + 152));
  return a1;
}

void sub_100036CAC(uint64_t a1)
{
  *(a1 + 160) = off_1001FA1D8;
  *(a1 + 48) = off_1001FA230;
  sub_1000283C8((a1 + 184));
  sub_1000283C8((a1 + 176));
  sub_1000283C8((a1 + 168));
  *(a1 + 120) = off_1001FA090;
  *(a1 + 24) = off_1001FA0E8;
  sub_1000283C8((a1 + 152));

  operator delete();
}

const void **sub_100036D90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*a1 + 24))(a1);
  v10[0] = @"Image Format";
  v10[1] = v4;
  v10[2] = @"Format Description";
  v10[3] = @"Sparse bundle image";
  sub_1000267A0(a1 + *(*a1 - 112), &v9);
  v10[4] = @"Size Info";
  v10[5] = v9;
  v9 = 0;
  sub_10000E950(&v9);
  sub_100026B3C(a1 + *(*a1 - 120), &v9);
  v10[6] = @"Encryption Info";
  v10[7] = v9;
  v9 = 0;
  sub_10000E950(&v9);
  sub_10002753C((a1 + *(*a1 - 128)), &v9);
  v10[8] = @"Identity Info";
  v10[9] = v9;
  v9 = 0;
  sub_10000E950(&v9);
  v7[0] = v10;
  v7[1] = 5;
  sub_100145408(v7, &v8);
  *a2 = v8;
  v8 = 0;
  sub_100028D2C(&v8);
  for (i = 9; i != -1; i -= 2)
  {
    result = sub_100028CF8(&v10[i]);
  }

  return result;
}

void sub_100036F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v24 = &a23;
  v25 = -80;
  do
  {
    v24 = sub_100028CF8(v24) - 2;
    v25 += 16;
  }

  while (v25);
  _Unwind_Resume(a1);
}

const void **sub_100036F9C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 20) = off_1001FA1D8;
  *(v1 + 6) = off_1001FA230;
  sub_1000283C8(v1 + 23);
  sub_1000283C8(v1 + 22);
  sub_1000283C8(v1 + 21);
  *(v1 + 15) = off_1001FA090;
  *(v1 + 3) = off_1001FA0E8;

  return sub_1000283C8(v1 + 19);
}

void sub_10003707C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 20) = off_1001FA1D8;
  *(v1 + 6) = off_1001FA230;
  sub_1000283C8(v1 + 23);
  sub_1000283C8(v1 + 22);
  sub_1000283C8(v1 + 21);
  *(v1 + 15) = off_1001FA090;
  *(v1 + 3) = off_1001FA0E8;
  sub_1000283C8(v1 + 19);

  operator delete();
}

const void **sub_100037174(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 20) = off_1001FA1D8;
  *(v1 + 6) = off_1001FA230;
  sub_1000283C8(v1 + 23);
  sub_1000283C8(v1 + 22);
  sub_1000283C8(v1 + 21);
  *(v1 + 15) = off_1001FA090;
  *(v1 + 3) = off_1001FA0E8;

  return sub_1000283C8(v1 + 19);
}

void sub_100037254(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 20) = off_1001FA1D8;
  *(v1 + 6) = off_1001FA230;
  sub_1000283C8(v1 + 23);
  sub_1000283C8(v1 + 22);
  sub_1000283C8(v1 + 21);
  *(v1 + 15) = off_1001FA090;
  *(v1 + 3) = off_1001FA0E8;
  sub_1000283C8(v1 + 19);

  operator delete();
}

const void **sub_10003734C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 20) = off_1001FA1D8;
  *(v1 + 6) = off_1001FA230;
  sub_1000283C8(v1 + 23);
  sub_1000283C8(v1 + 22);
  sub_1000283C8(v1 + 21);
  *(v1 + 15) = off_1001FA090;
  *(v1 + 3) = off_1001FA0E8;

  return sub_1000283C8(v1 + 19);
}

void sub_10003742C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 20) = off_1001FA1D8;
  *(v1 + 6) = off_1001FA230;
  sub_1000283C8(v1 + 23);
  sub_1000283C8(v1 + 22);
  sub_1000283C8(v1 + 21);
  *(v1 + 15) = off_1001FA090;
  *(v1 + 3) = off_1001FA0E8;
  sub_1000283C8(v1 + 19);

  operator delete();
}

const void **sub_100037524(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 20) = off_1001FA1D8;
  *(v1 + 6) = off_1001FA230;
  sub_1000283C8(v1 + 23);
  sub_1000283C8(v1 + 22);
  sub_1000283C8(v1 + 21);
  *(v1 + 15) = off_1001FA090;
  *(v1 + 3) = off_1001FA0E8;

  return sub_1000283C8(v1 + 19);
}

void sub_100037604(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 20) = off_1001FA1D8;
  *(v1 + 6) = off_1001FA230;
  sub_1000283C8(v1 + 23);
  sub_1000283C8(v1 + 22);
  sub_1000283C8(v1 + 21);
  *(v1 + 15) = off_1001FA090;
  *(v1 + 3) = off_1001FA0E8;
  sub_1000283C8(v1 + 19);

  operator delete();
}

const void **sub_1000376FC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 20) = off_1001FA1D8;
  *(v1 + 6) = off_1001FA230;
  sub_1000283C8(v1 + 23);
  sub_1000283C8(v1 + 22);
  sub_1000283C8(v1 + 21);
  *(v1 + 15) = off_1001FA090;
  *(v1 + 3) = off_1001FA0E8;

  return sub_1000283C8(v1 + 19);
}

void sub_1000377DC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 20) = off_1001FA1D8;
  *(v1 + 6) = off_1001FA230;
  sub_1000283C8(v1 + 23);
  sub_1000283C8(v1 + 22);
  sub_1000283C8(v1 + 21);
  *(v1 + 15) = off_1001FA090;
  *(v1 + 3) = off_1001FA0E8;
  sub_1000283C8(v1 + 19);

  operator delete();
}

const void **sub_1000378D4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 20) = off_1001FA1D8;
  *(v1 + 6) = off_1001FA230;
  sub_1000283C8(v1 + 23);
  sub_1000283C8(v1 + 22);
  sub_1000283C8(v1 + 21);
  *(v1 + 15) = off_1001FA090;
  *(v1 + 3) = off_1001FA0E8;

  return sub_1000283C8(v1 + 19);
}

void sub_1000379B4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 20) = off_1001FA1D8;
  *(v1 + 6) = off_1001FA230;
  sub_1000283C8(v1 + 23);
  sub_1000283C8(v1 + 22);
  sub_1000283C8(v1 + 21);
  *(v1 + 15) = off_1001FA090;
  *(v1 + 3) = off_1001FA0E8;
  sub_1000283C8(v1 + 19);

  operator delete();
}

const void **sub_100037AAC(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 20) = off_1001FA1D8;
  *(v1 + 6) = off_1001FA230;
  sub_1000283C8(v1 + 23);
  sub_1000283C8(v1 + 22);
  sub_1000283C8(v1 + 21);
  *(v1 + 15) = off_1001FA090;
  *(v1 + 3) = off_1001FA0E8;

  return sub_1000283C8(v1 + 19);
}

void sub_100037B8C(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 20) = off_1001FA1D8;
  *(v1 + 6) = off_1001FA230;
  sub_1000283C8(v1 + 23);
  sub_1000283C8(v1 + 22);
  sub_1000283C8(v1 + 21);
  *(v1 + 15) = off_1001FA090;
  *(v1 + 3) = off_1001FA0E8;
  sub_1000283C8(v1 + 19);

  operator delete();
}

const void **sub_100037CAC(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 20) = off_1001FA1D8;
  *(v1 + 6) = off_1001FA230;
  sub_1000283C8(v1 + 23);
  sub_1000283C8(v1 + 22);
  sub_1000283C8(v1 + 21);
  *(v1 + 15) = off_1001FA090;
  *(v1 + 3) = off_1001FA0E8;

  return sub_1000283C8(v1 + 19);
}

void sub_100037D8C(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 20) = off_1001FA1D8;
  *(v1 + 6) = off_1001FA230;
  sub_1000283C8(v1 + 23);
  sub_1000283C8(v1 + 22);
  sub_1000283C8(v1 + 21);
  *(v1 + 15) = off_1001FA090;
  *(v1 + 3) = off_1001FA0E8;
  sub_1000283C8(v1 + 19);

  operator delete();
}

const void **sub_100037EAC(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 20) = off_1001FA1D8;
  *(v1 + 6) = off_1001FA230;
  sub_1000283C8(v1 + 23);
  sub_1000283C8(v1 + 22);
  sub_1000283C8(v1 + 21);
  *(v1 + 15) = off_1001FA090;
  *(v1 + 3) = off_1001FA0E8;

  return sub_1000283C8(v1 + 19);
}

void sub_100037F8C(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 20) = off_1001FA1D8;
  *(v1 + 6) = off_1001FA230;
  sub_1000283C8(v1 + 23);
  sub_1000283C8(v1 + 22);
  sub_1000283C8(v1 + 21);
  *(v1 + 15) = off_1001FA090;
  *(v1 + 3) = off_1001FA0E8;
  sub_1000283C8(v1 + 19);

  operator delete();
}

__n128 sub_100038130(uint64_t a1, uint64_t a2)
{
  *a2 = off_1001FA348;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100038170(uint64_t result, uint64_t **a2, uint64_t *a3)
{
  v3 = *a3;
  if (**(result + 8) <= *a3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(&v12);
    sub_100001FE8(&v12, "Bands folder contains an out of range band (", 44);
    v9 = *(a2 + 23);
    if (v9 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    if (v9 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = a2[1];
    }

    sub_100001FE8(&v12, v10, v11);
    sub_100001FE8(&v12, ")", 1);
    sub_10000EBDC(exception, &v12, 0x16u);
  }

  v4 = *(result + 16);
  if (*v4)
  {
    sub_10018E274(&v12, *(result + 24) + 24, *a3, v4);
  }

  v5 = *(result + 24);
  if ((*(*(v5 + 560) + 144) + *(*(v5 + 560) + 152) - 1) / *(*(v5 + 560) + 152) - 1 == v3)
  {
    v6 = *(*(result + 40) + *(**(result + 40) - 112) + 8) - *(v5 + 64) * v3;
  }

  else
  {
    v6 = *(v5 + 64);
  }

  **(result + 32) += v6;
  return result;
}

uint64_t sub_100038418(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100038464(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t sub_1000384E8(uint64_t a1)
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

void sub_10003A200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, std::__shared_weak_count *a17, char a18)
{
  if (a15 == 1)
  {
    sub_10003F610(&a10);
  }

  if (a18 == 1)
  {
    if (a17)
    {
      sub_10000E984(a17);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10003A268(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    sub_10003F578(a1, a2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a1 + 40) = 1;
  }

  return a1;
}

void sub_10003A414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16)
{
  if (a16 == 1)
  {
    if (a15)
    {
      sub_10000E984(a15);
    }
  }

  _Unwind_Resume(a1);
}

void *sub_10003A488@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void sub_10003A970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a17)
  {
    sub_10000E984(a17);
  }

  if (a21 == 1)
  {
    STACK[0x300] = &a18;
    sub_10003FF54(&STACK[0x300]);
  }

  if (LOBYTE(STACK[0x5B0]) == 1)
  {
    sub_10003F650(&STACK[0x330]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10003AA38(uint64_t a1)
{
  if ((*(a1 + 656) & 1) == 0)
  {
    sub_100177D64(*a1, (a1 + 8), v3);
    sub_10003F6CC(a1 + 16, v3);
    sub_10003F650(v3);
  }

  return a1 + 16;
}

void sub_10003AABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10003F650(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10003AAD8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = *a1;
  result = sub_100040030(a2 + 16, a1 + 16);
  *(a1 + 8) += 20;
  if (*(a1 + 656) == 1)
  {
    result = sub_10003F650(a1 + 16);
    *(a1 + 656) = 0;
  }

  return result;
}

void sub_10003ADE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (LOBYTE(STACK[0x598]) == 1 && LOBYTE(STACK[0x590]) == 1)
  {
    sub_10003F650(&STACK[0x310]);
  }

  if (a13 == 1)
  {
    sub_100040370(&a9);
  }

  if (a21 == 1)
  {
    (*(a14 + 56))(&a14);
  }

  _Unwind_Resume(a1);
}

void sub_10003BEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (LOBYTE(STACK[0x548]) == 1)
  {
    sub_10003F650(&STACK[0x2C8]);
  }

  _Unwind_Resume(a1);
}

void sub_10003C0B4(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x540]) == 1)
  {
    sub_10003F650(v1 + 16);
  }

  _Unwind_Resume(a1);
}

void sub_10003C50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a17)
  {
    sub_10000E984(a17);
  }

  if (a21 == 1)
  {
    STACK[0x300] = &a18;
    sub_10003FF54(&STACK[0x300]);
  }

  if (LOBYTE(STACK[0x5B0]) == 1)
  {
    sub_10003F650(&STACK[0x330]);
  }

  _Unwind_Resume(a1);
}

void sub_10003CA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a17)
  {
    sub_10000E984(a17);
  }

  if (a21 == 1)
  {
    STACK[0x300] = &a18;
    sub_10003FF54(&STACK[0x300]);
  }

  if (LOBYTE(STACK[0x5B0]) == 1)
  {
    sub_10003F650(&STACK[0x330]);
  }

  _Unwind_Resume(a1);
}

void sub_10003CEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (LOBYTE(STACK[0x5A0]) == 1 && LOBYTE(STACK[0x598]) == 1)
  {
    sub_10003F650(&STACK[0x318]);
  }

  if (a14 == 1)
  {
    sub_100040370(&a10);
  }

  if (a22 == 1)
  {
    (*(a15 + 56))(&a15);
  }

  _Unwind_Resume(a1);
}

void sub_10003D46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (LOBYTE(STACK[0x5A8]) == 1 && LOBYTE(STACK[0x5A0]) == 1)
  {
    sub_10003F650(&STACK[0x320]);
  }

  if (a15 == 1)
  {
    sub_100040370(&a11);
  }

  if (a23 == 1)
  {
    (*(a16 + 56))(&a16);
  }

  _Unwind_Resume(a1);
}

void sub_10003DAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    operator delete();
  }

  _Unwind_Resume(a1);
}

void sub_10003DB34(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  v6 = 0;
  if ([v3 decodeBytesForKey:@"passphrase_header" returnedLength:&v6])
  {
    if (v6 == 616)
    {
      operator new();
    }

    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v5);
    sub_100001FE8(v5, "Unexpected passphrase header length (", 37);
    std::ostream::operator<<();
    sub_100001FE8(v5, ")", 1);
    sub_10000EBDC(exception, v5, 0x9Au);
  }

  *a2 = 0;
}

void sub_10003DC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ios::~ios();
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

void *sub_10003DCCC(void *a1, uint64_t *a2)
{
  sub_100040938(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_10000E984(v3);
  }

  return a1;
}

void sub_10003DDBC(void *a1, uint64_t a2)
{
  v3 = a1;
  sub_1000404D4(__p, 616);
  sub_1001774F8(a2, __p[0]);
  [v3 encodeBytes:__p[0] length:616 forKey:@"passphrase_header"];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_10003E42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a20)
  {
    sub_10000E984(a20);
  }

  if (a24 == 1)
  {
    STACK[0x320] = &a21;
    sub_10003FF54(&STACK[0x320]);
  }

  if (LOBYTE(STACK[0x820]) == 1)
  {
    sub_10003F650(&STACK[0x5A0]);
  }

  _Unwind_Resume(a1);
}

void sub_10003E93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (LOBYTE(STACK[0x5B8]) == 1 && LOBYTE(STACK[0x5B0]) == 1)
  {
    sub_10003F650(&STACK[0x330]);
  }

  if (LOBYTE(STACK[0x5E0]) == 1)
  {
    sub_100040370(&STACK[0x5C0]);
  }

  if (LOBYTE(STACK[0xAB8]) == 1)
  {
    sub_10003F650(&STACK[0x838]);
  }

  if (a23 == 1)
  {
    (*(a16 + 56))(&a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10003F578(uint64_t a1, uint64_t a2)
{
  sub_10003F5BC(a1, a2);
  v4 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v5 = *(a1 + 32);
  *(a1 + 24) = v4;
  if (v5)
  {
    sub_10000E984(v5);
  }

  return a1;
}

__n128 sub_10003F5BC(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_10003F610(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_10003F650(uint64_t result)
{
  v1 = result;
  v2 = *(result + 632);
  if (v2 != -1)
  {
    result = (off_1001FA3C8[v2])(&v3, result);
  }

  *(v1 + 632) = -1;
  return result;
}

void sub_10003F6B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    *(a2 + 24) = v2;
    operator delete(v2);
  }
}

uint64_t sub_10003F6CC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 640) == 1)
  {
    sub_10003F710(a1, a2);
  }

  else
  {
    sub_10003FC7C(a1, a2);
    *(a1 + 640) = 1;
  }

  return a1;
}

uint64_t sub_10003F710(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 632);
  if (*(result + 632) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return sub_10003F650(result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_1001FA3F0[v4])(v6);
    }
  }

  return result;
}

void *sub_10003F7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 632))
  {
    sub_10003F650(a1);
    *a1 = *a3;
    *(a1 + 12) = *(a3 + 12);
    *(a1 + 16) = *(a3 + 16);
    *(a1 + 20) = *(a3 + 20);
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0;
    *(a1 + 24) = *(a3 + 24);
    v5 = *(a3 + 28);
    *(a1 + 44) = *(a3 + 44);
    *(a1 + 28) = v5;
    *(a1 + 60) = 0u;
    *(a1 + 76) = 0u;
    *(a1 + 92) = 0;
    *(a1 + 60) = *(a3 + 60);
    v6 = *(a3 + 80);
    *(a1 + 64) = *(a3 + 64);
    *(a1 + 80) = v6;
    *(a1 + 96) = *(a3 + 96);
    *(a1 + 100) = *(a3 + 100);
    *(a1 + 104) = *(a3 + 104);
    *(a1 + 108) = *(a3 + 108);
    bzero((a1 + 112), 0x204uLL);
    *(a1 + 112) = *(a3 + 112);
    result = memcpy((a1 + 116), (a3 + 116), 0x200uLL);
    *(a1 + 632) = 0;
  }

  else
  {
    sub_100178144(a2, a3);
    v9 = *(a3 + 12);
    *(a2 + 20) = *(a3 + 20);
    *(a2 + 12) = v9;
    *(a2 + 24) = *(a3 + 24);
    v10 = *(a3 + 28);
    *(a2 + 44) = *(a3 + 44);
    *(a2 + 28) = v10;
    *(a2 + 60) = *(a3 + 60);
    v11 = *(a3 + 80);
    *(a2 + 64) = *(a3 + 64);
    *(a2 + 80) = v11;
    *(a2 + 96) = *(a3 + 96);
    *(a2 + 112) = *(a3 + 112);

    return memcpy((a2 + 116), (a3 + 116), 0x200uLL);
  }

  return result;
}

void *sub_10003F910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 632) == 1)
  {
    sub_100178144(a2, a3);
    *(a2 + 12) = *(a3 + 12);
    v5 = *(a3 + 32);
    *(a2 + 16) = *(a3 + 16);
    *(a2 + 32) = v5;
    v6 = *(a3 + 56);
    *(a2 + 48) = *(a3 + 48);
    *(a2 + 56) = v6;
    *(a2 + 60) = *(a3 + 60);

    return memcpy((a2 + 64), (a3 + 64), 0x200uLL);
  }

  else
  {

    return sub_10003F9B0(a1, a3);
  }
}

uint64_t sub_10003F9B0(uint64_t a1, uint64_t a2)
{
  sub_10003F650(a1);
  *a1 = *a2;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0;
  *(a1 + 12) = 0u;
  *(a1 + 12) = *(a2 + 12);
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  bzero((a1 + 60), 0x204uLL);
  *(a1 + 60) = *(a2 + 60);
  memcpy((a1 + 64), (a2 + 64), 0x200uLL);
  *(a1 + 632) = 1;
  return a1;
}

void *sub_10003FA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 632) == 2)
  {
    sub_100178144(a2, a3);
    *(a2 + 12) = *(a3 + 12);
    v5 = *(a3 + 32);
    *(a2 + 16) = *(a3 + 16);
    *(a2 + 32) = v5;
    *(a2 + 48) = *(a3 + 48);
    *(a2 + 52) = *(a3 + 52);

    return memcpy((a2 + 56), (a3 + 56), 0x200uLL);
  }

  else
  {
    sub_10003F650(a1);
    *a1 = *a3;
    *(a1 + 28) = 0u;
    *(a1 + 44) = 0;
    *(a1 + 12) = 0u;
    *(a1 + 12) = *(a3 + 12);
    v8 = *(a3 + 32);
    *(a1 + 16) = *(a3 + 16);
    *(a1 + 32) = v8;
    *(a1 + 48) = *(a3 + 48);
    bzero((a1 + 52), 0x204uLL);
    *(a1 + 52) = *(a3 + 52);
    result = memcpy((a1 + 56), (a3 + 56), 0x200uLL);
    *(a1 + 632) = 2;
  }

  return result;
}

void sub_10003FB3C(uint64_t a1, uint64_t a2, __n128 *a3)
{
  if (*(a1 + 632) == 3)
  {
    sub_100178144(a2, a3);
    *(a2 + 12) = a3->n128_u32[3];

    sub_10003F5BC(a2 + 16, a3 + 1);
  }

  else
  {

    sub_10003FBB8(a1, a3);
  }
}

uint64_t sub_10003FBB8(uint64_t a1, uint64_t a2)
{
  sub_10003F650(a1);
  *a1 = *a2;
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  sub_1000403D4((a1 + 16), *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
  *(a1 + 632) = 3;
  return a1;
}

__n128 sub_10003FC14(__n128 *a1, __n128 *a2, __n128 *a3)
{
  if (a1[39].n128_u32[2] == 4)
  {
    sub_100178144(a2, a3);
    result = a3[1];
    a2[1] = result;
  }

  else
  {
    sub_10003F650(a1);
    result = *a3;
    v7 = a3[1];
    *a1 = *a3;
    a1[1] = v7;
    a1[39].n128_u32[2] = 4;
  }

  return result;
}

uint64_t sub_10003FC7C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 632) = -1;
  sub_10003FCC4(a1, a2);
  return a1;
}

uint64_t sub_10003FCC4(uint64_t a1, uint64_t a2)
{
  result = sub_10003F650(a1);
  v5 = *(a2 + 632);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_1001FA418[v5])(&v6, a2);
    *(a1 + 632) = v5;
  }

  return result;
}

void *sub_10003FD28(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  *(v3 + 12) = *(a2 + 12);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 20) = *(a2 + 20);
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0;
  *(v3 + 24) = *(a2 + 24);
  v4 = *(a2 + 28);
  *(v3 + 44) = *(a2 + 44);
  *(v3 + 28) = v4;
  *(v3 + 60) = 0u;
  *(v3 + 76) = 0u;
  *(v3 + 92) = 0;
  *(v3 + 60) = *(a2 + 60);
  v5 = *(a2 + 80);
  *(v3 + 64) = *(a2 + 64);
  *(v3 + 80) = v5;
  *(v3 + 96) = *(a2 + 96);
  *(v3 + 100) = *(a2 + 100);
  *(v3 + 104) = *(a2 + 104);
  *(v3 + 108) = *(a2 + 108);
  bzero((v3 + 112), 0x204uLL);
  *(v3 + 112) = *(a2 + 112);

  return memcpy((v3 + 116), (a2 + 116), 0x200uLL);
}

void *sub_10003FE00(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  *(v3 + 28) = 0u;
  *(v3 + 44) = 0;
  *(v3 + 12) = 0u;
  *(v3 + 12) = *(a2 + 12);
  v4 = *(a2 + 32);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a2 + 48);
  *(v3 + 52) = *(a2 + 52);
  *(v3 + 56) = *(a2 + 56);
  bzero((v3 + 60), 0x204uLL);
  *(v3 + 60) = *(a2 + 60);

  return memcpy((v3 + 64), (a2 + 64), 0x200uLL);
}

void *sub_10003FE94(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  *(v3 + 28) = 0u;
  *(v3 + 44) = 0;
  *(v3 + 12) = 0u;
  *(v3 + 12) = *(a2 + 12);
  v4 = *(a2 + 32);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a2 + 48);
  bzero((v3 + 52), 0x204uLL);
  *(v3 + 52) = *(a2 + 52);

  return memcpy((v3 + 56), (a2 + 56), 0x200uLL);
}

uint64_t *sub_10003FF18(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  v3 = *(a2 + 12);
  v2[2] = 0;
  v2 += 2;
  *(v2 - 1) = v3;
  v2[1] = 0;
  v2[2] = 0;
  return sub_1000403D4(v2, *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
}

__n128 sub_10003FF44(_OWORD **a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *v2 = *a2;
  v2[1] = v4;
  return result;
}

void sub_10003FF54(void ***a1)
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
        v4 -= 48;
        sub_10003FFD8(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10003FFD8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

_BYTE *sub_100040030(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[640] = 0;
  if (*(a2 + 640) == 1)
  {
    sub_100040098(a1, a2);
    a1[640] = 1;
  }

  return a1;
}

void sub_100040078(_Unwind_Exception *exception_object)
{
  if (*(v1 + 640) == 1)
  {
    sub_10003F650(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100040098(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 632) = -1;
  sub_1000400E0(a1, a2);
  return a1;
}

uint64_t sub_1000400E0(uint64_t a1, uint64_t a2)
{
  result = sub_10003F650(a1);
  v5 = *(a2 + 632);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_1001FA440[v5])(&v6, a2);
    *(a1 + 632) = v5;
  }

  return result;
}

void *sub_100040144(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  *(v3 + 12) = *(a2 + 12);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 20) = *(a2 + 20);
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0;
  *(v3 + 24) = *(a2 + 24);
  v4 = *(a2 + 28);
  *(v3 + 44) = *(a2 + 44);
  *(v3 + 28) = v4;
  *(v3 + 60) = 0u;
  *(v3 + 76) = 0u;
  *(v3 + 92) = 0;
  *(v3 + 60) = *(a2 + 60);
  v5 = *(a2 + 80);
  *(v3 + 64) = *(a2 + 64);
  *(v3 + 80) = v5;
  *(v3 + 96) = *(a2 + 96);
  *(v3 + 100) = *(a2 + 100);
  *(v3 + 104) = *(a2 + 104);
  *(v3 + 108) = *(a2 + 108);
  bzero((v3 + 112), 0x204uLL);
  *(v3 + 112) = *(a2 + 112);

  return memcpy((v3 + 116), (a2 + 116), 0x200uLL);
}

void *sub_10004021C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  *(v3 + 28) = 0u;
  *(v3 + 44) = 0;
  *(v3 + 12) = 0u;
  *(v3 + 12) = *(a2 + 12);
  v4 = *(a2 + 32);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a2 + 48);
  *(v3 + 52) = *(a2 + 52);
  *(v3 + 56) = *(a2 + 56);
  bzero((v3 + 60), 0x204uLL);
  *(v3 + 60) = *(a2 + 60);

  return memcpy((v3 + 64), (a2 + 64), 0x200uLL);
}

void *sub_1000402B0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v3 = *a2;
  *(v3 + 28) = 0u;
  *(v3 + 44) = 0;
  *(v3 + 12) = 0u;
  *(v3 + 12) = *(a2 + 12);
  v4 = *(a2 + 32);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a2 + 48);
  bzero((v3 + 52), 0x204uLL);
  *(v3 + 52) = *(a2 + 52);

  return memcpy((v3 + 56), (a2 + 56), 0x200uLL);
}

uint64_t *sub_100040334(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  v3 = *(a2 + 12);
  v2[2] = 0;
  v2 += 2;
  *(v2 - 1) = v3;
  v2[1] = 0;
  v2[2] = 0;
  return sub_1000403D4(v2, *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
}

__n128 sub_100040360(_OWORD **a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *v2 = *a2;
  v2[1] = v4;
  return result;
}

uint64_t sub_100040370(uint64_t a1)
{
  if (*(a1 + 20) == 1)
  {
    (*(**(a1 + 24) + 48))(*(a1 + 24), *(a1 + 4), *(a1 + 12));
  }

  return a1;
}

uint64_t *sub_1000403D4(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100040450(result, a4);
  }

  return result;
}

void sub_100040434(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100040450(uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_100015B70();
}

uint64_t *sub_1000404D4(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_100040450(a1, a2);
  }

  return a1;
}

void sub_10004052C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100040548(void *a1, int a2)
{
  if (a2 && (v2 = a1[1], *(*a1 + 4) == *(v2 + 4)))
  {
    return sub_10004057C(a1, *(*a1 + 8) == *(v2 + 8));
  }

  else
  {
    return 0;
  }
}

BOOL sub_10004057C(void *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a1[1];
  v4 = *(*a1 + 12);
  v5 = v4 == *(v3 + 12) && memcmp((*a1 + 16), (v3 + 16), v4) == 0;

  return sub_1000405EC(a1, v5);
}

BOOL sub_1000405EC(void *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = a1[1];
  v5 = *(*a1 + 48);
  if (v5 != v4[12] || memcmp((v3 + 52), v4 + 13, v5))
  {
    return 0;
  }

  v7 = *(v3 + 84) == v4[21];

  return sub_100040674(a1, v7);
}

BOOL sub_100040674(void *a1, int a2)
{
  if (a2 && (v2 = a1[1], *(*a1 + 88) == *(v2 + 88)))
  {
    return sub_1000406A8(a1, *(*a1 + 92) == *(v2 + 92));
  }

  else
  {
    return 0;
  }
}

BOOL sub_1000406A8(void *a1, int a2)
{
  if (a2 && (v2 = *a1, v3 = a1[1], *(*a1 + 96) == v3[24]) && (v4 = *(v2 + 100), v4 == v3[25]))
  {
    return memcmp((v2 + 104), v3 + 26, v4) == 0;
  }

  else
  {
    return 0;
  }
}

void *sub_100040778(void *a1, uint64_t *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1001FA4B0;
  sub_100180958(a1 + 3, a2, a3);
  return a1;
}

void sub_1000407F4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1001FA4B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100040848(void *a1)
{
  sub_1000408B8((a1 + 11));
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    sub_10000E984(v4);
  }
}

uint64_t sub_1000408B8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 != -1)
  {
    result = (off_1001FA4F0[v2])(&v3, result);
  }

  *(v1 + 16) = -1;
  return result;
}

uint64_t sub_100040910(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    operator delete[]();
  }

  return result;
}

uint64_t *sub_100040938(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if (v2)
  {
    operator new();
  }

  a1[1] = 0;
  *a2 = 0;
  return a1;
}

void sub_1000409BC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000409F4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    operator delete();
  }

  return result;
}

uint64_t sub_100040A14(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

int *sub_100040AC0(int *a1, uint64_t *a2)
{
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = off_1001FA570;
  sub_1001774F4(a1 + 6, *a2);
  return a1;
}

void sub_100040B40(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1001FA570;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000415D0(_Unwind_Exception *a1, int a2)
{
  (*(*v4 + 16))(v4);

  if (a2 == 1)
  {
    v8 = [objc_begin_catch(a1) reason];
    [DIError failWithEnumValue:150 verboseInfo:v8 error:v2];

    objc_end_catch();
    JUMPOUT(0x100041344);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000417E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000FDE0(*(a1 + 16));
  v12[0] = result;
  v12[1] = v6;
  if (result <= 0)
  {
    if (result >= 0)
    {
      v11 = result;
    }

    else
    {
      v11 = -result;
    }

    return -v11;
  }

  else
  {
    v7 = *(a2 + 208);
    v8 = *(a3 + 208) - v7;
    if (v7 <= v6)
    {
      v10 = __OFSUB__(v8, result);
      v9 = v8 - result < 0;
    }

    else
    {
      v10 = 0;
      v9 = 1;
    }

    if (v9 != v10)
    {
      return sub_100195CB0(a2, a3, v8 & ~(v8 >> 63), v12);
    }
  }

  return result;
}

unint64_t sub_100041860(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if ((*(a1 + 56) & 1) == 0)
  {
    if (!a2[6] || (v7 = *(a4 + 208) - *(a3 + 208), *(a4 + 136) - *(a3 + 136) >= (v7 & ~(v7 >> 63)) + a2[8]))
    {
      sub_10000FDE0(a2[2]);
    }
  }

  sub_1000302E0(&v58, v5);
  v42 = a2;
  if (((*(v4 + 208) - v64) & ~((*(v4 + 208) - v64) >> 63)) + a2[8] <= v60)
  {
    v8 = sub_1000417E4(a2, &v58, v4);
    sub_10002E60C(&v58, v8);
    v9 = v8;
    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_95;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *(v4 + 208);
  if (v8 == ((v10 - *(v5 + 208)) & ~((v10 - *(v5 + 208)) >> 63)))
  {
    v9 = v8;
    goto LABEL_95;
  }

  v39 = v5;
  v40 = v4;
  do
  {
    v45 = v8;
    v11 = *(a1 + 72);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *(v4 + 208);
    }

    v12 = v42;
    v13 = v42[3];
    v14 = v42[4];
    v15 = v64;
    v16 = (v14 - v13 - 8) >> 3;
    if (v14 == v13)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16 + 1;
    }

    v18 = (v10 - v64) & ~((v10 - v64) >> 63);
    v19 = v42[6];
    if (v42[7] * v19 >= v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v42[7] * v19;
    }

    __p = v78;
    v77 = xmmword_1001BABD0;
    v43 = v20;
    v44 = v61;
    if (v17 < 6)
    {
      if (v13 == v14)
      {
        v17 = 0;
      }

      else
      {
        v28 = v16 + 1;
        v29 = v78;
        do
        {
          v30 = *v13;
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *v29 = v30;
          v29[1] = v11;
          v13 += 8;
          v29[2] = v19;
          v29 += 3;
          --v28;
        }

        while (v28);
      }

      v8 = v45;
    }

    else
    {
      v38 = v64;
      if (v17 >= 0x555555555555556)
      {
        sub_100012CFC("get_next_capacity, allocator's max size reached");
      }

      v21 = operator new(24 * v17);
      v22 = __p;
      if (__p)
      {
        v23 = v77;
        if (v77)
        {
          v24 = (__p + 8);
          do
          {
            if (*v24)
            {
              sub_10000E984(*v24);
            }

            v24 += 3;
            --v23;
          }

          while (v23);
        }

        *&v77 = 0;
        v12 = v42;
        if (v78 != v22)
        {
          operator delete(v22);
        }
      }

      *(&v77 + 1) = v17;
      __p = v21;
      *&v77 = 0;
      if (v13 == v14)
      {
        v27 = 0;
        v25 = v21;
        v5 = v39;
      }

      else
      {
        v25 = v21;
        v5 = v39;
        do
        {
          v26 = *v13;
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *v25 = v26;
          *(v25 + 1) = v11;
          *(v25 + 2) = v19;
          v13 += 8;
          v25 += 24;
        }

        while (v13 != v14);
        v27 = v77;
      }

      v17 = v27 - 0x5555555555555555 * ((v25 - v21) >> 3);
      v8 = v45;
      v15 = v38;
    }

    *&v77 = v17;
    v79 = &v81;
    v80 = xmmword_1001BABD0;
    sub_100013068(&v79, v17);
    v67 = __p;
    __dst = __p + 24 * v77;
    v49 = v79;
    *&v65 = &v79[8 * v80];
    sub_10002E0A8(v82, &v67, &__dst, &v49, &v65, v15, v43, v44);
    v4 = v40;
    sub_10002E310(v82, &v67);
    sub_10002DF68(v82, &__dst);
    v9 = sub_1000417E4(v12, &v67, &__dst);
    if (v74)
    {
      sub_10000E984(v74);
    }

    if (v72)
    {
      sub_10000E984(v72);
    }

    if (v69)
    {
      sub_10000E984(v69);
    }

    if (v68)
    {
      sub_10000E984(v68);
    }

    if ((v9 & 0x8000000080000000) == 0x8000000080000000)
    {
      goto LABEL_91;
    }

    sub_10002E310(v82, &__src);
    sub_10002DF68(v82, &v49);
    sub_1000302E0(&v46, &v58);
    sub_1000302E0(&__dst, &v46);
    v31 = 0;
    v75 = 0;
    while (!sub_10002DE0C(&__src, &v49))
    {
      sub_100014E18(&v55);
      v32 = v56;
      if (v56)
      {
        atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v57)
      {
        sub_10002E834(&__src);
        v35 = 2;
        if (!v32)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      v33 = v73;
      if (v54 < v73)
      {
        v33 = v54;
      }

      if (v33 >= v57)
      {
        v34 = v57;
      }

      else
      {
        v34 = v33;
      }

      memmove(__dst, __src, v34);
      if (v34 <= 0)
      {
        *&v65 = "transform(Fn &&, sg_vec_ref::iterator, const sg_vec_ref::iterator &, sg_vec_ref::iterator) [Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/disk_images/io_breaker.cpp:76:13)]";
        *(&v65 + 1) = 97;
        v66 = 16;
        sub_1000432F8(&v67, &v65);
        sub_100001FE8(v70, "IO error with sg: ", 18);
        sub_100192838(v70, &__src);
        sub_100001FE8(v70, " dest ", 6);
        sub_100192838(v70, &__dst);
        sub_100001FE8(v70, " returned status ", 17);
        std::ostream::operator<<();
        std::ostream::~ostream();
        sub_10004352C(&v67);
        std::ios::~ios();
        v35 = 1;
        if (!v32)
        {
          goto LABEL_67;
        }

LABEL_66:
        sub_10000E984(v32);
        goto LABEL_67;
      }

      sub_10002E60C(&__src, v34);
      sub_10002E6D0(&__dst, v34);
      v35 = 0;
      v31 += v34;
      if (v32)
      {
        goto LABEL_66;
      }

LABEL_67:
      if ((v35 | 2) != 2)
      {
        goto LABEL_74;
      }
    }

    sub_10002E6D0(&v46, v31);
LABEL_74:
    if (v74)
    {
      sub_10000E984(v74);
    }

    v5 = v39;
    if (v72)
    {
      sub_10000E984(v72);
    }

    if (v48)
    {
      sub_10000E984(v48);
    }

    if (v47)
    {
      sub_10000E984(v47);
    }

    if (v51)
    {
      sub_10000E984(v51);
    }

    if (v50)
    {
      sub_10000E984(v50);
    }

    if (v56)
    {
      sub_10000E984(v56);
    }

    if (v53)
    {
      sub_10000E984(v53);
    }

    sub_10002E60C(&v58, v9);
    sub_10002DBC0(v62);
    v8 += v9;
LABEL_91:
    sub_1000157A4(&__p);
    if (v11)
    {
      sub_10000E984(v11);
    }

    if ((v9 & 0x8000000080000000) == 0x8000000080000000)
    {
      break;
    }

    v10 = *(v40 + 208);
  }

  while (v8 != ((v10 - *(v5 + 208)) & ~((v10 - *(v5 + 208)) >> 63)));
LABEL_95:
  if (v63)
  {
    sub_10000E984(v63);
  }

  if (v59)
  {
    sub_10000E984(v59);
  }

  if (v9 < 0)
  {
    v36 = v9;
  }

  else
  {
    v36 = 0;
  }

  if (v36 >= 0)
  {
    return v8;
  }

  else
  {
    return v36;
  }
}

void sub_100041F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (v50)
  {
    sub_10000E984(v50);
  }

  sub_10000FF88(&STACK[0x600]);
  sub_10000FF88(&a21);
  sub_10000FF88(&a49);
  sub_10000FF88(&STACK[0x220]);
  sub_1000157A4(&STACK[0x6E0]);
  if (v49)
  {
    sub_10000E984(v49);
  }

  sub_10000FF88(&STACK[0x300]);
  _Unwind_Resume(a1);
}

void *sub_100042070(void *a1)
{
  *a1 = off_1001FA5C0;
  v2 = a1[9];
  if (v2)
  {
    sub_10000E984(v2);
  }

  return a1;
}

void sub_1000420BC(void *a1)
{
  *a1 = off_1001FA5C0;
  v1 = a1[9];
  if (v1)
  {
    sub_10000E984(v1);
  }

  operator delete();
}

void sub_1000421A8()
{
  exception = __cxa_allocate_exception(0x40uLL);
  v1 = sub_100001940(exception, "Image info is not supported for the given image type", 0x16u);
}

double sub_1000421F0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_100042264(uint64_t a1)
{
  if ((*(**(a1 + 16) + 144))(*(a1 + 16)))
  {
    operator new();
  }

  return 0;
}

unint64_t sub_100042390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = sub_100042D00;
  v13[1] = 0;
  v13[2] = a1;
  v13[3] = a2;
  sub_1000302E0(v10, a3);
  sub_1000302E0(&v7, a4);
  v5 = sub_100042B9C(v13, v10, &v7, 0xFFFFFFFFFFFFFFFFLL);
  if (v9)
  {
    sub_10000E984(v9);
  }

  if (v8)
  {
    sub_10000E984(v8);
  }

  if (v12)
  {
    sub_10000E984(v12);
  }

  if (v11)
  {
    sub_10000E984(v11);
  }

  return v5;
}

void sub_100042444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  sub_10000FF88(&a9);
  sub_10000FF88(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100042468(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100043098(v14, a3);
  sub_10002E310(v15, v11);
  v5 = sub_10002DF68(v15, v8);
  v6 = (*(*a1 + 152))(a1, a2, v11, v8, v5);
  if (v10)
  {
    sub_10000E984(v10);
  }

  if (v9)
  {
    sub_10000E984(v9);
  }

  if (v13)
  {
    sub_10000E984(v13);
  }

  if (v12)
  {
    sub_10000E984(v12);
  }

  sub_1000157A4(v14);
  return v6;
}

void sub_10004256C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10000FF88(&a10);
  sub_10000FF88(&a38);
  sub_1000157A4(&a65);
  _Unwind_Resume(a1);
}

void *sub_1000425F4(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = off_1001FA6D0;
  a1[1] = a2;
  v3 = *a3;
  *a3 = 0;
  a1[3] = 0;
  a1[2] = v3;
  a1[4] = 0;
  a1[5] = 0;
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = v4 + 1;
  a1[7] = v4 + 1;
  a1[8] = v5;
  v7 = v5 + v4;
  a1[6] = v7 / v6;
  if (v6 <= v7)
  {
    operator new[]();
  }

  return a1;
}

void *sub_1000428CC(void *a1)
{
  *a1 = off_1001FA6D0;
  v4 = (a1 + 3);
  sub_100042AE0(&v4);
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_100042954(void *a1)
{
  *a1 = off_1001FA6D0;
  v3 = (a1 + 3);
  sub_100042AE0(&v3);
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  operator delete();
}

void sub_1000429F0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_10000ED20();
}

uint64_t sub_100042A38(uint64_t a1)
{
  sub_100042A70(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100042A70(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      v4 = *--v2;
      result = v4;
      *(v3 + 16) = v2;
      *v2 = 0;
      if (v4)
      {
        operator delete[]();
      }
    }

    while (v2 != a2);
  }

  return result;
}

void sub_100042AE0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100042B34(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_100042B34(uint64_t result, void *a2)
{
  v2 = result;
  v3 = *(result + 8);
  while (v3 != a2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      operator delete[]();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

unint64_t sub_100042B9C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_100030464(&v26, a2);
  v28 = *(a2 + 112);
  v29 = *(a2 + 120);
  v30 = *(a2 + 136);
  v31 = *(a2 + 152);
  v32 = *(a2 + 168);
  v8 = *(a2 + 176);
  v9 = *(a2 + 192);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v33 = v8;
  v34 = v9;
  v36 = *(a2 + 216);
  v35 = *(a2 + 208);
  sub_100030464(&v15, a3);
  v17 = *(a3 + 112);
  v18 = *(a3 + 120);
  v19 = *(a3 + 136);
  v20 = *(a3 + 152);
  v21 = *(a3 + 168);
  v10 = *(a3 + 176);
  v11 = *(a3 + 192);
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  v22 = v10;
  v23 = v11;
  v12 = *(a3 + 208);
  v25 = *(a3 + 216);
  v24 = v12;
  v13 = sub_100042D24(a1, &v26, &v15, a4, 0);
  if (*(&v22 + 1))
  {
    sub_10000E984(*(&v22 + 1));
  }

  if (v16)
  {
    sub_10000E984(v16);
  }

  if (*(&v33 + 1))
  {
    sub_10000E984(*(&v33 + 1));
  }

  if (v27)
  {
    sub_10000E984(v27);
  }

  return v13;
}

void sub_100042CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  sub_10000FF88(&a9);
  sub_10000FF88(va);
  _Unwind_Resume(a1);
}

unint64_t sub_100042D24(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, char a5)
{
  v8 = 0;
  v9 = 0;
  v10 = *(a3 + 208);
  v32[0] = 0;
  v39 = 0;
  while (!sub_10002DE0C(a2, a3))
  {
    if (a2[26] >= v10 || v9 >= a4)
    {
      break;
    }

    if (sub_1000E9608())
    {
      *&v30 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = std::__bind<io_result_t (DiskImage::*)(DiskImage::Context &, const sg_entry &), DiskImage *, std::reference_wrapper<DiskImage::Context>, const std::placeholders::__ph<1> &>]";
      *(&v30 + 1) = 142;
      v31 = 2;
      sub_1000339C8(v27, &v30);
      sub_100001FE8(v29, "sg: ", 4);
      sub_100192838(v29, a2);
      std::ostream::~ostream();
      sub_100033C40(v27);
      std::ios::~ios();
    }

    v27[0] = 0;
    v27[1] = v10;
    v28 = 2;
    sub_100093990(a2, v27, &v30);
    v12 = *a1;
    v13 = *(a1 + 8);
    v14 = (*(a1 + 16) + (v13 >> 1));
    if (v13)
    {
      v12 = *(*v14 + v12);
    }

    v15 = v12(v14, *(a1 + 24), &v30);
    v17 = v15;
    v18 = v15 >= 0 || v15 == 0;
    v19 = v18;
    if (v18)
    {
      v20 = v16;
      if ((v8 & 1) == 0)
      {
        v8 = 1;
      }

      if (sub_10002F220(a2, a3, v16, v15))
      {
        sub_1000302E0(v26, a2);
        sub_10002F174(v26, a3, v20, v17, a4, v27);
        sub_100033B34(v32, v27);
        sub_10002F23C(v27);
        sub_10000FF88(v26);
        sub_10002E310(v32, v27);
        sub_100030B94(a2, v27);
        sub_10000FF88(v27);
        sub_10002DF68(v32, v27);
        sub_100030B94(a3, v27);
        sub_10000FF88(v27);
      }

      if (a5)
      {
        sub_10002E60C(a2, v17);
      }

      else
      {
        sub_10002E6D0(a2, v17);
      }

      v9 += v17;
    }

    else
    {
      if (v15 >= 0)
      {
        v21 = v15;
      }

      else
      {
        v21 = -v15;
      }

      v23 = -v21;
    }

    if (*(&v30 + 1))
    {
      sub_10000E984(*(&v30 + 1));
    }

    if ((v19 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  v23 = v9;
LABEL_36:
  if (v39 == 1)
  {
    if (v38)
    {
      sub_10000E984(v38);
    }

    if (v37)
    {
      sub_10000E984(v37);
    }

    if (v36)
    {
      sub_10000E984(v36);
    }

    if (v35)
    {
      sub_10000E984(v35);
    }

    if (v34)
    {
      sub_10000E984(v34);
    }

    if (v33)
    {
      sub_10000E984(v33);
    }
  }

  return v23;
}

void sub_100043014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_10000FF88(&a41);
  if (STACK[0x3D8])
  {
    sub_10000E984(STACK[0x3D8]);
  }

  sub_10002F2A8(&STACK[0x440]);
  _Unwind_Resume(a1);
}

void **sub_100043098(void **a1, uint64_t *a2)
{
  v4 = sub_100195B38();
  v5 = *a2;
  v6 = v4[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a2[4];
  v18 = v20;
  v20[0] = v5;
  v20[1] = v6;
  v20[2] = v7;
  v19 = xmmword_1001BBD40;
  sub_100030750(a1, &v18);
  sub_100012FF8(&v18);
  v8 = a1[1];
  v18 = *a1;
  v9 = &v18[24 * v8];
  v10 = a1[19];
  v16 = a1[18];
  v17 = v9;
  v15 = &v16[v10];
  sub_10002E0A8((a1 + 26), &v18, &v17, &v16, &v15, a2[3], a2[2], *(a2 + 10));
  v13 = *(a2 + 12);
  v12 = a2 + 6;
  v11 = v13;
  if (*(v12 + 56) == 1 && v11)
  {
    sub_10002F410((a1 + 26), v12);
  }

  return a1;
}

void sub_1000431A8(_Unwind_Exception *a1)
{
  sub_10002F23C((v1 + 208));
  sub_100012B90(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000431DC(uint64_t a1, uint64_t *a2)
{
  sub_10002F320(a2, v11);
  sub_10002E310(v12, v8);
  sub_10002DF68(v12, v5);
  v3 = sub_10000FEB4(*(*a1 + 16));
  if (v7)
  {
    sub_10000E984(v7);
  }

  if (v6)
  {
    sub_10000E984(v6);
  }

  if (v10)
  {
    sub_10000E984(v10);
  }

  if (v9)
  {
    sub_10000E984(v9);
  }

  sub_1000157A4(v11);
  return v3;
}

void sub_1000432BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10000FF88(&a10);
  sub_10000FF88(&a38);
  sub_1000157A4(&a65);
  _Unwind_Resume(a1);
}

void *sub_1000432F8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100043464(a1, a2);
  *a1 = off_1001FA740;
  a1[45] = &off_1001FA840;
  a1[46] = &off_1001FA868;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FA740;
  a1[45] = off_1001FA7C8;
  a1[46] = off_1001FA7F0;
  return a1;
}

void sub_1000433FC(_Unwind_Exception *a1)
{
  sub_10004352C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100043420(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10004352C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100043464(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1001FA8D8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100043514(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10004352C(uint64_t a1)
{
  *a1 = &off_1001FA8D8;
  sub_10004396C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100043698(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10004352C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100043700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10004373C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_1000437A8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10004352C(v1);

  return std::ios::~ios();
}

void sub_1000437F4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10004352C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100043858(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10004352C(v1);

  return std::ios::~ios();
}

void sub_1000438B8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10004352C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100043934(uint64_t a1)
{
  sub_10004352C(a1);

  operator delete();
}

uint64_t sub_10004396C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_100043AE0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100043AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100043AE0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 694;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 694;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100043CC4()
{
  if (atomic_load_explicit(&qword_100235358, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&qword_100235358, &v4, sub_100043F1C);
  }

  return dword_100235360;
}

uint64_t sub_100043D30()
{
  if (atomic_load_explicit(&qword_100235368, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&qword_100235368, &v4, sub_100043F6C);
  }

  return dword_100235370;
}

uint64_t (**sub_100043DBC())()
{
  if ((atomic_load_explicit(&qword_100235380, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100235380))
  {
    qword_100235378 = (sub_100043E64() + 0x3FFFFFFF) >> 30;
    __cxa_guard_release(&qword_100235380);
  }

  v0 = &unk_1001BC730;
  if (qword_100235378 > 3)
  {
    v0 = &off_1001FA970;
  }

  if (qword_100235378 <= 8)
  {
    return v0;
  }

  else
  {
    return &off_1001FA948;
  }
}

uint64_t sub_100043E64()
{
  if (atomic_load_explicit(&qword_100235388, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&qword_100235388, &v4, sub_100043ED0);
  }

  return qword_100235390;
}

uint64_t sub_100043ED0()
{
  v1 = 8;
  v2 = 0;
  result = sysctlbyname("hw.memsize", &v2, &v1, 0, 0);
  qword_100235390 = v2;
  return result;
}

uint64_t sub_100043F1C()
{
  v2 = 0;
  v1 = 4;
  result = sysctlbyname("debug.didevice_queue_depth", &v2, &v1, 0, 0);
  dword_100235360 = v2;
  return result;
}

uint64_t sub_100043F6C()
{
  v2 = 1;
  v1 = 4;
  result = sysctlbyname("hw.logicalcpu", &v2, &v1, 0, 0);
  dword_100235370 = v2;
  return result;
}

void sub_100043FC0(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 4)
  {
    sub_10004B2E4();
  }

  sub_10004B49C();
}

void sub_100044030(void *a1, void *a2, _DWORD *a3, size_t a4)
{
  v6 = sub_1000440E0(a1, a2);
  *v6 = off_1001FA9A8;
  *(v6 + 10) = *a3;
  v6[6] = a4;
  operator new[]();
}

void *sub_1000440E0(void *a1, void *a2)
{
  result = sub_100192AE0(a1);
  *result = off_1001FACC0;
  v4 = a2[1];
  result[3] = *a2;
  result[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_10004413C(void *a1)
{
  *a1 = off_1001FACC0;
  v2 = a1[4];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_100044194(void *a1, uint64_t a2, void *a3)
{
  v4 = sub_1000440E0(a1, a3);
  *v4 = off_1001FA9A8;
  *(v4 + 10) = *(a2 + 40);
  v4[6] = *(a2 + 48);
  operator new[]();
}

void *sub_100044248(void *a1)
{
  *a1 = off_1001FA9A8;
  sub_100046604((a1 + 9));
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    operator delete[]();
  }

  *a1 = off_1001FACC0;
  v3 = a1[4];
  if (v3)
  {
    sub_10000E984(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

uint64_t sub_1000442E8(void *a1, uint64_t a2)
{
  if (a1[8] != a1[7])
  {
    (*(*a1 + 152))(a1);
  }

  if (*(a2 + 104) == 1 && *(a2 + 48) != 0)
  {
    return 4294967251;
  }

  v5 = a1[7];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(sub_100195B38() + 1);
  v16 = v5;
  v17 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v6;
  v19 = v7;
  v20 = v6;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v9 = (*(*a1[3] + 128))(a1[3], &v16);
  if ((v9 & 0x80000000) != 0)
  {
    *&v12 = "int CompressedBackend::read(const sg_entry &)";
    *(&v12 + 1) = 27;
    v13 = 16;
    sub_1000445CC(v14, &v12);
    sub_100001FE8(v15, "Internal backend read() failed. ret=", 36);
    std::ostream::operator<<();
    std::ios_base::getloc((v15 + *(v15[0] - 24)));
    v10 = std::locale::use_facet(&v24, &std::ctype<char>::id);
    (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(&v24);
    std::ostream::put();
    std::ostream::flush();
    std::ostream::~ostream();
    sub_100046918(v14);
    std::ios::~ios();
  }

  else
  {
    v9 = (*(*a1 + 208))(a1, a2, v16);
    if (!v9)
    {
      *&v12 = "int CompressedBackend::read(const sg_entry &)";
      *(&v12 + 1) = 27;
      v13 = 16;
      sub_100044738(v14, &v12);
      sub_100001FE8(v15, "Decompression failed", 20);
      std::ostream::~ostream();
      sub_1000470B0(v14);
      std::ios::~ios();
      v9 = 4294967291;
    }
  }

  if (v17)
  {
    sub_10000E984(v17);
  }

  return v9;
}

void sub_100044578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100044860(va);
  v11 = *(v9 - 160);
  if (v11)
  {
    sub_10000E984(v11);
  }

  _Unwind_Resume(a1);
}

void *sub_1000445CC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10004B648(a1, a2);
  *a1 = off_1001FADA0;
  a1[45] = &off_1001FAEA0;
  a1[46] = &off_1001FAEC8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FADA0;
  a1[45] = off_1001FAE28;
  a1[46] = off_1001FAE50;
  return a1;
}

void sub_1000446D0(_Unwind_Exception *a1)
{
  sub_100046918(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000446F4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100046918(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100044738(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10004B710(a1, a2);
  *a1 = off_1001FAFC0;
  a1[45] = &off_1001FB0C0;
  a1[46] = &off_1001FB0E8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FAFC0;
  a1[45] = off_1001FB048;
  a1[46] = off_1001FB070;
  return a1;
}

void sub_10004483C(_Unwind_Exception *a1)
{
  sub_1000470B0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100044860(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000470B0(a1);
  std::ios::~ios();
  return a1;
}

void sub_1000448A4(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[8];
  v7 = *(a2 + 16);
  if (a1[7] + a1[6] - v6 < v7)
  {
    (*(*a1 + 19))(a1);
    v6 = a1[8];
    v7 = *(a2 + 16);
  }

  v8 = *(a2 + 24);
  v9 = *(sub_100195B38() + 1);
  v31 = v6;
  v32 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v33 = v7;
  v34 = v8;
  v35 = v7;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  if (*(a2 + 104) == 1 && *(a2 + 48))
  {
    *a3 = -45;
    *(a3 + 4) = 1;
LABEL_11:
    *(a3 + 8) = 0;
    goto LABEL_12;
  }

  (*(*a1[3] + 136))(&v29);
  if ((v29 & 0x100000000) == 0 && !v30)
  {
    *a3 = 0;
    *(a3 + 4) = 0;
    *(a3 + 16) = 0;
    goto LABEL_11;
  }

  LOBYTE(v24) = 0;
  v25 = 0;
  v27 = &v28;
  v28 = &v24;
  v26 = 0;
  sub_100030254(v16, a2);
  v18 = v28;
  v28 = 0;
  *(v18 + 2) = &v18;
  LOBYTE(v19) = 0;
  v20 = 0;
  v21 = 0;
  if (BYTE4(v29) == 1)
  {
    v19 = v29;
    v20 = 1;
  }

  v10 = v30;
  v22 = v30;
  v30 = 0;
  if (v22)
  {
    *v10 = &v19;
  }

  v11 = a1[9];
  v23 = a1[8];
  v12 = a1[10];
  v13 = &v11[152 * v12];
  if (v12 == a1[11])
  {
    sub_10004B7D8(a1 + 9, &v11[152 * v12], 1, v16, &v39);
  }

  else
  {
    sub_100030464(&v11[152 * v12], v16);
    *(v13 + 14) = v18;
    v18 = 0;
    *(*(v13 + 14) + 16) = v13 + 112;
    v13[120] = 0;
    v13[124] = 0;
    *(v13 + 16) = 0;
    if (v20 == 1)
    {
      *(v13 + 30) = v19;
      v13[124] = 1;
    }

    *(v13 + 17) = v22;
    v22 = 0;
    v14 = *(v13 + 17);
    if (v14)
    {
      *v14 = v13 + 120;
    }

    *(v13 + 18) = v23;
    a1[10] = a1[10] + 1;
  }

  if (v18)
  {
    *(v18 + 2) = 0;
  }

  if (v17)
  {
    sub_10000E984(v17);
  }

  a1[8] = a1[8] + *(a2 + 16);
  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  if (v25 == 1)
  {
    *a3 = v24;
    *(a3 + 4) = 1;
  }

  v15 = v27;
  *(a3 + 16) = v27;
  if (v15)
  {
    *v15 = a3;
  }

  if (v28)
  {
    *(v28 + 2) = 0;
  }

LABEL_12:
  if (v32)
  {
    sub_10000E984(v32);
  }
}

void sub_100044B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a24)
  {
    *(a24 + 16) = 0;
  }

  if (a11)
  {
    sub_10000E984(a11);
  }

  if (a32)
  {
    *(a32 + 16) = 0;
  }

  v34 = *(v32 - 176);
  if (v34)
  {
    sub_10000E984(v34);
  }

  _Unwind_Resume(exception_object);
}

void sub_100044BDC(uint64_t a1)
{
  (*(**(a1 + 24) + 152))(*(a1 + 24));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = 152 * v2;
    v4 = *(a1 + 72) + 112;
    while (1)
    {
      LODWORD(v5) = sub_100044D64((v4 + 8));
      if ((v5 & 0x80000000) == 0)
      {
        if (*(v4 - 96) > v5)
        {
          goto LABEL_7;
        }

        v5 = (*(*a1 + 208))(a1, v4 - 112, *(v4 + 32));
        if (!v5)
        {
          break;
        }
      }

LABEL_8:
      v6 = *v4;
      *v6 = v5;
      *(v6 + 4) = 1;
      sub_100032F74(v4);
      v4 += 152;
      v3 -= 152;
      if (!v3)
      {
        goto LABEL_9;
      }
    }

    *&v7 = "void CompressedBackend::run_futures()";
    *(&v7 + 1) = 35;
    v8 = 16;
    sub_100044E3C(v9, &v7);
    sub_100001FE8(v10, "Decompression failed", 20);
    std::ostream::~ostream();
    sub_100047848(v9);
    std::ios::~ios();
LABEL_7:
    LODWORD(v5) = -5;
    goto LABEL_8;
  }

LABEL_9:
  *(a1 + 64) = *(a1 + 56);
  sub_10004BD28((a1 + 72));
}

void sub_100044D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100044F64(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100044D64(unsigned int *a1)
{
  if (*(a1 + 4) == 1)
  {
    return *a1;
  }

  atomic_fetch_add_explicit(a1 + 1, 1uLL, memory_order_relaxed);
  v6.__m_ = sub_100192398(a1);
  v6.__owns_ = 1;
  std::mutex::lock(v6.__m_);
  v4 = sub_100192424(a1);
  if ((a1[1] & 1) == 0)
  {
    v5 = v4;
    do
    {
      std::condition_variable::wait(v5, &v6);
    }

    while (*(a1 + 4) != 1);
  }

  atomic_fetch_add_explicit(a1 + 1, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  sub_10004B2A0(&v6);
  v2 = *a1;
  if (v6.__owns_)
  {
    std::mutex::unlock(v6.__m_);
  }

  return v2;
}

void sub_100044E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100044E3C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10004BC60(a1, a2);
  *a1 = off_1001FB1E0;
  a1[45] = &off_1001FB2E0;
  a1[46] = &off_1001FB308;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FB1E0;
  a1[45] = off_1001FB268;
  a1[46] = off_1001FB290;
  return a1;
}

void sub_100044F40(_Unwind_Exception *a1)
{
  sub_100047848(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100044F64(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100047848(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100044FA8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) != *(a1 + 56))
  {
    (*(*a1 + 152))(a1);
  }

  if (*(a2 + 104) == 1 && *(a2 + 48) != 0)
  {
    return 4294967251;
  }

  v5 = (*(*a1 + 200))(a1, a2);
  if (!v5)
  {
    return 4294967291;
  }

  v6 = v5;
  v7 = *(a1 + 56);
  v8 = *(a2 + 24);
  v9 = *(sub_100195B38() + 1);
  v17 = v7;
  v18 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = v6;
  v20 = v8;
  v21 = v6;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v10 = (*(**(a1 + 24) + 120))(*(a1 + 24), &v17);
  if ((v10 & 0x80000000) != 0)
  {
    *&v13 = "int CompressedBackend::write(const sg_entry &)";
    *(&v13 + 1) = 28;
    v14 = 16;
    sub_100045218(v15, &v13);
    sub_100001FE8(v16, "Internal backend write() failed. ret=", 37);
    std::ostream::operator<<();
    std::ios_base::getloc((v16 + *(v16[0] - 24)));
    v11 = std::locale::use_facet(&v25, &std::ctype<char>::id);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v25);
    std::ostream::put();
    std::ostream::flush();
    std::ostream::~ostream();
    sub_100047FE0(v15);
    std::ios::~ios();
  }

  else
  {
    v10 = v6;
  }

  if (v18)
  {
    sub_10000E984(v18);
  }

  return v10;
}

void sub_1000451DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v15 = *(v13 - 160);
  if (v15)
  {
    sub_10000E984(v15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100045218(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10004BD88(a1, a2);
  *a1 = off_1001FB400;
  a1[45] = &off_1001FB500;
  a1[46] = &off_1001FB528;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FB400;
  a1[45] = off_1001FB488;
  a1[46] = off_1001FB4B0;
  return a1;
}

void sub_10004531C(_Unwind_Exception *a1)
{
  sub_100047FE0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100045340(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100047FE0(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100045384(uint64_t a1, void *a2)
{
  v3 = sub_100001FE8(a2, "Compressed(", 11);
  v6 = *(a1 + 40);
  v4 = sub_1000453E4(v3, &v6);
  return sub_100001FE8(v4, ")", 1);
}

void *sub_1000453E4(void *a1, _DWORD *a2)
{
  v2 = &off_1001FB610;
  v3 = 120;
  while (*(v2 - 2) != *a2)
  {
    v2 += 3;
    v3 -= 24;
    if (!v3)
    {
      v4 = "no_match";
      v5 = 8;
      return sub_100001FE8(a1, v4, v5);
    }
  }

  v4 = *v2;
  v5 = v2[1];
  return sub_100001FE8(a1, v4, v5);
}

void sub_100045524(_Unwind_Exception *a1)
{
  v3 = v1[318];
  v1[318] = 0;
  if (v3)
  {
    operator delete();
  }

  v4 = v1[317];
  v1[317] = 0;
  if (v4)
  {
    operator delete[]();
  }

  sub_100044248(v1);
  _Unwind_Resume(a1);
}

void sub_100045670(_Unwind_Exception *a1)
{
  v3 = v1[318];
  v1[318] = 0;
  if (v3)
  {
    operator delete();
  }

  v4 = v1[317];
  v1[317] = 0;
  if (v4)
  {
    operator delete[]();
  }

  sub_100044248(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100045758(uint64_t a1, uint64_t a2, char *a3)
{
  destLen = *(a2 + 32);
  if (!BZ2_bzBuffToBuffDecompress(*a2, &destLen, a3, *(a2 + 16), 0, 0))
  {
    return destLen;
  }

  *&v4 = "size_t BZIPCompressedBackend::decompress(const sg_entry &, char *) const";
  *(&v4 + 1) = 40;
  v5 = 16;
  sub_100045838(v6, &v4);
  sub_100001FE8(v7, "BZIP decompression failed, res=", 31);
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_100049270(v6);
  std::ios::~ios();
  return 0;
}

void sub_100045824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100045960(va);
  _Unwind_Resume(a1);
}

void *sub_100045838(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10004BF38(a1, a2);
  *a1 = off_1001FB8B8;
  a1[45] = &off_1001FB9B8;
  a1[46] = &off_1001FB9E0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FB8B8;
  a1[45] = off_1001FB940;
  a1[46] = off_1001FB968;
  return a1;
}

void sub_10004593C(_Unwind_Exception *a1)
{
  sub_100049270(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100045960(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100049270(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000459A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  destLen = v2;
  v3 = v2 / 0x186A0;
  if ((v2 / 0x186A0) >= 8)
  {
    LODWORD(v3) = 8;
  }

  v4 = BZ2_bzBuffToBuffCompress(*(a1 + 56), &destLen, *a2, v2, v3 + 1, 0, 0);
  if (v4 != -8)
  {
    if (!v4)
    {
      return destLen;
    }

    *&v6 = "size_t BZIPCompressedBackend::compress(const sg_entry &) const";
    *(&v6 + 1) = 38;
    v7 = 16;
    sub_100045AB8(v8, &v6);
    sub_100001FE8(v9, "BZIP compression failed, res=", 29);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100049A08(v8);
    std::ios::~ios();
  }

  return 0;
}

void sub_100045AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100045BE0(va);
  _Unwind_Resume(a1);
}

void *sub_100045AB8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10004C000(a1, a2);
  *a1 = off_1001FBAD8;
  a1[45] = &off_1001FBBD8;
  a1[46] = &off_1001FBC00;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FBAD8;
  a1[45] = off_1001FBB60;
  a1[46] = off_1001FBB88;
  return a1;
}

void sub_100045BBC(_Unwind_Exception *a1)
{
  sub_100049A08(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100045BE0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100049A08(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100045C68(void *a1)
{
  *a1 = off_1001FAA90;
  v2 = a1[318];
  a1[318] = 0;
  if (v2)
  {
    operator delete();
  }

  v3 = a1[317];
  a1[317] = 0;
  if (v3)
  {
    operator delete[]();
  }

  return sub_100044248(a1);
}

void sub_100045CFC(void *a1)
{
  sub_100045C68(a1);

  operator delete();
}

void sub_100045E2C(void **a1)
{
  (*(*a1[3] + 80))(&v2);
  ((*a1)[24])(a1, &v2);
  if (v3)
  {
    sub_10000E984(v3);
  }
}

void sub_100045EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100045ED8(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (!v2)
  {
    return 0;
  }

  v4 = *a2;
  v5 = 112 * v2;
  while (1)
  {
    v6 = (*(*a1 + 128))(a1, v4);
    if ((v6 & 0x80000000) != 0)
    {
      break;
    }

    v4 += 112;
    v5 -= 112;
    if (!v5)
    {
      return 0;
    }
  }

  v7 = v6;
  *&v9 = "int Backend::read(const elements_t &)";
  *(&v9 + 1) = 17;
  v10 = 16;
  sub_100049F08(v11, &v9);
  sub_100001FE8(v12, "Backend: failed reading element in vector", 41);
  std::ostream::~ostream();
  sub_10004A13C(v11);
  std::ios::~ios();
  return v7;
}

void sub_100045FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10004A030(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100045FE0(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (!v2)
  {
    return 0;
  }

  v4 = *a2;
  v5 = 112 * v2;
  while (1)
  {
    v6 = (*(*a1 + 120))(a1, v4);
    if ((v6 & 0x80000000) != 0)
    {
      break;
    }

    v4 += 112;
    v5 -= 112;
    if (!v5)
    {
      return 0;
    }
  }

  v7 = v6;
  *&v9 = "int Backend::write(const elements_t &)";
  *(&v9 + 1) = 18;
  v10 = 16;
  sub_10004A8D4(v11, &v9);
  sub_100001FE8(v12, "Backend: failed writing element in vector", 41);
  std::ostream::~ostream();
  sub_10004AB08(v11);
  std::ios::~ios();
  return v7;
}

void sub_1000460D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10004A9FC(va);
  _Unwind_Resume(a1);
}

void sub_1000460E8(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  LOBYTE(v6) = 0;
  v7 = 0;
  v9 = &v10;
  v10 = &v6;
  v8 = 0;
  v3 = (*(*a1 + 120))(a1);
  v4 = v10;
  *v10 = v3;
  *(v4 + 4) = 1;
  sub_100032F74(&v10);
  *a2 = 0;
  *(a2 + 4) = 0;
  *(a2 + 8) = 0;
  if (v7 == 1)
  {
    *a2 = v6;
    *(a2 + 4) = 1;
  }

  v5 = v9;
  *(a2 + 16) = v9;
  if (v5)
  {
    *v5 = a2;
  }

  if (v10)
  {
    *(v10 + 2) = 0;
  }
}

void sub_1000461A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    *(a12 + 16) = 0;
  }

  _Unwind_Resume(a1);
}

void *sub_1000461B8(void **a1)
{
  v2 = ((*a1)[8])(a1);
  v3 = sub_100001FE8(v2, "(", 1);
  v4 = (*(*a1[3] + 64))(a1[3], v3);

  return sub_100001FE8(v4, ")", 1);
}

void sub_1000462A8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100001DC0(v3);
  sub_100001FE8(v3, "Unexpected context construction by ", 35);
  sub_100192C84(v3, a1);
  sub_10000EBDC(exception, v3, 0x16u);
}

void sub_10004633C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a12);
  std::ostream::~ostream();
  std::ios::~ios();
  if (v28)
  {
    __cxa_free_exception(v27);
  }

  _Unwind_Resume(a1);
}

void sub_100046458(void *a1)
{
  sub_100044248(a1);

  operator delete();
}

void sub_100046530(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  LOBYTE(v6) = 0;
  v7 = 0;
  v9 = &v10;
  v10 = &v6;
  v8 = 0;
  v3 = (*(*a1 + 128))(a1);
  v4 = v10;
  *v10 = v3;
  *(v4 + 4) = 1;
  sub_100032F74(&v10);
  *a2 = 0;
  *(a2 + 4) = 0;
  *(a2 + 8) = 0;
  if (v7 == 1)
  {
    *a2 = v6;
    *(a2 + 4) = 1;
  }

  v5 = v9;
  *(a2 + 16) = v9;
  if (v5)
  {
    *v5 = a2;
  }

  if (v10)
  {
    *(v10 + 2) = 0;
  }
}

void sub_1000465F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    *(a12 + 16) = 0;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100046604(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1 + 112;
    do
    {
      if (*v3)
      {
        *(*v3 + 16) = 0;
      }

      v4 = *(v3 - 104);
      if (v4)
      {
        sub_10000E984(v4);
      }

      v3 += 152;
      --v2;
    }

    while (v2);
  }

  if (*(a1 + 16) && a1 + 24 != *a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100046680(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100046918(v1);

  return std::ios::~ios();
}

uint64_t sub_1000466CC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100046918(v1);

  return std::ios::~ios();
}

void sub_10004672C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100046918(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100046794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000467D0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10004683C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100046918(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000468A0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100046918(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100046918(uint64_t a1)
{
  *a1 = &off_1001FAF38;
  sub_100046A84(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100046A84(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_100046C34((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100046BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100046BFC(uint64_t a1)
{
  sub_100046918(a1);

  operator delete();
}

int *sub_100046C34(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 56;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 56;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100046E18(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000470B0(v1);

  return std::ios::~ios();
}

uint64_t sub_100046E64(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000470B0(v1);

  return std::ios::~ios();
}

void sub_100046EC4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000470B0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100046F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100046F68(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100046FD4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000470B0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100047038(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000470B0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000470B0(uint64_t a1)
{
  *a1 = &off_1001FB158;
  sub_10004721C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10004721C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_1000473CC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100047368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100047394(uint64_t a1)
{
  sub_1000470B0(a1);

  operator delete();
}

int *sub_1000473CC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 62;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 62;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000475B0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100047848(v1);

  return std::ios::~ios();
}

uint64_t sub_1000475FC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100047848(v1);

  return std::ios::~ios();
}

void sub_10004765C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100047848(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000476C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100047700(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10004776C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100047848(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000477D0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100047848(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100047848(uint64_t a1)
{
  *a1 = &off_1001FB378;
  sub_1000479B4(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1000479B4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_100047B64((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100047B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100047B2C(uint64_t a1)
{
  sub_100047848(a1);

  operator delete();
}

int *sub_100047B64(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 107;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 107;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100047D48(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100047FE0(v1);

  return std::ios::~ios();
}

uint64_t sub_100047D94(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100047FE0(v1);

  return std::ios::~ios();
}

void sub_100047DF4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100047FE0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100047E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100047E98(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100047F04(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100047FE0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100047F68(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100047FE0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100047FE0(uint64_t a1)
{
  *a1 = &off_1001FB598;
  sub_10004814C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10004814C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_1000482FC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100048298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000482C4(uint64_t a1)
{
  sub_100047FE0(a1);

  operator delete();
}

int *sub_1000482FC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 137;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 137;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

_DWORD *sub_1000484E0(_DWORD *a1, int *a2)
{
  *a1 = dword_1001BC944[*a2];
  if (sub_1000E9608())
  {
    *&v5 = "StandardCompressedBackend::pimpl::pimpl(algo_t)";
    *(&v5 + 1) = 39;
    v6 = 2;
    sub_10004860C(v7, &v5);
    sub_100001FE8(v8, "Using compression ", 18);
    v9 = *a2;
    sub_1000453E4(v8, &v9);
    *(&v8[1] + *(v8[0] - 24)) = *(&v8[1] + *(v8[0] - 24)) & 0xFFFFFFB5 | 8;
    sub_100001FE8(v8, " constant ", 10);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100048840(v7);
    std::ios::~ios();
  }

  return a1;
}

void sub_1000485F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100048734(va);
  _Unwind_Resume(a1);
}

void *sub_10004860C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100048778(a1, a2);
  *a1 = off_1001FB698;
  a1[45] = &off_1001FB798;
  a1[46] = &off_1001FB7C0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FB698;
  a1[45] = off_1001FB720;
  a1[46] = off_1001FB748;
  return a1;
}

void sub_100048710(_Unwind_Exception *a1)
{
  sub_100048840(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100048734(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100048840(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100048778(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1001FB830;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100048828(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100048840(uint64_t a1)
{
  *a1 = &off_1001FB830;
  sub_100048C80(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_1000489AC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100048840(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100048A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100048A50(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100048ABC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100048840(v1);

  return std::ios::~ios();
}

void sub_100048B08(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100048840(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100048B6C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100048840(v1);

  return std::ios::~ios();
}

void sub_100048BCC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100048840(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100048C48(uint64_t a1)
{
  sub_100048840(a1);

  operator delete();
}

uint64_t sub_100048C80(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_100048DF4((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100048DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100048DF4(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 195;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 195;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100048FD8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100049270(v1);

  return std::ios::~ios();
}

uint64_t sub_100049024(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100049270(v1);

  return std::ios::~ios();
}

void sub_100049084(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100049270(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000490EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100049128(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100049194(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100049270(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000491F8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100049270(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100049270(uint64_t a1)
{
  *a1 = &off_1001FBA50;
  sub_1000493DC(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1000493DC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10004958C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100049528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100049554(uint64_t a1)
{
  sub_100049270(a1);

  operator delete();
}

int *sub_10004958C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 264;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 264;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100049770(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100049A08(v1);

  return std::ios::~ios();
}

uint64_t sub_1000497BC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100049A08(v1);

  return std::ios::~ios();
}

void sub_10004981C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100049A08(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100049884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000498C0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10004992C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100049A08(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100049990(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100049A08(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100049A08(uint64_t a1)
{
  *a1 = &off_1001FBC70;
  sub_100049B74(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100049B74(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_100049D24((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100049CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100049CEC(uint64_t a1)
{
  sub_100049A08(a1);

  operator delete();
}

int *sub_100049D24(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 287;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 287;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_100049F08(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10004A074(a1, a2);
  *a1 = off_1001FBCF8;
  a1[45] = &off_1001FBDF8;
  a1[46] = &off_1001FBE20;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FBCF8;
  a1[45] = off_1001FBD80;
  a1[46] = off_1001FBDA8;
  return a1;
}

void sub_10004A00C(_Unwind_Exception *a1)
{
  sub_10004A13C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10004A030(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10004A13C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10004A074(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1001FBE90;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10004A124(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10004A13C(uint64_t a1)
{
  *a1 = &off_1001FBE90;
  sub_10004A57C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10004A2A8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10004A13C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10004A310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10004A34C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_10004A3B8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10004A13C(v1);

  return std::ios::~ios();
}

void sub_10004A404(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10004A13C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10004A468(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10004A13C(v1);

  return std::ios::~ios();
}

void sub_10004A4C8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10004A13C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10004A544(uint64_t a1)
{
  sub_10004A13C(a1);

  operator delete();
}

uint64_t sub_10004A57C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10004A6F0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10004A6C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10004A6F0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 121;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 121;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_10004A8D4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10004AA40(a1, a2);
  *a1 = off_1001FBF18;
  a1[45] = &off_1001FC018;
  a1[46] = &off_1001FC040;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FBF18;
  a1[45] = off_1001FBFA0;
  a1[46] = off_1001FBFC8;
  return a1;
}

void sub_10004A9D8(_Unwind_Exception *a1)
{
  sub_10004AB08(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10004A9FC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10004AB08(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10004AA40(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1001FC0B0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10004AAF0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10004AB08(uint64_t a1)
{
  *a1 = &off_1001FC0B0;
  sub_10004AF48(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10004AC74(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10004AB08(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10004ACDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10004AD18(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_10004AD84(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10004AB08(v1);

  return std::ios::~ios();
}

void sub_10004ADD0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10004AB08(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10004AE34(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10004AB08(v1);

  return std::ios::~ios();
}

void sub_10004AE94(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10004AB08(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10004AF10(uint64_t a1)
{
  sub_10004AB08(a1);

  operator delete();
}

uint64_t sub_10004AF48(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10004B0BC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10004B094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10004B0BC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 132;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 132;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sub_10004B2A0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    std::mutex::unlock(*a1);
    *(a1 + 8) = 0;
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    sub_10004B2E4(v2, v3, v4);
  }
}

void sub_10004B370(void *a1, void *a2, size_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1001FC130;
  v3 = *a3;
  v4 = 4;
  sub_100044030(a1 + 3, a2, &v4, v3);
}

void sub_10004B420(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1001FC130;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10004B538(void *a1, void *a2, int *a3, size_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1001FC180;
  v4 = *a3;
  sub_100045424(a1 + 3, a2, &v4, *a4);
}

void sub_10004B5CC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1001FC180;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10004B648(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1001FAF38;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10004B6F8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10004B710(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1001FB158;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10004B7C0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_10004B7D8(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = sub_10004B88C(a1, a3);
  if (v11 >= 0xD79435E50D7944)
  {
    sub_100012CFC("get_next_capacity, allocator's max size reached");
  }

  v12 = v11;
  v13 = operator new(152 * v11);
  sub_10004B90C(a1, v13, v12, a2, a3, a4);
  *a5 = *a1 + a2 - v10;
}

unint64_t sub_10004B88C(uint64_t a1, uint64_t a2)
{
  v2 = 0xD79435E50D7943;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xD79435E50D7943 - v4 < a2 - v4 + v3)
  {
    sub_100012CFC("get_next_capacity, allocator's max size reached");
  }

  v5 = v4 >> 61;
  v6 = 8 * v4;
  if (v5 > 4)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  v8 = v6 / 5;
  if (v5)
  {
    v8 = v7;
  }

  v9 = v3 + a2;
  if (v8 < 0xD79435E50D7943)
  {
    v2 = v8;
  }

  if (v9 <= v2)
  {
    return v2;
  }

  else
  {
    return v9;
  }
}

void sub_10004B90C(void **a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  sub_10004B9EC(a1, *a1, a4, *a1 + 152 * a1[1], a2, a5, a6);
  if (v10)
  {
    v11 = a1[1];
    if (v11)
    {
      v12 = v10 + 112;
      do
      {
        if (*v12)
        {
          *(*v12 + 16) = 0;
        }

        v13 = *(v12 - 13);
        if (v13)
        {
          sub_10000E984(v13);
        }

        v12 += 152;
        --v11;
      }

      while (v11);
    }

    if (a1 + 3 != *a1)
    {
      operator delete(*a1);
    }
  }

  v14 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v14;
  a1[2] = a3;
}

void sub_10004B9C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if ((v2 + 24) != v1)
    {
      operator delete(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10004B9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a5;
  v17 = a1;
  v16 = sub_10004BAF0(a1, a2, a3, a5);
  v12 = sub_100030464(v16, a7);
  *(v12 + 112) = *(a7 + 112);
  *(a7 + 112) = 0;
  *(*(v12 + 112) + 16) = v12 + 112;
  *(v12 + 120) = 0;
  *(v12 + 124) = 0;
  *(v12 + 128) = 0;
  if (*(a7 + 124) == 1)
  {
    *(v12 + 120) = *(a7 + 120);
    *(v12 + 124) = 1;
  }

  *(v12 + 136) = *(a7 + 136);
  *(a7 + 136) = 0;
  v13 = *(v12 + 136);
  if (v13)
  {
    *v13 = v12 + 120;
  }

  *(v12 + 144) = *(a7 + 144);
  sub_10004BAF0(a1, a3, a4, v12 + 152 * a6);
  v15 = 0;
  v16 = 0;
  return sub_10004BC08(&v15);
}

void sub_10004BADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004BC08(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10004BAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      sub_100030464(a4 + v7, a2 + v7);
      *(v8 + 112) = *(a2 + v7 + 112);
      *(a2 + v7 + 112) = 0;
      *(*(v8 + 112) + 16) = v8 + 112;
      *(v8 + 120) = 0;
      *(v8 + 124) = 0;
      *(v8 + 128) = 0;
      if (*(a2 + v7 + 124) == 1)
      {
        *(v8 + 120) = *(a2 + v7 + 120);
        *(v8 + 124) = 1;
      }

      *(a4 + v7 + 136) = *(a2 + v7 + 136);
      *(a2 + v7 + 136) = 0;
      v9 = *(a4 + v7 + 136);
      if (v9)
      {
        *v9 = v8 + 120;
      }

      *(a4 + v7 + 144) = *(a2 + v7 + 144);
      v7 += 152;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_10004BBD8(void *a1)
{
  __cxa_begin_catch(a1);
  if (v3)
  {
    sub_1001982F4(v1, v2);
  }

  __cxa_rethrow();
}

uint64_t *sub_10004BC08(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v2 != v3)
  {
    v4 = *(v2 + 112);
    if (v4)
    {
      *(v4 + 16) = 0;
    }

    v5 = *(v2 + 8);
    if (v5)
    {
      sub_10000E984(v5);
      v2 = *a1;
      v3 = a1[1];
    }

    v2 += 152;
    *a1 = v2;
  }

  return a1;
}

uint64_t sub_10004BC60(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1001FB378;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10004BD10(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_10004BD28(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1 + 112;
    do
    {
      if (*v3)
      {
        *(*v3 + 16) = 0;
      }

      v4 = *(v3 - 104);
      if (v4)
      {
        sub_10000E984(v4);
      }

      v3 += 152;
      --v2;
    }

    while (v2);
  }

  a1[1] = 0;
}

uint64_t sub_10004BD88(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1001FB598;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10004BE38(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_10004BEDC(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1001FC180;
  sub_1000455A4(a1 + 3, a2, a3);
}

uint64_t sub_10004BF38(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1001FBA50;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10004BFE8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10004C000(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1001FBC70;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10004C0B0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_10004C154(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1001FC130;
  sub_100044194(a1 + 3, a2, a3);
}

void sub_10004C1D8(uint64_t a1)
{
  std::mutex::lock((a1 + 8));
  if (atomic_fetch_add(a1, 0xFFFFFFFFFFFFFFFFLL) == 1 && *(a1 + 72) == 1)
  {
    *(a1 + 72) = 0;
    std::condition_variable::notify_one((a1 + 80));
  }

  std::mutex::unlock((a1 + 8));
}

uint64_t sub_10004C23C(uint64_t result)
{
  atomic_fetch_add(result, 1uLL);
  *(result + 72) = 1;
  return result;
}

void sub_10004C24C(uint64_t a1)
{
  v2.__m_ = (a1 + 8);
  v2.__owns_ = 1;
  std::mutex::lock((a1 + 8));
  if (atomic_fetch_add(a1, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    *(a1 + 72) = 0;
  }

  else if (*(a1 + 72) == 1)
  {
    do
    {
      std::condition_variable::wait((a1 + 80), &v2);
    }

    while ((*(a1 + 72) & 1) != 0);
  }

  if (v2.__owns_)
  {
    std::mutex::unlock(v2.__m_);
  }
}

uint64_t sub_10004C2D4(uint64_t a1, unint64_t a2)
{
  v18 = a2;
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  LOBYTE(v15[0]) = 0;
  sub_10004EB60(a1, &v18, &v18, v15);
  v4 = v3;
  if ((v3 & 1) == 0)
  {
    if (sub_1000E9608())
    {
      *&v13 = "sparse_bundles::open_bands_t::insert(uint64_t)";
      *(&v13 + 1) = 36;
      v14 = 2;
      sub_10004C5C0(v15, &v13);
      sub_100001FE8(v16, "Band ", 5);
      *(&v16[1] + *(v16[0] - 24)) = *(&v16[1] + *(v16[0] - 24)) & 0xFFFFFFB5 | 8;
      std::ostream::operator<<();
      *(&v16[1] + *(v16[0] - 24)) = *(&v16[1] + *(v16[0] - 24)) & 0xFFFFFFB5 | 2;
      sub_100001FE8(v16, " was opened in the background, waiting for it to become available", 65);
      std::ostream::~ostream();
      sub_10004D5A0(v15);
      std::ios::~ios();
    }

    v7 = *(a1 + 8);
    v6 = (a1 + 8);
    v5 = v7;
    if (v7)
    {
      do
      {
        v8 = v6;
        do
        {
          v9 = v5[4];
          v10 = v9 >= v18;
          v11 = v9 < v18;
          if (v10)
          {
            v8 = v5;
          }

          v5 = v5[v11];
        }

        while (v5);
        if (v8 == v6)
        {
          break;
        }

        if (v18 < v8[4])
        {
          break;
        }

        if (v8[5])
        {
          break;
        }

        std::condition_variable::wait((v6 + 10), &__lk);
        v5 = *v6;
      }

      while (*v6);
    }

    if (sub_1000E9608())
    {
      *&v13 = "sparse_bundles::open_bands_t::insert(uint64_t)";
      *(&v13 + 1) = 36;
      v14 = 2;
      sub_10004C72C(v15, &v13);
      sub_100001FE8(v16, "Band ", 5);
      *(&v16[1] + *(v16[0] - 24)) = *(&v16[1] + *(v16[0] - 24)) & 0xFFFFFFB5 | 8;
      std::ostream::operator<<();
      *(&v16[1] + *(v16[0] - 24)) = *(&v16[1] + *(v16[0] - 24)) & 0xFFFFFFB5 | 2;
      sub_100001FE8(v16, " is now available", 17);
      std::ostream::~ostream();
      sub_10004DD38(v15);
      std::ios::~ios();
    }
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  return v4 & 1;
}

void sub_10004C574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (*(v13 - 64) == 1)
  {
    std::mutex::unlock(*(v13 - 72));
  }

  _Unwind_Resume(exception_object);
}

void *sub_10004C5C0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10004EC38(a1, a2);
  *a1 = off_1001FC200;
  a1[45] = &off_1001FC300;
  a1[46] = &off_1001FC328;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FC200;
  a1[45] = off_1001FC288;
  a1[46] = off_1001FC2B0;
  return a1;
}

void sub_10004C6C4(_Unwind_Exception *a1)
{
  sub_10004D5A0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10004C6E8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10004D5A0(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10004C72C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10004ED00(a1, a2);
  *a1 = off_1001FC420;
  a1[45] = &off_1001FC520;
  a1[46] = &off_1001FC548;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FC420;
  a1[45] = off_1001FC4A8;
  a1[46] = off_1001FC4D0;
  return a1;
}

void sub_10004C830(_Unwind_Exception *a1)
{
  sub_10004DD38(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10004C854(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10004DD38(a1);
  std::ios::~ios();
  return a1;
}

void sub_10004C898(uint64_t a1, unint64_t a2, int a3)
{
  std::mutex::lock((a1 + 24));
  v6 = *(a1 + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = a1 + 8;
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
  if (v7 == a1 + 8 || *(v7 + 32) > a2)
  {
LABEL_9:
    v7 = a1 + 8;
  }

  *(v7 + 40) = a3;
  if (a3)
  {
    std::condition_variable::notify_all((a1 + 88));
  }

  std::mutex::unlock((a1 + 24));
}

void sub_10004C934(uint64_t a1, unint64_t a2)
{
  v7 = a2;
  std::mutex::lock((a1 + 24));
  sub_10004EDC8(a1, &v7);
  if (sub_1000E9608())
  {
    *&v3 = "sparse_bundles::open_bands_t::remove(uint64_t)";
    *(&v3 + 1) = 36;
    v4 = 2;
    sub_10004CA94(v5, &v3);
    sub_100001FE8(v6, "Band ", 5);
    *(&v6[1] + *(v6[0] - 24)) = *(&v6[1] + *(v6[0] - 24)) & 0xFFFFFFB5 | 8;
    std::ostream::operator<<();
    *(&v6[1] + *(v6[0] - 24)) = *(&v6[1] + *(v6[0] - 24)) & 0xFFFFFFB5 | 2;
    sub_100001FE8(v6, " is closed, notifying waiters", 29);
    std::ostream::~ostream();
    sub_10004E4D0(v5);
    std::ios::~ios();
  }

  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void *sub_10004CA94(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10004F240(a1, a2);
  *a1 = off_1001FC640;
  a1[45] = &off_1001FC740;
  a1[46] = &off_1001FC768;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001FC640;
  a1[45] = off_1001FC6C8;
  a1[46] = off_1001FC6F0;
  return a1;
}

void sub_10004CB98(_Unwind_Exception *a1)
{
  sub_10004E4D0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10004CBBC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10004E4D0(a1);
  std::ios::~ios();
  return a1;
}

void sub_10004CC00(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  a1[2] = 0;
  v2 = 0;
  sub_10004F308();
}

void sub_10004CD1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_10004FE34((v14 + 49));
  sub_10004E9D0(v15 + 144);
  v19 = v14[40];
  v14[40] = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  sub_10004EA1C(v15);
  std::condition_variable::~condition_variable(v16);
  std::mutex::~mutex((v15 - 120));
  v20 = v14[4];
  if (v20)
  {
    sub_10000E984(v20);
  }

  v21 = v14[2];
  v14[2] = 0;
  if (v21)
  {
    (*(*v21 + 16))(v21);
  }

  v22 = *v17;
  *v17 = 0;
  if (v22)
  {
    (*(*v22 + 16))(v22);
  }

  _Unwind_Resume(a1);
}

void sub_10004CE24(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x4802000000;
  v12 = sub_10004D010;
  v13 = sub_10004D034;
  __p = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  sub_10004FEB8(a1 + 328, 0, v18);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_10004D048;
  v8[3] = &unk_1001FC1C8;
  v8[4] = a2;
  v8[5] = &v9;
  sub_10004FC88(v18, v8);
  sub_10004FE34(v18);
  if (*(v10 + 16))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v4 = v10;
    v5 = *(v10 + 16);
    *exception = &off_1002260F0;
    v6 = std::generic_category();
    *(exception + 1) = v5;
    *(exception + 2) = v6;
    v7 = v4[7];
    *(exception + 24) = *(v4 + 5);
    *(exception + 5) = v7;
    v4[6] = 0;
    v4[7] = 0;
    v4[5] = 0;
    exception[48] = 1;
  }

  _Block_object_dispose(&v9, 8);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }
}

void sub_10004CFD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a15, 8);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10004D010(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(a1 + 64) = *(a2 + 64);
  return result;
}

void sub_10004D034(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

uint64_t sub_10004D164@<X0>(void *a2@<X8>)
{
  sub_100001DC0(&v4);
  *(&v4 + *(v4 - 3) + 8) = *(&v4 + *(v4 - 3) + 8) & 0xFFFFFFB5 | 8;
  std::ostream::operator<<();
  sub_10000EC78(&v4, a2);
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  std::locale::~locale(v6);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10004D2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10004D308(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10004D5A0(v1);

  return std::ios::~ios();
}

uint64_t sub_10004D354(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10004D5A0(v1);

  return std::ios::~ios();
}

void sub_10004D3B4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10004D5A0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10004D41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10004D458(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10004D4C4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10004D5A0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10004D528(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10004D5A0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10004D5A0(uint64_t a1)
{
  *a1 = &off_1001FC398;
  sub_10004D70C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10004D70C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10004D8BC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10004D858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004D884(uint64_t a1)
{
  sub_10004D5A0(a1);

  operator delete();
}

int *sub_10004D8BC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 72;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 72;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10004DAA0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10004DD38(v1);

  return std::ios::~ios();
}

uint64_t sub_10004DAEC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10004DD38(v1);

  return std::ios::~ios();
}

void sub_10004DB4C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10004DD38(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10004DBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10004DBF0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10004DC5C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10004DD38(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10004DCC0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10004DD38(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10004DD38(uint64_t a1)
{
  *a1 = &off_1001FC5B8;
  sub_10004DEA4(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10004DEA4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10004E054((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10004DFF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004E01C(uint64_t a1)
{
  sub_10004DD38(a1);

  operator delete();
}

int *sub_10004E054(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 79;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 79;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10004E238(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10004E4D0(v1);

  return std::ios::~ios();
}

uint64_t sub_10004E284(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10004E4D0(v1);

  return std::ios::~ios();
}

void sub_10004E2E4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10004E4D0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10004E34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10004E388(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10004E3F4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10004E4D0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10004E458(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10004E4D0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10004E4D0(uint64_t a1)
{
  *a1 = &off_1001FC7D8;
  sub_10004E63C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10004E63C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10004E7EC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10004E788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004E7B4(uint64_t a1)
{
  sub_10004E4D0(a1);

  operator delete();
}

int *sub_10004E7EC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E957C(v6, v7);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v8, *(a1 + 16)))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 68158466;
    v22 = v4;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = 98;
    v27 = 2082;
    v28 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v20, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);
    if (v13)
    {
      v14 = v13;
      fprintf(__stderrp, "%s\n", v13);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E957C(v6, v7);
    v16 = *(a1 + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      *buf = 68158466;
      v22 = v4;
      v23 = 2080;
      v24 = v17;
      v25 = 2048;
      v26 = 98;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10004E9D0(uint64_t a1)
{
  v3 = (a1 + 24);
  sub_100018720(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10004EA1C(uint64_t a1)
{
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  sub_1000285E0(a1, *(a1 + 8));
  return a1;
}

std::string *sub_10004EA5C(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_10004EB18(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_10004EA5C(a1, __s, v4);
}

void *sub_10004EB60(uint64_t a1, unint64_t *a2, void *a3, _BYTE *a4)
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

uint64_t sub_10004EC38(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1001FC398;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10004ECE8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10004ED00(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1001FC5B8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10004EDB0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10004EDC8(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  sub_10004EE4C(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *sub_10004EE4C(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_10004EEC0(v6, a2);
  return v3;
}

uint64_t *sub_10004EEC0(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (*(v23 + 24))
  {
    v24 = *(v7 + 8);
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    *(v7 + 8) = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = *(v7 + 16);
    *(v24 + 16) = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    *(v7 + 16) = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

uint64_t sub_10004F240(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1001FC7D8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10004F2F0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_10004F38C(void *a1, int *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1001FC858;
  v3 = *a2;
  v4 = sub_100195AE4();
  v6 = v5;
  sub_100192AE0(a1 + 3);
  a1[3] = off_1001FC8A8;
  a1[6] = v3;
  a1[7] = v4;
  a1[8] = v6;
  return a1;
}

void sub_10004F448(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1001FC858;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10004F49C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_10004F4B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10004F4E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_10004F5DC(void *result, int a2)
{
  if (a2 > 2)
  {
    if (a2 > 4)
    {
      if (a2 == 5)
      {
        v2 = "eject";
      }

      else
      {
        v2 = "unmap";
      }
    }

    else
    {
      if (a2 == 3)
      {
        v2 = "barrier";
        v3 = 7;
        return sub_100001FE8(result, v2, v3);
      }

      v2 = "flush";
    }

LABEL_15:
    v3 = 5;
    return sub_100001FE8(result, v2, v3);
  }

  if (!a2)
  {
    v2 = "read";
    v3 = 4;
    return sub_100001FE8(result, v2, v3);
  }

  if (a2 == 1)
  {
    v2 = "write";
    goto LABEL_15;
  }

  return result;
}

void *sub_10004F660(void *a1, uint64_t a2)
{
  v4 = *(a1 + *(*a1 - 24) + 8);
  v5 = sub_100001FE8(a1, "device_command: ", 16);
  v6 = *v5;
  v7 = *v5;
  *(v5 + *(*v5 - 24) + 8) = *(v5 + *(*v5 - 24) + 8) & 0xFFFFFFB5 | 8;
  v8 = (v5 + *(v7 - 24));
  if (v8[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v8);
    v9 = std::locale::use_facet(&v19, &std::ctype<char>::id);
    v10 = (v9->__vftable[2].~facet_0)(v9, 32);
    std::locale::~locale(&v19);
    v8[1].__fmtflags_ = v10;
    v6 = *v5;
  }

  v8[1].__fmtflags_ = 48;
  *(v5 + *(v6 - 24) + 24) = 2;
  *(v5 + *(v6 - 24) + 8) |= 0x200u;
  sub_100001FE8(v5, "[start: ", 8);
  v11 = std::ostream::operator<<();
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 8) = *(v11 + *(*v11 - 24) + 8) & 0xFFFFFFB5 | 2;
  *(v11 + *(v12 - 24) + 24) = 0;
  *(v11 + *(v12 - 24) + 8) &= ~0x200u;
  sub_100001FE8(v11, " size: ", 7);
  v13 = std::ostream::operator<<();
  v14 = sub_100001FE8(v13, " op_code: ", 10);
  v15 = sub_10004F5DC(v14, *(a2 + 16));
  sub_100001FE8(v15, " num_buffers: ", 14);
  v16 = std::ostream::operator<<();
  sub_100001FE8(v16, " buffer_size: ", 14);
  v17 = std::ostream::operator<<();
  sub_100001FE8(v17, "]", 1);
  *(a1 + *(*a1 - 24) + 8) = v4;
  return a1;
}

char *sub_10004F930(char *__dst, __int128 *a2, unint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100050108(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  *(__dst + 24) = 0u;
  *(__dst + 40) = 0u;
  __dst[56] = a3 != 0;
  if (a3)
  {
    sub_10004FAB0(__dst + 3, a3);
    do
    {
      v6 = __dst;
      if (__dst[23] < 0)
      {
        v6 = *__dst;
      }

      sub_10014FE40(&v13, v6, 0);
      v7 = *(__dst + 4);
      if (v7 >= *(__dst + 5))
      {
        v8 = sub_1000501AC(__dst + 3, &v13);
      }

      else
      {
        v8 = sub_10014FE44(v7, &v13) + 1;
      }

      *(__dst + 4) = v8;
      sub_10014FD8C(&v13);
      --a3;
    }

    while (a3);
  }

  else
  {
    v9 = __dst;
    if (__dst[23] < 0)
    {
      v9 = *__dst;
    }

    sub_10014FE40(&v13, v9, 2);
    v10 = *(__dst + 4);
    if (v10 >= *(__dst + 5))
    {
      v11 = sub_1000501AC(__dst + 3, &v13);
    }

    else
    {
      v11 = sub_10014FE44(v10, &v13) + 1;
    }

    *(__dst + 4) = v11;
    sub_10014FD8C(&v13);
  }

  return __dst;
}