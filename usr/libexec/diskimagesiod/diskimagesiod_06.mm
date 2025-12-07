uint64_t sub_1000908A0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100090B38(v1);

  return std::ios::~ios();
}

uint64_t sub_1000908EC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100090B38(v1);

  return std::ios::~ios();
}

void sub_10009094C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100090B38(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000909B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000909F0(_BYTE *a1, int a2)
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

void sub_100090A5C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100090B38(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100090AC0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100090B38(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100090B38(uint64_t a1)
{
  *a1 = &off_1002049E0;
  sub_100090CA4(a1);
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

uint64_t sub_100090CA4(uint64_t a1)
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
        sub_100090E54((a1 + 72), __p);
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

void sub_100090DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100090E1C(uint64_t a1)
{
  sub_100090B38(a1);

  operator delete();
}

int *sub_100090E54(uint64_t *a1, uint64_t *a2)
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
    v26 = 394;
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
      v26 = 394;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

DIR **sub_100091038(DIR **a1, int a2)
{
  v3 = fdopendir(a2);
  *a1 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v6 = sub_100001940(exception, "Failed opening folder for entries reading", 0x13u);
  }

  return a1;
}

void *sub_1000910A0(void *a1, uint64_t a2, char a3)
{
  a1[2] = a2;
  *a1 = off_100204A60;
  v5 = ((a2 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8;
  sub_1000911F4(a1 + 3, v5);
  v6 = a1[3];
  a1[8] = v6;
  a1[9] = v5;
  if ((a3 & 1) == 0 && v5)
  {
    bzero(v6, 8 * v5);
  }

  a1[1] = v6;
  return a1;
}

void *sub_100091124(void *a1)
{
  *a1 = off_100204A60;
  v2 = a1 + 4;
  sub_1000914B8(a1 + 3, 0);
  sub_100091644(v2);
  return a1;
}

void sub_10009117C(void *a1)
{
  *a1 = off_100204A60;
  v1 = a1 + 4;
  sub_1000914B8(a1 + 3, 0);
  sub_100091644(v1);

  operator delete();
}

uint64_t *sub_1000911F4(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[4] = 0;
  v3 = malloc_type_valloc(8 * a2, 0x100004000313F17uLL);
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_alloc::bad_alloc(exception);
  }

  v7[0] = off_100204AA8;
  v7[3] = v7;
  v8 = v3;
  sub_100091438(v9, v7);
  sub_100091318(a1, &v8);
  sub_1000914B8(&v8, 0);
  sub_100091644(v9);
  sub_100091644(v7);
  return a1;
}

void sub_1000912F8(_Unwind_Exception *a1)
{
  sub_1000914B8(v1, 0);
  sub_100091644((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t *sub_100091318(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  sub_1000914B8(a1, v4);
  sub_10009153C((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t sub_1000913EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100091438(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1000914B8(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_1000914E8((result + 1), v3);
  }

  return result;
}

uint64_t sub_1000914E8(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10001583C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_10009153C(uint64_t a1, uint64_t a2)
{
  sub_1000915C0(a1);
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

uint64_t sub_1000915C0(uint64_t a1)
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

uint64_t sub_100091644(uint64_t a1)
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

uint64_t sub_1000916C4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009195C(v1);

  return std::ios::~ios();
}

uint64_t sub_100091710(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009195C(v1);

  return std::ios::~ios();
}

void sub_100091770(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009195C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000917D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100091814(_BYTE *a1, int a2)
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

void sub_100091880(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009195C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000918E4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009195C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009195C(uint64_t a1)
{
  *a1 = &off_100204CD8;
  sub_100091AC8(a1);
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

uint64_t sub_100091AC8(uint64_t a1)
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
        sub_100091C78((a1 + 72), __p);
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

void sub_100091C14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100091C40(uint64_t a1)
{
  sub_10009195C(a1);

  operator delete();
}

int *sub_100091C78(uint64_t *a1, uint64_t *a2)
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
    v26 = 452;
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
      v26 = 452;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100091E5C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000920F4(v1);

  return std::ios::~ios();
}

uint64_t sub_100091EA8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000920F4(v1);

  return std::ios::~ios();
}

void sub_100091F08(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000920F4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100091F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100091FAC(_BYTE *a1, int a2)
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

void sub_100092018(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000920F4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10009207C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000920F4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000920F4(uint64_t a1)
{
  *a1 = &off_100204EF8;
  sub_100092260(a1);
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

uint64_t sub_100092260(uint64_t a1)
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
        sub_100092410((a1 + 72), __p);
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

void sub_1000923AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000923D8(uint64_t a1)
{
  sub_1000920F4(a1);

  operator delete();
}

int *sub_100092410(uint64_t *a1, uint64_t *a2)
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
    v26 = 461;
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
      v26 = 461;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_1000925F4(void *a1)
{
  *a1 = off_100202B88;
  v2 = a1 + 3;
  a1[3] = off_100202C70;
  a1[9] = off_100202C98;
  a1[10] = off_100202CD0;
  v3 = a1[17];
  a1[17] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[16];
  if (v4)
  {
    sub_10000E984(v4);
  }

  v5 = a1[14];
  if (v5)
  {
    sub_10000E984(v5);
  }

  a1[10] = off_100202EA0;
  v6 = a1[12];
  if (v6)
  {
    sub_10000E984(v6);
  }

  sub_1001516AC(v2);
  v7 = a1[2];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  return a1;
}

std::string *sub_100092720(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  sub_100075328(this, v3, v4);
  return this;
}

void sub_100092764(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100092780(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100203060;
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

void sub_100092830(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100092848(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002036C0;
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

void sub_1000928F8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100092910(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002038E0;
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

void sub_1000929C0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

const void **sub_1000929D8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_100092A0C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    goto LABEL_31;
  }

  v5 = a2 + 1;
  v6 = *a2;
  if (v6 == 123)
  {
    if (v5 == a3)
    {
      goto LABEL_31;
    }

    v5 = a2 + 2;
    v7 = a2[1];
  }

  else
  {
    v7 = *a2;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    do
    {
      if (v8 == 4)
      {
        if (v7 != 45)
        {
          v9 = 0;
          goto LABEL_23;
        }
      }

      else
      {
        v12 = v8 == 6 || (v8 & 0x7FFFFFFD) == 8;
        if ((v12 & v9) != 1)
        {
          goto LABEL_23;
        }

        if (v7 != 45)
        {
          goto LABEL_31;
        }
      }

      if (v5 == a3)
      {
        goto LABEL_31;
      }

      v13 = *v5++;
      v7 = v13;
      v9 = 1;
LABEL_23:
      v14 = sub_100092C0C(a1, v7);
      *(&v18 + v8) = v14;
      if (v5 == a3)
      {
        goto LABEL_31;
      }

      v15 = *v5++;
      v7 = v15;
      *(&v18 + v8++) = sub_100092C0C(a1, v15) | (16 * v14);
    }

    while (!v8);
    if (v8 == 16)
    {
      break;
    }

    if (v5 == a3)
    {
      goto LABEL_31;
    }

    v10 = *v5++;
    v7 = v10;
  }

  if (v6 == 123 && (v5 == a3 || (v16 = *v5, ++v5, v16 != 125)) || v5 != a3)
  {
LABEL_31:
    sub_100092BA4();
  }

  return v18;
}

uint64_t sub_100092C0C(uint64_t a1, int a2)
{
  if ((atomic_load_explicit(byte_100234A18, memory_order_acquire) & 1) == 0)
  {
    v7 = a2;
    sub_1001985DC();
    a2 = v7;
  }

  v2 = qword_100234A10;
  v3 = memchr("0123456789abcdefABCDEF", a2, qword_100234A10 - "0123456789abcdefABCDEF");
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  v5 = v4 - "0123456789abcdefABCDEF";
  if (v5 >= off_100234A08)
  {
    sub_100092BA4();
  }

  return byte_1001BF3FE[v5];
}

void sub_100092CA0(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  v3 = std::runtime_error::runtime_error(exception, a1);
}

uint64_t sub_100092CE0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100203B00;
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

void sub_100092D90(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100092DA8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100203D20;
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

void sub_100092E58(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

const void **sub_100092E70(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_100092EA4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100203F40;
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

void sub_100092F54(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100092F6C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100204160;
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

void sub_10009301C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100093034(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100204380;
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

void sub_1000930E4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_100093198(void *a1, unsigned int *a2, const char *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1001FEAA0;
  v5 = *a4;
  v6 = sub_100151228(*a2, a3, *a4 | 0x2000u);
  sub_100056CC8(a1 + 3, v6, (v5 & 3) != 0, 0);
}

uint64_t sub_100093220(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002045A0;
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

void sub_1000932D0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000932E8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002047C0;
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

void sub_100093398(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000933B0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002049E0;
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

void sub_100093460(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100093478(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100204CD8;
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

void sub_100093528(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

__n128 sub_1000935BC(uint64_t a1, uint64_t a2)
{
  *a2 = off_100204F78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

BOOL sub_1000935F4(void **a1, uint64_t **a2, unint64_t *a3)
{
  if (*a1[1] <= *a3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v10);
    sub_100001FE8(v10, "Bands folder contains an out of range band (", 44);
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = a2[1];
    }

    sub_100001FE8(v10, v8, v9);
    sub_100001FE8(v10, ")", 1);
    sub_10000EBDC(exception, v10, 0x16u);
  }

  result = sub_1000BABD4(*a1[2], *a3, 1);
  ++*a1[3];
  return result;
}

void sub_1000936F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000C8C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100093724(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100093770(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100204EF8;
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

void sub_100093820(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

__n128 sub_100093838@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  *(a4 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(a4 + 24) = result;
  *(a4 + 40) = *(a1 + 40);
  *(a4 + 48) = a3 - a2 + *(a1 + 48);
  return result;
}

__n128 sub_10009386C(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return result;
}

__n128 sub_1000938A4(uint64_t a1, int a2, _OWORD *a3, __n128 *a4, int a5, uint64_t a6)
{
  *a1 = a2;
  *(a1 + 8) = *a3;
  result = *a4;
  *(a1 + 24) = *a4;
  *(a1 + 40) = a5;
  *(a1 + 48) = a6;
  return result;
}

BOOL sub_1000938C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = *(a2 + 8);
    while (*v3 == *v4)
    {
      ++v3;
      ++v4;
      if (!--v2)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(a1 + 24);
      v7 = *(a2 + 24);
      while (*v6 == *v7)
      {
        ++v6;
        ++v7;
        if (!--v5)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
      {
        return *a1 == *a2;
      }
    }
  }

  return 0;
}

void *sub_100093990@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[3];
  v4 = *(a2 + 16);
  v5 = *(a2 + 8);
  if (v3 > (v4 & 1) + v5 - 1 || ((v6 = result[2], v7 = v6 + v3, v8 = *a2, (v4 & 2) != 0) ? (v9 = *a2) : (v9 = v8 + 1), v7 <= v9))
  {
    *(a3 + 48) = 0;
    *(a3 + 104) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 28) = 0u;
    return result;
  }

  v10 = v9 - v3;
  if (v9 < v3)
  {
    if (*(a2 + 16))
    {
      if (v4 == 3)
      {
        if (v5 < v8)
        {
          goto LABEL_23;
        }
      }

      else if (v8 >= v5)
      {
LABEL_23:
        v11 = qword_1002349D8;
        goto LABEL_24;
      }
    }

    else if (v8 >= v5 || v8 + 1 >= v5)
    {
      goto LABEL_23;
    }

    v11 = v5 + (v4 & 1) + (((v4 >> 1) & 1) - 1) - v8;
LABEL_24:
    v13 = v11 + v9;
    if (v13 >= v7)
    {
      v13 = v6 + v3;
    }

    return sub_100093AE4(a3, result, v13 - v3, 0, v3, result[4]);
  }

  if (*(a2 + 16))
  {
    if (v4 == 3)
    {
      if (v5 < v8)
      {
        goto LABEL_28;
      }
    }

    else if (v8 >= v5)
    {
LABEL_28:
      v12 = qword_1002349D8;
      goto LABEL_29;
    }
  }

  else if (v8 >= v5 || v8 + 1 >= v5)
  {
    goto LABEL_28;
  }

  v12 = v5 + (v4 & 1) + (((v4 >> 1) & 1) - 1) - v8;
LABEL_29:
  if (v6 - v10 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v6 - v10;
  }

  return sub_100093AE4(a3, result, v14, v10, v9, result[4] - v10);
}

uint64_t sub_100093AE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  *result = *a2 + a4;
  *(result + 8) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 16) = a3;
  *(result + 24) = a5;
  *(result + 32) = a6;
  *(result + 40) = *(a2 + 40);
  if (*(a2 + 104))
  {
    v7 = *(a2 + 48);
    *(result + 72) = *(a2 + 72);
    v8 = *(a2 + 88);
    v9 = *(a2 + 96) + a4;
    *(result + 48) = v7;
    *(result + 56) = *(a2 + 56);
    *(result + 88) = v8;
    *(result + 96) = v9;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    *(result + 48) = 0;
  }

  *(result + 104) = v10;
  return result;
}

uint64_t sub_100093B5C(uint64_t a1, void *a2, unint64_t a3, void *a4)
{
  *(a1 + 8) = 0;
  *a1 = off_100204FF8;
  v5 = a2[1];
  *(a1 + 16) = *a2;
  *(a1 + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 68) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 96) = 850045863;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  v6 = a4[4];
  *(a1 + 160) = a4[3];
  *(a1 + 168) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 176) = 0;
  v7 = a4[40];
  if (v7)
  {
    sub_1000BABD4(v7, a3, 1);
  }

  return a1;
}

void sub_100093C24(_Unwind_Exception *a1)
{
  sub_100097988(v2);
  v4 = *(v1 + 24);
  if (v4)
  {
    sub_10000E984(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100093C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1000E9608())
  {
    *&v12 = "io_result_t sparse_bundles::Band::read(DiskImage::Context &, const sg_entry &)";
    *(&v12 + 1) = 38;
    LODWORD(v13) = 2;
    sub_100093F4C(v14, &v12);
    sub_100001FE8(v15, "Reading ", 8);
    sub_100192838(v15, a3);
    sub_100001FE8(v15, " to ", 4);
    sub_1000960B0(v15, a1);
    std::ostream::~ostream();
    sub_100097C74(v14);
    std::ios::~ios();
  }

  v6 = (*(**(a2 + 16) + 40))(*(a2 + 16));
  v7 = *(a3 + 24);
  if (v6 >= *(a3 + 16) + v7)
  {
    v8 = (*(**(a2 + 16) + 128))(*(a2 + 16), a3);
  }

  else if (v6 <= v7)
  {
    if (sub_1000E9608())
    {
      *&v12 = "io_result_t sparse_bundles::Band::read(DiskImage::Context &, const sg_entry &)";
      *(&v12 + 1) = 38;
      LODWORD(v13) = 2;
      sub_1000940B8(v14, &v12);
      sub_100001FE8(v15, "Band data doesn't exist, zeroing", 32);
      std::ostream::~ostream();
      sub_10009840C(v14);
      std::ios::~ios();
    }

    bzero(*a3, *(a3 + 16));
    v8 = *(a3 + 16);
  }

  else
  {
    sub_100093AE4(&v12, a3, v6 - v7, 0, v7, *(a3 + 32));
    if (sub_1000E9608())
    {
      *&v10 = "io_result_t sparse_bundles::Band::read(DiskImage::Context &, const sg_entry &)";
      *(&v10 + 1) = 38;
      v11 = 2;
      sub_1000445CC(v14, &v10);
      sub_100001FE8(v15, "Band data is partial, reading ", 30);
      sub_100192838(v15, &v12);
      std::ostream::~ostream();
      sub_100046918(v14);
      std::ios::~ios();
    }

    v8 = (*(**(a2 + 16) + 128))(*(a2 + 16), &v12);
    bzero((*a3 + v13), *(a3 + 16) - v13);
    if (v13 == v8)
    {
      v8 = *(a3 + 16);
    }

    if (*(&v12 + 1))
    {
      sub_10000E984(*(&v12 + 1));
    }
  }

  if (v8 >= 0)
  {
    return *(a3 + 16);
  }

  else
  {
    return v8;
  }
}

void sub_100093F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a13)
  {
    sub_10000E984(a13);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100093F4C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000A1C64(a1, a2);
  *a1 = off_100205138;
  a1[45] = &off_100205238;
  a1[46] = &off_100205260;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100205138;
  a1[45] = off_1002051C0;
  a1[46] = off_1002051E8;
  return a1;
}

void sub_100094050(_Unwind_Exception *a1)
{
  sub_100097C74(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100094074(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100097C74(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000940B8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000A1D2C(a1, a2);
  *a1 = off_100205358;
  a1[45] = &off_100205458;
  a1[46] = &off_100205480;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100205358;
  a1[45] = off_1002053E0;
  a1[46] = off_100205408;
  return a1;
}

void sub_1000941BC(_Unwind_Exception *a1)
{
  sub_10009840C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000941E0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009840C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100094224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1000E9608())
  {
    *&v8 = "io_result_t sparse_bundles::Band::write(DiskImage::Context &, const sg_entry &)";
    *(&v8 + 1) = 39;
    v9 = 2;
    sub_100094360(v10, &v8);
    sub_100001FE8(v11, "Writing ", 8);
    sub_100192838(v11, a3);
    sub_100001FE8(v11, " to ", 4);
    sub_1000960B0(v11, a1);
    std::ostream::~ostream();
    sub_100098BA4(v10);
    std::ios::~ios();
  }

  v6 = sub_1000944CC(a1);
  sub_10018E770(v6, a3);
  LODWORD(result) = (*(**(a2 + 16) + 120))(*(a2 + 16), a3);
  *(a1 + 68) = 1;
  if (result >= 0)
  {
    return *(a3 + 16);
  }

  else
  {
    return result;
  }
}

void sub_10009434C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100094488(va);
  _Unwind_Resume(a1);
}

void *sub_100094360(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000A1DF4(a1, a2);
  *a1 = off_100205578;
  a1[45] = &off_100205678;
  a1[46] = &off_1002056A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100205578;
  a1[45] = off_100205600;
  a1[46] = off_100205628;
  return a1;
}

void sub_100094464(_Unwind_Exception *a1)
{
  sub_100098BA4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100094488(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100098BA4(a1);
  std::ios::~ios();
  return a1;
}

unint64_t sub_1000944CC(uint64_t a1)
{
  result = atomic_load((a1 + 48));
  if (!result)
  {
    v5 = a1;
    if (atomic_load_explicit((a1 + 56), memory_order_acquire) != -1)
    {
      v4[0] = &v5;
      v6 = v4;
      std::__call_once((a1 + 56), &v6, sub_1000A2958);
    }

    result = atomic_load((a1 + 48));
    if (!result)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      sub_100001DC0(v4);
      sub_100001FE8(v4, "Failed opening mapped blocks file for ", 38);
      sub_1000960B0(v4, a1);
      sub_10000EBDC(exception, v4, *(a1 + 64));
    }
  }

  return result;
}

void sub_1000945CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ios::~ios();
  if (v4)
  {
    __cxa_free_exception(v3);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100094604(uint64_t a1, void *a2)
{
  v3 = sub_1000944CC(a1);
  v6 = *a2;
  v4 = a2 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      if ((v5[6] & 2) != 0)
      {
        v7 = v5[4];
      }

      else
      {
        v7 = v5[4] + 1;
      }

      sub_10018EE84(v3, v7, (v5[6] & 1) + v5[5] - 1);
      v8 = v5[1];
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
        do
        {
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v4);
  }

  v11 = *(v3 + 8);

  return sub_1000BA9C0(v11);
}

void sub_1000946B0(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v8 = a3;
  v6 = 0;
  v7 = 0;
  v5 = (***(a2 + 8))(*(a2 + 8));
  sub_10004D164(&__p);
  sub_1000A1EBC();
}

void sub_1000947E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_10000E984(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100094854(uint64_t a1, unint64_t a2)
{
  if (*(*a1 + 8))
  {
    *&__p = "void sparse_bundles::Band::erase(const bundle_commons_t &, uint64_t)";
    *(&__p + 1) = 32;
    v12 = 0;
    sub_100094DA8(v14, &__p);
    sub_100001FE8(v15, "Skipping erase of band ", 23);
    std::ostream::operator<<();
    sub_100001FE8(v15, ", disk image is terminated", 26);
    std::ostream::~ostream();
    sub_10009933C(v14);
    std::ios::~ios();
    return;
  }

  sub_10004D164(&__p);
  v4 = (***(a1 + 16))(*(a1 + 16));
  v5 = sub_10015362C(v4, &__p);
  if (v5)
  {
    if (v5 >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = -v5;
    }

    if (v6 != 2)
    {
      *&v9 = "void sparse_bundles::Band::erase(const bundle_commons_t &, uint64_t)";
      *(&v9 + 1) = 32;
      v10 = 16;
      sub_100095080(v14, &v9);
      sub_100001FE8(v15, "Failed to erase mapped file of band ", 36);
      *(&v15[1] + *(v15[0] - 24)) = *(&v15[1] + *(v15[0] - 24)) & 0xFFFFFFB5 | 8;
      std::ostream::operator<<();
      *(&v15[1] + *(v15[0] - 24)) = *(&v15[1] + *(v15[0] - 24)) & 0xFFFFFFB5 | 2;
      sub_100001FE8(v15, ", error ", 8);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_10009A26C(v14);
      goto LABEL_11;
    }

    if (sub_1000E9608())
    {
      *&v9 = "void sparse_bundles::Band::erase(const bundle_commons_t &, uint64_t)";
      *(&v9 + 1) = 32;
      v10 = 2;
      sub_100094F14(v14, &v9);
      sub_100001FE8(v15, "No mapped file for band ", 24);
      *(&v15[1] + *(v15[0] - 24)) = *(&v15[1] + *(v15[0] - 24)) & 0xFFFFFFB5 | 8;
      std::ostream::operator<<();
      *(&v15[1] + *(v15[0] - 24)) = *(&v15[1] + *(v15[0] - 24)) & 0xFFFFFFB5 | 2;
      std::ostream::~ostream();
      sub_100099AD4(v14);
LABEL_11:
      std::ios::~ios();
    }
  }

  v7 = (***(a1 + 8))(*(a1 + 8));
  if (sub_10015362C(v7, &__p))
  {
    *&v9 = "void sparse_bundles::Band::erase(const bundle_commons_t &, uint64_t)";
    *(&v9 + 1) = 32;
    v10 = 16;
    sub_1000951EC(v14, &v9);
    sub_100001FE8(v15, "Failed to erase band ", 21);
    *(&v15[1] + *(v15[0] - 24)) = *(&v15[1] + *(v15[0] - 24)) & 0xFFFFFFB5 | 8;
    std::ostream::operator<<();
    *(&v15[1] + *(v15[0] - 24)) = *(&v15[1] + *(v15[0] - 24)) & 0xFFFFFFB5 | 2;
    sub_100001FE8(v15, ", error ", 8);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10009AA04(v14);
    std::ios::~ios();
  }

  else
  {
    v8 = *(a1 + 320);
    if (v8)
    {
      sub_1000BABD4(v8, a2, 0);
    }
  }

  if (sub_1000E9608())
  {
    *&v9 = "void sparse_bundles::Band::erase(const bundle_commons_t &, uint64_t)";
    *(&v9 + 1) = 32;
    v10 = 2;
    sub_100095358(v14, &v9);
    sub_100001FE8(v15, "Completed erase of band ", 24);
    *(&v15[1] + *(v15[0] - 24)) = *(&v15[1] + *(v15[0] - 24)) & 0xFFFFFFB5 | 8;
    std::ostream::operator<<();
    *(&v15[1] + *(v15[0] - 24)) = *(&v15[1] + *(v15[0] - 24)) & 0xFFFFFFB5 | 2;
    std::ostream::~ostream();
    sub_10009B19C(v14);
    std::ios::~ios();
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }
}

void sub_100094D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100094DA8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000A21EC(a1, a2);
  *a1 = off_100205798;
  a1[45] = &off_100205898;
  a1[46] = &off_1002058C0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100205798;
  a1[45] = off_100205820;
  a1[46] = off_100205848;
  return a1;
}

void sub_100094EAC(_Unwind_Exception *a1)
{
  sub_10009933C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100094ED0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009933C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100094F14(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000A22B4(a1, a2);
  *a1 = off_1002059B8;
  a1[45] = &off_100205AB8;
  a1[46] = &off_100205AE0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002059B8;
  a1[45] = off_100205A40;
  a1[46] = off_100205A68;
  return a1;
}

void sub_100095018(_Unwind_Exception *a1)
{
  sub_100099AD4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10009503C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100099AD4(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100095080(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000A237C(a1, a2);
  *a1 = off_100205BD8;
  a1[45] = &off_100205CD8;
  a1[46] = &off_100205D00;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100205BD8;
  a1[45] = off_100205C60;
  a1[46] = off_100205C88;
  return a1;
}

void sub_100095184(_Unwind_Exception *a1)
{
  sub_10009A26C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000951A8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009A26C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000951EC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000A2444(a1, a2);
  *a1 = off_100205DF8;
  a1[45] = &off_100205EF8;
  a1[46] = &off_100205F20;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100205DF8;
  a1[45] = off_100205E80;
  a1[46] = off_100205EA8;
  return a1;
}

void sub_1000952F0(_Unwind_Exception *a1)
{
  sub_10009AA04(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100095314(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009AA04(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100095358(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000A250C(a1, a2);
  *a1 = off_100206018;
  a1[45] = &off_100206118;
  a1[46] = &off_100206140;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100206018;
  a1[45] = off_1002060A0;
  a1[46] = off_1002060C8;
  return a1;
}

void sub_10009545C(_Unwind_Exception *a1)
{
  sub_10009B19C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100095480(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009B19C(a1);
  std::ios::~ios();
  return a1;
}

void sub_1000954C4(uint64_t a1)
{
  if ((*(a1 + 176) & 1) == 0)
  {
    sub_100095510((a1 + 72));
    sub_10004C898(*(a1 + 40) + 184, *(a1 + 32), 0);
    *(a1 + 176) = 1;
  }
}

void sub_100095510(uint64_t **a1)
{
  if (sub_1000E9608())
  {
    *&v9 = "sparse_bundles::Band::ContextsList::clear()";
    *(&v9 + 1) = 41;
    v10 = 2;
    sub_10009B69C(v11, &v9);
    sub_100001FE8(v12, "Resetting ", 10);
    std::ostream::operator<<();
    sub_100001FE8(v12, " band contexts", 14);
    std::ostream::~ostream();
    sub_10009B8D0(v11);
    std::ios::~ios();
  }

  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v4 = *v2;
      v5 = v2[1];
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = a1[11];
      v6 = a1[12];
      if (v6)
      {
        atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
      }

      v8 = *(v4 + 24);
      *(v4 + 16) = v7;
      *(v4 + 24) = v6;
      if (v8)
      {
        sub_10000E984(v8);
      }

      if (v5)
      {
        sub_10000E984(v5);
      }

      v2 += 2;
    }

    while (v2 != v3);
  }
}

void sub_100095630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10009B7C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100095648(uint64_t a1)
{
  *a1 = off_100204FF8;
  sub_1000954C4(a1);
  v2 = atomic_load((a1 + 48));
  if (*(a1 + 69))
  {
    if (!v2)
    {
      goto LABEL_18;
    }

LABEL_13:
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    operator delete();
  }

  if (v2)
  {
    if (*(**(a1 + 40) + 8))
    {
      *&v8 = "sparse_bundles::Band::~Band()";
      *(&v8 + 1) = 27;
      v9 = 0;
      sub_100095940(v10, &v8);
      sub_100001FE8(v11, "Disk image is terminated, skipping flush of ", 44);
      sub_1000960B0(v11, a1);
      sub_100001FE8(v11, ", dirty=", 8);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_10009C300(v10);
      std::ios::~ios();
    }

    else
    {
      if (sub_1000E9608())
      {
        *&v8 = "sparse_bundles::Band::~Band()";
        *(&v8 + 1) = 27;
        v9 = 2;
        sub_100095AAC(v10, &v8);
        sub_100001FE8(v11, "flushing and closing ", 21);
        sub_1000960B0(v11, a1);
        std::ostream::~ostream();
        sub_10009CA98(v10);
        std::ios::~ios();
      }

      sub_10018E77C(v2);
      if (*(a1 + 68))
      {
        (*(**(a1 + 16) + 16))(*(a1 + 16), 1);
      }
    }

    goto LABEL_13;
  }

  if (sub_1000E9608())
  {
    *&v8 = "sparse_bundles::Band::~Band()";
    *(&v8 + 1) = 27;
    v9 = 2;
    sub_100012068(v10, &v8);
    sub_100001FE8(v11, "Closing an unchanged ", 21);
    sub_1000960B0(v11, a1);
    std::ostream::~ostream();
    sub_10001229C(v10);
    std::ios::~ios();
  }

LABEL_18:
  v5 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (v5)
  {
    sub_10000E984(v5);
  }

  if (*(a1 + 69) == 1)
  {
    sub_100094854(*(a1 + 40), *(a1 + 32));
  }

  sub_10004C934(*(a1 + 40) + 184, *(a1 + 32));
  sub_100097988(a1 + 72);
  v6 = *(a1 + 24);
  if (v6)
  {
    sub_10000E984(v6);
  }

  return a1;
}

void *sub_100095940(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000A25D4(a1, a2);
  *a1 = off_100206458;
  a1[45] = &off_100206558;
  a1[46] = &off_100206580;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100206458;
  a1[45] = off_1002064E0;
  a1[46] = off_100206508;
  return a1;
}

void sub_100095A44(_Unwind_Exception *a1)
{
  sub_10009C300(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100095A68(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009C300(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100095AAC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000A269C(a1, a2);
  *a1 = off_100206678;
  a1[45] = &off_100206778;
  a1[46] = &off_1002067A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100206678;
  a1[45] = off_100206700;
  a1[46] = off_100206728;
  return a1;
}

void sub_100095BB0(_Unwind_Exception *a1)
{
  sub_10009CA98(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100095BD4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009CA98(a1);
  std::ios::~ios();
  return a1;
}

void sub_100095C1C(uint64_t a1)
{
  sub_100095648(a1);

  operator delete();
}

void sub_100095CB4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_10000E984(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100095CCC(uint64_t a1, __int128 *a2)
{
  std::mutex::lock((a1 + 24));
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_100015B70();
    }

    v10 = v5 - *a1;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = a1;
    if (v11)
    {
      sub_100015B88(a1, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_10007AB30(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    v4[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 2;
  }

  *(a1 + 8) = v7;
  std::mutex::unlock((a1 + 24));
}

uint64_t sub_100095E08(uint64_t a1)
{
  if ((*(a1 + 68) & 1) == 0)
  {
    return 0;
  }

  *(a1 + 68) = 0;
  v2 = atomic_load((a1 + 48));
  v3 = sub_10018E77C(v2);
  if (v3)
  {
    v4 = v3;
LABEL_6:
    *(a1 + 68) = 1;
    *&v6 = "sparse_bundles::Band::flush()";
    *(&v6 + 1) = 27;
    v7 = 16;
    sub_100095F44(v8, &v6);
    sub_1000960B0(v9, a1);
    sub_100001FE8(v9, ": flush failed (", 16);
    std::ostream::operator<<();
    sub_100001FE8(v9, ")", 1);
    std::ostream::~ostream();
    sub_10009D230(v8);
    std::ios::~ios();
    return v4;
  }

  v4 = (*(**(a1 + 16) + 16))(*(a1 + 16), 1);
  if (v4)
  {
    goto LABEL_6;
  }

  return v4;
}

void sub_100095F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10009606C(va);
  _Unwind_Resume(a1);
}

void *sub_100095F44(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000A2890(a1, a2);
  *a1 = off_100206898;
  a1[45] = &off_100206998;
  a1[46] = &off_1002069C0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100206898;
  a1[45] = off_100206920;
  a1[46] = off_100206948;
  return a1;
}

void sub_100096048(_Unwind_Exception *a1)
{
  sub_10009D230(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10009606C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009D230(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000960B0(void *a1, uint64_t a2)
{
  v2 = sub_100001FE8(a1, "band ", 5);
  *(v2 + *(*v2 - 24) + 8) = *(v2 + *(*v2 - 24) + 8) & 0xFFFFFFB5 | 8;
  result = std::ostream::operator<<();
  *(result + *(*result - 24) + 8) = *(result + *(*result - 24) + 8) & 0xFFFFFFB5 | 2;
  return result;
}

uint64_t *sub_10009613C(uint64_t *result)
{
  if (*result && atomic_fetch_add(*result, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v2 = result;
    v3 = result[1];
    if (v3)
    {
      (*(*v3 + 16))(v3);
    }

    result = *v2;
    if (*v2)
    {

      operator delete();
    }
  }

  return result;
}

uint64_t sub_1000961F4(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  *a1 = *a2;
  v3 = atomic_load(v2);
  if (!v3)
  {
LABEL_5:
    operator new();
  }

  v4 = v3;
  while (1)
  {
    atomic_compare_exchange_strong(*a1, &v4, v3 + 1);
    if (v4 == v3)
    {
      break;
    }

    v3 = v4;
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;
  return a1;
}

uint64_t sub_100096294(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  if (result != a2)
  {
    *a2 = 0;
  }

  return result;
}

uint64_t *sub_1000962B4(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    sub_10009613C(a1);
    *a1 = *a2;
    a1[2] = a2[2];
    *a2 = 0;
  }

  return a1;
}

void *sub_100096300@<X0>(std::chrono::steady_clock::time_point **a1@<X0>, std::chrono::steady_clock::time_point *a2@<X1>, void *a3@<X8>)
{
  v6 = atomic_load(*a1);
  sub_10004C1CC(((*a1)[1].__d_.__rep_ + 56));
  if (v6 != 1 || (v7 = 1, atomic_compare_exchange_strong(&(*a1)->__d_.__rep_, &v7, 0), v7 != 1))
  {
    sub_10004C1D8((*a1)[1].__d_.__rep_ + 56);
    if (sub_1000E9608())
    {
      *&v13 = "sparse_bundles::band_ptr::replace_if_evictable(Band *)";
      *(&v13 + 1) = 46;
      v14 = 2;
      sub_1000965A4(v15, &v13);
      sub_100001FE8(v16, "Missed an evictable slot", 24);
      std::ostream::~ostream();
      sub_10009D9C8(v15);
      std::ios::~ios();
    }

    operator new();
  }

  v8 = a1[1];
  if (v8)
  {
    sub_1000954C4(v8);
    v9 = a1[1];
    rep = (*a1)[1].__d_.__rep_;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 0x40000000;
    v12[2] = sub_100096710;
    v12[3] = &unk_1002050C8;
    v12[4] = a1;
    v12[5] = v9;
    sub_10004FC88((rep + 392), v12);
  }

  else
  {
    sub_10004C1D8((*a1)[1].__d_.__rep_ + 56);
    if (sub_1000E9608())
    {
      *&v13 = "sparse_bundles::band_ptr::replace_if_evictable(Band *)";
      *(&v13 + 1) = 46;
      v14 = 2;
      sub_100096B54(v15, &v13);
      sub_100001FE8(v16, "Replaced an empty slot", 22);
      std::ostream::~ostream();
      sub_10009F090(v15);
      std::ios::~ios();
    }
  }

  a1[1] = a2;
  if (!a2)
  {
    a1[2] = -1;
    operator new();
  }

  a1[2] = a2[4].__d_.__rep_;
  atomic_store(2uLL, *a1);
  (*a1)[2].__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  result = sub_1000961F4(a3, a1);
  atomic_fetch_add(&(*a1)->__d_.__rep_, 0xFFFFFFFFFFFFFFFFLL);
  return result;
}

void *sub_1000965A4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000A3F7C(a1, a2);
  *a1 = off_100206AB8;
  a1[45] = &off_100206BB8;
  a1[46] = &off_100206BE0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100206AB8;
  a1[45] = off_100206B40;
  a1[46] = off_100206B68;
  return a1;
}

void sub_1000966A8(_Unwind_Exception *a1)
{
  sub_10009D9C8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000966CC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009D9C8(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100096710(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (sub_1000E9608())
  {
    *&v5 = "sparse_bundles::band_ptr::replace_if_evictable(Band *)_block_invoke";
    *(&v5 + 1) = 46;
    v6 = 2;
    sub_10009687C(v7, &v5);
    sub_100001FE8(v8, "Background close of ", 20);
    sub_1000960B0(v8, *(a1 + 40));
    std::ostream::~ostream();
    sub_10009E160(v7);
    std::ios::~ios();
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  sub_10004C1D8(*(*v2 + 8) + 56);
  result = sub_1000E9608();
  if (result)
  {
    *&v5 = "sparse_bundles::band_ptr::replace_if_evictable(Band *)_block_invoke";
    *(&v5 + 1) = 46;
    v6 = 2;
    sub_1000969E8(v7, &v5);
    sub_100001FE8(v8, "Close completed", 15);
    std::ostream::~ostream();
    sub_10009E8F8(v7);
    return std::ios::~ios();
  }

  return result;
}

void sub_100096858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100096B10(va);
  _Unwind_Resume(a1);
}

void *sub_10009687C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000A4044(a1, a2);
  *a1 = off_100206CD8;
  a1[45] = &off_100206DD8;
  a1[46] = &off_100206E00;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100206CD8;
  a1[45] = off_100206D60;
  a1[46] = off_100206D88;
  return a1;
}

void sub_100096980(_Unwind_Exception *a1)
{
  sub_10009E160(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000969A4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009E160(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000969E8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000A410C(a1, a2);
  *a1 = off_100206EF8;
  a1[45] = &off_100206FF8;
  a1[46] = &off_100207020;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100206EF8;
  a1[45] = off_100206F80;
  a1[46] = off_100206FA8;
  return a1;
}

void sub_100096AEC(_Unwind_Exception *a1)
{
  sub_10009E8F8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100096B10(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009E8F8(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100096B54(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000A41D4(a1, a2);
  *a1 = off_100207118;
  a1[45] = &off_100207218;
  a1[46] = &off_100207240;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100207118;
  a1[45] = off_1002071A0;
  a1[46] = off_1002071C8;
  return a1;
}

void sub_100096C58(_Unwind_Exception *a1)
{
  sub_10009F090(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100096C7C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009F090(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100096CC0(uint64_t a1, uint64_t a2)
{
  v4 = atomic_load(*a1);
  while (v4 == 1)
  {
    v4 = 1;
    atomic_compare_exchange_strong(*a1, &v4, 0);
    if (v4 == 1)
    {
      v5 = sub_1000944CC(*(a1 + 8));
      if (sub_1000BA9C0(*(v5 + 8)))
      {
        sub_1000954C4(*(a1 + 8));
        v6 = *(a1 + 8);
        v7 = *(*a1 + 8);
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 0x40000000;
        v11[2] = sub_100097568;
        v11[3] = &unk_1002050E8;
        v11[4] = v6;
        sub_10004FC88((v7 + 392), v11);
        *(a1 + 8) = 0;
        *(a1 + 16) = -1;
        v8 = *a1;
        v9 = 1;
        atomic_store(1uLL, v8);
      }

      else
      {
        if (sub_1000E9608())
        {
          *&v14 = "sparse_bundles::band_ptr::erase_if_unmapped(uint64_t)";
          *(&v14 + 1) = 43;
          v15 = 2;
          sub_1000973FC(v16, &v14);
          sub_100001FE8(v17, "Skipping erase of ", 18);
          sub_1000960B0(v17, *(a1 + 8));
          sub_100001FE8(v17, ", band was written to", 21);
          std::ostream::~ostream();
          sub_1000A0EF0(v16);
          std::ios::~ios();
        }

        return 1;
      }

      return v9;
    }
  }

  if (v4)
  {
    sub_1000961F4(&v14, a1);
    if (*(&v14 + 1) && *(*(&v14 + 1) + 32) == a2)
    {
      if (sub_1000E9608())
      {
        *&v12 = "sparse_bundles::band_ptr::erase_if_unmapped(uint64_t)";
        *(&v12 + 1) = 43;
        v13 = 2;
        sub_100097124(v16, &v12);
        sub_100001FE8(v17, "Skipping band erase (in use)", 28);
        std::ostream::~ostream();
        sub_10009FFC0(v16);
        std::ios::~ios();
      }

      v9 = 1;
    }

    else
    {
      if (sub_1000E9608())
      {
        *&v12 = "sparse_bundles::band_ptr::erase_if_unmapped(uint64_t)";
        *(&v12 + 1) = 43;
        v13 = 2;
        sub_100097290(v16, &v12);
        sub_100001FE8(v17, "Band was evicted by another thread (during retain attempt), retry erase process", 79);
        std::ostream::~ostream();
        sub_1000A0758(v16);
        std::ios::~ios();
      }

      v9 = 0;
    }

    sub_10009613C(&v14);
  }

  else
  {
    if (sub_1000E9608())
    {
      *&v14 = "sparse_bundles::band_ptr::erase_if_unmapped(uint64_t)";
      *(&v14 + 1) = 43;
      v15 = 2;
      sub_100096FB8(v16, &v14);
      sub_100001FE8(v17, "Band was evicted by another thread, retry erase process", 55);
      std::ostream::~ostream();
      sub_10009F828(v16);
      std::ios::~ios();
    }

    return 0;
  }

  return v9;
}

void *sub_100096FB8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000A429C(a1, a2);
  *a1 = off_100207338;
  a1[45] = &off_100207438;
  a1[46] = &off_100207460;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100207338;
  a1[45] = off_1002073C0;
  a1[46] = off_1002073E8;
  return a1;
}

void sub_1000970BC(_Unwind_Exception *a1)
{
  sub_10009F828(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000970E0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009F828(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100097124(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000A4364(a1, a2);
  *a1 = off_100207558;
  a1[45] = &off_100207658;
  a1[46] = &off_100207680;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100207558;
  a1[45] = off_1002075E0;
  a1[46] = off_100207608;
  return a1;
}

void sub_100097228(_Unwind_Exception *a1)
{
  sub_10009FFC0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10009724C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009FFC0(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100097290(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000A442C(a1, a2);
  *a1 = off_100207778;
  a1[45] = &off_100207878;
  a1[46] = &off_1002078A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100207778;
  a1[45] = off_100207800;
  a1[46] = off_100207828;
  return a1;
}

void sub_100097394(_Unwind_Exception *a1)
{
  sub_1000A0758(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000973B8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000A0758(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000973FC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000A44F4(a1, a2);
  *a1 = off_100207998;
  a1[45] = &off_100207A98;
  a1[46] = &off_100207AC0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100207998;
  a1[45] = off_100207A20;
  a1[46] = off_100207A48;
  return a1;
}

void sub_100097500(_Unwind_Exception *a1)
{
  sub_1000A0EF0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100097524(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000A0EF0(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100097568(uint64_t a1)
{
  if (sub_1000E9608())
  {
    *&v4 = "sparse_bundles::band_ptr::erase_if_unmapped(uint64_t)_block_invoke";
    *(&v4 + 1) = 43;
    v5 = 2;
    sub_100097650(v6, &v4);
    sub_100001FE8(v7, "Background erase of ", 20);
    sub_1000960B0(v7, *(a1 + 32));
    std::ostream::~ostream();
    sub_1000A1688(v6);
    std::ios::~ios();
  }

  v2 = *(a1 + 32);
  v2[69] = 1;
  return (*(*v2 + 16))(v2);
}

void sub_10009763C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100097778(va);
  _Unwind_Resume(a1);
}

void *sub_100097650(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000A45BC(a1, a2);
  *a1 = off_100207BB8;
  a1[45] = &off_100207CB8;
  a1[46] = &off_100207CE0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100207BB8;
  a1[45] = off_100207C40;
  a1[46] = off_100207C68;
  return a1;
}

void sub_100097754(_Unwind_Exception *a1)
{
  sub_1000A1688(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100097778(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000A1688(a1);
  std::ios::~ios();
  return a1;
}

unint64_t sub_1000978AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = sub_1000A1C40;
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

void sub_100097960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  sub_10000FF88(&a9);
  sub_10000FF88(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100097988(uint64_t a1)
{
  sub_100095510(a1);
  v2 = *(a1 + 96);
  if (v2)
  {
    sub_10000E984(v2);
  }

  std::mutex::~mutex((a1 + 24));
  v4 = a1;
  sub_100015CD4(&v4);
  return a1;
}

uint64_t sub_1000979DC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100097C74(v1);

  return std::ios::~ios();
}

uint64_t sub_100097A28(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100097C74(v1);

  return std::ios::~ios();
}

void sub_100097A88(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100097C74(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100097AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100097B2C(_BYTE *a1, int a2)
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

void sub_100097B98(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100097C74(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100097BFC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100097C74(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100097C74(uint64_t a1)
{
  *a1 = &off_1002052D0;
  sub_100097DE0(a1);
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

uint64_t sub_100097DE0(uint64_t a1)
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
        sub_100097F90((a1 + 72), __p);
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

void sub_100097F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100097F58(uint64_t a1)
{
  sub_100097C74(a1);

  operator delete();
}

int *sub_100097F90(uint64_t *a1, uint64_t *a2)
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
    v26 = 47;
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
      v26 = 47;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100098174(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009840C(v1);

  return std::ios::~ios();
}

uint64_t sub_1000981C0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009840C(v1);

  return std::ios::~ios();
}

void sub_100098220(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009840C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100098288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000982C4(_BYTE *a1, int a2)
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

void sub_100098330(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009840C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100098394(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009840C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009840C(uint64_t a1)
{
  *a1 = &off_1002054F0;
  sub_100098578(a1);
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

uint64_t sub_100098578(uint64_t a1)
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
        sub_100098728((a1 + 72), __p);
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

void sub_1000986C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000986F0(uint64_t a1)
{
  sub_10009840C(a1);

  operator delete();
}

int *sub_100098728(uint64_t *a1, uint64_t *a2)
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
    v26 = 63;
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
      v26 = 63;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10009890C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100098BA4(v1);

  return std::ios::~ios();
}

uint64_t sub_100098958(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100098BA4(v1);

  return std::ios::~ios();
}

void sub_1000989B8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100098BA4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100098A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100098A5C(_BYTE *a1, int a2)
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

void sub_100098AC8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100098BA4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100098B2C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100098BA4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100098BA4(uint64_t a1)
{
  *a1 = &off_100205710;
  sub_100098D10(a1);
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

uint64_t sub_100098D10(uint64_t a1)
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
        sub_100098EC0((a1 + 72), __p);
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

void sub_100098E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100098E88(uint64_t a1)
{
  sub_100098BA4(a1);

  operator delete();
}

int *sub_100098EC0(uint64_t *a1, uint64_t *a2)
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
    v26 = 74;
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
      v26 = 74;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000990A4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009933C(v1);

  return std::ios::~ios();
}

uint64_t sub_1000990F0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009933C(v1);

  return std::ios::~ios();
}

void sub_100099150(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009933C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000991B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000991F4(_BYTE *a1, int a2)
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

void sub_100099260(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009933C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000992C4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009933C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009933C(uint64_t a1)
{
  *a1 = &off_100205930;
  sub_1000994A8(a1);
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

uint64_t sub_1000994A8(uint64_t a1)
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
        sub_100099658((a1 + 72), __p);
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

void sub_1000995F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100099620(uint64_t a1)
{
  sub_10009933C(a1);

  operator delete();
}

int *sub_100099658(uint64_t *a1, uint64_t *a2)
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
    v26 = 116;
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
      v26 = 116;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10009983C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100099AD4(v1);

  return std::ios::~ios();
}

uint64_t sub_100099888(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100099AD4(v1);

  return std::ios::~ios();
}

void sub_1000998E8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100099AD4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100099950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10009998C(_BYTE *a1, int a2)
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

void sub_1000999F8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100099AD4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100099A5C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100099AD4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100099AD4(uint64_t a1)
{
  *a1 = &off_100205B50;
  sub_100099C40(a1);
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

uint64_t sub_100099C40(uint64_t a1)
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
        sub_100099DF0((a1 + 72), __p);
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

void sub_100099D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100099DB8(uint64_t a1)
{
  sub_100099AD4(a1);

  operator delete();
}

int *sub_100099DF0(uint64_t *a1, uint64_t *a2)
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
    v26 = 124;
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
      v26 = 124;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100099FD4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009A26C(v1);

  return std::ios::~ios();
}

uint64_t sub_10009A020(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009A26C(v1);

  return std::ios::~ios();
}

void sub_10009A080(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009A26C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009A0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10009A124(_BYTE *a1, int a2)
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

void sub_10009A190(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009A26C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10009A1F4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009A26C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009A26C(uint64_t a1)
{
  *a1 = &off_100205D70;
  sub_10009A3D8(a1);
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

uint64_t sub_10009A3D8(uint64_t a1)
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
        sub_10009A588((a1 + 72), __p);
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

void sub_10009A524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009A550(uint64_t a1)
{
  sub_10009A26C(a1);

  operator delete();
}

int *sub_10009A588(uint64_t *a1, uint64_t *a2)
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
    v26 = 126;
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
      v26 = 126;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10009A76C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009AA04(v1);

  return std::ios::~ios();
}

uint64_t sub_10009A7B8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009AA04(v1);

  return std::ios::~ios();
}

void sub_10009A818(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009AA04(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009A880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10009A8BC(_BYTE *a1, int a2)
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

void sub_10009A928(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009AA04(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10009A98C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009AA04(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009AA04(uint64_t a1)
{
  *a1 = &off_100205F90;
  sub_10009AB70(a1);
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

uint64_t sub_10009AB70(uint64_t a1)
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
        sub_10009AD20((a1 + 72), __p);
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

void sub_10009ACBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009ACE8(uint64_t a1)
{
  sub_10009AA04(a1);

  operator delete();
}

int *sub_10009AD20(uint64_t *a1, uint64_t *a2)
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
    v26 = 136;
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
      v26 = 136;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10009AF04(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009B19C(v1);

  return std::ios::~ios();
}

uint64_t sub_10009AF50(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009B19C(v1);

  return std::ios::~ios();
}

void sub_10009AFB0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009B19C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009B018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10009B054(_BYTE *a1, int a2)
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

void sub_10009B0C0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009B19C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10009B124(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009B19C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009B19C(uint64_t a1)
{
  *a1 = &off_1002061B0;
  sub_10009B308(a1);
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

uint64_t sub_10009B308(uint64_t a1)
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
        sub_10009B4B8((a1 + 72), __p);
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

void sub_10009B454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009B480(uint64_t a1)
{
  sub_10009B19C(a1);

  operator delete();
}

int *sub_10009B4B8(uint64_t *a1, uint64_t *a2)
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
    v26 = 139;
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
      v26 = 139;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_10009B69C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10009B808(a1, a2);
  *a1 = off_100206238;
  a1[45] = &off_100206338;
  a1[46] = &off_100206360;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100206238;
  a1[45] = off_1002062C0;
  a1[46] = off_1002062E8;
  return a1;
}

void sub_10009B7A0(_Unwind_Exception *a1)
{
  sub_10009B8D0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10009B7C4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009B8D0(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10009B808(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002063D0;
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

void sub_10009B8B8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10009B8D0(uint64_t a1)
{
  *a1 = &off_1002063D0;
  sub_10009BD10(a1);
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

void sub_10009BA3C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009B8D0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009BAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10009BAE0(_BYTE *a1, int a2)
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

uint64_t sub_10009BB4C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009B8D0(v1);

  return std::ios::~ios();
}

void sub_10009BB98(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009B8D0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009BBFC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009B8D0(v1);

  return std::ios::~ios();
}

void sub_10009BC5C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009B8D0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10009BCD8(uint64_t a1)
{
  sub_10009B8D0(a1);

  operator delete();
}

uint64_t sub_10009BD10(uint64_t a1)
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
        sub_10009BE84((a1 + 72), __p);
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

void sub_10009BE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10009BE84(uint64_t *a1, uint64_t *a2)
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
    v26 = 92;
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
      v26 = 92;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10009C068(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009C300(v1);

  return std::ios::~ios();
}

uint64_t sub_10009C0B4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009C300(v1);

  return std::ios::~ios();
}

void sub_10009C114(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009C300(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009C17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10009C1B8(_BYTE *a1, int a2)
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

void sub_10009C224(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009C300(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10009C288(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009C300(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009C300(uint64_t a1)
{
  *a1 = &off_1002065F0;
  sub_10009C46C(a1);
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

uint64_t sub_10009C46C(uint64_t a1)
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
        sub_10009C61C((a1 + 72), __p);
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

void sub_10009C5B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009C5E4(uint64_t a1)
{
  sub_10009C300(a1);

  operator delete();
}

int *sub_10009C61C(uint64_t *a1, uint64_t *a2)
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
    v26 = 162;
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
      v26 = 162;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10009C800(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009CA98(v1);

  return std::ios::~ios();
}

uint64_t sub_10009C84C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009CA98(v1);

  return std::ios::~ios();
}

void sub_10009C8AC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009CA98(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009C914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10009C950(_BYTE *a1, int a2)
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

void sub_10009C9BC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009CA98(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10009CA20(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009CA98(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009CA98(uint64_t a1)
{
  *a1 = &off_100206810;
  sub_10009CC04(a1);
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

uint64_t sub_10009CC04(uint64_t a1)
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
        sub_10009CDB4((a1 + 72), __p);
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

void sub_10009CD50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009CD7C(uint64_t a1)
{
  sub_10009CA98(a1);

  operator delete();
}

int *sub_10009CDB4(uint64_t *a1, uint64_t *a2)
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
    v26 = 164;
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
      v26 = 164;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10009CF98(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009D230(v1);

  return std::ios::~ios();
}

uint64_t sub_10009CFE4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009D230(v1);

  return std::ios::~ios();
}

void sub_10009D044(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009D230(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009D0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10009D0E8(_BYTE *a1, int a2)
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

void sub_10009D154(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009D230(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10009D1B8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009D230(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009D230(uint64_t a1)
{
  *a1 = &off_100206A30;
  sub_10009D39C(a1);
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

uint64_t sub_10009D39C(uint64_t a1)
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
        sub_10009D54C((a1 + 72), __p);
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

void sub_10009D4E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009D514(uint64_t a1)
{
  sub_10009D230(a1);

  operator delete();
}

int *sub_10009D54C(uint64_t *a1, uint64_t *a2)
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
    v26 = 213;
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
      v26 = 213;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10009D730(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009D9C8(v1);

  return std::ios::~ios();
}

uint64_t sub_10009D77C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009D9C8(v1);

  return std::ios::~ios();
}

void sub_10009D7DC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009D9C8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009D844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10009D880(_BYTE *a1, int a2)
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

void sub_10009D8EC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009D9C8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10009D950(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009D9C8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009D9C8(uint64_t a1)
{
  *a1 = &off_100206C50;
  sub_10009DB34(a1);
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

uint64_t sub_10009DB34(uint64_t a1)
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
        sub_10009DCE4((a1 + 72), __p);
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

void sub_10009DC80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009DCAC(uint64_t a1)
{
  sub_10009D9C8(a1);

  operator delete();
}

int *sub_10009DCE4(uint64_t *a1, uint64_t *a2)
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
    v26 = 341;
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
      v26 = 341;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10009DEC8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009E160(v1);

  return std::ios::~ios();
}

uint64_t sub_10009DF14(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009E160(v1);

  return std::ios::~ios();
}

void sub_10009DF74(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009E160(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009DFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10009E018(_BYTE *a1, int a2)
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

void sub_10009E084(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009E160(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10009E0E8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009E160(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009E160(uint64_t a1)
{
  *a1 = &off_100206E70;
  sub_10009E2CC(a1);
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

uint64_t sub_10009E2CC(uint64_t a1)
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
        sub_10009E47C((a1 + 72), __p);
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

void sub_10009E418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009E444(uint64_t a1)
{
  sub_10009E160(a1);

  operator delete();
}

int *sub_10009E47C(uint64_t *a1, uint64_t *a2)
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
    v26 = 350;
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
      v26 = 350;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10009E660(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009E8F8(v1);

  return std::ios::~ios();
}

uint64_t sub_10009E6AC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009E8F8(v1);

  return std::ios::~ios();
}

void sub_10009E70C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009E8F8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009E774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10009E7B0(_BYTE *a1, int a2)
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

void sub_10009E81C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009E8F8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10009E880(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009E8F8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009E8F8(uint64_t a1)
{
  *a1 = &off_100207090;
  sub_10009EA64(a1);
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

uint64_t sub_10009EA64(uint64_t a1)
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
        sub_10009EC14((a1 + 72), __p);
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

void sub_10009EBB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009EBDC(uint64_t a1)
{
  sub_10009E8F8(a1);

  operator delete();
}

int *sub_10009EC14(uint64_t *a1, uint64_t *a2)
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
    v26 = 353;
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
      v26 = 353;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10009EDF8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009F090(v1);

  return std::ios::~ios();
}

uint64_t sub_10009EE44(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009F090(v1);

  return std::ios::~ios();
}

void sub_10009EEA4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009F090(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009EF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10009EF48(_BYTE *a1, int a2)
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

void sub_10009EFB4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009F090(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10009F018(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009F090(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009F090(uint64_t a1)
{
  *a1 = &off_1002072B0;
  sub_10009F1FC(a1);
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

uint64_t sub_10009F1FC(uint64_t a1)
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
        sub_10009F3AC((a1 + 72), __p);
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

void sub_10009F348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009F374(uint64_t a1)
{
  sub_10009F090(a1);

  operator delete();
}

int *sub_10009F3AC(uint64_t *a1, uint64_t *a2)
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
    v26 = 357;
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
      v26 = 357;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10009F590(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009F828(v1);

  return std::ios::~ios();
}

uint64_t sub_10009F5DC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009F828(v1);

  return std::ios::~ios();
}

void sub_10009F63C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009F828(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009F6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10009F6E0(_BYTE *a1, int a2)
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

void sub_10009F74C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009F828(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10009F7B0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009F828(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009F828(uint64_t a1)
{
  *a1 = &off_1002074D0;
  sub_10009F994(a1);
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

uint64_t sub_10009F994(uint64_t a1)
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
        sub_10009FB44((a1 + 72), __p);
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

void sub_10009FAE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009FB0C(uint64_t a1)
{
  sub_10009F828(a1);

  operator delete();
}

int *sub_10009FB44(uint64_t *a1, uint64_t *a2)
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
    v26 = 392;
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
      v26 = 392;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10009FD28(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009FFC0(v1);

  return std::ios::~ios();
}

uint64_t sub_10009FD74(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009FFC0(v1);

  return std::ios::~ios();
}

void sub_10009FDD4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009FFC0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009FE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10009FE78(_BYTE *a1, int a2)
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

void sub_10009FEE4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009FFC0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10009FF48(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009FFC0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009FFC0(uint64_t a1)
{
  *a1 = &off_1002076F0;
  sub_1000A012C(a1);
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

uint64_t sub_1000A012C(uint64_t a1)
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
        sub_1000A02DC((a1 + 72), __p);
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

void sub_1000A0278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000A02A4(uint64_t a1)
{
  sub_10009FFC0(a1);

  operator delete();
}

int *sub_1000A02DC(uint64_t *a1, uint64_t *a2)
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
    v26 = 397;
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
      v26 = 397;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000A04C0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000A0758(v1);

  return std::ios::~ios();
}

uint64_t sub_1000A050C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000A0758(v1);

  return std::ios::~ios();
}

void sub_1000A056C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000A0758(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000A05D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000A0610(_BYTE *a1, int a2)
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

void sub_1000A067C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000A0758(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000A06E0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000A0758(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000A0758(uint64_t a1)
{
  *a1 = &off_100207910;
  sub_1000A08C4(a1);
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

uint64_t sub_1000A08C4(uint64_t a1)
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
        sub_1000A0A74((a1 + 72), __p);
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

void sub_1000A0A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000A0A3C(uint64_t a1)
{
  sub_1000A0758(a1);

  operator delete();
}

int *sub_1000A0A74(uint64_t *a1, uint64_t *a2)
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
    v26 = 400;
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
      v26 = 400;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000A0C58(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000A0EF0(v1);

  return std::ios::~ios();
}

uint64_t sub_1000A0CA4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000A0EF0(v1);

  return std::ios::~ios();
}

void sub_1000A0D04(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000A0EF0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000A0D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000A0DA8(_BYTE *a1, int a2)
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

void sub_1000A0E14(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000A0EF0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000A0E78(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000A0EF0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000A0EF0(uint64_t a1)
{
  *a1 = &off_100207B30;
  sub_1000A105C(a1);
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

uint64_t sub_1000A105C(uint64_t a1)
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
        sub_1000A120C((a1 + 72), __p);
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

void sub_1000A11A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000A11D4(uint64_t a1)
{
  sub_1000A0EF0(a1);

  operator delete();
}

int *sub_1000A120C(uint64_t *a1, uint64_t *a2)
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
    v26 = 409;
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
      v26 = 409;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000A13F0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000A1688(v1);

  return std::ios::~ios();
}

uint64_t sub_1000A143C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000A1688(v1);

  return std::ios::~ios();
}

void sub_1000A149C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000A1688(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000A1504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000A1540(_BYTE *a1, int a2)
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

void sub_1000A15AC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000A1688(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000A1610(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000A1688(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000A1688(uint64_t a1)
{
  *a1 = &off_100207D50;
  sub_1000A17F4(a1);
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

uint64_t sub_1000A17F4(uint64_t a1)
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
        sub_1000A19A4((a1 + 72), __p);
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

void sub_1000A1940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000A196C(uint64_t a1)
{
  sub_1000A1688(a1);

  operator delete();
}

int *sub_1000A19A4(uint64_t *a1, uint64_t *a2)
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
    v26 = 416;
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
      v26 = 416;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_1000A1B88(void *a1)
{
  *a1 = off_100207DD0;
  v2 = a1[3];
  if (v2)
  {
    sub_10000E984(v2);
  }

  return a1;
}

void sub_1000A1BD4(void *a1)
{
  *a1 = off_100207DD0;
  v1 = a1[3];
  if (v1)
  {
    sub_10000E984(v1);
  }

  operator delete();
}

uint64_t sub_1000A1C64(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002052D0;
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

void sub_1000A1D14(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A1D2C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002054F0;
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

void sub_1000A1DDC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A1DF4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100205710;
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

void sub_1000A1EA4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_1000A1F58(void *a1, unsigned int *a2, const char *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1001FEAA0;
  v5 = *a4;
  v6 = sub_100151228(*a2, a3, *a4 | 0x2000u);
  sub_100056CC8(a1 + 3, v6, (v5 & 3) != 0, 0);
}

void *sub_1000A207C(void *a1, uint64_t *a2, void *a3, unsigned int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1002002A0;
  sub_1000A20D8((a1 + 3), a2, a3, a4);
  return a1;
}

uint64_t sub_1000A20D8(uint64_t a1, uint64_t *a2, void *a3, unsigned int *a4)
{
  v6 = a2[1];
  v9 = *a2;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000A2164(&v8, *a4);
  sub_100183D2C(a1, &v9, a3, &v8);
  if (v10)
  {
    sub_10000E984(v10);
  }

  return a1;
}

void sub_1000A214C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_10000E984(a12);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_1000A2164(_DWORD *result, int a2)
{
  *result = a2;
  if ((a2 & 0xFFFFFFFC) != 0)
  {
    v2 = a2 & 0xFFFFFFFC;
    exception = __cxa_allocate_exception(0x28uLL);
    exception[1] = "header_ignore_fields_t";
    exception[2] = "invalid flags";
    exception[3] = "flags validator";
    *exception = &off_1001FE7B8;
    *(exception + 8) = v2;
  }

  return result;
}

uint64_t sub_1000A21EC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100205930;
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

void sub_1000A229C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A22B4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100205B50;
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

void sub_1000A2364(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A237C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100205D70;
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

void sub_1000A242C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A2444(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100205F90;
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

void sub_1000A24F4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A250C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002061B0;
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

void sub_1000A25BC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A25D4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002065F0;
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

void sub_1000A2684(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A269C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100206810;
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

void sub_1000A274C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_1000A27CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1001980AC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000A27E8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000A2820(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t sub_1000A2850(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A2890(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100206A30;
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

void sub_1000A2940(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_1000A2958(uint64_t ***a1)
{
  v1 = ***a1;
  if (sub_1000E9608())
  {
    *&v3 = "sparse_bundles::Band::get_mapped_blocks()::(anonymous class)::operator()() const";
    *(&v3 + 1) = 72;
    LODWORD(v4) = 2;
    sub_1000A2AF0(v7, &v3);
    sub_100001FE8(v8, "Opening mapped blocks for ", 26);
    sub_1000960B0(v8, v1);
    std::ostream::~ostream();
    sub_1000A2F84(v7);
    std::ios::~ios();
  }

  v2 = *(v1 + 40);
  *&v3 = _NSConcreteStackBlock;
  *(&v3 + 1) = 0x40000000;
  v4 = sub_1000A2C5C;
  v5 = &unk_100207E90;
  v6 = v1;
  sub_10004CE24(v2, &v3);
}

void *sub_1000A2AF0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000A2EBC(a1, a2);
  *a1 = off_100207EC8;
  a1[45] = &off_100207FC8;
  a1[46] = &off_100207FF0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100207EC8;
  a1[45] = off_100207F50;
  a1[46] = off_100207F78;
  return a1;
}

void sub_1000A2BF4(_Unwind_Exception *a1)
{
  sub_1000A2F84(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000A2C18(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000A2F84(a1);
  std::ios::~ios();
  return a1;
}

void sub_1000A2D18(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000E984(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000A2D50(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000A371C(a1, a2);
  *a1 = off_1002080E8;
  a1[45] = &off_1002081E8;
  a1[46] = &off_100208210;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002080E8;
  a1[45] = off_100208170;
  a1[46] = off_100208198;
  return a1;
}

void sub_1000A2E54(_Unwind_Exception *a1)
{
  sub_1000A37E4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000A2E78(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000A37E4(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000A2EBC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100208060;
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

void sub_1000A2F6C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A2F84(uint64_t a1)
{
  *a1 = &off_100208060;
  sub_1000A33C4(a1);
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

void sub_1000A30F0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000A2F84(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000A3158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000A3194(_BYTE *a1, int a2)
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

uint64_t sub_1000A3200(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000A2F84(v1);

  return std::ios::~ios();
}

void sub_1000A324C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000A2F84(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000A32B0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000A2F84(v1);

  return std::ios::~ios();
}

void sub_1000A3310(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000A2F84(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000A338C(uint64_t a1)
{
  sub_1000A2F84(a1);

  operator delete();
}

uint64_t sub_1000A33C4(uint64_t a1)
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
        sub_1000A3538((a1 + 72), __p);
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

void sub_1000A3510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000A3538(uint64_t *a1, uint64_t *a2)
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
    v26 = 229;
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
      v26 = 229;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000A371C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100208280;
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

void sub_1000A37CC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A37E4(uint64_t a1)
{
  *a1 = &off_100208280;
  sub_1000A3C24(a1);
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

void sub_1000A3950(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000A37E4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000A39B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000A39F4(_BYTE *a1, int a2)
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

uint64_t sub_1000A3A60(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000A37E4(v1);

  return std::ios::~ios();
}

void sub_1000A3AAC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000A37E4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000A3B10(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000A37E4(v1);

  return std::ios::~ios();
}

void sub_1000A3B70(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000A37E4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000A3BEC(uint64_t a1)
{
  sub_1000A37E4(a1);

  operator delete();
}

uint64_t sub_1000A3C24(uint64_t a1)
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
        sub_1000A3D98((a1 + 72), __p);
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

void sub_1000A3D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000A3D98(uint64_t *a1, uint64_t *a2)
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
    v26 = 236;
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
      v26 = 236;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000A3F7C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100206C50;
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

void sub_1000A402C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A4044(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100206E70;
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

void sub_1000A40F4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A410C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100207090;
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

void sub_1000A41BC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A41D4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002072B0;
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

void sub_1000A4284(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A429C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002074D0;
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

void sub_1000A434C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A4364(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002076F0;
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

void sub_1000A4414(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A442C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100207910;
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

void sub_1000A44DC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A44F4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100207B30;
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

void sub_1000A45A4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A45BC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100207D50;
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

void sub_1000A466C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_1000A4AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A4B10(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained signalCommandCompletedWithXpcError:v3];
}

void sub_1000A4C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A4C94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v6)
  {
    v8 = *(a1 + 32);
    v9 = 0;
    [v8 updateDiskImageParamsWithFrontend:v5 error:&v9];
    v6 = v9;
  }

  [WeakRetained signalCommandCompletedWithXpcError:v6];
}

void sub_1000A4E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A4E50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v6)
  {
    v8 = *(a1 + 32);
    v9 = 0;
    [v8 updateDiskImageParamsWithFrontend:v5 error:&v9];
    v6 = v9;
  }

  [WeakRetained signalCommandCompletedWithXpcError:v6];
}

void sub_1000A4FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A5018(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v6)
  {
    v8 = *(a1 + 32);
    v9 = 0;
    [v8 updateDiskImageParamsWithFrontend:v5 error:&v9];
    v6 = v9;
  }

  [WeakRetained signalCommandCompletedWithXpcError:v6];
}

void sub_1000A50A4(_OWORD *a1, uint64_t a2)
{
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  operator new[]();
}