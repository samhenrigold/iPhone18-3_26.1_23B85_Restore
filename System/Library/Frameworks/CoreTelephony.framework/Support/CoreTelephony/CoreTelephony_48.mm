uint64_t sub_1002FFE64(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E3F8A8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1002FFE90(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1002FFEDC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E3F928;
  v5[1] = v3;
  v5[3] = v5;
  sub_100300158(v5, a1);
  sub_1002FED80(v5);
  return a1;
}

uint64_t sub_1002FFFE0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E3F928;
  a2[1] = v2;
  return result;
}

uint64_t sub_100300014(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100300060(uint64_t *a1, BOOL *a2)
{
  v2 = xpc_BOOL_create(*a2);
  if (!v2)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/provisioning_pco_switch");
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

void sub_100300110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

void *sub_100300158(void *result, void *a2)
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

void sub_1003003B8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_100300434(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E3F9B8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100300468(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1003004B4(uint64_t *a1, xpc_object_t *a2)
{
  v2 = *a1;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  sub_10011D868(&v4, a2);
  memset(v3, 0, sizeof(v3));
  sub_10027E628(v3, v4, v5, 0x2E8BA2E8BA2E8BA3 * ((v5 - v4) >> 3));
  sub_101131F94(v2, v3);
  v7 = v3;
  sub_100112048(&v7);
  v7 = &v4;
  sub_100112048(&v7);
}

void sub_100300548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 24) = v13;
  sub_100112048((v14 - 24));
  *(v14 - 24) = &a13;
  sub_100112048((v14 - 24));
  _Unwind_Resume(a1);
}

void *sub_100300578(void *a1)
{
  *a1 = off_101E3FA38;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003005C4(void *a1)
{
  *a1 = off_101E3FA38;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1003006A4(uint64_t result, uint64_t a2)
{
  *a2 = off_101E3FA38;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003006E4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003006F4(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100300734(void *a1)
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
        DataPlanManagerBootstrap::handleDumpState_sync(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1003007BC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100300808(void *a1)
{
  *a1 = off_101E3FAB8;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100300854(void *a1)
{
  *a1 = off_101E3FAB8;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100300934(uint64_t result, uint64_t a2)
{
  *a2 = off_101E3FAB8;
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

void sub_100300974(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100300984(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003009C4(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v16 = *v4;
    ctu::rest::detail::read_enum_string_value(&v16, a2, v6);
    *v4 = v16;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v6);
  }

  v9 = a1[4];
  if (v9)
  {
    v10 = a1[2];
    v11 = std::__shared_weak_count::lock(v9);
    if (v11)
    {
      v12 = v11;
      if (a1[3])
      {
        v13 = *(v10 + 640);
        if (v13)
        {
          if (*(v10 + 240))
          {
            v14 = *(v10 + 64);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = subscriber::asString();
              v16 = 136315138;
              v17 = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I MSIM config changed, %s", &v16, 0xCu);
              v13 = *(v10 + 640);
            }

            (*(*v13 + 744))(v13);
          }
        }
      }

      sub_100004A34(v12);
    }
  }
}

uint64_t sub_100300B7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100300BC8(_OWORD *a1, uint64_t a2)
{
  *a1 = 0u;
  a1[1] = 0u;
  sub_100300C20(a1, a2);
}

void sub_100300C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_100084C48((v10 + 24));
  a10 = v10;
  sub_1001018AC(&a10);
  _Unwind_Resume(a1);
}

void sub_100300C20(uint64_t a1, uint64_t a2)
{
  object = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  dispatch_retain(object);
  sub_100300C8C(a1 + 24, &object);
}

void sub_100300C8C(uint64_t a1, uint64_t a2)
{
  object = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  dispatch_retain(object);
  sub_100300D24(&v5, &object);
}

void sub_100300D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, void (**a13)(void, void, uint64_t))
{
  sub_100084C48(&a13);
  dispatch_release(object);
  _Unwind_Resume(a1);
}

void sub_100300D24(uint64_t (***a1)(), uint64_t a2)
{
  object = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  dispatch_retain(object);
  sub_100300D98(a1, &object);
}

void sub_100300D98(uint64_t (***a1)(), uint64_t a2)
{
  *a1 = 0;
  object = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  dispatch_retain(object);
  sub_100300E0C(a1, &object);
}

void sub_100300E0C(uint64_t (***a1)(), uint64_t a2)
{
  object = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  dispatch_retain(object);
  sub_100241DB8(boost::function1<void,BOOL>::assign_to<ctu::DispatchSlot<boost::_bi::bind_t<void,boost::_mfi::mf1<void,DataPlanManagerBootstrap,BOOL>,boost::_bi::list2<boost::_bi::value<DataPlanManagerBootstrap*>,boost::arg<1>>>>>(ctu::DispatchSlot<boost::_bi::bind_t<void,boost::_mfi::mf1<void,DataPlanManagerBootstrap,BOOL>,boost::_bi::list2<boost::_bi::value<DataPlanManagerBootstrap*>,boost::arg<1>>>>)::stored_vtable, &object, a1 + 1);
}

void boost::detail::function::functor_manager<ctu::DispatchSlot<boost::_bi::bind_t<void,boost::_mfi::mf1<void,DataPlanManagerBootstrap,BOOL>,boost::_bi::list2<boost::_bi::value<DataPlanManagerBootstrap*>,boost::arg<1>>>>>::manage(void *a1, _WORD *a2, int a3)
{
  if (a3 == 4)
  {
    a2[4] = 0;
  }

  else
  {
    sub_100300EC4(a1, a2, a3);
  }
}

void sub_100300EC4(void *a1, _WORD *a2, int a3)
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *a1;
      *a1 = 0;
      return;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    if (*a2)
    {
      dispatch_release(**a2);
      operator delete();
    }
  }

  else
  {
    if (a3 != 3)
    {
LABEL_10:
      a2[4] = 0;
      return;
    }

    v5 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v5 == (0x80000001017EF6D8 & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v5, (0x80000001017EF6D8 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = *a1;
      return;
    }
  }

  *a2 = 0;
}

void sub_100300FE4(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v2 = boost::function1<void,BOOL>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf1<void,DataPlanManagerBootstrap,BOOL>,boost::_bi::list2<boost::_bi::value<DataPlanManagerBootstrap*>,boost::arg<1>>>>(boost::_bi::bind_t<void,boost::_mfi::mf1<void,DataPlanManagerBootstrap,BOOL>,boost::_bi::list2<boost::_bi::value<DataPlanManagerBootstrap*>,boost::arg<1>>>)::stored_vtable + 1;
  operator new();
}

uint64_t boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf1<void,DataPlanManagerBootstrap,BOOL>,boost::_bi::list2<boost::_bi::value<DataPlanManagerBootstrap*>,boost::arg<1>>>>::manage(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  v4 = result;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
LABEL_2:
        *(a2 + 8) = 0;
        return result;
      }

      result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
      if (result == (0x80000001017EF75ELL & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, (0x80000001017EF75ELL & 0x7FFFFFFFFFFFFFFFLL)), !result))
      {
        *a2 = v4;
      }

      else
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    v5 = *result;
    *(a2 + 16) = *(result + 16);
    *a2 = v5;
  }

  return result;
}

uint64_t boost::detail::function::void_function_obj_invoker1<boost::_bi::bind_t<void,boost::_mfi::mf1<void,DataPlanManagerBootstrap,BOOL>,boost::_bi::list2<boost::_bi::value<DataPlanManagerBootstrap*>,boost::arg<1>>>,void,BOOL>::invoke(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = (*(a1 + 16) + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

void sub_100301320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1003013D0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E3FB78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100301408(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003014C4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E3FBF8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1003014F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100301630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1003016E0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E3FC78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100301718(void *a1, xpc_object_t *a2)
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

uint64_t sub_100301810(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1003018D0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E3FCF8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_100301900(uint64_t a1, xpc_object_t *a2)
{
  sub_10010A62C(*(a1 + 8), a2);
  v3 = *(a1 + 16);
  DataPlanManagerBootstrap::maybeStartPlanExpiryDetection_sync(v3);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_1000B2128(&v13, *(v3 + 216), *(v3 + 224), 0xCF3CF3CF3CF3CF3DLL * ((*(v3 + 224) - *(v3 + 216)) >> 3));
  if (v14 != v13 && *(v13 + 8) == 5 && *(v3 + 688) == 1)
  {
    ServiceMap = Registry::getServiceMap(*(v3 + 72));
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
        if (!v12)
        {
LABEL_16:
          sub_100004A34(v11);
          goto LABEL_17;
        }
      }

      else
      {
        std::mutex::unlock(v5);
        if (!v12)
        {
          goto LABEL_17;
        }
      }

      if (MaxDataRateInterface::getUserPreferenceEnableLTE(v12) == 2)
      {
        sub_100083E9C(&event::registration::setLTEEnabled, 1);
      }

      *(v3 + 688) = 0;
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      std::mutex::unlock(v5);
    }
  }

LABEL_17:
  v16 = &v13;
  sub_1000B2AF8(&v16);
}

void sub_100301A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  if (v12)
  {
    sub_100004A34(v12);
  }

  a12 = &a9;
  sub_1000B2AF8(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_100301AB8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100301BA0(void *a1, uint64_t a2, NSObject **a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3FD78;
  sub_100301C98((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_100301C1C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3FD78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100301C98(uint64_t a1, uint64_t a2, NSObject **a3, uint64_t *a4)
{
  v7 = *a3;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *a4;
  v9 = a4[1];
  v11[0] = v8;
  v11[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  DataPlanManagerBootstrap::DataPlanManagerBootstrap(a1, a2, &object, v11);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_100301D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object)
{
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100301DD0(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3FDC8;
  CellularPlanSettingsDevice::CellularPlanSettingsDevice((a1 + 3), a2);
  return a1;
}

void sub_100301E4C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3FDC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100301F44(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3FE18;
  sub_10030203C(a1 + 3, a2, a3);
  return a1;
}

void sub_100301FC0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3FE18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10030203C(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2[1];
  v9 = *a2;
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100BE20A4(a1, &v9, &v7);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  return a1;
}

void sub_1003020C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

uint64_t sub_1003020E4(std::mutex *this, uint64_t *a2)
{
  v4 = "31CellularPlanControllerInterface";
  if (("31CellularPlanControllerInterface" & 0x8000000000000000) != 0)
  {
    v5 = ("31CellularPlanControllerInterface" & 0x7FFFFFFFFFFFFFFFLL);
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
  v9 = a2[1];
  v13 = v8;
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = v4;
  if (!v8)
  {
    sub_100145EC4(&this[1].__m_.__sig, &v15);
    v11 = 1;
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_100145BF0(&this[1].__m_.__sig, &v15, &v15, &v13);
  v11 = v10;
  v9 = v14;
  if (v14)
  {
LABEL_8:
    sub_100004A34(v9);
  }

LABEL_9:
  std::mutex::unlock(this);
  return v11 & 1;
}

uint64_t sub_1003021C0(std::mutex *this, uint64_t *a2)
{
  v4 = "22CellularPlanController";
  if (("22CellularPlanController" & 0x8000000000000000) != 0)
  {
    v5 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
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
  v9 = a2[1];
  v13 = v8;
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = v4;
  if (!v8)
  {
    sub_100145EC4(&this[1].__m_.__sig, &v15);
    v11 = 1;
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_100145BF0(&this[1].__m_.__sig, &v15, &v15, &v13);
  v11 = v10;
  v9 = v14;
  if (v14)
  {
LABEL_8:
    sub_100004A34(v9);
  }

LABEL_9:
  std::mutex::unlock(this);
  return v11 & 1;
}

uint64_t sub_1003022AC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003022C8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t *sub_1003022D8(unsigned __int8 **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *(*v1 + 656);
  if (v2)
  {
    (*(*v2 + 208))(v2, v1 + 8, v1[32]);
  }

  else
  {
    v3 = *(*v1 + 64);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I fCellularPlanControllerPhone is not available!", buf, 2u);
    }
  }

  sub_1003023A8(&v6);
  return sub_1000049E0(&v5);
}

void sub_10030238C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1003023A8(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003023A8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_100302400(unsigned __int8 **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *(*v1 + 656);
  if (v2)
  {
    (*(*v2 + 216))(v2, v1 + 8, v1[32]);
  }

  else
  {
    v3 = *(*v1 + 64);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I fCellularPlanControllerPhone is not available!", buf, 2u);
    }
  }

  sub_1003023A8(&v6);
  return sub_1000049E0(&v5);
}

void sub_1003024B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1003023A8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1003024D0(uint64_t a1)
{
  *a1 = off_101E3FEA0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_100302520(uint64_t a1)
{
  *a1 = off_101E3FEA0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  operator delete();
}

char *sub_100302630(char *result, uint64_t a2)
{
  *a2 = off_101E3FEA0;
  *(a2 + 8) = *(result + 8);
  if (result[47] < 0)
  {
    return sub_100005F2C((a2 + 24), *(result + 3), *(result + 4));
  }

  v2 = *(result + 24);
  *(a2 + 40) = *(result + 5);
  *(a2 + 24) = v2;
  return result;
}

void sub_100302680(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void sub_100302694(void **__p)
{
  if (*(__p + 47) < 0)
  {
    operator delete(__p[3]);
  }

  operator delete(__p);
}

void sub_1003026D8(uint64_t a1, uint64_t a2)
{
  v10 = *(a2 + 16);
  *__p = *a2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v2 = *(a1 + 47);
  if (v2 >= 0)
  {
    v3 = *(a1 + 47);
  }

  else
  {
    v3 = *(a1 + 32);
  }

  v4 = HIBYTE(v10);
  v5 = SHIBYTE(v10);
  if (v10 < 0)
  {
    v4 = __p[1];
  }

  if (v3 == v4)
  {
    v6 = *(a1 + 8);
    v7 = v2 >= 0 ? (a1 + 24) : *(a1 + 24);
    v8 = v10 >= 0 ? __p : __p[0];
    if (!memcmp(v7, v8, v3))
    {
      v11[0] = 0;
      v11[1] = 0;
      sub_100004AA0(v11, (v6 + 32));
      operator new();
    }
  }

  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_10030284C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100302898(DataPlanManagerBootstrap ***a1)
{
  v1 = a1;
  DataPlanManagerBootstrap::processPSNetworkReject_sync(**a1, *(*a1 + 8), *(*a1 + 12));
  operator delete();
}

id sub_100302944(uint64_t a1)
{
  v1 = [NSURL URLWithString:a1];
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [v2 openSensitiveURL:v1 withOptions:0];

  return v3;
}

uint64_t sub_1003029DC(uint64_t a1, NSObject **a2, void *a3, void *a4)
{
  *a1 = off_101E3FFB0;
  v8 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v13, kCtLoggingSystemName, "cp.consent");
  sub_100302B04(v8, a2, &v13);
  ctu::OsLogContext::~OsLogContext(&v13);
  *a1 = off_101E3FF20;
  v9 = a3[1];
  *(a1 + 48) = *a3;
  *(a1 + 56) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a4[1];
  *(a1 + 64) = *a4;
  *(a1 + 72) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  *(a1 + 80) = dispatch_queue_create("cp.consent", v11);
  *(a1 + 88) = 0;
  *(a1 + 416) = 0;
  return a1;
}

void *sub_100302B04(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_100302B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_100302B94(uint64_t a1)
{
  *a1 = off_101E3FF20;
  if (*(a1 + 416) == 1)
  {
    sub_100305D48(a1 + 88);
  }

  v2 = *(a1 + 80);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_100302C20(uint64_t a1)
{
  sub_100302B94(a1);

  operator delete();
}

uint64_t sub_100302C58(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 **a6, __int128 *a7, __int128 *a8, __int128 *a9, char a10, __int128 **a11)
{
  if (*(a1 + 416) != 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(buf, *a2, *(a2 + 8));
    }

    else
    {
      *buf = *a2;
      *&buf[16] = *(a2 + 16);
    }

    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(&v31, *a3, *(a3 + 1));
    }

    else
    {
      v31 = *a3;
      v32 = *(a3 + 2);
    }

    v33 = *a5;
    if (*(a5 + 39) < 0)
    {
      sub_100005F2C(&v34, *(a5 + 2), *(a5 + 3));
    }

    else
    {
      v34 = a5[1];
      v35 = *(a5 + 4);
    }

    v36 = *(a5 + 40);
    memset(v37, 0, sizeof(v37));
    sub_10004EFD0(v37, *a6, a6[1], 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 3));
    v38 = *a4;
    v39 = *a7;
    if (*(a8 + 23) < 0)
    {
      sub_100005F2C(&v40, *a8, *(a8 + 1));
    }

    else
    {
      v40 = *a8;
      v41 = *(a8 + 2);
    }

    if (*(a9 + 23) < 0)
    {
      sub_100005F2C(&v42, *a9, *(a9 + 1));
    }

    else
    {
      v42 = *a9;
      v43 = *(a9 + 2);
    }

    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = a10;
    memset(v48, 0, sizeof(v48));
    sub_10004EFD0(v48, *a11, a11[1], 0xAAAAAAAAAAAAAAABLL * ((a11[1] - *a11) >> 3));
    v49 = 0;
    sub_10030302C(a1 + 88, buf);
    sub_100305D48(buf);
    return 1;
  }

  if (sub_1013F36E8(a1 + 136, a5) && *(a1 + 224) == *a7 && *(a1 + 232) == *(a7 + 1))
  {
    v26 = *(a1 + 40);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a5 + 2);
      v28 = a5 + 1;
      v27 = v29;
      if (*(v28 + 23) >= 0)
      {
        v27 = v28;
      }

      *buf = 136315138;
      *&buf[4] = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I ignore duplicate consent request:%s", buf, 0xCu);
    }

    return 1;
  }

  v15 = *(a1 + 40);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v16)
  {
    v18 = (a1 + 152);
    if (*(a1 + 175) < 0)
    {
      v18 = *v18;
    }

    v21 = *(a5 + 2);
    v20 = a5 + 1;
    v19 = v21;
    if (*(v20 + 23) >= 0)
    {
      v19 = v20;
    }

    *buf = 136315394;
    *&buf[4] = v18;
    *&buf[12] = 2080;
    *&buf[14] = v19;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#E consent ongoing. iccid:%s, iccid: %s", buf, 0x16u);
    return 0;
  }

  return result;
}

void sub_100302F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  sub_1000087B4(&a10);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10030302C(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 328) == 1)
  {
    sub_1003057DC(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    *(a1 + 48) = a2[3];
    v6 = a2[4];
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 64) = v6;
    a2[4] = 0uLL;
    *(a2 + 10) = 0;
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 96) = 0;
    *(a1 + 96) = a2[6];
    *(a1 + 112) = *(a2 + 14);
    a2[6] = 0uLL;
    *(a2 + 14) = 0;
    v7 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v7;
    v8 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 21);
    *(a1 + 152) = v8;
    a2[10] = 0uLL;
    *(a2 + 19) = 0;
    v9 = a2[11];
    *(a1 + 192) = *(a2 + 24);
    *(a1 + 176) = v9;
    *(a2 + 184) = 0uLL;
    *(a2 + 22) = 0;
    sub_100305D04((a1 + 200), a2 + 200);
    *(a1 + 288) = *(a2 + 144);
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
    *(a1 + 296) = 0;
    *(a1 + 296) = *(a2 + 37);
    *(a1 + 304) = a2[19];
    *(a2 + 38) = 0;
    *(a2 + 39) = 0;
    *(a2 + 37) = 0;
    *(a1 + 320) = *(a2 + 160);
    *(a1 + 328) = 1;
  }

  return a1;
}

uint64_t sub_10030316C(uint64_t a1)
{
  if (*(a1 + 416))
  {
    if (*(a1 + 408) == 1)
    {
      v2 = *(a1 + 40);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = (a1 + 152);
        if (*(a1 + 175) < 0)
        {
          v3 = *v3;
        }

        v10 = 136315138;
        v11 = v3;
        v4 = "#I ignore duplicate transfer consent request:%s";
        v5 = v2;
        v6 = 12;
        goto LABEL_9;
      }
    }

    else
    {
      *(a1 + 408) = 1;
      if ((sub_1003032D0(a1) & 1) == 0)
      {
        v8 = *(a1 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v10) = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#E display user consent failure", &v10, 2u);
        }

        sub_100304624(a1, 4);
      }
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      v4 = "#E inconsistent state. no transfer context";
      v5 = v7;
      v6 = 2;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v4, &v10, v6);
    }
  }

  return 1;
}

uint64_t sub_1003032D0(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  buf.__r_.__value_.__r.__words[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &buf);
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
        goto LABEL_7;
      }

      goto LABEL_11;
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
LABEL_7:
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#E invalid localization", &buf, 2u);
    }

    goto LABEL_41;
  }

LABEL_11:
  v13 = Registry::getServiceMap(*(a1 + 48));
  v14 = v13;
  if ((v15 & 0x8000000000000000) != 0)
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
  buf.__r_.__value_.__r.__words[0] = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, &buf);
  if (!v19)
  {
    v20 = 0;
LABEL_20:
    std::mutex::unlock(v14);
    v21 = 0;
    v22 = 1;
    if (!v20)
    {
      goto LABEL_17;
    }

    goto LABEL_21;
  }

  v20 = v19[3];
  v21 = v19[4];
  if (!v21)
  {
    goto LABEL_20;
  }

  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v14);
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v21);
  v22 = 0;
  if (!v20)
  {
LABEL_17:
    v23 = *(a1 + 40);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v24 = "#E invalid gestaltUtility";
    goto LABEL_38;
  }

LABEL_21:
  if (*(a1 + 416))
  {
    cf = 0;
    format = 0;
    v79 = 0;
    v80 = 0;
    v77 = 0;
    theString = CFStringCreateMutable(kCFAllocatorDefault, 0);
    v75 = 0;
    v76 = 0;
    v26 = *(a1 + 377);
    if (v26 != 2)
    {
      if (v26 != 1)
      {
        goto LABEL_120;
      }

      v70 = *(a1 + 184);
      v71 = *(a1 + 192);
      v27 = *(a1 + 384);
      if (v27 == *(a1 + 392))
      {
        (*(*v10 + 40))(&appendedString, v10, kCBMessageLocalizationTable, @"TRANSFER_CELLULAR_PLAN", 0);
        MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, appendedString.__r_.__value_.__l.__data_);
        v42 = theString;
        theString = MutableCopy;
        buf.__r_.__value_.__r.__words[0] = v42;
        sub_100305E28(&buf.__r_.__value_.__l.__data_);
      }

      else
      {
        v28 = 0;
        v29 = 0;
        v30 = kCBMessageLocalizationTable;
        while (1)
        {
          appendedString.__r_.__value_.__r.__words[0] = 0;
          v31 = (v27 + v28);
          if (*(v27 + v28 + 23) < 0)
          {
            v31 = *v31;
          }

          appendedString.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(kCFAllocatorDefault, v31, 0x8000100u);
          if (sub_100305550(a1))
          {
            StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", @"\u202A%@\u202C", 0, appendedString.__r_.__value_.__r.__words[0]);
            v33 = appendedString.__r_.__value_.__r.__words[0];
            appendedString.__r_.__value_.__r.__words[0] = StringWithValidatedFormat;
            buf.__r_.__value_.__r.__words[0] = v33;
            sub_100005978(&buf.__r_.__value_.__l.__data_);
          }

          CFStringAppend(theString, appendedString.__r_.__value_.__l.__data_);
          v34 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 392) - *(a1 + 384)) >> 3);
          if (v29 == v34 - 1)
          {
            break;
          }

          buf.__r_.__value_.__r.__words[0] = 0;
          if (v29 == v34 - 2)
          {
            (*(*v10 + 40))(&buf, v10, v30, @"AND", 0);
          }

          else
          {
            (*(*v10 + 40))(&buf, v10, v30, @"COMMA", 0);
          }

          CFStringAppend(theString, buf.__r_.__value_.__l.__data_);
          sub_100005978(&buf.__r_.__value_.__l.__data_);
          sub_100005978(&appendedString.__r_.__value_.__l.__data_);
          ++v29;
          v27 = *(a1 + 384);
          v28 += 24;
          if (v29 >= 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 392) - v27) >> 3))
          {
            goto LABEL_53;
          }
        }
      }

      sub_100005978(&appendedString.__r_.__value_.__l.__data_);
LABEL_53:
      isIPad = GestaltUtilityInterface::isIPad(v20);
      v44 = 0xAAAAAAAAAAAAAAABLL * ((v71 - v70) >> 3);
      v45 = kCBMessageLocalizationTable;
      if (isIPad)
      {
        if (v44 < 2)
        {
          (*(*v10 + 40))(&appendedString, v10, kCBMessageLocalizationTable, @"TRANSFER_SOURCE_TITLE_PAD", 0);
LABEL_68:
          buf.__r_.__value_.__r.__words[0] = cf;
          cf = appendedString.__r_.__value_.__r.__words[0];
          goto LABEL_69;
        }

        (*(*v10 + 40))(&appendedString, v10, kCBMessageLocalizationTable, @"TRANSFER_SOURCE_MULTIPLAN_PAD_TITLE", 0);
      }

      else
      {
        if (v44 < 2)
        {
          (*(*v10 + 40))(&appendedString, v10, kCBMessageLocalizationTable, @"TRANSFER_SOURCE_TITLE", 0);
          goto LABEL_68;
        }

        (*(*v10 + 40))(&appendedString, v10, kCBMessageLocalizationTable, @"TRANSFER_SOURCE_MULTIPLAN_TITLE", 0);
      }

      buf.__r_.__value_.__r.__words[0] = format;
      format = appendedString.__r_.__value_.__r.__words[0];
LABEL_69:
      appendedString.__r_.__value_.__r.__words[0] = 0;
      sub_100005978(&buf.__r_.__value_.__l.__data_);
      sub_100005978(&appendedString.__r_.__value_.__l.__data_);
      if (GestaltUtilityInterface::isIPad(v20))
      {
        if (v44 >= 2)
        {
          (*(*v10 + 40))(&appendedString, v10, v45, @"TRANSFER_REQUEST_MULTIPLAN_PROMPT_PAD", 0);
        }

        else
        {
          (*(*v10 + 40))(&appendedString, v10, v45, @"TRANSFER_REQUEST_PROMPT_PAD", 0);
        }
      }

      else if (v44 >= 2)
      {
        (*(*v10 + 40))(&appendedString, v10, v45, @"TRANSFER_REQUEST_MULTIPLAN_PROMPT", 0);
      }

      else
      {
        (*(*v10 + 40))(&appendedString, v10, v45, @"TRANSFER_REQUEST_PROMPT", 0);
      }

      buf.__r_.__value_.__r.__words[0] = v80;
      v80 = appendedString.__r_.__value_.__r.__words[0];
      appendedString.__r_.__value_.__r.__words[0] = 0;
      sub_100005978(&buf.__r_.__value_.__l.__data_);
      sub_100005978(&appendedString.__r_.__value_.__l.__data_);
      if (format)
      {
        v74 = 0;
        std::to_string(&v73, v44);
        if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&appendedString, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
        }

        else
        {
          appendedString = v73;
        }

        v83 = 0;
        if (SHIBYTE(appendedString.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&buf, appendedString.__r_.__value_.__l.__data_, appendedString.__r_.__value_.__l.__size_);
        }

        else
        {
          buf = appendedString;
        }

        v85 = 0;
        if (ctu::cf::convert_copy())
        {
          v55 = v83;
          v83 = v85;
          v86[0] = v55;
          sub_100005978(v86);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v74 = v83;
        v83 = 0;
        sub_100005978(&v83);
        if (SHIBYTE(appendedString.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(appendedString.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v73.__r_.__value_.__l.__data_);
        }

        if (v74)
        {
          v56 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, 0, v74);
          v57 = cf;
          cf = v56;
          buf.__r_.__value_.__r.__words[0] = v57;
          sub_100005978(&buf.__r_.__value_.__l.__data_);
        }

        sub_100005978(&v74);
      }

      appendedString.__r_.__value_.__r.__words[0] = 0;
      sub_100060DE8(&appendedString, &theString);
      if (v80 && appendedString.__r_.__value_.__r.__words[0])
      {
        if (sub_100305550(a1))
        {
          v58 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", @"\u202B%@\u202C", 0, appendedString.__r_.__value_.__r.__words[0]);
          v59 = appendedString.__r_.__value_.__r.__words[0];
          appendedString.__r_.__value_.__r.__words[0] = v58;
          buf.__r_.__value_.__r.__words[0] = v59;
          sub_100005978(&buf.__r_.__value_.__l.__data_);
        }

        v60 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", v80, 0, appendedString.__r_.__value_.__r.__words[0]);
        v61 = v79;
        v79 = v60;
        buf.__r_.__value_.__r.__words[0] = v61;
        sub_100005978(&buf.__r_.__value_.__l.__data_);
        if (sub_100305550(a1))
        {
          v62 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", @"\u202B%@\u202C", 0, v79);
          v63 = v79;
          v79 = v62;
          buf.__r_.__value_.__r.__words[0] = v63;
          sub_100005978(&buf.__r_.__value_.__l.__data_);
        }
      }

      (*(*v10 + 40))(v86, v10, v45, @"TRANSFER", 0);
      buf.__r_.__value_.__r.__words[0] = v76;
      v76 = v86[0];
      v86[0] = 0;
      sub_100005978(&buf.__r_.__value_.__l.__data_);
      sub_100005978(v86);
      (*(*v10 + 40))(v86, v10, v45, @"CANCEL", 0);
      buf.__r_.__value_.__r.__words[0] = v75;
      v75 = v86[0];
      v86[0] = 0;
      sub_100005978(&buf.__r_.__value_.__l.__data_);
      sub_100005978(v86);
      sub_100005978(&appendedString.__r_.__value_.__l.__data_);
      goto LABEL_120;
    }

    v86[0] = 0;
    appendedString.__r_.__value_.__r.__words[0] = 0;
    if (ctu::cf::convert_copy(&appendedString, "A data plan purchase was requested by %@.", 0x8000100, kCFAllocatorDefault, v25))
    {
      v36 = v86[0];
      v86[0] = appendedString.__r_.__value_.__l.__data_;
      buf.__r_.__value_.__r.__words[0] = v36;
      sub_100005978(&buf.__r_.__value_.__l.__data_);
    }

    v85 = v86[0];
    v86[0] = 0;
    sub_100005978(v86);
    buf.__r_.__value_.__r.__words[0] = format;
    format = v85;
    v85 = 0;
    sub_100005978(&buf.__r_.__value_.__l.__data_);
    sub_100005978(&v85);
    v86[0] = 0;
    appendedString.__r_.__value_.__r.__words[0] = 0;
    if (ctu::cf::convert_copy(&appendedString, "Another Apple device wants to use this iPhone to make a purchase. If you did not request this, don't allow the purchase.", 0x8000100, kCFAllocatorDefault, v37))
    {
      v38 = v86[0];
      v86[0] = appendedString.__r_.__value_.__l.__data_;
      buf.__r_.__value_.__r.__words[0] = v38;
      sub_100005978(&buf.__r_.__value_.__l.__data_);
    }

    v85 = v86[0];
    v86[0] = 0;
    sub_100005978(v86);
    buf.__r_.__value_.__r.__words[0] = v79;
    v79 = v85;
    v85 = 0;
    sub_100005978(&buf.__r_.__value_.__l.__data_);
    sub_100005978(&v85);
    v40 = (a1 + 264);
    if (*(a1 + 287) < 0)
    {
      v46 = *(a1 + 272);
      if (v46)
      {
        sub_100005F2C(&__p, *v40, v46);
        goto LABEL_63;
      }
    }

    else if (*(a1 + 287))
    {
      *&__p.__r_.__value_.__l.__data_ = *v40;
      __p.__r_.__value_.__r.__words[2] = *(a1 + 280);
LABEL_63:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&appendedString, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        appendedString = __p;
      }

      v83 = 0;
      if (SHIBYTE(appendedString.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&buf, appendedString.__r_.__value_.__l.__data_, appendedString.__r_.__value_.__l.__size_);
      }

      else
      {
        buf = appendedString;
      }

      v85 = 0;
      if (ctu::cf::convert_copy())
      {
        v49 = v83;
        v83 = v85;
        v86[0] = v49;
        sub_100005978(v86);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v74 = v83;
      v83 = 0;
      sub_100005978(&v83);
      if (SHIBYTE(appendedString.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(appendedString.__r_.__value_.__l.__data_);
      }

      buf.__r_.__value_.__r.__words[0] = v77;
      v77 = v74;
      v74 = 0;
      sub_100005978(&buf.__r_.__value_.__l.__data_);
      sub_100005978(&v74);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_91:
      if (format)
      {
        v50 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, 0, v77);
        v51 = cf;
        cf = v50;
        buf.__r_.__value_.__r.__words[0] = v51;
        sub_100005978(&buf.__r_.__value_.__l.__data_);
      }

      v86[0] = 0;
      appendedString.__r_.__value_.__r.__words[0] = 0;
      if (ctu::cf::convert_copy(&appendedString, "Purchase", 0x8000100, kCFAllocatorDefault, v48))
      {
        v52 = v86[0];
        v86[0] = appendedString.__r_.__value_.__l.__data_;
        buf.__r_.__value_.__r.__words[0] = v52;
        sub_100005978(&buf.__r_.__value_.__l.__data_);
      }

      v85 = v86[0];
      v86[0] = 0;
      sub_100005978(v86);
      buf.__r_.__value_.__r.__words[0] = v76;
      v76 = v85;
      v85 = 0;
      sub_100005978(&buf.__r_.__value_.__l.__data_);
      sub_100005978(&v85);
      v86[0] = 0;
      appendedString.__r_.__value_.__r.__words[0] = 0;
      if (ctu::cf::convert_copy(&appendedString, "Don't Allow", 0x8000100, kCFAllocatorDefault, v53))
      {
        v54 = v86[0];
        v86[0] = appendedString.__r_.__value_.__l.__data_;
        buf.__r_.__value_.__r.__words[0] = v54;
        sub_100005978(&buf.__r_.__value_.__l.__data_);
      }

      v85 = v86[0];
      v86[0] = 0;
      sub_100005978(v86);
      buf.__r_.__value_.__r.__words[0] = v75;
      v75 = v85;
      v85 = 0;
      sub_100005978(&buf.__r_.__value_.__l.__data_);
      sub_100005978(&v85);
LABEL_120:
      if (!cf || !v79 || !v76 || !v75)
      {
        v64 = *(a1 + 40);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "#E localization string does not exist", &buf, 2u);
        }
      }

      v65 = *(a1 + 72);
      if (v65)
      {
        v66 = std::__shared_weak_count::lock(v65);
        if (v66)
        {
          v67 = v66;
          v68 = *(a1 + 64);
          if (v68)
          {
            (*(*v68 + 32))(v68);
          }

          sub_100004A34(v67);
        }
      }

      if (cf)
      {
        CFRetain(cf);
      }

      if (v79)
      {
        CFRetain(v79);
      }

      if (v76)
      {
        CFRetain(v76);
      }

      if (v75)
      {
        CFRetain(v75);
      }

      sub_100004AA0(&appendedString, (a1 + 8));
      size = appendedString.__r_.__value_.__l.__size_;
      if (appendedString.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((appendedString.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(size);
      }

      v86[4] = 0;
      operator new();
    }

    v86[0] = 0;
    appendedString.__r_.__value_.__r.__words[0] = 0;
    if (ctu::cf::convert_copy(&appendedString, "your iPad", 0x8000100, kCFAllocatorDefault, v39))
    {
      v47 = v86[0];
      v86[0] = appendedString.__r_.__value_.__l.__data_;
      buf.__r_.__value_.__r.__words[0] = v47;
      sub_100005978(&buf.__r_.__value_.__l.__data_);
    }

    v85 = v86[0];
    v86[0] = 0;
    sub_100005978(v86);
    buf.__r_.__value_.__r.__words[0] = v77;
    v77 = v85;
    v85 = 0;
    sub_100005978(&buf.__r_.__value_.__l.__data_);
    sub_100005978(&v85);
    goto LABEL_91;
  }

  v23 = *(a1 + 40);
  if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_39;
  }

  LOWORD(buf.__r_.__value_.__l.__data_) = 0;
  v24 = "#E inconsistent state, transfer context is invalid";
LABEL_38:
  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, &buf, 2u);
LABEL_39:
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v21);
  }

LABEL_41:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  return 0;
}

void sub_100304354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, char a14, __int16 a15, char a16, dispatch_object_t object, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, const void *a33, const void *a34, const void *a35, const void *a36, const void *a37, const void *a38, const void *a39, const void *a40, const void *a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  sub_100005978(&a41);
  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  sub_100005978(&a33);
  sub_100005978(&a34);
  sub_100005978(&a35);
  sub_100305E28(&a36);
  sub_100005978(&a37);
  sub_100005978(&a38);
  sub_100005978(&a39);
  sub_100005978(&a40);
  if ((a14 & 1) == 0)
  {
    sub_100004A34(a13);
  }

  if ((a16 & 1) == 0)
  {
    sub_100004A34(v47);
  }

  _Unwind_Resume(a1);
}

void sub_100304624(uint64_t a1, char a2)
{
  if (*(a1 + 416) == 1)
  {
    *(a1 + 408) = 0;
    *(a1 + 376) = a2;
    v3 = *(a1 + 72);
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = v4;
        v6 = *(a1 + 64);
        if (v6 && *(a1 + 377) == 1)
        {
          if (*(a1 + 111) < 0)
          {
            sub_100005F2C(&__dst, *(a1 + 88), *(a1 + 96));
          }

          else
          {
            __dst = *(a1 + 88);
            v16 = *(a1 + 104);
          }

          if (*(a1 + 135) < 0)
          {
            sub_100005F2C(v13, *(a1 + 112), *(a1 + 120));
          }

          else
          {
            *v13 = *(a1 + 112);
            v14 = *(a1 + 128);
          }

          if (*(a1 + 175) < 0)
          {
            sub_100005F2C(v11, *(a1 + 152), *(a1 + 160));
          }

          else
          {
            *v11 = *(a1 + 152);
            v12 = *(a1 + 168);
          }

          v7 = *(a1 + 208);
          v8 = *(a1 + 216);
          if (*(a1 + 263) < 0)
          {
            sub_100005F2C(__p, *(a1 + 240), *(a1 + 248));
          }

          else
          {
            *__p = *(a1 + 240);
            v10 = *(a1 + 256);
          }

          (*(*v6 + 16))(v6, &__dst, v13, v11, a1 + 184, v7, v8);
          if (SHIBYTE(v10) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v12) < 0)
          {
            operator delete(v11[0]);
          }

          if (SHIBYTE(v14) < 0)
          {
            operator delete(v13[0]);
          }

          if (SHIBYTE(v16) < 0)
          {
            operator delete(__dst);
          }
        }

        sub_100004A34(v5);
      }
    }
  }
}

void sub_1003047F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (*(v33 - 89) < 0)
  {
    operator delete(*(v33 - 112));
  }

  sub_100004A34(v32);
  _Unwind_Resume(a1);
}

BOOL sub_100304868(uint64_t a1, void *a2, void *a3)
{
  if ((*(a1 + 416) & 1) == 0)
  {
    v17 = *(a1 + 40);
    result = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#E inconsistent state. no transfer context", buf, 2u);
    return 0;
  }

  v5 = a2;
  v6 = (a1 + 152);
  v7 = *(a1 + 175);
  if (v7 >= 0)
  {
    v8 = *(a1 + 175);
  }

  else
  {
    v8 = *(a1 + 160);
  }

  v9 = *(a2 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = a2[1];
  }

  if (v8 == v9)
  {
    if (v7 >= 0)
    {
      v11 = (a1 + 152);
    }

    else
    {
      v11 = *v6;
    }

    if (v10 < 0)
    {
      a2 = *a2;
    }

    if (!memcmp(v11, a2, v8) && *(a1 + 224) == *a3 && *(a1 + 232) == a3[1])
    {
      *(a1 + 408) = 0;
      sub_100304AA0(a1);
      return 1;
    }
  }

  v13 = *(a1 + 40);
  result = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    if (v10 < 0)
    {
      v5 = *v5;
    }

    if (v7 < 0)
    {
      v6 = *v6;
    }

    sCardSerialNumberAsString();
    sCardSerialNumberAsString();
    v15 = &v20;
    if (v21 < 0)
    {
      v15 = v20;
    }

    if (v19 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315906;
    v23 = v5;
    v24 = 2080;
    v25 = v6;
    v26 = 2080;
    v27 = v15;
    v28 = 2080;
    v29 = p_p;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#E transfer info not matched. iccid - %s vs %s(ctx). eid - %s vs %s(ctx)", buf, 0x2Au);
    if (v19 < 0)
    {
      operator delete(__p);
    }

    if (v21 < 0)
    {
      operator delete(v20);
    }

    return 0;
  }

  return result;
}

void sub_100304A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100304AA0(uint64_t a1)
{
  if (*(a1 + 416))
  {
    *(a1 + 408) = 0;
    if (*(a1 + 368) == 1)
    {
      sub_10073A51C((a1 + 288));

      sub_100305A7C((a1 + 288));
    }
  }

  else
  {
    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I invalid transfer context", v3, 2u);
    }
  }
}

void sub_100304B48(uint64_t a1)
{
  if ((*(a1 + 416) & 1) == 0)
  {
    v7 = *(a1 + 40);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v4 = "#E inconsistent state. no transfer context";
    v5 = v7;
    v6 = 2;
    goto LABEL_9;
  }

  if (*(a1 + 409) == 1)
  {
    v2 = *(a1 + 40);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v3 = (a1 + 152);
    if (*(a1 + 175) < 0)
    {
      v3 = *v3;
    }

    *buf = 136315138;
    *&buf[4] = v3;
    v4 = "#I ignore duplicate wifi consent request:%s";
    v5 = v2;
    v6 = 12;
LABEL_9:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v4, buf, v6);
    return;
  }

  *(a1 + 409) = 1;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v9 = ServiceMap;
  v11 = v10;
  if (v10 < 0)
  {
    v12 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
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
  v15 = sub_100009510(&v9[1].__m_.__sig, buf);
  if (!v15)
  {
    v17 = 0;
LABEL_20:
    std::mutex::unlock(v9);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
      goto LABEL_16;
    }

LABEL_21:
    v20 = Registry::getServiceMap(*(a1 + 48));
    v21 = v20;
    if (v10 < 0)
    {
      v22 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v23 = 5381;
      do
      {
        v10 = v23;
        v24 = *v22++;
        v23 = (33 * v23) ^ v24;
      }

      while (v24);
    }

    std::mutex::lock(v20);
    *buf = v10;
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
        goto LABEL_29;
      }
    }

    else
    {
      v27 = 0;
    }

    std::mutex::unlock(v21);
LABEL_29:
    v28 = kCBMessageLocalizationTable;
    (*(*v17 + 40))(&v34, v17, kCBMessageLocalizationTable, @"CONNECT_TO_WIFI_TITLE_TRANSFER_TITLE", 0);
    *buf = 0;
    cf = v34;
    v34 = 0;
    sub_100005978(buf);
    sub_100005978(&v34);
    (*(*v17 + 40))(&v34, v17, v28, @"CONNECT_TO_WIFI_TITLE_TRANSFER_MESSAGE", 0);
    *buf = 0;
    v32 = v34;
    v34 = 0;
    sub_100005978(buf);
    sub_100005978(&v34);
    (*(*v27 + 40))(&v34, v27, v28, @"CONNECT_TO_WIFI_TRANSFER_DEFAULT_BUTTON", 0);
    *buf = 0;
    v31 = v34;
    v34 = 0;
    sub_100005978(buf);
    sub_100005978(&v34);
    (*(*v27 + 40))(&v34, v27, v28, @"CONNECT_TO_WIFI_TRANSFER_ALT_BUTTON", 0);
    *buf = 0;
    v30 = v34;
    v34 = 0;
    sub_100005978(buf);
    sub_100005978(&v34);
    if (cf)
    {
      CFRetain(cf);
    }

    if (v32)
    {
      CFRetain(v32);
    }

    if (v31)
    {
      CFRetain(v31);
    }

    if (v30)
    {
      CFRetain(v30);
    }

    sub_100004AA0(&v34, (a1 + 8));
    v29 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v29);
    }

    v36 = 0;
    operator new();
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
    goto LABEL_20;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v9);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
  if (v17)
  {
    goto LABEL_21;
  }

LABEL_16:
  v19 = *(a1 + 40);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#E invalid localization", buf, 2u);
  }

  sub_10030523C(a1);
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }
}

void sub_10030513C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, int a27, const void *a28, const void *a29, const void *a30, const void *a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_100005978(&a28);
  sub_100005978(&a29);
  sub_100005978(&a30);
  sub_100005978(&a31);
  if ((v41 & 1) == 0)
  {
    sub_100004A34(v39);
  }

  if ((v40 & 1) == 0)
  {
    sub_100004A34(v38);
  }

  _Unwind_Resume(a1);
}

void sub_10030523C(uint64_t a1)
{
  if (*(a1 + 416))
  {
    *(a1 + 408) = 0;
    v2 = *(a1 + 72);
    if (v2)
    {
      v3 = std::__shared_weak_count::lock(v2);
      if (v3)
      {
        v4 = v3;
        v5 = *(a1 + 64);
        if (v5 && *(a1 + 377) == 1)
        {
          if (*(a1 + 111) < 0)
          {
            sub_100005F2C(__dst, *(a1 + 88), *(a1 + 96));
          }

          else
          {
            *__dst = *(a1 + 88);
            v16 = *(a1 + 104);
          }

          if (*(a1 + 135) < 0)
          {
            sub_100005F2C(v13, *(a1 + 112), *(a1 + 120));
          }

          else
          {
            *v13 = *(a1 + 112);
            v14 = *(a1 + 128);
          }

          if (*(a1 + 175) < 0)
          {
            sub_100005F2C(v11, *(a1 + 152), *(a1 + 160));
          }

          else
          {
            *v11 = *(a1 + 152);
            v12 = *(a1 + 168);
          }

          v7 = *(a1 + 208);
          v8 = *(a1 + 216);
          if (*(a1 + 263) < 0)
          {
            sub_100005F2C(__p, *(a1 + 240), *(a1 + 248));
          }

          else
          {
            *__p = *(a1 + 240);
            v10 = *(a1 + 256);
          }

          (*(*v5 + 24))(v5, __dst, v13, v11, a1 + 184, v7, v8);
          if (SHIBYTE(v10) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v12) < 0)
          {
            operator delete(v11[0]);
          }

          if (SHIBYTE(v14) < 0)
          {
            operator delete(v13[0]);
          }

          if (SHIBYTE(v16) < 0)
          {
            operator delete(__dst[0]);
          }
        }

        sub_100004A34(v4);
      }
    }
  }

  else
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I no transfer context", buf, 2u);
    }
  }
}

void sub_10030543C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
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

  sub_100004A34(v39);
  _Unwind_Resume(a1);
}

uint64_t sub_1003054B0(uint64_t a1, const void **a2)
{
  if (*(a1 + 80) == 1)
  {
    sub_100305974(a1, a2);
  }

  else
  {
    sub_100305AE8(a1, a2);
  }

  return a1;
}

const void **sub_1003054EC(const void **a1)
{
  sub_100305E5C((a1 + 6));
  sub_100005978(a1 + 5);
  sub_100005978(a1 + 4);
  sub_100005978(a1 + 3);
  sub_100005978(a1 + 2);
  sub_100005978(a1 + 1);

  return sub_1001DCA14(a1);
}

uint64_t sub_100305550(uint64_t a1)
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
  if (!v8)
  {
    std::mutex::unlock(v3);
    return 0;
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
    std::mutex::unlock(v3);
    if (v10)
    {
      goto LABEL_11;
    }

    return 0;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  if (!v10)
  {
    v11 = 0;
LABEL_26:
    sub_100004A34(v9);
    return v11;
  }

LABEL_11:
  __p = 0;
  v19 = 0;
  v20 = 0;
  (*(*v10 + 64))(&__p, v10);
  if (SHIBYTE(v20) < 0)
  {
    if (!v19)
    {
LABEL_24:
      operator delete(__p);
      goto LABEL_25;
    }

    p_p = __p;
  }

  else
  {
    if (!HIBYTE(v20))
    {
      goto LABEL_25;
    }

    p_p = &__p;
  }

  v13 = [NSString stringWithUTF8String:p_p];
  v14 = [NSLocale characterDirectionForLanguage:v13];

  if (v14 == NSLocaleLanguageDirectionRightToLeft)
  {
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I RightToLeft Language detected", v17, 2u);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p);
    }

    v11 = 1;
    if (v9)
    {
      goto LABEL_26;
    }

    return v11;
  }

  if (SHIBYTE(v20) < 0)
  {
    goto LABEL_24;
  }

LABEL_25:
  v11 = 0;
  if (v9)
  {
    goto LABEL_26;
  }

  return v11;
}

void sub_100305734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100305774(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    sub_100305E5C(a1 + 48);
    sub_100005978((a1 + 40));
    sub_100005978((a1 + 32));
    sub_100005978((a1 + 24));
    sub_100005978((a1 + 16));
    sub_100005978((a1 + 8));
    sub_1001DCA14(a1);
  }

  return a1;
}

uint64_t sub_1003057DC(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  *(a1 + 48) = a2[3];
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v6 = a2[4];
  *(a1 + 80) = *(a2 + 10);
  *(a1 + 64) = v6;
  *(a2 + 87) = 0;
  *(a2 + 64) = 0;
  *(a1 + 88) = *(a2 + 88);
  sub_100071A6C(a1 + 96);
  *(a1 + 96) = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  *(a2 + 12) = 0;
  v7 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v7;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  v8 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 21);
  *(a1 + 152) = v8;
  *(a2 + 175) = 0;
  *(a2 + 152) = 0;
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  v9 = a2[11];
  *(a1 + 192) = *(a2 + 24);
  *(a1 + 176) = v9;
  *(a2 + 199) = 0;
  *(a2 + 176) = 0;
  sub_10030594C((a1 + 200), a2 + 25);
  *(a1 + 288) = *(a2 + 144);
  sub_100071A6C(a1 + 296);
  *(a1 + 296) = *(a2 + 37);
  *(a1 + 304) = a2[19];
  *(a2 + 37) = 0;
  *(a2 + 38) = 0;
  *(a2 + 39) = 0;
  *(a1 + 320) = *(a2 + 160);
  return a1;
}

const void **sub_10030594C(const void **result, const void **a2)
{
  if (*(result + 80) == *(a2 + 80))
  {
    if (*(result + 80))
    {
      return sub_100305974(result, a2);
    }
  }

  else if (*(result + 80))
  {
    return sub_100305A7C(result);
  }

  else
  {
    return sub_100305AE8(result, a2);
  }

  return result;
}

const void **sub_100305974(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    *a1 = 0;
    v11 = v4;
    *a1 = *a2;
    *a2 = 0;
    sub_1001DCA14(&v11);
    v5 = a1[1];
    a1[1] = 0;
    v11 = v5;
    a1[1] = a2[1];
    a2[1] = 0;
    sub_100005978(&v11);
    v6 = a1[2];
    a1[2] = 0;
    v11 = v6;
    a1[2] = a2[2];
    a2[2] = 0;
    sub_100005978(&v11);
    v7 = a1[3];
    a1[3] = 0;
    v11 = v7;
    a1[3] = a2[3];
    a2[3] = 0;
    sub_100005978(&v11);
    v8 = a1[4];
    a1[4] = 0;
    v11 = v8;
    a1[4] = a2[4];
    a2[4] = 0;
    sub_100005978(&v11);
    v9 = a1[5];
    a1[5] = 0;
    v11 = v9;
    a1[5] = a2[5];
    a2[5] = 0;
    sub_100005978(&v11);
  }

  sub_100305B7C((a1 + 6), (a2 + 6));
  return a1;
}

const void **sub_100305A7C(const void **result)
{
  if (*(result + 80) == 1)
  {
    v1 = result;
    sub_100305E5C((result + 6));
    sub_100005978(v1 + 5);
    sub_100005978(v1 + 4);
    sub_100005978(v1 + 3);
    sub_100005978(v1 + 2);
    sub_100005978(v1 + 1);
    result = sub_1001DCA14(v1);
    *(v1 + 80) = 0;
  }

  return result;
}

uint64_t sub_100305AE8(uint64_t a1, void *a2)
{
  *a1 = 0;
  *a1 = *a2;
  *a2 = 0;
  *(a1 + 8) = 0;
  *(a1 + 8) = a2[1];
  a2[1] = 0;
  *(a1 + 16) = 0;
  *(a1 + 16) = a2[2];
  a2[2] = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = a2[3];
  a2[3] = 0;
  *(a1 + 32) = 0;
  *(a1 + 32) = a2[4];
  a2[4] = 0;
  *(a1 + 40) = 0;
  *(a1 + 40) = a2[5];
  a2[5] = 0;
  result = sub_100305C84(a1 + 48, (a2 + 6));
  *(a1 + 80) = 1;
  return result;
}

uint64_t sub_100305B7C(uint64_t a1, uint64_t a2)
{
  sub_100305C00(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_100305C00(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_100305C84(uint64_t a1, uint64_t a2)
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

_BYTE *sub_100305D04(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[80] = 0;
  if (*(a2 + 80) == 1)
  {
    sub_100305AE8(a1, a2);
  }

  return a1;
}

uint64_t sub_100305D48(uint64_t a1)
{
  v3 = (a1 + 296);
  sub_1000087B4(&v3);
  if (*(a1 + 280) == 1)
  {
    sub_100305E5C(a1 + 248);
    sub_100005978((a1 + 240));
    sub_100005978((a1 + 232));
    sub_100005978((a1 + 224));
    sub_100005978((a1 + 216));
    sub_100005978((a1 + 208));
    sub_1001DCA14((a1 + 200));
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  v3 = (a1 + 96);
  sub_1000087B4(&v3);
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
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

const void **sub_100305E28(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_100305E5C(uint64_t a1)
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

void *sub_100305EDC(void *a1)
{
  *a1 = off_101E400A8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100305F28(void *a1)
{
  *a1 = off_101E400A8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100306008(uint64_t result, uint64_t a2)
{
  *a2 = off_101E400A8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100306048(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100306058(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100306098(void *a1, int *a2, uint64_t *a3)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = *a2;
    v6 = *a3;
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (a1[2])
      {
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_1003061A4;
        v10[3] = &unk_101E40118;
        v11 = v5;
        v10[4] = v7;
        v10[5] = v6;
        sub_100306274((v7 + 8), v10);
      }

      sub_100004A34(v9);
    }
  }
}

uint64_t sub_100306158(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1003061A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(v2 + 40);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (v3)
  {
    if (v5)
    {
      sub_10176AEBC(v3, v4);
    }

LABEL_11:
    sub_10030523C(v2);
    goto LABEL_12;
  }

  if (v5)
  {
    sub_10176AF34(a1, v4);
  }

  v6 = *(a1 + 40);
  if (!v6)
  {
    sub_100302944(@"prefs:root=WIFI");
    sub_10030523C(v2);
    v6 = *(a1 + 40);
  }

  if (v6 == 1)
  {
    sub_10030523C(v2);
    v6 = *(a1 + 40);
  }

  if (v6 == 3)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (*(v2 + 416) == 1)
  {
    sub_100305A7C((v2 + 288));
  }
}

void sub_100306274(void *a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = 0;
  sub_100004AA0(&v10, a1);
  v4 = a1[2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_100306354;
  block[3] = &unk_101E40140;
  v8 = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = v3;
  v7 = v5;
  dispatch_async(v4, block);

  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

uint64_t sub_100306364(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100306380(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void *sub_100306390(void *a1)
{
  *a1 = off_101E40190;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003063DC(void *a1)
{
  *a1 = off_101E40190;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1003064BC(uint64_t result, uint64_t a2)
{
  *a2 = off_101E40190;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003064FC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10030650C(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10030654C(void *a1, int *a2, uint64_t *a3)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      if (a1[2])
      {
        v7[0] = 0;
        v7[1] = 0;
        sub_100004AA0(v7, (v5 + 8));
        operator new();
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_100306668(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1003066B4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 72);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 64);
      if (v6)
      {
        (*(*v6 + 40))(v6);
      }

      sub_100004A34(v5);
    }
  }

  v7 = *(v1 + 2);
  if (v7)
  {
    v8 = *(v2 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10176AFB0(v7, v8);
    }

    v9 = 4;
  }

  else
  {
    v10 = v1[2];
    if (v10)
    {
      v11 = 4;
    }

    else
    {
      v11 = 1;
    }

    if (v10 == 1)
    {
      v11 = 2;
    }

    if (v10 == 3)
    {
      v9 = 3;
    }

    else
    {
      v9 = v11;
    }
  }

  v12 = *(v2 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = sub_100649BB4(v9);
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Transfer consent state: %s", buf, 0xCu);
  }

  if (*(v2 + 416) == 1)
  {
    sub_100305A7C((v2 + 288));
  }

  sub_100304624(v2, v9);
  operator delete();
}

void sub_100306898()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_100306984(uint64_t a1)
{
  sub_1005CF314(a1);

  operator delete();
}

void sub_1003069BC(void *a1)
{
  sub_1005CF430(a1);
  sub_100004AA0(&buf, a1 + 1);
  v2 = *&buf_4[4];
  if (*&buf_4[4])
  {
    atomic_fetch_add_explicit((*&buf_4[4] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  v3 = sub_1005CF7D4(a1);
  v4 = sub_1005CF104(1, v3);
  v5 = a1[5];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      buf = 136315394;
      *buf_4 = "";
      *&buf_4[8] = 2080;
      *&buf_4[10] = "";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sUsing both iCloud and IDS for Thumper settings sync!", &buf, 0x16u);
    }

    sub_10093A1A4();
  }

  if (v6)
  {
    buf = 136315394;
    *buf_4 = "";
    *&buf_4[8] = 2080;
    *&buf_4[10] = "";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sUsing iCloud for Thumper sync!", &buf, 0x16u);
  }

  v7 = a1[7];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10073A8E0();
}

void sub_1003079DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, std::__shared_weak_count *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, std::__shared_weak_count *a58, uint64_t a59, uint64_t a60, const void *a61, uint64_t a62, uint64_t a63)
{
  if (a31)
  {
    sub_10176B028();
  }

  if (a32)
  {
    (*(*a32 + 8))(a32, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a42)
  {
    (*(*a42 + 8))(a42, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a39)
  {
    std::__shared_weak_count::__release_weak(a39);
  }

  if (a51)
  {
    (*(*a51 + 8))(a51, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a48)
  {
    std::__shared_weak_count::__release_weak(a48);
  }

  sub_10001021C(&a61);
  if (a58)
  {
    std::__shared_weak_count::__release_weak(a58);
  }

  v69 = a66;
  a66 = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69);
  }

  if (a65)
  {
    std::__shared_weak_count::__release_weak(a65);
  }

  v70 = STACK[0x220];
  STACK[0x220] = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  v71 = STACK[0x268];
  STACK[0x268] = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  if (STACK[0x250])
  {
    std::__shared_weak_count::__release_weak(STACK[0x250]);
  }

  v72 = STACK[0x2B0];
  STACK[0x2B0] = 0;
  if (v72)
  {
    (*(*v72 + 8))(v72);
  }

  if (STACK[0x298])
  {
    std::__shared_weak_count::__release_weak(STACK[0x298]);
  }

  if (STACK[0x2C8])
  {
    sub_100004A34(STACK[0x2C8]);
  }

  v73 = *(v67 - 200);
  *(v67 - 200) = 0;
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  v74 = *(v67 - 104);
  if (v74)
  {
    sub_100004A34(v74);
  }

  v75 = *(v67 - 128);
  *(v67 - 128) = 0;
  if (v75)
  {
    (*(*v75 + 8))(v75);
  }

  v76 = *(v67 - 120);
  *(v67 - 120) = 0;
  if (v76)
  {
    (*(*v76 + 8))(v76);
  }

  if (v66)
  {
    std::__shared_weak_count::__release_weak(v66);
  }

  _Unwind_Resume(a1);
}

void sub_100307F5C(uint64_t a1, uint64_t **a2)
{
  v3 = *(a1 + 32);
  v4 = v3[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*a2)
    {
      v5 = -1431655765 * (((*a2)[1] - **a2) >> 3);
    }

    else
    {
      v5 = -1;
    }

    *buf = 136315650;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 1024;
    LODWORD(v26) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sList of watches updated: %d device(s)", buf, 0x1Cu);
  }

  v6 = *a2;
  if (*a2)
  {
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      do
      {
        v9 = v3[5];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 0uLL;
          v24 = 0;
          ctu::cf::assign();
          *v21 = v23;
          v22 = v24;
          v23 = 0uLL;
          v10 = v21[0];
          v11 = SHIBYTE(v24);
          v24 = 0;
          ctu::cf::assign();
          v12 = v21;
          if (v11 < 0)
          {
            v12 = v10;
          }

          *__p = v23;
          v20 = v24;
          v13 = v23;
          if (v24 >= 0)
          {
            v13 = __p;
          }

          v14 = "  --connected";
          if (!*(v7 + 16))
          {
            v14 = "";
          }

          *buf = 136316162;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          v26 = v12;
          *v27 = 2080;
          *&v27[2] = v13;
          *&v27[10] = 2080;
          *&v27[12] = v14;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s   %s: %s%s", buf, 0x34u);
          if (SHIBYTE(v20) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v22) < 0)
          {
            operator delete(v21[0]);
          }
        }

        v7 += 24;
      }

      while (v7 != v8);
      v6 = *a2;
    }
  }

  v15 = a2[1];
  if (v15)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
  }

  v16 = v3[15];
  v3[14] = v6;
  v3[15] = v15;
  if (v16)
  {
    sub_100004A34(v16);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 0x40000000;
  v18[2] = sub_100308308;
  v18[3] = &unk_101E40280;
  v18[4] = v3;
  v23 = 0uLL;
  sub_100004AA0(&v23, v3 + 1);
  v17 = v3[3];
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 1174405120;
  *&buf[16] = sub_10030A634;
  v26 = &unk_101E405B0;
  *&v27[8] = v23;
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *v27 = v18;
  dispatch_async(v17, buf);
  if (*&v27[16])
  {
    sub_100004A34(*&v27[16]);
  }

  if (*(&v23 + 1))
  {
    sub_100004A34(*(&v23 + 1));
  }
}

void sub_1003082B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100308310(uint64_t a1, uint64_t **a2)
{
  v3 = *(a1 + 32);
  v4 = v3[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*a2)
    {
      v5 = -1431655765 * (((*a2)[1] - **a2) >> 3);
    }

    else
    {
      v5 = -1;
    }

    *buf = 136315650;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 1024;
    LODWORD(v26) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sList of iCloud devices updated: %d device(s)", buf, 0x1Cu);
  }

  v6 = *a2;
  if (*a2)
  {
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      do
      {
        v9 = v3[5];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 0uLL;
          v24 = 0;
          ctu::cf::assign();
          *v21 = v23;
          v22 = v24;
          v23 = 0uLL;
          v10 = v21[0];
          v11 = SHIBYTE(v24);
          v24 = 0;
          ctu::cf::assign();
          v12 = v21;
          if (v11 < 0)
          {
            v12 = v10;
          }

          *__p = v23;
          v20 = v24;
          v13 = v23;
          if (v24 >= 0)
          {
            v13 = __p;
          }

          v14 = "  --connected";
          if (!*(v7 + 16))
          {
            v14 = "";
          }

          *buf = 136316162;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          v26 = v12;
          *v27 = 2080;
          *&v27[2] = v13;
          *&v27[10] = 2080;
          *&v27[12] = v14;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s   %s: %s%s", buf, 0x34u);
          if (SHIBYTE(v20) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v22) < 0)
          {
            operator delete(v21[0]);
          }
        }

        v7 += 24;
      }

      while (v7 != v8);
      v6 = *a2;
    }
  }

  v15 = a2[1];
  if (v15)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
  }

  v16 = v3[17];
  v3[16] = v6;
  v3[17] = v15;
  if (v16)
  {
    sub_100004A34(v16);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 0x40000000;
  v18[2] = sub_1003086BC;
  v18[3] = &unk_101E402C0;
  v18[4] = v3;
  v23 = 0uLL;
  sub_100004AA0(&v23, v3 + 1);
  v17 = v3[3];
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 1174405120;
  *&buf[16] = sub_10030A634;
  v26 = &unk_101E405B0;
  *&v27[8] = v23;
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *v27 = v18;
  dispatch_async(v17, buf);
  if (*&v27[16])
  {
    sub_100004A34(*&v27[16]);
  }

  if (*(&v23 + 1))
  {
    sub_100004A34(*(&v23 + 1));
  }
}

void sub_10030866C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1003086C4(uint64_t a1, const __CFString *a2)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (*(a1 + 32))
  {
    v7 = CFStringHasPrefix(a2, @"secret.") == 1;
  }

  else
  {
    v7 = 0;
  }

  sub_100004A34(v6);
  return v7;
}

uint64_t sub_100308758(uint64_t result, uint64_t a2)
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

void sub_100308774(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

BOOL sub_100308784(uint64_t a1, const __CFString *a2)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (*(a1 + 32))
  {
    v7 = CFStringHasPrefix(a2, @"secret.") == 1;
  }

  else
  {
    v7 = 0;
  }

  sub_100004A34(v6);
  return v7;
}

void *sub_100308820(void *a1, uint64_t *a2)
{
  sub_10030A670(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

BOOL sub_10030886C(uint64_t a1, const __CFString *a2)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(a1 + 32) && !CFStringHasPrefix(a2, @"secret.") && CFStringHasPrefix(a2, @"message.") == 0;
  sub_100004A34(v6);
  return v7;
}

uint64_t sub_100308918(void *a1, const __CFString *a2, const void *a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return 0;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  if (a1[5])
  {
    memset(&__p, 0, sizeof(__p));
    sub_1005D3A64(&__p, a2);
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_1005D3C28(&v12, a2, v7, a3);
    v10 = v12;
    sub_10001021C(&v13 + 1);
    sub_10001021C(&v13);
    sub_10000A1EC(&v12 + 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v10 = 0;
  }

  sub_100004A34(v9);
  return v10;
}

void sub_100308A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_100308A4C(uint64_t result, uint64_t a2)
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

void sub_100308A68(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

BOOL sub_100308A78(uint64_t a1, const __CFString *a2)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (*(a1 + 32))
  {
    v7 = CFStringHasPrefix(a2, @"message.") == 1;
  }

  else
  {
    v7 = 0;
  }

  sub_100004A34(v6);
  return v7;
}

BOOL sub_100308B0C(uint64_t a1, const __CFString *a2)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (*(a1 + 32))
  {
    v7 = CFStringHasPrefix(a2, @"message.") == 1;
  }

  else
  {
    v7 = 0;
  }

  sub_100004A34(v6);
  return v7;
}

BOOL sub_100308BA8(uint64_t a1, const __CFString *a2)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (*(a1 + 32))
  {
    v7 = CFStringHasPrefix(a2, @"secret.") == 1;
  }

  else
  {
    v7 = 0;
  }

  sub_100004A34(v6);
  return v7;
}

BOOL sub_100308C3C(uint64_t a1, const __CFString *a2)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (*(a1 + 32))
  {
    v7 = CFStringHasPrefix(a2, @"message.") == 1;
  }

  else
  {
    v7 = 0;
  }

  sub_100004A34(v6);
  return v7;
}

BOOL sub_100308CD0(uint64_t a1, CFStringRef theString2)
{
  v2 = *(a1 + 112);
  if (!v2)
  {
    return 0;
  }

  v3 = v2[1];
  if (*v2 == v3)
  {
    return 0;
  }

  v5 = *v2 + 24;
  do
  {
    v7 = CFStringCompare(*(v5 - 24), theString2, 0) == kCFCompareEqualTo;
    result = v7;
    v7 = v7 || v5 == v3;
    v5 += 24;
  }

  while (!v7);
  return result;
}

BOOL sub_100308D48(uint64_t a1, CFStringRef theString2)
{
  v2 = *(a1 + 128);
  if (!v2)
  {
    return 0;
  }

  v3 = v2[1];
  if (*v2 == v3)
  {
    return 0;
  }

  v5 = *v2 + 24;
  do
  {
    v7 = CFStringCompare(*(v5 - 24), theString2, 0) == kCFCompareEqualTo;
    result = v7;
    v7 = v7 || v5 == v3;
    v5 += 24;
  }

  while (!v7);
  return result;
}

uint64_t sub_100308DE8(uint64_t a1)
{
  result = sub_1005D1A60(a1);
  if (result)
  {
    return *(a1 + 112) && *(a1 + 128) != 0;
  }

  return result;
}

const void **sub_100308E30(void *a1, CFStringRef theString1, uint64_t a3, const void *a4, uint64_t a5)
{
  if (CFStringCompare(theString1, @"requestIndividualSecret", 0))
  {
    v8 = a1[5];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#W %s%sMessage cmd is not recognized:", buf, 0x16u);
    }

    *buf = off_101E406D0;
    *&buf[8] = a1;
    v46 = buf;
    logger::CFTypeRefLogger();
    return sub_100007E44(buf);
  }

  else
  {
    *type = 0;
    if (a4)
    {
      v10 = CFGetTypeID(a4);
      if (v10 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(a4, @"account");
        v12 = Value;
        if (Value)
        {
          v13 = CFGetTypeID(Value);
          if (v13 == CFStringGetTypeID())
          {
            v14 = v12;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }

        *buf = v14;
        sub_10021D11C(type, buf);
      }

      if (*type)
      {
        goto LABEL_24;
      }
    }

    theDict[0] = 0;
    sub_1006160F0(buf);
    v15 = *buf;
    sub_1005D4280(a1, a3, &key);
    v43 = sub_100615F34(v15, key, 1);
    sub_100138C38(theDict, &v43);
    sub_100005978(&key);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (theDict[0])
    {
      v16 = CFDictionaryGetValue(theDict[0], @"account");
      v17 = v16;
      if (v16)
      {
        v18 = CFGetTypeID(v16);
        if (v18 == CFStringGetTypeID())
        {
          v19 = v17;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }

      *buf = v19;
      sub_10021D11C(type, buf);
    }

    sub_10001021C(theDict);
    if (*type)
    {
LABEL_24:
      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      v41 = *&buf[16];
      *theDict = *buf;
      v20 = a1[9];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 1174405120;
      v36 = sub_100309400;
      v37 = &unk_101E40500;
      v21 = buf[23];
      if (buf[23] < 0)
      {
        sub_100005F2C(&__p, theDict[0], theDict[1]);
      }

      else
      {
        __p = *theDict;
        v39 = v41;
      }

      v22 = a1 + 10;
      if (v20 != a1 + 10)
      {
        while (1)
        {
          *buf = *(v20 + 8);
          v23 = v20[6];
          *&buf[8] = v20[5];
          *&buf[16] = v23;
          if (v23)
          {
            atomic_fetch_add_explicit((v23 + 16), 1uLL, memory_order_relaxed);
          }

          v24 = v36(v35, buf);
          if (*&buf[16])
          {
            std::__shared_weak_count::__release_weak(*&buf[16]);
          }

          if (v24)
          {
            break;
          }

          v25 = v20[1];
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v26 = v20[2];
              v27 = *v26 == v20;
              v20 = v26;
            }

            while (!v27);
          }

          v20 = v26;
          if (v26 == v22)
          {
            goto LABEL_46;
          }
        }
      }

      if (v20 == v22)
      {
LABEL_46:
        v32 = a1[5];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = theDict[0];
          if (v21 >= 0)
          {
            v33 = theDict;
          }

          *buf = 136315650;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          v46 = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I %s%sNo account %s found", buf, 0x20u);
        }
      }

      else
      {
        v28 = v20[6];
        if (v28)
        {
          v29 = std::__shared_weak_count::lock(v28);
          if (v29)
          {
            v30 = v29;
            v31 = v20[5];
            if (v31)
            {
              (*(*v31 + 96))(v31, a3);
            }

            sub_100004A34(v30);
          }
        }
      }

      if (SHIBYTE(v39) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v41) < 0)
      {
        operator delete(theDict[0]);
      }
    }

    else
    {
      v34 = a1[5];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#W %s%sNo account given/found for IDS individual key req:", buf, 0x16u);
      }

      *buf = off_101E40650;
      *&buf[8] = a1;
      v46 = buf;
      logger::CFTypeRefLogger();
      sub_100007E44(buf);
    }

    return sub_100005978(type);
  }
}

void sub_100309330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, const void *a25, __int16 a26, char a27, char a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  sub_100004A34(v33);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (v34 < 0)
  {
    operator delete(a20);
  }

  sub_100005978(&a25);
  _Unwind_Resume(a1);
}

BOOL sub_100309400(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a2 + 8);
      if (v7)
      {
        (*(*v7 + 16))(__p);
        v8 = v20;
        if ((v20 & 0x80u) == 0)
        {
          v9 = v20;
        }

        else
        {
          v9 = __p[1];
        }

        v10 = *(a1 + 55);
        v11 = v10;
        if ((v10 & 0x80u) != 0)
        {
          v10 = *(a1 + 40);
        }

        if (v9 == v10)
        {
          if ((v20 & 0x80u) == 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          v15 = *(a1 + 32);
          v14 = (a1 + 32);
          v13 = v15;
          if (v11 >= 0)
          {
            v16 = v14;
          }

          else
          {
            v16 = v13;
          }

          v17 = memcmp(v12, v16, v9) == 0;
          if ((v8 & 0x80000000) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        v17 = 0;
        if (v20 < 0)
        {
LABEL_21:
          operator delete(__p[0]);
        }
      }

      else
      {
        v17 = 0;
      }

LABEL_22:
      sub_100004A34(v6);
      return v17;
    }
  }

  return 0;
}

_BYTE *sub_100309518(_BYTE *result, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    return sub_100005F2C(result + 32, *(a2 + 32), *(a2 + 40));
  }

  v2 = *(a2 + 32);
  *(result + 6) = *(a2 + 48);
  *(result + 2) = v2;
  return result;
}

void sub_100309544(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

const void **sub_100309558(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    theDict = Mutable;
    v10 = 0;
    sub_1000296E0(&v10);
    Mutable = theDict;
  }

  CFDictionaryAddValue(Mutable, @"cmd", @"individualSecret");
  CFDictionaryAddValue(theDict, @"value", a4);
  (*(**(a1 + 168) + 48))(*(a1 + 168), a2, @"message.", theDict);
  return sub_1000296E0(&theDict);
}

const void **sub_100309658(uint64_t a1, uint64_t *a2)
{
  v12 = 0;
  sub_1005D6728(a2, &v12);
  v11 = 0;
  sub_1005D6790(a2, &v11);
  sub_1006160F0(&v8);
  v4 = sub_1006160B8(v8, v11);
  v10 = v4;
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v4)
  {
    sub_1005D550C(a1, 1, 0, 0, a2, 1, 0);
  }

  sub_1006160F0(&v8);
  v5 = sub_1006160B8(v8, v12);
  v6 = v10;
  v10 = v5;
  v13 = v6;
  sub_10000A1EC(&v13);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v10)
  {
    sub_1005D550C(a1, 0, 0, 0, a2, 1, 0);
  }

  sub_10000A1EC(&v10);
  sub_100005978(&v11);
  return sub_100005978(&v12);
}

void sub_10030976C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v8 = va_arg(va2, const void *);
  if (a5)
  {
    sub_100004A34(a5);
  }

  sub_10000A1EC(va);
  sub_100005978(va1);
  sub_100005978(va2);
  _Unwind_Resume(a1);
}

void sub_1003097CC(uint64_t a1, const void **a2)
{
  v34 = 0;
  v35 = 0;
  sub_1005DC42C(a1, &v34);
  if (!v34 || !sub_1005D14F8(a1))
  {
    goto LABEL_48;
  }

  v32 = 0;
  v33[0] = 0;
  v33[1] = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  __p[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, __p);
  if (!v10)
  {
    v12 = 0;
    goto LABEL_10;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
LABEL_10:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
LABEL_11:
  (*(*v12 + 208))(&v32, v12);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v31[0] = 0;
  v31[1] = 0;
  v30 = v31;
  v14 = v32;
  if (v32 != v33)
  {
    do
    {
      memset(__p, 0, 24);
      sub_1009F7FB4(v14 + 4);
      v15 = HIBYTE(__p[2]);
      v16 = HIBYTE(__p[2]);
      if (SHIBYTE(__p[2]) < 0)
      {
        v15 = __p[1];
      }

      if (v15)
      {
        sub_100005BA0(&v30, __p, __p);
        v16 = HIBYTE(__p[2]);
      }

      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      v17 = v14[1];
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
          v18 = v14[2];
          v19 = *v18 == v14;
          v14 = v18;
        }

        while (!v19);
      }

      v14 = v18;
    }

    while (v18 != v33);
  }

  v20 = *(v34 + 72);
  for (i = *(v34 + 80); v20 != i; v20 += 24)
  {
    if (v31 == sub_100007A6C(&v30, v20))
    {
      v22 = *(v20 + 23);
      if (v22 >= 0)
      {
        v23 = *(v20 + 23);
      }

      else
      {
        v23 = *(v20 + 8);
      }

      v24 = *(a2 + 23);
      v25 = v24;
      if (v24 < 0)
      {
        v24 = a2[1];
      }

      if (v23 != v24 || (v22 >= 0 ? (v26 = v20) : (v26 = *v20), v25 >= 0 ? (v27 = a2) : (v27 = *a2), memcmp(v26, v27, v23)))
      {
        sub_100309658(a1, v20);
        v28 = *(a1 + 40);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v20;
          if (*(v20 + 23) < 0)
          {
            v29 = *v20;
          }

          LODWORD(__p[0]) = 136315650;
          *(__p + 4) = "";
          WORD2(__p[1]) = 2080;
          *(&__p[1] + 6) = "";
          HIWORD(__p[2]) = 2080;
          __p[3] = v29;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%sRemainings of account %s removed from cloud", __p, 0x20u);
        }
      }
    }
  }

  sub_100009970(&v30, v31[0]);
  sub_100009970(&v32, v33[0]);
LABEL_48:
  if (v35)
  {
    sub_100004A34(v35);
  }
}

void sub_100309B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100309BA8(const void **result, const void *a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v5 = result;
    theDict = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v7 = theDict;
      theDict = Mutable;
      *v23 = v7;
      sub_1000296E0(v23);
    }

    CFDictionaryAddValue(theDict, @"account", a2);
    memset(v23, 0, sizeof(v23));
    ctu::cf::assign();
    *(&v24 + 7) = *(&v23[3] + 3);
    *&v24 = *&v23[2];
    __p = *v23;
    *v18 = *&v23[2];
    *&v18[7] = *(&v24 + 7);
    v19 = HIBYTE(v23[5]);
    v20 = 1;
    sub_1005D5118(&key, theDict, v5, &__p);
    v8 = theDict;
    theDict = key;
    *v23 = v8;
    key = 0;
    sub_1000296E0(v23);
    sub_1000296E0(&key);
    if (v20 == 1 && v19 < 0)
    {
      operator delete(__p);
    }

    key = 0;
    sub_1005D4280(v5, a3, &key);
    v16 = 0;
    sub_1006160F0(v23);
    *&v24 = sub_100615F34(*v23, key, 1);
    sub_100138C38(&v16, &v24);
    if (*&v23[2])
    {
      sub_100004A34(*&v23[2]);
    }

    if (v16)
    {
      Value = CFDictionaryGetValue(v16, @"ts");
      v23[0] = 0;
      ctu::cf::assign(v23, Value, v10);
      v11 = v23[0] + 1;
    }

    else
    {
      v11 = 1;
    }

    v15 = 0;
    v12 = v5[19];
    v13 = key;
    v14 = theDict;
    memset(v23, 0, sizeof(v23));
    ctu::cf::assign();
    v24 = *v23;
    v25 = *&v23[4];
    (*(*v12 + 56))(&v15, v12, v13, v14, &v24);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    sub_1005D615C(v5, key, v11, v15, 1, 1);
    sub_10000A1EC(&v15);
    sub_10001021C(&v16);
    sub_100005978(&key);
    return sub_1000296E0(&theDict);
  }

  return result;
}

void sub_100309E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, const void *);
  sub_10000A1EC(va);
  sub_10001021C(va1);
  sub_100005978(va2);
  sub_1000296E0(va3);
  _Unwind_Resume(a1);
}

const void **sub_100309F08(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10176B10C(v4);
  }

  sub_1005DCE8C(a1, v2);
  result = (*(*a1 + 16))(a1);
  if (result)
  {
    if (*(a1[16] + 8) != *a1[16])
    {
      v6 = a1[26];
      if (v6)
      {
        if ((byte_101FBA210 & 1) == 0)
        {
          byte_101FBA210 = 1;
          v7 = v6[3];
          v8 = v6 + 4;
          if (v7 != v6 + 4)
          {
            do
            {
              v9 = v7 + 4;
              v25 = 0;
              if (*(v7 + 55) < 0)
              {
                sub_100005F2C(__dst, v7[4], v7[5]);
              }

              else
              {
                *__dst = *v9;
                v24 = v7[6];
              }

              if (SHIBYTE(v24) < 0)
              {
                sub_100005F2C(v27, __dst[0], __dst[1]);
              }

              else
              {
                *v27 = *__dst;
                v28 = v24;
              }

              v26 = 0;
              if (SHIBYTE(v28) < 0)
              {
                sub_100005F2C(__p, v27[0], v27[1]);
              }

              else
              {
                *__p = *v27;
                *&__p[16] = v28;
              }

              theString2 = 0;
              if (ctu::cf::convert_copy())
              {
                v10 = v26;
                v26 = theString2;
                v30 = v10;
                sub_100005978(&v30);
              }

              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }

              v25 = v26;
              v26 = 0;
              sub_100005978(&v26);
              if (SHIBYTE(v28) < 0)
              {
                operator delete(v27[0]);
              }

              if (SHIBYTE(v24) < 0)
              {
                operator delete(__dst[0]);
              }

              if (!sub_100308D48(a1, v25) && !sub_100308CD0(a1, v25))
              {
                v11 = a1[5];
                if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
                {
                  if (*(v7 + 55) < 0)
                  {
                    v9 = *v9;
                  }

                  *__p = 136315650;
                  *&__p[4] = "";
                  *&__p[12] = 2080;
                  *&__p[14] = "";
                  *&__p[22] = 2080;
                  v32 = v9;
                  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sremoving orphan device record for %s", __p, 0x20u);
                }

                sub_1005D414C(a1, v25, __p);
                sub_1005D6258(a1, *__p, 1, 1);
                sub_100005978(__p);
                sub_1005D4280(a1, v25, __p);
                sub_1005D6258(a1, *__p, 1, 1);
                sub_100005978(__p);
              }

              result = sub_100005978(&v25);
              v12 = v7[1];
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
                  v13 = v7[2];
                  v14 = *v13 == v7;
                  v7 = v13;
                }

                while (!v14);
              }

              v7 = v13;
            }

            while (v13 != v8);
            v6 = a1[26];
          }

          v15 = v6[18];
          v16 = (v6 + 19);
          if (v15 != (v6 + 19))
          {
            do
            {
              theString2 = 0;
              sub_10005C7A4(&cf, *(v15 + 7));
              v27[0] = cf;
              if (cf)
              {
                CFRetain(cf);
                v30 = 0;
                *__p = v27[0];
                if (v27[0])
                {
                  CFRetain(v27[0]);
                  if (*__p)
                  {
                    sub_100222570(&v30, __p);
                  }
                }
              }

              else
              {
                v30 = 0;
                *__p = 0;
              }

              sub_100005978(__p);
              theString2 = v30;
              v30 = 0;
              sub_100005978(&v30);
              sub_100005978(v27);
              sub_100005978(&cf);
              v17 = sub_1005D14F8(a1);
              if (CFStringCompare(v17, theString2, 0) && !sub_100308D48(a1, theString2))
              {
                v18 = a1[5];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  v19 = v15 + 2;
                  if (*(v15 + 55) < 0)
                  {
                    v19 = *(v15 + 4);
                  }

                  *__p = 136315650;
                  *&__p[4] = "";
                  *&__p[12] = 2080;
                  *&__p[14] = "";
                  *&__p[22] = 2080;
                  v32 = v19;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%sremoving abandoned account record for %s", __p, 0x20u);
                }

                sub_1005D550C(a1, 1, 0, 0, v15 + 2, 1, 0);
                sub_1005D550C(a1, 0, 0, 0, v15 + 2, 1, 0);
              }

              result = sub_100005978(&theString2);
              v20 = *(v15 + 1);
              if (v20)
              {
                do
                {
                  v21 = v20;
                  v20 = *v20;
                }

                while (v20);
              }

              else
              {
                do
                {
                  v21 = *(v15 + 2);
                  v14 = *v21 == v15;
                  v15 = v21;
                }

                while (!v14);
              }

              v15 = v21;
            }

            while (v21 != v16);
          }
        }
      }
    }
  }

  return result;
}

void sub_10030A408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, const void *a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_100005978(&a33);
  sub_100005978(&a20);
  _Unwind_Resume(a1);
}

void sub_10030A534(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10030A608);
  __cxa_rethrow();
}

void sub_10030A574(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10030A5C8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10030A608(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10030A644(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10030A660(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t *sub_10030A670(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if (v2)
  {
    operator new();
  }

  a1[1] = 0;
  *a2 = 0;
  return a1;
}

void sub_10030A6F4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10030A72C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10030A75C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10030A80C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E40650;
  a2[1] = v2;
  return result;
}

void sub_10030A838(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315650;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s", &v5, 0x20u);
  }
}

uint64_t sub_10030A904(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10030A9C0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E406D0;
  a2[1] = v2;
  return result;
}

void sub_10030A9EC(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315650;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s", &v5, 0x20u);
  }
}

uint64_t sub_10030AAB8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10030ABCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
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

uint64_t DataWirelessTechnologyListManager::DataWirelessTechnologyListManager(uint64_t a1, void *a2, NSObject **a3)
{
  ctu::OsLogContext::OsLogContext(&v8, kCtLoggingSystemName, "DATA.WTLM");
  sub_1001303E4((a1 + 8), a3, &v8);
  ctu::OsLogContext::~OsLogContext(&v8);
  *a1 = off_101E40750;
  v6 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 1;
  *(a1 + 80) = 0;
  *(a1 + 72) = a1 + 80;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  return a1;
}

void sub_10030ACF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  DataWirelessTechnologyListManagerInterface::~DataWirelessTechnologyListManagerInterface(v9);
  _Unwind_Resume(a1);
}

void DataWirelessTechnologyListManager::~DataWirelessTechnologyListManager(DataWirelessTechnologyListManager *this)
{
  *this = off_101E40750;
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_10006DCAC(this + 96, *(this + 13));
  sub_10006DCAC(this + 72, *(this + 10));
  v3 = *(this + 7);
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);

  DataWirelessTechnologyListManagerInterface::~DataWirelessTechnologyListManagerInterface(this);
}

{
  DataWirelessTechnologyListManager::~DataWirelessTechnologyListManager(this);

  operator delete();
}

void DataWirelessTechnologyListManager::activateController_sync(uint64_t a1, uint64_t a2, int *a3, int *a4)
{
  v5 = *(a1 + 128);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 120);
      if (v11)
      {
        v12 = *a3;
        v13 = *a4;
        v14 = v12;
        (*(*v11 + 16))(v11, a2, &v14, &v13);
      }

      sub_100004A34(v10);
    }
  }
}

void DataWirelessTechnologyListManager::deactivateController_sync(uint64_t a1, uint64_t a2, int *a3, int *a4)
{
  v5 = *(a1 + 128);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 120);
      if (v11)
      {
        v12 = *a3;
        v13 = *a4;
        v14 = v12;
        (*(*v11 + 24))(v11, a2, &v14, &v13);
      }

      sub_100004A34(v10);
    }
  }
}

void DataWirelessTechnologyListManager::deactivate_sync(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 64);
  v4 = *a2 & v3;
  v5 = *a3 & v3;
  v18 = v5;
  v19 = v4;
  if (v4 | v5)
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      WirelessTechnologyList::asString(v16, &v19);
      v8 = v17;
      v9 = v16[0];
      WirelessTechnologyList::asString(__p, &v18);
      v10 = v16;
      if (v8 < 0)
      {
        v10 = v9;
      }

      if (v15 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 136315650;
      v21 = "deactivate_sync";
      v22 = 2080;
      v23 = v10;
      v24 = 2080;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: WirelessTechnologyListManager: to remove %s; to remove %s", buf, 0x20u);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      if (v17 < 0)
      {
        operator delete(v16[0]);
      }

      v5 = v18;
      v4 = v19;
    }

    if (v5)
    {
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }

    if (v4)
    {
      v13 = v12;
    }

    else
    {
      v13 = 2;
    }

    *buf = v4;
    LODWORD(v16[0]) = v5;
    DataWirelessTechnologyListManager::deactivateController_sync(a1, v13, buf, v16);
    if (v19)
    {
      *buf = v19;
      DataWirelessTechnologyListManager::removeFromActiveTechnologyMask(a1, 1, buf);
    }

    if (v18)
    {
      *buf = v18;
      DataWirelessTechnologyListManager::removeFromActiveTechnologyMask(a1, 2, buf);
    }
  }
}

void sub_10030B108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *DataWirelessTechnologyListManager::removeFromActiveTechnologyMask(uint64_t *result, uint64_t a2, _DWORD *a3)
{
  v3 = (*a3 & result[8]) == 0;
  v11 = *a3 & result[8];
  v12 = a2;
  if (!v3)
  {
    v5 = result;
    v6 = result[5];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = subscriber::asString();
      WirelessTechnologyList::asString(__p, &v11);
      if (v10 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "removeFromActiveTechnologyMask";
      v14 = 2080;
      v15 = v7;
      v16 = 2080;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: WirelessTechnologyListManager(%s): Removing %s", buf, 0x20u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *buf = &v12;
    result = sub_10030C46C((v5 + 9), &v12, &unk_101802C98, buf);
    *(result + 8) &= ~*a3;
  }

  return result;
}

void DataWirelessTechnologyListManager::activate_sync(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 64);
  v4 = *a2 & v3;
  v5 = *a3 & v3;
  v18 = v5;
  v19 = v4;
  if (v4 | v5)
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      WirelessTechnologyList::asString(v16, &v19);
      v8 = v17;
      v9 = v16[0];
      WirelessTechnologyList::asString(__p, &v18);
      v10 = v16;
      if (v8 < 0)
      {
        v10 = v9;
      }

      if (v15 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 136315650;
      v21 = "activate_sync";
      v22 = 2080;
      v23 = v10;
      v24 = 2080;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: WirelessTechnologyListManager: to add %s; to add %s", buf, 0x20u);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      if (v17 < 0)
      {
        operator delete(v16[0]);
      }

      v5 = v18;
      v4 = v19;
    }

    if (v5)
    {
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }

    if (v4)
    {
      v13 = v12;
    }

    else
    {
      v13 = 2;
    }

    *buf = v4;
    LODWORD(v16[0]) = v5;
    DataWirelessTechnologyListManager::activateController_sync(a1, v13, buf, v16);
    if (v19)
    {
      *buf = v19;
      DataWirelessTechnologyListManager::addToActiveTechnologyMask(a1, 1, buf);
    }

    if (v18)
    {
      *buf = v18;
      DataWirelessTechnologyListManager::addToActiveTechnologyMask(a1, 2, buf);
    }
  }
}

void sub_10030B434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *DataWirelessTechnologyListManager::addToActiveTechnologyMask(uint64_t *result, uint64_t a2, _DWORD *a3)
{
  v3 = (*a3 & result[8]) == 0;
  v11 = *a3 & result[8];
  v12 = a2;
  if (!v3)
  {
    v5 = result;
    v6 = result[5];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = subscriber::asString();
      WirelessTechnologyList::asString(__p, &v11);
      if (v10 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "addToActiveTechnologyMask";
      v14 = 2080;
      v15 = v7;
      v16 = 2080;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: WirelessTechnologyListManager(%s): Adding %s", buf, 0x20u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *buf = &v12;
    result = sub_10030C46C((v5 + 9), &v12, &unk_101802C98, buf);
    *(result + 8) |= *a3;
  }

  return result;
}

void DataWirelessTechnologyListManager::triggerSwitch_sync(uint64_t a1, WirelessTechnologyList *a2, WirelessTechnologyList *a3, WirelessTechnologyList *a4, WirelessTechnologyList *a5)
{
  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v34;
    WirelessTechnologyList::asString(v34, a2);
    if (v35 < 0)
    {
      v11 = v34[0];
    }

    v12 = v32;
    WirelessTechnologyList::asString(v32, a3);
    if (v33 < 0)
    {
      v12 = v32[0];
    }

    WirelessTechnologyList::asString(v30, a4);
    v13 = v31;
    v14 = v30[0];
    WirelessTechnologyList::asString(__p, a5);
    v15 = v30;
    if (v13 < 0)
    {
      v15 = v14;
    }

    v16 = __p;
    if (v29 < 0)
    {
      v16 = __p[0];
    }

    *buf = 136316162;
    v37 = "triggerSwitch_sync";
    v38 = 2080;
    v39 = v11;
    v40 = 2080;
    v41 = v12;
    v42 = 2080;
    v43 = v15;
    v44 = 2080;
    v45 = v16;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: WirelessTechnologyListManager: Switch start: to add %s, to remove %s; to add %s, to remove %s", buf, 0x34u);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    if (v31 < 0)
    {
      operator delete(v30[0]);
    }

    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    if (v35 < 0)
    {
      operator delete(v34[0]);
    }
  }

  *buf = *a3;
  LODWORD(v34[0]) = *a5;
  DataWirelessTechnologyListManager::deactivate_sync(a1, buf, v34);
  *buf = *a2;
  LODWORD(v34[0]) = *a4;
  DataWirelessTechnologyListManager::activate_sync(a1, buf, v34);
  v17 = *(a1 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 80);
    v19 = (a1 + 80);
    v18 = v20;
    if (!v20)
    {
      goto LABEL_26;
    }

    v21 = v19;
    do
    {
      if (*(v18 + 28) >= 1)
      {
        v21 = v18;
      }

      v18 = *(v18 + 8 * (*(v18 + 28) < 1));
    }

    while (v18);
    if (v21 != v19 && *(v21 + 7) <= 1)
    {
      v22 = *(v21 + 8);
    }

    else
    {
LABEL_26:
      v22 = 0;
    }

    LODWORD(v30[0]) = v22;
    v23 = v34;
    WirelessTechnologyList::asString(v34, v30);
    if (v35 < 0)
    {
      v23 = v34[0];
    }

    v24 = *v19;
    if (!*v19)
    {
      goto LABEL_36;
    }

    v25 = v19;
    do
    {
      if (*(v24 + 28) >= 2)
      {
        v25 = v24;
      }

      v24 = *(v24 + 8 * (*(v24 + 28) < 2));
    }

    while (v24);
    if (v25 != v19 && *(v25 + 7) <= 2)
    {
      v26 = *(v25 + 8);
    }

    else
    {
LABEL_36:
      v26 = 0;
    }

    LODWORD(__p[0]) = v26;
    WirelessTechnologyList::asString(v32, __p);
    if (v33 >= 0)
    {
      v27 = v32;
    }

    else
    {
      v27 = v32[0];
    }

    *buf = 136315650;
    v37 = "triggerSwitch_sync";
    v38 = 2080;
    v39 = v23;
    v40 = 2080;
    v41 = v27;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s: WirelessTechnologyListManager: Switch end: new value %s / %s", buf, 0x20u);
    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    if (v35 < 0)
    {
      operator delete(v34[0]);
    }
  }
}

void sub_10030B8FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DataWirelessTechnologyListManager::addTechnology_sync(capabilities::ct *a1, int a2, _DWORD *a3, uint64_t a4)
{
  v7 = a1;
  if ((a2 & 0xFFFFFFFD) == 1)
  {
    v14 = 1;
    *buf = &v14;
    a1 = sub_10030C46C(a1 + 96, &v14, &unk_101802C98, buf);
    v8 = *a3 & ~*(a1 + 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = capabilities::ct::supportsGemini(a1);
  if ((a2 & 0xFFFFFFFE) == 2 && v9)
  {
    v14 = 2;
    *buf = &v14;
    v10 = *a3 & ~*(sub_10030C46C(v7 + 96, &v14, &unk_101802C98, buf) + 8);
    if (!(v8 | v10))
    {
      return;
    }
  }

  else
  {
    if (!v8)
    {
      return;
    }

    v10 = 0;
  }

  v14 = 0;
  *buf = v8;
  v12 = 0;
  v13 = v10;
  DataWirelessTechnologyListManager::triggerSwitch_sync(v7, buf, &v14, &v13, &v12);
  v11 = *(v7 + 5);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "addTechnology_sync";
    v16 = 2080;
    v17 = a4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: %s", buf, 0x16u);
  }
}

void DataWirelessTechnologyListManager::removeTechnology_sync(capabilities::ct *a1, int a2, _DWORD *a3, uint64_t a4)
{
  v7 = a1;
  if ((a2 & 0xFFFFFFFD) == 1)
  {
    v14 = 1;
    *buf = &v14;
    a1 = sub_10030C46C(a1 + 96, &v14, &unk_101802C98, buf);
    v8 = *(a1 + 8) & *a3;
  }

  else
  {
    v8 = 0;
  }

  v9 = capabilities::ct::supportsGemini(a1);
  if ((a2 & 0xFFFFFFFE) == 2 && v9)
  {
    v14 = 2;
    *buf = &v14;
    v10 = sub_10030C46C(v7 + 96, &v14, &unk_101802C98, buf)[4] & *a3;
    if (!(v8 | v10))
    {
      return;
    }
  }

  else
  {
    if (!v8)
    {
      return;
    }

    v10 = 0;
  }

  v14 = v8;
  *buf = 0;
  v12 = v10;
  v13 = 0;
  DataWirelessTechnologyListManager::triggerSwitch_sync(v7, buf, &v14, &v13, &v12);
  v11 = *(v7 + 5);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "removeTechnology_sync";
    v16 = 2080;
    v17 = a4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: %s", buf, 0x16u);
  }
}

void DataWirelessTechnologyListManager::handleRadioOn_sync(DataWirelessTechnologyListManager *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I WirelessTechnologyListManager: ** Wireless on (exiting airplane mode)", buf, 2u);
  }

  v3 = 2;
  DataWirelessTechnologyListManager::addTechnology_sync(this, 3, &v3, "** Wireless on switch complete");
}

void DataWirelessTechnologyListManager::handleRadioDisabling_sync(DataWirelessTechnologyListManager *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I WirelessTechnologyListManager: ** Wireless OFF (entering airplane mode)", buf, 2u);
  }

  v3 = 2;
  DataWirelessTechnologyListManager::removeTechnology_sync(this, 3, &v3, "** Wireless OFF switch complete");
}

void DataWirelessTechnologyListManager::handleBasebandOn_sync(DataWirelessTechnologyListManager *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I WirelessTechnologyListManager: ** Kicking Off Controllers", buf, 2u);
  }

  v3 = 1;
  DataWirelessTechnologyListManager::addTechnology_sync(this, 3, &v3, "** Kick Off Complete");
}

void DataWirelessTechnologyListManager::handleBasebandOff_sync(DataWirelessTechnologyListManager *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I ** Tear Down Controllers", buf, 2u);
  }

  v3 = 237;
  DataWirelessTechnologyListManager::removeTechnology_sync(this, 3, &v3, "** Tear Down Complete");
}

void DataWirelessTechnologyListManager::handleWirelessTechnologyChanged_sync(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3 + 1;
  v5 = *a3;
  if (*a3 != a3 + 1)
  {
    v29 = 0;
    v30 = 0;
    v6 = (a2 + 8);
    while (1)
    {
      v7 = v5 + 7;
      v8 = *v6;
      if (*v6)
      {
        v9 = *v7;
        v10 = v6;
        do
        {
          if (*(v8 + 28) >= v9)
          {
            v10 = v8;
          }

          v8 = *(v8 + 8 * (*(v8 + 28) < v9));
        }

        while (v8);
        if (v10 != v6 && v9 >= *(v10 + 7) && *(v10 + 8) == *(v5 + 8))
        {
          goto LABEL_27;
        }
      }

      v34 = 0;
      v34 = asWirelessTechnology();
      *buf = v5 + 28;
      v11 = *(sub_10030C46C(a1 + 96, v5 + 7, &unk_101802C98, buf) + 8);
      v12 = v34;
      v13 = *(a1 + 40);
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      v15 = v12;
      if (v14)
      {
        v16 = subscriber::asString();
        WirelessTechnologyList::asString(__p, &v34);
        v17 = __p;
        if (v33 < 0)
        {
          v17 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "handleWirelessTechnologyChanged_sync";
        v36 = 2080;
        v37 = v16;
        v38 = 2080;
        v39 = v17;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: WirelessTechnologyListManager(%s): with %s", buf, 0x20u);
        if (v33 < 0)
        {
          operator delete(__p[0]);
        }

        v15 = v34;
      }

      if ((v15 & 0xEC) != 0)
      {
        v18 = v12 | v11 & 3;
        if (*v7 == 2)
        {
          *buf = v5 + 28;
          HIDWORD(v30) = v18 & ~*(sub_10030C46C(a1 + 96, v5 + 7, &unk_101802C98, buf) + 8);
          *buf = v5 + 28;
          HIDWORD(v29) = sub_10030C46C(a1 + 96, v5 + 7, &unk_101802C98, buf)[4] & ~v18;
        }

        else if (*v7 == 1)
        {
          *buf = v5 + 28;
          LODWORD(v30) = v18 & ~*(sub_10030C46C(a1 + 96, v5 + 7, &unk_101802C98, buf) + 8);
          *buf = v5 + 28;
          LODWORD(v29) = sub_10030C46C(a1 + 96, v5 + 7, &unk_101802C98, buf)[4] & ~v18;
        }

        else
        {
          v23 = *(a1 + 40);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = subscriber::asString();
            *buf = 136315394;
            *&buf[4] = "handleWirelessTechnologyChanged_sync";
            v36 = 2080;
            v37 = v24;
            v20 = v23;
            v21 = "#E %s: WirelessTechnologyListManager: wrong simSlot: %s";
            v22 = 22;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v19 = *(a1 + 40);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "handleWirelessTechnologyChanged_sync";
          v20 = v19;
          v21 = "#I %s: WirelessTechnologyListManager: Ignoring loss of service";
          v22 = 12;
LABEL_26:
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, buf, v22);
        }
      }

LABEL_27:
      v25 = v5[1];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = v5[2];
          v27 = *v26 == v5;
          v5 = v26;
        }

        while (!v27);
      }

      v5 = v26;
      if (v26 == v4)
      {
        goto LABEL_35;
      }
    }
  }

  v29 = 0;
  v30 = 0;
LABEL_35:
  if (v30 || v29 || __PAIR64__(HIDWORD(v29), 0) != HIDWORD(v30))
  {
    v34 = HIDWORD(v30);
    *buf = v30;
    v31 = HIDWORD(v29);
    LODWORD(__p[0]) = v29;
    DataWirelessTechnologyListManager::triggerSwitch_sync(a1, buf, __p, &v34, &v31);
  }

  v28 = *(a1 + 40);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "handleWirelessTechnologyChanged_sync";
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s: WirelessTechnologyListManager: Technology change complete", buf, 0xCu);
  }
}

void sub_10030C2B4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 128);
  *(a1 + 120) = v3;
  *(a1 + 128) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_10030C36C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10030C440);
  __cxa_rethrow();
}

void sub_10030C3AC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10030C400(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10030C440(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *sub_10030C46C(uint64_t a1, int *a2, uint64_t a3, unsigned int **a4)
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

void sub_10030C5B0(uint64_t a1, NSObject **a2)
{
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  DataiRatController::create();
}

void sub_10030C64C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (a9)
  {
    sub_10176B19C(a9);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030C674(uint64_t a1, NSObject **a2)
{
  v3 = *a2;
  object = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  sub_100B287FC(a1 + 8, &object);
}

void sub_10030C6D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030C6EC(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1002C44D8();
}

void sub_10030C73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030C754(uint64_t a1, NSObject **a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  if (*a2)
  {
    dispatch_retain(*a2);
  }

  DataWirelessTechnologyListManager::create();
}

void sub_10030C7D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030C7FC(uint64_t a1, NSObject **a2)
{
  v2 = *(a1 + 16);
  v3[2] = *(a1 + 8);
  v3[3] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (*a2)
  {
    dispatch_retain(*a2);
  }

  sub_100417074(v3);
}

void sub_10030C87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030C8A0(uint64_t a1, NSObject **a2)
{
  Registry::getCommandDriversFactory(&v6, *(a1 + 8));
  v3 = v6;
  v4 = *a2;
  object = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  (*(*v3 + 112))(v3, &object);
  if (object)
  {
    dispatch_release(object);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10030C93C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030C960(uint64_t a1@<X0>, NSObject **a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  v26 = 0;
  v27 = 0;
  (*(**a5 + 16))(&v26);
  v10 = v26;
  if (v26)
  {
    v11 = *a4;
    object = v11;
    if (v11)
    {
      dispatch_retain(v11);
      v10 = v26;
    }

    v21 = v10;
    v22 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    BBDataDriverInterface::createDataDriverInstance(&v21, &v24);
    v13 = v24;
    v12 = v25;
    v24 = 0;
    v25 = 0;
    *a6 = v13;
    a6[1] = v12;
    if (v22)
    {
      sub_100004A34(v22);
    }

    if (object)
    {
      dispatch_release(object);
    }

    v19 = v13;
    v20 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = *a4;
    v18 = v14;
    if (v14)
    {
      dispatch_retain(v14);
    }

    v15 = a5[1];
    v16 = *a5;
    v17 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    BBDataDriverInterface::initDataDriverInstance(a1 + 8, &v19, &v18, &v16);
    if (v17)
    {
      sub_100004A34(v17);
    }

    if (v18)
    {
      dispatch_release(v18);
    }

    if (v20)
    {
      sub_100004A34(v20);
    }
  }

  if (v27)
  {
    sub_100004A34(v27);
  }
}

void sub_10030CAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, dispatch_object_t object, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, dispatch_object_t a16)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  v19 = *(v17 - 56);
  if (v19)
  {
    sub_100004A34(v19);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030CB44(uint64_t a1@<X0>, void *a3@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
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
  *&v14 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v14);
  if (!v10)
  {
    v12 = 0;
LABEL_9:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    if (!v12)
    {
      goto LABEL_11;
    }

LABEL_10:
    v14 = 0uLL;
    sub_100717B78(&v14);
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
  if (v12)
  {
    goto LABEL_10;
  }

LABEL_11:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_10030CCAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

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

void sub_10030CCE8(uint64_t a1@<X0>, void *a5@<X8>)
{
  v6 = 0;
  v7 = 0;
  (*(*a1 + 72))(&v6);
  if (v6)
  {
    operator new();
  }

  if (v7)
  {
    sub_100004A34(v7);
  }

  *a5 = 0;
  a5[1] = 0;
}

void sub_10030CF58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, dispatch_object_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  sub_100004A34(v18);
  v21 = *(v19 - 56);
  if (v21)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(a1);
}

void sub_10030CFCC(void *a7@<X8>)
{
  *a7 = 0;
  a7[1] = 0;
  operator new();
}

void sub_10030D0F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *(v14 + 8);
  if (v16)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10030D148@<X0>(capabilities::ct *a1@<X0>, void *a2@<X8>)
{
  result = capabilities::ct::integratedPDPStatisticsInterval(a1);
  if (result >= 1)
  {
    sub_1003376A4();
  }

  *a2 = 0;
  return result;
}

void sub_10030D194(capabilities::ct *a2@<X1>, NSObject **a4@<X3>, void *x8_0@<X8>)
{
  v8 = *a4;
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  sub_1005AA8EC(a2, &object, x8_0);
}

void sub_10030D204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030D21C(uint64_t a1, uint64_t *a2, uint64_t a3, NSObject **a4)
{
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  if (*a4)
  {
    dispatch_retain(*a4);
  }

  sub_10030D2FC(&v6);
}

void sub_10030D2D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030D2FC(void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  operator new();
}

void sub_10030D3E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  if (v12)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void sub_10030D414(DataServiceFactoryInterface *this)
{
  *this = off_101E408B0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  DataServiceFactoryInterface::~DataServiceFactoryInterface(this);
}

void sub_10030D470(DataServiceFactoryInterface *this)
{
  *this = off_101E408B0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  DataServiceFactoryInterface::~DataServiceFactoryInterface(this);

  operator delete();
}

void sub_10030D560(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[9], v1, sub_10030D634);
  __cxa_rethrow();
}

void sub_10030D5A0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10030D5F4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10030D634(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10030D6E0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_10030D7B4);
  __cxa_rethrow();
}

void sub_10030D720(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10030D774(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10030D7B4(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10030D800(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E40A08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const char *sub_10030D87C(unsigned int a1)
{
  if (a1 > 6)
  {
    return "???";
  }

  else
  {
    return off_101E40AD8[a1];
  }
}

const char *sub_10030D8A0(unsigned int a1)
{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_101E40B10[a1];
  }
}

CFDictionaryRef *sub_10030D8CC(CFDictionaryRef *a1, const __CFDictionary *a2)
{
  *a1 = 0;
  if (a2)
  {
    *a1 = CFDictionaryCreateCopy(kCFAllocatorDefault, a2);
  }

  return a1;
}

CFDictionaryRef *sub_10030D90C(CFDictionaryRef *a1, os_log_t *a2, const __CFString *a3)
{
  *a1 = 0;
  if (a3)
  {
    v4 = sub_10030D96C(a2, a3);
    if (v4)
    {
      v5 = v4;
      *a1 = CFDictionaryCreateCopy(kCFAllocatorDefault, v4);
      CFRelease(v5);
    }
  }

  return a1;
}

__CFDictionary *sub_10030D96C(os_log_t *a1, const __CFString *a2)
{
  if (!a2)
  {
    return 0;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, a2, @"_");
  theArray = ArrayBySeparatingStrings;
  if (ArrayBySeparatingStrings && CFArrayGetCount(ArrayBySeparatingStrings) >= 1)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    v6 = ValueAtIndex;
    if (ValueAtIndex)
    {
      v7 = CFGetTypeID(ValueAtIndex);
      if (v7 == CFStringGetTypeID())
      {
        v8 = v6;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    CFDictionaryAddValue(Mutable, qword_101FCB6F0, v8);
    v21 = a1;
    v10 = qword_101FCB6C8;
    v11 = qword_101FCB6D0;
    range = qword_101FCB6D8;
    v12 = 2;
    v22 = qword_101FCB6E8;
    while (1)
    {
      if (v12 > CFArrayGetCount(theArray))
      {
        goto LABEL_9;
      }

      v13 = CFArrayGetValueAtIndex(theArray, v12 - 1);
      v14 = v13;
      if (v13)
      {
        v15 = CFGetTypeID(v13);
        if (v15 == CFStringGetTypeID())
        {
          if (sub_100357D88(v14, @"GID1-"))
          {
            *buf = 0;
            v26.length = CFStringGetLength(v14) - v10;
            v26.location = v10;
            v16 = CFStringCreateWithSubstring(kCFAllocatorDefault, v14, v26);
            *buf = v16;
            if (v16)
            {
              CFDictionaryAddValue(Mutable, @"GID1", v16);
            }

LABEL_26:
            sub_100005978(buf);
            goto LABEL_27;
          }

          if (sub_100357D88(v14, @"GID2-"))
          {
            *buf = 0;
            v27.length = CFStringGetLength(v14) - v11;
            v27.location = v11;
            v17 = CFStringCreateWithSubstring(kCFAllocatorDefault, v14, v27);
            *buf = v17;
            if (v17)
            {
              CFDictionaryAddValue(Mutable, @"GID2", v17);
            }

            goto LABEL_26;
          }

          if (sub_100357D88(v14, @"ID-"))
          {
            *buf = 0;
            Length = CFStringGetLength(v14);
            v28.location = range;
            v28.length = Length - range;
            v19 = CFStringCreateWithSubstring(kCFAllocatorDefault, v14, v28);
            *buf = v19;
            if (v19)
            {
              CFDictionaryAddValue(Mutable, v22, v19);
            }

            goto LABEL_26;
          }

          v20 = *v21;
          if (os_log_type_enabled(*v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#N Unable to parse carrier bundle name", buf, 2u);
          }
        }
      }

LABEL_27:
      ++v12;
    }
  }

  Mutable = 0;
LABEL_9:
  sub_100010250(&theArray);
  return Mutable;
}

void sub_10030DC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, const void *);
  sub_100005978(va);
  sub_100010250(va1);
  _Unwind_Resume(a1);
}

const void **sub_10030DCA8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

double sub_10030DCE4(CFDictionaryRef *a1, CFDictionaryRef *a2)
{
  v3 = *a1;
  v4 = 0.0;
  if (!v3)
  {
    return v4;
  }

  v6 = qword_101FCB6F0;
  if (!CFDictionaryContainsKey(v3, qword_101FCB6F0) || !CFDictionaryContainsKey(*a2, v6))
  {
    return v4;
  }

  memset(&__str, 0, sizeof(__str));
  CFDictionaryGetValue(*a2, v6);
  memset(&__dst, 0, sizeof(__dst));
  ctu::cf::assign();
  memset(&__str, 0, sizeof(__str));
  CFDictionaryGetValue(*a1, v6);
  memset(&__dst, 0, sizeof(__dst));
  ctu::cf::assign();
  *__n = 0uLL;
  v64 = 0;
  for (i = &__str; i != &__str; i = (i + 1))
  {
    i->__r_.__value_.__s.__data_[0] = __tolower(i->__r_.__value_.__s.__data_[0]);
  }

  if (v64 >= 0)
  {
    v8 = (__n + HIBYTE(v64));
  }

  else
  {
    v8 = (__n[0] + __n[1]);
  }

  if (v64 >= 0)
  {
    v9 = __n;
  }

  else
  {
    v9 = __n[0];
  }

  while (v9 != v8)
  {
    *v9 = __tolower(*v9);
    v9 = (v9 + 1);
  }

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v4 = 0.0;
  if (!size)
  {
    goto LABEL_41;
  }

  v11 = SHIBYTE(v64);
  if ((SHIBYTE(v64) & 0x8000000000000000) == 0)
  {
    if (!HIBYTE(v64))
    {
      v12 = 2;
      goto LABEL_56;
    }

LABEL_22:
    std::string::basic_string(&__dst, &__str, 0, v11, &v62);
    v13 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = __dst.__r_.__value_.__l.__size_;
    }

    v15 = HIBYTE(v64);
    if (v64 < 0)
    {
      v15 = __n[1];
    }

    if (v14 == v15)
    {
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      if (v64 >= 0)
      {
        v17 = __n;
      }

      else
      {
        v17 = __n[0];
      }

      v18 = memcmp(p_dst, v17, v14) == 0;
      if ((v13 & 0x80000000) == 0)
      {
LABEL_38:
        if (v18)
        {
          memset(&__dst, 0, sizeof(__dst));
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
          }

          else
          {
            __dst = __str;
          }

          if (v64 >= 0)
          {
            v19 = HIBYTE(v64);
          }

          else
          {
            v19 = __n[1];
          }

          std::string::replace(&__dst, 0, v19, "", 0);
          v20 = __dst.__r_.__value_.__l.__size_;
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          v21 = v20;
          v22 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v22 = __str.__r_.__value_.__l.__size_;
          }

          v23 = (1.0 - v21 / v22) * 9.0;
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          v12 = 0;
          v4 = v23 + 50.0;
LABEL_54:
          if ((SHIBYTE(v64) & 0x80000000) == 0)
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        }

LABEL_41:
        v12 = 2;
        goto LABEL_54;
      }
    }

    else
    {
      v18 = 0;
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    operator delete(__dst.__r_.__value_.__l.__data_);
    goto LABEL_38;
  }

  v11 = __n[1];
  if (__n[1])
  {
    goto LABEL_22;
  }

  v12 = 2;
LABEL_55:
  operator delete(__n[0]);
LABEL_56:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (v12)
    {
      return v4;
    }
  }

  else if (v12)
  {
    return v4;
  }

  v24 = *a1;
  if (!*a1)
  {
    return 0.0;
  }

  v25 = *a2;
  if (!*a2)
  {
    return 0.0;
  }

  Value = CFDictionaryGetValue(*a1, @"GID1");
  v27 = Value;
  if (Value)
  {
    v28 = CFGetTypeID(Value);
    if (v28 != CFStringGetTypeID())
    {
      v27 = 0;
    }
  }

  v29 = CFDictionaryGetValue(v24, @"GID2");
  v30 = v29;
  if (v29)
  {
    v31 = CFGetTypeID(v29);
    if (v31 != CFStringGetTypeID())
    {
      v30 = 0;
    }
  }

  v32 = CFDictionaryGetValue(v25, @"GID1");
  v33 = v32;
  if (v32)
  {
    v34 = CFGetTypeID(v32);
    if (v34 != CFStringGetTypeID())
    {
      v33 = 0;
    }
  }

  v35 = CFDictionaryGetValue(v25, @"GID2");
  v36 = v35;
  if (v35)
  {
    v37 = CFGetTypeID(v35);
    if (v37 != CFStringGetTypeID())
    {
      v36 = 0;
    }
  }

  if (!v27 && !v33 && !v30 && !v36)
  {
    goto LABEL_78;
  }

  if (v27)
  {
    v41 = v33 == 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = !v41;
  if (v41)
  {
    if (v27)
    {
      return 0.0;
    }

    v47 = 0;
    v48 = 0.0;
  }

  else
  {
    if (!sub_100357D88(v33, v27))
    {
      return 0.0;
    }

    memset(&__dst, 0, sizeof(__dst));
    ctu::cf::assign();
    v43 = __dst.__r_.__value_.__l.__size_;
    __p = __dst.__r_.__value_.__r.__words[0];
    v67[0] = __dst.__r_.__value_.__r.__words[2];
    *(v67 + 3) = *(&__dst.__r_.__value_.__r.__words[2] + 3);
    v44 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    memset(&__dst, 0, sizeof(__dst));
    ctu::cf::assign();
    v45 = *&__dst.__r_.__value_.__l.__data_;
    v66[0] = __dst.__r_.__value_.__r.__words[2];
    *(v66 + 3) = *(&__dst.__r_.__value_.__r.__words[2] + 3);
    v46 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if (v44 < 0)
    {
      sub_100005F2C(&__str, __p, v43);
    }

    else
    {
      __str.__r_.__value_.__r.__words[0] = __p;
      __str.__r_.__value_.__l.__size_ = v43;
      LODWORD(__str.__r_.__value_.__r.__words[2]) = v67[0];
      *(&__str.__r_.__value_.__r.__words[2] + 3) = *(v67 + 3);
      *(&__str.__r_.__value_.__s + 23) = v44;
    }

    if (v46 < 0)
    {
      sub_100005F2C(__n, v45, *(&v45 + 1));
    }

    else
    {
      *__n = v45;
      LODWORD(v64) = v66[0];
      *(&v64 + 3) = *(v66 + 3);
      HIBYTE(v64) = v46;
    }

    v50 = sub_10030E574(&__str, __n);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(__n[0]);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v46 < 0)
    {
      operator delete(v45);
    }

    if (v44 < 0)
    {
      operator delete(__p);
    }

    v48 = v50 + 0.0;
    v47 = 2;
  }

  if (v30 && v36)
  {
    if (sub_100357D88(v36, v30))
    {
      if (v42)
      {
        v47 = 3;
      }

      else
      {
        v47 = 2;
      }

      memset(&__dst, 0, sizeof(__dst));
      ctu::cf::assign();
      v51 = *&__dst.__r_.__value_.__l.__data_;
      v67[0] = __dst.__r_.__value_.__r.__words[2];
      *(v67 + 3) = *(&__dst.__r_.__value_.__r.__words[2] + 3);
      v52 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      memset(&__dst, 0, sizeof(__dst));
      ctu::cf::assign();
      v53 = *&__dst.__r_.__value_.__l.__data_;
      v66[0] = __dst.__r_.__value_.__r.__words[2];
      *(v66 + 3) = *(&__dst.__r_.__value_.__r.__words[2] + 3);
      v54 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if (v52 < 0)
      {
        sub_100005F2C(&v62, v51, *(&v51 + 1));
      }

      else
      {
        *&v62.__r_.__value_.__l.__data_ = v51;
        LODWORD(v62.__r_.__value_.__r.__words[2]) = v67[0];
        *(&v62.__r_.__value_.__r.__words[2] + 3) = *(v67 + 3);
        *(&v62.__r_.__value_.__s + 23) = v52;
      }

      if (v54 < 0)
      {
        sub_100005F2C(&v59, v53, *(&v53 + 1));
      }

      else
      {
        v59 = v53;
        *v60 = v66[0];
        *&v60[3] = *(v66 + 3);
        v61 = v54;
      }

      v55 = sub_10030E574(&v62, &v59);
      if (v61 < 0)
      {
        operator delete(v59);
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
        if ((v54 & 0x80000000) == 0)
        {
LABEL_133:
          if ((v52 & 0x80000000) == 0)
          {
LABEL_134:
            v48 = v48 + v55;
            goto LABEL_135;
          }

LABEL_144:
          operator delete(v51);
          goto LABEL_134;
        }
      }

      else if ((v54 & 0x80000000) == 0)
      {
        goto LABEL_133;
      }

      operator delete(v53);
      if ((v52 & 0x80000000) == 0)
      {
        goto LABEL_134;
      }

      goto LABEL_144;
    }

    return 0.0;
  }

  if (v30)
  {
    return 0.0;
  }

LABEL_135:
  if (v47 == 2)
  {
    v56 = 15.0;
  }

  else
  {
    if (v47 != 3)
    {
      goto LABEL_78;
    }

    v56 = 30.0;
  }

  v4 = v4 + v56 + v48;
LABEL_78:
  if (v4 != 0.0)
  {
    v38 = qword_101FCB6E8;
    v39 = CFDictionaryGetValue(*a1, qword_101FCB6E8);
    v40 = CFDictionaryGetValue(*a2, v38);
    if (v39 && v40)
    {
      if (sub_100357D88(v40, v39))
      {
        return v4 + 10.0;
      }

      else
      {
        return 0.0;
      }
    }

    else
    {
      if (v40)
      {
        v49 = 1;
      }

      else
      {
        v49 = v39 == 0;
      }

      if (!v49)
      {
        return 0.0;
      }
    }
  }

  return v4;
}

void sub_10030E42C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (v47 < 0)
  {
    operator delete(v44);
  }

  if (v46 < 0)
  {
    operator delete(v45);
  }

  _Unwind_Resume(exception_object);
}

double sub_10030E574(std::string *__str, uint64_t a2)
{
  v4 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v4 < 0)
  {
    v6 = __str->__r_.__value_.__r.__words[0];
    v5 = (__str->__r_.__value_.__r.__words[0] + __str->__r_.__value_.__l.__size_);
  }

  else
  {
    v5 = (__str + v4);
    v6 = __str;
  }

  while (v6 != v5)
  {
    v6->__r_.__value_.__s.__data_[0] = __tolower(v6->__r_.__value_.__s.__data_[0]);
    v6 = (v6 + 1);
  }

  v7 = *(a2 + 23);
  if (v7 < 0)
  {
    v9 = *a2;
    v8 = (*a2 + *(a2 + 8));
  }

  else
  {
    v8 = (a2 + v7);
    v9 = a2;
  }

  while (v9 != v8)
  {
    *v9 = __tolower(*v9);
    ++v9;
  }

  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v11 = 0.0;
  if (size)
  {
    v12 = *(a2 + 23);
    if ((v12 & 0x8000000000000000) != 0)
    {
      v12 = *(a2 + 8);
      if (!v12)
      {
        return v11;
      }
    }

    else if (!*(a2 + 23))
    {
      return v11;
    }

    std::string::basic_string(&__p, __str, 0, v12, &v27);
    v13 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = __p.__r_.__value_.__l.__size_;
    }

    v15 = *(a2 + 23);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(a2 + 8);
    }

    if (v14 == v15)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (v16 >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      v19 = memcmp(p_p, v18, v14) == 0;
      if (v13 < 0)
      {
LABEL_35:
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!v19)
        {
          return v11;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v19 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_35;
      }
    }

    if (!v19)
    {
      return v11;
    }

LABEL_36:
    memset(&__p, 0, sizeof(__p));
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__p, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      __p = *__str;
    }

    v20 = *(a2 + 23);
    if ((v20 & 0x8000000000000000) != 0)
    {
      v20 = *(a2 + 8);
    }

    std::string::replace(&__p, 0, v20, "", 0);
    v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v21 = __p.__r_.__value_.__l.__size_;
    }

    v22 = v21;
    v23 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((v23 & 0x8000000000000000) != 0)
    {
      v23 = __str->__r_.__value_.__l.__size_;
    }

    v24 = 1.0 - v22 / v23;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return v24 * 4.0;
  }

  return v11;
}

void sub_10030E774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030E790(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  sub_100A5C398(&v2, &v1, "kCarrierSettingsGetProperty", sub_10030E888, 1);
}

void sub_10030E888(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, const void **a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
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
  v38 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v38);
  if (!v14)
  {
    std::mutex::unlock(v9);
    return;
  }

  v16 = v14[3];
  v15 = v14[4];
  if (!v15)
  {
    std::mutex::unlock(v9);
    if (!v16)
    {
      return;
    }

LABEL_10:
    v38 = a4;
    v39 = "kCarrierSettingsKey";
    object = 0;
    sub_100006354(&v38, &object);
    if (xpc_get_type(object) == &_xpc_type_null)
    {
      goto LABEL_38;
    }

    v37 = 0;
    v38 = _CFXPCCreateCFObjectFromXPCObject();
    sub_100222990(&v37, &v38);
    if (!v37)
    {
LABEL_37:
      sub_100005978(&v37);
LABEL_38:
      xpc_release(object);
      if (!v15)
      {
        return;
      }

      goto LABEL_39;
    }

    v36 = 0;
    if (!sub_10017A428(a4, 15))
    {
      (*(*v16 + 64))(&v35, v16, v37);
      v28 = v35;
      v38 = v36;
      v35 = 0;
      v36 = v28;
      sub_10000A1EC(&v38);
      sub_10000A1EC(&v35);
LABEL_29:
      v31 = xpc_null_create();
      if (v36)
      {
        v32 = _CFXPCCreateXPCObjectFromCFObject();
        if (!v32)
        {
          v32 = xpc_null_create();
        }

        xpc_release(v31);
        v31 = v32;
      }

      v33 = v31;
      if (v31)
      {
        xpc_retain(v31);
      }

      else
      {
        v33 = xpc_null_create();
      }

      v38 = *a5;
      v39 = "kCarrierSettingsKey";
      sub_10000F688(&v38, &v33, &v34);
      xpc_release(v34);
      v34 = 0;
      xpc_release(v33);
      v33 = 0;
      xpc_release(v31);
      sub_10000A1EC(&v36);
      goto LABEL_37;
    }

    v17 = Registry::getServiceMap(*a1);
    v18 = v17;
    if ((v19 & 0x8000000000000000) != 0)
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

    std::mutex::lock(v17);
    v38 = v19;
    v23 = sub_100009510(&v18[1].__m_.__sig, &v38);
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
        v27 = 0;
        if (!v25)
        {
          goto LABEL_26;
        }

LABEL_23:
        if (capabilities::ct::supportsGemini(v26) && xpc_dictionary_get_value(*a4, "kUsePreferredDataSIM"))
        {
          v29 = (*(*v25 + 792))(v25);
          (*(*v16 + 96))(&v35, v16, v29, 1, v37, 0, 0);
          goto LABEL_27;
        }

LABEL_26:
        (*(*v16 + 32))(&v35, v16, kCarrierBundleId, v37, 0, 0);
LABEL_27:
        v30 = v35;
        v38 = v36;
        v35 = 0;
        v36 = v30;
        sub_10000A1EC(&v38);
        sub_10000A1EC(&v35);
        if ((v27 & 1) == 0)
        {
          sub_100004A34(v24);
        }

        goto LABEL_29;
      }
    }

    else
    {
      v25 = 0;
    }

    std::mutex::unlock(v18);
    v24 = 0;
    v27 = 1;
    if (!v25)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v9);
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v15);
  if (v16)
  {
    goto LABEL_10;
  }

LABEL_39:
  sub_100004A34(v15);
}

void sub_10030EC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13, uint64_t a14, uint64_t a15, xpc_object_t object)
{
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  sub_10000A1EC(&a12);
  sub_100005978(&a13);
  xpc_release(object);
  if (v16)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(a1);
}

void sub_10030ED20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  HIBYTE(v7[2]) = 21;
  strcpy(v7, "/cc/props/sims_in_use");
  v5 = a5[1];
  v6 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ctu::RestModule::getPropertyOnce();
  if (SHIBYTE(v7[2]) < 0)
  {
    operator delete(v7[0]);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_10030EDF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  if (*(v15 - 25) < 0)
  {
    operator delete(*(v15 - 48));
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10030EE20(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = 0;
  v50 = 0;
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
      v17 = 0;
      if (!v15)
      {
        goto LABEL_18;
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
  v17 = 1;
  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_10:
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  memset(v54, 0, sizeof(v54));
  *__p = 0u;
  v53 = 0u;
  *buf = 0u;
  capabilities::ct::defaultVinylSlotID(v16);
  v18 = VinylSlotIdFromCapabilities();
  (*(*v15 + 272))(buf, v15, v18);
  if (v63 == 1)
  {
    LOBYTE(v15) = BYTE1(v55) & BYTE2(v55);
    sub_100E3A5D4(&v54[14] + 8);
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  if (LOBYTE(v54[14]) == 1)
  {
    sub_100E3A5D4(v54 + 8);
  }

  if (LOBYTE(v54[0]) == 1 && SHIBYTE(v53) < 0)
  {
    operator delete(__p[1]);
  }

LABEL_18:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  if (v15)
  {
    v19 = *sub_10030F8A4();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Vinyl active, not providing any info to get bundle info", buf, 2u);
    }

    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    ctu::cf_to_xpc(Mutable, v20);
    *buf = *a5;
    *&buf[8] = "kCarrierSettingsBundleInfo";
    sub_10000F688(buf, &v46, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v46);
    v46 = 0;
    sub_1000279DC(&Mutable);
    goto LABEL_51;
  }

  v21 = Registry::getServiceMap(*a1);
  v22 = v21;
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

  std::mutex::lock(v21);
  *buf = v23;
  v27 = sub_100009510(&v22[1].__m_.__sig, buf);
  if (!v27)
  {
    v29 = 0;
LABEL_32:
    std::mutex::unlock(v22);
    v28 = 0;
    v30 = 1;
    if (!v29)
    {
      goto LABEL_49;
    }

LABEL_33:
    v31 = a5[1];
    v44 = *a5;
    v45 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v29 + 256))(v29, &v44);
    if (v45)
    {
      sub_100004A34(v45);
    }

    v32 = Registry::getServiceMap(*a1);
    v33 = v32;
    if (v34 < 0)
    {
      v35 = (v34 & 0x7FFFFFFFFFFFFFFFLL);
      v36 = 5381;
      do
      {
        v34 = v36;
        v37 = *v35++;
        v36 = (33 * v36) ^ v37;
      }

      while (v37);
    }

    std::mutex::lock(v32);
    *buf = v34;
    v38 = sub_100009510(&v33[1].__m_.__sig, buf);
    if (v38)
    {
      v40 = v38[3];
      v39 = v38[4];
      if (v39)
      {
        atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v33);
        atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v39);
        v41 = 0;
LABEL_45:
        v42 = (*(*v40 + 32))(v40);
        if ((v41 & 1) == 0)
        {
          sub_100004A34(v39);
        }

        if ((v42 & 1) == 0)
        {
          (*(*v29 + 344))(v29);
        }

        goto LABEL_49;
      }
    }

    else
    {
      v40 = 0;
    }

    std::mutex::unlock(v33);
    v39 = 0;
    v41 = 1;
    goto LABEL_45;
  }

  v29 = v27[3];
  v28 = v27[4];
  if (!v28)
  {
    goto LABEL_32;
  }

  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v22);
  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v28);
  v30 = 0;
  if (v29)
  {
    goto LABEL_33;
  }

LABEL_49:
  if ((v30 & 1) == 0)
  {
    sub_100004A34(v28);
  }

LABEL_51:
  sub_1000296E0(&v49);
  return sub_1000296E0(&v50);
}

void sub_10030F2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v16 = va_arg(va1, const void *);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  sub_1000296E0(va);
  sub_1000296E0(va1);
  _Unwind_Resume(a1);
}

void sub_10030F39C(uint64_t a1, xpc_object_t *a2)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  sub_10010A62C(&v32, a2);
  v3 = v32;
  if (v32 != v33)
  {
    while (*v3 != 1)
    {
      v3 += 42;
      if (v3 == v33)
      {
        goto LABEL_8;
      }
    }
  }

  if (v3 == v33)
  {
LABEL_8:
    v6 = *sub_10030F8A4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = subscriber::asString();
      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Missing %s in sim info", buf, 0xCu);
    }

    v30 = xpc_BOOL_create(0);
    if (!v30)
    {
      v30 = xpc_null_create();
    }

    *buf = *(a1 + 32);
    *&buf[8] = "kCarrierSettingsIsPhoneNumberCredentialValid";
    sub_10000F688(buf, &v30, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v30);
    v30 = 0;
    goto LABEL_41;
  }

  isSimPresent = subscriber::isSimPresent();
  if (isSimPresent)
  {
    isSimReady = subscriber::isSimReady();
  }

  else
  {
    isSimReady = 1;
  }

  v8 = *sub_10030F8A4();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = subscriber::asString();
    v10 = CSIBOOLAsString(isSimPresent);
    v11 = CSIBOOLAsString(isSimReady);
    *buf = 136315650;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = v10;
    v36 = 2080;
    v37 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I SIM state: %s, present: %s, valid: %s", buf, 0x20u);
  }

  ServiceMap = Registry::getServiceMap(**(a1 + 48));
  v13 = ServiceMap;
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

  std::mutex::lock(ServiceMap);
  *buf = v14;
  v18 = sub_100009510(&v13[1].__m_.__sig, buf);
  if (!v18)
  {
    v20 = 0;
LABEL_26:
    std::mutex::unlock(v13);
    v19 = 0;
    v21 = 1;
    if (!v20)
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  v20 = v18[3];
  v19 = v18[4];
  if (!v19)
  {
    goto LABEL_26;
  }

  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v13);
  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v19);
  v21 = 0;
  if (!v20)
  {
LABEL_22:
    v22 = *sub_10030F8A4();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10176B1D4(v22);
    }

    LOBYTE(isSimReady) = 0;
    goto LABEL_36;
  }

LABEL_27:
  if ((*(*v20 + 64))(v20))
  {
    isSimReady &= isSimPresent;
    v23 = *sub_10030F8A4();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = CSIBOOLAsString(isSimReady);
      *buf = 136315138;
      *&buf[4] = v24;
      v25 = "#I UIM is required, phone calls allowed = %s";
LABEL_35:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
    }
  }

  else if ((*(*v20 + 160))(v20))
  {
    v23 = *sub_10030F8A4();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v26 = CSIBOOLAsString(isSimReady);
      *buf = 136315138;
      *&buf[4] = v26;
      v25 = "#I UIM is not required, phone calls allowed = %s";
      goto LABEL_35;
    }
  }

  else
  {
    isSimReady &= isSimPresent;
    v23 = *sub_10030F8A4();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v27 = CSIBOOLAsString(isSimReady);
      *buf = 136315138;
      *&buf[4] = v27;
      v25 = "#I UIM is not required, not service provisioned, phone calls allowed = %s";
      goto LABEL_35;
    }
  }

LABEL_36:
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  v28 = xpc_BOOL_create(isSimReady);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  *buf = *(a1 + 32);
  *&buf[8] = "kCarrierSettingsIsPhoneNumberCredentialValid";
  sub_10000F688(buf, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
  v28 = 0;
LABEL_41:
  *buf = &v32;
  sub_1000B2AF8(buf);
}

void sub_10030F804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void **a17)
{
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  a17 = &a14;
  sub_1000B2AF8(&a17);
  _Unwind_Resume(a1);
}

void *sub_10030F8A4()
{
  if ((atomic_load_explicit(&qword_101FBA220, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA220))
  {
    LogGroupName = sGetLogGroupName();
    ctu::OsLogLogger::OsLogLogger(&unk_101FBA218, kCtLoggingSystemName, LogGroupName);
    __cxa_guard_release(&qword_101FBA220);
  }

  return &unk_101FBA218;
}

void *sub_10030F9CC(void *a1)
{
  v2 = (a1 + 1);
  ctu::OsLogContext::OsLogContext(&__p, kCtLoggingSystemName, "abm");
  ctu::OsLogLogger::OsLogLogger(v7, &__p);
  ctu::OsLogLogger::OsLogLogger(v2, v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  ctu::OsLogContext::~OsLogContext(&__p);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = off_101E40B68;
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  a1[4] = dispatch_queue_create("CommCenterAbmClient", v3);
  sub_10000501C(&__p, "CommCenter");
  abm::client::CreateManager();
  if (v6 < 0)
  {
    operator delete(__p.var0);
  }

  return a1;
}

void sub_10030FAD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v18 = *(v15 + 4);
  if (v18)
  {
    dispatch_release(v18);
  }

  v19 = *(v15 + 3);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  ctu::OsLogLogger::~OsLogLogger(v16);
  AppleBasebandManagerClientInterface::~AppleBasebandManagerClientInterface(v15);
  _Unwind_Resume(a1);
}

void sub_10030FB4C(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  abm::client::EventsOn();
  if (v2)
  {
    sub_100004A34(v2);
  }
}

void sub_10030FB9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030FBB4(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  abm::client::EventsOff();
  if (v2)
  {
    sub_100004A34(v2);
  }
}

void sub_10030FC04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10030FC1C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  isSupported = abm::trace::isSupported();
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  return isSupported;
}

void sub_10030FC8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030FCA8(uint64_t a1, char *a2, NSObject **a3, uint64_t a4)
{
  v6 = *(a1 + 48);
  v10 = *(a1 + 40);
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, a2);
  v12 = _NSConcreteStackBlock;
  v13 = 1174405120;
  v14 = sub_10030FE14;
  v15 = &unk_101E40BA8;
  v7 = *a3;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  sub_1003103C4(v17, a4);
  abm::client::RegisterEventHandler();
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_10031045C(v17);
  if (object)
  {
    dispatch_release(object);
  }
}

void sub_10030FDC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, dispatch_object_t object)
{
  sub_10031045C(v22 + 40);
  if (object)
  {
    dispatch_release(object);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  _Unwind_Resume(a1);
}

void sub_10030FE14(uint64_t a1, xpc_object_t object, NSObject *a3)
{
  if (object)
  {
    v5 = object;
    xpc_retain(object);
    if (!a3)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = xpc_null_create();
    if (!a3)
    {
LABEL_4:
      sub_1003103C4(v6, a1 + 40);
      v7 = v5;
      if (v5)
      {
        xpc_retain(v5);
      }

      else
      {
        v7 = xpc_null_create();
      }

      objecta = a3;
      if (a3)
      {
        dispatch_retain(a3);
        group = a3;
        dispatch_retain(a3);
        if (group)
        {
          dispatch_group_enter(group);
        }
      }

      else
      {
        group = 0;
      }

      operator new();
    }
  }

  dispatch_retain(a3);
  goto LABEL_4;
}

void sub_10030FFB8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_100310004(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  return sub_1003103C4(a1 + 40, a2 + 40);
}

void sub_100310044(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    dispatch_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10031005C(uint64_t a1)
{
  sub_10031045C(a1 + 40);
  v2 = *(a1 + 32);
  if (v2)
  {

    dispatch_release(v2);
  }
}

BOOL sub_1003100A8(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v4 = *(a1 + 48);
  v9 = *(a1 + 40);
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&v7, a2);
  abm::client::PerformCommand();
  v5 = v11;
  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  return v5 == 0;
}

void sub_100310144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_100310174(void *a1)
{
  *a1 = off_101E40B68;
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));

  AppleBasebandManagerClientInterface::~AppleBasebandManagerClientInterface(a1);
}

void sub_1003101F0(void *a1)
{
  *a1 = off_101E40B68;
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));
  AppleBasebandManagerClientInterface::~AppleBasebandManagerClientInterface(a1);

  operator delete();
}

void sub_100310300(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10176B218(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10031031C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100310354(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100310384(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003103C4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10031045C(uint64_t a1)
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

uint64_t *sub_1003104DC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 48);
    if (v2)
    {
      dispatch_group_leave(v2);
      v3 = *(v1 + 48);
      if (v3)
      {
        dispatch_release(v3);
      }
    }

    v4 = *(v1 + 40);
    if (v4)
    {
      dispatch_release(v4);
    }

    xpc_release(*(v1 + 32));
    *(v1 + 32) = 0;
    sub_10031045C(v1);
    operator delete();
  }

  return a1;
}

uint64_t *sub_10031055C(void *a1)
{
  v6 = a1;
  v2 = a1[4];
  v8 = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    v8 = xpc_null_create();
  }

  v3 = a1[5];
  object = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v4 = a1[3];
  if (!v4)
  {
    sub_100022DB4();
  }

  (*(*v4 + 48))(v4, &v8, &object);
  if (object)
  {
    dispatch_release(object);
  }

  xpc_release(v8);
  return sub_1003104DC(&v6);
}