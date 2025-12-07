void sub_100310614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, xpc_object_t a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  xpc_release(a12);
  sub_1003104DC(&a10);
  _Unwind_Resume(a1);
}

void sub_100310730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100310748(void *a1)
{
  *a1 = off_101E40CF8;
  v2 = a1[133];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return sub_100348C6C(a1);
}

void sub_1003107A8(void *a1)
{
  sub_100310748(a1);

  operator delete();
}

void sub_100310870(uint64_t a1, NSObject **a2)
{
  v3 = *a2;
  group = *a2;
  if (*a2)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  sub_10034ADB0(a1);
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }
}

void sub_1003108D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003108FC(NSObject **a1, int a2, BOOL a3, const __CFDictionary **a4)
{
  v8 = capabilities::ct::supportsThumperService(a1);
  if (a2 == 1 && v8)
  {
    v9 = a1[5];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = asStringBool(a3);
      v11 = *a4;
      v16 = 136315906;
      v17 = "";
      v18 = 2080;
      v19 = "";
      v20 = 2080;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%ssetEnabled, val: %s, %@", &v16, 0x2Au);
    }

    if (*a4)
    {
      Value = CFDictionaryGetValue(*a4, kPSAssociatedAccountID);
      if (Value)
      {
        v13 = Value;
        v14 = CFGetTypeID(Value);
        if (v14 == CFStringGetTypeID())
        {
          v15 = v13;
        }

        else
        {
          v15 = 0;
        }

        setAssociatedID(v15);
        sub_1005D0430(a1[98]);
      }
    }
  }
}

const void **sub_100310AA8@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v2 = 0;
  return sub_10001021C(&v2);
}

const void **sub_100310AD8@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v2 = 0;
  return sub_10001021C(&v2);
}

void sub_100310B78(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E40F08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100310BCC(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

void sub_100310CB8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100310D8C);
  __cxa_rethrow();
}

void sub_100310CF8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100310D4C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100310D8C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_100311058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (v27)
  {
    sub_100004A34(v27);
    if (!v26)
    {
      goto LABEL_3;
    }
  }

  else if (!v26)
  {
    goto LABEL_3;
  }

  dispatch_release(v26);
LABEL_3:
  operator delete();
}

uint64_t CellularPlanAttachProvisioningMonitorMode::CellularPlanAttachProvisioningMonitorMode(uint64_t a1, NSObject **a2, void *a3, uint64_t *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  v18 = *a2;
  object = v18;
  if (v18)
  {
    dispatch_retain(v18);
  }

  v19 = a4[1];
  v33 = *a4;
  v34 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = "cp.mm.ap.?";
  if (a5 == 2)
  {
    v20 = "cp.mm.ap.2";
  }

  if (a5 == 1)
  {
    v21 = "cp.mm.ap.1";
  }

  else
  {
    v21 = v20;
  }

  v22 = (a8 + 16);
  if (*(a8 + 39) < 0)
  {
    sub_100005F2C(__p, *(a8 + 16), *(a8 + 24));
  }

  else
  {
    *__p = *v22;
    v32 = *(a8 + 32);
  }

  sub_10031435C(a1, &object, a3, &v33, v21, __p);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }

  if (v34)
  {
    sub_100004A34(v34);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = off_101E40FB8;
  *(a1 + 160) = *a4;
  v23 = a4[1];
  *(a1 + 168) = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 176) = a6;
  *(a1 + 184) = a7;
  *(a1 + 192) = *a8;
  if (*(a8 + 39) < 0)
  {
    sub_100005F2C((a1 + 208), *(a8 + 16), *(a8 + 24));
  }

  else
  {
    v24 = *v22;
    *(a1 + 224) = *(a8 + 32);
    *(a1 + 208) = v24;
  }

  v25 = *(a8 + 40);
  *(a1 + 248) = 0u;
  *(a1 + 232) = v25;
  *(a1 + 240) = 0;
  *(a1 + 244) = 1;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  RegisteredNetworkInfo::RegisteredNetworkInfo((a1 + 296));
  sub_10000501C(&v29, "CellularPlanAttachProvisioningMonitorMode");
  v28 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  ctu::RestModule::RestModule();
  if (v28)
  {
    dispatch_release(v28);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  *(a1 + 1120) = 0;
  RegisteredNetworkInfo::RegisteredNetworkInfo((a1 + 1128));
  *(a1 + 1936) = 0;
  RegisteredNetworkInfo::RegisteredNetworkInfo((a1 + 1944));
  *(a1 + 2760) = 0u;
  *(a1 + 2752) = a1 + 2760;
  *(a1 + 2784) = 0u;
  *(a1 + 2776) = a1 + 2784;
  *(a1 + 2800) = 0;
  *(a1 + 2802) = 1;
  *(a1 + 2803) = a9;
  *(a1 + 2804) = a10;
  *(a1 + 2808) = 0;
  *(a1 + 2832) = 0;
  *(a1 + 2840) = 0;
  *(a1 + 2848) = 0u;
  v26 = *(a1 + 40);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a8 + 39) < 0)
    {
      v22 = *v22;
    }

    *buf = 136315138;
    v37 = v22;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I create Attach MM for %s", buf, 0xCu);
  }

  return a1;
}

void sub_1003113E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t a10, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, dispatch_object_t object, uint64_t a24)
{
  v26 = *(v24 + 21);
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  sub_10031452C(v24);
  _Unwind_Resume(a1);
}

void sub_1003114A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, std::__shared_weak_count *a22, NSObject *a23)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    sub_100004A34(a22);
  }

  if (a23)
  {
    dispatch_release(a23);
  }

  JUMPOUT(0x100311498);
}

void CellularPlanAttachProvisioningMonitorMode::~CellularPlanAttachProvisioningMonitorMode(CellularPlanAttachProvisioningMonitorMode *this)
{
  *this = off_101E40FB8;
  ctu::RestModule::disconnect((this + 1104));
  v2 = *(this + 355);
  if (v2)
  {
    *(this + 356) = v2;
    operator delete(v2);
  }

  if (*(this + 2832) == 1)
  {
    v3 = *(this + 351);
    if (v3)
    {
      *(this + 352) = v3;
      operator delete(v3);
    }
  }

  sub_10006DCAC(this + 2776, *(this + 348));
  sub_10013DF64(this + 2752, *(this + 345));
  sub_10004543C(this + 1944);
  sub_10004543C(this + 1128);
  v4 = *(this + 139);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_10004543C(this + 296);
  v6 = (this + 272);
  sub_1000B2AF8(&v6);
  v6 = (this + 248);
  sub_100112048(&v6);
  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  v5 = *(this + 21);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  sub_10031452C(this);
}

{
  CellularPlanAttachProvisioningMonitorMode::~CellularPlanAttachProvisioningMonitorMode(this);

  operator delete();
}

void CellularPlanAttachProvisioningMonitorMode::init_sync(uint64_t a1, Registry **a2)
{
  Registry::createRestModuleOneTimeUseConnection(&v4, *a2);
  ctu::RestModule::connect();
  if (v5)
  {
    sub_100004A34(v5);
  }

  *(a1 + 1120) = "/cc/props/reg_net_info1";
  v3[0] = CellularPlanAttachProvisioningMonitorMode::handleRegistrationStatusesOnSlotOne_sync;
  v3[1] = 0;
  sub_100313690((a1 + 1120), a1 + 1104, a1, v3);
}

void sub_10031172C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanAttachProvisioningMonitorMode::handleRegistrationStatusesOnSlotOne_sync(CellularPlanAttachProvisioningMonitorMode *this)
{
  if (CellularPlanAttachProvisioningMonitorMode::getSlotForIccid_sync(this, this + 208) == 1)
  {

    CellularPlanAttachProvisioningMonitorMode::handleRegistrationStatuses_sync(this, (this + 1128));
  }
}

void CellularPlanAttachProvisioningMonitorMode::handleRegistrationStatusesOnSlotTwo_sync(CellularPlanAttachProvisioningMonitorMode *this)
{
  if (CellularPlanAttachProvisioningMonitorMode::getSlotForIccid_sync(this, this + 208) == 2)
  {

    CellularPlanAttachProvisioningMonitorMode::handleRegistrationStatuses_sync(this, (this + 1944));
  }
}

void CellularPlanAttachProvisioningMonitorMode::handleCarrierEntitlementsInfoUpdated_sync(CellularPlanAttachProvisioningMonitorMode *this)
{
  v2 = *(this + 60);
  if (v2 == 3)
  {
    __p[0] = 0;
    __p[1] = 0;
    v9 = 0;
    if (*(this + 231) < 0)
    {
      sub_100005F2C(__p, *(this + 26), *(this + 27));
    }

    else
    {
      *__p = *(this + 13);
      v9 = *(this + 28);
    }

    v4 = sub_100007A6C(this + 2752, __p);
    if ((this + 2760) != v4)
    {
      v5 = v4[144];
      *(this + 2802) = v5;
      v6 = *(this + 5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = "unblocked";
        if (v5)
        {
          v7 = "blocked";
        }

        *buf = 136315138;
        v11 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Received entitlement block status %s", buf, 0xCu);
      }

      CellularPlanAttachProvisioningMonitorMode::evaluateMonitorModeExit_sync(this);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10176B23C(v2, v3);
    }
  }
}

void CellularPlanAttachProvisioningMonitorMode::handleRejectCauseCode_sync(CellularPlanAttachProvisioningMonitorMode *this)
{
  SlotForIccid_sync = CellularPlanAttachProvisioningMonitorMode::getSlotForIccid_sync(this, this + 208);
  if (SlotForIccid_sync)
  {
    v3 = *(this + 348);
    if (v3)
    {
      v4 = this + 2784;
      do
      {
        if (*(v3 + 7) >= SlotForIccid_sync)
        {
          v4 = v3;
        }

        v3 = *&v3[8 * (*(v3 + 7) < SlotForIccid_sync)];
      }

      while (v3);
      if (v4 != this + 2784 && SlotForIccid_sync >= *(v4 + 7))
      {
        v5 = *(this + 5);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = v4[32];
          v7 = v4[33];
          v13[0] = 67109634;
          v13[1] = v6;
          v14 = 1024;
          v15 = v7;
          v16 = 2080;
          v17 = asString();
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Received Reject cause code: PS: %d, CS: %d, Rat: %s", v13, 0x18u);
        }

        v8 = *(v4 + 9);
        v9 = v8 > 0xB;
        v10 = (1 << v8) & 0x838;
        if (v9 || v10 == 0)
        {
          if (*(this + 2801))
          {
            v12 = 1;
          }

          else
          {
            v12 = CellularPlanAttachProvisioningMonitorMode::didReceiveFatalRejectFromNetwork(this);
          }

          *(this + 2801) = v12;
        }
      }
    }
  }
}

void sub_100311AC0(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/emergency_call_in_progress");
  v5[0] = off_101E41248;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_100311B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CellularPlanAttachProvisioningMonitorMode::runMonitorModeAction_sync(CellularPlanAttachProvisioningMonitorMode *this)
{
  if (*(this + 244) & 1) != 0 || (CellularPlanAttachProvisioningMonitorMode::notifyBackoffTimerExpiry_sync(this), (*(this + 244)) || *(this + 2801) != 1 || *(this + 2800) == 1)
  {
    v2 = *(this + 5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136315394;
      v27 = printers::asString((this + 2801), v3);
      v28 = 2080;
      v29 = printers::asString((this + 2800), v4);
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Reject cause code: %s - ecall in progress %s", &v26, 0x16u);
    }

    *(this + 244) = 0;
    CellularPlanAttachProvisioningMonitorMode::updateMonitorModeState_sync(this, 3u);
    sub_100314A14(this, 0x100u);
    return;
  }

  if ((*(this + 2804) & 1) == 0)
  {
    v15 = *(this + 31);
    v16 = *(this + 32);
    if (v15 == v16)
    {
      goto LABEL_52;
    }

    v17 = 0;
    do
    {
      if (*(v15 + 80) == 1)
      {
        v18 = *(v15 + 56);
        v19 = *(v15 + 64);
        if (v18 != v19)
        {
          v20 = *(this + 231);
          if (v20 >= 0)
          {
            v21 = *(this + 231);
          }

          else
          {
            v21 = *(this + 27);
          }

          while (1)
          {
            v22 = *(v18 + 39);
            v23 = v22;
            if ((v22 & 0x80u) != 0)
            {
              v22 = *(v18 + 24);
            }

            if (v22 == v21)
            {
              v24 = v23 >= 0 ? (v18 + 16) : *(v18 + 16);
              v25 = v20 >= 0 ? (this + 208) : *(this + 26);
              if (!memcmp(v24, v25, v21))
              {
                break;
              }
            }

            v18 += 216;
            if (v18 == v19)
            {
              goto LABEL_47;
            }
          }

          v17 |= *(v18 + 90);
        }
      }

LABEL_47:
      v15 += 88;
    }

    while (v15 != v16);
    if ((v17 & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:

    CellularPlanAttachProvisioningMonitorMode::disableProfile_sync(this);
    return;
  }

  v5 = *(this + 34);
  v6 = *(this + 35);
  if (v5 == v6)
  {
    goto LABEL_49;
  }

  v7 = v5 + 72;
  while (1)
  {
    v8 = *(v7 + 23);
    if (v8 >= 0)
    {
      v9 = *(v7 + 23);
    }

    else
    {
      v9 = *(v7 + 8);
    }

    v10 = *(this + 231);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(this + 27);
    }

    if (v9 == v10)
    {
      v12 = v8 >= 0 ? v7 : *v7;
      v13 = v11 >= 0 ? (this + 208) : *(this + 26);
      if (!memcmp(v12, v13, v9) && (subscriber::isPhySimDisabled() & 1) != 0)
      {
        break;
      }
    }

    v14 = v7 + 96;
    v7 += 168;
    if (v14 == v6)
    {
      goto LABEL_49;
    }
  }

LABEL_52:

  CellularPlanAttachProvisioningMonitorMode::enableProfile_sync(this);
}

void CellularPlanAttachProvisioningMonitorMode::notifyBackoffTimerExpiry_sync(CellularPlanAttachProvisioningMonitorMode *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 20);
      if (v5)
      {
        v6 = *(this + 5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Notify backoff timer expiry.", v7, 2u);
        }

        (*(*v5 + 40))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void CellularPlanAttachProvisioningMonitorMode::updateMonitorModeState_sync(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 240);
    if (v5 > 3)
    {
      v6 = "???";
    }

    else
    {
      v6 = off_101E412B8[v5];
    }

    if (a2 > 3)
    {
      v7 = "???";
    }

    else
    {
      v7 = off_101E412B8[a2];
    }

    v8 = 136315394;
    v9 = v6;
    v10 = 2080;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Attach MonitorMode state:[%s] -> [%s]", &v8, 0x16u);
  }

  *(a1 + 240) = a2;
}

void CellularPlanAttachProvisioningMonitorMode::enableProfile_sync(CellularPlanAttachProvisioningMonitorMode *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 20);
      if (v5)
      {
        CellularPlanAttachProvisioningMonitorMode::updateMonitorModeState_sync(this, 1u);
        v6 = *(this + 5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = (this + 208);
          if (*(this + 231) < 0)
          {
            v7 = *v7;
          }

          *buf = 136315138;
          v15 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I activate profile : %s", buf, 0xCu);
        }

        v8 = *(this + 22);
        v9 = *(this + 23);
        v10 = *(this + 12);
        if (*(this + 231) < 0)
        {
          sub_100005F2C(__p, *(this + 26), *(this + 27));
        }

        else
        {
          *__p = *(this + 13);
          v12 = *(this + 28);
        }

        v13 = *(this + 232);
        (*(*v5 + 24))(v5, v8, v9, &v10);
        if (SHIBYTE(v12) < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_100004A34(v4);
    }
  }
}

void CellularPlanAttachProvisioningMonitorMode::disableProfile_sync(CellularPlanAttachProvisioningMonitorMode *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 20);
      if (v5)
      {
        CellularPlanAttachProvisioningMonitorMode::updateMonitorModeState_sync(this, 2u);
        v6 = *(this + 5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = (this + 208);
          if (*(this + 231) < 0)
          {
            v7 = *v7;
          }

          *buf = 136315138;
          v15 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I deactivate profile : %s", buf, 0xCu);
        }

        v8 = *(this + 22);
        v9 = *(this + 23);
        v10 = *(this + 12);
        if (*(this + 231) < 0)
        {
          sub_100005F2C(__p, *(this + 26), *(this + 27));
        }

        else
        {
          *__p = *(this + 13);
          v12 = *(this + 28);
        }

        v13 = *(this + 232);
        (*(*v5 + 32))(v5, v8, v9, &v10);
        if (SHIBYTE(v12) < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_100004A34(v4);
    }
  }
}

void CellularPlanAttachProvisioningMonitorMode::setVinylInfo_sync(uint64_t a1, uint64_t *a2)
{
  v4 = (a1 + 248);
  if (v4 != a2)
  {
    sub_100169D44(v4, *a2, a2[1], 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3));
  }

  if (*(a1 + 2804) == 1)
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Skip handling vinyl info for physical SIM monitor mode", buf, 2u);
    }
  }

  else
  {
    v6 = *(a1 + 248);
    for (i = *(a1 + 256); v6 != i; v6 += 88)
    {
      if (*(v6 + 80) == 1)
      {
        v8 = *(v6 + 56);
        v9 = *(v6 + 64);
        if (v8 != v9)
        {
          v10 = *(a1 + 231);
          if (v10 >= 0)
          {
            v11 = *(a1 + 231);
          }

          else
          {
            v11 = *(a1 + 216);
          }

          while (1)
          {
            v12 = *(v8 + 39);
            v13 = v12;
            if ((v12 & 0x80u) != 0)
            {
              v12 = *(v8 + 24);
            }

            if (v12 == v11)
            {
              v14 = v13 >= 0 ? (v8 + 16) : *(v8 + 16);
              v15 = v10 >= 0 ? (a1 + 208) : *(a1 + 208);
              if (!memcmp(v14, v15, v11))
              {
                break;
              }
            }

            v8 += 216;
            if (v8 == v9)
            {
              goto LABEL_23;
            }
          }

          v16 = *(a1 + 40);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = "Disabled";
            if (*(v8 + 90))
            {
              v17 = "Active";
            }

            *buf = 136315138;
            v20 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Received Vinyl Info profile status: %s", buf, 0xCu);
          }

          v18 = *(a1 + 240);
          if (v18 == 2)
          {
            if ((*(v8 + 90) & 1) == 0)
            {
              CellularPlanAttachProvisioningMonitorMode::enableProfile_sync(a1);
            }
          }

          else if (v18 == 1 && *(v8 + 90) == 1)
          {
            *(a1 + 2801) = 0;
            CellularPlanAttachProvisioningMonitorMode::updateMonitorModeState_sync(a1, 3u);
            v2 = v2 & 0xFFFFFFFFFFFF0000 | 0x100;
            sub_100314A14(a1, v2);
          }
        }
      }

LABEL_23:
      ;
    }
  }
}

void CellularPlanAttachProvisioningMonitorMode::setSimInfo_sync(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + 272);
  if (v3 != a2)
  {
    sub_100169790(v3, *a2, a2[1], 0xCF3CF3CF3CF3CF3DLL * ((a2[1] - *a2) >> 3));
  }

  if (*(a1 + 2804) == 1)
  {
    v4 = *(a1 + 272);
    v5 = *(a1 + 280);
    if (v4 != v5)
    {
      v6 = *(a1 + 231);
      if (v6 >= 0)
      {
        v7 = *(a1 + 231);
      }

      else
      {
        v7 = *(a1 + 216);
      }

      for (i = v4 + 72; ; i += 168)
      {
        v9 = *(i + 23);
        v10 = v9;
        if ((v9 & 0x80u) != 0)
        {
          v9 = *(i + 8);
        }

        if (v9 == v7)
        {
          v11 = v10 >= 0 ? i : *i;
          v12 = v6 >= 0 ? (a1 + 208) : *(a1 + 208);
          if (!memcmp(v11, v12, v7))
          {
            break;
          }
        }

        v13 = i + 96;
        if (v13 == v5)
        {
          return;
        }
      }

      v14 = *(a1 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Received sim info update", v16, 2u);
      }

      v15 = *(a1 + 240);
      if (v15 == 1)
      {
        if (subscriber::isSimReady())
        {
          *(a1 + 2801) = 0;
          CellularPlanAttachProvisioningMonitorMode::updateMonitorModeState_sync(a1, 3u);
          sub_100314A14(a1, 0x100u);
          return;
        }

        v15 = *(a1 + 240);
      }

      if (v15 == 2)
      {
        if (subscriber::isPhySimDisabled())
        {
          CellularPlanAttachProvisioningMonitorMode::enableProfile_sync(a1);
        }
      }
    }
  }
}

uint64_t sub_100312784(uint64_t a1, char **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      sub_1000B26FC(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_10024064C(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t *CellularPlanAttachProvisioningMonitorMode::setAdditionalBackoffTimes_sync(uint64_t a1, char **a2)
{
  v3 = *a2;
  v4 = a2[1];
  result = (a1 + 2840);
  if (v3 != v4 && result != a2)
  {
    return sub_1000D0394(result, v3, v4, (v4 - v3) >> 3);
  }

  return result;
}

uint64_t CellularPlanAttachProvisioningMonitorMode::getSlotForIccid_sync(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 272);
  v3 = *(a1 + 280);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v5 = HIBYTE(v15);
  if (v4 == v3)
  {
    v3 = v4;
LABEL_22:
    if (v5 < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v15 >= 0)
    {
      v6 = HIBYTE(v15);
    }

    else
    {
      v6 = __p[1];
    }

    if (v15 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = v4 + 18;
    while (1)
    {
      v9 = *(v8 + 23);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v8 + 1);
      }

      if (v9 == v6)
      {
        v11 = v10 >= 0 ? v8 : *v8;
        if (!memcmp(v11, v7, v6))
        {
          break;
        }
      }

      v12 = v8 + 24;
      v8 += 42;
      if (v12 == v3)
      {
        goto LABEL_22;
      }
    }

    v3 = v8 - 18;
    if (v5 < 0)
    {
LABEL_23:
      operator delete(__p[0]);
    }
  }

  if (v3 == *(a1 + 280))
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

void CellularPlanAttachProvisioningMonitorMode::handleRegistrationStatuses_sync(CellularPlanAttachProvisioningMonitorMode *this, const RegisteredNetworkInfo *a2)
{
  v2 = *(this + 60);
  v3 = *(this + 5);
  if (v2 == 3)
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = asString();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Received registration status %s", &v5, 0xCu);
    }

    RegisteredNetworkInfo::operator=();
    CellularPlanAttachProvisioningMonitorMode::evaluateMonitorModeExit_sync(this);
  }

  else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    sub_10176B2D4(v2, v3);
  }
}

void CellularPlanAttachProvisioningMonitorMode::evaluateMonitorModeExit_sync(CellularPlanAttachProvisioningMonitorMode *this)
{
  v2 = *(this + 74);
  v3 = v2 > 0xB;
  v4 = (1 << v2) & 0x838;
  if (!v3 && v4 != 0)
  {
    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Ignore registration status on CDMA/Unknown RAT", __p, 2u);
    }

    return;
  }

  if ((*(this + 76) & 0xFFFFFFFE) == 4 && (*(this + 2802) & 1) == 0)
  {
    __p[0] = 0;
    __p[1] = 0;
    v29 = 0;
    v7 = (this + 208);
    if (*(this + 231) < 0)
    {
      sub_100005F2C(__p, *(this + 26), *(this + 27));
    }

    else
    {
      *__p = *v7;
      v29 = *(this + 28);
    }

    if (*(this + 2803) != 1)
    {
      goto LABEL_27;
    }

    ServiceMap = Registry::getServiceMap(*(this + 6));
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
    v30 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v30);
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
        goto LABEL_22;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
LABEL_22:
    (**v16)(&buf, v16, __p);
    v18 = (*(*buf + 536))(buf);
    if (*(&buf + 1))
    {
      sub_100004A34(*(&buf + 1));
    }

    if ((v17 & 1) == 0)
    {
      sub_100004A34(v15);
    }

    if ((v18 & 1) == 0)
    {
      v27 = *(this + 5);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I SIM is not authenticated", &buf, 2u);
      }

      goto LABEL_42;
    }

LABEL_27:
    v19 = *(this + 355);
    v20 = *(this + 356);
    if (v19 == v20)
    {
      v26 = *(this + 5);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        if (*(this + 231) < 0)
        {
          v7 = *v7;
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v7;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I attach mm completed : %s", &buf, 0xCu);
      }

      sub_100314A14(this, 0x101u);
    }

    else
    {
      v21 = *v19;
      v30 = *v19;
      v22 = v20 - (v19 + 1);
      if (v20 != v19 + 1)
      {
        memmove(v19, v19 + 1, v20 - (v19 + 1));
      }

      *(this + 356) = v19 + v22;
      v23 = *(this + 5);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = asString();
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I require additional attach monitor mode. rat:%s", &buf, 0xCu);
      }

      *(this + 2801) = 1;
      if (v21)
      {
        v25 = *(this + 16);
        *(this + 19) = v25;
        *(this + 19) = sub_100312FF8(this + 16, v25, &v30);
        sub_100314A14(this, 0x100u);
      }

      else
      {
        CellularPlanAttachProvisioningMonitorMode::runMonitorModeAction_sync(this);
      }
    }

LABEL_42:
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100312DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanAttachProvisioningMonitorMode::didReceiveFatalRejectFromNetwork(CellularPlanAttachProvisioningMonitorMode *this)
{
  result = CellularPlanAttachProvisioningMonitorMode::getSlotForIccid_sync(this, this + 208);
  if (result)
  {
    v3 = *(this + 347);
    if (v3 == (this + 2784))
    {
      return 0;
    }

    else
    {
      v4 = result;
      while (1)
      {
        if (*(v3 + 7) == v4)
        {
          v5 = *(this + 5);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            v6 = *(v3 + 32);
            v7 = *(v3 + 33);
            v8 = asString();
            *buf = 67109634;
            v15 = v6;
            v16 = 1024;
            v17 = v7;
            v18 = 2080;
            v19 = v8;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I NetworkRejectCauseCodePS: %d, NetworkRejectCauseCodeCS: %d, Rat: %s", buf, 0x18u);
          }

          v9 = *(v3 + 33);
          if (v9 - 2) < 7 && ((0x73u >> (v9 - 2)))
          {
            break;
          }

          v10 = *(v3 + 32);
          if (v10 - 2) < 7 && ((0x73u >> (v10 - 2)))
          {
            break;
          }

          if (CellularPlanAttachProvisioningMonitorMode::isAdditionalFatalRejectCauseCodeConfigured_sync(this, v9, v10))
          {
            break;
          }
        }

        v11 = *(v3 + 1);
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
            v12 = *(v3 + 2);
            v13 = *v12 == v3;
            v3 = v12;
          }

          while (!v13);
        }

        v3 = v12;
        if (v12 == (this + 2784))
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

char *sub_100312FF8(void *a1, char *__src, uint64_t *a3)
{
  v3 = __src;
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
    v10 = *a1;
    v11 = (&v5[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000CE3D4();
    }

    v12 = &__src[-v10];
    v13 = v6 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v27 = a1;
    if (v14)
    {
      sub_10006A8B4(a1, v14);
    }

    v24 = 0;
    v25 = 8 * v15;
    v26 = (8 * v15);
    sub_100313350(&v24, a3);
    v16 = v25;
    memcpy(v26, v3, a1[1] - v3);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v3;
    a1[1] = v3;
    v19 = v3 - v17;
    v20 = (v18 - (v3 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else
  {
    v7 = *a3;
    if (__src == v5)
    {
      *v5 = v7;
      a1[1] = v5 + 8;
    }

    else
    {
      v8 = __src + 8;
      if (v5 < 8)
      {
        v9 = a1[1];
      }

      else
      {
        *v5 = *(v5 - 1);
        v9 = v5 + 8;
      }

      a1[1] = v9;
      if (v5 != v8)
      {
        memmove(__src + 8, __src, v5 - v8);
      }

      *v3 = v7;
    }
  }

  return v3;
}

void sub_10031317C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL CellularPlanAttachProvisioningMonitorMode::isAdditionalFatalRejectCauseCodeConfigured_sync(CellularPlanAttachProvisioningMonitorMode *this, int a2, int a3)
{
  if (*(this + 2832) != 1)
  {
    return 0;
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  sub_10024064C(&__p, *(this + 351), *(this + 352), (*(this + 352) - *(this + 351)) >> 2);
  v6 = __p;
  if (__p != v15)
  {
    v7 = __p;
    while (*v7 != a2)
    {
      if (++v7 == v15)
      {
LABEL_11:
        while (*v6 != a3)
        {
          if (++v6 == v15)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_12;
      }
    }

    if (v7 == v15)
    {
      goto LABEL_11;
    }

    v8 = *(this + 5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v18 = a2;
      v9 = "#I CS reject cause code [%d] is a cb configured code";
      v10 = v8;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

LABEL_12:
  if (v6 != v15)
  {
    v11 = *(this + 5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v18 = a3;
      v9 = "#I PS reject cause code [%d] is a cb configured code";
      v10 = v11;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, 8u);
    }

LABEL_16:
    v12 = 0;
    goto LABEL_18;
  }

LABEL_17:
  v12 = 1;
LABEL_18:
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return !v12;
}

void sub_100313350(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_10006A8B4(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
  }

  *v4 = *a2;
  a1[2] = (v4 + 8);
}

void sub_1003134D0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1003135A4);
  __cxa_rethrow();
}

void sub_100313510(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100313564(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003135A4(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1003135D0(void *a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  CellularPlanAttachProvisioningMonitorMode::init_sync(*v1, (v1 + 16));
}

void sub_100313614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100313630(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100313630(uint64_t *a1)
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

    v3 = *(v1 + 8);
    if (v3)
    {
      sub_100004A34(v3);
    }

    operator delete();
  }

  return a1;
}

void sub_100313778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100313828(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E410C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100313868(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003138B4(void *a1, const xpc::object *a2)
{
  read_rest_value((*a1 + 8), a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_100313A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100313AD0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E41148;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100313B10(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100313B5C(uint64_t *a1, xpc_object_t *a2)
{
  sub_10013E998(*a1, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_100313CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100313D74(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E411C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100313DB4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100313E00(uint64_t *a1, xpc_object_t *a2)
{
  sub_1002FF8E0(*a1, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_100313EEC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E41248;
  a2[1] = v2;
  return result;
}

uint64_t sub_100313F18(uint64_t a1, xpc *this, BOOL a3)
{
  v3 = *(a1 + 8);
  result = xpc::dyn_cast_or_default(this, 0, a3);
  *v3 = result;
  return result;
}

uint64_t sub_100313F48(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100313F94(void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  operator new();
}

const char *sub_100314084(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return "Enable5GSwitchSupport";
  }

  else
  {
    return "MaxDataRateManager::Enable5GSwitchSupport_2";
  }
}

const char *sub_1003140A4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return "EnableLTESwitchSupport";
  }

  else
  {
    return "MaxDataRateManager::EnableLTESwitchSupport_2";
  }
}

const char *sub_1003140C4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return "Enable3GSwitchSupport";
  }

  else
  {
    return "MaxDataRateManager::Enable3GSwitchSupport_2";
  }
}

const char *sub_1003140F0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return "Enable5G";
  }

  else
  {
    return "MaxDataRateManager::Enable5G_2";
  }
}

const char *sub_100314110(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return "EnableLTE";
  }

  else
  {
    return "MaxDataRateManager::EnableLTE_2";
  }
}

const char *sub_100314130(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return "Enable3G";
  }

  else
  {
    return "MaxDataRateManager::Enable3G_2";
  }
}

void sub_100314188(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E413B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100314204(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E41408;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const char *sub_100314278(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return "Enable5GSwitchSupport";
  }

  else
  {
    return "MaxDataRateManager::Enable5GSwitchSupport";
  }
}

const char *sub_100314298(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return "EnableLTESwitchSupport";
  }

  else
  {
    return "MaxDataRateManager::EnableLTESwitchSupport";
  }
}

const char *sub_1003142B8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return "Enable3GSwitchSupport";
  }

  else
  {
    return "MaxDataRateManager::Enable3GSwitchSupport";
  }
}

const char *sub_1003142E4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return "Enable5G";
  }

  else
  {
    return "MaxDataRateManager::Enable5G";
  }
}

const char *sub_100314304(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return "EnableLTE";
  }

  else
  {
    return "MaxDataRateManager::EnableLTE";
  }
}

const char *sub_100314324(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return "Enable3G";
  }

  else
  {
    return "MaxDataRateManager::Enable3G";
  }
}

uint64_t sub_10031435C(uint64_t a1, NSObject **a2, void *a3, void *a4, char *a5, __int128 *a6)
{
  ctu::OsLogContext::OsLogContext(&v15, kCtLoggingSystemName, a5);
  sub_1003144A0((a1 + 8), a2, &v15);
  ctu::OsLogContext::~OsLogContext(&v15);
  *a1 = off_101E414F0;
  v11 = a3[1];
  *(a1 + 48) = *a3;
  *(a1 + 56) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a6 + 23) < 0)
  {
    sub_100005F2C((a1 + 64), *a6, *(a6 + 1));
  }

  else
  {
    v12 = *a6;
    *(a1 + 80) = *(a6 + 2);
    *(a1 + 64) = v12;
  }

  v13 = a4[1];
  *(a1 + 88) = *a4;
  *(a1 + 96) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  return a1;
}

void sub_100314460(_Unwind_Exception *a1)
{
  v3 = v1[7];
  if (v3)
  {
    sub_100004A34(v3);
  }

  CellularPlanProvisioningMonitorModeInterface::~CellularPlanProvisioningMonitorModeInterface(v1);
  ctu::OsLogLogger::~OsLogLogger((v1 + 5));
  sub_1000C0544(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_1003144A0(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_100314508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

CellularPlanProvisioningMonitorModeInterface *sub_10031452C(CellularPlanProvisioningMonitorModeInterface *this)
{
  *this = off_101E414F0;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 12);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  v5 = *(this + 7);
  if (v5)
  {
    sub_100004A34(v5);
  }

  CellularPlanProvisioningMonitorModeInterface::~CellularPlanProvisioningMonitorModeInterface(this);
  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
  return this;
}

void sub_100314604(uint64_t a1, char **a2)
{
  if (*(a1 + 104) == 1)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10176B36C(v3);
    }
  }

  else
  {
    v4 = (a1 + 128);
    if ((a1 + 128) != a2)
    {
      sub_1000D0394(v4, *a2, a2[1], (a2[1] - *a2) >> 3);
    }

    *(a1 + 152) = *(a1 + 128);
  }
}

uint64_t sub_100314678(uint64_t a1)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 40);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Monitor mode already running", buf, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Monitor Mode Start", v6, 2u);
    }

    *(a1 + 104) = 1;
    (*(*a1 + 80))(a1);
  }

  return v2 ^ 1u;
}

void sub_100314754(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CSIBOOLAsString(*(a1 + 104));
    v6 = 136315138;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Started: %s", &v6, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(*(a1 + 112) != 0);
    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Running: %s", &v6, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (*(a1 + 136) - *(a1 + 128)) >> 3;
    v6 = 134217984;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Number of Backoff: [%lu]", &v6, 0xCu);
  }
}

void sub_1003148A8(void *a1, unsigned __int16 a2)
{
  if (a2 & 0x100) != 0 && (a2)
  {
    a1[17] = a1[16];
  }

  v4 = a1[14];
  if (v4)
  {
    a1[14] = 0;
    (*(*v4 + 8))(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = a1[11];
      if (v8)
      {
        (*(*v8 + 16))(v8, a2, a1 + 8, a1);
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_1003149E0(uint64_t result, void *a2)
{
  if (*a2 != a2[1])
  {
    return (*(*result + 104))();
  }

  return result;
}

void sub_100314A14(uint64_t a1, unsigned __int16 a2)
{
  if (a2 & 0x100) != 0 && (a2)
  {
    v4 = *(*a1 + 40);

    v4();
  }

  else
  {
    v6 = *(a1 + 128);
    v5 = *(a1 + 136);
    v7 = v5 - v6;
    if (v5 == v6 || *(a1 + 152) == v5)
    {
      v12 = *(a1 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        buf = 134217984;
        *buf_4 = v7 >> 3;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I No more backoff times (Total: %lu)", &buf, 0xCu);
      }

      (*(*a1 + 40))(a1, a2);
    }

    else
    {
      v14 = 0;
      v15 = 0;
      Registry::getTimerService(&v14, *(a1 + 48));
      if (v14)
      {
        v8 = *(a1 + 120) + 1;
        *(a1 + 120) = v8;
        v9 = *(a1 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = **(a1 + 152);
          buf = 67109376;
          *buf_4 = v8;
          *&buf_4[4] = 2048;
          *&buf_4[6] = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Action failed, backing off, idx : %hhu, backoff : %lld", &buf, 0x12u);
        }

        sub_100004AA0(&buf, (a1 + 8));
        v11 = *&buf_4[4];
        if (*&buf_4[4])
        {
          atomic_fetch_add_explicit((*&buf_4[4] + 16), 1uLL, memory_order_relaxed);
          sub_100004A34(v11);
        }

        operator new();
      }

      v13 = *(a1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10176B3B0(v13);
      }

      (*(*a1 + 40))(a1, 256);
      if (v15)
      {
        sub_100004A34(v15);
      }
    }
  }
}

void sub_100314E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100314EC4(void *a1)
{
  *a1 = off_101E41618;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100314F10(void *a1)
{
  *a1 = off_101E41618;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100315000(uint64_t result, uint64_t a2)
{
  *a2 = off_101E41618;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

void sub_100315050(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100315060(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003150A0(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[2])
      {
        v5[0] = 0;
        v5[1] = 0;
        sub_100004AA0(v5, (v3 + 8));
        operator new();
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1003151B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100315200(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 120);
  if (*(*a1 + 8) == v2)
  {
    v3 = *(v1 + 112);
    *(v1 + 112) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    (*(*v1 + 80))(v1);
  }

  else
  {
    v4 = *(v1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10176B3F4(v2, v4);
    }
  }

  operator delete();
}

uint64_t sub_10031530C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 8) = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    sub_100005F2C((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v3 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v3;
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  return a1;
}

int8x8_t sub_10031538C(uint64_t a1)
{
  v6.tv_sec = 0;
  *&v6.tv_usec = 0;
  gettimeofday(&v6, 0);
  memset(&v5, 0, sizeof(v5));
  tv_sec = v6.tv_sec;
  localtime_r(&tv_sec, &v5);
  *(a1 + 64) = 1;
  *a1 = LOWORD(v5.tm_year) + 1900;
  *(a1 + 2) = LOBYTE(v5.tm_mon) + 1;
  v2 = vrev64_s16(vmovn_s32(*&v5.tm_sec));
  result = vuzp1_s8(v2, v2);
  *(a1 + 3) = result.i32[0];
  *(a1 + 8) = v6.tv_usec / 1000;
  return result;
}

uint64_t sub_10031543C(uint64_t a1, char *a2)
{
  v2 = a2;
  if (a2[23] < 0)
  {
    v2 = *a2;
  }

  v10 = 0;
  v11 = 0;
  v9 = 0;
  v8 = 0;
  result = sscanf(v2, "%04u-%02u-%02u-%02u-%02u-%02u-%03u", &v11 + 4, &v11, &v10 + 4, &v10, &v9 + 4, &v9, &v8);
  if (result == 7)
  {
    *(a1 + 64) = 1;
    v5 = v11;
    *a1 = WORD2(v11);
    *(a1 + 2) = v5;
    v6 = v10;
    *(a1 + 3) = BYTE4(v10);
    *(a1 + 4) = v6;
    v7 = v9;
    *(a1 + 5) = BYTE4(v9);
    *(a1 + 6) = v7;
    *(a1 + 8) = v8;
  }

  return result;
}

void *sub_1003154F8@<X0>(unsigned __int16 *a1@<X0>, void *a2@<X8>)
{
  v6 = 0u;
  v7 = 0u;
  *__str = 0u;
  v5 = 0u;
  snprintf(__str, 0x40uLL, "%s%04u-%02u-%02u-%02u-%02u-%02u-%03u", "log-bb-", *a1, *(a1 + 2), *(a1 + 3), *(a1 + 4), *(a1 + 5), *(a1 + 6), *(a1 + 2));
  return sub_10000501C(a2, __str);
}

void *sub_1003155AC@<X0>(unsigned __int16 *a1@<X0>, void *a2@<X8>)
{
  v6 = 0u;
  v7 = 0u;
  *__str = 0u;
  v5 = 0u;
  snprintf(__str, 0x40uLL, "%04u-%02u-%02u-%02u-%02u-%02u-%03u", *a1, *(a1 + 2), *(a1 + 3), *(a1 + 4), *(a1 + 5), *(a1 + 6), *(a1 + 2));
  return sub_10000501C(a2, __str);
}

void sub_100315658(uint64_t a1, uint64_t a2)
{
  sub_1003154F8(a1, &__p);
  std::operator+<char>();
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  HIBYTE(v6) = 0;
  LOBYTE(v5) = 0;
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1003156D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003156F0(uint64_t *a1, uint64_t a2, NSObject **a3)
{
  v5 = a1[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  if (*a3)
  {
    dispatch_retain(*a3);
  }

  sub_100489F70(&v6);
}

void sub_10031578C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_1003157B8(uint64_t a1, os_log_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v36 = a2;
  v9 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 0x8F5C28F5C28F5C29 * ((a5[1] - *a5) >> 3);
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 3);
    *buf = 134218240;
    *&buf[4] = v12;
    *&buf[12] = 2048;
    *&buf[14] = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Init CellularPlanTransferDeviceInfo with %ld blacklist plans and %ld whitelist plans", buf, 0x16u);
  }

  if (*(a3 + 240) == 1)
  {
    if (*(a3 + 56) != 1)
    {
      goto LABEL_8;
    }

    v14 = *(a3 + 87);
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a3 + 72);
    }

    if (!v14)
    {
LABEL_8:
      for (i = *(a4 + 128); i != *(a4 + 136); i += 80)
      {
        if (*i == 1)
        {
          sub_10016C728((a3 + 56), (i + 8));
          break;
        }
      }
    }

    v35[0] = a6;
    v35[1] = &v36;
    v16 = *a5;
    v17 = a5[1];
    if (*a5 != v17)
    {
      do
      {
        if (*(a3 + 56))
        {
          v18 = *(a3 + 87);
          if (v18 >= 0)
          {
            v11 = *(a3 + 87);
          }

          else
          {
            v11 = *(a3 + 72);
          }

          v19 = *(v16 + 47);
          v20 = *(v16 + 47);
          v21 = *(v16 + 32);
          if (v19 >= 0)
          {
            v21 = *(v16 + 47);
          }

          if (v11 == v21)
          {
            v22 = v18 >= 0 ? (a3 + 64) : *(a3 + 64);
            v23 = v19 >= 0 ? (v16 + 24) : *(v16 + 24);
            if (!memcmp(v22, v23, v11))
            {
              v25 = *(a3 + 200);
              v24 = *(a3 + 208);
              while (v25 != v24)
              {
                if (*(v25 + 80) == 1)
                {
                  sub_100315AEC(v35, v25, v16);
                }

                v25 += 88;
              }

              goto LABEL_63;
            }
          }
        }

        else
        {
          v20 = *(v16 + 47);
        }

        if ((v20 & 0x80) != 0)
        {
          if (*(v16 + 32))
          {
            goto LABEL_63;
          }
        }

        else if (v20)
        {
          goto LABEL_63;
        }

        if ((*(v16 + 71) & 0x8000000000000000) != 0)
        {
          if (!*(v16 + 56))
          {
            goto LABEL_63;
          }
        }

        else if (!*(v16 + 71))
        {
          goto LABEL_63;
        }

        v26 = *(a3 + 200);
        for (j = *(a3 + 208); v26 != j; v26 += 88)
        {
          if (*(v26 + 80) == 1)
          {
            memset(buf, 0, sizeof(buf));
            sub_100922314((v26 + 16), v10, v11);
            v28 = buf[23];
            if ((buf[23] & 0x80u) == 0)
            {
              v11 = buf[23];
            }

            else
            {
              v11 = *&buf[8];
            }

            v29 = *(v16 + 71);
            v30 = v29;
            if ((v29 & 0x80u) != 0)
            {
              v29 = *(v16 + 56);
            }

            if (v11 == v29)
            {
              v31 = (buf[23] & 0x80u) == 0 ? buf : *buf;
              v32 = v30 >= 0 ? (v16 + 48) : *(v16 + 48);
              if (!memcmp(v31, v32, v11))
              {
                sub_100315AEC(v35, v26, v16);
                if ((buf[23] & 0x80) == 0)
                {
                  continue;
                }

LABEL_58:
                operator delete(*buf);
                continue;
              }
            }

            if ((v28 & 0x80) != 0)
            {
              goto LABEL_58;
            }
          }
        }

LABEL_63:
        v16 += 200;
      }

      while (v16 != v17);
    }
  }

  sub_10031A4D0(a1, a3);
  sub_100315D00(a1 + 248, a4);
  sub_100315D88(a1);
}

uint64_t sub_100315AEC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 56);
  v4 = *(a2 + 64);
  if (v3 != v4)
  {
    v7 = result;
    v8 = (a3 + 72);
    do
    {
      v9 = *(a3 + 95);
      if (v9 >= 0)
      {
        v10 = *(a3 + 95);
      }

      else
      {
        v10 = *(a3 + 80);
      }

      v11 = *(v3 + 39);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v3 + 24);
      }

      if (v10 != v11)
      {
        goto LABEL_16;
      }

      v13 = v9 >= 0 ? v8 : *v8;
      v14 = v12 >= 0 ? (v3 + 16) : *(v3 + 16);
      result = memcmp(v13, v14, v10);
      if (result)
      {
        goto LABEL_16;
      }

      v15 = **v7;
      v16 = *(*v7 + 8);
      if (v15 != v16)
      {
        while (1)
        {
          v17 = *(v15 + 23);
          v18 = v17;
          if ((v17 & 0x80u) != 0)
          {
            v17 = *(v15 + 8);
          }

          if (v17 == v10)
          {
            v19 = v18 >= 0 ? v15 : *v15;
            result = memcmp(v19, v14, v10);
            if (!result)
            {
              break;
            }
          }

          v15 += 24;
          if (v15 == v16)
          {
            goto LABEL_30;
          }
        }
      }

      if (v15 == v16)
      {
LABEL_30:
        v20 = ***(v7 + 8);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v25 = v14;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Found blacklisted ICCID to exclude: %s", buf, 0xCu);
          v4 = *(a2 + 64);
        }

        if (v3 + 216 == v4)
        {
          result = v4;
          v4 = v3;
        }

        else
        {
          v21 = v3;
          do
          {
            v22 = v21 + 216;
            sub_100F11BEC(v21, v21 + 216);
            v23 = v21 + 432;
            v21 += 216;
          }

          while (v23 != v4);
          result = *(a2 + 64);
          v4 = v22;
        }

        while (result != v4)
        {
          result = sub_100E3A5D4(result - 216);
        }

        *(a2 + 64) = v4;
      }

      else
      {
LABEL_16:
        v3 += 216;
      }
    }

    while (v3 != v4);
  }

  return result;
}

void sub_100315D00(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), (a2 + 24));
  std::string::operator=((a1 + 48), (a2 + 48));
  std::string::operator=((a1 + 72), (a2 + 72));
  std::string::operator=((a1 + 96), (a2 + 96));
  if (a1 != a2)
  {
    sub_10031A59C((a1 + 128), *(a2 + 128), *(a2 + 136), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 136) - *(a2 + 128)) >> 4));
  }

  *(a1 + 120) = *(a2 + 120);
}

void sub_100315D88(uint64_t a1)
{
  v1 = *(a1 + 376);
  v2 = *(a1 + 384);
  while (v1 != v2)
  {
    v3 = *(v1 + 56);
    if (v3 != (v1 + 64))
    {
      do
      {
        sub_10092C8F4((v3 + 7), (v3 + 19));
        if (*(v3 + 79) < 0)
        {
          operator delete(v3[7]);
        }

        *(v3 + 7) = v7;
        v3[9] = v8;
        v4 = v3[1];
        if (v4)
        {
          do
          {
            v5 = v4;
            v4 = *v4;
          }

          while (v4);
        }

        else
        {
          do
          {
            v5 = v3[2];
            v6 = *v5 == v3;
            v3 = v5;
          }

          while (!v6);
        }

        v3 = v5;
      }

      while (v5 != (v1 + 64));
    }

    v1 += 80;
  }
}

uint64_t sub_100315E44(uint64_t a1, const void **a2, uint64_t a3)
{
  if (*(a1 + 240) != 1)
  {
    return 0;
  }

  v3 = *(a1 + 200);
  v4 = *(a1 + 208);
  if (v3 == v4)
  {
    return 0;
  }

  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (v6 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  while (1)
  {
    if (*(v3 + 80) == 1)
    {
      v9 = *(v3 + 56);
      v10 = *(v3 + 64);
      if (v9 != v10)
      {
        break;
      }
    }

LABEL_20:
    v3 += 88;
    if (v3 == v4)
    {
      return 0;
    }
  }

  v11 = v9 + 8;
  while (1)
  {
    data = v11[-7].__r_.__value_.__s.__data_[15];
    v13 = data;
    if (data < 0)
    {
      data = v11[-7].__r_.__value_.__l.__data_;
    }

    if (data == v7)
    {
      v14 = v13 >= 0 ? &v11[-8].__r_.__value_.__r.__words[2] : v11[-8].__r_.__value_.__r.__words[2];
      if (!memcmp(v14, v8, v7))
      {
        break;
      }
    }

    v15 = v11 + 1;
    v11 += 9;
    if (v15 == v10)
    {
      goto LABEL_20;
    }
  }

  *a3 = *&v11[-8].__r_.__value_.__l.__data_;
  std::string::operator=((a3 + 16), (v11 - 176));
  std::string::operator=((a3 + 40), (v11 - 152));
  std::string::operator=((a3 + 64), (v11 - 128));
  v17 = v11[-5].__r_.__value_.__s.__data_[20];
  *(a3 + 88) = v11[-5].__r_.__value_.__r.__words[2];
  *(a3 + 92) = v17;
  std::string::operator=((a3 + 96), v11 - 4);
  std::string::operator=((a3 + 120), v11 - 3);
  std::string::operator=((a3 + 144), v11 - 2);
  std::string::operator=((a3 + 168), v11 - 1);
  std::string::operator=((a3 + 192), v11);
  return 1;
}

uint64_t sub_100315FB0(uint64_t a1, const void **a2, uint64_t a3)
{
  if (*(a1 + 240) != 1)
  {
    return 0;
  }

  v3 = *(a1 + 200);
  v4 = *(a1 + 208);
  if (v3 != v4)
  {
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = a2[1];
    }

    if (v6 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    do
    {
      if (*(v3 + 80) == 1)
      {
        v9 = *(v3 + 56);
        v10 = *(v3 + 64);
        while (v9 != v10)
        {
          v11 = *(v9 + 39);
          v12 = v11;
          if ((v11 & 0x80u) != 0)
          {
            v11 = *(v9 + 24);
          }

          if (v11 == v7)
          {
            v13 = v12 >= 0 ? (v9 + 16) : *(v9 + 16);
            if (!memcmp(v13, v8, v7))
            {
              v15 = *(v3 + 16);
              *a3 = *v3;
              *(a3 + 16) = v15;
              std::string::operator=((a3 + 32), (v3 + 32));
              sub_1001148D8(a3 + 56, v3 + 56);
              return 1;
            }
          }

          v9 += 216;
        }
      }

      v3 += 88;
    }

    while (v3 != v4);
  }

  return 0;
}

uint64_t sub_1003160B8(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = *(a1 + 376);
  v4 = *(a1 + 384);
  if (v3 == v4)
  {
    return 0;
  }

  while (1)
  {
    v7 = sub_100007A6C(v3 + 56, a2);
    if (v3 + 64 != v7)
    {
      break;
    }

    v3 += 80;
    if (v3 == v4)
    {
      return 0;
    }
  }

  sub_10031612C(a3, v7 + 56);
  return 1;
}

__n128 sub_10031612C(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), (a2 + 24));
  std::string::operator=((a1 + 48), (a2 + 48));
  std::string::operator=((a1 + 72), (a2 + 72));
  std::string::operator=((a1 + 144), (a2 + 144));
  *(a1 + 168) = *(a2 + 168);
  sub_10012BF3C((a1 + 176), (a2 + 176));
  sub_10012BF3C((a1 + 208), (a2 + 208));
  sub_10012BF3C((a1 + 240), (a2 + 240));
  sub_10012BF3C((a1 + 272), (a2 + 272));
  sub_10012BF3C((a1 + 304), (a2 + 304));
  *(a1 + 336) = *(a2 + 336);
  std::string::operator=((a1 + 344), (a2 + 344));
  v4 = *(a2 + 370);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 370) = v4;
  sub_10012BF3C((a1 + 376), (a2 + 376));
  result = *(a2 + 408);
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 408) = result;
  return result;
}

std::string *sub_100316210(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 32);
  *a1 = *a2;
  v5 = (a1 + 32);
  std::string::operator=((a1 + 8), (a2 + 8));
  result = std::string::operator=(v5, v4);
  if (a1 != a2)
  {
    v7 = *(a2 + 56);

    return sub_10031A77C((a1 + 56), v7, (a2 + 64));
  }

  return result;
}

char *sub_1003162A0@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[240] == 1)
  {
    if (result[55] < 0)
    {
      return sub_100005F2C(a2, *(result + 4), *(result + 5));
    }

    else
    {
      *a2 = *(result + 2);
      *(a2 + 16) = *(result + 6);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t sub_1003162E0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 240);
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  if (v3 == 1)
  {
    v4 = *(result + 200);
    v5 = *(result + 208);
    while (1)
    {
      if (v4 == v5)
      {
        return result;
      }

      if (*(v4 + 80) == 1)
      {
        break;
      }

LABEL_13:
      v4 += 88;
    }

    v6 = *(v4 + 56);
    v7 = *(v4 + 64);
    while (1)
    {
      if (v6 == v7)
      {
        goto LABEL_13;
      }

      if ((*(v6 + 39) & 0x8000000000000000) != 0)
      {
        break;
      }

      if (*(v6 + 39))
      {
        goto LABEL_11;
      }

LABEL_12:
      v6 += 216;
    }

    if (!*(v6 + 24))
    {
      goto LABEL_12;
    }

LABEL_11:
    result = sub_100005BA0(a2, (v6 + 16), v6 + 16);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1003163A0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v3 = *(result + 376);
  v4 = *(result + 384);
  while (v3 != v4)
  {
    if ((*(v3 + 31) & 0x8000000000000000) != 0)
    {
      if (!*(v3 + 16))
      {
        goto LABEL_8;
      }

LABEL_7:
      result = sub_100005BA0(a2, (v3 + 8), v3 + 8);
      goto LABEL_8;
    }

    if (*(v3 + 31))
    {
      goto LABEL_7;
    }

LABEL_8:
    v3 += 80;
  }

  return result;
}

void sub_100316428(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, unint64_t a4@<X2>)
{
  v5 = *(a1 + 240);
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  *a2 = a2 + 8;
  if (v5 == 1)
  {
    v6 = *(a1 + 200);
    v7 = *(a1 + 208);
    while (v6 != v7)
    {
      if (*(v6 + 16) != 0)
      {
        sub_100922314((v6 + 16), a3, a4);
        sub_10017695C(a2, __p, __p);
        if (v9 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v6 += 88;
    }
  }
}

char *sub_10031651C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[240] & 1) != 0 && (result[56])
  {
    if (result[87] < 0)
    {
      return sub_100005F2C(a2, *(result + 8), *(result + 9));
    }

    else
    {
      *a2 = *(result + 4);
      *(a2 + 16) = *(result + 10);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

void *sub_100316560@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 343) < 0)
  {
    v2 = result[41];
    if (v2)
    {
      return sub_100005F2C(a2, result[40], v2);
    }
  }

  else if (*(result + 343))
  {
    *a2 = *(result + 20);
    *(a2 + 16) = result[42];
    return result;
  }

  return sub_10000501C(a2, "iPhone");
}

void sub_1003165A4(uint64_t a1, const void ***a2)
{
  v2 = a2;
  if (*(a1 + 240) == 1)
  {
    if (*a1 == 1)
    {
      v4 = *(a1 + 31);
      if (v4 >= 0)
      {
        v5 = *(a1 + 31);
      }

      else
      {
        v5 = *(a1 + 16);
      }

      v6 = *(a2 + 23);
      v7 = v6;
      if (v6 < 0)
      {
        v6 = a2[1];
      }

      if (v5 == v6)
      {
        v8 = *(a1 + 8);
        if (v4 >= 0)
        {
          v9 = (a1 + 8);
        }

        else
        {
          v9 = *(a1 + 8);
        }

        if (v7 < 0)
        {
          a2 = *a2;
        }

        if (!memcmp(v9, a2, v5))
        {
          if (v4 < 0)
          {
            operator delete(v8);
          }

          *a1 = 0;
        }
      }
    }

    v10 = *(a1 + 200);
    v11 = *(a1 + 208);
    while (v10 != v11)
    {
      if (*(v10 + 80) == 1)
      {
        v12 = *(v10 + 56);
        v13 = *(v10 + 64);
        if (v12 != v13)
        {
          v14 = *(v2 + 23);
          if (v14 >= 0)
          {
            v15 = *(v2 + 23);
          }

          else
          {
            v15 = v2[1];
          }

          if (v14 >= 0)
          {
            v16 = v2;
          }

          else
          {
            v16 = *v2;
          }

          while (1)
          {
            v17 = *(v12 + 39);
            v18 = v17;
            if ((v17 & 0x80u) != 0)
            {
              v17 = *(v12 + 24);
            }

            if (v17 == v15)
            {
              v19 = v18 >= 0 ? (v12 + 16) : *(v12 + 16);
              if (!memcmp(v19, v16, v15))
              {
                break;
              }
            }

            v12 += 216;
            if (v12 == v13)
            {
              v12 = v13;
              goto LABEL_55;
            }
          }

          if (v12 != v13)
          {
            v20 = v12 + 216;
            if (v12 + 216 != v13)
            {
              do
              {
                v21 = *(v20 + 39);
                if (v21 >= 0)
                {
                  v22 = *(v20 + 39);
                }

                else
                {
                  v22 = *(v20 + 24);
                }

                v23 = *(v2 + 23);
                v24 = v23;
                if (v23 < 0)
                {
                  v23 = v2[1];
                }

                if (v22 != v23 || (v21 >= 0 ? (v25 = (v20 + 16)) : (v25 = *(v20 + 16)), v24 >= 0 ? (v26 = v2) : (v26 = *v2), memcmp(v25, v26, v22)))
                {
                  sub_100F11BEC(v12, v20);
                  v12 += 216;
                }

                v20 += 216;
              }

              while (v20 != v13);
              v13 = *(v10 + 64);
            }
          }
        }

LABEL_55:
        sub_1003167A8(v10 + 56, v12, v13);
      }

      v10 += 88;
    }
  }

  v28 = *(a1 + 376);
  v27 = *(a1 + 384);
  while (v28 != v27)
  {
    sub_10031B778((v28 + 56), v2);
    v28 += 80;
  }
}

uint64_t sub_1003167A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        sub_100F11BEC(v7, v4);
        v4 += 216;
        v7 += 216;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v6 -= 216;
      sub_100E3A5D4(v6);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t sub_100316838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v137 = 0u;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v136 = *(a2 + 16);
  }

  v6 = sub_1003160B8(a1, __p, &v137);
  v7 = v6;
  if (SHIBYTE(v136) < 0)
  {
    operator delete(__p[0]);
    if ((v7 & 1) == 0)
    {
LABEL_67:
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      return sub_100111ED0(&v137);
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_67;
  }

  if ((*(a1 + 240) & 1) == 0 || (BYTE8(v149) & 1) == 0)
  {
    goto LABEL_67;
  }

  v178 = 0;
  memset(v177, 0, sizeof(v177));
  v175 = 0u;
  v176 = 0u;
  v174 = 0u;
  if (sub_100315FB0(a1, a2, &v174))
  {
    v173 = 0;
    v172 = 0u;
    v171 = 0u;
    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v166 = 0u;
    memset(v165, 0, sizeof(v165));
    if (sub_100315E44(a1, a2, v165))
    {
      v134 = 0;
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      *v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      memset(v121, 0, sizeof(v121));
      v119 = 0u;
      sub_10000C320(&v119);
      v8 = sub_10000C030(&v120, "LPA:1", 5);
      LOBYTE(v117[0]) = 36;
      v9 = sub_10000C030(v8, v117, 1);
      v10 = sub_10000C030(v9, "TR", 2);
      LOBYTE(v117[0]) = 36;
      v11 = sub_10000C030(v10, v117, 1);
      v12 = sub_10000C030(v11, "iccid:", 6);
      v13 = *(a2 + 23);
      if (v13 >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      if (v13 >= 0)
      {
        v15 = *(a2 + 23);
      }

      else
      {
        v15 = *(a2 + 8);
      }

      v16 = sub_10000C030(v12, v14, v15);
      LOBYTE(v117[0]) = 36;
      v17 = sub_10000C030(v16, v117, 1);
      v18 = sub_10000C030(v17, "mcc:", 4);
      if ((SBYTE7(v167) & 0x80u) == 0)
      {
        v19 = &v166;
      }

      else
      {
        v19 = v166;
      }

      if ((SBYTE7(v167) & 0x80u) == 0)
      {
        v20 = BYTE7(v167);
      }

      else
      {
        v20 = *(&v166 + 1);
      }

      v21 = sub_10000C030(v18, v19, v20);
      LOBYTE(v117[0]) = 36;
      v22 = sub_10000C030(v21, v117, 1);
      v23 = sub_10000C030(v22, "mnc:", 4);
      if (v168 >= 0)
      {
        v24 = &v167 + 8;
      }

      else
      {
        v24 = *(&v167 + 1);
      }

      if (v168 >= 0)
      {
        v25 = HIBYTE(v168);
      }

      else
      {
        v25 = v168;
      }

      v26 = sub_10000C030(v23, v24, v25);
      LOBYTE(v117[0]) = 36;
      v27 = sub_10000C030(v26, v117, 1);
      v28 = sub_10000C030(v27, "gid1:", 5);
      if ((SBYTE7(v170) & 0x80u) == 0)
      {
        v29 = &v169;
      }

      else
      {
        v29 = v169;
      }

      if ((SBYTE7(v170) & 0x80u) == 0)
      {
        v30 = BYTE7(v170);
      }

      else
      {
        v30 = *(&v169 + 1);
      }

      v31 = sub_10000C030(v28, v29, v30);
      LOBYTE(v117[0]) = 36;
      v32 = sub_10000C030(v31, v117, 1);
      v33 = sub_10000C030(v32, "gid2:", 5);
      if (v171 >= 0)
      {
        v34 = &v170 + 8;
      }

      else
      {
        v34 = *(&v170 + 1);
      }

      if (v171 >= 0)
      {
        v35 = HIBYTE(v171);
      }

      else
      {
        v35 = v171;
      }

      v36 = sub_10000C030(v33, v34, v35);
      LOBYTE(v117[0]) = 36;
      v37 = sub_10000C030(v36, v117, 1);
      v38 = sub_10000C030(v37, "imsi:", 5);
      if ((SBYTE7(v157) & 0x80u) == 0)
      {
        v39 = &v156;
      }

      else
      {
        v39 = v156;
      }

      if ((SBYTE7(v157) & 0x80u) == 0)
      {
        v40 = BYTE7(v157);
      }

      else
      {
        v40 = *(&v156 + 1);
      }

      v41 = sub_10000C030(v38, v39, v40);
      LOBYTE(v117[0]) = 36;
      v42 = sub_10000C030(v41, v117, 1);
      v43 = sub_10000C030(v42, "token:", 6);
      if ((SBYTE7(v149) & 0x80u) == 0)
      {
        v44 = &v148;
      }

      else
      {
        v44 = v148;
      }

      if ((SBYTE7(v149) & 0x80u) == 0)
      {
        v45 = BYTE7(v149);
      }

      else
      {
        v45 = *(&v148 + 1);
      }

      v46 = sub_10000C030(v43, v44, v45);
      LOBYTE(v117[0]) = 36;
      v47 = sub_10000C030(v46, v117, 1);
      sub_10000C030(v47, "active:", 7);
      v48 = std::ostream::operator<<();
      LOBYTE(v117[0]) = 36;
      v49 = sub_10000C030(v48, v117, 1);
      v50 = sub_10000C030(v49, "imei:", 5);
      sub_10031651C(a1, v117);
      if ((v118 & 0x80u) == 0)
      {
        v51 = v117;
      }

      else
      {
        v51 = v117[0];
      }

      if ((v118 & 0x80u) == 0)
      {
        v52 = v118;
      }

      else
      {
        v52 = v117[1];
      }

      v53 = sub_10000C030(v50, v51, v52);
      LOBYTE(v115[0]) = 36;
      v54 = sub_10000C030(v53, v115, 1);
      v55 = sub_10000C030(v54, "eid:", 4);
      sub_100922314(&v175, v56, v57);
      if ((v116 & 0x80u) == 0)
      {
        v58 = v115;
      }

      else
      {
        v58 = v115[0];
      }

      if ((v116 & 0x80u) == 0)
      {
        v59 = v116;
      }

      else
      {
        v59 = v115[1];
      }

      v60 = sub_10000C030(v55, v58, v59);
      LOBYTE(v113[0]) = 36;
      v61 = sub_10000C030(v60, v113, 1);
      sub_10000C030(v61, "ver:", 4);
      v63 = std::ostream::operator<<();
      LOBYTE(v113[0]) = 36;
      v64 = sub_10000C030(v63, v113, 1);
      v65 = sub_10000C030(v64, "sn:", 3);
      v66 = *(a1 + 319);
      if (v66 >= 0)
      {
        v67 = a1 + 296;
      }

      else
      {
        v67 = *(a1 + 296);
      }

      if (v66 >= 0)
      {
        v68 = *(a1 + 319);
      }

      else
      {
        v68 = *(a1 + 304);
      }

      v69 = sub_10000C030(v65, v67, v68);
      LOBYTE(v113[0]) = 36;
      v70 = sub_10000C030(v69, v113, 1);
      v71 = sub_10000C030(v70, "clz:", 4);
      sub_100316560(a1, v113);
      if ((v114 & 0x80u) == 0)
      {
        v72 = v113;
      }

      else
      {
        v72 = v113[0];
      }

      if ((v114 & 0x80u) == 0)
      {
        v73 = v114;
      }

      else
      {
        v73 = v113[1];
      }

      v74 = sub_10000C030(v71, v72, v73);
      LOBYTE(v111[0]) = 36;
      v75 = sub_10000C030(v74, v111, 1);
      v76 = sub_10000C030(v75, "name:", 5);
      v77 = *(a1 + 271);
      if (v77 >= 0)
      {
        v78 = a1 + 248;
      }

      else
      {
        v78 = *(a1 + 248);
      }

      if (v77 >= 0)
      {
        v79 = *(a1 + 271);
      }

      else
      {
        v79 = *(a1 + 256);
      }

      v80 = sub_10000C030(v76, v78, v79);
      LOBYTE(v111[0]) = 36;
      v81 = sub_10000C030(v80, v111, 1);
      v82 = sub_10000C030(v81, "ids:", 4);
      sub_1003162A0(a1, v111);
      if ((v112 & 0x80u) == 0)
      {
        v83 = v111;
      }

      else
      {
        v83 = v111[0];
      }

      if ((v112 & 0x80u) == 0)
      {
        v84 = v112;
      }

      else
      {
        v84 = v111[1];
      }

      v85 = sub_10000C030(v82, v83, v84);
      v164 = 36;
      v86 = sub_10000C030(v85, &v164, 1);
      v87 = sub_10000C030(v86, "lbl.txt:", 8);
      if (v139 >= 0)
      {
        v88 = &v138 + 8;
      }

      else
      {
        v88 = *(&v138 + 1);
      }

      if (v139 >= 0)
      {
        v89 = HIBYTE(v139);
      }

      else
      {
        v89 = v139;
      }

      v90 = sub_10000C030(v87, v88, v89);
      v164 = 36;
      v91 = sub_10000C030(v90, &v164, 1);
      v92 = sub_10000C030(v91, "lbl.tag:", 8);
      if ((SBYTE7(v141) & 0x80u) == 0)
      {
        v93 = &v140;
      }

      else
      {
        v93 = v140;
      }

      if ((SBYTE7(v141) & 0x80u) == 0)
      {
        v94 = BYTE7(v141);
      }

      else
      {
        v94 = *(&v140 + 1);
      }

      v95 = sub_10000C030(v92, v93, v94);
      v164 = 36;
      v96 = sub_10000C030(v95, &v164, 1);
      v97 = sub_10000C030(v96, "mdn:", 4);
      if ((SBYTE7(v138) & 0x80u) == 0)
      {
        v98 = &v137;
      }

      else
      {
        v98 = v137;
      }

      if ((SBYTE7(v138) & 0x80u) == 0)
      {
        v99 = BYTE7(v138);
      }

      else
      {
        v99 = *(&v137 + 1);
      }

      v100 = sub_10000C030(v97, v98, v99);
      v164 = 36;
      v101 = sub_10000C030(v100, &v164, 1);
      v102 = sub_10000C030(v101, "expirationTime:", 15);
      v103 = v102;
      if (!*(v102 + *(*v102 - 24) + 32))
      {
        if (BYTE8(v151))
        {
          if ((SBYTE7(v151) & 0x80u) == 0)
          {
            v104 = &v150;
          }

          else
          {
            v104 = v150;
          }

          if ((SBYTE7(v151) & 0x80u) == 0)
          {
            v105 = BYTE7(v151);
          }

          else
          {
            v105 = *(&v150 + 1);
          }

          sub_10000C030(v102, v104, v105);
        }

        else
        {
          sub_10000C030(v102, "none", 4);
        }
      }

      v164 = 36;
      v106 = sub_10000C030(v103, &v164, 1);
      v107 = sub_10000C030(v106, "carrierName:", 12);
      if (v142 >= 0)
      {
        v108 = &v141 + 8;
      }

      else
      {
        v108 = *(&v141 + 1);
      }

      if (v142 >= 0)
      {
        v109 = HIBYTE(v142);
      }

      else
      {
        v109 = v142;
      }

      sub_10000C030(v107, v108, v109);
      if (v112 < 0)
      {
        operator delete(v111[0]);
      }

      if (v114 < 0)
      {
        operator delete(v113[0]);
      }

      if (v116 < 0)
      {
        operator delete(v115[0]);
      }

      if (v118 < 0)
      {
        operator delete(v117[0]);
      }

      sub_100061574(&v119, a3);
      *&v120 = v110;
      if (SHIBYTE(v123) < 0)
      {
        operator delete(v122[1]);
      }

      std::locale::~locale(v121);
      std::iostream::~basic_iostream();
      std::ios::~ios();
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    sub_100E3A5D4(v165);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  if (v178 == 1)
  {
    *&v119 = v177 + 8;
    sub_100112120(&v119);
  }

  if (SBYTE7(v177[0]) < 0)
  {
    operator delete(v176);
  }

  return sub_100111ED0(&v137);
}

void sub_100317210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  sub_10068C9D8(&a30);
  sub_100E3A5D4(&STACK[0x360]);
  sub_100F01778(v65 - 160);
  sub_100111ED0(&a65);
  _Unwind_Resume(a1);
}

void sub_1003172C8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a62 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1003172B8);
}

void sub_1003172E0(uint64_t a1@<X0>, void *a2@<X8>, uint64_t a3@<X1>, unint64_t a4@<X2>)
{
  v5 = *(a1 + 240);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v5 == 1)
  {
    v109 = 0;
    v108 = 0;
    v110 = 0;
    sub_100316428(a1, &v108, a3, a4);
    memset(&v107, 0, sizeof(v107));
    if (v110)
    {
      std::string::operator=(&v107, (v108 + 32));
    }

    else
    {
      v111[1] = 0;
      v111[0] = 0;
      sub_100922314(v111, v7, v8);
      if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v107.__r_.__value_.__l.__data_);
      }

      v107 = __dst;
    }

    v9 = *(a1 + 200);
    v26 = *(a1 + 208);
    if (v9 != v26)
    {
      while (*(v9 + 80) != 1)
      {
LABEL_122:
        v9 += 88;
        if (v9 == v26)
        {
          goto LABEL_123;
        }
      }

      v10 = *(v9 + 56);
      v11 = *(v9 + 64);
      while (1)
      {
        if (v10 == v11)
        {
          goto LABEL_122;
        }

        if ((*(v10 + 89) & 1) == 0)
        {
          if ((*(v10 + 39) & 0x8000000000000000) != 0)
          {
            if (!*(v10 + 24))
            {
              goto LABEL_121;
            }

LABEL_16:
            memset(v118, 0, sizeof(v118));
            v117 = 0u;
            v116 = 0u;
            v115 = 0u;
            memset(__src, 0, sizeof(__src));
            *v113 = 0u;
            memset(v112, 0, sizeof(v112));
            *v111 = 0u;
            if (*(v10 + 39) < 0)
            {
              sub_100005F2C(__p, *(v10 + 16), *(v10 + 24));
            }

            else
            {
              *__p = *(v10 + 16);
              v106 = *(v10 + 32);
            }

            v12 = sub_1003160B8(a1, __p, v111);
            v13 = v12;
            if (SHIBYTE(v106) < 0)
            {
              operator delete(__p[0]);
              if ((v13 & 1) == 0)
              {
LABEL_120:
                sub_100111ED0(v111);
                goto LABEL_121;
              }
            }

            else if ((v12 & 1) == 0)
            {
              goto LABEL_120;
            }

            v104 = 0u;
            v103 = 0u;
            v101 = 0u;
            memset(v102, 0, sizeof(v102));
            v99 = 0u;
            *v100 = 0u;
            v97 = 0u;
            *v98 = 0u;
            v95 = 0u;
            v96 = 0u;
            v93 = 0u;
            *v94 = 0u;
            v91 = 0u;
            *v92 = 0u;
            v90 = 0u;
            sub_10027EF58(&v90, v118);
            sub_100931630(&v90);
            if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100005F2C(&__dst, v107.__r_.__value_.__l.__data_, v107.__r_.__value_.__l.__size_);
            }

            else
            {
              __dst = v107;
            }

            if (*(v10 + 39) < 0)
            {
              sub_100005F2C(&v28, *(v10 + 16), *(v10 + 24));
            }

            else
            {
              v14 = *(v10 + 16);
              v29 = *(v10 + 32);
              v28 = v14;
            }

            if (*(v10 + 119) < 0)
            {
              sub_100005F2C(&v30, *(v10 + 96), *(v10 + 104));
            }

            else
            {
              v30 = *(v10 + 96);
              v31 = *(v10 + 112);
            }

            if (*(v10 + 143) < 0)
            {
              sub_100005F2C(&v32, *(v10 + 120), *(v10 + 128));
            }

            else
            {
              v32 = *(v10 + 120);
              v33 = *(v10 + 136);
            }

            if (*(v10 + 167) < 0)
            {
              sub_100005F2C(&v34, *(v10 + 144), *(v10 + 152));
            }

            else
            {
              v34 = *(v10 + 144);
              v35 = *(v10 + 160);
            }

            if (*(v10 + 191) < 0)
            {
              sub_100005F2C(&v36, *(v10 + 168), *(v10 + 176));
            }

            else
            {
              v36 = *(v10 + 168);
              v37 = *(v10 + 184);
            }

            if (SHIBYTE(__src[3]) < 0)
            {
              sub_100005F2C(&v38, __src[1], __src[2]);
            }

            else
            {
              v38 = *&__src[1];
              v39 = __src[3];
            }

            if (BYTE8(v101) == 1)
            {
              if (SBYTE7(v101) < 0)
              {
                sub_100005F2C(&v40, v100[0], v100[1]);
              }

              else
              {
                v40 = *v100;
                v41 = v101;
              }
            }

            else
            {
              sub_10000501C(&v40, "");
            }

            if (SHIBYTE(v112[0]) < 0)
            {
              sub_100005F2C(&v42, v111[0], v111[1]);
            }

            else
            {
              v42 = *v111;
              v43 = v112[0];
            }

            if (*(v10 + 215) < 0)
            {
              v16 = *(v10 + 200);
              if (!v16)
              {
                goto LABEL_57;
              }

              sub_100005F2C(&v44, *(v10 + 192), v16);
            }

            else
            {
              if (*(v10 + 215))
              {
                v15 = *(v10 + 192);
                v45 = *(v10 + 208);
                v44 = v15;
                goto LABEL_58;
              }

LABEL_57:
              sub_10031651C(a1, &v44);
            }

LABEL_58:
            if (BYTE8(v93) == 1)
            {
              if (SBYTE7(v93) < 0)
              {
                sub_100005F2C(&v46, v92[0], v92[1]);
              }

              else
              {
                v46 = *v92;
                v47 = v93;
              }
            }

            else
            {
              sub_10000501C(&v46, "");
            }

            if (BYTE8(v95) == 1)
            {
              if (SBYTE7(v95) < 0)
              {
                sub_100005F2C(&v48, v94[0], v94[1]);
              }

              else
              {
                v48 = *v94;
                v49 = v95;
              }
            }

            else
            {
              sub_10000501C(&v48, "");
            }

            v50 = *v9 == 0;
            v51 = *(v10 + 90);
            v52 = BYTE1(v102[4]);
            v53 = 0;
            v54 = 0;
            if (BYTE9(v91))
            {
              v17 = BYTE8(v91);
            }

            else
            {
              v17 = 0;
            }

            v55 = v17;
            v56 = v102[4];
            v57 = BYTE2(v102[4]);
            if (BYTE1(v102[0]))
            {
              v18 = v102[0];
            }

            else
            {
              v18 = 4;
            }

            v58 = v18;
            v20 = *(a1 + 376);
            v19 = *(a1 + 384);
            while (1)
            {
              if (v20 == v19)
              {
                v21 = 0;
                goto LABEL_80;
              }

              if (sub_10016FA58((v20 + 14), (v10 + 16)))
              {
                break;
              }

              v20 += 20;
            }

            v21 = *v20;
LABEL_80:
            v59 = v21;
            if (*(a1 + 369) == 1)
            {
              v22 = *(a1 + 368);
            }

            else
            {
              v22 = 0;
            }

            v23 = 0;
            v60 = v22;
            v61 = 0;
            if (*(a1 + 240) == 1)
            {
              v23 = *(a1 + 232);
            }

            v62 = v23;
            if (*(a1 + 319) < 0)
            {
              sub_100005F2C(&v63, *(a1 + 296), *(a1 + 304));
            }

            else
            {
              v63 = *(a1 + 296);
              v64 = *(a1 + 312);
            }

            if (*(a1 + 295) < 0)
            {
              sub_100005F2C(&v65, *(a1 + 272), *(a1 + 280));
            }

            else
            {
              v65 = *(a1 + 272);
              v66 = *(a1 + 288);
            }

            sub_100316560(a1, &v67);
            if (*(a1 + 271) < 0)
            {
              sub_100005F2C(&v68, *(a1 + 248), *(a1 + 256));
            }

            else
            {
              v68 = *(a1 + 248);
              v69 = *(a1 + 264);
            }

            sub_1003162A0(a1, &v70);
            sub_10031651C(a1, &v71);
            if (*(a1 + 367) < 0)
            {
              sub_100005F2C(&v72, *(a1 + 344), *(a1 + 352));
            }

            else
            {
              v72 = *(a1 + 344);
              v73 = *(a1 + 360);
            }

            if (SHIBYTE(v112[3]) < 0)
            {
              sub_100005F2C(&v74, v112[1], v112[2]);
            }

            else
            {
              v74 = *&v112[1];
              v75 = v112[3];
            }

            if (SHIBYTE(__src[0]) < 0)
            {
              sub_100005F2C(&v76, v113[0], v113[1]);
            }

            else
            {
              v76 = *v113;
              v77 = __src[0];
            }

            v79 = 0u;
            v80 = 0u;
            v78 = 0u;
            if (BYTE8(v99) == 1)
            {
              if (SBYTE7(v99) < 0)
              {
                sub_100005F2C(&v81, v98[0], v98[1]);
              }

              else
              {
                v81 = *v98;
                v82 = v99;
              }
            }

            else
            {
              sub_10000501C(&v81, "");
            }

            if (SHIBYTE(v102[3]) < 0)
            {
              sub_100005F2C(&v83, v102[1], v102[2]);
            }

            else
            {
              v83 = *&v102[1];
              v84 = v102[3];
            }

            if (v103 == 1)
            {
              if (SHIBYTE(v102[7]) < 0)
              {
                sub_100005F2C(&v85, v102[5], v102[6]);
              }

              else
              {
                v85 = *&v102[5];
                v86 = v102[7];
              }
            }

            else
            {
              sub_10000501C(&v85, "");
            }

            v87 = WORD4(v104);
            v88 = *(&v103 + 1);
            v89 = v104;
            v24 = a2[1];
            if (v24 >= a2[2])
            {
              v25 = sub_10031AB00(a2, &__dst);
            }

            else
            {
              sub_10031AC4C(a2, a2[1], &__dst);
              v25 = v24 + 672;
            }

            a2[1] = v25;
            sub_10027DF50(&__dst);
            sub_100111F5C(&v90);
            goto LABEL_120;
          }

          if (*(v10 + 39))
          {
            goto LABEL_16;
          }
        }

LABEL_121:
        v10 += 216;
      }
    }

LABEL_123:
    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v107.__r_.__value_.__l.__data_);
    }

    sub_100009970(&v108, v109);
  }
}

void sub_100317B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  if (SLOBYTE(STACK[0x457]) < 0)
  {
    operator delete(STACK[0x440]);
  }

  sub_100009970(&STACK[0x458], STACK[0x460]);
  sub_10027B454(va);
  _Unwind_Resume(a1);
}

void sub_100317E50(std::string *a2@<X8>)
{
  memset(v15, 0, sizeof(v15));
  ctu::split_any_copy();
  if (MEMORY[0x17] < 0)
  {
    if (v15[0]->__r_.__value_.__l.__size_ != 5)
    {
      goto LABEL_10;
    }

    data = v15[0]->__r_.__value_.__l.__data_;
  }

  else
  {
    data = v15[0];
    if (MEMORY[0x17] != 5)
    {
      goto LABEL_10;
    }
  }

  v4 = data->__r_.__value_.__l.__data_;
  v5 = data->__r_.__value_.__s.__data_[4];
  if (v4 != 977358924 || v5 != 49)
  {
    goto LABEL_10;
  }

  v7 = v15[0] + 1;
  v8 = SHIBYTE(v15[0][1].__r_.__value_.__r.__words[2]);
  if (v8 < 0)
  {
    if (v15[0][1].__r_.__value_.__l.__size_ == 2)
    {
      v7 = v7->__r_.__value_.__r.__words[0];
      goto LABEL_17;
    }

LABEL_10:
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    goto LABEL_11;
  }

  if (v8 != 2)
  {
    goto LABEL_10;
  }

LABEL_17:
  if (LOWORD(v7->__r_.__value_.__l.__data_) != 21076)
  {
    goto LABEL_10;
  }

  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_1003180EC(v15, v13);
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  sub_10000501C(__p, "iccid");
  v9 = sub_10031B7D4(v13, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9)
  {
    sub_10000501C(__p, "iccid");
    v16 = __p;
    v10 = sub_10018D560(v13, __p, &unk_101802C98, &v16);
    std::string::operator=(a2, (v10 + 5));
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10018D34C(v13);
LABEL_11:
  *&v13[0] = v15;
  sub_1000087B4(v13);
}

void sub_100317FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (*(v16 + 23) < 0)
  {
    operator delete(*v16);
  }

  sub_10018D34C(&a16);
  a16 = v17 - 56;
  sub_1000087B4(&a16);
  _Unwind_Resume(a1);
}

BOOL sub_100318068(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_10013C334();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void sub_1003180EC(const std::string **a1@<X0>, unint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = std::string::find(v3, 58, 0);
      if (v5 != -1)
      {
        v6 = v5;
        memset(&v9, 0, sizeof(v9));
        std::string::basic_string(&v9, v3, 0, v5, &__p);
        memset(&__p, 0, sizeof(__p));
        std::string::basic_string(&__p, v3, v6 + 1, 0xFFFFFFFFFFFFFFFFLL, &v11);
        v11 = &v9;
        v7 = sub_10018D844(a2, &v9, &unk_101802C98, &v11, &v10);
        std::string::operator=((v7 + 5), &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v9.__r_.__value_.__l.__data_);
        }
      }

      ++v3;
    }

    while (v3 != v4);
  }
}

void sub_100318244(_BYTE *a2@<X8>)
{
  memset(v103, 0, sizeof(v103));
  ctu::split_any_copy();
  if (MEMORY[0x17] < 0)
  {
    if (v103[0]->__r_.__value_.__l.__size_ != 5)
    {
      goto LABEL_10;
    }

    data = v103[0]->__r_.__value_.__l.__data_;
  }

  else
  {
    data = v103[0];
    if (MEMORY[0x17] != 5)
    {
      goto LABEL_10;
    }
  }

  v4 = data->__r_.__value_.__l.__data_;
  v5 = data->__r_.__value_.__s.__data_[4];
  if (v4 != 977358924 || v5 != 49)
  {
    goto LABEL_10;
  }

  v7 = v103[0] + 1;
  v8 = SHIBYTE(v103[0][1].__r_.__value_.__r.__words[2]);
  if (v8 < 0)
  {
    if (v103[0][1].__r_.__value_.__l.__size_ == 2)
    {
      v7 = v7->__r_.__value_.__r.__words[0];
      goto LABEL_17;
    }

LABEL_10:
    *a2 = 0;
    a2[408] = 0;
    goto LABEL_11;
  }

  if (v8 != 2)
  {
    goto LABEL_10;
  }

LABEL_17:
  if (LOWORD(v7->__r_.__value_.__l.__data_) != 21076)
  {
    goto LABEL_10;
  }

  v102 = 0;
  memset(v101, 0, sizeof(v101));
  sub_1003180EC(v103, v101);
  memset(&__str, 0, sizeof(__str));
  sub_10000501C(__p, "iccid");
  v9 = sub_10031B8D0(v101, __p);
  if (SHIBYTE(v66[0]) < 0)
  {
    operator delete(__p[0]);
  }

  if (v9)
  {
    sub_10000501C(__p, "iccid");
    *&v104[0] = __p;
    v10 = sub_10018D560(v101, __p, &unk_101802C98, v104);
    std::string::operator=(&__str, (v10 + 5));
    if (SHIBYTE(v66[0]) < 0)
    {
      operator delete(__p[0]);
    }

    memset(&v99, 0, sizeof(v99));
    sub_10000501C(__p, "mcc");
    v11 = sub_10031B8D0(v101, __p);
    if (SHIBYTE(v66[0]) < 0)
    {
      operator delete(__p[0]);
    }

    if (v11)
    {
      sub_10000501C(__p, "mcc");
      *&v104[0] = __p;
      v12 = sub_10018D560(v101, __p, &unk_101802C98, v104);
      std::string::operator=(&v99, (v12 + 5));
      if (SHIBYTE(v66[0]) < 0)
      {
        operator delete(__p[0]);
      }

      memset(&v98, 0, sizeof(v98));
      sub_10000501C(__p, "mnc");
      v13 = sub_10031B8D0(v101, __p);
      if (SHIBYTE(v66[0]) < 0)
      {
        operator delete(__p[0]);
      }

      if (v13)
      {
        sub_10000501C(__p, "mnc");
        *&v104[0] = __p;
        v14 = sub_10018D560(v101, __p, &unk_101802C98, v104);
        std::string::operator=(&v98, (v14 + 5));
        if (SHIBYTE(v66[0]) < 0)
        {
          operator delete(__p[0]);
        }

        memset(&v97, 0, sizeof(v97));
        sub_10000501C(__p, "gid1");
        v15 = sub_10031B8D0(v101, __p);
        if (SHIBYTE(v66[0]) < 0)
        {
          operator delete(__p[0]);
        }

        if (v15)
        {
          sub_10000501C(__p, "gid1");
          *&v104[0] = __p;
          v16 = sub_10018D560(v101, __p, &unk_101802C98, v104);
          std::string::operator=(&v97, (v16 + 5));
          if (SHIBYTE(v66[0]) < 0)
          {
            operator delete(__p[0]);
          }

          memset(&v96, 0, sizeof(v96));
          sub_10000501C(__p, "gid2");
          v17 = sub_10031B8D0(v101, __p);
          if (SHIBYTE(v66[0]) < 0)
          {
            operator delete(__p[0]);
          }

          if (v17)
          {
            sub_10000501C(__p, "gid2");
            *&v104[0] = __p;
            v18 = sub_10018D560(v101, __p, &unk_101802C98, v104);
            std::string::operator=(&v96, (v18 + 5));
            if (SHIBYTE(v66[0]) < 0)
            {
              operator delete(__p[0]);
            }

            memset(&v95, 0, sizeof(v95));
            sub_10000501C(__p, "imsi");
            v19 = sub_10031B8D0(v101, __p);
            if (SHIBYTE(v66[0]) < 0)
            {
              operator delete(__p[0]);
            }

            if (v19)
            {
              sub_10000501C(__p, "imsi");
              *&v104[0] = __p;
              v20 = sub_10018D560(v101, __p, &unk_101802C98, v104);
              std::string::operator=(&v95, (v20 + 5));
              if (SHIBYTE(v66[0]) < 0)
              {
                operator delete(__p[0]);
              }

              memset(&v94, 0, sizeof(v94));
              sub_10000501C(__p, "token");
              v21 = sub_10031B8D0(v101, __p);
              if (SHIBYTE(v66[0]) < 0)
              {
                operator delete(__p[0]);
              }

              if (v21)
              {
                sub_10000501C(__p, "token");
                *&v104[0] = __p;
                v22 = sub_10018D560(v101, __p, &unk_101802C98, v104);
                std::string::operator=(&v94, (v22 + 5));
                if (SHIBYTE(v66[0]) < 0)
                {
                  operator delete(__p[0]);
                }

                memset(&v93, 0, sizeof(v93));
                sub_10000501C(__p, "eid");
                v23 = sub_10031B8D0(v101, __p);
                if (SHIBYTE(v66[0]) < 0)
                {
                  operator delete(__p[0]);
                }

                if (v23)
                {
                  sub_10000501C(__p, "eid");
                  *&v104[0] = __p;
                  v24 = sub_10018D560(v101, __p, &unk_101802C98, v104);
                  std::string::operator=(&v93, (v24 + 5));
                  if (SHIBYTE(v66[0]) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  memset(&v92, 0, sizeof(v92));
                  sub_10000501C(__p, "clz");
                  v25 = sub_10031B8D0(v101, __p);
                  if (SHIBYTE(v66[0]) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if (v25)
                  {
                    sub_10000501C(__p, "clz");
                    *&v104[0] = __p;
                    v26 = sub_10018D560(v101, __p, &unk_101802C98, v104);
                    std::string::operator=(&v92, (v26 + 5));
                    if (SHIBYTE(v66[0]) < 0)
                    {
                      operator delete(__p[0]);
                    }

                    memset(&v91, 0, sizeof(v91));
                    sub_10000501C(__p, "carrierName");
                    v27 = sub_10031B8D0(v101, __p);
                    if (SHIBYTE(v66[0]) < 0)
                    {
                      operator delete(__p[0]);
                    }

                    if (v27)
                    {
                      sub_10000501C(__p, "carrierName");
                      *&v104[0] = __p;
                      v28 = sub_10018D560(v101, __p, &unk_101802C98, v104);
                      std::string::operator=(&v91, (v28 + 5));
                      if (SHIBYTE(v66[0]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      memset(&v90, 0, sizeof(v90));
                      sub_10000501C(__p, "expirationTime");
                      v29 = sub_10031B8D0(v101, __p);
                      if (SHIBYTE(v66[0]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      if (v29)
                      {
                        sub_10000501C(__p, "expirationTime");
                        *&v104[0] = __p;
                        v30 = sub_10018D560(v101, __p, &unk_101802C98, v104);
                        std::string::operator=(&v90, (v30 + 5));
                        if (SHIBYTE(v66[0]) < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }

                      memset(&v89, 0, sizeof(v89));
                      sub_10000501C(__p, "active");
                      v31 = sub_10031B8D0(v101, __p);
                      if (SHIBYTE(v66[0]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      if (v31)
                      {
                        sub_10000501C(__p, "active");
                        *&v104[0] = __p;
                        v32 = sub_10018D560(v101, __p, &unk_101802C98, v104);
                        std::string::operator=(&v89, (v32 + 5));
                        if (SHIBYTE(v66[0]) < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }

                      memset(&v88, 0, sizeof(v88));
                      sub_10000501C(__p, "imei");
                      v33 = sub_10031B8D0(v101, __p);
                      if (SHIBYTE(v66[0]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      if (v33)
                      {
                        sub_10000501C(__p, "imei");
                        *&v104[0] = __p;
                        v34 = sub_10018D560(v101, __p, &unk_101802C98, v104);
                        std::string::operator=(&v88, (v34 + 5));
                        if (SHIBYTE(v66[0]) < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }

                      memset(&v87, 0, sizeof(v87));
                      sub_10000501C(__p, "ver");
                      v35 = sub_10031B8D0(v101, __p);
                      if (SHIBYTE(v66[0]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      if (v35)
                      {
                        sub_10000501C(__p, "ver");
                        *&v104[0] = __p;
                        v36 = sub_10018D560(v101, __p, &unk_101802C98, v104);
                        std::string::operator=(&v87, (v36 + 5));
                        if (SHIBYTE(v66[0]) < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }

                      memset(&v86, 0, sizeof(v86));
                      sub_10000501C(__p, "sn");
                      v37 = sub_10031B8D0(v101, __p);
                      if (SHIBYTE(v66[0]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      if (v37)
                      {
                        sub_10000501C(__p, "sn");
                        *&v104[0] = __p;
                        v38 = sub_10018D560(v101, __p, &unk_101802C98, v104);
                        std::string::operator=(&v86, (v38 + 5));
                        if (SHIBYTE(v66[0]) < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }

                      memset(&v85, 0, sizeof(v85));
                      sub_10000501C(__p, "name");
                      v39 = sub_10031B8D0(v101, __p);
                      if (SHIBYTE(v66[0]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      if (v39)
                      {
                        sub_10000501C(__p, "name");
                        *&v104[0] = __p;
                        v40 = sub_10018D560(v101, __p, &unk_101802C98, v104);
                        std::string::operator=(&v85, (v40 + 5));
                        if (SHIBYTE(v66[0]) < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }

                      memset(&v84, 0, sizeof(v84));
                      sub_10000501C(__p, "ids");
                      v41 = sub_10031B8D0(v101, __p);
                      if (SHIBYTE(v66[0]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      if (v41)
                      {
                        sub_10000501C(__p, "ids");
                        *&v104[0] = __p;
                        v42 = sub_10018D560(v101, __p, &unk_101802C98, v104);
                        std::string::operator=(&v84, (v42 + 5));
                        if (SHIBYTE(v66[0]) < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }

                      memset(&v83, 0, sizeof(v83));
                      sub_10000501C(__p, "lbl.txt");
                      v43 = sub_10031B8D0(v101, __p);
                      if (SHIBYTE(v66[0]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      if (v43)
                      {
                        sub_10000501C(__p, "lbl.txt");
                        *&v104[0] = __p;
                        v44 = sub_10018D560(v101, __p, &unk_101802C98, v104);
                        std::string::operator=(&v83, (v44 + 5));
                        if (SHIBYTE(v66[0]) < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }

                      memset(&v82, 0, sizeof(v82));
                      sub_10000501C(__p, "lbl.tag");
                      v45 = sub_10031B8D0(v101, __p);
                      if (SHIBYTE(v66[0]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      if (v45)
                      {
                        sub_10000501C(__p, "lbl.tag");
                        *&v104[0] = __p;
                        v46 = sub_10018D560(v101, __p, &unk_101802C98, v104);
                        std::string::operator=(&v82, (v46 + 5));
                        if (SHIBYTE(v66[0]) < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }

                      memset(&v81, 0, sizeof(v81));
                      sub_10000501C(__p, "mdn");
                      v47 = sub_10031B8D0(v101, __p);
                      if (SHIBYTE(v66[0]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      if (v47)
                      {
                        sub_10000501C(__p, "mdn");
                        *&v104[0] = __p;
                        v48 = sub_10018D560(v101, __p, &unk_101802C98, v104);
                        std::string::operator=(&v81, (v48 + 5));
                        if (SHIBYTE(v66[0]) < 0)
                        {
                          operator delete(__p[0]);
                        }
                      }

                      v49 = sub_100318068(&v89, "0");
                      v129 = 0uLL;
                      if (sub_1009222A0(&v93, &v129))
                      {
                        v80 = 0u;
                        v79 = 0u;
                        v78 = 0u;
                        v76 = 0u;
                        v77 = 0u;
                        v75 = 0u;
                        memset(v74, 0, sizeof(v74));
                        memset(v73, 0, sizeof(v73));
                        memset(v72, 0, sizeof(v72));
                        memset(v71, 0, sizeof(v71));
                        memset(v70, 0, sizeof(v70));
                        std::string::operator=(v70, &__str);
                        *&v70[24] = 259;
                        sub_1001696A4(v71, &v94);
                        sub_1001696A4(v74, &v95);
                        LOWORD(v75) = 257;
                        sub_1001696A4(v72, &v90);
                        sub_1001696A4(v73, &v91);
                        memset(v69, 0, sizeof(v69));
                        std::string::operator=(v69, &v83);
                        std::string::operator=(&v69[1], &v82);
                        memset(v68, 0, sizeof(v68));
                        memset(v67, 0, sizeof(v67));
                        memset(v66, 0, sizeof(v66));
                        *__p = 0u;
                        std::string::operator=(__p, &v81);
                        std::string::operator=(&v66[1], v69);
                        std::string::operator=(v67, &v69[1]);
                        sub_100319AF0(v68, v70);
                        v62 = 0;
                        v64 = 0u;
                        memset(v61, 0, sizeof(v61));
                        v63 = &v64;
                        v50 = v129 != 0;
                        if (v129 == 0)
                        {
                          v51 = 1;
                        }

                        else
                        {
                          v51 = 2;
                        }

                        LODWORD(v61[0]) = v51;
                        *&v104[0] = &__str;
                        v52 = sub_10031B9CC(&v63, &__str, &unk_101802C98, v104, &v106);
                        sub_10031612C((v52 + 7), __p);
                        v60 = 0;
                        v59 = 0u;
                        memset(v58, 0, sizeof(v58));
                        memset(v57, 0, sizeof(v57));
                        std::string::operator=(v57, &v85);
                        std::string::operator=(v58, &v86);
                        std::string::operator=(&v58[24], &v92);
                        sub_100319BA8(&v59, v61);
                        v128 = 0;
                        memset(v127, 0, sizeof(v127));
                        memset(v126, 0, sizeof(v126));
                        v125 = 0u;
                        memset(v124, 0, sizeof(v124));
                        v123 = 0u;
                        std::string::operator=(v124, &__str);
                        BYTE10(v125) = !v49;
                        std::string::operator=(v126, &v99);
                        std::string::operator=(&v126[1], &v98);
                        std::string::operator=(v127, &v97);
                        std::string::operator=(&v127[24], &v96);
                        memset(&v121[8], 0, 32);
                        v120 = 0;
                        memset(v122, 0, sizeof(v122));
                        v119[0] = 2 * v50;
                        v119[1] = v51;
                        *v121 = v129;
                        sub_100F11F00(v104, &v123);
                        v106 = 0uLL;
                        *&v107 = 0;
                        sub_10031B3BC(&v106, v104, &v104[13] + 8, 1uLL);
                        sub_100319BEC(v122, &v106);
                        *v117 = &v106;
                        sub_100112120(v117);
                        sub_100E3A5D4(v104);
                        v56 = 0;
                        memset(v55, 0, sizeof(v55));
                        memset(v54, 0, sizeof(v54));
                        sub_100319C6C(v55, v119);
                        if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v53 = &v87;
                        }

                        else
                        {
                          v53 = v87.__r_.__value_.__r.__words[0];
                        }

                        LODWORD(v56) = atoi(v53);
                        v118 = 0;
                        memset(v117, 0, sizeof(v117));
                        std::string::operator=(v117, &v84);
                        sub_10016C728(&v117[24], &v88);
                        memset(v116, 0, sizeof(v116));
                        v115 = 0u;
                        v114 = 0u;
                        v113 = 0u;
                        v112 = 0u;
                        v111 = 0u;
                        v110 = 0u;
                        v109 = 0u;
                        v108 = 0u;
                        v107 = 0u;
                        v106 = 0u;
                        cellplan::RemoteDeviceIdentifiers::operator=();
                        sub_100319CC4(v116 + 8, v54);
                        v105 = 0;
                        memset(v104, 0, sizeof(v104));
                        sub_100319D38(v104, &v106);
                        sub_100315D00(&v104[15] + 8, v57);
                        sub_10031B610(a2, v104);
                        sub_100111C2C(v104);
                        sub_10027E734(&v106);
                        sub_10027E6B0(v117);
                        sub_100319DE8(v54);
                        sub_100F01778(v119);
                        sub_100E3A5D4(&v123);
                        sub_100319E34(v57);
                        sub_100319EC0(v61);
                        sub_100111ED0(__p);
                        sub_1000D6F38(v69);
                        sub_100111F5C(v70);
                      }

                      else
                      {
                        *a2 = 0;
                        a2[408] = 0;
                      }

                      if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v81.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v82.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v83.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v84.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v85.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v86.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v87.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v88.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v89.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v90.__r_.__value_.__l.__data_);
                      }
                    }

                    else
                    {
                      *a2 = 0;
                      a2[408] = 0;
                    }

                    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v91.__r_.__value_.__l.__data_);
                    }
                  }

                  else
                  {
                    *a2 = 0;
                    a2[408] = 0;
                  }

                  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v92.__r_.__value_.__l.__data_);
                  }
                }

                else
                {
                  *a2 = 0;
                  a2[408] = 0;
                }

                if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v93.__r_.__value_.__l.__data_);
                }
              }

              else
              {
                *a2 = 0;
                a2[408] = 0;
              }

              if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v94.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              *a2 = 0;
              a2[408] = 0;
            }

            if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v95.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            *a2 = 0;
            a2[408] = 0;
          }

          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          *a2 = 0;
          a2[408] = 0;
        }

        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        *a2 = 0;
        a2[408] = 0;
      }

      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *a2 = 0;
      a2[408] = 0;
    }

    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v99.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a2 = 0;
    a2[408] = 0;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_10018D34C(v101);
LABEL_11:
  __p[0] = v103;
  sub_1000087B4(__p);
}

void sub_1003195D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, unint64_t *a49)
{
  sub_100319DE8(&a9);
  sub_100F01778(&STACK[0x978]);
  sub_100E3A5D4(&STACK[0x9D0]);
  sub_100319E34(&a19);
  sub_100319EC0(&a39);
  sub_100111ED0(&a49);
  sub_1000D6F38(&STACK[0x2F0]);
  sub_100111F5C(&STACK[0x320]);
  if (SLOBYTE(STACK[0x457]) < 0)
  {
    operator delete(STACK[0x440]);
  }

  if (SLOBYTE(STACK[0x46F]) < 0)
  {
    operator delete(STACK[0x458]);
  }

  if (SLOBYTE(STACK[0x487]) < 0)
  {
    operator delete(STACK[0x470]);
  }

  if (SLOBYTE(STACK[0x49F]) < 0)
  {
    operator delete(STACK[0x488]);
  }

  if (SLOBYTE(STACK[0x4B7]) < 0)
  {
    operator delete(STACK[0x4A0]);
  }

  if (SLOBYTE(STACK[0x4CF]) < 0)
  {
    operator delete(STACK[0x4B8]);
  }

  if (SLOBYTE(STACK[0x4E7]) < 0)
  {
    operator delete(STACK[0x4D0]);
  }

  if (SLOBYTE(STACK[0x4FF]) < 0)
  {
    operator delete(STACK[0x4E8]);
  }

  if (SLOBYTE(STACK[0x517]) < 0)
  {
    operator delete(STACK[0x500]);
  }

  if (SLOBYTE(STACK[0x52F]) < 0)
  {
    operator delete(STACK[0x518]);
  }

  if (SLOBYTE(STACK[0x547]) < 0)
  {
    operator delete(STACK[0x530]);
  }

  if (SLOBYTE(STACK[0x55F]) < 0)
  {
    operator delete(STACK[0x548]);
  }

  if (SLOBYTE(STACK[0x577]) < 0)
  {
    operator delete(STACK[0x560]);
  }

  if (SLOBYTE(STACK[0x58F]) < 0)
  {
    operator delete(STACK[0x578]);
  }

  if (SLOBYTE(STACK[0x5A7]) < 0)
  {
    operator delete(STACK[0x590]);
  }

  if (SLOBYTE(STACK[0x5BF]) < 0)
  {
    operator delete(STACK[0x5A8]);
  }

  if (SLOBYTE(STACK[0x5D7]) < 0)
  {
    operator delete(STACK[0x5C0]);
  }

  if (SLOBYTE(STACK[0x5EF]) < 0)
  {
    operator delete(STACK[0x5D8]);
  }

  if (SLOBYTE(STACK[0x607]) < 0)
  {
    operator delete(STACK[0x5F0]);
  }

  if (SLOBYTE(STACK[0x61F]) < 0)
  {
    operator delete(STACK[0x608]);
  }

  sub_10018D34C(&STACK[0x620]);
  a49 = &STACK[0x648];
  sub_1000087B4(&a49);
  _Unwind_Resume(a1);
}

uint64_t sub_100319AF0(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  sub_10012BF3C((a1 + 32), (a2 + 32));
  sub_10012BF3C((a1 + 64), (a2 + 64));
  sub_10012BF3C((a1 + 96), (a2 + 96));
  sub_10012BF3C((a1 + 128), (a2 + 128));
  sub_10012BF3C((a1 + 160), (a2 + 160));
  *(a1 + 192) = *(a2 + 192);
  std::string::operator=((a1 + 200), (a2 + 200));
  v4 = *(a2 + 226);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 226) = v4;
  sub_10012BF3C((a1 + 232), (a2 + 232));
  v5 = *(a2 + 264);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 264) = v5;
  return a1;
}

uint64_t sub_100319BA8(unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    v4 = sub_10031B00C(a1, a2);
  }

  else
  {
    sub_10031AF2C(a1, a2);
    v4 = v3 + 80;
  }

  a1[1] = v4;
  return v4 - 80;
}

uint64_t sub_100319BEC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_100114B30(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t sub_100319C6C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    v4 = sub_10031B4C8(a1, a2);
  }

  else
  {
    sub_100F11B6C(a1[1], a2);
    v4 = v3 + 88;
    a1[1] = v3 + 88;
  }

  a1[1] = v4;
  return v4 - 88;
}

uint64_t sub_100319CC4(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  if (a1 != a2)
  {
    sub_100169D44((a1 + 32), *(a2 + 32), *(a2 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  }

  v4 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v4;
  return a1;
}

uint64_t sub_100319D38(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 240) == 1)
  {
    sub_10016E810(a1, a2);
    cellplan::RemoteDeviceIdentifiers::operator=();
    std::string::operator=((a1 + 168), (a2 + 168));
    *(a1 + 192) = *(a2 + 192);
    if (a1 != a2)
    {
      sub_100169D44((a1 + 200), *(a2 + 200), *(a2 + 208), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 208) - *(a2 + 200)) >> 3));
    }

    v4 = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 224) = v4;
  }

  else
  {
    sub_10027E420(a1, a2);
    *(a1 + 240) = 1;
  }

  return a1;
}

uint64_t sub_100319DE8(uint64_t a1)
{
  v3 = (a1 + 32);
  sub_100112048(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100319E34(uint64_t a1)
{
  v3 = (a1 + 128);
  sub_100111D64(&v3);
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

uint64_t sub_100319EC0(uint64_t a1)
{
  sub_100111E24(a1 + 56, *(a1 + 64));
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

uint64_t sub_100319F10(uint64_t result, __int16 a2)
{
  if ((*(result + 912) & 1) == 0)
  {
    *(result + 911) = a2 | 0x100;
  }

  return result;
}

uint64_t sub_100319F28(uint64_t result, int a2)
{
  if (a2 != 70000)
  {
    *(result + 916) = a2;
    *(result + 920) = 1;
  }

  return result;
}

uint64_t sub_100319F44(uint64_t result)
{
  if (*(result + 191) < 0)
  {
    **(result + 168) = 0;
    *(result + 176) = 0;
  }

  else
  {
    *(result + 168) = 0;
    *(result + 191) = 0;
  }

  if (*(result + 167) < 0)
  {
    **(result + 144) = 0;
    *(result + 152) = 0;
  }

  else
  {
    *(result + 144) = 0;
    *(result + 167) = 0;
  }

  *(result + 274) = -1;
  *(result + 282) = -1;
  if (*(result + 343) < 0)
  {
    **(result + 320) = 0;
    *(result + 328) = 0;
  }

  else
  {
    *(result + 320) = 0;
    *(result + 343) = 0;
  }

  *(result + 592) = -1;
  *(result + 584) = -1;
  if (*(result + 623) < 0)
  {
    **(result + 600) = 0;
    *(result + 608) = 0;
  }

  else
  {
    *(result + 600) = 0;
    *(result + 623) = 0;
  }

  return result;
}

void sub_100319FE0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 25) == 1)
  {
    *(a1 + 240) = *(a2 + 24);
  }

  if (*(a2 + 56) == 1)
  {
    std::string::operator=((a1 + 168), (a2 + 32));
  }

  if (*(a2 + 88) == 1)
  {
    std::string::operator=((a1 + 192), (a2 + 64));
  }

  if (*(a2 + 152) == 1)
  {
    std::string::operator=((a1 + 216), (a2 + 128));
  }

  if (*(a2 + 184) == 1)
  {
    std::string::operator=((a1 + 144), (a2 + 160));
  }

  if (*(a2 + 193) == 1)
  {
    *(a1 + 273) = *(a2 + 192);
  }

  std::string::operator=((a1 + 248), (a2 + 200));
  *(a1 + 272) = *(a2 + 226);

  sub_10012BF3C((a1 + 1000), (a2 + 232));
}

uint64_t sub_10031A0B8(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  result = *(a1 + 440);
  if (result == *(a2 + 440))
  {
    return (sub_1000068BC((a1 + 320), (a2 + 320)) & 0x80u) != 0;
  }

  return result;
}

uint64_t sub_10031A10C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  *__p = 0u;
  v21 = 0u;
  v18 = 0u;
  memset(v19, 0, sizeof(v19));
  v17 = 0u;
  sub_10000C320(&v17);
  v4 = sub_10000C030(&v18, "Source iccid: (", 15);
  v5 = *(a1 + 343);
  if (v5 >= 0)
  {
    v6 = a1 + 320;
  }

  else
  {
    v6 = *(a1 + 320);
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 343);
  }

  else
  {
    v7 = *(a1 + 328);
  }

  v8 = sub_10000C030(v4, v6, v7);
  sub_10000C030(v8, ")", 1);
  v9 = sub_10000C030(&v18, ", Target iccid: (", 17);
  v10 = *(a1 + 647);
  if (v10 >= 0)
  {
    v11 = a1 + 624;
  }

  else
  {
    v11 = *(a1 + 624);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 647);
  }

  else
  {
    v12 = *(a1 + 632);
  }

  v13 = sub_10000C030(v9, v11, v12);
  sub_10000C030(v13, ")", 1);
  sub_10000C030(&v18, ", Waiting For TA rsp from source: ", 34);
  std::ostream::operator<<();
  v14 = sub_10000C030(&v18, ", Physical plan: ", 17);
  *(v14 + *(*v14 - 24) + 8) |= 1u;
  std::ostream::operator<<();
  sub_100061574(&v17, a2);
  *&v18 = v15;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

_BYTE *sub_10031A3B0(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[240] = 0;
  if (*(a2 + 240) == 1)
  {
    sub_10027E420(a1, a2);
    a1[240] = 1;
  }

  return a1;
}

void sub_10031A3F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 240) == 1)
  {
    sub_10027E734(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10031A418(uint64_t a1, uint64_t a2)
{
  sub_100111E24(a2 + 56, *(a2 + 64));
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 31) < 0)
  {
    v3 = *(a2 + 8);

    operator delete(v3);
  }
}

void sub_10031A47C(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_10031A418(a1, i))
  {
    i -= 80;
  }

  *(a1 + 8) = a2;
}

void sub_10031A4D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 240) == *(a2 + 240))
  {
    if (*(a1 + 240))
    {
      sub_10016E810(a1, a2);
      cellplan::RemoteDeviceIdentifiers::operator=();
      std::string::operator=((a1 + 168), (a2 + 168));
      *(a1 + 192) = *(a2 + 192);
      if (a1 != a2)
      {
        sub_100169D44((a1 + 200), *(a2 + 200), *(a2 + 208), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 208) - *(a2 + 200)) >> 3));
      }

      v4 = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 224) = v4;
    }
  }

  else if (*(a1 + 240))
  {
    sub_10027E734(a1);
    *(a1 + 240) = 0;
  }

  else
  {
    sub_10027E420(a1, a2);
    *(a1 + 240) = 1;
  }
}

void sub_10031A59C(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) < a4)
  {
    sub_10031A73C(a1);
    if (a4 <= 0x333333333333333)
    {
      v9 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
      {
        v10 = 0x333333333333333;
      }

      else
      {
        v10 = v9;
      }

      sub_10027FA58(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v11 - v8) >> 4) >= a4)
  {
    while (v6 != a3)
    {
      sub_100316210(v8, v6);
      v6 += 80;
      v8 += 80;
    }

    sub_10031A47C(a1, v8);
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        sub_100316210(v8, v14);
        v14 += 80;
        v8 += 80;
        v13 -= 80;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = sub_10027FAFC(a1, v6 + v12, a3, v11);
  }
}

void sub_10031A73C(uint64_t *a1)
{
  if (*a1)
  {
    sub_10031A47C(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t **sub_10031A77C(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          sub_10031612C((v8 + 7), (v9 + 7));
          v16 = 0;
          v10 = sub_1001355F4(v5, &v16, v15 + 4);
          sub_1000070DC(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_1000685CC(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_10031A910(&v13);
  }

  if (a2 != a3)
  {
    sub_10031A968(v5);
  }

  return result;
}

uint64_t sub_10031A910(uint64_t a1)
{
  sub_100111E24(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_100111E24(*a1, v2);
  }

  return a1;
}

void sub_10031A968(uint64_t **a1)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  sub_10027FDBC();
}

void sub_10031A9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10027FE34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10031A9F0(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    sub_1000CE3D4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 6 > v3)
  {
    v3 = v6 >> 6;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF80)
  {
    v7 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_1000DD224(a1, v7);
  }

  v14 = 0;
  v15 = v2 << 7;
  sub_100FB5048(v2 << 7, a2);
  v16 = ((v2 << 7) + 128);
  v8 = a1[1];
  v9 = (v2 << 7) + *a1 - v8;
  sub_100280664(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1002808CC(&v14);
  return v13;
}

void sub_10031AAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1002808CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10031AB00(uint64_t a1, __int128 *a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x61861861861861)
  {
    sub_1000CE3D4();
  }

  if (0x9E79E79E79E79E7ALL * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 16) - *a1) >> 5) >= 0x30C30C30C30C30)
  {
    v6 = 0x61861861861861;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10027C24C(a1, v6);
  }

  v13 = 0;
  v14 = 672 * v2;
  sub_10031AC4C(a1, 672 * v2, a2);
  v15 = 672 * v2 + 672;
  v7 = *(a1 + 8);
  v8 = 672 * v2 + *a1 - v7;
  sub_10028224C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1002822F0(&v13);
  return v12;
}

void sub_10031AC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1002822F0(va);
  _Unwind_Resume(a1);
}

__n128 sub_10031AC4C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *(a2 + 16) = *(a3 + 2);
  *a2 = v3;
  *(a3 + 8) = 0u;
  *a3 = 0;
  v4 = *(a3 + 24);
  *(a2 + 40) = *(a3 + 5);
  *(a2 + 24) = v4;
  a3[2] = 0u;
  *(a3 + 3) = 0;
  v5 = a3[3];
  *(a2 + 64) = *(a3 + 8);
  *(a2 + 48) = v5;
  *(a3 + 56) = 0u;
  *(a3 + 6) = 0;
  v6 = *(a3 + 72);
  *(a2 + 88) = *(a3 + 11);
  *(a2 + 72) = v6;
  *(a3 + 11) = 0;
  *(a3 + 72) = 0u;
  v7 = a3[6];
  *(a2 + 112) = *(a3 + 14);
  *(a2 + 96) = v7;
  *(a3 + 14) = 0;
  a3[6] = 0u;
  v8 = *(a3 + 120);
  *(a2 + 136) = *(a3 + 17);
  *(a2 + 120) = v8;
  *(a3 + 17) = 0;
  *(a3 + 120) = 0u;
  v9 = a3[9];
  *(a2 + 160) = *(a3 + 20);
  *(a2 + 144) = v9;
  *(a3 + 20) = 0;
  a3[9] = 0u;
  v10 = *(a3 + 168);
  *(a2 + 184) = *(a3 + 23);
  *(a2 + 168) = v10;
  *(a3 + 23) = 0;
  *(a3 + 168) = 0u;
  v11 = a3[12];
  *(a2 + 208) = *(a3 + 26);
  *(a2 + 192) = v11;
  *(a3 + 26) = 0;
  a3[12] = 0u;
  v12 = *(a3 + 216);
  *(a2 + 232) = *(a3 + 29);
  *(a2 + 216) = v12;
  *(a3 + 29) = 0;
  *(a3 + 216) = 0u;
  v13 = a3[15];
  *(a2 + 256) = *(a3 + 32);
  *(a2 + 240) = v13;
  *(a3 + 32) = 0;
  a3[15] = 0u;
  v14 = *(a3 + 264);
  *(a2 + 280) = *(a3 + 35);
  *(a2 + 264) = v14;
  *(a3 + 35) = 0;
  *(a3 + 264) = 0u;
  v15 = a3[18];
  *(a2 + 304) = *(a3 + 38);
  *(a2 + 288) = v15;
  v16 = *(a3 + 312);
  *(a2 + 328) = *(a3 + 41);
  *(a2 + 312) = v16;
  *(a3 + 41) = 0;
  *(a3 + 312) = 0u;
  v17 = a3[21];
  *(a2 + 352) = *(a3 + 44);
  *(a2 + 336) = v17;
  *(a3 + 44) = 0;
  a3[21] = 0u;
  v18 = *(a3 + 360);
  *(a2 + 376) = *(a3 + 47);
  *(a2 + 360) = v18;
  *(a3 + 47) = 0;
  *(a3 + 360) = 0u;
  v19 = a3[24];
  *(a2 + 400) = *(a3 + 50);
  *(a2 + 384) = v19;
  *(a3 + 50) = 0;
  a3[24] = 0u;
  v20 = *(a3 + 408);
  *(a2 + 424) = *(a3 + 53);
  *(a2 + 408) = v20;
  *(a3 + 53) = 0;
  *(a3 + 408) = 0u;
  v21 = a3[27];
  *(a2 + 448) = *(a3 + 56);
  *(a2 + 432) = v21;
  *(a3 + 56) = 0;
  a3[27] = 0u;
  v22 = *(a3 + 456);
  *(a2 + 472) = *(a3 + 59);
  *(a2 + 456) = v22;
  *(a3 + 59) = 0;
  *(a3 + 456) = 0u;
  v23 = a3[30];
  *(a2 + 496) = *(a3 + 62);
  *(a2 + 480) = v23;
  *(a3 + 62) = 0;
  a3[30] = 0u;
  v24 = *(a3 + 504);
  *(a2 + 520) = *(a3 + 65);
  *(a2 + 504) = v24;
  *(a3 + 65) = 0;
  *(a3 + 504) = 0u;
  v25 = a3[33];
  *(a2 + 544) = *(a3 + 68);
  *(a2 + 528) = v25;
  *(a3 + 68) = 0;
  a3[33] = 0u;
  v26 = *(a3 + 552);
  *(a2 + 568) = *(a3 + 71);
  *(a2 + 552) = v26;
  *(a3 + 71) = 0;
  *(a3 + 552) = 0u;
  v27 = a3[36];
  *(a2 + 592) = *(a3 + 74);
  *(a2 + 576) = v27;
  *(a3 + 74) = 0;
  a3[36] = 0u;
  v28 = *(a3 + 600);
  *(a2 + 616) = *(a3 + 77);
  *(a2 + 600) = v28;
  *(a3 + 77) = 0;
  *(a3 + 600) = 0u;
  v29 = a3[39];
  *(a2 + 640) = *(a3 + 80);
  *(a2 + 624) = v29;
  *(a3 + 80) = 0;
  a3[39] = 0u;
  result = *(a3 + 648);
  *(a2 + 664) = *(a3 + 664);
  *(a2 + 648) = result;
  return result;
}

void *sub_10031AF2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  v5 = (v4 + 8);
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C(v5, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 8);
    *(v4 + 24) = *(a2 + 24);
    *v5 = v6;
  }

  if (*(a2 + 55) < 0)
  {
    sub_100005F2C((v4 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v7 = *(a2 + 32);
    *(v4 + 48) = *(a2 + 48);
    *(v4 + 32) = v7;
  }

  result = sub_10027FC3C((v4 + 56), a2 + 56);
  *(a1 + 8) = v4 + 80;
  return result;
}

void sub_10031AFCC(_Unwind_Exception *exception_object)
{
  if (*(v3 + 31) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

uint64_t sub_10031B00C(unint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_1000CE3D4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_10027FAA4(a1, v6);
  }

  v7 = 80 * v2;
  v18 = 0;
  v19 = 80 * v2;
  v20 = 80 * v2;
  v8 = 80 * v2;
  *v8 = *a2;
  v9 = v8 + 8;
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C(v9, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v10 = *(a2 + 8);
    *(v9 + 16) = *(a2 + 24);
    *v9 = v10;
  }

  if (*(a2 + 55) < 0)
  {
    sub_100005F2C((v7 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v11 = *(a2 + 32);
    *(v7 + 48) = *(a2 + 48);
    *(v7 + 32) = v11;
  }

  sub_10027FC3C((v7 + 56), a2 + 56);
  *&v20 = v20 + 80;
  v12 = a1[1];
  v13 = v19 + *a1 - v12;
  sub_10031B1C8(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_10031B33C(&v18);
  return v17;
}

void sub_10031B184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v8 + 31) < 0)
  {
    operator delete(*v7);
  }

  sub_10031B33C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10031B1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  v14 = 0;
  if (a2 == a3)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2 + 56;
    do
    {
      v9 = v8 - 56;
      *v4 = *(v8 - 56);
      if (*(v8 - 25) < 0)
      {
        sub_100005F2C((v4 + 8), *(v8 - 48), *(v8 - 40));
      }

      else
      {
        v10 = *(v8 - 48);
        *(v4 + 24) = *(v8 - 32);
        *(v4 + 8) = v10;
      }

      if (*(v8 - 1) < 0)
      {
        sub_100005F2C((v4 + 32), *(v8 - 24), *(v8 - 16));
      }

      else
      {
        v11 = *(v8 - 24);
        *(v4 + 48) = *(v8 - 8);
        *(v4 + 32) = v11;
      }

      sub_10027FC3C((v4 + 56), v8);
      v4 = v16 + 80;
      v16 += 80;
      v8 += 80;
    }

    while (v9 + 80 != a3);
    LOBYTE(v14) = 1;
    while (v6 != a3)
    {
      sub_10031A418(a1, v6);
      v6 += 80;
    }
  }

  return sub_10028004C(v13);
}

void sub_10031B2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 31) < 0)
  {
    operator delete(*v10);
  }

  sub_10028004C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10031B33C(uint64_t a1)
{
  sub_10031B374(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10031B374(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 80;
    sub_10031A418(v5, v4 - 80);
  }
}

uint64_t *sub_10031B3BC(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001125B0(result, a4);
  }

  return result;
}

void sub_10031B424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100112120(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10031B444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_100F11F00(a4, v6);
      v6 += 216;
      a4 += 216;
      v7 -= 216;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_10031B4A4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 216;
    do
    {
      v4 = sub_100E3A5D4(v4) - 216;
      v2 += 216;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10031B4C8(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_1000CE3D4();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10011DBFC(a1, v6);
  }

  v13 = 0;
  v14 = 88 * v2;
  sub_100F11B6C(88 * v2, a2);
  v15 = (88 * v2 + 88);
  v7 = a1[1];
  v8 = 88 * v2 + *a1 - v7;
  sub_10011DC58(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10011DD24(&v13);
  return v12;
}

void sub_10031B5FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10011DD24(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10031B610(uint64_t a1, uint64_t a2)
{
  v4 = sub_10031B678(a1, a2);
  sub_10027F834((v4 + 248), (a2 + 248));
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 408) = 1;
  return a1;
}

void sub_10031B658(_Unwind_Exception *exception_object)
{
  if (*(v1 + 240) == 1)
  {
    sub_10027E734(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10031B678(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 240) = 0;
  if (*(a2 + 240) == 1)
  {
    *a1 = 0;
    if (*a2 == 1)
    {
      v4 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v4;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      *a1 = 1;
    }

    sub_10027E51C((a1 + 32), (a2 + 32));
    v5 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = v5;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    *(a2 + 168) = 0;
    v6 = *(a2 + 192);
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 192) = v6;
    *(a1 + 200) = 0;
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    *(a2 + 216) = 0;
    v7 = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 224) = v7;
    *(a1 + 240) = 1;
  }

  return a1;
}

void sub_10031B744(_Unwind_Exception *exception_object)
{
  if (*v1 == 1)
  {
    sub_1017628BC(v1);
  }

  if (v1[240] == 1)
  {
    sub_10027E734(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10031B778(uint64_t **a1, char *a2)
{
  v3 = sub_100007A6C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_1000194D8(a1, v3);
  sub_100111E80((v4 + 4));
  operator delete(v4);
  return 1;
}

const void **sub_10031B7D4(void *a1, uint64_t *a2)
{
  v4 = sub_1000D3314(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (sub_100022D3C(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

const void **sub_10031B8D0(void *a1, uint64_t *a2)
{
  v4 = sub_1000D3314(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (sub_100022D3C(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void *sub_10031B9CC(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v5 = *sub_100005C2C(a1, &v10, a2);
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_10031BA80();
  }

  return v5;
}

void sub_10031BB58(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, NSObject **a5@<X4>, void *a6@<X8>)
{
  v18 = 0;
  v19 = 0;
  (*(*a1 + 24))(&v18);
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        sub_100575908();
      }

      v13 = *a5;
      v15 = v13;
      if (v13)
      {
        dispatch_retain(v13);
      }

      sub_10081F204(a2, a4, &v15);
    }

    v11 = *a5;
    object = v11;
    if (v11)
    {
      dispatch_retain(v11);
    }

    sub_1002A4B44(&object, &v17);
  }

  if ((a3 - 4) >= 2)
  {
    v12 = *a5;
    v14 = v12;
    if (v12)
    {
      dispatch_retain(v12);
    }

    sub_1002A4EEC(&v14, &v17);
  }

  *a6 = 0;
  a6[1] = 0;
  if (v19)
  {
    sub_100004A34(v19);
  }
}

void sub_10031BCE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10031BD2C(uint64_t a1)
{
  *a1 = &off_101E41960;
  CCPreferences::create(a1);
  *(a1 + 8) = v3;
  return a1;
}

void sub_10031BD98(APNStorageFactoryInterface *this)
{
  *this = &off_101E41960;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  APNStorageFactoryInterface::~APNStorageFactoryInterface(this);
}

void sub_10031BDF8(APNStorageFactoryInterface *a1)
{
  sub_10031BD98(a1);

  operator delete();
}

uint64_t sub_10031BE30@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10031C004(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *(v1 + 8);
  if (v4)
  {
    sub_100004A34(v4);
  }

  _Unwind_Resume(a1);
}

void *sub_10031C06C(void *a1, uint64_t *a2, NSObject **a3)
{
  v6 = *a2;
  v5 = a2[1];
  *a1 = off_101E41990;
  a1[1] = v6;
  a1[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *a3;
  a1[3] = *a3;
  if (v7)
  {
    dispatch_retain(v7);
  }

  ctu::OsLogContext::OsLogContext(&v12, kCtLoggingSystemName, "apn-mgr");
  ctu::OsLogLogger::OsLogLogger((a1 + 4), &v12);
  ctu::OsLogContext::~OsLogContext(&v12);
  sub_10000501C(&__p, "apn-mgr");
  v9 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
  }

  ctu::RestModule::RestModule();
  if (v9)
  {
    dispatch_release(v9);
  }

  if (v11 < 0)
  {
    operator delete(__p);
  }

  a1[9] = 0;
  a1[8] = 0;
  a1[7] = a1 + 8;
  a1[16] = 0;
  a1[15] = 0;
  a1[13] = 0;
  a1[14] = a1 + 15;
  return a1;
}

void sub_10031C190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

  ctu::OsLogLogger::~OsLogLogger((v17 + 4));
  v19 = v17[3];
  if (v19)
  {
    dispatch_release(v19);
  }

  v20 = v17[2];
  if (v20)
  {
    sub_100004A34(v20);
  }

  APN_StorageMgrInterface::~APN_StorageMgrInterface(v17);
  _Unwind_Resume(a1);
}

void sub_10031C20C(uint64_t a1)
{
  *a1 = off_101E41990;
  sub_10006DCAC(a1 + 112, *(a1 + 120));
  sub_10031D330(a1 + 80);
  sub_10031DA8C(a1 + 56, *(a1 + 64));
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 32));
  v3 = *(a1 + 24);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    sub_100004A34(v4);
  }

  APN_StorageMgrInterface::~APN_StorageMgrInterface(a1);
}

void sub_10031C2AC(uint64_t a1)
{
  sub_10031C20C(a1);

  operator delete();
}

void sub_10031C2E4(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    operator new();
  }

  v9 = a1;
  sub_10031C4B0(&v9, *a2, 1);
  if (capabilities::ct::supportsGemini(v4))
  {
    sub_10031C4B0(&v9, *a2, 2);
  }

  v5 = *(a1 + 32);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 72);
    v8 = 1;
    *buf = &v8;
    v7 = sub_10031D3B0(a1 + 56, &v8, &unk_101802C98, buf)[7];
    *buf = 134218240;
    *&buf[4] = v6;
    v11 = 2048;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Created %zu set(s) of %zu storage instances", buf, 0x16u);
  }
}

void sub_10031C4B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v5 = *a1;
  v35[0] = 0;
  v35[1] = 0;
  v33 = 0;
  v34 = v35;
  v6 = *(v5 + 24);
  object = v6;
  v32 = 0;
  if (v6)
  {
    dispatch_retain(v6);
  }

  (*(*a2 + 16))(&v32, a2, v5 + 8, 3, a3, &object);
  if (object)
  {
    dispatch_release(object);
  }

  if (v32)
  {
    v30 = 3;
    v37 = &v30;
    v7 = sub_1002D750C(&v34, &v30, &unk_101802C98, &v37);
    v9 = v32;
    v8 = v33;
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v7[6];
    v7[5] = v9;
    v7[6] = v8;
    if (v10)
    {
      sub_100004A34(v10);
    }
  }

  if (v33)
  {
    sub_100004A34(v33);
  }

  v32 = 0;
  v33 = 0;
  v11 = *(v5 + 24);
  v29 = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  (*(*a2 + 16))(&v32, a2, v5 + 8, 1, a3, &v29);
  if (v29)
  {
    dispatch_release(v29);
  }

  if (v32)
  {
    v30 = 1;
    v37 = &v30;
    v12 = sub_1002D750C(&v34, &v30, &unk_101802C98, &v37);
    v14 = v32;
    v13 = v33;
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = v12[6];
    v12[5] = v14;
    v12[6] = v13;
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  if (v33)
  {
    sub_100004A34(v33);
  }

  v32 = 0;
  v33 = 0;
  v16 = *(v5 + 24);
  v28 = v16;
  if (v16)
  {
    dispatch_retain(v16);
  }

  (*(*a2 + 16))(&v32, a2, v5 + 8, 0, a3, &v28);
  if (v28)
  {
    dispatch_release(v28);
  }

  if (v32)
  {
    v30 = 0;
    v37 = &v30;
    v17 = sub_1002D750C(&v34, &v30, &unk_101802C98, &v37);
    v19 = v32;
    v18 = v33;
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = v17[6];
    v17[5] = v19;
    v17[6] = v18;
    if (v20)
    {
      sub_100004A34(v20);
    }
  }

  if (v33)
  {
    sub_100004A34(v33);
  }

  v32 = 0;
  v33 = 0;
  v21 = *(v5 + 24);
  v27 = v21;
  if (v21)
  {
    dispatch_retain(v21);
  }

  (*(*a2 + 16))(&v32, a2, v5 + 8, 2, a3, &v27);
  if (v27)
  {
    dispatch_release(v27);
  }

  if (v32)
  {
    v30 = 2;
    v37 = &v30;
    v22 = sub_1002D750C(&v34, &v30, &unk_101802C98, &v37);
    v24 = v32;
    v23 = v33;
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = v22[6];
    v22[5] = v24;
    v22[6] = v23;
    if (v25)
    {
      sub_100004A34(v25);
    }
  }

  if (v33)
  {
    sub_100004A34(v33);
  }

  v32 = &v36;
  v26 = sub_10031D3B0(v5 + 56, &v36, &unk_101802C98, &v32) + 5;
  if (v26 != &v34)
  {
    sub_10031D490(v26, v34, v35);
  }

  sub_10006EC28(&v34, v35[0]);
}

void sub_10031C850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *a17)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  sub_10006EC28(&a16, a17);
  _Unwind_Resume(a1);
}

void sub_10031C8CC(uint64_t a1, NSObject **a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
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
  v28 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v28);
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
  isIPhone = GestaltUtilityInterface::isIPhone(v12);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (isIPhone)
  {
    Registry::createRestModuleOneTimeUseConnection(&v26, *(a1 + 8));
    ctu::RestModule::connect();
    if (v27)
    {
      sub_100004A34(v27);
    }

    sub_10031CB34((a1 + 80), a1 + 40);
  }

  v15 = *(a1 + 56);
  v16 = (a1 + 64);
  if (v15 != (a1 + 64))
  {
    do
    {
      v17 = v15[5];
      if (v17 != v15 + 6)
      {
        do
        {
          v18 = v17[5];
          v19 = *a2;
          group = v19;
          if (v19)
          {
            dispatch_retain(v19);
            if (group)
            {
              dispatch_group_enter(group);
            }
          }

          (*(*v18 + 24))(v18, &group);
          if (group)
          {
            dispatch_group_leave(group);
            if (group)
            {
              dispatch_release(group);
            }
          }

          v20 = v17[1];
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
              v21 = v17[2];
              v22 = *v21 == v17;
              v17 = v21;
            }

            while (!v22);
          }

          v17 = v21;
        }

        while (v21 != v15 + 6);
      }

      v23 = v15[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v15[2];
          v22 = *v24 == v15;
          v15 = v24;
        }

        while (!v22);
      }

      v15 = v24;
    }

    while (v24 != v16);
  }
}

void sub_10031CAE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_group_t group, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10031CB34(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_10031DAEC(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

uint64_t sub_10031CB98(uint64_t result)
{
  v1 = *(result + 56);
  v2 = (result + 64);
  if (v1 != (result + 64))
  {
    do
    {
      v3 = v1[5];
      if (v3 != v1 + 6)
      {
        do
        {
          result = (*(*v3[5] + 32))(v3[5]);
          v4 = v3[1];
          if (v4)
          {
            do
            {
              v5 = v4;
              v4 = *v4;
            }

            while (v4);
          }

          else
          {
            do
            {
              v5 = v3[2];
              v6 = *v5 == v3;
              v3 = v5;
            }

            while (!v6);
          }

          v3 = v5;
        }

        while (v5 != v1 + 6);
      }

      v7 = v1[1];
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
        do
        {
          v8 = v1[2];
          v6 = *v8 == v1;
          v1 = v8;
        }

        while (!v6);
      }

      v1 = v8;
    }

    while (v8 != v2);
  }

  return result;
}

void sub_10031CC74(void *a1, NSObject **a2)
{
  ctu::RestModule::disconnect((a1 + 5));
  v4 = a1[7];
  v5 = a1 + 8;
  if (v4 != a1 + 8)
  {
    do
    {
      v6 = v4[5];
      if (v6 != v4 + 6)
      {
        do
        {
          v7 = v6[5];
          v8 = *a2;
          group = v8;
          if (v8)
          {
            dispatch_retain(v8);
            if (group)
            {
              dispatch_group_enter(group);
            }
          }

          (*(*v7 + 40))(v7, &group);
          if (group)
          {
            dispatch_group_leave(group);
            if (group)
            {
              dispatch_release(group);
            }
          }

          v9 = v6[1];
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
              v10 = v6[2];
              v11 = *v10 == v6;
              v6 = v10;
            }

            while (!v11);
          }

          v6 = v10;
        }

        while (v10 != v4 + 6);
      }

      v12 = v4[1];
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
          v13 = v4[2];
          v11 = *v13 == v4;
          v4 = v13;
        }

        while (!v11);
      }

      v4 = v13;
    }

    while (v13 != v5);
  }
}

void sub_10031CDAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void sub_10031CDD0(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = (a1 + 64);
  if (v2 != (a1 + 64))
  {
    do
    {
      v4 = v2[5];
      if (v4 != v2 + 6)
      {
        do
        {
          (*(*v4[5] + 56))(v4[5]);
          v5 = v4[1];
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
              v6 = v4[2];
              v7 = *v6 == v4;
              v4 = v6;
            }

            while (!v7);
          }

          v4 = v6;
        }

        while (v6 != v2 + 6);
      }

      v8 = v2[1];
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
          v9 = v2[2];
          v7 = *v9 == v2;
          v2 = v9;
        }

        while (!v7);
      }

      v2 = v9;
    }

    while (v9 != v3);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 8));
  v11 = ServiceMap;
  v12 = "16IPCU_CellProfile";
  if (("16IPCU_CellProfile" & 0x8000000000000000) != 0)
  {
    v13 = ("16IPCU_CellProfile" & 0x7FFFFFFFFFFFFFFFLL);
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
  v20 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &v20);
  if (!v16)
  {
    v18 = 0;
LABEL_23:
    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    if (!v18)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v18 = v16[3];
  v17 = v16[4];
  if (!v17)
  {
    goto LABEL_23;
  }

  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v11);
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v17);
  v19 = 0;
  if (v18)
  {
LABEL_24:
    (*(*v18 + 48))(v18);
  }

LABEL_25:
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }
}

void sub_10031CF94(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10031CFB0(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v6 = *(a1 + 64);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = a1 + 64;
  do
  {
    if (*(v6 + 32) >= a2)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < a2));
  }

  while (v6);
  if (v7 == a1 + 64 || *(v7 + 32) > a2)
  {
LABEL_8:
    v8 = *(a1 + 32);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:
      *a4 = 0;
      a4[1] = 0;
      return;
    }

    v15 = 136315394;
    v16 = subscriber::asString();
    v17 = 2080;
    v18 = sub_1002A24BC(a3);
    v9 = "#E Failed to find sim %s for storage type %s";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, &v15, 0x16u);
    goto LABEL_11;
  }

  v12 = *(v7 + 48);
  v10 = v7 + 48;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = v10;
  do
  {
    if (*(v11 + 32) >= a3)
    {
      v13 = v11;
    }

    v11 = *(v11 + 8 * (*(v11 + 32) < a3));
  }

  while (v11);
  if (v13 == v10 || *(v13 + 32) > a3)
  {
LABEL_20:
    v8 = *(a1 + 32);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v15 = 136315394;
    v16 = sub_1002A24BC(a3);
    v17 = 2080;
    v18 = subscriber::asString();
    v9 = "#E Failed to find storage type %s for sim %s";
    goto LABEL_10;
  }

  *a4 = *(v13 + 40);
  v14 = *(v13 + 48);
  a4[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }
}

double sub_10031D170@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _OWORD *a4@<X8>)
{
  sub_10031CFB0(a1, a2, a3, &v6);
  result = *&v6;
  *a4 = v6;
  return result;
}

void sub_10031D1A8(uint64_t a1, int a2, char a3, int a4)
{
  v20 = a2;
  if (a4)
  {
    return;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 8));
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
  v17[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, v17);
  if (!v12)
  {
    v14 = 0;
    goto LABEL_9;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
LABEL_9:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_10;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
LABEL_10:
  isIPhone = GestaltUtilityInterface::isIPhone(v14);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (isIPhone)
  {
    v17[0] = 1;
    v18 = 0u;
    v19 = 0;
    v17[1] = a1 + 80;
    sub_1000517E4(&v18, a1 + 112);
    v21 = &v20;
    *(sub_100051AD8(&v18, &v20, &unk_101802C98, &v21) + 32) = a3;
    sub_10031E2E4(v17);
  }
}

uint64_t sub_10031D330(uint64_t a1)
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

uint64_t *sub_10031D3B0(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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

void *sub_10031D490(void *result, int *a2, int *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = result + 1;
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v15[0] = v8 + 4;
          v15[1] = v8 + 5;
          sub_10031D604(v15, (v9 + 8));
          sub_1001723F0(v5, v14);
          v14 = v13;
          if (v13)
          {
            v13 = sub_1000685CC(v13);
          }

          v10 = *(v9 + 1);
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = *(v9 + 2);
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          v8 = v14;
          if (v14)
          {
            v11 = a2 == a3;
          }

          else
          {
            v11 = 1;
          }

          v9 = a2;
        }

        while (!v11);
      }
    }

    result = sub_10031D658(&v12);
  }

  if (a2 != a3)
  {
    sub_10031D6B0(v5, a2 + 8);
  }

  return result;
}

void sub_10031D5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10031D658(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10031D604(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  **a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = v3[1];
  *v3 = v5;
  v3[1] = v4;
  if (v6)
  {
    sub_100004A34(v6);
  }

  return a1;
}

uint64_t sub_10031D658(uint64_t a1)
{
  sub_10006EC28(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_10006EC28(*a1, v2);
  }

  return a1;
}

void sub_10031D7D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10176B470(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10031D7EC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10031D824(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10031D854(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10031D894(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      sub_100004A34(v3);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_10031D918(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  a1[2] = 0;
  v4 = a1;
  v5 = v2;
  sub_10031C2E4(v1, &v5);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return sub_10031D894(&v4);
}

void sub_10031D98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_10176B494(a10);
  }

  sub_10031D894(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10031D9AC(std::mutex *this, uint64_t *a2)
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

void sub_10031DA8C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10031DA8C(a1, *a2);
    sub_10031DA8C(a1, a2[1]);
    sub_10006EC28((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void *sub_10031DAEC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E41AA8;
  v5[1] = v3;
  v5[3] = v5;
  sub_10031E078(v5, a1);
  sub_10031D330(v5);
  return a1;
}

uint64_t sub_10031DBF0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E41AA8;
  a2[1] = v2;
  return result;
}

uint64_t sub_10031DC24(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10031DC70(uint64_t *a1, void *a2)
{
  v5 = 0;
  sub_10031DD58(a2, &v5);
  sub_10000501C(&__p, "/cc/props/ui_apns_available");
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

void sub_10031DD14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void sub_10031DD58(void *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_array_create(0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v4) == &_xpc_type_array)
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v8 = *a1;
  v6 = (a1 + 1);
  v7 = v8;
  if (v8 != v6)
  {
    do
    {
      sub_10031DEC4(v7 + 7, &value);
      xpc_array_append_value(v5, value);
      xpc_release(value);
      v9 = *(v7 + 1);
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
          v10 = *(v7 + 2);
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
    }

    while (v10 != v6);
  }

  *a2 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v5);
}

void sub_10031DEC4(unsigned int *a1@<X0>, xpc_object_t *a2@<X8>)
{
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
  v7 = *a1;
  v8 = subscriber::asString();
  ctu::rest::detail::write_enum_string_value(v7, v8, v9);
  v13 = &v17;
  v14 = "first";
  sub_10000F688(&v13, &v15, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v15);
  v15 = 0;
  v11 = xpc_BOOL_create(*(a1 + 4));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  v13 = &v17;
  v14 = "second";
  sub_10000F688(&v13, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  v10 = v17;
  *a2 = v17;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v17);
}

void *sub_10031E078(void *result, void *a2)
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

void sub_10031E2D8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_10031E2E4(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_10031E330(*(a1 + 8), (a1 + 16));
  }

  sub_10006DCAC(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_10031E330(void *a1, void *a2)
{
  if (a1[6] == a2[2])
  {
    v2 = a1[4];
    if (v2 == a1 + 5)
    {
      return 0;
    }

    v3 = *a2;
    while (1)
    {
      v4 = *(v2 + 7) == *(v3 + 7) && *(v2 + 32) == *(v3 + 32);
      if (!v4)
      {
        break;
      }

      v5 = v2[1];
      v6 = v2;
      if (v5)
      {
        do
        {
          v2 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v2 = v6[2];
          v4 = *v2 == v6;
          v6 = v2;
        }

        while (!v4);
      }

      v7 = v3[1];
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
        do
        {
          v8 = v3[2];
          v4 = *v8 == v3;
          v3 = v8;
        }

        while (!v4);
      }

      v3 = v8;
      if (v2 == a1 + 5)
      {
        return 0;
      }
    }
  }

  sub_10031E3FC(a1, a2);
  return 1;
}

uint64_t sub_10031E3FC(uint64_t a1, void *a2)
{
  sub_10004645C((a1 + 32), a2);
  result = *(a1 + 24);
  if (result)
  {
    v4 = *(*result + 48);

    return v4();
  }

  return result;
}

void sub_10031E46C(uint64_t **a2@<X1>, void *a4@<X8>)
{
  ctu::OsLogContext::OsLogContext(&buf, kCtLoggingSystemName, "cu.message");
  v6 = *&buf_4[4];
  ctu::OsLogContext::~OsLogContext(&buf);
  if (*a2 && **a2)
  {
    v7 = [[CUMessageSession alloc] initWithTemplate:**a2];
    if (v7)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = **a2;
        buf = 134218240;
        *buf_4 = v8;
        *&buf_4[8] = 2048;
        *&buf_4[10] = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "template session: %p, actual session: %p", &buf, 0x16u);
      }

      operator new();
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10176B4B8(a2, v6, v11);
    }

    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10176B534(v6, v9, v10);
    }

    *a4 = 0;
    a4[1] = 0;
  }
}

void sub_10031E728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10031E774(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_101E41B38;
  sub_10031E840((a1 + 8), "CoreUtilsMessageSessionHandler", QOS_CLASS_USER_INTERACTIVE, &kCtLoggingSystemName, &off_101E41B68);
  *a1 = off_101E41B38;
  v8 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 80) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a1 + 96) = 0;
  return a1;
}

void *sub_10031E840(void *a1, const char *a2, dispatch_qos_class_t a3, const char **a4, const char **a5)
{
  v10 = 0;
  sub_100321118(a1, a2, a3, &v10);
  v8 = v10;
  v10 = 0;

  ctu::OsLogLogger::OsLogLogger((a1 + 4), *a4, *a5);
  return a1;
}

void sub_10031E8DC(uint64_t a1)
{
  *a1 = off_101E41B38;
  [**(a1 + 64) setInvalidationHandler:0];
  [**(a1 + 64) invalidate];
  v2 = *(a1 + 88);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_100320D6C(a1 + 8);

  CoreUtilsMessageSessionHandlerInterface::~CoreUtilsMessageSessionHandlerInterface(a1);
}

void sub_10031E984(uint64_t a1)
{
  sub_10031E8DC(a1);

  operator delete();
}

id sub_10031E9BC(uint64_t a1)
{
  [**(a1 + 64) setLabel:@"com.apple.commcenter"];
  v2 = sub_100032AC8((a1 + 24));
  [**(a1 + 64) setDispatchQueue:v2];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10031EA84;
  v4[3] = &unk_101E26008;
  v4[4] = a1;
  return [**(a1 + 64) setInvalidationHandler:v4];
}

void sub_10031EA84(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 88);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + 80);
      if (v5)
      {
        v6 = sub_100032AC8((v1 + 40));
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I session got invalidated", v7, 2u);
        }

        (*(*v5 + 16))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_10031EB5C(uint64_t a1)
{
  if ((*(a1 + 96) & 1) == 0)
  {
    [**(a1 + 64) activate];
    v2 = sub_100032AC8((a1 + 40));
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I session activated", v3, 2u);
    }

    *(a1 + 96) = 1;
  }
}

id *sub_10031EBEC(id *result)
{
  if (*result[8])
  {
    v1 = result;
    v2 = sub_100032AC8(result + 5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I clearing invalidation handler", v3, 2u);
    }

    [*v1[8] setInvalidationHandler:0];
    return [*v1[8] invalidate];
  }

  return result;
}

void sub_10031EC88(uint64_t a1, __int128 *a2, id *a3, id *a4, uint64_t *a5, uint64_t a6)
{
  sub_10031EB5C(a1);
  v11 = +[NSDictionary dictionary];
  if (*a3)
  {
    v12 = *a3;

    v11 = v12;
  }

  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  std::operator+<char>();
  sub_100004AA0(buf, (a1 + 8));
  v14 = *buf;
  v13 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
  }

  if (*a5 && *(a6 + 24))
  {
    v15 = sub_100032AC8((a1 + 40));
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v25;
      if (v26 < 0)
      {
        v16 = v25[0];
      }

      v17 = *a5;
      *buf = 136315394;
      *&buf[4] = v16;
      *&buf[12] = 2048;
      *&buf[14] = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I starting timer (%s) for %lld seconds", buf, 0x16u);
    }

    *&v39[40] = 0u;
    v40 = 0u;
    v35 = a1;
    v36 = v14;
    v37 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__p, *a2, *(a2 + 1));
    }

    else
    {
      *__p = *a2;
      __p[2] = *(a2 + 2);
    }

    __p[3] = *a4;
    sub_1003212A4(v39, a6);
    *(&v40 + 1) = 0;
    operator new();
  }

  v18 = sub_100032AC8((a1 + 40));
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = a2;
    if (*(a2 + 23) < 0)
    {
      v19 = *a2;
    }

    *buf = 136315138;
    *&buf[4] = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I sending request: %s", buf, 0xCu);
  }

  v20 = a2;
  if (*(a2 + 23) < 0)
  {
    v20 = *a2;
  }

  v21 = **(a1 + 64);
  v22 = [NSString stringWithUTF8String:v20];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3321888768;
  v27[2] = sub_10031F4D0;
  v27[3] = &unk_101E41B70;
  v27[4] = a1;
  sub_1003212A4(v28, a6);
  v28[4] = v14;
  v29 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v30, *a2, *(a2 + 1));
  }

  else
  {
    v30 = *a2;
    v31 = *(a2 + 2);
  }

  v32 = 0;
  v33 = 0;
  v34 = *a4;
  [v21 sendRequestID:v22 options:0 request:v11 responseHandler:v27];

  v23 = v34;
  v34 = 0;

  if (v33)
  {
    sub_100004A34(v33);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

  sub_100287028(v28);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }
}