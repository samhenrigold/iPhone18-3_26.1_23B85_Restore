void sub_1012C2BF4(void *a1, unsigned int a2, unsigned int a3, uint64_t a4, char *a5, uint64_t a6)
{
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  if (a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = "";
  }

  sub_10000501C(__p, v11);
  v15 = a1;
  v16 = a2;
  v17 = a3;
  sub_1000AE428(&v18, a4);
  if (SHIBYTE(v14) < 0)
  {
    sub_100005F2C(&v19, __p[0], __p[1]);
  }

  else
  {
    v19 = *__p;
    v20 = v14;
  }

  sub_1000224C8(&v21, a6);
  v12 = a1[2];
  if (v12)
  {
    if (std::__shared_weak_count::lock(v12))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C2DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  sub_10034F8E8(v45 + 16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1012C2E34(uint64_t a1)
{
  sub_10000FF50(a1 + 200);
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

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

  return a1;
}

void sub_1012C2EC0(void *a1, int a2)
{
  v2 = a1[2];
  if (v2)
  {
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C2FB0(void *a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  sub_1000224C8(&v7, a3);
  v4 = a1[2];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C30F4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1012C310C(void *a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  sub_100DDDB74(&v7, a3);
  v4 = a1[2];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C3250(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1012C3268(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  sub_1012CC8F0(&v9, a4);
  v5 = a1[2];
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C33A0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1012C33B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v4 = (*(*a1 + 256))();
  if (v4)
  {
    CSIPhoneNumber::CSIPhoneNumber();
  }

  else
  {
    CSIPhoneNumber::CSIPhoneNumber(&v9);
  }

  *a3 = *&v9.var0;
  if (*(a3 + 31) < 0)
  {
    operator delete(*(a3 + 8));
  }

  *(a3 + 8) = v9.var2;
  *(&v9.var2.__rep_.__l + 23) = 0;
  v9.var2.__rep_.__s.__data_[0] = 0;
  if (*(a3 + 55) < 0)
  {
    operator delete(*(a3 + 32));
  }

  *(a3 + 32) = v10;
  *(a3 + 48) = v11;
  HIBYTE(v11) = 0;
  LOBYTE(v10) = 0;
  *(a3 + 56) = v12;
  *(a3 + 60) = v13;
  if (*(a3 + 87) < 0)
  {
    operator delete(*(a3 + 64));
  }

  *(a3 + 64) = v14;
  v5 = v15;
  HIBYTE(v15) = 0;
  LOBYTE(v14) = 0;
  v6 = v16;
  *(a3 + 80) = v5;
  *(a3 + 88) = v6;
  *(a3 + 96) = v17;
  if (*(a3 + 127) < 0)
  {
    operator delete(*(a3 + 104));
  }

  *(a3 + 104) = __p;
  *(a3 + 120) = v19;
  HIBYTE(v19) = 0;
  LOBYTE(__p) = 0;
  if (*(a3 + 151) < 0)
  {
    operator delete(*(a3 + 128));
    v7 = SHIBYTE(v19);
    *(a3 + 128) = v20;
    *(a3 + 144) = v21;
    HIBYTE(v21) = 0;
    LOBYTE(v20) = 0;
    *(a3 + 152) = v22;
    if (v7 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *(a3 + 128) = v20;
    *(a3 + 144) = v21;
    HIBYTE(v21) = 0;
    LOBYTE(v20) = 0;
    *(a3 + 152) = v22;
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10);
  }

  if (*(&v9.var2.__rep_.__l + 23) < 0)
  {
    operator delete(v9.var2.__rep_.__l.__data_);
  }

  if (SBYTE7(v24) < 0)
  {
    operator delete(v23);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v27);
  }

  return v4;
}

void sub_1012C35F0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_1012C3620(void *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C3720(void *a1, int a2, __int128 *a3, uint64_t a4)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v7, *a3, *(a3 + 1));
  }

  else
  {
    *v7 = *a3;
    v7[2] = *(a3 + 2);
  }

  sub_1000AE428(&v8, a4);
  v6 = a1[2];
  if (v6)
  {
    if (std::__shared_weak_count::lock(v6))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C38F4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 39) < 0)
  {
    operator delete(*(v17 + 16));
  }

  sub_10004F058(a1);
}

void sub_1012C3934(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000AE428(&v6, a3);
  v5 = a1[2];
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C3B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012C3B50(void *a1, int a2, uint64_t a3)
{
  sub_1000AE428(&v5, a3);
  v4 = a1[2];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1012C3CB8(uint64_t a1, int a2, uint64_t a3)
{
  v7 = a2;
  v6[0] = a1;
  v6[1] = &v7;
  v6[2] = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_1012CD278;
  v8[3] = &unk_101F28318;
  v8[4] = a1 + 8;
  v8[5] = v6;
  v9 = v8;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    v16 = 0;
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10006A404;
    v13 = &unk_101F282F8;
    v14 = &v16;
    v15 = &v9;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v16 = 0;
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_1000594A8;
    v13 = &unk_101F282D8;
    v14 = &v16;
    v15 = &v9;
    dispatch_sync(v3, &block);
  }

  return v16 & 1;
}

uint64_t sub_1012C3DF4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 256);
  v3 = (result + 264);
  if (v2 != (result + 264))
  {
    v4 = result;
    v5 = (a2 + 8);
    while (1)
    {
      v6 = *v5;
      v7 = *(v2 + 7);
      if (!*v5)
      {
        goto LABEL_12;
      }

      v8 = v5;
      do
      {
        if (*(v6 + 28) >= v7)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 28) < v7));
      }

      while (v6);
      if (v8 == v5 || v7 < *(v8 + 7))
      {
        goto LABEL_12;
      }

      result = operator==();
      if ((result & 1) == 0)
      {
        break;
      }

LABEL_13:
      v13 = v2[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v2[2];
          v15 = *v14 == v2;
          v2 = v14;
        }

        while (!v15);
      }

      v2 = v14;
      if (v14 == v3)
      {
        return result;
      }
    }

    v7 = *(v2 + 7);
LABEL_12:
    v9 = ConnectionAvailabilityContainer::available();
    v10 = ConnectionAvailabilityContainer::error() != 96;
    (*(**(v4 + 104) + 72))(*(v4 + 104), v7, v9 | (v10 << 8));
    v11 = ConnectionAvailabilityContainer::available();
    v12 = ConnectionAvailabilityContainer::error() != 96;
    result = (*(**(v4 + 104) + 80))(*(v4 + 104), v7, v11 | (v12 << 8));
    goto LABEL_13;
  }

  return result;
}

void sub_1012C3F70(void *a1, int a2)
{
  v2 = a1[2];
  if (v2)
  {
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1012C4060(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v7[0] = a1;
  v7[1] = &v8;
  v7[2] = a3;
  v7[3] = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_1012CD81C;
  v9[3] = &unk_101F28338;
  v9[4] = a1 + 8;
  v9[5] = v7;
  v10 = v9;
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  if (*(v5 + 8))
  {
    v17 = 0;
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_10006A404;
    v14 = &unk_101F282F8;
    v15 = &v17;
    v16 = &v10;
    dispatch_async_and_wait(v4, &block);
  }

  else
  {
    v17 = 0;
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_1000594A8;
    v14 = &unk_101F282D8;
    v15 = &v17;
    v16 = &v10;
    dispatch_sync(v4, &block);
  }

  return v17 & 1;
}

void sub_1012C419C(void *a1, int a2, int *a3)
{
  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1012C4290(uint64_t a1, int a2, int a3, int a4)
{
  v9 = a3;
  v10 = a2;
  v8 = a4;
  v7[0] = a1;
  v7[1] = &v10;
  v7[2] = &v9;
  v7[3] = &v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_1012CDAC0;
  v11[3] = &unk_101F28358;
  v11[4] = a1 + 8;
  v11[5] = v7;
  v12 = v11;
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  if (*(v5 + 8))
  {
    v19 = 0;
    block = _NSConcreteStackBlock;
    v14 = 0x40000000;
    v15 = sub_10006A404;
    v16 = &unk_101F282F8;
    v17 = &v19;
    v18 = &v12;
    dispatch_async_and_wait(v4, &block);
  }

  else
  {
    v19 = 0;
    block = _NSConcreteStackBlock;
    v14 = 0x40000000;
    v15 = sub_1000594A8;
    v16 = &unk_101F282D8;
    v17 = &v19;
    v18 = &v12;
    dispatch_sync(v4, &block);
  }

  return v19 & 1;
}

void sub_1012C43D8(void *a1, int a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v10 = *(a3 + 16);
  }

  v11 = a4;
  v12 = a5;
  v8 = a1[2];
  if (v8)
  {
    if (std::__shared_weak_count::lock(v8))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1012C454C(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  v10 = a4;
  v11 = a2;
  v9 = a5;
  v8[0] = a1;
  v8[1] = &v11;
  v8[2] = a3;
  v8[3] = &v10;
  v8[4] = &v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 0x40000000;
  v12[2] = sub_1012CDDAC;
  v12[3] = &unk_101F28378;
  v12[4] = a1 + 8;
  v12[5] = v8;
  v13 = v12;
  v6 = a1 + 24;
  v5 = *(a1 + 24);
  if (*(v6 + 8))
  {
    v20 = 0;
    block = _NSConcreteStackBlock;
    v15 = 0x40000000;
    v16 = sub_10006A404;
    v17 = &unk_101F282F8;
    v18 = &v20;
    v19 = &v13;
    dispatch_async_and_wait(v5, &block);
  }

  else
  {
    v20 = 0;
    block = _NSConcreteStackBlock;
    v15 = 0x40000000;
    v16 = sub_1000594A8;
    v17 = &unk_101F282D8;
    v18 = &v20;
    v19 = &v13;
    dispatch_sync(v5, &block);
  }

  return v20 & 1;
}

void sub_1012C4698(void *a1, int a2, _BYTE *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v11 = *(a4 + 16);
  }

  v12 = a5;
  v13 = a6;
  v9 = a1[2];
  if (v9)
  {
    if (std::__shared_weak_count::lock(v9))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C4814(void *a1, int a2, int a3)
{
  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1012C4908(uint64_t a1, int a2)
{
  v6 = a2;
  v5[0] = a1;
  v5[1] = &v6;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1012CE354;
  v7[3] = &unk_101F28398;
  v7[4] = a1 + 8;
  v7[5] = v5;
  v8 = v7;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10006A404;
    v12 = &unk_101F282F8;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1000594A8;
    v12 = &unk_101F282D8;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15 & 1;
}

void sub_1012C4A40(void *a1, int a2, char a3, int a4)
{
  v4 = a1[2];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1012C4B44(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v8 = a4;
  v9 = a2;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = a3;
  v7[3] = &v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_1012CE648;
  v10[3] = &unk_101F283B8;
  v10[4] = a1 + 8;
  v10[5] = v7;
  v11 = v10;
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  if (*(v5 + 8))
  {
    v18 = 0;
    block = _NSConcreteStackBlock;
    v13 = 0x40000000;
    v14 = sub_10006A404;
    v15 = &unk_101F282F8;
    v16 = &v18;
    v17 = &v11;
    dispatch_async_and_wait(v4, &block);
  }

  else
  {
    v18 = 0;
    block = _NSConcreteStackBlock;
    v13 = 0x40000000;
    v14 = sub_1000594A8;
    v15 = &unk_101F282D8;
    v16 = &v18;
    v17 = &v11;
    dispatch_sync(v4, &block);
  }

  return v18 & 1;
}

void sub_1012C4C84(void *a1, int a2, int a3)
{
  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1012C4D78(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v8 = a4;
  v9 = a2;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = a3;
  v7[3] = &v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_1012CEA18;
  v10[3] = &unk_101F283D8;
  v10[4] = a1 + 8;
  v10[5] = v7;
  v11 = v10;
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  if (*(v5 + 8))
  {
    v18 = 0;
    block = _NSConcreteStackBlock;
    v13 = 0x40000000;
    v14 = sub_10006A404;
    v15 = &unk_101F282F8;
    v16 = &v18;
    v17 = &v11;
    dispatch_async_and_wait(v4, &block);
  }

  else
  {
    v18 = 0;
    block = _NSConcreteStackBlock;
    v13 = 0x40000000;
    v14 = sub_1000594A8;
    v15 = &unk_101F282D8;
    v16 = &v18;
    v17 = &v11;
    dispatch_sync(v4, &block);
  }

  return v18 & 1;
}

void sub_1012C4EB8(void *a1, int a2)
{
  v2 = a1[2];
  if (v2)
  {
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1012C4FA8(uint64_t a1, int a2, uint64_t a3)
{
  v7 = a2;
  v6[0] = a1;
  v6[1] = &v7;
  v6[2] = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_1012CECD4;
  v8[3] = &unk_101F283F8;
  v8[4] = a1 + 8;
  v8[5] = v6;
  v9 = v8;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    v16 = 0;
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10006A404;
    v13 = &unk_101F282F8;
    v14 = &v16;
    v15 = &v9;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v16 = 0;
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_1000594A8;
    v13 = &unk_101F282D8;
    v14 = &v16;
    v15 = &v9;
    dispatch_sync(v3, &block);
  }

  return v16 & 1;
}

void sub_1012C50E4(void *a1, int a2, int a3, int a4)
{
  v4 = a1[2];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C51E8(void *a1, unsigned int a2, _BYTE *a3, uint64_t a4, _BYTE *a5, int a6, int a7)
{
  *v23 = 0u;
  v24 = 0u;
  *v21 = 0u;
  v22 = 0u;
  *v19 = 0u;
  v20 = 0u;
  *v17 = 0u;
  v18 = 0u;
  memset(&v16, 0, sizeof(v16));
  if (a4)
  {
    sub_1000AE428(&v16, a4);
    if (!a5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    CSIPhoneNumber::CSIPhoneNumber(&v16, "");
    if (!a5)
    {
LABEL_4:
      sub_1000AE428(&v12, &v16);
      v13 = a5;
      v14 = a6;
      v15 = a7;
      v11 = a1[2];
      if (v11)
      {
        if (std::__shared_weak_count::lock(v11))
        {
          operator new();
        }
      }

      sub_100013CC4();
    }
  }

  LOBYTE(a5) = *a5;
  goto LABEL_4;
}

void sub_1012C549C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_10034F8E8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1012C54B4(uint64_t a1, int a2, _BYTE *a3, uint64_t a4, _BYTE *a5, int a6, int a7)
{
  v32 = a2;
  v30 = a7;
  v31 = a6;
  CSIPhoneNumber::CSIPhoneNumber(&v16);
  *a4 = *&v16.var0;
  if (*(a4 + 31) < 0)
  {
    operator delete(*(a4 + 8));
  }

  *(a4 + 8) = v16.var2;
  *(&v16.var2.__rep_.__l + 23) = 0;
  v16.var2.__rep_.__s.__data_[0] = 0;
  if (*(a4 + 55) < 0)
  {
    operator delete(*(a4 + 32));
  }

  *(a4 + 32) = v17;
  *(a4 + 48) = v18;
  HIBYTE(v18) = 0;
  LOBYTE(v17) = 0;
  *(a4 + 56) = v19;
  *(a4 + 60) = v20;
  if (*(a4 + 87) < 0)
  {
    operator delete(*(a4 + 64));
  }

  *(a4 + 64) = v21;
  v11 = v22;
  HIBYTE(v22) = 0;
  LOBYTE(v21) = 0;
  v12 = v23;
  *(a4 + 80) = v11;
  *(a4 + 88) = v12;
  *(a4 + 96) = v24;
  if (*(a4 + 127) < 0)
  {
    operator delete(*(a4 + 104));
  }

  *(a4 + 104) = __p;
  *(a4 + 120) = v26;
  HIBYTE(v26) = 0;
  LOBYTE(__p) = 0;
  if (*(a4 + 151) < 0)
  {
    operator delete(*(a4 + 128));
    v13 = SHIBYTE(v26);
    *(a4 + 128) = v27;
    *(a4 + 144) = v28;
    HIBYTE(v28) = 0;
    LOBYTE(v27) = 0;
    *(a4 + 152) = v29;
    if (v13 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *(a4 + 128) = v27;
    *(a4 + 144) = v28;
    HIBYTE(v28) = 0;
    LOBYTE(v27) = 0;
    *(a4 + 152) = v29;
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17);
  }

  if (*(&v16.var2.__rep_.__l + 23) < 0)
  {
    operator delete(v16.var2.__rep_.__l.__data_);
  }

  *a3 = 0;
  *a5 = 0;
  *&v16.var0 = a1;
  v16.var2.__rep_.__l.__data_ = &v32;
  v16.var2.__rep_.__l.__size_ = a3;
  *(&v16.var2.__rep_.__l + 2) = a4;
  *&v17 = a5;
  *(&v17 + 1) = &v31;
  v18 = &v30;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 0x40000000;
  v33[2] = sub_1012CF454;
  v33[3] = &unk_101F28418;
  v33[4] = a1 + 8;
  v33[5] = &v16;
  v34 = v33;
  v14 = *(a1 + 24);
  if (*(a1 + 32))
  {
    v41 = 0;
    block = _NSConcreteStackBlock;
    v36 = 0x40000000;
    v37 = sub_10006A404;
    v38 = &unk_101F282F8;
    v39 = &v41;
    v40 = &v34;
    dispatch_async_and_wait(v14, &block);
  }

  else
  {
    v41 = 0;
    block = _NSConcreteStackBlock;
    v36 = 0x40000000;
    v37 = sub_1000594A8;
    v38 = &unk_101F282D8;
    v39 = &v41;
    v40 = &v34;
    dispatch_sync(v14, &block);
  }

  return v41 & 1;
}

uint64_t sub_1012C579C(uint64_t a1, int a2)
{
  v6 = a2;
  v5[0] = a1;
  v5[1] = &v6;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1012CF660;
  v7[3] = &unk_101F28438;
  v7[4] = a1 + 8;
  v7[5] = v5;
  v8 = v7;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1012CF894;
    v12 = &unk_101F28478;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1012CF858;
    v12 = &unk_101F28458;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15;
}

void sub_1012C58D0(void *a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  sub_1008C3488(&v7, a3);
  v4 = a1[2];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C5A14(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1012C5A2C(uint64_t a1, int a2, uint64_t a3)
{
  v7 = a2;
  v6[0] = a1;
  v6[1] = &v7;
  v6[2] = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_1012CFB48;
  v8[3] = &unk_101F28498;
  v8[4] = a1 + 8;
  v8[5] = v6;
  v9 = v8;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    v16 = 0;
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10006A404;
    v13 = &unk_101F282F8;
    v14 = &v16;
    v15 = &v9;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v16 = 0;
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_1000594A8;
    v13 = &unk_101F282D8;
    v14 = &v16;
    v15 = &v9;
    dispatch_sync(v3, &block);
  }

  return v16 & 1;
}

uint64_t sub_1012C5B68(uint64_t a1)
{
  subscriber::makeSimSlotRange();
  v2 = v16;
  if (v16 != v17)
  {
    do
    {
      if (v18(*v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != v17);
    if (v2 != v17)
    {
      v3 = (a1 + 648);
      do
      {
        v4 = *v2;
        v5 = (*(**(a1 + 48) + 16))(*(a1 + 48), v4);
        v6 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          v7 = sub_10006BB14(a1, v4);
          v8 = sub_100072578(v7);
          *buf = 136315138;
          v20 = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Device type: %s", buf, 0xCu);
          v6 = *v5;
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          sub_100D7E8D8(*(a1 + 464), v4);
          v9 = subscriber::asString();
          *buf = 136315138;
          v20 = v9;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I fSimTypeGw: %s", buf, 0xCu);
          v6 = *v5;
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          sub_100D7E8D8(*(a1 + 488), v4);
          v10 = subscriber::asString();
          *buf = 136315138;
          v20 = v10;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I fSimType1x: %s", buf, 0xCu);
        }

        v11 = *v3;
        if (!*v3)
        {
          goto LABEL_19;
        }

        v12 = a1 + 648;
        do
        {
          if (*(v11 + 28) >= v4)
          {
            v12 = v11;
          }

          v11 = *(v11 + 8 * (*(v11 + 28) < v4));
        }

        while (v11);
        if (v12 == v3 || v4 < *(v12 + 28))
        {
LABEL_19:
          v12 = a1 + 648;
        }

        v13 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          if (v12 == v3)
          {
            v14 = "-";
          }

          else
          {
            v14 = sub_10006BBEC(*(v12 + 32));
          }

          *buf = 136315138;
          v20 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I fLastPhoneNumberEventsLocation: %s", buf, 0xCu);
        }

        do
        {
          ++v2;
        }

        while (v2 != v17 && (v18(*v2) & 1) == 0);
      }

      while (v2 != v17);
    }
  }

  result = *(a1 + 120);
  if (result)
  {
    return (*(*result + 184))(result);
  }

  return result;
}

void sub_1012C5E48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 184);
  v3 = (a1 + 192);
  if (v2 != (a1 + 192))
  {
    v5 = (a2 + 8);
    do
    {
      v6 = *v5;
      if (!*v5)
      {
        goto LABEL_22;
      }

      v7 = *(v2 + 8);
      v8 = v5;
      do
      {
        if (*(v6 + 32) >= v7)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 32) < v7));
      }

      while (v6);
      if (v8 == v5 || v7 < *(v8 + 8) || (rest::operator==() & 1) == 0)
      {
LABEL_22:
        if (*(v2 + 40))
        {
          v9 = *(v2 + 8);
          sub_1012C7584(a1, v9, "handleCarrierBundlesSetup_sync");
          v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v9);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = asString();
            v12 = asString();
            *buf = 136315394;
            v17 = v11;
            v18 = 2080;
            v19 = v12;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Carrier bundle change type (%s) technology type (%s)", buf, 0x16u);
          }
        }
      }

      v13 = v2[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v2[2];
          v15 = *v14 == v2;
          v2 = v14;
        }

        while (!v15);
      }

      v2 = v14;
    }

    while (v14 != v3);
  }
}

void sub_1012C6020(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 208);
  v3 = (a1 + 216);
  if (v2 != (a1 + 216))
  {
    v5 = (a2 + 8);
    do
    {
      v6 = *v5;
      v7 = *(v2 + 7);
      if (!*v5)
      {
        goto LABEL_11;
      }

      v8 = v5;
      do
      {
        if (*(v6 + 28) >= v7)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 28) < v7));
      }

      while (v6);
      if (v8 == v5 || v7 < *(v8 + 7) || *(v2 + 8) != *(v8 + 8))
      {
LABEL_11:
        v9 = *(v2 + 8);
        sub_1012C7584(a1, *(v2 + 7), "handleDeviceTypesChanged_sync");
        v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v7);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = sub_100072578(v9);
          *buf = 136315138;
          v16 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I device type changed %s", buf, 0xCu);
        }
      }

      v12 = v2[1];
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
        do
        {
          v13 = v2[2];
          v14 = *v13 == v2;
          v2 = v13;
        }

        while (!v14);
      }

      v2 = v13;
    }

    while (v13 != v3);
  }
}

void sub_1012C61D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 232);
  v16 = (a1 + 240);
  if (v2 != (a1 + 240))
  {
    v4 = (a2 + 8);
    while (1)
    {
      v5 = *v4;
      v6 = *(v2 + 8);
      if (!*v4)
      {
        goto LABEL_12;
      }

      v7 = v4;
      do
      {
        if (*(v5 + 32) >= v6)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < v6));
      }

      while (v5);
      if (v7 == v4 || v6 < *(v7 + 8))
      {
        goto LABEL_12;
      }

      if ((BasicSimInfo::operator==() & 1) == 0)
      {
        break;
      }

LABEL_40:
      v13 = v2[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v2[2];
          v15 = *v14 == v2;
          v2 = v14;
        }

        while (!v15);
      }

      v2 = v14;
      if (v14 == v16)
      {
        return;
      }
    }

    v6 = *(v2 + 8);
LABEL_12:
    sub_100032BFC(&v17, (v2 + 5));
    if (subscriber::isSimSettled())
    {
      if (subscriber::isSimReady())
      {
        (*(**(a1 + 104) + 296))(*(a1 + 104), v17);
      }

      if (subscriber::isSimAbsent())
      {
        sub_1012C8168(a1, v6, 1, 0, v18);
        sub_1012C8168(a1, v6, 2, 0, v18);
      }

      v8 = v19;
      v9 = v20;
      if (v19 == v20)
      {
        goto LABEL_27;
      }

      v10 = 0;
      do
      {
        while (1)
        {
          v11 = *v8;
          if ((subscriber::getSimCardForSimApp() & 0x1FFFFFFFFLL) == 0x100000001)
          {
            sub_1012C8168(a1, v6, 1, v11, v18);
          }

          if ((subscriber::getSimCardForSimApp() & 0x1FFFFFFFFLL) != 0x100000002)
          {
            break;
          }

          sub_1012C8168(a1, v6, 2, v11, v18);
          ++v8;
          v10 = 1;
          if (v8 == v9)
          {
            goto LABEL_28;
          }
        }

        ++v8;
      }

      while (v8 != v9);
      if ((v10 & 1) == 0)
      {
LABEL_27:
        sub_1012C8168(a1, v6, 2, 0, 1);
      }

LABEL_28:
      *buf = 0;
      v31 = 0;
      v32 = 0;
      sub_1012C91AC(a1, v6, buf, 0);
      v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v6);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I sim updated", buf, 2u);
      }
    }

    if (v29 < 0)
    {
      operator delete(__p);
    }

    if (v27 < 0)
    {
      operator delete(v26);
    }

    if (v25 < 0)
    {
      operator delete(v24);
    }

    if (v23 < 0)
    {
      operator delete(v22);
    }

    *buf = &v21;
    sub_100034D1C(buf);
    if (v19)
    {
      v20 = v19;
      operator delete(v19);
    }

    goto LABEL_40;
  }
}

void sub_1012C6500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100D1F238(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1012C654C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 24) == 2 && !*(*a3 + 49))
  {
    v25 = 1;
    v27 = 0u;
    v28 = 0;
    v26 = a1 + 504;
    sub_101257DBC(&v27, a1 + 536);
    sub_1012D26A0(&v27, *(*a3 + 52));
    v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(*a3 + 52));
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = (*a3 + 24);
      v8 = *(*a3 + 47);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(*a3 + 32);
      }

      if (v9 < 0)
      {
        v7 = *(*a3 + 24);
      }

      if (!v8)
      {
        v7 = "<invalid>";
      }

      *buf = 136315138;
      v30 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I cleaning phone_numbers for [%s]", buf, 0xCu);
    }

    sub_1012D26A0((a1 + 560), *(*a3 + 52));
    sub_1012D2528(&v25);
  }

  result = *(a1 + 88);
  if (result)
  {
    result = (*(*result + 128))(result, a2, a3);
  }

  if (*(a2 + 24) == 6 && !*(*a3 + 49))
  {
    v25 = 1;
    v27 = 0u;
    v28 = 0;
    v26 = a1 + 584;
    sub_1012D2780(&v27, (a1 + 616));
    v11 = *(&v27 + 1);
    if (*(&v27 + 1))
    {
      v12 = *a3;
      v13 = &v27 + 1;
      do
      {
        v14 = v13;
        v15 = (v11 + 32);
        v16 = sub_1000068BC((v11 + 32), (v12 + 24));
        if ((v16 & 0x80u) == 0)
        {
          v13 = v11;
        }

        v11 = *(v11 + ((v16 >> 4) & 8));
      }

      while (v11);
      if (v13 != (&v27 + 8))
      {
        if ((v16 & 0x80u) != 0)
        {
          v15 = (v14 + 4);
        }

        if ((sub_1000068BC((v12 + 24), v15) & 0x80) == 0)
        {
          v17 = v13[1];
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
            v19 = v13;
            do
            {
              v18 = v19[2];
              v20 = *v18 == v19;
              v19 = v18;
            }

            while (!v20);
          }

          if (v27 == v13)
          {
            *&v27 = v18;
          }

          --v28;
          sub_100018288(*(&v27 + 1), v13);
          sub_1012C9C00(v15);
          operator delete(v13);
        }
      }
    }

    v21 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(*a3 + 52));
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = (*a3 + 24);
      v23 = *(*a3 + 47);
      v24 = v23;
      if ((v23 & 0x80u) != 0)
      {
        v23 = *(*a3 + 32);
      }

      if (v24 < 0)
      {
        v22 = *(*a3 + 24);
      }

      if (!v23)
      {
        v22 = "<invalid>";
      }

      *buf = 136315138;
      v30 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I cleaning personalized_phone_numbers for [%s]", buf, 0xCu);
    }

    return sub_1012D2954(&v25);
  }

  return result;
}

void sub_1012C68F4(uint64_t a1, uint64_t a2)
{
  v4 = PersonalityIDToSimSlot();
  v5 = (*(**(a1 + 48) + 16))(*(a1 + 48), v4);
  v6 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_100C1D0B0(a2, &__p);
    v7 = __p.var2.__rep_.__s.__data_[15] >= 0 ? &__p : *&__p.var0;
    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I received P-Associated-URI: %s", buf, 0xCu);
    if (__p.var2.__rep_.__s.__data_[15] < 0)
    {
      operator delete(*&__p.var0);
    }
  }

  v8 = *(a1 + 544);
  if (v8)
  {
    v9 = a1 + 544;
    do
    {
      if (*(v8 + 32) >= v4)
      {
        v9 = v8;
      }

      v8 = *(v8 + 8 * (*(v8 + 32) < v4));
    }

    while (v8);
    if (v9 != a1 + 544 && v4 >= *(v9 + 32) && *(v9 + 120) == 1)
    {
      if (*(v9 + 88) >= 5)
      {
        v10 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          v11 = (v9 + 64);
          if (*(v9 + 87) < 0)
          {
            v11 = *v11;
          }

          v12 = asString();
          __p.var0 = 136315394;
          *&__p.var1 = v11;
          WORD2(__p.var2.__rep_.__l.__data_) = 2080;
          *(&__p.var2.__rep_.__l.__data_ + 6) = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Current trusted phone number has higher priority: %s (%s). Not updating.", &__p, 0x16u);
        }

        return;
      }

      memset(&__dst, 0, sizeof(__dst));
      if (*(v9 + 119) < 0)
      {
        sub_100005F2C(&__dst, *(v9 + 96), *(v9 + 104));
      }

      else
      {
        __dst = *(v9 + 96);
      }

      v14 = (v9 + 40);
      *buf = 0u;
      v68 = 0u;
      CSIPhoneNumber::CSIPhoneNumber();
      CSIPhoneNumber::getFullNumber(buf, &__p);
      DWORD2(v68) = 0;
      if (v66 < 0)
      {
        operator delete(v65);
      }

      if (v64 < 0)
      {
        operator delete(v63);
      }

      if (v62 < 0)
      {
        operator delete(v61);
      }

      if (v60 < 0)
      {
        operator delete(v59);
      }

      if (*(&__p.var2.__rep_.__l + 23) < 0)
      {
        operator delete(__p.var2.__rep_.__l.__data_);
      }

      *v53 = 0u;
      v54 = 0u;
      CSIPhoneNumber::CSIPhoneNumber();
      v15 = *(v9 + 88);
      CSIPhoneNumber::getFullNumber(v53, &__p);
      DWORD2(v54) = v15;
      if (v66 < 0)
      {
        operator delete(v65);
      }

      if (v64 < 0)
      {
        operator delete(v63);
      }

      if (v62 < 0)
      {
        operator delete(v61);
      }

      if (v60 < 0)
      {
        operator delete(v59);
      }

      if (*(&__p.var2.__rep_.__l + 23) < 0)
      {
        operator delete(__p.var2.__rep_.__l.__data_);
      }

      v16 = *(a2 + 48);
      v17 = *(a2 + 56);
      v18 = *v5;
      v19 = os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT);
      if (v16 == v17)
      {
        if (v19)
        {
          p_dst = &__dst;
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          __p.var0 = 136315138;
          *&__p.var1 = p_dst;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I P-Associated-URI was revoked, adjusting trusted phone number: %s", &__p, 0xCu);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          __dst.__r_.__value_.__l.__size_ = 0;
          v44 = __dst.__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = 0;
          v44 = &__dst;
        }

        v44->__r_.__value_.__s.__data_[0] = 0;
        goto LABEL_162;
      }

      if (v19)
      {
        v20 = v9 + 40;
        if (*(v9 + 63) < 0)
        {
          v20 = v14->__r_.__value_.__r.__words[0];
        }

        __p.var0 = 136315138;
        *&__p.var1 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Parsing P-Associated-URI, own phone number: %s", &__p, 0xCu);
        v16 = *(a2 + 48);
        v17 = *(a2 + 56);
      }

      if (v16 != v17)
      {
        while (1)
        {
          size = SHIBYTE(v16->__r_.__value_.__r.__words[2]);
          if ((size & 0x8000000000000000) != 0)
          {
            v22 = v16->__r_.__value_.__r.__words[0];
            size = v16->__r_.__value_.__l.__size_;
          }

          else
          {
            v22 = v16;
          }

          *&__p.var0 = v22;
          __p.var2.__rep_.__l.__data_ = size;
          if (sub_1006A6D04(&__p, "tel:", 4uLL))
          {
            break;
          }

          if (++v16 == v17)
          {
            v16 = *(a2 + 48);
            v17 = *(a2 + 56);
            goto LABEL_58;
          }
        }

        v45 = SHIBYTE(v16->__r_.__value_.__r.__words[2]);
        if ((v45 & 0x8000000000000000) != 0)
        {
          v45 = v16->__r_.__value_.__l.__size_;
        }

        std::string::basic_string(&v52, v16, 4uLL, v45 - 4, &__p);
        goto LABEL_149;
      }

LABEL_58:
      memset(&v52, 0, sizeof(v52));
      if (v16 == v17)
      {
LABEL_149:
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        __dst = v52;
        v46 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
        v47 = SHIBYTE(v52.__r_.__value_.__r.__words[2]);
        if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v46 = v52.__r_.__value_.__l.__size_;
        }

        v48 = *v5;
        if (v46)
        {
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v49 = __dst.__r_.__value_.__r.__words[0];
            if (v47 >= 0)
            {
              v49 = &__dst;
            }

            __p.var0 = 136315138;
            *&__p.var1 = v49;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I Trusted phone number: %s", &__p, 0xCu);
          }
        }

        else if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          LOWORD(__p.var0) = 0;
          _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Not able to parse P-Associated-URI. Revoking IMS trusted number", &__p, 2u);
        }

LABEL_162:
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v50 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v50 = __dst.__r_.__value_.__l.__size_;
        }

        if (v50)
        {
          CSIPhoneNumber::CSIPhoneNumber();
          CSIPhoneNumber::getFullNumber(v51, &__p);
          *&v51[24] = 4;
        }

        else
        {
          memset(v51, 0, sizeof(v51));
        }

        sub_1012C8A60(a1, v4, a2, buf, v53, 1, v51);
        if ((v51[23] & 0x80000000) != 0)
        {
          operator delete(*v51);
        }

        if (v50)
        {
          if (v66 < 0)
          {
            operator delete(v65);
          }

          if (v64 < 0)
          {
            operator delete(v63);
          }

          if (v62 < 0)
          {
            operator delete(v61);
          }

          if (v60 < 0)
          {
            operator delete(v59);
          }

          if (*(&__p.var2.__rep_.__l + 23) < 0)
          {
            operator delete(__p.var2.__rep_.__l.__data_);
          }
        }

        if (SBYTE7(v54) < 0)
        {
          operator delete(v53[0]);
        }

        if (SBYTE7(v68) < 0)
        {
          operator delete(*buf);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        return;
      }

      while (1)
      {
        while (1)
        {
          v23 = SHIBYTE(v16->__r_.__value_.__r.__words[2]);
          if ((v23 & 0x8000000000000000) != 0)
          {
            v24 = v16->__r_.__value_.__r.__words[0];
            v23 = v16->__r_.__value_.__l.__size_;
          }

          else
          {
            v24 = v16;
          }

          *&__p.var0 = v24;
          __p.var2.__rep_.__l.__data_ = v23;
          if (sub_1006A6D04(&__p, "sip:", 4uLL) && std::string::find(v16, 64, 0) != -1)
          {
            break;
          }

          if (++v16 == v17)
          {
            goto LABEL_149;
          }
        }

        memset(&__p, 0, 24);
        v25 = std::string::find(v16, 64, 0);
        std::string::basic_string(&__p, v16, 4uLL, v25 - 4, v51);
        if (*(v9 + 63) < 0)
        {
          v26 = *(v9 + 48);
          if (v26)
          {
            memset(v51, 0, 24);
            if (*v14->__r_.__value_.__l.__data_ == 43)
            {
LABEL_72:
              std::string::basic_string(v51, v14, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v56);
            }

            else
            {
              sub_100005F2C(v51, v14->__r_.__value_.__l.__data_, v26);
            }

LABEL_81:
            memset(&v56, 0, sizeof(v56));
            if (__p.var2.__rep_.__s.__data_[15] < 0)
            {
              if (!__p.var2.__rep_.__l.__data_ || **&__p.var0 != 43)
              {
                sub_100005F2C(&v56, *&__p.var0, __p.var2.__rep_.__l.__data_);
                goto LABEL_89;
              }
            }

            else if (!__p.var2.__rep_.__s.__data_[15] || LOBYTE(__p.var0) != 43)
            {
              *&v56.__r_.__value_.__l.__data_ = *&__p.var0;
              v56.__r_.__value_.__r.__words[2] = __p.var2.__rep_.__l.__size_;
LABEL_89:
              v28 = __p.var2.__rep_.__s.__data_[15];
              data = __p.var2.__rep_.__l.__data_;
              if (__p.var2.__rep_.__s.__data_[15] >= 0)
              {
                v30 = __p.var2.__rep_.__s.__data_[15];
              }

              else
              {
                v30 = __p.var2.__rep_.__l.__data_;
              }

              v31 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
              if (v30 < 5)
              {
                goto LABEL_121;
              }

              if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v32 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v32 = v56.__r_.__value_.__l.__size_;
              }

              v33 = v51[23];
              if (v51[23] < 0)
              {
                v33 = *&v51[8];
              }

              if (v32 != v33)
              {
                goto LABEL_121;
              }

              v34 = (v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v56 : v56.__r_.__value_.__r.__words[0];
              v35 = v51[23] >= 0 ? v51 : *v51;
              if (memcmp(v34, v35, v32))
              {
                goto LABEL_121;
              }

              if (*(v9 + 63) < 0)
              {
                v36 = (v9 + 40);
                if (!*(v9 + 48))
                {
                  goto LABEL_112;
                }

                v37 = *(v9 + 40);
              }

              else
              {
                v36 = (v9 + 40);
                v37 = (v9 + 40);
                if (!*(v9 + 63))
                {
LABEL_112:
                  v38 = v36;
                  if (v28 < 0)
                  {
                    if (data)
                    {
                      p_p = *&__p.var0;
                      goto LABEL_117;
                    }
                  }

                  else if (v28)
                  {
                    p_p = &__p;
LABEL_117:
                    if (LOBYTE(p_p->var0) == 43)
                    {
                      v38 = &__p;
                    }

                    else
                    {
                      v38 = v36;
                    }
                  }

LABEL_120:
                  std::string::operator=(&v52, v38);
                  v31 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
LABEL_121:
                  if (v31 < 0)
                  {
                    operator delete(v56.__r_.__value_.__l.__data_);
                  }

                  if ((v51[23] & 0x80000000) != 0)
                  {
                    operator delete(*v51);
                  }

                  v14 = (v9 + 40);
                  goto LABEL_126;
                }
              }

              v38 = v36;
              if (*v37 != 43)
              {
                goto LABEL_112;
              }

              goto LABEL_120;
            }

            std::string::basic_string(&v56, &__p, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v57);
            goto LABEL_89;
          }
        }

        else if (*(v9 + 63))
        {
          memset(v51, 0, 24);
          if (v14->__r_.__value_.__s.__data_[0] == 43)
          {
            goto LABEL_72;
          }

          *v51 = *&v14->__r_.__value_.__l.__data_;
          *&v51[16] = *(&v14->__r_.__value_.__l + 2);
          goto LABEL_81;
        }

        if (__p.var2.__rep_.__s.__data_[15] < 0)
        {
          if (!__p.var2.__rep_.__l.__data_)
          {
            goto LABEL_126;
          }

          v27 = *&__p.var0;
        }

        else
        {
          if (!__p.var2.__rep_.__s.__data_[15])
          {
            goto LABEL_126;
          }

          v27 = &__p;
        }

        if (LOBYTE(v27->var0) == 43)
        {
          std::string::operator=(&v52, &__p);
        }

LABEL_126:
        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          if (!v52.__r_.__value_.__l.__size_)
          {
LABEL_132:
            v41 = 0;
            goto LABEL_133;
          }

          v40 = v52.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (!*(&v52.__r_.__value_.__s + 23))
          {
            goto LABEL_132;
          }

          v40 = &v52;
        }

        v41 = v40->__r_.__value_.__s.__data_[0] == 43;
LABEL_133:
        if (__p.var2.__rep_.__s.__data_[15] < 0)
        {
          operator delete(*&__p.var0);
        }

        ++v16;
        v42 = v16 == v17 || v41;
        if (v42)
        {
          goto LABEL_149;
        }
      }
    }
  }

  v13 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p.var0) = 0;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "P-Associated-URI received, but there is no OwnPhoneNumber - dropping", &__p, 2u);
  }
}

void sub_1012C7288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (*(v51 - 121) < 0)
  {
    operator delete(*(v51 - 144));
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012C7390(void *a1, int a2, int a3, uint64_t a4)
{
  v4 = a1[2];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C7494(void *a1, int a2)
{
  v2 = a1[2];
  if (v2)
  {
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C7584(void **a1, uint64_t a2, const char *a3)
{
  (*(*a1[13] + 40))(a1[13]);
  sub_1012C7608(a1, a2, 2, a3);

  sub_1012C7A14(a1, a2);
}

void sub_1012C7608(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = a3;
  v7 = sub_10006B0A8(a1, a2);
  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  v9 = v8;
  v10 = (a1 + 648);
  v11 = *(a1 + 648);
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = a1 + 648;
  v13 = *(a1 + 648);
  do
  {
    if (*(v13 + 28) >= a2)
    {
      v12 = v13;
    }

    v13 = *(v13 + 8 * (*(v13 + 28) < a2));
  }

  while (v13);
  if (v12 != v10 && *(v12 + 28) <= a2)
  {
    v14 = *(v12 + 32);
  }

  else
  {
LABEL_8:
    v14 = 0;
  }

  if (v7 != v14)
  {
    v15 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v28 = sub_10006BBEC(v14);
      v29 = 2080;
      v30 = sub_10006BBEC(v7);
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Location for Phone Number events changed: %s -> %s.", buf, 0x16u);
      v11 = *v10;
    }
  }

  if (!v11)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v16 = v11;
      v17 = *(v11 + 7);
      if (v17 <= a2)
      {
        break;
      }

      v11 = *v11;
      if (!*v16)
      {
        goto LABEL_18;
      }
    }

    if (v17 >= a2)
    {
      break;
    }

    v11 = v11[1];
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  *(v11 + 8) = v7;
  if (v7 == 2)
  {
    if (v4 != 1 || v14 != 2)
    {
      v22 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        v23 = asString();
        *buf = 136315394;
        v28 = v23;
        v29 = 2080;
        v30 = a4;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Using Phonebook to trigger Phone Number related events. Src: %s, Reason: %s", buf, 0x16u);
      }

      (*(**(a1 + 88) + 120))(*(a1 + 88), a2);
    }
  }

  else if (v7 == 1)
  {
    if (v4 || v14 != 1)
    {
      v18 = *(a1 + 120);
      v19 = *v9;
      v20 = *v9;
      if (v18)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = asString();
          *buf = 136315394;
          v28 = v21;
          v29 = 2080;
          v30 = a4;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Using CDMA Settings to trigger Phone Number related events. Src: %s, Reason: %s", buf, 0x16u);
          v18 = *(a1 + 120);
        }

        (*(*v18 + 168))(v18, a2);
      }

      else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "CDMASettings Interface not available", buf, 2u);
      }
    }
  }

  else
  {
    v24 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      v25 = asString();
      *buf = 136315394;
      v28 = v25;
      v29 = 2080;
      v30 = a4;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#N Phone number fetched, uncertain how to trigger Phone Number related events. Src: %s, Reason: %s", buf, 0x16u);
    }
  }
}

void sub_1012C7A14(void **a1, uint64_t a2)
{
  if ((*(*a1[19] + 40))(a1[19]) == 1)
  {
    v4 = *(*a1[13] + 304);

    v4();
  }

  else
  {
    v5 = *(*(*a1[6] + 16))(a1[6], a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N Supp Services are not supported, not processing any events related", v6, 2u);
    }
  }
}

void sub_1012C7B28(uint64_t a1, char a2, char a3)
{
  v7 = a2;
  v6 = a3;
  v5[0] = a1;
  v5[1] = &v7;
  v5[2] = &v6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1012D19AC;
  block[3] = &unk_101F28A58;
  block[4] = a1 + 8;
  block[5] = v5;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }
}

void sub_1012C7BC4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a3;
  v5[0] = a1;
  v5[1] = &v7;
  v5[2] = &v6;
  v7 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1012D1AC0;
  block[3] = &unk_101F28A78;
  block[4] = a1 + 8;
  block[5] = v5;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }
}

void sub_1012C7C5C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a3;
  v5[0] = a1;
  v5[1] = &v7;
  v5[2] = &v6;
  v7 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1012D1BD4;
  block[3] = &unk_101F28A98;
  block[4] = a1 + 8;
  block[5] = v5;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }
}

void sub_1012C7CF4(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1012D1CE8;
  block[3] = &unk_101F28AB8;
  block[4] = a1 + 8;
  block[5] = v4;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

void sub_1012C7D7C(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1012D1DF4;
  block[3] = &unk_101F28AD8;
  block[4] = a1 + 8;
  block[5] = v4;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

void sub_1012C7E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v7 = a2;
  v5[0] = a1;
  v5[1] = &v7;
  v5[2] = &v6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1012D1F00;
  block[3] = &unk_101F28AF8;
  block[4] = a1 + 8;
  block[5] = v5;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }
}

void sub_1012C7E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v7 = a2;
  v5[0] = a1;
  v5[1] = &v7;
  v5[2] = &v6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1012D1FB0;
  block[3] = &unk_101F28B18;
  block[4] = a1 + 8;
  block[5] = v5;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }
}

void sub_1012C7F34(void *a1, int a2, char a3)
{
  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1012C802C(uint64_t a1, int a2, uint64_t a3)
{
  v7 = a2;
  v6[0] = a1;
  v6[1] = &v7;
  v6[2] = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_1012D2150;
  v8[3] = &unk_101F28B98;
  v8[4] = a1 + 8;
  v8[5] = v6;
  v9 = v8;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    v16 = 0;
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10006A404;
    v13 = &unk_101F282F8;
    v14 = &v16;
    v15 = &v9;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v16 = 0;
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_1000594A8;
    v13 = &unk_101F282D8;
    v14 = &v16;
    v15 = &v9;
    dispatch_sync(v3, &block);
  }

  return v16 & 1;
}

void sub_1012C8168(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v11 = *(a1 + 464);
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v10;
  v13 = a1 + 464;
  do
  {
    if (*(v11 + 28) >= a2)
    {
      v13 = v11;
    }

    v11 = *(v11 + 8 * (*(v11 + 28) < a2));
  }

  while (v11);
  if (v13 == a1 + 464 || *(v13 + 28) > a2)
  {
LABEL_8:
    v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v23 = 136315138;
    v24 = subscriber::asString();
    v17 = "Cannot find slot %s for GW type!!";
LABEL_20:
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v17, &v23, 0xCu);
    return;
  }

  v15 = *(a1 + 488);
  if (!v15)
  {
    goto LABEL_17;
  }

  v16 = a1 + 488;
  do
  {
    if (*(v15 + 28) >= a2)
    {
      v16 = v15;
    }

    v15 = *(v15 + 8 * (*(v15 + 28) < a2));
  }

  while (v15);
  if (v16 != a1 + 488 && *(v16 + 28) <= a2)
  {
    if (a3 == 2)
    {
      v18 = *(a1 + 120);
      if (v18)
      {
        if (*(v16 + 32) | a4)
        {
          (*(*v18 + 176))(v18, a2, a5);
        }
      }
    }

    if (subscriber::isSimReady())
    {
      if (a3 == 1)
      {
        if (*(v13 + 32) != a4)
        {
          v19 = *v12;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v23 = 136315394;
            v24 = subscriber::asString();
            v25 = 2080;
            v26 = subscriber::asString();
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I GW SIM type is changing from %s to %s", &v23, 0x16u);
          }

          *(v13 + 32) = a4;
          (*(**(a1 + 104) + 64))(*(a1 + 104), a2, a4);
        }
      }

      else if (a3 == 2 && *(v16 + 32) != a4)
      {
        v21 = *v12;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 136315394;
          v24 = subscriber::asString();
          v25 = 2080;
          v26 = subscriber::asString();
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I 1x SIM type is changing from %s to %s", &v23, 0x16u);
        }

        *(v16 + 32) = a4;
      }

      sub_1012C7584(a1, a2, "handleSimState_sync");
    }

    else if (subscriber::isSimAbsent())
    {
      if (a3 == 1)
      {
        if (*(v13 + 32))
        {
          v20 = *v12;
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
          {
            v23 = 136315394;
            v24 = subscriber::asString();
            v25 = 2080;
            v26 = subscriber::asString();
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I GW SIM type is changing from %s to %s", &v23, 0x16u);
          }

          *(v13 + 32) = 0;
          (*(**(a1 + 104) + 64))(*(a1 + 104), a2, 0);
        }
      }

      else if (a3 == 2 && *(v16 + 32))
      {
        v22 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 136315394;
          v24 = subscriber::asString();
          v25 = 2080;
          v26 = subscriber::asString();
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I 1x SIM type is changing from %s to %s", &v23, 0x16u);
        }

        *(v16 + 32) = 0;
      }
    }
  }

  else
  {
LABEL_17:
    v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315138;
      v24 = subscriber::asString();
      v17 = "Cannot find slot %s for 1x type!!";
      goto LABEL_20;
    }
  }
}

void sub_1012C8650(uint64_t a1, int a2)
{
  v5 = a2;
  v4[0] = a1;
  v4[1] = &v5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1012D22B8;
  block[3] = &unk_101F28BB8;
  block[4] = a1 + 8;
  block[5] = v4;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

void sub_1012C86E0(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a2;
  v5[0] = a1;
  v5[1] = a3;
  v5[2] = &v6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1012D23F0;
  block[3] = &unk_101F28BD8;
  block[4] = a1 + 8;
  block[5] = v5;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }
}

BOOL sub_1012C8774(uint64_t a1, int a2)
{
  v4 = *(a1 + 240);
  v2 = a1 + 240;
  v3 = v4;
  memset(v10, 0, 38);
  memset(&v10[5], 0, 96);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v5 != v2 && *(v5 + 32) <= a2)
  {
    v8 = *(v5 + 56);
    v9 = *(v5 + 64);
    if (v8 != v9)
    {
      while ((*v8 - 1) >= 2)
      {
        if (++v8 == v9)
        {
          v8 = v9;
          break;
        }
      }
    }

    v6 = v8 != v9;
  }

  else
  {
LABEL_8:
    v6 = 0;
  }

  v11 = &v10[1];
  sub_100034D1C(&v11);
  return v6;
}

uint64_t sub_1012C885C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006B978(a1, a2);
  v5 = v4;
  if (v4 == 1)
  {
    return v5;
  }

  if (v4 != 2)
  {
    return 0;
  }

  cf = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  v21 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v21);
  if (!v12)
  {
    v14 = 0;
    goto LABEL_11;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
LABEL_11:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_12;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
LABEL_12:
  (*(*v14 + 96))(&cf, v14, a2, 1, @"PhoneNumberIsVoiceMailNumber", kCFBooleanFalse, 0);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  v16 = cf;
  LOBYTE(v21) = 0;
  if (cf && (v17 = CFGetTypeID(cf), v17 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(&v21, v16, v18);
    if (v21)
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    v5 = 3;
  }

  sub_10000A1EC(&cf);
  return v5;
}

void sub_1012C8A00(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012C8A60(uint64_t a1, int a2, uint64_t a3, const std::string *a4, uint64_t a5, _BOOL4 a6, uint64_t a7)
{
  v59 = a2;
  v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v53;
    asString();
    if (SBYTE7(v54) < 0)
    {
      v13 = v53[0];
    }

    asString();
    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v58;
    }

    else
    {
      v14 = v58.__r_.__value_.__r.__words[0];
    }

    v15 = asStringBool(a6);
    asString();
    if (v57 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    v17 = *(a3 + 23);
    v18 = (v17 & 0x80u) != 0;
    if ((v17 & 0x80u) != 0)
    {
      v17 = *(a3 + 8);
    }

    if (v18)
    {
      v19 = *a3;
    }

    else
    {
      v19 = a3;
    }

    if (v17)
    {
      v20 = v19;
    }

    else
    {
      v20 = "<invalid>";
    }

    *buf = 136316162;
    *&buf[4] = v13;
    v61 = 2080;
    v62 = v14;
    v63 = 2080;
    v64 = v15;
    v65 = 2080;
    v66 = v16;
    v67 = 2080;
    v68 = v20;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I update of phone number: %s' : '%s', attempted: %s, trusted: %s, accountId: %s", buf, 0x34u);
    if (v57 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SBYTE7(v54) < 0)
    {
      operator delete(v53[0]);
    }
  }

  v53[0] = 1;
  v54 = 0u;
  v55 = 0;
  v53[1] = (a1 + 504);
  sub_101257DBC(&v54, a1 + 536);
  if (a6)
  {
    memset(&v58, 0, sizeof(v58));
    sub_10000501C(&v58, "");
    v21 = *(a1 + 240);
    if (v21)
    {
      v22 = a1 + 240;
      do
      {
        if (*(v21 + 32) >= v59)
        {
          v22 = v21;
        }

        v21 = *(v21 + 8 * (*(v21 + 32) < v59));
      }

      while (v21);
      if (v22 != a1 + 240 && v59 >= *(v22 + 32))
      {
        std::string::operator=(&v58, (v22 + 112));
      }
    }

    v23 = *(a1 + 664);
    if (v23 != (a1 + 672))
    {
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v58.__r_.__value_.__l.__size_;
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v58;
      }

      else
      {
        v25 = v58.__r_.__value_.__r.__words[0];
      }

      while (1)
      {
        v26 = *(v23 + 79);
        v27 = v26;
        if ((v26 & 0x80u) != 0)
        {
          v26 = v23[8];
        }

        if (size == v26)
        {
          v28 = v27 >= 0 ? v23 + 7 : v23[7];
          if (!memcmp(v25, v28, size))
          {
            break;
          }
        }

        v29 = v23[1];
        if (v29)
        {
          do
          {
            v30 = v29;
            v29 = *v29;
          }

          while (v29);
        }

        else
        {
          do
          {
            v30 = v23[2];
            v31 = *v30 == v23;
            v23 = v30;
          }

          while (!v31);
        }

        v23 = v30;
        if (v30 == (a1 + 672))
        {
          goto LABEL_53;
        }
      }

      *buf = &v59;
      v42 = sub_1012D2BF4(&v54, v59, buf);
      v43 = *(a1 + 536);
      if (v43 != (a1 + 544))
      {
        v44 = v42;
        while (*(v43 + 8) == v59)
        {
          v45 = v43[1];
          if (v45)
          {
            do
            {
              v46 = v45;
              v45 = *v45;
            }

            while (v45);
          }

          else
          {
            do
            {
              v46 = v43[2];
              v31 = *v46 == v43;
              v43 = v46;
            }

            while (!v31);
          }

          v43 = v46;
          if (v46 == (a1 + 544))
          {
            goto LABEL_90;
          }
        }

        v47 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I Offload SIM setting phone_numbers of MNOS", buf, 2u);
        }

        std::string::operator=((v44 + 5), (v43 + 5));
        std::string::operator=((v44 + 8), (v43 + 8));
        *(v44 + 22) = *(v43 + 22);
        std::string::operator=(v44 + 4, v43 + 4);
        *(v44 + 120) = *(v43 + 120);
      }

      goto LABEL_90;
    }

LABEL_53:
    *buf = &v59;
    v32 = sub_1012D2BF4(&v54, v59, buf);
    std::string::operator=((v32 + 5), a4);
    std::string::operator=((v32 + 8), a5);
    v33 = *(a5 + 24);
    *(v32 + 22) = v33;
    *(v32 + 120) = a6;
    if (v33 == 5)
    {
      v34 = (v32 + 12);
      v35 = a5;
    }

    else
    {
      if (!*(a7 + 24))
      {
        if (*(v32 + 119) < 0)
        {
          *v32[12] = 0;
          v32[13] = 0;
        }

        else
        {
          *(v32 + 96) = 0;
          *(v32 + 119) = 0;
        }

LABEL_61:
        v37 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v59);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = __p;
          asString();
          if (v57 < 0)
          {
            v38 = __p[0];
          }

          v39 = &v51;
          asString();
          if (v52 < 0)
          {
            v39 = v51;
          }

          v40 = asStringBool(1);
          asString();
          if (v50 >= 0)
          {
            v41 = &v49;
          }

          else
          {
            v41 = v49;
          }

          *buf = 136315906;
          *&buf[4] = v38;
          v61 = 2080;
          v62 = v39;
          v63 = 2080;
          v64 = v40;
          v65 = 2080;
          v66 = v41;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I setting phone_numbers to '%s', '%s', attempted: %s, trusted: %s", buf, 0x2Au);
          if (v50 < 0)
          {
            operator delete(v49);
          }

          if (v52 < 0)
          {
            operator delete(v51);
          }

          if (v57 < 0)
          {
            operator delete(__p[0]);
          }
        }

LABEL_90:
        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }

        goto LABEL_92;
      }

      v34 = (v32 + 12);
      v35 = a7;
    }

    std::string::operator=(v34, v35);
    goto LABEL_61;
  }

  v36 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v59);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I make sure phone_numbers don't keep phone number", buf, 2u);
  }

  sub_1012D26A0(&v54, v59);
LABEL_92:
  sub_1012D2528(v53);
  sub_1012C91AC(a1, v59, a3, 1);
}

void sub_1012C90F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  sub_1012D2528(&a20);
  _Unwind_Resume(a1);
}

void sub_1012C91AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v39 = a2;
  memset(&__dst, 0, sizeof(__dst));
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a3, *(a3 + 8));
  }

  else
  {
    __dst = *a3;
  }

  size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v29 = *(a1 + 240);
    if (v29)
    {
      v30 = a1 + 240;
      do
      {
        if (*(v29 + 32) >= a2)
        {
          v30 = v29;
        }

        v29 = *(v29 + 8 * (*(v29 + 32) < a2));
      }

      while (v29);
      if (v30 != a1 + 240 && *(v30 + 32) <= a2)
      {
        if (*(v30 + 135) < 0)
        {
          sub_100005F2C(v35, *(v30 + 112), *(v30 + 120));
        }

        else
        {
          *v35 = *(v30 + 112);
          *&v36 = *(v30 + 128);
        }

        std::string::operator=(&__dst, v35);
        if (SBYTE7(v36) < 0)
        {
          operator delete(*v35);
        }
      }
    }
  }

  if (a4)
  {
    sub_1012D26A0((a1 + 560), a2);
    v8 = *(a1 + 544);
    if (v8)
    {
      v9 = a1 + 544;
      do
      {
        if (*(v8 + 32) >= a2)
        {
          v9 = v8;
        }

        v8 = *(v8 + 8 * (*(v8 + 32) < a2));
      }

      while (v8);
      if (v9 != a1 + 544 && *(v9 + 32) <= a2)
      {
        if (isReal())
        {
          *v35 = 1;
          v36 = 0u;
          v37 = 0;
          *&v35[8] = a1 + 584;
          sub_1012D2780(&v36, (a1 + 616));
          __p[0] = &__dst;
          v10 = sub_1012D2B14(&v36, &__dst, __p);
          std::string::operator=((v10 + 56), (v9 + 40));
          std::string::operator=((v10 + 80), (v9 + 64));
          *(v10 + 104) = *(v9 + 88);
          std::string::operator=((v10 + 112), (v9 + 96));
          *(v10 + 136) = *(v9 + 120);
          v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v39);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            v13 = *&__dst.__r_.__value_.__l.__data_;
            rest::asString();
            if ((v12 & 0x80u) == 0)
            {
              v14 = v12;
            }

            else
            {
              v14 = *(&v13 + 1);
            }

            p_dst = &__dst;
            if ((v12 & 0x80u) != 0)
            {
              p_dst = v13;
            }

            if (v14)
            {
              v16 = p_dst;
            }

            else
            {
              v16 = "<invalid>";
            }

            if (v34 >= 0)
            {
              v17 = __p;
            }

            else
            {
              v17 = __p[0];
            }

            *buf = 136315394;
            v41 = v16;
            v42 = 2080;
            v43 = v17;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I setting personalized_phone_numbers for [%s] '%s'", buf, 0x16u);
            if (v34 < 0)
            {
              operator delete(__p[0]);
            }
          }

LABEL_53:
          sub_1012D2954(v35);
          goto LABEL_66;
        }

        v31 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I adding cached value to fPhoneNumberQueuedUpdate", v35, 2u);
        }

        *v35 = &v39;
        v32 = sub_1012D2BF4(a1 + 560, a2, v35);
        std::string::operator=((v32 + 5), (v9 + 40));
        std::string::operator=((v32 + 8), (v9 + 64));
        *(v32 + 22) = *(v9 + 88);
        std::string::operator=(v32 + 4, (v9 + 96));
        *(v32 + 120) = *(v9 + 120);
      }
    }
  }

  else if (isReal())
  {
    v18 = *(a1 + 568);
    if (v18)
    {
      v19 = a1 + 568;
      do
      {
        if (*(v18 + 32) >= a2)
        {
          v19 = v18;
        }

        v18 = *(v18 + 8 * (*(v18 + 32) < a2));
      }

      while (v18);
      if (v19 != a1 + 568 && *(v19 + 32) <= a2)
      {
        *v35 = 1;
        v36 = 0u;
        v37 = 0;
        *&v35[8] = a1 + 584;
        sub_1012D2780(&v36, (a1 + 616));
        __p[0] = &__dst;
        v20 = sub_1012D2B14(&v36, &__dst, __p);
        std::string::operator=((v20 + 56), (v19 + 40));
        std::string::operator=((v20 + 80), (v19 + 64));
        *(v20 + 104) = *(v19 + 88);
        std::string::operator=((v20 + 112), (v19 + 96));
        *(v20 + 136) = *(v19 + 120);
        v21 = v39;
        v22 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v39);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          v24 = *&__dst.__r_.__value_.__l.__data_;
          rest::asString();
          if ((v23 & 0x80u) == 0)
          {
            v25 = v23;
          }

          else
          {
            v25 = *(&v24 + 1);
          }

          v26 = &__dst;
          if ((v23 & 0x80u) != 0)
          {
            v26 = v24;
          }

          if (v25)
          {
            v27 = v26;
          }

          else
          {
            v27 = "<invalid>";
          }

          if (v34 >= 0)
          {
            v28 = __p;
          }

          else
          {
            v28 = __p[0];
          }

          *buf = 136315394;
          v41 = v27;
          v42 = 2080;
          v43 = v28;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I updating personalized_phone_numbers for [%s] '%s'", buf, 0x16u);
          if (v34 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_1012D26A0((a1 + 560), v21);
        goto LABEL_53;
      }
    }
  }

LABEL_66:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_1012C9728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_1012D2954(&a13);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1012C979C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v11, *a3, *(a3 + 8));
  }

  else
  {
    *v11 = *a3;
    v12 = *(a3 + 16);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(v13, *a4, *(a4 + 8));
  }

  else
  {
    *v13 = *a4;
    v14 = *(a4 + 16);
  }

  v15 = *(a4 + 24);
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v17 = *(a5 + 16);
  }

  v18 = *(a5 + 24);
  v19 = a6;
  v10 = a1[2];
  if (v10)
  {
    if (std::__shared_weak_count::lock(v10))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012C99FC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (*(v22 + 63) < 0)
  {
    operator delete(*(v22 + 40));
  }

  if (*(v22 + 39) < 0)
  {
    operator delete(*(v22 + 16));
  }

  sub_10004F058(a1);
}

void sub_1012C9A70(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return;
  }

  if ((subscriber::isValidSimSlot() & 1) == 0)
  {
    v5 = a1[5];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v6 = "invalid from slot";
LABEL_12:
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v6, buf, 2u);
    return;
  }

  if (subscriber::isValidSimSlot())
  {
    v4 = a1[2];
    if (v4)
    {
      if (std::__shared_weak_count::lock(v4))
      {
        operator new();
      }
    }

    sub_100013CC4();
  }

  v5 = a1[5];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v6 = "invalid to slot";
    goto LABEL_12;
  }
}

void sub_1012C9C00(uint64_t a1)
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
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_1012C9C78(uint64_t a1)
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

uint64_t sub_1012C9CF8(uint64_t a1)
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

uint64_t sub_1012C9E0C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012C9E5C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1012C9EB0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012C9EF0(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1012C9F1C(ServiceManager::Service *this)
{
  *this = off_101F280A0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1012C9F78(ServiceManager::Service *this)
{
  *this = off_101F280A0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_1012C9FF8@<X0>(uint64_t *a1@<X8>)
{
  v2 = 3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1012CA03C(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_1012C2274(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_1012C2274(v4, 0);
}

void sub_1012CA0D8(uint64_t a1, xpc_object_t *a2, NSObject **a3)
{
  v4 = *(a1 + 8);
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    xpc_null_create();
  }

  v5 = *a3;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
    sub_1012C2374(v4, v5);
  }

  sub_1012C2374(v4, 0);
}

void sub_1012CA174(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012CA254(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group[1], this);
  v4 = *(v3 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012CA368(ServiceManager::Service *this)
{
  *this = off_101F280A0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1012CA3C4(ServiceManager::Service *this)
{
  *this = off_101F280A0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

void sub_1012CA46C(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

uint64_t *sub_1012CA4D4(uint64_t *result, int a2, _DWORD **a3, int **a4)
{
  v4 = result[1];
  if (!v4)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v4;
      v6 = *(v4 + 28);
      if (v6 <= a2)
      {
        break;
      }

      v4 = *v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if (v6 >= a2)
    {
      return result;
    }

    v4 = v5[1];
    if (!v4)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *sub_1012CA5B8(void **a1)
{
  v1 = *a1;
  v12 = a1;
  v13 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  ctu::RestModule::disconnect((v2 + 21));
  v4 = v2[11];
  v5 = v1[1];
  *buf = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  (*(*v4 + 16))(v4, buf);
  if (*buf)
  {
    dispatch_group_leave(*buf);
    if (*buf)
    {
      dispatch_release(*buf);
    }
  }

  v6 = v2[13];
  v7 = v1[1];
  group = v7;
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_group_enter(v7);
  }

  (*(*v6 + 16))(v6, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  v8 = v2[15];
  if (v8)
  {
    v9 = v1[1];
    object = v9;
    if (v9)
    {
      dispatch_retain(v9);
      dispatch_group_enter(v9);
    }

    (*(*v8 + 16))(v8, &object);
    if (object)
    {
      dispatch_group_leave(object);
      if (object)
      {
        dispatch_release(object);
      }
    }
  }

  v10 = v2[17];
  if (v10)
  {
    (*(*v10 + 32))(v10);
  }

  sub_1000FF844(&v13);
  return sub_1000049E0(&v12);
}

void sub_1012CA7A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_group_t group, dispatch_group_t a12, dispatch_group_t a13)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1012CA814(uint64_t *__return_ptr a1@<X8>, std::mutex *this@<X0>)
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

void sub_1012CA8D8(NSObject ***a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = *(v2 + 88);
    v6 = *(v2 + 8);
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v7);
      v48 = 0;
      v49 = 0;
      v9 = std::__shared_weak_count::lock(v8);
      v10 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v6 = 0;
      }

      v48 = v6;
      v49 = v9;
      std::__shared_weak_count::__release_weak(v8);
      if (v10)
      {
        sub_100004A34(v10);
      }

      v13 = v1[1];
      v12 = (v1 + 1);
      v11 = v13;
      group = v13;
      if (v13)
      {
        dispatch_retain(v11);
        dispatch_group_enter(group);
      }

      (*(*v5 + 24))(v5, &v48, &group);
      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }

      if (v49)
      {
        std::__shared_weak_count::__release_weak(v49);
      }

      v14 = *(v2 + 16);
      if (v14)
      {
        v15 = *(v2 + 104);
        v16 = *(v2 + 8);
        v17 = std::__shared_weak_count::lock(v14);
        if (v17)
        {
          v18 = v17;
          atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v17);
          v45 = 0;
          v46 = 0;
          v19 = std::__shared_weak_count::lock(v18);
          v20 = v19;
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            v16 = 0;
          }

          v45 = v16;
          v46 = v19;
          std::__shared_weak_count::__release_weak(v18);
          if (v20)
          {
            sub_100004A34(v20);
          }

          v21 = *v12;
          object = v21;
          if (v21)
          {
            dispatch_retain(v21);
            dispatch_group_enter(object);
          }

          (*(*v15 + 24))(v15, &v45, &object);
          if (object)
          {
            dispatch_group_leave(object);
            if (object)
            {
              dispatch_release(object);
            }
          }

          if (v46)
          {
            std::__shared_weak_count::__release_weak(v46);
          }

          v22 = *(v2 + 120);
          if (!v22)
          {
LABEL_44:
            v30 = *(v2 + 136);
            if (v30)
            {
              (*(*v30 + 16))(v30);
            }

            ServiceMap = Registry::getServiceMap(*(v2 + 56));
            v32 = ServiceMap;
            if (v33 < 0)
            {
              v34 = (v33 & 0x7FFFFFFFFFFFFFFFLL);
              v35 = 5381;
              do
              {
                v33 = v35;
                v36 = *v34++;
                v35 = (33 * v35) ^ v36;
              }

              while (v36);
            }

            std::mutex::lock(ServiceMap);
            *buf = v33;
            v37 = sub_100009510(&v32[1].__m_.__sig, buf);
            if (v37)
            {
              v39 = v37[3];
              v38 = v37[4];
              if (v38)
              {
                atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
                std::mutex::unlock(v32);
                atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_100004A34(v38);
                goto LABEL_54;
              }
            }

            else
            {
              v39 = 0;
            }

            std::mutex::unlock(v32);
            v38 = 0;
LABEL_54:
            v40 = *(v2 + 160);
            *(v2 + 152) = v39;
            *(v2 + 160) = v38;
            if (v40)
            {
              sub_100004A34(v40);
            }

            sub_10000501C(&__p, "/cc/events/dump_state");
            operator new();
          }

          v23 = *(v2 + 16);
          if (v23)
          {
            v24 = *(v2 + 8);
            v25 = std::__shared_weak_count::lock(v23);
            if (v25)
            {
              v26 = v25;
              atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v25);
              v27 = std::__shared_weak_count::lock(v26);
              if (v27)
              {
                v28 = v27;
                atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                v42 = v24;
                v43 = v27;
                std::__shared_weak_count::__release_weak(v26);
                sub_100004A34(v28);
              }

              else
              {
                v42 = 0;
                v43 = 0;
                std::__shared_weak_count::__release_weak(v26);
              }

              v29 = *v12;
              v41 = v29;
              if (v29)
              {
                dispatch_retain(v29);
                dispatch_group_enter(v29);
              }

              (*(*v22 + 24))(v22, &v42, &v41);
              if (v41)
              {
                dispatch_group_leave(v41);
                if (v41)
                {
                  dispatch_release(v41);
                }
              }

              if (v43)
              {
                std::__shared_weak_count::__release_weak(v43);
              }

              goto LABEL_44;
            }
          }
        }
      }
    }
  }

  sub_100013CC4();
}

void sub_1012CB50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, dispatch_group_t group, uint64_t a16, std::__shared_weak_count *a17, dispatch_group_t object, uint64_t a19, uint64_t a20, dispatch_group_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1012CB650(void **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *(*v1 + 104);
  if (v2)
  {
    v3 = v1[1];
    group = v3;
    if (v3)
    {
      dispatch_retain(v3);
      dispatch_group_enter(v3);
    }

    (*(*v2 + 56))(v2, &group);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }
  }

  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_1012CB6F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

void sub_1012CB72C(uint64_t **a1)
{
  v1 = **a1;
  (*(**(v1 + 88) + 32))(*(v1 + 88));
  (*(**(v1 + 104) + 32))(*(v1 + 104));
  v2 = *(v1 + 120);
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  v3 = *(v1 + 136);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  operator delete();
}

uint64_t *sub_1012CB850(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  if (sub_1012C8774(*v1, *(v1 + 8)))
  {
    v3 = *(v2 + 88);
    v4 = *(v1 + 8);
    *buf = off_101F28148;
    v10 = v2;
    v11 = v4;
    v12 = buf;
    (*(*v3 + 40))(v3);
    sub_10000FF50(buf);
  }

  else
  {
    v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N CDMA based or unknown, Phonebook model does not apply, not selecting", buf, 2u);
    }

    (*(**(v2 + 72) + 304))(*(v2 + 72), *(v1 + 8));
  }

  sub_1012CBA04(&v8);
  return sub_1000049E0(&v7);
}

void sub_1012CB9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a12)
{
  sub_10000FF50(&a12);
  sub_1012CBA04(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012CBA04(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    operator delete();
  }

  return a1;
}

__n128 sub_1012CBAD4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F28148;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1012CBB08(uint64_t result, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    return (*(**(*(result + 8) + 72) + 304))(*(*(result + 8) + 72), *(result + 16));
  }

  return result;
}

uint64_t sub_1012CBB50(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1012CBB9C(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  if (sub_1012C8774(*v1, *(v1 + 8)))
  {
    v3 = *(v2 + 88);
    v4 = *(v1 + 8);
    v5 = *(v1 + 12);
    sub_1000224C8(buf, v1 + 40);
    (*(*v3 + 40))(v3, v4, v5, v1 + 16, buf);
    sub_10000FF50(buf);
  }

  else
  {
    v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N CDMA based or unknown, Phonebook model does not apply, not selecting", buf, 2u);
    }

    sub_10000FFD0(v1 + 40, 0);
  }

  sub_1012CBD18(&v9);
  return sub_1000049E0(&v8);
}

void sub_1012CBCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a12)
{
  sub_10000FF50(&a12);
  sub_1012CBD18(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012CBD18(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10000FF50(v1 + 40);
    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_1012CBD78(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  if (sub_1012C8774(*v1, *(v1 + 8)))
  {
    v3 = *(v2 + 88);
    v4 = *(v1 + 8);
    *buf = off_101F281C8;
    v10 = v2;
    v11 = v4;
    v12 = buf;
    (*(*v3 + 48))(v3);
    sub_10000FF50(buf);
  }

  else
  {
    v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N CDMA based or unknown, Phonebook model does not apply, not writing", buf, 2u);
    }

    (*(**(v2 + 72) + 304))(*(v2 + 72), *(v1 + 8));
  }

  sub_1012CBF30(&v8);
  return sub_1000049E0(&v7);
}

void sub_1012CBF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a12)
{
  sub_10000FF50(&a12);
  sub_1012CBF30(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012CBF30(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 199) < 0)
    {
      operator delete(*(v1 + 176));
    }

    if (*(v1 + 167) < 0)
    {
      operator delete(*(v1 + 144));
    }

    if (*(v1 + 143) < 0)
    {
      operator delete(*(v1 + 120));
    }

    if (*(v1 + 103) < 0)
    {
      operator delete(*(v1 + 80));
    }

    if (*(v1 + 71) < 0)
    {
      operator delete(*(v1 + 48));
    }

    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    operator delete();
  }

  return a1;
}

__n128 sub_1012CC050(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F281C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1012CC084(uint64_t result, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    return (*(**(*(result + 8) + 72) + 304))(*(*(result + 8) + 72), *(result + 16));
  }

  return result;
}

uint64_t sub_1012CC0CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1012CC118(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  if (sub_1012C8774(*v1, *(v1 + 8)))
  {
    v3 = *(v2 + 88);
    v4 = *(v1 + 8);
    v5 = *(v1 + 12);
    sub_1000224C8(buf, v1 + 200);
    (*(*v3 + 48))(v3, v4, v5, v1 + 16, v1 + 176, buf);
    sub_10000FF50(buf);
  }

  else
  {
    v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N CDMA based or unknown, Phonebook model does not apply, not writing", buf, 2u);
    }

    sub_10000FFD0(v1 + 200, 0);
  }

  sub_1012CC298(&v9);
  return sub_1000049E0(&v8);
}

void sub_1012CC26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a12)
{
  sub_10000FF50(&a12);
  sub_1012CC298(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012CC298(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1012C2E34(v2);
    operator delete();
  }

  return a1;
}

void sub_1012CC2E0(uint64_t **a1)
{
  v6 = a1;
  v1 = *a1;
  v2 = **a1;
  if (sub_1012C8774(v2, *(*a1 + 2)))
  {
    v3 = *(v2 + 88);
    v4 = *(v1 + 2);
    *buf = off_101F28248;
    v8 = v2;
    v9 = v4;
    v10 = buf;
    (*(*v3 + 56))(v3);
    sub_10000FF50(buf);
  }

  else
  {
    v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N CDMA based or unknown, Phonebook model does not apply, not fetching", buf, 2u);
    }
  }

  operator delete();
}

__n128 sub_1012CC4EC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F28248;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1012CC520(uint64_t result, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    return (*(**(*(result + 8) + 72) + 304))(*(*(result + 8) + 72), *(result + 16));
  }

  return result;
}

uint64_t sub_1012CC568(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1012CC5B4(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  if (sub_1012C8774(*v1, *(v1 + 8)))
  {
    v3 = *(v2 + 88);
    v4 = *(v1 + 8);
    sub_1000224C8(buf, v1 + 16);
    (*(*v3 + 56))(v3, v4, buf);
    sub_10000FF50(buf);
  }

  else
  {
    v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N CDMA based or unknown, Phonebook model does not apply, not fetching", buf, 2u);
    }

    sub_10000FFD0(v1 + 16, 0);
  }

  sub_100EDD714(&v8);
  return sub_1000049E0(&v7);
}

void sub_1012CC6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10000FF50(va);
  sub_100EDD714(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012CC728(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  if (sub_1012C8774(*v1, *(v1 + 8)))
  {
    v3 = *(v2 + 88);
    v4 = *(v1 + 8);
    sub_100DDDB74(buf, v1 + 16);
    (*(*v3 + 64))(v3, v4, buf);
    sub_100BDCA88(buf);
  }

  else
  {
    v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N CDMA based or unknown, Phonebook model does not apply, count is 0", buf, 2u);
    }

    sub_100DDDDC4(v1 + 16, 0, 0);
  }

  sub_1012CC8A0(&v8);
  return sub_1000049E0(&v7);
}

void sub_1012CC874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a12)
{
  sub_100BDCA88(&a12);
  sub_1012CC8A0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012CC8A0(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100BDCA88(v1 + 16);
    operator delete();
  }

  return a1;
}

uint64_t sub_1012CC8F0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1012CC988(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1012CCA08(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  if (sub_1012C8774(*v1, *(v1 + 8)))
  {
    v3 = *(v2 + 88);
    v4 = *(v1 + 8);
    v5 = *(v1 + 12);
    sub_1012CC8F0(buf, v1 + 16);
    (*(*v3 + 72))(v3, v4, v5, buf);
    sub_100E3FDD8(buf);
  }

  else
  {
    v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N CDMA based or unknown, Phonebook model does not apply, no entry", buf, 2u);
    }

    sub_100E3F3A4(buf);
    sub_1012CCBFC(v1 + 16, 0);
    sub_10006BF90(buf);
  }

  sub_1012CCBAC(&v9);
  return sub_1000049E0(&v8);
}

void sub_1012CCB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a12)
{
  sub_10006BF90(&a12);
  sub_1012CCBAC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012CCBAC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100E3FDD8(v1 + 16);
    operator delete();
  }

  return a1;
}

uint64_t sub_1012CCBFC(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t *sub_1012CCC50(void **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *(*v1 + 136);
  if (v2)
  {
    v3 = v1[2];
    v7 = v1[1];
    v8 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v2 + 40))(v2, &v7);
    if (v8)
    {
      sub_100004A34(v8);
    }
  }

  else
  {
    object = xpc_int64_create(22);
    if (!object)
    {
      object = xpc_null_create();
    }

    v7 = v1[1];
    v8 = "kPosixError";
    sub_10000F688(&v7, &object, &v10);
    xpc_release(v10);
    v10 = 0;
    xpc_release(object);
  }

  sub_100E0B28C(&v6);
  return sub_1000049E0(&v5);
}

void sub_1012CCD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100E0B28C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012CCD6C(uint64_t *a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = *v1;
  v3 = sub_10006B0A8(*v1, *(v1 + 8));
  if (v3 == 2)
  {
    v4 = *(v2 + 88);
    v5 = (*v4 + 88);
    goto LABEL_6;
  }

  if (v3 == 1)
  {
    v4 = *(v2 + 120);
    if (v4)
    {
      v5 = (*v4 + 152);
LABEL_6:
      (*v5)(v4, *(v1 + 8));
      goto LABEL_11;
    }

    v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "CDMASettings Interface not available", buf, 2u);
    }
  }

  else
  {
    v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N Don't know where to set the phone number", buf, 2u);
    }
  }

LABEL_11:
  sub_1012CCF44(&v10);
  return sub_1000049E0(&v9);
}

void sub_1012CCF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1012CCF44(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012CCF44(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 191) < 0)
    {
      operator delete(*(v1 + 168));
    }

    if (*(v1 + 167) < 0)
    {
      operator delete(*(v1 + 144));
    }

    if (*(v1 + 127) < 0)
    {
      operator delete(*(v1 + 104));
    }

    if (*(v1 + 95) < 0)
    {
      operator delete(*(v1 + 72));
    }

    if (*(v1 + 71) < 0)
    {
      operator delete(*(v1 + 48));
    }

    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_1012CCFEC(uint64_t **a1)
{
  v4 = a1;
  v1 = *a1 + 3;
  v2 = **a1;
  v5 = *a1;
  (*(**(v2 + 88) + 96))(*(v2 + 88), v5 + 1, v1);
  sub_1012CD07C(&v5);
  return sub_1000049E0(&v4);
}

void sub_1012CD060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1012CD07C(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012CD07C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 175) < 0)
    {
      operator delete(*(v1 + 152));
    }

    if (*(v1 + 151) < 0)
    {
      operator delete(*(v1 + 128));
    }

    if (*(v1 + 111) < 0)
    {
      operator delete(*(v1 + 88));
    }

    if (*(v1 + 79) < 0)
    {
      operator delete(*(v1 + 56));
    }

    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    v2 = *(v1 + 16);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_1012CD120(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  v3 = sub_1012C885C(*v1, *(v1 + 8));
  if (v3 == 3)
  {
    (*(**(v2 + 88) + 112))(*(v2 + 88), *(v1 + 8), v1 + 16);
  }

  else
  {
    v4 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = sub_100B47BA8(v3);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N Setting voice mail number is not supported with VM location %s", buf, 0xCu);
    }
  }

  sub_1010B5638(&v7);
  return sub_1000049E0(&v6);
}

void sub_1012CD25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1010B5638(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1012CD278(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = sub_1012C885C(*v1, **(v1 + 8));
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v40[0] = 0;
      v40[1] = 0;
      v41 = 0;
      v39 = 0;
      v38 = 0;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v5 = sub_10006AE8C(v2, **(v1 + 8), v40, &v36, &v34, &v39 + 1, &v39, &v38);
      if (v5)
      {
        CSIPhoneNumber::CSIPhoneNumber();
      }

      else
      {
        CSIPhoneNumber::CSIPhoneNumber(&v20);
      }

      v9 = *(v1 + 16);
      *v9 = *&v20.var0;
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v10 = *v20.var2.__rep_.__s.__data_;
      *(v9 + 24) = *(&v20.var2.__rep_.__l + 2);
      *(v9 + 8) = v10;
      *(&v20.var2.__rep_.__l + 23) = 0;
      v20.var2.__rep_.__s.__data_[0] = 0;
      if (*(v9 + 55) < 0)
      {
        operator delete(*(v9 + 32));
      }

      v11 = v21;
      *(v9 + 48) = v22;
      *(v9 + 32) = v11;
      HIBYTE(v22) = 0;
      LOBYTE(v21) = 0;
      v12 = v24;
      *(v9 + 56) = v23;
      *(v9 + 60) = v12;
      if (*(v9 + 87) < 0)
      {
        operator delete(*(v9 + 64));
      }

      v13 = v25;
      *(v9 + 80) = v26;
      *(v9 + 64) = v13;
      HIBYTE(v26) = 0;
      LOBYTE(v25) = 0;
      v14 = v28;
      *(v9 + 88) = v27;
      *(v9 + 96) = v14;
      if (*(v9 + 127) < 0)
      {
        operator delete(*(v9 + 104));
      }

      v15 = __p;
      *(v9 + 120) = v30;
      *(v9 + 104) = v15;
      HIBYTE(v30) = 0;
      LOBYTE(__p) = 0;
      if (*(v9 + 151) < 0)
      {
        operator delete(*(v9 + 128));
        v18 = SHIBYTE(v30);
        v19 = v31;
        *(v9 + 144) = v32;
        *(v9 + 128) = v19;
        HIBYTE(v32) = 0;
        LOBYTE(v31) = 0;
        *(v9 + 152) = v33;
        if (v18 < 0)
        {
          operator delete(__p);
        }
      }

      else
      {
        v16 = v31;
        *(v9 + 144) = v32;
        *(v9 + 128) = v16;
        HIBYTE(v32) = 0;
        LOBYTE(v31) = 0;
        *(v9 + 152) = v33;
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25);
      }

      if (SHIBYTE(v22) < 0)
      {
        operator delete(v21);
      }

      if (*(&v20.var2.__rep_.__l + 23) < 0)
      {
        operator delete(v20.var2.__rep_.__l.__data_);
      }

      if (SBYTE7(v35) < 0)
      {
        operator delete(v34);
      }

      if (SBYTE7(v37) < 0)
      {
        operator delete(v36);
      }

      if (SHIBYTE(v41) < 0)
      {
        operator delete(v40[0]);
      }

      return v5;
    }

    v7 = *(**(v2 + 88) + 104);

    return v7();
  }

  if (v3)
  {
    v6 = *(v2 + 120);
    if (!v6)
    {
      v17 = *(*(**(v2 + 48) + 16))(*(v2 + 48), **(v1 + 8));
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20.var0) = 0;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "CDMASettings Interface not available", &v20, 2u);
      }

      return 0;
    }

    v7 = *(*v6 + 160);

    return v7();
  }

  v4 = *(*(**(v2 + 48) + 16))(*(v2 + 48), **(v1 + 8));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20.var0) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N Don't know where to get the voice mail number", &v20, 2u);
  }

  return 0;
}

void sub_1012CD658(_Unwind_Exception *exception_object)
{
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_1012CD698(void **a1)
{
  v1 = *a1;
  v2 = **a1;
  if ((*(*v2[19] + 40))(v2[19], *(*a1 + 2)) == 1)
  {
    (*(*v2[13] + 88))(v2[13], *(v1 + 2), 0);
  }

  else
  {
    v3 = *(*(*v2[6] + 16))(v2[6], *(v1 + 2));
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#N Supp Services is not supported, cannot fetch Caller ID Restriction", buf, 2u);
    }

    (*(*v2[9] + 168))(v2[9], *(v1 + 2), 0);
  }

  operator delete();
}

uint64_t sub_1012CD81C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  if ((*(**(*v1 + 19) + 40))(*(*v1 + 19), *v1[1]) == 1)
  {
    v3 = *(**(v2 + 13) + 96);

    return v3();
  }

  else
  {
    v5 = *(*(**(v2 + 6) + 16))(*(v2 + 6), *v1[1]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N Supp Services is not supported, cannot get Caller ID Restriction", v6, 2u);
    }

    return 0;
  }
}

void sub_1012CD93C(void **a1)
{
  v1 = *a1;
  v2 = **a1;
  if ((*(*v2[19] + 40))(v2[19], *(*a1 + 2)) == 1)
  {
    (*(*v2[13] + 104))(v2[13], *(v1 + 2), *(v1 + 3), 0);
  }

  else
  {
    v3 = *(*(*v2[6] + 16))(v2[6], *(v1 + 2));
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#N Supp Services is not supported, cannot save Caller ID Restriction", buf, 2u);
    }

    (*(*v2[9] + 176))(v2[9], *(v1 + 2), 0);
  }

  operator delete();
}

uint64_t sub_1012CDAC0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  if ((*(**(*v1 + 19) + 40))(*(*v1 + 19), *v1[1]) == 1)
  {
    v3 = *(**(v2 + 13) + 112);

    return v3();
  }

  else
  {
    v5 = *(*(**(v2 + 6) + 16))(*(v2 + 6), *v1[1]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N Supp Services is not supported, don't know availability of call barring", v6, 2u);
    }

    return 0;
  }
}

uint64_t *sub_1012CDBE8(unsigned int **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  if ((*(**(*v1 + 152) + 40))(*(*v1 + 152), v1[2]) == 1)
  {
    (*(*v2[13] + 120))(v2[13], v1[2], v1 + 4, v1[10], v1[11], 0);
  }

  else
  {
    v3 = *(*(*v2[6] + 16))(v2[6], v1[2]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#N Supp Services is not supported, cannot fetch call barring", buf, 2u);
    }

    (*(*v2[9] + 112))(v2[9], v1[2], v1[11], v1[10]);
  }

  sub_1012CDD54(&v6);
  return sub_1000049E0(&v5);
}

void sub_1012CDD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1012CDD54(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012CDD54(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_1012CDDAC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  if ((*(**(*v1 + 19) + 40))(*(*v1 + 19), *v1[1]) == 1)
  {
    v3 = *(**(v2 + 13) + 128);

    return v3();
  }

  else
  {
    v5 = *(*(**(v2 + 6) + 16))(*(v2 + 6), *v1[1]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N Supp Services is not supported, cannot get call barring", v6, 2u);
    }

    return 0;
  }
}

uint64_t *sub_1012CDED4(unsigned int **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  if ((*(**(*v1 + 152) + 40))(*(*v1 + 152), v1[2]) == 1)
  {
    (*(*v2[13] + 136))(v2[13], v1[2], *(v1 + 12), v1 + 4, v1[10], v1[11], 0);
  }

  else
  {
    v3 = *(*(*v2[6] + 16))(v2[6], v1[2]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#N Supp Services is not supported, cannot save call waiting", buf, 2u);
    }

    (*(*v2[9] + 120))(v2[9], v1[2], v1[11], 0, v1[10]);
  }

  sub_1012CE048(&v6);
  return sub_1000049E0(&v5);
}

void sub_1012CE02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1012CE048(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012CE048(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    operator delete();
  }

  return a1;
}

void sub_1012CE0A0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*(**(v2 + 152) + 40))(*(v2 + 152), *(*a1 + 2));
  if (v3)
  {
    if (v3 != 2)
    {
      if (v3 == 1)
      {
        (*(**(v2 + 104) + 152))(*(v2 + 104), *(v1 + 2), *(v1 + 3), 0);
      }

      goto LABEL_13;
    }

    v4 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Device is in CDMA mode, forwarding the fetch Call Waiting", buf, 2u);
    }

    v5 = *(v2 + 120);
    if (!v5)
    {
      v8 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "CDMASettings Interface not available", v10, 2u);
      }

LABEL_13:
      operator delete();
    }

    v6 = (*v5 + 120);
  }

  else
  {
    v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#N Supp Services is not supported, cannot fetch call waiting", v9, 2u);
    }

    v6 = (**(v2 + 72) + 56);
  }

  (*v6)();
  goto LABEL_13;
}

void sub_1012CE3A4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*(**(v2 + 152) + 40))(*(v2 + 152), *(*a1 + 3));
  if (v3)
  {
    if (v3 == 2)
    {
      v4 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 3));
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Device is in CDMA mode, forwarding the save Call Waiting", buf, 2u);
      }

      v5 = *(v2 + 120);
      v6 = *(v1 + 3);
      if (v5)
      {
        (*(*v5 + 136))(v5, v6, *(v1 + 8), *(v1 + 4));
      }

      else
      {
        v8 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v6);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *v10 = 0;
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "CDMASettings Interface not available", v10, 2u);
        }
      }
    }

    else if (v3 == 1)
    {
      (*(**(v2 + 104) + 160))(*(v2 + 104), *(v1 + 3), *(v1 + 8), *(v1 + 4), 0);
    }
  }

  else
  {
    v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 3));
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#N Supp Services is not supported, cannot save call waiting", v9, 2u);
    }

    (*(**(v2 + 72) + 64))(*(v2 + 72), *(v1 + 3), *(v1 + 4), 0);
  }

  operator delete();
}

uint64_t sub_1012CE648(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = (*(**(*v1 + 152) + 40))(*(*v1 + 152), *v1[1]);
  if (!v3)
  {
    v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *v1[1]);
    result = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#N Supp Services is not supported, cannot get call waiting", v11, 2u);
    return 0;
  }

  if (v3 != 2)
  {
    if (v3 == 1)
    {
      v4 = *(**(v2 + 104) + 168);

      return v4();
    }

    return 0;
  }

  v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *v1[1]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Device is in CDMA mode, forwarding get Call Waiting", buf, 2u);
  }

  v7 = *(v2 + 120);
  v8 = *v1[1];
  if (v7)
  {
    return (*(*v7 + 128))(v7, v8, v1[2], *v1[3]);
  }

  v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v8);
  result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *v12 = 0;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "CDMASettings Interface not available", v12, 2u);
    return 0;
  }

  return result;
}

void sub_1012CE898(void **a1)
{
  v1 = *a1;
  v2 = **a1;
  if ((*(*v2[19] + 40))(v2[19], *(*a1 + 2)) == 1)
  {
    (*(*v2[13] + 176))(v2[13], *(v1 + 2), *(v1 + 3), 0);
  }

  else
  {
    v3 = *(*(*v2[6] + 16))(v2[6], *(v1 + 2));
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#N Supp Services is not supported, cannot fetch Line Presentation", buf, 2u);
    }

    (*(*v2[9] + 208))(v2[9], *(v1 + 2), *(v1 + 3));
  }

  operator delete();
}

uint64_t sub_1012CEA18(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  if ((*(**(*v1 + 19) + 40))(*(*v1 + 19), *v1[1]) == 1)
  {
    v3 = *(**(v2 + 13) + 184);

    return v3();
  }

  else
  {
    v5 = *(*(**(v2 + 6) + 16))(*(v2 + 6), *v1[1]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N Supp Services is not supported, cannot get Line Presentation", v6, 2u);
    }

    return 0;
  }
}

void sub_1012CEB3C(void **a1)
{
  v1 = *a1;
  v2 = **a1;
  if ((*(*v2[19] + 40))(v2[19], *(*a1 + 2)) == 1)
  {
    v3 = (*v2[13] + 200);
  }

  else
  {
    v4 = *(*(*v2[6] + 16))(v2[6], *(v1 + 2));
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N Supp Services is not supported, cannot fetch Connected Line Restriction", buf, 2u);
    }

    v3 = (*v2[9] + 216);
  }

  (*v3)();
  operator delete();
}

uint64_t sub_1012CECD4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  if ((*(**(*v1 + 19) + 40))(*(*v1 + 19), *v1[1]) == 1)
  {
    v3 = *(**(v2 + 13) + 208);

    return v3();
  }

  else
  {
    v5 = *(*(**(v2 + 6) + 16))(*(v2 + 6), *v1[1]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N Supp Services is not supported, cannot get Connected Line Restriction", v6, 2u);
    }

    return 0;
  }
}

void sub_1012CEDF0(unsigned int **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*(**(v2 + 152) + 40))(*(v2 + 152), (*a1)[2]);
  if (v3)
  {
    if (v3 != 2)
    {
      if (v3 == 1)
      {
        (*(**(v2 + 104) + 216))(*(v2 + 104), v1[2], v1[3], v1[4], 0);
      }

      goto LABEL_13;
    }

    v4 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1[2]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Device is in CDMA mode, forwarding the fetch Call Forwarding", buf, 2u);
    }

    v5 = *(v2 + 120);
    if (!v5)
    {
      v8 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1[2]);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "CDMASettings Interface not available", v10, 2u);
      }

LABEL_13:
      operator delete();
    }

    v6 = (*v5 + 96);
  }

  else
  {
    v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1[2]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#N Supp Services is not supported, cannot fetch call forwarding", v9, 2u);
    }

    v6 = (**(v2 + 72) + 16);
  }

  (*v6)();
  goto LABEL_13;
}

uint64_t *sub_1012CF0A8(uint64_t *a1)
{
  v1 = *a1;
  v13 = a1;
  v14 = v1;
  v2 = *v1;
  v3 = (*(**(*v1 + 152) + 40))(*(*v1 + 152), *(v1 + 8));
  if (v3)
  {
    if (v3 == 2)
    {
      v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Device is in CDMA mode, forwarding the save Call Forwarding", buf, 2u);
      }

      v8 = *(v2 + 120);
      v9 = *(v1 + 8);
      if (v8)
      {
        (*(*v8 + 112))(v8, v9, *(v1 + 12), v1 + 16, *(v1 + 176), *(v1 + 180), *(v1 + 184));
      }

      else
      {
        v11 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v9);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "CDMASettings Interface not available", buf, 2u);
        }
      }
    }

    else if (v3 == 1)
    {
      v4 = *(v2 + 104);
      v5 = *(v1 + 8);
      v6 = *(v1 + 12);
      sub_1000AE428(buf, v1 + 16);
      (*(*v4 + 232))(v4, v5, v6, buf, *(v1 + 176), *(v1 + 180), *(v1 + 184), 0);
      if (v25 < 0)
      {
        operator delete(__p);
      }

      if (v23 < 0)
      {
        operator delete(v22);
      }

      if (v21 < 0)
      {
        operator delete(v20);
      }

      if (v19 < 0)
      {
        operator delete(v18);
      }

      if (v17 < 0)
      {
        operator delete(v16);
      }
    }
  }

  else
  {
    v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N Supp Services is not supported, cannot save call forwarding", buf, 2u);
    }

    (*(**(v2 + 72) + 24))(*(v2 + 72), *(v1 + 8), *(v1 + 180), *(v1 + 184), 0);
  }

  sub_1012CF3BC(&v14);
  return sub_1000049E0(&v13);
}

void sub_1012CF390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a12)
{
  sub_10034F8E8(&a12);
  sub_1012CF3BC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012CF3BC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 167) < 0)
    {
      operator delete(*(v1 + 144));
    }

    if (*(v1 + 143) < 0)
    {
      operator delete(*(v1 + 120));
    }

    if (*(v1 + 103) < 0)
    {
      operator delete(*(v1 + 80));
    }

    if (*(v1 + 71) < 0)
    {
      operator delete(*(v1 + 48));
    }

    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_1012CF454(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = (*(**(*v1 + 19) + 40))(*(*v1 + 19), *v1[1]);
  if (v3)
  {
    if (v3 == 2)
    {
      v6 = *(v2 + 15);
      if (v6)
      {
        v4 = *(*v6 + 104);

        return v4();
      }

      v8 = *(*(**(v2 + 6) + 16))(*(v2 + 6), *v1[1]);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "CDMASettings Interface not available", buf, 2u);
      }
    }

    else if (v3 == 1)
    {
      v4 = *(**(v2 + 13) + 240);

      return v4();
    }
  }

  else
  {
    v7 = *(*(**(v2 + 6) + 16))(*(v2 + 6), *v1[1]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#N Supp Services is not supported, cannot get call forwarding", v9, 2u);
    }
  }

  return 0;
}

uint64_t sub_1012CF660(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(*v1 + 19);
  if (v3)
  {
    v4 = (*(*v3 + 40))(v3, *v1[1]);
    if (v4)
    {
      if (v4 != 2)
      {
        if (v4 == 1)
        {
          v5 = (*(**(v2 + 13) + 248))(*(v2 + 13), *v1[1]);
LABEL_15:
          v7 = 1;
          return v5 | (v7 << 8);
        }

LABEL_14:
        v5 = 0;
        goto LABEL_15;
      }

      v8 = *(*(**(v2 + 6) + 16))(*(v2 + 6), *v1[1]);
      v5 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (!v5)
      {
        goto LABEL_15;
      }

      v13 = 0;
      v9 = "#N CDMA based device, not handling the API call to know whether call forwarding is active or not";
      v10 = &v13;
    }

    else
    {
      v8 = *(*(**(v2 + 6) + 16))(*(v2 + 6), *v1[1]);
      v5 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (!v5)
      {
        goto LABEL_15;
      }

      v12 = 0;
      v9 = "#N Supp Services is not supported, don't know call forwarding status";
      v10 = &v12;
    }

    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    goto LABEL_14;
  }

  v6 = *(*(**(v2 + 6) + 16))(*(v2 + 6), *v1[1]);
  v5 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N Capabilities handler not ready when querying for unconditional call forwarding active", buf, 2u);
    v5 = 0;
  }

  v7 = 0;
  return v5 | (v7 << 8);
}

uint64_t sub_1012CF858(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1012CF894(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t *sub_1012CF8D0(unsigned int **a1)
{
  v1 = *a1;
  v12 = a1;
  v13 = v1;
  v2 = *v1;
  v3 = *(*v1 + 152);
  if (!v3)
  {
    v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1[2]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#N Capabilities handler not ready when querying for unconditional call forwarding active", buf, 2u);
    }

    v8 = 0;
    goto LABEL_15;
  }

  v4 = (*(*v3 + 40))(v3, v1[2]);
  switch(v4)
  {
    case 0:
      v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1[2]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v10 = "#N Supp Services is not supported, don't know call forwarding status";
        goto LABEL_13;
      }

LABEL_14:
      v8 = 256;
LABEL_15:
      sub_100632604((v1 + 4), v8);
      break;
    case 2:
      v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1[2]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v10 = "#N CDMA based device, not handling the API call to know whether call forwarding is active or not";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
        goto LABEL_14;
      }

      goto LABEL_14;
    case 1:
      v5 = *(v2 + 104);
      v6 = v1[2];
      sub_1008C3488(buf, (v1 + 4));
      (*(*v5 + 256))(v5, v6, buf);
      sub_100627050(buf);
      break;
  }

  sub_1006325B4(&v13);
  return sub_1000049E0(&v12);
}

void sub_1012CFB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_100627050(va);
  sub_1006325B4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1012CFB48(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  if ((*(**(*v1 + 19) + 40))(*(*v1 + 19), *v1[1]) == 1)
  {
    v3 = *(**(v2 + 13) + 272);

    return v3();
  }

  else
  {
    v5 = *(*(**(v2 + 6) + 16))(*(v2 + 6), *v1[1]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N Supp Services is not supported, cannot get Calling Name Presentation", v6, 2u);
    }

    return 0;
  }
}

__n128 sub_1012CFCE8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F284C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1012CFD20(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_1012CFD68(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012CFE30(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F28548;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1012CFE68(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_10032CF1C(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10032D3A4(&v9, v10);
}

uint64_t sub_1012CFF40(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012D0008(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F285C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1012D0040(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v13 = v3[2];
  if (v13)
  {
    v5[2] = &v12;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v11 = &v12;
  }

  sub_1008FC53C(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v9 = v11;
  v10[0] = v12;
  v10[1] = v13;
  if (v13)
  {
    v12[2] = v10;
    v11 = &v12;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v9 = v10;
  }

  v6(v8, &v9);
  sub_10006DCAC(&v9, v10[0]);
  sub_10006DCAC(&v11, v12);
}

void sub_1012D013C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13)
{
  sub_10006DCAC(&a9, a10);
  sub_10006DCAC(&a12, a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1012D0168(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012D0230(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F28648;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1012D0268(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v21 = 0uLL;
  v22 = 0;
  sub_10010A62C(&v21, a2);
  p_size = &v3->__r_.__value_.__l.__size_;
  size = v3->__r_.__value_.__l.__size_;
  v18 = v3->__r_.__value_.__r.__words[0];
  v19 = size;
  v20 = v3->__r_.__value_.__r.__words[2];
  if (v20)
  {
    *(size + 16) = &v19;
    v3->__r_.__value_.__r.__words[0] = p_size;
    *p_size = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    v18 = &v19;
  }

  v16 = v21;
  v17 = v22;
  v22 = 0;
  v21 = 0uLL;
  sub_100D21B04(v3, &v16);
  v23 = &v16;
  sub_1000B2AF8(&v23);
  if (v20 == v3->__r_.__value_.__r.__words[2])
  {
    v6 = v18;
    if (v18 == &v19)
    {
      goto LABEL_24;
    }

    v7 = v3->__r_.__value_.__r.__words[0];
    while (*(v6 + 8) == *(v7 + 8) && BasicSimInfo::operator==())
    {
      v8 = v6[1];
      v9 = v6;
      if (v8)
      {
        do
        {
          v6 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v6 = v9[2];
          v10 = *v6 == v9;
          v9 = v6;
        }

        while (!v10);
      }

      v11 = v7[1];
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
          v12 = v7[2];
          v10 = *v12 == v7;
          v7 = v12;
        }

        while (!v10);
      }

      v7 = v12;
      if (v6 == &v19)
      {
        goto LABEL_24;
      }
    }
  }

  v13 = a1[3];
  v14 = a1[4];
  v15 = (a1[2] + (v14 >> 1));
  if (v14)
  {
    v13 = *(*v15 + v13);
  }

  v13(v15, &v18);
LABEL_24:
  sub_100359978(&v18, v19);
  v18 = &v21;
  sub_1000B2AF8(&v18);
}

void sub_1012D042C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, char *a13, uint64_t a14, char a15)
{
  sub_100359978(&a12, a13);
  a12 = &a15;
  sub_1000B2AF8(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1012D0474(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012D053C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F286C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1012D0574(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_10032DFE4(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10006DCAC(&v9, v10);
}

uint64_t sub_1012D064C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012D0714(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F28748;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1012D074C(void *a1, xpc_object_t *a2)
{
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v13 = 0;
    ctu::rest::detail::read_enum_string_value(&v13, a2, v5);
    v8 = v13;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    v8 = xpc::dyn_cast_or_default(a2, 0, v5);
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[2];
  v10 = a1[3];
  v11 = (a1[1] + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  return v9(v11, v8);
}

uint64_t sub_1012D0830(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012D08F8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F287C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1012D0930(void *a1, void **a2)
{
  v3 = *a2;
  object = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
    v4 = object;
  }

  else
  {
    v4 = xpc_null_create();
    object = v4;
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    p_object = &object;
    v17 = "first";
    sub_100006354(&p_object, &v18);
    type = xpc_get_type(v18);
    if (type == &_xpc_type_string)
    {
      v20 = 0;
      ctu::rest::detail::read_enum_string_value(&v20, &v18, v8);
      LODWORD(v6) = v20;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      LODWORD(v6) = xpc::dyn_cast_or_default(&v18, 0, v8);
    }

    else
    {
      LODWORD(v6) = 0;
    }

    xpc_release(v18);
    p_object = &object;
    v17 = "second";
    sub_100006354(&p_object, &v18);
    v9 = xpc_get_type(v18);
    if (v9 == &_xpc_type_string)
    {
      v20 = 0;
      ctu::rest::detail::read_enum_string_value(&v20, &v18, v10);
      v11 = v20;
    }

    else if (v9 == &_xpc_type_BOOL || v9 == &_xpc_type_int64 || v9 == &_xpc_type_uint64)
    {
      v11 = xpc::dyn_cast_or_default(&v18, 0, v10);
    }

    else
    {
      v11 = 0;
    }

    xpc_release(v18);
    v5 = v11 << 32;
    v6 = v6;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  xpc_release(object);
  v12 = a1[2];
  v13 = a1[3];
  v14 = (a1[1] + (v13 >> 1));
  if (v13)
  {
    v12 = *(*v14 + v12);
  }

  return v12(v14, v6 | v5);
}

uint64_t sub_1012D0B98(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012D0C54(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F28848;
  a2[1] = v2;
  return result;
}

void sub_1012D0C80(uint64_t a1, void *a2)
{
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v23 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v23 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) != &_xpc_type_dictionary)
      {
        v10 = xpc_null_create();
LABEL_15:
        v23 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      write_rest_value();
      __p = &v23;
      v17 = "first";
      sub_10000F688(&__p, &v21, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v21);
      v21 = 0;
      rest::write_rest_value();
      __p = &v23;
      v17 = "second";
      sub_10000F688(&__p, &v19, &v20);
      xpc_release(v20);
      v20 = 0;
      xpc_release(v19);
      v19 = 0;
      v11 = v23;
      if (v23)
      {
        xpc_retain(v23);
      }

      else
      {
        v11 = xpc_null_create();
      }

      xpc_release(v23);
      xpc_array_append_value(v4, v11);
      xpc_release(v11);
      v12 = v6[1];
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
        do
        {
          v13 = v6[2];
          v14 = *v13 == v6;
          v6 = v13;
        }

        while (!v14);
      }

      v6 = v13;
    }

    while (v13 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v15 = v4;
  }

  else
  {
    v15 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/personalized_phone_numbers");
  v23 = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    v23 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v23);
  v23 = 0;
  if (v18 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
}

void sub_1012D0F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1012D0FF0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012D10AC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F288D8;
  a2[1] = v2;
  return result;
}

void sub_1012D10D8(uint64_t a1, void *a2)
{
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v26 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v26 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) != &_xpc_type_dictionary)
      {
        v10 = xpc_null_create();
LABEL_15:
        v26 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 8);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(v11, v12, v13);
      __p = &v26;
      v20 = "first";
      sub_10000F688(&__p, &v24, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v24);
      v24 = 0;
      rest::write_rest_value();
      __p = &v26;
      v20 = "second";
      sub_10000F688(&__p, &v22, &v23);
      xpc_release(v23);
      v23 = 0;
      xpc_release(v22);
      v22 = 0;
      v14 = v26;
      if (v26)
      {
        xpc_retain(v26);
      }

      else
      {
        v14 = xpc_null_create();
      }

      xpc_release(v26);
      xpc_array_append_value(v4, v14);
      xpc_release(v14);
      v15 = v6[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v6[2];
          v17 = *v16 == v6;
          v6 = v16;
        }

        while (!v17);
      }

      v6 = v16;
    }

    while (v16 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v18 = v4;
  }

  else
  {
    v18 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/phone_numbers");
  v26 = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    v26 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v26);
  v26 = 0;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v18);
}

void sub_1012D13A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1012D1458(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012D1520(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F28968;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1012D1558(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = (a1[1] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a3, a4);
}

uint64_t sub_1012D15A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012D1670(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F289E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1012D16A8(void *a1, xpc_object_t *a2)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  *v6 = 0u;
  *__p = 0u;
  sub_100C1CE2C(v6, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  v3(v5, v6);
  v11 = &v9;
  sub_1000087B4(&v11);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v6[0]);
  }
}

uint64_t sub_1012D177C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012D17C8(uint64_t **a1)
{
  v4 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(*a1 + 2));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Phone number status has changed, triggering phone number related events", buf, 2u);
  }

  sub_1012C7608(v2, *(v1 + 2), *(v1 + 3), v1[2]);
  operator delete();
}

void sub_1012D18BC(void ****a1)
{
  v4 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(*(*v2[6] + 16))(v2[6], *(*a1 + 2));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Supp Services status has changed, triggering events related events", buf, 2u);
  }

  sub_1012C7A14(v2, *(v1 + 2));
  operator delete();
}

void sub_1012D19AC(uint64_t a1)
{
  v1 = **(a1 + 40);
  if (sub_10006BB14(v1, 1) == 3)
  {
    v2 = *(v1 + 120);
    if (v2)
    {
      v3 = *(*v2 + 40);

      v3();
    }

    else
    {
      v5 = *(v1 + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "CDMASettings Interface not available", buf, 2u);
      }
    }
  }

  else
  {
    v4 = *(v1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N Not CDMA based, not processing set SPC", v6, 2u);
    }
  }
}

void sub_1012D1AC0(uint64_t a1)
{
  v1 = **(a1 + 40);
  if (sub_10006BB14(v1, 1) == 3)
  {
    v2 = *(v1 + 120);
    if (v2)
    {
      v3 = *(*v2 + 48);

      v3();
    }

    else
    {
      v5 = *(v1 + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "CDMASettings Interface not available", buf, 2u);
      }
    }
  }

  else
  {
    v4 = *(v1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N Not CDMA based, not processing sending SPC to baseband", v6, 2u);
    }
  }
}

void sub_1012D1BD4(uint64_t a1)
{
  v1 = **(a1 + 40);
  if (sub_10006BB14(v1, 1) == 3)
  {
    v2 = *(v1 + 120);
    if (v2)
    {
      v3 = *(*v2 + 56);

      v3();
    }

    else
    {
      v5 = *(v1 + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "CDMASettings Interface not available", buf, 2u);
      }
    }
  }

  else
  {
    v4 = *(v1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N Not CDMA based, not processing sending AKEY to baseband", v6, 2u);
    }
  }
}

void sub_1012D1CE8(uint64_t a1)
{
  v1 = **(a1 + 40);
  if (sub_10006BB14(v1, 1) == 3)
  {
    v2 = *(v1 + 120);
    if (v2)
    {
      v3 = *(*v2 + 64);

      v3();
    }

    else
    {
      v5 = *(v1 + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "CDMASettings Interface not available", buf, 2u);
      }
    }
  }

  else
  {
    v4 = *(v1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N Not CDMA based, not processing service provisioning MDN", v6, 2u);
    }
  }
}

void sub_1012D1DF4(uint64_t a1)
{
  v1 = **(a1 + 40);
  if (sub_10006BB14(v1, 1) == 3)
  {
    v2 = *(v1 + 120);
    if (v2)
    {
      v3 = *(*v2 + 72);

      v3();
    }

    else
    {
      v5 = *(v1 + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "CDMASettings Interface not available", buf, 2u);
      }
    }
  }

  else
  {
    v4 = *(v1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N Not CDMA based, not setting service provisioning MIN", v6, 2u);
    }
  }
}

void sub_1012D1F00(uint64_t a1)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  v5 = *(*v3 + 120);
  if (v5)
  {
    v6 = *(*v5 + 80);

    v6();
  }

  else
  {
    v9 = v1;
    v10 = v2;
    v7 = *(v4 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "CDMASettings Interface not available", v8, 2u);
    }
  }
}

void sub_1012D1FB0(uint64_t a1)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  v5 = *(*v3 + 120);
  if (v5)
  {
    v6 = *(*v5 + 88);

    v6();
  }

  else
  {
    v9 = v1;
    v10 = v2;
    v7 = *(v4 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "CDMASettings Interface not available", v8, 2u);
    }
  }
}

void sub_1012D2060(uint64_t a1)
{
  v1 = a1;
  (*(**(**a1 + 104) + 288))(*(**a1 + 104), *(*a1 + 8), *(*a1 + 12));
  operator delete();
}

uint64_t sub_1012D2114(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1012D2150(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  if (sub_1000A6F2C(*v1, **(v1 + 8), *(v1 + 16)) == 3)
  {
    v3 = *(*(**(v2 + 48) + 16))(*(v2 + 48), **(v1 + 8));
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(v1 + 16);
      if (*(v4 + 23) < 0)
      {
        v4 = *v4;
      }

      v7 = 136315138;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#N Not a valid MMI (%s) to handle", &v7, 0xCu);
    }

    return 0;
  }

  else
  {
    v6 = *(**(v2 + 104) + 280);

    return v6();
  }
}

void sub_1012D22B8(uint64_t a1)
{
  v1 = *(a1 + 40);
  ServiceMap = Registry::getServiceMap(*(*v1 + 7));
  v3 = ServiceMap;
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

  std::mutex::lock(ServiceMap);
  v12 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v12);
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
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  (*(*v10 + 272))(v10, *v1[1]);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_1012D23D0(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012D23F0(uint64_t a1)
{
  v1 = *(a1 + 40);
  ServiceMap = Registry::getServiceMap(*(*v1 + 56));
  v3 = ServiceMap;
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

  std::mutex::lock(ServiceMap);
  v12 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v12);
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
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  (*(*v10 + 280))(v10, *(v1 + 8), **(v1 + 16));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_1012D2508(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012D2528(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2[6] == *(a1 + 32))
    {
      v3 = v2[4];
      if (v3 == v2 + 5)
      {
        goto LABEL_24;
      }

      v4 = *(a1 + 16);
      while (*(v3 + 8) == *(v4 + 8) && rest::operator==())
      {
        v5 = v3[1];
        v6 = v3;
        if (v5)
        {
          do
          {
            v3 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v3 = v6[2];
            v7 = *v3 == v6;
            v6 = v3;
          }

          while (!v7);
        }

        v8 = v4[1];
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
            v9 = v4[2];
            v7 = *v9 == v4;
            v4 = v9;
          }

          while (!v7);
        }

        v4 = v9;
        if (v3 == v2 + 5)
        {
          goto LABEL_24;
        }
      }
    }

    v10 = v2 + 5;
    sub_100170380((v2 + 4), v2[5]);
    v2[4] = *(a1 + 16);
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v11 = (a1 + 24);
    v2[5] = v12;
    v2[6] = v13;
    if (v13)
    {
      *(v12 + 16) = v10;
      *(a1 + 16) = v11;
      *v11 = 0;
      *(a1 + 32) = 0;
    }

    else
    {
      v2[4] = v10;
    }

    v14 = v2[3];
    if (v14)
    {
      (*(*v14 + 48))(v14, v2 + 4);
    }
  }

LABEL_24:
  sub_100170380(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_1012D26A0(uint64_t **a1, int a2)
{
  v4 = a1 + 1;
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      if (*(v6 + 8) >= a2)
      {
        v5 = v6;
      }

      v6 = v6[*(v6 + 8) < a2];
    }

    while (v6);
    if (v5 != v4 && *(v5 + 8) <= a2)
    {
      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        v9 = v5;
        do
        {
          v8 = v9[2];
          v10 = *v8 == v9;
          v9 = v8;
        }

        while (!v10);
      }

      if (*a1 == v5)
      {
        *a1 = v8;
      }

      a1[2] = (a1[2] - 1);
      sub_100018288(v3, v5);
      sub_1012CA46C((v5 + 4));

      operator delete(v5);
    }
  }
}

void *sub_1012D2780(void *a1, void *a2)
{
  a1[1] = 0;
  v3 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = (a2 + 1);
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    while (1)
    {
      v14 = 0;
      v6 = a1[1];
      if (*a1 == v3)
      {
        break;
      }

      v7 = v3;
      if (v6)
      {
        do
        {
          v8 = v6;
          v6 = *(v6 + 8);
        }

        while (v6);
      }

      else
      {
        do
        {
          v8 = *(v7 + 2);
          v9 = *v8 == v7;
          v7 = v8;
        }

        while (v9);
      }

      if ((sub_1000068BC(v8 + 4, v5 + 32) & 0x80) != 0)
      {
        if (!*v3)
        {
LABEL_14:
          v14 = v3;
LABEL_15:
          operator new();
        }

        goto LABEL_10;
      }

      v10 = sub_100005C2C(a1, &v14, v5 + 4);
LABEL_11:
      if (!*v10)
      {
        goto LABEL_15;
      }

      v11 = *(v5 + 1);
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
          v12 = *(v5 + 2);
          v9 = *v12 == v5;
          v5 = v12;
        }

        while (!v9);
      }

      v5 = v12;
      if (v12 == v4)
      {
        return a1;
      }
    }

    v8 = v3;
    if (!v6)
    {
      goto LABEL_14;
    }

LABEL_10:
    v14 = v8;
    v10 = (v8 + 8);
    goto LABEL_11;
  }

  return a1;
}

void sub_1012D2914(_Unwind_Exception *a1)
{
  operator delete(v2);
  sub_1002B7314(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_1012D2954(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2[6] == *(a1 + 32))
    {
      v3 = v2[4];
      if (v3 == v2 + 5)
      {
        goto LABEL_36;
      }

      v4 = *(a1 + 16);
      while (1)
      {
        v5 = *(v3 + 55);
        if (v5 >= 0)
        {
          v6 = *(v3 + 55);
        }

        else
        {
          v6 = v3[5];
        }

        v7 = *(v4 + 55);
        v8 = v7;
        if ((v7 & 0x80u) != 0)
        {
          v7 = v4[5];
        }

        if (v6 != v7)
        {
          break;
        }

        v9 = v5 >= 0 ? v3 + 4 : v3[4];
        v10 = v8 >= 0 ? v4 + 4 : v4[4];
        if (memcmp(v9, v10, v6) || !rest::operator==())
        {
          break;
        }

        v11 = v3[1];
        v12 = v3;
        if (v11)
        {
          do
          {
            v3 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v3 = v12[2];
            v13 = *v3 == v12;
            v12 = v3;
          }

          while (!v13);
        }

        v14 = v4[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v4[2];
            v13 = *v15 == v4;
            v4 = v15;
          }

          while (!v13);
        }

        v4 = v15;
        if (v3 == v2 + 5)
        {
          goto LABEL_36;
        }
      }
    }

    v16 = v2 + 5;
    sub_1002B7314((v2 + 4), v2[5]);
    v2[4] = *(a1 + 16);
    v18 = *(a1 + 24);
    v19 = *(a1 + 32);
    v17 = (a1 + 24);
    v2[5] = v18;
    v2[6] = v19;
    if (v19)
    {
      *(v18 + 16) = v16;
      *(a1 + 16) = v17;
      *v17 = 0;
      *(a1 + 32) = 0;
    }

    else
    {
      v2[4] = v16;
    }

    v20 = v2[3];
    if (v20)
    {
      (*(*v20 + 48))(v20, v2 + 4);
    }
  }

LABEL_36:
  sub_1002B7314(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_1012D2B14(uint64_t **a1, uint64_t ***a2, __int128 **a3)
{
  v5 = 0;
  v3 = *sub_100005C2C(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_1012D2BF4(uint64_t a1, int a2, _DWORD **a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_1012D2CCC(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 104);
  *__p = 0u;
  v9 = 0u;
  sub_1012C8A60(v2, v3, v1 + 16, (v1 + 40), v1 + 72, v4, __p);
  if (SBYTE7(v9) < 0)
  {
    operator delete(__p[0]);
  }

  sub_1012D2D6C(&v7);
  return sub_1000049E0(&v6);
}

void sub_1012D2D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1012D2D6C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012D2D6C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 95) < 0)
    {
      operator delete(*(v1 + 72));
    }

    if (*(v1 + 63) < 0)
    {
      operator delete(*(v1 + 40));
    }

    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    operator delete();
  }

  return a1;
}

void sub_1012D2DE4(uint64_t a1)
{
  v1 = a1;
  (*(**(**a1 + 104) + 328))(*(**a1 + 104), *(*a1 + 8), *(*a1 + 12));
  operator delete();
}

void *sub_1012D2F10(void *a1)
{
  v2 = (a1 + 1);
  ctu::OsLogContext::OsLogContext(&v4, kCtLoggingSystemName, "lazuli.migration");
  ctu::OsLogLogger::OsLogLogger(v5, &v4);
  ctu::OsLogLogger::OsLogLogger(v2, v5);
  ctu::OsLogLogger::~OsLogLogger(v5);
  ctu::OsLogContext::~OsLogContext(&v4);
  *a1 = off_101F28C08;
  return a1;
}

void sub_1012D2FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  LazuliAppMigrationMonitorInterface::~LazuliAppMigrationMonitorInterface(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_1012D2FF0(uint64_t a1, uint64_t a2)
{
  sub_1012D32B0(v3, a2);
  MobileInstallationWaitForSystemAppMigrationWithCompletion();
  return sub_10036EC9C(v3);
}

void sub_1012D309C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10036EC9C(va);
  _Unwind_Resume(a1);
}

void sub_1012D30D8(uint64_t a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  LazuliAppMigrationMonitorInterface::~LazuliAppMigrationMonitorInterface(a1);
}

void sub_1012D3114(uint64_t a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 8));
  LazuliAppMigrationMonitorInterface::~LazuliAppMigrationMonitorInterface(a1);

  operator delete();
}

void sub_1012D31CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012D3208(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1012D3240(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1012D3270(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012D32B0(uint64_t a1, uint64_t a2)
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

void CellMonitor::sendBulkHints_sync(capabilities::ct *a1, unsigned int a2, unsigned int a3, CFDictionaryRef *a4)
{
  v6 = a1;
  v218 = capabilities::ct::LASDRecordMaxCount(a1);
  v7 = capabilities::ct::LASDRecordMaxCount(v218);
  v8 = capabilities::ct::LASDRecordMaxCount(v7);
  if (capabilities::ct::LASDRecordMaxCount(v8) < 0)
  {
    __assert_rtn("sendBulkHints_sync", "CellRegistrationHints.cpp", 30, "capabilities::ct::LASDRecordMaxCount() <= std::numeric_limits<CFIndex>::max()");
  }

  v215 = a3;
  v251 = 0;
  v252 = 0;
  v253 = 0;
  v248 = 0;
  v249 = 0;
  v250 = 0;
  v219 = a4;
  v217 = v6;
  if (CFDictionaryContainsKey(*a4, @"C2K"))
  {
    Value = CFDictionaryGetValue(*a4, @"C2K");
    v10 = Value;
    if (Value)
    {
      v11 = CFGetTypeID(Value);
      if (v11 == CFDictionaryGetTypeID())
      {
        v12 = v10;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = CFDictionaryGetValue(v12, @"EVDO");
    v14 = v13;
    v213 = v8;
    if (v13)
    {
      v15 = CFGetTypeID(v13);
      if (v15 == CFArrayGetTypeID())
      {
        v16 = v14;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    Count = CFArrayGetCount(v16);
    v18 = Count;
    if (Count >= 10)
    {
      v19 = 10;
    }

    else
    {
      v19 = Count;
    }

    v20 = *(v6 + 5);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I CDMA EVDO records %ld", buf, 0xCu);
    }

    theDict = v12;
    if (v18 < 1)
    {
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v16, v23);
        v25 = ValueAtIndex;
        if (ValueAtIndex)
        {
          v26 = CFGetTypeID(ValueAtIndex);
          if (v26 == CFArrayGetTypeID())
          {
            v27 = v25;
          }

          else
          {
            v27 = 0;
          }
        }

        else
        {
          v27 = 0;
        }

        memset(buf, 0, 20);
        v28 = CFArrayGetValueAtIndex(v27, 0);
        v29 = v28;
        if (v28)
        {
          v30 = CFGetTypeID(v28);
          if (v30 == CFNumberGetTypeID())
          {
            ctu::cf::assign(buf, v29, v31);
          }
        }

        v32 = CFArrayGetValueAtIndex(v27, 1);
        v33 = v32;
        if (v32)
        {
          v34 = CFGetTypeID(v32);
          if (v34 == CFNumberGetTypeID())
          {
            ctu::cf::assign(&buf[2], v33, v35);
          }
        }

        v36 = CFArrayGetValueAtIndex(v27, 2);
        v37 = v36;
        if (v36)
        {
          v38 = CFGetTypeID(v36);
          if (v38 == CFDataGetTypeID())
          {
            v39 = v37;
          }

          else
          {
            v39 = 0;
          }
        }

        else
        {
          v39 = 0;
        }

        *&buf[4] = *CFDataGetBytePtr(v39);
        v40 = &v22[-v21];
        v41 = 0xCCCCCCCCCCCCCCCDLL * (&v22[-v21] >> 2) + 1;
        if (v41 > 0xCCCCCCCCCCCCCCCLL)
        {
          sub_1000CE3D4();
        }

        if (0x999999999999999ALL * (-v21 >> 2) > v41)
        {
          v41 = 0x999999999999999ALL * (-v21 >> 2);
        }

        if (0xCCCCCCCCCCCCCCCDLL * (-v21 >> 2) >= 0x666666666666666)
        {
          v42 = 0xCCCCCCCCCCCCCCCLL;
        }

        else
        {
          v42 = v41;
        }

        if (v42)
        {
          sub_1012D5A24(v42);
        }

        v43 = 4 * (&v22[-v21] >> 2);
        v44 = *buf;
        *(v43 + 16) = *&buf[16];
        *v43 = v44;
        v22 = (v43 + 20);
        v45 = (v43 + 20 * (v40 / -20));
        memcpy(v45, v21, v40);
        if (v21)
        {
          operator delete(v21);
        }

        v21 = v45;
        ++v23;
      }

      while (v19 != v23);
    }

    if (v248)
    {
      v249 = v248;
      operator delete(v248);
    }

    v248 = v21;
    v249 = v22;
    v250 = 0;
    v46 = CFDictionaryGetValue(theDict, @"1X");
    v47 = v46;
    if (v46)
    {
      v48 = CFGetTypeID(v46);
      if (v48 == CFArrayGetTypeID())
      {
        v49 = v47;
      }

      else
      {
        v49 = 0;
      }
    }

    else
    {
      v49 = 0;
    }

    v50 = CFArrayGetCount(v49);
    v51 = v50;
    if (v50 >= 10)
    {
      v52 = 10;
    }

    else
    {
      v52 = v50;
    }

    v53 = v217[5];
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v52;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I CDMA 1X records %ld", buf, 0xCu);
    }

    if (v51 < 1)
    {
      v54 = 0;
    }

    else
    {
      v54 = 0;
      v55 = 0;
      do
      {
        v56 = CFArrayGetValueAtIndex(v49, v55);
        v57 = v56;
        if (v56)
        {
          v58 = CFGetTypeID(v56);
          if (v58 == CFArrayGetTypeID())
          {
            v59 = v57;
          }

          else
          {
            v59 = 0;
          }
        }

        else
        {
          v59 = 0;
        }

        *buf = 0;
        v60 = CFArrayGetValueAtIndex(v59, 0);
        v61 = v60;
        if (v60)
        {
          v62 = CFGetTypeID(v60);
          if (v62 == CFNumberGetTypeID())
          {
            ctu::cf::assign(buf, v61, v63);
          }
        }

        v64 = CFArrayGetValueAtIndex(v59, 1);
        v65 = v64;
        if (v64)
        {
          v66 = CFGetTypeID(v64);
          if (v66 == CFNumberGetTypeID())
          {
            ctu::cf::assign(&buf[2], v65, v67);
          }
        }

        v68 = CFArrayGetValueAtIndex(v59, 2);
        v69 = v68;
        if (v68)
        {
          v70 = CFGetTypeID(v68);
          if (v70 == CFNumberGetTypeID())
          {
            ctu::cf::assign(&buf[4], v69, v71);
          }
        }

        v72 = CFArrayGetValueAtIndex(v59, 3);
        v73 = v72;
        if (v72)
        {
          v74 = CFGetTypeID(v72);
          if (v74 == CFNumberGetTypeID())
          {
            ctu::cf::assign(&buf[6], v73, v75);
          }
        }

        v76 = v54;
        v77 = v54 >> 3;
        if (((v54 >> 3) + 1) >> 61)
        {
          sub_1000CE3D4();
        }

        if (v54 >> 3 != -1)
        {
          sub_1012D59DC((v54 >> 3) + 1);
        }

        *(8 * v77) = *buf;
        v54 = 8 * v77 + 8;
        memcpy(0, 0, v76);
        ++v55;
      }

      while (v52 != v55);
    }

    if (v251)
    {
      v252 = v251;
      operator delete(v251);
    }

    v251 = 0;
    v252 = v54;
    v253 = 0;
    v6 = v217;
    v8 = v213;
  }

  memset(buf, 0, 24);
  if (CFDictionaryContainsKey(*v219, @"GSM"))
  {
    v78 = CFDictionaryGetValue(*v219, @"GSM");
    v79 = v78;
    if (v78)
    {
      v80 = CFGetTypeID(v78);
      if (v80 == CFArrayGetTypeID())
      {
        v81 = v79;
      }

      else
      {
        v81 = 0;
      }
    }

    else
    {
      v81 = 0;
    }

    sub_1012D4A2C(__p, v6, "GSM", v81, v218);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    *buf = *__p;
    *&buf[16] = v247;
  }

  __p[0] = 0;
  __p[1] = 0;
  v247 = 0;
  if (CFDictionaryContainsKey(*v219, @"UMTS"))
  {
    v82 = CFDictionaryGetValue(*v219, @"UMTS");
    v83 = v82;
    if (v82)
    {
      v84 = CFGetTypeID(v82);
      if (v84 == CFArrayGetTypeID())
      {
        v85 = v83;
      }

      else
      {
        v85 = 0;
      }
    }

    else
    {
      v85 = 0;
    }

    sub_1012D4A2C(v244, v6, "UMTS", v85, v218);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *v244;
    v247 = v245;
  }

  v244[0] = 0;
  v244[1] = 0;
  v245 = 0;
  if (CFDictionaryContainsKey(*v219, @"LTE"))
  {
    v86 = CFDictionaryGetValue(*v219, @"LTE");
    v87 = v86;
    if (v86)
    {
      v88 = CFGetTypeID(v86);
      if (v88 == CFArrayGetTypeID())
      {
        v89 = v87;
      }

      else
      {
        v89 = 0;
      }
    }

    else
    {
      v89 = 0;
    }

    v90 = CFArrayGetCount(v89);
    if (v90 >= v7)
    {
      v91 = v7;
    }

    else
    {
      v91 = v90;
    }

    v92 = *(v6 + 5);
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      *v254 = 134217984;
      *&v254[4] = v91;
      _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "#I LTE records %ld", v254, 0xCu);
    }

    if (v91 <= 0)
    {
      v242[0] = 0;
      v242[1] = 0;
      v243 = 0;
    }

    else
    {
      v93 = CFArrayGetValueAtIndex(v89, 0);
      v94 = v93;
      if (v93)
      {
        v95 = CFGetTypeID(v93);
        if (v95 == CFArrayGetTypeID())
        {
          v96 = v94;
        }

        else
        {
          v96 = 0;
        }
      }

      else
      {
        v96 = 0;
      }

      if (CFArrayGetCount(v96) < 6)
      {
        v126 = 0;
        v242[0] = 0;
        v242[1] = 0;
        v243 = 0;
        do
        {
          v127 = CFArrayGetValueAtIndex(v89, v126);
          v128 = v127;
          if (v127)
          {
            v129 = CFGetTypeID(v127);
            if (v129 == CFArrayGetTypeID())
            {
              v130 = v128;
            }

            else
            {
              v130 = 0;
            }
          }

          else
          {
            v130 = 0;
          }

          memset(v254, 0, sizeof(v254));
          v131 = CFArrayGetValueAtIndex(v130, 0);
          v132 = v131;
          if (v131)
          {
            v133 = CFGetTypeID(v131);
            if (v133 == CFNumberGetTypeID())
            {
              ctu::cf::assign(v254, v132, v134);
            }
          }

          v135 = CFArrayGetValueAtIndex(v130, 1);
          v136 = v135;
          if (v135)
          {
            v137 = CFGetTypeID(v135);
            if (v137 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v254[2], v136, v138);
            }
          }

          v139 = CFArrayGetValueAtIndex(v130, 2);
          v140 = v139;
          if (v139)
          {
            v141 = CFGetTypeID(v139);
            if (v141 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v254[8], v140, v142);
            }
          }

          v143 = CFArrayGetValueAtIndex(v130, 3);
          v144 = v143;
          if (v143)
          {
            v145 = CFGetTypeID(v143);
            if (v145 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v254[4], v144, v146);
            }
          }

          v147 = CFArrayGetValueAtIndex(v130, 4);
          v148 = v147;
          if (v147)
          {
            v149 = CFGetTypeID(v147);
            if (v149 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v254[12], v148, v150);
            }
          }

          sub_1012D4F2C(v242, v254);
          ++v126;
        }

        while (v91 != v126);
      }

      else
      {
        v97 = 0;
        v242[0] = 0;
        v242[1] = 0;
        v243 = 0;
        do
        {
          v98 = CFArrayGetValueAtIndex(v89, v97);
          v99 = v98;
          if (v98)
          {
            v100 = CFGetTypeID(v98);
            if (v100 == CFArrayGetTypeID())
            {
              v101 = v99;
            }

            else
            {
              v101 = 0;
            }
          }

          else
          {
            v101 = 0;
          }

          memset(v254, 0, sizeof(v254));
          v102 = CFArrayGetValueAtIndex(v101, 0);
          v103 = v102;
          if (v102)
          {
            v104 = CFGetTypeID(v102);
            if (v104 == CFNumberGetTypeID())
            {
              ctu::cf::assign(v254, v103, v105);
            }
          }

          v106 = CFArrayGetValueAtIndex(v101, 1);
          v107 = v106;
          if (v106)
          {
            v108 = CFGetTypeID(v106);
            if (v108 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v254[2], v107, v109);
            }
          }

          v110 = CFArrayGetValueAtIndex(v101, 2);
          v111 = v110;
          if (v110)
          {
            v112 = CFGetTypeID(v110);
            if (v112 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v254[8], v111, v113);
            }
          }

          v114 = CFArrayGetValueAtIndex(v101, 3);
          v115 = v114;
          if (v114)
          {
            v116 = CFGetTypeID(v114);
            if (v116 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v254[4], v115, v117);
            }
          }

          v118 = CFArrayGetValueAtIndex(v101, 4);
          v119 = v118;
          if (v118)
          {
            v120 = CFGetTypeID(v118);
            if (v120 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v254[12], v119, v121);
            }
          }

          v254[13] = 0;
          if ((v254[14] & 1) == 0)
          {
            v254[14] = 1;
          }

          v122 = CFArrayGetValueAtIndex(v101, 5);
          v123 = v122;
          if (v122)
          {
            v124 = CFGetTypeID(v122);
            if (v124 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v254[13], v123, v125);
            }
          }

          sub_1012D4F2C(v242, v254);
          ++v97;
        }

        while (v91 != v97);
      }
    }

    if (v244[0])
    {
      v244[1] = v244[0];
      operator delete(v244[0]);
    }

    *v244 = *v242;
    v245 = v243;
  }

  v242[0] = 0;
  v242[1] = 0;
  v243 = 0;
  if (CFDictionaryContainsKey(*v219, @"TDSCDMA"))
  {
    v151 = CFDictionaryGetValue(*v219, @"TDSCDMA");
    v152 = v151;
    if (v151)
    {
      v153 = CFGetTypeID(v151);
      if (v153 == CFArrayGetTypeID())
      {
        v154 = v152;
      }

      else
      {
        v154 = 0;
      }
    }

    else
    {
      v154 = 0;
    }

    sub_1012D4A2C(v254, v6, "TDS", v154, v218);
    if (v242[0])
    {
      v242[1] = v242[0];
      operator delete(v242[0]);
    }

    *v242 = *v254;
    v243 = v255;
  }

  memset(v254, 0, sizeof(v254));
  v255 = 0;
  if (CFDictionaryContainsKey(*v219, @"NR"))
  {
    v155 = CFDictionaryGetValue(*v219, @"NR");
    v156 = v155;
    if (v155)
    {
      v157 = CFGetTypeID(v155);
      if (v157 == CFArrayGetTypeID())
      {
        v158 = v156;
      }

      else
      {
        v158 = 0;
      }
    }

    else
    {
      v158 = 0;
    }

    v159 = CFArrayGetCount(v158);
    if (v159 < v8)
    {
      v8 = v159;
    }

    v160 = *(v6 + 5);
    if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
    {
      *v257 = 134217984;
      *&v257[4] = v8;
      _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEFAULT, "#I NR records %ld", v257, 0xCu);
    }

    if (v8 < 1)
    {
      v161 = 0;
      v162 = 0;
    }

    else
    {
      v161 = 0;
      v162 = 0;
      for (i = 0; i != v8; ++i)
      {
        v164 = CFArrayGetValueAtIndex(v158, i);
        v165 = v164;
        if (v164)
        {
          v166 = CFGetTypeID(v164);
          if (v166 == CFArrayGetTypeID())
          {
            v167 = v165;
          }

          else
          {
            v167 = 0;
          }
        }

        else
        {
          v167 = 0;
        }

        memset(v257, 0, sizeof(v257));
        v258 = 0;
        v168 = CFArrayGetValueAtIndex(v167, 0);
        v169 = v168;
        if (v168)
        {
          v170 = CFGetTypeID(v168);
          if (v170 == CFNumberGetTypeID())
          {
            ctu::cf::assign(v257, v169, v171);
          }
        }

        v172 = CFArrayGetValueAtIndex(v167, 1);
        v173 = v172;
        if (v172)
        {
          v174 = CFGetTypeID(v172);
          if (v174 == CFNumberGetTypeID())
          {
            ctu::cf::assign(&v257[2], v173, v175);
          }
        }

        v176 = CFArrayGetValueAtIndex(v167, 2);
        v177 = v176;
        if (v176)
        {
          v178 = CFGetTypeID(v176);
          if (v178 == CFNumberGetTypeID())
          {
            ctu::cf::assign(&v257[8], v177, v179);
          }
        }

        v180 = CFArrayGetValueAtIndex(v167, 3);
        v181 = v180;
        if (v180)
        {
          v182 = CFGetTypeID(v180);
          if (v182 == CFNumberGetTypeID())
          {
            ctu::cf::assign(&v257[4], v181, v183);
          }
        }

        v184 = CFArrayGetValueAtIndex(v167, 4);
        v185 = v184;
        if (v184)
        {
          v186 = CFGetTypeID(v184);
          if (v186 == CFNumberGetTypeID())
          {
            ctu::cf::assign(&v257[12], v185, v187);
          }
        }

        v188 = CFArrayGetValueAtIndex(v167, 5);
        v189 = v188;
        if (v188)
        {
          v190 = CFGetTypeID(v188);
          if (v190 == CFNumberGetTypeID())
          {
            ctu::cf::assign(&v257[14], v189, v191);
          }
        }

        v192 = CFArrayGetValueAtIndex(v167, 6);
        v193 = v192;
        if (v192)
        {
          v194 = CFGetTypeID(v192);
          if (v194 == CFNumberGetTypeID())
          {
            ctu::cf::assign(&v258, v193, v195);
          }
        }

        v196 = v162 - v161;
        v197 = 0xCCCCCCCCCCCCCCCDLL * ((v162 - v161) >> 2) + 1;
        if (v197 > 0xCCCCCCCCCCCCCCCLL)
        {
          sub_1000CE3D4();
        }

        if (0x999999999999999ALL * (-v161 >> 2) > v197)
        {
          v197 = 0x999999999999999ALL * (-v161 >> 2);
        }

        if (0xCCCCCCCCCCCCCCCDLL * (-v161 >> 2) >= 0x666666666666666)
        {
          v198 = 0xCCCCCCCCCCCCCCCLL;
        }

        else
        {
          v198 = v197;
        }

        if (v198)
        {
          sub_1012D5BB8(v198);
        }

        v199 = 4 * ((v162 - v161) >> 2);
        v200 = *v257;
        *(v199 + 16) = v258;
        *v199 = v200;
        v162 = v199 + 20;
        v201 = (v199 + 20 * (v196 / -20));
        memcpy(v201, v161, v196);
        if (v161)
        {
          operator delete(v161);
        }

        v161 = v201;
      }
    }

    if (*v254)
    {
      *&v254[8] = *v254;
      operator delete(*v254);
    }

    *v254 = v161;
    *&v254[8] = v162;
    v255 = 0;
    v6 = v217;
  }

  if (CFDictionaryContainsKey(*v219, @"Bootstrap"))
  {
    v202 = CFDictionaryGetValue(*v219, @"Bootstrap");
    v203 = v202;
    v257[0] = 0;
    if (v202)
    {
      v204 = CFGetTypeID(v202);
      if (v204 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(v257, v203, v205);
      }
    }

    v206 = v257[0];
  }

  else
  {
    v206 = 0;
  }

  v207 = *(v6 + 10);
  v240 = 0;
  v241 = 0;
  v239 = 0;
  v208 = v252 - v251;
  if (v252 != v251)
  {
    if (!((v208 >> 3) >> 61))
    {
      sub_1012D59DC(v208 >> 3);
    }

    sub_1000CE3D4();
  }

  v236 = 0;
  v237 = 0;
  v238 = 0;
  if (v249 != v248)
  {
    v209 = 0xCCCCCCCCCCCCCCCDLL * ((v249 - v248) >> 2);
    if (v209 <= 0xCCCCCCCCCCCCCCCLL)
    {
      sub_1012D5A24(v209);
    }

    sub_1000CE3D4();
  }

  v233 = 0;
  v234 = 0;
  v235 = 0;
  sub_1012D5A78(&v233, *buf, *&buf[8], 0xCCCCCCCCCCCCCCCDLL * ((*&buf[8] - *buf) >> 1));
  v230 = 0;
  v231 = 0;
  v232 = 0;
  sub_1012D5A78(&v230, __p[0], __p[1], 0xCCCCCCCCCCCCCCCDLL * ((__p[1] - __p[0]) >> 1));
  v227 = 0;
  v228 = 0;
  v229 = 0;
  v210 = v244[1] - v244[0];
  if (v244[1] != v244[0])
  {
    if (!((v210 >> 4) >> 60))
    {
      sub_1012D5B70(v210 >> 4);
    }

    sub_1000CE3D4();
  }

  v224 = 0;
  v225 = 0;
  v226 = 0;
  sub_1012D5A78(&v224, v242[0], v242[1], 0xCCCCCCCCCCCCCCCDLL * ((v242[1] - v242[0]) >> 1));
  v221 = 0;
  v222 = 0;
  v223 = 0;
  if (*&v254[8] != *v254)
  {
    v211 = 0xCCCCCCCCCCCCCCCDLL * ((*&v254[8] - *v254) >> 2);
    if (v211 <= 0xCCCCCCCCCCCCCCCLL)
    {
      sub_1012D5BB8(v211);
    }

    sub_1000CE3D4();
  }

  (*(*v207 + 48))(v207, v215, a2, v206 & 1, &v239, &v236, &v233, &v230, &v227, &v224, &v221);
  if (v221)
  {
    v222 = v221;
    operator delete(v221);
  }

  if (v224)
  {
    v225 = v224;
    operator delete(v224);
  }

  if (v227)
  {
    v228 = v227;
    operator delete(v227);
  }

  if (v230)
  {
    v231 = v230;
    operator delete(v230);
  }

  if (v233)
  {
    v234 = v233;
    operator delete(v233);
  }

  if (v236)
  {
    v237 = v236;
    operator delete(v236);
  }

  if (v239)
  {
    v240 = v239;
    operator delete(v239);
  }

  memset(v257, 0, sizeof(v257));
  CellMonitor::getModel_sync(v6, v215, v257);
  if (*v257)
  {
    (*(**v257 + 120))(*v257, &v251, &v248, buf, __p, v244, v242, v254);
  }

  else
  {
    v212 = *(*(**(v6 + 7) + 16))(*(v6 + 7), v215);
    if (os_log_type_enabled(v212, OS_LOG_TYPE_ERROR))
    {
      *v220 = 0;
      _os_log_error_impl(&_mh_execute_header, v212, OS_LOG_TYPE_ERROR, "Could not get model for recording time of last bulk hints", v220, 2u);
    }
  }

  if (*&v257[8])
  {
    sub_100004A34(*&v257[8]);
  }

  if (*v254)
  {
    *&v254[8] = *v254;
    operator delete(*v254);
  }

  if (v242[0])
  {
    v242[1] = v242[0];
    operator delete(v242[0]);
  }

  if (v244[0])
  {
    v244[1] = v244[0];
    operator delete(v244[0]);
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

  if (v248)
  {
    v249 = v248;
    operator delete(v248);
  }

  if (v251)
  {
    v252 = v251;
    operator delete(v251);
  }
}