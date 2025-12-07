void sub_101453A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a57 < 0)
  {
    operator delete(__p);
  }

  sub_100FB0A00(v57 + 8);
  sub_1012933DC(&a21);
  _Unwind_Resume(a1);
}

void sub_101453B8C(uint64_t a1)
{
  v1 = *(a1 + 144);
  v2 = (a1 + 152);
  if (v1 != (a1 + 152))
  {
    v3 = a1;
    v22 = 0;
    v21 = (a1 + 152);
    do
    {
      v4 = *(v3 + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = asStringBool(*(v1 + 256));
        v6 = asStringBool(*(v1 + 257));
        v7 = asStringBool(*(v1 + 258));
        v8 = asStringBool(*(v1 + 259));
        v9 = v1 + 25;
        if (*(v1 + 223) < 0)
        {
          v9 = *v9;
        }

        asString();
        if (v24 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        v11 = v1[29];
        v12 = *(v1 + 255);
        v13 = v12;
        if ((v12 & 0x80u) != 0)
        {
          v12 = v1[30];
        }

        if (v13 >= 0)
        {
          v11 = (v1 + 29);
        }

        if (v12)
        {
          v14 = v11;
        }

        else
        {
          v14 = "<invalid>";
        }

        v15 = asString();
        v16 = asString();
        *buf = 134220290;
        v26 = ++v22;
        v27 = 2080;
        v28 = v5;
        v29 = 2080;
        v30 = v6;
        v31 = 2080;
        v32 = v7;
        v33 = 2080;
        v34 = v8;
        v35 = 2080;
        v36 = v9;
        v37 = 2080;
        v38 = p_p;
        v39 = 2080;
        v40 = v14;
        v41 = 2080;
        v42 = v15;
        v43 = 2080;
        v44 = v16;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I c%zu: sim_ready:%s good:%s hidden:%s dataonly:%s uuid:%s label:%s personality:%s data_preferred:%s voice_preferred:%s", buf, 0x66u);
        if (v24 < 0)
        {
          operator delete(__p);
        }

        v3 = a1;
        v2 = v21;
      }

      v17 = v1[1];
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
          v18 = v1[2];
          v19 = *v18 == v1;
          v1 = v18;
        }

        while (!v19);
      }

      v1 = v18;
    }

    while (v18 != v2);
  }
}

void sub_101453DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101453DD4(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 5);
    if ((v7 + 1) > 0x124924924924924)
    {
      sub_1000CE3D4();
    }

    v8 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 5);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x92492492492492)
    {
      v10 = 0x124924924924924;
    }

    else
    {
      v10 = v9;
    }

    v23 = a1;
    if (v10)
    {
      sub_1014544E0(v10);
    }

    v19 = 0;
    v20 = 224 * v7;
    v22 = 0;
    sub_101454414(224 * v7, a2);
    v6 = 224 * v7 + 224;
    v21 = v6;
    v11 = *a1;
    v12 = a1[1];
    v13 = *a1 - v12;
    v14 = v20 + v13;
    if (*a1 != v12)
    {
      v15 = 0;
      v16 = *a1;
      v17 = v20 + v13;
      do
      {
        sub_101454414(v17, v16);
        v16 += 224;
        v17 += 224;
        v15 -= 224;
      }

      while (v16 != v12);
      do
      {
        sub_101293424(v11);
        v11 += 224;
      }

      while (v11 != v12);
      v11 = *a1;
      v6 = v21;
    }

    *a1 = v14;
    a1[1] = v6;
    v18 = a1[2];
    a1[2] = v22;
    v21 = v11;
    v22 = v18;
    v19 = v11;
    v20 = v11;
    result = sub_10145453C(&v19);
  }

  else
  {
    result = sub_101454414(a1[1], a2);
    v6 = v4 + 224;
    a1[1] = v6;
  }

  a1[1] = v6;
  return result;
}

void sub_101453F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10145453C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101453FA8(uint64_t a1)
{
  v2 = (a1 + 32);
  v4 = (a1 + 56);
  sub_1001A8E64(&v4);
  v4 = v2;
  sub_1001A8E64(&v4);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_101454004(uint64_t a1, int a2)
{
  if (*(a1 + 448) != a2 && *(*(a1 + 400) + 24) == 1)
  {
    sub_101452A3C(a1, "data preferred", 0);
  }
}

void sub_101454034(uint64_t a1, int a2)
{
  if (*(a1 + 452) != a2 && *(*(a1 + 400) + 24) == 1)
  {
    sub_101452A3C(a1, "voice preferred", 0);
  }
}

uint64_t sub_101454064(uint64_t result, int a2)
{
  if (*(result + 456) != a2)
  {
    return (*(**(result + 80) + 16))();
  }

  return result;
}

uint64_t *sub_10145409C(uint64_t a1, int a2, _DWORD **a3)
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

uint64_t sub_1014541B4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_101293424(v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_101454200(uint64_t a1)
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

uint64_t sub_101454280(uint64_t a1)
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

void sub_1014543D8(_Unwind_Exception *a1)
{
  if (*(v2 + 223) < 0)
  {
    operator delete(*(v2 + 200));
  }

  sub_100FB0A00(v2 + 48);
  sub_1014541B4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_101454414(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 160;
  result = sub_100DFECD0(a1 + 8, a2 + 8);
  if (*(a2 + 183) < 0)
  {
    result = sub_100005F2C(v4, *(a2 + 160), *(a2 + 168));
  }

  else
  {
    v6 = *(a2 + 160);
    *(v4 + 16) = *(a2 + 176);
    *v4 = v6;
  }

  *(a1 + 184) = *(a2 + 184);
  if (*(a2 + 215) < 0)
  {
    result = sub_100005F2C((a1 + 192), *(a2 + 192), *(a2 + 200));
  }

  else
  {
    v7 = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 192) = v7;
  }

  *(a1 + 216) = *(a2 + 216);
  return result;
}

void sub_1014544B4(_Unwind_Exception *a1)
{
  if (*(v1 + 183) < 0)
  {
    operator delete(*v2);
  }

  sub_100FB0A00(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_1014544E0(unint64_t a1)
{
  if (a1 < 0x124924924924925)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10145453C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 224;
    sub_101293424(i - 224);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_101454590(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014545E4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101454624(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_101454650(ServiceManager::Service *this)
{
  *this = off_101F3CDB0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1014546AC(ServiceManager::Service *this)
{
  *this = off_101F3CDB0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_10145472C@<X0>(uint64_t *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_101454770(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    sub_10145293C(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_10145293C(v4, 0);
}

void sub_101454800(uint64_t a1)
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

void sub_1014548E0(uint64_t a1, int a2, ServiceStage *this)
{
  if (a2 == 2)
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
}

uint64_t *sub_1014549FC(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  ctu::RestModule::disconnect((v2 + 64));
  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_101454A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101454A9C(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  Registry::createRestModuleOneTimeUseConnection(&v10, *(v1 + 48));
  v3 = v1 + 64;
  ctu::RestModule::connect();
  if (v11)
  {
    sub_100004A34(v11);
  }

  v4 = (v1 + 112);
  *buf = off_101F3CE30;
  v16 = v1 + 64;
  v18 = buf;
  if (buf != (v1 + 112))
  {
    v5 = *(v1 + 136);
    if (v5 == v4)
    {
      v13 = v1 + 64;
      v14 = 0;
      __p = off_101F3CE30;
      v18 = 0;
      (*(*v5 + 24))(v5, buf);
      (*(**(v1 + 136) + 32))(*(v1 + 136));
      *(v1 + 136) = 0;
      v18 = buf;
      (*(__p + 3))(&__p, v1 + 112);
      (*(__p + 4))(&__p);
    }

    else
    {
      *(v1 + 112) = off_101F3CE30;
      *(v1 + 120) = v3;
      v18 = v5;
    }

    *(v1 + 136) = v4;
  }

  sub_101454280(buf);
  v6 = *(v1 + 136);
  if (v6)
  {
    (*(*v6 + 48))(v6, v1 + 144);
  }

  v7 = (v1 + 168);
  *buf = off_101F3CEC0;
  v16 = v1 + 64;
  v18 = buf;
  if (buf != (v1 + 168))
  {
    v8 = *(v1 + 192);
    if (v8 == v7)
    {
      v13 = v1 + 64;
      v14 = 0;
      __p = off_101F3CEC0;
      v18 = 0;
      (*(*v8 + 24))(v8, buf);
      (*(**(v1 + 192) + 32))(*(v1 + 192));
      *(v1 + 192) = 0;
      v18 = buf;
      (*(__p + 3))(&__p, v1 + 168);
      (*(__p + 4))(&__p);
    }

    else
    {
      *(v1 + 168) = off_101F3CEC0;
      *(v1 + 176) = v3;
      v18 = v8;
    }

    *(v1 + 192) = v7;
  }

  sub_101454200(buf);
  v9 = *(v1 + 192);
  if (v9)
  {
    (*(*v9 + 48))(v9, v1 + 200);
  }

  sub_10000501C(&__p, "/cc/props/assigned_sim_labels");
  *buf = off_101F3CF50;
  v16 = v1 + 416;
  v17 = v1;
  v18 = buf;
  ctu::RestModule::observeProperty();
  sub_1000062D4(buf);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  sub_10000501C(&__p, "/cc/prefs-nb/user_default_voice_slot");
  operator new();
}

void sub_1014550D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014551E8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F3CE30;
  a2[1] = v2;
  return result;
}

void sub_101455214(uint64_t a1, rest *this)
{
  v5 = 0;
  rest::write_rest_value(&v5, this, this);
  sub_10000501C(&__p, "/cc/props/subscription_info");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1014552B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1014552FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014553B8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F3CEC0;
  a2[1] = v2;
  return result;
}

void sub_1014553E4(uint64_t a1, rest *this)
{
  v5 = 0;
  rest::write_rest_value(&v5, this, this);
  sub_10000501C(&__p, "/cc/props/active_subscriptions");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_101455488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1014554CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10145558C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3CF50;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1014555BC(uint64_t a1, xpc_object_t *a2)
{
  v4 = *(a1 + 8);
  if (xpc_get_type(*a2) == &_xpc_type_null)
  {
    if (*(v4 + 24))
    {
      sub_1001704B0(v4, *(v4 + 8));
      *(v4 + 24) = 0;
    }
  }

  else
  {
    if ((*(v4 + 24) & 1) == 0)
    {
      *(&v8 + 1) = 0;
      v9 = 0;
      *&v8 = &v8 + 8;
      sub_10084A8C4(v4, &v8);
      sub_1001704B0(&v8, *(&v8 + 1));
    }

    sub_10084A940(v4, a2);
  }

  v5 = *(a1 + 16);
  if (*(v5 + 440) == 1)
  {
    v6 = *(v5 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v5 + 432);
      LODWORD(v8) = 134217984;
      *(&v8 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Labels updated with %zu elems", &v8, 0xCu);
    }

    sub_101452A3C(v5, "label changed", 0);
  }
}

uint64_t sub_10145571C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014557E4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3CFD0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10145581C(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v7);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = a1[3];
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_101455914(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014559D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F3D050;
  a2[1] = v2;
  return result;
}

void sub_1014559FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (*(*(v3 + 400) + 8) - **(v3 + 400)) >> 4;
    v6 = 134217984;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Personalities updated with %zd elems", &v6, 0xCu);
  }

  sub_101452A3C(v3, "personalities changed", a2[1] == *a2);
}

uint64_t sub_101455AD0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101455B98(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3D0D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101455BD0(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v7);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = a1[3];
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_101455CC8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101455D90(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3D150;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101455DC8(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v7);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = a1[3];
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_101455EC0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101455F0C(uint64_t **a1)
{
  v4 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 160);
    *buf = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Subscription info initialized, size: %zu", buf, 0xCu);
  }

  sub_101453B8C(v1);
  operator delete();
}

uint64_t sub_101456008(uint64_t a1)
{
  sub_1001A8F78(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_1001A8F78(*a1, v2);
  }

  return a1;
}

uint64_t sub_101456060(uint64_t a1)
{
  *a1 = off_101F3D1D0;
  v2 = (a1 + 40);
  v4 = (a1 + 64);
  sub_1001A8E64(&v4);
  v4 = v2;
  sub_1001A8E64(&v4);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1014560D8(uint64_t a1)
{
  *a1 = off_101F3D1D0;
  v2 = (a1 + 40);
  v3 = (a1 + 64);
  sub_1001A8E64(&v3);
  v3 = v2;
  sub_1001A8E64(&v3);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

uint64_t *sub_101456290(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = off_101F3D1D0;
  *(a2 + 8) = v4;
  if (*(a1 + 39) < 0)
  {
    sub_100005F2C((a2 + 16), *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v5 = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 16) = v5;
  }

  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  sub_1014566D0((a2 + 40), *(a1 + 40), *(a1 + 48), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 48) - *(a1 + 40)) >> 5));
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  return sub_1014566D0((a2 + 64), *(a1 + 64), *(a1 + 72), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 72) - *(a1 + 64)) >> 5));
}

void sub_101456360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001A8E64(va);
  if (*(v3 + 39) < 0)
  {
    operator delete(*(v3 + 16));
  }

  _Unwind_Resume(a1);
}

void sub_101456390(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = (a1 + 64);
  sub_1001A8E64(&v3);
  v3 = v2;
  sub_1001A8E64(&v3);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }
}

void sub_1014563E8(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = (a1 + 64);
  sub_1001A8E64(&v3);
  v3 = v2;
  sub_1001A8E64(&v3);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete(a1);
}

void sub_101456448(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if (*(a1 + 39) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    __p = *(a1 + 16);
    v12 = *(a1 + 32);
  }

  v13 = *(a1 + 40);
  v14 = *(a1 + 56);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v15 = *(a1 + 64);
  v5 = *(a1 + 80);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v6 = *a2;
  v16 = v5;
  v17 = v6;
  v7 = a2 + 1;
  v8 = a2[1];
  v9 = a2[2];
  v18[0] = v8;
  v18[1] = v9;
  if (v9)
  {
    *(v8 + 16) = v18;
    *a2 = v7;
    *v7 = 0;
    a2[2] = 0;
  }

  else
  {
    v17 = v18;
  }

  v10 = *(v4 + 16);
  if (v10)
  {
    if (std::__shared_weak_count::lock(v10))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_101456684(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1014566D0(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_101456754(result, a4);
  }

  return result;
}

void sub_101456734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001A8E64(&a9);
  _Unwind_Resume(a1);
}

void sub_101456754(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x124924924924925)
  {
    sub_1014544E0(a2);
  }

  sub_1000CE3D4();
}

uint64_t sub_1014567A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a1 + v6;
      v8 = a3 + v6;
      *(a3 + v6) = *(a1 + v6);
      sub_100DFECD0(a3 + v6 + 8, a1 + v6 + 8);
      if (*(a1 + v6 + 183) < 0)
      {
        sub_100005F2C((v8 + 160), *(v7 + 160), *(a1 + v6 + 168));
      }

      else
      {
        v9 = *(v7 + 160);
        *(v8 + 176) = *(v7 + 176);
        *(v8 + 160) = v9;
      }

      v10 = a3 + v6;
      *(a3 + v6 + 184) = *(v7 + 184);
      v11 = a1 + v6;
      if (*(v7 + 215) < 0)
      {
        sub_100005F2C((v10 + 192), *(v11 + 192), *(v11 + 200));
      }

      else
      {
        v12 = *(v11 + 192);
        *(v10 + 208) = *(v11 + 208);
        *(v10 + 192) = v12;
      }

      *(a3 + v6 + 216) = *(v7 + 216);
      v6 += 224;
    }

    while (v7 + 224 != a2);
    a3 += v6;
  }

  return a3;
}

void sub_101456894(_Unwind_Exception *a1)
{
  sub_100FB0A00(v1 + v2 + 8);
  if (v2)
  {
    v4 = v1 + v2 - 224;
    v5 = -v2;
    do
    {
      v4 = sub_101293424(v4) - 224;
      v5 += 224;
    }

    while (v5);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1014568F0(uint64_t **a1)
{
  v1 = *a1;
  v43 = a1;
  v44 = v1;
  v2 = *v1;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v3 = *(v1 + 80);
  if (v3 != (v1 + 88))
  {
    do
    {
      v4 = *(v1 + 32);
      v5 = *(v1 + 40);
      if (*(v3 + 55) < 0)
      {
        sub_100005F2C(&__p, v3[4], v3[5]);
      }

      else
      {
        __p = *(v3 + 2);
        v53 = v3[6];
      }

      if (v4 != v5)
      {
        while (!sub_100071DF8((v4 + 192), &__p))
        {
          v4 += 224;
          if (v4 == v5)
          {
            v4 = v5;
            break;
          }
        }
      }

      if (SHIBYTE(v53) < 0)
      {
        operator delete(__p);
      }

      if (v4 == *(v1 + 40))
      {
        v63 = 0u;
        v64 = 0u;
        memset(v62, 0, sizeof(v62));
        memset(v61, 0, sizeof(v61));
        v59 = 0u;
        memset(v60, 0, sizeof(v60));
        memset(v58, 0, sizeof(v58));
        memset(buf, 0, sizeof(buf));
        BYTE9(v64) = 1;
        std::string::operator=(v62, (v3 + 7));
        LODWORD(buf[0]) = *(v3 + 20);
        std::string::operator=(&v63, (v3 + 4));
        (*(**(v2 + 96) + 184))(&__str);
        std::string::operator=(&buf[1], &__str);
        std::string::operator=(v58, &v46);
        std::string::operator=(&v58[24], &v47);
        LOBYTE(v60[0]) = v48;
        std::string::operator=(&v60[1], &v49);
        std::string::operator=(v61, &v50);
        std::string::operator=(&v61[1], &v51);
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v49.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v47.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v46.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        sub_101453DD4(&v54, buf);
        sub_101293424(buf);
      }

      else
      {
        sub_101453DD4(&v54, v4);
      }

      v6 = v3[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != (v1 + 88));
  }

  if ((v1 + 56) != &v54)
  {
    sub_101457050((v1 + 56), v54, v55, 0x6DB6DB6DB6DB6DB7 * ((v55 - v54) >> 5));
  }

  if (rest::operator!=())
  {
    if (v2 + 200 != v1 + 32)
    {
      sub_101457050((v2 + 200), *(v1 + 32), *(v1 + 40), 0x6DB6DB6DB6DB6DB7 * ((*(v1 + 40) - *(v1 + 32)) >> 5));
      sub_101457050((v2 + 224), *(v1 + 56), *(v1 + 64), 0x6DB6DB6DB6DB6DB7 * ((*(v1 + 64) - *(v1 + 56)) >> 5));
    }

    v9 = *(v2 + 192);
    if (v9)
    {
      (*(*v9 + 48))(v9, v2 + 200);
    }

    v10 = *(v2 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = (v1 + 8);
      if (*(v1 + 31) < 0)
      {
        v11 = *v11;
      }

      v12 = 0x6DB6DB6DB6DB6DB7 * ((*(v2 + 208) - *(v2 + 200)) >> 5);
      v13 = 0x6DB6DB6DB6DB6DB7 * ((*(v2 + 232) - *(v2 + 224)) >> 5);
      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = v11;
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v12;
      HIWORD(buf[2]) = 2048;
      buf[3] = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Active subscriptions updated (%s), size: %zu (%zu)", buf, 0x20u);
    }

    v14 = *(v2 + 200);
    v15 = *(v2 + 208);
    if (v14 != v15)
    {
      v16 = 0;
      v17 = v14 + 215;
      v42 = *(v2 + 208);
      do
      {
        v18 = *(v2 + 40);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v17 - 55;
          if (*(v17 - 32) < 0)
          {
            v19 = *v19;
          }

          v20 = v2;
          asString();
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_str = &__str;
          }

          else
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          v22 = *v17;
          v23 = (v22 & 0x80u) != 0;
          if ((v22 & 0x80u) != 0)
          {
            v22 = *(v17 - 15);
          }

          v24 = (v17 - 23);
          if (v23)
          {
            v24 = *(v17 - 23);
          }

          if (v22)
          {
            v25 = v24;
          }

          else
          {
            v25 = "<invalid>";
          }

          v26 = asString();
          v27 = asString();
          ++v16;
          LODWORD(buf[0]) = 134219266;
          *(buf + 4) = v16;
          WORD2(buf[1]) = 2080;
          *(&buf[1] + 6) = v19;
          HIWORD(buf[2]) = 2080;
          buf[3] = p_str;
          *v58 = 2080;
          *&v58[2] = v25;
          *&v58[10] = 2080;
          *&v58[12] = v26;
          *&v58[20] = 2080;
          *&v58[22] = v27;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I a%zu: uuid:%s label:%s personality:%s data_preferred:%s voice_preferred:%s", buf, 0x3Eu);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v2 = v20;
          v15 = v42;
        }

        v28 = v17 + 9;
        v17 += 224;
      }

      while (v28 != v15);
    }

    v29 = *(v2 + 224);
    v30 = *(v2 + 232);
    if (v29 != v30)
    {
      v31 = 0;
      v32 = v29 + 215;
      do
      {
        v33 = *(v2 + 40);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = v32 - 55;
          if (*(v32 - 32) < 0)
          {
            v34 = *v34;
          }

          asString();
          v35 = &__str;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v35 = __str.__r_.__value_.__r.__words[0];
          }

          v36 = *v32;
          v37 = (v36 & 0x80u) != 0;
          if ((v36 & 0x80u) != 0)
          {
            v36 = *(v32 - 15);
          }

          v38 = (v32 - 23);
          if (v37)
          {
            v38 = *(v32 - 23);
          }

          ++v31;
          v8 = v36 == 0;
          v39 = "<invalid>";
          if (!v8)
          {
            v39 = v38;
          }

          LODWORD(buf[0]) = 134218754;
          *(buf + 4) = v31;
          WORD2(buf[1]) = 2080;
          *(&buf[1] + 6) = v34;
          HIWORD(buf[2]) = 2080;
          buf[3] = v35;
          *v58 = 2080;
          *&v58[2] = v39;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I x%zu: uuid:%s label:%s personality:%s", buf, 0x2Au);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        v40 = v32 + 9;
        v32 += 224;
      }

      while (v40 != v30);
    }
  }

  buf[0] = &v54;
  sub_1001A8E64(buf);
  sub_101456FBC(&v44);
  return sub_1000049E0(&v43);
}

void sub_101456F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, char *a47, char a48)
{
  a47 = &a44;
  sub_1001A8E64(&a47);
  sub_101456FBC(&a15);
  sub_1000049E0(&a14);
  _Unwind_Resume(a1);
}

uint64_t *sub_101456FBC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1000DD0AC(v1 + 80, *(v1 + 88));
    v2 = (v1 + 56);
    sub_1001A8E64(&v2);
    v2 = (v1 + 32);
    sub_1001A8E64(&v2);
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_101457050(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a1[2];
  v9 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v8 - *a1) >> 5) < a4)
  {
    if (v9)
    {
      v10 = a1[1];
      v11 = v9;
      if (v10 != v9)
      {
        do
        {
          v10 = sub_101293424(v10 - 224);
        }

        while (v10 != v9);
        v11 = *a1;
      }

      a1[1] = v9;
      operator delete(v11);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x124924924924924)
    {
      v12 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 5);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x92492492492492)
      {
        v14 = 0x124924924924924;
      }

      else
      {
        v14 = v13;
      }

      sub_101456754(a1, v14);
    }

    sub_1000CE3D4();
  }

  v15 = a1[1] - v9;
  if (0x6DB6DB6DB6DB6DB7 * (v15 >> 5) >= a4)
  {
    v17 = sub_1014571E8(a2, a3, v9);
      ;
    }

    a1[1] = v17;
  }

  else
  {
    sub_1014571E8(a2, a2 + v15, v9);
    result = sub_1014567A8(a2 + v15, a3, a1[1]);
    a1[1] = result;
  }

  return result;
}

uint64_t sub_1014571E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 = *v5;
      std::string::operator=((a3 + 8), (v5 + 8));
      std::string::operator=((a3 + 32), (v5 + 32));
      std::string::operator=((a3 + 56), (v5 + 56));
      *(a3 + 80) = *(v5 + 80);
      std::string::operator=((a3 + 88), (v5 + 88));
      std::string::operator=((a3 + 112), (v5 + 112));
      std::string::operator=((a3 + 136), (v5 + 136));
      std::string::operator=((a3 + 160), (v5 + 160));
      *(a3 + 184) = *(v5 + 184);
      std::string::operator=((a3 + 192), (v5 + 192));
      *(a3 + 216) = *(v5 + 216);
      a3 += 224;
      v5 += 224;
    }

    while (v5 != a2);
  }

  return a3;
}

void *sub_1014572B4(void *a1)
{
  *a1 = off_101F3D260;
  v2 = a1[11];
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

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);
  return a1;
}

void sub_10145732C(void *a1)
{
  sub_1014572B4(a1);

  operator delete();
}

void sub_10145742C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
    if (!v10)
    {
LABEL_3:
      if (v11)
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  else if (!v10)
  {
    goto LABEL_3;
  }

  sub_100004A34(v10);
  if (v11)
  {
LABEL_4:
    operator delete();
  }

LABEL_5:
  _Unwind_Resume(exception_object);
}

uint64_t PowerObserver::PowerObserver(uint64_t a1, void *a2, NSObject **a3)
{
  v6 = kCtLoggingSystemName;
  LogGroupName = sGetLogGroupName();
  ctu::OsLogContext::OsLogContext(&v10, v6, LogGroupName);
  sub_101457534((a1 + 8), a3, &v10);
  ctu::OsLogContext::~OsLogContext(&v10);
  *a1 = off_101F3D260;
  v8 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return a1;
}

void *sub_101457534(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_10145759C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

void PowerObserver::bootstrap(PowerObserver *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    sub_100013CC4();
  }

  v5 = v4;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v4);
  ctu::power::manager::get(v6);
  v7 = v22;
  v22 = 0uLL;
  v8 = *(this + 9);
  *(this + 4) = v7;
  if (!v8)
  {
    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  sub_100004A34(v8);
  if (*(&v22 + 1))
  {
    sub_100004A34(*(&v22 + 1));
  }

  if (!*(this + 8))
  {
LABEL_9:
    __TUAssertTrigger("fManager");
  }

LABEL_10:
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = sub_10007F528;
  aBlock[3] = &unk_101F3D270;
  aBlock[4] = v3;
  v21 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v9 = _Block_copy(aBlock);
  v10 = *(this + 3);
  *&v22 = 1;
  *(&v22 + 1) = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  if (v9)
  {
    v11 = _Block_copy(v9);
    v23 = v11;
    *&v24 = 21571;
    HIBYTE(v25) = 2;
    _Block_release(v9);
  }

  else
  {
    v11 = 0;
    v23 = 0uLL;
    *&v24 = 21571;
    HIBYTE(v25) = 2;
  }

  v16[0] = 1;
  v16[1] = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  if (v11)
  {
    v12 = _Block_copy(v11);
  }

  else
  {
    v12 = 0;
  }

  v16[2] = v12;
  v16[3] = 0;
  v17 = v24;
  v18 = v25;
  ctu::power::manager::registerListener();
  v13 = *buf;
  memset(buf, 0, sizeof(buf));
  v14 = *(this + 11);
  *(this + 5) = v13;
  if (v14)
  {
    sub_100004A34(v14);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  sub_1014579A8(v16);
  if (!*(this + 10))
  {
    __TUAssertTrigger("fListener");
  }

  v15 = *(this + 5);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I PowerObserver bootstrap", buf, 2u);
  }

  sub_1014579A8(&v22);
  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_101457844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, ...)
{
  va_start(va, a24);
  sub_1014579A8(va);
  if (a24)
  {
    std::__shared_weak_count::__release_weak(a24);
  }

  std::__shared_weak_count::__release_weak(v24);
  _Unwind_Resume(a1);
}

uint64_t sub_101457898(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1014578B4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void PowerObserver::start(PowerObserver *this)
{
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I PowerObserver start", v2, 2u);
  }
}

void PowerObserver::shutdown(PowerObserver *this)
{
  v2 = *(this + 11);
  *(this + 10) = 0;
  *(this + 11) = 0;
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 9);
  *(this + 8) = 0;
  *(this + 9) = 0;
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I PowerObserver shutdown", v5, 2u);
  }
}

uint64_t sub_1014579A8(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    dispatch_release(v4);
  }

  return a1;
}

void sub_101457AD4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_101457BA8);
  __cxa_rethrow();
}

void sub_101457B14(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101457B68(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101457BA8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_101457BF4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3D3A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_101457C48(void *a1)
{
  *a1 = off_101F3D3F8;
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_101457CA0(void *a1)
{
  *a1 = off_101F3D3F8;
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void *sub_101457D9C(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101F3D3F8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101457DF4(void *a1)
{
  sub_100861FC0(a1 + 8);

  operator delete(a1);
}

void sub_101457E30(uint64_t a1, char *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *a2;
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      if (*(a1 + 8))
      {
        **(a1 + 24) = v4;
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_101457E90(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101457EDC(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  operator new();
}

void sub_101457F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v5 = [CTEmergencyMode convertFromEmergencyMode:a2];
  [v5 setIsEmergencySetup:1];
  v4 = *(a1 + 8);
  v7[0] = off_101F3D538;
  v7[1] = &v6;
  v7[2] = &v5;
  v7[3] = v7;
  sub_100125DF8(v4, v7);
  sub_10002B210(v7);
}

void sub_10145802C(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002B210(va);

  _Unwind_Resume(a1);
}

void sub_101458058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v5 = [CTEmergencyMode convertFromEmergencyMode:a2];
  [v5 setIsEmergencySetup:0];
  v4 = *(a1 + 8);
  v7[0] = off_101F3D5B8;
  v7[1] = &v6;
  v7[2] = &v5;
  v7[3] = v7;
  sub_100125DF8(v4, v7);
  sub_10002B210(v7);
}

void sub_10145811C(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002B210(va);

  _Unwind_Resume(a1);
}

void sub_101458148(CTXPCEmergencyNotificationInterface *this)
{
  *this = off_101F3D478;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  CTXPCEmergencyNotificationInterface::~CTXPCEmergencyNotificationInterface(this);
}

void sub_1014581A4(CTXPCEmergencyNotificationInterface *this)
{
  *this = off_101F3D478;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  CTXPCEmergencyNotificationInterface::~CTXPCEmergencyNotificationInterface(this);

  operator delete();
}

void sub_10145827C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014582B8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014582F0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_101458320(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014583D4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3D538;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_101458404(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder cfUuid:**(a1 + 8)];
  [v4 emergencyModeChanged:v3 mode:**(a1 + 16)];
}

uint64_t sub_1014584A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101458560(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3D5B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_101458590(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder cfUuid:**(a1 + 8)];
  [v4 emergencyModeChanged:v3 mode:**(a1 + 16)];
}

uint64_t sub_10145862C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_101458678(void *a1, void *a2)
{
  ctu::OsLogContext::OsLogContext(&v6, kCtLoggingSystemName, "wfmgr");
  sub_10145872C(a1 + 1, "WiFiManager", QOS_CLASS_UTILITY, &v6);
  ctu::OsLogContext::~OsLogContext(&v6);
  *a1 = &off_101F3D638;
  v4 = a2[1];
  a1[6] = *a2;
  a1[7] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void *sub_10145872C(void *a1, const char *a2, dispatch_qos_class_t a3, const OsLogContext *a4)
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

void sub_101458794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  ctu::OsLogLogger::~OsLogLogger(&object);
  sub_1000C0544(v10);
  _Unwind_Resume(a1);
}

WiFiManagerInterface *sub_1014587CC(WiFiManagerInterface *this)
{
  *this = &off_101F3D638;
  v2 = *(this + 7);
  if (v2)
  {
    sub_100004A34(v2);
  }

  WiFiManagerInterface::~WiFiManagerInterface(this);
  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
  return this;
}

void sub_101458834(WiFiManagerInterface *a1)
{
  sub_1014587CC(a1);

  operator delete();
}

void sub_101458874(uint64_t a1, NSObject **a2)
{
  v3 = *a2;
  group = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  (*(*a1 + 72))(a1, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void sub_1014588FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void sub_101458920(uint64_t a1, int a2, ServiceStage *this)
{
  if (!a2)
  {
    ServiceStage::holdOffStage(&group, this);
    (*(*a1 + 80))(a1, &group);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }
  }
}

void sub_1014589A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014589D4(void *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_101FCAA90, memory_order_acquire) & 1) == 0)
  {
    v2 = a1;
    v3 = __cxa_guard_acquire(&qword_101FCAA90);
    a1 = v2;
    if (v3)
    {
      __cxa_atexit(sub_1010D9714, &qword_101FCAA98, &_mh_execute_header);
      __cxa_guard_release(&qword_101FCAA90);
      a1 = v2;
    }
  }

  v1 = unk_101FCAAA0;
  *a1 = qword_101FCAA98;
  a1[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_101458AFC(uint64_t result@<X0>, std::string *a2@<X8>)
{
  v3 = *(result + 47);
  if (v3 < 0)
  {
    v3 = *(result + 32);
  }

  if (v3)
  {
    memset(&v100, 0, sizeof(v100));
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    *v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    sub_10081E64C(&v80, (result + 24), 8);
    __dst = 0uLL;
    v99 = 0;
    v4 = 1;
    v5 = a2->__r_.__value_.__s.__data_[0];
    v6 = a2[1].__r_.__value_.__s.__data_[0];
    while (1)
    {
      while (1)
      {
        std::ios_base::getloc((&v80 + *(v80 - 24)));
        v7 = std::locale::use_facet(v101, &std::ctype<char>::id);
        v8 = (v7->__vftable[2].~facet_0)(v7, 10);
        std::locale::~locale(v101);
        v9 = sub_10081E7D0(&v80, &__dst, v8);
        if ((*(v9 + *(*v9 - 24) + 32) & 5) != 0)
        {
          v73 = a2;
          *a2 = v100;
          memset(&v100, 0, sizeof(v100));
          LOBYTE(v6) = 1;
          goto LABEL_110;
        }

        memset(&v97, 0, sizeof(v97));
        std::ios_base::getloc((&v80 + *(v80 - 24)));
        v10 = std::locale::use_facet(v101, &std::ctype<char>::id);
        v11 = (v10->__vftable[2].~facet_0)(v10, 10);
        std::locale::~locale(v101);
        v12 = sub_10081E7D0(&v80, &v97, v11);
        if ((*(v12 + *(*v12 - 24) + 32) & 5) == 0)
        {
          break;
        }

        v6 = 0;
        v5 = 0;
        v13 = 0;
        if ((*(&v97.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          goto LABEL_30;
        }

LABEL_8:
        if (!v13)
        {
          goto LABEL_109;
        }
      }

      v14 = (v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v97 : v97.__r_.__value_.__r.__words[0];
      v15 = (v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v97.__r_.__value_.__r.__words[2]) : v97.__r_.__value_.__l.__size_;
      v16 = (v14 + v15);
      v77 = v6;
      if (v15)
      {
        while (1)
        {
          v17 = v14->__r_.__value_.__s.__data_[0];
          if (v17 < 0 ? __maskrune(v14->__r_.__value_.__s.__data_[0], 0x200uLL) : _DefaultRuneLocale.__runetype[v17] & 0x200)
          {
            break;
          }

          v14 = (v14 + 1);
          if (!--v15)
          {
            goto LABEL_22;
          }
        }

        v19 = v4;
        if (v15 == 1)
        {
          v16 = v14;
        }

        else
        {
          v31 = 1;
          v16 = v14;
          do
          {
            v32 = v14->__r_.__value_.__s.__data_[v31];
            if (v32 < 0)
            {
              v33 = __maskrune(v14->__r_.__value_.__s.__data_[v31], 0x200uLL);
            }

            else
            {
              v33 = _DefaultRuneLocale.__runetype[v32] & 0x200;
            }

            if (!v33)
            {
              v16->__r_.__value_.__s.__data_[0] = v14->__r_.__value_.__s.__data_[v31];
              v16 = (v16 + 1);
            }

            ++v31;
          }

          while (v15 != v31);
        }
      }

      else
      {
LABEL_22:
        v19 = v4;
      }

      v20 = &v97 + HIBYTE(v97.__r_.__value_.__r.__words[2]);
      if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v97;
      }

      else
      {
        v20 = (v97.__r_.__value_.__r.__words[0] + v97.__r_.__value_.__l.__size_);
        v21 = v97.__r_.__value_.__r.__words[0];
      }

      std::string::erase(&v97, v16 - v21, v20 - v16);
      memset(&__p, 0, sizeof(__p));
      std::ios_base::getloc((&v80 + *(v80 - 24)));
      v4 = v19;
      v22 = std::locale::use_facet(v101, &std::ctype<char>::id);
      v23 = (v22->__vftable[2].~facet_0)(v22, 10);
      std::locale::~locale(v101);
      v24 = sub_10081E7D0(&v80, &__p, v23);
      v25 = *(v24 + *(*v24 - 24) + 32) & 5;
      v13 = v25 == 0;
      if (v25)
      {
        break;
      }

      v76 = v5;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v28 = (p_p + size);
      if (size)
      {
        while (1)
        {
          v29 = p_p->__r_.__value_.__s.__data_[0];
          if (v29 < 0 ? __maskrune(p_p->__r_.__value_.__s.__data_[0], 0x200uLL) : _DefaultRuneLocale.__runetype[v29] & 0x200)
          {
            break;
          }

          p_p = (p_p + 1);
          if (!--size)
          {
            goto LABEL_65;
          }
        }

        if (size == 1)
        {
          v28 = p_p;
        }

        else
        {
          v34 = 1;
          v28 = p_p;
          do
          {
            v35 = p_p->__r_.__value_.__s.__data_[v34];
            if (v35 < 0)
            {
              v36 = __maskrune(p_p->__r_.__value_.__s.__data_[v34], 0x200uLL);
            }

            else
            {
              v36 = _DefaultRuneLocale.__runetype[v35] & 0x200;
            }

            if (!v36)
            {
              v28->__r_.__value_.__s.__data_[0] = p_p->__r_.__value_.__s.__data_[v34];
              v28 = (v28 + 1);
            }

            ++v34;
          }

          while (size != v34);
        }
      }

LABEL_65:
      v37 = &__p + HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = &__p;
      }

      else
      {
        v37 = (__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_);
        v38 = __p.__r_.__value_.__r.__words[0];
      }

      std::string::erase(&__p, v28 - v38, v37 - v28);
      v39 = v100.__r_.__value_.__l.__size_;
      v5 = v76;
      v40 = v19;
      if (v100.__r_.__value_.__l.__size_ >= v100.__r_.__value_.__r.__words[2])
      {
        v44 = 0xCCCCCCCCCCCCCCCDLL * ((v100.__r_.__value_.__l.__size_ - v100.__r_.__value_.__r.__words[0]) >> 4);
        v45 = v44 + 1;
        v6 = v77;
        if (v44 + 1 > 0x333333333333333)
        {
          sub_1000CE3D4();
        }

        if (0x999999999999999ALL * ((v100.__r_.__value_.__r.__words[2] - v100.__r_.__value_.__r.__words[0]) >> 4) > v45)
        {
          v45 = 0x999999999999999ALL * ((v100.__r_.__value_.__r.__words[2] - v100.__r_.__value_.__r.__words[0]) >> 4);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v100.__r_.__value_.__r.__words[2] - v100.__r_.__value_.__r.__words[0]) >> 4) >= 0x199999999999999)
        {
          v46 = 0x333333333333333;
        }

        else
        {
          v46 = v45;
        }

        v101[4].__locale_ = &v100;
        if (v46)
        {
          sub_101459820(v46);
        }

        v47 = 16 * ((v100.__r_.__value_.__l.__size_ - v100.__r_.__value_.__r.__words[0]) >> 4);
        v101[0].__locale_ = 0;
        v101[1].__locale_ = v47;
        v101[3].__locale_ = 0;
        *v47 = v40;
        v48 = __dst;
        *(v47 + 24) = v99;
        *(v47 + 8) = v48;
        v99 = 0;
        __dst = 0uLL;
        v49 = *&v97.__r_.__value_.__l.__data_;
        *(v47 + 48) = *(&v97.__r_.__value_.__l + 2);
        *(v47 + 32) = v49;
        memset(&v97, 0, sizeof(v97));
        v50 = *&__p.__r_.__value_.__l.__data_;
        *(v47 + 72) = *(&__p.__r_.__value_.__l + 2);
        *(v47 + 56) = v50;
        memset(&__p, 0, sizeof(__p));
        v101[2].__locale_ = (80 * v44 + 80);
        v51 = 80 * v44 + v100.__r_.__value_.__r.__words[0] - v100.__r_.__value_.__l.__size_;
        sub_101459878(v100.__r_.__value_.__l.__data_, v100.__r_.__value_.__l.__size_, v51);
        v52 = v100.__r_.__value_.__r.__words[0];
        v53 = v100.__r_.__value_.__r.__words[2];
        v100.__r_.__value_.__r.__words[0] = v51;
        locale = v101[2].__locale_;
        *&v100.__r_.__value_.__r.__words[1] = *&v101[2].__locale_;
        v101[2].__locale_ = v52;
        v101[3].__locale_ = v53;
        v101[0].__locale_ = v52;
        v101[1].__locale_ = v52;
        sub_1014599DC(v101);
        v41 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v43 = locale;
      }

      else
      {
        v41 = 0;
        *v100.__r_.__value_.__l.__size_ = v19;
        v42 = v99;
        *(v39 + 8) = __dst;
        *(v39 + 24) = v42;
        *(v39 + 48) = *(&v97.__r_.__value_.__l + 2);
        *(v39 + 72) = *(&__p.__r_.__value_.__l + 2);
        v99 = 0;
        __dst = 0uLL;
        *(v39 + 32) = *&v97.__r_.__value_.__l.__data_;
        memset(&v97, 0, sizeof(v97));
        *(v39 + 56) = *&__p.__r_.__value_.__l.__data_;
        memset(&__p, 0, sizeof(__p));
        v43 = v39 + 80;
        v6 = v77;
      }

      v100.__r_.__value_.__l.__size_ = v43;
      v4 = (v40 + 1);
      if (v41 < 0)
      {
        goto LABEL_28;
      }

LABEL_29:
      if ((*(&v97.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_8;
      }

LABEL_30:
      operator delete(v97.__r_.__value_.__l.__data_);
      if (!v13)
      {
LABEL_109:
        v73 = a2;
        a2->__r_.__value_.__s.__data_[0] = v5;
LABEL_110:
        v73[1].__r_.__value_.__s.__data_[0] = v6;
        if (SHIBYTE(v99) < 0)
        {
          operator delete(__dst);
        }

        if (SBYTE7(v86) < 0)
        {
          operator delete(v85[0]);
        }

        std::locale::~locale(&v81 + 1);
        std::istream::~istream();
        std::ios::~ios();
        v74 = &v100;
LABEL_118:
        *&v80 = v74;
        sub_101459A2C(&v80);
        return;
      }
    }

    v6 = 0;
    v5 = 0;
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_29;
    }

LABEL_28:
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_29;
  }

  v54 = *(result + 8);
  if (v54)
  {
    v55 = 0uLL;
    memset(v101, 0, 24);
    v56 = *(v54 + 8);
    if (v56 == *(v54 + 16))
    {
      v72 = 0;
    }

    else
    {
      v57 = a2;
      do
      {
        std::to_string(&v100, *v56);
        if (v56[31] < 0)
        {
          sub_100005F2C(&__dst, *(v56 + 1), *(v56 + 2));
        }

        else
        {
          v58 = *(v56 + 8);
          v99 = *(v56 + 3);
          __dst = v58;
        }

        if (v56[55] < 0)
        {
          sub_100005F2C(&v97, *(v56 + 4), *(v56 + 5));
        }

        else
        {
          v97 = *(v56 + 32);
        }

        v59 = v101[1].__locale_;
        if (v101[1].__locale_ >= v101[2].__locale_)
        {
          v62 = 0xCCCCCCCCCCCCCCCDLL * ((v101[1].__locale_ - v101[0].__locale_) >> 4);
          v63 = v62 + 1;
          if (v62 + 1 > 0x333333333333333)
          {
            sub_1000CE3D4();
          }

          if (0x999999999999999ALL * ((v101[2].__locale_ - v101[0].__locale_) >> 4) > v63)
          {
            v63 = 0x999999999999999ALL * ((v101[2].__locale_ - v101[0].__locale_) >> 4);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v101[2].__locale_ - v101[0].__locale_) >> 4) >= 0x199999999999999)
          {
            v64 = 0x333333333333333;
          }

          else
          {
            v64 = v63;
          }

          *&v82 = v101;
          if (v64)
          {
            sub_101459820(v64);
          }

          v65 = 16 * ((v101[1].__locale_ - v101[0].__locale_) >> 4);
          *&v80 = 0;
          *(&v80 + 1) = v65;
          *(&v81 + 1) = 0;
          *v65 = *v56;
          v66 = *&v100.__r_.__value_.__l.__data_;
          *(v65 + 24) = *(&v100.__r_.__value_.__l + 2);
          *(v65 + 8) = v66;
          memset(&v100, 0, sizeof(v100));
          v67 = __dst;
          *(v65 + 48) = v99;
          *(v65 + 32) = v67;
          v99 = 0;
          __dst = 0uLL;
          v68 = *&v97.__r_.__value_.__l.__data_;
          *(v65 + 72) = *(&v97.__r_.__value_.__l + 2);
          *(v65 + 56) = v68;
          memset(&v97, 0, sizeof(v97));
          *&v81 = 80 * v62 + 80;
          v69 = (80 * v62 + v101[0].__locale_ - v101[1].__locale_);
          sub_101459878(v101[0].__locale_, v101[1].__locale_, v65 + v101[0].__locale_ - v101[1].__locale_);
          v70 = v101[0].__locale_;
          v71 = v101[2].__locale_;
          v101[0].__locale_ = v69;
          v78 = v81;
          *&v101[1].__locale_ = v81;
          *&v81 = v70;
          *(&v81 + 1) = v71;
          *&v80 = v70;
          *(&v80 + 1) = v70;
          sub_1014599DC(&v80);
          v101[1].__locale_ = v78;
          if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v97.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          *v101[1].__locale_ = *v56;
          v60 = v100.__r_.__value_.__r.__words[2];
          *(v59 + 8) = *&v100.__r_.__value_.__l.__data_;
          *(v59 + 3) = v60;
          memset(&v100, 0, sizeof(v100));
          *(v59 + 2) = __dst;
          *(v59 + 6) = v99;
          __dst = 0uLL;
          v99 = 0;
          v61 = *&v97.__r_.__value_.__l.__data_;
          *(v59 + 9) = *(&v97.__r_.__value_.__l + 2);
          *(v59 + 56) = v61;
          v101[1].__locale_ = (v59 + 80);
        }

        if (SHIBYTE(v99) < 0)
        {
          operator delete(__dst);
        }

        if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v100.__r_.__value_.__l.__data_);
        }

        v56 += 56;
      }

      while (v56 != *(v54 + 16));
      v55 = *&v101[0].__locale_;
      v72 = v101[2].__locale_;
      a2 = v57;
    }

    *&a2->__r_.__value_.__l.__data_ = v55;
    a2->__r_.__value_.__r.__words[2] = v72;
    memset(v101, 0, 24);
    a2[1].__r_.__value_.__s.__data_[0] = 1;
    v74 = v101;
    goto LABEL_118;
  }

  a2->__r_.__value_.__s.__data_[0] = 0;
  a2[1].__r_.__value_.__s.__data_[0] = 0;
}

void sub_101459570(_Unwind_Exception *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8, int a9, _BYTE *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  *a10 = a15;
  a10[24] = v35;
  if (SHIBYTE(a23) < 0)
  {
    operator delete(a21);
  }

  if (*(v36 - 217) < 0)
  {
    operator delete(*(v36 - 240));
  }

  if (*(v36 - 185) < 0)
  {
    operator delete(*(v36 - 208));
  }

  std::ios::~ios();
  a24 = v36 - 176;
  sub_101459A2C(&a24);
  _Unwind_Resume(a1);
}

uint64_t sub_101459748(uint64_t a1)
{
  *a1 = off_101F3D748;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1014597A4(uint64_t a1)
{
  *a1 = off_101F3D748;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_101459820(unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  sub_100013D10();
}

void sub_101459878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = 0;
    do
    {
      v7 = v5 + v6;
      *(a3 + v6) = *(v5 + v6);
      v8 = (a3 + v6 + 8);
      if (*(v5 + v6 + 31) < 0)
      {
        sub_100005F2C(v8, *(v7 + 8), *(v7 + 16));
      }

      else
      {
        v9 = *(v7 + 8);
        *(a3 + v6 + 24) = *(v7 + 24);
        *v8 = v9;
      }

      v10 = a3 + v6;
      v11 = v5 + v6;
      if (*(v7 + 55) < 0)
      {
        sub_100005F2C((v10 + 32), *(v11 + 32), *(v11 + 40));
      }

      else
      {
        v12 = *(v11 + 32);
        *(v10 + 48) = *(v11 + 48);
        *(v10 + 32) = v12;
      }

      v13 = a3 + v6;
      v14 = v5 + v6;
      if (*(v7 + 79) < 0)
      {
        sub_100005F2C((v13 + 56), *(v14 + 56), *(v14 + 64));
      }

      else
      {
        v15 = *(v14 + 56);
        *(v13 + 72) = *(v14 + 72);
        *(v13 + 56) = v15;
      }

      v6 += 80;
    }

    while (v7 + 80 != a2);
    do
    {
      sub_100F663E0(v5);
      v5 += 80;
    }

    while (v5 != a2);
  }
}

void sub_101459974(_Unwind_Exception *exception_object)
{
  if (*(v1 + v2 + 31) < 0)
  {
    operator delete(*(v1 + v2 + 8));
  }

  if (v2)
  {
    v4 = v1 + v2 - 80;
    v5 = -v2;
    do
    {
      sub_100F663E0(v4);
      v4 -= 80;
      v5 += 80;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014599DC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    sub_100F663E0(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_101459A2C(void ***a1)
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
        v4 -= 80;
        sub_100F663E0(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_101459B18(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_101459B54(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101459B8C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_101459BBC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_101459BFC(uint64_t *a3@<X8>)
{
  v5[0] = off_101F3D9A0;
  v5[3] = v5;
  inactive = dispatch_workloop_create_inactive("EmergencyNumbersController");
  sub_1001FA58C(v5, inactive);
  dispatch_activate(inactive);
  sub_1001FAD0C(v5);
  *a3 = 0;
  a3[1] = 0;
  operator new();
}

void sub_10145A3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_1000A8744(va);
  operator delete();
}

void sub_10145A3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a17)
  {
    (*(*a17 + 8))(a17, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a22)
  {
    sub_100004A34(a22);
  }

  sub_100004A34(v23);
  if (v22)
  {
    JUMPOUT(0x10145A674);
  }

  JUMPOUT(0x10145A67CLL);
}

void sub_10145A430()
{
  sub_100004A34(v1);
  if (v0)
  {
    JUMPOUT(0x10145A674);
  }

  JUMPOUT(0x10145A67CLL);
}

void sub_10145A438(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, std::__shared_weak_count *a11, dispatch_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  (*(*v18 + 8))(v18);
  JUMPOUT(0x10145A668);
}

void sub_10145A474(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    dispatch_barrier_async_f(v2[4], v2, sub_10145BF64);
    __cxa_rethrow();
  }

  JUMPOUT(0x10145A67CLL);
}

void sub_10145A4B8(void *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  JUMPOUT(0x10145A67CLL);
}

void sub_10145A4C8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, dispatch_object_t a10, uint64_t a11, dispatch_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a10)
  {
    dispatch_release(a10);
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  v27 = *(v26 + 72);
  if (v27)
  {
    sub_100004A34(v27);
  }

  v28 = *(v26 + 56);
  *(v26 + 56) = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28, a2, a3, a4, a5, a6, a7, a8);
  }

  JUMPOUT(0x10145A578);
}

void sub_10145A58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v17 + 2);
  ctu::OsLogContext::~OsLogContext(va1);
  if (v16)
  {
    dispatch_release(v16);
  }

  EmergencyNumbersModelDelegate::~EmergencyNumbersModelDelegate(v18);
  EmergencyNumbersInterface::~EmergencyNumbersInterface(v17);
  if (v16)
  {
    dispatch_release(v16);
  }

  operator delete();
}

void sub_10145A614(_Unwind_Exception *a1)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(a1);
}

void sub_10145A620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1001FAD0C(va);
  JUMPOUT(0x10145A67CLL);
}

void sub_10145A638()
{
  if (v2)
  {
    JUMPOUT(0x10145A648);
  }

  sub_100004A34(v1);
  if (v0)
  {
    JUMPOUT(0x10145A674);
  }

  JUMPOUT(0x10145A67CLL);
}

void sub_10145A684(uint64_t a1)
{
  *a1 = off_101F3D800;
  v2 = (a1 + 8);
  *(a1 + 8) = off_101F3D8A0;
  sub_1001A90CC(a1 + 184, *(a1 + 192));
  sub_100AE7E40(a1 + 152);
  v3 = *(a1 + 144);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_1001A904C(a1 + 96, *(a1 + 104));
  v5 = *(a1 + 88);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 48));
  sub_1000C0544((a1 + 16));
  EmergencyNumbersModelDelegate::~EmergencyNumbersModelDelegate(v2);

  EmergencyNumbersInterface::~EmergencyNumbersInterface(a1);
}

void sub_10145A798(uint64_t a1)
{
  sub_10145A684(a1);

  operator delete();
}

void sub_10145A7D0(uint64_t a1)
{
  sub_10145A684(a1 - 8);

  operator delete();
}

void sub_10145A80C(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = (a1 + 104);
  if (v1 != (a1 + 104))
  {
    while (1)
    {
      v21 = 0;
      v22 = 0;
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
      if (!v10)
      {
        break;
      }

      v12 = v10[3];
      v11 = v10[4];
      if (!v11)
      {
        goto LABEL_9;
      }

      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
LABEL_10:
      (**v12)(&v21, v12, (v1 + 4));
      if ((v13 & 1) == 0)
      {
        sub_100004A34(v11);
      }

      if (v21)
      {
        v14 = *(*(**(a1 + 56) + 16))(*(a1 + 56), *(v21 + 52));
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = asString();
          v16 = CSIBOOLAsString(*(a1 + 120) != 0);
          v17 = CSIBOOLAsString(*(a1 + 136) != 0);
          *buf = 136315650;
          *&buf[4] = v15;
          v24 = 2080;
          v25 = v16;
          v26 = 2080;
          v27 = v17;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I VoWiFiProvState config %s, fSimModel: %s, fIcloudModel: %s", buf, 0x20u);
        }
      }

      if (v22)
      {
        sub_100004A34(v22);
      }

      v18 = v1[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v1[2];
          v20 = *v19 == v1;
          v1 = v19;
        }

        while (!v20);
      }

      v1 = v19;
      if (v19 == v2)
      {
        return;
      }
    }

    v12 = 0;
LABEL_9:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    goto LABEL_10;
  }
}

void sub_10145AA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10145AAB8(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10145AC84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_group_t group, dispatch_group_t a10)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void sub_10145ACCC(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10145AE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_group_t group, dispatch_group_t a10)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10145AEE0(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  result = *(a1 + 136);
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

void sub_10145AF70(uint64_t a1, uint64_t a2, __int128 **a3, uint64_t a4)
{
  v8 = *(a1 + 120);
  if (v8)
  {
    memset(v11, 0, sizeof(v11));
    sub_10004EFD0(v11, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
    (*(*v8 + 40))(v8, a2, v11, a4);
    v12 = v11;
    sub_1000087B4(&v12);
  }

  v9 = *(a1 + 136);
  if (v9)
  {
    memset(v10, 0, sizeof(v10));
    sub_10004EFD0(v10, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
    (*(*v9 + 40))(v9, a2, v10, a4);
    v12 = v10;
    sub_1000087B4(&v12);
  }
}

void sub_10145B09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1000087B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10145B0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 120);
  if (v4)
  {
    (*(*v4 + 48))(v4, a2, a3);
  }

  result = *(a1 + 136);
  if (result)
  {
    v6 = *(*result + 48);

    return v6();
  }

  return result;
}

void sub_10145B174(uint64_t a1, uint64_t a2, __int128 **a3, uint64_t a4)
{
  v8 = *(a1 + 120);
  if (v8)
  {
    memset(v11, 0, sizeof(v11));
    sub_10004EFD0(v11, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
    (*(*v8 + 56))(v8, a2, v11, a4);
    v12 = v11;
    sub_1000087B4(&v12);
  }

  v9 = *(a1 + 136);
  if (v9)
  {
    memset(v10, 0, sizeof(v10));
    sub_10004EFD0(v10, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
    (*(*v9 + 56))(v9, a2, v10, a4);
    v12 = v10;
    sub_1000087B4(&v12);
  }
}

void sub_10145B2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1000087B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10145B2C4(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    (*(*v2 + 64))(v2);
  }

  result = *(a1 + 136);
  if (result)
  {
    v4 = *(*result + 64);

    return v4();
  }

  return result;
}

uint64_t sub_10145B354(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    (*(*v2 + 80))(v2);
  }

  result = *(a1 + 136);
  if (result)
  {
    v4 = *(*result + 80);

    return v4();
  }

  return result;
}

void sub_10145B3E4(uint64_t a1@<X0>, CSIPhoneNumber *a2@<X8>)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    (*(*v2 + 88))();
  }

  else
  {
    CSIPhoneNumber::CSIPhoneNumber(a2);
  }
}

void sub_10145B418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 120);
  if (v6)
  {
    sub_1000AE428(v19, a2);
    (*(*v6 + 96))(v6, v19, a3);
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

    if (v21 < 0)
    {
      operator delete(v20);
    }
  }

  v7 = *(a1 + 136);
  if (v7)
  {
    sub_1000AE428(&v8, a2);
    (*(*v7 + 96))(v7, &v8, a3);
    if (v18 < 0)
    {
      operator delete(v17);
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }

    if (v12 < 0)
    {
      operator delete(v11);
    }

    if (v10 < 0)
    {
      operator delete(v9);
    }
  }
}

void sub_10145B5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 120);
  if (v6)
  {
    sub_1000AE428(v19, a2);
    (*(*v6 + 104))(v6, v19, a3);
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

    if (v21 < 0)
    {
      operator delete(v20);
    }
  }

  v7 = *(a1 + 136);
  if (v7)
  {
    sub_1000AE428(&v8, a2);
    (*(*v7 + 104))(v7, &v8, a3);
    if (v18 < 0)
    {
      operator delete(v17);
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }

    if (v12 < 0)
    {
      operator delete(v11);
    }

    if (v10 < 0)
    {
      operator delete(v9);
    }
  }
}

void sub_10145B728(void *a1, uint64_t a2, unsigned int a3)
{
  v8 = a3;
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = &v8;
  if (!a1[5])
  {
    v5 = 1;
    goto LABEL_7;
  }

  if ((dispatch_workloop_is_current() & 1) == 0)
  {
    v5 = a1[5] == 0;
LABEL_7:
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10145CCA8;
    v12 = &unk_101F3DD10;
    v13 = a1 + 2;
    v14 = v7;
    v6 = a1[4];
    if (v5)
    {
      dispatch_sync(v6, &block);
    }

    else
    {
      dispatch_async_and_wait(v6, &block);
    }

    return;
  }

  block = 0;
  v10 = 0;
  sub_1000B1804(&block, a1);
  if (block)
  {
    (*(*block + 14))(block, a2, v8);
  }

  else
  {
    sub_1001A918C(a2, *(a2 + 8));
    *a2 = a2 + 8;
    *(a2 + 16) = 0;
    *(a2 + 8) = 0;
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_10145B864(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_10004F058(a1);
}

void sub_10145B87C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = a1;
  v11 = a2;
  v12 = a3;
  if (!a1[5])
  {
    v8 = 1;
    goto LABEL_7;
  }

  if ((dispatch_workloop_is_current() & 1) == 0)
  {
    v8 = a1[5] == 0;
LABEL_7:
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 0x40000000;
    v13[2] = sub_10145CD7C;
    v13[3] = &unk_101F3DD30;
    v13[4] = a1 + 2;
    v13[5] = &v10;
    v14 = v13;
    v9 = a1[4];
    *(a4 + 128) = 0uLL;
    *(a4 + 144) = 0uLL;
    *(a4 + 96) = 0uLL;
    *(a4 + 112) = 0uLL;
    *(a4 + 64) = 0uLL;
    *(a4 + 80) = 0uLL;
    *(a4 + 32) = 0uLL;
    *(a4 + 48) = 0uLL;
    *a4 = 0uLL;
    *(a4 + 16) = 0uLL;
    if (v8)
    {
      CSIPhoneNumber::CSIPhoneNumber(a4);
      block = _NSConcreteStackBlock;
      v16 = 0x40000000;
      v17 = sub_10145CE3C;
      v18 = &unk_101F3DD50;
      v19 = a4;
      v20 = &v14;
      dispatch_sync(v9, &block);
    }

    else
    {
      CSIPhoneNumber::CSIPhoneNumber(a4);
      block = _NSConcreteStackBlock;
      v16 = 0x40000000;
      v17 = sub_10145CFE4;
      v18 = &unk_101F3DD70;
      v19 = a4;
      v20 = &v14;
      dispatch_async_and_wait(v9, &block);
    }

    return;
  }

  block = 0;
  v16 = 0;
  sub_1000B1804(&block, a1);
  if (block)
  {
    (*(*block + 15))(block, a2, a3);
  }

  else
  {
    CSIPhoneNumber::CSIPhoneNumber(a4);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }
}

void sub_10145BA90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100004A34(a20);
  }

  sub_10004F058(a1);
}

void sub_10145BAB0(void *a1, char *a2, void *a3)
{
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  if (!a2)
  {
    a2 = "unknown";
  }

  sub_10000501C(v9, a2);
  if (SHIBYTE(v10) < 0)
  {
    sub_100005F2C(__p, v9[0], v9[1]);
  }

  else
  {
    *__p = *v9;
    v7 = v10;
  }

  sub_10145D18C(&v8, a3);
  v5 = a1[3];
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10145BC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10145BCAC(void *a1, uint64_t a2)
{
  v4 = a1;
  sub_1011D5E2C(&v5, a2);
  v3 = a1[3];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10145BDDC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10145BE80(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10145BED0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10145BF24(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10145BF64(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

void sub_10145BF90(ServiceManager::Service *this)
{
  *this = off_101F3DA80;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10145BFEC(ServiceManager::Service *this)
{
  *this = off_101F3DA80;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_10145C06C@<X0>(uint64_t *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10145C0B0(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  v4 = v3;
  sub_10145ACCC(v2, &v4);
}

void sub_10145C150(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10145C1A4(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group, this);
  sub_10145AAB8(v3, &group);
}

void sub_10145C1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void sub_10145C244(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping EmergencyNumbersController", buf, 2u);
  }

  Registry::createRestModuleOneTimeUseConnection(&v4, *(v1 + 64));
  ctu::RestModule::connect();
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_10000501C(__p, "/cc/props/vowifi_provisioning_state");
  *buf = off_101F3DB40;
  v9 = v1 + 96;
  v10 = v1;
  v11 = buf;
  ctu::RestModule::observeProperty();
  sub_1000062D4(buf);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  *buf = off_101F3DBC0;
  v9 = v1 + 80;
  v11 = buf;
  sub_100AEE6DC(buf, (v1 + 152));
  sub_100AE7E40(buf);
  v3 = *(v1 + 176);
  if (v3)
  {
    (*(*v3 + 48))(v3, v1 + 184);
  }

  sub_10000501C(__p, "/cc/events/dump_state");
  operator new();
}

void sub_10145C468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  sub_1000062D4(&a20);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

__n128 sub_10145C538(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3DB40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10145C568(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  v4 = v3 + 1;
  v5 = v3[1];
  v27 = *v3;
  v28 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v28;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v27 = &v28;
  }

  read_rest_value(v3, a2);
  v6 = *(a1 + 16);
  v7 = *(v6 + 96);
  if (v7 != (v6 + 104))
  {
    while (1)
    {
      v8 = sub_100007A6C(&v27, v7 + 32);
      v30 = 0;
      v31 = 0;
      ServiceMap = Registry::getServiceMap(*(v6 + 64));
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
      *buf = v11;
      v15 = sub_100009510(&v10[1].__m_.__sig, buf);
      if (!v15)
      {
        break;
      }

      v17 = v15[3];
      v16 = v15[4];
      if (!v16)
      {
        goto LABEL_12;
      }

      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v10);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
      v18 = 0;
LABEL_13:
      (**v17)(&v30, v17, (v7 + 32));
      if ((v18 & 1) == 0)
      {
        sub_100004A34(v16);
      }

      if (v30)
      {
        v19 = (*(**(v6 + 56) + 16))(*(v6 + 56), *(v30 + 52));
        if (&v28 != v8)
        {
          v20 = v19;
          if (!sub_1011D44D8((v8 + 7), (v7 + 56)))
          {
            v21 = *v20;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = asString();
              v23 = asString();
              *buf = 136315394;
              *&buf[4] = v22;
              v33 = 2080;
              v34 = v23;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I VoWiFiProvState changed from %s -> %s", buf, 0x16u);
            }
          }
        }
      }

      if (v31)
      {
        sub_100004A34(v31);
      }

      v24 = *(v7 + 1);
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = *(v7 + 2);
          v26 = *v25 == v7;
          v7 = v25;
        }

        while (!v26);
      }

      v7 = v25;
      if (v25 == (v6 + 104))
      {
        goto LABEL_28;
      }
    }

    v17 = 0;
LABEL_12:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    goto LABEL_13;
  }

LABEL_28:
  sub_1001A904C(&v27, v28);
}

uint64_t sub_10145C8A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10145C960(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F3DBC0;
  a2[1] = v2;
  return result;
}

void sub_10145C98C(uint64_t a1, const CSIPhoneNumber ***a2)
{
  v5 = 0;
  sub_100AEE294(a2, &v5);
  sub_10000501C(&__p, "/cc/props/emergency_numbers");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_10145CA30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_10145CA74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10145CB3C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3DC40;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10145CB74(void *a1)
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

uint64_t sub_10145CBBC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10145CC08(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  ctu::RestModule::disconnect((v2 + 80));
  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_10145CC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_10145CCA8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v5 = 0;
  v6 = 0;
  sub_1000B1804(&v5, v2);
  v3 = *(v1 + 8);
  if (v5)
  {
    (*(*v5 + 112))(v5, *(v1 + 8), **(v1 + 16));
  }

  else
  {
    sub_1001A918C(v3, *(v3 + 8));
    *v3 = v3 + 8;
    *(v3 + 16) = 0;
    *(v3 + 8) = 0;
  }

  v4 = v6;
  if (v6)
  {

    sub_100004A34(v4);
  }
}

void sub_10145CD64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10145CD7C(uint64_t a1@<X0>, CSIPhoneNumber *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  v6 = 0;
  v7 = 0;
  sub_1000B1804(&v6, v4);
  if (v6)
  {
    (*(*v6 + 120))(v6, *(v3 + 8), *(v3 + 12));
  }

  else
  {
    CSIPhoneNumber::CSIPhoneNumber(a2);
  }

  v5 = v7;
  if (v7)
  {

    sub_100004A34(v5);
  }
}

void sub_10145CE24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10145CE3C(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v12);
  v2 = *(a1 + 32);
  *v2 = v12;
  if (*(v2 + 31) < 0)
  {
    operator delete(*(v2 + 8));
  }

  v3 = v13;
  *(v2 + 24) = v14;
  *(v2 + 8) = v3;
  HIBYTE(v14) = 0;
  LOBYTE(v13) = 0;
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  v4 = v15;
  *(v2 + 48) = v16;
  *(v2 + 32) = v4;
  HIBYTE(v16) = 0;
  LOBYTE(v15) = 0;
  v5 = v18;
  *(v2 + 56) = v17;
  *(v2 + 60) = v5;
  if (*(v2 + 87) < 0)
  {
    operator delete(*(v2 + 64));
  }

  v6 = v19;
  *(v2 + 80) = v20;
  *(v2 + 64) = v6;
  HIBYTE(v20) = 0;
  LOBYTE(v19) = 0;
  v7 = v22;
  *(v2 + 88) = v21;
  *(v2 + 96) = v7;
  if (*(v2 + 127) < 0)
  {
    operator delete(*(v2 + 104));
  }

  v8 = __p;
  *(v2 + 120) = v24;
  *(v2 + 104) = v8;
  HIBYTE(v24) = 0;
  LOBYTE(__p) = 0;
  if (*(v2 + 151) < 0)
  {
    operator delete(*(v2 + 128));
    v10 = SHIBYTE(v24);
    v11 = v25;
    *(v2 + 144) = v26;
    *(v2 + 128) = v11;
    HIBYTE(v26) = 0;
    LOBYTE(v25) = 0;
    *(v2 + 152) = v27;
    if (v10 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v9 = v25;
    *(v2 + 144) = v26;
    *(v2 + 128) = v9;
    HIBYTE(v26) = 0;
    LOBYTE(v25) = 0;
    *(v2 + 152) = v27;
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13);
  }
}

void sub_10145CFE4(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v12);
  v2 = *(a1 + 32);
  *v2 = v12;
  if (*(v2 + 31) < 0)
  {
    operator delete(*(v2 + 8));
  }

  v3 = v13;
  *(v2 + 24) = v14;
  *(v2 + 8) = v3;
  HIBYTE(v14) = 0;
  LOBYTE(v13) = 0;
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  v4 = v15;
  *(v2 + 48) = v16;
  *(v2 + 32) = v4;
  HIBYTE(v16) = 0;
  LOBYTE(v15) = 0;
  v5 = v18;
  *(v2 + 56) = v17;
  *(v2 + 60) = v5;
  if (*(v2 + 87) < 0)
  {
    operator delete(*(v2 + 64));
  }

  v6 = v19;
  *(v2 + 80) = v20;
  *(v2 + 64) = v6;
  HIBYTE(v20) = 0;
  LOBYTE(v19) = 0;
  v7 = v22;
  *(v2 + 88) = v21;
  *(v2 + 96) = v7;
  if (*(v2 + 127) < 0)
  {
    operator delete(*(v2 + 104));
  }

  v8 = __p;
  *(v2 + 120) = v24;
  *(v2 + 104) = v8;
  HIBYTE(v24) = 0;
  LOBYTE(__p) = 0;
  if (*(v2 + 151) < 0)
  {
    operator delete(*(v2 + 128));
    v10 = SHIBYTE(v24);
    v11 = v25;
    *(v2 + 144) = v26;
    *(v2 + 128) = v11;
    HIBYTE(v26) = 0;
    LOBYTE(v25) = 0;
    *(v2 + 152) = v27;
    if (v10 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v9 = v25;
    *(v2 + 144) = v26;
    *(v2 + 128) = v9;
    HIBYTE(v26) = 0;
    LOBYTE(v25) = 0;
    *(v2 + 152) = v27;
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13);
  }
}

void *sub_10145D18C(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = a1[1];
      v4 = a1 + 1;
      if (*a1 == a1 + 1)
      {
        goto LABEL_8;
      }

      v5 = a1[1];
      v6 = a1 + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = *(v2 + 8);
      if (*(v4 + 8) < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = a1 + 1;
        }

        if (!*v9)
        {
LABEL_19:
          operator new();
        }
      }

      else
      {
        if (!v3)
        {
          goto LABEL_19;
        }

        while (1)
        {
          while (1)
          {
            v10 = v3;
            v11 = *(v3 + 32);
            if (v11 <= v8)
            {
              break;
            }

            v3 = *v10;
            if (!*v10)
            {
              goto LABEL_19;
            }
          }

          if (v11 >= v8)
          {
            break;
          }

          v3 = v10[1];
          if (!v3)
          {
            goto LABEL_19;
          }
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
          v7 = *v13 == v2;
          v2 = v13;
        }

        while (!v7);
      }

      v2 = v13;
    }

    while (v13 != a2 + 1);
  }

  return a1;
}

uint64_t *sub_10145D358(uint64_t **a1)
{
  v1 = *a1;
  v16 = a1;
  v17 = v1;
  v2 = *v1;
  v19[0] = 1;
  v20 = 0u;
  v21 = 0;
  v19[1] = v2 + 152;
  sub_10145D18C(&v20, (v2 + 184));
  v3 = *(v1 + 32);
  if (v3 != (v1 + 40))
  {
    do
    {
      v4 = *(v3 + 5);
      v5 = *(v3 + 6);
      memset(&__p, 0, sizeof(__p));
      if (v4 != v5)
      {
        sub_10145D6F8(&__s, v4);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = __s;
        while (1)
        {
          v4 += 5;
          if (v4 == v5)
          {
            break;
          }

          *(&__s.__r_.__value_.__s + 23) = 1;
          strcpy(&__s, ",");
          std::string::append(&__p, &__s, 1uLL);
          if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__s.__r_.__value_.__l.__data_);
          }

          sub_10145D6F8(&__s, v4);
          if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_s = &__s;
          }

          else
          {
            p_s = __s.__r_.__value_.__r.__words[0];
          }

          if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__s.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __s.__r_.__value_.__l.__size_;
          }

          std::string::append(&__p, p_s, size);
          if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__s.__r_.__value_.__l.__data_);
          }
        }
      }

      v8 = *(*(**(v2 + 56) + 16))(*(v2 + 56), v3[8]);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v1 + 8;
        if (*(v1 + 31) < 0)
        {
          v9 = *(v1 + 8);
        }

        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(__s.__r_.__value_.__l.__data_) = 136315394;
        *(__s.__r_.__value_.__r.__words + 4) = v9;
        WORD2(__s.__r_.__value_.__r.__words[1]) = 2080;
        *(&__s.__r_.__value_.__r.__words[1] + 6) = p_p;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s sending emergency_numbers update: %s", &__s, 0x16u);
      }

      __s.__r_.__value_.__r.__words[0] = (v3 + 8);
      v11 = sub_1001AB974(&v20, v3 + 8, &unk_101802C98, &__s);
      if (v3 != v11)
      {
        sub_1001A7D40(v11 + 5, *(v3 + 5), *(v3 + 6), 0xCCCCCCCCCCCCCCCDLL * ((*(v3 + 6) - *(v3 + 5)) >> 5));
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v12 = *(v3 + 1);
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
          v13 = *(v3 + 2);
          v14 = *v13 == v3;
          v3 = v13;
        }

        while (!v14);
      }

      v3 = v13;
    }

    while (v13 != (v1 + 40));
  }

  sub_10145D8AC(v19);
  sub_10145D694(&v17);
  return sub_1000049E0(&v16);
}

void sub_10145D630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  sub_10145D694(&a12);
  sub_1000049E0(&a11);
  _Unwind_Resume(a1);
}

uint64_t *sub_10145D694(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1001A90CC(v1 + 32, *(v1 + 40));
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

void sub_10145D6F8(std::string *a1, CSIPhoneNumber *this)
{
  CSIPhoneNumber::getFullNumber(&v17, this);
  v4 = std::string::append(&v17, " SupportsSMS: ", 0xEuLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  IsEmSMSTextSupported = CSIPhoneNumber::getIsEmSMSTextSupported(this);
  v7 = CSIBOOLAsString(IsEmSMSTextSupported);
  v8 = strlen(v7);
  v9 = std::string::append(&v18, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v19, " SupportsEmVoice: ", 0x12uLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  IsEmVoiceSupported = CSIPhoneNumber::getIsEmVoiceSupported(this);
  v14 = CSIBOOLAsString(IsEmVoiceSupported);
  v15 = strlen(v14);
  v16 = std::string::append(&v20, v14, v15);
  *a1 = *v16;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_10145D848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10145D8AC(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2[6] == *(a1 + 32))
    {
      v3 = v2[4];
      if (v3 == v2 + 5)
      {
        goto LABEL_27;
      }

      v4 = *(a1 + 16);
      while (*(v3 + 8) == *(v4 + 8))
      {
        v5 = v3[5];
        v6 = v3[6];
        v7 = v4[5];
        if (v6 - v5 != v4[6] - v7)
        {
          break;
        }

        while (v5 != v6)
        {
          if (!CSIPhoneNumber::operator==())
          {
            goto LABEL_22;
          }

          v5 += 160;
          v7 += 160;
        }

        v8 = v3[1];
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
            v9 = v3[2];
            v10 = *v9 == v3;
            v3 = v9;
          }

          while (!v10);
        }

        v11 = v4[1];
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
            v12 = v4[2];
            v10 = *v12 == v4;
            v4 = v12;
          }

          while (!v10);
        }

        v4 = v12;
        v3 = v9;
        if (v9 == v2 + 5)
        {
          goto LABEL_27;
        }
      }
    }

LABEL_22:
    v13 = v2 + 5;
    sub_1001A90CC((v2 + 4), v2[5]);
    v2[4] = *(a1 + 16);
    v15 = *(a1 + 24);
    v16 = *(a1 + 32);
    v14 = (a1 + 24);
    v2[5] = v15;
    v2[6] = v16;
    if (v16)
    {
      *(v15 + 16) = v13;
      *(a1 + 16) = v14;
      *v14 = 0;
      *(a1 + 32) = 0;
    }

    else
    {
      v2[4] = v13;
    }

    v17 = v2[3];
    if (v17)
    {
      (*(*v17 + 48))(v17, v2 + 4);
    }
  }

LABEL_27:
  sub_1001A90CC(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t *sub_10145DA58(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v9 = 0;
  v10 = 0;
  sub_1000B1804(&v9, v2);
  if (v9)
  {
    (*(*v9 + 128))(v9, v1 + 8);
  }

  else
  {
    v8[0] = 0;
    v8[1] = 0;
    v7 = v8;
    v3 = *(v1 + 32);
    if (!v3)
    {
      sub_100022DB4();
    }

    (*(*v3 + 48))(v3, &v7);
    sub_100009970(&v7, v8[0]);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_1011D633C(&v6);
  return sub_1000049E0(&v5);
}

void sub_10145DB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v5 = *(v3 - 24);
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_1011D633C(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

void sub_10145DB74(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a1[1];
  if (!v9 || (v10 = *a1, (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    sub_100013CC4();
  }

  v12 = v11;
  p_shared_weak_owners = &v11->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v14 = +[DCAppAttestServicePriv sharedService];
  v15 = *(a1 + 60);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3321888768;
  v18[2] = sub_10145DD68;
  v18[3] = &unk_101F3DD98;
  v20 = a1;
  v21 = v10;
  v22 = v12;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  sub_100115BE0(v23, a4);
  if (v15)
  {
    v16 = @"rcsStressTest";
  }

  else
  {
    v16 = 0;
  }

  v17 = v7;
  v19 = v17;
  [v14 attestKey:v17 teamIdentifier:v16 clientDataHash:v8 completionHandler:v18];

  sub_100115C78(v23);
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  std::__shared_weak_count::__release_weak(v12);
}

void sub_10145DD0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  sub_100115C78(v21 + 64);
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  std::__shared_weak_count::__release_weak(v19);
  _Unwind_Resume(a1);
}

void sub_10145DD68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = std::__shared_weak_count::lock(v7);
    if (v9)
    {
      if (*(a1 + 48))
      {
        v5;
        v6;
        sub_100115BE0(v11, a1 + 64);
        v11[4] = *(a1 + 32);
        v10 = *(v8 + 8);
        if (v10)
        {
          if (std::__shared_weak_count::lock(v10))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v9);
    }
  }
}

void sub_10145DF48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10145DFAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_100115BE0(a1 + 64, a2 + 64);
}

void sub_10145DFF0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10145E008(uint64_t a1)
{
  sub_100115C78(a1 + 64);
  v2 = *(a1 + 56);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_10145E054(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = std::__shared_weak_count::lock(v7);
    if (v9)
    {
      if (*(a1 + 48))
      {
        v5;
        v6;
        sub_100115BE0(v11, a1 + 64);
        v11[4] = *(a1 + 32);
        v10 = *(v8 + 8);
        if (v10)
        {
          if (std::__shared_weak_count::lock(v10))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v9);
    }
  }
}

void sub_10145E234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10145E298(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[6];
  if (v7)
  {
    v8 = a1[4];
    v9 = std::__shared_weak_count::lock(v7);
    if (v9)
    {
      if (a1[5])
      {
        v5;
        sub_100115BE0(v11, (a1 + 7));
        v11[4] = v6;
        v10 = *(v8 + 8);
        if (v10)
        {
          if (std::__shared_weak_count::lock(v10))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v9);
    }
  }
}

void sub_10145E44C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10145E4A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_100115BE0(a1 + 56, a2 + 56);
}

void sub_10145E4E4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10145E4FC(uint64_t a1)
{
  sub_100115C78(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_10145E548(std::__shared_weak_count_vtbl **a4@<X8>)
{
  v5 = +[DCAppAttestServicePriv sharedService];
  if ([v5 isSupported])
  {
    operator new();
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_10145E9CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  v17 = v15[3].__vftable;
  if (v17)
  {
    sub_100004A34(v17);
  }

  ctu::OsLogLogger::~OsLogLogger(&v15[2].__shared_owners_);
  sub_1000C0544(v16);
  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v18);
  v19 = v14[7];
  if (v19)
  {
    sub_100004A34(v19);
  }

  ctu::OsLogLogger::~OsLogLogger((v14 + 5));
  sub_1000C0544(v14 + 1);
  operator delete();
}

void *sub_10145EB20(void *a1)
{
  *a1 = off_101F3DE40;
  v2 = a1[9];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);
  return a1;
}

void sub_10145EB8C(void *a1)
{
  sub_10145EB20(a1);

  operator delete();
}

void sub_10145EBC4(void *a1, void *a2, uint64_t a3, char a4)
{
  [NSData dataWithBytes:*a2 length:a2[1] - *a2];
  v9 = v8 = a1;
  sub_100115BE0(v10, a3);
  v10[32] = a4;
  v7 = a1[2];
  if (v7)
  {
    if (std::__shared_weak_count::lock(v7))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10145ED94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10145EDCC(id **a1)
{
  v1 = *a1;
  v74 = a1;
  v75 = v1;
  v2 = *v1;
  v3 = *(*v1 + 4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1[2];
    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I attestKeyAfterKeyGen error=%@", buf, 0xCu);
  }

  if (!v1[2] && v1[1])
  {
    memset(buf, 0, sizeof(buf));
    ServiceMap = Registry::getServiceMap(*(v2 + 5));
    v16 = ServiceMap;
    if (v17 < 0)
    {
      v18 = (v17 & 0x7FFFFFFFFFFFFFFFLL);
      v19 = 5381;
      do
      {
        v17 = v19;
        v20 = *v18++;
        v19 = (33 * v19) ^ v20;
      }

      while (v20);
    }

    std::mutex::lock(ServiceMap);
    *__dst = v17;
    v21 = sub_100009510(&v16[1].__m_.__sig, __dst);
    if (v21)
    {
      v23 = v21[3];
      v22 = v21[4];
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v16);
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v22);
        v24 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v23 = 0;
    }

    std::mutex::unlock(v16);
    v22 = 0;
    v24 = 1;
LABEL_34:
    (*(*v23 + 8))(buf, v23, v2[14]);
    if ((v24 & 1) == 0)
    {
      sub_100004A34(v22);
    }

    if (!*buf)
    {
      goto LABEL_82;
    }

    v37 = Registry::getServiceMap(*(v2 + 5));
    v38 = v37;
    v40 = v39;
    if (v39 < 0)
    {
      v41 = (v39 & 0x7FFFFFFFFFFFFFFFLL);
      v42 = 5381;
      do
      {
        v40 = v42;
        v43 = *v41++;
        v42 = (33 * v42) ^ v43;
      }

      while (v43);
    }

    std::mutex::lock(v37);
    *__dst = v40;
    v44 = sub_100009510(&v38[1].__m_.__sig, __dst);
    if (v44)
    {
      v46 = v44[3];
      v45 = v44[4];
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v38);
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v45);
        v47 = 0;
        goto LABEL_70;
      }
    }

    else
    {
      v46 = 0;
    }

    std::mutex::unlock(v38);
    v45 = 0;
    v47 = 1;
LABEL_70:
    (*(*v46 + 16))(v46, *buf + 24, @"AttestationKeyId", v1[7], @"LazuliAttestation", 0, 1, 0, v74, v75);
    if ((v47 & 1) == 0)
    {
      sub_100004A34(v45);
    }

    v59 = Registry::getServiceMap(*(v2 + 5));
    v60 = v59;
    if (v39 < 0)
    {
      v61 = (v39 & 0x7FFFFFFFFFFFFFFFLL);
      v62 = 5381;
      do
      {
        v39 = v62;
        v63 = *v61++;
        v62 = (33 * v62) ^ v63;
      }

      while (v63);
    }

    std::mutex::lock(v59);
    *__dst = v39;
    v64 = sub_100009510(&v60[1].__m_.__sig, __dst);
    if (v64)
    {
      v66 = v64[3];
      v65 = v64[4];
      if (v65)
      {
        atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v60);
        atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v65);
        v67 = 0;
        goto LABEL_80;
      }
    }

    else
    {
      v66 = 0;
    }

    std::mutex::unlock(v60);
    v65 = 0;
    v67 = 1;
LABEL_80:
    (*(*v66 + 16))(v66, *buf + 24, @"AttestationAttested", kCFBooleanTrue, @"LazuliAttestation", 0, 1, 0);
    if ((v67 & 1) == 0)
    {
      sub_100004A34(v65);
    }

LABEL_82:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v1[6])
    {
      v68 = [v1[1] base64EncodedStringWithOptions:0];
      v85 = 0uLL;
      v86 = 0;
      v69 = v68;
      sub_10000501C(&v85, [v68 UTF8String]);
      v83 = 0uLL;
      v84 = 0;
      sub_10000501C(&v83, [v1[7] UTF8String]);
      sub_10006772C(__dst, &v85, &v83);
      *buf = *__dst;
      v70 = v80;
      memset(__dst, 0, sizeof(__dst));
      v71 = *v81;
      v80 = 0;
      v81[0] = 0;
      __p = v71;
      v88 = v70;
      v90 = v82;
      v81[1] = 0;
      v82 = 0;
      v91 = 1;
      LOBYTE(v76) = 0;
      v78 = 0;
      v72 = v1[6];
      if (!v72)
      {
        sub_100022DB4();
      }

      (*(*v72 + 48))(v72, buf, &v76);
      if (v78 == 1 && v77 < 0)
      {
        operator delete(v76);
      }

      if (v91 == 1)
      {
        if (SHIBYTE(v90) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v88) < 0)
        {
          operator delete(*buf);
        }
      }

      if (SHIBYTE(v82) < 0)
      {
        operator delete(v81[0]);
      }

      if (SHIBYTE(v80) < 0)
      {
        operator delete(*__dst);
      }

      if (SHIBYTE(v84) < 0)
      {
        operator delete(v83);
      }

      if (SHIBYTE(v86) < 0)
      {
        operator delete(v85);
      }
    }

    goto LABEL_103;
  }

  memset(buf, 0, sizeof(buf));
  v5 = Registry::getServiceMap(*(v2 + 5));
  v6 = v5;
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

  std::mutex::lock(v5);
  *__dst = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, __dst);
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
      goto LABEL_19;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_19:
  (*(*v13 + 8))(buf, v13, v2[14]);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (!*buf)
  {
    goto LABEL_57;
  }

  v25 = v1[2];
  if (v25 && [v25 code] != 4)
  {
    v26 = *(v2 + 4);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *__dst = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I attestKeyAfterKeyGen failed. Erase key from NV", __dst, 2u);
    }

    v27 = Registry::getServiceMap(*(v2 + 5));
    v28 = v27;
    if (v29 < 0)
    {
      v30 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
      v31 = 5381;
      do
      {
        v29 = v31;
        v32 = *v30++;
        v31 = (33 * v31) ^ v32;
      }

      while (v32);
    }

    std::mutex::lock(v27);
    *__dst = v29;
    v33 = sub_100009510(&v28[1].__m_.__sig, __dst);
    if (v33)
    {
      v35 = v33[3];
      v34 = v33[4];
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v28);
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v34);
        v36 = 0;
        goto LABEL_45;
      }
    }

    else
    {
      v35 = 0;
    }

    std::mutex::unlock(v28);
    v34 = 0;
    v36 = 1;
LABEL_45:
    (*(*v35 + 32))(v35, *buf + 24, @"AttestationKeyId", @"LazuliAttestation", 0, 1);
    if ((v36 & 1) == 0)
    {
      sub_100004A34(v34);
    }
  }

  v48 = Registry::getServiceMap(*(v2 + 5));
  v49 = v48;
  if (v50 < 0)
  {
    v51 = (v50 & 0x7FFFFFFFFFFFFFFFLL);
    v52 = 5381;
    do
    {
      v50 = v52;
      v53 = *v51++;
      v52 = (33 * v52) ^ v53;
    }

    while (v53);
  }

  std::mutex::lock(v48);
  *__dst = v50;
  v54 = sub_100009510(&v49[1].__m_.__sig, __dst);
  if (v54)
  {
    v56 = v54[3];
    v55 = v54[4];
    if (v55)
    {
      atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v49);
      atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v55);
      v57 = 0;
      goto LABEL_55;
    }
  }

  else
  {
    v56 = 0;
  }

  std::mutex::unlock(v49);
  v55 = 0;
  v57 = 1;
LABEL_55:
  (*(*v56 + 16))(v56, *buf + 24, @"AttestationAttested", kCFBooleanFalse, @"LazuliAttestation", 0, 1, 0);
  if ((v57 & 1) == 0)
  {
    sub_100004A34(v55);
  }

LABEL_57:
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v58 = v1[6];
  if (v58)
  {
    buf[0] = 0;
    v91 = 0;
    __dst[0] = 0;
    LOBYTE(v81[0]) = 0;
    (*(*v58 + 48))(v58, buf, __dst);
    if (LOBYTE(v81[0]) == 1 && SHIBYTE(v80) < 0)
    {
      operator delete(*__dst);
    }

    if (v91 == 1)
    {
      if (SHIBYTE(v90) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v88) < 0)
      {
        operator delete(*buf);
      }
    }
  }

LABEL_103:
  sub_10145F800(&v75);
  return sub_1000049E0(&v74);
}

void sub_10145F6A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  sub_10145F800(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

id **sub_10145F800(id **a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {

    sub_100115C78((v1 + 3));
    operator delete();
  }

  return a1;
}

uint64_t *sub_10145F868(void *a1)
{
  v1 = *a1;
  v40 = a1;
  v41 = v1;
  v2 = *v1;
  v3 = *(*v1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 8);
    v5 = *(v1 + 16);
    *buf = 138412546;
    *&buf[4] = v4;
    *&buf[12] = 2112;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I generateKey keyId=%@, error=%@", buf, 0x16u);
  }

  if (*(v1 + 16))
  {
    v6 = *(v1 + 48);
    if (v6)
    {
      buf[0] = 0;
      v49 = 0;
      LOBYTE(__p[0]) = 0;
      v44 = 0;
      (*(*v6 + 48))(v6, buf, __p);
      if (v44 == 1 && v43 < 0)
      {
        operator delete(__p[0]);
      }

      if (v49 == 1)
      {
        if (v48 < 0)
        {
          operator delete(v47);
        }

        if (v46 < 0)
        {
          operator delete(*buf);
        }
      }
    }

    goto LABEL_47;
  }

  *buf = 0;
  *&buf[8] = 0;
  ServiceMap = Registry::getServiceMap(v2[5]);
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
  __p[0] = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, __p);
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
      goto LABEL_21;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
LABEL_21:
  (*(*v15 + 8))(buf, v15, *(v2 + 14));
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  if (!*buf)
  {
    goto LABEL_44;
  }

  v17 = Registry::getServiceMap(v2[5]);
  v18 = v17;
  v20 = v19;
  if (v19 < 0)
  {
    v21 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
    v22 = 5381;
    do
    {
      v20 = v22;
      v23 = *v21++;
      v22 = (33 * v22) ^ v23;
    }

    while (v23);
  }

  std::mutex::lock(v17);
  __p[0] = v20;
  v24 = sub_100009510(&v18[1].__m_.__sig, __p);
  if (v24)
  {
    v26 = v24[3];
    v25 = v24[4];
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v18);
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v25);
      v27 = 0;
      goto LABEL_32;
    }
  }

  else
  {
    v26 = 0;
  }

  std::mutex::unlock(v18);
  v25 = 0;
  v27 = 1;
LABEL_32:
  (*(*v26 + 16))(v26, *buf + 24, @"AttestationKeyId", *(v1 + 8), @"LazuliAttestation", 0, 1, 0, v40, v41);
  if ((v27 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  v28 = Registry::getServiceMap(v2[5]);
  v29 = v28;
  if (v19 < 0)
  {
    v30 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
    v31 = 5381;
    do
    {
      v19 = v31;
      v32 = *v30++;
      v31 = (33 * v31) ^ v32;
    }

    while (v32);
  }

  std::mutex::lock(v28);
  __p[0] = v19;
  v33 = sub_100009510(&v29[1].__m_.__sig, __p);
  if (v33)
  {
    v35 = v33[3];
    v34 = v33[4];
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v29);
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v34);
      v36 = 0;
      goto LABEL_42;
    }
  }

  else
  {
    v35 = 0;
  }

  std::mutex::unlock(v29);
  v34 = 0;
  v36 = 1;
LABEL_42:
  (*(*v35 + 16))(v35, *buf + 24, @"AttestationAttested", kCFBooleanFalse, @"LazuliAttestation", 0, 1, 0);
  if ((v36 & 1) == 0)
  {
    sub_100004A34(v34);
  }

LABEL_44:
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v37 = *(v1 + 8);
  v38 = *(v1 + 56);
  sub_100115BE0(buf, v1 + 24);
  sub_10145DB74(v2, v37, v38, buf);
  sub_100115C78(buf);
LABEL_47:
  sub_10145F800(&v41);
  return sub_1000049E0(&v40);
}

void sub_10145FCE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, std::__shared_weak_count *a22)
{
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  if (a22)
  {
    sub_100004A34(a22);
  }

  sub_10145F800(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10145FD90(void **a1)
{
  v1 = *a1;
  v42 = a1;
  v43 = v1;
  v2 = *v1;
  v3 = *(*v1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1[6];
    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I generateAssertion error=%@", buf, 0xCu);
  }

  if (!v1[6])
  {
    v15 = v1[1];
    if (v15)
    {
      if (v1[5])
      {
        v16 = [v15 base64EncodedStringWithOptions:0];
        v44[0] = 0;
        v44[1] = 0;
        v45 = 0;
        v17 = v16;
        sub_10000501C(v44, [v16 UTF8String]);
        buf[0] = 0;
        v53 = 0;
        if (SHIBYTE(v45) < 0)
        {
          sub_100005F2C(__dst, v44[0], v44[1]);
        }

        else
        {
          *__dst = *v44;
          v47 = v45;
        }

        v48 = 1;
        v40 = v1[5];
        if (!v40)
        {
          sub_100022DB4();
        }

        (*(*v40 + 48))(v40, buf, __dst);
        if (v48 == 1 && SHIBYTE(v47) < 0)
        {
          operator delete(*__dst);
        }

        if (v53 == 1)
        {
          if (v52 < 0)
          {
            operator delete(__p);
          }

          if (v50 < 0)
          {
            operator delete(*buf);
          }
        }

        if (SHIBYTE(v45) < 0)
        {
          operator delete(v44[0]);
        }
      }

      goto LABEL_65;
    }
  }

  *buf = 0uLL;
  ServiceMap = Registry::getServiceMap(*(v2 + 40));
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
  *__dst = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, __dst);
  if (v11)
  {
    v12 = v11[3];
    v13 = v11[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v14 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v6);
  v13 = 0;
  v14 = 1;
LABEL_16:
  (*(*v12 + 8))(buf, v12, *(v2 + 56));
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (!*buf)
  {
    goto LABEL_41;
  }

  v18 = *(v2 + 32);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *__dst = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I assertKey failed. Erase key from NV", __dst, 2u);
  }

  v19 = Registry::getServiceMap(*(v2 + 40));
  v20 = v19;
  v22 = v21;
  if (v21 < 0)
  {
    v23 = (v21 & 0x7FFFFFFFFFFFFFFFLL);
    v24 = 5381;
    do
    {
      v22 = v24;
      v25 = *v23++;
      v24 = (33 * v24) ^ v25;
    }

    while (v25);
  }

  std::mutex::lock(v19);
  *__dst = v22;
  v26 = sub_100009510(&v20[1].__m_.__sig, __dst);
  if (v26)
  {
    v27 = v26[3];
    v28 = v26[4];
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v20);
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v28);
      v29 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v27 = 0;
  }

  std::mutex::unlock(v20);
  v28 = 0;
  v29 = 1;
LABEL_29:
  (*(*v27 + 32))(v27, *buf + 24, @"AttestationKeyId", @"LazuliAttestation", 0, 1);
  if ((v29 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  v30 = Registry::getServiceMap(*(v2 + 40));
  v31 = v30;
  if (v21 < 0)
  {
    v32 = (v21 & 0x7FFFFFFFFFFFFFFFLL);
    v33 = 5381;
    do
    {
      v21 = v33;
      v34 = *v32++;
      v33 = (33 * v33) ^ v34;
    }

    while (v34);
  }

  std::mutex::lock(v30);
  *__dst = v21;
  v35 = sub_100009510(&v31[1].__m_.__sig, __dst);
  if (v35)
  {
    v36 = v35[3];
    v37 = v35[4];
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v31);
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v37);
      v38 = 0;
      goto LABEL_39;
    }
  }

  else
  {
    v36 = 0;
  }

  std::mutex::unlock(v31);
  v37 = 0;
  v38 = 1;
LABEL_39:
  (*(*v36 + 16))(v36, *buf + 24, @"AttestationAttested", kCFBooleanFalse, @"LazuliAttestation", 0, 1, 0);
  if ((v38 & 1) == 0)
  {
    sub_100004A34(v37);
  }

LABEL_41:
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v39 = v1[5];
  if (v39)
  {
    buf[0] = 0;
    v53 = 0;
    __dst[0] = 0;
    v48 = 0;
    (*(*v39 + 48))(v39, buf, __dst);
    if (v48 == 1 && SHIBYTE(v47) < 0)
    {
      operator delete(*__dst);
    }

    if (v53 == 1)
    {
      if (v52 < 0)
      {
        operator delete(__p);
      }

      if (v50 < 0)
      {
        operator delete(*buf);
      }
    }
  }

LABEL_65:
  sub_101460408(&v43);
  return sub_1000049E0(&v42);
}

void sub_101460310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, uint64_t a31)
{
  sub_10038E598(&a28);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_101460408(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_101460408(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {

    sub_100115C78(v1 + 16);
    operator delete();
  }

  return a1;
}

void sub_10146046C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014604C0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101460500(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10146054C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3DF58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1014605A0(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 7));

  return sub_1000C0544(a1 + 3);
}

uint64_t *sub_1014605EC(uint64_t *a1)
{
  v1 = *a1;
  v76 = a1;
  v77 = v1;
  v2 = *(v1 + 8);
  v3 = *(*v1 + 64);
  sub_100115BE0(v82, v1 + 16);
  v4 = *(v1 + 48);
  v5 = v2;
  v80 = 0;
  v81 = 0;
  ServiceMap = Registry::getServiceMap(*(v3 + 40));
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
  (*(*v14 + 8))(&v80, v14, *(v3 + 56));
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (v80 && (*(v80 + 48) & 1) != 0)
  {
    v79 = 0;
    v16 = Registry::getServiceMap(*(v3 + 40));
    v17 = v16;
    v19 = v18;
    if (v18 < 0)
    {
      v20 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
      v21 = 5381;
      do
      {
        v19 = v21;
        v22 = *v20++;
        v21 = (33 * v21) ^ v22;
      }

      while (v22);
    }

    std::mutex::lock(v16);
    *buf = v19;
    v23 = sub_100009510(&v17[1].__m_.__sig, buf);
    if (v23)
    {
      v25 = v23[3];
      v24 = v23[4];
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v17);
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v24);
        v26 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      v25 = 0;
    }

    std::mutex::unlock(v17);
    v24 = 0;
    v26 = 1;
LABEL_32:
    (*(*v25 + 24))(__p, v25, v80 + 24, @"AttestationKeyId", @"LazuliAttestation", 0, 1);
    sub_100060DE8(&v79, __p);
    sub_10000A1EC(__p);
    if ((v26 & 1) == 0)
    {
      sub_100004A34(v24);
    }

    v28 = v79;
    if (v79)
    {
      v29 = v79;
      v30 = *(v3 + 32);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = (v80 + 24);
        v32 = *(v80 + 47);
        v33 = v32;
        if ((v32 & 0x80u) != 0)
        {
          v32 = *(v80 + 32);
        }

        if (v33 < 0)
        {
          v31 = *(v80 + 24);
        }

        if (!v32)
        {
          v31 = "<invalid>";
        }

        *buf = 136315394;
        *&buf[4] = v31;
        *&buf[12] = 2112;
        *&buf[14] = v29;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Restore PersonalityID=%s, keyId=%@", buf, 0x16u);
      }
    }

    v78 = 0;
    v34 = Registry::getServiceMap(*(v3 + 40));
    v35 = v34;
    if (v18 < 0)
    {
      v36 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
      v37 = 5381;
      do
      {
        v18 = v37;
        v38 = *v36++;
        v37 = (33 * v37) ^ v38;
      }

      while (v38);
    }

    std::mutex::lock(v34);
    *buf = v18;
    v39 = sub_100009510(&v35[1].__m_.__sig, buf);
    if (v39)
    {
      v41 = v39[3];
      v40 = v39[4];
      if (v40)
      {
        atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v35);
        atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v40);
        v42 = 0;
        goto LABEL_51;
      }
    }

    else
    {
      v41 = 0;
    }

    std::mutex::unlock(v35);
    v40 = 0;
    v42 = 1;
LABEL_51:
    (*(*v41 + 24))(__p, v41, v80 + 24, @"AttestationAttested", @"LazuliAttestation", 0, 1);
    sub_10002FE1C(&v78, __p);
    sub_10000A1EC(__p);
    if ((v42 & 1) == 0)
    {
      sub_100004A34(v40);
    }

    if (v78)
    {
      buf[0] = 0;
      ctu::cf::assign(buf, v78, v43);
      v44 = buf[0];
      v45 = *(v3 + 32);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = (v80 + 24);
        v47 = *(v80 + 47);
        v48 = v47;
        if ((v47 & 0x80u) != 0)
        {
          v47 = *(v80 + 32);
        }

        if (v48 < 0)
        {
          v46 = *(v80 + 24);
        }

        if (!v47)
        {
          v46 = "<invalid>";
        }

        v49 = "true";
        if (!v44)
        {
          v49 = "false";
        }

        *buf = 136315394;
        *&buf[4] = v46;
        *&buf[12] = 2080;
        *&buf[14] = v49;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I Restore PersonalityID=%s, keyAttested=%s", buf, 0x16u);
      }
    }

    else
    {
      LOBYTE(v44) = 0;
    }

    v50 = [v28 length];
    v51 = *(v3 + 32);
    v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
    if (!v50 || v4)
    {
      if (v52)
      {
        *buf = 67109120;
        *&buf[4] = v4;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I Key does not exist (forced=%d), Generate the key", buf, 8u);
      }

      sub_100115BE0(__p, v82);
      v62 = v5;
      v63 = *(v3 + 8);
      if (!v63 || (v64 = *v3, (v65 = std::__shared_weak_count::lock(v63)) == 0))
      {
        sub_100013CC4();
      }

      v66 = v65;
      p_shared_weak_owners = &v65->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v65->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v65);
      v68 = +[DCAppAttestServicePriv sharedService];
      v69 = *(v3 + 60);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3321888768;
      *&buf[16] = sub_10145E054;
      v88 = &unk_101F3DDD0;
      v90 = v3;
      v91 = v64;
      v92 = v66;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      sub_100115BE0(v93, __p);
      if (v69)
      {
        v70 = @"rcsStressTest";
      }

      else
      {
        v70 = 0;
      }

      v71 = v62;
      v89 = v71;
      [v68 generateKeyWithTeamIdentifier:v70 completion:buf];

      sub_100115C78(v93);
      if (v92)
      {
        std::__shared_weak_count::__release_weak(v92);
      }

      std::__shared_weak_count::__release_weak(v66);
    }

    else
    {
      if ((v44 & 1) == 0)
      {
        if (v52)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I key exists but not attested", buf, 2u);
        }

        sub_100115BE0(buf, v82);
        v72 = buf;
        sub_10145DB74(v3, v28, v5, buf);
        goto LABEL_92;
      }

      if (v52)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I key already attested. Assert key", buf, 2u);
      }

      sub_100115BE0(__p, v82);
      v75 = v28;
      v53 = v5;
      v54 = *(v3 + 8);
      if (!v54 || (v55 = *v3, (v56 = std::__shared_weak_count::lock(v54)) == 0))
      {
        sub_100013CC4();
      }

      v57 = v56;
      v58 = &v56->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v56->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v56);
      v59 = +[DCAppAttestServicePriv sharedService];
      v60 = *(v3 + 60);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3321888768;
      *&buf[16] = sub_10145E298;
      v88 = &unk_101F3DE00;
      v89 = v3;
      v90 = v55;
      v91 = v57;
      atomic_fetch_add_explicit(v58, 1uLL, memory_order_relaxed);
      sub_100115BE0(&v92, __p);
      if (v60)
      {
        v61 = @"rcsStressTest";
      }

      else
      {
        v61 = 0;
      }

      [v59 generateAssertion:v75 teamIdentifier:v61 clientDataHash:v53 completionHandler:buf];

      sub_100115C78(&v92);
      if (v91)
      {
        std::__shared_weak_count::__release_weak(v91);
      }

      std::__shared_weak_count::__release_weak(v57);
    }

    v72 = __p;
LABEL_92:
    sub_100115C78(v72);
    sub_100045C8C(&v78);
    sub_100005978(&v79);

    goto LABEL_93;
  }

  v27 = *(v3 + 32);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v74 = *(v3 + 56);
    *buf = 67109120;
    *&buf[4] = v74;
    _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "no active SIM on slot %d", buf, 8u);
  }

  if (v83)
  {
    buf[0] = 0;
    LOBYTE(v91) = 0;
    LOBYTE(__p[0]) = 0;
    v86 = 0;
    (*(*v83 + 48))(v83, buf, __p);
    if (v86 == 1 && v85 < 0)
    {
      operator delete(__p[0]);
    }

    if (v91 == 1)
    {
      if (SHIBYTE(v90) < 0)
      {
        operator delete(v88);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }
  }

LABEL_93:
  if (v81)
  {
    sub_100004A34(v81);
  }

  sub_100115C78(v82);
  sub_1014610B0(&v77);
  return sub_1000049E0(&v76);
}

void sub_101460EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, const void *a16, const void *a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40, std::__shared_weak_count *a41)
{
  sub_100115C78(v43 + 56);
  if (a40)
  {
    std::__shared_weak_count::__release_weak(a40);
  }

  std::__shared_weak_count::__release_weak(v41);
  sub_100115C78(&__p);
  sub_100045C8C(&a16);
  sub_100005978(&a17);

  if (a19)
  {
    sub_100004A34(a19);
  }

  sub_100115C78(&a20);
  sub_1014610B0(&a12);
  sub_1000049E0(&a11);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014610B0(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100115C78(v1 + 16);

    operator delete();
  }

  return a1;
}

void sub_101461108(uint64_t a1)
{
  v2[0] = 0;
  v2[1] = 0;
  v1 = a1;
  sub_100A5C2CC(v2, &v1, "kCarrierBundleTriggerResetCarrierBundle", sub_1014612F4, 3);
}

void sub_1014612F4(Registry **a1)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v2 = ServiceMap;
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(ServiceMap);
  v11 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v11);
  if (!v7)
  {
    v9 = 0;
LABEL_9:
    std::mutex::unlock(v2);
    v8 = 0;
    v10 = 1;
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = v7[3];
  v8 = v7[4];
  if (!v8)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v2);
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v8);
  v10 = 0;
  if (v9)
  {
LABEL_10:
    (*(*v9 + 88))(v9);
  }

LABEL_11:
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }
}

void sub_1014613FC(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10146141C(Registry **a1)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v2 = ServiceMap;
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(ServiceMap);
  v11 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v11);
  if (!v7)
  {
    v9 = 0;
LABEL_9:
    std::mutex::unlock(v2);
    v8 = 0;
    v10 = 1;
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = v7[3];
  v8 = v7[4];
  if (!v8)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v2);
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v8);
  v10 = 0;
  if (v9)
  {
LABEL_10:
    (*(*v9 + 96))(v9, 5);
  }

LABEL_11:
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }
}

void sub_101461528(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_101461548(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, uint64_t *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
  cf = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &cf);
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
      if (!v15)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
  if (!v15)
  {
    goto LABEL_15;
  }

LABEL_10:
  cf = 0;
  value = xpc_dictionary_get_value(*a4, "kCarrierBundlePathForBundle");
  ctu::xpc_to_cf(value, v18);
  sub_101462380(&cf, &v22);
  sub_10000A1EC(&v22);
  v21 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v20 = *a5;
  v19 = a5[1];
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v24[0] = off_101F3DFA8;
  v24[1] = v20;
  v24[2] = v19;
  v24[3] = v24;
  (*(*v15 + 80))(v15, &v21, v24);
  sub_10000FF50(v24);
  sub_1002030AC(&v21);
  sub_1002030AC(&cf);
LABEL_15:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

void sub_101461724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_101461780(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4)
{
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
  cf = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &cf);
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
      if (!v13)
      {
        goto LABEL_13;
      }

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
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_10:
  cf = 0;
  value = xpc_dictionary_get_value(*a4, "kCarrierBundleOTAServerOverrideUrl");
  ctu::xpc_to_cf(value, v16);
  sub_100060DE8(&cf, &v18);
  sub_10000A1EC(&v18);
  v17 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  (*(*v13 + 112))(v13, &v17);
  sub_100005978(&v17);
  sub_100005978(&cf);
LABEL_13:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_1014618E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, const void *);
  v8 = va_arg(va1, void);
  sub_100005978(va);
  sub_100005978(va1);
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_101461928(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
  v16[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, v16);
  if (!v12)
  {
    std::mutex::unlock(v7);
    return;
  }

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
LABEL_13:
      sub_100004A34(v13);
      return;
    }
  }

  else
  {
    std::mutex::unlock(v7);
    if (!v14)
    {
      return;
    }
  }

  v19 = 0;
  (*(*v14 + 104))(&v19, v14);
  if (v19)
  {
    ctu::cf_to_xpc(v19, v15);
    v16[0] = *a5;
    v16[1] = "kCarrierBundleOTAServerOverrideUrl";
    sub_10000F688(v16, &v17, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v17);
    v17 = 0;
  }

  sub_100005978(&v19);
  if (v13)
  {
    goto LABEL_13;
  }
}

void sub_101461A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100005978(va);
  if (v11)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(a1);
}

const void **sub_101461ABC(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4)
{
  v20 = 0;
  value = xpc_dictionary_get_value(*a4, "kCarrierBundleAttachAPNSettings");
  ctu::xpc_to_cf(value, v6);
  sub_100010180(&v20, &v18);
  sub_10000A1EC(&v18);
  v18 = 0;
  v19 = 0;
  ServiceMap = Registry::getServiceMap(*a1);
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
  v21 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v21);
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
  sub_100419930(v15, &v18);
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  if (v18)
  {
    v22[0] = off_101F3E028;
    v22[3] = v22;
    (*(*v18 + 112))(v18, v20, v22);
    sub_10000FF50(v22);
  }

  if (v19)
  {
    sub_100004A34(v19);
  }

  return sub_10001021C(&v20);
}

void sub_101461C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  v10 = va_arg(va1, void);
  sub_10000FF50(va1);
  if (a7)
  {
    sub_100004A34(a7);
  }

  sub_10001021C(va);
  _Unwind_Resume(a1);
}

void sub_101461CE8(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v19 = 0;
  v20 = 0;
  ServiceMap = Registry::getServiceMap(*a1);
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
  sub_100419930(v14, &v19);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  v16 = v19;
  if (v19)
  {
    v18 = *a5;
    v17 = a5[1];
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    v22[0] = off_101F3E0A8;
    v22[1] = v18;
    v22[2] = v17;
    v22[3] = v22;
    (*(*v16 + 128))(v16, v22);
    sub_10006372C(v22);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }
}

void sub_101461E80(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10006372C(va);
  if (a6)
  {
    sub_100004A34(a6);
  }

  _Unwind_Resume(a1);
}

void sub_101461EC4(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
  v19 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v19);
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
      if (!v14)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_10:
  v16 = a5[1];
  v17 = *a5;
  v18 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v14 + 224))(v14, &v17);
  if (v18)
  {
    sub_100004A34(v18);
  }

LABEL_14:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_101461FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_101462020(Registry **a1)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v2 = ServiceMap;
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(ServiceMap);
  v11 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v11);
  if (!v7)
  {
    v9 = 0;
LABEL_9:
    std::mutex::unlock(v2);
    v8 = 0;
    v10 = 1;
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = v7[3];
  v8 = v7[4];
  if (!v8)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v2);
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v8);
  v10 = 0;
  if (v9)
  {
LABEL_10:
    (*(*v9 + 232))(v9);
  }

LABEL_11:
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }
}

void sub_101462128(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_101462148(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, uint64_t *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
  cf = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &cf);
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
      if (!v15)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
  if (!v15)
  {
    goto LABEL_15;
  }

LABEL_10:
  cf = 0;
  value = xpc_dictionary_get_value(*a4, "kCarrierBundleWatchBundleMatchCriteria");
  ctu::xpc_to_cf(value, v18);
  sub_100010180(&cf, &v22);
  sub_10000A1EC(&v22);
  v21 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v20 = *a5;
  v19 = a5[1];
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v24[0] = off_101F3E128;
  v24[1] = v20;
  v24[2] = v19;
  v24[3] = v24;
  (*(*v15 + 248))(v15, &v21, v24);
  sub_100D9F910(v24);
  sub_10001021C(&v21);
  sub_10001021C(&cf);
LABEL_15:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

void sub_101462324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_101462380(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFURLGetTypeID()))
  {
    *a1 = v3;
    CFRetain(v3);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

void *sub_1014623E4(void *a1)
{
  *a1 = off_101F3DFA8;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_101462430(void *a1)
{
  *a1 = off_101F3DFA8;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_101462508(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F3DFA8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101462540(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_101462550(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_101462590(uint64_t a1, BOOL *a2)
{
  v4 = xpc_BOOL_create(*a2);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  v3[0] = *(a1 + 8);
  v3[1] = "kCarrierBundleInstallResult";
  sub_10000F688(v3, &v4, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v4);
}

uint64_t sub_101462614(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014626EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_101462738(void *a1)
{
  *a1 = off_101F3E0A8;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_101462784(void *a1)
{
  *a1 = off_101F3E0A8;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_10146285C(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F3E0A8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101462894(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1014628A4(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

const void **sub_1014628E4(uint64_t a1, ctu **a2)
{
  v5 = *a2;
  v3 = v5;
  *a2 = 0;
  if (v3)
  {
    ctu::cf_to_xpc(v3, a2);
    v6[0] = *(a1 + 8);
    v6[1] = "kCarrierBundleAttachAPNSettings";
    sub_10000F688(v6, &object, &v8);
    xpc_release(v8);
    v8 = 0;
    xpc_release(object);
  }

  return sub_10001021C(&v5);
}

void sub_101462968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10146297C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1014629C8(void *a1)
{
  *a1 = off_101F3E128;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_101462A14(void *a1)
{
  *a1 = off_101F3E128;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_101462AEC(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F3E128;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101462B24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_101462B34(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

const void **sub_101462B74(uint64_t a1, ctu **a2)
{
  v5 = *a2;
  v3 = v5;
  *a2 = 0;
  if (v3)
  {
    ctu::cf_to_xpc(v3, a2);
    v6[0] = *(a1 + 8);
    v6[1] = "kCarrierBundleRemoteCardSettingsServerURL";
    sub_10000F688(v6, &object, &v8);
    xpc_release(v8);
    v8 = 0;
    xpc_release(object);
  }

  return sub_100005978(&v5);
}

void sub_101462BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101462C0C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101462C74(uint64_t a1, uint64_t a2)
{
  v3 = sub_101171450(a1, a2);
  *v3 = &off_101F3E1A8;
  sub_1008E12B8((v3 + 224));
  sub_10000501C(__p, &unk_101CEC6A2);
  sub_100634618(&v7, -1, __p);
  *(a1 + 264) = v7;
  *(a1 + 272) = v8;
  *(a1 + 288) = v9;
  v8 = 0uLL;
  v9 = 0;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 296) = 0;
  *(a1 + 304) = -1;
  return a1;
}

void sub_101462D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 255) < 0)
  {
    operator delete(*(v15 + 232));
  }

  sub_101462D64(v15);
  _Unwind_Resume(a1);
}

RestServiceBase *sub_101462D64(RestServiceBase *this)
{
  *this = off_101F145A0;
  v2 = *(this + 18);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 12);
  if (v4)
  {
    sub_100004A34(v4);
  }

  RestServiceBase::~RestServiceBase(this);
  ctu::OsLogLogger::~OsLogLogger((this + 80));
  sub_1000C0544(this + 6);
  return this;
}

void **sub_101462DE0(void **this)
{
  *this = &off_101F3E1A8;
  if (*(this + 295) < 0)
  {
    operator delete(this[34]);
  }

  if (*(this + 255) < 0)
  {
    operator delete(this[29]);
  }

  *this = off_101F145A0;
  v2 = this[18];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = this[16];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = this[12];
  if (v4)
  {
    sub_100004A34(v4);
  }

  RestServiceBase::~RestServiceBase(this);
  ctu::OsLogLogger::~OsLogLogger((this + 10));
  sub_1000C0544(this + 6);
  return this;
}

void sub_101462E9C(void **a1)
{
  sub_101462DE0(a1);

  operator delete();
}

void sub_10146324C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(a1);
}

void sub_101463300(void *a1)
{
  sub_10000501C(__p, "/cc/props/wrm-enable-baseband-state");
  ctu::RestModule::unobserveProperty();
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000501C(__p, "/cc/props/wrm-enable-telephony");
  ctu::RestModule::unobserveProperty();
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000501C(__p, "/cc/prefs-nb/wrm-enable-baseband-state-override");
  ctu::RestModule::unobserveProperty();
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_101171DA8(a1);
}

void sub_1014633C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014633E8(uint64_t a1)
{
  v2 = *(a1 + 220);
  if (v2)
  {
    v3 = *(a1 + 80);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = asString();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I [    ] evaluation uses forced debug mode: %s", &v10, 0xCu);
      return *(a1 + 220);
    }
  }

  else
  {
    v2 = sub_101171F08(a1);
    v4 = *(a1 + 80);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Current forced_mode: %s", &v10, 0xCu);
    }

    if ((*(a1 + 176) & 1) == 0 && v2 != 3)
    {
      if (*(a1 + 208))
      {
        v5 = *(a1 + 80);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v10) = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Emergency online assertion is being requested / held. No Silence assertion possible", &v10, 2u);
        }
      }

      else if (*(a1 + 300) && (v2 == 5 || !v2))
      {
        v6 = *(a1 + 264);
        if (*(a1 + 304) != -1)
        {
          v6 = *(a1 + 304);
        }

        if (v6 != 2)
        {
          v7 = *(a1 + 80);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = asString();
            v10 = 136315138;
            v11 = v8;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Current forced_mode: %s Overwriting to CMAS mode", &v10, 0xCu);
          }

          return 4;
        }
      }
    }
  }

  return v2;
}

void sub_1014635DC(uint64_t a1)
{
  sub_101172530(a1);
  v2 = *(a1 + 108);
  if ((v2 - 1) >= 4)
  {
    if (v2 != 5)
    {
      return;
    }

    if (!*(a1 + 300))
    {
      return;
    }

    v4 = *(a1 + 80);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = ctu::rest::asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [    ] rejecting LimitToCmasOnly mode anti-assertion while in state: %s", buf, 0xCu);
      if (!*(a1 + 300))
      {
        return;
      }
    }

    sub_10000501C(__p, "/cc/assertions/limit_to_cmas_mode");
    *buf = *__p;
    v9 = v7;
    __p[1] = 0;
    v7 = 0;
    __p[0] = 0;
    ctu::path_join_impl();
    object = xpc_int64_create(*(a1 + 296));
    if (!object)
    {
      object = xpc_null_create();
    }
  }

  else
  {
    if (*(a1 + 300) != 1)
    {
      return;
    }

    v3 = *(a1 + 80);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I [    ] granting LimitToCmasOnly mode anti-assertion", buf, 2u);
      if (*(a1 + 300) != 1)
      {
        return;
      }
    }

    sub_10000501C(__p, "/cc/assertions/limit_to_cmas_mode");
    *buf = *__p;
    v9 = v7;
    __p[1] = 0;
    v7 = 0;
    __p[0] = 0;
    ctu::path_join_impl();
    object = xpc_int64_create(*(a1 + 296));
    if (!object)
    {
      object = xpc_null_create();
    }
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_101463800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101463888(uint64_t a1)
{
  v2 = *(a1 + 264);
  if (*(a1 + 304) != -1)
  {
    v2 = *(a1 + 304);
  }

  if ((v2 - 1) >= 2 && !*(a1 + 216) && (*(a1 + 176) & 1) == 0 && !*(a1 + 208) && !*(a1 + 192) && !*(a1 + 220))
  {
    return 1;
  }

  result = (*(*a1 + 48))(a1);
  if (!result)
  {
    if (*(a1 + 176) == 1)
    {
      if (capabilities::ct::supportsCampOnlyMode(result))
      {
        return 4;
      }

      else
      {
        return 2;
      }
    }

    else if (*(a1 + 192) == 1)
    {
      return 5;
    }

    else
    {
      v4 = *(a1 + 264);
      if (*(a1 + 304) != -1)
      {
        v4 = *(a1 + 304);
      }

      if (v4 == 1)
      {
        return 4;
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

void sub_101463978(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 232);
  if (*(a1 + 255) < 0)
  {
    if (!*(a1 + 240))
    {
      goto LABEL_11;
    }

    v4 = *v4;
  }

  else if (!*(a1 + 255))
  {
    goto LABEL_11;
  }

  v13 = xpc_string_create(v4);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v15 = 0uLL;
  v16 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v10 = 0;
  v11 = a2;
  v12 = __p;
  sub_10000F688(&v11, &v13, &object);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v13);
  v13 = 0;
LABEL_11:
  v5 = (a1 + 272);
  if (*(a1 + 295) < 0)
  {
    if (!*(a1 + 280))
    {
      return;
    }

    v5 = *v5;
  }

  else if (!*(a1 + 295))
  {
    return;
  }

  v7 = xpc_string_create(v5);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v15 = 0uLL;
  v16 = 0;
  ctu::cf::assign();
  *__p = v15;
  v10 = v16;
  v11 = a2;
  v6 = __p;
  if (v16 < 0)
  {
    v6 = __p[0];
  }

  v12 = v6;
  sub_10000F688(&v11, &v7, &v8);
  xpc_release(v8);
  v8 = 0;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v7);
}

void sub_101463B20(_Unwind_Exception *a1)
{
  if (*(v2 - 33) < 0)
  {
    operator delete(*(v2 - 56));
  }

  xpc_release(v1);
  _Unwind_Resume(a1);
}

__n128 sub_101463BF8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3E218;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101463C30(uint64_t *a1, void **a2)
{
  sub_1006348DC(a1[1], a2);
  v3 = a1[3];
  v4 = a1[4];
  v5 = (a1[2] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_101463CAC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101463D74(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3E298;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101463DAC(uint64_t *a1, void **a2)
{
  sub_1006342C8(a1[1], a2);
  v3 = a1[3];
  v4 = a1[4];
  v5 = (a1[2] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_101463E28(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101463EE8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3E318;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_101463F18(uint64_t a1)
{
  ctu::rest::read_rest_value();
  v2 = *(a1 + 16);
  v3 = *(v2 + 80);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = ctu::rest::asString();
    v5 = *(v2 + 296);
    v6 = 136315394;
    v7 = v4;
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I LimitToCmasMode assertion change: %s (%d)", &v6, 0x12u);
  }

  sub_1011732A4(v2);
}

uint64_t sub_101463FE0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014640A8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3E398;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1014640E0(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v13 = *v4;
    ctu::rest::detail::read_enum_string_value(&v13, a2, v6);
    *v4 = v13;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v6);
  }

  v9 = a1[3];
  v10 = a1[4];
  v11 = (a1[2] + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  return v9(v11);
}

uint64_t sub_1014641D0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10146421C(uint64_t a1, uint64_t a2)
{
  Registry::getRegistryModel(*a2);
  v3 = *(a2 + 8);
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1012EBDFC(&v4);
}

void sub_1014674E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v30 = *(v28 - 88);
  if (v30)
  {
    sub_100004A34(v30);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  v31 = *(v28 - 120);
  if (v31)
  {
    sub_100004A34(v31);
  }

  v32 = *(v28 - 104);
  if (v32)
  {
    sub_100004A34(v32);
  }

  _Unwind_Resume(exception_object);
}

void sub_10146ED10(_Unwind_Exception *a1)
{
  v5 = *(v3 - 184);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(v3 - 160);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(a1);
}

void **sub_101470254(void **result, uint64_t a2)
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
      sub_1010A6A54(result, v10);
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

uint64_t sub_1014703DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10147042C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101470464(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_101470494(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014704D4(std::mutex *this, uint64_t *a2)
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
  v8 = *a2;
  if (*a2)
  {
    v9 = a2[1];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = v8;
    v14 = v9;
    v15 = v4;
    sub_100145BF0(&this[1].__m_.__sig, &v15, &v15, &v13);
    v11 = v10;
    if (v14)
    {
      sub_100004A34(v14);
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = v4;
    sub_100145EC4(&this[1].__m_.__sig, &v15);
    v11 = 1;
  }

  std::mutex::unlock(this);
  return v11 & 1;
}

void sub_1014705D4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3E4F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101470654(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10147068C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1014706BC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10147071C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3E5C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014707B8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3E610;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101470854(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3E660;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014708F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3E6B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10147098C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3E700;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101470A28(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3E750;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101470AC4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3E7A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101470B60(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3E7F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101470BFC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3E840;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101470C98(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3E890;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101470D14()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_101470D44(uint64_t *a1)
{
  v2 = a1;
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;
  }

  [NSString stringWithUTF8String:v2];
  [[NEPathRule alloc] initWithSigningIdentifier:objc_claimAutoreleasedReturnValue()];
  operator new();
}

void sub_101470ED8(id *a1)
{
  sub_100021394(a1);

  operator delete();
}

id sub_101470F24(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2 * (a2 == 0);
  }

  return [*(a1 + 8) setCellularBehavior:v2];
}

id sub_101470F40(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2 * (a2 == 0);
  }

  return [*(a1 + 8) setWifiBehavior:v2];
}

void sub_101470F7C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3E9C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void NetworkEmergencyNumbers::create(capabilities::ct *a1@<X0>, void *a4@<X8>)
{
  if (capabilities::ct::getRadioModuleType(a1) == 2)
  {
    memset(v5, 0, sizeof(v5));
    sub_1011CF58C(v5);
    operator new();
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_1014710D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a13;
  sub_1000087B4(&a16);
  _Unwind_Resume(a1);
}