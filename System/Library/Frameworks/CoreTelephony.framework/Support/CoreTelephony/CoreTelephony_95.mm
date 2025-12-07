void sub_10061BB00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void MaxDataRateManager::maybeEnableLteSwitchOnMigrationForLatestDevices_sync(uint64_t a1, uint64_t a2, char a3)
{
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v14 = 0;
  v15 = 0;
  Model_sync = MaxDataRateManager::getModel_sync(a1, a2, &v14);
  if (v14)
  {
    v8 = *(v14 + 616);
    if ((capabilities::ct::latestAndGreatestDevice(Model_sync) & 1) == 0)
    {
      goto LABEL_15;
    }

    v9 = *v6;
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8 == 3)
    {
      if (a3)
      {
        if (v10)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#N Enabling LTE user preference for new device due to migration", buf, 2u);
        }

        MaxDataRateManager::setMaxDataRateMandatory_sync(a1, a2, 3, 2);
        goto LABEL_15;
      }

      if (!v10)
      {
        goto LABEL_15;
      }

      v13 = asString();
      *buf = 136315138;
      v17 = v13;
      v12 = "#I Restoring from the same device, leaving LTE switch at: %s";
    }

    else
    {
      if (!v10)
      {
        goto LABEL_15;
      }

      v11 = asString();
      *buf = 136315138;
      v17 = v11;
      v12 = "#I Leaving LTE switch migration alone, LTE user preference is: %s";
    }

    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
    goto LABEL_15;
  }

  if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    sub_101775E94();
  }

LABEL_15:
  if (v15)
  {
    sub_100004A34(v15);
  }
}

void sub_10061BD04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void MaxDataRateManager::evaluateSwitchStates_sync(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v6 = 0;
  v7 = 0;
  MaxDataRateManager::getModel_sync(a1, v2, &v6);
  if (v6)
  {
    v5[0] = 0;
    v5[1] = 0;
    Registry::getTelephonyCapabilities(&v8, *(a1 + 56));
    (*(*v8 + 32))(v8);
    sub_100313F94(v5);
  }

  if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
  {
    sub_101775EFC();
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10061D3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_group_t group, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10061FF88(&a21);
  sub_10061FF88(&a37);
  sub_10061FF88(&a53);
  sub_10061FF88(&a65);
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  _Unwind_Resume(a1);
}

BOOL sub_10061D524(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (*(a1 + 112))
  {
    v3 = a1;
    sub_10062FD74(a1 + 88, *(a1 + 8), a2);
    a1 = *(v3 + 48);
    if (a1)
    {
      LODWORD(a1) = (*(*a1 + 48))(a1);
    }

    *(v3 + 16) = a1;
  }

  else
  {
    LODWORD(a1) = *(a1 + 16);
  }

  return a1 != v2;
}

void MaxDataRateManager::handlePersonalityEvent_sync(MaxDataRateManager *this, const void **a2)
{
  v3 = *(this + 66);
  v4 = *v3;
  v5 = *(v3 + 8);
  if (*v3 != v5)
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

    while (1)
    {
      v9 = *v4;
      v10 = *(*v4 + 47);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(*v4 + 32);
      }

      if (v10 == v7)
      {
        v14 = *(v9 + 24);
        v12 = v9 + 24;
        v13 = v14;
        v15 = (v11 >= 0 ? v12 : v13);
        if (!memcmp(v15, v8, v7))
        {
          break;
        }
      }

      v4 += 2;
      if (v4 == v5)
      {
        return;
      }
    }
  }

  if (v4 != v5)
  {
    v16 = *v4;
    v17 = v4[1];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v16 && !*(v16 + 49))
    {
      MaxDataRateManager::evaluateMultiSimStatus_sync(this);
    }

    if (v17)
    {

      sub_100004A34(v17);
    }
  }
}

void sub_10061D6A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void MaxDataRateManager::evaluateMultiSimStatus_sync(uint64_t this)
{
  v2 = *(this + 528);
  v3 = *v2;
  v4 = v2[1];
  if (v3 == v4)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      if (!*(*v3 + 49))
      {
        v5 += *(*v3 + 48);
      }

      v3 += 16;
    }

    while (v3 != v4);
    v6 = v5 > 1;
  }

  v7 = *(this + 544);
  v8 = (this + 552);
  if (v7 == (this + 552))
  {
    v14 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      v10 = sub_100375B7C(v7[5] + 960);
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
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      v9 += v10;
      v7 = v12;
    }

    while (v12 != v8);
    v7 = *(this + 544);
    v14 = v9 > 1;
  }

  if (v7 != v8)
  {
    do
    {
      v15 = *(v7 + 8);
      v16 = v6 && *(this + 156) != v15 && v14;
      MaxDataRateManager::handleMsimActivated_sync(this, v16, v15);
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
          v13 = *v18 == v7;
          v7 = v18;
        }

        while (!v13);
      }

      v7 = v18;
    }

    while (v18 != v8);
  }
}

void MaxDataRateManager::handleMsimActivated_sync(uint64_t a1, int a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  MaxDataRateManager::getModel_sync(a1, a3, &v10);
  v6 = v10;
  if (v10)
  {
    sub_100375DA8(v10 + 960, a2);
    if (sub_100375DA0(v6 + 960))
    {
      sub_10061D524(v6 + 600, 1);
      v8 = 0;
      v9 = 0;
      ServiceMap = Registry::getServiceMap(*(a1 + 56));
      sub_10017AE44(&v8, ServiceMap);
      if (v8)
      {
        (*(*v8 + 352))(v8, a3, 2);
      }

      if (v9)
      {
        sub_100004A34(v9);
      }
    }
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_10061D8E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

uint64_t MaxDataRateManager::handleCarrierBundlesChanged_sync(uint64_t a1, uint64_t a2)
{
  result = rest::operator==();
  if ((result & 1) == 0)
  {
    v5 = *(a1 + 544);
    if (v5 != (a1 + 552))
    {
      v6 = (a1 + 136);
      v7 = (a2 + 8);
      do
      {
        v8 = *v6;
        if (*v6)
        {
          v9 = *(v5 + 8);
          v10 = a1 + 136;
          do
          {
            if (*(v8 + 32) >= v9)
            {
              v10 = v8;
            }

            v8 = *(v8 + 8 * (*(v8 + 32) < v9));
          }

          while (v8);
          if (v10 != v6 && v9 >= *(v10 + 32))
          {
            result = (*(**(a1 + 48) + 16))(*(a1 + 48));
            v11 = result;
            v12 = *v7;
            if (!*v7)
            {
              goto LABEL_31;
            }

            v13 = *(v5 + 8);
            v14 = a2 + 8;
            do
            {
              if (*(v12 + 32) >= v13)
              {
                v14 = v12;
              }

              v12 = *(v12 + 8 * (*(v12 + 32) < v13));
            }

            while (v12);
            if (v14 == v7 || v13 < *(v14 + 32) || (result = rest::operator==(), (result & 1) == 0))
            {
LABEL_31:
              if (*(v10 + 40))
              {
                v15 = *v11;
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v20 = asString();
                  v21 = 2080;
                  v22 = asString();
                  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Carrier Bundle setup event received (%s, %s), evaluating state of switches and user preferences", buf, 0x16u);
                }

                MaxDataRateManager::maybeEnableLteSwitchOnCbChange_sync(a1, *(v5 + 8));
              }
            }
          }
        }

        v16 = v5[1];
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = v5[2];
            v18 = *v17 == v5;
            v5 = v17;
          }

          while (!v18);
        }

        v5 = v17;
      }

      while (v17 != (a1 + 552));
    }
  }

  return result;
}

void MaxDataRateManager::maybeEnableLteSwitchOnCbChange_sync(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 48) + 16))(*(a1 + 48));
  v4[0] = 0;
  v4[1] = 0;
  Registry::getTelephonyCapabilities(buf, *(a1 + 56));
  (*(**buf + 32))(*buf);
  sub_100313F94(v4);
}

void sub_10061E054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, const void *a16)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100045C8C(&a9);
  sub_100045C8C(&a16);
  sub_100005978(&a10);
  if (a15)
  {
    sub_100004A34(a15);
  }

  _Unwind_Resume(a1);
}

void sub_10061E0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a12)
  {
    JUMPOUT(0x10061E0E0);
  }

  JUMPOUT(0x10061E0DCLL);
}

void MaxDataRateManager::evaluateSwitchStatesForSlot_sync(uint64_t a1, uint64_t a2)
{
  subscriber::makeSimSlotRange();
  v3 = v5;
  if (v5 != v6)
  {
    do
    {
      if (v7(*v3))
      {
        break;
      }

      ++v3;
    }

    while (v3 != v6);
    while (v3 != v6)
    {
      v4 = *v3++;
      MaxDataRateManager::evaluateSwitchStates_sync(a1, v4);
      while (v3 != v6 && (v7(*v3) & 1) == 0)
      {
        ++v3;
      }
    }
  }
}

void MaxDataRateManager::handleDeviceTypesChanged_sync(uint64_t a1, void *a2)
{
  if (a2[2] == *(a1 + 120))
  {
    v3 = *a2;
    if (*a2 == a2 + 1)
    {
      return;
    }

    v4 = *(a1 + 104);
    v5 = v4;
    while (1)
    {
      v6 = *(v3 + 7) == *(v5 + 7) && *(v3 + 8) == *(v5 + 8);
      if (!v6)
      {
        break;
      }

      v7 = v3[1];
      v8 = v3;
      if (v7)
      {
        do
        {
          v3 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v3 = v8[2];
          v6 = *v3 == v8;
          v8 = v3;
        }

        while (!v6);
      }

      v9 = v5[1];
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
          v10 = v5[2];
          v6 = *v10 == v5;
          v5 = v10;
        }

        while (!v6);
      }

      v5 = v10;
      if (v3 == a2 + 1)
      {
        return;
      }
    }
  }

  else
  {
    v4 = *(a1 + 104);
  }

  v11 = (a1 + 112);
  if (v4 != (a1 + 112))
  {
    v12 = a2 + 1;
    do
    {
      v13 = *v12;
      v14 = *(v4 + 7);
      if (!*v12)
      {
        goto LABEL_32;
      }

      v15 = v12;
      do
      {
        if (*(v13 + 28) >= v14)
        {
          v15 = v13;
        }

        v13 = *(v13 + 8 * (*(v13 + 28) < v14));
      }

      while (v13);
      if (v15 == v12 || v14 < *(v15 + 7) || *(v15 + 8) != *(v4 + 8))
      {
LABEL_32:
        v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v4 + 7));
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = sub_100072578(*(v4 + 8));
          *buf = 136315138;
          v21 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Device type changed to %s, evaluating state of switches", buf, 0xCu);
        }

        MaxDataRateManager::evaluateSwitchStatesForSlot_sync(a1, v14);
      }

      v18 = v4[1];
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
          v19 = v4[2];
          v6 = *v19 == v4;
          v4 = v19;
        }

        while (!v6);
      }

      v4 = v19;
    }

    while (v19 != v11);
  }
}

uint64_t MaxDataRateManager::is5GSwitchSupported_sync(uint64_t a1)
{
  v2 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  cf[0] = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, cf);
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
      if (!v11)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
  if (!v11)
  {
LABEL_7:
    v13 = *v2;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(cf[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Unable to get the CapabilitiesHandler when enabling 5G switch", cf, 2u);
    }

    v14 = 0;
    if ((v12 & 1) == 0)
    {
      goto LABEL_10;
    }

    return v14;
  }

LABEL_14:
  if (!(*(*v11 + 16))(v11))
  {
    v14 = 1;
    if (v12)
    {
      return v14;
    }

    goto LABEL_10;
  }

  (*(**(a1 + 592) + 96))(cf);
  v16 = cf[0];
  v22 = 0;
  if (cf[0] && (v17 = CFGetTypeID(cf[0]), v17 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(&v22, v16, v18);
    v19 = v22;
    sub_10000A1EC(cf);
    if (v19)
    {
      v20 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(cf[0]) = 0;
        v14 = 2;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Show5GSwitch is set to true, 5G switch is therefore supported", cf, 2u);
        if (v12)
        {
          return v14;
        }
      }

      else
      {
        v14 = 2;
        if (v12)
        {
          return v14;
        }
      }

      goto LABEL_10;
    }
  }

  else
  {
    sub_10000A1EC(cf);
  }

  v21 = *v2;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(cf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I 5G switch is not supported", cf, 2u);
  }

  v14 = 3;
  if ((v12 & 1) == 0)
  {
LABEL_10:
    sub_100004A34(v10);
  }

  return v14;
}

void sub_10061E6A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MaxDataRateManager::isLTESwitchSupported_sync(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v5 = MaxDataRateManager::carrierAndDeviceSupportLTE_sync(a1, v2);
  if ((v5 & 0x100) == 0)
  {
    return 0;
  }

  if ((v5 & 1) == 0)
  {
    return 1;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  cf[0] = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, cf);
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
        goto LABEL_10;
      }

LABEL_17:
      if ((*(*v15 + 16))(v15))
      {
        (*(**(a1 + 592) + 96))(cf);
        v18 = cf[0];
        v35 = 0;
        if (cf[0])
        {
          v19 = CFGetTypeID(cf[0]);
          if (v19 == CFBooleanGetTypeID())
          {
            ctu::cf::assign(&v35, v18, v20);
          }
        }

        v21 = v35;
        sub_10000A1EC(cf);
        if (v21 == 1)
        {
          v22 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(cf[0]) = 0;
            v23 = "#I Show3GSwitchWith5G is set to true, 4G switch is therefore supported";
            goto LABEL_24;
          }

LABEL_47:
          v6 = 2;
          if (v16)
          {
            return v6;
          }

          goto LABEL_45;
        }

        (*(**(a1 + 592) + 96))(cf);
        v24 = cf[0];
        v35 = 0;
        if (cf[0] && (v25 = CFGetTypeID(cf[0]), v25 == CFBooleanGetTypeID()))
        {
          ctu::cf::assign(&v35, v24, v26);
          v27 = v35;
          sub_10000A1EC(cf);
          if (v27)
          {
            v22 = *v4;
            if (!os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_47;
            }

            LOWORD(cf[0]) = 0;
            v23 = "#I Show4GSwitchWith5G is set to true, 4G switch is therefore supported";
            goto LABEL_24;
          }
        }

        else
        {
          sub_10000A1EC(cf);
        }
      }

      if (MaxDataRateManager::is5GSwitchSupported_sync(a1) == 2)
      {
        v28 = *v4;
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_44;
        }

        LOWORD(cf[0]) = 0;
        v29 = "#I 5G switch is set to true, 4G switch is therefore not supported";
      }

      else
      {
        (*(**(a1 + 592) + 96))(cf);
        v30 = cf[0];
        v35 = 0;
        if (cf[0] && (v31 = CFGetTypeID(cf[0]), v31 == CFBooleanGetTypeID()))
        {
          ctu::cf::assign(&v35, v30, v32);
          v33 = v35;
          sub_10000A1EC(cf);
          if (v33)
          {
            v22 = *v4;
            if (!os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_47;
            }

            LOWORD(cf[0]) = 0;
            v23 = "#I Show4GSwitch is set to true, 4G switch is therefore supported";
LABEL_24:
            v6 = 2;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, cf, 2u);
            if (v16)
            {
              return v6;
            }

            goto LABEL_45;
          }
        }

        else
        {
          sub_10000A1EC(cf);
        }

        v28 = *v4;
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
LABEL_44:
          v6 = 3;
          if (v16)
          {
            return v6;
          }

LABEL_45:
          sub_100004A34(v14);
          return v6;
        }

        LOWORD(cf[0]) = 0;
        v29 = "#I 4G switch is not supported";
      }

      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v29, cf, 2u);
      goto LABEL_44;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
  if (v15)
  {
    goto LABEL_17;
  }

LABEL_10:
  v17 = *v4;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    LOWORD(cf[0]) = 0;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Unable to get the CapabilitiesHandler, support for LTE switch is therefore unknown", cf, 2u);
  }

  v6 = 0;
  if ((v16 & 1) == 0)
  {
    goto LABEL_45;
  }

  return v6;
}

void sub_10061EB6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MaxDataRateManager::is3GSwitchSupported_sync(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v5 = v4;
  v6 = *(a1 + 112);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = a1 + 112;
  do
  {
    if (*(v6 + 28) >= a2)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 28) < a2));
  }

  while (v6);
  if (v7 == a1 + 112 || *(v7 + 28) > a2)
  {
    goto LABEL_8;
  }

  v11 = *(v7 + 32);
  if (v11 == 3)
  {
    v12 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(cf) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Device is CDMA core, not allowing 3G switch", &cf, 2u);
    }

    return 1;
  }

  if ((v11 - 1) >= 2)
  {
LABEL_8:
    v8 = *v4;
    v9 = 0;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(cf) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Device type is still unknown, not allowing 3G switch", &cf, 2u);
      return 0;
    }

    return v9;
  }

  Registry::getTelephonyCapabilities(&cf, *(a1 + 56));
  v13 = (*(*cf + 16))(cf);
  if (v57)
  {
    sub_100004A34(v57);
  }

  if ((v13 & 1) == 0)
  {
    v25 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      return 3;
    }

    LOWORD(cf) = 0;
    v26 = "#I iPad device, not supporting 3G switch";
LABEL_29:
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v26, &cf, 2u);
    return 3;
  }

  v14 = *(a1 + 568);
  if (*(v14 + 16) == 2 && *(v14 + 136) != 2)
  {
    v25 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      return 3;
    }

    LOWORD(cf) = 0;
    v26 = "#I legacy RATs disabled";
    goto LABEL_29;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  cf = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, &cf);
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
      goto LABEL_33;
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v16);
  v22 = 0;
  v24 = 1;
LABEL_33:
  if (!v23)
  {
    v33 = *v5;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      LOWORD(cf) = 0;
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Unable to get the CapabilitiesHandler, support for 3G switch is therefore unknown", &cf, 2u);
    }

    goto LABEL_43;
  }

  if ((*(*v23 + 16))(v23))
  {
    (*(**(a1 + 592) + 96))(&cf);
    v27 = cf;
    v58 = 0;
    if (cf)
    {
      v28 = CFGetTypeID(cf);
      if (v28 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(&v58, v27, v29);
      }
    }

    v30 = v58;
    sub_10000A1EC(&cf);
    if (v30 == 1)
    {
      v31 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(cf) = 0;
        v32 = "#I Show3GSwitchWith5G is set to true, 3G switch is therefore supported";
LABEL_69:
        v9 = 2;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v32, &cf, 2u);
        goto LABEL_85;
      }

      goto LABEL_84;
    }

    (*(**(a1 + 592) + 96))(&cf);
    v34 = cf;
    v58 = 0;
    if (cf)
    {
      v35 = CFGetTypeID(cf);
      if (v35 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(&v58, v34, v36);
      }
    }

    v37 = v58;
    sub_10000A1EC(&cf);
    if (v37 == 1)
    {
      v38 = *v5;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(cf) = 0;
        v39 = "#I Show4GSwitchWith5G is set to true, 3G switch is therefore not supported";
LABEL_55:
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v39, &cf, 2u);
        goto LABEL_56;
      }

      goto LABEL_56;
    }
  }

  if (MaxDataRateManager::is5GSwitchSupported_sync(a1) == 2)
  {
    v38 = *v5;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(cf) = 0;
      v39 = "#I 5G switch is set to true, 3G switch is therefore not supported";
      goto LABEL_55;
    }

LABEL_56:
    v9 = 3;
    goto LABEL_85;
  }

  (*(**(a1 + 592) + 96))(&cf);
  v40 = cf;
  v58 = 0;
  if (cf)
  {
    v41 = CFGetTypeID(cf);
    if (v41 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v58, v40, v42);
    }
  }

  v43 = v58;
  sub_10000A1EC(&cf);
  if (v43 != 1)
  {
    (*(**(a1 + 592) + 96))(&cf);
    v44 = cf;
    v58 = 0;
    if (cf)
    {
      v45 = CFGetTypeID(cf);
      if (v45 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(&v58, v44, v46);
      }
    }

    v47 = v58;
    sub_10000A1EC(&cf);
    if (v47 == 1)
    {
      v31 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(cf) = 0;
        v32 = "#I Show3GSwitchWith4G is set to true, 3G switch is therefore supported";
        goto LABEL_69;
      }

      goto LABEL_84;
    }

    if (MaxDataRateManager::isLTESwitchSupported_sync(a1, a2) == 2)
    {
      v38 = *v5;
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_56;
      }

      LOWORD(cf) = 0;
      v39 = "#I LTE switch is supported, 3G switch is therefore not supported";
      goto LABEL_55;
    }

    (*(**(a1 + 592) + 96))(&cf);
    v48 = cf;
    v58 = 0;
    if (cf && (v49 = CFGetTypeID(cf), v49 == CFBooleanGetTypeID()))
    {
      ctu::cf::assign(&v58, v48, v50);
      v51 = v58;
      sub_10000A1EC(&cf);
      if (v51)
      {
        v38 = *v5;
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_56;
        }

        LOWORD(cf) = 0;
        v39 = "#I LTE switch is not supported but LTE is enabled by default, 3G switch is therefore not supported";
        goto LABEL_55;
      }
    }

    else
    {
      sub_10000A1EC(&cf);
    }

    (*(**(a1 + 592) + 96))(&cf);
    v52 = cf;
    v58 = 0;
    if (cf && (v53 = CFGetTypeID(cf), v53 == CFBooleanGetTypeID()))
    {
      ctu::cf::assign(&v58, v52, v54);
      v55 = v58;
      sub_10000A1EC(&cf);
      if (v55)
      {
        v31 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(cf) = 0;
          v32 = "#I Show3GSwitch is set to true, 3G switch is therefore supported";
          goto LABEL_69;
        }

        goto LABEL_84;
      }
    }

    else
    {
      sub_10000A1EC(&cf);
    }

LABEL_43:
    v9 = 0;
    goto LABEL_85;
  }

  v31 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(cf) = 0;
    v32 = "#I Show3GSwitchWithVolte is set to true, 3G switch is therefore supported";
    goto LABEL_69;
  }

LABEL_84:
  v9 = 2;
LABEL_85:
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  return v9;
}

void sub_10061F40C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MaxDataRateManager::isRegulatedRatsSwitchSupported_sync(uint64_t a1, int a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v5 = v4;
  v6 = *(a1 + 296);
  if (v6)
  {
    v7 = a1 + 296;
    do
    {
      if (*(v6 + 28) >= a2)
      {
        v7 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 28) < a2));
    }

    while (v6);
    if (v7 != a1 + 296 && *(v7 + 28) <= a2 && *(v7 + 32) == 1)
    {
      v8 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 0;
        v9 = "#I [DEBUG] Forcing in country with regulated RATs, regulated RATs switch is therefore supported";
        v10 = 2;
        v11 = &v21;
LABEL_16:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, v11, 2u);
        return v10;
      }

      return 2;
    }
  }

  (*(**(a1 + 592) + 80))(&cf);
  v12 = cf;
  v22 = 0;
  if (cf && (v13 = CFGetTypeID(cf), v13 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(&v22, v12, v14);
    v15 = v22;
    sub_10000A1EC(&cf);
    if (v15)
    {
      v8 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = "#I In country with regulated RATs, regulated RATs switch is therefore supported";
        v10 = 2;
        v11 = buf;
        goto LABEL_16;
      }

      return 2;
    }
  }

  else
  {
    sub_10000A1EC(&cf);
  }

  v16 = *v5;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Not in country with regulated RATs, regulated RATs switch is therefore not supported", v18, 2u);
  }

  return 3;
}

void sub_10061F674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

uint64_t MaxDataRateManager::getMaxDataRate_sync(uint64_t a1, uint64_t a2)
{
  v22 = 0;
  v23 = 0;
  MaxDataRateManager::getModel_sync(a1, a2, &v22);
  v4 = v22;
  if (!v22)
  {
    v6 = 0;
    goto LABEL_40;
  }

  v5 = *(a1 + 568);
  v6 = *(v5 + 16) != 2 || *(v5 + 136) == 2;
  v7 = MaxDataRateManager::areRegulatedRatsAllowed_sync(a1, a2);
  v8 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((*(v4 + 16) & 0xFE) != 2 || *(v4 + 496) != 2)
  {
    if ((*(v4 + 136) & 0xFE) == 2)
    {
      if (*(v4 + 616) == 2)
      {
        goto LABEL_22;
      }

      if (!v6)
      {
        goto LABEL_36;
      }

      v13 = *(v4 + 736);
      if (((v13 != 2) & ~v7) == 0)
      {
        if (v13 == 2)
        {
          v6 = 2;
        }

        else
        {
          v6 = 1;
        }

        if (*(v4 + 256) != 2)
        {
          v6 = 2;
        }

        goto LABEL_36;
      }
    }

    else if ((((*(v4 + 256) & 0xFE) == 2) & v6) == 1)
    {
      if (*(v4 + 736) == 2)
      {
        v6 = 2;
      }

      else
      {
        v6 = v7;
      }

      goto LABEL_36;
    }

    v6 = 0;
    goto LABEL_36;
  }

  v9 = *(a1 + 200);
  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = a1 + 200;
  do
  {
    if (*(v9 + 28) >= a2)
    {
      v10 = v9;
    }

    v9 = *(v9 + 8 * (*(v9 + 28) < a2));
  }

  while (v9);
  if (v10 == a1 + 200 || *(v10 + 28) > a2 || !NRDisableStatus::isNSADisabledWithReason())
  {
LABEL_27:
    v6 = 4;
    goto LABEL_36;
  }

  v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = asString();
    *buf = 136315138;
    v25 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Squashing 5G user preference to LTE due to NR disable status %s", buf, 0xCu);
  }

LABEL_22:
  v6 = 3;
LABEL_36:
  v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = asString();
    v16 = asString();
    v17 = asString();
    v18 = asString();
    v19 = asString();
    v20 = asString();
    *buf = 136316418;
    v25 = v15;
    v26 = 2080;
    v27 = v16;
    v28 = 2080;
    v29 = v17;
    v30 = 2080;
    v31 = v18;
    v32 = 2080;
    v33 = v19;
    v34 = 2080;
    v35 = v20;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Query to get the current max data rate, 5G(%s), LTE(%s), 3G(%s), legacy rats(%s), regulated rats(%s) result: %s", buf, 0x3Eu);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

LABEL_40:
  if (v23)
  {
    sub_100004A34(v23);
  }

  return v6;
}

void sub_10061F9DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void MaxDataRateManager::dumpState_sync(MaxDataRateManager *this)
{
  v2 = (this + 40);
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v34 = asString();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Legacy RATs Switch support: %s", buf, 0xCu);
    v3 = *(this + 5);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = asString();
    *buf = 136315138;
    v34 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Legacy RATs User preference: %s", buf, 0xCu);
  }

  if (*(this + 73))
  {
    v5 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Legacy RATs temporary enablement timer is running", buf, 2u);
    }
  }

  rest::RATSRestrictionInfo::dumpState((this + 344), v2);
  v6 = *(this + 68);
  if (v6 != (this + 552))
  {
    v7 = (this + 136);
    v8 = (this + 112);
    do
    {
      v9 = (*(**(this + 6) + 16))(*(this + 6), *(v6 + 8));
      v10 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = asString();
        *buf = 136315138;
        v34 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I 2G switch support: %s", buf, 0xCu);
        v10 = *v9;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = asString();
        *buf = 136315138;
        v34 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I 3G Switch support: %s", buf, 0xCu);
        v10 = *v9;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = asString();
        *buf = 136315138;
        v34 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I LTE Switch support: %s", buf, 0xCu);
        v10 = *v9;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = asString();
        *buf = 136315138;
        v34 = v14;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I 5G Switch support: %s", buf, 0xCu);
        v10 = *v9;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = asString();
        *buf = 136315138;
        v34 = v15;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I 2G User preference: %s", buf, 0xCu);
        v10 = *v9;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = asString();
        *buf = 136315138;
        v34 = v16;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I 3G User preference: %s", buf, 0xCu);
        v10 = *v9;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v17 = asString();
        *buf = 136315138;
        v34 = v17;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I LTE User preference: %s", buf, 0xCu);
        v10 = *v9;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v18 = asString();
        *buf = 136315138;
        v34 = v18;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I 5G User preference: %s", buf, 0xCu);
      }

      v19 = *v7;
      if (*v7)
      {
        v20 = *(v6 + 8);
        v21 = (this + 136);
        do
        {
          if (*(v19 + 8) >= v20)
          {
            v21 = v19;
          }

          v19 = *&v19[8 * (*(v19 + 8) < v20)];
        }

        while (v19);
        if (v21 != v7 && v20 >= *(v21 + 8))
        {
          v22 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            v23 = asString();
            *buf = 136315138;
            v34 = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Bundle technology type: %s", buf, 0xCu);
          }
        }
      }

      v24 = *v8;
      if (!*v8)
      {
        goto LABEL_42;
      }

      v25 = *(v6 + 8);
      v26 = (this + 112);
      do
      {
        if (*(v24 + 7) >= v25)
        {
          v26 = v24;
        }

        v24 = *&v24[8 * (*(v24 + 7) < v25)];
      }

      while (v24);
      if (v26 != v8 && v25 >= *(v26 + 7))
      {
        v27 = *(v26 + 8);
      }

      else
      {
LABEL_42:
        v27 = 0;
      }

      v28 = *v9;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = sub_100072578(v27);
        *buf = 136315138;
        v34 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Device type: %s", buf, 0xCu);
      }

      v30 = *(v6 + 1);
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = *(v6 + 2);
          v32 = *v31 == v6;
          v6 = v31;
        }

        while (!v32);
      }

      v6 = v31;
    }

    while (v31 != (this + 552));
  }
}

uint64_t sub_10061FF88(uint64_t a1)
{
  sub_1006271D0(a1 + 88);
  sub_100627150(a1 + 56);
  sub_1006270D0(a1 + 24);
  return a1;
}

uint64_t MaxDataRateManager::evaluateUserPreference_sync(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 568);
  v4 = *(v3 + 168);
  if (v4)
  {
    LODWORD(v4) = (*(*v4 + 48))(v4, a2);
  }

  *(v3 + 136) = v4;
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = asString();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Legacy RATs User Preference evaluated: %s", buf, 0xCu);
  }

  *buf = 1;
  memset(v33, 0, sizeof(v33));
  *&buf[8] = a1 + 312;
  LOBYTE(v33[0]) = *(a1 + 344);
  sub_1000517E4(v33 + 8, a1 + 352);
  subscriber::makeSimSlotRange();
  v7 = v26;
  v6 = v27;
  if (v26 != v27)
  {
    v8 = v28;
    do
    {
      if (v28(*v7))
      {
        break;
      }

      ++v7;
    }

    while (v7 != v27);
    v9 = v27;
    while (v7 != v9)
    {
      v10 = *v7;
      v24 = 0;
      v25 = 0;
      MaxDataRateManager::getModel_sync(a1, v10, &v24);
      v11 = v24;
      if (v24)
      {
        v12 = *(v24 + 888);
        if (v12)
        {
          LODWORD(v12) = (*(*v12 + 48))(v12);
        }

        *(v11 + 856) = v12;
        v13 = *(v11 + 768);
        if (v13)
        {
          LODWORD(v13) = (*(*v13 + 48))(v13);
        }

        *(v11 + 736) = v13;
        v14 = *(v11 + 648);
        if (v14)
        {
          LODWORD(v14) = (*(*v14 + 48))(v14);
        }

        *(v11 + 616) = v14;
        v15 = *(v11 + 528);
        if (v15)
        {
          LODWORD(v15) = (*(*v15 + 48))(v15);
        }

        *(v11 + 496) = v15;
        v16 = MaxDataRateManager::areRegulatedRatsAllowed_sync(a1, v10);
        *v30 = v10;
        v29 = !v16;
        sub_100626598(v33 + 8, v30, &v29);
        v17 = (*(**(a1 + 48) + 16))(*(a1 + 48), v10);
        v18 = *v17;
        if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = asString();
          *v30 = 136315138;
          v31 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I 2G User Preference evaluated: %s", v30, 0xCu);
          v18 = *v17;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = asString();
          *v30 = 136315138;
          v31 = v20;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I 3G User Preference evaluated: %s", v30, 0xCu);
          v18 = *v17;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v21 = asString();
          *v30 = 136315138;
          v31 = v21;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I LTE User Preference evaluated: %s", v30, 0xCu);
          v18 = *v17;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v22 = asString();
          *v30 = 136315138;
          v31 = v22;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I 5G User Preference evaluated: %s", v30, 0xCu);
        }
      }

      if (v25)
      {
        sub_100004A34(v25);
      }

      do
      {
        ++v7;
      }

      while (v7 != v6 && (v8(*v7) & 1) == 0);
    }
  }

  return sub_10062A978(buf);
}

void sub_1006203DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_10062A978(va);
  _Unwind_Resume(a1);
}

BOOL MaxDataRateManager::areRegulatedRatsAllowed_sync(uint64_t a1, int a2)
{
  v4 = 0;
  v5 = 0;
  MaxDataRateManager::getModel_sync(a1, a2, &v4);
  v2 = v4 && (*(v4 + 376) != 2 || *(v4 + 856) == 2);
  if (v5)
  {
    sub_100004A34(v5);
  }

  return v2;
}

void MaxDataRateManager::resetNetworkSettings(MaxDataRateManager *this, group_session a2)
{
  v3 = *a2.var0.fObj;
  if (*a2.var0.fObj)
  {
    dispatch_retain(*a2.var0.fObj);
    dispatch_group_enter(v3);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, this + 1);
  operator new();
}

uint64_t MaxDataRateManager::copySupportedSetMaxDataRates(uint64_t result, int a2, uint64_t a3)
{
  if (*(a3 + 24))
  {
    v3 = result;
    v4[4] = result;
    v5 = a2;
    sub_100630254(&v6, a3);
    v4[0] = 0;
    v4[1] = 0;
    sub_100004AA0(v4, (v3 + 8));
    operator new();
  }

  return result;
}

void sub_1006206D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void MaxDataRateManager::copySupportedSetMaxDataRates_sync(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = 0;
  v35 = 0;
  MaxDataRateManager::getModel_sync(a1, a2, &v34);
  v6 = v34;
  if (!v34)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    goto LABEL_39;
  }

  v31 = 0u;
  v32 = 0u;
  v33 = 1065353216;
  if (*(v34 + 256) == 2)
  {
    v7 = *(a1 + 568);
    if (*(v7 + 16) != 2 || *(v7 + 136) == 2)
    {
      *buf = 2;
      sub_1006309D8(&v31, buf, buf);
      if (MaxDataRateManager::areRegulatedRatsAllowed_sync(a1, a2))
      {
        *buf = 1;
        sub_1006309D8(&v31, buf, buf);
      }
    }
  }

  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  if (v15)
  {
    v17 = v15[3];
    v16 = v15[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v10);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
      v18 = 0;
      if (!v17)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
  if (!v17)
  {
    goto LABEL_18;
  }

LABEL_17:
  if (((*(*v17 + 16))(v17) & 1) == 0)
  {
    *buf = 0;
    (*(**(a1 + 592) + 96))(v30);
    sub_10002FE1C(buf, v30);
    sub_10000A1EC(v30);
    if (*(a1 + 152) == a2 || !CFBooleanGetValue(*buf))
    {
      v19 = 0;
    }

    else
    {
      v29 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v30[0]) = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Hiding LTE switch for non-internal builds as HideLTEForNonPreferredSim is set to true", v30, 2u);
      }

      v19 = 1;
    }

    sub_100045C8C(buf);
    if (v18)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_18:
  v19 = 0;
  if ((v18 & 1) == 0)
  {
LABEL_19:
    sub_100004A34(v16);
  }

LABEL_20:
  if (sub_100375DA0(v6 + 960))
  {
    v20 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Hiding LTE switch for Multi SIM VoLTE-only mode", buf, 2u);
    }
  }

  else
  {
    if (*(v6 + 136) == 2)
    {
      v21 = v19;
    }

    else
    {
      v21 = 1;
    }

    if ((v21 & 1) == 0)
    {
      *buf = 3;
      sub_1006309D8(&v31, buf, buf);
      v22 = *(a1 + 568);
      if (*(v22 + 16) != 2 || *(v22 + 136) == 2)
      {
        *buf = 2;
        sub_1006309D8(&v31, buf, buf);
      }
    }
  }

  if (*(v34 + 16) == 2)
  {
    *buf = 4;
    sub_1006309D8(&v31, buf, buf);
    *buf = 3;
    sub_1006309D8(&v31, buf, buf);
  }

  v23 = v32;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v24 = 0;
  if (v23)
  {
    v25 = v23;
    do
    {
      ++v24;
      v25 = *v25;
    }

    while (v25);
  }

  sub_10062674C(a3, v23, 0, v24);
  v26 = a3[1];
  v27 = 126 - 2 * __clz((v26 - *a3) >> 2);
  if (v26 == *a3)
  {
    v28 = 0;
  }

  else
  {
    v28 = v27;
  }

  sub_100015F94(*a3, v26, buf, v28, 1);
  sub_10063098C(&v31);
LABEL_39:
  if (v35)
  {
    sub_100004A34(v35);
  }
}

void sub_100620B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, std::__shared_weak_count *);
  sub_100045C8C(va1);
  if ((v6 & 1) == 0)
  {
    sub_100004A34(v5);
  }

  sub_10063098C(va);
  if (v16)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t MaxDataRateManager::getMaxDataRate(uint64_t result, int a2, uint64_t a3)
{
  if (*(a3 + 24))
  {
    v3 = result;
    v4[4] = result;
    v5 = a2;
    sub_100630C08(&v6, a3);
    v4[0] = 0;
    v4[1] = 0;
    sub_100004AA0(v4, (v3 + 8));
    operator new();
  }

  return result;
}

void sub_100620CE0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void MaxDataRateManager::setMaxDataRate(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5[4] = a1;
  v6 = a2;
  v7 = a3;
  sub_100630D9C(&v8, a4);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_100620E24(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

BOOL MaxDataRateManager::isMaxDataRateValid_sync(uint64_t a1, uint64_t a2, int a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  MaxDataRateManager::copySupportedSetMaxDataRates_sync(a1, a2, &v7);
  v4 = v8;
  v5 = v7;
  if (v7 != v8)
  {
    v5 = v7;
    while (*v5 != a3)
    {
      if (++v5 == v8)
      {
        v5 = v8;
        break;
      }
    }
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  return v5 != v4;
}

uint64_t MaxDataRateManager::send3GAndLTEUserPreference_sync(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v26 = 0;
  v27 = 0;
  MaxDataRateManager::getModel_sync(a1, a2, &v26);
  v9 = v26;
  if (v26)
  {
    v10 = off_101E6BF30;
    v33[0] = off_101E6BF30;
    v33[1] = a1;
    v34 = a2 | (a4 << 32);
    v35 = v33;
    *(&v34 + 5) = 0;
    HIBYTE(v34) = 0;
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        *buf = 0u;
        v32 = 0u;
        sub_10009CF40(buf, v33);
        sub_10016DBD4(v33);
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1174405120;
        aBlock[2] = sub_1006226DC;
        aBlock[3] = &unk_101E6A6F8;
        v30[32] = a4;
        aBlock[4] = a1;
        aBlock[5] = v8;
        aBlock[6] = v9;
        v29 = v27;
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_10009CF40(v30, buf);
        v21 = _Block_copy(aBlock);
        v25 = v21;
        MaxDataRateManager::maybeShowUnsupportedCarrierWarning_sync(a1, a2, a4, 1, &v25);
        if (v21)
        {
          _Block_release(v21);
        }

        sub_10002B644(v30);
        if (v29)
        {
          sub_100004A34(v29);
        }

        sub_10002B644(buf);
        goto LABEL_38;
      }

      if (a3 != 4 || a4 != 1)
      {
        goto LABEL_40;
      }

      v16 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Saving user preference to 5G", buf, 2u);
      }

      v17 = *(a1 + 568);
      if (*(v17 + 16) != 2 || *(v17 + 136) == 2)
      {
        sub_10061D524(v9 + 720, 1);
      }

      v14 = 1;
      sub_10061D524(v9 + 600, 1);
      goto LABEL_24;
    }

    if (a3 == 1)
    {
      v18 = *(a1 + 568);
      if (*(v18 + 16) == 2 && *(v18 + 136) != 2)
      {
        v23 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v24 = "#I Not saving user preference to 2G. Legacy RATs are disabled";
          goto LABEL_52;
        }
      }

      else
      {
        if (MaxDataRateManager::areRegulatedRatsAllowed_sync(a1, a2))
        {
          if (a4 != 1)
          {
            goto LABEL_38;
          }

          v19 = *v8;
          v20 = os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT);
          v13 = 0;
          if (v20)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Saving user preference to 2G", buf, 2u);
            v13 = 0;
          }

LABEL_11:
          sub_10061D524(v9 + 720, v13);
          sub_10061D524(v9 + 600, 0);
          v14 = 0;
LABEL_24:
          sub_10061D524(v9 + 480, v14);
          goto LABEL_38;
        }

        v23 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v24 = "#I Not saving user preference to 2G. Regulated RATs are disabled";
LABEL_52:
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
        }
      }
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_40;
      }

      v11 = *(a1 + 568);
      if (*(v11 + 16) != 2 || *(v11 + 136) == 2)
      {
        if (a4 != 1)
        {
LABEL_38:
          if (!v35)
          {
LABEL_41:
            v15 = 1;
LABEL_42:
            sub_10002B644(v33);
            goto LABEL_43;
          }

          v10 = *v35;
LABEL_40:
          v10[6]();
          goto LABEL_41;
        }

        v12 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Saving user preference to 3G", buf, 2u);
        }

        v13 = 1;
        goto LABEL_11;
      }

      v23 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v24 = "#I Not saving user preference to 3G. Legacy RATs are disabled";
        goto LABEL_52;
      }
    }

    v15 = 0;
    goto LABEL_42;
  }

  if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    sub_101775F64();
  }

  v15 = 0;
LABEL_43:
  if (v27)
  {
    sub_100004A34(v27);
  }

  return v15;
}

void sub_10062134C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void MaxDataRateManager::setUserPreferenceEnable3G_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  v15 = 0;
  MaxDataRateManager::getModel_sync(a1, a2, &v14);
  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  v9 = v8;
  if (v14)
  {
    if (a4 == 1)
    {
      sub_10061D524(v14 + 720, a3);
    }

    v10 = *v9;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = CSIBOOLAsString(a3);
      *buf = 136315138;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Device supports enable 3G option in system selection, sending it down with 3G set to %s", buf, 0xCu);
    }

    *buf = 0uLL;
    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    sub_10017AE44(buf, ServiceMap);
    group = 0;
    (*(**buf + 360))(*buf, a2, a4, &group);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  else if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    sub_101775F98();
  }

  if (v15)
  {
    sub_100004A34(v15);
  }
}

uint64_t MaxDataRateManager::carrierAndDeviceSupportLTE_sync(uint64_t a1, int a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v5 = *(a1 + 136);
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = a1 + 136;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 == a1 + 136 || *(v6 + 32) > a2)
  {
LABEL_21:
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_101775FCC();
    }

LABEL_10:
    v7 = 0;
    v8 = 0;
    return v7 | (v8 << 8);
  }

  if (!*(v6 + 41))
  {
    v10 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13[1]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Carrier bundle is not set up yet, cannot decide whether carrier supports LTE", &v13[1], 2u);
    }

    goto LABEL_10;
  }

  v13[1] = 0;
  (*(**(a1 + 592) + 96))(v13);
  sub_10002FE1C(&v13[1], v13);
  sub_10000A1EC(v13);
  v13[0] = 0;
  (*(**(a1 + 592) + 96))(&v12);
  sub_10002FE1C(v13, &v12);
  sub_10000A1EC(&v12);
  v12 = 0;
  (*(**(a1 + 592) + 96))(&v11);
  sub_10002FE1C(&v12, &v11);
  sub_10000A1EC(&v11);
  v7 = *v13 != 0 || v12 != 0;
  sub_100045C8C(&v12);
  sub_100045C8C(v13);
  sub_100045C8C(&v13[1]);
  v8 = 1;
  return v7 | (v8 << 8);
}

void sub_100621830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  sub_10000A1EC(va);
  sub_100045C8C(va1);
  sub_100045C8C(va2);
  _Unwind_Resume(a1);
}

BOOL MaxDataRateManager::setUserPreferenceEnableLTE_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v18 = 0;
  v19 = 0;
  MaxDataRateManager::getModel_sync(a1, a2, &v18);
  v9 = v18;
  if (v18)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1174405120;
    v12[2] = sub_100621E2C;
    v12[3] = &unk_101E6A698;
    v15 = v4;
    v12[4] = a1;
    v12[5] = v8;
    v16 = v5;
    v12[6] = v18;
    v13 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = a2;
    v10 = _Block_copy(v12);
    v17 = v10;
    MaxDataRateManager::maybeShowUnsupportedCarrierWarning_sync(a1, a2, v4, v5, &v17);
    if (v10)
    {
      _Block_release(v10);
    }

    if (v13)
    {
      sub_100004A34(v13);
    }
  }

  else if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    sub_101776000();
  }

  if (v19)
  {
    sub_100004A34(v19);
  }

  return v9 != 0;
}

void sub_100621A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (v17)
  {
    _Block_release(v17);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

void MaxDataRateManager::setUserPreferenceEnable5G_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = 0;
  MaxDataRateManager::getModel_sync(a1, a2, &v13);
  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  v9 = v8;
  if (v13)
  {
    if (a4 == 1)
    {
      sub_10061D524(v13 + 480, a3);
    }

    v10 = *v9;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = CSIBOOLAsString(a3);
      *buf = 136315138;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Device supports enable 5G option in system selection, sending it down with 5G set to %s", buf, 0xCu);
    }

    *buf = 0uLL;
    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    sub_10017AE44(buf, ServiceMap);
    (*(**buf + 344))(*buf, a2, a4);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  else if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    sub_101776034();
  }

  if (v14)
  {
    sub_100004A34(v14);
  }
}

const void **MaxDataRateManager::maybeShowUnsupportedCarrierWarning_sync(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  if (a3 == 1 && (a4 & 1) != 0)
  {
    cf = 0;
    (*(**(a1 + 592) + 96))(&cf);
    v7 = cf;
    LOBYTE(v20) = 0;
    if (cf && (v8 = CFGetTypeID(cf), v8 == CFBooleanGetTypeID()) && (ctu::cf::assign(&v20, v7, v9), (v20 & 1) != 0))
    {
      sub_100004AA0(&v20, (a1 + 8));
      v11 = v20;
      v10 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v10);
      }

      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 1174405120;
      block[2] = sub_100622274;
      block[3] = &unk_101E6A6C8;
      block[4] = a1;
      block[5] = v11;
      v17 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = *a5;
      if (*a5)
      {
        v13 = _Block_copy(v13);
      }

      aBlock = v13;
      dispatch_async(global_queue, block);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v17)
      {
        std::__shared_weak_count::__release_weak(v17);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_weak(v10);
      }
    }

    else
    {
      (*(*a5 + 16))();
    }

    return sub_10000A1EC(&cf);
  }

  else
  {
    v14 = *(*a5 + 16);

    return v14();
  }
}

void sub_100621E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

void sub_100621E2C(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 68);
  if (v4 == 1 && (a2 & 1) == 0)
  {
    v5 = **(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Not saving LTE enabled setting due to user canceling request", buf, 2u);
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    if (v6 || (v6 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v6) == &_xpc_type_dictionary)
      {
        xpc_retain(v6);
        v7 = v6;
      }

      else
      {
        v7 = xpc_null_create();
      }
    }

    else
    {
      v7 = xpc_null_create();
      v6 = 0;
    }

    xpc_release(v6);
    *buf = v7;
    if (v7)
    {
      xpc_retain(v7);
    }

    else
    {
      *buf = xpc_null_create();
    }

    object = xpc_null_create();
    sub_10002A37C(119, buf, &object);
    xpc_release(object);
    xpc_release(*buf);
    *buf = 0;
    xpc_release(v7);
    (*(**(v3 + 624) + 160))(*(v3 + 624));
    return;
  }

  if (v4 != 3)
  {
    v8 = **(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = CSIBOOLAsString(*(a1 + 69));
      *buf = 136315394;
      *&buf[4] = v9;
      v25 = 2080;
      v26 = asString();
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Saving LTE user preference to %s due to %s", buf, 0x16u);
    }

    sub_10061D524(*(a1 + 48) + 600, *(a1 + 69));
  }

  ServiceMap = Registry::getServiceMap(*(v3 + 56));
  v11 = ServiceMap;
  if (v12 < 0)
  {
    v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
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
  *buf = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, buf);
  if (v16)
  {
    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v11);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
      v19 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v11);
  v17 = 0;
  v19 = 1;
LABEL_21:
  if ((*(*(a1 + 48) + 256) & 0xFE) == 2)
  {
    v20 = *(a1 + 64);
    v21 = *(a1 + 68);
    group = 0;
    (*(*v18 + 360))(v18, v20, v21, &group);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }
  }

  (*(*v18 + 352))(v18, *(a1 + 64), *(a1 + 68));
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }
}

void sub_1006221A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_group_t group, xpc_object_t object, xpc_object_t a11)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100622248(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100622264(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

const void **sub_100622274(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Showing pop-up for LTE enable warning", buf, 2u);
  }

  v14 = 0;
  (*(**(v2 + 608) + 16))(&v14);
  v13 = 0;
  (*(**(v2 + 608) + 16))(&v13);
  v12 = 0;
  (*(**(v2 + 608) + 16))(&v12);
  v11 = 0;
  (*(**(v2 + 608) + 16))(&v11);
  v10 = 0;
  CFUserNotificationDisplayAlert(0.0, 2uLL, 0, 0, 0, v14, v13, v12, v11, 0, &v10);
  v4 = *(v2 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I response flags: %ld", buf, 0xCu);
  }

  v5 = a1[6];
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = a1[5];
      if (v7)
      {
        v8 = a1[7];
        if (v8)
        {
          _Block_copy(v8);
        }

        *buf = 0uLL;
        sub_100004AA0(buf, (v7 + 8));
        operator new();
      }

      sub_100004A34(v6);
    }
  }

  sub_100005978(&v11);
  sub_100005978(&v12);
  sub_100005978(&v13);
  return sub_100005978(&v14);
}

void sub_1006225D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10062263C(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[7];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[7] = result;
  return result;
}

void sub_100622688(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1006226DC(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 96);
  if (v4 != 1 || (a2 & 1) != 0)
  {
    if (v4 != 3)
    {
      v6 = **(a1 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Saving user preference to LTE", v9, 2u);
      }

      v7 = *(v3 + 568);
      if (*(v7 + 16) != 2 || *(v7 + 136) == 2)
      {
        sub_10061D524(*(a1 + 48) + 720, 1);
      }

      sub_10061D524(*(a1 + 48) + 600, 1);
      sub_10061D524(*(a1 + 48) + 480, 0);
    }

    v8 = *(a1 + 88);
    if (!v8)
    {
      sub_100022DB4();
    }

    (*(*v8 + 48))(v8);
  }

  else
  {
    v5 = **(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Not saving LTE enabled setting due to user canceling request", buf, 2u);
    }
  }
}

uint64_t sub_100622828(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_10009CF40(a1 + 64, a2 + 64);
}

void sub_10062286C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100622884(uint64_t a1)
{
  sub_10002B644(a1 + 64);
  v2 = *(a1 + 56);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

uint64_t MaxDataRateManager::getLegacyRatsSwitchSupport(MaxDataRateManager *this)
{
  v4 = this;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10063144C;
  v5[3] = &unk_101E6BFA0;
  v5[4] = this + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_100069D38;
    v10 = &unk_101E6BFE0;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_100058DDC;
    v10 = &unk_101E6BFC0;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

void MaxDataRateManager::getUserPreferenceEnable5G(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_100631468(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_100622B3C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t MaxDataRateManager::getUserPreferenceEnable5G_sync(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v22 = 0;
  v23 = 0;
  MaxDataRateManager::getModel_sync(a1, a2, &v22);
  if (v22)
  {
    v5 = *(v22 + 16);
    if ((v5 - 2) >= 2)
    {
      v7 = v5 == 1;
      v6 = "default value";
    }

    else
    {
      v21 = 0;
      if (MaxDataRateManager::getUserPreferenceFromPersistence_sync(a1, a2, *(v22 + 488), &v21))
      {
        v6 = "user preference";
      }

      else
      {
        v8 = *(a1 + 272);
        if (!v8)
        {
          goto LABEL_18;
        }

        v9 = a1 + 272;
        do
        {
          if (*(v8 + 28) >= a2)
          {
            v9 = v8;
          }

          v8 = *(v8 + 8 * (*(v8 + 28) < a2));
        }

        while (v8);
        if (v9 != a1 + 272 && *(v9 + 28) <= a2 && *(v9 + 32) == 1)
        {
          v21 = *(v9 + 34);
          v6 = "entitlement";
        }

        else
        {
LABEL_18:
          *buf = 0;
          (*(**(a1 + 592) + 96))(&cf);
          sub_10002FE1C(buf, &cf);
          sub_10000A1EC(&cf);
          if (*buf)
          {
            LOBYTE(cf) = 0;
            ctu::cf::assign(&cf, *buf, v10);
            v21 = cf;
            v6 = "carrier bundle";
          }

          else
          {
            v11 = *(**(a1 + 592) + 96);
            v12 = 1;
            v11(&cf);
            v13 = cf;
            v24 = 1;
            if (cf)
            {
              v14 = CFGetTypeID(cf);
              if (v14 == CFBooleanGetTypeID())
              {
                ctu::cf::assign(&v24, v13, v15);
                v12 = v24;
              }

              else
              {
                v12 = 1;
              }
            }

            v21 = v12;
            sub_10000A1EC(&cf);
            v6 = "smart data mode";
          }

          sub_100045C8C(buf);
        }
      }

      if (v21)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }
    }

    v16 = *v4;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = asString();
      v18 = asString();
      *buf = 136315650;
      *&buf[4] = v17;
      v26 = 2080;
      v27 = v18;
      v28 = 2080;
      v29 = v6;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I User preference: Enable 5G: %s with %s; based on %s", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_101776068();
    }

    v7 = 0;
  }

  if (v23)
  {
    sub_100004A34(v23);
  }

  return v7;
}

void sub_100622E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_100045C8C(va);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void MaxDataRateManager::getUserPreferenceEnableLTE(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_100631468(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_100623028(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t MaxDataRateManager::getUserPreferenceEnableLTE_sync(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v15 = 0;
  v16 = 0;
  MaxDataRateManager::getModel_sync(a1, a2, &v15);
  if (v15)
  {
    v5 = *(v15 + 136);
    if ((v5 - 2) >= 2)
    {
      v7 = v5 == 1;
      v6 = "default value";
    }

    else
    {
      v14 = 1;
      if (MaxDataRateManager::getUserPreferenceFromPersistence_sync(a1, a2, *(v15 + 608), &v14))
      {
        v6 = "user preference";
      }

      else
      {
        *buf = 0;
        (*(**(a1 + 592) + 96))(&v13);
        sub_10002FE1C(buf, &v13);
        sub_10000A1EC(&v13);
        if (*buf)
        {
          LOBYTE(v13) = 1;
          ctu::cf::assign(&v13, *buf, v8);
          v14 = v13;
          v6 = "carrier bundle";
        }

        else
        {
          v6 = "default value";
        }

        sub_100045C8C(buf);
      }

      if (v14)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }
    }

    v9 = *v4;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = asString();
      v11 = asString();
      *buf = 136315650;
      *&buf[4] = v10;
      v18 = 2080;
      v19 = v11;
      v20 = 2080;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I User preference: Enable LTE: %s with %s; based on %s", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_10177609C();
    }

    v7 = 0;
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  return v7;
}

void sub_10062329C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va, a9);
  sub_100045C8C(va);
  if (a9)
  {
    sub_100004A34(a9);
  }

  _Unwind_Resume(a1);
}

void MaxDataRateManager::getUserPreferenceEnable3G(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_100631468(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_100623424(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t MaxDataRateManager::getUserPreferenceEnable3G_sync(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v13 = 0;
  v14 = 0;
  MaxDataRateManager::getModel_sync(a1, a2, &v13);
  if (v13)
  {
    v5 = *(v13 + 256);
    v6 = "default value";
    if ((v5 - 2) >= 2)
    {
      v8 = v5 == 1;
      if (v5 == 1)
      {
        v6 = "default value";
      }
    }

    else
    {
      buf[0] = 1;
      v7 = *(a1 + 568);
      if (*(v7 + 16) == 2 && *(v7 + 136) != 2)
      {
        v6 = "lockdown mode";
        v8 = 3;
      }

      else
      {
        if (MaxDataRateManager::getUserPreferenceFromPersistence_sync(a1, a2, *(v13 + 728), buf))
        {
          v6 = "user preference";
        }

        if (buf[0])
        {
          v8 = 2;
        }

        else
        {
          v8 = 3;
        }
      }
    }

    v9 = *v4;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = asString();
      v11 = asString();
      *buf = 136315650;
      v16 = v10;
      v17 = 2080;
      v18 = v11;
      v19 = 2080;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I User preference: Enable 3G: %s with %s; based on %s", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_1017760D0();
    }

    v8 = 0;
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  return v8;
}

uint64_t MaxDataRateManager::getUserPreferenceEnable2G(uint64_t result, int a2, uint64_t a3)
{
  if (*(a3 + 24))
  {
    v3 = result;
    v4[4] = result;
    v5 = a2;
    sub_100631468(&v6, a3);
    v4[0] = 0;
    v4[1] = 0;
    sub_100004AA0(v4, (v3 + 8));
    operator new();
  }

  return result;
}

void sub_100623790(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t MaxDataRateManager::getUserPreferenceEnableRegulatedRats_sync(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v15 = 0;
  v16 = 0;
  MaxDataRateManager::getModel_sync(a1, a2, &v15);
  if (v15)
  {
    if (*(*(a1 + 568) + 16) == 2)
    {
      v5 = "lockdown mode";
      v6 = 3;
      goto LABEL_21;
    }

    v7 = *(v15 + 376);
    switch(v7)
    {
      case 3:
        goto LABEL_10;
      case 2:
        v14 = 0;
        if (MaxDataRateManager::getUserPreferenceFromPersistence_sync(a1, a2, *(v15 + 848), &v14))
        {
          v5 = "user preference";
        }

        else
        {
          *buf = 0;
          (*(**(a1 + 592) + 80))(&v13);
          sub_10002FE1C(buf, &v13);
          sub_10000A1EC(&v13);
          if (*buf)
          {
            LOBYTE(v13) = 0;
            ctu::cf::assign(&v13, *buf, v8);
            v14 = v13;
            v5 = "carrier country bundle";
          }

          else
          {
            v5 = "default value";
          }

          sub_100045C8C(buf);
        }

        if (v14)
        {
          v6 = 2;
        }

        else
        {
          v6 = 3;
        }

        break;
      case 1:
LABEL_10:
        v5 = "default value";
        v6 = 2;
        break;
      default:
        v6 = 0;
        v5 = "default value";
        break;
    }

LABEL_21:
    v9 = *v4;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = asString();
      v11 = asString();
      *buf = 136315650;
      *&buf[4] = v10;
      v18 = 2080;
      v19 = v11;
      v20 = 2080;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I User preference: Enable 2G: %s with %s; based on %s", buf, 0x20u);
    }

    goto LABEL_23;
  }

  if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
  {
    sub_101776104();
  }

  v6 = 0;
LABEL_23:
  if (v16)
  {
    sub_100004A34(v16);
  }

  return v6;
}

void sub_100623A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va, a9);
  sub_100045C8C(va);
  if (a9)
  {
    sub_100004A34(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t MaxDataRateManager::getUserPreferenceEnableLegacyRats(uint64_t result, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v2 = result;
    v3[4] = result;
    sub_100631468(&v4, a2);
    v3[0] = 0;
    v3[1] = 0;
    sub_100004AA0(v3, (v2 + 8));
    operator new();
  }

  return result;
}

void sub_100623B98(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void MaxDataRateManager::setUserPreferenceEnableLegacyRats(uint64_t a1, char a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_100630D9C(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_100623CE8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void MaxDataRateManager::setUserPreferenceEnableLegacyRats_sync(uint64_t a1, uint64_t a2, uint64_t a3, NSObject **a4)
{
  if (a3 != 1)
  {
    goto LABEL_10;
  }

  v7 = a2;
  sub_10061D524(*(a1 + 568) + 120, a2);
  v8 = *(a1 + 584);
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = *(a1 + 40);
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *(a1 + 584) = 0;
LABEL_9:
    (*(*v8 + 8))(v8);
    goto LABEL_10;
  }

  v10 = "disables";
  if (v7)
  {
    v10 = "enables";
  }

  *buf = 136315138;
  *&buf[4] = v10;
  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I User %s Legacy RATs while temporary timer is running. Reset timer", buf, 0xCu);
  v8 = *(a1 + 584);
  *(a1 + 584) = 0;
  if (v8)
  {
    goto LABEL_9;
  }

LABEL_10:
  MaxDataRateManager::retrieveSavedSwitchSupport_sync(a1, 3);
  MaxDataRateManager::evaluateUserPreference_sync(a1, 3);
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v12 = ServiceMap;
  if (v13 < 0)
  {
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = 5381;
    do
    {
      v13 = v15;
      v16 = *v14++;
      v15 = (33 * v15) ^ v16;
    }

    while (v16);
  }

  std::mutex::lock(ServiceMap);
  *buf = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, buf);
  if (v17)
  {
    v19 = v17[3];
    v18 = v17[4];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v12);
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v18);
      v20 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v19 = 0;
  }

  std::mutex::unlock(v12);
  v18 = 0;
  v20 = 1;
LABEL_18:
  if (MaxDataRateManager::supportsBB2GMitigation_sync(a1))
  {
    v21 = *a4;
    group = v21;
    if (v21)
    {
      dispatch_retain(v21);
      dispatch_group_enter(v21);
    }

    (*(*v19 + 368))(v19, 3, a3, &group);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }
  }

  v22 = *a4;
  object = v22;
  if (v22)
  {
    dispatch_retain(v22);
    dispatch_group_enter(v22);
  }

  (*(*v19 + 360))(v19, 3, a3, &object);
  if (object)
  {
    dispatch_group_leave(object);
    if (object)
    {
      dispatch_release(object);
    }
  }

  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }
}

void sub_100623FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_group_t a9, dispatch_group_t group)
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

uint64_t MaxDataRateManager::getUserPreferenceEnableLegacyRats_sync(MaxDataRateManager *this)
{
  v2 = *(this + 71);
  v3 = *(v2 + 16);
  if (v3 < 2)
  {
    goto LABEL_4;
  }

  v4 = "default value";
  if (v3 == 2)
  {
    LOBYTE(v10) = 0;
    if (MaxDataRateManager::getUserPreferenceFromPersistence_sync(this, *(v2 + 128), &v10))
    {
      v4 = "user preference";
    }

    if (v10)
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
    if (v3 == 3)
    {
LABEL_4:
      v5 = 2;
      v4 = "default value";
      goto LABEL_11;
    }

    v5 = 0;
  }

LABEL_11:
  v6 = *(this + 5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = asString();
    v8 = asString();
    v10 = 136315650;
    v11 = v7;
    v12 = 2080;
    v13 = v8;
    v14 = 2080;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I User preference: Enable Legacy RATs: %s with %s; based on %s", &v10, 0x20u);
  }

  return v5;
}

uint64_t MaxDataRateManager::enableLegacyRatsWithDuration(void *a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0 || !*(a3 + 24))
  {
    *buf = a1;
    *&buf[8] = a2;
    sub_100631A5C(&v9, a3);
    v7[0] = 0;
    v7[1] = 0;
    sub_100004AA0(v7, a1 + 1);
    operator new();
  }

  v5 = a1[5];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Unable to enable legacy RATs with a negative duration", buf, 2u);
  }

  return sub_100624328(a3, 2);
}

void sub_100624318(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100624328(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t MaxDataRateManager::getRegulatedRatsSwitchSupport(uint64_t a1, int a2)
{
  v5 = a1;
  v6 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1006322D4;
  v7[3] = &unk_101E6C030;
  v7[4] = a1 + 8;
  v7[5] = &v5;
  v8 = v7;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_100069D38;
    v12 = &unk_101E6BFE0;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_100058DDC;
    v12 = &unk_101E6BFC0;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15 & 1;
}

BOOL MaxDataRateManager::getRegulatedRatsSwitchSupport_sync(uint64_t a1, int a2)
{
  v4 = 0;
  v5 = 0;
  MaxDataRateManager::getModel_sync(a1, a2, &v4);
  if (v4)
  {
    v2 = *(v4 + 376) == 2;
  }

  else
  {
    v2 = 0;
  }

  if (v5)
  {
    sub_100004A34(v5);
  }

  return v2;
}

uint64_t MaxDataRateManager::areRegulatedRatsAllowedForAllSlots_sync(MaxDataRateManager *this)
{
  subscriber::makeSimSlotRange();
  v2 = v5;
  if (v5 == v6)
  {
    return 1;
  }

  do
  {
    if (v7(*v2))
    {
      break;
    }

    ++v2;
  }

  while (v2 != v6);
  if (v2 == v6)
  {
    return 1;
  }

  do
  {
    v3 = MaxDataRateManager::areRegulatedRatsAllowed_sync(this, *v2);
    if (!v3)
    {
      break;
    }

    do
    {
      ++v2;
    }

    while (v2 != v6 && (v7(*v2) & 1) == 0);
  }

  while (v2 != v6);
  return v3;
}

uint64_t MaxDataRateManager::getUserPreferenceEnableRegulatedRats(uint64_t result, int a2, uint64_t a3)
{
  if (*(a3 + 24))
  {
    v3 = result;
    v4[4] = result;
    v5 = a2;
    sub_100631468(&v6, a3);
    v4[0] = 0;
    v4[1] = 0;
    sub_100004AA0(v4, (v3 + 8));
    operator new();
  }

  return result;
}

void sub_100624710(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void MaxDataRateManager::setUserPreferenceEnableRegulatedRats(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v5[4] = a1;
  v6 = a2;
  v7 = a3;
  sub_100630D9C(&v8, a4);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_100624864(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void MaxDataRateManager::setUserPreferenceEnableRegulatedRats_sync(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, NSObject **a5)
{
  v10 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v23 = 0;
  v24 = 0;
  MaxDataRateManager::getModel_sync(a1, a2, &v23);
  v11 = v23;
  if (v23)
  {
    if (a4 != 1)
    {
      goto LABEL_18;
    }

    if ((a3 & 0x100) != 0)
    {
      sub_10061D524(v23 + 840, a3 & 1);
    }

    else
    {
      sub_100624C58((v23 + 840));
      v12 = *(v11 + 888);
      if (v12)
      {
        LODWORD(v12) = (*(*v12 + 48))(v12);
      }

      *(v11 + 856) = v12;
    }

    v13 = *(a1 + 584);
    if (!v13)
    {
      goto LABEL_18;
    }

    v14 = *(a1 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = "enables";
      if ((a3 & 0x100) == 0)
      {
        v15 = "disables";
      }

      *buf = 136315138;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I User %s regulated RATs while temporary timer is running. Reset timer", buf, 0xCu);
      v13 = *(a1 + 584);
      *(a1 + 584) = 0;
      if (!v13)
      {
        goto LABEL_18;
      }
    }

    else
    {
      *(a1 + 584) = 0;
    }

    (*(*v13 + 8))(v13);
LABEL_18:
    *buf = 1;
    memset(v28, 0, sizeof(v28));
    *&buf[8] = a1 + 312;
    LOBYTE(v28[0]) = *(a1 + 344);
    sub_1000517E4(v28 + 8, a1 + 352);
    v16 = MaxDataRateManager::areRegulatedRatsAllowed_sync(a1, a2);
    LODWORD(v26) = a2;
    v25 = !v16;
    sub_100626598(v28 + 8, &v26, &v25);
    if (MaxDataRateManager::supportsBB2GMitigation_sync(a1))
    {
      v17 = *v10;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        if (!*(a1 + 584) && *(*(a1 + 568) + 16) != 2)
        {
          MaxDataRateManager::areRegulatedRatsAllowed_sync(a1, a2);
        }

        v18 = asString();
        LODWORD(v26) = 136315138;
        *(&v26 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Device supports enable 2G option in system selection, sending it down with 2G preference set to %s", &v26, 0xCu);
      }

      v26 = 0uLL;
      ServiceMap = Registry::getServiceMap(*(a1 + 56));
      sub_10017AE44(&v26, ServiceMap);
      v20 = v26;
      if (v26)
      {
        v21 = *a5;
        group = v21;
        if (v21)
        {
          dispatch_retain(v21);
          dispatch_group_enter(v21);
        }

        (*(*v20 + 368))(v20, a2, a4, &group);
        if (group)
        {
          dispatch_group_leave(group);
          if (group)
          {
            dispatch_release(group);
          }
        }
      }

      if (*(&v26 + 1))
      {
        sub_100004A34(*(&v26 + 1));
      }
    }

    sub_10062A978(buf);
    goto LABEL_33;
  }

  if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
  {
    sub_101776138();
  }

LABEL_33:
  if (v24)
  {
    sub_100004A34(v24);
  }
}

void sub_100624BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_group_t group, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_10062A978(va);
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(a1);
}

void *sub_100624C58(void *result)
{
  if (result[10])
  {
    v1 = result;
    sub_10062FE2C((result + 7), result[1]);
    result = v1[6];
    if (result)
    {
      result = (*(*result + 48))(result);
    }

    *(v1 + 4) = result;
  }

  return result;
}

void MaxDataRateManager::setUserPreferenceEnableRegulatedRatsForAllSlots_sync(uint64_t a1, unsigned __int16 a2, uint64_t a3, NSObject **a4)
{
  v5 = *(a1 + 544);
  v6 = (a1 + 552);
  if (v5 != (a1 + 552))
  {
    v10 = a2;
    do
    {
      if (MaxDataRateManager::getRegulatedRatsSwitchSupport_sync(a1, *(v5 + 8)))
      {
        v11 = *(v5 + 8);
        v12 = *a4;
        v16 = v12;
        if (v12)
        {
          dispatch_retain(v12);
          dispatch_group_enter(v12);
        }

        v4 = v4 & 0xFFFFFFFFFFFF0000 | v10;
        MaxDataRateManager::setUserPreferenceEnableRegulatedRats_sync(a1, v11, v4, a3, &v16);
        if (v12)
        {
          dispatch_group_leave(v12);
          dispatch_release(v12);
        }
      }

      v13 = v5[1];
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
          v14 = v5[2];
          v15 = *v14 == v5;
          v5 = v14;
        }

        while (!v15);
      }

      v5 = v14;
    }

    while (v14 != v6);
  }
}

void sub_100624DC0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void MaxDataRateManager::carrierAndDeviceSupportLTE(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_1006324C0(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_100624F20(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void MaxDataRateManager::evaluate5gSupport_sync(uint64_t a1, int a2)
{
  if (*(a1 + 184) != a2)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = asString();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I 5G activation support is now (%s)", &v4, 0xCu);
    }

    MaxDataRateManager::evaluateSwitchStatesForSlot_sync(a1, 3);
  }
}

uint64_t MaxDataRateManager::handleNrDisableStatusChanged_sync(uint64_t result, void *a2)
{
  v2 = result;
  if (a2[2] == *(result + 208))
  {
    v3 = a2 + 1;
    v4 = *a2;
    if (*a2 == a2 + 1)
    {
      return result;
    }

    v5 = *(result + 192);
    while (*(v4 + 7) == *(v5 + 7))
    {
      result = NRDisableStatus::operator==();
      if (!result)
      {
        break;
      }

      v6 = v4[1];
      v7 = v4;
      if (v6)
      {
        do
        {
          v4 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v4 = v7[2];
          v8 = *v4 == v7;
          v7 = v4;
        }

        while (!v8);
      }

      v9 = v5[1];
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
          v10 = v5[2];
          v8 = *v10 == v5;
          v5 = v10;
        }

        while (!v8);
      }

      v5 = v10;
      if (v4 == v3)
      {
        return result;
      }
    }
  }

  v11 = *(v2 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I NR disable status changed, notifying clients", buf, 2u);
  }

  v12 = xpc_dictionary_create(0, 0, 0);
  if (v12 || (v12 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v12) == &_xpc_type_dictionary)
    {
      xpc_retain(v12);
      v13 = v12;
    }

    else
    {
      v13 = xpc_null_create();
    }
  }

  else
  {
    v13 = xpc_null_create();
    v12 = 0;
  }

  xpc_release(v12);
  *buf = v13;
  if (v13)
  {
    xpc_retain(v13);
  }

  else
  {
    *buf = xpc_null_create();
  }

  object = xpc_null_create();
  sub_10002A37C(119, buf, &object);
  xpc_release(object);
  xpc_release(*buf);
  *buf = 0;
  xpc_release(v13);
  return (*(**(v2 + 624) + 160))(*(v2 + 624));
}

void sub_100625204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11)
{
  xpc_release(object);
  xpc_release(a11);
  xpc_release(v11);
  _Unwind_Resume(a1);
}

void MaxDataRateManager::handleNrEntitlementStatusChanged_sync(uint64_t a1, void *a2)
{
  if (a2[2] == *(a1 + 280))
  {
    v4 = a2 + 1;
    v5 = *a2;
    if (*a2 == a2 + 1)
    {
      return;
    }

    v6 = *(a1 + 264);
    while (*(v5 + 7) == *(v6 + 7) && rest::NREntitlementStatus::operator==())
    {
      v7 = v5[1];
      v8 = v5;
      if (v7)
      {
        do
        {
          v5 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v5 = v8[2];
          v9 = *v5 == v8;
          v8 = v5;
        }

        while (!v9);
      }

      v10 = v6[1];
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
          v11 = v6[2];
          v9 = *v11 == v6;
          v6 = v11;
        }

        while (!v9);
      }

      v6 = v11;
      if (v5 == v4)
      {
        return;
      }
    }
  }

  sub_100632658(&v31, a2);
  v12 = *(a1 + 264);
  if (v12 != (a1 + 272))
  {
    v13 = a2 + 1;
    do
    {
      v14 = *v13;
      v15 = *(v12 + 7);
      if (!*v13)
      {
        goto LABEL_27;
      }

      v16 = a2 + 1;
      do
      {
        if (*(v14 + 28) >= v15)
        {
          v16 = v14;
        }

        v14 = *(v14 + 8 * (*(v14 + 28) < v15));
      }

      while (v14);
      if (v16 != v13 && v15 >= *(v16 + 7))
      {
        if (rest::NREntitlementStatus::operator==())
        {
          goto LABEL_60;
        }

        v15 = *(v12 + 7);
        v17 = a1;
        v23 = v32[0];
        if (!v32[0])
        {
          goto LABEL_57;
        }

        v24 = v32;
        do
        {
          if (*(v23 + 7) >= v15)
          {
            v24 = v23;
          }

          v23 = v23[*(v23 + 7) < v15];
        }

        while (v23);
        if (v24 == v32 || *(v24 + 7) > v15 || (v25 = *(v24 + 32), v26 = *(v12 + 32), v25 != v26))
        {
LABEL_57:
          v28 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v12 + 7));
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Enable 5G changed due to entitlements, evaluating state of switches", buf, 2u);
          }

          MaxDataRateManager::evaluateSwitchStatesForSlot_sync(v17, v15);
          goto LABEL_60;
        }

        if ((v25 & 1) != 0 || *(v24 + 33) == 1)
        {
          v27 = *(v24 + 34);
          if (v26)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v27 = 0;
          if (v26)
          {
            goto LABEL_69;
          }
        }

        if (*(v12 + 33))
        {
LABEL_69:
          if ((v27 & 1) != *(v12 + 34))
          {
            goto LABEL_57;
          }

          goto LABEL_60;
        }

        if (v27)
        {
          goto LABEL_57;
        }
      }

      else
      {
LABEL_27:
        v17 = a1;
        v18 = v32[0];
        if (!v32[0])
        {
          goto LABEL_57;
        }

        v19 = v32;
        do
        {
          if (*(v18 + 7) >= v15)
          {
            v19 = v18;
          }

          v18 = v18[*(v18 + 7) < v15];
        }

        while (v18);
        if (v19 == v32)
        {
          goto LABEL_57;
        }

        if (*(v19 + 7) > v15)
        {
          goto LABEL_57;
        }

        v20 = *(v19 + 32);
        v21 = *(v12 + 32);
        if (v20 != v21)
        {
          goto LABEL_57;
        }

        if ((v20 & 1) != 0 || *(v19 + 33) == 1)
        {
          v22 = *(v19 + 34);
          if (v21)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v22 = 0;
          if (v21)
          {
            goto LABEL_54;
          }
        }

        if (*(v12 + 33))
        {
LABEL_54:
          if ((v22 & 1) != *(v12 + 34))
          {
            goto LABEL_57;
          }

          goto LABEL_60;
        }

        if (v22)
        {
          goto LABEL_57;
        }
      }

LABEL_60:
      v29 = v12[1];
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
          v30 = v12[2];
          v9 = *v30 == v12;
          v12 = v30;
        }

        while (!v9);
      }

      v12 = v30;
    }

    while (v30 != (a1 + 272));
  }

  sub_10006DCAC(&v31, v32[0]);
}

uint64_t MaxDataRateManager::isVoiceOverCSSupported_sync(uint64_t a1, int a2)
{
  v4 = *(a1 + 248);
  v2 = a1 + 248;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 28) >= a2)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 28) < a2));
  }

  while (v3);
  if (v5 != v2 && *(v5 + 28) <= a2)
  {
    v6 = ((*(v5 + 32) & 0x100) == 0) | *(v5 + 32);
  }

  else
  {
LABEL_8:
    v6 = 1;
  }

  return v6 & 1;
}

void MaxDataRateManager::handleVoiceOverCSSupportChanged_sync(uint64_t a1, void *a2)
{
  if (*(a1 + 256) == a2[2])
  {
    v4 = *(a1 + 240);
    if (v4 == (a1 + 248))
    {
      return;
    }

    v5 = *a2;
    while (*(v4 + 7) == *(v5 + 7))
    {
      v6 = *(v4 + 33);
      v7 = *(v5 + 33);
      v8 = v6 != v7 || v6 == 0;
      if (!v8)
      {
        v6 = *(v4 + 32);
        v7 = *(v5 + 32);
      }

      if (v6 != v7)
      {
        break;
      }

      v9 = v4[1];
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
          v10 = v4[2];
          v8 = *v10 == v4;
          v4 = v10;
        }

        while (!v8);
      }

      v11 = v5[1];
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
          v12 = v5[2];
          v8 = *v12 == v5;
          v5 = v12;
        }

        while (!v8);
      }

      v5 = v12;
      v4 = v10;
      if (v10 == (a1 + 248))
      {
        return;
      }
    }
  }

  subscriber::makeSimSlotRange();
  v13 = v33;
  v14 = v34;
  if (v33 != v34)
  {
    v15 = v35;
    do
    {
      if (v35(*v13))
      {
        break;
      }

      ++v13;
    }

    while (v13 != v34);
    v16 = v34;
    if (v13 != v34)
    {
      v17 = a2 + 1;
      v18 = (a1 + 248);
      do
      {
        v19 = *v13;
        v20 = (*(**(a1 + 48) + 16))(*(a1 + 48), v19);
        if (MaxDataRateManager::getMaxDataRate_sync(a1, v19) - 1 <= 1)
        {
          v21 = *v20;
          if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
          {
            v22 = asString();
            LODWORD(buf) = 136315138;
            *(&buf + 4) = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I User selected %s. CS voice support ignored", &buf, 0xCu);
          }

          goto LABEL_66;
        }

        buf = 0uLL;
        v37 = 0;
        MaxDataRateManager::copySupportedSetMaxDataRates_sync(a1, v19, &buf);
        v23 = buf;
        if (buf != *(&buf + 1))
        {
          while ((*v23 - 1) >= 2)
          {
            if (++v23 == *(&buf + 1))
            {
              goto LABEL_54;
            }
          }
        }

        if (v23 == *(&buf + 1))
        {
LABEL_54:
          v30 = *v20;
          if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
          {
            *v32 = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I 2G/3G not supported. CS voice support ignored", v32, 2u);
          }

          v29 = 3;
        }

        else
        {
          v24 = *v17;
          if (!*v17)
          {
            goto LABEL_44;
          }

          v25 = v17;
          do
          {
            if (*(v24 + 28) >= v19)
            {
              v25 = v24;
            }

            v24 = *(v24 + 8 * (*(v24 + 28) < v19));
          }

          while (v24);
          if (v25 != v17 && *(v25 + 7) <= v19)
          {
            v26 = ((v25[4] & 0x100) == 0) | *(v25 + 16);
          }

          else
          {
LABEL_44:
            LOBYTE(v26) = 1;
          }

          v27 = *v18;
          if (!*v18)
          {
            goto LABEL_52;
          }

          v28 = a1 + 248;
          do
          {
            if (*(v27 + 28) >= v19)
            {
              v28 = v27;
            }

            v27 = *(v27 + 8 * (*(v27 + 28) < v19));
          }

          while (v27);
          if (v28 != v18 && *(v28 + 28) <= v19)
          {
            if ((v26 & 1) == (((*(v28 + 32) & 0x100) == 0) | *(v28 + 32) & 1))
            {
LABEL_53:
              v29 = 0;
              goto LABEL_62;
            }
          }

          else
          {
LABEL_52:
            if (v26)
            {
              goto LABEL_53;
            }
          }

          v31 = *(a1 + 40);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *v32 = 0;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I CS voice support changed, notifying clients", v32, 2u);
          }

          (*(**(a1 + 624) + 160))(*(a1 + 624));
          v29 = 1;
        }

LABEL_62:
        if (buf)
        {
          *(&buf + 1) = buf;
          operator delete(buf);
        }

        if (v29 != 3 && v29)
        {
          return;
        }

        do
        {
LABEL_66:
          ++v13;
        }

        while (v13 != v14 && (v15(*v13) & 1) == 0);
      }

      while (v13 != v16);
    }
  }
}

void sub_100625A64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MaxDataRateManager::handleDebugInRegulatedRatsCountryChange_sync(uint64_t a1, void *a2)
{
  if (a2[2] == *(a1 + 304))
  {
    v3 = *a2;
    if (*a2 == a2 + 1)
    {
LABEL_20:
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Debug in-regulated-rats-country stays the same", buf, 2u);
      }

      return;
    }

    v4 = *(a1 + 288);
    v5 = v4;
    while (1)
    {
      v6 = *(v3 + 7) == *(v5 + 7) && *(v3 + 32) == *(v5 + 32);
      if (!v6)
      {
        break;
      }

      v7 = v3[1];
      v8 = v3;
      if (v7)
      {
        do
        {
          v3 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v3 = v8[2];
          v6 = *v3 == v8;
          v8 = v3;
        }

        while (!v6);
      }

      v9 = v5[1];
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
          v10 = v5[2];
          v6 = *v10 == v5;
          v5 = v10;
        }

        while (!v6);
      }

      v5 = v10;
      if (v3 == a2 + 1)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v4 = *(a1 + 288);
  }

  v12 = (a1 + 296);
  if (v4 != (a1 + 296))
  {
    v13 = a2 + 1;
    do
    {
      v14 = *v13;
      v15 = *(v4 + 7);
      if (!*v13)
      {
        goto LABEL_32;
      }

      v16 = v13;
      do
      {
        if (*(v14 + 28) >= v15)
        {
          v16 = v14;
        }

        v14 = *(v14 + 8 * (*(v14 + 28) < v15));
      }

      while (v14);
      if (v16 != v13 && v15 >= *(v16 + 7))
      {
        v23 = *(v4 + 32);
        if (*(v16 + 32) == v23)
        {
          goto LABEL_36;
        }

        v24 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v4 + 7));
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = CSIBOOLAsString(v23);
          *buf = 136315138;
          v27 = v25;
          v20 = v24;
          goto LABEL_34;
        }
      }

      else
      {
LABEL_32:
        v17 = *(v4 + 32);
        v18 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v4 + 7));
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = CSIBOOLAsString(v17);
          *buf = 136315138;
          v27 = v19;
          v20 = v18;
LABEL_34:
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Debug in-regulated-rats-country is now (%s)", buf, 0xCu);
        }
      }

      MaxDataRateManager::evaluateSwitchStates_sync(a1, v15);
LABEL_36:
      v21 = v4[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v4[2];
          v6 = *v22 == v4;
          v4 = v22;
        }

        while (!v6);
      }

      v4 = v22;
    }

    while (v22 != v12);
  }
}

uint64_t sub_100625D94(uint64_t a1)
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

uint64_t sub_100625E14(uint64_t a1, int *a2, __int128 *a3)
{
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (!v6)
  {
    return sub_100625EB0(a1, v5, a2, a2, a3);
  }

  v7 = *a2;
  v8 = a1 + 8;
  do
  {
    if (*(v6 + 32) >= v7)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < v7));
  }

  while (v6);
  if (v8 == v5 || v7 < *(v8 + 32))
  {
    v5 = v8;
    return sub_100625EB0(a1, v5, a2, a2, a3);
  }

  v10 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v11 = *(v8 + 48);
  *(v8 + 40) = v10;
  if (v11)
  {
    sub_100004A34(v11);
  }

  return v8;
}

uint64_t sub_100625EB0(uint64_t **a1, uint64_t *a2, int *a3, _DWORD *a4, uint64_t a5)
{
  v7 = 0;
  v8 = 0;
  v5 = *sub_10002E2F4(a1, a2, &v8, &v7, a3);
  if (!v5)
  {
    operator new();
  }

  return v5;
}

void *sub_100625FE8(void *a1, void *a2, __int128 *a3, unsigned int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E6A800;
  sub_1006260C4((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_100626064(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E6A800;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1006260C4(uint64_t a1, void *a2, __int128 *a3, unsigned int *a4)
{
  v6 = *a3;
  *a3 = 0uLL;
  sub_10062612C(a1, a2, &v6, *a4);
  if (*(&v6 + 1))
  {
    sub_100004A34(*(&v6 + 1));
  }

  return a1;
}

void sub_100626114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10062612C(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v8 = (*(**a3 + 16))();
  *a1 = 4;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  *(a1 + 48) = 0;
  *(a1 + 80) = 0;
  *(a1 + 112) = 0;
  v9 = (*(**a3 + 24))();
  *(a1 + 120) = 3;
  *(a1 + 128) = v9;
  *(a1 + 136) = 0;
  *(a1 + 168) = 0;
  *(a1 + 200) = 0;
  *(a1 + 232) = 0;
  v10 = (*(**a3 + 32))();
  *(a1 + 240) = 2;
  *(a1 + 248) = v10;
  *(a1 + 256) = 0;
  *(a1 + 288) = 0;
  *(a1 + 320) = 0;
  *(a1 + 352) = 0;
  v11 = (*(**a3 + 40))();
  *(a1 + 360) = 1;
  *(a1 + 368) = v11;
  *(a1 + 376) = 0;
  *(a1 + 408) = 0;
  *(a1 + 440) = 0;
  *(a1 + 472) = 0;
  v12 = (*(**a3 + 48))();
  *(a1 + 480) = 4;
  *(a1 + 488) = v12;
  *(a1 + 496) = 0;
  *(a1 + 528) = 0;
  *(a1 + 560) = 0;
  *(a1 + 592) = 0;
  v13 = (*(**a3 + 56))();
  *(a1 + 600) = 3;
  *(a1 + 608) = v13;
  *(a1 + 616) = 0;
  *(a1 + 648) = 0;
  *(a1 + 680) = 0;
  *(a1 + 712) = 0;
  v14 = (*(**a3 + 64))();
  *(a1 + 720) = 2;
  *(a1 + 728) = v14;
  *(a1 + 736) = 0;
  *(a1 + 768) = 0;
  *(a1 + 800) = 0;
  *(a1 + 832) = 0;
  v15 = (*(**a3 + 72))();
  *(a1 + 840) = 1;
  *(a1 + 848) = v15;
  *(a1 + 856) = 0;
  *(a1 + 888) = 0;
  *(a1 + 920) = 0;
  *(a1 + 952) = 0;
  sub_100375B34(a1 + 960, a2, a4);
  return a1;
}

void sub_100626394(_Unwind_Exception *a1)
{
  sub_100626418(v1 + 840);
  sub_100626418(v1 + 720);
  sub_100626418(v1 + 600);
  sub_100626418(v1 + 480);
  sub_10061FF88(v1 + 360);
  sub_10061FF88(v1 + 240);
  sub_10061FF88(v1 + 120);
  sub_10061FF88(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100626418(uint64_t a1)
{
  sub_1006272D0(a1 + 88);
  sub_100627150(a1 + 56);
  sub_100627250(a1 + 24);
  return a1;
}

uint64_t sub_100626454(uint64_t a1)
{
  sub_100375B78((a1 + 960));
  sub_1006272D0(a1 + 928);
  sub_100627150(a1 + 896);
  sub_100627250(a1 + 864);
  sub_1006272D0(a1 + 808);
  sub_100627150(a1 + 776);
  sub_100627250(a1 + 744);
  sub_1006272D0(a1 + 688);
  sub_100627150(a1 + 656);
  sub_100627250(a1 + 624);
  sub_1006272D0(a1 + 568);
  sub_100627150(a1 + 536);
  sub_100627250(a1 + 504);
  sub_1006271D0(a1 + 448);
  sub_100627150(a1 + 416);
  sub_1006270D0(a1 + 384);
  sub_1006271D0(a1 + 328);
  sub_100627150(a1 + 296);
  sub_1006270D0(a1 + 264);
  sub_1006271D0(a1 + 208);
  sub_100627150(a1 + 176);
  sub_1006270D0(a1 + 144);
  sub_1006271D0(a1 + 88);
  sub_100627150(a1 + 56);
  sub_1006270D0(a1 + 24);
  return a1;
}

void *sub_100626540(void *a1, char **a2, char **a3)
{
  v5 = sub_10000501C(a1, *a2);
  sub_10000501C(v5 + 3, *a3);
  return a1;
}

void sub_10062657C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100626598(uint64_t a1, int *a2, _BYTE *a3)
{
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = *a2;
    v8 = a1 + 8;
    do
    {
      if (*(v6 + 28) >= v7)
      {
        v8 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 28) < v7));
    }

    while (v6);
    if (v8 != v5 && v7 >= *(v8 + 28))
    {
      *(v8 + 32) = *a3;
      return v8;
    }

    v5 = v8;
  }

  return sub_10062661C(a1, v5, a2, a2, a3);
}

uint64_t sub_10062661C(uint64_t **a1, uint64_t *a2, int *a3, _DWORD *a4, _BYTE *a5)
{
  v7 = 0;
  v8 = 0;
  v5 = *sub_1000504CC(a1, a2, &v8, &v7, a3);
  if (!v5)
  {
    operator new();
  }

  return v5;
}

uint64_t sub_1006266CC(uint64_t a1)
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

uint64_t *sub_10062674C(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    sub_100034AE8(result, a4);
  }

  return result;
}

void sub_1006267A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1006267C4(int *a1, int *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 >= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 < v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

int *sub_100626874(int *a1, int *a2)
{
  v2 = 0;
  v3 = *a1;
  do
  {
    v4 = a1[++v2];
  }

  while (v4 < v3);
  v5 = &a1[v2];
  v6 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v8 = *--a2;
    }

    while (v8 >= v3);
  }

  else
  {
    do
    {
      v7 = *--a2;
    }

    while (v7 >= v3);
  }

  if (v5 < a2)
  {
    v9 = *a2;
    v10 = &a1[v2];
    v11 = a2;
    do
    {
      *v10 = v9;
      *v11 = v4;
      do
      {
        v12 = v10[1];
        ++v10;
        v4 = v12;
      }

      while (v12 < v3);
      do
      {
        v13 = *--v11;
        v9 = v13;
      }

      while (v13 >= v3);
    }

    while (v10 < v11);
    v6 = v10 - 1;
  }

  if (v6 != a1)
  {
    *a1 = *v6;
  }

  *v6 = v3;
  return v6;
}

BOOL sub_100626928(int *a1, int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 < *a1)
      {
        if (v18 >= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v46 = *(a2 - 1);
          if (v46 >= v16)
          {
            return 1;
          }

          a1[1] = v46;
        }

        else
        {
          *a1 = v18;
        }

        *(a2 - 1) = v16;
        return 1;
      }

      if (v18 >= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v33 = a1[1];
LABEL_68:
      v51 = *a1;
      if (v33 < *a1)
      {
        *a1 = v33;
        a1[1] = v51;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          goto LABEL_59;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
LABEL_59:
          v47 = a1[3];
          if (v47 >= v6)
          {
            v6 = a1[3];
          }

          else
          {
            a1[2] = v47;
            a1[3] = v6;
            if (v47 < v8)
            {
              *v4 = v47;
              *v7 = v8;
              if (v47 < v11)
              {
                *a1 = v47;
                a1[1] = v11;
              }
            }
          }

          v48 = *(a2 - 1);
          if (v48 >= v6)
          {
            return 1;
          }

          a1[3] = v48;
          *(a2 - 1) = v6;
          v49 = a1[2];
          v33 = a1[3];
          if (v33 >= v49)
          {
            return 1;
          }

          a1[2] = v33;
          a1[3] = v49;
          v50 = a1[1];
          if (v33 >= v50)
          {
            return 1;
          }

          a1[1] = v33;
          a1[2] = v50;
          goto LABEL_68;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          goto LABEL_59;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      goto LABEL_59;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
LABEL_46:
        v26 = v28;
        goto LABEL_47;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v42 = *(a2 - 1);
        if (v42 < v26)
        {
          *v27 = v42;
          *(a2 - 1) = v26;
          v43 = *v27;
          v44 = *v25;
          if (v43 < v44)
          {
            a1[1] = v43;
            a1[2] = v44;
            v45 = *a1;
            if (v43 < *a1)
            {
              *a1 = v43;
              a1[1] = v45;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
          goto LABEL_46;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v14 = *(a2 - 1);
    v15 = *a1;
    if (v14 < *a1)
    {
      *a1 = v14;
      *(a2 - 1) = v15;
    }

    return 1;
  }

LABEL_16:
  v20 = a1 + 2;
  v19 = a1[2];
  v21 = a1[1];
  v22 = *a1;
  if (v21 >= *a1)
  {
    if (v19 >= v21)
    {
      goto LABEL_29;
    }

    a1[1] = v19;
    *v20 = v21;
    v23 = a1;
    v24 = a1 + 1;
LABEL_27:
    if (v19 >= v22)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v23 = a1;
  v24 = a1 + 2;
  if (v19 >= v21)
  {
    *a1 = v21;
    a1[1] = v22;
    v23 = a1 + 1;
    v24 = a1 + 2;
    goto LABEL_27;
  }

LABEL_28:
  *v23 = v19;
  *v24 = v22;
LABEL_29:
  v34 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v35 = 0;
  for (i = 12; ; i += 4)
  {
    v37 = *v34;
    v38 = *v20;
    if (*v34 < v38)
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v38;
        v40 = v39 - 4;
        if (v39 == 4)
        {
          break;
        }

        v38 = *(a1 + v39 - 8);
        v39 -= 4;
        if (v37 >= v38)
        {
          v41 = (a1 + v40);
          goto LABEL_37;
        }
      }

      v41 = a1;
LABEL_37:
      *v41 = v37;
      if (++v35 == 8)
      {
        break;
      }
    }

    v20 = v34++;
    if (v34 == a2)
    {
      return 1;
    }
  }

  return v34 + 1 == a2;
}

int *sub_100626CC0(int *a1, int *a2, int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_100626E8C(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 < *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          sub_100626E8C(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v14];
          v18 = v17 + 1;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            v20 = v22;
            v23 = *(v21 - 1);
            v24 = v23 < v22;
            if (v23 > v22)
            {
              v20 = *(v21 - 1);
            }

            if (v24)
            {
              v18 = v21;
            }

            else
            {
              v14 = v19;
            }
          }

          *v16 = v20;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          v25 = (v18 - a1 + 4) >> 2;
          v24 = v25 < 2;
          v26 = v25 - 2;
          if (!v24)
          {
            v27 = v26 >> 1;
            v28 = &a1[v27];
            v29 = *v28;
            v30 = *v18;
            if (*v28 < *v18)
            {
              do
              {
                *v18 = v29;
                v18 = v28;
                if (!v27)
                {
                  break;
                }

                v27 = (v27 - 1) >> 1;
                v28 = &a1[v27];
                v29 = *v28;
              }

              while (*v28 < v30);
              *v18 = v30;
            }
          }
        }

        v24 = v8-- <= 2;
      }

      while (!v24);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_100626E8C(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[1];
        if (*v8 <= v11)
        {
          v10 = v8[1];
        }

        if (*v8 < v11)
        {
          ++v8;
          v7 = v9;
        }
      }

      v12 = *a4;
      if (v10 >= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = (2 * v7) | 1;
          v8 = (result + 4 * v13);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v13;
          }

          else
          {
            v10 = *v8;
            v14 = v8[1];
            if (*v8 <= v14)
            {
              v10 = v8[1];
            }

            if (*v8 >= v14)
            {
              v7 = v13;
            }

            else
            {
              ++v8;
            }
          }
        }

        while (v10 >= v12);
        *a4 = v12;
      }
    }
  }

  return result;
}

uint64_t sub_100626F50(uint64_t a1)
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

uint64_t sub_100626FD0(uint64_t a1)
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

uint64_t sub_100627050(uint64_t a1)
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

uint64_t sub_1006270D0(uint64_t a1)
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

uint64_t sub_100627150(uint64_t a1)
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

uint64_t sub_1006271D0(uint64_t a1)
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

uint64_t sub_100627250(uint64_t a1)
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

uint64_t sub_1006272D0(uint64_t a1)
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

void sub_1006273D0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1006274A4);
  __cxa_rethrow();
}

void sub_100627410(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100627464(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006274A4(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1006274D0(ServiceManager::Service *this)
{
  *this = off_101E6A978;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10062752C(ServiceManager::Service *this)
{
  *this = off_101E6A978;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

void sub_1006275AC(uint64_t a1, NSObject **a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v6 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
    v4.var0.fObj = &v6;
    MaxDataRateManager::notifyServiceBootstrap(v2, v4);
  }

  v5.var0.fObj = &v6;
  MaxDataRateManager::notifyServiceBootstrap(v2, v5);
}

void sub_100627634(uint64_t a1, xpc_object_t *a2, NSObject **a3)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v12 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v12 = xpc_null_create();
  }

  v6 = *a3;
  v11 = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(v6);
    v7.fObj.fObj = &v12;
    v8.var0.fObj = &v11;
    MaxDataRateManager::notifyServiceMigration(v4, v7, v8);
  }

  v9.fObj.fObj = &v12;
  v10.var0.fObj = &v11;
  MaxDataRateManager::notifyServiceMigration(v4, v9, v10);
}

void sub_1006277C4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E6AA20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100627818(uint64_t a1)
{
  sub_1006272D0(a1 + 232);
  sub_100627150(a1 + 200);
  sub_100627250(a1 + 168);
  sub_1006271D0(a1 + 112);
  sub_100627150(a1 + 80);

  return sub_1006270D0(a1 + 48);
}

void *sub_100627878(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1006278D0(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1006278D0(void *result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100627958(v5, (v5 + 8), v4 + 8, (v4 + 8));
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

void *sub_100627958(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v9 = 0;
  v10 = 0;
  v4 = *sub_10002E2F4(a1, a2, &v10, &v9, a3);
  if (!v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    sub_1006279F8();
  }

  return v4;
}

void sub_100627AAC(_Unwind_Exception *a1)
{
  if (*(v2 + 63) < 0)
  {
    operator delete(*(v2 + 40));
  }

  sub_1001AD950(v1);
  _Unwind_Resume(a1);
}

void *sub_100627AD8(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100627B30(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_100627B30(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100627BB8(v5, (v5 + 8), v4 + 7, (v4 + 7));
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

uint64_t sub_100627BB8(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
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

void *sub_100627C5C(void *a1, uint64_t a2)
{
  sub_100627CD0(v4, a2);
  sub_100627D68(v4, a1);
  sub_100627250(v4);
  return a1;
}

uint64_t sub_100627CD0(uint64_t a1, uint64_t a2)
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

void *sub_100627D68(void *result, void *a2)
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

void sub_100627FC8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

__n128 sub_10062804C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6AA70;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_100628090(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1006280DC(void *a1, uint64_t a2)
{
  sub_100628150(v4, a2);
  sub_1006281E8(v4, a1);
  sub_1006272D0(v4);
  return a1;
}

uint64_t sub_100628150(uint64_t a1, uint64_t a2)
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

void *sub_1006281E8(void *result, void *a2)
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

void sub_100628448(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

__n128 sub_1006284CC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6AB00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10062851C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100628568(void *a1, uint64_t a2)
{
  sub_1006285DC(v4, a2);
  sub_100628674(v4, a1);
  sub_100627150(v4);
  return a1;
}

uint64_t sub_1006285DC(uint64_t a1, uint64_t a2)
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

void *sub_100628674(void *result, void *a2)
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

void sub_1006288D4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

__n128 sub_100628958(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6AB90;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1006289A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1006289EC(void *a1, uint64_t a2)
{
  sub_100628A60(v4, a2);
  sub_100628AF8(v4, a1);
  sub_1006270D0(v4);
  return a1;
}

uint64_t sub_100628A60(uint64_t a1, uint64_t a2)
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

void *sub_100628AF8(void *result, void *a2)
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

void sub_100628D58(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

__n128 sub_100628DDC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6AC20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_100628E24(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100628E70(void *a1, uint64_t a2)
{
  sub_100628EE4(v4, a2);
  sub_100628F7C(v4, a1);
  sub_1006271D0(v4);
  return a1;
}

uint64_t sub_100628EE4(uint64_t a1, uint64_t a2)
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

void *sub_100628F7C(void *result, void *a2)
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

void sub_1006291DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

__n128 sub_100629260(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6ACB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1006292B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100629374(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6AD40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1006293BC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100629480(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6ADC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1006294C4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100629588(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6AE40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1006295D8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10062969C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6AEC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1006296E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1006297A8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6AF40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1006297F0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1006298B4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6AFC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_100629904(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1006299C8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B040;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_100629A10(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100629AD4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B0C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_100629B18(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100629BDC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B140;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_100629C2C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100629CF0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B1C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_100629D38(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100629DFC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B240;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

unsigned __int8 *sub_100629E30(uint64_t a1, const __CFString ***a2)
{
  v2 = *(*(a1 + 8) + 568);
  if (*(v2 + 16) == 2 && *(v2 + 136) != 2)
  {
    return 3;
  }

  else
  {
    return MaxDataRateManager::getSwitchSupportFromPersistence_sync(*(a1 + 8), *(a1 + 16), *a2);
  }
}

uint64_t sub_100629E68(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100629F2C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B2C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_100629F7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10062A040(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B340;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10062A088(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10062A14C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B3C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10062A190(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10062A254(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B440;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10062A2A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10062A368(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B4C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10062A3B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10062A474(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B540;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10062A4B8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10062A574(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6B5C0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10062A5A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10062A664(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6B640;
  a2[1] = v2;
  return result;
}

uint64_t sub_10062A6A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10062A75C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6B6C0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10062A794(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10062A850(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6B740;
  a2[1] = v2;
  return result;
}

uint64_t sub_10062A88C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10062A8D8(uint64_t *a1)
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

  ctu::RestModule::disconnect((v2 + 88));
  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_10062A95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10062A978(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (rest::operator!=())
    {
      sub_10062A9D8(v2, a1 + 16);
    }
  }

  sub_10006DCAC(a1 + 24, *(a1 + 32));
  return a1;
}

uint64_t sub_10062A9D8(uint64_t a1, uint64_t a2)
{
  if (a1 + 32 != a2)
  {
    *(a1 + 32) = *a2;
    sub_10062AA68((a1 + 40), *(a2 + 8), (a2 + 16));
  }

  result = *(a1 + 24);
  if (result)
  {
    v4 = *(*result + 48);

    return v4();
  }

  return result;
}

void *sub_10062AA68(void *result, void *a2, void *a3)
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
          *(v8 + 7) = *(v9 + 7);
          *(v8 + 32) = *(v9 + 32);
          sub_1001720F4(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_1000685CC(v13);
          }

          v10 = v9[1];
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
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_10013CD24(&v12);
  }

  if (a2 != a3)
  {
    sub_10062ABD4(v5, (a2 + 28));
  }

  return result;
}

void sub_10062ABC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10013CD24(va);
  _Unwind_Resume(a1);
}

void sub_10062AC74(uint64_t **a1)
{
  v1 = *a1;
  v24 = a1;
  v25 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

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
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
LABEL_11:
  *(v2 + 608) = v12;
  v13 = *(v2 + 616);
  *(v2 + 616) = v11;
  if (v13)
  {
    sub_100004A34(v13);
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
  *buf = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, buf);
  if (v20)
  {
    v22 = v20[3];
    v21 = v20[4];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v15);
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v21);
      goto LABEL_21;
    }
  }

  else
  {
    v22 = 0;
  }

  std::mutex::unlock(v15);
  v21 = 0;
LABEL_21:
  *(v2 + 592) = v22;
  v23 = *(v2 + 600);
  *(v2 + 600) = v21;
  if (v23)
  {
    sub_100004A34(v23);
  }

  *buf = MaxDataRateManager::handleDeviceTypesChanged_sync;
  *&buf[8] = 0;
  sub_10062B9AC(v2 + 104, v2 + 88, v2, buf);
}

void sub_10062B3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20)
{
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_10062B444(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/mcc_mnc_computed_info");
  v5[0] = off_101E6BA60;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_10062B4F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10062B524(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/save_data_mode_user_preference");
  v5[0] = off_101E6BBE0;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_10062B5D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10062B604(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_10062EBF4(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

void sub_10062B668(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, dispatch_object_t *a5, void *aBlock)
{
  if (a2 && aBlock && *a5)
  {
    v11 = _Block_copy(aBlock);
    v12 = v11;
    object = *a5;
    *a5 = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1174405120;
    v15[2] = sub_10062F0CC;
    v15[3] = &unk_101E6BE60;
    v13 = a4[1];
    v15[4] = *a4;
    v16 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (v11)
    {
      v14 = _Block_copy(v11);
    }

    else
    {
      v14 = 0;
    }

    aBlocka = v14;
    (*(*a1 + 40))(a1, a2, a3, &object, v15);
    if (object)
    {
      dispatch_release(object);
    }

    if (aBlocka)
    {
      _Block_release(aBlocka);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }

    if (v12)
    {
      _Block_release(v12);
    }
  }
}

void sub_10062B7C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *aBlock, dispatch_object_t object)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v16)
  {
    _Block_release(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10062B808(uint64_t a1)
{
  v1 = *(a1 + 32);
  Registry::getTelephonyCapabilities(&v5, *(v1 + 56));
  v2 = (*(*v5 + 40))(v5);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v2)
  {
    MaxDataRateManager::submit5GSwitchStateToCA_sync(v1);
    MaxDataRateManager::submit5GSDMStatusToCA_sync(v1);
  }

  MaxDataRateManager::submit4GSwitchStateToCA_sync(v1);
  MaxDataRateManager::submit3GSwitchStateToCA_sync(v1);
  v3 = *(v1 + 568);
  v13 = 0;
  v14 = *(v3 + 8);
  v15 = *(v3 + 16);
  v16[3] = 0;
  v17[3] = 0;
  v18[3] = 0;
  v7 = 0;
  v8 = *(v3 + 128);
  v9 = *(v3 + 136);
  sub_100627CD0(v10, v3 + 144);
  v11[3] = 0;
  v12[3] = 0;
  MaxDataRateManager::submitLegacyRatsSwitchStateToCA_sync(v1, &v13, &v7);
  sub_1006272D0(v12);
  sub_100627150(v11);
  sub_100627250(v10);
  sub_1006271D0(v18);
  sub_100627150(v17);
  return sub_1006270D0(v16);
}

void sub_10062B96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_100626418(&a12);
  sub_10061FF88(va);
  _Unwind_Resume(a1);
}

void sub_10062BA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10062BB48(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B7E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10062BB80(void *a1, xpc_object_t *a2)
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

  sub_1008FC53C(v3, a2);
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

uint64_t sub_10062BC58(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10062BD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10062BE40(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B860;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10062BE78(void *a1, xpc_object_t *a2)
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

uint64_t sub_10062BF50(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10062C078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10062C128(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B8E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10062C160(void *a1)
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

uint64_t sub_10062C1A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10062C2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10062C390(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B960;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10062C3C8(void *a1, xpc_object_t *a2)
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

uint64_t sub_10062C4B8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10062C5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  sub_100249B60(va);
  sub_100249BE0(va1);
  sub_100249C60(va2);
  _Unwind_Resume(a1);
}

__n128 sub_10062C690(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6B9E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10062C6C8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = (a1[1] + (v5 >> 1));
  if (v5)
  {
    return (*(*v6 + v4))();
  }

  else
  {
    return v4(v6, a3);
  }
}

uint64_t sub_10062C714(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10062C7D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6BA60;
  a2[1] = v2;
  return result;
}

uint64_t sub_10062C804(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10062C93C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10062C9EC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6BAE0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10062CA24(void *a1, xpc_object_t *a2)
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

uint64_t sub_10062CB1C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10062CC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10062CD04(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6BB60;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10062CD3C(void *a1, xpc_object_t *a2)
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

  sub_10062CE60(v3, a2);
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

uint64_t sub_10062CE14(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10062CE60(uint64_t a1, xpc_object_t *a2)
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

  sub_10006DCAC(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object = xpc_null_create();
    }

    sub_100008EA4(&v12, &object, 0);
    xpc_release(object);
    object = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v11, &object, count);
    xpc_release(object);
    for (i = v13; i != v11[1] || v12 != v11[0]; i = ++v13)
    {
      v10 = 0;
      object = &v12;
      v8 = i;
      sub_10003EAD4(&object, &v10);
      if (xpc_get_type(v10) == &_xpc_type_dictionary)
      {
        object = 0;
        v8 = 0;
        v9 = 0;
        NRDisableStatus::NRDisableStatus((&object + 4), 1, 1);
        v6 = v10;
        if (v10)
        {
          xpc_retain(v10);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_10062D100(&object, &v6);
        xpc_release(v6);
        sub_10062D2B4(a1, &object, &object);
      }

      xpc_release(v10);
    }

    xpc_release(v11[0]);
    xpc_release(v12);
  }

  xpc_release(v3);
}

void sub_10062D070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, xpc_object_t a14, xpc_object_t a15, uint64_t a16, xpc_object_t a17)
{
  xpc_release(object);
  xpc_release(a17);
  xpc_release(v17);
  _Unwind_Resume(a1);
}

void sub_10062D100(int *a1, xpc_object_t *a2)
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
    read_rest_value((a1 + 1), &object);
    xpc_release(object);
    v3 = v9;
  }

  xpc_release(v3);
}

void sub_10062D260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_10062D2B4(uint64_t a1, int *a2, uint64_t a3)
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

uint64_t sub_10062D3F8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6BBE0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10062D42C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10062D478(uint64_t a1, xpc_object_t *a2)
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

  sub_10006DCAC(a1, *(a1 + 8));
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

    sub_100008EA4(&v10, object, 0);
    xpc_release(object[0]);
    v7[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      v7[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(object, v7, count);
    xpc_release(v7[0]);
    for (i = v11; i != object[1] || v10 != object[0]; i = ++v11)
    {
      v7[1] = i;
      v8 = 0;
      v7[0] = &v10;
      sub_10003EAD4(v7, &v8);
      if (xpc_get_type(v8) == &_xpc_type_dictionary)
      {
        v7[0] = 0;
        rest::SaveDataModePreference::SaveDataModePreference((v7 + 4), 0, 0, 1);
        v6 = v8;
        if (v8)
        {
          xpc_retain(v8);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_10062D718(v7, &v6);
        xpc_release(v6);
        sub_10062D8CC(a1, v7, v7);
      }

      xpc_release(v8);
    }

    xpc_release(object[0]);
    xpc_release(v10);
  }

  xpc_release(v3);
}

void sub_10062D688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object, uint64_t a11, xpc_object_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15)
{
  xpc_release(object);
  xpc_release(a15);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void sub_10062D718(int *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v10 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v10 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v7 = &v10;
    v8 = "first";
    sub_100006354(&v7, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v11 = *a1;
      ctu::rest::detail::read_enum_string_value(&v11, &object, v5);
      *a1 = v11;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0, v5);
    }

    xpc_release(object);
    v7 = &v10;
    v8 = "second";
    sub_100006354(&v7, &object);
    rest::read_rest_value((a1 + 1), &object, v6);
    xpc_release(object);
    v3 = v10;
  }

  xpc_release(v3);
}

void sub_10062D878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_10062D8CC(uint64_t a1, int *a2, uint64_t a3)
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

void sub_10062DA94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10062DB44(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6BC60;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10062DB7C(void *a1, xpc_object_t *a2)
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

  sub_10062DCA0(v3, a2);
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

uint64_t sub_10062DC54(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10062DCA0(uint64_t a1, xpc_object_t *a2)
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

  sub_10006DCAC(a1, *(a1 + 8));
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

    sub_100008EA4(&v10, object, 0);
    xpc_release(object[0]);
    v7[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      v7[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(object, v7, count);
    xpc_release(v7[0]);
    for (i = v11; i != object[1] || v10 != object[0]; i = ++v11)
    {
      v7[1] = i;
      v8 = 0;
      v7[0] = &v10;
      sub_10003EAD4(v7, &v8);
      if (xpc_get_type(v8) == &_xpc_type_dictionary)
      {
        v6 = v8;
        v7[0] = 0;
        if (v8)
        {
          xpc_retain(v8);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_10062DF1C(v7, &v6);
        xpc_release(v6);
        sub_10062D8CC(a1, v7, v7);
      }

      xpc_release(v8);
    }

    xpc_release(object[0]);
    xpc_release(v10);
  }

  xpc_release(v3);
}

void sub_10062DE8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object, uint64_t a11, xpc_object_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15)
{
  xpc_release(object);
  xpc_release(a15);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void sub_10062DF1C(int *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v10 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v10 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v7 = &v10;
    v8 = "first";
    sub_100006354(&v7, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v11 = *a1;
      ctu::rest::detail::read_enum_string_value(&v11, &object, v5);
      *a1 = v11;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0, v5);
    }

    xpc_release(object);
    v7 = &v10;
    v8 = "second";
    sub_100006354(&v7, &object);
    rest::read_rest_value((a1 + 1), &object, v6);
    xpc_release(object);
    v3 = v10;
  }

  xpc_release(v3);
}

void sub_10062E07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

void sub_10062E1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10062E26C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6BCE0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10062E2A4(void *a1, xpc_object_t *a2)
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

  sub_10062E3C8(v3, a2);
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

uint64_t sub_10062E37C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10062E3C8(uint64_t a1, xpc_object_t *a2)
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

  sub_10006DCAC(a1, *(a1 + 8));
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

    sub_100008EA4(&v10, object, 0);
    xpc_release(object[0]);
    v7[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      v7[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(object, v7, count);
    xpc_release(v7[0]);
    for (i = v11; i != object[1] || v10 != object[0]; i = ++v11)
    {
      v7[1] = i;
      v8 = 0;
      v7[0] = &v10;
      sub_10003EAD4(v7, &v8);
      if (xpc_get_type(v8) == &_xpc_type_dictionary)
      {
        v6 = v8;
        v7[0] = 0;
        if (v8)
        {
          xpc_retain(v8);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_10062E644(v7, &v6);
        xpc_release(v6);
        sub_10062E828(a1, v7, v7);
      }

      xpc_release(v8);
    }

    xpc_release(object[0]);
    xpc_release(v10);
  }

  xpc_release(v3);
}

void sub_10062E5B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object, uint64_t a11, xpc_object_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15)
{
  xpc_release(object);
  xpc_release(a15);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void sub_10062E644(int *a1, void **a2)
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
    v9 = "first";
    sub_100006354(&p_object, &v10);
    type = xpc_get_type(v10);
    if (type == &_xpc_type_string)
    {
      v12 = *a1;
      ctu::rest::detail::read_enum_string_value(&v12, &v10, v6);
      *a1 = v12;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&v10, 0, v6);
    }

    xpc_release(v10);
    p_object = &object;
    v9 = "second";
    sub_100006354(&p_object, &v10);
    if (xpc_get_type(v10) == &_xpc_type_null)
    {
      if (*(a1 + 5))
      {
        *(a1 + 5) = 0;
      }
    }

    else
    {
      if ((*(a1 + 5) & 1) == 0)
      {
        *(a1 + 2) = 256;
      }

      *(a1 + 4) = xpc::dyn_cast_or_default(&v10, 0, v7);
    }

    xpc_release(v10);
  }

  xpc_release(object);
}