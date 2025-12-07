uint64_t sub_858(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = sub_8EC();
  if (result)
  {
    return os_log_with_args();
  }

  return result;
}

BOOL sub_8EC()
{
  if (qword_4698)
  {
    return 1;
  }

  qword_4698 = os_log_create("com.apple.MobileInternetSharing", "USBEthernetSharing");
  if (qword_4698)
  {
    return 1;
  }

  result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_2D18(&v1);
    return v1;
  }

  return result;
}

__CFString *usbeth_copy_active_services_entity(const __CFString *a1)
{
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(kCFAllocatorDefault, kSCDynamicStoreDomainSetup, kSCEntNetIPv4);
  if (NetworkGlobalEntity)
  {
    v3 = SCDynamicStoreCopyValue(qword_4688, NetworkGlobalEntity);
    CFRelease(NetworkGlobalEntity);
    if (v3)
    {
      v4 = CFGetTypeID(v3);
      if (v4 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(v3, kSCPropNetServiceOrder);
        if (Value)
        {
          v6 = Value;
          CFRetain(Value);
          CFRelease(v3);
          if (CFArrayGetCount(v6))
          {
            Count = CFArrayGetCount(v6);
            NetworkGlobalEntity = CFArrayCreateMutable(kCFAllocatorDefault, Count, &kCFTypeArrayCallBacks);
            if (NetworkGlobalEntity)
            {
              if (Count < 1)
              {
                v8 = 0;
              }

              else
              {
                v8 = 0;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v6, v8);
                  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainSetup, ValueAtIndex, a1);
                  if (!NetworkServiceEntity)
                  {
                    break;
                  }

                  v11 = NetworkServiceEntity;
                  CFArraySetValueAtIndex(NetworkGlobalEntity, v8, NetworkServiceEntity);
                  CFRelease(v11);
                  if (Count == ++v8)
                  {
                    CFRelease(v6);
                    goto LABEL_17;
                  }
                }
              }

              CFRelease(v6);
              if (v8 == Count)
              {
LABEL_17:
                v12 = SCDynamicStoreCopyMultiple(qword_4688, NetworkGlobalEntity, 0);
                if (v12)
                {
                  v13 = v12;
                }

                else
                {
                  v13 = NetworkGlobalEntity;
                }

                if (v12)
                {
                  v14 = NetworkGlobalEntity;
                }

                else
                {
                  v14 = 0;
                }

                if (v12)
                {
                  v15 = Count < 1;
                }

                else
                {
                  v15 = 1;
                }

                if (v15)
                {
                  v3 = v13;
                  NetworkGlobalEntity = v14;
                }

                else
                {
                  v3 = v12;
                  v17 = 0;
                  do
                  {
                    v18 = CFArrayGetValueAtIndex(NetworkGlobalEntity, v17);
                    v19 = CFDictionaryGetValue(v3, v18);
                    if (v19)
                    {
                      CFArraySetValueAtIndex(NetworkGlobalEntity, v17, v19);
                    }

                    ++v17;
                  }

                  while (Count != v17);
                }

                goto LABEL_31;
              }

              v3 = NetworkGlobalEntity;
              goto LABEL_30;
            }
          }

          else
          {
            NetworkGlobalEntity = 0;
          }

          v3 = v6;
LABEL_31:
          CFRelease(v3);
          return NetworkGlobalEntity;
        }
      }

LABEL_30:
      NetworkGlobalEntity = 0;
      goto LABEL_31;
    }

    return 0;
  }

  return NetworkGlobalEntity;
}

void *UserEventAgentFactory(uint64_t a1, const void *a2)
{
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0xFCu, 0x86u, 0x41u, 0x6Du, 0x61u, 0x64u, 0x20u, 0x70u, 0x72u, 0x6Fu, 0x70u, 0x73u, 0x5Cu, 0x21u, 0x6Eu, 0xC0u);
  if (!CFEqual(a2, v3))
  {
    return 0;
  }

  v4 = malloc_type_malloc(0x20uLL, 0x10E0040B810A3B3uLL);
  v4[2] = 0;
  v4[3] = 0;
  *v4 = &unk_4658;
  v4[1] = 0;
  v5 = CFUUIDGetConstantUUIDWithBytes(0, 0xFBu, 0x86u, 0x41u, 0x6Du, 0x61u, 0x64u, 0x20u, 0x70u, 0x72u, 0x6Fu, 0x70u, 0x73u, 0x5Cu, 0x21u, 0x6Eu, 0xC0u);
  v4[1] = CFRetain(v5);
  v6 = CFUUIDGetConstantUUIDWithBytes(0, 0xFBu, 0x86u, 0x41u, 0x6Du, 0x61u, 0x64u, 0x20u, 0x70u, 0x72u, 0x6Fu, 0x70u, 0x73u, 0x5Cu, 0x21u, 0x6Eu, 0xC0u);
  CFPlugInAddInstanceForFactory(v6);
  *(v4 + 4) = 1;
  return v4;
}

uint64_t sub_CA4(uint64_t a1, CFUUIDBytes a2, void *a3)
{
  v5 = CFUUIDCreateFromUUIDBytes(0, a2);
  v6 = CFUUIDGetConstantUUIDWithBytes(0, 0xFDu, 0x86u, 0x41u, 0x6Du, 0x61u, 0x64u, 0x20u, 0x70u, 0x72u, 0x6Fu, 0x70u, 0x73u, 0x5Cu, 0x21u, 0x6Eu, 0xC0u);
  if (CFEqual(v5, v6) || (v7 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u), CFEqual(v5, v7)))
  {
    (*(*a1 + 16))(a1);
    v8 = 0;
  }

  else
  {
    a1 = 0;
    v8 = 2147483652;
  }

  *a3 = a1;
  CFRelease(v5);
  return v8;
}

uint64_t sub_DB4(uint64_t a1)
{
  v1 = (*(a1 + 16) + 1);
  *(a1 + 16) = v1;
  return v1;
}

uint64_t sub_DC8(void *a1)
{
  v1 = *(a1 + 4);
  v2 = (v1 - 1);
  *(a1 + 4) = v2;
  if (v1 == 1)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      CFPlugInRemoveInstanceForFactory(*(a1 + 1));
      CFRelease(v4);
    }

    free(a1);
  }

  return v2;
}

void sub_E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  qword_4690 = 0;
  v9 = dispatch_queue_create("USBEthernetSharing", 0);
  qword_4690 = v9;
  if (v9)
  {

    dispatch_async(v9, &stru_43D8);
  }

  else
  {

    sub_858(0, "USBEthernetSharing dispatch_queue_create failed", v10, v11, v12, v13, v14, v15, a9);
  }
}

void sub_E9C(id a1)
{
  if (!qword_46B0)
  {
    v47 = SCPreferencesCreate(kCFAllocatorDefault, @"com.apple.sc.networking.usbethernet", @"com.apple.USBEthernet.logging.plist");
    qword_46B0 = v47;
    if (!v47)
    {
      v55 = SCError();
      v70 = SCErrorString(v55);
      v46 = "SCPreferencesCreate() failed: %s";
      goto LABEL_36;
    }

    if (SCPreferencesSetCallback(v47, sub_1330, 0))
    {
      if (SCPreferencesSetDispatchQueue(qword_46B0, qword_4690))
      {
        sub_1330(qword_46B0, 3, v48, v49, v50, v51, v52, v53);
        goto LABEL_2;
      }

      v63 = SCError();
      v72 = SCErrorString(v63);
      sub_858(0, "SCPreferencesSetDispatchQueue() failed: %s", v64, v65, v66, v67, v68, v69, v72);
    }

    else
    {
      v56 = SCError();
      v71 = SCErrorString(v56);
      sub_858(0, "SCPreferencesSetCallback() failed: %s", v57, v58, v59, v60, v61, v62, v71);
    }

    CFRelease(qword_46B0);
    qword_46B0 = 0;
    return;
  }

LABEL_2:
  if (_NETRBClientCreate())
  {
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    *cStr = 0u;
    v74 = 0u;
    if (_NETRBClientGetDynamicStoreKey())
    {
      v13 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
      qword_46A0 = v13;
      if (v13)
      {
        NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(kCFAllocatorDefault, kSCDynamicStoreDomainSetup, kSCEntNetIPv4);
        qword_46A8 = NetworkGlobalEntity;
        if (!NetworkGlobalEntity)
        {
          v46 = "SCDynamicStoreKeyCreateNetworkGlobalEntity failed";
LABEL_37:
          sub_858(NetworkGlobalEntity, v46, v15, v16, v17, v18, v19, v20, v70);
          return;
        }

        _NETRBClientDestroy();
        v70 = getprogname();
        v21 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s-%s");
        v22 = SCDynamicStoreCreate(kCFAllocatorDefault, v21, sub_1414, 0);
        qword_4688 = v22;
        if (v21)
        {
          CFRelease(v21);
          v22 = qword_4688;
        }

        if (v22)
        {
          SCDynamicStoreSetDispatchQueue(v22, qword_4690);
          Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          qword_46B8 = Mutable;
          if (Mutable)
          {
            CFArrayAppendValue(Mutable, qword_46A0);
            CFArrayAppendValue(qword_46B8, qword_46A8);
            v24 = SCDynamicStoreSetNotificationKeys(qword_4688, qword_46B8, 0);
            sub_1414(v24, qword_46B8);
          }
        }

        v25 = kLockdownNotificationTrustedHostAttached;
        v26 = sub_1750(kLockdownNotificationTrustedHostAttached);
        if (notify_register_dispatch(v26, &dword_56D4, qword_4690, &stru_4438) || (v25 = kLockdownNotificationHostAttached, v27 = sub_1750(kLockdownNotificationHostAttached), notify_register_dispatch(v27, &dword_56D4, qword_4690, &stru_4478)) || (v25 = kLockdownNotificationHostDetached, v28 = sub_1750(kLockdownNotificationHostDetached), v29 = notify_register_dispatch(v28, &dword_56D8, qword_4690, &stru_44B8), v29))
        {
          v37 = sub_1750(v25);
          sub_858(0, "Failed to setup notification for %s: %d", v38, v39, v40, v41, v42, v43, v37);
        }

        else
        {
          sub_21D4(v29, v30, v31, v32, v33, v34, v35, v36);
        }

        v44 = IOMasterPort(0, &dword_56DC);
        if (v44 || !dword_56DC)
        {
          v70 = v44;
          v46 = "Couldn't create a master IOKit Port(%08x)";
        }

        else
        {
          qword_56E0 = IONotificationPortCreate(dword_56DC);
          IONotificationPortSetDispatchQueue(qword_56E0, qword_4690);
          NetworkGlobalEntity = IOServiceMatching("IOEthernetInterface");
          if (!NetworkGlobalEntity)
          {
            v46 = "Can't create a service matching dictionary";
            goto LABEL_37;
          }

          v45 = IOServiceAddMatchingNotification(qword_56E0, "IOServiceMatched", NetworkGlobalEntity, sub_22DC, 0, &dword_56E8);
          if (!v45)
          {
            sub_22DC(0, dword_56E8);
            return;
          }

          v70 = v45;
          v46 = "IOServiceAddMatchingNotification failed: 0x%x";
        }

LABEL_36:
        LOBYTE(NetworkGlobalEntity) = 0;
        goto LABEL_37;
      }

      v54 = "CFStringCreateWithCString failed";
    }

    else
    {
      v54 = "_NETRBClientGetDynamicStoreKey failed";
      LOBYTE(v13) = 0;
    }

    sub_858(v13, v54, v7, v8, v9, v10, v11, v12, v70);
    _NETRBClientDestroy();
    return;
  }

  sub_858(0, "_NETRBClientCreate failed", v1, v2, v3, v4, v5, v6, v90);
}

void sub_1330(const __SCPreferences *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a2 & 2) != 0)
  {
    sub_858(1u, "logging preferences changed", a3, a4, a5, a6, a7, a8, v19);
    Value = SCPreferencesGetValue(a1, @"USBEthernetLogging");
    if (Value)
    {
      TypeID = CFBooleanGetTypeID();
      if (CFGetTypeID(Value) == TypeID)
      {
        LODWORD(Value) = CFBooleanGetValue(Value);
      }

      else
      {
        LODWORD(Value) = 0;
      }
    }

    if (usbethVerboseLogging != Value)
    {
      usbethVerboseLogging = Value;
      sub_8EC();
      v18 = "enabled";
      if (!Value)
      {
        v18 = "disabled";
      }

      sub_858(1u, "verbose mode %s", v12, v13, v14, v15, v16, v17, v18);
    }

    SCPreferencesSynchronize(a1);
  }
}

void sub_1414(int a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v4 = Count;
    v5 = 0;
    v6 = "key=%s";
    v7 = &_NETRBClientAddHost_ptr;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
      v9 = sub_1750(ValueAtIndex);
      sub_858(2u, v6, v10, v11, v12, v13, v14, v15, v9);
      if (CFEqual(ValueAtIndex, qword_46A0))
      {
        byte_56C4 = 0;
        v16 = SCDynamicStoreCopyValue(qword_4688, qword_46A0);
        if (v16)
        {
          v23 = v16;
          v24 = CFGetTypeID(v16);
          if (v24 == CFDictionaryGetTypeID())
          {
            v25 = v6;
            Value = CFDictionaryGetValue(v23, @"State");
            v71 = CFDictionaryGetValue(v23, @"Reason");
            valuePtr = 0;
            if (Value)
            {
              v27 = v7;
              v28 = CFGetTypeID(Value);
              v29 = v28 == CFNumberGetTypeID();
              v7 = v27;
              if (v29)
              {
                if (CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr + 4))
                {
                  if (dword_4680 == 1022 && HIDWORD(valuePtr) == 1023)
                  {
                    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                    if (Mutable)
                    {
                      v37 = Mutable;
                      CFDictionaryAddValue(Mutable, @"IgnoreUntrustedList", kCFBooleanTrue);
                      sub_858(2u, "requesting/querying host pairing, ignore untrusted list", v38, v39, v40, v41, v42, v43, v70);
                      is_host_trusted = lockdown_is_host_trusted();
                      CFRelease(v37);
                      if (byte_56C5 != is_host_trusted)
                      {
                        byte_56C5 = is_host_trusted;
                        v51 = "not trusted";
                        if (is_host_trusted)
                        {
                          v51 = "trusted";
                        }

                        sub_858(1u, "Host is %s", v45, v46, v47, v48, v49, v50, v51);
                      }

                      v7 = v27;
                    }

                    else
                    {
                      sub_858(0, "CFDictionaryCreateMutable() failed", v31, v32, v33, v34, v35, v36, v70);
                    }
                  }

                  if (v71)
                  {
                    v60 = CFGetTypeID(v71);
                    if (v60 == CFNumberGetTypeID() && CFNumberGetValue(v71, kCFNumberSInt32Type, &valuePtr) && HIDWORD(valuePtr) == 1023 && ((valuePtr & 0xFFFFFFFD) == 0 || dword_4680 == 1022))
                    {
                      byte_56C4 = 1;
                    }
                  }

                  dword_4680 = HIDWORD(valuePtr);
                }
              }
            }

            v6 = v25;
          }

          CFRelease(v23);
        }

        v61 = "TRUE";
        if (!byte_56C4)
        {
          v61 = "FALSE";
        }

        v62 = sub_858(2u, "enabled=%s", v17, v18, v19, v20, v21, v22, v61);
        sub_18C8(v62, v63, v64, v65, v66, v67, v68, v69);
      }

      else
      {
        v52 = CFEqual(ValueAtIndex, v7[213]);
        if (v52)
        {
          sub_1F70(v52, v53, v54, v55, v56, v57, v58, v59, v70);
        }
      }

      ++v5;
    }

    while (v4 != v5);
  }
}

const char *sub_1750(const __CFString *a1)
{
  if (!a1)
  {
    return "<NULL>";
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFStringGetTypeID())
  {
    v7 = CFGetTypeID(a1);
    if (v7 == CFDataGetTypeID())
    {
      v8 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, a1, 0x8000100u);
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v8 = CFCopyDescription(a1);
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    v9 = v8;
    if (CFStringGetCString(v8, &byte_46C0[1024 * dword_56C0], 1024, 0x8000100u))
    {
      CStringPtr = &byte_46C0[1024 * dword_56C0];
      if (dword_56C0 <= 2)
      {
        v10 = dword_56C0 + 1;
      }

      else
      {
        v10 = 0;
      }

      dword_56C0 = v10;
    }

    else
    {
      CStringPtr = 0;
    }

    CFRelease(v9);
    goto LABEL_24;
  }

  FastestEncoding = CFStringGetFastestEncoding(a1);
  if (!FastestEncoding || FastestEncoding == 134217984 || FastestEncoding == 1536)
  {
    CStringPtr = CFStringGetCStringPtr(a1, FastestEncoding);
    if (CStringPtr)
    {
      goto LABEL_24;
    }
  }

  if (CFStringGetCString(a1, &byte_46C0[1024 * dword_56C0], 1024, 0x8000100u))
  {
    CStringPtr = &byte_46C0[1024 * dword_56C0];
    if (dword_56C0 <= 2)
    {
      v5 = dword_56C0 + 1;
    }

    else
    {
      v5 = 0;
    }

    dword_56C0 = v5;
    goto LABEL_24;
  }

LABEL_15:
  CStringPtr = 0;
LABEL_24:
  if (CStringPtr)
  {
    return CStringPtr;
  }

  else
  {
    return "???";
  }
}

void sub_18C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1BC0(a1, a2, a3, a4, a5, a6, a7, a8);
  v8 = qword_56C8;
  if (!qword_56C8)
  {
    return;
  }

  while (1)
  {
    v9 = sub_1750(*(v8 + 24));
    sub_858(2u, "%s, attached %s, sharing enabled %s, MIS state %d, sharing trigger %s, trusted %s", v10, v11, v12, v13, v14, v15, v9);
    if (*(v8 + 32) != 1 || (byte_56C4 & 1) == 0 && (dword_4680 != 1023 || *(v8 + 33) != 1) || byte_56C5 != 1)
    {
      sub_1D78(v8, v16, v17, v18, v19, v20, v21, v22, v48);
      goto LABEL_17;
    }

    if (*(v8 + 33) == 1)
    {
      *(v8 + 33) = 0;
    }

    if (*(v8 + 34))
    {
      goto LABEL_17;
    }

    *buffer = 0;
    v52 = 0;
    v23 = sub_1750(*(v8 + 24));
    sub_858(2u, "enabling sharing on %s", v24, v25, v26, v27, v28, v29, v23);
    LODWORD(v30) = CFStringGetCString(*(v8 + 24), buffer, 16, 0x8000100u);
    if (!v30)
    {
      v46 = "CFStringGetCString failed";
LABEL_21:
      sub_858(v30, v46, v31, v32, v33, v34, v35, v36, v49);
      return;
    }

    v30 = _NETRBClientCreate();
    *(v8 + 40) = v30;
    if (!v30)
    {
      v46 = "_NETRBClientCreate failed";
      goto LABEL_21;
    }

    sub_858(2u, "Created sharing handle", v31, v32, v33, v34, v35, v36, v49);
    if ((_NETRBClientIsAllowedMoreHost() & 1) == 0)
    {
      v47 = "_NETRBClientIsAllowedMoreHost claims maximum tethered host limit has been reached";
      goto LABEL_25;
    }

    v43 = xpc_dictionary_create(0, 0, 0);
    if (!v43)
    {
      v47 = "xpc_dictionary_create failed";
      goto LABEL_26;
    }

    v44 = v43;
    xpc_dictionary_set_uint64(v43, netrbClientDeviceType, 5uLL);
    xpc_dictionary_set_string(v44, netrbClientInterfaceName, buffer);
    started = _NETRBClientStartService();
    xpc_release(v44);
    if ((started & 1) == 0)
    {
      break;
    }

    *(v8 + 34) = 1;
LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      return;
    }
  }

  v50 = *(v8 + 40);
  v47 = "_NETRBClientStartService(%p, %s) failed";
LABEL_25:
  LOBYTE(v43) = 0;
LABEL_26:
  sub_858(v43, v47, v37, v38, v39, v40, v41, v42, v50);
  _NETRBClientDestroy();
  *(v8 + 40) = 0;
}

void sub_1BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (dword_4680 == 1023) | byte_56D1 & 1;
  if (byte_56D0 != v8)
  {
    v9 = "disabling";
    if ((dword_4680 == 1023) | byte_56D1 & 1)
    {
      v9 = "enabling";
    }

    sub_858(2u, "%s usb ethernet configuration", a3, a4, a5, a6, a7, a8, v9);
    if (v8)
    {
      v10 = IOUSBDeviceConfigurationAddInterface("AppleUSBEthernet");
      v17 = "IOUSBDeviceConfigurationAddInterface(kIOUSBDeviceInterfaceTypeEthernet) %s";
    }

    else
    {
      v10 = IOUSBDeviceConfigurationRemoveInterface("AppleUSBEthernet");
      v17 = "IOUSBDeviceConfigurationRemoveInterface(kIOUSBDeviceInterfaceTypeEthernet) %s";
    }

    v18 = "failed";
    if (v10)
    {
      v18 = "succeeded";
    }

    sub_858(1u, v17, v11, v12, v13, v14, v15, v16, v18);
    byte_56D0 = v8;
  }
}

uint64_t sub_1C90(uint64_t a1, int a2, xpc_object_t object)
{
  if (a2 == 1001)
  {
    if (object)
    {
      v4 = *(a1 + 32);
      if (xpc_get_type(object) == &_xpc_type_dictionary)
      {
        uint64 = xpc_dictionary_get_uint64(object, netrbClientNotificationKey);
        v6 = sub_1750(*(v4 + 24));
        if (uint64 == 5002)
        {
          sub_858(2u, "Started sharing over %s", v7, v8, v9, v10, v11, v12, v6);
          if ((_NETRBClientAddHost() & 1) == 0)
          {
            sub_858(0, "_NETRBClientAddHost(%p) failed", v13, v14, v15, v16, v17, v18, *(v4 + 40));
          }

          sub_1E24(v4);
        }

        else
        {
          sub_858(0, "Sharing over %s failed", v7, v8, v9, v10, v11, v12, v6);
          sub_1D78(v4, v19, v20, v21, v22, v23, v24, v25, v27);
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1D78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(result + 34) == 1)
  {
    v10 = result;
    v11 = sub_1750(*(result + 24));
    sub_858(2u, "disabling sharing on %s", v12, v13, v14, v15, v16, v17, v11);
    *(v10 + 34) = 0;
    sub_1E24(v10);
    _NETRBClientStopService();
    v18 = sub_1750(*(v10 + 24));
    sub_858(2u, "Stopped sharing %s", v19, v20, v21, v22, v23, v24, v18);
    _NETRBClientDestroy();
    *(v10 + 40) = 0;

    return sub_858(2u, "Destroyed sharing session", v25, v26, v27, v28, v29, v30, a9);
  }

  return result;
}

uint64_t sub_1E24(uint64_t result)
{
  v1 = result;
  if (*(result + 32) == 1)
  {
    v2 = *(result + 34) | byte_56D1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 & 1;
  if (*(result + 35) != v3)
  {
    if (v2)
    {
      v4 = "enabling";
    }

    else
    {
      v4 = "disabling";
    }

    sub_1750(*(result + 24));
    sub_858(2u, "%s link on %s", v5, v6, v7, v8, v9, v10, v4);
    valuePtr = v3;
    v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
    if (v11)
    {
      v12 = v11;
      v13 = IORegistryEntrySetCFProperty(*(v1 + 8), @"LinkStatus", v11);
      CFRelease(v12);
      if (!v13)
      {
        *(v1 + 35) = v3;
        v22 = sub_1750(*(v1 + 24));
        v20 = "Updated link status on %s to %s";
        v21 = 2;
        return sub_858(v21, v20, v14, v15, v16, v17, v18, v19, v22);
      }

      v22 = sub_1750(*(v1 + 24));
      v20 = "IORegistryEntrySetCFProperty for %s failed: 0x%x";
    }

    else
    {
      v22 = sub_1750(*(v1 + 24));
      v20 = "failed to update link state for %s";
    }

    v21 = 0;
    return sub_858(v21, v20, v14, v15, v16, v17, v18, v19, v22);
  }

  return result;
}

void sub_1F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = qword_56C8;
  if (!qword_56C8)
  {
    return;
  }

  do
  {
    *(v9 + 36) = 0;
    v9 = *v9;
  }

  while (v9);
  v10 = open("/Library/Preferences/SystemConfiguration/rtether.plist", 0, a3, a4, a5, a6, a7, a8);
  if (v10 == -1)
  {
    v43 = sub_858(2u, "Missing rtether.plist", v11, v12, v13, v14, v15, v16, v52);
    byte_56D1 = 0;
LABEL_23:

    sub_1BC0(v43, v44, v45, v46, v47, v48, v49, v50);
    return;
  }

  v17 = v10;
  sub_858(2u, "Found rtether.plist", v11, v12, v13, v14, v15, v16, v52);
  close(v17);
  byte_56D1 = 0;
  v18 = usbeth_copy_active_services_entity(kSCEntNetInterface);
  if (v18)
  {
    v25 = v18;
    Count = CFArrayGetCount(v18);
    if (Count >= 1)
    {
      v27 = Count;
      for (i = 0; i != v27; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v25, i);
        if (ValueAtIndex)
        {
          v30 = ValueAtIndex;
          v31 = CFGetTypeID(ValueAtIndex);
          if (v31 == CFDictionaryGetTypeID())
          {
            Value = CFDictionaryGetValue(v30, kSCPropNetInterfaceDeviceName);
            if (Value)
            {
              v33 = Value;
              v34 = CFGetTypeID(Value);
              if (v34 == CFStringGetTypeID())
              {
                for (j = qword_56C8; j; j = *j)
                {
                  if (CFEqual(*(j + 24), v33))
                  {
                    v36 = sub_1750(*(j + 24));
                    sub_858(2u, "enabling reverse tether on %s", v37, v38, v39, v40, v41, v42, v36);
                    *(j + 36) = 1;
                  }
                }
              }
            }
          }
        }
      }
    }

    CFRelease(v25);
    for (k = qword_56C8; k; k = *k)
    {
      if (*(k + 36) == 1)
      {
        byte_56D1 = 1;
      }

      v43 = sub_1E24(k);
    }

    goto LABEL_23;
  }

  sub_858(2u, "couldn't copy active services", v19, v20, v21, v22, v23, v24, a9);
}

void sub_21A0(id a1, int a2)
{
  v8 = sub_858(2u, "trusted host attached", v2, v3, v4, v5, v6, v7, vars0);

  sub_21D4(v8, v9, v10, v11, v12, v13, v14, v15);
}

void sub_21D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_56C4 == 1)
  {
    sub_858(2u, "requesting/querying host pairing", a3, a4, a5, a6, a7, a8, v18);
    is_host_trusted = lockdown_is_host_trusted();
  }

  else
  {
    is_host_trusted = 0;
  }

  if (byte_56C5 != is_host_trusted)
  {
    byte_56C5 = is_host_trusted;
    v9 = "not trusted";
    if (is_host_trusted)
    {
      v9 = "trusted";
    }

    v10 = sub_858(2u, "Host is %s", a3, a4, a5, a6, a7, a8, v9);
    sub_18C8(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

void sub_22A8(id a1, int a2)
{
  v8 = sub_858(2u, "host is attached", v2, v3, v4, v5, v6, v7, vars0);

  sub_21D4(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_22DC(int a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v10 = result;
    do
    {
      sub_858(2u, "handling interface 0x%x", v4, v5, v6, v7, v8, v9, v10);
      parent = 0;
      ParentEntry = IORegistryEntryGetParentEntry(v10, "IOService", &parent);
      if (ParentEntry)
      {
        v12 = ParentEntry;
        IOObjectRelease(v10);
        v74 = v12;
        v19 = 0;
        v20 = "IORegistryEntryGetParentEntry failed: 0x%x";
      }

      else
      {
        if (!IOObjectConformsTo(parent, "AppleUSBEthernetDevice"))
        {
          IOObjectRelease(v10);
          IOObjectRelease(parent);
          goto LABEL_6;
        }

        v21 = IORegistryEntrySearchCFProperty(v10, "IOService", @"BSD Name", kCFAllocatorDefault, 0);
        if (v21)
        {
          v22 = v21;
          v23 = &qword_56C8;
          while (1)
          {
            v23 = *v23;
            if (!v23)
            {
              break;
            }

            if (IOObjectIsEqualTo(parent, *(v23 + 2)))
            {
              IOObjectRelease(v10);
              IOObjectRelease(parent);
              CFRelease(v22);
              goto LABEL_6;
            }
          }

          v24 = sub_1750(v22);
          sub_858(1u, "found matching device with bsd name %s", v25, v26, v27, v28, v29, v30, v24);
          v31 = malloc_type_malloc(0x30uLL, 0x10600409D779101uLL);
          if (v31)
          {
            v32 = v31;
            *(v31 + 7) = 0u;
            v31[11] = 0;
            *(v31 + 3) = 0u;
            v33 = parent;
            v31[2] = parent;
            v31[4] = v10;
            *(v31 + 3) = v22;
            *v31 = qword_56C8;
            qword_56C8 = v31;
            v34 = IOServiceAddInterestNotification(qword_56E0, v33, "IOGeneralInterest", sub_25FC, v31, v31 + 3);
            if (v34)
            {
              sub_858(0, "IOServiceAddInterestNotification failed: 0x%x", v35, v36, v37, v38, v39, v40, v34);
              sub_2678(v32);
            }

            else
            {
              valuePtr = 0;
              v41 = IORegistryEntrySearchCFProperty(v32[2], "IOService", @"HostAttached", kCFAllocatorDefault, 0);
              if (v41 && (v42 = v41, v43 = CFGetTypeID(v41), v43 == CFNumberGetTypeID()) && CFNumberGetValue(v42, kCFNumberSInt32Type, &valuePtr))
              {
                v44 = valuePtr == 0;
                *(v32 + 32) = valuePtr != 0;
                if (v44)
                {
                  v45 = "Detached";
                }

                else
                {
                  v45 = "Attached";
                }

                sub_1750(*(v32 + 3));
                v52 = sub_858(1u, "Host is %s on %s", v46, v47, v48, v49, v50, v51, v45);
              }

              else
              {
                v76 = sub_1750(*(v32 + 3));
                v52 = sub_858(0, "counldn't determine attached state for %s", v60, v61, v62, v63, v64, v65, v76);
              }

              sub_18C8(v52, v53, v54, v55, v56, v57, v58, v59);
              sub_1F70(v66, v67, v68, v69, v70, v71, v72, v73, v75);
            }

            goto LABEL_6;
          }

          IOObjectRelease(v10);
          IOObjectRelease(parent);
          CFRelease(v22);
          v19 = 0;
          v20 = "out of memory";
        }

        else
        {
          IOObjectRelease(v10);
          IOObjectRelease(parent);
          v19 = 1;
          v20 = "found matching device without bsd name";
        }
      }

      sub_858(v19, v20, v13, v14, v15, v16, v17, v18, v74);
LABEL_6:
      result = IOIteratorNext(iterator);
      v10 = result;
    }

    while (result);
  }

  return result;
}

void sub_25FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_2710;
  block[3] = &unk_44D8;
  v5 = a3;
  block[4] = a1;
  block[5] = a4;
  dispatch_async(qword_4690, block);
}

void sub_2678(uint64_t *a1)
{
  v2 = &qword_56C8;
  while (1)
  {
    v3 = v2;
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (v2 == a1)
    {
      *v3 = *a1;
      *a1 = 0;
      break;
    }
  }

  v4 = *(a1 + 3);
  if (v4)
  {
    IOObjectRelease(v4);
    *(a1 + 3) = 0;
  }

  v5 = *(a1 + 2);
  if (v5)
  {
    IOObjectRelease(v5);
    *(a1 + 2) = 0;
  }

  v6 = *(a1 + 4);
  if (v6)
  {
    IOObjectRelease(v6);
    *(a1 + 4) = 0;
  }

  v7 = a1[3];
  if (v7)
  {
    CFRelease(v7);
  }

  free(a1);
}

void sub_2710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a1 + 32);
  sub_858(2u, "Message: 0x%x, %p", a3, a4, a5, a6, a7, a8, *(a1 + 48));
  v17 = *(a1 + 48);
  if (v17 == -536870896)
  {
    v35 = sub_1750(*(v10 + 24));
    v42 = sub_858(2u, "kIOMessageServiceIsTerminated for %s", v36, v37, v38, v39, v40, v41, v35);
    *(v10 + 32) = 0;
    sub_18C8(v42, v43, v44, v45, v46, v47, v48, v49);
    sub_2678(v10);
  }

  else
  {
    if (v17 != -469794303)
    {
      return;
    }

    v18 = *(a1 + 40);
    *(v10 + 32) = v18 != 0;
    v19 = sub_858(2u, "kAppleUSBEthernet_Enabled: %p", v11, v12, v13, v14, v15, v16, v18);
    *(v10 + 33) = 1;
    sub_18C8(v19, v20, v21, v22, v23, v24, v25, v26);
  }

  sub_1F70(v27, v28, v29, v30, v31, v32, v33, v34, a9);
}

const char *IOUSBDeviceConfigurationAddInterface(const char *result)
{
  v1 = result;
  LODWORD(result) = dword_56EC;
  if (dword_56EC)
  {
    v3 = -1431655766;
  }

  else
  {
    bootstrap_look_up(bootstrap_port, "com.apple.SystemConfiguration.USBDeviceConfig", &dword_56EC);
    result = dword_56EC;
    v3 = -1431655766;
    if (!dword_56EC)
    {
      return result;
    }
  }

  if (usb_device_configuration_add_interface(result, v1, &v3))
  {
    v2 = 1;
  }

  else
  {
    v2 = v3 == 0;
  }

  return !v2;
}

const char *IOUSBDeviceConfigurationRemoveInterface(const char *result)
{
  v1 = result;
  LODWORD(result) = dword_56EC;
  if (dword_56EC)
  {
    v3 = -1431655766;
  }

  else
  {
    bootstrap_look_up(bootstrap_port, "com.apple.SystemConfiguration.USBDeviceConfig", &dword_56EC);
    result = dword_56EC;
    v3 = -1431655766;
    if (!dword_56EC)
    {
      return result;
    }
  }

  if (usb_device_configuration_remove_interface(result, v1, &v3))
  {
    v2 = 1;
  }

  else
  {
    v2 = v3 == 0;
  }

  return !v2;
}

uint64_t usb_device_configuration_add_interface(mach_port_t a1, const char *a2, _DWORD *a3)
{
  v17 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[14] = v5;
  v16[15] = v5;
  v16[12] = v5;
  v16[13] = v5;
  v16[10] = v5;
  v16[11] = v5;
  v16[8] = v5;
  v16[9] = v5;
  v16[6] = v5;
  v16[7] = v5;
  v16[4] = v5;
  v16[5] = v5;
  v16[2] = v5;
  v16[3] = v5;
  v16[0] = v5;
  v16[1] = v5;
  *&reply_port.msgh_bits = v5;
  *&reply_port.msgh_voucher_port = 0xAAAAAAAAAAAAAAAALL;
  v15 = NDR_record;
  if (off_43A8)
  {
    v6 = mig_strncpy_zerofill(v16 + 8, a2, 256);
  }

  else
  {
    v6 = mig_strncpy(v16 + 8, a2, 256);
  }

  LODWORD(v16[0]) = 0;
  DWORD1(v16[0]) = v6;
  v7 = (v6 + 3) & 0xFFFFFFFC;
  v8 = mig_get_reply_port();
  reply_port.msgh_remote_port = a1;
  reply_port.msgh_local_port = v8;
  reply_port.msgh_bits = 5395;
  *&reply_port.msgh_voucher_port = 0x756200000000;
  if (off_43B0)
  {
    voucher_mach_msg_set(&reply_port);
    msgh_local_port = reply_port.msgh_local_port;
  }

  else
  {
    msgh_local_port = v8;
  }

  v10 = mach_msg(&reply_port, 3, v7 + 40, 0x30u, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (v10)
    {
      mig_dealloc_reply_port(reply_port.msgh_local_port);
      return v11;
    }

    if (reply_port.msgh_id == 71)
    {
      v11 = 4294966988;
    }

    else if (reply_port.msgh_id == 30150)
    {
      if ((reply_port.msgh_bits & 0x80000000) == 0)
      {
        if (reply_port.msgh_size == 40)
        {
          if (!reply_port.msgh_remote_port)
          {
            v11 = LODWORD(v16[0]);
            if (!LODWORD(v16[0]))
            {
              *a3 = DWORD1(v16[0]);
              return v11;
            }

            goto LABEL_27;
          }
        }

        else if (reply_port.msgh_size == 36)
        {
          if (reply_port.msgh_remote_port)
          {
            v12 = 1;
          }

          else
          {
            v12 = LODWORD(v16[0]) == 0;
          }

          if (v12)
          {
            v11 = 4294966996;
          }

          else
          {
            v11 = LODWORD(v16[0]);
          }

          goto LABEL_27;
        }
      }

      v11 = 4294966996;
    }

    else
    {
      v11 = 4294966995;
    }

LABEL_27:
    mach_msg_destroy(&reply_port);
    return v11;
  }

  mig_put_reply_port(reply_port.msgh_local_port);
  return v11;
}

uint64_t usb_device_configuration_remove_interface(mach_port_t a1, const char *a2, _DWORD *a3)
{
  v17 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[14] = v5;
  v16[15] = v5;
  v16[12] = v5;
  v16[13] = v5;
  v16[10] = v5;
  v16[11] = v5;
  v16[8] = v5;
  v16[9] = v5;
  v16[6] = v5;
  v16[7] = v5;
  v16[4] = v5;
  v16[5] = v5;
  v16[2] = v5;
  v16[3] = v5;
  v16[0] = v5;
  v16[1] = v5;
  *&reply_port.msgh_bits = v5;
  *&reply_port.msgh_voucher_port = 0xAAAAAAAAAAAAAAAALL;
  v15 = NDR_record;
  if (off_43A8)
  {
    v6 = mig_strncpy_zerofill(v16 + 8, a2, 256);
  }

  else
  {
    v6 = mig_strncpy(v16 + 8, a2, 256);
  }

  LODWORD(v16[0]) = 0;
  DWORD1(v16[0]) = v6;
  v7 = (v6 + 3) & 0xFFFFFFFC;
  v8 = mig_get_reply_port();
  reply_port.msgh_remote_port = a1;
  reply_port.msgh_local_port = v8;
  reply_port.msgh_bits = 5395;
  *&reply_port.msgh_voucher_port = 0x756300000000;
  if (off_43B0)
  {
    voucher_mach_msg_set(&reply_port);
    msgh_local_port = reply_port.msgh_local_port;
  }

  else
  {
    msgh_local_port = v8;
  }

  v10 = mach_msg(&reply_port, 3, v7 + 40, 0x30u, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (v10)
    {
      mig_dealloc_reply_port(reply_port.msgh_local_port);
      return v11;
    }

    if (reply_port.msgh_id == 71)
    {
      v11 = 4294966988;
    }

    else if (reply_port.msgh_id == 30151)
    {
      if ((reply_port.msgh_bits & 0x80000000) == 0)
      {
        if (reply_port.msgh_size == 40)
        {
          if (!reply_port.msgh_remote_port)
          {
            v11 = LODWORD(v16[0]);
            if (!LODWORD(v16[0]))
            {
              *a3 = DWORD1(v16[0]);
              return v11;
            }

            goto LABEL_27;
          }
        }

        else if (reply_port.msgh_size == 36)
        {
          if (reply_port.msgh_remote_port)
          {
            v12 = 1;
          }

          else
          {
            v12 = LODWORD(v16[0]) == 0;
          }

          if (v12)
          {
            v11 = 4294966996;
          }

          else
          {
            v11 = LODWORD(v16[0]);
          }

          goto LABEL_27;
        }
      }

      v11 = 4294966996;
    }

    else
    {
      v11 = 4294966995;
    }

LABEL_27:
    mach_msg_destroy(&reply_port);
    return v11;
  }

  mig_put_reply_port(reply_port.msgh_local_port);
  return v11;
}

void sub_2D18(BOOL *a1)
{
  *v2 = 0;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "USBEthernetSharing: Couldn't create os log object", v2, 2u);
  *a1 = qword_4698 != 0;
}