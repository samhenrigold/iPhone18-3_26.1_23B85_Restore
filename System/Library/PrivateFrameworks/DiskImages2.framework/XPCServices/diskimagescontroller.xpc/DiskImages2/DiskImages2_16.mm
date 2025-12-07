uint64_t sub_100161A18(_BYTE *a1, int a2)
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

void sub_100161A84(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100161B60(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100161AE8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100161B60(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100161B60(uint64_t a1)
{
  *a1 = &off_100229FF8;
  sub_100161CCC(a1);
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

uint64_t sub_100161CCC(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_100161E7C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100161E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100161E44(uint64_t a1)
{
  sub_100161B60(a1);

  operator delete();
}

int *sub_100161E7C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 209;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 209;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t **sub_100162060(uint64_t **a1, _OWORD *a2)
{
  v4 = *a1;
  v5 = *(v4 + 8);
  v6 = (*v4 + 16 * v5);
  if (v5 == *(v4 + 16))
  {
    sub_1000D1D58(v4, v6, &v8, 1, a2);
  }

  else
  {
    *v6 = *a2;
    ++*(v4 + 8);
  }

  return a1;
}

uint64_t sub_1001620CC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100162364(v1);

  return std::ios::~ios();
}

uint64_t sub_100162118(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100162364(v1);

  return std::ios::~ios();
}

void sub_100162178(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100162364(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001621E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10016221C(_BYTE *a1, int a2)
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

void sub_100162288(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100162364(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001622EC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100162364(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100162364(uint64_t a1)
{
  *a1 = &off_10022A218;
  sub_1001624D0(a1);
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

uint64_t sub_1001624D0(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_100162680((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10016261C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100162648(uint64_t a1)
{
  sub_100162364(a1);

  operator delete();
}

int *sub_100162680(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 408;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 408;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100162864(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100162AFC(v1);

  return std::ios::~ios();
}

uint64_t sub_1001628B0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100162AFC(v1);

  return std::ios::~ios();
}

void sub_100162910(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100162AFC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100162978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001629B4(_BYTE *a1, int a2)
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

void sub_100162A20(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100162AFC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100162A84(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100162AFC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100162AFC(uint64_t a1)
{
  *a1 = &off_10022A438;
  sub_100162C68(a1);
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

uint64_t sub_100162C68(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_100162E18((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100162DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100162DE0(uint64_t a1)
{
  sub_100162AFC(a1);

  operator delete();
}

int *sub_100162E18(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 412;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 412;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100162FFC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100163294(v1);

  return std::ios::~ios();
}

uint64_t sub_100163048(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100163294(v1);

  return std::ios::~ios();
}

void sub_1001630A8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100163294(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100163110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10016314C(_BYTE *a1, int a2)
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

void sub_1001631B8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100163294(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10016321C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100163294(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100163294(uint64_t a1)
{
  *a1 = &off_10022A658;
  sub_100163400(a1);
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

uint64_t sub_100163400(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_1001635B0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10016354C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100163578(uint64_t a1)
{
  sub_100163294(a1);

  operator delete();
}

int *sub_1001635B0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 494;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 494;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100163794(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100163A2C(v1);

  return std::ios::~ios();
}

uint64_t sub_1001637E0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100163A2C(v1);

  return std::ios::~ios();
}

void sub_100163840(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100163A2C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001638A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001638E4(_BYTE *a1, int a2)
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

void sub_100163950(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100163A2C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001639B4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100163A2C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100163A2C(uint64_t a1)
{
  *a1 = &off_10022A878;
  sub_100163B98(a1);
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

uint64_t sub_100163B98(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_100163D48((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100163CE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100163D10(uint64_t a1)
{
  sub_100163A2C(a1);

  operator delete();
}

int *sub_100163D48(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 509;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 509;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100163F2C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001641C4(v1);

  return std::ios::~ios();
}

uint64_t sub_100163F78(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001641C4(v1);

  return std::ios::~ios();
}

void sub_100163FD8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001641C4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100164040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10016407C(_BYTE *a1, int a2)
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

void sub_1001640E8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001641C4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10016414C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001641C4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001641C4(uint64_t a1)
{
  *a1 = &off_10022AA98;
  sub_100164330(a1);
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

uint64_t sub_100164330(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_1001644E0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10016447C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001644A8(uint64_t a1)
{
  sub_1001641C4(a1);

  operator delete();
}

int *sub_1001644E0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 521;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 521;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001646C4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016495C(v1);

  return std::ios::~ios();
}

uint64_t sub_100164710(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016495C(v1);

  return std::ios::~ios();
}

void sub_100164770(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016495C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001647D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100164814(_BYTE *a1, int a2)
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

void sub_100164880(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016495C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001648E4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016495C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016495C(uint64_t a1)
{
  *a1 = &off_10022ACB8;
  sub_100164AC8(a1);
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

uint64_t sub_100164AC8(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_100164C78((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100164C14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100164C40(uint64_t a1)
{
  sub_10016495C(a1);

  operator delete();
}

int *sub_100164C78(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 535;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 535;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100164E5C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001650F4(v1);

  return std::ios::~ios();
}

uint64_t sub_100164EA8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001650F4(v1);

  return std::ios::~ios();
}

void sub_100164F08(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001650F4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100164F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100164FAC(_BYTE *a1, int a2)
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

void sub_100165018(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001650F4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10016507C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001650F4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001650F4(uint64_t a1)
{
  *a1 = &off_10022AED8;
  sub_100165260(a1);
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

uint64_t sub_100165260(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_100165410((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1001653AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001653D8(uint64_t a1)
{
  sub_1001650F4(a1);

  operator delete();
}

int *sub_100165410(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 540;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 540;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001655F4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016588C(v1);

  return std::ios::~ios();
}

uint64_t sub_100165640(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016588C(v1);

  return std::ios::~ios();
}

void sub_1001656A0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016588C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100165708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100165744(_BYTE *a1, int a2)
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

void sub_1001657B0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016588C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100165814(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016588C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016588C(uint64_t a1)
{
  *a1 = &off_10022B0F8;
  sub_1001659F8(a1);
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

uint64_t sub_1001659F8(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_100165BA8((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100165B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100165B70(uint64_t a1)
{
  sub_10016588C(a1);

  operator delete();
}

int *sub_100165BA8(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 552;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 552;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100165D8C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100166024(v1);

  return std::ios::~ios();
}

uint64_t sub_100165DD8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100166024(v1);

  return std::ios::~ios();
}

void sub_100165E38(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100166024(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100165EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100165EDC(_BYTE *a1, int a2)
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

void sub_100165F48(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100166024(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100165FAC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100166024(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100166024(uint64_t a1)
{
  *a1 = &off_10022B318;
  sub_100166190(a1);
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

uint64_t sub_100166190(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_100166340((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1001662DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100166308(uint64_t a1)
{
  sub_100166024(a1);

  operator delete();
}

int *sub_100166340(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 563;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 563;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100166524(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001667BC(v1);

  return std::ios::~ios();
}

uint64_t sub_100166570(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001667BC(v1);

  return std::ios::~ios();
}

void sub_1001665D0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001667BC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100166638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100166674(_BYTE *a1, int a2)
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

void sub_1001666E0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001667BC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100166744(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001667BC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001667BC(uint64_t a1)
{
  *a1 = &off_10022B538;
  sub_100166928(a1);
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

uint64_t sub_100166928(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_100166AD8((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100166A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100166AA0(uint64_t a1)
{
  sub_1001667BC(a1);

  operator delete();
}

int *sub_100166AD8(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 570;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 570;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100166CBC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100166F54(v1);

  return std::ios::~ios();
}

uint64_t sub_100166D08(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100166F54(v1);

  return std::ios::~ios();
}

void sub_100166D68(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100166F54(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100166DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100166E0C(_BYTE *a1, int a2)
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

void sub_100166E78(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100166F54(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100166EDC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100166F54(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100166F54(uint64_t a1)
{
  *a1 = &off_10022B758;
  sub_1001670C0(a1);
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

uint64_t sub_1001670C0(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_100167270((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10016720C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100167238(uint64_t a1)
{
  sub_100166F54(a1);

  operator delete();
}

int *sub_100167270(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 580;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 580;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100167454(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001676EC(v1);

  return std::ios::~ios();
}

uint64_t sub_1001674A0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001676EC(v1);

  return std::ios::~ios();
}

void sub_100167500(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001676EC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100167568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001675A4(_BYTE *a1, int a2)
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

void sub_100167610(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001676EC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100167674(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001676EC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001676EC(uint64_t a1)
{
  *a1 = &off_10022B978;
  sub_100167858(a1);
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

uint64_t sub_100167858(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_100167A08((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1001679A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001679D0(uint64_t a1)
{
  sub_1001676EC(a1);

  operator delete();
}

int *sub_100167A08(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 593;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 593;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100167BEC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100167E84(v1);

  return std::ios::~ios();
}

uint64_t sub_100167C38(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100167E84(v1);

  return std::ios::~ios();
}

void sub_100167C98(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100167E84(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100167D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100167D3C(_BYTE *a1, int a2)
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

void sub_100167DA8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100167E84(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100167E0C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100167E84(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100167E84(uint64_t a1)
{
  *a1 = &off_10022BB98;
  sub_100167FF0(a1);
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

uint64_t sub_100167FF0(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_1001681A0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10016813C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100168168(uint64_t a1)
{
  sub_100167E84(a1);

  operator delete();
}

int *sub_1001681A0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 606;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 606;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100168384(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016861C(v1);

  return std::ios::~ios();
}

uint64_t sub_1001683D0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016861C(v1);

  return std::ios::~ios();
}

void sub_100168430(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016861C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100168498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001684D4(_BYTE *a1, int a2)
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

void sub_100168540(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016861C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001685A4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016861C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016861C(uint64_t a1)
{
  *a1 = &off_10022BDB8;
  sub_100168788(a1);
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

uint64_t sub_100168788(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_100168938((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1001688D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100168900(uint64_t a1)
{
  sub_10016861C(a1);

  operator delete();
}

int *sub_100168938(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 614;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 614;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100168B1C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100168DB4(v1);

  return std::ios::~ios();
}

uint64_t sub_100168B68(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100168DB4(v1);

  return std::ios::~ios();
}

void sub_100168BC8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100168DB4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100168C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100168C6C(_BYTE *a1, int a2)
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

void sub_100168CD8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100168DB4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100168D3C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100168DB4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100168DB4(uint64_t a1)
{
  *a1 = &off_10022BFD8;
  sub_100168F20(a1);
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

uint64_t sub_100168F20(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_1001690D0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10016906C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100169098(uint64_t a1)
{
  sub_100168DB4(a1);

  operator delete();
}

int *sub_1001690D0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 623;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 623;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001692B4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016954C(v1);

  return std::ios::~ios();
}

uint64_t sub_100169300(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016954C(v1);

  return std::ios::~ios();
}

void sub_100169360(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016954C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001693C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100169404(_BYTE *a1, int a2)
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

void sub_100169470(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016954C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001694D4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016954C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016954C(uint64_t a1)
{
  *a1 = &off_10022C1F8;
  sub_1001696B8(a1);
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

uint64_t sub_1001696B8(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_100169868((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100169804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100169830(uint64_t a1)
{
  sub_10016954C(a1);

  operator delete();
}

int *sub_100169868(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 631;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 631;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100169A4C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100169CE4(v1);

  return std::ios::~ios();
}

uint64_t sub_100169A98(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100169CE4(v1);

  return std::ios::~ios();
}

void sub_100169AF8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100169CE4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100169B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100169B9C(_BYTE *a1, int a2)
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

void sub_100169C08(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100169CE4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100169C6C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100169CE4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100169CE4(uint64_t a1)
{
  *a1 = &off_10022C418;
  sub_100169E50(a1);
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

uint64_t sub_100169E50(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_10016A000((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100169F9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100169FC8(uint64_t a1)
{
  sub_100169CE4(a1);

  operator delete();
}

int *sub_10016A000(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 671;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 671;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10016A1E4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016A47C(v1);

  return std::ios::~ios();
}

uint64_t sub_10016A230(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016A47C(v1);

  return std::ios::~ios();
}

void sub_10016A290(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016A47C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016A2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10016A334(_BYTE *a1, int a2)
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

void sub_10016A3A0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016A47C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10016A404(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016A47C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016A47C(uint64_t a1)
{
  *a1 = &off_10022C638;
  sub_10016A5E8(a1);
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

uint64_t sub_10016A5E8(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_10016A798((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10016A734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016A760(uint64_t a1)
{
  sub_10016A47C(a1);

  operator delete();
}

int *sub_10016A798(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 684;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 684;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10016A97C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016AC14(v1);

  return std::ios::~ios();
}

uint64_t sub_10016A9C8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016AC14(v1);

  return std::ios::~ios();
}

void sub_10016AA28(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016AC14(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016AA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10016AACC(_BYTE *a1, int a2)
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

void sub_10016AB38(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016AC14(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10016AB9C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016AC14(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016AC14(uint64_t a1)
{
  *a1 = &off_10022C858;
  sub_10016AD80(a1);
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

uint64_t sub_10016AD80(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_10016AF30((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10016AECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016AEF8(uint64_t a1)
{
  sub_10016AC14(a1);

  operator delete();
}

int *sub_10016AF30(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 844;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 844;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10016B114(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016B3AC(v1);

  return std::ios::~ios();
}

uint64_t sub_10016B160(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016B3AC(v1);

  return std::ios::~ios();
}

void sub_10016B1C0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016B3AC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016B228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10016B264(_BYTE *a1, int a2)
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

void sub_10016B2D0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016B3AC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10016B334(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016B3AC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016B3AC(uint64_t a1)
{
  *a1 = &off_10022CA78;
  sub_10016B518(a1);
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

uint64_t sub_10016B518(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_10016B6C8((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10016B664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016B690(uint64_t a1)
{
  sub_10016B3AC(a1);

  operator delete();
}

int *sub_10016B6C8(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 847;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 847;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10016B8AC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016BB44(v1);

  return std::ios::~ios();
}

uint64_t sub_10016B8F8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016BB44(v1);

  return std::ios::~ios();
}

void sub_10016B958(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016BB44(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016B9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10016B9FC(_BYTE *a1, int a2)
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

void sub_10016BA68(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016BB44(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10016BACC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016BB44(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016BB44(uint64_t a1)
{
  *a1 = &off_10022CC98;
  sub_10016BCB0(a1);
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

uint64_t sub_10016BCB0(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_10016BE60((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10016BDFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016BE28(uint64_t a1)
{
  sub_10016BB44(a1);

  operator delete();
}

int *sub_10016BE60(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 851;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 851;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_10016C0C8(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020A1C0;
  sub_10016C124(a1 + 3, a2);
  return a1;
}

double sub_10016C124(void *a1, uint64_t a2)
{
  v3 = sub_10019A650(a1);
  *v3 = off_1002295E0;
  v3[3] = off_1002296D0;
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  v3[4] = off_100229708;
  v3[5] = v4;
  v3[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = v3[5];
  }

  v3[7] = v4 + 8;
  result = 0.0;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 6) = 0u;
  return result;
}

uint64_t sub_10016C1D4(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 4 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_10016C2C0(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v7 & 0x1F) << 7);
  }

  v9 = sub_100026898(v8, a2);
  v10 = *(a2 + 112);
  v9[15] = *(a2 + 120);
  v9 += 15;
  *(v9 - 2) = v10;
  *(a2 + 120) = 0;
  *(*v9 + 16) = v9;
  v11 = a1[4];
  v12 = a1[5] + 1;
  a1[5] = v12;
  v13 = v11 + v12;
  v14 = a1[1];
  v15 = (v14 + 8 * (v13 >> 5));
  v16 = *v15 + ((v13 & 0x1F) << 7);
  if (a1[2] == v14)
  {
    v16 = 0;
  }

  if (v16 == *v15)
  {
    v16 = *(v15 - 1) + 4096;
  }

  return v16 - 128;
}

void sub_10016C2C0(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x20;
  v3 = v1 - 32;
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
    sub_100046D30(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10006BA24(a1, &v9);
}

void sub_10016C448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10016C494(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100229998;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10016C544(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016C55C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100229BB8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10016C60C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016C624(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100229DD8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10016C6D4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016C6EC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100229FF8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10016C79C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_10016C7B4(char **a1, char *a2)
{
  if (a2 >> 59)
  {
    sub_100026DEC("get_next_capacity, allocator's max size reached");
  }

  v4 = operator new(16 * a2);
  v5 = &(*a1)[16 * a1[1]];

  sub_1001A3CF0(a1, v4, a2, v5, 0, 0);
}

uint64_t sub_10016C820(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022A218;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10016C8D0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016C8E8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022A438;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10016C998(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_10016C9B0(uint64_t ***a1)
{
  v1 = **a1;
  v2 = *v1;
  if (fstatfs(*(*v1 + 8), &v15) < 0)
  {
    *&v16 = "FileLocal::shared_state_t::init_unmap_zeros()::(anonymous class)::operator()() const";
    *(&v16 + 1) = 76;
    v17 = 16;
    sub_10016CC00(&v12, &v16);
    sub_1000026BC(v14, "fstatfs failed with err code ", 29);
    __error();
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10016CE98(&v12);
    std::ios::~ios();
    v7 = *__error();
    v8 = std::generic_category();
    v9 = *(v2 + 96);
    *(v2 + 80) = v7;
    *(v2 + 88) = v8;
    if (v9 == 1)
    {
      *(v2 + 96) = 0;
    }

    v10 = *__error();
    if (*(v2 + 144) == 1)
    {
      sub_10004DE34(v2 + 104);
      *(v2 + 104) = v10;
      *(v2 + 112) = v8;
      *(v2 + 144) = 0;
    }

    else
    {
      *(v2 + 104) = v10;
      *(v2 + 112) = v8;
    }
  }

  else
  {
    f_bsize = v15.f_bsize;
    if ((*(v2 + 96) & 1) == 0)
    {
      *(v2 + 96) = 1;
    }

    *(v2 + 80) = f_bsize;
    if (f_bsize)
    {
      v4 = malloc_type_valloc(f_bsize, 0x8B7C732DuLL);
      if (!v4)
      {
        exception = __cxa_allocate_exception(8uLL);
        v6 = std::bad_alloc::bad_alloc(exception);
      }
    }

    else
    {
      v4 = 0;
    }

    *&v16 = off_10022CF38;
    v18 = &v16;
    v12 = v4;
    sub_1000DF1F8(v13, &v16);
    sub_1000298F0(&v16);
    sub_10016CD6C(v2 + 104, &v12);
    sub_10002986C(&v12, 0);
    sub_1000298F0(v13);
    v11 = *(v2 + 80);
    if (v11 >= 1)
    {
      bzero(*(v2 + 104), v11);
    }
  }
}

void sub_10016CBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  sub_10002986C(va, 0);
  sub_1000298F0(va1);
  _Unwind_Resume(a1);
}

void *sub_10016CC00(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016CDD0(a1, a2);
  *a1 = off_10022CD20;
  a1[45] = &off_10022CE20;
  a1[46] = &off_10022CE48;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022CD20;
  a1[45] = off_10022CDA8;
  a1[46] = off_10022CDD0;
  return a1;
}

void sub_10016CD04(_Unwind_Exception *a1)
{
  sub_10016CE98(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10016CD28(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016CE98(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10016CD6C(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 40) == 1)
  {
    sub_10016D70C(a1, a2);
  }

  else
  {
    sub_10004DE34(a1);
    v4 = *a2;
    *a2 = 0;
    *a1 = v4;
    sub_1000DF1F8(a1 + 8, (a2 + 1));
    *(a1 + 40) = 1;
  }

  return a1;
}

uint64_t sub_10016CDD0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022CEB8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10016CE80(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016CE98(uint64_t a1)
{
  *a1 = &off_10022CEB8;
  sub_10016D2D8(a1);
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

void sub_10016D004(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016CE98(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016D06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10016D0A8(_BYTE *a1, int a2)
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

uint64_t sub_10016D114(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016CE98(v1);

  return std::ios::~ios();
}

void sub_10016D160(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016CE98(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016D1C4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016CE98(v1);

  return std::ios::~ios();
}

void sub_10016D224(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016CE98(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10016D2A0(uint64_t a1)
{
  sub_10016CE98(a1);

  operator delete();
}

uint64_t sub_10016D2D8(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_10016D44C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10016D424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10016D44C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 420;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 420;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10016D6C0(uint64_t a1, uint64_t a2)
{
  if (sub_100009720(a2, &off_10022CF98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10016D70C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  sub_10002986C(a1, v4);
  sub_10016D750((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t sub_10016D750(uint64_t a1, uint64_t a2)
{
  sub_10016D7D4(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10016D7D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_10016D858(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022A658;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10016D908(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016D920(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022A878;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10016D9D0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016D9E8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022AA98;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10016DA98(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016DAB0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022ACB8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10016DB60(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016DB78(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022AED8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10016DC28(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016DC40(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022B0F8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10016DCF0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016DD08(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022B318;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10016DDB8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016DDD0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022B538;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10016DE80(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016DE98(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022B758;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10016DF48(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016DF60(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022B978;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10016E010(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016E028(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022BB98;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10016E0D8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016E0F0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022BDB8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10016E1A0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016E1B8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022BFD8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10016E268(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016E280(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022C1F8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10016E330(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016E348(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022C418;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10016E3F8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016E410(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022C638;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10016E4C0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_10016E4D8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  sub_100026638(&v5, v4);
  v7 += *v3;
  if (v8 == 1)
  {
    v8 = 0;
  }

  sub_100026898(a2, &v5);
  *(a2 + 112) = v4 + 120;
  if (v6)
  {
    sub_10000367C(v6);
  }
}

void sub_10016E55C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016E574(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a3 + 8);
  v9 = *(a3 + 16);
  v10 = *a4;
  v11 = *a5;
  v25 = *a2;
  v26 = v6;
  v27 = v7;
  v28 = v10;
  if (v9 == v7)
  {
    v12 = 0;
  }

  else
  {
    v12 = ((v9 - *v8) >> 7) + 4 * (v8 - v6) - ((v7 - *v6) >> 7);
  }

  v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 3);
  if (v13 >= v12)
  {
    v13 = v12;
  }

  if (v13)
  {
    v14 = v13 + ((v7 - *v6) >> 7);
    if (v14 < 1)
    {
      v15 = *&v6[-8 * ((31 - v14) >> 5)] + ((~(31 - v14) & 0x1F) << 7);
    }

    else
    {
      v15 = *&v6[(v14 >> 2) & 0x3FFFFFFFFFFFFFF8] + ((v14 & 0x1F) << 7);
    }

    v16 = 24 * v13 - 24;
    do
    {
      v17 = v16;
      sub_10016E4D8(&v25, v29);
      sub_100026898(&v20, v29);
      v23 = v31;
      v24 = v10;
      v18 = v10;
      if (v30)
      {
        sub_10000367C(v30);
        v18 = v24;
      }

      v19 = sub_10014FEB0(a1, &v20, v18);
      if (v19 != v22)
      {
        sub_100150200(a1, &v20, v19, v18);
      }

      if (v21)
      {
        sub_10000367C(v21);
      }

      v7 += 128;
      v27 = v7;
      if (v7 - *v6 == 4096)
      {
        v26 = v6 + 8;
        v7 = *(v6 + 1);
        v27 = v7;
        v6 += 8;
      }

      v10 += 24;
      v28 = v10;
      v16 = v17 - 24;
    }

    while (v7 != v15 || v17);
  }
}

void sub_10016E730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31)
{
  if (a31)
  {
    sub_10000367C(a31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10016E7EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void *sub_10016E8C0(uint64_t a1, void **a2, const void **a3, size_t *a4)
{
  v4 = *a3;
  memcpy(*a2, *a3, *a4);
  return v4;
}

uint64_t sub_10016E8FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10016E948(uint64_t a1, uint64_t a2)
{
  *(a1 + 80) = a2;
  if (*(a1 + 72) != *(a1 + 48))
  {
    do
    {
      sub_10016E4D8(a1 + 56, &v9);
      v3 = v11;
      if (v10)
      {
        sub_10000367C(v10);
      }

      if ((*(*v3 + 4) & 1) == 0)
      {
        *&v7 = "crypto::details::unset_futures_errors_reporter<std::ranges::transform_view<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t, FileLocal::promise_io_t *, FileLocal::promise_io_t &, FileLocal::promise_io_t **, long>>>, (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/backends/file.cpp:755:24)>::__iterator<false>>::report_errors(int) [It = std::ranges::transform_view<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t, FileLocal::promise_io_t *, FileLocal::promise_io_t &, FileLocal::promise_io_t **, long>>>, (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/backends/file.cpp:755:24)>::__iterator<false>]";
        *(&v7 + 1) = 587;
        v8 = 16;
        sub_10016EAA8(&v9, &v7);
        sub_1000026BC(v12, "diskimageuio: report err ", 25);
        std::ostream::operator<<();
        std::ostream::~ostream();
        sub_10016ECDC(&v9);
        std::ios::~ios();
        v4 = *v3;
        *v4 = *(a1 + 80);
        *(v4 + 4) = 1;
        sub_10002967C(v3);
      }

      v5 = *(a1 + 64);
      v6 = *(a1 + 72) + 128;
      *(a1 + 72) = v6;
      if (v6 - *v5 == 4096)
      {
        *(a1 + 64) = v5 + 1;
        v6 = v5[1];
        *(a1 + 72) = v6;
      }
    }

    while (v6 != *(a1 + 48));
  }
}

void sub_10016EA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10016EBD0(va);
  _Unwind_Resume(a1);
}

void *sub_10016EAA8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016EC14(a1, a2);
  *a1 = off_10022D0C0;
  a1[45] = &off_10022D1C0;
  a1[46] = &off_10022D1E8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022D0C0;
  a1[45] = off_10022D148;
  a1[46] = off_10022D170;
  return a1;
}

void sub_10016EBAC(_Unwind_Exception *a1)
{
  sub_10016ECDC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10016EBD0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016ECDC(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10016EC14(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022D258;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10016ECC4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016ECDC(uint64_t a1)
{
  *a1 = &off_10022D258;
  sub_10016F11C(a1);
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

void sub_10016EE48(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016ECDC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016EEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10016EEEC(_BYTE *a1, int a2)
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

uint64_t sub_10016EF58(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016ECDC(v1);

  return std::ios::~ios();
}

void sub_10016EFA4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016ECDC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016F008(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016ECDC(v1);

  return std::ios::~ios();
}

void sub_10016F068(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016ECDC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10016F0E4(uint64_t a1)
{
  sub_10016ECDC(a1);

  operator delete();
}

uint64_t sub_10016F11C(uint64_t a1)
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
        sub_100008510(a1 + 104, __p);
        sub_10016F290((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10016F268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10016F290(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 60;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 60;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10016F474(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022C858;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10016F524(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016F53C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022CA78;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10016F5EC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016F604(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022CC98;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_10016F6B4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_10016F6CC(void *__dst, __int128 *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000093B4(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v10 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v10;
  }

  v12 = *a4;
  v11 = a4[1];
  __dst[3] = a3;
  __dst[4] = v12;
  __dst[5] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = *(a2 + 1);
  }

  __dst[6] = sub_10019E174(v14, v15);
  __dst[7] = v16;
  __dst[8] = a5;
  return __dst;
}

void sub_10016F778(_Unwind_Exception *a1)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    sub_10000367C(v3);
  }

  sub_1001A3928(v1);
  _Unwind_Resume(a1);
}

void sub_10016F798(uint64_t a1, char *a2, uint64_t a3, uint8_t **a4)
{
  if (a2[23] >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *&v6 = AAS3DownloadStreamOpen(v5, 0, 0, 0);
  sub_100139D08(&v9, &v6);
  sub_100139DE8(&v8, &v9);
  sub_100139E1C(&v8, *a4, 0x20uLL);
  sub_100139D3C(&v9, &v8, 0xFFFFFFFFFFFFFFFFLL, 0x4000000000000000uLL, 0, &v7);
  sub_100156DD4();
}

void sub_10016F880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, AAByteStream);
  va_copy(va2, va1);
  v8 = va_arg(va2, AEAContext);
  sub_100139D0C(va);
  sub_100139DEC(va1);
  sub_100139D0C(va2);
  _Unwind_Resume(a1);
}

void sub_10016F8B8(void *a1, char **a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10019A650(a1);
  *v7 = off_10022D2D8;
  *(v7 + 3) = 0u;
  *(v7 + 5) = 0u;
  v9 = *a2;
  v10 = *(a4 + 8);
  v11[0] = *a4;
  v11[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10016F798(a1, v9, v8, v11);
}

void sub_10016F9B0(_Unwind_Exception *exception_object)
{
  v3 = v1[6];
  if (v3)
  {
    sub_10000367C(v3);
  }

  v4 = v1[4];
  if (v4)
  {
    sub_10000367C(v4);
  }

  v5 = v1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016FA28(void *a1)
{
  sub_10016FAEC(a1);

  operator delete();
}

void *sub_10016FAEC(void *a1)
{
  *a1 = off_10022D2D8;
  v2 = a1[6];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    sub_10000367C(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *sub_10016FBD4(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10021B178;
  sub_10016FC30(a1 + 3, a2);
  return a1;
}

void *sub_10016FC30(void *a1, void *a2)
{
  v4 = sub_10019A650(a1);
  *v4 = off_10022D2D8;
  *(v4 + 3) = 0u;
  *(v4 + 5) = 0u;
  v6 = a2[3];
  v5 = a2[4];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v7 = a1[4];
    a1[3] = v6;
    a1[4] = v5;
    if (v7)
    {
      sub_10000367C(v7);
    }
  }

  else
  {
    a1[3] = v6;
    a1[4] = 0;
  }

  v9 = a2[5];
  v8 = a2[6];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a1[6];
  a1[5] = v9;
  a1[6] = v8;
  if (v10)
  {
    sub_10000367C(v10);
  }

  return a1;
}

void *sub_10016FD60(void *a1, __int128 *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10022D3C0;
  sub_10016F6CC(a1 + 3, a2, *a3, a4, *a5);
  return a1;
}

void sub_10016FDE4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10022D3C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10016FE44(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_10000367C(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_10016FE98(void *a1@<X0>, char a2@<W1>, const void **a3@<X8>)
{
  v5 = a1;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v14 = v5;
  v6 = [v5 activeNode];
  if (v6)
  {
    if ([v6 isCache])
    {
      v7 = 1;
    }

    else
    {
      v8 = [v6 parent];
      if (v8)
      {
        v7 = 3;
      }

      else
      {
        v7 = 0;
      }
    }

    if (*a3 != a3[1] || (a2 & 1) != 0 || !v7 || v7 == 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 filePath];
        [objc_claimAutoreleasedReturnValue() path];
        v15 = [objc_claimAutoreleasedReturnValue() UTF8String];
        sub_100089184(&v16, &v15);
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_1000093B4(&__dst, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
        }

        else
        {
          __dst = v16;
        }

        operator new();
      }

      v9 = v6;
      v10 = [v9 pluginName];
      sub_100003410(&__dst, [v10 UTF8String]);

      [v9 pluginParams];
      operator new();
    }

    exception = __cxa_allocate_exception(0x40uLL);
    error_code = make_error_code(150);
    *exception = &off_100233158;
    exception[1] = error_code;
    exception[2] = v13;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Stack with cache as top image cannot be opened for writing.";
  }
}

void sub_10017033C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  sub_100051F10(&a11);

  _Unwind_Resume(a1);
}

void sub_100170484(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = [[NSFileHandle alloc] initWithFileDescriptor:a1 closeOnDealloc:0];
  v40 = 0;
  v41 = 0;
  v8 = [DiskImageGraph loadPlistDictFromFileHandle:v7 dict:&v41 error:&v40];
  v9 = v41;
  v10 = v40;
  v11 = v10;
  if ((v8 & 1) == 0)
  {
    v12 = [v10 domain];
    if ([v12 isEqualToString:@"com.apple.DiskImages2.ErrorDomain"])
    {
      v13 = [v11 code] == 167;

      if (v13)
      {
        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        goto LABEL_12;
      }
    }

    else
    {
    }

    *&v38 = "create_stack_vector_from_single_fd(int, const std::filesystem::path &, BOOL)";
    *(&v38 + 1) = 34;
    v39 = 16;
    sub_10008B80C(buf, &v38);
    std::ostream::operator<<();
    sub_10008B934(buf);
    exception = __cxa_allocate_exception(0x40uLL);
    v22 = [v11 code];
    if (v22 >= 0)
    {
      LODWORD(v23) = v22;
    }

    else
    {
      v23 = -v22;
    }

    v21 = std::generic_category();
    v20 = v23;
    v19 = "Failed to read file for pstack parsing";
LABEL_14:
    *exception = &off_100233158;
    exception[1] = v20;
    exception[2] = v21;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = v19;
  }

  if (*(a2 + 23) < 0)
  {
    if (!a2[1])
    {
LABEL_13:
      exception = __cxa_allocate_exception(0x40uLL);
      v19 = "Cannot initialize pstack disk image without path.";
      v20 = 22;
      v21 = std::generic_category();
      goto LABEL_14;
    }

    a2 = *a2;
  }

  else if (!*(a2 + 23))
  {
    goto LABEL_13;
  }

  v14 = [NSString stringWithUTF8String:a2];
  v15 = [NSURL fileURLWithPath:v14];

  v37 = v11;
  v16 = [[SerializedDiskImageGraph alloc] initWithGraphDB:v9 pstackURL:v15 error:&v37];
  v17 = v37;

  if (!v16)
  {
    v24 = *__error();
    v25 = sub_1000E044C();
    if (v25)
    {
      *&v38 = 0;
      v27 = sub_1000E03D8(v25, v26);
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
      v29 = [v17 description];
      if (v28)
      {
        v30 = 3;
      }

      else
      {
        v30 = 2;
      }

      *buf = 68158210;
      *&buf[4] = 127;
      v43 = 2080;
      v44 = "std::vector<diskimage_uio::stack_image_node_ptr_t> create_stack_vector_from_single_fd(int, const std::filesystem::path &, BOOL)";
      v45 = 2112;
      v46 = v29;
      v31 = _os_log_send_and_compose_impl(v30, &v38, 0, 0, &_mh_execute_header, v27, 16, "%.*s: Failed to create graph from plist: %@.", buf, 28);

      if (v31)
      {
        fprintf(__stderrp, "%s\n", v31);
        free(v31);
      }
    }

    else
    {
      v32 = sub_1000E03D8(v25, v26);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = [v17 description];
        *buf = 0x7F04100302;
        v43 = 2080;
        v44 = "std::vector<diskimage_uio::stack_image_node_ptr_t> create_stack_vector_from_single_fd(int, const std::filesystem::path &, BOOL)";
        v45 = 2112;
        v46 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%.*s: Failed to create graph from plist: %@.", buf, 0x1Cu);
      }
    }

    *__error() = v24;
    v34 = __cxa_allocate_exception(0x40uLL);
    error_code = make_error_code(161);
    *v34 = &off_100233158;
    v34[1] = error_code;
    v34[2] = v36;
    *(v34 + 24) = 0;
    *(v34 + 48) = 0;
    v34[7] = "Failed to create graph from plist.";
  }

  sub_10016FE98(v16, a3, a4);

  v11 = v17;
LABEL_12:
}

void sub_100170924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  __cxa_free_exception(v19);

  _Unwind_Resume(a1);
}

uint64_t *sub_100170A44(uint64_t *a1)
{
  io_rings_unsubscribe_dest_object(*a1, *(a1 + 2));
  io_rings_release(*a1);
  return a1;
}

void sub_100170A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = io_rings_get_max_version(0, 0);
  v7[1] = 48;
  v8 = 0;
  v9 = sub_1001733B4;
  v10 = 0;
  v11 = a3;
  v12 = a4;
  v6 = 0;
  io_rings_setup(256, v7, &v6);
}

uint64_t sub_100170CA0(uint64_t a1)
{
  io_rings_suspend(*(a1 + 48));
  io_rings_cancel(*(a1 + 48));
  std::mutex::~mutex((a1 + 136));
  std::condition_variable::~condition_variable((a1 + 88));
  sub_100170A44((a1 + 56));
  sub_100173EC0((a1 + 8), 0);
  sub_100175F50(a1 + 16);
  return a1;
}

double sub_100170D0C(uint64_t a1)
{
  v1 = atomic_load((a1 + 76));
  v2 = atomic_load((a1 + 72));
  if (v2 - v1 < *(*(a1 + 8) + 8))
  {
    v3 = v2;
    while (1)
    {
      atomic_compare_exchange_strong((a1 + 72), &v3, v2 + 1);
      if (v3 == v2)
      {
        break;
      }

      v4 = atomic_load((a1 + 76));
      v5 = v3 - v4;
      v2 = v3;
      if (v5 >= *(*(a1 + 8) + 8))
      {
        return result;
      }
    }

    return io_rings_sqe_allocate(*(a1 + 48));
  }

  return result;
}

void sub_100170D78(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  cqe = io_rings_get_cqe(*(a1 + 48));
  if ((v5 & 0x100000000) != 0)
  {
    v7 = cqe;
    v8 = v5;
    add = atomic_fetch_add((a1 + 76), 1u);
    if (atomic_load((a1 + 80)))
    {
      v11 = atomic_load((a1 + 72));
      if (add + 1 == v11)
      {
        std::mutex::lock((a1 + 136));
        std::condition_variable::notify_all((a1 + 88));
        std::mutex::unlock((a1 + 136));
      }
    }

    *a2 = v7;
    *(a2 + 8) = v8;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v6;
}

void sub_100170E24(void *a1, uint64_t a2, uint64_t a3)
{
  v5[0] = off_10022DE70;
  v5[1] = a1;
  v5[3] = v5;
  sub_100051420(a1, a2, a3, v5);
  sub_10006A664(v5);
  a1[35] = sub_10017101C(a1);
  v4 = *(*(sub_100051424(a1) + 24) - 24);
  a1[36] = v4;
  a1[37] = (*(*v4 + 24))(v4);
  sub_100170A80((a1 + 38), *(a1[36] + 16), sub_1001710A4, a1);
}

void sub_100170FC0(_Unwind_Exception *a1)
{
  sub_100069604((v1 + 576));
  std::mutex::~mutex((v1 + 512));
  sub_100157D44((v1 + 504));
  sub_100170CA0(v1 + 304);
  sub_10006A664(v1 + 248);
  sub_10006A538(v1 + 120);
  _Unwind_Resume(a1);
}

uint64_t sub_10017101C(uint64_t a1)
{
  v1 = sub_100051424(a1);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v1 + 24) - *(v1 + 16)) >> 4) >= 2 && (v2 = *(v1 + 24), *(v2 - 96) == 2) && (*(**(v2 - 88) + 40))(*(v2 - 88)))
  {
    return *(v2 - 88);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001710B0(void *a1, unsigned __int8 *a2)
{
  sub_100051430(a1, v8);
  if (v8[1])
  {
    v4 = sub_1000B39EC(a1, v8, a2);
    if (*a2 - 1 > 1)
    {
      v5 = io_rings_return_status(a1[7], a2, v4, 0);
    }

    else
    {
      v5 = sub_100171174(a1, a2, v8, v4);
    }
  }

  else
  {
    v5 = io_rings_return_status(a1[7], a2, 0xFFFFFFF4, 0);
  }

  v6 = v5;
  sub_10006B6C8(v8);
  return v6;
}

void sub_100171160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10006B6C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100171174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = *(*(*(a3 + 8) + 24) - 16);
  v10 = *(v7 + 16);
  v9 = v7 + 16;
  v8 = v10;
  if (v10 != *(*(*(*(a3 + 8) + 24) - 16) + 24))
  {
    if ((a4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1001755B0(v9, v8);
  }

  v11 = *(a1 + 56);

  return io_rings_return_status(v11, a2, v4, 0);
}

void sub_1001718B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    sub_10000367C(a23);
  }

  v24 = *(v23 + 48);
  if (v24)
  {
    sub_10000367C(v24);
  }

  JUMPOUT(0x1001718E4);
}

uint64_t sub_1001718F4(uint64_t a1, unsigned __int8 *a2)
{
  if (sub_1000B3768(a2))
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_1001719DC;
    v6[3] = &unk_10022D420;
    v6[4] = a1;
    v6[5] = a2;
    sub_100157EBC((a1 + 624), v6);
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = sub_100171B70;
    v5[3] = &unk_10022D440;
    v5[4] = a1;
    v5[5] = a2;
    sub_100157E0C((a1 + 624), v5);
  }

  return 0;
}

void sub_1001719DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = atomic_load((v2 + 632));
  if (v3 == 1)
  {
    v4 = *(a1 + 40);
    v5 = *(v2 + 56);

    io_rings_return_status(v5, v4, 0xFFFFFFA7, 0);
  }

  else
  {
    sub_100171AA8(v2 + 304);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_100171B5C;
    v7[3] = &unk_10022D400;
    v6 = *(a1 + 40);
    v7[4] = v2;
    v7[5] = v6;
    sub_100157E0C((v2 + 624), v7);
  }
}

void sub_100171AA8(uint64_t a1)
{
  v1 = (a1 + 72);
  v2 = atomic_load((a1 + 72));
  v3 = (a1 + 76);
  v4 = atomic_load((a1 + 76));
  if (v2 != v4)
  {
    atomic_fetch_add((a1 + 80), 1uLL);
    v8.__m_ = (a1 + 136);
    v8.__owns_ = 1;
    std::mutex::lock((a1 + 136));
    v6 = atomic_load(v1);
    for (i = atomic_load(v3); v6 != i; i = atomic_load((a1 + 76)))
    {
      std::condition_variable::wait((a1 + 88), &v8);
      v6 = atomic_load((a1 + 72));
    }

    if (v8.__owns_)
    {
      std::mutex::unlock(v8.__m_);
    }

    atomic_fetch_add((a1 + 80), 0xFFFFFFFFFFFFFFFFLL);
  }
}

uint64_t sub_100171B5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  __dmb(9u);
  return sub_1001710B0(v1, *(a1 + 40));
}

uint64_t sub_100171B70(uint64_t a1)
{
  v1 = *(a1 + 32);
  __dmb(9u);
  return sub_1001710B0(v1, *(a1 + 40));
}

uint64_t sub_100171B84(uint64_t result)
{
  v1 = 2;
  atomic_compare_exchange_strong((result + 632), &v1, 0);
  if (v1 == 2)
  {
    v2 = result;
    sub_100157ECC((result + 624));
    io_rings_suspend(*(v2 + 352));
    *&v3 = "di_hybrid_subscriber_t::suspend()";
    *(&v3 + 1) = 31;
    v4 = 0;
    sub_100171C58(v5, &v3);
    sub_1000026BC(v6, "Plugin's ring suspended, ret code ", 34);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10017420C(v5);
    return std::ios::~ios();
  }

  return result;
}

void sub_100171C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100171D80(va);
  _Unwind_Resume(a1);
}

void *sub_100171C58(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10017618C(a1, a2);
  *a1 = off_10022D728;
  a1[45] = &off_10022D828;
  a1[46] = &off_10022D850;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022D728;
  a1[45] = off_10022D7B0;
  a1[46] = off_10022D7D8;
  return a1;
}

void sub_100171D5C(_Unwind_Exception *a1)
{
  sub_10017420C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100171D80(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017420C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100171DC4(uint64_t result)
{
  v1 = 0;
  atomic_compare_exchange_strong((result + 632), &v1, 2u);
  if (!v1)
  {
    v2 = result;
    sub_100157ED4((result + 624));
    io_rings_resume(*(v2 + 352));
    *&v3 = "di_hybrid_subscriber_t::resume()";
    *(&v3 + 1) = 30;
    v4 = 0;
    sub_100171E9C(v5, &v3);
    sub_1000026BC(v6, "Plugin's ring resumed, ret code ", 32);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_1001749A4(v5);
    return std::ios::~ios();
  }

  return result;
}

void sub_100171E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100171FC4(va);
  _Unwind_Resume(a1);
}

void *sub_100171E9C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100176254(a1, a2);
  *a1 = off_10022D948;
  a1[45] = &off_10022DA48;
  a1[46] = &off_10022DA70;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022D948;
  a1[45] = off_10022D9D0;
  a1[46] = off_10022D9F8;
  return a1;
}

void sub_100171FA0(_Unwind_Exception *a1)
{
  sub_1001749A4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100171FC4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001749A4(a1);
  std::ios::~ios();
  return a1;
}

void sub_100172008(void *a1, unsigned int a2, unsigned int a3)
{
  if (a2)
  {
    sub_100172108(a1, a2);
  }
}

void sub_100172244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10017225C(uint64_t a1, uint64_t a2)
{
  sub_100174FE4((a1 + 128), *(a1 + 136), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 4);
  result = sub_100175390((a1 + 104), *(a1 + 112), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 4);
  *(a1 + 48) += *(a2 + 48);
  return result;
}

void sub_1001722C0(uint64_t *a1@<X0>, unsigned int a2@<W1>, unint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
    *a6 = v8;
    a6[1] = v7;
    a6[2] = a1[2];
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    return;
  }

  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v10 = a4;
  v11 = a2;
  v42 = a3 - 1;
  v43 = a4 * a5;
  do
  {
    v12 = *(v8 + 32) * v10;
    v13 = v12 / v11 * v11;
    v14 = a6[1];
    if (*a6 != v14)
    {
      v15 = *(v14 - 120) * a4 + *(v14 - 136) * v10;
      LODWORD(v16) = v12 - v15;
      v17 = v12 >= v15 && v15 + a3 > v13;
      if (v17 && (((*(v14 - 56) - *(v14 - 64)) >> 4) + ((*(v8 + 112) - *(v8 + 104)) >> 4) + 1) < 0x400)
      {
        goto LABEL_26;
      }

      v18 = (v14 - 168);
      v19 = (v42 + v15) / a3 * a3;
      if (v43 < v19)
      {
        LODWORD(v19) = v43;
      }

      sub_100172008(v18, v19 - v15, a4);
    }

    memset(v53, 0, sizeof(v53));
    *__p = 0u;
    v21 = *(v8 + 152);
    v20 = *(v8 + 160);
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    *&v54 = v21;
    *(&v54 + 1) = v20;
    v23 = *(v8 + 88);
    v22 = *(v8 + 96);
    v24 = *(v8 + 16);
    v45 = *v8;
    v46 = v24;
    v26 = *(v8 + 48);
    v25 = *(v8 + 64);
    v27 = *(v8 + 32);
    v50 = *(v8 + 80);
    v48 = v26;
    v49 = v25;
    v47 = v27;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    *&v51 = v23;
    *(&v51 + 1) = v22;
    LODWORD(v48) = 0;
    *&v47 = v13 / v10;
    v28 = a6[1];
    if (v28 >= a6[2])
    {
      v33 = sub_10007A7C0(a6, &v45);
      v34 = *(&v54 + 1);
      a6[1] = v33;
      if (v34)
      {
        sub_10000367C(v34);
      }
    }

    else
    {
      v29 = v46;
      *v28 = v45;
      *(v28 + 16) = v29;
      v30 = v47;
      v31 = v48;
      v32 = v49;
      *(v28 + 80) = v50;
      *(v28 + 48) = v31;
      *(v28 + 64) = v32;
      *(v28 + 32) = v30;
      *(v28 + 88) = v51;
      v51 = 0uLL;
      *(v28 + 104) = 0;
      *(v28 + 112) = 0;
      *(v28 + 120) = 0;
      *(v28 + 128) = 0;
      *(v28 + 104) = *__p;
      *(v28 + 120) = v53[0];
      __p[0] = 0;
      __p[1] = 0;
      v53[0] = 0;
      *(v28 + 136) = 0;
      *(v28 + 144) = 0;
      *(v28 + 128) = *&v53[1];
      *(v28 + 144) = v53[3];
      memset(&v53[1], 0, 24);
      *(v28 + 152) = v54;
      v54 = 0uLL;
      a6[1] = v28 + 168;
    }

    v55 = &v53[1];
    sub_10007182C(&v55);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (*(&v51 + 1))
    {
      sub_10000367C(*(&v51 + 1));
    }

    v16 = v12 % v11;
    v14 = a6[1];
LABEL_26:
    v35 = v14 - 168;
    sub_100172008((v14 - 168), v16, a4);
    sub_10017225C(v35, v8);
    v8 += 168;
  }

  while (v8 != v7);
  v36 = a6[1];
  v37 = (v36 - 168);
  v38 = *(v36 - 120) * a4 + *(v36 - 136) * v10;
  v39 = (v42 + v38) / a3 * a3;
  if (v43 < v39)
  {
    LODWORD(v39) = v43;
  }

  sub_100172008(v37, v39 - v38, a4);
  v40 = *a6;
  v41 = a6[1];
  while (v40 != v41)
  {
    if (*v40 == 2)
    {
      *(v40 + 24) = *(v40 + 104);
    }

    v40 += 168;
  }
}

void sub_1001725BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100071758(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001725EC(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = a1[4];
  v8 = a1[5];
  v9 = v8 + v7;
  if (v6 == v8 + v7)
  {
    sub_100178278(a1);
    v7 = a1[4];
    v8 = a1[5];
    v5 = a1[1];
    v9 = v7 + v8;
  }

  *(*(v5 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  a1[5] = v8 + 1;
  v10 = v7 + v8 + 1;
  v11 = a1[1];
  v12 = (v11 + 8 * (v10 >> 9));
  v13 = *v12 + 8 * (v10 & 0x1FF);
  if (a1[2] == v11)
  {
    v13 = 0;
  }

  if (v13 == *v12)
  {
    v13 = *(v12 - 1) + 4096;
  }

  return v13 - 8;
}

void sub_1001726AC(uint64_t a1)
{
  if (*(a1 + 616))
  {
    std::mutex::lock((a1 + 512));
    for (i = 0; *(a1 + 616); --i)
    {
      sub_100170D0C(a1 + 304);
      if (!v3)
      {
        break;
      }

      v4 = *(*(*(a1 + 584) + ((*(a1 + 608) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 608) & 0x1FFLL));
      v5 = *(v4 + 32);
      v6 = *(v4 + 48);
      v7 = *(v4 + 64);
      *(v3 + 80) = *(v4 + 80);
      *(v3 + 48) = v6;
      *(v3 + 64) = v7;
      *(v3 + 32) = v5;
      v8 = *(v4 + 16);
      *v3 = *v4;
      *(v3 + 16) = v8;
      *(v3 + 8) = *(a1 + 368);
      *(a1 + 608) = vaddq_s64(*(a1 + 608), xmmword_1001C7E60);
      sub_10006A604(a1 + 576, 1);
    }

    std::mutex::unlock((a1 + 512));
    if (i)
    {
      v9 = *(a1 + 352);

      io_rings_enter(v9, -i, 0);
    }
  }
}

uint64_t sub_1001727C0(uint64_t result)
{
  v1 = atomic_load((result + 632));
  if (v1 != 1)
  {
    v2 = result;
    if (atomic_exchange((result + 632), 1u) == 2)
    {
      sub_100157ECC((result + 624));
    }

    sub_100157ED4((v2 + 624));
    sub_100157EC4((v2 + 624), &stru_10022D480);
    if (io_rings_cancel(*(v2 + 352)) < 0)
    {
      goto LABEL_32;
    }

    std::mutex::lock((v2 + 512));
    v3 = *(v2 + 584);
    v4 = *(v2 + 592);
    if (v4 == v3)
    {
      v8 = (v2 + 616);
    }

    else
    {
      v5 = *(v2 + 608);
      v6 = &v3[v5 >> 9];
      v7 = (*v6 + 8 * (v5 & 0x1FF));
      v8 = (v2 + 616);
      v9 = *(v3 + (((*(v2 + 616) + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(v2 + 616) + v5) & 0x1FF);
      if (v7 != v9)
      {
        do
        {
          v10 = *v7;
          v21 = 0u;
          memset(v22, 0, sizeof(v22));
          memset(v20, 0, sizeof(v20));
          *(v10 + 80) = 0;
          *(v10 + 48) = 0u;
          *(v10 + 64) = 0u;
          *(v10 + 16) = 0u;
          *(v10 + 32) = 0u;
          *v10 = 0u;
          v11 = *(&v20[5] + 8);
          *(&v20[5] + 1) = 0;
          *&v20[6] = 0;
          v12 = *(v10 + 96);
          *(v10 + 88) = v11;
          if (v12)
          {
            sub_10000367C(v12);
          }

          v13 = *(v10 + 104);
          if (v13)
          {
            *(v10 + 112) = v13;
            operator delete(v13);
            *(v10 + 104) = 0;
            *(v10 + 112) = 0;
            *(v10 + 120) = 0;
          }

          *(v10 + 104) = *(&v20[6] + 8);
          *(v10 + 120) = *(&v20[7] + 1);
          memset(&v20[6] + 8, 0, 24);
          sub_1000B2A24((v10 + 128));
          *(v10 + 128) = v21;
          *(v10 + 144) = v22[0];
          v21 = 0uLL;
          memset(v22, 0, sizeof(v22));
          v14 = *(v10 + 160);
          *(v10 + 152) = *&v22[1];
          if (v14)
          {
            sub_10000367C(v14);
          }

          if (v22[2])
          {
            sub_10000367C(v22[2]);
          }

          *&v18 = &v21;
          sub_10007182C(&v18);
          if (*(&v20[6] + 1))
          {
            *&v20[7] = *(&v20[6] + 1);
            operator delete(*(&v20[6] + 1));
          }

          if (*&v20[6])
          {
            sub_10000367C(*&v20[6]);
          }

          if (++v7 - *v6 == 4096)
          {
            v15 = v6[1];
            ++v6;
            v7 = v15;
          }
        }

        while (v7 != v9);
        v3 = *(v2 + 584);
        v4 = *(v2 + 592);
        v8 = (v2 + 616);
      }
    }

    *v8 = 0;
    v16 = v4 - v3;
    if (v16 >= 3)
    {
      do
      {
        operator delete(*v3);
        v3 = (*(v2 + 584) + 8);
        *(v2 + 584) = v3;
        v16 = (*(v2 + 592) - v3) >> 3;
      }

      while (v16 > 2);
    }

    if (v16 == 1)
    {
      v17 = 256;
    }

    else
    {
      if (v16 != 2)
      {
LABEL_31:
        std::mutex::unlock((v2 + 512));
LABEL_32:
        *&v18 = "di_hybrid_subscriber_t::cancel()";
        *(&v18 + 1) = 30;
        v19 = 0;
        sub_100172AC8(v20, &v18);
        sub_1000026BC(v23, "Plugin's async ring cancelled, ret code ", 40);
        std::ostream::operator<<();
        std::ostream::~ostream();
        sub_100175970(v20);
        return std::ios::~ios();
      }

      v17 = 512;
    }

    *(v2 + 608) = v17;
    goto LABEL_31;
  }

  return result;
}

void sub_100172AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100172BF0(va);
  _Unwind_Resume(a1);
}

void *sub_100172AC8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10017844C(a1, a2);
  *a1 = off_10022DBC8;
  a1[45] = &off_10022DCC8;
  a1[46] = &off_10022DCF0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022DBC8;
  a1[45] = off_10022DC50;
  a1[46] = off_10022DC78;
  return a1;
}

void sub_100172BCC(_Unwind_Exception *a1)
{
  sub_100175970(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100172BF0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100175970(a1);
  std::ios::~ios();
  return a1;
}

void sub_100172C34(uint64_t a1)
{
  v2 = *(a1 + 280) != 0;
  sub_100170D78(a1 + 304, &v18);
  v3 = v19;
  if (v19)
  {
    v4 = v18;
    do
    {
      v5 = *(v4 + 152);
      v6 = *(v4 + 160);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = _NSConcreteStackBlock;
        v9 = 1174405120;
        v10 = sub_100172E30;
        v11 = &unk_10022D4A0;
        v12 = a1;
        v13 = v4;
        v14 = v4;
        v15 = v3;
        v16 = v5;
        v17 = v6;
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v8 = _NSConcreteStackBlock;
        v9 = 1174405120;
        v10 = sub_100172E30;
        v11 = &unk_10022D4A0;
        v12 = a1;
        v13 = v4;
        v14 = v4;
        v15 = v3;
        v16 = v5;
        v17 = 0;
      }

      if (*(a1 + 280) || *(v5 + 104) == 1)
      {
        sub_100157E0C((a1 + 504), &v8);
        v2 = 1;
      }

      else
      {
        v10(&v8);
      }

      if (v17)
      {
        sub_10000367C(v17);
      }

      if (v6)
      {
        sub_10000367C(v6);
      }

      sub_100170D78(a1 + 304, &v18);
      v4 = v18;
      v3 = v19;
    }

    while ((v19 & 1) != 0);
  }

  if (v2)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_1001733AC;
    v7[3] = &unk_10022D4D0;
    v7[4] = a1;
    sub_100157E0C((a1 + 504), v7);
  }

  else
  {
    sub_1001726AC(a1);
  }
}

void sub_100172E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    sub_10000367C(a24);
  }

  if (v24)
  {
    sub_10000367C(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_100172E30(uint64_t a1)
{
  v2 = sub_100172F40(*(a1 + 32), *(a1 + 40), *(a1 + 56));
  if (v2)
  {
    v3 = 0;
    atomic_compare_exchange_strong((*(a1 + 72) + 16), &v3, v2);
  }

  v4 = *(a1 + 40);
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  v5 = *(v4 + 96);
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  if (v5)
  {
    sub_10000367C(v5);
  }

  v6 = *(v4 + 104);
  if (v6)
  {
    *(v4 + 112) = v6;
    operator delete(v6);
  }

  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  sub_1000B2A24((v4 + 128));
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v7 = *(v4 + 160);
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  if (v7)
  {
    sub_10000367C(v7);
  }

  v10 = v8;
  sub_10007182C(&v10);
}

uint64_t sub_100172F40(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 48);
  if (a3 == v3)
  {
    v5 = *(a1 + 280);
    if (v5)
    {
      v33 = *(a2 + 32);
      v6 = *(a1 + 296);
      v7 = sub_10019E2E8();
      v8 = v7;
      v10 = *(a2 + 104);
      v9 = *(a2 + 112);
      v11 = v44;
      __p = v44;
      v43 = xmmword_1001C6CC0;
      v12 = (v9 - v10 - 16) >> 4;
      if (v9 == v10)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12 + 1;
      }

      if (v13 < 6)
      {
        if (v10 == v9)
        {
          v13 = 0;
        }

        else
        {
          v23 = v12 + 1;
          do
          {
            v24 = *v10;
            v25 = v7[1];
            if (v25)
            {
              atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
            }

            v26 = *(v10 + 1);
            *v11 = v24;
            v11[1] = v25;
            v11[2] = v26;
            v10 += 16;
            v11 += 3;
            --v23;
          }

          while (v23);
        }
      }

      else
      {
        if (v13 >= 0x555555555555556)
        {
          sub_100026DEC("get_next_capacity, allocator's max size reached");
        }

        v14 = operator new(24 * v13);
        v15 = v14;
        if (__p)
        {
          v31 = v14;
          v32 = v5;
          v16 = v43;
          if (v43)
          {
            v17 = (__p + 8);
            do
            {
              if (*v17)
              {
                sub_10000367C(*v17);
              }

              v17 += 3;
              --v16;
            }

            while (v16);
          }

          *&v43 = 0;
          v15 = v31;
          v5 = v32;
          if (v44 != __p)
          {
            operator delete(__p);
          }
        }

        *(&v43 + 1) = v13;
        __p = v15;
        *&v43 = 0;
        if (v10 == v9)
        {
          v22 = 0;
          v18 = v15;
        }

        else
        {
          v18 = v15;
          do
          {
            v19 = *v10;
            v20 = v8[1];
            if (v20)
            {
              atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
            }

            v21 = *(v10 + 1);
            *v18 = v19;
            *(v18 + 1) = v20;
            *(v18 + 2) = v21;
            v10 += 16;
            v18 += 24;
          }

          while (v10 != v9);
          v22 = v43;
        }

        v13 = v22 - 0x5555555555555555 * ((v18 - v15) >> 3);
      }

      *&v43 = v13;
      v45 = &v47;
      v46 = xmmword_1001C6CC0;
      sub_100027018(&v45, v13);
      v37 = __p;
      v34 = __p + 24 * v13;
      v41 = v45;
      v40 = &v45[8 * v46];
      sub_100024588(v48, &v37, &v34, &v41, &v40, v6 * v33, v6 * v3, 1);
      v27 = (*(*v5 + 144))(v5);
      sub_1000246F4(v48, &v37);
      sub_100024448(v48, &v34);
      v28 = sub_1000037F0(v27);
      if (v36)
      {
        sub_10000367C(v36);
      }

      if (v35)
      {
        sub_10000367C(v35);
      }

      if (v39)
      {
        sub_10000367C(v39);
      }

      if (v38)
      {
        sub_10000367C(v38);
      }

      if (v27)
      {
        (*(*v27 + 40))(v27);
      }

      if (v28 < 0)
      {
        v5 = v28;
      }

      else
      {
        v5 = 0;
      }

      sub_1000036E8(&__p);
    }

    v29 = *(a2 + 88);
    if (v29)
    {
      sub_10014F738(v29 + 248);
    }
  }

  else if ((a3 & 0x80000000) != 0)
  {
    return a3;
  }

  else
  {
    return 4294967291;
  }

  return v5;
}

void sub_1001732D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  sub_100002440(&a15);
  sub_100002440(&a43);
  if (v43)
  {
    (*(*v43 + 40))(v43);
  }

  sub_1000036E8(&STACK[0x200]);
  _Unwind_Resume(a1);
}

uint64_t sub_100173380(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 80);
  *(result + 72) = *(a2 + 72);
  *(result + 80) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10017339C(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    sub_10000367C(v1);
  }
}

uint64_t sub_1001733B4(uint64_t a1)
{
  io_rings_cq_get_overruns(a1);
  *&v3 = "di_plugin_cq_event_callback(io_uhandle_t, void *, enum io_rings_event_type_t, struct io_rings_event_type_data_t *)";
  *(&v3 + 1) = 27;
  v4 = 16;
  sub_100173474(v5, &v3);
  std::ostream::operator<<();
  sub_1000026BC(v6, " overrun events occurred in the plugin's ring!", 46);
  std::ostream::~ostream();
  sub_1001736A8(v5);
  std::ios::~ios();
  return io_rings_cq_clear_overruns(a1);
}

void sub_100173460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10017359C(va);
  _Unwind_Resume(a1);
}

void *sub_100173474(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001735E0(a1, a2);
  *a1 = off_10022D508;
  a1[45] = &off_10022D608;
  a1[46] = &off_10022D630;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022D508;
  a1[45] = off_10022D590;
  a1[46] = off_10022D5B8;
  return a1;
}

void sub_100173578(_Unwind_Exception *a1)
{
  sub_1001736A8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10017359C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001736A8(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1001735E0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022D6A0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E0464();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100002148((a1 + 96));
  return a1;
}

void sub_100173690(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001736A8(uint64_t a1)
{
  *a1 = &off_10022D6A0;
  sub_100173AE8(a1);
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

void sub_100173814(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001736A8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017387C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001738B8(_BYTE *a1, int a2)
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

uint64_t sub_100173924(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001736A8(v1);

  return std::ios::~ios();
}

void sub_100173970(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001736A8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001739D4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001736A8(v1);

  return std::ios::~ios();
}

void sub_100173A34(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001736A8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100173AB0(uint64_t a1)
{
  sub_1001736A8(a1);

  operator delete();
}

uint64_t sub_100173AE8(uint64_t a1)
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
        sub_100003368(v2, __p);
        sub_100173C5C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100173C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100173C5C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 57;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 57;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100173E40(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_100173EC0(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_100173EF0((result + 1), v3);
  }

  return result;
}

uint64_t sub_100173EF0(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10002870C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_100173F74(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017420C(v1);

  return std::ios::~ios();
}

uint64_t sub_100173FC0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017420C(v1);

  return std::ios::~ios();
}

void sub_100174020(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017420C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100174088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001740C4(_BYTE *a1, int a2)
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

void sub_100174130(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017420C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100174194(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017420C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017420C(uint64_t a1)
{
  *a1 = &off_10022D8C0;
  sub_100174378(a1);
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

uint64_t sub_100174378(uint64_t a1)
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
        sub_100003368(v2, __p);
        sub_100174528((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1001744C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001744F0(uint64_t a1)
{
  sub_10017420C(a1);

  operator delete();
}

int *sub_100174528(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 250;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 250;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10017470C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001749A4(v1);

  return std::ios::~ios();
}

uint64_t sub_100174758(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001749A4(v1);

  return std::ios::~ios();
}

void sub_1001747B8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001749A4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100174820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10017485C(_BYTE *a1, int a2)
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

void sub_1001748C8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001749A4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10017492C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001749A4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001749A4(uint64_t a1)
{
  *a1 = &off_10022DAE0;
  sub_100174B10(a1);
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

uint64_t sub_100174B10(uint64_t a1)
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
        sub_100003368(v2, __p);
        sub_100174CC0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100003410(__p, "");
        sub_100003514(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100174C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100174C88(uint64_t a1)
{
  sub_1001749A4(a1);

  operator delete();
}

int *sub_100174CC0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v20 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v26 = 259;
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
    v15 = sub_1000E03D8(v6, v7);
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
      v26 = 259;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sub_100174F0C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    operator delete[]();
  }

  __cxa_rethrow();
}

void sub_100174F4C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100174F84(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    operator delete[]();
  }

  return result;
}

uint64_t sub_100174FA4(uint64_t a1, uint64_t a2)
{
  if (sub_100009720(a2, &off_10022DBA0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

char *sub_100174FE4(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 4;
      if (v17 >= a5)
      {
        sub_1001751B0(a1, a2, a1[1], &a2[16 * a5]);
        v18 = (v7 + 16 * a5);
      }

      else
      {
        a1[1] = sub_100175214(a1, v16 + a3, a4, a1[1]);
        if (v17 < 1)
        {
          return v5;
        }

        sub_1001751B0(a1, v5, v10, &v5[16 * a5]);
        v18 = (v16 + v7);
      }

      sub_100175324(v30, v7, v18, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      sub_100036CAC();
    }

    v13 = &a2[-v11];
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v32 = a1;
    if (v15)
    {
      sub_10007C890(a1, v15);
    }

    v19 = 16 * (v13 >> 4);
    v31 = 0;
    v20 = 16 * a5;
    v21 = v19;
    v22 = (v19 + 16 * a5);
    do
    {
      *v21++ = *v7;
      *v7 = 0;
      *(v7 + 8) = 0;
      v7 += 16;
      v20 -= 16;
    }

    while (v20);
    memcpy(v22, v5, a1[1] - v5);
    v23 = *a1;
    v24 = &v22[a1[1] - v5];
    a1[1] = v5;
    v25 = v5 - v23;
    v26 = (v19 - (v5 - v23));
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    a1[1] = v24;
    v28 = a1[2];
    a1[2] = v31;
    v30[2] = v27;
    v31 = v28;
    v30[0] = v27;
    v30[1] = v27;
    sub_1000715F8(v30);
    return v19;
  }

  return v5;
}

void *sub_1001751B0(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8++ = *v9;
      *v9 = 0;
      *(v9 + 8) = 0;
      v9 += 16;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_1001752C0(&v11, a2, v7, v6);
}

_OWORD *sub_100175214(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = a4;
  v9 = a4;
  v8 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  if (a2 != a3)
  {
    do
    {
      *v4++ = *a2;
      *a2 = 0;
      *(a2 + 8) = 0;
      a2 += 16;
    }

    while (a2 != a3);
    v9 = v4;
  }

  v7 = 1;
  sub_100175288(v6);
  return v4;
}

uint64_t sub_100175288(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000B2B60(a1);
  }

  return a1;
}

void *sub_1001752C0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 1);
      v7 -= 2;
      *v7 = 0;
      v7[1] = 0;
      v9 = *(a4 - 8);
      *(a4 - 16) = v8;
      a4 -= 16;
      if (v9)
      {
        sub_10000367C(v9);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

__int128 *sub_100175324(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        sub_10000367C(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

char *sub_100175390(void *a1, char *__src, __int128 *a3, __int128 *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 <= (v9 - v10) >> 4)
  {
    v16 = (v10 - __src) >> 4;
    if (v16 >= a5)
    {
      v20 = &__src[16 * a5];
      v21 = &v10[-16 * a5];
      v22 = a1[1];
      while (v21 < v10)
      {
        v23 = *v21;
        v21 += 16;
        *v22++ = v23;
      }

      a1[1] = v22;
      if (v10 != v20)
      {
        memmove(&__src[16 * a5], __src, v10 - v20);
      }

      v24 = &v7[a5];
      v25 = __src;
      do
      {
        v26 = *v7++;
        *v25 = v26;
        v25 += 16;
      }

      while (v7 != v24);
    }

    else
    {
      v17 = (a3 + v10 - __src);
      v18 = a1[1];
      if (v17 == a4)
      {
        v19 = a1[1];
      }

      else
      {
        v36 = (a3 + v10 - __src);
        v19 = a1[1];
        do
        {
          v37 = *v36++;
          *v19++ = v37;
          ++v18;
        }

        while (v36 != a4);
      }

      a1[1] = v18;
      if (v16 >= 1)
      {
        v38 = &__src[16 * a5];
        v39 = &v18[-a5];
        v40 = v18;
        while (v39 < v10)
        {
          v41 = *v39;
          v39 += 16;
          *v40++ = v41;
        }

        a1[1] = v40;
        if (v19 != v38)
        {
          memmove(&__src[16 * a5], __src, v18 - v38);
        }

        if (v10 != __src)
        {
          v42 = __src;
          do
          {
            v43 = *v7++;
            *v42 = v43;
            v42 += 16;
          }

          while (v7 != v17);
        }
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + (&v10[-*a1] >> 4);
  if (v12 >> 60)
  {
    sub_100036CAC();
  }

  v13 = __src - v11;
  v14 = v9 - v11;
  if (v14 >> 3 > v12)
  {
    v12 = v14 >> 3;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF0)
  {
    v15 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    sub_10007A778(a1, v15);
  }

  v27 = 16 * (v13 >> 4);
  v28 = 16 * a5;
  v29 = v27;
  do
  {
    v30 = *v7++;
    *v29++ = v30;
    v28 -= 16;
  }

  while (v28);
  memcpy((v27 + 16 * a5), __src, a1[1] - __src);
  v31 = *a1;
  v32 = v27 + 16 * a5 + a1[1] - __src;
  a1[1] = __src;
  v33 = (__src - v31);
  v34 = (v27 - (__src - v31));
  memcpy(v34, v31, v33);
  v35 = *a1;
  *a1 = v34;
  a1[1] = v32;
  a1[2] = 0;
  if (v35)
  {
    operator delete(v35);
  }

  return v27;
}