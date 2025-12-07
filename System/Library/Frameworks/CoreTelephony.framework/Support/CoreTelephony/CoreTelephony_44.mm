uint64_t *sub_1002B97C0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_1002B982C(result);
    result = sub_100100E34(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_100100F00(a1, a2);
      }
    }
  }

  return result;
}

uint64_t sub_1002B982C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1002B9870(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101E389D8;
  operator new();
}

void sub_1002B9980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001018AC(va);
  operator delete();
}

void sub_1002B99E8(uint64_t a1)
{
  sub_1002B9D94(a1);

  operator delete();
}

uint64_t sub_1002B9A20(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_1002B9E0C(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_1002B9ACC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002B9AFC(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_100048C68(v1);
}

uint64_t sub_1002B9B28(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_10004A704(v1);
}

atomic_uint **sub_1002B9B54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 32);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  v7[1] = v2;
  v7[2] = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7[0] = v5;
  return sub_10004A724(v7);
}

void sub_1002B9BAC(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1002B9C18(&v2, a2);
}

void sub_1002B9C88(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1002B9CB0(v1);
  __cxa_rethrow();
}

uint64_t sub_1002B9CB0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1002BAA18((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1002B9D24(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_1002BAA18((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1002B9D94(uint64_t a1)
{
  *a1 = off_101E389D8;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_1002B9E0C(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_1002B982C(result + 4); ; i += 6)
    {
      result = sub_1002B982C(v2);
      if (i == result[1])
      {
        break;
      }

      memset(v6, 0, sizeof(v6));
      sub_10004ACE8(i, v6);
      if (sub_100048EA8(i))
      {
        if (*(v4 + 24) == 1)
        {
          *(v4 + 24) = 0;
          sub_100100F00(v4, a2);
        }

        return sub_10004B040(v6);
      }

      sub_10004B040(v6);
    }
  }

  return result;
}

void sub_1002B9EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_1002B9F14(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1002B9F80(&v2, a2);
}

void sub_1002B9FF0(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1017612E0(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1002BA034(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1002BA07C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void (***sub_1002BA0C0(void (***result)(void, void, uint64_t), void (***a2)(void, void, uint64_t)))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_1002BA960(v4, result);
    sub_1002BA960(v3, a2);
    sub_1002BA960(a2, v4);
    return sub_1002BAA18(v4);
  }

  return result;
}

uint64_t sub_1002BA13C(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      sub_100222BDC(result);
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N3ctu12DispatchSlotIZN12PSControlSIM10initializeEvE3$_0EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN12PSControlSIM10initializeEvE3$_0EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_1002BA238(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v6 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v14 = *(a2 + 16);
  }

  v8 = *a4;
  v7 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v9 = *v6;
  v10 = *(v6 + 8);
  v11 = *(v6 + 16);
  v12 = *(v6 + 24);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v17 = v11;
    v18 = v12;
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  else
  {
    v17 = *(v6 + 16);
    v18 = 0;
  }

  v16[0] = off_101E38B20;
  v16[1] = v10;
  v15[0] = v8;
  v15[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1002BA3D4(v9, v16, __p, v5, v15);
}

void sub_1002BA38C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void (**a18)(void, void, uint64_t))
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_1002BAA18(&a18);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002BA59C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[7];
  v5 = *a1[6];
  v6 = v4[1];
  *&v12 = *v4;
  *(&v12 + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1002BA6B0(v2, v3, v5, &v12);
  if (*(&v12 + 1))
  {
    sub_100004A34(*(&v12 + 1));
  }

  v7 = a1[4];
  if (v7)
  {
    sub_1002BAA18(v7);
    operator delete();
  }

  v8 = a1[5];
  if (v8)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    operator delete();
  }

  result = a1[6];
  if (result)
  {
    operator delete();
  }

  v10 = a1[7];
  if (v10)
  {
    v11 = *(v10 + 8);
    if (v11)
    {
      sub_100004A34(v11);
    }

    operator delete();
  }

  return result;
}

void sub_1002BA698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002BA6B0(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v6, "call to empty boost::function");
    v6.__vftable = &off_101E25EA8;
    sub_1001028A8(&v6);
  }

  v4 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v5 = *a4;
  *a4 = 0uLL;
  v4(a1 + 1, a2, a3, &v5);
  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_1002BA744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::runtime_error a11)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002BA76C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *a1;
    v5 = *(a1 + 16);
    *(a2 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (a3 != 1)
    {
      return;
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      return;
    }

LABEL_13:

    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (a3 == 3)
  {
    v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v7 == ("ZN12PSControlSIM10initializeEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN12PSControlSIM10initializeEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }

    return;
  }

  if (a3 != 2)
  {
LABEL_2:
    *(a2 + 8) = 0;
    return;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_1002BA850(uint64_t *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v5 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v7 = a1[2];
  if (v7)
  {
    v10 = *a1;
    v11 = std::__shared_weak_count::lock(v7);
    if (v11)
    {
      v12 = v11;
      if (a1[1])
      {
        v13[0] = v6;
        v13[1] = v5;
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        PSControlSIM::handleSetEntitlementResponse(v10, a2, a3, v13);
        if (v5)
        {
          sub_100004A34(v5);
        }
      }

      sub_100004A34(v12);
    }
  }

  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_1002BA930(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_100004A34(v1);
    sub_100004A34(v2);
  }

  else
  {
    v1 = v2;
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002BA960(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    v4 = *a2;
    if (*a2)
    {
      *result = v4;
      if (v4)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        result = (*v4)(a2 + 8, result + 8, 1);
      }
    }

    else
    {
      v5 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v5 & 1) == 0)
      {
        v6 = *v5;
        if (v6)
        {
          result = v6(result + 8, result + 8, 2);
        }
      }

      v2 = v3;
    }

    *v2 = 0;
  }

  return result;
}

void sub_1002BA9F4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***sub_1002BAA18(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

void *sub_1002BAA68(void *a1)
{
  *a1 = off_101E38B50;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1002BAAB4(void *a1)
{
  *a1 = off_101E38B50;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_1002BAB20(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::lock(v2);
  }

  operator new();
}

void sub_1002BABD0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002BAC74(void *a1)
{
  *a1 = off_101E38BA0;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1002BACC0(void *a1)
{
  *a1 = off_101E38BA0;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

void *sub_1002BAD98(void *a1)
{
  *a1 = off_101E38BE0;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1002BADE4(void *a1)
{
  *a1 = off_101E38BE0;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1002BAEC4(uint64_t result, uint64_t a2)
{
  *a2 = off_101E38BE0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1002BAF04(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1002BAF14(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1002BAF54(void *a1, xpc_object_t *a2)
{
  sub_1003F14D8(a1[1], a2);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[2];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[3])
      {
        v7 = sub_100007A6C(v4 + 1072, (**(v4 + 80) + 24));
        if (v4 + 1080 != v7)
        {
          v8[2] = 0;
          v9 = 0;
          if ((*(v7 + 151) & 0x8000000000000000) != 0)
          {
            if (*(v7 + 136))
            {
LABEL_7:
              operator new();
            }
          }

          else if (*(v7 + 151))
          {
            goto LABEL_7;
          }

          v8[0] = 0;
          v8[1] = 0;
          PSControlSIM::handleIMSInfoAvailable(v4, v8);
          if (v9)
          {
            sub_100004A34(v9);
          }
        }
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_1002BB0CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1002BB118(uint64_t **a1, uint64_t ***a2, uint64_t a3)
{
  v8 = 0;
  v3 = *sub_100005C2C(a1, &v8, a2);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_1002BB1B4();
  }

  return v3;
}

uint64_t sub_1002BB22C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1002B7404(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

char *sub_1002BB278(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  v5 = *(a2 + 24);
  *(__dst + 5) = *(a2 + 5);
  *(__dst + 24) = v5;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v6 = a2[3];
  *(__dst + 8) = *(a2 + 8);
  *(__dst + 3) = v6;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  v7 = *(a2 + 72);
  *(__dst + 11) = *(a2 + 11);
  *(__dst + 72) = v7;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  *(a2 + 9) = 0;
  v8 = a2[6];
  *(__dst + 14) = *(a2 + 14);
  *(__dst + 6) = v8;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  v9 = *(a2 + 120);
  *(__dst + 17) = *(a2 + 17);
  *(__dst + 120) = v9;
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  *(__dst + 18) = 0;
  *(__dst + 19) = 0;
  *(__dst + 20) = 0;
  *(__dst + 9) = a2[9];
  *(__dst + 20) = *(a2 + 20);
  *(a2 + 18) = 0;
  *(a2 + 19) = 0;
  *(a2 + 20) = 0;
  v10 = *(a2 + 168);
  *(__dst + 23) = *(a2 + 23);
  *(__dst + 168) = v10;
  *(a2 + 22) = 0;
  *(a2 + 23) = 0;
  *(a2 + 21) = 0;
  *(__dst + 24) = 0;
  *(__dst + 25) = 0;
  *(__dst + 26) = 0;
  *(__dst + 12) = a2[12];
  *(__dst + 26) = *(a2 + 26);
  *(a2 + 24) = 0;
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  *(__dst + 54) = *(a2 + 54);
  return __dst;
}

uint64_t sub_1002BB3A0(uint64_t a1)
{
  sub_1003E9A5C(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1002BB424(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1002BB4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002BB4B8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002BB4B8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1003E9A5C(v2);
    operator delete();
  }

  return a1;
}

void sub_1002BB504(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002BB53C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1003E9A5C(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1002BB580(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_1002BB5C0(void *a1)
{
  *a1 = off_101E38CD8;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1002BB60C(void *a1)
{
  *a1 = off_101E38CD8;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1002BB6EC(uint64_t result, uint64_t a2)
{
  *a2 = off_101E38CD8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1002BB72C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1002BB73C(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1002BB77C(void *a1, xpc_object_t *a2)
{
  sub_1002BB888(a1[1], a2);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[2];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[3])
      {
        if (*(v4 + 1136))
        {
          v7 = sub_100007A6C(v4 + 1096, (**(v4 + 80) + 24));
          if (v4 + 1104 != v7)
          {
            sub_100215798(*(v4 + 1136), v7 + 80);
          }
        }
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_1002BB83C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1002BB888(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_1002B7314(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v16, object, 0);
    xpc_release(object[0]);
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v15, object, count);
    xpc_release(object[0]);
    for (i = v17; i != v15[1] || v16 != v15[0]; i = ++v17)
    {
      v14 = 0;
      object[0] = &v16;
      object[1] = i;
      sub_10003EAD4(object, &v14);
      if (xpc_get_type(v14) == &_xpc_type_dictionary)
      {
        *__p = 0u;
        v13 = 0u;
        *v10 = 0u;
        v11 = 0u;
        *v8 = 0u;
        v9 = 0u;
        *object = 0u;
        v6 = v14;
        if (v14)
        {
          xpc_retain(v14);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_1002BBB64(object, &v6);
        xpc_release(v6);
        sub_1002BBCAC(a1, object, object);
        if (SBYTE7(v13) < 0)
        {
          operator delete(__p[0]);
        }

        if (SBYTE7(v11) < 0)
        {
          operator delete(v10[0]);
        }

        if (SHIBYTE(v9) < 0)
        {
          operator delete(v8[1]);
        }

        if (SHIBYTE(v8[0]) < 0)
        {
          operator delete(object[0]);
        }
      }

      xpc_release(v14);
    }

    xpc_release(v15[0]);
    xpc_release(v16);
  }

  xpc_release(v3);
}

void sub_1002BBAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v12 - 48));
  xpc_release(v11);
  _Unwind_Resume(a1);
}

void sub_1002BBB64(uint64_t a1, xpc_object_t *a2)
{
  v2 = *a2;
  v6 = v2;
  if (v2 && xpc_get_type(v2) == &_xpc_type_dictionary)
  {
    xpc_retain(v2);
  }

  else
  {
    v2 = xpc_null_create();
    v6 = v2;
  }

  if (xpc_get_type(v2) == &_xpc_type_dictionary)
  {
    v3 = &v6;
    v4 = "first";
    sub_100006354(&v3, &object);
    read_rest_value();
    xpc_release(object);
    v3 = &v6;
    v4 = "second";
    sub_100006354(&v3, &object);
    rest::read_rest_value();
    xpc_release(object);
    v2 = v6;
  }

  xpc_release(v2);
}

void sub_1002BBC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void *sub_1002BBCAC(uint64_t **a1, uint64_t ***a2, uint64_t a3)
{
  v4 = 0;
  result = *sub_100005C2C(a1, &v4, a2);
  if (!result)
  {
    sub_1002BBD38();
  }

  return result;
}

void sub_1002BBDB0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002BBE74(v3, v2);
  _Unwind_Resume(a1);
}

char *sub_1002BBDCC(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  v5 = *(a2 + 24);
  *(__dst + 5) = *(a2 + 5);
  *(__dst + 24) = v5;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v6 = a2[3];
  *(__dst + 8) = *(a2 + 8);
  *(__dst + 3) = v6;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  *(__dst + 18) = *(a2 + 18);
  v7 = a2[5];
  *(__dst + 12) = *(a2 + 12);
  *(__dst + 5) = v7;
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  *(a2 + 10) = 0;
  __dst[104] = *(a2 + 104);
  return __dst;
}

void sub_1002BBE74(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 135) < 0)
    {
      operator delete(__p[14]);
    }

    if (*(__p + 103) < 0)
    {
      operator delete(__p[10]);
    }

    if (*(__p + 79) < 0)
    {
      operator delete(__p[7]);
    }

    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_1002BBF08(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_1002BBF6C(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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
      v7 = *(v4 + 28);
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

uint64_t sub_1002BC040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v52[0] = off_101E2A828;
  v52[1] = sub_1000A7AE8;
  v52[3] = v52;
  sub_1002BC678((a1 + 216), a3, v52);
  sub_1000A8744(v52);
  v12 = *(a3 + 8);
  v44 = *a3;
  v45 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a4[1];
  v42 = *a4;
  v43 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a5[1];
  v40 = *a5;
  v41 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1004D102C(a1, a2, &v44, &v42, &v40);
  if (v41)
  {
    sub_100004A34(v41);
  }

  if (v43)
  {
    sub_100004A34(v43);
  }

  if (v45)
  {
    sub_100004A34(v45);
  }

  *a1 = &off_101E38D58;
  *(a1 + 8) = off_101E38EE0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  std::to_string(&v50, a6);
  v15 = std::string::insert(&v50, 0, "MT MMS ", 7uLL);
  v36 = a6;
  v16 = *&v15->__r_.__value_.__l.__data_;
  v39 = v15->__r_.__value_.__r.__words[2];
  *__p = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v46 = 0;
  log = 0;
  ctu::OsLogContext::OsLogContext(&v46, kCtLoggingSystemName, "mms.fetch");
  v17 = log;
  v18 = os_signpost_id_generate(log);
  if ((v18 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v19 = log;
    if (os_signpost_enabled(log))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a6;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, v18, "MobileTerminatedMMS", "receive_time=%{signpost.description:attribute}ld", &buf, 0xCu);
    }
  }

  *&buf = off_101E38F78;
  p_buf = &buf;
  v48[0] = v18;
  v48[1] = os_retain(v17);
  sub_1000148FC(&v49, &buf);
  sub_10001499C(&buf);
  ctu::OsLogContext::~OsLogContext(&v46);
  Registry::createXpcJetsamAssertion();
  sub_100014DA8(v48);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  *(a1 + 224) = 0;
  *&v50.__r_.__value_.__l.__data_ = *off_101E38F08;
  v50.__r_.__value_.__r.__words[2] = @"MaxMmsFetchRetries";
  v54 = 0;
  buf = 0uLL;
  sub_10005B328(&buf, &v50, &v51, 3uLL);
  v46 = 0;
  ServiceMap = Registry::getServiceMap(*a3);
  v21 = ServiceMap;
  if ((v22 & 0x8000000000000000) != 0)
  {
    v23 = (v22 & 0x7FFFFFFFFFFFFFFFLL);
    v24 = 5381;
    do
    {
      v22 = v24;
      v25 = *v23++;
      v24 = (33 * v24) ^ v25;
    }

    while (v25);
  }

  std::mutex::lock(ServiceMap);
  v50.__r_.__value_.__r.__words[0] = v22;
  v26 = sub_100009510(&v21[1].__m_.__sig, &v50);
  if (v26)
  {
    v28 = v26[3];
    v27 = v26[4];
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v21);
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v27);
      v29 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    v28 = 0;
  }

  std::mutex::unlock(v21);
  v27 = 0;
  v29 = 1;
LABEL_28:
  (*(*v28 + 104))(&v37, v28, a2, 1, &buf, 0, 0);
  sub_10010B240(&v46, &v37);
  sub_10000A1EC(&v37);
  if ((v29 & 1) == 0)
  {
    sub_100004A34(v27);
  }

  data = 10;
  if (v46)
  {
    LODWORD(v50.__r_.__value_.__l.__data_) = 10;
    ctu::cf::assign(&v50, v46, v30);
    v32 = v36;
    data = v50.__r_.__value_.__l.__data_;
  }

  else
  {
    v32 = v36;
  }

  *(a1 + 44) = data;
  v33 = *(a1 + 192);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  if (v33)
  {
    sub_100004A34(v33);
  }

  *(a1 + 232) = v32;
  *(a1 + 240) = 0;
  if (*a4)
  {
    v34 = sub_1013D8420(*a4, "X-Mms-Expiry");
    if (v34)
    {
      *(a1 + 240) = sub_101265AA4(v34, *(a1 + 232));
    }
  }

  sub_100029A48(&v46);
  if (buf)
  {
    *(&buf + 1) = buf;
    operator delete(buf);
  }

  return a1;
}

void sub_1002BC50C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, const void *a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_100029A48(&a24);
  v41 = *(v39 - 144);
  if (v41)
  {
    *(v39 - 136) = v41;
    operator delete(v41);
  }

  v42 = *(v37 + 304);
  if (v42)
  {
    sub_100004A34(v42);
  }

  if (*(v37 + 295) < 0)
  {
    operator delete(*(v37 + 272));
  }

  if (*(v37 + 271) < 0)
  {
    operator delete(*v38);
  }

  sub_1004D1284(v37);
  v43 = *(v37 + 216);
  *(v37 + 216) = 0;
  if (v43)
  {
    (*(*v43 + 8))(v43);
  }

  _Unwind_Resume(a1);
}

capabilities::ct *sub_1002BC678(capabilities::ct *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  if ((capabilities::ct::supportsGemini(a1) & 1) == 0)
  {
    operator new();
  }

  if (!*a1)
  {
    operator new();
  }

  return a1;
}

void sub_1002BC7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000A8744(va);
  operator delete();
}

MMSOperationInterface *sub_1002BC840(MMSOperationInterface *this)
{
  *this = &off_101E38D58;
  *(this + 1) = off_101E38EE0;
  v2 = *(this + 38);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(this + 295) < 0)
  {
    operator delete(*(this + 34));
  }

  if (*(this + 271) < 0)
  {
    operator delete(*(this + 31));
  }

  sub_1004D1284(this);
  v3 = *(this + 27);
  *(this + 27) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return this;
}

void sub_1002BC910(MMSOperationInterface *a1)
{
  sub_1002BC840(a1);

  operator delete();
}

void sub_1002BC948(uint64_t a1)
{
  sub_1002BC840((a1 - 8));

  operator delete();
}

BOOL sub_1002BC984(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  sub_1004D2664(a1, &v4);
  v2 = sub_1004D1694(a1) && v4 && sub_1013D87F0(v4, "X-Mms-Content-Location") != 0;
  if (v5)
  {
    sub_100004A34(v5);
  }

  return v2;
}

void sub_1002BC9FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002BCA14(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1004D24E8(a1, a2, a3);
  if (v6 && (a3 & 1) == 0)
  {
    sub_101135D4C(a2, *(a1 + 232));
  }

  return v6;
}

void sub_1002BCA64(uint64_t a1, uint64_t *a2)
{
  if ((*(**(a1 + 168) + 184))(*(a1 + 168)))
  {
    v4 = sub_1013D87F0(*a2, "X-Mms-Transaction-ID");
    v5 = sub_1004D15AC(a1);
    v6 = *(*(**(a1 + 216) + 16))(*(a1 + 216), v5);
    if (v4)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        v16 = sub_1004D149C(a1);
        v17 = 2080;
        v18 = v4;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Queueing Ack for MsgId: %u, transactionId: %s", buf, 0x12u);
      }

      v7 = *(a1 + 136);
      v8 = sub_1004D15AC(a1);
      v9 = *(a1 + 128);
      v13 = *(a1 + 120);
      v14 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = *(a1 + 176);
      v11 = *(a1 + 168);
      v12 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v7 + 24))(v7, v8, &v13, v4, &v11);
      if (v12)
      {
        sub_100004A34(v12);
      }

      if (v14)
      {
        sub_100004A34(v14);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1017694B0(a1);
    }
  }
}

void sub_1002BCC44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002BCC70(uint64_t a1)
{
  if (sub_1002BCD04(a1))
  {
    v2 = *(a1 + 136);
    sub_100004AA0(&v3, (a1 + 16));
    (*(*v2 + 16))(v2, 1, &v3);
    if (v4)
    {
      sub_100004A34(v4);
    }
  }
}

void sub_1002BCCEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002BCD04(uint64_t a1)
{
  v2 = sub_1004D15AC(a1);
  v3 = (*(**(a1 + 216) + 16))(*(a1 + 216), v2);
  v4 = time(0);
  v5 = *(a1 + 240);
  if (v5 && v4 > *(a1 + 232) + v5)
  {
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_10176952C(a1);
    }

    sub_10000501C(v58, "");
    sub_1002BDC34(a1, 0xE2u, 5u, v58);
    if (v59 < 0)
    {
      operator delete(v58[0]);
    }

    return 1;
  }

  v56 = 0;
  v57 = 0;
  sub_1004D2664(a1, &v56);
  if (!v56)
  {
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v6 = sub_1004D149C(a1);
      sub_101769704(&buf, v6);
    }

    sub_10000501C(v54, "");
    sub_1002BDC34(a1, 0xC0u, 2u, v54);
    if (v55 < 0)
    {
      operator delete(v54[0]);
    }

    goto LABEL_83;
  }

  memset(&v53, 0, sizeof(v53));
  sub_10000501C(&v53, "");
  if (sub_1013D8788(v56, "X-Mms-MMS-Version"))
  {
    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&buf, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
    }

    else
    {
      buf = v53;
    }
  }

  else
  {
    sub_10000501C(&buf, "");
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  v53 = buf;
  v7 = sub_1013D87F0(v56, "X-Mms-Content-Location");
  if (!v7)
  {
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v31 = sub_1004D149C(a1);
      sub_1017696C8("X-Mms-Content-Location", &buf, v31);
    }

    v32 = *(a1 + 136);
    v33 = sub_1004D15AC(a1);
    v51 = v56;
    v52 = v57;
    if (v57)
    {
      atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10000501C(__p, "");
    (*(*v32 + 48))(v32, v33, &v51, "Unrecognized", __p);
    if (v50 < 0)
    {
      operator delete(__p[0]);
    }

    if (v52)
    {
      sub_100004A34(v52);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v48, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
    }

    else
    {
      v48 = v53;
    }

    sub_1002BDC34(a1, 0xE5u, 6u, &v48);
    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    goto LABEL_81;
  }

  sub_10000501C(&buf, v7);
  v8 = (a1 + 248);
  if (*(a1 + 271) < 0)
  {
    operator delete(*v8);
  }

  *v8 = *&buf.__r_.__value_.__l.__data_;
  *(a1 + 264) = *(&buf.__r_.__value_.__l + 2);
  if (!(*(**(a1 + 168) + 248))(*(a1 + 168)))
  {
    goto LABEL_41;
  }

  v9 = *(a1 + 271);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = *(a1 + 271);
    if (*(a1 + 271))
    {
      goto LABEL_27;
    }

LABEL_87:
    sub_10013C334();
  }

  v10 = *(a1 + 256);
  if (!v10)
  {
    goto LABEL_87;
  }

LABEL_27:
  v11 = v10 - 1;
  v12 = (a1 + 248);
  if ((v9 & 0x80000000) != 0)
  {
    v12 = *v8;
  }

  if (v12[v11] == 61)
  {
    v13 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v14 = sub_1004D149C(a1);
      LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Content-Location does not include UID value, manually appending, MsgId: %u", &buf, 8u);
    }

    v15 = sub_1013D87F0(v56, "X-Mms-Transaction-ID");
    if (!v15)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        v40 = sub_1004D149C(a1);
        sub_10176968C("X-Mms-Transaction-ID", &buf, v40);
      }

      goto LABEL_81;
    }

    sub_10000501C(&buf, v15);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = buf.__r_.__value_.__l.__size_;
    }

    std::string::append((a1 + 248), p_buf, size);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

LABEL_41:
  v18 = std::string::find((a1 + 248), 63, 0);
  std::string::basic_string(&buf, (a1 + 248), 0, v18, &v46);
  v19 = (a1 + 272);
  if (*(a1 + 295) < 0)
  {
    operator delete(*v19);
  }

  *v19 = *&buf.__r_.__value_.__l.__data_;
  *(a1 + 288) = *(&buf.__r_.__value_.__l + 2);
  v20 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 295) < 0)
    {
      v19 = *v19;
    }

    v21 = (a1 + 248);
    if (*(a1 + 271) < 0)
    {
      v21 = *v8;
    }

    v22 = sub_1004D149C(a1);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
    *(buf.__r_.__value_.__r.__words + 4) = v19;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v21;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
    v61 = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Calculated fMmscUrl for MMSFetchOperation: %s (full path was: %s), MsgId: %u", &buf, 0x1Cu);
  }

  v46 = 0;
  v47 = 0;
  v23 = sub_1004D15AC(a1);
  sub_1004D1140(a1, v23, &v46);
  if (v46 && *(a1 + 168) && ((v24 = (*(*v46 + 40))(), v25 = *(v24 + 23), v26 = *v24, v27 = (*(**(a1 + 168) + 40))(*(a1 + 168)), v25 >= 0) ? (v28 = v24) : (v28 = v26), *(v27 + 23) >= 0 ? (v29 = v27) : (v29 = *v27), !strcasecmp(v28, v29)))
  {
    v36 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v37 = sub_1013D8840(v56, "X-Mms-Message-Size");
      v38 = sub_1004D149C(a1);
      LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v37;
      LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf.__r_.__value_.__r.__words[1] + 2) = v38;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I Recieved MMS notification indicates expected mms size: %u, MsgId: %u", &buf, 0xEu);
    }

    v39 = *(a1 + 176);
    v43 = *(a1 + 168);
    v44 = v39;
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1004D17E0(a1, &v43);
    if (v44)
    {
      sub_100004A34(v44);
    }

    if (*(a1 + 184))
    {
      sub_1004D1B44(a1);
      sub_1004D19AC(a1);
    }

    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v41 = sub_1004D149C(a1);
      sub_10176961C(&buf, v41);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v42, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
    }

    else
    {
      v42 = v53;
    }

    sub_1002BDC34(a1, 0x18u, 0xCu, &v42);
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_76;
    }

    v34 = v42.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v30 = sub_1004D149C(a1);
      sub_101769654(&buf, v30);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__dst, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = v53;
    }

    sub_1002BDC34(a1, 0x18u, 7u, &__dst);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_76;
    }

    v34 = __dst.__r_.__value_.__r.__words[0];
  }

  operator delete(v34);
LABEL_76:
  if (v47)
  {
    sub_100004A34(v47);
  }

LABEL_81:
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

LABEL_83:
  if (v57)
  {
    sub_100004A34(v57);
  }

  return 1;
}

void sub_1002BD9E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1002BDC34(uint64_t a1, unsigned int a2, unsigned int a3, const char *a4)
{
  v8 = sub_1004D15AC(a1);
  ServiceMap = Registry::getServiceMap(*(a1 + 120));
  v10 = ServiceMap;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  *&v51 = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, &v51);
  if (v15)
  {
    v17 = v15[3];
    v16 = v15[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v10);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
      v18 = 0;
      if (!v17)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
  if (!v17)
  {
LABEL_7:
    v19 = *(*(**(a1 + 216) + 16))(*(a1 + 216), v8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1017695E4(v19, v20, v21, v22, v23, v24, v25, v26);
      if (v18)
      {
        return;
      }

      goto LABEL_47;
    }

LABEL_46:
    if (v18)
    {
      return;
    }

    goto LABEL_47;
  }

LABEL_12:
  v51 = 0uLL;
  v52 = 0;
  MessageCenterModel::getBundleIdForDefaultCarrierMessagingApp((a1 + 120), &v51);
  v50 = 0;
  v27 = xpc_dictionary_create(0, 0, 0);
  v28 = v27;
  if (v27)
  {
    v50 = v27;
  }

  else
  {
    v28 = xpc_null_create();
    v50 = v28;
    if (!v28)
    {
      v29 = xpc_null_create();
      v28 = 0;
      goto LABEL_19;
    }
  }

  if (xpc_get_type(v28) == &_xpc_type_dictionary)
  {
    xpc_retain(v28);
    goto LABEL_20;
  }

  v29 = xpc_null_create();
LABEL_19:
  v50 = v29;
LABEL_20:
  xpc_release(v28);
  v30 = subscriber::simSlotAsInstance();
  object = xpc_int64_create(v30);
  if (!object)
  {
    object = xpc_null_create();
  }

  v46 = &v50;
  v47 = "subs_id";
  sub_10000F688(&v46, &object, &v49);
  xpc_release(v49);
  v49 = 0;
  xpc_release(object);
  object = 0;
  v44 = xpc_int64_create(a3);
  if (!v44)
  {
    v44 = xpc_null_create();
  }

  v46 = &v50;
  v47 = "dwErrCode";
  sub_10000F688(&v46, &v44, &v45);
  xpc_release(v45);
  v45 = 0;
  xpc_release(v44);
  v44 = 0;
  if (a4[23] < 0)
  {
    a4 = *a4;
  }

  v42 = xpc_string_create(a4);
  if (!v42)
  {
    v42 = xpc_null_create();
  }

  v46 = &v50;
  v47 = "wMmsVersion";
  sub_10000F688(&v46, &v42, &v43);
  xpc_release(v43);
  v43 = 0;
  xpc_release(v42);
  v42 = 0;
  v40 = xpc_int64_create(a2);
  if (!v40)
  {
    v40 = xpc_null_create();
  }

  v46 = &v50;
  v47 = "wResultCode";
  sub_10000F688(&v46, &v40, &v41);
  xpc_release(v41);
  v41 = 0;
  xpc_release(v40);
  v40 = 0;
  if (v52 >= 0)
  {
    v31 = &v51;
  }

  else
  {
    v31 = v51;
  }

  v38 = xpc_string_create(v31);
  if (!v38)
  {
    v38 = xpc_null_create();
  }

  v46 = &v50;
  v47 = "bundleId";
  sub_10000F688(&v46, &v38, &v39);
  xpc_release(v39);
  v39 = 0;
  xpc_release(v38);
  v38 = 0;
  if (SHIBYTE(v52) < 0)
  {
    sub_100005F2C(__p, v51, *(&v51 + 1));
  }

  else
  {
    *__p = v51;
    v35 = v52;
  }

  isThirdPartyMessagingApp = MessageCenterModel::isThirdPartyMessagingApp(__p);
  v36 = xpc_BOOL_create(isThirdPartyMessagingApp);
  if (!v36)
  {
    v36 = xpc_null_create();
  }

  v46 = &v50;
  v47 = "isThirdParty";
  sub_10000F688(&v46, &v36, &v37);
  xpc_release(v37);
  v37 = 0;
  xpc_release(v36);
  v36 = 0;
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p[0]);
  }

  v33 = v50;
  if (v50)
  {
    xpc_retain(v50);
  }

  else
  {
    v33 = xpc_null_create();
  }

  (*(*v17 + 16))(v17, "metricCCMMSFinishRet", &v33);
  xpc_release(v33);
  v33 = 0;
  xpc_release(v50);
  if ((SHIBYTE(v52) & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  operator delete(v51);
  if (v18)
  {
    return;
  }

LABEL_47:
  sub_100004A34(v16);
}

void sub_1002BE0F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1002BE1C4(uint64_t a1)
{
  v2 = time(0);
  v3 = *(a1 + 240);
  return v3 && v2 > *(a1 + 232) + v3;
}

void sub_1002BE20C(uint64_t a1, uint64_t *a2)
{
  v87 = 1;
  v4 = sub_1004D15AC(a1);
  v5 = (*(**(a1 + 216) + 16))(*(a1 + 216), v4);
  v6 = v5;
  if (*a2)
  {
    v84 = 0uLL;
    sub_1004D1B78(a1, &v87, a2, &v84);
    v7 = *(a1 + 192);
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
    if (v7)
    {
      sub_100004A34(v7);
    }

    if (v84)
    {
      v8 = *(&v84 + 1);
      v58 = v84;
      if (*(&v84 + 1))
      {
        atomic_fetch_add_explicit((*(&v84 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v87 = sub_1002BEE70(a1, &v58);
      if (v8)
      {
        sub_100004A34(v8);
      }

      v9 = sub_1002BFAA4(a1);
      v10 = *v6;
      if (v9)
      {
        v11 = v87;
      }

      else
      {
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Retry not possible", buf, 2u);
          v10 = *v6;
        }

        v11 = 1;
        v87 = 1;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v19 = sub_10174D998(v11);
        *buf = 136315138;
        *&buf[4] = v19;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I MMS fetch response: %s", buf, 0xCu);
        v11 = v87;
      }

      if (v11 == 2)
      {
        sub_10000501C(v48, "");
        sub_1002BDC34(a1, 0xC0u, 0, v48);
        if ((v49 & 0x80000000) == 0)
        {
          goto LABEL_75;
        }

        v22 = *v48;
      }

      else
      {
        if (!v11)
        {
          v79 = 0;
          v80 = 0;
          sub_1004D2664(a1, &v79);
          if (v79)
          {
            v20 = *(a1 + 136);
            v21 = sub_1004D15AC(a1);
            v56 = v79;
            v57 = v80;
            if (v80)
            {
              atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (*(a1 + 295) < 0)
            {
              sub_100005F2C(__dst, *(a1 + 272), *(a1 + 280));
            }

            else
            {
              *__dst = *(a1 + 272);
              v55 = *(a1 + 288);
            }

            (*(*v20 + 48))(v20, v21, &v56, "Retrieved", __dst);
            if (SHIBYTE(v55) < 0)
            {
              operator delete(__dst[0]);
            }

            if (v57)
            {
              sub_100004A34(v57);
            }

            memset(buf, 0, sizeof(buf));
            v89 = 0;
            sub_10000501C(buf, "");
            if (sub_1013D8788(v79, "X-Mms-MMS-Version"))
            {
              if (SHIBYTE(v89) < 0)
              {
                sub_100005F2C(&v52, *buf, *&buf[8]);
              }

              else
              {
                v52 = *buf;
                v53 = v89;
              }
            }

            else
            {
              sub_10000501C(&v52, "");
            }

            if (SHIBYTE(v89) < 0)
            {
              operator delete(*buf);
            }

            v89 = v53;
            *buf = v52;
            if (SHIBYTE(v53) < 0)
            {
              sub_100005F2C(v50, *buf, *&buf[8]);
            }

            else
            {
              *v50 = *buf;
              v51 = v89;
            }

            sub_1002BDC34(a1, 0x80u, 0, v50);
            if (SHIBYTE(v51) < 0)
            {
              operator delete(v50[0]);
            }

            if (SHIBYTE(v89) < 0)
            {
              operator delete(*buf);
            }
          }

          if (v80)
          {
            sub_100004A34(v80);
          }

LABEL_75:
          v26 = *(a1 + 136);
          v27 = v87;
          sub_100004AA0(&v44, (a1 + 16));
          (*(*v26 + 16))(v26, v27, &v44);
          v28 = v45;
          if (!v45)
          {
            goto LABEL_77;
          }

          goto LABEL_76;
        }

        sub_10000501C(__p, "");
        sub_1002BDC34(a1, 0x18u, 3u, __p);
        if ((v47 & 0x80000000) == 0)
        {
          goto LABEL_75;
        }

        v22 = __p[0];
      }

      operator delete(v22);
      goto LABEL_75;
    }

    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v16 = sub_1004D149C(a1);
      sub_10176973C(v90, v16);
    }

    if (v87 == 2 || !sub_100BB1A2C(*a2) && (!sub_100BB1C10(*a2) || !(*(**(a1 + 168) + 232))(*(a1 + 168))))
    {
LABEL_114:
      v42 = *(a1 + 136);
      v43 = v87;
      sub_100004AA0(&v59, (a1 + 16));
      (*(*v42 + 16))(v42, v43, &v59);
      v28 = v60;
      if (!v60)
      {
LABEL_77:
        v15 = *(&v84 + 1);
        if (!*(&v84 + 1))
        {
          return;
        }

        goto LABEL_78;
      }

LABEL_76:
      sub_100004A34(v28);
      goto LABEL_77;
    }

    v52 = 0uLL;
    sub_1004D2664(a1, &v52);
    if (v52)
    {
      v17 = *(a1 + 136);
      v18 = sub_1004D15AC(a1);
      v83 = v52;
      if (*(&v52 + 1))
      {
        atomic_fetch_add_explicit((*(&v52 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      if (*(a1 + 295) < 0)
      {
        sub_100005F2C(&v81, *(a1 + 272), *(a1 + 280));
      }

      else
      {
        v81 = *(a1 + 272);
        v82 = *(a1 + 288);
      }

      (*(*v17 + 48))(v17, v18, &v83, "Unrecognized", &v81);
      if (SHIBYTE(v82) < 0)
      {
        operator delete(v81);
      }

      if (*(&v83 + 1))
      {
        sub_100004A34(*(&v83 + 1));
      }
    }

    if (!sub_100BB1C10(*a2))
    {
LABEL_112:
      v87 = 1;
      if (*(&v52 + 1))
      {
        sub_100004A34(*(&v52 + 1));
      }

      goto LABEL_114;
    }

    v79 = 0;
    v80 = 0;
    ServiceMap = Registry::getServiceMap(*(a1 + 120));
    sub_1002BFC84(&v79, ServiceMap);
    if (!v79)
    {
      v29 = *v6;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1017695E4(v29, v30, v31, v32, v33, v34, v35, v36);
      }

      goto LABEL_110;
    }

    memset(buf, 0, sizeof(buf));
    v89 = 0;
    MessageCenterModel::getBundleIdForDefaultCarrierMessagingApp((a1 + 120), buf);
    v78 = 0;
    v24 = xpc_dictionary_create(0, 0, 0);
    v25 = v24;
    if (v24)
    {
      v78 = v24;
    }

    else
    {
      v25 = xpc_null_create();
      v78 = v25;
      if (!v25)
      {
        v37 = xpc_null_create();
        v25 = 0;
        goto LABEL_87;
      }
    }

    if (xpc_get_type(v25) == &_xpc_type_dictionary)
    {
      xpc_retain(v25);
LABEL_88:
      xpc_release(v25);
      sub_1004D15AC(a1);
      v38 = subscriber::simSlotAsInstance();
      v76 = xpc_int64_create(v38);
      if (!v76)
      {
        v76 = xpc_null_create();
      }

      v74 = &v78;
      v75 = "subs_id";
      sub_10000F688(&v74, &v76, &v77);
      xpc_release(v77);
      v77 = 0;
      xpc_release(v76);
      v76 = 0;
      v72 = xpc_int64_create(16);
      if (!v72)
      {
        v72 = xpc_null_create();
      }

      v74 = &v78;
      v75 = "dwErrCode";
      sub_10000F688(&v74, &v72, &v73);
      xpc_release(v73);
      v73 = 0;
      xpc_release(v72);
      v72 = 0;
      object = xpc_int64_create(7);
      if (!object)
      {
        object = xpc_null_create();
      }

      v74 = &v78;
      v75 = "ucState";
      sub_10000F688(&v74, &object, &v71);
      xpc_release(v71);
      v71 = 0;
      xpc_release(object);
      object = 0;
      v68 = xpc_int64_create(229);
      if (!v68)
      {
        v68 = xpc_null_create();
      }

      v74 = &v78;
      v75 = "wResultCode";
      sub_10000F688(&v74, &v68, &v69);
      xpc_release(v69);
      v69 = 0;
      xpc_release(v68);
      v68 = 0;
      if (v89 >= 0)
      {
        v39 = buf;
      }

      else
      {
        v39 = *buf;
      }

      v66 = xpc_string_create(v39);
      if (!v66)
      {
        v66 = xpc_null_create();
      }

      v74 = &v78;
      v75 = "bundleId";
      sub_10000F688(&v74, &v66, &v67);
      xpc_release(v67);
      v67 = 0;
      xpc_release(v66);
      v66 = 0;
      if (SHIBYTE(v89) < 0)
      {
        sub_100005F2C(v62, *buf, *&buf[8]);
      }

      else
      {
        *v62 = *buf;
        v63 = v89;
      }

      isThirdPartyMessagingApp = MessageCenterModel::isThirdPartyMessagingApp(v62);
      v64 = xpc_BOOL_create(isThirdPartyMessagingApp);
      if (!v64)
      {
        v64 = xpc_null_create();
      }

      v74 = &v78;
      v75 = "isThirdParty";
      sub_10000F688(&v74, &v64, &v65);
      xpc_release(v65);
      v65 = 0;
      xpc_release(v64);
      v64 = 0;
      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62[0]);
      }

      v41 = v79;
      sub_100D8FA00(&v61, &v78);
      (*(*v41 + 16))(v41, "metricCCMMSRetState", &v61);
      xpc_release(v61);
      v61 = 0;
      xpc_release(v78);
      if (SHIBYTE(v89) < 0)
      {
        operator delete(*buf);
      }

LABEL_110:
      if (v80)
      {
        sub_100004A34(v80);
      }

      goto LABEL_112;
    }

    v37 = xpc_null_create();
LABEL_87:
    v78 = v37;
    goto LABEL_88;
  }

  v12 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = sub_1004D149C(a1);
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "MMSFetchOperation failed, No http response. MsgId: %u", buf, 8u);
    v13 = v87;
  }

  else
  {
    v13 = 1;
  }

  v14 = *(a1 + 136);
  sub_100004AA0(&v85, (a1 + 16));
  (*(*v14 + 16))(v14, v13, &v85);
  v15 = v86;
  if (v86)
  {
LABEL_78:
    sub_100004A34(v15);
  }
}

void sub_1002BEC34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, xpc_object_t object, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002BEE70(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1004D15AC(a1);
  v5 = (*(**(a1 + 216) + 16))(*(a1 + 216), v4);
  v6 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1004D149C(a1);
    sub_10012314C(*a2, 0, 0, __p);
    if (SHIBYTE(__p[2]) >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 67109378;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = v7;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I MsgId %u public message: %s", &buf, 0x12u);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    v6 = *v5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_1004D149C(a1);
    sub_10012314C(*a2, 1, 0, __p);
    if (SHIBYTE(__p[2]) >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 67109379;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = v9;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2085;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I MsgId %u sensitive message: %{sensitive}s", &buf, 0x12u);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    v6 = *v5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = sub_1004D149C(a1);
    sub_10012345C(*a2, __p);
    v12 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
    LODWORD(buf.__r_.__value_.__l.__data_) = 67109379;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = v11;
    LOWORD(buf.__r_.__value_.__r.__words[1]) = 2085;
    *(&buf.__r_.__value_.__r.__words[1] + 2) = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I MsgId %u Body: %{sensitive}s", &buf, 0x12u);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v13 = sub_1013D8420(*a2, "X-Mms-Retrieve-Status");
  if (v13)
  {
    v14 = v13[17];
    if (v14 != 128)
    {
      memset(__p, 0, 24);
      (*(*v13 + 72))(v13, __p);
      v15 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v40 = SHIBYTE(__p[2]);
        v41 = __p[0];
        v42 = sub_1004D149C(a1);
        v43 = __p;
        LODWORD(buf.__r_.__value_.__l.__data_) = 67109634;
        if (v40 < 0)
        {
          v43 = v41;
        }

        HIDWORD(buf.__r_.__value_.__r.__words[0]) = v14;
        LOWORD(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 2) = v43;
        WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
        HIDWORD(buf.__r_.__value_.__r.__words[2]) = v42;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "MMSFetchOperation fetch / retrieve failed: Status 0x%.2x (%s), MsgId: %u", &buf, 0x18u);
      }

      if (sub_100123770(v14))
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      return v16;
    }
  }

  else
  {
    v17 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v18 = sub_1004D149C(a1);
      LODWORD(__p[0]) = 136315394;
      *(__p + 4) = "X-Mms-Retrieve-Status";
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I No value for header '%s', assuming status OK, MsgId: %u", __p, 0x12u);
    }
  }

  v19 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v20 = sub_1004D149C(a1);
    LODWORD(__p[0]) = 67109120;
    HIDWORD(__p[0]) = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I MMSFetchOperation: fetch / retrieve status OK. MsgId: %u", __p, 8u);
  }

  v83 = 0;
  v84 = 0;
  v21 = sub_1004D15AC(a1);
  sub_1004D1140(a1, v21, &v83);
  v22 = sub_1013D8420(*a2, "From");
  v23 = (*(*v83 + 328))(v83);
  if (v22)
  {
    v24 = v23;
    if (v23 != -1)
    {
      v25 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v26 = sub_1004D149C(a1);
        LODWORD(__p[0]) = 67109120;
        HIDWORD(__p[0]) = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I MMSFetchOperation: from header & number prefix requires international symbol, MsgId: %u", __p, 8u);
      }

      memset(&buf, 0, sizeof(buf));
      v101 = 0;
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
      *v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      memset(__p, 0, sizeof(__p));
      sub_10000D518(__p);
      std::ostream::operator<<();
      v80 = 0;
      v81 = 0;
      v82 = 0;
      sub_10000D684(__p, &v80);
      if (!(*(*v22 + 72))(v22, &buf))
      {
        goto LABEL_109;
      }

      if (v82 >= 0)
      {
        v27 = HIBYTE(v82);
      }

      else
      {
        v27 = v81;
      }

      std::string::basic_string(&v85, &buf, 0, v27, v78);
      v28 = SHIBYTE(v85.__r_.__value_.__r.__words[2]);
      if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v85.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v85.__r_.__value_.__l.__size_;
      }

      v30 = HIBYTE(v82);
      if (v82 < 0)
      {
        v30 = v81;
      }

      if (size == v30 && ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v31 = &v85) : (v31 = v85.__r_.__value_.__r.__words[0]), v82 >= 0 ? (v32 = &v80) : (v32 = v80), !memcmp(v31, v32, size)))
      {
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v35 = buf.__r_.__value_.__l.__size_;
        }

        v36 = p_buf + v35;
        if (v35 >= 1)
        {
          v37 = v35;
          v38 = p_buf;
          do
          {
            v39 = memchr(v38, 64, v37);
            if (!v39)
            {
              break;
            }

            if (*v39 == 64)
            {
              if (v39 != v36 && v39 - p_buf != -1)
              {
                goto LABEL_54;
              }

              break;
            }

            v38 = (v39 + 1);
            v37 = v36 - v38;
          }

          while (v36 - v38 >= 1);
          if (v35 >= 10)
          {
            v44 = p_buf;
            do
            {
              v45 = memchr(v44, 47, v35 - 9);
              if (!v45)
              {
                break;
              }

              if (*v45 == 0x4C503D455059542FLL && v45[4] == 20045)
              {
                goto LABEL_83;
              }

              v44 = (v45 + 1);
              v35 = v36 - v44;
            }

            while (v36 - v44 > 9);
          }
        }

        v45 = v36;
LABEL_83:
        v33 = v45 != v36 && v45 - p_buf != -1;
        if ((v28 & 0x80000000) == 0)
        {
LABEL_55:
          if (!v33)
          {
            goto LABEL_109;
          }

          goto LABEL_91;
        }
      }

      else
      {
LABEL_54:
        v33 = 0;
        if ((v28 & 0x80000000) == 0)
        {
          goto LABEL_55;
        }
      }

      operator delete(v85.__r_.__value_.__l.__data_);
      if (!v33)
      {
LABEL_109:
        if (SHIBYTE(v82) < 0)
        {
          operator delete(v80);
        }

        if (SHIBYTE(v90) < 0)
        {
          operator delete(v89[1]);
        }

        std::locale::~locale(&__p[2]);
        std::ostream::~ostream();
        std::ios::~ios();
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        goto LABEL_115;
      }

LABEL_91:
      sub_10000501C(&v85, "");
      sub_1002BFD48(&__p[1], &v85);
      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      v48 = sub_10000C030(__p, "+", 1);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v49 = &buf;
      }

      else
      {
        v49 = buf.__r_.__value_.__r.__words[0];
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v50 = buf.__r_.__value_.__l.__size_;
      }

      sub_10000C030(v48, v49, v50);
      v51 = *a2;
      sub_10000D684(__p, &v85);
      if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v52 = &v85;
      }

      else
      {
        v52 = v85.__r_.__value_.__r.__words[0];
      }

      sub_100122FF4(v51, v52);
      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      v53 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        sub_10000D684(__p, v78);
        v54 = v79;
        v55 = v78[0];
        v56 = sub_1004D149C(a1);
        v57 = v78;
        LODWORD(v85.__r_.__value_.__l.__data_) = 67109634;
        if (v54 < 0)
        {
          v57 = v55;
        }

        HIDWORD(v85.__r_.__value_.__r.__words[0]) = v24;
        LOWORD(v85.__r_.__value_.__r.__words[1]) = 2080;
        *(&v85.__r_.__value_.__r.__words[1] + 2) = v57;
        WORD1(v85.__r_.__value_.__r.__words[2]) = 1024;
        HIDWORD(v85.__r_.__value_.__r.__words[2]) = v56;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I Prepended '+' to address for prefix %u to form address [%s], MsgId: %u", &v85, 0x18u);
        if (v79 < 0)
        {
          operator delete(v78[0]);
        }
      }

      goto LABEL_109;
    }
  }

LABEL_115:
  if (sub_1013D87F0(*a2, "X-Mms-Transaction-ID"))
  {
    v58 = a2[1];
    v77[0] = *a2;
    v77[1] = v58;
    if (v58)
    {
      atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1002BCA64(a1, v77);
    if (v58)
    {
      sub_100004A34(v58);
    }
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 120));
  v60 = ServiceMap;
  v61 = "27MessageCenterModelInterface";
  if (("27MessageCenterModelInterface" & 0x8000000000000000) != 0)
  {
    v62 = ("27MessageCenterModelInterface" & 0x7FFFFFFFFFFFFFFFLL);
    v63 = 5381;
    do
    {
      v61 = v63;
      v64 = *v62++;
      v63 = (33 * v63) ^ v64;
    }

    while (v64);
  }

  std::mutex::lock(ServiceMap);
  __p[0] = v61;
  v65 = sub_100009510(&v60[1].__m_.__sig, __p);
  if (v65)
  {
    v67 = v65[3];
    v66 = v65[4];
    if (v66)
    {
      atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v60);
      atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v66);
      v68 = 0;
      if (!v67)
      {
        goto LABEL_135;
      }

LABEL_129:
      v69 = *v5;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v70 = sub_1004D149C(a1);
        LODWORD(__p[0]) = 67109120;
        HIDWORD(__p[0]) = v70;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "#I MMSFetchOperation Succeeded: Telling MCM to Receive from network. MsgId: %u", __p, 8u);
      }

      v71 = sub_1004D15AC(a1);
      v72 = a2[1];
      v75 = *a2;
      v76 = v72;
      if (v72)
      {
        atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v73 = sub_1004D149C(a1);
      (*(*v67 + 280))(v67, v71, &v75, v73);
      if (v76)
      {
        sub_100004A34(v76);
      }

      goto LABEL_135;
    }
  }

  else
  {
    v67 = 0;
  }

  std::mutex::unlock(v60);
  v66 = 0;
  v68 = 1;
  if (v67)
  {
    goto LABEL_129;
  }

LABEL_135:
  if ((v68 & 1) == 0)
  {
    sub_100004A34(v66);
  }

  if (v84)
  {
    sub_100004A34(v84);
  }

  return 0;
}

void sub_1002BF97C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  std::ios::~ios();
  if (*(v51 - 105) < 0)
  {
    operator delete(*(v51 - 128));
  }

  if (a26)
  {
    sub_100004A34(a26);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1002BFAA4(uint64_t a1)
{
  result = sub_1004D158C(a1);
  if (result)
  {
    v3 = time(0);
    v4 = *(a1 + 240);
    return !v4 || v3 <= *(a1 + 232) + v4;
  }

  return result;
}

void sub_1002BFBA0(uint64_t a1, os_log_t *a2, os_signpost_id_t *a3)
{
  v3 = *a3;
  if (*a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *a2;
    if (os_signpost_enabled(*a2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v3, "MobileTerminatedMMS", "", v5, 2u);
    }
  }
}

uint64_t sub_1002BFC18(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1002BFC84(uint64_t *__return_ptr a1@<X8>, std::mutex *this@<X0>)
{
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(this);
  v11 = v4;
  v8 = sub_100009510(&this[1].__m_.__sig, &v11);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  std::mutex::unlock(this);
  *a1 = v10;
  a1[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v9);
  }
}

void sub_1002BFD48(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v4 = *a2;
  *(a1 + 80) = *(a2 + 2);
  *(a1 + 64) = v4;
  *(a2 + 23) = 0;
  *a2 = 0;

  sub_10000BD98(a1);
}

void sub_1002BFDA8(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x12u);
}

void sub_1002BFDC4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

void sub_1002BFDE4(Registry **a1@<X0>, void *a2@<X8>)
{
  v4 = objc_autoreleasePoolPush();
  ServiceMap = Registry::getServiceMap(*a1);
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  v17 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v17);
  if (!v11)
  {
    v13 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (!v13)
  {
LABEL_14:
    if (objc_opt_class())
    {
      operator new();
    }

    goto LABEL_16;
  }

LABEL_10:
  if (!(*(*v13 + 88))(v13))
  {
    goto LABEL_14;
  }

  if ((atomic_load_explicit(&qword_101FBA158, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA158))
  {
    ctu::OsLogLogger::OsLogLogger(&qword_101FBA150, kCtLoggingSystemName, kCALL_TELEPHONY_CONTROLLER_LOG_DOMAIN);
    __cxa_guard_release(&qword_101FBA158);
  }

  v15 = qword_101FBA150;
  if (os_log_type_enabled(qword_101FBA150, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#N NonUI build, not instantiating TelephonyController", v16, 2u);
  }

LABEL_16:
  *a2 = 0;
  a2[1] = 0;
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_1002C0020(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_101FBA158);
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(a1);
}

void sub_1002C0330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, dispatch_object_t object)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (object)
  {
    dispatch_release(object);
  }

  operator delete();
}

void sub_1002C03E8(uint64_t a1)
{
  [*(a1 + 32) registerForRestProperties_sync];
  v2 = [*(a1 + 32) callObserver];
  [v2 setDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 8)];
}

void sub_1002C0640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002C0694(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/current_calls");
  v5[0] = off_101E39288;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1002C0748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002C0E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, xpc_object_t object, xpc_object_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C10DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  *v4 = 0;
  if (v3)
  {
    if (os_log_type_enabled(**(*(a1 + 32) + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017697EC();
    }
  }

  else
  {
    *v4 = 1;
  }
}

char *sub_1002C115C(char *result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 5) = *(a2 + 40);
  *(result + 6) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    return sub_100005F2C(result + 56, *(a2 + 56), *(a2 + 64));
  }

  v3 = *(a2 + 56);
  *(result + 9) = *(a2 + 72);
  *(result + 56) = v3;
  return result;
}

void sub_1002C11C0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C11D8(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

void sub_1002C157C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, xpc_object_t object, uint64_t a21, xpc_object_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002C165C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(**(*(a1 + 32) + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017698DC();
  }
}

void sub_1002C1A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, xpc_object_t object, uint64_t a21, xpc_object_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002C1B04(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(**(*(a1 + 32) + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101769954();
  }
}

void sub_1002C2024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, xpc_object_t a28, uint64_t a29, uint64_t a30, uint64_t a31, xpc_object_t object)
{
  if ((v35 & 1) == 0)
  {
    sub_100004A34(v33);
  }

  *(v36 - 128) = &a17;
  sub_1000B2DB4((v36 - 128));
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002C2228(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E390A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002C22B4(uint64_t a1)
{

  operator delete();
}

id sub_1002C2368(uint64_t a1, void *a2)
{
  *a2 = off_101E390F8;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1002C23B8(id *a1)
{

  operator delete(a1);
}

void sub_1002C23F4(uint64_t a1, xpc_object_t *a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  object = xpc_null_create();
  sub_1001AA600(&object, a2);
  v8[0] = 0;
  v9 = v6;
  v10 = v5;
  v7 = objc_autoreleasePoolPush();
  [*(a1 + 8) handleUnexpectedMODial:&object responder:v8];
  objc_autoreleasePoolPop(v7);
  sub_1000C05C4(v8);
  xpc_release(object);
}

void sub_1002C2480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  sub_1000C05C4(&a9);
  xpc_release(object);
  _Unwind_Resume(a1);
}

uint64_t sub_1002C24BC(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E39168))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002C2508(uint64_t a1)
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

void sub_1002C25B4(uint64_t a1)
{

  operator delete();
}

id sub_1002C2668(uint64_t a1, void *a2)
{
  *a2 = off_101E39188;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1002C26B8(id *a1)
{

  operator delete(a1);
}

void sub_1002C26F4(uint64_t a1, xpc_object_t *a2)
{
  object = xpc_null_create();
  sub_1001AA600(&object, a2);
  v4 = objc_autoreleasePoolPush();
  [*(a1 + 8) handleUnexpectedAnswer:&object];
  objc_autoreleasePoolPop(v4);
  xpc_release(object);
}

uint64_t sub_1002C2778(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E391E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1002C27F0(uint64_t a1)
{

  operator delete();
}

id sub_1002C28A4(uint64_t a1, void *a2)
{
  *a2 = off_101E39208;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1002C28F4(id *a1)
{

  operator delete(a1);
}

void sub_1002C2930(uint64_t a1, xpc_object_t *a2)
{
  object = xpc_null_create();
  sub_1001AA600(&object, a2);
  v4 = objc_autoreleasePoolPush();
  [*(a1 + 8) handleUnexpectedHold:&object];
  objc_autoreleasePoolPop(v4);
  xpc_release(object);
}

uint64_t sub_1002C29B4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E39268))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002C2A70(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E39288;
  a2[1] = v2;
  return result;
}

uint64_t sub_1002C2AA4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1002C2B10(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E39308;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002C2B70(uint64_t a1, char *a2)
{
  *a1 = off_101E39358;
  sub_10000501C((a1 + 8), a2);
  sub_10000501C(&v7, a2);
  v4 = std::string::append(&v7, ".tmp", 4uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  *(a1 + 48) = *(&v4->__r_.__value_.__l + 2);
  *(a1 + 32) = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1002C2C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 31) < 0)
  {
    operator delete(*v16);
  }

  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void sub_1002C2C60(uint64_t a1)
{
  *a1 = off_101E39358;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  TMKXPCServer.shutdown()();
}

void sub_1002C2CD4(uint64_t a1)
{
  sub_1002C2C60(a1);

  operator delete();
}

BOOL sub_1002C2D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1002C2D6C(a1, a2, a3, 0);
  result = 0;
  if (v5)
  {
    v7 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v7 = v7->__pn_.__r_.__value_.__r.__words[0];
    }

    v8 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v8 = v8->__pn_.__r_.__value_.__r.__words[0];
    }

    rename(v7, v8, v4);
    return v9 == 0;
  }

  return result;
}

BOOL sub_1002C2D6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(a2 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  v9 = *(a3 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a3 + 8);
  }

  if ((v8 + v9 + 1) >= 0x200)
  {
    __TUAssertTrigger("newKey.size() + newValue.size() + 1 < kMaxLineSize");
  }

  bzero(v89, 0x248uLL);
  v10 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    v10 = *v10;
  }

  sub_1002C38C0(v89, v10, 8);
  v53 = v89;
  if (*(&v89[4] + *(v89[0] - 24)))
  {
    v46 = 0;
    goto LABEL_79;
  }

  bzero(v87, 0x248uLL);
  v11 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v11 = *v11;
  }

  sub_1002C38C0(v87, v11, 48);
  v52 = v87;
  if (*(&v88[2] + *(v87[0] - 24)))
  {
    v46 = 0;
    goto LABEL_78;
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  *__s = 0u;
  v56 = 0u;
  v12 = (v89 + *(v89[0] - 24));
  if (v12->__rdstate_)
  {
    goto LABEL_62;
  }

  v48 = 0;
  do
  {
    std::ios_base::getloc(v12);
    v13 = std::locale::use_facet(&v51, &std::ctype<char>::id);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v51);
    std::istream::getline();
    memset(&v51, 0, sizeof(v51));
    sub_10000501C(&v51, __s);
    v14 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v51.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      goto LABEL_58;
    }

    v16 = (v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v51 : v51.__r_.__value_.__r.__words[0];
    v17 = memchr(v16, 61, size);
    if (!v17)
    {
      goto LABEL_58;
    }

    v18 = v17 - v16;
    if (v18 == -1)
    {
      goto LABEL_58;
    }

    memset(&v50, 0, sizeof(v50));
    std::string::basic_string(&v50, &v51, 0, v18, &v49);
    memset(&v49, 0, sizeof(v49));
    std::string::basic_string(&v49, &v51, v18 + 1, 0xFFFFFFFFFFFFFFFFLL, &v54);
    v19 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    v20 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    v21 = v50.__r_.__value_.__l.__size_;
    v22 = v50.__r_.__value_.__r.__words[0];
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = v50.__r_.__value_.__l.__size_;
    }

    v24 = *(a2 + 23);
    v25 = v24;
    if ((v24 & 0x80u) != 0)
    {
      v24 = *(a2 + 8);
    }

    if (v23 != v24)
    {
      goto LABEL_40;
    }

    v26 = (v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v50 : v50.__r_.__value_.__r.__words[0];
    v27 = v25 >= 0 ? a2 : *a2;
    if (memcmp(v26, v27, v23))
    {
      goto LABEL_40;
    }

    if ((a4 & 1) == 0)
    {
      std::string::operator=(&v49, a3);
      v19 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
      v21 = v50.__r_.__value_.__l.__size_;
      v22 = v50.__r_.__value_.__r.__words[0];
      v48 = 1;
      v20 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
LABEL_40:
      if (v20 >= 0)
      {
        v28 = &v50;
      }

      else
      {
        v28 = v22;
      }

      if (v20 >= 0)
      {
        v29 = v19;
      }

      else
      {
        v29 = v21;
      }

      v30 = sub_10000C030(v88, v28, v29);
      v31 = sub_10000C030(v30, "=", 1);
      if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = &v49;
      }

      else
      {
        v32 = v49.__r_.__value_.__r.__words[0];
      }

      if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v33 = v49.__r_.__value_.__l.__size_;
      }

      v34 = sub_10000C030(v31, v32, v33);
      std::ios_base::getloc((v34 + *(*v34 - 24)));
      v35 = std::locale::use_facet(&v54, &std::ctype<char>::id);
      (v35->__vftable[2].~facet_0)(v35, 10);
      std::locale::~locale(&v54);
      std::ostream::put();
      std::ostream::flush();
      goto LABEL_53;
    }

    v48 = 1;
LABEL_53:
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    v14 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
LABEL_58:
    if (v14 < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    v12 = (v89 + *(v89[0] - 24));
  }

  while (!v12->__rdstate_);
  if ((v48 & 1) == 0)
  {
LABEL_62:
    v36 = *(a2 + 23);
    if (v36 >= 0)
    {
      v37 = a2;
    }

    else
    {
      v37 = *a2;
    }

    if (v36 >= 0)
    {
      v38 = *(a2 + 23);
    }

    else
    {
      v38 = *(a2 + 8);
    }

    v39 = sub_10000C030(v88, v37, v38);
    v40 = sub_10000C030(v39, "=", 1);
    v41 = *(a3 + 23);
    if (v41 >= 0)
    {
      v42 = a3;
    }

    else
    {
      v42 = *a3;
    }

    if (v41 >= 0)
    {
      v43 = *(a3 + 23);
    }

    else
    {
      v43 = *(a3 + 8);
    }

    v44 = sub_10000C030(v40, v42, v43);
    std::ios_base::getloc((v44 + *(*v44 - 24)));
    v45 = std::locale::use_facet(&v51, &std::ctype<char>::id);
    (v45->__vftable[2].~facet_0)(v45, 10);
    std::locale::~locale(&v51);
    std::ostream::put();
    std::ostream::flush();
  }

  v46 = (*(&v88[2] + *(v87[0] - 24)) & 1) == 0;
LABEL_78:
  sub_1002C3A38(&v52);
  v87[0] = off_101E393E8;
  v88[52] = off_101E39438;
  v88[0] = off_101E39410;
  std::filebuf::~filebuf();
  std::iostream::~basic_iostream();
  std::ios::~ios();
LABEL_79:
  sub_1002C3A38(&v53);
  v89[0] = off_101E393E8;
  v89[54] = off_101E39438;
  v89[2] = off_101E39410;
  std::filebuf::~filebuf();
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return v46;
}

void sub_1002C33F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *__p, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__pa, uint64_t a15, uint64_t a16, ...)
{
  va_start(va2, a16);
  va_start(va1, a16);
  va_start(va, a16);
  v17.__locale_ = va_arg(va1, std::locale::__imp *);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  va_copy(va2, va1);
  v21 = va_arg(va2, void *);
  std::locale::~locale(va);
  sub_1002C3A38(va1);
  sub_1002C3A94(&STACK[0x270]);
  sub_1002C3A38(va2);
  sub_1002C3A94(&STACK[0x4B8]);
  _Unwind_Resume(a1);
}

uint64_t sub_1002C34A8(uint64_t a1, uint64_t **a2)
{
  v3 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    v3 = *v3;
  }

  bzero(v52, 0x248uLL);
  sub_1002C38C0(v52, v3, 8);
  v17 = v52;
  if (*(&v52[4] + *(v52[0] - 24)))
  {
LABEL_26:
    v5 = 0;
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
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
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    *__s = 0u;
    v21 = 0u;
    for (i = (v52 + *(v52[0] - 24)); !i->__rdstate_; i = (v52 + *(v52[0] - 24)))
    {
      std::ios_base::getloc(i);
      v6 = std::locale::use_facet(&v16, &std::ctype<char>::id);
      (v6->__vftable[2].~facet_0)(v6, 10);
      std::locale::~locale(&v16);
      std::istream::getline();
      if ((*(&v52[4] + *(v52[0] - 24)) & 2) != 0)
      {
        break;
      }

      memset(&v16, 0, sizeof(v16));
      sub_10000501C(&v16, __s);
      v7 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v16.__r_.__value_.__l.__size_;
      }

      if (!size || ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v9 = &v16) : (v9 = v16.__r_.__value_.__r.__words[0]), (v10 = memchr(v9, 61, size)) == 0 || (v11 = v10 - v9, v11 == -1)))
      {
        if (v7 < 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }

        goto LABEL_26;
      }

      memset(&v15, 0, sizeof(v15));
      std::string::basic_string(&v15, &v16, 0, v11, &__p);
      memset(&__p, 0, sizeof(__p));
      std::string::basic_string(&__p, &v16, v11 + 1, 0xFFFFFFFFFFFFFFFFLL, &v19);
      v19 = &v15;
      v12 = sub_100173F08(a2, &v15, &unk_101802C98, &v19, &v18);
      std::string::operator=((v12 + 7), &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }
    }

    v5 = 1;
  }

  sub_1002C3A38(&v17);
  v52[0] = off_101E393E8;
  v52[54] = off_101E39438;
  v52[2] = off_101E39410;
  std::filebuf::~filebuf();
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return v5;
}

uint64_t sub_1002C38C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 480) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = off_101E39410;
  *a1 = &off_101E39528;
  *(a1 + 432) = &off_101E39550;
  std::ios_base::init((a1 + 432), (a1 + 24));
  *(a1 + 568) = 0;
  *(a1 + 576) = -1;
  *a1 = off_101E393E8;
  *(a1 + 432) = off_101E39438;
  *(a1 + 16) = off_101E39410;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1002C39F8(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void **sub_1002C3A38(void **a1)
{
  v2 = *a1;
  if (!std::filebuf::close())
  {
    std::ios_base::clear((v2 + *(*v2 - 24)), *(v2 + *(*v2 - 24) + 32) | 4);
  }

  return a1;
}

void *sub_1002C3A94(void *a1)
{
  *a1 = off_101E393E8;
  a1[54] = off_101E39438;
  a1[2] = off_101E39410;
  std::filebuf::~filebuf();
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

BOOL sub_1002C3B38(uint64_t a1, uint64_t a2)
{
  sub_10000501C(__p, "");
  v4 = sub_1002C2D6C(a1, a2, __p, 1);
  v6 = v4;
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v7 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v7 = v7->__pn_.__r_.__value_.__r.__words[0];
  }

  v8 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    v8 = v8->__pn_.__r_.__value_.__r.__words[0];
  }

  rename(v7, v8, v5);
  return v9 == 0;
}

void sub_1002C3BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1002C3BF4(uint64_t a1)
{
  v1 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    v1 = *v1;
  }

  bzero(v5, 0x248uLL);
  sub_1002C38C0(v5, v1, 48);
  v4 = v5;
  v2 = (*(&v5[4] + *(v5[0] - 24)) & 1) == 0;
  sub_1002C3A38(&v4);
  v5[0] = off_101E393E8;
  v5[54] = off_101E39438;
  v5[2] = off_101E39410;
  std::filebuf::~filebuf();
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return v2;
}

uint64_t sub_1002C3D34(void *a1)
{
  *(a1 - 2) = off_101E393E8;
  a1[52] = off_101E39438;
  *a1 = off_101E39410;
  std::filebuf::~filebuf();
  std::iostream::~basic_iostream();

  return std::ios::~ios();
}

uint64_t sub_1002C3DD8(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_101E393E8;
  v1[54] = off_101E39438;
  v1[2] = off_101E39410;
  std::filebuf::~filebuf();
  std::iostream::~basic_iostream();

  return std::ios::~ios();
}

void sub_1002C3E98(void *a1)
{
  *a1 = off_101E393E8;
  a1[54] = off_101E39438;
  a1[2] = off_101E39410;
  std::filebuf::~filebuf();
  std::iostream::~basic_iostream();
  std::ios::~ios();

  operator delete();
}

void sub_1002C3F5C(void *a1)
{
  *(a1 - 2) = off_101E393E8;
  a1[52] = off_101E39438;
  *a1 = off_101E39410;
  std::filebuf::~filebuf();
  std::iostream::~basic_iostream();
  std::ios::~ios();

  operator delete();
}

void sub_1002C4018(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_101E393E8;
  v1[54] = off_101E39438;
  v1[2] = off_101E39410;
  std::filebuf::~filebuf();
  std::iostream::~basic_iostream();
  std::ios::~ios();

  operator delete();
}

uint64_t *sub_1002C40F0(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_10007D840(a1, a2);
  }

  return a1;
}

void sub_1002C41AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002C41C8(__CFDictionary *a1, void *cf, uint64_t a3)
{
  key = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = a3;
  if (a3)
  {
    CFRetain(a3);
    if (key)
    {
      CFDictionaryAddValue(a1, key, a3);
      a3 = 1;
    }

    else
    {
      a3 = 0;
    }
  }

  sub_100DA3324(&v6);
  sub_100DA3324(&key);
  return a3;
}

void sub_1002C4248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100DA3324(&a9);
  sub_100DA3324(va);
  _Unwind_Resume(a1);
}

void sub_1002C426C(void *a1, uint64_t *a2, NSObject **a3)
{
  ctu::OsLogContext::OsLogContext(&v7, kCtLoggingSystemName, "DATA.nwpolicySession");
  sub_1002C436C(a1 + 1, a3, &v7);
  ctu::OsLogContext::~OsLogContext(&v7);
  *a1 = &off_101E395D8;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1002C43F8();
}

void sub_1002C432C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v12)
  {
    sub_100004A34(v12);
  }

  DataConnectionAgentPolicySessionInterface::~DataConnectionAgentPolicySessionInterface(v11);
  ctu::OsLogLogger::~OsLogLogger((v11 + 5));
  sub_1000C0544(v11 + 1);
  _Unwind_Resume(a1);
}

void *sub_1002C436C(void *a1, NSObject **a2, OsLogContext *a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  a1[2] = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger(v7, a3);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  return a1;
}

void sub_1002C43D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

void sub_1002C44B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  if (v2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C4590(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  if (v2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

DataConnectionAgentPolicySessionInterface *sub_1002C45B8(DataConnectionAgentPolicySessionInterface *this)
{
  *this = &off_101E395D8;
  v2 = *(this + 7);
  if (v2)
  {
    sub_100004A34(v2);
  }

  DataConnectionAgentPolicySessionInterface::~DataConnectionAgentPolicySessionInterface(this);
  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
  return this;
}

void sub_1002C4620(DataConnectionAgentPolicySessionInterface *a1)
{
  sub_1002C45B8(a1);

  operator delete();
}

uint64_t sub_1002C4658@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 56);
  *a2 = *(result + 48);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_1002C4674(void *a1, void *a2, NSObject **a3)
{
  ctu::OsLogContext::OsLogContext(&v8, kCtLoggingSystemName, "DATA.nwpolicySession");
  sub_1002C4730(a1 + 1, a3, &v8);
  ctu::OsLogContext::~OsLogContext(&v8);
  *a1 = off_101E39600;
  v6 = a2[1];
  a1[6] = *a2;
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  a1[8] = 0;
  return a1;
}

void *sub_1002C4730(void *a1, NSObject **a2, OsLogContext *a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  a1[2] = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger(v7, a3);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  return a1;
}

void sub_1002C4798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_1002C47BC(uint64_t a1)
{
  *a1 = off_101E39600;

  v2 = *(a1 + 56);
  if (v2)
  {
    sub_100004A34(v2);
  }

  DataConnectionAgentPolicySessionPrivateInterface::~DataConnectionAgentPolicySessionPrivateInterface(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1002C482C(uint64_t a1)
{
  sub_1002C47BC(a1);

  operator delete();
}

id sub_1002C4864(uint64_t a1)
{
  if (!*(a1 + 64))
  {
    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I initializing common CCNEPolicySession...", buf, 2u);
    }

    v3 = objc_alloc_init(CCNEPolicySession);
    v4 = *(a1 + 64);
    *(a1 + 64) = v3;

    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I common CCNEPolicySession initialized", v8, 2u);
    }
  }

  v6 = *(a1 + 64);

  return v6;
}

void sub_1002C49B8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1002C4A8C);
  __cxa_rethrow();
}

void sub_1002C49F8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002C4A4C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002C4A8C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002C4B38(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1002C4C0C);
  __cxa_rethrow();
}

void sub_1002C4B78(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002C4BCC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002C4C0C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1002C4C38(uint64_t a1)
{
  v21 = 0;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    v21 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    v21 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  v21 = v4;
LABEL_9:
  xpc_release(v3);
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  v6 = xpc_string_create(v5);
  v20 = v6;
  if (!v6)
  {
    v6 = xpc_null_create();
    v20 = v6;
  }

  sub_10009F704(&v21, @"kCTIndicatorsStateDumpFolderPrefix", &v20);
  xpc_release(v6);
  v20 = 0;
  if (*(a1 + 47) >= 0)
  {
    v7 = (a1 + 24);
  }

  else
  {
    v7 = *(a1 + 24);
  }

  v8 = xpc_string_create(v7);
  v19 = v8;
  if (!v8)
  {
    v8 = xpc_null_create();
    v19 = v8;
  }

  sub_10009F704(&v21, @"kCTIndicatorsStateSnapshotFolderPath", &v19);
  xpc_release(v8);
  v19 = 0;
  v9 = xpc_BOOL_create(*(a1 + 48));
  v18 = v9;
  if (!v9)
  {
    v9 = xpc_null_create();
    v18 = v9;
  }

  sub_10009F704(&v21, @"kCTIndicatorsStateDumpLogFilter", &v18);
  xpc_release(v9);
  v18 = 0;
  v12 = *(a1 + 56);
  v11 = a1 + 56;
  v10 = v12;
  if (*(v11 + 23) >= 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  v14 = xpc_string_create(v13);
  v17 = v14;
  if (!v14)
  {
    v14 = xpc_null_create();
    v17 = v14;
  }

  sub_10009F704(&v21, @"kCTIndicatorsStateDumpReason", &v17);
  xpc_release(v14);
  v16 = v21;
  v17 = 0;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    v16 = xpc_null_create();
  }

  object = xpc_null_create();
  sub_10002A37C(103, &v16, &object);
  xpc_release(object);
  xpc_release(v16);
  xpc_release(v21);
}

void sub_1002C4E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  xpc_release(object);
  xpc_release(a11);
  xpc_release(*(v14 - 24));
  _Unwind_Resume(a1);
}

void sub_1002C4F28(uint64_t a1)
{
  v21 = 0;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    v21 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    v21 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  v21 = v4;
LABEL_9:
  xpc_release(v3);
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  v6 = xpc_string_create(v5);
  v20 = v6;
  if (!v6)
  {
    v6 = xpc_null_create();
    v20 = v6;
  }

  sub_10009F704(&v21, @"kCTIndicatorsStateDumpFolderPrefix", &v20);
  xpc_release(v6);
  v20 = 0;
  if (*(a1 + 47) >= 0)
  {
    v7 = (a1 + 24);
  }

  else
  {
    v7 = *(a1 + 24);
  }

  v8 = xpc_string_create(v7);
  v19 = v8;
  if (!v8)
  {
    v8 = xpc_null_create();
    v19 = v8;
  }

  sub_10009F704(&v21, @"kCTIndicatorsStateSnapshotFolderPath", &v19);
  xpc_release(v8);
  v19 = 0;
  v9 = xpc_BOOL_create(*(a1 + 48));
  v18 = v9;
  if (!v9)
  {
    v9 = xpc_null_create();
    v18 = v9;
  }

  sub_10009F704(&v21, @"kCTIndicatorsStateDumpLogFilter", &v18);
  xpc_release(v9);
  v18 = 0;
  v12 = *(a1 + 56);
  v11 = a1 + 56;
  v10 = v12;
  if (*(v11 + 23) >= 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  v14 = xpc_string_create(v13);
  v17 = v14;
  if (!v14)
  {
    v14 = xpc_null_create();
    v17 = v14;
  }

  sub_10009F704(&v21, @"kCTIndicatorsStateDumpReason", &v17);
  xpc_release(v14);
  v16 = v21;
  v17 = 0;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    v16 = xpc_null_create();
  }

  object = xpc_null_create();
  sub_10002A37C(104, &v16, &object);
  xpc_release(object);
  xpc_release(v16);
  xpc_release(v21);
}

void sub_1002C5154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  xpc_release(object);
  xpc_release(a11);
  xpc_release(*(v14 - 24));
  _Unwind_Resume(a1);
}

void sub_1002C5218(uint64_t a1)
{
  memset(&__dst, 0, sizeof(__dst));
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a1, *(a1 + 8));
  }

  else
  {
    __dst = *a1;
  }

  std::string::append(&__dst, " (State Dump Skipped!)", 0x16uLL);
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  *v7 = 0u;
  sub_10031538C(&v6);
  *__p = 0u;
  v5 = 0u;
  v3 = 0u;
  memset(v2, 0, sizeof(v2));
  sub_1003154F8(&v6, &__str);
  std::string::operator=(v2, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  std::string::operator=(&__p[1], &__dst);
  LOBYTE(__p[0]) = 1;
  sub_1000167D4(&v2[24], "/var/wireless/Library/Logs/CrashReporter/Baseband/", 0x32uLL);
  usleep(0x3D090u);
  sub_1002C4C38(v2);
  usleep(0x3D090u);
  sub_1002C4F28(v2);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v3) < 0)
  {
    operator delete(*&v2[24]);
  }

  if ((v2[23] & 0x80000000) != 0)
  {
    operator delete(*v2);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(*(&v8 + 1));
  }

  if (SBYTE7(v8) < 0)
  {
    operator delete(v7[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_1002C538C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10014476C(&a16);
  sub_1001454F4(&a26);
  if (*(v26 - 25) < 0)
  {
    operator delete(*(v26 - 48));
  }

  _Unwind_Resume(a1);
}

void C2KRadioModule::sendEnterLowPowerNotification(C2KRadioModule *this)
{
  v2 = xpc_null_create();
  object = xpc_null_create();
  sub_10002A37C(100, &v2, &object);
  xpc_release(object);
  xpc_release(v2);
}

void sub_1002C5440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

void C2KRadioModule::sendEnteredLowPowerNotification(C2KRadioModule *this)
{
  v2 = xpc_null_create();
  object = xpc_null_create();
  sub_10002A37C(101, &v2, &object);
  xpc_release(object);
  xpc_release(v2);
}

void sub_1002C54C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

void sub_1002C54F4()
{
  v1 = xpc_null_create();
  object = xpc_null_create();
  sub_10002A37C(108, &v1, &object);
  xpc_release(object);
  xpc_release(v1);
}

void sub_1002C5550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

void sub_1002C557C()
{
  v1 = xpc_null_create();
  object = xpc_null_create();
  sub_10002A37C(55, &v1, &object);
  xpc_release(object);
  xpc_release(v1);
}

void sub_1002C55D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

void sub_1002C5604(int a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    object = v2;
  }

  else
  {
    v3 = xpc_null_create();
    object = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  object = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(a1);
  v8 = v5;
  if (!v5)
  {
    v5 = xpc_null_create();
    v8 = v5;
  }

  sub_10009F704(&object, @"kCTRadioVoiceLinkQualityKey", &v8);
  xpc_release(v5);
  v7 = object;
  v8 = 0;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v7 = xpc_null_create();
  }

  v6 = xpc_null_create();
  sub_10002A37C(120, &v7, &v6);
  xpc_release(v6);
  xpc_release(v7);
  xpc_release(object);
}

void sub_1002C5738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10, uint64_t a11, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a10);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_1002C579C(unsigned int a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    object = v2;
  }

  else
  {
    v3 = xpc_null_create();
    object = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  object = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(a1);
  v8 = v5;
  if (!v5)
  {
    v5 = xpc_null_create();
    v8 = v5;
  }

  sub_10009F704(&object, @"kCTRadioStateKey", &v8);
  xpc_release(v5);
  v7 = object;
  v8 = 0;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v7 = xpc_null_create();
  }

  v6 = xpc_null_create();
  sub_10002A37C(141, &v7, &v6);
  xpc_release(v6);
  xpc_release(v7);
  xpc_release(object);
}

void sub_1002C58D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10, uint64_t a11, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a10);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_1002C5938(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

void sub_1002C5974(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

void sub_1002C59DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  if ((atomic_load_explicit(&qword_101FBA1A0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_101FBA1A0))
    {
      sub_1002C7D30(xmmword_101FBA160, " \f\n\r\t\v", "()=<>", 0);
      __cxa_atexit(sub_1002C5D28, xmmword_101FBA160, &_mh_execute_header);
      __cxa_guard_release(&qword_101FBA1A0);
    }
  }

  memset(v22, 0, sizeof(v22));
  v5 = sub_1002C7E58(v22, a1, xmmword_101FBA160);
  *v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *v16 = 0u;
  v17 = 0u;
  *v15 = 0u;
  sub_1002C5D6C(v5, v15);
  *v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *v9 = 0u;
  v10 = 0u;
  *v8 = 0u;
  sub_1002C5E58(v22, v8);
  v6 = 0;
  v7 = 0;
  sub_1002C8348();
}

uint64_t sub_1002C5D28(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1002C5D6C(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (*(a1 + 39) < 0)
  {
    sub_100005F2C(v4, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    *v4 = *(a1 + 16);
    v5 = *(a1 + 32);
  }

  if (*(a1 + 63) < 0)
  {
    sub_100005F2C(__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *__p = *(a1 + 40);
    v7 = *(a1 + 56);
  }

  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  sub_1002C7F30(a2, v4, *a1, *(a1 + 8));
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_1002C5E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C5E58(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (*(a1 + 39) < 0)
  {
    sub_100005F2C(v4, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    *v4 = *(a1 + 16);
    v5 = *(a1 + 32);
  }

  if (*(a1 + 63) < 0)
  {
    sub_100005F2C(__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *__p = *(a1 + 40);
    v7 = *(a1 + 56);
  }

  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  sub_1002C7F30(a2, v4, *(a1 + 8), *(a1 + 8));
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_1002C5F1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002C5F48(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1002C5F9C(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void sub_1002C5FCC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, std::locale::__imp **a5@<X8>)
{
  v34 = a4;
  v8 = *(a2 + 80);
  v9 = *(a1 + 80);
  if (v8 == 1 && (v9 & 1) != 0)
  {
    if (*(a2 + 64) != *(a1 + 64) || *(a2 + 72) != *(a1 + 72))
    {
      *a5 = 0;
      a5[1] = 0;
LABEL_8:
      std::locale::locale(&v33);
      std::locale::locale(&v32, &v33);
      v10 = *(a1 + 111);
      if (v10 >= 0)
      {
        v11 = (a1 + 88);
      }

      else
      {
        v11 = *(a1 + 88);
      }

      if (v10 >= 0)
      {
        v12 = *(a1 + 111);
      }

      else
      {
        v12 = *(a1 + 96);
      }

      if (v12)
      {
        v13 = v12 - 1;
        if ((v12 - 1) >= 4)
        {
          v13 = 4;
        }

        v14 = v13 + 1;
        v15 = "false";
        v16 = 5;
        do
        {
          if (!sub_1001DAECC(&v32, v11, v15))
          {
            goto LABEL_23;
          }

          ++v11;
          ++v15;
          --v16;
          --v14;
        }

        while (v14);
        std::locale::~locale(&v32);
        std::locale::~locale(&v33);
        if (v12 + v16 == 5 && !v16)
        {
LABEL_39:
          sub_1002C8658();
        }
      }

      else
      {
LABEL_23:
        std::locale::~locale(&v32);
        std::locale::~locale(&v33);
      }

      if (*(a1 + 80) == 1)
      {
        std::locale::locale(&v33);
        std::locale::locale(&v32, &v33);
        v17 = *(a1 + 111);
        if (v17 >= 0)
        {
          v18 = (a1 + 88);
        }

        else
        {
          v18 = *(a1 + 88);
        }

        if (v17 >= 0)
        {
          v19 = *(a1 + 111);
        }

        else
        {
          v19 = *(a1 + 96);
        }

        if (v19)
        {
          v20 = v19 - 1;
          if ((v19 - 1) >= 3)
          {
            v20 = 3;
          }

          v21 = v20 + 1;
          v22 = "true";
          v23 = 4;
          do
          {
            if (!sub_1001DAECC(&v32, v18, v22))
            {
              goto LABEL_40;
            }

            ++v18;
            ++v22;
            --v23;
            --v21;
          }

          while (v21);
          std::locale::~locale(&v32);
          std::locale::~locale(&v33);
          if (v19 + v23 == 4 && !v23)
          {
            goto LABEL_39;
          }
        }

        else
        {
LABEL_40:
          std::locale::~locale(&v32);
          std::locale::~locale(&v33);
        }

        if (*(a1 + 80))
        {
          if (*(a1 + 111) >= 0)
          {
            v24 = (a1 + 88);
          }

          else
          {
            v24 = *(a1 + 88);
          }

          v25 = *v24;
          if (v25 < 0 || (_DefaultRuneLocale.__runetype[v25] & 0x400) == 0)
          {
            v26 = a3[1];
            if (v26 && std::__shared_weak_count::lock(v26) && *a3)
            {
              if (*(a1 + 80))
              {
                LODWORD(v33.__locale_) = (*(**a3 + 16))(*a3, a1 + 88);
                if (LODWORD(v33.__locale_) != 2)
                {
                  if (*(a1 + 80))
                  {
                    sub_1002C89E8();
                  }

                  __assert_rtn("dereference", "token_iterator.hpp", 59, "valid_");
                }

                exception = __cxa_allocate_exception(8uLL);
                *exception = &off_101E39960;
              }

              __assert_rtn("dereference", "token_iterator.hpp", 59, "valid_");
            }

            v29 = __cxa_allocate_exception(8uLL);
            *v29 = &off_101E39960;
          }

          v33.__locale_ = 0;
          std::stoi((a1 + 88), &v33, 10);
          if (*(a1 + 80))
          {
            v27 = *(a1 + 111);
            if ((v27 & 0x80u) != 0)
            {
              v27 = *(a1 + 96);
            }

            if (v33.__locale_ >= v27)
            {
              sub_1002C8894();
            }

            v31 = __cxa_allocate_exception(8uLL);
            *v31 = &off_101E39960;
          }

          __assert_rtn("dereference", "token_iterator.hpp", 59, "valid_");
        }
      }

LABEL_59:
      __assert_rtn("dereference", "token_iterator.hpp", 59, "valid_");
    }
  }

  else if (v8 != v9)
  {
    *a5 = 0;
    a5[1] = 0;
    if ((v9 & 1) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_8;
  }

  v28 = __cxa_allocate_exception(8uLL);
  *v28 = &off_101E39960;
}

uint64_t sub_1002C6530(uint64_t result, char a2)
{
  if (*(result + 4))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &off_101E39988;
  }

  *result = a2;
  return result;
}

_DWORD *sub_1002C658C(_DWORD *result, _DWORD *a2)
{
  if (result[1] != a2[1])
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &off_101E39988;
  }

  *result = *a2;
  return result;
}

uint64_t sub_1002C65F4(_DWORD *a1)
{
  if (a1[1])
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &off_101E39988;
  }

  return *a1;
}

BOOL sub_1002C6650(int *a1, int *a2)
{
  if (!a2 || (v3 = a1[1], v3 == 2) || v3 != a2[1])
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &off_101E39988;
  }

  sub_1002C6704(a1);
  sub_1002C6704(a2);
  if (a1[1])
  {
    v5 = *a1;
    v6 = *a2;
  }

  else
  {
    v5 = *a1;
    v6 = *a2;
  }

  return v5 == v6;
}

void sub_1002C6704(uint64_t a1)
{
  if ((*(a1 + 31) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 16))
    {
      return;
    }
  }

  else if (!*(a1 + 31))
  {
    return;
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        (*(*v5 + 24))(v5, a1);
      }

      sub_100004A34(v4);
    }
  }
}

BOOL sub_1002C67B4(_DWORD *a1, _DWORD *a2)
{
  if (!a2 || a1[1] != 1 || a2[1] != 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &off_101E39988;
  }

  sub_1002C6704(a1);
  sub_1002C6704(a2);
  return *a1 < *a2;
}

BOOL sub_1002C6854(_DWORD *a1, _DWORD *a2)
{
  if (!a2 || a1[1] != 1 || a2[1] != 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &off_101E39988;
  }

  sub_1002C6704(a1);
  sub_1002C6704(a2);
  return *a1 > *a2;
}

void sub_1002C68F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = *a4;
  v8 = a4[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = off_101E39868;
  *(a1 + 8) = v9;
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 24) = a5;
    v10 = (a1 + 24);
    std::__shared_weak_count::__release_weak(v8);
    v9 = *(a1 + 8);
    v11 = *(a1 + 16);
  }

  else
  {
    v11 = 0;
    *(a1 + 24) = a5;
    v10 = (a1 + 24);
  }

  *a1 = off_101E398C0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v12[0] = v9;
  v12[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1002C5FCC(a2, a3, v12, *v10, &v13);
}

void sub_1002C6C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  v15 = v12[7];
  if (v15)
  {
    sub_100004A34(v15);
  }

  v16 = v12[5];
  if (v16)
  {
    sub_100004A34(v16);
  }

  *v12 = v13;
  v17 = v12[2];
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002C6CD4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    return sub_1002C65F4(*(a1 + 32));
  }

  v2 = *(a1 + 64);
  if (v2 == 2)
  {
    return sub_1002C6854(*(a1 + 32), v1);
  }

  if (v2 == 1)
  {
    return sub_1002C67B4(*(a1 + 32), v1);
  }

  if (v2)
  {
    return 0;
  }

  return sub_1002C6650(*(a1 + 32), v1);
}

void sub_1002C6D1C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = *a4;
  v8 = a4[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = off_101E39868;
  a1[1] = v9;
  a1[2] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    a1[3] = a5;
    std::__shared_weak_count::__release_weak(v8);
  }

  else
  {
    a1[3] = a5;
  }

  *a1 = off_101E398E8;
  a1[4] = 0;
  a1[5] = 0;
  v10 = *(a3 + 80);
  v11 = *(a2 + 80);
  if (v10 == 1 && (v11 & 1) != 0)
  {
    if (*(a3 + 64) == *(a2 + 64) && *(a3 + 72) == *(a2 + 72))
    {
LABEL_22:
      exception = __cxa_allocate_exception(8uLL);
      *exception = &off_101E39960;
    }
  }

  else
  {
    if (v10 == v11)
    {
      goto LABEL_22;
    }

    if ((v11 & 1) == 0)
    {
      __assert_rtn("dereference", "token_iterator.hpp", 59, "valid_");
    }
  }

  v12 = *(a2 + 111);
  if (v12 < 0)
  {
    if (*(a2 + 96) != 1)
    {
      goto LABEL_20;
    }

    v13 = *(a2 + 88);
  }

  else
  {
    v13 = (a2 + 88);
    if (v12 != 1)
    {
      goto LABEL_20;
    }
  }

  if (*v13 == 40)
  {
    sub_1002C8BCC(a2);
    sub_1002C8C0C();
  }

LABEL_20:
  sub_1002C8D6C();
}

void sub_1002C6FDC(_Unwind_Exception *exception_object)
{
  v4 = v1[5];
  if (v4)
  {
    sub_100004A34(v4);
  }

  *v1 = v2;
  v5 = v1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C7034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = *a4;
  v8 = a4[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = off_101E39868;
  *(a1 + 8) = v9;
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 24) = a5;
    std::__shared_weak_count::__release_weak(v8);
  }

  else
  {
    *(a1 + 24) = a5;
  }

  *a1 = off_101E39910;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  while (1)
  {
    v10 = *(a3 + 80);
    v11 = *(a2 + 80);
    if (v10 == 1 && (v11 & 1) != 0)
    {
      if (*(a3 + 64) != *(a2 + 64))
      {
        goto LABEL_14;
      }

      if (*(a3 + 72) == *(a2 + 72))
      {
        goto LABEL_30;
      }
    }

    else if (v10 == v11)
    {
      goto LABEL_30;
    }

    if ((v11 & 1) == 0)
    {
      __assert_rtn("dereference", "token_iterator.hpp", 59, "valid_");
    }

LABEL_14:
    std::locale::locale(&v20);
    std::locale::locale(v19, &v20);
    v12 = *(a2 + 111);
    if (v12 >= 0)
    {
      v13 = (a2 + 88);
    }

    else
    {
      v13 = *(a2 + 88);
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 111);
    }

    else
    {
      v14 = *(a2 + 96);
    }

    if (!v14)
    {
LABEL_29:
      std::locale::~locale(v19);
      std::locale::~locale(&v20);
LABEL_30:
      sub_1002C8F68();
    }

    v15 = v14 - 1;
    if ((v14 - 1) >= 2)
    {
      v15 = 2;
    }

    v16 = v15 + 1;
    v17 = 3;
    v18 = "not";
    do
    {
      if (!sub_1001DAECC(v19, v13, v18))
      {
        goto LABEL_29;
      }

      ++v13;
      ++v18;
      --v17;
      --v16;
    }

    while (v16);
    std::locale::~locale(v19);
    std::locale::~locale(&v20);
    if (v14 + v17 != 3 || v17)
    {
      goto LABEL_30;
    }

    *(a1 + 32) ^= 1u;
    sub_1002C8BCC(a2);
  }
}

void sub_1002C7284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::locale a11, uint64_t a12, uint64_t a13, std::locale a14)
{
  v16 = v14[6];
  if (v16)
  {
    sub_100004A34(v16);
  }

  *v14 = a9;
  v17 = v14[2];
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C7320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a4;
  v6 = a4[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = off_101E39868;
  *(a1 + 8) = v7;
  *(a1 + 16) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 24) = a5;
    std::__shared_weak_count::__release_weak(v6);
  }

  else
  {
    *(a1 + 24) = a5;
  }

  *a1 = off_101E39938;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  sub_1002C9164();
}

void sub_1002C7670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale::__imp *a10, uint64_t a11, std::locale a12, uint64_t a13, std::locale a14)
{
  v16 = v14[7];
  if (v16)
  {
    v14[8] = v16;
    operator delete(v16);
  }

  a12.__locale_ = a10;
  sub_1000212F4(&a12);
  *v14 = a9;
  v17 = v14[2];
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  _Unwind_Resume(a1);
}

void **sub_1002C7708(void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_1000CE3D4();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = result;
    if (v10)
    {
      sub_1000210A8(result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = sub_1000210F0(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

uint64_t sub_1002C77FC(uint64_t a1)
{
  result = (*(***(a1 + 32) + 16))(**(a1 + 32));
  v3 = *(a1 + 32);
  if ((*(a1 + 40) - v3) >= 0x11)
  {
    v4 = 2;
    v5 = 1;
    while (*(*(a1 + 56) + 4 * (v4 - 2)))
    {
      if ((result & 1) == 0)
      {
        goto LABEL_7;
      }

      result = 1;
LABEL_9:
      v5 = v4;
      v3 = *(a1 + 32);
      ++v4;
      if (v5 >= (*(a1 + 40) - v3) >> 4)
      {
        return result;
      }
    }

    if ((result & 1) == 0)
    {
      result = 0;
      goto LABEL_9;
    }

LABEL_7:
    result = (*(**(v3 + 16 * v5) + 16))(*(v3 + 16 * v5));
    goto LABEL_9;
  }

  return result;
}

void *sub_1002C78CC(void *a1)
{
  *a1 = off_101E398C0;
  v2 = a1[7];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    sub_100004A34(v3);
  }

  *a1 = off_101E39868;
  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_1002C794C(void *a1)
{
  *a1 = off_101E398C0;
  v2 = a1[7];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    sub_100004A34(v3);
  }

  *a1 = off_101E39868;
  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete();
}

void *sub_1002C79EC(void *a1)
{
  *a1 = off_101E398E8;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  *a1 = off_101E39868;
  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1002C7A60(void *a1)
{
  *a1 = off_101E398E8;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  *a1 = off_101E39868;
  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void *sub_1002C7AF4(void *a1)
{
  *a1 = off_101E39910;
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  *a1 = off_101E39868;
  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1002C7B68(void *a1)
{
  *a1 = off_101E39910;
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  *a1 = off_101E39868;
  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

uint64_t sub_1002C7BFC(uint64_t a1)
{
  *a1 = off_101E39938;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v5 = (a1 + 32);
  sub_1000212F4(&v5);
  *a1 = off_101E39868;
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1002C7C8C(uint64_t a1)
{
  *a1 = off_101E39938;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  sub_1000212F4(&v4);
  *a1 = off_101E39868;
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

uint64_t sub_1002C7D30(uint64_t a1, char *__s, char *a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(a1 + 47) = v8;
  v10 = (a1 + 24);
  if (v8)
  {
    memmove(v10, __s, v8);
  }

  *(v10 + v9) = 0;
  *(a1 + 48) = 0;
  *(a1 + 52) = a4;
  *(a1 + 56) = 0;
  if (a3)
  {
    sub_100016890(a1, a3);
  }

  return a1;
}

void sub_1002C7E24(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002C7E58(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *a1 = v5;
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) == 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  *(a1 + 8) = v7 + v6;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v8;
  }

  if (*(a3 + 47) < 0)
  {
    sub_100005F2C((a1 + 40), *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v9 = *(a3 + 24);
    *(a1 + 56) = *(a3 + 5);
    *(a1 + 40) = v9;
  }

  v10 = *(a3 + 6);
  *(a1 + 72) = *(a3 + 56);
  *(a1 + 64) = v10;
  return a1;
}

void sub_1002C7F14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

char *sub_1002C7F30(char *__dst, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v8;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v9 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v9;
  }

  v10 = *(a2 + 6);
  __dst[56] = *(a2 + 56);
  *(__dst + 6) = v10;
  *(__dst + 8) = a3;
  *(__dst + 9) = a4;
  __dst[80] = 0;
  *(__dst + 11) = 0;
  *(__dst + 12) = 0;
  *(__dst + 13) = 0;
  sub_1002C8020(__dst);
  return __dst;
}

void sub_1002C7FE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002C8020(uint64_t result)
{
  if ((*(result + 80) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 72);
    if (*(result + 64) == v2)
    {
      result = 0;
    }

    else
    {
      result = sub_1002C8074(result, (result + 64), v2, (result + 88));
    }

    *(v1 + 80) = result;
  }

  return result;
}

uint64_t sub_1002C8074(uint64_t a1, std::string::value_type **a2, std::string::value_type *a3, std::string *this)
{
  v8 = *a2;
  if (*(a1 + 52))
  {
    goto LABEL_2;
  }

  if (v8 != a3)
  {
    do
    {
      v9 = sub_1002C8254(a1, *v8);
      v8 = *a2;
      if (!v9)
      {
        break;
      }

      *a2 = ++v8;
    }

    while (v8 != a3);
    if (*(a1 + 52))
    {
LABEL_2:
      if (v8 == a3)
      {
        if ((*(a1 + 56) & 1) == 0)
        {
          v12 = 1;
          *(a1 + 56) = 1;
          sub_1000D192C(this, a3, a3, 0);
          return v12;
        }

        return 0;
      }

      if (sub_1002C82D0(a1, *v8))
      {
        if (*(a1 + 56))
        {
          ++*a2;
          *(a1 + 56) = 0;
LABEL_28:
          sub_1000D192C(this, v8, *a2, *a2 - v8);
          return 1;
        }
      }

      else if ((*(a1 + 56) & 1) != 0 || !sub_1002C8254(a1, **a2))
      {
        v13 = sub_1002C8254(a1, **a2);
        v14 = *a2;
        if (v13)
        {
          *a2 = ++v14;
          v8 = v14;
        }

        while (v14 != a3 && !sub_1002C8254(a1, *v14) && !sub_1002C82D0(a1, **a2))
        {
          v14 = *a2 + 1;
          *a2 = v14;
        }
      }

      *(a1 + 56) = 1;
      goto LABEL_28;
    }
  }

  if (v8 != a3)
  {
    v10 = sub_1002C82D0(a1, *v8);
    v11 = *a2;
    if (v10)
    {
      *a2 = v11 + 1;
    }

    else
    {
      while (v11 != a3 && !sub_1002C8254(a1, *v11) && !sub_1002C82D0(a1, **a2))
      {
        v11 = *a2 + 1;
        *a2 = v11;
      }
    }

    goto LABEL_28;
  }

  return 0;
}

BOOL sub_1002C8254(uint64_t a1, __darwin_ct_rune_t a2)
{
  v2 = *(a1 + 47);
  if (v2 < 0)
  {
    v2 = *(a1 + 32);
  }

  if (v2)
  {
    v3 = std::string::find((a1 + 24), a2, 0) == -1;
  }

  else
  {
    if (*(a1 + 49) != 1)
    {
      return 0;
    }

    if (a2 < 0)
    {
      v4 = __maskrune(a2, 0x4000uLL);
    }

    else
    {
      v4 = _DefaultRuneLocale.__runetype[a2] & 0x4000;
    }

    v3 = v4 == 0;
  }

  return !v3;
}

BOOL sub_1002C82D0(uint64_t a1, __darwin_ct_rune_t a2)
{
  v2 = *(a1 + 23);
  if (v2 < 0)
  {
    v2 = *(a1 + 8);
  }

  if (v2)
  {
    v3 = std::string::find(a1, a2, 0) == -1;
  }

  else
  {
    if (*(a1 + 48) != 1)
    {
      return 0;
    }

    if (a2 < 0)
    {
      v4 = __maskrune(a2, 0x2000uLL);
    }

    else
    {
      v4 = _DefaultRuneLocale.__runetype[a2] & 0x2000;
    }

    v3 = v4 == 0;
  }

  return !v3;
}

void sub_1002C83D4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E39A30;
  sub_1002C84CC((a1 + 3), a2, a3, a4, a5);
}

void sub_1002C8450(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E39A30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002C84CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = a4[1];
  v6[0] = *a4;
  v6[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1002C7320(a1, a2, a3, v6, *a5);
}

void sub_1002C852C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C85B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_1001A9614(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C85D8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002C8618(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_1002C86DC(void *a1, char *a2, uint64_t *a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E39AF8;
  sub_1002C87B8((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_1002C8758(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E39AF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002C87B8(uint64_t a1, char *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a2;
  v7 = *a3;
  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v8 = *a4;
    *a1 = v5;
    *(a1 + 4) = 0;
    *(a1 + 20) = 0;
    *(a1 + 12) = 0;
    *(a1 + 28) = 0;
    *(a1 + 32) = v7;
    *(a1 + 40) = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 48) = v8;
    std::__shared_weak_count::__release_weak(v6);
  }

  else
  {
    v9 = *a4;
    *a1 = v5;
    *(a1 + 4) = 0;
    *(a1 + 20) = 0;
    *(a1 + 12) = 0;
    *(a1 + 28) = 0;
    *(a1 + 32) = v7;
    *(a1 + 40) = 0;
    *(a1 + 48) = v9;
  }

  return a1;
}

void sub_1002C8840(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 31) < 0)
  {
    v3 = *(a1 + 8);

    operator delete(v3);
  }
}

void *sub_1002C8918(void *a1, int *a2, uint64_t *a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E39AF8;
  sub_1002C8974((a1 + 3), a2, a3, a4);
  return a1;
}

uint64_t sub_1002C8974(uint64_t a1, int *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a2;
  v7 = *a3;
  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *a4;
  *a1 = v5;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 48) = v8;
    std::__shared_weak_count::__release_weak(v6);
  }

  else
  {
    *(a1 + 48) = v8;
  }

  return a1;
}

void *sub_1002C8A74(void *a1, unsigned int *a2, __int128 *a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E39AF8;
  sub_1002C8AD0((a1 + 3), a2, a3, a4, a5);
  return a1;
}

uint64_t sub_1002C8AD0(uint64_t a1, unsigned int *a2, __int128 *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *a2;
  v7 = a4[1];
  v9 = *a4;
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1002C8B4C(a1, v6, a3, &v9, *a5);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  return a1;
}

void sub_1002C8B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002C8B4C(uint64_t a1, int a2, __int128 *a3, void *a4, uint64_t a5)
{
  *a1 = 0;
  *(a1 + 4) = a2;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v8;
  }

  v9 = a4[1];
  *(a1 + 32) = *a4;
  *(a1 + 40) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = a5;
  return a1;
}

uint64_t sub_1002C8BCC(uint64_t a1)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    sub_101769A10();
  }

  result = sub_1002C8074(a1, (a1 + 64), *(a1 + 72), (a1 + 88));
  *(a1 + 80) = result;
  return result;
}

void *sub_1002C8C98(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E39A30;
  sub_1002C8CF4((a1 + 3), a2, a3, a4, a5);
  return a1;
}

uint64_t sub_1002C8CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a4[1];
  v8[0] = *a4;
  v8[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1002C7320(a1, a2, a3, v8, *a5);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

void sub_1002C8D54(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C8DF8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E39B48;
  sub_1002C8EF0((a1 + 3), a2, a3, a4, a5);
}

void sub_1002C8E74(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E39B48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002C8EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = a4[1];
  v6[0] = *a4;
  v6[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1002C68F4(a1, a2, a3, v6, *a5);
}

void sub_1002C8F50(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C8FF4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E39B98;
  sub_1002C90EC(a1 + 3, a2, a3, a4, a5);
}

void sub_1002C9070(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E39B98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002C90EC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = a4[1];
  v6[0] = *a4;
  v6[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1002C6D1C(a1, a2, a3, v6, *a5);
}

void sub_1002C914C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C91F0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E39BE8;
  sub_1002C92E8((a1 + 3), a2, a3, a4, a5);
}

void sub_1002C926C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E39BE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002C92E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = a4[1];
  v6[0] = *a4;
  v6[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1002C7034(a1, a2, a3, v6, *a5);
}

void sub_1002C9348(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002C9360(uint64_t a1, void *a2, __int128 *a3, uint64_t a4, __int128 *a5, __int128 *a6, uint64_t a7)
{
  *a1 = &off_101E39C38;
  sub_10174D9C0(a1 + 8, 1, a4, -1);
  v13 = a2[1];
  *(a1 + 96) = *a2;
  *(a1 + 104) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 120), *a3, *(a3 + 1));
  }

  else
  {
    v14 = *a3;
    *(a1 + 136) = *(a3 + 2);
    *(a1 + 120) = v14;
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C((a1 + 144), *a5, *(a5 + 1));
  }

  else
  {
    v15 = *a5;
    *(a1 + 160) = *(a5 + 2);
    *(a1 + 144) = v15;
  }

  if (*(a6 + 23) < 0)
  {
    sub_100005F2C((a1 + 168), *a6, *(a6 + 1));
  }

  else
  {
    v16 = *a6;
    *(a1 + 184) = *(a6 + 2);
    *(a1 + 168) = v16;
  }

  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = a7;
  *(a1 + 224) = 0;
  *(a1 + 228) = 0;
  return a1;
}

void sub_1002C9474(_Unwind_Exception *a1)
{
  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  v3 = *(v1 + 104);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  MessageOperationInterface::~MessageOperationInterface(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002C94DC(uint64_t a1, void *a2, __int128 *a3, uint64_t a4, __int128 *a5, __int128 *a6, __int128 *a7, uint64_t a8, char a9)
{
  *a1 = &off_101E39C38;
  sub_10174D9C0(a1 + 8, 1, a4, -1);
  v16 = a2[1];
  *(a1 + 96) = *a2;
  *(a1 + 104) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 120), *a3, *(a3 + 1));
  }

  else
  {
    v17 = *a3;
    *(a1 + 136) = *(a3 + 2);
    *(a1 + 120) = v17;
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C((a1 + 144), *a5, *(a5 + 1));
  }

  else
  {
    v18 = *a5;
    *(a1 + 160) = *(a5 + 2);
    *(a1 + 144) = v18;
  }

  if (*(a6 + 23) < 0)
  {
    sub_100005F2C((a1 + 168), *a6, *(a6 + 1));
  }

  else
  {
    v19 = *a6;
    *(a1 + 184) = *(a6 + 2);
    *(a1 + 168) = v19;
  }

  if (*(a7 + 23) < 0)
  {
    sub_100005F2C((a1 + 192), *a7, *(a7 + 1));
  }

  else
  {
    v20 = *a7;
    *(a1 + 208) = *(a7 + 2);
    *(a1 + 192) = v20;
  }

  *(a1 + 216) = a8;
  *(a1 + 224) = 0;
  *(a1 + 228) = a9;
  return a1;
}

void sub_1002C9624(_Unwind_Exception *a1)
{
  if (*(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
  }

  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  v3 = *(v1 + 104);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  MessageOperationInterface::~MessageOperationInterface(v1);
  _Unwind_Resume(a1);
}

char *sub_1002C96C0@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[79] < 0)
  {
    return sub_100005F2C(a2, *(result + 7), *(result + 8));
  }

  *a2 = *(result + 56);
  *(a2 + 16) = *(result + 9);
  return result;
}

void sub_1002C96E8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  std::string::operator=((a1 + 56), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1002C9758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002C9794(uint64_t a1)
{
  Registry::getTimerService(&v6, *(a1 + 96));
  v2 = (**v6)(v6);
  v3 = *(a1 + 16);
  v4 = *(a1 + 40) << v3;
  if (v4 >= *(a1 + 48))
  {
    v4 = *(a1 + 48);
  }

  *(a1 + 32) = v2 + 1000000000 * v4;
  if (v7)
  {
    sub_100004A34(v7);
    v3 = *(a1 + 16);
  }

  result = (v3 + 1);
  *(a1 + 16) = result;
  return result;
}

void sub_1002C982C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002C9844(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 << *(a1 + 16) >= *(a1 + 48))
  {
    return *(a1 + 48);
  }

  else
  {
    return v1 << *(a1 + 16);
  }
}

uint64_t sub_1002C98BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  Registry::getTimerService(&v4, *(a1 + 96));
  v2 = (**v4)(v4);
  if (v5)
  {
    sub_100004A34(v5);
  }

  return (v1 - v2) / 1000000000;
}

void sub_1002C9948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C996C(unsigned int *a1@<X0>, uint64_t *a2@<X8>)
{
  v9 = 0;
  *__p = 0u;
  v8 = 0u;
  sub_101135C10(__p, a1[6]);
  if ((*(*a1 + 200))(a1, __p, 0))
  {
    if (v8 >= 0)
    {
      v4 = &__p[1];
    }

    else
    {
      v4 = __p[1];
    }

    if (v8 >= 0)
    {
      v5 = HIBYTE(v8);
    }

    else
    {
      v5 = v8;
    }

    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    sub_1001E0D88(a2, v4, &v4[v5], v5);
  }

  else
  {
    v6 = sub_1015D7DBC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_101769A3C(v6);
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[1]);
  }
}

void sub_1002C9A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002C9A90(uint64_t a1)
{
  if (*(a1 + 228))
  {
    *&cf = @"SMSSettings";
    *(&cf + 1) = @"EnableReplyToAlphanumericOriginator";
    v22 = 0;
    v23 = 0;
    __p = 0;
    sub_10005B328(&__p, &cf, &v26, 2uLL);
    ServiceMap = Registry::getServiceMap(*(a1 + 96));
    v3 = ServiceMap;
    if (v4 < 0)
    {
      v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
      v6 = 5381;
      do
      {
        v4 = v6;
        v7 = *v5++;
        v6 = (33 * v6) ^ v7;
      }

      while (v7);
    }

    std::mutex::lock(ServiceMap);
    *&cf = v4;
    v8 = sub_100009510(&v3[1].__m_.__sig, &cf);
    if (v8)
    {
      v10 = v8[3];
      v9 = v8[4];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v3);
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v9);
        v11 = 0;
        if (!v10)
        {
LABEL_8:
          v12 = sub_1015D7DBC();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_101769AC4(v12);
          }

          v13 = 1;
LABEL_22:
          if ((v11 & 1) == 0)
          {
            sub_100004A34(v9);
          }

          if (__p)
          {
            v22 = __p;
            operator delete(__p);
          }

          return v13 & 1;
        }

LABEL_16:
        (*(*v10 + 104))(&cf, v10, *(a1 + 24), 1, &__p, kCFBooleanTrue, 0);
        v15 = cf;
        v24 = 0;
        if (cf && (v16 = CFGetTypeID(cf), v16 == CFBooleanGetTypeID()))
        {
          ctu::cf::assign(&v24, v15, v17);
          v13 = v24;
        }

        else
        {
          v13 = 0;
        }

        sub_10000A1EC(&cf);
        v18 = sub_1015D7DBC();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = CSIBOOLAsString(v13 & 1);
          LODWORD(cf) = 136315138;
          *(&cf + 4) = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Reply to alphanumeric originator enabled = %s", &cf, 0xCu);
        }

        goto LABEL_22;
      }
    }

    else
    {
      v10 = 0;
    }

    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  v14 = sub_1015D7DBC();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_101769A80(v14);
  }

  v13 = 1;
  return v13 & 1;
}

void sub_1002C9D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1002C9D98(uint64_t a1)
{
  if ((*(a1 + 167) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 152))
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!*(a1 + 167))
  {
    return 0;
  }

LABEL_3:
  v1 = *(a1 + 143);
  if (v1 < 0)
  {
    v1 = *(a1 + 128);
  }

  return v1 != 0;
}

uint64_t sub_1002C9DD4(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 120);
  if (*(a1 + 143) < 0)
  {
    v4 = *v4;
  }

  v5 = (a1 + 144);
  if (*(a1 + 167) < 0)
  {
    v5 = *v5;
  }

  v6 = (a1 + 168);
  if (*(a1 + 191) < 0)
  {
    v6 = *v6;
  }

  v7 = (a1 + 192);
  if (*(a1 + 215) < 0)
  {
    v7 = *v7;
  }

  v8 = sub_101136DB4(a2, *(a1 + 216), v4, v5, v6, v7);
  if (v8)
  {
    sub_101135D4C(a2, *(a1 + 224));
  }

  return v8;
}

char *sub_1002C9E64@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[167] < 0)
  {
    return sub_100005F2C(a2, *(result + 18), *(result + 19));
  }

  *a2 = *(result + 9);
  *(a2 + 16) = *(result + 20);
  return result;
}

char *sub_1002C9E8C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[143] < 0)
  {
    return sub_100005F2C(a2, *(result + 15), *(result + 16));
  }

  *a2 = *(result + 120);
  *(a2 + 16) = *(result + 17);
  return result;
}

char *sub_1002C9EB4@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[191] < 0)
  {
    return sub_100005F2C(a2, *(result + 21), *(result + 22));
  }

  *a2 = *(result + 168);
  *(a2 + 16) = *(result + 23);
  return result;
}

void sub_1002C9EE8(void **a1)
{
  sub_1002C9F20(a1);

  operator delete();
}

void sub_1002C9F20(void **this)
{
  *this = &off_101E39C38;
  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  v2 = this[13];
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  MessageOperationInterface::~MessageOperationInterface(this);
}

void sub_1002C9FCC(NSObject **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v47 = @"response";
  v45 = @"reply";
  v43[0] = @"displayText";
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = [NSString stringWithUTF8String:v6];
  v43[1] = @"postback";
  v44[0] = v7;
  v41 = @"data";
  if (*(a2 + 47) >= 0)
  {
    v8 = a2 + 3;
  }

  else
  {
    v8 = a2[3];
  }

  v9 = [NSString stringWithUTF8String:v8];
  v42 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  v44[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2];
  v46 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  v48 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];

  v24 = 0;
  v14 = [NSJSONSerialization dataWithJSONObject:v13 options:1 error:&v24];
  v15 = v24;
  if (v14)
  {
    if (*(a2 + 48) == 1)
    {
      v16 = [v14 base64EncodedStringWithOptions:0];
    }

    else
    {
      v16 = [[NSString alloc] initWithData:v14 encoding:4];
    }

    v18 = v16;
    v40 = 0;
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
    *v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    memset(v27, 0, sizeof(v27));
    *buf = 0u;
    sub_10000C320(buf);
    sub_1000D0C38(buf, "Content-Type", off_101E97888);
    if (*(a2 + 48) == 1)
    {
      sub_1000D0C38(buf, "Content-Transfer-Encoding", off_101E97770);
    }

    std::to_string(&__p, [v18 length]);
    sub_1002049A4(buf, "Content-Length", &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_100917E0C(buf);
    v19 = v18;
    v20 = [v18 UTF8String];
    v21 = strlen(v20);
    sub_10000C030(&v26, v20, v21);
    sub_100061574(buf, &__p);
    sub_100C180E0(a3, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    *&v26 = v22;
    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28[1]);
    }

    std::locale::~locale(v27);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  else
  {
    v17 = *a1;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Failed to JSON encode reply: %@", buf, 0xCu);
    }

    sub_100C180E4(a3);
  }
}

void sub_1002CA514(NSObject **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v47 = @"response";
  v45 = @"action";
  v43[0] = @"displayText";
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = [NSString stringWithUTF8String:v6];
  v43[1] = @"postback";
  v44[0] = v7;
  v41 = @"data";
  if (*(a2 + 47) >= 0)
  {
    v8 = a2 + 3;
  }

  else
  {
    v8 = a2[3];
  }

  v9 = [NSString stringWithUTF8String:v8];
  v42 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  v44[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2];
  v46 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  v48 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];

  v24 = 0;
  v14 = [NSJSONSerialization dataWithJSONObject:v13 options:1 error:&v24];
  v15 = v24;
  if (v14)
  {
    if (*(a2 + 48) == 1)
    {
      v16 = [v14 base64EncodedStringWithOptions:0];
    }

    else
    {
      v16 = [[NSString alloc] initWithData:v14 encoding:4];
    }

    v18 = v16;
    v40 = 0;
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
    *v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    memset(v27, 0, sizeof(v27));
    *buf = 0u;
    sub_10000C320(buf);
    sub_1000D0C38(buf, "Content-Type", off_101E97888);
    if (*(a2 + 48) == 1)
    {
      sub_1000D0C38(buf, "Content-Transfer-Encoding", off_101E97770);
    }

    std::to_string(&__p, [v18 length]);
    sub_1002049A4(buf, "Content-Length", &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_100917E0C(buf);
    v19 = v18;
    v20 = [v18 UTF8String];
    v21 = strlen(v20);
    sub_10000C030(&v26, v20, v21);
    sub_100061574(buf, &__p);
    sub_100C180E0(a3, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    *&v26 = v22;
    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28[1]);
    }

    std::locale::~locale(v27);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  else
  {
    v17 = *a1;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Failed to JSON encode action response: %@", buf, 0xCu);
    }

    sub_100C180E4(a3);
  }
}

std::__shared_weak_count *sub_1002CAA5C@<X0>(uint64_t *a2@<X8>)
{
  result = DataPlanManagerBootstrap::instance_if_created(v6);
  v4 = v6[1];
  if (v6[0])
  {
    v5 = v6[0] + 8;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = v4;
  return result;
}

void sub_1002CAAA8(capabilities::ct *a1@<X0>, NSObject **a2@<X1>, void *a3@<X8>)
{
  if (capabilities::ct::getRadioModuleType(a1) == 2)
  {
    if (*a2)
    {
      if (*a1)
      {
        operator new();
      }

      sub_101769B08();
    }

    sub_101769B34();
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_1002CABD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, dispatch_object_t object)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

void sub_1002CAC24(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E39E58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1002CACA0()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v0 = *v0;
  }

  return v0;
}

id sub_1002CACD0()
{
  v0 = CUTWeakLinkClass();

  return v0;
}

uint64_t sub_1002CACFC(uint64_t a1, uint64_t *a2, char *a3, _OWORD *a4)
{
  *a1 = off_101E9E1C8;
  v7 = (a1 + 8);
  v8 = a2[1];
  v10 = *a2;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10098D218(v7, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  *a1 = off_101E39EA8;
  sub_100074920((a1 + 32), a3);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_1002CB1BC((a1 + 56), *(a3 + 3), *(a3 + 4), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 4) - *(a3 + 3)) >> 3));
  *(a1 + 80) = *a4;
  return a1;
}

void sub_1002CADE4(_Unwind_Exception *a1)
{
  sub_100009970(v2, *(v1 + 40));
  v4 = *(v1 + 16);
  if (v4)
  {
    sub_100004A34(v4);
  }

  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void sub_1002CAE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a10)
  {
    JUMPOUT(0x1002CAE08);
  }

  JUMPOUT(0x1002CAE04);
}

void sub_1002CAE2C(uint64_t a1@<X0>, NSObject **a2@<X1>, void *a3@<X8>)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  if (v4 == v5)
  {
LABEL_17:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    goto LABEL_18;
  }

  do
  {
    v7 = *(v4 + 24);
    if (v7 != (v4 + 32))
    {
      while (1)
      {
        buf[0] = 0;
        {
          break;
        }

        v8 = v7[1];
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
            v9 = v7[2];
            v10 = *v9 == v7;
            v7 = v9;
          }

          while (!v10);
        }

        v7 = v9;
        if (v9 == (v4 + 32))
        {
          goto LABEL_12;
        }
      }

      sub_100005308(&v13, v4);
    }

LABEL_12:
    v4 += 56;
  }

  while (v4 != v5);
  v11 = v14;
  if (v13 == v14)
  {
    v12 = *a2;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I No access control servers found", buf, 2u);
    }

    goto LABEL_17;
  }

  *a3 = v13;
  a3[1] = v11;
  a3[2] = v15;
  v14 = 0;
  v15 = 0;
  v13 = 0;
LABEL_18:
  *buf = &v13;
  sub_1000087B4(buf);
}

void sub_1002CAF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  sub_1000087B4(&a13);
  _Unwind_Resume(a1);
}

BOOL sub_1002CAFA8(uint64_t a1, os_log_t *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v2 = *(a1 + 88);
  if (v2 <= 0)
  {
    v4 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "AccessControl.xml";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Invalid validity of %s xml", buf, 0xCu);
    }

    return 1;
  }

  else
  {
    v3 = sub_10098D2BC((a1 + 8), v2, __p);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v3;
}

void sub_1002CB08C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CB0C0(uint64_t a1)
{
  *a1 = off_101E39EA8;
  v3 = (a1 + 56);
  sub_1002CB430(&v3);
  sub_100009970(a1 + 32, *(a1 + 40));
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  TMKXPCServer.shutdown()();
}

void sub_1002CB134(uint64_t a1)
{
  *a1 = off_101E39EA8;
  v3 = (a1 + 56);
  sub_1002CB430(&v3);
  sub_100009970(a1 + 32, *(a1 + 40));
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  TMKXPCServer.shutdown()();
  operator delete();
}

uint64_t *sub_1002CB1BC(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1002CB244(result, a4);
  }

  return result;
}

void sub_1002CB224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_1002CB430(&a9);
  _Unwind_Resume(a1);
}

void sub_1002CB244(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_1002CB294(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_1002CB294(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1002CB2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        sub_100005F2C(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        *(v8 + 16) = *(v9 + 2);
        *v8 = v10;
      }

      sub_100074920((a4 + v7 + 24), (a2 + v7 + 24));
      *(a4 + v7 + 48) = *(a2 + v7 + 48);
      v7 += 56;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1002CB394(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 56;
    v5 = -v2;
    do
    {
      sub_1002CB3DC(v4);
      v4 -= 56;
      v5 += 56;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CB3DC(uint64_t a1)
{
  sub_100009970(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_1002CB430(void ***a1)
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
        v4 -= 56;
        sub_1002CB3DC(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1002CB4B4(uint64_t a1, uint64_t a2, const void **a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = *(a3 + 23);
    if (v5 >= 0)
    {
      v6 = *(a3 + 23);
    }

    else
    {
      v6 = a3[1];
    }

    if (v5 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    do
    {
      if (*(v3 + 8) == v6 && !memcmp(*v3, v7, v6))
      {
        break;
      }

      v3 += 16;
    }

    while (v3 != a2);
  }

  return v3;
}

void sub_1002CB668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  (*(*v3 + 8))(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_1002CB6EC(uint64_t a1)
{
  *a1 = off_101E39F58;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_100005978((a1 + 8));
  return a1;
}

void sub_1002CB764(uint64_t a1)
{
  *a1 = off_101E39F58;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_100005978((a1 + 8));

  operator delete();
}

uint64_t sub_1002CB898(uint64_t a1, int a2, ctu::PathView *this)
{
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  __p[0] = ctu::PathView::current(this);
  __p[1] = v4;
  sub_100074CFC(__p, v23);
  v22 = 0;
  __p[0] = xpc_string_create("get");
  if (!__p[0])
  {
    __p[0] = xpc_null_create();
  }

  __dst[0].fObj = xpc_string_create("internal");
  if (!__dst[0].fObj)
  {
    __dst[0].fObj = xpc_null_create();
  }

  if (v24 >= 0)
  {
    v5 = v23;
  }

  else
  {
    v5 = v23[0];
  }

  object[0] = xpc_string_create(v5);
  if (!object[0])
  {
    object[0] = xpc_null_create();
  }

  v29.fObj = xpc_null_create();
  ctu::rest::createRestMessage(__p, __dst, object, &v29, v6);
  xpc_release(v29.fObj);
  xpc_release(object[0]);
  xpc_release(__dst[0].fObj);
  xpc_release(__p[0]);
  object[0] = 0;
  object[1] = 0;
  v21 = 0;
  sub_1002CBD14(object, &v22);
  v7 = *(a1 + 16);
  ctu::PathView::PathView();
  (*(*v7 + 16))(v7, object, __p);
  v8 = v21;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    v8 = xpc_null_create();
  }

  value = 0;
  if (xpc_get_type(v8) != &_xpc_type_null)
  {
    ctu::xpc_to_cf(v8, v9);
    v10 = value;
    value = __dst[0].fObj;
    __p[0] = v10;
    __dst[0].fObj = 0;
    sub_10000A1EC(__p);
    sub_10000A1EC(&__dst[0].fObj);
  }

  if (SHIBYTE(v24) < 0)
  {
    sub_100005F2C(v14, v23[0], v23[1]);
  }

  else
  {
    *v14 = *v23;
    v15 = v24;
  }

  if (SHIBYTE(v15) < 0)
  {
    sub_100005F2C(__dst, v14[0], v14[1]);
  }

  else
  {
    *&__dst[0].fObj = *v14;
    v27 = v15;
  }

  v25 = 0;
  if (SHIBYTE(v27) < 0)
  {
    sub_100005F2C(__p, __dst[0].fObj, __dst[1].fObj);
  }

  else
  {
    *__p = *&__dst[0].fObj;
    v19 = v27;
  }

  v28 = 0;
  if (ctu::cf::convert_copy())
  {
    v11 = v25;
    v25 = v28;
    v29.fObj = v11;
    sub_100005978(&v29.fObj);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  v12 = v25;
  v16 = v25;
  v25 = 0;
  sub_100005978(&v25);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__dst[0].fObj);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  CFPreferencesSetValue(v12, value, *(a1 + 8), kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  CFPreferencesSynchronize(*(a1 + 8), kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100005978(&v16);
  sub_10000A1EC(&value);
  xpc_release(v8);
  xpc_release(v21);
  v21 = 0;
  ctu::RestResourceContext::~RestResourceContext(object);
  xpc_release(v22);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  return 1;
}

void sub_1002CBBEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, xpc_object_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, xpc_object_t a26, uint64_t a27, uint64_t a28, xpc_object_t object, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_100005978((v36 - 104));
  if (*(v36 - 73) < 0)
  {
    operator delete(*(v36 - 96));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10000A1EC(&a18);
  xpc_release(v35);
  sub_1002CBD60(&a26);
  xpc_release(object);
  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

void *sub_1002CBD14(void *a1, uint64_t a2)
{
  *a1 = &off_101E3A000;
  a1[1] = a2;
  a1[2] = xpc_null_create();
  return a1;
}

void sub_1002CBD60(xpc_object_t *a1)
{
  xpc_release(a1[2]);
  a1[2] = 0;

  ctu::RestResourceContext::~RestResourceContext(a1);
}

uint64_t sub_1002CBDAC(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    v3 = xpc_null_create();
  }

  v4 = *(a1 + 16);
  *(a1 + 16) = v3;
  xpc_release(v4);
  return 1;
}

void sub_1002CBE20(xpc_object_t *a1)
{
  xpc_release(a1[2]);
  a1[2] = 0;
  ctu::RestResourceContext::~RestResourceContext(a1);

  operator delete();
}

void sub_1002CBE78(uint64_t a1, ctu *a2, uint64_t *a3)
{
  v4 = *a3;
  v9[1] = 0;
  v10 = 0;
  ctu::cf::assign();
  v16 = 0u;
  v17 = 0;
  v15.fObj = 0;
  ctu::cf_to_xpc(a2, v5);
  v14 = 0;
  v9[0] = xpc_string_create("set");
  if (!v9[0])
  {
    v9[0] = xpc_null_create();
  }

  v11[0] = xpc_string_create("internal");
  if (!v11[0])
  {
    v11[0] = xpc_null_create();
  }

  if (v17 >= 0)
  {
    v6 = &v16;
  }

  else
  {
    v6 = v16;
  }

  object = xpc_string_create(v6);
  if (!object)
  {
    object = xpc_null_create();
  }

  ctu::rest::createRestMessage(v9, v11, &object, &v15, v7);
  xpc_release(object);
  xpc_release(v11[0]);
  xpc_release(v9[0]);
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  sub_1002CBD14(v11, &v14);
  v8 = *(v4 + 16);
  ctu::PathView::PathView();
  (*(*v8 + 16))(v8, v11, v9);
  xpc_release(v12);
  v12 = 0;
  ctu::RestResourceContext::~RestResourceContext(v11);
  xpc_release(v14);
  xpc_release(v15.fObj);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16);
  }
}

void sub_1002CC038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, xpc_object_t a16, uint64_t a17, uint64_t a18, xpc_object_t object, xpc_object_t a20)
{
  xpc_release(object);
  xpc_release(a16);
  xpc_release(a9);
  xpc_release(*(v20 - 56));
  if (*(v20 - 25) < 0)
  {
    operator delete(*(v20 - 48));
  }

  _Unwind_Resume(a1);
}

void *sub_1002CC0C8@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 4) == 1)
  {
    v2 = off_101E3A0A0[*a1 + 1];
  }

  else
  {
    v2 = "Success";
  }

  return sub_10000501C(a2, v2);
}

uint64_t sub_1002CC100(void *a1)
{
  v2 = (*(**a1 + 16))(*a1);
  switch(v2)
  {
    case 4:
      v8 = a1[1];
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      sub_100C174CC(v7 + 184);
    case 3:
      v6 = a1[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      sub_100C174CC(v5 + 160);
    case 1:
      v4 = a1[1];
      if (v4)
      {
        atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
      }

      sub_100C174CC(v3 + 144);
  }

  return 0;
}

void sub_1002CC2A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CC2C4(void *a1@<X0>, _BYTE *a2@<X8>)
{
  if (sub_1002CC100(a1))
  {
    v4 = (*(**a1 + 16))();
    if (v4 > 2)
    {
      if (v4 == 3)
      {
        v5 = *a1;
        if (*a1)
        {
          if (v5)
          {
            v6 = a1[1];
            if (v6)
            {
              atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
            }
          }
        }

        if (v5[183] < 0)
        {
          sub_100005F2C(&__dst, *(v5 + 20), *(v5 + 21));
        }

        else
        {
          __dst = *(v5 + 10);
          v14 = *(v5 + 22);
        }

        sub_100C161F0();
      }

      if (v4 == 4)
      {
        v9 = *a1;
        if (*a1)
        {
          if (v9)
          {
            v10 = a1[1];
            if (v10)
            {
              atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
            }
          }
        }

        if (v9[207] < 0)
        {
          sub_100005F2C(__p, *(v9 + 23), *(v9 + 24));
        }

        else
        {
          *__p = *(v9 + 184);
          v12 = *(v9 + 25);
        }

        sub_100C161F0();
      }
    }

    else if (v4 == 1)
    {
      v7 = *a1;
      if (*a1)
      {
        if (v7)
        {
          v8 = a1[1];
          if (v8)
          {
            atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
          }
        }
      }

      if (v7[167] < 0)
      {
        sub_100005F2C(&v15, *(v7 + 18), *(v7 + 19));
      }

      else
      {
        v15 = *(v7 + 9);
        v16 = *(v7 + 20);
      }

      sub_100C161F0();
    }
  }

  *a2 = 0;
  a2[24] = 0;
}

void sub_1002CC5D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (v28)
  {
    sub_100004A34(v28);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002CC658@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (sub_100A01E0C(a1))
  {
    v6 = "text";
    v7 = "group text";
    goto LABEL_3;
  }

  if (sub_100A01F04(a1))
  {
    v8 = "imdn";
    goto LABEL_10;
  }

  if (sub_100A01F80(a1))
  {
    v8 = "composing";
    goto LABEL_10;
  }

  if (sub_100A01FFC(a1))
  {
    v6 = "file transfer push";
    v7 = "group file transfer push";
LABEL_3:
    if (a2)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    goto LABEL_10;
  }

  if (sub_100A02078(a1))
  {
    v8 = "card";
  }

  else if (sub_100A020F4(a1))
  {
    v8 = "group chat";
  }

  else
  {
    v10 = sub_100A01E88(a1);
    v11 = "group geo location push";
    if (a2)
    {
      v11 = "geo location push";
    }

    if (v10)
    {
      v8 = v11;
    }

    else
    {
      v8 = "invalid";
    }
  }

LABEL_10:

  return sub_10000501C(a3, v8);
}

uint64_t sub_1002CC770(uint64_t a1)
{
  v2 = 0;
  v3 = *a1;
  v4 = v3[32];
  if (v4 <= 3)
  {
    v7 = v4 >= 2;
    v8 = v4 - 2;
    if (v7)
    {
      if (v8 >= 2)
      {
        return v2 & 1;
      }

      if (v9)
      {
        v6 = *(a1 + 8);
        if (!v6)
        {
          v2 = v9[72];
          return v2 & 1;
        }

        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v2 = v9[72];
LABEL_23:
        v12 = v6;
LABEL_24:
        sub_100004A34(v12);
        return v2 & 1;
      }

LABEL_18:
      v2 = 0;
      return v2 & 1;
    }

LABEL_15:
    if (v10)
    {
      v6 = *(a1 + 8);
      if (!v6)
      {
        v2 = v10[48];
        return v2 & 1;
      }

      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v2 = v10[48];
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (v4 > 6)
  {
    if (v4 == 7)
    {
      v13 = v12;
      if (v12)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      if (v13[13].__shared_owners_)
      {
        v2 = 1;
        if (!v12)
        {
          return v2 & 1;
        }
      }

      else
      {
        v2 = v13[12].__vftable;
        if (!v12)
        {
          return v2 & 1;
        }
      }

      goto LABEL_24;
    }

    if (v4 != 13)
    {
      return v2 & 1;
    }

    goto LABEL_15;
  }

  if ((v4 - 4) < 2)
  {
    if (!v5 || (v6 = *(a1 + 8)) == 0)
    {
      v2 = v5[544];
      return v2 & 1;
    }

    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v2 = v5[544];
    goto LABEL_23;
  }

  if (v4 == 6)
  {
    if (!v11 || (v6 = *(a1 + 8)) == 0)
    {
      v2 = v11[536];
      return v2 & 1;
    }

    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v2 = v11[536];
    goto LABEL_23;
  }

  return v2 & 1;
}