void sub_10029B500(uint64_t a1)
{
  sub_1000296E0((a1 + 64));
  sub_100005978((a1 + 48));
  if (*(a1 + 39) < 0)
  {
    v2 = *(a1 + 16);

    operator delete(v2);
  }
}

void sub_10029B558(uint64_t a1)
{
  sub_1000296E0((a1 + 64));
  sub_100005978((a1 + 48));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete(a1);
}

const void **sub_10029B5AC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v9 = 11;
  v3 = *(a1 + 40);
  sub_100010180(&v8, (a1 + 64));
  v7 = 263;
  v5 = *(a1 + 80);
  v6 = 1;
  sub_1002540BC(v2, (a1 + 16), &v9, v3, (a1 + 48), (a1 + 56), &v8, &v7, &v5, (a1 + 72));
  return sub_10001021C(&v8);
}

void sub_10029B648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10029B65C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10029B6A8(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 72);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + 64);
      if (v5)
      {
        (*(*v5 + 120))(v5, v1 + 1056);
      }

      sub_100004A34(v4);
    }
  }

  operator delete();
}

void *sub_10029B778(void *a1)
{
  *a1 = off_101E37AB8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10029B7C4(void *a1)
{
  *a1 = off_101E37AB8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10029B8AC(uint64_t result, uint64_t a2)
{
  *a2 = off_101E37AB8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void sub_10029B8F4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10029B904(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10029B944(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[2])
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Preflight recieved response for TA", v8, 2u);
        }

        v7 = a1[4];
        sub_10025DD78(v7);
        sub_10025DE4C(v7);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_10029BA00(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10029BA4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10029BAE4(uint64_t a1)
{
  *a1 = off_101E37B38;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  sub_100299F2C(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10029BB48(uint64_t a1)
{
  *a1 = off_101E37B38;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  sub_100299F2C(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_10029BC7C(_Unwind_Exception *a1)
{
  sub_100299F2C((v1 + 4));
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_10029BCAC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E37B38;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  result = sub_10029BA4C(a2 + 32, a1 + 32);
  if (*(a1 + 87) < 0)
  {
    return sub_100005F2C((a2 + 64), *(a1 + 64), *(a1 + 72));
  }

  v6 = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 64) = v6;
  return result;
}

void sub_10029BD40(_Unwind_Exception *a1)
{
  sub_100299F2C(v1 + 32);
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10029BD68(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  sub_100299F2C(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_10029BDC4(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  sub_100299F2C(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(a1);
}

void sub_10029BE1C(uint64_t a1, uint64_t a2, int *a3, void **a4)
{
  v5 = *a3;
  v7 = *a4;
  v6 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v8 = *(a1 + 24);
  if (v8)
  {
    v10 = *(a1 + 8);
    v11 = std::__shared_weak_count::lock(v8);
    if (v11)
    {
      if (*(a1 + 16))
      {
        v12[4] = v10;
        sub_100299E08(v13, a2);
        sub_10029BA4C(v14, a1 + 32);
        v14[8] = v5;
        if (*(a1 + 87) < 0)
        {
          sub_100005F2C(__p, *(a1 + 64), *(a1 + 72));
        }

        else
        {
          *__p = *(a1 + 64);
          __p[2] = *(a1 + 80);
        }

        __p[3] = v7;
        __p[4] = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12[0] = 0;
        v12[1] = 0;
        sub_100004AA0(v12, (v10 + 8));
        operator new();
      }

      sub_100004A34(v11);
    }
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_10029C074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a2)
  {
    sub_100299F2C(v49 + 288);
    if (*(v49 + 280) == 1)
    {
      sub_100284EB4(v49 + 8);
    }

    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10029C100(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10029C14C(uint64_t a1, uint64_t a2)
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

uint64_t *sub_10029C1CC(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_10026AF7C(*v1, (v1 + 328), (v1 + 352));
  sub_10026F6EC(v2, 0);
  sub_100299E08(v6, v1 + 8);
  sub_1002764A8(v1 + 288, v6, *(v1 + 320));
  if (v6[272] == 1)
  {
    sub_100284EB4(v6);
  }

  sub_10029C298(&v5);
  return sub_1000049E0(&v4);
}

void sub_10029C260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  if (a47 == 1)
  {
    sub_100284EB4(&a13);
  }

  sub_10029C298(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_10029C298(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 360);
    if (v2)
    {
      sub_100004A34(v2);
    }

    if (*(v1 + 351) < 0)
    {
      operator delete(*(v1 + 328));
    }

    sub_100299F2C(v1 + 288);
    if (*(v1 + 280) == 1)
    {
      sub_100284EB4(v1 + 8);
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_10029C318(uint64_t a1)
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

uint64_t sub_10029C398(uint64_t a1)
{
  *a1 = off_101E37BC8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10029C3F4(uint64_t a1)
{
  *a1 = off_101E37BC8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_10029C514(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_10029C534(char *result, uint64_t a2)
{
  *a2 = off_101E37BC8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 3);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (result[55] < 0)
  {
    return sub_100005F2C((a2 + 32), *(result + 4), *(result + 5));
  }

  v3 = *(result + 2);
  *(a2 + 48) = *(result + 6);
  *(a2 + 32) = v3;
  return result;
}

void sub_10029C5B8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10029C5D8(void *a1)
{
  sub_10028F698(a1 + 8);

  operator delete(a1);
}

void sub_10029C614(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4)
{
  sub_100293F80(v13, a2);
  v7 = *a3;
  v9 = *a4;
  v8 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v10 = *(a1 + 24);
  if (v10)
  {
    v11 = *(a1 + 8);
    v12 = std::__shared_weak_count::lock(v10);
    if (v12)
    {
      if (*(a1 + 16))
      {
        v28 = v11;
        sub_100285238(v29, v13);
        if (*(a1 + 55) < 0)
        {
          sub_100005F2C(__p, *(a1 + 32), *(a1 + 40));
        }

        else
        {
          *__p = *(a1 + 32);
          __p[2] = *(a1 + 48);
        }

        v31 = v7;
        v32 = v9;
        v33 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v34[0] = 0;
        v34[1] = 0;
        sub_100004AA0(v34, (v11 + 8));
        operator new();
      }

      sub_100004A34(v12);
    }
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v27 == 1)
  {
    if (v26 < 0)
    {
      operator delete(v25);
    }

    if (v24 < 0)
    {
      operator delete(v23);
    }

    if (v22 == 1 && v21 < 0)
    {
      operator delete(v20);
    }

    if (v19 == 1 && v18 < 0)
    {
      operator delete(v17);
    }

    if (v16 == 1 && v15 < 0)
    {
      operator delete(v14);
    }
  }
}

uint64_t sub_10029C964(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10029C9B0(uint64_t a1)
{
  v2 = *(a1 + 216);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 168) == 1)
  {
    if (*(a1 + 167) < 0)
    {
      operator delete(*(a1 + 144));
    }

    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    if (*(a1 + 104) == 1 && *(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 40) == 1 && *(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }
  }

  return a1;
}

uint64_t *sub_10029CA70(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_10026AF7C(*v1, (v1 + 176), (v1 + 208));
  sub_10026F6EC(v2, 0);
  sub_100285238(v6, v1 + 8);
  sub_1002769D8(v2, (v1 + 176), v6, *(v1 + 200));
  if (v20 == 1)
  {
    if (v19 < 0)
    {
      operator delete(__p);
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }

    if (v15 == 1 && v14 < 0)
    {
      operator delete(v13);
    }

    if (v12 == 1 && v11 < 0)
    {
      operator delete(v10);
    }

    if (v9 == 1 && v8 < 0)
    {
      operator delete(v7);
    }
  }

  sub_10029CB98(&v5);
  return sub_1000049E0(&v4);
}

void sub_10029CB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  sub_100276FF0(va2);
  sub_10029CB98(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10029CB98(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10029C9B0(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_10029CBE0(uint64_t a1)
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

void *sub_10029CC60(void *a1)
{
  *a1 = off_101E37C58;
  sub_100277094((a1 + 1));
  return a1;
}

void sub_10029CCA4(void *a1)
{
  *a1 = off_101E37C58;
  sub_100277094((a1 + 1));

  operator delete();
}

void sub_10029CDA0(_Unwind_Exception *a1)
{
  sub_100276FF0(v1 + 16);
  operator delete(v1);
  _Unwind_Resume(a1);
}

__n128 sub_10029CDC4(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  a2->n128_u64[0] = off_101E37C58;
  a2->n128_u64[1] = v4;
  sub_100285238(&a2[1], a1 + 16);
  if (*(a1 + 207) < 0)
  {
    sub_100005F2C(&a2[11].n128_u8[8], *(a1 + 184), *(a1 + 192));
  }

  else
  {
    v5 = *(a1 + 184);
    a2[12].n128_u64[1] = *(a1 + 200);
    *(a2 + 184) = v5;
  }

  result = *(a1 + 208);
  a2[13] = result;
  return result;
}

void sub_10029CE60(void *a1)
{
  sub_100277094(a1 + 8);

  operator delete(a1);
}

void sub_10029CE9C(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 8);
  if (*a2 != 1)
  {
    if (*(a1 + 176))
    {
      if (entitlements::TransferSIMViaWebServiceResponse::success((a1 + 16)))
      {
        return;
      }

      if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101769178((a1 + 16));
      }

      v26 = 52;
      v4 = sub_100932AF0(9, 1, 0);
      v5 = *(a1 + 151);
      v6 = v5;
      if ((v5 & 0x80u) != 0)
      {
        v5 = *(a1 + 136);
      }

      if (v5)
      {
        v7 = *(v2 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v19 = a1 + 184;
          v20 = *(a1 + 128);
          if (v6 >= 0)
          {
            v20 = a1 + 128;
          }

          if (*(a1 + 207) < 0)
          {
            v19 = *(a1 + 184);
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
          *(__p.__r_.__value_.__r.__words + 4) = v20;
          WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = v19;
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Carrier error in TSS webservice response: %s for source iccid:%s", &__p, 0x16u);
        }

        memset(&__p, 0, sizeof(__p));
        sub_10026EB60(v2, (a1 + 184), (a1 + 128), &__p);
        v26 = sub_10093103C(&__p);
        sub_1001696A4((*(a1 + 216) + 1032), &__p);
        sub_1001696A4((*(a1 + 216) + 1000), (a1 + 128));
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v24 = 0;
      if (*(v2 + 147))
      {
        goto LABEL_36;
      }

      v8 = (a1 + 152);
      if (*(a1 + 175) < 0)
      {
        if (!*(a1 + 160))
        {
LABEL_36:
          v25 = 11;
          __p.__r_.__value_.__r.__words[0] = 0;
          v23 = 263;
          v21 = v4;
          v22 = 1;
          sub_1002540BC(v2, (a1 + 184), &v25, 0, &v24, &v26, &__p.__r_.__value_.__l.__data_, &v23, &v21, (a1 + 216));
          sub_10001021C(&__p.__r_.__value_.__l.__data_);
          p_p = &v24;
          goto LABEL_37;
        }

        v8 = *v8;
      }

      else if (!*(a1 + 175))
      {
        goto LABEL_36;
      }

      v15 = CFStringCreateWithCString(kCFAllocatorDefault, v8, 0x8000100u);
      v16 = v24;
      v24 = v15;
      __p.__r_.__value_.__r.__words[0] = v16;
      sub_100005978(&__p.__r_.__value_.__l.__data_);
      goto LABEL_36;
    }

    v9 = *(v2 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = sub_100A38E30(*(a1 + 208));
      if (*(a1 + 176) == 1)
      {
        v18 = entitlements::TransferSIMViaWebServiceResponse::success((a1 + 16));
      }

      else
      {
        v18 = 0;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315650;
      *(__p.__r_.__value_.__r.__words + 4) = "No Response.";
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v17;
      HIWORD(__p.__r_.__value_.__r.__words[2]) = 1024;
      v28 = v18;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "TSS webservice request failed. %s EventCause: [%s], response success: [%d]", &__p, 0x1Cu);
      v9 = *(v2 + 40);
    }

    v10 = *(a1 + 208);
    v11 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v10 == 1)
    {
      if (v11)
      {
        sub_1017690A8();
      }

      v12 = sub_100932AF0(9, 1, 1);
    }

    else
    {
      if (v10 != 3)
      {
        if (v11)
        {
          sub_101769144();
        }

        v12 = sub_100932AF0(9, 0, 0);
        v13 = 0;
        v26 = 56;
        goto LABEL_32;
      }

      if (v11)
      {
        sub_101769110();
      }

      v12 = sub_100932AF0(9, 1, 0);
    }

    v26 = 52;
    v13 = 7;
LABEL_32:
    v25 = 11;
    __p.__r_.__value_.__r.__words[0] = 0;
    v24 = 0;
    LOBYTE(v23) = v13;
    HIBYTE(v23) = 1;
    v21 = v12;
    v22 = 1;
    sub_1002540BC(v2, (a1 + 184), &v25, 0, &__p.__r_.__value_.__l.__data_, &v26, &v24, &v23, &v21, (a1 + 216));
    sub_10001021C(&v24);
    p_p = &__p;
LABEL_37:
    sub_100005978(&p_p->__r_.__value_.__l.__data_);
    return;
  }

  sub_100254C38(*(a1 + 8));

  sub_100254E74(v2);
}

uint64_t sub_10029D338(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_UNKNOWN **sub_10029D3FC(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_10029D534(a3, a2[1]);
    }

    v7 = a2[1];
    if (*(v7 + 159) < 0)
    {
      operator delete(*(v7 + 136));
    }

    if (*(v7 + 135) < 0)
    {
      operator delete(*(v7 + 112));
    }

    if (*(v7 + 96) == 1 && *(v7 + 95) < 0)
    {
      operator delete(*(v7 + 72));
    }

    if (*(v7 + 64) == 1 && *(v7 + 63) < 0)
    {
      operator delete(*(v7 + 40));
    }

    if (*(v7 + 32) == 1 && *(v7 + 31) < 0)
    {
      operator delete(*(v7 + 8));
    }

    operator delete(v7);
    result = 0;
    goto LABEL_22;
  }

  if (a1 == 2)
  {
    result = 0;
    v9 = a2[1];
    *a3 = sub_10029D3FC;
    a3[1] = v9;
LABEL_22:
    *a2 = 0;
    return result;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
  }

  else
  {
    v6 = a5 == &unk_10183BBB8;
  }

  if (v6)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10029D5AC(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_100283910(v6, (v1 + 32));
  sub_1002784C0(v2, (v1 + 8), v6, *(v1 + 624), *(v1 + 628));
  sub_100283CE0(v6);
  sub_10029D64C(&v5);
  return sub_1000049E0(&v4);
}

void sub_10029D620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a12)
{
  sub_100283CE0(&a12);
  sub_10029D64C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10029D64C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100283CE0(v1 + 32);
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_10029D6AC(uint64_t a1)
{
  *a1 = off_101E37CE8;
  if (*(a1 + 647) < 0)
  {
    operator delete(*(a1 + 624));
  }

  sub_100283CE0(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10029D710(uint64_t a1)
{
  *a1 = off_101E37CE8;
  if (*(a1 + 647) < 0)
  {
    operator delete(*(a1 + 624));
  }

  sub_100283CE0(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_10029D860(_Unwind_Exception *a1)
{
  sub_100283CE0((v1 + 4));
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

_BYTE *sub_10029D890(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E37CE8;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_100283910(a2 + 32, (a1 + 32));
  result = (a2 + 624);
  if (*(a1 + 647) < 0)
  {
    result = sub_100005F2C(result, *(a1 + 624), *(a1 + 632));
  }

  else
  {
    v6 = *(a1 + 624);
    *(a2 + 640) = *(a1 + 640);
    *result = v6;
  }

  v7 = *(a1 + 648);
  *(a2 + 656) = *(a1 + 656);
  *(a2 + 648) = v7;
  *(a2 + 660) = 0;
  return result;
}

void sub_10029D940(_Unwind_Exception *a1)
{
  sub_100283CE0(v1 + 32);
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10029D968(uint64_t a1)
{
  if (*(a1 + 647) < 0)
  {
    operator delete(*(a1 + 624));
  }

  sub_100283CE0(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_10029D9C4(uint64_t a1)
{
  if (*(a1 + 647) < 0)
  {
    operator delete(*(a1 + 624));
  }

  sub_100283CE0(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(a1);
}

void sub_10029DA1C(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  sub_100299C78(v13, a2);
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *a3;
    v8 = std::__shared_weak_count::lock(v6);
    if (v8 && *(a1 + 16))
    {
      if (v14 == 1)
      {
        sub_100299E08(v15, v13);
        sub_1002766CC(v5, (a1 + 624), v15, a1 + 32);
        if (v16 == 1)
        {
          sub_100284EB4(v15);
        }

        sub_100283910(v22, (a1 + 32));
        sub_1002784C0(v5, (a1 + 624), v22, *(a1 + 656), 6000);
        sub_100283CE0(v22);
      }

      else
      {
        v12 = *(a1 + 656);
        v22[3] = 0;
        sub_100270EC0(v5, a1 + 624, v7, v12, v22);
        sub_10000FF50(v22);
      }

LABEL_16:
      sub_100004A34(v8);
      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
  }

  ctu::OsLogContext::OsLogContext(v22, kCtLoggingSystemName, "cp.tr.ctr");
  v9 = v22[1];
  ctu::OsLogContext::~OsLogContext(v22);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_101768474();
  }

  v10 = sub_100932AF0(*(a1 + 656), 0, 0);
  if (*(v5 + 384) == 1)
  {
    sub_10064BEE8(v5 + 1056, 1);
    v22[0] = (v5 + 360);
    v11 = sub_10028EDFC((v5 + 1064), (v5 + 360), &unk_101802C98, v22, v15);
    *(v11 + 21) = v10;
    *(v11 + 88) = 1;
  }

  v21 = 11;
  v22[0] = 0;
  v20 = 56;
  v15[0] = 0;
  v19 = 256;
  v17 = v10;
  v18 = 1;
  sub_1002540BC(v5, (a1 + 624), &v21, 1, v22, &v20, v15, &v19, &v17, (a1 + 648));
  sub_10001021C(v15);
  sub_100005978(v22);
  if (v8)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (v14 == 1)
  {
    sub_100284EB4(v13);
  }
}

void sub_10029DC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  sub_100283CE0(&STACK[0x258]);
  sub_100004A34(v46);
  if (a46 == 1)
  {
    sub_100284EB4(&a12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10029DD08(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10029DDE0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10029DE2C(uint64_t a1)
{
  *a1 = off_101E37DE8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10029DE88(uint64_t a1)
{
  *a1 = off_101E37DE8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_10029DFC0(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_10029DFE0(char *result, uint64_t a2)
{
  v3 = result;
  *a2 = off_101E37DE8;
  *(a2 + 8) = *(result + 8);
  v4 = *(result + 3);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (result[55] < 0)
  {
    result = sub_100005F2C((a2 + 32), *(result + 4), *(result + 5));
  }

  else
  {
    v5 = *(result + 2);
    *(a2 + 48) = *(result + 6);
    *(a2 + 32) = v5;
  }

  v6 = *(v3 + 7);
  *(a2 + 64) = v3[64];
  *(a2 + 56) = v6;
  *(a2 + 65) = 0;
  *(a2 + 68) = 0;
  return result;
}

void sub_10029E080(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10029E0A0(void *a1)
{
  sub_10028F698(a1 + 8);

  operator delete(a1);
}

void sub_10029E0DC(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  sub_100299C78(v11, a2);
  v5 = *(a1 + 8);
  if ((*(a1 + 64) & 1) == 0)
  {
    v19 = 11;
    v12[0] = 0;
    v18 = 45;
    v17 = 0;
    v16 = 260;
    v14 = 70062;
    v15 = 1;
    sub_1002540BC(v5, (a1 + 32), &v19, 1, v12, &v18, &v17, &v16, &v14, (a1 + 56));
    sub_10001021C(&v17);
    sub_100005978(v12);
    goto LABEL_13;
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *a3;
    v8 = std::__shared_weak_count::lock(v6);
    if (v8 && *(a1 + 16))
    {
      *(*(a1 + 56) + 909) = 0;
      sub_100299E08(v12, v11);
      sub_100279658(v5, (a1 + 32), v12, 4, v7);
      if (v13 == 1)
      {
        sub_100284EB4(v12);
      }

LABEL_12:
      sub_100004A34(v8);
      goto LABEL_13;
    }
  }

  else
  {
    v8 = 0;
  }

  ctu::OsLogContext::OsLogContext(v12, kCtLoggingSystemName, "cp.tr.ctr");
  v9 = v12[1];
  ctu::OsLogContext::~OsLogContext(v12);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_101768474();
  }

  v10 = sub_100932AF0(4, 0, 0);
  v19 = 11;
  v12[0] = 0;
  v18 = 56;
  v17 = 0;
  v16 = 256;
  v14 = v10;
  v15 = 1;
  sub_1002540BC(v5, (a1 + 32), &v19, 1, v12, &v18, &v17, &v16, &v14, (a1 + 56));
  sub_10001021C(&v17);
  sub_100005978(v12);
  if (v8)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v11[272] == 1)
  {
    sub_100284EB4(v11);
  }
}

void sub_10029E2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, int a46, char a47)
{
  if (LOBYTE(STACK[0x238]) == 1)
  {
    sub_100284EB4(&a47);
  }

  sub_100004A34(v47);
  if (a45 == 1)
  {
    sub_100284EB4(&a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10029E370(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10029E3BC(uint64_t a1)
{
  *a1 = off_101E37E68;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10029E418(uint64_t a1)
{
  *a1 = off_101E37E68;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_10029E540(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_10029E560(char *result, uint64_t a2)
{
  v3 = result;
  *a2 = off_101E37E68;
  *(a2 + 8) = *(result + 8);
  v4 = *(result + 3);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (result[55] < 0)
  {
    result = sub_100005F2C((a2 + 32), *(result + 4), *(result + 5));
  }

  else
  {
    v5 = *(result + 2);
    *(a2 + 48) = *(result + 6);
    *(a2 + 32) = v5;
  }

  *(a2 + 56) = *(v3 + 7);
  return result;
}

void sub_10029E5F0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10029E610(void *a1)
{
  sub_10028F698(a1 + 8);

  operator delete(a1);
}

void sub_10029E64C(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  sub_100299C78(v11, a2);
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *a3;
    v8 = std::__shared_weak_count::lock(v6);
    if (v8 && *(a1 + 16))
    {
      sub_100299E08(v12, v11);
      sub_100279658(v5, (a1 + 32), v12, 7, v7);
      if (v13 == 1)
      {
        sub_100284EB4(v12);
      }

LABEL_10:
      sub_100004A34(v8);
      goto LABEL_11;
    }
  }

  else
  {
    v8 = 0;
  }

  ctu::OsLogContext::OsLogContext(v12, kCtLoggingSystemName, "cp.tr.ctr");
  v9 = v12[1];
  ctu::OsLogContext::~OsLogContext(v12);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_101768474();
  }

  v10 = sub_100932AF0(7, 0, 0);
  v19 = 11;
  v12[0] = 0;
  v18 = 56;
  v17 = 0;
  v16 = 256;
  v14 = v10;
  v15 = 1;
  sub_1002540BC(v5, (a1 + 32), &v19, 1, v12, &v18, &v17, &v16, &v14, (a1 + 56));
  sub_10001021C(&v17);
  sub_100005978(v12);
  if (v8)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (v11[272] == 1)
  {
    sub_100284EB4(v11);
  }
}

void sub_10029E7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, int a46, char a47)
{
  if (LOBYTE(STACK[0x238]) == 1)
  {
    sub_100284EB4(&a47);
  }

  sub_100004A34(v47);
  if (a45 == 1)
  {
    sub_100284EB4(&a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10029E840(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10029E88C(void *a1)
{
  *a1 = off_101E37EE8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10029E8D8(void *a1)
{
  *a1 = off_101E37EE8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10029E9B8(uint64_t result, uint64_t a2)
{
  *a2 = off_101E37EE8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10029E9F8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10029EA08(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10029EA48(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[2])
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I de-assert after 2min delay", v7, 2u);
        }

        sub_1002855D4((v3 + 1104), 0);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_10029EAE8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10029EB34()
{
  sub_10000501C(byte_101FBA110, "b0-needs-reliable-delete-receipt-delivery");

  return __cxa_atexit(&std::string::~string, byte_101FBA110, &_mh_execute_header);
}

BOOL sub_10029EB94(const __CFArray *a1, const void *a2)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      theDict = 0;
      number = CFArrayGetValueAtIndex(a1, v7);
      sub_100010180(&theDict, &number);
      if (theDict)
      {
        number = 0;
        valuePtr = CFDictionaryGetValue(theDict, a2);
        sub_1002AF4F0(&number, &valuePtr);
        if (number)
        {
          LODWORD(valuePtr) = 0;
          if (CFNumberGetValue(number, kCFNumberIntType, &valuePtr))
          {
            if ((valuePtr & 0x10) != 0)
            {
              sub_100029A48(&number);
              sub_10001021C(&theDict);
              return v6;
            }
          }
        }

        sub_100029A48(&number);
      }

      sub_10001021C(&theDict);
      v6 = ++v7 >= v5;
      if (v5 == v7)
      {
        return v6;
      }
    }
  }

  return 1;
}

void sub_10029EC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  sub_100029A48(va);
  sub_10001021C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10029ECB8@<X0>(uint64_t result@<X0>, int a2@<W1>, int *a3@<X8>)
{
  v3 = 4 * (result & 3);
  *a3 = v3;
  v4 = v3;
  if ((result & 8) != 0)
  {
    v4 = v3 | 0x20;
    *a3 = v3 | 0x20;
    if (a2)
    {
      v4 = v3 | 0xE0;
      *a3 = v3 | 0xE0;
    }
  }

  if ((result & 0x10) != 0)
  {
    *a3 = v4 | 0xC0;
  }

  return result;
}

uint64_t sub_10029ECEC@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v34 = 0;
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
  *__p = 0u;
  v23 = 0u;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  v19 = 0u;
  sub_10000C320(&v19);
  sub_10000C030(&v20, "[", 1);
  v4 = (a1 & 1) == 0;
  if (a1)
  {
    v5 = sub_10000C030(&v20, "", 0);
    sub_10000C030(v5, "UMTS", 4);
  }

  if ((a1 & 2) != 0)
  {
    if (a1)
    {
      v6 = ", ";
    }

    else
    {
      v6 = "";
    }

    v7 = sub_10000C030(&v20, v6, 2 * (a1 & 1u));
    sub_10000C030(v7, "CDMA", 4);
    v4 = 0;
  }

  if ((a1 & 4) != 0)
  {
    if (v4)
    {
      v8 = "";
    }

    else
    {
      v8 = ", ";
    }

    if (v4)
    {
      v9 = 0;
    }

    else
    {
      v9 = 2;
    }

    v10 = sub_10000C030(&v20, v8, v9);
    sub_10000C030(v10, "eHRPD", 5);
    v4 = 0;
  }

  if ((a1 & 8) != 0)
  {
    if (v4)
    {
      v11 = "";
    }

    else
    {
      v11 = ", ";
    }

    if (v4)
    {
      v12 = 0;
    }

    else
    {
      v12 = 2;
    }

    v13 = sub_10000C030(&v20, v11, v12);
    sub_10000C030(v13, "LTE", 3);
    v4 = 0;
  }

  if ((a1 & 0x10) != 0)
  {
    if (v4)
    {
      v14 = "";
    }

    else
    {
      v14 = ", ";
    }

    if (v4)
    {
      v15 = 0;
    }

    else
    {
      v15 = 2;
    }

    v16 = sub_10000C030(&v20, v14, v15);
    sub_10000C030(v16, "NR", 2);
  }

  sub_10000C030(&v20, "]", 1);
  sub_10006EE70(&v20 + 8, a2);
  *&v20 = v17;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

uint64_t sub_10029F000(uint64_t a1)
{
  *a1 = off_101E37F68;
  v2 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v4, kCtLoggingSystemName, "DATA.xx-apn");
  sub_10029F0BC(v2, "DATA.xx-apn", QOS_CLASS_UTILITY, &v4);
  ctu::OsLogContext::~OsLogContext(&v4);
  *a1 = off_101E37F68;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  return a1;
}

void *sub_10029F0BC(void *a1, const char *a2, dispatch_qos_class_t a3, const OsLogContext *a4)
{
  object = 0;
  sub_1000B9CE0(a1, a2, a3, &object);
  if (object)
  {
    dispatch_release(object);
  }

  ctu::OsLogLogger::OsLogLogger(&object, a4);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), &object);
  ctu::OsLogLogger::~OsLogLogger(&object);
  return a1;
}

void sub_10029F124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  ctu::OsLogLogger::~OsLogLogger(&object);
  sub_1000C0544(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_10029F15C(uint64_t a1)
{
  *a1 = off_101E37F68;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_10029F1F0(uint64_t a1)
{
  sub_10029F15C(a1);

  operator delete();
}

const void **sub_10029F228@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v24 = Mutable;
  if (!Mutable)
  {
    __TUAssertTrigger("apn");
    Mutable = 0;
  }

  if (*(a1 + 71) < 0)
  {
    sub_100005F2C(__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *__p = *(a1 + 48);
    v22 = *(a1 + 64);
  }

  if (SHIBYTE(v22) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v27 = v22;
  }

  v25 = 0;
  if (SHIBYTE(v27) < 0)
  {
    sub_100005F2C(&v28, __dst, *(&__dst + 1));
  }

  else
  {
    v28 = __dst;
    v29 = v27;
  }

  v30 = 0;
  if (ctu::cf::convert_copy())
  {
    v5 = v25;
    v25 = v30;
    v31 = v5;
    sub_100005978(&v31);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28);
  }

  value = v25;
  v25 = 0;
  sub_100005978(&v25);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__dst);
  }

  CFDictionaryAddValue(Mutable, @"apn", value);
  sub_100005978(&value);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = v24;
  if (*(a1 + 95) < 0)
  {
    sub_100005F2C(v19, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    *v19 = *(a1 + 72);
    v20 = *(a1 + 88);
  }

  if (SHIBYTE(v20) < 0)
  {
    sub_100005F2C(&__dst, v19[0], v19[1]);
  }

  else
  {
    __dst = *v19;
    v27 = v20;
  }

  v25 = 0;
  if (SHIBYTE(v27) < 0)
  {
    sub_100005F2C(&v28, __dst, *(&__dst + 1));
  }

  else
  {
    v28 = __dst;
    v29 = v27;
  }

  v30 = 0;
  if (ctu::cf::convert_copy())
  {
    v7 = v25;
    v25 = v30;
    v31 = v7;
    sub_100005978(&v31);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28);
  }

  value = v25;
  v25 = 0;
  sub_100005978(&v25);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__dst);
  }

  CFDictionaryAddValue(v6, @"username", value);
  sub_100005978(&value);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  v8 = v24;
  if (*(a1 + 119) < 0)
  {
    sub_100005F2C(v17, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *v17 = *(a1 + 96);
    v18 = *(a1 + 112);
  }

  if (SHIBYTE(v18) < 0)
  {
    sub_100005F2C(&__dst, v17[0], v17[1]);
  }

  else
  {
    __dst = *v17;
    v27 = v18;
  }

  v25 = 0;
  if (SHIBYTE(v27) < 0)
  {
    sub_100005F2C(&v28, __dst, *(&__dst + 1));
  }

  else
  {
    v28 = __dst;
    v29 = v27;
  }

  v30 = 0;
  if (ctu::cf::convert_copy())
  {
    v9 = v25;
    v25 = v30;
    v31 = v9;
    sub_100005978(&v31);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28);
  }

  value = v25;
  v25 = 0;
  sub_100005978(&v25);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__dst);
  }

  CFDictionaryAddValue(v8, @"password", value);
  sub_100005978(&value);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (*(a1 + 143) < 0)
  {
    v11 = *(a1 + 128);
    if (!v11)
    {
      goto LABEL_73;
    }

    v10 = v24;
    sub_100005F2C(v15, *(a1 + 120), v11);
  }

  else
  {
    if (!*(a1 + 143))
    {
      goto LABEL_73;
    }

    v10 = v24;
    *v15 = *(a1 + 120);
    v16 = *(a1 + 136);
  }

  if (SHIBYTE(v16) < 0)
  {
    sub_100005F2C(&__dst, v15[0], v15[1]);
  }

  else
  {
    __dst = *v15;
    v27 = v16;
  }

  v25 = 0;
  if (SHIBYTE(v27) < 0)
  {
    sub_100005F2C(&v28, __dst, *(&__dst + 1));
  }

  else
  {
    v28 = __dst;
    v29 = v27;
  }

  v30 = 0;
  if (ctu::cf::convert_copy())
  {
    v12 = v25;
    v25 = v30;
    v31 = v12;
    sub_100005978(&v31);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28);
  }

  v13 = v25;
  value = v25;
  v25 = 0;
  sub_100005978(&v25);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__dst);
  }

  CFDictionaryAddValue(v10, @"auth_type", v13);
  sub_100005978(&value);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

LABEL_73:
  sub_100010180(a2, &v24);
  return sub_1000296E0(&v24);
}

void sub_10029F728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, int a37, const void *a38, const void *a39)
{
  sub_100005978(&a39);
  if (*(v39 - 105) < 0)
  {
    operator delete(*(v39 - 128));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0(&a38);
  _Unwind_Resume(a1);
}

uint64_t sub_10029F8C0(uint64_t a1, CFDictionaryRef theDict)
{
  CFDictionaryGetValue(theDict, @"apn");
  ctu::cf::assign();
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 63) = 0;
  *(a1 + 71) = 0;
  CFDictionaryGetValue(theDict, @"username");
  ctu::cf::assign();
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 87) = 0;
  *(a1 + 95) = 0;
  CFDictionaryGetValue(theDict, @"password");
  ctu::cf::assign();
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 111) = 0;
  *(a1 + 119) = 0;
  CFDictionaryGetValue(theDict, @"auth_type");
  ctu::cf::assign();
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 135) = 0;
  *(a1 + 143) = 0;
  return 1;
}

void sub_10029FA94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10029FAC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v44 = 0;
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
  *__p = 0u;
  v33 = 0u;
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  v29 = 0u;
  sub_10000C320(&v29);
  v4 = sub_10000C030(&v30, "name:'", 6);
  v5 = *(a1 + 71);
  if (v5 >= 0)
  {
    v6 = a1 + 48;
  }

  else
  {
    v6 = *(a1 + 48);
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 71);
  }

  else
  {
    v7 = *(a1 + 56);
  }

  v8 = sub_10000C030(v4, v6, v7);
  v9 = sub_10000C030(v8, "', username:'", 13);
  v10 = *(a1 + 95);
  if (v10 >= 0)
  {
    v11 = a1 + 72;
  }

  else
  {
    v11 = *(a1 + 72);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 95);
  }

  else
  {
    v12 = *(a1 + 80);
  }

  v13 = sub_10000C030(v9, v11, v12);
  v14 = sub_10000C030(v13, "', password:'", 13);
  v15 = *(a1 + 119);
  if (v15 >= 0)
  {
    v16 = a1 + 96;
  }

  else
  {
    v16 = *(a1 + 96);
  }

  if (v15 >= 0)
  {
    v17 = *(a1 + 119);
  }

  else
  {
    v17 = *(a1 + 104);
  }

  v18 = sub_10000C030(v14, v16, v17);
  v19 = sub_10000C030(v18, "', auth-type:'", 14);
  v22 = *(a1 + 120);
  v21 = a1 + 120;
  v20 = v22;
  v23 = *(v21 + 23);
  if (v23 >= 0)
  {
    v24 = v21;
  }

  else
  {
    v24 = v20;
  }

  if (v23 >= 0)
  {
    v25 = *(v21 + 23);
  }

  else
  {
    v25 = *(v21 + 8);
  }

  v26 = sub_10000C030(v19, v24, v25);
  sub_10000C030(v26, "'", 1);
  sub_10006EE70(&v30 + 8, a2);
  *&v30 = v27;
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v31);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

uint64_t sub_10029FD6C(uint64_t a1)
{
  *a1 = off_101E37F88;
  if (*(a1 + 376) == 1)
  {
    v2 = *(a1 + 352);
    if (v2)
    {
      *(a1 + 360) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 344) == 1 && *(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  if (*(a1 + 312) == 1 && *(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  v4 = (a1 + 264);
  sub_1002A6458(&v4);
  sub_10001021C((a1 + 248));
  if (*(a1 + 216) == 1)
  {
    CIPFamily::~CIPFamily((a1 + 200));
  }

  CIPFamily::~CIPFamily((a1 + 184));
  CIPFamily::~CIPFamily((a1 + 168));
  return sub_10029F15C(a1);
}

void sub_10029FE4C(uint64_t a1)
{
  sub_10029FD6C(a1);

  operator delete();
}

uint64_t sub_10029FE84(uint64_t a1)
{
  if ((*(a1 + 232) & 1) != 0 || ((*(a1 + 160) | *(a1 + 152)) & 0xFFFFFFFFFBF9FFFBLL) != 0)
  {
    return 0;
  }

  v1 = 1;
  *(a1 + 232) = 1;
  return v1;
}

const void **sub_10029FEBC@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  MutableCopy = 0;
  sub_10029F228(a1, theDict);
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict[0]);
  sub_10001021C(theDict);
  theDict[0] = 0;
  theDict[0] = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, (a1 + 152));
  CFDictionaryAddValue(MutableCopy, @"type-mask", theDict[0]);
  sub_100029A48(theDict);
  if (*(a1 + 160))
  {
    theDict[0] = 0;
    theDict[0] = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, (a1 + 160));
    CFDictionaryAddValue(MutableCopy, @"tech-type-mask", theDict[0]);
    sub_100029A48(theDict);
  }

  if (CIPFamily::operator BOOL())
  {
    v6 = MutableCopy;
    v7 = *(a1 + 176);
    *&valuePtr = 0;
    LODWORD(theDict[0]) = v7;
    v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, theDict);
    if (v8)
    {
      v9 = valuePtr;
      *&valuePtr = v8;
      theDict[0] = v9;
      sub_100029A48(theDict);
    }

    *&v105 = valuePtr;
    *&valuePtr = 0;
    sub_100029A48(&valuePtr);
    CFDictionaryAddValue(v6, @"AllowedProtocolMask", v105);
    sub_100029A48(&v105);
  }

  if (CIPFamily::operator BOOL())
  {
    v10 = MutableCopy;
    v11 = *(a1 + 192);
    *&valuePtr = 0;
    LODWORD(theDict[0]) = v11;
    v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, theDict);
    if (v12)
    {
      v13 = valuePtr;
      *&valuePtr = v12;
      theDict[0] = v13;
      sub_100029A48(theDict);
    }

    *&v105 = valuePtr;
    *&valuePtr = 0;
    sub_100029A48(&valuePtr);
    CFDictionaryAddValue(v10, @"AllowedProtocolMaskInRoaming", v105);
    sub_100029A48(&v105);
  }

  if (*(a1 + 216) == 1)
  {
    v14 = MutableCopy;
    v15 = *(a1 + 208);
    *&valuePtr = 0;
    LODWORD(theDict[0]) = v15;
    v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, theDict);
    if (v16)
    {
      v17 = valuePtr;
      *&valuePtr = v16;
      theDict[0] = v17;
      sub_100029A48(theDict);
    }

    *&v105 = valuePtr;
    *&valuePtr = 0;
    sub_100029A48(&valuePtr);
    CFDictionaryAddValue(v14, @"AllowedProtocolMaskInDomesticRoaming", v105);
    sub_100029A48(&v105);
  }

  if (a2)
  {
    v18 = MutableCopy;
    v19 = *(a1 + 224);
    *&valuePtr = 0;
    theDict[0] = v19;
    v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, theDict);
    if (v20)
    {
      v21 = valuePtr;
      *&valuePtr = v20;
      theDict[0] = v21;
      sub_100029A48(theDict);
    }

    *&v105 = valuePtr;
    *&valuePtr = 0;
    sub_100029A48(&valuePtr);
    CFDictionaryAddValue(v18, @"InactivityTimer", v105);
    sub_100029A48(&v105);
    v22 = MutableCopy;
    v23 = *(a1 + 228);
    *&valuePtr = 0;
    theDict[0] = v23;
    v24 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, theDict);
    if (v24)
    {
      v25 = valuePtr;
      *&valuePtr = v24;
      theDict[0] = v25;
      sub_100029A48(theDict);
    }

    *&v105 = valuePtr;
    *&valuePtr = 0;
    sub_100029A48(&valuePtr);
    CFDictionaryAddValue(v22, @"TechnologyMask", v105);
    sub_100029A48(&v105);
  }

  if (*(a1 + 232) == 1)
  {
    v26 = MutableCopy;
    *&valuePtr = 0;
    LODWORD(theDict[0]) = 1;
    v27 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, theDict);
    if (v27)
    {
      v28 = valuePtr;
      *&valuePtr = v27;
      theDict[0] = v28;
      sub_100029A48(theDict);
    }

    *&v105 = valuePtr;
    *&valuePtr = 0;
    sub_100029A48(&valuePtr);
    CFDictionaryAddValue(v26, @"AllowNoDNS", v105);
    sub_100029A48(&v105);
  }

  v29 = MutableCopy;
  if (*(a1 + 233))
  {
    v30 = kCFBooleanTrue;
  }

  else
  {
    v30 = kCFBooleanFalse;
  }

  *&valuePtr = v30;
  theDict[0] = 0;
  sub_100045C8C(theDict);
  *&v105 = valuePtr;
  *&valuePtr = 0;
  sub_100045C8C(&valuePtr);
  CFDictionaryAddValue(v29, @"SupportSwitchOver", v105);
  sub_100045C8C(&v105);
  v31 = MutableCopy;
  if (*(a1 + 234))
  {
    v32 = kCFBooleanTrue;
  }

  else
  {
    v32 = kCFBooleanFalse;
  }

  *&valuePtr = v32;
  theDict[0] = 0;
  sub_100045C8C(theDict);
  *&v105 = valuePtr;
  *&valuePtr = 0;
  sub_100045C8C(&valuePtr);
  CFDictionaryAddValue(v31, @"AlwaysOnPDU", v105);
  sub_100045C8C(&v105);
  v33 = MutableCopy;
  if (*(a1 + 235))
  {
    v34 = kCFBooleanTrue;
  }

  else
  {
    v34 = kCFBooleanFalse;
  }

  *&valuePtr = v34;
  theDict[0] = 0;
  sub_100045C8C(theDict);
  *&v105 = valuePtr;
  *&valuePtr = 0;
  sub_100045C8C(&valuePtr);
  CFDictionaryAddValue(v33, @"SuppressPdnTearDown", v105);
  sub_100045C8C(&v105);
  v35 = MutableCopy;
  if (*(a1 + 236))
  {
    v36 = kCFBooleanTrue;
  }

  else
  {
    v36 = kCFBooleanFalse;
  }

  *&valuePtr = v36;
  theDict[0] = 0;
  sub_100045C8C(theDict);
  *&v105 = valuePtr;
  *&valuePtr = 0;
  sub_100045C8C(&valuePtr);
  CFDictionaryAddValue(v35, @"Support5GSaHandOver", v105);
  sub_100045C8C(&v105);
  if (*(a1 + 238) == 1)
  {
    v37 = MutableCopy;
    if (*(a1 + 237))
    {
      v38 = kCFBooleanTrue;
    }

    else
    {
      v38 = kCFBooleanFalse;
    }

    *&valuePtr = v38;
    theDict[0] = 0;
    sub_100045C8C(theDict);
    *&v105 = valuePtr;
    *&valuePtr = 0;
    sub_100045C8C(&valuePtr);
    CFDictionaryAddValue(v37, @"DontSuspend", v105);
    sub_100045C8C(&v105);
  }

  if (*(a1 + 240) == 1)
  {
    v39 = MutableCopy;
    if (*(a1 + 239))
    {
      v40 = kCFBooleanTrue;
    }

    else
    {
      v40 = kCFBooleanFalse;
    }

    *&valuePtr = v40;
    theDict[0] = 0;
    sub_100045C8C(theDict);
    *&v105 = valuePtr;
    *&valuePtr = 0;
    sub_100045C8C(&valuePtr);
    CFDictionaryAddValue(v39, @"SuspendOnBBCall", v105);
    sub_100045C8C(&v105);
  }

  v41 = MutableCopy;
  v42 = *(a1 + 242);
  *&valuePtr = 0;
  theDict[0] = v42;
  v43 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, theDict);
  if (v43)
  {
    v44 = valuePtr;
    *&valuePtr = v43;
    theDict[0] = v44;
    sub_100029A48(theDict);
  }

  *&v105 = valuePtr;
  *&valuePtr = 0;
  sub_100029A48(&valuePtr);
  CFDictionaryAddValue(v41, @"PcoContainerId", v105);
  sub_100029A48(&v105);
  if (a2)
  {
    v45 = *(a1 + 248);
    if (v45)
    {
      CFDictionaryAddValue(MutableCopy, @"ProxyConfiguration", v45);
    }

    v46 = MutableCopy;
    if (*(a1 + 256))
    {
      v47 = kCFBooleanTrue;
    }

    else
    {
      v47 = kCFBooleanFalse;
    }

    *&valuePtr = v47;
    theDict[0] = 0;
    sub_100045C8C(theDict);
    *&v105 = valuePtr;
    *&valuePtr = 0;
    sub_100045C8C(&valuePtr);
    CFDictionaryAddValue(v46, @"UseNetworkMTU", v105);
    sub_100045C8C(&v105);
  }

  if (*(a1 + 312) == 1)
  {
    v48 = MutableCopy;
    if (*(a1 + 311) < 0)
    {
      sub_100005F2C(__p, *(a1 + 288), *(a1 + 296));
    }

    else
    {
      *__p = *(a1 + 288);
      v102 = *(a1 + 304);
    }

    if (SHIBYTE(v102) < 0)
    {
      sub_100005F2C(&valuePtr, __p[0], __p[1]);
    }

    else
    {
      valuePtr = *__p;
      v108 = v102;
    }

    v110[0] = 0;
    if (SHIBYTE(v108) < 0)
    {
      sub_100005F2C(theDict, valuePtr, *(&valuePtr + 1));
    }

    else
    {
      *theDict = valuePtr;
      v97[0] = v108;
    }

    v93[0] = 0;
    if (ctu::cf::convert_copy())
    {
      v49 = v110[0];
      v110[0] = v93[0];
      *&v105 = v49;
      sub_100005978(&v105);
    }

    if (SHIBYTE(v97[0]) < 0)
    {
      operator delete(theDict[0]);
    }

    v109 = v110[0];
    v110[0] = 0;
    sub_100005978(v110);
    if (SHIBYTE(v108) < 0)
    {
      operator delete(valuePtr);
    }

    CFDictionaryAddValue(v48, @"alt-name", v109);
    sub_100005978(&v109);
    if (SHIBYTE(v102) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v50 = MutableCopy;
  if (*(a1 + 384))
  {
    v51 = kCFBooleanTrue;
  }

  else
  {
    v51 = kCFBooleanFalse;
  }

  *&valuePtr = v51;
  theDict[0] = 0;
  sub_100045C8C(theDict);
  *&v105 = valuePtr;
  *&valuePtr = 0;
  sub_100045C8C(&valuePtr);
  CFDictionaryAddValue(v50, @"enableXLAT464", v105);
  sub_100045C8C(&v105);
  if (*(a1 + 272) != *(a1 + 264))
  {
    theArray = 0;
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    theArray = Mutable;
    v53 = *(a1 + 264);
    v54 = *(a1 + 272);
    if (v53 != v54)
    {
      v87 = a3;
      do
      {
        v99 = 0;
        *v97 = 0u;
        v98 = 0u;
        *theDict = 0u;
        v55 = *v53;
        v97[0] = *(v53 + 2);
        *theDict = v55;
        v98 = 0uLL;
        v97[1] = 0;
        sub_10024064C(&v97[1], *(v53 + 3), *(v53 + 4), (*(v53 + 4) - *(v53 + 3)) >> 2);
        LOBYTE(v99) = *(v53 + 48);
        v95 = 0;
        v56 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v94 = 0;
        v95 = v56;
        v93[0] = 0;
        v93[1] = 0;
        v57 = asString();
        sub_10000501C(v93, v57);
        v58 = v95;
        if (SHIBYTE(v94) < 0)
        {
          sub_100005F2C(__dst, v93[0], v93[1]);
        }

        else
        {
          *__dst = *v93;
          v91 = v94;
        }

        if (SHIBYTE(v91) < 0)
        {
          sub_100005F2C(&v105, __dst[0], __dst[1]);
        }

        else
        {
          v105 = *__dst;
          v106 = v91;
        }

        v104 = 0;
        if (SHIBYTE(v106) < 0)
        {
          sub_100005F2C(&valuePtr, v105, *(&v105 + 1));
        }

        else
        {
          valuePtr = v105;
          v108 = v106;
        }

        v109 = 0;
        if (ctu::cf::convert_copy())
        {
          v59 = v104;
          v104 = v109;
          v110[0] = v59;
          sub_100005978(v110);
        }

        if (SHIBYTE(v108) < 0)
        {
          operator delete(valuePtr);
        }

        value = v104;
        v104 = 0;
        sub_100005978(&v104);
        if (SHIBYTE(v106) < 0)
        {
          operator delete(v105);
        }

        CFDictionaryAddValue(v58, @"Type", value);
        sub_100005978(&value);
        if (SHIBYTE(v91) < 0)
        {
          operator delete(__dst[0]);
        }

        v60 = v95;
        if (BYTE4(theDict[0]))
        {
          v61 = kCFBooleanTrue;
        }

        else
        {
          v61 = kCFBooleanFalse;
        }

        *&v105 = v61;
        *&valuePtr = 0;
        sub_100045C8C(&valuePtr);
        v110[0] = v105;
        *&v105 = 0;
        sub_100045C8C(&v105);
        CFDictionaryAddValue(v60, @"RecoversOnAirplaneMode", v110[0]);
        sub_100045C8C(v110);
        v62 = v95;
        if (v99)
        {
          v63 = kCFBooleanTrue;
        }

        else
        {
          v63 = kCFBooleanFalse;
        }

        *&v105 = v63;
        *&valuePtr = 0;
        sub_100045C8C(&valuePtr);
        v110[0] = v105;
        *&v105 = 0;
        sub_100045C8C(&v105);
        CFDictionaryAddValue(v62, @"RecoversOnWiFiAPChange", v110[0]);
        sub_100045C8C(v110);
        v64 = v95;
        *&v105 = 0;
        *&valuePtr = LODWORD(theDict[1]);
        v65 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
        if (v65)
        {
          v66 = v105;
          *&v105 = v65;
          *&valuePtr = v66;
          sub_100029A48(&valuePtr);
        }

        v110[0] = v105;
        *&v105 = 0;
        sub_100029A48(&v105);
        CFDictionaryAddValue(v64, @"NumTriesAllowed", v110[0]);
        sub_100029A48(v110);
        v67 = v95;
        *&v105 = 0;
        *&valuePtr = v97[0];
        v68 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, &valuePtr);
        if (v68)
        {
          v69 = v105;
          *&v105 = v68;
          *&valuePtr = v69;
          sub_100029A48(&valuePtr);
        }

        v110[0] = v105;
        *&v105 = 0;
        sub_100029A48(&v105);
        CFDictionaryAddValue(v67, @"Timeout", v110[0]);
        sub_100029A48(v110);
        v110[0] = 0;
        v70 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        v110[0] = v70;
        v71 = v97[1];
        v72 = v98;
        if (v97[1] != v98)
        {
          do
          {
            v73 = *v71;
            v74 = v110[0];
            *&v105 = 0;
            LODWORD(valuePtr) = v73;
            v75 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
            if (v75)
            {
              v76 = v105;
              *&v105 = v75;
              *&valuePtr = v76;
              sub_100029A48(&valuePtr);
            }

            v109 = v105;
            *&v105 = 0;
            sub_100029A48(&v105);
            CFArrayAppendValue(v74, v109);
            sub_100029A48(&v109);
            ++v71;
          }

          while (v71 != v72);
          v70 = v110[0];
        }

        CFDictionaryAddValue(v95, @"CauseCodes", v70);
        CFArrayAppendValue(theArray, v95);
        sub_1000279DC(v110);
        if (SHIBYTE(v94) < 0)
        {
          operator delete(v93[0]);
        }

        sub_1000296E0(&v95);
        if (v97[1])
        {
          *&v98 = v97[1];
          operator delete(v97[1]);
        }

        v53 = (v53 + 56);
      }

      while (v53 != v54);
      Mutable = theArray;
      a3 = v87;
    }

    CFDictionaryAddValue(MutableCopy, @"NoCellularReconnectCauseCodes", Mutable);
    sub_1000279DC(&theArray);
  }

  if (*(a1 + 344) == 1)
  {
    v77 = MutableCopy;
    if (*(a1 + 343) < 0)
    {
      sub_100005F2C(v88, *(a1 + 320), *(a1 + 328));
    }

    else
    {
      *v88 = *(a1 + 320);
      v89 = *(a1 + 336);
    }

    if (SHIBYTE(v89) < 0)
    {
      sub_100005F2C(&valuePtr, v88[0], v88[1]);
    }

    else
    {
      valuePtr = *v88;
      v108 = v89;
    }

    v110[0] = 0;
    if (SHIBYTE(v108) < 0)
    {
      sub_100005F2C(theDict, valuePtr, *(&valuePtr + 1));
    }

    else
    {
      *theDict = valuePtr;
      v97[0] = v108;
    }

    v93[0] = 0;
    if (ctu::cf::convert_copy())
    {
      v78 = v110[0];
      v110[0] = v93[0];
      *&v105 = v78;
      sub_100005978(&v105);
    }

    if (SHIBYTE(v97[0]) < 0)
    {
      operator delete(theDict[0]);
    }

    v109 = v110[0];
    v110[0] = 0;
    sub_100005978(v110);
    if (SHIBYTE(v108) < 0)
    {
      operator delete(valuePtr);
    }

    CFDictionaryAddValue(v77, @"OrigApn", v109);
    sub_100005978(&v109);
    if (SHIBYTE(v89) < 0)
    {
      operator delete(v88[0]);
    }
  }

  if (*(a1 + 376) == 1)
  {
    *&v105 = 0;
    v79 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (v79)
    {
      *&v105 = v79;
      theDict[0] = 0;
      sub_1000279DC(theDict);
    }

    if ((*(a1 + 376) & 1) == 0)
    {
      sub_1000D1644();
    }

    v81 = *(a1 + 352);
    v80 = *(a1 + 360);
    while (v81 != v80)
    {
      v82 = *v81;
      v83 = v105;
      *&valuePtr = 0;
      LODWORD(theDict[0]) = v82;
      v84 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, theDict);
      if (v84)
      {
        v85 = valuePtr;
        *&valuePtr = v84;
        theDict[0] = v85;
        sub_100029A48(theDict);
      }

      v93[0] = valuePtr;
      *&valuePtr = 0;
      sub_100029A48(&valuePtr);
      CFArrayAppendValue(v83, v93[0]);
      sub_100029A48(v93);
      ++v81;
    }

    CFDictionaryAddValue(MutableCopy, @"APNSwitchCauseCodes", v105);
    sub_1000279DC(&v105);
  }

  sub_100010180(a3, &MutableCopy);
  return sub_1000296E0(&MutableCopy);
}

void sub_1002A0D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  sub_100005978((v48 - 96));
  if (*(v48 - 105) < 0)
  {
    operator delete(*(v48 - 128));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0((v48 - 176));
  _Unwind_Resume(a1);
}

uint64_t sub_1002A0FD0(uint64_t a1, const __CFDictionary *a2, int a3)
{
  v4 = a2;
  sub_10029F8C0(a1, a2);
  Value = CFDictionaryGetValue(v4, @"type-mask");
  buf.n128_u32[0] = 0;
  if (Value && (v7 = Value, v8 = CFGetTypeID(Value), v8 == CFNumberGetTypeID()))
  {
    ctu::cf::assign(&buf, v7, v9);
    v10 = buf.n128_u32[0];
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 152) = v10;
  v11 = CFDictionaryGetValue(v4, @"tech-type-mask");
  v12 = v11;
  buf.n128_u32[0] = 0;
  if (v11)
  {
    v13 = CFGetTypeID(v11);
    if (v13 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&buf, v12, v14);
    }
  }

  *(a1 + 160) = buf.n128_u32[0];
  TypeID = CFDictionaryGetValue(v4, @"AllowedProtocolMask");
  v16 = TypeID;
  buf.n128_u32[0] = 0;
  if (!TypeID)
  {
    goto LABEL_13;
  }

  v17 = CFGetTypeID(TypeID);
  TypeID = CFNumberGetTypeID();
  if (v17 == TypeID)
  {
    TypeID = ctu::cf::assign(&buf, v16, v18);
  }

  if (buf.n128_u32[0])
  {
    *(a1 + 176) = buf.n128_u32[0];
    *(a1 + 180) = 0;
  }

  else
  {
LABEL_13:
    DataUtils::supportDualIPAPNDefault(TypeID);
    sub_1002A215C((a1 + 144), *(a1 + 152), &buf);
    CIPFamily::operator=();
    *(a1 + 180) = 1;
    CIPFamily::~CIPFamily(&buf);
  }

  v19 = CFDictionaryGetValue(v4, @"AllowedProtocolMaskInRoaming");
  v20 = v19;
  buf.n128_u32[0] = 0;
  if (!v19)
  {
    goto LABEL_19;
  }

  v21 = CFGetTypeID(v19);
  if (v21 == CFNumberGetTypeID())
  {
    ctu::cf::assign(&buf, v20, v22);
  }

  if (buf.n128_u32[0])
  {
    *(a1 + 192) = buf.n128_u32[0];
    *(a1 + 196) = 0;
  }

  else
  {
LABEL_19:
    sub_1002A215C((a1 + 144), *(a1 + 152), &buf);
    CIPFamily::operator=();
    *(a1 + 196) = 1;
    CIPFamily::~CIPFamily(&buf);
  }

  v23 = CFDictionaryGetValue(v4, @"AllowedProtocolMaskInDomesticRoaming");
  v24 = v23;
  if (v23)
  {
    v25 = CFGetTypeID(v23);
    if (v25 == CFNumberGetTypeID())
    {
      buf.n128_u32[0] = 0;
      ctu::cf::assign(&buf, v24, v26);
      v27 = buf.n128_u32[0];
      if ((*(a1 + 216) & 1) == 0)
      {
        *(a1 + 216) = 1;
      }

      *(a1 + 208) = v27;
      *(a1 + 212) = 0;
    }
  }

  if (a3)
  {
    v28 = CFDictionaryGetValue(v4, @"InactivityTimer");
    v29 = v28;
    buf.n128_u32[0] = 0;
    if (v28)
    {
      v30 = CFGetTypeID(v28);
      if (v30 == CFNumberGetTypeID())
      {
        ctu::cf::assign(&buf, v29, v31);
      }
    }

    *(a1 + 224) = buf.n128_u32[0];
    v32 = CFDictionaryGetValue(v4, @"TechnologyMask");
    v33 = v32;
    buf.n128_u32[0] = 0;
    if (v32)
    {
      v34 = CFGetTypeID(v32);
      if (v34 == CFNumberGetTypeID())
      {
        ctu::cf::assign(&buf, v33, v35);
      }
    }

    *(a1 + 228) = buf.n128_u32[0];
  }

  v36 = CFDictionaryGetValue(v4, @"AllowNoDNS");
  v37 = v36;
  buf.n128_u32[0] = 0;
  if (v36)
  {
    v38 = CFGetTypeID(v36);
    if (v38 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&buf, v37, v39);
    }
  }

  *(a1 + 232) = buf.n128_u32[0] == 1;
  v40 = CFDictionaryGetValue(v4, @"SupportSwitchOver");
  v41 = v40;
  buf.n128_u8[0] = 0;
  if (v40)
  {
    v42 = CFGetTypeID(v40);
    if (v42 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&buf, v41, v43);
    }
  }

  *(a1 + 233) = buf.n128_u8[0];
  v44 = CFDictionaryGetValue(v4, @"AlwaysOnPDU");
  v45 = v44;
  buf.n128_u8[0] = 0;
  if (v44)
  {
    v46 = CFGetTypeID(v44);
    if (v46 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&buf, v45, v47);
    }
  }

  *(a1 + 234) = buf.n128_u8[0];
  v48 = CFDictionaryGetValue(v4, @"SuppressPdnTearDown");
  v49 = v48;
  buf.n128_u8[0] = 0;
  if (v48)
  {
    v50 = CFGetTypeID(v48);
    if (v50 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&buf, v49, v51);
    }
  }

  *(a1 + 235) = buf.n128_u8[0];
  v52 = CFDictionaryGetValue(v4, @"Support5GSaHandOver");
  v53 = v52;
  buf.n128_u8[0] = 0;
  if (v52)
  {
    v54 = CFGetTypeID(v52);
    if (v54 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&buf, v53, v55);
    }
  }

  *(a1 + 236) = buf.n128_u8[0];
  v56 = CFDictionaryGetValue(v4, @"DontSuspend");
  v57 = v56;
  if (v56)
  {
    buf.n128_u8[0] = 0;
    v58 = CFGetTypeID(v56);
    if (v58 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&buf, v57, v59);
    }

    *(a1 + 237) = buf.n128_u8[0] | 0x100;
  }

  v60 = CFDictionaryGetValue(v4, @"SuspendOnBBCall");
  v61 = v60;
  if (v60)
  {
    buf.n128_u8[0] = 0;
    v62 = CFGetTypeID(v60);
    if (v62 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&buf, v61, v63);
    }

    *(a1 + 239) = buf.n128_u8[0] | 0x100;
  }

  v64 = CFDictionaryGetValue(v4, @"PcoContainerId");
  v65 = v64;
  buf.n128_u16[0] = 0;
  if (v64)
  {
    v66 = CFGetTypeID(v64);
    if (v66 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&buf, v65, v67);
    }
  }

  *(a1 + 242) = buf.n128_u16[0];
  v68 = CFDictionaryGetValue(v4, @"ProxyConfiguration");
  v69 = v68;
  if (v68)
  {
    v70 = CFGetTypeID(v68);
    if (v70 == CFDictionaryGetTypeID())
    {
      buf.n128_u64[0] = v69;
      sub_1002A2218((a1 + 248), &buf);
    }
  }

  v71 = CFDictionaryGetValue(v4, @"UseNetworkMTU");
  v72 = v71;
  buf.n128_u8[0] = 0;
  if (v71)
  {
    v73 = CFGetTypeID(v71);
    if (v73 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&buf, v72, v74);
    }
  }

  *(a1 + 256) = buf.n128_u8[0];
  if (CFDictionaryGetValue(v4, @"alt-name"))
  {
    ctu::cf::assign();
    buf.n128_u64[0] = 0;
    *(buf.n128_u64 + 7) = 0;
    memset(&theArray[1], 0, 24);
    if (*(a1 + 312) == 1)
    {
      if (*(a1 + 311) < 0)
      {
        operator delete(*(a1 + 288));
        v143 = buf.n128_u64[0];
        *(a1 + 288) = 0;
        *(a1 + 296) = v143;
      }

      else
      {
        v75 = buf.n128_u64[0];
        *(a1 + 288) = 0;
        *(a1 + 296) = v75;
      }

      *(a1 + 303) = *(buf.n128_u64 + 7);
      *(a1 + 311) = 0;
    }

    else
    {
      v76 = buf.n128_u64[0];
      *(a1 + 288) = 0;
      *(a1 + 296) = v76;
      *(a1 + 303) = *(buf.n128_u64 + 7);
      *(a1 + 311) = 0;
      *(a1 + 312) = 1;
    }
  }

  v77 = CFDictionaryGetValue(v4, @"enableXLAT464");
  v78 = v77;
  buf.n128_u8[0] = 0;
  if (v77)
  {
    v79 = CFGetTypeID(v77);
    if (v79 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&buf, v78, v80);
    }
  }

  *(a1 + 384) = buf.n128_u8[0];
  sub_1002A226C((a1 + 264));
  if (CFDictionaryGetValue(v4, @"NoCellularReconnectCauseCodes"))
  {
    theArray[0] = 0;
    buf.n128_u64[0] = CFDictionaryGetValue(v4, @"NoCellularReconnectCauseCodes");
    sub_1001FA5E0(theArray, &buf);
    if (theArray[0])
    {
      Count = CFArrayGetCount(theArray[0]);
      v82 = Count;
      if (Count >= 1)
      {
        v83 = 0;
        v145 = Count;
        v146 = v4;
        while (1)
        {
          theDict = 0;
          buf.n128_u64[0] = CFArrayGetValueAtIndex(theArray[0], v83);
          sub_100010180(&theDict, &buf);
          if (!theDict)
          {
            goto LABEL_157;
          }

          v84 = CFDictionaryGetValue(theDict, @"Type");
          v85 = theDict;
          if (!v84)
          {
            v91 = 1;
            goto LABEL_94;
          }

          CFDictionaryGetValue(theDict, @"Type");
          buf = 0uLL;
          v158 = 0;
          ctu::cf::assign();
          v154 = v158;
          *__p = buf;
          v86 = HIBYTE(v158);
          if (v158 < 0)
          {
            v86 = __p[1];
          }

          if (v86 == 7)
          {
            break;
          }

          if (v86 == 5)
          {
            v87 = __p[0];
            if (v158 >= 0)
            {
              v87 = __p;
            }

            v88 = *v87;
            v89 = *(v87 + 4);
            if (v88 == 1347438387 && v89 == 50)
            {
              v91 = 2;
              if ((SHIBYTE(v158) & 0x80000000) == 0)
              {
                goto LABEL_92;
              }

              goto LABEL_91;
            }
          }

          v91 = 1;
          if (SHIBYTE(v158) < 0)
          {
            goto LABEL_91;
          }

LABEL_92:
          v85 = theDict;
LABEL_94:
          if (CFDictionaryGetValue(v85, @"RecoversOnAirplaneMode"))
          {
            v92 = CFDictionaryGetValue(theDict, @"RecoversOnAirplaneMode");
            v93 = v92;
            buf.n128_u8[0] = 0;
            if (v92)
            {
              v94 = CFGetTypeID(v92);
              if (v94 == CFBooleanGetTypeID())
              {
                ctu::cf::assign(&buf, v93, v95);
              }
            }

            v96 = buf.n128_u8[0];
          }

          else
          {
            v96 = 0;
          }

          if (CFDictionaryGetValue(theDict, @"RecoversOnWiFiAPChange"))
          {
            v97 = CFDictionaryGetValue(theDict, @"RecoversOnWiFiAPChange");
            v98 = v97;
            buf.n128_u8[0] = 0;
            if (v97)
            {
              v99 = CFGetTypeID(v97);
              if (v99 == CFBooleanGetTypeID())
              {
                ctu::cf::assign(&buf, v98, v100);
              }
            }

            v101 = buf.n128_u8[0];
          }

          else
          {
            v101 = 0;
          }

          if (CFDictionaryGetValue(theDict, @"NumTriesAllowed"))
          {
            v102 = CFDictionaryGetValue(theDict, @"NumTriesAllowed");
            v103 = v102;
            buf.n128_u32[0] = 0;
            if (v102)
            {
              v104 = CFGetTypeID(v102);
              if (v104 == CFNumberGetTypeID())
              {
                ctu::cf::assign(&buf, v103, v105);
              }
            }

            v106 = buf.n128_u32[0];
          }

          else
          {
            v106 = 1;
          }

          if (CFDictionaryGetValue(theDict, @"Timeout"))
          {
            v107 = CFDictionaryGetValue(theDict, @"Timeout");
            v108 = v107;
            buf.n128_u64[0] = 0;
            if (v107)
            {
              v109 = CFGetTypeID(v107);
              if (v109 == CFNumberGetTypeID())
              {
                ctu::cf::assign(&buf, v108, v110);
              }
            }

            v111 = buf.n128_u64[0];
          }

          else
          {
            v111 = 0;
          }

          __p[0] = 0;
          __p[1] = 0;
          v154 = 0;
          v112 = CFDictionaryGetValue(theDict, @"CauseCodes");
          v113 = v112;
          if (v112)
          {
            v114 = CFGetTypeID(v112);
            if (v114 == CFNumberGetTypeID())
            {
              buf.n128_u64[0] = 0;
              v152 = v113;
              sub_1002AF4F0(&buf, &v152);
              if (buf.n128_u64[0])
              {
                LODWORD(v152) = 0;
                ctu::cf::assign(&v152, buf.n128_u64[0], v115);
                LODWORD(ValueAtIndex) = v152;
                sub_1001FDFFC(__p, &ValueAtIndex);
              }

              sub_100029A48(&buf);
            }

            else
            {
              v116 = CFGetTypeID(v113);
              if (v116 == CFArrayGetTypeID())
              {
                buf.n128_u64[0] = 0;
                v152 = v113;
                sub_1001FA5E0(&buf, &v152);
                if (buf.n128_u64[0])
                {
                  v117 = CFArrayGetCount(buf.n128_u64[0]);
                  if (v117 >= 1)
                  {
                    for (i = 0; i != v117; ++i)
                    {
                      v152 = 0;
                      ValueAtIndex = CFArrayGetValueAtIndex(buf.n128_u64[0], i);
                      sub_1002AF4F0(&v152, &ValueAtIndex);
                      if (v152)
                      {
                        LODWORD(ValueAtIndex) = 0;
                        ctu::cf::assign(&ValueAtIndex, v152, v119);
                        v150 = ValueAtIndex;
                        sub_1001FDFFC(__p, &v150);
                      }

                      sub_100029A48(&v152);
                    }
                  }
                }

                sub_100010250(&buf);
              }

              else
              {
                v124 = *(a1 + 40);
                if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
                {
                  buf.n128_u32[0] = 136315138;
                  *(buf.n128_u64 + 4) = "fromDict";
                  _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "#I %s: Wrong data type in CauseCodes", &buf, 0xCu);
                }
              }
            }
          }

          v125 = __p[0];
          if (__p[1] == __p[0])
          {
            v82 = v145;
            v4 = v146;
            if (!__p[0])
            {
              goto LABEL_157;
            }
          }

          else
          {
            v148 = 0;
            v149 = 0;
            v147 = 0;
            sub_10024064C(&v147, __p[0], __p[1], (__p[1] - __p[0]) >> 2);
            buf.n128_u32[0] = v91;
            buf.n128_u8[4] = v96 & 1;
            buf.n128_u32[2] = v106;
            v158 = v111;
            v160 = 0;
            v159 = 0uLL;
            sub_10024064C(&v159, v147, v148, (v148 - v147) >> 2);
            v161 = v101 & 1;
            v126 = *(a1 + 272);
            v82 = v145;
            v4 = v146;
            if (v126 >= *(a1 + 280))
            {
              v128 = sub_1002A64AC((a1 + 264), &buf);
              v129 = v159.n128_u64[0];
              *(a1 + 272) = v128;
              if (v129)
              {
                v159.n128_u64[1] = v129;
                operator delete(v129);
              }
            }

            else
            {
              v127 = v158;
              *v126 = buf;
              v126[1].n128_u64[0] = v127;
              v126[1].n128_u64[1] = 0;
              v126[2].n128_u64[0] = 0;
              v126[2].n128_u64[1] = 0;
              *(v126 + 24) = v159;
              v126[2].n128_u64[1] = v160;
              v159 = 0uLL;
              v160 = 0;
              v126[3].n128_u8[0] = v161;
              *(a1 + 272) = v126 + 56;
            }

            if (v147)
            {
              v148 = v147;
              operator delete(v147);
            }

            v125 = __p[0];
            if (!__p[0])
            {
              goto LABEL_157;
            }
          }

          __p[1] = v125;
          operator delete(v125);
LABEL_157:
          sub_10001021C(&theDict);
          if (++v83 == v82)
          {
            goto LABEL_161;
          }
        }

        v120 = __p;
        if (v158 < 0)
        {
          v120 = __p[0];
        }

        v121 = bswap32(*v120);
        v122 = 1315925555;
        if (v121 == 1315925555 && (v121 = bswap32(*(v120 + 3)), v122 = 860311632, v121 == 860311632))
        {
          v123 = 0;
        }

        else if (v121 < v122)
        {
          v123 = -1;
        }

        else
        {
          v123 = 1;
        }

        if (v123)
        {
          v91 = 1;
        }

        else
        {
          v91 = 3;
        }

        if ((SHIBYTE(v158) & 0x80000000) == 0)
        {
          goto LABEL_92;
        }

LABEL_91:
        operator delete(__p[0]);
        goto LABEL_92;
      }
    }

LABEL_161:
    sub_100010250(theArray);
  }

  if (*(a1 + 344) == 1)
  {
    if (*(a1 + 343) < 0)
    {
      operator delete(*(a1 + 320));
    }

    *(a1 + 344) = 0;
  }

  if (CFDictionaryGetValue(v4, @"OrigApn"))
  {
    ctu::cf::assign();
    buf.n128_u64[0] = 0;
    *(buf.n128_u64 + 7) = 0;
    if (*(a1 + 344) == 1)
    {
      if (*(a1 + 343) < 0)
      {
        operator delete(*(a1 + 320));
        v144 = buf.n128_u64[0];
        *(a1 + 320) = 0;
        *(a1 + 328) = v144;
      }

      else
      {
        v130 = buf.n128_u64[0];
        *(a1 + 320) = 0;
        *(a1 + 328) = v130;
      }

      *(a1 + 335) = *(buf.n128_u64 + 7);
      *(a1 + 343) = 0;
    }

    else
    {
      v131 = buf.n128_u64[0];
      *(a1 + 320) = 0;
      *(a1 + 328) = v131;
      *(a1 + 335) = *(buf.n128_u64 + 7);
      *(a1 + 343) = 0;
      *(a1 + 344) = 1;
    }
  }

  if (*(a1 + 376) == 1)
  {
    v132 = *(a1 + 352);
    if (v132)
    {
      *(a1 + 360) = v132;
      operator delete(v132);
    }

    *(a1 + 376) = 0;
  }

  v133 = CFDictionaryGetValue(v4, @"APNSwitchCauseCodes");
  v134 = v133;
  if (v133)
  {
    v135 = CFGetTypeID(v133);
    if (v135 == CFNumberGetTypeID())
    {
      __p[0] = 0;
      buf.n128_u64[0] = v134;
      sub_1002AF4F0(__p, &buf);
      if (__p[0])
      {
        buf = 0uLL;
        v158 = 0;
        sub_1001E9734(a1 + 352, &buf);
        if (buf.n128_u64[0])
        {
          buf.n128_u64[1] = buf.n128_u64[0];
          operator delete(buf.n128_u64[0]);
        }

        if ((*(a1 + 376) & 1) == 0)
        {
          sub_1000D1644();
        }

        buf.n128_u32[0] = 0;
        ctu::cf::assign(&buf, __p[0], v136);
        LODWORD(theArray[0]) = buf.n128_u32[0];
        sub_1001FDFFC((a1 + 352), theArray);
      }

      sub_100029A48(__p);
    }

    else
    {
      v137 = CFGetTypeID(v134);
      if (v137 == CFArrayGetTypeID())
      {
        __p[0] = 0;
        buf.n128_u64[0] = v134;
        sub_1001FA5E0(__p, &buf);
        if (__p[0])
        {
          buf = 0uLL;
          v158 = 0;
          sub_1001E9734(a1 + 352, &buf);
          if (buf.n128_u64[0])
          {
            buf.n128_u64[1] = buf.n128_u64[0];
            operator delete(buf.n128_u64[0]);
          }

          v138 = CFArrayGetCount(__p[0]);
          if (v138 >= 1)
          {
            for (j = 0; j != v138; ++j)
            {
              buf.n128_u64[0] = 0;
              theArray[0] = CFArrayGetValueAtIndex(__p[0], j);
              sub_1002AF4F0(&buf, theArray);
              if (buf.n128_u64[0])
              {
                if ((*(a1 + 376) & 1) == 0)
                {
                  sub_1000D1644();
                }

                LODWORD(theArray[0]) = 0;
                ctu::cf::assign(theArray, buf.n128_u64[0], v140);
                LODWORD(theDict) = theArray[0];
                sub_1001FDFFC((a1 + 352), &theDict);
              }

              sub_100029A48(&buf);
            }
          }
        }

        sub_100010250(__p);
      }

      else
      {
        v141 = *(a1 + 40);
        if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
        {
          buf.n128_u32[0] = 136315138;
          *(buf.n128_u64 + 4) = "fromDict";
          _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "#I %s: Wrong data type in APNSwitchCauseCodes", &buf, 0xCu);
        }
      }
    }
  }

  return 1;
}

uint64_t sub_1002A215C@<X0>(DataUtils *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  result = DataUtils::supportDualIPAPNDefault(a1);
  if ((result & 1) != 0 || *a1 > 2u)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    v7 = DataUtils::defaultIPFamily(result);
    CIPFamily::CIPFamily(a3, v7);
    if ((a2 & 0x20000) != 0)
    {
      *(a3 + 8) = 3;
      *(a3 + 12) = 0;
    }

    if ((a2 & 0x40000) != 0)
    {
      *(a3 + 8) = 3;
      *(a3 + 12) = 0;
    }

    return CIPFamily::setDefault(a3);
  }

  else
  {
    *(a3 + 12) = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

const void **sub_1002A2218(const void **a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *a1;
  *a1 = v3;
  v6 = v4;
  sub_10001021C(&v6);
  return a1;
}

void sub_1002A226C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 56)
  {
    v4 = *(i - 32);
    if (v4)
    {
      *(i - 24) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

const void **sub_1002A22BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_10029FEBC(a1, 0, &v4);
  sub_1002A2318(&v4, a2);
  return sub_10001021C(&v4);
}

void sub_1002A2304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

const void **sub_1002A2318@<X0>(CFDictionaryRef *a1@<X0>, void *a2@<X8>)
{
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *a1);
  v14 = 0;
  v15 = MutableCopy;
  v18[2] = *off_101E37FB8;
  v18[3] = *off_101E37FC8;
  v18[4] = *off_101E37FD8;
  v18[5] = *off_101E37FE8;
  v18[0] = *off_101E37F98;
  v18[1] = *off_101E37FA8;
  __p = 0;
  v13 = 0;
  sub_10004EBE4(&__p, v18, &v19, 0xCuLL);
  v5 = __p;
  v6 = v13;
  if (__p != v13)
  {
    do
    {
      v7 = v15;
      v8 = *v5;
      v16 = 0;
      v17 = 0;
      if (ctu::cf::convert_copy(&v17, v8, 0x8000100, kCFAllocatorDefault, v4))
      {
        v9 = v16;
        v16 = v17;
        *&v18[0] = v9;
        sub_100005978(v18);
      }

      key = v16;
      v16 = 0;
      sub_100005978(&v16);
      CFDictionaryRemoveValue(v7, key);
      sub_100005978(&key);
      ++v5;
    }

    while (v5 != v6);
  }

  sub_100010180(a2, &v15);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return sub_1000296E0(&v15);
}

void sub_1002A2474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, uint64_t a13, const void *a14, __int16 a15, char a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000296E0(&a14);
  _Unwind_Resume(a1);
}

const char *sub_1002A24BC(int a1)
{
  if ((a1 - 1) > 4)
  {
    return "UI";
  }

  else
  {
    return off_101E385D8[a1 - 1];
  }
}

void sub_1002A24E4(uint64_t a1, os_log_t *a2)
{
  v3 = a1;
  v4 = *(a1 + 216);
  v5 = *a2;
  v6 = os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT);
  if (v4 == 1)
  {
    if (!v6)
    {
      goto LABEL_105;
    }

    v7 = *(v3 + 144) - 1;
    if (v7 > 4)
    {
      v8 = "UI";
    }

    else
    {
      v8 = off_101E385D8[v7];
    }

    v11 = *(v3 + 148);
    v12 = v3;
    sub_10029FAC8(v3, v133);
    if (v136 >= 0)
    {
      v13 = v133;
    }

    else
    {
      v13 = *v133;
    }

    asStringMask(*(v12 + 152));
    if (v132 >= 0)
    {
      v14 = v131;
    }

    else
    {
      v14 = v131[0];
    }

    v15 = *(v12 + 152);
    asStringMask(*(v12 + 160));
    if (v130 >= 0)
    {
      v16 = v129;
    }

    else
    {
      v16 = v129[0];
    }

    v112 = v16;
    v114 = *(v12 + 160);
    CIPFamily::asString(v127, (v12 + 168));
    if (v128 >= 0)
    {
      v17 = v127;
    }

    else
    {
      v17 = v127[0];
    }

    v110 = v17;
    CIPFamily::asString(v125, (v12 + 184));
    if (v126 >= 0)
    {
      v18 = v125;
    }

    else
    {
      v18 = v125[0];
    }

    v108 = v18;
    CIPFamily::asString(v123, (v12 + 200));
    if (v124 >= 0)
    {
      v19 = v123;
    }

    else
    {
      v19 = v123[0];
    }

    v104 = v19;
    v106 = *(v12 + 224);
    WirelessTechnologyList::asString(__p, (v12 + 228));
    v102 = v14;
    if (v122 >= 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    v98 = v20;
    v100 = *(v12 + 228);
    v96 = asStringBool(*(v12 + 232));
    v94 = asStringBool(*(v12 + 233));
    v92 = asStringBool();
    v90 = asStringBool();
    v80 = *(v12 + 242);
    v22 = *(v12 + 248);
    log = v5;
    v88 = v8;
    v86 = v11;
    v82 = v15;
    v84 = v13;
    if (v22)
    {
      ctu::cf_to_xpc(v22, v21);
      xpc::object::to_string(object, &v118);
      if (v120 >= 0)
      {
        v23 = object;
      }

      else
      {
        v23 = object[0];
      }
    }

    else
    {
      v23 = "";
    }

    v79 = v23;
    v77 = asStringBool(*(v12 + 256));
    v45 = v12;
    if (*(v12 + 312) == 1)
    {
      v46 = (v12 + 288);
      if (*(v12 + 311) < 0)
      {
        v46 = *v46;
      }

      v75 = v46;
    }

    else
    {
      v75 = "no alt name";
    }

    v73 = asStringBool(*(v12 + 384));
    if (*(v12 + 344) == 1)
    {
      v47 = (v12 + 320);
      if (*(v12 + 343) < 0)
      {
        v47 = *v47;
      }
    }

    else
    {
      v47 = "no orig apn";
    }

    if (*(v12 + 376) == 1)
    {
      v48 = (*(v12 + 360) - *(v12 + 352)) >> 2;
    }

    else
    {
      LODWORD(v48) = 0;
    }

    v49 = *(v45 + 264);
    v50 = *(v45 + 272);
    v51 = asStringBool(*(v45 + 234));
    v52 = asStringBool(*(v45 + 236));
    v53 = asStringBool(*(v45 + 235));
    *buf = 136322050;
    *&buf[4] = v88;
    *&buf[12] = 1024;
    *&buf[14] = v86;
    *&buf[18] = 2082;
    *&buf[20] = v84;
    *&buf[28] = 2082;
    *&buf[30] = v102;
    *&buf[38] = 2048;
    v141 = v82;
    *v142 = 2082;
    *&v142[2] = v112;
    v143 = 2048;
    v144 = v114;
    v145 = 2082;
    v146 = v110;
    v147 = 2082;
    v148 = v108;
    v149 = 2082;
    *v150 = v104;
    *&v150[8] = 1024;
    *&v150[10] = v106;
    v151 = 2082;
    *v152 = v98;
    *&v152[8] = 1024;
    *&v152[10] = v100;
    v153 = 2080;
    v154 = v96;
    v155 = 2080;
    v156 = v94;
    v157 = 2080;
    v158 = v92;
    v159 = 2080;
    *v160 = v90;
    *&v160[8] = 1024;
    *&v160[10] = v80;
    v161 = 2080;
    v162 = v79;
    v163 = 2080;
    v164 = v77;
    v165 = 2080;
    v166 = v75;
    v167 = 2080;
    *v168 = v73;
    *&v168[8] = 1024;
    *&v168[10] = -1227133513 * ((v50 - v49) >> 3);
    v169 = 2080;
    *v170 = v47;
    *&v170[8] = 1024;
    *&v170[10] = v48;
    v171 = 2080;
    v172 = v51;
    v173 = 2080;
    v174 = v52;
    v175 = 2080;
    v176 = v53;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t APNInfo: src: %s.%d, base: %{public}s, type-mask: %{public}s (0x%llx), tech-type-mask: %{public}s (0x%llx), AllowedProtocolMask: %{public}s, AllowedProtocolMaskInRoaming: %{public}s, AllowedProtocolMaskInDomesticRoaming: %{public}s, inactivity: %u, tech-mask: %{public}s (0x%x), allow no DNS: %s, support SwitchOver: %s, don't suspend context: %s, suspend context on BBCall: %s, Pco Container Id: %u, proxy:{%s}, use network MTU: %s, alt-name:'%s', xlat464: %s, blockers: %u, OrigApn:'%s', APNSwitchCauseCodes: %u, alwaysOnPDU: %s, support5GSaHandOver: %s, SuppressPdnTearDown: %s", buf, 0x102u);
    v3 = v45;
    if (v22)
    {
      if (v120 < 0)
      {
        operator delete(object[0]);
      }

      xpc_release(v118);
    }

    if (v122 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_105;
    }

    v9 = *(v3 + 144) - 1;
    if (v9 > 4)
    {
      v10 = "UI";
    }

    else
    {
      v10 = off_101E385D8[v9];
    }

    v24 = *(v3 + 148);
    v25 = v3;
    sub_10029FAC8(v3, v133);
    if (v136 >= 0)
    {
      v26 = v133;
    }

    else
    {
      v26 = *v133;
    }

    asStringMask(*(v25 + 152));
    if (v132 >= 0)
    {
      v27 = v131;
    }

    else
    {
      v27 = v131[0];
    }

    v28 = *(v25 + 152);
    asStringMask(*(v25 + 160));
    if (v130 >= 0)
    {
      v29 = v129;
    }

    else
    {
      v29 = v129[0];
    }

    v113 = v29;
    v115 = *(v25 + 160);
    CIPFamily::asString(v127, (v25 + 168));
    if (v128 >= 0)
    {
      v30 = v127;
    }

    else
    {
      v30 = v127[0];
    }

    v111 = v30;
    CIPFamily::asString(v125, (v25 + 184));
    if (v126 >= 0)
    {
      v31 = v125;
    }

    else
    {
      v31 = v125[0];
    }

    v107 = v31;
    v109 = *(v25 + 224);
    WirelessTechnologyList::asString(v123, (v25 + 228));
    v105 = v27;
    if (v124 >= 0)
    {
      v32 = v123;
    }

    else
    {
      v32 = v123[0];
    }

    v101 = v32;
    v103 = *(v25 + 228);
    v99 = asStringBool(*(v25 + 232));
    v97 = asStringBool(*(v25 + 233));
    v95 = asStringBool();
    v93 = asStringBool();
    v83 = *(v25 + 242);
    v34 = *(v25 + 248);
    loga = v5;
    v91 = v10;
    v89 = v24;
    v85 = v28;
    v87 = v26;
    if (v34)
    {
      ctu::cf_to_xpc(v34, v33);
      xpc::object::to_string(__p, object);
      if (v122 >= 0)
      {
        v35 = __p;
      }

      else
      {
        v35 = __p[0];
      }
    }

    else
    {
      v35 = "";
    }

    v81 = v35;
    v78 = asStringBool(*(v25 + 256));
    v36 = v25;
    if (*(v25 + 312) == 1)
    {
      v37 = (v25 + 288);
      if (*(v25 + 311) < 0)
      {
        v37 = *v37;
      }

      v76 = v37;
    }

    else
    {
      v76 = "no alt name";
    }

    v74 = asStringBool(*(v25 + 384));
    if (*(v25 + 344) == 1)
    {
      v38 = (v25 + 320);
      if (*(v25 + 343) < 0)
      {
        v38 = *v38;
      }
    }

    else
    {
      v38 = "no orig apn";
    }

    if (*(v25 + 376) == 1)
    {
      v39 = (*(v25 + 360) - *(v25 + 352)) >> 2;
    }

    else
    {
      LODWORD(v39) = 0;
    }

    v40 = *(v36 + 264);
    v41 = *(v36 + 272);
    v42 = asStringBool(*(v36 + 234));
    v43 = asStringBool(*(v36 + 236));
    v44 = asStringBool(*(v36 + 235));
    *buf = 136321794;
    *&buf[4] = v91;
    *&buf[12] = 1024;
    *&buf[14] = v89;
    *&buf[18] = 2082;
    *&buf[20] = v87;
    *&buf[28] = 2082;
    *&buf[30] = v105;
    *&buf[38] = 2048;
    v141 = v85;
    *v142 = 2082;
    *&v142[2] = v113;
    v143 = 2048;
    v144 = v115;
    v145 = 2082;
    v146 = v111;
    v147 = 2082;
    v148 = v107;
    v149 = 1024;
    *v150 = v109;
    *&v150[4] = 2082;
    *&v150[6] = v101;
    v151 = 1024;
    *v152 = v103;
    *&v152[4] = 2080;
    *&v152[6] = v99;
    v153 = 2080;
    v154 = v97;
    v155 = 2080;
    v156 = v95;
    v157 = 2080;
    v158 = v93;
    v159 = 1024;
    *v160 = v83;
    *&v160[4] = 2080;
    *&v160[6] = v81;
    v161 = 2080;
    v162 = v78;
    v163 = 2080;
    v164 = v76;
    v165 = 2080;
    v166 = v74;
    v167 = 1024;
    *v168 = -1227133513 * ((v41 - v40) >> 3);
    *&v168[4] = 2080;
    *&v168[6] = v38;
    v169 = 1024;
    *v170 = v39;
    *&v170[4] = 2080;
    *&v170[6] = v42;
    v171 = 2080;
    v172 = v43;
    v173 = 2080;
    v174 = v44;
    _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t APNInfo: src: %s.%d, base: %{public}s, type-mask: %{public}s (0x%llx), tech-type-mask: %{public}s (0x%llx), AllowedProtocolMask: %{public}s, AllowedProtocolMaskInRoaming: %{public}s, inactivity: %u, tech-mask: %{public}s (0x%x), allow no DNS: %s, support SwitchOver: %s, don't suspend context: %s, suspend context on BBCall: %s, Pco Container Id: %u, proxy:{%s}, use network MTU: %s, alt-name:'%s', xlat464: %s, blockers: %u, OrigApn:'%s', APNSwitchCauseCodes: %u, alwaysOnPDU: %s, support5GSaHandOver: %s, SuppressPdnTearDown: %s", buf, 0xF8u);
    v3 = v36;
    if (v34)
    {
      if (v122 < 0)
      {
        operator delete(__p[0]);
      }

      xpc_release(object[0]);
    }
  }

  if (v124 < 0)
  {
    operator delete(v123[0]);
  }

  if (v126 < 0)
  {
    operator delete(v125[0]);
  }

  if (v128 < 0)
  {
    operator delete(v127[0]);
  }

  if (v130 < 0)
  {
    operator delete(v129[0]);
  }

  if (v132 < 0)
  {
    operator delete(v131[0]);
  }

  if (SHIBYTE(v136) < 0)
  {
    operator delete(*v133);
  }

LABEL_105:
  v54 = *(v3 + 264);
  v55 = *(v3 + 272);
  if (v55 != v54)
  {
    v56 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t APNInfo: blockers: {", buf, 2u);
      v54 = *(v3 + 264);
      v55 = *(v3 + 272);
    }

    for (; v54 != v55; v54 = (v54 + 56))
    {
      *v142 = 0;
      v57 = *v54;
      *&buf[16] = *(v54 + 2);
      *buf = v57;
      *&buf[32] = 0;
      v141 = 0;
      *&buf[24] = 0;
      sub_10024064C(&buf[24], *(v54 + 3), *(v54 + 4), (*(v54 + 4) - *(v54 + 3)) >> 2);
      v142[0] = *(v54 + 48);
      v58 = *a2;
      if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
      {
        v59 = asString();
        v60 = asStringBool(buf[4]);
        *v133 = 136315906;
        *&v133[4] = v59;
        v134 = 2080;
        v135 = v60;
        v136 = 1024;
        v137 = *&buf[8];
        v138 = 2048;
        v139 = *&buf[16];
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t type = %s fAirplaneModeRecovery = %s fTries = %u fTimeout = %ld", v133, 0x26u);
      }

      v62 = *&buf[24];
      v61 = *&buf[32];
      if (*&buf[24] != *&buf[32])
      {
        do
        {
          v63 = *a2;
          if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
          {
            v64 = *v62;
            *v133 = 67109120;
            *&v133[4] = v64;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t cause = %d", v133, 8u);
          }

          ++v62;
        }

        while (v62 != v61);
        v62 = *&buf[24];
      }

      if (v62)
      {
        *&buf[32] = v62;
        operator delete(v62);
      }
    }

    v65 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t }", buf, 2u);
    }
  }

  if (*(v3 + 376) == 1 && *(v3 + 360) != *(v3 + 352))
  {
    v66 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t APNInfo: APNSwitchCauseCodes: {", buf, 2u);
      if ((*(v3 + 376) & 1) == 0)
      {
        sub_1000D1644();
      }
    }

    v67 = v3;
    v68 = *(v3 + 352);
    for (i = *(v67 + 360); v68 != i; ++v68)
    {
      v70 = *a2;
      if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
      {
        v71 = *v68;
        *buf = 67109120;
        *&buf[4] = v71;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t code = %d", buf, 8u);
      }
    }

    v72 = *a2;
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t }", buf, 2u);
    }
  }
}

void sub_1002A312C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1002A3288(uint64_t a1, os_log_t *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = (a1 + 40);
  }

  v5 = *(a1 + 216);
  v6 = *v4;
  v7 = os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT);
  v107 = a1;
  if (v5 == 1)
  {
    if (!v7)
    {
      goto LABEL_107;
    }

    v8 = *(a1 + 144) - 1;
    if (v8 > 4)
    {
      v9 = "UI";
    }

    else
    {
      v9 = off_101E385D8[v8];
    }

    v12 = *(a1 + 148);
    sub_10029FAC8(a1, v128);
    if (v131 >= 0)
    {
      v13 = v128;
    }

    else
    {
      v13 = *v128;
    }

    asStringMask(*(a1 + 152));
    if (v127 >= 0)
    {
      v14 = v126;
    }

    else
    {
      v14 = v126[0];
    }

    v15 = *(a1 + 152);
    asStringMask(*(a1 + 160));
    if (v125 >= 0)
    {
      v16 = v124;
    }

    else
    {
      v16 = v124[0];
    }

    v108 = v16;
    v110 = *(a1 + 160);
    CIPFamily::asString(v122, (a1 + 168));
    if (v123 >= 0)
    {
      v17 = v122;
    }

    else
    {
      v17 = v122[0];
    }

    v105 = v17;
    CIPFamily::asString(v120, (a1 + 184));
    if (v121 >= 0)
    {
      v18 = v120;
    }

    else
    {
      v18 = v120[0];
    }

    v103 = v18;
    CIPFamily::asString(v118, (a1 + 200));
    if (v119 >= 0)
    {
      v19 = v118;
    }

    else
    {
      v19 = v118[0];
    }

    v101 = v19;
    v99 = *(a1 + 224);
    WirelessTechnologyList::asString(__p, (a1 + 228));
    if (v117 >= 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    v95 = v20;
    v97 = v15;
    v93 = *(a1 + 228);
    v91 = asStringBool(*(a1 + 232));
    v89 = asStringBool(*(a1 + 233));
    v87 = asStringBool();
    v84 = asStringBool();
    v74 = *(a1 + 242);
    v22 = *(a1 + 248);
    v82 = v9;
    v80 = v12;
    v76 = v14;
    v78 = v13;
    if (v22)
    {
      ctu::cf_to_xpc(v22, v21);
      xpc::object::to_string(object, &v113);
      if (v115 >= 0)
      {
        v23 = object;
      }

      else
      {
        v23 = object[0];
      }
    }

    else
    {
      v23 = "";
    }

    v73 = v23;
    v71 = asStringBool(*(a1 + 256));
    if (*(a1 + 312) == 1)
    {
      v43 = (a1 + 288);
      if (*(a1 + 311) < 0)
      {
        v43 = *v43;
      }

      v69 = v43;
    }

    else
    {
      v69 = "no alt name";
    }

    v44 = asStringBool(*(a1 + 384));
    if (*(a1 + 344) == 1)
    {
      v45 = (a1 + 320);
      if (*(a1 + 343) < 0)
      {
        v45 = *v45;
      }
    }

    else
    {
      v45 = "no orig apn";
    }

    if (*(a1 + 376) == 1)
    {
      v68 = (*(a1 + 360) - *(a1 + 352)) >> 2;
    }

    else
    {
      LODWORD(v68) = 0;
    }

    v47 = *(a1 + 264);
    v46 = *(a1 + 272);
    v48 = asStringBool(*(a1 + 234));
    v49 = asStringBool(*(a1 + 236));
    v176 = asStringBool(*(a1 + 235));
    *&buf[14] = v82;
    LODWORD(v138) = v80;
    *(&v138 + 6) = v78;
    v139 = v76;
    *&v140[2] = v97;
    v142 = v108;
    *v140 = 2048;
    v143 = 2048;
    v144 = v110;
    v146 = v105;
    v148 = v103;
    *v150 = v101;
    *&v150[10] = v99;
    WORD2(v138) = 2082;
    HIWORD(v138) = 2082;
    v141 = 2082;
    v145 = 2082;
    v147 = 2082;
    v149 = 2082;
    v151 = 2082;
    *v152 = v95;
    *&v152[10] = v93;
    v154 = v91;
    v156 = v89;
    v158 = v87;
    *v160 = v84;
    *&v160[10] = v74;
    v162 = v73;
    v164 = v71;
    v166 = v69;
    *v168 = v44;
    *&v168[10] = -1227133513 * ((v46 - v47) >> 3);
    *v170 = v45;
    *&buf[22] = 1024;
    *&v150[8] = 1024;
    *&v152[8] = 1024;
    *&v160[8] = 1024;
    *&v168[8] = 1024;
    *&v170[8] = 1024;
    *&v170[10] = v68;
    v172 = v48;
    v174 = v49;
    *&buf[12] = 2080;
    v153 = 2080;
    v155 = 2080;
    v157 = 2080;
    v159 = 2080;
    v161 = 2080;
    v163 = 2080;
    v165 = 2080;
    v167 = 2080;
    v169 = 2080;
    v171 = 2080;
    v173 = 2080;
    v175 = 2080;
    *buf = 136322306;
    *&buf[4] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I \t%s APNInfo: src: %s.%d, base: %{public}s, type-mask: %{public}s (0x%llx), tech-type-mask: %{public}s (0x%llx), AllowedProtocolMask: %{public}s, AllowedProtocolMaskInRoaming: %{public}s, AllowedProtocolMaskInDomesticRoaming: %{public}s, inactivity: %u, tech-mask: %{public}s (0x%x), allow no DNS: %s, support SwitchOver: %s, don't suspend context: %s, suspend context on BBCall: %s, Pco Container Id: %u, proxy:{%s}, use network MTU: %s, alt-name:'%s', xlat464: %s, blockers: %u, OrigApn:'%s', APNSwitchCauseCodes: %u, alwaysOnPDU: %s, support5GSaHandOver: %s, SuppressPdnTearDown: %s", buf, 0x10Cu);
    if (v22)
    {
      if (v115 < 0)
      {
        operator delete(object[0]);
      }

      xpc_release(v113);
    }

    if (v117 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (!v7)
    {
      goto LABEL_107;
    }

    v10 = *(a1 + 144) - 1;
    if (v10 > 4)
    {
      v11 = "UI";
    }

    else
    {
      v11 = off_101E385D8[v10];
    }

    v24 = *(a1 + 148);
    sub_10029FAC8(a1, v128);
    if (v131 >= 0)
    {
      v25 = v128;
    }

    else
    {
      v25 = *v128;
    }

    asStringMask(*(a1 + 152));
    if (v127 >= 0)
    {
      v26 = v126;
    }

    else
    {
      v26 = v126[0];
    }

    v27 = *(a1 + 152);
    asStringMask(*(a1 + 160));
    if (v125 >= 0)
    {
      v28 = v124;
    }

    else
    {
      v28 = v124[0];
    }

    v109 = v28;
    v111 = *(a1 + 160);
    CIPFamily::asString(v122, (a1 + 168));
    if (v123 >= 0)
    {
      v29 = v122;
    }

    else
    {
      v29 = v122[0];
    }

    v106 = v29;
    CIPFamily::asString(v120, (a1 + 184));
    if (v121 >= 0)
    {
      v30 = v120;
    }

    else
    {
      v30 = v120[0];
    }

    v102 = v30;
    v104 = *(a1 + 224);
    WirelessTechnologyList::asString(v118, (a1 + 228));
    v100 = v26;
    if (v119 >= 0)
    {
      v31 = v118;
    }

    else
    {
      v31 = v118[0];
    }

    v96 = v31;
    v98 = *(a1 + 228);
    v94 = asStringBool(*(a1 + 232));
    v92 = asStringBool(*(a1 + 233));
    v90 = asStringBool();
    v88 = asStringBool();
    v77 = *(a1 + 242);
    v33 = *(a1 + 248);
    v85 = v11;
    log = v6;
    v83 = v24;
    v79 = v27;
    v81 = v25;
    if (v33)
    {
      ctu::cf_to_xpc(v33, v32);
      xpc::object::to_string(__p, object);
      if (v117 >= 0)
      {
        v34 = __p;
      }

      else
      {
        v34 = __p[0];
      }
    }

    else
    {
      v34 = "";
    }

    v72 = v34;
    v75 = asStringBool(*(a1 + 256));
    if (*(a1 + 312) == 1)
    {
      v35 = (a1 + 288);
      if (*(a1 + 311) < 0)
      {
        v35 = *v35;
      }
    }

    else
    {
      v35 = "no alt name";
    }

    v70 = asStringBool(*(a1 + 384));
    if (*(a1 + 344) == 1)
    {
      v36 = (a1 + 320);
      if (*(a1 + 343) < 0)
      {
        v36 = *v36;
      }
    }

    else
    {
      v36 = "no orig apn";
    }

    if (*(a1 + 376) == 1)
    {
      v37 = (*(a1 + 360) - *(a1 + 352)) >> 2;
    }

    else
    {
      LODWORD(v37) = 0;
    }

    v38 = *(a1 + 264);
    v39 = *(a1 + 272);
    v40 = asStringBool(*(a1 + 234));
    v41 = asStringBool(*(a1 + 236));
    v42 = asStringBool(*(a1 + 235));
    *buf = 136322050;
    *&buf[4] = a3;
    *&buf[12] = 2080;
    *&buf[14] = v85;
    *&buf[22] = 1024;
    LODWORD(v138) = v83;
    WORD2(v138) = 2082;
    *(&v138 + 6) = v81;
    HIWORD(v138) = 2082;
    v139 = v100;
    *v140 = 2048;
    *&v140[2] = v79;
    v141 = 2082;
    v142 = v109;
    v143 = 2048;
    v144 = v111;
    v145 = 2082;
    v146 = v106;
    v147 = 2082;
    v148 = v102;
    v149 = 1024;
    *v150 = v104;
    *&v150[4] = 2082;
    *&v150[6] = v96;
    v151 = 1024;
    *v152 = v98;
    *&v152[4] = 2080;
    *&v152[6] = v94;
    v153 = 2080;
    v154 = v92;
    v155 = 2080;
    v156 = v90;
    v157 = 2080;
    v158 = v88;
    v159 = 1024;
    *v160 = v77;
    *&v160[4] = 2080;
    *&v160[6] = v72;
    v161 = 2080;
    v162 = v75;
    v163 = 2080;
    v164 = v35;
    v165 = 2080;
    v166 = v70;
    v167 = 1024;
    *v168 = -1227133513 * ((v39 - v38) >> 3);
    *&v168[4] = 2080;
    *&v168[6] = v36;
    v169 = 1024;
    *v170 = v37;
    *&v170[4] = 2080;
    *&v170[6] = v40;
    v171 = 2080;
    v172 = v41;
    v173 = 2080;
    v174 = v42;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I \t%s APNInfo: src: %s.%d, base: %{public}s, type-mask: %{public}s (0x%llx), tech-type-mask: %{public}s (0x%llx), AllowedProtocolMask: %{public}s, AllowedProtocolMaskInRoaming: %{public}s, inactivity: %u, tech-mask: %{public}s (0x%x), allow no DNS: %s, support SwitchOver: %s, don't suspend context: %s, suspend context on BBCall: %s, Pco Container Id: %u, proxy:{%s}, use network MTU: %s, alt-name:'%s', xlat464: %s, blockers: %u, OrigApn:'%s', APNSwitchCauseCodes: %u, alwaysOnPDU %s, support5GSaHandOver: %s, SuppressPdnTearDown: %s", buf, 0x102u);
    if (v33)
    {
      if (v117 < 0)
      {
        operator delete(__p[0]);
      }

      xpc_release(object[0]);
    }
  }

  if (v119 < 0)
  {
    operator delete(v118[0]);
  }

  if (v121 < 0)
  {
    operator delete(v120[0]);
  }

  if (v123 < 0)
  {
    operator delete(v122[0]);
  }

  if (v125 < 0)
  {
    operator delete(v124[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  if (SHIBYTE(v131) < 0)
  {
    operator delete(*v128);
  }

LABEL_107:
  v51 = *(a1 + 264);
  v50 = *(a1 + 272);
  if (v50 != v51)
  {
    v52 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I \t%s APNInfo: blockers: {", buf, 0xCu);
      v51 = *(a1 + 264);
      v50 = *(a1 + 272);
    }

    for (; v51 != v50; v51 = (v51 + 56))
    {
      *v140 = 0;
      v53 = *v51;
      *&buf[16] = *(v51 + 2);
      *buf = v53;
      v139 = 0;
      v138 = 0uLL;
      sub_10024064C(&v138, *(v51 + 3), *(v51 + 4), (*(v51 + 4) - *(v51 + 3)) >> 2);
      v140[0] = *(v51 + 48);
      v54 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v55 = asString();
        v56 = asStringBool(buf[4]);
        *v128 = 136316162;
        *&v128[4] = a3;
        v129 = 2080;
        v130 = v55;
        v131 = 2080;
        v132 = v56;
        v133 = 1024;
        v134 = *&buf[8];
        v135 = 2048;
        v136 = *&buf[16];
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I \t%s \t type = %s fAirplaneModeRecovery = %s fTries = %u fTimeout = %ld", v128, 0x30u);
      }

      v57 = *(&v138 + 1);
      v58 = v138;
      if (v138 != *(&v138 + 1))
      {
        do
        {
          v59 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
          {
            v60 = *v58;
            *v128 = 136315394;
            *&v128[4] = a3;
            v129 = 1024;
            LODWORD(v130) = v60;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I \t%s \t\t cause = %d", v128, 0x12u);
          }

          ++v58;
        }

        while (v58 != v57);
        v58 = v138;
      }

      if (v58)
      {
        *(&v138 + 1) = v58;
        operator delete(v58);
      }
    }

    v61 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I \t%s }", buf, 0xCu);
    }
  }

  if (*(v107 + 376) == 1 && *(v107 + 360) != *(v107 + 352))
  {
    v62 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#I \t APNInfo: APNSwitchCauseCodes: {", buf, 2u);
      if ((*(v107 + 376) & 1) == 0)
      {
        sub_1000D1644();
      }
    }

    v63 = *(v107 + 352);
    for (i = *(v107 + 360); v63 != i; ++v63)
    {
      v65 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v66 = *v63;
        *buf = 67109120;
        *&buf[4] = v66;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#I \t\t code = %d", buf, 8u);
      }
    }

    v67 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "#I \t }", buf, 2u);
    }
  }
}

void sub_1002A3F1C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002A4078@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *__p = 0u;
  v14 = 0u;
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  v10 = 0u;
  sub_10000C320(&v10);
  v4 = *(a1 + 144) - 1;
  if (v4 > 4)
  {
    v5 = "UI";
  }

  else
  {
    v5 = off_101E385D8[v4];
  }

  v6 = strlen(v5);
  v7 = sub_10000C030(&v11, v5, v6);
  sub_10000C030(v7, ".", 1);
  std::ostream::operator<<();
  sub_10006EE70(&v11 + 8, a2);
  *&v11 = v8;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

BOOL sub_1002A4294(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v10 = *(a1 + 71);
  if (v10 >= 0)
  {
    v11 = *(a1 + 71);
  }

  else
  {
    v11 = *(a1 + 56);
  }

  v12 = *(a2 + 71);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 56);
  }

  if (v11 == v12)
  {
    v14 = v10 >= 0 ? (a1 + 48) : *(a1 + 48);
    v15 = v13 >= 0 ? (a2 + 48) : *(a2 + 48);
    if (!memcmp(v14, v15, v11))
    {
      v16 = *(a1 + 95);
      if (v16 >= 0)
      {
        v17 = *(a1 + 95);
      }

      else
      {
        v17 = *(a1 + 80);
      }

      v18 = *(a2 + 95);
      v19 = v18;
      if ((v18 & 0x80u) != 0)
      {
        v18 = *(a2 + 80);
      }

      if (v17 == v18)
      {
        v20 = v16 >= 0 ? (a1 + 72) : *(a1 + 72);
        v21 = v19 >= 0 ? (a2 + 72) : *(a2 + 72);
        if (!memcmp(v20, v21, v17))
        {
          v22 = *(a1 + 119);
          if (v22 >= 0)
          {
            v23 = *(a1 + 119);
          }

          else
          {
            v23 = *(a1 + 104);
          }

          v24 = *(a2 + 119);
          v25 = v24;
          if ((v24 & 0x80u) != 0)
          {
            v24 = *(a2 + 104);
          }

          if (v23 == v24)
          {
            v26 = v22 >= 0 ? (a1 + 96) : *(a1 + 96);
            v27 = v25 >= 0 ? (a2 + 96) : *(a2 + 96);
            if (!memcmp(v26, v27, v23))
            {
              v28 = *(a1 + 143);
              if (v28 >= 0)
              {
                v29 = *(a1 + 143);
              }

              else
              {
                v29 = *(a1 + 128);
              }

              v30 = *(a2 + 143);
              v31 = v30;
              if ((v30 & 0x80u) != 0)
              {
                v30 = *(a2 + 128);
              }

              if (v29 == v30)
              {
                v32 = v28 >= 0 ? (a1 + 120) : *(a1 + 120);
                v33 = v31 >= 0 ? (a2 + 120) : *(a2 + 120);
                if (!memcmp(v32, v33, v29))
                {
                  v38 = 152;
                  if (a3)
                  {
                    v38 = 160;
                  }

                  v34 = *(a1 + v38) == *(a2 + v38);
                  if (a4)
                  {
                    goto LABEL_54;
                  }

                  return v34 && *(a1 + 192) == *(a2 + 192);
                }
              }
            }
          }
        }
      }
    }
  }

  v34 = 0;
  if (!a4)
  {
    return v34 && *(a1 + 192) == *(a2 + 192);
  }

LABEL_54:
  v35 = *(a1 + 176);
  v36 = *(a2 + 176);
  if (a5)
  {
    if (*(a1 + 216) == 1)
    {
      v35 = *(a1 + 208);
    }

    if (*(a2 + 216) == 1)
    {
      v36 = *(a2 + 208);
    }
  }

  return v35 == v36 && v34;
}

uint64_t sub_1002A44B4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 144) != *(a2 + 144))
  {
    return 0;
  }

  v4 = *(a1 + 71);
  if (v4 >= 0)
  {
    v5 = *(a1 + 71);
  }

  else
  {
    v5 = *(a1 + 56);
  }

  v6 = *(a2 + 71);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 56);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v8 = v4 >= 0 ? (a1 + 48) : *(a1 + 48);
  v9 = v7 >= 0 ? (a2 + 48) : *(a2 + 48);
  if (memcmp(v8, v9, v5))
  {
    return 0;
  }

  v10 = *(a1 + 95);
  if (v10 >= 0)
  {
    v11 = *(a1 + 95);
  }

  else
  {
    v11 = *(a1 + 80);
  }

  v12 = *(a2 + 95);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 80);
  }

  if (v11 != v12)
  {
    return 0;
  }

  v14 = v10 >= 0 ? (a1 + 72) : *(a1 + 72);
  v15 = v13 >= 0 ? (a2 + 72) : *(a2 + 72);
  if (memcmp(v14, v15, v11))
  {
    return 0;
  }

  v16 = *(a1 + 119);
  if (v16 >= 0)
  {
    v17 = *(a1 + 119);
  }

  else
  {
    v17 = *(a1 + 104);
  }

  v18 = *(a2 + 119);
  v19 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a2 + 104);
  }

  if (v17 != v18)
  {
    return 0;
  }

  v20 = v16 >= 0 ? (a1 + 96) : *(a1 + 96);
  v21 = v19 >= 0 ? (a2 + 96) : *(a2 + 96);
  if (memcmp(v20, v21, v17))
  {
    return 0;
  }

  v22 = *(a1 + 143);
  if (v22 >= 0)
  {
    v23 = *(a1 + 143);
  }

  else
  {
    v23 = *(a1 + 128);
  }

  v24 = *(a2 + 143);
  v25 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a2 + 128);
  }

  if (v23 != v24)
  {
    return 0;
  }

  v26 = v22 >= 0 ? (a1 + 120) : *(a1 + 120);
  v27 = v25 >= 0 ? (a2 + 120) : *(a2 + 120);
  if (memcmp(v26, v27, v23) || *(a1 + 148) != *(a2 + 148) || *(a1 + 152) != *(a2 + 152) || *(a1 + 160) != *(a2 + 160) || *(a1 + 176) != *(a2 + 176) || *(a1 + 192) != *(a2 + 192))
  {
    return 0;
  }

  v28 = *(a1 + 216);
  v29 = *(a2 + 216);
  if (v28 == v29 && *(a1 + 216))
  {
    v28 = *(a1 + 208);
    v29 = *(a2 + 208);
  }

  if (v28 != v29 || *(a1 + 233) != *(a2 + 233) || *(a1 + 236) != *(a2 + 236) || *(a1 + 234) != *(a2 + 234))
  {
    return 0;
  }

  v30 = *(a1 + 238);
  v31 = *(a2 + 238);
  if (v30 == v31 && *(a1 + 238))
  {
    v30 = *(a1 + 237);
    v31 = *(a2 + 237);
  }

  if (v30 != v31)
  {
    return 0;
  }

  v32 = *(a1 + 240);
  v33 = *(a2 + 240);
  if (v32 == v33 && *(a1 + 240))
  {
    v32 = *(a1 + 239);
    v33 = *(a2 + 239);
  }

  if (v32 != v33)
  {
    return 0;
  }

  if (*(a1 + 242) != *(a2 + 242))
  {
    return 0;
  }

  if (*(a1 + 232) != *(a2 + 232))
  {
    return 0;
  }

  v34 = *(a1 + 248);
  v35 = *(a2 + 248);
  if ((v34 != 0) == (v35 == 0))
  {
    return 0;
  }

  if (v34)
  {
    result = CFEqual(v34, v35);
    if (!result)
    {
      return result;
    }
  }

  if (*(a1 + 256) != *(a2 + 256))
  {
    return 0;
  }

  if (*(a1 + 312))
  {
    if (!*(a2 + 312))
    {
      return 0;
    }

    result = sub_100071DF8((a1 + 288), (a2 + 288));
    if (!result)
    {
      return result;
    }
  }

  else if (*(a2 + 312))
  {
    return 0;
  }

  result = sub_1002A4830((a1 + 264), (a2 + 264));
  if (!result)
  {
    return result;
  }

  if ((*(a1 + 344) & 1) == 0)
  {
    if ((*(a2 + 344) & 1) == 0)
    {
      goto LABEL_93;
    }

    return 0;
  }

  if (!*(a2 + 344))
  {
    return 0;
  }

  result = sub_100071DF8((a1 + 320), (a2 + 320));
  if (!result)
  {
    return result;
  }

LABEL_93:
  if ((*(a1 + 376) & 1) == 0)
  {
    return *(a2 + 376) ^ 1u;
  }

  if (!*(a2 + 376))
  {
    return 0;
  }

  return sub_1002A48A4(a1 + 352, a2 + 352);
}

BOOL sub_1002A4830(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = sub_1002A685C(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 56;
    v4 += 56;
  }

  while (v2 != v3);
  return result;
}

BOOL sub_1002A48A4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(a1 + 8) - v2;
  v5 = *a2;
  return v4 == *(a2 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

uint64_t sub_1002A48E8(uint64_t a1, int a2, NSObject **a3)
{
  *a1 = off_101E38008;
  *(a1 + 8) = a2;
  v4 = *a3;
  *(a1 + 16) = *a3;
  if (v4)
  {
    dispatch_retain(v4);
  }

  return a1;
}

void *sub_1002A493C(void *a1)
{
  *a1 = off_101E38008;
  v2 = a1[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void sub_1002A4998(uint64_t a1@<X0>, NSObject **a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

const char *sub_1002A49AC(int a1, int a2)
{
  v2 = "default-apn";
  if (a1 <= 1)
  {
    v3 = "ui-apn.?";
    if (a2 == 2)
    {
      v3 = "ui-apn.2";
    }

    if (a2 == 1)
    {
      v3 = "ui-apn.1";
    }

    v7 = "ipcu-apn.?";
    if (a2 == 2)
    {
      v7 = "ipcu-apn.2";
    }

    if (a2 == 1)
    {
      v7 = "ipcu-apn.1";
    }

    if (a1 == 1)
    {
      v2 = v7;
    }

    v6 = a1 == 0;
  }

  else
  {
    v3 = "sim-apn.?";
    if (a2 == 2)
    {
      v3 = "sim-apn.2";
    }

    if (a2 == 1)
    {
      v3 = "sim-apn.1";
    }

    v4 = "cb-apn.?";
    if (a2 == 2)
    {
      v4 = "cb-apn.2";
    }

    if (a2 == 1)
    {
      v4 = "cb-apn.1";
    }

    v5 = "special-apn.?";
    if (a2 == 2)
    {
      v5 = "special-apn.2";
    }

    if (a2 == 1)
    {
      v5 = "special-apn.1";
    }

    if (a1 == 4)
    {
      v2 = v5;
    }

    if (a1 == 3)
    {
      v2 = v4;
    }

    v6 = a1 == 2;
  }

  if (v6)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1002A4AC4(uint64_t a1, int a2, NSObject **a3)
{
  *a1 = off_101E38008;
  *(a1 + 8) = a2;
  v4 = *a3;
  *(a1 + 16) = *a3;
  if (v4)
  {
    dispatch_retain(v4);
  }

  *a1 = off_101E380C8;
  return a1;
}

void sub_1002A4B44(dispatch_object_t *a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  if (*a3)
  {
    dispatch_retain(*a3);
  }

  operator new();
}

void sub_1002A4E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a9);
  sub_10001021C(&a10);
  sub_100004A34(v18);
  if (v17)
  {
    dispatch_release(v17);
  }

  _Unwind_Resume(a1);
}

void sub_1002A4EEC(dispatch_object_t *a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  if (*a3)
  {
    dispatch_retain(*a3);
  }

  operator new();
}

void sub_1002A5104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  v4[1].__vftable = v5;
  shared_weak_owners = v4[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    dispatch_release(shared_weak_owners);
  }

  if (v3)
  {
    dispatch_release(v3);
  }

  std::__shared_weak_count::~__shared_weak_count(v4);
  operator delete(v8);
  if (v3)
  {
    dispatch_release(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1002A516C(char a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (a1)
  {
    v6 = 1;
    sub_1001FDFFC(a3, &v6);
    v6 = 2;
    sub_1001FDFFC(a3, &v6);
    v6 = 4;
    sub_1001FDFFC(a3, &v6);
    v6 = 5;
    sub_1001FDFFC(a3, &v6);
  }

  if ((a1 & 2) != 0)
  {
    v6 = 10;
    sub_1001FDFFC(a3, &v6);
    v6 = 11;
    sub_1001FDFFC(a3, &v6);
    v6 = 12;
    sub_1001FDFFC(a3, &v6);
    v6 = 15;
    sub_1001FDFFC(a3, &v6);
  }

  if ((a1 & 4) != 0)
  {
    v6 = 13;
    sub_1001FDFFC(a3, &v6);
  }

  if ((a1 & 8) != 0)
  {
    v6 = 14;
    sub_1001FDFFC(a3, &v6);
    if (a2)
    {
      v6 = 16;
      sub_1001FDFFC(a3, &v6);
      v6 = 17;
      sub_1001FDFFC(a3, &v6);
    }
  }

  if ((a1 & 0x10) != 0)
  {
    v6 = 16;
    sub_1001FDFFC(a3, &v6);
    v6 = 17;
    sub_1001FDFFC(a3, &v6);
  }
}

void sub_1002A52DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1002A532C(uint64_t a1, Registry **a2, uint64_t a3)
{
  v6 = sub_10007259C();
  CFPreferencesSynchronize(@"com.apple.tethering_override", v6, kCFPreferencesCurrentHost);
  v7 = sub_10007259C();
  v8 = CFPreferencesCopyValue(@"AllowTethering", @"com.apple.tethering_override", v7, kCFPreferencesAnyHost);
  ServiceMap = Registry::getServiceMap(*a2);
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
  *__p = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, __p);
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
      v19 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v19 = 1;
LABEL_9:
  __p[0] = 0;
  if (v8)
  {
    v20 = CFGetTypeID(v8);
    if (v20 == CFBooleanGetTypeID() && (v22 = ctu::cf::assign(__p, v8, v21), (__p[0] & 1) != 0) && ((v23 = capabilities::ct::supportsVoiceCall(v22), !v17) ? (v24 = 1) : (v24 = v23), (v24 & 1) == 0))
    {
      v25 = (*(*v17 + 32))(v17);
    }

    else
    {
      v25 = 0;
    }

    CFRelease(v8);
    if ((v19 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v25 = 0;
    if ((v19 & 1) == 0)
    {
LABEL_18:
      sub_100004A34(v16);
    }
  }

  if (v25)
  {
    v26 = *(a1 + 40);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    sub_1002A4078(a1, __p);
    if (v49 >= 0)
    {
      v27 = __p;
    }

    else
    {
      v27 = *__p;
    }

    *v42 = 136315394;
    *&v42[4] = "is_wireless_modem_allowed";
    v43 = 2080;
    v44 = v27;
    v28 = "#I %s: %s, Validation of wireless modem connection was not necessary because: tethering override is in place";
LABEL_45:
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v28, v42, 0x16u);
    if (SHIBYTE(v49) < 0)
    {
      v34 = *__p;
LABEL_47:
      operator delete(v34);
    }

    return 1;
  }

  if ((capabilities::ct::supportsWirelessModem(v18) & 1) == 0)
  {
    v29 = *(a1 + 40);
    result = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    sub_1002A4078(a1, __p);
    if (v49 >= 0)
    {
      v31 = __p;
    }

    else
    {
      v31 = *__p;
    }

    *v42 = 136315394;
    *&v42[4] = "is_wireless_modem_allowed";
    v43 = 2080;
    v44 = v31;
    v32 = "#I %s: %s, Failed to validate wireless modem connection: it is not supported";
    goto LABEL_36;
  }

  if ((byte_101FBA128 & 1) == 0)
  {
    byte_101FBA128 = 1;
    if (sub_100322A60())
    {
      byte_101FBA129 = 1;
LABEL_40:
      v26 = *(a1 + 40);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      sub_1002A4078(a1, __p);
      if (v49 >= 0)
      {
        v33 = __p;
      }

      else
      {
        v33 = *__p;
      }

      *v42 = 136315394;
      *&v42[4] = "is_wireless_modem_allowed";
      v43 = 2080;
      v44 = v33;
      v28 = "#I %s: %s, Validation of wireless modem connection ignored because: carrier settings override";
      goto LABEL_45;
    }
  }

  if (byte_101FBA129 == 1)
  {
    goto LABEL_40;
  }

  if (sub_1002A593C(a2, a3))
  {
    v35 = *(a1 + 40);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v36 = subscriber::asString();
    sub_1002A4078(a1, v42);
    v37 = v45 >= 0 ? v42 : *v42;
    *__p = 136315650;
    *&__p[4] = "is_wireless_modem_allowed";
    v47 = 2080;
    v48 = v36;
    v49 = 2080;
    v50 = v37;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s: %s, Tethering editing supported for sim %s, so wireless modem allowed", __p, 0x20u);
    if ((v45 & 0x80000000) == 0)
    {
      return 1;
    }

    v34 = *v42;
    goto LABEL_47;
  }

  v38 = *(a1 + 144);
  if ((v38 - 2) < 2)
  {
    v26 = *(a1 + 40);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    sub_1002A4078(a1, __p);
    if (v49 >= 0)
    {
      v40 = __p;
    }

    else
    {
      v40 = *__p;
    }

    *v42 = 136315394;
    *&v42[4] = "is_wireless_modem_allowed";
    v43 = 2080;
    v44 = v40;
    v28 = "#I %s: %s, wireless modem allowed";
    goto LABEL_45;
  }

  if (v38)
  {
    if (v38 == 1)
    {
      v26 = *(a1 + 40);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      sub_1002A4078(a1, __p);
      if (v49 >= 0)
      {
        v39 = __p;
      }

      else
      {
        v39 = *__p;
      }

      *v42 = 136315394;
      *&v42[4] = "is_wireless_modem_allowed";
      v43 = 2080;
      v44 = v39;
      v28 = "#I %s: %s, No tethering validation for OMA/IPCU APNs, so wireless modem allowed";
      goto LABEL_45;
    }

    return 0;
  }

  v29 = *(a1 + 40);
  result = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    sub_1002A4078(a1, __p);
    if (v49 >= 0)
    {
      v41 = __p;
    }

    else
    {
      v41 = *__p;
    }

    *v42 = 136315394;
    *&v42[4] = "is_wireless_modem_allowed";
    v43 = 2080;
    v44 = v41;
    v32 = "#I %s: %s, Tethering alteration prohibited, so wireless modem is not allowed";
LABEL_36:
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v32, v42, 0x16u);
    if (SHIBYTE(v49) < 0)
    {
      operator delete(*__p);
    }

    return 0;
  }

  return result;
}

void sub_1002A590C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1002A593C(Registry **a1, uint64_t a2)
{
  theDict = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v5 = ServiceMap;
  if ((v6 & 0x8000000000000000) != 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  v40 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v40);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  (*(*v12 + 96))(&cf1, v12, a2, 1, @"MandatoryVerify", 0, 0);
  sub_100010180(&theDict, &cf1);
  sub_10000A1EC(&cf1);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  cf1 = 0;
  v14 = Registry::getServiceMap(*a1);
  v15 = v14;
  if ((v16 & 0x8000000000000000) != 0)
  {
    v17 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
    v18 = 5381;
    do
    {
      v16 = v18;
      v19 = *v17++;
      v18 = (33 * v18) ^ v19;
    }

    while (v19);
  }

  std::mutex::lock(v14);
  v40 = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, &v40);
  if (v20)
  {
    v22 = v20[3];
    v21 = v20[4];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v15);
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v21);
      v23 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v22 = 0;
  }

  std::mutex::unlock(v15);
  v21 = 0;
  v23 = 1;
LABEL_19:
  (*(*v22 + 192))(&cf1, v22, a2);
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  v24 = 0;
  if (theDict && cf1)
  {
    Value = CFDictionaryGetValue(theDict, @"SIMs");
    v26 = Value;
    if (Value && (v27 = CFGetTypeID(Value), v27 == CFArrayGetTypeID()))
    {
      Count = CFArrayGetCount(v26);
      v29 = Count - 1;
      if (Count < 1)
      {
        v24 = 1;
      }

      else
      {
        v30 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v26, v30);
          v32 = ValueAtIndex;
          if (ValueAtIndex)
          {
            v33 = CFGetTypeID(ValueAtIndex);
            if (v33 == CFStringGetTypeID())
            {
              v34 = v32;
            }

            else
            {
              v34 = 0;
            }
          }

          else
          {
            v34 = 0;
          }

          v35 = CFEqual(cf1, v34);
          v24 = v35 == 0;
          if (v35)
          {
            v36 = 1;
          }

          else
          {
            v36 = v29 == v30;
          }

          ++v30;
        }

        while (!v36);
      }
    }

    else
    {
      v24 = 0;
    }
  }

  sub_100005978(&cf1);
  sub_10001021C(&theDict);
  return v24;
}

void sub_1002A5C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_100005978(va);
  sub_10001021C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002A5C8C(Registry **a1, uint64_t a2)
{
  cf = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  v18 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v18);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  (*(*v11 + 96))(&cf, v11, a2, 1, @"AllowEDGEEditing", kCFBooleanFalse, 0);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  v13 = cf;
  LOBYTE(v18) = 0;
  if (cf)
  {
    v14 = CFGetTypeID(cf);
    if (v14 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v18, v13, v15);
      LOBYTE(v13) = v18;
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  sub_10000A1EC(&cf);
  return v13 & 1;
}

void sub_1002A5E00(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002A5E2C(Registry **a1, uint64_t a2, char a3)
{
  v33 = 0;
  if (a3)
  {
    goto LABEL_13;
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v6 = ServiceMap;
  if (v7 < 0)
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
  v34 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v34);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_10:
  (*(*v13 + 80))(&v31, v13, a2, 1, @"APNEditabilityTypemaskNew", 0, 0);
  sub_10010B240(&v32, &v31);
  v15 = v33;
  v33 = v32;
  v34 = v15;
  v32 = 0;
  sub_100029A48(&v34);
  sub_100029A48(&v32);
  sub_10000A1EC(&v31);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  v17 = v33;
  if (!v33)
  {
LABEL_13:
    v18 = Registry::getServiceMap(*a1);
    v19 = v18;
    if (v20 < 0)
    {
      v21 = (v20 & 0x7FFFFFFFFFFFFFFFLL);
      v22 = 5381;
      do
      {
        v20 = v22;
        v23 = *v21++;
        v22 = (33 * v22) ^ v23;
      }

      while (v23);
    }

    std::mutex::lock(v18);
    v34 = v20;
    v24 = sub_100009510(&v19[1].__m_.__sig, &v34);
    if (v24)
    {
      v26 = v24[3];
      v25 = v24[4];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v19);
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v25);
        v27 = 0;
LABEL_21:
        (*(*v26 + 80))(&v31, v26, a2, 1, @"APNEditabilityTypemask", 0, 0);
        sub_10010B240(&v32, &v31);
        v28 = v33;
        v33 = v32;
        v34 = v28;
        v32 = 0;
        sub_100029A48(&v34);
        sub_100029A48(&v32);
        sub_10000A1EC(&v31);
        if ((v27 & 1) == 0)
        {
          sub_100004A34(v25);
        }

        v17 = v33;
        goto LABEL_24;
      }
    }

    else
    {
      v26 = 0;
    }

    std::mutex::unlock(v19);
    v25 = 0;
    v27 = 1;
    goto LABEL_21;
  }

LABEL_24:
  LODWORD(v34) = 0;
  ctu::cf::assign(&v34, v17, v16);
  if (v33)
  {
    v29 = v34;
  }

  else
  {
    v29 = 5;
  }

  sub_100029A48(&v33);
  return v29;
}

void sub_1002A60D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, const void *a11)
{
  sub_10000A1EC(&a9);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  sub_100029A48(&a11);
  _Unwind_Resume(a1);
}

BOOL sub_1002A6140(Registry **a1, uint64_t a2)
{
  v15 = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  v16 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v16);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  (*(*v11 + 80))(&v15, v11, a2, 1, @"APNEditabilityTypemaskNew", 0, 0);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  v13 = v15 != 0;
  sub_10000A1EC(&v15);
  return v13;
}

void sub_1002A627C(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002A6298(uint64_t result, Registry **a2, uint64_t a3)
{
  if ((*(result + 152) & 0x8000030) != 0)
  {
    v3 = result;
    result = sub_1002A532C(result, a2, a3);
    if ((result & 1) == 0)
    {
      *(v3 + 152) &= 0xFFFFFFFFF7FFFFCFLL;
    }
  }

  return result;
}

void sub_1002A62EC(Registry **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
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
  v16 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v16);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_9:
  (*(*v13 + 80))(&v15, v13, a2, 1, @"OTAActivationAPN", 0, 0);
  sub_100010180(a3, &v15);
  sub_10000A1EC(&v15);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_1002A642C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_10000A1EC(&a9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_1002A6458(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1002A226C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1002A64AC(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_1000CE3D4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1002A6618(a1, v6);
  }

  v7 = 56 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(v7 + 48) = *(a2 + 48);
  *&v17 = 56 * v2 + 56;
  v9 = a1[1];
  v10 = 56 * v2 + *a1 - v9;
  sub_1002A6674(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1002A67C4(&v15);
  return v14;
}

void sub_1002A6604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1002A67C4(va);
  _Unwind_Resume(a1);
}

void sub_1002A6618(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1002A6674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v11 = 0;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      *a4 = *v6;
      *(a4 + 16) = v7;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(a4 + 48) = *(v6 + 48);
      v6 += 56;
      a4 += 56;
    }

    while (v6 != a3);
    v13 = a4;
    LOBYTE(v11) = 1;
    while (v5 != a3)
    {
      v8 = *(v5 + 24);
      if (v8)
      {
        *(v5 + 32) = v8;
        operator delete(v8);
      }

      v5 += 56;
    }
  }

  return sub_1002A6744(v10);
}

uint64_t sub_1002A6744(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1002A677C(a1);
  }

  return a1;
}

void sub_1002A677C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 32);
    if (v3)
    {
      *(v1 - 24) = v3;
      operator delete(v3);
    }

    v1 -= 56;
  }
}

uint64_t sub_1002A67C4(uint64_t a1)
{
  sub_1002A67FC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1002A67FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 56;
    v5 = *(v2 - 32);
    if (v5)
    {
      *(v2 - 24) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 56;
    }
  }
}

BOOL sub_1002A685C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 4) == *(a2 + 4) && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32) - v4;
    v6 = *(a2 + 24);
    if (v5 == *(a2 + 32) - v6 && !memcmp(v4, v6, v5))
    {
      return *(a1 + 48) == *(a2 + 48);
    }
  }

  return 0;
}

void sub_1002A6924(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E382E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const char *sub_1002A69A0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = "ui-apn.?";
  if (v1 == 2)
  {
    v2 = "ui-apn.2";
  }

  if (v1 == 1)
  {
    return "ui-apn.1";
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1002A69D0(uint64_t a1)
{
  *a1 = off_101E38338;
  v2 = *(a1 + 160);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  sub_10001021C((a1 + 120));
  v5 = (a1 + 96);
  sub_1000212F4(&v5);
  std::mutex::~mutex((a1 + 32));
  ctu::OsLogLogger::~OsLogLogger((a1 + 24));
  *a1 = off_101E38008;
  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_release(v3);
  }

  return a1;
}

void sub_1002A6A84(uint64_t a1)
{
  *a1 = off_101E38338;
  v2 = *(a1 + 160);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  sub_10001021C((a1 + 120));
  v4 = (a1 + 96);
  sub_1000212F4(&v4);
  std::mutex::~mutex((a1 + 32));
  ctu::OsLogLogger::~OsLogLogger((a1 + 24));
  *a1 = off_101E38008;
  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_release(v3);
  }

  operator delete();
}

uint64_t sub_1002A6B54(uint64_t a1)
{
  std::mutex::lock((a1 + 32));
  v2 = (*(a1 + 104) - *(a1 + 96)) >> 4;
  std::mutex::unlock((a1 + 32));
  return v2;
}

void sub_1002A6B94(uint64_t a1)
{
  std::mutex::lock((a1 + 32));
  v2 = (a1 + 24);
  v3 = *(a1 + 24);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I DATA:: UI_APN_Storage:", buf, 2u);
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (*(a1 + 104) - *(a1 + 96)) >> 4;
    *buf = 134217984;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t %lu APN(s) found", buf, 0xCu);
  }

  v5 = *(a1 + 96);
  if (*(a1 + 104) != v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t APNx%zu:", buf, 0xCu);
        v5 = *(a1 + 96);
      }

      sub_1002A24E4(*(v5 + v6), (a1 + 24));
      ++v7;
      v5 = *(a1 + 96);
      v6 += 16;
    }

    while (v7 < (*(a1 + 104) - v5) >> 4);
  }

  v9 = *v2;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 120);
    *buf = 138412290;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t AttachAPN: %@", buf, 0xCu);
  }

  std::mutex::unlock((a1 + 32));
}

uint64_t sub_1002A6D94(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 32));
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = (a1 + 128);
  v7 = *(a1 + 151);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 136);
  }

  if (v7 == v5 && (v8 >= 0 ? (v9 = (a1 + 128)) : (v9 = *v6), v4 >= 0 ? (v10 = a2) : (v10 = *a2), !memcmp(v9, v10, v5)))
  {
LABEL_18:
    v15 = 1;
  }

  else
  {
    std::string::operator=((a1 + 128), a2);
    theDict = 0;
    *buf = CFPreferencesCopyValue(@"apns.per.iccid", @"com.apple.commcenter.user_apns", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    sub_100138C38(&theDict, buf);
    value = 0;
    if (theDict)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
      v12 = value;
      value = MutableCopy;
      *buf = v12;
      sub_1000296E0(buf);
      v13 = value;
      sub_1002A89DC(&v25, @"last.iccid", *(a1 + 8));
      v14 = v25;
      if (*(a1 + 151) < 0)
      {
        sub_100005F2C(v22, *(a1 + 128), *(a1 + 136));
      }

      else
      {
        *v22 = *v6;
        v23 = *(a1 + 144);
      }

      if (SHIBYTE(v23) < 0)
      {
        sub_100005F2C(__p, v22[0], v22[1]);
      }

      else
      {
        *__p = *v22;
        v30 = v23;
      }

      v28 = 0;
      if (SHIBYTE(v30) < 0)
      {
        sub_100005F2C(buf, __p[0], __p[1]);
      }

      else
      {
        *buf = *__p;
        *&buf[16] = v30;
      }

      v31 = 0;
      if (ctu::cf::convert_copy())
      {
        v16 = v28;
        v28 = v31;
        v32 = v16;
        sub_100005978(&v32);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v17 = v28;
      v24 = v28;
      v28 = 0;
      sub_100005978(&v28);
      if (SHIBYTE(v30) < 0)
      {
        operator delete(__p[0]);
      }

      CFDictionarySetValue(v13, v14, v17);
      sub_100005978(&v24);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(v22[0]);
      }

      sub_100005978(&v25);
      CFPreferencesSetValue(@"apns.per.iccid", value, @"com.apple.commcenter.user_apns", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    }

    sub_1000296E0(&value);
    sub_10001021C(&theDict);
    v15 = 0;
  }

  v18 = *(a1 + 24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v19 = *v19;
    }

    *buf = 136315650;
    *&buf[4] = "refresh";
    *&buf[12] = 2080;
    *&buf[14] = v19;
    if (v15)
    {
      v20 = " (same)";
    }

    else
    {
      v20 = " (new one)";
    }

    *&buf[22] = 2080;
    v34 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s: refresh for subscriber:'%s'%s", buf, 0x20u);
  }

  *buf = 0;
  sub_1002A7E7C(a1, buf);
  sub_1002A839C(a1, *buf);
  sub_10001021C(buf);
  std::mutex::unlock((a1 + 32));
  return v15 ^ 1u;
}

void sub_1002A7110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, const void *a18, const void *a19, const void *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_100005978(&a20);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_100005978(&a17);
  sub_1000296E0(&a18);
  sub_10001021C(&a19);
  std::mutex::unlock((v26 + 32));
  _Unwind_Resume(a1);
}

void sub_1002A71C4(uint64_t a1, char a2)
{
  std::mutex::lock((a1 + 32));
  v17 = 0;
  v4 = *(a1 + 151);
  if (v4 < 0)
  {
    v4 = *(a1 + 136);
  }

  if (!v4 || (a2 & 1) != 0)
  {
    goto LABEL_33;
  }

  theDict = 0;
  *buf = CFPreferencesCopyValue(@"apns.per.iccid", @"com.apple.commcenter.user_apns", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  sub_100138C38(&theDict, buf);
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
    v6 = v17;
    v17 = MutableCopy;
    *buf = v6;
    sub_1000296E0(buf);
  }

  if (v17)
  {
    v7 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      sub_100005F2C(v13, *(a1 + 128), *(a1 + 136));
    }

    else
    {
      *v13 = *v7;
      v14 = *(a1 + 144);
    }

    if (SHIBYTE(v14) < 0)
    {
      sub_100005F2C(__p, v13[0], v13[1]);
    }

    else
    {
      *__p = *v13;
      v20 = v14;
    }

    v18 = 0;
    if (SHIBYTE(v20) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      *&buf[16] = v20;
    }

    v21 = 0;
    if (ctu::cf::convert_copy())
    {
      v8 = v18;
      v18 = v21;
      v22 = v8;
      sub_100005978(&v22);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v9 = v18;
    v15 = v18;
    v18 = 0;
    sub_100005978(&v18);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(v13[0]);
    }

    CFDictionaryRemoveValue(v17, v9);
    v10 = *(a1 + 24);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 151) < 0)
      {
        v7 = *v7;
      }

      *buf = 136315394;
      *&buf[4] = "erase";
      *&buf[12] = 2080;
      *&buf[14] = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: removed UI APNs for subscriber:%s", buf, 0x16u);
    }

    if (!CFDictionaryGetCount(v17))
    {
      v11 = v17;
      v17 = 0;
      *buf = v11;
      sub_1000296E0(buf);
    }

    sub_100005978(&v15);
  }

  sub_10001021C(&theDict);
  if (!v17)
  {
LABEL_33:
    v12 = *(a1 + 24);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "erase";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s: reset UI APN storage completely", buf, 0xCu);
    }
  }

  CFPreferencesSetValue(@"apns stuff", 0, @"com.apple.commcenter.user_apns", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  CFPreferencesSetValue(@"apns.per.iccid", v17, @"com.apple.commcenter.user_apns", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  CFPreferencesSynchronize(@"com.apple.commcenter.user_apns", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  sub_1002A7E7C(a1, buf);
  sub_1002A839C(a1, *buf);
  sub_10001021C(buf);
  sub_1000296E0(&v17);
  std::mutex::unlock((a1 + 32));
}

void sub_1002A7548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, const void *a19, const void *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_100005978(&a20);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_10001021C(&a18);
  sub_1000296E0(&a19);
  std::mutex::unlock((v26 + 32));
  _Unwind_Resume(a1);
}

void sub_1002A75EC(uint64_t a1@<X0>, const void **a2@<X8>)
{
  std::mutex::lock((a1 + 32));
  sub_100010024(a2, (a1 + 120));

  std::mutex::unlock((a1 + 32));
}

void sub_1002A7638(uint64_t a1@<X0>, CFDictionaryRef *a2@<X8>)
{
  std::mutex::lock((a1 + 32));
  v4 = *(a1 + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "getAPNs";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: reading UI configuration from storage", &v5, 0xCu);
  }

  sub_1002A7E7C(a1, a2);
  std::mutex::unlock((a1 + 32));
}

void sub_1002A7718(uint64_t a1, char a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    dispatch_retain(*(a1 + 16));
  }

  v6 = a1;
  v7 = a2;
  sub_10009CF40(&v8, a3);
  operator new();
}

void sub_1002A7820(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002A7848(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v6 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (*(a1 + 16))
  {
    dispatch_retain(*(a1 + 16));
  }

  v7 = a1;
  v8 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  sub_1000224C8(&v9, a3);
  operator new();
}

void sub_1002A7970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002A79B0(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v6 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (*(a1 + 16))
  {
    dispatch_retain(*(a1 + 16));
  }

  v7 = a1;
  v8 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  sub_1000224C8(&v9, a3);
  operator new();
}

void sub_1002A7AD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002A7B18(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    dispatch_retain(*(a1 + 16));
  }

  v4 = a1;
  sub_100063614(&v5, a2);
  operator new();
}

void sub_1002A7C0C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002A7C34(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    dispatch_retain(*(a1 + 16));
  }

  v4 = a1;
  sub_100063614(&v5, a2);
  operator new();
}

void sub_1002A7D28(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002A7D50(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W4>, void *a4@<X8>)
{
  std::mutex::lock((a1 + 32));
  v8 = *(a1 + 96);
  v9 = *(a1 + 104) - v8;
  if (v9)
  {
    v10 = v9 >> 4;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v11 = 152;
    if (a3)
    {
      v11 = 160;
    }

    do
    {
      if ((*(*v8 + v11) & a2) != 0)
      {
        sub_1002AB338();
      }

      v8 += 2;
      --v10;
    }

    while (v10);
  }

  *a4 = 0;
  a4[1] = 0;
  std::mutex::unlock((a1 + 32));
}

const void **sub_1002A7E7C@<X0>(uint64_t a1@<X0>, CFDictionaryRef *a2@<X8>)
{
  v4 = *(a1 + 8);
  theDict[0] = 0;
  v5 = kCacheUI;
  sub_1002A89DC(&v30, kCacheUI, v4);
  AttachAPNDevicePersistentCopyValue(v30, 0);
  sub_100010180(theDict, buf);
  sub_10000A1EC(buf);
  sub_100005978(&v30);
  if (theDict[0])
  {
    Value = CFDictionaryGetValue(theDict[0], k3GPP);
    v7 = Value;
    if (Value && (v8 = CFGetTypeID(Value), v8 == CFDictionaryGetTypeID()))
    {
      sub_1002A8CBC(a1, 0, v7, buf);
      v9 = *buf;
      sub_10001021C(buf);
      if (!v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v10 = *(a1 + 24);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "migrateAttachApn";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: Invalid AttachAPN dictionary - dropping", buf, 0xCu);
      }
    }

    v11 = *(a1 + 24);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "migrateAttachApn";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: Migration complete", buf, 0xCu);
    }

    sub_1002A89DC(buf, v5, v4);
    AttachAPNDevicePersistentSaveValue(*buf, 0);
    sub_100005978(buf);
  }

LABEL_11:
  sub_10001021C(theDict);
  *a2 = 0;
  theDict[0] = CFPreferencesCopyValue(@"apns stuff", @"com.apple.commcenter.user_apns", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  *buf = 0;
  v12 = sub_100138C38(buf, theDict);
  v13 = *a2;
  *a2 = *buf;
  *buf = v13;
  result = sub_10001021C(v12);
  if ((*(a1 + 151) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 136))
    {
      return result;
    }
  }

  else if (!*(a1 + 151))
  {
    return result;
  }

  if (*a2)
  {
    CFPreferencesSetValue(@"apns stuff", 0, @"com.apple.commcenter.user_apns", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    sub_1002A8CBC(a1, *a2, 0, theDict);
    if (theDict != a2)
    {
      *buf = *a2;
      *a2 = theDict[0];
      theDict[0] = 0;
      sub_10001021C(buf);
    }

    v15 = theDict;
  }

  else
  {
    v25 = 0;
    *buf = CFPreferencesCopyValue(@"apns.per.iccid", @"com.apple.commcenter.user_apns", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    sub_100138C38(&v25, buf);
    v16 = v25;
    if (v25)
    {
      if (*(a1 + 151) < 0)
      {
        sub_100005F2C(__p, *(a1 + 128), *(a1 + 136));
      }

      else
      {
        *__p = *(a1 + 128);
        v22 = *(a1 + 144);
      }

      if (SHIBYTE(v22) < 0)
      {
        sub_100005F2C(theDict, __p[0], __p[1]);
      }

      else
      {
        *theDict = *__p;
        v28 = v22;
      }

      v26 = 0;
      if (SHIBYTE(v28) < 0)
      {
        sub_100005F2C(buf, theDict[0], theDict[1]);
      }

      else
      {
        *buf = *theDict;
        v32 = v28;
      }

      v29 = 0;
      if (ctu::cf::convert_copy())
      {
        v17 = v26;
        v26 = v29;
        v30 = v17;
        sub_100005978(&v30);
      }

      if (SHIBYTE(v32) < 0)
      {
        operator delete(*buf);
      }

      v18 = v26;
      v23 = v26;
      v26 = 0;
      sub_100005978(&v26);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(theDict[0]);
      }

      v24 = CFDictionaryGetValue(v16, v18);
      *buf = 0;
      v19 = sub_100010180(buf, &v24);
      v20 = *a2;
      *a2 = *buf;
      *buf = v20;
      sub_10001021C(v19);
      sub_100005978(&v23);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v15 = &v25;
  }

  return sub_10001021C(v15);
}

void sub_1002A82C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, const void *a18, const void *a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_100005978(&a19);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_10001021C(&a18);
  sub_10001021C(v25);
  _Unwind_Resume(a1);
}

const void **sub_1002A839C(uint64_t a1, const __CFDictionary *a2)
{
  cf1 = 0;
  sub_100010024(&cf1, (a1 + 120));
  sub_100021348((a1 + 96));
  v4 = *(a1 + 120);
  *(a1 + 120) = 0;
  *buf = v4;
  sub_10001021C(buf);
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"source");
    v6 = Value;
    if (Value)
    {
      v7 = CFGetTypeID(Value);
      if (v7 == CFStringGetTypeID())
      {
        CFStringCompare(v6, @"usersettings", 0);
      }
    }

    theArray = 0;
    *buf = CFDictionaryGetValue(a2, @"apns");
    sub_1001FA5E0(&theArray, buf);
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      v9 = CFDictionaryGetValue(a2, @"APNEditabilityTypemaskNew");
      if (v9)
      {
        CFGetTypeID(v9);
        CFNumberGetTypeID();
      }

      if (Count >= 1)
      {
        v32 = 0;
        *buf = CFArrayGetValueAtIndex(theArray, 0);
        sub_100010180(&v32, buf);
        if (!v32)
        {
          __TUAssertTrigger("dictRef");
        }

        *buf = 0;
        *&buf[8] = 0;
        sub_1002A938C(buf);
      }
    }

    v32 = CFDictionaryGetValue(a2, @"attachApn");
    *buf = 0;
    sub_100010180(buf, &v32);
    v10 = *(a1 + 120);
    *(a1 + 120) = *buf;
    *buf = v10;
    sub_10001021C(buf);
    sub_100010250(&theArray);
  }

  v11 = (a1 + 24);
  v12 = *(a1 + 24);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = (*(a1 + 104) - *(a1 + 96)) >> 4;
    *buf = 136315394;
    *&buf[4] = "apply";
    *&buf[12] = 2048;
    *&buf[14] = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s: %zu APN(s) ==>> ", buf, 0x16u);
  }

  v14 = *(a1 + 96);
  if (*(a1 + 104) != v14)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      sub_1002A3288(*(v14 + v15), (a1 + 24), "");
      ++v16;
      v14 = *(a1 + 96);
      v15 += 16;
    }

    while (v16 < (*(a1 + 104) - v14) >> 4);
  }

  v17 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "apply";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s: <<== APN(s)", buf, 0xCu);
    v17 = *v11;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 120);
    *buf = 136315394;
    *&buf[4] = "apply";
    *&buf[12] = 2112;
    *&buf[14] = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s: AttachAPN: %@", buf, 0x16u);
  }

  v19 = *(a1 + 120);
  if ((cf1 != 0) == (v19 == 0) || v19 && !CFEqual(cf1, v19))
  {
    sub_1002A945C(event::data::refreshAttachApn, *(a1 + 8), "ui-apn");
  }

  v20 = *(a1 + 104) != *(a1 + 96) || *(a1 + 120) != 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 152));
  v22 = ServiceMap;
  if (v23 < 0)
  {
    v24 = (v23 & 0x7FFFFFFFFFFFFFFFLL);
    v25 = 5381;
    do
    {
      v23 = v25;
      v26 = *v24++;
      v25 = (33 * v25) ^ v26;
    }

    while (v26);
  }

  std::mutex::lock(ServiceMap);
  *buf = v23;
  v27 = sub_100009510(&v22[1].__m_.__sig, buf);
  if (!v27)
  {
    v29 = 0;
LABEL_37:
    std::mutex::unlock(v22);
    v28 = 0;
    v30 = 1;
    if (!v29)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v29 = v27[3];
  v28 = v27[4];
  if (!v28)
  {
    goto LABEL_37;
  }

  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v22);
  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v28);
  v30 = 0;
  if (v29)
  {
LABEL_38:
    (*(*v29 + 48))(v29, *(a1 + 8), v20, 0);
  }

LABEL_39:
  if ((v30 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  return sub_10001021C(&cf1);
}

void sub_1002A894C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

const void **sub_1002A89DC@<X0>(const void **__return_ptr a1@<X8>, const __CFString *cf@<X1>, int a3@<W0>)
{
  theString2 = cf;
  if (!cf)
  {
    *a1 = 0;
    goto LABEL_5;
  }

  CFRetain(cf);
  if (a3 != 2)
  {
    *a1 = theString2;
LABEL_5:
    theString2 = 0;
    return sub_100005978(&theString2);
  }

  if ((atomic_load_explicit(byte_101FBA130, memory_order_acquire) & 1) == 0)
  {
    sub_1017691FC();
  }

  v7 = qword_101FBA140;
  if (!qword_101FBA140)
  {
    goto LABEL_17;
  }

  v8 = &qword_101FBA140;
  do
  {
    v9 = CFStringCompare(*(v7 + 32), theString2, 0);
    if (v9 != kCFCompareLessThan)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * (v9 == kCFCompareLessThan));
  }

  while (v7);
  if (v8 == &qword_101FBA140 || CFStringCompare(theString2, v8[4], 0) == kCFCompareLessThan)
  {
LABEL_17:
    *a1 = 0;
    *a1 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-%d", cf, 2);
    v10 = qword_101FBA140;
    if (!qword_101FBA140)
    {
      goto LABEL_24;
    }

    v11 = &qword_101FBA140;
    while (1)
    {
      while (1)
      {
        v12 = v10;
        if (CFStringCompare(theString2, *(v10 + 32), 0) != kCFCompareLessThan)
        {
          break;
        }

        v10 = *v12;
        v11 = v12;
        if (!*v12)
        {
          goto LABEL_24;
        }
      }

      if (CFStringCompare(*(v12 + 32), theString2, 0) != kCFCompareLessThan)
      {
        break;
      }

      v11 = (v12 + 8);
      v10 = *(v12 + 8);
      if (!v10)
      {
        goto LABEL_24;
      }
    }

    if (!*v11)
    {
LABEL_24:
      operator new();
    }

    sub_100222570((*v11 + 40), a1);
  }

  else
  {
    sub_10005C7A4(a1, v8 + 5);
  }

  return sub_100005978(&theString2);
}

void sub_1002A8C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void sub_1002A8C60(const void **a1)
{
  if (a1)
  {
    sub_1002A8C60(*a1);
    sub_1002A8C60(a1[1]);
    sub_100005978(a1 + 5);
    sub_100005978(a1 + 4);

    operator delete(a1);
  }
}

void sub_1002A8CBC(uint64_t a1@<X0>, const __CFDictionary *a2@<X1>, unint64_t a3@<X2>, void **a4@<X8>)
{
  *a4 = 0;
  if (!(a2 | a3))
  {
    v9 = *(a1 + 24);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    *&buf[4] = "save";
    v10 = "#I %s: save() called with empty parameters - ignored";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
    return;
  }

  v8 = (a1 + 128);
  if ((*(a1 + 151) & 0x80000000) == 0)
  {
    if (*(a1 + 151))
    {
      key = 0;
      *__dst = *v8;
      v32 = *(a1 + 144);
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v11 = *(a1 + 136);
  if (!v11)
  {
LABEL_11:
    v9 = *(a1 + 24);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    *&buf[4] = "save";
    v10 = "#I %s: UI APN(s)/AttachAPN cannot be stored, no ICCID to tie to";
    goto LABEL_13;
  }

  key = 0;
  sub_100005F2C(__dst, *v8, v11);
LABEL_9:
  if (SHIBYTE(v32) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v38 = v32;
  }

  v34 = 0;
  if (SHIBYTE(v38) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    *&buf[16] = v38;
  }

  v35 = 0;
  if (ctu::cf::convert_copy())
  {
    v12 = v34;
    v34 = v35;
    theDict = v12;
    sub_100005978(&theDict);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  key = v34;
  v34 = 0;
  sub_100005978(&v34);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__dst[0]);
  }

  theDict = 0;
  *buf = CFPreferencesCopyValue(@"apns.per.iccid", @"com.apple.commcenter.user_apns", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  sub_100138C38(&theDict, buf);
  v35 = 0;
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
LABEL_29:
    v14 = v35;
    v35 = MutableCopy;
    *buf = v14;
    sub_1000296E0(buf);
    goto LABEL_30;
  }

  MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (MutableCopy)
  {
    goto LABEL_29;
  }

LABEL_30:
  Value = CFDictionaryGetValue(v35, key);
  v16 = Value;
  if (Value)
  {
    v17 = CFGetTypeID(Value);
    if (v17 == CFDictionaryGetTypeID())
    {
      v34 = 0;
      Mutable = CFDictionaryCreateMutableCopy(0, 0, v16);
LABEL_34:
      v19 = v34;
      v34 = Mutable;
      *buf = v19;
      sub_1000296E0(buf);
      goto LABEL_35;
    }
  }

  v34 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    goto LABEL_34;
  }

LABEL_35:
  if (a2)
  {
    v20 = v34;
    Count = CFDictionaryGetCount(a2);
    memset(buf, 0, sizeof(buf));
    sub_10007D780(buf, Count);
    __p[0] = 0;
    __p[1] = 0;
    v38 = 0;
    sub_10007D780(__p, Count);
    CFDictionaryGetKeysAndValues(a2, *buf, __p[0]);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        CFDictionarySetValue(v20, *(*buf + 8 * i), *(__p[0] + i));
      }
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    if (sub_1002A6140((a1 + 152), *(a1 + 8)))
    {
      v23 = v34;
      v24 = sub_1002A5E2C((a1 + 152), *(a1 + 8), 0);
      __p[0] = 0;
      *buf = v24;
      v25 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, buf);
      if (v25)
      {
        v26 = __p[0];
        __p[0] = v25;
        *buf = v26;
        sub_100029A48(buf);
      }

      v27 = __p[0];
      v30 = __p[0];
      __p[0] = 0;
      sub_100029A48(__p);
      CFDictionarySetValue(v23, @"APNEditabilityTypemaskNew", v27);
      sub_100029A48(&v30);
    }
  }

  if (a3)
  {
    CFDictionarySetValue(v34, @"attachApn", a3);
  }

  CFDictionarySetValue(v35, key, v34);
  v28 = v35;
  sub_1002A89DC(buf, @"last.iccid", *(a1 + 8));
  CFDictionarySetValue(v28, *buf, key);
  sub_100005978(buf);
  v29 = *(a1 + 24);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 151) < 0)
    {
      v8 = *v8;
    }

    *buf = 136315394;
    *&buf[4] = "save";
    *&buf[12] = 2080;
    *&buf[14] = v8;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s: saved UI APNs for subscriber:%s", buf, 0x16u);
  }

  sub_100010180(__p, &v34);
  if (__p != a4)
  {
    *buf = *a4;
    *a4 = __p[0];
    __p[0] = 0;
    sub_10001021C(buf);
  }

  sub_10001021C(__p);
  CFPreferencesSetValue(@"apns.per.iccid", v35, @"com.apple.commcenter.user_apns", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  CFPreferencesSynchronize(@"com.apple.commcenter.user_apns", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  sub_1000296E0(&v34);
  sub_1000296E0(&v35);
  sub_10001021C(&theDict);
  sub_100005978(&key);
}

void sub_1002A9274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, const void *a18, const void *a19, const void *a20, const void *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_100029A48(&a10);
  sub_1000296E0(&a19);
  sub_1000296E0(&a20);
  sub_10001021C(&a21);
  sub_100005978(&a18);
  sub_10001021C(v34);
  _Unwind_Resume(a1);
}

void sub_1002A938C(uint64_t *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  operator new();
}

void sub_1002A9430(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002A945C(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = a2;
  sub_1002A95D8((a1 + 24), a2, a3);
  sub_10000501C(__p, a3);
  v6 = sub_1002A97D0((a1 + 8));
  sub_1002A9814(v6, v4, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1002A94CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002A94E8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v7 = sub_10029F000(a1);
  *v7 = off_101E37F88;
  *(v7 + 144) = a3;
  *(a1 + 148) = a4 + 100 * a3 + 1000 * subscriber::simSlotAsInstance();
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  CIPFamily::CIPFamily((a1 + 168));
  CIPFamily::CIPFamily((a1 + 184));
  *(a1 + 200) = 0;
  *(a1 + 216) = 0;
  *(a1 + 242) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0;
  *(a1 + 288) = 0;
  return a1;
}

void sub_1002A95B4(_Unwind_Exception *a1)
{
  CIPFamily::~CIPFamily((v1 + 168));
  sub_10029F15C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002A95D8(uint64_t *a1, int a2, const char *a3)
{
  v26 = a2;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v14 = 0u;
  v15 = 0u;
  *v13 = 0u;
  memset(v12, 0, sizeof(v12));
  v11 = 0u;
  sub_10000D518(&v11);
  v5 = subscriber::operator<<();
  v6 = sub_10000C030(v5, ", ", 2);
  v7 = strlen(a3);
  sub_10000C030(v6, a3, v7);
  sub_10006EE70(&v11 + 8, __p);
  sub_1000841A0(a1, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[1]);
  }

  std::locale::~locale(v12);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1002A97A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1002A97D0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_1002A9814(uint64_t *a1, int a2, uint64_t a3)
{
  v26 = a2;
  v25 = 0uLL;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v29, v5);
  v6 = a1[1];
  if (v6)
  {
    if (atomic_load_explicit((v6 + 8), memory_order_acquire) == 1)
    {
      sub_1002A9A90(a1, &v29, 0, 1);
    }

    v7 = *a1;
    v8 = a1[1];
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v8 = 0;
    v7 = *a1;
  }

  v9 = v25;
  *&v25 = v7;
  *(&v25 + 1) = v8;
  v28[0] = v9;
  sub_10004A724(v28 + 1);
  sub_10004A704(*(&v40 + 1));
  sub_10004A6B0(&v29);
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
  v29 = 0u;
  v44 = 0;
  v45 = 10;
  v46 = &v29 + 8;
  v47 = 0;
  v48 = &v26;
  v49 = a3;
  v50 = 0;
  v51 = 0;
  v10 = sub_1002A9B28(&v25);
  v24[0] = &v29;
  v24[1] = a1;
  v24[2] = sub_1002A9D78(v10);
  v11 = sub_1002A9B28(&v25);
  v12 = sub_10004AA88((v11 + 16));
  v13 = sub_1002A9B28(&v25);
  v14 = *(sub_1002A9D78(v13) + 8);
  v15 = sub_1002A9B28(&v25);
  *&v22 = v14;
  *(&v22 + 1) = sub_1002A9D78(v15);
  *&v23 = &v29;
  *(&v23 + 1) = *(&v22 + 1);
  sub_1002A9FC8(&v22);
  v16 = sub_1002A9B28(&v25);
  v17 = sub_1002A9D78(v16);
  v18 = sub_1002A9B28(&v25);
  *&v20 = v17;
  *(&v20 + 1) = sub_1002A9D78(v18);
  *&v21 = &v29;
  *(&v21 + 1) = *(&v20 + 1);
  sub_1002A9FC8(&v20);
  v28[0] = v22;
  v28[1] = v23;
  v27[0] = v20;
  v27[1] = v21;
  sub_1002A9DBC(v12, v28, v27);
  sub_1002AA43C(v24);
  sub_1002AACF4(&v29);
  return sub_10004A724(&v25 + 1);
}

void sub_1002A9A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_1000FFEDC(va);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002A9A90(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v5 = a4;
  v6 = a3;
  v9 = sub_1002A9B28(a1);
  v10 = sub_1002A9D78(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_1002A9B28(a1);
    v11 = *(sub_1002A9D78(v12) + 8);
  }

  v14 = v11;
  return sub_1002A9B6C(a1, a2, v6, &v14, v5);
}

uint64_t sub_1002A9B28(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_1002A9B6C(uint64_t *a1, void *a2, int a3, uint64_t **a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_1002A9B28(a1);
  result = sub_1002A9D78(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_1002A9C84(v10 + 2);
        sub_1002A9CC8(v15, a2);
        v10 = v22;
      }

      if (*(sub_1002A9C84(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_1002A9B28(a1);
        v18 = sub_1002A9D78(v17);
        v19 = sub_1002A9C84(v22 + 2);
        v16 = sub_100100CE8(v18, (v19 + 64), &v22);
      }

      v22 = v16;
      v20 = sub_1002A9B28(a1);
      result = sub_1002A9D78(v20);
      v10 = v22;
      if (v22 == result)
      {
        break;
      }
    }

    while (v13 >= v14++);
  }

  a1[2] = v10;
  return result;
}

uint64_t sub_1002A9C84(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_1002A9CC8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_1002A9D34(result);
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

uint64_t sub_1002A9D34(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t sub_1002A9D78(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1002A9DBC(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_1002A9E44(a2);
    *a2 = *(*a2 + 8);
    sub_1002A9FC8(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_1002A9E44(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_1002A9EE4((v2 + 272), (*a1 + 16));
    if ((*v2 & 1) == 0)
    {
      *v2 = 1;
    }
  }

  v3 = a1[2];
  if ((*v3 & 1) == 0)
  {
    sub_101761304();
  }

  return v3 + 1;
}

uint64_t sub_1002A9EE4(unsigned int **a1, uint64_t *a2)
{
  v2 = sub_1002A9C84(a2);
  v3 = (sub_1002A9D34((v2 + 32)) + 24);

  return sub_1002A9F30(v3);
}

uint64_t sub_1002A9F30(void *a1)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v4, "call to empty boost::function");
    v4.__vftable = &off_101E25EA8;
    sub_1001028A8(&v4);
  }

  v1 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v2 = a1 + 1;

  return v1(v2);
}

void sub_1002A9FC8(uint64_t *result)
{
  v1 = *result;
  if (*result != result[3])
  {
    if (v1 == result[1])
    {
      goto LABEL_15;
    }

    while (1)
    {
      sub_10004AB6C((result[2] + 8), *(result[2] + 264));
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v3 = sub_1002AA228((*result + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_1002A9C84((*result + 16));
      sub_1002AA26C(v4, &v14, (result[2] + 8));
      v5 = sub_1002A9C84((*result + 16));
      v6 = result[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 288);
      }

      else
      {
        ++*(v6 + 292);
      }

      v7 = sub_1002A9C84((*result + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_1002AA390(result, &v14, *result);
        v9 = 0;
      }

      (*(**(&v25 + 1) + 32))(*(&v25 + 1));
      sub_10004A6B0(&v14);
      v10 = *result;
      v1 = result[1];
      if (!v9)
      {
        break;
      }

      v11 = *(v10 + 8);
      *result = v11;
      if (v11 == v1)
      {
        goto LABEL_15;
      }
    }

    if (v10 == v1)
    {
LABEL_15:
      v12 = result[3];
      if (v12 != v1)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v13 = sub_1002AA228((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_1002AA390(result, &v14, result[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_1002AA1EC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002AA228(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_1002AA26C(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_1002A9D34(result + 4); ; i += 6)
    {
      result = sub_1002A9D34(v3);
      if (i == result[1])
      {
        break;
      }

      memset(v8, 0, sizeof(v8));
      sub_10004ACE8(i, v8);
      if (sub_100048EA8(i))
      {
        if (*(v6 + 24) == 1)
        {
          *(v6 + 24) = 0;
          sub_10004B3DC(v6, a2);
        }

        return sub_10004B040(v8);
      }

      sub_10004AFC8(a3, v8);
      sub_10004B040(v8);
    }
  }

  return result;
}

void sub_1002AA36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

atomic_uint **sub_1002AA390(void *a1, void *a2, uint64_t a3)
{
  a1[3] = a3;
  v3 = a1[2];
  if (a1[1] == a3)
  {
    result = *(v3 + 296);
    if (result)
    {
      result = sub_10004B3DC(result, a2);
    }

    *(v3 + 296) = 0;
  }

  else
  {
    v4 = *(a3 + 16);
    v5 = a1[2];

    return sub_1002AA3F0(v5, a2, v4);
  }

  return result;
}

atomic_uint **sub_1002AA3F0(uint64_t a1, void *a2, uint64_t a3)
{
  result = *(a1 + 296);
  if (result)
  {
    result = sub_10004B3DC(result, a2);
  }

  *(a1 + 296) = a3;
  if (a3)
  {
    v6 = *(a3 + 28);
    if (!v6)
    {
      sub_10176135C();
    }

    *(a3 + 28) = v6 + 1;
  }

  return result;
}

void *sub_1002AA43C(void *a1)
{
  if (*(*a1 + 292) > *(*a1 + 288))
  {
    sub_1002AA480(a1[1], a1[2]);
  }

  return a1;
}

void sub_1002AA480(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_1002A9B28(a1);
  if (sub_1002A9D78(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_1002A9B28(a1);
    v8 = *(sub_1002A9D78(v7) + 8);
    sub_1002A9B6C(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}