uint64_t sub_1003305D8(uint64_t a1)
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

uint64_t sub_100330658(uint64_t a1, uint64_t a2)
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

void *sub_1003306F0(void *a1)
{
  *a1 = off_101E42F28;
  sub_10032BA00((a1 + 1));
  return a1;
}

void sub_100330734(void *a1)
{
  *a1 = off_101E42F28;
  sub_10032BA00((a1 + 1));

  operator delete();
}

void sub_100330844(void *a1)
{
  sub_10032BA00(a1 + 8);

  operator delete(a1);
}

uint64_t sub_100330880(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_100022DB4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_1003308C8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100330914(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003309A0(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(v3);
  sub_1003309F4(*(a1 + 32), v3);
  return sub_100FBB8C8(v3);
}

uint64_t sub_1003309F4(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v5 = *v4;
  *(a1 + 24) = *(v4 + 2);
  *(a1 + 8) = v5;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v6 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v6;
  *(a2 + 55) = 0;
  *(a2 + 32) = 0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v7 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v7;
  *(a2 + 79) = 0;
  *(a2 + 56) = 0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v8 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v8;
  *(a2 + 103) = 0;
  *(a2 + 80) = 0;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v9 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v9;
  *(a2 + 127) = 0;
  *(a2 + 104) = 0;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  v10 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 128) = v10;
  *(a2 + 151) = 0;
  *(a2 + 128) = 0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  v11 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v11;
  *(a2 + 175) = 0;
  *(a2 + 152) = 0;
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  v12 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 176) = v12;
  *(a2 + 199) = 0;
  *(a2 + 176) = 0;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  v13 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v13;
  *(a2 + 223) = 0;
  *(a2 + 200) = 0;
  return a1;
}

uint64_t sub_100330B98(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(v3);
  sub_1003309F4(*(a1 + 32), v3);
  return sub_100FBB8C8(v3);
}

uint64_t sub_100330BEC(uint64_t a1, uint64_t a2)
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

uint64_t sub_100330C84(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100330D04(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v3 = *a1;
  v6 = a1;
  v7 = v3;
  sub_1003289DC(*v3, a3, v8);
  v4 = *(v3 + 32);
  if (!v4)
  {
    sub_100022DB4();
  }

  (*(*v4 + 48))(v4, v8);
  sub_100FBB8C8(v8);
  sub_100330DB8(&v7);
  return sub_1000049E0(&v6);
}

void sub_100330D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100330DB8(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100330DB8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10032BA80(v1 + 8);
    operator delete();
  }

  return a1;
}

uint64_t *sub_100330E08(void **a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = v1[2];
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v1[1])
      {
        v6 = (*(**(v3 + 168) + 48))(*(v3 + 168), v1 + 3);
        if (v1[9])
        {
          sub_10000FFD0((v1 + 6), v6);
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_100330ED8(&v9);
  return sub_1000049E0(&v8);
}

void sub_100330EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100004A34(v9);
  sub_100330ED8(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100330ED8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10000FF50(v1 + 48);
    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_100330FB0(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_101E42B80;
  sub_10004ECBC((a1 + 24), a2);
  return a1;
}

uint64_t *sub_10033100C(uint64_t **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  (*(**(*v1 + 168) + 112))(*(*v1 + 168));
  (*(**(v2 + 168) + 40))(&v7);
  v6 = 0;
  sub_100331140(v1 + 1, &v7);
  sub_100010250(&v7);
  sub_1003310E8(&v5);
  return sub_1000049E0(&v4);
}

void sub_1003310BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  sub_100010250(&a12);
  sub_1003310E8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003310E8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      _Block_release(v2);
    }

    operator delete();
  }

  return a1;
}

const void **sub_100331140(uint64_t *a1, const void **a2)
{
  v2 = *a1;
  v4 = *a2;
  *a2 = 0;
  (*(v2 + 16))();
  return sub_100010250(&v4);
}

void sub_100331190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100010250(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003311A4(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7[0] = v1;
  v2 = *(*v1 + 168);
  v13[0] = 0;
  v13[1] = 0;
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(&__p, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v3 = *(v1 + 8);
    v11 = *(v1 + 24);
    __p = v3;
  }

  v12 = 1;
  v4 = *(v1 + 32);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v8[0] = off_101E43008;
  v8[1] = v4;
  v7[1] = 0;
  v8[3] = v8;
  (*(*v2 + 72))(v2, v13, v9, v8);
  sub_100113648(v8);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  sub_100331320(v7);
  return sub_1000049E0(&v6);
}

void sub_1003312CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  sub_100331320(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100331320(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      _Block_release(v2);
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

const void **sub_100331388(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void *sub_1003313BC(void *a1)
{
  *a1 = off_101E43008;
  v2 = a1[1];
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void sub_10033140C(void *a1)
{
  *a1 = off_101E43008;
  v1 = a1[1];
  if (v1)
  {
    _Block_release(v1);
  }

  operator delete();
}

void *sub_1003314EC(uint64_t a1, void *a2)
{
  *a2 = off_101E43008;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void sub_100331544(const void **a1)
{
  sub_1003315E0(a1 + 1);

  operator delete(a1);
}

uint64_t sub_100331594(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1003315E0(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t *sub_100331604(uint64_t **a1)
{
  v1 = *a1;
  v6 = a1;
  v7[0] = v1;
  v2 = *v1;
  v3 = *(*v1 + 168);
  v12[0] = 0;
  v12[16] = 0;
  sub_1013F05F4(v9);
  v7[1] = v2;
  v4 = v1[1];
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v8[0] = off_101E43088;
  v8[1] = v2;
  v7[2] = 0;
  v8[2] = v4;
  v8[3] = v8;
  (*(*v3 + 80))(v3, v12, v9, v8);
  sub_100113648(v8);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  sub_100331764(v7);
  return sub_1000049E0(&v6);
}

void sub_100331710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100331764(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      _Block_release(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_1003317BC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void *sub_1003317F0(void *a1)
{
  *a1 = off_101E43088;
  v2 = a1[2];
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void sub_100331840(void *a1)
{
  *a1 = off_101E43088;
  v1 = a1[2];
  if (v1)
  {
    _Block_release(v1);
  }

  operator delete();
}

void *sub_100331920(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  result = *(a1 + 16);
  *a2 = off_101E43088;
  a2[1] = v4;
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[2] = result;
  return result;
}

void sub_100331978(char *a1)
{
  sub_100331AA0((a1 + 8));

  operator delete(a1);
}

uint64_t sub_1003319B4(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1 && (a2[1] & 1) != 0)
  {
    v3 = *(*(a1 + 16) + 16);

    return v3();
  }

  else
  {
    if (os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176B9D0();
    }

    return (*(*(a1 + 16) + 16))();
  }
}

uint64_t sub_100331A54(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100331AA0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t sub_100331AC4(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x80)
  {
    a2 = 1;
  }

  if (v2 < 0x100)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 128;
  }

  return v4 ^ 1u;
}

uint64_t *sub_100331B24(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 8) && *(v1 + 56) == 1)
      {
        v6 = *(v1 + 40);
        if (v6)
        {
          (*(v6 + 16))(v6, v1 + 64);
          if ((*(v1 + 56) & 1) == 0)
          {
            __assert_rtn("operator->", "optional.hpp", 1221, "this->is_initialized()");
          }
        }

        (*(**(v3 + 168) + 56))(*(v3 + 168), v1 + 80, *(*(v1 + 24) + 146));
      }

      sub_100004A34(v5);
    }
  }

  sub_100331C38(&v9);
  return sub_1000049E0(&v8);
}

void sub_100331C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100004A34(v9);
  sub_100331C38(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100331C38(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1001123EC((v1 + 56));
    v2 = *(v1 + 48);
    if (v2)
    {
      _Block_release(v2);
    }

    v3 = *(v1 + 40);
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = *(v1 + 32);
    if (v4)
    {
      sub_100004A34(v4);
    }

    v5 = *(v1 + 16);
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_100331CC0(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 8))
      {
        if (*(v1 + 144))
        {
          sub_100331E10((v1 + 144), (v1 + 152), (v1 + 24));
        }

        *(v3 + 744) = 0;
        sub_10032A8FC((v3 + 696));
        if (*(v1 + 152) == 1)
        {
          v6 = *(v3 + 184);
          if (v6)
          {
            if (*(*(v1 + 120) + 104) - *(*(v1 + 120) + 96) == 24)
            {
              (*(*v6 + 88))(v6);
            }
          }
        }

        sub_100326DD4(v3);
      }

      sub_100004A34(v5);
    }
  }

  sub_100331DC8(&v9);
  return sub_1000049E0(&v8);
}

void sub_100331DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100004A34(v9);
  sub_100331DC8(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100331DC8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10032B0E8(v2);
    operator delete();
  }

  return a1;
}

void sub_100331E10(uint64_t *a1, unsigned __int8 *a2, _BYTE *a3)
{
  v3 = *a1;
  v4 = 0;
  if (*a2 - 1 <= 1)
  {
    v4 = *a2;
  }

  v6[0] = 0;
  if (*a3 == 1)
  {
    sub_100F11B6C(&v7, (a3 + 8));
    v6[0] = 1;
  }

  (*(v3 + 16))(v3, &v4, v6);
  if (v6[0] == 1)
  {
    if (v10[24] == 1)
    {
      v5 = v10;
      sub_100112120(&v5);
    }

    if (v9 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_100331F1C()
{
  if ((atomic_load_explicit(&qword_101FBA248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA248))
  {
    sub_100331FC4(qword_101FBA228);
  }

  qword_101FCB730 = qword_101FBA228;
}

void sub_100331FC4(void *a1)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  createPlatformPropertyStore(a1 + 3);
}

void sub_100332014(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v3)
  {
    sub_10176BA04(v3);
  }

  sub_1000DD0AC(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

void sub_100332044(uint64_t a1)
{
  std::mutex::lock(&stru_101FB1BC0);
  sub_1000DD0AC(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  createPlatformPropertyStore(&v2);
}

uint64_t sub_100332160(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v3 = *(a1 + 24);
    byte_101FCB738 = 1;
    *(a1 + 24) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else
  {
    byte_101FCB738 = 1;
  }

  sub_1000DD0AC(a1, *(a1 + 8));
  return a1;
}

uint64_t sub_10033220C(uint64_t **a1, char *a2)
{
  std::mutex::lock(&stru_101FB1BC0);
  v4 = sub_100007A6C(a1, a2);
  if (a1 + 1 != v4)
  {
    if (!(*(*a1[3] + 32))(a1[3], a2))
    {
      v5 = 0;
      goto LABEL_6;
    }

    sub_1000194D8(a1, v4);
    sub_1000DD108((v4 + 4));
    operator delete(v4);
  }

  v5 = 1;
LABEL_6:
  std::mutex::unlock(&stru_101FB1BC0);
  return v5;
}

uint64_t sub_1003322E4(uint64_t a1)
{
  std::mutex::lock(&stru_101FB1BC0);
  v2 = (*(**(a1 + 24) + 40))(*(a1 + 24));
  if (v2)
  {
    sub_1000DD0AC(a1, *(a1 + 8));
    *a1 = a1 + 8;
    *(a1 + 16) = 0;
    *(a1 + 8) = 0;
  }

  std::mutex::unlock(&stru_101FB1BC0);
  return v2;
}

uint64_t sub_10033238C(uint64_t **a1, std::string *this, const std::string *a3)
{
  if (std::string::find(this, 61, 0) != -1)
  {
    __TUAssertTrigger("key.find('=', 0) == std::string::npos");
  }

  std::mutex::lock(&stru_101FB1BC0);
  v6 = (*(*a1[3] + 16))(a1[3], this, a3);
  if (v6)
  {
    v10 = this;
    v7 = sub_100173F08(a1, this, &unk_101802C98, &v10, &v9);
    std::string::operator=((v7 + 7), a3);
  }

  std::mutex::unlock(&stru_101FB1BC0);
  return v6;
}

BOOL sub_1003324A4(void *a1, uint64_t a2, _DWORD *a3)
{
  v4 = [a1 valueForKey:a2];
  v5 = v4;
  if (v4)
  {
    *a3 = [v4 intValue];
  }

  return v5 != 0;
}

BOOL sub_100332500(void *a1, uint64_t a2, _DWORD *a3)
{
  v4 = [a1 valueForKey:a2];
  v5 = v4;
  if (v4)
  {
    *a3 = [v4 unsignedIntValue];
  }

  return v5 != 0;
}

BOOL sub_10033255C(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 valueForKey:a2];
  v5 = v4;
  if (v4)
  {
    *a3 = [v4 unsignedLongLongValue];
  }

  return v5 != 0;
}

BOOL sub_1003325B8(void *a1, uint64_t a2, _DWORD *a3)
{
  v4 = [a1 valueForKey:a2];
  v5 = v4;
  if (v4)
  {
    [v4 floatValue];
    *a3 = v6;
  }

  return v5 != 0;
}

BOOL sub_100332614(void *a1, uint64_t a2, _BYTE *a3)
{
  v4 = [a1 valueForKey:a2];
  v5 = v4;
  if (v4)
  {
    *a3 = [v4 BOOLValue];
  }

  return v5 != 0;
}

BOOL sub_100332670(void *a1, uint64_t a2, std::string *a3)
{
  v4 = [a1 valueForKey:a2];
  v5 = v4;
  if (v4)
  {
    sub_100016890(a3, [v4 UTF8String]);
  }

  return v5 != 0;
}

void sub_10033271C(id a1)
{
  v1 = objc_alloc_init(CTLocationManager);
  v2 = qword_101FBA250;
  qword_101FBA250 = v1;
}

void sub_100332AAC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CTLocationManager;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

uint64_t sub_100332C08(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 33) ^ 1 | (v2 != *(a1 + 32));
  if ((*(a1 + 33) ^ 1) & 1 | (v2 != *(a1 + 32)))
  {
    *(a1 + 32) = v2 | 0x100;
    v4 = *(a1 + 24);
    if (v4)
    {
      (*(*v4 + 48))(v4);
    }
  }

  return v3 & 1;
}

uint64_t sub_1003336BC(uint64_t a1)
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

id sub_10033373C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [CLLocationManager alloc];
  v3 = [NSBundle bundleWithIdentifier:@"com.apple.CoreTelephony"];
  v4 = [v2 initWithEffectiveBundle:v3 delegate:*v1 onQueue:*(*v1 + 40)];
  v5 = *(*v1 + 8);
  *(*v1 + 8) = v4;

  [*(*v1 + 8) setDistanceFilter:kCLDistanceFilterNone];
  v6 = *(*v1 + 8);

  return [v6 setDesiredAccuracy:kCLLocationAccuracyHundredMeters];
}

id **sub_100333804(id **a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {

    operator delete();
  }

  return a1;
}

id **sub_100333854(id *a1)
{
  v2 = a1;
  [*a1 fetchLocationServiceEnabled];
  return sub_100333804(&v2);
}

void sub_10033388C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100333804(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003338A0(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_1003338FC(uint64_t *a1)
{
  v12 = a1;
  v1 = *a1;
  if (!*(*a1 + 56))
  {
    v3 = **(v1 + 32);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I setting Registry & RestModule", buf, 2u);
      v1 = *a1;
    }

    v5 = a1[1];
    v4 = a1[2];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = *(v1 + 64);
    *(v1 + 56) = v5;
    *(v1 + 64) = v4;
    if (v6)
    {
      sub_100004A34(v6);
    }

    sub_10000501C(buf, "CTLocationManager");
    v7 = *(*a1 + 40);
    v14 = v7;
    if (v7)
    {
      dispatch_retain(v7);
    }

    object = 0;
    ctu::RestModule::RestModule();
    v8 = *a1;
    v9 = v17;
    v17 = 0uLL;
    v10 = *(v8 + 80);
    *(v8 + 72) = v9;
    if (v10)
    {
      sub_100004A34(v10);
      if (*(&v17 + 1))
      {
        sub_100004A34(*(&v17 + 1));
      }
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v14)
    {
      dispatch_release(v14);
    }

    if (v16 < 0)
    {
      operator delete(*buf);
    }

    Registry::createRestModuleOneTimeUseConnection(&v17, a1[1]);
    ctu::RestModule::connect();
    if (*(&v17 + 1))
    {
      sub_100004A34(*(&v17 + 1));
    }

    sub_100333AB8((*a1 + 88), *a1 + 72);
  }

  return sub_1003338A0(&v12);
}

void sub_100333A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, char a12, int a13, __int16 a14, char a15, char a16)
{
  v18 = *(v16 - 40);
  if (v18)
  {
    sub_100004A34(v18);
  }

  sub_1003338A0(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_100333AB8(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_100333B1C(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

void *sub_100333B1C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E43138;
  v5[1] = v3;
  v5[3] = v5;
  sub_100333DB0(v5, a1);
  sub_1003336BC(v5);
  return a1;
}

uint64_t sub_100333C20(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E43138;
  a2[1] = v2;
  return result;
}

uint64_t sub_100333C54(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100333CA0(uint64_t *a1, BOOL *a2)
{
  if (!a2[1] || (v2 = xpc_BOOL_create(*a2)) == 0)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/location_service_enabled");
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v2);
}

void sub_100333D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

void *sub_100333DB0(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_100334010(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_10033401C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  if ((*(*v1 + 49) & 1) == 0)
  {
    sub_10176BA3C();
  }

  v4 = **(v2 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v2 + 48))
    {
      v5 = "True";
    }

    else
    {
      v5 = "False";
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I using cached locationServiceEnabled: %s", &v6, 0xCu);
    v2 = *v1;
  }

  **(a1 + 32) = *(v2 + 48);
}

atomic_uint **sub_100334104(uint64_t *a1, double a2, double a3)
{
  v25 = a3;
  v26 = a2;
  v24 = 0uLL;
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
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v29, v4);
  v5 = a1[1];
  if (v5)
  {
    if (atomic_load_explicit((v5 + 8), memory_order_acquire) == 1)
    {
      sub_10010049C(a1, &v29, 0, 1);
    }

    v6 = *a1;
    v7 = a1[1];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v7 = 0;
    v6 = *a1;
  }

  v8 = v24;
  *&v24 = v6;
  *(&v24 + 1) = v7;
  v28[0] = v8;
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
  v49 = &v25;
  v50 = 0;
  v51 = 0;
  v9 = sub_100100000(&v24);
  v23[0] = &v29;
  v23[1] = a1;
  v23[2] = sub_100101E74(v9);
  v10 = sub_100100000(&v24);
  v11 = sub_10004AA88((v10 + 16));
  v12 = sub_100100000(&v24);
  v13 = *(sub_100101E74(v12) + 8);
  v14 = sub_100100000(&v24);
  *&v21 = v13;
  *(&v21 + 1) = sub_100101E74(v14);
  *&v22 = &v29;
  *(&v22 + 1) = *(&v21 + 1);
  sub_1003344F8(&v21);
  v15 = sub_100100000(&v24);
  v16 = sub_100101E74(v15);
  v17 = sub_100100000(&v24);
  *&v19 = v16;
  *(&v19 + 1) = sub_100101E74(v17);
  *&v20 = &v29;
  *(&v20 + 1) = *(&v19 + 1);
  sub_1003344F8(&v19);
  v28[0] = v21;
  v28[1] = v22;
  v27[0] = v19;
  v27[1] = v20;
  sub_100334380(v11, v28, v27);
  sub_1003348C0(v23);
  sub_100334AA4(&v29);
  return sub_10004A724(&v24 + 1);
}

void sub_10033432C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_1000FFEDC(va);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

void sub_100334380(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_100334408(a2);
    *a2 = *(*a2 + 8);
    sub_1003344F8(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_100334408(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_1003344A8((v2 + 272), (*a1 + 16));
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

uint64_t sub_1003344A8(uint64_t a1, uint64_t *a2)
{
  v2 = sub_100100178(a2);
  v3 = (sub_100100E90((v2 + 32)) + 24);

  return sub_100102810(v3);
}

void sub_1003344F8(uint64_t *result)
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
      v3 = sub_100334758((*result + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_100100178((*result + 16));
      sub_10033479C(v4, &v14, (result[2] + 8));
      v5 = sub_100100178((*result + 16));
      v6 = result[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 288);
      }

      else
      {
        ++*(v6 + 292);
      }

      v7 = sub_100100178((*result + 16));
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
        v13 = sub_100334758((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_1002AA390(result, &v14, result[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_10033471C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100334758(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_10033479C(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_100100E90(result + 4); ; i += 6)
    {
      result = sub_100100E90(v3);
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

void sub_10033489C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void *sub_1003348C0(void *a1)
{
  if (*(*a1 + 292) > *(*a1 + 288))
  {
    sub_100334904(a1[1], a1[2]);
  }

  return a1;
}

void sub_100334904(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_100100000(a1);
  if (sub_100101E74(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_100100000(a1);
    v8 = *(sub_100101E74(v7) + 8);
    sub_100100384(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

uint64_t sub_100334AA4(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 296), v4);
    (*(**(&v5 + 1) + 32))(*(&v5 + 1));
    sub_10004A6B0(v4);
  }

  sub_10004B4D0((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_100334B7C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100334B9C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_100334BE0(uint64_t *a1, uint64_t a2)
{
  v24 = a2;
  v23 = 0uLL;
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
  v27 = 0u;
  v28 = 0u;
  v3 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v27, v3);
  v4 = a1[1];
  if (v4)
  {
    if (atomic_load_explicit((v4 + 8), memory_order_acquire) == 1)
    {
      sub_100334E58(a1, &v27, 0, 1);
    }

    v5 = *a1;
    v6 = a1[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v6 = 0;
    v5 = *a1;
  }

  v7 = v23;
  *&v23 = v5;
  *(&v23 + 1) = v6;
  v26[0] = v7;
  sub_10004A724(v26 + 1);
  sub_10004A704(*(&v38 + 1));
  sub_10004A6B0(&v27);
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
  v27 = 0u;
  v42 = 0;
  v43 = 10;
  v44 = &v27 + 8;
  v45 = 0;
  v47 = 0;
  v48 = 0;
  v46 = &v24;
  v8 = sub_100334EF0(&v23);
  v22[0] = &v27;
  v22[1] = a1;
  v22[2] = sub_100335140(v8);
  v9 = sub_100334EF0(&v23);
  v10 = sub_10004AA88((v9 + 16));
  v11 = sub_100334EF0(&v23);
  v12 = *(sub_100335140(v11) + 8);
  v13 = sub_100334EF0(&v23);
  *&v20 = v12;
  *(&v20 + 1) = sub_100335140(v13);
  *&v21 = &v27;
  *(&v21 + 1) = *(&v20 + 1);
  sub_100335390(&v20);
  v14 = sub_100334EF0(&v23);
  v15 = sub_100335140(v14);
  v16 = sub_100334EF0(&v23);
  *&v18 = v15;
  *(&v18 + 1) = sub_100335140(v16);
  *&v19 = &v27;
  *(&v19 + 1) = *(&v18 + 1);
  sub_100335390(&v18);
  v26[0] = v20;
  v26[1] = v21;
  v25[0] = v18;
  v25[1] = v19;
  sub_100335184(v10, v26, v25);
  sub_100335758(v22);
  sub_100336010(&v27);
  return sub_10004A724(&v23 + 1);
}

void sub_100334E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_1000FFEDC(va);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

uint64_t *sub_100334E58(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v5 = a4;
  v6 = a3;
  v9 = sub_100334EF0(a1);
  v10 = sub_100335140(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_100334EF0(a1);
    v11 = *(sub_100335140(v12) + 8);
  }

  v14 = v11;
  return sub_100334F34(a1, a2, v6, &v14, v5);
}

uint64_t sub_100334EF0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_100334F34(uint64_t *a1, void *a2, int a3, uint64_t **a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_100334EF0(a1);
  result = sub_100335140(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_10033504C(v10 + 2);
        sub_100335090(v15, a2);
        v10 = v22;
      }

      if (*(sub_10033504C(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_100334EF0(a1);
        v18 = sub_100335140(v17);
        v19 = sub_10033504C(v22 + 2);
        v16 = sub_100100CE8(v18, (v19 + 64), &v22);
      }

      v22 = v16;
      v20 = sub_100334EF0(a1);
      result = sub_100335140(v20);
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

uint64_t sub_10033504C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_100335090(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_1003350FC(result);
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

uint64_t sub_1003350FC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t sub_100335140(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100335184(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_10033520C(a2);
    *a2 = *(*a2 + 8);
    sub_100335390(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_10033520C(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_1003352AC((v2 + 272), (*a1 + 16));
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

uint64_t sub_1003352AC(uint64_t **a1, uint64_t *a2)
{
  v2 = sub_10033504C(a2);
  v3 = (sub_1003350FC((v2 + 32)) + 24);

  return sub_1003352F8(v3);
}

uint64_t sub_1003352F8(void *a1)
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

void sub_100335390(uint64_t *result)
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
      v3 = sub_1003355F0((*result + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_10033504C((*result + 16));
      sub_100335634(v4, &v14, (result[2] + 8));
      v5 = sub_10033504C((*result + 16));
      v6 = result[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 280);
      }

      else
      {
        ++*(v6 + 284);
      }

      v7 = sub_10033504C((*result + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_1000821A0(result, &v14, *result);
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
        v13 = sub_1003355F0((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_1000821A0(result, &v14, result[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_1003355B4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003355F0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_100335634(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_1003350FC(result + 4); ; i += 6)
    {
      result = sub_1003350FC(v3);
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

void sub_100335734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void *sub_100335758(void *a1)
{
  if (*(*a1 + 284) > *(*a1 + 280))
  {
    sub_10033579C(a1[1], a1[2]);
  }

  return a1;
}

void sub_10033579C(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_100334EF0(a1);
  if (sub_100335140(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_100334EF0(a1);
    v8 = *(sub_100335140(v7) + 8);
    sub_100334F34(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

void sub_10033593C(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_1003359E0(&v2, a2);
}

uint64_t sub_10033599C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1003359E0(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100335A4C(&v2, a2);
}

void sub_100335ABC(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_100335AFC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 24));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_100335C18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100335DA0(a1, a2);
  sub_100335E0C((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

uint64_t *sub_100335DA0(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    sub_1000FB140(a1, (v2 + 16));
  }

  return a1;
}

uint64_t sub_100335E0C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_100335E74(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100335EE0(&v2, a2);
}

void sub_100335F50(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_100335F90(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t sub_100336010(uint64_t a1)
{
  v2 = *(a1 + 288);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 288), v4);
    (*(**(&v5 + 1) + 32))(*(&v5 + 1));
    sub_10004A6B0(v4);
  }

  sub_10004B4D0((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_1003360E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100336108(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_10033614C(uint64_t *a1, int a2, int a3)
{
  v25 = a3;
  v26 = a2;
  v24 = 0uLL;
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
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v29, v4);
  v5 = a1[1];
  if (v5)
  {
    if (atomic_load_explicit((v5 + 8), memory_order_acquire) == 1)
    {
      sub_1003363C8(a1, &v29, 0, 1);
    }

    v6 = *a1;
    v7 = a1[1];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v7 = 0;
    v6 = *a1;
  }

  v8 = v24;
  *&v24 = v6;
  *(&v24 + 1) = v7;
  v28[0] = v8;
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
  v49 = &v25;
  v50 = 0;
  v51 = 0;
  v9 = sub_100336460(&v24);
  v23[0] = &v29;
  v23[1] = a1;
  v23[2] = sub_1003366B0(v9);
  v10 = sub_100336460(&v24);
  v11 = sub_10004AA88((v10 + 16));
  v12 = sub_100336460(&v24);
  v13 = *(sub_1003366B0(v12) + 8);
  v14 = sub_100336460(&v24);
  *&v21 = v13;
  *(&v21 + 1) = sub_1003366B0(v14);
  *&v22 = &v29;
  *(&v22 + 1) = *(&v21 + 1);
  sub_100336904(&v21);
  v15 = sub_100336460(&v24);
  v16 = sub_1003366B0(v15);
  v17 = sub_100336460(&v24);
  *&v19 = v16;
  *(&v19 + 1) = sub_1003366B0(v17);
  *&v20 = &v29;
  *(&v20 + 1) = *(&v19 + 1);
  sub_100336904(&v19);
  v28[0] = v21;
  v28[1] = v22;
  v27[0] = v19;
  v27[1] = v20;
  sub_1003366F4(v11, v28, v27);
  sub_100336CCC(v23);
  sub_100337584(&v29);
  return sub_10004A724(&v24 + 1);
}

void sub_100336374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_1000FFEDC(va);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003363C8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v5 = a4;
  v6 = a3;
  v9 = sub_100336460(a1);
  v10 = sub_1003366B0(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_100336460(a1);
    v11 = *(sub_1003366B0(v12) + 8);
  }

  v14 = v11;
  return sub_1003364A4(a1, a2, v6, &v14, v5);
}

uint64_t sub_100336460(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_1003364A4(uint64_t *a1, void *a2, int a3, uint64_t **a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_100336460(a1);
  result = sub_1003366B0(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_1003365BC(v10 + 2);
        sub_100336600(v15, a2);
        v10 = v22;
      }

      if (*(sub_1003365BC(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_100336460(a1);
        v18 = sub_1003366B0(v17);
        v19 = sub_1003365BC(v22 + 2);
        v16 = sub_100100CE8(v18, (v19 + 64), &v22);
      }

      v22 = v16;
      v20 = sub_100336460(a1);
      result = sub_1003366B0(v20);
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

uint64_t sub_1003365BC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_100336600(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_10033666C(result);
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

uint64_t sub_10033666C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t sub_1003366B0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1003366F4(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_10033677C(a2);
    *a2 = *(*a2 + 8);
    sub_100336904(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_10033677C(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_10033681C((v2 + 272), (*a1 + 16));
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

uint64_t sub_10033681C(unsigned int **a1, uint64_t *a2)
{
  v2 = sub_1003365BC(a2);
  v3 = (sub_10033666C((v2 + 32)) + 24);

  return sub_10033686C(v3);
}

uint64_t sub_10033686C(void *a1)
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

void sub_100336904(uint64_t *result)
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
      v3 = sub_100336B64((*result + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_1003365BC((*result + 16));
      sub_100336BA8(v4, &v14, (result[2] + 8));
      v5 = sub_1003365BC((*result + 16));
      v6 = result[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 288);
      }

      else
      {
        ++*(v6 + 292);
      }

      v7 = sub_1003365BC((*result + 16));
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
        v13 = sub_100336B64((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_1002AA390(result, &v14, result[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_100336B28(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100336B64(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_100336BA8(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_10033666C(result + 4); ; i += 6)
    {
      result = sub_10033666C(v3);
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

void sub_100336CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void *sub_100336CCC(void *a1)
{
  if (*(*a1 + 292) > *(*a1 + 288))
  {
    sub_100336D10(a1[1], a1[2]);
  }

  return a1;
}

void sub_100336D10(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_100336460(a1);
  if (sub_1003366B0(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_100336460(a1);
    v8 = *(sub_1003366B0(v7) + 8);
    sub_1003364A4(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

void sub_100336EB0(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_100336F54(&v2, a2);
}

uint64_t sub_100336F10(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100336F54(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100336FC0(&v2, a2);
}

void sub_100337030(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_100337070(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 24));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_10033718C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100337314(a1, a2);
  sub_100337380((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

uint64_t *sub_100337314(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    sub_1000FB140(a1, (v2 + 16));
  }

  return a1;
}

uint64_t sub_100337380(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_1003373E8(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100337454(&v2, a2);
}

void sub_1003374C4(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_100337504(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t sub_100337584(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 296), v4);
    (*(**(&v5 + 1) + 32))(*(&v5 + 1));
    sub_10004A6B0(v4);
  }

  sub_10004B4D0((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_10033765C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10033767C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void *sub_10033770C(void *a1)
{
  *a1 = off_101EA5640;
  v2 = (a1 + 1);
  ctu::OsLogContext::OsLogContext(&v4, kCtLoggingSystemName, "pdp");
  ctu::OsLogLogger::OsLogLogger(v5, &v4);
  ctu::OsLogLogger::OsLogLogger(v2, v5);
  ctu::OsLogLogger::~OsLogLogger(v5);
  ctu::OsLogContext::~OsLogContext(&v4);
  *a1 = off_101E43348;
  a1[3] = 0;
  a1[2] = a1 + 3;
  a1[7] = 0;
  a1[6] = 0;
  a1[4] = 0;
  a1[5] = a1 + 6;
  return a1;
}

void sub_1003377D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void sub_100337808(uint64_t a1)
{
  *a1 = off_101E43348;
  sub_1000686E8(a1 + 40, *(a1 + 48));
  sub_1000686E8(a1 + 16, *(a1 + 24));
  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  TMKXPCServer.shutdown()();
}

void sub_10033787C(uint64_t a1)
{
  sub_100337808(a1);

  operator delete();
}

void sub_1003378B4(uint64_t a1, unsigned int a2, char a3)
{
  if (a3)
  {
    v3 = *(a1 + 24);
    if (!v3)
    {
      goto LABEL_10;
    }

    v4 = a1 + 24;
    do
    {
      v5 = *(v3 + 32);
      v6 = v5 >= a2;
      v7 = v5 < a2;
      if (v6)
      {
        v4 = v3;
      }

      v3 = *(v3 + 8 * v7);
    }

    while (v3);
    if (v4 == a1 + 24 || *(v4 + 32) > a2)
    {
LABEL_10:
      v8[0] = 0;
      v8[1] = 0;
      sub_100068240();
    }
  }

  else
  {
    LODWORD(v8[0]) = a2;
    sub_100337E64(a1 + 16, v8);
  }
}

void sub_100337A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100337A34(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100337A6C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_100337AA8(void *a1)
{
  *a1 = off_101E43438;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_100337AF4(void *a1)
{
  *a1 = off_101E43438;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

void *sub_100337BD4(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101E43438;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_100337C14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_100337C24(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100337C70(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 79) < 0)
    {
      operator delete(__p[7]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_100337DD8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100337C70(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100337DF4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  if (*(a2 + 47) < 0)
  {
    sub_100005F2C((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
  }

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t sub_100337E64(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_100337ED4(a1, v4);
  return 1;
}

uint64_t *sub_100337ED4(uint64_t **a1, uint64_t a2)
{
  v3 = sub_1000194D8(a1, a2);
  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  operator delete(a2);
  return v3;
}

uint64_t sub_100337F18(uint64_t a1, void *a2, uint64_t a3, NSObject **a4, uint64_t a5)
{
  v7 = a3;
  *a1 = off_101E65E90;
  v10 = kCtLoggingSystemName;
  v11 = sub_100338044(a3);
  ctu::OsLogContext::OsLogContext(&v14, v10, v11);
  sub_100338068((a1 + 8), a4, &v14);
  ctu::OsLogContext::~OsLogContext(&v14);
  *a1 = off_101E434C8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v12 = a2[1];
  *(a1 + 64) = *a2;
  *(a1 + 72) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = v7;
  *(a1 + 88) = a5;
  *(a1 + 96) = v11;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 130) = 0u;
  return a1;
}

void sub_100338020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

const char *sub_100338044(unsigned int a1)
{
  if (a1 > 9)
  {
    return "DATA.Collocation:N:";
  }

  else
  {
    return off_101E437D0[a1];
  }
}

void *sub_100338068(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_1003380D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

void sub_1003380F4(uint64_t a1)
{
  *a1 = off_101E434C8;
  v2 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v5 = (a1 + 152);
  sub_1000087B4(&v5);
  v3 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  TMKXPCServer.shutdown()();
}

uint64_t sub_1003381D4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "init";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: init", &v5, 0xCu);
  }

  result = *(a1 + 104);
  *(a1 + 104) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v4 = 120000;
  if (!*(a1 + 80))
  {
    v4 = 300000;
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = v4;
  return result;
}

void sub_1003389C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42)
{
  if (a23)
  {
    sub_100004A34(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_100338B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100338EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, char a13)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_100338FC8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 88);
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v3 + 24))(v3, a2, &v5);
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_10033903C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100339054(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = 0;
  v7 = 0;
  sub_100338F40();
}

void sub_100339290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003392DC(uint64_t a1, const char *a2, uint64_t a3, const char *a4, uint64_t a5, int a6, int a7, const char *a8, int64_t value, int64_t a10, int a11, BOOL a12, int64_t a13, uint64_t a14, uint64_t a15, int a16)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
  v24 = ServiceMap;
  if (v25 < 0)
  {
    v26 = (v25 & 0x7FFFFFFFFFFFFFFFLL);
    v27 = 5381;
    do
    {
      v25 = v27;
      v28 = *v26++;
      v27 = (33 * v27) ^ v28;
    }

    while (v28);
  }

  std::mutex::lock(ServiceMap);
  *&string = v25;
  v29 = sub_100009510(&v24[1].__m_.__sig, &string);
  v30 = a2;
  if (!v29)
  {
    v32 = 0;
    goto LABEL_10;
  }

  v31 = v29[4];
  if (!v31)
  {
    v32 = v29[3];
LABEL_10:
    std::mutex::unlock(v24);
    v31 = 0;
    v33 = 1;
    if (!v32)
    {
      goto LABEL_183;
    }

LABEL_11:
    v83 = v33;
    v151 = 0;
    v34 = xpc_dictionary_create(0, 0, 0);
    v35 = v34;
    if (v34)
    {
      v151 = v34;
    }

    else
    {
      v35 = xpc_null_create();
      v151 = v35;
      if (!v35)
      {
        v36 = xpc_null_create();
        v35 = 0;
        goto LABEL_18;
      }
    }

    if (xpc_get_type(v35) == &_xpc_type_dictionary)
    {
      xpc_retain(v35);
      goto LABEL_19;
    }

    v36 = xpc_null_create();
LABEL_18:
    v151 = v36;
LABEL_19:
    xpc_release(v35);
    if (v30[23] < 0)
    {
      v30 = *v30;
    }

    v149 = xpc_string_create(v30);
    if (!v149)
    {
      v149 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "activateReason";
    sub_10000F688(&string, &v149, &v150);
    xpc_release(v150);
    v150 = 0;
    xpc_release(v149);
    v149 = 0;
    object = xpc_uint64_create(a3);
    if (!object)
    {
      object = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "activatingTime";
    sub_10000F688(&string, &object, &v148);
    xpc_release(v148);
    v148 = 0;
    xpc_release(object);
    object = 0;
    v37 = a4;
    if (a4[23] < 0)
    {
      v37 = *a4;
    }

    v145 = xpc_string_create(v37);
    if (!v145)
    {
      v145 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "apn";
    sub_10000F688(&string, &v145, &v146);
    xpc_release(v146);
    v146 = 0;
    xpc_release(v145);
    v145 = 0;
    v143 = xpc_uint64_create(a5);
    if (!v143)
    {
      v143 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "connectionMasks";
    sub_10000F688(&string, &v143, &v144);
    xpc_release(v144);
    v144 = 0;
    xpc_release(v143);
    v143 = 0;
    v141 = xpc_int64_create(a6);
    if (!v141)
    {
      v141 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "contextId";
    sub_10000F688(&string, &v141, &v142);
    xpc_release(v142);
    v142 = 0;
    xpc_release(v141);
    v141 = 0;
    v139 = xpc_int64_create(a7);
    if (!v139)
    {
      v139 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "contextType";
    sub_10000F688(&string, &v139, &v140);
    xpc_release(v140);
    v140 = 0;
    xpc_release(v139);
    v139 = 0;
    if (a8[23] < 0)
    {
      a8 = *a8;
    }

    v137 = xpc_string_create(a8);
    if (!v137)
    {
      v137 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "csiError";
    sub_10000F688(&string, &v137, &v138);
    xpc_release(v138);
    v138 = 0;
    xpc_release(v137);
    v137 = 0;
    v135 = xpc_int64_create(value);
    if (!v135)
    {
      v135 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "ipFamily";
    sub_10000F688(&string, &v135, &v136);
    xpc_release(v136);
    v136 = 0;
    xpc_release(v135);
    v135 = 0;
    v133 = xpc_int64_create(HIDWORD(value));
    if (!v133)
    {
      v133 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "rat";
    sub_10000F688(&string, &v133, &v134);
    xpc_release(v134);
    v134 = 0;
    xpc_release(v133);
    v133 = 0;
    v131 = xpc_int64_create(a10);
    if (!v131)
    {
      v131 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "requestedIpFamily";
    sub_10000F688(&string, &v131, &v132);
    xpc_release(v132);
    v132 = 0;
    xpc_release(v131);
    v131 = 0;
    v129 = xpc_int64_create(SHIDWORD(a10));
    if (!v129)
    {
      v129 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "result";
    sub_10000F688(&string, &v129, &v130);
    xpc_release(v130);
    v130 = 0;
    xpc_release(v129);
    v129 = 0;
    v38 = subscriber::simSlotAsInstance();
    v127 = xpc_int64_create(v38);
    if (!v127)
    {
      v127 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "subs_id";
    sub_10000F688(&string, &v127, &v128);
    xpc_release(v128);
    v128 = 0;
    xpc_release(v127);
    v127 = 0;
    v125 = xpc_BOOL_create(a12);
    if (!v125)
    {
      v125 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "success";
    sub_10000F688(&string, &v125, &v126);
    xpc_release(v126);
    v126 = 0;
    xpc_release(v125);
    v125 = 0;
    v123 = xpc_int64_create(a13);
    if (!v123)
    {
      v123 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "transportType";
    sub_10000F688(&string, &v123, &v124);
    xpc_release(v124);
    v124 = 0;
    xpc_release(v123);
    v39 = a14;
    v123 = 0;
    if (*(a14 + 23) < 0)
    {
      v39 = *a14;
    }

    v121 = xpc_string_create(v39);
    if (!v121)
    {
      v121 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "wdsReason";
    sub_10000F688(&string, &v121, &v122);
    xpc_release(v122);
    v122 = 0;
    xpc_release(v121);
    v40 = a15;
    v121 = 0;
    if (*(a15 + 23) < 0)
    {
      v40 = *a15;
    }

    v119 = xpc_string_create(v40);
    if (!v119)
    {
      v119 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "wdsReasonType";
    sub_10000F688(&string, &v119, &v120);
    xpc_release(v120);
    v120 = 0;
    xpc_release(v119);
    v119 = 0;
    v117 = xpc_int64_create(a16);
    if (!v117)
    {
      v117 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "epdgIpFamily";
    sub_10000F688(&string, &v117, &v118);
    xpc_release(v118);
    v118 = 0;
    xpc_release(v117);
    v117 = 0;
    v41 = isSliceMask(a5);
    v115 = xpc_BOOL_create(v41);
    if (!v115)
    {
      v115 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "nwslice";
    sub_10000F688(&string, &v115, &v116);
    xpc_release(v116);
    v116 = 0;
    xpc_release(v115);
    v115 = 0;
    if (!v41)
    {
      goto LABEL_178;
    }

    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    string = 0u;
    v106 = 0u;
    v42 = Registry::getServiceMap(*(a1 + 64));
    v43 = v42;
    if (v44 < 0)
    {
      v45 = (v44 & 0x7FFFFFFFFFFFFFFFLL);
      v46 = 5381;
      do
      {
        v44 = v46;
        v47 = *v45++;
        v46 = (33 * v46) ^ v47;
      }

      while (v47);
    }

    std::mutex::lock(v42);
    *buf = v44;
    v48 = sub_100009510(&v43[1].__m_.__sig, buf);
    if (v48)
    {
      v49 = v48[3];
      v50 = v48[4];
      if (v50)
      {
        atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v43);
        atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
        v51 = v50;
        sub_100004A34(v50);
        v52 = 0;
        if (!v49)
        {
          goto LABEL_80;
        }

        goto LABEL_75;
      }
    }

    else
    {
      v49 = 0;
    }

    std::mutex::unlock(v43);
    v51 = 0;
    v52 = 1;
    if (!v49)
    {
      goto LABEL_80;
    }

LABEL_75:
    v53 = (*(*v49 + 904))(v49);
    if (v53)
    {
      v54 = 28;
      do
      {
        if ((ConnectionTypeToMask() & a5) != 0)
        {
          v55 = (*(*v53 + 80))(v53, a11, v54);
          (*(*v53 + 136))(v53, a11, v55, &string);
        }

        v54 = (v54 + 1);
      }

      while (v54 != 36);
    }

LABEL_80:
    if (SBYTE7(v106) < 0)
    {
      if (*(&string + 1))
      {
        v56 = string;
LABEL_85:
        v103 = xpc_string_create(v56);
        if (!v103)
        {
          v103 = xpc_null_create();
        }

        *buf = &v151;
        *&buf[8] = "bundleid";
        sub_10000F688(buf, &v103, &v104);
        xpc_release(v104);
        v104 = 0;
        xpc_release(v103);
        v103 = 0;
        if (DWORD2(v106))
        {
          v101 = xpc_int64_create(DWORD2(v106));
          if (!v101)
          {
            v101 = xpc_null_create();
          }

          *buf = &v151;
          *&buf[8] = "trafficClass";
          sub_10000F688(buf, &v101, &v102);
          xpc_release(v102);
          v102 = 0;
          xpc_release(v101);
          v101 = 0;
        }

        if (SBYTE7(v108) < 0)
        {
          if (!*(&v107 + 1))
          {
            goto LABEL_102;
          }

          v57 = v107;
        }

        else
        {
          v57 = &v107;
          if (!BYTE7(v108))
          {
            goto LABEL_102;
          }
        }

        v99 = xpc_string_create(v57);
        if (!v99)
        {
          v99 = xpc_null_create();
        }

        *buf = &v151;
        *&buf[8] = "dnn";
        sub_10000F688(buf, &v99, &v100);
        xpc_release(v100);
        v100 = 0;
        xpc_release(v99);
        v99 = 0;
LABEL_102:
        if (SHIBYTE(v109) < 0)
        {
          if (!v109)
          {
            goto LABEL_110;
          }

          v61 = *(&v108 + 1);
        }

        else
        {
          v61 = &v108 + 8;
          if (!HIBYTE(v109))
          {
            goto LABEL_110;
          }
        }

        v97 = xpc_string_create(v61);
        if (!v97)
        {
          v97 = xpc_null_create();
        }

        *buf = &v151;
        *&buf[8] = "genres";
        sub_10000F688(buf, &v97, &v98);
        xpc_release(v98);
        v98 = 0;
        xpc_release(v97);
        v97 = 0;
LABEL_110:
        if (SBYTE7(v111) < 0)
        {
          if (!*(&v110 + 1))
          {
            goto LABEL_118;
          }

          v62 = v110;
        }

        else
        {
          v62 = &v110;
          if (!BYTE7(v111))
          {
            goto LABEL_118;
          }
        }

        v95 = xpc_string_create(v62);
        if (!v95)
        {
          v95 = xpc_null_create();
        }

        *buf = &v151;
        *&buf[8] = "sliceTrafficInfo";
        sub_10000F688(buf, &v95, &v96);
        xpc_release(v96);
        v96 = 0;
        xpc_release(v95);
        v95 = 0;
LABEL_118:
        v93 = xpc_BOOL_create(SBYTE8(v111));
        if (!v93)
        {
          v93 = xpc_null_create();
        }

        *buf = &v151;
        *&buf[8] = "is_vpn_active";
        sub_10000F688(buf, &v93, &v94);
        xpc_release(v94);
        v94 = 0;
        xpc_release(v93);
        v93 = 0;
        v91 = xpc_BOOL_create(SBYTE9(v111));
        if (!v91)
        {
          v91 = xpc_null_create();
        }

        *buf = &v151;
        *&buf[8] = "is_app_using_ids";
        sub_10000F688(buf, &v91, &v92);
        xpc_release(v92);
        v92 = 0;
        xpc_release(v91);
        v91 = 0;
        if (SBYTE7(v113) < 0)
        {
          if (!*(&v112 + 1))
          {
            goto LABEL_130;
          }

          v63 = v112;
        }

        else
        {
          v63 = &v112;
          if (!BYTE7(v113))
          {
            goto LABEL_130;
          }
        }

        v89 = xpc_string_create(v63);
        if (!v89)
        {
          v89 = xpc_null_create();
        }

        *buf = &v151;
        *&buf[8] = "slicing_type";
        sub_10000F688(buf, &v89, &v90);
        xpc_release(v90);
        v90 = 0;
        xpc_release(v89);
        v89 = 0;
LABEL_130:
        v64 = &v113 + 8;
        if (SHIBYTE(v114) < 0)
        {
          if (!v114)
          {
LABEL_138:
            if (!a7)
            {
              v86[11] = 0;
              v86[12] = 0;
              sub_100338A90(a1, 0, a11);
            }

            v65 = a4;
            v66 = *(a1 + 40);
            v67 = os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT);
            v60 = 0;
            if (v67)
            {
              v79 = v52;
              v80 = v51;
              v82 = v32;
              v85 = v31;
              v68 = asStringBool(1);
              if ((SBYTE7(v106) & 0x80u) == 0)
              {
                p_string = &string;
              }

              else
              {
                p_string = string;
              }

              if ((SBYTE7(v108) & 0x80u) == 0)
              {
                v70 = &v107;
              }

              else
              {
                v70 = v107;
              }

              if (v65[23] < 0)
              {
                v71 = *v65;
              }

              else
              {
                v71 = v65;
              }

              v72 = DWORD2(v106);
              if (v109 >= 0)
              {
                v73 = &v108 + 8;
              }

              else
              {
                v73 = *(&v108 + 1);
              }

              if ((SBYTE7(v111) & 0x80u) == 0)
              {
                v74 = &v110;
              }

              else
              {
                v74 = v110;
              }

              v75 = asStringBool(SBYTE8(v111));
              v76 = asStringBool(SBYTE9(v111));
              v77 = &v112;
              if (SBYTE7(v113) < 0)
              {
                v77 = v112;
              }

              v78 = &v113 + 8;
              if (v114 < 0)
              {
                v78 = *(&v113 + 1);
              }

              *buf = 136318210;
              *&buf[4] = v68;
              *&buf[12] = 2080;
              *&buf[14] = p_string;
              v153 = 1024;
              v154 = v72;
              v155 = 2080;
              v156 = v70;
              v157 = 2080;
              v158 = v71;
              v159 = 2080;
              v160 = v73;
              v161 = 2080;
              v162 = v74;
              v163 = 2080;
              v164 = v75;
              v165 = 2080;
              v166 = v76;
              v167 = 2080;
              v168 = v77;
              v169 = 2080;
              v170 = v78;
              v171 = 1024;
              v172 = 255;
              v173 = 1024;
              v174 = 0xFFFFFF;
              _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "#I submitCoreAnalyticsCCPDPContextActEndMetric for 5G Slice: nwslice=%s bundleid=%s tc=%u dnn=%s apn=%s genres=%s sliceTrafficInfo=%s isVpnActive=%s isAppUsingIds=%s slicingType=%s managedSliceType=%s snssai_sst=%u snssai_sd=%u", buf, 0x78u);
              v60 = 0;
              v31 = v85;
              v32 = v82;
              v51 = v80;
              v52 = v79;
            }

            goto LABEL_162;
          }

          v64 = *(&v113 + 1);
        }

        else if (!HIBYTE(v114))
        {
          goto LABEL_138;
        }

        v87 = xpc_string_create(v64);
        if (!v87)
        {
          v87 = xpc_null_create();
        }

        *buf = &v151;
        *&buf[8] = "managed_slice_type";
        sub_10000F688(buf, &v87, &v88);
        xpc_release(v88);
        v88 = 0;
        xpc_release(v87);
        v87 = 0;
        goto LABEL_138;
      }
    }

    else if (BYTE7(v106))
    {
      v56 = &string;
      goto LABEL_85;
    }

    v58 = v31;
    v59 = *(a1 + 40);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I submitCoreAnalyticsCCPDPContextActEndMetric for 5G Slice: cancel metrics for pending slice activation", buf, 2u);
    }

    v60 = 1;
    v31 = v58;
LABEL_162:
    if ((v52 & 1) == 0)
    {
      sub_100004A34(v51);
    }

    if (SHIBYTE(v114) < 0)
    {
      operator delete(*(&v113 + 1));
    }

    if (SBYTE7(v113) < 0)
    {
      operator delete(v112);
    }

    if (SBYTE7(v111) < 0)
    {
      operator delete(v110);
    }

    if (SHIBYTE(v109) < 0)
    {
      operator delete(*(&v108 + 1));
    }

    if (SBYTE7(v108) < 0)
    {
      operator delete(v107);
    }

    if (SBYTE7(v106) < 0)
    {
      operator delete(string);
      if (v60)
      {
        goto LABEL_176;
      }
    }

    else if (v60)
    {
LABEL_176:
      xpc_release(v151);
LABEL_182:
      v33 = v83;
      goto LABEL_183;
    }

LABEL_178:
    v86[0] = v151;
    if (v151)
    {
      xpc_retain(v151);
    }

    else
    {
      v86[0] = xpc_null_create();
    }

    (*(*v32 + 16))(v32, "metricCCPDPContextActEnd", v86);
    xpc_release(v86[0]);
    v86[0] = 0;
    xpc_release(v151);
    goto LABEL_182;
  }

  v81 = v29[3];
  atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v24);
  atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  v30 = a2;
  v32 = v81;
  sub_100004A34(v31);
  v33 = 0;
  if (v81)
  {
    goto LABEL_11;
  }

LABEL_183:
  if ((v33 & 1) == 0)
  {
    sub_100004A34(v31);
  }
}

void sub_10033A504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, xpc_object_t object, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_10033A7F0(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = 0;
  v8 = 0;
  sub_100338F40();
}

void sub_10033C5F4(_Unwind_Exception *a1)
{
  v3 = *(v1 - 216);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10033CB2C(uint64_t a1, int a2)
{
  v2 = *(a1 + 145);
  if (v2 != a2)
  {
    v3 = a2;
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = "setAssertionGone";
      v8 = 2080;
      v9 = asStringBool(v2);
      v10 = 2080;
      v11 = asStringBool(v3);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: from %s to %s", &v6, 0x20u);
    }

    *(a1 + 145) = v3;
  }
}

void sub_10033CC14(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, unsigned int a5, BOOL a6, unsigned int a7, BOOL a8, BOOL a9, uint64_t a10, uint64_t a11, int64_t value, uint64_t a13, int64_t a14)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
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
  v75 = v22;
  v26 = sub_100009510(&v21[1].__m_.__sig, &v75);
  if (!v26)
  {
    v36 = 0;
    goto LABEL_10;
  }

  v27 = a4;
  v28 = a3;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v32 = a8;
  v34 = v26[3];
  v33 = v26[4];
  if (!v33)
  {
    a8 = v32;
    a7 = v31;
    v36 = v26[3];
    a6 = v30;
    a5 = v29;
    a3 = v28;
    a4 = v27;
LABEL_10:
    std::mutex::unlock(v21);
    v35 = 0;
    v37 = 1;
    if (!v36)
    {
      goto LABEL_62;
    }

    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v21);
  atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  v35 = v33;
  sub_100004A34(v33);
  a8 = v32;
  a7 = v31;
  v36 = v34;
  a6 = v30;
  a5 = v29;
  a3 = v28;
  a4 = v27;
  v37 = 0;
  if (!v36)
  {
    goto LABEL_62;
  }

LABEL_11:
  v79[0] = 0;
  v38 = xpc_dictionary_create(0, 0, 0);
  v39 = v38;
  if (v38)
  {
    v79[0] = v38;
  }

  else
  {
    v39 = xpc_null_create();
    v79[0] = v39;
    if (!v39)
    {
      v40 = xpc_null_create();
      v39 = 0;
      goto LABEL_18;
    }
  }

  if (xpc_get_type(v39) != &_xpc_type_dictionary)
  {
    v40 = xpc_null_create();
LABEL_18:
    v79[0] = v40;
    goto LABEL_19;
  }

  xpc_retain(v39);
LABEL_19:
  xpc_release(v39);
  v41 = subscriber::simSlotAsInstance();
  v77 = xpc_int64_create(v41);
  if (!v77)
  {
    v77 = xpc_null_create();
  }

  v75 = v79;
  v76 = "subs_id";
  sub_10000F688(&v75, &v77, &v78);
  xpc_release(v78);
  v78 = 0;
  xpc_release(v77);
  v77 = 0;
  v73 = xpc_int64_create(a3);
  if (!v73)
  {
    v73 = xpc_null_create();
  }

  v75 = v79;
  v76 = "contextId";
  sub_10000F688(&v75, &v73, &v74);
  xpc_release(v74);
  v74 = 0;
  xpc_release(v73);
  v73 = 0;
  if (*(a4 + 23) >= 0)
  {
    v42 = a4;
  }

  else
  {
    v42 = *a4;
  }

  v71 = xpc_string_create(v42);
  if (!v71)
  {
    v71 = xpc_null_create();
  }

  v75 = v79;
  v76 = "reason";
  sub_10000F688(&v75, &v71, &v72);
  xpc_release(v72);
  v72 = 0;
  xpc_release(v71);
  v71 = 0;
  v69 = xpc_int64_create(a5);
  if (!v69)
  {
    v69 = xpc_null_create();
  }

  v75 = v79;
  v76 = "toContextType";
  sub_10000F688(&v75, &v69, &v70);
  xpc_release(v70);
  v70 = 0;
  xpc_release(v69);
  v69 = 0;
  v67 = xpc_BOOL_create(a6);
  if (!v67)
  {
    v67 = xpc_null_create();
  }

  v75 = v79;
  v76 = "success";
  sub_10000F688(&v75, &v67, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v67);
  v67 = 0;
  v65 = xpc_int64_create(a7);
  if (!v65)
  {
    v65 = xpc_null_create();
  }

  v75 = v79;
  v76 = "rat";
  sub_10000F688(&v75, &v65, &v66);
  xpc_release(v66);
  v66 = 0;
  xpc_release(v65);
  v65 = 0;
  v63 = xpc_BOOL_create(a8);
  if (!v63)
  {
    v63 = xpc_null_create();
  }

  v75 = v79;
  v76 = "inCall";
  sub_10000F688(&v75, &v63, &v64);
  xpc_release(v64);
  v64 = 0;
  xpc_release(v63);
  v63 = 0;
  if (*(a10 + 23) >= 0)
  {
    v43 = a10;
  }

  else
  {
    v43 = *a10;
  }

  v61 = xpc_string_create(v43);
  if (!v61)
  {
    v61 = xpc_null_create();
  }

  v75 = v79;
  v76 = "wdsReasonType";
  sub_10000F688(&v75, &v61, &v62);
  xpc_release(v62);
  v62 = 0;
  xpc_release(v61);
  v61 = 0;
  if (*(a11 + 23) >= 0)
  {
    v44 = a11;
  }

  else
  {
    v44 = *a11;
  }

  v59 = xpc_string_create(v44);
  if (!v59)
  {
    v59 = xpc_null_create();
  }

  v75 = v79;
  v76 = "wdsReason";
  sub_10000F688(&v75, &v59, &v60);
  xpc_release(v60);
  v60 = 0;
  xpc_release(v59);
  v59 = 0;
  v57 = xpc_int64_create(value);
  if (!v57)
  {
    v57 = xpc_null_create();
  }

  v75 = v79;
  v76 = "iWLanError";
  sub_10000F688(&v75, &v57, &v58);
  xpc_release(v58);
  v58 = 0;
  xpc_release(v57);
  v57 = 0;
  v55 = xpc_int64_create(HIDWORD(value));
  if (!v55)
  {
    v55 = xpc_null_create();
  }

  v75 = v79;
  v76 = "typeMask";
  sub_10000F688(&v75, &v55, &v56);
  xpc_release(v56);
  v56 = 0;
  xpc_release(v55);
  v55 = 0;
  v45 = sub_1007A3C94();
  v53 = xpc_uint64_create(v45 - a13);
  if (!v53)
  {
    v53 = xpc_null_create();
  }

  v75 = v79;
  v76 = "activatingTime";
  sub_10000F688(&v75, &v53, &v54);
  xpc_release(v54);
  v54 = 0;
  xpc_release(v53);
  v53 = 0;
  v51 = xpc_int64_create(a14);
  if (!v51)
  {
    v51 = xpc_null_create();
  }

  v75 = v79;
  v76 = "handoverPreferredMode";
  sub_10000F688(&v75, &v51, &v52);
  xpc_release(v52);
  v52 = 0;
  xpc_release(v51);
  v51 = 0;
  v49 = xpc_BOOL_create(a9);
  if (!v49)
  {
    v49 = xpc_null_create();
  }

  v75 = v79;
  v76 = "anyCallBeingSetup";
  sub_10000F688(&v75, &v49, &v50);
  xpc_release(v50);
  v50 = 0;
  xpc_release(v49);
  v49 = 0;
  v47 = xpc_int64_create(SHIDWORD(a14));
  if (!v47)
  {
    v47 = xpc_null_create();
  }

  v75 = v79;
  v76 = "epdgIpFamily";
  sub_10000F688(&v75, &v47, &v48);
  xpc_release(v48);
  v48 = 0;
  xpc_release(v47);
  v46 = v79[0];
  v47 = 0;
  if (v79[0])
  {
    xpc_retain(v79[0]);
  }

  else
  {
    v46 = xpc_null_create();
  }

  (*(*v36 + 16))(v36, "commCenterPDPContextHandover", &v46);
  xpc_release(v46);
  v46 = 0;
  xpc_release(v79[0]);
LABEL_62:
  if ((v37 & 1) == 0)
  {
    sub_100004A34(v35);
  }
}

void sub_10033D38C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v12 - 96));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10033D490(uint64_t a1, char a2, int a3)
{
  if ((*(**(a1 + 88) + 48))(*(a1 + 88)))
  {
    sub_10033CB2C(a1, 0);
    sub_10033F5A0(a1, 1);
    v5 = *(a1 + 104);
    if (v5)
    {
      v6 = *(a1 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "assertionUpdate";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: removing inactivity timeout due to assertion", buf, 0xCu);
        v5 = *(a1 + 104);
        *(a1 + 104) = 0;
        if (!v5)
        {
          return 0;
        }
      }

      else
      {
        *(a1 + 104) = 0;
      }

      (*(*v5 + 8))(v5);
    }

    return 0;
  }

  v7 = *(a1 + 144);
  sub_10033F5A0(a1, 0);
  v8 = *(a1 + 88);
  if (!v8)
  {
    return 0;
  }

  memset(buf, 0, sizeof(buf));
  (*(*v8 + 16))(buf);
  v10 = *buf;
  v9 = *&buf[8];
  if (*buf == *&buf[8])
  {
    v45 = buf;
    sub_1000212F4(&v45);
    return 0;
  }

  v11 = 0;
  v12 = 0;
  do
  {
    v14 = *v10;
    v13 = v10[1];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(*v14 + 136))(v14, 3))
    {
      if (v7)
      {
        sub_10033CB2C(a1, 1);
      }

      v11 = (v11 + 1);
      if ((a2 & 1) != 0 || *(a1 + 145) == 1 && a3 && (*(*v14 + 160))(v14))
      {
        (*(**(a1 + 88) + 168))(&v45);
        if (v45)
        {
          v15 = *(a1 + 88);
          v16 = (*(*v14 + 56))(v14);
          (*(**(a1 + 88) + 168))(&v43);
          v17 = (*(*v15 + 88))(v15, v16, &v43, 22, "CommCenter");
          if (v44)
          {
            sub_100004A34(v44);
          }
        }

        else
        {
          v17 = 0;
        }

        if (v46)
        {
          sub_100004A34(v46);
        }

        v12 = (v12 + v17);
      }
    }

    if (v13)
    {
      sub_100004A34(v13);
    }

    v10 += 2;
  }

  while (v10 != v9);
  v45 = buf;
  sub_1000212F4(&v45);
  if (v11)
  {
    v18 = *(a1 + 104);
    if (v12 == v11)
    {
      *(a1 + 104) = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }

      return v11;
    }

    else if (!v18)
    {
      LODWORD(v43) = 0;
      v47 = 0;
      v42 = 0;
      (*(*a1 + 248))(a1, &v43, &v47, &v42 + 4, &v42);
      v20 = sub_100341878(a1, *(a1 + 120), 0);
      v21 = sub_100341878(a1, *(a1 + 112), 1u);
      v22 = v21;
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = v20;
      }

      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = 30000;
      }

      v25 = *(a1 + 40);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        *&buf[4] = "assertionUpdate";
        *&buf[12] = 2048;
        *&buf[14] = v20;
        *&buf[22] = 2048;
        v49 = v22;
        v50 = 2048;
        v51 = v24;
        v52 = 1024;
        v53 = v43;
        v54 = 1024;
        v55 = v47;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s: no assertions, scheduling inactivity timeout %llu msecs, checkpoint %llu, interval %llu. Packets: out=%u, in=%u", buf, 0x36u);
      }

      sub_100004AA0(buf, (a1 + 8));
      v27 = *buf;
      v26 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v26);
      }

      Registry::getTimerService(buf, *(a1 + 64));
      v28 = *buf;
      sub_10000501C(__p, "inactivity timeout");
      v29 = *(a1 + 24);
      object = v29;
      if (v29)
      {
        dispatch_retain(v29);
      }

      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1174405120;
      aBlock[2] = sub_10033F688;
      aBlock[3] = &unk_101E43660;
      aBlock[4] = a1;
      aBlock[5] = v27;
      v36 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v37 = v24;
      v38 = _Block_copy(aBlock);
      sub_100E7CA80(v28, __p, 0, 1000 * v24, &object, &v38);
      v30 = v45;
      v45 = 0;
      v31 = *(a1 + 104);
      *(a1 + 104) = v30;
      if (v31)
      {
        (*(*v31 + 8))(v31);
        v32 = v45;
        v45 = 0;
        if (v32)
        {
          (*(*v32 + 8))(v32);
        }
      }

      if (v38)
      {
        _Block_release(v38);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (v41 < 0)
      {
        operator delete(__p[0]);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      v33 = v43;
      *(a1 + 128) = v47;
      *(a1 + 132) = v33;
      if (v36)
      {
        std::__shared_weak_count::__release_weak(v36);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_weak(v26);
      }
    }
  }

  return v12;
}

void sub_10033DB20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *aBlock, dispatch_object_t object, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10033DBF4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 40);
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_10033DD0C(a1, 1, a3, a4);
  }

  v9 = 136315394;
  v10 = "handleDataContextIPOffline";
  v11 = 2080;
  v12 = asString();
  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: %s", &v9, 0x16u);
  if (a2)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a2 & 2) != 0)
  {
    sub_10033DD0C(a1, 2, a3, a4);
  }
}

void sub_10033DD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  sub_100338A90(a1, a3, a4);
}

void sub_10033E420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  *(v49 - 144) = &a49;
  sub_1000212F4((v49 - 144));
  v51 = *(v49 - 152);
  if (v51)
  {
    sub_100004A34(v51);
  }

  _Unwind_Resume(a1);
}

void sub_10033E558(uint64_t a1, double a2, double a3)
{
  if (a2 == 1.79769313e308)
  {
    v3 = 0;
    *(a1 + 120) = 86400000;
    v4 = 86400000;
LABEL_17:
    *(a1 + 112) = v3;
    v6 = v3;
    goto LABEL_18;
  }

  if (a2 <= 0.0)
  {
    if (*(a1 + 80))
    {
      v4 = 120000;
    }

    else
    {
      v4 = 300000;
    }
  }

  else
  {
    v4 = a2;
  }

  if (v4 <= a3 || a3 <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  *(a1 + 112) = v6;
  *(a1 + 120) = v4;
  if (v4 > 0x5265C00)
  {
    *(a1 + 120) = 86400000;
    v4 = 86400000;
  }

  v3 = 86400000;
  if (v6 > 0x5265C00)
  {
    goto LABEL_17;
  }

LABEL_18:
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "updateTimeoutMsec";
    v10 = 2048;
    v11 = v4;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: Inactivity timeout is set to %llu msec with checkpoint %llu msec", &v8, 0x20u);
  }
}

CFDictionaryRef sub_10033E6B0(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x4002000000;
  v23 = sub_10033E9A0;
  v24 = sub_10033E9BC;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x4002000000;
  v15 = sub_10033E9A0;
  v16 = sub_10033E9BC;
  __p = 0;
  v18 = 0;
  v19 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_10033E9D0;
  v11[3] = &unk_101E43600;
  v11[5] = &v12;
  v11[6] = a1;
  v11[4] = &v20;
  values[0] = v11;
  *&block = _NSConcreteStackBlock;
  *(&block + 1) = 0x40000000;
  v30 = sub_100342638;
  v31 = &unk_101E437B0;
  v32 = a1 + 8;
  v33 = values;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    dispatch_sync(v1, &block);
  }

  v9 = 0;
  v10 = 0;
  v3 = (v21 + 5);
  if (*(v21 + 63) < 0)
  {
    v3 = *v3;
  }

  v10 = CFStringCreateWithCString(kCFAllocatorDefault, v3, 0x8000100u);
  *&block = 0;
  sub_100005978(&block);
  v4 = (v13 + 5);
  if (*(v13 + 63) < 0)
  {
    v4 = *v4;
  }

  v5 = CFStringCreateWithCString(kCFAllocatorDefault, v4, 0x8000100u);
  v6 = v9;
  v9 = v5;
  *&block = v6;
  sub_100005978(&block);
  if (v10 && v9)
  {
    block = *off_101E43620;
    values[0] = v10;
    values[1] = v9;
    v7 = CFDictionaryCreate(kCFAllocatorDefault, &block, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  else
  {
    v7 = 0;
  }

  sub_100005978(&v9);
  sub_100005978(&v10);
  _Block_object_dispose(&v12, 8);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&v20, 8);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v25);
  }

  return v7;
}

void sub_10033E944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  sub_100005978(&a10);
  sub_100005978(&a11);
  _Block_object_dispose(&a19, 8);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a30, 8);
  if (a40 < 0)
  {
    operator delete(a35);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10033E9A0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_10033E9BC(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void sub_10033E9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  (*(**(a1 + 88) + 16))(&v16);
  if (a2)
  {
    if (a3)
    {
      v6 = v16;
      v7 = v17;
      if (v17 != v16)
      {
        v9 = *v16;
        v8 = v16[1];
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          v7 = v17;
        }

        if (v6 == v7)
        {
LABEL_13:
          if (!v9)
          {
            v10 = v8;
            if (!v8)
            {
              goto LABEL_27;
            }

            goto LABEL_26;
          }

          v11 = v9;
          v10 = v8;
        }

        else
        {
          while (1)
          {
            v11 = *v6;
            v10 = v6[1];
            if (v10)
            {
              atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if ((*(*v11 + 136))(v11, 1))
            {
              break;
            }

            if (v10)
            {
              sub_100004A34(v10);
            }

            v6 += 2;
            if (v6 == v7)
            {
              goto LABEL_13;
            }
          }

          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v8)
          {
            sub_100004A34(v8);
          }

          if (v10)
          {
            sub_100004A34(v10);
          }
        }

        v12 = *(a1 + 88);
        v13 = (*(*v11 + 56))(v11);
        (*(*v12 + 40))(&v14, v12, v13);
        if (*(a2 + 23) < 0)
        {
          operator delete(*a2);
        }

        *a2 = v14;
        *(a2 + 16) = v15;
        (*(*v11 + 96))(v11, 1);
        CSIPacketAddress::operator std::string();
        if (*(a3 + 23) < 0)
        {
          operator delete(*a3);
        }

        *a3 = v14;
        *(a3 + 16) = v15;
        if (v10)
        {
LABEL_26:
          sub_100004A34(v10);
        }
      }
    }
  }

LABEL_27:
  *&v14 = &v16;
  sub_1000212F4(&v14);
}

void sub_10033EC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  if (v12)
  {
    sub_100004A34(v12);
  }

  a9 = &a12;
  sub_1000212F4(&a9);
  _Unwind_Resume(a1);
}

void sub_10033EC80(uint64_t a1, unint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
  v5 = ServiceMap;
  if (v6 < 0)
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
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
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
  if (!v12)
  {
    v35 = *(a1 + 40);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_64;
    }

    *buf = 136315138;
    *&buf[4] = "inactivityCallBack";
    v36 = "#I %s: no data service, skip InactivityTimer";
    goto LABEL_46;
  }

  LODWORD(v52) = 0;
  v54 = 0;
  v53 = 0;
  (*(*a1 + 248))(a1, &v52, &v54 + 4, &v54, &v53);
  v14 = v52;
  if (__PAIR64__(v52, HIDWORD(v54)) == *(a1 + 128))
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v18 = v13;
    v19 = *(a1 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = "inactivityCallBack";
      *&buf[12] = 2048;
      *&buf[14] = a2 / 0x3E8;
      *&buf[22] = 1024;
      v56 = v14;
      v57 = 1024;
      v58 = HIDWORD(v54);
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s: Checkpoint: %llu sec, Packets: out=%d, in=%d (still active)", buf, 0x22u);
    }

    v20 = v53;
    v21 = v54;
    v22 = *(a1 + 140);
    v16 = v54 - v22;
    if (v54 >= v22 && (v23 = *(a1 + 136), v15 = v53 - v23, v53 >= v23))
    {
      v44 = *(a1 + 40);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "inactivityCallBack";
        *&buf[12] = 1024;
        *&buf[14] = v16;
        *&buf[18] = 1024;
        *&buf[20] = v15;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I %s: uplink bytes: %u, downlink bytes %u", buf, 0x18u);
        v20 = v53;
        v21 = v54;
      }
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    v24 = v52;
    *(a1 + 128) = HIDWORD(v54);
    *(a1 + 132) = v24;
    *(a1 + 136) = v20;
    *(a1 + 140) = v21;
    v17 = 1;
    v13 = v18;
  }

  v25 = sub_100341878(a1, *(a1 + 120), 0);
  if (v25 <= a2)
  {
    v37 = (*(*v12 + 904))(v12);
    v38 = v37;
    if (v37 && (*(*v37 + 40))(v37) && (v39 = (*(*v38 + 56))(v38, *(a1 + 80), v16, v15), (v39 & 0x100) != 0) && (v40 = *(a1 + 40), v17 = v39, os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT)))
    {
      *buf = 136315394;
      *&buf[4] = "inactivityCallBack";
      *&buf[12] = 1024;
      *&buf[14] = v39;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I %s: slice connection retention: %{BOOL}d", buf, 0x12u);
      if (v39)
      {
        goto LABEL_64;
      }
    }

    else if (v17)
    {
      goto LABEL_64;
    }

    v41 = *(a1 + 40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = *(a1 + 80);
      *buf = 136315394;
      *&buf[4] = "inactivityCallBack";
      *&buf[12] = 1024;
      *&buf[14] = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s: Deactivating context %d, because it has gone idle", buf, 0x12u);
    }

    v43 = *(a1 + 104);
    *(a1 + 104) = 0;
    if (v43)
    {
      (*(*v43 + 8))(v43);
    }

    if (((*(*v12 + 888))(v12) & 1) == 0)
    {
      (*(**(a1 + 88) + 80))(*(a1 + 88), 20);
      goto LABEL_64;
    }

    v35 = *(a1 + 40);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_64;
    }

    *buf = 136315138;
    *&buf[4] = "inactivityCallBack";
    v36 = "#I %s: In LoopBack Mode, skip InactivityTimer";
LABEL_46:
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, v36, buf, 0xCu);
    goto LABEL_64;
  }

  v26 = *(a1 + 40);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "inactivityCallBack";
    *&buf[12] = 2048;
    *&buf[14] = v25;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s: skip the first (dirty) interval and set the next at %lu msec ahead", buf, 0x16u);
  }

  v27 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  sub_100004AA0(buf, (a1 + 8));
  v29 = *buf;
  v28 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v28);
  }

  Registry::getTimerService(buf, *(a1 + 64));
  v30 = *buf;
  sub_10000501C(__p, "inactivity timeout");
  v31 = *(a1 + 24);
  object = v31;
  if (v31)
  {
    dispatch_retain(v31);
  }

  v45[0] = _NSConcreteStackBlock;
  v45[1] = 1174405120;
  v45[2] = sub_10033F4E8;
  v45[3] = &unk_101E43630;
  v45[4] = a1;
  v45[5] = v29;
  v46 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v47 = v25;
  aBlock = _Block_copy(v45);
  sub_100E7CA80(v30, __p, 0, 1000 * v25, &object, &aBlock);
  v32 = v52;
  v52 = 0;
  v33 = *(a1 + 104);
  *(a1 + 104) = v32;
  if (v33)
  {
    (*(*v33 + 8))(v33);
    v34 = v52;
    v52 = 0;
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v51 < 0)
  {
    operator delete(__p[0]);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_weak(v46);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
  }

LABEL_64:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_10033F43C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if ((v30 & 1) == 0)
  {
    sub_100004A34(v29);
  }

  _Unwind_Resume(exception_object);
}

void sub_10033F4E8(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        sub_10033EC80(v3, a1[7]);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_10033F574(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10033F590(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10033F5A0(uint64_t a1, int a2)
{
  v2 = *(a1 + 144);
  if (v2 != a2)
  {
    v3 = a2;
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = "setAsserted";
      v8 = 2080;
      v9 = asStringBool(v2);
      v10 = 2080;
      v11 = asStringBool(v3);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: from %s to %s", &v6, 0x20u);
    }

    *(a1 + 144) = v3;
  }
}

void sub_10033F688(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        sub_10033EC80(v3, a1[7]);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10033F714(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = a1[5];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "handleDataContextIPRetry";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: handleDataContextIPRetry", &v11, 0xCu);
  }

  sub_100339054(a1, a2, a3, a4, 1, a5);
}

void sub_10033F7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "handleDataContextIPResume";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s: handleDataContextIPResume", &v13, 0xCu);
  }

  sub_10033A7F0(a1, a2, a3, a4, 1, a5, a6);
}

void sub_10033F8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "handleDataContextIPOnline";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s: handleDataContextIPOnline", &v13, 0xCu);
  }

  sub_10033A7F0(a1, a2, a3, a4, 0, a5, a6);
}

uint64_t sub_10033F9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315394;
    v19 = asString();
    v20 = 1024;
    v21 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I handleDataContextDidGetMTU[%s]: mtu=%u", &v18, 0x12u);
  }

  if (a2)
  {
    *(a1 + 56) = a3;
    v7 = *(a1 + 60);
    if (v7)
    {
      if (v7 >= a3)
      {
        if (v7 > a3)
        {
          v10 = *(a1 + 40);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = asString();
            v18 = 136315394;
            v19 = v11;
            v20 = 1024;
            v21 = a3;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I handleDataContextDidGetMTU[%s]: retro-adjusted mtu=%u", &v18, 0x12u);
          }

          (*(*a1 + 296))(a1, 2, a3);
        }
      }

      else
      {
        v8 = *(a1 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = asString();
          v18 = 136315394;
          v19 = v9;
          v20 = 1024;
          v21 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I handleDataContextDidGetMTU[%s]: adjusted mtu=%u", &v18, 0x12u);
        }

        a3 = v7;
      }
    }
  }

  if ((a2 & 2) != 0)
  {
    *(a1 + 60) = a3;
    v12 = *(a1 + 56);
    if (v12)
    {
      if (v12 >= a3)
      {
        if (v12 > a3)
        {
          v15 = *(a1 + 40);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = asString();
            v18 = 136315394;
            v19 = v16;
            v20 = 1024;
            v21 = a3;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I handleDataContextDidGetMTU[%s]: retro-adjusted mtu=%u", &v18, 0x12u);
          }

          (*(*a1 + 296))(a1, 1, a3);
        }
      }

      else
      {
        v13 = *(a1 + 40);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = asString();
          v18 = 136315394;
          v19 = v14;
          v20 = 1024;
          v21 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I handleDataContextDidGetMTU[%s]: adjusted mtu=%u", &v18, 0x12u);
        }

        a3 = v12;
      }
    }
  }

  return (*(*a1 + 296))(a1, a2, a3);
}

void sub_10033FD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "handleContextActivateError";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    v14 = 2080;
    v15 = asString();
    v16 = 2048;
    v17 = a7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s: %s: %s connectionMask %lld", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_100338A90(a1, a5, a6);
}

void sub_10033FEE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10033FF18(uint64_t a1, uint64_t a2, void *a3, int a4, int a5, int a6)
{
  if (a5)
  {
    v11 = (*(**a3 + 152))();
    memset(&buf, 0, sizeof(buf));
    (*(**a3 + 96))(*a3, a2);
    CSIPacketAddress::operator std::string();
    *(v103 + 3) = 0;
    v103[0] = 0;
    *(v102 + 3) = 0;
    v102[0] = 0;
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v12 = (*(**a3 + 120))(*a3, a2);
    v99 = 0;
    v100 = 0;
    v101 = 0;
    sub_1001B9510(&v99, *v12, v12[1], 0xAAAAAAAAAAAAAAABLL * ((v12[1] - *v12) >> 3));
    v13 = v99;
    v14 = v100;
    if (v100 == v99)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }

    else
    {
      CSIPacketAddress::operator std::string();
      v16 = *(&__dst + 1);
      v15 = __dst;
      v103[0] = v98;
      *(v103 + 3) = *(&v98 + 3);
      v17 = HIBYTE(v98);
      v13 = v99;
      v14 = v100;
    }

    v59 = v17;
    __src = v15;
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3) < 2)
    {
      v52 = 0;
      v19 = 0;
      v20 = 0;
    }

    else
    {
      CSIPacketAddress::operator std::string();
      v19 = *(&__dst + 1);
      v52 = __dst;
      v102[0] = v98;
      *(v102 + 3) = *(&v98 + 3);
      v20 = HIBYTE(v98);
    }

    v58 = v20;
    v21 = (*(**a3 + 56))();
    if (v21 == 1)
    {
      v22 = a6;
    }

    else
    {
      v22 = a5;
    }

    v57 = v22;
    v56 = (*(**a3 + 64))();
    v23 = sub_1007A3C94();
    v24 = *(v11 + 160);
    __dst = 0uLL;
    v98 = 0;
    if (*(v11 + 103) < 0)
    {
      sub_100005F2C(&__dst, *(v11 + 80), *(v11 + 88));
    }

    else
    {
      __dst = *(v11 + 80);
      v98 = *(v11 + 96);
    }

    v95 = 0uLL;
    v96 = 0;
    if (*(v11 + 127) < 0)
    {
      sub_100005F2C(&v95, *(v11 + 104), *(v11 + 112));
    }

    else
    {
      v95 = *(v11 + 104);
      v96 = *(v11 + 120);
    }

    v60 = a1;
    v93 = 0uLL;
    v94 = 0;
    v50 = v23;
    if (*(v11 + 151) < 0)
    {
      sub_100005F2C(&v93, *(v11 + 128), *(v11 + 136));
    }

    else
    {
      v93 = *(v11 + 128);
      v94 = *(v11 + 144);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 64));
    v26 = ServiceMap;
    if (v27 < 0)
    {
      v28 = (v27 & 0x7FFFFFFFFFFFFFFFLL);
      v29 = 5381;
      do
      {
        v27 = v29;
        v30 = *v28++;
        v29 = (33 * v29) ^ v30;
      }

      while (v30);
    }

    std::mutex::lock(ServiceMap);
    *&v91 = v27;
    v31 = sub_100009510(&v26[1].__m_.__sig, &v91);
    v54 = a2;
    v55 = v21;
    v49 = v19;
    if (v31)
    {
      v33 = v31[3];
      v32 = v31[4];
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v26);
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v32);
        v51 = 0;
        goto LABEL_30;
      }
    }

    else
    {
      v33 = 0;
    }

    std::mutex::unlock(v26);
    v32 = 0;
    v51 = 1;
LABEL_30:
    v48 = v32;
    if (v33)
    {
      v34 = (*(*v33 + 1040))(v33, a4);
    }

    else
    {
      v34 = -1;
    }

    v35 = (*(**a3 + 192))(*a3, 1);
    v36 = *(v11 + 168);
    v91 = 0uLL;
    v92 = 0;
    v37 = *(v60 + 88);
    v38 = (*(**a3 + 56))();
    (*(*v37 + 40))(&v91, v37, v38);
    v89[1] = 0;
    v89[0] = 0;
    v90 = 0;
    if (*(v11 + 31) < 0)
    {
      sub_100005F2C(v89, *(v11 + 8), *(v11 + 16));
    }

    else
    {
      *v89 = *(v11 + 8);
      v90 = *(v11 + 24);
    }

    v39 = 0;
    v40 = v50 - v24;
    v41 = *(v11 + 172);
    v42 = 1;
    do
    {
      v43 = v39 | 0x10000000;
      if (v42 <= 0x10000000)
      {
        v43 = v39 | v42;
      }

      if ((v42 & v35) != 0)
      {
        v39 = v43;
      }

      v44 = v42 >> 35;
      v42 *= 2;
    }

    while (!v44);
    v45 = *(v60 + 80);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v88, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
    }

    else
    {
      v88 = buf;
    }

    if (v59 < 0)
    {
      sub_100005F2C(v85, __src, v16);
    }

    else
    {
      v85[0] = __src;
      v85[1] = v16;
      *v86 = v103[0];
      *&v86[3] = *(v103 + 3);
      v87 = v59;
    }

    if (v58 < 0)
    {
      sub_100005F2C(v82, v52, v49);
    }

    else
    {
      v82[0] = v52;
      v82[1] = v49;
      *v83 = v102[0];
      *&v83[3] = *(v102 + 3);
      v84 = v58;
    }

    if (SHIBYTE(v92) < 0)
    {
      sub_100005F2C(v80, v91, *(&v91 + 1));
    }

    else
    {
      *v80 = v91;
      v81 = v92;
    }

    if (SHIBYTE(v98) < 0)
    {
      sub_100005F2C(v78, __dst, *(&__dst + 1));
    }

    else
    {
      *v78 = __dst;
      v79 = v98;
    }

    if (SHIBYTE(v96) < 0)
    {
      sub_100005F2C(v76, v95, *(&v95 + 1));
    }

    else
    {
      *v76 = v95;
      v77 = v96;
    }

    if (SHIBYTE(v94) < 0)
    {
      sub_100005F2C(v74, v93, *(&v93 + 1));
    }

    else
    {
      *v74 = v93;
      v75 = v94;
    }

    if (SHIBYTE(v90) < 0)
    {
      sub_100005F2C(__p, v89[0], v89[1]);
    }

    else
    {
      *__p = *v89;
      v73 = v90;
    }

    sub_10079E6BC(a4, v45, 0, v57, &v88, v85, v82, v34, v80, v55, v39, v40, v78, v76, v74, v56, v54, v36, __p);
    if (SHIBYTE(v73) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v75) < 0)
    {
      operator delete(v74[0]);
    }

    if (SHIBYTE(v77) < 0)
    {
      operator delete(v76[0]);
    }

    if (SHIBYTE(v79) < 0)
    {
      operator delete(v78[0]);
    }

    if (SHIBYTE(v81) < 0)
    {
      operator delete(v80[0]);
    }

    if (v84 < 0)
    {
      operator delete(v82[0]);
    }

    if (v87 < 0)
    {
      operator delete(v85[0]);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v90) < 0)
    {
      sub_100005F2C(v70, v89[0], v89[1]);
    }

    else
    {
      *v70 = *v89;
      v71 = v90;
    }

    if (SHIBYTE(v92) < 0)
    {
      sub_100005F2C(v68, v91, *(&v91 + 1));
    }

    else
    {
      *v68 = v91;
      v69 = v92;
    }

    v46 = *(v60 + 80);
    if (SHIBYTE(v94) < 0)
    {
      sub_100005F2C(v66, v93, *(&v93 + 1));
    }

    else
    {
      *v66 = v93;
      v67 = v94;
    }

    if (SHIBYTE(v96) < 0)
    {
      sub_100005F2C(v64, v95, *(&v95 + 1));
    }

    else
    {
      *v64 = v95;
      v65 = v96;
    }

    if (SHIBYTE(v98) < 0)
    {
      sub_100005F2C(v62, __dst, *(&__dst + 1));
    }

    else
    {
      *v62 = __dst;
      v63 = v98;
    }

    LODWORD(v47) = v56;
    sub_1003392DC(v60, v70, v40, v68, v35, v46, v55, v66, __SPAIR64__(v34, v54), __SPAIR64__(v57, v36), a4, 0, v47, v64, v62, v41);
    if (SHIBYTE(v63) < 0)
    {
      operator delete(v62[0]);
    }

    if (SHIBYTE(v65) < 0)
    {
      operator delete(v64[0]);
    }

    if (SHIBYTE(v67) < 0)
    {
      operator delete(v66[0]);
    }

    if (SHIBYTE(v69) < 0)
    {
      operator delete(v68[0]);
    }

    if (SHIBYTE(v71) < 0)
    {
      operator delete(v70[0]);
    }

    if (SHIBYTE(v90) < 0)
    {
      operator delete(v89[0]);
    }

    if (SHIBYTE(v92) < 0)
    {
      operator delete(v91);
    }

    if ((v51 & 1) == 0)
    {
      sub_100004A34(v48);
    }

    if (SHIBYTE(v94) < 0)
    {
      operator delete(v93);
    }

    if (SHIBYTE(v96) < 0)
    {
      operator delete(v95);
    }

    if (SHIBYTE(v98) < 0)
    {
      operator delete(__dst);
    }

    if (v99)
    {
      v100 = v99;
      operator delete(v99);
    }

    if (v58 < 0)
    {
      operator delete(v52);
    }

    if (v59 < 0)
    {
      operator delete(__src);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    return;
  }

  v18 = *(a1 + 40);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = "reportContextActivateErrorMetrics";
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s: Activate failed without error, huh?", &buf, 0xCu);
  }
}

void sub_1003408F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, int a21, char a22, void *a23, void *a24, uint64_t a25, uint64_t a26, char a27, __int16 a28, char a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(STACK[0x248]);
  }

  if ((a22 & 1) == 0)
  {
    sub_100004A34(a18);
  }

  if (*(v62 - 233) < 0)
  {
    operator delete(*(v62 - 256));
  }

  if (*(v62 - 201) < 0)
  {
    operator delete(*(v62 - 224));
  }

  if (*(v62 - 169) < 0)
  {
    operator delete(*(v62 - 192));
  }

  v64 = *(v62 - 168);
  if (v64)
  {
    *(v62 - 160) = v64;
    operator delete(v64);
  }

  if (a27 < 0)
  {
    operator delete(a23);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (*(v62 - 105) < 0)
  {
    operator delete(*(v62 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_100340B5C(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_100340DFC(a1, *(a1 + 80), 0);
  }

  v18 = 0;
  v19 = 0;
  (*(**(a1 + 88) + 112))(&v18);
  if (v18)
  {
    (*(*v18 + 160))(v18, 1, 7);
    v16 = 0;
    v17 = 0;
    sub_1000930A4(&v16);
    if (v16 && (*(*v16 + 56))(v16))
    {
      (*(*v18 + 160))(v18, 1, 5);
    }

    if (v17)
    {
      sub_100004A34(v17);
    }
  }

  if (a2)
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 64));
    v5 = ServiceMap;
    if (v6 < 0)
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
    v16 = v6;
    v10 = sub_100009510(&v5[1].__m_.__sig, &v16);
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
        if (!v12)
        {
LABEL_21:
          if ((v13 & 1) == 0)
          {
            sub_100004A34(v11);
          }

          goto LABEL_23;
        }

LABEL_19:
        sub_10000501C(__p, "Throttling cleared");
        (*(*v12 + 1160))(v12, 3, __p, 0);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v12 = 0;
    }

    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    if (!v12)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_23:
  if (v19)
  {
    sub_100004A34(v19);
  }
}

void sub_100340D9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((v20 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *sub_100340DFC(uint64_t a1, int a2, int a3)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_10034264C(v7, 524437);
  v5 = v7[0];
  if (v7[0])
  {
    *(v7[0] + 7) |= 6u;
    *(v5 + 4) = a2;
    *(v5 + 5) = a3;
  }

  return sub_100342734(v7);
}

void sub_100340E5C(uint64_t a1, int a2)
{
  v5 = 0;
  v6 = 0;
  (*(**(a1 + 88) + 112))(&v5);
  v4 = v5;
  if (v5)
  {
    v4 = (*(*v5 + 160))(v5, 0, 7);
  }

  if (a2)
  {
    sub_100340DFC(v4, *(a1 + 80), 1);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_100340F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100340F20(uint64_t a1)
{
  result = *(a1 + 104);
  *(a1 + 104) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_100340F58(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    (*(*v2 + 16))(&v28);
    v3 = v28;
    v4 = v29;
    if (v28 != v29)
    {
      while (1)
      {
        v6 = *v3;
        v5 = v3[1];
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        memset(&v33, 0, sizeof(v33));
        v7 = *(a1 + 88);
        v8 = (*(*v6 + 56))(v6);
        (*(*v7 + 40))(&v33, v7, v8);
        v9 = (*(*v6 + 192))(v6, 0);
        v10 = 0;
        v11 = 1;
        do
        {
          v12 = v10 | 0x10000000;
          if (v11 <= 0x10000000)
          {
            v12 = v10 | v11;
          }

          if ((v11 & v9) != 0)
          {
            v10 = v12;
          }

          v13 = v11 >> 35;
          v11 *= 2;
        }

        while (!v13);
        v14 = (*(*a1 + 240))(a1, 1);
        v15 = v14;
        if (v14 != *(a1 + 48))
        {
          *(a1 + 48) = v14;
          v16 = *(a1 + 80);
          if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&__p, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
          }

          else
          {
            __p = v33;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&__str, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            __str = __p;
          }

          *&__dst.__r_.__value_.__l.__data_ = 0uLL;
          sub_100342930(&__dst, 524435);
          v17 = __dst.__r_.__value_.__r.__words[0];
          if (__dst.__r_.__value_.__r.__words[0])
          {
            v18 = *(__dst.__r_.__value_.__r.__words[0] + 40);
            *(__dst.__r_.__value_.__r.__words[0] + 16) = v16;
            *(v17 + 20) = v15;
            *(v17 + 40) = v18 | 0xE;
            v19 = *(v17 + 24);
            if (v19 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            std::string::operator=(v19, &__str);
            v20 = __dst.__r_.__value_.__r.__words[0];
            *(__dst.__r_.__value_.__r.__words[0] + 40) |= 0x10u;
            *(v20 + 32) = v10;
          }

          sub_100342A18(&__dst);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v21 = (*(*a1 + 240))(a1, 2);
        v22 = v21;
        if (v21 != *(a1 + 52))
        {
          *(a1 + 52) = v21;
          v23 = *(a1 + 80);
          if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&__dst, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
          }

          else
          {
            __dst = v33;
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&__str, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
          }

          else
          {
            __str = __dst;
          }

          v35[0] = 0;
          v35[1] = 0;
          sub_100342C14(v35, 524436);
          v24 = v35[0];
          if (v35[0])
          {
            v25 = *(v35[0] + 10);
            *(v35[0] + 4) = v23;
            *(v24 + 5) = v22;
            *(v24 + 10) = v25 | 0xE;
            v26 = *(v24 + 3);
            if (v26 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            std::string::operator=(v26, &__str);
            v27 = v35[0];
            *(v35[0] + 10) |= 0x10u;
            *(v27 + 8) = v10;
          }

          sub_100342A18(v35);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          break;
        }

        if (v5)
        {
          goto LABEL_43;
        }

LABEL_44:
        v3 += 2;
        if (v3 == v4)
        {
          goto LABEL_48;
        }
      }

      operator delete(v33.__r_.__value_.__l.__data_);
      if (!v5)
      {
        goto LABEL_44;
      }

LABEL_43:
      sub_100004A34(v5);
      goto LABEL_44;
    }

LABEL_48:
    __str.__r_.__value_.__r.__words[0] = &v28;
    sub_1000212F4(&__str);
  }
}

void sub_10034136C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (v37)
  {
    sub_100004A34(v37);
  }

  *(v38 - 96) = &a10;
  sub_1000212F4((v38 - 96));
  _Unwind_Resume(a1);
}

void sub_10034142C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  sub_100338A90(a1, a2, a3);
}

void sub_1003417FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    sub_100004A34(a23);
  }

  if ((a17 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  if (a21)
  {
    sub_100004A34(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100341878(uint64_t a1, uint64_t a2, unsigned int a3)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  v25 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v25);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      if (!v14)
      {
LABEL_26:
        sub_100004A34(v13);
        return a2;
      }
    }

    else
    {
      std::mutex::unlock(v7);
      if (!v14)
      {
        return a2;
      }
    }

    v15 = (*(*v14 + 808))(v14);
    v24 = a3;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    (*(**(a1 + 88) + 16))(&v25);
    v16 = v25;
    v17 = v26;
    if (v25 != v26)
    {
      while (1)
      {
        v18 = *v16;
        v19 = *(v16 + 8);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v18 && (*(*&v18[*(*v18 - 56)] + 24))(&v18[*(*v18 - 56)]) != v15)
        {
          break;
        }

        v20 = 1;
        if (v19)
        {
          goto LABEL_16;
        }

LABEL_17:
        if ((v20 & 1) == 0)
        {
          goto LABEL_25;
        }

        v16 += 16;
        if (v16 == v17)
        {
          goto LABEL_22;
        }
      }

      v20 = 0;
      if (!v19)
      {
        goto LABEL_17;
      }

LABEL_16:
      sub_100004A34(v19);
      goto LABEL_17;
    }

LABEL_22:
    v21 = sub_10009900C(a1, v15);
    if (isSliceMask(v21))
    {
      v22 = (*(*v14 + 904))(v14);
      if (v22)
      {
        a2 = 1000 * (*(*v22 + 144))(v22, v15, v24);
      }
    }

LABEL_25:
    v28 = &v25;
    sub_1000212F4(&v28);
    if (v13)
    {
      goto LABEL_26;
    }
  }

  else
  {
    std::mutex::unlock(v7);
  }

  return a2;
}

void sub_100341B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  sub_1000212F4(&a14);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(a1);
}

void sub_100341B58(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 96);
    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: -------------- Collocation: %s ------------------", buf, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 112);
    v4 = *(a1 + 120);
    *buf = 134218240;
    *&buf[4] = v4;
    *&buf[12] = 2048;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fInactivityTimeoutMsec = %lu, fInactivityCheckpointMsec = %lu", buf, 0x16u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_100341878(a1, *(a1 + 120), 0);
    v7 = sub_100341878(a1, *(a1 + 112), 1u);
    *buf = 134218240;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t efficient: inactivityTimeoutMsec = %lu, inactivityCheckpointMsec = %lu", buf, 0x16u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 128);
    v9 = *(a1 + 132);
    *buf = 67109376;
    *&buf[4] = v8;
    *&buf[8] = 1024;
    *&buf[10] = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fStatistics(_in=%u, _out=%u)", buf, 0xEu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = asStringBool(*(a1 + 144));
    v11 = asStringBool(*(a1 + 145));
    *buf = 136315394;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fAsserted = %s,  fAssertionGone = %s", buf, 0x16u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v12 = asStringBool(*(a1 + 104) != 0);
    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fInactivityTimer = %s", buf, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = asString();
    *buf = 136315138;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fCachedV4Status = %s", buf, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v14 = asString();
    *buf = 136315138;
    *&buf[4] = v14;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fCachedV6Status = %s", buf, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 56);
    *buf = 67109120;
    *&buf[4] = v15;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fIPv4NetworkMtu = %u", buf, 8u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 60);
    *buf = 67109120;
    *&buf[4] = v16;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fIPv6NetworkMtu = %u", buf, 8u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fAssertions {", buf, 2u);
  }

  v17 = *(a1 + 152);
  for (i = *(a1 + 160); v17 != i; v17 = (v17 + 24))
  {
    memset(buf, 0, 24);
    if (*(v17 + 23) < 0)
    {
      sub_100005F2C(buf, *v17, *(v17 + 1));
    }

    else
    {
      v19 = *v17;
      *&buf[16] = *(v17 + 2);
      *buf = v19;
    }

    v20 = *(a1 + 40);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      if ((buf[23] & 0x80u) == 0)
      {
        v21 = buf;
      }

      else
      {
        v21 = *buf;
      }

      *v32 = 136315138;
      *&v32[4] = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t %s", v32, 0xCu);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

  v22 = *(a1 + 40);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t }", buf, 2u);
    v22 = *(a1 + 40);
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fDataContexts {", buf, 2u);
  }

  v23 = *(a1 + 88);
  if (v23)
  {
    memset(buf, 0, 24);
    (*(*v23 + 16))(buf);
    v24 = *buf;
    for (j = *&buf[8]; v24 != j; v24 += 2)
    {
      v27 = *v24;
      v26 = v24[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v28 = *(a1 + 40);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = (*(*v27 + 48))(v27);
        *v32 = 136315138;
        *&v32[4] = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t %s", v32, 0xCu);
      }

      if (v26)
      {
        sub_100004A34(v26);
      }
    }

    *v32 = buf;
    sub_1000212F4(v32);
  }

  v30 = *(a1 + 40);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t }", buf, 2u);
  }

  *buf = 0;
  *&buf[8] = 0;
  (*(**(a1 + 88) + 112))(buf);
  if (*buf)
  {
    (*(**buf + 192))(*buf);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100342250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100342308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_1003423AC(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10034232C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10034236C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1003423AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 95) < 0)
    {
      operator delete(*(a2 + 72));
    }

    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    operator delete();
  }
}

uint64_t sub_100342428(uint64_t a1)
{
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1003424AC(std::mutex *this@<X0>, void *a2@<X8>)
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

  v11 = 0;
  v12 = 0;
  std::mutex::lock(this);
  v13 = v4;
  v8 = sub_100009510(&this[1].__m_.__sig, &v13);
  if (v8)
  {
    v9 = v8[3];
    v10 = v8[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = v9;
  v12 = v10;
  std::mutex::unlock(this);
  sub_100342574(&v11, a2);
  if (v12)
  {
    sub_100004A34(v12);
  }
}

void sub_100342574(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  {
    *a2 = v6;
    a2[1] = v5;
    if (!v5)
    {
      return;
    }

    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    if (!v5)
    {
      return;
    }
  }

  sub_100004A34(v5);
}

awd::metrics::CommCenterPDPContextPreActivateState **sub_10034264C(awd::metrics::CommCenterPDPContextPreActivateState **a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 2) = a2;
  if (sub_10079D818(a2))
  {
    operator new();
  }

  return a1;
}

unsigned int *sub_100342734(unsigned int *a1)
{
  sub_100342790(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

unsigned int *sub_100342790(unsigned int *result)
{
  if (*result)
  {
    v1 = result;
    sub_100342808(result, result[2]);
    result = *v1;
    *v1 = 0;
    if (result)
    {
      v2 = *(*result + 8);

      return v2();
    }
  }

  return result;
}

void sub_100342808(uint64_t *a1, unsigned int a2)
{
  v10 = 0;
  v11 = 0;
  v4 = sub_10001C610(&v10);
  if (v10)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v4);
    v6 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, a2);
    v7 = v6;
    if (v6)
    {
      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        if (*(v8 + 28))
        {
          WISTimestamp = *(v8 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v6);
          *(v8 + 28) |= 1u;
          *(v8 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v7, WISTimestamp, *v7, v8);
        (*(*v8 + 8))(v8);
      }

      wis::WISServerConnection::SubmitMetric(v10, v7);
    }
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_1003428E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10, a2, a3, a4, a5, a6, a7, a8);
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

awd::metrics::CommCenterPDPContextStateChangeV4 **sub_100342930(awd::metrics::CommCenterPDPContextStateChangeV4 **a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 2) = a2;
  if (sub_10079D818(a2))
  {
    operator new();
  }

  return a1;
}

unsigned int *sub_100342A18(unsigned int *a1)
{
  sub_100342A74(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

unsigned int *sub_100342A74(unsigned int *result)
{
  if (*result)
  {
    v1 = result;
    sub_100342AEC(result, result[2]);
    result = *v1;
    *v1 = 0;
    if (result)
    {
      v2 = *(*result + 8);

      return v2();
    }
  }

  return result;
}

void sub_100342AEC(uint64_t *a1, unsigned int a2)
{
  v10 = 0;
  v11 = 0;
  v4 = sub_10001C610(&v10);
  if (v10)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v4);
    v6 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, a2);
    v7 = v6;
    if (v6)
    {
      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        if (*(v8 + 40))
        {
          WISTimestamp = *(v8 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v6);
          *(v8 + 40) |= 1u;
          *(v8 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v7, WISTimestamp, *v7, v8);
        (*(*v8 + 8))(v8);
      }

      wis::WISServerConnection::SubmitMetric(v10, v7);
    }
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_100342BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10, a2, a3, a4, a5, a6, a7, a8);
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

awd::metrics::CommCenterPDPContextStateChangeV6 **sub_100342C14(awd::metrics::CommCenterPDPContextStateChangeV6 **a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 2) = a2;
  if (sub_10079D818(a2))
  {
    operator new();
  }

  return a1;
}

void sub_100342CFC()
{
  if ((atomic_load_explicit(byte_101FBA268, memory_order_acquire) & 1) == 0)
  {
    sub_10176BCC8();
  }

  if (qword_101FBA260 != -1)
  {
    sub_10176BD1C();
  }
}

uint64_t sub_100342D40(const char *a1, int a2, int a3, int a4)
{
  v5 = a1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v6 = open(a1, a2, a4 | 0x100u);
  if ((v6 & 0x80000000) != 0 && a3)
  {
    v7 = *__error();
    if (v5[23] < 0)
    {
      v5 = *v5;
    }

    v8 = strerror(v7);
    sub_100342DCC("Error opening file %s, err = %s", v5, v8);
  }

  return v6;
}

void sub_100342DCC(char *__format, ...)
{
  va_start(va, __format);
  memset(&__p, 0, sizeof(__p));
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
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
  *__str = 0u;
  v6 = 0u;
  va_copy(v4, va);
  vsnprintf(__str, 0x100uLL, __format, va);
  sub_100016890(&__p, __str);
  sub_100342CFC();
  v1 = qword_101FBA278;
  if (os_log_type_enabled(qword_101FBA278, OS_LOG_TYPE_ERROR))
  {
    sub_10176BD30(&__p, v1);
  }

  p_p = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  syslog(5, "File Error: '%s'\n", p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t sub_100342EFC(int a1)
{
  while (1)
  {
    v2 = close(a1);
    if (!v2)
    {
      break;
    }

    if (*__error() != 4)
    {
      v3 = *__error();
      v4 = __error();
      v5 = strerror(*v4);
      sub_100342DCC("Failed to close file; got errno=%d (%s)", v3, v5);
      return v2;
    }
  }

  return v2;
}

DIR *sub_100342F6C(const char *a1, void *a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = opendir(a1);
  if (result)
  {
    v4 = result;
    v5 = readdir(result);
    if (v5)
    {
      v6 = v5;
      do
      {
        v9 = 0;
        __dst = 0uLL;
        d_namlen = v6->d_namlen;
        if (d_namlen >= 0x17)
        {
          operator new();
        }

        HIBYTE(v9) = v6->d_namlen;
        if (d_namlen)
        {
          memmove(&__dst, v6->d_name, d_namlen);
        }

        *(&__dst + d_namlen) = 0;
        sub_100005308(a2, &__dst);
        if (SHIBYTE(v9) < 0)
        {
          operator delete(__dst);
        }

        v6 = readdir(v4);
      }

      while (v6);
    }

    return closedir(v4);
  }

  return result;
}

void sub_10034307C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100343098(const char *a1)
{
  memset(&v2, 0, sizeof(v2));
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return stat(a1, &v2) == 0;
}

void *sub_1003430EC@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  memset(&v13, 0, sizeof(v13));
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = stat(a1, &v13);
  if (result)
  {
    if (v2[23] < 0)
    {
      return sub_100005F2C(a2, *v2, *(v2 + 1));
    }

    else
    {
      *a2 = *v2;
      *(a2 + 16) = *(v2 + 2);
    }
  }

  else
  {
    for (i = 1; ; ++i)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
      memset(&v13, 0, sizeof(v13));
      snprintf(&v13, 0x100uLL, "-%u", i);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      sub_10000501C(&v12, &v13);
      v6 = v2[23];
      if (v6 >= 0)
      {
        v7 = v2;
      }

      else
      {
        v7 = *v2;
      }

      if (v6 >= 0)
      {
        v8 = *(v2 + 23);
      }

      else
      {
        v8 = *(v2 + 1);
      }

      v9 = std::string::insert(&v12, 0, v7, v8);
      v10 = *&v9->__r_.__value_.__l.__data_;
      *(a2 + 16) = *(&v9->__r_.__value_.__l + 2);
      *a2 = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v12.st_gid) < 0)
      {
        operator delete(*&v12.st_dev);
      }

      memset(&v12, 0, sizeof(v12));
      v11 = *(a2 + 23) >= 0 ? a2 : *a2;
      result = stat(v11, &v12);
      if (result)
      {
        break;
      }

      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }
    }
  }

  return result;
}

void sub_1003432A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1003432D8(char *a1, uint64_t a2, int a3)
{
  v4 = a2;
  v5 = a1;
  memset(&v22, 0, sizeof(v22));
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (!stat(a1, &v22))
  {
    return 1;
  }

  if (!a3)
  {
    return sub_10034363C(v5, v4);
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  sub_1003434FC(&v19, v5);
  memset(&__p, 0, sizeof(__p));
  if (v5[23] >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = *v5;
  }

  if (*v6 == 47)
  {
    std::string::operator=(&__p, &stru_1017F4C50);
  }

  v7 = v19;
  if (v20 == v19)
  {
LABEL_26:
    v16 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 1;
    while (1)
    {
      if (v9 != 1)
      {
        std::string::append(&__p, &stru_1017F4C50, 1uLL);
        v7 = v19;
      }

      v10 = v7 + 24 * v8;
      v11 = *(v10 + 23);
      v12 = v11 >= 0 ? v10 : *v10;
      v13 = v11 >= 0 ? *(v10 + 23) : *(v10 + 8);
      std::string::append(&__p, v12, v13);
      memset(&v22, 0, sizeof(v22));
      v14 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      if (stat(v14, &v22) && !sub_10034363C(&__p, v4))
      {
        break;
      }

      v8 = v9;
      v7 = v19;
      if (0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3) <= v9++)
      {
        goto LABEL_26;
      }
    }

    v16 = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *&v22.st_dev = &v19;
  sub_1000087B4(&v22);
  return v16;
}

void sub_1003434C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  sub_1000087B4(&__p);
  _Unwind_Resume(a1);
}

void sub_1003434FC(void *a1, std::string *this)
{
  v4 = 0;
  do
  {
    v5 = std::string::find(this, 47, v4);
    v6 = v5;
    memset(&__p, 0, sizeof(__p));
    if (v5 == -1)
    {
      sub_10034454C(&__dst, this, v4);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __dst;
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __dst.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        sub_100005308(a1, &__p);
      }
    }

    else
    {
      if (v5 != v4)
      {
        std::string::basic_string(&__dst, this, v4, v5 - v4, &v8);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = __dst;
        sub_100005308(a1, &__p);
      }

      v4 = v6 + 1;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  while (v6 != -1);
}

void sub_100343618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10034363C(const char *a1, int a2)
{
  v3 = a1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v4 = mkdir(a1, a2);
  if (v4)
  {
    if (v3[23] < 0)
    {
      v3 = *v3;
    }

    v5 = __error();
    v6 = strerror(*v5);
    sub_100342DCC("Failed to create directory %s (0%3o), err = %s", v3, a2, v6);
  }

  return v4 == 0;
}

uint64_t sub_1003436C4(const char *a1)
{
  v1 = a1;
  memset(&v37, 0, sizeof(v37));
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v37))
  {
    return 0;
  }

  v33 = 0;
  v34 = 0;
  v35 = 0;
  sub_100342F6C(v1, &v33);
  v4 = v33;
  if (v34 == v33)
  {
    goto LABEL_74;
  }

  v5 = 0;
  v6 = 1;
  v7 = 1;
  do
  {
    memset(&__p, 0, sizeof(__p));
    v8 = (v4 + 24 * v5);
    if (*(v8 + 23) < 0)
    {
      sub_100005F2C(&__p, *v8, *(v8 + 1));
    }

    else
    {
      v9 = *v8;
      __p.__r_.__value_.__r.__words[2] = *(v8 + 2);
      *&__p.__r_.__value_.__l.__data_ = v9;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p.__r_.__value_.__l.__size_ == 1 && *__p.__r_.__value_.__l.__data_ == 46)
      {
        goto LABEL_61;
      }

      if (__p.__r_.__value_.__l.__size_ == 2)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
LABEL_17:
        if (LOWORD(p_p->__r_.__value_.__l.__data_) == 11822)
        {
          goto LABEL_61;
        }
      }
    }

    else if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 1)
    {
      if (__p.__r_.__value_.__s.__data_[0] == 46)
      {
        goto LABEL_61;
      }
    }

    else if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 2)
    {
      p_p = &__p;
      goto LABEL_17;
    }

    if (v1[23] >= 0)
    {
      v11 = *(v1 + 23);
    }

    else
    {
      v11 = *(v1 + 1);
    }

    memset(&v37, 0, 24);
    sub_1000677C4(&v37, v11 + 1);
    if ((v37.st_gid & 0x80000000) == 0)
    {
      v12 = &v37;
    }

    else
    {
      v12 = *&v37.st_dev;
    }

    if (v11)
    {
      if (v1[23] >= 0)
      {
        v13 = v1;
      }

      else
      {
        v13 = *v1;
      }

      memmove(v12, v13, v11);
    }

    *(&v12->st_dev + v11) = 47;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &__p;
    }

    else
    {
      v14 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v16 = std::string::append(&v37, v14, size);
    v17 = v16->__r_.__value_.__r.__words[0];
    v36[0] = v16->__r_.__value_.__l.__size_;
    *(v36 + 7) = *(&v16->__r_.__value_.__r.__words[1] + 7);
    v18 = HIBYTE(v16->__r_.__value_.__r.__words[2]);
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v17;
    __p.__r_.__value_.__l.__size_ = v36[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v36 + 7);
    *(&__p.__r_.__value_.__s + 23) = v18;
    if (SHIBYTE(v37.st_gid) < 0)
    {
      operator delete(*&v37.st_dev);
      v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v17 = __p.__r_.__value_.__r.__words[0];
    }

    memset(&v37.st_uid, 0, 128);
    if (v18 >= 0)
    {
      v19 = &__p;
    }

    else
    {
      v19 = v17;
    }

    *&v37.st_dev = 0uLL;
    if (stat(v19, &v37))
    {
      sub_100342CFC();
      v20 = qword_101FBA278;
      if (os_log_type_enabled(qword_101FBA278, OS_LOG_TYPE_ERROR))
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &__p;
        }

        else
        {
          v29 = __p.__r_.__value_.__r.__words[0];
        }

        v37.st_dev = 136315138;
        *&v37.st_mode = v29;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Warning: %s does not exist", &v37, 0xCu);
      }
    }

    memset(&v37, 0, sizeof(v37));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &__p;
    }

    else
    {
      v21 = __p.__r_.__value_.__r.__words[0];
    }

    if (stat(v21, &v37))
    {
      sub_100342CFC();
      v22 = qword_101FBA278;
      if (os_log_type_enabled(qword_101FBA278, OS_LOG_TYPE_ERROR))
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = &__p;
        }

        else
        {
          v30 = __p.__r_.__value_.__r.__words[0];
        }

        v37.st_dev = 136315138;
        *&v37.st_mode = v30;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Warning: %s does not exist or has incorrect permissions, or symbolic link pointing to non-exist file", &v37, 0xCu);
      }
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &__p;
    }

    else
    {
      v23 = __p.__r_.__value_.__r.__words[0];
    }

    v24 = opendir(v23);
    v26 = v24;
    if (v24 && (v27 = readdir(v24), closedir(v26), v27))
    {
      std::string::append(&__p, "/", 1uLL);
      if (v7)
      {
        v7 = sub_1003436C4(&__p);
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      sub_100343B98(&__p, v25);
    }

LABEL_61:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v5 = v6;
    v4 = v33;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((v34 - v33) >> 3) > v6++);
  if (v7)
  {
LABEL_74:
    sub_100343B98(v1, v3);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *&v37.st_dev = &v33;
  sub_1000087B4(&v37);
  return v2;
}

void sub_100343B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  __p = &a18;
  sub_1000087B4(&__p);
  _Unwind_Resume(a1);
}

void sub_100343B98(const std::__fs::filesystem::path *a1, std::error_code *a2)
{
  v2 = a1;
  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    a1 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (remove(a1, a2))
  {
    __dst = 0uLL;
    v10 = 0;
    if (SHIBYTE(v2->__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__dst, v2->__pn_.__r_.__value_.__l.__data_, v2->__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = *&v2->__pn_.__r_.__value_.__l.__data_;
      v10 = v2->__pn_.__r_.__value_.__r.__words[2];
    }

    v3 = *__error();
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1174405120;
    v5[2] = sub_1003444A0;
    v5[3] = &unk_101E43820;
    if (SHIBYTE(v10) < 0)
    {
      sub_100005F2C(__p, __dst, *(&__dst + 1));
    }

    else
    {
      *__p = __dst;
      v7 = v10;
    }

    global_queue = dispatch_get_global_queue(0, 0);
    v8 = v3;
    dispatch_async(global_queue, v5);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v10) < 0)
    {
      operator delete(__dst);
    }
  }
}

void sub_100343CB4(_Unwind_Exception *exception_object)
{
  if (*(v1 - 25) < 0)
  {
    operator delete(*(v1 - 48));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100343CD0(uint64_t a1, const void **a2)
{
  v52 = 0;
  v53 = 0;
  v54 = 0;
  sub_100342F6C(a1, &v52);
  v4 = v52;
  if (v53 != v52)
  {
    v5 = 0;
    v6 = 1;
    v44 = 1;
    while (1)
    {
      __dst = 0uLL;
      v51 = 0;
      v7 = (v4 + 24 * v5);
      if (*(v7 + 23) < 0)
      {
        sub_100005F2C(&__dst, *v7, *(v7 + 1));
      }

      else
      {
        v8 = *v7;
        v51 = *(v7 + 2);
        __dst = v8;
      }

      v9 = HIBYTE(v51);
      if (SHIBYTE(v51) < 0)
      {
        break;
      }

      if (HIBYTE(v51) != 1)
      {
        if (HIBYTE(v51) == 2)
        {
          p_dst = &__dst;
          goto LABEL_13;
        }

        goto LABEL_16;
      }

      if (__dst != 46)
      {
        goto LABEL_16;
      }

LABEL_98:
      v5 = v6;
      v4 = v52;
      if (0xAAAAAAAAAAAAAAABLL * ((v53 - v52) >> 3) <= v6++)
      {
        goto LABEL_105;
      }
    }

    if (*(&__dst + 1) == 1 && *__dst == 46)
    {
      goto LABEL_96;
    }

    if (*(&__dst + 1) == 2)
    {
      p_dst = __dst;
LABEL_13:
      if (*p_dst == 11822)
      {
LABEL_96:
        if (v9 < 0)
        {
          operator delete(__dst);
        }

        goto LABEL_98;
      }
    }

LABEL_16:
    v48[0] = 0;
    v48[1] = 0;
    v49 = 0;
    if (*(a1 + 23) >= 0)
    {
      v11 = *(a1 + 23);
    }

    else
    {
      v11 = *(a1 + 8);
    }

    memset(&v47, 0, sizeof(v47));
    sub_1000677C4(&v47, v11 + 1);
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v47;
    }

    else
    {
      v12 = v47.__r_.__value_.__r.__words[0];
    }

    if (v11)
    {
      if (*(a1 + 23) >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      memmove(v12, v13, v11);
    }

    *(&v12->__r_.__value_.__l.__data_ + v11) = 47;
    if (v51 >= 0)
    {
      v14 = &__dst;
    }

    else
    {
      v14 = __dst;
    }

    if (v51 >= 0)
    {
      v15 = HIBYTE(v51);
    }

    else
    {
      v15 = *(&__dst + 1);
    }

    v16 = std::string::append(&v47, v14, v15);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v49 = v16->__r_.__value_.__r.__words[2];
    *v48 = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (*(a2 + 23) >= 0)
    {
      v18 = *(a2 + 23);
    }

    else
    {
      v18 = a2[1];
    }

    memset(&v46, 0, sizeof(v46));
    sub_1000677C4(&v46, v18 + 1);
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v46;
    }

    else
    {
      v19 = v46.__r_.__value_.__r.__words[0];
    }

    if (v18)
    {
      if (*(a2 + 23) >= 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = *a2;
      }

      memmove(v19, v20, v18);
    }

    *(&v19->__r_.__value_.__l.__data_ + v18) = 47;
    if (v51 >= 0)
    {
      v21 = &__dst;
    }

    else
    {
      v21 = __dst;
    }

    if (v51 >= 0)
    {
      v22 = HIBYTE(v51);
    }

    else
    {
      v22 = *(&__dst + 1);
    }

    v23 = std::string::append(&v46, v21, v22);
    v47 = *v23;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    memset(&v46, 0, sizeof(v46));
    v24 = SHIBYTE(v47.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      sub_100005F2C(&__p, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v47;
    }

    sub_1003430EC(&__p, &v46);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v25 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v46.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v46.__r_.__value_.__l.__size_;
    }

    v27 = v47.__r_.__value_.__l.__size_;
    if ((v24 & 0x80000000) == 0)
    {
      v27 = v24;
    }

    if (size != v27 || ((v28 = v46.__r_.__value_.__r.__words[0], (v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (v29 = &v46) : (v29 = v46.__r_.__value_.__r.__words[0]), (v24 & 0x80000000) == 0 ? (v30 = &v47) : (v30 = v47.__r_.__value_.__r.__words[0]), memcmp(v29, v30, size)))
    {
      sub_100342CFC();
      v32 = qword_101FBA278;
      v33 = os_log_type_enabled(qword_101FBA278, OS_LOG_TYPE_INFO);
      v25 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
      v28 = v46.__r_.__value_.__r.__words[0];
      if (v33)
      {
        if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = &v46;
        }

        else
        {
          v34 = v46.__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        v56 = v34;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Warning: using filename %s", buf, 0xCu);
        v25 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
        v28 = v46.__r_.__value_.__r.__words[0];
      }
    }

    if (v49 >= 0)
    {
      v35 = v48;
    }

    else
    {
      v35 = v48[0];
    }

    if (v25 >= 0)
    {
      v36 = &v46;
    }

    else
    {
      v36 = v28;
    }

    rename(v35, v36, v31);
    if (v37)
    {
      if (v49 >= 0)
      {
        v38 = v48;
      }

      else
      {
        v38 = v48[0];
      }

      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = &v46;
      }

      else
      {
        v39 = v46.__r_.__value_.__r.__words[0];
      }

      v40 = __error();
      v41 = strerror(*v40);
      sub_100342DCC("Failed to rename %s to %s, err = %s", v38, v39, v41);
      v44 = 0;
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_93;
      }
    }

    else if ((v24 & 0x80000000) == 0)
    {
LABEL_93:
      if (SHIBYTE(v49) < 0)
      {
        operator delete(v48[0]);
      }

      v9 = HIBYTE(v51);
      goto LABEL_96;
    }

    operator delete(v47.__r_.__value_.__l.__data_);
    goto LABEL_93;
  }

  v44 = 1;
LABEL_105:
  *&__dst = &v52;
  sub_1000087B4(&__dst);
  return v44 & 1;
}

void sub_100344190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  *(v41 - 160) = v41 - 136;
  sub_1000087B4((v41 - 160));
  _Unwind_Resume(a1);
}

uint64_t sub_100344254(const char *a1, unsigned int a2)
{
  v14 = 1;
  v12[0] = 0;
  v12[1] = 0;
  v13 = getpid();
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  v5 = open(v4, 0);
  if ((v5 & 0x80000000) != 0)
  {
    sub_100342CFC();
    if (os_log_type_enabled(qword_101FBA278, OS_LOG_TYPE_ERROR))
    {
      sub_10176BDB8();
    }

LABEL_18:
    if (v5 != -1)
    {
      close(v5);
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (a2 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = a2;
    }

    while (fcntl(v5, 9, v12) < 0)
    {
      sub_100342CFC();
      v7 = qword_101FBA278;
      if (os_log_type_enabled(qword_101FBA278, OS_LOG_TYPE_ERROR))
      {
        if (a1[23] >= 0)
        {
          v8 = a1;
        }

        else
        {
          v8 = *a1;
        }

        v9 = __error();
        v10 = strerror(*v9);
        *buf = 136315394;
        v16 = v8;
        v17 = 2080;
        v18 = v10;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to lock %s, err = %s", buf, 0x16u);
      }

      sleep(1u);
      if (!--v6)
      {
        goto LABEL_18;
      }
    }
  }

  return v5;
}

uint64_t sub_10034440C(uint64_t a1, int a2)
{
  v6 = 2;
  v4[0] = 0;
  v4[1] = 0;
  v5 = getpid();
  if (fcntl(a2, 9, v4) < 0)
  {
    sub_100342CFC();
    if (os_log_type_enabled(qword_101FBA278, OS_LOG_TYPE_ERROR))
    {
      sub_10176BE48();
    }
  }

  return close(a2);
}

void sub_1003444A0(uint64_t a1)
{
  sub_100342CFC();
  if (os_log_type_enabled(qword_101FBA278, OS_LOG_TYPE_ERROR))
  {
    sub_10176BED8(a1);
  }
}

void sub_1003444EC(id a1)
{
  v1 = kCtLoggingSystemName;
  LogGroupName = sGetLogGroupName();
  ctu::OsLogContext::OsLogContext(v3, v1, LogGroupName);
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v3);
}

void *sub_10034454C(void *__dst, uint64_t *a2, unint64_t a3)
{
  v3 = a2;
  v5 = *(a2 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = a2[1];
    if (v5 < a3)
    {
      goto LABEL_13;
    }

    v3 = *a2;
  }

  else if (v5 < a3)
  {
LABEL_13:
    sub_10013C334();
  }

  v6 = v5 - a3;
  if (v5 - a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = v6;
  if (v5 != a3)
  {
    memmove(__dst, v3 + a3, v6);
  }

  *(__dst + v6) = 0;
  return __dst;
}

const char *sub_10034462C(int a1)
{
  if (a1)
  {
    return "Secondary";
  }

  else
  {
    return "Primary";
  }
}

void sub_100344648(uint64_t a1@<X0>, void *a2@<X8>)
{
  __p = 0;
  v29 = 0uLL;
  LODWORD(v25[0]) = 0;
  sub_100344DA8(v25);
  bzero(&v30, 0x9C0uLL);
  v4 = std::random_device::operator()(v25);
  LODWORD(v30) = v4;
  for (i = 1; i != 624; ++i)
  {
    v4 = i + 1812433253 * (v4 ^ (v4 >> 30));
    *(&v30 + i) = v4;
  }

  v48 = 0;
  v49[0] = 0x630000000ALL;
  v6 = sub_100344E1C(v49, &v30, v49);
  std::to_string(&__dst, v6);
  v7 = std::string::insert(&__dst, 0, "boundary", 8uLL);
  v8 = v7->__r_.__value_.__r.__words[0];
  *v52 = v7->__r_.__value_.__l.__size_;
  *&v52[7] = *(&v7->__r_.__value_.__r.__words[1] + 7);
  v9 = HIBYTE(v7->__r_.__value_.__r.__words[2]);
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  std::random_device::~random_device(v25);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p);
  }

  __p = v8;
  *&v29 = *v52;
  *(&v29 + 7) = *&v52[7];
  HIBYTE(v29) = v9;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  *v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  *__src = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  sub_10000C320(&v30);
  v27[0] = &v30;
  v27[1] = &__p;
  sub_100344C70(v27, a1);
  sub_100917E0C(&v30);
  sub_100344C70(v27, a1 + 104);
  v10 = sub_10000501C(v52, "--");
  if (v29 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v29 >= 0)
  {
    v12 = HIBYTE(v29);
  }

  else
  {
    v12 = v29;
  }

  v13 = std::string::append(v10, p_p, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  __dst.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&__dst.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  sub_10000501C(v49, "--");
  if ((v50 & 0x80u) == 0)
  {
    v15 = v49;
  }

  else
  {
    v15 = v49[0];
  }

  if ((v50 & 0x80u) == 0)
  {
    v16 = v50;
  }

  else
  {
    v16 = v49[1];
  }

  v17 = std::string::append(&__dst, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v26 = v17->__r_.__value_.__r.__words[2];
  *v25 = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v53 < 0)
  {
    operator delete(*v52);
  }

  if (v26 >= 0)
  {
    v19 = v25;
  }

  else
  {
    v19 = v25[0];
  }

  if (v26 >= 0)
  {
    v20 = HIBYTE(v26);
  }

  else
  {
    v20 = v25[1];
  }

  sub_10000C030(&v31, v19, v20);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if ((BYTE8(v37) & 0x10) != 0)
  {
    v22 = v37;
    if (v37 < __src[1])
    {
      *&v37 = __src[1];
      v22 = __src[1];
    }

    v23 = __src[0];
  }

  else
  {
    if ((BYTE8(v37) & 8) == 0)
    {
      v21 = 0;
      *(&__dst.__r_.__value_.__s + 23) = 0;
      goto LABEL_46;
    }

    v23 = *(&v32 + 1);
    v22 = *(&v33 + 1);
  }

  v21 = v22 - v23;
  if ((v22 - v23) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v21 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v22 - v23;
  if (v21)
  {
    memmove(&__dst, v23, v21);
  }

LABEL_46:
  __dst.__r_.__value_.__s.__data_[v21] = 0;
  sub_100C180E0(a2, &__dst);
  std::operator+<char>();
  sub_100C18408(a2 + 5, v52);
  if (v53 < 0)
  {
    operator delete(*v52);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  *&v31 = v24;
  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35[1]);
  }

  std::locale::~locale(&v32);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p);
  }
}