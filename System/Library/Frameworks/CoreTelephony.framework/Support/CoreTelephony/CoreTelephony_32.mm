void sub_1001FC828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1001FC8D8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E30E20;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1001FC918(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001FC9D4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E30EA0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001FCA08(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001FCA54(uint64_t a1, xpc_object_t *a2)
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

  sub_100170380(a1, *(a1 + 8));
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

    sub_100008EA4(&v15, object, 0);
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

    sub_100008EA4(v14, object, count);
    xpc_release(object[0]);
    for (i = v16; i != v14[1] || v15 != v14[0]; i = ++v16)
    {
      v13 = 0;
      object[0] = &v15;
      object[1] = i;
      sub_10003EAD4(object, &v13);
      if (xpc_get_type(v13) == &_xpc_type_dictionary)
      {
        *__p = 0u;
        v12 = 0u;
        *v9 = 0u;
        v10 = 0u;
        *object = 0u;
        v8 = 0u;
        v6 = v13;
        if (v13)
        {
          xpc_retain(v13);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_1001FCD1C(object, &v6);
        xpc_release(v6);
        sub_1001FCED0(a1, object, object);
        if (SBYTE7(v12) < 0)
        {
          operator delete(__p[0]);
        }

        if (SBYTE7(v10) < 0)
        {
          operator delete(v9[0]);
        }

        if (SHIBYTE(v8) < 0)
        {
          operator delete(object[1]);
        }
      }

      xpc_release(v13);
    }

    xpc_release(v14[0]);
    xpc_release(v15);
  }

  xpc_release(v3);
}

void sub_1001FCC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v12 - 48));
  xpc_release(v11);
  _Unwind_Resume(a1);
}

void sub_1001FCD1C(int *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v9 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v9 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v6 = &v9;
    v7 = "first";
    sub_100006354(&v6, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v10 = *a1;
      ctu::rest::detail::read_enum_string_value(&v10, &object, v5);
      *a1 = v10;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0, v5);
    }

    xpc_release(object);
    v6 = &v9;
    v7 = "second";
    sub_100006354(&v6, &object);
    rest::read_rest_value();
    xpc_release(object);
    v3 = v9;
  }

  xpc_release(v3);
}

void sub_1001FCE7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001FCED0(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 32);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1001FCFF0(uint64_t a1)
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
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1001FD0B4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E30F20;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001FD0E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001FD220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1001FD2D0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E30FA0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1001FD308(void *a1, const xpc::object *a2)
{
  v3 = a1[1];
  v4 = *v3;
  v10 = *(v3 + 2);
  v9 = v4;
  read_rest_value(v3, a2);
  v5 = a1[3];
  v6 = a1[4];
  v7 = (a1[2] + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  return v5(v7, &v9);
}

uint64_t sub_1001FD394(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001FD3E0(uint64_t a1)
{
  v1 = *(a1 + 32);
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
        MessageCenterModel::handleDatabaseFullChanged(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1001FD468(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1001FD484(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1001FD4B4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E31050;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001FD508(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1001FD51C(uint64_t a1)
{
  v1 = *(a1 + 32);
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
        MessageCenterModel::handleMMSEnabledChanged(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1001FD5A4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1001FD5C0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1001FD5F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E310D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001FD644(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_1001FD6C8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E31120;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001FD6FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001FD748(void *a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  MessageCenterModel::receiveSms_sync(*v1, *(v1 + 8), (v1 + 16), (v1 + 40), v1 + 64, *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 108));
}

void sub_1001FD818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  sub_1001FD834(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001FD834(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 87) < 0)
    {
      operator delete(*(v1 + 64));
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

void sub_1001FD914(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101765E28(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001FD930(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001FD968(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1001FD998(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1001FD9D8(void *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  v3 = *(*(**(*v1 + 48) + 16))(*(*v1 + 48), *(v1 + 8));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I receiveMMSFromNetwork", buf, 2u);
  }

  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  *buf = *(v1 + 16);
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  MessageCenterModel::receiveMMS_sync(v2, v4, buf, *(v1 + 32));
}

void sub_1001FDB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_1001FDB58(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001FDB58(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return a1;
}

void sub_1001FDC2C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101765E28(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001FDC48(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001FDC80(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1001FDCB0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1001FDCF0(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 32);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1001FDDD8(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1001FDE14(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void sub_1001FDE60(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(v2 + 8);
  *v2 = v3;
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_1001FDEC8(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(v2 + 8);
  *v2 = v3;
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_1001FDF30(void *result)
{
  v1 = result[5];
  v2 = (*v1)[11];
  v3 = (*v1 + 12);
  if (v2 != v3)
  {
    v4 = v1 + 2;
    v5 = v1 + 1;
    while (1)
    {
      v6 = *(v2 + 5);
      if (v6)
      {
        v7 = (*(*v6 + 64))(v6);
        v8 = v5;
        if (v7 == 2)
        {
          goto LABEL_7;
        }

        if (v7 == 1)
        {
          break;
        }
      }

LABEL_8:
      v9 = *(v2 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v2 + 2);
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
      if (v10 == v3)
      {
        return;
      }
    }

    v8 = v4;
LABEL_7:
    sub_1001FDFFC(*v8, v2 + 8);
    goto LABEL_8;
  }
}

void sub_1001FDFFC(const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_1000CE3D4();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_100016740(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 4;
  }

  a1[1] = v6;
}

uint64_t sub_1001FE0DC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[2];
  v26 = 0;
  v27 = 0;
  v3 = *v1;
  v4 = *(v2 + 64);
  v21 = *(v2 + 56);
  v22 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v3)(&v26);
  if (v22)
  {
    sub_100004A34(v22);
  }

  v5 = v27;
  v25[0] = v26;
  v25[1] = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = MessageCenterModel::checkMsgType_sync(v2, v25);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v6)
  {
    if ((*(*v26 + 48))(v26) == -1)
    {
      v7 = v27;
      v24[0] = v26;
      v24[1] = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MessageCenterModel::assignMessageId_sync(v2, v24);
      if (v7)
      {
        sub_100004A34(v7);
      }
    }

    Registry::getTimerService(&v21, *(v2 + 56));
    v8 = (**v21)(v21);
    if (v22)
    {
      sub_100004A34(v22);
    }

    (*(*v26 + 248))(v26, v8);
    v9 = ((**v1)[2])();
    if (MessageCenterModel::requiresResiliency_sync(v2, v9))
    {
      v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Adding message to resiliency queue", &v21, 2u);
      }

      v12 = *v1;
      v11 = v1[1];
      v21 = *v1;
      v22 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *v23 = v8;
      *&v23[8] = (*(*v26 + 48))(v26);
      v23[12] = 0;
      v14 = *(v2 + 2064);
      if (v14 >= *(v2 + 2072))
      {
        v18 = sub_1001FE4C4((v2 + 2056), &v21);
        v19 = v22;
        *(v2 + 2064) = v18;
        if (v19)
        {
          sub_100004A34(v19);
        }
      }

      else
      {
        *v14 = v12;
        v14[1] = v11;
        v21 = 0;
        v22 = 0;
        v15 = *&v23[5];
        v14[2] = *v23;
        *(v14 + 21) = v15;
        *(v2 + 2064) = v14 + 4;
      }

      MessageCenterModel::attemptResilientMORequestsIfRequired_sync(v2, v13);
    }

    else
    {
      v17 = v27;
      v21 = v26;
      v22 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      MessageCenterModel::queueForSend_sync(v2, &v21);
      if (v17)
      {
        sub_100004A34(v17);
      }
    }

    v16 = (*(*v26 + 48))(v26);
  }

  else
  {
    v16 = 0xFFFFFFFFLL;
  }

  if (v27)
  {
    sub_100004A34(v27);
  }

  return v16;
}

void sub_1001FE440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001FE4C4(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1000CE3D4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_1001FE5E0(a1, v7);
  }

  v8 = 32 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *v8 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v9 = *(a2 + 16);
  *(v8 + 21) = *(a2 + 21);
  *(v8 + 16) = v9;
  *&v18 = 32 * v2 + 32;
  v10 = a1[1];
  v11 = 32 * v2 + *a1 - v10;
  sub_1001FE628(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1001FE758(&v16);
  return v15;
}

void sub_1001FE5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1001FE758(va);
  _Unwind_Resume(a1);
}

void sub_1001FE5E0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1001FE628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *a4 = *v6;
      *v6 = 0;
      *(v6 + 8) = 0;
      v7 = *(v6 + 16);
      *(a4 + 21) = *(v6 + 21);
      *(a4 + 16) = v7;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v13 = a4;
    LOBYTE(v11) = 1;
    while (v5 != a3)
    {
      v8 = *(v5 + 8);
      if (v8)
      {
        sub_100004A34(v8);
      }

      v5 += 32;
    }
  }

  return sub_1001FE6DC(v10);
}

uint64_t sub_1001FE6DC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1001FE714(a1);
  }

  return a1;
}

void sub_1001FE714(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      sub_100004A34(v3);
    }

    v1 -= 32;
  }
}

void **sub_1001FE758(void **a1)
{
  sub_1001FE78C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1001FE78C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 32;
    v4 = *(v1 - 24);
    if (v4)
    {
      sub_100004A34(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 32;
    }
  }
}

uint64_t sub_1001FE7E0(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1001FE81C(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1001FE858(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1 + 24;
  v3 = *v2;
  if (!*v2)
  {
    return 0;
  }

  v4 = (*v1 + 22);
  v5 = *v1[1];
  v6 = v2;
  do
  {
    v7 = *(v3 + 32);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 == v2 || v5 < *(v6 + 8))
  {
    return 0;
  }

  sub_1001FE8C8(v4, v6);
  return 1;
}

uint64_t *sub_1001FE8C8(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_1000194D8(a1, a2);
  v4 = a2[6];
  if (v4)
  {
    sub_100004A34(v4);
  }

  operator delete(a2);
  return v3;
}

void sub_1001FE908(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(*a1 + 2));
  if (*(v1 + 3) != 3)
  {
    *buf = 0;
    v16 = 0;
    MessageCenterModel::handleResultAndDetermineIfReAttemptIsRequired_sync(v2, *(v1 + 2), 1, 1, 0, *(v1 + 4));
    MessageCenterModel::handleMessageSendNotification_sync(v2, *(v1 + 2), 1, *(v1 + 4), 1u, *(v1 + 3), buf);
    goto LABEL_16;
  }

  v4 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Handling SMS as phone number registration request", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 56));
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
  *buf = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, buf);
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
LABEL_13:
      (*(*v13 + 16))(v13, *(v1 + 2), *(v1 + 4), 1);
      if ((v14 & 1) == 0)
      {
        sub_100004A34(v12);
      }

      *buf = _NSConcreteStackBlock;
      v16 = 0x40000000;
      v17 = sub_1001FED40;
      v18 = &unk_101E31420;
      v19 = 0;
      sub_1001FEB94(0x800E0, buf);
LABEL_16:
      operator delete();
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
  goto LABEL_13;
}

void sub_1001FEB4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  operator delete();
}

BOOL sub_1001FEB94(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v8)
  {
    v6 = 0;
    v7 = 0;
    sub_10001C610(&v6);
    v4 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  else
  {
    v4 = 0;
  }

  sub_10001C0A0(&v8);
  return v4;
}

void sub_1001FECC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    sub_100004A34(a7);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FED40(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 32);
  v3 = a2[8];
  a2[8] = v3 | 2;
  a2[4] = v2;
  v4 = *(result + 36);
  a2[8] = v3 | 6;
  a2[5] = v4;
  return result;
}

void sub_1001FED68(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (*(*a1 + 20))
  {
    v3 = 257;
  }

  else if (*(v1 + 6) == 3)
  {
    v3 = 257;
  }

  else
  {
    v3 = 256;
  }

  if (MessageCenterModel::handleResultAndDetermineIfReAttemptIsRequired_sync(**a1, *(*a1 + 2), 1, 0, v3, *(v1 + 7)))
  {
    goto LABEL_22;
  }

  v4 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
  v5 = *(v1 + 8);
  if (v5 != 3)
  {
    MessageCenterModel::handleMessageSendNotification_sync(v2, *(v1 + 2), 0, *(v1 + 7), 1u, v5, v1 + 3);
    goto LABEL_22;
  }

  v6 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Handling SMS as phone number registration request", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 56));
  v8 = ServiceMap;
  if (v9 < 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  *buf = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, buf);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = 0;
LABEL_19:
      (*(*v15 + 16))(v15, *(v1 + 2), *(v1 + 7), 0);
      if ((v16 & 1) == 0)
      {
        sub_100004A34(v14);
      }

      v17 = *(v1 + 12);
      *buf = _NSConcreteStackBlock;
      v19 = 0x40000000;
      v20 = sub_1001FED40;
      v21 = &unk_101E31420;
      v22 = v17;
      sub_1001FEB94(0x800E0, buf);
LABEL_22:
      operator delete();
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
  goto LABEL_19;
}

void sub_1001FEFD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  operator delete();
}

void sub_1001FF018(uint64_t **a1)
{
  v3 = a1;
  v4[0] = 0;
  v1 = *a1;
  v2 = **a1;
  v4[1] = 0;
  MessageCenterModel::handleResultAndDetermineIfReAttemptIsRequired_sync(v2, *(v1 + 2), 2, 1, 0, *(v1 + 3));
  MessageCenterModel::handleMessageSendNotification_sync(v2, *(v1 + 2), 1, *(v1 + 3), 2u, *(v1 + 4), v4);
  operator delete();
}

void sub_1001FF0CC(uint64_t **a1)
{
  v3 = a1;
  v1 = *a1;
  v2 = **a1;
  if ((MessageCenterModel::handleResultAndDetermineIfReAttemptIsRequired_sync(v2, *(*a1 + 2), 2, 0, 0, *(*a1 + 3)) & 1) == 0)
  {
    v4[0] = 0;
    v4[1] = 0;
    MessageCenterModel::handleMessageSendNotification_sync(v2, v1[2], 0, v1[3], 2u, v1[4], v4);
  }

  operator delete();
}

void *sub_1001FF200(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E31470;
  sub_100122CA8((a1 + 3));
  return a1;
}

void sub_1001FF27C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E31470;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001FF2F8(void *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v7[0] = *(v1 + 16);
  v7[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  MessageCenterModel::receiveMMS_sync(v2, v3, v7, 0xFFFFFFFFLL);
}

void sub_1001FF3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1001FF3DC(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001FF3DC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_1001FF430(uint64_t *a1)
{
  v1 = *a1;
  v17 = a1;
  v18 = v1;
  v2 = *v1;
  v3 = sub_100AA1220(*(*v1 + 128));
  ServiceMap = Registry::getServiceMap(*(v2 + 56));
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
  v19 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v19);
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
  v14 = *(v1 + 8);
  v15 = *(v1 + 24);
  v19 = *(v1 + 16);
  v20 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v12 + 64))(v12, v14, &v19, v3, *(v1 + 32));
  if (v20)
  {
    sub_100004A34(v20);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  sub_1001FF5D4(&v18);
  return sub_1000049E0(&v17);
}

void sub_1001FF594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  sub_1001FF5D4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001FF5D4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_1001FF628(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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
      v7 = *(v4 + 32);
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

__n128 sub_1001FF778(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E314C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void sub_1001FF7AC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(a1 + 16));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Resiliency timer expired", v5, 2u);
  }

  MessageCenterModel::flushResilientMORequests_sync(v2, *(a1 + 16), v4);
}

uint64_t sub_1001FF854(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001FF8A0(MessageCenterModel ***a1, uint64_t a2)
{
  v2 = a1;
  MessageCenterModel::attemptResilientMORequestsIfRequired_sync(**a1, a2);
  operator delete();
}

__n128 sub_1001FF998(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E31540;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void sub_1001FF9CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(*(**(v1 + 48) + 16))(*(v1 + 48), *(a1 + 16));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I ResiliencyReAttemptTimer expired", v5, 2u);
  }

  v4 = *(v1 + 2088);
  *(v1 + 2080) = 0u;
  if (v4)
  {
    sub_100004A34(v4);
  }

  MessageCenterModel::attemptResilientMORequestsIfRequired_sync(v1, v3);
}

uint64_t sub_1001FFA78(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1001FFAC4(uint64_t *a1)
{
  v1 = *a1;
  v18 = a1;
  v19 = v1;
  v2 = *v1;
  v3 = *(*(**(*v1 + 48) + 16))(*(*v1 + 48), *(v1 + 8));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I [StewieMMS] Proceeding to handle MMS notification", buf, 2u);
  }

  v4 = sub_100AA1220(*(v2 + 128));
  ServiceMap = Registry::getServiceMap(*(v2 + 56));
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
  *buf = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, buf);
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
      goto LABEL_11;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_11:
  v15 = *(v1 + 8);
  v16 = *(v1 + 24);
  *buf = *(v1 + 16);
  v21 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v13 + 64))(v13, v15, buf, v4, *(v1 + 32));
  if (v21)
  {
    sub_100004A34(v21);
  }

  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  sub_1001FF5D4(&v19);
  return sub_1000049E0(&v18);
}

void sub_1001FFC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  sub_1001FF5D4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_1001FFCE0(void *a1)
{
  *a1 = off_101E315E0;
  sub_10000FF50((a1 + 1));
  return a1;
}

void sub_1001FFD24(void *a1)
{
  *a1 = off_101E315E0;
  sub_10000FF50((a1 + 1));

  operator delete();
}

void sub_1001FFE34(void *a1)
{
  sub_10000FF50(a1 + 8);

  operator delete(a1);
}

void sub_1001FFE70(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  *v14 = *(a2 + 16);
  *&v14[3] = *(a2 + 19);
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if ((v5 & 0x80) != 0)
  {
    sub_100005F2C(&__p, v4, v3);
    if (v18 < 0)
    {
      if (v16 == 19)
      {
        p_p = __p;
        goto LABEL_7;
      }

LABEL_18:
      v13 = 1;
      goto LABEL_19;
    }

    v6 = v18;
  }

  else
  {
    __p = v4;
    v16 = v3;
    *v17 = *v14;
    *&v17[3] = *&v14[3];
    v18 = v5;
    v6 = v5;
  }

  if (v6 != 19)
  {
    goto LABEL_18;
  }

  p_p = &__p;
LABEL_7:
  v8 = *p_p;
  v9 = p_p[1];
  v10 = *(p_p + 11);
  v13 = v8 != 0x6C7070612E6D6F63 || v9 != 0x656C69626F4D2E65 || v10 != 0x534D53656C69626FLL;
LABEL_19:
  sub_10000FFD0(a1 + 8, v13);
  if ((v18 & 0x80000000) == 0)
  {
    if ((v5 & 0x80) == 0)
    {
      return;
    }

LABEL_23:
    operator delete(v4);
    return;
  }

  operator delete(__p);
  if ((v5 & 0x80) != 0)
  {
    goto LABEL_23;
  }
}

uint64_t sub_1001FFFC8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_100200014(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_10006F22C(&v6, (v1 + 8));
  MessageCenterModel::handleAppsInstalled_sync(v2, &v6);
  sub_100010250(&v6);
  sub_100200094(&v5);
  return sub_1000049E0(&v4);
}

void sub_100200070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  sub_100010250(va2);
  sub_100200094(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100200094(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100010250((v1 + 8));
    operator delete();
  }

  return a1;
}

uint64_t *sub_1002000E4(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_10006F22C(&v6, (v1 + 8));
  MessageCenterModel::handleAppsUninstalled_sync(v2, &v6);
  sub_100010250(&v6);
  sub_100200094(&v5);
  return sub_1000049E0(&v4);
}

void sub_100200140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  sub_100010250(va2);
  sub_100200094(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

void *sub_1002001E8(void *a1, int *a2, uint64_t *a3, __int128 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E31670;
  sub_10020033C((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_100200264(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E31670;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002002B8(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 24));
}

uint64_t sub_10020033C(uint64_t a1, int *a2, uint64_t *a3, __int128 *a4)
{
  v5 = *a2;
  v6 = a3[1];
  v8 = *a3;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1001C285C(a1, v5, &v8, a4);
  if (v9)
  {
    sub_100004A34(v9);
  }

  return a1;
}

void sub_10020039C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10020041C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101765DD0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100200438(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100200470(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t sub_1002004A0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1002004E0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  v18 = 0;
  v19 = 0;
  v6 = v3[1];
  v5 = (v3 + 1);
  MessageCenterModel::receivedMessageWithId_sync(v4, *v6, &v18);
  v7 = v18;
  if (v18)
  {
    v17 = (*(*v18 + 128))(v18);
    v8 = (*(**(v4 + 48) + 16))(*(v4 + 48));
    {
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = *(v4 + 1928);
      if (!v9)
      {
        goto LABEL_12;
      }

      v10 = v4 + 1928;
      do
      {
        if (*(v9 + 32) >= v17)
        {
          v10 = v9;
        }

        v9 = *(v9 + 8 * (*(v9 + 32) < v17));
      }

      while (v9);
      if (v10 != v4 + 1928 && v17 >= *(v10 + 32))
      {
        memset(&v16, 0, sizeof(v16));
        v15 = *(v10 + 63);
        if (v15 < 0)
        {
          v15 = *(v10 + 48);
        }

        if (v15)
        {
          std::string::operator=(&v16, (v10 + 40));
          goto LABEL_24;
        }
      }

      else
      {
LABEL_12:
        memset(&v16, 0, sizeof(v16));
      }

      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        sub_101765E80();
      }

LABEL_24:
      sub_1002008E8();
    }

    v13 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = **v5;
      *buf = 67109120;
      *&buf[4] = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Not an MMS: %u", buf, 8u);
    }
  }

  else
  {
    v11 = *(v4 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_101765EB4(v5, v11, v12);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  if (v19)
  {
    sub_100004A34(v19);
  }
}

void sub_10020085C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, char a26)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (v26)
  {
    sub_100004A34(v26);
  }

  if (a24)
  {
    sub_100004A34(a24);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10020096C(void *a1, int *a2, uint64_t *a3, __int128 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E31670;
  sub_1002009C8((a1 + 3), a2, a3, a4);
  return a1;
}

uint64_t sub_1002009C8(uint64_t a1, int *a2, uint64_t *a3, __int128 *a4)
{
  v5 = *a2;
  v6 = a3[1];
  v8 = *a3;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1001C285C(a1, v5, &v8, a4);
  if (v9)
  {
    sub_100004A34(v9);
  }

  return a1;
}

void sub_100200A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100200AC4(uint64_t a1, _DWORD *a2, int *a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_101E2F6E8;
  v5 = *a3;
  *(a1 + 24) = *a2;
  sub_1001C7C38(a1 + 32, a4);
  *(a1 + 160) = v5;
  return a1;
}

void sub_100200B38(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(v2 + 8);
  *v2 = v3;
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_100200BA0(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(v2 + 8);
  *v2 = v3;
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

uint64_t sub_100200C08(char *a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a5;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *__p = 0u;
  v9 = sub_1001D0D18(a4, a1, a2, __p, a5 | 0x1040u);
  sub_1001D0EE4(a3, a1, a2, __p, (v5 & 0x800) != 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (!v9)
  {
    return 0;
  }

  if (*(a3 + 88) != 1)
  {
    return 1;
  }

  result = 0;
  *(a3 + 8) = *a3;
  return result;
}

void sub_100200CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100200D78(uint64_t a1, _DWORD *a2, int *a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_101E2F6E8;
  v5 = *a3;
  *(a1 + 24) = *a2;
  sub_1001C7C38(a1 + 32, a4);
  *(a1 + 160) = v5;
  return a1;
}

void *sub_100200E70(void *a1, int *a2, uint64_t *a3, __int128 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E31670;
  sub_100200ECC((a1 + 3), a2, a3, a4);
  return a1;
}

uint64_t sub_100200ECC(uint64_t a1, int *a2, uint64_t *a3, __int128 *a4)
{
  v5 = *a2;
  v6 = a3[1];
  v8 = *a3;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1001C285C(a1, v5, &v8, a4);
  if (v9)
  {
    sub_100004A34(v9);
  }

  return a1;
}

void sub_100200F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100200F54(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_100200F70(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void sub_100201438(uint64_t a1@<X0>, void *a2@<X8>)
{
  os_unfair_lock_lock(&unk_101FBA0B0);
  v4 = &unk_101FBA000;
  if ((atomic_load_explicit(qword_101FBA0C0, memory_order_acquire) & 1) == 0)
  {
    v6 = __cxa_guard_acquire(qword_101FBA0C0);
    v4 = &unk_101FBA000;
    if (v6)
    {
      qword_101FBA0B8 = objc_opt_new();
      __cxa_guard_release(qword_101FBA0C0);
      v4 = &unk_101FBA000;
    }
  }

  v5 = [v4[23] dateFromString:a1];
  *a2 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  os_unfair_lock_unlock(&unk_101FBA0B0);
}

void sub_1002014F0(_Unwind_Exception *a1)
{
  __cxa_guard_abort(qword_101FBA0C0);
  os_unfair_lock_unlock(&unk_101FBA0B0);
  _Unwind_Resume(a1);
}

void MMSCServer::MMSCServer(MMSCServer *this, const char *a2)
{
  *this = off_101E75908;
  v4 = (this + 8);
  ctu::OsLogContext::OsLogContext(&__p, kCtLoggingSystemName, "msg.mms.svr");
  ctu::OsLogLogger::OsLogLogger(v9, &__p);
  ctu::OsLogLogger::OsLogLogger(v4, v9);
  ctu::OsLogLogger::~OsLogLogger(v9);
  ctu::OsLogContext::~OsLogContext(&__p);
  *this = off_101E31838;
  *(this + 1) = 0u;
  *(this + 26) = 0;
  *(this + 57) = 0;
  *(this + 243) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 108) = 80;
  *(this + 55) = 0;
  if (a2)
  {
    v5 = strlen(a2);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v8 = v5;
    if (v5)
    {
      memcpy(&__p, a2, v5);
    }

    *(&__p.var0 + v6) = 0;
    MMSCServer::setBaseUrl(this, &__p);
    if (v8 < 0)
    {
      operator delete(__p.var0);
    }
  }

  *(this + 56) = 0x200000;
  *(this + 58) = 3072;
  *(this + 118) = 1;
  *(this + 238) = 0;
  *(this + 120) = 0;
  *(this + 242) = 0;
}

void sub_1002016F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1002030AC(v17);
  if (*(v15 + 207) < 0)
  {
    operator delete(*(v15 + 184));
  }

  if (*(v15 + 183) < 0)
  {
    operator delete(*(v15 + 160));
  }

  if (*(v15 + 159) < 0)
  {
    operator delete(*(v15 + 136));
  }

  if (*(v15 + 135) < 0)
  {
    operator delete(*(v15 + 112));
  }

  if (*(v15 + 111) < 0)
  {
    operator delete(*(v15 + 88));
  }

  if (*(v15 + 87) < 0)
  {
    operator delete(*(v15 + 64));
  }

  if (*(v15 + 63) < 0)
  {
    operator delete(*(v15 + 40));
  }

  if (*(v15 + 39) < 0)
  {
    operator delete(*v18);
  }

  ctu::OsLogLogger::~OsLogLogger(v16);
  MMSCServerInterface::~MMSCServerInterface(v15);
  _Unwind_Resume(a1);
}

const void **MMSCServer::setBaseUrl(const void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 23);
  if (v4 < 0)
  {
    v6 = *(a2 + 8);
    if (!v6)
    {
      return result;
    }

    v5 = *a2;
  }

  else
  {
    if (!*(a2 + 23))
    {
      return result;
    }

    v5 = a2;
    v6 = *(a2 + 23);
  }

  if (v6 >= 7)
  {
    v6 = 7;
  }

  v7 = &v5[v6];
  v8 = v5;
  v9 = v7;
  do
  {
    if (*v8 == 104)
    {
      v10 = &_mh_execute_header.magic + 1;
      while (v10 != 7)
      {
        if (&v8[v10] == v7)
        {
          goto LABEL_18;
        }

        v11 = v8[v10];
        v12 = aHttp[v10++];
        if (v11 != v12)
        {
          goto LABEL_10;
        }
      }

      v9 = v8;
    }

LABEL_10:
    ++v8;
  }

  while (v8 != v7);
LABEL_18:
  if (v9 == v7 || v9 != v5)
  {
    v13 = *a2;
    v14 = *(a2 + 8);
    if (v4 >= 0)
    {
      v13 = a2;
      v14 = *(a2 + 23);
    }

    v15 = 8;
    if (v14 < 8)
    {
      v15 = v14;
    }

    if (!v14)
    {
      goto LABEL_41;
    }

    v16 = (v13 + v15);
    v17 = v13;
    v18 = v16;
    do
    {
      if (*v17 == 104)
      {
        v19 = &_mh_execute_header.magic + 1;
        while (v19 != 8)
        {
          if (&v17[v19] == v16)
          {
            goto LABEL_36;
          }

          v20 = v17[v19];
          v21 = aHttps[v19++];
          if (v20 != v21)
          {
            goto LABEL_28;
          }
        }

        v18 = v17;
      }

LABEL_28:
      ++v17;
    }

    while (v17 != v16);
LABEL_36:
    if (v18 == v16 || v18 != v13)
    {
LABEL_41:
      if (*(result + 39) < 0)
      {
        result[3] = 7;
        v23 = result[2];
      }

      else
      {
        v23 = result + 2;
        *(result + 39) = 7;
      }

      *(v23 + 3) = 791624304;
      *v23 = 1886680168;
      v22 = (v23 + 7);
      goto LABEL_46;
    }

    v5 += 8;
  }

  else
  {
    v5 += 7;
  }

  if (*(result + 39) < 0)
  {
    result[3] = 0;
    v22 = result[2];
  }

  else
  {
    v22 = result + 2;
    *(result + 39) = 0;
  }

LABEL_46:
  *v22 = 0;
  v24 = strchr(v5, 58);
  if (v24)
  {
    sub_1000167D4((v3 + 5), v5, v24 - v5);
  }

  else
  {
    sub_100016890((v3 + 5), v5);
  }

  v25 = (v3 + 2);
  v26 = *(a2 + 23);
  if (v26 >= 0)
  {
    v27 = a2;
  }

  else
  {
    v27 = *a2;
  }

  if (v26 >= 0)
  {
    v28 = *(a2 + 23);
  }

  else
  {
    v28 = *(a2 + 8);
  }

  std::string::append((v3 + 2), v27, v28);
  if (*(v3 + 39) < 0)
  {
    v25 = *v25;
  }

  v31 = CFStringCreateWithCString(kCFAllocatorDefault, v25, 0x600u);
  v29 = CFURLCreateWithString(kCFAllocatorDefault, v31, 0);
  v30 = v3[26];
  v3[26] = v29;
  v32 = v30;
  sub_1002030AC(&v32);
  return sub_100005978(&v31);
}

void MMSCServer::~MMSCServer(const void **this)
{
  *this = off_101E31838;
  sub_1002030AC(this + 26);
  if (*(this + 207) < 0)
  {
    operator delete(this[23]);
  }

  if (*(this + 183) < 0)
  {
    operator delete(this[20]);
  }

  if (*(this + 159) < 0)
  {
    operator delete(this[17]);
  }

  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  ctu::OsLogLogger::~OsLogLogger((this + 1));

  MMSCServerInterface::~MMSCServerInterface(this);
}

{
  MMSCServer::~MMSCServer(this);

  operator delete();
}

std::string *MMSCServer::setProxy(std::string *result, uint64_t a2, __int16 a3)
{
  v4 = result;
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    result = std::string::operator=((result + 112), a2);
  }

  else if (result[5].__r_.__value_.__s.__data_[15] < 0)
  {
    *result[4].__r_.__value_.__r.__words[2] = 0;
    result[5].__r_.__value_.__r.__words[0] = 0;
  }

  else
  {
    result[4].__r_.__value_.__s.__data_[16] = 0;
    result[5].__r_.__value_.__s.__data_[15] = 0;
  }

  LOWORD(v4[9].__r_.__value_.__l.__data_) = a3;
  return result;
}

const void *MMSCServer::prepareMessageForSend(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v3 = a3;
  v78 = 0uLL;
  v79 = 0;
  if (a3)
  {
LABEL_2:
    sub_1013D80C0(*a2, "X-Mms-Transaction-ID", v3, 0);
    goto LABEL_4;
  }

  if (!sub_1013D8420(*a2, "X-Mms-Transaction-ID"))
  {
    v96 = 0;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    memset(v81, 0, sizeof(v81));
    sub_10000D518(v81);
    time(0);
    v26 = std::ostream::operator<<();
    sub_10000C030(v26, "-", 1);
    ++*(a1 + 220);
    std::ostream::operator<<();
    if ((BYTE8(v86) & 0x10) != 0)
    {
      v29 = v86;
      if (v86 < *(&v83 + 1))
      {
        *&v86 = *(&v83 + 1);
        v29 = *(&v83 + 1);
      }

      v30 = v83;
    }

    else
    {
      if ((BYTE8(v86) & 8) == 0)
      {
        v27 = a1;
        v28 = 0;
        HIBYTE(v77) = 0;
        goto LABEL_167;
      }

      v30 = v81[3];
      v29 = *(&v82 + 1);
    }

    v28 = v29 - v30;
    if ((v29 - v30) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    v27 = a1;
    if (v28 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v77) = v29 - v30;
    if (v28)
    {
      memmove(&v76, v30, v28);
    }

LABEL_167:
    *(&v76 + v28) = 0;
    if (SHIBYTE(v79) < 0)
    {
      operator delete(v78);
    }

    v78 = v76;
    v79 = v77;
    if (v77 >= 0)
    {
      v3 = &v78;
    }

    else
    {
      v3 = v76;
    }

    if (SHIBYTE(v85) < 0)
    {
      operator delete(*(&v84 + 1));
    }

    std::locale::~locale(&v81[2]);
    std::ostream::~ostream();
    std::ios::~ios();
    a1 = v27;
    if (v3)
    {
      goto LABEL_2;
    }
  }

LABEL_4:
  if ((*(a1 + 159) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 144))
    {
      goto LABEL_12;
    }

LABEL_8:
    if (!sub_1013D8420(*a2, "X-Mms-MMS-Version"))
    {
      v6 = (a1 + 136);
      if (*(a1 + 159) < 0)
      {
        v6 = *v6;
      }

      sub_1013D80C0(*a2, "X-Mms-MMS-Version", v6, 0);
    }

    goto LABEL_12;
  }

  if (*(a1 + 159))
  {
    goto LABEL_8;
  }

LABEL_12:
  if (*(a1 + 228) >= 1)
  {
    v7 = sub_1013D8420(*a2, "Subject");
    v8 = v7;
    if (v7)
    {
      v76 = 0uLL;
      v77 = 0;
      v9 = (*(*v7 + 72))(v7, &v76);
      if (v9)
      {
        if (v77 >= 0)
        {
          v10 = HIBYTE(v77);
        }

        else
        {
          v10 = *(&v76 + 1);
        }

        v11 = *(a1 + 228);
        if (v10 > v11)
        {
          v12 = a1;
          v13 = (v11 + 1);
          __chkstk_darwin(v9);
          bzero(&v69 - ((v13 + 15) & 0x1FFFFFFF0), v13);
          Mutable = CFStringCreateMutable(0, 0);
          v15 = Mutable;
          if (v77 >= 0)
          {
            v16 = &v76;
          }

          else
          {
            v16 = v76;
          }

          CFStringAppendCString(Mutable, v16, 0x8000100u);
          v69 = v10;
          v70 = &v69;
          Length = CFStringGetLength(v15);
          v18 = *(v12 + 228);
          v19 = CFStringGetLength(v15);
          if (Length - 1 >= v18)
          {
            v20 = v18;
          }

          else
          {
            v20 = Length - 1;
          }

          v97.length = v19 - v20;
          v97.location = v20;
          CFStringDelete(v15, v97);
          *&v21 = 134217984;
          v71 = v21;
          while ((v20 & 0x8000000000000000) == 0)
          {
            CString = CFStringGetCString(v15, &v69 - ((v13 + 15) & 0x1FFFFFFF0), v13, 0x8000100u);
            v23 = *(v12 + 8);
            v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
            if (CString)
            {
              if (v24)
              {
                v31 = strlen(&v69 - ((v13 + 15) & 0x1FFFFFFF0));
                LODWORD(v81[0]) = 134218496;
                *(v81 + 4) = v69;
                WORD2(v81[1]) = 2048;
                *(&v81[1] + 6) = v31;
                HIWORD(v81[2]) = 2048;
                v81[3] = v20;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I MMS subject truncated from %zu bytes to %zu bytes (%ld characters) due to carrier setting", v81, 0x20u);
              }

              (*(*v8 + 16))(v8, &v69 - ((v13 + 15) & 0x1FFFFFFF0));
              break;
            }

            if (v24)
            {
              LODWORD(v81[0]) = v71;
              *(v81 + 4) = v20;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I MMS subject truncation to %ld characters failed (partial code-point); trying again...", v81, 0xCu);
            }

            v98.location = --v20;
            v98.length = 1;
            CFStringDelete(v15, v98);
          }

          CFRelease(v15);
          a1 = v12;
        }
      }

      else
      {
        v25 = *(a1 + 8);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_101765F30(v25);
        }
      }

      if (SHIBYTE(v77) < 0)
      {
        operator delete(v76);
      }
    }
  }

  if ((*(a1 + 207) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 192))
    {
      goto LABEL_157;
    }
  }

  else if (!*(a1 + 207))
  {
    goto LABEL_157;
  }

  memset(v81, 0, 24);
  v76 = 0uLL;
  v77 = 0;
  sub_1013D8520(*a2, "To", v81);
  if (v81[1] == v81[0])
  {
    memset(&v75, 0, sizeof(v75));
    goto LABEL_151;
  }

  v32 = 0;
  v70 = (a1 + 184);
  *&v71 = a1;
  if ((v81[1] - v81[0]) <= 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = v81[1] - v81[0];
  }

  do
  {
    if (v32 >= v81[1] - v81[0])
    {
      sub_1002030E0();
    }

    v34 = (*(*v81[0][v32] + 80))(v81[0][v32]);
    v35 = *(&v76 + 1);
    if (*(&v76 + 1) >= v77)
    {
      v37 = (*(&v76 + 1) - v76) >> 3;
      if ((v37 + 1) >> 61)
      {
        sub_1000CE3D4();
      }

      v38 = (v77 - v76) >> 2;
      if (v38 <= v37 + 1)
      {
        v38 = v37 + 1;
      }

      if ((v77 - v76) >= 0x7FFFFFFFFFFFFFF8)
      {
        v39 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v39 = v38;
      }

      if (v39)
      {
        sub_1000FB8B8(&v76, v39);
      }

      v40 = (8 * v37);
      *v40 = v34;
      v36 = 8 * v37 + 8;
      v41 = v40 - (*(&v76 + 1) - v76);
      memcpy(v41, v76, *(&v76 + 1) - v76);
      v42 = v76;
      *&v76 = v41;
      *(&v76 + 1) = v36;
      v77 = 0;
      if (v42)
      {
        operator delete(v42);
      }
    }

    else
    {
      **(&v76 + 1) = v34;
      v36 = v35 + 8;
    }

    *(&v76 + 1) = v36;
    sub_1013D81D0(*a2, "To");
    ++v32;
  }

  while (v33 != v32);
  v43 = 0;
  memset(&v75, 0, sizeof(v75));
  memset(&v74, 0, sizeof(v74));
  do
  {
    if (v43 >= (*(&v76 + 1) - v76) >> 3)
    {
      sub_1002030E0();
    }

    (*(**(v76 + 8 * v43) + 72))(*(v76 + 8 * v43), &v75);
    memset(&v73, 0, sizeof(v73));
    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v73, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
    }

    else
    {
      v73 = v75;
    }

    v44 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = (&v73 + HIBYTE(v73.__r_.__value_.__r.__words[2]));
    }

    else
    {
      v45 = (v73.__r_.__value_.__r.__words[0] + v73.__r_.__value_.__l.__size_);
    }

    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = &v73;
    }

    else
    {
      v46 = v73.__r_.__value_.__r.__words[0];
    }

    if (v46 != v45)
    {
      do
      {
        v46->__r_.__value_.__s.__data_[0] = __tolower(v46->__r_.__value_.__s.__data_[0]);
        v46 = (v46 + 1);
      }

      while (v46 != v45);
      v44 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
    }

    if ((v44 & 0x80) != 0)
    {
      size = v73.__r_.__value_.__l.__size_;
      if (!v73.__r_.__value_.__l.__size_)
      {
        goto LABEL_176;
      }

      v48 = v73.__r_.__value_.__r.__words[0];
      if (*v73.__r_.__value_.__l.__data_ != 43)
      {
        goto LABEL_123;
      }

      if (v73.__r_.__value_.__l.__size_ == 1)
      {
LABEL_176:
        sub_10013C334();
      }

      if (*(v73.__r_.__value_.__r.__words[0] + 1) == 49)
      {
        goto LABEL_123;
      }
    }

    else
    {
      if (!v44)
      {
        goto LABEL_176;
      }

      if (v73.__r_.__value_.__s.__data_[0] != 43)
      {
        goto LABEL_123;
      }

      if (v44 == 1)
      {
        goto LABEL_176;
      }

      if (v73.__r_.__value_.__s.__data_[1] == 49)
      {
        goto LABEL_123;
      }

      size = v44;
      v48 = &v73;
    }

    v49 = memchr(v48, 64, size);
    if (!v49 || v49 - v48 == -1)
    {
      if ((v44 & 0x80u) == 0)
      {
        v50 = &v73;
      }

      else
      {
        v50 = v73.__r_.__value_.__r.__words[0];
      }

      v51 = v44;
      if ((v44 & 0x80u) != 0)
      {
        v51 = v73.__r_.__value_.__l.__size_;
      }

      if (v51 >= 10)
      {
        v52 = v50 + v51;
        v53 = v50;
        while (1)
        {
          v54 = memchr(v53, 47, v51 - 9);
          if (!v54)
          {
            goto LABEL_123;
          }

          if (*v54 == 0x6C703D657079742FLL && *(v54 + 4) == 28269)
          {
            break;
          }

          v53 = (v54 + 1);
          v51 = v52 - v53;
          if (v52 - v53 < 10)
          {
            goto LABEL_123;
          }
        }

        if (v54 == v52 || v54 - v50 == -1)
        {
          goto LABEL_123;
        }

        std::string::basic_string(&v72, &v73, 1uLL, 3uLL, &v80);
        v56 = SHIBYTE(v72.__r_.__value_.__r.__words[2]);
        if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v57 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v57 = v72.__r_.__value_.__l.__size_;
        }

        v58 = *(v71 + 207);
        v59 = v58;
        if ((v58 & 0x80u) != 0)
        {
          v58 = *(v71 + 192);
        }

        if (v57 == v58)
        {
          if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v60 = &v72;
          }

          else
          {
            v60 = v72.__r_.__value_.__r.__words[0];
          }

          if (v59 >= 0)
          {
            v61 = v70;
          }

          else
          {
            v61 = *v70;
          }

          v62 = memcmp(v60, v61, v57) == 0;
          if ((v56 & 0x80000000) == 0)
          {
LABEL_136:
            if (v62)
            {
              std::string::basic_string(&v72, &v75, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v80);
              if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v74.__r_.__value_.__l.__data_);
              }

              v74 = v72;
            }

            else
            {
              std::string::operator=(&v74, v70);
              std::string::basic_string(&v72, &v75, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v80);
              if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v65 = &v72;
              }

              else
              {
                v65 = v72.__r_.__value_.__r.__words[0];
              }

              if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v66 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v66 = v72.__r_.__value_.__l.__size_;
              }

              std::string::append(&v74, v65, v66);
              if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v72.__r_.__value_.__l.__data_);
              }
            }

            goto LABEL_124;
          }
        }

        else
        {
          v62 = 0;
          if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_136;
          }
        }

        operator delete(v72.__r_.__value_.__l.__data_);
        goto LABEL_136;
      }
    }

LABEL_123:
    std::string::operator=(&v74, &v75);
LABEL_124:
    if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v63 = &v74;
    }

    else
    {
      v63 = v74.__r_.__value_.__r.__words[0];
    }

    sub_1013D80C0(*a2, "To", v63, 1);
    if (v43 >= (*(&v76 + 1) - v76) >> 3)
    {
      sub_1002030E0();
    }

    v64 = *(v76 + 8 * v43);
    if (v64)
    {
      (*(*v64 + 8))(v64);
    }

    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    ++v43;
  }

  while (v43 != v33);
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

LABEL_151:
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (v76)
  {
    *(&v76 + 1) = v76;
    operator delete(v76);
  }

  if (v81[0])
  {
    v81[1] = v81[0];
    operator delete(v81[0]);
  }

LABEL_157:
  v67 = sub_100121BFC(*a2);
  if (SHIBYTE(v79) < 0)
  {
    operator delete(v78);
  }

  return v67;
}

void sub_10020276C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  v3 = *(v1 + 152);
  if (v3)
  {
    *(v1 + 160) = v3;
    operator delete(v3);
  }

  v4 = *(v1 + 208);
  if (v4)
  {
    *(v1 + 216) = v4;
    operator delete(v4);
  }

  if (*(v1 + 199) < 0)
  {
    operator delete(*(v1 + 176));
  }

  _Unwind_Resume(exception_object);
}

void MMSCServer::dumpState(MMSCServer *this)
{
  v2 = *(this + 1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = this + 16;
    if (*(this + 39) < 0)
    {
      v3 = *v3;
    }

    v24 = 136315138;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Base URL: %s", &v24, 0xCu);
    v2 = *(this + 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = this + 40;
    if (*(this + 63) < 0)
    {
      v4 = *v4;
    }

    v24 = 136315138;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Host name: %s", &v24, 0xCu);
    v2 = *(this + 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = this + 64;
    if (*(this + 87) < 0)
    {
      v5 = *v5;
    }

    v24 = 136315138;
    v25 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I UA prof: %s", &v24, 0xCu);
    v2 = *(this + 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = this + 88;
    if (*(this + 111) < 0)
    {
      v6 = *v6;
    }

    v24 = 136315138;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I User agent: %s", &v24, 0xCu);
    v2 = *(this + 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = this + 112;
    if (*(this + 135) < 0)
    {
      v7 = *v7;
    }

    v24 = 136315138;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Proxy host: %s", &v24, 0xCu);
    v2 = *(this + 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = this + 136;
    if (*(this + 159) < 0)
    {
      v8 = *v8;
    }

    v24 = 136315138;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Mms version: %s", &v24, 0xCu);
    v2 = *(this + 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(this + 108);
    v24 = 67109120;
    LODWORD(v25) = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Proxy port: %d", &v24, 8u);
    v2 = *(this + 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(this + 55);
    v24 = 67109120;
    LODWORD(v25) = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Next transaction id: %u", &v24, 8u);
    v2 = *(this + 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(this + 56);
    v24 = 67109120;
    LODWORD(v25) = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Max mms size: %u", &v24, 8u);
    v2 = *(this + 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(this + 57);
    v24 = 67109120;
    LODWORD(v25) = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Max mms subject len: %u", &v24, 8u);
    v2 = *(this + 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(this + 236);
    v24 = 67109120;
    LODWORD(v25) = v13;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Enable notify response: %u", &v24, 8u);
    v2 = *(this + 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v14 = CSIBOOLAsString(*(this + 237));
    v24 = 136315138;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Enable ack: %s", &v24, 0xCu);
    v2 = *(this + 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v15 = CSIBOOLAsString(*(this + 238));
    v24 = 136315138;
    v25 = v15;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Allow reports: %s", &v24, 0xCu);
    v2 = *(this + 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v16 = CSIBOOLAsString(*(this + 239));
    v24 = 136315138;
    v25 = v16;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Enable reject mms if too large: %s", &v24, 0xCu);
    v2 = *(this + 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v17 = CSIBOOLAsString(*(this + 243));
    v24 = 136315138;
    v25 = v17;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Send reject notification if mmms too large: %s", &v24, 0xCu);
    v2 = *(this + 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v18 = CSIBOOLAsString(*(this + 240));
    v24 = 136315138;
    v25 = v18;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Can use transaction id with content location: %s", &v24, 0xCu);
    v2 = *(this + 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v19 = CSIBOOLAsString(*(this + 241));
    v24 = 136315138;
    v25 = v19;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Allow fetch from multiple mmscs: %s", &v24, 0xCu);
    v2 = *(this + 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v20 = this + 160;
    if (*(this + 183) < 0)
    {
      v20 = *v20;
    }

    v24 = 136315138;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Carrier require phone number header name: %s", &v24, 0xCu);
    v2 = *(this + 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v21 = this + 184;
    if (*(this + 207) < 0)
    {
      v21 = *v21;
    }

    v24 = 136315138;
    v25 = v21;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Explicit Internation dialing code: %s", &v24, 0xCu);
    v2 = *(this + 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v22 = CSIBOOLAsString(*(this + 242));
    v24 = 136315138;
    v25 = v22;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Verbose: %s", &v24, 0xCu);
    v2 = *(this + 1);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v23 = CSIBOOLAsString(*(this + 61) != 0);
    v24 = 136315138;
    v25 = v23;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Number prefix requires international symbol: %s", &v24, 0xCu);
  }
}

const void **sub_1002030AC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1002030F8(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

double sub_100203130(uint64_t a1)
{
  *a1 = off_101E31A10;
  *(a1 + 104) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  return result;
}

void sub_100203170(uint64_t a1)
{
  *a1 = off_101E31A10;
  v4 = *(a1 + 88);
  v2 = (a1 + 88);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100140988(v2, v3);
  }

  v5 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v5)
  {
    sub_100140988(a1 + 80, v5);
  }

  v6 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v6)
  {
    sub_100140988(a1 + 72, v6);
  }

  v11 = (a1 + 48);
  sub_1000087B4(&v11);
  v7 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v7)
  {
    sub_100140988(a1 + 40, v7);
  }

  v8 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v8)
  {
    sub_100140988(a1 + 32, v8);
  }

  v9 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v9)
  {
    sub_100140988(a1 + 24, v9);
  }

  sub_100140928((a1 + 16), 0);
  v10 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v10)
  {
    sub_100140988(a1 + 8, v10);
  }

  PB::Base::~Base(a1);
}

void sub_100203264(uint64_t a1)
{
  sub_100203170(a1);

  operator delete();
}

uint64_t sub_10020329C(uint64_t a1, uint64_t a2)
{
  *a1 = off_101E31A10;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  *(a1 + 56) = 0u;
  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  if (a1 != a2)
  {
    sub_100008234((a1 + 48), *(a2 + 48), *(a2 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 56) - *(a2 + 48)) >> 3));
  }

  if (*(a2 + 72))
  {
    operator new();
  }

  if (*(a2 + 80))
  {
    operator new();
  }

  if (*(a2 + 40))
  {
    operator new();
  }

  if (*(a2 + 32))
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    operator new();
  }

  if (*(a2 + 88))
  {
    operator new();
  }

  v4 = *(a2 + 104);
  if (v4)
  {
    v5 = *(a2 + 96);
    *(a1 + 104) |= 1u;
    *(a1 + 96) = v5;
    v4 = *(a2 + 104);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(a2 + 100);
    *(a1 + 104) |= 2u;
    *(a1 + 100) = v6;
  }

  return a1;
}

uint64_t sub_1002036E8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 104))
  {
    PB::TextFormatter::format(this, "gsmaSgp22Version", *(a1 + 96));
  }

  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    PB::TextFormatter::format(this, "secondaryCsn", v5);
  }

  if (*(a1 + 24))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 32))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 40))
  {
    PB::TextFormatter::format();
  }

  v6 = *(a1 + 48);
  for (i = *(a1 + 56); v6 != i; v6 += 24)
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 72))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 80))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 88))
  {
    PB::TextFormatter::format();
  }

  if ((*(a1 + 104) & 2) != 0)
  {
    PB::TextFormatter::format(this, "simAllianceProfileVersion", *(a1 + 100));
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_100203864(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    v7 = (a1 + 48);
    do
    {
      v8 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v16 = 0;
        v17 = 0;
        v11 = 0;
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v8 + v2);
        v21 = v2 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_100;
          }

          v22 = *v20;
          *(this + 1) = v21;
          v11 |= (v22 & 0x7F) << v16;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          --v19;
          ++v20;
          ++v21;
          v15 = v17++ > 8;
          if (v15)
          {
LABEL_18:
            v11 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v11 = 0;
        }
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = (v8 + v2);
        v13 = v2 + 1;
        while (1)
        {
          *(this + 1) = v13;
          v14 = *v12++;
          v11 |= (v14 & 0x7F) << v9;
          if ((v14 & 0x80) == 0)
          {
            break;
          }

          v9 += 7;
          ++v13;
          v15 = v10++ > 8;
          if (v15)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v11 & 7) == 4))
      {
        break;
      }

      v23 = v11 >> 3;
      if ((v11 >> 3) <= 5)
      {
        if (v23 <= 2)
        {
          if (v23 == 1)
          {
            operator new();
          }

          if (v23 == 2)
          {
            operator new();
          }
        }

        else
        {
          switch(v23)
          {
            case 3:
              v42 = *(a1 + 56);
              v43 = *(a1 + 64);
              if (v42 >= v43)
              {
                v51 = 0xAAAAAAAAAAAAAAABLL * ((v42 - *v7) >> 3);
                v52 = v51 + 1;
                if (v51 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_1000CE3D4();
                }

                v53 = 0xAAAAAAAAAAAAAAABLL * ((v43 - *v7) >> 3);
                if (2 * v53 > v52)
                {
                  v52 = 2 * v53;
                }

                if (v53 >= 0x555555555555555)
                {
                  v54 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v54 = v52;
                }

                v69[4] = v7;
                if (v54)
                {
                  sub_100005348(v7, v54);
                }

                v61 = 24 * v51;
                *v61 = 0;
                *(v61 + 8) = 0;
                *(v61 + 16) = 0;
                v44 = 24 * v51 + 24;
                v62 = *(a1 + 48);
                v63 = *(a1 + 56) - v62;
                v64 = 24 * v51 - v63;
                memcpy((v61 - v63), v62, v63);
                v65 = *(a1 + 48);
                *(a1 + 48) = v64;
                *(a1 + 56) = v44;
                v66 = *(a1 + 64);
                *(a1 + 64) = 0;
                v69[2] = v65;
                v69[3] = v66;
                v69[0] = v65;
                v69[1] = v65;
                sub_1000054E0(v69);
              }

              else
              {
                *v42 = 0;
                v42[1] = 0;
                v44 = (v42 + 3);
                v42[2] = 0;
              }

              *(a1 + 56) = v44;
              PB::Reader::read();
              goto LABEL_88;
            case 4:
              operator new();
            case 5:
              operator new();
          }
        }
      }

      else if (v23 > 8)
      {
        switch(v23)
        {
          case 9:
            operator new();
          case 0xA:
            *(a1 + 104) |= 1u;
            v34 = *(this + 1);
            v33 = *(this + 2);
            v35 = *this;
            if (v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v33)
            {
              v45 = 0;
              v46 = 0;
              v38 = 0;
              v18 = v33 >= v34;
              v47 = v33 - v34;
              if (!v18)
              {
                v47 = 0;
              }

              v48 = (v35 + v34);
              v49 = v34 + 1;
              while (1)
              {
                if (!v47)
                {
                  LODWORD(v38) = 0;
                  *(this + 24) = 1;
                  goto LABEL_95;
                }

                v50 = *v48;
                *(this + 1) = v49;
                v38 |= (v50 & 0x7F) << v45;
                if ((v50 & 0x80) == 0)
                {
                  break;
                }

                v45 += 7;
                --v47;
                ++v48;
                ++v49;
                v15 = v46++ > 8;
                if (v15)
                {
LABEL_69:
                  LODWORD(v38) = 0;
                  goto LABEL_95;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v38) = 0;
              }
            }

            else
            {
              v36 = 0;
              v37 = 0;
              v38 = 0;
              v39 = (v35 + v34);
              v40 = v34 + 1;
              while (1)
              {
                *(this + 1) = v40;
                v41 = *v39++;
                v38 |= (v41 & 0x7F) << v36;
                if ((v41 & 0x80) == 0)
                {
                  break;
                }

                v36 += 7;
                ++v40;
                v15 = v37++ > 8;
                if (v15)
                {
                  goto LABEL_69;
                }
              }
            }

LABEL_95:
            *(a1 + 96) = v38;
            goto LABEL_88;
          case 0xB:
            *(a1 + 104) |= 2u;
            v25 = *(this + 1);
            v24 = *(this + 2);
            v26 = *this;
            if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
            {
              v55 = 0;
              v56 = 0;
              v29 = 0;
              v18 = v24 >= v25;
              v57 = v24 - v25;
              if (!v18)
              {
                v57 = 0;
              }

              v58 = (v26 + v25);
              v59 = v25 + 1;
              while (1)
              {
                if (!v57)
                {
                  LODWORD(v29) = 0;
                  *(this + 24) = 1;
                  goto LABEL_98;
                }

                v60 = *v58;
                *(this + 1) = v59;
                v29 |= (v60 & 0x7F) << v55;
                if ((v60 & 0x80) == 0)
                {
                  break;
                }

                v55 += 7;
                --v57;
                ++v58;
                ++v59;
                v15 = v56++ > 8;
                if (v15)
                {
LABEL_85:
                  LODWORD(v29) = 0;
                  goto LABEL_98;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v29) = 0;
              }
            }

            else
            {
              v27 = 0;
              v28 = 0;
              v29 = 0;
              v30 = (v26 + v25);
              v31 = v25 + 1;
              while (1)
              {
                *(this + 1) = v31;
                v32 = *v30++;
                v29 |= (v32 & 0x7F) << v27;
                if ((v32 & 0x80) == 0)
                {
                  break;
                }

                v27 += 7;
                ++v31;
                v15 = v28++ > 8;
                if (v15)
                {
                  goto LABEL_85;
                }
              }
            }

LABEL_98:
            *(a1 + 100) = v29;
            goto LABEL_88;
        }
      }

      else
      {
        switch(v23)
        {
          case 6:
            operator new();
          case 7:
            operator new();
          case 8:
            operator new();
        }
      }

      if (!PB::Reader::skip(this, v23, v11 & 7, 0))
      {
        v68 = 0;
        return v68 & 1;
      }

LABEL_88:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_100:
  v68 = v4 ^ 1;
  return v68 & 1;
}

uint64_t sub_100203F8C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 8))
  {
    result = PB::Writer::write();
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 2u);
  }

  v5 = *(v3 + 48);
  v6 = *(v3 + 56);
  while (v5 != v6)
  {
    result = PB::Writer::write();
    v5 += 24;
  }

  if (*(v3 + 72))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 80))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 40))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 32))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 24))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 88))
  {
    result = PB::Writer::write();
  }

  v7 = *(v3 + 104);
  if (v7)
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 96), 0xAu);
    v7 = *(v3 + 104);
  }

  if ((v7 & 2) != 0)
  {
    v8 = *(v3 + 100);

    return PB::Writer::writeVarInt(this, v8, 0xBu);
  }

  return result;
}

double sub_1002040C8@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  result = 0.0;
  *a2 = 0u;
  a2[1] = 0u;
  v3 = *a1;
  a2[2] = 0u;
  a2[3] = v3;
  return result;
}

void sub_1002040DC(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a1[1];
  v86 = *a1;
  v87 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = sub_100A94378();
  if (v87)
  {
    sub_100004A34(v87);
  }

  v83 = 0;
  v84 = 0;
  v85 = 0;
  sub_100A942A4(v6, &v83);
  v80 = 0;
  v81 = 0;
  v82 = 0;
  sub_100A942A4(v6 + 1800, &v80);
  v78 = 0uLL;
  v79 = 0;
  std::operator+<char>();
  v7 = std::string::append(&v68, ">\n<rcspushlocation id=", 0x18uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v69.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v69.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  v12 = std::string::append(&v69, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v70.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v70.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v70, " label=>\n<gp:geopriv>\n<gp:location-info>\n<gml:Point srsName=urn:ogc:def:crs:EPSG::4326>\n<gml:pos>", 0x66uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v71.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v71.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v67, *(a2 + 48));
  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v67;
  }

  else
  {
    v16 = v67.__r_.__value_.__r.__words[0];
  }

  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v67.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v67.__r_.__value_.__l.__size_;
  }

  v18 = std::string::append(&v71, v16, size);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v72.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v72.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v72, " ", 1uLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v73.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v73.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v66, *(a2 + 56));
  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v66;
  }

  else
  {
    v22 = v66.__r_.__value_.__r.__words[0];
  }

  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v66.__r_.__value_.__l.__size_;
  }

  v24 = std::string::append(&v73, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v74.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v74.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v74, "</gml:pos>\n</gml:Point>\n</gp:location-info>\n<gp:usage-rules>\n<gp:retention-expiry>", 0x52uLL);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v75.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v75.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (v82 >= 0)
  {
    v28 = &v80;
  }

  else
  {
    v28 = v80;
  }

  if (v82 >= 0)
  {
    v29 = HIBYTE(v82);
  }

  else
  {
    v29 = v81;
  }

  v30 = std::string::append(&v75, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v76.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v76.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v76, "</gp:retention-expiry>\n</gp:usage-rules>\n</gp:geopriv>\n<timestamp>", 0x42uLL);
  v33 = *&v32->__r_.__value_.__l.__data_;
  __dst.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&__dst.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (v85 >= 0)
  {
    v34 = &v83;
  }

  else
  {
    v34 = v83;
  }

  if (v85 >= 0)
  {
    v35 = HIBYTE(v85);
  }

  else
  {
    v35 = v84;
  }

  v36 = std::string::append(&__dst, v34, v35);
  v37 = *&v36->__r_.__value_.__l.__data_;
  *&v49 = *(&v36->__r_.__value_.__l + 2);
  *__p = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  v38 = std::string::append(__p, "</timestamp>\n</rcspushlocation>\n</rcsenvelope>", 0x2EuLL);
  v39 = *&v38->__r_.__value_.__l.__data_;
  v79 = v38->__r_.__value_.__r.__words[2];
  v78 = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v49) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  *v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  *__src = 0u;
  v49 = 0u;
  v50 = 0u;
  *__p = 0u;
  sub_10000C320(__p);
  sub_1000D0C38(__p, "Content-Type", off_101E97870);
  if (v79 >= 0)
  {
    v40 = HIBYTE(v79);
  }

  else
  {
    v40 = *(&v78 + 1);
  }

  std::to_string(&__dst, v40);
  sub_1002049A4(__p, "Content-Length", &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v41 = strlen("\r\n");
  sub_10000C030(&v49, "\r\n", v41);
  if (v79 >= 0)
  {
    v42 = &v78;
  }

  else
  {
    v42 = v78;
  }

  if (v79 >= 0)
  {
    v43 = HIBYTE(v79);
  }

  else
  {
    v43 = *(&v78 + 1);
  }

  sub_10000C030(&v49, v42, v43);
  if ((BYTE8(v55) & 0x10) != 0)
  {
    v45 = v55;
    if (v55 < __src[1])
    {
      *&v55 = __src[1];
      v45 = __src[1];
    }

    v46 = __src[0];
  }

  else
  {
    if ((BYTE8(v55) & 8) == 0)
    {
      v44 = 0;
      *(&__dst.__r_.__value_.__s + 23) = 0;
      goto LABEL_85;
    }

    v46 = *(&v50 + 1);
    v45 = *(&v51 + 1);
  }

  v44 = v45 - v46;
  if ((v45 - v46) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v44 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v45 - v46;
  if (v44)
  {
    memmove(&__dst, v46, v44);
  }

LABEL_85:
  __dst.__r_.__value_.__s.__data_[v44] = 0;
  sub_100C180E0(a3, &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  *&v49 = v47;
  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53[1]);
  }

  std::locale::~locale(&v50);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (SHIBYTE(v79) < 0)
  {
    operator delete(v78);
  }

  if (SHIBYTE(v82) < 0)
  {
    operator delete(v80);
  }

  if (SHIBYTE(v85) < 0)
  {
    operator delete(v83);
  }
}

void sub_1002047C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (*(v25 - 169) < 0)
  {
    operator delete(*(v25 - 192));
  }

  std::ios::~ios();
  if (*(v25 - 137) < 0)
  {
    operator delete(*(v25 - 160));
  }

  if (*(v25 - 105) < 0)
  {
    operator delete(*(v25 - 128));
  }

  if (*(v25 - 81) < 0)
  {
    operator delete(*(v25 - 104));
  }

  _Unwind_Resume(a1);
}

void sub_1002049A4(uint64_t a1, char *__s, const std::string *a3)
{
  v6 = strlen(__s);
  v7 = sub_10000C030((a1 + 16), __s, v6);
  v8 = sub_10000C030(v7, ": ", 2);
  memset(&v13, 0, sizeof(v13));
  std::string::operator=(&v13, a3);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v13;
  }

  else
  {
    v9 = v13.__r_.__value_.__r.__words[0];
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v13.__r_.__value_.__l.__size_;
  }

  v11 = sub_10000C030(v8, v9, size);
  v12 = strlen("\r\n");
  sub_10000C030(v11, "\r\n", v12);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_100204A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100204A98(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  __p[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, __p);
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
  isWatch = GestaltUtilityInterface::isWatch(v10);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (isWatch)
  {
    LOBYTE(v13) = 1;
    return v13 & 1;
  }

  v22 = 0;
  v14 = sub_10005D028();
  sub_10000501C(__p, "EnableWiFiCallingByDefault");
  v15 = sub_10005D0D8(v14, __p, &v22);
  v16 = v15;
  if (v21 < 0)
  {
    operator delete(__p[0]);
    if (v16)
    {
      goto LABEL_15;
    }
  }

  else if (v15)
  {
LABEL_15:
    LOBYTE(v13) = v22;
    return v13 & 1;
  }

  (*(**(a1 + 80) + 472))(__p);
  v13 = __p[0];
  v23 = 0;
  if (__p[0])
  {
    v17 = CFGetTypeID(__p[0]);
    if (v17 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v23, v13, v18);
      LOBYTE(v13) = v23;
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  sub_10000A1EC(__p);
  return v13 & 1;
}

uint64_t sub_100204CA8(uint64_t a1)
{
  (*(**(a1 + 80) + 472))(&cf);
  v1 = cf;
  v2 = 1;
  v7 = 1;
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v7, v1, v4);
      v2 = v7;
    }

    else
    {
      v2 = 1;
    }
  }

  sub_10000A1EC(&cf);
  return v2 & 1;
}

BOOL sub_100204D6C(uint64_t a1)
{
  v2 = **(a1 + 64);
  if (*(v2 + 49))
  {
    v3 = 1;
  }

  else
  {
    v3 = *(v2 + 52);
  }

  *buf = 0;
  *&buf[8] = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  v19 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v19);
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
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_12:
  (*(*v12 + 32))(buf, v12, v3);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (*buf)
  {
    v14 = (*(**buf + 88))(*buf, 1) == 0;
  }

  else
  {
    v14 = 0;
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = PersonalityInfo::logPrefix(**(a1 + 64));
    v17 = asStringBool(v14);
    *buf = 136315650;
    *&buf[4] = v16;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sGot WiFi Calling Preferred In Roaming value as %s", buf, 0x20u);
  }

  return v14;
}

void sub_100204F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100204FDC(uint64_t a1)
{
  (*(**(a1 + 80) + 472))(&cf);
  v1 = cf;
  v6 = 0;
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v6, v1, v3);
      LOBYTE(v1) = v6;
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  sub_10000A1EC(&cf);
  return v1 & 1;
}

uint64_t sub_10020509C(uint64_t a1)
{
  (*(**(a1 + 80) + 472))(&cf);
  v1 = cf;
  v6 = 0;
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v6, v1, v3);
      LOBYTE(v1) = v6;
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  sub_10000A1EC(&cf);
  return v1 & 1;
}

void sub_100205248(_Unwind_Exception *exception_object)
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

uint64_t sub_100205270(uint64_t a1, void *a2, NSObject **a3, void *a4, uint64_t a5)
{
  ctu::OsLogContext::OsLogContext(&v13, kCtLoggingSystemName, "ps.wfc");
  sub_100205370((a1 + 8), a3, &v13);
  ctu::OsLogContext::~OsLogContext(&v13);
  *a1 = off_101E31A60;
  v10 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a4[1];
  *(a1 + 64) = *a4;
  *(a1 + 72) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = a5;
  *(a1 + 88) = 0;
  *(a1 + 96) = 3;
  *(a1 + 100) = 256;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  return a1;
}

void *sub_100205370(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_1002053D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

void *sub_1002053FC(void *a1)
{
  *a1 = off_101E31A60;
  v2 = a1[15];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    sub_100004A34(v4);
  }

  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);
  return a1;
}

void sub_10020547C(void *a1)
{
  sub_1002053FC(a1);

  operator delete();
}

const void **sub_1002054B4(uint64_t a1)
{
  v27 = 0;
  sub_1006160F0(&v24);
  v26 = sub_1006160B8(v24, @"switch.status");
  sub_100209D88(&v27, &v26);
  if (v25)
  {
    sub_100004A34(v25);
  }

  if (v27)
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
    v24 = v4;
    v8 = sub_100009510(&v3[1].__m_.__sig, &v24);
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
LABEL_12:
        (*(*v10 + 48))(v10, **(a1 + 64) + 24, @"vowifi.switch.status", v27, kPhoneServicesWalletDomain, 0, 1, 0);
        if ((v11 & 1) == 0)
        {
          sub_100004A34(v9);
        }

        sub_1006160F0(&v24);
        sub_100616054(v24, @"switch.status", 0);
        if (v25)
        {
          sub_100004A34(v25);
        }

        goto LABEL_16;
      }
    }

    else
    {
      v10 = 0;
    }

    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    goto LABEL_12;
  }

LABEL_16:
  v26 = 0;
  sub_1006160F0(&v24);
  v23 = sub_1006160B8(v24, @"roaming_switch.status");
  sub_100209D88(&v26, &v23);
  if (v25)
  {
    sub_100004A34(v25);
  }

  if (v26)
  {
    v12 = Registry::getServiceMap(*(a1 + 48));
    v13 = v12;
    if (v14 < 0)
    {
      v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
      v16 = 5381;
      do
      {
        v14 = v16;
        v17 = *v15++;
        v16 = (33 * v16) ^ v17;
      }

      while (v17);
    }

    std::mutex::lock(v12);
    v24 = v14;
    v18 = sub_100009510(&v13[1].__m_.__sig, &v24);
    if (v18)
    {
      v20 = v18[3];
      v19 = v18[4];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v13);
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v19);
        v21 = 0;
LABEL_27:
        (*(*v20 + 48))(v20, **(a1 + 64) + 24, @"vowifi.roaming_switch.status", v26, kPhoneServicesWalletDomain, 0, 1, 0);
        if ((v21 & 1) == 0)
        {
          sub_100004A34(v19);
        }

        sub_1006160F0(&v24);
        sub_100616054(v24, @"roaming_switch.status", 0);
        if (v25)
        {
          sub_100004A34(v25);
        }

        goto LABEL_31;
      }
    }

    else
    {
      v20 = 0;
    }

    std::mutex::unlock(v13);
    v19 = 0;
    v21 = 1;
    goto LABEL_27;
  }

LABEL_31:
  sub_100029A48(&v26);
  return sub_100029A48(&v27);
}

void sub_1002057BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, const void *);
  if (a9)
  {
    sub_100004A34(a9);
  }

  sub_100029A48(va);
  sub_100029A48(va1);
  _Unwind_Resume(a1);
}

void sub_100205840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  JUMPOUT(0x100205838);
}

void sub_100205854(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 64));
    v4 = 136315394;
    v5 = v3;
    v6 = 2080;
    v7 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sinitializing", &v4, 0x16u);
  }

  sub_100205918(a1);
}

void sub_100205918(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  *buf = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, buf);
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
  isWatch = GestaltUtilityInterface::isWatch(v10);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (isWatch)
  {
    v13 = Registry::getServiceMap(*(a1 + 48));
    v14 = v13;
    v16 = v15;
    if (v15 < 0)
    {
      v17 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
      v18 = 5381;
      do
      {
        v16 = v18;
        v19 = *v17++;
        v18 = (33 * v18) ^ v19;
      }

      while (v19);
    }

    std::mutex::lock(v13);
    *buf = v16;
    v20 = sub_100009510(&v14[1].__m_.__sig, buf);
    if (v20)
    {
      v22 = v20[3];
      v21 = v20[4];
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v14);
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v21);
        v23 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v22 = 0;
    }

    std::mutex::unlock(v14);
    v21 = 0;
    v23 = 1;
LABEL_26:
    v35 = kPhoneServicesWalletDomain;
    (*(*v22 + 72))(v22, **(a1 + 64) + 24, @"vowifi.switch.status", kPhoneServicesWalletDomain, 0, 1);
    if ((v23 & 1) == 0)
    {
      sub_100004A34(v21);
    }

    v36 = Registry::getServiceMap(*(a1 + 48));
    v37 = v36;
    if (v15 < 0)
    {
      v38 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
      v39 = 5381;
      do
      {
        v15 = v39;
        v40 = *v38++;
        v39 = (33 * v39) ^ v40;
      }

      while (v40);
    }

    std::mutex::lock(v36);
    *buf = v15;
    v41 = sub_100009510(&v37[1].__m_.__sig, buf);
    if (v41)
    {
      v43 = v41[3];
      v42 = v41[4];
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v37);
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v42);
        v44 = 0;
        goto LABEL_50;
      }
    }

    else
    {
      v43 = 0;
    }

    std::mutex::unlock(v37);
    v42 = 0;
    v44 = 1;
LABEL_50:
    (*(*v43 + 72))(v43, **(a1 + 64) + 24, @"vowifi.roaming_switch.status", v35, 0, 1);
    if ((v44 & 1) == 0)
    {
      sub_100004A34(v42);
    }

    return;
  }

  sub_1002054B4(a1);
  v66 = 0;
  v24 = Registry::getServiceMap(*(a1 + 48));
  v25 = v24;
  v27 = v26;
  if (v26 < 0)
  {
    v28 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
    v29 = 5381;
    do
    {
      v27 = v29;
      v30 = *v28++;
      v29 = (33 * v29) ^ v30;
    }

    while (v30);
  }

  std::mutex::lock(v24);
  *buf = v27;
  v31 = sub_100009510(&v25[1].__m_.__sig, buf);
  if (v31)
  {
    v33 = v31[3];
    v32 = v31[4];
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v25);
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v32);
      v34 = 0;
      goto LABEL_36;
    }
  }

  else
  {
    v33 = 0;
  }

  std::mutex::unlock(v25);
  v32 = 0;
  v34 = 1;
LABEL_36:
  v45 = kPhoneServicesWalletDomain;
  (*(*v33 + 64))(&v65, v33, **(a1 + 64) + 24, @"vowifi.switch.status", kPhoneServicesWalletDomain, 0, 1);
  sub_10010B240(&v66, &v65);
  sub_10000A1EC(&v65);
  if ((v34 & 1) == 0)
  {
    sub_100004A34(v32);
  }

  if (v66)
  {
    *buf = 0;
    ctu::cf::assign(buf, v66, v46);
    v47 = *buf;
    v48 = *(a1 + 40);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = PersonalityInfo::logPrefix(**(a1 + 64));
      v50 = sub_10060FFC0(v47);
      *buf = 136315650;
      *&buf[4] = v49;
      v68 = 2080;
      v69 = " ";
      v70 = 2080;
      v71 = v50;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I %s%sLast known VoWiFi switch state is: %s", buf, 0x20u);
    }

    sub_100206044(a1, v47);
  }

  v65 = 0;
  v51 = Registry::getServiceMap(*(a1 + 48));
  v52 = v51;
  if (v26 < 0)
  {
    v53 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
    v54 = 5381;
    do
    {
      v26 = v54;
      v55 = *v53++;
      v54 = (33 * v54) ^ v55;
    }

    while (v55);
  }

  std::mutex::lock(v51);
  *buf = v26;
  v56 = sub_100009510(&v52[1].__m_.__sig, buf);
  if (!v56)
  {
    v58 = 0;
    goto LABEL_53;
  }

  v58 = v56[3];
  v57 = v56[4];
  if (!v57)
  {
LABEL_53:
    std::mutex::unlock(v52);
    v57 = 0;
    v59 = 1;
    goto LABEL_54;
  }

  atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v52);
  atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v57);
  v59 = 0;
LABEL_54:
  (*(*v58 + 64))(&v64, v58, **(a1 + 64) + 24, @"vowifi.roaming_switch.status", v45, 0, 1);
  sub_10010B240(&v65, &v64);
  sub_10000A1EC(&v64);
  if ((v59 & 1) == 0)
  {
    sub_100004A34(v57);
  }

  if (v65)
  {
    *buf = 0;
    ctu::cf::assign(buf, v65, v60);
    *(a1 + 104) = *buf;
    v61 = *(a1 + 40);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v62 = PersonalityInfo::logPrefix(**(a1 + 64));
      v63 = sub_10060FFC0(*(a1 + 104));
      *buf = 136315650;
      *&buf[4] = v62;
      v68 = 2080;
      v69 = " ";
      v70 = 2080;
      v71 = v63;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I %s%sLast known VoWiFi Roaming switch state is: %s", buf, 0x20u);
    }
  }

  sub_100029A48(&v65);
  sub_100029A48(&v66);
}

void sub_100205F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  sub_100029A48(va);
  sub_100029A48(va1);
  _Unwind_Resume(a1);
}

void sub_100206044(uint64_t a1, int a2)
{
  v2 = *(a1 + 88);
  if (v2 != a2)
  {
    *(a1 + 88) = a2;
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(**(a1 + 64));
      v6 = sub_10060FFC0(v2);
      v7 = sub_10060FFC0(*(a1 + 88));
      v8 = 136315906;
      v9 = v5;
      v10 = 2080;
      v11 = " ";
      v12 = 2080;
      v13 = v6;
      v14 = 2080;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%ssetSwitchState_sync: user switch state changed from %s -> %s", &v8, 0x2Au);
    }
  }
}

uint64_t sub_100206144(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 64));
    v12 = 136315650;
    v13 = v5;
    v14 = 2080;
    v15 = " ";
    v16 = 2080;
    v17 = sub_100A38E08(v2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sVoWiFi Entitlement:%s", &v12, 0x20u);
  }

  if (*(a1 + 96) == v2)
  {
    v6 = 0;
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(**(a1 + 64));
      v9 = sub_100A38E08(*(a1 + 96));
      v10 = sub_100A38E08(v2);
      v12 = 136315906;
      v13 = v8;
      v14 = 2080;
      v15 = " ";
      v16 = 2080;
      v17 = v9;
      v18 = 2080;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sVoWiFi entitlement is changing from %s to %s", &v12, 0x2Au);
    }

    *(a1 + 96) = v2;
    v6 = v2 == 2;
  }

  return (*(*a1 + 104))(a1, 0, v6);
}

void sub_100206304(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 64));
    v6 = 136315650;
    v7 = v5;
    v8 = 2080;
    v9 = " ";
    v10 = 2080;
    v11 = sub_100A38E30(v2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%ssetEntitlement complete with cause: %s", &v6, 0x20u);
  }

  if (v2 != 2)
  {
    *(a1 + 100) = 0;
    if (v2 == 3)
    {
      *(a1 + 101) = 0;
    }
  }
}

uint64_t sub_100206424(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(result + 101) = 1;
  }

  return result;
}

void sub_100206460(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 80) + 472))(cf);
  v4 = *cf;
  LOBYTE(v99) = 0;
  if (*cf)
  {
    v5 = CFGetTypeID(*cf);
    if (v5 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v99, v4, v6);
    }
  }

  v7 = v99;
  sub_10000A1EC(cf);
  if (v7 == 1)
  {
    v8 = kPhoneServicesWalletDomain;
    *cf = kPhoneServicesWalletDomain;
    *&cf[8] = @"vowifi.followup";
    v100 = 0;
    v101 = 0;
    v99 = 0;
    sub_10005B328(&v99, cf, &cf[16], 2uLL);
    ServiceMap = Registry::getServiceMap(*(a1 + 48));
    v10 = ServiceMap;
    v12 = v11;
    if (v11 < 0)
    {
      v13 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
      v14 = 5381;
      do
      {
        v12 = v14;
        v15 = *v13++;
        v14 = (33 * v14) ^ v15;
      }

      while (v15);
    }

    std::mutex::lock(ServiceMap);
    *cf = v12;
    v16 = sub_100009510(&v10[1].__m_.__sig, cf);
    if (v16)
    {
      v18 = v16[3];
      v17 = v16[4];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v10);
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v17);
        v19 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      v18 = 0;
    }

    std::mutex::unlock(v10);
    v17 = 0;
    v19 = 1;
LABEL_13:
    (*(*v18 + 24))(&v102, v18, **(a1 + 64) + 24, @"shown", 0, &v99, 1);
    v20 = v102;
    *cf = 0;
    if (v102)
    {
      v21 = CFGetTypeID(v102);
      if (v21 == CFNumberGetTypeID())
      {
        ctu::cf::assign(cf, v20, v22);
      }

      LODWORD(v20) = *cf;
    }

    sub_10000A1EC(&v102);
    if ((v19 & 1) == 0)
    {
      sub_100004A34(v17);
    }

    v23 = *(a1 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = PersonalityInfo::logPrefix(**(a1 + 64));
      *cf = 136315906;
      *&cf[4] = v24;
      *&cf[12] = 2080;
      *&cf[14] = " ";
      v104 = 1024;
      LODWORD(v105[0]) = v20;
      WORD2(v105[0]) = 1024;
      *(v105 + 6) = a2;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%sfollowUp evaluation, shownFollowUp: %d, reason: %d", cf, 0x22u);
    }

    if (v20 == -1 || v20 == a2)
    {
      goto LABEL_117;
    }

    if (v20 == -2)
    {
      sub_100208324(a1, cf);
      sub_100430D40(*cf, 0);
      v25 = *&cf[8];
      if (!*&cf[8])
      {
LABEL_117:
        if (v99)
        {
          v100 = v99;
          operator delete(v99);
        }

        return;
      }

LABEL_116:
      sub_100004A34(v25);
      goto LABEL_117;
    }

    v26 = Registry::getServiceMap(*(a1 + 48));
    v27 = v26;
    if (v28 < 0)
    {
      v29 = (v28 & 0x7FFFFFFFFFFFFFFFLL);
      v30 = 5381;
      do
      {
        v28 = v30;
        v31 = *v29++;
        v30 = (33 * v30) ^ v31;
      }

      while (v31);
    }

    std::mutex::lock(v26);
    *cf = v28;
    v32 = sub_100009510(&v27[1].__m_.__sig, cf);
    if (!v32)
    {
      std::mutex::unlock(v27);
      goto LABEL_117;
    }

    v33 = v32[3];
    v34 = v32[4];
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v27);
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v34);
      if (!v33)
      {
LABEL_115:
        v25 = v34;
        goto LABEL_116;
      }
    }

    else
    {
      std::mutex::unlock(v27);
      if (!v33)
      {
        goto LABEL_117;
      }
    }

    v98 = 0;
    v35 = Registry::getServiceMap(*(a1 + 48));
    v36 = v35;
    v37 = v11;
    if (v11 < 0)
    {
      v38 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
      v39 = 5381;
      do
      {
        v37 = v39;
        v40 = *v38++;
        v39 = (33 * v39) ^ v40;
      }

      while (v40);
    }

    std::mutex::lock(v35);
    *cf = v37;
    v41 = sub_100009510(&v36[1].__m_.__sig, cf);
    if (v41)
    {
      v43 = v41[3];
      v42 = v41[4];
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v36);
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v42);
        v44 = 0;
        goto LABEL_43;
      }
    }

    else
    {
      v43 = 0;
    }

    std::mutex::unlock(v36);
    v42 = 0;
    v44 = 1;
LABEL_43:
    (*(*v43 + 24))(&v102, v43, **(a1 + 64) + 24, @"id", 0, &v99, 1);
    sub_100060DE8(&v98, &v102);
    sub_10000A1EC(&v102);
    if ((v44 & 1) == 0)
    {
      sub_100004A34(v42);
    }

    if (v98)
    {
      (*(*v33 + 32))(v33);
    }

    if (a2 >= 1)
    {
      v97 = 0;
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v46 = v97;
        v97 = Mutable;
        *cf = v46;
        sub_1000296E0(cf);
      }

      v47 = *(**(a1 + 64) + 52);
      v102 = 0;
      *cf = v47;
      v48 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, cf);
      if (v48)
      {
        v49 = v102;
        v102 = v48;
        *cf = v49;
        sub_100029A48(cf);
      }

      v96 = v102;
      v102 = 0;
      sub_100029A48(&v102);
      sub_100209DF4(v97, @"SlotID", v96);
      sub_100029A48(&v96);
      v96 = 0;
      v50 = Registry::getServiceMap(*(a1 + 48));
      v51 = v50;
      if (v52 < 0)
      {
        v53 = (v52 & 0x7FFFFFFFFFFFFFFFLL);
        v54 = 5381;
        do
        {
          v52 = v54;
          v55 = *v53++;
          v54 = (33 * v54) ^ v55;
        }

        while (v55);
      }

      std::mutex::lock(v50);
      v102 = v52;
      v56 = sub_100009510(&v51[1].__m_.__sig, &v102);
      if (v56)
      {
        v58 = v56[3];
        v57 = v56[4];
        if (v57)
        {
          atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v51);
          atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v57);
          v59 = 0;
          goto LABEL_66;
        }
      }

      else
      {
        v58 = 0;
      }

      std::mutex::unlock(v51);
      v57 = 0;
      v59 = 1;
LABEL_66:
      (*(*v58 + 184))(cf, v58, **(a1 + 64) + 24);
      if (v104 >= 0)
      {
        v69 = cf;
      }

      else
      {
        v69 = *cf;
      }

      v96 = CFStringCreateWithFormat(0, 0, @"prefs:root=Phone&path=Wi-Fi%%20Calling/%s", v69);
      if (v114 < 0)
      {
        operator delete(__p);
      }

      if (v112 < 0)
      {
        operator delete(v111);
      }

      if (v110 < 0)
      {
        operator delete(v109);
      }

      if (v108 < 0)
      {
        operator delete(v107);
      }

      if (v106 < 0)
      {
        operator delete(v105[0]);
      }

      if (SHIBYTE(v104) < 0)
      {
        operator delete(*cf);
      }

      if ((v59 & 1) == 0)
      {
        sub_100004A34(v57);
      }

      sub_1001768B8(v97, @"URL", v96);
      v95 = 0;
      (*(*v33 + 88))(&v95, v33, a2, *(a1 + 64));
      (*(*v33 + 16))(v33, a2, v97, v95);
      v70 = Registry::getServiceMap(*(a1 + 48));
      v71 = v70;
      v72 = v11;
      if (v11 < 0)
      {
        v73 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
        v74 = 5381;
        do
        {
          v72 = v74;
          v75 = *v73++;
          v74 = (33 * v74) ^ v75;
        }

        while (v75);
      }

      std::mutex::lock(v70);
      *cf = v72;
      v76 = sub_100009510(&v71[1].__m_.__sig, cf);
      if (v76)
      {
        v78 = v76[3];
        v77 = v76[4];
        if (v77)
        {
          atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v71);
          atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v77);
          v79 = 0;
          goto LABEL_91;
        }
      }

      else
      {
        v78 = 0;
      }

      std::mutex::unlock(v71);
      v77 = 0;
      v79 = 1;
LABEL_91:
      v80 = **(a1 + 64);
      v102 = 0;
      *cf = a2;
      v81 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, cf);
      if (v81)
      {
        v82 = v102;
        v102 = v81;
        *cf = v82;
        sub_100029A48(cf);
      }

      v94 = v102;
      v102 = 0;
      sub_100029A48(&v102);
      (*(*v78 + 16))(v78, v80 + 24, @"shown", v94, 0, &v99, 1, 0);
      sub_100029A48(&v94);
      if ((v79 & 1) == 0)
      {
        sub_100004A34(v77);
      }

      v83 = Registry::getServiceMap(*(a1 + 48));
      v84 = v83;
      if (v11 < 0)
      {
        v85 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
        v86 = 5381;
        do
        {
          v11 = v86;
          v87 = *v85++;
          v86 = (33 * v86) ^ v87;
        }

        while (v87);
      }

      std::mutex::lock(v83);
      *cf = v11;
      v88 = sub_100009510(&v84[1].__m_.__sig, cf);
      if (v88)
      {
        v90 = v88[3];
        v89 = v88[4];
        if (v89)
        {
          atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v84);
          atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v89);
          v91 = 0;
LABEL_103:
          (*(*v90 + 16))(v90, **(a1 + 64) + 24, @"id", v95, 0, &v99, 1, 0);
          if ((v91 & 1) == 0)
          {
            sub_100004A34(v89);
          }

          v92 = *(a1 + 40);
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
          {
            v93 = PersonalityInfo::logPrefix(**(a1 + 64));
            *cf = 136315394;
            *&cf[4] = v93;
            *&cf[12] = 2080;
            *&cf[14] = " ";
            _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "#I %s%sfollowUp posted", cf, 0x16u);
          }

          sub_100005978(&v95);
          sub_100005978(&v96);
          sub_1000296E0(&v97);
          goto LABEL_114;
        }
      }

      else
      {
        v90 = 0;
      }

      std::mutex::unlock(v84);
      v89 = 0;
      v91 = 1;
      goto LABEL_103;
    }

    v60 = Registry::getServiceMap(*(a1 + 48));
    v61 = v60;
    if (v11 < 0)
    {
      v62 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
      v63 = 5381;
      do
      {
        v11 = v63;
        v64 = *v62++;
        v63 = (33 * v63) ^ v64;
      }

      while (v64);
    }

    std::mutex::lock(v60);
    *cf = v11;
    v65 = sub_100009510(&v61[1].__m_.__sig, cf);
    if (v65)
    {
      v67 = v65[3];
      v66 = v65[4];
      if (v66)
      {
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v61);
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v66);
        v68 = 0;
LABEL_110:
        (*(*v67 + 32))(v67, **(a1 + 64) + 24, @"vowifi.followup", v8, 0, 1);
        if ((v68 & 1) == 0)
        {
          sub_100004A34(v66);
        }

        sub_100208324(a1, cf);
        sub_100430948(*cf);
        if (*&cf[8])
        {
          sub_100004A34(*&cf[8]);
        }

LABEL_114:
        sub_100005978(&v98);
        if (!v34)
        {
          goto LABEL_117;
        }

        goto LABEL_115;
      }
    }

    else
    {
      v67 = 0;
    }

    std::mutex::unlock(v61);
    v66 = 0;
    v68 = 1;
    goto LABEL_110;
  }
}

void sub_100206FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, int a13, const void *a14, const void *a15, const void *a16, const void *a17, void *__p, uint64_t a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26)
{
  sub_100005978(&a14);
  sub_100005978(&a15);
  sub_1000296E0(&a16);
  sub_100005978(&a17);
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002071D0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 64));
    v5 = 136315394;
    v6 = v3;
    v7 = 2080;
    v8 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%spersonal wallet changed", &v5, 0x16u);
  }

  sub_100205918(a1);
  return (*(*a1 + 104))(a1, 0, 0);
}

uint64_t sub_1002072C4(uint64_t a1)
{
  result = sub_100347D60(*(a1 + 96));
  if (result != 1)
  {
    v3 = *(a1 + 80);

    return sub_10034AFC4(v3);
  }

  return result;
}

uint64_t sub_100207314(uint64_t a1)
{
  result = sub_100347D84(*(a1 + 96));
  if (result != 1)
  {
    v3 = *(a1 + 80);

    return sub_10034AFC4(v3);
  }

  return result;
}

BOOL sub_100207364(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1)
  {
    return v1 == 2;
  }

  else
  {
    return sub_100204D6C(a1);
  }
}

const void **sub_100207380@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = *(a1 + 88);
  if (v4)
  {
    if (v4 != 2)
    {
      v5 = 0;
      v6 = 0;
      v8 = *(a1 + 92) != 0;
      goto LABEL_9;
    }

    v5 = 1;
  }

  else
  {
    v5 = sub_100204A98(a1);
  }

  v6 = 0;
  v7 = *(a1 + 92);
  v8 = v7 != 0;
  if (v5 && !v7)
  {
    v6 = sub_10034B35C(*(a1 + 80), *(a1 + 96));
    v8 = 0;
  }

LABEL_9:
  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    theDict = Mutable;
    *buf = 0;
    sub_1000296E0(buf);
  }

  v10 = *(a1 + 104);
  if (v10)
  {
    if (v10 == 2)
    {
      v11 = theDict;
      v12 = kPSWifiCallingRoamingEnabled;
LABEL_15:
      v14 = &kCFBooleanTrue;
      v15 = 1;
      goto LABEL_19;
    }

    v15 = 0;
    v11 = theDict;
    v12 = kPSWifiCallingRoamingEnabled;
  }

  else
  {
    v13 = sub_100204D6C(a1);
    v11 = theDict;
    v12 = kPSWifiCallingRoamingEnabled;
    if (v13)
    {
      goto LABEL_15;
    }

    v15 = 0;
  }

  v14 = &kCFBooleanFalse;
LABEL_19:
  CFDictionarySetValue(v11, v12, *v14);
  v16 = *(a1 + 40);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v25 = PersonalityInfo::logPrefix(**(a1 + 64));
    v17 = sub_10060FFC0(*(a1 + 88));
    if (v5)
    {
      v18 = "on";
    }

    else
    {
      v18 = "off";
    }

    v19 = asStringBool(v6);
    if (*(**(a1 + 64) + 48))
    {
      v20 = "";
    }

    else
    {
      v20 = "NOT ";
    }

    v21 = sub_10060FF94(*(a1 + 92));
    v22 = asStringBool(v8);
    v23 = asStringBool(v15);
    *buf = 136317186;
    *&buf[4] = v25;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v28 = 2080;
    v29 = v17;
    v30 = 2080;
    v31 = v18;
    v32 = 2080;
    v33 = v19;
    v34 = 2080;
    v35 = v20;
    v36 = 2080;
    v37 = v21;
    v38 = 2080;
    v39 = v22;
    v40 = 2080;
    v41 = v23;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sVoWiFi, user preference status is %s ('%s'), activating: %s; SIM is %savailable; service status: %s; isEnabled return '%s', allowed in roaming '%s'", buf, 0x5Cu);
  }

  buf[0] = v8;
  *&buf[8] = theDict;
  if (theDict)
  {
    CFRetain(theDict);
  }

  *a2 = v8;
  sub_100010180(a2 + 1, &buf[8]);
  sub_1000296E0(&buf[8]);
  return sub_1000296E0(&theDict);
}

void sub_10020766C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1002076A8@<X0>(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v6 = sub_10034AFC4(*(a1 + 80));
  v34 = 0;
  v35 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v8 = ServiceMap;
  if (v9 < 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  theDict = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &theDict);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
LABEL_9:
  (**v15)(&v34, v15, **(a1 + 64) + 24);
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  if (v34)
  {
    v6 |= (*(*v34 + 496))(v34, 7);
  }

  if (v35)
  {
    sub_100004A34(v35);
  }

  v17 = v6 & 1;
  theDict = 0;
  if ((v6 & 1) == 0)
  {
    LOBYTE(v19) = 0;
    LOBYTE(v18) = 0;
    LOBYTE(v34) = v17;
    *(&v34 + 1) = 0;
    v35 = 0;
    goto LABEL_46;
  }

  v18 = sub_1002072C4(a1);
  v19 = sub_100207314(a1);
  if (v19)
  {
    sub_10034DA68(*(a1 + 80), &v33);
    v20 = theDict;
    theDict = v33;
    v33 = 0;
    v34 = v20;
    sub_1000296E0(&v34);
    v21 = &v33;
LABEL_21:
    sub_1000296E0(v21);
    goto LABEL_22;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v23 = theDict;
    theDict = Mutable;
    v34 = v23;
    v21 = &v34;
    goto LABEL_21;
  }

LABEL_22:
  v25 = *(a1 + 88);
  v24 = *(a1 + 92);
  if (a2)
  {
    v26 = !sub_10034B3CC(*(a1 + 80));
  }

  else
  {
    LOBYTE(v26) = 0;
  }

  v27 = 0;
  if (v24 != 1 && (v25 == 2 || v26))
  {
    if (sub_10034B35C(*(a1 + 80), *(a1 + 96)) || (sub_10034B81C(*(a1 + 80)) & 1) != 0)
    {
      v27 = 1;
    }

    else
    {
      v27 = *(a1 + 100);
    }
  }

  v28 = sub_10034B404(*(a1 + 80));
  if (v18)
  {
    if (v27)
    {
      v29 = &kCTProvisioningStatusInProcess;
    }

    else if (v28 == 1)
    {
      v29 = &kCTProvisioningStatusSubscribed;
    }

    else
    {
      v29 = &kCTProvisioningStatusNotSubscribed;
    }
  }

  else if (v19)
  {
    v29 = &kCTProvisioningStatusInProcess;
    if ((v27 & 1) == 0)
    {
      v29 = &kCTProvisioningStatusNotSubscribed;
    }
  }

  else
  {
    v29 = &kCTProvisioningStatusNotAllowed;
  }

  CFDictionarySetValue(theDict, kCTProvisioningStatus, *v29);
  v30 = sub_100204FDC(a1);
  v31 = &kCFBooleanFalse;
  if (v30)
  {
    v31 = &kCFBooleanTrue;
  }

  CFDictionarySetValue(theDict, kPSWifiCallingRoamingCanSet, *v31);
  LOBYTE(v34) = v17;
  BYTE1(v34) = v19;
  BYTE2(v34) = v18;
  v35 = theDict;
  if (theDict)
  {
    CFRetain(theDict);
  }

LABEL_46:
  *a3 = v17;
  a3[1] = v19;
  a3[2] = v18;
  sub_100010180(a3 + 1, &v35);
  sub_1000296E0(&v35);
  return sub_1000296E0(&theDict);
}

void sub_100207A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

void sub_100207AA4(uint64_t a1, int a2, CFDictionaryRef *a3)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v7 = ServiceMap;
  if (v8 < 0)
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
  *buf = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, buf);
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
      v15 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_9:
  isWatch = GestaltUtilityInterface::isWatch(v14);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (isWatch)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101765F74(a1);
    }

    return;
  }

  if ((sub_100207314(a1) | a2 ^ 1) == 1)
  {
    if (!*a3)
    {
      goto LABEL_36;
    }

    if (!sub_100204FDC(a1))
    {
      goto LABEL_36;
    }

    Value = CFDictionaryGetValue(*a3, kPSWifiCallingRoamingEnabled);
    if (!Value)
    {
      goto LABEL_36;
    }

    if (CFEqual(Value, kCFBooleanTrue))
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    *(a1 + 104) = v18;
    v19 = Registry::getServiceMap(*(a1 + 48));
    v20 = v19;
    if (v21 < 0)
    {
      v22 = (v21 & 0x7FFFFFFFFFFFFFFFLL);
      v23 = 5381;
      do
      {
        v21 = v23;
        v24 = *v22++;
        v23 = (33 * v23) ^ v24;
      }

      while (v24);
    }

    std::mutex::lock(v19);
    *buf = v21;
    v25 = sub_100009510(&v20[1].__m_.__sig, buf);
    if (v25)
    {
      v27 = v25[3];
      v26 = v25[4];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v20);
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v26);
        v28 = 0;
LABEL_32:
        v31 = **(a1 + 64);
        v32 = *(a1 + 104);
        v54 = 0;
        *buf = v32;
        v33 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, buf);
        if (v33)
        {
          v34 = v54;
          v54 = v33;
          *buf = v34;
          sub_100029A48(buf);
        }

        v53 = v54;
        v54 = 0;
        sub_100029A48(&v54);
        (*(*v27 + 48))(v27, v31 + 24, @"vowifi.roaming_switch.status", v53, kPhoneServicesWalletDomain, 0, 1, 0);
        sub_100029A48(&v53);
        if ((v28 & 1) == 0)
        {
          sub_100004A34(v26);
        }

LABEL_36:
        if (a2)
        {
          v35 = 2;
        }

        else
        {
          v35 = 1;
        }

        v36 = *(a1 + 40);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = PersonalityInfo::logPrefix(**(a1 + 64));
          v38 = sub_10060FFC0(v35);
          *buf = 136315650;
          *&buf[4] = v37;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          v56 = 2080;
          v57 = v38;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I %s%sVoWiFi, switch state: %s", buf, 0x20u);
        }

        sub_100206044(a1, v35);
        sub_100208104(a1);
        v39 = Registry::getServiceMap(*(a1 + 48));
        v40 = v39;
        if (v41 < 0)
        {
          v42 = (v41 & 0x7FFFFFFFFFFFFFFFLL);
          v43 = 5381;
          do
          {
            v41 = v43;
            v44 = *v42++;
            v43 = (33 * v43) ^ v44;
          }

          while (v44);
        }

        std::mutex::lock(v39);
        *buf = v41;
        v45 = sub_100009510(&v40[1].__m_.__sig, buf);
        if (v45)
        {
          v47 = v45[3];
          v46 = v45[4];
          if (v46)
          {
            atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v40);
            atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v46);
            v48 = 0;
LABEL_49:
            v49 = **(a1 + 64);
            v50 = *(a1 + 88);
            v54 = 0;
            *buf = v50;
            v51 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, buf);
            if (v51)
            {
              v54 = v51;
              *buf = 0;
              sub_100029A48(buf);
              v52 = v54;
            }

            else
            {
              v52 = 0;
            }

            v53 = v52;
            v54 = 0;
            sub_100029A48(&v54);
            (*(*v47 + 48))(v47, v49 + 24, @"vowifi.switch.status", v52, kPhoneServicesWalletDomain, 0, 1, 0);
            sub_100029A48(&v53);
            if ((v48 & 1) == 0)
            {
              sub_100004A34(v46);
            }

            (*(*a1 + 104))(a1, 1, 0);
            *buf = 0;
            *&buf[8] = 0;
            sub_10034F010(*(a1 + 80), 2, buf);
            if (*buf)
            {
              (*(**buf + 104))(*buf, 0, 0);
            }

            if (*&buf[8])
            {
              sub_100004A34(*&buf[8]);
            }

            return;
          }
        }

        else
        {
          v47 = 0;
        }

        std::mutex::unlock(v40);
        v46 = 0;
        v48 = 1;
        goto LABEL_49;
      }
    }

    else
    {
      v27 = 0;
    }

    std::mutex::unlock(v20);
    v26 = 0;
    v28 = 1;
    goto LABEL_32;
  }

  v29 = *(a1 + 40);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = PersonalityInfo::logPrefix(**(a1 + 64));
    *buf = 136315394;
    *&buf[4] = v30;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%sVoWiFi cannot be turned ON since feature is not allowed", buf, 0x16u);
  }

  sub_10034CD9C(*(a1 + 80), 0, 1);
}

void sub_100208074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_100029A48(&a9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_100208104(uint64_t a1)
{
  if ((isReal() & 1) == 0)
  {
    v9 = *(a1 + 40);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v10 = PersonalityInfo::logPrefix(**(a1 + 64));
    v16 = 136315394;
    v17 = v10;
    v18 = 2080;
    v19 = " ";
    v6 = "#I %s%sevaluateWiFiLocationRequirement: Skipping location evaluation for emergency personality";
    v7 = v9;
    v8 = 22;
    goto LABEL_8;
  }

  v2 = *(a1 + 88);
  if (v2 == 2)
  {
    v11 = 1;
  }

  else
  {
    if (!v2)
    {
      v3 = *(a1 + 40);
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v4 = PersonalityInfo::logPrefix(**(a1 + 64));
      v5 = sub_10060FFC0(*(a1 + 88));
      v16 = 136315650;
      v17 = v4;
      v18 = 2080;
      v19 = " ";
      v20 = 2080;
      v21 = v5;
      v6 = "#I %s%sevaluateWiFiLocationRequirement: Skipping location evaluation for switch state %s";
      v7 = v3;
      v8 = 32;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, &v16, v8);
      return;
    }

    v11 = 0;
  }

  *(a1 + 108) = v11;
  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = PersonalityInfo::logPrefix(**(a1 + 64));
    v14 = sub_10060FFC0(*(a1 + 88));
    v15 = asStringBool(*(a1 + 108));
    v16 = 136315906;
    v17 = v13;
    v18 = 2080;
    v19 = " ";
    v20 = 2080;
    v21 = v14;
    v22 = 2080;
    v23 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sevaluateWiFiLocationRequirement: fSwitchState: %s, locationRequired: %s", &v16, 0x2Au);
  }

  sub_100350590(*(a1 + 80));
}

void sub_100208324(void *a1@<X0>, void *a2@<X8>)
{
  sub_100004AA0(&v10, a1 + 1);
  v4 = v10;
  if (*(&v10 + 1))
  {
    atomic_fetch_add_explicit((*(&v10 + 1) + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(*(&v4 + 1));
  }

  if (!a1[14])
  {
    v5 = a1[8];
    v9 = 10080;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1174405120;
    v7[2] = sub_100208498;
    v7[3] = &unk_101E31B28;
    v7[4] = a1;
    v8 = v4;
    if (*(&v4 + 1))
    {
      atomic_fetch_add_explicit((*(&v4 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    sub_10042FDFC(a1 + 48, a1 + 24, "wfc", "ps.wfc", v5, &v9, 1, 0, v7);
  }

  v6 = a1[15];
  *a2 = a1[14];
  a2[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v4 + 1));
  }
}

void sub_100208474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_100208498(void *a1)
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
        sub_100208520(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_100208520(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  __p = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &__p);
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
  v12 = **(a1 + 64);
  v17[0] = kPhoneServicesWalletDomain;
  v17[1] = @"vowifi.followup";
  v15 = 0;
  v16 = 0;
  __p = 0;
  sub_10005B328(&__p, v17, &v18, 2uLL);
  (*(*v10 + 32))(v10, v12 + 24, @"shown", 0, &__p, 1);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  return (*(*a1 + 104))(a1, 0, 0);
}

uint64_t sub_100208734(uint64_t result, uint64_t a2)
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

void sub_100208750(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100208760(uint64_t a1, const __CFDictionary *a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 64));
    *buf = 136315394;
    *&buf[4] = v5;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sfollowUp complete", buf, 0x16u);
  }

  *buf = kPhoneServicesWalletDomain;
  *&buf[8] = @"vowifi.followup";
  v80 = 0;
  v81 = 0;
  __p = 0;
  sub_10005B328(&__p, buf, &buf[16], 2uLL);
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v7 = ServiceMap;
  v9 = v8;
  if (v8 < 0)
  {
    v10 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  *buf = v9;
  v13 = sub_100009510(&v7[1].__m_.__sig, buf);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v7);
  v14 = 0;
  v16 = 1;
LABEL_11:
  (*(*v15 + 32))(v15, **(a1 + 64) + 24, @"id", 0, &__p, 1);
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  Value = CFDictionaryGetValue(a2, @"Action");
  v18 = Value;
  if (!Value || (v19 = CFGetTypeID(Value), v19 != CFStringGetTypeID()) || CFStringCompare(v18, @"com.followup.dismiss", 0))
  {
    v20 = Registry::getServiceMap(*(a1 + 48));
    v21 = v20;
    if (v8 < 0)
    {
      v22 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
      v23 = 5381;
      do
      {
        v8 = v23;
        v24 = *v22++;
        v23 = (33 * v23) ^ v24;
      }

      while (v24);
    }

    std::mutex::lock(v20);
    *buf = v8;
    v25 = sub_100009510(&v21[1].__m_.__sig, buf);
    if (v25)
    {
      v27 = v25[3];
      v26 = v25[4];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v21);
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v26);
        v28 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      v27 = 0;
    }

    std::mutex::unlock(v21);
    v26 = 0;
    v28 = 1;
LABEL_24:
    v29 = **(a1 + 64);
    cf = 0;
    *buf = -1;
    v30 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, buf);
    if (v30)
    {
      cf = v30;
      *buf = 0;
      sub_100029A48(buf);
      v31 = cf;
    }

    else
    {
      v31 = 0;
    }

    v78 = v31;
    cf = 0;
    sub_100029A48(&cf);
    (*(*v27 + 16))(v27, v29 + 24, @"shown", v31, 0, &__p, 1, 0);
    sub_100029A48(&v78);
    if ((v28 & 1) == 0)
    {
      sub_100004A34(v26);
    }

    v32 = *(a1 + 40);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = PersonalityInfo::logPrefix(**(a1 + 64));
      *buf = 136315394;
      *&buf[4] = v33;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v34 = "#I %s%sFollowUp WiFiCalling succeed";
LABEL_31:
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v34, buf, 0x16u);
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  v35 = Registry::getServiceMap(*(a1 + 48));
  v36 = v35;
  v37 = v8;
  if (v8 < 0)
  {
    v38 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v39 = 5381;
    do
    {
      v37 = v39;
      v40 = *v38++;
      v39 = (33 * v39) ^ v40;
    }

    while (v40);
  }

  std::mutex::lock(v35);
  *buf = v37;
  v41 = sub_100009510(&v36[1].__m_.__sig, buf);
  if (v41)
  {
    v43 = v41[3];
    v42 = v41[4];
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v36);
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v42);
      v44 = 0;
      goto LABEL_43;
    }
  }

  else
  {
    v43 = 0;
  }

  std::mutex::unlock(v36);
  v42 = 0;
  v44 = 1;
LABEL_43:
  (*(*v43 + 24))(&cf, v43, **(a1 + 64) + 24, @"left.attempts", 0, &__p, 1);
  v45 = cf;
  v46 = 5;
  *buf = 5;
  if (cf)
  {
    v47 = CFGetTypeID(cf);
    if (v47 == CFNumberGetTypeID())
    {
      ctu::cf::assign(buf, v45, v48);
    }

    v46 = *buf;
  }

  sub_10000A1EC(&cf);
  if ((v44 & 1) == 0)
  {
    sub_100004A34(v42);
  }

  if (v46)
  {
    v49 = v46 - 1;
    v50 = *(a1 + 40);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = PersonalityInfo::logPrefix(**(a1 + 64));
      *buf = 136315906;
      *&buf[4] = v51;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v84 = 1024;
      v85 = 168;
      v86 = 1024;
      v87 = v46 - 1;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I %s%sScheduling future followup attempt in %d hours. %d attempts left", buf, 0x22u);
    }

    v52 = Registry::getServiceMap(*(a1 + 48));
    v53 = v52;
    v54 = v8;
    if (v8 < 0)
    {
      v55 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
      v56 = 5381;
      do
      {
        v54 = v56;
        v57 = *v55++;
        v56 = (33 * v56) ^ v57;
      }

      while (v57);
    }

    std::mutex::lock(v52);
    *buf = v54;
    v58 = sub_100009510(&v53[1].__m_.__sig, buf);
    if (v58)
    {
      v60 = v58[3];
      v59 = v58[4];
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v53);
        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v59);
        v61 = 0;
        goto LABEL_62;
      }
    }

    else
    {
      v60 = 0;
    }

    std::mutex::unlock(v53);
    v59 = 0;
    v61 = 1;
LABEL_62:
    v63 = **(a1 + 64);
    cf = 0;
    *buf = v49;
    v64 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, buf);
    if (v64)
    {
      v65 = cf;
      cf = v64;
      *buf = v65;
      sub_100029A48(buf);
    }

    v78 = cf;
    cf = 0;
    sub_100029A48(&cf);
    (*(*v60 + 16))(v60, v63 + 24, @"left.attempts", v78, 0, &__p, 1, 0);
    sub_100029A48(&v78);
    if ((v61 & 1) == 0)
    {
      sub_100004A34(v59);
    }

    v66 = Registry::getServiceMap(*(a1 + 48));
    v67 = v66;
    if (v8 < 0)
    {
      v68 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
      v69 = 5381;
      do
      {
        v8 = v69;
        v70 = *v68++;
        v69 = (33 * v69) ^ v70;
      }

      while (v70);
    }

    std::mutex::lock(v66);
    *buf = v8;
    v71 = sub_100009510(&v67[1].__m_.__sig, buf);
    if (v71)
    {
      v73 = v71[3];
      v72 = v71[4];
      if (v72)
      {
        atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v67);
        atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v72);
        v74 = 0;
LABEL_74:
        v75 = **(a1 + 64);
        cf = 0;
        *buf = -2;
        v76 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, buf);
        if (v76)
        {
          cf = v76;
          *buf = 0;
          sub_100029A48(buf);
          v77 = cf;
        }

        else
        {
          v77 = 0;
        }

        v78 = v77;
        cf = 0;
        sub_100029A48(&cf);
        (*(*v73 + 16))(v73, v75 + 24, @"shown", v77, 0, &__p, 1, 0);
        sub_100029A48(&v78);
        if ((v74 & 1) == 0)
        {
          sub_100004A34(v72);
        }

        sub_100208324(a1, buf);
        sub_100430D40(*buf, 1);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        goto LABEL_32;
      }
    }

    else
    {
      v73 = 0;
    }

    std::mutex::unlock(v67);
    v72 = 0;
    v74 = 1;
    goto LABEL_74;
  }

  v32 = *(a1 + 40);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v62 = PersonalityInfo::logPrefix(**(a1 + 64));
    *buf = 136315394;
    *&buf[4] = v62;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v34 = "#I %s%sIt was last attempt to FollowUp WiFiCalling";
    goto LABEL_31;
  }

LABEL_32:
  if (__p)
  {
    v80 = __p;
    operator delete(__p);
  }
}

void sub_100209008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10020911C(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (*(*(result + 80) + 354))
  {
    return;
  }

  v4 = a2;
  v6 = sub_1002072C4(result);
  v7 = sub_100207314(result);
  v8 = *(result + 88);
  if (v8)
  {
    v9 = v8 == 2;
  }

  else
  {
    v9 = sub_100204A98(result);
  }

  if (v6 & 1 | ((v7 & 1) == 0) || !sub_100204A98(result))
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_100204CA8(result);
  }

  if (((v6 | v10) & 1) == 0)
  {
    v11 = -1;
    if (!v10)
    {
      goto LABEL_15;
    }

LABEL_13:
    if (*(result + 101) == 1)
    {
      (*(*result + 168))(result);
    }

    goto LABEL_15;
  }

  v11 = sub_10034B458(*(result + 80), v4 | a3, v10);
  if (v10)
  {
    goto LABEL_13;
  }

LABEL_15:
  if ((v9 & v6) == 1 && v11 == 1 && (v12 = **(result + 64), *(v12 + 48) == 1))
  {
    if (*(result + 92) != 1)
    {
      v13 = *(result + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v28 = PersonalityInfo::logPrefix(v12);
        v29 = 2080;
        v30 = " ";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sActivating VoWiFi phone service!", buf, 0x16u);
      }

      *(result + 92) = 1;
      sub_100209570(result);
    }
  }

  else
  {
    v14 = *(result + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = PersonalityInfo::logPrefix(**(result + 64));
      v16 = "OFF";
      if (v9)
      {
        v16 = "ON";
      }

      v24 = v16;
      if (v6)
      {
        v17 = "";
      }

      else
      {
        v17 = "NOT ";
      }

      v18 = sub_10060FFE4(v11);
      if (*(**(result + 64) + 48))
      {
        v19 = "";
      }

      else
      {
        v19 = "NOT ";
      }

      *buf = 136316418;
      v28 = v15;
      v29 = 2080;
      v30 = " ";
      v31 = 2080;
      v32 = v24;
      v33 = 2080;
      v34 = v17;
      v35 = 2080;
      v36 = v18;
      v37 = 2080;
      v38 = v19;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sVoWiFi service disabled because: switch is %s, service is %sallowed, account status is %s, SIM is %savailable", buf, 0x3Eu);
    }

    if (*(result + 92))
    {
      v20 = *(result + 40);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = PersonalityInfo::logPrefix(**(result + 64));
        *buf = 136315394;
        v28 = v21;
        v29 = 2080;
        v30 = " ";
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sDeactivating VoWiFi phone service!", buf, 0x16u);
      }

      *(result + 92) = 0;
      sub_100209570(result);
    }

    if ((v9 & v7) == 1 && v11 == -1 && *(**(result + 64) + 48) == 1 && !*(result + 88))
    {
      sub_100206460(result, 1);
    }
  }

  v22 = *(result + 80);
  v23 = *(result + 92) == 1;
  sub_10000501C(__p, "");
  (*(*v22 + 448))(v22, 0, v23, __p);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if ((sub_10034B81C(*(result + 80)) & 1) == 0 && (*(result + 100) & 1) == 0)
  {
    sub_10034CC54(*(result + 80), 0);
  }

  sub_10034CD9C(*(result + 80), 0, v4);
}

void sub_10020954C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100209570(uint64_t a1)
{
  if (sub_1002072C4(a1))
  {
    (*(*a1 + 48))(&v5, a1);
    v2 = v5;
    sub_10001021C(&v6);
  }

  else
  {
    v2 = 2;
  }

  v3 = **(a1 + 64);
  v4 = *(v3 + 13);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = _NSConcreteStackBlock;
      v6 = 0x40000000;
      v7 = sub_10020A238;
      v8 = &unk_101E31C80;
      v9 = v2;
      v10 = 2;
      sub_10020A08C(0x80117, &v5);
      return;
    }

    if (v4 != 3)
    {
      return;
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {
      v5 = _NSConcreteStackBlock;
      v6 = 0x40000000;
      v7 = sub_10020A044;
      v8 = &unk_101E31C60;
      v9 = v2;
      v10 = 1;
      sub_100209E98(0x800EF, &v5);
    }

    return;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101766004(v3);
  }
}

uint64_t sub_100209700(uint64_t a1)
{
  if (*(a1 + 96) != 1)
  {
    return 0;
  }

  result = sub_10020509C(a1);
  if (!result)
  {
    return result;
  }

  if ((*(a1 + 100) & 1) == 0)
  {
    *(a1 + 100) = 1;
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(**(a1 + 64));
      *buf = 136315394;
      *&buf[4] = v6;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s================================ Call Set Entitlement ================================", buf, 0x16u);
    }

    v17 = 128;
    ServiceMap = Registry::getServiceMap(*(a1 + 48));
    v8 = ServiceMap;
    if ((v9 & 0x8000000000000000) != 0)
    {
      v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
      v11 = 5381;
      do
      {
        v9 = v11;
        v12 = *v10++;
        v11 = (33 * v11) ^ v12;
      }

      while (v12);
    }

    std::mutex::lock(ServiceMap);
    v18 = v9;
    v13 = sub_100009510(&v8[1].__m_.__sig, &v18);
    if (v13)
    {
      v15 = v13[3];
      v14 = v13[4];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v8);
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v14);
        v16 = 0;
LABEL_17:
        (**v15)(buf, v15, **(a1 + 64) + 24);
        (*(**buf + 288))(*buf, 0, &v17);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if ((v16 & 1) == 0)
        {
          sub_100004A34(v14);
        }

        return 1;
      }
    }

    else
    {
      v15 = 0;
    }

    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    goto LABEL_17;
  }

  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 64));
    *buf = 136315394;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%ssetEntitlement call in progress - skipped", buf, 0x16u);
  }

  return 1;
}

void sub_100209990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1002099D4(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 2 || !v1 && sub_100204A98(a1))
  {
    v2 = &_mh_execute_header;
  }

  else
  {
    v2 = 0;
  }

  return v2 | v1;
}

void sub_100209A18(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 64));
    v4 = sub_10060FFC0(*(a1 + 88));
    v5 = sub_10060FF94(*(a1 + 92));
    v6 = sub_100A38E08(*(a1 + 96));
    v7 = asStringBool(*(a1 + 100));
    v8 = asStringBool(*(a1 + 108));
    v9 = 136316674;
    v10 = v3;
    v11 = 2080;
    v12 = " ";
    v13 = 2080;
    v14 = v4;
    v15 = 2080;
    v16 = v5;
    v17 = 2080;
    v18 = v6;
    v19 = 2080;
    v20 = v7;
    v21 = 2080;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s| fSwitchState: %s, fServiceStatus: %s, fEntitlementResultForWiFiCalling: %s, fAwaitingSetEntitlement: %s, fLocationRequired: %s", &v9, 0x48u);
  }
}

void **sub_100209B50(void **result)
{
  if (*(*result[8] + 48) == 1)
  {
    v11[1] = v4;
    v11[2] = v3;
    v11[3] = v2;
    v11[4] = v1;
    v11[5] = v5;
    v11[6] = v6;
    v7 = result;
    v8 = sub_1002072C4(result);
    ((*v7)[6])(&v10, v7);
    v9 = v10;
    sub_10001021C(v11);
    phoneservices::submitSwitchAnalytics((v7 + 6), 0, *(*v7[8] + 52), v8, v9);
  }

  return result;
}

void sub_100209C88(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100209D5C);
  __cxa_rethrow();
}

void sub_100209CC8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100209D1C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100209D5C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *sub_100209D88(void *a1, CFTypeRef *a2)
{
  v4 = *a2;
  if (*a2 && (v5 = CFGetTypeID(*a2), v5 == CFNumberGetTypeID()))
  {
    *a1 = v4;
  }

  else
  {
    *a1 = 0;
    if (*a2)
    {
      CFRelease(*a2);
    }
  }

  return a1;
}

uint64_t sub_100209DF4(__CFDictionary *a1, void *cf, uint64_t a3)
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

void sub_100209E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100DA3324(&a9);
  sub_100DA3324(va);
  _Unwind_Resume(a1);
}

BOOL sub_100209E98(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v8)
  {
    v6 = 0;
    v7 = 0;
    sub_10001C610(&v6);
    v4 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  else
  {
    v4 = 0;
  }

  sub_10001C0A0(&v8);
  return v4;
}

void sub_100209FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    sub_100004A34(a7);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10020A044(uint64_t a1, _DWORD *a2)
{
  a2[7] |= 2u;
  a2[4] = *(a1 + 32);
  result = subscriber::simSlotAsInstance();
  a2[7] |= 4u;
  a2[5] = result;
  return result;
}

BOOL sub_10020A08C(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v8)
  {
    v6 = 0;
    v7 = 0;
    sub_10001C610(&v6);
    v4 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  else
  {
    v4 = 0;
  }

  sub_10001C0A0(&v8);
  return v4;
}

void sub_10020A1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    sub_100004A34(a7);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10020A238(uint64_t a1, _DWORD *a2)
{
  a2[7] |= 2u;
  a2[4] = *(a1 + 32);
  result = subscriber::simSlotAsInstance();
  a2[7] |= 4u;
  a2[5] = result;
  return result;
}

uint64_t phoneservices::getMetricType(unsigned int a1, int a2, _DWORD *a3)
{
  if (a2 == 2)
  {
    if (a1 <= 2)
    {
      v3 = &unk_1017DF3BC;
      goto LABEL_7;
    }

    return 1;
  }

  if (a2 == 1)
  {
    if (a1 < 3)
    {
      v3 = &unk_1017DF3B0;
LABEL_7:
      *a3 = v3[a1];
      return 1;
    }

    return 1;
  }

  return 0;
}

const char *phoneservices::getAnalyticsSwitchName(unsigned int a1)
{
  if (a1 > 5)
  {
    return "";
  }

  else
  {
    return off_101E31CA0[a1];
  }
}

void sub_10020A400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  (*(*v20 + 8))(v20, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t sub_10020A474(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_10020A4A4()
{
  v0 = *(&xmmword_101FBA0D0 + 1);
  xmmword_101FBA0D0 = 0uLL;
  if (v0)
  {
    sub_100004A34(v0);
  }

  v2 = 0;
  v3 = 0;
  Registry::get(v0);
  v1 = 0;
  sGetLogGroupName();
  operator new();
}

ctu::OsLogLogger **sub_10020A86C(ctu::OsLogLogger **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    ctu::OsLogLogger::~OsLogLogger(v2);
    operator delete();
  }

  return a1;
}

void sub_10020A8B4(Registry *a1@<X0>, void *a2@<X8>)
{
  Registry::get(a1);
  *a2 = 0;
  a2[1] = 0;
}

void sub_10020A9A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void createPlatformPropertyStore(uint64_t *a1@<X8>)
{
  memset(&v2, 0, sizeof(v2));
  stat("/Library/Preferences/csidata", &v2);
  *a1 = 0;
  operator new();
}

uint64_t sub_10020AB1C()
{
  {
    return __cxa_atexit(sub_100DBA2A0, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_10020AB5C()
{
  __cxa_atexit(sub_10020A474, &xmmword_101FBA0D0, &_mh_execute_header);
  WirelessUserDirectory = _GetWirelessUserDirectory();
  v1 = strlen(WirelessUserDirectory);
  if (v1 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  v2 = v1;
  if (v1 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v1;
  if (v1)
  {
    memmove(&__dst, WirelessUserDirectory, v1);
  }

  __dst.__r_.__value_.__s.__data_[v2] = 0;
  v3 = std::string::append(&__dst, "/Library/Preferences/csidata", 0x1CuLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  unk_101FBA0F0 = *(&v3->__r_.__value_.__l + 2);
  xmmword_101FBA0E0 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return __cxa_atexit(&std::string::~string, &xmmword_101FBA0E0, &_mh_execute_header);
}

void sub_10020AC98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10020ACC8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10010595C(&v5, a4);
  rest::write_rest_value();
  operator new();
}

void sub_10020AE8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10020AF0C(uint64_t a1)
{
  sub_1000FF0B4(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_10020AF48(PreferencesUtilityInterface *a1)
{
  PreferencesUtilityInterface::~PreferencesUtilityInterface(a1);

  operator delete();
}

void *sub_10020AF80(void *a1)
{
  *a1 = off_101E31D48;
  sub_1000FF0B4((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_10020AFD0(void *a1)
{
  *a1 = off_101E31D48;
  sub_1000FF0B4((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_10020B0C0(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10020B0E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E31D48;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1001063CC((a2 + 3), a1 + 24);
}

void sub_10020B144(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10020B164(char *a1)
{
  sub_10020B274((a1 + 8));

  operator delete(a1);
}

void sub_10020B1A0(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v5 = 0;
  rest::GetPreferencesSettingResult::GetPreferencesSettingResult(&v5);
  rest::read_rest_value(&v5, &object, v3);
  sub_100106378(a1 + 24, v5);
  xpc_release(object);
}

uint64_t sub_10020B228(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10020B274(uint64_t a1)
{
  sub_1000FF0B4(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

uint64_t sub_10020B2C0(uint64_t a1)
{
  v11 = 0;
  v2 = sub_10005D028();
  sub_10000501C(__p, "EnableThumperByDefault");
  v3 = sub_10005D0D8(v2, __p, &v11);
  v4 = v3;
  if (v10 < 0)
  {
    operator delete(__p[0]);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else if (v3)
  {
LABEL_3:
    LOBYTE(v5) = v11;
    return v5 & 1;
  }

  (*(**(a1 + 96) + 472))(__p);
  v5 = __p[0];
  v12 = 0;
  if (__p[0])
  {
    v6 = CFGetTypeID(__p[0]);
    if (v6 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v12, v5, v7);
      LOBYTE(v5) = v12;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  sub_10000A1EC(__p);
  return v5 & 1;
}

uint64_t sub_10020B3EC(uint64_t a1)
{
  v19 = 0;
  v20 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  v17 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v17);
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
  (**v10)(&v19, v10, **(a1 + 80) + 24);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (v19)
  {
    v17 = 0;
    v18 = 0;
    (*(*v19 + 64))(&v17);
    if (v17)
    {
      v16 = 0;
      sub_100A83764(v17, @"DisableSecondaryCredentials", &v15);
      sub_10002FE1C(&v16, &v15);
      sub_10000A1EC(&v15);
      if (v16)
      {
        LOBYTE(v15) = 0;
        ctu::cf::assign(&v15, v16, v12);
        v13 = v15;
      }

      else
      {
        v13 = 1;
      }

      sub_100045C8C(&v16);
    }

    else
    {
      v13 = 1;
    }

    if (v18)
    {
      sub_100004A34(v18);
    }
  }

  else
  {
    v13 = 1;
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  return v13 & 1;
}

void sub_10020B5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_100045C8C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(a1);
}

void sub_10020B614()
{
  if (v0)
  {
    JUMPOUT(0x10020B60CLL);
  }

  JUMPOUT(0x10020B604);
}

uint64_t sub_10020B624(uint64_t a1)
{
  (*(**(a1 + 96) + 472))(&cf);
  v1 = cf;
  v6 = 0;
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v6, v1, v3);
      LOBYTE(v1) = v6;
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  sub_10000A1EC(&cf);
  return v1 & 1;
}

uint64_t sub_10020B6E4(uint64_t a1)
{
  (*(**(a1 + 96) + 472))(&cf);
  v1 = cf;
  v6 = 0;
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v6, v1, v3);
      LOBYTE(v1) = v6;
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  sub_10000A1EC(&cf);
  return v1 & 1;
}

uint64_t sub_10020B7A4(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  v17 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v17);
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
  (*(*v10 + 96))(&cf, v10, *(**(a1 + 80) + 52), 1, @"PrimaryDeviceGetsProvisioningInformation", 0, 0);
  v12 = cf;
  LOBYTE(v17) = 1;
  if (cf)
  {
    v13 = CFGetTypeID(cf);
    if (v13 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v17, v12, v14);
      LOBYTE(v12) = v17 ^ 1;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  sub_10000A1EC(&cf);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  return v12 & 1;
}

void sub_10020B91C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10020BA70(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_100004A34(v2);
    if (!v1)
    {
LABEL_3:
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  sub_100004A34(v1);
  if (v3)
  {
LABEL_4:
    operator delete();
  }

LABEL_5:
  _Unwind_Resume(exception_object);
}

uint64_t sub_10020BAB0(uint64_t a1, void *a2, NSObject **a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v8 = a6[1];
  v18 = *a6;
  v19 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = a4[1];
  v16 = *a4;
  v17 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10080FBC8(a1, a2, 0, a3, &v18, &v16, a5, "ps.thp");
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v19)
  {
    sub_100004A34(v19);
  }

  *a1 = off_101E31DC8;
  *(a1 + 8) = off_101E31F28;
  sub_10000501C(&__p, "thp");
  v13 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
  }

  ctu::RestModule::RestModule();
  if (v13)
  {
    dispatch_release(v13);
  }

  if (v15 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 3;
  *(a1 + 664) = 0;
  *(a1 + 672) = 0;
  *(a1 + 728) = 0;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 762) = 0u;
  *(a1 + 778) = 16842753;
  *(a1 + 784) = 0;
  *(a1 + 792) = 0;
  *(a1 + 904) = 0;
  *(a1 + 920) = 0;
  *(a1 + 912) = 0;
  *(a1 + 928) = 5;
  v10 = *(a1 + 48);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    v21 = v11;
    v22 = 2080;
    v23 = " ";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%screated", buf, 0x16u);
  }

  return a1;
}

void sub_10020BCE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v21 = *v19;
  if (*v19)
  {
    *(v17 + 912) = v21;
    operator delete(v21);
  }

  sub_100220B4C(v18 + 584);
  v22 = *(v17 + 760);
  if (v22)
  {
    sub_100004A34(v22);
  }

  v23 = *(v17 + 744);
  if (v23)
  {
    sub_100004A34(v23);
  }

  sub_100220BD0(v18 + 464);
  if (*(v17 + 664) == 1)
  {
    sub_100220C2C(v18);
  }

  v24 = *(v17 + 184);
  if (v24)
  {
    sub_100004A34(v24);
  }

  sub_10080FEE4(v17);
  _Unwind_Resume(a1);
}

void sub_10020BD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  JUMPOUT(0x10020BD90);
}

uint64_t sub_10020BDB8(uint64_t a1)
{
  *a1 = off_101E31DC8;
  *(a1 + 8) = off_101E31F28;
  ctu::RestModule::disconnect((a1 + 176));
  v2 = *(a1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 80));
    v9 = 136315394;
    v10 = v3;
    v11 = 2080;
    v12 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sdestroyed", &v9, 0x16u);
  }

  v4 = *(a1 + 904);
  if (v4)
  {
    *(a1 + 912) = v4;
    operator delete(v4);
  }

  sub_100220B4C(a1 + 792);
  v5 = *(a1 + 760);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 744);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (*(a1 + 728) == 1)
  {
    if (*(a1 + 720) == 1 && *(a1 + 719) < 0)
    {
      operator delete(*(a1 + 696));
    }

    if (*(a1 + 695) < 0)
    {
      operator delete(*(a1 + 672));
    }
  }

  if (*(a1 + 664) == 1)
  {
    sub_100220C2C(a1 + 208);
  }

  v7 = *(a1 + 184);
  if (v7)
  {
    sub_100004A34(v7);
  }

  sub_10080FEE4(a1);
  return a1;
}

void sub_10020BF4C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10020BF68(uint64_t a1)
{
  sub_10020BDB8(a1);

  operator delete();
}

void sub_10020BFA0(uint64_t a1)
{
  sub_10020BDB8(a1 - 8);

  operator delete();
}

const void **sub_10020BFDC(uint64_t a1)
{
  v80 = 0;
  sub_1006160F0(&v81);
  __p[0] = sub_1006160B8(v81, @"last.account");
  sub_100222990(&v80, __p);
  if (*(&v81 + 1))
  {
    sub_100004A34(*(&v81 + 1));
  }

  if (v80)
  {
    sub_1006160F0(&v81);
    sub_100616054(v81, @"last.account", 0);
    if (*(&v81 + 1))
    {
      sub_100004A34(*(&v81 + 1));
    }

    __p[0] = 0;
    __p[1] = 0;
    v79 = 0;
    v81 = 0uLL;
    v82 = 0;
    ctu::cf::assign();
    *__p = v81;
    v79 = v82;
    v2 = v81;
    v77 = 0;
    if (v82 >= 0)
    {
      v2 = __p;
    }

    v76 = 0;
    v77 = CFStringCreateWithFormat(0, 0, @"%@%s", @"thumper.switch.status.", v2);
    sub_1006160F0(&v81);
    v75 = sub_1006160B8(v81, v77);
    sub_100209D88(&v76, &v75);
    if (*(&v81 + 1))
    {
      sub_100004A34(*(&v81 + 1));
    }

    if (!v76)
    {
LABEL_23:
      v75 = 0;
      sub_1005D7A90(@"ps.local.auth.", __p, &v75);
      v74 = 0;
      sub_1006160F0(&v81);
      v73 = sub_1006160B8(v81, v75);
      sub_100222990(&v74, &v73);
      if (*(&v81 + 1))
      {
        sub_100004A34(*(&v81 + 1));
      }

      if (!v74)
      {
LABEL_39:
        v73 = 0;
        sub_1006160F0(&v81);
        v23 = sub_1006160B8(v81, @"ps.device.list");
        v73 = v23;
        if (*(&v81 + 1))
        {
          sub_100004A34(*(&v81 + 1));
          v23 = v73;
        }

        if (!v23)
        {
LABEL_55:
          v72 = 0;
          sub_1005D7A90(@"ps.local.keys.", __p, &v72);
          v71 = 0;
          sub_1006160F0(&v81);
          v70 = sub_1006160B8(v81, v72);
          sub_100222990(&v71, &v70);
          if (*(&v81 + 1))
          {
            sub_100004A34(*(&v81 + 1));
          }

          if (!v71)
          {
            goto LABEL_71;
          }

          v70 = 0;
          sub_1005D63F0(*(a1 + 104), v72, v71, __p);
          ServiceMap = Registry::getServiceMap(*(a1 + 56));
          v35 = ServiceMap;
          if (v36 < 0)
          {
            v37 = (v36 & 0x7FFFFFFFFFFFFFFFLL);
            v38 = 5381;
            do
            {
              v36 = v38;
              v39 = *v37++;
              v38 = (33 * v38) ^ v39;
            }

            while (v39);
          }

          std::mutex::lock(ServiceMap);
          *&v81 = v36;
          v40 = sub_100009510(&v35[1].__m_.__sig, &v81);
          if (v40)
          {
            v42 = v40[3];
            v41 = v40[4];
            if (v41)
            {
              atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v35);
              atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v41);
              v43 = 0;
LABEL_66:
              (*(*v42 + 16))(v42, **(a1 + 80) + 24, @"individual.keys", v70, kPhoneServicesWalletDomain, 0, 4, 0);
              if ((v43 & 1) == 0)
              {
                sub_100004A34(v41);
              }

              sub_1006160F0(&v81);
              sub_100616054(v81, v72, 0);
              if (*(&v81 + 1))
              {
                sub_100004A34(*(&v81 + 1));
              }

              sub_10000A1EC(&v70);
LABEL_71:
              sub_100005978(&v71);
              sub_100005978(&v72);
              sub_10000A1EC(&v73);
              sub_100005978(&v74);
              sub_100005978(&v75);
              sub_100029A48(&v76);
              sub_100005978(&v77);
              if (SHIBYTE(v79) < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_73;
            }
          }

          else
          {
            v42 = 0;
          }

          std::mutex::unlock(v35);
          v41 = 0;
          v43 = 1;
          goto LABEL_66;
        }

        v72 = 0;
        sub_1005D63F0(*(a1 + 104), @"ps.device.list", v23, __p);
        v24 = Registry::getServiceMap(*(a1 + 56));
        v25 = v24;
        if (v26 < 0)
        {
          v27 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
          v28 = 5381;
          do
          {
            v26 = v28;
            v29 = *v27++;
            v28 = (33 * v28) ^ v29;
          }

          while (v29);
        }

        std::mutex::lock(v24);
        *&v81 = v26;
        v30 = sub_100009510(&v25[1].__m_.__sig, &v81);
        if (v30)
        {
          v32 = v30[3];
          v31 = v30[4];
          if (v31)
          {
            atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v25);
            atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v31);
            v33 = 0;
LABEL_50:
            (*(*v32 + 16))(v32, **(a1 + 80) + 24, @"ps.device.list", v72, kPhoneServicesWalletDomain, 0, 4, 0);
            if ((v33 & 1) == 0)
            {
              sub_100004A34(v31);
            }

            sub_1006160F0(&v81);
            sub_100616054(v81, @"ps.device.list", 0);
            if (*(&v81 + 1))
            {
              sub_100004A34(*(&v81 + 1));
            }

            sub_10000A1EC(&v72);
            goto LABEL_55;
          }
        }

        else
        {
          v32 = 0;
        }

        std::mutex::unlock(v25);
        v31 = 0;
        v33 = 1;
        goto LABEL_50;
      }

      v73 = 0;
      sub_1005D63F0(*(a1 + 104), v75, v74, __p);
      v13 = Registry::getServiceMap(*(a1 + 56));
      v14 = v13;
      if (v15 < 0)
      {
        v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
        v17 = 5381;
        do
        {
          v15 = v17;
          v18 = *v16++;
          v17 = (33 * v17) ^ v18;
        }

        while (v18);
      }

      std::mutex::lock(v13);
      *&v81 = v15;
      v19 = sub_100009510(&v14[1].__m_.__sig, &v81);
      if (v19)
      {
        v21 = v19[3];
        v20 = v19[4];
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v14);
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v20);
          v22 = 0;
LABEL_34:
          (*(*v21 + 16))(v21, **(a1 + 80) + 24, @"ps.local.auth", v73, kPhoneServicesWalletDomain, 0, 4, 0);
          if ((v22 & 1) == 0)
          {
            sub_100004A34(v20);
          }

          sub_1006160F0(&v81);
          sub_100616054(v81, v75, 0);
          if (*(&v81 + 1))
          {
            sub_100004A34(*(&v81 + 1));
          }

          sub_10000A1EC(&v73);
          goto LABEL_39;
        }
      }

      else
      {
        v21 = 0;
      }

      std::mutex::unlock(v14);
      v20 = 0;
      v22 = 1;
      goto LABEL_34;
    }

    v3 = Registry::getServiceMap(*(a1 + 56));
    v4 = v3;
    if (v5 < 0)
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

    std::mutex::lock(v3);
    *&v81 = v5;
    v9 = sub_100009510(&v4[1].__m_.__sig, &v81);
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
LABEL_19:
        (*(*v11 + 48))(v11, **(a1 + 80) + 24, @"thumper.switch.status", v76, kPhoneServicesWalletDomain, 0, 1, 0);
        if ((v12 & 1) == 0)
        {
          sub_100004A34(v10);
        }

        sub_1006160F0(&v81);
        sub_100616054(v81, v77, 0);
        if (*(&v81 + 1))
        {
          sub_100004A34(*(&v81 + 1));
        }

        goto LABEL_23;
      }
    }

    else
    {
      v11 = 0;
    }

    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    goto LABEL_19;
  }

LABEL_73:
  v44 = Registry::getServiceMap(*(a1 + 56));
  v45 = v44;
  v47 = v46;
  if (v46 < 0)
  {
    v48 = (v46 & 0x7FFFFFFFFFFFFFFFLL);
    v49 = 5381;
    do
    {
      v47 = v49;
      v50 = *v48++;
      v49 = (33 * v49) ^ v50;
    }

    while (v50);
  }

  std::mutex::lock(v44);
  *&v81 = v47;
  v51 = sub_100009510(&v45[1].__m_.__sig, &v81);
  if (v51)
  {
    v53 = v51[3];
    v52 = v51[4];
    if (v52)
    {
      atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v45);
      atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v52);
      v54 = 0;
      goto LABEL_81;
    }
  }

  else
  {
    v53 = 0;
  }

  std::mutex::unlock(v45);
  v52 = 0;
  v54 = 1;
LABEL_81:
  v55 = kPhoneServicesWalletDomain;
  (*(*v53 + 32))(v53, **(a1 + 80) + 24, @"thumper.id", kPhoneServicesWalletDomain, 0, 1);
  if ((v54 & 1) == 0)
  {
    sub_100004A34(v52);
  }

  LOBYTE(__p[0]) = 0;
  v56 = sub_10005D028();
  sub_10000501C(&v81, "kAccountInvalidationForced");
  v57 = sub_10005D0D8(v56, &v81, __p);
  v58 = v57;
  if (SHIBYTE(v82) < 0)
  {
    operator delete(v81);
    if (!v58)
    {
      return sub_100005978(&v80);
    }
  }

  else if (!v57)
  {
    return sub_100005978(&v80);
  }

  v59 = Registry::getServiceMap(*(a1 + 56));
  v60 = v59;
  if (v46 < 0)
  {
    v61 = (v46 & 0x7FFFFFFFFFFFFFFFLL);
    v62 = 5381;
    do
    {
      v46 = v62;
      v63 = *v61++;
      v62 = (33 * v62) ^ v63;
    }

    while (v63);
  }

  std::mutex::lock(v59);
  *&v81 = v46;
  v64 = sub_100009510(&v60[1].__m_.__sig, &v81);
  if (!v64)
  {
    v66 = 0;
    goto LABEL_94;
  }

  v66 = v64[3];
  v65 = v64[4];
  if (!v65)
  {
LABEL_94:
    std::mutex::unlock(v60);
    v65 = 0;
    v67 = 1;
    goto LABEL_95;
  }

  atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v60);
  atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v65);
  v67 = 0;
LABEL_95:
  (*(*v66 + 16))(v66, **(a1 + 80) + 24, @"NeedAccountInvalidation", kCFBooleanTrue, v55, 0, 1, 0);
  if ((v67 & 1) == 0)
  {
    sub_100004A34(v65);
  }

  v68 = sub_10005D028();
  sub_10000501C(&v81, "kAccountInvalidationForced");
  sub_10033220C(v68, &v81);
  if (SHIBYTE(v82) < 0)
  {
    operator delete(v81);
  }

  return sub_100005978(&v80);
}