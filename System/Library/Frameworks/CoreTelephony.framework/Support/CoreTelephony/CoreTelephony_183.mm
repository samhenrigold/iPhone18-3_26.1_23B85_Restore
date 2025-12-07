uint64_t sub_10157BBA0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10157BC68(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4DF78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10157BCA0(void *a1, xpc_object_t *a2)
{
  v12 = 0;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v13 = 0;
    ctu::rest::detail::read_enum_string_value(&v13, a2, v5);
    v12 = v13;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    v12 = xpc::dyn_cast_or_default(a2, 0, v5);
  }

  v8 = a1[2];
  v9 = a1[3];
  v10 = (a1[1] + (v9 >> 1));
  if (v9)
  {
    v8 = *(*v10 + v8);
  }

  return v8(v10, &v12);
}

uint64_t sub_10157BD88(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10157BE50(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4DFF8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10157BE88(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  read_rest_value(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_100009970(&v9, v10);
}

uint64_t sub_10157BF60(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10157C028(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E078;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10157C060(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  read_rest_value(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_1001A904C(&v9, v10);
}

uint64_t sub_10157C138(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10157C200(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E0F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10157C238(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_1009DE138(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_100009970(&v9, v10);
}

uint64_t sub_10157C310(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10157C3D8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E178;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10157C410(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_1008E2524(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_100009970(&v9, v10);
}

uint64_t sub_10157C4E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10157C5A4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F4E1F8;
  a2[1] = v2;
  return result;
}

uint64_t sub_10157C5D8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10157C6A0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E278;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10157C6D8(void *a1, xpc_object_t *a2)
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

uint64_t sub_10157C7B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10157C878(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E2F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10157C8B0(void *a1)
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

uint64_t sub_10157C8F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10157C9C0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E378;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10157C9F8(void *a1)
{
  *__p = 0u;
  v6 = 0u;
  rest::read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4, __p);
  if (SBYTE7(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10157CA8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10157CAA8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10157CAF4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 128);
  v3 = *(*a1 + 24);
  object = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = *(v1 + 8);
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v6);
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = v8;
        v10 = v5 + 56;
        if (!v5)
        {
          v10 = 0;
        }

        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v14 = v10;
        v15 = v8;
        std::__shared_weak_count::__release_weak(v7);
        sub_100004A34(v9);
      }

      else
      {
        v14 = 0;
        v15 = 0;
        std::__shared_weak_count::__release_weak(v7);
      }

      (*(*v2 + 48))(group, v2, &object, &v14);
      v11 = *group;
      group[0] = 0;
      group[1] = 0;
      v12 = *(v1 + 192);
      *(v1 + 184) = v11;
      if (v12)
      {
        sub_100004A34(v12);
        if (group[1])
        {
          sub_100004A34(group[1]);
        }
      }

      if (v15)
      {
        std::__shared_weak_count::__release_weak(v15);
      }

      if (object)
      {
        dispatch_release(object);
      }

      v13 = *(v1 + 184);
      group[0] = 0;
      (*(*v13 + 16))(v13, group);
      if (group[0])
      {
        dispatch_group_leave(group[0]);
        if (group[0])
        {
          dispatch_release(group[0]);
        }
      }

      (*(**(v1 + 184) + 24))(*(v1 + 184));
      sub_10156CCEC(v1);
      operator delete();
    }
  }

  sub_100013CC4();
}

void sub_10157CCC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  operator delete();
}

void sub_10157CD28(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 128);
  v3 = *(*a1 + 24);
  object = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = *(v1 + 8);
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v6);
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = v8;
        v10 = v5 + 56;
        if (!v5)
        {
          v10 = 0;
        }

        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v14 = v10;
        v15 = v8;
        std::__shared_weak_count::__release_weak(v7);
        sub_100004A34(v9);
      }

      else
      {
        v14 = 0;
        v15 = 0;
        std::__shared_weak_count::__release_weak(v7);
      }

      (*(*v2 + 40))(group, v2, &object, &v14);
      v11 = *group;
      group[0] = 0;
      group[1] = 0;
      v12 = *(v1 + 192);
      *(v1 + 184) = v11;
      if (v12)
      {
        sub_100004A34(v12);
        if (group[1])
        {
          sub_100004A34(group[1]);
        }
      }

      if (v15)
      {
        std::__shared_weak_count::__release_weak(v15);
      }

      if (object)
      {
        dispatch_release(object);
      }

      v13 = *(v1 + 184);
      group[0] = 0;
      (*(*v13 + 16))(v13, group);
      if (group[0])
      {
        dispatch_group_leave(group[0]);
        if (group[0])
        {
          dispatch_release(group[0]);
        }
      }

      (*(**(v1 + 184) + 24))(*(v1 + 184));
      sub_10156CCEC(v1);
      operator delete();
    }
  }

  sub_100013CC4();
}

void sub_10157CEF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  operator delete();
}

void sub_10157CF5C(uint64_t **a1)
{
  v9 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 240);
  if (v3)
  {
    v4 = *(v1 + 2);
    v5 = *(v2 + 240);
    while (1)
    {
      v6 = *(v5 + 8);
      if (v4 >= v6)
      {
        if (v6 >= v4)
        {
          v8 = *(v1 + 3);
          *(sub_10000BA08(v3, v4) + 161) = v8 == 2;
          *(sub_10000BA08(*(v2 + 240), *(v1 + 2)) + 160) = 1;
          sub_10156DD80(v2, *(v1 + 2));
          goto LABEL_12;
        }

        ++v5;
      }

      v5 = *v5;
      if (!v5)
      {
        goto LABEL_9;
      }
    }
  }

  v4 = *(v1 + 2);
LABEL_9:
  v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v11 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

LABEL_12:
  operator delete();
}

void sub_10157D0F4(uint64_t **a1)
{
  v11 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 240);
  if (v3)
  {
    v4 = *(v1 + 2);
    v5 = *(v2 + 240);
    while (1)
    {
      v6 = *(v5 + 8);
      if (v4 >= v6)
      {
        if (v6 >= v4)
        {
          v8 = sub_10000BA08(v3, v4);
          if (*(v8 + 165) != *(v1 + 12))
          {
            v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v10 = CSIBOOLAsString(*(v1 + 12));
              *buf = 136315138;
              v13 = v10;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I UT Connection: [Available:%s]", buf, 0xCu);
            }

            *(v8 + 165) = *(v1 + 6);
            sub_10156DD80(v2, *(v1 + 2));
          }

          goto LABEL_11;
        }

        ++v5;
      }

      v5 = *v5;
      if (!v5)
      {
        goto LABEL_9;
      }
    }
  }

  v4 = *(v1 + 2);
LABEL_9:
  v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v13 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

LABEL_11:
  operator delete();
}

void sub_10157D304(uint64_t **a1)
{
  v10 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 240);
  if (v3)
  {
    v4 = *(v1 + 2);
    v5 = *(v2 + 240);
    while (1)
    {
      v6 = *(v5 + 8);
      if (v4 >= v6)
      {
        if (v6 >= v4)
        {
          if (*(sub_10000BA08(v3, v4) + 167) != *(v1 + 12))
          {
            v8 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              v9 = CSIBOOLAsString(*(v1 + 12));
              *buf = 136315138;
              v12 = v9;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I EmLoc Connection: [Available:%s]", buf, 0xCu);
            }

            *(sub_10000BA08(*(v2 + 240), *(v1 + 2)) + 167) = *(v1 + 6);
            sub_10156DD80(v2, *(v1 + 2));
          }

          goto LABEL_11;
        }

        ++v5;
      }

      v5 = *v5;
      if (!v5)
      {
        goto LABEL_9;
      }
    }
  }

  v4 = *(v1 + 2);
LABEL_9:
  v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v12 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

LABEL_11:
  operator delete();
}

uint64_t *sub_10157D51C(uint64_t *a1)
{
  v1 = *a1;
  v48 = a1;
  v49 = v1;
  v2 = *v1;
  ServiceMap = Registry::getServiceMap(*(*v1 + 96));
  v4 = ServiceMap;
  v6 = v5;
  if (v5 < 0)
  {
    v7 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
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
  v10 = sub_100009510(&v4[1].__m_.__sig, buf);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      if (!v12)
      {
        goto LABEL_7;
      }

LABEL_11:
      (*(*v12 + 112))(v12);
      v50 = 0;
      sub_10000501C(buf, "SettingsModel::fCLIRStatus");
      v15 = (*(*v12 + 24))(v12, buf, &v50);
      v16 = v15;
      if (v53 < 0)
      {
        operator delete(*buf);
        if ((v16 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else if ((v15 & 1) == 0)
      {
        goto LABEL_18;
      }

      v17 = *(v2 + 40);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "SettingsModel::fCLIRStatus";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Migrating %s property", buf, 0xCu);
      }

      operator new();
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v4);
  v11 = 0;
  v13 = 1;
  if (v12)
  {
    goto LABEL_11;
  }

LABEL_7:
  v14 = *(v2 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "CSIPersistentPropertiesInterface is not set!", buf, 2u);
  }

LABEL_18:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v18 = Registry::getServiceMap(*(v2 + 96));
  v19 = v18;
  v20 = v5;
  if (v5 < 0)
  {
    v21 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
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
  *buf = v20;
  v24 = sub_100009510(&v19[1].__m_.__sig, buf);
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
      if (!v26)
      {
        goto LABEL_26;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v26 = 0;
  }

  std::mutex::unlock(v19);
  v25 = 0;
  v27 = 1;
  if (!v26)
  {
LABEL_26:
    v28 = *(v2 + 40);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "CSIPersistentPropertiesInterface is not set!", buf, 2u);
    }

    goto LABEL_41;
  }

LABEL_30:
  (*(*v26 + 112))(v26);
  LOBYTE(v51) = 0;
  sub_10000501C(buf, "SettingsModel::fCallWaitingStatus");
  v29 = (*(*v26 + 32))(v26, buf, &v51);
  v30 = v29;
  if (v53 < 0)
  {
    operator delete(*buf);
    if ((v30 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if ((v29 & 1) == 0)
  {
    goto LABEL_41;
  }

  v31 = *(v2 + 40);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "SettingsModel::fCallWaitingStatus";
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I Migrating %s property", buf, 0xCu);
  }

  if ((*(**(v2 + 184) + 96))(*(v2 + 184), 1, v51))
  {
    sub_10156D3B4(v2, 1);
    sub_10000501C(buf, "SettingsModel::fCallWaitingStatus");
    (*(*v26 + 96))(v26, buf);
    if (v53 < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v32 = *(v2 + 40);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "SettingsModel::fCallWaitingStatus";
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#N Failed to migrate %s property", buf, 0xCu);
    }
  }

LABEL_41:
  if ((v27 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  v33 = Registry::getServiceMap(*(v2 + 96));
  v34 = v33;
  if (v5 < 0)
  {
    v35 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v36 = 5381;
    do
    {
      v5 = v36;
      v37 = *v35++;
      v36 = (33 * v36) ^ v37;
    }

    while (v37);
  }

  std::mutex::lock(v33);
  *buf = v5;
  v38 = sub_100009510(&v34[1].__m_.__sig, buf);
  if (v38)
  {
    v40 = v38[3];
    v39 = v38[4];
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v34);
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v39);
      v41 = 0;
      if (!v40)
      {
        goto LABEL_49;
      }

      goto LABEL_53;
    }
  }

  else
  {
    v40 = 0;
  }

  std::mutex::unlock(v34);
  v39 = 0;
  v41 = 1;
  if (!v40)
  {
LABEL_49:
    v42 = *(v2 + 40);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "CSIPersistentPropertiesInterface is not set!", buf, 2u);
    }

    goto LABEL_64;
  }

LABEL_53:
  (*(*v40 + 112))(v40);
  LOBYTE(v51) = 0;
  sub_10000501C(buf, "SettingsModel::fAutoAnswer");
  v43 = (*(*v40 + 32))(v40, buf, &v51);
  v44 = v43;
  if (v53 < 0)
  {
    operator delete(*buf);
    if ((v44 & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  else if ((v43 & 1) == 0)
  {
    goto LABEL_64;
  }

  v45 = *(v2 + 40);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "SettingsModel::fAutoAnswer";
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I Migrating %s property", buf, 0xCu);
  }

  if ((*(**(v2 + 184) + 120))(*(v2 + 184), 1, v51))
  {
    sub_10156D894(v2, 1);
    sub_10000501C(buf, "SettingsModel::fAutoAnswer");
    (*(*v40 + 96))(v40, buf);
    if (v53 < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v46 = *(v2 + 40);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "SettingsModel::fAutoAnswer";
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#N Failed to migrate %s property", buf, 0xCu);
    }
  }

LABEL_64:
  if ((v41 & 1) == 0)
  {
    sub_100004A34(v39);
  }

  sub_1000FF844(&v49);
  return sub_1000049E0(&v48);
}

void sub_10157DDE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

void sub_10157DEE8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F4E3F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_10157DF44(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v9 = v5;
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10156CE14(v2, v3, &v9);
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_1001FF3DC(&v8);
  return sub_1000049E0(&v7);
}

void sub_10157DFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1001FF3DC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10157DFDC(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v9 = v5;
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10156D0E4(v2, v3, &v9);
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_1001FF3DC(&v8);
  return sub_1000049E0(&v7);
}

void sub_10157E04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1001FF3DC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_10157E074(void ****a1)
{
  v1 = a1;
  sub_10156D3B4(**a1, *(*a1 + 2));
  operator delete();
}

void sub_10157E0F8(uint64_t **a1)
{
  v1 = a1;
  sub_10156D894(**a1, *(*a1 + 2));
  operator delete();
}

void sub_10157E17C(uint64_t **a1)
{
  v1 = a1;
  sub_10156DD80(**a1, *(*a1 + 2));
  operator delete();
}

void sub_10157E200(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  v5 = v3[2];
  v6 = *(*v3 + 240);
  if (v6)
  {
    v7 = *(*v3 + 240);
    do
    {
      v8 = *(v7 + 8);
      if (v8 <= v5)
      {
        if (v8 >= v5)
        {
          v10 = sub_10000BA08(v6, v5);
          v11 = v10[2];
          *a2 = v10[1];
          a2[1] = v11;
          if (v11)
          {
            atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
          }

          return;
        }

        ++v7;
      }

      v7 = *v7;
    }

    while (v7);
  }

  v9 = *(*(**(v4 + 48) + 16))(*(v4 + 48), v5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v12 = 136315138;
    v13 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &v12, 0xCu);
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_10157E338(uint64_t **a1)
{
  v4 = a1;
  v1 = *a1;
  v2 = **a1;
  if ((sub_10156FBF0(v2, *(*a1 + 2)) & 1) == 0)
  {
    v3 = *(v1 + 2);
    v5[0] = off_101F4E468;
    v5[1] = v2;
    v5[2] = v3;
    v5[3] = v5;
    sub_1015715F4(v2, v3, v5);
    sub_10002B644(v5);
  }

  operator delete();
}

void sub_10157E414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_10157E4BC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E468;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10157E528(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10157E588(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = *(v2 + 240);
  if (v4)
  {
    v5 = *(v1 + 3);
    v6 = *(v2 + 240);
    do
    {
      v7 = *(v6 + 8);
      if (v7 <= v3)
      {
        if (v7 >= v3)
        {
          if (sub_10000BA08(v4, v3)[1])
          {
            v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v10 = sub_10000BA08(*(v2 + 240), v3);
              v11 = (*(*v10[1] + 48))(v10[1]);
              *buf = 136315138;
              *&buf[4] = v11;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Issuing set CLIR request to %s", buf, 0xCu);
            }

            v12 = sub_10000BA08(*(v2 + 240), v3);
            (*(*v12[1] + 160))(v12[1], v3, v5);
          }

          v13 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = v5;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Saving CLIR value %d internally", buf, 8u);
          }

          v14 = *(v2 + 240);
          if (!v14)
          {
LABEL_21:
            v17 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = subscriber::asString();
              *buf = 136315138;
              *&buf[4] = v18;
              _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
            }

            goto LABEL_51;
          }

          v15 = *(v2 + 240);
          while (1)
          {
            v16 = *(v15 + 8);
            if (v16 <= v3)
            {
              if (v16 >= v3)
              {
                if (!sub_10000BA08(v14, v3)[18])
                {
                  v19 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I CLIR Model was not initialized, initializing it", buf, 2u);
                  }

                  sub_10000BA08(*(v2 + 240), v3);
                  operator new();
                }

                if (v5 > 1)
                {
                  if (v5 == 2)
                  {
                    v24 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Presentation Permanent", buf, 2u);
                    }

                    v21 = 1;
                  }

                  else
                  {
                    if (v5 != 3)
                    {
                      goto LABEL_44;
                    }

                    v22 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
                    v21 = 0;
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Presentation Not Provisioned", buf, 2u);
                      v21 = 0;
                    }
                  }
                }

                else
                {
                  if (v5)
                  {
                    if (v5 == 1)
                    {
                      v20 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
                      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        v21 = 2;
                        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Presentation Restricted", buf, 2u);
                      }

                      else
                      {
                        v21 = 2;
                      }

                      goto LABEL_43;
                    }

LABEL_44:
                    v25 = sub_10000BA08(*(v2 + 240), v3)[18];
                    v26 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
                    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
                    if (v25)
                    {
                      if (v27)
                      {
                        sub_10000BA08(*(v2 + 240), v3);
                        v28 = asString();
                        sub_10000BA08(*(v2 + 240), v3);
                        v29 = asString();
                        *buf = 136315394;
                        *&buf[4] = v28;
                        *&buf[12] = 2080;
                        *&buf[14] = v29;
                        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Persisting CLIR user setting with Service Status %s, Provisioned Status %s", buf, 0x16u);
                      }

                      v30 = *(v2 + 184);
                      v31 = sub_10000BA08(*(v2 + 240), v3);
                      (*(*v30 + 48))(v30, v3, v31 + 18);
                    }

                    else if (v27)
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I CLIR Model is invalid", buf, 2u);
                    }

                    sub_1015707E0(v2, v3);
LABEL_51:
                    *buf = off_101F4E548;
                    *&buf[8] = v2;
                    *&buf[16] = v3;
                    v33 = buf;
                    *&buf[20] = 0;
                    (*(**(v2 + 112) + 184))(*(v2 + 112), v3, 0);
                    (*(**(v2 + 384) + 40))(*(v2 + 384), v3, 0);
                    sub_10002B644(buf);
LABEL_52:
                    operator delete();
                  }

                  v23 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Presentation Allowed", buf, 2u);
                  }

                  v21 = 3;
                }

LABEL_43:
                *(sub_10000BA08(*(v2 + 240), v3)[18] + 1) = v21;
                goto LABEL_44;
              }

              ++v15;
            }

            v15 = *v15;
            if (!v15)
            {
              goto LABEL_21;
            }
          }
        }

        ++v6;
      }

      v6 = *v6;
    }

    while (v6);
  }

  v8 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

  goto LABEL_52;
}

void sub_10157ED58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_10157EE0C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E548;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10157EE78(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10157EEC4(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

__n128 sub_10157EFA4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E5C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10157F00C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10157F058(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(*a1 + 240);
  v5 = *v2;
  if (!v4)
  {
LABEL_7:
    v8 = *(*(**(v3 + 48) + 16))(*(v3 + 48), v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
    }

    return 0;
  }

  v6 = v4;
  while (1)
  {
    v7 = *(v6 + 8);
    if (v5 >= v7)
    {
      break;
    }

LABEL_6:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (v7 < v5)
  {
    ++v6;
    goto LABEL_6;
  }

  v14 = 0;
  if (!sub_10000BA08(v4, v5)[5])
  {
    v13 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *a1[1]);
    v9 = 0;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      return v9;
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Call barring values are not available", buf, 2u);
    return 0;
  }

  v11 = sub_10000BA08(*(v3 + 240), *a1[1]);
  v9 = sub_1012D883C(v11[5], *a1[2], *a1[3], &v14);
  v12 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *a1[1]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v16) = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Call Barring value availability %d", buf, 8u);
  }

  return v9;
}

uint64_t *sub_10157F2A4(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  sub_101571220(*v1, *(v1 + 8), *(v1 + 40), *(v1 + 44));
  sub_10157F30C(&v4);
  return sub_1000049E0(&v3);
}

void sub_10157F2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10157F30C(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10157F30C(uint64_t *a1)
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

__n128 sub_10157F3E4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E668;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t sub_10157F458(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10157F4C4(uint64_t *a1)
{
  v1 = *a1;
  v18 = a1;
  v19 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(*v1 + 240);
  if (!v4)
  {
LABEL_7:
    v11 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v5 = *(v1 + 12);
  v6 = *(v1 + 40);
  v7 = *(v1 + 44);
  v8 = *(*v1 + 240);
  v9 = *(v1 + 48);
  while (1)
  {
    v10 = *(v8 + 8);
    if (v10 <= v3)
    {
      break;
    }

LABEL_6:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  if (v10 < v3)
  {
    ++v8;
    goto LABEL_6;
  }

  if (!sub_10000BA08(v4, *(v1 + 8))[1])
  {
    goto LABEL_18;
  }

  if (sub_10156FE88(v2, v3) && sub_10000BA08(*(v2 + 240), v3)[1] != *(v2 + 152))
  {
    v13 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I VoLTE call is active, ignoring the request to save Call Barring value because it would trigger CSFB", buf, 2u);
    }

    goto LABEL_18;
  }

  v14 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = sub_10000BA08(*(v2 + 240), v3);
    v16 = (*(*v15[1] + 48))(v15[1]);
    *buf = 136315138;
    v21 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Issuing Set Call Barring request to %s", buf, 0xCu);
  }

  v17 = sub_10000BA08(*(v2 + 240), v3);
  if (((*(*v17[1] + 88))(v17[1], v3, v6, v7, v1 + 16, v5, v9) & 1) == 0)
  {
LABEL_18:
    operator new();
  }

LABEL_9:
  sub_10157F880(&v19);
  return sub_1000049E0(&v18);
}

void sub_10157F854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a12)
{
  sub_10002B644(&a12);
  sub_10157F880(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10157F880(uint64_t *a1)
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

__n128 sub_10157F958(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E708;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t sub_10157F9D0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10157FA1C(int **a1)
{
  v1 = *a1;
  v16 = a1;
  v17 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(*v1 + 240);
  if (!v4)
  {
LABEL_7:
    v8 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
    }

    goto LABEL_9;
  }

  v5 = *(v1 + 12);
  v6 = *(*v1 + 240);
  while (1)
  {
    v7 = *(v6 + 8);
    if (v7 <= v3)
    {
      break;
    }

LABEL_6:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (v7 < v3)
  {
    ++v6;
    goto LABEL_6;
  }

  if (!sub_10000BA08(v4, *(v1 + 8))[1])
  {
    goto LABEL_14;
  }

  v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = sub_10000BA08(*(v2 + 240), v3);
    v12 = (*(*v11[1] + 48))(v11[1]);
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Issuing Set Call Barring request to %s", &buf, 0xCu);
  }

  v13 = sub_10000BA08(*(v2 + 240), v3);
  if (((*(*v13[1] + 96))(v13[1], v3, v5, v1 + 16, v1 + 40, v1 + 64) & 1) == 0)
  {
LABEL_14:
    *&buf = off_101F4E788;
    *(&buf + 1) = v2;
    v19 = v3 | (v5 << 32);
    p_buf = &buf;
    v14 = *(v2 + 112);
    v15 = sub_10157FEE8(v5);
    (*(*v14 + 152))(v14, v3, v15);
    (*(**(v2 + 384) + 40))(*(v2 + 384), v3, 1);
    sub_10002B644(&buf);
  }

LABEL_9:
  sub_10157FD18(&v17);
  return sub_1000049E0(&v16);
}

void sub_10157FCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a12)
{
  sub_10002B644(&a12);
  sub_10157FD18(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10157FD18(uint64_t *a1)
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

__n128 sub_10157FE04(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E788;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10157FE34(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 112);
  v2 = *(a1 + 16);
  v3 = sub_10157FEE8(*(a1 + 20));
  v4 = *(*v1 + 152);

  return v4(v1, v2, v3);
}

uint64_t sub_10157FE9C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10157FEE8(unsigned int a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return asc_101992EEE[a1];
  }
}

void sub_10157FF08(uint64_t **a1)
{
  v4 = a1;
  v1 = *a1;
  v2 = **a1;
  if ((sub_101571F9C(v2, *(*a1 + 2), *(*a1 + 3)) & 1) == 0)
  {
    v3 = v1[1];
    v5[0] = off_101F4E808;
    v5[1] = v2;
    v5[2] = v3;
    v5[3] = v5;
    sub_1015715F4(v2, v3, v5);
    sub_10002B644(v5);
  }

  operator delete();
}

void sub_10157FFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_101580084(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E808;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1015800E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101580134(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = *(v2 + 240);
  if (!v4)
  {
LABEL_7:
    v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
    }

    goto LABEL_9;
  }

  v5 = *(v1 + 12);
  v6 = *(v2 + 240);
  v7 = *(v1 + 4);
  v8 = *(v1 + 5);
  while (1)
  {
    v9 = *(v6 + 8);
    if (v9 <= v3)
    {
      if (v9 >= v3)
      {
        if (sub_10000BA08(v4, v3)[1])
        {
          if (sub_10156FE88(v2, v3) && sub_10000BA08(*(v2 + 240), v3)[1] != *(v2 + 152))
          {
            v13 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              v14 = "#I VoLTE call is active, ignoring the request to save Call Waiting value because it would trigger CSFB";
              goto LABEL_27;
            }

            goto LABEL_9;
          }

          v15 = &_mh_execute_header;
          if (!v5)
          {
            v15 = 0;
          }

          v16 = v15 | v3;
          v17 = v7 | (v8 << 32);
          v18 = *(v2 + 360);
          if (v18 > 1)
          {
            v24 = (*(*(v2 + 328) + (((v18 + *(v2 + 352) - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v18 + *(v2 + 352) - 1));
            *v24 = v16;
            v24[1] = v17;
            v25 = *(v2 + 360);
          }

          else
          {
            v32 = v16;
            v19 = *(v2 + 336);
            v20 = *(v2 + 328);
            if (v19 == v20)
            {
              v21 = 0;
            }

            else
            {
              v21 = 32 * (v19 - v20) - 1;
            }

            v22 = *(v2 + 352);
            v23 = v22 + v18;
            if (v21 == v23)
            {
              if (v22 < 0x100)
              {
                v26 = *(v2 + 344);
                v27 = *(v2 + 320);
                if (v19 - v20 < (v26 - v27))
                {
                  operator new();
                }

                if (v26 == v27)
                {
                  v28 = 1;
                }

                else
                {
                  v28 = (v26 - v27) >> 2;
                }

                sub_100EF4E80(v28);
              }

              *(v2 + 352) = v22 - 256;
              *&buf = *v20;
              *(v2 + 328) = v20 + 8;
              sub_1010F098C((v2 + 320), &buf);
              v20 = *(v2 + 328);
              v23 = *(v2 + 360) + *(v2 + 352);
            }

            v29 = (*&v20[(v23 >> 5) & 0x7FFFFFFFFFFFFF8] + 16 * v23);
            *v29 = v32;
            v29[1] = v17;
            v25 = *(v2 + 360) + 1;
            *(v2 + 360) = v25;
          }

          if (v25 == 1)
          {
            v30 = *(v2 + 368);
            if (v30)
            {
              v31 = (*(*(v2 + 328) + ((*(v2 + 352) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(v2 + 352));
              (*(*v30 + 16))(v30, *v31, v31[1]);
            }
          }
        }

        else
        {
          v13 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            v14 = "#I Save call waiting failed, no command driver";
LABEL_27:
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, &buf, 2u);
          }

LABEL_9:
          v11 = *(v1 + 2);
          v12 = v11 | (*(v1 + 4) << 32);
          *&buf = off_101F4E888;
          *(&buf + 1) = v2;
          v34 = v12;
          p_buf = &buf;
          sub_1015715F4(v2, v11, &buf);
          sub_10002B644(&buf);
        }

        operator delete();
      }

      ++v6;
    }

    v6 = *v6;
    if (!v6)
    {
      goto LABEL_7;
    }
  }
}

void sub_1015808AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, char a14, char a15)
{
  operator delete(v16);
  if (v15)
  {
    operator delete(v15);
  }

  operator delete();
}

__n128 sub_101580984(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E888;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1015809EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101580A50(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(*a1 + 2);
  v3 = *(v1 + 240);
  if (v3)
  {
    v4 = *(*a1 + 3);
    do
    {
      v5 = *(v3 + 8);
      if (v5 <= v2)
      {
        if (v5 >= v2)
        {
          v7 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
          v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
          if (v4)
          {
            if (v8)
            {
              LOWORD(buf) = 0;
              _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Handling Calling Line Presentation APIs", &buf, 2u);
            }

            if (!sub_10000BA08(*(v1 + 240), v2)[1])
            {
              goto LABEL_25;
            }

            if (sub_10156FE88(v1, v2) && sub_10000BA08(*(v1 + 240), v2)[1] != *(v1 + 152))
            {
              v7 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
              if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(buf) = 0;
                v9 = "#I VoLTE call is active, ignoring request to fetch CLIP value because it would trigger CSFB";
                goto LABEL_21;
              }

              goto LABEL_25;
            }

            v10 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v11 = sub_10000BA08(*(v1 + 240), v2);
              v12 = (*(*v11[1] + 48))(v11[1]);
              LODWORD(buf) = 136315138;
              *(&buf + 4) = v12;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Issuing request to %s to fetch the CLIP Fetch", &buf, 0xCu);
            }

            v13 = sub_10000BA08(*(v1 + 240), v2);
            if (((*(*v13[1] + 128))(v13[1], v2) & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          else
          {
            if (v8)
            {
              LOWORD(buf) = 0;
              v9 = "#I Not handling Connected Line Presentation APIs";
LABEL_21:
              _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, &buf, 2u);
            }

LABEL_25:
            *&buf = off_101F4E928;
            *(&buf + 1) = v1;
            v15 = v2 | (v4 << 32);
            p_buf = &buf;
            (*(**(v1 + 112) + 208))(*(v1 + 112), v2, v4);
            (*(**(v1 + 384) + 40))(*(v1 + 384), v2, 1);
            sub_10002B644(&buf);
          }

LABEL_10:
          operator delete();
        }

        ++v3;
      }

      v3 = *v3;
    }

    while (v3);
  }

  v6 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

  goto LABEL_10;
}

void sub_101580E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_101580EE4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E928;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101580F48(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101580F94(unsigned int **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[2];
  v4 = *(v2 + 240);
  if (!v4)
  {
LABEL_8:
    v8 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
    }

    goto LABEL_10;
  }

  v6 = v1[3];
  v5 = v1[4];
  while (1)
  {
    v7 = *(v4 + 8);
    if (v7 <= v3)
    {
      if (v7 >= v3)
      {
        v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        if (v6)
        {
          if (v11)
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Handling Calling Line Presentation APIs", &buf, 2u);
          }

          if (!sub_10000BA08(*(v2 + 240), v3)[1])
          {
            goto LABEL_10;
          }

          if (sub_10156FE88(v2, v3) && sub_10000BA08(*(v2 + 240), v3)[1] != *(v2 + 152))
          {
            v12 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              v13 = "#I VoLTE call is active, ignoring request to save CLIP value because it would trigger CSFB";
              v14 = v12;
              goto LABEL_22;
            }

            goto LABEL_10;
          }

          v15 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = sub_10000BA08(*(v2 + 240), v3);
            v17 = (*(*v16[1] + 48))(v16[1]);
            LODWORD(buf) = 136315138;
            *(&buf + 4) = v17;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Issuing request to %s to save CLIP", &buf, 0xCu);
          }

          v18 = sub_10000BA08(*(v2 + 240), v3);
          if (((*(*v18[1] + 152))(v18[1], v3, v5) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v11)
          {
            LOWORD(buf) = 0;
            v13 = "#I Not handling Connected Line Presentation APIs";
            v14 = v10;
LABEL_22:
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &buf, 2u);
          }

LABEL_10:
          v9 = v1[2];
          *&buf = off_101F4E9A8;
          *(&buf + 1) = v2;
          v20 = v9;
          p_buf = &buf;
          sub_1015715F4(v2, v9, &buf);
          sub_10002B644(&buf);
        }

        operator delete();
      }

      ++v4;
    }

    v4 = *v4;
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void sub_101581338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_1015813EC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E9A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_101581454(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015814B8(uint64_t **a1)
{
  v12 = a1;
  v1 = **a1;
  v2 = *(*a1 + 2);
  v3 = *(v1 + 240);
  if (v3)
  {
    v4 = *(v1 + 240);
    do
    {
      v5 = *(v4 + 8);
      if (v5 <= v2)
      {
        if (v5 >= v2)
        {
          if (!sub_10000BA08(v3, v2)[1])
          {
            goto LABEL_18;
          }

          if (sub_10156FE88(v1, v2) && sub_10000BA08(*(v1 + 240), v2)[1] != *(v1 + 152))
          {
            v7 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I VoLTE call is active, ignoring request to fetch COLR value because it would trigger CSFB", &buf, 2u);
            }

            goto LABEL_18;
          }

          v8 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = sub_10000BA08(*(v1 + 240), v2);
            v10 = (*(*v9[1] + 48))(v9[1]);
            LODWORD(buf) = 136315138;
            *(&buf + 4) = v10;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Issuing request to %s to fetch the COLR Fetch", &buf, 0xCu);
          }

          v11 = sub_10000BA08(*(v1 + 240), v2);
          if (((*(*v11[1] + 136))(v11[1], v2) & 1) == 0)
          {
LABEL_18:
            *&buf = off_101F4EA48;
            *(&buf + 1) = v1;
            v14 = v2;
            p_buf = &buf;
            (*(**(v1 + 112) + 216))(*(v1 + 112), v2);
            (*(**(v1 + 384) + 40))(*(v1 + 384), v2, 1);
            sub_10002B644(&buf);
          }

LABEL_9:
          operator delete();
        }

        ++v4;
      }

      v4 = *v4;
    }

    while (v4);
  }

  v6 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

  goto LABEL_9;
}

void sub_101581804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_1015818B8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4EA48;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_101581920(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101581980(uint64_t **a1)
{
  v2 = **a1;
  v1 = (*a1)[1];
  v3 = *(v2 + 240);
  if (v3)
  {
    v4 = *(*a1 + 4);
    do
    {
      v5 = *(v3 + 8);
      if (v5 <= v1)
      {
        if (v5 >= v1)
        {
          v7 = *(v2 + 296);
          if (v7 <= 5)
          {
            v8 = *(v2 + 272);
            v9 = *(v2 + 264);
            if (v8 == v9)
            {
              v10 = 0;
            }

            else
            {
              v10 = 341 * ((v8 - v9) >> 3) - 1;
            }

            v11 = *(v2 + 288);
            v12 = v11 + v7;
            if (v10 == v11 + v7)
            {
              if (v11 < 0x155)
              {
                v13 = *(v2 + 280);
                v14 = *(v2 + 256);
                if (v8 - v9 < (v13 - v14))
                {
                  operator new();
                }

                if (v13 == v14)
                {
                  v15 = 1;
                }

                else
                {
                  v15 = (v13 - v14) >> 2;
                }

                sub_100EF4E80(v15);
              }

              *(v2 + 288) = v11 - 341;
              *buf = *v9;
              *(v2 + 264) = v9 + 8;
              sub_1010F098C((v2 + 256), buf);
              v9 = *(v2 + 264);
              v12 = *(v2 + 296) + *(v2 + 288);
            }

            v16 = *&v9[8 * (v12 / 0x155)] + 12 * (v12 % 0x155);
            *v16 = v1;
            *(v16 + 8) = v4;
            v17 = *(v2 + 296);
            *(v2 + 296) = v17 + 1;
            if (!v17)
            {
              v18 = *(v2 + 304);
              if (v18)
              {
                v19 = *(*(v2 + 264) + 8 * (*(v2 + 288) / 0x155uLL)) + 12 * (*(v2 + 288) % 0x155uLL);
                (*(*v18 + 16))(v18, *v19, *(v19 + 8));
              }
            }
          }

          v20 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = *(v2 + 296);
            *buf = 134217984;
            *&buf[4] = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Processed call forward fetch request, queue size is now %zu", buf, 0xCu);
          }

LABEL_9:
          operator delete();
        }

        ++v3;
      }

      v3 = *v3;
    }

    while (v3);
  }

  v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

  goto LABEL_9;
}

void sub_101582034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  operator delete(v13);
  if (v12)
  {
    operator delete(v12);
  }

  operator delete();
}

void sub_101582088(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (v3 < 0x155)
  {
    a2 = 1;
  }

  if (v3 > 0x2A9 || (a2 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 341;
  }
}

void sub_1015820E4(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      sub_100EF4E80((v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = (a1[2] - v7);
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void sub_1015821C0(uint64_t **a1)
{
  v6 = a1;
  v1 = **a1;
  v2 = *(*a1 + 2);
  v3 = *(*a1 + 3);
  v4 = *(*a1 + 4);
  v5 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v8 = v3;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Call Forward Fetch is going ahead for Request - Reason %d, Call Class 0x%04X", buf, 0xEu);
  }

  if ((sub_10157336C(v1, v2, v3, v4) & 1) == 0)
  {
    operator new();
  }

  operator delete();
}

void sub_101582350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_10158240C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4EAE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t sub_101582480(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1015824CC(uint64_t *a1)
{
  v1 = *a1;
  v31 = a1;
  v32 = v1;
  v2 = *v1;
  v3 = *(*v1 + 240);
  if (!v3)
  {
    v4 = *(v1 + 8);
LABEL_9:
    v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      buf.var0 = 136315138;
      *&buf.var1 = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
    }

    goto LABEL_11;
  }

  v4 = *(v1 + 8);
  v5 = *(*v1 + 240);
  while (1)
  {
    v6 = *(v5 + 8);
    if (v4 >= v6)
    {
      break;
    }

LABEL_6:
    v5 = *v5;
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  if (v6 < v4)
  {
    ++v5;
    goto LABEL_6;
  }

  v9 = *(v1 + 176);
  v10 = *(v1 + 180);
  v11 = v10 > 5;
  v12 = (1 << v10) & 0x34;
  if (!v11 && v12 != 0 && *(v1 + 12) == 1 && v9 == 0)
  {
    if (sub_10000BA08(v3, v4)[1] == *(v2 + 152))
    {
      v9 = 0;
    }

    else
    {
      v15 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(v1 + 180);
        buf.var0 = 67109120;
        buf.var1 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I The call forward reason is '%d', but no reply time provided, assuming 20 seconds", &buf, 8u);
      }

      v9 = 20;
    }
  }

  v17 = *(v1 + 8);
  v18 = *(v1 + 12);
  sub_1000AE428(&buf, v1 + 16);
  v19 = *(v1 + 180);
  v20 = *(v1 + 184);
  v21 = *(v1 + 188);
  if (sub_10000BA08(*(v2 + 240), v17)[1])
  {
    if (sub_10156FE88(v2, v17) && sub_10000BA08(*(v2 + 240), v17)[1] != *(v2 + 152))
    {
      v22 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v17);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *v44 = 0;
        v23 = "#I VoLTE call is active, ignoring the request to save Call Forward value because it would trigger CSFB";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    v24 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v17);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = sub_10000BA08(*(v2 + 240), v17);
      v26 = (*(*v25[1] + 48))(v25[1]);
      CSIPhoneNumber::getFullNumber(__p, &buf);
      v27 = __p;
      if (v34 < 0)
      {
        v27 = __p[0];
      }

      *v44 = 136316674;
      v45 = v26;
      v46 = 1024;
      v47 = v18;
      v48 = 2080;
      v49 = v27;
      v50 = 1024;
      v51 = v19;
      v52 = 1024;
      v53 = v20;
      v54 = 1024;
      v55 = v9;
      v56 = 1024;
      v57 = v21;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Sent the request to save Call Forward to %s with enabled %d, number %s, reason %d, class %d, Reply Timer %d, MMI Procedure %d", v44, 0x34u);
      if (v34 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v28 = sub_10000BA08(*(v2 + 240), v17);
    if ((5 * ((205 * v9) >> 10)) >= 0x1Eu)
    {
      v29 = 30;
    }

    else
    {
      v29 = (5 * ((205 * v9) >> 10));
    }

    v30 = (*(*v28[1] + 64))(v28[1], v17, v18, &buf, v19, v20, v29, v21);
  }

  else
  {
    v22 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v17);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v44 = 0;
      v23 = "#I SetCallForwarding failed, no command driver";
LABEL_42:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, v44, 2u);
    }

LABEL_43:
    v30 = 0;
  }

  if (v43 < 0)
  {
    operator delete(v42);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 < 0)
  {
    operator delete(v36);
  }

  if (*(&buf.var2.__rep_.__l + 23) < 0)
  {
    operator delete(buf.var2.__rep_.__l.__data_);
  }

  if ((v30 & 1) == 0)
  {
    operator new();
  }

LABEL_11:
  sub_101582A88(&v32);
  return sub_1000049E0(&v31);
}

void sub_101582A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  sub_10002B644(v3 - 176);
  sub_101582A88(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_101582A88(uint64_t *a1)
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

__n128 sub_101582BA0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4EB68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t sub_101582C18(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101582C88(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*v1 + 30);
  v3 = *v1[1];
  if (v2)
  {
    v4 = *(*v1 + 30);
    do
    {
      v5 = *(v4 + 8);
      if (v3 >= v5)
      {
        if (v5 >= v3)
        {
          v7 = *(sub_10000BA08(v2, v3)[3] + 48);
          return v7 & 1;
        }

        ++v4;
      }

      v4 = *v4;
    }

    while (v4);
  }

  v6 = *(*(**(*v1 + 6) + 16))(*(*v1 + 6), v3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315138;
    v10 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &v9, 0xCu);
  }

  v7 = 0;
  return v7 & 1;
}

uint64_t *sub_101582DA8(unsigned int **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(*v1 + 240);
  if (v3)
  {
    v4 = v1[2];
    v5 = *(*v1 + 240);
    do
    {
      v6 = *(v5 + 8);
      if (v4 >= v6)
      {
        if (v6 >= v4)
        {
          goto LABEL_12;
        }

        ++v5;
      }

      v5 = *v5;
    }

    while (v5);
  }

  else
  {
    v4 = v1[2];
  }

  v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v13 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

  sub_100632604((v1 + 4), 256);
  v3 = *(v2 + 240);
  LODWORD(v4) = v1[2];
LABEL_12:
  v8 = sub_10000BA08(v3, v4);
  sub_100632604((v1 + 4), *(v8[3] + 48) | 0x100);
  sub_1006325B4(&v11);
  return sub_1000049E0(&v10);
}

void sub_101582EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1006325B4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101582F18(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(*a1 + 2);
  v3 = *(v1 + 240);
  if (v3)
  {
    v4 = *(v1 + 240);
    do
    {
      v5 = *(v4 + 8);
      if (v5 <= v2)
      {
        if (v5 >= v2)
        {
          if (sub_10000BA08(v3, v2)[1])
          {
            if (sub_10156FE88(v1, v2) && sub_10000BA08(*(v1 + 240), v2)[1] != *(v1 + 152))
            {
              v7 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
              if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(buf) = 0;
                v8 = "#I VoLTE call is active, ignoring request to fetch Calling Name Presentation because it would trigger CSFB";
                goto LABEL_21;
              }

              goto LABEL_22;
            }

            v9 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v10 = sub_10000BA08(*(v1 + 240), v2);
              v11 = (*(*v10[1] + 48))(v10[1]);
              LODWORD(buf) = 136315138;
              *(&buf + 4) = v11;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Sent the Calling Name Presentation Fetch request to %s", &buf, 0xCu);
            }

            v12 = sub_10000BA08(*(v1 + 240), v2);
            if (((*(*v12[1] + 144))(v12[1], v2) & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v7 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              v8 = "#I fetch CNAP failed, no command driver";
LABEL_21:
              _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, &buf, 2u);
            }

LABEL_22:
            *&buf = off_101F4EC28;
            *(&buf + 1) = v1;
            v14 = v2;
            p_buf = &buf;
            (*(**(v1 + 112) + 256))();
            (*(**(v1 + 384) + 40))(*(v1 + 384), v2, 1);
            sub_10002B644(&buf);
          }

LABEL_9:
          operator delete();
        }

        ++v4;
      }

      v4 = *v4;
    }

    while (v4);
  }

  v6 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

  goto LABEL_9;
}

void sub_1015832D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_101583384(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4EC28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1015833F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101583454(void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = v2[30];
  if (v3)
  {
    v4 = *(v1 + 2);
    v5 = v2[30];
    while (1)
    {
      v6 = *(v5 + 8);
      if (v4 >= v6)
      {
        if (v6 >= v4)
        {
          if (sub_10000BA08(v3, v4)[1])
          {
            if (!sub_10156FE88(v2, *(v1 + 2)) || sub_10000BA08(v2[30], *(v1 + 2))[1] == v2[19])
            {
              (*(*v2[17] + 168))(v2[17], *(v1 + 2), *(v1 + 12));
              (*(*v2[19] + 168))(v2[19], *(v1 + 2), *(v1 + 12));
              v9 = *(v1 + 2);
              v10 = *(v1 + 12);
              v11 = *(*(*v2[6] + 16))(v2[6], v9);
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                v12 = "OFF";
                if (v10)
                {
                  v12 = "ON";
                }

                *buf = 136315138;
                v14 = v12;
                _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Persisting Auto Answer status %s", buf, 0xCu);
              }

              (*(*v2[23] + 120))(v2[23], v9, v10);
            }

            else
            {
              v8 = *(*(*v2[6] + 16))(v2[6], *(v1 + 2));
              if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I VoLTE call is active, ignoring request to enable Auto Answer Mode", buf, 2u);
              }
            }
          }

          goto LABEL_11;
        }

        ++v5;
      }

      v5 = *v5;
      if (!v5)
      {
        goto LABEL_9;
      }
    }
  }

  v4 = *(v1 + 2);
LABEL_9:
  v7 = *(*(*v2[6] + 16))(v2[6], v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v14 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

LABEL_11:
  operator delete();
}

void sub_10158378C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 240);
  if (v3)
  {
    v4 = *(v1 + 2);
    while (1)
    {
      v5 = *(v3 + 8);
      if (v4 >= v5)
      {
        if (v5 >= v4)
        {
          v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48));
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I New SIM Info available, restoring the Call Forward Settings", &buf, 2u);
          }

          ServiceMap = Registry::getServiceMap(*(v2 + 96));
          v9 = ServiceMap;
          if (v10 < 0)
          {
            v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
            v12 = 5381;
            do
            {
              v10 = v12;
              v13 = *v11++;
              v12 = (33 * v12) ^ v13;
            }

            while (v13);
          }

          std::mutex::lock(ServiceMap);
          *&buf = v10;
          v14 = sub_100009510(&v9[1].__m_.__sig, &buf);
          if (v14)
          {
            v16 = v14[3];
            v15 = v14[4];
            if (v15)
            {
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v9);
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v15);
              v17 = 0;
              if (!v16)
              {
LABEL_20:
                v18 = *(v2 + 40);
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(buf) = 0;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#E Subscriber sim controller not found.", &buf, 2u);
                }

                goto LABEL_38;
              }

LABEL_24:
              v29 = 0;
              buf = 0uLL;
              (*(*v16 + 200))(v16, *(v1 + 2), 0, &buf);
              v19 = sub_10000BA08(*(v2 + 240), *(v1 + 2));
              sub_1012D8A1C(v19[3]);
              v20 = HIBYTE(v29);
              if (v29 < 0)
              {
                v20 = *(&buf + 1);
              }

              if (v20)
              {
                v21 = sub_10000BA08(*(v2 + 240), *(v1 + 2));
                if (sub_1012D8BFC(v21[3], &buf))
                {
                  v22 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    *v27 = 0;
                    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I ICCID has changed, resetting CLIR network info if available", v27, 2u);
                  }

                  sub_101570A74(v2, *(v1 + 2));
                }
              }

              v23 = *(v2 + 224);
              if (v23)
              {
                v24 = std::__shared_weak_count::lock(v23);
                if (v24)
                {
                  v25 = v24;
                  v26 = *(v2 + 216);
                  if (v26)
                  {
                    (*(*v26 + 328))(v26, *(v1 + 2));
                  }

                  sub_100004A34(v25);
                }
              }

              if (SHIBYTE(v29) < 0)
              {
                operator delete(buf);
              }

LABEL_38:
              if ((v17 & 1) == 0)
              {
                sub_100004A34(v15);
              }

LABEL_11:
              operator delete();
            }
          }

          else
          {
            v16 = 0;
          }

          std::mutex::unlock(v9);
          v15 = 0;
          v17 = 1;
          if (!v16)
          {
            goto LABEL_20;
          }

          goto LABEL_24;
        }

        ++v3;
      }

      v3 = *v3;
      if (!v3)
      {
        goto LABEL_9;
      }
    }
  }

  v4 = *(v1 + 2);
LABEL_9:
  v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

  goto LABEL_11;
}

void sub_101583B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_100004A34(v19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  operator delete();
}

void sub_101583BF0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 240);
  if (v3)
  {
    v4 = *(v1 + 2);
    v5 = *(v2 + 240);
    while (1)
    {
      v6 = *(v5 + 8);
      if (v4 >= v6)
      {
        if (v6 >= v4)
        {
          v8 = *(v2 + 112);
          v9 = sub_10000BA08(v3, *(v1 + 2));
          (*(*v8 + 48))(v8, v4, *(v9[3] + 48));
          goto LABEL_12;
        }

        ++v5;
      }

      v5 = *v5;
      if (!v5)
      {
        goto LABEL_9;
      }
    }
  }

  v4 = *(v1 + 2);
LABEL_9:
  v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v11 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

LABEL_12:
  operator delete();
}

void sub_101583D98(uint64_t a1)
{
  v1 = a1;
  (*(**(**a1 + 384) + 40))(*(**a1 + 384), *(*a1 + 8), 0);
  operator delete();
}

void sub_101583E44(uint64_t a1)
{
  v1 = a1;
  (*(**(**a1 + 384) + 40))(*(**a1 + 384), *(*a1 + 8), *(*a1 + 12));
  operator delete();
}

uint64_t *sub_101583EEC(uint64_t *a1)
{
  v1 = *a1;
  v25 = a1;
  v26 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(v2 + 240);
  if (v6)
  {
    v7 = *(v1 + 32);
    v8 = *(v1 + 36);
    do
    {
      v9 = *(v6 + 8);
      if (v9 <= v3)
      {
        if (v9 >= v3)
        {
          v11 = 0;
          if (*v4 != v4[1])
          {
            v12 = *v4 + 8;
            do
            {
              v13 = v12 - 8;
              v14 = sub_10000BA08(*(v2 + 240), v3)[3];
              v15 = *(v12 - 6);
              *buf = *(v12 - 8);
              buf[2] = v15;
              if (*(v12 + 23) < 0)
              {
                sub_100005F2C(&__p[4], *v12, *(v12 + 8));
              }

              else
              {
                v16 = *v12;
                v38 = *(v12 + 16);
                *&__p[4] = v16;
              }

              v39 = *(v12 + 24);
              sub_1012D7E00(v14, v7, buf);
              if (SHIBYTE(v38) < 0)
              {
                operator delete(*&__p[4]);
              }

              v11 = *(v12 - 6) | v11;
              v12 += 40;
            }

            while (v13 + 40 != v4[1]);
          }

          v17 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *v30 = 67109120;
            v31 = v11;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Classes covered are %d", v30, 8u);
          }

          if (!v8)
          {
            v18 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *v30 = 0;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Call class was not provided, interpreting it as ALL", v30, 2u);
            }

            v8 = 255;
          }

          v19 = 0;
          while (1)
          {
            v20 = 1 << v19;
            v21 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *v27 = 67109376;
              *&v27[4] = 1 << v19;
              v28 = 1024;
              v29 = v8;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Checking for service class %d and call class in the request: %d", v27, 0xEu);
            }

            if ((v20 & v8) != 0 && (v20 & v11) == 0)
            {
              v22 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *v27 = 67109120;
                *&v27[4] = 1 << v19;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Baseband response does not contain information on class %d, assuming inactive", v27, 8u);
              }

              v23 = sub_10000BA08(*(v2 + 240), v3)[3];
              *v30 = 0;
              v30[2] = 1 << v19;
              v33 = 0;
              v34 = 0;
              v32 = 0;
              v35 = 0;
              sub_1012D7E00(v23, v7, v30);
              if (SHIBYTE(v34) < 0)
              {
                operator delete(v32);
              }
            }

            if (++v19 == 8)
            {
              operator new();
            }
          }
        }

        ++v6;
      }

      v6 = *v6;
    }

    while (v6);
  }

  v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *__p = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_1001FF5D4(&v26);
  return sub_1000049E0(&v25);
}

void sub_101584474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_10002B644(&a17);
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_1001FF5D4(&a16);
  sub_1000049E0(&a15);
  _Unwind_Resume(a1);
}

__n128 sub_10158456C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4ECC8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

void sub_1015845A8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = 1;
  do
  {
    if ((v4 & v3) != 0)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      memset(&v22, 0, sizeof(v22));
      CSIPhoneNumber::CSIPhoneNumber(&v22);
      v21 = 0;
      if (sub_101573918(v2, *(a1 + 20), &v21 + 1, &v22, &v21, *(a1 + 24), v4))
      {
        v5 = *(v2 + 112);
        v6 = *(a1 + 20);
        v7 = *(a1 + 24);
        v8 = HIBYTE(v21);
        v9 = v21;
        sub_1000AE428(v10, &v22);
        (*(*v5 + 32))(v5, v6, v7, v4, v8, v9, v10);
        if (v20 < 0)
        {
          operator delete(__p);
        }

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
      }

      if (SBYTE7(v30) < 0)
      {
        operator delete(v29);
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(*(&v27 + 1));
      }

      if (SBYTE7(v26) < 0)
      {
        operator delete(v25);
      }

      if (SBYTE7(v24) < 0)
      {
        operator delete(v23);
      }

      if (*(&v22.var2.__rep_.__l + 23) < 0)
      {
        operator delete(v22.var2.__rep_.__l.__data_);
      }
    }

    v4 = (2 * v4);
  }

  while (v4 && v4 < 129);
}

void sub_101584758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_10034F8E8(&a10);
  sub_10034F8E8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10158477C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101584840(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4ED48;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_101584874(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 112);
  v3 = *(a1 + 16);
  v4 = *(sub_10000BA08(*(v1 + 240), v3)[3] + 48);
  v5 = *(*v2 + 48);

  return v5(v2, v3, v4);
}

uint64_t sub_1015848E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101584934(uint64_t **a1)
{
  v14 = a1;
  v1 = **a1;
  v2 = *(*a1 + 2);
  v3 = *(*a1 + 3);
  v5 = *(*a1 + 4);
  v4 = *(*a1 + 5);
  v6 = *(*a1 + 24);
  v7 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    buf = 136315138;
    buf_4 = CSIErrorString();
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Unable to fetch call forwarding info, error=%s", &buf, 0xCu);
  }

  v8 = *(v1 + 240);
  if (v8)
  {
    v9 = *(v1 + 240);
    do
    {
      v10 = *(v9 + 8);
      if (v10 <= v2)
      {
        if (v10 >= v2)
        {
          if (v6 != 1 || (v4 - 21) > 1 || (*(sub_10000BA08(v8, v2) + 160) = 0, sub_10156DD80(v1, v2), (sub_10157336C(v1, v2, v3, v5) & 1) == 0))
          {
            if (!v5)
            {
              v12 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(buf) = 0;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Call class was not provided, interpreting it as ALL", &buf, 2u);
              }
            }

            operator new();
          }

LABEL_11:
          operator delete();
        }

        ++v9;
      }

      v9 = *v9;
    }

    while (v9);
  }

  v11 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = subscriber::asString();
    buf = 136315138;
    buf_4 = v13;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

  goto LABEL_11;
}

void sub_101584D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_101584DC8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4EDC8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t sub_101584E3C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101584F00(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4EE48;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_101584F34(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 112);
  v3 = *(a1 + 16);
  v4 = *(sub_10000BA08(*(v1 + 240), v3)[3] + 48);
  v5 = *(*v2 + 48);

  return v5(v2, v3, v4);
}

uint64_t sub_101584FA8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101584FF4(uint64_t **a1)
{
  v7 = a1;
  v1 = **a1;
  v2 = *(*a1 + 2);
  for (i = *(v1 + 240); i; i = *i)
  {
    v4 = *(i + 8);
    if (v4 <= v2)
    {
      if (v4 >= v2)
      {
        if (!*(*a1 + 4))
        {
          v6 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Call class was not provided, interpreting it as ALL", &buf, 2u);
          }
        }

        operator new();
      }

      ++i;
    }
  }

  v5 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    buf = 136315138;
    buf_4 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

  operator delete();
}

void sub_101585360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_10158541C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4EEC8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10158548C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101585554(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4EF48;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 23) = 0;
  *(a2 + 21) = 0;
  return result;
}

uint64_t sub_1015855C4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101585610(uint64_t **a1)
{
  v13 = a1;
  v1 = **a1;
  v2 = *(*a1 + 2);
  v3 = *(*a1 + 4);
  v4 = *(*a1 + 6);
  v5 = *(*a1 + 28);
  v6 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = CSIErrorString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Unable to set call forwarding info, error=%s", buf, 0xCu);
  }

  v7 = *(v1 + 240);
  if (v7)
  {
    v8 = *(v1 + 240);
    do
    {
      v9 = *(v8 + 8);
      if (v9 <= v2)
      {
        if (v9 >= v2)
        {
          if (v5 == 1 && (v4 - 21) <= 1)
          {
            *(sub_10000BA08(v7, v2) + 160) = 0;
            sub_10156DD80(v1, v2);
          }

          if (!v3)
          {
            v12 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Call class was not provided, interpreting it as ALL", buf, 2u);
            }
          }

          operator new();
        }

        ++v8;
      }

      v8 = *v8;
    }

    while (v8);
  }

  v10 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = subscriber::asString();
    *buf = 136315138;
    v15 = v11;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

  operator delete();
}

void sub_10158592C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_1015859E4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4EFC8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101585A54(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101585AA0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = *(v2 + 240);
  if (v4)
  {
    v5 = *(v1 + 3);
    v6 = *(v1 + 4);
    v7 = *(v1 + 20);
    do
    {
      v8 = *(v4 + 8);
      if (v8 <= v3)
      {
        if (v8 >= v3)
        {
          if (!v6)
          {
            v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Call class was not provided, interpreting it as ALL", buf, 2u);
            }

            v6 = 255;
          }

          if (sub_10000BA08(*(v2 + 240), v3)[5])
          {
            v11 = 0;
            while (1)
            {
              if (((1 << v11) & v6) != 0)
              {
                v12 = sub_10000BA08(*(v2 + 240), v3)[5];
                sub_1012D8684(v12, v5, (1 << v11), ((1 << v11) & v7) != 0);
              }

              if (++v11 == 8)
              {
                v13 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
                if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Sending out Call Barring Fetch complete notification", buf, 2u);
                }

                operator new();
              }
            }
          }

          sub_1012D84E8(buf);
        }

        ++v4;
      }

      v4 = *v4;
    }

    while (v4);
  }

  v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

  operator delete();
}

void sub_101585DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  operator delete();
}

__n128 sub_101585EB0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F048;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

void sub_101585EEC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Sending out Call Barring Fetch complete notification", v6, 2u);
  }

  v4 = *(a1 + 16);
  v5 = 1;
  do
  {
    if ((v5 & v4) != 0)
    {
      v7 = 0;
      if (sub_10157182C(v2, *(a1 + 20), &v7, *(a1 + 24), v5))
      {
        (*(**(v2 + 112) + 128))(*(v2 + 112), *(a1 + 20), v5, *(a1 + 24), v7);
      }
    }

    v5 = (2 * v5);
  }

  while (v5 && v5 < 129);
}

uint64_t sub_101585FCC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101586018(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = *(v2 + 240);
  if (v4)
  {
    v5 = *(v1 + 3);
    v6 = *(v1 + 4);
    v7 = *(v1 + 5);
    v8 = *(v1 + 24);
    do
    {
      v9 = *(v4 + 8);
      if (v9 <= v3)
      {
        if (v9 >= v3)
        {
          v11 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Sending out Call Barring Fetch Error notification", buf, 2u);
          }

          v16 = 0;
          v15 = kCFBooleanTrue;
          if (kCFBooleanTrue)
          {
            CFRetain(kCFBooleanTrue);
          }

          sub_10156F850(buf, (v2 + 96), (v2 + 40), v3, "CallBarringNASFallbackSupported", &v15);
          sub_10002FE1C(&v16, buf);
          sub_10000A1EC(buf);
          sub_10000A1EC(&v15);
          buf[0] = 0;
          ctu::cf::assign(buf, v16, v13);
          if (buf[0] != 1 || v8 != 1 || (v7 - 21) > 1)
          {
            if (!v6)
            {
              v14 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Call class was not provided, interpreting it as ALL", buf, 2u);
              }
            }

            operator new();
          }

          *(sub_10000BA08(*(v2 + 240), v3) + 160) = 0;
          sub_10156DD80(v2, v3);
          sub_10000501C(buf, "");
          sub_101571220(v2, v3, v5, v6);
          if (v18 < 0)
          {
            operator delete(*buf);
          }

          sub_100045C8C(&v16);
          goto LABEL_24;
        }

        ++v4;
      }

      v4 = *v4;
    }

    while (v4);
  }

  v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

LABEL_24:
  operator delete();
}

void sub_1015863C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, int a14, const void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_100045C8C(&a15);
  operator delete();
}

__n128 sub_1015864E8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F0C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t sub_10158655C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015865A8(unsigned int **a1)
{
  v10 = a1;
  v1 = **a1;
  v2 = (*a1)[2];
  v3 = *(v1 + 240);
  if (v3)
  {
    v4 = (*a1)[4];
    do
    {
      v5 = *(v3 + 8);
      if (v5 <= v2)
      {
        if (v5 >= v2)
        {
          v7 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Sending out Call Barring Info set complete notification", buf, 2u);
          }

          if (!v4)
          {
            v9 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Call class was not provided, interpreting it as ALL", buf, 2u);
            }
          }

          operator new();
        }

        ++v3;
      }

      v3 = *v3;
    }

    while (v3);
  }

  v6 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v12 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

  operator delete();
}

void sub_101586874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_10158692C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F148;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10158699C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015869E8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = *(v2 + 240);
  if (v4)
  {
    v5 = *(v1 + 4);
    v6 = *(v1 + 6);
    v7 = *(v1 + 28);
    do
    {
      v8 = *(v4 + 8);
      if (v8 <= v3)
      {
        if (v8 >= v3)
        {
          v14 = 0;
          v13 = kCFBooleanFalse;
          if (kCFBooleanFalse)
          {
            CFRetain(kCFBooleanFalse);
          }

          sub_10156F850(buf, (v2 + 96), (v2 + 40), v3, "CallBarringNASFallbackSupported", &v13);
          sub_10002FE1C(&v14, buf);
          sub_10000A1EC(buf);
          sub_10000A1EC(&v13);
          buf[0] = 0;
          ctu::cf::assign(buf, v14, v10);
          if (buf[0] == 1 && v7 == 1 && (v6 - 21) <= 1)
          {
            *(sub_10000BA08(*(v2 + 240), v3) + 160) = 0;
            sub_10156DD80(v2, v3);
          }

          if (!v5)
          {
            v11 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Call class was not provided, interpreting it as ALL", buf, 2u);
            }
          }

          v12 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Sending out Call Barring Info set error notification", buf, 2u);
          }

          operator new();
        }

        ++v4;
      }

      v4 = *v4;
    }

    while (v4);
  }

  v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v16 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

  operator delete();
}

void sub_101586D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100045C8C(va);
  operator delete();
}

__n128 sub_101586E68(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F1C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101586ED8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101586F24(uint64_t **a1)
{
  v10 = a1;
  v2 = **a1;
  v1 = (*a1)[1];
  for (i = *(v2 + 240); i; i = *i)
  {
    v4 = *(i + 8);
    if (v4 <= v1)
    {
      if (v4 >= v1)
      {
        v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Sending out Call Barring Password Registration event", &buf, 2u);
        }

        *&buf = off_101F4F248;
        *(&buf + 1) = v2;
        v12 = v1;
        p_buf = &buf;
        v8 = *(v2 + 112);
        v9 = sub_10157FEE8(HIDWORD(v1));
        (*(*v8 + 144))(v8, v1, v9);
        (*(**(v2 + 384) + 40))(*(v2 + 384), v1, 0);
        sub_10002B644(&buf);
        goto LABEL_12;
      }

      ++i;
    }
  }

  v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

LABEL_12:
  operator delete();
}

void sub_10158714C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_1015871FC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F248;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10158722C(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 112);
  v2 = *(a1 + 16);
  v3 = sub_10157FEE8(*(a1 + 20));
  v4 = *(*v1 + 144);

  return v4(v1, v2, v3);
}

uint64_t sub_101587294(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015872E0(uint64_t **a1)
{
  v11 = a1;
  v2 = **a1;
  v1 = (*a1)[1];
  v3 = *(v2 + 240);
  if (v3)
  {
    v4 = *(*a1 + 4);
    do
    {
      v5 = *(v3 + 8);
      if (v5 <= v1)
      {
        if (v5 >= v1)
        {
          v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Sending out Call Barring Password Registration failure event", &buf, 2u);
          }

          *&buf = off_101F4F2C8;
          *(&buf + 1) = v2;
          v13 = v1;
          p_buf = &buf;
          v9 = *(v2 + 112);
          v10 = sub_10157FEE8(HIDWORD(v1));
          (*(*v9 + 152))(v9, v1, v10);
          (*(**(v2 + 384) + 40))(*(v2 + 384), v1, v4);
          sub_10002B644(&buf);
          goto LABEL_13;
        }

        ++v3;
      }

      v3 = *v3;
    }

    while (v3);
  }

  v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

LABEL_13:
  operator delete();
}

void sub_101587514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_1015875C4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F2C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1015875F4(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 112);
  v2 = *(a1 + 16);
  v3 = sub_10157FEE8(*(a1 + 20));
  v4 = *(*v1 + 152);

  return v4(v1, v2, v3);
}

uint64_t sub_10158765C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1015876A8(uint64_t *a1)
{
  v1 = *a1;
  v19 = a1;
  v20 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 12);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  for (i = v2[30]; i; i = *i)
  {
    v8 = *(i + 8);
    if (v8 <= v3)
    {
      if (v8 >= v3)
      {
        v10 = *(*(*v2[6] + 16))(v2[6], v3);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Call waiting values retrieved successfully", &buf, 2u);
        }

        v12 = sub_10000BA08(v2[30], v3) + 8;
        sub_100034450(*v12);
        v13 = 0;
        *v12 = 0;
        v12[1] = 0;
        *(v12 - 1) = v12;
        v18 = v4;
        if (v4)
        {
          v14 = v4;
        }

        else
        {
          v14 = 255;
        }

        do
        {
          if (((1 << v13) & v14) != 0)
          {
            v15 = *v6;
            v16 = sub_10000BA08(v2[30], v3);
            v21 = 1 << v13;
            *&buf = &v21;
            *(sub_10142B4C4(v16 + 7, 1 << v13, &buf) + 32) = ((1 << v13) & v15) != 0;
          }

          ++v13;
        }

        while (v13 != 8);
        sub_101570C50(v2, v3);
        sub_10156D634(v2, v3);
        *&buf = off_101F4F348;
        *(&buf + 1) = v2;
        v23 = v18 | (v3 << 32);
        p_buf = &buf;
        sub_101587A54(&buf);
        (*(*v2[48] + 40))(v2[48], v3, 0);
        sub_10002B644(&buf);
        goto LABEL_20;
      }

      ++i;
    }
  }

  v9 = *(*(*v2[6] + 16))(v2[6], v3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

LABEL_20:
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_1011BEED0(&v20);
  return sub_1000049E0(&v19);
}

void sub_101587974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  sub_10002B644(va2);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_1011BEED0(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

__n128 sub_101587A24(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F348;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101587A54(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (*(result + 16))
  {
    v3 = *(result + 16);
  }

  else
  {
    v3 = 255;
  }

  v4 = 1;
  do
  {
    if ((v4 & v3) != 0)
    {
      v5 = 0;
      result = sub_1015724F0(v2, *(v1 + 20), &v5, v4);
      if (result)
      {
        result = (*(**(v2 + 112) + 72))(*(v2 + 112), *(v1 + 20), v4, v5);
      }
    }

    v4 = (2 * v4);
  }

  while (v4 && v4 < 129);
  return result;
}

uint64_t sub_101587B04(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101587B50(void ****a1)
{
  v13 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = v2[30];
  if (v4)
  {
    v6 = *(v1 + 3);
    v5 = *(v1 + 4);
    v7 = *(v1 + 20);
    do
    {
      v8 = *(v4 + 8);
      if (v8 <= v3)
      {
        if (v8 >= v3)
        {
          v10 = *(*(*v2[6] + 16))(v2[6], v3);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 136315138;
            *(&buf + 4) = CSIErrorString();
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Unable to fetch call waiting info, error=%s", &buf, 0xCu);
          }

          if (v7 != 1 || (v5 - 21) > 1 || (*(sub_10000BA08(v2[30], v3) + 160) = 0, sub_10156DD80(v2, v3), (sub_101571F9C(v2, v3, v6) & 1) == 0))
          {
            *&buf = off_101F4F3C8;
            *(&buf + 1) = v2;
            v15 = v3 | (v6 << 32);
            p_buf = &buf;
            if (v6)
            {
              v12 = v6;
            }

            else
            {
              v12 = 255;
            }

            (*(*v2[14] + 56))(v2[14], v3, v12);
            (*(*v2[48] + 40))(v2[48], v3, v5);
            sub_10002B644(&buf);
          }

          goto LABEL_10;
        }

        ++v4;
      }

      v4 = *v4;
    }

    while (v4);
  }

  v9 = *(*(*v2[6] + 16))(v2[6], v3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

LABEL_10:
  operator delete();
}

void sub_101587DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_101587EA0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F3C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101587ED0(uint64_t a1)
{
  v1 = *(a1 + 20);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = 255;
  }

  return (*(**(*(a1 + 8) + 112) + 56))(*(*(a1 + 8) + 112), *(a1 + 16), v2);
}

uint64_t sub_101587F10(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101587F5C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = v2[30];
  if (v4)
  {
    v5 = *(v1 + 3);
    v6 = *(v1 + 20);
    do
    {
      v7 = *(v4 + 8);
      if (v7 <= v3)
      {
        if (v7 >= v3)
        {
          v9 = *(*(*v2[6] + 16))(v2[6], v3);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Saved call waiting values successfully", buf, 2u);
          }

          v11 = 0;
          if (v5)
          {
            v12 = v5;
          }

          else
          {
            v12 = 255;
          }

          while (1)
          {
            if (((1 << v11) & v12) != 0)
            {
              v13 = sub_10000BA08(v2[30], v3);
              v14 = 1 << v11;
              *buf = &v14;
              *(sub_10142B4C4(v13 + 7, 1 << v11, buf) + 32) = v6;
            }

            if (++v11 == 8)
            {
              sub_101570C50(v2, v3);
              sub_10156D634(v2, v3);
              operator new();
            }
          }
        }

        ++v4;
      }

      v4 = *v4;
    }

    while (v4);
  }

  v8 = *(*(*v2[6] + 16))(v2[6], v3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

  operator delete();
}

void sub_101588238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_1015882F8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F448;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t sub_101588334(uint64_t a1)
{
  v1 = *(a1 + 20);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = 255;
  }

  return (*(**(*(a1 + 8) + 112) + 80))(*(*(a1 + 8) + 112), *(a1 + 16), v2, *(a1 + 24));
}

uint64_t sub_101588378(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015883C4(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (v3 < 0x100)
  {
    a2 = 1;
  }

  if (v3 > 0x1FF || (a2 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }
}

void sub_101588420(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      sub_100EF4E80((v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = (a1[2] - v7);
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void sub_1015884FC(uint64_t **a1)
{
  v13 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = *(v2 + 240);
  if (v4)
  {
    v5 = *(v1 + 5);
    v6 = *(v1 + 24);
    do
    {
      v7 = *(v4 + 8);
      if (v7 <= v3)
      {
        if (v7 >= v3)
        {
          v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v11 = sub_10000BA08(*(v2 + 240), v3);
            v12 = (*(*v11[1] + 48))(v11[1]);
            *buf = 136315394;
            v15 = v12;
            v16 = 2080;
            v17 = CSIErrorString();
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Unable to save call waiting info to %s, error=%s", buf, 0x16u);
          }

          if (v6 == 1 && (v5 - 21) <= 1)
          {
            *(sub_10000BA08(*(v2 + 240), v3) + 160) = 0;
            sub_10156DD80(v2, v3);
          }

          operator new();
        }

        ++v4;
      }

      v4 = *v4;
    }

    while (v4);
  }

  v8 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v15 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

  operator delete();
}

void sub_1015887F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_1015888B4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F4C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t sub_1015888F0(uint64_t a1)
{
  v1 = *(a1 + 20);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = 255;
  }

  return (*(**(*(a1 + 8) + 112) + 64))(*(*(a1 + 8) + 112), *(a1 + 16), v2, *(a1 + 24));
}

uint64_t sub_101588934(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101588980(uint64_t *a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(v2 + 240);
  if (!v6)
  {
LABEL_8:
    v8 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
    }

    goto LABEL_15;
  }

  while (1)
  {
    v7 = *(v6 + 8);
    if (v7 <= v3)
    {
      break;
    }

LABEL_7:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  if (v7 < v3)
  {
    ++v6;
    goto LABEL_7;
  }

  if (v5)
  {
    operator new();
  }

  v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I handleCmdDriverCLIRInfo_sync: info parameter is invalid", &buf, 2u);
  }

  *&buf = off_101F4F548;
  *(&buf + 1) = v2;
  v14 = v3;
  *&v15 = &buf;
  (*(**(v2 + 112) + 168))(*(v2 + 112), v3, 0);
  (*(**(v2 + 384) + 40))(*(v2 + 384), v3, 1);
  sub_10002B644(&buf);
LABEL_15:
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_1001FF3DC(&v12);
  return sub_1000049E0(&v11);
}

void sub_101588FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  sub_1000EFBF0(&a18);
  if (v18)
  {
    sub_100004A34(v18);
  }

  sub_1001FF3DC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_1015890C8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F548;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_101589134(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015891A0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F4F5C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1015891F4(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

__n128 sub_101589284(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F618;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1015892B8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v5 = 0;
  v4 = 0;
  result = sub_101570284(v1, *(a1 + 16), &v4, &v5);
  if (result)
  {
    v3 = *(**(v1 + 112) + 160);

    return v3();
  }

  return result;
}

uint64_t sub_101589354(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101589418(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F698;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_101589484(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015894D0(void ****a1)
{
  v11 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = v2[30];
  if (v4)
  {
    v5 = *(v1 + 3);
    v6 = *(v1 + 16);
    do
    {
      v7 = *(v4 + 8);
      if (v7 <= v3)
      {
        if (v7 >= v3)
        {
          v9 = *(*(*v2[6] + 16))(v2[6], v3);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 136315138;
            *(&buf + 4) = CSIErrorString();
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Unable to fetch CLIR info, error=%s", &buf, 0xCu);
          }

          if (v6 != 1 || (v5 - 21) > 1 || (*(sub_10000BA08(v2[30], v3) + 160) = 0, sub_10156DD80(v2, v3), (sub_10156FBF0(v2, v3) & 1) == 0))
          {
            *&buf = off_101F4F718;
            *(&buf + 1) = v2;
            v13 = v3;
            p_buf = &buf;
            (*(*v2[14] + 168))(v2[14], v3, 2);
            (*(*v2[48] + 40))(v2[48], v3, v5);
            sub_10002B644(&buf);
          }

          goto LABEL_10;
        }

        ++v4;
      }

      v4 = *v4;
    }

    while (v4);
  }

  v8 = *(*(*v2[6] + 16))(v2[6], v3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

LABEL_10:
  operator delete();
}

void sub_10158975C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_101589810(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F718;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10158987C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1015898C8(uint64_t *a1)
{
  v1 = *a1;
  v16 = a1;
  v17 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  for (i = v2[30]; i; i = *i)
  {
    v7 = *(i + 8);
    if (v7 <= v3)
    {
      if (v7 >= v3)
      {
        v9 = *(*(*v2[6] + 16))(v2[6], v3);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11 = sub_10000BA08(v2[30], v3);
          v12 = (*(*v11[1] + 48))(v11[1]);
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v12;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Received CLIP Information from %s", &buf, 0xCu);
        }

        v13 = sub_10000BA08(v2[30], v3);
        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v14 = v13[11];
        v13[10] = v5;
        v13[11] = v4;
        if (v14)
        {
          sub_100004A34(v14);
        }

        *&buf = off_101F4F798;
        *(&buf + 1) = v2;
        v19 = v3;
        p_buf = &buf;
        sub_101589C30(&buf);
        (*(*v2[48] + 40))(v2[48], v3, 0);
        sub_10002B644(&buf);
        goto LABEL_18;
      }

      ++i;
    }
  }

  v8 = *(*(*v2[6] + 16))(v2[6], v3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

LABEL_18:
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_1001FF3DC(&v17);
  return sub_1000049E0(&v16);
}

void sub_101589B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10002B644(va);
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_1001FF3DC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_101589BFC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F798;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_101589C30(uint64_t a1)
{
  v1 = *(a1 + 8);
  v4 = 0;
  result = sub_101572B38(v1, *(a1 + 16), &v4, 1);
  if (result)
  {
    v3 = *(**(v1 + 112) + 232);

    return v3();
  }

  return result;
}

uint64_t sub_101589CC4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101589D10(void ****a1)
{
  v12 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = v2[30];
  if (v4)
  {
    v5 = *(v1 + 3);
    v6 = v2[30];
    do
    {
      v7 = *(v6 + 8);
      if (v7 <= v3)
      {
        if (v7 >= v3)
        {
          if (*(v1 + 16) == 1 && (v5 - 21) <= 1)
          {
            *(sub_10000BA08(v4, v3) + 160) = 0;
            sub_10156DD80(v2, v3);
          }

          v9 = *(*(*v2[6] + 16))(v2[6], v3);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = sub_10000BA08(v2[30], v3);
            v11 = (*(*v10[1] + 48))(v10[1]);
            LODWORD(buf) = 136315138;
            *(&buf + 4) = v11;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Unable to retrieve CLIP info from %s", &buf, 0xCu);
          }

          *&buf = off_101F4F818;
          *(&buf + 1) = v2;
          v14 = v3;
          p_buf = &buf;
          (*(*v2[14] + 208))(v2[14], v3, 1);
          (*(*v2[48] + 40))(v2[48], v3, v5);
          sub_10002B644(&buf);
LABEL_15:
          operator delete();
        }

        ++v6;
      }

      v6 = *v6;
    }

    while (v6);
  }

  v8 = *(*(*v2[6] + 16))(v2[6], v3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

  goto LABEL_15;
}

void sub_101589FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_10158A068(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F818;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10158A0D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10158A194(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F898;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10158A1F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10158A2BC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F918;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10158A324(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10158A370(uint64_t *a1)
{
  v1 = *a1;
  v15 = a1;
  v16 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v2[30];
  if (!v6)
  {
LABEL_9:
    v9 = *(*(*v2[6] + 16))(v2[6], v3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
    }

    goto LABEL_23;
  }

  v7 = v2[30];
  while (1)
  {
    v8 = *(v7 + 8);
    if (v8 <= v3)
    {
      break;
    }

LABEL_8:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  if (v8 < v3)
  {
    ++v7;
    goto LABEL_8;
  }

  if (v5)
  {
    v10 = sub_10000BA08(v6, v3);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v10[13];
    v10[12] = v5;
    v10[13] = v4;
    if (v11)
    {
      sub_100004A34(v11);
    }

    v12 = *(*(*v2[6] + 16))(v2[6], v3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Received COLR status, sending kConnectedLineIdRestrictionValueAvailableNotification", &buf, 2u);
    }

    *&buf = off_101F4F998;
    *(&buf + 1) = v2;
    v18 = v3;
    p_buf = &buf;
    sub_10158A78C(&buf);
    (*(*v2[48] + 40))(v2[48], v3, 0);
  }

  else
  {
    v13 = *(*(*v2[6] + 16))(v2[6], v3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I COLR is invalid, sending kConnectedLineIdRestrictionFetchError", &buf, 2u);
    }

    *&buf = off_101F4FA18;
    *(&buf + 1) = v2;
    v18 = v3;
    p_buf = &buf;
    (*(*v2[14] + 216))(v2[14], v3);
    (*(*v2[48] + 40))(v2[48], v3, 1);
  }

  sub_10002B644(&buf);
LABEL_23:
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_1001FF3DC(&v16);
  return sub_1000049E0(&v15);
}

void sub_10158A6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10002B644(va);
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_1001FF3DC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_10158A758(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F998;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10158A78C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v4 = 0;
  result = sub_101573038(v1, *(a1 + 16), &v4);
  if (result)
  {
    v3 = *(**(v1 + 112) + 200);

    return v3();
  }

  return result;
}

uint64_t sub_10158A81C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10158A8E0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4FA18;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10158A948(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10158A994(uint64_t **a1)
{
  v9 = a1;
  v1 = **a1;
  v2 = *(*a1 + 2);
  v3 = *(v1 + 240);
  if (v3)
  {
    v4 = *(*a1 + 3);
    do
    {
      v5 = *(v3 + 8);
      if (v5 <= v2)
      {
        if (v5 >= v2)
        {
          v7 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Failed to receive COLR status, sending kConnectedLineIdRestrictionFetchError", &buf, 2u);
          }

          *&buf = off_101F4FA98;
          *(&buf + 1) = v1;
          v11 = v2;
          p_buf = &buf;
          (*(**(v1 + 112) + 216))(*(v1 + 112), v2);
          (*(**(v1 + 384) + 40))(*(v1 + 384), v2, v4);
          sub_10002B644(&buf);
          goto LABEL_13;
        }

        ++v3;
      }

      v3 = *v3;
    }

    while (v3);
  }

  v6 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

LABEL_13:
  operator delete();
}

void sub_10158ABC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_10158AC74(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4FA98;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10158ACDC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10158AD28(uint64_t *a1)
{
  v1 = *a1;
  v19 = a1;
  v20 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v2[30];
  if (!v6)
  {
LABEL_9:
    v9 = *(*(*v2[6] + 16))(v2[6], v3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
    }

    goto LABEL_23;
  }

  v7 = v2[30];
  while (1)
  {
    v8 = *(v7 + 8);
    if (v8 <= v3)
    {
      break;
    }

LABEL_8:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  if (v8 < v3)
  {
    ++v7;
    goto LABEL_8;
  }

  if (v5)
  {
    v10 = sub_10000BA08(v6, v3);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v10[15];
    v10[14] = v5;
    v10[15] = v4;
    if (v11)
    {
      sub_100004A34(v11);
    }

    v12 = *(*(*v2[6] + 16))(v2[6], v3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Received CNAP status, sending kConnectedLineIdRestrictionValueAvailableNotification", &buf, 2u);
    }

    *&buf = off_101F4FB18;
    *(&buf + 1) = v2;
    v22 = v3;
    p_buf = &buf;
    sub_10158B158(&buf);
    (*(*v2[48] + 40))(v2[48], v3, 0);
  }

  else
  {
    v13 = *(*(*v2[6] + 16))(v2[6], v3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I CNAP is invalid, sending kCallingNamePresentationValueFetchError", &buf, 2u);
    }

    *&buf = off_101F4FB98;
    *(&buf + 1) = v2;
    v22 = v3;
    p_buf = &buf;
    (*(*v2[14] + 256))(v2[14], v3, v14, v15, v16, v17);
    (*(*v2[48] + 40))(v2[48], v3, 1);
  }

  sub_10002B644(&buf);
LABEL_23:
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_1001FF3DC(&v20);
  return sub_1000049E0(&v19);
}

void sub_10158B070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10002B644(va);
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_1001FF3DC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_10158B124(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4FB18;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10158B158(uint64_t a1)
{
  v1 = *(a1 + 8);
  v4 = 2;
  sub_101574428(v1, *(a1 + 16), &v4);
  v2 = *(**(v1 + 112) + 264);

  return v2();
}

uint64_t sub_10158B1EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10158B2B0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4FB98;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10158B320(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10158B36C(uint64_t **a1)
{
  v9 = a1;
  v1 = **a1;
  v2 = *(*a1 + 2);
  v3 = *(v1 + 240);
  if (v3)
  {
    v4 = *(*a1 + 3);
    do
    {
      v5 = *(v3 + 8);
      if (v5 <= v2)
      {
        if (v5 >= v2)
        {
          v7 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Failed to receive CNAP status, sending kCallingNamePresentationValueFetchError", &buf, 2u);
          }

          *&buf = off_101F4FC18;
          *(&buf + 1) = v1;
          v11 = v2;
          p_buf = &buf;
          (*(**(v1 + 112) + 256))();
          (*(**(v1 + 384) + 40))(*(v1 + 384), v2, v4);
          sub_10002B644(&buf);
          goto LABEL_13;
        }

        ++v3;
      }

      v3 = *v3;
    }

    while (v3);
  }

  v6 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

LABEL_13:
  operator delete();
}

void sub_10158B5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_10158B660(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4FC18;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10158B6D0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10158B71C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = *(v2 + 240);
  if (v4)
  {
    v5 = *(v1 + 12);
    v6 = *(v1 + 4);
    v7 = *(v1 + 5);
    v8 = *(v2 + 240);
    v9 = *(v1 + 6);
    do
    {
      v10 = *(v8 + 8);
      if (v10 <= v3)
      {
        if (v10 >= v3)
        {
          if (sub_10000BA08(v4, v3)[1])
          {
            if (!sub_10156FE88(v2, v3) || sub_10000BA08(*(v2 + 240), v3)[1] == *(v2 + 152))
            {
              v13 = sub_10000BA08(*(v2 + 240), v3);
              (*(*v13[1] + 72))(v13[1], v3, v5, v6, v7, v9);
            }

            else
            {
              v12 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I VoLTE call is active, ignoring request to activate Call Forwarding because it would trigger CSFB", buf, 2u);
              }
            }
          }

LABEL_9:
          operator delete();
        }

        ++v8;
      }

      v8 = *v8;
    }

    while (v8);
  }

  v11 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v15 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

  goto LABEL_9;
}

void sub_10158B988(void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*(*v2[6] + 16))(v2[6], *(*a1 + 2));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = subscriber::asString();
    *&buf[12] = 2080;
    *&buf[14] = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Migrating Supplementary services preferences from slot %s -> %s", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = 0;
  (*(*v2[23] + 40))(buf);
  v4 = *v2[23];
  if (*buf)
  {
    (*(v4 + 48))();
  }

  else
  {
    (*(v4 + 56))();
  }

  v5 = *(v1 + 3);
  v18 = *buf;
  v19 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
  }

  sub_10156CE14(v2, v5, &v18);
  if (v19)
  {
    sub_100004A34(v19);
  }

  v16 = 0;
  v17 = 0;
  (*(*v2[23] + 64))(&v16);
  v6 = *v2[23];
  if (v16)
  {
    (*(v6 + 72))();
  }

  else
  {
    (*(v6 + 80))();
  }

  v7 = *(v1 + 3);
  v14 = v16;
  v15 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10156D0E4(v2, v7, &v14);
  if (v15)
  {
    sub_100004A34(v15);
  }

  v8 = (*(*v2[23] + 88))(v2[23], *(v1 + 2));
  v9 = v2[23];
  v10 = *(v1 + 3);
  if ((v8 & 0x100) != 0)
  {
    (*(*v9 + 96))(v9, v10, v8 & 1);
  }

  else
  {
    (*(*v9 + 104))(v9, v10);
  }

  sub_10156D3B4(v2, *(v1 + 3));
  v11 = (*(*v2[23] + 112))(v2[23], *(v1 + 2));
  v12 = v2[23];
  v13 = *(v1 + 3);
  if ((v11 & 0x100) != 0)
  {
    (*(*v12 + 120))(v12, v13, v11 & 1);
  }

  else
  {
    (*(*v12 + 128))(v12, v13);
  }

  sub_10156D894(v2, *(v1 + 3));
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  operator delete();
}

void sub_10158BD78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  operator delete();
}

uint64_t sub_10158BDFC(uint64_t **a1, uint64_t ***a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v14 = a2;
  v8 = sub_10158C100(a1, a2, &unk_101802C98, &v14, &v13);
  *__p = *a5;
  v12 = *(a5 + 16);
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  v9 = sub_10158BEAC(v8 + 7, a3, a4, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v9;
}

void sub_10158BE90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10158BEAC(unint64_t *a1, unint64_t a2, unint64_t a3, __n128 *a4)
{
  v12 = a2;
  if (a2 - 1 >= a3)
  {
    v10 = *a1;
    if (*a1)
    {
      if (a1[3] == v10)
      {
        LODWORD(v10) = 0;
        goto LABEL_11;
      }

      LODWORD(v10) = 0;
    }

LABEL_14:
    LODWORD(v9) = 0;
    return v9 | v10;
  }

  if (a1[3] && *a1 != a3)
  {
    *a1 = 0;
    v7 = a1 + 2;
    sub_10004EC58((a1 + 1), a1[2]);
    a1[1] = v7;
    a1[3] = 0;
    *v7 = 0;
  }

  *a1 = a3;
  v13 = &v12;
  v8 = sub_10090C784((a1 + 1), &v12, &unk_101802C98, &v13);
  sub_100015184((v8 + 5), a4);
  v9 = *a1;
  if (!*a1)
  {
    LODWORD(v10) = 1;
    return v9 | v10;
  }

  LODWORD(v10) = 1;
  if (a1[3] != v9)
  {
    goto LABEL_14;
  }

LABEL_11:
  LODWORD(v9) = 256;
  return v9 | v10;
}

void sub_10158BFAC(uint64_t **a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v5 = sub_100007A6C(a1, a2);
  if (a1 + 1 != v5 && (v6 = v5, v9 = *(v5 + 56), v7 = (v5 + 56), (v8 = v9) != 0) && v6[10] == v8)
  {
    v10 = (v7 - 24);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    sub_10158C054(v7, a3);
    sub_1000194D8(a1, v6);
    sub_100E26FF0(v10);

    operator delete(v6);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

_BYTE *sub_10158C054@<X0>(_BYTE *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(result + 1);
  v3 = result + 16;
  if (v2 != (result + 16))
  {
    do
    {
      result = sub_1006AD8F0(&v8, v2[5], v2[6], a2);
      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  return result;
}

void sub_10158C0E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10158C100(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v5 = *sub_100005C2C(a1, &v10, a2);
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_10158C1B4();
  }

  return v5;
}

uint64_t sub_10158C260(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100E26FF0(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_10158C3B4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    (*(*v2 + 8))(v2);
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

  dispatch_release(v1);
  if (v3)
  {
LABEL_4:
    operator delete();
  }

LABEL_5:
  _Unwind_Resume(exception_object);
}

uint64_t PhonebookHandler::PhonebookHandler(uint64_t a1, uint64_t a2, dispatch_object_t *a3, uint64_t *a4)
{
  *a1 = off_101F4FC98;
  v8 = (a1 + 8);
  v9 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
  }

  ctu::OsLogContext::OsLogContext(&v43, kCtLoggingSystemName, "pb");
  if (v9)
  {
    dispatch_retain(v9);
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    dispatch_retain(v9);
    dispatch_retain(v9);
    v11 = dispatch_queue_create_with_target_V2("PhonebookHandler", v10, v9);
  }

  else
  {
    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v11 = dispatch_queue_create("PhonebookHandler", v12);
  }

  v13 = v11;
  *v8 = 0;
  v8[1] = 0;
  *(a1 + 24) = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  *(a1 + 32) = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  if (v13)
  {
    dispatch_release(v13);
  }

  if (v9)
  {
    dispatch_release(v9);
    dispatch_release(v9);
    dispatch_release(v9);
  }

  ctu::OsLogLogger::OsLogLogger(v41, &v43);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), v41);
  ctu::OsLogLogger::~OsLogLogger(v41);
  ctu::OsLogContext::~OsLogContext(&v43);
  if (v9)
  {
    dispatch_release(v9);
  }

  v42[0] = off_101E2B528;
  v42[1] = sub_1000A8514;
  v42[3] = v42;
  *(a1 + 48) = 0;
  if ((capabilities::ct::supportsGemini(v14) & 1) == 0)
  {
    operator new();
  }

  if (!*(a1 + 48))
  {
    operator new();
  }

  sub_1000A8744(v42);
  *a1 = off_101F4FC98;
  *(a1 + 56) = *a2;
  v15 = *(a2 + 8);
  *(a1 + 64) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = *a4;
  v17 = *(a1 + 24);
  object = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  (*(*v16 + 24))(&v43, v16, &object);
  *(a1 + 72) = v43;
  v43.var0 = 0;
  v43.var1.fRef = 0;
  if (object)
  {
    dispatch_release(object);
  }

  Registry::getCommandDriversFactory(&v43, *a2);
  var0 = v43.var0;
  v19 = *(a1 + 24);
  v39 = v19;
  if (v19)
  {
    dispatch_retain(v19);
  }

  (*(*var0 + 56))(var0, &v39);
  if (v39)
  {
    dispatch_release(v39);
  }

  v20 = a3;
  if (v43.var1.fRef)
  {
    sub_100004A34(v43.var1.fRef);
  }

  *(a1 + 128) = 0;
  v21 = (a1 + 128);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = a1 + 128;
  v43.var0 = 0;
  v43.var1.fRef = 0;
  v44 = 0;
  (*(**a4 + 16))(&v43);
  v22 = v43.var0;
  if (v43.var0 != &v43.var1)
  {
    do
    {
      v23 = *v21;
      if (!*v21)
      {
LABEL_40:
        operator new();
      }

      v24 = *(v22 + 8);
      while (1)
      {
        while (1)
        {
          v25 = v23;
          v26 = *(v23 + 32);
          if (v26 <= v24)
          {
            break;
          }

          v23 = *v25;
          if (!*v25)
          {
            goto LABEL_40;
          }
        }

        if (v26 >= v24)
        {
          break;
        }

        v23 = v25[1];
        if (!v23)
        {
          goto LABEL_40;
        }
      }

      v28 = *(v22 + 5);
      v27 = *(v22 + 6);
      if (v27)
      {
        atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
      }

      v29 = v25[10];
      v25[9] = v28;
      v25[10] = v27;
      if (v29)
      {
        sub_100004A34(v29);
      }

      v30 = *(v22 + 1);
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = v30->var0;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = *(v22 + 2);
          v32 = v31->var0 == v22;
          v22 = v31;
        }

        while (!v32);
      }

      v22 = v31;
    }

    while (v31 != &v43.var1);
  }

  sub_10006EC28(&v43, v43.var1.fRef);
  sub_100109304((a1 + 144), &rest::kDefaultRegistrationStatuses);
  *(a1 + 176) = 0;
  *(a1 + 168) = a1 + 176;
  *(a1 + 184) = 0;
  sub_10000501C(&__p, "PhonebookHandler");
  v33 = *(a1 + 24);
  v36 = v33;
  if (v33)
  {
    dispatch_retain(v33);
  }

  v35 = *v20;
  if (*v20)
  {
    dispatch_retain(*v20);
  }

  ctu::RestModule::RestModule();
  if (v35)
  {
    dispatch_release(v35);
  }

  if (v36)
  {
    dispatch_release(v36);
  }

  if (v38 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 240) = 0;
  *(a1 + 232) = 0;
  *(a1 + 224) = a1 + 232;
  return a1;
}

void sub_10158CBE8(uint64_t a1)
{
  *a1 = off_101F4FC98;
  sub_10032D3A4(a1 + 224, *(a1 + 232));
  v2 = *(a1 + 216);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 200);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10006DCAC(a1 + 168, *(a1 + 176));
  sub_10006DCAC(a1 + 144, *(a1 + 152));
  sub_101590448(*(a1 + 128));
  v4 = *(a1 + 112);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  PhonebookInterface::~PhonebookInterface(a1);
}

void sub_10158CCF0(uint64_t a1)
{
  sub_10158CBE8(a1);

  operator delete();
}

void sub_10158CD28(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

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

void sub_10158CE28(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 40);
  v12 = 0;
  v13 = 0;
  (*(***a1 + 8))(&v12);
  if (v12 && isReal())
  {
    v11 = 0;
    *buf = CFPreferencesCopyValue(*(*(a1 + 8) + 8 * (v2 == 2)), @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_100222990(&v11, buf);
    if (v11)
    {
      *(&v10 + 1) = 0;
      *buf = CFPreferencesCopyValue(*(*(a1 + 16) + 8 * (v2 == 2)), @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      sub_100222990(&v10 + 1, buf);
      *&v10 = 0;
      *buf = CFPreferencesCopyValue(*(*(a1 + 24) + 8 * (v2 == 2)), @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      sub_100222990(&v10, buf);
      if (v10 != 0)
      {
        (*(***(a1 + 32) + 16))(**(a1 + 32), v12 + 24, @"PNRPhoneNumber");
        (*(***(a1 + 32) + 16))(**(a1 + 32), v12 + 24, @"CopiedSIMPhoneNumber", v10, @"phonebook", 0, 1, 0);
        v5 = *(v4 + 40);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = subscriber::asString();
          v7 = (v12 + 24);
          v8 = *(v12 + 47);
          v9 = v8;
          if ((v8 & 0x80u) != 0)
          {
            v8 = *(v12 + 32);
          }

          if (v9 < 0)
          {
            v7 = *(v12 + 24);
          }

          if (!v8)
          {
            v7 = "<invalid>";
          }

          *buf = 136315394;
          *&buf[4] = v6;
          v15 = 2080;
          v16 = v7;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I migrated phonebook storage for slot: %s, persona: %s", buf, 0x16u);
        }
      }

      CFPreferencesSetValue(*(*(a1 + 16) + 8 * (v2 == 2)), 0, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      CFPreferencesSetValue(*(*(a1 + 48) + 8 * (v2 == 2)), 0, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      CFPreferencesSetValue(*(*(a1 + 8) + 8 * (v2 == 2)), 0, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      CFPreferencesSetValue(*(*(a1 + 24) + 8 * (v2 == 2)), 0, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      sub_100005978(&v10);
      sub_100005978(&v10 + 1);
    }

    sub_100005978(&v11);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }
}

void sub_10158D174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, const void *a11, const void *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_100005978(&a10);
  sub_100005978(&a11);
  sub_100005978(&a12);
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(a1);
}

void sub_10158D1CC(void *a1, uint64_t *a2, dispatch_object_t *a3)
{
  v5 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
    dispatch_group_enter(v5);
  }

  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

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

void sub_10158D2F0(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10158D3D0(uint64_t a1)
{
  subscriber::makeSimSlotRange();
  v2 = v38;
  v3 = v39;
  if (v38 != v39)
  {
    v4 = v40;
    do
    {
      if (v40(*v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != v39);
    v35 = v39;
    if (v2 != v39)
    {
      v5 = (a1 + 176);
      v6 = (a1 + 152);
      do
      {
        v7 = *v2;
        v36 = 0;
        v37 = 0;
        sub_10006BCA8(&v36, a1 + 120, v7);
        v8 = v36;
        if (v36)
        {
          v9 = (*(**(a1 + 48) + 16))(*(a1 + 48), v7);
          v10 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            sub_10006BD2C(a1 + 120, v7);
            v11 = asString();
            *buf = 136315138;
            *&buf[4] = v11;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I PhoneBook state: %s", buf, 0xCu);
          }

          (*(*v8 + 264))(v8);
          v12 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            v13 = sub_10006BD2C(a1 + 120, v7);
            v14 = (v13 + 1);
            if (!v13)
            {
              v14 = &kInvalidPersonalityId;
            }

            v15 = *(v14 + 23);
            v16 = (v15 & 0x80u) != 0;
            if ((v15 & 0x80u) != 0)
            {
              v15 = *(v14 + 1);
            }

            if (v16)
            {
              v14 = *v14;
            }

            if (!v15)
            {
              v14 = "<invalid>";
            }

            *buf = 136315138;
            *&buf[4] = v14;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I associated persona: %s", buf, 0xCu);
            v12 = *v9;
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v17 = (*(*v8 + 192))(v8);
            CSIPhoneNumber::getFullNumber(buf, v17);
            v18 = buf;
            if (v42 < 0)
            {
              v18 = *buf;
            }

            *v43 = 136315138;
            v44 = v18;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I copied SIM phone number: %s", v43, 0xCu);
            if (v42 < 0)
            {
              operator delete(*buf);
            }

            v12 = *v9;
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v19 = (*(*v8 + 160))(v8);
            CSIPhoneNumber::getFullNumber(buf, v19);
            v20 = buf;
            if (v42 < 0)
            {
              v20 = *buf;
            }

            *v43 = 136315138;
            v44 = v20;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I cached phone number: %s", v43, 0xCu);
            if (v42 < 0)
            {
              operator delete(*buf);
            }

            v12 = *v9;
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v21 = (*(*v8 + 176))(v8);
            CSIPhoneNumber::getFullNumber(buf, v21);
            v22 = buf;
            if (v42 < 0)
            {
              v22 = *buf;
            }

            *v43 = 136315138;
            v44 = v22;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I PNR phone number: %s", v43, 0xCu);
            if (v42 < 0)
            {
              operator delete(*buf);
            }
          }

          v23 = *v5;
          if (*v5)
          {
            v24 = a1 + 176;
            do
            {
              if (*(v23 + 28) >= v7)
              {
                v24 = v23;
              }

              v23 = *(v23 + 8 * (*(v23 + 28) < v7));
            }

            while (v23);
            if (v24 != v5 && v7 >= *(v24 + 28))
            {
              v25 = *v9;
              if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
              {
                v26 = CSIBOOLAsString(*(v24 + 32));
                *buf = 136315138;
                *&buf[4] = v26;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I fSmsOnline: %s", buf, 0xCu);
              }
            }
          }

          v27 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            v28 = sub_10006BD2C(a1 + 120, v7);
            if (v28)
            {
              v29 = *(v28 + 4);
            }

            else
            {
              v29 = 0;
            }

            v30 = CSIBOOLAsString(v29 & 1);
            *buf = 136315138;
            *&buf[4] = v30;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I fPhoneNumberRegistrationState: %s", buf, 0xCu);
          }

          v31 = *v6;
          if (*v6)
          {
            v32 = a1 + 152;
            do
            {
              if (*(v31 + 28) >= v7)
              {
                v32 = v31;
              }

              v31 = *(v31 + 8 * (*(v31 + 28) < v7));
            }

            while (v31);
            if (v32 != v6 && v7 >= *(v32 + 28))
            {
              v33 = *v9;
              if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
              {
                v34 = asString();
                *buf = 136315138;
                *&buf[4] = v34;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I fRegStatus: %s", buf, 0xCu);
              }
            }
          }
        }

        if (v37)
        {
          sub_100004A34(v37);
        }

        do
        {
          ++v2;
        }

        while (v2 != v3 && (v4(*v2) & 1) == 0);
      }

      while (v2 != v35);
    }
  }
}

void sub_10158D970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10158D9B0(void *a1, unsigned int a2, unsigned int a3, __int128 *a4, uint64_t a5)
{
  v8 = a1;
  v9 = a2;
  v10 = a3;
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__p, *a4, *(a4 + 1));
  }

  else
  {
    *__p = *a4;
    __p[2] = *(a4 + 2);
  }

  sub_1000224C8(&v12, a5);
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

void sub_10158DB90(void **a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a4 == 2 && (!(*(**a3 + 208))() || (*(**a3 + 216))()))
  {
    v10 = *(*(*a1[6] + 16))(a1[6], a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Selected phone book type is kOwnPhoneNumbers, and MSISDN does not exist/write locked. Sending kPhoneBookSelected", &v19, 2u);
    }

    (*(**a3 + 40))(*a3, 2);
    (*(*a1[9] + 280))();
LABEL_20:
    sub_10000FFD0(a5, 1);
    return;
  }

  v11 = *(*(*a1[6] + 16))(a1[6], a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315138;
    v20 = asString();
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Select Phone Book called for %s", &v19, 0xCu);
  }

  v12 = sub_10006BD2C((a1 + 15), a2);
  if (v12 && *v12 > 1)
  {
    (*(**a3 + 40))(*a3, a4);
    (*(**a3 + 16))();
    v14 = *(*(*a1[6] + 16))(a1[6], a2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006BD2C((a1 + 15), a2);
      v15 = asString();
      v19 = 136315138;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Current Phone Book model state: %s", &v19, 0xCu);
    }

    v16 = sub_10006BD2C((a1 + 15), a2);
    if (v16 && *v16 > 2)
    {
      (*(*a1[9] + 280))(a1[9], a2);
      v18 = *(*(*a1[6] + 16))(a1[6], a2);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Notified the clients that Phone Book has been selected", &v19, 2u);
      }
    }

    else
    {
      v17 = sub_10006BD2C((a1 + 15), a2);
      if (v17)
      {
        *v17 = 3;
      }

      (*(*a1[11] + 64))(a1[11], a2, a4);
    }

    goto LABEL_20;
  }

  sub_10000FFD0(a5, 0);
  v13 = *(*(*a1[6] + 16))(a1[6], a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I The Phone Book is not ready", &v19, 2u);
  }
}

void sub_10158E03C(void *a1, unsigned int a2, unsigned int a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v10 = a1;
  v11 = a2;
  v12 = a3;
  sub_1000AE428(&v13, a4);
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(&v14, *a5, *(a5 + 1));
  }

  else
  {
    v14 = *a5;
    v15 = *(a5 + 2);
  }

  sub_1000224C8(&v16, a6);
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

void sub_10158E1F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a2)
  {
    sub_10034F8E8(v38 + 16);
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10158E250(uint64_t a1, uint64_t a2, uint64_t a3, CSIPhoneNumber *a4, uint64_t a5, uint64_t a6)
{
  v69 = 0;
  v70 = 0;
  sub_10006BCA8(&v69, a1 + 120, a2);
  if (v69)
  {
    (*(*v69 + 176))(v69);
    v12 = CSIPhoneNumber::operator==();
    __dst[0] = 0;
    __dst[1] = 0;
    v68 = 0;
    v13 = sub_10006BD2C(a1 + 120, a2);
    v14 = (v13 + 1);
    if (!v13)
    {
      v14 = &kInvalidPersonalityId;
    }

    if (v14[23] < 0)
    {
      sub_100005F2C(__dst, *v14, *(v14 + 1));
    }

    else
    {
      v15 = *v14;
      v68 = *(v14 + 2);
      *__dst = v15;
    }

    if ((isReal() & 1) == 0)
    {
      v27 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.var0) = 0;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "writeEntry_sync - persona is undefined yet", &buf, 2u);
      }

LABEL_41:
      v41 = v69;
      if (v12)
      {
        CSIPhoneNumber::CSIPhoneNumber(&buf);
      }

      else
      {
        sub_1000AE428(&buf, a4);
      }

      (*(*v41 + 152))(v41, &buf);
      if (v65 < 0)
      {
        operator delete(__p);
      }

      if (v63 < 0)
      {
        operator delete(v62);
      }

      if (v61 < 0)
      {
        operator delete(v60);
      }

      if (v59 < 0)
      {
        operator delete(v58);
      }

      if (*(&buf.var2.__rep_.__l + 23) < 0)
      {
        operator delete(buf.var2.__rep_.__l.__data_);
      }

      if ((*(*v41 + 48))(v41) == 2 && (!(*(*v41 + 208))(v41) || (*(*v41 + 216))(v41)))
      {
        v42 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          CSIPhoneNumber::getFullNumber(&buf.var0, a4);
          v43 = buf.var2.__rep_.__s.__data_[15] >= 0 ? &buf : *&buf.var0;
          *v73 = 136315138;
          *&v73[4] = v43;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I Selected phone book type is kOwnPhoneNumbers, and MSISDN does not exist/write locked. Writing '%s' to preferences file", v73, 0xCu);
          if (buf.var2.__rep_.__s.__data_[15] < 0)
          {
            operator delete(*&buf.var0);
          }
        }

        (*(**(a1 + 72) + 296))(*(a1 + 72), a2);
      }

      else
      {
        v44 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          CSIPhoneNumber::getFullNumber(&buf.var0, a4);
          v45 = buf.var2.__rep_.__s.__data_[15] >= 0 ? &buf : *&buf.var0;
          *v73 = 136315138;
          *&v73[4] = v45;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I Write Entry called with number '%s'", v73, 0xCu);
          if (buf.var2.__rep_.__s.__data_[15] < 0)
          {
            operator delete(*&buf.var0);
          }
        }

        v46 = sub_10006BD2C(a1 + 120, a2);
        if (!v46 || *v46 <= 3)
        {
          v47 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
          v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
          v49 = 0;
          if (v48)
          {
            LOWORD(buf.var0) = 0;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I Phone book is not in Available state", &buf, 2u);
            v49 = 0;
          }

          goto LABEL_83;
        }

        v50 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.var0) = 0;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I Sending out the write entry to the Command Driver", &buf, 2u);
        }

        v51 = *(a1 + 88);
        v52 = (*(*v41 + 48))(v41);
        (*(*v51 + 56))(v51, a2, v52, a3, a4, a5);
      }

      v53 = *(a1 + 112);
      if (v53)
      {
        v54 = std::__shared_weak_count::lock(v53);
        if (v54)
        {
          v55 = v54;
          v56 = *(a1 + 104);
          if (v56)
          {
            (*(*v56 + 304))(v56, a2, 0, "writeEntry_sync");
          }

          sub_100004A34(v55);
        }
      }

      v49 = 1;
LABEL_83:
      sub_10000FFD0(a6, v49);
      if (SHIBYTE(v68) < 0)
      {
        operator delete(__dst[0]);
      }

      goto LABEL_85;
    }

    if (v12)
    {
      ServiceMap = Registry::getServiceMap(*(a1 + 56));
      v18 = ServiceMap;
      if (v19 < 0)
      {
        v20 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
        v21 = 5381;
        do
        {
          v19 = v21;
          v22 = *v20++;
          v21 = (33 * v21) ^ v22;
        }

        while (v22);
      }

      std::mutex::lock(ServiceMap);
      *&buf.var0 = v19;
      v23 = sub_100009510(&v18[1].__m_.__sig, &buf);
      if (v23)
      {
        v25 = v23[3];
        v24 = v23[4];
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v18);
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v24);
          v26 = 0;
          goto LABEL_34;
        }
      }

      else
      {
        v25 = 0;
      }

      std::mutex::unlock(v18);
      v24 = 0;
      v26 = 1;
LABEL_34:
      (*(*v25 + 32))(v25, __dst, @"CachedPhoneNumber", @"phonebook", 0, 1);
      if ((v26 & 1) == 0)
      {
        sub_100004A34(v24);
      }

      goto LABEL_41;
    }

    v66 = 0;
    CSIPhoneNumber::getFullNumber(&buf.var0, a4);
    if (buf.var2.__rep_.__s.__data_[15] >= 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = *&buf.var0;
    }

    v71 = 0;
    v72 = 0;
    if (ctu::cf::convert_copy(&v72, p_buf, 0x8000100, kCFAllocatorDefault, v28))
    {
      v30 = v71;
      v71 = v72;
      *v73 = v30;
      sub_100005978(v73);
    }

    v66 = v71;
    v71 = 0;
    sub_100005978(&v71);
    if (buf.var2.__rep_.__s.__data_[15] < 0)
    {
      operator delete(*&buf.var0);
    }

    v31 = Registry::getServiceMap(*(a1 + 56));
    v32 = v31;
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

    std::mutex::lock(v31);
    *&buf.var0 = v33;
    v37 = sub_100009510(&v32[1].__m_.__sig, &buf);
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
        v40 = 0;
LABEL_38:
        (*(*v39 + 16))(v39, __dst, @"CachedPhoneNumber", v66, @"phonebook", 0, 1, 0);
        if ((v40 & 1) == 0)
        {
          sub_100004A34(v38);
        }

        sub_100005978(&v66);
        goto LABEL_41;
      }
    }

    else
    {
      v39 = 0;
    }

    std::mutex::unlock(v32);
    v38 = 0;
    v40 = 1;
    goto LABEL_38;
  }

  sub_10000FFD0(a6, 0);
  v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.var0) = 0;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "writeEntry_sync - No phonebook model", &buf, 2u);
  }

LABEL_85:
  if (v70)
  {
    sub_100004A34(v70);
  }
}

void sub_10158EBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  sub_100004A34(v41);
  if (a41 < 0)
  {
    operator delete(__p);
  }

  v44 = *(v42 - 152);
  if (v44)
  {
    sub_100004A34(v44);
  }

  _Unwind_Resume(a1);
}

void sub_10158ECA8(void *a1, int a2, uint64_t a3)
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

void sub_10158EDEC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_10158EE04(void *a1, int a2, uint64_t a3)
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

void sub_10158EF48(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_10158EF60(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

void sub_10158F098(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_10158F0B0(void *a1, int a2, __int128 *a3, uint64_t a4)
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

void sub_10158F284(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 39) < 0)
  {
    operator delete(*(v17 + 16));
  }

  sub_10004F058(a1);
}

void sub_10158F2C4(void *a1, void *a2, uint64_t a3)
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

void sub_10158F4C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10158F4E0(void *a1, int a2, uint64_t a3)
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

uint64_t sub_10158F648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  v8[0] = a1;
  v8[1] = &v9;
  v8[2] = a3;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      v4 = sub_1015943D8(v8);
      return v4 & 1;
    }

    v5 = *(a1 + 32) == 0;
  }

  else
  {
    v5 = 1;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_1015946E4;
  v10[3] = &unk_101F502A8;
  v10[4] = a1 + 8;
  v10[5] = v8;
  v11 = v10;
  v6 = *(a1 + 24);
  v17 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v5)
  {
    v13 = sub_1000597B4;
    v14 = &unk_101F501E8;
    v15 = &v17;
    v16 = &v11;
    dispatch_sync(v6, block);
  }

  else
  {
    v13 = sub_10006A710;
    v14 = &unk_101F50208;
    v15 = &v17;
    v16 = &v11;
    dispatch_async_and_wait(v6, block);
  }

  v4 = v17;
  return v4 & 1;
}

void sub_10158F7C4(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

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

void sub_10158F8D8(void *a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    atomic_fetch_add_explicit((a5 + 8), 1uLL, memory_order_relaxed);
  }

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

void sub_10158F9F0(void *a1, int a2)
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

void sub_10158FAE0(void *a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    atomic_fetch_add_explicit((a5 + 8), 1uLL, memory_order_relaxed);
  }

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

void sub_10158FBF8(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

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

void sub_10158FD0C(void *a1, __int128 *a2, uint64_t *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 1));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 2);
  }

  v9 = *(a2 + 24);
  v6 = a3[1];
  v10 = *a3;
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

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

void sub_10158FEB4(void *a1, uint64_t a2)
{
  if ((operator==() & 1) == 0)
  {
    v4 = a1[18];
    if (v4 != a1 + 19)
    {
      v5 = (a2 + 8);
      while (1)
      {
        v6 = *(v4 + 28);
        v13 = v6;
        v7 = *v5;
        if (!*v5)
        {
          goto LABEL_13;
        }

        v8 = a2 + 8;
        do
        {
          if (*(v7 + 28) >= v6)
          {
            v8 = v7;
          }

          v7 = *(v7 + 8 * (*(v7 + 28) < v6));
        }

        while (v7);
        if (v8 == v5 || *(v8 + 28) > v6)
        {
          goto LABEL_13;
        }

        v9 = sub_1000A8C4C(a2, &v13);
        if (*v9 != HIDWORD(v13))
        {
          break;
        }

LABEL_14:
        v10 = v4[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v4[2];
            v12 = *v11 == v4;
            v4 = v11;
          }

          while (!v12);
        }

        v4 = v11;
        if (v11 == a1 + 19)
        {
          return;
        }
      }

      v6 = v13;
LABEL_13:
      sub_10158FFB4(a1, v6);
      goto LABEL_14;
    }
  }
}

void sub_10158FFB4(void *a1, uint64_t a2)
{
  v10 = 0u;
  v11 = 0u;
  *v8 = 0u;
  v9 = 0u;
  memset(&__p, 0, sizeof(__p));
  v6 = 0;
  v4 = 0;
  sub_10006C7E4(a1, a2, &__p, &v10, v8, &v6, &v5, &v4);
  sub_101590184(a1, a2, v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v9) < 0)
  {
    operator delete(v8[0]);
  }

  if (SBYTE7(v11) < 0)
  {
    operator delete(v10);
  }
}

void sub_101590058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_101590094(void *a1, uint64_t a2)
{
  v2 = a1[21];
  v3 = a1 + 22;
  if (v2 != a1 + 22)
  {
    v6 = (a2 + 8);
    while (1)
    {
      v7 = *(v2 + 28);
      v14 = v7;
      v8 = *v6;
      if (!*v6)
      {
        goto LABEL_12;
      }

      v9 = v6;
      do
      {
        if (*(v8 + 28) >= v7)
        {
          v9 = v8;
        }

        v8 = *(v8 + 8 * (*(v8 + 28) < v7));
      }

      while (v8);
      if (v9 == v6 || *(v9 + 7) > v7)
      {
        goto LABEL_12;
      }

      v10 = sub_1000A8C4C(a2, &v14);
      if (*v10 != BYTE4(v14))
      {
        break;
      }

LABEL_13:
      v11 = v2[1];
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
          v12 = v2[2];
          v13 = *v12 == v2;
          v2 = v12;
        }

        while (!v13);
      }

      v2 = v12;
      if (v12 == v3)
      {
        return;
      }
    }

    v7 = v14;
LABEL_12:
    sub_10158FFB4(a1, v7);
    goto LABEL_13;
  }
}

uint64_t *sub_101590184(void *a1, uint64_t a2, int a3)
{
  v5 = a1[19];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 19;
  do
  {
    if (*(v5 + 28) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 28) < a2));
  }

  while (v5);
  if (v6 != a1 + 19 && *(v6 + 7) <= a2)
  {
    v7 = (v6[4] & 0xFFFFFFFE) == 4;
  }

  else
  {
LABEL_8:
    v7 = 0;
  }

  v8 = a1[22];
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = a1 + 22;
  do
  {
    if (*(v8 + 28) >= a2)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * (*(v8 + 28) < a2));
  }

  while (v8);
  if (v9 != a1 + 22 && *(v9 + 7) <= a2)
  {
    v10 = *(v9 + 32);
    if (a3)
    {
LABEL_17:
      v11 = v10 & v7;
      v12 = a1 + 15;
      result = sub_10006BD2C((a1 + 15), a2);
      if (result)
      {
        if ((v11 & 1) == *(result + 4))
        {
          return result;
        }
      }

      else
      {
        if ((v11 & 1) == 0)
        {
          return result;
        }

        v11 = 1;
      }

      goto LABEL_27;
    }
  }

  else
  {
LABEL_16:
    v10 = 0;
    if (a3)
    {
      goto LABEL_17;
    }
  }

  v12 = a1 + 15;
  result = sub_10006BD2C((a1 + 15), a2);
  if (!result || (*(result + 4) & 1) == 0)
  {
    return result;
  }

  v11 = 0;
LABEL_27:
  v14 = sub_10006BD2C(v12, a2);
  if (v14)
  {
    *(v14 + 4) = v11 & 1;
  }

  v15 = a1[9];
  v16 = sub_10006BD2C(v12, a2);
  if (v16)
  {
    v17 = *(v16 + 4);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(*v15 + 320);

  return v18(v15, a2, v17 & 1);
}

uint64_t sub_101590334(uint64_t a1, uint64_t a2)
{
  v4 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Baseband refresh start received", v9, 2u);
  }

  v5 = sub_10006BD2C(a1 + 120, a2);
  if (v5)
  {
    v6 = v5;
    v7 = v5[4];
    if (v7)
    {
      (*(*v7 + 256))(v7, 1);
    }

    *(v6 + 5) = 0;
  }

  return (*(**(a1 + 88) + 80))(*(a1 + 88), a2);
}

void sub_101590448(char *a1)
{
  if (a1)
  {
    sub_101590448(*a1);
    sub_101590448(*(a1 + 1));
    v2 = *(a1 + 10);
    if (v2)
    {
      sub_100004A34(v2);
    }

    if (a1[71] < 0)
    {
      operator delete(*(a1 + 6));
    }

    operator delete(a1);
  }
}

void sub_10159057C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_101590650);
  __cxa_rethrow();
}

void sub_1015905BC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101590610(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101590650(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *sub_1015906A0(void **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  v4 = *(v2 + 88);
  v5 = v1[1];
  *buf = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  (*(*v4 + 32))(v4, buf);
  if (*buf)
  {
    dispatch_group_leave(*buf);
    if (*buf)
    {
      dispatch_release(*buf);
    }
  }

  ctu::RestModule::disconnect((v2 + 192));
  sub_1000FF844(&v8);
  return sub_1000049E0(&v7);
}

void sub_101590790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_group_t group)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1015907CC(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  v34 = *off_101F4FD30;
  v35 = *off_101F4FD20;
  v32 = *off_101F4FD50;
  v33 = *off_101F4FD40;
  v23 = 0;
  v24 = 0;
  ServiceMap = Registry::getServiceMap(*(v1 + 56));
  v4 = ServiceMap;
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

  std::mutex::lock(ServiceMap);
  *buf = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, buf);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  std::mutex::unlock(v4);
  v23 = v11;
  v24 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v10);
  }

  v21 = 0;
  v22 = 0;
  v12 = Registry::getServiceMap(*(v1 + 56));
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
  *buf = v14;
  v18 = sub_100009510(&v13[1].__m_.__sig, buf);
  if (v18)
  {
    v20 = v18[3];
    v19 = v18[4];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  std::mutex::unlock(v13);
  v21 = v20;
  v22 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v19);
  }

  *buf = &v23;
  v26 = &v33;
  v27 = &v35;
  v28 = &v32;
  v29 = &v21;
  v30 = v1;
  v31 = &v34;
  sub_10158CE28(buf, 1);
  sub_10158CE28(buf, 2);
  if (v22)
  {
    sub_100004A34(v22);
  }

  if (v24)
  {
    sub_100004A34(v24);
  }

  sub_10000501C(&v35, "/cc/props/registration_status");
  operator new();
}

void sub_101590F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_1000062D4(va);
  if (*(v14 - 73) < 0)
  {
    operator delete(*(v14 - 96));
  }

  sub_100ECE348(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_10159109C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4FEE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1015910D4(void *a1, xpc_object_t *a2)
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

  sub_100109E38(v3, a2);
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

void sub_1015911D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13)
{
  sub_10006DCAC(&a9, a10);
  sub_10006DCAC(&a12, a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1015911FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015912C4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4FF68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1015912FC(void *a1, xpc_object_t *a2)
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

  sub_10011E228(v3, a2);
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

void sub_1015913F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13)
{
  sub_10006DCAC(&a9, a10);
  sub_10006DCAC(&a12, a13);
  _Unwind_Resume(a1);
}

uint64_t sub_101591424(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_101591470(void *a1)
{
  *a1 = off_101F4FFE8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1015914BC(void *a1)
{
  *a1 = off_101F4FFE8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_101591594(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F4FFE8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1015915CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1015915DC(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10159172C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  sub_100004A34(v17);
  if (v16)
  {
    operator delete(v16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101591778(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015917E4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F50068;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101591860(PhonebookDriverEventHandlerInterface *this)
{
  *this = off_101F500B8;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  PhonebookDriverEventHandlerInterface::~PhonebookDriverEventHandlerInterface(this);
}

void sub_1015918BC(PhonebookDriverEventHandlerInterface *this)
{
  *this = off_101F500B8;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  PhonebookDriverEventHandlerInterface::~PhonebookDriverEventHandlerInterface(this);

  operator delete();
}

void sub_10159192C(uint64_t a1, int a2, char a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        v7 = *(v6 + 16);
        if (v7)
        {
          if (std::__shared_weak_count::lock(v7))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v5);
    }
  }
}

void sub_101591A78(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        v7 = *(v6 + 16);
        if (v7)
        {
          if (std::__shared_weak_count::lock(v7))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v5);
    }
  }
}

void sub_101591BC0(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
          if (std::__shared_weak_count::lock(v6))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v4);
    }
  }
}

void sub_101591CF8(uint64_t a1, int a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        v10 = *a3;
        v11 = a3[1];
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
          sub_10158F7C4(v9, a2, v10, v11);
        }

        sub_10158F7C4(v9, a2, v10, 0);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_101591DA0(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = *a4;
        v13 = a4[1];
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
          sub_10158F8D8(v11, a2, a3, v12, v13);
        }

        sub_10158F8D8(v11, a2, a3, v12, 0);
      }

      sub_100004A34(v10);
    }
  }
}

void sub_101591E60(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = *a4;
        v13 = a4[1];
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
          sub_10158FAE0(v11, a2, a3, v12, v13);
        }

        sub_10158FAE0(v11, a2, a3, v12, 0);
      }

      sub_100004A34(v10);
    }
  }
}

void sub_101591F20(uint64_t a1, int a2, int a3, int a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = *(v7 + 16);
        if (v8)
        {
          if (std::__shared_weak_count::lock(v8))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v6);
    }
  }
}

void sub_101592070(uint64_t a1, int a2, int a3, int a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = *(v7 + 16);
        if (v8)
        {
          if (std::__shared_weak_count::lock(v8))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1015921C0(uint64_t a1, int a2, __int16 a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        v7 = *(v6 + 16);
        if (v7)
        {
          if (std::__shared_weak_count::lock(v7))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10159230C(uint64_t a1, int a2, int a3, char a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = *(v7 + 16);
        if (v8)
        {
          if (std::__shared_weak_count::lock(v8))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v6);
    }
  }
}