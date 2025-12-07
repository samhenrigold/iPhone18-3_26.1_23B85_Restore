void sub_10057A434(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0 && capabilities::ct::supportsVoiceCall(a1) && *(a1 + 456) == 1)
  {
    v3 = *(a1 + 216);
    v4 = PersonalitySpecificImpl::simSlot(a1);
    if ((*(*v3 + 304))(v3, v4))
    {
      v5 = *(a1 + 56);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v13 = 136315138;
      v14 = "dataAttachStatusChanged";
      v6 = "#I %s: Data is now attached in OTA APN activation mode. Ignoring previous data de-attach";
      v7 = v5;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, &v13, 0xCu);
      return;
    }

    v8 = *(a1 + 216);
    v9 = PersonalitySpecificImpl::simSlot(a1);
    v10 = (*(*v8 + 312))(v8, v9) - 6;
    v11 = *(a1 + 56);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10 <= 0xFFFFFFFD)
    {
      if (!v12)
      {
        return;
      }

      v13 = 136315138;
      v14 = "dataAttachStatusChanged";
      v6 = "#I %s: Data is not attached in OTA APN activation mode. But we are not registered, ignoring data de-attach";
      v7 = v11;
      goto LABEL_10;
    }

    if (v12)
    {
      v13 = 136315138;
      v14 = "dataAttachStatusChanged";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: Data is not attached and we are in OTA APN activation mode, resetting the baseband", &v13, 0xCu);
    }

    *(a1 + 456) = 0;
    sub_10057A62C(event::activation::resetRequest, "Resetting baseband since we are not data attached and we are in OTA APN activation mode");
  }
}

atomic_uint **sub_10057A62C(uint64_t a1, const char *a2)
{
  sub_10057A73C((a1 + 24), a2);
  v4 = sub_100334B9C((a1 + 8));

  return sub_100334BE0(v4, a2);
}

void sub_10057A67C(uint64_t a1)
{
  sub_100971D38(a1);
  v2 = *(a1 + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = asStringBool(*(a1 + 456));
    v4 = 136315138;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fActivatingOverOTAAPN = %s", &v4, 0xCu);
  }
}

uint64_t sub_10057A73C(uint64_t *a1, const char *a2)
{
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v16 = 0u;
  v17 = 0u;
  *__src = 0u;
  *__p = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  sub_10000D518(&v11);
  v4 = strlen(a2);
  sub_10000C030(&v11, a2, v4);
  if ((BYTE8(v17) & 0x10) != 0)
  {
    v6 = v17;
    if (v17 < __src[1])
    {
      *&v17 = __src[1];
      v6 = __src[1];
    }

    v7 = __src[0];
  }

  else
  {
    if ((BYTE8(v17) & 8) == 0)
    {
      v5 = 0;
      v10 = 0;
      goto LABEL_14;
    }

    v7 = *(&v12 + 1);
    v6 = *(&v13 + 1);
  }

  v5 = v6 - v7;
  if ((v6 - v7) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  v10 = v6 - v7;
  if (v5)
  {
    memmove(&__dst, v7, v5);
  }

LABEL_14:
  *(&__dst + v5) = 0;
  sub_1000841A0(a1, &__dst);
  if (v10 < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(&v12);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10057A9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_10057A9D4(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, NSObject **a5, int a6)
{
  v10 = a2[1];
  v19 = *a2;
  v20 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a5;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = "DATA.Connection.Provisioning.X";
  v13 = *(*a3 + 52);
  if (v13 == 2)
  {
    v12 = "DATA.Connection.Provisioning.2";
  }

  v14 = "Provisioning.X";
  if (v13 == 2)
  {
    v14 = "Provisioning.2";
  }

  if (v13 == 1)
  {
    v15 = "DATA.Connection.Provisioning.1";
  }

  else
  {
    v15 = v12;
  }

  if (v13 == 1)
  {
    v16 = "Provisioning.1";
  }

  else
  {
    v16 = v14;
  }

  sub_1009679C4(a1, &off_101E5B340, &v19, a3, a4, &object, v15, v16, a6);
  if (object)
  {
    dispatch_release(object);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  *a1 = off_101E5A8E0;
  a1[8] = off_101E5AE40;
  a1[9] = off_101E5B0E0;
  a1[10] = off_101E5B2C8;
  return a1;
}

void sub_10057AB60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  PersonalitySpecific::~PersonalitySpecific(v12);
  _Unwind_Resume(a1);
}

void sub_10057AB8C(uint64_t a1)
{
  sub_10096807C(a1, &off_101E5B340);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057ABBC(uint64_t a1)
{
  sub_10096807C(a1 - 64, &off_101E5B340);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057ABF0(uint64_t a1)
{
  sub_10096807C(a1 - 72, &off_101E5B340);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057AC24(uint64_t a1)
{
  sub_10096807C(a1 - 80, &off_101E5B340);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057AC58(uint64_t a1)
{
  sub_10096807C(a1, &off_101E5B340);
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

void sub_10057ACD4(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  sub_1000930A4(&v4);
  v2 = v4;
  if (v4)
  {
    v3 = *(a1 + 56);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v7 = "deactivatedTrigger";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s: passing to data plan", buf, 0xCu);
      v2 = v4;
    }

    (*(*v2 + 128))(v2);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_10057ADC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10057ADE4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "switchFallbackPolicy";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: start", &v6, 0xCu);
  }

  result = *(a1 + 176);
  if (result)
  {
    return (*(*result + 152))(result, a2);
  }

  return result;
}

uint64_t sub_10057AEDC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, NSObject **a5, int a6)
{
  v10 = a2[1];
  v19 = *a2;
  v20 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a5;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = "DATA.Connection.WirelessModemAuthentication.X";
  v13 = *(*a3 + 52);
  if (v13 == 2)
  {
    v12 = "DATA.Connection.WirelessModemAuthentication.2";
  }

  v14 = "WirelessModemAuthentication.X";
  if (v13 == 2)
  {
    v14 = "WirelessModemAuthentication.2";
  }

  if (v13 == 1)
  {
    v15 = "DATA.Connection.WirelessModemAuthentication.1";
  }

  else
  {
    v15 = v12;
  }

  if (v13 == 1)
  {
    v16 = "WirelessModemAuthentication.1";
  }

  else
  {
    v16 = v14;
  }

  sub_1009679C4(a1, &off_101E5CBA8, &v19, a3, a4, &object, v15, v16, a6);
  if (object)
  {
    dispatch_release(object);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  *a1 = off_101E5C148;
  *(a1 + 64) = off_101E5C6A8;
  *(a1 + 72) = off_101E5C948;
  *(a1 + 80) = off_101E5CB30;
  *(a1 + 456) = 0;
  return a1;
}

void sub_10057B06C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  PersonalitySpecific::~PersonalitySpecific(v12);
  _Unwind_Resume(a1);
}

void sub_10057B098(uint64_t a1)
{
  sub_10096807C(a1, &off_101E5CBA8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057B0C8(uint64_t a1)
{
  sub_10096807C(a1 - 64, &off_101E5CBA8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057B0FC(uint64_t a1)
{
  sub_10096807C(a1 - 72, &off_101E5CBA8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057B130(uint64_t a1)
{
  sub_10096807C(a1 - 80, &off_101E5CBA8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057B164(uint64_t a1)
{
  sub_10096807C(a1, &off_101E5CBA8);
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

uint64_t sub_10057B1F8(PersonalitySpecificImpl *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10096BB58(a1, a2);
  result = (*(**(a1 + 27) + 464))();
  if (result)
  {
    v9 = result;
    v10 = PersonalitySpecificImpl::simSlot(a1);
    v11 = *(*v9 + 40);

    return v11(v9, v10, a2, a3, a4);
  }

  return result;
}

void sub_10057B2DC(PersonalitySpecificImpl *a1)
{
  sub_1000A6490(a1);
  v2 = (*(*a1 + 536))(a1);
  v3 = (*(**(a1 + 27) + 464))();
  v4 = v3;
  if (v2 == 5)
  {
    if (v3)
    {
      v5 = PersonalitySpecificImpl::simSlot(a1);
      (*(*v4 + 32))(v4, v5);
    }

    v6 = sub_1000933D0(a1, 0);
    v7 = (*(*a1 + 112))(a1);
    v8 = *(a1 + 7);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v6 == v7)
    {
      if (v9)
      {
        v12 = 136315138;
        v13 = "connectionStateUpdated";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: Connection was activated for WirelessModemAuth only, bring it down", &v12, 0xCu);
      }

      (*(*a1 + 184))(a1, "wireless modem auth done", "CommCenter");
    }

    else if (v9)
    {
      v12 = 136315138;
      v13 = "connectionStateUpdated";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: Connection was activated for not WirelessModemAuth only, do not touching it", &v12, 0xCu);
    }
  }

  else if (v3)
  {
    v10 = *(a1 + 7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 536))(a1);
      v12 = 136315138;
      v13 = asString();
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I tethering: on connection state update: %s", &v12, 0xCu);
    }

    v11 = PersonalitySpecificImpl::simSlot(a1);
    (*(*v4 + 16))(v4, v11);
  }
}

void sub_10057B5B8(uint64_t a1, unsigned int a2, int a3, uint64_t a4, int a5)
{
  sub_1000A2F38(a1, a2, a3, a4, a5);
  if (a5)
  {
    v7 = (*(**(a1 + 216) + 464))(*(a1 + 216));
    if (v7)
    {
      v8 = v7;
      v9 = PersonalitySpecificImpl::simSlot(a1);
      v10 = *(*v8 + 32);

      v10(v8, v9);
    }
  }
}

uint64_t sub_10057B678(PersonalitySpecificImpl *a1)
{
  sub_10096D580(a1);
  result = (*(**(a1 + 27) + 464))(*(a1 + 27));
  if (result)
  {
    v3 = result;
    v4 = PersonalitySpecificImpl::simSlot(a1);
    v5 = *(*v3 + 48);

    return v5(v3, v4);
  }

  return result;
}

void sub_10057B728(uint64_t a1)
{
  sub_100971D38(a1);
  v2 = *(a1 + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = asStringBool(*(a1 + 456));
    v4 = 136315138;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fAuthenticationInProgress = %s", &v4, 0xCu);
  }
}

void sub_10057B7D8(void *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  operator new();
}

void sub_10057B8CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10057B914(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, dispatch_object_t *a5, int a6)
{
  v7 = *a2;
  *a2 = 0uLL;
  object = *a5;
  *a5 = 0;
  v8 = "DATA.Connection.CarrierSpace.X";
  v9 = *(*a3 + 52);
  if (v9 == 2)
  {
    v8 = "DATA.Connection.CarrierSpace.2";
  }

  v10 = "CarrierSpace.2";
  if (v9 != 2)
  {
    v10 = "CarrierSpace.X";
  }

  v15 = v7;
  if (v9 == 1)
  {
    v11 = "DATA.Connection.CarrierSpace.1";
  }

  else
  {
    v11 = v8;
  }

  if (v9 == 1)
  {
    v12 = "CarrierSpace.1";
  }

  else
  {
    v12 = v10;
  }

  sub_1009679C4(a1, &off_101E5E410, &v15, a3, a4, &object, v11, v12, a6);
  if (object)
  {
    dispatch_release(object);
  }

  if (*(&v15 + 1))
  {
    sub_100004A34(*(&v15 + 1));
  }

  *a1 = off_101E5D9B0;
  a1[8] = off_101E5DF10;
  a1[9] = off_101E5E1B0;
  a1[10] = off_101E5E398;
  return a1;
}

void sub_10057BA7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  PersonalitySpecific::~PersonalitySpecific(v12);
  _Unwind_Resume(a1);
}

void sub_10057BAA8(uint64_t a1)
{
  sub_10096807C(a1, &off_101E5E410);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057BAD8(uint64_t a1)
{
  sub_10096807C(a1 - 64, &off_101E5E410);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057BB0C(uint64_t a1)
{
  sub_10096807C(a1 - 72, &off_101E5E410);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057BB40(uint64_t a1)
{
  sub_10096807C(a1 - 80, &off_101E5E410);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057BB74(uint64_t a1)
{
  sub_10096807C(a1, &off_101E5E410);
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

uint64_t sub_10057BBD0(Registry **a1)
{
  v15 = 0;
  v16 = 0;
  ServiceMap = Registry::getServiceMap(a1[11]);
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
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  std::mutex::unlock(v3);
  v15 = v10;
  v16 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v9);
  }

  if (!v10)
  {
    v13 = 0x1000000;
    if (!v9)
    {
      return v13;
    }

    goto LABEL_15;
  }

  v11 = PersonalitySpecificImpl::simSlot(a1);
  v12 = sub_10057BD14(v11, &v15, carrier_space::kCBAllowedWhenRoamingKey, 0);
  v9 = v16;
  if (v12)
  {
    v13 = 0x10001000000;
  }

  else
  {
    v13 = 0x1000000;
  }

  if (v16)
  {
LABEL_15:
    sub_100004A34(v9);
  }

  return v13;
}

void sub_10057BCFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10057BD14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  cf = 0;
  carrier_space::getCarrierSpaceValueForKey();
  sub_10000A1EC(&cf);
  return a4 & 1;
}

void sub_10057BE44(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_10057BF18);
  __cxa_rethrow();
}

void sub_10057BE84(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10057BED8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10057BF18(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10057BF44(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, NSObject **a5, int a6)
{
  v10 = a2[1];
  v19 = *a2;
  v20 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a5;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = "DATA.Connection.WirelessModemTraffic.X";
  v13 = *(*a3 + 52);
  if (v13 == 2)
  {
    v12 = "DATA.Connection.WirelessModemTraffic.2";
  }

  v14 = "WirelessModemTraffic.X";
  if (v13 == 2)
  {
    v14 = "WirelessModemTraffic.2";
  }

  if (v13 == 1)
  {
    v15 = "DATA.Connection.WirelessModemTraffic.1";
  }

  else
  {
    v15 = v12;
  }

  if (v13 == 1)
  {
    v16 = "WirelessModemTraffic.1";
  }

  else
  {
    v16 = v14;
  }

  sub_1009679C4(a1, &off_101E5FCD8, &v19, a3, a4, &object, v15, v16, a6);
  if (object)
  {
    dispatch_release(object);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  *a1 = off_101E5F278;
  *(a1 + 64) = off_101E5F7D8;
  *(a1 + 72) = off_101E5FA78;
  *(a1 + 80) = off_101E5FC60;
  *(a1 + 456) = 0;
  return a1;
}

void sub_10057C0D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  PersonalitySpecific::~PersonalitySpecific(v12);
  _Unwind_Resume(a1);
}

void sub_10057C100(uint64_t a1)
{
  sub_10096807C(a1, &off_101E5FCD8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057C130(uint64_t a1)
{
  sub_10096807C(a1 - 64, &off_101E5FCD8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057C164(uint64_t a1)
{
  sub_10096807C(a1 - 72, &off_101E5FCD8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057C198(uint64_t a1)
{
  sub_10096807C(a1 - 80, &off_101E5FCD8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10057C1CC(uint64_t a1)
{
  sub_10096807C(a1, &off_101E5FCD8);
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

uint64_t sub_10057C228(uint64_t a1)
{
  v2 = (*(**(a1 + 216) + 128))(*(a1 + 216));
  if (v2)
  {
    v3 = *(a1 + 56);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "isTetheringAsserted";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s: TetheringAssertion is asserted by explicit assertion", &v5, 0xCu);
    }
  }

  return v2;
}

uint64_t sub_10057C304(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 456);
  *(a1 + 456) = sub_10057C228(a1);
  v17 = 0;
  v15 = 0;
  v16 = 0;
  sub_100098064(a1, &v17, &v15);
  if (v15)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || (*(a1 + 456) & 1) != 0 || !(*(*v15 + 880))())
  {
    v6 = (*(*a1 + 112))(a1) & 0xFFFFFFFFFFFFFFCFLL;
    v7 = *(a1 + 56);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *buf = 136315138;
        v19 = "connectionAssertionUpdateTrigger";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: Tethering is not only connection in mask, not tearing down context if assertion is gone", buf, 0xCu);
      }

      *a2 = 0;
    }

    else if (v8)
    {
      *buf = 136315138;
      v19 = "connectionAssertionUpdateTrigger";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: Tethering is only connection in mask, can tear down context if assertion is gone", buf, 0xCu);
    }

    v9 = (*(**(a1 + 216) + 464))(*(a1 + 216));
    if (v9)
    {
      v10 = PersonalitySpecificImpl::simSlot(a1);
      v11 = (*(*a1 + 768))(a1);
      (**v9)(v9, v10, v11, 0);
    }

    v12 = 0;
  }

  else
  {
    v14 = *(a1 + 56);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "connectionAssertionUpdateTrigger";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s: Tearing down due to no more Tethering assertion", buf, 0xCu);
    }

    (*(*a1 + 184))(a1, "no more Tethering assertion", "CommCenter");
    v12 = 1;
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  return v12;
}

void sub_10057C5E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10057C610(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 88));
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
    (*(*v9 + 216))(v9, 1);
  }

LABEL_11:
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }
}

void sub_10057C71C(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10057C73C(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 88));
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
  v12 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v12);
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
    (*(*v9 + 216))(v9, 0);
  }

LABEL_11:
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }

  return 0;
}

void sub_10057C84C(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10057C86C(uint64_t a1)
{
  result = sub_10057C228(a1);
  *(a1 + 456) = result;
  return result;
}

uint64_t sub_10057C894(uint64_t a1)
{
  result = sub_10057C228(a1 - 72);
  *(a1 + 384) = result;
  return result;
}

uint64_t (***sub_10057C8CC(PersonalitySpecificImpl *a1, uint64_t a2))(void, uint64_t, uint64_t, uint64_t)
{
  sub_10096BB58(a1, a2);
  result = (*(**(a1 + 27) + 464))();
  if (result)
  {
    v4 = result;
    v5 = PersonalitySpecificImpl::simSlot(a1);
    v6 = (*(*a1 + 768))(a1);
    v7 = **v4;

    return v7(v4, v5, v6, 1);
  }

  return result;
}

uint64_t sub_10057C9DC(uint64_t a1)
{
  sub_1000A6490(a1);
  result = (*(**(a1 + 216) + 464))(*(a1 + 216));
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 56);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I tethering: on connection state update", v7, 2u);
    }

    v5 = PersonalitySpecificImpl::simSlot(a1);
    v6 = (*(*a1 + 768))(a1);
    return (*(*v3 + 8))(v3, v5, v6);
  }

  return result;
}

uint64_t sub_10057CAF0(uint64_t a1)
{
  sub_10096D580(a1);
  result = (*(**(a1 + 216) + 464))(*(a1 + 216));
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 56);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I tethering: on new availability", v7, 2u);
    }

    v5 = PersonalitySpecificImpl::simSlot(a1);
    v6 = (*(*a1 + 768))(a1);
    return (*(*v3 + 8))(v3, v5, v6);
  }

  return result;
}

void sub_10057CC0C(uint64_t a1)
{
  sub_100971D38(a1);
  v2 = *(a1 + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = asStringBool(*(a1 + 456));
    v4 = 136315138;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fTetheringAsserted = %s", &v4, 0xCu);
  }
}

const char *sub_10057CCBC(int a1)
{
  if ((a1 - 1) > 5)
  {
    return "kBootstrapProvisioningNotSupported";
  }

  else
  {
    return off_101E60E08[a1 - 1];
  }
}

void sub_10057CCE4(void (****a3)(Registry **__return_ptr)@<X2>, void *a4@<X8>)
{
  v26 = 0;
  v27 = 0;
  (***a3)(&v26);
  ServiceMap = Registry::getServiceMap(v26);
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
  v24 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v24);
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
        goto LABEL_7;
      }

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
  if (!v13)
  {
LABEL_7:
    ctu::OsLogContext::OsLogContext(&v24, kCtLoggingSystemName, "cp.bs.prov");
    v15 = v25;
    ctu::OsLogContext::~OsLogContext(&v24);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10177476C();
    }

    goto LABEL_25;
  }

LABEL_11:
  v16 = (*(*v13 + 80))(v13);
  if (v16)
  {
    ctu::OsLogContext::OsLogContext(&v24, kCtLoggingSystemName, "cp.bs.prov");
    v17 = v25;
    ctu::OsLogContext::~OsLogContext(&v24);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_101774738();
    }
  }

  else
  {
    v18 = capabilities::ct::dataOnlySingleSIMDevice(v16);
    if (v18)
    {
      ctu::OsLogContext::OsLogContext(&v24, kCtLoggingSystemName, "cp.bs.prov");
      v19 = v25;
      ctu::OsLogContext::~OsLogContext(&v24);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_101774704();
      }
    }

    else
    {
      v20 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = capabilities::ct::bootstrapProvisioningSupportedOnSlotID(v18);
      v22 = VinylSlotIdFromInt(v21);
      if (v20)
      {
        sub_100004A34(v20);
      }

      if ((v22 - 1) <= 1)
      {
        operator new();
      }

      ctu::OsLogContext::OsLogContext(&v24, kCtLoggingSystemName, "cp.bs.prov");
      v23 = v25;
      ctu::OsLogContext::~OsLogContext(&v24);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1017746D0();
      }
    }
  }

LABEL_25:
  *a4 = 0;
  a4[1] = 0;
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (v27)
  {
    sub_100004A34(v27);
  }
}

void sub_10057D04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10057D0EC(uint64_t a1, NSObject **a2, void *a3, uint64_t a4)
{
  *a1 = off_101E65DF8;
  sub_10057D310((a1 + 8), a2, &kCtLoggingSystemName, &off_101E60AA8);
  *a1 = off_101E60AC0;
  v7 = a3[1];
  *(a1 + 48) = *a3;
  *(a1 + 56) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  v8 = *a4;
  v9 = *(a4 + 8);
  *(a1 + 64) = *a4;
  *(a1 + 72) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    v8 = *(a1 + 64);
  }

  (**v8)(&v17);
  *(a1 + 80) = v17;
  sub_10000501C(&__p, "BootstrapProvisioningController");
  v10 = *(a1 + 24);
  v14 = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v11 = *(a1 + 32);
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  ctu::RestModule::RestModule();
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
    operator delete(__p);
  }

  *(a1 + 168) = xmmword_101819E98;
  *(a1 + 144) = 0;
  *(a1 + 148) = 256;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 133) = 0;
  *(a1 + 150) = 0;
  *(a1 + 156) = 0;
  *(a1 + 184) = unk_101819EA8;
  *(a1 + 200) = 10080;
  *(a1 + 208) = 0;
  return a1;
}

void sub_10057D288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

  v20 = v17[11];
  if (v20)
  {
    sub_100004A34(v20);
  }

  v21 = v17[9];
  if (v21)
  {
    sub_100004A34(v21);
  }

  v22 = v17[7];
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  ctu::OsLogLogger::~OsLogLogger((v17 + 5));
  sub_1000C0544(v18);
  BootstrapProvisioningControllerInterface::~BootstrapProvisioningControllerInterface(v17);
  _Unwind_Resume(a1);
}

void *sub_10057D310(void *a1, NSObject **a2, const char **a3, const char **a4)
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

void sub_10057D380(uint64_t a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v3, *(a1 + 80));
  ctu::RestModule::connect();
  if (v4)
  {
    sub_100004A34(v4);
  }

  v2[0] = sub_10057D480;
  v2[1] = 0;
  sub_10057E704(a1 + 112, a1 + 96, a1, v2);
}

void sub_10057D468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10057D480(capabilities::ct *result)
{
  if (*(result + 14) != *(result + 15))
  {
    v2 = *(result + 11);
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v3 = capabilities::ct::bootstrapProvisioningSupportedOnSlotID(result);
    v4 = VinylSlotIdFromInt(v3);
    if (v2)
    {
      sub_100004A34(v2);
    }

    v5 = *(result + 14);
    v6 = *(result + 15);
    if (v5 != v6)
    {
      while (*(v5 + 4) != v4)
      {
        v5 += 88;
        if (v5 == v6)
        {
          goto LABEL_14;
        }
      }
    }

    if (v5 == v6)
    {
LABEL_14:
      v7 = *(result + 5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1017747A0(v4, v7);
      }
    }

    else
    {

      sub_10057DC8C(result, v5);
    }
  }
}

void sub_10057D558(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10057D570(uint64_t result)
{
  if ((*(result + 136) & 0xFFFFFFFE) == 2 && (*(result + 151) & 1) == 0)
  {
    *(result + 151) = 1;
    sub_10057DCF8(result);
  }
}

void sub_10057D598(uint64_t result, unsigned __int8 *a2)
{
  if (*a2 != *(result + 140))
  {
    sub_10057DCF8(result);
  }
}

void sub_10057D5B0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_10057CCBC(*(a1 + 144));
    v10 = 136315138;
    *v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I fState: %s", &v10, 0xCu);
  }

  if (*(a1 + 144) != 5)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 148);
      v6 = asString();
      v7 = *(a1 + 152);
      v8 = *(a1 + 160);
      v9 = *(a1 + 151);
      v10 = 67110146;
      *v11 = v5;
      *&v11[4] = 2080;
      *&v11[6] = v6;
      v12 = 2048;
      v13 = v7;
      v14 = 1024;
      v15 = v8;
      v16 = 1024;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I fIsVinylAvailable:%d, \t\t\t\tfInternetStatusSink:%s, \t\t\t\tfNextFetchTime:%lu, \t\t\t\tfBackoffRetries:%d, \t\t\t\tfSetupCompleted:%d", &v10, 0x28u);
    }
  }
}

void sub_10057D958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, xpc_object_t object)
{
  sub_100004A34(v13);
  xpc_release(object);
  sub_10001021C((v14 - 24));
  _Unwind_Resume(a1);
}

void sub_10057D9F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 208))
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#E Setting backoff timer when one is already set.", buf, 2u);
    }
  }

  else
  {
    v4 = 60000000 * a2;
    *buf = std::chrono::system_clock::now().__d_.__rep_ + 60000000 * a2;
    *(a1 + 152) = std::chrono::system_clock::to_time_t(buf);
    (***(a1 + 64))(&v15);
    Registry::getTimerService(buf, v15);
    v5 = *buf;
    sub_10000501C(__p, "Bootstrap Provisioning");
    v6 = *(a1 + 24);
    object = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = sub_10057E3D0;
    v10[3] = &unk_101E60AE0;
    v10[4] = a1;
    aBlock = _Block_copy(v10);
    sub_100D23364(v5, __p, 1, v4, &object, &aBlock);
    v7 = v19;
    v19 = 0;
    v8 = *(a1 + 208);
    *(a1 + 208) = v7;
    if (v8)
    {
      (*(*v8 + 8))(v8);
      v9 = v19;
      v19 = 0;
      if (v9)
      {
        (*(*v9 + 8))(v9);
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

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v18)
    {
      sub_100004A34(v18);
    }

    if (v16)
    {
      sub_100004A34(v16);
    }
  }
}

void sub_10057DC28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, dispatch_object_t object, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  v25 = *(v23 - 56);
  if (v25)
  {
    sub_100004A34(v25);
  }

  if (a23)
  {
    sub_100004A34(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_10057DC8C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 148);
  v3 = *(a2 + 12) == 3;
  if (v2 != v3)
  {
    *(result + 148) = v3;
  }

  if (*(a2 + 80) == 1)
  {
    for (i = *(a2 + 56); i != *(a2 + 64); i += 216)
    {
      if (*(i + 89) == 1)
      {
        *(result + 150) = 1;
        goto LABEL_12;
      }
    }
  }

  if (v2 != v3 || *(result + 149) == 1)
  {
LABEL_12:
    sub_10057DCF8(result);
  }
}

void sub_10057DCF8(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (*(a1 + 150) == 1)
  {
    sub_10057E084(a1);
    v3 = 5;
LABEL_3:
    *(a1 + 144) = v3;
    goto LABEL_4;
  }

  if (v2 <= 2)
  {
    if (v2)
    {
      if (v2 != 1)
      {
        if (v2 != 2)
        {
          goto LABEL_37;
        }

        goto LABEL_22;
      }
    }

    else if (*(a1 + 148) != 1)
    {
      goto LABEL_37;
    }

    if ((*(a1 + 151) & 1) == 0)
    {
      v11 = 1;
      goto LABEL_36;
    }

LABEL_22:
    if (*(a1 + 208))
    {
LABEL_23:
      v11 = 2;
LABEL_36:
      *(a1 + 144) = v11;
      goto LABEL_37;
    }

    goto LABEL_24;
  }

  v3 = *(a1 + 144);
  if ((v2 - 5) < 2)
  {
LABEL_4:
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_10057CCBC(v3);
      v6 = *(a1 + 160);
      v25 = 136315394;
      v26 = v5;
      v27 = 1024;
      LODWORD(v28) = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Provisioning completed: %s, fetch attempts: %d", &v25, 0x12u);
    }

    v7 = *(a1 + 56);
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = v8;
        v10 = *(a1 + 48);
        if (v10)
        {
          (*(*v10 + 24))(v10, 1, *(a1 + 144) == 5, *(a1 + 160));
        }

LABEL_10:
        sub_100004A34(v9);
        goto LABEL_37;
      }
    }

    goto LABEL_37;
  }

  if (v2 == 3)
  {
    if (*(a1 + 149) != 1)
    {
      goto LABEL_37;
    }

    *(a1 + 149) = 0;
    v24 = *(a1 + 160);
    if (v24 > 4)
    {
      v3 = 6;
      goto LABEL_3;
    }

    *(a1 + 160) = v24 + 1;
    sub_10057D9F8(a1, *(a1 + 8 * v24 + 168));
    goto LABEL_23;
  }

  if (v2 != 4)
  {
    goto LABEL_37;
  }

LABEL_24:
  if (*(a1 + 140) != 1)
  {
    v11 = 4;
    goto LABEL_36;
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    v13 = std::__shared_weak_count::lock(v12);
    if (v13)
    {
      v9 = v13;
      v14 = *(a1 + 48);
      if (v14)
      {
        v15 = *(a1 + 40);
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v16)
        {
          LOWORD(v25) = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Attempt bootstrap provisioning", &v25, 2u);
        }

        *(a1 + 144) = 3;
        *(a1 + 149) = 0;
        v17 = *(a1 + 88);
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v18 = capabilities::ct::bootstrapProvisioningSupportedOnSlotID(v16);
        v19 = VinylSlotIdFromInt(v18);
        (*(*v14 + 16))(v14, v19);
        if (v17)
        {
          sub_100004A34(v17);
        }
      }

      goto LABEL_10;
    }
  }

LABEL_37:
  v20 = *(a1 + 144);
  if (v2 != v20)
  {
    v21 = *(a1 + 40);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = sub_10057CCBC(v2);
      v23 = sub_10057CCBC(v20);
      v25 = 136315394;
      v26 = v22;
      v27 = 2080;
      v28 = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s -> %s", &v25, 0x16u);
    }

    sub_10057E11C(a1);
  }
}

void sub_10057E038(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

void sub_10057E068(uint64_t result, uint64_t a2)
{
  *(result + 149) = 1;
  if (*(a2 + 88) == 1)
  {
    sub_10057DC8C(result, a2);
  }

  else
  {
    sub_10057DCF8(result);
  }
}

uint64_t sub_10057E084(uint64_t a1)
{
  result = *(a1 + 208);
  if (result)
  {
    (*(*result + 16))(result);
    *(a1 + 152) = 0;
    result = *(a1 + 208);
    *(a1 + 208) = 0;
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_10057E11C(uint64_t a1)
{
  if (*(a1 + 144) == 3)
  {
    return;
  }

  v17 = 0;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    v17 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    v17 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_9;
    }
  }

  if (xpc_get_type(v3) != &_xpc_type_dictionary)
  {
    v4 = xpc_null_create();
LABEL_9:
    v17 = v4;
    goto LABEL_10;
  }

  xpc_retain(v3);
LABEL_10:
  xpc_release(v3);
  v15 = xpc_int64_create(*(a1 + 144));
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  v13 = &v17;
  v14 = "State";
  sub_10000F688(&v13, &v15, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v15);
  v15 = 0;
  v11 = xpc_int64_create(*(a1 + 160));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  v13 = &v17;
  v14 = "BackoffRetries";
  sub_10000F688(&v13, &v11, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
  v11 = 0;
  v9 = xpc_int64_create(*(a1 + 152));
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v13 = &v17;
  v14 = "NextFetchAttemptTime";
  sub_10000F688(&v13, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
  v5 = *(a1 + 64);
  v7 = v17;
  if (v17)
  {
    xpc_retain(v17);
  }

  else
  {
    v7 = xpc_null_create();
  }

  xpc::bridge(&v7, v6);
  sub_100010180(&v8, &v13);
  (*(*v5 + 928))(v5, &v8);
  sub_10001021C(&v8);
  sub_10000A1EC(&v13);
  xpc_release(v7);
  xpc_release(v17);
}

void sub_10057E358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, const void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16)
{
  sub_10001021C(&a11);
  sub_10000A1EC(&a16);
  xpc_release(object);
  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void sub_10057E3D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 208);
  *(v1 + 208) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(v1 + 152) = 0;
  if (*(v1 + 144) != 2)
  {
    v3 = *(v1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#E Timer fired while not in waiting state.", v4, 2u);
    }
  }

  sub_10057DCF8(v1);
}

void sub_10057E480(uint64_t a1)
{
  sub_10057E4B8(a1);

  operator delete();
}

void sub_10057E4B8(uint64_t a1)
{
  *a1 = off_101E60AC0;
  v2 = *(a1 + 208);
  *(a1 + 208) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v7 = (a1 + 112);
  sub_100112048(&v7);
  v3 = *(a1 + 104);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  BootstrapProvisioningControllerInterface::~BootstrapProvisioningControllerInterface(a1);
}

void sub_10057E604(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10057E6D8);
  __cxa_rethrow();
}

void sub_10057E644(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10057E698(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10057E6D8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10057E7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10057E8A0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E60C18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10057E8E0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10057E92C(uint64_t a1, xpc_object_t *a2)
{
  sub_10011D868(*a1, a2);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = (*(a1 + 8) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_10057EA94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10057EB44(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E60C98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10057EB7C(void *a1, xpc_object_t *a2)
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

uint64_t sub_10057EC6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10057EDA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10057EE54(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E60D18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10057EE8C(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v13 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v6);
    *v4 = v14;
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

  return v9(v11, &v13);
}

uint64_t sub_10057EF88(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10057F0B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10057F160(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E60D98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10057F198(void *a1)
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

uint64_t sub_10057F1E0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10057F22C(uint64_t **a1, __int128 *a2, uint64_t ***a3)
{
  if (a1 + 1 == sub_100007A6C(a1, a3))
  {
    v10 = a3;
    v6 = sub_100580B40(a1, a3, &unk_101802C98, &v10, &v9);
    sub_1005806D0(v6 + 7, 0, 0, 0);
  }

  v7 = sub_1000E20F0(a1, a3);
  return sub_100005308(v7, a2);
}

uint64_t sub_10057F2C0(uint64_t a1, __int128 *a2, uint64_t ***a3)
{
  if (a1 + 32 == sub_100007A6C(a1 + 24, a3))
  {
    v10 = a3;
    v6 = sub_100580B40((a1 + 24), a3, &unk_101802C98, &v10, &v9);
    sub_1005806D0(v6 + 7, 0, 0, 0);
  }

  v7 = sub_1000E20F0(a1 + 24, a3);
  return sub_100005308(v7, a2);
}

void sub_10057F358(uint64_t a1, __int128 *a2, __int128 *a3)
{
  sub_100580870(v4, a2, a3);
  sub_10015F6CC(a1 + 96, v4);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_10057F3B4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *a2 = a2 + 8;
  *(a2 + 40) = 0;
  *(a2 + 32) = 0;
  *(a2 + 56) = 0;
  *(a2 + 48) = a2 + 56;
  v4 = a2 + 48;
  *(a2 + 16) = 0;
  *(a2 + 24) = a2 + 32;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0u;
  v5 = (a2 + 72);
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0;
  if (*(a1 + 64) == 1 && *(a1 + 24) == 1 && *(a1 + 56) == 1)
  {
    sub_10057F358(a2, a1, (a1 + 32));
  }

  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
LABEL_6:
  if (v6 != v7)
  {
    v8 = *v6;
    v9 = v6[1];
    while (1)
    {
      if (v8 == v9)
      {
        v6 += 3;
        goto LABEL_6;
      }

      if (*(v8 + 24) == 1 && *(v8 + 36) == 1)
      {
        v10 = *(v8 + 32);
        if (*(v8 + 72) == 1 && *(v8 + 64) == 1)
        {
          if (v10 != 9)
          {
            if (v10 == 6)
            {
              sub_10057F22C(a2, v8, (v8 + 40));
              if ((*(v8 + 24) & 1) == 0)
              {
                sub_1000D1644();
              }
            }

LABEL_21:
            sub_100005308(v5, v8);
            goto LABEL_24;
          }

          sub_10057F2C0(a2, v8, (v8 + 40));
        }

        else
        {
          if (v10 != 9)
          {
            goto LABEL_21;
          }

          if (*(v8 + 84) == 1 && *(v8 + 80) == 1)
          {
            sub_10057F2C0(a2, v8, v8);
          }

          else
          {
            sub_100005BA0(v4, v8, v8);
          }
        }
      }

LABEL_24:
      v8 += 88;
    }
  }
}

uint64_t sub_10057F588(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v3 = (a1 + 72);
  sub_1000087B4(&v3);
  sub_100009970(a1 + 48, *(a1 + 56));
  sub_100580908(a1 + 24, *(a1 + 32));
  sub_100580908(a1, *(a1 + 8));
  return a1;
}

void sub_10057F608(Registry **a1@<X0>, NSObject **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
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
  v17 = *a2;
  v18 = *a2;
  if (!v15)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1017748DC();
    }

    *a4 = 0;
    *(a4 + 88) = 0;
    if ((v16 & 1) == 0)
    {
      goto LABEL_36;
    }

    return;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Decoding resource lists XML document using BlastDoor", __p, 2u);
  }

  v19 = *(a3 + 23);
  if (v19 >= 0)
  {
    v20 = a3;
  }

  else
  {
    v20 = *a3;
  }

  if (v19 >= 0)
  {
    v21 = *(a3 + 23);
  }

  else
  {
    v21 = a3[1];
  }

  v22 = [NSData nonOwningDataWithBytes:v20 length:v21];
  v38 = 0;
  v39 = 0;
  v37 = 0;
  (*(*v15 + 16))(&v37, v15);
  v35 = 0u;
  v36 = 0u;
  __p[0] = 0;
  __p[1] = &v39;
  (*(*v37 + 64))(&v35);
  sub_1003A5C24(__p);
  v23 = v39;
  if (v39)
  {
    v24 = *a2;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10177482C(v23, v24, v25);
    }

LABEL_30:
    *a4 = 0;
    *(a4 + 88) = 0;
    goto LABEL_31;
  }

  if ((BYTE8(v36) & 1) == 0)
  {
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
    {
      sub_1017748A0();
    }

    goto LABEL_30;
  }

  memset(v30, 0, sizeof(v30));
  *__p = 0u;
  sub_10004EFD0(v30 + 8, v35, *(&v35 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v35 + 1) - v35) >> 3));
  sub_100C180E4(&v31);
  *a4 = *__p;
  *(a4 + 16) = *&v30[0];
  *(a4 + 24) = *(v30 + 8);
  v26 = v33;
  *(a4 + 40) = *(&v30[1] + 1);
  v27 = v32;
  v28 = v31;
  v31 = 0uLL;
  v32 = 0;
  *(a4 + 80) = v34;
  __p[1] = 0;
  memset(v30, 0, sizeof(v30));
  __p[0] = 0;
  *(a4 + 48) = v28;
  *(a4 + 64) = v27;
  *(a4 + 72) = v26;
  *(a4 + 88) = 1;
  v40 = v30 + 1;
  sub_1000087B4(&v40);
  if (SBYTE7(v30[0]) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_31:
  if (BYTE8(v36) == 1)
  {
    __p[0] = &v35;
    sub_1000087B4(__p);
  }

  if (v38)
  {
    sub_100004A34(v38);
  }

  sub_1003A5A8C(&v39);

  if ((v16 & 1) == 0)
  {
LABEL_36:
    sub_100004A34(v14);
  }
}

void sub_10057F950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  *(v31 - 72) = v29;
  sub_1000087B4((v31 - 72));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    __p = &a24;
    sub_1000087B4(&__p);
  }

  v33 = *(v31 - 88);
  if (v33)
  {
    sub_100004A34(v33);
  }

  sub_1003A5A8C((v31 - 80));

  if ((v30 & 1) == 0)
  {
    sub_100004A34(v27);
  }

  _Unwind_Resume(a1);
}

void sub_10057F9D4()
{
  if (v0)
  {
    JUMPOUT(0x10057F9CCLL);
  }

  JUMPOUT(0x10057F9C4);
}

void sub_10057F9E4(Registry **a1@<X0>, NSObject **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
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
  v38 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v38);
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
  v17 = *a2;
  v18 = *a2;
  if (!v15)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1017749C8();
    }

    *a4 = 0;
    *(a4 + 144) = 0;
    if ((v16 & 1) == 0)
    {
      goto LABEL_42;
    }

    return;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v38) = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Decoding conference info XML document using BlastDoor", &v38, 2u);
  }

  v19 = *(a3 + 23);
  if (v19 >= 0)
  {
    v20 = a3;
  }

  else
  {
    v20 = *a3;
  }

  if (v19 >= 0)
  {
    v21 = *(a3 + 23);
  }

  else
  {
    v21 = a3[1];
  }

  v22 = [NSData nonOwningDataWithBytes:v20 length:v21];
  v60 = 0;
  v61 = 0;
  v59 = 0;
  (*(*v15 + 16))(&v59, v15);
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  *__p = 0u;
  v56 = 0u;
  *v53 = 0u;
  v54 = 0u;
  v38 = 0;
  v39 = &v61;
  (*(*v59 + 56))(v53);
  sub_1003A5C24(&v38);
  v23 = v61;
  if (v61)
  {
    v24 = *a2;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_101774918(v23, v24, v25);
    }

LABEL_30:
    *a4 = 0;
    *(a4 + 144) = 0;
    goto LABEL_31;
  }

  if ((v58 & 1) == 0)
  {
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
    {
      sub_10177498C();
    }

    goto LABEL_30;
  }

  sub_10057F3B4(v53, &v38);
  v26 = v39;
  *a4 = v38;
  *(a4 + 8) = v26;
  v27 = (a4 + 8);
  v28 = v40;
  *(a4 + 16) = v40;
  if (v28)
  {
    v26[2] = v27;
    v38 = &v39;
    v39 = 0;
    v40 = 0;
  }

  else
  {
    *a4 = v27;
  }

  v30 = v41;
  v29 = v42;
  *(a4 + 32) = v42;
  v31 = a4 + 32;
  *(a4 + 24) = v30;
  v32 = v43;
  *(a4 + 40) = v43;
  if (v32)
  {
    v29[2] = v31;
    v41 = &v42;
    v42 = 0;
    v43 = 0;
  }

  else
  {
    *(a4 + 24) = v31;
  }

  v34 = v44;
  v33 = v45;
  *(a4 + 56) = v45;
  v35 = a4 + 56;
  *(a4 + 48) = v34;
  v36 = v46;
  *(a4 + 64) = v46;
  if (v36)
  {
    *(v33 + 2) = v35;
    v44 = &v45;
    v45 = 0;
    v46 = 0;
  }

  else
  {
    *(a4 + 48) = v35;
  }

  *(a4 + 72) = v47;
  *(a4 + 88) = v48;
  v37 = v49;
  v48 = 0;
  *&v49 = 0;
  v47 = 0uLL;
  *(a4 + 96) = v37;
  *(a4 + 112) = v50;
  *(&v49 + 1) = 0;
  v50 = 0;
  *(a4 + 120) = v51;
  *(a4 + 136) = v52;
  v51 = 0uLL;
  v52 = 0;
  *(a4 + 144) = 1;
  v62 = &v47;
  sub_1000087B4(&v62);
  sub_100009970(&v44, v45);
  sub_100580908(&v41, v42);
  sub_100580908(&v38, v39);
LABEL_31:
  if (v58 == 1)
  {
    v38 = v57 + 1;
    sub_1005809F0(&v38);
    if (LOBYTE(v57[0]) == 1)
    {
      if (BYTE8(v56) == 1 && SBYTE7(v56) < 0)
      {
        operator delete(__p[0]);
      }

      if (BYTE8(v54) == 1 && SBYTE7(v54) < 0)
      {
        operator delete(v53[0]);
      }
    }
  }

  if (v60)
  {
    sub_100004A34(v60);
  }

  sub_1003A5A8C(&v61);

  if ((v16 & 1) == 0)
  {
LABEL_42:
    sub_100004A34(v14);
  }
}

void sub_10057FE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_100580964(va);
  v31 = *(v29 - 104);
  if (v31)
  {
    sub_100004A34(v31);
  }

  sub_1003A5A8C((v29 - 96));

  if ((v28 & 1) == 0)
  {
    sub_100004A34(v26);
  }

  _Unwind_Resume(a1);
}

void sub_10057FE5C()
{
  if (v0)
  {
    JUMPOUT(0x10057FE54);
  }

  JUMPOUT(0x10057FE4CLL);
}

std::string *sub_10057FE6C@<X0>(std::string *__str@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  result = std::string::operator=(a2, __str);
  if (__str[1].__r_.__value_.__s.__data_[4] == 1)
  {
    *(a2 + 24) = LODWORD(__str[1].__r_.__value_.__l.__data_) == 200;
  }

  return result;
}

void sub_10057FEC0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_10057FEDC@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 32) == *(a1 + 24))
  {

    return sub_100C180E4(a2);
  }

  else
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
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
    memset(v15, 0, sizeof(v15));
    v13 = 0u;
    sub_10000C320(&v13);
    sub_10000501C(__p, "<?xml version=1.0 encoding=utf-8?>");
    sub_100917DBC(&v13, __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    sub_10000501C(__p, "<resource-lists xmlns=urn:ietf:params:xml:ns:resource-lists xmlns:cp=urn:ietf:params:xml:ns:copycontrol>");
    sub_100917DBC(&v13, __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    sub_10000501C(__p, "  <list>");
    sub_100917DBC(&v13, __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    v4 = *(a1 + 24);
    for (i = *(a1 + 32); v4 != i; v4 += 24)
    {
      __p[0] = 0;
      __p[1] = 0;
      v12 = 0;
      std::operator+<char>();
      v6 = std::string::append(&v10, " cp:copyControl=to />", 0x18uLL);
      v7 = *&v6->__r_.__value_.__l.__data_;
      v12 = v6->__r_.__value_.__r.__words[2];
      *__p = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }

      sub_100917DBC(&v13, __p);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10000501C(__p, "  </list>");
    sub_100917DBC(&v13, __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    sub_10000C030(&v14, "</resource-lists>", 17);
    sub_100061574(&v13, __p);
    sub_100C180E0(a2, __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    *&v14 = v8;
    if (SHIBYTE(v17) < 0)
    {
      operator delete(*(&v16 + 1));
    }

    std::locale::~locale(v15);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  return result;
}

void sub_100580238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_10068C9D8(&a23);
  _Unwind_Resume(a1);
}

void sub_1005802A4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 47);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 32);
  }

  if (v3)
  {
    v37 = 0;
    __dst = 0u;
    v36 = 0u;
    std::operator+<char>();
    v5 = std::string::append(&v32, ">\n <group-data>\n\t<request target=subject>\n\t\t<action>set</action>\n\t\t<data><subject>", 0x55uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = *(a1 + 23);
    if (v7 >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    if (v7 >= 0)
    {
      v9 = *(a1 + 23);
    }

    else
    {
      v9 = *(a1 + 8);
    }

    v10 = std::string::append(&v33, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v34, "</subject></data>\n\t</request>\n </group-data>\n</cpm-group-management>", 0x44uLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    *&v17 = *(&v12->__r_.__value_.__l + 2);
    *__p = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    sub_100C180E0(&__dst, __p);
    if (SBYTE7(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    *v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    memset(v18, 0, sizeof(v18));
    *__p = 0u;
    sub_10000C320(__p);
    sub_1000D0C38(__p, "Content-Type", off_101E97878);
    if ((SBYTE7(v36) & 0x80u) == 0)
    {
      v14 = BYTE7(v36);
    }

    else
    {
      v14 = *(&__dst + 1);
    }

    std::to_string(&v34, v14);
    sub_1002049A4(__p, "Content-Length", &v34);
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    sub_100917E0C(__p);
    sub_100C18310(&v17, &__dst);
    sub_100061574(__p, &v34);
    sub_100C180E0(a2, &v34);
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    *&v17 = v15;
    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[1]);
    }

    std::locale::~locale(v18);
    std::iostream::~basic_iostream();
    std::ios::~ios();
    if (SBYTE7(v36) < 0)
    {
      operator delete(__dst);
    }
  }

  else
  {

    sub_100C180E4(a2);
  }
}

void sub_100580624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 89) < 0)
  {
    operator delete(*(v14 - 112));
  }

  sub_10068C9D8(&__p);
  if (*(v14 - 57) < 0)
  {
    operator delete(*(v14 - 80));
  }

  _Unwind_Resume(a1);
}

void sub_1005806D0(uint64_t *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_100071A6C(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_10008E2D0(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v6++);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 1);
      v11 -= 3;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = __str;
      do
      {
        std::string::operator=(v8++, v14++);
        v13 -= 24;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = sub_10016FBEC(a1, (v6 + v12), a3, v11);
  }
}

char *sub_100580870(char *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v6;
  }

  return __dst;
}

void sub_1005808EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100580908(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100580908(a1, *a2);
    sub_100580908(a1, a2[1]);
    sub_1003ECF44((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_100580964(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    v3 = (a1 + 72);
    sub_1005809F0(&v3);
    if (*(a1 + 64) == 1)
    {
      if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
      {
        operator delete(*(a1 + 32));
      }

      if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
      {
        operator delete(*a1);
      }
    }
  }

  return a1;
}

void sub_1005809F0(void ****a1)
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
        v4 -= 3;
        v6 = v4;
        sub_100580A64(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_100580A64(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100580AB8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100580AB8(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = v3;
    if (*(v3 - 16) == 1 && *(v3 - 24) == 1 && *(v3 - 25) < 0)
    {
      operator delete(*(v3 - 6));
    }

    v3 -= 11;
    if (*(v4 - 64) == 1 && *(v4 - 65) < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void *sub_100580B40(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v5 = *sub_100005C2C(a1, &v10, a2);
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_100580BF4();
  }

  return v5;
}

uint64_t sub_100580C98(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1003ECF44(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t asString(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (v1 == -1)
  {
    sub_10058114C();
  }

  v4 = &v3;
  return (off_101E60E38[v1])(&v4, a1);
}

{
  v1 = *(a1 + 32);
  if (v1 == -1)
  {
    sub_10058114C();
  }

  v4 = &v3;
  return (*(&off_101E60EB8 + v1))(&v4, a1);
}

{
  v1 = *(a1 + 232);
  if (v1 == -1)
  {
    sub_10058114C();
  }

  v4 = &v3;
  return (off_101E60EC8[v1])(&v4, a1 + 8);
}

{
  v1 = *(a1 + 144);
  if (v1 == -1)
  {
    sub_10058114C();
  }

  v4 = &v3;
  return (*(&off_101E60FE0 + v1))(&v4, a1);
}

{
  v1 = *(a1 + 24);
  if (v1 == -1)
  {
    sub_10058114C();
  }

  v4 = &v3;
  return (*(&off_101E60FF0 + v1))(&v4, a1);
}

{
  v1 = *(a1 + 4);
  if (v1 == -1)
  {
    sub_10058114C();
  }

  v4 = &v3;
  return (*(&off_101E61020 + v1))(&v4, a1);
}

{
  v1 = *(a1 + 48);
  if (v1 == -1)
  {
    sub_10058114C();
  }

  v4 = &v3;
  return (off_101E61038[v1])(&v4, a1 + 8);
}

void LazuliMLSMessageId::LazuliMLSMessageId(LazuliMLSMessageId *this)
{
  this->fId.__begin_ = 0;
  this->fId.__end_ = 0;
  this->fId.__cap_ = 0;
}

void **LazuliMLSMessageId::LazuliMLSMessageId(void **a1, const std::string *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  v5 = a2->__r_.__value_.__r.__words[0];
  size = a2->__r_.__value_.__l.__size_;
  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2->__r_.__value_.__r.__words[0];
  }

  if (v4 >= 0)
  {
    v8 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = a2->__r_.__value_.__l.__size_;
  }

  if (v8 >= 2)
  {
    v9 = v7 + v8;
    v10 = v7;
    do
    {
      v11 = memchr(v10, 95, v8 - 1);
      if (!v11)
      {
        break;
      }

      if (*v11 == 24415)
      {
        if (v11 == v9)
        {
          break;
        }

        memset(&__dst, 0, sizeof(__dst));
        if (v11 - v7 != -1)
        {
          std::string::basic_string(&__dst, a2, 0, v11 - v7, &v16);
          goto LABEL_20;
        }

        goto LABEL_17;
      }

      v10 = (v11 + 1);
      v8 = v9 - v10;
    }

    while (v9 - v10 >= 2);
  }

  memset(&__dst, 0, sizeof(__dst));
LABEL_17:
  if ((v4 & 0x80000000) != 0)
  {
    sub_100005F2C(&__dst, v5, size);
  }

  else
  {
    __dst = *a2;
  }

LABEL_20:
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = __dst.__r_.__value_.__l.__size_;
  }

  v17 = 0;
  v16 = 0uLL;
  sub_1001E0D88(&v16, p_dst, p_dst + v13, v13);
  v14 = *a1;
  if (*a1)
  {
    a1[1] = v14;
    operator delete(v14);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v16;
  a1[2] = v17;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_100581098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = *v18;
  if (*v18)
  {
    *(v18 + 8) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

const std::string *LazuliMLSMessageId::createOptional@<X0>(const std::string *result@<X0>, uint64_t a2@<X8>)
{
  size = HIBYTE(result->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = result->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    result = LazuliMLSMessageId::LazuliMLSMessageId(&v4, result);
    *a2 = v4;
    *(a2 + 16) = v5;
    LOBYTE(size) = 1;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 24) = size;
  return result;
}

void sub_10058114C()
{
  exception = __cxa_allocate_exception(8uLL);
}

void sub_10058119C(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_100581E40(&__dst, a1);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_100034C50(&__p, *(a1 + 144), *(a1 + 152), *(a1 + 152) - *(a1 + 144));
  memset(v18, 0, sizeof(v18));
  sub_100581F6C(v18, *(a1 + 168), *(a1 + 176), (*(a1 + 176) - *(a1 + 168)) >> 5);
  sub_10000501C(a2, "LazuliMLSEventOutgoingCreateGroup");
  v19 = v18;
  sub_10003CA58(&v19);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_1005812D8(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_100581E40(&__dst, a1);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_100034C50(&__p, *(a1 + 144), *(a1 + 152), *(a1 + 152) - *(a1 + 144));
  sub_10000501C(a2, "LazuliMLSEventOutgoingAddMember");
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_1005813AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100582180(va);
  _Unwind_Resume(a1);
}

void sub_1005813D0(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_100581E40(&__dst, a1);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_100034C50(&__p, *(a1 + 144), *(a1 + 152), *(a1 + 152) - *(a1 + 144));
  memset(v18, 0, sizeof(v18));
  sub_100581F6C(v18, *(a1 + 168), *(a1 + 176), (*(a1 + 176) - *(a1 + 168)) >> 5);
  sub_10000501C(a2, "LazuliMLSEventOutgoingKickMember");
  v19 = v18;
  sub_10003CA58(&v19);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_10058150C(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_100581E40(&__dst, a1);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_100034C50(&__p, *(a1 + 144), *(a1 + 152), *(a1 + 152) - *(a1 + 144));
  sub_10000501C(a2, "LazuliMLSEventOutgoingRemoveSelf");
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_1005815E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100582180(va);
  _Unwind_Resume(a1);
}

void sub_100581604(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_100581E40(&__dst, a1);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_100034C50(&__p, *(a1 + 144), *(a1 + 152), *(a1 + 152) - *(a1 + 144));
  sub_10000501C(a2, "LazuliMLSEventOutgoingKeyUpdate");
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_1005816D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100582180(va);
  _Unwind_Resume(a1);
}

void sub_1005816FC(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_100581E40(&__dst, a1);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_100034C50(&__p, *(a1 + 144), *(a1 + 152), *(a1 + 152) - *(a1 + 144));
  sub_10000501C(a2, "LazuliMLSEventOutgoingResync");
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_1005817D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100582180(va);
  _Unwind_Resume(a1);
}

void sub_1005817F4(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_100581E40(&__dst, a1);
  if (*(a1 + 167) < 0)
  {
    sub_100005F2C(&v16, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    v16 = *(a1 + 144);
    v17 = *(a1 + 160);
  }

  v4 = *(a1 + 176);
  v18 = *(a1 + 168);
  __p = 0;
  v20 = 0;
  v21 = 0;
  sub_100034C50(&__p, v4, *(a1 + 184), *(a1 + 184) - v4);
  sub_10000501C(a2, "LazuliMLSEventOutgoingFailureToDecryptV2");
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16);
  }

  if (v15 == 1 && v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_100581944(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_100581E40(&__dst, a1);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_100034C50(&__p, *(a1 + 144), *(a1 + 152), *(a1 + 152) - *(a1 + 144));
  sub_10000501C(a2, "LazuliMLSEventOutgoingApplicationSend");
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_100581A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100582180(va);
  _Unwind_Resume(a1);
}

void sub_100581A3C(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_100581E40(&__dst, a1);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_100034C50(&__p, *(a1 + 144), *(a1 + 152), *(a1 + 152) - *(a1 + 144));
  sub_10000501C(a2, "LazuliMLSEventOutgoingDowngrade");
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_100581B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100582180(va);
  _Unwind_Resume(a1);
}

void sub_100581B34(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_100581E40(&__dst, a1);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_100034C50(&__p, *(a1 + 144), *(a1 + 152), *(a1 + 152) - *(a1 + 144));
  sub_10000501C(a2, "LazuliMLSEventOutgoingProposalCommitted");
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_100581C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100582180(va);
  _Unwind_Resume(a1);
}

void sub_100581C2C(void *a1@<X8>, __int128 *a2@<X1>)
{
  sub_100581E40(&v3, a2);
  sub_10000501C(a1, "LazuliMLSEventOutgoingGroupRepaired");
  if (v13 == 1 && __p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  if (v4 < 0)
  {
    operator delete(v3);
  }
}

void sub_100581CDC(__int128 *a1@<X1>, void *a2@<X8>)
{
  sub_100581E40(&__dst, a1);
  sub_100582264(v15, (a1 + 9));
  sub_10000501C(a2, "LazuliMLSEventOutgoingErrorOccurred");
  sub_100582310(v15);
  if (v14 == 1 && __p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_100581D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1005823D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100581DC0(uint64_t a1)
{
  if (*(a1 + 136) == 1)
  {
    v2 = *(a1 + 112);
    if (v2)
    {
      *(a1 + 120) = v2;
      operator delete(v2);
    }
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    *(a1 + 96) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    *(a1 + 72) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    *(a1 + 48) = v5;
    operator delete(v5);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

char *sub_100581E40(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  v5 = *(a2 + 24);
  *(__dst + 5) = 0;
  *(__dst + 24) = v5;
  *(__dst + 6) = 0;
  *(__dst + 7) = 0;
  sub_100034C50(__dst + 5, *(a2 + 5), *(a2 + 6), *(a2 + 6) - *(a2 + 5));
  *(__dst + 8) = 0;
  *(__dst + 9) = 0;
  *(__dst + 10) = 0;
  sub_100034C50(__dst + 8, *(a2 + 8), *(a2 + 9), *(a2 + 9) - *(a2 + 8));
  *(__dst + 11) = 0;
  *(__dst + 12) = 0;
  *(__dst + 13) = 0;
  sub_100034C50(__dst + 11, *(a2 + 11), *(a2 + 12), *(a2 + 12) - *(a2 + 11));
  sub_100190A90(__dst + 112, (a2 + 7));
  return __dst;
}

void sub_100581F08(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 96) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v1 + 72) = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v8;
    operator delete(v8);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100581F6C(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_100581FF4(result, a4);
  }

  return result;
}

void sub_100581FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10003CA58(&a9);
  _Unwind_Resume(a1);
}

void sub_100581FF4(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_100559E88(a1, a2);
  }

  sub_1000CE3D4();
}

void *sub_100582030(uint64_t a1, __int128 *a2, __int128 *a3, void *__dst)
{
  v4 = __dst;
  v12 = __dst;
  v13 = __dst;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_100005F2C(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4[2] = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      v4[3] = *(v6 + 3);
      v6 += 2;
      v4 = v8 + 4;
      v13 = v8 + 4;
    }

    while (v6 != a3);
  }

  LOBYTE(v11) = 1;
  sub_1005820F8(v10);
  return v4;
}

uint64_t sub_1005820F8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000D4894(a1);
  }

  return a1;
}

uint64_t sub_100582130(uint64_t a1)
{
  v4 = (a1 + 168);
  sub_10003CA58(&v4);
  v2 = *(a1 + 144);
  if (v2)
  {
    *(a1 + 152) = v2;
    operator delete(v2);
  }

  return sub_100581DC0(a1);
}

uint64_t sub_100582180(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    *(a1 + 152) = v2;
    operator delete(v2);
  }

  if (*(a1 + 136) == 1)
  {
    v3 = *(a1 + 112);
    if (v3)
    {
      *(a1 + 120) = v3;
      operator delete(v3);
    }
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    *(a1 + 96) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    *(a1 + 72) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    *(a1 + 48) = v6;
    operator delete(v6);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100582210(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  return sub_100581DC0(a1);
}

uint64_t sub_100582264(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = -1;
  sub_1005822AC(a1, a2);
  return a1;
}

uint64_t sub_1005822AC(uint64_t a1, uint64_t a2)
{
  result = sub_100582310(a1);
  v5 = *(a2 + 32);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E60EA8[v5])(&v6, a2);
    *(a1 + 32) = v5;
  }

  return result;
}

uint64_t sub_100582310(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 != -1)
  {
    result = (off_101E60E98[v2])(&v3, result);
  }

  *(v1 + 32) = -1;
  return result;
}

void sub_10058236C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

_BYTE **sub_100582384(_BYTE **result, __int128 *a2)
{
  v3 = *result;
  if (*(a2 + 23) < 0)
  {
    result = sub_100005F2C(*result, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(v3 + 24) = *(a2 + 3);
  return result;
}

uint64_t sub_1005823D8(uint64_t a1)
{
  sub_100582310(a1 + 144);
  if (*(a1 + 136) == 1)
  {
    v2 = *(a1 + 112);
    if (v2)
    {
      *(a1 + 120) = v2;
      operator delete(v2);
    }
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    *(a1 + 96) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    *(a1 + 72) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    *(a1 + 48) = v5;
    operator delete(v5);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100582470(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    v5 = *(a1 + 16);
  }

  v6 = *(a1 + 24);
  sub_10000501C(a2, "LazuliMLSEventOutgoingUnhealableIncomingError");
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1005824EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100582508(void *a1@<X8>, uint64_t a2@<X1>)
{
  sub_100583134(&v3, a2);
  sub_10000501C(a1, "LazuliMLSEventIncomingApplicationMessage");
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 == 1 && v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  if (v4 < 0)
  {
    operator delete(v3);
  }
}

void sub_1005825E8(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_100581E40(&v5, a1);
  if (*(a1 + 167) < 0)
  {
    sub_100005F2C(__p, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    *__p = *(a1 + 144);
    v17 = *(a1 + 160);
  }

  v4 = *(a1 + 176);
  v18 = *(a1 + 168);
  memset(v19, 0, sizeof(v19));
  sub_100581F6C(v19, v4, *(a1 + 184), (*(a1 + 184) - v4) >> 5);
  sub_10000501C(a2, "LazuliMLSEventIncomingGroupCreated");
  v20 = v19;
  sub_10003CA58(&v20);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 == 1 && v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  if (v6 < 0)
  {
    operator delete(v5);
  }
}

void sub_10058273C(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_100581E40(&v5, a1);
  if (*(a1 + 167) < 0)
  {
    sub_100005F2C(__p, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    *__p = *(a1 + 144);
    v17 = *(a1 + 160);
  }

  v4 = *(a1 + 176);
  v18 = *(a1 + 168);
  memset(v19, 0, sizeof(v19));
  sub_100581F6C(v19, v4, *(a1 + 184), (*(a1 + 184) - v4) >> 5);
  sub_10000501C(a2, "LazuliMLSEventIncomingMemberAdded");
  v20 = v19;
  sub_10003CA58(&v20);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 == 1 && v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  if (v6 < 0)
  {
    operator delete(v5);
  }
}

void sub_100582890(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_100581E40(&v5, a1);
  if (*(a1 + 167) < 0)
  {
    sub_100005F2C(__p, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    *__p = *(a1 + 144);
    v17 = *(a1 + 160);
  }

  v4 = *(a1 + 176);
  v18 = *(a1 + 168);
  memset(v19, 0, sizeof(v19));
  sub_100581F6C(v19, v4, *(a1 + 184), (*(a1 + 184) - v4) >> 5);
  sub_10000501C(a2, "LazuliMLSEventIncomingMemberKicked");
  v20 = v19;
  sub_10003CA58(&v20);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 == 1 && v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  if (v6 < 0)
  {
    operator delete(v5);
  }
}

void sub_1005829E4(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_100581E40(&v4, a1);
  if (*(a1 + 167) < 0)
  {
    sub_100005F2C(__p, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    *__p = *(a1 + 144);
    v16 = *(a1 + 160);
  }

  v17 = *(a1 + 168);
  sub_10000501C(a2, "LazuliMLSEventIncomingSelfKicked");
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(v4);
  }
}

void sub_100582AF4(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_100581E40(&v4, a1);
  if (*(a1 + 167) < 0)
  {
    sub_100005F2C(__p, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    *__p = *(a1 + 144);
    v16 = *(a1 + 160);
  }

  v17 = *(a1 + 168);
  sub_10000501C(a2, "LazuliMLSEventIncomingDowngradeRecommended");
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(v4);
  }
}

void sub_100582C04(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_100581E40(&__dst, a1);
  if (*(a1 + 167) < 0)
  {
    sub_100005F2C(&v15, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    v15 = *(a1 + 144);
    v16 = *(a1 + 160);
  }

  v17 = *(a1 + 168);
  if (*(a1 + 199) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 176), *(a1 + 184));
  }

  else
  {
    __p = *(a1 + 176);
    v19 = *(a1 + 192);
  }

  sub_10000501C(a2, "LazuliMLSEventIncomingGroupNameChange");
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_100582D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  sub_100581DC0(&a10);
  _Unwind_Resume(a1);
}

void sub_100582D68(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_100581E40(&v4, a1);
  if (*(a1 + 167) < 0)
  {
    sub_100005F2C(__p, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    *__p = *(a1 + 144);
    v16 = *(a1 + 160);
  }

  v17 = *(a1 + 168);
  sub_10000501C(a2, "LazuliMLSEventIncomingApplicationSignatureVerified");
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(v4);
  }
}

void sub_100582E78(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_100581E40(&__dst, a1);
  if (*(a1 + 167) < 0)
  {
    sub_100005F2C(&v16, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    v16 = *(a1 + 144);
    v17 = *(a1 + 160);
  }

  v4 = *(a1 + 176);
  v18 = *(a1 + 168);
  __p = 0;
  v20 = 0;
  v21 = 0;
  sub_100034C50(&__p, v4, *(a1 + 184), *(a1 + 184) - v4);
  sub_10000501C(a2, "LazuliMLSEventIncomingResendApplicationMessage");
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16);
  }

  if (v15 == 1 && v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_100582FC8(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_100581E40(&v4, a1);
  if (*(a1 + 167) < 0)
  {
    sub_100005F2C(__p, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    *__p = *(a1 + 144);
    v16 = *(a1 + 160);
  }

  v17 = *(a1 + 168);
  sub_10000501C(a2, "LazuliMLSEventIncomingInternalStateUpdated");
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 == 1 && v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(v4);
  }
}

uint64_t sub_1005830D8@<X0>(void *a1@<X8>, uint64_t a2@<X1>)
{
  sub_1005833A8(v4, a2);
  sub_10000501C(a1, "LazuliMLSEventOutgoingInTheContextOfIncoming");
  return sub_100583454(v4);
}

uint64_t sub_100583134(uint64_t a1, uint64_t a2)
{
  sub_100581E40(a1, a2);
  if (*(a2 + 167) < 0)
  {
    sub_100005F2C((a1 + 144), *(a2 + 144), *(a2 + 152));
  }

  else
  {
    v4 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v4;
  }

  v5 = *(a2 + 168);
  *(a1 + 176) = 0;
  *(a1 + 168) = v5;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  sub_100034C50((a1 + 176), *(a2 + 176), *(a2 + 184), *(a2 + 184) - *(a2 + 176));
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  sub_100034C50((a1 + 200), *(a2 + 200), *(a2 + 208), *(a2 + 208) - *(a2 + 200));
  return a1;
}

uint64_t sub_100583210(uint64_t a1)
{
  v2 = *(a1 + 200);
  if (v2)
  {
    *(a1 + 208) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 176);
  if (v3)
  {
    *(a1 + 184) = v3;
    operator delete(v3);
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  return sub_100581DC0(a1);
}

uint64_t sub_100583274(uint64_t a1)
{
  v3 = (a1 + 176);
  sub_10003CA58(&v3);
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  return sub_100581DC0(a1);
}

uint64_t sub_1005832C4(uint64_t a1)
{
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 136) == 1)
  {
    v2 = *(a1 + 112);
    if (v2)
    {
      *(a1 + 120) = v2;
      operator delete(v2);
    }
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    *(a1 + 96) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    *(a1 + 72) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    *(a1 + 48) = v5;
    operator delete(v5);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100583354(uint64_t a1)
{
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  return sub_100581DC0(a1);
}

uint64_t sub_1005833A8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 200) = -1;
  sub_1005833F0(a1, a2);
  return a1;
}

uint64_t sub_1005833F0(uint64_t a1, uint64_t a2)
{
  result = sub_100583454(a1);
  v5 = *(a2 + 200);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E60F80[v5])(&v6, a2);
    *(a1 + 200) = v5;
  }

  return result;
}

uint64_t sub_100583454(uint64_t result)
{
  v1 = result;
  v2 = *(result + 200);
  if (v2 != -1)
  {
    result = (off_101E60F20[v2])(&v3, result);
  }

  *(v1 + 200) = -1;
  return result;
}

void sub_1005834AC(uint64_t a1, uint64_t a2)
{
  v8 = (a2 + 168);
  sub_10003CA58(&v8);
  v3 = *(a2 + 144);
  if (v3)
  {
    *(a2 + 152) = v3;
    operator delete(v3);
  }

  if (*(a2 + 136) == 1)
  {
    v4 = *(a2 + 112);
    if (v4)
    {
      *(a2 + 120) = v4;
      operator delete(v4);
    }
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    *(a2 + 96) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 64);
  if (v6)
  {
    *(a2 + 72) = v6;
    operator delete(v6);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    *(a2 + 48) = v7;
    operator delete(v7);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_100583550(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 144);
  if (v3)
  {
    *(a2 + 152) = v3;
    operator delete(v3);
  }

  if (*(a2 + 136) == 1)
  {
    v4 = *(a2 + 112);
    if (v4)
    {
      *(a2 + 120) = v4;
      operator delete(v4);
    }
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    *(a2 + 96) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 64);
  if (v6)
  {
    *(a2 + 72) = v6;
    operator delete(v6);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    *(a2 + 48) = v7;
    operator delete(v7);
  }

  if (*(a2 + 23) < 0)
  {
    v8 = *a2;

    operator delete(v8);
  }
}

void sub_1005835F4(uint64_t a1, uint64_t a2)
{
  v8 = (a2 + 168);
  sub_10003CA58(&v8);
  v3 = *(a2 + 144);
  if (v3)
  {
    *(a2 + 152) = v3;
    operator delete(v3);
  }

  if (*(a2 + 136) == 1)
  {
    v4 = *(a2 + 112);
    if (v4)
    {
      *(a2 + 120) = v4;
      operator delete(v4);
    }
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    *(a2 + 96) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 64);
  if (v6)
  {
    *(a2 + 72) = v6;
    operator delete(v6);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    *(a2 + 48) = v7;
    operator delete(v7);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_100583698(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 144);
  if (v3)
  {
    *(a2 + 152) = v3;
    operator delete(v3);
  }

  if (*(a2 + 136) == 1)
  {
    v4 = *(a2 + 112);
    if (v4)
    {
      *(a2 + 120) = v4;
      operator delete(v4);
    }
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    *(a2 + 96) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 64);
  if (v6)
  {
    *(a2 + 72) = v6;
    operator delete(v6);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    *(a2 + 48) = v7;
    operator delete(v7);
  }

  if (*(a2 + 23) < 0)
  {
    v8 = *a2;

    operator delete(v8);
  }
}

void sub_10058373C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 144);
  if (v3)
  {
    *(a2 + 152) = v3;
    operator delete(v3);
  }

  if (*(a2 + 136) == 1)
  {
    v4 = *(a2 + 112);
    if (v4)
    {
      *(a2 + 120) = v4;
      operator delete(v4);
    }
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    *(a2 + 96) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 64);
  if (v6)
  {
    *(a2 + 72) = v6;
    operator delete(v6);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    *(a2 + 48) = v7;
    operator delete(v7);
  }

  if (*(a2 + 23) < 0)
  {
    v8 = *a2;

    operator delete(v8);
  }
}

void sub_1005837E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 144);
  if (v3)
  {
    *(a2 + 152) = v3;
    operator delete(v3);
  }

  if (*(a2 + 136) == 1)
  {
    v4 = *(a2 + 112);
    if (v4)
    {
      *(a2 + 120) = v4;
      operator delete(v4);
    }
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    *(a2 + 96) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 64);
  if (v6)
  {
    *(a2 + 72) = v6;
    operator delete(v6);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    *(a2 + 48) = v7;
    operator delete(v7);
  }

  if (*(a2 + 23) < 0)
  {
    v8 = *a2;

    operator delete(v8);
  }
}

void sub_100583884(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 176);
  if (v3)
  {
    *(a2 + 184) = v3;
    operator delete(v3);
  }

  if (*(a2 + 167) < 0)
  {
    operator delete(*(a2 + 144));
  }

  if (*(a2 + 136) == 1)
  {
    v4 = *(a2 + 112);
    if (v4)
    {
      *(a2 + 120) = v4;
      operator delete(v4);
    }
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    *(a2 + 96) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 64);
  if (v6)
  {
    *(a2 + 72) = v6;
    operator delete(v6);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    *(a2 + 48) = v7;
    operator delete(v7);
  }

  if (*(a2 + 23) < 0)
  {
    v8 = *a2;

    operator delete(v8);
  }
}

void sub_100583938(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 144);
  if (v3)
  {
    *(a2 + 152) = v3;
    operator delete(v3);
  }

  if (*(a2 + 136) == 1)
  {
    v4 = *(a2 + 112);
    if (v4)
    {
      *(a2 + 120) = v4;
      operator delete(v4);
    }
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    *(a2 + 96) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 64);
  if (v6)
  {
    *(a2 + 72) = v6;
    operator delete(v6);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    *(a2 + 48) = v7;
    operator delete(v7);
  }

  if (*(a2 + 23) < 0)
  {
    v8 = *a2;

    operator delete(v8);
  }
}

void sub_1005839DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 144);
  if (v3)
  {
    *(a2 + 152) = v3;
    operator delete(v3);
  }

  if (*(a2 + 136) == 1)
  {
    v4 = *(a2 + 112);
    if (v4)
    {
      *(a2 + 120) = v4;
      operator delete(v4);
    }
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    *(a2 + 96) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 64);
  if (v6)
  {
    *(a2 + 72) = v6;
    operator delete(v6);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    *(a2 + 48) = v7;
    operator delete(v7);
  }

  if (*(a2 + 23) < 0)
  {
    v8 = *a2;

    operator delete(v8);
  }
}

void sub_100583A80(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 144);
  if (v3)
  {
    *(a2 + 152) = v3;
    operator delete(v3);
  }

  if (*(a2 + 136) == 1)
  {
    v4 = *(a2 + 112);
    if (v4)
    {
      *(a2 + 120) = v4;
      operator delete(v4);
    }
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    *(a2 + 96) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 64);
  if (v6)
  {
    *(a2 + 72) = v6;
    operator delete(v6);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    *(a2 + 48) = v7;
    operator delete(v7);
  }

  if (*(a2 + 23) < 0)
  {
    v8 = *a2;

    operator delete(v8);
  }
}

void sub_100583B24(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 136) == 1)
  {
    v3 = *(a2 + 112);
    if (v3)
    {
      *(a2 + 120) = v3;
      operator delete(v3);
    }
  }

  v4 = *(a2 + 88);
  if (v4)
  {
    *(a2 + 96) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 64);
  if (v5)
  {
    *(a2 + 72) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 40);
  if (v6)
  {
    *(a2 + 48) = v6;
    operator delete(v6);
  }

  if (*(a2 + 23) < 0)
  {
    v7 = *a2;

    operator delete(v7);
  }
}

void sub_100583BB8(uint64_t a1, uint64_t a2)
{
  sub_100582310(a2 + 144);
  if (*(a2 + 136) == 1)
  {
    v3 = *(a2 + 112);
    if (v3)
    {
      *(a2 + 120) = v3;
      operator delete(v3);
    }
  }

  v4 = *(a2 + 88);
  if (v4)
  {
    *(a2 + 96) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 64);
  if (v5)
  {
    *(a2 + 72) = v5;
    operator delete(v5);
  }

  v6 = *(a2 + 40);
  if (v6)
  {
    *(a2 + 48) = v6;
    operator delete(v6);
  }

  if (*(a2 + 23) < 0)
  {
    v7 = *a2;

    operator delete(v7);
  }
}

uint64_t *sub_100583C54(char **a1, uint64_t a2)
{
  v3 = *a1;
  sub_100581E40(*a1, a2);
  v3[18] = 0;
  v3[19] = 0;
  v3[20] = 0;
  sub_100034C50(v3 + 18, *(a2 + 144), *(a2 + 152), *(a2 + 152) - *(a2 + 144));
  v3[21] = 0;
  v3[22] = 0;
  v3[23] = 0;
  return sub_100581F6C(v3 + 21, *(a2 + 168), *(a2 + 176), (*(a2 + 176) - *(a2 + 168)) >> 5);
}

void sub_100583CC0(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 152) = v4;
    operator delete(v4);
  }

  sub_100581DC0(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_100583CEC(char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_100581E40(*a1, a2);
  *(v3 + 19) = 0;
  *(v3 + 20) = 0;
  *(v4 + 18) = 0;
  return sub_100034C50(v4 + 18, *(a2 + 144), *(a2 + 152), *(a2 + 152) - *(a2 + 144));
}

uint64_t *sub_100583D40(char **a1, uint64_t a2)
{
  v3 = *a1;
  sub_100581E40(*a1, a2);
  v3[18] = 0;
  v3[19] = 0;
  v3[20] = 0;
  sub_100034C50(v3 + 18, *(a2 + 144), *(a2 + 152), *(a2 + 152) - *(a2 + 144));
  v3[21] = 0;
  v3[22] = 0;
  v3[23] = 0;
  return sub_100581F6C(v3 + 21, *(a2 + 168), *(a2 + 176), (*(a2 + 176) - *(a2 + 168)) >> 5);
}

void sub_100583DAC(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 152) = v4;
    operator delete(v4);
  }

  sub_100581DC0(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_100583DD8(char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_100581E40(*a1, a2);
  *(v3 + 19) = 0;
  *(v3 + 20) = 0;
  *(v4 + 18) = 0;
  return sub_100034C50(v4 + 18, *(a2 + 144), *(a2 + 152), *(a2 + 152) - *(a2 + 144));
}

uint64_t *sub_100583E2C(char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_100581E40(*a1, a2);
  *(v3 + 19) = 0;
  *(v3 + 20) = 0;
  *(v4 + 18) = 0;
  return sub_100034C50(v4 + 18, *(a2 + 144), *(a2 + 152), *(a2 + 152) - *(a2 + 144));
}

uint64_t *sub_100583E80(char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_100581E40(*a1, a2);
  *(v3 + 19) = 0;
  *(v3 + 20) = 0;
  *(v4 + 18) = 0;
  return sub_100034C50(v4 + 18, *(a2 + 144), *(a2 + 152), *(a2 + 152) - *(a2 + 144));
}

uint64_t *sub_100583ED4(char **a1, uint64_t a2)
{
  v3 = *a1;
  sub_100581E40(*a1, a2);
  if (*(a2 + 167) < 0)
  {
    sub_100005F2C(v3 + 144, *(a2 + 144), *(a2 + 152));
  }

  else
  {
    v4 = *(a2 + 144);
    *(v3 + 20) = *(a2 + 160);
    *(v3 + 9) = v4;
  }

  v5 = *(a2 + 168);
  *(v3 + 22) = 0;
  *(v3 + 21) = v5;
  *(v3 + 23) = 0;
  *(v3 + 24) = 0;
  return sub_100034C50(v3 + 22, *(a2 + 176), *(a2 + 184), *(a2 + 184) - *(a2 + 176));
}

uint64_t *sub_100583F74(char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_100581E40(*a1, a2);
  *(v3 + 19) = 0;
  *(v3 + 20) = 0;
  *(v4 + 18) = 0;
  return sub_100034C50(v4 + 18, *(a2 + 144), *(a2 + 152), *(a2 + 152) - *(a2 + 144));
}

uint64_t *sub_100583FC8(char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_100581E40(*a1, a2);
  *(v3 + 19) = 0;
  *(v3 + 20) = 0;
  *(v4 + 18) = 0;
  return sub_100034C50(v4 + 18, *(a2 + 144), *(a2 + 152), *(a2 + 152) - *(a2 + 144));
}

uint64_t *sub_10058401C(char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_100581E40(*a1, a2);
  *(v3 + 19) = 0;
  *(v3 + 20) = 0;
  *(v4 + 18) = 0;
  return sub_100034C50(v4 + 18, *(a2 + 144), *(a2 + 152), *(a2 + 152) - *(a2 + 144));
}

uint64_t sub_100584078(char **a1, __int128 *a2)
{
  v3 = *a1;
  sub_100581E40(*a1, a2);
  return sub_100582264((v3 + 144), (a2 + 9));
}

void sub_1005840C4(__int128 *a1@<X1>, void *a2@<X8>)
{
  sub_100581E40(&v3, a1);
  sub_10000501C(a2, "LazuliMLSFetchGroupRecoveryInfo");
  if (v13 == 1 && __p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  if (v4 < 0)
  {
    operator delete(v3);
  }
}

void sub_100584174(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    v4 = *(a1 + 16);
  }

  sub_10000501C(a2, "LazuliMLSFetchMember");
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1005841E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100584214(uint64_t a1@<X1>, void *a2@<X8>)
{
  __p = 0;
  v4 = 0;
  v5 = 0;
  sub_100034C50(&__p, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  sub_10000501C(a2, "LazuliMLSOutgoingEventResultSuccessAndStore");
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_100584278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100584304@<X0>(void *a1@<X8>, uint64_t a2@<X1>)
{
  sub_1005843BC(v4, a2);
  sub_10000501C(a1, "LazuliMLSFetchGroupRecoveryInfoResult");
  return sub_100584468(v4);
}

uint64_t sub_100584360@<X0>(void *a1@<X8>, uint64_t a2@<X1>)
{
  sub_1005844DC(v4, a2);
  sub_10000501C(a1, "LazuliMLSFetchMemberResult");
  return sub_100584588(v4);
}

void sub_1005843A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100584588(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005843BC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  sub_100584404(a1, a2);
  return a1;
}

uint64_t sub_100584404(uint64_t a1, uint64_t a2)
{
  result = sub_100584468(a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E61060[v5])(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

uint64_t sub_100584468(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_101E61048[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void sub_1005844C0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

uint64_t sub_1005844DC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = -1;
  sub_100584524(a1, a2);
  return a1;
}

uint64_t sub_100584524(uint64_t a1, uint64_t a2)
{
  result = sub_100584588(a1);
  v5 = *(a2 + 32);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E61090[v5])(&v6, a2);
    *(a1 + 32) = v5;
  }

  return result;
}

uint64_t sub_100584588(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 != -1)
  {
    result = (off_101E61078[v2])(&v3, result);
  }

  *(v1 + 32) = -1;
  return result;
}

void sub_1005845E0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

const char *sub_1005845FC(unsigned int a1)
{
  if (a1 > 6)
  {
    return "Unknown PolicyType";
  }

  else
  {
    return off_101E61560[a1];
  }
}

void *sub_100584620(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_100584688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_1005846AC(uint64_t a1, uint64_t *a2, NSObject **a3, const char *a4, int a5)
{
  PersonalitySpecificImpl::PersonalitySpecificImpl();
  ctu::OsLogContext::OsLogContext(&v13, kCtLoggingSystemName, a4);
  sub_100584620((a1 + 24), a3, &v13);
  ctu::OsLogContext::~OsLogContext(&v13);
  *a1 = off_101E610E0;
  v11 = *a2;
  v10 = a2[1];
  *(a1 + 64) = off_101E61188;
  *(a1 + 72) = v11;
  *(a1 + 80) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 88) = a5;
  *(a1 + 120) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = a1 + 264;
  *(a1 + 320) = 0;
  *(a1 + 312) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  return a1;
}

void sub_1005847F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  PersonalitySpecificImpl::~PersonalitySpecificImpl(v9);
  PersonalitySpecific::~PersonalitySpecific(v9);
  _Unwind_Resume(a1);
}

void sub_100584918(_Unwind_Exception *exception_object)
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

void sub_100584940(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 56)) = a2[5];
  *(a1 + 64) = a2[6];
  sub_100584B14(a1, 1);
  v4 = *(a1 + 320);
  *(a1 + 320) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_100009970(a1 + 256, *(a1 + 264));
  sub_10058BDE4((a1 + 208));
  sub_10058BDE4((a1 + 160));
  if (*(a1 + 152) == 1)
  {
    v5 = *(a1 + 128);
    if (v5)
    {
      *(a1 + 136) = v5;
      operator delete(v5);
    }
  }

  sub_10006DCAC(a1 + 104, *(a1 + 112));

  v6 = *(a1 + 80);
  if (v6)
  {
    sub_100004A34(v6);
  }

  DataConnectionAgentPolicyInterface::~DataConnectionAgentPolicyInterface((a1 + 64));
  ctu::OsLogLogger::~OsLogLogger((a1 + 56));
  sub_1000C0544((a1 + 24));

  PersonalitySpecificImpl::~PersonalitySpecificImpl(a1);
}

void sub_100584B14(uint64_t a1, char a2)
{
  if (*(a1 + 120) || *(a1 + 200) || *(a1 + 248) || *(a1 + 312))
  {
    v4 = (*(*a1 + 40))(a1);
    if (v4)
    {
      v31 = a2;
      while (*(a1 + 200))
      {
        v5 = *(*(a1 + 168) + 8 * (*(a1 + 192) / 0x66uLL)) + 40 * (*(a1 + 192) % 0x66uLL);
        v6 = [v4 removePolicyWithID:*v5];
        v7 = *(a1 + 56);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          sub_100585044(a1, __p);
          if (v33 >= 0)
          {
            v8 = __p;
          }

          else
          {
            v8 = __p[0];
          }

          v9 = (v5 + 8);
          if (*(v5 + 31) < 0)
          {
            v9 = *v9;
          }

          v10 = *v5;
          v11 = asStringBool(v6);
          *buf = 136315906;
          v35 = v8;
          v36 = 2080;
          v37 = v9;
          v38 = 2048;
          v39 = v10;
          v40 = 2080;
          v41 = v11;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I (unset) removed fTmpPolicies for NWAgent %s: key=%s, id=%lu, result is %s", buf, 0x2Au);
          if (v33 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_10058C0C8((a1 + 160));
      }

      while (*(a1 + 248))
      {
        v12 = *(*(a1 + 216) + 8 * (*(a1 + 240) / 0x66uLL)) + 40 * (*(a1 + 240) % 0x66uLL);
        v13 = [v4 removePolicyWithID:*v12];
        v14 = *(a1 + 56);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          sub_100585044(a1, __p);
          if (v33 >= 0)
          {
            v15 = __p;
          }

          else
          {
            v15 = __p[0];
          }

          v16 = (v12 + 8);
          if (*(v12 + 31) < 0)
          {
            v16 = *v16;
          }

          v17 = *v12;
          v18 = asStringBool(v13);
          *buf = 136315906;
          v35 = v15;
          v36 = 2080;
          v37 = v16;
          v38 = 2048;
          v39 = v17;
          v40 = 2080;
          v41 = v18;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I (unset) removed fTmpPoliciesLong for NWAgent %s: key=%s, id=%lu, result is %s", buf, 0x2Au);
          if (v33 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_10058C0C8((a1 + 208));
      }

      sub_100009970(a1 + 256, *(a1 + 264));
      *(a1 + 264) = 0;
      *(a1 + 272) = 0;
      *(a1 + 256) = a1 + 264;
      v19 = *(a1 + 104);
      v20 = (a1 + 112);
      if (v19 != (a1 + 112))
      {
        do
        {
          v21 = v19[4];
          v22 = [v4 removePolicyWithID:v21];
          v23 = *(a1 + 56);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            sub_100585044(a1, __p);
            v24 = v33;
            v25 = __p[0];
            v26 = asStringBool(v22);
            *buf = 136315650;
            v27 = __p;
            if (v24 < 0)
            {
              v27 = v25;
            }

            v35 = v27;
            v36 = 2048;
            v37 = v21;
            v38 = 2080;
            v39 = v26;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I removed fPolicies for NWAgent %s: %lu, result is %s", buf, 0x20u);
            if (v33 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v28 = v19[1];
          if (v28)
          {
            do
            {
              v29 = v28;
              v28 = *v28;
            }

            while (v28);
          }

          else
          {
            do
            {
              v29 = v19[2];
              v30 = *v29 == v19;
              v19 = v29;
            }

            while (!v30);
          }

          v19 = v29;
        }

        while (v29 != v20);
      }

      sub_10006DCAC(a1 + 104, *(a1 + 112));
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      *(a1 + 104) = v20;
      if (v31)
      {
        sub_100585D4C(a1, 0);
      }

      else
      {
        *(a1 + 312) = 0;
      }
    }
  }
}

void sub_100584F94(uint64_t a1)
{
  sub_100584940(a1, &off_101E611F8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_100584FC4(uint64_t a1)
{
  sub_100584940(a1 - 64, &off_101E611F8);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_100584FF8(uint64_t a1)
{
  sub_100584940(a1, &off_101E611F8);
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

void sub_100585044(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 296);
  if (v3)
  {
    v4 = [v3 UUIDString];
    sub_10000501C(a2, [v4 UTF8String]);
  }

  else
  {

    sub_10000501C(a2, "empty");
  }
}

void sub_1005850E8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 304);
  if (v3)
  {
    v4 = [v3 UUIDString];
    sub_10000501C(a2, [v4 UTF8String]);
  }

  else
  {

    sub_10000501C(a2, "empty");
  }
}

void sub_1005851AC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 296);
  if (v12)
  {
    v13 = v12 == v10;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    sub_100584B14(a1, 1);
  }

  if (v10)
  {
    v14 = *(a1 + 56);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v10 UUIDString];
      v19 = 136315138;
      v20 = [v15 UTF8String];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I set agent UUID %s", &v19, 0xCu);
    }
  }

  else
  {
    v16 = *(a1 + 296);
    if (v16)
    {
      v17 = *(a1 + 56);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v16 UUIDString];
        v19 = 136315138;
        v20 = [v18 UTF8String];
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I removed agent UUID %s", &v19, 0xCu);
      }
    }
  }

  objc_storeStrong((a1 + 296), a4);
  objc_storeStrong((a1 + 280), a2);
  objc_storeStrong((a1 + 288), a3);
  objc_autoreleasePoolPop(v11);
}

void sub_1005853B8(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 56);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 UUIDString];
    v8 = 136315138;
    v9 = [v7 UTF8String];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I set agent slice UUID %s", &v8, 0xCu);
  }

  objc_storeStrong((a1 + 304), a2);
  objc_autoreleasePoolPop(v5);
}

void sub_1005854DC(uint64_t a1)
{
  if (*(a1 + 312))
  {
    v2 = *(a1 + 56);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      sub_100585044(a1, __p);
      if (v5 >= 0)
      {
        v3 = __p;
      }

      else
      {
        v3 = __p[0];
      }

      *buf = 136315138;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Do not need policy for NWAgent %s", buf, 0xCu);
      if (v5 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_100584B14(a1, 1);
  }
}

void sub_1005855C4(PersonalitySpecificImpl *a1)
{
  if (*(a1 + 37))
  {
    if (*(a1 + 78) != 4)
    {
      v2 = (*(*a1 + 40))(a1);
      if (v2)
      {
        sub_100584B14(a1, 0);
        v38 = [CCNEPolicyResult scopedNetworkAgent:*(a1 + 37)];
        v3 = [NSUUID alloc];
        PersonalitySpecificImpl::simSlot(a1);
        subscriber::generateUuidStrFromSlotId();
        v4 = [v3 initWithUUIDString:*buf];
        sub_100005978(buf);
        v36 = v4;
        v5 = [v4 UUIDString];
        v39 = [CCNEPolicyCondition accountIdentifier:v5];

        v40 = [CCNEPolicyCondition requiredAgentDomain:*(a1 + 35) agentType:*(a1 + 36)];
        v6 = [CCNEPolicy alloc];
        v7 = +[CCNEPolicyCondition allInterfaces];
        v55[0] = v7;
        v55[1] = v39;
        v55[2] = v40;
        v8 = [NSArray arrayWithObjects:v55 count:3];
        v37 = [(CCNEPolicy *)v6 initWithOrder:1000001 result:v38 conditions:v8];

        v9 = [v2 addPolicy:v37];
        v42 = v9;
        v10 = *(a1 + 7);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          sub_100585044(a1, __p);
          if (v45 >= 0)
          {
            v11 = __p;
          }

          else
          {
            v11 = *__p;
          }

          v12 = [v36 UUIDString];
          v13 = v12;
          v14 = [v12 UTF8String];
          v15 = [*(a1 + 35) UTF8String];
          v16 = [*(a1 + 36) UTF8String];
          *buf = 136316162;
          *&buf[4] = v11;
          v47 = 2048;
          v48 = v42;
          v49 = 2080;
          v50 = v14;
          v51 = 2080;
          v52 = v15;
          v53 = 2080;
          v54 = v16;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Adding non-default non-Internet policy for NWAgent %s: id=%lu, account=%s, domain=%s, type=%s", buf, 0x34u);

          if (v45 < 0)
          {
            operator delete(*__p);
          }

          v9 = v42;
        }

        v17 = *(a1 + 7);
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (v9)
        {
          if (v18)
          {
            *buf = 67109120;
            *&buf[4] = v9;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Add fPolicies: %d", buf, 8u);
          }

          sub_1004C12FC(a1 + 104, &v42, &v42);
          v19 = [CCNEPolicyResult skipWithOrder:0];
          v20 = [CCNEPolicy alloc];
          v21 = +[CCNEPolicyCondition allInterfaces];
          v43[0] = v21;
          v43[1] = v39;
          v43[2] = v40;
          v22 = [NSArray arrayWithObjects:v43 count:3];
          v23 = [(CCNEPolicy *)v20 initWithOrder:1000002 result:v19 conditions:v22];

          v24 = [v2 addPolicy:v23];
          v41 = v24;
          v25 = *(a1 + 7);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            sub_100585044(a1, __p);
            v26 = v45 >= 0 ? __p : *__p;
            v27 = [v36 UUIDString];
            v28 = v27;
            v29 = [v27 UTF8String];
            v30 = [*(a1 + 35) UTF8String];
            v31 = [*(a1 + 36) UTF8String];
            *buf = 136316162;
            *&buf[4] = v26;
            v47 = 2048;
            v48 = v24;
            v49 = 2080;
            v50 = v29;
            v51 = 2080;
            v52 = v30;
            v53 = 2080;
            v54 = v31;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Adding non-default non-Internet SKIP policy for NWAgent %s: id=%lu, account=%s, domain=%s, type=%s", buf, 0x34u);

            if (v45 < 0)
            {
              operator delete(*__p);
            }
          }

          v32 = *(a1 + 7);
          v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
          if (v24)
          {
            if (v33)
            {
              *buf = 67109120;
              *&buf[4] = v24;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Add fPolicies: %d", buf, 8u);
            }

            sub_1004C12FC(a1 + 104, &v41, &v41);
            sub_100585D4C(a1, 4u);
          }

          else
          {
            if (v33)
            {
              sub_100585044(a1, buf);
              v35 = v49 >= 0 ? buf : *buf;
              *__p = 136315138;
              *&__p[4] = v35;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#E Adding other non-default skip policy for NWAgent %s: policy is invalid", __p, 0xCu);
              if (SHIBYTE(v49) < 0)
              {
                operator delete(*buf);
              }
            }

            sub_1005854DC(a1);
          }
        }

        else
        {
          if (v18)
          {
            sub_100585044(a1, buf);
            v34 = v49 >= 0 ? buf : *buf;
            *__p = 136315138;
            *&__p[4] = v34;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#E Adding other non-default policy for NWAgent %s: policy is invalid", __p, 0xCu);
            if (SHIBYTE(v49) < 0)
            {
              operator delete(*buf);
            }
          }

          sub_1005854DC(a1);
        }
      }
    }
  }

  else
  {

    sub_1005854DC(a1);
  }
}

uint64_t sub_100585D4C(uint64_t a1, unsigned int a2)
{
  v4 = (*(*a1 + 40))(a1);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 apply];
    v7 = *(a1 + 56);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    v8 = sub_1005845FC(a2);
    sub_100585044(a1, __p);
    v9 = v20;
    v10 = *__p;
    v11 = asStringBool(v6);
    v12 = __p;
    *buf = 136315650;
    if (v9 < 0)
    {
      v12 = v10;
    }

    *&buf[4] = v8;
    v22 = 2080;
    v23 = v12;
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Applied policy %s for NWAgent %s: result=%s", buf, 0x20u);
    if (v20 < 0)
    {
      operator delete(*__p);
      if (v6)
      {
        goto LABEL_23;
      }
    }

    else
    {
LABEL_6:
      if (v6)
      {
        goto LABEL_23;
      }
    }

    v13 = *(a1 + 56);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      sub_100585044(a1, buf);
      v14 = v24 >= 0 ? buf : *buf;
      *__p = 136315138;
      *&__p[4] = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#E error in policy appling for NWAgent %s, trying again...", __p, 0xCu);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(*buf);
      }
    }

    if (([v5 apply] & 1) == 0)
    {
      v15 = *(a1 + 56);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        sub_100585044(a1, buf);
        if (v24 >= 0)
        {
          v16 = buf;
        }

        else
        {
          v16 = *buf;
        }

        *__p = 136315138;
        *&__p[4] = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#E error in policy applying for NWAgent %s final", __p, 0xCu);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(*buf);
        }
      }

      v17 = 0;
      a2 = 6;
      goto LABEL_24;
    }

LABEL_23:
    v17 = 1;
LABEL_24:
    *(a1 + 312) = a2;
    goto LABEL_25;
  }

  v17 = 0;
LABEL_25:

  return v17;
}

uint64_t sub_100585FFC(uint64_t a1)
{
  if (!*(a1 + 296))
  {
    return 0;
  }

  v2 = (*(*a1 + 40))(a1);
  if (v2 && *(a1 + 152) == 1)
  {
    v3 = *(a1 + 128);
    v4 = *(a1 + 136);
    while (v3 != v4)
    {
      [v2 removePolicyWithID:*v3++];
    }

    __p.n128_u8[0] = 0;
    v8 = 0;
    sub_1004EDCD0(a1 + 128, &__p);
    if (v8 == 1 && __p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1005860F0(uint64_t a1, BOOL a2, void *a3)
{
  if (*(a1 + 296))
  {
    v52 = (*(*a1 + 40))(a1);
    if (v52)
    {
      v51 = a3;
      v6 = *a3;
      v54 = a3 + 1;
      if (*a3 != a3 + 1)
      {
        do
        {
          v7 = *(a1 + 56);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            sub_100585044(a1, __p);
            v8 = v58;
            v9 = *__p;
            v10 = asStringBool(a2);
            v11 = v6 + 4;
            if (v8 >= 0)
            {
              v12 = __p;
            }

            else
            {
              v12 = v9;
            }

            if (*(v6 + 55) < 0)
            {
              v11 = *v11;
            }

            *buf = 136315650;
            *&buf[4] = v12;
            *&buf[12] = 2080;
            *&buf[14] = v10;
            *&buf[22] = 2080;
            v60 = v11;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I ThirdParty protection for NWAgent %s: active=%s, interface=%s", buf, 0x20u);
            if (v58 < 0)
            {
              operator delete(*__p);
            }
          }

          v13 = v6[1];
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
              v14 = v6[2];
              v15 = *v14 == v6;
              v6 = v14;
            }

            while (!v15);
          }

          v6 = v14;
        }

        while (v14 != v54);
      }

      v16 = sub_100585FFC(a1);
      if (v51[2] && a2)
      {
        memset(buf, 0, sizeof(buf));
        sub_1001E9734(a1 + 128, buf);
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }

        v18 = *v51;
        if (*v51 != v54)
        {
          *&v17 = 136315138;
          v50 = v17;
          while (1)
          {
            v19 = +[CCNEPolicyResult drop];
            v20 = v18 + 4;
            if (*(v18 + 55) < 0)
            {
              v20 = *v20;
            }

            v21 = [NSString stringWithUTF8String:v20];
            v22 = [CCNEPolicyCondition scopedInterface:v21];

            v53 = +[CCNEPolicyCondition platformBinary];
            [v53 setNegative:1];
            v23 = [CCNEPolicyCondition ipProtocol:58];
            [v23 setNegative:1];
            v24 = objc_alloc_init(NSMutableArray);
            [v24 addObject:v22];
            [v24 addObject:v53];
            [v24 addObject:v23];
            v25 = [[CCNEPolicy alloc] initWithOrder:990000 result:v19 conditions:v24];
            v26 = [v52 addPolicy:v25];
            v27 = *(a1 + 56);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              sub_100585044(a1, buf);
              v28 = buf;
              if (buf[23] < 0)
              {
                v28 = *buf;
              }

              *__p = 136315394;
              *&__p[4] = v28;
              v56 = 2048;
              v57 = v26;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Adding ThirdParty protection DROP policy for NWAgent %s: id=%lu", __p, 0x16u);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }

            v29 = *(a1 + 56);
            v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
            if (v26)
            {
              if (v30)
              {
                *buf = 67109120;
                *&buf[4] = v26;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Add fPolicies: %d", buf, 8u);
              }

              v31 = v19;
              if ((*(a1 + 152) & 1) == 0)
              {
                sub_1000D1644();
              }

              v33 = *(a1 + 136);
              v32 = *(a1 + 144);
              if (v33 >= v32)
              {
                v36 = *(a1 + 128);
                v37 = v33 - v36;
                v38 = (v33 - v36) >> 3;
                v39 = v38 + 1;
                if ((v38 + 1) >> 61)
                {
                  sub_1000CE3D4();
                }

                v40 = v32 - v36;
                if (v40 >> 2 > v39)
                {
                  v39 = v40 >> 2;
                }

                v41 = v40 >= 0x7FFFFFFFFFFFFFF8;
                v42 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v41)
                {
                  v42 = v39;
                }

                if (v42)
                {
                  sub_10006A8B4(a1 + 128, v42);
                }

                v43 = (v33 - v36) >> 3;
                v44 = (8 * v38);
                v45 = (8 * v38 - 8 * v43);
                *v44 = v26;
                v34 = v44 + 1;
                memcpy(v45, v36, v37);
                v46 = *(a1 + 128);
                *(a1 + 128) = v45;
                *(a1 + 136) = v34;
                *(a1 + 144) = 0;
                if (v46)
                {
                  operator delete(v46);
                }
              }

              else
              {
                *v33 = v26;
                v34 = v33 + 8;
              }

              *(a1 + 136) = v34;
              v19 = v31;
            }

            else if (v30)
            {
              sub_100585044(a1, buf);
              v35 = buf;
              if (buf[23] < 0)
              {
                v35 = *buf;
              }

              *__p = v50;
              *&__p[4] = v35;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#E Adding ThirdParty protection drop policy for NWAgent %s: policy is invalid", __p, 0xCu);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }

            if (!v26)
            {
              goto LABEL_64;
            }

            v47 = v18[1];
            if (v47)
            {
              do
              {
                v48 = v47;
                v47 = *v47;
              }

              while (v47);
            }

            else
            {
              do
              {
                v48 = v18[2];
                v15 = *v48 == v18;
                v18 = v48;
              }

              while (!v15);
            }

            v18 = v48;
            if (v48 == v54)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_63;
      }

      if (v16)
      {
        v49 = *(a1 + 56);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I ThirdParty protection for NWAgent: clean applied", buf, 2u);
        }

LABEL_63:
        sub_100585D4C(a1, *(a1 + 312));
      }
    }

LABEL_64:
  }
}

void sub_1005867B4(uint64_t a1)
{
  if (*(a1 + 296))
  {
    if (*(a1 + 312) == 5)
    {
      return;
    }

    v2 = (*(*a1 + 40))(a1);
    if (!v2)
    {
      goto LABEL_77;
    }

    sub_100584B14(a1, 0);
    v57 = [CCNEPolicyResult scopedNetworkAgent:*(a1 + 296)];
    v3 = [CCNEPolicyCondition requiredAgentDomain:*(a1 + 280) agentType:*(a1 + 288)];
    v4 = [CCNEPolicy alloc];
    v5 = +[CCNEPolicyCondition allInterfaces];
    v74[0] = v5;
    v74[1] = v3;
    v6 = [NSArray arrayWithObjects:v74 count:2];
    v7 = [(CCNEPolicy *)v4 initWithOrder:1000003 result:v57 conditions:v6];

    v8 = [v2 addPolicy:v7];
    v61 = v8;
    v9 = *(a1 + 56);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      sub_100585044(a1, __p);
      if (v66 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = *__p;
      }

      v11 = [*(a1 + 280) UTF8String];
      v12 = [*(a1 + 288) UTF8String];
      *buf = 136315906;
      *&buf[4] = v10;
      v68 = 2048;
      v69 = v61;
      v70 = 2080;
      v71 = v11;
      v72 = 2080;
      v73 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Adding default non-Internet policy for NWAgent %s: id=%lu, domain=%s, type=%s", buf, 0x2Au);
      if (v66 < 0)
      {
        operator delete(*__p);
      }

      v8 = v61;
    }

    v13 = *(a1 + 56);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (!v8)
    {
      if (v14)
      {
        sub_100585044(a1, buf);
        v48 = v70 >= 0 ? buf : *buf;
        *__p = 136315138;
        *&__p[4] = v48;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#E Adding other default policy for NWAgent %s: policy is invalid", __p, 0xCu);
        if (SHIBYTE(v70) < 0)
        {
          operator delete(*buf);
        }
      }

      sub_1005854DC(a1);
      goto LABEL_76;
    }

    if (v14)
    {
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Add fPolicies: %d", buf, 8u);
    }

    sub_1004C12FC(a1 + 104, &v61, &v61);
    v56 = [CCNEPolicyResult skipWithOrder:0];
    v15 = [CCNEPolicy alloc];
    v16 = +[CCNEPolicyCondition allInterfaces];
    v64[0] = v16;
    v64[1] = v3;
    v17 = [NSArray arrayWithObjects:v64 count:2];
    v18 = [(CCNEPolicy *)v15 initWithOrder:1000004 result:v56 conditions:v17];

    v19 = [v2 addPolicy:v18];
    v60 = v19;
    v20 = *(a1 + 56);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = __p;
      sub_100585044(a1, __p);
      if (v66 < 0)
      {
        v21 = *__p;
      }

      v22 = [*(a1 + 280) UTF8String];
      v23 = [*(a1 + 288) UTF8String];
      *buf = 136315906;
      *&buf[4] = v21;
      v68 = 2048;
      v69 = v60;
      v70 = 2080;
      v71 = v22;
      v72 = 2080;
      v73 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Adding default non-Internet SKIP policy for NWAgent %s: id=%lu, domain=%s, type=%s", buf, 0x2Au);
      if (v66 < 0)
      {
        operator delete(*__p);
      }

      v19 = v60;
    }

    v24 = *(a1 + 56);
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (!v19)
    {
      if (v25)
      {
        sub_100585044(a1, buf);
        v49 = v70 >= 0 ? buf : *buf;
        *__p = 136315138;
        *&__p[4] = v49;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#E Adding other default skip policy for NWAgent %s: policy is invalid", __p, 0xCu);
        if (SHIBYTE(v70) < 0)
        {
          operator delete(*buf);
        }
      }

      sub_1005854DC(a1);
      goto LABEL_75;
    }

    if (v25)
    {
      *buf = 67109120;
      *&buf[4] = v19;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Add fPolicies: %d", buf, 8u);
    }

    sub_1004C12FC(a1 + 104, &v60, &v60);
    if (*(a1 + 88) != 4)
    {
      goto LABEL_74;
    }

    v54 = [CCNEPolicyResult scopedNetworkAgent:*(a1 + 296)];
    v55 = [CCNEPolicyCondition accountIdentifier:kTerminusTetheringProxyFallbackAccount];
    v26 = [CCNEPolicy alloc];
    v27 = +[CCNEPolicyCondition allInterfaces];
    v63[0] = v27;
    v63[1] = v55;
    v28 = [NSArray arrayWithObjects:v63 count:2];
    v53 = [(CCNEPolicy *)v26 initWithOrder:1000003 result:v54 conditions:v28];

    v29 = [v2 addPolicy:v53];
    v59 = v29;
    v30 = *(a1 + 56);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = __p;
      sub_100585044(a1, __p);
      if (v66 < 0)
      {
        v31 = *__p;
      }

      v32 = [*(a1 + 280) UTF8String];
      v33 = [*(a1 + 288) UTF8String];
      *buf = 136315906;
      *&buf[4] = v31;
      v68 = 2048;
      v69 = v59;
      v70 = 2080;
      v71 = v32;
      v72 = 2080;
      v73 = v33;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Adding default Tethering policy for NWAgent %s: id=%lu, domain=%s, type=%s", buf, 0x2Au);
      if (v66 < 0)
      {
        operator delete(*__p);
      }

      v29 = v59;
    }

    v34 = *(a1 + 56);
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    if (!v29)
    {
      if (v35)
      {
        sub_100585044(a1, buf);
        v50 = v70 >= 0 ? buf : *buf;
        *__p = 136315138;
        *&__p[4] = v50;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#E Adding other default Tethering policy for NWAgent %s: policy is invalid", __p, 0xCu);
        if (SHIBYTE(v70) < 0)
        {
          operator delete(*buf);
        }
      }

      sub_1005854DC(a1);

      goto LABEL_75;
    }

    if (v35)
    {
      *buf = 67109120;
      *&buf[4] = v29;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I Add fPolicies: %d", buf, 8u);
    }

    sub_1004C12FC(a1 + 104, &v59, &v59);
    v36 = [CCNEPolicyResult skipWithOrder:0];
    v37 = [CCNEPolicy alloc];
    v38 = +[CCNEPolicyCondition allInterfaces];
    v62[0] = v38;
    v62[1] = v55;
    v39 = [NSArray arrayWithObjects:v62 count:2];
    v40 = [(CCNEPolicy *)v37 initWithOrder:1000004 result:v36 conditions:v39];

    v52 = v40;
    v41 = [v2 addPolicy:v40];
    v58 = v41;
    v42 = *(a1 + 56);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = __p;
      sub_100585044(a1, __p);
      if (v66 < 0)
      {
        v43 = *__p;
      }

      v44 = [*(a1 + 280) UTF8String];
      v45 = [*(a1 + 288) UTF8String];
      *buf = 136315906;
      *&buf[4] = v43;
      v68 = 2048;
      v69 = v41;
      v70 = 2080;
      v71 = v44;
      v72 = 2080;
      v73 = v45;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I Adding default non-Internet Tethering SKIP policy for NWAgent %s: id=%lu, domain=%s, type=%s", buf, 0x2Au);
      if (v66 < 0)
      {
        operator delete(*__p);
      }
    }

    v46 = *(a1 + 56);
    v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
    if (v41)
    {
      if (v47)
      {
        *buf = 67109120;
        *&buf[4] = v41;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I Add fPolicies: %d", buf, 8u);
      }

      sub_1004C12FC(a1 + 104, &v58, &v58);
    }

    else
    {
      if (v47)
      {
        sub_100585044(a1, buf);
        v51 = v70 >= 0 ? buf : *buf;
        *__p = 136315138;
        *&__p[4] = v51;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#E Adding other default tethering skip policy for NWAgent %s: policy is invalid", __p, 0xCu);
        if (SHIBYTE(v70) < 0)
        {
          operator delete(*buf);
        }
      }

      sub_1005854DC(a1);
    }

    if (v41)
    {
LABEL_74:
      sub_100585D4C(a1, 5u);
    }

LABEL_75:

LABEL_76:
LABEL_77:

    return;
  }

  sub_1005854DC(a1);
}

void sub_100587378(uint64_t a1, int a2, char a3, _BOOL4 a4)
{
  if (a2 || (a3 & 1) == 0)
  {

    sub_1005854DC(a1);
  }

  else if (*(a1 + 312) != 1)
  {
    v6 = (*(*a1 + 40))(a1);
    if (v6)
    {
      v7 = *(a1 + 56);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        sub_100585044(a1, __p);
        v8 = v31 >= 0 ? __p : *__p;
        v9 = asStringBool(0);
        v10 = asStringBool(1);
        v11 = asStringBool(a4);
        *buf = 136315906;
        *&buf[4] = v8;
        v33 = 2080;
        v34 = v9;
        v35 = 2080;
        v36 = v10;
        v37 = 2080;
        v38 = v11;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Creating inactive Internet policy for NWAgent %s (active %s forDefaultSimSlot %s saveDataMode %s)", buf, 0x2Au);
        if (v31 < 0)
        {
          operator delete(*__p);
        }
      }

      v12 = [CCNEPolicyResult netAgentUUID:*(a1 + 296)];
      if (a4)
      {
        v13 = +[CCNEPolicyCondition clientProhibitsConstrained];
        [v13 setNegative:1];
        v27 = v13;
        v14 = [NSArray arrayWithObjects:&v27 count:1];
      }

      else
      {
        v14 = &__NSArray0__struct;
      }

      v15 = [[CCNEPolicy alloc] initWithOrder:0 result:v12 conditions:v14];
      if (v15)
      {
        sub_100584B14(a1, 0);
        v16 = *(a1 + 56);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          sub_100585044(a1, buf);
          v17 = v35 >= 0 ? buf : *buf;
          *__p = 136315138;
          *&__p[4] = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Created inactive Internet policy for NWAgent %s", __p, 0xCu);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(*buf);
          }
        }

        v18 = [v6 addPolicy:v15];
        v26 = v18;
        v19 = *(a1 + 56);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          sub_100585044(a1, buf);
          v20 = v35 >= 0 ? buf : *buf;
          *__p = 136315394;
          *&__p[4] = v20;
          v29 = 2048;
          v30 = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Adding non-active Internet policy for NWAgent %s: id=%lu", __p, 0x16u);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(*buf);
          }
        }

        v21 = *(a1 + 56);
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        if (v18)
        {
          if (v22)
          {
            *buf = 67109120;
            *&buf[4] = v18;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Add fPolicies: %d", buf, 8u);
          }

          sub_1004C12FC(a1 + 104, &v26, &v26);
          sub_100585D4C(a1, 1u);
        }

        else
        {
          if (v22)
          {
            sub_100585044(a1, buf);
            v25 = v35 >= 0 ? buf : *buf;
            *__p = 136315138;
            *&__p[4] = v25;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#E Adding inactive Internet policy for NWAgent %s: policy is invalid", __p, 0xCu);
            if (SHIBYTE(v35) < 0)
            {
              operator delete(*buf);
            }
          }

          sub_1005854DC(a1);
        }
      }

      else
      {
        v23 = *(a1 + 56);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          sub_100585044(a1, buf);
          v24 = v35 >= 0 ? buf : *buf;
          *__p = 136315138;
          *&__p[4] = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#E Creating inactive Internet policy for NWAgent %s: policy is null", __p, 0xCu);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(*buf);
          }
        }
      }
    }
  }
}

void sub_1005878BC(uint64_t a1, uint64_t a2, char a3, _BOOL4 a4, TrafficDescriptor **a5, uint64_t a6, uint64_t a7)
{
  v11 = *a5;
  v12 = a5[1];
  if (*a5 == v12)
  {
LABEL_5:

    sub_100587378(a1, a2, a3, a4);
  }

  else
  {
    v13 = a7;
    while ((TrafficDescriptor::empty(v11) & 1) != 0)
    {
      v11 = (v11 + 304);
      if (v11 == v12)
      {
        goto LABEL_5;
      }
    }

    sub_100587988(a1, a2, a5, 0, v13);
  }
}

void sub_100587988(uint64_t a1, uint64_t a2, TrafficDescriptor **a3, uint64_t a4, int a5)
{
  if (*(a1 + 312) != 2)
  {
    v7 = a2;
    v9 = (*(*a1 + 40))(a1, a2, a3, a4);
    if (!v9)
    {
LABEL_45:

      return;
    }

    sub_100584B14(a1, 0);
    v10 = *a3;
    v11 = a3[1];
    if (v10 != v11)
    {
      if (!a5)
      {
        a5 = 3;
      }

      do
      {
        if ((TrafficDescriptor::empty(v10) & 1) == 0)
        {
          if ((a5 & 2) == 0)
          {
            if ((a5 & 1) == 0)
            {
              goto LABEL_12;
            }

LABEL_11:
            sub_100587DB4(a1, v10, 1u);
            goto LABEL_12;
          }

          if (a5 & sub_100587DB4(a1, v10, 2u))
          {
            goto LABEL_11;
          }
        }

LABEL_12:
        v10 = (v10 + 304);
      }

      while (v10 != v11);
    }

    if ((v7 & 1) == 0)
    {
      v12 = *(a1 + 56);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        sub_1005850E8(a1, __p);
        v13 = v28 >= 0 ? __p : __p[0];
        *buf = 136315138;
        v24 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Creating rest Internet policy for NWAgent %s", buf, 0xCu);
        if (v28 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v14 = [CCNEPolicyResult netAgentUUID:*(a1 + 296)];
      v15 = [[CCNEPolicy alloc] initWithOrder:1000000 result:v14 conditions:&__NSArray0__struct];
      if (v15)
      {

        v16 = *(a1 + 56);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          sub_100585044(a1, __p);
          v17 = v28 >= 0 ? __p : __p[0];
          *buf = 136315138;
          v24 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Created rest Internet policy for NWAgent %s", buf, 0xCu);
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v18 = [v9 addPolicy:v15];
        v22 = v18;
        v19 = *(a1 + 56);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          sub_1005850E8(a1, __p);
          v20 = v28 >= 0 ? __p : __p[0];
          *buf = 136315394;
          v24 = v20;
          v25 = 2048;
          v26 = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Adding rest Internet policy for NWAgent %s: id=%lu", buf, 0x16u);
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v21 = *(a1 + 56);
        if (v18)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(__p[0]) = 67109120;
            HIDWORD(__p[0]) = v18;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Add fPolicies: %d", __p, 8u);
          }

          sub_1004C12FC(a1 + 104, &v22, &v22);

          goto LABEL_37;
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1005850E8(a1, __p);
          sub_101774A04();
        }

        sub_1005854DC(a1);
      }

      else
      {
        if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_ERROR))
        {
          sub_1005850E8(a1, __p);
          sub_101774A58();
        }

        sub_1005854DC(a1);
        v15 = v14;
      }

      goto LABEL_45;
    }

LABEL_37:
    sub_100585D4C(a1, 2u);
    goto LABEL_45;
  }
}

uint64_t sub_100587DB4(uint64_t a1, TrafficDescriptor *this, unsigned int a3)
{
  if (*(this + 40) != 1 || (TrafficDescriptor::hasAccountInfo(this) & 1) != 0)
  {
LABEL_3:
    v22 = 0u;
    __p[0] = a3;
    v21 = 0uLL;
    __p[1] = 0;
    LODWORD(v22) = 100 * *this + 100;
    BYTE8(v22) = 1;
    BYTE10(v22) = 0;
    v6 = sub_100588008(a1, this, __p, *(a1 + 304), v23);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[1]);
    }

    return v6;
  }

  if (*(this + 72) == 1)
  {
    v7 = this + 48;
    v8 = *(this + 71);
    if (v8 < 0)
    {
      if (*(this + 7) != 18)
      {
        goto LABEL_18;
      }

      v7 = *v7;
    }

    else if (v8 != 18)
    {
      goto LABEL_18;
    }

    v9 = *v7;
    v10 = *(v7 + 1);
    v11 = *(v7 + 8);
    if (v9 == 0x6C7070612E6D6F63 && v10 == 0x6974656361662E65 && v11 == 25965)
    {
      goto LABEL_3;
    }
  }

LABEL_18:
  v14 = *(a1 + 56);
  v6 = 0;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    sub_100585044(a1, __p);
    v15 = SBYTE7(v21);
    v16 = __p[0];
    TrafficDescriptor::toString(v23, this);
    v17 = __p;
    if (v15 < 0)
    {
      v17 = v16;
    }

    if (v24 >= 0)
    {
      v18 = v23;
    }

    else
    {
      v18 = v23[0];
    }

    *buf = 136315394;
    v26 = v17;
    v27 = 2080;
    v28 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Ignore slice Internet policy for NWAgent %s td %s", buf, 0x16u);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    if (SBYTE7(v21) < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return v6;
}

void sub_100587FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100588008(os_log_t *a1, uint64_t a2, unsigned __int8 *a3, void *a4, _BYTE *a5)
{
  v211 = a4;
  v205 = a5;
  *a5 = 0;
  v214 = a2;
  if (*(a2 + 72) != 1)
  {
    goto LABEL_14;
  }

  v9 = (a2 + 48);
  v10 = *(a2 + 71);
  if (v10 < 0)
  {
    if (*(a2 + 56) != 18)
    {
LABEL_14:
      v16 = 0;
      goto LABEL_15;
    }

    v9 = *v9;
  }

  else if (v10 != 18)
  {
    goto LABEL_14;
  }

  v11 = *v9;
  v12 = v9[1];
  v13 = *(v9 + 8);
  if (v11 != 0x6C7070612E6D6F63 || v12 != 0x6974656361662E65 || v13 != 25965)
  {
    goto LABEL_14;
  }

  ServiceMap = Registry::getServiceMap(a1[9]);
  v44 = ServiceMap;
  if (v45 < 0)
  {
    v46 = (v45 & 0x7FFFFFFFFFFFFFFFLL);
    v47 = 5381;
    do
    {
      v45 = v47;
      v48 = *v46++;
      v47 = (33 * v47) ^ v48;
    }

    while (v48);
  }

  std::mutex::lock(ServiceMap);
  buf[0].__locale_ = v45;
  v49 = sub_100009510(&v44[1].__m_.__sig, buf);
  if (!v49)
  {
    v51 = 0;
LABEL_244:
    std::mutex::unlock(v44);
    v50 = 0;
    v52 = 1;
    if (!v51)
    {
      goto LABEL_247;
    }

    goto LABEL_245;
  }

  v51 = v49[3];
  v50 = v49[4];
  if (!v50)
  {
    goto LABEL_244;
  }

  atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v44);
  atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v50);
  v52 = 0;
  if (!v51)
  {
    goto LABEL_247;
  }

LABEL_245:
  v137 = (*(*v51 + 904))(v51);
  if (v137 && ((*(*v137 + 48))(v137) & 1) == 0)
  {
    v163 = a1[7];
    v138 = 0;
    if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0].__locale_) = 0;
      _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEFAULT, "#N IDS/SlicedCellularInterface feature not enabled, do not allow Facetime slicing", buf, 2u);
      v138 = 0;
    }

    goto LABEL_248;
  }

LABEL_247:
  v138 = 1;
LABEL_248:
  if (v52)
  {
    if (!v138)
    {
      goto LABEL_443;
    }
  }

  else
  {
    sub_100004A34(v50);
    if (!v138)
    {
LABEL_443:
      v40 = 0;
      goto LABEL_444;
    }
  }

  v16 = 1;
LABEL_15:
  if (!*(a1 + 22) && a3[42] == 1 && !a1[40])
  {
    *&v217.__r_.__value_.__l.__data_ = 0uLL;
    Registry::getTimerService(&v217, a1[9]);
    if (v217.__r_.__value_.__r.__words[0])
    {
      v17 = a1[7];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0].__locale_) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Internet agent timer: to be created...", buf, 2u);
      }

      memset(buf, 0, 32);
      sub_100004AA0(v218, a1 + 3);
      v18 = v219;
      if (v219)
      {
        atomic_fetch_add_explicit(&v219->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v18);
      }

      buf[3].__locale_ = 0;
      operator new();
    }

    if (v217.__r_.__value_.__l.__size_)
    {
      sub_100004A34(v217.__r_.__value_.__l.__size_);
    }
  }

  v209 = a3[40];
  v206 = a3[41];
  v212 = a3;
  if (*(v214 + 232) != 1 || (*(v214 + 8) & 1) != 0 || (*(v214 + 40) & 1) != 0)
  {
    v207 = 0;
  }

  else
  {
    v207 = TrafficDescriptor::hasAccountInfo(v214) ^ 1;
  }

  context = objc_autoreleasePoolPush();
  v210 = ((*a1)[5].isa)(a1);
  v19 = a3;
  if (!v210)
  {
    v39 = 0;
    v40 = 0;
    goto LABEL_441;
  }

  *v218 = 0;
  v219 = 0;
  v220 = 0;
  TrafficDescriptor::toKey(v218, v214);
  v20 = a1[7];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    sub_100585044(a1, &v217);
    v21 = SHIBYTE(v217.__r_.__value_.__r.__words[2]);
    v22 = v217.__r_.__value_.__r.__words[0];
    v23 = SHIBYTE(v220);
    v24 = *v218;
    v26 = a3 + 8;
    v25 = *(a3 + 1);
    v27 = v212[31];
    v28 = asStringBool(v212[42]);
    if (v27 >= 0)
    {
      v29 = v26;
    }

    else
    {
      v29 = v25;
    }

    LODWORD(buf[0].__locale_) = 136315906;
    v30 = v218;
    if (v23 < 0)
    {
      v30 = v24;
    }

    v31 = &v217;
    if (v21 < 0)
    {
      v31 = v22;
    }

    *(&buf[0].__locale_ + 4) = v31;
    WORD2(buf[1].__locale_) = 2080;
    *(&buf[1].__locale_ + 6) = v30;
    HIWORD(buf[2].__locale_) = 2080;
    buf[3].__locale_ = v29;
    LOWORD(buf[4].__locale_) = 2080;
    *(&buf[4].__locale_ + 2) = v28;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Preparing slice Internet policy for NWAgent %s td %s interface <%s> (temp %s)", buf, 0x2Au);
    if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v217.__r_.__value_.__l.__data_);
    }

    v19 = v212;
  }

  memset(&v217, 0, sizeof(v217));
  memset(&v216, 0, sizeof(v216));
  memset(&v215, 0, sizeof(v215));
  if (v19[42] == 1)
  {
    v240 = 0;
    v238 = 0u;
    v239 = 0u;
    v236 = 0u;
    v237 = 0u;
    v234 = 0u;
    v235 = 0u;
    v232 = 0u;
    v233 = 0u;
    v230 = 0u;
    v231 = 0u;
    *v228 = 0u;
    v229 = 0u;
    *__src = 0u;
    memset(buf, 0, sizeof(buf));
    sub_10000D518(buf);
    if (v220 >= 0)
    {
      v32 = v218;
    }

    else
    {
      v32 = *v218;
    }

    if (v220 >= 0)
    {
      v33 = HIBYTE(v220);
    }

    else
    {
      v33 = v219;
    }

    v34 = sub_10000C030(buf, v32, v33);
    __dst.__r_.__value_.__s.__data_[0] = 124;
    v35 = sub_10000C030(v34, &__dst, 1);
    std::to_string(&__dst, *v19);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    sub_10000C030(v35, p_dst, size);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if ((BYTE8(v230) & 0x10) != 0)
    {
      v41 = v230;
      if (v230 < __src[1])
      {
        *&v230 = __src[1];
        v41 = __src[1];
      }

      locale = __src[0];
    }

    else
    {
      if ((BYTE8(v230) & 8) == 0)
      {
        v38 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
        goto LABEL_79;
      }

      locale = buf[3].__locale_;
      v41 = buf[5].__locale_;
    }

    v38 = v41 - locale;
    if ((v41 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    if (v38 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v41 - locale;
    if (v38)
    {
      memmove(&__dst, locale, v38);
    }

LABEL_79:
    __dst.__r_.__value_.__s.__data_[v38] = 0;
    if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v217.__r_.__value_.__l.__data_);
    }

    v217 = __dst;
    if (v19[40] == 1 && a1 + 33 != sub_100007A6C((a1 + 32), &v217))
    {
      v53 = a1[7];
      v209 = 0;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = &v217;
        if ((v217.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v54 = v217.__r_.__value_.__r.__words[0];
        }

        v55 = v218;
        if (v220 < 0)
        {
          v55 = *v218;
        }

        LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
        *(__dst.__r_.__value_.__r.__words + 4) = v54;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v55;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I key = %s already present (td = %s)", &__dst, 0x16u);
        v209 = 0;
      }
    }

    if (v19[41] == 1)
    {
      std::operator+<char>();
      if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v216.__r_.__value_.__l.__data_);
      }

      v216 = __dst;
      if (a1 + 33 != sub_100007A6C((a1 + 32), &v216))
      {
        v56 = a1[7];
        v206 = 0;
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v57 = &v216;
          if ((v216.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v57 = v216.__r_.__value_.__r.__words[0];
          }

          v58 = v218;
          if (v220 < 0)
          {
            v58 = *v218;
          }

          LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
          *(__dst.__r_.__value_.__r.__words + 4) = v57;
          WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
          *(&__dst.__r_.__value_.__r.__words[1] + 6) = v58;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I key = %s already present (td = %s)", &__dst, 0x16u);
          v206 = 0;
        }
      }
    }

    if (v207)
    {
      std::operator+<char>();
      if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v215.__r_.__value_.__l.__data_);
      }

      v215 = __dst;
      v59 = sub_100007A6C((a1 + 32), &v215);
      v60 = a1[7];
      if (a1 + 33 == v59)
      {
        v207 = 1;
LABEL_117:
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          sub_100585044(a1, &__dst);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v63 = &__dst;
          }

          else
          {
            v63 = __dst.__r_.__value_.__r.__words[0];
          }

          v64 = &v217;
          if ((v217.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v64 = v217.__r_.__value_.__r.__words[0];
          }

          *v221 = 136315394;
          *&v221[4] = v63;
          v222 = 2080;
          v223 = v64;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I Creating Internet specific policy for NWAgent %s: key is new: %s", v221, 0x16u);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }
        }

        if (SHIBYTE(v229) < 0)
        {
          operator delete(v228[1]);
        }

        std::locale::~locale(&buf[2]);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_128;
      }

      if (os_log_type_enabled(a1[7], OS_LOG_TYPE_DEFAULT))
      {
        v61 = &v215;
        if ((v215.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v61 = v215.__r_.__value_.__r.__words[0];
        }

        v62 = v218;
        if (v220 < 0)
        {
          v62 = *v218;
        }

        LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
        *(__dst.__r_.__value_.__r.__words + 4) = v61;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v62;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I key = %s already present (td = %s)", &__dst, 0x16u);
      }
    }

    v60 = a1[7];
    if (((v209 | v206) & 1) == 0)
    {
      if (os_log_type_enabled(a1[7], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I nothing to add in policy", &__dst, 2u);
      }

      if (SHIBYTE(v229) < 0)
      {
        operator delete(v228[1]);
      }

      std::locale::~locale(&buf[2]);
      std::ostream::~ostream();
      std::ios::~ios();
      v39 = 0;
      v40 = 0;
      goto LABEL_433;
    }

    v207 = 0;
    goto LABEL_117;
  }

LABEL_128:
  v213 = objc_alloc_init(NSMutableArray);
  if (*(v214 + 40) == 1)
  {
    v65 = [NSUUID alloc];
    if ((*(v214 + 40) & 1) == 0)
    {
      sub_1000D1644();
    }

    v66 = v65;
    if (*(v214 + 39) >= 0)
    {
      v67 = v214 + 16;
    }

    else
    {
      v67 = *(v214 + 2);
    }

    v68 = [NSString stringWithUTF8String:v67];
    v69 = [v66 initWithUUIDString:v68];

    v70 = [CCNEPolicyCondition effectiveApplication:v69];
    [v213 addObject:v70];
  }

  v71 = v214;
  if (*(v214 + 8) == 1)
  {
    v72 = [CCNEPolicyCondition effectivePID:*(v214 + 1)];
    [v213 addObject:v72];

    v71 = v214;
  }

  if ((*(v71 + 40) & 1) != 0 || (*(v214 + 8) & 1) != 0 || TrafficDescriptor::hasIPTupleInfo(v214))
  {
    v73 = +[CCNEPolicyCondition allInterfaces];
    [v213 addObject:v73];
  }

  if (v16)
  {
    v74 = [NSString stringWithUTF8String:"FTSlice"];
    v75 = [CCNEPolicyCondition accountIdentifier:v74];
    [v213 addObject:v75];
  }

  if (TrafficDescriptor::hasAccountInfo(v214))
  {
    if ((*(v214 + 136) & 1) == 0)
    {
      sub_1000D1644();
    }

    if (*(v214 + 135) >= 0)
    {
      v76 = v214 + 112;
    }

    else
    {
      v76 = *(v214 + 14);
    }

    v77 = [NSString stringWithUTF8String:v76];
    v78 = [CCNEPolicyCondition accountIdentifier:v77];
    [v213 addObject:v78];

    v79 = +[CCNEPolicyCondition allInterfaces];
    [v213 addObject:v79];
  }

  if (*(v214 + 176) == 1)
  {
    if (*(v214 + 175) >= 0)
    {
      v80 = v214 + 152;
    }

    else
    {
      v80 = *(v214 + 19);
    }

    v81 = [NSString stringWithUTF8String:v80];
    memset(&__dst, 0, sizeof(__dst));
    if ((*(v214 + 176) & 1) == 0)
    {
      sub_1000D1644();
    }

    CSIPacketAddress::CSIPacketAddress();
    if (CSIPacketAddress::isZeroIP(&__dst))
    {
      goto LABEL_154;
    }

    if (*(v214 + 214))
    {
      v83 = [NSString alloc];
      if ((*(v214 + 214) & 1) == 0)
      {
        sub_1000D1644();
      }

      v82 = [v83 initWithFormat:@"%d", *(v214 + 106)];
      v84 = [NWAddressEndpoint endpointWithHostname:v81 port:v82];
      v85 = [CCNEPolicyCondition flowRemoteAddress:v84 prefix:128];
      v86 = a1[7];
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        sub_100585044(a1, buf);
        v87 = SHIBYTE(buf[2].__locale_) >= 0 ? buf : buf[0].__locale_;
        *v221 = 136315394;
        *&v221[4] = v87;
        v222 = 2112;
        v223 = v84;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "#I Creating Internet specific policy for NWAgent %s: endpoint is %@ (1)", v221, 0x16u);
        if (SHIBYTE(buf[2].__locale_) < 0)
        {
          operator delete(buf[0].__locale_);
        }
      }

      [v213 addObject:v85];
    }

    else
    {
      if ((*(v214 + 220) & 1) == 0)
      {
LABEL_154:
        v82 = [CCNEPolicyCondition domain:v81];
        [v213 addObject:v82];
        v40 = 1;
LABEL_176:

        goto LABEL_177;
      }

      v88 = [NSString alloc];
      if ((*(v214 + 220) & 1) == 0)
      {
        sub_1000D1644();
      }

      v82 = [v88 initWithFormat:@"%d", *(v214 + 108)];
      v84 = [NWAddressEndpoint endpointWithHostname:v81 port:v82];
      v89 = [NSString alloc];
      if ((*(v214 + 220) & 1) == 0)
      {
        sub_1000D1644();
      }

      v85 = [v89 initWithFormat:@"%d", *(v214 + 109)];
      v90 = [NWAddressEndpoint endpointWithHostname:v81 port:v85];
      v91 = [CCNEPolicyCondition flowRemoteAddressStart:v84 end:v90];
      v92 = a1[7];
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        sub_100585044(a1, v221);
        v93 = v224 >= 0 ? v221 : *v221;
        LODWORD(buf[0].__locale_) = 136315650;
        *(&buf[0].__locale_ + 4) = v93;
        WORD2(buf[1].__locale_) = 2112;
        *(&buf[1].__locale_ + 6) = v84;
        HIWORD(buf[2].__locale_) = 2112;
        buf[3].__locale_ = v90;
        _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "#I Creating Internet specific policy for NWAgent %s: endpoint1 is %@, endpoint2 is %@ (1)", buf, 0x20u);
        if (v224 < 0)
        {
          operator delete(*v221);
        }
      }

      [v213 addObject:v91];
    }

    v40 = 0;
    goto LABEL_176;
  }

  v40 = 1;
LABEL_177:
  if (*(v214 + 208) == 1 && (CSIPacketAddress::isZeroIP((v214 + 184)) & 1) == 0)
  {
    memset(buf, 0, 24);
    if ((*(v214 + 208) & 1) == 0)
    {
      sub_1000D1644();
    }

    CSIPacketAddress::operator std::string();
    if (SHIBYTE(buf[2].__locale_) >= 0)
    {
      v94 = buf;
    }

    else
    {
      v94 = buf[0].__locale_;
    }

    v95 = [NSString stringWithUTF8String:v94];
    v96 = *(v214 + 214);
    v97 = *(v214 + 106);
    v98 = [NSString alloc];
    if (v96)
    {
      v99 = v97;
    }

    else
    {
      v99 = 0;
    }

    v100 = [v98 initWithFormat:@"%d", v99];
    v101 = [NWAddressEndpoint endpointWithHostname:v95 port:v100];
    if ((*(v214 + 208) & 1) == 0)
    {
      sub_1000D1644();
    }

    PrefixLen = CSIPacketAddress::getPrefixLen((v214 + 184));
    if (PrefixLen)
    {
      v103 = PrefixLen;
    }

    else
    {
      v103 = 0x80;
    }

    v104 = [CCNEPolicyCondition flowRemoteAddress:v101 prefix:v103];
    v105 = a1[7];
    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
    {
      sub_100585044(a1, &__dst);
      v106 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
      *v221 = 136315394;
      *&v221[4] = v106;
      v222 = 2112;
      v223 = v101;
      _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "#I Creating Internet specific policy for NWAgent %s: endpoint is %@ (1.5)", v221, 0x16u);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    [v213 addObject:v104];

    if (SHIBYTE(buf[2].__locale_) < 0)
    {
      operator delete(buf[0].__locale_);
      if ((v40 & (v96 ^ 1) & 1) == 0)
      {
        goto LABEL_231;
      }
    }

    else if ((v40 & (v96 ^ 1) & 1) == 0)
    {
      goto LABEL_231;
    }

LABEL_202:
    if (*(v214 + 214) == 1)
    {
      if (*v212 == 2)
      {
        v107 = @"::";
      }

      else
      {
        v107 = @"0.0.0.0";
      }

      v108 = v107;
      v109 = [NSString alloc];
      if ((*(v214 + 214) & 1) == 0)
      {
        sub_1000D1644();
      }

      v110 = [v109 initWithFormat:@"%d", *(v214 + 106)];
      v111 = [NWAddressEndpoint endpointWithHostname:v108 port:v110];
      v112 = [CCNEPolicyCondition flowRemoteAddress:v111 prefix:0];
      v113 = a1[7];
      if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
      {
        sub_100585044(a1, buf);
        v114 = SHIBYTE(buf[2].__locale_) >= 0 ? buf : buf[0].__locale_;
        LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
        *(__dst.__r_.__value_.__r.__words + 4) = v114;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2112;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v111;
        _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "#I Creating Internet specific policy for NWAgent %s: endpoint is %@ (2)", &__dst, 0x16u);
        if (SHIBYTE(buf[2].__locale_) < 0)
        {
          operator delete(buf[0].__locale_);
        }
      }

      [v213 addObject:v112];
LABEL_230:

      v40 = 1;
      goto LABEL_232;
    }

    if (*(v214 + 220) == 1)
    {
      if (*v212 == 2)
      {
        v115 = @"::";
      }

      else
      {
        v115 = @"0.0.0.0";
      }

      v108 = v115;
      v116 = [NSString alloc];
      if ((*(v214 + 220) & 1) == 0)
      {
        sub_1000D1644();
      }

      v110 = [v116 initWithFormat:@"%d", *(v214 + 108)];
      v111 = [NWAddressEndpoint endpointWithHostname:v108 port:v110];
      if (*v212 == 2)
      {
        v117 = @"FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:FFFF";
      }

      else
      {
        v117 = @"255.255.255.255";
      }

      v112 = v117;
      v118 = [NSString alloc];
      if ((*(v214 + 220) & 1) == 0)
      {
        sub_1000D1644();
      }

      v119 = [v118 initWithFormat:@"%d", *(v214 + 109)];
      v120 = [NWAddressEndpoint endpointWithHostname:v112 port:v119];
      v121 = [CCNEPolicyCondition flowRemoteAddressStart:v111 end:v120];
      v122 = a1[7];
      if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        sub_100585044(a1, &__dst);
        v123 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
        LODWORD(buf[0].__locale_) = 136315650;
        *(&buf[0].__locale_ + 4) = v123;
        WORD2(buf[1].__locale_) = 2112;
        *(&buf[1].__locale_ + 6) = v111;
        HIWORD(buf[2].__locale_) = 2112;
        buf[3].__locale_ = v120;
        _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "#I Creating Internet specific policy for NWAgent %s: endpoint1 is %@, endpoint2 is %@ (2)", buf, 0x20u);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      [v213 addObject:v121];

      goto LABEL_230;
    }

LABEL_231:
    v40 = 0;
    goto LABEL_232;
  }

  if (v40)
  {
    goto LABEL_202;
  }

LABEL_232:
  v124 = v214;
  if (*(v214 + 224) == 1)
  {
    v125 = [CCNEPolicyCondition ipProtocol:*(v214 + 111)];
    [v213 addObject:v125];

    v124 = v214;
  }

  if (*(v124 + 232) == 1)
  {
    v126 = [CCNEPolicyCondition trafficClassStart:*(v214 + 57) end:*(v214 + 57)];
    [v213 addObject:v126];

    if (v209)
    {
      if ((TrafficDescriptor::hasAccountInfo(v214) & 1) == 0)
      {
        v127 = Registry::getServiceMap(a1[9]);
        v128 = v127;
        if (v129 < 0)
        {
          v130 = (v129 & 0x7FFFFFFFFFFFFFFFLL);
          v131 = 5381;
          do
          {
            v129 = v131;
            v132 = *v130++;
            v131 = (33 * v131) ^ v132;
          }

          while (v132);
        }

        std::mutex::lock(v127);
        buf[0].__locale_ = v129;
        v133 = sub_100009510(&v128[1].__m_.__sig, buf);
        if (v133)
        {
          v135 = v133[3];
          v134 = v133[4];
          if (v134)
          {
            atomic_fetch_add_explicit(&v134->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v128);
            atomic_fetch_add_explicit(&v134->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v134);
            v136 = 0;
            goto LABEL_255;
          }
        }

        else
        {
          v135 = 0;
        }

        std::mutex::unlock(v128);
        v134 = 0;
        v136 = 1;
LABEL_255:
        if (v135)
        {
          v139 = (*(*v135 + 904))(v135);
          if (v139)
          {
            v140 = PersonalitySpecificImpl::simSlot(a1);
            if (((*(*v139 + 128))(v139, v140) & 1) == 0)
            {
              v141 = +[CCNEPolicyCondition usesModernNetworkAPI];
              [v213 addObject:v141];
            }
          }
        }

        if ((v136 & 1) == 0)
        {
          sub_100004A34(v134);
        }
      }
    }
  }

  v142 = [v213 count];
  v143 = a1[7];
  if (!v142)
  {
    if (os_log_type_enabled(a1[7], OS_LOG_TYPE_ERROR))
    {
      sub_100585044(a1, buf);
      sub_101774D4C();
    }

    if ((v212[42] & 1) == 0)
    {
      sub_1005854DC(a1);
    }

    goto LABEL_431;
  }

  if (os_log_type_enabled(a1[7], OS_LOG_TYPE_DEFAULT))
  {
    sub_100585044(a1, buf);
    v144 = SHIBYTE(buf[2].__locale_) >= 0 ? buf : buf[0].__locale_;
    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
    *(__dst.__r_.__value_.__r.__words + 4) = v144;
    _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEFAULT, "#I Created slice Internet policy for NWAgent %s", &__dst, 0xCu);
    if (SHIBYTE(buf[2].__locale_) < 0)
    {
      operator delete(buf[0].__locale_);
    }
  }

  v204.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  if (v209)
  {
    v145 = [NSMutableArray arrayWithArray:v213];
    if (*(v214 + 147) == 1 && *(v214 + 146) == 1 && (*(v214 + 224) & 1) == 0)
    {
      v146 = [CCNEPolicyCondition ipProtocol:17];
      [v145 addObject:v146];

      v147 = [[NSString alloc] initWithFormat:@"%d", 443];
      v148 = [NWAddressEndpoint endpointWithHostname:@"0.0.0.0" port:v147];
      v149 = [CCNEPolicyCondition flowRemoteAddress:v148 prefix:0];
      [v149 setNegative:1];
      v150 = a1[7];
      if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
      {
        sub_100585044(a1, buf);
        v151 = SHIBYTE(buf[2].__locale_) >= 0 ? buf : buf[0].__locale_;
        LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
        *(__dst.__r_.__value_.__r.__words + 4) = v151;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2112;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v148;
        _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_DEFAULT, "#I Creating Internet specific policy for NWAgent %s: endpoint is %@ (3.1)", &__dst, 0x16u);
        if (SHIBYTE(buf[2].__locale_) < 0)
        {
          operator delete(buf[0].__locale_);
        }
      }

      [v145 addObject:v149];

      v152 = [[NSString alloc] initWithFormat:@"%d", 443];
      v153 = [NWAddressEndpoint endpointWithHostname:@"::" port:v152];
      v154 = [CCNEPolicyCondition flowRemoteAddress:v153 prefix:0];
      [v154 setNegative:1];
      v155 = a1[7];
      if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
      {
        sub_100585044(a1, buf);
        v156 = SHIBYTE(buf[2].__locale_) >= 0 ? buf : buf[0].__locale_;
        LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
        *(__dst.__r_.__value_.__r.__words + 4) = v156;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2112;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v153;
        _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "#I Creating Internet specific policy for NWAgent %s: endpoint is %@ (3.2)", &__dst, 0x16u);
        if (SHIBYTE(buf[2].__locale_) < 0)
        {
          operator delete(buf[0].__locale_);
        }
      }

      [v145 addObject:v154];
    }

    v157 = [CCNEPolicyResult netAgentUUID:v211];
    v158 = [[CCNEPolicy alloc] initWithOrder:*(v212 + 8) result:v157 conditions:v145];
    if (!v158)
    {
      if (os_log_type_enabled(a1[7], OS_LOG_TYPE_ERROR))
      {
        sub_100585044(a1, buf);
        sub_101774CF8();
      }

      if ((v212[42] & 1) == 0)
      {
        sub_1005854DC(a1);
      }

      goto LABEL_305;
    }

    v159 = [v210 addPolicy:v158];
    *v221 = v159;
    v160 = a1[7];
    if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
    {
      sub_100585044(a1, buf);
      if (SHIBYTE(buf[2].__locale_) >= 0)
      {
        v161 = buf;
      }

      else
      {
        v161 = buf[0].__locale_;
      }

      LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
      *(__dst.__r_.__value_.__r.__words + 4) = v161;
      WORD2(__dst.__r_.__value_.__r.__words[1]) = 2048;
      *(&__dst.__r_.__value_.__r.__words[1] + 6) = *v221;
      _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEFAULT, "#I Adding slice Internet policy (agent) for NWAgent %s: id=%lu", &__dst, 0x16u);
      if (SHIBYTE(buf[2].__locale_) < 0)
      {
        operator delete(buf[0].__locale_);
      }

      v159 = *v221;
    }

    if (!v159)
    {
      if (os_log_type_enabled(a1[7], OS_LOG_TYPE_ERROR))
      {
        sub_100585044(a1, buf);
        sub_101774CA4();
      }

      if ((v212[42] & 1) == 0)
      {
        sub_1005854DC(a1);
      }

      goto LABEL_430;
    }

    if (v212[42] == 1)
    {
      memset(&buf[1], 0, 32);
      buf[0].__locale_ = v159;
      if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&buf[1], v217.__r_.__value_.__l.__data_, v217.__r_.__value_.__l.__size_);
      }

      else
      {
        *&buf[1].__locale_ = *&v217.__r_.__value_.__l.__data_;
        buf[3] = v217.__r_.__value_.__r.__words[2];
      }

      buf[4].__locale_ = v204.__d_.__rep_;
      v164 = v212[43];
      v165 = a1[7];
      v166 = os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT);
      if (v164 == 1)
      {
        if (v166)
        {
          LODWORD(__dst.__r_.__value_.__l.__data_) = 67109120;
          HIDWORD(__dst.__r_.__value_.__r.__words[0]) = *v221;
          _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_DEFAULT, "#I Add fTmpPolicies: %d", &__dst, 8u);
        }

        v167 = 20;
      }

      else
      {
        if (v166)
        {
          LODWORD(__dst.__r_.__value_.__l.__data_) = 67109120;
          HIDWORD(__dst.__r_.__value_.__r.__words[0]) = *v221;
          _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_DEFAULT, "#I Add fTmpPoliciesLong: %d", &__dst, 8u);
        }

        v167 = 26;
      }

      sub_10058C68C(&a1[v167], buf);
      if (SHIBYTE(buf[3].__locale_) < 0)
      {
        operator delete(buf[1].__locale_);
      }
    }

    else
    {
      v162 = a1[7];
      if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0].__locale_) = 67109120;
        HIDWORD(buf[0].__locale_) = v159;
        _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_DEFAULT, "#I Add fPolicies: %d", buf, 8u);
      }

      sub_1004C12FC((a1 + 13), v221, v221);
    }

    v168 = v212[31];
    v169 = v168;
    if ((v168 & 0x80u) != 0)
    {
      v168 = *(v212 + 2);
    }

    if (v168)
    {
      v170 = a1[7];
      if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
      {
        sub_100585044(a1, buf);
        if (SHIBYTE(buf[2].__locale_) >= 0)
        {
          v171 = buf;
        }

        else
        {
          v171 = buf[0].__locale_;
        }

        if ((v212[31] & 0x80u) == 0)
        {
          v172 = (v212 + 8);
        }

        else
        {
          v172 = *(v212 + 1);
        }

        LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
        *(__dst.__r_.__value_.__r.__words + 4) = v171;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v172;
        _os_log_impl(&_mh_execute_header, v170, OS_LOG_TYPE_DEFAULT, "#I Creating slice Internet policy for NWAgent %s interface %s", &__dst, 0x16u);
        if (SHIBYTE(buf[2].__locale_) < 0)
        {
          operator delete(buf[0].__locale_);
        }

        v169 = v212[31];
      }

      if (v169 >= 0)
      {
        v173 = v212 + 8;
      }

      else
      {
        v173 = *(v212 + 1);
      }

      v174 = [NSString stringWithUTF8String:v173];
      v175 = [CCNEPolicyResult scopeSocketToInterfaceName:v174];
      v176 = [[CCNEPolicy alloc] initWithOrder:(*(v212 + 8) + 1) result:v175 conditions:v145];
      if (!v176)
      {
        if (os_log_type_enabled(a1[7], OS_LOG_TYPE_ERROR))
        {
          sub_100585044(a1, buf);
          sub_101774B00();
        }

        if ((v212[42] & 1) == 0)
        {
          sub_1005854DC(a1);
        }

        goto LABEL_430;
      }

      v177 = [v210 addPolicy:v176];
      *v221 = v177;
      v178 = a1[7];
      if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
      {
        sub_100585044(a1, buf);
        if (SHIBYTE(buf[2].__locale_) >= 0)
        {
          v179 = buf;
        }

        else
        {
          v179 = buf[0].__locale_;
        }

        LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
        *(__dst.__r_.__value_.__r.__words + 4) = v179;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2048;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = *v221;
        _os_log_impl(&_mh_execute_header, v178, OS_LOG_TYPE_DEFAULT, "#I Adding slice Internet policy (socket) for NWAgent %s: id=%lu", &__dst, 0x16u);
        if (SHIBYTE(buf[2].__locale_) < 0)
        {
          operator delete(buf[0].__locale_);
        }

        v177 = *v221;
      }

      if (!v177)
      {
        if (os_log_type_enabled(a1[7], OS_LOG_TYPE_ERROR))
        {
          sub_100585044(a1, buf);
          sub_101774AAC();
        }

        if ((v212[42] & 1) == 0)
        {
          sub_1005854DC(a1);
        }

        goto LABEL_430;
      }

      if (v212[42] == 1)
      {
        memset(&buf[1], 0, 32);
        buf[0].__locale_ = v177;
        if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&buf[1], v217.__r_.__value_.__l.__data_, v217.__r_.__value_.__l.__size_);
        }

        else
        {
          *&buf[1].__locale_ = *&v217.__r_.__value_.__l.__data_;
          buf[3] = v217.__r_.__value_.__r.__words[2];
        }

        buf[4].__locale_ = v204.__d_.__rep_;
        v181 = v212[43];
        v182 = a1[7];
        v183 = os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT);
        if (v181 == 1)
        {
          if (v183)
          {
            LODWORD(__dst.__r_.__value_.__l.__data_) = 67109120;
            HIDWORD(__dst.__r_.__value_.__r.__words[0]) = *v221;
            _os_log_impl(&_mh_execute_header, v182, OS_LOG_TYPE_DEFAULT, "#I Add fTmpPolicies: %d", &__dst, 8u);
          }

          v184 = 20;
        }

        else
        {
          if (v183)
          {
            LODWORD(__dst.__r_.__value_.__l.__data_) = 67109120;
            HIDWORD(__dst.__r_.__value_.__r.__words[0]) = *v221;
            _os_log_impl(&_mh_execute_header, v182, OS_LOG_TYPE_DEFAULT, "#I Add fTmpPoliciesLong: %d", &__dst, 8u);
          }

          v184 = 26;
        }

        sub_10058C68C(&a1[v184], buf);
        if (SHIBYTE(buf[3].__locale_) < 0)
        {
          operator delete(buf[1].__locale_);
        }
      }

      else
      {
        v180 = a1[7];
        if (os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf[0].__locale_) = 67109120;
          HIDWORD(buf[0].__locale_) = v177;
          _os_log_impl(&_mh_execute_header, v180, OS_LOG_TYPE_DEFAULT, "#I Add fPolicies: %d", buf, 8u);
        }

        sub_1004C12FC((a1 + 13), v221, v221);
      }
    }
  }

  if (v206)
  {
    v145 = [CCNEPolicyResult skipWithOrder:0];
    v185 = [[CCNEPolicy alloc] initWithOrder:*(v212 + 9) result:v145 conditions:v213];
    if (!v185)
    {
      if (os_log_type_enabled(a1[7], OS_LOG_TYPE_ERROR))
      {
        sub_100585044(a1, buf);
        sub_101774C50();
      }

      goto LABEL_430;
    }

    v186 = [v210 addPolicy:v185];
    *v221 = v186;
    v187 = a1[7];
    if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
    {
      sub_100585044(a1, buf);
      if (SHIBYTE(buf[2].__locale_) >= 0)
      {
        v188 = buf;
      }

      else
      {
        v188 = buf[0].__locale_;
      }

      LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
      *(__dst.__r_.__value_.__r.__words + 4) = v188;
      WORD2(__dst.__r_.__value_.__r.__words[1]) = 2048;
      *(&__dst.__r_.__value_.__r.__words[1] + 6) = *v221;
      _os_log_impl(&_mh_execute_header, v187, OS_LOG_TYPE_DEFAULT, "#I Adding Internet slice SKIP policy for NWAgent %s: id=%lu", &__dst, 0x16u);
      if (SHIBYTE(buf[2].__locale_) < 0)
      {
        operator delete(buf[0].__locale_);
      }

      v186 = *v221;
    }

    if (!v186)
    {
      if (os_log_type_enabled(a1[7], OS_LOG_TYPE_ERROR))
      {
        sub_100585044(a1, buf);
        sub_101774BFC();
      }

      goto LABEL_430;
    }

    if (v212[42] == 1)
    {
      memset(&buf[1], 0, 32);
      buf[0].__locale_ = v186;
      if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&buf[1], v216.__r_.__value_.__l.__data_, v216.__r_.__value_.__l.__size_);
      }

      else
      {
        *&buf[1].__locale_ = *&v216.__r_.__value_.__l.__data_;
        buf[3] = v216.__r_.__value_.__r.__words[2];
      }

      buf[4].__locale_ = v204.__d_.__rep_;
      v190 = v212[43];
      v191 = a1[7];
      v192 = os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT);
      if (v190 == 1)
      {
        if (v192)
        {
          LODWORD(__dst.__r_.__value_.__l.__data_) = 67109120;
          HIDWORD(__dst.__r_.__value_.__r.__words[0]) = *v221;
          _os_log_impl(&_mh_execute_header, v191, OS_LOG_TYPE_DEFAULT, "#I Add fTmpPolicies: %d", &__dst, 8u);
        }

        v193 = 20;
      }

      else
      {
        if (v192)
        {
          LODWORD(__dst.__r_.__value_.__l.__data_) = 67109120;
          HIDWORD(__dst.__r_.__value_.__r.__words[0]) = *v221;
          _os_log_impl(&_mh_execute_header, v191, OS_LOG_TYPE_DEFAULT, "#I Add fTmpPoliciesLong: %d", &__dst, 8u);
        }

        v193 = 26;
      }

      sub_10058C68C(&a1[v193], buf);
      if (SHIBYTE(buf[3].__locale_) < 0)
      {
        operator delete(buf[1].__locale_);
      }
    }

    else
    {
      v189 = a1[7];
      if (os_log_type_enabled(v189, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0].__locale_) = 67109120;
        HIDWORD(buf[0].__locale_) = v186;
        _os_log_impl(&_mh_execute_header, v189, OS_LOG_TYPE_DEFAULT, "#I Add fPolicies: %d", buf, 8u);
      }

      sub_1004C12FC((a1 + 13), v221, v221);
    }
  }

  if (!v207)
  {
LABEL_459:
    if (v212[42] == 1)
    {
      if (v209)
      {
        sub_100005BA0((a1 + 32), &v217, &v217);
      }

      if (v206)
      {
        sub_100005BA0((a1 + 32), &v216, &v216);
      }

      if (v207)
      {
        sub_100005BA0((a1 + 32), &v215, &v215);
      }
    }

    v39 = 1;
    goto LABEL_432;
  }

  v145 = [CCNEPolicyResult skipWithOrder:(*(v212 + 8) + 1)];
  v157 = +[CCNEPolicyCondition platformBinary];
  [v213 addObject:v157];
  v194 = [[CCNEPolicy alloc] initWithOrder:(*(v212 + 8) - 1) result:v145 conditions:v213];
  if (v194)
  {
    v195 = [v210 addPolicy:v194];
    *v221 = v195;
    v196 = a1[7];
    if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
    {
      sub_100585044(a1, buf);
      if (SHIBYTE(buf[2].__locale_) >= 0)
      {
        v197 = buf;
      }

      else
      {
        v197 = buf[0].__locale_;
      }

      LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
      *(__dst.__r_.__value_.__r.__words + 4) = v197;
      WORD2(__dst.__r_.__value_.__r.__words[1]) = 2048;
      *(&__dst.__r_.__value_.__r.__words[1] + 6) = *v221;
      _os_log_impl(&_mh_execute_header, v196, OS_LOG_TYPE_DEFAULT, "#I Adding Internet slice SKIP prefix policy for NWAgent %s: id=%lu", &__dst, 0x16u);
      if (SHIBYTE(buf[2].__locale_) < 0)
      {
        operator delete(buf[0].__locale_);
      }

      v195 = *v221;
    }

    if (v195)
    {
      if (v212[42] == 1)
      {
        memset(&buf[1], 0, 32);
        buf[0].__locale_ = v195;
        if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&buf[1], v215.__r_.__value_.__l.__data_, v215.__r_.__value_.__l.__size_);
        }

        else
        {
          *&buf[1].__locale_ = *&v215.__r_.__value_.__l.__data_;
          buf[3] = v215.__r_.__value_.__r.__words[2];
        }

        buf[4].__locale_ = v204.__d_.__rep_;
        v200 = v212[43];
        v201 = a1[7];
        v202 = os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT);
        if (v200 == 1)
        {
          if (v202)
          {
            LODWORD(__dst.__r_.__value_.__l.__data_) = 67109120;
            HIDWORD(__dst.__r_.__value_.__r.__words[0]) = *v221;
            _os_log_impl(&_mh_execute_header, v201, OS_LOG_TYPE_DEFAULT, "#I Add fTmpPolicies: %d", &__dst, 8u);
          }

          v203 = 20;
        }

        else
        {
          if (v202)
          {
            LODWORD(__dst.__r_.__value_.__l.__data_) = 67109120;
            HIDWORD(__dst.__r_.__value_.__r.__words[0]) = *v221;
            _os_log_impl(&_mh_execute_header, v201, OS_LOG_TYPE_DEFAULT, "#I Add fTmpPoliciesLong: %d", &__dst, 8u);
          }

          v203 = 26;
        }

        sub_10058C68C(&a1[v203], buf);
        if (SHIBYTE(buf[3].__locale_) < 0)
        {
          operator delete(buf[1].__locale_);
        }
      }

      else
      {
        v199 = a1[7];
        if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf[0].__locale_) = 67109120;
          HIDWORD(buf[0].__locale_) = v195;
          _os_log_impl(&_mh_execute_header, v199, OS_LOG_TYPE_DEFAULT, "#I Add fPolicies: %d", buf, 8u);
        }

        sub_1004C12FC((a1 + 13), v221, v221);
      }

      goto LABEL_459;
    }

    if (os_log_type_enabled(a1[7], OS_LOG_TYPE_ERROR))
    {
      sub_100585044(a1, buf);
      sub_101774B54();
    }

    goto LABEL_430;
  }

  if (os_log_type_enabled(a1[7], OS_LOG_TYPE_ERROR))
  {
    sub_100585044(a1, buf);
    sub_101774BA8();
  }

LABEL_305:

LABEL_430:
LABEL_431:
  v39 = 0;
LABEL_432:

LABEL_433:
  if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v215.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v216.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v217.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v220) < 0)
  {
    operator delete(*v218);
  }

LABEL_441:

  objc_autoreleasePoolPop(context);
  if (!v39)
  {
    goto LABEL_443;
  }

  *v205 = 1;
LABEL_444:

  return v40;
}