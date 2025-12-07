void sub_1000D32E0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D2F54(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000D335C(uint64_t a1)
{
  sub_1000D2F54(a1);

  operator delete();
}

uint64_t sub_1000D3394(uint64_t a1)
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
        sub_1000D3508((a1 + 72), __p);
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

void sub_1000D34E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000D3508(uint64_t *a1, uint64_t *a2)
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
    v26 = 246;
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
      v26 = 246;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000D36EC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D3984(v1);

  return std::ios::~ios();
}

uint64_t sub_1000D3738(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D3984(v1);

  return std::ios::~ios();
}

void sub_1000D3798(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D3984(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D3800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000D383C(_BYTE *a1, int a2)
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

void sub_1000D38A8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D3984(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000D390C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D3984(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D3984(uint64_t a1)
{
  *a1 = &off_10020D628;
  sub_1000D3AF0(a1);
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

uint64_t sub_1000D3AF0(uint64_t a1)
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
        sub_1000D3CA0((a1 + 72), __p);
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

void sub_1000D3C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D3C68(uint64_t a1)
{
  sub_1000D3984(a1);

  operator delete();
}

int *sub_1000D3CA0(uint64_t *a1, uint64_t *a2)
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
    v26 = 387;
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
      v26 = 387;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000D3E84(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D411C(v1);

  return std::ios::~ios();
}

uint64_t sub_1000D3ED0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D411C(v1);

  return std::ios::~ios();
}

void sub_1000D3F30(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D411C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D3F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000D3FD4(_BYTE *a1, int a2)
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

void sub_1000D4040(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D411C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000D40A4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D411C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D411C(uint64_t a1)
{
  *a1 = &off_10020D848;
  sub_1000D4288(a1);
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

uint64_t sub_1000D4288(uint64_t a1)
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
        sub_1000D4438((a1 + 72), __p);
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

void sub_1000D43D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D4400(uint64_t a1)
{
  sub_1000D411C(a1);

  operator delete();
}

int *sub_1000D4438(uint64_t *a1, uint64_t *a2)
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
    v26 = 390;
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
      v26 = 390;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000D461C(uint64_t a1, uint64_t a2)
{
  *a1 = &off_1002260F0;
  *(a1 + 8) = *(a2 + 8);
  sub_1000D4690((a1 + 24), (a2 + 24));
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

_BYTE *sub_1000D4690(_BYTE *a1, __int128 *a2)
{
  *a1 = 0;
  a1[24] = 0;
  sub_1000D46E0(a1, a2);
  return a1;
}

void sub_1000D46C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1001987C4(v1);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *sub_1000D46E0(_OWORD *__dst, __int128 *a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = __dst;
    if (*(a2 + 23) < 0)
    {
      __dst = sub_100050108(__dst, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      *(__dst + 2) = *(a2 + 2);
      *__dst = v3;
    }

    *(v2 + 24) = 1;
  }

  return __dst;
}

uint64_t sub_1000D4744(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D49DC(v1);

  return std::ios::~ios();
}

uint64_t sub_1000D4790(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D49DC(v1);

  return std::ios::~ios();
}

void sub_1000D47F0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D49DC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D4858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000D4894(_BYTE *a1, int a2)
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

void sub_1000D4900(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D49DC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000D4964(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D49DC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D49DC(uint64_t a1)
{
  *a1 = &off_10020DA68;
  sub_1000D4B48(a1);
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

uint64_t sub_1000D4B48(uint64_t a1)
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
        sub_1000D4CF8((a1 + 72), __p);
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

void sub_1000D4C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D4CC0(uint64_t a1)
{
  sub_1000D49DC(a1);

  operator delete();
}

int *sub_1000D4CF8(uint64_t *a1, uint64_t *a2)
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
    v26 = 434;
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
      v26 = 434;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000D4EDC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D5174(v1);

  return std::ios::~ios();
}

uint64_t sub_1000D4F28(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D5174(v1);

  return std::ios::~ios();
}

void sub_1000D4F88(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D5174(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D4FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000D502C(_BYTE *a1, int a2)
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

void sub_1000D5098(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D5174(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000D50FC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D5174(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D5174(uint64_t a1)
{
  *a1 = &off_10020DC88;
  sub_1000D52E0(a1);
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

uint64_t sub_1000D52E0(uint64_t a1)
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
        sub_1000D5490((a1 + 72), __p);
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

void sub_1000D542C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D5458(uint64_t a1)
{
  sub_1000D5174(a1);

  operator delete();
}

int *sub_1000D5490(uint64_t *a1, uint64_t *a2)
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
    v26 = 443;
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
      v26 = 443;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000D5674(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D590C(v1);

  return std::ios::~ios();
}

uint64_t sub_1000D56C0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D590C(v1);

  return std::ios::~ios();
}

void sub_1000D5720(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D590C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D5788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000D57C4(_BYTE *a1, int a2)
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

void sub_1000D5830(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D590C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000D5894(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D590C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D590C(uint64_t a1)
{
  *a1 = &off_10020DEA8;
  sub_1000D5A78(a1);
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

uint64_t sub_1000D5A78(uint64_t a1)
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
        sub_1000D5C28((a1 + 72), __p);
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

void sub_1000D5BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D5BF0(uint64_t a1)
{
  sub_1000D590C(a1);

  operator delete();
}

int *sub_1000D5C28(uint64_t *a1, uint64_t *a2)
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
    v26 = 460;
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
      v26 = 460;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000D5E0C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D60A4(v1);

  return std::ios::~ios();
}

uint64_t sub_1000D5E58(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D60A4(v1);

  return std::ios::~ios();
}

void sub_1000D5EB8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D60A4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D5F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000D5F5C(_BYTE *a1, int a2)
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

void sub_1000D5FC8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D60A4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000D602C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D60A4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D60A4(uint64_t a1)
{
  *a1 = &off_10020E0C8;
  sub_1000D6210(a1);
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

uint64_t sub_1000D6210(uint64_t a1)
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
        sub_1000D63C0((a1 + 72), __p);
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

void sub_1000D635C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D6388(uint64_t a1)
{
  sub_1000D60A4(a1);

  operator delete();
}

int *sub_1000D63C0(uint64_t *a1, uint64_t *a2)
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
    v26 = 469;
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
      v26 = 469;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000D65A4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D683C(v1);

  return std::ios::~ios();
}

uint64_t sub_1000D65F0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D683C(v1);

  return std::ios::~ios();
}

void sub_1000D6650(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D683C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D66B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000D66F4(_BYTE *a1, int a2)
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

void sub_1000D6760(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D683C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000D67C4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D683C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D683C(uint64_t a1)
{
  *a1 = &off_10020E2E8;
  sub_1000D69A8(a1);
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

uint64_t sub_1000D69A8(uint64_t a1)
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
        sub_1000D6B58((a1 + 72), __p);
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

void sub_1000D6AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D6B20(uint64_t a1)
{
  sub_1000D683C(a1);

  operator delete();
}

int *sub_1000D6B58(uint64_t *a1, uint64_t *a2)
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
    v26 = 492;
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
      v26 = 492;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000D6D3C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D6FD4(v1);

  return std::ios::~ios();
}

uint64_t sub_1000D6D88(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D6FD4(v1);

  return std::ios::~ios();
}

void sub_1000D6DE8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D6FD4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D6E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000D6E8C(_BYTE *a1, int a2)
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

void sub_1000D6EF8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D6FD4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000D6F5C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D6FD4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D6FD4(uint64_t a1)
{
  *a1 = &off_10020E508;
  sub_1000D7140(a1);
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

uint64_t sub_1000D7140(uint64_t a1)
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
        sub_1000D72F0((a1 + 72), __p);
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

void sub_1000D728C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D72B8(uint64_t a1)
{
  sub_1000D6FD4(a1);

  operator delete();
}

int *sub_1000D72F0(uint64_t *a1, uint64_t *a2)
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
    v26 = 498;
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
      v26 = 498;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000D74D4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D776C(v1);

  return std::ios::~ios();
}

uint64_t sub_1000D7520(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D776C(v1);

  return std::ios::~ios();
}

void sub_1000D7580(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D776C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D75E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000D7624(_BYTE *a1, int a2)
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

void sub_1000D7690(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D776C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000D76F4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D776C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D776C(uint64_t a1)
{
  *a1 = &off_10020E728;
  sub_1000D78D8(a1);
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

uint64_t sub_1000D78D8(uint64_t a1)
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
        sub_1000D7A88((a1 + 72), __p);
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

void sub_1000D7A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D7A50(uint64_t a1)
{
  sub_1000D776C(a1);

  operator delete();
}

int *sub_1000D7A88(uint64_t *a1, uint64_t *a2)
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
    v26 = 505;
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
      v26 = 505;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000D7C6C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D7F04(v1);

  return std::ios::~ios();
}

uint64_t sub_1000D7CB8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D7F04(v1);

  return std::ios::~ios();
}

void sub_1000D7D18(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D7F04(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D7D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000D7DBC(_BYTE *a1, int a2)
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

void sub_1000D7E28(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D7F04(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000D7E8C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D7F04(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D7F04(uint64_t a1)
{
  *a1 = &off_10020E948;
  sub_1000D8070(a1);
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

uint64_t sub_1000D8070(uint64_t a1)
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
        sub_1000D8220((a1 + 72), __p);
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

void sub_1000D81BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D81E8(uint64_t a1)
{
  sub_1000D7F04(a1);

  operator delete();
}

int *sub_1000D8220(uint64_t *a1, uint64_t *a2)
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
    v26 = 511;
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
      v26 = 511;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000D8404(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D869C(v1);

  return std::ios::~ios();
}

uint64_t sub_1000D8450(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D869C(v1);

  return std::ios::~ios();
}

void sub_1000D84B0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D869C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D8518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000D8554(_BYTE *a1, int a2)
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

void sub_1000D85C0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D869C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000D8624(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D869C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D869C(uint64_t a1)
{
  *a1 = &off_10020EB68;
  sub_1000D8808(a1);
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

uint64_t sub_1000D8808(uint64_t a1)
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
        sub_1000D89B8((a1 + 72), __p);
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

void sub_1000D8954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D8980(uint64_t a1)
{
  sub_1000D869C(a1);

  operator delete();
}

int *sub_1000D89B8(uint64_t *a1, uint64_t *a2)
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
    v26 = 523;
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
      v26 = 523;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_1000D8B9C(void *a1, uint64_t a2)
{
  *a1 = off_10020EBE8;
  a1[1] = a2;
  sub_1000D8E50(a1 + 2, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 720) - *(a2 + 712)) >> 3));
  if (sub_1000E9608())
  {
    *&v4 = "DiskImageSparseBundle::ContextSparseBundle::ContextSparseBundle(DiskImageSparseBundle &)";
    *(&v4 + 1) = 63;
    v5 = 2;
    sub_1000D8CA8(v6, &v4);
    sub_100001FE8(v7, "Constructing sb context", 23);
    std::ostream::~ostream();
    sub_1000D8F98(v6);
    std::ios::~ios();
  }

  return a1;
}

void sub_1000D8C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000D8DD0(va);
  sub_100015CD4(va);
  _Unwind_Resume(a1);
}

void *sub_1000D8CA8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D8ED0(a1, a2);
  *a1 = off_10020EC48;
  a1[45] = &off_10020ED48;
  a1[46] = &off_10020ED70;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020EC48;
  a1[45] = off_10020ECD0;
  a1[46] = off_10020ECF8;
  return a1;
}

void sub_1000D8DAC(_Unwind_Exception *a1)
{
  sub_1000D8F98(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000D8DD0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D8F98(a1);
  std::ios::~ios();
  return a1;
}

void sub_1000D8E18(uint64_t a1)
{
  sub_1000D9730(a1);

  operator delete();
}

uint64_t *sub_1000D8E50(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_100015B34(a1, a2);
  }

  return a1;
}

uint64_t sub_1000D8ED0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020EDE0;
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

void sub_1000D8F80(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D8F98(uint64_t a1)
{
  *a1 = &off_10020EDE0;
  sub_1000D93D8(a1);
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

void sub_1000D9104(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D8F98(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D916C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000D91A8(_BYTE *a1, int a2)
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

uint64_t sub_1000D9214(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D8F98(v1);

  return std::ios::~ios();
}

void sub_1000D9260(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D8F98(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D92C4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D8F98(v1);

  return std::ios::~ios();
}

void sub_1000D9324(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D8F98(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000D93A0(uint64_t a1)
{
  sub_1000D8F98(a1);

  operator delete();
}

uint64_t sub_1000D93D8(uint64_t a1)
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
        sub_1000D954C((a1 + 72), __p);
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

void sub_1000D9524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000D954C(uint64_t *a1, uint64_t *a2)
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
    v26 = 37;
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
      v26 = 37;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000D9730(uint64_t a1)
{
  *a1 = off_10020EBE8;
  if (sub_1000E9608())
  {
    *&v3 = "DiskImageSparseBundle::ContextSparseBundle::~ContextSparseBundle()";
    *(&v3 + 1) = 64;
    v4 = 2;
    sub_1000D97FC(v5, &v3);
    sub_100001FE8(v6, "Destructing sb context", 22);
    std::ostream::~ostream();
    sub_1000D9A30(v5);
    std::ios::~ios();
  }

  v5[0] = (a1 + 16);
  sub_100015CD4(v5);
  return a1;
}

void *sub_1000D97FC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000D9968(a1, a2);
  *a1 = off_10020EE68;
  a1[45] = &off_10020EF68;
  a1[46] = &off_10020EF90;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020EE68;
  a1[45] = off_10020EEF0;
  a1[46] = off_10020EF18;
  return a1;
}

void sub_1000D9900(_Unwind_Exception *a1)
{
  sub_1000D9A30(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000D9924(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D9A30(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000D9968(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020F000;
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

void sub_1000D9A18(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D9A30(uint64_t a1)
{
  *a1 = &off_10020F000;
  sub_1000D9E70(a1);
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

void sub_1000D9B9C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000D9A30(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D9C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000D9C40(_BYTE *a1, int a2)
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

uint64_t sub_1000D9CAC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D9A30(v1);

  return std::ios::~ios();
}

void sub_1000D9CF8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000D9A30(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000D9D5C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D9A30(v1);

  return std::ios::~ios();
}

void sub_1000D9DBC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000D9A30(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000D9E38(uint64_t a1)
{
  sub_1000D9A30(a1);

  operator delete();
}

uint64_t sub_1000D9E70(uint64_t a1)
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
        sub_1000D9FE4((a1 + 72), __p);
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

void sub_1000D9FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000D9FE4(uint64_t *a1, uint64_t *a2)
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
    v26 = 41;
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
      v26 = 41;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000DA1C8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020B648;
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

void sub_1000DA278(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DA290(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020B868;
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

void sub_1000DA340(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DA358(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020BA88;
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

void sub_1000DA408(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DA420(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020BCA8;
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

void sub_1000DA4D0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DA4E8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020BEC8;
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

void sub_1000DA598(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DA5B0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020C0E8;
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

void sub_1000DA660(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DA678(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020C308;
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

void sub_1000DA728(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_1000DA740(char **a1@<X0>, char *a2@<X1>, void *a3@<X8>, uint64_t a4@<X2>, _OWORD *a5@<X3>)
{
  v10 = *a1;
  v11 = sub_1000DA7E0(a1, a4);
  if (v11 >> 59)
  {
    sub_100012CFC("get_next_capacity, allocator's max size reached");
  }

  v12 = v11;
  v13 = operator new(16 * v11);
  sub_1001986E8(a1, v13, v12, a2, a4, a5);
  *a3 = &(*a1)[a2 - v10];
}

unint64_t sub_1000DA7E0(uint64_t a1, uint64_t a2)
{
  v2 = 0x7FFFFFFFFFFFFFFLL;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x7FFFFFFFFFFFFFFLL - v4 < a2 - v4 + v3)
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
  if (v8 < 0x7FFFFFFFFFFFFFFLL)
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

uint64_t sub_1000DA854(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020C528;
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

void sub_1000DA904(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DA91C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020C748;
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

void sub_1000DA9CC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DA9E4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020C968;
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

void sub_1000DAA94(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DAAAC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020CB88;
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

void sub_1000DAB5C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DAB74(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020CDA8;
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

void sub_1000DAC24(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DAC3C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020CFC8;
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

void sub_1000DACEC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DAD04(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020D1E8;
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

void sub_1000DADB4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_1000DADCC(uint64_t ***a1)
{
  v1 = **a1;
  v2 = *v1;
  v3 = *(*v1 + 560);
  *(v3 + 160) = sub_100195AE4();
  *(v3 + 168) = v4;
  sub_100087538(*(v2 + 560));
}

void sub_1000DAE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  if (a2 == 1)
  {
    v58 = __cxa_begin_catch(exception_object);
    *&a9 = "DiskImageSparseBundle::void_stackable_identifier()::(anonymous class)::operator()() const";
    *(&a9 + 1) = 81;
    a11 = 16;
    sub_1000DAEB0(&a13, &a9);
    sub_100195A20(&a58, v58);
    sub_1000DAFD8(&a13);
    v59 = v58[2];
    if (v59 >= 0)
    {
      v59 = -v59;
    }

    **(v57 + 8) = v59;
    __cxa_end_catch();
    JUMPOUT(0x1000DAE04);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000DAEB0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000DB01C(a1, a2);
  *a1 = off_10020F088;
  a1[45] = &off_10020F188;
  a1[46] = &off_10020F1B0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020F088;
  a1[45] = off_10020F110;
  a1[46] = off_10020F138;
  return a1;
}

void sub_1000DAFB4(_Unwind_Exception *a1)
{
  sub_1000DB0E4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000DAFD8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000DB0E4(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000DB01C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020F220;
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

void sub_1000DB0CC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DB0E4(uint64_t a1)
{
  *a1 = &off_10020F220;
  sub_1000DB524(a1);
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

void sub_1000DB250(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000DB0E4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000DB2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000DB2F4(_BYTE *a1, int a2)
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

uint64_t sub_1000DB360(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000DB0E4(v1);

  return std::ios::~ios();
}

void sub_1000DB3AC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000DB0E4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000DB410(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000DB0E4(v1);

  return std::ios::~ios();
}

void sub_1000DB470(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000DB0E4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000DB4EC(uint64_t a1)
{
  sub_1000DB0E4(a1);

  operator delete();
}

uint64_t sub_1000DB524(uint64_t a1)
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
        sub_1000DB698((a1 + 72), __p);
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

void sub_1000DB670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000DB698(uint64_t *a1, uint64_t *a2)
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
    v26 = 307;
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
      v26 = 307;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000DB87C(void *a1)
{
  v1 = qword_100234B10;
  v2 = a1 + 1;
  v3 = *a1;
  if (*a1 != a1 + 1)
  {
    do
    {
      v4 = sub_1000DB900((v3 + 4));
      v5 = v3[1];
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
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v1 += v4;
      v3 = v6;
    }

    while (v6 != v2);
  }

  return v1;
}

unint64_t sub_1000DB900(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = *a1;
  v2 = *(a1 + 8);
  if (*(a1 + 16))
  {
    if (v1 == 3)
    {
      if (v2 < v3)
      {
        return qword_100234B10;
      }
    }

    else if (v3 >= v2)
    {
      return qword_100234B10;
    }
  }

  else if (v3 >= v2 || v3 + 1 >= v2)
  {
    return qword_100234B10;
  }

  return v2 + (v1 & 1) - v3 + (((v1 >> 1) & 1) - 1);
}

uint64_t sub_1000DB960(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020D628;
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

void sub_1000DBA10(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DBA28(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020D848;
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

void sub_1000DBAD8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DBAF0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020DA68;
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

void sub_1000DBBA0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DBBB8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020DC88;
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

void sub_1000DBC68(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DBC80(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020DEA8;
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

void sub_1000DBD30(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_1000DBD48(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1000DBDA0(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1000DBDA0(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1000DBE28(v5, (v5 + 8), (v4 + 4), (v4 + 4));
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

uint64_t sub_1000DBE28(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *sub_100029470(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t sub_1000DBEC8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020E0C8;
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

void sub_1000DBF78(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000DBF90(uint64_t **a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = sub_10004EE4C(a1, v4);
      operator delete(v4);
      v4 = v6;
    }

    while (v6 != a3);
  }

  return a3;
}

void *sub_1000DBFF0(uint64_t **a1, unint64_t *a2, uint64_t a3)
{
  v5 = sub_1000DC3C4(a1, a2, a3);
  sub_1000DC0D4(a1, &v5);
  return sub_1000DC1D4(a1, &v5);
}

uint64_t sub_1000DC038(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *sub_100029640(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_1000DC0D4(uint64_t **a1, uint64_t **a2)
{
  v2 = *a2;
  if (*a2 == *a1)
  {
    return *a1;
  }

  v4 = *v2;
  if (*v2)
  {
    do
    {
      v5 = v4;
      v4 = *(v4 + 8);
    }

    while (v4);
  }

  else
  {
    v6 = *a2;
    do
    {
      v5 = *(v6 + 16);
      v7 = *v5 == v6;
      v6 = v5;
    }

    while (v7);
  }

  v8 = *(v2 + 32);
  if ((*(v2 + 48) & 2) == 0)
  {
    ++v8;
  }

  if (v8 == (*(v5 + 48) & 1) + *(v5 + 40))
  {
    v14 = *(v2 + 32);
    v15 = *(v2 + 48);
    sub_10004EE4C(a1, v2);
    operator delete(v2);
    v10 = *(v5 + 32);
    v11 = *(v5 + 48);
    sub_1000DC2E0(&v10, &v14, &v12);
    *(v5 + 32) = v12;
    *(v5 + 48) = v13;
    *a2 = v5;
    return v5;
  }

  return v2;
}

void *sub_1000DC1D4(uint64_t **a1, uint64_t *a2)
{
  v5 = a1 + 1;
  result = *a2;
  if (*a2 == v5)
  {
    return v5;
  }

  v21 = v2;
  v22 = v3;
  v8 = result[1];
  if (v8)
  {
    do
    {
      v9 = v8;
      v8 = *v8;
    }

    while (v8);
  }

  else
  {
    v10 = result;
    do
    {
      v9 = v10[2];
      v11 = *v9 == v10;
      v10 = v9;
    }

    while (!v11);
  }

  if (v9 != v5)
  {
    v12 = v9[4];
    if ((v9[6] & 2) == 0)
    {
      ++v12;
    }

    if (v12 == (result[6] & 1) + result[5])
    {
      v19 = *(v9 + 2);
      v20 = v9[6];
      sub_10004EE4C(a1, v9);
      operator delete(v9);
      v13 = *a2;
      v15 = *(*a2 + 32);
      v16 = v13[6];
      sub_1000DC2E0(&v15, &v19, &v17);
      v14 = *a2;
      *(v14 + 32) = v17;
      *(v14 + 48) = v18;
      return *a2;
    }
  }

  return result;
}

unint64_t *sub_1000DC2E0@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 16);
  v5 = *a2;
  v4 = a2[1];
  if (*(a2 + 16))
  {
    if (v3 == 3)
    {
      if (v4 < v5)
      {
LABEL_4:
        *a3 = *result;
        v6 = result[2];
LABEL_13:
        *(a3 + 16) = v6;
        return result;
      }
    }

    else if (v5 >= v4)
    {
      goto LABEL_4;
    }
  }

  else if (v5 >= v4 || v5 + 1 >= v4)
  {
    goto LABEL_4;
  }

  v8 = *(result + 16);
  v10 = *result;
  v9 = result[1];
  if (*(result + 16))
  {
    if (v8 == 3)
    {
      if (v9 < v10)
      {
LABEL_12:
        *a3 = *a2;
        v6 = a2[2];
        goto LABEL_13;
      }
    }

    else if (v10 >= v9)
    {
      goto LABEL_12;
    }
  }

  else if (v10 >= v9 || v10 + 1 >= v9)
  {
    goto LABEL_12;
  }

  v12 = v8 & 2;
  if ((v8 & 2) != 0)
  {
    v13 = *result;
  }

  else
  {
    v13 = v10 + 1;
  }

  v14 = v3 & 2;
  if ((v3 & 2) != 0)
  {
    result = *a2;
  }

  else
  {
    result = (v5 + 1);
  }

  v15 = v8 & 1;
  v16 = v3 & 1;
  if (v13 >= result)
  {
    v12 = v14;
  }

  else
  {
    v5 = v10;
  }

  if (v9 + v15 - 1 >= v4 + v16 - 1)
  {
    v4 = v9;
    LOBYTE(v16) = v15;
  }

  *a3 = v5;
  *(a3 + 8) = v4;
  *(a3 + 16) = v16 | v12;
  return result;
}

uint64_t sub_1000DC3C4(uint64_t **a1, unint64_t *a2, uint64_t a3)
{
  v6 = sub_1000DC688(a1, a2);
  v7 = v6;
  v8 = *(v6 + 8);
  if (v8)
  {
    do
    {
      v9 = v8;
      v8 = *v8;
    }

    while (v8);
  }

  else
  {
    v10 = v6;
    do
    {
      v9 = *(v10 + 16);
      v11 = *v9 == v10;
      v10 = v9;
    }

    while (!v11);
  }

  v12 = *(a3 + 8);
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
    v14 = a3;
    do
    {
      v13 = *(v14 + 16);
      v11 = *v13 == v14;
      v14 = v13;
    }

    while (!v11);
  }

  v19 = *(v6 + 32);
  v20 = *(v6 + 48);
  sub_1000DC500(&v19, a2, &v21);
  v17 = *(a3 + 32);
  v18 = *(a3 + 48);
  sub_1000DC5C4(&v17, a2, &v19);
  sub_1000DBF90(a1, v9, v13);
  v17 = v21;
  v18 = v22;
  sub_1000DC2E0(&v17, a2, v16);
  sub_1000DC2E0(v16, &v19, &v17);
  *(v7 + 32) = v17;
  *(v7 + 48) = v18;
  return v7;
}

uint64_t sub_1000DC500@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 16);
  v4 = *result;
  v5 = *(result + 8);
  if (*(result + 16))
  {
    if (v3 == 3)
    {
      if (v5 < v4)
      {
        goto LABEL_27;
      }
    }

    else if (v4 >= v5)
    {
      goto LABEL_27;
    }
  }

  else if (v4 >= v5 || v4 + 1 >= v5)
  {
    goto LABEL_27;
  }

  v7 = *(a2 + 16);
  v8 = *a2;
  v9 = *(a2 + 8);
  if (!*(a2 + 16))
  {
    if (v8 >= v9 || v8 + 1 >= v9)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if (v7 != 3)
  {
    if (v8 < v9)
    {
      goto LABEL_23;
    }

LABEL_27:
    *a3 = *result;
    *(a3 + 16) = *(result + 16);
    return result;
  }

  if (v9 < v8)
  {
    goto LABEL_27;
  }

LABEL_23:
  v11 = (v3 & 1) + v5 - 1;
  if ((v7 & 2) != 0)
  {
    v12 = *a2;
  }

  else
  {
    v12 = v8 + 1;
  }

  if (v11 < v12)
  {
    goto LABEL_27;
  }

  *a3 = v4;
  *(a3 + 8) = v8;
  *(a3 + 16) = v3 & 2 | ((~v7 & 2) != 0);
  return result;
}

uint64_t sub_1000DC5C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 16);
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 16))
  {
    if (v3 == 3)
    {
      if (v4 < v5)
      {
        goto LABEL_26;
      }
    }

    else if (v5 >= v4)
    {
      goto LABEL_26;
    }
  }

  else if (v5 >= v4 || v5 + 1 >= v4)
  {
    goto LABEL_26;
  }

  v7 = *(result + 16);
  v9 = *result;
  v8 = *(result + 8);
  if (!*(result + 16))
  {
    if (v9 >= v8 || v9 + 1 >= v8)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v7 != 3)
  {
    if (v9 < v8)
    {
      goto LABEL_23;
    }

LABEL_26:
    *a3 = *result;
    *(a3 + 16) = *(result + 16);
    return result;
  }

  if (v8 < v9)
  {
    goto LABEL_26;
  }

LABEL_23:
  if ((v7 & 2) == 0)
  {
    ++v9;
  }

  if ((v3 & 1) + v4 - 1 < v9)
  {
    goto LABEL_26;
  }

  *a3 = v4;
  *(a3 + 8) = v8;
  *(a3 + 16) = v7 & 1 | (2 * ((v3 & 1) == 0));
  return result;
}

uint64_t sub_1000DC688(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  result = a1 + 8;
  v3 = v4;
  if (v4)
  {
    v5 = *a2;
    if ((*(a2 + 16) & 2) == 0)
    {
      ++v5;
    }

    do
    {
      v6 = (*(v3 + 48) & 1) + *(v3 + 40) - 1;
      v7 = v6 >= v5;
      v8 = v6 < v5;
      if (v7)
      {
        result = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1000DC6CC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020E2E8;
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

void sub_1000DC77C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DC794(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020E508;
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

void sub_1000DC844(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DC85C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020E728;
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

void sub_1000DC90C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DC924(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020E948;
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

void sub_1000DC9D4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DC9EC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020EB68;
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

void sub_1000DCA9C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_1000DCDF8(_Unwind_Exception *a1, int a2)
{
  v6 = v5;

  if (a2 == 1)
  {
    v9 = [DIError errorWithDIException:__cxa_begin_catch(a1) description:0 prefix:0 error:0];
    v10 = v3[6];
    v3[6] = v9;

    __cxa_end_catch();
    JUMPOUT(0x1000DCDD8);
  }

  _Unwind_Resume(a1);
}

void sub_1000DD3F8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v7 = [objc_begin_catch(a1) reason];
    [DIError failWithEnumValue:150 verboseInfo:v7 error:v2];

    objc_end_catch();
    JUMPOUT(0x1000DD3B8);
  }

  _Unwind_Resume(a1);
}

void sub_1000DDBF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint8_t buf, int a14, __int16 a15, uint64_t a16, __int16 a17, uint64_t a18, __int16 a19, uint64_t a20, __int16 a21, int a22)
{
  if (a2 == 1)
  {
    [DIError failWithDIException:__cxa_begin_catch(a1) prefix:@"Failed opening the shadow/cache file(s)" error:v23];
    __cxa_end_catch();
    JUMPOUT(0x1000DDBACLL);
  }

  _Unwind_Resume(a1);
}

void sub_1000DE208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_1000DE404(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = DIBaseParams;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1000DF5D0(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = v5;
  v7 = 514;
  if (*(a1 + 40) == 1)
  {
    if (*(a1 + 41))
    {
      v7 = 514;
    }

    else
    {
      v7 = 2562;
    }
  }

  if ([v5 isCache])
  {
    [v6 createBackendWithFlags:v7];
    v8 = *__error();
    v9 = sub_1000E95F0();
    if (v9)
    {
      v40 = 0;
      v11 = sub_1000E957C(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      v13 = [v6 URL];
      v14 = [v13 path];
      *buf = 68158211;
      v42 = 61;
      v43 = 2080;
      v44 = "[DIShadowChain openWritable:createNonExisting:]_block_invoke";
      v45 = 2113;
      v46 = v14;
      v15 = _os_log_send_and_compose_impl(v12, &v40, 0, 0, &_mh_execute_header, v11, 0, "%.*s: Cache file %{private}@ opened with RW access", buf, 28);

      if (v15)
      {
        fprintf(__stderrp, "%s\n", v15);
        free(v15);
      }
    }

    else
    {
      v25 = sub_1000E957C(v9, v10);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v6 URL];
        v27 = [v26 path];
        *buf = 68158211;
        v42 = 61;
        v43 = 2080;
        v44 = "[DIShadowChain openWritable:createNonExisting:]_block_invoke";
        v45 = 2113;
        v46 = v27;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%.*s: Cache file %{private}@ opened with RW access", buf, 0x1Cu);
      }
    }

    goto LABEL_42;
  }

  if (*(a1 + 40) == 1)
  {
    v16 = [*(a1 + 32) nodes];
    if ([v16 count] - 1 == a3)
    {
      v17 = v7;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  [v6 createBackendWithFlags:v17];
  if ((v17 & 3) != 0)
  {
    v8 = *__error();
    v18 = sub_1000E95F0();
    if (v18)
    {
      v40 = 0;
      v20 = sub_1000E957C(v18, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      v22 = [v6 URL];
      v23 = [v22 path];
      *buf = 68158211;
      v42 = 61;
      v43 = 2080;
      v44 = "[DIShadowChain openWritable:createNonExisting:]_block_invoke";
      v45 = 2113;
      v46 = v23;
      v24 = _os_log_send_and_compose_impl(v21, &v40, 0, 0, &_mh_execute_header, v20, 0, "%.*s: Shadow file %{private}@ opened with RW access", buf, 28);

      if (!v24)
      {
        goto LABEL_42;
      }

      goto LABEL_34;
    }

    v34 = sub_1000E957C(v18, v19);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [v6 URL];
      v36 = [v35 path];
      *buf = 68158211;
      v42 = 61;
      v43 = 2080;
      v44 = "[DIShadowChain openWritable:createNonExisting:]_block_invoke";
      v45 = 2113;
      v46 = v36;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%.*s: Shadow file %{private}@ opened with RW access", buf, 0x1Cu);
    }
  }

  else
  {
    v8 = *__error();
    v28 = sub_1000E95F0();
    if (v28)
    {
      v40 = 0;
      v30 = sub_1000E957C(v28, v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 3;
      }

      else
      {
        v31 = 2;
      }

      v32 = [v6 URL];
      v33 = [v32 path];
      *buf = 68158211;
      v42 = 61;
      v43 = 2080;
      v44 = "[DIShadowChain openWritable:createNonExisting:]_block_invoke";
      v45 = 2113;
      v46 = v33;
      v24 = _os_log_send_and_compose_impl(v31, &v40, 0, 0, &_mh_execute_header, v30, 0, "%.*s: Using an existing shadow file: %{private}@", buf, 28);

      if (!v24)
      {
        goto LABEL_42;
      }

LABEL_34:
      fprintf(__stderrp, "%s\n", v24);
      free(v24);
      goto LABEL_42;
    }

    v37 = sub_1000E957C(v28, v29);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [v6 URL];
      v39 = [v38 path];
      *buf = 68158211;
      v42 = 61;
      v43 = 2080;
      v44 = "[DIShadowChain openWritable:createNonExisting:]_block_invoke";
      v45 = 2113;
      v46 = v39;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%.*s: Using an existing shadow file: %{private}@", buf, 0x1Cu);
    }
  }

LABEL_42:
  *__error() = v8;
}

void sub_1000E0AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a19 == 1)
  {
    diskimage_uio::diskimage_open_params::~diskimage_open_params(&a17);
  }

  if (v20)
  {
    sub_10000E984(v20);
  }

  _Unwind_Resume(a1);
}

void sub_1000E0CA8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000E0F5C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10020F308;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1000E0FD8(void *a1)
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

void sub_1000E1030(void *a1)
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

  operator delete();
}

void sub_1000E197C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    operator delete();
  }

  _Unwind_Resume(a1);
}

void sub_1000E19C0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  v6 = 0;
  if ([v3 decodeBytesForKey:@"crypto_header" returnedLength:&v6])
  {
    if (v6 == 76)
    {
      operator new();
    }

    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v5);
    sub_100001FE8(v5, "Unexpected crypto header length (", 33);
    std::ostream::operator<<();
    sub_100001FE8(v5, ")", 1);
    sub_10000EBDC(exception, v5, 0x9Au);
  }

  *a2 = 0;
}

void sub_1000E1AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ios::~ios();
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

void sub_1000E1C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_10000E984(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E1EF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, char a13)
{
  if (a10)
  {
    operator delete();
  }

  if (v13)
  {
    sub_10000E984(v13);
  }

  if (a13 == 1)
  {
    if (a12)
    {
      sub_10000E984(a12);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E1FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E271C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_10000E984(a14);
  }

  if (a12)
  {
    sub_10000E984(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1000E2814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  if (a12)
  {
    sub_10000E984(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1000E284C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  lpsrc[0] = *a1;
  lpsrc[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  while (1)
  {
    v4 = lpsrc[0];
    if (lpsrc[0])
    {
      if (v5)
      {
        break;
      }
    }

    *a2 = 0;
    a2[1] = 0;
    v6 = lpsrc[1];
    if (lpsrc[1])
    {
      atomic_fetch_add_explicit(lpsrc[1] + 1, 1uLL, memory_order_relaxed);
    }

    if (v3)
    {
      sub_10000E984(v3);
    }

    sub_100192F44(lpsrc, &v11);
    v7 = v11;
    v11 = 0uLL;
    v8 = lpsrc[1];
    *lpsrc = v7;
    if (v8)
    {
      sub_10000E984(v8);
      v9 = lpsrc[0];
      if (*(&v11 + 1))
      {
        sub_10000E984(*(&v11 + 1));
      }

      v3 = v6;
      if (v9 == v4)
      {
LABEL_15:
        *a2 = 0;
        a2[1] = 0;
        if (!v6)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v3 = v6;
      if (v7 == v4)
      {
        goto LABEL_15;
      }
    }
  }

  v10 = lpsrc[1];
  *a2 = v5;
  a2[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  v6 = v3;
  if (v3)
  {
LABEL_16:
    sub_10000E984(v6);
  }

LABEL_17:
  if (lpsrc[1])
  {
    sub_10000E984(lpsrc[1]);
  }
}

void sub_1000E29B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_1000E2AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_10000E984(a12);
  }

  if (a10)
  {
    sub_10000E984(a10);
  }

  _Unwind_Resume(a1);
}

void sub_1000E2C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_10000E984(a14);
  }

  _Unwind_Resume(a1);
}

void sub_1000E2F04(void *a1@<X0>, void *a3@<X8>)
{
  v4 = a1;
  v14 = 0;
  v13 = 0;
  v5 = [v4 decodeBytesForKey:@"encKeys" returnedLength:&v14];
  v6 = [v4 decodeBytesForKey:@"secondaryKey" returnedLength:&v13];
  if (v5)
  {
    v7 = v6;
    if (v6)
    {
      __p = 0;
      __dst = 0;
      v12 = 0;
      sub_10006F178(&__p, v13 + v14);
      sub_1000E6BF0(&__p, v5, &v5[v14], v14);
      sub_1000E6D24(&__p, __dst, v7, &v7[v13], v13);
      v8[0] = __p;
      v8[1] = __dst - __p;
      sub_100177D60(v9, v8, 1, 8 * v14, 8 * v13);
      sub_100072BB8();
    }
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_1000E3040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  sub_10003FF54(&a10);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000E3238(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_10000E984(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1000E3290(void *a1, void *a2)
{
  v3 = a1;
  [v3 encodeBytes:*a2 length:76 forKey:@"crypto_header"];
  [v3 encodeBytes:a2[2] length:a2[3] - a2[2] forKey:@"encKeys"];
  [v3 encodeBytes:a2[5] length:a2[6] - a2[5] forKey:@"secondaryKey"];
}

void sub_1000E33F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_10000E984(a14);
  }

  if (a12)
  {
    sub_10000E984(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1000E34F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_10000E984(a14);
  }

  if (a12)
  {
    sub_10000E984(a12);
  }

  _Unwind_Resume(a1);
}

void *sub_1000E3638(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000E7E84(a1, a2);
  *a1 = off_10020F478;
  a1[45] = &off_10020F578;
  a1[46] = &off_10020F5A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10020F478;
  a1[45] = off_10020F500;
  a1[46] = off_10020F528;
  return a1;
}

void sub_1000E373C(_Unwind_Exception *a1)
{
  sub_1000E71E4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000E3760(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000E71E4(a1);
  std::ios::~ios();
  return a1;
}

void sub_1000E3880(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_10000E984(v3);
  }

  if (v2)
  {
    sub_10000E984(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1000E39EC(_Unwind_Exception *a1, int a2)
{
  v7 = v5;
  if (v7)
  {
    sub_10000E984(v7);
  }

  if (v4)
  {
    sub_10000E984(v4);
  }

  if (a2 == 1)
  {
    [DIError nilWithDIException:__cxa_begin_catch(a1) prefix:@"Error creating crypto format" error:v2];
    objc_claimAutoreleasedReturnValue();
    __cxa_end_catch();
    JUMPOUT(0x1000E39D0);
  }

  _Unwind_Resume(a1);
}

void sub_1000E3C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_10000E984(a12);
  }

  if (a10)
  {
    sub_10000E984(a10);
  }

  _Unwind_Resume(a1);
}

void sub_1000E41B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_10000E984(a12);
  }

  if (a10)
  {
    sub_10000E984(a10);
  }

  _Unwind_Resume(a1);
}

void sub_1000E42D8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1000E4770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_10000E984(a17);
  }

  _Unwind_Resume(a1);
}

void sub_1000E4894(_Unwind_Exception *a1)
{
  v4 = v3;

  if (v2)
  {
    sub_10000E984(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1000E4974(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_10000E984(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1000E5364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_10000E984(a16);
  }

  if (a14)
  {
    sub_10000E984(a14);
  }

  if (a12)
  {
    sub_10000E984(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1000E55BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    sub_10000E984(a14);
  }

  if (a12)
  {
    sub_10000E984(a12);
  }

  if (a16)
  {
    sub_10000E984(a16);
  }

  _Unwind_Resume(a1);
}

void sub_1000E593C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    sub_10000E984(a12);
  }

  if (a10)
  {
    sub_10000E984(a10);
  }

  if (a16)
  {
    sub_10000E984(a16);
  }

  _Unwind_Resume(a1);
}

void sub_1000E5B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a16)
  {
    sub_10000E984(a16);
  }

  if (a14)
  {
    sub_10000E984(a14);
  }

  if (a22)
  {
    sub_10000E984(a22);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000E5C08(void *a1, uint64_t a2, void *a3)
{
  if (a1 && a2 && a3)
  {
    v5 = a1;
    v6 = [NSString stringWithUTF8String:a2];
    v7 = [v5 objectForKeyedSubscript:v6];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 length])
      {
        v8 = malloc_type_malloc([v7 length], 0x33C27994uLL);
        *a3 = v8;
        if (v8)
        {
          memcpy(v8, [v7 bytes], objc_msgSend(v7, "length"));
          v9 = [v7 length];
        }

        else
        {
          v25 = *__error();
          v26 = sub_1000E95F0();
          if (v26)
          {
            v35 = 0;
            v28 = sub_1000E957C(v26, v27);
            v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
            v30 = [v7 length];
            *buf = 68158466;
            if (v29)
            {
              v31 = 3;
            }

            else
            {
              v31 = 2;
            }

            *&buf[4] = 59;
            v37 = 2080;
            v38 = "ssize_t plugin_decode_buffer(void *, const char *, void **)";
            v39 = 2048;
            v40 = v30;
            v41 = 2112;
            v42 = v6;
            v32 = _os_log_send_and_compose_impl(v31, &v35, 0, 0, &_mh_execute_header, v28, 16, "%.*s: Out of memory, failed to allocated %zu bytes for key %@", buf, 38);

            if (v32)
            {
              fprintf(__stderrp, "%s\n", v32);
              free(v32);
            }
          }

          else
          {
            v33 = sub_1000E957C(v26, v27);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 68158466;
              *&buf[4] = 59;
              v37 = 2080;
              v38 = "ssize_t plugin_decode_buffer(void *, const char *, void **)";
              v39 = 2048;
              v40 = [v7 length];
              v41 = 2112;
              v42 = v6;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%.*s: Out of memory, failed to allocated %zu bytes for key %@", buf, 0x26u);
            }
          }

          *__error() = v25;
          v9 = -12;
        }
      }

      else
      {
        v17 = *__error();
        v18 = sub_1000E95F0();
        if (v18)
        {
          v35 = 0;
          v20 = sub_1000E957C(v18, v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = 3;
          }

          else
          {
            v21 = 2;
          }

          *buf = 0x3B04100302;
          v37 = 2080;
          v38 = "ssize_t plugin_decode_buffer(void *, const char *, void **)";
          v39 = 2112;
          v40 = v6;
          v22 = _os_log_send_and_compose_impl(v21, &v35, 0, 0, &_mh_execute_header, v20, 16, "%.*s: Invalid key: %@", buf, 28);

          if (v22)
          {
            fprintf(__stderrp, "%s\n", v22);
            free(v22);
          }
        }

        else
        {
          v23 = sub_1000E957C(v18, v19);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 0x3B04100302;
            v37 = 2080;
            v38 = "ssize_t plugin_decode_buffer(void *, const char *, void **)";
            v39 = 2112;
            v40 = v6;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%.*s: Invalid key: %@", buf, 0x1Cu);
          }
        }

        *__error() = v17;
        v9 = -22;
      }
    }

    else
    {
      v9 = -2;
    }
  }

  else
  {
    v10 = *__error();
    v11 = sub_1000E95F0();
    if (v11)
    {
      v35 = 0;
      v13 = sub_1000E957C(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      *buf = 68157954;
      *&buf[4] = 59;
      v37 = 2080;
      v38 = "ssize_t plugin_decode_buffer(void *, const char *, void **)";
      LODWORD(v34) = 18;
      v15 = _os_log_send_and_compose_impl(v14, &v35, 0, 0, &_mh_execute_header, v13, 16, "%.*s: Missing parameters", buf, v34);

      if (v15)
      {
        fprintf(__stderrp, "%s\n", v15);
        free(v15);
      }
    }

    else
    {
      v16 = sub_1000E957C(v11, v12);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        *&buf[4] = 59;
        v37 = 2080;
        v38 = "ssize_t plugin_decode_buffer(void *, const char *, void **)";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%.*s: Missing parameters", buf, 0x12u);
      }
    }

    *__error() = v10;
    return -22;
  }

  return v9;
}

void sub_1000E6160(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t sub_1000E61BC(void *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v3 = a1;
    v4 = [NSString stringWithUTF8String:a2];
    v5 = [v3 objectForKeyedSubscript:v4];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = dup([v5 fileDescriptor]);
        if ((v6 & 0x80000000) != 0)
        {
          v6 = -*__error();
        }
      }

      else
      {
        v14 = *__error();
        v15 = sub_1000E95F0();
        if (v15)
        {
          v23 = 0;
          v17 = sub_1000E957C(v15, v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = 3;
          }

          else
          {
            v18 = 2;
          }

          *buf = 68158210;
          *&buf[4] = 42;
          v25 = 2080;
          v26 = "int plugin_decode_fd(void *, const char *)";
          v27 = 2112;
          v28 = v4;
          v19 = _os_log_send_and_compose_impl(v18, &v23, 0, 0, &_mh_execute_header, v17, 16, "%.*s: Invalid key: %@", buf, 28);

          if (v19)
          {
            fprintf(__stderrp, "%s\n", v19);
            free(v19);
          }
        }

        else
        {
          v20 = sub_1000E957C(v15, v16);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 0x2A04100302;
            v25 = 2080;
            v26 = "int plugin_decode_fd(void *, const char *)";
            v27 = 2112;
            v28 = v4;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%.*s: Invalid key: %@", buf, 0x1Cu);
          }
        }

        *__error() = v14;
        v6 = 4294967274;
      }
    }

    else
    {
      v6 = 4294967294;
    }
  }

  else
  {
    v7 = *__error();
    v8 = sub_1000E95F0();
    if (v8)
    {
      v23 = 0;
      v10 = sub_1000E957C(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      *buf = 68157954;
      *&buf[4] = 42;
      v25 = 2080;
      v26 = "int plugin_decode_fd(void *, const char *)";
      LODWORD(v22) = 18;
      v12 = _os_log_send_and_compose_impl(v11, &v23, 0, 0, &_mh_execute_header, v10, 16, "%.*s: Missing parameters", buf, v22);

      if (v12)
      {
        fprintf(__stderrp, "%s\n", v12);
        free(v12);
      }
    }

    else
    {
      v13 = sub_1000E957C(v8, v9);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        *&buf[4] = 42;
        v25 = 2080;
        v26 = "int plugin_decode_fd(void *, const char *)";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%.*s: Missing parameters", buf, 0x12u);
      }
    }

    *__error() = v7;
    return 4294967274;
  }

  return v6;
}

void sub_1000E66A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && a2 && a3 && a4)
  {
    v17 = a1;
    v7 = [NSString stringWithUTF8String:a2];
    v8 = [NSData dataWithBytes:a3 length:a4];
    [v17 setObject:v8 forKeyedSubscript:v7];
  }

  else
  {
    v9 = *__error();
    v10 = sub_1000E95F0();
    if (v10)
    {
      v18 = 0;
      v12 = sub_1000E957C(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      *buf = 68157954;
      v20 = 69;
      v21 = 2080;
      v22 = "void plugin_encode_buffer(void *, const char *, const void *, size_t)";
      LODWORD(v16) = 18;
      v14 = _os_log_send_and_compose_impl(v13, &v18, 0, 0, &_mh_execute_header, v12, 16, "%.*s: Missing parameters", buf, v16);

      if (v14)
      {
        fprintf(__stderrp, "%s\n", v14);
        free(v14);
      }
    }

    else
    {
      v15 = sub_1000E957C(v10, v11);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        v20 = 69;
        v21 = 2080;
        v22 = "void plugin_encode_buffer(void *, const char *, const void *, size_t)";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%.*s: Missing parameters", buf, 0x12u);
      }
    }

    *__error() = v9;
  }
}

void sub_1000E6918(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && (a3 & 0x80000000) == 0)
  {
    v15 = a1;
    v5 = [NSString stringWithUTF8String:a2];
    v6 = [[NSFileHandle alloc] initWithFileDescriptor:a3];
    [v15 setObject:v6 forKeyedSubscript:v5];
  }

  else
  {
    v7 = *__error();
    v8 = sub_1000E95F0();
    if (v8)
    {
      v16 = 0;
      v10 = sub_1000E957C(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      *buf = 68157954;
      v18 = 48;
      v19 = 2080;
      v20 = "void plugin_encode_fd(void *, const char *, int)";
      LODWORD(v14) = 18;
      v12 = _os_log_send_and_compose_impl(v11, &v16, 0, 0, &_mh_execute_header, v10, 16, "%.*s: Missing parameters", buf, v14);

      if (v12)
      {
        fprintf(__stderrp, "%s\n", v12);
        free(v12);
      }
    }

    else
    {
      v13 = sub_1000E957C(v8, v9);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        v18 = 48;
        v19 = 2080;
        v20 = "void plugin_encode_fd(void *, const char *, int)";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%.*s: Missing parameters", buf, 0x12u);
      }
    }

    *__error() = v7;
  }
}

void sub_1000E6B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void **sub_1000E6BF0(void **result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result < a4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v10 = 2 * v8;
      if (2 * v8 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_100040450(v7, v11);
    }

    sub_100015B70();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (v12 - v9 >= a4)
  {
    v19 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v19);
    }

    v18 = &v9[v19];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = v12;
    if (&__src[v13] != a3)
    {
      v15 = v12;
      v16 = v12;
      do
      {
        v17 = *v14++;
        *v16++ = v17;
        ++v15;
      }

      while (v14 != a3);
    }

    v18 = v15;
  }

  v7[1] = v18;
  return result;
}

char *sub_1000E6D24(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((v9 - v10) >= a5)
  {
    v16 = v10 - __dst;
    if ((v10 - __dst) >= a5)
    {
      v21 = &__dst[a5];
      v22 = (v10 - a5);
      v23 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v24 = *v22++;
          *v23++ = v24;
        }

        while (v22 != v10);
      }

      *(a1 + 8) = v23;
      if (v10 != v21)
      {
        memmove(&__dst[a5], __dst, v10 - v21);
      }

      v25 = v5;
      v26 = __src;
      v27 = a5;
    }

    else
    {
      v17 = &__src[v16];
      if (&__src[v16] == a4)
      {
        v18 = *(a1 + 8);
        v19 = v18;
      }

      else
      {
        v18 = (&a4[__dst] - __src);
        v19 = *(a1 + 8);
        do
        {
          v20 = *v17++;
          *v19++ = v20;
        }

        while (v17 != a4);
      }

      *(a1 + 8) = v18;
      if (v16 < 1)
      {
        return v5;
      }

      v32 = &__dst[a5];
      v33 = &v18[-a5];
      v34 = v18;
      if (&v18[-a5] < v10)
      {
        do
        {
          v35 = *v33++;
          *v34++ = v35;
        }

        while (v33 != v10);
      }

      *(a1 + 8) = v34;
      if (v19 != v32)
      {
        memmove(&__dst[a5], __dst, v18 - v32);
      }

      v25 = v5;
      v26 = __src;
      v27 = v10 - v5;
    }

    memmove(v25, v26, v27);
    return v5;
  }

  v11 = *a1;
  v12 = v10 - *a1 + a5;
  if (v12 < 0)
  {
    sub_100015B70();
  }

  v13 = (__dst - v11);
  v14 = v9 - v11;
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    operator new();
  }

  v28 = (__dst - v11);
  memcpy(v13, __src, a5);
  v29 = &v13[a5];
  v30 = v10 - v5;
  memcpy(v29, v5, v10 - v5);
  *(a1 + 8) = v5;
  v31 = &v13[v11 - v5];
  memcpy(v31, v11, v28);
  *a1 = v31;
  *(a1 + 8) = &v29[v30];
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v13;
}

uint64_t sub_1000E6F4C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000E71E4(v1);

  return std::ios::~ios();
}

uint64_t sub_1000E6F98(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000E71E4(v1);

  return std::ios::~ios();
}

void sub_1000E6FF8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000E71E4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000E7060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000E709C(_BYTE *a1, int a2)
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

void sub_1000E7108(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000E71E4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000E716C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000E71E4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000E71E4(uint64_t a1)
{
  *a1 = &off_10020F610;
  sub_1000E7350(a1);
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

uint64_t sub_1000E7350(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_1000E7500((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
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

void sub_1000E749C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E74C8(uint64_t a1)
{
  sub_1000E71E4(a1);

  operator delete();
}

int *sub_1000E7500(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v19 = 0;
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
    v21 = v4;
    v22 = 2080;
    v23 = v11;
    v24 = 2048;
    v25 = 336;
    v26 = 2082;
    v27 = v12;
    v13 = _os_log_send_and_compose_impl(v10, &v19, 0, 0, &_mh_execute_header, v8, v9, "%.*s: <%lu> %{public}s", buf, 38);

    if (v13)
    {
      fprintf(__stderrp, "%s\n", v13);
      free(v13);
    }
  }

  else
  {
    v14 = sub_1000E957C(v6, v7);
    v15 = *(a1 + 4);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = *a2;
      }

      *buf = 68158466;
      v21 = v4;
      v22 = 2080;
      v23 = v16;
      v24 = 2048;
      v25 = 336;
      v26 = 2082;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v14, v15, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sub_1000E7780(void *a1, char **a2, unsigned int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1001FEAA0;
  sub_1000E77DC(a1 + 3, a2, a3);
}

void sub_1000E77DC(void *a1, char **a2, unsigned int *a3)
{
  sub_100010B0C(__p, *a2);
  v5 = *a3;
  v6 = sub_100150D40(__p, v5);
  sub_100056CC8(a1, v6, (v5 & 3) != 0, 0);
}

void sub_1000E7850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E7908(void *a1, unsigned int *a2, unsigned __int8 *a3, char *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1001FEAA0;
  sub_100056CC8(a1 + 3, *a2, *a3, *a4);
}

void *sub_1000E7A14(void *a1, unsigned int *a2, unsigned __int8 *a3, void *a4, void *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020F690;
  sub_1000873C8(a1 + 3, *a2, *a3, a4, a5);
  return a1;
}

void sub_1000E7A98(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10020F690;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1000E7BB0(void *a1, char **a2, unsigned int *a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020F690;
  sub_1000E7C0C((a1 + 3), a2, a3, a4);
  return a1;
}

uint64_t sub_1000E7C0C(uint64_t a1, char **a2, unsigned int *a3, uint64_t *a4)
{
  sub_100010B0C(__p, *a2);
  v7 = *a3;
  v8 = *a4;
  *&v13 = sub_100195AE4();
  *(&v13 + 1) = v9;
  sub_100086F70(a1, __p, v7, v8, &v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void *sub_1000E7D68(void *a1, char **a2, unsigned int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020F690;
  sub_1000E7DC4((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_1000E7DC4(uint64_t a1, char **a2, unsigned int *a3)
{
  sub_100010B0C(__p, *a2);
  v5 = *a3;
  *&v10 = sub_100195AE4();
  *(&v10 + 1) = v6;
  sub_100086F70(a1, __p, v5, 0, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

uint64_t sub_1000E7E84(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10020F610;
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

void sub_1000E7F34(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_1000E7FD0(void *a1, uint64_t *a2)
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

void *sub_1000E80F8(void *a1, size_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020F6E0;
  sub_1000E81FC(a1 + 3, *a2, *a3, a3[1]);
  return a1;
}

void sub_1000E8180(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10020F6E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1000E81FC(void *a1, size_t size, uint64_t a3, uint64_t a4)
{
  if (size)
  {
    v8 = malloc_type_valloc(size, 0x8B7C732DuLL);
    if (!v8)
    {
      exception = __cxa_allocate_exception(8uLL);
      v10 = std::bad_alloc::bad_alloc(exception);
    }
  }

  else
  {
    v8 = 0;
  }

  v14[0] = off_10020F730;
  v14[3] = v14;
  v12 = v8;
  sub_100015FBC(v13, v14);
  sub_10001590C(v14);
  sub_1000E841C(a1, &v12, size, a3, a4);
  sub_100015888(&v12, 0);
  sub_10001590C(v13);
  return a1;
}

void sub_1000E8320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100015888(&a9, 0);
  sub_10001590C(v9 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E83D0(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_10020F790))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1000E841C(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100192AE0(a1);
  *v10 = off_1002212D8;
  v11 = *a2;
  *a2 = 0;
  v10[3] = v11;
  sub_100015FBC((v10 + 4), (a2 + 1));
  a1[8] = a1[3];
  a1[9] = a3;
  a1[10] = a4;
  a1[11] = a5;
  a1[12] = getpagesize();
  return a1;
}

void *sub_1000E853C(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1001FC858;
  v4 = *a2;
  v5 = *a3;
  v6 = a3[1];
  sub_100192AE0(a1 + 3);
  a1[3] = off_1001FC8A8;
  a1[6] = v4;
  a1[7] = v5;
  a1[8] = v6;
  return a1;
}

void *sub_1000E8658(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1002002A0;
  v5 = 0;
  sub_100183D2C((a1 + 3), a2, a3, &v5);
  return a1;
}

void *sub_1000E8750(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1002002A0;
  v5 = 0;
  sub_100183D2C((a1 + 3), a2, a3, &v5);
  return a1;
}

void *sub_1000E8840(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020F7B0;
  sub_10013361C((a1 + 3), a2);
  return a1;
}

void sub_1000E88BC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10020F7B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1000E89BC(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020F7B0;
  sub_10013361C((a1 + 3), a2);
  return a1;
}

void *sub_1000E8AA4(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020F800;
  sub_10014E898(a1 + 3, a2, a3);
  return a1;
}

void sub_1000E8B20(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10020F800;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1000E8C08(void *a1, char **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020F850;
  sub_100010B0C(a1 + 3, *a2);
  return a1;
}

void sub_1000E8C88(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10020F850;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000E8CDC(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void *sub_1000E8D90(void *a1, char **a2, int *a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020F8A0;
  sub_100167E88((a1 + 3), a2, *a3, a4);
  return a1;
}

void sub_1000E8E10(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10020F8A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1000E8F10(void *a1, char **a2, uint64_t *a3, unsigned int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020F8F0;
  sub_1000E8FEC((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_1000E8F8C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10020F8F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000E8FEC(uint64_t a1, char **a2, uint64_t *a3, unsigned int *a4)
{
  sub_100010B0C(__p, *a2);
  v7 = *a3;
  v8 = *a4;
  memset(v10, 0, sizeof(v10));
  sub_10007CEC8(a1, __p, v7, v8 | &_mh_execute_header, v10, 0);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1000E906C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E9088(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {

    sub_10000E984(v2);
  }
}

void *sub_1000E9160(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020F940;
  sub_100192AE0(a1 + 3);
  a1[3] = off_10020F990;
  v4 = a2[1];
  a1[6] = *a2;
  a1[7] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1000E9214(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10020F940;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1000E9290(void *a1)
{
  *a1 = off_10020F990;
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

void sub_1000E92E8(void *a1)
{
  *a1 = off_10020F990;
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

  operator delete();
}

void *sub_1000E9490(void *a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020F8F0;
  sub_1000E94EC((a1 + 3), a2, a3, a4, a5, a6);
  return a1;
}

uint64_t sub_1000E94EC(uint64_t a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  sub_100010B0C(__p, *a2);
  sub_10007CEC8(a1, __p, 0, 0, a5, *a6);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1000E9560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000E957C(uint64_t a1, uint64_t a2)
{
  if (qword_100235400 != -1)
  {
    sub_1001987E0();
  }

  return qword_1002353F8;
}

const void **sub_1000E9614@<X0>(uint64_t a1@<X1>, char a2@<W2>, const __CFArray **a3@<X8>)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24) - *(a1 + 16)) >> 4), &kCFTypeArrayCallBacks);
  theArray = Mutable;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (v7 != v8)
  {
    do
    {
      (*(**(v7 + 3) + 56))(&v22);
      Count = CFArrayGetCount(theArray);
      v10 = @"Base";
      if (Count != -1 - 0x5555555555555555 * ((*(a1 + 24) - *(a1 + 16)) >> 4))
      {
        v10 = off_100210808[*v7];
      }

      v21 = v10;
      v11 = theArray;
      if ((a2 & 4) != 0)
      {
        v24 = @"Role";
        v25 = v10;
        CFRetain(v10);
        (*(*&v22[*(*v22 - 96)] + 16))(&v17);
        v26 = @"Image";
        v27 = v17;
        v17 = 0;
        v18 = &v24;
        v19 = 2;
        sub_100145408(&v18, &value);
        CFArrayAppendValue(v11, value);
        sub_100028D2C(&value);
        for (i = 24; i != -8; i -= 16)
        {
          sub_100028CF8((&v24 + i));
        }

        sub_10000E950(&v17);
      }

      else
      {
        v24 = @"Role";
        v25 = v10;
        CFRetain(v10);
        v12 = (*(*&v22[*(*v22 - 96)] + 24))(&v22[*(*v22 - 96)]);
        v26 = @"Image Format";
        v27 = v12;
        v18 = &v24;
        v19 = 2;
        sub_100145408(&v18, &value);
        CFArrayAppendValue(v11, value);
        sub_100028D2C(&value);
        for (j = 24; j != -8; j -= 16)
        {
          sub_100028CF8((&v24 + j));
        }
      }

      sub_1000283C8(&v21);
      v15 = v22;
      v22 = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      v7 += 12;
    }

    while (v7 != v8);
    Mutable = theArray;
  }

  *a3 = Mutable;
  theArray = 0;
  return sub_100029278(&theArray);
}

void sub_1000E9900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, const void *);
  v17 = va_arg(va1, void);
  sub_1000283C8(va);
  v14 = v17;
  v17 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  sub_100029278(va1);
  _Unwind_Resume(a1);
}

CFTypeRef *sub_1000E99E4(CFTypeRef *a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRetain(*a2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  *a1 = *a2;
  return a1;
}

uint64_t *sub_1000E9A2C(uint64_t *a1, uint64_t a2, char a3)
{
  a1[5] = off_1001F89F0;
  a1[6] = off_1001F8A20;
  a1[7] = off_1001F8A50;
  a1[8] = off_1001F8A80;
  *a1 = off_100210208;
  a1[3] = off_100210250;
  a1[4] = off_100210298;
  a1[5] = off_1002102E0;
  *(a1 + *(*a1 - 48)) = off_100210328;
  *(a1 + *(*a1 - 56)) = off_100210370;
  *(a1 + *(*a1 - 64)) = off_1002103B8;
  *a1 = off_10020FFE0;
  a1[3] = off_100210028;
  a1[4] = off_100210070;
  a1[5] = off_1002100B8;
  *(a1 + *(*a1 - 48)) = off_100210100;
  *(a1 + *(*a1 - 56)) = off_100210148;
  *(a1 + *(*a1 - 64)) = off_100210190;
  a1[9] = off_100210418;
  a1[3] = off_100210470;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  a1[17] = off_100210560;
  a1[18] = 0;
  a1[5] = off_1002105B8;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  a1[21] = 0;
  sub_1000EA280(a1 + 22, &off_10020FF60, a2);
  *a1 = off_10020FB28;
  a1[3] = off_10020FB70;
  a1[4] = off_10020FBB8;
  a1[5] = off_10020FC00;
  a1[6] = off_10020FC48;
  a1[7] = off_10020FC90;
  a1[8] = off_10020FCD8;
  a1[9] = off_10020FD38;
  a1[17] = off_10020FDA8;
  a1[22] = off_10020FE18;
  a1[1] = 0;
  v5 = (a1 + 1);
  a1[2] = 0;
  v6 = (a1 + 2);
  v7 = *(a2 + 16);
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  v10 = a2;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v8 + 56))(&v23);
  v11 = (*(*&v23[*(*v23 - 24)] + 16))(&v23[*(*v23 - 24)]);
  v12 = *a1;
  *(a1 + *(*a1 - 112) + 16) = *(v11 + 16);
  *(a1 + *(v12 - 112) + 8) = *(v11 + 8);
  *(a1 + *(v12 - 112) + 56) = *(v11 + 56);
  v13 = a1 + *(v12 - 112);
  v14 = *(v11 + 40);
  v13[48] = *(v11 + 48);
  *(v13 + 5) = v14;
  v15 = a1 + *(*a1 - 112);
  v16 = *(v11 + 24);
  v15[32] = *(v11 + 32);
  *(v15 + 3) = v16;
  v17 = (*(*&v23[*(*v23 - 64)] + 16))(&v23[*(*v23 - 64)]);
  sub_1000E99E4((a1 + *(*a1 - 128) + 16), (v17 + 16));
  sub_1000E99E4((a1 + *(*a1 - 128) + 24), (v17 + 24));
  sub_1000E9614(v10, a3, &v22);
  if (*v5)
  {
    CFRelease(*v5);
  }

  *v5 = v22;
  v22 = 0;
  sub_1000C3C48(&v22);
  v18 = (*(*&v23[*(*v23 - 96)] + 24))(&v23[*(*v23 - 96)]);
  v22 = v18;
  if (*v6)
  {
    CFRelease(*v6);
    v18 = v22;
  }

  *v6 = v18;
  v22 = 0;
  sub_1000283C8(&v22);
  v19 = v23;
  v23 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  if (v9)
  {
    sub_10000E984(v9);
  }

  return a1;
}

void sub_1000EA1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12)
{
  sub_1000283C8(&a11);
  v18 = a12;
  a12 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  if (v14)
  {
    sub_10000E984(v14);
  }

  sub_1000283C8(v15);
  sub_1000C3C48(v16);
  sub_100025DE0(v13, &off_10020FF60);
  sub_100025F68(v12, &off_10020FF40);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000EA280(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
  v7 = sub_100075664(*(*(a3 + 16) + 24));
  v9 = v8;
  *&v14.byte0 = v7;
  *&v14.byte8 = v9;
  v13 = CFUUIDCreateFromUUIDBytes(kCFAllocatorDefault, v14);
  v10 = CFUUIDCreateString(kCFAllocatorDefault, v13);
  v12 = v10;
  if (*v6)
  {
    CFRelease(*v6);
    v10 = v12;
  }

  a1[1] = v10;
  v12 = 0;
  sub_1000283C8(&v12);
  sub_1000292AC(&v13);
  return a1;
}

void sub_1000EA44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_1000283C8(&a9);
  sub_1000292AC(&a10);
  sub_1000283C8((v10 + 24));
  sub_1000283C8((v10 + 16));
  sub_1000283C8(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EA494(uint64_t a1)
{
  v2 = sub_1000EBB08(a1, off_10020FE48);
  *(v2 + 176) = off_1002106A8;
  *(v2 + 64) = off_100210700;
  sub_1000283C8((v2 + 200));
  sub_1000283C8((a1 + 192));
  sub_1000283C8((a1 + 184));
  *(a1 + 136) = off_100210560;
  *(a1 + 40) = off_1002105B8;
  sub_1000283C8((a1 + 168));
  return a1;
}

void sub_1000EA564(uint64_t a1)
{
  v2 = sub_1000EBB08(a1, off_10020FE48);
  *(v2 + 176) = off_1002106A8;
  *(v2 + 64) = off_100210700;
  sub_1000283C8((v2 + 200));
  sub_1000283C8((a1 + 192));
  sub_1000283C8((a1 + 184));
  *(a1 + 136) = off_100210560;
  *(a1 + 40) = off_1002105B8;
  sub_1000283C8((a1 + 168));

  operator delete();
}

const void **sub_1000EA654@<X0>(CFArrayRef *a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*a1 + 3))(a1);
  v13[0] = @"Image Format";
  v13[1] = v4;
  v13[2] = @"Format Description";
  v13[3] = @"Stackable image";
  sub_1000267A0(a1 + *(*a1 - 14), &valuePtr);
  v13[4] = @"Size Info";
  v13[5] = valuePtr;
  valuePtr = 0;
  sub_10000E950(&valuePtr);
  sub_100026B3C(a1 + *(*a1 - 15), &valuePtr);
  v13[6] = @"Encryption Info";
  v13[7] = valuePtr;
  valuePtr = 0;
  sub_10000E950(&valuePtr);
  sub_10002753C((a1 + *(*a1 - 16)), &valuePtr);
  v13[8] = @"Identity Info";
  v13[9] = valuePtr;
  valuePtr = 0;
  sub_10000E950(&valuePtr);
  valuePtr = CFArrayGetCount(a1[1]);
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, &valuePtr);
  v13[10] = @"Images Count";
  v13[11] = v5;
  v9 = 0;
  v6 = a1[1];
  v13[12] = @"Stack Info";
  v13[13] = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v10[0] = v13;
  v10[1] = 7;
  sub_100145408(v10, &v11);
  *a2 = v11;
  v11 = 0;
  sub_100028D2C(&v11);
  for (i = 13; i != -1; i -= 2)
  {
    sub_100028CF8(&v13[i]);
  }

  return sub_100053E5C(&v9);
}

void sub_1000EA864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_100053E5C(&a9);
  do
  {
    sub_100028CF8(v14 - 1);
    v14 -= 16;
  }

  while (v14 != &a14);
  _Unwind_Resume(a1);
}

const void **sub_1000EA8D8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  sub_1000EBB08(v1, off_10020FE48);
  *(v1 + 22) = off_1002106A8;
  *(v1 + 8) = off_100210700;
  sub_1000283C8(v1 + 25);
  sub_1000283C8(v1 + 24);
  sub_1000283C8(v1 + 23);
  *(v1 + 17) = off_100210560;
  *(v1 + 5) = off_1002105B8;

  return sub_1000283C8(v1 + 21);
}

void sub_1000EA9C8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  sub_1000EBB08(v1, off_10020FE48);
  *(v1 + 22) = off_1002106A8;
  *(v1 + 8) = off_100210700;
  sub_1000283C8(v1 + 25);
  sub_1000283C8(v1 + 24);
  sub_1000283C8(v1 + 23);
  *(v1 + 17) = off_100210560;
  *(v1 + 5) = off_1002105B8;
  sub_1000283C8(v1 + 21);

  operator delete();
}

const void **sub_1000EAAD0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  sub_1000EBB08(v1, off_10020FE48);
  *(v1 + 22) = off_1002106A8;
  *(v1 + 8) = off_100210700;
  sub_1000283C8(v1 + 25);
  sub_1000283C8(v1 + 24);
  sub_1000283C8(v1 + 23);
  *(v1 + 17) = off_100210560;
  *(v1 + 5) = off_1002105B8;

  return sub_1000283C8(v1 + 21);
}

void sub_1000EABC0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  sub_1000EBB08(v1, off_10020FE48);
  *(v1 + 22) = off_1002106A8;
  *(v1 + 8) = off_100210700;
  sub_1000283C8(v1 + 25);
  sub_1000283C8(v1 + 24);
  sub_1000283C8(v1 + 23);
  *(v1 + 17) = off_100210560;
  *(v1 + 5) = off_1002105B8;
  sub_1000283C8(v1 + 21);

  operator delete();
}

const void **sub_1000EACC8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  sub_1000EBB08(v1, off_10020FE48);
  *(v1 + 22) = off_1002106A8;
  *(v1 + 8) = off_100210700;
  sub_1000283C8(v1 + 25);
  sub_1000283C8(v1 + 24);
  sub_1000283C8(v1 + 23);
  *(v1 + 17) = off_100210560;
  *(v1 + 5) = off_1002105B8;

  return sub_1000283C8(v1 + 21);
}

void sub_1000EADB8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  sub_1000EBB08(v1, off_10020FE48);
  *(v1 + 22) = off_1002106A8;
  *(v1 + 8) = off_100210700;
  sub_1000283C8(v1 + 25);
  sub_1000283C8(v1 + 24);
  sub_1000283C8(v1 + 23);
  *(v1 + 17) = off_100210560;
  *(v1 + 5) = off_1002105B8;
  sub_1000283C8(v1 + 21);

  operator delete();
}

const void **sub_1000EAEC0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  sub_1000EBB08(v1, off_10020FE48);
  *(v1 + 22) = off_1002106A8;
  *(v1 + 8) = off_100210700;
  sub_1000283C8(v1 + 25);
  sub_1000283C8(v1 + 24);
  sub_1000283C8(v1 + 23);
  *(v1 + 17) = off_100210560;
  *(v1 + 5) = off_1002105B8;

  return sub_1000283C8(v1 + 21);
}

void sub_1000EAFB0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  sub_1000EBB08(v1, off_10020FE48);
  *(v1 + 22) = off_1002106A8;
  *(v1 + 8) = off_100210700;
  sub_1000283C8(v1 + 25);
  sub_1000283C8(v1 + 24);
  sub_1000283C8(v1 + 23);
  *(v1 + 17) = off_100210560;
  *(v1 + 5) = off_1002105B8;
  sub_1000283C8(v1 + 21);

  operator delete();
}

const void **sub_1000EB0B8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  sub_1000EBB08(v1, off_10020FE48);
  *(v1 + 22) = off_1002106A8;
  *(v1 + 8) = off_100210700;
  sub_1000283C8(v1 + 25);
  sub_1000283C8(v1 + 24);
  sub_1000283C8(v1 + 23);
  *(v1 + 17) = off_100210560;
  *(v1 + 5) = off_1002105B8;

  return sub_1000283C8(v1 + 21);
}

void sub_1000EB1A8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  sub_1000EBB08(v1, off_10020FE48);
  *(v1 + 22) = off_1002106A8;
  *(v1 + 8) = off_100210700;
  sub_1000283C8(v1 + 25);
  sub_1000283C8(v1 + 24);
  sub_1000283C8(v1 + 23);
  *(v1 + 17) = off_100210560;
  *(v1 + 5) = off_1002105B8;
  sub_1000283C8(v1 + 21);

  operator delete();
}

const void **sub_1000EB2B0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  sub_1000EBB08(v1, off_10020FE48);
  *(v1 + 22) = off_1002106A8;
  *(v1 + 8) = off_100210700;
  sub_1000283C8(v1 + 25);
  sub_1000283C8(v1 + 24);
  sub_1000283C8(v1 + 23);
  *(v1 + 17) = off_100210560;
  *(v1 + 5) = off_1002105B8;

  return sub_1000283C8(v1 + 21);
}

void sub_1000EB3A0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  sub_1000EBB08(v1, off_10020FE48);
  *(v1 + 22) = off_1002106A8;
  *(v1 + 8) = off_100210700;
  sub_1000283C8(v1 + 25);
  sub_1000283C8(v1 + 24);
  sub_1000283C8(v1 + 23);
  *(v1 + 17) = off_100210560;
  *(v1 + 5) = off_1002105B8;
  sub_1000283C8(v1 + 21);

  operator delete();
}

const void **sub_1000EB4A8(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  sub_1000EBB08(v1, off_10020FE48);
  *(v1 + 22) = off_1002106A8;
  *(v1 + 8) = off_100210700;
  sub_1000283C8(v1 + 25);
  sub_1000283C8(v1 + 24);
  sub_1000283C8(v1 + 23);
  *(v1 + 17) = off_100210560;
  *(v1 + 5) = off_1002105B8;

  return sub_1000283C8(v1 + 21);
}

void sub_1000EB598(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  sub_1000EBB08(v1, off_10020FE48);
  *(v1 + 22) = off_1002106A8;
  *(v1 + 8) = off_100210700;
  sub_1000283C8(v1 + 25);
  sub_1000283C8(v1 + 24);
  sub_1000283C8(v1 + 23);
  *(v1 + 17) = off_100210560;
  *(v1 + 5) = off_1002105B8;
  sub_1000283C8(v1 + 21);

  operator delete();
}

const void **sub_1000EB6C8(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  sub_1000EBB08(v1, off_10020FE48);
  *(v1 + 22) = off_1002106A8;
  *(v1 + 8) = off_100210700;
  sub_1000283C8(v1 + 25);
  sub_1000283C8(v1 + 24);
  sub_1000283C8(v1 + 23);
  *(v1 + 17) = off_100210560;
  *(v1 + 5) = off_1002105B8;

  return sub_1000283C8(v1 + 21);
}

void sub_1000EB7B8(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  sub_1000EBB08(v1, off_10020FE48);
  *(v1 + 22) = off_1002106A8;
  *(v1 + 8) = off_100210700;
  sub_1000283C8(v1 + 25);
  sub_1000283C8(v1 + 24);
  sub_1000283C8(v1 + 23);
  *(v1 + 17) = off_100210560;
  *(v1 + 5) = off_1002105B8;
  sub_1000283C8(v1 + 21);

  operator delete();
}

const void **sub_1000EB8E8(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  sub_1000EBB08(v1, off_10020FE48);
  *(v1 + 22) = off_1002106A8;
  *(v1 + 8) = off_100210700;
  sub_1000283C8(v1 + 25);
  sub_1000283C8(v1 + 24);
  sub_1000283C8(v1 + 23);
  *(v1 + 17) = off_100210560;
  *(v1 + 5) = off_1002105B8;

  return sub_1000283C8(v1 + 21);
}

void sub_1000EB9D8(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  sub_1000EBB08(v1, off_10020FE48);
  *(v1 + 22) = off_1002106A8;
  *(v1 + 8) = off_100210700;
  sub_1000283C8(v1 + 25);
  sub_1000283C8(v1 + 24);
  sub_1000283C8(v1 + 23);
  *(v1 + 17) = off_100210560;
  *(v1 + 5) = off_1002105B8;
  sub_1000283C8(v1 + 21);

  operator delete();
}

uint64_t sub_1000EBB08(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 104)) = a2[1];
  *(a1 + *(*a1 - 96)) = a2[2];
  *(a1 + *(*a1 - 24)) = a2[3];
  *(a1 + *(*a1 - 32)) = a2[4];
  *(a1 + *(*a1 - 40)) = a2[5];
  *(a1 + *(*a1 - 48)) = a2[6];
  *(a1 + *(*a1 - 56)) = a2[7];
  *(a1 + *(*a1 - 64)) = a2[8];
  *(a1 + *(*a1 - 112)) = a2[9];
  *(a1 + *(*a1 - 120)) = a2[10];
  *(a1 + *(*a1 - 128)) = a2[11];
  sub_1000283C8((a1 + 16));
  sub_1000C3C48((a1 + 8));
  return a1;
}

void sub_1000EBEB8(uint64_t *a1, uint64_t a2)
{
  if (*sub_1000EFC34(a2 + 32, *(a2 + 208)))
  {
    v4 = *(a2 + 664);
    v5 = *(a2 + 672);
    v27 = 0u;
    v28 = 0u;
    sub_1000F3F8C(a2 + 504, v25);
    v6 = a1 + 2;
    if (v4 == v5)
    {
      v11 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = *(v4 + 8 * v8) * *(a2 + 96);
        if (v9)
        {
          ++*(v6 + *(*a1 - 136));
          sub_1000FC5FC((a2 + 504), v25, v8, v9, 0, 1, buf);
          if (*buf && (*(*buf + 520) & 1) == 0)
          {
            if (*(*buf + 400))
            {
              v10 = (*buf + 40);
            }

            else
            {
              v10 = 0;
            }

            sub_1000ED544(a1, v10, v25, &v27);
          }

          sub_1000EFD00(buf);
        }

        v8 = (v8 + 1);
        v7 += 8;
      }

      while (v4 + v7 != v5);
      v11 = *(&v27 + 1);
    }

    v12 = *v6;
    *(a1 + *(*a1 - 112) + 56) -= v12 + (*(*a2 + 24))(a2) * v11;
    v13 = *(&v28 + 1);
    if (*(&v28 + 1) && sub_1000E9608())
    {
      v14 = *__error();
      v15 = sub_1000E95F0();
      if (v15)
      {
        v24 = 0;
        v17 = sub_1000E957C(v15, v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = 3;
        }

        else
        {
          v18 = 2;
        }

        *buf = 68158210;
        *&buf[4] = 71;
        v30 = 2080;
        v31 = "void info::DiskImageInfoASIF::count_used_extents(const DiskImageASIF &)";
        v32 = 2048;
        v33 = v13;
        LODWORD(v22) = 28;
        v19 = _os_log_send_and_compose_impl(v18, &v24, 0, 0, &_mh_execute_header, v17, 2, "%.*s: WARNING: Found %llu sectors with invalid flags (has_bitmap)", buf, v22, v23);
        if (v19)
        {
          v20 = v19;
          fprintf(__stderrp, "%s\n", v19);
          free(v20);
        }
      }

      else
      {
        v21 = sub_1000E957C(v15, v16);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68158210;
          *&buf[4] = 71;
          v30 = 2080;
          v31 = "void info::DiskImageInfoASIF::count_used_extents(const DiskImageASIF &)";
          v32 = 2048;
          v33 = v13;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%.*s: WARNING: Found %llu sectors with invalid flags (has_bitmap)", buf, 0x1Cu);
        }
      }

      *__error() = v14;
    }

    v25[0] = off_1002117E8;
    if (v26)
    {
      sub_10000E984(v26);
    }
  }
}

void sub_1000EC1E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a16)
  {
    sub_10000E984(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000EC258(void *a1, uint64_t a2)
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

void sub_1000EC360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_1000EC390(void *a1, uint64_t a2)
{
  v4 = sub_100106EC8(a2);
  v9[4] = v4;
  v9[5] = v5;
  if (v4 | v5)
  {
    *&v10.byte8 = v5;
    *&v10.byte0 = v4;
    v9[0] = CFUUIDCreateFromUUIDBytes(kCFAllocatorDefault, v10);
    v6 = CFUUIDCreateString(kCFAllocatorDefault, v9[0]);
    v8 = v6;
    v7 = (a1 + *(*a1 - 128));
    if (v7[3])
    {
      CFRelease(v7[3]);
      v6 = v8;
    }

    v7[3] = v6;
    v8 = 0;
    sub_1000283C8(&v8);
    sub_1000292AC(v9);
  }

  sub_100106EBC(a2);
}

void sub_1000EC500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_1000283C8(va);
  sub_1000292AC(va1);
  _Unwind_Resume(a1);
}

void sub_1000EC548(void *a1, char *a2)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v41[0] = Mutable;
  v5 = (a1 + *(*a1 - 136));
  if (v5[10])
  {
    CFRelease(v5[10]);
    Mutable = v41[0];
  }

  v5[10] = Mutable;
  v41[0] = 0;
  sub_100029278(v41);
  sub_1000F3F8C((a2 + 504), v34);
  v6 = *(a1 + *(*a1 - 112) + 16);
  v41[0] = a2;
  v41[1] = 0;
  v41[2] = v6;
  v42 = 2;
  v43 = 0;
  v44 = v34;
  v45 = 2;
  v46[0] = off_1001FE7F0;
  v46[3] = v46;
  sub_10006661C(v41, &v29);
  sub_10006679C(v41, v28);
  while (sub_10012E124(&v29, v28))
  {
    if (v33 == 3)
    {
      v15 = *__error();
      v16 = sub_1000E95F0();
      if (v16)
      {
        v27 = 0;
        v18 = sub_1000E957C(v16, v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = 3;
        }

        else
        {
          v19 = 2;
        }

        value = 0x4B04100302;
        v37 = 2080;
        v38 = "void info::DiskImageInfoASIF::examine_mapped_extents(const DiskImageASIF &)";
        v39 = 2048;
        v40 = v30;
        LODWORD(v25) = 28;
        v20 = _os_log_send_and_compose_impl(v19, &v27, 0, 0, &_mh_execute_header, v18, 16, "%.*s: Failed during ASIF extents enumeration on offset: %llu", &value, v25, v26);
        if (v20)
        {
          v21 = v20;
          fprintf(__stderrp, "%s\n", v20);
          free(v21);
        }
      }

      else
      {
        v22 = sub_1000E957C(v16, v17);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          value = 0x4B04100302;
          v37 = 2080;
          v38 = "void info::DiskImageInfoASIF::examine_mapped_extents(const DiskImageASIF &)";
          v39 = 2048;
          v40 = v30;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%.*s: Failed during ASIF extents enumeration on offset: %llu", &value, 0x1Cu);
        }
      }

      *__error() = v15;
      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &off_1002260F0;
      v24 = std::generic_category();
      exception[1] = 22;
      exception[2] = v24;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "Failed during ASIF extents enumeration.";
    }

    v8 = v30;
    v7 = v31;
    v9 = v32;
    v10 = CFArrayCreateMutable(kCFAllocatorDefault, 2, &kCFTypeArrayCallBacks);
    value = v10;
    if ((v9 & 2) != 0)
    {
      v11 = v8;
    }

    else
    {
      v11 = v8 + 1;
    }

    sub_100144C5C(v10, v11);
    sub_100144C5C(value, (v9 & 1) + v7 - 1);
    CFArrayAppendValue(*(a1 + *(*a1 - 136) + 80), value);
    sub_100029278(&value);
    sub_10012E3B4(&v29);
  }

  v12 = v28[0];
  v28[0] = 0;
  if (v12)
  {
    (*(*v12 + 24))(v12);
  }

  v13 = v29;
  v29 = 0;
  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  sub_10006659C(v46);
  v14 = v43;
  v43 = 0;
  if (v14)
  {
    (*(*v14 + 40))(v14);
  }

  v34[0] = off_1002117E8;
  if (v35)
  {
    sub_10000E984(v35);
  }
}

void sub_1000ECAA0(uint64_t *a1, char *a2, char a3)
{
  a1[7] = off_1001F89F0;
  a1[8] = off_1001F8A20;
  a1[9] = off_1001F8A50;
  a1[10] = off_1001F8A80;
  *a1 = off_100211020;
  a1[5] = off_100211068;
  a1[6] = off_1002110B0;
  a1[7] = off_1002110F8;
  *(a1 + *(*a1 - 48)) = off_100211140;
  *(a1 + *(*a1 - 56)) = off_100211188;
  *(a1 + *(*a1 - 64)) = off_1002111D0;
  *a1 = off_100210DF8;
  a1[5] = off_100210E40;
  a1[6] = off_100210E88;
  a1[7] = off_100210ED0;
  *(a1 + *(*a1 - 48)) = off_100210F18;
  *(a1 + *(*a1 - 56)) = off_100210F60;
  *(a1 + *(*a1 - 64)) = off_100210FA8;
  a1[11] = off_100211230;
  a1[5] = off_100211288;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  a1[19] = off_100211378;
  a1[20] = 0;
  a1[7] = off_1002113D0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  a1[23] = 0;
  sub_1000ED284(a1 + 24, &off_100210D58, a2);
  a1[30] = 0;
  a1[38] = 0;
  *(a1 + 16) = 0u;
  *(a1 + 17) = 0u;
  *a1 = off_1002108A8;
  a1[5] = off_1002108F0;
  a1[6] = off_100210938;
  a1[7] = off_100210980;
  a1[8] = off_1002109C8;
  a1[9] = off_100210A10;
  a1[10] = off_100210A58;
  a1[11] = off_100210AB8;
  a1[19] = off_100210B28;
  a1[24] = off_100210B98;
  a1[28] = off_100210C08;
  *(a1 + 1) = 0u;
  *(a1 + 3) = 0u;
  v5 = (*(*a2 + 32))(a2);
  v6 = *a1;
  *(a1 + *(*a1 - 112) + 16) = v5;
  v7 = *(a1 + *(v6 - 112) + 16);
  v8 = (*(*a2 + 24))(a2);
  v9 = *a1;
  v10 = *a1;
  *(a1 + *(v9 - 112) + 8) = v8 * v7;
  v11 = *(a2 + 24);
  *(a1 + *(v9 - 136) + 24) = v11;
  *(a1 + *(v10 - 136) + 64) = *(a2 + 11);
  *(a1 + *(v10 - 136) + 8) = *(a2 + 515);
  *(a1 + *(v10 - 112) + 56) = *(a1 + *(v10 - 112) + 8);
  v12 = *(a2 + 13);
  if (v12)
  {
    v13 = v12 * v11;
  }

  else
  {
    v14 = *(a2 + 11);
    v13 = (*(*a2 + 24))(a2) * v14;
    v9 = *a1;
  }

  v15 = a1 + *(v9 - 112);
  *(v15 + 5) = v13;
  v15[48] = 1;
  v16 = *a1;
  v17 = a1 + *(*a1 - 112);
  v18 = *(a2 + 24);
  if ((v17[32] & 1) == 0)
  {
    v17[32] = 1;
  }

  *(v17 + 3) = v18;
  *(a1 + *(v16 - 136) + 72) = a2[44] & 1;
  sub_1000EBEB8(a1, a2);
  sub_1000EC258(a2 + 2, a1 + *(*a1 - 104));
  sub_1000EC390(a1, a2);
}

void sub_1000ED234(_Unwind_Exception *a1)
{
  sub_1000ED494(v2, &off_100210D78);
  sub_100025DE0(v3, &off_100210D58);
  sub_100025F68(v1, &off_100210D38);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000ED284(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
  v7 = sub_100106F38(a3);
  v9 = v8;
  *&v14.byte0 = v7;
  *&v14.byte8 = v9;
  v13 = CFUUIDCreateFromUUIDBytes(kCFAllocatorDefault, v14);
  v10 = CFUUIDCreateString(kCFAllocatorDefault, v13);
  v12 = v10;
  if (*v6)
  {
    CFRelease(*v6);
    v10 = v12;
  }

  a1[1] = v10;
  v12 = 0;
  sub_1000283C8(&v12);
  sub_1000292AC(&v13);
  return a1;
}

void sub_1000ED44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_1000283C8(&a9);
  sub_1000292AC(&a10);
  sub_1000283C8((v10 + 24));
  sub_1000283C8((v10 + 16));
  sub_1000283C8(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_1000ED494(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  sub_100029278((a1 + 80));
  return a1;
}

void *sub_1000ED544(uint64_t *a1, void *a2, uint64_t a3, void *a4)
{
  result = sub_1000F1CD0(a2, a2, v23);
  v8 = a1 + 1;
  v9 = a1 + 3;
  v10 = a2[44];
  v11 = a1 + 4;
  while (v23[0] != v23[5] || v23[1] != v23[6])
  {
    v12 = sub_1000F1358(v23);
    sub_1000F54C0(a2, v12, v22);
    while (v22[0] != v22[5] || v22[1] != v22[6])
    {
      *v21 = *sub_1000F1358(v22);
      v13 = sub_1000F2250(v21);
      v14 = *a1;
      v15 = *a1;
      v16 = *(v8 + *(*a1 - 112));
      v17 = v16 > v10;
      v18 = v16 - v10;
      if (v17)
      {
        if (v18 >= *(v9 + *(v15 - 136)))
        {
          v19 = *(v9 + *(v15 - 136));
        }

        else
        {
          v19 = v18;
        }
      }

      else
      {
        v19 = 0;
      }

      if (v13 > 1)
      {
        if (v13 == 2)
        {
          ++*(a1 + *(v15 - 136) + 48);
          *v11 += v19;
        }

        else if (v13 == 3)
        {
          ++*(a1 + *(v15 - 136) + 56);
          *v9 += v19;
          if (v19)
          {
            sub_1000ED7E4(a1, a2, a3, v21[0], v21[1], a4, v19);
            v14 = *a1;
          }
        }
      }

      else if (v13)
      {
        if (v13 == 1)
        {
          ++*(a1 + *(v15 - 136) + 40);
          a1[2] += v19;
        }
      }

      else
      {
        ++*(v11 + *(v15 - 136));
        *v8 += v19;
      }

      v10 += *(v9 + *(v14 - 136));
      sub_1000F152C(v22, v21);
    }

    result = sub_1000F1414(v23, v22);
  }

  return result;
}

void *sub_1000ED798(void *a1)
{
  *a1 = off_1002117E8;
  v2 = a1[3];
  if (v2)
  {
    sub_10000E984(v2);
  }

  return a1;
}

atomic_ullong *sub_1000ED7E4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v28[0] = a4;
  v28[1] = a5;
  v12 = sub_1000F2534(v28);
  sub_1000F226C(a2, a3, v12, 0, &v27);
  v13 = a1 + *(*a1 - 112);
  v14 = *(v13 + 1);
  v15 = *(v13 + 2);
  if (v15 > v14)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &off_1002260F0;
    v26 = std::generic_category();
    exception[1] = 22;
    exception[2] = v26;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Corrupted ASIF image.";
  }

  v16 = sub_1000F2678(v28);
  v17 = v16 + a7;
  if (v16 < v17)
  {
    v18 = 0;
    v19 = v14 / v15;
    do
    {
      while (1)
      {
        if (v27)
        {
          v20 = *(v27 + 224) ? (v27 + 40) : 0;
        }

        else
        {
          v20 = 0;
        }

        v21 = sub_1000F2748(v20, a2, v18, v16, v17);
        v22 = a6;
        v23 = (v21 - v16) / v19;
        if (v18)
        {
          v22 = a6 + 1;
          if (v18 == 2)
          {
            break;
          }
        }

        *v22 += v23;
        ++v18;
        v16 = v21;
      }

      v18 = 0;
      a6[2] += v23;
      v16 = v21;
    }

    while (v21 < v17);
  }

  return sub_1000F0B1C(&v27);
}

void sub_1000ED9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000F0B1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000ED9C0(uint64_t a1)
{
  *a1 = off_100211A68;
  *(a1 + 88) = off_100211AC0;
  sub_100029278((a1 + 80));
  return a1;
}

void sub_1000EDA28(uint64_t a1)
{
  *a1 = off_100211A68;
  *(a1 + 88) = off_100211AC0;
  sub_100029278((a1 + 80));

  operator delete();
}

const void **sub_1000EDAB0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  valuePtr = *(a1 + 8);
  v11 = @"Dir Pointer Version";
  v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v13 = @"Num Tables";
  valuePtr = *(a1 + 16);
  v14 = 0;
  v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v15 = @"Chunk Size";
  valuePtr = *(a1 + 24);
  v16 = 0;
  v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v17 = @"Uninitialized Entries";
  valuePtr = *(a1 + 32);
  v18 = 0;
  v18 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v19 = @"Full Entries";
  valuePtr = *(a1 + 40);
  v20 = 0;
  v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v21 = @"Unmapped Entries";
  valuePtr = *(a1 + 48);
  v22 = 0;
  v22 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v23 = @"Bitmapped Entries";
  valuePtr = *(a1 + 56);
  v24 = 0;
  v24 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v25 = @"Max Sector Count";
  valuePtr = *(a1 + 64);
  v26 = 0;
  v4 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v5 = *(a1 + 72);
  v26 = v4;
  v27 = @"Is Cache";
  valuePtr = v5;
  v28 = 0;
  v28 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v29 = &v11;
  v30 = 9;
  sub_100145408(&v29, &v9);
  for (i = 17; i != -1; i -= 2)
  {
    sub_100028CF8(&(&v11)[i]);
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    v29 = @"Mapped Sectors";
    v30 = v7;
    CFRetain(v7);
    v11 = &v29;
    v12 = 1;
    sub_1001453B8(&v9, &v11);
    sub_100028CF8(&v30);
  }

  *a2 = v9;
  v9 = 0;
  return sub_100028D2C(&v9);
}

void sub_1000EDD34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100028CF8((v3 + 8));
  sub_100028D2C(va);
  _Unwind_Resume(a1);
}

const void **sub_1000EDDD4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *v1 = off_100211A68;
  *(v1 + 11) = off_100211AC0;
  return sub_100029278(v1 + 10);
}

void sub_1000EDE30(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *v1 = off_100211A68;
  *(v1 + 11) = off_100211AC0;
  sub_100029278(v1 + 10);

  operator delete();
}

uint64_t sub_1000EDF04(uint64_t a1)
{
  *(a1 + 224) = off_100211608;
  *(a1 + 72) = off_100211660;
  sub_100029278((a1 + 304));
  *(a1 + 192) = off_1002114C0;
  *(a1 + 80) = off_100211518;
  sub_1000283C8((a1 + 216));
  sub_1000283C8((a1 + 208));
  sub_1000283C8((a1 + 200));
  *(a1 + 152) = off_100211378;
  *(a1 + 56) = off_1002113D0;
  sub_1000283C8((a1 + 184));
  return a1;
}

void sub_1000EE010(uint64_t a1)
{
  *(a1 + 224) = off_100211608;
  *(a1 + 72) = off_100211660;
  sub_100029278((a1 + 304));
  *(a1 + 192) = off_1002114C0;
  *(a1 + 80) = off_100211518;
  sub_1000283C8((a1 + 216));
  sub_1000283C8((a1 + 208));
  sub_1000283C8((a1 + 200));
  *(a1 + 152) = off_100211378;
  *(a1 + 56) = off_1002113D0;
  sub_1000283C8((a1 + 184));

  operator delete();
}

const void **sub_1000EE13C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*a1 + 24))(a1);
  v10[0] = @"Image Format";
  v10[1] = v4;
  v10[2] = @"Format Description";
  v10[3] = @"Apple sparse image";
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
  sub_1000EDAB0(a1 + *(*a1 - 136), &v9);
  v10[8] = @"ASIF Info";
  v10[9] = v9;
  v9 = 0;
  sub_10000E950(&v9);
  sub_10002753C((a1 + *(*a1 - 128)), &v9);
  v10[10] = @"Identity Info";
  v10[11] = v9;
  v9 = 0;
  sub_10000E950(&v9);
  v7[0] = v10;
  v7[1] = 6;
  sub_100145408(v7, &v8);
  *a2 = v8;
  v8 = 0;
  sub_100028D2C(&v8);
  for (i = 11; i != -1; i -= 2)
  {
    result = sub_100028CF8(&v10[i]);
  }

  return result;
}

void sub_1000EE334(_Unwind_Exception *a1)
{
  v3 = (v1 + 88);
  v4 = -96;
  do
  {
    v3 = sub_100028CF8(v3) - 2;
    v4 += 16;
  }

  while (v4);
  _Unwind_Resume(a1);
}

const void **sub_1000EE384(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_100211608;
  *(v1 + 9) = off_100211660;
  sub_100029278(v1 + 38);
  *(v1 + 24) = off_1002114C0;
  *(v1 + 10) = off_100211518;
  sub_1000283C8(v1 + 27);
  sub_1000283C8(v1 + 26);
  sub_1000283C8(v1 + 25);
  *(v1 + 19) = off_100211378;
  *(v1 + 7) = off_1002113D0;

  return sub_1000283C8(v1 + 23);
}

void sub_1000EE4AC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_100211608;
  *(v1 + 9) = off_100211660;
  sub_100029278(v1 + 38);
  *(v1 + 24) = off_1002114C0;
  *(v1 + 10) = off_100211518;
  sub_1000283C8(v1 + 27);
  sub_1000283C8(v1 + 26);
  sub_1000283C8(v1 + 25);
  *(v1 + 19) = off_100211378;
  *(v1 + 7) = off_1002113D0;
  sub_1000283C8(v1 + 23);

  operator delete();
}

const void **sub_1000EE5EC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_100211608;
  *(v1 + 9) = off_100211660;
  sub_100029278(v1 + 38);
  *(v1 + 24) = off_1002114C0;
  *(v1 + 10) = off_100211518;
  sub_1000283C8(v1 + 27);
  sub_1000283C8(v1 + 26);
  sub_1000283C8(v1 + 25);
  *(v1 + 19) = off_100211378;
  *(v1 + 7) = off_1002113D0;

  return sub_1000283C8(v1 + 23);
}

void sub_1000EE714(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_100211608;
  *(v1 + 9) = off_100211660;
  sub_100029278(v1 + 38);
  *(v1 + 24) = off_1002114C0;
  *(v1 + 10) = off_100211518;
  sub_1000283C8(v1 + 27);
  sub_1000283C8(v1 + 26);
  sub_1000283C8(v1 + 25);
  *(v1 + 19) = off_100211378;
  *(v1 + 7) = off_1002113D0;
  sub_1000283C8(v1 + 23);

  operator delete();
}

const void **sub_1000EE854(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_100211608;
  *(v1 + 9) = off_100211660;
  sub_100029278(v1 + 38);
  *(v1 + 24) = off_1002114C0;
  *(v1 + 10) = off_100211518;
  sub_1000283C8(v1 + 27);
  sub_1000283C8(v1 + 26);
  sub_1000283C8(v1 + 25);
  *(v1 + 19) = off_100211378;
  *(v1 + 7) = off_1002113D0;

  return sub_1000283C8(v1 + 23);
}

void sub_1000EE97C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_100211608;
  *(v1 + 9) = off_100211660;
  sub_100029278(v1 + 38);
  *(v1 + 24) = off_1002114C0;
  *(v1 + 10) = off_100211518;
  sub_1000283C8(v1 + 27);
  sub_1000283C8(v1 + 26);
  sub_1000283C8(v1 + 25);
  *(v1 + 19) = off_100211378;
  *(v1 + 7) = off_1002113D0;
  sub_1000283C8(v1 + 23);

  operator delete();
}

const void **sub_1000EEABC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_100211608;
  *(v1 + 9) = off_100211660;
  sub_100029278(v1 + 38);
  *(v1 + 24) = off_1002114C0;
  *(v1 + 10) = off_100211518;
  sub_1000283C8(v1 + 27);
  sub_1000283C8(v1 + 26);
  sub_1000283C8(v1 + 25);
  *(v1 + 19) = off_100211378;
  *(v1 + 7) = off_1002113D0;

  return sub_1000283C8(v1 + 23);
}

void sub_1000EEBE4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_100211608;
  *(v1 + 9) = off_100211660;
  sub_100029278(v1 + 38);
  *(v1 + 24) = off_1002114C0;
  *(v1 + 10) = off_100211518;
  sub_1000283C8(v1 + 27);
  sub_1000283C8(v1 + 26);
  sub_1000283C8(v1 + 25);
  *(v1 + 19) = off_100211378;
  *(v1 + 7) = off_1002113D0;
  sub_1000283C8(v1 + 23);

  operator delete();
}

const void **sub_1000EED24(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_100211608;
  *(v1 + 9) = off_100211660;
  sub_100029278(v1 + 38);
  *(v1 + 24) = off_1002114C0;
  *(v1 + 10) = off_100211518;
  sub_1000283C8(v1 + 27);
  sub_1000283C8(v1 + 26);
  sub_1000283C8(v1 + 25);
  *(v1 + 19) = off_100211378;
  *(v1 + 7) = off_1002113D0;

  return sub_1000283C8(v1 + 23);
}

void sub_1000EEE4C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_100211608;
  *(v1 + 9) = off_100211660;
  sub_100029278(v1 + 38);
  *(v1 + 24) = off_1002114C0;
  *(v1 + 10) = off_100211518;
  sub_1000283C8(v1 + 27);
  sub_1000283C8(v1 + 26);
  sub_1000283C8(v1 + 25);
  *(v1 + 19) = off_100211378;
  *(v1 + 7) = off_1002113D0;
  sub_1000283C8(v1 + 23);

  operator delete();
}

const void **sub_1000EEF8C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_100211608;
  *(v1 + 9) = off_100211660;
  sub_100029278(v1 + 38);
  *(v1 + 24) = off_1002114C0;
  *(v1 + 10) = off_100211518;
  sub_1000283C8(v1 + 27);
  sub_1000283C8(v1 + 26);
  sub_1000283C8(v1 + 25);
  *(v1 + 19) = off_100211378;
  *(v1 + 7) = off_1002113D0;

  return sub_1000283C8(v1 + 23);
}

void sub_1000EF0B4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 28) = off_100211608;
  *(v1 + 9) = off_100211660;
  sub_100029278(v1 + 38);
  *(v1 + 24) = off_1002114C0;
  *(v1 + 10) = off_100211518;
  sub_1000283C8(v1 + 27);
  sub_1000283C8(v1 + 26);
  sub_1000283C8(v1 + 25);
  *(v1 + 19) = off_100211378;
  *(v1 + 7) = off_1002113D0;
  sub_1000283C8(v1 + 23);

  operator delete();
}

const void **sub_1000EF1F4(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 28) = off_100211608;
  *(v1 + 9) = off_100211660;
  sub_100029278(v1 + 38);
  *(v1 + 24) = off_1002114C0;
  *(v1 + 10) = off_100211518;
  sub_1000283C8(v1 + 27);
  sub_1000283C8(v1 + 26);
  sub_1000283C8(v1 + 25);
  *(v1 + 19) = off_100211378;
  *(v1 + 7) = off_1002113D0;

  return sub_1000283C8(v1 + 23);
}

void sub_1000EF31C(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 28) = off_100211608;
  *(v1 + 9) = off_100211660;
  sub_100029278(v1 + 38);
  *(v1 + 24) = off_1002114C0;
  *(v1 + 10) = off_100211518;
  sub_1000283C8(v1 + 27);
  sub_1000283C8(v1 + 26);
  sub_1000283C8(v1 + 25);
  *(v1 + 19) = off_100211378;
  *(v1 + 7) = off_1002113D0;
  sub_1000283C8(v1 + 23);

  operator delete();
}

const void **sub_1000EF484(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 28) = off_100211608;
  *(v1 + 9) = off_100211660;
  sub_100029278(v1 + 38);
  *(v1 + 24) = off_1002114C0;
  *(v1 + 10) = off_100211518;
  sub_1000283C8(v1 + 27);
  sub_1000283C8(v1 + 26);
  sub_1000283C8(v1 + 25);
  *(v1 + 19) = off_100211378;
  *(v1 + 7) = off_1002113D0;

  return sub_1000283C8(v1 + 23);
}

void sub_1000EF5AC(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 28) = off_100211608;
  *(v1 + 9) = off_100211660;
  sub_100029278(v1 + 38);
  *(v1 + 24) = off_1002114C0;
  *(v1 + 10) = off_100211518;
  sub_1000283C8(v1 + 27);
  sub_1000283C8(v1 + 26);
  sub_1000283C8(v1 + 25);
  *(v1 + 19) = off_100211378;
  *(v1 + 7) = off_1002113D0;
  sub_1000283C8(v1 + 23);

  operator delete();
}

const void **sub_1000EF714(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 28) = off_100211608;
  *(v1 + 9) = off_100211660;
  sub_100029278(v1 + 38);
  *(v1 + 24) = off_1002114C0;
  *(v1 + 10) = off_100211518;
  sub_1000283C8(v1 + 27);
  sub_1000283C8(v1 + 26);
  sub_1000283C8(v1 + 25);
  *(v1 + 19) = off_100211378;
  *(v1 + 7) = off_1002113D0;

  return sub_1000283C8(v1 + 23);
}

void sub_1000EF83C(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 28) = off_100211608;
  *(v1 + 9) = off_100211660;
  sub_100029278(v1 + 38);
  *(v1 + 24) = off_1002114C0;
  *(v1 + 10) = off_100211518;
  sub_1000283C8(v1 + 27);
  sub_1000283C8(v1 + 26);
  sub_1000283C8(v1 + 25);
  *(v1 + 19) = off_100211378;
  *(v1 + 7) = off_1002113D0;
  sub_1000283C8(v1 + 23);

  operator delete();
}

const void **sub_1000EF9A4(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 28) = off_100211608;
  *(v1 + 9) = off_100211660;
  sub_100029278(v1 + 38);
  *(v1 + 24) = off_1002114C0;
  *(v1 + 10) = off_100211518;
  sub_1000283C8(v1 + 27);
  sub_1000283C8(v1 + 26);
  sub_1000283C8(v1 + 25);
  *(v1 + 19) = off_100211378;
  *(v1 + 7) = off_1002113D0;

  return sub_1000283C8(v1 + 23);
}

void sub_1000EFACC(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 28) = off_100211608;
  *(v1 + 9) = off_100211660;
  sub_100029278(v1 + 38);
  *(v1 + 24) = off_1002114C0;
  *(v1 + 10) = off_100211518;
  sub_1000283C8(v1 + 27);
  sub_1000283C8(v1 + 26);
  sub_1000283C8(v1 + 25);
  *(v1 + 19) = off_100211378;
  *(v1 + 7) = off_1002113D0;
  sub_1000283C8(v1 + 23);

  operator delete();
}

uint64_t sub_1000EFC34(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v5 = sub_100001940(exception, "ASIF: invalid dir index to header", 0x16u);
    }

    v2 = 24;
  }

  else
  {
    v2 = 16;
  }

  return a1 + v2;
}

void sub_1000EFC94(void *a1)
{
  *a1 = off_1002117E8;
  v1 = a1[3];
  if (v1)
  {
    sub_10000E984(v1);
  }

  operator delete();
}

atomic_ullong *sub_1000EFD00(atomic_ullong *a1)
{
  result = atomic_exchange(a1, 0);
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFFFFFFFFFFLL) == 1)
    {
      v2 = result[4];
      result[4] = -1;
      return sub_1000EFD2C(result, v2, 1u);
    }
  }

  return result;
}

uint64_t sub_1000EFD2C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  if ((*(a1 + 520) & 1) != 0 || (v6 = atomic_load((a1 + 24)), v6 != 2))
  {
    v7 = (a3 >> 1) & 2;
  }

  else
  {
    v7 = (a3 >> 1) & 2;
    if (sub_1000EFF18(a1))
    {
      if ((v3 & 2) == 0)
      {
        if (v3)
        {
          sub_1000F00D4(a1 + 408, a1, a2, v7 | 1);
        }

        return 0;
      }

      *&v10 = "ref::details::ctrl_blk<di_asif::details::table, unsigned long long>::reset_val(tag_t, details::reset_val_option_set) [T = di_asif::details::table, tag_t = unsigned long long]";
      *(&v10 + 1) = 78;
      v11 = 16;
      sub_1000EFF68(v12, &v10);
      sub_100001FE8(v13, "Got error when trying to close ", 31);
      std::ostream::operator<<();
      sub_100001FE8(v13, " with ret ", 10);
      std::ostream::operator<<();
      sub_100001FE8(v13, ", Force closing.", 16);
      std::ostream::~ostream();
      sub_1000F01FC(v12);
      std::ios::~ios();
    }
  }

  atomic_store(0, (a1 + 24));
  if (*(a1 + 400) == 1)
  {
    std::mutex::~mutex((a1 + 320));
    sub_100072AB4((a1 + 272));
    std::mutex::~mutex((a1 + 208));
    std::mutex::~mutex((a1 + 144));
    v9 = *(a1 + 112);
    if (v9)
    {
      *(a1 + 120) = v9;
      operator delete(v9);
    }

    sub_1000F0A18((a1 + 56), 0);
    sub_1000F0A9C(a1 + 64);
    *(a1 + 400) = 0;
  }

  sub_1000F00D4(a1 + 408, a1, a2, v7);
  std::__cxx_atomic_notify_all((a1 + 24));
  return 1;
}

void sub_1000EFF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000F0090(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EFF18(uint64_t a1)
{
  if (*(a1 + 400) != 1)
  {
    return 0;
  }

  v1 = *(a1 + 496);
  if (v1)
  {
    return (*(*v1 + 48))(*(a1 + 496), a1 + 40);
  }

  else
  {
    return sub_1000FB148(a1 + 40);
  }
}

void *sub_1000EFF68(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000F0134(a1, a2);
  *a1 = off_100211848;
  a1[45] = &off_100211948;
  a1[46] = &off_100211970;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100211848;
  a1[45] = off_1002118D0;
  a1[46] = off_1002118F8;
  return a1;
}

void sub_1000F006C(_Unwind_Exception *a1)
{
  sub_1000F01FC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000F0090(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000F01FC(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000F00D4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4;
  v6 = a3;
  v7 = a2;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_10001583C();
  }

  return (*(*v4 + 48))(v4, &v7, &v6, &v8);
}

uint64_t sub_1000F0134(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002119E0;
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

void sub_1000F01E4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F01FC(uint64_t a1)
{
  *a1 = &off_1002119E0;
  sub_1000F063C(a1);
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

void sub_1000F0368(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000F01FC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000F03D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000F040C(_BYTE *a1, int a2)
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

uint64_t sub_1000F0478(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000F01FC(v1);

  return std::ios::~ios();
}

void sub_1000F04C4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000F01FC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000F0528(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000F01FC(v1);

  return std::ios::~ios();
}

void sub_1000F0588(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000F01FC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000F0604(uint64_t a1)
{
  sub_1000F01FC(a1);

  operator delete();
}

uint64_t sub_1000F063C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v10 >= 1)
      {
        v5 = sub_100001B64(a1 + 104);
        if (v6 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_100001BB0();
        }

        v7 = v6;
        if (v6 >= 0x17)
        {
          operator new();
        }

        v9 = v6;
        if (v6)
        {
          memmove(__p, v5, v6);
        }

        *(__p + v7) = 0;
        sub_1000F0834((a1 + 72), __p);
        if (v9 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        v9 = 0;
        LOBYTE(__p[0]) = 0;
        sub_100001C58(a1 + 104, __p);
        if (v9 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000F080C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000F0834(uint64_t *a1, uint64_t *a2)
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
    v26 = 210;
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
      v26 = 210;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}