void sub_10017F8BC(uint64_t a1, uint64_t a2)
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
    v5 = *(sub_100195B38() + 1);
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
      sub_10000E984(v12);
    }

    if ((v6 & 0x80000000) == 0 && v19[0] == 0x1000000 && v19[1] == 1634952291 && v19[2] == 1919118949)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v10 = sub_100001940(exception, "The image is encrypted with obsolete encoding version 1", 0x2Du);
    }
  }

  if ((*(*a2 + 40))(a2) > 0x4B)
  {
    operator new[]();
  }

  v7 = __cxa_allocate_exception(0x20uLL);
  v8 = (*(*a2 + 40))(a2);
  *v7 = &off_1002160C8;
  v7[1] = "crypto";
  v7[2] = 76;
  v7[3] = v8;
}

void sub_10017FEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  _Unwind_Resume(a1);
}

void sub_10017FED8(_Unwind_Exception *a1, int a2, ...)
{
  va_start(va, a2);
  switch(a2)
  {
    case 3:
      v2 = __cxa_begin_catch(a1);
      exception = __cxa_allocate_exception(0x30uLL);
      sub_1000A5780((exception + 1), v2);
      *exception = off_100208580;
      exception[1] = off_1002085C0;
    case 2:
      __cxa_begin_catch(a1);
      __cxa_rethrow();
    case 1:
      v4 = __cxa_begin_catch(a1);
      v5 = __cxa_allocate_exception(0x40uLL);
      sub_100001DC0(va);
      sub_100001FE8(va, "Unsupported value for crypto header field ", 42);
      v6 = *(v4 + 1);
      v7 = strlen(v6);
      sub_100001FE8(va, v6, v7);
      sub_10000EBDC(v5, va, 0xA1u);
  }

  operator delete[]();
}

void sub_100180580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  std::ios::~ios();
  if (v24)
  {
    __cxa_free_exception(v23);
  }

  __cxa_end_catch();
  operator delete[]();
}

void sub_1001805C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  operator delete[]();
}

void sub_100180608(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x100180610);
  }

  sub_100001A14(a1);
}

__n128 sub_100180624(uint64_t a1, uint64_t a2)
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

uint64_t sub_100180660(uint64_t a1, uint64_t a2)
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

const void **sub_100180704(uint64_t a1, char *a2)
{
  v3 = (*(*&a2[*(*a2 - 40)] + 16))(&a2[*(*a2 - 40)]);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v11 = sub_100001940(exception, "Image contains crypto format but info class is missing EncryptionInfo", 0x16u);
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
  sub_1000283C8(&v12);
  return sub_1000292AC(&v13);
}

void sub_10018083C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_1000283C8(&a9);
  sub_1000292AC(&a10);
  _Unwind_Resume(a1);
}

void *sub_100180860(void *a1, uint64_t *a2, void *a3)
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
  sub_100184330(v8, *a1, (a1 + 8));
  return a1;
}

void sub_100180928(_Unwind_Exception *a1)
{
  v6 = v5;
  v8 = *v6;
  if (*v6)
  {
    *(v2 + 48) = v8;
    operator delete(v8);
  }

  sub_100198BDC(v3, v1, v4);
  _Unwind_Resume(a1);
}

char **sub_100180964(char **a1, char **a2)
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

  sub_100180A48(*(v3 + 6), a1 + 2);
  v5 = *a1;
  if (*(*a1 + 4) == 5)
  {
    v6 = *(v5 + 8);
  }

  else
  {
    v6 = 8 * *(v5 + 3);
  }

  sub_100180A48(v6, a1 + 5);
  v8[0] = a1;
  v8[1] = a1;
  sub_100184330(v8, *a1, (a1 + 8));
  return a1;
}

void sub_1001809FC(_Unwind_Exception *exception_object)
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
    sub_10000E984(v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100180A48@<X0>(unint64_t a1@<X0>, char **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1 >= 8)
  {
    sub_1001843F8(a2, a1 >> 3);
    v4 = *a2;
    v3 = a2[1];
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_100176894(v4, v3 - v4);
}

void sub_100180A9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **sub_100180ABC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100184530(a2, a1[3] + a1[6] - (a1[2] + a1[5]) + 5);
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

void sub_100180C14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  v12 = *(v10 - 24);
  if (v12)
  {
    sub_10000E984(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100180C38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
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

  sub_100177E88(&v9, &v7);
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
  return sub_10003F610(&v9);
}

void sub_100180CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10003F610(va);
  _Unwind_Resume(a1);
}

void sub_100180CF0(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v17 = 0;
  v18 = 0;
  v15 = off_100222C38;
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
      sub_100180EC8(&v15, *(v8 + 4), *(v8 + 12));
      sub_10003AAD8(&v23, &v21);
      if (v22[640] == 1)
      {
        sub_10003F650(v22);
      }

      v8 = v24;
    }

    while (v23 != a3 || v24 != a3[1]);
    if (v26)
    {
      sub_10003F650(v25);
    }
  }

  v12 = v16;
  v11 = v17;
  *a4 = off_100222C38;
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
  v15 = off_100222C38;
  sub_1000285E0(&v16, v11);
}

void sub_100180E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (LOBYTE(STACK[0x560]) == 1)
  {
    sub_10003F650(v9 + 16);
  }

  sub_1001845A4(&a9);
  _Unwind_Resume(a1);
}

uint64_t **sub_100180EC8(uint64_t **result, unint64_t a2, uint64_t a3)
{
  v10[0] = a2;
  v10[1] = a3 + a2;
  v11 = 2;
  if (a3 + a2 > a2)
  {
    v3 = result;
    v4 = sub_1000DC038(result + 1, v10, v10);
    if (v5)
    {
      v12 = v4;
      sub_1000DC0D4(v3 + 1, &v12);
      return sub_1000DC1D4(v3 + 1, &v12);
    }

    else
    {
      v6 = sub_10012FC18((v3 + 1), v10);
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

      return sub_1000DBFF0(v3 + 1, v10, v8);
    }
  }

  return result;
}

double sub_100180F84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100180ABC(*(a1 + 32), &v4);
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_100180FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = malloc_type_valloc(0x4CuLL, 0x8B7C732DuLL);
  if (!v4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = std::bad_alloc::bad_alloc(exception);
  }

  v14 = off_100222DE8;
  *(&v16 + 1) = &v14;
  v21 = v4;
  sub_100015FBC(v22, &v14);
  sub_10001590C(&v14);
  sub_100180660(**(a1 + 32), v21);
  v5 = v21;
  v6 = *(sub_100195B38() + 1);
  v14 = v5;
  v15 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = xmmword_1001C9EE0;
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
    sub_10000E984(v15);
  }

  sub_100015888(&v21, 0);
  return sub_10001590C(v22);
}

void sub_100181174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  sub_100015888((v11 - 80), 0);
  sub_10001590C(v10 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001811A8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = **(a1 + 32);
  if (*(v5 + 72) >= 0x14u)
  {
    *&v19 = "diskimage_err> crypto::crypto_serializer_t::get_handle_for_new_entry(size_t, auth_entry_descriptor::mechanism_t)";
    *(&v19 + 1) = 68;
    v20 = 16;
    sub_10018142C(v21, &v19);
    sub_100001FE8(v23, "Cannot edit crypto header that has more than ", 45);
    std::ostream::operator<<();
    sub_100001FE8(v23, " auth entries", 13);
    std::ostream::~ostream();
    sub_100184970(v21);
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
    sub_100181598(v21, &v19);
    sub_100001FE8(v23, "No room to add new auth entry", 29);
    std::ostream::~ostream();
    sub_100185108(v21);
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
  return sub_100040370(v21);
}

void sub_100181408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1001816C0(va);
  _Unwind_Resume(a1);
}

void *sub_10018142C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10018CCE0(a1, a2);
  *a1 = off_100222E70;
  a1[45] = &off_100222F70;
  a1[46] = &off_100222F98;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100222E70;
  a1[45] = off_100222EF8;
  a1[46] = off_100222F20;
  return a1;
}

void sub_100181530(_Unwind_Exception *a1)
{
  sub_100184970(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100181554(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100184970(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100181598(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10018CDA8(a1, a2);
  *a1 = off_100223090;
  a1[45] = &off_100223190;
  a1[46] = &off_1002231B8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100223090;
  a1[45] = off_100223118;
  a1[46] = off_100223140;
  return a1;
}

void sub_10018169C(_Unwind_Exception *a1)
{
  sub_100185108(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001816C0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100185108(a1);
  std::ios::~ios();
  return a1;
}

uint64_t **sub_100181704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3 + a2;
  v5 = 2;
  return sub_10018CE70((a1 + 8), v4);
}

void sub_10018173C(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = a2[1] - *a2;
  sub_1001811A8(a1, v7, a3, v23);
  if (v25 == 1)
  {
    v8 = *a2;
    v9 = *&v23[4];
    v10 = *(sub_100195B38() + 1);
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
      sub_10000E984(v16);
    }

    if (v25)
    {
      sub_100040370(v23);
    }
  }

  else
  {
    *a4 = *v23;
    *(a4 + 32) = 0;
  }
}

void sub_100181884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_10000E984(a11);
  }

  if (*(v11 - 56) == 1)
  {
    sub_100040370(v11 - 88);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001818B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1000404D4(__p, 616);
  sub_1001774F8(a2, __p[0]);
  sub_10018173C(a1, __p, 1, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_10018192C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100181948(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1000404D4(__p, 564);
  sub_100176EAC(a2, __p[0]);
  sub_10018173C(a1, __p, 2, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1001819BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001819D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1000404D4(__p, 556);
  sub_100177A54(a2, __p[0]);
  sub_10018173C(a1, __p, 4, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_100181A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100181A68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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

  v22 = off_100222DE8;
  v25 = &v22;
  v30 = v9;
  sub_100015FBC(v31, &v22);
  sub_10001590C(&v22);
  v10 = *a2;
  if (*a2 != a2[1])
  {
    v11 = 0;
    do
    {
      sub_100177BC0(v10 + v11, v30 + v11);
      v11 += 20;
    }

    while (v10 + v11 != a2[1]);
  }

  v12 = v30;
  v13 = *(sub_100195B38() + 1);
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
    sub_10000E984(v23);
  }

  sub_100015888(&v30, 0);
  result = sub_10001590C(v31);
  if (v8 == v15)
  {
    v5 = *a2;
    v19 = a2[1];
LABEL_18:
    *(**(a1 + 32) + 72) = -858993459 * ((v19 - v5) >> 2);
    return sub_100180FD0(a1, a3);
  }

  return result;
}

void sub_100181C88(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (a10)
  {
    sub_10000E984(a10);
  }

  sub_100015888(va, 0);
  sub_10001590C(v22 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100181CC8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
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
  v15 = *(sub_100195B38() + 1);
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
    sub_10009386C(v26, a5);
    v27 = 1;
  }

  v16 = (*(*v14 + 128))(v14, &v20);
  if (v21)
  {
    sub_10000E984(v21);
  }

  if ((v16 & 0x80000000) != 0)
  {
    *&v18 = "crypto_format_backend::read_aligned(char *, ssize_t, uint64_t, const std::optional<sg_per_io_crypto> &)";
    *(&v18 + 1) = 35;
    v19 = 16;
    sub_100181F1C(&v20, &v18);
    sub_100001FE8(v29, "Crypto couldn't read from inner backend @ ", 42);
    std::ostream::operator<<();
    sub_100001FE8(v29, "/", 1);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_1001858A0(&v20);
    std::ios::~ios();
  }

  else
  {
    sub_100030DC4(&v20, a1 + 216);
    v28 = v11;
    v16 = sub_100146C4C(&v20, a2, a3, a4);
    sub_100030E70(&v20);
  }

  return v16;
}

void sub_100181ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100182044(va);
  _Unwind_Resume(a1);
}

void *sub_100181F1C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10018D02C(a1, a2);
  *a1 = off_1002232B0;
  a1[45] = &off_1002233B0;
  a1[46] = &off_1002233D8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002232B0;
  a1[45] = off_100223338;
  a1[46] = off_100223360;
  return a1;
}

void sub_100182020(_Unwind_Exception *a1)
{
  sub_1001858A0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100182044(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001858A0(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100182088(uint64_t a1, char **a2)
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
    result = sub_100181CC8(a1, v13, 1uLL, v8, v18);
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
    sub_10009386C(v18, (a2 + 6));
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v18[0] = 0;
  }

  v19 = v10;
  result = sub_100181CC8(a1, v4, v6 / v7, v8, v18);
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
    result = sub_100181CC8(a1, v17, 1uLL, v16 + v8, v18);
    if (!result)
    {
      memcpy(&v4[v16], *(a1 + 384), v12);
      return *(a2 + 4);
    }
  }

  return result;
}

uint64_t sub_100182214(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
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
  sub_100030DC4(&v21, a1 + 64);
  v29 = v12;
  v13 = sub_100146C4C(&v21, a2, a3, a4);
  sub_100030E70(&v21);
  if (!v13)
  {
    v14 = *(a1 + 24);
    v15 = v11 + a4;
    v16 = *(sub_100195B38() + 1);
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
      sub_10009386C(v27, a5);
      v28 = 1;
    }

    v13 = (*(*v14 + 120))(v14, &v21);
    if (v22)
    {
      sub_10000E984(v22);
    }

    if ((v13 & 0x80000000) != 0)
    {
      *&v19 = "crypto_format_backend::write_aligned(char *, ssize_t, uint64_t, const std::optional<sg_per_io_crypto> &)";
      *(&v19 + 1) = 36;
      v20 = 16;
      sub_100182464(&v21, &v19);
      sub_100001FE8(v30, "Crypto couldn't write to inner backend @ ", 41);
      std::ostream::operator<<();
      sub_100001FE8(v30, "/", 1);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_100186038(&v21);
      std::ios::~ios();
    }

    else
    {
      return 0;
    }
  }

  return v13;
}

void sub_100182420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10018258C(va);
  _Unwind_Resume(a1);
}

void *sub_100182464(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10018D0F4(a1, a2);
  *a1 = off_1002234D0;
  a1[45] = &off_1002235D0;
  a1[46] = &off_1002235F8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002234D0;
  a1[45] = off_100223558;
  a1[46] = off_100223580;
  return a1;
}

void sub_100182568(_Unwind_Exception *a1)
{
  sub_100186038(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10018258C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100186038(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1001825D0(uint64_t a1, char **a2)
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
    result = sub_100181CC8(a1, v13, 1uLL, v8, v22);
    if (result)
    {
      return result;
    }

    v14 = v6 >= (v7 - v9) ? v7 - v9 : v6;
    memcpy(*(a1 + 384), &v4[v9], v14);
    v15 = *(a1 + 384);
    v22[0] = 0;
    v23 = 0;
    result = sub_100182214(a1, v15, 1uLL, v8, v22);
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
          sub_100093838((a2 + 6), a2[3], v16, v21);
          sub_10009386C(v22, v21);
          v18 = 1;
        }

        else
        {
          v18 = 0;
          v22[0] = 0;
        }

        v23 = v18;
        result = sub_100182214(a1, v17, 1uLL, v8 + v16, v22);
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
      sub_10009386C(v22, (a2 + 6));
      v11 = 1;
    }

    else
    {
      v11 = 0;
      v22[0] = 0;
    }

    v23 = v11;
    result = sub_100182214(a1, v4, v6 / v7, v8, v22);
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
  result = sub_100181CC8(a1, v19, 1uLL, v8, v22);
  if (!result)
  {
    memcpy(*(a1 + 384), v4, v6);
    v20 = *(a1 + 384);
    v22[0] = 0;
    v23 = 0;
    result = sub_100182214(a1, v20, 1uLL, v8, v22);
    if (!result)
    {
      return *(a2 + 4);
    }
  }

  return result;
}

void sub_100182848(uint64_t a1)
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
            sub_10000E984(v39);
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

    sub_100030DC4(v57, a1 + v21);
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
    sub_100148204(*v20, v59);
    if (v8 == v6)
    {
      v24 = 0;
      goto LABEL_50;
    }

    sub_100030254(v46, v8);
    v24 = 0;
    v25 = v48 / v23 * v23;
    v26 = v8;
    v27 = v9;
    while (1)
    {
      sub_100030254(&v61, v26);
      if (!v60)
      {
        sub_10001583C();
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
        sub_10000E984(v62);
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
          sub_10000E984(v47);
        }

LABEL_50:
        sub_100147DC0(v53, v24, vm_page_size);
        sub_1000320D4(v59);
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

void sub_1001833F0(_Unwind_Exception *a1)
{
  sub_1001838DC(&STACK[0x278]);
  sub_100030E70(&STACK[0x3B0]);
  _Unwind_Resume(a1);
}

void sub_1001835B8(uint64_t a1)
{
  v2 = sub_100147780(a1);
  if ((v2 & 0x80000000) != 0)
  {

    sub_10018D458(a1 + 224, v2);
  }
}

void *sub_100183604(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10018D5A4(a1, a2);
  *a1 = off_1002236F0;
  a1[45] = &off_1002237F0;
  a1[46] = &off_100223818;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002236F0;
  a1[45] = off_100223778;
  a1[46] = off_1002237A0;
  return a1;
}

void sub_100183708(_Unwind_Exception *a1)
{
  sub_1001867D0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10018372C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001867D0(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100183770(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10018D66C(a1, a2);
  *a1 = off_100223910;
  a1[45] = &off_100223A10;
  a1[46] = &off_100223A38;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100223910;
  a1[45] = off_100223998;
  a1[46] = off_1002239C0;
  return a1;
}

void sub_100183874(_Unwind_Exception *a1)
{
  sub_100186F68(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100183898(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100186F68(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1001838DC(uint64_t a1)
{
  sub_100147730(a1);
  (*(**(a1 + 224) + 152))(*(a1 + 224));
  sub_10018D458(a1 + 224, *(a1 + 304));

  return sub_10003172C(a1);
}

uint64_t sub_100183954(uint64_t a1, uint64_t a2)
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

uint64_t sub_1001839A0(uint64_t a1, uint64_t a2)
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
    sub_100180660(**(a1 + 48), v18);
    v8 = *(sub_100195B38() + 1);
    v11 = v18;
    v12 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = xmmword_1001C9EE0;
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
      sub_10000E984(v12);
    }
  }

  return v7;
}

void sub_100183AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_10000E984(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_100183B24(void *a1, uint64_t a2, uint64_t *a3, _DWORD *a4)
{
  (*(**a2 + 80))(&v8);
  sub_1000440E0(a1, &v8);
  if (v9)
  {
    sub_10000E984(v9);
  }

  v6 = *a3;
  v7 = a3[1];
  a1[5] = off_100202EA0;
  a1[6] = v6;
  a1[7] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = *a3;
  }

  *a1 = off_100222C90;
  a1[5] = off_100222D68;
  sub_100183CCC(v6, 0);
  sub_100183CCC(*a3, 1);
  a1[46] = sub_100146634((a1 + 8));
  a1[47] = sub_100146634((a1 + 27));
  operator new[]();
}

void sub_100183C88(_Unwind_Exception *a1)
{
  sub_100030E70((v1 + 8));
  v1[5] = v2;
  v4 = v1[7];
  if (v4)
  {
    sub_10000E984(v4);
  }

  sub_10004413C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100183CCC(uint64_t a1, int a2)
{
  v4 = a1;
  v5 = a2;
  v6 = a1;
  v7 = a2;
  v2 = *(a1 + 80);
  if (v2 == -1)
  {
    sub_100015D74();
  }

  v8 = &v4;
  return (off_100223B18[v2])(&v8, a1 + 64);
}

void sub_100183D30(void *a1, uint64_t a2, void *a3)
{
  sub_1000440E0(a1, a3);
  v5 = *(a2 + 48);
  v6 = *(a2 + 56);
  a1[5] = off_100202EA0;
  a1[6] = v5;
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = a1[6];
  }

  *a1 = off_100222C90;
  a1[5] = off_100222D68;
  sub_100183CCC(v5, 0);
  sub_100183CCC(a1[6], 1);
  a1[46] = sub_100146634((a1 + 8));
  a1[47] = sub_100146634((a1 + 27));
  operator new[]();
}

void sub_100183E4C(_Unwind_Exception *a1)
{
  sub_100030E70((v1 + 8));
  v1[5] = v2;
  v4 = v1[7];
  if (v4)
  {
    sub_10000E984(v4);
  }

  sub_10004413C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100183ED4(uint64_t a1)
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

void sub_100183FAC(void *a1)
{
  sub_10018763C(a1);

  operator delete();
}

void sub_100183FF8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v13) = 0;
  v14 = 0;
  v16 = &v17;
  v17 = &v13;
  v15 = 0;
  sub_100030254(&v7, a2);
  sub_100030254(v9, &v7);
  v11 = v17;
  v5 = v17;
  v17 = 0;
  *(v5 + 2) = &v11;
  v12 = 0;
  sub_100187878((a1 + 400), v9);
  if (v11)
  {
    *(v11 + 2) = 0;
  }

  if (v10)
  {
    sub_10000E984(v10);
  }

  if (v8)
  {
    sub_10000E984(v8);
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

void sub_1001840E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a37)
  {
    *(a37 + 16) = 0;
  }

  if (a24)
  {
    sub_10000E984(a24);
  }

  if (a10)
  {
    sub_10000E984(a10);
  }

  v39 = *(v37 - 40);
  if (v39)
  {
    *(v39 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

void sub_100184134(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v13) = 0;
  v14 = 0;
  v16 = &v17;
  v17 = &v13;
  v15 = 0;
  sub_100030254(&v7, a2);
  sub_100030254(v9, &v7);
  v11 = v17;
  v5 = v17;
  v17 = 0;
  *(v5 + 2) = &v11;
  v12 = 1;
  sub_100187878((a1 + 400), v9);
  if (v11)
  {
    *(v11 + 2) = 0;
  }

  if (v10)
  {
    sub_10000E984(v10);
  }

  if (v8)
  {
    sub_10000E984(v8);
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

void sub_100184228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a37)
  {
    *(a37 + 16) = 0;
  }

  if (a24)
  {
    sub_10000E984(a24);
  }

  if (a10)
  {
    sub_10000E984(a10);
  }

  v39 = *(v37 - 40);
  if (v39)
  {
    *(v39 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

void sub_10018427C(uint64_t a1)
{
  sub_10018763C((a1 - 40));

  operator delete();
}

void sub_1001842B8(uint64_t a1)
{
  *a1 = off_100222C38;
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_10000E984(v2);
  }

  sub_1000285E0(a1 + 8, *(a1 + 16));

  operator delete();
}

void *sub_100184330@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) == 5)
  {
    v4 = *(*result + 48) - *(*result + 40);
    v8[0] = *(*result + 40);
    v8[1] = v4;
    sub_100146500(&v9, v8);
    sub_100145770(a3, &v9);
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

void sub_1001843CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

void sub_1001843F8(char **a1, size_t a2)
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
      sub_100015B70();
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

uint64_t *sub_100184530(uint64_t *a1, uint64_t a2)
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

void sub_100184588(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001845A4(uint64_t a1)
{
  *a1 = off_100222C38;
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_10000E984(v2);
  }

  sub_1000285E0(a1 + 8, *(a1 + 16));
  return a1;
}

uint64_t sub_10018468C(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_100222E48))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001846D8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100184970(v1);

  return std::ios::~ios();
}

uint64_t sub_100184724(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100184970(v1);

  return std::ios::~ios();
}

void sub_100184784(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100184970(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001847EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100184828(_BYTE *a1, int a2)
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

void sub_100184894(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100184970(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001848F8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100184970(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100184970(uint64_t a1)
{
  *a1 = &off_100223008;
  sub_100184ADC(a1);
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

uint64_t sub_100184ADC(uint64_t a1)
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
        sub_100184C8C((a1 + 72), __p);
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

void sub_100184C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100184C54(uint64_t a1)
{
  sub_100184970(a1);

  operator delete();
}

int *sub_100184C8C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100184E70(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100185108(v1);

  return std::ios::~ios();
}

uint64_t sub_100184EBC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100185108(v1);

  return std::ios::~ios();
}

void sub_100184F1C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100185108(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100184F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100184FC0(_BYTE *a1, int a2)
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

void sub_10018502C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100185108(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100185090(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100185108(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100185108(uint64_t a1)
{
  *a1 = &off_100223228;
  sub_100185274(a1);
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

uint64_t sub_100185274(uint64_t a1)
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
        sub_100185424((a1 + 72), __p);
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

void sub_1001853C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001853EC(uint64_t a1)
{
  sub_100185108(a1);

  operator delete();
}

int *sub_100185424(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100185608(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001858A0(v1);

  return std::ios::~ios();
}

uint64_t sub_100185654(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001858A0(v1);

  return std::ios::~ios();
}

void sub_1001856B4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001858A0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018571C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100185758(_BYTE *a1, int a2)
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

void sub_1001857C4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001858A0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100185828(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001858A0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001858A0(uint64_t a1)
{
  *a1 = &off_100223448;
  sub_100185A0C(a1);
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

uint64_t sub_100185A0C(uint64_t a1)
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
        sub_100185BBC((a1 + 72), __p);
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

void sub_100185B58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100185B84(uint64_t a1)
{
  sub_1001858A0(a1);

  operator delete();
}

int *sub_100185BBC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100185DA0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100186038(v1);

  return std::ios::~ios();
}

uint64_t sub_100185DEC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100186038(v1);

  return std::ios::~ios();
}

void sub_100185E4C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100186038(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100185EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100185EF0(_BYTE *a1, int a2)
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

void sub_100185F5C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100186038(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100185FC0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100186038(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100186038(uint64_t a1)
{
  *a1 = &off_100223668;
  sub_1001861A4(a1);
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

uint64_t sub_1001861A4(uint64_t a1)
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
        sub_100186354((a1 + 72), __p);
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

void sub_1001862F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018631C(uint64_t a1)
{
  sub_100186038(a1);

  operator delete();
}

int *sub_100186354(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100186538(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001867D0(v1);

  return std::ios::~ios();
}

uint64_t sub_100186584(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001867D0(v1);

  return std::ios::~ios();
}

void sub_1001865E4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001867D0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018664C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100186688(_BYTE *a1, int a2)
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

void sub_1001866F4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001867D0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100186758(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001867D0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001867D0(uint64_t a1)
{
  *a1 = &off_100223888;
  sub_10018693C(a1);
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

uint64_t sub_10018693C(uint64_t a1)
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
        sub_100186AEC((a1 + 72), __p);
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

void sub_100186A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100186AB4(uint64_t a1)
{
  sub_1001867D0(a1);

  operator delete();
}

int *sub_100186AEC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100186CD0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100186F68(v1);

  return std::ios::~ios();
}

uint64_t sub_100186D1C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100186F68(v1);

  return std::ios::~ios();
}

void sub_100186D7C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100186F68(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100186DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100186E20(_BYTE *a1, int a2)
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

void sub_100186E8C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100186F68(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100186EF0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100186F68(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100186F68(uint64_t a1)
{
  *a1 = &off_100223AA8;
  sub_1001870D4(a1);
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

uint64_t sub_1001870D4(uint64_t a1)
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
        sub_100187284((a1 + 72), __p);
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

void sub_100187220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018724C(uint64_t a1)
{
  sub_100186F68(a1);

  operator delete();
}

int *sub_100187284(uint64_t *a1, uint64_t *a2)
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

void sub_100187470(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  v7 = v5[3] - v5[2];
  v8[0] = v5[2];
  v8[1] = v7;
  sub_100145D00(v9, v6, v8, a2, *(*v5 + 52));
  sub_100145E3C(a3, v9);
  *(a3 + 144) = 1;
  v9[0] = off_10021B3A0;
  sub_100030D98(v12);
  v9[0] = off_1001F8FA0;
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void sub_100187534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100030D24(va);
  _Unwind_Resume(a1);
}

void sub_100187548(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[2];
  v7 = *(*a1 + 24) - *(*a1 + 16);
  v9[0] = *(*a1 + 16);
  v9[1] = v7;
  sub_100145774(v10, v6, v9, a2, *(*v5 + 52));
  sub_1001458C8(a3, v10);
  *(a3 + 144) = 0;
  v10[0] = off_10021B378;
  sub_100030CF8(&v14);
  v8 = v13;
  v13 = 0;
  if (v8)
  {
    operator delete[]();
  }

  v10[0] = off_1001F8FA0;
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_100187628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100030C64(va);
  _Unwind_Resume(a1);
}

void *sub_10018763C(void *a1)
{
  *a1 = off_100222C90;
  a1[5] = off_100222D68;
  if (a1[48])
  {
    operator delete[]();
  }

  sub_10018772C(a1 + 50);
  sub_100030E70((a1 + 27));
  sub_100030E70((a1 + 8));
  a1[5] = off_100202EA0;
  v2 = a1[7];
  if (v2)
  {
    sub_10000E984(v2);
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

uint64_t sub_10018772C(void *a1)
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
          sub_10000E984(v10);
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

  return sub_10003363C(a1);
}

uint64_t sub_100187878(unint64_t *a1, uint64_t a2)
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
    sub_100187964(a1);
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

  v9 = sub_100030464(v8, a2);
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

void sub_100187964(unint64_t *a1)
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
    sub_100017300(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_100074E98(a1, &v9);
}

void sub_100187AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_100187B38(void *a1, uint64_t a2)
{
  sub_1000A5780((a1 + 2), a2);
  *a1 = off_100223BD8;
  a1[2] = off_100223C40;
  a1[1] = off_100223C00;
  return a1;
}

std::exception *sub_100187BBC(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_1002084E0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
  return a1;
}

void sub_100187C38(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_1002084E0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_100187CD4(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_1002084E0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_100187D58(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_1002084E0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_100187DF8(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v2 = v1 + 2;
  v1[2].__vftable = off_1002084E0;
  v3 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_100187E90(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1[2].__vftable = off_1002084E0;
  v2 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(v1 + 2);

  operator delete();
}

void *sub_100187F40(void *a1, uint64_t a2)
{
  sub_1000A5780((a1 + 2), a2);
  *a1 = off_100223D18;
  a1[2] = off_100223D80;
  a1[1] = off_100223D40;
  return a1;
}

std::exception *sub_100187FC4(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_1002084E0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
  return a1;
}

void sub_100188040(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_1002084E0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_1001880DC(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_1002084E0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_100188160(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_1002084E0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_100188200(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v2 = v1 + 2;
  v1[2].__vftable = off_1002084E0;
  v3 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_100188298(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1[2].__vftable = off_1002084E0;
  v2 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(v1 + 2);

  operator delete();
}

void *sub_1001883BC(void *a1, uint64_t *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100223DB8;
  sub_1001884B4(a1 + 3, a2, a3);
  return a1;
}

void sub_100188438(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100223DB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1001884B4(void *a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = off_100223E08;
    a1[1] = v5;
    a1[2] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *a1 = off_100223E08;
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
    sub_10000E984(v4);
  }

  return a1;
}

void sub_100188918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete[]();
}

void sub_1001889AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v4 = **a3;
  switch(v4)
  {
    case 4:
      sub_100189948(a2, a3, x8_0);
      break;
    case 2:
      sub_1001898AC(a2, a3, x8_0);
      break;
    case 1:
      sub_100189810(a2, a3, x8_0);
      break;
    default:
      sub_1001899E4(a1, a2, a3, x8_0);
      break;
  }
}

uint64_t sub_1001889E4(uint64_t a1, int a2)
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

void sub_100188A14(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
      sub_100088D58(v16, &v13);
      sub_100001FE8(v17, "crypto_format: cookie differs", 29);
      std::ostream::~ostream();
      sub_10008F470(v16);
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
    sub_10018C314(v16, &v15);
    sub_100001FE8(v17, "crypto_format: blob length differs", 34);
    std::ostream::~ostream();
    sub_10018C548(v16);
    std::ios::~ios();
    v12 = std::generic_category();
    *a3 = 35;
    *(a3 + 8) = v12;
    *(a3 + 16) = 0;
  }
}

void sub_100188BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  sub_100088E80(&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_100188BF4(void *a1)
{
  *a1 = off_100223E08;
  v2 = a1[4];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_10000E984(v3);
  }

  return a1;
}

void sub_100188C4C(void *a1)
{
  *a1 = off_100223E08;
  v2 = a1[4];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_10000E984(v3);
  }

  operator delete();
}

void sub_100188CC4(void *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 2) < a2)
  {
    if (a2 < 0xCCCCCCCCCCCCCCDLL)
    {
      sub_10017AAF4(a1, a2);
    }

    sub_100015B70();
  }
}

void *sub_100188D80(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100188EEC(a1, a2);
  *a1 = off_100223E80;
  a1[45] = &off_100223F80;
  a1[46] = &off_100223FA8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100223E80;
  a1[45] = off_100223F08;
  a1[46] = off_100223F30;
  return a1;
}

void sub_100188E84(_Unwind_Exception *a1)
{
  sub_100188FB4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100188EA8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100188FB4(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100188EEC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100224018;
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

void sub_100188F9C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100188FB4(uint64_t a1)
{
  *a1 = &off_100224018;
  sub_1001893F4(a1);
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

void sub_100189120(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100188FB4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100189188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001891C4(_BYTE *a1, int a2)
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

uint64_t sub_100189230(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100188FB4(v1);

  return std::ios::~ios();
}

void sub_10018927C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100188FB4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001892E0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100188FB4(v1);

  return std::ios::~ios();
}

void sub_100189340(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100188FB4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001893BC(uint64_t a1)
{
  sub_100188FB4(a1);

  operator delete();
}

uint64_t sub_1001893F4(uint64_t a1)
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
        sub_100189568((a1 + 72), __p);
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

void sub_100189540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100189568(uint64_t *a1, uint64_t *a2)
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

uint64_t *sub_10018974C(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001897C8(result, a4);
  }

  return result;
}

void sub_1001897AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001897C8(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    sub_10017AAF4(a1, a2);
  }

  sub_100015B70();
}

uint64_t sub_100189810@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v5[0] = off_1002244D8;
  v5[1] = a2;
  v5[3] = v5;
  sub_100189C10(a3, 0x268uLL, x8_0);
  return sub_10018B59C(v5);
}

void sub_100189898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10018B59C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001898AC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v5[0] = off_100224568;
  v5[1] = a2;
  v5[3] = v5;
  sub_100189C10(a3, 0x234uLL, x8_0);
  return sub_10018B59C(v5);
}

void sub_100189934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10018B59C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100189948@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v5[0] = off_1002245E8;
  v5[1] = a2;
  v5[3] = v5;
  sub_100189C10(a3, 0x22CuLL, x8_0);
  return sub_10018B59C(v5);
}

void sub_1001899D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10018B59C(va);
  _Unwind_Resume(a1);
}

void sub_1001899E4(uint64_t a1@<X0>, uint64_t a2@<X1>, int **a3@<X2>, uint64_t a4@<X8>)
{
  sub_1000404D4(&v30, *(*a3 + 3));
  v8 = *(a1 + 24);
  v9 = v30;
  v10 = *(*a3 + 3);
  v11 = *(*a3 + 1);
  v12 = *(sub_100195B38() + 1);
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
    sub_10000E984(v22);
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
    sub_1000403D4((a4 + 16), v16, v15, v15 - v16);
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
    sub_10018B948(&v21, &v19);
    sub_100001FE8(v29, "Can't read custom encryption entry header, error ", 49);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10018BB7C(&v21);
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

void sub_100189BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14)
{
  v16 = *(v14 - 88);
  if (v16)
  {
    *(v14 - 80) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100189C10@<X0>(uint64_t a2@<X2>, size_t a3@<X3>, uint64_t a5@<X8>)
{
  if (*(*a2 + 12) == a3)
  {
    operator new[]();
  }

  *&v8 = "diskimage_err> crypto::crypto_format_auth_table_reader::_read_auth_entry_specialized(const auth_table &, const std::vector<auth_entry_descriptor>::const_iterator &, size_t, const std::function<auth_table::entry_variant (const char *)>)";
  *(&v8 + 1) = 219;
  v9 = 16;
  sub_100189FFC(&v10, &v8);
  sub_100001FE8(v11, "encryption: header size mismatch", 32);
  std::ostream::~ostream();
  sub_10018A3F0(&v10);
  std::ios::~ios();
  result = make_error_code(161);
  *a5 = result;
  *(a5 + 8) = v7;
  *(a5 + 640) = 0;
  return result;
}

void *sub_100189FFC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10018A328(a1, a2);
  *a1 = off_1002240A0;
  a1[45] = &off_1002241A0;
  a1[46] = &off_1002241C8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002240A0;
  a1[45] = off_100224128;
  a1[46] = off_100224150;
  return a1;
}

void sub_10018A100(_Unwind_Exception *a1)
{
  sub_10018A3F0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10018A124(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018A3F0(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10018A168(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10018AB88(a1, a2);
  *a1 = off_1002242C0;
  a1[45] = &off_1002243C0;
  a1[46] = &off_1002243E8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002242C0;
  a1[45] = off_100224348;
  a1[46] = off_100224370;
  return a1;
}

void sub_10018A26C(_Unwind_Exception *a1)
{
  sub_10018AC50(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10018A290(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018AC50(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10018A2D4(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10001583C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_10018A328(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100224238;
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

void sub_10018A3D8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10018A3F0(uint64_t a1)
{
  *a1 = &off_100224238;
  sub_10018A830(a1);
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

void sub_10018A55C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018A3F0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018A5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10018A600(_BYTE *a1, int a2)
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

uint64_t sub_10018A66C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018A3F0(v1);

  return std::ios::~ios();
}

void sub_10018A6B8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018A3F0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018A71C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018A3F0(v1);

  return std::ios::~ios();
}

void sub_10018A77C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018A3F0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10018A7F8(uint64_t a1)
{
  sub_10018A3F0(a1);

  operator delete();
}

uint64_t sub_10018A830(uint64_t a1)
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
        sub_10018A9A4((a1 + 72), __p);
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

void sub_10018A97C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10018A9A4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10018AB88(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100224458;
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

void sub_10018AC38(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10018AC50(uint64_t a1)
{
  *a1 = &off_100224458;
  sub_10018B090(a1);
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

void sub_10018ADBC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018AC50(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018AE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10018AE60(_BYTE *a1, int a2)
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

uint64_t sub_10018AECC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018AC50(v1);

  return std::ios::~ios();
}

void sub_10018AF18(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018AC50(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018AF7C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018AC50(v1);

  return std::ios::~ios();
}

void sub_10018AFDC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018AC50(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10018B058(uint64_t a1)
{
  sub_10018AC50(a1);

  operator delete();
}

uint64_t sub_10018B090(uint64_t a1)
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
        sub_10018B204((a1 + 72), __p);
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

void sub_10018B1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10018B204(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10018B458(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002244D8;
  a2[1] = v2;
  return result;
}

void *sub_10018B484@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1001774F4(v10, *a2);
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

uint64_t sub_10018B550(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10018B59C(uint64_t a1)
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

uint64_t sub_10018B68C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100224568;
  a2[1] = v2;
  return result;
}

void *sub_10018B6B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_100176D48(&v8, *a2);
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

uint64_t sub_10018B768(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10018B824(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002245E8;
  a2[1] = v2;
  return result;
}

void *sub_10018B850@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_100177A50(&v8, *a2);
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

uint64_t sub_10018B8FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10018B948(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10018BAB4(a1, a2);
  *a1 = off_100224670;
  a1[45] = &off_100224770;
  a1[46] = &off_100224798;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100224670;
  a1[45] = off_1002246F8;
  a1[46] = off_100224720;
  return a1;
}

void sub_10018BA4C(_Unwind_Exception *a1)
{
  sub_10018BB7C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10018BA70(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018BB7C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10018BAB4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100224808;
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

void sub_10018BB64(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10018BB7C(uint64_t a1)
{
  *a1 = &off_100224808;
  sub_10018BFBC(a1);
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

void sub_10018BCE8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018BB7C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018BD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10018BD8C(_BYTE *a1, int a2)
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

uint64_t sub_10018BDF8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018BB7C(v1);

  return std::ios::~ios();
}

void sub_10018BE44(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018BB7C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018BEA8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018BB7C(v1);

  return std::ios::~ios();
}

void sub_10018BF08(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018BB7C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10018BF84(uint64_t a1)
{
  sub_10018BB7C(a1);

  operator delete();
}

uint64_t sub_10018BFBC(uint64_t a1)
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
        sub_10018C130((a1 + 72), __p);
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

void sub_10018C108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10018C130(uint64_t *a1, uint64_t *a2)
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

void *sub_10018C314(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10018C480(a1, a2);
  *a1 = off_100224890;
  a1[45] = &off_100224990;
  a1[46] = &off_1002249B8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100224890;
  a1[45] = off_100224918;
  a1[46] = off_100224940;
  return a1;
}

void sub_10018C418(_Unwind_Exception *a1)
{
  sub_10018C548(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10018C43C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018C548(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10018C480(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100224A28;
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

void sub_10018C530(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10018C548(uint64_t a1)
{
  *a1 = &off_100224A28;
  sub_10018C988(a1);
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

void sub_10018C6B4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018C548(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018C71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10018C758(_BYTE *a1, int a2)
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

uint64_t sub_10018C7C4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018C548(v1);

  return std::ios::~ios();
}

void sub_10018C810(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018C548(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018C874(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018C548(v1);

  return std::ios::~ios();
}

void sub_10018C8D4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018C548(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10018C950(uint64_t a1)
{
  sub_10018C548(a1);

  operator delete();
}

uint64_t sub_10018C988(uint64_t a1)
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
        sub_10018CAFC((a1 + 72), __p);
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

void sub_10018CAD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10018CAFC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10018CCE0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100223008;
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

void sub_10018CD90(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10018CDA8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100223228;
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

void sub_10018CE58(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t **sub_10018CE70(uint64_t **a1, uint64_t a2)
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

  v7 = sub_1000DC688(a1, a2);
  v8 = sub_10012FC18(a1, a2);
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
  sub_1000DC500(&v19, a2, &v21);
  v19 = *(v11 + 32);
  v20 = *(v11 + 48);
  sub_1000DC5C4(&v19, a2, &v17);
  v19 = v17;
  LOBYTE(v20) = v18;
  sub_1000DBF90(a1, v7, v9);
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
    sub_1000DC038(a1, &v21, &v21);
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
    sub_1000DC038(a1, &v19, &v19);
  }

  return a1;
}

uint64_t sub_10018D02C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100223448;
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

void sub_10018D0DC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10018D0F4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100223668;
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

void sub_10018D1A4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_10018D1BC(void *result, void **a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
      result = sub_100147EF8(v10, v5, v7);
      if (result != v5[2])
      {
        result = sub_100148248(v10, v5, result, v7);
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

uint64_t sub_10018D2FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void *sub_10018D3D0(uint64_t a1, void **a2, const void **a3, size_t *a4)
{
  v4 = *a3;
  memcpy(*a2, *a3, *a4);
  return v4;
}

uint64_t sub_10018D40C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10018D458(uint64_t a1, uint64_t a2)
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
      sub_100166F38(v9, &v7);
      sub_100001FE8(v10, "diskimageuio: report err ", 25);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_10016716C(v9);
      std::ios::~ios();
      v5 = *v4;
      *v5 = *(a1 + 80);
      *(v5 + 4) = 1;
      sub_100032F74(v4);
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

void sub_10018D590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100167060(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10018D5A4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100223888;
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

void sub_10018D654(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10018D66C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100223AA8;
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

void sub_10018D71C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_10018D7C0(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1002002A0;
  sub_100183D30(a1 + 3, a2, a3);
}

void sub_10018D81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, off_t a5, char a6)
{
  *a1 = a3;
  *(a1 + 8) = 0;
  v6 = *a4;
  *a4 = 0;
  *(a1 + 16) = v6;
  *(a1 + 24) = 1;
  operator new();
}

void sub_10018D968(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t sub_10018DA18(uint64_t a1)
{
  v2 = (*(*(a1 + 8) + 16) + 7) >> 3;
  v3 = (*(**(a1 + 16) + 40))(*(a1 + 16));
  v4 = v3 == v2 || v3 == v2 + 16;
  v5 = v4;
  if (v4)
  {
    v6 = v3 - v2;
    v7 = *(*(a1 + 8) + 8);
    v8 = *(sub_100195B38() + 1);
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
      sub_100001DC0(v17);
      sub_100001FE8(v17, "Failed reading ", 15);
      sub_10018F0BC(v17, a1);
      sub_10000EBDC(exception, v17, v9);
    }

    if (sub_1000E9608())
    {
      *&v15 = "sparse_bundles::mapped_blocks_t::load_file()";
      *(&v15 + 1) = 42;
      v16 = 2;
      sub_10018E32C(v17, &v15);
      sub_100001FE8(v18, "Found a valid file for ", 23);
      sub_10018F0BC(v18, a1);
      std::ostream::~ostream();
      sub_10018F3F0(v17);
      std::ios::~ios();
    }

    *(a1 + 24) = 0;
    if (*(&v19 + 1))
    {
      sub_10000E984(*(&v19 + 1));
    }
  }

  else if (v3)
  {
    *&v19 = "sparse_bundles::mapped_blocks_t::load_file()";
    *(&v19 + 1) = 42;
    LODWORD(v20) = 16;
    sub_10018E498(v17, &v19);
    sub_100001FE8(v18, "invalid file size for ", 22);
    sub_10018F0BC(v18, a1);
    sub_100001FE8(v18, ", current is ", 13);
    std::ostream::operator<<();
    sub_100001FE8(v18, " while expected is ", 19);
    std::ostream::operator<<();
    sub_100001FE8(v18, ", truncating", 12);
    std::ostream::~ostream();
    sub_10018FB88(v17);
    std::ios::~ios();
    v10 = (*(**(a1 + 16) + 56))(*(a1 + 16), 0);
    if (v10)
    {
      v11 = v10;
      v12 = __cxa_allocate_exception(0x40uLL);
      sub_100001DC0(v17);
      sub_100001FE8(v17, "Failed truncating ", 18);
      sub_10018F0BC(v17, a1);
      sub_10000EBDC(v12, v17, v11);
    }
  }

  else if (sub_1000E9608())
  {
    *&v19 = "sparse_bundles::mapped_blocks_t::load_file()";
    *(&v19 + 1) = 42;
    LODWORD(v20) = 2;
    sub_10018E604(v17, &v19);
    sub_100001FE8(v18, "file of ", 8);
    sub_10018F0BC(v18, a1);
    sub_100001FE8(v18, " was just created (truncated)", 29);
    std::ostream::~ostream();
    sub_100190320(v17);
    std::ios::~ios();
  }

  return v5;
}

void sub_10018DDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10000C8C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10018DE98(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = a2 + a3 - 1;
  result = sub_1000E9608();
  if (result)
  {
    *&v10 = "sparse_bundles::mapped_blocks_t::map_range(uint64_t, uint64_t)";
    *(&v10 + 1) = 42;
    v11 = 2;
    sub_10018ED18(v12, &v10);
    sub_10018F0BC(v13, a1);
    sub_100001FE8(v13, " - map_range: [", 15);
    v8 = v13[0];
    *(&v13[1] + *(v13[0] - 24)) |= 0x200u;
    *(&v13[1] + *(v8 - 24)) = *(&v13[1] + *(v8 - 24)) & 0xFFFFFFB5 | 8;
    std::ostream::operator<<();
    sub_100001FE8(v13, "-", 1);
    std::ostream::operator<<();
    v9 = v13[0];
    *(&v13[1] + *(v13[0] - 24)) &= ~0x200u;
    *(&v13[1] + *(v9 - 24)) = *(&v13[1] + *(v9 - 24)) & 0xFFFFFFB5 | 2;
    sub_100001FE8(v13, "]", 1);
    std::ostream::~ostream();
    sub_1001919E8(v12);
    result = std::ios::~ios();
  }

  if (a3)
  {
    result = sub_1000BA0E4(*(a1 + 8), a2 >> 12, v6 >> 12, 1);
    if (result)
    {
      *(a1 + 24) = 1;
    }
  }

  return result;
}

void sub_10018E094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10018EE40(va);
  _Unwind_Resume(a1);
}

void sub_10018E0A8(void *a1)
{
  (***a1)(*a1);
  sub_10004D164(&__p);
  operator new();
}

void sub_10018E170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018E258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_100198C18();
  }

  _Unwind_Resume(exception_object);
}

void sub_10018E310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_100198C18();
  }

  _Unwind_Resume(exception_object);
}

void *sub_10018E32C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100191EE8(a1, a2);
  *a1 = off_100224BB0;
  a1[45] = &off_100224CB0;
  a1[46] = &off_100224CD8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100224BB0;
  a1[45] = off_100224C38;
  a1[46] = off_100224C60;
  return a1;
}

void sub_10018E430(_Unwind_Exception *a1)
{
  sub_10018F3F0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10018E454(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018F3F0(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10018E498(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100191FB0(a1, a2);
  *a1 = off_100224DD0;
  a1[45] = &off_100224ED0;
  a1[46] = &off_100224EF8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100224DD0;
  a1[45] = off_100224E58;
  a1[46] = off_100224E80;
  return a1;
}

void sub_10018E59C(_Unwind_Exception *a1)
{
  sub_10018FB88(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10018E5C0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018FB88(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10018E604(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100192078(a1, a2);
  *a1 = off_100224FF0;
  a1[45] = &off_1002250F0;
  a1[46] = &off_100225118;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100224FF0;
  a1[45] = off_100225078;
  a1[46] = off_1002250A0;
  return a1;
}

void sub_10018E708(_Unwind_Exception *a1)
{
  sub_100190320(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10018E72C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100190320(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10018E77C(uint64_t a1)
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
      v7 = *(sub_100195B38() + 1);
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
        sub_10000E984(v12);
      }

      if (v4 == v3)
      {
        v3 = (*(**(a1 + 16) + 16))(*(a1 + 16), 1);
        if (v3)
        {
          *(a1 + 24) = 1;
        }

        if (sub_1000E9608())
        {
          *&v9 = "sparse_bundles::mapped_blocks_t::flush()";
          *(&v9 + 1) = 38;
          v10 = 2;
          sub_10018EBAC(&v11, &v9);
          sub_100001FE8(v19, "Flushed ", 8);
          sub_10018F0BC(v19, a1);
          sub_100001FE8(v19, ", res=", 6);
          std::ostream::operator<<();
          std::ostream::~ostream();
          sub_100191250(&v11);
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
    if (sub_1000E9608())
    {
      *&v9 = "sparse_bundles::mapped_blocks_t::flush()";
      *(&v9 + 1) = 38;
      v10 = 2;
      sub_10018EA40(&v11, &v9);
      sub_10018F0BC(v19, a1);
      sub_100001FE8(v19, " is clean, skipping flush", 25);
      std::ostream::~ostream();
      sub_100190AB8(&v11);
      std::ios::~ios();
    }

    return 0;
  }

  return v3;
}

void sub_10018EA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10018ECD4(va);
  _Unwind_Resume(a1);
}

void *sub_10018EA40(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100192140(a1, a2);
  *a1 = off_100225210;
  a1[45] = &off_100225310;
  a1[46] = &off_100225338;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100225210;
  a1[45] = off_100225298;
  a1[46] = off_1002252C0;
  return a1;
}

void sub_10018EB44(_Unwind_Exception *a1)
{
  sub_100190AB8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10018EB68(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100190AB8(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10018EBAC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100192208(a1, a2);
  *a1 = off_100225430;
  a1[45] = &off_100225530;
  a1[46] = &off_100225558;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100225430;
  a1[45] = off_1002254B8;
  a1[46] = off_1002254E0;
  return a1;
}

void sub_10018ECB0(_Unwind_Exception *a1)
{
  sub_100191250(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10018ECD4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100191250(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10018ED18(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001922D0(a1, a2);
  *a1 = off_100225650;
  a1[45] = &off_100225750;
  a1[46] = &off_100225778;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100225650;
  a1[45] = off_1002256D8;
  a1[46] = off_100225700;
  return a1;
}

void sub_10018EE1C(_Unwind_Exception *a1)
{
  sub_1001919E8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10018EE40(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001919E8(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10018EE84(uint64_t a1, unint64_t a2, unint64_t a3)
{
  result = sub_1000E9608();
  if (result)
  {
    *&v11 = "sparse_bundles::mapped_blocks_t::unmap_interval(uint64_t, uint64_t)";
    *(&v11 + 1) = 47;
    v12 = 2;
    sub_100013BCC(v13, &v11);
    sub_10018F0BC(v14, a1);
    sub_100001FE8(v14, " - unmap_range: [", 17);
    v7 = v14[0];
    *(&v14[1] + *(v14[0] - 24)) |= 0x200u;
    *(&v14[1] + *(v7 - 24)) = *(&v14[1] + *(v7 - 24)) & 0xFFFFFFB5 | 8;
    std::ostream::operator<<();
    sub_100001FE8(v14, "-", 1);
    std::ostream::operator<<();
    v8 = v14[0];
    *(&v14[1] + *(v14[0] - 24)) &= ~0x200u;
    *(&v14[1] + *(v8 - 24)) = *(&v14[1] + *(v8 - 24)) & 0xFFFFFFB5 | 2;
    sub_100001FE8(v14, "]", 1);
    std::ostream::~ostream();
    sub_100013E00(v13);
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

    result = sub_1000BA0E4(*(a1 + 8), v9, v10, 0);
    if (result)
    {
      *(a1 + 24) = 1;
    }
  }

  return result;
}

void sub_10018F0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100013CF4(va);
  _Unwind_Resume(a1);
}

void *sub_10018F0BC(void *a1, void *a2)
{
  v3 = sub_100001FE8(a1, "mapped blocks of band ", 22);
  *(v3 + *(*v3 - 24) + 8) = *(v3 + *(*v3 - 24) + 8) & 0xFFFFFFB5 | 8;
  v4 = std::ostream::operator<<();
  *(v4 + *(*v4 - 24) + 8) = *(v4 + *(*v4 - 24) + 8) & 0xFFFFFFB5 | 2;
  return a1;
}

uint64_t sub_10018F158(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018F3F0(v1);

  return std::ios::~ios();
}

uint64_t sub_10018F1A4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018F3F0(v1);

  return std::ios::~ios();
}

void sub_10018F204(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018F3F0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018F26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10018F2A8(_BYTE *a1, int a2)
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

void sub_10018F314(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018F3F0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10018F378(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018F3F0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018F3F0(uint64_t a1)
{
  *a1 = &off_100224D48;
  sub_10018F55C(a1);
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

uint64_t sub_10018F55C(uint64_t a1)
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
        sub_10018F70C((a1 + 72), __p);
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

void sub_10018F6A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018F6D4(uint64_t a1)
{
  sub_10018F3F0(a1);

  operator delete();
}

int *sub_10018F70C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10018F8F0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018FB88(v1);

  return std::ios::~ios();
}

uint64_t sub_10018F93C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018FB88(v1);

  return std::ios::~ios();
}

void sub_10018F99C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10018FB88(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018FA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10018FA40(_BYTE *a1, int a2)
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

void sub_10018FAAC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10018FB88(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10018FB10(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10018FB88(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018FB88(uint64_t a1)
{
  *a1 = &off_100224F68;
  sub_10018FCF4(a1);
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

uint64_t sub_10018FCF4(uint64_t a1)
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
        sub_10018FEA4((a1 + 72), __p);
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

void sub_10018FE40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018FE6C(uint64_t a1)
{
  sub_10018FB88(a1);

  operator delete();
}

int *sub_10018FEA4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100190088(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100190320(v1);

  return std::ios::~ios();
}

uint64_t sub_1001900D4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100190320(v1);

  return std::ios::~ios();
}

void sub_100190134(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100190320(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10019019C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001901D8(_BYTE *a1, int a2)
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

void sub_100190244(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100190320(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001902A8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100190320(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100190320(uint64_t a1)
{
  *a1 = &off_100225188;
  sub_10019048C(a1);
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

uint64_t sub_10019048C(uint64_t a1)
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
        sub_10019063C((a1 + 72), __p);
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

void sub_1001905D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100190604(uint64_t a1)
{
  sub_100190320(a1);

  operator delete();
}

int *sub_10019063C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100190820(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100190AB8(v1);

  return std::ios::~ios();
}

uint64_t sub_10019086C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100190AB8(v1);

  return std::ios::~ios();
}

void sub_1001908CC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100190AB8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100190934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100190970(_BYTE *a1, int a2)
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

void sub_1001909DC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100190AB8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100190A40(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100190AB8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100190AB8(uint64_t a1)
{
  *a1 = &off_1002253A8;
  sub_100190C24(a1);
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

uint64_t sub_100190C24(uint64_t a1)
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
        sub_100190DD4((a1 + 72), __p);
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

void sub_100190D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100190D9C(uint64_t a1)
{
  sub_100190AB8(a1);

  operator delete();
}

int *sub_100190DD4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100190FB8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100191250(v1);

  return std::ios::~ios();
}

uint64_t sub_100191004(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100191250(v1);

  return std::ios::~ios();
}

void sub_100191064(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100191250(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001910CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100191108(_BYTE *a1, int a2)
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

void sub_100191174(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100191250(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001911D8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100191250(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100191250(uint64_t a1)
{
  *a1 = &off_1002255C8;
  sub_1001913BC(a1);
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

uint64_t sub_1001913BC(uint64_t a1)
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
        sub_10019156C((a1 + 72), __p);
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

void sub_100191508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100191534(uint64_t a1)
{
  sub_100191250(a1);

  operator delete();
}

int *sub_10019156C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100191750(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001919E8(v1);

  return std::ios::~ios();
}

uint64_t sub_10019179C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001919E8(v1);

  return std::ios::~ios();
}

void sub_1001917FC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001919E8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100191864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001918A0(_BYTE *a1, int a2)
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

void sub_10019190C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001919E8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100191970(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001919E8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001919E8(uint64_t a1)
{
  *a1 = &off_1002257E8;
  sub_100191B54(a1);
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

uint64_t sub_100191B54(uint64_t a1)
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
        sub_100191D04((a1 + 72), __p);
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

void sub_100191CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100191CCC(uint64_t a1)
{
  sub_1001919E8(a1);

  operator delete();
}

int *sub_100191D04(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100191EE8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100224D48;
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

void sub_100191F98(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100191FB0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100224F68;
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

void sub_100192060(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100192078(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100225188;
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

void sub_100192128(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100192140(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002253A8;
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

void sub_1001921F0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100192208(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002255C8;
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

void sub_1001922B8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001922D0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_1002257E8;
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

void sub_100192380(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

char *sub_100192398(unint64_t a1)
{
  if ((atomic_load_explicit(byte_100235470, memory_order_acquire) & 1) == 0)
  {
    v4 = a1;
    sub_100198C4C();
    a1 = v4;
  }

  v1 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ HIDWORD(a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v1 >> 47) ^ v1);
  return &unk_100234C50 + 64 * ((9 * ((v2 >> 47) ^ v2)) & 0xF);
}

char *sub_100192424(unint64_t a1)
{
  if ((atomic_load_explicit(byte_100235478, memory_order_acquire) & 1) == 0)
  {
    v4 = a1;
    sub_100198CB0();
    a1 = v4;
  }

  v1 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ HIDWORD(a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v1 >> 47) ^ v1);
  return &unk_100235050 + 48 * ((9 * ((v2 >> 47) ^ v2)) & 0xF);
}

uint64_t sub_1001924B4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *result = off_100225868;
  *(result + 8) = v2;
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1001924E4(uint64_t a1)
{
  *a1 = off_100225868;
  if (*(a1 + 16) == 1)
  {
    v2 = *(a1 + 8);
    if (atomic_fetch_add_explicit(*(a1 + 8), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) == 1)
    {
      sub_1001926A8(v2);
    }
  }

  return a1;
}

void sub_100192550(uint64_t a1)
{
  sub_1001924E4(a1);

  operator delete();
}

atomic_ullong *sub_100192588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  result = *(a1 + 8);
  if (v6 == 1)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) == 1)
    {
      sub_1001926A8(result);
    }

    *(a1 + 16) = 0;
    v8 = *(a1 + 8);

    return sub_1000FB5C8(v8, a2, a3);
  }

  else
  {
    *(a3 + 16) = 0;
    *a3 = off_100225888;
    *(a3 + 8) = result;
    *(a3 + 24) = a2;
  }

  return result;
}

uint64_t sub_100192630(uint64_t a1)
{
  *a1 = off_100225888;
  if (*(a1 + 16) == 1)
  {
    atomic_store(*(a1 + 24), *(a1 + 8));
    sub_1001926A8(*(a1 + 8));
  }

  *(a1 + 16) = 0;

  return sub_1001924E4(a1);
}

void sub_1001926A8(unint64_t a1)
{
  v2 = sub_100192398(a1);
  std::mutex::lock(v2);
  v3 = sub_100192424(a1);
  std::condition_variable::notify_all(v3);

  std::mutex::unlock(v2);
}

void sub_1001926F8(uint64_t a1)
{
  sub_100192630(a1);

  operator delete();
}

std::mutex *sub_100192730()
{
  result = &unk_100235010;
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

std::condition_variable *sub_100192768()
{
  result = &unk_100235320;
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

void *sub_1001927A0(void *a1, uint64_t a2)
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
    sub_100001FE8(a1, "bad flush type (", 16);
    a1 = std::ostream::operator<<();
    v2 = ")";
    v3 = 1;
  }

  else
  {
    v2 = "barrier";
    v3 = 7;
  }

  return sub_100001FE8(a1, v2, v3);
}

void *sub_100192838(void *a1, uint64_t a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *(v3 + 2);
  *(v3 + 2) = v4 & 0xFFFFFFB5 | 8;
  v18 = 48;
  v5 = sub_1000283FC(a1, &v18);
  v6 = *v5;
  *(v5 + *(*v5 - 24) + 24) = 2;
  *(v5 + *(v6 - 24) + 8) |= 0x200u;
  sub_100001FE8(v5, "sg: buffer = ", 13);
  v7 = std::ostream::operator<<();
  sub_100001FE8(v7, " [", 2);
  v8 = std::ostream::operator<<();
  v9 = sub_100001FE8(v8, "] ", 2);
  v10 = *v9;
  *(v9 + *(*v9 - 24) + 8) = *(v9 + *(*v9 - 24) + 8) & 0xFFFFFFB5 | 2;
  *(v9 + *(v10 - 24) + 24) = 0;
  *(v9 + *(v10 - 24) + 8) &= ~0x200u;
  sub_100001FE8(v9, " size = ", 8);
  v11 = std::ostream::operator<<();
  sub_100001FE8(v11, " buffer_size = ", 15);
  v12 = std::ostream::operator<<();
  *(v12 + *(*v12 - 24) + 8) = *(v12 + *(*v12 - 24) + 8) & 0xFFFFFFB5 | 8;
  v17 = 48;
  v13 = sub_1000283FC(v12, &v17);
  v14 = *v13;
  *(v13 + *(*v13 - 24) + 24) = 2;
  *(v13 + *(v14 - 24) + 8) |= 0x200u;
  sub_100001FE8(v13, " offset = ", 10);
  v15 = std::ostream::operator<<();
  sub_100001FE8(v15, " crypto = ", 10);
  std::ostream::operator<<();
  *(a1 + *(*a1 - 24) + 8) = v4;
  return a1;
}

void *sub_100192AE0(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = off_1002258E0;
  return result;
}

uint64_t sub_100192B04(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 104) != 1 || *(a2 + 48) == 0)
  {
    return (*(*a1 + 88))(a1);
  }

  else
  {
    return sub_100148DF0(a2, a1);
  }
}

uint64_t sub_100192B50(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 104) != 1 || *(a2 + 48) == 0)
  {
    v5 = *(*a1 + 96);

    return v5();
  }

  else
  {
    v11 = 0;
    sub_100149294(v10, a2, &v11);
    sub_100030254(v7, a2);
    if (v9 == 1)
    {
      v9 = 0;
    }

    v11 = (*(*a1 + 96))(a1, v7);
    if (v8)
    {
      sub_10000E984(v8);
    }

    sub_10014931C(v10);
    return v11;
  }
}

void sub_100192C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  if (a11)
  {
    sub_10000E984(a11);
  }

  sub_10014931C(va);
  _Unwind_Resume(a1);
}

void sub_100192CB4(uint64_t a1@<X0>, void *a2@<X8>)
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

    sub_100192CB4(v9, a2);
    if (v7)
    {
      sub_10000E984(v7);
    }

    if (v6)
    {

      sub_10000E984(v6);
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

void sub_100192DC0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_10000E984(v2);
  }

  if (v1)
  {
    sub_10000E984(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100192DE4(uint64_t a1, const void **a2, uint64_t *a3)
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
      sub_10000E984(v15);
    }

    v11 = 0;
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = sub_100192DE4(v16, a2, a3);
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  sub_10000E984(v10);
LABEL_11:
  if (v8)
  {
    sub_10000E984(v8);
  }

  return v11;
}

void sub_100192F20(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_10000E984(v2);
  }

  if (v1)
  {
    sub_10000E984(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100192F44(uint64_t a1@<X0>, void *a2@<X8>)
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

      sub_10000E984(v7);
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

void sub_10019302C(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1001FACC0;
  v5 = a2[1];
  a1[3] = *a2;
  a1[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = off_1002259B0;
  a1[5] = a3;
  sub_1001951E8();
}

void sub_10019329C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10008B024(va);
  v9 = *(v7 - 40);
  if (v9)
  {
    sub_10000E984(v9);
  }

  _Unwind_Resume(a1);
}

void sub_100193488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  v15 = *(v13 - 40);
  if (v15)
  {
    sub_10000E984(v15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001934CC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100195354(a1, a2);
  *a1 = off_100225BD0;
  a1[45] = &off_100225CD0;
  a1[46] = &off_100225CF8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100225BD0;
  a1[45] = off_100225C58;
  a1[46] = off_100225C80;
  return a1;
}

void sub_1001935D0(_Unwind_Exception *a1)
{
  sub_1001944B8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001935F4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001944B8(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100193638(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 24) + 56))(*(a1 + 24));
  if (v4)
  {
    *&v6 = "int BackendSG::truncate(uint64_t)";
    *(&v6 + 1) = 23;
    v7 = 16;
    sub_100018910(v8, &v6);
    sub_100001FE8(v9, "BackendSG: truncating the inner backend failed, error = ", 56);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_1000194E0(v8);
    std::ios::~ios();
  }

  else
  {
    sub_100061AE0(v8, a1 + 64, a2, 0, *(a1 + 88), *(a1 + 96));
    sub_10002E794(a1 + 64, v8);
    if (*(&v8[0] + 1))
    {
      sub_10000E984(*(&v8[0] + 1));
    }
  }

  return v4;
}

void sub_100193744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_10000E984(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10019376C(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1001FACC0;
  v5 = a3[1];
  *(a1 + 24) = *a3;
  *(a1 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = off_1002259B0;
  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;
  v7 = *(a2 + 56);
  *(a1 + 56) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100030254(a1 + 64, a2 + 64);
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

void sub_10019381C(_Unwind_Exception *a1)
{
  v3 = v1[7];
  if (v3)
  {
    sub_10000E984(v3);
  }

  sub_10004413C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100193880(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1001FACC0;
  v4 = a2[1];
  *(a1 + 24) = *a2;
  *(a1 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 850045863;
  *a1 = off_100225A88;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  sub_1000404D4((a1 + 104), a3);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  return a1;
}

void sub_100193934(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v2);
  sub_10004413C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100193954(uint64_t a1, uint64_t a2)
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
    sub_1000C6F60(&v11, &v9);
    sub_100001FE8(v19, "BufferedWriteBackend doesn't support per io crypto", 50);
    std::ostream::~ostream();
    sub_1000CFA90(&v11);
    std::ios::~ios();
    return 4294967194;
  }

  v6 = *(sub_100195B38() + 1);
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
    sub_10000E984(v12);
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

void sub_100193AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000C7088(va);
  _Unwind_Resume(a1);
}

unint64_t sub_100193AD4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 104) != 1 || *(a2 + 48) == 0)
  {
    std::mutex::lock((a1 + 40));
    if ((*(a1 + 136) & 1) != 0 || (v14 = sub_100193954(a1, a2), !v14))
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
          v12 = *(sub_100195B38() + 1);
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
            sub_10000E984(v20);
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
        sub_100093AE4(&v19, a2, v15, v10, *(a2 + 24) + v10, *(a2 + 32) - v10);
        v14 = (*(**(a1 + 24) + 120))(*(a1 + 24), &v19);
        if (v20)
        {
          sub_10000E984(v20);
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
  sub_100193D98(&v19, &v17);
  sub_100001FE8(v27, "BufferedWriteBackend doesn't support per io crypto", 50);
  std::ostream::~ostream();
  sub_100194C50(&v19);
  std::ios::~ios();
  return 4294967194;
}

void sub_100193D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_10000E984(a13);
  }

  std::mutex::unlock((v13 + 40));
  _Unwind_Resume(a1);
}

void *sub_100193D98(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100195504(a1, a2);
  *a1 = off_100225DF0;
  a1[45] = &off_100225EF0;
  a1[46] = &off_100225F18;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100225DF0;
  a1[45] = off_100225E78;
  a1[46] = off_100225EA0;
  return a1;
}

void sub_100193E9C(_Unwind_Exception *a1)
{
  sub_100194C50(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100193EC0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100194C50(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100193F04(uint64_t a1, uint64_t a2)
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
    v10 = *(sub_100195B38() + 1);
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
      sub_10000E984(v17);
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

void sub_10019404C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  std::mutex::unlock((v10 + 40));
  _Unwind_Resume(a1);
}

void sub_10019407C(uint64_t a1)
{
  sub_100195150(a1);

  operator delete();
}

void *sub_1001940D4(void *a1)
{
  *a1 = off_1002259B0;
  v2 = a1[9];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    sub_10000E984(v3);
  }

  *a1 = off_1001FACC0;
  v4 = a1[4];
  if (v4)
  {
    sub_10000E984(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_100194160(void *a1)
{
  *a1 = off_1002259B0;
  v2 = a1[9];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    sub_10000E984(v3);
  }

  *a1 = off_1001FACC0;
  v4 = a1[4];
  if (v4)
  {
    sub_10000E984(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete();
}

uint64_t sub_100194220(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001944B8(v1);

  return std::ios::~ios();
}

uint64_t sub_10019426C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001944B8(v1);

  return std::ios::~ios();
}

void sub_1001942CC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001944B8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100194334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100194370(_BYTE *a1, int a2)
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

void sub_1001943DC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001944B8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100194440(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001944B8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001944B8(uint64_t a1)
{
  *a1 = &off_100225D68;
  sub_100194624(a1);
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

uint64_t sub_100194624(uint64_t a1)
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
        sub_1001947D4((a1 + 72), __p);
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

void sub_100194770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10019479C(uint64_t a1)
{
  sub_1001944B8(a1);

  operator delete();
}

int *sub_1001947D4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1001949B8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100194C50(v1);

  return std::ios::~ios();
}

uint64_t sub_100194A04(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100194C50(v1);

  return std::ios::~ios();
}

void sub_100194A64(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100194C50(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100194ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100194B08(_BYTE *a1, int a2)
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

void sub_100194B74(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100194C50(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100194BD8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100194C50(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100194C50(uint64_t a1)
{
  *a1 = &off_100225F88;
  sub_100194DBC(a1);
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

uint64_t sub_100194DBC(uint64_t a1)
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
        sub_100194F6C((a1 + 72), __p);
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

void sub_100194F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100194F34(uint64_t a1)
{
  sub_100194C50(a1);

  operator delete();
}

int *sub_100194F6C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100195150(uint64_t a1)
{
  *a1 = off_100225A88;
  sub_100193F04(a1, 1);
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  std::mutex::~mutex((a1 + 40));
  *a1 = off_1001FACC0;
  v3 = *(a1 + 32);
  if (v3)
  {
    sub_10000E984(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *sub_10019526C(void *a1, uint64_t *a2, unsigned int *a3, unint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100226008;
  sub_10014D6F0((a1 + 3), *a2, *a3, *a4);
  return a1;
}

void sub_1001952F4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100226008;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100195354(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100225D68;
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

void sub_100195404(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_1001954A8(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020B248;
  sub_10019376C((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_100195504(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &off_100225F88;
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

void sub_1001955B4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_1001955CC(char *__s, size_t *a3)
{
  v4 = &v18;
  sub_100010B0C(&v18, __s);
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
  sub_100195948(&v18, &v15);
  if (a3)
  {
    *a3 = v16 - v15;
  }

  operator new[]();
}

void sub_100195760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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
      *exception = &off_1002260F0;
      v20 = std::generic_category();
      exception[1] = 22;
      exception[2] = v20;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "Does not contain an even number of hex digits.";
    case 2:
      __cxa_begin_catch(exception_object);
      v21 = __cxa_allocate_exception(0x40uLL);
      *v21 = &off_1002260F0;
      v22 = std::generic_category();
      v21[1] = 22;
      v21[2] = v22;
      *(v21 + 24) = 0;
      *(v21 + 48) = 0;
      v21[7] = "Contains non-hexadecimal characters.";
    case 1:
      __cxa_begin_catch(exception_object);
      v23 = __cxa_allocate_exception(0x40uLL);
      *v23 = &off_1002260F0;
      v24 = std::generic_category();
      v23[1] = 22;
      v23[2] = v24;
      *(v23 + 24) = 0;
      *(v23 + 48) = 0;
      v23[7] = "Decoding error.";
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100195948(uint64_t **a1, uint64_t a2)
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
      a2 = sub_100196300(&v7, v5, a2, sub_1001964D0);
    }

    while (v7 != v5);
  }

  return a2;
}

uint64_t sub_1001959C4(char *a1, uint64_t a2)
{
  v3[0] = 0;
  v3[1] = 0;
  return sub_1000A9854(v3, a1, a2);
}

void *sub_100195A20(void *a1, unsigned int *a2)
{
  v3 = (*(*a2 + 16))(a2);
  v4 = strlen(v3);
  v5 = sub_100001FE8(a1, v3, v4);
  sub_100001FE8(v5, " (error code ", 13);
  v6 = std::ostream::operator<<();
  sub_100001FE8(v6, ")", 1);
  return a1;
}

uint64_t sub_100195AB8(uint64_t a1)
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

void *sub_100195B38()
{
  if ((atomic_load_explicit(byte_100235490, memory_order_acquire) & 1) == 0)
  {
    sub_100198D24();
  }

  if (atomic_load_explicit(qword_100235480, memory_order_acquire) != -1)
  {
    v3 = &v1;
    v2 = &v3;
    std::__call_once(qword_100235480, &v2, sub_100197D10);
  }

  return &unk_1002354A0;
}

uint64_t sub_100195BB8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_10000E984(v2);
  }

  return a1;
}

uint64_t sub_100195BE8()
{
  if (byte_100234958 == 1)
  {
    v0 = 0;
    atomic_compare_exchange_strong(&unk_1002354C8, &v0, 1u);
    if (!v0)
    {
      *&v2 = "void process_terminator::terminate()";
      *(&v2 + 1) = 34;
      v3 = 16;
      sub_100045218(v4, &v2);
      sub_100001FE8(v5, "Terminating due to unrecoverable I/O error", 42);
      std::ostream::~ostream();
      sub_100047FE0(v4);
      std::ios::~ios();
      return raise(15);
    }
  }

  return result;
}

void sub_100195C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100045340(va);
  _Unwind_Resume(a1);
}

unint64_t sub_100195CB0(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
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

  sub_1000302E0(&v44, a1);
  sub_10002E60C(&v44, v7 + v8);
  sub_10002DBC0(v47);
  sub_1000302E0(v31, a1);
  sub_10002F174(v31, a2, a4[1], v7 + v8, 0xFFFFFFFFFFFFFFFFLL, &v34);
  if (v33)
  {
    sub_10000E984(v33);
  }

  if (v32)
  {
    sub_10000E984(v32);
  }

  sub_10002E310(&v34, v60);
  sub_10002E794(&v44, v60);
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
    sub_10000E984(v12);
    v50 = v67;
    v51 = v68;
    v52 = v69;
    if (*(&v66 + 1))
    {
      sub_10000E984(*(&v66 + 1));
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
    sub_10000E984(*(&v60[0] + 1));
  }

  sub_10002E60C(&v44, v8);
  sub_10002DF68(&v34, v28);
  sub_1000302E0(&__src, &v44);
  sub_1000302E0(&v19, a1);
  sub_1000302E0(&__dst, &v19);
  v13 = 0;
  v57 = 0;
  while (!sub_10002DE0C(&__src, v28))
  {
    sub_100014E18(&v25);
    v14 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v27)
    {
      sub_10002E834(&__src);
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
      sub_10007C9F0(v60, &v58);
      sub_100001FE8(v70, "Trimming: Written ", 18);
      std::ostream::operator<<();
      sub_100001FE8(v70, ", dest buffer_size ", 19);
      std::ostream::operator<<();
      sub_100001FE8(v70, " src size ", 10);
      std::ostream::operator<<();
      sub_100001FE8(v70, ", trimmed size", 14);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_10008307C(v60);
      std::ios::~ios();
      memmove(__dst, __src, v16);
LABEL_34:
      *&v58 = "transform(Fn &&, sg_vec_ref::iterator, const sg_vec_ref::iterator &, sg_vec_ref::iterator) [Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/utils.cpp:180:13)]";
      *(&v58 + 1) = 97;
      v59 = 16;
      sub_1000432F8(v60, &v58);
      sub_100001FE8(v70, "IO error with sg: ", 18);
      sub_100192838(v70, &__src);
      sub_100001FE8(v70, " dest ", 6);
      sub_100192838(v70, &__dst);
      sub_100001FE8(v70, " returned status ", 17);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_10004352C(v60);
      std::ios::~ios();
      v17 = 1;
      if (!v14)
      {
        goto LABEL_29;
      }

LABEL_28:
      sub_10000E984(v14);
      goto LABEL_29;
    }

    memmove(__dst, __src, v16);
    if (v16 <= 0)
    {
      goto LABEL_34;
    }

    sub_10002E60C(&__src, v16);
    sub_10002E6D0(&__dst, v16);
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

  sub_10002E6D0(&v19, v13);
LABEL_37:
  if (v56)
  {
    sub_10000E984(v56);
  }

  if (v54)
  {
    sub_10000E984(v54);
  }

  if (v21)
  {
    sub_10000E984(v21);
  }

  if (v20)
  {
    sub_10000E984(v20);
  }

  if (v26)
  {
    sub_10000E984(v26);
  }

  if (v23)
  {
    sub_10000E984(v23);
  }

  if (v30)
  {
    sub_10000E984(v30);
  }

  if (v29)
  {
    sub_10000E984(v29);
  }

  if (v43)
  {
    sub_10000E984(v43);
  }

  if (v42)
  {
    sub_10000E984(v42);
  }

  if (v41)
  {
    sub_10000E984(v41);
  }

  if (v40)
  {
    sub_10000E984(v40);
  }

  if (v38)
  {
    sub_10000E984(v38);
  }

  if (v36)
  {
    sub_10000E984(v36);
  }

  if (*(&v49 + 1))
  {
    sub_10000E984(*(&v49 + 1));
  }

  if (v45)
  {
    sub_10000E984(v45);
  }

LABEL_69:
  sub_1000302E0(&v34, a1);
  sub_10002E60C(&v34, v7);
  sub_10002DBC0(v37);
  if (v39)
  {
    sub_10000E984(v39);
  }

  if (v35)
  {
    sub_10000E984(v35);
  }

  return v7;
}

void sub_1001961E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10000FF88(&STACK[0x738]);
  sub_10000FF88(&a10);
  sub_10000FF88(&a38);
  sub_10000FF88(&a65);
  sub_10002F23C(&STACK[0x388]);
  sub_10000FF88(&STACK[0x658]);
  _Unwind_Resume(a1);
}

void sub_1001962C8(std::exception *a1)
{
  sub_100001AF8(a1);

  operator delete();
}

uint64_t sub_100196300(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int (*a4)(uint64_t, uint64_t))
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
      v23[0] = off_100226158;
      v23[1] = off_100226188;
      sub_1001964DC(v23);
    }

    v12 = sub_100196588(**a1);
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
      sub_100015B70();
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

void sub_1001964BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100196538(va);
  _Unwind_Resume(a1);
}

void sub_1001964DC(void *a1)
{
  exception = __cxa_allocate_exception(0x30uLL);
  sub_1001966A4(exception, a1);
}

std::exception *sub_100196538(std::exception *a1)
{
  std::exception::~exception(a1);
  *(v2 + 8) = &off_1002261A8;
  sub_1001968D8((v2 + 16));
  return a1;
}

uint64_t sub_100196588(int a1)
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
        v5[0] = off_1002261F0;
        v5[1] = off_100226220;
        v3 = off_100226268;
        v4 = a1;
        sub_100196C18(v5, &v3);
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

void sub_10019668C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_100196994(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001966A4(uint64_t a1, void *a2)
{
  v3 = a2 + *(*a2 - 40);
  v4 = *(v3 + 1);
  *(a1 + 8) = &off_1002261A8;
  *(a1 + 16) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(v3 + 1);
  *(a1 + 40) = *(v3 + 8);
  *(a1 + 24) = v5;
  *a1 = off_100226158;
  *(a1 + 8) = off_100226188;
  return a1;
}

void sub_10019677C(std::exception *a1)
{
  std::exception::~exception(a1);
  *(v1 + 8) = &off_1002261A8;
  sub_1001968D8((v1 + 16));

  operator delete();
}

uint64_t *sub_1001967EC(void *a1)
{
  std::exception::~exception((a1 + *(*a1 - 24)));
  *(v1 + 8) = &off_1002261A8;
  v2 = (v1 + 16);

  return sub_1001968D8(v2);
}

void sub_100196850(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::exception::~exception(v1);
  *(v1 + 1) = &off_1002261A8;
  sub_1001968D8(v1 + 2);

  operator delete();
}

uint64_t *sub_1001968D8(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

void sub_100196934(void *a1)
{
  exception = __cxa_allocate_exception(0x30uLL);
  sub_1001969E4(exception, a1);
}

std::exception *sub_100196994(std::exception *a1)
{
  std::exception::~exception(a1);
  *(v2 + 8) = &off_1002261A8;
  sub_1001968D8((v2 + 16));
  return a1;
}

uint64_t sub_1001969E4(uint64_t a1, void *a2)
{
  v3 = a2 + *(*a2 - 40);
  v4 = *(v3 + 1);
  *(a1 + 8) = &off_1002261A8;
  *(a1 + 16) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(v3 + 1);
  *(a1 + 40) = *(v3 + 8);
  *(a1 + 24) = v5;
  *a1 = off_1002261F0;
  *(a1 + 8) = off_100226220;
  return a1;
}

void sub_100196ABC(std::exception *a1)
{
  std::exception::~exception(a1);
  *(v1 + 8) = &off_1002261A8;
  sub_1001968D8((v1 + 16));

  operator delete();
}

uint64_t *sub_100196B2C(void *a1)
{
  std::exception::~exception((a1 + *(*a1 - 24)));
  *(v1 + 8) = &off_1002261A8;
  v2 = (v1 + 16);

  return sub_1001968D8(v2);
}

void sub_100196B90(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::exception::~exception(v1);
  *(v1 + 1) = &off_1002261A8;
  sub_1001968D8(v1 + 2);

  operator delete();
}

void sub_100196D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_10000E984(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100196DA8(uint64_t *a1, uint64_t a2)
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

void sub_100196EB4(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_1001971E4(&v18, ("PN5boost9algorithm9bad_char_E" & 0x7FFFFFFFFFFFFFFFLL));
  if (v18)
  {
    v4 = v18;
  }

  else
  {
    v4 = ("PN5boost9algorithm9bad_char_E" & 0x7FFFFFFFFFFFFFFFLL);
  }

  sub_100010B0C(&v14, v4);
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
  sub_100001DC0(&v18);
  v22 = *(a1 + 8);
  sub_100001FE8(&v18, &v22, 1);
  sub_10000EC78(&v18, v12);
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

void sub_100197148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42)
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

char **sub_1001971E4(char **a1, char *lpmangled)
{
  status = 0;
  v4 = 0;
  *a1 = __cxa_demangle(lpmangled, 0, &v4, &status);
  return a1;
}

void sub_10019729C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100198D94(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001972B8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001972F0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_100197320(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100197360(uint64_t a1, const char *a2)
{
  if (a2)
  {
    sub_100001DC0(&v16);
    v4 = strlen(a2);
    sub_100001FE8(&v16, a2, v4);
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

        sub_100001FE8(&v16, v6, v7);
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

    sub_10000EC78(&v16, __p);
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

void *sub_1001975E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>, uint64_t *a3@<X1>)
{
  result = sub_1001978C8(a1 + 8, a3);
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

void sub_100197638(uint64_t a1, uint64_t *a2, void *a3)
{
  v9 = a3;
  v5 = sub_1001979B8((a1 + 8), a3, &unk_1001C053C, &v9);
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
    sub_10000E984(v8);
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

BOOL sub_1001976E0(uint64_t a1)
{
  v1 = *(a1 + 56) - 1;
  *(a1 + 56) = v1;
  if (a1 && !v1)
  {
    sub_100197B04(a1);
    operator delete();
  }

  return v1 == 0;
}

void *sub_1001978C8(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + 8);
  v4 = sub_10019793C(a1, a2, *(a1 + 8), (a1 + 8));
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

void *sub_10019793C(uint64_t a1, uint64_t *a2, void *a3, void *a4)
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

void *sub_1001979B8(uint64_t **a1, uint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *sub_100197A54(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *sub_100197A54(uint64_t a1, void *a2, uint64_t *a3)
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

uint64_t sub_100197B04(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  sub_10005F63C(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_100197BAC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100198D94(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100197BC8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100197C00(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_100197C30(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100197C70(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  v3 = *sub_100197A54(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void sub_100197DE4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void sub_100197E10(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100197E48(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    operator delete();
  }

  return result;
}

uint64_t sub_100197E68(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100197EA8(int a1, _BYTE *__src, _BYTE *__dst, unint64_t a4)
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

void sub_100197F88(char **a1, char *__dst, char *a3, char *__src, uint64_t a5)
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

uint64_t sub_100198060(uint64_t result, uint64_t a2)
{
  if (*(*a2 + 20) != 1)
  {
    return sub_100017958(*(result + 8), *(result + 16), 1);
  }

  return result;
}

uint64_t sub_1001980D0(uint64_t a1, uint64_t (***a2)(void))
{
  v3 = a1 - 16;
  v4 = (a1 - 16);
  v5 = (a1 - 16);
  do
  {
    v6 = *v5;
    v5 -= 2;
    result = (*v6)(v4);
    v3 -= 16;
    v8 = v4 == a2;
    v4 = v5;
  }

  while (!v8);
  return result;
}

uint64_t sub_10019813C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a1;
  *a1 = 0;
  result = *a2;
  *a2 = v6;
  if (result)
  {
    (*(*result + 8))(result);
    result = *a1;
    *a1 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  *a3 = *a2;
  return result;
}

void sub_1001982F4(uint64_t a1, uint64_t a2)
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
      sub_10000E984(v5);
    }

    a1 += 152;
  }

  while (a1 != a2);
}

void sub_100198358(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(__cxa_begin_catch(a1) + 2);
  v5 = std::generic_category();
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = 0;

  __cxa_end_catch();
}

void sub_1001983A0()
{
  if (__cxa_guard_acquire(byte_1002353A8))
  {
    __cxa_atexit(std::error_category::~error_category, &off_1002349E0, &_mh_execute_header);

    __cxa_guard_release(byte_1002353A8);
  }
}

void sub_100198408(void *a1)
{
  v1 = __cxa_begin_catch(a1);
  sub_100075648(v1);
  __cxa_end_catch();
}

void sub_100198498()
{
  if (__cxa_guard_acquire(byte_100234A00))
  {
    *&xmmword_1002349E8 = qword_1002349D8;
    *(&xmmword_1002349E8 + 1) = qword_1002349D8;
    LOBYTE(qword_1002349F8) = 2;

    __cxa_guard_release(byte_100234A00);
  }
}

void sub_100198540(uint64_t a1, uint64_t a2, void *a3, std::__shared_weak_count **a4)
{
  v8 = *(a1 + 128);
  if (v8)
  {
    sub_10000E984(v8);
  }

  v9 = *(a1 + 112);
  if (v9)
  {
    sub_10000E984(v9);
  }

  *a3 = a2;
  v10 = *a4;
  if (*a4)
  {

    sub_10000E984(v10);
  }
}

void sub_1001985DC()
{
  if (__cxa_guard_acquire(byte_100234A18))
  {
    qword_100234A10 = &a0123456789abcd[off_100234A08];

    __cxa_guard_release(byte_100234A18);
  }
}

uint64_t sub_1001986A0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

void sub_1001986E8(char **a1, char *__dst, char *a3, char *__src, uint64_t a5, _OWORD *a6)
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

void sub_1001987C4(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t sub_10019880C(uint64_t a1, uint64_t (***a2)(void))
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

void sub_100198878()
{
  sub_10012B8F0();
  do
  {
    v2 = v1[51];
    if (v2)
    {
      sub_10000E984(v2);
    }

    v3 = v1[29];
    if (v3)
    {
      sub_10000E984(v3);
    }

    v4 = v1[23];
    if (v4)
    {
      sub_10000E984(v4);
    }

    v5 = v1[1];
    if (v5)
    {
      sub_10000E984(v5);
    }

    v1 += 56;
  }

  while (v1 != v0);
}

void (***sub_1001988D4())(void)
{
  sub_10012B8F0();
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

void sub_100198938(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    sub_10000E984(v3);
  }
}

void sub_100198970()
{
  if (__cxa_guard_acquire(byte_100235468))
  {
    __cxa_atexit(std::error_category::~error_category, &off_100234C48, &_mh_execute_header);

    __cxa_guard_release(byte_100235468);
  }
}

void sub_1001989D8(uint64_t a1, std::__shared_weak_count **a2)
{
  v3 = *(a1 + 64);
  if (v3)
  {
    sub_10000E984(v3);
  }

  v4 = *a2;
  if (*a2)
  {

    sub_10000E984(v4);
  }
}

void sub_100198A28(char **a1, char *__dst, char *a3, char *__src, uint64_t a5, void *a6)
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

void sub_100198B14(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(__cxa_begin_catch(a1) + 2);
  v5 = std::generic_category();
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = 0;
  __cxa_end_catch();
}

uint64_t sub_100198B50(void *a1, unint64_t a2, uint64_t a3)
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

void sub_100198BDC(void **a1, std::__shared_weak_count **a2, void *a3)
{
  v4 = *a1;
  if (v4)
  {
    *a3 = v4;
    operator delete(v4);
  }

  if (*a2)
  {
    sub_10000E984(*a2);
  }
}

void sub_100198C4C()
{
  if (__cxa_guard_acquire(byte_100235470))
  {
    __cxa_atexit(sub_100192730, 0, &_mh_execute_header);

    __cxa_guard_release(byte_100235470);
  }
}

void sub_100198CB0()
{
  if (__cxa_guard_acquire(byte_100235478))
  {
    __cxa_atexit(sub_100192768, 0, &_mh_execute_header);

    __cxa_guard_release(byte_100235478);
  }
}

void sub_100198D24()
{
  if (__cxa_guard_acquire(byte_100235490))
  {
    __cxa_atexit(sub_100195BB8, &unk_1002354A0, &_mh_execute_header);

    __cxa_guard_release(byte_100235490);
  }
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
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