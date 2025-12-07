void sub_10018DACC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018DBA8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10018DB30(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018DBA8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018DBA8(uint64_t a1)
{
  *a1 = &off_1002304B0;
  sub_10018DD14(a1);
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

uint64_t sub_10018DD14(uint64_t a1)
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
        sub_10018DEC4((a1 + 72), __p);
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

void sub_10018DE60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018DE8C(uint64_t a1)
{
  sub_10018DBA8(a1);

  operator delete();
}

int *sub_10018DEC4(uint64_t *a1, uint64_t *a2)
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
    v26 = 602;
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
      v26 = 602;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10018E0A8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018E340(v1);

  return std::ios::~ios();
}

uint64_t sub_10018E0F4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018E340(v1);

  return std::ios::~ios();
}

void sub_10018E154(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018E340(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018E1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10018E1F8(_BYTE *a1, int a2)
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

void sub_10018E264(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018E340(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10018E2C8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018E340(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018E340(uint64_t a1)
{
  *a1 = &off_1002306D0;
  sub_10018E4AC(a1);
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

uint64_t sub_10018E4AC(uint64_t a1)
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
        sub_10018E65C((a1 + 72), __p);
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

void sub_10018E5F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018E624(uint64_t a1)
{
  sub_10018E340(a1);

  operator delete();
}

int *sub_10018E65C(uint64_t *a1, uint64_t *a2)
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
    v26 = 758;
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
      v26 = 758;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10018E840(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018EAD8(v1);

  return std::ios::~ios();
}

uint64_t sub_10018E88C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018EAD8(v1);

  return std::ios::~ios();
}

void sub_10018E8EC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018EAD8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018E954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10018E990(_BYTE *a1, int a2)
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

void sub_10018E9FC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018EAD8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10018EA60(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018EAD8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018EAD8(uint64_t a1)
{
  *a1 = &off_1002308F0;
  sub_10018EC44(a1);
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

uint64_t sub_10018EC44(uint64_t a1)
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
        sub_10018EDF4((a1 + 72), __p);
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

void sub_10018ED90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018EDBC(uint64_t a1)
{
  sub_10018EAD8(a1);

  operator delete();
}

int *sub_10018EDF4(uint64_t *a1, uint64_t *a2)
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
    v26 = 776;
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
      v26 = 776;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sub_10018EFE0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  v7 = v5[3] - v5[2];
  v8[0] = v5[2];
  v8[1] = v7;
  sub_10014DCB8(v9, v6, v8, a2, *(*v5 + 52));
  sub_10014DDF4(a3, v9);
  *(a3 + 144) = 1;
  v9[0] = off_100228258;
  sub_100027454(v12);
  v9[0] = off_100204580;
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void sub_10018F0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000273E0(va);
  _Unwind_Resume(a1);
}

void sub_10018F0B8(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[2];
  v7 = *(*a1 + 24) - *(*a1 + 16);
  v9[0] = *(*a1 + 16);
  v9[1] = v7;
  sub_10014D72C(v10, v6, v9, a2, *(*v5 + 52));
  sub_10014D880(a3, v10);
  *(a3 + 144) = 0;
  v10[0] = off_100228230;
  sub_1000273B4(&v14);
  v8 = v13;
  v13 = 0;
  if (v8)
  {
    operator delete[]();
  }

  v10[0] = off_100204580;
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_10018F198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100027320(va);
  _Unwind_Resume(a1);
}

void *sub_10018F1AC(void *a1)
{
  *a1 = off_10022FAD8;
  a1[5] = off_10022FBB0;
  if (a1[48])
  {
    operator delete[]();
  }

  sub_10018F29C(a1 + 50);
  sub_10002752C((a1 + 27));
  sub_10002752C((a1 + 8));
  a1[5] = off_10020E560;
  v2 = a1[7];
  if (v2)
  {
    sub_10000367C(v2);
  }

  *a1 = off_1002064C0;
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

uint64_t sub_10018F29C(void *a1)
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
    v6 = &v2[v5 >> 5];
    v7 = *v6 + 128 * (v5 & 0x1F);
    v8 = *(v2 + (((a1[5] + v5) >> 2) & 0x3FFFFFFFFFFFFFF8)) + 128 * ((a1[5] + v5) & 0x1F);
    if (v7 != v8)
    {
      do
      {
        v9 = *(v7 + 14);
        if (v9)
        {
          *(v9 + 16) = 0;
        }

        v10 = *(v7 + 1);
        if (v10)
        {
          sub_10000367C(v10);
        }

        v7 += 128;
        if (v7 - *v6 == 4096)
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
    v13 = 16;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_20;
    }

    v13 = 32;
  }

  a1[4] = v13;
LABEL_20:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return sub_100029E48(a1);
}

uint64_t sub_10018F3E8(unint64_t *a1, uint64_t a2)
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
    sub_10018F4D4(a1);
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
  *(v9 + 112) = *(a2 + 112);
  v9 += 112;
  *(a2 + 112) = 0;
  *(*v9 + 16) = v9;
  *(v9 + 8) = *(a2 + 120);
  v10 = a1[4];
  v11 = a1[5] + 1;
  a1[5] = v11;
  v12 = v10 + v11;
  v13 = a1[1];
  v14 = (v13 + 8 * (v12 >> 5));
  v15 = *v14 + ((v12 & 0x1F) << 7);
  if (a1[2] == v13)
  {
    v15 = 0;
  }

  if (v15 == *v14)
  {
    v15 = *(v14 - 1) + 4096;
  }

  return v15 - 128;
}

void sub_10018F4D4(unint64_t *a1)
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

void sub_10018F65C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_10018F6A8(void *a1, uint64_t a2)
{
  sub_10009C1E4((a1 + 2), a2);
  *a1 = off_100230A20;
  a1[2] = off_100230A88;
  a1[1] = off_100230A48;
  return a1;
}

std::exception *sub_10018F72C(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_100213BA0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
  return a1;
}

void sub_10018F7A8(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_100213BA0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_10018F844(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_100213BA0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_10018F8C8(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_100213BA0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_10018F968(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v2 = v1 + 2;
  v1[2].__vftable = off_100213BA0;
  v3 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_10018FA00(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1[2].__vftable = off_100213BA0;
  v2 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(v1 + 2);

  operator delete();
}

void *sub_10018FAB0(void *a1, uint64_t a2)
{
  sub_10009C1E4((a1 + 2), a2);
  *a1 = off_100230B60;
  a1[2] = off_100230BC8;
  a1[1] = off_100230B88;
  return a1;
}

std::exception *sub_10018FB34(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_100213BA0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
  return a1;
}

void sub_10018FBB0(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_100213BA0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_10018FC4C(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_100213BA0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_10018FCD0(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_100213BA0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_10018FD70(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v2 = v1 + 2;
  v1[2].__vftable = off_100213BA0;
  v3 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_10018FE08(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1[2].__vftable = off_100213BA0;
  v2 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(v1 + 2);

  operator delete();
}

void *sub_10018FF2C(void *a1, uint64_t *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100230C00;
  sub_100190024(a1 + 3, a2, a3);
  return a1;
}

void sub_10018FFA8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100230C00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100190024(void *a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = off_100230C50;
    a1[1] = v5;
    a1[2] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *a1 = off_100230C50;
    a1[1] = v5;
    a1[2] = 0;
  }

  v6 = a3[1];
  a1[3] = *a3;
  a1[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    sub_10000367C(v4);
  }

  return a1;
}

void sub_100190488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete[]();
}

void sub_10019051C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v4 = **a3;
  switch(v4)
  {
    case 4:
      sub_1001914B8(a2, a3, x8_0);
      break;
    case 2:
      sub_10019141C(a2, a3, x8_0);
      break;
    case 1:
      sub_100191380(a2, a3, x8_0);
      break;
    default:
      sub_100191554(a1, a2, a3, x8_0);
      break;
  }
}

uint64_t sub_100190554(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = v2[6];
  if (v2[4] == 5)
  {
    v4 = v2[8];
  }

  else
  {
    v4 = 8 * v2[3];
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

void sub_100190584(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  v6 = v5[6];
  if (v5[4] == 5)
  {
    v7 = v5[8];
  }

  else
  {
    v7 = 8 * v5[3];
  }

  v8 = (v6 + v7) >> 3;
  if (a2[1] == v8 + 5)
  {
    v9 = *a2 + v8 + 5;
    *(&v15.__r_.__value_.__s + 23) = 4;
    LODWORD(v15.__r_.__value_.__l.__data_) = *(v9 - 5);
    v15.__r_.__value_.__s.__data_[4] = 0;
    if (!std::string::compare(&v15, "CKIE"))
    {
      v11 = *a2;
      v10 = 1;
    }

    else
    {
      *&v13 = "std::expected<std::span<std::byte>, diskimage_err> crypto::crypto_format_auth_table_reader::verify_decrypted_blob(const std::span<std::byte> &)";
      *(&v13 + 1) = 113;
      v14 = 16;
      sub_10007F7BC(v16, &v13);
      sub_1000026BC(v17, "crypto_format: cookie differs", 29);
      std::ostream::~ostream();
      sub_100085ED4(v16);
      std::ios::~ios();
      v8 = std::generic_category();
      v10 = 0;
      v11 = 35;
    }

    *a3 = v11;
    *(a3 + 8) = v8;
    *(a3 + 16) = v10;
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v15.__r_.__value_.__r.__words[0] = "std::expected<std::span<std::byte>, diskimage_err> crypto::crypto_format_auth_table_reader::verify_decrypted_blob(const std::span<std::byte> &)";
    v15.__r_.__value_.__l.__size_ = 113;
    LODWORD(v15.__r_.__value_.__r.__words[2]) = 16;
    sub_100193E84(v16, &v15);
    sub_1000026BC(v17, "crypto_format: blob length differs", 34);
    std::ostream::~ostream();
    sub_1001940B8(v16);
    std::ios::~ios();
    v12 = std::generic_category();
    *a3 = 35;
    *(a3 + 8) = v12;
    *(a3 + 16) = 0;
  }
}

void sub_100190728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  sub_10007F8E4(&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_100190764(void *a1)
{
  *a1 = off_100230C50;
  v2 = a1[4];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_10000367C(v3);
  }

  return a1;
}

void sub_1001907BC(void *a1)
{
  *a1 = off_100230C50;
  v2 = a1[4];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_10000367C(v3);
  }

  operator delete();
}

void sub_100190834(void *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 2) < a2)
  {
    if (a2 < 0xCCCCCCCCCCCCCCDLL)
    {
      sub_100182664(a1, a2);
    }

    sub_100036CAC();
  }
}

void *sub_1001908F0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100190A5C(a1, a2);
  *a1 = off_100230CC8;
  a1[45] = &off_100230DC8;
  a1[46] = &off_100230DF0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100230CC8;
  a1[45] = off_100230D50;
  a1[46] = off_100230D78;
  return a1;
}

void sub_1001909F4(_Unwind_Exception *a1)
{
  sub_100190B24(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100190A18(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100190B24(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100190A5C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100230E60;
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

void sub_100190B0C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100190B24(uint64_t a1)
{
  *a1 = &off_100230E60;
  sub_100190F64(a1);
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

void sub_100190C90(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100190B24(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100190CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100190D34(_BYTE *a1, int a2)
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

uint64_t sub_100190DA0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100190B24(v1);

  return std::ios::~ios();
}

void sub_100190DEC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100190B24(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100190E50(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100190B24(v1);

  return std::ios::~ios();
}

void sub_100190EB0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100190B24(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100190F2C(uint64_t a1)
{
  sub_100190B24(a1);

  operator delete();
}

uint64_t sub_100190F64(uint64_t a1)
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
        sub_1001910D8((a1 + 72), __p);
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

void sub_1001910B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1001910D8(uint64_t *a1, uint64_t *a2)
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
    v26 = 258;
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
      v26 = 258;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t *sub_1001912BC(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100191338(result, a4);
  }

  return result;
}

void sub_10019131C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100191338(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    sub_100182664(a1, a2);
  }

  sub_100036CAC();
}

uint64_t sub_100191380@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v5[0] = off_100231320;
  v5[1] = a2;
  v5[3] = v5;
  sub_100191780(a3, 0x268uLL, x8_0);
  return sub_10019310C(v5);
}

void sub_100191408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10019310C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10019141C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v5[0] = off_1002313B0;
  v5[1] = a2;
  v5[3] = v5;
  sub_100191780(a3, 0x234uLL, x8_0);
  return sub_10019310C(v5);
}

void sub_1001914A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10019310C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001914B8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v5[0] = off_100231430;
  v5[1] = a2;
  v5[3] = v5;
  sub_100191780(a3, 0x22CuLL, x8_0);
  return sub_10019310C(v5);
}

void sub_100191540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10019310C(va);
  _Unwind_Resume(a1);
}

void sub_100191554(uint64_t a1@<X0>, uint64_t a2@<X1>, int **a3@<X2>, uint64_t a4@<X8>)
{
  sub_100036D48(&v30, *(*a3 + 3));
  v8 = *(a1 + 24);
  v9 = v30;
  v10 = *(*a3 + 3);
  v11 = *(*a3 + 1);
  v12 = *(sub_10019E2E8() + 1);
  v21 = v9;
  v22 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = v10;
  v24 = v11;
  v25 = v10;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v13 = (*(*v8 + 128))(v8, &v21);
  if (v22)
  {
    sub_10000367C(v22);
  }

  if (*(*a3 + 3) == v13)
  {
    v14 = **a3;
    v16 = v30;
    v15 = v31;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    *a4 = a2;
    *(a4 + 8) = 15;
    *(a4 + 12) = v14;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    *(a4 + 16) = 0;
    sub_100036BE0((a4 + 16), v16, v15, v15 - v16);
    *(a4 + 632) = 3;
    *(a4 + 640) = 1;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *&v19 = "diskimage_err> crypto::crypto_format_auth_table_reader::read_unknown_entry(const auth_table &, const std::vector<auth_entry_descriptor>::const_iterator &)";
    *(&v19 + 1) = 74;
    v20 = 16;
    sub_1001934B8(&v21, &v19);
    sub_1000026BC(v29, "Can't read custom encryption entry header, error ", 49);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_1001936EC(&v21);
    std::ios::~ios();
    if (v13 <= 0)
    {
      v17 = -v13;
    }

    else
    {
      v17 = 5;
    }

    v18 = std::generic_category();
    *a4 = v17;
    *(a4 + 8) = v18;
    *(a4 + 640) = 0;
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }
}

void sub_100191728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14)
{
  v16 = *(v14 - 88);
  if (v16)
  {
    *(v14 - 80) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100191780@<X0>(uint64_t a2@<X2>, size_t a3@<X3>, uint64_t a5@<X8>)
{
  if (*(*a2 + 12) == a3)
  {
    operator new[]();
  }

  *&v8 = "diskimage_err> crypto::crypto_format_auth_table_reader::_read_auth_entry_specialized(const auth_table &, const std::vector<auth_entry_descriptor>::const_iterator &, size_t, const std::function<auth_table::entry_variant (const char *)>)";
  *(&v8 + 1) = 219;
  v9 = 16;
  sub_100191B6C(&v10, &v8);
  sub_1000026BC(v11, "encryption: header size mismatch", 32);
  std::ostream::~ostream();
  sub_100191F60(&v10);
  std::ios::~ios();
  result = make_error_code(161);
  *a5 = result;
  *(a5 + 8) = v7;
  *(a5 + 640) = 0;
  return result;
}

void *sub_100191B6C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100191E98(a1, a2);
  *a1 = off_100230EE8;
  a1[45] = &off_100230FE8;
  a1[46] = &off_100231010;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100230EE8;
  a1[45] = off_100230F70;
  a1[46] = off_100230F98;
  return a1;
}

void sub_100191C70(_Unwind_Exception *a1)
{
  sub_100191F60(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100191C94(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100191F60(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100191CD8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001926F8(a1, a2);
  *a1 = off_100231108;
  a1[45] = &off_100231208;
  a1[46] = &off_100231230;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100231108;
  a1[45] = off_100231190;
  a1[46] = off_1002311B8;
  return a1;
}

void sub_100191DDC(_Unwind_Exception *a1)
{
  sub_1001927C0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100191E00(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001927C0(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100191E44(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10002870C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_100191E98(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100231080;
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

void sub_100191F48(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100191F60(uint64_t a1)
{
  *a1 = &off_100231080;
  sub_1001923A0(a1);
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

void sub_1001920CC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100191F60(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100192134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100192170(_BYTE *a1, int a2)
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

uint64_t sub_1001921DC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100191F60(v1);

  return std::ios::~ios();
}

void sub_100192228(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100191F60(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10019228C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100191F60(v1);

  return std::ios::~ios();
}

void sub_1001922EC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100191F60(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100192368(uint64_t a1)
{
  sub_100191F60(a1);

  operator delete();
}

uint64_t sub_1001923A0(uint64_t a1)
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
        sub_100192514((a1 + 72), __p);
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

void sub_1001924EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100192514(uint64_t *a1, uint64_t *a2)
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
    v26 = 270;
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
      v26 = 270;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001926F8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002312A0;
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

void sub_1001927A8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001927C0(uint64_t a1)
{
  *a1 = &off_1002312A0;
  sub_100192C00(a1);
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

void sub_10019292C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001927C0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100192994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001929D0(_BYTE *a1, int a2)
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

uint64_t sub_100192A3C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001927C0(v1);

  return std::ios::~ios();
}

void sub_100192A88(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001927C0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100192AEC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001927C0(v1);

  return std::ios::~ios();
}

void sub_100192B4C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001927C0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100192BC8(uint64_t a1)
{
  sub_1001927C0(a1);

  operator delete();
}

uint64_t sub_100192C00(uint64_t a1)
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
        sub_100192D74((a1 + 72), __p);
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

void sub_100192D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100192D74(uint64_t *a1, uint64_t *a2)
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
    v26 = 276;
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
      v26 = 276;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100192FC8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100231320;
  a2[1] = v2;
  return result;
}

void *sub_100192FF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10017F064(v10, *a2);
  v5 = v11;
  v6 = v15;
  *a3 = *(a1 + 8);
  *(a3 + 8) = 15;
  v7 = v10[1];
  *(a3 + 12) = v10[0];
  *(a3 + 28) = v7;
  *(a3 + 44) = v10[2];
  *(a3 + 60) = v5;
  v8 = v13;
  *(a3 + 64) = v12;
  *(a3 + 80) = v8;
  *(a3 + 96) = v14;
  *(a3 + 112) = v6;
  result = memcpy((a3 + 116), v16, 0x200uLL);
  *(a3 + 632) = 0;
  return result;
}

uint64_t sub_1001930C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10019310C(uint64_t a1)
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

uint64_t sub_1001931FC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002313B0;
  a2[1] = v2;
  return result;
}

void *sub_100193228@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10017E8B8(&v8, *a2);
  v5 = v8;
  *a3 = *(a1 + 8);
  *(a3 + 8) = 15;
  *(a3 + 12) = v5;
  v6 = v10;
  *(a3 + 16) = v9;
  *(a3 + 32) = v6;
  *(a3 + 48) = v11;
  result = memcpy((a3 + 64), v12, 0x200uLL);
  *(a3 + 632) = 1;
  return result;
}

uint64_t sub_1001932D8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100193394(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100231430;
  a2[1] = v2;
  return result;
}

void *sub_1001933C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10017F5C0(&v8, *a2);
  v5 = v8;
  *a3 = *(a1 + 8);
  *(a3 + 8) = 15;
  *(a3 + 12) = v5;
  v6 = v10;
  *(a3 + 16) = v9;
  *(a3 + 32) = v6;
  *(a3 + 48) = v11;
  result = memcpy((a3 + 56), v12, 0x200uLL);
  *(a3 + 632) = 2;
  return result;
}

uint64_t sub_10019346C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1001934B8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100193624(a1, a2);
  *a1 = off_1002314B8;
  a1[45] = &off_1002315B8;
  a1[46] = &off_1002315E0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002314B8;
  a1[45] = off_100231540;
  a1[46] = off_100231568;
  return a1;
}

void sub_1001935BC(_Unwind_Exception *a1)
{
  sub_1001936EC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001935E0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001936EC(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100193624(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100231650;
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

void sub_1001936D4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001936EC(uint64_t a1)
{
  *a1 = &off_100231650;
  sub_100193B2C(a1);
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

void sub_100193858(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001936EC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001938C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001938FC(_BYTE *a1, int a2)
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

uint64_t sub_100193968(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001936EC(v1);

  return std::ios::~ios();
}

void sub_1001939B4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001936EC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100193A18(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001936EC(v1);

  return std::ios::~ios();
}

void sub_100193A78(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001936EC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100193AF4(uint64_t a1)
{
  sub_1001936EC(a1);

  operator delete();
}

uint64_t sub_100193B2C(uint64_t a1)
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
        sub_100193CA0((a1 + 72), __p);
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

void sub_100193C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100193CA0(uint64_t *a1, uint64_t *a2)
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
    v26 = 300;
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
      v26 = 300;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_100193E84(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100193FF0(a1, a2);
  *a1 = off_1002316D8;
  a1[45] = &off_1002317D8;
  a1[46] = &off_100231800;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002316D8;
  a1[45] = off_100231760;
  a1[46] = off_100231788;
  return a1;
}

void sub_100193F88(_Unwind_Exception *a1)
{
  sub_1001940B8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100193FAC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001940B8(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100193FF0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100231870;
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

void sub_1001940A0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001940B8(uint64_t a1)
{
  *a1 = &off_100231870;
  sub_1001944F8(a1);
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

void sub_100194224(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001940B8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10019428C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001942C8(_BYTE *a1, int a2)
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

uint64_t sub_100194334(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001940B8(v1);

  return std::ios::~ios();
}

void sub_100194380(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001940B8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001943E4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001940B8(v1);

  return std::ios::~ios();
}

void sub_100194444(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001940B8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001944C0(uint64_t a1)
{
  sub_1001940B8(a1);

  operator delete();
}

uint64_t sub_1001944F8(uint64_t a1)
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
        sub_10019466C((a1 + 72), __p);
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

void sub_100194644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10019466C(uint64_t *a1, uint64_t *a2)
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
    v26 = 348;
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
      v26 = 348;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100194850(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022FE50;
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

void sub_100194900(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100194918(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100230070;
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

void sub_1001949C8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t **sub_1001949E0(uint64_t **a1, uint64_t a2)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 16))
  {
    if (*(a2 + 16) == 3)
    {
      if (v4 < v5)
      {
        return a1;
      }
    }

    else if (v5 >= v4)
    {
      return a1;
    }
  }

  else if (v5 >= v4 || v5 + 1 >= v4)
  {
    return a1;
  }

  v7 = sub_10000C83C(a1, a2);
  v8 = sub_10000C534(a1, a2);
  if (v7 == v8)
  {
    return a1;
  }

  v9 = v8;
  v10 = *v8;
  if (*v8)
  {
    do
    {
      v11 = v10;
      v10 = *(v10 + 8);
    }

    while (v10);
  }

  else
  {
    v12 = v8;
    do
    {
      v11 = v12[2];
      v13 = *v11 == v12;
      v12 = v11;
    }

    while (v13);
  }

  v19 = *(v7 + 32);
  v20 = *(v7 + 48);
  sub_10000C6B4(&v19, a2, &v21);
  v19 = *(v11 + 32);
  v20 = *(v11 + 48);
  sub_10000C778(&v19, a2, &v17);
  v19 = v17;
  LOBYTE(v20) = v18;
  sub_10000C880(a1, v7, v9);
  v14 = v21;
  if (v23)
  {
    if (v23 == 3)
    {
      if (v22 < v21)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else
  {
    if (v21 >= v22)
    {
      goto LABEL_26;
    }

    v14 = v21 + 1;
  }

  if (v14 < v22)
  {
LABEL_25:
    sub_10000BB3C(a1, &v21, &v21);
  }

LABEL_26:
  v15 = v19;
  if (v20)
  {
    if (v20 == 3)
    {
      if (*(&v19 + 1) < v19)
      {
        return a1;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (v19 >= *(&v19 + 1))
    {
      return a1;
    }

    v15 = v19 + 1;
  }

  if (v15 < *(&v19 + 1))
  {
LABEL_33:
    sub_10000BB3C(a1, &v19, &v19);
  }

  return a1;
}

uint64_t sub_100194B9C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100230290;
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

void sub_100194C4C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100194C64(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002304B0;
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

void sub_100194D14(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_100194D2C(void *result, void **a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = a2[1];
  v6 = *(a3 + 8);
  v7 = *a4;
  v8 = *a5;
  if (v5 != v6 && v7 != v8)
  {
    v10 = result;
    v11 = *a2;
    do
    {
      result = sub_10014FEB0(v10, v5, v7);
      if (result != v5[2])
      {
        result = sub_100150200(v10, v5, result, v7);
      }

      v5 += 16;
      if ((v5 - *v11) == 4096)
      {
        v12 = v11[1];
        ++v11;
        v5 = v12;
      }

      if (v5 == v6)
      {
        break;
      }

      v7 += 24;
    }

    while (v7 != v8);
  }

  return result;
}

uint64_t sub_100194E6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void *sub_100194F40(uint64_t a1, void **a2, const void **a3, size_t *a4)
{
  v4 = *a3;
  memcpy(*a2, *a3, *a4);
  return v4;
}

uint64_t sub_100194F7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100194FC8(uint64_t a1, uint64_t a2)
{
  *(a1 + 80) = a2;
  v2 = *(a1 + 64);
  while (v2 != *(a1 + 40))
  {
    v4 = (v2 + 112);
    if ((*(*(v2 + 112) + 4) & 1) == 0)
    {
      *&v7 = "crypto::details::unset_futures_errors_reporter<boost::iterators::transform_iterator<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/crypto/crypto_format.cpp:712:35), std::__deque_iterator<crypto_format_backend::promise_io_t, crypto_format_backend::promise_io_t *, crypto_format_backend::promise_io_t &, crypto_format_backend::promise_io_t **, long>>>::report_errors(int) [It = boost::iterators::transform_iterator<(lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/crypto/crypto_format.cpp:712:35), std::__deque_iterator<crypto_format_backend::promise_io_t, crypto_format_backend::promise_io_t *, crypto_format_backend::promise_io_t &, crypto_format_backend::promise_io_t **, long>>]";
      *(&v7 + 1) = 431;
      v8 = 16;
      sub_10016EAA8(v9, &v7);
      sub_1000026BC(v10, "diskimageuio: report err ", 25);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_10016ECDC(v9);
      std::ios::~ios();
      v5 = *v4;
      *v5 = *(a1 + 80);
      *(v5 + 4) = 1;
      sub_10002967C(v4);
      v2 = *(a1 + 64);
    }

    v2 += 128;
    *(a1 + 64) = v2;
    v6 = *(a1 + 56);
    if (v2 - *v6 == 4096)
    {
      *(a1 + 56) = v6 + 1;
      v2 = v6[1];
      *(a1 + 64) = v2;
    }
  }
}

void sub_100195100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10016EBD0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100195114(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002306D0;
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

void sub_1001951C4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001951DC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002308F0;
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

void sub_10019528C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_100195330(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020B9C0;
  sub_10018B8A0(a1 + 3, a2, a3);
}

void sub_10019538C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, off_t a5, char a6)
{
  *a1 = a3;
  *(a1 + 8) = 0;
  v6 = *a4;
  *a4 = 0;
  *(a1 + 16) = v6;
  *(a1 + 24) = 1;
  operator new();
}

void sub_1001954D8(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v17 = *(v15 + 16);
  *(v15 + 16) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17, a2, a3, a4, a5, a6, a7, a8);
  }

  v18 = *(v15 + 8);
  *(v15 + 8) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100195588(uint64_t a1)
{
  v2 = (*(*(a1 + 8) + 16) + 7) >> 3;
  v3 = (*(**(a1 + 16) + 40))(*(a1 + 16));
  v4 = v3 == v2 || v3 == v2 + 16;
  v5 = v4;
  if (v4)
  {
    v6 = v3 - v2;
    v7 = *(*(a1 + 8) + 8);
    v8 = *(sub_10019E2E8() + 1);
    *&v19 = v7;
    *(&v19 + 1) = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v20 = v2;
    v21 = v6;
    v22 = v2;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v9 = (*(**(a1 + 16) + 128))(*(a1 + 16), &v19);
    if (v2 != v9)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      sub_100002148(v17);
      sub_1000026BC(v17, "Failed reading ", 15);
      sub_100196C2C(v17, a1);
      sub_100004290(exception, v17, v9);
    }

    if (sub_1000E0464())
    {
      *&v15 = "sparse_bundles::mapped_blocks_t::load_file()";
      *(&v15 + 1) = 42;
      v16 = 2;
      sub_100195E9C(v17, &v15);
      sub_1000026BC(v18, "Found a valid file for ", 23);
      sub_100196C2C(v18, a1);
      std::ostream::~ostream();
      sub_100196F60(v17);
      std::ios::~ios();
    }

    *(a1 + 24) = 0;
    if (*(&v19 + 1))
    {
      sub_10000367C(*(&v19 + 1));
    }
  }

  else if (v3)
  {
    *&v19 = "sparse_bundles::mapped_blocks_t::load_file()";
    *(&v19 + 1) = 42;
    LODWORD(v20) = 16;
    sub_100196008(v17, &v19);
    sub_1000026BC(v18, "invalid file size for ", 22);
    sub_100196C2C(v18, a1);
    sub_1000026BC(v18, ", current is ", 13);
    std::ostream::operator<<();
    sub_1000026BC(v18, " while expected is ", 19);
    std::ostream::operator<<();
    sub_1000026BC(v18, ", truncating", 12);
    std::ostream::~ostream();
    sub_1001976F8(v17);
    std::ios::~ios();
    v10 = (*(**(a1 + 16) + 56))(*(a1 + 16), 0);
    if (v10)
    {
      v11 = v10;
      v12 = __cxa_allocate_exception(0x40uLL);
      sub_100002148(v17);
      sub_1000026BC(v17, "Failed truncating ", 18);
      sub_100196C2C(v17, a1);
      sub_100004290(v12, v17, v11);
    }
  }

  else if (sub_1000E0464())
  {
    *&v19 = "sparse_bundles::mapped_blocks_t::load_file()";
    *(&v19 + 1) = 42;
    LODWORD(v20) = 2;
    sub_100196174(v17, &v19);
    sub_1000026BC(v18, "file of ", 8);
    sub_100196C2C(v18, a1);
    sub_1000026BC(v18, " was just created (truncated)", 29);
    std::ostream::~ostream();
    sub_100197E90(v17);
    std::ios::~ios();
  }

  return v5;
}

void sub_10019595C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000022B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100195A08(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = a2 + a3 - 1;
  result = sub_1000E0464();
  if (result)
  {
    *&v10 = "sparse_bundles::mapped_blocks_t::map_range(uint64_t, uint64_t)";
    *(&v10 + 1) = 42;
    v11 = 2;
    sub_100196888(v12, &v10);
    sub_100196C2C(v13, a1);
    sub_1000026BC(v13, " - map_range: [", 15);
    v8 = v13[0];
    *(&v13[1] + *(v13[0] - 24)) |= 0x200u;
    *(&v13[1] + *(v8 - 24)) = *(&v13[1] + *(v8 - 24)) & 0xFFFFFFB5 | 8;
    std::ostream::operator<<();
    sub_1000026BC(v13, "-", 1);
    std::ostream::operator<<();
    v9 = v13[0];
    *(&v13[1] + *(v13[0] - 24)) &= ~0x200u;
    *(&v13[1] + *(v9 - 24)) = *(&v13[1] + *(v9 - 24)) & 0xFFFFFFB5 | 2;
    sub_1000026BC(v13, "]", 1);
    std::ostream::~ostream();
    sub_100199558(v12);
    result = std::ios::~ios();
  }

  if (a3)
  {
    result = sub_1000B1524(*(a1 + 8), a2 >> 12, v6 >> 12, 1);
    if (result)
    {
      *(a1 + 24) = 1;
    }
  }

  return result;
}

void sub_100195C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1001969B0(va);
  _Unwind_Resume(a1);
}

void sub_100195C18(void *a1)
{
  (***a1)(*a1);
  sub_100044490(&__p);
  operator new();
}

void sub_100195CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100195DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1001A3EE0();
  }

  _Unwind_Resume(exception_object);
}

void sub_100195E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1001A3EE0();
  }

  _Unwind_Resume(exception_object);
}

void *sub_100195E9C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100199A58(a1, a2);
  *a1 = off_1002319F8;
  a1[45] = &off_100231AF8;
  a1[46] = &off_100231B20;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002319F8;
  a1[45] = off_100231A80;
  a1[46] = off_100231AA8;
  return a1;
}

void sub_100195FA0(_Unwind_Exception *a1)
{
  sub_100196F60(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100195FC4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100196F60(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100196008(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100199B20(a1, a2);
  *a1 = off_100231C18;
  a1[45] = &off_100231D18;
  a1[46] = &off_100231D40;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100231C18;
  a1[45] = off_100231CA0;
  a1[46] = off_100231CC8;
  return a1;
}

void sub_10019610C(_Unwind_Exception *a1)
{
  sub_1001976F8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100196130(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001976F8(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100196174(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100199BE8(a1, a2);
  *a1 = off_100231E38;
  a1[45] = &off_100231F38;
  a1[46] = &off_100231F60;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100231E38;
  a1[45] = off_100231EC0;
  a1[46] = off_100231EE8;
  return a1;
}

void sub_100196278(_Unwind_Exception *a1)
{
  sub_100197E90(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10019629C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100197E90(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1001962EC(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(*(a1 + 8) + 16) + 7;
    if ((*(**(a1 + 16) + 40))(*(a1 + 16)) == v2 >> 3 || (v3 = (*(**(a1 + 16) + 56))(*(a1 + 16), 0), !v3))
    {
      v4 = v2 >> 3;
      *(a1 + 24) = 0;
      v5 = *(a1 + 16);
      v6 = *(*(a1 + 8) + 8);
      v7 = *(sub_10019E2E8() + 1);
      v11 = v6;
      v12 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = v4;
      v14 = 0;
      v15 = v4;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v3 = (*(*v5 + 120))(v5, &v11);
      if (v12)
      {
        sub_10000367C(v12);
      }

      if (v4 == v3)
      {
        v3 = (*(**(a1 + 16) + 16))(*(a1 + 16), 1);
        if (v3)
        {
          *(a1 + 24) = 1;
        }

        if (sub_1000E0464())
        {
          *&v9 = "sparse_bundles::mapped_blocks_t::flush()";
          *(&v9 + 1) = 38;
          v10 = 2;
          sub_10019671C(&v11, &v9);
          sub_1000026BC(v19, "Flushed ", 8);
          sub_100196C2C(v19, a1);
          sub_1000026BC(v19, ", res=", 6);
          std::ostream::operator<<();
          std::ostream::~ostream();
          sub_100198DC0(&v11);
          std::ios::~ios();
        }
      }

      else
      {
        *(a1 + 24) = 1;
      }
    }
  }

  else
  {
    if (sub_1000E0464())
    {
      *&v9 = "sparse_bundles::mapped_blocks_t::flush()";
      *(&v9 + 1) = 38;
      v10 = 2;
      sub_1001965B0(&v11, &v9);
      sub_100196C2C(v19, a1);
      sub_1000026BC(v19, " is clean, skipping flush", 25);
      std::ostream::~ostream();
      sub_100198628(&v11);
      std::ios::~ios();
    }

    return 0;
  }

  return v3;
}

void sub_100196578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100196844(va);
  _Unwind_Resume(a1);
}

void *sub_1001965B0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100199CB0(a1, a2);
  *a1 = off_100232058;
  a1[45] = &off_100232158;
  a1[46] = &off_100232180;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100232058;
  a1[45] = off_1002320E0;
  a1[46] = off_100232108;
  return a1;
}

void sub_1001966B4(_Unwind_Exception *a1)
{
  sub_100198628(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001966D8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100198628(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10019671C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100199D78(a1, a2);
  *a1 = off_100232278;
  a1[45] = &off_100232378;
  a1[46] = &off_1002323A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100232278;
  a1[45] = off_100232300;
  a1[46] = off_100232328;
  return a1;
}

void sub_100196820(_Unwind_Exception *a1)
{
  sub_100198DC0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100196844(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100198DC0(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100196888(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100199E40(a1, a2);
  *a1 = off_100232498;
  a1[45] = &off_100232598;
  a1[46] = &off_1002325C0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100232498;
  a1[45] = off_100232520;
  a1[46] = off_100232548;
  return a1;
}

void sub_10019698C(_Unwind_Exception *a1)
{
  sub_100199558(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001969B0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100199558(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1001969F4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  result = sub_1000E0464();
  if (result)
  {
    *&v11 = "sparse_bundles::mapped_blocks_t::unmap_interval(uint64_t, uint64_t)";
    *(&v11 + 1) = 47;
    v12 = 2;
    sub_1000038C4(v13, &v11);
    sub_100196C2C(v14, a1);
    sub_1000026BC(v14, " - unmap_range: [", 17);
    v7 = v14[0];
    *(&v14[1] + *(v14[0] - 24)) |= 0x200u;
    *(&v14[1] + *(v7 - 24)) = *(&v14[1] + *(v7 - 24)) & 0xFFFFFFB5 | 8;
    std::ostream::operator<<();
    sub_1000026BC(v14, "-", 1);
    std::ostream::operator<<();
    v8 = v14[0];
    *(&v14[1] + *(v14[0] - 24)) &= ~0x200u;
    *(&v14[1] + *(v8 - 24)) = *(&v14[1] + *(v8 - 24)) & 0xFFFFFFB5 | 2;
    sub_1000026BC(v14, "]", 1);
    std::ostream::~ostream();
    sub_100003AF8(v13);
    result = std::ios::~ios();
  }

  if (a3 != a2)
  {
    v9 = a2 >> 12;
    v10 = a3 >> 12;
    if ((a2 & 0xFFF) != 0)
    {
      if (v9 == v10)
      {
        return result;
      }

      ++v9;
    }

    if ((~a3 & 0xFFF) != 0)
    {
      if (v9 == v10)
      {
        return result;
      }

      --v10;
    }

    result = sub_1000B1524(*(a1 + 8), v9, v10, 0);
    if (result)
    {
      *(a1 + 24) = 1;
    }
  }

  return result;
}

void sub_100196C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000039EC(va);
  _Unwind_Resume(a1);
}

void *sub_100196C2C(void *a1, void *a2)
{
  v3 = sub_1000026BC(a1, "mapped blocks of band ", 22);
  *(v3 + *(*v3 - 24) + 8) = *(v3 + *(*v3 - 24) + 8) & 0xFFFFFFB5 | 8;
  v4 = std::ostream::operator<<();
  *(v4 + *(*v4 - 24) + 8) = *(v4 + *(*v4 - 24) + 8) & 0xFFFFFFB5 | 2;
  return a1;
}

uint64_t sub_100196CC8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100196F60(v1);

  return std::ios::~ios();
}

uint64_t sub_100196D14(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100196F60(v1);

  return std::ios::~ios();
}

void sub_100196D74(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100196F60(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100196DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100196E18(_BYTE *a1, int a2)
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

void sub_100196E84(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100196F60(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100196EE8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100196F60(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100196F60(uint64_t a1)
{
  *a1 = &off_100231B90;
  sub_1001970CC(a1);
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

uint64_t sub_1001970CC(uint64_t a1)
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
        sub_10019727C((a1 + 72), __p);
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

void sub_100197218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100197244(uint64_t a1)
{
  sub_100196F60(a1);

  operator delete();
}

int *sub_10019727C(uint64_t *a1, uint64_t *a2)
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
    v26 = 89;
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
      v26 = 89;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100197460(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001976F8(v1);

  return std::ios::~ios();
}

uint64_t sub_1001974AC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001976F8(v1);

  return std::ios::~ios();
}

void sub_10019750C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001976F8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100197574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001975B0(_BYTE *a1, int a2)
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

void sub_10019761C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001976F8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100197680(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001976F8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001976F8(uint64_t a1)
{
  *a1 = &off_100231DB0;
  sub_100197864(a1);
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

uint64_t sub_100197864(uint64_t a1)
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
        sub_100197A14((a1 + 72), __p);
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

void sub_1001979B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001979DC(uint64_t a1)
{
  sub_1001976F8(a1);

  operator delete();
}

int *sub_100197A14(uint64_t *a1, uint64_t *a2)
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
    v26 = 93;
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
      v26 = 93;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100197BF8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100197E90(v1);

  return std::ios::~ios();
}

uint64_t sub_100197C44(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100197E90(v1);

  return std::ios::~ios();
}

void sub_100197CA4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100197E90(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100197D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100197D48(_BYTE *a1, int a2)
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

void sub_100197DB4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100197E90(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100197E18(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100197E90(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100197E90(uint64_t a1)
{
  *a1 = &off_100231FD0;
  sub_100197FFC(a1);
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

uint64_t sub_100197FFC(uint64_t a1)
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
        sub_1001981AC((a1 + 72), __p);
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

void sub_100198148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100198174(uint64_t a1)
{
  sub_100197E90(a1);

  operator delete();
}

int *sub_1001981AC(uint64_t *a1, uint64_t *a2)
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
    v26 = 99;
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
      v26 = 99;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100198390(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100198628(v1);

  return std::ios::~ios();
}

uint64_t sub_1001983DC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100198628(v1);

  return std::ios::~ios();
}

void sub_10019843C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100198628(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001984A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001984E0(_BYTE *a1, int a2)
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

void sub_10019854C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100198628(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001985B0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100198628(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100198628(uint64_t a1)
{
  *a1 = &off_1002321F0;
  sub_100198794(a1);
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

uint64_t sub_100198794(uint64_t a1)
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
        sub_100198944((a1 + 72), __p);
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

void sub_1001988E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10019890C(uint64_t a1)
{
  sub_100198628(a1);

  operator delete();
}

int *sub_100198944(uint64_t *a1, uint64_t *a2)
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
    v26 = 114;
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
      v26 = 114;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100198B28(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100198DC0(v1);

  return std::ios::~ios();
}

uint64_t sub_100198B74(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100198DC0(v1);

  return std::ios::~ios();
}

void sub_100198BD4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100198DC0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100198C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100198C78(_BYTE *a1, int a2)
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

void sub_100198CE4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100198DC0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100198D48(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100198DC0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100198DC0(uint64_t a1)
{
  *a1 = &off_100232410;
  sub_100198F2C(a1);
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

uint64_t sub_100198F2C(uint64_t a1)
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
        sub_1001990DC((a1 + 72), __p);
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

void sub_100199078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001990A4(uint64_t a1)
{
  sub_100198DC0(a1);

  operator delete();
}

int *sub_1001990DC(uint64_t *a1, uint64_t *a2)
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
    v26 = 141;
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
      v26 = 141;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001992C0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100199558(v1);

  return std::ios::~ios();
}

uint64_t sub_10019930C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100199558(v1);

  return std::ios::~ios();
}

void sub_10019936C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100199558(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001993D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100199410(_BYTE *a1, int a2)
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

void sub_10019947C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100199558(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001994E0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100199558(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100199558(uint64_t a1)
{
  *a1 = &off_100232630;
  sub_1001996C4(a1);
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

uint64_t sub_1001996C4(uint64_t a1)
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
        sub_100199874((a1 + 72), __p);
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

void sub_100199810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10019983C(uint64_t a1)
{
  sub_100199558(a1);

  operator delete();
}

int *sub_100199874(uint64_t *a1, uint64_t *a2)
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
    v26 = 150;
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
      v26 = 150;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100199A58(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100231B90;
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

void sub_100199B08(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100199B20(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100231DB0;
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

void sub_100199BD0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100199BE8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100231FD0;
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

void sub_100199C98(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100199CB0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002321F0;
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

void sub_100199D60(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100199D78(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100232410;
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

void sub_100199E28(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100199E40(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100232630;
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

void sub_100199EF0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

char *sub_100199F08(unint64_t a1)
{
  if ((atomic_load_explicit(byte_100240C00, memory_order_acquire) & 1) == 0)
  {
    v4 = a1;
    sub_1001A3F14();
    a1 = v4;
  }

  v1 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ HIDWORD(a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v1 >> 47) ^ v1);
  return &unk_100240378 + 64 * ((9 * ((v2 >> 47) ^ v2)) & 0xF);
}

char *sub_100199F94(unint64_t a1)
{
  if ((atomic_load_explicit(byte_100240C08, memory_order_acquire) & 1) == 0)
  {
    v4 = a1;
    sub_1001A3F78();
    a1 = v4;
  }

  v1 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ HIDWORD(a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v1 >> 47) ^ v1);
  return &unk_100240778 + 48 * ((9 * ((v2 >> 47) ^ v2)) & 0xF);
}

uint64_t sub_10019A024(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *result = off_1002326B0;
  *(result + 8) = v2;
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_10019A054(uint64_t a1)
{
  *a1 = off_1002326B0;
  if (*(a1 + 16) == 1)
  {
    v2 = *(a1 + 8);
    if (atomic_fetch_add_explicit(*(a1 + 8), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) == 1)
    {
      sub_10019A218(v2);
    }
  }

  return a1;
}

void sub_10019A0C0(uint64_t a1)
{
  sub_10019A054(a1);

  operator delete();
}

atomic_ullong *sub_10019A0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  result = *(a1 + 8);
  if (v6 == 1)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) == 1)
    {
      sub_10019A218(result);
    }

    *(a1 + 16) = 0;
    v8 = *(a1 + 8);

    return sub_1000F2424(v8, a2, a3);
  }

  else
  {
    *(a3 + 16) = 0;
    *a3 = off_1002326D0;
    *(a3 + 8) = result;
    *(a3 + 24) = a2;
  }

  return result;
}

uint64_t sub_10019A1A0(uint64_t a1)
{
  *a1 = off_1002326D0;
  if (*(a1 + 16) == 1)
  {
    atomic_store(*(a1 + 24), *(a1 + 8));
    sub_10019A218(*(a1 + 8));
  }

  *(a1 + 16) = 0;

  return sub_10019A054(a1);
}

void sub_10019A218(unint64_t a1)
{
  v2 = sub_100199F08(a1);
  std::mutex::lock(v2);
  v3 = sub_100199F94(a1);
  std::condition_variable::notify_all(v3);

  std::mutex::unlock(v2);
}

void sub_10019A268(uint64_t a1)
{
  sub_10019A1A0(a1);

  operator delete();
}

std::mutex *sub_10019A2A0()
{
  result = &unk_100240738;
  v1 = -1024;
  do
  {
    std::mutex::~mutex(result);
    result = (v2 - 64);
    v1 += 64;
  }

  while (v1);
  return result;
}

std::condition_variable *sub_10019A2D8()
{
  result = &unk_100240A48;
  v1 = -768;
  do
  {
    std::condition_variable::~condition_variable(result);
    result = (v2 - 48);
    v1 += 48;
  }

  while (v1);
  return result;
}

void *sub_10019A310(void *a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v2 = "full_fsync";
    v3 = 10;
  }

  else if (a2 == 1)
  {
    v2 = "fsync";
    v3 = 5;
  }

  else if (a2)
  {
    sub_1000026BC(a1, "bad flush type (", 16);
    a1 = std::ostream::operator<<();
    v2 = ")";
    v3 = 1;
  }

  else
  {
    v2 = "barrier";
    v3 = 7;
  }

  return sub_1000026BC(a1, v2, v3);
}

void *sub_10019A3A8(void *a1, uint64_t a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *(v3 + 2);
  *(v3 + 2) = v4 & 0xFFFFFFB5 | 8;
  v18 = 48;
  v5 = sub_100023058(a1, &v18);
  v6 = *v5;
  *(v5 + *(*v5 - 24) + 24) = 2;
  *(v5 + *(v6 - 24) + 8) |= 0x200u;
  sub_1000026BC(v5, "sg: buffer = ", 13);
  v7 = std::ostream::operator<<();
  sub_1000026BC(v7, " [", 2);
  v8 = std::ostream::operator<<();
  v9 = sub_1000026BC(v8, "] ", 2);
  v10 = *v9;
  *(v9 + *(*v9 - 24) + 8) = *(v9 + *(*v9 - 24) + 8) & 0xFFFFFFB5 | 2;
  *(v9 + *(v10 - 24) + 24) = 0;
  *(v9 + *(v10 - 24) + 8) &= ~0x200u;
  sub_1000026BC(v9, " size = ", 8);
  v11 = std::ostream::operator<<();
  sub_1000026BC(v11, " buffer_size = ", 15);
  v12 = std::ostream::operator<<();
  *(v12 + *(*v12 - 24) + 8) = *(v12 + *(*v12 - 24) + 8) & 0xFFFFFFB5 | 8;
  v17 = 48;
  v13 = sub_100023058(v12, &v17);
  v14 = *v13;
  *(v13 + *(*v13 - 24) + 24) = 2;
  *(v13 + *(v14 - 24) + 8) |= 0x200u;
  sub_1000026BC(v13, " offset = ", 10);
  v15 = std::ostream::operator<<();
  sub_1000026BC(v15, " crypto = ", 10);
  std::ostream::operator<<();
  *(a1 + *(*a1 - 24) + 8) = v4;
  return a1;
}

void *sub_10019A650(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = off_100232728;
  return result;
}

uint64_t sub_10019A674(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 104) != 1 || *(a2 + 48) == 0)
  {
    return (*(*a1 + 88))(a1);
  }

  else
  {
    return sub_100150DA8(a2, a1);
  }
}

uint64_t sub_10019A6C0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 104) != 1 || *(a2 + 48) == 0)
  {
    v5 = *(*a1 + 96);

    return v5();
  }

  else
  {
    v11 = 0;
    sub_10015124C(v10, a2, &v11);
    sub_100026638(v7, a2);
    if (v9 == 1)
    {
      v9 = 0;
    }

    v11 = (*(*a1 + 96))(a1, v7);
    if (v8)
    {
      sub_10000367C(v8);
    }

    sub_1001512D4(v10);
    return v11;
  }
}

void sub_10019A7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  if (a11)
  {
    sub_10000367C(a11);
  }

  sub_1001512D4(va);
  _Unwind_Resume(a1);
}

void sub_10019A824(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *(v5 + 4);
    v9[0] = *(v5 + 3);
    v9[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10019A824(v9, a2);
    if (v7)
    {
      sub_10000367C(v7);
    }

    if (v6)
    {

      sub_10000367C(v6);
    }
  }

  else
  {
    v8 = *(a1 + 8);
    *a2 = v4;
    a2[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_10019A930(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_10000367C(v2);
  }

  if (v1)
  {
    sub_10000367C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10019A954(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  {
    v6 = *(a1 + 8);
    v11[0] = v5;
    v11[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *(v5 + 4);
    v9[0] = *(v5 + 3);
    v9[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10019AA90(v9, v11, &v10);
    *a2 = v10;
    if (v7)
    {
      sub_10000367C(v7);
    }

    if (v6)
    {

      sub_10000367C(v6);
    }
  }

  else
  {
    v8 = *(a1 + 8);
    *a2 = *a1;
    *(a2 + 8) = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_10019AA6C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_10000367C(v2);
  }

  if (v1)
  {
    sub_10000367C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10019AA90(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  {
    v8 = *(a1 + 8);
    v12[0] = v7;
    v12[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = *(v7 + 4);
    v11[0] = *(v7 + 3);
    v11[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10019AA90(v11, v12, a3);
    if (v9)
    {
      sub_10000367C(v9);
    }

    if (v8)
    {

      sub_10000367C(v8);
    }
  }

  else
  {
    v10 = a2[1];
    *a3 = *a2;
    a3[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_10019ABA4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_10000367C(v2);
  }

  if (v1)
  {
    sub_10000367C(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10019ABC8(uint64_t a1, const void **a2, uint64_t *a3)
{
  v4 = *a1;
  if (v4 == *a2)
  {
    return 4294967274;
  }

  if (!v4)
  {
    return 4294967294;
  }

  if (!v7)
  {
    return 4294967294;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(v7 + 3);
  v10 = *(v7 + 4);
  v16[0] = v9;
  v16[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v9 == *a2)
  {
    v14 = *a3;
    v13 = a3[1];
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = *(v7 + 4);
    *(v7 + 3) = v14;
    *(v7 + 4) = v13;
    if (v15)
    {
      sub_10000367C(v15);
    }

    v11 = 0;
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = sub_10019ABC8(v16, a2, a3);
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  sub_10000367C(v10);
LABEL_11:
  if (v8)
  {
    sub_10000367C(v8);
  }

  return v11;
}

void sub_10019AD04(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_10000367C(v2);
  }

  if (v1)
  {
    sub_10000367C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10019AD28(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  {
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = v6[3];
    v8 = v6[4];
    *a2 = v9;
    a2[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    if (v7)
    {

      sub_10000367C(v7);
    }
  }

  else
  {
    v10 = *(a1 + 8);
    *a2 = v4;
    a2[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_10019AE10(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1002064C0;
  v5 = a2[1];
  a1[3] = *a2;
  a1[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = off_1002327F8;
  a1[5] = a3;
  sub_10019D8D0();
}

void sub_10019B080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100081A88(va);
  v9 = *(v7 - 40);
  if (v9)
  {
    sub_10000367C(v9);
  }

  _Unwind_Resume(a1);
}

void sub_10019B26C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  v15 = *(v13 - 40);
  if (v15)
  {
    sub_10000367C(v15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10019B2B0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10019DA3C(a1, a2);
  *a1 = off_100232A18;
  a1[45] = &off_100232B18;
  a1[46] = &off_100232B40;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100232A18;
  a1[45] = off_100232AA0;
  a1[46] = off_100232AC8;
  return a1;
}

void sub_10019B3B4(_Unwind_Exception *a1)
{
  sub_10019C408(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10019B3D8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10019C408(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10019B41C(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 24) + 56))(*(a1 + 24));
  if (v4)
  {
    *&v6 = "int BackendSG::truncate(uint64_t)";
    *(&v6 + 1) = 23;
    v7 = 16;
    sub_10019B550(v8, &v6);
    sub_1000026BC(v9, "BackendSG: truncating the inner backend failed, error = ", 56);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10019CBA0(v8);
    std::ios::~ios();
  }

  else
  {
    sub_1000587B8(v8, a1 + 64, a2, 0, *(a1 + 88), *(a1 + 96));
    sub_100024B78(a1 + 64, v8);
    if (*(&v8[0] + 1))
    {
      sub_10000367C(*(&v8[0] + 1));
    }
  }

  return v4;
}

void sub_10019B528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_10000367C(a13);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10019B550(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10019DB04(a1, a2);
  *a1 = off_100232C38;
  a1[45] = &off_100232D38;
  a1[46] = &off_100232D60;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100232C38;
  a1[45] = off_100232CC0;
  a1[46] = off_100232CE8;
  return a1;
}

void sub_10019B654(_Unwind_Exception *a1)
{
  sub_10019CBA0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10019B678(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10019CBA0(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10019B6BC(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1002064C0;
  v5 = a3[1];
  *(a1 + 24) = *a3;
  *(a1 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = off_1002327F8;
  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;
  v7 = *(a2 + 56);
  *(a1 + 56) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100026638(a1 + 64, a2 + 64);
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

void sub_10019B76C(_Unwind_Exception *a1)
{
  v3 = v1[7];
  if (v3)
  {
    sub_10000367C(v3);
  }

  sub_10003B3E0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10019B7D0(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1002064C0;
  v4 = a2[1];
  *(a1 + 24) = *a2;
  *(a1 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 850045863;
  *a1 = off_1002328D0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  sub_100036D48((a1 + 104), a3);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  return a1;
}

void sub_10019B884(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v2);
  sub_10003B3E0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10019B8A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(a1 + 104);
  v5 = v3 % (*(a1 + 112) - v4);
  if (!v5)
  {
    goto LABEL_8;
  }

  if (v3 != v5 && *(a2 + 104) == 1 && *(a2 + 48))
  {
    *&v9 = "BufferedWriteBackend::reset_last_offset(const sg_entry &)";
    *(&v9 + 1) = 39;
    v10 = 16;
    sub_1000BE578(&v11, &v9);
    sub_1000026BC(v19, "BufferedWriteBackend doesn't support per io crypto", 50);
    std::ostream::~ostream();
    sub_1000C70A8(&v11);
    std::ios::~ios();
    return 4294967194;
  }

  v6 = *(sub_10019E2E8() + 1);
  v11 = v4;
  v12 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v5;
  v14 = v3 - v5;
  v15 = v5;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v7 = (*(*a1 + 128))(a1, &v11);
  if (v12)
  {
    sub_10000367C(v12);
  }

  if (v5 == v7)
  {
LABEL_8:
    v7 = 0;
    *(a1 + 128) = v3;
    *(a1 + 136) = 1;
  }

  return v7;
}

void sub_10019B9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000BE6A0(va);
  _Unwind_Resume(a1);
}

unint64_t sub_10019BA24(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 104) != 1 || *(a2 + 48) == 0)
  {
    std::mutex::lock((a1 + 40));
    if ((*(a1 + 136) & 1) != 0 || (v14 = sub_10019B8A4(a1, a2), !v14))
    {
      v5 = *(a1 + 128);
      v6 = *(a1 + 104);
      v7 = *(a1 + 112) - v6;
      v8 = v5 % v7;
      if (v5 % v7)
      {
        v9 = v7 - v8;
        if (v9 >= *(a2 + 16))
        {
          v10 = *(a2 + 16);
        }

        else
        {
          v10 = v9;
        }

        memcpy((v6 + v8), *a2, v10);
        v11 = *(a1 + 104);
        v7 = *(a1 + 112) - v11;
        if (v10 + v8 == v7)
        {
          v12 = *(sub_10019E2E8() + 1);
          v19 = v11;
          v20 = v12;
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v21 = v10 + v8;
          v22 = v5 - v8;
          v23 = v10 + v8;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v14 = (*(**(a1 + 24) + 120))(*(a1 + 24), &v19);
          v13 = v21;
          if (v20)
          {
            sub_10000367C(v20);
          }

          if (v13 != v14)
          {
            goto LABEL_28;
          }

          v7 = *(a1 + 112) - *(a1 + 104);
        }
      }

      else
      {
        v10 = 0;
      }

      v14 = *(a2 + 16);
      v15 = (v14 - v10) / v7 * v7;
      if (v14 - v10 != (v14 - v10) % v7)
      {
        sub_10008A548(&v19, a2, v15, v10, *(a2 + 24) + v10, *(a2 + 32) - v10);
        v14 = (*(**(a1 + 24) + 120))(*(a1 + 24), &v19);
        if (v20)
        {
          sub_10000367C(v20);
        }

        if (v15 != v14)
        {
          goto LABEL_28;
        }

        v10 += v15;
        v14 = *(a2 + 16);
      }

      if (v14 > v10)
      {
        memcpy(*(a1 + 104), (*a2 + v10), v14 - v10);
        v14 = *(a2 + 16);
      }

      *(a1 + 128) += v14;
    }

LABEL_28:
    std::mutex::unlock((a1 + 40));
    return v14;
  }

  *&v17 = "int BufferedWriteBackend::write(const sg_entry &)";
  *(&v17 + 1) = 31;
  v18 = 16;
  sub_10019BCE8(&v19, &v17);
  sub_1000026BC(v27, "BufferedWriteBackend doesn't support per io crypto", 50);
  std::ostream::~ostream();
  sub_10019D338(&v19);
  std::ios::~ios();
  return 4294967194;
}

void sub_10019BCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_10000367C(a13);
  }

  std::mutex::unlock((v13 + 40));
  _Unwind_Resume(a1);
}

void *sub_10019BCE8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10019DCB4(a1, a2);
  *a1 = off_100232E58;
  a1[45] = &off_100232F58;
  a1[46] = &off_100232F80;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100232E58;
  a1[45] = off_100232EE0;
  a1[46] = off_100232F08;
  return a1;
}

void sub_10019BDEC(_Unwind_Exception *a1)
{
  sub_10019D338(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10019BE10(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10019D338(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10019BE54(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 40));
  if (*(a1 + 136) == 1)
  {
    v4 = *(a1 + 104);
    v5 = *(a1 + 112) - v4;
    v6 = *(a1 + 128) % v5;
    if (!v6)
    {
      goto LABEL_11;
    }

    bzero((v4 + v6), v5 - v6);
    v7 = *(a1 + 128);
    v8 = *(a1 + 104);
    v9 = *(a1 + 112);
    v10 = *(sub_10019E2E8() + 1);
    v16 = v8;
    v17 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = v9 - v8;
    v19 = v7 - v6;
    v20 = v9 - v8;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v11 = (*(**(a1 + 24) + 120))(*(a1 + 24), &v16);
    v12 = v11;
    v13 = v11 >= 0 ? 4294967291 : v11;
    v14 = v18;
    if (v17)
    {
      sub_10000367C(v17);
    }

    if (v14 == v12)
    {
LABEL_11:
      v13 = (*(**(a1 + 24) + 16))(*(a1 + 24), a2);
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock((a1 + 40));
  return v13;
}

void sub_10019BF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  std::mutex::unlock((v10 + 40));
  _Unwind_Resume(a1);
}

void sub_10019BFCC(uint64_t a1)
{
  sub_10019D838(a1);

  operator delete();
}

void *sub_10019C024(void *a1)
{
  *a1 = off_1002327F8;
  v2 = a1[9];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    sub_10000367C(v3);
  }

  *a1 = off_1002064C0;
  v4 = a1[4];
  if (v4)
  {
    sub_10000367C(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_10019C0B0(void *a1)
{
  *a1 = off_1002327F8;
  v2 = a1[9];
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    sub_10000367C(v3);
  }

  *a1 = off_1002064C0;
  v4 = a1[4];
  if (v4)
  {
    sub_10000367C(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete();
}

uint64_t sub_10019C170(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10019C408(v1);

  return std::ios::~ios();
}

uint64_t sub_10019C1BC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10019C408(v1);

  return std::ios::~ios();
}

void sub_10019C21C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10019C408(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10019C284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10019C2C0(_BYTE *a1, int a2)
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

void sub_10019C32C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10019C408(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10019C390(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10019C408(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10019C408(uint64_t a1)
{
  *a1 = &off_100232BB0;
  sub_10019C574(a1);
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

uint64_t sub_10019C574(uint64_t a1)
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
        sub_10019C724((a1 + 72), __p);
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

void sub_10019C6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10019C6EC(uint64_t a1)
{
  sub_10019C408(a1);

  operator delete();
}

int *sub_10019C724(uint64_t *a1, uint64_t *a2)
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
    v26 = 163;
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
      v26 = 163;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10019C908(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10019CBA0(v1);

  return std::ios::~ios();
}

uint64_t sub_10019C954(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10019CBA0(v1);

  return std::ios::~ios();
}

void sub_10019C9B4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10019CBA0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10019CA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10019CA58(_BYTE *a1, int a2)
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

void sub_10019CAC4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10019CBA0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10019CB28(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10019CBA0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10019CBA0(uint64_t a1)
{
  *a1 = &off_100232DD0;
  sub_10019CD0C(a1);
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

uint64_t sub_10019CD0C(uint64_t a1)
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
        sub_10019CEBC((a1 + 72), __p);
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

void sub_10019CE58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10019CE84(uint64_t a1)
{
  sub_10019CBA0(a1);

  operator delete();
}

int *sub_10019CEBC(uint64_t *a1, uint64_t *a2)
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
    v26 = 185;
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
      v26 = 185;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10019D0A0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10019D338(v1);

  return std::ios::~ios();
}

uint64_t sub_10019D0EC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10019D338(v1);

  return std::ios::~ios();
}

void sub_10019D14C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10019D338(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10019D1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10019D1F0(_BYTE *a1, int a2)
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

void sub_10019D25C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10019D338(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10019D2C0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10019D338(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10019D338(uint64_t a1)
{
  *a1 = &off_100232FF0;
  sub_10019D4A4(a1);
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

uint64_t sub_10019D4A4(uint64_t a1)
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
        sub_10019D654((a1 + 72), __p);
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

void sub_10019D5F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10019D61C(uint64_t a1)
{
  sub_10019D338(a1);

  operator delete();
}

int *sub_10019D654(uint64_t *a1, uint64_t *a2)
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
    v26 = 233;
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
      v26 = 233;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10019D838(uint64_t a1)
{
  *a1 = off_1002328D0;
  sub_10019BE54(a1, 1);
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  std::mutex::~mutex((a1 + 40));
  *a1 = off_1002064C0;
  v3 = *(a1 + 32);
  if (v3)
  {
    sub_10000367C(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *sub_10019D954(void *a1, uint64_t *a2, unsigned int *a3, unint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100233070;
  sub_1001556A8((a1 + 3), *a2, *a3, *a4);
  return a1;
}

void sub_10019D9DC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100233070;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10019DA3C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100232BB0;
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

void sub_10019DAEC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10019DB04(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100232DD0;
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

void sub_10019DBB4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_10019DC58(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100216B10;
  sub_10019B6BC((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_10019DCB4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100232FF0;
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

void sub_10019DD64(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_10019DD7C(char *__s, size_t *a3)
{
  v4 = &v18;
  sub_100003410(&v18, __s);
  v5 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  v6 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  size = v18.__r_.__value_.__l.__size_;
  v7 = v18.__r_.__value_.__r.__words[0];
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = (&v18 + HIBYTE(v18.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v9 = (v18.__r_.__value_.__r.__words[0] + v18.__r_.__value_.__l.__size_);
  }

  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v4 = v18.__r_.__value_.__r.__words[0];
  }

  if (v4 != v9)
  {
    do
    {
      v4->__r_.__value_.__s.__data_[0] = __tolower(v4->__r_.__value_.__s.__data_[0]);
      v4 = (v4 + 1);
    }

    while (v4 != v9);
    v5 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    size = v18.__r_.__value_.__l.__size_;
    v7 = v18.__r_.__value_.__r.__words[0];
    v6 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  }

  if (v6 >= 0)
  {
    v10 = &v18;
  }

  else
  {
    v10 = v7;
  }

  if (v6 < 0)
  {
    v5 = size;
  }

  if (v5 >= 2)
  {
    v11 = v10 + v5;
    v12 = v10;
    while (1)
    {
      v13 = memchr(v12, 48, v5 - 1);
      if (!v13)
      {
        goto LABEL_22;
      }

      if (LOWORD(v13->__r_.__value_.__l.__data_) == 30768)
      {
        break;
      }

      v12 = (&v13->__r_.__value_.__l.__data_ + 1);
      v5 = v11 - v12;
      if (v11 - v12 < 2)
      {
        goto LABEL_22;
      }
    }

    if (v13 == v10)
    {
      v14 = std::string::erase(&v18, 0, 2uLL);
      std::string::operator=(&v18, v14);
    }
  }

LABEL_22:
  v15 = 0;
  v16 = 0;
  v17 = 0;
  sub_10019E0F8(&v18, &v15);
  if (a3)
  {
    *a3 = v16 - v15;
  }

  operator new[]();
}

void sub_10019DF10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  switch(a2)
  {
    case 3:
      __cxa_begin_catch(exception_object);
      exception = __cxa_allocate_exception(0x40uLL);
      *exception = &off_100233158;
      v20 = std::generic_category();
      exception[1] = 22;
      exception[2] = v20;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "Does not contain an even number of hex digits.";
    case 2:
      __cxa_begin_catch(exception_object);
      v21 = __cxa_allocate_exception(0x40uLL);
      *v21 = &off_100233158;
      v22 = std::generic_category();
      v21[1] = 22;
      v21[2] = v22;
      *(v21 + 24) = 0;
      *(v21 + 48) = 0;
      v21[7] = "Contains non-hexadecimal characters.";
    case 1:
      __cxa_begin_catch(exception_object);
      v23 = __cxa_allocate_exception(0x40uLL);
      *v23 = &off_100233158;
      v24 = std::generic_category();
      v23[1] = 22;
      v23[2] = v24;
      *(v23 + 24) = 0;
      *(v23 + 48) = 0;
      v23[7] = "Decoding error.";
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10019E0F8(uint64_t **a1, uint64_t a2)
{
  v3 = *(a1 + 23);
  v4 = *a1;
  if (v3 >= 0)
  {
    v4 = a1;
  }

  if (v3 < 0)
  {
    v3 = a1[1];
  }

  v7 = v4;
  if (v3)
  {
    v5 = v4 + v3;
    do
    {
      a2 = sub_10019EAB0(&v7, v5, a2, sub_10019EC80);
    }

    while (v7 != v5);
  }

  return a2;
}

uint64_t sub_10019E174(char *a1, uint64_t a2)
{
  v3[0] = 0;
  v3[1] = 0;
  return sub_1000A0C94(v3, a1, a2);
}

void *sub_10019E1D0(void *a1, unsigned int *a2)
{
  v3 = (*(*a2 + 16))(a2);
  v4 = strlen(v3);
  v5 = sub_1000026BC(a1, v3, v4);
  sub_1000026BC(v5, " (error code ", 13);
  v6 = std::ostream::operator<<();
  sub_1000026BC(v6, ")", 1);
  return a1;
}

uint64_t sub_10019E268(uint64_t a1)
{
  if (*(a1 + 48) != 1)
  {
    result = a1 + 56;
    return *result;
  }

  result = a1 + 24;
  if (*(a1 + 47) < 0)
  {
    return *result;
  }

  return result;
}

void *sub_10019E2E8()
{
  if ((atomic_load_explicit(byte_100240C20, memory_order_acquire) & 1) == 0)
  {
    sub_1001A3FEC();
  }

  if (atomic_load_explicit(qword_100240C10, memory_order_acquire) != -1)
  {
    v3 = &v1;
    v2 = &v3;
    std::__call_once(qword_100240C10, &v2, sub_1001A04C0);
  }

  return &unk_100240C30;
}

uint64_t sub_10019E368(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_10000367C(v2);
  }

  return a1;
}

uint64_t sub_10019E398()
{
  if (byte_100240A78 == 1)
  {
    v0 = 0;
    atomic_compare_exchange_strong(&unk_100240C58, &v0, 1u);
    if (!v0)
    {
      *&v2 = "void process_terminator::terminate()";
      *(&v2 + 1) = 34;
      v3 = 16;
      sub_10003C4BC(v4, &v2);
      sub_1000026BC(v5, "Terminating due to unrecoverable I/O error", 42);
      std::ostream::~ostream();
      sub_10003F284(v4);
      std::ios::~ios();
      return raise(15);
    }
  }

  return result;
}

void sub_10019E44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10003C5E4(va);
  _Unwind_Resume(a1);
}

unint64_t sub_10019E460(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = *(a1 + 208);
  v6 = a4[1];
  if (*a4 - (v5 - v6) >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a4 - (v5 - v6);
  }

  v8 = v5 - v6;
  if (v5 == v6)
  {
    goto LABEL_69;
  }

  sub_100026714(&v44, a1);
  sub_1000249F0(&v44, v7 + v8);
  sub_1000240A0(v47);
  sub_100026714(v31, a1);
  sub_100025558(v31, a2, a4[1], v7 + v8, 0xFFFFFFFFFFFFFFFFLL, &v34);
  if (v33)
  {
    sub_10000367C(v33);
  }

  if (v32)
  {
    sub_10000367C(v32);
  }

  sub_1000246F4(&v34, v60);
  sub_100024B78(&v44, v60);
  v46 = v61;
  v47[0] = v62;
  v47[1] = v63;
  v47[2] = v64;
  v48 = v65;
  v11 = v66;
  v66 = 0uLL;
  v12 = *(&v49 + 1);
  v49 = v11;
  if (v12)
  {
    sub_10000367C(v12);
    v50 = v67;
    v51 = v68;
    v52 = v69;
    if (*(&v66 + 1))
    {
      sub_10000367C(*(&v66 + 1));
    }
  }

  else
  {
    v50 = v67;
    v51 = v68;
    v52 = v69;
  }

  if (*(&v60[0] + 1))
  {
    sub_10000367C(*(&v60[0] + 1));
  }

  sub_1000249F0(&v44, v8);
  sub_100024448(&v34, v28);
  sub_100026714(&__src, &v44);
  sub_100026714(&v19, a1);
  sub_100026714(&__dst, &v19);
  v13 = 0;
  v57 = 0;
  while (!sub_1000242EC(&__src, v28))
  {
    sub_1000266C4(&v25);
    v14 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v27)
    {
      sub_100024C18(&__src);
      v17 = 2;
      if (!v14)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    v15 = v55;
    if (v24 < v55)
    {
      v15 = v24;
    }

    if (v15 >= v27)
    {
      v16 = v27;
    }

    else
    {
      v16 = v15;
    }

    if (!v15)
    {
      *&v58 = "trim_data(const sg_vec::iterator &, const sg_vec::iterator &, size_t, const io_result_t &)::(anonymous class)::operator()(const auto &, const auto &, size_t) const [src:auto = sg_vec_ns::details::sg_vec_iterator, dst:auto = sg_vec_ns::details::sg_vec_iterator]";
      *(&v58 + 1) = 121;
      v59 = 16;
      sub_100073454(v60, &v58);
      sub_1000026BC(v70, "Trimming: Written ", 18);
      std::ostream::operator<<();
      sub_1000026BC(v70, ", dest buffer_size ", 19);
      std::ostream::operator<<();
      sub_1000026BC(v70, " src size ", 10);
      std::ostream::operator<<();
      sub_1000026BC(v70, ", trimmed size", 14);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_100079AE0(v60);
      std::ios::~ios();
      memmove(__dst, __src, v16);
LABEL_34:
      *&v58 = "transform(Fn &&, sg_vec_ref::iterator, const sg_vec_ref::iterator &, sg_vec_ref::iterator) [Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/utils.cpp:180:13)]";
      *(&v58 + 1) = 97;
      v59 = 16;
      sub_10003A658(v60, &v58);
      sub_1000026BC(v70, "IO error with sg: ", 18);
      sub_10019A3A8(v70, &__src);
      sub_1000026BC(v70, " dest ", 6);
      sub_10019A3A8(v70, &__dst);
      sub_1000026BC(v70, " returned status ", 17);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_10003A88C(v60);
      std::ios::~ios();
      v17 = 1;
      if (!v14)
      {
        goto LABEL_29;
      }

LABEL_28:
      sub_10000367C(v14);
      goto LABEL_29;
    }

    memmove(__dst, __src, v16);
    if (v16 <= 0)
    {
      goto LABEL_34;
    }

    sub_1000249F0(&__src, v16);
    sub_100024AB4(&__dst, v16);
    v17 = 0;
    v13 += v16;
    if (v14)
    {
      goto LABEL_28;
    }

LABEL_29:
    if ((v17 | 2) != 2)
    {
      goto LABEL_37;
    }
  }

  sub_100024AB4(&v19, v13);
LABEL_37:
  if (v56)
  {
    sub_10000367C(v56);
  }

  if (v54)
  {
    sub_10000367C(v54);
  }

  if (v21)
  {
    sub_10000367C(v21);
  }

  if (v20)
  {
    sub_10000367C(v20);
  }

  if (v26)
  {
    sub_10000367C(v26);
  }

  if (v23)
  {
    sub_10000367C(v23);
  }

  if (v30)
  {
    sub_10000367C(v30);
  }

  if (v29)
  {
    sub_10000367C(v29);
  }

  if (v43)
  {
    sub_10000367C(v43);
  }

  if (v42)
  {
    sub_10000367C(v42);
  }

  if (v41)
  {
    sub_10000367C(v41);
  }

  if (v40)
  {
    sub_10000367C(v40);
  }

  if (v38)
  {
    sub_10000367C(v38);
  }

  if (v36)
  {
    sub_10000367C(v36);
  }

  if (*(&v49 + 1))
  {
    sub_10000367C(*(&v49 + 1));
  }

  if (v45)
  {
    sub_10000367C(v45);
  }

LABEL_69:
  sub_100026714(&v34, a1);
  sub_1000249F0(&v34, v7);
  sub_1000240A0(v37);
  if (v39)
  {
    sub_10000367C(v39);
  }

  if (v35)
  {
    sub_10000367C(v35);
  }

  return v7;
}

void sub_10019E990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100002440(&STACK[0x738]);
  sub_100002440(&a10);
  sub_100002440(&a38);
  sub_100002440(&a65);
  sub_100025620(&STACK[0x388]);
  sub_100002440(&STACK[0x658]);
  _Unwind_Resume(a1);
}

void sub_10019EA78(std::exception *a1)
{
  sub_1000023D4(a1);

  operator delete();
}

uint64_t sub_10019EAB0(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int (*a4)(uint64_t, uint64_t))
{
  v8 = 0;
  v9 = *a1;
  v10 = 1;
  do
  {
    v11 = v10;
    if (a4(v9, a2))
    {
      v24 = 0u;
      v25 = 0u;
      DWORD2(v25) = -1;
      v23[0] = off_1002331C0;
      v23[1] = off_1002331F0;
      sub_10019EC8C(v23);
    }

    v12 = sub_10019ED38(**a1);
    v10 = 0;
    v8 = v12 + 16 * v8;
    v9 = *a1 + 1;
    *a1 = v9;
  }

  while ((v11 & 1) != 0);
  v14 = *(a3 + 8);
  v13 = *(a3 + 16);
  if (v14 >= v13)
  {
    v16 = *a3;
    v17 = &v14[-*a3];
    v18 = (v17 + 1);
    if ((v17 + 1) < 0)
    {
      sub_100036CAC();
    }

    v19 = v13 - v16;
    if (2 * v19 > v18)
    {
      v18 = 2 * v19;
    }

    if (v19 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v20 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      operator new();
    }

    v21 = &v14[-*a3];
    *v17 = v8;
    v15 = v17 + 1;
    memcpy(0, v16, v21);
    *a3 = 0;
    *(a3 + 8) = v17 + 1;
    *(a3 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v14 = v8;
    v15 = v14 + 1;
  }

  *(a3 + 8) = v15;
  return a3;
}

void sub_10019EC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10019ECE8(va);
  _Unwind_Resume(a1);
}

void sub_10019EC8C(void *a1)
{
  exception = __cxa_allocate_exception(0x30uLL);
  sub_10019EE54(exception, a1);
}

std::exception *sub_10019ECE8(std::exception *a1)
{
  std::exception::~exception(a1);
  *(v2 + 8) = &off_100233210;
  sub_10019F088((v2 + 16));
  return a1;
}

uint64_t sub_10019ED38(int a1)
{
  v1 = a1 - 48;
  if ((a1 - 48) >= 0xA)
  {
    if ((a1 - 65) > 5)
    {
      if ((a1 - 97) > 5)
      {
        v6 = 0u;
        v7 = 0u;
        DWORD2(v7) = -1;
        v5[0] = off_100233258;
        v5[1] = off_100233288;
        v3 = off_1002332D0;
        v4 = a1;
        sub_10019F3C8(v5, &v3);
      }

      return (a1 - 87);
    }

    else
    {
      return (a1 - 55);
    }
  }

  return v1;
}

void sub_10019EE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10019F144(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10019EE54(uint64_t a1, void *a2)
{
  v3 = a2 + *(*a2 - 40);
  v4 = *(v3 + 1);
  *(a1 + 8) = &off_100233210;
  *(a1 + 16) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(v3 + 1);
  *(a1 + 40) = *(v3 + 8);
  *(a1 + 24) = v5;
  *a1 = off_1002331C0;
  *(a1 + 8) = off_1002331F0;
  return a1;
}

void sub_10019EF2C(std::exception *a1)
{
  std::exception::~exception(a1);
  *(v1 + 8) = &off_100233210;
  sub_10019F088((v1 + 16));

  operator delete();
}

uint64_t *sub_10019EF9C(void *a1)
{
  std::exception::~exception((a1 + *(*a1 - 24)));
  *(v1 + 8) = &off_100233210;
  v2 = (v1 + 16);

  return sub_10019F088(v2);
}

void sub_10019F000(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::exception::~exception(v1);
  *(v1 + 1) = &off_100233210;
  sub_10019F088(v1 + 2);

  operator delete();
}

uint64_t *sub_10019F088(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

void sub_10019F0E4(void *a1)
{
  exception = __cxa_allocate_exception(0x30uLL);
  sub_10019F194(exception, a1);
}

std::exception *sub_10019F144(std::exception *a1)
{
  std::exception::~exception(a1);
  *(v2 + 8) = &off_100233210;
  sub_10019F088((v2 + 16));
  return a1;
}

uint64_t sub_10019F194(uint64_t a1, void *a2)
{
  v3 = a2 + *(*a2 - 40);
  v4 = *(v3 + 1);
  *(a1 + 8) = &off_100233210;
  *(a1 + 16) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(v3 + 1);
  *(a1 + 40) = *(v3 + 8);
  *(a1 + 24) = v5;
  *a1 = off_100233258;
  *(a1 + 8) = off_100233288;
  return a1;
}

void sub_10019F26C(std::exception *a1)
{
  std::exception::~exception(a1);
  *(v1 + 8) = &off_100233210;
  sub_10019F088((v1 + 16));

  operator delete();
}

uint64_t *sub_10019F2DC(void *a1)
{
  std::exception::~exception((a1 + *(*a1 - 24)));
  *(v1 + 8) = &off_100233210;
  v2 = (v1 + 16);

  return sub_10019F088(v2);
}

void sub_10019F340(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::exception::~exception(v1);
  *(v1 + 1) = &off_100233210;
  sub_10019F088(v1 + 2);

  operator delete();
}

void sub_10019F52C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_10000367C(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10019F558(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

void sub_10019F664(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_10019F994(&v18, ("PN5boost9algorithm9bad_char_E" & 0x7FFFFFFFFFFFFFFFLL));
  if (v18)
  {
    v4 = v18;
  }

  else
  {
    v4 = ("PN5boost9algorithm9bad_char_E" & 0x7FFFFFFFFFFFFFFFLL);
  }

  sub_100003410(&v14, v4);
  free(v18);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5.__i_ = &v14;
  }

  else
  {
    v5.__i_ = v14.__r_.__value_.__r.__words[0];
  }

  std::string::insert(&v14, v5, 91);
  v15 = v14;
  memset(&v14, 0, sizeof(v14));
  v6 = std::string::append(&v15, "] = ", 4uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  sub_100002148(&v18);
  v22 = *(a1 + 8);
  sub_1000026BC(&v18, &v22, 1);
  sub_100003368(&v18, v12);
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  std::locale::~locale(v20);
  std::ostream::~ostream();
  std::ios::~ios();
  if ((v13 & 0x80u) == 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = v12[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v9 = v13;
  }

  else
  {
    v9 = v12[1];
  }

  v10 = std::string::append(&v16, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v17, 10);
  *a2 = v17;
  memset(&v17, 0, sizeof(v17));
  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_10019F8F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

char **sub_10019F994(char **a1, char *lpmangled)
{
  status = 0;
  v4 = 0;
  *a1 = __cxa_demangle(lpmangled, 0, &v4, &status);
  return a1;
}

void sub_10019FA4C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1001A405C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10019FA68(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10019FAA0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_10019FAD0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10019FB10(uint64_t a1, const char *a2)
{
  if (a2)
  {
    sub_100002148(&v16);
    v4 = strlen(a2);
    sub_1000026BC(&v16, a2, v4);
    v5 = *(a1 + 8);
    if (v5 != (a1 + 16))
    {
      do
      {
        (**v5[5])(__p);
        if (v15 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        if (v15 >= 0)
        {
          v7 = HIBYTE(v15);
        }

        else
        {
          v7 = __p[1];
        }

        sub_1000026BC(&v16, v6, v7);
        if (SHIBYTE(v15) < 0)
        {
          operator delete(__p[0]);
        }

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

      while (v9 != (a1 + 16));
    }

    sub_100003368(&v16, __p);
    v11 = v15;
    v12 = *__p;
    *__p = *(a1 + 32);
    v15 = *(a1 + 48);
    *(a1 + 32) = v12;
    *(a1 + 48) = v11;
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    if (v19 < 0)
    {
      operator delete(v18[7].__locale_);
    }

    std::locale::~locale(v18);
    std::ostream::~ostream();
    std::ios::~ios();
  }

  result = a1 + 32;
  if (*(a1 + 55) < 0)
  {
    return *result;
  }

  return result;
}

void *sub_10019FD90@<X0>(uint64_t a1@<X0>, void *a2@<X8>, uint64_t *a3@<X1>)
{
  result = sub_1001A0078(a1 + 8, a3);
  if ((a1 + 16) == result)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v6 = result[6];
    *a2 = result[5];
    a2[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void sub_10019FDE8(uint64_t a1, uint64_t *a2, void *a3)
{
  v9 = a3;
  v5 = sub_1001A0168((a1 + 8), a3, &unk_1001CB4FC, &v9);
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = v5[6];
  v5[5] = v7;
  v5[6] = v6;
  if (v8)
  {
    sub_10000367C(v8);
  }

  if (*(a1 + 55) < 0)
  {
    **(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  else
  {
    *(a1 + 32) = 0;
    *(a1 + 55) = 0;
  }
}

BOOL sub_10019FE90(uint64_t a1)
{
  v1 = *(a1 + 56) - 1;
  *(a1 + 56) = v1;
  if (a1 && !v1)
  {
    sub_1001A02B4(a1);
    operator delete();
  }

  return v1 == 0;
}

void *sub_1001A0078(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + 8);
  v4 = sub_1001A00EC(a1, a2, *(a1 + 8), (a1 + 8));
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  v6 = v4[4];
  if (*a2 != v6 && strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL)) < 0)
  {
    return v3;
  }

  return v5;
}

void *sub_1001A00EC(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  if (a3)
  {
    v5 = a3;
    v6 = *a2;
    do
    {
      v7 = v5[4];
      if (v7 == v6)
      {
        a4 = v5;
      }

      else
      {
        v8 = strcmp((*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL));
        if (v8 >= 0)
        {
          a4 = v5;
        }

        v5 = (v5 + ((v8 >> 28) & 8));
      }

      v5 = *v5;
    }

    while (v5);
  }

  return a4;
}

void *sub_1001A0168(uint64_t **a1, uint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *sub_1001A0204(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *sub_1001A0204(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *a3;
    v7 = v5[4];
    if (*a3 != v7)
    {
      v8 = *(v6 + 8);
      do
      {
        v9 = *(v7 + 8);
        if (strcmp((v8 & 0x7FFFFFFFFFFFFFFFLL), (v9 & 0x7FFFFFFFFFFFFFFFLL)) < 0)
        {
          v10 = *v5;
          v4 = v5;
          if (!*v5)
          {
            break;
          }
        }

        else
        {
          if ((strcmp((v9 & 0x7FFFFFFFFFFFFFFFLL), (v8 & 0x7FFFFFFFFFFFFFFFLL)) & 0x80000000) == 0)
          {
            break;
          }

          v4 = v5 + 1;
          v10 = v5[1];
          if (!v10)
          {
            break;
          }
        }

        v7 = v10[4];
        v5 = v10;
      }

      while (v6 != v7);
    }
  }

  else
  {
    v5 = (a1 + 8);
  }

  *a2 = v5;
  return v4;
}

uint64_t sub_1001A02B4(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  sub_100056314(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_1001A035C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1001A405C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001A0378(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001A03B0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_1001A03E0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001A0420(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  v3 = *sub_1001A0204(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void sub_1001A0594(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void sub_1001A05C0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001A05F8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    operator delete();
  }

  return result;
}

uint64_t sub_1001A0618(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *frk_unwrapped_symmetric_key_with_shipping_private_key(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a1 objectForKey:@"com.apple.wkms.fcs-response"];
  v7 = v6;
  if (!v5)
  {
    v26 = a3;
    v38 = NSLocalizedDescriptionKey;
    v39 = @"ERROR: Shipping private key is NULL.";
    v12 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v18 = 26;
LABEL_14:
    v15 = [NSError errorWithDomain:@"com.apple.internal.fetchrestorekeys" code:v18 userInfo:v12];
    v11 = 0;
    v14 = 0;
    v10 = 0;
    v8 = 0;
LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  if (!v6)
  {
    v26 = a3;
    v36 = NSLocalizedDescriptionKey;
    v37 = @"ERROR: This archive does not contain a shipping key response.";
    v12 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v18 = 25;
    goto LABEL_14;
  }

  v29 = 0;
  v8 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:&v29];
  v9 = v29;
  if (!v8)
  {
    v11 = 0;
    v14 = 0;
    v10 = 0;
    v16 = 0;
    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v26 = a3;
  v10 = [v8 objectForKey:@"wrapped-key"];
  v11 = [v8 objectForKey:@"enc-request"];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v34 = NSLocalizedDescriptionKey;
    v35 = @"ERROR: Response dictionary is missing required keys. Will fail";
    v12 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v15 = [NSError errorWithDomain:@"com.apple.internal.fetchrestorekeys" code:23 userInfo:v12];

    v14 = 0;
    goto LABEL_16;
  }

  v12 = [[NSData alloc] initWithBase64EncodedString:v10 options:0];
  v13 = [[NSData alloc] initWithBase64EncodedString:v11 options:0];
  v25 = v13;
  if (!v12)
  {
    v32 = NSLocalizedDescriptionKey;
    v33 = @"ERROR: shipping key wrapped-key failed base64 decode";
    v22 = &v33;
    v23 = &v32;
LABEL_24:
    v15 = [NSDictionary dictionaryWithObjects:v22 forKeys:v23 count:1, v13];
    v24 = [NSError errorWithDomain:@"com.apple.internal.fetchrestorekeys" code:19 userInfo:v15];

    v17 = v24;
    v14 = 0;
    v16 = 0;
    goto LABEL_25;
  }

  if (!v13)
  {
    v30 = NSLocalizedDescriptionKey;
    v31 = @"ERROR: shipping key enc-request failed base64 decode";
    v22 = &v31;
    v23 = &v30;
    goto LABEL_24;
  }

  v28 = v9;
  v14 = [_TtC16FetchRestoreKeys16CryptoKitWrapper convertPrivateKeyTox963WithPemPrivateKey:v5 error:&v28];
  v15 = v28;

  if (!v14)
  {
    v16 = 0;
    goto LABEL_26;
  }

  v27 = v15;
  v16 = [_TtC16FetchRestoreKeys16CryptoKitWrapper unwrapEncryptionKeyWithWrappedKey:v12 encapsulatedKey:v25 privateKey:v14 error:&v27];
  v17 = v27;
LABEL_25:

  v15 = v17;
LABEL_26:

LABEL_17:
  v9 = v15;
  a3 = v26;
  if (v26)
  {
LABEL_18:
    v19 = v9;
    *a3 = v9;
  }

LABEL_19:
  v20 = v16;

  return v16;
}

id frk_metadata_from_aea_auth_data(AEAAuthData_impl *a1, void *a2)
{
  v4 = +[NSMutableDictionary dictionary];
  EntryCount = AEAAuthDataGetEntryCount(a1);
  if (!EntryCount)
  {
LABEL_12:
    v16 = [v4 copy];
    v17 = 0;
    if (a2)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v6 = EntryCount;
  v7 = 0;
  while (1)
  {
    data_size = 0;
    key_length = 0;
    if (AEAAuthDataGetEntry(a1, v7, 0, 0, &key_length, 0, 0, &data_size))
    {
      v26 = NSLocalizedDescriptionKey;
      v27 = @"Failed to parse auth data blob.";
      v18 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v17 = [NSError errorWithDomain:@"com.apple.internal.fetchrestorekeys" code:17 userInfo:v18];

      goto LABEL_22;
    }

    if (!key_length)
    {
      v38 = NSLocalizedDescriptionKey;
      v39 = @"Failed to parse key in KVS (zero size key).";
      v19 = &v39;
      v20 = &v38;
LABEL_20:
      v13 = [NSDictionary dictionaryWithObjects:v19 forKeys:v20 count:1];
      v17 = [NSError errorWithDomain:@"com.apple.internal.fetchrestorekeys" code:17 userInfo:v13];
      goto LABEL_21;
    }

    v8 = ++key_length;
    if (!data_size)
    {
      v36 = NSLocalizedDescriptionKey;
      v37 = @"Failed to parse key in KVS (zero size data).";
      v19 = &v37;
      v20 = &v36;
      goto LABEL_20;
    }

    v9 = malloc_type_calloc(1uLL, v8, 0x7A69EC4uLL);
    if (!v9)
    {
      v34 = NSLocalizedDescriptionKey;
      v35 = @"KVS keyBuffer allocation failure.";
      v19 = &v35;
      v20 = &v34;
      goto LABEL_20;
    }

    v10 = v9;
    v11 = malloc_type_calloc(1uLL, data_size, 0x5189DB6BuLL);
    if (!v11)
    {
      free(v10);
      v32 = NSLocalizedDescriptionKey;
      v33 = @"KVS dataBuffer allocation failure.";
      v19 = &v33;
      v20 = &v32;
      goto LABEL_20;
    }

    v12 = v11;
    if (AEAAuthDataGetEntry(a1, v7, key_length, v10, &key_length, data_size, v11, &data_size))
    {
      free(v10);
      free(v12);
      v30 = NSLocalizedDescriptionKey;
      v31 = @"KVS data fetch failure.";
      v19 = &v31;
      v20 = &v30;
      goto LABEL_20;
    }

    v13 = [[NSString alloc] initWithUTF8String:v10];
    v14 = [NSData alloc];
    v15 = [v14 initWithBytesNoCopy:v12 length:data_size freeWhenDone:1];
    free(v10);
    if (!v13 || !v15)
    {
      break;
    }

    [v4 setObject:v15 forKey:v13];

    if (v6 == ++v7)
    {
      goto LABEL_12;
    }
  }

  v28 = NSLocalizedDescriptionKey;
  v29 = @"KVS key value - parse failure.";
  v23 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v17 = [NSError errorWithDomain:@"com.apple.internal.fetchrestorekeys" code:17 userInfo:v23];

LABEL_21:
LABEL_22:
  v16 = 0;
  if (a2)
  {
LABEL_23:
    v21 = v17;
    *a2 = v17;
  }

LABEL_24:

  return v16;
}

Class sub_1001A0F84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = a3;
  v7 = sub_1001A40E0();
  v9 = v8;

  v10 = a5(v7, v9);
  v12 = v11;
  sub_1001A2DFC(v7, v9);
  v13.super.isa = sub_1001A40C0().super.isa;
  sub_1001A2DFC(v10, v12);

  return v13.super.isa;
}

id CryptoKitWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CryptoKitWrapper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CryptoKitWrapper();
  return objc_msgSendSuper2(&v2, "init");
}

id CryptoKitWrapper.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CryptoKitWrapper();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_1001A1428(uint64_t a1, uint64_t a2)
{
  sub_1001A4280();
  sub_1001A4250();
  v4 = sub_1001A4290();

  return sub_1001A14A0(a1, a2, v4);
}

unint64_t sub_1001A14A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1001A4270())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1001A1558@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    v6 = v4;
    if (!v5)
    {
      v7 = a4;
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      v14 = v13;
      v15 = v13 + BYTE6(a2);
      goto LABEL_10;
    }

    v10 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    a1 = a1;
    v9 = v10;
    return sub_1001A16D4(a1, v9, a4);
  }

  if (v5 == 2)
  {
    v8 = *(a1 + 24);
    a1 = *(a1 + 16);
    v9 = v8;
    return sub_1001A16D4(a1, v9, a4);
  }

  v7 = a4;
  memset(v13, 0, 14);
  v14 = v13;
  v15 = v13;
  v6 = v4;
LABEL_10:
  sub_1001A2F00();
  result = sub_1001A4130();
  if (!v6)
  {
    *v7 = result;
    v7[1] = v12;
  }

  return result;
}

uint64_t sub_1001A16D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1001A4080();
  if (result)
  {
    result = sub_1001A40A0();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_8;
    }
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  sub_1001A4090();
  sub_1001A2F00();
  result = sub_1001A4130();
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
  }

  return result;
}

unint64_t sub_1001A1798(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001A2E50(&qword_100240AD8, &unk_1001D79F0);
    v3 = sub_1001A4260();
    v4 = a1 + 32;

    while (1)
    {
      sub_1001A2F54(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1001A1428(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1001A2FC4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_1001A18A8(uint64_t a1, unint64_t a2)
{
  isa = v2;
  v6 = sub_1001A4240();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8, v9);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1001A41E0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14, v15);
  v17 = &v25[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = a1;
  v27 = a2;
  sub_1001A2FD4(a1, a2);
  sub_1001A41D0();
  if (!v2)
  {
    v28 = 0;
    sub_1001A41B0();
    sub_1001A4230();
    isa = sub_1001A4210();
    v19 = v18;

    (*(v7 + 8))(v11, v6);
    if (v19 >> 60 == 15)
    {
      sub_1001A2E50(&qword_100240AA8, &qword_1001D79C8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001D7970;
      *(inited + 32) = sub_1001A4200();
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = v21;
      *(inited + 48) = 0xD000000000000017;
      *(inited + 56) = 0x80000001001E95F0;
      v22 = @"com.apple.internal.fetchrestorekeys";
      sub_1001A1798(inited);
      swift_setDeallocating();
      sub_1001A2E98(inited + 32);
      v23 = objc_allocWithZone(NSError);
      isa = sub_1001A41F0().super.isa;

      [v23 initWithDomain:v22 code:31 userInfo:isa];

      swift_willThrow();
    }

    (*(v13 + 8))(v17, v12);
  }

  return isa;
}

unint64_t sub_1001A1BCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001A2E50(&qword_100240AC8, &qword_1001D79E8);
    v3 = sub_1001A4260();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1001A1428(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_1001A1CE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1001A4240();
  __chkstk_darwin(v4 - 8, v5, v6);
  v7 = sub_1001A41E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10, v11);
  v12 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1001A4230();
  v13 = sub_1001A4220();
  if (v14)
  {
    __chkstk_darwin(v13, v14, v15);
    sub_1001A41A0();
    if (!v2)
    {
      (*(v8 + 32))(&v21[-v12], &v21[-v12], v7);
      v3 = sub_1001A41C0();
      (*(v8 + 8))(&v21[-v12], v7);
    }
  }

  else
  {
    sub_1001A2E50(&qword_100240AA8, &qword_1001D79C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001D7970;
    *(inited + 32) = sub_1001A4200();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v17;
    *(inited + 48) = 0xD000000000000017;
    *(inited + 56) = 0x80000001001E95F0;
    v18 = @"com.apple.internal.fetchrestorekeys";
    sub_1001A1798(inited);
    swift_setDeallocating();
    sub_1001A2E98(inited + 32);
    v3 = objc_allocWithZone(NSError);
    isa = sub_1001A41F0().super.isa;

    [v3 initWithDomain:v18 code:31 userInfo:isa];

    swift_willThrow();
  }

  return v3;
}

__CFString *sub_1001A1FB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (&type metadata accessor for HPKE)
  {
    v7 = &nominal type descriptor for HPKE == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || &type metadata for HPKE == 0)
  {
    sub_1001A2E50(&qword_100240AA8, &qword_1001D79C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001D7970;
    *(inited + 32) = sub_1001A4200();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v10;
    *(inited + 48) = 0xD000000000000027;
    *(inited + 56) = 0x80000001001E95C0;
    v17 = @"com.apple.internal.fetchrestorekeys";
    sub_1001A1798(inited);
    swift_setDeallocating();
    sub_1001A2E98(inited + 32);
    v11 = objc_allocWithZone(NSError);
    isa = sub_1001A41F0().super.isa;

    [v11 initWithDomain:v17 code:12 userInfo:isa];

    swift_willThrow();
  }

  else
  {
    v60 = a2;
    v61 = a3;
    v64 = a4;
    v59 = a1;
    v15 = sub_1001A41E0();
    v16 = *(v15 - 8);
    v17 = *(v16 + 64);
    __chkstk_darwin(v15, v18, v19);
    v20 = (&v17->info + 7) & 0xFFFFFFFFFFFFFFF0;
    v21 = &v47 - v20;
    v62 = a5;
    v63 = a6;
    sub_1001A2FD4(a5, a6);
    sub_1001A41D0();
    if (!v6)
    {
      v56 = &v47;
      v22 = sub_1001A4100();
      v55 = &v47;
      v23 = *(v22 - 8);
      v57 = v15;
      v58 = v23;
      v24 = v16;
      v25 = *(v23 + 64);
      __chkstk_darwin(v22, v26, v27);
      v52 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
      v28 = &v47 - v52;
      sub_1001A40F0();
      v29 = sub_1001A4170();
      v54 = &v47;
      v48 = v29;
      v47 = *(v29 - 8);
      v32 = __chkstk_darwin(v29, v30, v31);
      v34 = &v47 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      v51 = &v47;
      __chkstk_darwin(v32, v35, v36);
      v53 = v24;
      v37 = (*(v24 + 16))(&v47 - v20, &v47 - v20, v57);
      v50 = &v47;
      __chkstk_darwin(v37, v38, v39);
      v40 = *(v58 + 16);
      v41 = &v47 - v52;
      v52 = v22;
      v40(v41, v28, v22);
      sub_1001A2FD4(v61, v64);
      v49 = v34;
      sub_1001A4150();
      v42 = v47;
      v43 = v48;
      v44 = v58;
      v62 = v59;
      v63 = v60;
      sub_1001A3028();
      v45 = v49;
      v17 = sub_1001A4160();
      (*(v42 + 8))(v45, v43);
      (*(v44 + 8))(v28, v52);
      (*(v53 + 8))(v21, v57);
    }
  }

  return v17;
}

__SecKey *sub_1001A25C8(uint64_t a1, uint64_t a2, SecCertificateRef certificate)
{
  if (&type metadata accessor for HPKE)
  {
    v4 = &nominal type descriptor for HPKE == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || &type metadata for HPKE == 0)
  {
    sub_1001A2E50(&qword_100240AA8, &qword_1001D79C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001D7970;
    *(inited + 32) = sub_1001A4200();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v7;
    *(inited + 48) = 0xD000000000000027;
    *(inited + 56) = 0x80000001001E95C0;
    v8 = @"com.apple.internal.fetchrestorekeys";
    sub_1001A1798(inited);
    swift_setDeallocating();
    sub_1001A2E98(inited + 32);
    v9 = objc_allocWithZone(NSError);
    isa = sub_1001A41F0().super.isa;

    [v9 initWithDomain:v8 code:12 userInfo:isa];

    swift_willThrow();
    return v8;
  }

  result = SecCertificateCopyKey(certificate);
  if (result)
  {
    v14 = result;
    v69 = a1;
    v72 = a2;
    result = SecKeyCopyExternalRepresentation(result, 0);
    if (result)
    {
      v15 = result;
      v16 = sub_1001A4190();
      v17 = *(v16 - 8);
      v8 = *(v17 + 64);
      __chkstk_darwin(v16, v18, v19);
      v20 = (&v8->info + 7) & 0xFFFFFFFFFFFFFFF0;
      v70 = sub_1001A40E0();
      v71 = v21;
      sub_1001A4180();
      if (v3)
      {
      }

      else
      {
        v61 = v14;
        v65 = &v53;
        v67 = sub_1001A4100();
        v63 = &v53;
        v22 = *(v67 - 8);
        v66 = &v53 - v20;
        v59 = v22;
        v68 = v16;
        v23 = v17;
        v24 = *(v22 + 64);
        __chkstk_darwin(v67, v25, v26);
        v27 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_1001A40F0();
        v28 = sub_1001A4140();
        v62 = &v53;
        v57 = v28;
        v56 = *(v28 - 8);
        v31 = __chkstk_darwin(v28, v29, v30);
        v33 = &v53 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
        v60 = &v53;
        __chkstk_darwin(v31, v34, v35);
        v64 = v23;
        v36 = (*(v23 + 16))(&v53 - v20, v66, v68);
        v58 = &v53;
        __chkstk_darwin(v36, v37, v38);
        v39 = v59;
        (*(v59 + 16))(v27, v27, v67);
        v40 = v33;
        v41 = v68;
        sub_1001A4110();
        v55 = v27;
        v42 = v39;
        sub_1001A1558(v69, v72, &v70);
        v43 = v61;
        v72 = v70;
        v69 = v71;
        v58 = sub_1001A40D0(0);
        v60 = v44;
        v54 = v40;
        v45 = sub_1001A4120();
        v47 = v46;
        v53 = sub_1001A40D0(0);
        v48 = v41;
        v50 = v49;
        sub_1001A2DFC(v45, v47);
        sub_1001A2E50(&qword_100240AB8, &qword_1001D79D8);
        v51 = swift_initStackObject();
        *(v51 + 16) = xmmword_1001D7980;
        *(v51 + 32) = 0x2D64657070617277;
        *(v51 + 40) = 0xEB0000000079656BLL;
        v52 = v60;
        *(v51 + 48) = v58;
        *(v51 + 56) = v52;
        *(v51 + 64) = 0x757165722D636E65;
        *(v51 + 72) = 0xEB00000000747365;
        *(v51 + 80) = v53;
        *(v51 + 88) = v50;
        v8 = sub_1001A1BCC(v51);
        swift_setDeallocating();
        sub_1001A2E50(&qword_100240AC0, &qword_1001D79E0);
        swift_arrayDestroy();

        sub_1001A2DFC(v72, v69);
        (*(v42 + 8))(v55, v67);
        (*(v64 + 8))(v66, v48);
        (*(v56 + 8))(v54, v57);
      }

      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001A2DFC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1001A2E50(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001A2E98(uint64_t a1)
{
  v2 = sub_1001A2E50(&qword_100240AB0, &qword_1001D79D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001A2F00()
{
  result = qword_100240AD0;
  if (!qword_100240AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100240AD0);
  }

  return result;
}

uint64_t sub_1001A2F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A2E50(&qword_100240AB0, &qword_1001D79D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1001A2FC4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1001A2FD4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

unint64_t sub_1001A3028()
{
  result = qword_100240AE0;
  if (!qword_100240AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100240AE0);
  }

  return result;
}

uint64_t sub_1001A307C(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    result = (*(*result + 16))(result);
  }

  *a4 = a2;
  *(a4 + 8) = a3;
  return result;
}

void sub_1001A310C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(__cxa_begin_catch(a1) + 8);
  if (*(a3 + 89) == 1)
  {
    v5 = v4;
    sub_10000B8AC(a3);
    v4 = v5;
    *(a3 + 89) = 0;
  }

  *a3 = v4;
  __cxa_end_catch();
}

void sub_1001A3264(int a1, _BYTE *__src, _BYTE *__dst, unint64_t a4)
{
  if (!a4)
  {
    return;
  }

  v7 = __dst - __src;
  if (__dst == __src)
  {
    v8 = 8 * a4;
  }

  else
  {
    if (a4 <= v7 >> 3)
    {
      v10 = 8 * a4;
      v11 = &__dst[-8 * a4];
      memmove(__dst, v11, 8 * a4);
      if (v11 != __src)
      {
        memmove(&__dst[-(v11 - __src)], __src, v11 - __src);
      }

      v9 = __src;
      v8 = v10;
      goto LABEL_12;
    }

    if (__src)
    {
      memmove(&__src[8 * a4], __src, __dst - __src);
    }

    bzero(__src, v7);
    v8 = 8 * (a4 - (v7 >> 3));
  }

  v9 = __dst;
LABEL_12:

  bzero(v9, v8);
}

void sub_1001A3344(char **a1, char *__dst, char *a3, char *__src, uint64_t a5)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = __dst;
  if (*a1)
  {
    v12 = __dst;
    if (__dst)
    {
      v12 = __dst;
      if (v10 != __src)
      {
        memmove(__dst, v10, __src - v10);
        v12 = &__dst[__src - v10];
      }
    }
  }

  if (a5)
  {
    bzero(v12, 8 * a5);
  }

  if (__src)
  {
    v13 = &v10[8 * v11];
    if (v13 != __src && v12 != 0)
    {
      memmove(&v12[8 * a5], __src, v13 - __src);
    }
  }

  if (v10 && a1 + 3 != *a1)
  {
    operator delete(*a1);
  }

  v15 = &a1[1][a5];
  *a1 = __dst;
  a1[1] = v15;
  a1[2] = a3;
}

void sub_1001A3434(uint64_t a1, uint64_t a2)
{
  do
  {
    v4 = *(a1 + 112);
    if (v4)
    {
      *(v4 + 16) = 0;
    }

    v5 = *(a1 + 8);
    if (v5)
    {
      sub_10000367C(v5);
    }

    a1 += 152;
  }

  while (a1 != a2);
}

void sub_1001A3498(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(__cxa_begin_catch(a1) + 2);
  v5 = std::generic_category();
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = 0;

  __cxa_end_catch();
}

void sub_1001A34E0()
{
  if (__cxa_guard_acquire(byte_100240B38))
  {
    __cxa_atexit(std::error_category::~error_category, &off_100240080, &_mh_execute_header);

    __cxa_guard_release(byte_100240B38);
  }
}

void sub_1001A3548(void *a1)
{
  v1 = __cxa_begin_catch(a1);
  sub_10006C1D4(v1);
  __cxa_end_catch();
}

void sub_1001A35FC()
{
  if (__cxa_guard_acquire(byte_1002400A0))
  {
    *&xmmword_100240088 = qword_10023FE60;
    *(&xmmword_100240088 + 1) = qword_10023FE60;
    LOBYTE(qword_100240098) = 2;

    __cxa_guard_release(byte_1002400A0);
  }
}

void sub_1001A36A4(uint64_t a1, uint64_t a2, void *a3, std::__shared_weak_count **a4)
{
  v8 = *(a1 + 128);
  if (v8)
  {
    sub_10000367C(v8);
  }

  v9 = *(a1 + 112);
  if (v9)
  {
    sub_10000367C(v9);
  }

  *a3 = a2;
  v10 = *a4;
  if (*a4)
  {

    sub_10000367C(v10);
  }
}

void sub_1001A3740()
{
  if (__cxa_guard_acquire(byte_1002400B8))
  {
    qword_1002400B0 = &a0123456789abcd[off_1002400A8];

    __cxa_guard_release(byte_1002400B8);
  }
}

uint64_t sub_1001A3804(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

void sub_1001A384C(char **a1, char *__dst, char *a3, char *__src, uint64_t a5, _OWORD *a6)
{
  v12 = *a1;
  v13 = a1[1];
  v14 = __dst;
  if (*a1)
  {
    v14 = __dst;
    if (__dst)
    {
      v14 = __dst;
      if (v12 != __src)
      {
        memmove(__dst, v12, __src - v12);
        v14 = &__dst[__src - v12];
      }
    }
  }

  *v14 = *a6;
  if (__src)
  {
    v15 = &v12[16 * v13];
    if (v15 != __src && v14 != 0)
    {
      memmove(&v14[16 * a5], __src, v15 - __src);
    }
  }

  if (v12 && a1 + 3 != *a1)
  {
    operator delete(*a1);
  }

  v17 = &a1[1][a5];
  *a1 = __dst;
  a1[1] = v17;
  a1[2] = a3;
}

void sub_1001A3928(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t sub_1001A3970(uint64_t a1, uint64_t (***a2)(void))
{
  v3 = a1 - 32;
  v4 = (a1 - 32);
  v5 = (a1 - 32);
  do
  {
    v6 = *v5;
    v5 -= 4;
    result = (*v6)(v4);
    v3 -= 32;
    v8 = v4 == a2;
    v4 = v5;
  }

  while (!v8);
  return result;
}

void sub_1001A39DC()
{
  sub_1001227D0();
  do
  {
    v2 = v1[51];
    if (v2)
    {
      sub_10000367C(v2);
    }

    v3 = v1[29];
    if (v3)
    {
      sub_10000367C(v3);
    }

    v4 = v1[23];
    if (v4)
    {
      sub_10000367C(v4);
    }

    v5 = v1[1];
    if (v5)
    {
      sub_10000367C(v5);
    }

    v1 += 56;
  }

  while (v1 != v0);
}

void (***sub_1001A3A38())(void)
{
  sub_1001227D0();
  v3 = v2;
  do
  {
    v4 = *v3;
    v3 += 3;
    (*v4)();
    v1 += 24;
    result = v3;
  }

  while (v3 != v0);
  return result;
}

uint64_t sub_1001A3AD4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    sub_10006C1E4();
    return (*(v3 + 40))();
  }

  return result;
}

void sub_1001A3B4C(uint64_t a1, uint64_t a2)
{
  do
  {
    v4 = *(a1 + 192);
    if (v4)
    {
      sub_10000367C(v4);
    }

    v5 = *(a1 + 72);
    if (v5)
    {
      sub_10000367C(v5);
    }

    a1 += 208;
  }

  while (a1 != a2);
}

void sub_1001A3B94()
{
  if (__cxa_guard_acquire(byte_1002401E0))
  {
    __cxa_atexit(sub_10012C630, &qword_1002401D0, &_mh_execute_header);

    __cxa_guard_release(byte_1002401E0);
  }
}

void sub_1001A3C00(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_10000367C(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    sub_10000367C(v3);
  }
}

void sub_1001A3C38()
{
  if (__cxa_guard_acquire(byte_100240BF8))
  {
    __cxa_atexit(std::error_category::~error_category, &off_100240370, &_mh_execute_header);

    __cxa_guard_release(byte_100240BF8);
  }
}

void sub_1001A3CA0(uint64_t a1, std::__shared_weak_count **a2)
{
  v3 = *(a1 + 64);
  if (v3)
  {
    sub_10000367C(v3);
  }

  v4 = *a2;
  if (*a2)
  {

    sub_10000367C(v4);
  }
}

void sub_1001A3CF0(char **a1, char *__dst, char *a3, char *__src, uint64_t a5, void *a6)
{
  v12 = *a1;
  v13 = a1[1];
  v14 = __dst;
  if (*a1)
  {
    v14 = __dst;
    if (__dst)
    {
      v14 = __dst;
      if (v12 != __src)
      {
        memmove(__dst, v12, __src - v12);
        v14 = &__dst[__src - v12];
      }
    }
  }

  if (a5)
  {
    memmove(v14, a6, 16 * a5);
  }

  if (__src)
  {
    v15 = &v12[16 * v13];
    if (v15 != __src && v14 != 0)
    {
      memmove(&v14[16 * a5], __src, v15 - __src);
    }
  }

  if (v12 && a1 + 3 != *a1)
  {
    operator delete(*a1);
  }

  v17 = &a1[1][a5];
  *a1 = __dst;
  a1[1] = v17;
  a1[2] = a3;
}

void sub_1001A3DDC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(__cxa_begin_catch(a1) + 2);
  v5 = std::generic_category();
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = 0;
  __cxa_end_catch();
}

uint64_t sub_1001A3E18(void *a1, unint64_t a2, uint64_t a3)
{
  if (a3 == -1)
  {
    return 0;
  }

  v3 = a1[12];
  v4 = (a2 + v3 - 1) / v3 * v3;
  if (a2 > v4 || v4 >= a3 + a2)
  {
    return 0;
  }

  v6 = a2 - v4 + a3;
  v7 = v6 / v3 * v3;
  if (v6 == v6 % v3)
  {
    return 0;
  }

  v8 = 4294967262;
  if (__CFADD__(v4, v7))
  {
    return v8;
  }

  v10 = a1[9];
  if (v4 > v10 || v7 + v4 > v10)
  {
    return v8;
  }

  return madvise((a1[8] + v4), v7, 5);
}

void sub_1001A3EA4(void **a1, std::__shared_weak_count **a2, void *a3)
{
  v4 = *a1;
  if (v4)
  {
    *a3 = v4;
    operator delete(v4);
  }

  if (*a2)
  {
    sub_10000367C(*a2);
  }
}

void sub_1001A3F14()
{
  if (__cxa_guard_acquire(byte_100240C00))
  {
    __cxa_atexit(sub_10019A2A0, 0, &_mh_execute_header);

    __cxa_guard_release(byte_100240C00);
  }
}

void sub_1001A3F78()
{
  if (__cxa_guard_acquire(byte_100240C08))
  {
    __cxa_atexit(sub_10019A2D8, 0, &_mh_execute_header);

    __cxa_guard_release(byte_100240C08);
  }
}

void sub_1001A3FEC()
{
  if (__cxa_guard_acquire(byte_100240C20))
  {
    __cxa_atexit(sub_10019E368, &unk_100240C30, &_mh_execute_header);

    __cxa_guard_release(byte_100240C20);
  }
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__filename(this);
  size = v3.__size_;
  data = v3.__data_;
  result.__size_ = size;
  result.__data_ = data;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__root_directory(this);
  size = v3.__size_;
  data = v3.__data_;
  result.__size_ = size;
  result.__data_ = data;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}