void CellularPlanSettingsDevice::createRecoveryDelayProvisioningMonitorMode(void x0_0, NSObject **a1, int a2, uint64_t *a3, uint64_t a4, void x5_0, uint64_t *a5)
{
  v9 = *a1;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v10 = a3[1];
  v14 = *a3;
  v15 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v13 = *(a4 + 16);
  }

  v11 = a5[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10018DCB8();
}

void sub_1002EFA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, dispatch_object_t object)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::createRetryTransferMonitorMode(uint64_t a1, NSObject **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a2;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = a4[1];
  v11 = *a4;
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v10 = *(a5 + 16);
  }

  sub_1005A9014();
}

void sub_1002EFB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, dispatch_object_t object)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSettingsDevice::getMonitorModeBackoffTimes(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void **a8@<X8>)
{
  *a8 = 0;
  a8[1] = 0;
  a8[2] = 0;
  if (a2 == 2)
  {
    *buf = *"x";
    v57 = unk_1017EDEE8;
    v58 = xmmword_1017EDEF8;
    v59 = 3600;
    values[1] = 0;
    v62 = 0;
    values[0] = 0;
    sub_1002F3248(values, buf, &v60, 7uLL);
LABEL_10:
    v18 = *a8;
    if (*a8)
    {
      a8[1] = v18;
      operator delete(v18);
    }

    *a8 = *values;
    v17 = v62;
    goto LABEL_13;
  }

  if (a2 != 4)
  {
    if (a2 == 1)
    {
      *buf = xmmword_1017EDF10;
      v57 = unk_1017EDF20;
      v58 = xmmword_1017EDF30;
      values[1] = 0;
      v62 = 0;
      values[0] = 0;
      sub_1002F3248(values, buf, &v59, 6uLL);
    }

    else
    {
      *buf = xmmword_1017EDF40;
      v57 = unk_1017EDF50;
      v58 = xmmword_1017EDF60;
      v59 = 1200;
      values[1] = 0;
      v62 = 0;
      values[0] = 0;
      sub_1002F3248(values, buf, &v60, 7uLL);
    }

    goto LABEL_10;
  }

  values[0] = 30;
  *&v57 = 0;
  memset(buf, 0, sizeof(buf));
  sub_1002F3248(buf, values, &values[1], 1uLL);
  v16 = *a8;
  if (*a8)
  {
    a8[1] = v16;
    operator delete(v16);
  }

  *a8 = *buf;
  v17 = v57;
LABEL_13:
  a8[2] = v17;
  v19 = *(a3 + 23);
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(a3 + 8);
  }

  if (v19)
  {
    v20 = *(a4 + 23);
    if ((v20 & 0x80u) != 0)
    {
      v20 = *(a4 + 8);
    }

    if (v20)
    {
      values[0] = @"CellularPlanProvisioningSettings";
      v21 = CFArrayCreate(kCFAllocatorDefault, values, 1, &kCFTypeArrayCallBacks);
      theDict = 0;
      v55 = v21;
      v53 = v21;
      if (v21)
      {
        CFRetain(v21);
      }

      CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(a1, a3, a4, a5, a6, a7, &v53, buf);
      sub_100010180(&theDict, buf);
      sub_1000296E0(buf);
      sub_100010250(&v53);
      if (!theDict)
      {
        CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
        {
          sub_10176A5CC();
        }

        goto LABEL_32;
      }

      Value = CFDictionaryGetValue(theDict, @"CellularPlanProvisioningSettings");
      v23 = Value;
      if (!Value || (v24 = CFGetTypeID(Value), v24 != CFDictionaryGetTypeID()))
      {
        v27 = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
        {
          sub_10176A598();
        }

        goto LABEL_32;
      }

      if (a2 == 2)
      {
        if (!CFDictionaryContainsKey(v23, @"DelayMonitorModeBackoffTimes"))
        {
          v50 = sGetCellularPlanSettingsDeviceLog();
          if (os_log_type_enabled(*v50, OS_LOG_TYPE_ERROR))
          {
            sub_10176AC6C();
          }

          goto LABEL_32;
        }

        v25 = CFDictionaryGetValue(v23, @"DelayMonitorModeBackoffTimes");
        v26 = v25;
        if (!v25)
        {
          goto LABEL_63;
        }
      }

      else if (a2 == 4)
      {
        if (!CFDictionaryContainsKey(v23, @"RetryTransferMonitorModeBackoffTimes"))
        {
          v51 = sGetCellularPlanSettingsDeviceLog();
          if (os_log_type_enabled(*v51, OS_LOG_TYPE_ERROR))
          {
            sub_10176AC04();
          }

          goto LABEL_32;
        }

        v25 = CFDictionaryGetValue(v23, @"RetryTransferMonitorModeBackoffTimes");
        v26 = v25;
        if (!v25)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (!CFDictionaryContainsKey(v23, @"AttachMonitorModeBackoffTimes"))
        {
          v52 = sGetCellularPlanSettingsDeviceLog();
          if (os_log_type_enabled(*v52, OS_LOG_TYPE_ERROR))
          {
            sub_10176ABD0();
          }

          goto LABEL_32;
        }

        v25 = CFDictionaryGetValue(v23, @"AttachMonitorModeBackoffTimes");
        v26 = v25;
        if (!v25)
        {
          goto LABEL_63;
        }
      }

      v29 = CFGetTypeID(v25);
      if (v29 == CFArrayGetTypeID())
      {
        a8[1] = *a8;
        Count = CFArrayGetCount(v26);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v26, i);
            v34 = ValueAtIndex;
            if (ValueAtIndex)
            {
              v35 = CFGetTypeID(ValueAtIndex);
              if (v35 == CFNumberGetTypeID())
              {
                v36 = v34;
              }

              else
              {
                v36 = 0;
              }
            }

            else
            {
              v36 = 0;
            }

            *buf = 0;
            ctu::cf::assign(buf, v36, v33);
            v38 = a8[1];
            v37 = a8[2];
            if (v38 >= v37)
            {
              v40 = *a8;
              v41 = v38 - *a8;
              v42 = v41 >> 3;
              v43 = (v41 >> 3) + 1;
              if (v43 >> 61)
              {
                sub_1000CE3D4();
              }

              v44 = v37 - v40;
              if (v44 >> 2 > v43)
              {
                v43 = v44 >> 2;
              }

              if (v44 >= 0x7FFFFFFFFFFFFFF8)
              {
                v45 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v45 = v43;
              }

              if (v45)
              {
                sub_10006A8B4(a8, v45);
              }

              *(8 * v42) = *buf;
              v39 = (8 * v42 + 8);
              memcpy(0, v40, v41);
              v46 = *a8;
              *a8 = 0;
              a8[1] = v39;
              a8[2] = 0;
              if (v46)
              {
                operator delete(v46);
              }
            }

            else
            {
              *v38 = *buf;
              v39 = v38 + 8;
            }

            a8[1] = v39;
          }
        }

        v47 = *sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = (a8[1] - *a8) >> 3;
          *buf = 134217984;
          *&buf[4] = v48;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I MonitorModeBackoffTimes [%lu]", buf, 0xCu);
        }

LABEL_32:
        sub_10001021C(&theDict);
        sub_100010250(&v55);
        return;
      }

LABEL_63:
      v49 = sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(*v49, OS_LOG_TYPE_ERROR))
      {
        sub_10176AC38();
      }

      goto LABEL_32;
    }
  }
}

void sub_1002F0140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_100010250(va1);
  v7 = *v5;
  if (*v5)
  {
    *(v5 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::isSupportsTransferRecoveryOnSMDP(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  theDict = 0;
  CellularPlanSettingsDevice::getPhoneAccountTransferDict_sync(a1, a2, a3, a4, a5, a6, &theDict);
  if (!theDict)
  {
    CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
    {
      sub_1017678B8();
    }

    goto LABEL_22;
  }

  if (!CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    v14 = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      sub_101767884();
    }

    goto LABEL_22;
  }

  Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
  if (!CFDictionaryContainsKey(Value, @"SupportsTransferRecoveryOnSMDP"))
  {
    v17 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a6 + 23) >= 0)
      {
        v18 = a6;
      }

      else
      {
        v18 = *a6;
      }

      *buf = 136315138;
      v22[0] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I SupportsTransferRecoveryOnSMDP not present in CB entitlements for ICCID: [%s]", buf, 0xCu);
    }

LABEL_22:
    LOBYTE(v12) = 0;
    goto LABEL_23;
  }

  v8 = CFDictionaryGetValue(Value, @"SupportsTransferRecoveryOnSMDP");
  v9 = v8;
  buf[0] = 0;
  if (v8 && (v10 = CFGetTypeID(v8), v10 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(buf, v9, v11);
    v12 = buf[0];
  }

  else
  {
    v12 = 0;
  }

  v15 = *sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a6 + 23) >= 0)
    {
      v16 = a6;
    }

    else
    {
      v16 = *a6;
    }

    *buf = 67109378;
    LODWORD(v22[0]) = v12;
    WORD2(v22[0]) = 2080;
    *(v22 + 6) = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I SupportsTransferRecoveryOnSMDP is set to %d for ICCID: [%s]", buf, 0x12u);
  }

LABEL_23:
  sub_10001021C(&theDict);
  return v12 & 1;
}

void sub_1002F03FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::isTransferSupportedOverCloud(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  theDict = 0;
  CellularPlanSettingsDevice::getPhoneAccountTransferDict_sync(a1, a2, a3, a4, a5, a6, &theDict);
  if (!theDict)
  {
    CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
    {
      sub_1017678B8();
    }

    goto LABEL_22;
  }

  if (!CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    v14 = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      sub_101767884();
    }

    goto LABEL_22;
  }

  Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
  if (!CFDictionaryContainsKey(Value, @"TransferSupportedOverCloud"))
  {
    v17 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a6 + 23) >= 0)
      {
        v18 = a6;
      }

      else
      {
        v18 = *a6;
      }

      *buf = 136315138;
      v22[0] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I TransferSupportedOverCloud not present in CB entitlements for ICCID: [%s]", buf, 0xCu);
    }

LABEL_22:
    LOBYTE(v12) = 1;
    goto LABEL_23;
  }

  v8 = CFDictionaryGetValue(Value, @"TransferSupportedOverCloud");
  v9 = v8;
  buf[0] = 0;
  if (v8 && (v10 = CFGetTypeID(v8), v10 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(buf, v9, v11);
    v12 = buf[0];
  }

  else
  {
    v12 = 0;
  }

  v15 = *sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a6 + 23) >= 0)
    {
      v16 = a6;
    }

    else
    {
      v16 = *a6;
    }

    *buf = 67109378;
    LODWORD(v22[0]) = v12;
    WORD2(v22[0]) = 2080;
    *(v22 + 6) = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I TransferSupportedOverCloud is set to %d for ICCID: [%s]", buf, 0x12u);
  }

LABEL_23:
  sub_10001021C(&theDict);
  return v12 & 1;
}

void sub_1002F0640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::isDeletePlanBeforeTransferRequired(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  theDict = 0;
  CellularPlanSettingsDevice::getPhoneAccountTransferDict_sync(a1, a2, a3, a4, a5, a6, &theDict);
  if (!theDict)
  {
    CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
    {
      sub_1017678B8();
    }

    goto LABEL_22;
  }

  if (!CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    v14 = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      sub_101767884();
    }

    goto LABEL_22;
  }

  Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
  if (!CFDictionaryContainsKey(Value, @"RequiresDeleteBeforeTransfer"))
  {
    v17 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a6 + 23) >= 0)
      {
        v18 = a6;
      }

      else
      {
        v18 = *a6;
      }

      *buf = 136315138;
      v22[0] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I RequiresDeleteBeforeTransfer not present in CB entitlements for ICCID: [%s]", buf, 0xCu);
    }

LABEL_22:
    LOBYTE(v12) = 0;
    goto LABEL_23;
  }

  v8 = CFDictionaryGetValue(Value, @"RequiresDeleteBeforeTransfer");
  v9 = v8;
  buf[0] = 0;
  if (v8 && (v10 = CFGetTypeID(v8), v10 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(buf, v9, v11);
    v12 = buf[0];
  }

  else
  {
    v12 = 0;
  }

  v15 = *sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a6 + 23) >= 0)
    {
      v16 = a6;
    }

    else
    {
      v16 = *a6;
    }

    *buf = 67109378;
    LODWORD(v22[0]) = v12;
    WORD2(v22[0]) = 2080;
    *(v22 + 6) = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I kRequiresDeleteBeforeTransfer is set to %d for ICCID: [%s]", buf, 0x12u);
  }

LABEL_23:
  sub_10001021C(&theDict);
  return v12 & 1;
}

void sub_1002F0884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::isDeletePlanAfterTransferRequired(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  theDict = 0;
  CellularPlanSettingsDevice::getPhoneAccountTransferDict_sync(a1, a2, a3, a4, a5, a6, &theDict);
  if (!theDict)
  {
    CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
    {
      sub_1017678B8();
    }

    goto LABEL_22;
  }

  if (!CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    v14 = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      sub_101767884();
    }

    goto LABEL_22;
  }

  Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
  if (!CFDictionaryContainsKey(Value, @"RequiresDeleteAfterTransfer"))
  {
    v17 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a6 + 23) >= 0)
      {
        v18 = a6;
      }

      else
      {
        v18 = *a6;
      }

      *buf = 136315138;
      v22[0] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I RequiresDeleteAfterTransfer not present in CB entitlements for ICCID: [%s]", buf, 0xCu);
    }

LABEL_22:
    LOBYTE(v12) = 1;
    goto LABEL_23;
  }

  v8 = CFDictionaryGetValue(Value, @"RequiresDeleteAfterTransfer");
  v9 = v8;
  buf[0] = 0;
  if (v8 && (v10 = CFGetTypeID(v8), v10 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(buf, v9, v11);
    v12 = buf[0];
  }

  else
  {
    v12 = 0;
  }

  v15 = *sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a6 + 23) >= 0)
    {
      v16 = a6;
    }

    else
    {
      v16 = *a6;
    }

    *buf = 67109378;
    LODWORD(v22[0]) = v12;
    WORD2(v22[0]) = 2080;
    *(v22 + 6) = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I kRequiresDeleteAfterTransfer is set to %d for ICCID: [%s]", buf, 0x12u);
  }

LABEL_23:
  sub_10001021C(&theDict);
  return v12 & 1;
}

void sub_1002F0AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::getCarrierCharacteristicValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  theDict = 0;
  v20 = 0;
  CellularPlanSettingsDevice::getPhoneAccountTransferDict_sync(a1, a2, a3, a4, a5, a6, &theDict);
  if (!theDict || !CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
    {
      sub_1017678B8();
    }

    goto LABEL_13;
  }

  Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
  Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, Value);
  v10 = v20;
  v20 = Copy;
  *buf = v10;
  sub_10001021C(buf);
  if (!v20 || !CFDictionaryContainsKey(v20, @"CarrierCharacteristics"))
  {
    v16 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I CarrierCharacteristics not present in CB", buf, 2u);
    }

LABEL_13:
    a7[2] = 0;
    a7[1] = 0;
    *a7 = a7 + 1;
    goto LABEL_14;
  }

  a7[2] = 0;
  a7[1] = 0;
  *a7 = a7 + 1;
  v11 = CFDictionaryGetValue(v20, @"CarrierCharacteristics");
  Count = CFArrayGetCount(v11);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      __p[0] = 0;
      __p[1] = 0;
      v18 = 0;
      CFArrayGetValueAtIndex(v11, i);
      memset(buf, 0, sizeof(buf));
      v22 = 0;
      ctu::cf::assign();
      *__p = *buf;
      v18 = v22;
      sub_100005BA0(a7, __p, __p);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

LABEL_14:
  sub_10001021C(&theDict);
  return sub_10001021C(&v20);
}

void sub_1002F0CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, const void *a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_100009970(v23, *(v23 + 8));
  sub_10001021C(&a16);
  sub_10001021C(&a17);
  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::getCarrierCharacteristicValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  theDict = 0;
  v28 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_9:
  (*(*v13 + 80))(__p, v13, a2, 1, @"PhoneAccountTransfer", 0, 0);
  sub_100010180(&theDict, __p);
  sub_10000A1EC(__p);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (!theDict)
  {
    v22 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = subscriber::asString();
      sub_10176ACA0(v23, buf, v22);
    }

    goto LABEL_24;
  }

  Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, theDict);
  v16 = v28;
  v28 = Copy;
  *buf = v16;
  sub_10001021C(buf);
  if (!v28 || !CFDictionaryContainsKey(v28, @"CarrierCharacteristics"))
  {
    v20 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = subscriber::asString();
      *buf = 136315138;
      *&buf[4] = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I CarrierCharacteristics not present in CB for slot: [%s]", buf, 0xCu);
    }

LABEL_24:
    a3[2] = 0;
    a3[1] = 0;
    *a3 = a3 + 1;
    goto LABEL_25;
  }

  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  Value = CFDictionaryGetValue(v28, @"CarrierCharacteristics");
  Count = CFArrayGetCount(Value);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      __p[0] = 0;
      __p[1] = 0;
      v26 = 0;
      CFArrayGetValueAtIndex(Value, i);
      memset(buf, 0, sizeof(buf));
      v30 = 0;
      ctu::cf::assign();
      *__p = *buf;
      v26 = v30;
      sub_100005BA0(a3, __p, __p);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

LABEL_25:
  sub_10001021C(&theDict);
  return sub_10001021C(&v28);
}

uint64_t CellularPlanSettingsDevice::shouldPadIccidWithChecksum(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  theDict = 0;
  CellularPlanSettingsDevice::getPhoneAccountTransferDict_sync(a1, a2, a3, a4, a5, a6, &theDict);
  if (!theDict)
  {
    CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
    {
      sub_1017678B8();
    }

    goto LABEL_22;
  }

  if (!CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    v14 = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      sub_101767884();
    }

    goto LABEL_22;
  }

  Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
  if (!CFDictionaryContainsKey(Value, @"PadIccidWithCheckSum"))
  {
    v17 = *sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a6 + 23) >= 0)
      {
        v18 = a6;
      }

      else
      {
        v18 = *a6;
      }

      *buf = 136315138;
      v22[0] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I PadIccidWithCheckSum not present in CB entitlements for ICCID: [%s]", buf, 0xCu);
    }

LABEL_22:
    LOBYTE(v12) = 0;
    goto LABEL_23;
  }

  v8 = CFDictionaryGetValue(Value, @"PadIccidWithCheckSum");
  v9 = v8;
  buf[0] = 0;
  if (v8 && (v10 = CFGetTypeID(v8), v10 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(buf, v9, v11);
    v12 = buf[0];
  }

  else
  {
    v12 = 0;
  }

  v15 = *sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a6 + 23) >= 0)
    {
      v16 = a6;
    }

    else
    {
      v16 = *a6;
    }

    *buf = 67109378;
    LODWORD(v22[0]) = v12;
    WORD2(v22[0]) = 2080;
    *(v22 + 6) = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I PadIccidWithCheckSum is set to %d for ICCID: [%s]", buf, 0x12u);
  }

LABEL_23:
  sub_10001021C(&theDict);
  return v12 & 1;
}

void sub_1002F12FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::getMCCsOfSupportedSIMs_sync@<X0>(const void **result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 16) = 0;
  *(a7 + 8) = 0;
  *a7 = a7 + 8;
  v8 = *(a2 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  if (v8)
  {
    v14 = result;
    values = @"SupportedSIMs";
    v15 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
    v35 = 0;
    v36 = v15;
    v34 = v15;
    if (v15)
    {
      CFRetain(v15);
    }

    CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(v14, a2, a3, a4, a5, a6, &v34, v25);
    sub_100010180(&v35, v25);
    sub_1000296E0(v25);
    sub_100010250(&v34);
    if (v35)
    {
      Value = CFDictionaryGetValue(v35, @"SupportedSIMs");
      v17 = Value;
      if (Value && (v18 = CFGetTypeID(Value), v18 == CFArrayGetTypeID()))
      {
        Count = CFArrayGetCount(v17);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            memset(&v33, 0, sizeof(v33));
            CFArrayGetValueAtIndex(v17, i);
            v25[0] = 0;
            v25[1] = 0;
            v26[0] = 0;
            ctu::cf::assign();
            *&v33.__r_.__value_.__l.__data_ = *v25;
            v33.__r_.__value_.__r.__words[2] = v26[0];
            v32 = 0;
            v30 = 0u;
            *__p = 0u;
            *v28 = 0u;
            *v29 = 0u;
            *v26 = 0u;
            v27 = 0u;
            *v25 = 0u;
            getCarrierInformation(&v33, v25);
            v21 = *sGetCellularPlanSettingsDeviceLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              if (v27 >= 0)
              {
                v22 = &v26[1];
              }

              else
              {
                v22 = v26[1];
              }

              *buf = 136315138;
              v38 = v22;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Adding MCC [%s]", buf, 0xCu);
            }

            sub_100073EE8(a7, &v26[1], &v26[1]);
            if (SHIBYTE(v32) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v30) < 0)
            {
              operator delete(v29[1]);
            }

            if (SHIBYTE(v29[0]) < 0)
            {
              operator delete(v28[0]);
            }

            if (SHIBYTE(v27) < 0)
            {
              operator delete(v26[1]);
            }

            if (SHIBYTE(v26[0]) < 0)
            {
              operator delete(v25[0]);
            }

            if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v33.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      else
      {
        CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
        {
          sub_10176ACE8();
        }
      }
    }

    else
    {
      v24 = sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
      {
        sub_10176A5CC();
      }
    }

    sub_10001021C(&v35);
    return sub_100010250(&v36);
  }

  return result;
}

void sub_1002F1654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_10001021C((v36 - 128));
  sub_100010250((v36 - 120));
  sub_100009970(v35, *(v35 + 8));
  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::getPlanAutoInstallBackoffTimes_sync@<X0>(const void **result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, const void **a7@<X8>)
{
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v8 = *(a2 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  if (v8)
  {
    v10 = *(a3 + 23);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a3 + 8);
    }

    if (v10)
    {
      v15 = result;
      values = @"CellularPlanProvisioningSettings";
      v16 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      theDict = 0;
      v47 = v16;
      v45 = v16;
      if (v16)
      {
        CFRetain(v16);
      }

      CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(v15, a2, a3, a4, a5, a6, &v45, buf);
      sub_100010180(&theDict, buf);
      sub_1000296E0(buf);
      sub_100010250(&v45);
      if (theDict)
      {
        Value = CFDictionaryGetValue(theDict, @"CellularPlanProvisioningSettings");
        v18 = Value;
        if (Value && (v19 = CFGetTypeID(Value), v19 == CFDictionaryGetTypeID()))
        {
          v20 = CFDictionaryGetValue(v18, @"PlanAutoInstallBackoffTimes");
          v21 = v20;
          if (v20 && (v22 = CFGetTypeID(v20), v22 == CFArrayGetTypeID()))
          {
            Count = CFArrayGetCount(v21);
            if (Count >= 1)
            {
              for (i = 0; i != Count; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v21, i);
                v27 = ValueAtIndex;
                if (ValueAtIndex)
                {
                  v28 = CFGetTypeID(ValueAtIndex);
                  if (v28 == CFNumberGetTypeID())
                  {
                    v29 = v27;
                  }

                  else
                  {
                    v29 = 0;
                  }
                }

                else
                {
                  v29 = 0;
                }

                *buf = 0;
                ctu::cf::assign(buf, v29, v26);
                v31 = a7[1];
                v30 = a7[2];
                if (v31 >= v30)
                {
                  v33 = *a7;
                  v34 = v31 - *a7;
                  v35 = v34 >> 3;
                  v36 = (v34 >> 3) + 1;
                  if (v36 >> 61)
                  {
                    sub_1000CE3D4();
                  }

                  v37 = v30 - v33;
                  if (v37 >> 2 > v36)
                  {
                    v36 = v37 >> 2;
                  }

                  if (v37 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v38 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v38 = v36;
                  }

                  if (v38)
                  {
                    sub_10006A8B4(a7, v38);
                  }

                  *(8 * v35) = *buf;
                  v32 = (8 * v35 + 8);
                  memcpy(0, v33, v34);
                  v39 = *a7;
                  *a7 = 0;
                  a7[1] = v32;
                  a7[2] = 0;
                  if (v39)
                  {
                    operator delete(v39);
                  }
                }

                else
                {
                  *v31 = *buf;
                  v32 = v31 + 8;
                }

                a7[1] = v32;
              }
            }

            v40 = *sGetCellularPlanSettingsDeviceLog();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v41 = (a7[1] - *a7) >> 3;
              *buf = 134217984;
              v49 = v41;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I PlanAutoInstallBackoffTimes [%lu]", buf, 0xCu);
            }
          }

          else
          {
            CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
            if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
            {
              sub_10176AC38();
            }
          }
        }

        else
        {
          v42 = sGetCellularPlanSettingsDeviceLog();
          if (os_log_type_enabled(*v42, OS_LOG_TYPE_ERROR))
          {
            sub_10176A598();
          }
        }
      }

      else
      {
        v43 = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
        {
          sub_10176A5CC();
        }
      }

      sub_10001021C(&theDict);
      return sub_100010250(&v47);
    }
  }

  return result;
}

void sub_1002F1AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_100010250(va1);
  v7 = *v5;
  if (*v5)
  {
    *(v5 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t CellularPlanSettingsDevice::supportsSimultaneousSIMTransfer_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  theDict = 0;
  CellularPlanSettingsDevice::getPhoneAccountTransferDict_sync(a1, a2, a3, a4, a5, a6, &theDict);
  if (!theDict)
  {
    CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
    {
      sub_1017678B8();
    }

    goto LABEL_11;
  }

  if (!CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    v14 = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      sub_101767884();
    }

    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
  if (!CFDictionaryContainsKey(Value, @"SupportsSimultaneousSIMTransfer"))
  {
LABEL_11:
    v12 = 1;
    goto LABEL_12;
  }

  v8 = CFDictionaryGetValue(Value, @"SupportsSimultaneousSIMTransfer");
  v9 = v8;
  buf[0] = 0;
  if (v8 && (v10 = CFGetTypeID(v8), v10 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(buf, v9, v11);
    v12 = buf[0];
  }

  else
  {
    v12 = 0;
  }

  v16 = *sGetCellularPlanSettingsDeviceLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = "false";
    if (v12)
    {
      v17 = "true";
    }

    if (*(a6 + 23) >= 0)
    {
      v18 = a6;
    }

    else
    {
      v18 = *a6;
    }

    *buf = 136315394;
    v21 = v17;
    v22 = 2080;
    v23 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I SupportsSimultaneousSIMTransfer is set to %s for ICCID: [%s]", buf, 0x16u);
  }

LABEL_12:
  sub_10001021C(&theDict);
  return v12 & 1;
}

void sub_1002F1CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::getAdditionalRejectCauseCodes@<X0>(const void **result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, const void **a7@<X8>)
{
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v8 = *(a2 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  if (v8)
  {
    v10 = *(a3 + 23);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a3 + 8);
    }

    if (v10)
    {
      v15 = result;
      values = @"CellularPlanProvisioningSettings";
      v16 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      theDict = 0;
      v47 = v16;
      v45 = v16;
      if (v16)
      {
        CFRetain(v16);
      }

      CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(v15, a2, a3, a4, a5, a6, &v45, buf);
      sub_100010180(&theDict, buf);
      sub_1000296E0(buf);
      sub_100010250(&v45);
      if (theDict)
      {
        Value = CFDictionaryGetValue(theDict, @"CellularPlanProvisioningSettings");
        v18 = Value;
        if (Value && (v19 = CFGetTypeID(Value), v19 == CFDictionaryGetTypeID()))
        {
          v20 = CFDictionaryGetValue(v18, @"AdditionalRejectCauseCodesForAttachMonitorMode");
          v21 = v20;
          if (v20 && (v22 = CFGetTypeID(v20), v22 == CFArrayGetTypeID()))
          {
            Count = CFArrayGetCount(v21);
            if (Count >= 1)
            {
              for (i = 0; i != Count; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v21, i);
                v27 = ValueAtIndex;
                if (ValueAtIndex)
                {
                  v28 = CFGetTypeID(ValueAtIndex);
                  if (v28 == CFNumberGetTypeID())
                  {
                    v29 = v27;
                  }

                  else
                  {
                    v29 = 0;
                  }
                }

                else
                {
                  v29 = 0;
                }

                *buf = 0;
                ctu::cf::assign(buf, v29, v26);
                v31 = a7[1];
                v30 = a7[2];
                if (v31 >= v30)
                {
                  v33 = *a7;
                  v34 = v31 - *a7;
                  v35 = v34 >> 2;
                  v36 = (v34 >> 2) + 1;
                  if (v36 >> 62)
                  {
                    sub_1000CE3D4();
                  }

                  v37 = v30 - v33;
                  if (v37 >> 1 > v36)
                  {
                    v36 = v37 >> 1;
                  }

                  if (v37 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v38 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v38 = v36;
                  }

                  if (v38)
                  {
                    sub_100016740(a7, v38);
                  }

                  *(4 * v35) = *buf;
                  v32 = (4 * v35 + 4);
                  memcpy(0, v33, v34);
                  v39 = *a7;
                  *a7 = 0;
                  a7[1] = v32;
                  a7[2] = 0;
                  if (v39)
                  {
                    operator delete(v39);
                  }
                }

                else
                {
                  *v31 = *buf;
                  v32 = v31 + 4;
                }

                a7[1] = v32;
              }
            }

            v40 = *sGetCellularPlanSettingsDeviceLog();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v41 = (a7[1] - *a7) >> 2;
              *buf = 134217984;
              v49 = v41;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I AdditionalRejectCauseCodesForAttachMonitorMode [%lu]", buf, 0xCu);
            }
          }

          else
          {
            CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
            if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
            {
              sub_10176AD1C();
            }
          }
        }

        else
        {
          v42 = sGetCellularPlanSettingsDeviceLog();
          if (os_log_type_enabled(*v42, OS_LOG_TYPE_ERROR))
          {
            sub_10176A598();
          }
        }
      }

      else
      {
        v43 = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
        {
          sub_10176A5CC();
        }
      }

      sub_10001021C(&theDict);
      return sub_100010250(&v47);
    }
  }

  return result;
}

void sub_1002F20BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_100010250(va1);
  v7 = *v5;
  if (*v5)
  {
    *(v5 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

const void **CellularPlanSettingsDevice::getAdditionalAttachMonitorModeBackoffTimes@<X0>(const void **result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, const void **a7@<X8>)
{
  v8 = *(a2 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  if (!v8)
  {
    goto LABEL_37;
  }

  v10 = *(a3 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a3 + 8);
  }

  if (!v10)
  {
LABEL_37:
    *a7 = 0;
    a7[1] = 0;
    a7[2] = 0;
    return result;
  }

  v15 = result;
  values = @"CellularPlanProvisioningSettings";
  v16 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  theDict = 0;
  v48 = v16;
  v46 = v16;
  if (v16)
  {
    CFRetain(v16);
  }

  CellularPlanSettingsDevice::getMatchingCarrierBundleValuesByKeys(v15, a2, a3, a4, a5, a6, &v46, buf);
  sub_100010180(&theDict, buf);
  sub_1000296E0(buf);
  sub_100010250(&v46);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"CellularPlanProvisioningSettings");
    v18 = Value;
    if (Value && (v19 = CFGetTypeID(Value), v19 == CFDictionaryGetTypeID()))
    {
      if (CFDictionaryContainsKey(v18, @"AdditionalAttachMonitorModeBackoffTimes"))
      {
        v20 = CFDictionaryGetValue(v18, @"AdditionalAttachMonitorModeBackoffTimes");
        v21 = v20;
        if (v20)
        {
          v22 = CFGetTypeID(v20);
          if (v22 == CFArrayGetTypeID())
          {
            *a7 = 0;
            a7[1] = 0;
            a7[2] = 0;
            Count = CFArrayGetCount(v21);
            if (Count >= 1)
            {
              for (i = 0; i != Count; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v21, i);
                v27 = ValueAtIndex;
                if (ValueAtIndex)
                {
                  v28 = CFGetTypeID(ValueAtIndex);
                  if (v28 == CFNumberGetTypeID())
                  {
                    v29 = v27;
                  }

                  else
                  {
                    v29 = 0;
                  }
                }

                else
                {
                  v29 = 0;
                }

                *buf = 0;
                ctu::cf::assign(buf, v29, v26);
                v31 = a7[1];
                v30 = a7[2];
                if (v31 >= v30)
                {
                  v33 = *a7;
                  v34 = v31 - *a7;
                  v35 = v34 >> 3;
                  v36 = (v34 >> 3) + 1;
                  if (v36 >> 61)
                  {
                    sub_1000CE3D4();
                  }

                  v37 = v30 - v33;
                  if (v37 >> 2 > v36)
                  {
                    v36 = v37 >> 2;
                  }

                  if (v37 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v38 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v38 = v36;
                  }

                  if (v38)
                  {
                    sub_10006A8B4(a7, v38);
                  }

                  *(8 * v35) = *buf;
                  v32 = (8 * v35 + 8);
                  memcpy(0, v33, v34);
                  v39 = *a7;
                  *a7 = 0;
                  a7[1] = v32;
                  a7[2] = 0;
                  if (v39)
                  {
                    operator delete(v39);
                  }
                }

                else
                {
                  *v31 = *buf;
                  v32 = v31 + 8;
                }

                a7[1] = v32;
              }
            }

            v40 = *sGetCellularPlanSettingsDeviceLog();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v41 = (a7[1] - *a7) >> 3;
              *buf = 134217984;
              v50 = v41;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I AdditionalAttachMonitorModeBackoffTimes [%lu]", buf, 0xCu);
            }

            goto LABEL_43;
          }
        }

        CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
        {
          sub_10176AC38();
        }
      }

      else
      {
        v45 = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*v45, OS_LOG_TYPE_ERROR))
        {
          sub_10176AC6C();
        }
      }
    }

    else
    {
      v42 = sGetCellularPlanSettingsDeviceLog();
      if (os_log_type_enabled(*v42, OS_LOG_TYPE_ERROR))
      {
        sub_10176A598();
      }
    }
  }

  else
  {
    v43 = sGetCellularPlanSettingsDeviceLog();
    if (os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
    {
      sub_10176A5CC();
    }
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
LABEL_43:
  sub_10001021C(&theDict);
  return sub_100010250(&v48);
}

void sub_1002F252C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, const void *);
  v7 = *v5;
  if (*v5)
  {
    *(v5 + 8) = v7;
    operator delete(v7);
  }

  sub_10001021C(va);
  sub_100010250(va1);
  _Unwind_Resume(a1);
}

void sub_1002F25C0(void *a1)
{
  sub_1002F32BC(a1);

  operator delete();
}

void sub_1002F2600(uint64_t a1)
{
  sub_1002F32BC((a1 - 8));

  operator delete();
}

void sub_1002F2644(uint64_t a1)
{
  sub_1002F32BC((a1 - 16));

  operator delete();
}

void sub_1002F2688(uint64_t a1)
{
  sub_1002F32BC((a1 - 24));

  operator delete();
}

void sub_1002F26CC(uint64_t a1)
{
  sub_1002F32BC((a1 - 32));

  operator delete();
}

uint64_t sub_1002F2708(__CFDictionary *a1, void *cf, uint64_t a3)
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

void sub_1002F2788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100DA3324(&a9);
  sub_100DA3324(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002F27AC(uint64_t a1)
{
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

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

uint64_t *sub_1002F2830(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10009A404(result, a4);
  }

  return result;
}

void sub_1002F2898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000212F4(&a9);
  _Unwind_Resume(a1);
}

void *sub_1002F28B8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v8 = 0;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  LOBYTE(v8) = 1;
  sub_1002F2940(v7);
  return v4;
}

uint64_t sub_1002F2940(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000FA378(a1);
  }

  return a1;
}

void *sub_1002F2978(void *a1, CFTypeRef *a2)
{
  v4 = sub_100010180(a1, a2);
  sub_100010180(v4 + 1, a2 + 1);
  return a1;
}

uint64_t sub_1002F29C4(unint64_t *a1, __int128 *a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    sub_1000CE3D4();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    sub_1002F2B5C(a1, v6);
  }

  v7 = 120 * v2;
  v19 = 0;
  v20 = v7;
  *(&v21 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(v7 + 24) = v9;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v10 = a2[3];
  *(v7 + 64) = *(a2 + 8);
  *(v7 + 48) = v10;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v11 = *(a2 + 72);
  *(v7 + 88) = *(a2 + 11);
  *(v7 + 72) = v11;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  v12 = a2[6];
  *(v7 + 112) = *(a2 + 14);
  *(v7 + 96) = v12;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  *&v21 = 120 * v2 + 120;
  v13 = a1[1];
  v14 = 120 * v2 + *a1 - v13;
  sub_1002F2BB4(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_1002F2DF4(&v19);
  return v18;
}

void sub_1002F2B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1002F2DF4(va);
  _Unwind_Resume(a1);
}

void sub_1002F2B5C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1002F2BB4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v16 = a4;
  v17 = a4;
  v14[0] = a1;
  v14[1] = &v16;
  v14[2] = &v17;
  v15 = 0;
  if (a2 == a3)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 2);
      *a4 = v8;
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 5);
      *(a4 + 24) = v9;
      *(v7 + 4) = 0;
      *(v7 + 5) = 0;
      *(v7 + 3) = 0;
      v10 = v7[3];
      *(a4 + 64) = *(v7 + 8);
      *(a4 + 48) = v10;
      *(v7 + 7) = 0;
      *(v7 + 8) = 0;
      *(v7 + 6) = 0;
      v11 = *(v7 + 72);
      *(a4 + 88) = *(v7 + 11);
      *(a4 + 72) = v11;
      *(v7 + 9) = 0;
      *(v7 + 10) = 0;
      *(v7 + 11) = 0;
      v12 = v7[6];
      *(a4 + 112) = *(v7 + 14);
      *(a4 + 96) = v12;
      *(v7 + 12) = 0;
      *(v7 + 13) = 0;
      *(v7 + 14) = 0;
      v7 = (v7 + 120);
      a4 += 120;
    }

    while (v7 != a3);
    v17 = a4;
    LOBYTE(v15) = 1;
    while (v5 != a3)
    {
      sub_1002F2CE0(a1, v5);
      v5 = (v5 + 120);
    }
  }

  return sub_1002F2D68(v14);
}

void sub_1002F2CE0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 119) < 0)
  {
    operator delete(*(a2 + 96));
  }

  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_1002F2D68(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1002F2DA0(a1);
  }

  return a1;
}

void sub_1002F2DA0(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 120;
      sub_1002F2CE0(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_1002F2DF4(uint64_t a1)
{
  sub_1002F2E2C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1002F2E2C(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 120;
    sub_1002F2CE0(v5, v4 - 120);
  }
}

uint64_t *sub_1002F2E74(uint64_t *a1, void *a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_1002F2F00(a1, *a2, a2[1], 0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 3));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_10024064C(a1 + 3, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  return a1;
}

void sub_1002F2EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10016DD88(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002F2F00(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_1002F2F88(result, a4);
  }

  return result;
}

void sub_1002F2F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10016DD88(&a9);
  _Unwind_Resume(a1);
}

void sub_1002F2F88(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    sub_1002F2B5C(a1, a2);
  }

  sub_1000CE3D4();
}

char *sub_1002F2FD4(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v10 = __dst;
  v11 = __dst;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_1002F3074(v4, v6);
      v6 = (v6 + 120);
      v4 = v11 + 120;
      v11 += 120;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_1002F2D68(v8);
  return v4;
}

char *sub_1002F3074(char *__dst, __int128 *a2)
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

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100005F2C(__dst + 72, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(__dst + 11) = *(a2 + 11);
    *(__dst + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_100005F2C(__dst + 96, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(__dst + 14) = *(a2 + 14);
    *(__dst + 6) = v8;
  }

  return __dst;
}

void sub_1002F3164(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002F31C8(uint64_t a1)
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

uint64_t *sub_1002F3248(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000D0358(result, a4);
  }

  return result;
}

void sub_1002F32A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002F32BC(void *a1)
{
  *a1 = off_101E3E208;
  a1[1] = &off_101E3E6F8;
  a1[2] = off_101E3E730;
  a1[3] = off_101E3E758;
  a1[4] = off_101E3E7C0;
  v2 = a1[12];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();

  TMKXPCServer.shutdown()();
}

void *sub_1002F3470(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3E908;
  sub_1002F3568((a1 + 3), a2);
  return a1;
}

void sub_1002F34EC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3E908;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F3568(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0uLL;
  sub_100443B34(a1, &v4);
  if (*(&v4 + 1))
  {
    sub_100004A34(*(&v4 + 1));
  }

  return a1;
}

void sub_1002F35B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002F3658(void *a1, NSObject **a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3E958;
  sub_1002F3750((a1 + 3), a2, a3);
  return a1;
}

void sub_1002F36D4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3E958;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F3750(uint64_t a1, NSObject **a2, __int128 *a3)
{
  v5 = *a2;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v7 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  sub_1009D5440(a1, &object, &v7);
  if (*(&v7 + 1))
  {
    sub_100004A34(*(&v7 + 1));
  }

  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_1002F37C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, dispatch_object_t object)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002F3874(void *a1, NSObject **a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3E9A8;
  sub_1002F396C((a1 + 3), a2, a3);
  return a1;
}

void sub_1002F38F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3E9A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F396C(uint64_t a1, NSObject **a2, __int128 *a3)
{
  v5 = *a2;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v7 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  sub_10091AB5C(a1, &object, &v7);
  if (*(&v7 + 1))
  {
    sub_100004A34(*(&v7 + 1));
  }

  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_1002F39E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, dispatch_object_t object)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002F3A90(void *a1, NSObject **a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3E9F8;
  sub_1002F3B88((a1 + 3), a2, a3);
  return a1;
}

void sub_1002F3B0C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3E9F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F3B88(uint64_t a1, NSObject **a2, __int128 *a3)
{
  v5 = *a2;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v7 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  sub_1007F46C0(a1, &object, &v7);
  if (*(&v7 + 1))
  {
    sub_100004A34(*(&v7 + 1));
  }

  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_1002F3BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, dispatch_object_t object)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002F3CBC(void *a1, NSObject **a2, uint64_t *a3, __int128 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3EA48;
  sub_1002F3DB4((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_1002F3D38(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EA48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F3DB4(uint64_t a1, NSObject **a2, uint64_t *a3, __int128 *a4)
{
  v7 = *a2;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = a3[1];
  v11 = *a3;
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  sub_1000D5C1C(a1, &object, &v11, &v10);
  if (*(&v10 + 1))
  {
    sub_100004A34(*(&v10 + 1));
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_1002F3E60(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::__shared_weak_count *a8, ...)
{
  if (a8)
  {
    sub_100004A34(a8);
  }

  sub_10176AD50(v8 + 8);
  _Unwind_Resume(a1);
}

void *sub_1002F3F20(void *a1, int a2, void *a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3EA98;
  sub_100302B90((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_1002F3F9C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EA98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1002F40D4(void *a1, dispatch_object_t *a2, uint64_t *a3, __int128 *a4, uint64_t *a5, uint64_t *a6, char *a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E363E8;
  sub_1002F4130((a1 + 3), a2, a3, a4, a5, a6, a7);
  return a1;
}

uint64_t sub_1002F4130(uint64_t a1, dispatch_object_t *a2, uint64_t *a3, __int128 *a4, uint64_t *a5, uint64_t *a6, char *a7)
{
  v24 = *a2;
  if (v24)
  {
    dispatch_retain(v24);
  }

  v13 = a3[1];
  v22 = *a3;
  v23 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  v14 = a5[1];
  v19 = *a5;
  v20 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = a6[1];
  v17 = *a6;
  v18 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100251894(a1, &v24, &v22, &v21, &v19, &v17, *a7);
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  if (*(&v21 + 1))
  {
    sub_100004A34(*(&v21 + 1));
  }

  if (v23)
  {
    sub_100004A34(v23);
  }

  if (v24)
  {
    dispatch_release(v24);
  }

  return a1;
}

void sub_1002F424C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10176AD84(v10 + 8);
  _Unwind_Resume(a1);
}

void *sub_1002F4334(void *a1, dispatch_object_t *a2, uint64_t *a3, __int128 *a4, uint64_t *a5, uint64_t *a6, char *a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3EAE8;
  sub_1002F442C((a1 + 3), a2, a3, a4, a5, a6, a7);
  return a1;
}

void sub_1002F43B0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EAE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F442C(uint64_t a1, dispatch_object_t *a2, uint64_t *a3, __int128 *a4, uint64_t *a5, uint64_t *a6, char *a7)
{
  v24 = *a2;
  if (v24)
  {
    dispatch_retain(v24);
  }

  v13 = a3[1];
  v22 = *a3;
  v23 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  v14 = a5[1];
  v19 = *a5;
  v20 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = a6[1];
  v17 = *a6;
  v18 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100BB6C4C(a1, &v24, &v22, &v21, &v19, &v17, *a7);
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  if (*(&v21 + 1))
  {
    sub_100004A34(*(&v21 + 1));
  }

  if (v23)
  {
    sub_100004A34(v23);
  }

  if (v24)
  {
    dispatch_release(v24);
  }

  return a1;
}

void sub_1002F4548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10176AD84(v10 + 8);
  _Unwind_Resume(a1);
}

void *sub_1002F45E8(void *a1, uint64_t *a2, NSObject **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3EB38;
  sub_1002F46C4(a1 + 3, a2, a3);
  return a1;
}

void sub_1002F4664(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EB38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1002F46C4(void *a1, uint64_t *a2, NSObject **a3)
{
  v4 = *a2;
  v5 = *a3;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  sub_1006CBCB0(a1, v4, &object);
  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_1002F4720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002F47C4(void *a1, NSObject **a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3EB88;
  sub_1002F48BC(a1 + 3, a2, a3);
  return a1;
}

void sub_1002F4840(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EB88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1002F48BC(void *a1, NSObject **a2, uint64_t *a3)
{
  v5 = *a2;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  sub_1003BB610(a1, &object, a3);
  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_1002F4918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002F49BC(void *a1, __int128 *a2, NSObject **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3EBD8;
  sub_1002F4AB4((a1 + 3), a2, a3);
  return a1;
}

void sub_1002F4A38(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EBD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F4AB4(uint64_t a1, __int128 *a2, NSObject **a3)
{
  v5 = *a2;
  *a2 = 0uLL;
  MonitorModeController::MonitorModeController(a1, &v5, a3);
  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }

  return a1;
}

void sub_1002F4B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002F4B9C(void *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3EC28;
  sub_1002F4C94(a1 + 3, a2, a3, a4);
  return a1;
}

void sub_1002F4C18(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EC28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1002F4C94(void *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v5 = *a3;
  *a3 = 0uLL;
  *v7 = *a4;
  v8 = v5;
  *a4 = 0;
  *(a4 + 8) = 0;
  sub_100B2B510(a1, a2, &v8, v7);
  if (v7[1])
  {
    std::__shared_weak_count::__release_weak(v7[1]);
  }

  if (*(&v8 + 1))
  {
    sub_100004A34(*(&v8 + 1));
  }

  return a1;
}

void sub_1002F4CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002F4D3C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EC78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002F4DD8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F54858;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1002F4EF8(void *a1, NSObject **a2, uint64_t *a3, void *a4, char *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3ECE0;
  sub_1002F4FF0((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_1002F4F74(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3ECE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F4FF0(uint64_t a1, NSObject **a2, uint64_t *a3, void *a4, char *a5)
{
  v9 = *a2;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v10 = a3[1];
  v12 = *a3;
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1005DF9D8(a1, &object, &v12, a4, *a5);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_1002F5088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, dispatch_object_t object)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002F5118(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3ED30;
  sub_1001DD5DC((a1 + 3), a2);
  return a1;
}

void sub_1002F5194(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3ED30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F5210(uint64_t a1)
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

void *sub_1002F532C(void *a1, NSObject **a2, void *a3, char *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3ED80;
  sub_1002F5424((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_1002F53A8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3ED80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F5424(uint64_t a1, NSObject **a2, void *a3, char *a4)
{
  v7 = *a2;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = a3[1];
  if (*a3)
  {
    v9 = *a3 + 32;
  }

  else
  {
    v9 = 0;
  }

  v11 = v9;
  v12 = v8;
  *a3 = 0;
  a3[1] = 0;
  sub_100425A00(a1, &object, &v11, *a4);
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_1002F54B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, dispatch_object_t object)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002F557C(void *a1, dispatch_object_t *a2, __int128 *a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3EDD0;
  sub_1002F5674((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_1002F55F8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EDD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F5674(uint64_t a1, dispatch_object_t *a2, __int128 *a3, uint64_t *a4, uint64_t *a5)
{
  v17 = *a2;
  if (v17)
  {
    dispatch_retain(v17);
  }

  v16 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v9 = a4[1];
  v14 = *a4;
  v15 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a5[1];
  v12 = *a5;
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100A4BC90(a1, &v17, &v16, &v14, &v12);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  if (*(&v16 + 1))
  {
    sub_100004A34(*(&v16 + 1));
  }

  if (v17)
  {
    dispatch_release(v17);
  }

  return a1;
}

void sub_1002F5750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10176ADD8(v10 + 8);
  _Unwind_Resume(a1);
}

void sub_1002F5798(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EE20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002F5888(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3EE70;
  entitlements::WebServiceDelegate::WebServiceDelegate(a1 + 3);
}

void sub_1002F5904(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EE70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const void **sub_1002F5980(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v5 = 0;
    sub_10006F22C(&v5, a2);
    v3 = *a1;
    *a1 = v5;
    v5 = v3;
    sub_100010250(&v5);
  }

  return a1;
}

void sub_1002F59F8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EEC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002F5A4C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_1002F5A88(uint64_t a1, void *a2)
{
  *a2 = off_101E3EF10;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void sub_1002F5AD4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_1002F5B20(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E3EF70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1002F5B6C(__CFArray *a1, CFTypeRef cf)
{
  v5 = cf;
  if (cf)
  {
    CFRetain(cf);
    CFArrayAppendValue(a1, cf);
  }

  sub_100DA3324(&v5);
  return cf != 0;
}

void sub_1002F5BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100DA3324(va);
  _Unwind_Resume(a1);
}

void *sub_1002F5C50(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3EF90;
  sub_10073B54C(a1 + 3);
  return a1;
}

void sub_1002F5CCC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EF90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1002F5DBC(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3EFE0;
  sub_1002F5EB4(a1 + 3, a2, a3);
  return a1;
}

void sub_1002F5E38(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3EFE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1002F5EB4(void *a1, uint64_t *a2, uint64_t *a3)
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

  sub_10046A680(a1, &v9, &v7);
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

void sub_1002F5F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void *sub_1002F6000(void *a1, NSObject **a2, __int128 *a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3F030;
  sub_1002F60F8((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_1002F607C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3F030;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F60F8(uint64_t a1, NSObject **a2, __int128 *a3, uint64_t *a4, uint64_t *a5)
{
  v17 = *a2;
  if (v17)
  {
    dispatch_retain(v17);
  }

  v16 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v9 = a4[1];
  v14 = *a4;
  v15 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a5[1];
  v12 = *a5;
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CellularPlanListModelLocal::CellularPlanListModelLocal(a1, &v17, &v16, &v14, &v12);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  if (*(&v16 + 1))
  {
    sub_100004A34(*(&v16 + 1));
  }

  if (v17)
  {
    dispatch_release(v17);
  }

  return a1;
}

void sub_1002F61D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10176ADD8(v10 + 8);
  _Unwind_Resume(a1);
}

void *sub_1002F62A0(void *a1, void *a2, NSObject **a3, uint64_t *a4, __int128 *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3F080;
  sub_1002F6398((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_1002F631C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3F080;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F6398(uint64_t a1, void *a2, NSObject **a3, uint64_t *a4, __int128 *a5)
{
  v9 = *a3;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v10 = a4[1];
  v13 = *a4;
  v14 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *a5;
  *a5 = 0;
  *(a5 + 1) = 0;
  sub_100A77C0C(a1, a2, &object, &v13, &v12);
  if (*(&v12 + 1))
  {
    sub_100004A34(*(&v12 + 1));
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_1002F644C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::__shared_weak_count *a8, ...)
{
  if (a8)
  {
    sub_100004A34(a8);
  }

  sub_10176AD50(v8 + 8);
  _Unwind_Resume(a1);
}

void *sub_1002F64FC(void *a1, NSObject **a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3F0D0;
  sub_1002F65F4(a1 + 3, a2, a3);
  return a1;
}

void sub_1002F6578(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3F0D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1002F65F4(void *a1, NSObject **a2, void *a3)
{
  v5 = *a2;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  sub_1000CED4C(a1, &object, a3);
  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_1002F6650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002F66D4(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3F120;
  sub_10099B79C((a1 + 3), a2);
  return a1;
}

void sub_1002F6750(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3F120;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F67CC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1002F6864(uint64_t a1)
{
  *a1 = off_101E3F170;
  sub_1002F31C8(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
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

void sub_1002F68D8(uint64_t a1)
{
  *a1 = off_101E3F170;
  sub_1002F31C8(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

void sub_1002F6A10(uint64_t a1)
{
  sub_1002F31C8(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
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

void sub_1002F6A80(uint64_t a1)
{
  sub_1002F31C8(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete(a1);
}

void sub_1002F6AEC(uint64_t a1, _BYTE *a2)
{
  v3 = *a2;
  if (v3 <= 1)
  {
    if (!*a2)
    {
LABEL_11:
      if (*(a1 + 31) < 0)
      {
        sub_100005F2C(&__dst, *(a1 + 8), *(a1 + 16));
      }

      else
      {
        __dst = *(a1 + 8);
        v14 = *(a1 + 24);
      }

      if (*(a1 + 55) < 0)
      {
        sub_100005F2C(&v15, *(a1 + 32), *(a1 + 40));
      }

      else
      {
        v15 = *(a1 + 32);
        v16[0] = *(a1 + 48);
      }

      sub_10011C9B0(v11, &__dst, 2);
      v5 = *(a1 + 104);
      if (!v5)
      {
        sub_100022DB4();
      }

      (*(*v5 + 48))(v5, v11);
      sub_100009970(v11, v12);
      for (i = 0; i != -6; i -= 3)
      {
        if (SHIBYTE(v16[i]) < 0)
        {
          operator delete(v16[i - 2]);
        }
      }

      return;
    }

    if (v3 == 1)
    {
      if (*(a1 + 55) < 0)
      {
        sub_100005F2C(&__dst, *(a1 + 32), *(a1 + 40));
      }

      else
      {
        __dst = *(a1 + 32);
        v14 = *(a1 + 48);
      }

      if (*(a1 + 79) < 0)
      {
        sub_100005F2C(&v15, *(a1 + 56), *(a1 + 64));
      }

      else
      {
        v15 = *(a1 + 56);
        v16[0] = *(a1 + 72);
      }

      sub_10011C9B0(v11, &__dst, 2);
      v9 = *(a1 + 104);
      if (!v9)
      {
        sub_100022DB4();
      }

      (*(*v9 + 48))(v9, v11);
      sub_100009970(v11, v12);
      for (j = 0; j != -6; j -= 3)
      {
        if (SHIBYTE(v16[j]) < 0)
        {
          operator delete(v16[j - 2]);
        }
      }
    }
  }

  else
  {
    if (v3 != 2)
    {
      if (v3 != 3)
      {
        if (v3 != 4)
        {
          return;
        }

        CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
        {
          sub_10176AE18();
        }
      }

      goto LABEL_11;
    }

    if (*(a1 + 31) < 0)
    {
      sub_100005F2C(&__dst, *(a1 + 8), *(a1 + 16));
    }

    else
    {
      __dst = *(a1 + 8);
      v14 = *(a1 + 24);
    }

    if (*(a1 + 79) < 0)
    {
      sub_100005F2C(&v15, *(a1 + 56), *(a1 + 64));
    }

    else
    {
      v15 = *(a1 + 56);
      v16[0] = *(a1 + 72);
    }

    sub_10011C9B0(v11, &__dst, 2);
    v7 = *(a1 + 104);
    if (!v7)
    {
      sub_100022DB4();
    }

    (*(*v7 + 48))(v7, v11);
    sub_100009970(v11, v12);
    for (k = 0; k != -6; k -= 3)
    {
      if (SHIBYTE(v16[k]) < 0)
      {
        operator delete(v16[k - 2]);
      }
    }
  }
}

void sub_1002F6E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002F6F30(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002F6F7C(uint64_t a1, uint64_t a2)
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

char *sub_1002F6FFC(char *__dst, __int128 *a2)
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

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  sub_1002F67CC((__dst + 72), a2 + 72);
  return __dst;
}

void sub_1002F70A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002F7114(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sCopyCellularDataSettings(Registry **a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v5 = ServiceMap;
  v7 = v6;
  if (v6 < 0)
  {
    v8 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
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
  v27 = v7;
  v11 = sub_100009510(&v5[1].__m_.__sig, &v27);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v5);
  v12 = 0;
  v14 = 1;
LABEL_9:
  (*(*v13 + 80))(&v26, v13, 1, 1, @"EsimCellularDataPlanSettings", 0, 0);
  sub_100010180(a2, &v26);
  sub_10000A1EC(&v26);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (!*a2)
  {
    v15 = Registry::getServiceMap(*a1);
    v16 = v15;
    if (v6 < 0)
    {
      v17 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
      v18 = 5381;
      do
      {
        v6 = v18;
        v19 = *v17++;
        v18 = (33 * v18) ^ v19;
      }

      while (v19);
    }

    std::mutex::lock(v15);
    v27 = v6;
    v20 = sub_100009510(&v16[1].__m_.__sig, &v27);
    if (v20)
    {
      v22 = v20[3];
      v21 = v20[4];
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v16);
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v21);
        v23 = 0;
LABEL_20:
        (*(*v22 + 80))(&v25, v22, 1, 1, @"CellularDataPlanSettings", 0, 0);
        sub_100010180(&v26, &v25);
        if (&v26 != a2)
        {
          v24 = *a2;
          *a2 = v26;
          v26 = 0;
          v27 = v24;
          sub_10001021C(&v27);
        }

        sub_10001021C(&v26);
        sub_10000A1EC(&v25);
        if ((v23 & 1) == 0)
        {
          sub_100004A34(v21);
        }

        return;
      }
    }

    else
    {
      v22 = 0;
    }

    std::mutex::unlock(v16);
    v21 = 0;
    v23 = 1;
    goto LABEL_20;
  }
}

void sub_1002F73B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000A1EC(va);
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v4);
  }

  sub_10001021C(v3);
  _Unwind_Resume(a1);
}

BOOL sIsNotSubscribedError(CFDictionaryRef *a1, int a2)
{
  valuePtr = a2;
  if (a2 == 1)
  {
    return 1;
  }

  Value = CFDictionaryGetValue(*a1, @"CellularDataPlanNotSubscribedErrors");
  if (!Value)
  {
    return a2 == 65;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != CFArrayGetTypeID())
  {
    return a2 == 65;
  }

  v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  v10.length = CFArrayGetCount(v5);
  v10.location = 0;
  v2 = CFArrayGetCountOfValue(v5, v10, v8) > 0;
  sub_100029A48(&v8);
  return v2;
}

void sSendCSIObserverEvent(uint64_t a1, uint64_t a2, uint64_t a3, Registry **a4)
{
  ServiceMap = Registry::getServiceMap(*a4);
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
  v17 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v17);
  if (!v13)
  {
    v15 = 0;
LABEL_9:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    if (!v15)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
  if (v15)
  {
LABEL_10:
    (*(*v15 + 40))(v15, a1, a2, a3);
  }

LABEL_11:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

void sub_1002F7628(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataPlanManagerBootstrap::DataPlanManagerBootstrap(uint64_t a1, uint64_t a2, NSObject **a3, void *a4)
{
  *a1 = off_101E89490;
  *(a1 + 8) = &off_101E39D80;
  *(a1 + 16) = off_101E66FE8;
  ctu::OsLogContext::OsLogContext(&v23, kCtLoggingSystemName, "cdp");
  sub_1001303E4((a1 + 32), a3, &v23);
  ctu::OsLogContext::~OsLogContext(&v23);
  *a1 = off_101E3F228;
  *(a1 + 8) = &off_101E3F3E8;
  *(a1 + 16) = off_101E3F4B0;
  *(a1 + 24) = off_101E3F550;
  *(a1 + 72) = *a2;
  v8 = *(a2 + 8);
  *(a1 + 80) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 88) = *a4;
  v9 = a4[1];
  *(a1 + 96) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "DataPlanManagerBootstrap");
  v10 = *a3;
  v20 = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v19[1] = 0;
  ctu::RestModule::RestModule();
  if (v20)
  {
    dispatch_release(v20);
  }

  if (v22 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 216) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 1;
  *(a1 + 256) = 0;
  *(a1 + 248) = a1 + 256;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 488) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 496) = a1 + 504;
  MCCAndMNC::MCCAndMNC((a1 + 520));
  *(a1 + 592) = 0;
  *(a1 + 600) = 0;
  v11 = *a4;
  v12 = *(a2 + 8);
  v23.var0 = *a2;
  v23.var1.fRef = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  v13 = *a3;
  v19[0] = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  (*(*v11 + 16))(v11, &v23, v19);
  if (v19[0])
  {
    dispatch_release(v19[0]);
  }

  if (v23.var1.fRef)
  {
    sub_100004A34(v23.var1.fRef);
  }

  v14 = *a4;
  v15 = *(a2 + 8);
  v23.var0 = *a2;
  v23.var1.fRef = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
  }

  (*(*v14 + 24))(v14, &v23);
  if (v23.var1.fRef)
  {
    sub_100004A34(v23.var1.fRef);
  }

  *(a1 + 688) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 640) = 0u;
  Registry::getNotificationSenderFactory(&v23, *(a1 + 72));
  (*(*v23.var0 + 88))(v23.var0);
  if (v23.var1.fRef)
  {
    sub_100004A34(v23.var1.fRef);
  }

  sub_10010674C((a1 + 712));
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 720) = 0u;
  v16 = *a4;
  v17 = *(a2 + 8);
  v23.var0 = *a2;
  v23.var1.fRef = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
  }

  (*(*v16 + 32))(v16, &v23);
  if (v23.var1.fRef)
  {
    sub_100004A34(v23.var1.fRef);
  }

  *(a1 + 784) = 0u;
  return a1;
}

void sub_1002F7A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, dispatch_object_t a12, dispatch_object_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    sub_100004A34(a21);
  }

  if (*(v21 + 767) < 0)
  {
    operator delete(*(v21 + 744));
  }

  if (*(v21 + 743) < 0)
  {
    operator delete(*v26);
  }

  v28 = *(v21 + 704);
  if (v28)
  {
    sub_100004A34(v28);
  }

  v29 = *(v21 + 680);
  if (v29)
  {
    sub_100004A34(v29);
  }

  v30 = *(v21 + 664);
  if (v30)
  {
    sub_100004A34(v30);
  }

  v31 = *(v21 + 648);
  if (v31)
  {
    sub_100004A34(v31);
  }

  v32 = *(v21 + 632);
  if (v32)
  {
    sub_100004A34(v32);
  }

  v33 = *(v21 + 616);
  if (v33)
  {
    sub_100004A34(v33);
  }

  sub_1002FECBC(v24 + 304);
  sub_10006DCAC(v24 + 280, *(v21 + 504));
  if (*(v21 + 488) == 1)
  {
    sub_100E3A5D4(v25);
  }

  sub_10006DCAC(v22, *(v21 + 256));
  a20 = v24;
  sub_1000B2AF8(&a20);
  sub_1002FED00(v24 - 48);
  sub_1002FED80(v24 - 96);
  v34 = *(v21 + 112);
  if (v34)
  {
    sub_100004A34(v34);
  }

  v35 = *(v21 + 96);
  if (v35)
  {
    sub_100004A34(v35);
  }

  v36 = *(v21 + 80);
  if (v36)
  {
    sub_100004A34(v36);
  }

  ctu::OsLogLogger::~OsLogLogger((v21 + 64));
  sub_1000C0544((v21 + 32));
  CellularPlanProvisioningMonitorModeDelegate::~CellularPlanProvisioningMonitorModeDelegate(v23);
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void sub_1002F7C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  ctu::OsLogContext::~OsLogContext(va);
  JUMPOUT(0x1002F7BECLL);
}

void DataPlanManagerBootstrap::connectEvents_sync(Registry **this)
{
  Registry::createRestModuleOneTimeUseConnection(&v6, this[9]);
  ctu::RestModule::connect();
  v2 = v7;
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (capabilities::ct::supportsVoiceCall(v2))
  {
    sub_10000501C(&__p, "/cc/prefs-nb/user_default_voice_slot");
    v9 = off_101E3F718;
    v10 = this;
    v11 = &v9;
    ctu::RestModule::getPropertyOnce();
    sub_1000062D4(&v9);
    if (v5 < 0)
    {
      operator delete(__p);
    }

    sub_1002F86E0(this + 15, (this + 13));
    sub_1002F8744((this + 34), (this + 13));
    sub_100004AA0(&v9, this + 4);
    v3 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(v10 + 2, 1uLL, memory_order_relaxed);
      sub_100004A34(v3);
    }

    sub_10000501C(&v8, "/cc/events/dump_state");
    operator new();
  }

  v9 = DataPlanManagerBootstrap::handlePSNetworkReject_sync;
  v10 = 0;
  sub_1002FF5E8((this + 62), (this + 13), this, &v9);
}

void sub_1002F80A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_1000062D4(v25 - 72);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t DataPlanManagerBootstrap::serviceShouldShutdown_sync(DataPlanManagerBootstrap *this, group_session a2)
{
  ctu::RestModule::disconnect((this + 104));
  v3 = *(this + 80);
  if (v3)
  {
    (*(*v3 + 768))(v3);
  }

  v4 = *(this + 82);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  result = *(this + 84);
  if (result)
  {
    v6 = *(*result + 24);

    return v6();
  }

  return result;
}

void DataPlanManagerBootstrap::handlePSNetworkReject_sync(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
      v13 = 0;
      if (!v12)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
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
LABEL_7:
    v14 = *(a1 + 64);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Missing subscriber utility", buf, 2u);
    }

    goto LABEL_34;
  }

LABEL_11:
  v15 = *(a1 + 504);
  if (v15)
  {
    v16 = a1 + 504;
    do
    {
      if (*(v15 + 28) >= 1)
      {
        v16 = v15;
      }

      v15 = *(v15 + 8 * (*(v15 + 28) < 1));
    }

    while (v15);
    if (v16 != a1 + 504 && *(v16 + 28) < 2)
    {
      v19 = *(a2 + 8);
      v18 = a2 + 8;
      v17 = v19;
      if (!v19)
      {
        goto LABEL_27;
      }

      v20 = v18;
      do
      {
        if (*(v17 + 28) >= 1)
        {
          v20 = v17;
        }

        v17 = *(v17 + 8 * (*(v17 + 28) < 1));
      }

      while (v17);
      if (v20 == v18 || *(v20 + 28) > 1 || *(v20 + 32) != *(v16 + 32) || *(v20 + 36) != *(v16 + 36))
      {
LABEL_27:
        v21 = *(a1 + 64);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(v16 + 32);
          v23 = *(v16 + 36);
          *buf = 67109376;
          *&buf[4] = v22;
          LOWORD(v29) = 1024;
          *(&v29 + 2) = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I rejectCauseCode[%d], inputRAT[%d]", buf, 0xEu);
        }

        MCCAndMNC::getMcc(buf, (a1 + 520));
        v24 = MCC::valid(buf);
        v25 = v24;
        if (v30 < 0)
        {
          operator delete(v29);
          if (v25)
          {
LABEL_31:
            MCCAndMNC::getMcc(buf, (a1 + 520));
            MCC::getStringValue(&__p, buf);
            v27 = 0;
            operator new();
          }
        }

        else if (v24)
        {
          goto LABEL_31;
        }

        DataPlanManagerBootstrap::processPSNetworkReject_sync(a1, *(v16 + 32), *(v16 + 36));
      }
    }
  }

LABEL_34:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_1002F8588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_10001C200(&a18);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if ((v29 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  _Unwind_Resume(a1);
}

void sub_1002F8600(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/last_visible_plmns");
  v5[0] = off_101E3F8A8;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1002F86B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002F86E0(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_1002FFEDC(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

void sub_1002F8744(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/vinyl_info");
  v5[0] = off_101E3F9B8;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1002F87F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002F8824(uint64_t a1, dispatch_object_t object, __int128 *a3)
{
  objecta = object;
  v4 = *a3;
  v5 = *(a3 + 2);
  dispatch_retain(object);
  sub_100300BC8(&v6, &objecta);
}

void sub_1002F88B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_1008F153C(va);
  dispatch_release(object);
  _Unwind_Resume(a1);
}

void DataPlanManagerBootstrap::handleCambioMode_sync(DataPlanManagerBootstrap *this, int a2)
{
  if ((capabilities::ct::supportsPCOForCambioTrigger(this) & 1) == 0)
  {
    v4 = *(this + 8);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v5)
      {
        LOWORD(v34[0]) = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Current provisioning mode is true, disabling it before OTASP", v34, 2u);
      }

      ServiceMap = Registry::getServiceMap(*(this + 9));
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
      v34[0] = v8;
      v12 = sub_100009510(&v7[1].__m_.__sig, v34);
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
LABEL_21:
          (*(*v14 + 328))(v14, 0);
          goto LABEL_35;
        }
      }

      else
      {
        v14 = 0;
      }

      std::mutex::unlock(v7);
      v13 = 0;
      v15 = 1;
      goto LABEL_21;
    }

    if (v5)
    {
      LOWORD(v34[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Current provisioning mode is false, performing OTASP", v34, 2u);
    }

    v16 = Registry::getServiceMap(*(this + 9));
    v17 = v16;
    v19 = v18;
    if ((v18 & 0x8000000000000000) != 0)
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
    v34[0] = v19;
    v23 = sub_100009510(&v17[1].__m_.__sig, v34);
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
        goto LABEL_24;
      }
    }

    else
    {
      v25 = 0;
    }

    std::mutex::unlock(v17);
    v24 = 0;
    v26 = 1;
LABEL_24:
    (*(*v25 + 32))(v25);
    if ((v26 & 1) == 0)
    {
      sub_100004A34(v24);
    }

    v27 = Registry::getServiceMap(*(this + 9));
    v28 = v27;
    if ((v18 & 0x8000000000000000) != 0)
    {
      v29 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
      v30 = 5381;
      do
      {
        v18 = v30;
        v31 = *v29++;
        v30 = (33 * v30) ^ v31;
      }

      while (v31);
    }

    std::mutex::lock(v27);
    v34[0] = v18;
    v32 = sub_100009510(&v28[1].__m_.__sig, v34);
    if (v32)
    {
      v33 = v32[3];
      v13 = v32[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v28);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v13);
        v15 = 0;
LABEL_34:
        (*(*v33 + 96))(v33, 0);
LABEL_35:
        if ((v15 & 1) == 0)
        {
          sub_100004A34(v13);
        }

        return;
      }
    }

    else
    {
      v33 = 0;
    }

    std::mutex::unlock(v28);
    v13 = 0;
    v15 = 1;
    goto LABEL_34;
  }
}

void sub_1002F8BF0(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002F8C24(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/reg_ps_attached");
  v5[0] = off_101E3FBF8;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1002F8CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void DataPlanManagerBootstrap::handleSelectedSimChanged_sync(uint64_t a1, int a2)
{
  if (a2 == 2 && *(a1 + 208) != 2)
  {
    v3 = *(a1 + 64);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Selected profile changed from sid 2", v14, 2u);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
        goto LABEL_13;
      }
    }

    else
    {
      v12 = 0;
    }

    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
LABEL_13:
    (*(*v12 + 40))(v12);
    if ((v13 & 1) == 0)
    {
      sub_100004A34(v11);
    }
  }
}

void sub_1002F8E58(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void DataPlanManagerBootstrap::~DataPlanManagerBootstrap(DataPlanManagerBootstrap *this)
{
  *this = off_101E3F228;
  *(this + 1) = &off_101E3F3E8;
  *(this + 2) = off_101E3F4B0;
  v2 = (this + 24);
  *(this + 3) = off_101E3F550;
  v3 = *(this + 99);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 97);
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(this + 767) < 0)
  {
    operator delete(*(this + 93));
  }

  if (*(this + 743) < 0)
  {
    operator delete(*(this + 90));
  }

  v5 = *(this + 88);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(this + 85);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(this + 83);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(this + 81);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(this + 79);
  if (v9)
  {
    sub_100004A34(v9);
  }

  v10 = *(this + 77);
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_1002FECBC(this + 520);
  sub_10006DCAC(this + 496, *(this + 63));
  if (*(this + 488) == 1)
  {
    sub_100E3A5D4(this + 272);
  }

  sub_10006DCAC(this + 248, *(this + 32));
  v14 = (this + 216);
  sub_1000B2AF8(&v14);
  sub_1002FED00(this + 168);
  sub_1002FED80(this + 120);
  v11 = *(this + 14);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v12 = *(this + 12);
  if (v12)
  {
    sub_100004A34(v12);
  }

  v13 = *(this + 10);
  if (v13)
  {
    sub_100004A34(v13);
  }

  ctu::OsLogLogger::~OsLogLogger((this + 64));
  sub_1000C0544(this + 4);
  CellularPlanProvisioningMonitorModeDelegate::~CellularPlanProvisioningMonitorModeDelegate(v2);
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
}

{
  DataPlanManagerBootstrap::~DataPlanManagerBootstrap(this);

  operator delete();
}

void non-virtual thunk toDataPlanManagerBootstrap::~DataPlanManagerBootstrap(DataPlanManagerBootstrap *this)
{
  DataPlanManagerBootstrap::~DataPlanManagerBootstrap((this - 8));
}

{
  DataPlanManagerBootstrap::~DataPlanManagerBootstrap((this - 16));
}

{
  DataPlanManagerBootstrap::~DataPlanManagerBootstrap((this - 24));
}

{
  DataPlanManagerBootstrap::~DataPlanManagerBootstrap((this - 8));

  operator delete();
}

{
  DataPlanManagerBootstrap::~DataPlanManagerBootstrap((this - 16));

  operator delete();
}

{
  DataPlanManagerBootstrap::~DataPlanManagerBootstrap((this - 24));

  operator delete();
}

std::__shared_weak_count *DataPlanManagerBootstrap::instance_if_created@<X0>(uint64_t *__return_ptr a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  result = qword_101FCB728;
  if (qword_101FCB728)
  {
    result = std::__shared_weak_count::lock(qword_101FCB728);
    a1[1] = result;
    if (result)
    {
      *a1 = DataPlanManagerBootstrap::sInstance;
    }
  }

  return result;
}

void DataPlanManagerBootstrap::sCreate(uint64_t a1, dispatch_object_t *a2, void *a3)
{
  if (*a3)
  {
    sub_100301B04();
  }

  sub_10176AE4C();
}

void sub_1002F9674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, uint64_t a31)
{
  __cxa_free_exception(v33);
  if (a27)
  {
    sub_100004A34(a27);
  }

  if (a29)
  {
    sub_100004A34(a29);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    sub_100004A34(v36);
  }

  v37 = *(v34 - 88);
  if (v37)
  {
    sub_100004A34(v37);
    if (!v31)
    {
LABEL_9:
      if (!v32)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if (!v31)
  {
    goto LABEL_9;
  }

  sub_100004A34(v31);
  if (!v32)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_10:
  sub_100004A34(v32);
  goto LABEL_11;
}

void DataPlanManagerBootstrap::setWebsheetVisibility(DataPlanManagerBootstrap *this, char a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002F98D8;
  v4[3] = &unk_101E26058;
  v4[4] = this;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, this + 4);
  v3 = *(this + 6);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10030229C;
  block[3] = &unk_101E3FE60;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_1002F98D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(v1 + 600) = v2;
  if (v2 != 1)
  {
    return;
  }

  ServiceMap = Registry::getServiceMap(*(v1 + 72));
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
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      goto LABEL_10;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
LABEL_10:
  v12 = (*(*v11 + 712))(v11);
  if (v12)
  {
    if (!v10)
    {
      return;
    }

LABEL_29:
    sub_100004A34(v10);
    return;
  }

  v13 = capabilities::ct::supportsGemini(v12);
  if (v10)
  {
    sub_100004A34(v10);
  }

  if ((v13 & 1) == 0)
  {
    v14 = *(v1 + 64);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Enabling cellular data on opening websheet", buf, 2u);
    }

    v15 = Registry::getServiceMap(*(v1 + 72));
    v16 = v15;
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

    std::mutex::lock(v15);
    *buf = v17;
    v21 = sub_100009510(&v16[1].__m_.__sig, buf);
    if (v21)
    {
      v22 = v21[3];
      v10 = v21[4];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v16);
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v10);
        v23 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v22 = 0;
    }

    std::mutex::unlock(v16);
    v10 = 0;
    v23 = 1;
LABEL_26:
    v24 = 0;
    v25 = 0;
    (*(*v22 + 80))(v22, 1, 1, &v24);
    if (v25)
    {
      sub_100004A34(v25);
    }

    if ((v23 & 1) == 0)
    {
      goto LABEL_29;
    }
  }
}

void sub_1002F9B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void DataPlanManagerBootstrap::setEventSender(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002F9C84;
  v4[3] = &unk_101E26940;
  v4[4] = a1;
  v4[5] = a2;
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 32));
  v3 = *(a1 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10030229C;
  block[3] = &unk_101E3FE60;
  block[5] = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

void *sub_1002F9C84(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  *(v2 + 592) = v1;
  return sub_100106754((v2 + 712), v1);
}

void DataPlanManagerBootstrap::getEffectivePhoneNumber(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002F9DA0;
  v4[3] = &unk_101E3F570;
  v4[4] = a2;
  v4[5] = a1;
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 32));
  v3 = *(a1 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10030229C;
  block[3] = &unk_101E3FE60;
  block[5] = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

void sub_1002F9DA0(uint64_t a1)
{
  v2 = *(a1 + 40);
  memset(v11, 0, 32);
  v3 = *(v2 + 640);
  v4 = *(v2 + 648);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    (*(*v3 + 712))(v9);
    sub_10016E3EC(v11, v9);
    if (LOBYTE(v9[0]) == 1 && v10 < 0)
    {
      operator delete(v9[1]);
    }

    v5 = *(a1 + 32);
    v6[0] = 0;
    if (v11[0])
    {
      if (SHIBYTE(v11[3]) < 0)
      {
        sub_100005F2C(v7, v11[1], v11[2]);
      }

      else
      {
        *v7 = *&v11[1];
        v8 = v11[3];
      }

      v6[0] = 1;
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v6[0] = 0;
  }

  (*(v5 + 16))(v5, v6);
  if (v6[0] == 1)
  {
    if (SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }

    v6[0] = 0;
  }

  if (v4)
  {
    sub_100004A34(v4);
  }

  if (LOBYTE(v11[0]) == 1 && SHIBYTE(v11[3]) < 0)
  {
    operator delete(v11[1]);
  }
}

void sub_1002F9F28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23)
  {
    sub_100004A34(v23);
  }

  if (a17 == 1 && a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DataPlanManagerBootstrap::handleSMSEvent(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Data plan SMS notification should be ignored because device does not have a valid data plan", v2, 2u);
  }
}

void DataPlanManagerBootstrap::handleDumpState_sync(DataPlanManagerBootstrap *this)
{
  v2 = *(this + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CSIBOOLAsString(*(this + 600));
    v8 = 136315138;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I fWebsheetVisible:%s", &v8, 0xCu);
    v2 = *(this + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    atomic_load(this + 40);
    v4 = subscriber::asString();
    v8 = 136315138;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I fDefaultVoiceSim:%s", &v8, 0xCu);
  }

  (*(**(this + 78) + 216))(*(this + 78));
  v5 = *(this + 76);
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  v6 = *(this + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = (this + 720);
    if (*(this + 743) < 0)
    {
      v7 = *v7;
    }

    v8 = 136315138;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Plan Expiry ICCID: (%s)", &v8, 0xCu);
  }
}

uint64_t DataPlanManagerBootstrap::handleSubscriptionThrottledTransition_sync(DataPlanManagerBootstrap *a1, uint64_t a2)
{
  v21 = 0;
  v4 = sub_10005D028();
  sub_10000501C(&__p, "DataPlanManagerBootstrap::kDataPlanThrottled");
  sub_10005D0D8(v4, &__p, &v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v5 = sub_10164D3F0(a2);
  v20 = v5 == 8;
  if (v21 && v5 == 8)
  {
    v6 = *(a1 + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Ignoring usage notification in throttled state", &__p, 2u);
    }
  }

  else
  {
    if ((sub_10164D3F0(a2) & 9) == 0 || v21 == v20)
    {
      return 0;
    }

    v8 = sub_10005D028();
    sub_10000501C(&__p, "DataPlanManagerBootstrap::kDataPlanThrottled");
    sub_1006197F4(v8, &__p, &v20);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v9 = *(a1 + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = CSIBOOLAsString(v20);
      LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
      *(__p.__r_.__value_.__r.__words + 4) = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Sending throttle state transition, is throttled:%s", &__p, 0xCu);
    }

    __p.__r_.__value_.__r.__words[0] = 0;
    __p.__r_.__value_.__r.__words[0] = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(__p.__r_.__value_.__l.__data_, kCTCellularDataPlanStatusTypeKey, kCTCellularDataPlanSubscriptionStatus);
    if (v20)
    {
      v11 = @"throttled";
    }

    else
    {
      v11 = @"subscribed";
    }

    CFDictionarySetValue(__p.__r_.__value_.__l.__data_, kCTCellularDataPlanSubscriptionStateKey, v11);
    ctu::cf_to_xpc(__p.__r_.__value_.__l.__data_, v12);
    v13 = object;
    if (object && xpc_get_type(object) == &_xpc_type_dictionary)
    {
      xpc_retain(object);
    }

    else
    {
      v13 = xpc_null_create();
    }

    xpc_release(object);
    object = v13;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      object = xpc_null_create();
    }

    v18 = xpc_null_create();
    sub_10002A37C(82, &object, &v18);
    xpc_release(v18);
    xpc_release(object);
    object = 0;
    v14 = *(a1 + 78);
    v15 = v20;
    DataPlanManagerBootstrap::getCellularDataPlanAccountUrl_sync(&v17, a1);
    v16 = 0;
    (**v14)(v14, v15, &v17, &v16);
    sub_100005978(&v16);
    sub_100005978(&v17);
    sub_100005978(&object);
    xpc_release(v13);
    sub_1000296E0(&__p.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_1002FA4D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object, xpc_object_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void DataPlanManagerBootstrap::getCellularDataPlanAccountUrl_sync(const void **__return_ptr a1@<X8>, DataPlanManagerBootstrap *this@<X0>)
{
  *a1 = 0;
  v4 = *(this + 80);
  v5 = *(this + 81);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4 && (*(*v4 + 728))(v4))
  {
    DataPlanManagerBootstrap::getCellularPlanAccountUrl_sync(&v7, this);
    if (&v7 != a1)
    {
      v6 = *a1;
      *a1 = v7;
      v7 = 0;
      v8 = v6;
      sub_100005978(&v8);
    }

    sub_100005978(&v7);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_1002FA658(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  sub_100005978(v2);
  _Unwind_Resume(a1);
}

void DataPlanManagerBootstrap::handleDataUsagePush_sync(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I data plan does not exist, bail usage", v2, 2u);
  }
}

void DataPlanManagerBootstrap::handleDataUsagePushTrigger(DataPlanManagerBootstrap *this, CFAbsoluteTime a2)
{
  v4 = *(this + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Triggering data usage query for prepaid alert with timestamp - %f", buf, 0xCu);
  }

  if (CFAbsoluteTimeGetCurrent() + -86400.0 > a2)
  {
    v5 = *(this + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Data usage push message timestamp is too old", buf, 2u);
    }

    return;
  }

  *buf = 0uLL;
  ServiceMap = Registry::getServiceMap(*(this + 9));
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
  v18 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v18);
  if (!v12)
  {
    v14 = 0;
    goto LABEL_13;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
LABEL_13:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_14;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
LABEL_14:
  (*(*v14 + 8))(buf, v14, 1);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (*buf)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1002FA9B0;
    v17[3] = &unk_101E3F590;
    v17[4] = this;
    v18 = v17;
    (*(**buf + 264))(*buf, 3, this + 48, 0, &v18, v16);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_1002FA970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002FA9B0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 32);
  if (a3)
  {

    DataPlanManagerBootstrap::handleDataUsagePush_sync(v5);
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v6 = *(v5 + 64);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Error while querying entitlements", v7, 2u);
    }
  }
}

void DataPlanManagerBootstrap::handleMultiSIMUpdatePush(uint64_t a1, __int128 *a2, char a3)
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

  v6 = a3;
  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 32));
  operator new();
}

void DataPlanManagerBootstrap::handleProfileReleasedPush(uint64_t a1, __int128 *a2, char a3)
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

  v6 = a3;
  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 32));
  operator new();
}

void DataPlanManagerBootstrap::handleMultiSIMProvisioningFailedPush(uint64_t a1, uint64_t a2, char a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002FADE8;
  v5[3] = &unk_101E3F5B0;
  v5[4] = a1;
  v5[5] = a2;
  v6 = a3;
  v9 = 0;
  v10 = 0;
  sub_100004AA0(&v9, (a1 + 32));
  v4 = *(a1 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10030229C;
  block[3] = &unk_101E3FE60;
  block[5] = v9;
  v8 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v4, block);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_1002FADE8(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 656);
  if (v4)
  {
    v5 = *(*v4 + 224);

    v5();
  }

  else
  {
    v8 = v1;
    v9 = v2;
    v6 = *(v3 + 64);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I fCellularPlanControllerPhone is not available!", v7, 2u);
    }
  }
}

void DataPlanManagerBootstrap::handleInternetActivateFailedTrigger_sync(uint64_t a1)
{
  v2 = *(a1 + 640);
  v3 = *(a1 + 648);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    (*(*v2 + 688))(v2);
  }

  if (v3)
  {

    sub_100004A34(v3);
  }
}

void sub_1002FAF54(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataPlanManagerBootstrap::allowInternetInterfaceActivate_sync(DataPlanManagerBootstrap *this, BOOL *a2)
{
  v4 = *(this + 80);
  v5 = *(this + 81);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4)
  {
    v6 = 1;
    goto LABEL_44;
  }

  v35 = 0;
  v6 = (*(*v4 + 672))(v4, &v35);
  ServiceMap = Registry::getServiceMap(*(this + 9));
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
  if (!v13)
  {
    v15 = 0;
LABEL_13:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    if (!v15)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
  if (v15)
  {
LABEL_14:
    (*(*v15 + 72))(v15, v6 ^ 1);
  }

LABEL_15:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  if ((v6 & 1) == 0)
  {
    v17 = Registry::getServiceMap(*(this + 9));
    v18 = v17;
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

    std::mutex::lock(v17);
    *buf = v19;
    v23 = sub_100009510(&v18[1].__m_.__sig, buf);
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
        if (!v25)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v25 = 0;
    }

    std::mutex::unlock(v18);
    v24 = 0;
    v26 = 1;
    if (!v25)
    {
LABEL_28:
      if ((v26 & 1) == 0)
      {
        sub_100004A34(v24);
      }

      if (v35)
      {
        *a2 = 1;
        v27 = *(this + 32);
        if (!v27)
        {
          goto LABEL_39;
        }

        v28 = (this + 256);
        do
        {
          if (v27[7] >= 1)
          {
            v28 = v27;
          }

          v27 = *&v27[2 * (v27[7] < 1)];
        }

        while (v27);
        if (v28 == (this + 256) || v28[7] > 1)
        {
LABEL_39:
          v29 = 0;
        }

        else
        {
          v29 = *(v28 + 32);
        }

        v30 = *(this + 8);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I posting activation failure", buf, 2u);
        }

        v31 = asDataActivateFailureReason();
        sub_10000501C(__p, v31);
        DataPlanManagerBootstrap::postInternetDataActivateFailed_sync(this, 0, 0, v29, 18, 0, 0, __p);
        if (v34 < 0)
        {
          operator delete(__p[0]);
        }
      }

      goto LABEL_44;
    }

LABEL_27:
    (*(*v25 + 488))(v25, 0, 5);
    goto LABEL_28;
  }

LABEL_44:
  if (v5)
  {
    sub_100004A34(v5);
  }

  return v6;
}

void sub_1002FB2DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

const void **DataPlanManagerBootstrap::postInternetDataActivateFailed_sync(DataPlanManagerBootstrap *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const __CFString *a7, const void **a8)
{
  v65[0] = @"kCTRegistrationDataContextID";
  v66[0] = [NSNumber numberWithInt:a2];
  v65[1] = @"kCTRegistrationDataActive";
  v66[1] = [NSNumber numberWithInt:a3];
  v65[2] = @"kCTRegistrationDataAttached";
  v66[2] = [NSNumber numberWithInt:a4];
  v65[3] = @"kCTRegistrationDataActivateFailure";
  v66[3] = [NSNumber numberWithInt:a5];
  v65[4] = @"kCTRegistrationDataActivateFailureString";
  if (!a6)
  {
    a6 = sub_100FE7F70(a5);
  }

  v15 = @"Unknown reason";
  if (a7)
  {
    v15 = a7;
  }

  v66[4] = a6;
  v66[5] = v15;
  v65[5] = @"kCTRegistrationDataActivationPreventionReason";
  v65[6] = @"kCTRegistrationDataConnectionServices";
  v66[6] = &off_101F92CD0;
  v17 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:7];
  v18 = *(a1 + 76);
  if (!v18 || ((*(*v18 + 32))(v18) & 1) != 0)
  {
    goto LABEL_7;
  }

  v22 = strlen(kDataActivateFailureReasonDataPlanExpiredSequoia);
  v23 = v22;
  v24 = *(a8 + 23);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v25 = a8;
    if (v23 != v24)
    {
      goto LABEL_91;
    }

LABEL_90:
    if (!memcmp(v25, kDataActivateFailureReasonDataPlanExpiredSequoia, v23))
    {
      goto LABEL_105;
    }

    goto LABEL_91;
  }

  if (v22 == a8[1])
  {
    if (v22 == -1)
    {
      sub_10013C334();
    }

    v25 = *a8;
    goto LABEL_90;
  }

LABEL_91:
  v39 = strlen(kDataActivateFailureReasonDataPlanNoExistingPlan);
  v40 = v39;
  if ((v24 & 0x80000000) != 0)
  {
    if (v39 != a8[1])
    {
      goto LABEL_98;
    }

    if (v39 == -1)
    {
      sub_10013C334();
    }

    v41 = *a8;
  }

  else
  {
    v41 = a8;
    if (v40 != v24)
    {
LABEL_98:
      v42 = strlen(kDataActivateFailureReasonDataPlanUnusableProfile);
      v43 = v42;
      if ((v24 & 0x80000000) != 0)
      {
        if (v42 != a8[1])
        {
          goto LABEL_7;
        }

        if (v42 == -1)
        {
          sub_10013C334();
        }

        v44 = *a8;
      }

      else
      {
        v44 = a8;
        if (v43 != v24)
        {
          goto LABEL_7;
        }
      }

      if (!memcmp(v44, kDataActivateFailureReasonDataPlanUnusableProfile, v43))
      {
        goto LABEL_105;
      }

LABEL_7:
      v19 = 0;
      goto LABEL_8;
    }
  }

  if (memcmp(v41, kDataActivateFailureReasonDataPlanNoExistingPlan, v40))
  {
    goto LABEL_98;
  }

LABEL_105:
  v19 = 1;
LABEL_8:
  v62 = v17;
  if (v17)
  {
    CFRetain(v17);
    v20 = v62;
  }

  else
  {
    v20 = 0;
  }

  ctu::cf_to_xpc(v20, v16);
  v21 = object;
  if (object && xpc_get_type(object) == &_xpc_type_dictionary)
  {
    xpc_retain(object);
  }

  else
  {
    v21 = xpc_null_create();
  }

  xpc_release(object);
  *&object = v21;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    *&object = xpc_null_create();
  }

  __p[0] = xpc_null_create();
  sub_10002A37C(45, &object, __p);
  xpc_release(__p[0]);
  xpc_release(object);
  v26 = *(a1 + 80);
  v27 = *(a1 + 81);
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v61 = 0;
  if (v26)
  {
    (*(*v26 + 720))(__p);
    *&object = v61;
    v61 = __p[0];
    __p[0] = 0;
    sub_10002D760(&object);
    sub_10002D760(__p);
  }

  v60 = 0;
  v28 = xpc_dictionary_create(0, 0, 0);
  v29 = v28;
  if (v28)
  {
    v60 = v28;
  }

  else
  {
    v29 = xpc_null_create();
    v60 = v29;
    if (!v29)
    {
      v30 = xpc_null_create();
      v29 = 0;
      goto LABEL_32;
    }
  }

  if (xpc_get_type(v29) == &_xpc_type_dictionary)
  {
    xpc_retain(v29);
    goto LABEL_33;
  }

  v30 = xpc_null_create();
LABEL_32:
  v60 = v30;
LABEL_33:
  xpc_release(v29);
  v58 = xpc_BOOL_create(1);
  if (!v58)
  {
    v58 = xpc_null_create();
  }

  *&object = &v60;
  *(&object + 1) = kDataActivateFailureDueToDataPlanKey;
  sub_10000F688(&object, &v58, &v59);
  xpc_release(v59);
  v59 = 0;
  xpc_release(v58);
  v58 = 0;
  if (v19)
  {
    v45 = xpc_string_create(kDataActivateFailureReasonDataPlanConnectToWifi);
    if (!v45)
    {
      v45 = xpc_null_create();
    }

    *&object = &v60;
    *(&object + 1) = kDataActivateFailureReasonKey;
    sub_10000F688(&object, &v45, &v46);
    xpc_release(v46);
    v46 = 0;
    xpc_release(v45);
    v45 = 0;
    __p[0] = v21;
    if (v21)
    {
      xpc_retain(v21);
    }

    else
    {
      __p[0] = xpc_null_create();
    }

    v49 = v60;
    if (v60)
    {
      xpc_retain(v60);
    }

    else
    {
      v49 = xpc_null_create();
    }

    v36 = *(a1 + 10);
    *&object = *(a1 + 9);
    *(&object + 1) = v36;
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sSendCSIObserverEvent(45, __p, &v49, &object);
    if (v36)
    {
      sub_100004A34(v36);
    }

    xpc_release(v49);
    xpc_release(__p[0]);
  }

  else
  {
    if (*(a8 + 23) < 0)
    {
      a8 = *a8;
    }

    v56 = xpc_string_create(a8);
    if (!v56)
    {
      v56 = xpc_null_create();
    }

    *&object = &v60;
    *(&object + 1) = kDataActivateFailureReasonKey;
    sub_10000F688(&object, &v56, &v57);
    xpc_release(v57);
    v57 = 0;
    xpc_release(v56);
    v56 = 0;
    if (v61)
    {
      ctu::cf_to_xpc(v61, v31);
      *&object = &v60;
      *(&object + 1) = "DataPlanCsn";
      sub_10000F688(&object, &v54, &v55);
      xpc_release(v55);
      v55 = 0;
      xpc_release(v54);
      v54 = 0;
    }

    DataPlanManagerBootstrap::getEfectiveIccid_sync(&object, a1);
    v32 = object;
    sub_100005978(&object);
    if (v32)
    {
      DataPlanManagerBootstrap::getEfectiveIccid_sync(&v49, a1);
      object = 0uLL;
      v64 = 0;
      ctu::cf::assign();
      *__p = object;
      v51 = v64;
      if (v64 >= 0)
      {
        v33 = __p;
      }

      else
      {
        v33 = __p[0];
      }

      v52 = xpc_string_create(v33);
      if (!v52)
      {
        v52 = xpc_null_create();
      }

      *&object = &v60;
      *(&object + 1) = "DataPlanIccid";
      sub_10000F688(&object, &v52, &v53);
      xpc_release(v53);
      v53 = 0;
      xpc_release(v52);
      v52 = 0;
      if (SHIBYTE(v51) < 0)
      {
        operator delete(__p[0]);
      }

      sub_100005978(&v49);
    }

    DataPlanManagerBootstrap::getCellularDataPlanAccountUrl_sync(&object, a1);
    v34 = object;
    sub_100005978(&object);
    if (v34)
    {
      DataPlanManagerBootstrap::getCellularDataPlanAccountUrl_sync(&v49, a1);
      object = 0uLL;
      v64 = 0;
      ctu::cf::assign();
      *__p = object;
      v51 = v64;
      if (v64 >= 0)
      {
        v35 = __p;
      }

      else
      {
        v35 = __p[0];
      }

      v47 = xpc_string_create(v35);
      if (!v47)
      {
        v47 = xpc_null_create();
      }

      *&object = &v60;
      *(&object + 1) = "DataPlanUrl";
      sub_10000F688(&object, &v47, &v48);
      xpc_release(v48);
      v48 = 0;
      xpc_release(v47);
      v47 = 0;
      if (SHIBYTE(v51) < 0)
      {
        operator delete(__p[0]);
      }

      sub_100005978(&v49);
    }

    __p[0] = v21;
    if (v21)
    {
      xpc_retain(v21);
    }

    else
    {
      __p[0] = xpc_null_create();
    }

    v49 = v60;
    if (v60)
    {
      xpc_retain(v60);
    }

    else
    {
      v49 = xpc_null_create();
    }

    v37 = *(a1 + 10);
    *&object = *(a1 + 9);
    *(&object + 1) = v37;
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sSendCSIObserverEvent(45, __p, &v49, &object);
    if (v37)
    {
      sub_100004A34(v37);
    }

    xpc_release(v49);
    xpc_release(__p[0]);
  }

  xpc_release(v60);
  sub_10002D760(&v61);
  if (v27)
  {
    sub_100004A34(v27);
  }

  xpc_release(v21);
  return sub_10001021C(&v62);
}

void sub_1002FBB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t a14, xpc_object_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, xpc_object_t object, char a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t DataPlanManagerBootstrap::socketThatWouldBringUpInternetIsFailing_sync(DataPlanManagerBootstrap *this)
{
  v2 = *(this + 80);
  v3 = *(this + 81);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!v2)
    {
      sub_100004A34(v3);
      return 0;
    }
  }

  else if (!v2)
  {
    return 0;
  }

  v4 = (*(*v2 + 696))(v2);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (v4)
  {
    v5 = *(this + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I run activate mechanism for failing socket", buf, 2u);
    }

    v7 = 0;
    DataPlanManagerBootstrap::allowInternetInterfaceActivate_sync(this, &v7);
    if (v7)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1002FBE58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void DataPlanManagerBootstrap::handlePlanExpired_sync(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 624) + 152))(*(a1 + 624));
  v4 = *(a1 + 640);
  v5 = *(a1 + 648);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    (*(*v4 + 680))(v4, a2);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
  v16 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v16);
  if (!v12)
  {
    v14 = 0;
LABEL_13:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    if (!v14)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
  if (v14)
  {
LABEL_14:
    (*(*v14 + 488))(v14, 0, 5);
  }

LABEL_15:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_1002FC020(_Unwind_Exception *exception_object)
{
  v4 = v2;
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void DataPlanManagerBootstrap::getCellularPlanAccountUrl_sync(const void **__return_ptr a1@<X8>, DataPlanManagerBootstrap *this@<X0>)
{
  *a1 = 0;
  v3 = *(this + 80);
  v4 = *(this + 81);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3 && (*(*v3 + 728))(v3))
  {
    (*(*v3 + 736))(&v6, v3);
    if (&v6 != a1)
    {
      v5 = *a1;
      *a1 = v6;
      v6 = 0;
      v7 = v5;
      sub_100005978(&v7);
    }

    sub_100005978(&v6);
  }

  if (v4)
  {
    sub_100004A34(v4);
  }
}

void sub_1002FC150(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  sub_100005978(v2);
  _Unwind_Resume(a1);
}

void DataPlanManagerBootstrap::maybeStartPlanExpiryDetection_sync(DataPlanManagerBootstrap *this)
{
  if (*(this + 96))
  {
    v2 = *(this + 743);
    if (v2 < 0)
    {
      if (!*(this + 91))
      {
        return;
      }
    }

    else if (!*(this + 743))
    {
      return;
    }

    v3 = (this + 720);
    v4 = *(this + 27);
    v5 = *(this + 28);
    if (v4 != v5)
    {
      if (v2 >= 0)
      {
        v6 = *(this + 743);
      }

      else
      {
        v6 = *(this + 91);
      }

      for (i = v4 + 72; ; i += 168)
      {
        v8 = *(i + 23);
        v9 = v8;
        if ((v8 & 0x80u) != 0)
        {
          v8 = *(i + 8);
        }

        if (v8 == v6)
        {
          v10 = v9 >= 0 ? i : *i;
          v11 = v2 >= 0 ? (this + 720) : *v3;
          if (!memcmp(v10, v11, v6))
          {
            v12 = *(i + 47);
            if ((v12 & 0x80u) != 0)
            {
              v12 = *(i + 32);
            }

            if (v12)
            {
              break;
            }
          }
        }

        v13 = i + 96;
        if (v13 == v5)
        {
          return;
        }
      }

      v4 = i - 72;
    }

    if (v4 != v5 && subscriber::isEsimCapable())
    {
      v14 = *(this + 743);
      if (*(this + 488))
      {
        v15 = *(this + 311);
        if (v15 >= 0)
        {
          v16 = *(this + 311);
        }

        else
        {
          v16 = *(this + 37);
        }

        v17 = *(this + 91);
        if ((v14 & 0x80u) == 0)
        {
          v18 = *(this + 743);
        }

        else
        {
          v18 = *(this + 91);
        }

        if (v16 == v18)
        {
          v19 = v15 >= 0 ? (this + 288) : *(this + 36);
          v20 = (v14 & 0x80u) == 0 ? (this + 720) : *(this + 90);
          if (!memcmp(v19, v20, v16))
          {
            return;
          }
        }
      }

      else
      {
        v17 = *(this + 91);
      }

      v21 = *(this + 767);
      if (v21 >= 0)
      {
        v22 = *(this + 767);
      }

      else
      {
        v22 = *(this + 94);
      }

      if ((v14 & 0x80u) == 0)
      {
        v23 = v14;
      }

      else
      {
        v23 = v17;
      }

      if (v22 == v23)
      {
        if (v21 >= 0)
        {
          v24 = this + 744;
        }

        else
        {
          v24 = *(this + 93);
        }

        if ((v14 & 0x80u) == 0)
        {
          v25 = this + 720;
        }

        else
        {
          v25 = *(this + 90);
        }

        v26 = memcmp(v24, v25, v22) == 0;
      }

      else
      {
        v26 = 0;
      }

      v27 = *(this + 96);
      v28 = *(this + 6);
      object = v28;
      if (v28)
      {
        dispatch_retain(v28);
      }

      sub_100004AA0(&v42, this + 4);
      if (v42)
      {
        v29 = v42 + 24;
      }

      else
      {
        v29 = 0;
      }

      v44 = v29;
      v45 = v43;
      v42 = 0;
      v43 = 0;
      (*(*v27 + 16))(&v47, v27, &object, v4, &v44, v26);
      v30 = v47;
      v47 = 0uLL;
      v31 = *(this + 99);
      *(this + 49) = v30;
      if (v31)
      {
        sub_100004A34(v31);
        if (*(&v47 + 1))
        {
          sub_100004A34(*(&v47 + 1));
        }
      }

      if (v45)
      {
        sub_100004A34(v45);
      }

      if (v43)
      {
        sub_100004A34(v43);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (*(this + 743) < 0)
      {
        **(this + 90) = 0;
        *(this + 91) = 0;
      }

      else
      {
        *(this + 720) = 0;
        *(this + 743) = 0;
      }

      if (*(this + 98))
      {
        ServiceMap = Registry::getServiceMap(*(this + 9));
        v33 = ServiceMap;
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

        std::mutex::lock(ServiceMap);
        *&v47 = v34;
        v38 = sub_100009510(&v33[1].__m_.__sig, &v47);
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
LABEL_87:
            if (v40)
            {
              (*(*v40 + 24))(v40, 0, v26 | 0x100);
            }

            if ((v41 & 1) == 0)
            {
              sub_100004A34(v39);
            }

            return;
          }
        }

        else
        {
          v40 = 0;
        }

        std::mutex::unlock(v33);
        v39 = 0;
        v41 = 1;
        goto LABEL_87;
      }
    }
  }
}

void sub_1002FC4F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object)
{
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void DataPlanManagerBootstrap::setPlanAsExpired(DataPlanManagerBootstrap *this)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1002FC650;
  v3[3] = &unk_101E26008;
  v3[4] = this;
  v6 = 0;
  v7 = 0;
  sub_100004AA0(&v6, this + 4);
  v2 = *(this + 6);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10030229C;
  block[3] = &unk_101E3FE60;
  block[5] = v6;
  v5 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v3;
  dispatch_async(v2, block);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1002FC650(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I expiring plan due to debug trigger", v3, 2u);
  }

  DataPlanManagerBootstrap::handlePlanExpired_sync(v1, 1);
}

const void **DataPlanManagerBootstrap::userDidTapManagePlan(uint64_t a1, const void **a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3321888768;
  v5[2] = sub_1002FC7E4;
  v5[3] = &unk_101E3F5D0;
  v5[4] = a1;
  sub_10005C7A4(&v6, a2);
  v9 = 0;
  v10 = 0;
  sub_100004AA0(&v9, (a1 + 32));
  v3 = *(a1 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10030229C;
  block[3] = &unk_101E3FE60;
  block[5] = v9;
  v8 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v3, block);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  return sub_100005978(&v6);
}

void sub_1002FC7E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 64);
  if (v2)
  {
    if (os_log_type_enabled(*(v1 + 64), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I manage plan for alert", buf, 2u);
      v2 = *(a1 + 40);
    }

    v9[0] = @"Iccid";
    v9[1] = @"FlowTypeKey";
    v10[0] = v2;
    v10[1] = &off_101F910C8;
    v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
    v6 = *(v1 + 624);
    v7 = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    (*(*v6 + 208))(v6, &v7);
    sub_10001021C(&v7);
  }

  else if (os_log_type_enabled(*(v1 + 64), OS_LOG_TYPE_FAULT))
  {
    sub_10176AE78(v3);
  }
}

void sub_1002FC920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void DataPlanManagerBootstrap::shouldDiscourageDisableLte(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002FCA6C;
  v4[3] = &unk_101E3F570;
  v4[4] = a2;
  v4[5] = a1;
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 32));
  v3 = *(a1 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10030229C;
  block[3] = &unk_101E3FE60;
  block[5] = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

uint64_t sub_1002FCA6C(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 656);
  if (v2)
  {
    (*(*v2 + 280))(v2);
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void DataPlanManagerBootstrap::shouldWarnOnLteOffBeforeProvisioning_sync(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002FCBF8;
  v4[3] = &unk_101E3F570;
  v4[4] = a2;
  v4[5] = a1;
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 32));
  v3 = *(a1 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10030229C;
  block[3] = &unk_101E3FE60;
  block[5] = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

uint64_t sub_1002FCBF8(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 656);
  if (v2)
  {
    (*(*v2 + 288))(v2);
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

const void **DataPlanManagerBootstrap::processPSNetworkReject_sync(DataPlanManagerBootstrap *this, int a2, int a3)
{
  v6 = *(this + 10);
  number[0] = *(this + 9);
  number[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  theDict = 0;
  sCopyCellularDataSettings(number, &theDict);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"DataPlanNetworkRejectionCause");
    v8 = Value;
    if (Value)
    {
      v9 = CFGetTypeID(Value);
      if (v9 == CFNumberGetTypeID())
      {
        v10 = v8;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v19 = 0;
    number[0] = v10;
    v11 = CFDictionaryGetValue(theDict, @"DataPlanNetworkRejectionCauseToForce3G");
    v12 = v11;
    if (v11 && (v13 = CFGetTypeID(v11), v13 == CFNumberGetTypeID()))
    {
      v19 = v12;
      valuePtr = -1;
      CFNumberGetValue(v12, kCFNumberIntType, &valuePtr);
      if (valuePtr == a2)
      {
        v14 = *(this + 8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Rejected from LTE, forcing LTE to provisioning mode", v17, 2u);
        }

        sub_100083E9C(&event::registration::setLTEToProvisioning, 1);
      }
    }

    else
    {
      v19 = 0;
      valuePtr = -1;
    }

    if (a3 == 7)
    {
      if (number[0])
      {
        CFNumberGetValue(number[0], kCFNumberIntType, &valuePtr);
        if (valuePtr == a2)
        {
          *(this + 688) = 1;
          v15 = *(this + 8);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *v17 = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Disable LTE", v17, 2u);
          }

          sub_100083E9C(&event::registration::setLTEEnabled, 0);
        }
      }
    }

    sub_100029A48(&v19);
    sub_100029A48(number);
  }

  return sub_10001021C(&theDict);
}

void sub_1002FCE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v8 = va_arg(va2, const void *);
  v10 = va_arg(va2, void);
  sub_100029A48(va);
  sub_100029A48(va1);
  sub_10001021C(va2);
  _Unwind_Resume(a1);
}

void DataPlanManagerBootstrap::getEfectiveIccid_sync(const void **__return_ptr a1@<X8>, DataPlanManagerBootstrap *this@<X0>)
{
  *a1 = 0;
  v3 = *(this + 80);
  v4 = *(this + 81);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3 && (*(*v3 + 728))(v3))
  {
    (*(*v3 + 704))(&v6, v3);
    if (&v6 != a1)
    {
      v5 = *a1;
      *a1 = v6;
      v6 = 0;
      v7 = v5;
      sub_100005978(&v7);
    }

    sub_100005978(&v6);
  }

  if (v4)
  {
    sub_100004A34(v4);
  }
}

void sub_1002FCFB4(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  sub_100005978(v2);
  _Unwind_Resume(a1);
}

void DataPlanManagerBootstrap::didShowDataPlanAlert(uint64_t a1, __int128 *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_1002FD120;
  v4[3] = &unk_101E3E800;
  v4[4] = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__p, *a2, *(a2 + 1));
  }

  else
  {
    __p = *a2;
    v6 = *(a2 + 2);
  }

  v9 = 0;
  v10 = 0;
  sub_100004AA0(&v9, (a1 + 32));
  v3 = *(a1 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10030229C;
  block[3] = &unk_101E3FE60;
  block[5] = v9;
  v8 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p);
  }
}

uint64_t sub_1002FD120(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (a1 + 40);
  v4 = strlen(kDataActivateFailureReasonDataPlanExpiredSequoia);
  v5 = v4;
  v6 = *(a1 + 63);
  if (v6 < 0)
  {
    if (v4 != *(a1 + 48))
    {
      goto LABEL_8;
    }

    if (v4 == -1)
    {
      sub_10013C334();
    }

    v7 = *v3;
  }

  else
  {
    v7 = v3;
    if (v5 != v6)
    {
      goto LABEL_8;
    }
  }

  if (!memcmp(v7, kDataActivateFailureReasonDataPlanExpiredSequoia, v5))
  {
    goto LABEL_23;
  }

LABEL_8:
  v8 = strlen(kDataActivateFailureReasonDataPlanNoExistingPlan);
  v9 = v8;
  if ((v6 & 0x80000000) != 0)
  {
    if (v8 != *(a1 + 48))
    {
      goto LABEL_15;
    }

    if (v8 == -1)
    {
      sub_10013C334();
    }

    v10 = *v3;
LABEL_14:
    if (memcmp(v10, kDataActivateFailureReasonDataPlanNoExistingPlan, v9))
    {
      goto LABEL_15;
    }

LABEL_23:
    v12 = *(**(v2 + 608) + 40);

    return v12();
  }

  v10 = v3;
  if (v9 == v6)
  {
    goto LABEL_14;
  }

LABEL_15:
  result = strlen(kDataActivateFailureReasonDataPlanUnusableProfile);
  if ((v6 & 0x80000000) != 0)
  {
    if (result != *(a1 + 48))
    {
      return result;
    }

    if (result == -1)
    {
      sub_10013C334();
    }

    v3 = *v3;
  }

  else if (result != v6)
  {
    return result;
  }

  result = memcmp(v3, kDataActivateFailureReasonDataPlanUnusableProfile, result);
  if (!result)
  {
    goto LABEL_23;
  }

  return result;
}

const void **DataPlanManagerBootstrap::launchRemoteProvisioningWebsheet(uint64_t a1, const void **a2, const void **a3)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_1002FD3F4;
  v7[3] = &unk_101E3F600;
  v7[4] = a1;
  sub_10005C7A4(&v8, a2);
  sub_100010024(&v9, a3);
  v12 = 0;
  v13 = 0;
  sub_100004AA0(&v12, (a1 + 32));
  v5 = *(a1 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10030229C;
  block[3] = &unk_101E3FE60;
  block[5] = v12;
  v11 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v7;
  dispatch_async(v5, block);
  if (v11)
  {
    sub_100004A34(v11);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  sub_10001021C(&v9);
  return sub_100005978(&v8);
}

const void **sub_1002FD3F4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 624);
  sub_10005C7A4(&v6, (a1 + 40));
  sub_100010024(&v5, (a1 + 48));
  v4 = 0;
  (*(*v2 + 168))(v2, &v6, &v5, &v4);
  sub_100005978(&v4);
  sub_10001021C(&v5);
  return sub_100005978(&v6);
}

void sub_1002FD48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  sub_100005978(va);
  sub_10001021C(va1);
  sub_100005978(va2);
  _Unwind_Resume(a1);
}

const void **sub_1002FD4B0(uint64_t a1, uint64_t a2)
{
  sub_10005C7A4((a1 + 40), (a2 + 40));

  return sub_100010024((a1 + 48), (a2 + 48));
}

const void **sub_1002FD4F8(uint64_t a1)
{
  sub_10001021C((a1 + 48));

  return sub_100005978((a1 + 40));
}

BOOL DataPlanManagerBootstrap::isACellularDataPlanNotSubscribedError(uint64_t a1, int a2)
{
  v3 = *(a1 + 80);
  v7[0] = *(a1 + 72);
  v7[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cf = 0;
  sCopyCellularDataSettings(v7, &cf);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (cf)
  {
    v6 = cf;
    CFRetain(cf);
    IsNotSubscribedError = sIsNotSubscribedError(&v6, a2);
    sub_10001021C(&v6);
  }

  else
  {
    IsNotSubscribedError = a2 == 65;
  }

  sub_10001021C(&cf);
  return IsNotSubscribedError;
}

void sub_1002FD5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, const void *a12)
{
  sub_10001021C(&a9);
  sub_10001021C(&a12);
  _Unwind_Resume(a1);
}

const void **DataPlanManagerBootstrap::displayInstallFailedPopup_sync(uint64_t a1, uint64_t a2, const void **a3)
{
  v4 = *(a1 + 624);
  sub_10005C7A4(&v6, a3);
  (*(*v4 + 40))(v4, a2, &v6);
  return sub_100005978(&v6);
}

void sub_1002FD6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

uint64_t DataPlanManagerBootstrap::handleCellularPlanAvailable_sync(DataPlanManagerBootstrap *this)
{
  result = *(this + 76);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t non-virtual thunk toDataPlanManagerBootstrap::handleCellularPlanAvailable_sync(DataPlanManagerBootstrap *this)
{
  result = *(this + 74);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t DataPlanManagerBootstrap::handleCellularPlanDidChange_sync(DataPlanManagerBootstrap *this)
{
  result = *(this + 76);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t non-virtual thunk toDataPlanManagerBootstrap::handleCellularPlanDidChange_sync(DataPlanManagerBootstrap *this)
{
  result = *(this + 74);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

void DataPlanManagerBootstrap::handleCellularPlanEnable_sync(uint64_t a1, void *a2)
{
  if (*(a1 + 768))
  {
    v2 = a2 + 1;
    v3 = *a2;
    if (*a2 != a2 + 1)
    {
      v5 = (a1 + 720);
      do
      {
        v6 = v3 + 4;
        v7 = *(a1 + 743);
        if (v7 >= 0)
        {
          v8 = *(a1 + 743);
        }

        else
        {
          v8 = *(a1 + 728);
        }

        v9 = *(v3 + 55);
        if (v9 >= 0)
        {
          v10 = *(v3 + 55);
        }

        else
        {
          v10 = v3[5];
        }

        if (v8 == v10)
        {
          v11 = v7 >= 0 ? v5 : v5->__r_.__value_.__r.__words[0];
          v12 = v9 >= 0 ? v3 + 4 : *v6;
          if (!memcmp(v11, v12, v8))
          {
            break;
          }
        }

        if (v8)
        {
          v13 = v10 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          v14 = *(a1 + 64);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = v5;
            if (v7 < 0)
            {
              v15 = v5->__r_.__value_.__r.__words[0];
            }

            v16 = v3 + 4;
            if (v9 < 0)
            {
              v16 = *v6;
            }

            *buf = 136315394;
            v21 = v15;
            v22 = 2080;
            v23 = v16;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Overwriting plan expiry ICCID (%s) with (%s)", buf, 0x16u);
          }
        }

        std::string::operator=(v5, (v3 + 4));
        v17 = *(a1 + 792);
        *(a1 + 784) = 0u;
        if (v17)
        {
          sub_100004A34(v17);
        }

        DataPlanManagerBootstrap::maybeStartPlanExpiryDetection_sync(a1);
        v18 = v3[1];
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
            v19 = v3[2];
            v13 = *v19 == v3;
            v3 = v19;
          }

          while (!v13);
        }

        v3 = v19;
      }

      while (v19 != v2);
    }
  }
}

uint64_t DataPlanManagerBootstrap::handleCellularPlanWasPurchased_sync(uint64_t a1, std::string *__str)
{
  if (!*(a1 + 768))
  {
LABEL_15:
    result = *(a1 + 608);
    if (result)
    {
      v10 = *(*result + 56);

      return v10();
    }

    return result;
  }

  v3 = __str;
  v4 = *(a1 + 767);
  if (v4 >= 0)
  {
    v5 = *(a1 + 767);
  }

  else
  {
    v5 = *(a1 + 752);
  }

  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  v7 = size;
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (v5 != size)
  {
    goto LABEL_14;
  }

  if (v4 >= 0)
  {
    v8 = (a1 + 744);
  }

  else
  {
    v8 = *(a1 + 744);
  }

  if (v7 < 0)
  {
    __str = __str->__r_.__value_.__r.__words[0];
  }

  result = memcmp(v8, __str, v5);
  if (result)
  {
LABEL_14:
    std::string::operator=((a1 + 744), v3);
    goto LABEL_15;
  }

  return result;
}

const void **DataPlanManagerBootstrap::launchRemoteProvisioningWebsheet_sync(uint64_t a1, const void **a2, const void **a3, const void **a4)
{
  v6 = *(a1 + 624);
  sub_10005C7A4(&v10, a2);
  sub_100010024(&v9, a3);
  sub_10005C7A4(&v8, a4);
  (*(*v6 + 168))(v6, &v10, &v9, &v8);
  sub_100005978(&v8);
  sub_10001021C(&v9);
  return sub_100005978(&v10);
}

void sub_1002FDB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  sub_100005978(va);
  sub_10001021C(va1);
  sub_100005978(va2);
  _Unwind_Resume(a1);
}

const void **DataPlanManagerBootstrap::launchProvisioningWebsheet_sync(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, const void **a5)
{
  v8 = *(a1 + 624);
  sub_10002D728(&v11, a2);
  sub_100010024(&v10, a5);
  (*(*v8 + 160))(v8, &v11, a3, a4, &v10);
  sub_10001021C(&v10);
  return sub_10002D760(&v11);
}

void sub_1002FDC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10001021C(&a9);
  sub_10002D760(&a10);
  _Unwind_Resume(a1);
}

const void **DataPlanManagerBootstrap::launchSimSetup(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a1 + 624);
  sub_10002D728(&v16, a2);
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(__dst, *a5, *(a5 + 8));
  }

  else
  {
    *__dst = *a5;
    v15 = *(a5 + 16);
  }

  if (*(a6 + 23) < 0)
  {
    sub_100005F2C(__p, *a6, *(a6 + 8));
  }

  else
  {
    *__p = *a6;
    v13 = *(a6 + 16);
  }

  (*(*v10 + 192))(v10, &v16, a3, a4, __dst, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__dst[0]);
  }

  return sub_10002D760(&v16);
}

void sub_1002FDD4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_10002D760(&a22);
  _Unwind_Resume(a1);
}

BOOL DataPlanManagerBootstrap::shouldCellularPlanPublishSubscriptionConfiguration(Registry **this)
{
  ServiceMap = Registry::getServiceMap(this[9]);
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
    goto LABEL_8;
  }

  v9 = v7[3];
  v8 = v7[4];
  if (!v8)
  {
LABEL_8:
    std::mutex::unlock(v2);
    return v9 == 0;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v2);
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v8);
  sub_100004A34(v8);
  return v9 == 0;
}

void DataPlanManagerBootstrap::setUserSlotsSelection(uint64_t a1, void *a2, uint64_t a3)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
  *v29 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, v29);
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
      sub_100004A34(v13);
      if (v14)
      {
        return;
      }
    }

    else
    {
      std::mutex::unlock(v7);
      if (v14)
      {
        return;
      }
    }
  }

  else
  {
    std::mutex::unlock(v7);
  }

  v15 = Registry::getServiceMap(*(a1 + 72));
  v16 = v15;
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

  std::mutex::lock(v15);
  *v29 = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, v29);
  if (!v21)
  {
    v23 = 0;
LABEL_19:
    std::mutex::unlock(v16);
    v22 = 0;
    v24 = 1;
    if (!v23)
    {
      goto LABEL_26;
    }

LABEL_20:
    if (a2[1] - *a2 <= 4uLL)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    v26 = *(a1 + 64);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = subscriber::asString();
      v28 = subscriber::asString();
      *v29 = 136315394;
      *&v29[4] = v27;
      v30 = 2080;
      v31 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I setting msim config to: %s, default user data slot to: %s", v29, 0x16u);
    }

    (*(*v23 + 1280))(v23, a3, v25);
    goto LABEL_26;
  }

  v23 = v21[3];
  v22 = v21[4];
  if (!v22)
  {
    goto LABEL_19;
  }

  atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v16);
  atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v22);
  v24 = 0;
  if (v23)
  {
    goto LABEL_20;
  }

LABEL_26:
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v22);
  }
}

void sub_1002FE13C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void DataPlanManagerBootstrap::setActiveUserDataSlot(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 72));
  v8 = ServiceMap;
  if (v6)
  {
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
    *v27 = v9;
    v13 = sub_100009510(&v8[1].__m_.__sig, v27);
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
          goto LABEL_31;
        }

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
    if (!v15)
    {
      goto LABEL_31;
    }

LABEL_21:
    v23 = *(a1 + 64);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) >= 0)
      {
        v24 = a3;
      }

      else
      {
        v24 = *a3;
      }

      *v27 = 136315138;
      *&v27[4] = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Requesting default active user data: (%s)", v27, 0xCu);
    }

    (*(*v15 + 64))(v15, a3);
    goto LABEL_31;
  }

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
  *v27 = v17;
  v21 = sub_100009510(&v8[1].__m_.__sig, v27);
  if (v21)
  {
    v22 = v21[3];
    v14 = v21[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = 0;
      if (!v22)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v22 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
  if (!v22)
  {
    goto LABEL_31;
  }

LABEL_29:
  (*(*v22 + 1272))(v22, a2);
  v25 = *(a1 + 64);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = subscriber::asString();
    *v27 = 136315138;
    *&v27[4] = v26;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I active user set to: %s", v27, 0xCu);
  }

LABEL_31:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

void sub_1002FE454(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataPlanManagerBootstrap::setDefaultVoiceSlot(uint64_t a1, uint64_t a2)
{
  atomic_store(a2, (a1 + 160));
  v4 = a1 + 200;
  if (*(a1 + 200) != a2)
  {
    *(a1 + 200) = a2;
    v5 = *(a1 + 192);
    if (v5)
    {
      (*(*v5 + 48))(v5, v4);
    }
  }

  v6 = *(a1 + 64);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I default voice set to: %s", &v8, 0xCu);
  }

  return (*(**(a1 + 696) + 80))(*(a1 + 696), a2);
}

BOOL DataPlanManagerBootstrap::configureSubscriptions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
  v16 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v16);
  if (!v11)
  {
    v12 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v13 = 0;
    v14 = 1;
    if (!v12)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v12 = v11[3];
  v13 = v11[4];
  if (!v13)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v14 = 0;
  if (v12)
  {
LABEL_10:
    (*(*v12 + 72))(v12, a2, a3);
  }

LABEL_11:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  return v12 != 0;
}

void sub_1002FE6E8(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void DataPlanManagerBootstrap::monitorModeCompleted(uint64_t a1, __int16 a2)
{
  v2 = a2;
  if ((a2 & 0x100) == 0)
  {
    v4 = *(a1 + 64);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Unknown result, leave plan as enabled and do not show anything", v28, 2u);
    }

    if (*(a1 + 767) < 0)
    {
      **(a1 + 744) = 0;
      *(a1 + 752) = 0;
    }

    else
    {
      *(a1 + 744) = 0;
      *(a1 + 767) = 0;
    }

    return;
  }

  v5 = *(a1 + 640);
  if (v5)
  {
    if ((a2 & 1) == 0)
    {
      v6 = *(a1 + 64);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v28[0]) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Plan Expired", v28, 2u);
        v5 = *(a1 + 640);
      }

      (*(*v5 + 680))(v5, 1);
      v7 = *(a1 + 792);
      *(a1 + 784) = 0u;
      if (v7)
      {
        sub_100004A34(v7);
      }
    }

    if ((*(a1 + 767) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 752))
      {
        goto LABEL_29;
      }
    }

    else if (!*(a1 + 767))
    {
      goto LABEL_29;
    }

    (*(**(a1 + 640) + 752))(*(a1 + 640), v2 & 1);
    ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
    v28[0] = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, v28);
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
LABEL_27:
          if ((v17 & 1) == 0)
          {
            sub_100004A34(v15);
          }

          goto LABEL_29;
        }

LABEL_26:
        (*(*v16 + 24))(v16, 0, 256);
        goto LABEL_27;
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
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_29:
  if (*(a1 + 767) < 0)
  {
    if (!*(a1 + 752))
    {
      return;
    }

    **(a1 + 744) = 0;
    *(a1 + 752) = 0;
  }

  else
  {
    if (!*(a1 + 767))
    {
      return;
    }

    *(a1 + 744) = 0;
    *(a1 + 767) = 0;
  }

  v18 = Registry::getServiceMap(*(a1 + 72));
  v19 = v18;
  if ((v20 & 0x8000000000000000) != 0)
  {
    v21 = (v20 & 0x7FFFFFFFFFFFFFFFLL);
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
  v28[0] = v20;
  v24 = sub_100009510(&v19[1].__m_.__sig, v28);
  if (!v24)
  {
    v26 = 0;
LABEL_42:
    std::mutex::unlock(v19);
    v25 = 0;
    v27 = 1;
    if (!v26)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v26 = v24[3];
  v25 = v24[4];
  if (!v25)
  {
    goto LABEL_42;
  }

  atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v19);
  atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v25);
  v27 = 0;
  if (v26)
  {
LABEL_43:
    (*(*v26 + 488))(v26, 1, 5);
  }

LABEL_44:
  if ((v27 & 1) == 0)
  {
    sub_100004A34(v25);
  }
}

void sub_1002FEA78(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void DataPlanManagerBootstrap::switchSecondaryProvisioning(DataPlanManagerBootstrap *this, char a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002FEBC0;
  v4[3] = &unk_101E26058;
  v4[4] = this;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, this + 4);
  v3 = *(this + 6);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10030229C;
  block[3] = &unk_101E3FE60;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_1002FEBC0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = asStringBool(*(a1 + 40));
    v7 = 136315138;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I switchSecondaryProvisioning, enable=%s", &v7, 0xCu);
  }

  v5 = *(a1 + 40);
  if (*(v2 + 152) != v5)
  {
    *(v2 + 152) = v5;
    v6 = *(v2 + 144);
    if (v6)
    {
      (*(*v6 + 48))(v6, v2 + 152);
    }
  }
}

uint64_t sub_1002FECBC(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1002FED00(uint64_t a1)
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

uint64_t sub_1002FED80(uint64_t a1)
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

uint64_t sub_1002FEE70(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E3F718;
  a2[1] = v2;
  return result;
}

uint64_t sub_1002FEE9C(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v15 = 0;
    ctu::rest::detail::read_enum_string_value(&v15, a2, v5);
    v8 = v15;
    if (v15)
    {
      goto LABEL_16;
    }
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    v8 = xpc::dyn_cast_or_default(a2, 0, v5);
    if (v8)
    {
      goto LABEL_16;
    }
  }

  v9 = *(v3 + 64);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Last known default voice slot: subscriber::SimSlot::kUnknown", &v15, 2u);
  }

  v8 = 1;
LABEL_16:
  if (atomic_load((v3 + 160)))
  {
    v11 = *(v3 + 64);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = subscriber::asString();
      v15 = 136315138;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I default voice slot '%s', not initialized here", &v15, 0xCu);
    }
  }

  else
  {
    atomic_store(v8, (v3 + 160));
    *(v3 + 200) = v8;
    v13 = *(v3 + 192);
    if (v13)
    {
      (*(*v13 + 48))(v13, v3 + 200);
    }
  }

  return sub_1002FF09C((v3 + 168), v3 + 104);
}

uint64_t sub_1002FF050(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002FF09C(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_1002FF100(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

void *sub_1002FF100(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E3F788;
  v5[1] = v3;
  v5[3] = v5;
  sub_1002FF37C(v5, a1);
  sub_1002FED00(v5);
  return a1;
}

uint64_t sub_1002FF204(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E3F788;
  a2[1] = v2;
  return result;
}

uint64_t sub_1002FF238(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1002FF284(uint64_t *a1, unsigned int *a2)
{
  v8 = 0;
  v2 = *a2;
  v3 = subscriber::asString();
  ctu::rest::detail::write_enum_string_value(v2, v3, v4);
  sub_10000501C(&__p, "/cc/prefs-nb/user_default_voice_slot");
  object = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v8);
}

void sub_1002FF338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void *sub_1002FF37C(void *result, void *a2)
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

void sub_1002FF5DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1002FF6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1002FF784(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E3F828;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1002FF7BC(void *a1, xpc_object_t *a2)
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

  sub_1002FF8E0(v3, a2);
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

uint64_t sub_1002FF894(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1002FF8E0(uint64_t a1, xpc_object_t *a2)
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

    sub_100008EA4(&v11, object, 0);
    xpc_release(object[0]);
    v7 = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      v7 = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(object, &v7, count);
    xpc_release(v7);
    for (i = v12; i != object[1] || v11 != object[0]; i = ++v12)
    {
      v8 = i;
      v9 = 0;
      v7 = &v11;
      sub_10003EAD4(&v7, &v9);
      if (xpc_get_type(v9) == &_xpc_type_dictionary)
      {
        LODWORD(v8) = 11;
        v6 = v9;
        v7 = 0;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_1002FFB6C(&v7, &v6);
        xpc_release(v6);
        sub_1002FFD20(a1, &v7, &v7);
      }

      xpc_release(v9);
    }

    xpc_release(object[0]);
    xpc_release(v11);
  }

  xpc_release(v3);
}

void sub_1002FFADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object, uint64_t a11, xpc_object_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15)
{
  xpc_release(object);
  xpc_release(a15);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void sub_1002FFB6C(int *a1, xpc_object_t *a2)
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

void sub_1002FFCCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002FFD20(uint64_t a1, int *a2, uint64_t a3)
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