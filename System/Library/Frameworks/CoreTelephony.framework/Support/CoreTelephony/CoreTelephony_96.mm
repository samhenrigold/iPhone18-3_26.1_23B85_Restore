uint64_t *sub_10062E828(uint64_t a1, int *a2, uint64_t a3)
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
      v6 = *(v3 + 28);
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

void sub_10062E9E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10062EA98(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6BD60;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10062EAD0(void *a1, xpc_object_t *a2)
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

  sub_10011E228(v3, a2);
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

uint64_t sub_10062EBA8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10062EBF4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E6BDE0;
  v5[1] = v3;
  v5[3] = v5;
  sub_10062EE60(v5, a1);
  sub_100625D94(v5);
  return a1;
}

uint64_t sub_10062ECF8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6BDE0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10062ED2C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10062ED78(uint64_t *a1, rest *a2)
{
  v5 = 0;
  rest::write_rest_value(a2, a2);
  sub_10000501C(&__p, "/cc/props/rats_2g_restriction");
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

void sub_10062EE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void *sub_10062EE60(void *result, void *a2)
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

void sub_10062F0C0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_10062F0CC(void *a1, uint64_t a2)
{
  v3 = a1[5];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[4])
      {
        sub_100135ED0(a1 + 6, a2);
      }

      sub_100004A34(v6);
    }
  }
}

void *sub_10062F158(void *a1, void *a2)
{
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[6] = result;
  return result;
}

void sub_10062F1A4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_10062F1F8(uint64_t **a1)
{
  v1 = *a1;
  v13 = a1;
  v14 = v1;
  v3 = *v1;
  v2 = v1[1];
  v15 = *v1;
  v16 = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    v2 = xpc_null_create();
    v16 = v2;
  }

  v4 = v1[2];
  v17 = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v4);
  }

  ServiceMap = Registry::getServiceMap(*(v3 + 56));
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
  v22[0] = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, v22);
  if (v11 && (v12 = v11[4]) != 0)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v6);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
  }

  else
  {
    std::mutex::unlock(v6);
  }

  v18 = v3;
  v19 = v3;
  object = v2;
  group = v4;
  v16 = xpc_null_create();
  v17 = 0;
  v22[3] = 0;
  operator new();
}

void sub_10062F438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10062F4AC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      dispatch_group_leave(v2);
      v3 = *(v1 + 16);
      if (v3)
      {
        dispatch_release(v3);
      }
    }

    xpc_release(*(v1 + 8));
    *(v1 + 8) = 0;
    operator delete();
  }

  return a1;
}

uint64_t sub_10062F51C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 16);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

uint64_t sub_10062F568(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 24);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  return a1;
}

uint64_t sub_10062F5B4(uint64_t a1)
{
  *a1 = off_101E6BEA0;
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  return a1;
}

void sub_10062F61C(uint64_t a1)
{
  *a1 = off_101E6BEA0;
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;

  operator delete();
}

void sub_10062F744(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6BEA0;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    *(a2 + 24) = xpc_null_create();
  }

  v5 = *(a1 + 32);
  *(a2 + 32) = v5;
  if (v5)
  {
    dispatch_retain(v5);
    v6 = *(a2 + 32);
    if (v6)
    {

      dispatch_group_enter(v6);
    }
  }
}

void sub_10062F7E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
}

void sub_10062F828(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  xpc_release(*(a1 + 24));

  operator delete(a1);
}

void sub_10062F880(void *a1, char *a2)
{
  v3 = a1[1];
  a1[3] = xpc_null_create();
  a1[4] = 0;
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (v3 + 8));
  operator new();
}

uint64_t sub_10062F9A8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E6BF10))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10062F9F4(unsigned __int8 **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v4 = *(v1 + 1);
  v3 = *(v1 + 2);
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  v5.fObj.fObj = &object;
  MaxDataRateManager::handleMigration_sync(v4, v2, v5);
  xpc_release(object);
  sub_10062FA98(&v8);
  return sub_1000049E0(&v7);
}

void sub_10062FA6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  sub_10062FA98(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_10062FA98(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      dispatch_group_leave(v2);
      v3 = *(v1 + 24);
      if (v3)
      {
        dispatch_release(v3);
      }
    }

    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    operator delete();
  }

  return a1;
}

uint64_t sub_10062FB08(uint64_t a1)
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

void sub_10062FB88(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  Registry::createRestModuleOneTimeUseConnection(&v11, *(v1 + 56));
  ctu::RestModule::connect();
  if (v12)
  {
    sub_100004A34(v12);
  }

  Registry::getTelephonyCapabilities(buf, *(v1 + 56));
  v3 = (*(**buf + 32))(*buf);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v3)
  {
    subscriber::makeSimSlotRange();
    v4 = *buf;
    v5 = v9;
    if (*buf != v9)
    {
      v6 = v10;
      do
      {
        if (v6(LODWORD(v4->__vftable)))
        {
          break;
        }

        v4 = (v4 + 4);
      }

      while (v4 != v5);
      v7 = v9;
      while (v4 != v7)
      {
        MaxDataRateManager::migrateCSIKeysToPersonalWallet_sync(v1, LODWORD(v4->__vftable));
        do
        {
          v4 = (v4 + 4);
        }

        while (v4 != v5 && (v6(LODWORD(v4->__vftable)) & 1) == 0);
      }
    }
  }

  MaxDataRateManager::retrieveSavedSwitchSupport_sync(v1, 3);
  MaxDataRateManager::evaluateUserPreference_sync(v1, 3);
  operator delete();
}

void sub_10062FD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  operator delete();
}

uint64_t sub_10062FD74(uint64_t a1, uint64_t a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t sub_10062FDD0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t sub_10062FE2C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_10062FE80(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t *sub_10062FED4(uint64_t *a1)
{
  v1 = *a1;
  v19 = a1;
  v20 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Resetting Enable 3G/LTE switch preferences as network settings have been reset", buf, 2u);
  }

  v4 = sub_100A7F520();
  v5 = *(*(v2 + 568) + 136);
  if ((v4 & 1) == 0)
  {
    if (v5 == 2)
    {
      v7 = 1;
      goto LABEL_13;
    }

    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177616C();
    }

    goto LABEL_11;
  }

  if (v5 != 3)
  {
    v6 = *(v2 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Legacy RATs are enabled when in lockdown, resetting the preference", buf, 2u);
    }

LABEL_11:
    v25 = 0;
    MaxDataRateManager::setUserPreferenceEnableLegacyRats_sync(v2, v4 ^ 1u, 1, &v25);
  }

  v7 = 0;
LABEL_13:
  *buf = 1;
  memset(v24, 0, sizeof(v24));
  *&buf[8] = v2 + 312;
  LOBYTE(v24[0]) = *(v2 + 344);
  sub_1000517E4(v24 + 8, v2 + 352);
  LOBYTE(v24[0]) = *(*(v2 + 568) + 16) == 2;
  v22 = 0;
  MaxDataRateManager::setUserPreferenceEnableRegulatedRatsForAllSlots_sync(v2, 0, 1, &v22);
  v8 = *(v2 + 544);
  if (v8 != (v2 + 552))
  {
    do
    {
      v9 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(v8 + 8));
      v10 = v9;
      v11 = v8[5];
      if (v7 && v11[184] != 2)
      {
        v12 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I 3G was disabled, resetting the preference", v21, 2u);
        }

        MaxDataRateManager::setMaxDataRateMandatory_sync(v2, *(v8 + 8), 2, 1);
        v11 = v8[5];
      }

      if (v11[154] == 3)
      {
        v13 = *v10;
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
        {
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I LTE was disabled, resetting the preference", v21, 2u);
        }

        MaxDataRateManager::setMaxDataRateMandatory_sync(v2, *(v8 + 8), 3, 1);
        v11 = v8[5];
      }

      if (v11[124] == 3)
      {
        v14 = *v10;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I 5G was disabled, resetting the preference", v21, 2u);
        }

        MaxDataRateManager::setMaxDataRateMandatory_sync(v2, *(v8 + 8), 4, 1);
      }

      v15 = v8[1];
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
          v16 = v8[2];
          v17 = *v16 == v8;
          v8 = v16;
        }

        while (!v17);
      }

      v8 = v16;
    }

    while (v16 != (v2 + 552));
  }

  sub_10062A978(buf);
  sub_1000FF844(&v20);
  return sub_1000049E0(&v19);
}

void sub_100630224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_10062A978(va);
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100630254(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1006302D4(uint64_t *a1)
{
  v1 = *a1;
  v32 = a1;
  v33 = v1;
  v2 = *v1;
  v3 = (*(**(*v1 + 48) + 16))(*(*v1 + 48), *(v1 + 8));
  ServiceMap = Registry::getServiceMap(*(v2 + 56));
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
  __p = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &__p);
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
        goto LABEL_26;
      }

      goto LABEL_10;
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
    goto LABEL_26;
  }

LABEL_10:
  if ((*(*v12 + 16))(v12))
  {
    goto LABEL_26;
  }

  v14 = Registry::getServiceMap(*(v2 + 56));
  v15 = v14;
  if (v16 < 0)
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
  __p = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, &__p);
  if (!v20)
  {
    std::mutex::unlock(v15);
    goto LABEL_26;
  }

  v22 = v20[3];
  v21 = v20[4];
  if (!v21)
  {
    std::mutex::unlock(v15);
    if (v22)
    {
      goto LABEL_20;
    }

LABEL_26:
    if ((v13 & 1) == 0)
    {
      sub_100004A34(v11);
    }

    v38 = 0;
    v39 = 0;
    __p = 0;
    MaxDataRateManager::copySupportedSetMaxDataRates_sync(v2, *(v1 + 8), &__p);
    v23 = *(v1 + 8);
    if ((MaxDataRateManager::isVoiceOverCSSupported_sync(v2, *(v1 + 8)) & 1) == 0 && MaxDataRateManager::getMaxDataRate_sync(v2, v23) - 1 >= 2)
    {
      v25 = __p;
      v24 = v38;
      v26 = sub_100630884(__p, v38, sub_100625A88);
      if (v26 != v38)
      {
        v38 = v26;
      }

      if (v24 - v25 != v26 - __p)
      {
        v27 = *v3;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#N 2G/3G data rates removed due to no CS voice support", buf, 2u);
        }
      }
    }

    *buf = 0;
    v35 = 0;
    v36 = 0;
    sub_100630910(buf, __p, v38, (v38 - __p) >> 2);
    v28 = *(v1 + 40);
    if (!v28)
    {
      sub_100022DB4();
    }

    (*(*v28 + 48))(v28, buf);
    if (*buf)
    {
      v35 = *buf;
      operator delete(*buf);
    }

    if (__p)
    {
      v38 = __p;
      operator delete(__p);
    }

    goto LABEL_40;
  }

  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v15);
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v21);
  if (!v22)
  {
LABEL_25:
    sub_100004A34(v21);
    goto LABEL_26;
  }

LABEL_20:
  *buf = 0;
  v35 = 0;
  (*(*v22 + 8))(buf, v22, *(v1 + 8));
  if (!*buf || ((*(**buf + 72))(*buf, 2) & 1) != 0)
  {
    if (v35)
    {
      sub_100004A34(v35);
    }

    if (!v21)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v30 = *v3;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#N Current operator does not allow switching data rate", &__p, 2u);
  }

  __p = 0;
  v38 = 0;
  v39 = 0;
  v31 = *(v1 + 40);
  if (!v31)
  {
    sub_100022DB4();
  }

  (*(*v31 + 48))(v31, &__p);
  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }

  if (v35)
  {
    sub_100004A34(v35);
  }

  if (v21)
  {
    sub_100004A34(v21);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

LABEL_40:
  sub_100630834(&v33);
  return sub_1000049E0(&v32);
}

void sub_100630770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  if (a12)
  {
    sub_100004A34(a12);
    if (!v17)
    {
LABEL_5:
      if (v18)
      {
LABEL_10:
        sub_100630834(&a10);
        sub_1000049E0(&a9);
        _Unwind_Resume(a1);
      }

LABEL_9:
      sub_100004A34(v16);
      goto LABEL_10;
    }
  }

  else if (!v17)
  {
    goto LABEL_5;
  }

  sub_100004A34(v17);
  if (v18)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t *sub_100630834(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1006266CC(v1 + 16);
    operator delete();
  }

  return a1;
}

unsigned int *sub_100630884(unsigned int *a1, unsigned int *a2, uint64_t (*a3)(void))
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while ((a3(*v3) & 1) == 0)
    {
      if (++v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 1; i != a2; ++i)
      {
        if ((a3(*i) & 1) == 0)
        {
          *v3++ = *i;
        }
      }
    }
  }

  return v3;
}

uint64_t *sub_100630910(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100034AE8(result, a4);
  }

  return result;
}

void sub_100630970(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10063098C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_1006309D8(void *a1, int *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t sub_100630C08(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100630C88(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  MaxDataRate_sync = MaxDataRateManager::getMaxDataRate_sync(*v1, *(v1 + 8));
  sub_100630D48(v1 + 16, MaxDataRate_sync);
  sub_100630CF8(&v5);
  return sub_1000049E0(&v4);
}

void sub_100630CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100630CF8(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100630CF8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100626F50(v1 + 16);
    operator delete();
  }

  return a1;
}

uint64_t sub_100630D48(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_100630D9C(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100630E1C(uint64_t *a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *v1;
  v3 = (*(**(*v1 + 48) + 16))(*(*v1 + 48), *(v1 + 8));
  if (MaxDataRateManager::isMaxDataRateValid_sync(v2, *(v1 + 8), *(v1 + 12)))
  {
    MaxDataRate_sync = MaxDataRateManager::getMaxDataRate_sync(v2, *(v1 + 8));
    v5 = *(v1 + 12);
    if (MaxDataRate_sync == v5)
    {
      v6 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v14 = asString();
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N Provided data rate %s is already one the device has been set to, bailing out", buf, 0xCu);
      }

      if (*(v1 + 40))
      {
        v7 = 0;
LABEL_15:
        v9 = std::generic_category();
        sub_100631050(v1 + 16, v7, v9);
      }
    }

    else
    {
      if (MaxDataRateManager::setMaxDataRateMandatory_sync(v2, *(v1 + 8), v5, 1))
      {
        v7 = 0;
      }

      else
      {
        v7 = 35;
      }

      if (*(v1 + 40))
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v8 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = asString();
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N Provided data rate %s is not valid", buf, 0xCu);
    }

    if (*(v1 + 40))
    {
      v7 = 22;
      goto LABEL_15;
    }
  }

  sub_100631000(&v12);
  return sub_1000049E0(&v11);
}

void sub_100630FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100631000(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100631000(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1002F5210(v1 + 16);
    operator delete();
  }

  return a1;
}

uint64_t sub_100631050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, v5);
}

uint64_t *sub_1006310A4(const void ***a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  (*(*v1 + 2))(*v1, *(v1 + 8));
  sub_100631110(&v4);
  return sub_1000049E0(&v3);
}

void sub_1006310F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100631110(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

const void ***sub_100631110(const void ***a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete();
  }

  return a1;
}

__n128 sub_1006311E4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6BF30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 23) = 0;
  *(a2 + 21) = 0;
  return result;
}

void sub_10063121C(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(*(a1 + 8) + 56));
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
  group = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &group);
  if (!v8)
  {
    v10 = 0;
    goto LABEL_8;
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
LABEL_8:
    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  v11 = 0;
LABEL_9:
  (*(*v10 + 344))(v10, *(a1 + 16), *(a1 + 20));
  (*(*v10 + 352))(v10, *(a1 + 16), *(a1 + 20));
  v12 = *(a1 + 16);
  v13 = *(a1 + 20);
  group = 0;
  (*(*v10 + 360))(v10, v12, v13, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_1006313C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100631400(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100631468(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1006314E8(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v7 = 0;
  v8 = 0;
  MaxDataRateManager::getModel_sync(v2, *(v1 + 8), &v7);
  v3 = v7;
  if (v7)
  {
    sub_1006315E8(v1 + 16, *(v7 + 496));
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  if (!v3)
  {
    sub_1006315E8(v1 + 16, 0);
  }

  sub_100631598(&v6);
  return sub_1000049E0(&v5);
}

void sub_100631568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10)
{
  sub_100631598(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100631598(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10010B9AC(v1 + 16);
    operator delete();
  }

  return a1;
}

uint64_t sub_1006315E8(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t *sub_10063163C(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v7 = 0;
  v8 = 0;
  MaxDataRateManager::getModel_sync(v2, *(v1 + 8), &v7);
  v3 = v7;
  if (v7)
  {
    sub_1006315E8(v1 + 16, *(v7 + 616));
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  if (!v3)
  {
    sub_1006315E8(v1 + 16, 0);
  }

  sub_100631598(&v6);
  return sub_1000049E0(&v5);
}

void sub_1006316BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100631598(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1006316EC(int **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  if (*(*v1 + 584))
  {
    v3 = 2;
LABEL_3:
    sub_1006315E8((v1 + 4), v3);
    goto LABEL_4;
  }

  v5 = *(v2 + 568);
  if (*(v5 + 16) == 2 && *(v5 + 136) != 2)
  {
    v3 = 3;
    goto LABEL_3;
  }

  v9 = 0;
  v10 = 0;
  MaxDataRateManager::getModel_sync(v2, v1[2], &v9);
  v6 = v9;
  if (v9)
  {
    sub_1006315E8((v1 + 4), *(v9 + 736));
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  if (!v6)
  {
    v3 = 0;
    goto LABEL_3;
  }

LABEL_4:
  sub_100631598(&v8);
  return sub_1000049E0(&v7);
}

void sub_1006317A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100631598(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1006317D0(int **a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  if (*(*v1 + 584))
  {
    v3 = 2;
  }

  else
  {
    v4 = *(v2 + 568);
    if (*(v4 + 16) == 2)
    {
      v3 = *(v4 + 136);
    }

    else if (MaxDataRateManager::areRegulatedRatsAllowed_sync(v2, v1[2]))
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  sub_1006315E8((v1 + 4), v3);
  sub_100631598(&v7);
  return sub_1000049E0(&v6);
}

void sub_100631854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100631598(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100631870(uint64_t *a1)
{
  v3 = a1;
  v4 = *a1;
  if (*(*v4 + 584))
  {
    v1 = 2;
  }

  else
  {
    v1 = *(*(*v4 + 568) + 136);
  }

  sub_1006315E8(v4 + 8, v1);
  sub_1006318EC(&v4);
  return sub_1000049E0(&v3);
}

void sub_1006318D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1006318EC(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1006318EC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10010B9AC(v1 + 8);
    operator delete();
  }

  return a1;
}

uint64_t *sub_10063193C(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  if (*(*(*v1 + 568) + 16) == 2)
  {
    v3 = *(v1 + 8);
    v9 = 0;
    MaxDataRateManager::setUserPreferenceEnableLegacyRats_sync(v2, v3, 1, &v9);
    if (*(v1 + 40))
    {
      v4 = 0;
LABEL_8:
      v5 = std::generic_category();
      sub_100631050(v1 + 16, v4, v5);
    }
  }

  else
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017761A0();
    }

    if (*(v1 + 40))
    {
      v4 = 1;
      goto LABEL_8;
    }
  }

  sub_100631A0C(&v8);
  return sub_1000049E0(&v7);
}

void sub_1006319F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  sub_100631A0C(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100631A0C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1002F5210(v1 + 16);
    operator delete();
  }

  return a1;
}

uint64_t sub_100631A5C(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100631ADC(MaxDataRateManager ***a1)
{
  v1 = *a1;
  v18 = a1;
  v19 = v1;
  v2 = *v1;
  v3 = *(*v1 + 71);
  v4 = *(v3 + 16) != 2 || *(v3 + 136) == 2;
  if ((v4 & MaxDataRateManager::areRegulatedRatsAllowedForAllSlots_sync(*v1)) == 1)
  {
    if (v1[5])
    {
      sub_100624328((v1 + 2), 0);
    }
  }

  else
  {
    v5 = dispatch_group_create();
    v6 = v1[1];
    if (v6 < 1)
    {
      v8 = *(v2 + 584);
      if (v8)
      {
        *(v2 + 584) = 0;
        (*(*v8 + 8))(v8);
        v9 = *(v2 + 568);
        if (*(v9 + 16) == 2 && *(v9 + 136) != 2)
        {
          *&buf = 0;
          MaxDataRateManager::setUserPreferenceEnableLegacyRats_sync(v2, 0, 2, &buf);
        }

        else
        {
          *&buf = 0;
          MaxDataRateManager::setUserPreferenceEnableRegulatedRatsForAllSlots_sync(v2, 0x100u, 2, &buf);
        }
      }
    }

    else
    {
      v7 = *(v2 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Temporary Legacy RATs enablement requested for %lld seconds", &buf, 0xCu);
      }

      if (v4)
      {
        v24 = v5;
        if (v5)
        {
          dispatch_retain(v5);
          dispatch_group_enter(v5);
        }

        MaxDataRateManager::setUserPreferenceEnableRegulatedRatsForAllSlots_sync(v2, 0x101u, 2, &v24);
      }

      else
      {
        v24 = v5;
        if (v5)
        {
          dispatch_retain(v5);
          dispatch_group_enter(v5);
        }

        MaxDataRateManager::setUserPreferenceEnableLegacyRats_sync(v2, 1, 2, &v24);
      }

      if (v5)
      {
        dispatch_group_leave(v5);
        dispatch_release(v5);
      }

      sub_100004AA0(&buf, (v2 + 8));
      v10 = buf;
      if (*(&buf + 1))
      {
        atomic_fetch_add_explicit((*(&buf + 1) + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(*(&v10 + 1));
      }

      Registry::getTimerService(&v26, *(v2 + 56));
      v11 = v26;
      sub_10000501C(__p, "Legacy RATs temporary enablement");
      v12 = v1[1];
      v13 = *(v2 + 24);
      object = v13;
      if (v13)
      {
        dispatch_retain(v13);
      }

      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 1174405120;
      v29 = sub_100632058;
      v30 = &unk_101E6C000;
      v31 = v2;
      v32 = v10;
      if (*(&v10 + 1))
      {
        atomic_fetch_add_explicit((*(&v10 + 1) + 16), 1uLL, memory_order_relaxed);
      }

      v33 = v2;
      aBlock = _Block_copy(&buf);
      sub_100D23364(v11, __p, 2, 1000000 * v12, &object, &aBlock);
      v14 = v25;
      v25 = 0;
      v15 = *(v2 + 584);
      *(v2 + 584) = v14;
      if (v15)
      {
        (*(*v15 + 8))(v15);
        v16 = v25;
        v25 = 0;
        if (v16)
        {
          (*(*v16 + 8))(v16);
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

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v27)
      {
        sub_100004A34(v27);
      }

      if (*(&v32 + 1))
      {
        std::__shared_weak_count::__release_weak(*(&v32 + 1));
      }

      if (*(&v10 + 1))
      {
        std::__shared_weak_count::__release_weak(*(&v10 + 1));
      }
    }

    if (v1[5])
    {
      sub_10063223C(&v26, (v1 + 2));
      operator new();
    }

    if (v5)
    {
      dispatch_release(v5);
    }
  }

  sub_100632008(&v19);
  return sub_1000049E0(&v18);
}

void sub_100631F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *aBlock, dispatch_object_t object, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34)
{
  if (v32)
  {
    dispatch_release(v32);
  }

  sub_100632008(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100632008(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100626FD0(v1 + 16);
    operator delete();
  }

  return a1;
}

void sub_100632058(void *a1)
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
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v10[0]) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Temporary Legacy RATs enablement timer fired", v10, 2u);
        }

        v7 = *(v3 + 584);
        *(v3 + 584) = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        v8 = a1[7];
        v9 = *(v8 + 568);
        if (*(v9 + 16) == 2 && *(v9 + 136) != 2)
        {
          v10[0] = 0;
          MaxDataRateManager::setUserPreferenceEnableLegacyRats_sync(v8, 0, 2, v10);
        }

        else
        {
          v10[0] = 0;
          MaxDataRateManager::setUserPreferenceEnableRegulatedRatsForAllSlots_sync(v8, 0x100u, 2, v10);
        }
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_10063217C(uint64_t result, uint64_t a2)
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

void sub_100632198(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t *sub_1006321A8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100626FD0(v2);
    operator delete();
  }

  return a1;
}

uint64_t *sub_1006321F0(uint64_t a1)
{
  v2 = a1;
  sub_100624328(a1, 1);
  return sub_1006321A8(&v2);
}

void sub_100632228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1006321A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10063223C(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1006322E4(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  v8 = 0;
  v9 = 0;
  MaxDataRateManager::getModel_sync(v2, *(v1 + 8), &v8);
  if (v8)
  {
    v3 = *(v8 + 856);
  }

  else
  {
    v3 = 0;
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  if (*(v2 + 584))
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  sub_1006315E8(v1 + 16, v4);
  sub_100631598(&v7);
  return sub_1000049E0(&v6);
}

void sub_100632378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100631598(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100632394(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  if (MaxDataRateManager::getRegulatedRatsSwitchSupport_sync(*v1, *(v1 + 8)))
  {
    v3 = *(v1 + 8);
    v4 = *(v1 + 12);
    v10 = 0;
    MaxDataRateManager::setUserPreferenceEnableRegulatedRats_sync(v2, v3, v4 | 0x100, 1, &v10);
    if (*(v1 + 40))
    {
      v5 = 0;
LABEL_8:
      v6 = std::generic_category();
      sub_100631050(v1 + 16, v5, v6);
    }
  }

  else
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017761D4();
    }

    if (*(v1 + 40))
    {
      v5 = 1;
      goto LABEL_8;
    }
  }

  sub_100632470(&v9);
  return sub_1000049E0(&v8);
}

void sub_100632454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  sub_100632470(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100632470(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1002F5210(v1 + 16);
    operator delete();
  }

  return a1;
}

uint64_t sub_1006324C0(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100632540(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = MaxDataRateManager::carrierAndDeviceSupportLTE_sync(*v1, *(v1 + 8));
  sub_100632604(v1 + 16, v2);
  sub_1006325B4(&v5);
  return sub_1000049E0(&v4);
}

void sub_100632598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1006325B4(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1006325B4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100627050(v1 + 16);
    operator delete();
  }

  return a1;
}

uint64_t sub_100632604(uint64_t a1, __int16 a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void *sub_100632658(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1006326B0(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1006326B0(void *result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100632738(v5, (v5 + 8), v4 + 7, v4 + 7);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_100632738(uint64_t **a1, uint64_t *a2, int *a3, void *a4)
{
  v6 = 0;
  v7 = 0;
  v4 = *sub_1000504CC(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

double sub_1006327F4(uint64_t a1, int a2, char a3, char a4, char a5, char a6)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 5) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = a5;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  *(a1 + 169) = a6;
  *(a1 + 170) = 0;
  return result;
}

void sub_1006329BC(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_100632B14(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100632C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, std::__shared_weak_count *a11, dispatch_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_100632CF8()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100632D20(uint64_t result)
{
  *result = off_101E6C140;
  *(result + 8) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_100632D44(void ***a1)
{
  *a1 = off_101E6C140;
  sub_100140928(a1 + 1, 0);

  PB::Base::~Base(a1);
}

void sub_100632D9C(void ***a1)
{
  *a1 = off_101E6C140;
  sub_100140928(a1 + 1, 0);
  PB::Base::~Base(a1);

  operator delete();
}

uint64_t sub_100632E08(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    PB::TextFormatter::format(this, "error", *(a1 + 16));
    v6 = *(a1 + 24);
  }

  if ((v6 & 2) != 0)
  {
    PB::TextFormatter::format(this, "result", *(a1 + 20));
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_100632E9C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_55;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(a1 + 24) |= 1u;
        v28 = *(this + 1);
        v27 = *(this + 2);
        v29 = *this;
        if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v27)
        {
          v36 = 0;
          v37 = 0;
          v32 = 0;
          v17 = v27 >= v28;
          v38 = v27 - v28;
          if (!v17)
          {
            v38 = 0;
          }

          v39 = (v29 + v28);
          v40 = v28 + 1;
          while (1)
          {
            if (!v38)
            {
              LODWORD(v32) = 0;
              *(this + 24) = 1;
              goto LABEL_50;
            }

            v41 = *v39;
            *(this + 1) = v40;
            v32 |= (v41 & 0x7F) << v36;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            --v38;
            ++v39;
            ++v40;
            v14 = v37++ > 8;
            if (v14)
            {
LABEL_46:
              LODWORD(v32) = 0;
              goto LABEL_50;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v32) = 0;
          }
        }

        else
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = (v29 + v28);
          v34 = v28 + 1;
          while (1)
          {
            *(this + 1) = v34;
            v35 = *v33++;
            v32 |= (v35 & 0x7F) << v30;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            ++v34;
            v14 = v31++ > 8;
            if (v14)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_50:
        *(a1 + 16) = v32;
      }

      else if (v22 == 2)
      {
        *(a1 + 24) |= 2u;
        v23 = *(this + 1);
        if (v23 >= *(this + 2))
        {
          v26 = 0;
          *(this + 24) = 1;
        }

        else
        {
          v24 = v23 + 1;
          v25 = *(*this + v23);
          *(this + 1) = v24;
          v26 = v25 != 0;
        }

        *(a1 + 20) = v26;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (!PB::Reader::skip(this, v22, v10 & 7, 0))
        {
          v43 = 0;
          return v43 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_55:
  v43 = v4 ^ 1;
  return v43 & 1;
}

uint64_t sub_1006331A4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  v5 = *(v3 + 24);
  if ((v5 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 20), 2u);
    v5 = *(v3 + 24);
  }

  if (v5)
  {
    v6 = *(v3 + 16);

    return PB::Writer::writeVarInt(this, v6, 3u);
  }

  return result;
}

double sub_100633230(uint64_t a1)
{
  *a1 = &off_101E6C258;
  *(a1 + 72) = 0;
  *(a1 + 84) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

void sub_10063326C(PB::Base *this)
{
  *this = &off_101E6C258;
  v4 = *(this + 7);
  v2 = (this + 56);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100140988(v2, v3);
  }

  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5)
  {
    sub_100140988(this + 48, v5);
  }

  v6 = *(this + 5);
  *(this + 5) = 0;
  if (v6)
  {
    sub_100140988(this + 40, v6);
  }

  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  PB::Base::~Base(this);
}

void sub_100633338(PB::Base *a1)
{
  sub_10063326C(a1);

  operator delete();
}

uint64_t sub_100633370(uint64_t a1, uint64_t a2)
{
  *a1 = &off_101E6C258;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 84) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  std::string::operator=((a1 + 8), (a2 + 8));
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 84);
  if (v4)
  {
    v5 = *(a2 + 72);
    *(a1 + 84) |= 1u;
    *(a1 + 72) = v5;
    v4 = *(a2 + 84);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(a2 + 76);
    *(a1 + 84) |= 2u;
    *(a1 + 76) = v6;
  }

  if (*(a2 + 48))
  {
    operator new();
  }

  if (*(a2 + 56))
  {
    operator new();
  }

  if (*(a2 + 32))
  {
    operator new();
  }

  if ((*(a2 + 84) & 4) != 0)
  {
    v7 = *(a2 + 80);
    *(a1 + 84) |= 4u;
    *(a1 + 80) = v7;
  }

  if (*(a2 + 40))
  {
    operator new();
  }

  return a1;
}

uint64_t sub_1006335DC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  PB::TextFormatter::format();
  if ((*(a1 + 84) & 4) != 0)
  {
    PB::TextFormatter::format(this, "isPresentInResponse", *(a1 + 80));
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "manageAccountInfo");
  }

  if (*(a1 + 40))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 48))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 56))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 84))
  {
    PB::TextFormatter::format(this, "status", *(a1 + 72));
  }

  PB::TextFormatter::format(this, "timestamp", *(a1 + 64));
  if ((*(a1 + 84) & 2) != 0)
  {
    PB::TextFormatter::format(this, "type", *(a1 + 76));
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_10063371C(uint64_t a1, PB::Reader *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = *(this + 24);
  if (v3 < v2 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v16 = 0;
        v17 = 0;
        v10 = 0;
        v18 = v2 - v3;
        if (v2 < v3)
        {
          v18 = 0;
        }

        v19 = (v7 + v3);
        v20 = v3 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_91;
          }

          v13 = v20;
          v21 = *v19;
          *(this + 1) = v13;
          v10 |= (v21 & 0x7F) << v16;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          --v18;
          ++v19;
          v20 = v13 + 1;
          v15 = v17++ > 8;
          if (v15)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          v13 = v12;
          *(this + 1) = v12;
          v14 = *v11++;
          v10 |= (v14 & 0x7F) << v8;
          if ((v14 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v15 = v9++ > 8;
          if (v15)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 4)
      {
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *(a1 + 84) |= 1u;
            v33 = *(this + 1);
            v32 = *(this + 2);
            v34 = *this;
            if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
            {
              v52 = 0;
              v53 = 0;
              v37 = 0;
              v47 = v32 >= v33;
              v54 = v32 - v33;
              if (!v47)
              {
                v54 = 0;
              }

              v55 = (v34 + v33);
              v56 = v33 + 1;
              while (1)
              {
                if (!v54)
                {
                  LODWORD(v37) = 0;
                  *(this + 24) = 1;
                  goto LABEL_89;
                }

                v57 = *v55;
                *(this + 1) = v56;
                v37 |= (v57 & 0x7F) << v52;
                if ((v57 & 0x80) == 0)
                {
                  break;
                }

                v52 += 7;
                --v54;
                ++v55;
                ++v56;
                v15 = v53++ > 8;
                if (v15)
                {
LABEL_79:
                  LODWORD(v37) = 0;
                  goto LABEL_89;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v37) = 0;
              }
            }

            else
            {
              v35 = 0;
              v36 = 0;
              v37 = 0;
              v38 = (v34 + v33);
              v39 = v33 + 1;
              while (1)
              {
                *(this + 1) = v39;
                v40 = *v38++;
                v37 |= (v40 & 0x7F) << v35;
                if ((v40 & 0x80) == 0)
                {
                  break;
                }

                v35 += 7;
                ++v39;
                v15 = v36++ > 8;
                if (v15)
                {
                  goto LABEL_79;
                }
              }
            }

LABEL_89:
            *(a1 + 72) = v37;
            goto LABEL_56;
          }

          if (v22 == 4)
          {
            *(a1 + 84) |= 2u;
            v24 = *(this + 1);
            v23 = *(this + 2);
            v25 = *this;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
            {
              v45 = 0;
              v46 = 0;
              v28 = 0;
              v47 = v23 >= v24;
              v48 = v23 - v24;
              if (!v47)
              {
                v48 = 0;
              }

              v49 = (v25 + v24);
              v50 = v24 + 1;
              while (1)
              {
                if (!v48)
                {
                  LODWORD(v28) = 0;
                  *(this + 24) = 1;
                  goto LABEL_86;
                }

                v51 = *v49;
                *(this + 1) = v50;
                v28 |= (v51 & 0x7F) << v45;
                if ((v51 & 0x80) == 0)
                {
                  break;
                }

                v45 += 7;
                --v48;
                ++v49;
                ++v50;
                v15 = v46++ > 8;
                if (v15)
                {
LABEL_71:
                  LODWORD(v28) = 0;
                  goto LABEL_86;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v28) = 0;
              }
            }

            else
            {
              v26 = 0;
              v27 = 0;
              v28 = 0;
              v29 = (v25 + v24);
              v30 = v24 + 1;
              while (1)
              {
                *(this + 1) = v30;
                v31 = *v29++;
                v28 |= (v31 & 0x7F) << v26;
                if ((v31 & 0x80) == 0)
                {
                  break;
                }

                v26 += 7;
                ++v30;
                v15 = v27++ > 8;
                if (v15)
                {
                  goto LABEL_71;
                }
              }
            }

LABEL_86:
            *(a1 + 76) = v28;
            goto LABEL_56;
          }
        }

        else
        {
          if (v22 == 1)
          {
            PB::Reader::read();
            goto LABEL_56;
          }

          if (v22 == 2)
          {
            if (v13 > 0xFFFFFFFFFFFFFFF7 || v13 + 8 > v2)
            {
              *(this + 24) = 1;
            }

            else
            {
              *(a1 + 64) = *(v7 + v13);
              *(this + 1) += 8;
            }

            goto LABEL_56;
          }
        }
      }

      else if (v22 <= 6)
      {
        if (v22 == 5)
        {
          operator new();
        }

        if (v22 == 6)
        {
          operator new();
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            operator new();
          case 8:
            *(a1 + 84) |= 4u;
            v41 = *(this + 1);
            if (v41 >= *(this + 2))
            {
              v44 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v42 = v41 + 1;
              v43 = *(*this + v41);
              *(this + 1) = v42;
              v44 = v43 != 0;
            }

            *(a1 + 80) = v44;
            goto LABEL_56;
          case 9:
            operator new();
        }
      }

      if ((PB::Reader::skip(this, v22, v10 & 7, 0) & 1) == 0)
      {
        v59 = 0;
        return v59 & 1;
      }

LABEL_56:
      v3 = *(this + 1);
      v2 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_91:
  v59 = v4 ^ 1;
  return v59 & 1;
}

uint64_t sub_100633CF8(uint64_t a1, PB::Writer *a2)
{
  PB::Writer::write();
  result = PB::Writer::write(a2, *(a1 + 64), 2u);
  v5 = *(a1 + 84);
  if (v5)
  {
    result = PB::Writer::writeVarInt(a2, *(a1 + 72), 3u);
    v5 = *(a1 + 84);
  }

  if ((v5 & 2) != 0)
  {
    result = PB::Writer::writeVarInt(a2, *(a1 + 76), 4u);
  }

  if (*(a1 + 48))
  {
    result = PB::Writer::write();
  }

  if (*(a1 + 56))
  {
    result = PB::Writer::write();
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    result = PB::Writer::writeSubmessage(a2, v6, 7u);
  }

  if ((*(a1 + 84) & 4) != 0)
  {
    result = PB::Writer::write(a2, *(a1 + 80), 8u);
  }

  if (*(a1 + 40))
  {

    return PB::Writer::write();
  }

  return result;
}

void *sub_100633DEC(void *result)
{
  if (!result[4])
  {
    operator new();
  }

  return result;
}

const char *sub_100633EA4(int a1)
{
  if ((a1 + 1) > 3)
  {
    return "???";
  }

  else
  {
    return off_101E6C2D8[a1 + 1];
  }
}

_DWORD *sub_100633ECC(_DWORD *a1, int a2, __int128 *a3, int a4)
{
  *a1 = a2;
  v6 = a1 + 2;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v6, *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(v6 + 2) = *(a3 + 2);
    *v6 = v7;
  }

  a1[8] = a4;
  return a1;
}

BOOL sub_100633F20(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 31);
  if (v4 >= 0)
  {
    v5 = *(a1 + 31);
  }

  else
  {
    v5 = *(a1 + 16);
  }

  v6 = *(a2 + 31);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 16);
  }

  if (v5 == v6 && (v4 >= 0 ? (v8 = (a1 + 8)) : (v8 = *(a1 + 8)), v7 >= 0 ? (v9 = (a2 + 8)) : (v9 = *(a2 + 8)), !memcmp(v8, v9, v5)))
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  else
  {
    return 0;
  }
}

const char *sub_100633FEC(unsigned int *a1)
{
  if (*a1 == 2 || a1[8] != 2)
  {
    return asString();
  }

  else
  {
    return "WiFiCalling-only";
  }
}

char *sub_100634018@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[31] < 0)
  {
    return sub_100005F2C(a2, *(result + 1), *(result + 2));
  }

  *a2 = *(result + 8);
  *(a2 + 16) = *(result + 3);
  return result;
}

void sub_1006340B4(int *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v17 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v17 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v17 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v17 = v6;
LABEL_9:
  xpc_release(v5);
  object = xpc_int64_create(*a1);
  if (!object)
  {
    object = xpc_null_create();
  }

  v13 = &v17;
  v14 = "telephonyEnabled";
  sub_10000F688(&v13, &object, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(object);
  object = 0;
  if (*(a1 + 31) >= 0)
  {
    v7 = (a1 + 2);
  }

  else
  {
    v7 = *(a1 + 1);
  }

  v11 = xpc_string_create(v7);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  v13 = &v17;
  v14 = "reason";
  sub_10000F688(&v13, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  v9 = xpc_int64_create(a1[8]);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v13 = &v17;
  v14 = "wifiCallingEnabled";
  sub_10000F688(&v13, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
  v8 = v17;
  *a2 = v17;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v17);
}

void sub_1006342C8(uint64_t a1, void **a2)
{
  sub_10000501C(v19, "");
  LODWORD(__p) = 0;
  if (SHIBYTE(v20) < 0)
  {
    sub_100005F2C(&v16, *v19, *&v19[2]);
    v4 = __p;
  }

  else
  {
    v4 = 0;
    v16 = *v19;
    v17 = v20;
  }

  v5 = 0;
  v18 = 0;
  *a1 = v4;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
    v5 = v18;
  }

  *(a1 + 8) = v16;
  *(a1 + 24) = v17;
  HIBYTE(v17) = 0;
  LOBYTE(v16) = 0;
  *(a1 + 32) = v5;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(*v19);
  }

  v6 = *a2;
  object = v6;
  if (v6 && xpc_get_type(v6) == &_xpc_type_dictionary)
  {
    xpc_retain(v6);
    v7 = object;
  }

  else
  {
    v7 = xpc_null_create();
    object = v7;
  }

  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    __p = &object;
    *&v16 = "telephonyEnabled";
    sub_100006354(&__p, v19);
    type = xpc_get_type(*v19);
    if (type == &_xpc_type_string)
    {
      LODWORD(v12[0]) = *a1;
      ctu::rest::detail::read_enum_string_value(v12, v19, v9);
      *a1 = v12[0];
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(v19, 0, v9);
    }

    xpc_release(*v19);
    v12[0] = &object;
    v12[1] = "reason";
    sub_100006354(v12, &v13);
    __p = 0;
    v16 = 0uLL;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 8) = *v19;
    *(a1 + 24) = v20;
    xpc_release(v13);
    __p = &object;
    *&v16 = "wifiCallingEnabled";
    sub_100006354(&__p, v19);
    v10 = xpc_get_type(*v19);
    if (v10 == &_xpc_type_string)
    {
      LODWORD(v12[0]) = *(a1 + 32);
      ctu::rest::detail::read_enum_string_value(v12, v19, v11);
      *(a1 + 32) = v12[0];
    }

    else if (v10 == &_xpc_type_BOOL || v10 == &_xpc_type_int64 || v10 == &_xpc_type_uint64)
    {
      *(a1 + 32) = xpc::dyn_cast_or_default(v19, 0, v11);
    }

    xpc_release(*v19);
  }

  xpc_release(object);
}

_DWORD *sub_100634618(_DWORD *a1, int a2, __int128 *a3)
{
  *a1 = a2;
  v4 = a1 + 2;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v4, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(v4 + 2) = *(a3 + 2);
    *v4 = v5;
  }

  return a1;
}

BOOL sub_100634664(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 31);
  if (v2 >= 0)
  {
    v3 = *(a1 + 31);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = *(a2 + 31);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 16);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v2 < 0)
  {
    v6 = v7;
  }

  v11 = *(a2 + 8);
  v9 = (a2 + 8);
  v10 = v11;
  if (v5 < 0)
  {
    v9 = v10;
  }

  return memcmp(v6, v9, v3) == 0;
}

const char *sub_100634704(_DWORD *a1)
{
  v1 = *a1 + 1;
  if (v1 > 3)
  {
    return "???";
  }

  else
  {
    return off_101E6C2D8[v1];
  }
}

void sub_100634730(int *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v18 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v18 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v18 = v6;
LABEL_9:
  xpc_release(v5);
  v16 = xpc_int64_create(*a1);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  v14 = &v18;
  v15 = "state";
  sub_10000F688(&v14, &v16, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v16);
  v16 = 0;
  v9 = *(a1 + 1);
  v8 = a1 + 2;
  v7 = v9;
  if (*(v8 + 23) >= 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v12 = xpc_string_create(v10);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v14 = &v18;
  v15 = "reason";
  sub_10000F688(&v14, &v12, &v13);
  xpc_release(v13);
  v13 = 0;
  xpc_release(v12);
  v12 = 0;
  v11 = v18;
  *a2 = v18;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v18);
}

void sub_1006348DC(uint64_t a1, void **a2)
{
  sub_10000501C(v15, "");
  LODWORD(__p) = -1;
  if (SHIBYTE(v16) < 0)
  {
    sub_100005F2C(&v13, *v15, *&v15[2]);
    v4 = __p;
  }

  else
  {
    v13 = *v15;
    v14 = v16;
    v4 = -1;
  }

  *a1 = v4;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  *(a1 + 8) = v13;
  *(a1 + 24) = v14;
  HIBYTE(v14) = 0;
  LOBYTE(v13) = 0;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(*v15);
  }

  v5 = *a2;
  object = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    v6 = object;
  }

  else
  {
    v6 = xpc_null_create();
    object = v6;
  }

  if (xpc_get_type(v6) == &_xpc_type_dictionary)
  {
    __p = &object;
    *&v13 = "state";
    sub_100006354(&__p, v15);
    type = xpc_get_type(*v15);
    if (type == &_xpc_type_string)
    {
      LODWORD(v9[0]) = *a1;
      ctu::rest::detail::read_enum_string_value(v9, v15, v8);
      *a1 = v9[0];
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(v15, 0, v8);
    }

    xpc_release(*v15);
    v9[0] = &object;
    v9[1] = "reason";
    sub_100006354(v9, &v10);
    __p = 0;
    v13 = 0uLL;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 8) = *v15;
    *(a1 + 24) = v16;
    xpc_release(v10);
  }

  xpc_release(object);
}

void sub_100634AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

BOOL sub_100634B78(int a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if (a1)
  {
    v7 = &__kCFBooleanFalse;
  }

  else
  {
    v7 = &__kCFBooleanTrue;
  }

  v18[0] = @"supportsSGP";
  v18[1] = @"iosVersion";
  v19[0] = v7;
  (*(**a2 + 216))(__p);
  if (v17 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  v9 = [NSString stringWithFormat:@"%s", v8];
  v19[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  v11 = [v10 mutableCopy];

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  (*(**a2 + 200))(__p);
  v12 = __p[0];
  sub_100005978(__p);
  if ([v12 length])
  {
    [v11 setObject:v12 forKeyedSubscript:@"productType"];
  }

  (*(**a2 + 128))(__p);
  v13 = __p[0];
  sub_100005978(__p);
  if ([v13 length])
  {
    [v11 setObject:v13 forKeyedSubscript:@"regionInfo"];
  }

  v14 = sub_100634E10(v11, a3);

  objc_autoreleasePoolPop(v6);
  return v14;
}

BOOL sub_100634E10(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v3 = [NSJSONSerialization dataWithJSONObject:a1 options:0 error:&v14];
  v4 = v14;
  if (v4)
  {
    v5 = *sub_1000201E0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [v4 description];
      v7 = v6;
      v8 = [v6 UTF8String];
      *buf = 136315138;
      v16 = v8;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Serialization Error: %s", buf, 0xCu);
    }
  }

  else
  {
    v9 = v3;
    v10 = [v3 bytes];
    v11 = *(a2 + 8);
    v12 = [v3 length];
    sub_100553C7C(a2, v11, v10, &v12[v10], v12);
  }

  return v4 == 0;
}

uint64_t sub_100634F98(uint64_t *a1, uint64_t a2, uint64_t **a3)
{
  context = objc_autoreleasePoolPush();
  v5 = *a1;
  if (*a1)
  {
    v71 = 0;
    v50 = [NSJSONSerialization JSONObjectWithData:v5 options:0 error:&v71];
    v49 = v71;
    v6 = v50;
    if (v49)
    {
      v7 = 1;
    }

    else
    {
      v7 = v50 == 0;
    }

    if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v36 = sub_1000201E0();
      if (!os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
      {
        v37 = 0;
LABEL_80:

        goto LABEL_81;
      }

      sub_101776208();
      v37 = 0;
    }

    else
    {
      v48 = [v50 objectForKey:@"sessionId"];
      if (v48 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v43 = [v50 objectForKey:@"serviceDiscovery"];
        if (v43 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v8 = v48;
          sub_10000501C(&v69, [v48 UTF8String]);
          if (*(a2 + 23) < 0)
          {
            operator delete(*a2);
          }

          *a2 = v69;
          *(a2 + 16) = v70;
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v9 = v43;
          v10 = [v9 countByEnumeratingWithState:&v65 objects:v75 count:16];
          if (v10)
          {
            v11 = *v66;
            do
            {
              for (i = 0; i != v10; i = i + 1)
              {
                if (*v66 != v11)
                {
                  objc_enumerationMutation(v9);
                }

                v13 = *(*(&v65 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v14 = [v9 objectForKey:v13];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v15 = v14;
                    sub_10000501C(&v69, [v14 UTF8String]);
                    sub_10000501C(v63, "defaultUrls");
                    __p[0] = v63;
                    v16 = sub_1000E2134(a3, v63, &unk_101802C98, __p);
                    v17 = v13;
                    sub_10000501C(__p, [v13 UTF8String]);
                    v72 = __p;
                    v18 = sub_1000E9F90((v16 + 56), __p, &unk_101802C98, &v72);
                    v19 = v18;
                    if (*(v18 + 79) < 0)
                    {
                      operator delete(*(v18 + 56));
                    }

                    *(v19 + 56) = v69;
                    *(v19 + 72) = v70;
                    HIBYTE(v70) = 0;
                    LOBYTE(v69) = 0;
                    if (v62 < 0)
                    {
                      operator delete(__p[0]);
                    }

                    if (v64 < 0)
                    {
                      operator delete(v63[0]);
                    }

                    if (SHIBYTE(v70) < 0)
                    {
                      operator delete(v69);
                    }
                  }
                }
              }

              v10 = [v9 countByEnumeratingWithState:&v65 objects:v75 count:16];
            }

            while (v10);
          }

          v42 = [v50 objectForKey:@"regionDiscovery"];
          if (v42)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v59 = 0u;
              v60 = 0u;
              v57 = 0u;
              v58 = 0u;
              obj = v42;
              v47 = [obj countByEnumeratingWithState:&v57 objects:v74 count:16];
              if (v47)
              {
                v20 = 0;
                v21 = *v58;
                v44 = *v58;
                while (1)
                {
                  if (v21 != v44)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v22 = *(*(&v57 + 1) + 8 * v20);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v46 = [obj objectForKey:v22];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      *(&v69 + 1) = 0;
                      v70 = 0;
                      *&v69 = &v69 + 8;
                      v53 = 0u;
                      v54 = 0u;
                      v55 = 0u;
                      v56 = 0u;
                      v23 = v46;
                      v24 = [v23 countByEnumeratingWithState:&v53 objects:v73 count:16];
                      if (v24)
                      {
                        v25 = 0;
                        v26 = *v54;
                        for (j = *v54; ; j = *v54)
                        {
                          if (j != v26)
                          {
                            objc_enumerationMutation(v23);
                          }

                          v28 = *(*(&v53 + 1) + 8 * v25);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v29 = [v23 objectForKeyedSubscript:v28];
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v30 = v29;
                              v31 = [v29 UTF8String];
                              v32 = v28;
                              sub_10000501C(v63, [v28 UTF8String]);
                              __p[0] = v63;
                              v33 = sub_1000E9F90(&v69, v63, &unk_101802C98, __p);
                              sub_100016890((v33 + 56), v31);
                              if (v64 < 0)
                              {
                                operator delete(v63[0]);
                              }
                            }
                          }

                          if (++v25 >= v24)
                          {
                            v24 = [v23 countByEnumeratingWithState:&v53 objects:v73 count:16];
                            if (!v24)
                            {
                              break;
                            }

                            v25 = 0;
                          }
                        }
                      }

                      if (v70)
                      {
                        v34 = v22;
                        sub_10000501C(v63, [v22 UTF8String]);
                        __p[0] = v63;
                        v35 = (sub_1000E2134(a3, v63, &unk_101802C98, __p) + 56);
                        if (v35 != &v69)
                        {
                          sub_1001732FC(v35, v69, (&v69 + 8));
                        }

                        if (v64 < 0)
                        {
                          operator delete(v63[0]);
                        }
                      }

                      sub_1000DD0AC(&v69, *(&v69 + 1));
                    }
                  }

                  if (++v20 >= v47)
                  {
                    v47 = [obj countByEnumeratingWithState:&v57 objects:v74 count:16];
                    if (!v47)
                    {
                      break;
                    }

                    v20 = 0;
                  }

                  v21 = *v58;
                }
              }
            }
          }

          v37 = 1;
        }

        else
        {
          v40 = sub_1000201E0();
          if (os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
          {
            sub_10177623C();
          }

          v37 = 0;
        }
      }

      else
      {
        v39 = sub_1000201E0();
        if (os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
        {
          sub_101776270();
        }

        v37 = 0;
      }
    }

    v6 = v50;
    goto LABEL_80;
  }

  v38 = sub_1000201E0();
  if (os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
  {
    sub_1017762A4();
  }

  v37 = 0;
LABEL_81:
  objc_autoreleasePoolPop(context);
  return v37;
}

BOOL sub_100635854(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = a1[1];
  }

  if (!v8 || *a2 == a2[1])
  {
    v15 = 0;
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v18 = 0;
    ctu::base64::encode();
    v19[0] = @"sessionId";
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    v10 = [NSString stringWithFormat:@"%s", v9];
    v20[0] = v10;
    v19[1] = @"lpaSignedRequest";
    v11 = __p;
    if (v18 < 0)
    {
      v11 = __p[0];
    }

    v12 = [NSString stringWithFormat:@"%s", v11];
    v20[1] = v12;
    v19[2] = @"action";
    v13 = [NSString stringWithFormat:@"%s", encodeProfileAction()];
    v20[2] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];

    v15 = sub_100634E10(v14, a4);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  objc_autoreleasePoolPop(v7);
  return v15;
}

void sub_100635A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100635A74(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = *a1;
  if (*a1)
  {
    v91 = 0;
    v8 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v91];
    v9 = v91;
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8 == 0;
    }

    if (v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v41 = sub_1000201E0();
      if (os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
      {
        sub_1017762D8();
      }

      v42 = 0;
    }

    else
    {
      v71 = [v8 objectForKey:@"sessionId"];
      if (v71 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v11 = v71;
        sub_10000501C(buf, [v71 UTF8String]);
        if (*(a2 + 23) < 0)
        {
          operator delete(*a2);
        }

        *a2 = *buf;
        *(a2 + 16) = *&v82[0];
        v12 = [v8 objectForKey:@"profileOptions"];
        v57 = v12;
        if (v12)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            obj = v12;
            v13 = [obj countByEnumeratingWithState:&v87 objects:v93 count:16];
            if (v13)
            {
              v14 = 0;
              v15 = *v88;
              v72 = *v88;
              while (1)
              {
                if (v15 != v72)
                {
                  objc_enumerationMutation(obj);
                }

                v16 = *(*(&v87 + 1) + 8 * v14);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v17 = [v16 objectForKey:@"smDpUrl"];
                  if (v17)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v18 = a3[1];
                      if (v18 >= a3[2])
                      {
                        v19 = sub_1005C18A0(a3);
                      }

                      else
                      {
                        *(v18 + 304) = 0;
                        *(v18 + 272) = 0u;
                        *(v18 + 288) = 0u;
                        *(v18 + 240) = 0u;
                        *(v18 + 256) = 0u;
                        *(v18 + 208) = 0u;
                        *(v18 + 224) = 0u;
                        *(v18 + 176) = 0u;
                        *(v18 + 192) = 0u;
                        *(v18 + 144) = 0u;
                        *(v18 + 160) = 0u;
                        *(v18 + 112) = 0u;
                        *(v18 + 128) = 0u;
                        *(v18 + 80) = 0u;
                        *(v18 + 96) = 0u;
                        *(v18 + 48) = 0u;
                        *(v18 + 64) = 0u;
                        *(v18 + 16) = 0u;
                        *(v18 + 32) = 0u;
                        *v18 = 0u;
                        v19 = v18 + 312;
                      }

                      v70 = v19;
                      a3[1] = v19;
                      v68 = [v16 objectForKey:@"eventId"];
                      v22 = v17;
                      sub_100016890((v70 - 312), [v17 UTF8String]);
                      if (v68)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v23 = v68;
                          sub_100016890((v70 - 288), [v68 UTF8String]);
                        }
                      }

                      v67 = [v16 objectForKey:@"carrier"];
                      if (v67)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v24 = v67;
                          sub_100016890((v70 - 264), [v67 UTF8String]);
                        }
                      }

                      v64 = [v16 objectForKey:@"type"];
                      if (v64)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          *(v70 - 192) = [v64 isEqualToString:@"provisioning"];
                        }
                      }

                      v66 = [v16 objectForKey:@"iccidHash"];
                      if (v66)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v25 = v66;
                          sub_100016890((v70 - 240), [v66 UTF8String]);
                        }
                      }

                      v65 = [v16 objectForKey:@"eventType"];
                      if (v65)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v26 = v65;
                          sub_100016890((v70 - 216), [v65 UTF8String]);
                        }
                      }

                      v63 = [v16 objectForKey:@"isOda"];
                      if (v63)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          *(v70 - 191) = [v63 BOOLValue];
                        }
                      }

                      if (*(v70 - 191) == 1)
                      {
                        v69 = [v16 objectForKey:@"esimInstallDetails"];
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & (v69 != 0)) == 0)
                        {
                          v56 = *sub_1000201E0();
                          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 0;
                            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (esimInstallDetailObj element)", buf, 2u);
                          }

                          v42 = 0;
                          goto LABEL_113;
                        }

                        memset(v86, 0, sizeof(v86));
                        memset(v85, 0, sizeof(v85));
                        v83 = 0u;
                        v84 = 0u;
                        memset(v82, 0, sizeof(v82));
                        *buf = 0u;
                        v62 = [v69 objectForKey:@"iccid"];
                        if (v62)
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v27 = v62;
                            sub_100016890(buf, [v62 UTF8String]);
                          }
                        }

                        v61 = [v69 objectForKey:@"sourceIccid"];
                        if (v61)
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v28 = v61;
                            sub_100016890((v82 + 8), [v61 UTF8String]);
                          }
                        }

                        v60 = [v69 objectForKey:@"phoneNumber"];
                        if (v60)
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v29 = v60;
                            sub_100016890(&v83, [v60 UTF8String]);
                          }
                        }

                        v59 = [v69 objectForKey:@"tetherActionType"];
                        if (v59)
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            __p[0] = 0;
                            __p[1] = 0;
                            v80 = 0;
                            v30 = v59;
                            sub_10000501C(__p, [v59 UTF8String]);
                            DWORD2(v84) = 0;
                            std::locale::locale(&v78);
                            v31 = sub_1006368F4(__p, "DELAYED", &v78);
                            std::locale::~locale(&v78);
                            if (v31)
                            {
                              v32 = 1;
                              goto LABEL_63;
                            }

                            std::locale::locale(&v78);
                            v33 = sub_1006369E8(__p, "NOW", &v78);
                            std::locale::~locale(&v78);
                            if (v33)
                            {
                              v32 = 2;
LABEL_63:
                              DWORD2(v84) = v32;
                            }

                            if (SHIBYTE(v80) < 0)
                            {
                              operator delete(__p[0]);
                            }
                          }
                        }

                        v58 = [v69 objectForKey:@"mcc"];
                        if (v58)
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v34 = v58;
                            sub_100016890(v85, [v58 UTF8String]);
                          }
                        }

                        v35 = [v69 objectForKey:@"mnc"];
                        if (v35)
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v36 = v35;
                            sub_100016890(&v85[1], [v35 UTF8String]);
                          }
                        }

                        v37 = [v69 objectForKey:@"gid1"];
                        if (v37)
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v38 = v37;
                            sub_100016890(v86, [v37 UTF8String]);
                          }
                        }

                        v39 = [v69 objectForKey:@"gid2"];
                        if (v39)
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v40 = v39;
                            sub_100016890(&v86[1], [v39 UTF8String]);
                          }
                        }

                        sub_100636ADC(v70 - 184, buf);

                        sub_1013A800C(buf);
                      }

                      goto LABEL_80;
                    }
                  }

                  v21 = *sub_1000201E0();
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (smdpUrl)", buf, 2u);
                  }
                }

                else
                {
                  v20 = *sub_1000201E0();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (profileOption element)", buf, 2u);
                  }
                }

LABEL_80:
                if (++v14 >= v13)
                {
                  v13 = [obj countByEnumeratingWithState:&v87 objects:v93 count:16];
                  if (!v13)
                  {
                    break;
                  }

                  v14 = 0;
                }

                v15 = *v88;
              }
            }
          }
        }

        v45 = [v8 objectForKey:@"defaultSmdpUrls"];
        if (v45 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v17 = v45;
          obj = v45;
          v46 = [v17 countByEnumeratingWithState:&v74 objects:v92 count:16];
          if (v46)
          {
            v47 = 0;
            v48 = *v75;
            for (i = *v75; ; i = *v75)
            {
              if (i != v48)
              {
                objc_enumerationMutation(v17);
              }

              v50 = *(*(&v74 + 1) + 8 * v47);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v51 = a3[1];
                if (v51 >= a3[2])
                {
                  v52 = sub_1005C18A0(a3);
                }

                else
                {
                  *(v51 + 304) = 0;
                  *(v51 + 272) = 0u;
                  *(v51 + 288) = 0u;
                  *(v51 + 240) = 0u;
                  *(v51 + 256) = 0u;
                  *(v51 + 208) = 0u;
                  *(v51 + 224) = 0u;
                  *(v51 + 176) = 0u;
                  *(v51 + 192) = 0u;
                  *(v51 + 144) = 0u;
                  *(v51 + 160) = 0u;
                  *(v51 + 112) = 0u;
                  *(v51 + 128) = 0u;
                  *(v51 + 80) = 0u;
                  *(v51 + 96) = 0u;
                  *(v51 + 48) = 0u;
                  *(v51 + 64) = 0u;
                  *(v51 + 16) = 0u;
                  *(v51 + 32) = 0u;
                  *v51 = 0u;
                  v52 = v51 + 312;
                }

                a3[1] = v52;
                v54 = v50;
                sub_100016890((v52 - 312), [v50 UTF8String]);
              }

              else
              {
                v53 = *sub_1000201E0();
                if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (defaultSmdp element)", buf, 2u);
                }
              }

              if (++v47 >= v46)
              {
                v46 = [v17 countByEnumeratingWithState:&v74 objects:v92 count:16];
                if (!v46)
                {
                  break;
                }

                v47 = 0;
              }
            }
          }

          v42 = 1;
LABEL_113:

          v45 = obj;
        }

        else
        {
          v42 = 1;
        }
      }

      else
      {
        v44 = sub_1000201E0();
        if (os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
        {
          sub_10177630C();
        }

        v42 = 0;
      }
    }
  }

  else
  {
    v43 = sub_1000201E0();
    if (os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
    {
      sub_1017762A4();
    }

    v42 = 0;
  }

  objc_autoreleasePoolPop(v6);
  return v42;
}

uint64_t sub_1006368F4(uint64_t *a1, char *a2, std::locale *a3)
{
  std::locale::locale(&v17, a3);
  v5 = *(a1 + 23);
  v6 = a1[1];
  if (v5 < 0)
  {
    a1 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = strlen(a2);
  v9 = v7 == 0;
  v10 = v8 == 0;
  if (v7)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
LABEL_11:
    v12 = v9 & v10;
  }

  else
  {
    v13 = v8 - 1;
    v14 = v7 - 1;
    while (sub_1001DAECC(&v17, a1, a2))
    {
      v9 = v14 == 0;
      v10 = v13 == 0;
      if (v14)
      {
        a1 = (a1 + 1);
        ++a2;
        v15 = v13--;
        --v14;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_11;
    }

    v12 = 0;
  }

  std::locale::~locale(&v17);
  return v12;
}

uint64_t sub_1006369E8(uint64_t *a1, char *a2, std::locale *a3)
{
  std::locale::locale(&v17, a3);
  v5 = *(a1 + 23);
  v6 = a1[1];
  if (v5 < 0)
  {
    a1 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = strlen(a2);
  v9 = v7 == 0;
  v10 = v8 == 0;
  if (v7)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
LABEL_11:
    v12 = v9 & v10;
  }

  else
  {
    v13 = v8 - 1;
    v14 = v7 - 1;
    while (sub_1001DAECC(&v17, a1, a2))
    {
      v9 = v14 == 0;
      v10 = v13 == 0;
      if (v14)
      {
        a1 = (a1 + 1);
        ++a2;
        v15 = v13--;
        --v14;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_11;
    }

    v12 = 0;
  }

  std::locale::~locale(&v17);
  return v12;
}

uint64_t sub_100636ADC(uint64_t a1, std::string *__str)
{
  if (*(a1 + 176) == 1)
  {
    std::string::operator=(a1, __str);
    std::string::operator=((a1 + 24), __str + 1);
    std::string::operator=((a1 + 48), __str + 2);
    *(a1 + 72) = __str[3].__r_.__value_.__l.__data_;
    std::string::operator=((a1 + 80), (__str + 80));
    std::string::operator=((a1 + 104), (__str + 104));
    std::string::operator=((a1 + 128), (__str + 128));
    std::string::operator=((a1 + 152), (__str + 152));
  }

  else
  {
    sub_100FB54F8(a1, __str);
    *(a1 + 176) = 1;
  }

  return a1;
}

BOOL sub_100636B7C(int a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
  ctu::base64::encode();
  v6 = @"lpaSignedRequest";
  if (a1)
  {
    v6 = @"signedIdMapInfo";
  }

  v14 = v6;
  if (v13 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = [NSString stringWithFormat:@"%s", v7];
  v15 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

  v10 = sub_100634E10(v9, a3);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  objc_autoreleasePoolPop(v5);
  return v10;
}

void sub_100636CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100636CE8(uint64_t *a1, CFAbsoluteTime *a2, const void **a3)
{
  context = objc_autoreleasePoolPush();
  v5 = *a1;
  if (!*a1)
  {
    v45 = sub_1000201E0();
    if (os_log_type_enabled(*v45, OS_LOG_TYPE_ERROR))
    {
      sub_1017762A4();
    }

    v43 = 0;
    goto LABEL_110;
  }

  v89 = 0;
  v73 = [NSJSONSerialization JSONObjectWithData:v5 options:0 error:&v89];
  v69 = v89;
  if (v69)
  {
    v6 = 1;
  }

  else
  {
    v6 = v73 == 0;
  }

  if (v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v44 = sub_1000201E0();
    if (os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
    {
      sub_1017762D8();
    }

    v43 = 0;
    goto LABEL_109;
  }

  v65 = [v73 objectForKey:@"expiryDate"];
  if (!v65 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v46 = sub_1000201E0();
    if (os_log_type_enabled(*v46, OS_LOG_TYPE_ERROR))
    {
      sub_1017763A8();
    }

    v43 = 0;
    goto LABEL_108;
  }

  v59 = [v73 objectForKey:@"carrierOptions"];
  if (!v59 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v47 = sub_1000201E0();
    if (os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
    {
      sub_101776374();
    }

    goto LABEL_106;
  }

  if (!sub_100637B38(v65, a2))
  {
    v49 = sub_1000201E0();
    if (os_log_type_enabled(*v49, OS_LOG_TYPE_ERROR))
    {
      sub_101776340();
    }

LABEL_106:
    v43 = 0;
    goto LABEL_107;
  }

  v50 = objc_alloc_init(NSMutableArray);
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = v59;
  v63 = [obj countByEnumeratingWithState:&v85 objects:v93 count:16];
  if (!v63)
  {
    goto LABEL_90;
  }

  v62 = *v86;
  do
  {
    v66 = 0;
    do
    {
      if (*v86 != v62)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v85 + 1) + 8 * v66);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v64 = [v7 objectForKey:@"carrierDisplayName"];
        if (!v64 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v12 = *sub_1000201E0();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type - skipping (carrierDisplayName)", buf, 2u);
          }

          goto LABEL_75;
        }

        v8 = [v7 objectForKey:@"planPurchaseEndpoint"];
        v54 = v8;
        if (v8)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_25;
          }
        }

        v9 = *sub_1000201E0();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type - (plan purchase end point)", buf, 2u);
        }

        if (v8)
        {
LABEL_25:
          v61 = v8;
          v10 = [v7 objectForKey:@"planPurchaseEndpointType"];
          if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v60 = v10;
          }

          else
          {
            v13 = *sub_1000201E0();
            v60 = @"websheet";
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type - Default (planPurchaseEndpointType)", buf, 2u);
              v60 = @"websheet";
            }
          }

          goto LABEL_35;
        }

        v36 = [v7 objectForKey:@"addOnPlanPurchaseEndpoint"];
        if (!v36 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v37 = *sub_1000201E0();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type - (addOnPlanPurchaseEndpoint)", buf, 2u);
          }
        }

        v61 = v36;
        v38 = [v7 objectForKey:@"addOnPlanPurchaseEndpointType"];
        if (v38 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v60 = v38;
        }

        else
        {
          v39 = *sub_1000201E0();
          v60 = @"websheet";
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type - Default (addOnPlanPurchaseEndpointType)", buf, 2u);
            v60 = @"websheet";
          }
        }

        if (!v36)
        {
          v61 = 0;
LABEL_74:

LABEL_75:
          goto LABEL_76;
        }

LABEL_35:
        v14 = [v7 objectForKey:@"supportsApplePay"];
        v53 = v14;
        if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v52 = [v14 BOOLValue];
        }

        else
        {
          v52 = 0;
        }

        v56 = [v7 objectForKey:@"warningText"];
        if (!v56 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v15 = *sub_1000201E0();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type - skipping (warning text)", buf, 2u);
          }
        }

        v57 = [v7 objectForKey:@"planPurchaseOptions"];
        if (v57 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v51 = sub_100637BD4(v57);
        }

        else
        {
          v16 = *sub_1000201E0();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type - (planPurchaseOptions)", buf, 2u);
          }

          v51 = 0;
        }

        v76 = objc_opt_new();
        v55 = [v7 objectForKey:@"bundle"];
        if (v55 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v67 = v55;
          v71 = [v67 countByEnumeratingWithState:&v81 objects:v92 count:16];
          if (v71)
          {
            v70 = *v82;
            do
            {
              for (i = 0; i != v71; i = i + 1)
              {
                if (*v82 != v70)
                {
                  objc_enumerationMutation(v67);
                }

                v74 = [*(*(&v81 + 1) + 8 * i) objectForKey:@"supportedSims"];
                if (v74)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v79 = 0u;
                    v80 = 0u;
                    v77 = 0u;
                    v78 = 0u;
                    v17 = v74;
                    v18 = [v17 countByEnumeratingWithState:&v77 objects:v91 count:16];
                    if (v18)
                    {
                      v19 = *v78;
                      do
                      {
                        for (j = 0; j != v18; j = j + 1)
                        {
                          if (*v78 != v19)
                          {
                            objc_enumerationMutation(v17);
                          }

                          v21 = *(*(&v77 + 1) + 8 * j);
                          v22 = sub_100637C44(v21, @"mcc");
                          v23 = sub_100637C44(v21, @"mnc");
                          v24 = sub_100637C44(v21, @"gid1");
                          v25 = sub_100637C44(v21, @"gid2");
                          v26 = sub_100637C44(v21, @"iccidPrefix");
                          v27 = [[CTPlanIdentifier alloc] initWithIccid:v26 carrierName:0 phoneNumber:0 countryCode:0 label:0 mcc:v22 mnc:v23 gid1:v24 gid2:v25];
                          [v76 addObject:v27];
                        }

                        v18 = [v17 countByEnumeratingWithState:&v77 objects:v91 count:16];
                      }

                      while (v18);
                    }
                  }
                }
              }

              v71 = [v67 countByEnumeratingWithState:&v81 objects:v92 count:16];
            }

            while (v71);
          }

          v28 = *sub_1000201E0();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [v76 count];
            *buf = 134217984;
            *&buf[4] = v29;
            v30 = v28;
            v31 = "#I Decoded %lu bundle details";
            v32 = 12;
            goto LABEL_72;
          }
        }

        else
        {
          v33 = *sub_1000201E0();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v30 = v33;
            v31 = "#I Element not found or invalid type - skipping (bundle)";
            v32 = 2;
LABEL_72:
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v31, buf, v32);
          }
        }

        v34 = [[CTCarrierSignupPlan alloc] initWithName:v64 url:v61 type:v60 option:v51 identifiers:v76];
        v35 = [[CTCellularPlanCarrierItem alloc] initWithName:v64 plan:v34 url:v61 applePaySupported:v52 responseType:v60 warningText:v56 purchaseOption:v57];
        [v50 addObject:v35];

        goto LABEL_74;
      }

      v11 = *sub_1000201E0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type - skipping (carrier element)", buf, 2u);
      }

LABEL_76:
      v66 = v66 + 1;
    }

    while (v66 != v63);
    v40 = [obj countByEnumeratingWithState:&v85 objects:v93 count:16];
    v63 = v40;
  }

  while (v40);
LABEL_90:

  if ([v50 count])
  {
    *buf = v50;
    sub_10044A870(a3, buf);
  }

  v41 = *sub_1000201E0();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [v50 count];
    *buf = 134217984;
    *&buf[4] = v42;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I Decoded %lu carrier items", buf, 0xCu);
  }

  v43 = 1;
LABEL_107:

LABEL_108:
LABEL_109:

LABEL_110:
  objc_autoreleasePoolPop(context);
  return v43;
}

BOOL sub_100637B38(void *a1, CFAbsoluteTime *a2)
{
  v3 = a1;
  v4 = qword_101FBA828;
  if (!qword_101FBA828)
  {
    qword_101FBA828 = CFDateFormatterCreate(kCFAllocatorDefault, 0, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    CFDateFormatterSetFormat(qword_101FBA828, @"yyyy-MM-dd'T'HH:mm:ssz");
    v4 = qword_101FBA828;
  }

  v5 = CFDateFormatterGetAbsoluteTimeFromString(v4, v3, 0, a2) != 0;

  return v5;
}

uint64_t sub_100637BD4(void *a1)
{
  v1 = a1;
  if ([v1 isEqual:@"ALLOW_ON_BOOTSTRAP"])
  {
    v2 = 1;
  }

  else if ([v1 isEqual:@"DISALLOW_ON_BOOTSTRAP"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100637C44(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKey:a2];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL sub_100637CC8(uint64_t a1, uint64_t **a2, void *a3, uint64_t a4)
{
  context = objc_autoreleasePoolPush();
  if (*a3 == a3[1])
  {
    v26 = *sub_1000201E0();
    v25 = 0;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Mandatory parameters missing (signedPayload)", buf, 2u);
      v25 = 0;
    }
  }

  else
  {
    v29 = a4;
    v31 = objc_alloc_init(NSMutableArray);
    v7 = *a2;
    v8 = a2[1];
    if (*a2 != v8)
    {
      do
      {
        if (*(v7 + 24) != 1)
        {
          goto LABEL_26;
        }

        v9 = *(v7 + 23);
        if (v9 < 0)
        {
          if (!*(v7 + 8))
          {
            goto LABEL_26;
          }
        }

        else if (!*(v7 + 23))
        {
          goto LABEL_26;
        }

        if ((*(v7 + 55) & 0x8000000000000000) != 0)
        {
          if (!*(v7 + 40))
          {
            goto LABEL_26;
          }
        }

        else if (!*(v7 + 55))
        {
          goto LABEL_26;
        }

        if ((*(v7 + 79) & 0x8000000000000000) != 0)
        {
          if (*(v7 + 64))
          {
LABEL_14:
            v35[0] = @"iccid";
            v10 = v7;
            if ((v9 & 0x80000000) != 0)
            {
              v10 = *v7;
            }

            v11 = [NSString stringWithFormat:@"%s", v10];
            v12 = (v7 + 32);
            v36[0] = v11;
            v35[1] = @"mcc";
            if (*(v7 + 55) < 0)
            {
              v12 = *v12;
            }

            v13 = [NSString stringWithFormat:@"%s", v12];
            v14 = (v7 + 56);
            v36[1] = v13;
            v35[2] = @"mnc";
            if (*(v7 + 79) < 0)
            {
              v14 = *v14;
            }

            v15 = [NSString stringWithFormat:@"%s", v14];
            v36[2] = v15;
            v35[3] = @"gid1";
            v16 = (v7 + 80);
            if (*(v7 + 103) < 0)
            {
              v16 = *v16;
            }

            v17 = [NSString stringWithFormat:@"%s", v16];
            v36[3] = v17;
            v35[4] = @"gid2";
            v18 = (v7 + 104);
            if (*(v7 + 127) < 0)
            {
              v18 = *v18;
            }

            v19 = [NSString stringWithFormat:@"%s", v18];
            v36[4] = v19;
            v20 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:5];

            [v31 addObject:v20];
            goto LABEL_28;
          }
        }

        else if (*(v7 + 79))
        {
          goto LABEL_14;
        }

LABEL_26:
        v21 = *sub_1000201E0();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Mandatory parameters missing", buf, 2u);
        }

LABEL_28:
        v7 += 128;
      }

      while (v7 != v8);
    }

    if ([v31 count])
    {
      *buf = 0;
      v33 = 0;
      v34 = 0;
      ctu::base64::encode();
      v22 = objc_alloc_init(NSMutableDictionary);
      [v22 setObject:v31 forKeyedSubscript:@"simAddonMetadata"];
      v23 = buf;
      if (v34 < 0)
      {
        v23 = *buf;
      }

      v24 = [NSString stringWithFormat:@"%s", v23];
      [v22 setObject:v24 forKeyedSubscript:@"lpaSignedRequest"];

      v25 = sub_100634E10(v22, v29);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      v27 = *sub_1000201E0();
      v25 = 0;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Mandatory parameters missing (simAddonMetadata)", buf, 2u);
        v25 = 0;
      }
    }
  }

  objc_autoreleasePoolPop(context);
  return v25;
}

uint64_t sub_100638184(uint64_t *a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = *a1;
  if (*a1)
  {
    v59 = 0;
    v54 = [NSJSONSerialization JSONObjectWithData:v4 options:0 error:&v59];
    v52 = v59;
    if (v52)
    {
      v5 = 1;
    }

    else
    {
      v5 = v54 == 0;
    }

    if (v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v39 = *sub_1000201E0();
      v40 = 0;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I Top level decoding failure", __p, 2u);
        v40 = 0;
      }
    }

    else
    {
      v6 = [v54 objectForKey:@"simAddonMetadataEval"];
      v51 = v6;
      if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v55 objects:v63 count:16];
        if (v8)
        {
          v9 = 0;
          v10 = *v56;
          for (i = *v56; ; i = *v56)
          {
            if (i != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v55 + 1) + 8 * v9);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v12 objectForKey:@"iccid"];
              if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v14 = v13;
                v15 = [v13 UTF8String];
                sub_10000501C(__p, v15);
                v60 = __p;
                v16 = sub_10063D9E4(a2, __p, &unk_101802C98, &v60);
                if (v62 < 0)
                {
                  operator delete(*__p);
                }

                sub_100016890((v16 + 56), v15);
                v17 = [v12 objectForKey:@"result"];
                if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v18 = v17;
                  sub_100016890((v16 + 248), [v17 UTF8String]);
                  v50 = [v12 objectForKey:@"gid1"];
                  if (v50 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v19 = v50;
                    sub_100016890((v16 + 200), [v50 UTF8String]);
                    v49 = [v12 objectForKey:@"gid2"];
                    if (v49 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v20 = v49;
                      sub_100016890((v16 + 224), [v49 UTF8String]);
                      v48 = [v12 objectForKey:@"mcc"];
                      if (v48 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v21 = v48;
                        sub_100016890((v16 + 152), [v48 UTF8String]);
                        v47 = [v12 objectForKey:@"mnc"];
                        if (v47 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v22 = v47;
                          sub_100016890((v16 + 176), [v47 UTF8String]);
                          v46 = [v12 objectForKey:@"presentOnDevice"];
                          if (v46 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            *(v16 + 272) = [v46 BOOLValue];
                            v23 = [v12 objectForKey:@"addOnPlanEndpoint"];
                            if (v23)
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v24 = v23;
                                *__p = [v23 UTF8String];
                                sub_100184AD0((v16 + 280), __p);
                              }
                            }

                            v25 = [v12 objectForKey:{@"addOnPlanEndpointType", v46}];
                            if (v25)
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v26 = v25;
                                *__p = [v25 UTF8String];
                                sub_100184AD0((v16 + 312), __p);
                              }
                            }
                          }

                          else
                          {
                            v38 = *sub_1000201E0();
                            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                            {
                              *__p = 136315138;
                              *&__p[4] = v15;
                              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I iccid %s Element not found or invalid type - (is Present On Device)", __p, 0xCu);
                            }
                          }

                          v37 = v47;
                        }

                        else
                        {
                          v36 = *sub_1000201E0();
                          v37 = v47;
                          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                          {
                            *__p = 136315138;
                            *&__p[4] = v15;
                            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I iccid %s Element not found or invalid type - (mnc)", __p, 0xCu);
                          }
                        }

                        v35 = v48;
                      }

                      else
                      {
                        v34 = *sub_1000201E0();
                        v35 = v48;
                        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                        {
                          *__p = 136315138;
                          *&__p[4] = v15;
                          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I iccid %s Element not found or invalid type - (mcc)", __p, 0xCu);
                        }
                      }

                      v33 = v49;
                    }

                    else
                    {
                      v32 = *sub_1000201E0();
                      v33 = v49;
                      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                      {
                        *__p = 136315138;
                        *&__p[4] = v15;
                        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I iccid %s Element not found or invalid type - (gid2)", __p, 0xCu);
                      }
                    }

                    v31 = v50;
                  }

                  else
                  {
                    v30 = *sub_1000201E0();
                    v31 = v50;
                    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                    {
                      *__p = 136315138;
                      *&__p[4] = v15;
                      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I iccid %s Element not found or invalid type - (gid1)", __p, 0xCu);
                    }
                  }
                }

                else
                {
                  v29 = *sub_1000201E0();
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                  {
                    *__p = 136315138;
                    *&__p[4] = v15;
                    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I iccid %s Element not found or invalid type - (result)", __p, 0xCu);
                  }
                }
              }

              else
              {
                v28 = *sub_1000201E0();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  *__p = 0;
                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type - skipping (iccid)", __p, 2u);
                }
              }
            }

            else
            {
              v27 = *sub_1000201E0();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                *__p = 0;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type - skipping (carrier element)", __p, 2u);
              }
            }

            if (++v9 >= v8)
            {
              v8 = [v7 countByEnumeratingWithState:&v55 objects:v63 count:16];
              if (!v8)
              {
                break;
              }

              v9 = 0;
            }
          }
        }

        v43 = *sub_1000201E0();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = *(a2 + 16);
          *__p = 134217984;
          *&__p[4] = v44;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I Decoded %lu add-on options", __p, 0xCu);
        }

        v40 = 1;
      }

      else
      {
        v42 = *sub_1000201E0();
        v40 = 0;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 0;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (addOnOptions)", __p, 2u);
          v40 = 0;
        }
      }
    }
  }

  else
  {
    v41 = *sub_1000201E0();
    v40 = 0;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I No data", __p, 2u);
      v40 = 0;
    }
  }

  objc_autoreleasePoolPop(v3);
  return v40;
}

BOOL sub_100638BC8(uint64_t *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v10 = objc_autoreleasePoolPush();
  if (*a2 == a2[1] || *a3 == a3[1])
  {
    v20 = 0;
  }

  else
  {
    v24[0] = 0;
    v24[1] = 0;
    v25 = 0;
    ctu::base64::encode();
    __p[0] = 0;
    __p[1] = 0;
    v23 = 0;
    ctu::base64::encode();
    v26[0] = @"smdpUrl";
    if (*(a1 + 23) >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    v12 = [NSString stringWithFormat:@"%s", v11];
    v27[0] = v12;
    v26[1] = @"storeMetadata";
    v13 = v24;
    if (v25 < 0)
    {
      v13 = v24[0];
    }

    v14 = [NSString stringWithFormat:@"%s", v13];
    v27[1] = v14;
    v26[2] = @"action";
    if (*(a4 + 23) >= 0)
    {
      v15 = a4;
    }

    else
    {
      v15 = *a4;
    }

    v16 = [NSString stringWithFormat:@"%s", v15];
    v27[2] = v16;
    v26[3] = @"lpaSignedRequest";
    v17 = __p;
    if (v23 < 0)
    {
      v17 = __p[0];
    }

    v18 = [NSString stringWithFormat:@"%s", v17];
    v27[3] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];

    v20 = sub_100634E10(v19, a5);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }
  }

  objc_autoreleasePoolPop(v10);
  return v20;
}

void sub_100638E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100638E78(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = *a1;
  if (*a1)
  {
    v20 = 0;
    v8 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v20];
    v9 = v20;
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8 == 0;
    }

    if (v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v13 = sub_1000201E0();
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        sub_1017762D8();
      }

      v12 = 0;
    }

    else
    {
      v11 = [v8 objectForKey:@"result"];
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v12 = ![v11 caseInsensitiveCompare:@"Allowed"] || !objc_msgSend(v11, "caseInsensitiveCompare:", @"Warning");
        if (a3)
        {
          if ([v11 caseInsensitiveCompare:@"Unknown"])
          {
            v12 = v12;
          }

          else
          {
            v12 = 1;
          }
        }

        v16 = [v8 objectForKey:@"description"];
        if (v16)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            sub_10000501C(__p, [v16 UTF8String]);
            sub_10053EDA4(a2, __p);
            if (v19 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      else
      {
        v15 = *sub_1000201E0();
        v12 = 0;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (result)", __p, 2u);
          v12 = 0;
        }
      }
    }
  }

  else
  {
    v14 = sub_1000201E0();
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      sub_1017762A4();
    }

    v12 = 0;
  }

  objc_autoreleasePoolPop(v6);
  return v12;
}

void sub_1006390D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_10063912C(uint64_t *a1, uint64_t *a2, uint64_t *a3, void *a4, void *a5, uint64_t a6)
{
  context = objc_autoreleasePoolPush();
  if (*a5 != a5[1])
  {
    v37 = objc_alloc_init(NSMutableArray);
    v9 = *a2;
    v10 = a2[1];
    if (*a2 != v10)
    {
      do
      {
        v11 = *(v9 + 55);
        if (v11 < 0)
        {
          if (!*(v9 + 40))
          {
            goto LABEL_20;
          }
        }

        else if (!*(v9 + 55))
        {
          goto LABEL_20;
        }

        if ((*(v9 + 79) & 0x8000000000000000) != 0)
        {
          if (*(v9 + 64))
          {
LABEL_11:
            v12 = (v9 + 32);
            v41[0] = @"mcc";
            if ((v11 & 0x80000000) != 0)
            {
              v12 = *v12;
            }

            v13 = [NSString stringWithFormat:@"%s", v12];
            v14 = (v9 + 56);
            v42[0] = v13;
            v41[1] = @"mnc";
            if (*(v9 + 79) < 0)
            {
              v14 = *v14;
            }

            v15 = [NSString stringWithFormat:@"%s", v14];
            v42[1] = v15;
            v41[2] = @"gid1";
            v16 = (v9 + 80);
            if (*(v9 + 103) < 0)
            {
              v16 = *v16;
            }

            v17 = [NSString stringWithFormat:@"%s", v16];
            v42[2] = v17;
            v41[3] = @"gid2";
            v18 = (v9 + 104);
            if (*(v9 + 127) < 0)
            {
              v18 = *v18;
            }

            v19 = [NSString stringWithFormat:@"%s", v18];
            v42[3] = v19;
            v20 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:4];

            [v37 addObject:v20];
          }
        }

        else if (*(v9 + 79))
        {
          goto LABEL_11;
        }

LABEL_20:
        v9 += 128;
      }

      while (v9 != v10);
    }

    if (![v37 count])
    {
      v26 = *sub_1000201E0();
      v25 = 0;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Mandatory parameters missing (appMetadata)", buf, 2u);
        v25 = 0;
      }

      goto LABEL_42;
    }

    *buf = 0;
    v39 = 0;
    v40 = 0;
    ctu::base64::encode();
    v21 = objc_alloc_init(NSMutableDictionary);
    [v21 setObject:v37 forKeyedSubscript:@"appMetadata"];
    v22 = [NSString stringWithFormat:@"%s", buf];
    [v21 setObject:v22 forKeyedSubscript:@"lpaSignedRequest"];

    v23 = a1;
    if (*(a1 + 23) < 0)
    {
      if (!a1[1])
      {
        goto LABEL_32;
      }

      v23 = *a1;
    }

    else if (!*(a1 + 23))
    {
LABEL_32:
      v28 = a3;
      if (*(a3 + 23) < 0)
      {
        if (!a3[1])
        {
LABEL_38:
          if (*a4)
          {
            v30 = [NSNumber numberWithUnsignedLongLong:?];
            [v21 setObject:v30 forKeyedSubscript:@"adamId"];
          }

          v31 = [NSNumber numberWithBool:1];
          [v21 setObject:v31 forKeyedSubscript:@"verbose"];

          v25 = sub_100634E10(v21, a6);
          if (SHIBYTE(v40) < 0)
          {
            operator delete(*buf);
          }

LABEL_42:

          goto LABEL_43;
        }

        v28 = *a3;
      }

      else if (!*(a3 + 23))
      {
        goto LABEL_38;
      }

      v29 = [NSString stringWithFormat:@"%s", v28];
      [v21 setObject:v29 forKeyedSubscript:@"iccidPrefix"];

      goto LABEL_38;
    }

    v27 = [NSString stringWithFormat:@"%s", v23];
    [v21 setObject:v27 forKeyedSubscript:@"smdpUrl"];

    goto LABEL_32;
  }

  v24 = *sub_1000201E0();
  v25 = 0;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Mandatory parameters missing (signedPayload)", buf, 2u);
    v25 = 0;
  }

LABEL_43:
  objc_autoreleasePoolPop(context);
  return v25;
}

uint64_t sub_100639678(uint64_t *a1, uint64_t **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *a1;
  if (*a1)
  {
    v60 = 0;
    v44 = [NSJSONSerialization JSONObjectWithData:v5 options:0 error:&v60];
    v6 = v60;
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = v44 == 0;
    }

    v43 = v6;
    if (!v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v44 objectForKey:@"appMetadataEval"];
        v41 = v8;
        if (v8)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v9 = v8;
            v10 = [v9 countByEnumeratingWithState:&v47 objects:v62 count:16];
            v11 = 1;
            if (!v10)
            {
              goto LABEL_90;
            }

            v2 = 0;
            v12 = *v48;
            for (i = *v48; ; i = *v48)
            {
              if (i != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v47 + 1) + 8 * v2);
              v15 = [v14 objectForKey:@"mcc"];
              if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v16 = [v14 objectForKey:@"mnc"];
                if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v17 = [v14 objectForKey:@"gid1"];
                  if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v40 = [v14 objectForKey:@"gid2"];
                    if (v40 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v39 = [v14 objectForKey:@"result"];
                      if (v39 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v18 = [v14 objectForKey:@"policyType"];
                        memset(&v51, 0, sizeof(v51));
                        v37 = v18;
                        if (v18)
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v19 = v37;
                            sub_100016890(&v51, [v37 UTF8String]);
                            v20 = (&v51 + HIBYTE(v51.__r_.__value_.__r.__words[2]));
                            if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                            {
                              v21 = &v51;
                            }

                            else
                            {
                              v20 = (v51.__r_.__value_.__r.__words[0] + v51.__r_.__value_.__l.__size_);
                              v21 = v51.__r_.__value_.__r.__words[0];
                            }

                            v38 = v20;
                            while (v21 != v20)
                            {
                              v21->__r_.__value_.__s.__data_[0] = __toupper(v21->__r_.__value_.__s.__data_[0]);
                              v21 = (v21 + 1);
                              v20 = v38;
                            }
                          }
                        }

                        if ([v39 caseInsensitiveCompare:@"Allowed"] && objc_msgSend(v39, "caseInsensitiveCompare:", @"Warning"))
                        {
                          v27 = 0;
                        }

                        else if (sub_100318068(&v51, "FLEX_POLICY"))
                        {
                          v27 = 2;
                        }

                        else
                        {
                          v27 = 1;
                        }

                        v58 = 0u;
                        v59 = 0u;
                        v56 = 0u;
                        v57 = 0u;
                        v54 = 0u;
                        v55 = 0u;
                        v53 = 0u;
                        *buf = 0u;
                        v28 = v15;
                        sub_10000501C(&v54, [v15 UTF8String]);
                        v29 = v16;
                        sub_10000501C(&v55 + 1, [v16 UTF8String]);
                        v30 = v17;
                        sub_10000501C(&v57, [v17 UTF8String]);
                        v31 = v40;
                        sub_10000501C(&v58 + 1, [v40 UTF8String]);
                        sub_100295360(buf, __p);
                        v61 = __p;
                        *(sub_10063DB40(a2, __p, &unk_101802C98, &v61) + 56) = v27;
                        if (v46 < 0)
                        {
                          operator delete(__p[0]);
                        }

                        sub_10028084C(buf);
                        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v51.__r_.__value_.__l.__data_);
                        }
                      }

                      else
                      {
                        v26 = *sub_1000201E0();
                        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Missing result", buf, 2u);
                        }
                      }
                    }

                    else
                    {
                      v25 = *sub_1000201E0();
                      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Missing gid2", buf, 2u);
                      }
                    }
                  }

                  else
                  {
                    v24 = *sub_1000201E0();
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Missing gid1", buf, 2u);
                    }
                  }
                }

                else
                {
                  v23 = *sub_1000201E0();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Missing mnc", buf, 2u);
                  }
                }
              }

              else
              {
                v22 = *sub_1000201E0();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Missing mcc", buf, 2u);
                }
              }

              if (++v2 >= v10)
              {
                v10 = [v9 countByEnumeratingWithState:&v47 objects:v62 count:16];
                if (!v10)
                {
                  v11 = 1;
                  goto LABEL_90;
                }

                v2 = 0;
              }
            }
          }
        }

        v34 = *sub_1000201E0();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (appMetadataEval)", buf, 2u);
        }

        v9 = [v44 objectForKey:@"result"];
        if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          if (![v9 caseInsensitiveCompare:@"Allowed"] || !objc_msgSend(v9, "caseInsensitiveCompare:", @"Warning"))
          {
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v53 = 0u;
            *buf = 0u;
            sub_100295360(buf, &v51);
            __p[0] = &v51;
            *(sub_10063DB40(a2, &v51, &unk_101802C98, __p) + 56) = 1;
            if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v51.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v59) < 0)
            {
              operator delete(*(&v58 + 1));
            }

            if (SBYTE7(v58) < 0)
            {
              operator delete(v57);
            }

            if (SHIBYTE(v56) < 0)
            {
              operator delete(*(&v55 + 1));
            }

            if (SBYTE7(v55) < 0)
            {
              operator delete(v54);
            }

            if (BYTE8(v53) == 1 && SBYTE7(v53) < 0)
            {
              operator delete(*buf);
            }

            v11 = 0;
            LODWORD(v2) = 1;
LABEL_90:

            goto LABEL_91;
          }
        }

        else
        {
          v35 = *sub_1000201E0();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (result)", buf, 2u);
          }
        }

        v11 = 0;
        LODWORD(v2) = 0;
        goto LABEL_90;
      }
    }

    v32 = sub_1000201E0();
    if (os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
    {
      sub_1017762D8();
    }

    v11 = 0;
    LODWORD(v2) = 0;
LABEL_91:

    goto LABEL_92;
  }

  v33 = sub_1000201E0();
  if (os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
  {
    sub_1017762A4();
  }

  v11 = 0;
  LODWORD(v2) = 0;
LABEL_92:
  objc_autoreleasePoolPop(v4);
  return (v11 | v2) & 1;
}

void sub_100639ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, void *a16, void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_10028084C(&a39);
  if (a38 < 0)
  {
    operator delete(a33);
  }

  _Unwind_Resume(a1);
}

BOOL sub_10063A08C(int a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  if (*a3 == a3[1])
  {
    v15 = 0;
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v18 = 0;
    ctu::base64::encode();
    v20[0] = @"requestHandOff";
    v19[0] = @"action";
    v19[1] = @"kSessionId";
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    v10 = [NSString stringWithFormat:@"%s", v9];
    v11 = @"lpaSignedRequest";
    v20[1] = v10;
    if (a1)
    {
      v11 = @"signedIdMapInfo";
    }

    v19[2] = v11;
    v12 = __p;
    if (v18 < 0)
    {
      v12 = __p[0];
    }

    v13 = [NSString stringWithFormat:@"%s", v12];
    v20[2] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];

    v15 = sub_100634E10(v14, a4);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  objc_autoreleasePoolPop(v8);
  return v15;
}

void sub_10063A228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10063A270(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = *a1;
  if (*a1)
  {
    v21 = 0;
    v8 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v21];
    v9 = v21;
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8 == 0;
    }

    if (v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v14 = sub_1000201E0();
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        sub_1017762D8();
      }

      v13 = 0;
    }

    else
    {
      v11 = [v8 objectForKey:@"handoffToken"];
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v12 = [v8 objectForKey:@"podIdentifier"];
        if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          sub_10000501C(&v19, [v11 UTF8String]);
          if (*(a2 + 23) < 0)
          {
            operator delete(*a2);
          }

          *a2 = v19;
          *(a2 + 16) = v20;
          sub_10000501C(&v19, [v12 UTF8String]);
          if (*(a3 + 23) < 0)
          {
            operator delete(*a3);
          }

          *a3 = v19;
          *(a3 + 16) = v20;
          v13 = 1;
        }

        else
        {
          v17 = *sub_1000201E0();
          v13 = 0;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v19) = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (podIdentifier)", &v19, 2u);
            v13 = 0;
          }
        }
      }

      else
      {
        v16 = *sub_1000201E0();
        v13 = 0;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (handoffToken)", &v19, 2u);
          v13 = 0;
        }
      }
    }
  }

  else
  {
    v15 = sub_1000201E0();
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      sub_1017762A4();
    }

    v13 = 0;
  }

  objc_autoreleasePoolPop(v6);
  return v13;
}

BOOL sub_10063A550(int a1, void *a2, uint64_t **a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  if (*a2 == a2[1])
  {
    v19 = sub_1000201E0();
    if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      sub_101776410();
    }

    goto LABEL_17;
  }

  if (*a3 == a3[1])
  {
    v20 = sub_1000201E0();
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      sub_1017763DC();
    }

LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  __p[0] = 0;
  __p[1] = 0;
  v23 = 0;
  ctu::base64::encode();
  v9 = objc_alloc_init(NSMutableArray);
  v10 = *a3;
  v11 = a3[1];
  if (*a3 != v11)
  {
    do
    {
      v12 = v10;
      if (*(v10 + 23) < 0)
      {
        v12 = *v10;
      }

      v13 = [NSString stringWithFormat:@"%s", v12];
      [v9 addObject:v13];

      v10 += 24;
    }

    while (v10 != v11);
  }

  v14 = @"lpaSignedRequest";
  if (a1)
  {
    v14 = @"signedIdMapInfo";
  }

  v24[0] = v14;
  v15 = __p;
  if (v23 < 0)
  {
    v15 = __p[0];
  }

  v16 = [NSString stringWithFormat:@"%s", v15];
  v24[1] = @"iccids";
  v25[0] = v16;
  v25[1] = v9;
  v17 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];

  v18 = sub_100634E10(v17, a4);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_18:
  objc_autoreleasePoolPop(v8);
  return v18;
}

void sub_10063A774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10063A7CC(uint64_t *a1, uint64_t *a2)
{
  context = objc_autoreleasePoolPush();
  v3 = *a1;
  if (*a1)
  {
    v131 = 0;
    v90 = [NSJSONSerialization JSONObjectWithData:v3 options:0 error:&v131];
    v87 = v131;
    if (v87)
    {
      v4 = 1;
    }

    else
    {
      v4 = v90 == 0;
    }

    if (v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v72 = sub_1000201E0();
      if (os_log_type_enabled(*v72, OS_LOG_TYPE_ERROR))
      {
        sub_1017762D8();
      }

      v73 = 0;
    }

    else
    {
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      obj = v90;
      v93 = [obj countByEnumeratingWithState:&v127 objects:v146 count:16];
      if (v93)
      {
        v99 = 0;
        *&v5 = 67109120;
        v78 = v5;
        v91 = *v128;
        for (i = *v128; ; i = *v128)
        {
          if (i != v91)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v127 + 1) + 8 * v99);
          v98 = [v7 objectForKey:{@"responseDetails", v78}];
          if (v98)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v8 = *sub_1000201E0();
              if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
              {
                v18 = v98;
                v19 = [v98 UTF8String];
                *buf = 136315138;
                *&buf[4] = v19;
                _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Response details: %s", buf, 0xCu);
              }
            }
          }

          v100 = [v7 objectForKey:@"responseCode"];
          v97 = [v7 objectForKey:@"carrier"];
          v96 = [v7 objectForKey:@"ICCID"];
          v95 = [v7 objectForKey:@"planStatus"];
          if (v100 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v9 = [v100 intValue];
            if (v9 != 2500 && v9 != 2404)
            {
              if (v9 != 2000)
              {
                v15 = *sub_1000201E0();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  v16 = [v100 intValue];
                  *buf = v78;
                  *&buf[4] = v16;
                  _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid response code: %d", buf, 8u);
                }

                goto LABEL_36;
              }

              if (!v95 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                v17 = sub_1000201E0();
                if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
                {
                  sub_10177654C(&v123, v124);
                }

                goto LABEL_36;
              }
            }

            if (v97)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & (v96 != 0)) == 1)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v140 = 0;
                  v137 = 2;
                  memset(v136, 0, sizeof(v136));
                  v135 = 0u;
                  memset(buf, 0, sizeof(buf));
                  v139 = 0;
                  v138 = 0uLL;
                  v141 = 0u;
                  v142 = 0u;
                  __src = 0u;
                  v144 = 0u;
                  v145 = 0u;
                  v10 = v96;
                  sub_10000501C(v147, [v96 UTF8String]);
                  if (buf[31] < 0)
                  {
                    operator delete(*&buf[8]);
                  }

                  *&buf[8] = *v147;
                  *&buf[24] = *&v147[16];
                  v11 = v97;
                  sub_10000501C(v147, [v97 UTF8String]);
                  if (SHIBYTE(v136[3]) < 0)
                  {
                    operator delete(*&v136[1]);
                  }

                  *&v136[1] = *v147;
                  v136[3] = *&v147[16];
                  v86 = [v7 objectForKey:@"planDescription"];
                  if (v86)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v12 = v86;
                      sub_10000501C(v147, [v86 UTF8String]);
                      if (SHIBYTE(v139) < 0)
                      {
                        operator delete(v138);
                      }

                      v138 = *v147;
                      v139 = *&v147[16];
                    }

                    else
                    {
                      v20 = *sub_1000201E0();
                      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                      {
                        v70 = &buf[8];
                        if ((buf[31] & 0x80u) != 0)
                        {
                          v70 = *&buf[8];
                        }

                        *v147 = 136315138;
                        *&v147[4] = v70;
                        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Invalid object type for plan description: %s", v147, 0xCu);
                      }
                    }
                  }

                  if (v95)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      if ([v95 isEqualToString:@"NotSubscribed"])
                      {
                        v21 = 4;
                        goto LABEL_57;
                      }

                      if ([v95 isEqualToString:@"Subscribed"])
                      {
                        v21 = 1;
                        goto LABEL_57;
                      }

                      if ([v95 isEqualToString:@"Depleted"])
                      {
                        v21 = 2;
                        goto LABEL_57;
                      }

                      if ([v95 isEqualToString:@"Throttled"])
                      {
                        v21 = 3;
LABEL_57:
                        LODWORD(v140) = v21;
                      }
                    }
                  }

                  v84 = [v7 objectForKey:@"planType"];
                  if (v84)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      if ([v84 isEqualToString:@"PrePaid"])
                      {
                        v22 = 0;
                        goto LABEL_64;
                      }

                      if ([v84 isEqualToString:@"PostPaid"])
                      {
                        v22 = 1;
LABEL_64:
                        LOBYTE(v137) = v22;
                      }
                    }
                  }

                  v85 = [v7 objectForKey:@"accountURL"];
                  if (v85)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v23 = v85;
                      sub_100016890(&v141, [v85 UTF8String]);
                      goto LABEL_68;
                    }

                    v69 = *sub_1000201E0();
                    v68 = v85;
                    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                    {
                      v71 = &buf[8];
                      if ((buf[31] & 0x80u) != 0)
                      {
                        v71 = *&buf[8];
                      }

                      *v147 = 136315138;
                      *&v147[4] = v71;
                      _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "Invalid object type for account URL, skipping for ICCID: %s", v147, 0xCu);
                    }
                  }

                  else
                  {
LABEL_68:
                    v79 = [v7 objectForKey:@"autoRenew"];
                    if (v79)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        LOBYTE(v135) = [v79 intValue] != 0;
                      }
                    }

                    v80 = [v7 objectForKey:@"billingStartDate"];
                    if (v80)
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) != 0 && !sub_100637B38(v80, &v135 + 1))
                      {
                        v24 = sub_1000201E0();
                        if (os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
                        {
                          sub_101776444(&v119, v120);
                        }
                      }
                    }

                    v81 = [v7 objectForKey:@"billingEndDate"];
                    if (v81)
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) != 0 && !sub_100637B38(v81, v136))
                      {
                        v25 = sub_1000201E0();
                        if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
                        {
                          sub_101776470(&v117, v118);
                        }
                      }
                    }

                    v82 = [v7 objectForKey:@"timestamp"];
                    if (v82)
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) != 0 && !sub_100637B38(v82, &v142 + 1))
                      {
                        v26 = sub_1000201E0();
                        if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
                        {
                          sub_10177649C(&v115, v116);
                        }
                      }
                    }

                    v83 = [v7 objectForKey:@"dataUsage"];
                    if (v83)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v113 = 0u;
                        v114 = 0u;
                        v112 = 0u;
                        v111 = 0u;
                        v94 = v83;
                        v27 = [v94 countByEnumeratingWithState:&v111 objects:v133 count:16];
                        if (v27)
                        {
                          v28 = *v112;
                          do
                          {
                            v29 = 0;
                            do
                            {
                              if (*v112 != v28)
                              {
                                objc_enumerationMutation(v94);
                              }

                              v30 = *(*(&v111 + 1) + 8 * v29);
                              if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v31 = [v30 objectForKey:@"dataUsed"];
                                v32 = [v30 objectForKey:@"dataCapacity"];
                                v33 = [v30 objectForKey:@"dataCategory"];
                                if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & (v32 != 0)) == 1) && (objc_opt_class(), (objc_opt_isKindOfClass() & (v33 != 0)) == 1) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v34 = v145;
                                  if (v145 >= *(&v145 + 1))
                                  {
                                    v35 = sub_10063D394(&v144 + 1);
                                  }

                                  else
                                  {
                                    *(v145 + 32) = 0;
                                    v35 = v34 + 40;
                                    *v34 = 0u;
                                    v34[1] = 0u;
                                  }

                                  *&v145 = v35;
                                  [v32 doubleValue];
                                  *(v35 - 32) = v38;
                                  [v31 doubleValue];
                                  *(v35 - 40) = v39;
                                  v40 = v33;
                                  sub_10000501C(v147, [v33 UTF8String]);
                                  v41 = (v35 - 24);
                                  if (*(v35 - 1) < 0)
                                  {
                                    operator delete(*v41);
                                  }

                                  v42 = *v147;
                                  *(v35 - 8) = *&v147[16];
                                  *v41 = v42;
                                  v43 = *sub_1000201E0();
                                  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                                  {
                                    if (*(v35 - 1) < 0)
                                    {
                                      v41 = *v41;
                                    }

                                    v44 = *(v35 - 40);
                                    v45 = *(v35 - 32);
                                    *v147 = 136315650;
                                    *&v147[4] = v41;
                                    *&v147[12] = 2048;
                                    *&v147[14] = v44;
                                    *&v147[22] = 2048;
                                    v148 = v45;
                                    _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Data Usage - %s %f/%f", v147, 0x20u);
                                  }
                                }

                                else
                                {
                                  v37 = sub_1000201E0();
                                  if (os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
                                  {
                                    sub_1017764C8(&v107, v108);
                                  }
                                }
                              }

                              else
                              {
                                v36 = sub_1000201E0();
                                if (os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
                                {
                                  sub_1017764F4(&v109, v110);
                                }
                              }

                              v29 = v29 + 1;
                            }

                            while (v27 != v29);
                            v46 = [v94 countByEnumeratingWithState:&v111 objects:v133 count:16];
                            v27 = v46;
                          }

                          while (v46);
                        }
                      }
                    }

                    v47 = [v7 objectForKey:@"homeCountryIso"];
                    if (v47)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v105 = 0u;
                        v106 = 0u;
                        v103 = 0u;
                        v104 = 0u;
                        v48 = v47;
                        v49 = [v48 countByEnumeratingWithState:&v103 objects:v132 count:16];
                        if (v49)
                        {
                          v50 = *v104;
                          do
                          {
                            for (j = 0; j != v49; j = j + 1)
                            {
                              if (*v104 != v50)
                              {
                                objc_enumerationMutation(v48);
                              }

                              v52 = *(*(&v103 + 1) + 8 * j);
                              if (v52)
                              {
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v53 = v52;
                                  sub_10000501C(v101, [v52 UTF8String]);
                                  v54 = *(&__src + 1);
                                  if (*(&__src + 1) >= v144)
                                  {
                                    v56 = 0xAAAAAAAAAAAAAAABLL * ((*(&__src + 1) - __src) >> 3);
                                    v57 = v56 + 1;
                                    if (v56 + 1 > 0xAAAAAAAAAAAAAAALL)
                                    {
                                      sub_1000CE3D4();
                                    }

                                    if (0x5555555555555556 * ((v144 - __src) >> 3) > v57)
                                    {
                                      v57 = 0x5555555555555556 * ((v144 - __src) >> 3);
                                    }

                                    if (0xAAAAAAAAAAAAAAABLL * ((v144 - __src) >> 3) >= 0x555555555555555)
                                    {
                                      v58 = 0xAAAAAAAAAAAAAAALL;
                                    }

                                    else
                                    {
                                      v58 = v57;
                                    }

                                    p_src = &__src;
                                    if (v58)
                                    {
                                      sub_100005348(&__src, v58);
                                    }

                                    v59 = 8 * ((*(&__src + 1) - __src) >> 3);
                                    v60 = *v101;
                                    *(v59 + 16) = v102;
                                    *v59 = v60;
                                    v101[1] = 0;
                                    v102 = 0;
                                    v101[0] = 0;
                                    v61 = 24 * v56 + 24;
                                    v62 = 24 * v56 - (*(&__src + 1) - __src);
                                    memcpy((v59 - (*(&__src + 1) - __src)), __src, *(&__src + 1) - __src);
                                    v63 = __src;
                                    v64 = v144;
                                    *&__src = v62;
                                    *(&__src + 1) = v61;
                                    *&v144 = 0;
                                    *&v147[16] = v63;
                                    v148 = v64;
                                    *v147 = v63;
                                    *&v147[8] = v63;
                                    sub_1000054E0(v147);
                                    *(&__src + 1) = v61;
                                    if (SHIBYTE(v102) < 0)
                                    {
                                      operator delete(v101[0]);
                                    }
                                  }

                                  else
                                  {
                                    v55 = *v101;
                                    *(*(&__src + 1) + 16) = v102;
                                    *v54 = v55;
                                    *(&__src + 1) = v54 + 24;
                                  }
                                }
                              }
                            }

                            v49 = [v48 countByEnumeratingWithState:&v103 objects:v132 count:16];
                          }

                          while (v49);
                        }
                      }
                    }

                    v65 = a2[1];
                    if (v65 >= a2[2])
                    {
                      v66 = sub_10063D604(a2, buf);
                      v67 = a2;
                    }

                    else
                    {
                      sub_10016AB7C(a2[1], buf);
                      v66 = v65 + 200;
                      v67 = a2;
                      a2[1] = v65 + 200;
                    }

                    v67[1] = v66;

                    v68 = v85;
                  }

                  *v147 = &v144 + 8;
                  sub_1000E2794(v147);
                  *v147 = &__src;
                  sub_1000087B4(v147);
                  if (SBYTE7(v142) < 0)
                  {
                    operator delete(v141);
                  }

                  if (SHIBYTE(v139) < 0)
                  {
                    operator delete(v138);
                  }

                  if (SHIBYTE(v136[3]) < 0)
                  {
                    operator delete(*&v136[1]);
                  }

                  if (buf[31] < 0)
                  {
                    operator delete(*&buf[8]);
                  }

                  goto LABEL_36;
                }
              }
            }

            v14 = sub_1000201E0();
            if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
            {
              sub_101776520(&v121, v122);
            }
          }

          else
          {
            v13 = sub_1000201E0();
            if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
            {
              sub_101776578(&v125, v126);
            }
          }

LABEL_36:

          if (++v99 >= v93)
          {
            v93 = [obj countByEnumeratingWithState:&v127 objects:v146 count:16];
            if (!v93)
            {
              break;
            }

            v99 = 0;
          }
        }
      }

      v75 = *sub_1000201E0();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        v76 = 0x8F5C28F5C28F5C29 * ((a2[1] - *a2) >> 3);
        *buf = 134217984;
        *&buf[4] = v76;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "#I Decoded %lu subscription details", buf, 0xCu);
      }

      v73 = 1;
    }
  }

  else
  {
    v74 = sub_1000201E0();
    if (os_log_type_enabled(*v74, OS_LOG_TYPE_ERROR))
    {
      sub_1017762A4();
    }

    v73 = 0;
  }

  objc_autoreleasePoolPop(context);
  return v73;
}

void sub_10063B87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, void *a21, uint64_t a22, void *a23, void *a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, void *a35, void *a36, void *a37, uint64_t a38, void *a39)
{
  sub_10016AFCC(&STACK[0x360]);

  _Unwind_Resume(a1);
}

BOOL sub_10063BAA4(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (*a1 == a1[1])
  {
    v7 = 0;
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v10 = 0;
    ctu::base64::encode();
    v11 = @"lpaSignedRequest";
    v5 = [NSString stringWithFormat:@"%s", __p];
    v12 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

    v7 = sub_100634E10(v6, a2);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }

  objc_autoreleasePoolPop(v4);
  return v7;
}

void sub_10063BBCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10063BC08(uint64_t *a1, std::string *a2, std::string *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = *a1;
  if (*a1)
  {
    v21 = 0;
    v8 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v21];
    v9 = v21;
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8 == 0;
    }

    if (v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v14 = sub_1000201E0();
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        sub_1017762D8();
      }

      v13 = 0;
    }

    else
    {
      v11 = [v8 objectForKey:@"sessionId"];
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v12 = [v8 objectForKey:@"token"];
        if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          sub_100016890(a2, [v11 UTF8String]);
          sub_100016890(a3, [v12 UTF8String]);
          v13 = 1;
        }

        else
        {
          v17 = *sub_1000201E0();
          v13 = 0;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *v19 = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (pushToken)", v19, 2u);
            v13 = 0;
          }
        }
      }

      else
      {
        v16 = *sub_1000201E0();
        v13 = 0;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (session)", buf, 2u);
          v13 = 0;
        }
      }
    }
  }

  else
  {
    v15 = sub_1000201E0();
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      sub_1017762A4();
    }

    v13 = 0;
  }

  objc_autoreleasePoolPop(v6);
  return v13;
}

void sub_10063BEA0(uint64_t **a1@<X0>, const void **a2@<X8>)
{
  v4 = objc_autoreleasePoolPush();
  if (a1[1] == *a1)
  {
    *a2 = 0;
  }

  else
  {
    v18 = v4;
    v19 = a2;
    v5 = objc_opt_new();
    v7 = *a1;
    v6 = a1[1];
    if (*a1 != v6)
    {
      do
      {
        if ((*(v7 + 120) & 1) == 0)
        {
          if ((*(v7 + 23) & 0x80000000) == 0)
          {
            v8 = v7;
            if (!*(v7 + 23))
            {
              goto LABEL_31;
            }

LABEL_9:
            v9 = [NSString stringWithUTF8String:v8];
            v10 = (v7 + 24);
            if (*(v7 + 47) < 0)
            {
              if (!*(v7 + 32))
              {
                goto LABEL_15;
              }

              v10 = *v10;
            }

            else if (!*(v7 + 47))
            {
LABEL_15:
              v11 = 0;
LABEL_16:
              v12 = (v7 + 72);
              if (*(v7 + 95) < 0)
              {
                if (!*(v7 + 80))
                {
                  goto LABEL_22;
                }

                v12 = *v12;
              }

              else if (!*(v7 + 95))
              {
LABEL_22:
                v13 = 0;
LABEL_23:
                v14 = (v7 + 48);
                if (*(v7 + 71) < 0)
                {
                  if (!*(v7 + 56))
                  {
                    goto LABEL_29;
                  }

                  v14 = *v14;
                }

                else if (!*(v7 + 71))
                {
LABEL_29:
                  v15 = 0;
                  goto LABEL_30;
                }

                v15 = [NSString stringWithUTF8String:v14];
LABEL_30:
                v16 = [[CTPendingPlan alloc] initWithSmdpURL:v9 matchingID:v11 iccidHash:v13];
                v17 = [[CTDisplayPlan alloc] initWithPlan:v16 status:1 attributes:0 isPhysical:0 carrierName:v15 phoneNumber:0 label:0];
                [v5 addObject:v17];

                goto LABEL_31;
              }

              v13 = [NSString stringWithUTF8String:v12];
              goto LABEL_23;
            }

            v11 = [NSString stringWithUTF8String:v10];
            goto LABEL_16;
          }

          if (*(v7 + 8))
          {
            v8 = *v7;
            goto LABEL_9;
          }
        }

LABEL_31:
        v7 += 312;
      }

      while (v7 != v6);
    }

    v20 = v5;
    sub_10063C100(v19, &v20);

    v4 = v18;
  }

  objc_autoreleasePoolPop(v4);
}

const void **sub_10063C100(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

BOOL sub_10063C138(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = a1[1];
  }

  if (!v8 || *a2 == a2[1])
  {
    v15 = 0;
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v18 = 0;
    ctu::base64::encode();
    v19[0] = @"sessionId";
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    v10 = [NSString stringWithFormat:@"%s", v9];
    v20[0] = v10;
    v19[1] = @"lpaSignedRequest";
    v11 = __p;
    if (v18 < 0)
    {
      v11 = __p[0];
    }

    v12 = [NSString stringWithFormat:@"%s", v11];
    v20[1] = v12;
    v19[2] = @"action";
    v13 = [NSString stringWithFormat:@"%s", encodeCarrierSetupAction()];
    v20[2] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];

    v15 = sub_100634E10(v14, a4);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  objc_autoreleasePoolPop(v7);
  return v15;
}

void sub_10063C304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10063C358(uint64_t *a1, uint64_t a2, void *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = *a1;
  if (*a1)
  {
    v55 = a3;
    v60 = 0;
    v8 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v60];
    v9 = v60;
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8 == 0;
    }

    if (v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v38 = sub_1000201E0();
      if (os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
      {
        sub_1017762D8();
      }

      v39 = 0;
    }

    else
    {
      v52 = [v8 objectForKey:@"sessionId"];
      if (v52 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v11 = v52;
        sub_10000501C(buf, [v52 UTF8String]);
        if (*(a2 + 23) < 0)
        {
          operator delete(*a2);
        }

        *a2 = *buf;
        *(a2 + 16) = *&buf[16];
        v12 = *sub_1000201E0();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 23) >= 0)
          {
            v13 = a2;
          }

          else
          {
            v13 = *a2;
          }

          *buf = 136315138;
          *&buf[4] = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I sessionId [%s]", buf, 0xCu);
        }

        v46 = [v8 objectForKey:@"setupOptions"];
        if (v46)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            obj = v46;
            v14 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
            if (v14)
            {
              v16 = 0;
              *&v15 = 136315906;
              v43 = v15;
              v53 = *v57;
              for (i = *v57; ; i = *v57)
              {
                if (i != v53)
                {
                  objc_enumerationMutation(obj);
                }

                v18 = *(*(&v56 + 1) + 8 * v16);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v19 = [v18 objectForKey:@"setupUrl"];
                  if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v20 = v55[1];
                    if (v20 >= v55[2])
                    {
                      v21 = sub_10063D74C(v55);
                    }

                    else
                    {
                      v20[10] = 0u;
                      v20[11] = 0u;
                      v20[8] = 0u;
                      v20[9] = 0u;
                      v20[6] = 0u;
                      v20[7] = 0u;
                      v20[4] = 0u;
                      v20[5] = 0u;
                      v20[2] = 0u;
                      v20[3] = 0u;
                      v21 = (v20 + 12);
                      *v20 = 0u;
                      v20[1] = 0u;
                    }

                    v55[1] = v21;
                    v24 = v19;
                    sub_100016890((v21 - 72), [v19 UTF8String]);
                    [v18 objectForKey:@"carrier"];
                    v51 = v47 = (v21 - 192);
                    if (v51)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v25 = v51;
                        sub_100016890(v47, [v51 UTF8String]);
                      }
                    }

                    v50 = [v18 objectForKey:{@"imsiPrefix", v43}];
                    if (v50)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v26 = v50;
                        sub_100016890((v21 - 168), [v50 UTF8String]);
                      }
                    }

                    v49 = [v18 objectForKey:@"gid1"];
                    if (v49)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v27 = v49;
                        sub_100016890((v21 - 144), [v49 UTF8String]);
                      }
                    }

                    v48 = [v18 objectForKey:@"gid2"];
                    if (v48)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v28 = v48;
                        sub_100016890((v21 - 120), [v48 UTF8String]);
                      }
                    }

                    v29 = [v18 objectForKey:@"setupType"];
                    if (v29)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v30 = v29;
                        sub_100016890((v21 - 96), [v29 UTF8String]);
                      }
                    }

                    v31 = [v18 objectForKey:@"handoffToken"];
                    if (v31)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v32 = v31;
                        sub_100016890((v21 - 48), [v31 UTF8String]);
                      }
                    }

                    v33 = [v18 objectForKey:@"esimInstallDetails"];
                    if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v45 = [v33 objectForKey:@"phoneNumber"];
                      if (v45)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          sub_100016890((v21 - 24), [v45 UTF8String]);
                        }
                      }

                      log = *sub_1000201E0();
                      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                      {
                        if (*(v21 - 169) < 0)
                        {
                          v47 = v47->__r_.__value_.__r.__words[0];
                        }

                        v34 = v21 - 72;
                        v35 = (v21 - 96);
                        if (*(v21 - 73) < 0)
                        {
                          v35 = *v35;
                        }

                        if (*(v21 - 49) < 0)
                        {
                          v34 = *(v21 - 72);
                        }

                        v36 = (v21 - 24);
                        if (*(v21 - 1) < 0)
                        {
                          v36 = *v36;
                        }

                        *buf = v43;
                        *&buf[4] = v47;
                        *&buf[12] = 2080;
                        *&buf[14] = v35;
                        *&buf[22] = 2080;
                        v62 = v34;
                        v63 = 2080;
                        v64 = v36;
                        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I fCarrierName [%s] fSetupType [%s] fSetupURL [%s] fPhoneNumber [%s]", buf, 0x2Au);
                      }
                    }

                    else
                    {
                      v37 = *sub_1000201E0();
                      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (esimInstallDetailObj element)", buf, 2u);
                      }
                    }
                  }

                  else
                  {
                    v23 = *sub_1000201E0();
                    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (setupUrl)", buf, 2u);
                    }
                  }
                }

                else
                {
                  v22 = *sub_1000201E0();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Element not found or invalid type (setupOption element)", buf, 2u);
                  }
                }

                if (++v16 >= v14)
                {
                  v14 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
                  if (!v14)
                  {
                    break;
                  }

                  v16 = 0;
                }
              }
            }
          }
        }

        v39 = 1;
      }

      else
      {
        v41 = sub_1000201E0();
        if (os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
        {
          sub_10177630C();
        }

        v39 = 0;
      }
    }
  }

  else
  {
    v40 = sub_1000201E0();
    if (os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
    {
      sub_1017762A4();
    }

    v39 = 0;
  }

  objc_autoreleasePoolPop(v6);
  return v39;
}

void sub_10063CCA0(const std::string **a1@<X0>, char a2@<W1>, const void **a3@<X8>)
{
  context = objc_autoreleasePoolPush();
  if (a1[1] == *a1)
  {
    *a3 = 0;
  }

  else
  {
    v29 = a3;
    v5 = objc_opt_new();
    v6 = *a1;
    v32 = v5;
    v33 = a1[1];
    if (*a1 != v33)
    {
      do
      {
        v7 = HIBYTE(v6[1].__r_.__value_.__r.__words[2]);
        size = v7;
        if (SHIBYTE(v6[1].__r_.__value_.__r.__words[2]) < 0)
        {
          size = v6[1].__r_.__value_.__l.__size_;
        }

        v9 = &v6[1];
        if (size <= 3)
        {
          v10 = *sub_1000201E0();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            if (SHIBYTE(v6[1].__r_.__value_.__r.__words[2]) < 0)
            {
              v9 = v9->__words[0];
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
            *(buf.__r_.__value_.__r.__words + 4) = v9;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Invalid imsiPrefix [%s]", &buf, 0xCu);
          }

          goto LABEL_71;
        }

        if (SHIBYTE(v6->__r_.__value_.__r.__words[2]) < 0)
        {
          if (v6->__r_.__value_.__l.__size_)
          {
            v11 = v6->__r_.__value_.__r.__words[0];
LABEL_15:
            v34 = [NSString stringWithUTF8String:v11];
            v7 = HIBYTE(v6[1].__r_.__value_.__r.__words[2]);
            goto LABEL_17;
          }
        }

        else
        {
          v11 = v6;
          if (*(&v6->__r_.__value_.__s + 23))
          {
            goto LABEL_15;
          }
        }

        v34 = 0;
LABEL_17:
        if ((v7 & 0x80) != 0)
        {
          if (!v6[1].__r_.__value_.__l.__size_)
          {
LABEL_32:
            v13 = 0;
            if ((v7 & 0x80) == 0)
            {
              goto LABEL_25;
            }

            goto LABEL_33;
          }
        }

        else if (!v7)
        {
          goto LABEL_32;
        }

        std::string::basic_string(&buf, v6 + 1, 0, 3uLL, &v35);
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        v13 = [NSString stringWithUTF8String:p_buf];
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v7 = HIBYTE(v6[1].__r_.__value_.__r.__words[2]);
        if ((v7 & 0x80) == 0)
        {
LABEL_25:
          if (!v7)
          {
            goto LABEL_34;
          }

          goto LABEL_26;
        }

LABEL_33:
        if (!v6[1].__r_.__value_.__l.__size_)
        {
LABEL_34:
          v15 = 0;
          goto LABEL_35;
        }

LABEL_26:
        std::string::basic_string(&buf, v6 + 1, 3uLL, 0xFFFFFFFFFFFFFFFFLL, &v35);
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = &buf;
        }

        else
        {
          v14 = buf.__r_.__value_.__r.__words[0];
        }

        v15 = [NSString stringWithUTF8String:v14];
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

LABEL_35:
        v16 = &v6[2];
        if (SHIBYTE(v6[2].__r_.__value_.__r.__words[2]) < 0)
        {
          if (v6[2].__r_.__value_.__l.__size_)
          {
            v16 = v16->__words[0];
LABEL_40:
            v17 = [NSString stringWithUTF8String:v16];
            goto LABEL_42;
          }
        }

        else if (*(&v6[2].__r_.__value_.__s + 23))
        {
          goto LABEL_40;
        }

        v17 = 0;
LABEL_42:
        v18 = &v6[3];
        if (SHIBYTE(v6[3].__r_.__value_.__r.__words[2]) < 0)
        {
          if (v6[3].__r_.__value_.__l.__size_)
          {
            v18 = v18->__words[0];
LABEL_47:
            v19 = [NSString stringWithUTF8String:v18];
            goto LABEL_49;
          }
        }

        else if (*(&v6[3].__r_.__value_.__s + 23))
        {
          goto LABEL_47;
        }

        v19 = 0;
LABEL_49:
        v20 = &v6[5];
        if (SHIBYTE(v6[5].__r_.__value_.__r.__words[2]) < 0)
        {
          if (v6[5].__r_.__value_.__l.__size_)
          {
            v20 = v20->__words[0];
LABEL_54:
            v21 = [NSString stringWithUTF8String:v20];
            goto LABEL_56;
          }
        }

        else if (*(&v6[5].__r_.__value_.__s + 23))
        {
          goto LABEL_54;
        }

        v21 = 0;
LABEL_56:
        v22 = &v6[6];
        if (SHIBYTE(v6[6].__r_.__value_.__r.__words[2]) < 0)
        {
          if (v6[6].__r_.__value_.__l.__size_)
          {
            v22 = v22->__words[0];
LABEL_61:
            v23 = [NSString stringWithUTF8String:v22];
            goto LABEL_63;
          }
        }

        else if (*(&v6[6].__r_.__value_.__s + 23))
        {
          goto LABEL_61;
        }

        v23 = 0;
LABEL_63:
        v24 = &v6[7];
        if (SHIBYTE(v6[7].__r_.__value_.__r.__words[2]) < 0)
        {
          if (!v6[7].__r_.__value_.__l.__size_)
          {
LABEL_69:
            v25 = 0;
            goto LABEL_70;
          }

          v24 = v24->__words[0];
        }

        else if (!*(&v6[7].__r_.__value_.__s + 23))
        {
          goto LABEL_69;
        }

        v25 = [NSString stringWithUTF8String:v24];
LABEL_70:
        LOBYTE(v28) = a2;
        v26 = [[CTODAPlan alloc] initWithSetupUrl:v21 mcc:v13 mnc:v15 gid1:v17 gid2:v19 handoffToken:v23 inBuddy:v28];
        v27 = [[CTDisplayPlan alloc] initWithPlan:v26 status:1 attributes:16 isPhysical:0 carrierName:v34 phoneNumber:v25 label:0];
        [v32 addObject:v27];

LABEL_71:
        v6 += 8;
      }

      while (v6 != v33);
    }

    buf.__r_.__value_.__r.__words[0] = v32;
    sub_10063C100(v29, &buf.__r_.__value_.__l.__data_);
  }

  objc_autoreleasePoolPop(context);
}

BOOL sub_10063D1C8(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = a1[1];
  }

  if (!v7 || *a2 == a2[1])
  {
    v13 = 0;
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v16 = 0;
    ctu::base64::encode();
    v17[0] = @"sessionId";
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = [NSString stringWithFormat:@"%s", v8];
    v17[1] = @"lpaSignedRequest";
    v18[0] = v9;
    v10 = __p;
    if (v16 < 0)
    {
      v10 = __p[0];
    }

    v11 = [NSString stringWithFormat:@"%s", v10];
    v18[1] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

    v13 = sub_100634E10(v12, a3);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }
  }

  objc_autoreleasePoolPop(v6);
  return v13;
}

void sub_10063D354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10063D394(unint64_t *a1)
{
  v1 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if (v1 + 1 > 0x666666666666666)
  {
    sub_1000CE3D4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v4 = 0x666666666666666;
  }

  else
  {
    v4 = v2;
  }

  v15 = a1;
  if (v4)
  {
    sub_10016AE28(a1, v4);
  }

  v5 = 40 * v1;
  v12 = 0;
  v13 = v5;
  *(&v14 + 1) = 0;
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *&v14 = 40 * v1 + 40;
  v6 = a1[1];
  v7 = 40 * v1 + *a1 - v6;
  sub_10063D4B4(a1, *a1, v6, v5 + *a1 - v6);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  sub_10063D570(&v12);
  return v11;
}

void sub_10063D4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10063D570(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10063D4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v10 = 0;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 16) = v7;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 16) = 0;
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
    v12 = a4;
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      if (*(v5 + 39) < 0)
      {
        operator delete(*(v5 + 16));
      }

      v5 += 40;
    }
  }

  return sub_10016AF4C(v9);
}

uint64_t sub_10063D570(uint64_t a1)
{
  sub_10063D5A8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10063D5A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_10063D604(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8F5C28F5C28F5C29 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x147AE147AE147AELL)
  {
    sub_1000CE3D4();
  }

  if (0x1EB851EB851EB852 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1EB851EB851EB852 * ((a1[2] - *a1) >> 3);
  }

  if (0x8F5C28F5C28F5C29 * ((a1[2] - *a1) >> 3) >= 0xA3D70A3D70A3D7)
  {
    v6 = 0x147AE147AE147AELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10016B594(a1, v6);
  }

  v13 = 0;
  v14 = 200 * v2;
  sub_10016AB7C(200 * v2, a2);
  v15 = 200 * v2 + 200;
  v7 = a1[1];
  v8 = 200 * v2 + *a1 - v7;
  sub_10016B5F0(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10016B888(&v13);
  return v12;
}

void sub_10063D738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10016B888(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10063D74C(void *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 6);
  v2 = v1 + 1;
  if (v1 + 1 > 0x155555555555555)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 6) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v4 = 0x155555555555555;
  }

  else
  {
    v4 = v2;
  }

  v15 = a1;
  if (v4)
  {
    sub_1000EEBF0(a1, v4);
  }

  v5 = 192 * v1;
  v12 = 0;
  v13 = v5;
  *(&v14 + 1) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  *&v14 = 192 * v1 + 192;
  v6 = a1[1];
  v7 = 192 * v1 + *a1 - v6;
  sub_10063D87C(a1, *a1, v6, v5 + *a1 - v6);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  sub_10063D994(&v12);
  return v11;
}

void sub_10063D868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10063D994(va);
  _Unwind_Resume(a1);
}

void sub_10063D87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *a4 = v7;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 24) = v8;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 24) = 0;
      v9 = *(v6 + 48);
      *(a4 + 64) = *(v6 + 64);
      *(a4 + 48) = v9;
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(v6 + 48) = 0;
      v10 = *(v6 + 72);
      *(a4 + 88) = *(v6 + 88);
      *(a4 + 72) = v10;
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      v11 = *(v6 + 96);
      *(a4 + 112) = *(v6 + 112);
      *(a4 + 96) = v11;
      *(v6 + 96) = 0;
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      v12 = *(v6 + 120);
      *(a4 + 136) = *(v6 + 136);
      *(a4 + 120) = v12;
      *(v6 + 120) = 0;
      *(v6 + 128) = 0;
      *(v6 + 136) = 0;
      v13 = *(v6 + 144);
      *(a4 + 160) = *(v6 + 160);
      *(a4 + 144) = v13;
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      v14 = *(v6 + 168);
      *(a4 + 184) = *(v6 + 184);
      *(a4 + 168) = v14;
      *(v6 + 168) = 0;
      *(v6 + 176) = 0;
      *(v6 + 184) = 0;
      v6 += 192;
      a4 += 192;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v5 = sub_1000DEE0C(v5) + 192;
    }
  }
}

uint64_t sub_10063D994(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 192;
    sub_1000DEE0C(i - 192);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10063D9E4(uint64_t **a1, uint64_t ***a2, uint64_t a3, _OWORD **a4)
{
  v6 = 0;
  v4 = *sub_100005C2C(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t sub_10063DAF4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1000E3A84(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10063DB40(uint64_t **a1, uint64_t ***a2, uint64_t a3, _OWORD **a4)
{
  v6 = 0;
  v4 = *sub_100005C2C(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void sub_10063DBF0()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

id sub_10063DC18(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v13[0] = @"requestID";
    v13[1] = @"request";
    v14[0] = v3;
    v14[1] = v4;
    v6 = v13;
    v7 = v14;
    v8 = 2;
  }

  else
  {
    v11 = @"requestID";
    v12 = v3;
    v6 = &v11;
    v7 = &v12;
    v8 = 1;
  }

  v9 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:v8];

  return v9;
}

void sub_10063DD0C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1;
  v3 = [v5 objectForKeyedSubscript:@"requestID"];
  v4 = [v5 objectForKeyedSubscript:@"request"];
  *a2 = v3;
  a2[1] = v4;
}

id sub_10063DD9C(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = [v1 error];

  if (v3)
  {
    v4 = [v1 error];
    [v2 setObject:v4 forKeyedSubscript:@"error"];
  }

  v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v1 eventType]);
  [v2 setObject:v5 forKeyedSubscript:@"eventType"];

  off_101FB33A0();
  if (objc_opt_isKindOfClass())
  {
    v6 = v1;
    v7 = [v6 password];

    if (v7)
    {
      v8 = [v6 password];
      [v2 setObject:v8 forKeyedSubscript:@"password"];
    }

    v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 passwordType]);
    [v2 setObject:v9 forKeyedSubscript:@"passwordType"];
    goto LABEL_12;
  }

  off_101FB33A8();
  if (objc_opt_isKindOfClass())
  {
    v10 = v1;
    v11 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v10 pairingFlags]);
    [v2 setObject:v11 forKeyedSubscript:@"pairingFlags"];

    v12 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v10 passwordType]);
    [v2 setObject:v12 forKeyedSubscript:@"passwordType"];

    v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v10 throttleSeconds]);
    [v2 setObject:v9 forKeyedSubscript:@"throttleSeconds"];
LABEL_12:

    goto LABEL_13;
  }

  off_101FB33B0();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  v13 = v1;
  v14 = [v13 password];

  if (v14)
  {
    v9 = [v13 password];
    [v2 setObject:v9 forKeyedSubscript:@"password"];
    goto LABEL_12;
  }

LABEL_13:

LABEL_14:

  return v2;
}

void sub_10063E038(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

Class sub_10063E094()
{
  if (qword_101FBA838 != -1)
  {
    sub_1017765A4();
  }

  result = objc_getClass("SKAuthenticationPresentEvent");
  qword_101FBA830 = result;
  off_101FB33A0 = sub_10063E0E8;
  return result;
}

Class sub_10063E120()
{
  if (qword_101FBA838 != -1)
  {
    sub_1017765A4();
  }

  result = objc_getClass("SKAuthenticationRequestEvent");
  qword_101FBA848 = result;
  off_101FB33A8 = sub_10063E174;
  return result;
}

Class sub_10063E180()
{
  if (qword_101FBA838 != -1)
  {
    sub_1017765A4();
  }

  result = objc_getClass("SKAuthenticationResponseEvent");
  qword_101FBA850 = result;
  off_101FB33B0 = sub_10063E1D4;
  return result;
}

uint64_t sub_10063E2F0(uint64_t a1, uint64_t a2, NSObject **a3, uint64_t a4)
{
  *a1 = off_101E6C6D8;
  sub_10063E520((a1 + 8), a3, &kCtLoggingSystemName, &off_101E6C320);
  *a1 = off_101E6C338;
  (***a2)(&v15);
  *(a1 + 48) = v15;
  v8 = *(a2 + 8);
  *(a1 + 64) = *a2;
  *(a1 + 72) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "CellularPlanMultiplePlanInstallScheduler");
  v12 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
  }

  v9 = *(a1 + 32);
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  ctu::RestModule::RestModule();
  if (object)
  {
    dispatch_release(object);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  if (v14 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = a1 + 256;
  *(a1 + 256) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = a1 + 280;
  *(a1 + 296) = a1 + 304;
  *(a1 + 304) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = a1 + 328;
  return a1;
}

void sub_10063E4A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a11)
  {
    dispatch_release(a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  v20 = v17[9];
  if (v20)
  {
    sub_100004A34(v20);
  }

  v21 = v17[7];
  if (v21)
  {
    sub_100004A34(v21);
  }

  ctu::OsLogLogger::~OsLogLogger((v17 + 5));
  sub_1000C0544(v18);
  CellularPlanMultiplePlanInstallSchedulerInterface::~CellularPlanMultiplePlanInstallSchedulerInterface(v17);
  _Unwind_Resume(a1);
}

void *sub_10063E520(void *a1, NSObject **a2, const char **a3, const char **a4)
{
  *a1 = 0;
  a1[1] = 0;
  v7 = *a2;
  a1[2] = *a2;
  if (v7)
  {
    dispatch_retain(v7);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 4), *a3, *a4);
  return a1;
}

void sub_10063E590(uint64_t a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v3, *(a1 + 48));
  ctu::RestModule::connect();
  if (v4)
  {
    sub_100004A34(v4);
  }

  v2[0] = sub_10063E624;
  v2[1] = 0;
  sub_1006425A8(a1 + 80, a1, v2);
}

void sub_10063E60C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063E624(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 192);
    v3 = *(a1 + 200);
    v75[0] = ",";
    v75[1] = 1;
    memset(&v74, 0, sizeof(v74));
    if (v4 == v3)
    {
      v28 = &v74;
    }

    else
    {
      if (*(v4 + 71) >= 0)
      {
        v5 = *(v4 + 71);
      }

      else
      {
        v5 = *(v4 + 56);
      }

      memset(&__dst, 0, sizeof(__dst));
      p_dst = &__dst;
      sub_1000677C4(&__dst, v5 + 1);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      if (v5)
      {
        if (*(v4 + 71) >= 0)
        {
          v7 = (v4 + 48);
        }

        else
        {
          v7 = *(v4 + 48);
        }

        memmove(p_dst, v7, v5);
      }

      *(&p_dst->__r_.__value_.__l.__data_ + v5) = 58;
      v8 = *(v4 + 95);
      if (v8 >= 0)
      {
        v9 = (v4 + 72);
      }

      else
      {
        v9 = *(v4 + 72);
      }

      if (v8 >= 0)
      {
        v10 = *(v4 + 95);
      }

      else
      {
        v10 = *(v4 + 80);
      }

      v11 = std::string::append(&__dst, v9, v10);
      v12 = v11->__r_.__value_.__r.__words[0];
      __p.__r_.__value_.__r.__words[0] = v11->__r_.__value_.__l.__size_;
      *(__p.__r_.__value_.__r.__words + 7) = *(&v11->__r_.__value_.__r.__words[1] + 7);
      v13 = HIBYTE(v11->__r_.__value_.__r.__words[2]);
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v74.__r_.__value_.__r.__words[0] = v12;
      v74.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      *(&v74.__r_.__value_.__r.__words[1] + 7) = *(__p.__r_.__value_.__r.__words + 7);
      *(&v74.__r_.__value_.__s + 23) = v13;
      if ((v4 + 312) != v3)
      {
        v14 = (v4 + 407);
        do
        {
          sub_100074CFC(v75, &__dst);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v15 = &__dst;
          }

          else
          {
            v15 = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __dst.__r_.__value_.__l.__size_;
          }

          std::string::append(&v74, v15, size);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          if ((*(v14 - 24) & 0x80u) == 0)
          {
            v17 = *(v14 - 24);
          }

          else
          {
            v17 = *(v14 - 39);
          }

          memset(&__dst, 0, sizeof(__dst));
          sub_1000677C4(&__dst, v17 + 1);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v18 = &__dst;
          }

          else
          {
            v18 = __dst.__r_.__value_.__r.__words[0];
          }

          if (v17)
          {
            if ((*(v14 - 24) & 0x80u) == 0)
            {
              v19 = (v14 - 47);
            }

            else
            {
              v19 = *(v14 - 47);
            }

            memmove(v18, v19, v17);
          }

          *(&v18->__r_.__value_.__l.__data_ + v17) = 58;
          v20 = *v14;
          if (v20 >= 0)
          {
            v21 = (v14 - 23);
          }

          else
          {
            v21 = *(v14 - 23);
          }

          if (v20 >= 0)
          {
            v22 = *v14;
          }

          else
          {
            v22 = *(v14 - 15);
          }

          v23 = std::string::append(&__dst, v21, v22);
          v24 = *&v23->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v24;
          v23->__r_.__value_.__l.__size_ = 0;
          v23->__r_.__value_.__r.__words[2] = 0;
          v23->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

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
            v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v26 = __p.__r_.__value_.__l.__size_;
          }

          std::string::append(&v74, p_p, v26);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v27 = (v14 + 217);
          v14 += 312;
        }

        while (v27 != v3);
        v13 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
        v12 = v74.__r_.__value_.__r.__words[0];
      }

      v28 = &v74;
      if (v13 < 0)
      {
        v28 = v12;
      }
    }

    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
    *(__dst.__r_.__value_.__r.__words + 4) = v28;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I ALS plans : [%s]", &__dst, 0xCu);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(a1 + 160);
    v29 = *(a1 + 168);
    v74.__r_.__value_.__r.__words[0] = ",";
    v74.__r_.__value_.__l.__size_ = 1;
    memset(&__p, 0, sizeof(__p));
    if (v30 != v29)
    {
      if (*(v30 + 63) < 0)
      {
        sub_100005F2C(&__dst, *(v30 + 40), *(v30 + 48));
      }

      else
      {
        __dst = *(v30 + 40);
      }

      __p = __dst;
      for (i = v30 + 160; i != v29; i += 160)
      {
        sub_100074CFC(&v74.__r_.__value_.__l.__data_, &__dst);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = &__dst;
        }

        else
        {
          v32 = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v33 = __dst.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v32, v33);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (*(i + 63) < 0)
        {
          sub_100005F2C(&__dst, *(i + 40), *(i + 48));
        }

        else
        {
          v34 = *(i + 40);
          __dst.__r_.__value_.__r.__words[2] = *(i + 56);
          *&__dst.__r_.__value_.__l.__data_ = v34;
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &__dst;
        }

        else
        {
          v35 = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v36 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v36 = __dst.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v35, v36);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }
    }

    v37 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v37 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
    *(__dst.__r_.__value_.__r.__words + 4) = v37;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Transfer plans : [%s]", &__dst, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v38 = (a1 + 224);
    if (*(a1 + 247) < 0)
    {
      v38 = *v38;
    }

    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
    *(__dst.__r_.__value_.__r.__words + 4) = v38;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I SODA plan : %s", &__dst, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    sub_100074B94(*(a1 + 320), (a1 + 328), ",", 1, &__dst);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = &__dst;
    }

    else
    {
      v39 = __dst.__r_.__value_.__r.__words[0];
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = v39;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Enabled plans: [%s]", &__p, 0xCu);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v40 = *(a1 + 272);
    v41 = (a1 + 280);
    v74.__r_.__value_.__r.__words[0] = ",";
    v74.__r_.__value_.__l.__size_ = 1;
    memset(&__p, 0, sizeof(__p));
    if (v40 != (a1 + 280))
    {
      sub_100643B7C((v40 + 4), &__dst);
      v42 = v40[1];
      __p = __dst;
      if (v42)
      {
        do
        {
          v43 = v42;
          v42 = *v42;
        }

        while (v42);
      }

      else
      {
        do
        {
          v43 = v40[2];
          v44 = *v43 == v40;
          v40 = v43;
        }

        while (!v44);
      }

      if (v43 != v41)
      {
        do
        {
          sub_100074CFC(&v74.__r_.__value_.__l.__data_, &__dst);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v45 = &__dst;
          }

          else
          {
            v45 = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v46 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v46 = __dst.__r_.__value_.__l.__size_;
          }

          std::string::append(&__p, v45, v46);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          sub_100643B7C((v43 + 4), &__dst);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v47 = &__dst;
          }

          else
          {
            v47 = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v48 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v48 = __dst.__r_.__value_.__l.__size_;
          }

          std::string::append(&__p, v47, v48);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          v49 = v43[1];
          if (v49)
          {
            do
            {
              v50 = v49;
              v49 = *v49;
            }

            while (v49);
          }

          else
          {
            do
            {
              v50 = v43[2];
              v44 = *v50 == v43;
              v43 = v50;
            }

            while (!v44);
          }

          v43 = v50;
        }

        while (v50 != v41);
      }
    }

    v51 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v51 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
    *(__dst.__r_.__value_.__r.__words + 4) = v51;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Install status : [%s]", &__dst, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v52 = *(a1 + 248);
    v53 = (a1 + 256);
    v74.__r_.__value_.__r.__words[0] = ",";
    v74.__r_.__value_.__l.__size_ = 1;
    memset(&__p, 0, sizeof(__p));
    if (v52 != (a1 + 256))
    {
      sub_100643CC8((v52 + 4), &__dst);
      v54 = v52[1];
      __p = __dst;
      if (v54)
      {
        do
        {
          v55 = v54;
          v54 = *v54;
        }

        while (v54);
      }

      else
      {
        do
        {
          v55 = v52[2];
          v44 = *v55 == v52;
          v52 = v55;
        }

        while (!v44);
      }

      if (v55 != v53)
      {
        do
        {
          sub_100074CFC(&v74.__r_.__value_.__l.__data_, &__dst);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v56 = &__dst;
          }

          else
          {
            v56 = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v57 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v57 = __dst.__r_.__value_.__l.__size_;
          }

          std::string::append(&__p, v56, v57);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          sub_100643CC8((v55 + 4), &__dst);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v58 = &__dst;
          }

          else
          {
            v58 = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v59 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v59 = __dst.__r_.__value_.__l.__size_;
          }

          std::string::append(&__p, v58, v59);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          v60 = v55[1];
          if (v60)
          {
            do
            {
              v61 = v60;
              v60 = *v60;
            }

            while (v60);
          }

          else
          {
            do
            {
              v61 = v55[2];
              v44 = *v61 == v55;
              v55 = v61;
            }

            while (!v44);
          }

          v55 = v61;
        }

        while (v61 != v53);
      }
    }

    v62 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v62 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
    *(__dst.__r_.__value_.__r.__words + 4) = v62;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Plan Id to targer iccid map : [%s]", &__dst, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v63 = *(a1 + 296);
    v64 = (a1 + 304);
    v74.__r_.__value_.__r.__words[0] = ",";
    v74.__r_.__value_.__l.__size_ = 1;
    memset(&__p, 0, sizeof(__p));
    if (v63 != v64)
    {
      sub_100643E18((v63 + 4), &__dst);
      v65 = v63[1];
      __p = __dst;
      if (v65)
      {
        do
        {
          v66 = v65;
          v65 = *v65;
        }

        while (v65);
      }

      else
      {
        do
        {
          v66 = v63[2];
          v44 = *v66 == v63;
          v63 = v66;
        }

        while (!v44);
      }

      if (v66 != v64)
      {
        do
        {
          sub_100074CFC(&v74.__r_.__value_.__l.__data_, &__dst);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v67 = &__dst;
          }

          else
          {
            v67 = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v68 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v68 = __dst.__r_.__value_.__l.__size_;
          }

          std::string::append(&__p, v67, v68);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          sub_100643E18((v66 + 4), &__dst);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v69 = &__dst;
          }

          else
          {
            v69 = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v70 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v70 = __dst.__r_.__value_.__l.__size_;
          }

          std::string::append(&__p, v69, v70);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          v71 = v66[1];
          if (v71)
          {
            do
            {
              v72 = v71;
              v71 = *v71;
            }

            while (v71);
          }

          else
          {
            do
            {
              v72 = v66[2];
              v44 = *v72 == v66;
              v66 = v72;
            }

            while (!v44);
          }

          v66 = v72;
        }

        while (v72 != v64);
      }
    }

    v73 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v73 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
    *(__dst.__r_.__value_.__r.__words + 4) = v73;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Support simultaneous sim transfer map : [%s]", &__dst, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}