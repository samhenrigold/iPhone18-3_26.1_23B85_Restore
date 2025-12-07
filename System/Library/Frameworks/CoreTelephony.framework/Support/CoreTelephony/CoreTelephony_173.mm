uint64_t *sub_1014A7A54@<X0>(uint64_t *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1014A7A98(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_1014A5D98(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_1014A5D98(v4, 0);
}

void sub_1014A7B38(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (v1 + 8));
  operator new();
}

void sub_1014A7C14(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group[1], this);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (v3 + 8));
  operator new();
}

uint64_t *sub_1014A7D24(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  PowerObserver::shutdown(*(v2 + 896));
  ctu::RestModule::disconnect((v2 + 400));
  NotifySubscription::cancel((v2 + 48));
  NotifySubscription::cancel((v2 + 72));
  NotifySubscription::cancel((v2 + 280));
  NotifySubscription::cancel((v2 + 224));
  NotifySubscription::cancel((v2 + 96));
  NotifySubscription::cancel((v2 + 120));
  NotifySubscription::cancel((v2 + 248));
  NotifySubscription::cancel((v2 + 144));
  NotifySubscription::cancel((v2 + 168));
  if (sub_1013384F4((v2 + 336)))
  {
    NotifySubscription::cancel((v2 + 192));
  }

  v4 = *(v2 + 928);
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  v5 = *(v2 + 272);
  if (v5)
  {
    [v5 stopMonitoringEventType:{30, v8, v9}];
    [*(v2 + 272) setEventHandler:0];
    [*(v2 + 272) invalidate];
    v6 = *(v2 + 272);
    *(v2 + 272) = 0;
  }

  sub_1000FF844(&v9);
  return sub_1000049E0(&v8);
}

void sub_1014A7E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1014A7E84(void *a1)
{
  v1 = *(*a1 + 8);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  sub_1013384A0(buf, (v1 + 336));
  v3 = *(v1 + 920);
  *(v1 + 912) = *buf;
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(v1 + 24);
  v11 = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  sub_10152C878((v1 + 336), buf);
  v5 = *buf;
  memset(buf, 0, sizeof(buf));
  v6 = *(v1 + 936);
  *(v1 + 928) = v5;
  if (v6)
  {
    sub_100004A34(v6);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  if (v4)
  {
    dispatch_release(v4);
  }

  v7 = *(v1 + 928);
  if (v7)
  {
    (*(*v7 + 16))(v7);
  }

  PowerObserver::bootstrap(*(v1 + 896));
  Registry::createRestModuleOneTimeUseConnection(&v9, *(v1 + 336));
  ctu::RestModule::connect();
  if (v10)
  {
    sub_100004A34(v10);
  }

  *buf = off_101F40F50;
  *&buf[8] = v1 + 400;
  v14 = buf;
  sub_100300158(buf, (v1 + 416));
  sub_1002FED80(buf);
  v8 = *(v1 + 440);
  if (v8)
  {
    (*(*v8 + 48))(v8, v1 + 448);
  }

  sub_10000501C(&__p, "/cc/props/wifi_status");
  operator new();
}

void sub_1014A96B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014A98A8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F40F50;
  a2[1] = v2;
  return result;
}

void sub_1014A98D4(uint64_t a1, BOOL *a2)
{
  v2 = xpc_BOOL_create(*a2);
  if (!v2)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/battery_saver_mode");
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

void sub_1014A9984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_1014A99CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014A9A94(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F40FD0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1014A9ACC(void *a1, xpc_object_t *a2)
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

uint64_t sub_1014A9BC4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014A9C8C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F41050;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1014A9CC4(void *a1, xpc_object_t *a2)
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

uint64_t sub_1014A9DBC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014A9E78(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F410D0;
  a2[1] = v2;
  return result;
}

void sub_1014A9EA4(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/props/wifi_settings");
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

void sub_1014A9F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1014A9F8C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014AA048(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F41160;
  a2[1] = v2;
  return result;
}

void sub_1014AA074(uint64_t a1, BOOL *a2)
{
  v2 = xpc_BOOL_create(*a2);
  if (!v2)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/springboard_finished_startup");
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

void sub_1014AA124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_1014AA16C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014AA228(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F411E0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1014AA254(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014AA310(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F41270;
  a2[1] = v2;
  return result;
}

void sub_1014AA33C(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v9 = 0;
  v3 = v2;
  v4 = asString();
  ctu::rest::detail::write_enum_string_value(v3, v4, v5);
  sub_10000501C(&__p, "/cc/props/carplay_connected");
  object = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v9);
}

void sub_1014AA3F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1014AA434(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014AA4F0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F412F0;
  a2[1] = v2;
  return result;
}

void sub_1014AA51C(uint64_t a1, unsigned int *a2)
{
  v2 = xpc_int64_create(*a2);
  if (!v2)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/commcenter_starts_since_boot");
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

void sub_1014AA5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_1014AA614(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014AA6D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F41380;
  a2[1] = v2;
  return result;
}

void sub_1014AA6FC(uint64_t a1, BOOL *a2)
{
  v2 = xpc_BOOL_create(*a2);
  if (!v2)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/first_unlock_since_boot");
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

void sub_1014AA7AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_1014AA7F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014AA8B0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F41400;
  a2[1] = v2;
  return result;
}

void sub_1014AA8DC(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v9 = 0;
  v3 = v2;
  v4 = asString();
  ctu::rest::detail::write_enum_string_value(v3, v4, v5);
  sub_10000501C(&__p, "/cc/props/ringer_state");
  object = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v9);
}

void sub_1014AA990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1014AA9D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014AAA90(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F41490;
  a2[1] = v2;
  return result;
}

void sub_1014AAABC(uint64_t a1, unsigned int *a2)
{
  v2 = xpc_int64_create(*a2);
  if (!v2)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/thermal_pressure_level");
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

void sub_1014AAB6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_1014AABB4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014AAC70(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F41520;
  a2[1] = v2;
  return result;
}

void sub_1014AAC9C(uint64_t a1, BOOL *a2)
{
  v2 = xpc_BOOL_create(*a2);
  if (!v2)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/in_metro_status");
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

void sub_1014AAD4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_1014AAD94(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014AAE5C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F415A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1014AAE94(void *a1)
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

uint64_t sub_1014AAEDC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014AAF98(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F41620;
  a2[1] = v2;
  return result;
}

void sub_1014AAFC4(uint64_t a1, BOOL *a2)
{
  v2 = xpc_BOOL_create(*a2);
  if (!v2)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/wifi_is_captive");
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

void sub_1014AB074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_1014AB0BC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014AB108(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", &buf, 2u);
  }

  PowerObserver::start(*(v1 + 896));
  sub_10133860C(v1);
  v3 = *(v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Polling for the states of screen, locks, reachability status, ringer state, battery saver mode, thermal pressure level & in metro status", &buf, 2u);
  }

  if (NotifySubscription::isSubscribed((v1 + 48)))
  {
    v4 = NotifySubscription::getState((v1 + 48)) != 0;
    sub_1014A6BF0(v1, v5 & v4, 1);
  }

  if (NotifySubscription::isSubscribed((v1 + 72)))
  {
    v6 = NotifySubscription::getState((v1 + 72)) == 0;
    sub_100081834(v1, v6 || (v7 & 1) == 0, 1);
  }

  if (NotifySubscription::isSubscribed((v1 + 280)))
  {
    sub_10007B068(v1, 1);
  }

  if (&_MKBGetDeviceLockState)
  {
    v8 = MKBGetDeviceLockState();
    v9 = v8 != 3 && v8 != 0;
    sub_100077318(v1, v9, v8 < 3, 1);
  }

  if (&_MKBDeviceUnlockedSinceBoot)
  {
    v10 = MKBDeviceUnlockedSinceBoot() != 0;
    sub_1014A63B4(v1, v10);
  }

  if (NotifySubscription::isSubscribed((v1 + 96)))
  {
    State = NotifySubscription::getState((v1 + 96));
    if (v12)
    {
      *(v1 + 448) = State != 0;
      v13 = *(v1 + 440);
      if (v13)
      {
        (*(*v13 + 48))(v13, v1 + 448);
      }
    }
  }

  if (NotifySubscription::isSubscribed((v1 + 144)))
  {
    v14 = NotifySubscription::getState((v1 + 144));
    if (v15)
    {
      *(v1 + 776) = v14 != 0;
      v16 = *(v1 + 768);
      if (v16)
      {
        (*(*v16 + 48))(v16, v1 + 776);
      }
    }
  }

  if (NotifySubscription::isSubscribed((v1 + 168)))
  {
    v17 = NotifySubscription::getState((v1 + 168));
    sub_1014A6520(v1, v17, v18);
  }

  if (sub_1013384F4((v1 + 336)) && NotifySubscription::isSubscribed((v1 + 192)))
  {
    sub_1014A65E8(v1);
  }

  v19 = sub_10005D028();
  v41 = 0;
  v20 = sub_1005A82FC();
  v42 = 0;
  *v43 = v20;
  sub_10000501C(&buf, "BootTime");
  v21 = sub_100DF2288(v19, &buf, &v42);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (v20 == v42 && v21)
  {
    sub_10000501C(&buf, "CommCenterStartsThisBoot");
    sub_1010D7A88(v19, &buf, &v41);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v23 = v41 + 1;
  }

  else
  {
    v23 = 1;
  }

  v24 = (v1 + 696);
  if (*(v1 + 696) != v23)
  {
    *(v1 + 696) = v23;
    v25 = *(v1 + 688);
    if (v25)
    {
      (*(*v25 + 48))(v25, v1 + 696);
      v23 = *v24;
    }
  }

  if (v23 == 1)
  {
    v26 = sub_10005D028();
    sub_10000501C(&buf, "BootTime");
    sub_100DF2358(v26, &buf, v43);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  v27 = sub_10005D028();
  sub_10000501C(&buf, "CommCenterStartsThisBoot");
  sub_1014A6EC0(v27, &buf, (v1 + 696));
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v28 = *(v1 + 40);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = *v24;
    LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I CommCenter starts since device boot: %u", &buf, 8u);
  }

  v30 = *(v1 + 928);
  if (v30)
  {
    (*(*v30 + 24))(v30);
  }

  v31 = objc_alloc_init(CWFInterface);
  v32 = *(v1 + 272);
  *(v1 + 272) = v31;

  v33 = *(v1 + 272);
  if (v33)
  {
    [v33 activate];
    sub_100004AA0(&buf, (v1 + 8));
    v34 = *&buf.__r_.__value_.__l.__data_;
    if (buf.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((buf.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(*(&v34 + 1));
    }

    buf.__r_.__value_.__r.__words[0] = _NSConcreteStackBlock;
    buf.__r_.__value_.__l.__size_ = 3321888768;
    buf.__r_.__value_.__r.__words[2] = sub_1014A5E8C;
    v45 = &unk_101F40D48;
    v46 = v34;
    if (*(&v34 + 1))
    {
      atomic_fetch_add_explicit((*(&v34 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    [*(v1 + 272) setEventHandler:&buf];
    v35 = *(v1 + 272);
    v42 = 0;
    v36 = [v35 startMonitoringEventType:30 error:&v42];
    v37 = v42;
    v38 = *(v1 + 40);
    if (v36)
    {
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I Successfully started monitoring for CWFEventTypeKnownNetworkProfileChanged event", v43, 2u);
      }
    }

    else if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v40 = [v37 debugDescription];
      *v43 = 138412290;
      *&v43[4] = v40;
      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Error start monitoring for CWFEventTypeKnownNetworkProfileChanged: %@", v43, 0xCu);
    }

    if (*(&v46 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v46 + 1));
    }

    if (*(&v34 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v34 + 1));
    }
  }

  else
  {
    v39 = *(v1 + 40);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Could not find CWFInterface when registering for notifications", &buf, 2u);
    }
  }

  operator delete();
}

void sub_1014AB778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_weak(a23);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  operator delete();
}

void sub_1014AB800(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (*v1)
      {
        v5 = *(*v1 + 40);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Got significant time change notification", buf, 2u);
        }

        bzero(buf, 0x401uLL);
        v6 = readlink("/var/db/timezone/localtime", buf, 0x400uLL);
        if (v6 >= 1)
        {
          buf[v6] = 0;
          setenv("TZ", buf, 1);
          tzset();
        }

        CFTimeZoneResetSystem();
        sub_10000501C(&__p, "/cc/events/significant_time_change");
        object = xpc_null_create();
        ctu::RestModule::sendEvent();
        xpc_release(object);
        if (v9 < 0)
        {
          operator delete(__p);
        }
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1014AB984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014AB9D4(uint64_t result, uint64_t a2)
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

void sub_1014AB9F0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1014ABA20(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F416D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014ABA74(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014ABA88(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *v1;
      if (v5)
      {
        v6 = MKBDeviceUnlockedSinceBoot() != 0;
        sub_1014A63B4(v5, v6);
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1014ABB0C(uint64_t result, uint64_t a2)
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

void sub_1014ABB28(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1014ABB58(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F41750;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014ABBAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014ABBC0(uint64_t a1)
{
  v1 = *(a1 + 32);
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
        v6 = NotifySubscription::getState((v3 + 48)) != 0;
        sub_1014A6BF0(v3, v7 & v6, 0);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1014ABC64(uint64_t result, uint64_t a2)
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

void sub_1014ABC80(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1014ABCB0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F417D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014ABD04(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_1014ABD18(uint64_t result, uint64_t a2)
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

void sub_1014ABD34(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1014ABD64(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F41850;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014ABDB8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_1014ABDCC(uint64_t result, uint64_t a2)
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

void sub_1014ABDE8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1014ABE18(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F418D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014ABE6C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014ABE80(uint64_t a1)
{
  v1 = *(a1 + 32);
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
        State = NotifySubscription::getState((v3 + 96));
        if (v7)
        {
          *(v3 + 448) = State != 0;
          v8 = *(v3 + 440);
          if (v8)
          {
            (*(*v8 + 48))(v8, v3 + 448);
          }
        }
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1014ABF48(uint64_t result, uint64_t a2)
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

void sub_1014ABF64(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1014ABF94(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F41950;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014ABFE8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_1014ABFFC(uint64_t result, uint64_t a2)
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

void sub_1014AC018(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1014AC048(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F419D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014AC09C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014AC0B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (*v1)
      {
        v5 = v1[2];
        v6 = v1[3];
        v7 = (*v1 + (v6 >> 1));
        if (v6)
        {
          v5 = *(*v7 + v5);
        }

        v5(v7);
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1014AC164(uint64_t result, uint64_t a2)
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

void sub_1014AC180(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1014AC1B0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F41A50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014AC204(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_1014AC218(uint64_t a1)
{
  v1 = **(a1 + 32);
  result = NotifySubscription::getState((v1 + 144));
  if (v3)
  {
    v4 = result != 0;
    v5 = *(v1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = asString();
      v8 = 2080;
      v9 = asString();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Ringer switch state changed from: %s -> %s", &v6, 0x16u);
    }

    *(v1 + 776) = v4;
    result = *(v1 + 768);
    if (result)
    {
      return (*(*result + 48))(result, v1 + 776);
    }
  }

  return result;
}

uint64_t sub_1014AC328(uint64_t result, uint64_t a2)
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

void sub_1014AC344(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1014AC374(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F41AD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014AC3D0(uint64_t a1)
{
  v1 = *(a1 + 32);
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
        State = NotifySubscription::getState((v3 + 168));
        sub_1014A6520(v3, State, v7);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1014AC46C(uint64_t result, uint64_t a2)
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

void sub_1014AC488(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1014AC4B8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F41B50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014AC50C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014AC520(uint64_t a1)
{
  v1 = *(a1 + 32);
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
        sub_1014A65E8(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1014AC5A8(uint64_t result, uint64_t a2)
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

void sub_1014AC5C4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1014AC5F4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F41BD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014AC648(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_1014AC65C(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

__n128 sub_1014AC6D8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = **(a1 + 40);
  *(a2 + 32) = *(v2 + 392);
  result = *(v2 + 360);
  v4 = *(v2 + 376);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

__n128 sub_1014AC6F8(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(v5);
  v2 = *(a1 + 32);
  result = v5[0];
  v4 = v5[1];
  *(v2 + 32) = v6;
  *v2 = result;
  *(v2 + 16) = v4;
  return result;
}

__n128 sub_1014AC750(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(v5);
  v2 = *(a1 + 32);
  result = v5[0];
  v4 = v5[1];
  *(v2 + 32) = v6;
  *v2 = result;
  *(v2 + 16) = v4;
  return result;
}

void sub_1014AC7A8(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = *(*a1 + 8);
  if (v2 != *(v1 + 538) || *(*a1 + 9) == 1)
  {
    v4[0] = 1;
    v4[1] = v1 + 504;
    *(v1 + 538) = v2 != 0;
    sub_10007756C(v4);
  }

  operator delete();
}

uint64_t sub_1014AC844(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1014AC880(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void sub_1014AC8BC()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1014AC8E4(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  sub_100A5C398(&v2, &v1, "kThumperGetCarrierName", sub_1014AC95C, 3);
}

void sub_1014AC95C(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v29 = 0;
  v30 = 0;
  ServiceMap = Registry::getServiceMap(*a1);
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
  __p[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, __p);
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
  strcpy(__p, "thumper");
  v28 = 7;
  (**v14)(&v29, v14, __p);
  if ((v28 & 0x80000000) == 0)
  {
    if (v15)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  operator delete(__p[0]);
  if ((v15 & 1) == 0)
  {
LABEL_11:
    sub_100004A34(v13);
  }

LABEL_12:
  v26 = 0;
  if (v29)
  {
    v16 = (*(*v29 + 112))(v29);
    value = 0;
    v26 = v16;
    v24 = 0;
    if (v16)
    {
      if (CFDictionaryGetValueIfPresent(v16, @"CarrierName", &value))
      {
        v17 = CFGetTypeID(value);
        if (v17 == CFStringGetTypeID())
        {
          v23 = value;
          __p[0] = 0;
          sub_100060DE8(__p, &v23);
          v18 = v24;
          v24 = __p[0];
          __p[0] = v18;
          sub_100005978(__p);
          goto LABEL_21;
        }
      }
    }
  }

  else
  {
    value = 0;
    v26 = 0;
    v24 = 0;
  }

  __p[0] = &stru_101F6AFB8;
  sub_10021D11C(&v24, __p);
LABEL_21:
  v19 = _CFXPCCreateXPCObjectFromCFObject();
  v20 = v19;
  if (v19)
  {
    v21 = v19;
LABEL_24:
    xpc_retain(v20);
    goto LABEL_25;
  }

  v20 = xpc_null_create();
  v21 = v20;
  if (v20)
  {
    goto LABEL_24;
  }

  v20 = 0;
  v21 = xpc_null_create();
LABEL_25:
  __p[0] = *a5;
  __p[1] = "kThumperCarrierName";
  sub_10000F688(__p, &v21, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v21);
  v21 = 0;
  xpc_release(v20);
  sub_100005978(&v24);
  sub_10001021C(&v26);
  if (v30)
  {
    sub_100004A34(v30);
  }
}

void sub_1014ACC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, const void *);
  v13 = va_arg(va1, void);
  sub_100005978(va);
  sub_10001021C(va1);
  if (*(v9 - 56))
  {
    sub_100004A34(*(v9 - 56));
  }

  _Unwind_Resume(a1);
}

void sub_1014ACC54(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    JUMPOUT(0x1014ACC4CLL);
  }

  JUMPOUT(0x1014ACC44);
}

void sub_1014ACC90(uint64_t *a8@<X8>)
{
  *a8 = 0;
  a8[1] = 0;
  operator new();
}

void sub_1014ACFE4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1014B0260);
  __cxa_rethrow();
}

void sub_1014AD00C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, const void *a12, uint64_t a13, dispatch_object_t object, dispatch_object_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23)
{
  __cxa_end_catch();
  sub_100005978(&a11);
  sub_10001021C(&a12);
  _Unwind_Resume(a1);
}

void sub_1014AD0E8(uint64_t a1)
{
  *a1 = off_101F41C40;
  sub_100005978((a1 + 152));
  sub_10001021C((a1 + 144));
  v2 = *(a1 + 136);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100FCD494(a1);
}

void sub_1014AD154(uint64_t a1)
{
  sub_1014AD0E8(a1);

  operator delete();
}

void sub_1014AD18C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 144);
    *buf = 138412290;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Device info: %@", buf, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    memset(buf, 0, sizeof(buf));
    v8 = 0;
    ctu::cf::assign();
    *__p = *buf;
    v6 = v8;
    v4 = __p;
    if (v8 < 0)
    {
      v4 = *buf;
    }

    *buf = 136446210;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Device name: %{public}s", buf, 0xCu);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1014AD2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014AD2D8(uint64_t a1, const void **a2, uint64_t a3)
{
  v5[4] = a1;
  sub_100010024(&v6, a2);
  sub_100FD2458(&v7, a3);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_1014AD420(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1014AD44C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*a1)
  {
    dispatch_group_leave(*a1);
    if (*a1)
    {
      dispatch_release(*a1);
    }
  }

  return a1;
}

const void **sub_1014AD494(uint64_t a1, CFDictionaryRef *a2, CFDictionaryRef *a3, uint64_t a4)
{
  v6 = a2;
  sub_100010024(&theDict, a2);
  cf = 0;
  __p.__r_.__value_.__r.__words[0] = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  sub_100424E40(&cf, &__p.__r_.__value_.__l.__data_);
  Value = CFDictionaryGetValue(theDict, @"IMSI");
  v8 = Value;
  if (Value)
  {
    v9 = CFGetTypeID(Value);
    if (v9 == CFDictionaryGetTypeID())
    {
      v104[0] = 0;
      v104[0] = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      Count = CFDictionaryGetCount(v8);
      memset(buf, 0, sizeof(buf));
      v109 = 0;
      sub_10007D780(buf, Count);
      values[1] = 0;
      values[0] = 0;
      v103 = 0;
      sub_10007D780(values, Count);
      v82 = a4;
      v83 = v6;
      v81 = a3;
      CFDictionaryGetKeysAndValues(v8, *buf, values[0]);
      v84 = Count;
      if (Count >= 1)
      {
        v11 = 0;
        do
        {
          v12 = *(*buf + 8 * v11);
          if (v12)
          {
            v13 = CFGetTypeID(*(*buf + 8 * v11));
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

          v106 = v14;
          v15 = values[0][v11];
          if (v15)
          {
            v16 = CFGetTypeID(values[0][v11]);
            if (v16 != CFDictionaryGetTypeID())
            {
              v15 = 0;
            }
          }

          v17 = CFDictionaryGetValue(v15, @"BundleMapKey");
          v18 = v17;
          if (v17)
          {
            v19 = CFGetTypeID(v17);
            if (v19 == CFStringGetTypeID())
            {
              CFDictionarySetValue(v104[0], v106, v18);
            }
          }

          v20 = CFDictionaryGetValue(v15, @"MVNOs");
          v21 = v20;
          if (v20)
          {
            v22 = CFGetTypeID(v20);
            if (v22 == CFArrayGetTypeID())
            {
              v23 = CFArrayGetCount(v21);
              if (v23 >= 1)
              {
                for (i = 0; i != v23; ++i)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v21, i);
                  v26 = ValueAtIndex;
                  if (ValueAtIndex)
                  {
                    v27 = CFGetTypeID(ValueAtIndex);
                    if (v27 == CFDictionaryGetTypeID())
                    {
                      v28 = v26;
                    }

                    else
                    {
                      v28 = 0;
                    }
                  }

                  else
                  {
                    v28 = 0;
                  }

                  v29 = CFDictionaryGetValue(v28, @"BundleMapKey");
                  v30 = v29;
                  if (v29)
                  {
                    v31 = CFGetTypeID(v29);
                    if (v31 == CFStringGetTypeID())
                    {
                      memset(&v98, 0, sizeof(v98));
                      sub_1000481D4(&v98);
                      v32 = CFDictionaryGetValue(v28, @"GID1");
                      v33 = v32;
                      if (v32 && (v34 = CFGetTypeID(v32), v34 == CFStringGetTypeID()))
                      {
                        v101 = v33;
                        sub_1000481D4(&v97);
                        v35 = std::string::insert(&v97, 0, "_", 1uLL);
                        v36 = *&v35->__r_.__value_.__l.__data_;
                        __str.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
                        *&__str.__r_.__value_.__l.__data_ = v36;
                        v35->__r_.__value_.__l.__size_ = 0;
                        v35->__r_.__value_.__r.__words[2] = 0;
                        v35->__r_.__value_.__r.__words[0] = 0;
                        sub_1000481D4(&v96);
                        if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v37 = &v96;
                        }

                        else
                        {
                          v37 = v96.__r_.__value_.__r.__words[0];
                        }

                        if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          size = HIBYTE(v96.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          size = v96.__r_.__value_.__l.__size_;
                        }

                        v39 = std::string::append(&__str, v37, size);
                        v40 = *&v39->__r_.__value_.__l.__data_;
                        __p.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
                        *&__p.__r_.__value_.__l.__data_ = v40;
                        v39->__r_.__value_.__l.__size_ = 0;
                        v39->__r_.__value_.__r.__words[2] = 0;
                        v39->__r_.__value_.__r.__words[0] = 0;
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
                          v42 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v42 = __p.__r_.__value_.__l.__size_;
                        }

                        std::string::append(&v98, p_p, v42);
                        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__p.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v96.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__str.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v97.__r_.__value_.__l.__data_);
                        }
                      }

                      else
                      {
                        v101 = 0;
                      }

                      v43 = CFDictionaryGetValue(v28, @"GID2");
                      v44 = v43;
                      if (v43 && (v45 = CFGetTypeID(v43), v45 == CFStringGetTypeID()))
                      {
                        v100 = v44;
                        sub_1000481D4(&v97);
                        v46 = std::string::insert(&v97, 0, "_", 1uLL);
                        v47 = *&v46->__r_.__value_.__l.__data_;
                        __str.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
                        *&__str.__r_.__value_.__l.__data_ = v47;
                        v46->__r_.__value_.__l.__size_ = 0;
                        v46->__r_.__value_.__r.__words[2] = 0;
                        v46->__r_.__value_.__r.__words[0] = 0;
                        sub_1000481D4(&v96);
                        if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v48 = &v96;
                        }

                        else
                        {
                          v48 = v96.__r_.__value_.__r.__words[0];
                        }

                        if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v49 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v49 = v96.__r_.__value_.__l.__size_;
                        }

                        v50 = std::string::append(&__str, v48, v49);
                        v51 = *&v50->__r_.__value_.__l.__data_;
                        __p.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
                        *&__p.__r_.__value_.__l.__data_ = v51;
                        v50->__r_.__value_.__l.__size_ = 0;
                        v50->__r_.__value_.__r.__words[2] = 0;
                        v50->__r_.__value_.__r.__words[0] = 0;
                        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v52 = &__p;
                        }

                        else
                        {
                          v52 = __p.__r_.__value_.__r.__words[0];
                        }

                        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v53 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v53 = __p.__r_.__value_.__l.__size_;
                        }

                        std::string::append(&v98, v52, v53);
                        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__p.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v96.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__str.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v97.__r_.__value_.__l.__data_);
                        }
                      }

                      else
                      {
                        v100 = 0;
                      }

                      v54 = CFDictionaryGetValue(v28, @"ICCID");
                      v55 = v54;
                      if (v54 && (v56 = CFGetTypeID(v54), v56 == CFStringGetTypeID()))
                      {
                        v99 = v55;
                        sub_1000481D4(&v97);
                        v57 = std::string::insert(&v97, 0, "_", 1uLL);
                        v58 = *&v57->__r_.__value_.__l.__data_;
                        __str.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
                        *&__str.__r_.__value_.__l.__data_ = v58;
                        v57->__r_.__value_.__l.__size_ = 0;
                        v57->__r_.__value_.__r.__words[2] = 0;
                        v57->__r_.__value_.__r.__words[0] = 0;
                        sub_1000481D4(&v96);
                        if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v59 = &v96;
                        }

                        else
                        {
                          v59 = v96.__r_.__value_.__r.__words[0];
                        }

                        if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v60 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v60 = v96.__r_.__value_.__l.__size_;
                        }

                        v61 = std::string::append(&__str, v59, v60);
                        v62 = *&v61->__r_.__value_.__l.__data_;
                        __p.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
                        *&__p.__r_.__value_.__l.__data_ = v62;
                        v61->__r_.__value_.__l.__size_ = 0;
                        v61->__r_.__value_.__r.__words[2] = 0;
                        v61->__r_.__value_.__r.__words[0] = 0;
                        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v63 = &__p;
                        }

                        else
                        {
                          v63 = __p.__r_.__value_.__r.__words[0];
                        }

                        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v64 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v64 = __p.__r_.__value_.__l.__size_;
                        }

                        std::string::append(&v98, v63, v64);
                        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__p.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v96.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__str.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v97.__r_.__value_.__l.__data_);
                        }
                      }

                      else
                      {
                        v99 = 0;
                      }

                      v65 = v104[0];
                      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
                      {
                        sub_100005F2C(&__dst, v98.__r_.__value_.__l.__data_, v98.__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        __dst = v98;
                      }

                      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                      {
                        sub_100005F2C(&__str, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        __str = __dst;
                      }

                      v87 = 0;
                      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                      {
                        sub_100005F2C(&__p, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        __p = __str;
                      }

                      v96.__r_.__value_.__r.__words[0] = 0;
                      if (ctu::cf::convert_copy())
                      {
                        v66 = v87;
                        v87 = v96.__r_.__value_.__r.__words[0];
                        v97.__r_.__value_.__r.__words[0] = v66;
                        sub_100005978(&v97.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }

                      v95 = v87;
                      v87 = 0;
                      sub_100005978(&v87);
                      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__str.__r_.__value_.__l.__data_);
                      }

                      CFDictionarySetValue(v65, v95, v30);
                      sub_100005978(&v95);
                      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__dst.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v98.__r_.__value_.__l.__data_);
                      }
                    }
                  }
                }
              }
            }
          }

          ++v11;
        }

        while (v11 != v84);
      }

      copyMergedDictionaries(&__str, cf, v104[0]);
      __p.__r_.__value_.__r.__words[0] = cf;
      cf = __str.__r_.__value_.__r.__words[0];
      __str.__r_.__value_.__r.__words[0] = 0;
      sub_10001021C(&__p.__r_.__value_.__l.__data_);
      sub_10001021C(&__str.__r_.__value_.__l.__data_);
      a3 = v81;
      a4 = v82;
      v6 = v83;
      if (values[0])
      {
        values[1] = values[0];
        operator delete(values[0]);
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      sub_1000296E0(v104);
    }
  }

  sub_10001021C(&theDict);
  v91 = 0;
  v67 = CFDictionaryGetValue(*v6, @"BundleMappings");
  v68 = v67;
  if (v67 && (v69 = CFGetTypeID(v67), v69 == CFDictionaryGetTypeID()))
  {
    v91 = v68;
    CFRetain(v68);
  }

  else
  {
    v91 = 0;
  }

  v90 = 0;
  sub_100010024(&v89, v6);
  v90 = 0;
  __p.__r_.__value_.__r.__words[0] = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  sub_100424E40(&v90, &__p.__r_.__value_.__l.__data_);
  v70 = CFDictionaryGetValue(v89, @"Bundles");
  v71 = v70;
  if (!v70 || (v72 = CFGetTypeID(v70), v72 != CFDictionaryGetTypeID()))
  {
    v73 = *(a1 + 40);
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_133;
    }

    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    v74 = "#I Bundles key is not found in version.xml";
LABEL_132:
    _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, v74, &__p, 2u);
    goto LABEL_133;
  }

  if (!CFDictionaryGetCount(v71))
  {
    v73 = *(a1 + 40);
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_133;
    }

    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    v74 = "#I Bundles key has 0 elements";
    goto LABEL_132;
  }

  __p.__r_.__value_.__r.__words[0] = v71;
  sub_1002A2218(&v90, &__p.__r_.__value_.__l.__data_);
LABEL_133:
  sub_10001021C(&v89);
  key = CFDictionaryGetValue(*a3, @"kBundleUpdateCheckCriteria");
  if (key)
  {
    v75 = CFGetTypeID(key);
    if (v75 == CFArrayGetTypeID())
    {
      v76 = dispatch_group_create();
      v77 = v76;
      if (v76)
      {
        dispatch_retain(v76);
        dispatch_group_enter(v77);
        dispatch_release(v77);
      }

      operator new();
    }
  }

  v78 = *(a1 + 40);
  if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "Cannot find bundle match criteria in the device info", &__p, 2u);
  }

  memset(v88, 0, sizeof(v88));
  v79 = *(a4 + 24);
  if (!v79)
  {
    sub_100022DB4();
  }

  (*(*v79 + 48))(v79, v88);
  __p.__r_.__value_.__r.__words[0] = v88;
  sub_100C116F0(&__p);
  sub_10001021C(&v90);
  sub_10001021C(&v91);
  return sub_10001021C(&cf);
}

void sub_1014AFA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, NSObject *group, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, dispatch_group_t object, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, const void *a38, const void *a39, const void *a40, uint64_t a41, uint64_t a42, const void *a43, const void *a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, const void *a52, const void *a53, uint64_t a54, const void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, const void *a60, const void *a61, uint64_t a62, const void *a63)
{
  if (SLOBYTE(STACK[0x2DF]) < 0)
  {
    operator delete(STACK[0x2C8]);
  }

  sub_100FD23D8(&STACK[0x2A8]);
  if (STACK[0x2A0])
  {
    sub_100004A34(STACK[0x2A0]);
  }

  sub_10002D760(&a66);
  sub_100005978((v69 - 208));
  if (a67)
  {
    sub_100004A34(a67);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  sub_10002D760(&STACK[0x218]);
  sub_100005978(&STACK[0x220]);
  if (v67 < 0)
  {
    operator delete(v68);
  }

  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (*(v69 - 105) < 0)
  {
    operator delete(*(v69 - 128));
  }

  sub_100FD23D8(&STACK[0x250]);
  sub_1014B0168(&a29);
  sub_10001021C(&a38);
  sub_10001021C(&a39);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  sub_10001021C(&a40);
  sub_100005978(&a43);
  sub_10001021C(&a44);
  if (a50 < 0)
  {
    operator delete(a45);
  }

  sub_100005978(&a52);
  sub_10000A1EC(&a53);
  sub_10001021C(&a55);
  sub_100009970(&a64, a65);
  sub_100004A34(a17);
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  sub_10001021C(&a60);
  sub_10001021C(&a61);
  sub_10001021C(&a63);
  _Unwind_Resume(a1);
}

uint64_t sub_1014B0168(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  sub_10000A1EC((a1 + 16));
  v3 = *(a1 + 8);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(a1 + 8);
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  return a1;
}

void sub_1014B01CC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014B0220(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014B0260(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1014B028C(uint64_t *a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v1, *(**a1 + 80));
  ctu::RestModule::connect();
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000501C(&__p, "/cc/events/dump_state");
  operator new();
}

void sub_1014B03A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  sub_1000062D4(&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_10024BAAC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_1014B0474(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F41CF0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1014B04AC(void *a1)
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

uint64_t sub_1014B04F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1014B0540(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = v1 + 16;
  v3 = *v1;
  sub_100010024(&v8, (v1 + 8));
  sub_100FD2458(v9, v2);
  if (v8)
  {
    operator new();
  }

  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N Failed to load version.xml from the server", buf, 2u);
  }

  sub_100FD1A34(v9);
  sub_10001021C(&v8);
  sub_1014B0CD8(&v7);
  return sub_1000049E0(&v6);
}

void sub_1014B0B64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, int a29, __int16 a30, char a31, char a32, int a33, __int16 a34, char a35, char a36, int a37, __int16 a38, char a39, char a40, int a41, __int16 a42, char a43, char a44, int a45, __int16 a46, char a47, char a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1014B0CD8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100FD1A34(v1 + 16);
    sub_10001021C((v1 + 8));
    operator delete();
  }

  return a1;
}

void *sub_1014B0D30(void *a1)
{
  *a1 = off_101F41D70;
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = a1[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  return a1;
}

void sub_1014B0D94(void *a1)
{
  *a1 = off_101F41D70;
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = a1[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete();
}

void sub_1014B0EA4(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = off_101F41D70;
  a2[1] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a2[1];
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = a1[3];
  a2[2] = a1[2];
  a2[3] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1014B0F14(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(a1 + 8);
    if (v4)
    {

      dispatch_release(v4);
    }
  }
}

void sub_1014B0F70(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = __p[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = __p[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(__p);
}

void sub_1014B0FC8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2 = v4;
  v5 = *(a2 + 1);
  v3 = v5;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  sub_1014B1094(*(a1 + 16), *(*(a1 + 16) + 8), v2, v3, (v3 - v2) >> 4);
  v6 = &v4;
  sub_100C116F0(&v6);
}

void sub_1014B102C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_100C116F0(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1014B1048(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void **sub_1014B1094(uint64_t *a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 4;
      if (v17 >= a5)
      {
        sub_1014B12B8(a1, a2, a1[1], &a2[2 * a5]);
        v25 = v7 + 16 * a5;
        v26 = v5;
        do
        {
          sub_1000420D0(v26, v7);
          *(v26 + 8) = *(v7 + 8);
          v7 += 16;
          v26 += 2;
        }

        while (v7 != v25);
      }

      else
      {
        v19 = v16 + a3;
        v20 = a1[1];
        if (v16 + a3 != a4)
        {
          v20 = a1[1];
          v21 = v16 + a3;
          v22 = v20;
          do
          {
            v23 = sub_100060E84(v22, v21);
            *(v23 + 8) = *(v21 + 8);
            v21 += 16;
            v22 = v23 + 2;
            v20 += 16;
          }

          while (v21 != a4);
        }

        a1[1] = v20;
        if (v17 >= 1)
        {
          sub_1014B12B8(a1, v5, v10, &v5[2 * a5]);
          if (v10 != v5)
          {
            v24 = v5;
            do
            {
              sub_1000420D0(v24, v7);
              *(v24 + 8) = *(v7 + 8);
              v7 += 16;
              v24 += 2;
            }

            while (v7 != v19);
          }
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + ((v10 - *a1) >> 4);
      if (v12 >> 60)
      {
        sub_1000CE3D4();
      }

      v13 = a2 - v11;
      v14 = v9 - v11;
      if (v14 >> 3 > v12)
      {
        v12 = v14 >> 3;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF0)
      {
        v15 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v12;
      }

      v32[4] = a1;
      if (v15)
      {
        sub_100C116A8(a1, v15);
      }

      v27 = (16 * (v13 >> 4));
      v32[0] = 0;
      v32[1] = v27;
      v32[3] = 0;
      v28 = 16 * a5;
      v29 = &v27[2 * a5];
      do
      {
        v30 = sub_100060E84(v27, v7);
        *(v30 + 8) = *(v7 + 8);
        v27 = v30 + 2;
        v7 += 16;
        v28 -= 16;
      }

      while (v28);
      v32[2] = v29;
      v5 = sub_1014B1350(a1, v32, v5);
      sub_100FD19E4(v32);
    }
  }

  return v5;
}

void sub_1014B12A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100FD19E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1014B12B8(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  v5 = a2 + v4 - a4;
  v6 = v4;
  while (v5 < a3)
  {
    *v6 = 0;
    *v6 = *v5;
    *v5 = 0;
    *(v6 + 8) = *(v5 + 8);
    v5 += 16;
    v6 += 16;
  }

  *(result + 8) = v6;
  if (v4 != a4)
  {
    v7 = v4 - 16;
    v8 = a4 - v4;
    v9 = a2 + v4 - 16 - a4;
    do
    {
      result = sub_1014B1488(v7, v9);
      v7 -= 16;
      v9 -= 16;
      v8 += 16;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1014B1350(uint64_t a1, void *a2, const void **a3)
{
  v6 = *(a1 + 8);
  v8 = a2[1];
  v7 = a2[2];
  if (v6 == a3)
  {
    v12 = a2[1];
    v11 = a3;
  }

  else
  {
    v9 = a3;
    do
    {
      *v7 = 0;
      *v7 = *v9;
      *v9 = 0;
      *(v7 + 8) = *(v9 + 8);
      v9 += 2;
      v7 += 16;
    }

    while (v9 != v6);
    v10 = a3;
    do
    {
      v10 = sub_10000A1EC(v10) + 2;
    }

    while (v10 != v6);
    v11 = *(a1 + 8);
    v12 = a2[1];
    v7 = a2[2];
  }

  a2[2] = v7 + v11 - a3;
  *(a1 + 8) = a3;
  v13 = *a1;
  v14 = v12 + *a1 - a3;
  if (*a1 != a3)
  {
    v15 = *a1;
    v16 = v12 + *a1 - a3;
    do
    {
      *v16 = 0;
      *v16 = *v15;
      *v15 = 0;
      *(v16 + 8) = *(v15 + 8);
      v15 += 2;
      v16 += 16;
    }

    while (v15 != a3);
    do
    {
      v13 = sub_10000A1EC(v13) + 2;
    }

    while (v13 != a3);
    v13 = *a1;
  }

  a2[1] = v14;
  *a1 = v14;
  *(a1 + 8) = v13;
  a2[1] = v13;
  v17 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v17;
  v18 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
  return v8;
}

uint64_t sub_1014B1488(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    *a1 = 0;
    v6 = v4;
    *a1 = *a2;
    *a2 = 0;
    sub_10000A1EC(&v6);
  }

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

void *sub_1014B14E8(void *a1)
{
  *a1 = off_101F41E00;
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = a1[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  return a1;
}

void sub_1014B154C(void *a1)
{
  *a1 = off_101F41E00;
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = a1[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete();
}

void sub_1014B165C(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = off_101F41E00;
  a2[1] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a2[1];
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = a1[3];
  a2[2] = a1[2];
  a2[3] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1014B16CC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(a1 + 8);
    if (v4)
    {

      dispatch_release(v4);
    }
  }
}

void sub_1014B1728(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = __p[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = __p[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(__p);
}

void sub_1014B1780(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v2 = v4;
  v5 = *(a2 + 8);
  v3 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  sub_1014B1094(*(a1 + 16), *(*(a1 + 16) + 8), v2, v3, (v3 - v2) >> 4);
  v6 = &v4;
  sub_100C116F0(&v6);
}

void sub_1014B17E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_100C116F0(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1014B1800(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1014B184C(uint64_t a1)
{
  v4 = a1;
  memset(v5, 0, sizeof(v5));
  sub_100C115E0(v5, **(a1 + 32), *(*(a1 + 32) + 8), (*(*(a1 + 32) + 8) - **(a1 + 32)) >> 4);
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  (*(*v2 + 48))(v2, v5);
  v6 = v5;
  sub_100C116F0(&v6);
  return sub_100FD24F0(&v4);
}

void sub_1014B18E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100FD24F0(va);
  _Unwind_Resume(a1);
}

void *sub_1014B1910(void *a1)
{
  *a1 = off_101F41E80;
  sub_100FD1A34((a1 + 1));
  return a1;
}

void sub_1014B1954(void *a1)
{
  *a1 = off_101F41E80;
  sub_100FD1A34((a1 + 1));

  operator delete();
}

void sub_1014B1A64(void *a1)
{
  sub_100FD1A34(a1 + 8);

  operator delete(a1);
}

void sub_1014B1AA0(uint64_t a1, uint64_t a2)
{
  v6 = *a2;
  v3 = v6;
  v7 = *(a2 + 8);
  v4 = v7;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  memset(v8, 0, sizeof(v8));
  sub_100C115E0(v8, v3, v4, (v4 - v3) >> 4);
  v5 = *(a1 + 32);
  if (!v5)
  {
    sub_100022DB4();
  }

  (*(*v5 + 48))(v5, v8);
  v9 = v8;
  sub_100C116F0(&v9);
  v8[0] = &v6;
  sub_100C116F0(v8);
}

void sub_1014B1B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 - 24) = &a10;
  sub_100C116F0((v10 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1014B1B8C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014B1BD8(uint64_t a1)
{
  *a1 = off_101F41F00;
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  sub_10000A1EC((a1 + 24));
  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(a1 + 16);
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  return a1;
}

void sub_1014B1C54(uint64_t a1)
{
  *a1 = off_101F41F00;
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  sub_10000A1EC((a1 + 24));
  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(a1 + 16);
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete();
}

void sub_1014B1D94(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  sub_10000A1EC((a1 + 24));
  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(a1 + 16);
    if (v4)
    {

      dispatch_release(v4);
    }
  }
}

void sub_1014B1E08(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  sub_10000A1EC((a1 + 24));
  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(a1 + 16);
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(a1);
}

void sub_1014B1E78(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  *v27 = *(a2 + 8);
  v28 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *v29 = *(a2 + 2);
  v30 = *(a2 + 6);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  v4 = *(a1 + 8);
  __dst[0] = 0;
  __dst[1] = 0;
  v36 = 0;
  v5 = SHIBYTE(v28);
  if (SHIBYTE(v28) < 0)
  {
    sub_100005F2C(__dst, v27[0], v27[1]);
  }

  else
  {
    *__dst = *v27;
    v36 = v28;
  }

  __p[0] = 0;
  __p[1] = 0;
  v34 = 0;
  v6 = SHIBYTE(v30);
  if (SHIBYTE(v30) < 0)
  {
    sub_100005F2C(__p, v29[0], v29[1]);
  }

  else
  {
    *__p = *v29;
    v34 = v30;
  }

  if (v3 == 4)
  {
    v7 = *(v4 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1 + 32;
      if (*(a1 + 55) < 0)
      {
        v8 = *(a1 + 32);
      }

      LODWORD(buf) = 136446210;
      *(&buf + 4) = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Update downloaded for bundle: %{public}s", &buf, 0xCu);
    }

    v9 = sub_100FCD554(v4, a1 + 32, __dst, *(v4 + 160));
    v10 = (v9 >> 8) & 1;
    if (v9)
    {
      v3 = 4;
    }

    else if ((v9 & 0x10000) != 0)
    {
      v3 = 5;
    }

    else
    {
      v3 = 7;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  v11 = *(a1 + 64);
  sub_100060E84(&v31, (a1 + 24));
  v32 = v3;
  v12 = v11[1];
  v13 = v11[2];
  if (v12 >= v13)
  {
    v15 = (v12 - *v11) >> 4;
    v16 = v15 + 1;
    if ((v15 + 1) >> 60)
    {
      sub_1000CE3D4();
    }

    v17 = v13 - *v11;
    if (v17 >> 3 > v16)
    {
      v16 = v17 >> 3;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF0)
    {
      v18 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    v40 = v11;
    if (v18)
    {
      sub_100C116A8(v11, v18);
    }

    v19 = 16 * v15;
    *v19 = 0;
    *v19 = v31;
    v31 = 0;
    *(v19 + 8) = v3;
    v20 = *v11;
    v21 = v11[1];
    v22 = v19 + *v11 - v21;
    if (*v11 != v21)
    {
      v23 = *v11;
      v24 = v19 + *v11 - v21;
      do
      {
        *v24 = 0;
        *v24 = *v23;
        *v23 = 0;
        *(v24 + 8) = *(v23 + 8);
        v23 += 2;
        v24 += 16;
      }

      while (v23 != v21);
      do
      {
        v20 = sub_10000A1EC(v20) + 2;
      }

      while (v20 != v21);
      v20 = *v11;
    }

    v14 = v19 + 16;
    *v11 = v22;
    *&buf = v20;
    *(&buf + 1) = v20;
    v11[1] = (v19 + 16);
    v38 = v20;
    v25 = v11[2];
    v11[2] = 0;
    v39 = v25;
    sub_100FD19E4(&buf);
    v5 = SHIBYTE(v28);
    v6 = SHIBYTE(v30);
  }

  else
  {
    *v12 = 0;
    *v12 = v31;
    v31 = 0;
    *(v12 + 8) = v3;
    v14 = (v12 + 2);
  }

  v11[1] = v14;
  sub_10000A1EC(&v31);
  v26 = *(a1 + 56);
  (*(**(v4 + 64) + 120))(&buf);
  sub_100FD1044(v4, v3, v26, (a1 + 32), &buf, __p, v10, 0);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(buf);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(__dst[0]);
    if ((v6 & 0x80000000) == 0)
    {
LABEL_40:
      if ((v5 & 0x80000000) == 0)
      {
        return;
      }

LABEL_44:
      operator delete(v27[0]);
      return;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

  operator delete(v29[0]);
  if (v5 < 0)
  {
    goto LABEL_44;
  }
}

void sub_1014B2238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  sub_1000EFBF0(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1014B22A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014B22F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(a1 + 8);
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  sub_100060E84((a1 + 16), (a2 + 16));
  if (*(a2 + 47) < 0)
  {
    sub_100005F2C((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v6 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v6;
  }

  *(a1 + 48) = *(a2 + 48);
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1014B238C(_Unwind_Exception *a1)
{
  sub_10000A1EC((v1 + 16));
  v3 = *(v1 + 8);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(v1 + 8);
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1014B23B8(uint64_t a1)
{
  v4 = a1;
  memset(v5, 0, sizeof(v5));
  sub_100C115E0(v5, **(a1 + 32), *(*(a1 + 32) + 8), (*(*(a1 + 32) + 8) - **(a1 + 32)) >> 4);
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  (*(*v2 + 48))(v2, v5);
  v6 = v5;
  sub_100C116F0(&v6);
  return sub_100FD24F0(&v4);
}

void sub_1014B2450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100FD24F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1014B247C(uint64_t a1)
{
  *a1 = off_101F41F80;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  sub_100FD23D8(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1014B24F0(uint64_t a1)
{
  *a1 = off_101F41F80;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  sub_100FD23D8(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1014B2628(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  sub_100FD23D8(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

void sub_1014B2694(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  sub_100FD23D8(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(a1);
}

void sub_1014B26FC(uint64_t a1, _BYTE *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (*a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1 + 64;
      if (*(a1 + 87) < 0)
      {
        v5 = *(a1 + 64);
      }

      *buf = 136446210;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Update has been successfully downloaded at %{public}s", buf, 0xCu);
    }

    v6 = 4;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to download and save the update", buf, 2u);
    }

    v6 = 6;
  }

  sub_100FD268C(buf, a1 + 32);
  v10 = v6;
  if (*(a1 + 87) < 0)
  {
    sub_100005F2C(&v11, *(a1 + 64), *(a1 + 72));
  }

  else
  {
    v11 = *(a1 + 64);
    v12 = *(a1 + 80);
  }

  if (*(a1 + 111) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 88), *(a1 + 96));
  }

  else
  {
    __p = *(a1 + 88);
    v14 = *(a1 + 104);
  }

  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (v3 + 8));
  operator new();
}

void sub_1014B2974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_100FD23D8(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1014B29C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014B2A0C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100FD268C(a1 + 24, a2 + 24);
  if (*(a2 + 79) < 0)
  {
    sub_100005F2C((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v5;
  }

  if (*(a2 + 103) < 0)
  {
    sub_100005F2C((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v6 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v6;
  }

  return a1;
}

void sub_1014B2AB0(_Unwind_Exception *a1)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  sub_100FD23D8(v1 + 24);
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1014B2AF0(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  sub_100FD2F58(v6, (v1 + 32), (v1 + 40), (v1 + 64));
  v2 = *(v1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  (*(*v2 + 48))(v2, v6);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  sub_100FD2EEC(&v5);
  return sub_1000049E0(&v4);
}

void sub_1014B2B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  sub_100FD2EEC(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

void sub_1014B2BC4(uint64_t a1)
{
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  abm::Overrides::Overrides(&v6);
  LOBYTE(v9) = 0;
  Registry::getServerConnection(&v5, *(a1 + 8));
  v3 = v5;
  v5 = 0uLL;
  v4 = *(&v7 + 1);
  v7 = v3;
  if (v4)
  {
    sub_100004A34(v4);
    if (*(&v5 + 1))
    {
      sub_100004A34(*(&v5 + 1));
    }
  }

  getprogname();
  abm::InitServer();
}

void sub_1014B2C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1014B2E8C(va);
  _Unwind_Resume(a1);
}

void sub_1014B2C88(abm **a1@<X8>)
{
  v2 = dispatch_group_create();
  *a1 = v2;
  abm::ShutdownServer(v2, v3);
}

void sub_1014B2CB8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014B2CD0(abm **a1@<X8>)
{
  v2 = dispatch_group_create();
  *a1 = v2;
  abm::StartServer(v2, v3);
}

void sub_1014B2D00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014B2D18(abm **a1@<X8>)
{
  v2 = dispatch_group_create();
  *a1 = v2;
  abm::StopServer(v2, v3);
}

void sub_1014B2D48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014B2D60(uint64_t a1, os_log_t *a2)
{
  v2 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Action: fixed to use ABM", v3, 2u);
  }
}

void sub_1014B2DC0(BasebandModeAction *this)
{
  *this = off_101F42000;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  BasebandModeAction::~BasebandModeAction(this);
}

void sub_1014B2E1C(BasebandModeAction *this)
{
  *this = off_101F42000;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  BasebandModeAction::~BasebandModeAction(this);

  operator delete();
}

void *sub_1014B2E8C(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

void sub_1014B3238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100627050(va);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_1014B3624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1008A1248(va);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_1014B3A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10000FF50(va);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_1014B3CDC(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1014B408C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10000FF50(va);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_1014B4724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, int a12, char a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_100130470(&a50);
  if ((a13 & 1) == 0)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(a1);
}

void sub_1014B4C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if ((v47 & 1) == 0)
  {
    sub_100004A34(v46);
  }

  _Unwind_Resume(a1);
}

void sub_1014B4F64(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1014B5740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, int a12, char a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_100130470(&a50);
  if ((a13 & 1) == 0)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(a1);
}

void sub_1014B5E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if ((v49 & 1) == 0)
  {
    sub_100004A34(v47);
  }

  _Unwind_Resume(a1);
}

void sub_1014B652C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if ((v49 & 1) == 0)
  {
    sub_100004A34(v47);
  }

  _Unwind_Resume(a1);
}

void sub_1014B6A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1008A12C8(va);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_1014B6AC4(uint64_t a1)
{

  operator delete();
}

id sub_1014B6B8C(uint64_t a1, void *a2)
{
  *a2 = off_101F42088;
  a2[1] = *(a1 + 8);
  result = objc_retainBlock(*(a1 + 16));
  a2[2] = result;
  return result;
}

void sub_1014B6BE4(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_1014B6C20(id *a1)
{

  operator delete(a1);
}

void sub_1014B6C64(uint64_t a1, const char *a2)
{
  if ((*a2 & 0x100) != 0)
  {
    v7 = [NSNumber numberWithBool:*a2 & 1];
    (*(*(a1 + 16) + 16))();
  }

  else
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      objc_msgSend_getLogContext(v3);
      v4 = v9;
    }

    else
    {
      v4 = 0;
      *buf = 0;
      v9 = 0;
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "No private network sim found for slot", buf, 2u);
    }

    v5 = *(a1 + 16);
    v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:6 userInfo:0];
    (*(v5 + 16))(v5, 0, v6);
  }
}

uint64_t sub_1014B6DB4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F420E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014B6E34(uint64_t a1)
{

  operator delete();
}

id sub_1014B6EFC(uint64_t a1, void *a2)
{
  *a2 = off_101F42108;
  a2[1] = *(a1 + 8);
  result = objc_retainBlock(*(a1 + 16));
  a2[2] = result;
  return result;
}

void sub_1014B6F54(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_1014B6F90(id *a1)
{

  operator delete(a1);
}

void sub_1014B6FD4(uint64_t a1, const char *a2)
{
  v3 = *a2 | (*(a2 + 4) << 32);
  if ((v3 & 0x100000000) != 0)
  {
    v8 = objc_opt_new();
    [v8 setIsPrivateNetworkSIM:v3 & 1];
    [v8 setIsPrivateNetworkPreferredOverWifi:(v3 >> 8) & 1];
    [v8 setIsPrivateNetworkModeEnabled:(v3 >> 16) & 1];
    [v8 setHideDataRoaming:(v3 >> 24) & 1];
    (*(*(a1 + 16) + 16))();
  }

  else
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      objc_msgSend_getLogContext(v4);
      v5 = v10;
    }

    else
    {
      v5 = 0;
      *buf = 0;
      v10 = 0;
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "No private network sim found for slot", buf, 2u);
    }

    v6 = *(a1 + 16);
    v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:6 userInfo:0];
    (*(v6 + 16))(v6, 0, v7);
  }
}

uint64_t sub_1014B7150(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F42178))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014B71C8(uint64_t a1)
{

  operator delete();
}

id sub_1014B727C(uint64_t a1, void *a2)
{
  *a2 = off_101F42198;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1014B72CC(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1014B7320(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F421F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014B7398(uint64_t a1)
{

  operator delete();
}

id sub_1014B744C(uint64_t a1, void *a2)
{
  *a2 = off_101F42218;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1014B749C(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1014B74F0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F42278))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014B7568(uint64_t a1)
{

  operator delete();
}

id sub_1014B761C(uint64_t a1, void *a2)
{
  *a2 = off_101F42298;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1014B766C(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1014B76BC(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F422F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014B7734(uint64_t a1)
{

  operator delete();
}

id sub_1014B77E8(uint64_t a1, void *a2)
{
  *a2 = off_101F42318;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1014B7838(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1014B7888(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F42378))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014B7900(uint64_t a1)
{

  operator delete();
}

id sub_1014B79B4(uint64_t a1, void *a2)
{
  *a2 = off_101F42398;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1014B7A04(id *a1)
{

  operator delete(a1);
}

void sub_1014B7A40(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  v3 = sub_100B28370(*a2);
  (*(v2 + 16))(v2);
}

uint64_t sub_1014B7AB8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F423F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014B7B30(uint64_t a1)
{

  operator delete();
}

id sub_1014B7BE4(uint64_t a1, void *a2)
{
  *a2 = off_101F42418;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1014B7C34(id *a1)
{

  operator delete(a1);
}

void sub_1014B7C70(uint64_t a1, void *a2)
{
  if ((*a2 & 0x100000000) != 0)
  {
    v3 = *(a1 + 8);
    v4 = *a2 - 1;
    if (v4 < 5)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = 0;
    }

    v6 = [NSError errorWithDomain:&stru_101F6AFB8 code:v5 userInfo:0];
    (*(v3 + 16))(v3);
  }

  else
  {
    v2 = *(*(a1 + 8) + 16);

    v2();
  }
}

uint64_t sub_1014B7D38(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F42478))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014B7DB0(uint64_t a1)
{

  operator delete();
}

id sub_1014B7E64(uint64_t a1, void *a2)
{
  *a2 = off_101F42498;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1014B7EB4(id *a1)
{

  operator delete(a1);
}

void sub_1014B7EF0(uint64_t a1, void *a2)
{
  if ((*a2 & 0x100000000) != 0)
  {
    v3 = *(a1 + 8);
    v4 = *a2 - 1;
    if (v4 < 5)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = 0;
    }

    v6 = [NSError errorWithDomain:&stru_101F6AFB8 code:v5 userInfo:0];
    (*(v3 + 16))(v3);
  }

  else
  {
    v2 = *(*(a1 + 8) + 16);

    v2();
  }
}

uint64_t sub_1014B7FB8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F424F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014B8030(uint64_t a1)
{

  operator delete();
}

id sub_1014B80E4(uint64_t a1, void *a2)
{
  *a2 = off_101F42518;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1014B8134(id *a1)
{

  operator delete(a1);
}

void sub_1014B8170(uint64_t a1, void *a2)
{
  if ((*a2 & 0x100000000) != 0)
  {
    v3 = *(a1 + 8);
    v4 = *a2 - 1;
    if (v4 < 5)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = 0;
    }

    v6 = [NSError errorWithDomain:&stru_101F6AFB8 code:v5 userInfo:0];
    (*(v3 + 16))(v3);
  }

  else
  {
    v2 = *(*(a1 + 8) + 16);

    v2();
  }
}

uint64_t sub_1014B8238(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F42578))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014B82B8(uint64_t a1)
{

  operator delete();
}

id sub_1014B8380(uint64_t a1, void *a2)
{
  *a2 = off_101F42598;
  a2[1] = *(a1 + 8);
  result = objc_retainBlock(*(a1 + 16));
  a2[2] = result;
  return result;
}

void sub_1014B83D8(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_1014B8414(id *a1)
{

  operator delete(a1);
}

void sub_1014B8458(uint64_t a1, uint64_t a2)
{
  LOBYTE(v13[0]) = 0;
  v19 = 0;
  if (*(a2 + 64) == 1)
  {
    v15 = 0;
    if (*(a2 + 24) == 1)
    {
      *v13 = *a2;
      v14 = *(a2 + 16);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v15 = 1;
    }

    LOBYTE(__p) = 0;
    v18 = 0;
    if (*(a2 + 56) == 1)
    {
      __p = *(a2 + 32);
      v17 = *(a2 + 48);
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      *(a2 + 32) = 0;
      v18 = 1;
    }

    v19 = 1;
    v3 = objc_opt_new();
    v4 = v15;
    if (v15 == 1)
    {
      if (v14 >= 0)
      {
        v5 = v13;
      }

      else
      {
        v5 = v13[0];
      }

      v6 = [NSString stringWithUTF8String:v5, v13[0], v13[1], v14];
    }

    else
    {
      v6 = 0;
    }

    [v3 setCsgNetworkIdentifier:{v6, v13[0]}];
    if (v4)
    {
    }

    v9 = v18;
    if (v18 == 1)
    {
      if (v17 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v11 = [NSString stringWithUTF8String:p_p];
    }

    else
    {
      v11 = 0;
    }

    [v3 setNetworkIdentifier:v11];
    if (v9)
    {
    }

    (*(*(a1 + 16) + 16))();
  }

  else
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      objc_msgSend_getLogContext(v7);
      v8 = v21;
    }

    else
    {
      v8 = 0;
      *buf = 0;
      v21 = 0;
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "No private network sim found for slot", buf, 2u);
    }

    v12 = *(a1 + 16);
    v3 = [NSError errorWithDomain:NSPOSIXErrorDomain code:6 userInfo:0, v13[0]];
    (*(v12 + 16))(v12, 0, v3);
  }

  if (v19 == 1)
  {
    if (v18 == 1 && SHIBYTE(v17) < 0)
    {
      operator delete(__p);
    }

    if (v15 == 1 && SHIBYTE(v14) < 0)
    {
      operator delete(v13[0]);
    }
  }
}

void sub_1014B86D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v11)
  {
  }

  sub_1006A2514(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1014B8708(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F42608))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014B8754()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1014B87B8(NSObject **a2@<X1>, uint64_t **a3@<X8>)
{
  a3[1] = 0;
  a3[2] = 0;
  *a3 = (a3 + 1);
  subscriber::makeSimSlotRange();
  v3 = v6;
  if (v6 != v7)
  {
    do
    {
      if (v8(*v3))
      {
        break;
      }

      ++v3;
    }

    while (v3 != v7);
    if (v3 != v7)
    {
      if (*a2)
      {
        dispatch_retain(*a2);
      }

      sub_100E997E4(&v5);
    }
  }
}

void sub_1014B89A8(CellMonitorFactoryInterface *this)
{
  *this = off_101F42628;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  CellMonitorFactoryInterface::~CellMonitorFactoryInterface(this);
}

void sub_1014B8A04(CellMonitorFactoryInterface *this)
{
  *this = off_101F42628;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  CellMonitorFactoryInterface::~CellMonitorFactoryInterface(this);

  operator delete();
}

uint64_t sub_1014B8A74(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v3 = *(a2 + 23);
    if (v3 >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (v3 >= 0)
    {
      v5 = *(a2 + 23);
    }

    else
    {
      v5 = *(a2 + 8);
    }

    for (; v5; --v5)
    {
      v6 = *v4++;
      v8 = v6;
      sub_1001CD884(a1, &v8);
    }
  }

  return a1;
}

uint64_t sub_1014B8AEC(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (Length)
  {
    v6 = Length;
    do
    {
      v7 = *BytePtr++;
      v9 = v7;
      sub_1001CD884(a1, &v9);
      --v6;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1014B8B5C(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"imsi");
    if (Value)
    {
      v5 = CFGetTypeID(Value);
      if (v5 == CFStringGetTypeID())
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        ctu::cf::assign();
        v40[0] = 0;
        *(v40 + 7) = 0;
        if (*(a1 + 24))
        {
          if (*(a1 + 23) < 0)
          {
            operator delete(*a1);
          }

          v6 = v40[0];
          *a1 = 0;
          *(a1 + 8) = v6;
          *(a1 + 15) = *(v40 + 7);
          *(a1 + 23) = 0;
        }

        else
        {
          v7 = v40[0];
          *a1 = v37;
          *(a1 + 8) = v7;
          *(a1 + 15) = *(v40 + 7);
          *(a1 + 23) = 0;
          *(a1 + 24) = 1;
        }
      }
    }

    v8 = CFDictionaryGetValue(theDict, @"smsc");
    if (v8)
    {
      v9 = CFGetTypeID(v8);
      if (v9 == CFStringGetTypeID())
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        ctu::cf::assign();
        v40[0] = 0;
        *(v40 + 7) = 0;
        if (*(a1 + 56))
        {
          if (*(a1 + 55) < 0)
          {
            operator delete(*(a1 + 32));
          }

          v10 = v40[0];
          *(a1 + 32) = 0;
          *(a1 + 40) = v10;
          *(a1 + 47) = *(v40 + 7);
          *(a1 + 55) = 0;
        }

        else
        {
          v11 = v40[0];
          *(a1 + 32) = v37;
          *(a1 + 40) = v11;
          *(a1 + 47) = *(v40 + 7);
          *(a1 + 55) = 0;
          *(a1 + 56) = 1;
        }
      }
    }

    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0;
    *(a1 + 64) = 0u;
    v12 = CFDictionaryGetValue(theDict, @"iwf-keyid");
    v13 = v12;
    if (v12)
    {
      v14 = CFGetTypeID(v12);
      if (v14 == CFStringGetTypeID())
      {
        v15 = v13;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v37 = v15;
    sub_10021D11C((a1 + 80), &v37);
    v16 = CFDictionaryGetValue(theDict, @"iwf-pubkey");
    v17 = v16;
    if (v16)
    {
      v18 = CFGetTypeID(v16);
      if (v18 == CFDataGetTypeID())
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

    v37 = v19;
    sub_1009A440C((a1 + 88), &v37);
    v20 = CFDictionaryGetValue(theDict, @"iwf-cn");
    v21 = v20;
    if (v20)
    {
      v22 = CFGetTypeID(v20);
      if (v22 == CFStringGetTypeID())
      {
        v23 = v21;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    v37 = v23;
    sub_10021D11C((a1 + 96), &v37);
    v24 = CFDictionaryGetValue(theDict, @"iwf-cert");
    v25 = v24;
    if (v24)
    {
      v26 = CFGetTypeID(v24);
      if (v26 == CFStringGetTypeID())
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

    v37 = v27;
    sub_10021D11C((a1 + 104), &v37);
    v28 = CFDictionaryGetValue(theDict, @"iwf-chain");
    v29 = v28;
    if (v28)
    {
      v30 = CFGetTypeID(v28);
      if (v30 == CFArrayGetTypeID())
      {
        v31 = v29;
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }

    v37 = v31;
    sub_10044A870((a1 + 112), &v37);
    v32 = CFDictionaryGetValue(theDict, @"contacts");
    v33 = v32;
    if (v32)
    {
      v34 = CFGetTypeID(v32);
      if (v34 == CFArrayGetTypeID())
      {
        CFArrayGetCount(v33);
        operator new();
      }
    }

    v35 = *(a1 + 72);
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    if (v35)
    {
      sub_100004A34(v35);
    }
  }

  else
  {
    *(a1 + 112) = 0;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 64) = 0u;
  }

  return a1;
}

void sub_1014B904C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const void **a9, const void **a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_100222180(&__p);
  sub_100004A34(v18);
  sub_100010250(a9);
  sub_100005978(v17 + 3);
  sub_100005978(a10);
  sub_10002D760(v17 + 1);
  sub_100005978(v17);
  v20 = *(v16 + 72);
  if (v20)
  {
    sub_100004A34(v20);
  }

  sub_100554110(v16);
  _Unwind_Resume(a1);
}

void sub_1014B9158(__CFDictionary **a1, uint64_t a2, __CFDictionary **a3)
{
  if (!*a3)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v7 = *a3;
      *a3 = Mutable;
      *&v32 = v7;
      sub_1000296E0(&v32);
    }
  }

  sub_100029714(&v22, a3);
  v8 = v22;
  if (!v22)
  {
    v9 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v8 = v22;
    if (v9)
    {
      v22 = v9;
      *&v32 = v8;
      sub_1000296E0(&v32);
      v8 = v22;
    }
  }

  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__dst, *a2, *(a2 + 8));
    }

    else
    {
      *__dst = *a2;
      v28 = *(a2 + 16);
    }

    if (SHIBYTE(v28) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v31 = v28;
    }

    v34 = 0;
    if (SHIBYTE(v31) < 0)
    {
      sub_100005F2C(&v32, __p[0], __p[1]);
    }

    else
    {
      v32 = *__p;
      v33 = v31;
    }

    v35 = 0;
    if (ctu::cf::convert_copy())
    {
      v10 = v34;
      v34 = v35;
      v24[0] = v10;
      sub_100005978(v24);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    value = v34;
    v34 = 0;
    sub_100005978(&v34);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }

    CFDictionarySetValue(v8, @"imsi", value);
    sub_100005978(&value);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__dst[0]);
    }

    v8 = v22;
  }

  if (*(a2 + 56) == 1)
  {
    if (*(a2 + 55) < 0)
    {
      sub_100005F2C(v24, *(a2 + 32), *(a2 + 40));
    }

    else
    {
      *v24 = *(a2 + 32);
      v25 = *(a2 + 48);
    }

    if (SHIBYTE(v25) < 0)
    {
      sub_100005F2C(__p, v24[0], v24[1]);
    }

    else
    {
      *__p = *v24;
      v31 = v25;
    }

    value = 0;
    if (SHIBYTE(v31) < 0)
    {
      sub_100005F2C(&v32, __p[0], __p[1]);
    }

    else
    {
      v32 = *__p;
      v33 = v31;
    }

    v34 = 0;
    if (ctu::cf::convert_copy())
    {
      v11 = value;
      value = v34;
      v35 = v11;
      sub_100005978(&v35);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    v12 = value;
    v26 = value;
    value = 0;
    sub_100005978(&value);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }

    CFDictionarySetValue(v8, @"smsc", v12);
    sub_100005978(&v26);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }

    v8 = v22;
  }

  v22 = 0;
  v23 = v8;
  if (&v23 != a3)
  {
    *&v32 = *a3;
    *a3 = v8;
    v23 = 0;
    sub_1000296E0(&v32);
  }

  sub_1000296E0(&v23);
  sub_1000296E0(&v22);
  v13 = *(a2 + 80);
  if (v13)
  {
    CFDictionarySetValue(*a3, @"iwf-keyid", v13);
  }

  v14 = *(a2 + 88);
  if (v14)
  {
    CFDictionarySetValue(*a3, @"iwf-pubkey", v14);
  }

  v15 = *(a2 + 96);
  if (v15)
  {
    CFDictionarySetValue(*a3, @"iwf-cn", v15);
  }

  v16 = *(a2 + 104);
  if (v16)
  {
    CFDictionarySetValue(*a3, @"iwf-cert", v16);
  }

  v17 = *(a2 + 112);
  if (v17)
  {
    CFDictionarySetValue(*a3, @"iwf-chain", v17);
  }

  if (*(a2 + 64))
  {
    __p[0] = 0;
    v18 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (v18)
    {
      __p[0] = v18;
      *&v32 = 0;
      sub_1000279DC(&v32);
    }

    v19 = *(a2 + 64);
    v20 = *v19;
    v21 = v19[1];
    while (v20 != v21)
    {
      CFArrayAppendValue(__p[0], *v20++);
    }

    CFDictionarySetValue(*a3, @"contacts", __p[0]);
    sub_1000279DC(__p);
  }

  *a1 = *a3;
  *a3 = 0;
}

void sub_1014B959C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, const void *a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_100005978(&a24);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_1000296E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1014B9680(uint64_t a1)
{
  *a1 = off_101F42670;
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  sub_100DE3E98(*(a1 + 56));
  sub_100E27210(*(a1 + 32));
  sub_1000475BC((a1 + 8));
  return a1;
}

void sub_1014B96F4(SatMsg_ProvisioningXpc *a1)
{
  SatMsg_ProvisioningXpc::~SatMsg_ProvisioningXpc(a1);

  operator delete();
}

uint64_t sub_1014B972C(uint64_t a1)
{
  *a1 = off_101F42750;
  ctu::RestModule::disconnect((a1 + 64));
  v2 = *(a1 + 360);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v14 = (a1 + 328);
  sub_1014CD2C4(&v14);
  v3 = *(a1 + 320);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 296);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_1000475BC((a1 + 280));
  v5 = *(a1 + 264);
  *(a1 + 264) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 256);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 240);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 224);
  if (v8)
  {
    sub_100004A34(v8);
  }

  sub_100DE3E98(*(a1 + 184));
  v9 = *(a1 + 168);
  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_10006DCAC(a1 + 128, *(a1 + 136));
  sub_1008441A8(a1 + 104, *(a1 + 112));
  v10 = *(a1 + 80);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    sub_100004A34(v12);
  }

  SatMsg_ProvisioningXpc::~SatMsg_ProvisioningXpc(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1014B9878(uint64_t a1)
{
  sub_1014B972C(a1);

  operator delete();
}

void sub_1014B9E38()
{
  if (_os_feature_enabled_impl())
  {
    sub_1014B98B0();
  }

  operator new();
}

void sub_1014B9F04(void *a1, __int128 *a2)
{
  v3 = a1[42];
  v4 = a1[43];
  if (v3 >= v4)
  {
    v7 = a1[41];
    v8 = (v3 - v7) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_1000CE3D4();
    }

    v10 = v4 - v7;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      sub_100013D10();
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    v6 = (v12 + 16);
    v14 = a1[41];
    v15 = a1[42] - v14;
    v16 = v12 - v15;
    memcpy((v12 - v15), v14, v15);
    a1[41] = v16;
    a1[42] = v6;
    a1[43] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  a1[42] = v6;
}

void sub_1014BA028(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 328);
  if (v2 != *(a1 + 336))
  {
    while (1)
    {
      v5 = v2[1];
      if (!v5)
      {
        break;
      }

      v6 = std::__shared_weak_count::lock(v5);
      if (!v6 || !*v2 || *v2 == a2)
      {
        goto LABEL_8;
      }

      v2 += 2;
LABEL_20:
      sub_100004A34(v6);
      v11 = *(a1 + 336);
LABEL_21:
      if (v2 == v11)
      {
        return;
      }
    }

    v6 = 0;
LABEL_8:
    v7 = *(a1 + 336);
    if (v2 + 2 == v7)
    {
      v11 = v2;
    }

    else
    {
      v8 = v2;
      do
      {
        v9 = *(v8 + 1);
        v8[2] = 0;
        v8[3] = 0;
        v10 = v8[1];
        *v8 = v9;
        if (v10)
        {
          std::__shared_weak_count::__release_weak(v10);
        }

        v11 = v8 + 2;
        v12 = v8 + 4;
        v8 += 2;
      }

      while (v12 != v7);
      v7 = *(a1 + 336);
    }

    while (v7 != v11)
    {
      v13 = *(v7 - 1);
      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      v7 -= 2;
    }

    *(a1 + 336) = v11;
    if (!v6)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }
}

void sub_1014BA124(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v3);
      sub_10000501C(&__p, "/cc/props/imsi_identity_ready");
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1014BB160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, int a20, const void *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33)
{
  sub_10001021C(&__p);
  sub_100029A48(&a21);
  _Unwind_Resume(a1);
}

void sub_1014BB388(void *a1, Registry *this)
{
  ServiceMap = Registry::getServiceMap(this);
  v4 = ServiceMap;
  v5 = "8UStorage";
  if (("8UStorage" & 0x8000000000000000) != 0)
  {
    v6 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
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
  v12 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v12);
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
  *a1 = v11;
  a1[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v10);
  }
}

void sub_1014BB4A4(void *a1, std::mutex *this)
{
  std::mutex::lock(this);
  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v5 = theDict;
    theDict = Mutable;
    value = v5;
    sub_1000296E0(&value);
  }

  sig = this[1].__m_.__sig;
  if (sig)
  {
    CFDictionarySetValue(theDict, @"ue-pub-key", sig);
  }

  v7 = *this[1].__m_.__opaque;
  if (v7)
  {
    CFDictionarySetValue(theDict, @"cred-key", v7);
  }

  v8 = *&this[1].__m_.__opaque[8];
  if (v8)
  {
    CFDictionarySetValue(theDict, @"msisdn-key", v8);
  }

  v9 = *&this[2].__m_.__opaque[48];
  if (v9)
  {
    CFDictionarySetValue(theDict, @"hmac-link-key", v9);
  }

  if (*&this[1].__m_.__opaque[16])
  {
    sub_1014CD34C(&value, &this[1].__m_.__opaque[16]);
    CFDictionarySetValue(theDict, @"mt-key", value);
    sub_10000A1EC(&value);
  }

  if (*&this[1].__m_.__opaque[48])
  {
    sub_1014CD34C(&value, &this[1].__m_.__opaque[48]);
    CFDictionarySetValue(theDict, @"mt-recovery-key", value);
    sub_10000A1EC(&value);
  }

  if (*&this[2].__m_.__opaque[16])
  {
    sub_1014CD34C(&value, &this[2].__m_.__opaque[16]);
    CFDictionarySetValue(theDict, @"mo-key", value);
    sub_10000A1EC(&value);
  }

  sub_100010180(a1, &theDict);
  sub_1000296E0(&theDict);
  std::mutex::unlock(this);
}

void sub_1014BB634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a10);
  sub_1000296E0(&a9);
  std::mutex::unlock(v10);
  _Unwind_Resume(a1);
}

void sub_1014BB674(uint64_t a1)
{
  v2 = *(a1 + 216);
  if (v2)
  {
    sub_1014C180C(v2, *(a1 + 224), (a1 + 80), (a1 + 48));
  }
}

void sub_1014BB79C(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014BB7B8(uint64_t a1)
{
  v2 = *(a1 + 232);
  if (v2)
  {
    sub_1014C180C(v2, *(a1 + 240), (a1 + 80), (a1 + 48));
  }
}

void sub_1014BB8E0(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014BB8FC(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (v2)
  {
    sub_1014C180C(v2, *(a1 + 256), (a1 + 80), (a1 + 48));
  }
}

void sub_1014BBA24(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1014BBA40(CFUUIDRef *a1, const __CFString *a2)
{
  *a1 = 0;
  *a1 = CFUUIDCreateFromString(0, a2);
  v3 = 0;
  return sub_1000475BC(&v3);
}

void sub_1014BBA98(void *a1, int a2)
{
  v3 = a1[5];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I scheduling certificate validation", buf, 2u);
  }

  v4 = a1[2];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      p_shared_weak_owners = &v5->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v5);
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      sub_10042FEEC();
    }
  }

  sub_100013CC4();
}

void sub_1014BBC0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014BBC3C(uint64_t *a1)
{
  if (*(*a1 + 49) || !isReal() || (v2 = *a1, (*(*a1 + 62) & 1) != 0) || (*(v2 + 63) & 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 96) ^ 1;
  }

  return v3 & 1;
}

void sub_1014BBC9C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 160);
  if (!v4)
  {
    __assert_rtn("addSimToConfig", "SatMsg_ProvisioningImpl_watch_ios.mm", 1405, "isBootstrapped()");
  }

  *a1 = 0;
  a1[1] = 0;
  v7 = sub_100007A6C(v4, a3);
  v8 = *(a2 + 160) + 8;
  v9 = *(a2 + 40);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8 == v7)
  {
    if (v10)
    {
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

      *buf = 136315138;
      *&buf[4] = v20;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I adding %s config", buf, 0xCu);
    }

    v32 = 0;
    ServiceMap = Registry::getServiceMap(*(a2 + 48));
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
    if (v27)
    {
      v29 = v27[3];
      v28 = v27[4];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v22);
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v28);
        v30 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v29 = 0;
    }

    std::mutex::unlock(v22);
    v28 = 0;
    v30 = 1;
LABEL_34:
    (*(*v29 + 24))(&v31, v29, a3, @"sim-cfg", @"SatMsg", 0, 2);
    sub_100010180(&v32, &v31);
    sub_10000A1EC(&v31);
    if ((v30 & 1) == 0)
    {
      sub_100004A34(v28);
    }

    operator new();
  }

  if (v10)
  {
    v11 = *(a3 + 23);
    v12 = (v11 & 0x80u) != 0;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a3 + 8);
    }

    if (v12)
    {
      v13 = *a3;
    }

    else
    {
      v13 = a3;
    }

    if (v11)
    {
      v14 = v13;
    }

    else
    {
      v14 = "<invalid>";
    }

    *buf = 136315138;
    *&buf[4] = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s config already exist", buf, 0xCu);
  }

  v16 = *(v7 + 56);
  v15 = *(v7 + 64);
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = v16;
  a1[1] = v15;
}

void sub_1014BC110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_10001021C(va);
  v6 = *(v3 + 8);
  if (v6)
  {
    sub_100004A34(v6);
  }

  _Unwind_Resume(a1);
}

void sub_1014BC1B8(uint64_t a1)
{
  v2 = *(a1 + 216);
  if (v2)
  {
    v3 = *(v2 + 24);
    v4 = (v2 + 32);
    if (v3 != (v2 + 32))
    {
      v5 = 0;
      while (1)
      {
        v6 = *(*(a1 + 88) + 152);
        v7 = *v6;
        v8 = *(v6 + 8);
        if (*v6 != v8)
        {
          while (!sub_100071DF8((*v7 + 24), v3 + 5))
          {
            v7 += 2;
            if (v7 == v8)
            {
              v7 = v8;
              break;
            }
          }

          v8 = *(v6 + 8);
        }

        if (v7 == v8)
        {
          break;
        }

        v10 = *v7;
        v9 = v7[1];
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v10 || (*(v10 + 48) & 1) == 0)
        {
          goto LABEL_17;
        }

        v11 = 0;
        v5 = 1;
        if (v9)
        {
          goto LABEL_18;
        }

LABEL_19:
        if (v11)
        {
          v12 = v3[1];
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
              v13 = v3[2];
              v14 = *v13 == v3;
              v3 = v13;
            }

            while (!v14);
          }

          v3 = v13;
          if (v13 != v4)
          {
            continue;
          }
        }

        goto LABEL_28;
      }

      v9 = 0;
LABEL_17:
      v11 = 1;
      if (!v9)
      {
        goto LABEL_19;
      }

LABEL_18:
      sub_100004A34(v9);
      goto LABEL_19;
    }
  }

  v5 = 0;
LABEL_28:
  v15 = v5;
  if (*(a1 + 200) != (v5 & 1))
  {
    *(a1 + 200) = v5;
    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = asStringBool(v15);
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I reevaluateProvisioningState to %s", buf, 0xCu);
    }

    v17 = *(a1 + 16);
    if (v17)
    {
      if (std::__shared_weak_count::lock(v17))
      {
        operator new();
      }
    }

    sub_100013CC4();
  }
}

void sub_1014BC414(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1014BC424(uint64_t a1)
{
  if (*(a1 + 97) == 1 && (*(a1 + 96) & 1) == 0)
  {
    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 264))
      {
        v3 = "Res";
      }

      else
      {
        v3 = "S";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %scheduling new proposition", &buf, 0xCu);
    }

    v4 = *(a1 + 16);
    if (!v4 || (v5 = *(a1 + 8), (v6 = std::__shared_weak_count::lock(v4)) == 0))
    {
      sub_100013CC4();
    }

    v7 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
    Registry::getTimerService(&buf, *(a1 + 48));
    v8 = buf;
    sub_10000501C(__p, "proposing new config");
    v9 = *(a1 + 24);
    object = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 3321888768;
    aBlock[2] = sub_1014BC714;
    aBlock[3] = &unk_101F427E8;
    aBlock[4] = a1;
    aBlock[5] = v5;
    v14 = v7;
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v15 = _Block_copy(aBlock);
    sub_100D23364(v8, __p, 1, 5000000, &object, &v15);
    v10 = v19;
    v19 = 0;
    v11 = *(a1 + 264);
    *(a1 + 264) = v10;
    if (v11)
    {
      (*(*v11 + 8))(v11);
      v12 = v19;
      v19 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }

    if (v15)
    {
      _Block_release(v15);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (*(&buf + 1))
    {
      sub_100004A34(*(&buf + 1));
    }

    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }

    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_1014BC690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014BC714(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!a1[5])
      {
        goto LABEL_59;
      }

      v6 = *(v3 + 264);
      *(v3 + 264) = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v8 = (v3 + 40);
      v7 = *(v3 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I waiting timeout expired - now we can propose new config, if needed", buf, 2u);
      }

      if (*(v3 + 97) != 1 || (*(v3 + 96) & 1) != 0)
      {
        goto LABEL_59;
      }

      v9 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I ***** proposeNewConfig ****", buf, 2u);
      }

      v10 = *(v3 + 160);
      if (v10)
      {
        v13 = *v10;
        v11 = v10 + 1;
        v12 = v13;
        if (v13 == v11)
        {
          v26 = 0;
        }

        else
        {
          v14 = 0;
          v15 = 1;
          do
          {
            v16 = *(v3 + 160);
            if (v16 + 32 == sub_100007A6C(v16 + 24, v12 + 32))
            {
              ++v14;
              v17 = v12[7];
              if (*(v17 + 24) != 1 || *(v17 + 56) != 1 || !*(v17 + 64))
              {
                v18 = *v8;
                if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
                {
                  v19 = *(v12 + 55);
                  v20 = (v19 & 0x80u) != 0;
                  if ((v19 & 0x80u) != 0)
                  {
                    v19 = v12[5];
                  }

                  if (v20)
                  {
                    v21 = v12[4];
                  }

                  else
                  {
                    v21 = (v12 + 4);
                  }

                  v22 = v19 == 0;
                  v23 = "<invalid>";
                  if (!v22)
                  {
                    v23 = v21;
                  }

                  *buf = 136315138;
                  *&buf[4] = v23;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I config for %s is not ready yet", buf, 0xCu);
                }

                v15 = 0;
              }
            }

            v24 = v12[1];
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
                v25 = v12[2];
                v22 = *v25 == v12;
                v12 = v25;
              }

              while (!v22);
            }

            v12 = v25;
          }

          while (v25 != v11);
          v26 = v14 != 0;
          if ((v15 & 1) == 0)
          {
            goto LABEL_59;
          }
        }

        v29 = *(v3 + 216);
        if (v29)
        {
          LODWORD(v29) = *(v29 + 16);
        }

        if ((v26 | v29))
        {
          v30 = *(v3 + 248);
          if (v30 && (sub_1014C1C30(v3, v30, "<upcoming>") & 1) != 0)
          {
            v31 = *v8;
            if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = "<upcoming>";
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I no need for changing %s", buf, 0xCu);
            }
          }

          else if (sub_1014C18C4(v3, v26))
          {
            if (*(v3 + 248))
            {
              v32 = *v8;
              if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = "<upcoming>";
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I replacing previos %s", buf, 0xCu);
              }

              sub_1014BB8FC(v3);
            }

            v33 = *(v3 + 160);
            v34 = (v3 + 40);
            sub_1014D0AD8(buf, (v3 + 48), v33, &v34);
          }

          if (*(v3 + 152) == 1)
          {
            if (*(v3 + 248))
            {
              sub_1014BE694(v3);
            }
          }

          goto LABEL_59;
        }

        v27 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v28 = "#I no SIMs in config - nothing to provision";
          goto LABEL_49;
        }
      }

      else
      {
        v27 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v28 = "#I Current config is not ready yet, module not bootstrapped";
LABEL_49:
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 2u);
        }
      }

LABEL_59:
      sub_100004A34(v5);
    }
  }
}

void sub_1014BCC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10001021C(va);
  sub_100004A34(v7);
  _Unwind_Resume(a1);
}

uint64_t sub_1014BCC78(uint64_t result, uint64_t a2)
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

void sub_1014BCC94(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014BCCA4(void *a1)
{
  v2 = a1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I provisioning started", buf, 2u);
  }

  if (a1[20])
  {
    v3 = a1[2];
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        p_shared_weak_owners = &v4->__shared_weak_owners_;
        atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v4);
        atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        sub_10042FEEC();
      }
    }

    sub_100013CC4();
  }

  __assert_rtn("lazy_start", "SatMsg_ProvisioningImpl_watch_ios.mm", 1238, "isBootstrapped()");
}

void sub_1014BCE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  std::__shared_weak_count::__release_weak(v15);
  _Unwind_Resume(a1);
}

void sub_1014BCE7C(void *a1)
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
        ++v3[38];
        v6 = v3[5];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I daily check", v17, 2u);
        }

        v7 = v3[22];
        if (v7 != v3 + 23)
        {
          do
          {
            v8 = v7[7];
            *(v8 + 104) = 0;
            *(v8 + 108) = 0;
            v9 = v7[1];
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
                v10 = v7[2];
                v11 = *v10 == v7;
                v7 = v10;
              }

              while (!v11);
            }

            v7 = v10;
          }

          while (v10 != v3 + 23);
        }

        sub_1014BC424(v3);
        if ((0x6DB6DB6DB6DB6DB7 * v3[38]) <= 0x2492492492492492)
        {
          v12 = v3[5];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I weekly check", buf, 2u);
          }

          v13 = v3[20];
          if (v13)
          {
            v15 = *(v13 + 32);
            v14 = (v13 + 32);
            sub_100009970((v14 - 1), v15);
            *v14 = 0;
            v14[1] = 0;
            *(v14 - 1) = v14;
            sub_1014BC424(v3);
          }
        }

        v16 = v3[36];
        if (v16)
        {
          sub_100430D40(v16, 0);
        }
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1014BD04C(uint64_t result, uint64_t a2)
{
  *(result + 32) = *(a2 + 32);
  v2 = *(a2 + 48);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1014BD070(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

BOOL sub_1014BD090(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "NO";
    if (a2)
    {
      v5 = "YES";
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I changed ConfigInUse: %s", buf, 0xCu);
  }

  if (*(a1 + 97) == 1)
  {
    if (*(a1 + 96) == a2)
    {
      return *(a1 + 96) == a2;
    }

    *(a1 + 96) = a2 | 0x100;
    if ((a2 & 1) == 0)
    {
      v6 = *(a1 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Config was unlocked, meaning was used - mark it as dirty and refresh", buf, 2u);
      }

      v7 = *(a1 + 16);
      if (v7)
      {
        if (std::__shared_weak_count::lock(v7))
        {
          operator new();
        }
      }

      sub_100013CC4();
    }
  }

  else
  {
    *(a1 + 96) = a2 | 0x100;
    if ((a2 & 1) == 0)
    {
      sub_1014BC424(a1);
      return *(a1 + 96) == a2;
    }
  }

  if (*(a1 + 232))
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "<proposed>";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I config locked - dropping %s", buf, 0xCu);
    }

    sub_1014BB7B8(a1);
  }

  if (*(a1 + 248))
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "<upcoming>";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I config locked - dropping %s", buf, 0xCu);
    }

    sub_1014BB8FC(a1);
  }

  return *(a1 + 96) == a2;
}

void sub_1014BD348(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1014BD35C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (*(result + 216))
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_1014BDAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void **a9, void **a10)
{
  v14 = *a10;
  if (*a10)
  {
    v11[4].__shared_owners_ = v14;
    operator delete(v14);
  }

  sub_100DE3E98(*v12);
  sub_100E27210(*v10);
  sub_1000475BC(a9);
  std::__shared_weak_count::~__shared_weak_count(v11);
  operator delete(v15);
  _Unwind_Resume(a1);
}

void sub_1014BDBC4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I invalidate currently settled config", &v15, 2u);
  }

  v3 = *(a1 + 216);
  if (v3)
  {
    *(v3 + 16) = 1;
    if ((atomic_load_explicit(&qword_101FCAC30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCAC30))
    {
      v15 = @"SettledConfig";
      qword_101FCAC50 = 0;
      unk_101FCAC58 = 0;
      qword_101FCAC48 = 0;
      sub_10005B328(&qword_101FCAC48, &v15, &v16, 1uLL);
      __cxa_atexit(sub_10041F938, &qword_101FCAC48, &_mh_execute_header);
      __cxa_guard_release(&qword_101FCAC30);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 48));
    v5 = ServiceMap;
    v6 = "8UStorage";
    if (("8UStorage" & 0x8000000000000000) != 0)
    {
      v7 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
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
    v15 = v6;
    v10 = sub_100009510(&v5[1].__m_.__sig, &v15);
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
LABEL_15:
        sub_10071B8E0(v12, @"dirty", kCFBooleanTrue, @"SatMsg", &qword_101FCAC48, 2, 0, 0);
        if ((v13 & 1) == 0)
        {
          sub_100004A34(v11);
        }

        sub_1014BC424(a1);
        return;
      }
    }

    else
    {
      v12 = 0;
    }

    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    goto LABEL_15;
  }

  v14 = *(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#E nothing to invalidate", &v15, 2u);
  }
}

void sub_1014BDE60(void *a1, uint64_t a2, uint64_t *a3)
{
  if (a1[20])
  {
    if (sub_1014BBC3C(a3))
    {
      v6 = a1[5];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        asString();
        v7 = v39 >= 0 ? __p : __p[0];
        *buf = 136315138;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I event: %s", buf, 0xCu);
        if (v39 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v8 = sub_100007A6C((a1 + 22), a2);
      if (a1 + 23 != v8)
      {
        v9 = v8[7];
        v10 = v8[8];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v9)
        {
          v12 = *a3;
          v11 = a3[1];
          if (v11)
          {
            atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
          }

          v13 = v9[1];
          *v9 = v12;
          v9[1] = v11;
          if (v13)
          {
            sub_100004A34(v13);
          }
        }

        if (v10)
        {
          sub_100004A34(v10);
        }
      }

      v14 = *(a2 + 24);
      if (v14 <= 1)
      {
        if (*(a2 + 24))
        {
          if (v14 == 1)
          {
            v16 = a1[5];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = *(a2 + 23);
              v18 = (v17 & 0x80u) != 0;
              if ((v17 & 0x80u) != 0)
              {
                v17 = *(a2 + 8);
              }

              if (v18)
              {
                v19 = *a2;
              }

              else
              {
                v19 = a2;
              }

              if (v17)
              {
                v20 = v19;
              }

              else
              {
                v20 = "<invalid>";
              }

              LODWORD(__p[0]) = 136315138;
              *(__p + 4) = v20;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I SIM %s become active", __p, 0xCu);
            }

            memset(buf, 0, sizeof(buf));
            sub_1014BBC9C(buf, a1, a2);
            v21 = a1[5];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = *(a2 + 23);
              v23 = (v22 & 0x80u) != 0;
              if ((v22 & 0x80u) != 0)
              {
                v22 = *(a2 + 8);
              }

              if (v23)
              {
                v24 = *a2;
              }

              else
              {
                v24 = a2;
              }

              if (v22)
              {
                v25 = v24;
              }

              else
              {
                v25 = "<invalid>";
              }

              LODWORD(__p[0]) = 136315138;
              *(__p + 4) = v25;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I simcfg %s:", __p, 0xCu);
            }

            v36 = 0;
            sub_1014B9158(&v37, *buf, &v36);
            __p[0] = off_101F42F90;
            __p[1] = a1;
            *&v40 = __p;
            logger::CFTypeRefLogger();
            sub_100007E44(__p);
            sub_1000296E0(&v37);
            sub_1000296E0(&v36);
            sub_1014BC424(a1);
            if (*&buf[8])
            {
              sub_100004A34(*&buf[8]);
            }
          }
        }

        else
        {
          v31 = a1[5];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *(a2 + 23);
            v33 = (v32 & 0x80u) != 0;
            if ((v32 & 0x80u) != 0)
            {
              v32 = *(a2 + 8);
            }

            if (v33)
            {
              v34 = *a2;
            }

            else
            {
              v34 = a2;
            }

            if (v32)
            {
              v35 = v34;
            }

            else
            {
              v35 = "<invalid>";
            }

            LODWORD(__p[0]) = 136315138;
            *(__p + 4) = v35;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I SIM %s added", __p, 0xCu);
          }

          if (a1 + 23 == sub_100007A6C((a1 + 22), a2))
          {
            sub_1014D030C(buf, a3);
          }
        }

        goto LABEL_28;
      }

      if (v14 == 2)
      {
        v26 = a1[5];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = *(a2 + 23);
          v28 = (v27 & 0x80u) != 0;
          if ((v27 & 0x80u) != 0)
          {
            v27 = *(a2 + 8);
          }

          if (v28)
          {
            v29 = *a2;
          }

          else
          {
            v29 = a2;
          }

          if (v27)
          {
            v30 = v29;
          }

          else
          {
            v30 = "<invalid>";
          }

          LODWORD(__p[0]) = 136315138;
          *(__p + 4) = v30;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I SIM %s become inactive", __p, 0xCu);
        }

        sub_1014D0A28(a1[20], a2);
        goto LABEL_28;
      }

      if (v14 == 6)
      {
        sub_1014BE390(a1, a2);
        goto LABEL_28;
      }

      if (v14 != 7)
      {
        goto LABEL_28;
      }
    }

    else
    {
      sub_1014BE390(a1, a2);
    }

    sub_1014BE47C(a1, a2);
LABEL_28:
    sub_1014BC1B8(a1);
    return;
  }

  v15 = a1[5];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I module is not yet bootstrapped - ignore handlePersonalityEvent", __p, 2u);
  }
}

void sub_1014BE334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    sub_100004A34(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014BE390(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 23);
    v6 = (v5 & 0x80u) != 0;
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a2 + 8);
    }

    if (v6)
    {
      v7 = *a2;
    }

    else
    {
      v7 = a2;
    }

    if (v5)
    {
      v8 = v7;
    }

    else
    {
      v8 = "<invalid>";
    }

    v10 = 136315138;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I SIM %s removed from picture (detached)", &v10, 0xCu);
  }

  sub_1014D0A28(*(a1 + 160), a2);
  return sub_1000727F0((*(a1 + 160) + 24), a2);
}

void sub_1014BE47C(void *a1, uint64_t a2)
{
  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 23);
    v6 = (v5 & 0x80u) != 0;
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a2 + 8);
    }

    if (v6)
    {
      v7 = *a2;
    }

    else
    {
      v7 = a2;
    }

    if (v5)
    {
      v8 = v7;
    }

    else
    {
      v8 = "<invalid>";
    }

    v16 = 136315138;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I SIM %s removed from models (gone)", &v16, 0xCu);
  }

  v9 = sub_100007A6C((a1 + 22), a2);
  if (a1 + 23 != v9)
  {
    v10 = v9;
    v11 = v9[1];
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
      v13 = v9;
      do
      {
        v12 = v13[2];
        v14 = *v12 == v13;
        v13 = v12;
      }

      while (!v14);
    }

    if (a1[22] == v9)
    {
      a1[22] = v12;
    }

    v15 = a1[23];
    --a1[24];
    sub_100018288(v15, v10);
    sub_1000D57F4((v10 + 4));
    operator delete(v10);
  }
}

void sub_1014BE5CC(uint64_t a1, _BOOL4 a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = asStringBool(a2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I internet state changes to %s", &v5, 0xCu);
  }

  *(a1 + 152) = a2;
  if (a2)
  {
    if (*(a1 + 248))
    {
      sub_1014BE694(a1);
    }
  }
}

void sub_1014BE694(uint64_t a1)
{
  if (*(a1 + 97) != 1 || (*(a1 + 96) & 1) != 0)
  {
    return;
  }

  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I **** prepareAndPublish", buf, 2u);
  }

  v3 = *(a1 + 248);
  if (!v3)
  {
    __assert_rtn("prepareAndPublish", "SatMsg_ProvisioningImpl_watch_ios.mm", 1671, "fUpcoming");
  }

  v202 = (a1 + 40);
  v4 = *(v3 + 48);
  v5 = (v3 + 56);
  if (v4 == (v3 + 56))
  {
    v18 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = *(a1 + 160);
      if (v8 + 32 == sub_100007A6C(v8 + 24, v4 + 32))
      {
        ++v6;
        v9 = v4[7];
        if (*(v9 + 24) != 1 || *(v9 + 56) != 1 || !*(v9 + 64) || !*(v9 + 80) || !*(v9 + 88) || !*(v9 + 96))
        {
          v10 = *v202;
          if (os_log_type_enabled(*v202, OS_LOG_TYPE_DEFAULT))
          {
            v11 = *(v4 + 55);
            v12 = (v11 & 0x80u) != 0;
            if ((v11 & 0x80u) != 0)
            {
              v11 = v4[5];
            }

            if (v12)
            {
              v13 = v4[4];
            }

            else
            {
              v13 = (v4 + 4);
            }

            if (v11)
            {
              v14 = v13;
            }

            else
            {
              v14 = "<invalid>";
            }

            *buf = 136315138;
            *&buf[4] = v14;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I no IWF key for %s yet", buf, 0xCu);
          }

          sub_1014C288C(a1, (v4 + 4));
          v7 = 0;
        }
      }

      v15 = v4[1];
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
          v16 = v4[2];
          v17 = *v16 == v4;
          v4 = v16;
        }

        while (!v17);
      }

      v4 = v16;
    }

    while (v16 != v5);
    v18 = v6 != 0;
    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  if ((sub_1014C18C4(a1, v18) & 1) == 0)
  {
    sub_1014BB8FC(a1);
    return;
  }

  v19 = *(a1 + 248);
  if (!v19)
  {
    __assert_rtn("prepareAndPublish", "SatMsg_ProvisioningImpl_watch_ios.mm", 1695, "fUpcoming");
  }

  v20 = *(v19 + 48);
  v21 = (v19 + 56);
  if (v20 == (v19 + 56))
  {
    v134 = 0;
    goto LABEL_286;
  }

  v199 = 0;
  v22 = (a1 + 40);
  do
  {
    v23 = sub_100007A6C(a1 + 176, v20 + 32);
    if (a1 + 184 == v23)
    {
      v24 = 0;
LABEL_56:
      v34 = *v22;
      if (!os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_67;
      }

      v35 = v20[55];
      v36 = (v35 & 0x80u) != 0;
      if ((v35 & 0x80u) != 0)
      {
        v35 = *(v20 + 5);
      }

      if (v36)
      {
        v37 = *(v20 + 4);
      }

      else
      {
        v37 = v20 + 32;
      }

      if (v35)
      {
        v38 = v37;
      }

      else
      {
        v38 = "<invalid>";
      }

      *buf = 136315138;
      *&buf[4] = v38;
      v32 = v34;
      v33 = "#E model is not found for %s, strange but going forward";
LABEL_66:
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v33, buf, 0xCu);
LABEL_67:
      if (!v24)
      {
        goto LABEL_69;
      }

LABEL_68:
      sub_100004A34(v24);
      goto LABEL_69;
    }

    v25 = *(v23 + 56);
    v24 = *(v23 + 64);
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v25)
    {
      v22 = (a1 + 40);
      goto LABEL_56;
    }

    v26 = *(a1 + 160);
    if (v26 + 32 != sub_100007A6C(v26 + 24, v20 + 32))
    {
      v22 = (a1 + 40);
      v27 = *v202;
      if (!os_log_type_enabled(*v202, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_67;
      }

      v28 = v20[55];
      v29 = (v28 & 0x80u) != 0;
      if ((v28 & 0x80u) != 0)
      {
        v28 = *(v20 + 5);
      }

      if (v29)
      {
        v30 = *(v20 + 4);
      }

      else
      {
        v30 = v20 + 32;
      }

      if (v28)
      {
        v31 = v30;
      }

      else
      {
        v31 = "<invalid>";
      }

      *buf = 136315138;
      *&buf[4] = v31;
      v32 = v27;
      v33 = "#I excluding SIM %s from config as unsupported";
      goto LABEL_66;
    }

    v41 = sub_100007A6C(*(a1 + 248) + 72, v20 + 32);
    v42 = *(v41 + 64);
    v201 = *(v41 + 56);
    v22 = (a1 + 40);
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v200 = v42;
    oslog = **(a1 + 248);
    v43 = *(a1 + 40);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = PersonalityInfo::logPrefix(*v25);
      v45 = *v25 + 24;
      v46 = *(*v25 + 47);
      v47 = v46;
      if ((v46 & 0x80u) != 0)
      {
        v46 = *(*v25 + 4);
      }

      if (v47 < 0)
      {
        v45 = *(*v25 + 3);
      }

      if (!v46)
      {
        v45 = "<invalid>";
      }

      *buf = 136315650;
      *&buf[4] = v44;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v237[0] = v45;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I %s%srestOfEncryptionProvisioning %s", buf, 0x20u);
    }

    v231 = 0;
    v232 = 0;
    sub_1017108E0(v202, @"com.apple.commcenter.ue.satmsg", &v231);
    v48 = *v202;
    v49 = *v202;
    if (v232)
    {
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = PersonalityInfo::logPrefix(*v25);
        *buf = 136315394;
        *&buf[4] = v50;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I %s%sUE pubkey lbl:", buf, 0x16u);
      }

      *buf = off_101F43390;
      *&buf[8] = a1;
      *&buf[16] = v25;
      v237[0] = buf;
      logger::CFTypeRefLogger();
      sub_100007E44(buf);
      *&v240 = 0;
      *&v240 = SecKeyCopyPublicKey(v232);
      if (v240)
      {
        v51 = SecKeyCopySubjectPublicKeyInfo();
        v52 = *(v201 + 64);
        *(v201 + 64) = v51;
        *buf = v52;
        sub_10002D760(buf);
        if (*(v201 + 64))
        {
          sub_1005A16F4(&v240);
          v53 = *v202;
          if (os_log_type_enabled(*v202, OS_LOG_TYPE_DEFAULT))
          {
            v54 = PersonalityInfo::logPrefix(*v25);
            *buf = 136315394;
            *&buf[4] = v54;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I %s%sUE pubkey:", buf, 0x16u);
          }

          *buf = off_101F43410;
          *&buf[8] = a1;
          *&buf[16] = v25;
          v237[0] = buf;
          logger::CFTypeRefLogger();
          sub_100007E44(buf);
          sub_1014C70F4(*(a1 + 48), *v25 + 24, oslog, @"ue-pub-key", *(v201 + 64));
          v230 = 0;
          v230 = SecKeyCreateFromSubjectPublicKeyInfoData();
          if (v230)
          {
            values = &off_101F91260;
            keys = kSecKeyKeyExchangeParameterRequestedSize;
            v229 = 0;
            v55 = CFDictionaryCreate(0, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            error = 0;
            v229 = v55;
            v227 = 0;
            v227 = SecKeyCopyKeyExchangeResult(v232, kSecKeyAlgorithmECDHKeyExchangeStandard, v230, v55, &error);
            if (v227)
            {
              v225[0] = 0;
              v225[1] = 0;
              v226 = 0;
              memset(buf, 0, sizeof(buf));
              ctu::cf::assign();
              *v225 = *buf;
              v226 = *&buf[16];
              v222 = 0;
              v223 = 0;
              v224 = 0;
              sub_1014B8AEC(&v222, *(*(v20 + 7) + 88));
              sub_1014B8AEC(&v222, *(v201 + 64));
              for (i = 0; i != 65; ++i)
              {
                buf[0] = aComMidwaySecur[i];
                sub_1001CD884(&v222, buf);
              }

              sub_101336674(v202, 0x20uLL, buf);
              v57 = *buf;
              v195 = *&buf[8];
              v58 = *v202;
              v59 = os_log_type_enabled(*v202, OS_LOG_TYPE_DEFAULT);
              if (v57)
              {
                if (v59)
                {
                  v192 = v57;
                  v60 = PersonalityInfo::logPrefix(*v25);
                  ctu::hex();
                  v61 = &v240;
                  if (v241 < 0)
                  {
                    v61 = v240;
                  }

                  *buf = 136315650;
                  *&buf[4] = v60;
                  *&buf[12] = 2080;
                  *&buf[14] = " ";
                  *&buf[22] = 2080;
                  v237[0] = v61;
                  _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#I %s%scredKey: %s", buf, 0x20u);
                  if (SHIBYTE(v241) < 0)
                  {
                    operator delete(v240);
                  }

                  v57 = v192;
                }

                v220 = 0;
                v221 = 0;
                __p = 0;
                sub_100034C50(&__p, *v57, *(v57 + 8), *(v57 + 8) - *v57);
                v241 = 0;
                v240 = 0uLL;
                sub_100034C50(&v240, __p, v220, v220 - __p);
                v210 = 0;
                memset(buf, 0, sizeof(buf));
                sub_100034C50(buf, v240, *(&v240 + 1), *(&v240 + 1) - v240);
                v213 = 0;
                if (ctu::cf::convert_copy())
                {
                  v62 = v210;
                  v210 = v213;
                  v216 = v62;
                  sub_10002D760(&v216);
                }

                if (*buf)
                {
                  *&buf[8] = *buf;
                  operator delete(*buf);
                }

                v206 = v210;
                v210 = 0;
                sub_10002D760(&v210);
                if (v240)
                {
                  *(&v240 + 1) = v240;
                  operator delete(v240);
                }

                v63 = (v201 + 72);
                if ((v201 + 72) != &v206)
                {
                  *buf = *v63;
                  *v63 = v206;
                  v206 = 0;
                  sub_10002D760(buf);
                }

                sub_10002D760(&v206);
                if (__p)
                {
                  v220 = __p;
                  operator delete(__p);
                }

                sub_1014C70F4(*(a1 + 48), *v25 + 24, oslog, @"cred-key", *v63);
              }

              else if (v59)
              {
                v76 = PersonalityInfo::logPrefix(*v25);
                *buf = 136315394;
                *&buf[4] = v76;
                *&buf[12] = 2080;
                *&buf[14] = " ";
                _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#W %s%sunable to create credKey", buf, 0x16u);
              }

              if (v222)
              {
                v223 = v222;
                operator delete(v222);
              }

              if (v57)
              {
                v240 = 0uLL;
                v241 = 0;
                v77 = sub_1014B8AEC(&v240, *(*(v20 + 7) + 88));
                sub_1014B8AEC(v77, *(v201 + 64));
                for (j = 0; j != 5; ++j)
                {
                  buf[0] = aMario[j];
                  sub_1001CD884(&v240, buf);
                }

                v79 = sub_1014B8A74(&v240, *(v20 + 7));
                sub_1014B8A74(v79, *(v20 + 7) + 32);
                for (k = 0; k != 62; ++k)
                {
                  buf[0] = aComMidwaySecur_0[k];
                  sub_1001CD884(&v240, buf);
                }

                sub_101336674(v202, 0x20uLL, buf);
                v81 = *buf;
                v191 = *&buf[8];
                v82 = *v202;
                v83 = os_log_type_enabled(*v202, OS_LOG_TYPE_DEFAULT);
                v193 = v81;
                if (v81)
                {
                  if (v83)
                  {
                    v84 = PersonalityInfo::logPrefix(*v25);
                    ctu::hex();
                    v85 = &v222;
                    if (v224 < 0)
                    {
                      v85 = v222;
                    }

                    *buf = 136315650;
                    *&buf[4] = v84;
                    *&buf[12] = 2080;
                    *&buf[14] = " ";
                    *&buf[22] = 2080;
                    v237[0] = v85;
                    _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "#I %s%sprimaryKey: %s", buf, 0x20u);
                    if (SHIBYTE(v224) < 0)
                    {
                      operator delete(v222);
                    }
                  }
                }

                else if (v83)
                {
                  v86 = PersonalityInfo::logPrefix(*v25);
                  *buf = 136315394;
                  *&buf[4] = v86;
                  *&buf[12] = 2080;
                  *&buf[14] = " ";
                  _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "#W %s%sunable to create primaryKey", buf, 0x16u);
                }

                if (v240)
                {
                  *(&v240 + 1) = v240;
                  operator delete(v240);
                }

                if (v193)
                {
                  v87 = 0;
                  v222 = 0;
                  v223 = 0;
                  v224 = 0;
                  do
                  {
                    buf[0] = aComMidwaySecur_1[v87];
                    sub_1001CD884(&v222, buf);
                    ++v87;
                  }

                  while (v87 != 63);
                  sub_101336674(v202, 0x20uLL, buf);
                  v88 = *buf;
                  v190 = *&buf[8];
                  v89 = *v202;
                  v90 = os_log_type_enabled(*v202, OS_LOG_TYPE_DEFAULT);
                  if (v88)
                  {
                    if (v90)
                    {
                      v188 = v88;
                      v91 = PersonalityInfo::logPrefix(*v25);
                      ctu::hex();
                      v92 = &v240;
                      if (v241 < 0)
                      {
                        v92 = v240;
                      }

                      *buf = 136315650;
                      *&buf[4] = v91;
                      *&buf[12] = 2080;
                      *&buf[14] = " ";
                      *&buf[22] = 2080;
                      v237[0] = v92;
                      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "#I %s%smtRatchetKey: %s", buf, 0x20u);
                      if (SHIBYTE(v241) < 0)
                      {
                        operator delete(v240);
                      }

                      v88 = v188;
                    }

                    v217 = 0;
                    v218 = 0;
                    v216 = 0;
                    sub_100034C50(&v216, *v88, *(v88 + 8), *(v88 + 8) - *v88);
                    v241 = 0;
                    v240 = 0uLL;
                    sub_100034C50(&v240, v216, v217, v217 - v216);
                    v206 = 0;
                    memset(buf, 0, sizeof(buf));
                    sub_100034C50(buf, v240, *(&v240 + 1), *(&v240 + 1) - v240);
                    v210 = 0;
                    if (ctu::cf::convert_copy())
                    {
                      v93 = v206;
                      v206 = v210;
                      v213 = v93;
                      sub_10002D760(&v213);
                    }

                    if (*buf)
                    {
                      *&buf[8] = *buf;
                      operator delete(*buf);
                    }

                    v235 = v206;
                    v206 = 0;
                    sub_10002D760(&v206);
                    if (v240)
                    {
                      *(&v240 + 1) = v240;
                      operator delete(v240);
                    }

                    v94 = (v201 + 88);
                    if ((v201 + 88) != &v235)
                    {
                      v95 = *v94;
                      *v94 = v235;
                      v235 = 0;
                      *buf = v95;
                      sub_10002D760(buf);
                    }

                    sub_10002D760(&v235);
                    if (v216)
                    {
                      v217 = v216;
                      operator delete(v216);
                    }

                    sub_1014C7318(*(a1 + 48), *v25 + 24, oslog, @"mt-key", v94);
                  }

                  else if (v90)
                  {
                    v96 = PersonalityInfo::logPrefix(*v25);
                    *buf = 136315394;
                    *&buf[4] = v96;
                    *&buf[12] = 2080;
                    *&buf[14] = " ";
                    _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "#W %s%sunable to create mtRatchetKey", buf, 0x16u);
                  }

                  if (v222)
                  {
                    v223 = v222;
                    operator delete(v222);
                  }

                  if (v88)
                  {
                    v97 = 0;
                    v222 = 0;
                    v223 = 0;
                    v224 = 0;
                    do
                    {
                      buf[0] = aComMidwaySecur_2[v97];
                      sub_1001CD884(&v222, buf);
                      ++v97;
                    }

                    while (v97 != 63);
                    sub_101336674(v202, 0x20uLL, buf);
                    v98 = *buf;
                    v189 = *&buf[8];
                    v99 = *v202;
                    v100 = os_log_type_enabled(*v202, OS_LOG_TYPE_DEFAULT);
                    if (v98)
                    {
                      if (v100)
                      {
                        v185 = v98;
                        v101 = PersonalityInfo::logPrefix(*v25);
                        ctu::hex();
                        v102 = &v240;
                        if (v241 < 0)
                        {
                          v102 = v240;
                        }

                        *buf = 136315650;
                        *&buf[4] = v101;
                        *&buf[12] = 2080;
                        *&buf[14] = " ";
                        *&buf[22] = 2080;
                        v237[0] = v102;
                        _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "#I %s%smoRatchetKey: %s", buf, 0x20u);
                        if (SHIBYTE(v241) < 0)
                        {
                          operator delete(v240);
                        }

                        v98 = v185;
                      }

                      v214 = 0;
                      v215 = 0;
                      v213 = 0;
                      sub_100034C50(&v213, *v98, *(v98 + 8), *(v98 + 8) - *v98);
                      v241 = 0;
                      v240 = 0uLL;
                      sub_100034C50(&v240, v213, v214, v214 - v213);
                      v235 = 0;
                      memset(buf, 0, sizeof(buf));
                      sub_100034C50(buf, v240, *(&v240 + 1), *(&v240 + 1) - v240);
                      v206 = 0;
                      if (ctu::cf::convert_copy())
                      {
                        v103 = v235;
                        v235 = v206;
                        v210 = v103;
                        sub_10002D760(&v210);
                      }

                      if (*buf)
                      {
                        *&buf[8] = *buf;
                        operator delete(*buf);
                      }

                      v234 = v235;
                      v235 = 0;
                      sub_10002D760(&v235);
                      if (v240)
                      {
                        *(&v240 + 1) = v240;
                        operator delete(v240);
                      }

                      v104 = (v201 + 152);
                      if ((v201 + 152) != &v234)
                      {
                        *buf = *v104;
                        *v104 = v234;
                        v234 = 0;
                        sub_10002D760(buf);
                      }

                      sub_10002D760(&v234);
                      if (v213)
                      {
                        v214 = v213;
                        operator delete(v213);
                      }

                      sub_1014C7318(*(a1 + 48), *v25 + 24, oslog, @"mo-key", v104);
                    }

                    else if (v100)
                    {
                      v105 = PersonalityInfo::logPrefix(*v25);
                      *buf = 136315394;
                      *&buf[4] = v105;
                      *&buf[12] = 2080;
                      *&buf[14] = " ";
                      _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "#W %s%sunable to create moRatchetKey", buf, 0x16u);
                    }

                    if (v222)
                    {
                      v223 = v222;
                      operator delete(v222);
                    }

                    if (v98)
                    {
                      v106 = 0;
                      v222 = 0;
                      v223 = 0;
                      v224 = 0;
                      do
                      {
                        buf[0] = aComMidwaySecur_3[v106];
                        sub_1001CD884(&v222, buf);
                        ++v106;
                      }

                      while (v106 != 44);
                      sub_101336674(v202, 0x20uLL, buf);
                      v108 = *buf;
                      v107 = *&buf[8];
                      log = *v202;
                      v109 = os_log_type_enabled(*v202, OS_LOG_TYPE_DEFAULT);
                      v184 = v107;
                      v186 = v108;
                      if (v108)
                      {
                        v110 = v107;
                        if (v109)
                        {
                          v111 = PersonalityInfo::logPrefix(*v25);
                          ctu::hex();
                          v112 = &v240;
                          if (v241 < 0)
                          {
                            v112 = v240;
                          }

                          *buf = 136315650;
                          *&buf[4] = v111;
                          *&buf[12] = 2080;
                          *&buf[14] = " ";
                          *&buf[22] = 2080;
                          v237[0] = v112;
                          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I %s%shmacLinkSymKey: %s", buf, 0x20u);
                          if (SHIBYTE(v241) < 0)
                          {
                            operator delete(v240);
                          }

                          v110 = v107;
                        }

                        v211 = 0;
                        v212 = 0;
                        v210 = 0;
                        sub_100034C50(&v210, *v186, *(v186 + 8), *(v186 + 8) - *v186);
                        v241 = 0;
                        v240 = 0uLL;
                        sub_100034C50(&v240, v210, v211, v211 - v210);
                        v234 = 0;
                        memset(buf, 0, sizeof(buf));
                        sub_100034C50(buf, v240, *(&v240 + 1), *(&v240 + 1) - v240);
                        v235 = 0;
                        if (ctu::cf::convert_copy())
                        {
                          v113 = v234;
                          v234 = v235;
                          v206 = v113;
                          sub_10002D760(&v206);
                        }

                        if (*buf)
                        {
                          *&buf[8] = *buf;
                          operator delete(*buf);
                        }

                        v233 = v234;
                        v234 = 0;
                        sub_10002D760(&v234);
                        if (v240)
                        {
                          *(&v240 + 1) = v240;
                          operator delete(v240);
                        }

                        v114 = (v201 + 184);
                        if ((v201 + 184) != &v233)
                        {
                          *buf = *v114;
                          *v114 = v233;
                          v233 = 0;
                          sub_10002D760(buf);
                        }

                        sub_10002D760(&v233);
                        if (v210)
                        {
                          v211 = v210;
                          operator delete(v210);
                        }

                        sub_1014C70F4(*(a1 + 48), *v25 + 24, oslog, @"hmac-link-key", *v114);
                      }

                      else
                      {
                        v110 = v107;
                        if (v109)
                        {
                          v115 = PersonalityInfo::logPrefix(*v25);
                          *buf = 136315394;
                          *&buf[4] = v115;
                          *&buf[12] = 2080;
                          *&buf[14] = " ";
                          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#W %s%sunable to create hmacLinkSymKey", buf, 0x16u);
                        }
                      }

                      if (v222)
                      {
                        v223 = v222;
                        operator delete(v222);
                      }

                      if (v186)
                      {
                        v116 = 0;
                        v222 = 0;
                        v223 = 0;
                        v224 = 0;
                        do
                        {
                          buf[0] = aComMidwaySecur_4[v116];
                          sub_1001CD884(&v222, buf);
                          ++v116;
                        }

                        while (v116 != 59);
                        sub_101336674(v202, 0x20uLL, buf);
                        v117 = *buf;
                        v187 = *&buf[8];
                        v118 = *v202;
                        v119 = os_log_type_enabled(*v202, OS_LOG_TYPE_DEFAULT);
                        v194 = v117;
                        if (v117)
                        {
                          if (v119)
                          {
                            v120 = PersonalityInfo::logPrefix(*v25);
                            ctu::hex();
                            v121 = &v240;
                            if (v241 < 0)
                            {
                              v121 = v240;
                            }

                            *buf = 136315650;
                            *&buf[4] = v120;
                            *&buf[12] = 2080;
                            *&buf[14] = " ";
                            *&buf[22] = 2080;
                            v237[0] = v121;
                            _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "#I %s%smsisdnTagsKey: %s", buf, 0x20u);
                            if (SHIBYTE(v241) < 0)
                            {
                              operator delete(v240);
                            }
                          }

                          v207 = 0;
                          v208 = 0;
                          v206 = 0;
                          sub_100034C50(&v206, *v194, *(v194 + 8), *(v194 + 8) - *v194);
                          v241 = 0;
                          v240 = 0uLL;
                          sub_100034C50(&v240, v206, v207, v207 - v206);
                          v233 = 0;
                          memset(buf, 0, sizeof(buf));
                          sub_100034C50(buf, v240, *(&v240 + 1), *(&v240 + 1) - v240);
                          v234 = 0;
                          if (ctu::cf::convert_copy())
                          {
                            v122 = v233;
                            v233 = v234;
                            v235 = v122;
                            sub_10002D760(&v235);
                          }

                          if (*buf)
                          {
                            *&buf[8] = *buf;
                            operator delete(*buf);
                          }

                          v209 = v233;
                          v233 = 0;
                          sub_10002D760(&v233);
                          if (v240)
                          {
                            *(&v240 + 1) = v240;
                            operator delete(v240);
                          }

                          v123 = (v201 + 80);
                          if ((v201 + 80) != &v209)
                          {
                            *buf = *v123;
                            *v123 = v209;
                            v209 = 0;
                            sub_10002D760(buf);
                          }

                          sub_10002D760(&v209);
                          if (v206)
                          {
                            v207 = v206;
                            operator delete(v206);
                          }

                          sub_1014C70F4(*(a1 + 48), *v25 + 24, oslog, @"msisdn-key", *v123);
                        }

                        else if (v119)
                        {
                          v124 = PersonalityInfo::logPrefix(*v25);
                          *buf = 136315394;
                          *&buf[4] = v124;
                          *&buf[12] = 2080;
                          *&buf[14] = " ";
                          _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "#W %s%sunable to create msisdnTagsKey", buf, 0x16u);
                        }

                        if (v222)
                        {
                          v223 = v222;
                          operator delete(v222);
                        }

                        v110 = v184;
                        if (v194)
                        {
                          v125 = sub_101710DB8(a1 + 48, v202, v231);
                          v126 = *v202;
                          if (v125)
                          {
                            osloga = *v202;
                            if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
                            {
                              v127 = PersonalityInfo::logPrefix(*v25);
                              *buf = 136315906;
                              *&buf[4] = v127;
                              *&buf[12] = 2080;
                              *&buf[14] = " ";
                              *&buf[22] = 1024;
                              LODWORD(v237[0]) = v125;
                              WORD2(v237[0]) = 2112;
                              *(v237 + 6) = v231;
                              _os_log_impl(&_mh_execute_header, osloga, OS_LOG_TYPE_DEFAULT, "#W %s%sfailed (err:%d) to remove key with lbl:%@", buf, 0x26u);
                              v126 = *v202;
                            }

                            else
                            {
                              v126 = osloga;
                            }
                          }

                          oslogb = v126;
                          if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
                          {
                            v128 = PersonalityInfo::logPrefix(*v25);
                            v129 = *v25 + 24;
                            v130 = *(*v25 + 47);
                            v131 = v130;
                            if ((v130 & 0x80u) != 0)
                            {
                              v130 = *(*v25 + 4);
                            }

                            if (v131 < 0)
                            {
                              v129 = *(*v25 + 3);
                            }

                            if (!v130)
                            {
                              v129 = "<invalid>";
                            }

                            *buf = 136315650;
                            *&buf[4] = v128;
                            *&buf[12] = 2080;
                            *&buf[14] = " ";
                            *&buf[22] = 2080;
                            v237[0] = v129;
                            _os_log_impl(&_mh_execute_header, oslogb, OS_LOG_TYPE_DEFAULT, "#I %s%sencryption for %s is ready", buf, 0x20u);
                          }
                        }

                        if (v187)
                        {
                          sub_100004A34(v187);
                        }
                      }

                      if (v110)
                      {
                        sub_100004A34(v110);
                      }
                    }

                    if (v189)
                    {
                      sub_100004A34(v189);
                    }
                  }

                  if (v190)
                  {
                    sub_100004A34(v190);
                  }
                }

                if (v191)
                {
                  sub_100004A34(v191);
                }
              }

              if (v195)
              {
                sub_100004A34(v195);
              }

              if (v225[0])
              {
                v225[1] = v225[0];
                operator delete(v225[0]);
              }
            }

            else
            {
              v74 = *v202;
              if (os_log_type_enabled(*v202, OS_LOG_TYPE_DEFAULT))
              {
                v75 = PersonalityInfo::logPrefix(*v25);
                *buf = 136315650;
                *&buf[4] = v75;
                *&buf[12] = 2080;
                *&buf[14] = " ";
                *&buf[22] = 2112;
                v237[0] = error;
                _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "#W %s%sunable to generate shared secret, error:%@", buf, 0x20u);
              }
            }

            sub_10002D760(&v227);
            sub_10001021C(&v229);
          }

          else
          {
            v72 = *v202;
            if (os_log_type_enabled(*v202, OS_LOG_TYPE_DEFAULT))
            {
              v73 = PersonalityInfo::logPrefix(*v25);
              *buf = 136315394;
              *&buf[4] = v73;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "#W %s%sunable to import IWF pubkey", buf, 0x16u);
            }
          }

          v71 = &v230;
          goto LABEL_274;
        }

        v69 = *v202;
        if (os_log_type_enabled(*v202, OS_LOG_TYPE_DEFAULT))
        {
          v70 = PersonalityInfo::logPrefix(*v25);
          *buf = 136315394;
          *&buf[4] = v70;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          v67 = v69;
          v68 = "#W %s%scannot export DER from UE public key";
          goto LABEL_121;
        }
      }

      else
      {
        v65 = *v202;
        if (os_log_type_enabled(*v202, OS_LOG_TYPE_DEFAULT))
        {
          v66 = PersonalityInfo::logPrefix(*v25);
          *buf = 136315394;
          *&buf[4] = v66;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          v67 = v65;
          v68 = "#W %s%sFailed to get public key for private";
LABEL_121:
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, v68, buf, 0x16u);
        }
      }

      v71 = &v240;
LABEL_274:
      sub_1005A16F4(v71);
      goto LABEL_275;
    }

    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v64 = PersonalityInfo::logPrefix(*v25);
      *buf = 136315394;
      *&buf[4] = v64;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "#E %s%scannot generate UE private key", buf, 0x16u);
    }

LABEL_275:
    sub_1005A16F4(&v232);
    sub_10002D760(&v231);
    if (sub_1014BB454(v201))
    {
      ++v199;
    }

    else
    {
      v132 = *v202;
      if (os_log_type_enabled(*v202, OS_LOG_TYPE_DEFAULT))
      {
        v133 = PersonalityInfo::logPrefix(*v25);
        *buf = 136315394;
        *&buf[4] = v133;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "#W %s%sfailed to complete encryption components", buf, 0x16u);
      }

      sub_1013B731C((*(a1 + 160) + 24), v20 + 4, (v20 + 32));
    }

    if (v200)
    {
      sub_100004A34(v200);
    }

    if (v24)
    {
      goto LABEL_68;
    }

LABEL_69:
    v39 = *(v20 + 1);
    if (v39)
    {
      do
      {
        v40 = v39;
        v39 = *v39;
      }

      while (v39);
    }

    else
    {
      do
      {
        v40 = *(v20 + 2);
        v17 = *v40 == v20;
        v20 = v40;
      }

      while (!v17);
    }

    v20 = v40;
  }

  while (v40 != v21);
  v134 = v199 != 0;
LABEL_286:
  if (sub_1014C18C4(a1, v134))
  {
    v135 = *(a1 + 248);
    v136 = *(v135 + 96);
    buf[0] = 0;
    v137 = *(v135 + 104) - v136;
    if (v137 > 0xF)
    {
      if (v137 != 16)
      {
        *(v135 + 104) = v136 + 16;
      }
    }

    else
    {
      sub_100F2A7D8((v135 + 96), 16 - v137, buf);
      v136 = *(*(a1 + 248) + 96);
    }

    v138 = SecRandomCopyBytes(kSecRandomDefault, 0x10uLL, v136);
    v139 = *v202;
    v140 = os_log_type_enabled(*v202, OS_LOG_TYPE_DEFAULT);
    if (!v138)
    {
      if (v140)
      {
        ctu::hex();
        v142 = (buf[23] & 0x80u) == 0 ? buf : *buf;
        LODWORD(v240) = 136315138;
        *(&v240 + 4) = v142;
        _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "#I created offgrid key: %s", &v240, 0xCu);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }
      }

      v210 = 0;
      sub_1014C2C20(&v210, **(a1 + 248));
      *buf = v210;
      v225[1] = 0;
      v226 = 0;
      v225[0] = 0;
      sub_10005B328(v225, buf, &buf[8], 1uLL);
      sub_1014BB388(&v222, *(a1 + 48));
      v143 = v222;
      v144 = *(a1 + 248);
      v204 = 0;
      v205 = 0;
      v203 = 0;
      sub_100034C50(&v203, *(v144 + 96), *(v144 + 104), *(v144 + 104) - *(v144 + 96));
      v241 = 0;
      v240 = 0uLL;
      sub_100034C50(&v240, v203, v204, v204 - v203);
      v213 = 0;
      memset(buf, 0, sizeof(buf));
      sub_100034C50(buf, v240, *(&v240 + 1), *(&v240 + 1) - v240);
      v216 = 0;
      if (ctu::cf::convert_copy())
      {
        v145 = v213;
        v213 = v216;
        __p = v145;
        sub_10002D760(&__p);
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      v206 = v213;
      v213 = 0;
      sub_10002D760(&v213);
      if (v240)
      {
        *(&v240 + 1) = v240;
        operator delete(v240);
      }

      sub_10071B8E0(v143, @"offgridKey", v206, @"SatMsg", v225, 4, 0, 0);
      sub_10002D760(&v206);
      if (v203)
      {
        v204 = v203;
        operator delete(v203);
      }

      if (v223)
      {
        sub_100004A34(v223);
      }

      v146 = *(a1 + 160);
      v147 = *(v146 + 24);
      v148 = (v146 + 32);
      if (v147 != (v146 + 32))
      {
        do
        {
          v149 = *v202;
          if (os_log_type_enabled(*v202, OS_LOG_TYPE_DEFAULT))
          {
            v150 = *(v147 + 55);
            v151 = (v150 & 0x80u) != 0;
            if ((v150 & 0x80u) != 0)
            {
              v150 = v147[5];
            }

            if (v151)
            {
              v152 = v147[4];
            }

            else
            {
              v152 = (v147 + 4);
            }

            if (v150)
            {
              v153 = v152;
            }

            else
            {
              v153 = "<invalid>";
            }

            *buf = 136315138;
            *&buf[4] = v153;
            _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEFAULT, "#I making sure SIM %s is not in the config", buf, 0xCu);
          }

          sub_1014D0A28((*(a1 + 248) + 48), v147 + 32);
          v154 = *(a1 + 248);
          v155 = sub_100007A6C((v154 + 9), v147 + 32);
          if (v154 + 10 != v155)
          {
            v156 = v155;
            v157 = *(v155 + 8);
            if (v157)
            {
              do
              {
                v158 = v157;
                v157 = *v157;
              }

              while (v157);
            }

            else
            {
              v159 = v155;
              do
              {
                v158 = v159[2];
                v17 = *v158 == v159;
                v159 = v158;
              }

              while (!v17);
            }

            if (v154[9] == v155)
            {
              v154[9] = v158;
            }

            v160 = v154[10];
            --v154[11];
            sub_100018288(v160, v156);
            sub_1000D57F4((v156 + 4));
            operator delete(v156);
          }

          v161 = *(a1 + 248);
          v162 = *(v161 + 24);
          v163 = (v161 + 32);
          if (v162 != (v161 + 32))
          {
            while (!sub_100071DF8(v162 + 5, v147 + 4))
            {
              v164 = v162[1];
              if (v164)
              {
                do
                {
                  v165 = v164;
                  v164 = *v164;
                }

                while (v164);
              }

              else
              {
                do
                {
                  v165 = v162[2];
                  v17 = *v165 == v162;
                  v162 = v165;
                }

                while (!v17);
              }

              v162 = v165;
              if (v165 == v163)
              {
                goto LABEL_360;
              }
            }

            v166 = *(a1 + 248);
            v167 = v166[4];
            if (v167)
            {
              v168 = *(v162 + 8);
              v169 = v166 + 4;
              v170 = v166[4];
              do
              {
                if (*(v170 + 32) >= v168)
                {
                  v169 = v170;
                }

                v170 = *(v170 + 8 * (*(v170 + 32) < v168));
              }

              while (v170);
              if (v169 != v166 + 4 && *(v169 + 8) <= v168)
              {
                v171 = v169[1];
                v172 = v169;
                if (v171)
                {
                  do
                  {
                    v173 = v171;
                    v171 = *v171;
                  }

                  while (v171);
                }

                else
                {
                  do
                  {
                    v173 = v172[2];
                    v17 = *v173 == v172;
                    v172 = v173;
                  }

                  while (!v17);
                }

                if (v166[3] == v169)
                {
                  v166[3] = v173;
                }

                --v166[5];
                sub_100018288(v167, v169);
                if (*(v169 + 63) < 0)
                {
                  operator delete(v169[5]);
                }

                operator delete(v169);
              }
            }
          }

LABEL_360:
          v174 = v147[1];
          if (v174)
          {
            do
            {
              v175 = v174;
              v174 = *v174;
            }

            while (v174);
          }

          else
          {
            do
            {
              v175 = v147[2];
              v17 = *v175 == v147;
              v147 = v175;
            }

            while (!v17);
          }

          v147 = v175;
        }

        while (v175 != v148);
      }

      v176 = *v202;
      if (os_log_type_enabled(*v202, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "<upcoming>";
        *&buf[12] = 2080;
        *&buf[14] = "<proposed>";
        _os_log_impl(&_mh_execute_header, v176, OS_LOG_TYPE_DEFAULT, "#I moving %s to %s", buf, 0x16u);
      }

      if (*(a1 + 232))
      {
        sub_1014BB7B8(a1);
      }

      v178 = *(a1 + 248);
      v177 = *(a1 + 256);
      if (v177)
      {
        atomic_fetch_add_explicit((v177 + 8), 1uLL, memory_order_relaxed);
      }

      v179 = *(a1 + 240);
      *(a1 + 232) = v178;
      *(a1 + 240) = v177;
      if (v179)
      {
        sub_100004A34(v179);
      }

      v180 = *(a1 + 256);
      *(a1 + 248) = 0;
      *(a1 + 256) = 0;
      if (v180)
      {
        sub_100004A34(v180);
      }

      sub_1014BB388(buf, *(a1 + 48));
      sub_10071BDE8(*buf, @"UpcomingConfig", @"SatMsg", 0, 2);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      *&v240 = 0;
      sub_1014C219C(&v240, *(a1 + 232), 0);
      sub_1014BB388(buf, *(a1 + 48));
      sub_10071B8E0(*buf, @"ProposedConfig", v240, @"SatMsg", 0, 2, 0, 0);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      sub_10001021C(&v240);
      if (v225[0])
      {
        v225[1] = v225[0];
        operator delete(v225[0]);
      }

      sub_100005978(&v210);
      v181 = *v202;
      if (os_log_type_enabled(*v202, OS_LOG_TYPE_DEFAULT))
      {
        v182 = **(a1 + 232);
        *buf = 138412290;
        *&buf[4] = v182;
        _os_log_impl(&_mh_execute_header, v181, OS_LOG_TYPE_DEFAULT, "#I config %@ is ready", buf, 0xCu);
      }

      *buf = a1;
      sub_1000BA468(&buf[8], *(a1 + 232));
      sub_1014C2C84((a1 + 8), buf);
    }

    if (v140)
    {
      v141 = *__error();
      *buf = 67109120;
      *&buf[4] = v141;
      _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "#I SecRandomCopyBytes failed, errno %d", buf, 8u);
      v139 = *v202;
    }

    *(*(a1 + 248) + 104) = *(*(a1 + 248) + 96);
    if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "#E config is not complete... see logs above", buf, 2u);
    }
  }

  else
  {
    sub_1014BB8FC(a1);
  }
}

void sub_1014C0888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::__shared_weak_count *a11, std::__shared_weak_count *a12, std::__shared_weak_count *a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, const void *a60)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  if (a57)
  {
    operator delete(a57);
  }

  sub_10002D760(&a60);
  sub_10001021C((v61 - 248));
  sub_1005A16F4((v61 - 240));
  sub_1005A16F4((v61 - 224));
  sub_10002D760((v61 - 232));
  if (a28)
  {
    sub_100004A34(a28);
  }

  if (v60)
  {
    sub_100004A34(v60);
  }

  _Unwind_Resume(a1);
}

void sub_1014C0DA0(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (v1)
  {
    v4 = *v1;
    v3 = (v1 + 1);
    v2 = v4;
    if (v4 != v3)
    {
      v6 = a1 + 112;
      v45 = a1 + 184;
      v44 = a1 + 112;
      while (1)
      {
        v7 = sub_100007A6C(a1 + 104, v2 + 32);
        if (v6 != v7)
        {
          v8 = v7;
          v9 = sub_100007A6C(a1 + 176, v2 + 32);
          if (v45 != v9)
          {
            break;
          }
        }

LABEL_61:
        v41 = *(v2 + 1);
        if (v41)
        {
          do
          {
            v42 = v41;
            v41 = *v41;
          }

          while (v41);
        }

        else
        {
          do
          {
            v42 = *(v2 + 2);
            v43 = *v42 == v2;
            v2 = v42;
          }

          while (!v43);
        }

        v2 = v42;
        if (v42 == v3)
        {
          return;
        }
      }

      v11 = *(v9 + 56);
      v10 = *(v9 + 64);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v11)
      {
        goto LABEL_59;
      }

      v12 = (v11 + 16);
      v13 = *(v11 + 39);
      if (v13 >= 0)
      {
        v14 = *(v11 + 39);
      }

      else
      {
        v14 = *(v11 + 24);
      }

      v15 = *(v8 + 103);
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(v8 + 88);
      }

      if (v14 == v15)
      {
        v17 = (v13 >= 0 ? v11 + 16 : *v12);
        v18 = v16 >= 0 ? (v8 + 80) : *(v8 + 80);
        if (!memcmp(v17, v18, v14))
        {
          goto LABEL_59;
        }
      }

      std::string::operator=((v11 + 16), (v8 + 80));
      v19 = (v11 + 40);
      std::string::operator=((v11 + 40), (v8 + 104));
      v20 = (v11 + 64);
      std::string::operator=((v11 + 64), (v8 + 128));
      v21 = *(a1 + 40);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = PersonalityInfo::logPrefix(*v11);
        v23 = v11 + 16;
        if (*(v11 + 39) < 0)
        {
          v23 = *v12;
        }

        if (*(v11 + 63) < 0)
        {
          v19 = *v19;
        }

        if (*(v11 + 87) < 0)
        {
          v20 = *v20;
        }

        *buf = 136316162;
        *&buf[4] = v22;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v55 = v23;
        v56 = 2080;
        v57 = v19;
        v58 = 2080;
        v59 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%sobtained IMSI:%s -> MCC:%s MNC:%s", buf, 0x34u);
      }

      v24 = *(v2 + 7);
      if (!sub_1014C178C(v24, (v11 + 16)))
      {
LABEL_59:
        if (v10)
        {
          sub_100004A34(v10);
        }

        goto LABEL_61;
      }

      sub_1001696A4(v24, (v11 + 16));
      if ((atomic_load_explicit(&qword_101FCAC38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCAC38))
      {
        *buf = @"sim-cfg";
        qword_101FCAC68 = 0;
        unk_101FCAC70 = 0;
        qword_101FCAC60 = 0;
        sub_10005B328(&qword_101FCAC60, buf, &buf[8], 1uLL);
        __cxa_atexit(sub_10041F938, &qword_101FCAC60, &_mh_execute_header);
        __cxa_guard_release(&qword_101FCAC38);
        v6 = v44;
      }

      ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
      *buf = v27;
      v31 = sub_100009510(&v26[1].__m_.__sig, buf);
      if (v31)
      {
        v33 = v31[3];
        v32 = v31[4];
        if (v32)
        {
          v34 = v31[4];
          v35 = (v32 + 8);
          atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
          std::mutex::unlock(v26);
          atomic_fetch_add_explicit(v35, 1uLL, memory_order_relaxed);
          v36 = v34;
          v6 = v44;
          sub_100004A34(v36);
          v37 = 0;
          goto LABEL_40;
        }
      }

      else
      {
        v33 = 0;
      }

      std::mutex::unlock(v26);
      v36 = 0;
      v37 = 1;
LABEL_40:
      if (*(v11 + 39) < 0)
      {
        sub_100005F2C(__dst, *(v11 + 16), *(v11 + 24));
      }

      else
      {
        *__dst = *v12;
        v47 = *(v11 + 32);
      }

      if (SHIBYTE(v47) < 0)
      {
        sub_100005F2C(__p, __dst[0], __dst[1]);
      }

      else
      {
        *__p = *__dst;
        v51 = v47;
      }

      v49 = 0;
      if (SHIBYTE(v51) < 0)
      {
        sub_100005F2C(buf, __p[0], __p[1]);
      }

      else
      {
        *buf = *__p;
        *&buf[16] = v51;
      }

      v52 = 0;
      if (ctu::cf::convert_copy())
      {
        v38 = v49;
        v49 = v52;
        v53 = v38;
        sub_100005978(&v53);
      }

      v39 = v37;
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v40 = v49;
      v48 = v49;
      v49 = 0;
      sub_100005978(&v49);
      if (SHIBYTE(v51) < 0)
      {
        operator delete(__p[0]);
      }

      (*(*v33 + 16))(v33, v2 + 4, @"imsi", v40, @"SatMsg", &qword_101FCAC60, 2, 0);
      sub_100005978(&v48);
      if (SHIBYTE(v47) < 0)
      {
        operator delete(__dst[0]);
        if (v39)
        {
          goto LABEL_58;
        }
      }

      else if (v39)
      {
LABEL_58:
        sub_1014BC424(a1);
        goto LABEL_59;
      }

      sub_100004A34(v36);
      goto LABEL_58;
    }
  }
}