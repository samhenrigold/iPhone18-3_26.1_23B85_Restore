void sub_1001755B0(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_10007AAB4(a1, i))
  {
    i -= 168;
  }

  *(a1 + 8) = a2;
}

uint64_t sub_100175604(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 20) = a4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *a5;
  *(a1 + 40) = *(a5 + 16);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a1 + 48) = 0;
  v7 = a1 + 48;
  *(v7 + 56) = 0;
  if (*(a6 + 56) == 1)
  {
    sub_10008A2D0(v7, a6);
    *(a1 + 104) = 1;
  }

  return a1;
}

void sub_100175680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100071758(va);
  _Unwind_Resume(a1);
}

void sub_100175698(uint64_t *a1)
{
  if (*a1)
  {
    sub_1001755B0(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_1001756D8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100175970(v1);

  return std::ios::~ios();
}

uint64_t sub_100175724(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100175970(v1);

  return std::ios::~ios();
}

void sub_100175784(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100175970(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001757EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100175828(_BYTE *a1, int a2)
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

void sub_100175894(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100175970(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001758F8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100175970(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100175970(uint64_t a1)
{
  *a1 = &off_10022DD60;
  sub_100175ADC(a1);
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

uint64_t sub_100175ADC(uint64_t a1)
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
        sub_100175C8C((a1 + 72), __p);
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

void sub_100175C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100175C54(uint64_t a1)
{
  sub_100175970(a1);

  operator delete();
}

int *sub_100175C8C(uint64_t *a1, uint64_t *a2)
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
    v26 = 610;
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
      v26 = 610;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100175F04(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100175F50(uint64_t a1)
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

uint64_t sub_100176040(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10022DE70;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001760CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10017618C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022D8C0;
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

void sub_10017623C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100176254(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022DAE0;
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

void sub_100176304(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_10017631C(uint64_t a1)
{
  v2 = atomic_load((a1 + 16));
  if (!v2)
  {
    v2 = *(a1 + 20);
  }

  io_rings_return_status(*(*a1 + 56), *(a1 + 8), v2, 0);
  v3 = (a1 + 24);
  sub_100071758(&v3);
  operator delete();
}

void sub_100176390(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001763C8(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = atomic_load((v1 + 16));
  if (!v2)
  {
    v2 = *(v1 + 20);
  }

  io_rings_return_status(*(*v1 + 56), *(v1 + 8), v2, 0);
  v3 = (v1 + 24);
  sub_100071758(&v3);
  operator delete();
}

uint64_t sub_10017643C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100176508(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10022DF50;
  sub_10017664C(a1 + 3, a2, a3, a4, *a5);
}

void sub_100176588(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10022DF50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001765DC(uint64_t a1)
{
  v5 = (a1 + 520);
  sub_10007182C(&v5);
  v2 = *(a1 + 496);
  if (v2)
  {
    *(a1 + 504) = v2;
    operator delete(v2);
  }

  sub_100027DE8(a1 + 272);
  sub_100029C30(a1 + 240);
  v3 = *(a1 + 200);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return sub_10002752C(a1 + 24);
}

void sub_10017664C(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2[1];
  v9[0] = *a2;
  v9[1] = v8;
  v10 = *(a2 + 8);
  sub_100026638(&v11, a2 + 40);
  sub_1001768C8(a1, v9, a3, a5);
}

void sub_100176868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 + 496);
  sub_10007182C(&a9);
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 480) = v12;
    operator delete(v12);
  }

  sub_100176E64(v9);
  _Unwind_Resume(a1);
}

void sub_1001768C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100176EAC(a2, &v30);
  if (v32 == 3)
  {
    sub_10014E08C(v22, a4 == 0, v33, v35);
    sub_10014E140(v28, v22);
    v29 = 2;
    sub_10014E200(v22);
  }

  else if (v32 == 2)
  {
    sub_10014DCB8(v22, a4 == 0, v33, v34, v35);
    sub_10014DDF4(v28, v22);
    v29 = 1;
    v22[0] = off_100228258;
    sub_100027454(&v25);
    v22[0] = off_100204580;
    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }
  }

  else
  {
    sub_10014E4B8(&v20, v34);
    sub_10014D72C(v22, a4 == 0, v33, &v20, v35);
    sub_10014D880(v28, v22);
    v29 = 0;
    v22[0] = off_100228230;
    sub_1000273B4(v26);
    v8 = v25;
    v25 = 0;
    if (v8)
    {
      operator delete[]();
    }

    v22[0] = off_100204580;
    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }

    v9 = v20;
    v20 = 0;
    if (v9)
    {
      operator delete[]();
    }
  }

  v10 = *(sub_100176E00(a2) + 22);
  sub_100027480(a1, v28);
  a1[19] = v10;
  sub_10002752C(v28);
  if (v31)
  {
    sub_10000367C(v31);
  }

  sub_10019A650(a1 + 20);
  a1[20] = off_1002080A8;
  a1[24] = 0;
  a1[25] = 0;
  a1[23] = -1;
  v11 = sub_100176E00(a2)[12];
  a1[26] = v11 - sub_100176E00(a2)[3];
  a1[27] = off_10022DFA0;
  a1[28] = a1;
  a1[30] = a1 + 27;
  v12 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v12;
  v18 = *(a2 + 32);
  sub_100026638(&v19, a2 + 40);
  sub_100029AA4(v27, (a1 + 27));
  sub_100029AA4(v22, v27);
  sub_10017715C(v28, v17, v22);
  sub_100029C30(v22);
  v13 = *(a3 + 16);
  v14[0] = *a3;
  v14[1] = v13;
  v15 = *(a3 + 32);
  sub_100026638(&v16, a3 + 40);
  sub_100029AA4(v21, (a1 + 27));
  sub_100029AA4(&v30, v21);
  sub_10017715C(v22, v14, &v30);
  sub_100029C30(&v30);
  sub_1001771C4((a1 + 31), a1, (a1 + 20), v28, v22, a4, 0);
}

void sub_100176CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  sub_100027320(&a54);
  if (a49)
  {
    operator delete[]();
  }

  v56 = *(v54 - 176);
  if (v56)
  {
    sub_10000367C(v56);
  }

  _Unwind_Resume(a1);
}

uint64_t **sub_100176E00(uint64_t **a1)
{
  sub_100176EAC(a1, &v3);
  sub_1000254A0((a1 + 5), &v3);
  if (v4)
  {
    sub_10000367C(v4);
  }

  return a1 + 5;
}

void sub_100176E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100176E64(uint64_t a1)
{
  sub_100027DE8(a1 + 248);
  sub_100029C30(a1 + 216);
  v2 = *(a1 + 176);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_10002752C(a1);
  return a1;
}

void sub_100176EAC(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v6 = **a1;
  v5 = (*a1)[1];
  if (v5 >= a1[2])
  {
    v7 = a1[2];
  }

  else
  {
    v7 = (*a1)[1];
  }

  v8 = *(sub_10019E2E8() + 1);
  v13 = v6;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = v7;
  v16 = v4;
  v17 = v5;
  v19 = 0;
  v20 = 0;
  v18 = 1 << *(a1 + 8);
  sub_100026638(a2, &v13);
  if (v14)
  {
    sub_10000367C(v14);
  }

  v9 = a1[3];
  if (v9)
  {
    if (*(a2 + 104) == 1)
    {
      v10 = *v9;
      v11 = *(v9 + 1);
      v12 = *(v9 + 2);
      *(a2 + 96) = v9[6];
      *(a2 + 64) = v11;
      *(a2 + 80) = v12;
      *(a2 + 48) = v10;
    }

    else
    {
      sub_10008A2D0(a2 + 48, v9);
      *(a2 + 104) = 1;
    }
  }
}

void sub_100176F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    sub_10000367C(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100176FB8(uint64_t a1)
{
  sub_100029C30(a1 + 152);
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_10000367C(v2);
  }

  return a1;
}

uint64_t sub_100177060(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10022DFA0;
  a2[1] = v2;
  return result;
}

void sub_10017708C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  sub_100026638(&v5, a2);
  v7 += *(v4 + 208);
  if (v8 == 1)
  {
    v8 = 0;
  }

  sub_100026638(a3, &v5);
  if (v6)
  {
    sub_10000367C(v6);
  }
}

void sub_1001770F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100177110(uint64_t a1, uint64_t a2)
{
  if (sub_100009720(a2, &off_10022E000))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10017715C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  *(a1 + 32) = *(a2 + 8);
  *a1 = v5;
  *(a1 + 16) = v6;
  sub_100026638(a1 + 40, a2 + 40);
  sub_100029AA4(a1 + 152, a3);
  return a1;
}

void sub_1001771AC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    sub_10000367C(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001771C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v14 = vm_page_size;
  v15 = *(a2 + 152);
  sub_1001501BC(a6, v20);
  v16 = sub_100177708(a4, a5, v14, v15, v20);
  sub_10014FD78(a1, v16, vm_page_size);
  sub_1000287DC(v20);
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *(a1 + 80) = v8;
  *(a1 + 88) = a7;
  v17 = *(a4 + 16);
  v26[0] = *a4;
  v26[1] = v17;
  v27 = *(a4 + 32);
  sub_100026638(&v28, a4 + 40);
  sub_100029AA4(v30, a4 + 152);
  v18 = *(a5 + 16);
  v21[0] = *a5;
  v21[1] = v18;
  v22 = *(a5 + 32);
  sub_100026638(&v23, a5 + 40);
  sub_100029AA4(v25, a5 + 152);
  v19 = sub_100177A74(v26, v21);
  sub_100029C30(v25);
  if (v24)
  {
    sub_10000367C(v24);
  }

  sub_100029C30(v30);
  if (v29)
  {
    sub_10000367C(v29);
  }

  *(a1 + 96) = v19;
  is_mul_ok(3 * v19, 0x18uLL);
  operator new[]();
}

void sub_100177600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_10002893C(v19 + 32);
  sub_1000287DC(va);
  sub_100028ACC((v18 + 200));
  sub_1000296FC((v18 + 176));
  sub_100028504((v18 + 152));
  sub_1000297B0((v18 + 128));
  sub_100028558((v18 + 104));
  sub_10002986C(v18, 0);
  sub_1000298F0(v18 + 8);
  _Unwind_Resume(a1);
}

void sub_1001776F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_1000287DC(va);
  JUMPOUT(0x1001776F0);
}

uint64_t sub_100177708(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (*a1 == *a2 && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return 0;
  }

  sub_100177F3C(a1);
  sub_100026898(v28, &v42);
  if (v43)
  {
    sub_10000367C(v43);
  }

  v11 = v30 / a3 * a3;
  sub_100177FD0(&v42, a1, a2);
  sub_100177E14(&v42, &v35);
  sub_100177E80(&v42, v31);
  v10 = 0;
  v12 = v35;
  while (v12 != v31[0] || v36 != v31[1] || v38 != v31[3] || v39 != v32)
  {
    sub_100177F3C(&v35);
    sub_100026638(v22, &v26);
    v13 = *(a5 + 24);
    if (!v13)
    {
      sub_10002870C();
    }

    if ((*(*v13 + 48))(v13, v22))
    {
      v14 = v25 - v11 + v24;
      if (v14 % a3)
      {
        v15 = a3 - v14 % a3;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15 + v14;
      v10 += v16;
      v11 += v16;
    }

    else
    {
      v17 = a3;
      if (!(v25 % a4))
      {
        if (!(v24 % a4))
        {
          v11 = v24 + v25;
          goto LABEL_25;
        }

        v17 = 0;
      }

      v18 = v17 + v10;
      if ((v24 + v25) % a4)
      {
        v19 = a3;
      }

      else
      {
        v19 = 0;
      }

      v10 = v18 + v19;
      v11 = (a4 - 1 + v24 + v25) / a4 * a4;
    }

LABEL_25:
    if (v23)
    {
      sub_10000367C(v23);
    }

    if (v27)
    {
      sub_10000367C(v27);
    }

    v20 = *(v35 + 8);
    if (v20 >= v37)
    {
      v20 = v37;
    }

    v37 -= v20;
    v12 = v35 + 16;
    v36 += v20;
    v35 += 16;
  }

  sub_100029C30(&v34);
  if (v33)
  {
    sub_10000367C(v33);
  }

  sub_100029C30(&v41);
  if (v40)
  {
    sub_10000367C(v40);
  }

  sub_100029C30(&v47);
  if (v46)
  {
    sub_10000367C(v46);
  }

  sub_100029C30(&v45);
  if (v44)
  {
    sub_10000367C(v44);
  }

  if (v29)
  {
    sub_10000367C(v29);
  }

  return v10;
}

void sub_100177A00(_Unwind_Exception *a1)
{
  if (STACK[0x2D0])
  {
    sub_10000367C(STACK[0x2D0]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100177A74(__int128 *a1, __int128 *a2)
{
  v4 = a1[1];
  v20 = *a1;
  v21 = v4;
  v22 = *(a1 + 8);
  sub_100026638(&v23, a1 + 40);
  sub_100029AA4(v25, a1 + 152);
  v14 = *a2;
  v15 = a2[1];
  v16 = *(a2 + 8);
  sub_100026638(&v17, a2 + 40);
  sub_100029AA4(v19, a2 + 152);
  v5 = *(&v20 + 1);
  if (v20 == v14 && __PAIR128__(*(&v21 + 1), *(&v20 + 1)) == __PAIR128__(*(&v15 + 1), *(&v14 + 1)) && v22 == v16)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = v21;
    v8 = v20 + 16;
    while (1)
    {
      v9 = v8;
      ++v6;
      v10 = *(v8 - 8);
      if (v10 >= v7)
      {
        v10 = v7;
      }

      v5 += v10;
      v7 -= v10;
      *&v21 = v7;
      v8 = v9 + 16;
      if (v9 == v14)
      {
        v11 = v5 == *(&v14 + 1) && *(&v21 + 1) == *(&v15 + 1);
        if (v11 && v22 == v16)
        {
          break;
        }
      }
    }

    *&v20 = v9;
    *(&v20 + 1) = v5;
  }

  sub_100029C30(v19);
  if (v18)
  {
    sub_10000367C(v18);
  }

  sub_100029C30(v25);
  if (v24)
  {
    sub_10000367C(v24);
  }

  return v6;
}

void sub_100177BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a15)
  {
    sub_10000367C(a15);
  }

  sub_100176FB8(&a33);
  _Unwind_Resume(a1);
}

void sub_100177C2C(void *a1, __int128 *a2, __int128 *a3)
{
  sub_100177FD0(v23, a2, a3);
  sub_100177E14(v23, &v16);
  sub_100177E80(v23, v12);
  v4 = v16;
  while (v4 != v12[0] || v17 != v12[1] || v19 != v12[3] || v20 != v13)
  {
    sub_100177F3C(&v16);
    sub_100026638(&v7, &v10);
    v5 = sub_10014FEB0(a1, &v7, 0);
    if (v5 != v9)
    {
      sub_100150200(a1, &v7, v5, 0);
    }

    if (v8)
    {
      sub_10000367C(v8);
    }

    if (v11)
    {
      sub_10000367C(v11);
    }

    v6 = *(v16 + 8);
    if (v6 >= v18)
    {
      v6 = v18;
    }

    v17 += v6;
    v18 -= v6;
    v4 = v16 + 16;
    v16 += 16;
  }

  sub_100029C30(&v15);
  if (v14)
  {
    sub_10000367C(v14);
  }

  sub_100029C30(&v22);
  if (v21)
  {
    sub_10000367C(v21);
  }

  sub_100029C30(&v27);
  if (v26)
  {
    sub_10000367C(v26);
  }

  sub_100029C30(&v25);
  if (v24)
  {
    sub_10000367C(v24);
  }
}

void sub_100177DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  sub_100176FB8(&a38);
  sub_100176FB8(&a61);
  sub_100177EF0(&STACK[0x258]);
  _Unwind_Resume(a1);
}

uint64_t sub_100177E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 32);
  sub_100026638(a2 + 40, a1 + 40);
  return sub_100029AA4(a2 + 152, a1 + 152);
}

void sub_100177E60(void *a1)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    sub_10000367C(v3);
  }

  sub_100002A4C(a1);
}

uint64_t sub_100177E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 200);
  *a2 = *(a1 + 184);
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 216);
  sub_100026638(a2 + 40, a1 + 224);
  return sub_100029AA4(a2 + 152, a1 + 336);
}

void sub_100177ED0(void *a1)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    sub_10000367C(v3);
  }

  sub_100002A4C(a1);
}

uint64_t sub_100177EF0(uint64_t a1)
{
  sub_100029C30(a1 + 336);
  v2 = *(a1 + 232);
  if (v2)
  {
    sub_10000367C(v2);
  }

  sub_100029C30(a1 + 152);
  v3 = *(a1 + 48);
  if (v3)
  {
    sub_10000367C(v3);
  }

  return a1;
}

void sub_100177F3C(uint64_t a1)
{
  sub_100176EAC(a1, &v3);
  v2 = *(a1 + 176);
  if (!v2)
  {
    sub_10002870C();
  }

  (*(*v2 + 48))(v2, &v3);
  if (v4)
  {
    sub_10000367C(v4);
  }
}

void sub_100177FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100177FD0(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = *a2;
  v7 = a2[1];
  *(a1 + 32) = *(a2 + 8);
  *a1 = v6;
  *(a1 + 16) = v7;
  sub_100026638(a1 + 40, a2 + 40);
  sub_100029AA4(a1 + 152, a2 + 152);
  v8 = *a3;
  v9 = a3[1];
  *(a1 + 216) = *(a3 + 8);
  *(a1 + 200) = v9;
  *(a1 + 184) = v8;
  sub_100026638(a1 + 224, a3 + 40);
  sub_100029AA4(a1 + 336, a3 + 152);
  return a1;
}

void sub_100178058(void *a1)
{
  v3 = *(v1 + 232);
  if (v3)
  {
    sub_10000367C(v3);
  }

  sub_100002A4C(a1);
}

uint64_t sub_10017811C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void *sub_1001781F0(uint64_t a1, void **a2, const void **a3, size_t *a4)
{
  v4 = *a3;
  memcpy(*a2, *a3, *a4);
  return v4;
}

uint64_t sub_10017822C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100178278(unint64_t *a1)
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
    sub_1001177FC(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_1001173D4(a1, &v9);
}

void sub_100178400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10017844C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022DD60;
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

void sub_1001784FC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100178514(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = v4 + v3;
  if (__CFADD__(v4, v3))
  {
    v6 = -1;
  }

  else
  {
    v6 = v4 + v3;
  }

  if (__CFADD__(v4, v3))
  {
    v5 = v6;
  }

  if (v5 > *(a1 + 72))
  {
    *&v8 = "int Ram::_write(const sg_entry &)";
    *(&v8 + 1) = 15;
    v9 = 16;
    sub_10017861C(v10, &v8);
    sub_1000026BC(v11, "Trying to write @ ", 18);
    std::ostream::operator<<();
    sub_1000026BC(v11, " ", 1);
    std::ostream::operator<<();
    sub_1000026BC(v11, "bytes, which is after end of ramdisk", 36);
    sub_100178744(v10);
    return 4294967274;
  }

  else
  {
    memcpy((*(a1 + 64) + v4), *a2, v3);
    return *(a2 + 16);
  }
}

void sub_100178600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100178744(va);
  _Unwind_Resume(a1);
}

void *sub_10017861C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100179A2C(a1, a2);
  *a1 = off_10022E210;
  a1[45] = &off_10022E310;
  a1[46] = &off_10022E338;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022E210;
  a1[45] = off_10022E298;
  a1[46] = off_10022E2C0;
  return a1;
}

void sub_100178720(_Unwind_Exception *a1)
{
  sub_100178D38(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100178744(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100178D38(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100178788(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = v4 + v3;
  if (__CFADD__(v4, v3))
  {
    v6 = -1;
  }

  else
  {
    v6 = v4 + v3;
  }

  if (__CFADD__(v4, v3))
  {
    v5 = v6;
  }

  if (v5 > *(a1 + 72))
  {
    *&v8 = "int Ram::_read(const sg_entry &)";
    *(&v8 + 1) = 14;
    v9 = 16;
    sub_100178894(v10, &v8);
    sub_1000026BC(v11, "Trying to read @ ", 17);
    std::ostream::operator<<();
    sub_1000026BC(v11, " ", 1);
    std::ostream::operator<<();
    sub_1000026BC(v11, "bytes, which is after end of ramdisk", 36);
    sub_1001789BC(v10);
    return 4294967274;
  }

  else
  {
    memcpy(*a2, (*(a1 + 64) + v4), v3);
    return *(a2 + 16);
  }
}

void sub_100178878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1001789BC(va);
  _Unwind_Resume(a1);
}

void *sub_100178894(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100179AF4(a1, a2);
  *a1 = off_10022E430;
  a1[45] = &off_10022E530;
  a1[46] = &off_10022E558;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022E430;
  a1[45] = off_10022E4B8;
  a1[46] = off_10022E4E0;
  return a1;
}

void sub_100178998(_Unwind_Exception *a1)
{
  sub_1001794D0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001789BC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001794D0(a1);
  std::ios::~ios();
  return a1;
}

void sub_100178A04(void *a1)
{
  sub_1001799D0(a1);

  operator delete();
}

uint64_t sub_100178A5C(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 72) < a2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 72) = a2;
  return result;
}

uint64_t sub_100178AA0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100178D38(v1);

  return std::ios::~ios();
}

uint64_t sub_100178AEC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100178D38(v1);

  return std::ios::~ios();
}

void sub_100178B4C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100178D38(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100178BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100178BF0(_BYTE *a1, int a2)
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

void sub_100178C5C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100178D38(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100178CC0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100178D38(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100178D38(uint64_t a1)
{
  *a1 = &off_10022E3A8;
  sub_100178EA4(a1);
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

uint64_t sub_100178EA4(uint64_t a1)
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
        sub_100179054((a1 + 72), __p);
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

void sub_100178FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017901C(uint64_t a1)
{
  sub_100178D38(a1);

  operator delete();
}

int *sub_100179054(uint64_t *a1, uint64_t *a2)
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
    v26 = 30;
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
      v26 = 30;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100179238(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001794D0(v1);

  return std::ios::~ios();
}

uint64_t sub_100179284(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001794D0(v1);

  return std::ios::~ios();
}

void sub_1001792E4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001794D0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017934C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100179388(_BYTE *a1, int a2)
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

void sub_1001793F4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001794D0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100179458(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001794D0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001794D0(uint64_t a1)
{
  *a1 = &off_10022E5C8;
  sub_10017963C(a1);
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

uint64_t sub_10017963C(uint64_t a1)
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
        sub_1001797EC((a1 + 72), __p);
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

void sub_100179788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001797B4(uint64_t a1)
{
  sub_1001794D0(a1);

  operator delete();
}

int *sub_1001797EC(uint64_t *a1, uint64_t *a2)
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
    v26 = 42;
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
      v26 = 42;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_1001799D0(void *a1)
{
  *a1 = off_10022E120;
  sub_10002986C(a1 + 3, 0);
  sub_1000298F0((a1 + 4));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_100179A2C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022E3A8;
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

void sub_100179ADC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100179AF4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022E5C8;
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

void sub_100179BA4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100179BC4@<X0>(const char **a1@<X0>, _BYTE *a2@<X8>)
{
  sub_100009110(v17);
  v4 = strlen(a1[3]);
  v5 = sub_1000026BC(&v18, a1[3], v4);
  v6 = sub_1000026BC(v5, ": ", 2);
  v7 = strlen(a1[1]);
  v8 = sub_1000026BC(v6, a1[1], v7);
  v9 = sub_1000026BC(v8, " - ", 3);
  v10 = a1[2];
  v11 = strlen(v10);
  sub_1000026BC(v9, v10, v11);
  if ((v25 & 0x10) != 0)
  {
    v13 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v13 = v21;
    }

    locale = v20[4].__locale_;
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v12 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    locale = v20[1].__locale_;
    v13 = v20[3].__locale_;
  }

  v12 = v13 - locale;
  if ((v13 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100002A60();
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  a2[23] = v12;
  if (v12)
  {
    memmove(a2, locale, v12);
  }

LABEL_14:
  a2[v12] = 0;
  v18 = v15;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

uint64_t sub_10017C938(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10017C950(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = a1[4];
    v9 = [v7 filePath];
    v10 = [v9 lastPathComponent];
    v11 = [v8 URLByAppendingPathComponent:v10];

    v12 = a1[5];
    v13 = [v7 filePath];
    v14 = *(a1[6] + 8);
    obj = *(v14 + 40);
    LOBYTE(v12) = [v12 copyItemAtURL:v13 toURL:v11 error:&obj];
    objc_storeStrong((v14 + 40), obj);

    if (v12)
    {
      [*(*(a1[7] + 8) + 40) addObject:v11];
    }

    else
    {
      *a4 = 1;
    }
  }

  else
  {
    *a4 = 1;
    v15 = *(a1[6] + 8);
    v18 = *(v15 + 40);
    [DIError failWithPOSIXCode:45 verboseInfo:@"Clone of plugin nodes is not supported." error:&v18];
    v16 = v18;
    v7 = *(v15 + 40);
    *(v15 + 40) = v16;
  }
}

void sub_10017CFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10017CFD0(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[4];
  v7 = *(a1[6] + 8);
  obj = *(v7 + 40);
  v8 = [DiskImageGraphNode GraphNodeWithDictionary:a2 workDir:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (v8)
  {
    v9 = a1[5];
    v10 = [v8 UUID];
    v11 = [v10 UUIDString];
    [v9 setObject:v8 forKey:v11];
  }

  else
  {
    *a4 = 1;
  }
}

void sub_10017D1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10017D1B8(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v15 = a3;
  v6 = [v15 parentUUID];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v15 parentUUID];
    v9 = [v8 UUIDString];
    v10 = [v7 objectForKey:v9];

    if (v10)
    {
      [v15 setParent:v10];
      v11 = [v15 parent];
      v12 = [v11 mutableChildren];
      [v12 addObject:v15];
    }

    else
    {
      *a4 = 1;
      v13 = [DIError errorWithPOSIXCode:22 verboseInfo:@"Missing parent node in graph."];
      v14 = *(*(a1 + 40) + 8);
      v11 = *(v14 + 40);
      *(v14 + 40) = v13;
    }
  }
}

void sub_10017D688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10017D6A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 tag];
  v5 = [v4 isEqualToString:*(*(*(a1 + 32) + 8) + 40)];

  return v5;
}

uint64_t sub_10017E404(void *a1, size_t a2)
{
  result = CCRandomGenerateBytes(a1, a2);
  if (result)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v4);
    sub_1000026BC(v4, "random generation failed with err code ", 39);
    std::ostream::operator<<();
    sub_100004290(exception, v4, 0x9Au);
  }

  return result;
}

void sub_10017E4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000022B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10017E4D8(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  LODWORD(v9) = 0;
  sub_10009C144("public_key_crypto_algo_mode", 0, &v9, 1);
  bzero((a1 + 48), 0x204uLL);
  LODWORD(v9) = bswap32(*a2);
  sub_10017F2A8(a1, &v9);
  v4 = *(a2 + 4);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 4) = v4;
  v5 = bswap32(*(a2 + 36));
  LODWORD(v9) = 42;
  sub_10009C144("public_key_crypto_algo", v5, &v9, 1);
  *(a1 + 36) = v5;
  v6 = bswap32(*(a2 + 40));
  v9 = 0x800000010000000ALL;
  sub_10009C144("public_key_padding_algo", v6, &v9, 2);
  *(a1 + 40) = v6;
  v7 = bswap32(*(a2 + 44));
  LODWORD(v9) = 0;
  sub_10009C144("public_key_crypto_algo_mode", v7, &v9, 1);
  *(a1 + 44) = v7;
  LODWORD(v9) = bswap32(*(a2 + 48));
  sub_1001805EC((a1 + 48), &v9);
  memcpy((a1 + 52), (a2 + 52), 0x200uLL);
  return a1;
}

uint64_t sub_10017E8BC(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x2A00000000;
  LODWORD(v3) = 42;
  sub_10009C144("public_key_crypto_algo", 42, &v3, 1);
  *(a1 + 40) = 10;
  v3 = 0x800000010000000ALL;
  sub_10009C144("public_key_padding_algo", 10, &v3, 2);
  *(a1 + 44) = 0;
  LODWORD(v3) = 0;
  sub_10009C144("public_key_crypto_algo_mode", 0, &v3, 1);
  bzero((a1 + 48), 0x204uLL);
  return a1;
}

SecKeyAlgorithm sub_10017E99C(uint64_t a1)
{
  if (*(a1 + 36) != 42)
  {
    goto LABEL_7;
  }

  v1 = *(a1 + 40);
  if (v1 == 10)
  {
    v2 = &kSecKeyAlgorithmRSAEncryptionPKCS1;
    return *v2;
  }

  if (v1 != -2147483647)
  {
LABEL_7:
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = sub_100001860(exception, "Unsupported public key algorithm.", 0xA1u);
  }

  v2 = &kSecKeyAlgorithmRSAEncryptionOAEPSHA1;
  return *v2;
}

uint64_t sub_10017EA1C(uint64_t a1, uint64_t a2)
{
  *a2 = bswap32(*a1);
  v3 = *(a1 + 4);
  *(a2 + 20) = *(a1 + 20);
  *(a2 + 4) = v3;
  *(a2 + 36) = bswap32(*(a1 + 36));
  *(a2 + 40) = bswap32(*(a1 + 40));
  *(a2 + 44) = bswap32(*(a1 + 44));
  *(a2 + 48) = bswap32(*(a1 + 48));
  memcpy((a2 + 52), (a1 + 52), 0x200uLL);
  return a2 + 564;
}

int *sub_10017EAA0(int *a1, uint64_t a2)
{
  bzero(a1, 0x268uLL);
  v4 = bswap32(*a2);
  LODWORD(v12) = 103;
  sub_10009C144("key_derivation_algorithm_t", v4, &v12, 1);
  *a1 = v4;
  v5 = bswap32(*(a2 + 4));
  LODWORD(v12) = 0;
  sub_10009C144("key_derivation_prng_algorithm_t", v5, &v12, 1);
  a1[1] = v5;
  a1[2] = bswap32(*(a2 + 8));
  LODWORD(v12) = bswap32(*(a2 + 12));
  sub_10017F2A8(a1 + 3, &v12);
  v6 = *(a2 + 32);
  *(a1 + 1) = *(a2 + 16);
  *(a1 + 2) = v6;
  LODWORD(v12) = bswap32(*(a2 + 48));
  sub_10017F2A8(a1 + 12, &v12);
  v7 = *(a2 + 52);
  *(a1 + 17) = *(a2 + 68);
  *(a1 + 13) = v7;
  a1[21] = bswap32(*(a2 + 84));
  v8 = bswap32(*(a2 + 88));
  v12 = 0x8000000100000011;
  sub_10009C144("wrap_key_crypto_algo", v8, &v12, 2);
  a1[22] = v8;
  v9 = bswap32(*(a2 + 92));
  LODWORD(v12) = 7;
  sub_10009C144("wrap_key_crypto_padding_algo", v9, &v12, 1);
  a1[23] = v9;
  v10 = bswap32(*(a2 + 96));
  LODWORD(v12) = 6;
  sub_10009C144("crypto_mode", v10, &v12, 1);
  a1[24] = v10;
  LODWORD(v12) = bswap32(*(a2 + 100));
  sub_1001805EC(a1 + 25, &v12);
  memcpy(a1 + 26, (a2 + 104), 0x200uLL);
  return a1;
}

uint64_t sub_10017F068(uint64_t a1, uint64_t a2)
{
  *a2 = bswap32(*a1);
  *(a2 + 4) = bswap32(*(a1 + 4));
  *(a2 + 8) = bswap32(*(a1 + 8));
  *(a2 + 12) = bswap32(*(a1 + 12));
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *(a2 + 48) = bswap32(*(a1 + 48));
  v4 = *(a1 + 52);
  *(a2 + 68) = *(a1 + 68);
  *(a2 + 52) = v4;
  *(a2 + 84) = bswap32(*(a1 + 84));
  *(a2 + 88) = bswap32(*(a1 + 88));
  *(a2 + 92) = bswap32(*(a1 + 92));
  *(a2 + 96) = bswap32(*(a1 + 96));
  *(a2 + 100) = bswap32(*(a1 + 100));
  memcpy((a2 + 104), (a1 + 104), 0x200uLL);
  return a2 + 616;
}

uint64_t sub_10017F130(uint64_t a1)
{
  *a1 = 103;
  LODWORD(v3) = 103;
  sub_10009C144("key_derivation_algorithm_t", 103, &v3, 1);
  *(a1 + 4) = 0;
  LODWORD(v3) = 0;
  sub_10009C144("key_derivation_prng_algorithm_t", 0, &v3, 1);
  *(a1 + 68) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 84) = 0x11000000C0;
  v3 = 0x8000000100000011;
  sub_10009C144("wrap_key_crypto_algo", 17, &v3, 2);
  *(a1 + 92) = 7;
  LODWORD(v3) = 7;
  sub_10009C144("wrap_key_crypto_padding_algo", 7, &v3, 1);
  *(a1 + 96) = 6;
  LODWORD(v3) = 6;
  sub_10009C144("crypto_mode", 6, &v3, 1);
  bzero((a1 + 100), 0x204uLL);
  LODWORD(v3) = 20;
  sub_10017F2A8((a1 + 12), &v3);
  LODWORD(v3) = 8;
  sub_10017F2A8((a1 + 48), &v3);
  sub_10017E404((a1 + 16), *(a1 + 12));
  sub_10017E404((a1 + 52), *(a1 + 48));
  return a1;
}

_DWORD *sub_10017F2A8(_DWORD *result, _DWORD *a2)
{
  if (*a2 >= 0x21u)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = &off_1002264F8;
    exception[1] = "bla";
    exception[2] = "field size too large";
  }

  *result = *a2;
  return result;
}

uint64_t sub_10017F31C(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == -2147483647)
  {
    return 0;
  }

  if (v1 != 17)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v4);
    sub_1000026BC(v4, "Unsupported key decryption algo", 31);
    sub_100004290(exception, v4, 0xA1u);
  }

  return 2;
}

void sub_10017F3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000022B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10017F3FC(uint64_t a1, uint64_t a2)
{
  bzero(a1, 0x22CuLL);
  v7 = bswap32(*a2);
  sub_10017F2A8(a1, &v7);
  v4 = *(a2 + 4);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 4) = v4;
  v5 = bswap32(*(a2 + 36));
  v8 = -2147483647;
  sub_10009C144("wrap_key_crypto_algo", v5, &v8, 1);
  *(a1 + 36) = v5;
  v9 = bswap32(*(a2 + 40));
  sub_1001805EC((a1 + 40), &v9);
  memcpy((a1 + 44), (a2 + 44), 0x200uLL);
  return a1;
}

uint64_t sub_10017F5C4(uint64_t a1, uint64_t a2)
{
  *a2 = bswap32(*a1);
  v3 = *(a1 + 4);
  *(a2 + 20) = *(a1 + 20);
  *(a2 + 4) = v3;
  *(a2 + 36) = bswap32(*(a1 + 36));
  *(a2 + 40) = bswap32(*(a1 + 40));
  memcpy((a2 + 44), (a1 + 44), 0x200uLL);
  return a2 + 556;
}

uint64_t sub_10017F630(uint64_t a1)
{
  if (*(a1 + 36) != -2147483647)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100002148(v3);
    sub_1000026BC(v3, "Unsupported key decryption algo", 31);
    sub_100004290(exception, v3, 0xA1u);
  }

  return 0;
}

void sub_10017F6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000022B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10017F700(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = bswap32(*a2);
  *(result + 4) = bswap64(*(a2 + 4));
  *(result + 12) = bswap64(*(a2 + 12));
  return result;
}

uint64_t sub_10017F730(uint64_t a1, uint64_t a2)
{
  *a2 = bswap32(*a1);
  *(a2 + 4) = bswap64(*(a1 + 4));
  *(a2 + 12) = bswap64(*(a1 + 12));
  return a2 + 20;
}

void *sub_10017F75C(void *a1, const void **a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    v6 = a3;
    v7 = a4 >> 3;
    v8 = a5 >> 3;
    v9 = *a2;
    v10 = (a5 >> 3) + (a4 >> 3);
    do
    {
      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
      sub_10018253C(v15, v9, &v9[v7], v7);
      __p[0] = 0;
      __p[1] = 0;
      v18 = 0;
      sub_10018253C(__p, &v9[v7], &v9[v10], v8);
      v11 = a1[1];
      if (v11 >= a1[2])
      {
        v12 = sub_1001822F0(a1, v15);
        v13 = __p[0];
        a1[1] = v12;
        if (v13)
        {
          __p[1] = v13;
          operator delete(v13);
        }
      }

      else
      {
        v11[2] = 0;
        v11[3] = 0;
        *v11 = 0;
        v11[1] = 0;
        *v11 = *v15;
        v11[2] = v16;
        v15[0] = 0;
        v15[1] = 0;
        v16 = 0;
        v11[4] = 0;
        v11[5] = 0;
        *(v11 + 3) = *__p;
        v11[5] = v18;
        __p[0] = 0;
        __p[1] = 0;
        v18 = 0;
        a1[1] = v11 + 6;
      }

      if (v15[0])
      {
        v15[1] = v15[0];
        operator delete(v15[0]);
      }

      v9 += v10;
      --v6;
    }

    while (v6);
  }

  return a1;
}

void sub_10017F890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  sub_1001825B8(&__p);
  sub_100036760(&__p);
  _Unwind_Resume(a1);
}

void *sub_10017F8D4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 == *(a1 + 8))
  {
    result = std::generic_category();
    *a3 = a1;
    *(a3 + 8) = 0;
    *(a3 + 16) = 22;
    *(a3 + 24) = result;
LABEL_7:
    *(a3 + 632) = 4;
    return result;
  }

  result = (*(**(a1 + 24) + 8))(v6);
  if (v7 != 1)
  {
    *a3 = a1;
    *(a3 + 8) = 0;
    *(a3 + 16) = v6[0];
    goto LABEL_7;
  }

  result = sub_100036488(a3, v6);
  if (v7)
  {
    return sub_100035E5C(v6);
  }

  return result;
}

void sub_10017F9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (STACK[0x280])
  {
    sub_100035E5C(&a9);
  }

  _Unwind_Resume(a1);
}

void sub_10017F9F8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (***(a1 + 24))(&v6);
  if (v8 == 1)
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }

    *a1 = v6;
    *(a1 + 16) = v7;
    v7 = 0;
    v6 = 0uLL;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = v6;
  }

  *(a2 + 16) = v5;
}

_BYTE *sub_10017FA9C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v22 = *a2;
  v23 = *(a2 + 4);
  if (*(a2 + 20) == 1)
  {
    *(a2 + 20) = 0;
  }

  v6 = *(a1 + 8);
  v7 = a3[1];
  if (*a3 == a1 && v7 == v6)
  {
    v11 = *(a1 + 16);
    if (v6 >= v11)
    {
      v14 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *a1) >> 2);
      v15 = v14 + 1;
      if (v14 + 1 > 0xCCCCCCCCCCCCCCCLL)
      {
        sub_100036CAC();
      }

      v16 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - *a1) >> 2);
      if (2 * v16 > v15)
      {
        v15 = 2 * v16;
      }

      if (v16 >= 0x666666666666666)
      {
        v17 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        sub_100182664(a1, v17);
      }

      v18 = 20 * v14;
      *v18 = v22;
      *(v18 + 16) = v23;
      v13 = 20 * v14 + 20;
      v19 = *(a1 + 8) - *a1;
      v20 = 20 * v14 - v19;
      memcpy((v18 - v19), *a1, v19);
      v21 = *a1;
      *a1 = v20;
      *(a1 + 8) = v13;
      *(a1 + 16) = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      v12 = *a2;
      *(v6 + 16) = *(a2 + 4);
      *v6 = v12;
      v13 = v6 + 20;
    }

    *(a1 + 8) = v13;
    *&v25 = a1;
    *(&v25 + 1) = v13 - 20;
    v26[0] = 0;
    v27 = 0;
    *a4 = v25;
    result = sub_1001825FC((a4 + 16), v26);
  }

  else
  {
    v9 = *a2;
    *(v7 + 16) = *(a2 + 4);
    *v7 = v9;
    *&v24 = a1;
    *(&v24 + 1) = v7;
    v26[0] = 0;
    v27 = 0;
    *a4 = v24;
    result = sub_1001825FC((a4 + 16), v26);
  }

  *(a4 + 664) = 1;
  if (v27 == 1)
  {
    return sub_100035E5C(v26);
  }

  return result;
}

void sub_10017FC90(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x2B0]) == 1)
  {
    sub_100035E5C(v1 + 16);
  }

  _Unwind_Resume(a1);
}

void sub_10017FCC0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  (*(**(*a1 + 24) + 32))(&v10);
  if (v11)
  {
    v4 = (*(**(v3 + 24) + 24))(*(v3 + 24), 0);
    sub_10017FE38(v4, &v8);
    if (v9)
    {
      v5 = (*(**(v3 + 24) + 24))(*(v3 + 24), 1);
      sub_10017FE38(v5, &v8);
      if (v9)
      {
        v6 = (*(**(v3 + 24) + 16))(*(v3 + 24));
        sub_10017F75C(&v8, &v10, v6, v4, v5);
        *a2 = v8;
        *(a2 + 16) = v9;
        v9 = 0;
        v8 = 0uLL;
        *(a2 + 24) = 1;
        v12 = &v8;
        sub_100036760(&v12);
        return;
      }
    }

    v7 = v8;
  }

  else
  {
    v7 = v10;
  }

  *a2 = v7;
  *(a2 + 24) = 0;
}

uint64_t sub_10017FE38@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result < 1 || (result & 7) != 0)
  {
    *&v5 = "diskimage_err> crypto::validate_key_size(ssize_t)";
    *(&v5 + 1) = 40;
    v6 = 16;
    sub_100171E9C(v7, &v5);
    sub_1000026BC(v8, "Key size isn't a multiple of 8", 30);
    std::ostream::~ostream();
    sub_1001749A4(v7);
    std::ios::~ios();
    result = make_error_code(152);
    v3 = 0;
    *a2 = result;
    *(a2 + 8) = v4;
  }

  else
  {
    v3 = 1;
  }

  *(a2 + 16) = v3;
  return result;
}

void sub_10017FEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100171FC4(va);
  _Unwind_Resume(a1);
}

void sub_10017FF04(uint64_t a1@<X0>, const char *a2@<X1>, int *a3@<X2>, void (***a4)(void **__return_ptr, void)@<X3>, uint64_t a5@<X8>)
{
  sub_100180290(a2, v35);
  if ((v35[16] & 1) == 0)
  {
    v19 = *v35;
LABEL_8:
    *a5 = v19;
    *(a5 + 628) = 0;
    return;
  }

  v10 = *a3;
  sub_10017F130(v28);
  *v35 = a1;
  *&v35[8] = v10;
  v38 = v29;
  *&v35[12] = v28[0];
  v36 = v28[1];
  v37 = v28[2];
  v39 = v30;
  v40 = v31;
  v41 = v32;
  v42 = v33;
  memcpy(dataOut, v34, 0x200uLL);
  LODWORD(v28[0]) = 8;
  sub_10017F2A8(&v38, v28);
  v11 = strlen(a2);
  *&v35[20] = CCCalibratePBKDF(2u, v11, *&v35[24], 1u, v41 >> 3, 0x64u);
  (**a4)(__p, a4);
  if (v27 != 1)
  {
    v19 = *__p;
    goto LABEL_8;
  }

  dataOutMoved = 0;
  sub_1001802F0(v35, a2, &v23);
  if (v24)
  {
    v12 = sub_10017F31C(&v35[12]);
    v13 = v23;
    v14 = *(&v23 + 1) - v23;
    v15 = CCCrypt(0, v12, 1u, v23, *(&v23 + 1) - v23, &v39, __p[0], __p[1] - __p[0], dataOut, 0x200uLL, &dataOutMoved);
    bzero(v13, v14);
    if (v15)
    {
      *&v21 = "std::expected<passphrase, diskimage_err> crypto::auth_entry_ns::passphrase::create(const auth_table &, const char *, diskimage_uio::option_set<locked_entity> &&, serializer_t &)";
      *(&v21 + 1) = 82;
      v22 = 16;
      sub_100180480(v28, &v21);
      sub_1000026BC(&v34[32], "Image key encoding failed with err code ", 40);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_100182950(v28);
      std::ios::~ios();
      error_code = make_error_code(154);
      v17 = 0;
      *a5 = error_code;
      *(a5 + 8) = v18;
    }

    else
    {
      LODWORD(v28[0]) = dataOutMoved;
      sub_1001805EC(&v42, v28);
      *a5 = *v35;
      *(a5 + 12) = *&v35[12];
      *(a5 + 28) = v36;
      *(a5 + 44) = v37;
      *(a5 + 60) = v38;
      v20 = v40;
      *(a5 + 64) = v39;
      *(a5 + 80) = v20;
      *(a5 + 96) = v41;
      *(a5 + 112) = v42;
      memcpy((a5 + 116), dataOut, 0x200uLL);
      v17 = 1;
    }

    *(a5 + 628) = v17;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *a5 = v23;
    *(a5 + 628) = 0;
  }

  if (v27)
  {
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_100180228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28)
{
  if (v28)
  {
    operator delete(v28);
  }

  if (a24 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

size_t sub_100180290@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && *a1)
  {
    result = strnlen(a1, 0x101uLL);
    if (result < 0x101)
    {
      v5 = 1;
      goto LABEL_7;
    }

    v4 = 169;
  }

  else
  {
    v4 = 168;
  }

  result = make_error_code(v4);
  v5 = 0;
  *a2 = result;
  *(a2 + 8) = v6;
LABEL_7:
  *(a2 + 16) = v5;
  return result;
}

double sub_1001802F0@<D0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 96);
  sub_10017FE38(v6, &v12);
  if (v13)
  {
    LOBYTE(v12) = 0;
    sub_100182E50(&v15, v6 >> 3, &v12);
    v7 = strlen(a2);
    if (CCKeyDerivationPBKDF(2u, a2, v7, (a1 + 28), *(a1 + 24), 1u, *(a1 + 20), v15, *(&v15 + 1) - v15))
    {
      *&v10 = "diskimage_err> crypto::auth_entry_ns::passphrase::generate_derivation_key(const char *) const";
      *(&v10 + 1) = 73;
      v11 = 16;
      sub_100180948(&v12, &v10);
      sub_1000026BC(v14, "crypto_format: Can't derive key ", 32);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_100183168(&v12);
      std::ios::~ios();
      *a3 = make_error_code(152);
      *(a3 + 8) = v8;
      *(a3 + 24) = 0;
      if (v15)
      {
        *(&v15 + 1) = v15;
        operator delete(v15);
      }
    }

    else
    {
      result = *&v15;
      *a3 = v15;
      *(a3 + 16) = v16;
      *(a3 + 24) = 1;
    }
  }

  else
  {
    result = *&v12;
    *a3 = v12;
    *(a3 + 24) = 0;
  }

  return result;
}

void sub_10018044C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = *(v14 - 80);
  if (v16)
  {
    *(v14 - 72) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100180480(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100186B90(a1, a2);
  *a1 = off_10022E768;
  a1[45] = &off_10022E868;
  a1[46] = &off_10022E890;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022E768;
  a1[45] = off_10022E7F0;
  a1[46] = off_10022E818;
  return a1;
}

void sub_100180584(_Unwind_Exception *a1)
{
  sub_100182950(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001805A8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100182950(a1);
  std::ios::~ios();
  return a1;
}

_DWORD *sub_1001805EC(_DWORD *result, _DWORD *a2)
{
  if (*a2 >= 0x201u)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = &off_1002264F8;
    exception[1] = "bla";
    exception[2] = "field size too large";
  }

  *result = *a2;
  return result;
}

double sub_100180660@<D0>(uint64_t *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  sub_100180290(a2, &v8);
  if ((v9 & 1) != 0 && (sub_100180718(a1, a2, &v8), v10 == 1))
  {
    v6 = v8;
    sub_10017FCC0(a1, a3);
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    result = *&v8;
    *a3 = v8;
    *(a3 + 24) = 0;
  }

  return result;
}

void sub_100180700(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100180718(unsigned int *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  __len = 0;
  sub_1001802F0(a1, a2, &key);
  if (v16 != 1)
  {
    *a3 = key;
    *(a3 + 24) = 0;
    return;
  }

  v5 = sub_10017F31C((a1 + 3));
  v6 = key;
  v7 = *(&key + 1) - key;
  v8 = CCCrypt(1u, v5, 1u, key, *(&key + 1) - key, a1 + 16, a1 + 29, a1[28], __src, a1[28], &__len);
  if (v7 >= 1)
  {
    bzero(v6, v7);
  }

  if (!v8)
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v13 = 0;
    sub_100065CC8(__dst, __len);
    sub_100065E0C(__dst, __dst[0], __src, &__src[__len], __len);
    *a3 = *__dst;
    *(a3 + 16) = v13;
    *(a3 + 24) = 1;
    if (!v6)
    {
      return;
    }

    goto LABEL_11;
  }

  *&v10 = "diskimage_err> crypto::auth_entry_ns::passphrase::generate_wrapped_key(const char *) const";
  *(&v10 + 1) = 70;
  v11 = 16;
  sub_10008DB88(__dst, &v10);
  sub_1000026BC(v14, "crypto_format: Can't decrypt wrapped key ", 41);
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_100096A24(__dst);
  std::ios::~ios();
  if (v8 < 0)
  {
    v8 = -v8;
  }

  v9 = std::system_category();
  *a3 = v8;
  *(a3 + 8) = v9;
  *(a3 + 24) = 0;
  if (v6)
  {
LABEL_11:
    operator delete(v6);
  }
}

void sub_1001808F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

void *sub_100180948(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100186C58(a1, a2);
  *a1 = off_10022E988;
  a1[45] = &off_10022EA88;
  a1[46] = &off_10022EAB0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022E988;
  a1[45] = off_10022EA10;
  a1[46] = off_10022EA38;
  return a1;
}

void sub_100180A4C(_Unwind_Exception *a1)
{
  sub_100183168(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100180A70(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100183168(a1);
  std::ios::~ios();
  return a1;
}

void sub_100180AB4(uint64_t a1@<X0>, __SecKey *a2@<X1>, unsigned int *a3@<X2>, void (***a4)(void **__return_ptr, void)@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  sub_10017E8BC(v32);
  *&v36 = a1;
  *(&v36 + 1) = __PAIR64__(*v32, v9);
  v37 = *&v32[4];
  v38 = v33;
  v39 = v34;
  memcpy(v40, v35, sizeof(v40));
  (**a4)(&__p, a4);
  error = 0;
  v10 = SecKeyCopyExternalRepresentation(a2, &error);
  if (!v10)
  {
    *&v26 = "std::expected<public_key, diskimage_err> crypto::auth_entry_ns::public_key::create(const auth_table &, SecKeyRef, diskimage_uio::option_set<locked_entity> &&, serializer_t &)";
    *(&v26 + 1) = 82;
    v27 = 16;
    sub_100180EF8(v32, &v26);
    sub_1000026BC(&v35[77], "Key from the certificate is not exportable", 42);
    std::ostream::~ostream();
    sub_100183900(v32);
    std::ios::~ios();
    Code = CFErrorGetCode(error);
    v20 = std::generic_category();
    *a5 = Code;
    *(a5 + 8) = v20;
    *(a5 + 576) = 0;
    goto LABEL_10;
  }

  theData = v10;
  BytePtr = CFDataGetBytePtr(v10);
  Length = CFDataGetLength(theData);
  CC_SHA1(BytePtr, Length, &v37);
  *v32 = 20;
  sub_10017F2A8(&v36 + 3, v32);
  plaintext = CFDataCreate(kCFAllocatorDefault, __p, v30 - __p);
  if (!plaintext)
  {
    *&v26 = "std::expected<public_key, diskimage_err> crypto::auth_entry_ns::public_key::create(const auth_table &, SecKeyRef, diskimage_uio::option_set<locked_entity> &&, serializer_t &)";
    *(&v26 + 1) = 82;
    v27 = 16;
    sub_100181064(v32, &v26);
    sub_1000026BC(&v35[77], "Failed to allocate raw blob data", 32);
    std::ostream::~ostream();
    sub_100184098(v32);
    std::ios::~ios();
    v21 = std::generic_category();
    v22 = 12;
LABEL_8:
    *a5 = v22;
    *(a5 + 8) = v21;
    *(a5 + 576) = 0;
    goto LABEL_9;
  }

  v13 = sub_10017E99C(&v36 + 12);
  v14 = SecKeyCreateEncryptedData(a2, v13, plaintext, &error);
  if (!v14)
  {
    *&v26 = "std::expected<public_key, diskimage_err> crypto::auth_entry_ns::public_key::create(const auth_table &, SecKeyRef, diskimage_uio::option_set<locked_entity> &&, serializer_t &)";
    *(&v26 + 1) = 82;
    v27 = 16;
    sub_1001811D0(v32, &v26);
    sub_1000026BC(&v35[77], "Failed to encrypt data using public key from certificate", 56);
    std::ostream::~ostream();
    sub_100184830(v32);
    std::ios::~ios();
    v23 = CFErrorGetCode(error);
    v21 = std::generic_category();
    v22 = v23;
    goto LABEL_8;
  }

  *v32 = v14;
  LODWORD(v26) = CFDataGetLength(v14);
  sub_1001805EC(&v39 + 3, &v26);
  v15 = *v32;
  v41.length = CFDataGetLength(*v32);
  v41.location = 0;
  CFDataGetBytes(v15, v41, v40);
  v16 = HIDWORD(v36);
  v17 = v37;
  *a5 = v36;
  *(a5 + 16) = v17;
  *(a5 + 12) = v16;
  v18 = v39;
  *(a5 + 32) = v38;
  *(a5 + 48) = v18;
  memcpy((a5 + 64), v40, 0x200uLL);
  *(a5 + 576) = 1;
  sub_10008943C(v32);
LABEL_9:
  sub_10008943C(&plaintext);
  sub_10008943C(&theData);
LABEL_10:
  if (v31 == 1)
  {
    if (__p)
    {
      v30 = __p;
      operator delete(__p);
    }
  }
}

void sub_100180E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22)
{
  sub_10008943C(&a9);
  sub_10008943C(&a10);
  if (a18 == 1)
  {
    if (__p)
    {
      a16 = __p;
      operator delete(__p);
    }
  }

  _Unwind_Resume(a1);
}

void *sub_100180EF8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100186D20(a1, a2);
  *a1 = off_10022EBA8;
  a1[45] = &off_10022ECA8;
  a1[46] = &off_10022ECD0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022EBA8;
  a1[45] = off_10022EC30;
  a1[46] = off_10022EC58;
  return a1;
}

void sub_100180FFC(_Unwind_Exception *a1)
{
  sub_100183900(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100181020(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100183900(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100181064(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100186DE8(a1, a2);
  *a1 = off_10022EDC8;
  a1[45] = &off_10022EEC8;
  a1[46] = &off_10022EEF0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022EDC8;
  a1[45] = off_10022EE50;
  a1[46] = off_10022EE78;
  return a1;
}

void sub_100181168(_Unwind_Exception *a1)
{
  sub_100184098(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10018118C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100184098(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1001811D0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100186EB0(a1, a2);
  *a1 = off_10022EFE8;
  a1[45] = &off_10022F0E8;
  a1[46] = &off_10022F110;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022EFE8;
  a1[45] = off_10022F070;
  a1[46] = off_10022F098;
  return a1;
}

void sub_1001812D4(_Unwind_Exception *a1)
{
  sub_100184830(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001812F8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100184830(a1);
  std::ios::~ios();
  return a1;
}

const void **sub_10018133C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 12;
  v5 = CFDataCreate(kCFAllocatorDefault, (a1 + 16), *(a1 + 12));
  v22 = v5;
  *&v23 = kSecClass;
  *(&v23 + 1) = kSecClassKey;
  v24 = kSecAttrKeyClass;
  v25 = kSecAttrKeyClassPrivate;
  v26 = kSecAttrApplicationLabel;
  v27 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v28 = kSecReturnRef;
  v29 = kCFBooleanTrue;
  result = 0;
  *&v15 = &v23;
  *(&v15 + 1) = 4;
  sub_10014D3C0(&v15, &query);
  for (i = 56; i != -8; i -= 16)
  {
    sub_100004450((&v23 + i));
  }

  sub_100023510(&result);
  result = 0;
  if (!SecItemCopyMatching(query, &result))
  {
    error = 0;
    v19 = result;
    ciphertext = CFDataCreate(kCFAllocatorDefault, (a1 + 64), *(a1 + 60));
    if (ciphertext)
    {
      v8 = v19;
      v9 = sub_10017E99C(v4);
      v10 = SecKeyCreateDecryptedData(v8, v9, ciphertext, &error);
      v11 = v10;
      if (v10)
      {
        sub_10014D1C0(v10, 0, 0, &v23);
        CFRelease(v11);
        *a2 = v23;
        *(a2 + 16) = v24;
        *(a2 + 24) = 1;
LABEL_13:
        sub_10008943C(&ciphertext);
        sub_100186F78(&v19);
        goto LABEL_14;
      }

      *&v15 = "diskimage_err> crypto::auth_entry_ns::public_key::generate_wrapped_key() const";
      *(&v15 + 1) = 70;
      v16 = 16;
      sub_100181874(&v23, &v15);
      sub_1000026BC(v30, "Error decrypting data using public key, error code ", 51);
      CFErrorGetCode(error);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_100185760(&v23);
      std::ios::~ios();
      v13 = std::generic_category();
      *a2 = 35;
      *(a2 + 8) = v13;
    }

    else
    {
      *&v15 = "diskimage_err> crypto::auth_entry_ns::public_key::generate_wrapped_key() const";
      *(&v15 + 1) = 70;
      v16 = 16;
      sub_100181708(&v23, &v15);
      sub_1000026BC(v30, "Failed to create chiper data for public key auth", 48);
      std::ostream::~ostream();
      sub_100184FC8(&v23);
      std::ios::~ios();
      *a2 = make_error_code(152);
      *(a2 + 8) = v12;
    }

    *(a2 + 24) = 0;
    goto LABEL_13;
  }

  v7 = std::generic_category();
  *a2 = 35;
  *(a2 + 8) = v7;
  *(a2 + 24) = 0;
LABEL_14:
  sub_1000043E8(&query);
  return sub_10008943C(&v22);
}

void sub_100181634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, const void *a15, __int16 a17, char a18, char a19, int a20, const void *a21, const void *a22, void *__p, uint64_t a24)
{
  sub_10018199C(&__p);
  sub_10008943C(&a13);
  sub_100186F78(&a15);
  sub_1000043E8(&a21);
  sub_10008943C(&a22);
  _Unwind_Resume(a1);
}

void *sub_100181708(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100186FAC(a1, a2);
  *a1 = off_10022F208;
  a1[45] = &off_10022F308;
  a1[46] = &off_10022F330;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022F208;
  a1[45] = off_10022F290;
  a1[46] = off_10022F2B8;
  return a1;
}

void sub_10018180C(_Unwind_Exception *a1)
{
  sub_100184FC8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100181830(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100184FC8(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100181874(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100187074(a1, a2);
  *a1 = off_10022F428;
  a1[45] = &off_10022F528;
  a1[46] = &off_10022F550;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022F428;
  a1[45] = off_10022F4B0;
  a1[46] = off_10022F4D8;
  return a1;
}

void sub_100181978(_Unwind_Exception *a1)
{
  sub_100185760(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10018199C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100185760(a1);
  std::ios::~ios();
  return a1;
}

double sub_1001819E0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10018133C(a1, v6);
  if (v7 == 1)
  {
    v4 = v6[0];
    sub_10017FCC0(a1, a2);
    if (v4 != 0.0)
    {
      operator delete(*&v4);
    }
  }

  else
  {
    result = v6[0];
    *a2 = *v6;
    *(a2 + 24) = 0;
  }

  return result;
}

void sub_100181A60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100181A78(uint64_t *__return_ptr a1@<X8>, CFTypeRef cf@<X1>, uint64_t a3@<X0>, int *a4@<X2>, void (***a5)(__int128 *__return_ptr, void)@<X3>)
{
  if (!cf || (v10 = CFGetTypeID(cf), v10 != CFDataGetTypeID()))
  {
    v17 = std::generic_category();
    *a1 = 22;
    a1[1] = v17;
LABEL_7:
    *(a1 + 568) = 0;
    return;
  }

  v11 = *a4;
  LODWORD(v23[0]) = -2147483647;
  sub_10009C144("wrap_key_crypto_algo", -2147483647, v23, 1);
  *v28 = a3;
  *&v28[8] = v11;
  memset(&v28[12], 0, 32);
  *&v28[44] = 0x8000000100000000;
  bzero(&v28[52], 0x204uLL);
  LODWORD(v23[0]) = 8;
  sub_10017F2A8(&v28[12], v23);
  (**a5)(&dataIn, a5);
  if (v27 != 1)
  {
    *a1 = dataIn;
    goto LABEL_7;
  }

  dataOutMoved = 0;
  BytePtr = CFDataGetBytePtr(cf);
  Length = CFDataGetLength(cf);
  sub_10017F630(&v28[12]);
  if (CCCrypt(0, 0, 1u, BytePtr, Length, &v28[16], dataIn, *(&dataIn + 1) - dataIn, dataOut, 0x200uLL, &dataOutMoved))
  {
    *&v21 = "std::expected<symmetric_key, diskimage_err> crypto::auth_entry_ns::symmetric_key::create(const auth_table &, CFDataRef, diskimage_uio::option_set<locked_entity> &&, serializer_t &)";
    *(&v21 + 1) = 88;
    v22 = 16;
    sub_100181D74(v23, &v21);
    sub_1000026BC(v24, "Image key encoding failed with err code ", 40);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100185EF8(v23);
    std::ios::~ios();
    error_code = make_error_code(154);
    v15 = 0;
    *a1 = error_code;
    a1[1] = v16;
  }

  else
  {
    LODWORD(v23[0]) = dataOutMoved;
    sub_1001805EC(&v28[52], v23);
    v18 = *&v28[12];
    v19 = *&v28[16];
    v20 = *&v28[32];
    *a1 = *v28;
    *(a1 + 1) = v19;
    *(a1 + 3) = v18;
    *(a1 + 2) = v20;
    a1[6] = *&v28[48];
    memcpy(a1 + 7, dataOut, 0x200uLL);
    v15 = 1;
  }

  *(a1 + 568) = v15;
  if (v27)
  {
    if (dataIn)
    {
      *(&dataIn + 1) = dataIn;
      operator delete(dataIn);
    }
  }
}

void sub_100181D20(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x258]) == 1)
  {
    v2 = STACK[0x240];
    if (STACK[0x240])
    {
      STACK[0x248] = v2;
      operator delete(v2);
    }
  }

  _Unwind_Resume(a1);
}

void *sub_100181D74(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10018713C(a1, a2);
  *a1 = off_10022F648;
  a1[45] = &off_10022F748;
  a1[46] = &off_10022F770;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022F648;
  a1[45] = off_10022F6D0;
  a1[46] = off_10022F6F8;
  return a1;
}

void sub_100181E78(_Unwind_Exception *a1)
{
  sub_100185EF8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100181E9C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100185EF8(a1);
  std::ios::~ios();
  return a1;
}

void sub_100181EE0(uint64_t *__return_ptr a1@<X8>, CFTypeRef cf@<X1>, unsigned int *a3@<X0>)
{
  if (!cf || (v6 = CFGetTypeID(cf), v6 != CFDataGetTypeID()))
  {
    v8 = std::generic_category();
    *a1 = 22;
    a1[1] = v8;
LABEL_7:
    *(a1 + 24) = 0;
    return;
  }

  sub_100181FB0(v9, cf, a3);
  if (v10 != 1)
  {
    *a1 = *v9;
    goto LABEL_7;
  }

  v7 = v9[0];
  sub_10017FCC0(a3, a1);
  if (v7)
  {
    operator delete(v7);
  }
}

void sub_100181F98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_100181FB0@<D0>(uint64_t *__return_ptr a1@<X8>, CFDataRef theData@<X1>, unsigned int *a3@<X0>)
{
  __len = 0;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  sub_10017F630((a3 + 3));
  v8 = CCCrypt(1u, 0, 1u, BytePtr, Length, a3 + 4, a3 + 14, a3[13], __src, a3[13], &__len);
  if (v8)
  {
    *&v11 = "diskimage_err> crypto::auth_entry_ns::symmetric_key::generate_wrapped_key(CFDataRef) const";
    *(&v11 + 1) = 73;
    v12 = 16;
    sub_100182184(__dst, &v11);
    sub_1000026BC(v15, "crypto_format: Can't decrypt wrapped key ", 41);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100186690(__dst);
    std::ios::~ios();
    if (v8 < 0)
    {
      v8 = -v8;
    }

    v9 = std::system_category();
    *a1 = v8;
    a1[1] = v9;
    *(a1 + 24) = 0;
  }

  else
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v14 = 0;
    sub_100065CC8(__dst, __len);
    sub_100065E0C(__dst, __dst[0], __src, &__src[__len], __len);
    result = *__dst;
    *a1 = *__dst;
    a1[2] = v14;
    *(a1 + 24) = 1;
  }

  return result;
}

void sub_10018214C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100182184(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100187204(a1, a2);
  *a1 = off_10022F868;
  a1[45] = &off_10022F968;
  a1[46] = &off_10022F990;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022F868;
  a1[45] = off_10022F8F0;
  a1[46] = off_10022F918;
  return a1;
}

void sub_100182288(_Unwind_Exception *a1)
{
  sub_100186690(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001822AC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100186690(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1001822F0(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_100036CAC();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_1000696B0(a1, v6);
  }

  v7 = 48 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *&v16 = 48 * v2 + 48;
  v8 = a1[1];
  v9 = (48 * v2 + *a1 - v8);
  sub_100182450(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1001824EC(&v14);
  return v13;
}

void sub_10018243C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1001824EC(va);
  _Unwind_Resume(a1);
}

void sub_100182450(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v6 + 24);
      a4[5] = *(v6 + 40);
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      v6 += 48;
      a4 += 6;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      sub_1000367E4(v5);
      v5 += 48;
    }
  }
}

uint64_t sub_1001824EC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_1000367E4(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_10018253C(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100036C5C(result, a4);
  }

  return result;
}

void sub_10018259C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001825B8(uint64_t a1)
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

  return a1;
}

_BYTE *sub_1001825FC(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[640] = 0;
  if (*(a2 + 640) == 1)
  {
    sub_100036488(a1, a2);
    a1[640] = 1;
  }

  return a1;
}

void sub_100182644(_Unwind_Exception *exception_object)
{
  if (*(v1 + 640) == 1)
  {
    sub_100035E5C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100182664(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  sub_100038E68();
}

uint64_t sub_1001826B8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100182950(v1);

  return std::ios::~ios();
}

uint64_t sub_100182704(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100182950(v1);

  return std::ios::~ios();
}

void sub_100182764(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100182950(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001827CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100182808(_BYTE *a1, int a2)
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

void sub_100182874(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100182950(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001828D8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100182950(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100182950(uint64_t a1)
{
  *a1 = &off_10022E900;
  sub_100182ABC(a1);
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

uint64_t sub_100182ABC(uint64_t a1)
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
        sub_100182C6C((a1 + 72), __p);
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

void sub_100182C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100182C34(uint64_t a1)
{
  sub_100182950(a1);

  operator delete();
}

int *sub_100182C6C(uint64_t *a1, uint64_t *a2)
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
    v26 = 321;
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
      v26 = 321;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t *sub_100182E50(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_100036C5C(a1, a2);
  }

  return a1;
}

void sub_100182EB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100182ED0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100183168(v1);

  return std::ios::~ios();
}

uint64_t sub_100182F1C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100183168(v1);

  return std::ios::~ios();
}

void sub_100182F7C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100183168(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100182FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100183020(_BYTE *a1, int a2)
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

void sub_10018308C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100183168(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001830F0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100183168(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100183168(uint64_t a1)
{
  *a1 = &off_10022EB20;
  sub_1001832D4(a1);
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

uint64_t sub_1001832D4(uint64_t a1)
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
        sub_100183484((a1 + 72), __p);
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

void sub_100183420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018344C(uint64_t a1)
{
  sub_100183168(a1);

  operator delete();
}

int *sub_100183484(uint64_t *a1, uint64_t *a2)
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
    v26 = 371;
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
      v26 = 371;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100183668(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100183900(v1);

  return std::ios::~ios();
}

uint64_t sub_1001836B4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100183900(v1);

  return std::ios::~ios();
}

void sub_100183714(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100183900(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018377C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001837B8(_BYTE *a1, int a2)
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

void sub_100183824(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100183900(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100183888(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100183900(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100183900(uint64_t a1)
{
  *a1 = &off_10022ED40;
  sub_100183A6C(a1);
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

uint64_t sub_100183A6C(uint64_t a1)
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
        sub_100183C1C((a1 + 72), __p);
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

void sub_100183BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100183BE4(uint64_t a1)
{
  sub_100183900(a1);

  operator delete();
}

int *sub_100183C1C(uint64_t *a1, uint64_t *a2)
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
    v26 = 421;
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
      v26 = 421;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100183E00(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100184098(v1);

  return std::ios::~ios();
}

uint64_t sub_100183E4C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100184098(v1);

  return std::ios::~ios();
}

void sub_100183EAC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100184098(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100183F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100183F50(_BYTE *a1, int a2)
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

void sub_100183FBC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100184098(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100184020(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100184098(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100184098(uint64_t a1)
{
  *a1 = &off_10022EF60;
  sub_100184204(a1);
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

uint64_t sub_100184204(uint64_t a1)
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
        sub_1001843B4((a1 + 72), __p);
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

void sub_100184350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018437C(uint64_t a1)
{
  sub_100184098(a1);

  operator delete();
}

int *sub_1001843B4(uint64_t *a1, uint64_t *a2)
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
    v26 = 432;
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
      v26 = 432;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100184598(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100184830(v1);

  return std::ios::~ios();
}

uint64_t sub_1001845E4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100184830(v1);

  return std::ios::~ios();
}

void sub_100184644(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100184830(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001846AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001846E8(_BYTE *a1, int a2)
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

void sub_100184754(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100184830(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001847B8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100184830(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100184830(uint64_t a1)
{
  *a1 = &off_10022F180;
  sub_10018499C(a1);
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

uint64_t sub_10018499C(uint64_t a1)
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
        sub_100184B4C((a1 + 72), __p);
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

void sub_100184AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100184B14(uint64_t a1)
{
  sub_100184830(a1);

  operator delete();
}

int *sub_100184B4C(uint64_t *a1, uint64_t *a2)
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
    v26 = 439;
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
      v26 = 439;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100184D30(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100184FC8(v1);

  return std::ios::~ios();
}

uint64_t sub_100184D7C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100184FC8(v1);

  return std::ios::~ios();
}

void sub_100184DDC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100184FC8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100184E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100184E80(_BYTE *a1, int a2)
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

void sub_100184EEC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100184FC8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100184F50(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100184FC8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100184FC8(uint64_t a1)
{
  *a1 = &off_10022F3A0;
  sub_100185134(a1);
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

uint64_t sub_100185134(uint64_t a1)
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
        sub_1001852E4((a1 + 72), __p);
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

void sub_100185280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001852AC(uint64_t a1)
{
  sub_100184FC8(a1);

  operator delete();
}

int *sub_1001852E4(uint64_t *a1, uint64_t *a2)
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
    v26 = 468;
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
      v26 = 468;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001854C8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100185760(v1);

  return std::ios::~ios();
}

uint64_t sub_100185514(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100185760(v1);

  return std::ios::~ios();
}

void sub_100185574(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100185760(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001855DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100185618(_BYTE *a1, int a2)
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

void sub_100185684(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100185760(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001856E8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100185760(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100185760(uint64_t a1)
{
  *a1 = &off_10022F5C0;
  sub_1001858CC(a1);
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

uint64_t sub_1001858CC(uint64_t a1)
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
        sub_100185A7C((a1 + 72), __p);
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

void sub_100185A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100185A44(uint64_t a1)
{
  sub_100185760(a1);

  operator delete();
}

int *sub_100185A7C(uint64_t *a1, uint64_t *a2)
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
    v26 = 474;
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
      v26 = 474;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100185C60(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100185EF8(v1);

  return std::ios::~ios();
}

uint64_t sub_100185CAC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100185EF8(v1);

  return std::ios::~ios();
}

void sub_100185D0C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100185EF8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100185D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100185DB0(_BYTE *a1, int a2)
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

void sub_100185E1C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100185EF8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100185E80(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100185EF8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100185EF8(uint64_t a1)
{
  *a1 = &off_10022F7E0;
  sub_100186064(a1);
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

uint64_t sub_100186064(uint64_t a1)
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
        sub_100186214((a1 + 72), __p);
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

void sub_1001861B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001861DC(uint64_t a1)
{
  sub_100185EF8(a1);

  operator delete();
}

int *sub_100186214(uint64_t *a1, uint64_t *a2)
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
    v26 = 522;
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
      v26 = 522;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001863F8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100186690(v1);

  return std::ios::~ios();
}

uint64_t sub_100186444(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100186690(v1);

  return std::ios::~ios();
}

void sub_1001864A4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100186690(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018650C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100186548(_BYTE *a1, int a2)
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

void sub_1001865B4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100186690(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100186618(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100186690(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100186690(uint64_t a1)
{
  *a1 = &off_10022FA00;
  sub_1001867FC(a1);
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

uint64_t sub_1001867FC(uint64_t a1)
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
        sub_1001869AC((a1 + 72), __p);
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

void sub_100186948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100186974(uint64_t a1)
{
  sub_100186690(a1);

  operator delete();
}

int *sub_1001869AC(uint64_t *a1, uint64_t *a2)
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
    v26 = 557;
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
      v26 = 557;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100186B90(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022E900;
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

void sub_100186C40(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100186C58(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022EB20;
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

void sub_100186D08(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100186D20(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022ED40;
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

void sub_100186DD0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100186DE8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022EF60;
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

void sub_100186E98(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100186EB0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022F180;
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

void sub_100186F60(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

const void **sub_100186F78(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_100186FAC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022F3A0;
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

void sub_10018705C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100187074(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022F5C0;
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

void sub_100187124(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10018713C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022F7E0;
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

void sub_1001871EC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100187204(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_10022FA00;
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

void sub_1001872B4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001872CC(uint64_t a1, int *a2, int a3, _DWORD *a4)
{
  *a1 = 1919118949;
  v13 = 1919118949;
  sub_10009C144("sig1_t", 1919118949, &v13, 1);
  *(a1 + 4) = 1634952291;
  v13 = 1634952291;
  sub_10009C144("sig2_t", 1634952291, &v13, 1);
  *(a1 + 8) = 2;
  v13 = 2;
  sub_10009C144("version_t", 2, &v13, 1);
  *(a1 + 12) = 16;
  v13 = 16;
  sub_10009C144("iv_tweak_size_t", 16, &v13, 1);
  *(a1 + 16) = *a4;
  *(a1 + 20) = -2147483647;
  v13 = -2147483647;
  sub_10009C144("algorithm_type", -2147483647, &v13, 1);
  v8 = *a2;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = v8;
  *(a1 + 52) = a3;
  *(a1 + 56) = xmmword_1001D5AB0;
  *(a1 + 72) = 0;
  if (*a4 == 5)
  {
    v9 = 91;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 28) = v9;
  if (*a4 == 5)
  {
    v10 = 160;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 32) = v10;
  *(a1 + 36) = sub_10019E294();
  *(a1 + 44) = v11;
  return a1;
}

void sub_10018742C(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 52) = 0;
  *(a1 + 68) = 0;
  *(a1 + 60) = 0;
  v3 = (*(*a2 + 40))(a2);
  v4 = v3 - 12;
  if (v3 >= 0xC)
  {
    v5 = *(sub_10019E2E8() + 1);
    v11 = v19;
    v12 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = 12;
    v14 = v4;
    v15 = 12;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v6 = (*(*a2 + 128))(a2, &v11);
    if (v12)
    {
      sub_10000367C(v12);
    }

    if ((v6 & 0x80000000) == 0 && v19[0] == 0x1000000 && v19[1] == 1634952291 && v19[2] == 1919118949)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v10 = sub_100001860(exception, "The image is encrypted with obsolete encoding version 1", 0x2Du);
    }
  }

  if ((*(*a2 + 40))(a2) > 0x4B)
  {
    operator new[]();
  }

  v7 = __cxa_allocate_exception(0x20uLL);
  v8 = (*(*a2 + 40))(a2);
  *v7 = &off_1002219A0;
  v7[1] = "crypto";
  v7[2] = 76;
  v7[3] = v8;
}

void sub_100187A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  _Unwind_Resume(a1);
}

void sub_100187A48(_Unwind_Exception *a1, int a2, ...)
{
  va_start(va, a2);
  switch(a2)
  {
    case 3:
      v2 = __cxa_begin_catch(a1);
      exception = __cxa_allocate_exception(0x30uLL);
      sub_10009C1E4((exception + 1), v2);
      *exception = off_100213C40;
      exception[1] = off_100213C80;
    case 2:
      __cxa_begin_catch(a1);
      __cxa_rethrow();
    case 1:
      v4 = __cxa_begin_catch(a1);
      v5 = __cxa_allocate_exception(0x40uLL);
      sub_100002148(va);
      sub_1000026BC(va, "Unsupported value for crypto header field ", 42);
      v6 = *(v4 + 1);
      v7 = strlen(v6);
      sub_1000026BC(va, v6, v7);
      sub_100004290(v5, va, 0xA1u);
  }

  operator delete[]();
}

void sub_1001880F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  std::ios::~ios();
  if (v24)
  {
    __cxa_free_exception(v23);
  }

  __cxa_end_catch();
  operator delete[]();
}

void sub_100188138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  operator delete[]();
}

void sub_100188178(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x100188180);
  }

  sub_100002A4C(a1);
}

__n128 sub_100188194(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 52) = 0;
  *(a1 + 68) = 0;
  *(a1 + 60) = 0;
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001881D0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 4) = *(a1 + 4);
  *(a2 + 8) = bswap32(*(a1 + 8));
  *(a2 + 12) = bswap32(*(a1 + 12));
  *(a2 + 16) = bswap32(*(a1 + 16));
  *(a2 + 20) = bswap32(*(a1 + 20));
  *(a2 + 24) = bswap32(*(a1 + 24));
  *(a2 + 28) = bswap32(*(a1 + 28));
  *(a2 + 32) = bswap32(*(a1 + 32));
  *(a2 + 36) = *(a1 + 36);
  *(a2 + 52) = bswap32(*(a1 + 52));
  *(a2 + 56) = bswap64(*(a1 + 56));
  *(a2 + 64) = bswap64(*(a1 + 64));
  *(a2 + 72) = bswap32(*(a1 + 72));
  return a2 + 76;
}

const void **sub_100188274(uint64_t a1, char *a2)
{
  v3 = (*(*&a2[*(*a2 - 40)] + 16))(&a2[*(*a2 - 40)]);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v11 = sub_100001860(exception, "Image contains crypto format but info class is missing EncryptionInfo", 0x16u);
  }

  v4 = v3;
  v5 = *(a1 + 24);
  if (v5 == 128)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = 3;
  if (*(a1 + 16) == 5)
  {
    v7 = v6;
  }

  *(v3 + 8) = v7;
  if ((*(v3 + 24) & 1) == 0)
  {
    *(v3 + 24) = 1;
  }

  *(v3 + 16) = v5;
  v13 = CFUUIDCreateFromUUIDBytes(kCFAllocatorDefault, *(a1 + 36));
  v8 = CFUUIDCreateString(kCFAllocatorDefault, v13);
  v12 = v8;
  if (*(v4 + 32))
  {
    CFRelease(*(v4 + 32));
    v8 = v12;
  }

  *(v4 + 32) = v8;
  v12 = 0;
  sub_100023024(&v12);
  return sub_100023A5C(&v13);
}

void sub_1001883AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100023024(&a9);
  sub_100023A5C(&a10);
  _Unwind_Resume(a1);
}

void *sub_1001883D0(void *a1, uint64_t *a2, void *a3)
{
  v4 = a3[1];
  *a1 = *a3;
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *a2;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  *(a1 + 1) = *v5;
  a1[4] = *(v5 + 16);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v6 = *a2;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  *(a1 + 5) = *(v6 + 24);
  a1[7] = *(v6 + 40);
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  v8[0] = a1;
  v8[1] = a1;
  sub_10018BEA0(v8, *a1, (a1 + 8));
  return a1;
}

void sub_100188498(_Unwind_Exception *a1)
{
  v6 = v5;
  v8 = *v6;
  if (*v6)
  {
    *(v2 + 48) = v8;
    operator delete(v8);
  }

  sub_1001A3EA4(v3, v1, v4);
  _Unwind_Resume(a1);
}

char **sub_1001884D4(char **a1, char **a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  sub_1001885B8(*(v3 + 6), a1 + 2);
  v5 = *a1;
  if (*(*a1 + 4) == 5)
  {
    v6 = *(v5 + 8);
  }

  else
  {
    v6 = 8 * *(v5 + 3);
  }

  sub_1001885B8(v6, a1 + 5);
  v8[0] = a1;
  v8[1] = a1;
  sub_10018BEA0(v8, *a1, (a1 + 8));
  return a1;
}

void sub_10018856C(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    v1[6] = v5;
    operator delete(v5);
  }

  v6 = v1[2];
  if (v6)
  {
    v1[3] = v6;
    operator delete(v6);
  }

  v7 = v1[1];
  if (v7)
  {
    sub_10000367C(v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001885B8@<X0>(unint64_t a1@<X0>, char **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1 >= 8)
  {
    sub_10018BF68(a2, a1 >> 3);
    v4 = *a2;
    v3 = a2[1];
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_10017E404(v4, v3 - v4);
}

void sub_10018860C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **sub_10018862C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10018C0A0(a2, a1[3] + a1[6] - (a1[2] + a1[5]) + 5);
  v4 = *result;
  v5 = a1[2];
  v6 = a1[3];
  v7 = v6 - v5;
  if (v6 != v5)
  {
    result = memmove(*result, v5, v6 - v5);
  }

  v8 = &v4[v7];
  v9 = a1[5];
  v10 = a1[6];
  v11 = v10 - v9;
  if (v10 != v9)
  {
    result = memmove(v8, v9, v10 - v9);
  }

  strcpy(&v8[v11], "CKIE");
  return result;
}

void sub_100188784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  v12 = *(v10 - 24);
  if (v12)
  {
    sub_10000367C(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001887A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = 0uLL;
  v4 = *a1;
  v3 = a1[1];
  v10 = 0;
  *&v11 = v4;
  *(&v11 + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10017F9F8(&v9, &v7);
  if (v8)
  {
    *a2 = v9;
    *(a2 + 16) = v10;
    v9 = 0uLL;
    v10 = 0;
    *(a2 + 24) = v11;
    v5 = 1;
    v11 = 0uLL;
  }

  else
  {
    v5 = 0;
    *a2 = v7;
  }

  *(a2 + 40) = v5;
  return sub_100035E1C(&v9);
}

void sub_10018884C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100035E1C(va);
  _Unwind_Resume(a1);
}

void sub_100188860(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v17 = 0;
  v18 = 0;
  v15 = off_10022FA80;
  v16 = &v17;
  v7 = *a2;
  v6 = a2[1];
  *&v19 = a1;
  *(&v19 + 1) = v7;
  v20 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *a3;
  v9 = a3[1];
  v23 = a3;
  v24 = v8;
  v25[0] = 0;
  v26 = 0;
  if (v8 != v9)
  {
    do
    {
      sub_100188A38(&v15, *(v8 + 4), *(v8 + 12));
      sub_1000312E4(&v23, &v21);
      if (v22[640] == 1)
      {
        sub_100035E5C(v22);
      }

      v8 = v24;
    }

    while (v23 != a3 || v24 != a3[1]);
    if (v26)
    {
      sub_100035E5C(v25);
    }
  }

  v12 = v16;
  v11 = v17;
  *a4 = off_10022FA80;
  *(a4 + 8) = v12;
  *(a4 + 16) = v11;
  v13 = a4 + 16;
  v14 = v18;
  *(a4 + 24) = v18;
  if (v14)
  {
    v11[2] = v13;
    v16 = &v17;
    v17 = 0;
    v18 = 0;
    v11 = 0;
  }

  else
  {
    *(a4 + 8) = v13;
  }

  *(a4 + 32) = v19;
  *(a4 + 48) = v20;
  *(&v19 + 1) = 0;
  v20 = 0;
  *(a4 + 56) = 1;
  v15 = off_10022FA80;
  sub_1000085B4(&v16, v11);
}

void sub_100188A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (LOBYTE(STACK[0x560]) == 1)
  {
    sub_100035E5C(v9 + 16);
  }

  sub_10018C114(&a9);
  _Unwind_Resume(a1);
}

uint64_t **sub_100188A38(uint64_t **result, unint64_t a2, uint64_t a3)
{
  v10[0] = a2;
  v10[1] = a3 + a2;
  v11 = 2;
  if (a3 + a2 > a2)
  {
    v3 = result;
    v4 = sub_10000BB3C((result + 1), v10, v10);
    if (v5)
    {
      v12 = v4;
      sub_10000BE50(v3 + 1, &v12);
      return sub_10000BF50(v3 + 1, &v12);
    }

    else
    {
      v6 = sub_10000C534((v3 + 1), v10);
      v7 = *v6;
      if (*v6)
      {
        do
        {
          v8 = v7;
          v7 = v7[1];
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

        while (v9);
      }

      return sub_10000BAF4(v3 + 1, v10, v8);
    }
  }

  return result;
}

double sub_100188AF4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10018862C(*(a1 + 32), &v4);
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_100188B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = malloc_type_valloc(0x4CuLL, 0x8B7C732DuLL);
  if (!v4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = std::bad_alloc::bad_alloc(exception);
  }

  v14 = off_10022FC30;
  *(&v16 + 1) = &v14;
  v21 = v4;
  sub_1000DF1F8(v22, &v14);
  sub_1000298F0(&v14);
  sub_1001881D0(**(a1 + 32), v21);
  v5 = v21;
  v6 = *(sub_10019E2E8() + 1);
  v14 = v5;
  v15 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = xmmword_1001D5AC0;
  v17 = 76;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v7 = (*(**(a1 + 40) + 120))(*(a1 + 40), &v14);
  if (v7 == 76)
  {
    v8 = 1;
  }

  else
  {
    if (v7 <= 0)
    {
      v9 = -v7;
    }

    else
    {
      v9 = 5;
    }

    v10 = std::generic_category();
    v8 = 0;
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  *(a2 + 16) = v8;
  if (v15)
  {
    sub_10000367C(v15);
  }

  sub_10002986C(&v21, 0);
  return sub_1000298F0(v22);
}

void sub_100188CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000367C(a10);
  }

  sub_10002986C((v11 - 80), 0);
  sub_1000298F0(v10 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100188D18@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = **(a1 + 32);
  if (*(v5 + 72) >= 0x14u)
  {
    *&v19 = "diskimage_err> crypto::crypto_serializer_t::get_handle_for_new_entry(size_t, auth_entry_descriptor::mechanism_t)";
    *(&v19 + 1) = 68;
    v20 = 16;
    sub_100188F9C(v21, &v19);
    sub_1000026BC(v23, "Cannot edit crypto header that has more than ", 45);
    std::ostream::operator<<();
    sub_1000026BC(v23, " auth entries", 13);
    std::ostream::~ostream();
    sub_10018C4E0(v21);
LABEL_22:
    std::ios::~ios();
    result = make_error_code(161);
    *a4 = result;
    *(a4 + 8) = v18;
    *(a4 + 32) = 0;
    return result;
  }

  v8 = *(a1 + 8);
  v9 = (a1 + 16);
  if (v8 == (a1 + 16) || v8[4] >= a2 + 476)
  {
    v10 = 476;
  }

  else
  {
    v10 = v8[5];
    v11 = v8[1];
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
        v12 = v8[2];
        v13 = *v12 == v8;
        v8 = v12;
      }

      while (!v13);
    }

    if (v12 != v9)
    {
      do
      {
        if (v12[4] - v10 >= a2)
        {
          break;
        }

        v14 = v12[1];
        v15 = v12;
        if (v14)
        {
          do
          {
            v16 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v16 = v15[2];
            v13 = *v16 == v15;
            v15 = v16;
          }

          while (!v13);
        }

        v10 = v12[5];
        v12 = v16;
      }

      while (v16 != v9);
    }
  }

  if (v10 + a2 > *(v5 + 64))
  {
    *&v19 = "diskimage_err> crypto::crypto_serializer_t::get_handle_for_new_entry(size_t, auth_entry_descriptor::mechanism_t)";
    *(&v19 + 1) = 68;
    v20 = 16;
    sub_100189108(v21, &v19);
    sub_1000026BC(v23, "No room to add new auth entry", 29);
    std::ostream::~ostream();
    sub_10018CC78(v21);
    goto LABEL_22;
  }

  *v21 = a3;
  *&v21[4] = v10;
  *&v21[12] = a2;
  v21[20] = 1;
  v22 = a1;
  (*(*a1 + 40))(a1);
  *a4 = *v21;
  *(a4 + 13) = *&v21[13];
  *(a4 + 24) = a1;
  v21[20] = 0;
  *(a4 + 32) = 1;
  return sub_100036B7C(v21);
}

void sub_100188F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100189230(va);
  _Unwind_Resume(a1);
}

void *sub_100188F9C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100194850(a1, a2);
  *a1 = off_10022FCB8;
  a1[45] = &off_10022FDB8;
  a1[46] = &off_10022FDE0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022FCB8;
  a1[45] = off_10022FD40;
  a1[46] = off_10022FD68;
  return a1;
}

void sub_1001890A0(_Unwind_Exception *a1)
{
  sub_10018C4E0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001890C4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018C4E0(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100189108(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100194918(a1, a2);
  *a1 = off_10022FED8;
  a1[45] = &off_10022FFD8;
  a1[46] = &off_100230000;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10022FED8;
  a1[45] = off_10022FF60;
  a1[46] = off_10022FF88;
  return a1;
}

void sub_10018920C(_Unwind_Exception *a1)
{
  sub_10018CC78(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100189230(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018CC78(a1);
  std::ios::~ios();
  return a1;
}

uint64_t **sub_100189274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3 + a2;
  v5 = 2;
  return sub_1001949E0((a1 + 8), v4);
}

void sub_1001892AC(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = a2[1] - *a2;
  sub_100188D18(a1, v7, a3, v23);
  if (v25 == 1)
  {
    v8 = *a2;
    v9 = *&v23[4];
    v10 = *(sub_10019E2E8() + 1);
    v15 = v8;
    v16 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = v7;
    v18 = v9;
    v19 = v7;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v11 = (*(**(a1 + 40) + 120))(*(a1 + 40), &v15);
    if (v7 == v11)
    {
      *a4 = *v23;
      *(a4 + 13) = *&v23[13];
      *(a4 + 24) = v24;
      v12 = v23[20];
      if (v23[20] == 1)
      {
        v23[20] = 0;
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      if (v11 <= 0)
      {
        v13 = -v11;
      }

      else
      {
        v13 = 5;
      }

      v14 = std::generic_category();
      v12 = 0;
      *a4 = v13;
      *(a4 + 8) = v14;
    }

    *(a4 + 32) = v12;
    if (v16)
    {
      sub_10000367C(v16);
    }

    if (v25)
    {
      sub_100036B7C(v23);
    }
  }

  else
  {
    *a4 = *v23;
    *(a4 + 32) = 0;
  }
}

void sub_1001893F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_10000367C(a11);
  }

  if (*(v11 - 56) == 1)
  {
    sub_100036B7C(v11 - 88);
  }

  _Unwind_Resume(exception_object);
}

void sub_100189428(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100036D48(__p, 616);
  sub_10017F068(a2, __p[0]);
  sub_1001892AC(a1, __p, 1, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_10018949C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001894B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100036D48(__p, 564);
  sub_10017EA1C(a2, __p[0]);
  sub_1001892AC(a1, __p, 2, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_10018952C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100189548(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100036D48(__p, 556);
  sub_10017F5C4(a2, __p[0]);
  sub_1001892AC(a1, __p, 4, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1001895BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001895D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    v19 = *a2;
    goto LABEL_18;
  }

  v8 = v6 - v5;
  v9 = malloc_type_valloc(v6 - v5, 0x8B7C732DuLL);
  if (!v9)
  {
    exception = __cxa_allocate_exception(8uLL);
    v21 = std::bad_alloc::bad_alloc(exception);
  }

  v22 = off_10022FC30;
  v25 = &v22;
  v30 = v9;
  sub_1000DF1F8(v31, &v22);
  sub_1000298F0(&v22);
  v10 = *a2;
  if (*a2 != a2[1])
  {
    v11 = 0;
    do
    {
      sub_10017F730(v10 + v11, v30 + v11);
      v11 += 20;
    }

    while (v10 + v11 != a2[1]);
  }

  v12 = v30;
  v13 = *(sub_10019E2E8() + 1);
  v22 = v12;
  v23 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v24 = v8;
  v25 = 76;
  v26 = v8;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v14 = (*(**(a1 + 40) + 120))(*(a1 + 40), &v22);
  v15 = v14;
  if (v8 != v14)
  {
    if (v14 <= 0)
    {
      v16 = -v14;
    }

    else
    {
      v16 = 5;
    }

    v17 = std::generic_category();
    *a3 = v16;
    *(a3 + 8) = v17;
    *(a3 + 16) = 0;
  }

  if (v23)
  {
    sub_10000367C(v23);
  }

  sub_10002986C(&v30, 0);
  result = sub_1000298F0(v31);
  if (v8 == v15)
  {
    v5 = *a2;
    v19 = a2[1];
LABEL_18:
    *(**(a1 + 32) + 72) = -858993459 * ((v19 - v5) >> 2);
    return sub_100188B40(a1, a3);
  }

  return result;
}

void sub_1001897F8(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (a10)
  {
    sub_10000367C(a10);
  }

  sub_10002986C(va, 0);
  sub_1000298F0(v22 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100189838(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    return 0;
  }

  v10 = **(a1 + 48);
  v11 = *(v10 + 52);
  if (*(a1 + 392))
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v10 + 64);
  }

  v13 = v12 + a4;
  v14 = *(a1 + 24);
  v15 = *(sub_10019E2E8() + 1);
  v20 = a2;
  v21 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = v11 * a3;
  v23 = v13;
  v24 = v11 * a3;
  v25 = 0;
  v26[0] = 0;
  v27 = 0;
  if (*(a5 + 56))
  {
    sub_10008A2D0(v26, a5);
    v27 = 1;
  }

  v16 = (*(*v14 + 128))(v14, &v20);
  if (v21)
  {
    sub_10000367C(v21);
  }

  if ((v16 & 0x80000000) != 0)
  {
    *&v18 = "crypto_format_backend::read_aligned(char *, ssize_t, uint64_t, const std::optional<sg_per_io_crypto> &)";
    *(&v18 + 1) = 35;
    v19 = 16;
    sub_100189A8C(&v20, &v18);
    sub_1000026BC(v29, "Crypto couldn't read from inner backend @ ", 42);
    std::ostream::operator<<();
    sub_1000026BC(v29, "/", 1);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10018D410(&v20);
    std::ios::~ios();
  }

  else
  {
    sub_100027480(&v20, a1 + 216);
    v28 = v11;
    v16 = sub_10014EC04(&v20, a2, a3, a4);
    sub_10002752C(&v20);
  }

  return v16;
}

void sub_100189A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100189BB4(va);
  _Unwind_Resume(a1);
}

void *sub_100189A8C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100194B9C(a1, a2);
  *a1 = off_1002300F8;
  a1[45] = &off_1002301F8;
  a1[46] = &off_100230220;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002300F8;
  a1[45] = off_100230180;
  a1[46] = off_1002301A8;
  return a1;
}

void sub_100189B90(_Unwind_Exception *a1)
{
  sub_10018D410(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100189BB4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018D410(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100189BF8(uint64_t a1, char **a2)
{
  v4 = *a2;
  v6 = a2[2];
  v5 = a2[3];
  v7 = *(**(a1 + 48) + 52);
  v8 = v5 / v7 * v7;
  v9 = v5 % v7;
  if (v5 % v7)
  {
    if (*(a2 + 104) == 1 && *(a2 + 12))
    {
      return 4294967194;
    }

    v13 = *(a1 + 384);
    v18[0] = 0;
    v19 = 0;
    result = sub_100189838(a1, v13, 1uLL, v8, v18);
    if (result)
    {
      return result;
    }

    v14 = v9;
    if (v6 >= (v7 - v9))
    {
      v15 = v7 - v9;
    }

    else
    {
      v15 = v6;
    }

    memcpy(v4, (*(a1 + 384) + v14), v15);
    v6 -= v15;
    v4 += v15;
    v8 += v7;
  }

  if (*(a2 + 104) == 1 && *(a2 + 12))
  {
    sub_10008A2D0(v18, (a2 + 6));
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v18[0] = 0;
  }

  v19 = v10;
  result = sub_100189838(a1, v4, v6 / v7, v8, v18);
  if (!result)
  {
    v12 = v6 % v7;
    if (!(v6 % v7))
    {
      return *(a2 + 4);
    }

    if (*(a2 + 104) == 1 && *(a2 + 12))
    {
      return 4294967194;
    }

    v16 = v6 - v12;
    v17 = *(a1 + 384);
    v18[0] = 0;
    v19 = 0;
    result = sub_100189838(a1, v17, 1uLL, v16 + v8, v18);
    if (!result)
    {
      memcpy(&v4[v16], *(a1 + 384), v12);
      return *(a2 + 4);
    }
  }

  return result;
}

uint64_t sub_100189D84(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = **(a1 + 48);
  if (*(a1 + 392))
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(v10 + 52);
  sub_100027480(&v21, a1 + 64);
  v29 = v12;
  v13 = sub_10014EC04(&v21, a2, a3, a4);
  sub_10002752C(&v21);
  if (!v13)
  {
    v14 = *(a1 + 24);
    v15 = v11 + a4;
    v16 = *(sub_10019E2E8() + 1);
    v17 = v12 * a3;
    v21 = a2;
    v22 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = v17;
    v24 = v15;
    v25 = v17;
    v26 = 0;
    v27[0] = 0;
    v28 = 0;
    if (*(a5 + 56))
    {
      sub_10008A2D0(v27, a5);
      v28 = 1;
    }

    v13 = (*(*v14 + 120))(v14, &v21);
    if (v22)
    {
      sub_10000367C(v22);
    }

    if ((v13 & 0x80000000) != 0)
    {
      *&v19 = "crypto_format_backend::write_aligned(char *, ssize_t, uint64_t, const std::optional<sg_per_io_crypto> &)";
      *(&v19 + 1) = 36;
      v20 = 16;
      sub_100189FD4(&v21, &v19);
      sub_1000026BC(v30, "Crypto couldn't write to inner backend @ ", 41);
      std::ostream::operator<<();
      sub_1000026BC(v30, "/", 1);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_10018DBA8(&v21);
      std::ios::~ios();
    }

    else
    {
      return 0;
    }
  }

  return v13;
}

void sub_100189F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10018A0FC(va);
  _Unwind_Resume(a1);
}

void *sub_100189FD4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100194C64(a1, a2);
  *a1 = off_100230318;
  a1[45] = &off_100230418;
  a1[46] = &off_100230440;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100230318;
  a1[45] = off_1002303A0;
  a1[46] = off_1002303C8;
  return a1;
}

void sub_10018A0D8(_Unwind_Exception *a1)
{
  sub_10018DBA8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10018A0FC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018DBA8(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10018A140(uint64_t a1, char **a2)
{
  v4 = *a2;
  v6 = a2[2];
  v5 = a2[3];
  v7 = *(**(a1 + 48) + 52);
  v8 = v5 / v7 * v7;
  v9 = v5 % v7;
  if (v5 % v7)
  {
    if (*(a2 + 104) == 1 && *(a2 + 12))
    {
      return 4294967194;
    }

    v13 = *(a1 + 384);
    v22[0] = 0;
    v23 = 0;
    result = sub_100189838(a1, v13, 1uLL, v8, v22);
    if (result)
    {
      return result;
    }

    v14 = v6 >= (v7 - v9) ? v7 - v9 : v6;
    memcpy(*(a1 + 384), &v4[v9], v14);
    v15 = *(a1 + 384);
    v22[0] = 0;
    v23 = 0;
    result = sub_100189D84(a1, v15, 1uLL, v8, v22);
    if (result)
    {
      return result;
    }

    v6 -= v14;
    v4 += v14;
    v8 += v14;
  }

  if (a2[5])
  {
    if (v6 >= v7)
    {
      v16 = 0;
      while (1)
      {
        memcpy(*(a1 + 384), &v4[v16], v7);
        v17 = *(a1 + 384);
        if ((a2[13] & 1) != 0 && *(a2 + 12))
        {
          sub_10008A29C((a2 + 6), a2[3], v16, v21);
          sub_10008A2D0(v22, v21);
          v18 = 1;
        }

        else
        {
          v18 = 0;
          v22[0] = 0;
        }

        v23 = v18;
        result = sub_100189D84(a1, v17, 1uLL, v8 + v16, v22);
        if (result)
        {
          return result;
        }

        v6 -= v7;
        v16 += v7;
        if (v6 < v7)
        {
          v4 += v16;
          v8 += v16;
          break;
        }
      }
    }
  }

  else
  {
    v10 = v6 / v7;
    if (*(a2 + 104) == 1 && *(a2 + 12))
    {
      sub_10008A2D0(v22, (a2 + 6));
      v11 = 1;
    }

    else
    {
      v11 = 0;
      v22[0] = 0;
    }

    v23 = v11;
    result = sub_100189D84(a1, v4, v6 / v7, v8, v22);
    if (result)
    {
      return result;
    }

    v4 += v10 * v7;
    v8 += v10 * v7;
    v6 %= v7;
  }

  if (!v6)
  {
    return *(a2 + 4);
  }

  if (*(a2 + 104) == 1 && *(a2 + 12))
  {
    return 4294967194;
  }

  v19 = *(a1 + 384);
  v22[0] = 0;
  v23 = 0;
  result = sub_100189838(a1, v19, 1uLL, v8, v22);
  if (!result)
  {
    memcpy(*(a1 + 384), v4, v6);
    v20 = *(a1 + 384);
    v22[0] = 0;
    v23 = 0;
    result = sub_100189D84(a1, v20, 1uLL, v8, v22);
    if (!result)
    {
      return *(a2 + 4);
    }
  }

  return result;
}

void sub_10018A3B8(uint64_t a1)
{
  v1 = *(a1 + 408);
  v2 = *(a1 + 416);
  if (v2 == v1)
  {
    return;
  }

  v4 = *(a1 + 432);
  v5 = &v1[v4 >> 5];
  v6 = *v5 + 128 * (v4 & 0x1F);
  if (v6 == *(v1 + (((*(a1 + 440) + v4) >> 2) & 0x3FFFFFFFFFFFFFF8)) + 128 * ((*(a1 + 440) + v4) & 0x1F))
  {
    return;
  }

  v7 = *(**(a1 + 48) + 52);
  v8 = *v5 + 128 * (*(a1 + 432) & 0x1FLL);
  v9 = &v1[v4 >> 5];
  if (v2 != v1)
  {
    v10 = *(v1 + (((v4 + *(a1 + 440)) >> 2) & 0x3FFFFFFFFFFFFFF8)) + 128 * ((v4 + *(a1 + 440)) & 0x1F);
    if (v6 == v10)
    {
      v36 = &v1[v4 >> 5];
      v37 = *v36 + 128 * (*(a1 + 432) & 0x1FLL);
      if (v37 != v8)
      {
        do
        {
          v38 = *(v37 + 112);
          if (v38)
          {
            *(v38 + 16) = 0;
          }

          v39 = *(v37 + 8);
          if (v39)
          {
            sub_10000367C(v39);
          }

          v37 += 128;
          if (v37 - *v36 == 4096)
          {
            v40 = v36[1];
            ++v36;
            v37 = v40;
          }
        }

        while (v37 != v8);
        v1 = *(a1 + 408);
        v2 = *(a1 + 416);
      }

      goto LABEL_63;
    }

    goto LABEL_8;
  }

  if (v6)
  {
    v10 = 0;
LABEL_8:
    v11 = &v1[v4 >> 5];
    if (v10 != v6)
    {
      v12 = ((v4 & 0x1F) << 7) >> 7;
      if (v12 < 0)
      {
        v14 = 30 - v12;
        v13 = ~v14;
        v11 = &v5[-(v14 >> 5)];
      }

      else
      {
        v13 = v12 + 1;
        v11 = &v5[(v12 + 1) >> 5];
      }

      v15 = *v11;
      v6 = *v11 + 128 * (v13 & 0x1F);
      if (v6 == v10)
      {
LABEL_19:
        v6 = v10;
      }

      else
      {
        v16 = *(v8 + 24);
        v17 = *v5 + 128 * (v4 & 0x1F);
        while (1)
        {
          v16 += *(v17 + 16);
          if (v16 != *(v6 + 24) || *(v17 + 120) != *(v6 + 120))
          {
            break;
          }

          v18 = v6 + 128;
          if (v6 + 128 - v15 == 4096)
          {
            v19 = v11[1];
            ++v11;
            v15 = v19;
            v18 = v19;
          }

          v17 = v6;
          v6 = v18;
          if (v18 == v10)
          {
            goto LABEL_19;
          }
        }
      }
    }

    v20 = (v8 + 120);
    v21 = 64;
    if (!*(v8 + 120))
    {
      v21 = 216;
    }

    sub_100027480(v57, a1 + v21);
    v58 = v7;
    v44 = *(a1 + 24);
    v51 = v9;
    v52 = v8;
    v49 = v11;
    v50 = v6;
    if (*(a1 + 392))
    {
      v45 = 0;
    }

    else
    {
      v45 = *(**(a1 + 48) + 64);
    }

    v22 = *v20;
    v23 = vm_page_size;
    sub_1001501BC(*v20, v59);
    if (v8 == v6)
    {
      v24 = 0;
      goto LABEL_50;
    }

    sub_100026638(v46, v8);
    v24 = 0;
    v25 = v48 / v23 * v23;
    v26 = v8;
    v27 = v9;
    while (1)
    {
      sub_100026638(&v61, v26);
      if (!v60)
      {
        sub_10002870C();
      }

      if ((*(*v60 + 48))(v60, &v61))
      {
        v28 = v63 + v64 - v25;
        if (v28 % v23)
        {
          v29 = v23 - v28 % v23;
        }

        else
        {
          v29 = 0;
        }

        v30 = v29 + v28;
        v24 += v30;
        v25 += v30;
      }

      else
      {
        v31 = v23;
        if (v64 % v7)
        {
          goto LABEL_36;
        }

        if (v63 % v7)
        {
          v31 = 0;
LABEL_36:
          v32 = v31 + v24;
          if ((v63 + v64) % v7)
          {
            v33 = v23;
          }

          else
          {
            v33 = 0;
          }

          v24 = v32 + v33;
          v25 = (v7 - 1 + v63 + v64) / v7 * v7;
          goto LABEL_40;
        }

        v25 = v63 + v64;
      }

LABEL_40:
      if (v62)
      {
        sub_10000367C(v62);
      }

      v26 += 128;
      if (v26 - *v27 == 4096)
      {
        v34 = v27[1];
        ++v27;
        v26 = v34;
      }

      if (v26 == v6)
      {
        if (v47)
        {
          sub_10000367C(v47);
        }

LABEL_50:
        sub_10014FD78(v53, v24, vm_page_size);
        sub_1000287DC(v59);
        v53[8] = v57;
        v53[9] = v44;
        v54 = v22;
        v55 = v45;
        if (v52 == v50)
        {
          v35 = 0;
        }

        else
        {
          v35 = 4 * (v49 - v51) - ((v52 - *v51) >> 7) + ((v50 - *v49) >> 7);
        }

        v56 = v35;
        is_mul_ok(3 * v35, 0x18uLL);
        operator new[]();
      }
    }
  }

LABEL_63:
  *(a1 + 440) = 0;
  v41 = v2 - v1;
  if (v41 >= 3)
  {
    do
    {
      operator delete(*v1);
      v42 = *(a1 + 416);
      v1 = (*(a1 + 408) + 8);
      *(a1 + 408) = v1;
      v41 = (v42 - v1) >> 3;
    }

    while (v41 > 2);
  }

  if (v41 == 1)
  {
    v43 = 16;
  }

  else
  {
    if (v41 != 2)
    {
      return;
    }

    v43 = 32;
  }

  *(a1 + 432) = v43;
}

void sub_10018AF60(_Unwind_Exception *a1)
{
  sub_10018B44C(&STACK[0x278]);
  sub_10002752C(&STACK[0x3B0]);
  _Unwind_Resume(a1);
}

void sub_10018B128(uint64_t a1)
{
  v2 = sub_10014F738(a1);
  if ((v2 & 0x80000000) != 0)
  {

    sub_100194FC8(a1 + 224, v2);
  }
}

void *sub_10018B174(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100195114(a1, a2);
  *a1 = off_100230538;
  a1[45] = &off_100230638;
  a1[46] = &off_100230660;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100230538;
  a1[45] = off_1002305C0;
  a1[46] = off_1002305E8;
  return a1;
}

void sub_10018B278(_Unwind_Exception *a1)
{
  sub_10018E340(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10018B29C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018E340(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10018B2E0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001951DC(a1, a2);
  *a1 = off_100230758;
  a1[45] = &off_100230858;
  a1[46] = &off_100230880;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100230758;
  a1[45] = off_1002307E0;
  a1[46] = off_100230808;
  return a1;
}

void sub_10018B3E4(_Unwind_Exception *a1)
{
  sub_10018EAD8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10018B408(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018EAD8(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10018B44C(uint64_t a1)
{
  sub_10014F6E8(a1);
  (*(**(a1 + 224) + 152))(*(a1 + 224));
  sub_100194FC8(a1 + 224, *(a1 + 304));

  return sub_100027DE8(a1);
}

uint64_t sub_10018B4C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (*(a1 + 392))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(**(a1 + 48) + 64);
  }

  return (*(*v3 + 24))(v3, v4 + a2);
}

uint64_t sub_10018B510(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 392);
  v4 = **(a1 + 48);
  if ((v3 & 2) == 0)
  {
    *(v4 + 56) = a2;
  }

  v5 = *(a1 + 24);
  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v4 + 64);
  }

  v7 = (*(*v5 + 56))(v5, (a2 + *(v4 + 52) - 1) / *(v4 + 52) * *(v4 + 52) + v6);
  if (!v7)
  {
    sub_1001881D0(**(a1 + 48), v18);
    v8 = *(sub_10019E2E8() + 1);
    v11 = v18;
    v12 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = xmmword_1001D5AC0;
    v14 = 76;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v9 = (*(**(a1 + 24) + 120))(*(a1 + 24), &v11);
    if (v13 == v9)
    {
      v7 = 0;
    }

    else
    {
      v7 = v9;
    }

    if (v12)
    {
      sub_10000367C(v12);
    }
  }

  return v7;
}

void sub_10018B668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_10000367C(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018B694(void *a1, uint64_t a2, uint64_t *a3, _DWORD *a4)
{
  (*(**a2 + 80))(&v8);
  sub_10003B384(a1, &v8);
  if (v9)
  {
    sub_10000367C(v9);
  }

  v6 = *a3;
  v7 = a3[1];
  a1[5] = off_10020E560;
  a1[6] = v6;
  a1[7] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = *a3;
  }

  *a1 = off_10022FAD8;
  a1[5] = off_10022FBB0;
  sub_10018B83C(v6, 0);
  sub_10018B83C(*a3, 1);
  a1[46] = sub_10014E5EC((a1 + 8));
  a1[47] = sub_10014E5EC((a1 + 27));
  operator new[]();
}

void sub_10018B7F8(_Unwind_Exception *a1)
{
  sub_10002752C((v1 + 8));
  v1[5] = v2;
  v4 = v1[7];
  if (v4)
  {
    sub_10000367C(v4);
  }

  sub_10003B3E0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10018B83C(uint64_t a1, int a2)
{
  v4 = a1;
  v5 = a2;
  v6 = a1;
  v7 = a2;
  v2 = *(a1 + 80);
  if (v2 == -1)
  {
    sub_100036CC4();
  }

  v8 = &v4;
  return (off_100230960[v2])(&v8, a1 + 64);
}

void sub_10018B8A0(void *a1, uint64_t a2, void *a3)
{
  sub_10003B384(a1, a3);
  v5 = *(a2 + 48);
  v6 = *(a2 + 56);
  a1[5] = off_10020E560;
  a1[6] = v5;
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = a1[6];
  }

  *a1 = off_10022FAD8;
  a1[5] = off_10022FBB0;
  sub_10018B83C(v5, 0);
  sub_10018B83C(a1[6], 1);
  a1[46] = sub_10014E5EC((a1 + 8));
  a1[47] = sub_10014E5EC((a1 + 27));
  operator new[]();
}

void sub_10018B9BC(_Unwind_Exception *a1)
{
  sub_10002752C((v1 + 8));
  v1[5] = v2;
  v4 = v1[7];
  if (v4)
  {
    sub_10000367C(v4);
  }

  sub_10003B3E0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10018BA44(uint64_t a1)
{
  if ((*(a1 + 392) & 2) != 0 || (result = *(**(a1 + 48) + 56)) == 0)
  {
    v3 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    if (*(a1 + 392))
    {
      v4 = 0;
    }

    else
    {
      v4 = *(**(a1 + 48) + 64);
    }

    if (v3 <= v4)
    {
      return 0;
    }

    else
    {
      v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
      if (*(a1 + 392))
      {
        v6 = 0;
      }

      else
      {
        v6 = *(**(a1 + 48) + 64);
      }

      return v5 - v6;
    }
  }

  return result;
}

void sub_10018BB1C(void *a1)
{
  sub_10018F1AC(a1);

  operator delete();
}

void sub_10018BB68(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v13) = 0;
  v14 = 0;
  v16 = &v17;
  v17 = &v13;
  v15 = 0;
  sub_100026638(&v7, a2);
  sub_100026638(v9, &v7);
  v11 = v17;
  v5 = v17;
  v17 = 0;
  *(v5 + 2) = &v11;
  v12 = 0;
  sub_10018F3E8((a1 + 400), v9);
  if (v11)
  {
    *(v11 + 2) = 0;
  }

  if (v10)
  {
    sub_10000367C(v10);
  }

  if (v8)
  {
    sub_10000367C(v8);
  }

  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  if (v14 == 1)
  {
    *a3 = v13;
    *(a3 + 4) = 1;
  }

  v6 = v16;
  *(a3 + 16) = v16;
  if (v6)
  {
    *v6 = a3;
  }

  if (v17)
  {
    *(v17 + 2) = 0;
  }
}

void sub_10018BC58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a37)
  {
    *(a37 + 16) = 0;
  }

  if (a24)
  {
    sub_10000367C(a24);
  }

  if (a10)
  {
    sub_10000367C(a10);
  }

  v39 = *(v37 - 40);
  if (v39)
  {
    *(v39 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

void sub_10018BCA4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v13) = 0;
  v14 = 0;
  v16 = &v17;
  v17 = &v13;
  v15 = 0;
  sub_100026638(&v7, a2);
  sub_100026638(v9, &v7);
  v11 = v17;
  v5 = v17;
  v17 = 0;
  *(v5 + 2) = &v11;
  v12 = 1;
  sub_10018F3E8((a1 + 400), v9);
  if (v11)
  {
    *(v11 + 2) = 0;
  }

  if (v10)
  {
    sub_10000367C(v10);
  }

  if (v8)
  {
    sub_10000367C(v8);
  }

  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  if (v14 == 1)
  {
    *a3 = v13;
    *(a3 + 4) = 1;
  }

  v6 = v16;
  *(a3 + 16) = v16;
  if (v6)
  {
    *v6 = a3;
  }

  if (v17)
  {
    *(v17 + 2) = 0;
  }
}

void sub_10018BD98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a37)
  {
    *(a37 + 16) = 0;
  }

  if (a24)
  {
    sub_10000367C(a24);
  }

  if (a10)
  {
    sub_10000367C(a10);
  }

  v39 = *(v37 - 40);
  if (v39)
  {
    *(v39 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

void sub_10018BDEC(uint64_t a1)
{
  sub_10018F1AC((a1 - 40));

  operator delete();
}

void sub_10018BE28(uint64_t a1)
{
  *a1 = off_10022FA80;
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_10000367C(v2);
  }

  sub_1000085B4(a1 + 8, *(a1 + 16));

  operator delete();
}

void *sub_10018BEA0@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) == 5)
  {
    v4 = *(*result + 48) - *(*result + 40);
    v8[0] = *(*result + 40);
    v8[1] = v4;
    sub_10014E4B8(&v9, v8);
    sub_10014D728(a3, &v9);
    *(a3 + 16) = 0;
    result = v9;
    v9 = 0;
    if (result)
    {
      operator delete[]();
    }
  }

  else
  {
    v5 = result[1];
    v6 = *(v5 + 40);
    v7 = *(v5 + 48) - v6;
    *a3 = v6;
    *(a3 + 8) = v7;
    *(a3 + 16) = 1;
  }

  return result;
}

void sub_10018BF3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

void sub_10018BF68(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_100036CAC();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t *sub_10018C0A0(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_100036C5C(a1, a2);
  }

  return a1;
}

void sub_10018C0F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10018C114(uint64_t a1)
{
  *a1 = off_10022FA80;
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_10000367C(v2);
  }

  sub_1000085B4(a1 + 8, *(a1 + 16));
  return a1;
}

uint64_t sub_10018C1FC(uint64_t a1, uint64_t a2)
{
  if (sub_100009720(a2, &off_10022FC90))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10018C248(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018C4E0(v1);

  return std::ios::~ios();
}

uint64_t sub_10018C294(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018C4E0(v1);

  return std::ios::~ios();
}

void sub_10018C2F4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018C4E0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018C35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10018C398(_BYTE *a1, int a2)
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

void sub_10018C404(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018C4E0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10018C468(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018C4E0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018C4E0(uint64_t a1)
{
  *a1 = &off_10022FE50;
  sub_10018C64C(a1);
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

uint64_t sub_10018C64C(uint64_t a1)
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
        sub_10018C7FC((a1 + 72), __p);
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

void sub_10018C798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018C7C4(uint64_t a1)
{
  sub_10018C4E0(a1);

  operator delete();
}

int *sub_10018C7FC(uint64_t *a1, uint64_t *a2)
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
    v26 = 429;
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
      v26 = 429;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10018C9E0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018CC78(v1);

  return std::ios::~ios();
}

uint64_t sub_10018CA2C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018CC78(v1);

  return std::ios::~ios();
}

void sub_10018CA8C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018CC78(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018CAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10018CB30(_BYTE *a1, int a2)
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

void sub_10018CB9C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018CC78(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10018CC00(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018CC78(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018CC78(uint64_t a1)
{
  *a1 = &off_100230070;
  sub_10018CDE4(a1);
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

uint64_t sub_10018CDE4(uint64_t a1)
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
        sub_10018CF94((a1 + 72), __p);
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

void sub_10018CF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018CF5C(uint64_t a1)
{
  sub_10018CC78(a1);

  operator delete();
}

int *sub_10018CF94(uint64_t *a1, uint64_t *a2)
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
    v26 = 437;
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
      v26 = 437;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10018D178(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018D410(v1);

  return std::ios::~ios();
}

uint64_t sub_10018D1C4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018D410(v1);

  return std::ios::~ios();
}

void sub_10018D224(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018D410(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018D28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10018D2C8(_BYTE *a1, int a2)
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

void sub_10018D334(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018D410(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10018D398(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018D410(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018D410(uint64_t a1)
{
  *a1 = &off_100230290;
  sub_10018D57C(a1);
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

uint64_t sub_10018D57C(uint64_t a1)
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
        sub_10018D72C((a1 + 72), __p);
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

void sub_10018D6C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018D6F4(uint64_t a1)
{
  sub_10018D410(a1);

  operator delete();
}

int *sub_10018D72C(uint64_t *a1, uint64_t *a2)
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
    v26 = 525;
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
      v26 = 525;
      v27 = 2082;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10018D910(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018DBA8(v1);

  return std::ios::~ios();
}

uint64_t sub_10018D95C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018DBA8(v1);

  return std::ios::~ios();
}

void sub_10018D9BC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018DBA8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018DA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10018DA60(_BYTE *a1, int a2)
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