void set_configured_mtu(const __SCPreferences *a1, int a2, const __CFString *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v52 = 0u;
  v53 = 0u;
  HIDWORD(v51) = 0;
  v6 = SCNetworkSetCopyCurrent(a1);
  if (v6)
  {
    v7 = v6;
    SetID = SCNetworkSetGetSetID(v6);
    SetNetworkInterfaceEntity = SCPreferencesPathKeyCreateSetNetworkInterfaceEntity(0, SetID, a3, @"Ethernet");
    Value = SCPreferencesPathGetValue(a1, SetNetworkInterfaceEntity);
    CFRelease(SetNetworkInterfaceEntity);
    if (!Value)
    {
      goto LABEL_14;
    }

    v11 = CFDictionaryGetValue(Value, @"MTU");
    TypeID = CFNumberGetTypeID();
    if (!v11 || CFGetTypeID(v11) != TypeID || !CFNumberGetValue(v11, kCFNumberIntType, &v51 + 4))
    {
      goto LABEL_14;
    }

    v52 = 0u;
    v53 = 0u;
    _SC_cfstring_to_cstring(a3, &v52, 16, 0x8000100u);
    LODWORD(v53) = HIDWORD(v51);
    v13 = ioctl(a2, 0x80206934uLL, &v52);
    v14 = __log_SCNetworkConfiguration();
    if (v13 < 0)
    {
      v15 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v14, v15))
      {
        v38 = _os_log_pack_size();
        v22 = &v50 - ((MEMORY[0x1EEE9AC00](v38, v39, v40, v41, v42, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
        v44 = __error();
        v45 = _os_log_pack_fill(v22, v38, *v44, &dword_1AD2AD000, "%s: %s set mtu %d failed, %s (%d)", v50, v51, v52, *(&v52 + 1), v53);
        v46 = HIDWORD(v51);
        v47 = __error();
        v48 = strerror(*v47);
        v49 = *__error();
        *v45 = 136316162;
        *(v45 + 4) = "BridgeConfiguration";
        *(v45 + 12) = 2080;
        *(v45 + 14) = &v52;
        *(v45 + 22) = 1024;
        *(v45 + 24) = v46;
        *(v45 + 28) = 2080;
        *(v45 + 30) = v48;
        *(v45 + 38) = 1024;
        *(v45 + 40) = v49;
        v26 = 3;
        goto LABEL_13;
      }
    }

    else
    {
      v15 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v14, v15))
      {
        v16 = _os_log_pack_size();
        v22 = &v50 - ((MEMORY[0x1EEE9AC00](v16, v17, v18, v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
        v23 = __error();
        v24 = _os_log_pack_fill(v22, v16, *v23, &dword_1AD2AD000, "%s: %s set MTU %d", v50, v51, v52);
        v25 = HIDWORD(v51);
        *v24 = 136315650;
        *(v24 + 4) = "BridgeConfiguration";
        *(v24 + 12) = 2080;
        *(v24 + 14) = &v52;
        *(v24 + 22) = 1024;
        *(v24 + 24) = v25;
        v26 = 5;
LABEL_13:
        __SC_log_send(v26, v14, v15, v22);
      }
    }

LABEL_14:
    CFRelease(v7);
    return;
  }

  v27 = __log_SCNetworkConfiguration();
  v28 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v27, v28))
  {
    v29 = _os_log_pack_size();
    v35 = &v50 - ((MEMORY[0x1EEE9AC00](v29, v30, v31, v32, v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = __error();
    v37 = _os_log_pack_fill(v35, v29, *v36, &dword_1AD2AD000, "%s: no current set", v50);
    *v37 = 136315138;
    *(v37 + 4) = "set_configured_mtu";
    __SC_log_send(5, v27, v28, v35);
  }
}

uint64_t SCNSManagerCreate(uint64_t a1)
{

  return __SCNSManagerCreateCommon(a1, 0, 0);
}

uint64_t __SCNSManagerCreateCommon(uint64_t a1, const AuthorizationOpaqueRef *a2, int a3)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v5 = CFStringCreateWithFormat(0, 0, @"SCNSManager(%@)", a1);
  if (a3)
  {
    v6 = SCPreferencesCreateWithAuthorization(0, v5, 0, a2);
  }

  else
  {
    v6 = SCPreferencesCreate(0, v5, 0);
  }

  v7 = v6;
  CFRelease(v5);
  if (!v7)
  {
    v10 = _SC_LOG_DEFAULT();
    v11 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v10, v11))
    {
      v12 = _os_log_pack_size();
      v18 = v32 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = __error();
      v20 = _os_log_pack_fill(v18, v12, *v19, &dword_1AD2AD000, "SCPreferencesCreate failed, %s", v32[0]);
      v21 = SCError();
      v22 = SCErrorString(v21);
      *v20 = 136315138;
      *(v20 + 4) = v22;
LABEL_13:
      __SC_log_send(5, v10, v11, v18);
    }

    return 0;
  }

  if (__SCNetworkSettingsInitialize_initialized != -1)
  {
    __SCNSManagerCreateCommon_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    CFRelease(v7);
    v10 = _SC_LOG_DEFAULT();
    v11 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v10, v11))
    {
      v23 = _os_log_pack_size();
      v18 = v32 - ((MEMORY[0x1EEE9AC00](v23, v24, v25, v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
      v29 = __error();
      v30 = _os_log_pack_fill(v18, v23, *v29, &dword_1AD2AD000, "%s: failed to allocate manager", v32[0]);
      *v30 = 136315138;
      *(v30 + 4) = "__SCNSManagerCreateCommon";
      goto LABEL_13;
    }

    return 0;
  }

  v9 = Instance;
  CFRetain(v7);
  *(v9 + 16) = v7;
  CFRelease(v7);
  return v9;
}

uint64_t SCNSManagerCreateWithAuthorization(uint64_t a1, const AuthorizationOpaqueRef *a2)
{

  return __SCNSManagerCreateCommon(a1, a2, 1);
}

void SCNSManagerRefresh(uint64_t a1)
{
  v1 = *(a1 + 16);

  SCPreferencesSynchronize(v1);
}

void SCNSManagerRemoveService(uint64_t a1, void *value)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    CFSetRemoveValue(v4, value);
  }

  Mutable = *(a1 + 56);
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
    *(a1 + 56) = Mutable;
  }

  CFSetAddValue(Mutable, value);
}

uint64_t SCNSManagerApplyChanges(SCPreferencesRef *a1)
{
  v68 = *MEMORY[0x1E69E9840];
  v2 = a1[6];
  if (!v2 || !CFSetGetCount(v2))
  {
    v3 = a1[7];
    if (!v3 || !CFSetGetCount(v3))
    {
      v5 = _SC_LOG_DEFAULT();
      v6 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v5, v6))
      {
        v7 = _os_log_pack_size();
        v13 = &v67 - ((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
        v14 = __error();
        v15 = _os_log_pack_fill(v13, v7, *v14, &dword_1AD2AD000, "%s: no changes", v67);
        *v15 = 136315138;
        *(v15 + 4) = "SCNSManagerApplyChanges";
        __SC_log_send(5, v5, v6, v13);
      }

      v16 = 1;
      goto LABEL_35;
    }
  }

  v4 = 10;
  while (1)
  {
    if (SCPreferencesLock(a1[2], 1u))
    {
      v17 = a1[7];
      if (v17)
      {
        if (CFSetGetCount(v17))
        {
          BYTE6(v67) = 0;
          CFSetApplyFunction(a1[7], managerRemove, &v67 + 6);
          if (BYTE6(v67))
          {
            goto LABEL_33;
          }
        }
      }

      v18 = a1[6];
      if (v18)
      {
        if (CFSetGetCount(v18))
        {
          HIBYTE(v67) = 0;
          CFSetApplyFunction(a1[6], managerChange, &v67 + 7);
          if (HIBYTE(v67))
          {
            goto LABEL_33;
          }
        }
      }

      if (SCPreferencesCommitChanges(a1[2]))
      {
        if (SCPreferencesApplyChanges(a1[2]))
        {
          v16 = 1;
LABEL_34:
          SCPreferencesUnlock(a1[2]);
          goto LABEL_35;
        }

        v43 = _SC_LOG_DEFAULT();
        v44 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v43, v44))
        {
          v54 = _os_log_pack_size();
          v51 = &v67 - ((MEMORY[0x1EEE9AC00](v54, v55, v56, v57, v58, v59) + 15) & 0xFFFFFFFFFFFFFFF0);
          v60 = *__error();
          v53 = _os_log_pack_fill(v51, v54, v60, &dword_1AD2AD000, "%s: SCPreferencesApplyChanges failed, %s");
          goto LABEL_32;
        }
      }

      else
      {
        v43 = _SC_LOG_DEFAULT();
        v44 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v43, v44))
        {
          v45 = _os_log_pack_size();
          v51 = &v67 - ((MEMORY[0x1EEE9AC00](v45, v46, v47, v48, v49, v50) + 15) & 0xFFFFFFFFFFFFFFF0);
          v52 = *__error();
          v53 = _os_log_pack_fill(v51, v45, v52, &dword_1AD2AD000, "%s: SCPreferencesCommitChanges failed, %s");
LABEL_32:
          v61 = v53;
          v62 = SCError();
          v63 = SCErrorString(v62);
          *v61 = 136315394;
          *(v61 + 4) = "SCNSManagerApplyChanges";
          *(v61 + 12) = 2080;
          *(v61 + 14) = v63;
          __SC_log_send(5, v43, v44, v51);
        }
      }

LABEL_33:
      v16 = 0;
      goto LABEL_34;
    }

    if (SCError() != 3005)
    {
      break;
    }

    SCPreferencesSynchronize(a1[2]);
    if (!--v4)
    {
      goto LABEL_24;
    }
  }

  v19 = _SC_LOG_DEFAULT();
  v20 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v19, v20))
  {
    v21 = _os_log_pack_size();
    v27 = &v67 - ((MEMORY[0x1EEE9AC00](v21, v22, v23, v24, v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = __error();
    v29 = _os_log_pack_fill(v27, v21, *v28, &dword_1AD2AD000, "%s: failed to get lock, %s", v67, v68);
    v30 = SCError();
    v31 = SCErrorString(v30);
    *v29 = 136315394;
    *(v29 + 4) = "SCNSManagerApplyChanges";
    *(v29 + 12) = 2080;
    *(v29 + 14) = v31;
    __SC_log_send(5, v19, v20, v27);
  }

LABEL_24:
  v32 = _SC_LOG_DEFAULT();
  v33 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v32, v33))
  {
    v34 = _os_log_pack_size();
    v40 = &v67 - ((MEMORY[0x1EEE9AC00](v34, v35, v36, v37, v38, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = __error();
    v42 = _os_log_pack_fill(v40, v34, *v41, &dword_1AD2AD000, "%s: can't acquire lock, giving up", v67);
    *v42 = 136315138;
    *(v42 + 4) = "SCNSManagerApplyChanges";
    __SC_log_send(5, v32, v33, v40);
  }

  v16 = 0;
LABEL_35:
  v64 = a1[6];
  if (v64)
  {
    CFRelease(v64);
    a1[6] = 0;
  }

  v65 = a1[7];
  if (v65)
  {
    CFRelease(v65);
    a1[7] = 0;
  }

  return v16;
}

void *SCNSManagerCopyService(const void **a1, const void *a2, const __CFString *a3, const __CFString *a4)
{
  if (!a3 || a4)
  {

    return __SCNSManagerCopyService(a1, a2, a3, a4, 0);
  }

  else
  {
    _SCErrorSet(1002);
    return 0;
  }
}

void *__SCNSManagerCopyService(const void **a1, const void *a2, const __CFString *a3, const __CFString *a4, int a5)
{
  v9 = 0;
  v33[1] = *MEMORY[0x1E69E9840];
  v10 = 1;
  if (a3 && a4)
  {
    v12 = SCNetworkCategoryCreate(a1[2], a3);
    v13 = SCNetworkCategoryCopyServices(v12, a4);
    if (v13)
    {
      v14 = v13;
      v9 = copy_service_in_list(v13, a2);
      CFRelease(v14);
      if (!v12)
      {
LABEL_6:
        v10 = a5 != 0;
        goto LABEL_7;
      }
    }

    else
    {
      v9 = 0;
      if (!v12)
      {
        goto LABEL_6;
      }
    }

    CFRelease(v12);
    goto LABEL_6;
  }

LABEL_7:
  SetID = 0;
  if (!v9 && v10)
  {
    v16 = SCNetworkSetCopyCurrent(a1[2]);
    if (!v16)
    {
      v19 = _SC_LOG_DEFAULT();
      v20 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v19, v20))
      {
        v21 = _os_log_pack_size();
        v27 = v33 - ((MEMORY[0x1EEE9AC00](v21, v22, v23, v24, v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
        v28 = __error();
        v29 = _os_log_pack_fill(v27, v21, *v28, &dword_1AD2AD000, "%s: No current set\n", v33[0]);
        *v29 = 136315138;
        *(v29 + 4) = "__SCNSManagerCopyService";
        __SC_log_send(5, v19, v20, v27);
      }

      SetID = 0;
LABEL_28:
      _SCErrorSet(1004);
      v31 = 0;
      if (!SetID)
      {
        return v31;
      }

      goto LABEL_26;
    }

    v17 = v16;
    v18 = SCNetworkSetCopyServices(v16);
    SetID = v18;
    if (v18)
    {
      v9 = copy_service_in_list(v18, a2);
      CFRelease(SetID);
      if (v9)
      {
        SetID = SCNetworkSetGetSetID(v17);
        CFRetain(SetID);
      }

      else
      {
        SetID = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    CFRelease(v17);
  }

  if (!v9)
  {
    goto LABEL_28;
  }

  v30 = __SCNSServiceCreate(a1, a3, a4, a2, v9);
  v31 = v30;
  if (SetID && v30)
  {
    v30[5] = SetID;
    CFRetain(SetID);
  }

  CFRelease(v9);
  if (SetID)
  {
LABEL_26:
    CFRelease(SetID);
  }

  return v31;
}

const __CFString *SCNSManagerCreateService(SCPreferencesRef *a1, const void *a2, const __CFString *a3, const __CFString *a4)
{
  v4 = a4;
  v24[1] = *MEMORY[0x1E69E9840];
  if (a3 && !a4)
  {
    _SCErrorSet(1002);
    return v4;
  }

  if (a3)
  {
    v7 = __SCNSServiceCreate(a1, a3, a4, a2, 0);
    SetID = 0;
    v4 = 0;
    if (!v7)
    {
      return v4;
    }

    goto LABEL_6;
  }

  v9 = SCNetworkSetCopyCurrent(a1[2]);
  if (v9)
  {
    v10 = v9;
    SetID = SCNetworkSetGetSetID(v9);
    CFRetain(SetID);
    CFRelease(v10);
    v11 = __SCNSServiceCreate(a1, 0, v4, a2, 0);
    if (!v11)
    {
      v4 = 0;
      if (!SetID)
      {
        return v4;
      }

      goto LABEL_7;
    }

    v7 = v11;
    if (SetID)
    {
      CFRetain(SetID);
      v7[1].info = SetID;
    }

LABEL_6:
    __SCNSManagerServiceChanged(a1, v7);
    v4 = v7;
    if (!SetID)
    {
      return v4;
    }

LABEL_7:
    CFRelease(SetID);
    return v4;
  }

  v12 = _SC_LOG_DEFAULT();
  v13 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v12, v13))
  {
    v14 = _os_log_pack_size();
    v20 = v24 - ((MEMORY[0x1EEE9AC00](v14, v15, v16, v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = __error();
    v22 = _os_log_pack_fill(v20, v14, *v21, &dword_1AD2AD000, "%s: No current set\n", v24[0]);
    *v22 = 136315138;
    *(v22 + 4) = "SCNSManagerCreateService";
    __SC_log_send(5, v12, v13, v20);
  }

  return 0;
}

void *__SCNSServiceCreate(const void *a1, const __CFString *a2, const __CFString *a3, const void *a4, const void *a5)
{
  if (__SCNetworkSettingsInitialize_initialized != -1)
  {
    __SCNSManagerCreateCommon_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v11 = Instance;
  if (Instance)
  {
    *(Instance + 16) = a1;
    CFRetain(a1);
    if (a2 && a3)
    {
      v11[6] = CFStringCreateCopy(0, a2);
      v11[7] = CFStringCreateCopy(0, a3);
    }

    if (a4)
    {
      CFRetain(a4);
      v11[4] = a4;
    }

    if (a5)
    {
      CFRetain(a5);
      v11[3] = a5;
    }
  }

  return v11;
}

void __SCNSManagerServiceChanged(uint64_t a1, void *value)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    CFSetRemoveValue(v4, value);
  }

  Mutable = *(a1 + 48);
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
    *(a1 + 48) = Mutable;
  }

  CFSetAddValue(Mutable, value);
}

void *SCNSManagerCopyCurrentService(const void **a1, SCNetworkInterfaceRef interface, const __CFString *a3)
{
  if (a3)
  {
    v6 = __SCNetworkCategoryManagerCopyActiveValueNoSession(a3, interface);
    if (v6)
    {
      v7 = a3;
    }

    else
    {
      v7 = 0;
    }

    v8 = __SCNSManagerCopyService(a1, interface, v7, v6, 1);
    if (v6)
    {
      CFRelease(v6);
    }

    return v8;
  }

  else
  {

    return __SCNSManagerCopyService(a1, interface, 0, 0, 1);
  }
}

uint64_t SCNSManagerSetEventHandler(uint64_t a1, NSObject *a2, const void *a3)
{
  v4 = *(a1 + 24);
  if (!a2)
  {
    if (v4)
    {
      dispatch_release(v4);
      *(a1 + 24) = 0;
      v9 = *(a1 + 32);
      if (v9)
      {
        _Block_release(v9);
        *(a1 + 32) = 0;
      }

      SCPreferencesSetDispatchQueue(*(a1 + 16), 0);
      SCPreferencesSetCallback(*(a1 + 16), 0, 0);
      v10 = *(a1 + 40);
      if (v10)
      {
        CFRelease(v10);
        *(a1 + 40) = 0;
      }
    }

    return 1;
  }

  if (!a3 || v4)
  {
    _SCErrorSet(1002);
  }

  else
  {
    result = store_create(a1, a2);
    if (!result)
    {
      return result;
    }

    v8 = result;
    if (__SCNSManagerEnablePrefsCallback(a1, a2))
    {
      *(a1 + 24) = a2;
      dispatch_retain(a2);
      *(a1 + 32) = _Block_copy(a3);
      *(a1 + 40) = CFRetain(v8);
      CFRelease(v8);
      return 1;
    }

    CFRelease(v8);
  }

  return 0;
}

CFStringRef SCNSServiceGetServiceID(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return @"n/a";
  }

  return SCNetworkServiceGetServiceID(v1);
}

CFStringRef SCNSServiceGetName(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return @"n/a";
  }

  return SCNetworkServiceGetName(v1);
}

CFDictionaryRef SCNSServiceCopyProtocolEntity(uint64_t a1, __CFString *cf1)
{
  cf[1] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  if (!__SCNetworkProtocolIsValidType(cf1))
  {
    v4 = 0;
    v6 = 1002;
    goto LABEL_11;
  }

  if (!__SCNSServiceGetEntity(a1, cf1, cf))
  {
    v7 = *(a1 + 24);
    if (v7)
    {
      v8 = SCNetworkServiceCopyProtocol(v7, cf1);
      if (v8)
      {
        v4 = v8;
        Configuration = SCNetworkProtocolGetConfiguration(v8);
        if (!Configuration)
        {
          goto LABEL_10;
        }

LABEL_4:
        CFRetain(Configuration);
        if (!v4)
        {
          return Configuration;
        }

        goto LABEL_12;
      }
    }
  }

  v4 = 0;
  Configuration = cf[0];
  if (cf[0])
  {
    goto LABEL_4;
  }

LABEL_10:
  v6 = 1004;
LABEL_11:
  _SCErrorSet(v6);
  Configuration = 0;
  if (v4)
  {
LABEL_12:
    CFRelease(v4);
  }

  return Configuration;
}

uint64_t __SCNSServiceGetEntity(uint64_t a1, void *value, void *a3)
{
  v6 = *(a1 + 80);
  if (v6 && CFSetContainsValue(v6, value))
  {
    v7 = 0;
    result = 1;
  }

  else
  {
    result = *(a1 + 72);
    if (result)
    {
      v7 = CFDictionaryGetValue(result, value);
      result = v7 != 0;
    }

    else
    {
      v7 = 0;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t SCNSServiceSetProtocolEntity(uint64_t *a1, const __CFString *cf1, void *a3)
{
  if (__SCNetworkProtocolIsValidType(cf1))
  {

    return __SCNSServiceSetEntity(a1, cf1, a3);
  }

  else
  {
    _SCErrorSet(1002);
    return 0;
  }
}

uint64_t __SCNSServiceSetEntity(uint64_t *a1, CFTypeRef cf1, void *value)
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (value)
  {
    Mutable = a1[9];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      a1[9] = Mutable;
    }

    CFDictionarySetValue(Mutable, cf1, value);
    v7 = a1[10];
    if (v7)
    {
      CFSetRemoveValue(v7, cf1);
    }

LABEL_17:
    __SCNSManagerServiceChanged(a1[2], a1);
    return 1;
  }

  v8 = a1[10];
  if (!v8)
  {
    v8 = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
    a1[10] = v8;
  }

  v9 = CFEqual(cf1, @"IPv4");
  v10 = @"IPv6";
  if (!v9 && (v11 = CFEqual(cf1, @"IPv6"), v10 = @"IPv4", !v11) || !v10 || !CFSetContainsValue(v8, v10))
  {
    CFSetAddValue(v8, cf1);
    v24 = a1[9];
    if (v24)
    {
      CFDictionaryRemoveValue(v24, cf1);
    }

    goto LABEL_17;
  }

  v12 = _SC_LOG_DEFAULT();
  v13 = _SC_syslog_os_log_mapping(3);
  if (__SC_log_enabled(3, v12, v13))
  {
    v14 = _os_log_pack_size();
    v20 = v25 - ((MEMORY[0x1EEE9AC00](v14, v15, v16, v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = __error();
    v22 = _os_log_pack_fill(v20, v14, *v21, &dword_1AD2AD000, "%s: can't remove both IPv4 and IPv6", v25[0]);
    *v22 = 136315138;
    *(v22 + 4) = "__SCNSServiceSetEntity";
    __SC_log_send(3, v12, v13, v20);
  }

  _SCErrorSet(1002);
  return 0;
}

void SCNSServiceUseDefaultProtocolEntities(_BYTE *value)
{
  value[88] = 1;
  v2 = *(value + 10);
  if (v2)
  {
    CFRelease(v2);
    *(value + 10) = 0;
  }

  v3 = *(value + 9);
  if (v3)
  {
    CFRelease(v3);
    *(value + 9) = 0;
  }

  v4 = *(value + 2);

  __SCNSManagerServiceChanged(v4, value);
}

const __CFDictionary *SCNSServiceCopyActiveEntity(uint64_t a1, __CFString *a2)
{
  v4 = *(a1 + 64);
  if (!v4)
  {
    SCNSServiceRefreshActiveState(a1);
    v4 = *(a1 + 64);
    if (!v4)
    {
      return 0;
    }
  }

  if (!CFDictionaryContainsKey(v4, @"IPv4") && !CFDictionaryContainsKey(*(a1 + 64), @"IPv6"))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(*(a1 + 64), a2);
  v6 = SCNSServiceCopyProtocolEntity(a1, a2);
  v7 = v6;
  if (Value && v6)
  {
    Value = CFDictionaryCreateMutableCopy(0, 0, Value);
    CFDictionaryApplyFunction(v7, dict_merge_value, Value);
LABEL_10:
    CFRelease(v7);
    return Value;
  }

  if (v6)
  {
    CFRetain(v6);
    Value = v7;
    goto LABEL_10;
  }

  if (Value)
  {
    CFRetain(Value);
  }

  return Value;
}

void SCNSServiceRefreshActiveState(uint64_t a1)
{
  cf[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 64) = 0;
  }

  ServiceID = SCNetworkServiceGetServiceID(*(a1 + 24));
  cf[0] = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"State:", ServiceID, @"[^/]+");
  v4 = CFArrayCreate(0, cf, 1, MEMORY[0x1E695E9C0]);
  CFRelease(cf[0]);
  v5 = SCDynamicStoreCopyMultiple(0, 0, v4);
  CFRelease(v4);
  if (v5)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryApplyFunction(v5, state_dict_entity_key, Mutable);
    CFRelease(v5);
  }

  else
  {
    Mutable = 0;
  }

  *(a1 + 64) = Mutable;
}

uint64_t SCNSServiceSetQoSMarkingPolicy(uint64_t *a1, void *value)
{

  return __SCNSServiceSetEntity(a1, @"QoSMarkingPolicy", value);
}

CFTypeRef SCNSServiceCopyQoSMarkingPolicy(void *a1)
{
  cf[1] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  v2 = a1[3];
  if (__SCNSServiceGetEntity(a1, @"QoSMarkingPolicy", cf))
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  if (v3)
  {
    goto LABEL_6;
  }

  v5 = a1[6];
  if (v5)
  {
    v6 = a1[7];
    v7 = SCNetworkCategoryCreate(*(a1[2] + 16), v5);
    ServiceQoSMarkingPolicy = SCNetworkCategoryGetServiceQoSMarkingPolicy(v7, v6, v2);
    if (v7)
    {
      CFRelease(v7);
    }

    if (ServiceQoSMarkingPolicy)
    {
      goto LABEL_12;
    }

LABEL_15:
    _SCErrorSet(1004);
    return ServiceQoSMarkingPolicy;
  }

  Interface = SCNetworkServiceGetInterface(v2);
  if (!Interface)
  {
LABEL_6:
    ServiceQoSMarkingPolicy = cf[0];
    if (!cf[0])
    {
      goto LABEL_15;
    }
  }

  else
  {
    ServiceQoSMarkingPolicy = SCNetworkInterfaceGetQoSMarkingPolicy(Interface);
    if (!ServiceQoSMarkingPolicy)
    {
      goto LABEL_15;
    }
  }

LABEL_12:
  CFRetain(ServiceQoSMarkingPolicy);
  return ServiceQoSMarkingPolicy;
}

void __SCNSManagerDeallocate(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    SCPreferencesSetDispatchQueue(v2, 0);
    SCPreferencesSetCallback(*(a1 + 16), 0, 0);
    v3 = *(a1 + 16);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 16) = 0;
    }
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 40) = 0;
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    dispatch_release(v7);
    *(a1 + 24) = 0;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    _Block_release(v8);
    *(a1 + 32) = 0;
  }
}

__CFString *__SCNSManagerCopyDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<%s %p> {}", "SCNSManager", a1);
  return Mutable;
}

void __SCNSServiceDeallocate(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
    a1[5] = 0;
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
    a1[6] = 0;
  }

  v7 = a1[7];
  if (v7)
  {
    CFRelease(v7);
    a1[7] = 0;
  }

  v8 = a1[8];
  if (v8)
  {
    CFRelease(v8);
    a1[8] = 0;
  }

  v9 = a1[9];
  if (v9)
  {
    CFRelease(v9);
    a1[9] = 0;
  }

  v10 = a1[10];
  if (v10)
  {
    CFRelease(v10);
    a1[10] = 0;
  }
}

__CFString *__SCNSServiceCopyDescription(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<%s %p> { service %@", "SCNSService", a1, a1[3]);
  if (a1[6])
  {
    v4 = a1[7];
    if (v4)
    {
      CFStringAppendFormat(Mutable, 0, @" category (%@, %@)", a1[6], v4);
    }
  }

  CFStringAppend(Mutable, @" }");
  return Mutable;
}

void managerRemove(void *a1, _BYTE *a2)
{
  v66[1] = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    v3 = a1[3];
    if (v3)
    {
      ServiceID = SCNetworkServiceGetServiceID(v3);
      v6 = a1[2];
      v7 = a1[6];
      if (v7)
      {
        v8 = SCNetworkCategoryCreate(*(v6 + 16), v7);
        v9 = copy_service_for_category_and_ID(v8, a1[7], ServiceID);
        if (v9)
        {
          v10 = v9;
          v11 = SCNetworkCategoryRemoveService(v8, a1[7], v9);
          CFRelease(v10);
          if (v11)
          {
            goto LABEL_26;
          }

          v12 = _SC_LOG_DEFAULT();
          v13 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v12, v13))
          {
            v14 = _os_log_pack_size();
            v20 = v66 - ((MEMORY[0x1EEE9AC00](v14, v15, v16, v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
            v21 = *__error();
            v22 = _os_log_pack_fill(v20, v14, v21, &dword_1AD2AD000, "%s: can't remove service %@ (%@, %@)");
LABEL_17:
            v37 = a1[6];
            v38 = a1[7];
            *v22 = 136315906;
            *(v22 + 4) = "managerRemove";
            *(v22 + 12) = 2112;
            *(v22 + 14) = ServiceID;
            *(v22 + 22) = 2112;
            *(v22 + 24) = v37;
            *(v22 + 32) = 2112;
            *(v22 + 34) = v38;
            __SC_log_send(5, v12, v13, v20);
          }
        }

        else
        {
          v12 = _SC_LOG_DEFAULT();
          v13 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v12, v13))
          {
            v30 = _os_log_pack_size();
            v20 = v66 - ((MEMORY[0x1EEE9AC00](v30, v31, v32, v33, v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
            v36 = *__error();
            v22 = _os_log_pack_fill(v20, v30, v36, &dword_1AD2AD000, "%s: can't find service %@ (%@, %@)");
            goto LABEL_17;
          }
        }

LABEL_25:
        *a2 = 1;
LABEL_26:
        if (v8)
        {
          CFRelease(v8);
        }

        return;
      }

      v23 = a1[5];
      if (v23 && (v24 = SCNetworkSetCopy(*(v6 + 16), v23)) != 0)
      {
        v25 = v24;
        v26 = SCNetworkSetCopyServices(v24);
        if (v26 && (v27 = v26, v28 = copy_service_in_list_by_ID(v26, ServiceID), CFRelease(v27), v28))
        {
          v29 = SCNetworkSetRemoveService(v25, v28);
          CFRelease(v25);
          if (v29)
          {
            return;
          }
        }

        else
        {
          CFRelease(v25);
        }

        v54 = _SC_LOG_DEFAULT();
        v55 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v54, v55))
        {
          v56 = _os_log_pack_size();
          v62 = v66 - ((MEMORY[0x1EEE9AC00](v56, v57, v58, v59, v60, v61) + 15) & 0xFFFFFFFFFFFFFFF0);
          v63 = __error();
          v64 = _os_log_pack_fill(v62, v56, *v63, &dword_1AD2AD000, "%s: failed to remove service %@ in set %@");
          v65 = a1[5];
          *v64 = 136315650;
          *(v64 + 4) = "managerRemove";
          *(v64 + 12) = 2112;
          *(v64 + 14) = ServiceID;
          *(v64 + 22) = 2112;
          *(v64 + 24) = v65;
          v51 = v54;
          v52 = v55;
          v53 = v62;
          goto LABEL_23;
        }
      }

      else
      {
        v39 = _SC_LOG_DEFAULT();
        v40 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v39, v40))
        {
          v41 = _os_log_pack_size();
          v47 = v66 - ((MEMORY[0x1EEE9AC00](v41, v42, v43, v44, v45, v46) + 15) & 0xFFFFFFFFFFFFFFF0);
          v48 = __error();
          v49 = _os_log_pack_fill(v47, v41, *v48, &dword_1AD2AD000, "%s: set no longer exists %@");
          v50 = a1[5];
          *v49 = 136315394;
          *(v49 + 4) = "managerRemove";
          *(v49 + 12) = 2112;
          *(v49 + 14) = v50;
          v51 = v39;
          v52 = v40;
          v53 = v47;
LABEL_23:
          __SC_log_send(5, v51, v52, v53);
          v8 = 0;
          goto LABEL_25;
        }
      }

      v8 = 0;
      goto LABEL_25;
    }
  }
}

const __SCNetworkService *copy_service_for_category_and_ID(uint64_t a1, uint64_t a2, const void *a3)
{
  v4 = SCNetworkCategoryCopyServices(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = copy_service_in_list_by_ID(v4, a3);
  CFRelease(v5);
  return v6;
}

const __SCNetworkService *copy_service_in_list_by_ID(const __CFArray *a1, const void *a2)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
    ServiceID = SCNetworkServiceGetServiceID(ValueAtIndex);
    if (CFEqual(a2, ServiceID))
    {
      break;
    }

    if (v5 == ++v6)
    {
      return 0;
    }
  }

  CFRetain(ValueAtIndex);
  return ValueAtIndex;
}

void managerChange(uint64_t a1, _BYTE *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    if (*(a1 + 24))
    {
      if (!__SCNSServiceUpdateService(a1))
      {
        goto LABEL_19;
      }
    }

    else if (!__SCNSServiceInstantiateService(a1))
    {
      goto LABEL_19;
    }

    v6 = 1;
    if (!*(a1 + 88) || service_establish_default(*(a1 + 24)))
    {
      v4 = *(a1 + 80);
      if (!v4 || (context = a1, v36 = 0, CFSetApplyFunction(v4, entityRemove, &context), !v36))
      {
        v5 = *(a1 + 72);
        if (!v5 || (context = a1, v36 = 0, CFDictionaryApplyFunction(v5, entityChange, &context), !v36))
        {
          v6 = 0;
        }
      }
    }

    v7 = *(a1 + 80);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 80) = 0;
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 72) = 0;
    }

    *(a1 + 88) = 0;
    if (v6)
    {
LABEL_19:
      v9 = *(a1 + 48);
      v10 = _SC_LOG_DEFAULT();
      v11 = _SC_syslog_os_log_mapping(5);
      v12 = __SC_log_enabled(5, v10, v11);
      if (v9)
      {
        if (v12)
        {
          v13 = _os_log_pack_size();
          v19 = &v34 - ((MEMORY[0x1EEE9AC00](v13, v14, v15, v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
          v20 = __error();
          v21 = _os_log_pack_fill(v19, v13, *v20, &dword_1AD2AD000, "%s: can't update service for %@ (%@, %@)");
          v22 = *(a1 + 32);
          v23 = *(a1 + 48);
          v24 = *(a1 + 56);
          *v21 = 136315906;
          *(v21 + 4) = "managerChange";
          *(v21 + 12) = 2112;
          *(v21 + 14) = v22;
          *(v21 + 22) = 2112;
          *(v21 + 24) = v23;
          *(v21 + 32) = 2112;
          *(v21 + 34) = v24;
LABEL_24:
          __SC_log_send(5, v10, v11, v19);
        }
      }

      else if (v12)
      {
        v25 = _os_log_pack_size();
        v19 = &v34 - ((MEMORY[0x1EEE9AC00](v25, v26, v27, v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
        v31 = __error();
        v32 = _os_log_pack_fill(v19, v25, *v31, &dword_1AD2AD000, "%s: can't update service for %@");
        v33 = *(a1 + 32);
        *v32 = 136315394;
        *(v32 + 4) = "managerChange";
        *(v32 + 12) = 2112;
        *(v32 + 14) = v33;
        goto LABEL_24;
      }

      *a2 = 1;
    }
  }
}

uint64_t __SCNSServiceInstantiateService(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  if (!v3)
  {
    v7 = *(a1 + 40);
    if (v7 && (v8 = SCNetworkSetCopy(*(v2 + 16), v7)) != 0)
    {
      v9 = v8;
      service_in_set = create_service_in_set(*(v2 + 16), v8, *(a1 + 32));
      CFRelease(v9);
      if (service_in_set)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = _SC_LOG_DEFAULT();
      v11 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v10, v11))
      {
        v12 = _os_log_pack_size();
        v18 = &v36 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
        v19 = __error();
        v20 = _os_log_pack_fill(v18, v12, *v19, &dword_1AD2AD000, "%s: set no longer exists %@");
        v21 = *(a1 + 40);
        *v20 = 136315394;
        *(v20 + 4) = "__SCNSServiceInstantiateService";
        *(v20 + 12) = 2112;
        *(v20 + 14) = v21;
        __SC_log_send(5, v10, v11, v18);
      }
    }

    return 0;
  }

  service_in_category = create_service_in_category(*(v2 + 16), v3, *(a1 + 56), *(a1 + 32));
  if (!service_in_category)
  {
    return 0;
  }

  service_in_set = service_in_category;
LABEL_4:
  if (SCNetworkServiceEstablishDefaultConfiguration(service_in_set))
  {
    if (!*(a1 + 72) && !*(a1 + 80))
    {
      *(a1 + 88) = 0;
    }

    CFRetain(service_in_set);
    *(a1 + 24) = service_in_set;
    v6 = 1;
  }

  else
  {
    v22 = _SC_LOG_DEFAULT();
    v23 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v22, v23))
    {
      v24 = _os_log_pack_size();
      v30 = &v36 - ((MEMORY[0x1EEE9AC00](v24, v25, v26, v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = __error();
      v32 = _os_log_pack_fill(v30, v24, *v31, &dword_1AD2AD000, "%s: EstablishDefaultConfiguration, %s", v36, v37);
      v33 = SCError();
      v34 = SCErrorString(v33);
      *v32 = 136315394;
      *(v32 + 4) = "__SCNSServiceInstantiateService";
      *(v32 + 12) = 2080;
      *(v32 + 14) = v34;
      __SC_log_send(5, v22, v23, v30);
    }

    v6 = 0;
  }

  CFRelease(service_in_set);
  return v6;
}

BOOL __SCNSServiceUpdateService(uint64_t a1)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  ServiceID = SCNetworkServiceGetServiceID(*(a1 + 24));
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = SCNetworkCategoryCreate(*(v2 + 16), v4);
    v6 = copy_service_for_category_and_ID(v5, *(a1 + 56), ServiceID);
    if (v5)
    {
      CFRelease(v5);
    }

    if (v6)
    {
      goto LABEL_5;
    }

    v13 = _SC_LOG_DEFAULT();
    v14 = _SC_syslog_os_log_mapping(5);
    result = __SC_log_enabled(5, v13, v14);
    if (result)
    {
      v15 = _os_log_pack_size();
      v21 = v47 - ((MEMORY[0x1EEE9AC00](v15, v16, v17, v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = __error();
      v23 = _os_log_pack_fill(v21, v15, *v22, &dword_1AD2AD000, "%s: can't find service %@ (%@, %@)");
      v24 = *(a1 + 48);
      v25 = *(a1 + 56);
      *v23 = 136315906;
      *(v23 + 4) = "__SCNSServiceUpdateService";
      *(v23 + 12) = 2112;
      *(v23 + 14) = ServiceID;
      *(v23 + 22) = 2112;
      *(v23 + 24) = v24;
      *(v23 + 32) = 2112;
      *(v23 + 34) = v25;
LABEL_18:
      __SC_log_send(5, v13, v14, v21);
      return 0;
    }
  }

  else
  {
    v8 = *(a1 + 40);
    if (!v8 || (v9 = SCNetworkSetCopy(*(v2 + 16), v8)) == 0)
    {
      v26 = _SC_LOG_DEFAULT();
      v27 = _SC_syslog_os_log_mapping(5);
      result = __SC_log_enabled(5, v26, v27);
      if (!result)
      {
        return result;
      }

      v28 = _os_log_pack_size();
      v34 = v47 - ((MEMORY[0x1EEE9AC00](v28, v29, v30, v31, v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
      v35 = __error();
      v36 = _os_log_pack_fill(v34, v28, *v35, &dword_1AD2AD000, "%s: set %@ no longer exists");
      v37 = *(a1 + 40);
      *v36 = 136315394;
      *(v36 + 4) = "__SCNSServiceUpdateService";
      *(v36 + 12) = 2112;
      *(v36 + 14) = v37;
      __SC_log_send(5, v26, v27, v34);
      return 0;
    }

    v10 = v9;
    v11 = SCNetworkSetCopyServices(v9);
    if (v11)
    {
      v12 = v11;
      v6 = copy_service_in_list_by_ID(v11, ServiceID);
      CFRelease(v12);
      CFRelease(v10);
      if (v6)
      {
LABEL_5:
        CFRelease(*(a1 + 24));
        CFRetain(v6);
        *(a1 + 24) = v6;
        CFRelease(v6);
        return 1;
      }
    }

    else
    {
      CFRelease(v10);
    }

    v13 = _SC_LOG_DEFAULT();
    v14 = _SC_syslog_os_log_mapping(5);
    result = __SC_log_enabled(5, v13, v14);
    if (result)
    {
      v38 = _os_log_pack_size();
      v21 = v47 - ((MEMORY[0x1EEE9AC00](v38, v39, v40, v41, v42, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
      v44 = __error();
      v45 = _os_log_pack_fill(v21, v38, *v44, &dword_1AD2AD000, "%s: can't find service %@ in set %@");
      v46 = *(a1 + 40);
      *v45 = 136315650;
      *(v45 + 4) = "__SCNSServiceUpdateService";
      *(v45 + 12) = 2112;
      *(v45 + 14) = ServiceID;
      *(v45 + 22) = 2112;
      *(v45 + 24) = v46;
      goto LABEL_18;
    }
  }

  return result;
}

SCNetworkServiceRef create_service_in_category(const __SCPreferences *a1, const __CFString *a2, uint64_t a3, const __SCNetworkInterface *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = SCNetworkCategoryCreate(a1, a2);
  v8 = SCNetworkServiceCreate(a1, a4);
  if (!SCNetworkCategoryAddService(v7, a3, v8))
  {
    v9 = _SC_LOG_DEFAULT();
    v10 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v9, v10))
    {
      v11 = _os_log_pack_size();
      v17 = &v23 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = __error();
      v19 = _os_log_pack_fill(v17, v11, *v18, &dword_1AD2AD000, "%s: SCNetworkCategoryAddService failed, %s", v23, v24);
      v20 = SCError();
      v21 = SCErrorString(v20);
      *v19 = 136315394;
      *(v19 + 4) = "create_service_in_category";
      *(v19 + 12) = 2080;
      *(v19 + 14) = v21;
      __SC_log_send(5, v9, v10, v17);
    }

    CFRelease(v8);
    v8 = 0;
  }

  CFRelease(v7);
  return v8;
}

SCNetworkServiceRef create_service_in_set(const __SCPreferences *a1, const __SCNetworkSet *a2, SCNetworkInterfaceRef interface)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = SCNetworkServiceCreate(a1, interface);
  if (!SCNetworkSetAddService(a2, v4))
  {
    CFRelease(v4);
    v5 = _SC_LOG_DEFAULT();
    v6 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v5, v6))
    {
      v7 = _os_log_pack_size();
      v13 = &v19 - ((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = __error();
      v15 = _os_log_pack_fill(v13, v7, *v14, &dword_1AD2AD000, "%s: failed to add service to set, %s", v19, v20);
      v16 = SCError();
      v17 = SCErrorString(v16);
      *v15 = 136315394;
      *(v15 + 4) = "create_service_in_set";
      *(v15 + 12) = 2080;
      *(v15 + 14) = v17;
      __SC_log_send(5, v5, v6, v13);
    }

    return 0;
  }

  return v4;
}

uint64_t service_establish_default(const __SCNetworkService *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = SCNetworkServiceCopyProtocols(a1);
  v3 = v2;
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
        ProtocolType = SCNetworkProtocolGetProtocolType(ValueAtIndex);
        if (!SCNetworkServiceRemoveProtocolType(a1, ProtocolType))
        {
          break;
        }

        if (v5 == ++v6)
        {
          goto LABEL_6;
        }
      }

      v26 = _SC_LOG_DEFAULT();
      v27 = _SC_syslog_os_log_mapping(5);
      if (!__SC_log_enabled(5, v26, v27))
      {
        goto LABEL_12;
      }

      v28 = _os_log_pack_size();
      v34 = &v40 - ((MEMORY[0x1EEE9AC00](v28, v29, v30, v31, v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
      v35 = __error();
      v36 = _os_log_pack_fill(v34, v28, *v35, &dword_1AD2AD000, "%s: failed to remove %@, %s");
      v37 = SCError();
      v38 = SCErrorString(v37);
      *v36 = 136315650;
      *(v36 + 4) = "service_establish_default";
      *(v36 + 12) = 2112;
      *(v36 + 14) = ProtocolType;
      *(v36 + 22) = 2080;
      *(v36 + 24) = v38;
      v23 = v26;
      v24 = v27;
      v25 = v34;
      goto LABEL_11;
    }
  }

LABEL_6:
  v9 = SCNetworkServiceEstablishDefaultConfiguration(a1);
  if (v9)
  {
    goto LABEL_13;
  }

  v10 = _SC_LOG_DEFAULT();
  v11 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v10, v11))
  {
    v12 = _os_log_pack_size();
    v18 = &v40 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = __error();
    v20 = _os_log_pack_fill(v18, v12, *v19, &dword_1AD2AD000, "%s: failed to establish default, %s", v40, v41);
    v21 = SCError();
    v22 = SCErrorString(v21);
    *v20 = 136315394;
    *(v20 + 4) = "service_establish_default";
    *(v20 + 12) = 2080;
    *(v20 + 14) = v22;
    v23 = v10;
    v24 = v11;
    v25 = v18;
LABEL_11:
    __SC_log_send(5, v23, v24, v25);
  }

LABEL_12:
  v9 = 0;
LABEL_13:
  if (v3)
  {
    CFRelease(v3);
  }

  return v9;
}

void entityRemove(const __CFString *a1, uint64_t *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (CFEqual(a1, @"QoSMarkingPolicy"))
  {
    if (__SCNSServiceSetQoSMarkingPolicy(v4, 0))
    {
      return;
    }
  }

  else if (SCNetworkServiceRemoveProtocolType(*(v4 + 24), a1))
  {
    return;
  }

  if (SCError() != 1004)
  {
    v5 = _SC_LOG_DEFAULT();
    v6 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v5, v6))
    {
      v7 = _os_log_pack_size();
      v13 = v19 - ((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = __error();
      v15 = _os_log_pack_fill(v13, v7, *v14, &dword_1AD2AD000, "%s: failed to remove %@ from %@, %s");
      v16 = *(v4 + 24);
      v17 = SCError();
      v18 = SCErrorString(v17);
      *v15 = 136315906;
      *(v15 + 4) = "entityRemove";
      *(v15 + 12) = 2112;
      *(v15 + 14) = a1;
      *(v15 + 22) = 2112;
      *(v15 + 24) = v16;
      *(v15 + 32) = 2080;
      *(v15 + 34) = v18;
      __SC_log_send(3, v5, v6, v13);
    }

    *(a2 + 8) = 1;
  }
}

uint64_t entityChange(const __CFString *a1, const __CFDictionary *a2, uint64_t *a3)
{
  v6 = *a3;
  if (CFEqual(a1, @"QoSMarkingPolicy"))
  {
    result = __SCNSServiceSetQoSMarkingPolicy(v6, a2);
    if (result)
    {
      return result;
    }

    goto LABEL_3;
  }

  result = __SCNSServiceSetProtocol(v6, a1, a2);
  if (!result)
  {
LABEL_3:
    *(a3 + 8) = 1;
  }

  return result;
}

uint64_t __SCNSServiceSetQoSMarkingPolicy(uint64_t a1, const __CFDictionary *a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(a1 + 56);
    v6 = SCNetworkCategoryCreate(*(*(a1 + 16) + 16), v4);
    v7 = SCNetworkCategorySetServiceQoSMarkingPolicy(v6, v5, v3, a2);
    if (v6)
    {
      CFRelease(v6);
    }

    return v7;
  }

  Interface = SCNetworkServiceGetInterface(*(a1 + 24));
  if (!Interface)
  {
    return 0;
  }

  return SCNetworkInterfaceSetQoSMarkingPolicy(Interface, a2);
}

uint64_t __SCNSServiceSetProtocol(uint64_t a1, const __CFString *a2, const __CFDictionary *a3)
{
  v44[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 24);
  v6 = SCNetworkServiceCopyProtocol(v5, a2);
  if (v6)
  {
    goto LABEL_2;
  }

  if (!SCNetworkServiceAddProtocolType(v5, a2))
  {
    v9 = _SC_LOG_DEFAULT();
    v10 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v9, v10))
    {
      v33 = _os_log_pack_size();
      v17 = v44 - ((MEMORY[0x1EEE9AC00](v33, v34, v35, v36, v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
      v39 = *__error();
      v19 = _os_log_pack_fill(v17, v33, v39, &dword_1AD2AD000, "%s: %@ add protocol %@ failed, %s");
      goto LABEL_14;
    }

    return 0;
  }

  v6 = SCNetworkServiceCopyProtocol(v5, a2);
  if (!v6)
  {
    v9 = _SC_LOG_DEFAULT();
    v10 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v9, v10))
    {
      v11 = _os_log_pack_size();
      v17 = v44 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = *__error();
      v19 = _os_log_pack_fill(v17, v11, v18, &dword_1AD2AD000, "%s: %@ failed to establish protocol %@, %s");
LABEL_14:
      v40 = v19;
      v41 = SCError();
      v42 = SCErrorString(v41);
      *v40 = 136315906;
      *(v40 + 4) = "__SCNSServiceSetProtocol";
      *(v40 + 12) = 2112;
      *(v40 + 14) = v5;
      *(v40 + 22) = 2112;
      *(v40 + 24) = a2;
      *(v40 + 32) = 2080;
      *(v40 + 34) = v42;
      __SC_log_send(3, v9, v10, v17);
      return 0;
    }

    return 0;
  }

LABEL_2:
  v7 = v6;
  if (SCNetworkProtocolSetConfiguration(v6, a3))
  {
    v8 = 1;
  }

  else
  {
    v20 = _SC_LOG_DEFAULT();
    v21 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v20, v21))
    {
      v22 = _os_log_pack_size();
      v28 = v44 - ((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
      v29 = __error();
      v30 = _os_log_pack_fill(v28, v22, *v29, &dword_1AD2AD000, "%s: %@ failed to update protocol %@, %s");
      v31 = SCError();
      v32 = SCErrorString(v31);
      *v30 = 136315906;
      *(v30 + 4) = "__SCNSServiceSetProtocol";
      *(v30 + 12) = 2112;
      *(v30 + 14) = v5;
      *(v30 + 22) = 2112;
      *(v30 + 24) = a2;
      *(v30 + 32) = 2080;
      *(v30 + 34) = v32;
      __SC_log_send(3, v20, v21, v28);
    }

    v8 = 0;
  }

  CFRelease(v7);
  return v8;
}

const __SCNetworkService *copy_service_in_list(const __CFArray *a1, const void *a2)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
    Interface = SCNetworkServiceGetInterface(ValueAtIndex);
    if (CFEqual(a2, Interface))
    {
      break;
    }

    if (v5 == ++v6)
    {
      return 0;
    }
  }

  CFRetain(ValueAtIndex);
  return ValueAtIndex;
}

SCDynamicStoreRef store_create(void *a1, NSObject *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = a1;
  v3 = SCDynamicStoreCreate(0, @"SCNSManager", __SCNSManagerStoreCallback, &context);
  if (!v3)
  {
    v18 = _SC_LOG_DEFAULT();
    v19 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v18, v19))
    {
      v20 = _os_log_pack_size();
      v26 = &context - ((MEMORY[0x1EEE9AC00](v20, v21, v22, v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = __error();
      v28 = _os_log_pack_fill(v26, v20, *v27, &dword_1AD2AD000, "%s: SCDynamicStoreCreate failed, %s", context.version, context.info);
      v29 = SCError();
      v30 = SCErrorString(v29);
      *v28 = 136315394;
      *(v28 + 4) = "store_create";
      *(v28 + 12) = 2080;
      *(v28 + 14) = v30;
      __SC_log_send(5, v18, v19, v26);
    }

    return 0;
  }

  v4 = v3;
  if (!store_set_notification_keys(v3))
  {
LABEL_6:
    CFRelease(v4);
    return 0;
  }

  if (!SCDynamicStoreSetDispatchQueue(v4, a2))
  {
    v5 = _SC_LOG_DEFAULT();
    v6 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v5, v6))
    {
      v7 = _os_log_pack_size();
      v13 = &context - ((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = __error();
      v15 = _os_log_pack_fill(v13, v7, *v14, &dword_1AD2AD000, "%s: SCDynamicStoreSetDispatchQueue failed, %s", context.version, context.info);
      v16 = SCError();
      v17 = SCErrorString(v16);
      *v15 = 136315394;
      *(v15 + 4) = "store_create";
      *(v15 + 12) = 2080;
      *(v15 + 14) = v17;
      __SC_log_send(5, v5, v6, v13);
    }

    goto LABEL_6;
  }

  return v4;
}

uint64_t __SCNSManagerEnablePrefsCallback(SCPreferencesRef *a1, NSObject *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = a1;
  v4 = SCPreferencesSetCallback(a1[2], __SCNSManagerPrefsCallback, &context);
  if (v4)
  {
    v5 = v4;
    if (SCPreferencesSetDispatchQueue(a1[2], a2))
    {
      return 1;
    }

    else
    {
      SCPreferencesSetCallback(a1[2], 0, 0);
    }
  }

  else
  {
    v6 = _SC_LOG_DEFAULT();
    v7 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v6, v7))
    {
      v8 = _os_log_pack_size();
      v14 = &context - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = __error();
      v16 = _os_log_pack_fill(v14, v8, *v15, &dword_1AD2AD000, "%s: SCPreferencesSetCallback failed, %s", context.version, context.info);
      v17 = SCError();
      v18 = SCErrorString(v17);
      *v16 = 136315394;
      *(v16 + 4) = "__SCNSManagerEnablePrefsCallback";
      *(v16 + 12) = 2080;
      *(v16 + 14) = v18;
      __SC_log_send(5, v6, v7, v14);
    }

    return 0;
  }

  return v5;
}

uint64_t __SCNSManagerStoreCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a3 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t store_set_notification_keys(const __SCDynamicStore *a1)
{
  v23[4] = *MEMORY[0x1E69E9840];
  v23[0] = @"IPv4";
  v23[1] = @"IPv6";
  v23[2] = @"Proxies";
  v23[3] = @"DNS";
  v2 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, @"com.apple.scnetworkcategory");
  v4 = CFArrayCreateMutable(0, 0, v2);
  for (i = 0; i != 4; ++i)
  {
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"State:", @"[^/]+", v23[i]);
    CFArrayAppendValue(v4, NetworkServiceEntity);
    CFRelease(NetworkServiceEntity);
  }

  v7 = SCDynamicStoreSetNotificationKeys(a1, Mutable, v4);
  if (!v7)
  {
    v8 = _SC_LOG_DEFAULT();
    v9 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v8, v9))
    {
      v10 = _os_log_pack_size();
      v16 = &v23[-1] - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = __error();
      v18 = _os_log_pack_fill(v16, v10, *v17, &dword_1AD2AD000, "%s: SCDynamicStoreSetNotificationKeys failed, %s", v22, v23[0]);
      v19 = SCError();
      v20 = SCErrorString(v19);
      *v18 = 136315394;
      *(v18 + 4) = "store_set_notification_keys";
      *(v18 + 12) = 2080;
      *(v18 + 14) = v20;
      __SC_log_send(5, v8, v9, v16);
    }
  }

  CFRelease(Mutable);
  CFRelease(v4);
  return v7;
}

uint64_t __SCNSManagerPrefsCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a3 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void dict_merge_value(void *key, void *value, CFMutableDictionaryRef theDict)
{

  CFDictionarySetValue(theDict, key, value);
}

void state_dict_entity_key(CFStringRef theString, const void *a2, __CFDictionary *a3)
{
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, theString, @"/");
  if (ArrayBySeparatingStrings)
  {
    v6 = ArrayBySeparatingStrings;
    Count = CFArrayGetCount(ArrayBySeparatingStrings);
    if (Count >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, Count - 1);
      CFDictionarySetValue(a3, ValueAtIndex, a2);
    }

    CFRelease(v6);
  }
}

CFArrayRef SCVLANInterfaceCopyAll(SCPreferencesRef prefs)
{
  context[3] = *MEMORY[0x1E69E9840];
  if (__SCPreferencesUsingDefaultPrefs(prefs))
  {
    Companion = 0;
  }

  else
  {
    Companion = SCPreferencesCreateCompanion(prefs, @"NetworkInterfaces.plist");
  }

  context[0] = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  context[1] = Companion;
  context[2] = prefs;
  v3 = CFStringCreateWithFormat(0, 0, @"/%@/%@", @"VirtualNetworkInterfaces", @"VLAN");
  Value = SCPreferencesPathGetValue(prefs, v3);
  CFRelease(v3);
  TypeID = CFDictionaryGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    v6 = CFGetAllocator(Value);
    Copy = CFDictionaryCreateCopy(v6, Value);
    CFDictionaryApplyFunction(Copy, add_configured_interface_0, context);
    CFRelease(Copy);
  }

  if (Companion)
  {
    CFRelease(Companion);
  }

  return context[0];
}

void add_configured_interface_0(const __CFString *a1, CFDictionaryRef theDict, uint64_t a3)
{
  Value = CFDictionaryGetValue(theDict, @"Interface");
  TypeID = CFStringGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) == TypeID)
    {
      v8 = CFDictionaryGetValue(theDict, @"Tag");
      v9 = CFNumberGetTypeID();
      if (v8)
      {
        if (CFGetTypeID(v8) == v9)
        {
          Private = _SCVLANInterfaceCreatePrivate(0, a1);
          if (!Private)
          {
            add_configured_interface_cold_2();
          }

          v11 = Private;
          v12 = *(a3 + 8);
          if (!v12 || (v13 = __SCNetworkInterfaceCreateWithNIPreferencesUsingBSDName(0, v12, Value)) == 0)
          {
            v13 = _SCNetworkInterfaceCreateWithBSDName(0, Value, 2);
            if (!v13)
            {
              add_configured_interface_cold_1_0();
            }
          }

          v14 = v13;
          *(v13 + 368) = 1;
          SCVLANInterfaceSetPhysicalInterfaceAndTag(v11, v13, v8);
          CFRelease(v14);
          v15 = CFDictionaryGetValue(theDict, @"UserDefinedName");
          v16 = CFStringGetTypeID();
          if (v15 && CFGetTypeID(v15) == v16)
          {
            SCVLANInterfaceSetLocalizedDisplayName(v11, v15);
          }

          v17 = CFDictionaryGetValue(theDict, @"Options");
          v18 = CFDictionaryGetTypeID();
          if (v17 && CFGetTypeID(v17) == v18)
          {
            SCVLANInterfaceSetOptions(v11, v17);
          }

          *(v11 + 10) = CFRetain(*(a3 + 16));
          CFArrayAppendValue(*a3, v11);

          CFRelease(v11);
        }
      }
    }
  }
}

CFArrayRef SCVLANInterfaceCopyAvailablePhysicalInterfaces(void)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v1 = SCPreferencesCreate(0, @"SCVLANInterfaceCopyAvailablePhysicalInterfaces", 0);
  if (v1)
  {
    v2 = v1;
    v3 = SCBridgeInterfaceCopyAll(v1);
    if (v3)
    {
      v4 = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
      __SCBridgeInterfaceListCollectMembers(v3, v4, 0);
    }

    else
    {
      v4 = 0;
    }

    CFRelease(v2);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = __SCNetworkInterfaceCopyAll_IONetworkInterface(0);
  if (v5)
  {
    v6 = v5;
    addAvailableInterfaces(Mutable, v5, v4);
    CFRelease(v6);
  }

  if (v3)
  {
    addAvailableInterfaces(Mutable, v3, 0);
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return Mutable;
}

void addAvailableInterfaces(__CFArray *a1, CFArrayRef theArray, const __CFSet *a3)
{
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (!a3 || !CFSetContainsValue(a3, ValueAtIndex))
      {
        if (ValueAtIndex[368])
        {
          CFArrayAppendValue(a1, ValueAtIndex);
        }
      }
    }
  }
}

__CFArray *_SCVLANInterfaceCopyActive()
{
  v51 = *MEMORY[0x1E69E9840];
  v44 = 0;
  if (getifaddrs(&v44) == -1)
  {
    v14 = __log_SCNetworkConfiguration();
    v15 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v14, v15))
    {
      v16 = _os_log_pack_size();
      v22 = &v42 - ((MEMORY[0x1EEE9AC00](v16, v17, v18, v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = __error();
      v24 = _os_log_pack_fill(v22, v16, *v23, &dword_1AD2AD000, "getifaddrs() failed: %s", v42);
      v25 = __error();
      v26 = strerror(*v25);
      *v24 = 136315138;
      *(v24 + 4) = v26;
      __SC_log_send(5, v14, v15, v22);
    }

    _SCErrorSet(1001);
    return 0;
  }

  v0 = inet_dgram_socket_0();
  if (v0 == -1)
  {
    v27 = __error();
    _SCErrorSet(*v27);
    Mutable = 0;
    goto LABEL_19;
  }

  v1 = v0;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v3 = v44;
  if (!v44)
  {
    goto LABEL_14;
  }

  v4 = 0uLL;
  while (1)
  {
    v49 = v4;
    v50 = v4;
    valuePtr = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    ifa_data = v3->ifa_data;
    if (ifa_data)
    {
      if (v3->ifa_addr->sa_family == 18 && *ifa_data == 135)
      {
        break;
      }
    }

LABEL_13:
    v3 = v3->ifa_next;
    if (!v3)
    {
      goto LABEL_14;
    }
  }

  v49 = v4;
  v50 = v4;
  v47 = 0;
  v45 = 0;
  v46 = 0;
  __strlcpy_chk();
  *&v50 = &v45;
  if (ioctl(v1, 0xC020697FuLL, &v49) != -1)
  {
    v6 = CFStringCreateWithCString(0, v3->ifa_name, 0x600u);
    Private = _SCVLANInterfaceCreatePrivate(0, v6);
    if (!Private)
    {
      _SCVLANInterfaceCopyActive_cold_3();
    }

    v8 = Private;
    CFRelease(v6);
    __strlcpy_chk();
    v9 = CFStringCreateWithCString(0, cStr, 0x600u);
    v10 = _SCNetworkInterfaceCreateWithBSDName(0, v9, 2);
    if (!v10)
    {
      _SCVLANInterfaceCopyActive_cold_2();
    }

    v11 = v10;
    CFRelease(v9);
    valuePtr = v47;
    v12 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (!v12)
    {
      _SCVLANInterfaceCopyActive_cold_1();
    }

    v13 = v12;
    SCVLANInterfaceSetPhysicalInterfaceAndTag(v8, v11, v12);
    CFRelease(v11);
    CFRelease(v13);
    CFArrayAppendValue(Mutable, v8);
    CFRelease(v8);
    v4 = 0uLL;
    goto LABEL_13;
  }

  v29 = __log_SCNetworkConfiguration();
  v30 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v29, v30))
  {
    v31 = _os_log_pack_size();
    v37 = &v42 - ((MEMORY[0x1EEE9AC00](v31, v32, v33, v34, v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = __error();
    v39 = _os_log_pack_fill(v37, v31, *v38, &dword_1AD2AD000, "ioctl(SIOCGIFVLAN) failed: %s", v42);
    v40 = __error();
    v41 = strerror(*v40);
    *v39 = 136315138;
    *(v39 + 4) = v41;
    __SC_log_send(5, v29, v30, v37);
  }

  CFRelease(Mutable);
  _SCErrorSet(1001);
  Mutable = 0;
LABEL_14:
  close(v1);
LABEL_19:
  MEMORY[0x1B26F4BC0](v44);
  return Mutable;
}

uint64_t inet_dgram_socket_0()
{
  v15[1] = *MEMORY[0x1E69E9840];
  v0 = socket(2, 2, 0);
  if (v0 == -1)
  {
    v1 = __log_SCNetworkConfiguration();
    v2 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v1, v2))
    {
      v3 = _os_log_pack_size();
      v9 = v15 - ((MEMORY[0x1EEE9AC00](v3, v4, v5, v6, v7, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      v10 = __error();
      v11 = _os_log_pack_fill(v9, v3, *v10, &dword_1AD2AD000, "socket() failed: %s", v15[0]);
      v12 = __error();
      v13 = strerror(*v12);
      *v11 = 136315138;
      *(v11 + 4) = v13;
      __SC_log_send(3, v1, v2, v9);
    }
  }

  return v0;
}

Boolean SCVLANInterfaceSetPhysicalInterfaceAndTag(SCVLANInterfaceRef vlan, SCNetworkInterfaceRef physical, CFNumberRef tag)
{
  v27 = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!vlan)
  {
    goto LABEL_18;
  }

  if (CFGetTypeID(vlan) != TypeID)
  {
    goto LABEL_18;
  }

  InterfaceType = SCNetworkInterfaceGetInterfaceType(vlan);
  if (!CFEqual(InterfaceType, @"VLAN"))
  {
    goto LABEL_18;
  }

  v8 = SCNetworkInterfaceGetTypeID();
  if (!physical || CFGetTypeID(physical) != v8)
  {
    goto LABEL_18;
  }

  if (!*(physical + 368))
  {
    if (__SCPreferencesUsingDefaultPrefs(*(physical + 10)))
    {
LABEL_18:
      v20 = 1002;
LABEL_19:
      _SCErrorSet(v20);
      LOBYTE(v19) = 0;
      return v19;
    }

    *(physical + 368) = 1;
  }

  v9 = CFNumberGetTypeID();
  if (!tag)
  {
    goto LABEL_18;
  }

  if (CFGetTypeID(tag) != v9)
  {
    goto LABEL_18;
  }

  valuePtr = 0;
  CFNumberGetValue(tag, kCFNumberIntType, &valuePtr);
  if ((valuePtr - 1) >= 0xFFE)
  {
    goto LABEL_18;
  }

  v10 = *(vlan + 10);
  if (!v10)
  {
    v22 = 0;
    LOBYTE(v19) = 1;
    goto LABEL_23;
  }

  VLANInterfaceAndTag = findVLANInterfaceAndTag(v10, physical, tag);
  if (VLANInterfaceAndTag)
  {
    v12 = VLANInterfaceAndTag;
    v13 = CFEqual(vlan, VLANInterfaceAndTag);
    CFRelease(v12);
    if (!v13)
    {
      v20 = 1005;
      goto LABEL_19;
    }
  }

  v14 = CFStringCreateWithFormat(0, 0, @"/%@/%@/%@", @"VirtualNetworkInterfaces", @"VLAN", *(vlan + 14));
  Value = SCPreferencesPathGetValue(*(vlan + 10), v14);
  v16 = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != v16)
  {
    CFRelease(v14);
    v20 = 1001;
    goto LABEL_19;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
  BSDName = SCNetworkInterfaceGetBSDName(physical);
  CFDictionarySetValue(MutableCopy, @"Interface", BSDName);
  CFDictionarySetValue(MutableCopy, @"Tag", tag);
  if (CFEqual(Value, MutableCopy))
  {
    v19 = 1;
  }

  else
  {
    v19 = SCPreferencesPathSetValue(*(vlan + 10), v14, MutableCopy);
  }

  CFRelease(MutableCopy);
  CFRelease(v14);
  if (!v19)
  {
    return v19;
  }

  v22 = *(vlan + 10);
LABEL_23:
  Copy = __SCNetworkInterfaceCreateCopy(0, physical, v22, *(vlan + 12));
  v24 = *(vlan + 47);
  *(vlan + 47) = Copy;
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *(vlan + 48);
  *(vlan + 48) = CFRetain(tag);
  if (v25)
  {
    CFRelease(v25);
  }

  return v19;
}

SCVLANInterfaceRef SCVLANInterfaceCreate(SCPreferencesRef prefs, SCNetworkInterfaceRef physical, CFNumberRef tag)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!prefs)
  {
    goto LABEL_11;
  }

  TypeID = SCNetworkInterfaceGetTypeID();
  if (!physical || CFGetTypeID(physical) != TypeID)
  {
    goto LABEL_11;
  }

  if (!*(physical + 368))
  {
    if (__SCPreferencesUsingDefaultPrefs(prefs))
    {
LABEL_11:
      v9 = 1002;
      goto LABEL_12;
    }

    *(physical + 368) = 1;
  }

  v7 = CFNumberGetTypeID();
  if (!tag)
  {
    goto LABEL_11;
  }

  if (CFGetTypeID(tag) != v7)
  {
    goto LABEL_11;
  }

  valuePtr = 0;
  CFNumberGetValue(tag, kCFNumberIntType, &valuePtr);
  if ((valuePtr - 1) >= 0xFFE)
  {
    goto LABEL_11;
  }

  VLANInterfaceAndTag = findVLANInterfaceAndTag(prefs, physical, tag);
  if (VLANInterfaceAndTag)
  {
    CFRelease(VLANInterfaceAndTag);
    v9 = 1005;
  }

  else
  {
    v12 = CFGetAllocator(prefs);
    v13 = CFStringCreateWithFormat(v12, 0, @"vlan%ld", 0);
    v14 = CFStringCreateWithFormat(v12, 0, @"/%@/%@/%@", @"VirtualNetworkInterfaces", @"VLAN", v13);
    if (SCPreferencesPathGetValue(prefs, v14))
    {
      v15 = 1;
      do
      {
        CFRelease(v14);
        CFRelease(v13);
        v13 = CFStringCreateWithFormat(v12, 0, @"vlan%ld", v15);
        v14 = CFStringCreateWithFormat(v12, 0, @"/%@/%@/%@", @"VirtualNetworkInterfaces", @"VLAN", v13);
        ++v15;
      }

      while (SCPreferencesPathGetValue(prefs, v14));
    }

    v16 = CFDictionaryCreate(v12, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v17 = SCPreferencesPathSetValue(prefs, v14, v16);
    CFRelease(v16);
    CFRelease(v14);
    if (v17)
    {
      Private = _SCVLANInterfaceCreatePrivate(v12, v13);
      CFRelease(v13);
      *(Private + 10) = CFRetain(prefs);
      SCVLANInterfaceSetPhysicalInterfaceAndTag(Private, physical, tag);
      return Private;
    }

    CFRelease(v13);
    v9 = 1001;
  }

LABEL_12:
  _SCErrorSet(v9);
  return 0;
}

CFTypeRef findVLANInterfaceAndTag(const __SCPreferences *a1, const void *a2, const void *a3)
{
  v5 = SCVLANInterfaceCopyAll(a1);
  Count = CFArrayGetCount(v5);
  if (Count < 1)
  {
LABEL_8:
    v13 = 0;
  }

  else
  {
    v7 = Count;
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
      PhysicalInterface = SCVLANInterfaceGetPhysicalInterface(ValueAtIndex);
      Tag = SCVLANInterfaceGetTag(ValueAtIndex);
      if (PhysicalInterface)
      {
        v12 = Tag;
        if (Tag)
        {
          if (CFEqual(a2, PhysicalInterface) && CFEqual(a3, v12))
          {
            break;
          }
        }
      }

      if (v7 == ++v8)
      {
        goto LABEL_8;
      }
    }

    v13 = CFRetain(ValueAtIndex);
  }

  CFRelease(v5);
  return v13;
}

Boolean SCVLANInterfaceRemove(SCVLANInterfaceRef vlan)
{
  TypeID = SCNetworkInterfaceGetTypeID();
  if (vlan && CFGetTypeID(vlan) == TypeID && (InterfaceType = SCNetworkInterfaceGetInterfaceType(vlan), CFEqual(InterfaceType, @"VLAN")) && *(vlan + 10))
  {
    BSDName = SCNetworkInterfaceGetBSDName(vlan);
    v5 = CFStringCreateWithFormat(0, 0, @"/%@/%@/%@", @"VirtualNetworkInterfaces", @"VLAN", BSDName);
    v6 = SCPreferencesPathRemoveValue(*(vlan + 10), v5);
    CFRelease(v5);
    return v6;
  }

  else
  {
    _SCErrorSet(1002);
    return 0;
  }
}

SCNetworkInterfaceRef SCVLANInterfaceGetPhysicalInterface(SCVLANInterfaceRef vlan)
{
  TypeID = SCNetworkInterfaceGetTypeID();
  if (vlan)
  {
    if (CFGetTypeID(vlan) == TypeID)
    {
      InterfaceType = SCNetworkInterfaceGetInterfaceType(vlan);
      if (CFEqual(InterfaceType, @"VLAN"))
      {
        return *(vlan + 47);
      }
    }
  }

  _SCErrorSet(1002);
  return 0;
}

CFNumberRef SCVLANInterfaceGetTag(SCVLANInterfaceRef vlan)
{
  TypeID = SCNetworkInterfaceGetTypeID();
  if (vlan)
  {
    if (CFGetTypeID(vlan) == TypeID)
    {
      InterfaceType = SCNetworkInterfaceGetInterfaceType(vlan);
      if (CFEqual(InterfaceType, @"VLAN"))
      {
        return *(vlan + 48);
      }
    }
  }

  _SCErrorSet(1002);
  return 0;
}

CFDictionaryRef SCVLANInterfaceGetOptions(SCVLANInterfaceRef vlan)
{
  TypeID = SCNetworkInterfaceGetTypeID();
  if (vlan)
  {
    if (CFGetTypeID(vlan) == TypeID)
    {
      InterfaceType = SCNetworkInterfaceGetInterfaceType(vlan);
      if (CFEqual(InterfaceType, @"VLAN"))
      {
        return *(vlan + 49);
      }
    }
  }

  _SCErrorSet(1002);
  return 0;
}

Boolean SCVLANInterfaceSetLocalizedDisplayName(SCVLANInterfaceRef vlan, CFStringRef newName)
{
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!vlan || CFGetTypeID(vlan) != TypeID || (InterfaceType = SCNetworkInterfaceGetInterfaceType(vlan), !CFEqual(InterfaceType, @"VLAN")) || newName && (v6 = CFStringGetTypeID(), CFGetTypeID(newName) != v6))
  {
    v12 = 1002;
    goto LABEL_12;
  }

  if (*(vlan + 10))
  {
    v7 = CFStringCreateWithFormat(0, 0, @"/%@/%@/%@", @"VirtualNetworkInterfaces", @"VLAN", *(vlan + 14));
    Value = SCPreferencesPathGetValue(*(vlan + 10), v7);
    v9 = CFDictionaryGetTypeID();
    if (Value && CFGetTypeID(Value) == v9)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
      v11 = MutableCopy;
      if (newName)
      {
        CFDictionarySetValue(MutableCopy, @"UserDefinedName", newName);
      }

      else
      {
        CFDictionaryRemoveValue(MutableCopy, @"UserDefinedName");
      }

      if (CFEqual(Value, v11))
      {
        v13 = 1;
      }

      else
      {
        v13 = SCPreferencesPathSetValue(*(vlan + 10), v7, v11);
      }

      CFRelease(v11);
      CFRelease(v7);
      if (!v13)
      {
        return v13;
      }

      goto LABEL_21;
    }

    CFRelease(v7);
    v12 = 1001;
LABEL_12:
    _SCErrorSet(v12);
    LOBYTE(v13) = 0;
    return v13;
  }

  LOBYTE(v13) = 1;
LABEL_21:
  v15 = *(vlan + 5);
  if (v15)
  {
    CFRelease(v15);
    *(vlan + 5) = 0;
  }

  if (newName)
  {
    *(vlan + 5) = CFStringCreateCopy(0, newName);
  }

  return v13;
}

Boolean SCVLANInterfaceSetOptions(SCVLANInterfaceRef vlan, CFDictionaryRef newOptions)
{
  TypeID = SCNetworkInterfaceGetTypeID();
  if (vlan && CFGetTypeID(vlan) == TypeID && (InterfaceType = SCNetworkInterfaceGetInterfaceType(vlan), CFEqual(InterfaceType, @"VLAN")) && (!newOptions || (v6 = CFDictionaryGetTypeID(), CFGetTypeID(newOptions) == v6)))
  {

    return __SCVLANInterfaceSetOptions(vlan, newOptions);
  }

  else
  {
    _SCErrorSet(1002);
    return 0;
  }
}

uint64_t __SCVLANInterfaceSetOptions(uint64_t a1, CFDictionaryRef theDict)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 80))
  {
    v20 = 1;
LABEL_15:
    v21 = *(a1 + 392);
    if (v21)
    {
      CFRelease(v21);
      *(a1 + 392) = 0;
    }

    if (theDict)
    {
      *(a1 + 392) = CFDictionaryCreateCopy(0, theDict);
    }

    return v20;
  }

  v4 = CFStringCreateWithFormat(0, 0, @"/%@/%@/%@", @"VirtualNetworkInterfaces", @"VLAN", *(a1 + 112));
  Value = SCPreferencesPathGetValue(*(a1 + 80), v4);
  TypeID = CFDictionaryGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
    v8 = MutableCopy;
    if (theDict)
    {
      CFDictionarySetValue(MutableCopy, @"Options", theDict);
    }

    else
    {
      CFDictionaryRemoveValue(MutableCopy, @"Options");
    }

    if (CFEqual(Value, v8))
    {
      v20 = 1;
    }

    else
    {
      v20 = SCPreferencesPathSetValue(*(a1 + 80), v4, v8);
    }

    CFRelease(v8);
    CFRelease(v4);
    if (!v20)
    {
      return v20;
    }

    goto LABEL_15;
  }

  v9 = __log_SCNetworkConfiguration();
  v10 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v9, v10))
  {
    v11 = _os_log_pack_size();
    v17 = v23 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = __error();
    v19 = _os_log_pack_fill(v17, v11, *v18, &dword_1AD2AD000, "%s: bad preferences", v23[0]);
    *v19 = 136315138;
    *(v19 + 4) = "__SCVLANInterfaceSetOptions";
    __SC_log_send(5, v9, v10, v17);
  }

  CFRelease(v4);
  _SCErrorSet(1001);
  return 0;
}

uint64_t __SCVLANInterfaceSetAutoConfigure(uint64_t a1, int a2)
{
  v4 = *(a1 + 392);
  if (v4)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v4);
    v6 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v6 = 1;
    if (a2)
    {
LABEL_3:
      CFDictionaryRemoveValue(MutableCopy, @"AutoConfigure");
      if (!v4)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  CFDictionarySetValue(MutableCopy, @"AutoConfigure", *MEMORY[0x1E695E4C0]);
  if (v4)
  {
LABEL_4:
    v6 = CFEqual(v4, MutableCopy) == 0;
  }

LABEL_5:
  if (v6)
  {
    v7 = __SCVLANInterfaceSetOptions(a1, MutableCopy);
  }

  else
  {
    v7 = 1;
  }

  CFRelease(MutableCopy);
  return v7;
}

uint64_t __SCVLANInterfaceGetAutoConfigure(uint64_t a1)
{
  v1 = *(a1 + 392);
  if (!v1)
  {
    CFBooleanGetTypeID();
    return 1;
  }

  Value = CFDictionaryGetValue(v1, @"AutoConfigure");
  TypeID = CFBooleanGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return 1;
  }

  return CFBooleanGetValue(Value);
}

uint64_t _SCVLANInterfaceUpdateConfiguration(const __SCPreferences *a1)
{
  if (!a1)
  {
    _SCErrorSet(1002);
    return 0;
  }

  v1 = SCVLANInterfaceCopyAll(a1);
  v2 = v1;
  if (v1)
  {
    Count = CFArrayGetCount(v1);
  }

  else
  {
    Count = 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = _SCVLANInterfaceCopyActive();
  v7 = v6;
  v44 = v2;
  if (!v6)
  {
    v41 = 0;
    v45 = 0;
LABEL_22:
    LODWORD(v9) = -1;
    v40 = 1;
    goto LABEL_23;
  }

  v45 = CFArrayGetCount(v6);
  if (v45 < 1)
  {
    v41 = 0;
    goto LABEL_22;
  }

  v8 = 0;
  v40 = 1;
  v9 = 0xFFFFFFFFLL;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v8);
    BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
    if (Count >= 1)
    {
      v12 = 0;
      do
      {
        v13 = CFArrayGetValueAtIndex(v2, v12);
        v14 = SCNetworkInterfaceGetBSDName(v13);
        if (CFEqual(BSDName, v14))
        {
          goto LABEL_18;
        }
      }

      while (Count != ++v12);
    }

    v15 = v9;
    if (v9 == -1)
    {
      v15 = inet_dgram_socket_0();
      if (v15 == -1)
      {
        break;
      }
    }

    v9 = v15;
    if (!__destroyInterface(v15, BSDName))
    {
      v16 = __error();
      _SCErrorSet(*v16);
      v40 = 0;
    }

    v2 = v44;
LABEL_18:
    if (++v8 == v45)
    {
      v41 = 1;
LABEL_23:
      v42 = v9;
      if (Count >= 1)
      {
        v17 = 0;
        v39 = *MEMORY[0x1E695E4D0];
        v38 = *MEMORY[0x1E695E4C0];
        do
        {
          v18 = CFArrayGetValueAtIndex(v2, v17);
          v19 = SCNetworkInterfaceGetBSDName(v18);
          PhysicalInterface = SCVLANInterfaceGetPhysicalInterface(v18);
          if (PhysicalInterface)
          {
            v21 = PhysicalInterface;
            IOPath = _SCNetworkInterfaceGetIOPath(PhysicalInterface);
            Value = CFDictionaryGetValue(Mutable, v21);
            if (!Value)
            {
              if (v21[368])
              {
                Value = v39;
              }

              else
              {
                Value = v38;
              }

              CFDictionaryAddValue(Mutable, v21, Value);
            }

            v23 = Mutable;
            if (v41)
            {
              v24 = 0;
              while (1)
              {
                v25 = CFArrayGetValueAtIndex(v7, v24);
                v26 = SCNetworkInterfaceGetBSDName(v25);
                if (CFEqual(v19, v26))
                {
                  break;
                }

                if (v45 == ++v24)
                {
                  goto LABEL_35;
                }
              }

              if (CFEqual(v18, v25))
              {
LABEL_43:
                Mutable = v23;
                goto LABEL_55;
              }

              v33 = v42;
              Mutable = v23;
              if (v42 == -1)
              {
                v33 = inet_dgram_socket_0();
                if (v33 == -1)
                {
                  goto LABEL_66;
                }
              }

              v42 = v33;
              if (!CFBooleanGetValue(Value) || !__vlan_clear(v42, v19) || (v34 = SCNetworkInterfaceGetBSDName(v21), Tag = SCVLANInterfaceGetTag(v18), !__vlan_set(v42, v19, v34, Tag)))
              {
                if (!CFBooleanGetValue(Value))
                {
                  _SCErrorSet(1001);
                }

                v31 = v42;
LABEL_53:
                __destroyInterface(v31, v19);
LABEL_54:
                v40 = 0;
              }
            }

            else
            {
LABEL_35:
              v27 = CFBooleanGetValue(Value);
              if (!IOPath)
              {
                goto LABEL_43;
              }

              Mutable = v23;
              if (v27)
              {
                v28 = v42;
                if (v42 == -1)
                {
                  v28 = inet_dgram_socket_0();
                  if (v28 == -1)
                  {
                    goto LABEL_66;
                  }
                }

                v42 = v28;
                if (!__createInterface(v28, v19))
                {
                  v32 = __error();
                  _SCErrorSet(*v32);
                  goto LABEL_54;
                }

                v29 = SCNetworkInterfaceGetBSDName(v21);
                v30 = SCVLANInterfaceGetTag(v18);
                if (!__vlan_set(v28, v19, v29, v30))
                {
                  v31 = v28;
                  goto LABEL_53;
                }
              }
            }
          }

LABEL_55:
          v2 = v44;
          ++v17;
        }

        while (v17 != Count);
      }

      if (!v7)
      {
        goto LABEL_58;
      }

LABEL_57:
      CFRelease(v7);
      goto LABEL_58;
    }
  }

LABEL_66:
  v37 = __error();
  _SCErrorSet(*v37);
  v40 = 0;
  v42 = -1;
  v2 = v44;
  if (v7)
  {
    goto LABEL_57;
  }

LABEL_58:
  if (v2)
  {
    CFRelease(v2);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v42 != -1)
  {
    close(v42);
  }

  return v40;
}

uint64_t __vlan_clear(int a1, const __CFString *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  _SC_cfstring_to_cstring(a2, &v20, 16, 0x600u);
  *&v21 = v18;
  v18[0] = 0;
  v18[1] = 0;
  v19 = 0;
  if (ioctl(a1, 0x8020697EuLL, &v20) != -1)
  {
    return 1;
  }

  v4 = __log_SCNetworkConfiguration();
  v5 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v4, v5))
  {
    v6 = _os_log_pack_size();
    v12 = &v18[-1] - ((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = __error();
    v14 = _os_log_pack_fill(v12, v6, *v13, &dword_1AD2AD000, "ioctl(SIOCSIFVLAN) failed: %s", v17);
    v15 = __error();
    v16 = strerror(*v15);
    *v14 = 136315138;
    *(v14 + 4) = v16;
    __SC_log_send(5, v4, v5, v12);
  }

  _SCErrorSet(1001);
  return 0;
}

uint64_t __vlan_set(int a1, const __CFString *a2, const __CFString *a3, const __CFNumber *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  HIDWORD(v21) = 0;
  v24 = 0u;
  v25 = 0u;
  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  _SC_cfstring_to_cstring(a2, &v24, 16, 0x600u);
  *&v25 = v22;
  _SC_cfstring_to_cstring(a3, v22, 16, 0x600u);
  CFNumberGetValue(a4, kCFNumberIntType, &v21 + 4);
  v23 = WORD2(v21);
  if (ioctl(a1, 0x8020697EuLL, &v24) != -1)
  {
    return 1;
  }

  v8 = __log_SCNetworkConfiguration();
  v9 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v8, v9))
  {
    v10 = _os_log_pack_size();
    v16 = &v22[-1] - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = __error();
    v18 = _os_log_pack_fill(v16, v10, *v17, &dword_1AD2AD000, "ioctl(SIOCSIFVLAN) failed: %s", v21);
    v19 = __error();
    v20 = strerror(*v19);
    *v18 = 136315138;
    *(v18 + 4) = v20;
    __SC_log_send(5, v8, v9, v16);
  }

  _SCErrorSet(1001);
  return 0;
}

char *_scprefs_observer_watch(int a1, char *__s, uint64_t a3, const void *a4)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (_scprefs_observer_watch_initialized != -1)
  {
    _scprefs_observer_watch_cold_1();
  }

  v8 = strlen(__s);
  v9 = malloc_type_malloc(v8 + 41, 0x10E0040E60CB9C0uLL);
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *v9 = a1;
  strlcpy(v9 + 40, __s, v8 + 1);
  *(v9 + 4) = a3;
  *(v9 + 1) = _Block_copy(a4);
  v10 = __log_SCPreferences();
  v11 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v10, v11))
  {
    v12 = _os_log_pack_size();
    v18 = block - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = __error();
    v20 = _os_log_pack_fill(v18, v12, *v19, &dword_1AD2AD000, "Created a new element to watch for %s", block[0]);
    *v20 = 136315138;
    *(v20 + 4) = v9 + 40;
    __SC_log_send(6, v10, v11, v18);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___scprefs_observer_watch_block_invoke_1;
  block[3] = &__block_descriptor_tmp_2;
  block[4] = v9;
  dispatch_sync(prefs_observer_queue, block);
  return v9;
}

void ___scprefs_observer_watch_block_invoke()
{

  _prefs_observer_init();
}

void _prefs_observer_init()
{
  v14 = *MEMORY[0x1E69E9840];
  prefs_observer_queue = dispatch_queue_create("com.apple.SystemConfiguration.SCPreferencesObserver", 0);
  head_0 = 0;
  v0 = notify_register_dispatch("com.apple.ManagedConfiguration.profileListChanged", &_prefs_observer_init_token, prefs_observer_queue, &__block_literal_global_9_0);
  if (v0)
  {
    v1 = v0;
    v2 = __log_SCPreferences();
    v3 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v2, v3))
    {
      v4 = _os_log_pack_size();
      v10 = &v13 - ((MEMORY[0x1EEE9AC00](v4, v5, v6, v7, v8, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      v11 = __error();
      v12 = _os_log_pack_fill(v10, v4, *v11, &dword_1AD2AD000, "notify_register_dispatch() failed: %u", v13);
      *v12 = 67109120;
      v12[1] = v1;
      __SC_log_send(6, v2, v3, v10);
    }
  }
}

uint64_t ___scprefs_observer_watch_block_invoke_1(uint64_t result)
{
  *(*(result + 32) + 24) = head_0;
  head_0 = *(result + 32);
  return result;
}

void _scprefs_observer_cancel(uint64_t a1)
{
  v1[5] = *MEMORY[0x1E69E9840];
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 0x40000000;
  v1[2] = ___scprefs_observer_cancel_block_invoke;
  v1[3] = &__block_descriptor_tmp_3_0;
  v1[4] = a1;
  dispatch_sync(prefs_observer_queue, v1);
}

void ___scprefs_observer_cancel_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = &head_0;
  v3 = head_0;
  if (head_0 != v1)
  {
    do
    {
      v4 = v3;
      v3 = *(v3 + 24);
    }

    while (v3 != v1);
    v2 = (v4 + 24);
  }

  *v2 = *(v3 + 24);
  v5 = v1[2];
  if (v5)
  {
    CFRelease(v5);
  }

  free(v1);
}

void ___prefs_observer_init_block_invoke()
{

  prefs_observer_handle_notifications();
}

void prefs_observer_handle_notifications()
{
  v11[1] = *MEMORY[0x1E69E9840];
  v0 = __log_SCPreferences();
  v1 = _SC_syslog_os_log_mapping(7);
  if (__SC_log_enabled(7, v0, v1))
  {
    v2 = _os_log_pack_size();
    v8 = v11 - ((MEMORY[0x1EEE9AC00](v2, v3, v4, v5, v6, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = __error();
    *_os_log_pack_fill(v8, v2, *v9, &dword_1AD2AD000, "PrefsObserver notification received") = 0;
    __SC_log_send(7, v0, v1, v8);
  }

  for (i = head_0; i; i = *(i + 24))
  {
    if (has_changed(i))
    {
      dispatch_async(*(i + 32), *(i + 8));
    }
  }
}

BOOL has_changed(int *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 10);
  v2 = *a1;
  *&v23.wbuf[14] = 0;
  if (v2 == 2)
  {
    v4 = "/Library/Managed Preferences/mobile";
  }

  else
  {
    v4 = 0;
  }

  memset(&v23, 0, 96);
  CC_SHA256_Init(&v23);
  memset(&v24, 0, sizeof(v24));
  snprintf(v25, 0x400uLL, "%s/%s", v4, v3);
  if (stat(v25, &v24) || (v24.st_mode & 0xF000) != 0x8000)
  {
    CC_SHA256_Final(v25, &v23);
    v6 = 0;
  }

  else
  {
    v5 = strlen(v25);
    CC_SHA256_Update(&v23, v25, v5);
    CC_SHA256_Update(&v23, &v24.st_mtimespec, 0x10u);
    CC_SHA256_Final(v25, &v23);
    v6 = CFDataCreate(0, v25, 32);
  }

  v7 = *(a1 + 2);
  if (v6 == v7)
  {
    v8 = 0;
    if (v7)
    {
LABEL_13:
      CFRelease(v7);
    }
  }

  else
  {
    v8 = 1;
    if (v6 && v7)
    {
      v8 = CFEqual(v6, v7) == 0;
      v7 = *(a1 + 2);
    }

    if (v7)
    {
      goto LABEL_13;
    }
  }

  *(a1 + 2) = v6;
  v9 = __log_SCPreferences();
  if (v8)
  {
    v10 = 6;
  }

  else
  {
    v10 = 7;
  }

  v11 = _SC_syslog_os_log_mapping(v10);
  if (__SC_log_enabled(v10, v9, v11))
  {
    v12 = _os_log_pack_size();
    v18 = &v23 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = __error();
    v20 = _os_log_pack_fill(v18, v12, *v19, &dword_1AD2AD000, "preferences file: %s %s", *v23.count, *v23.hash);
    v21 = "did not change";
    if (v8)
    {
      v21 = "changed";
    }

    *v20 = 136315394;
    *(v20 + 4) = v3;
    *(v20 + 12) = 2080;
    *(v20 + 14) = v21;
    __SC_log_send(v10, v9, v11, v18);
  }

  return v8;
}

uint64_t _SC_stringIsValidDNSName(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = strlen(result);
    if (v2 - 256 < 0xFFFFFFFFFFFFFF01)
    {
      return 0;
    }

    v3 = v2;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = (v1 + 1);
    v8 = MEMORY[0x1E69E9830];
    while (1)
    {
      v9 = *(v7 - 1);
      v10 = *v7;
      if (v9 == 46)
      {
        if (++v5 > 0x7F)
        {
          return 0;
        }
      }

      else
      {
        ++v6;
      }

      if (v4 == 46 || !v4)
      {
        if ((v9 & 0x80000000) != 0)
        {
          result = __maskrune(*(v7 - 1), 0x500uLL);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          result = *(v8 + 4 * v9 + 60) & 0x500;
          if (!result)
          {
            return result;
          }
        }
      }

      if (v10 == 46 || v10 == 0)
      {
        if (v6 > 0x3F)
        {
          return 0;
        }

        if (v9 == 46 && !v10 && v5 > 1)
        {
          return 1;
        }

        if ((v9 & 0x80000000) != 0)
        {
          v12 = __maskrune(v9, 0x500uLL);
        }

        else
        {
          v12 = *(v8 + 4 * v9 + 60) & 0x500;
        }

        result = 0;
        if (v10)
        {
          v13 = 0;
        }

        else
        {
          v13 = v5 == 127;
        }

        v14 = v13;
        if (!v12 || (v14 & 1) != 0)
        {
          return result;
        }

        v6 = 0;
      }

      else
      {
        if ((v9 & 0x80000000) != 0)
        {
          result = __maskrune(v9, 0x500uLL);
        }

        else
        {
          result = *(v8 + 4 * v9 + 60) & 0x500;
        }

        if ((v9 - 45) >= 2u && !result)
        {
          return result;
        }
      }

      v4 = v9;
      ++v7;
      if (!--v3)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t _SC_CFStringIsValidDNSName(const __CFString *a1)
{
  TypeID = CFStringGetTypeID();
  if (!a1)
  {
    return 0;
  }

  if (CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  v3 = _SC_cfstring_to_cstring(a1, 0, 0, 0x600u);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  IsValidDNSName = _SC_stringIsValidDNSName(v3);
  CFAllocatorDeallocate(0, v4);
  return IsValidDNSName;
}

__CFArray *VPNServiceCopyAllMatchingExternalID(const __SCPreferences *a1, const void *a2, const void *a3)
{
  if (a1 && (TypeID = CFStringGetTypeID(), a2) && CFGetTypeID(a2) == TypeID && (v7 = CFStringGetTypeID(), a3) && CFGetTypeID(a3) == v7)
  {
    result = copy_matching_services(a1, a2, a3);
    if (result)
    {
      return result;
    }
  }

  else
  {
    LODWORD(result) = 1002;
  }

  _SCErrorSet(result);
  return 0;
}

__CFArray *copy_matching_services(const __SCPreferences *a1, const void *a2, const void *a3)
{
  v5 = SCNetworkServiceCopyAll(a1);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  Count = CFArrayGetCount(v5);
  if (Count < 1)
  {
    Mutable = 0;
  }

  else
  {
    v8 = Count;
    v9 = 0;
    Mutable = 0;
    v11 = 0;
    allocator = *MEMORY[0x1E695E480];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, v11);
      if (isA_VPNService(ValueAtIndex))
      {
        TypeID = CFStringGetTypeID();
        if (!a2 || CFGetTypeID(a2) != TypeID || (v14 = CFStringGetTypeID(), !a3) || CFGetTypeID(a3) != v14 || (v15 = SCNetworkServiceCopyExternalID(ValueAtIndex, a2)) != 0 && (v16 = v15, v17 = CFEqual(v15, a3), CFRelease(v16), v17))
        {
          if (!Mutable)
          {
            v18 = CFArrayGetCount(v6);
            Mutable = CFArrayCreateMutable(allocator, v18 + v9, MEMORY[0x1E695E9C0]);
          }

          CFArrayAppendValue(Mutable, ValueAtIndex);
        }
      }

      ++v11;
      --v9;
    }

    while (v8 != v11);
  }

  CFRelease(v6);
  return Mutable;
}

__CFArray *VPNServiceCopyAll(const __SCPreferences *a1)
{
  if (a1)
  {
    result = copy_matching_services(a1, 0, 0);
    if (result)
    {
      return result;
    }
  }

  else
  {
    LODWORD(result) = 1002;
  }

  _SCErrorSet(result);
  return 0;
}

__CFArray *VPNServiceCopyAppRuleIDs(const __SCNetworkService *a1)
{
  if (!isA_VPNService(a1) || (Interface = SCNetworkServiceGetInterface(a1)) == 0)
  {
    v15 = 1002;
LABEL_21:
    _SCErrorSet(v15);
    return 0;
  }

  Configuration = SCNetworkInterfaceGetConfiguration(Interface);
  TypeID = CFDictionaryGetTypeID();
  if (!Configuration || CFGetTypeID(Configuration) != TypeID || (Value = CFDictionaryGetValue(Configuration, @"AppRules"), v6 = CFArrayGetTypeID(), !Value) || CFGetTypeID(Value) != v6)
  {
LABEL_20:
    v15 = 0;
    goto LABEL_21;
  }

  Count = CFArrayGetCount(Value);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
      v11 = CFDictionaryGetTypeID();
      if (ValueAtIndex)
      {
        if (CFGetTypeID(ValueAtIndex) == v11)
        {
          v12 = CFDictionaryGetValue(ValueAtIndex, @"Identifier");
          v13 = CFStringGetTypeID();
          if (v12)
          {
            if (CFGetTypeID(v12) == v13)
            {
              v14 = CFDictionaryGetValue(ValueAtIndex, @"Identifier");
              CFArrayAppendValue(Mutable, v14);
            }
          }
        }
      }
    }
  }

  if (!CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    goto LABEL_20;
  }

  if (!Mutable)
  {
    goto LABEL_20;
  }

  return Mutable;
}

const __SCNetworkInterface *isA_VPNService(const void *a1)
{
  TypeID = SCNetworkServiceGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  result = SCNetworkServiceGetInterface(a1);
  if (result)
  {
    InterfaceType = SCNetworkInterfaceGetInterfaceType(result);
    return (CFEqual(InterfaceType, @"VPN") != 0);
  }

  return result;
}

uint64_t VPNServiceSetAppRule(const void *a1, const void *a2, const __CFDictionary *a3)
{
  if (isA_VPNService(a1) && (v6 = CFStringGetTypeID(), a2) && CFGetTypeID(a2) == v6 && validate_app_rule(a3, 1) && (Interface = SCNetworkServiceGetInterface(a1)) != 0)
  {
    v8 = Interface;
    Value = CFDictionaryGetValue(a3, @"ExecutableMatch");
    v10 = CFDictionaryGetValue(a3, @"DNSDomainMatch");
    theArray = CFDictionaryGetValue(a3, @"AccountIdentifierMatch");
    Configuration = SCNetworkInterfaceGetConfiguration(v8);
    TypeID = CFDictionaryGetTypeID();
    if (Configuration && CFGetTypeID(Configuration) == TypeID)
    {
      app_rule = find_app_rule(Configuration, a2);
      v14 = *MEMORY[0x1E695E480];
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, Configuration);
    }

    else
    {
      v14 = *MEMORY[0x1E695E480];
      MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      app_rule = -1;
    }

    v17 = CFDictionaryGetValue(MutableCopy, @"AppRules");
    v18 = CFArrayGetTypeID();
    if (v17 && CFGetTypeID(v17) == v18)
    {
      Mutable = CFArrayCreateMutableCopy(v14, 0, v17);
    }

    else
    {
      Mutable = CFArrayCreateMutable(v14, 0, MEMORY[0x1E695E9C0]);
    }

    v20 = Mutable;
    v21 = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(v21, @"Identifier", a2);
    if (Value && CFArrayGetCount(Value) >= 1)
    {
      CFDictionarySetValue(v21, @"ExecutableMatch", Value);
    }

    if (v10 && CFArrayGetCount(v10) >= 1)
    {
      CFDictionarySetValue(v21, @"DNSDomainMatch", v10);
    }

    if (theArray && CFArrayGetCount(theArray) >= 1)
    {
      CFDictionarySetValue(v21, @"AccountIdentifierMatch", theArray);
    }

    if (app_rule < 0)
    {
      CFArrayAppendValue(v20, v21);
    }

    else
    {
      CFArraySetValueAtIndex(v20, app_rule, v21);
    }

    CFDictionarySetValue(MutableCopy, @"AppRules", v20);
    SCNetworkInterfaceSetConfiguration(v8, MutableCopy);
    CFRelease(MutableCopy);
    CFRelease(v20);
    CFRelease(v21);
    return 1;
  }

  else
  {
    _SCErrorSet(1002);
    return 0;
  }
}

__SecTask *validate_app_rule(const void *a1, int a2)
{
  TypeID = CFDictionaryGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"ExecutableMatch");
  v6 = CFArrayGetTypeID();
  if (Value && CFGetTypeID(Value) == v6)
  {
    Count = CFArrayGetCount(Value);
    if (Count >= 1)
    {
      v39 = 0;
      v8 = 0;
      allocator = *MEMORY[0x1E695E480];
      v9 = -1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Value, v8);
        v11 = CFDictionaryGetTypeID();
        if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == v11)
        {
          v12 = CFDictionaryGetValue(ValueAtIndex, @"SigningIdentifier");
          v13 = CFDictionaryGetValue(ValueAtIndex, @"DesignatedRequirement");
          v14 = CFStringGetTypeID();
          if (!v12 || CFGetTypeID(v12) != v14)
          {
            return 0;
          }

          result = CFStringGetLength(v12);
          if (!result)
          {
            return result;
          }

          if (a2 && CFStringHasPrefix(v12, @"com.apple."))
          {
            v9 = 0;
            v16 = 1;
            do
            {
              v17 = v16;
              if (CFStringCompare(v12, *(&g_apple_app_exceptions + 2 * v9), 0) == kCFCompareEqualTo)
              {
                v39 = 1;
                goto LABEL_20;
              }

              v16 = 0;
              v9 = 1;
            }

            while ((v17 & 1) != 0);
            if (v39)
            {
              v39 = 1;
            }

            else
            {
              result = SecTaskCreateFromSelf(allocator);
              if (!result)
              {
                return result;
              }

              v19 = result;
              v20 = SecTaskCopyValueForEntitlement(result, @"com.apple.private.app-vpn-config", 0);
              v21 = CFBooleanGetTypeID();
              if (!v20)
              {
                goto LABEL_55;
              }

              if (CFGetTypeID(v20) != v21)
              {
                CFRelease(v20);
LABEL_55:
                CFRelease(v19);
                return 0;
              }

              v22 = CFBooleanGetValue(v20);
              CFRelease(v20);
              CFRelease(v19);
              if (!v22)
              {
                return 0;
              }

              v39 = 0;
            }

            v9 = 2;
            if (v13)
            {
LABEL_21:
              v18 = CFStringGetTypeID();
              if (CFGetTypeID(v13) != v18)
              {
                return 0;
              }

              result = CFStringGetLength(v13);
              if (!result)
              {
                return result;
              }
            }
          }

          else
          {
LABEL_20:
            if (v13)
            {
              goto LABEL_21;
            }
          }
        }

        if (++v8 == Count)
        {
          v36 = v39 == 0;
          v37 = v9 >> 63;
          Count = 1;
          goto LABEL_34;
        }
      }
    }
  }

  else
  {
    Count = 0;
  }

  v36 = 1;
  LODWORD(v37) = 1;
LABEL_34:
  v23 = CFDictionaryGetValue(a1, @"AccountIdentifierMatch");
  v24 = CFArrayGetTypeID();
  if (v23 && CFGetTypeID(v23) == v24)
  {
    v25 = CFArrayGetCount(v23);
    if (v25 >= 1)
    {
      v26 = 0;
      while (1)
      {
        v27 = CFArrayGetValueAtIndex(v23, v26);
        v28 = CFStringGetTypeID();
        if (!v27 || CFGetTypeID(v27) != v28)
        {
          return 0;
        }

        if (v25 == ++v26)
        {
          v25 = 1;
          break;
        }
      }
    }
  }

  else
  {
    v25 = 0;
  }

  if (!(v25 | Count))
  {
    return 0;
  }

  v29 = CFDictionaryGetValue(a1, @"DNSDomainMatch");
  if (v29)
  {
    v30 = v29;
    v31 = CFArrayGetTypeID();
    if (CFGetTypeID(v30) != v31)
    {
      return 0;
    }

    v32 = CFArrayGetCount(v30);
    if (v32 >= 1)
    {
      v33 = 0;
      while (1)
      {
        v34 = CFArrayGetValueAtIndex(v30, v33);
        v35 = CFStringGetTypeID();
        if (!v34 || CFGetTypeID(v34) != v35)
        {
          break;
        }

        if (v32 == ++v33)
        {
          v32 = 1;
          return ((v32 != 0) | (v36 | v37) & 1);
        }
      }

      return 0;
    }
  }

  else
  {
    v32 = 0;
  }

  return ((v32 != 0) | (v36 | v37) & 1);
}

CFIndex find_app_rule(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, @"AppRules");
  TypeID = CFArrayGetTypeID();
  if (!Value)
  {
    return -1;
  }

  if (CFGetTypeID(Value) != TypeID)
  {
    return -1;
  }

  Count = CFArrayGetCount(Value);
  if (Count < 1)
  {
    return -1;
  }

  v6 = Count;
  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Value, v7);
    v9 = CFDictionaryGetTypeID();
    if (ValueAtIndex)
    {
      if (CFGetTypeID(ValueAtIndex) == v9)
      {
        v10 = CFDictionaryGetValue(ValueAtIndex, @"Identifier");
        if (CFEqual(a2, v10))
        {
          break;
        }
      }
    }

    if (v6 == ++v7)
    {
      return -1;
    }
  }

  return v7;
}

CFTypeRef VPNServiceCopyAppRule(const void *a1, const void *a2)
{
  if (!isA_VPNService(a1) || (TypeID = CFStringGetTypeID(), !a2) || CFGetTypeID(a2) != TypeID || (Interface = SCNetworkServiceGetInterface(a1)) == 0)
  {
    v13 = 1002;
LABEL_13:
    _SCErrorSet(v13);
    return 0;
  }

  Configuration = SCNetworkInterfaceGetConfiguration(Interface);
  v7 = CFDictionaryGetTypeID();
  if (!Configuration || CFGetTypeID(Configuration) != v7)
  {
    goto LABEL_14;
  }

  app_rule = find_app_rule(Configuration, a2);
  if (app_rule < 0)
  {
    v13 = 1004;
    goto LABEL_13;
  }

  v9 = app_rule;
  Value = CFDictionaryGetValue(Configuration, @"AppRules");
  ValueAtIndex = CFArrayGetValueAtIndex(Value, v9);
  if (!validate_app_rule(ValueAtIndex, 0))
  {
LABEL_14:
    v13 = 1001;
    goto LABEL_13;
  }

  return CFRetain(ValueAtIndex);
}

uint64_t VPNServiceRemoveAppRule(const void *a1, const void *a2)
{
  if (!isA_VPNService(a1) || (TypeID = CFStringGetTypeID(), !a2) || CFGetTypeID(a2) != TypeID || (Interface = SCNetworkServiceGetInterface(a1)) == 0)
  {
    v16 = 1002;
LABEL_13:
    _SCErrorSet(v16);
    return 0;
  }

  v6 = Interface;
  Configuration = SCNetworkInterfaceGetConfiguration(Interface);
  v8 = CFDictionaryGetTypeID();
  if (!Configuration || CFGetTypeID(Configuration) != v8)
  {
    goto LABEL_14;
  }

  app_rule = find_app_rule(Configuration, a2);
  if (app_rule < 0)
  {
    v16 = 1004;
    goto LABEL_13;
  }

  v10 = app_rule;
  Value = CFDictionaryGetValue(Configuration, @"AppRules");
  v12 = CFArrayGetTypeID();
  if (!Value || CFGetTypeID(Value) != v12)
  {
LABEL_14:
    v16 = 1001;
    goto LABEL_13;
  }

  v13 = *MEMORY[0x1E695E480];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, Configuration);
  v15 = CFArrayCreateMutableCopy(v13, 0, Value);
  CFArrayRemoveValueAtIndex(v15, v10);
  if (CFArrayGetCount(v15) < 1)
  {
    CFDictionaryRemoveValue(MutableCopy, @"AppRules");
  }

  else
  {
    CFDictionarySetValue(MutableCopy, @"AppRules", v15);
  }

  SCNetworkInterfaceSetConfiguration(v6, MutableCopy);
  CFRelease(MutableCopy);
  CFRelease(v15);
  return 1;
}

BOOL VPNServiceIsManagedAppVPN(const void *a1)
{
  v1 = SCNetworkServiceCopyExternalID(a1, @"MCVPNUUID");
  TypeID = CFStringGetTypeID();
  if (!v1)
  {
    return 0;
  }

  v3 = CFGetTypeID(v1) == TypeID;
  CFRelease(v1);
  return v3;
}

CFStringRef VPNAppLayerCopyMatchingService(_OWORD *a1, uint64_t a2, const unsigned __int8 *a3, const __CFString *a4, __CFString *a5, const __CFString *a6)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!ne_session_app_vpn_configs_present())
  {
    return 0;
  }

  v12 = a1[1];
  *v16 = *a1;
  *&v16[16] = v12;
  v13 = copy_path_for_app(v16, a2, a3, a4, a5, a6);
  if (v13 && nw_path_is_flow_divert())
  {
    memset(uu, 0, sizeof(uu));
    uuid_clear(uu);
    v14 = 0;
    if (nw_path_get_vpn_config_id())
    {
      memset(v16, 0, sizeof(v16));
      uuid_unparse(uu, v16);
      v14 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v16, 0x600u);
    }
  }

  else
  {
    v14 = 0;
  }

  nw_release(v13);
  return v14;
}

uint64_t copy_path_for_app(void *a1, uint64_t a2, const unsigned __int8 *a3, const __CFString *a4, __CFString *host, const __CFString *a6)
{
  v10 = a2;
  v12 = MEMORY[0x1B26F5100]();
  if (a3 && !uuid_is_null(a3))
  {
    nw_parameters_set_e_proc_uuid();
  }

  if (v10)
  {
    nw_parameters_set_pid();
  }

  if (host)
  {
    Length = CFStringGetLength(host);
    v14 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
    v15 = CFStringGetLength(host);
    if (CFStringGetCString(host, v14, v15 + 1, 0x600u))
    {
      host = nw_endpoint_create_host(v14, "80");
      if (!v14)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    host = 0;
    if (v14)
    {
LABEL_9:
      free(v14);
    }
  }

LABEL_10:
  if (a6)
  {
    v16 = CFStringGetLength(a6);
    v17 = malloc_type_malloc(v16 + 1, 0x100004077774924uLL);
    v18 = CFStringGetLength(a6);
    if (CFStringGetCString(a6, v17, v18 + 1, 0x600u))
    {
      nw_parameters_set_account_id();
    }

    if (v17)
    {
      free(v17);
    }
  }

  if (a4)
  {
    v19 = CFStringGetLength(a4);
    v20 = malloc_type_malloc(v19 + 1, 0x100004077774924uLL);
    v21 = CFStringGetLength(a4);
    if (CFStringGetCString(a4, v20, v21 + 1, 0x600u))
    {
      nw_parameters_set_effective_bundle_id();
    }

    if (v20)
    {
      free(v20);
    }
  }

  if (*a1 | a1[1] | a1[2] | a1[3])
  {
    nw_parameters_set_effective_audit_token();
  }

  if (host || (host = nw_endpoint_create_host("0.0.0.0", "0")) != 0)
  {
    evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
    if (evaluator_for_endpoint)
    {
      v23 = evaluator_for_endpoint;
      v24 = nw_path_evaluator_copy_path();
      nw_release(v23);
    }

    else
    {
      v24 = 0;
    }

    nw_release(host);
  }

  else
  {
    v24 = 0;
  }

  nw_release(v12);
  return v24;
}

uint64_t _SCControlPrefsCreate(const char *a1, uint64_t a2, uint64_t a3)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = a2;
  v4[1] = 0;
  return _SCControlPrefsCreateCommon(a1, v4, a3);
}

uint64_t _SCControlPrefsCreateCommon(const char *a1, uint64_t a2, uint64_t a3)
{
  v51 = *MEMORY[0x1E69E9840];
  if (__SCControlPrefsInitialize_initialized != -1)
  {
    _SCControlPrefsCreateCommon_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(Instance + 16) = strdup(a1);
    prefs = get_prefs(Instance);
    if (prefs)
    {
      if (*a2)
      {
        v8 = prefs;
        context.version = 0;
        memset(&context.retain, 0, 24);
        context.info = Instance;
        *(Instance + 48) = *a2;
        *(Instance + 40) = a3;
        if (SCPreferencesSetCallback(prefs, prefs_changed_sc, &context))
        {
          if (*(a2 + 8))
          {
            if (!SCPreferencesSetDispatchQueue(v8, *a2))
            {
              v9 = _SC_LOG_DEFAULT();
              v10 = _SC_syslog_os_log_mapping(5);
              if (__SC_log_enabled(5, v9, v10))
              {
                v11 = _os_log_pack_size();
                v17 = &context - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
                v18 = *__error();
                v19 = _os_log_pack_fill(v17, v11, v18, &dword_1AD2AD000, "SCPreferencesSetDisaptchQueue() failed: %s");
LABEL_16:
                v40 = v19;
                v41 = SCError();
                v42 = SCErrorString(v41);
                *v40 = 136315138;
                *(v40 + 4) = v42;
                __SC_log_send(5, v9, v10, v17);
                goto LABEL_17;
              }

              goto LABEL_17;
            }
          }

          else
          {
            CFRetain(*a2);
            if (!SCPreferencesScheduleWithRunLoop(v8, *a2, *MEMORY[0x1E695E8D0]))
            {
              v9 = _SC_LOG_DEFAULT();
              v10 = _SC_syslog_os_log_mapping(5);
              if (__SC_log_enabled(5, v9, v10))
              {
                v33 = _os_log_pack_size();
                v17 = &context - ((MEMORY[0x1EEE9AC00](v33, v34, v35, v36, v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
                v39 = *__error();
                v19 = _os_log_pack_fill(v17, v33, v39, &dword_1AD2AD000, "SCPreferencesScheduleWithRunLoop() failed: %s");
                goto LABEL_16;
              }

LABEL_17:
              SCPreferencesSetCallback(v8, 0, 0);
            }
          }

          if (*(Instance + 56))
          {
            global_queue = *(Instance + 48);
            v44 = &v50;
            v50.version = MEMORY[0x1E69E9820];
            v50.info = 0x40000000;
            v50.retain = __enable_prefs_observer_block_invoke;
            v50.release = &__block_descriptor_tmp_23;
            v50.copyDescription = Instance;
          }

          else
          {
            v50.version = 0;
            v50.info = Instance;
            v50.retain = MEMORY[0x1E695D7C8];
            v50.release = MEMORY[0x1E695D7C0];
            memset(&v50.copyDescription, 0, 40);
            v50.perform = prefs_changed;
            v45 = *(Instance + 48);
            v46 = CFRunLoopSourceCreate(0, 0, &v50);
            CFRunLoopAddSource(v45, v46, *MEMORY[0x1E695E8D0]);
            global_queue = dispatch_get_global_queue(0, 0);
            v44 = v49;
            v49[0] = MEMORY[0x1E69E9820];
            v49[1] = 0x40000000;
            v49[2] = __enable_prefs_observer_block_invoke_2;
            v49[3] = &__block_descriptor_tmp_24;
            v49[4] = v46;
            v49[5] = v45;
          }

          _scprefs_observer_watch(2, *(Instance + 16), global_queue, v44);
          return Instance;
        }

        v20 = _SC_LOG_DEFAULT();
        v21 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v20, v21))
        {
          v22 = _os_log_pack_size();
          v28 = &context - ((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
          v29 = __error();
          v30 = _os_log_pack_fill(v28, v22, *v29, &dword_1AD2AD000, "SCPreferencesSetCallBack() failed: %s", context.version);
          v31 = SCError();
          v32 = SCErrorString(v31);
          *v30 = 136315138;
          *(v30 + 4) = v32;
          __SC_log_send(5, v20, v21, v28);
        }
      }
    }
  }

  return Instance;
}

uint64_t _SCControlPrefsCreateWithQueue(const char *a1, uint64_t a2, uint64_t a3)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = a2;
  v4[1] = 1;
  return _SCControlPrefsCreateCommon(a1, v4, a3);
}

uint64_t _SCControlPrefsGetBoolean(uint64_t a1, CFStringRef key)
{
  v4 = *(a1 + 32);
  if (v4 || (v5 = CFStringCreateWithFormat(0, 0, @"%s%s", "/Library/Managed Preferences/mobile/", *(a1 + 16)), *(a1 + 32) = make_prefs(v5), CFRelease(v5), (v4 = *(a1 + 32)) != 0))
  {
    Value = SCPreferencesGetValue(v4, key);
    TypeID = CFBooleanGetTypeID();
    if (Value && CFGetTypeID(Value) == TypeID)
    {
      goto LABEL_9;
    }

    SCPreferencesSynchronize(v4);
  }

  prefs = get_prefs(a1);
  if (!prefs)
  {
    return 0;
  }

  v4 = prefs;
  Value = SCPreferencesGetValue(prefs, key);
  v9 = CFBooleanGetTypeID();
  if (!Value || CFGetTypeID(Value) != v9)
  {
    v10 = 0;
    goto LABEL_11;
  }

LABEL_9:
  v10 = CFBooleanGetValue(Value);
LABEL_11:
  SCPreferencesSynchronize(v4);
  return v10;
}

uint64_t get_prefs(uint64_t a1)
{
  result = *(a1 + 24);
  if (!result)
  {
    v3 = CFStringCreateWithCString(0, *(a1 + 16), 0x8000100u);
    *(a1 + 24) = make_prefs(v3);
    CFRelease(v3);
    return *(a1 + 24);
  }

  return result;
}

uint64_t _SCControlPrefsSetBoolean(uint64_t a1, const __CFString *a2, int a3)
{
  prefs = get_prefs(a1);
  if (!prefs)
  {
    return 0;
  }

  v6 = prefs;
  if (a3)
  {
    SCPreferencesSetValue(prefs, a2, *MEMORY[0x1E695E4D0]);
  }

  else
  {
    SCPreferencesRemoveValue(prefs, a2);
  }

  v8 = SCPreferencesCommitChanges(v6);
  SCPreferencesSynchronize(v6);
  return v8;
}

void prefs_changed_sc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  if (v3)
  {

    v3(a3);
  }
}

void __SCControlPrefsDeallocate(uint64_t a1)
{
  if (*(a1 + 40) && *(a1 + 48))
  {
    v2 = *(a1 + 24);
    if (*(a1 + 56))
    {
      SCPreferencesSetDispatchQueue(v2, 0);
    }

    else
    {
      SCPreferencesSetCallback(v2, 0, 0);
      SCPreferencesUnscheduleFromRunLoop(*(a1 + 24), *(a1 + 48), *MEMORY[0x1E695E8D0]);
      CFRelease(*(a1 + 48));
    }
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    free(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {

    CFRelease(v5);
  }
}

__CFString *__SCControlPrefsCopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<SCControlPrefs %p [%p]> {", a1, v2);
  CFStringAppendFormat(Mutable, 0, @" prefsPlist = %s", *(a1 + 16));
  if (*(a1 + 24))
  {
    CFStringAppendFormat(Mutable, 0, @", prefs = %p", *(a1 + 24));
  }

  if (*(a1 + 32))
  {
    CFStringAppendFormat(Mutable, 0, @", prefs_managed = %p", *(a1 + 32));
  }

  if (*(a1 + 40))
  {
    CFStringAppendFormat(Mutable, 0, @", callback = %p", *(a1 + 40));
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    if (*(a1 + 56))
    {
      v5 = "queue";
    }

    else
    {
      v5 = "runloop";
    }

    CFStringAppendFormat(Mutable, 0, @", %s = %p", v5, v4);
  }

  CFStringAppendFormat(Mutable, 0, @"}");
  return Mutable;
}

uint64_t prefs_changed(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {

    return v1();
  }

  return result;
}

uint64_t __enable_prefs_observer_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v2 = *(result + 40);
  if (v2)
  {

    return v2();
  }

  return result;
}

void __enable_prefs_observer_block_invoke_2(uint64_t a1)
{
  CFRunLoopSourceSignal(*(a1 + 32));
  v2 = *(a1 + 40);

  CFRunLoopWakeUp(v2);
}

uint64_t make_prefs(const __CFString *a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"remove-when-empty", *MEMORY[0x1E695E4D0]);
  v3 = SCPreferencesCreateWithOptions(0, @"_SCControlPrefs", a1, 0, Mutable);
  CFRelease(Mutable);
  return v3;
}

uint64_t SCNetworkCategoryManagerGetTypeID()
{
  if (__SCNetworkCategoryManagerInitialize_initialized != -1)
  {
    SCNetworkCategoryManagerGetTypeID_cold_1();
  }

  return __kSCNetworkCategoryManagerTypeID;
}

uint64_t SCNetworkCategoryManagerCreateWithInterface(const __CFString *a1, SCNetworkInterfaceRef interface, unsigned int a3, uint64_t a4)
{
  Instance = 0;
  v14[5] = *MEMORY[0x1E69E9840];
  v6 = 1002;
  if (a3 <= 1 && !a4)
  {
    Instance = 0;
    if (a1)
    {
      if (interface)
      {
        BSDName = SCNetworkInterfaceGetBSDName(interface);
        if (!BSDName)
        {
          goto LABEL_17;
        }

        v9 = BSDName;
        if (__SCNetworkCategoryManagerInitialize_initialized != -1)
        {
          SCNetworkCategoryManagerGetTypeID_cold_1();
        }

        Instance = _CFRuntimeCreateInstance();
        if (Instance)
        {
          *(Instance + 16) = CFStringCreateCopy(0, a1);
          *(Instance + 32) = a3;
          *(Instance + 24) = CFStringCreateCopy(0, v9);
        }

        v10 = dispatch_queue_create("SCNetworkCategoryManager", 0);
        *(Instance + 56) = v10;
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 0x40000000;
        v14[2] = __SCNetworkCategoryManagerCreateWithInterface_block_invoke;
        v14[3] = &__block_descriptor_tmp_22;
        v14[4] = Instance;
        v11 = CategoryManagerConnectionCreate(v10, v14);
        *(Instance + 48) = v11;
        if (!v11)
        {
          CFRelease(Instance);
          goto LABEL_17;
        }

        v6 = CategoryManagerConnectionRegister(v11, *(Instance + 16), *(Instance + 24), *(Instance + 32));
        if (v6)
        {
          v12 = v6;
          CFRelease(Instance);
          if (v12 == 1)
          {
            Instance = 0;
            v6 = 1003;
            goto LABEL_18;
          }

          if (v12 == 2)
          {
            Instance = 0;
            v6 = 2002;
            goto LABEL_18;
          }

          if (v12 != 22)
          {
            Instance = 0;
            v6 = 1001;
            goto LABEL_18;
          }

LABEL_17:
          Instance = 0;
          v6 = 1002;
        }
      }
    }
  }

LABEL_18:
  _SCErrorSet(v6);
  return Instance;
}

void __SCNetworkCategoryManagerCreateWithInterface_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  if (*(v5 + 48) == a2)
  {
    switch(a3)
    {
      case 3:

        SCNetworkCategoryManagerDeliverNotification(v5);
        break;
      case 2:
        v29 = _SC_LOG_DEFAULT();
        v30 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v29, v30))
        {
          v31 = _os_log_pack_size();
          v37 = &v40 - ((MEMORY[0x1EEE9AC00](v31, v32, v33, v34, v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
          v38 = __error();
          v39 = _os_log_pack_fill(v37, v31, *v38, &dword_1AD2AD000, "%s: re-registering %p\n", v40, v41);
          *v39 = 136315394;
          *(v39 + 4) = "SCNetworkCategoryManagerCreateWithInterface_block_invoke";
          *(v39 + 12) = 2048;
          *(v39 + 14) = a2;
          __SC_log_send(5, v29, v30, v37);
        }

        CategoryManagerConnectionSynchronize(*(*(a1 + 32) + 48), *(*(a1 + 32) + 16), *(*(a1 + 32) + 24), *(*(a1 + 32) + 32), *(*(a1 + 32) + 40));
        break;
      case 1:
        v18 = _SC_LOG_DEFAULT();
        v19 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v18, v19))
        {
          v20 = _os_log_pack_size();
          v26 = &v40 - ((MEMORY[0x1EEE9AC00](v20, v21, v22, v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
          v27 = __error();
          v28 = _os_log_pack_fill(v26, v20, *v27, &dword_1AD2AD000, "%s: invalid connection %p", v40, v41);
          *v28 = 136315394;
          *(v28 + 4) = "SCNetworkCategoryManagerCreateWithInterface_block_invoke";
          *(v28 + 12) = 2048;
          *(v28 + 14) = a2;
          __SC_log_send(5, v18, v19, v26);
        }

        break;
    }
  }

  else
  {
    v6 = _SC_LOG_DEFAULT();
    v7 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v6, v7))
    {
      v8 = _os_log_pack_size();
      v14 = &v40 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = __error();
      v16 = _os_log_pack_fill(v14, v8, *v15, &dword_1AD2AD000, "%s: connection %p != %p", v40, v41, v42);
      v17 = *(*(a1 + 32) + 48);
      *v16 = 136315650;
      *(v16 + 4) = "SCNetworkCategoryManagerCreateWithInterface_block_invoke";
      *(v16 + 12) = 2048;
      *(v16 + 14) = v17;
      *(v16 + 22) = 2048;
      *(v16 + 24) = a2;
      __SC_log_send(5, v6, v7, v14);
    }
  }
}

void SCNetworkCategoryManagerDeliverNotification(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v2 = CategoryManagerConnectionCopyActiveValue(*(a1 + 48), &v29);
  v3 = _SC_LOG_DEFAULT();
  v4 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v3, v4))
  {
    v5 = _os_log_pack_size();
    v11 = block - ((MEMORY[0x1EEE9AC00](v5, v6, v7, v8, v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = __error();
    v13 = _os_log_pack_fill(v11, v5, *v12, &dword_1AD2AD000, "%s: value %@ error %d");
    v14 = v29;
    *v13 = 136315650;
    *(v13 + 4) = "SCNetworkCategoryManagerDeliverNotification";
    *(v13 + 12) = 2112;
    *(v13 + 14) = v2;
    *(v13 + 22) = 1024;
    *(v13 + 24) = v14;
    __SC_log_send(5, v3, v4, v11);
  }

  v15 = *(a1 + 64);
  if (v15)
  {
    global_queue = *(a1 + 72);
    if (!global_queue)
    {
      global_queue = dispatch_get_global_queue(0, 0);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __SCNetworkCategoryManagerDeliverNotification_block_invoke;
    block[3] = &unk_1E79BEE10;
    block[4] = v15;
    block[5] = v2;
    dispatch_async(global_queue, block);
  }

  else
  {
    v17 = _SC_LOG_DEFAULT();
    v18 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v17, v18))
    {
      v19 = _os_log_pack_size();
      v25 = block - ((MEMORY[0x1EEE9AC00](v19, v20, v21, v22, v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = __error();
      v27 = _os_log_pack_fill(v25, v19, *v26, &dword_1AD2AD000, "%s: no handler installed", block[0]);
      *v27 = 136315138;
      *(v27 + 4) = "SCNetworkCategoryManagerDeliverNotification";
      __SC_log_send(5, v17, v18, v25);
    }

    if (v2)
    {
      CFRelease(v2);
    }
  }
}

void SCNetworkCategoryManagerSetNotifyHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __SCNetworkCategoryManagerSetNotifyHandler_block_invoke;
  v3[3] = &unk_1E79BED80;
  v3[5] = a2;
  v3[6] = a1;
  v3[4] = a3;
  dispatch_sync(*(a1 + 56), v3);
}

void *__SCNetworkCategoryManagerSetNotifyHandler_block_invoke(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    dispatch_retain(v2);
  }

  v3 = a1[6];
  v4 = *(v3 + 72);
  if (v4)
  {
    dispatch_release(v4);
    v3 = a1[6];
  }

  *(v3 + 72) = a1[5];
  v5 = *(a1[6] + 64);
  if (v5)
  {
    _Block_release(v5);
  }

  result = a1[4];
  if (result)
  {
    result = _Block_copy(result);
    *(a1[6] + 64) = result;
  }

  return result;
}

BOOL SCNetworkCategoryManagerActivateValue(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __SCNetworkCategoryManagerActivateValue_block_invoke;
  v9[3] = &unk_1E79BEDA8;
  v9[4] = &v10;
  v9[5] = a1;
  v9[6] = a2;
  dispatch_sync(*(a1 + 56), v9);
  v2 = *(v11 + 6);
  if (v2 == 22)
  {
    v3 = 1002;
  }

  else
  {
    v3 = 1001;
  }

  if (v2 == 2)
  {
    v4 = 2002;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 1)
  {
    v5 = 1003;
  }

  else
  {
    v5 = 1001;
  }

  if (!v2)
  {
    v5 = 0;
  }

  if (v2 <= 1)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  _SCErrorSet(v6);
  v7 = *(v11 + 6) == 0;
  _Block_object_dispose(&v10, 8);
  return v7;
}

int64_t __SCNetworkCategoryManagerActivateValue_block_invoke(uint64_t a1)
{
  result = CategoryManagerConnectionActivateValue(*(*(a1 + 40) + 48), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

__CFString *__SCNetworkCategoryManagerCopyActiveValueNoSession(const __CFString *a1, SCNetworkInterfaceRef interface)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  if (__SCNetworkCategoryManagerCopyActiveValueNoSession_initialized != -1)
  {
    __SCNetworkCategoryManagerCopyActiveValueNoSession_cold_1();
  }

  result = __SCNetworkCategoryManagerCopyActiveValueNoSession_connection;
  if (__SCNetworkCategoryManagerCopyActiveValueNoSession_connection)
  {
    if (interface)
    {
      result = SCNetworkInterfaceGetBSDName(interface);
      if (!result)
      {
        return result;
      }

      v5 = result;
      result = __SCNetworkCategoryManagerCopyActiveValueNoSession_connection;
    }

    else
    {
      v5 = 0;
    }

    result = CategoryManagerConnectionCopyActiveValueNoSession(result, a1, v5, &v7);
    if (!result)
    {
      v6 = 1001;
      if (v7 > 1)
      {
        if (v7 == 2)
        {
          v6 = 2002;
        }

        else if (v7 == 22)
        {
          v6 = 1002;
        }
      }

      else if (v7)
      {
        if (v7 == 1)
        {
          v6 = 1003;
        }
      }

      else
      {
        v6 = 0;
      }

      _SCErrorSet(v6);
      return 0;
    }
  }

  return result;
}

void __SCNetworkCategoryManagerDeallocate(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    xpc_release(v5);
    a1[6] = 0;
  }

  v6 = a1[7];
  if (v6)
  {
    dispatch_release(v6);
    a1[7] = 0;
  }

  v7 = a1[9];
  if (v7)
  {
    dispatch_release(v7);
    a1[9] = 0;
  }

  v8 = a1[8];
  if (v8)
  {
    _Block_release(v8);
    a1[8] = 0;
  }
}

uint64_t __SCNetworkCategoryManagerEqual(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4 == v5 || (result = 0, v4) && v5 && (result = CFEqual(*(a1 + 24), v5), result))
  {
    v7 = *(a1 + 16);
    v8 = *(a2 + 16);

    return CFEqual(v7, v8);
  }

  return result;
}

CFHashCode __SCNetworkCategoryManagerHash(uint64_t a1)
{
  v2 = CFHash(*(a1 + 16));
  v3 = *(a1 + 24);
  if (v3)
  {
    v2 ^= CFHash(v3);
  }

  return v2;
}

__CFString *__SCNetworkCategoryManagerCopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<%s %p [%p]> { ID = %@, ifname = %@, flags = 0x%x }", "SCNetworkCategoryManager", a1, v2, *(a1 + 16), *(a1 + 24), *(a1 + 32));
  return Mutable;
}

void __SCNetworkCategoryManagerDeliverNotification_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  if (v1)
  {

    CFRelease(v1);
  }
}

uint64_t IPMonitorControlCreate()
{
  v4[5] = *MEMORY[0x1E69E9840];
  if (__IPMonitorControlRegisterClass_once != -1)
  {
    IPMonitorControlCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v1 = dispatch_queue_create("IPMonitorControl", 0);
  mach_service = xpc_connection_create_mach_service("com.apple.SystemConfiguration.IPMonitorControl", v1, 2uLL);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __IPMonitorControlCreate_block_invoke;
  v4[3] = &__block_descriptor_tmp_23;
  v4[4] = Instance;
  xpc_connection_set_event_handler(mach_service, v4);
  *(Instance + 16) = v1;
  *(Instance + 24) = mach_service;
  xpc_connection_resume(mach_service);
  return Instance;
}

void __IPMonitorControlCreate_block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  IPMonitorControlHandleResponse(a2, 1, &v6);
  if (v6)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    if (v4)
    {
      CFDictionaryApplyFunction(v4, ApplyInterfaceRank, *(v3 + 24));
      v3 = *(a1 + 32);
    }

    v5 = *(v3 + 40);
    if (v5)
    {
      CFDictionaryApplyFunction(v5, ApplyInterfaceAdvisory, *(v3 + 24));
    }
  }
}

BOOL IPMonitorControlHandleResponse(void *a1, int a2, char *a3)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1B26F5920]();
  if (v6 == MEMORY[0x1E69E9E80])
  {
    if (a2)
    {
      v21 = _SC_LOG_DEFAULT();
      v22 = _SC_syslog_os_log_mapping(5);
      result = __SC_log_enabled(5, v21, v22);
      if (result)
      {
        v23 = _os_log_pack_size();
        v29 = v40 - ((MEMORY[0x1EEE9AC00](v23, v24, v25, v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
        v30 = __error();
        *_os_log_pack_fill(v29, v23, *v30, &dword_1AD2AD000, "unexpected message") = 0;
        __SC_log_send(5, v21, v22, v29);
LABEL_12:
        result = 0;
        goto LABEL_13;
      }

      goto LABEL_13;
    }

    int64 = xpc_dictionary_get_int64(a1, "Error");
    v38 = 0;
    result = int64 == 0;
  }

  else
  {
    string = v6;
    if (v6 != MEMORY[0x1E69E9E98])
    {
      v8 = _SC_LOG_DEFAULT();
      v9 = _SC_syslog_os_log_mapping(5);
      result = __SC_log_enabled(5, v8, v9);
      if (result)
      {
        v11 = _os_log_pack_size();
        v17 = v40 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
        v18 = __error();
        v19 = _os_log_pack_fill(v17, v11, *v18, &dword_1AD2AD000, "unknown event type : %p", v40[0]);
        v20 = 134217984;
LABEL_11:
        *v19 = v20;
        *(v19 + 4) = string;
        __SC_log_send(5, v8, v9, v17);
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    if (a1 != MEMORY[0x1E69E9E18])
    {
      string = xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
      v8 = _SC_LOG_DEFAULT();
      v9 = _SC_syslog_os_log_mapping(5);
      result = __SC_log_enabled(5, v8, v9);
      if (result)
      {
        v31 = _os_log_pack_size();
        v17 = v40 - ((MEMORY[0x1EEE9AC00](v31, v32, v33, v34, v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
        v37 = __error();
        v19 = _os_log_pack_fill(v17, v31, *v37, &dword_1AD2AD000, "%s", v40[0]);
        v20 = 136315138;
        goto LABEL_11;
      }

LABEL_13:
      v38 = 0;
      goto LABEL_14;
    }

    result = 0;
    v38 = 1;
  }

LABEL_14:
  if (a3)
  {
    *a3 = v38;
  }

  return result;
}

void ApplyInterfaceRank(const __CFString *a1, const __CFNumber *a2, _xpc_connection_s *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  if (CFStringGetCString(a1, buffer, 16, 0x8000100u))
  {
    if (CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr))
    {
      request_dictionary = create_request_dictionary();
      xpc_dictionary_set_int64(request_dictionary, "Type", 1);
      xpc_dictionary_set_string(request_dictionary, "InterfaceName", buffer);
      xpc_dictionary_set_int64(request_dictionary, "PrimaryRank", valuePtr);
      xpc_connection_send_message(a3, request_dictionary);
      xpc_release(request_dictionary);
    }
  }
}

void ApplyInterfaceAdvisory(const __CFString *a1, const __CFNumber *a2, _xpc_connection_s *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  if (CFStringGetCString(a1, buffer, 16, 0x8000100u))
  {
    if (CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr))
    {
      request_dictionary = create_request_dictionary();
      xpc_dictionary_set_int64(request_dictionary, "Type", 3);
      xpc_dictionary_set_string(request_dictionary, "InterfaceName", buffer);
      xpc_dictionary_set_int64(request_dictionary, "Advisory", valuePtr);
      xpc_connection_send_message(a3, request_dictionary);
      xpc_release(request_dictionary);
    }
  }
}

uint64_t IPMonitorControlSetInterfacePrimaryRank(void *a1, CFStringRef theString, unsigned int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  result = CFStringGetCString(theString, buffer, 16, 0x8000100u);
  if (result)
  {
    request_dictionary = create_request_dictionary();
    xpc_dictionary_set_int64(request_dictionary, "Type", 1);
    xpc_dictionary_set_string(request_dictionary, "InterfaceName", buffer);
    xpc_dictionary_set_int64(request_dictionary, "PrimaryRank", a3);
    v8 = IPMonitorControlSendRequest(a1, request_dictionary);
    xpc_release(request_dictionary);
    if (v8)
    {
      xpc_release(v8);
      CFRetain(theString);
      CFRetain(a1);
      v9 = a1[2];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 0x40000000;
      v10[2] = __IPMonitorControlSetInterfacePrimaryRank_block_invoke;
      v10[3] = &__block_descriptor_tmp_7_1;
      v10[4] = a1;
      v10[5] = theString;
      v11 = a3;
      dispatch_async(v9, v10);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

xpc_object_t create_request_dictionary()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  v1 = getprogname();
  if (v1)
  {
    xpc_dictionary_set_string(v0, "ProcessName", v1);
  }

  return v0;
}

xpc_object_t IPMonitorControlSendRequest(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v4 = xpc_connection_send_message_with_reply_sync(*(a1 + 24), a2);
  if (v4)
  {
    v5 = v4;
    while (!IPMonitorControlHandleResponse(v5, 0, &v26))
    {
      xpc_release(v5);
      if (!v26)
      {
        v6 = _SC_LOG_DEFAULT();
        v7 = _SC_syslog_os_log_mapping(5);
        if (!__SC_log_enabled(5, v6, v7))
        {
          return 0;
        }

        v17 = _os_log_pack_size();
        v14 = &v25[-((MEMORY[0x1EEE9AC00](v17, v18, v19, v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0)];
        v23 = *__error();
        v16 = _os_log_pack_fill(v14, v17, v23, &dword_1AD2AD000, "fatal error");
        goto LABEL_10;
      }

      v26 = 0;
      v5 = xpc_connection_send_message_with_reply_sync(*(a1 + 24), a2);
      if (!v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v6 = _SC_LOG_DEFAULT();
    v7 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v6, v7))
    {
      v8 = _os_log_pack_size();
      v14 = &v25[-((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v15 = *__error();
      v16 = _os_log_pack_fill(v14, v8, v15, &dword_1AD2AD000, "failed to send message");
LABEL_10:
      *v16 = 0;
      __SC_log_send(5, v6, v7, v14);
    }

    return 0;
  }

  return v5;
}

void __IPMonitorControlSetInterfacePrimaryRank_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  valuePtr = v4;
  v5 = *(v3 + 32);
  if (!v5)
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    *(v3 + 32) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
LABEL_8:
    v7 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(*(v3 + 32), v2, v7);
    CFRelease(v7);
    goto LABEL_9;
  }

  if (v4)
  {
    goto LABEL_8;
  }

  CFDictionaryRemoveValue(v5, v2);
  if (!CFDictionaryGetCount(*(v3 + 32)))
  {
    v6 = *(v3 + 32);
    if (v6)
    {
      CFRelease(v6);
      *(v3 + 32) = 0;
    }
  }

LABEL_9:
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 32));
}

int64_t IPMonitorControlGetInterfacePrimaryRank(uint64_t a1, CFStringRef theString)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!CFStringGetCString(theString, buffer, 16, 0x8000100u))
  {
    return 0;
  }

  request_dictionary = create_request_dictionary();
  xpc_dictionary_set_int64(request_dictionary, "Type", 2);
  xpc_dictionary_set_string(request_dictionary, "InterfaceName", buffer);
  v4 = IPMonitorControlSendRequest(a1, request_dictionary);
  if (v4)
  {
    v5 = v4;
    int64 = xpc_dictionary_get_int64(v4, "PrimaryRank");
    xpc_release(v5);
  }

  else
  {
    int64 = 0;
  }

  xpc_release(request_dictionary);
  return int64;
}

CFStringRef IPMonitorControlCopyInterfaceRankAssertionNotificationKey(CFStringRef ifname)
{

  return SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, @"State:", ifname, @"RankAssertion");
}

uint64_t cfdict_get_number(const __CFDictionary *a1, const void *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  Value = CFDictionaryGetValue(a1, a2);
  TypeID = CFNumberGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  CFNumberGetValue(Value, kCFNumberSInt64Type, v5);
  return v5[0];
}

const void *InterfaceRankAssertionInfoGetProcessName(const __CFDictionary *a1)
{

  return CFDictionaryGetValue(a1, @"ProcessName");
}

uint64_t IPMonitorControlCopyInterfaceRankAssertionInfo(uint64_t a1, const __CFString *a2)
{

  return CopyAssertionOrAdvisoryInfo(a1, a2, 6u, "RankAssertionInfo");
}

uint64_t CopyAssertionOrAdvisoryInfo(uint64_t a1, CFStringRef theString, unsigned int a3, const char *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!CFStringGetCString(theString, buffer, 16, 0x8000100u))
  {
    return 0;
  }

  request_dictionary = create_request_dictionary();
  xpc_dictionary_set_int64(request_dictionary, "Type", a3);
  xpc_dictionary_set_string(request_dictionary, "InterfaceName", buffer);
  v8 = IPMonitorControlSendRequest(a1, request_dictionary);
  if (v8)
  {
    v9 = v8;
    if (xpc_dictionary_get_value(v8, a4))
    {
      v10 = _CFXPCCreateCFObjectFromXPCObject();
    }

    else
    {
      v10 = 0;
    }

    xpc_release(v9);
  }

  else
  {
    v10 = 0;
  }

  xpc_release(request_dictionary);
  return v10;
}

uint64_t IPMonitorControlCopyInterfaceRankAssertionInterfaceNames(uint64_t a1)
{

  return CopyInterfaceNames(a1, 8u);
}

uint64_t CopyInterfaceNames(uint64_t a1, unsigned int a2)
{
  request_dictionary = create_request_dictionary();
  xpc_dictionary_set_int64(request_dictionary, "Type", a2);
  v5 = IPMonitorControlSendRequest(a1, request_dictionary);
  if (v5)
  {
    v6 = v5;
    if (xpc_dictionary_get_value(v5, "InterfaceNames"))
    {
      v7 = _CFXPCCreateCFObjectFromXPCObject();
    }

    else
    {
      v7 = 0;
    }

    xpc_release(v6);
  }

  else
  {
    v7 = 0;
  }

  xpc_release(request_dictionary);
  return v7;
}

uint64_t IPMonitorControlSetInterfaceAdvisory(void *a1, CFStringRef theString, unsigned int a3, const __CFString *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  result = CFStringGetCString(theString, buffer, 16, 0x8000100u);
  if (result)
  {
    if (a4)
    {
      v9 = _SC_cfstring_to_cstring(a4, 0, 0, 0x8000100u);
    }

    else
    {
      v9 = 0;
    }

    request_dictionary = create_request_dictionary();
    xpc_dictionary_set_int64(request_dictionary, "Type", 3);
    xpc_dictionary_set_string(request_dictionary, "InterfaceName", buffer);
    xpc_dictionary_set_int64(request_dictionary, "Advisory", a3);
    if (v9)
    {
      xpc_dictionary_set_string(request_dictionary, "Reason", v9);
      CFAllocatorDeallocate(0, v9);
    }

    v11 = IPMonitorControlSendRequest(a1, request_dictionary);
    xpc_release(request_dictionary);
    if (v11)
    {
      xpc_release(v11);
      CFRetain(theString);
      CFRetain(a1);
      v12 = a1[2];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = __IPMonitorControlSetInterfaceAdvisory_block_invoke;
      v13[3] = &__block_descriptor_tmp_18;
      v13[4] = a1;
      v13[5] = theString;
      v14 = a3;
      dispatch_async(v12, v13);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void __IPMonitorControlSetInterfaceAdvisory_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  valuePtr = v4;
  v5 = *(v3 + 40);
  if (!v5)
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    *(v3 + 40) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
LABEL_8:
    v7 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(*(v3 + 40), v2, v7);
    CFRelease(v7);
    goto LABEL_9;
  }

  if (v4)
  {
    goto LABEL_8;
  }

  CFDictionaryRemoveValue(v5, v2);
  if (!CFDictionaryGetCount(*(v3 + 40)))
  {
    v6 = *(v3 + 40);
    if (v6)
    {
      CFRelease(v6);
      *(v3 + 40) = 0;
    }
  }

LABEL_9:
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 32));
}

BOOL IPMonitorControlIsInterfaceAdvisorySet(uint64_t a1, CFStringRef theString, unsigned int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!CFStringGetCString(theString, buffer, 16, 0x8000100u))
  {
    return 0;
  }

  request_dictionary = create_request_dictionary();
  xpc_dictionary_set_int64(request_dictionary, "Type", 4);
  xpc_dictionary_set_string(request_dictionary, "InterfaceName", buffer);
  if (a3)
  {
    xpc_dictionary_set_int64(request_dictionary, "Advisory", a3);
  }

  v6 = IPMonitorControlSendRequest(a1, request_dictionary);
  xpc_release(request_dictionary);
  if (!v6)
  {
    return 0;
  }

  v7 = xpc_dictionary_get_BOOL(v6, "AdvisoryIsSet");
  xpc_release(v6);
  return v7;
}

BOOL IPMonitorControlAnyInterfaceAdvisoryIsSet(uint64_t a1)
{
  request_dictionary = create_request_dictionary();
  xpc_dictionary_set_int64(request_dictionary, "Type", 5);
  v3 = IPMonitorControlSendRequest(a1, request_dictionary);
  xpc_release(request_dictionary);
  if (!v3)
  {
    return 0;
  }

  v4 = xpc_dictionary_get_BOOL(v3, "AdvisoryIsSet");
  xpc_release(v3);
  return v4;
}

CFStringRef IPMonitorControlCopyInterfaceAdvisoryNotificationKey(CFStringRef ifname)
{

  return SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, @"State:", ifname, @"Advisory");
}

uint64_t IPMonitorControlCopyInterfaceAdvisoryInfo(uint64_t a1, const __CFString *a2)
{

  return CopyAssertionOrAdvisoryInfo(a1, a2, 7u, "AdvisoryInfo");
}

uint64_t IPMonitorControlCopyInterfaceAdvisoryInterfaceNames(uint64_t a1)
{

  return CopyInterfaceNames(a1, 9u);
}

void __IPMonitorControlDeallocate(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    xpc_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
    a1[4] = 0;
  }
}

uint64_t configlist(mach_port_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t *a5, unsigned int *a6, _DWORD *a7)
{
  v24 = *MEMORY[0x1E69E9840];
  msg.msgh_id = 0;
  v22 = 0;
  v23 = 0u;
  *&msg.msgh_size = 0u;
  v18 = 1;
  v19 = a2;
  v20 = 16777472;
  v21 = a3;
  v22 = *MEMORY[0x1E69E99E0];
  *&v23 = __PAIR64__(a4, a3);
  special_reply_port = mig_get_special_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4E2800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v13 = mach_msg(&msg, 3162115, 0x3Cu, 0x44u, msgh_local_port, 0, 0);
  v14 = v13;
  if ((v13 - 268435458) > 0xE || ((1 << (v13 - 2)) & 0x4003) == 0)
  {
    if (!v13)
    {
      if (msg.msgh_id == 71)
      {
        v14 = 4294966988;
      }

      else if (msg.msgh_id == 20108)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 36)
          {
            v14 = 4294966996;
            if (HIDWORD(v19))
            {
              if (msg.msgh_remote_port)
              {
                v14 = 4294966996;
              }

              else
              {
                v14 = HIDWORD(v19);
              }
            }
          }

          else
          {
            v14 = 4294966996;
          }

          goto LABEL_25;
        }

        v14 = 4294966996;
        if (v18 == 1 && msg.msgh_size == 60 && !msg.msgh_remote_port && HIBYTE(v20) == 1)
        {
          v15 = v21;
          if (v21 == v23)
          {
            v14 = 0;
            *a5 = v19;
            *a6 = v15;
            *a7 = DWORD1(v23);
            return v14;
          }
        }
      }

      else
      {
        v14 = 4294966995;
      }

LABEL_25:
      mach_msg_destroy(&msg);
      return v14;
    }

    mig_dealloc_special_reply_port();
  }

  return v14;
}

uint64_t configadd(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int *a6, int *a7)
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = 2;
  v19 = a2;
  v20 = 16777472;
  v21 = a3;
  v22 = a4;
  v23 = 16777472;
  v24 = a5;
  v25 = *MEMORY[0x1E69E99E0];
  v26 = a3;
  v27 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x4E2900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v12 = mach_msg(&msg, 3162115, 0x4Cu, 0x34u, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (msg.msgh_id == 71)
      {
        v13 = 4294966988;
      }

      else if (msg.msgh_id == 20109)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 44)
          {
            if (!msg.msgh_remote_port)
            {
              v13 = HIDWORD(v19);
              if (!HIDWORD(v19))
              {
                v16 = v21;
                *a6 = v20;
                *a7 = v16;
                return v13;
              }

              goto LABEL_23;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v14 = 1;
            }

            else
            {
              v14 = HIDWORD(v19) == 0;
            }

            if (v14)
            {
              v13 = 4294966996;
            }

            else
            {
              v13 = HIDWORD(v19);
            }

            goto LABEL_23;
          }
        }

        v13 = 4294966996;
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      return v13;
    }

    mig_dealloc_special_reply_port();
  }

  return v13;
}

uint64_t configremove(mach_port_t a1, uint64_t a2, int a3, int *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v13 = 1;
  v14 = a2;
  v15 = 16777472;
  v16 = a3;
  v17 = *MEMORY[0x1E69E99E0];
  v18 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v12.msgh_bits = 2147489043;
  v12.msgh_remote_port = a1;
  v12.msgh_local_port = special_reply_port;
  *&v12.msgh_voucher_port = 0x4E2C00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v12);
    msgh_local_port = v12.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&v12, 3162115, 0x38u, 0x30u, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (v12.msgh_id == 71)
      {
        v9 = 4294966988;
      }

      else if (v12.msgh_id == 20112)
      {
        if ((v12.msgh_bits & 0x80000000) == 0)
        {
          if (v12.msgh_size == 40)
          {
            if (!v12.msgh_remote_port)
            {
              v9 = HIDWORD(v14);
              if (!HIDWORD(v14))
              {
                *a4 = v15;
                return v9;
              }

              goto LABEL_23;
            }
          }

          else if (v12.msgh_size == 36)
          {
            if (v12.msgh_remote_port)
            {
              v10 = 1;
            }

            else
            {
              v10 = HIDWORD(v14) == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = HIDWORD(v14);
            }

            goto LABEL_23;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v12);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  return v9;
}

uint64_t configadd_s(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int *a6, int *a7)
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = 2;
  v19 = a2;
  v20 = 16777472;
  v21 = a3;
  v22 = a4;
  v23 = 16777472;
  v24 = a5;
  v25 = *MEMORY[0x1E69E99E0];
  v26 = a3;
  v27 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x4E2E00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v12 = mach_msg(&msg, 3162115, 0x4Cu, 0x34u, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (msg.msgh_id == 71)
      {
        v13 = 4294966988;
      }

      else if (msg.msgh_id == 20114)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 44)
          {
            if (!msg.msgh_remote_port)
            {
              v13 = HIDWORD(v19);
              if (!HIDWORD(v19))
              {
                v16 = v21;
                *a6 = v20;
                *a7 = v16;
                return v13;
              }

              goto LABEL_23;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v14 = 1;
            }

            else
            {
              v14 = HIDWORD(v19) == 0;
            }

            if (v14)
            {
              v13 = 4294966996;
            }

            else
            {
              v13 = HIDWORD(v19);
            }

            goto LABEL_23;
          }
        }

        v13 = 4294966996;
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      return v13;
    }

    mig_dealloc_special_reply_port();
  }

  return v13;
}

uint64_t confignotify(mach_port_t a1, uint64_t a2, int a3, int *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v13 = 1;
  v14 = a2;
  v15 = 16777472;
  v16 = a3;
  v17 = *MEMORY[0x1E69E99E0];
  v18 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v12.msgh_bits = 2147489043;
  v12.msgh_remote_port = a1;
  v12.msgh_local_port = special_reply_port;
  *&v12.msgh_voucher_port = 0x4E2F00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v12);
    msgh_local_port = v12.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&v12, 3162115, 0x38u, 0x30u, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (v12.msgh_id == 71)
      {
        v9 = 4294966988;
      }

      else if (v12.msgh_id == 20115)
      {
        if ((v12.msgh_bits & 0x80000000) == 0)
        {
          if (v12.msgh_size == 40)
          {
            if (!v12.msgh_remote_port)
            {
              v9 = HIDWORD(v14);
              if (!HIDWORD(v14))
              {
                *a4 = v15;
                return v9;
              }

              goto LABEL_23;
            }
          }

          else if (v12.msgh_size == 36)
          {
            if (v12.msgh_remote_port)
            {
              v10 = 1;
            }

            else
            {
              v10 = HIDWORD(v14) == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = HIDWORD(v14);
            }

            goto LABEL_23;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v12);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  return v9;
}

uint64_t notifyadd(mach_port_t a1, uint64_t a2, int a3, int a4, int *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = 1;
  v15 = a2;
  v16 = 16777472;
  v17 = a3;
  v18 = *MEMORY[0x1E69E99E0];
  v19 = a3;
  v20 = a4;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x4E3200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v9 = mach_msg(&msg, 3162115, 0x3Cu, 0x30u, msgh_local_port, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (msg.msgh_id == 71)
      {
        v10 = 4294966988;
      }

      else if (msg.msgh_id == 20118)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v10 = HIDWORD(v15);
              if (!HIDWORD(v15))
              {
                *a5 = v16;
                return v10;
              }

              goto LABEL_23;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v11 = 1;
            }

            else
            {
              v11 = HIDWORD(v15) == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = HIDWORD(v15);
            }

            goto LABEL_23;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      return v10;
    }

    mig_dealloc_special_reply_port();
  }

  return v10;
}

uint64_t notifyremove(mach_port_t a1, uint64_t a2, int a3, int a4, int *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = 1;
  v15 = a2;
  v16 = 16777472;
  v17 = a3;
  v18 = *MEMORY[0x1E69E99E0];
  v19 = a3;
  v20 = a4;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x4E3300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v9 = mach_msg(&msg, 3162115, 0x3Cu, 0x30u, msgh_local_port, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (msg.msgh_id == 71)
      {
        v10 = 4294966988;
      }

      else if (msg.msgh_id == 20119)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v10 = HIDWORD(v15);
              if (!HIDWORD(v15))
              {
                *a5 = v16;
                return v10;
              }

              goto LABEL_23;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v11 = 1;
            }

            else
            {
              v11 = HIDWORD(v15) == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = HIDWORD(v15);
            }

            goto LABEL_23;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      return v10;
    }

    mig_dealloc_special_reply_port();
  }

  return v10;
}

uint64_t notifycancel(mach_port_t a1, mach_port_t *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  *&msg[1].msgh_remote_port = 0u;
  *&msg[0].msgh_id = 0u;
  msg[0].msgh_size = 0;
  special_reply_port = mig_get_special_reply_port();
  msg[0].msgh_remote_port = a1;
  msg[0].msgh_local_port = special_reply_port;
  msg[0].msgh_bits = 5395;
  *&msg[0].msgh_voucher_port = 0x4E3800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    msgh_local_port = msg[0].msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v6 = mach_msg(msg, 3162115, 0x18u, 0x30u, msgh_local_port, 0, 0);
  msgh_remote_port = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (msg[0].msgh_id == 71)
      {
        msgh_remote_port = 4294966988;
      }

      else if (msg[0].msgh_id == 20124)
      {
        if ((msg[0].msgh_bits & 0x80000000) == 0)
        {
          if (msg[0].msgh_size == 40)
          {
            if (!msg[0].msgh_remote_port)
            {
              msgh_remote_port = msg[1].msgh_remote_port;
              if (!msg[1].msgh_remote_port)
              {
                *a2 = msg[1].msgh_local_port;
                return msgh_remote_port;
              }

              goto LABEL_23;
            }
          }

          else if (msg[0].msgh_size == 36)
          {
            if (msg[0].msgh_remote_port)
            {
              v8 = 1;
            }

            else
            {
              v8 = msg[1].msgh_remote_port == 0;
            }

            if (v8)
            {
              msgh_remote_port = 4294966996;
            }

            else
            {
              msgh_remote_port = msg[1].msgh_remote_port;
            }

            goto LABEL_23;
          }
        }

        msgh_remote_port = 4294966996;
      }

      else
      {
        msgh_remote_port = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return msgh_remote_port;
    }

    mig_dealloc_special_reply_port();
  }

  return msgh_remote_port;
}

uint64_t notifyviafd(int a1, int a2, int a3, int *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  *&msg[20] = 0u;
  *&msg[4] = 0u;
  *&msg[24] = 1;
  *&msg[28] = a2;
  v13 = 1114112;
  v14 = *MEMORY[0x1E69E99E0];
  v15 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = -2147478253;
  *&msg[16] = 0x4E3A00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v7 = *&msg[12];
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(msg, 3162115, 0x34u, 0x30u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&msg[20] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg[20] == 20126)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 40)
          {
            if (!*&msg[8])
            {
              v9 = *&msg[32];
              if (!*&msg[32])
              {
                *a4 = v13;
                return v9;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v10 = 1;
            }

            else
            {
              v10 = *&msg[32] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&msg[32];
            }

            goto LABEL_23;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  return v9;
}

uint64_t snapshot(mach_port_t a1, mach_port_t *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  *&msg[1].msgh_remote_port = 0u;
  *&msg[0].msgh_id = 0u;
  msg[0].msgh_size = 0;
  special_reply_port = mig_get_special_reply_port();
  msg[0].msgh_remote_port = a1;
  msg[0].msgh_local_port = special_reply_port;
  msg[0].msgh_bits = 5395;
  *&msg[0].msgh_voucher_port = 0x4E3D00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    msgh_local_port = msg[0].msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v6 = mach_msg(msg, 3162115, 0x18u, 0x30u, msgh_local_port, 0, 0);
  msgh_remote_port = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (msg[0].msgh_id == 71)
      {
        msgh_remote_port = 4294966988;
      }

      else if (msg[0].msgh_id == 20129)
      {
        if ((msg[0].msgh_bits & 0x80000000) == 0)
        {
          if (msg[0].msgh_size == 40)
          {
            if (!msg[0].msgh_remote_port)
            {
              msgh_remote_port = msg[1].msgh_remote_port;
              if (!msg[1].msgh_remote_port)
              {
                *a2 = msg[1].msgh_local_port;
                return msgh_remote_port;
              }

              goto LABEL_23;
            }
          }

          else if (msg[0].msgh_size == 36)
          {
            if (msg[0].msgh_remote_port)
            {
              v8 = 1;
            }

            else
            {
              v8 = msg[1].msgh_remote_port == 0;
            }

            if (v8)
            {
              msgh_remote_port = 4294966996;
            }

            else
            {
              msgh_remote_port = msg[1].msgh_remote_port;
            }

            goto LABEL_23;
          }
        }

        msgh_remote_port = 4294966996;
      }

      else
      {
        msgh_remote_port = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return msgh_remote_port;
    }

    mig_dealloc_special_reply_port();
  }

  return msgh_remote_port;
}

uint64_t helperinit(int a1, _DWORD *a2, _DWORD *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  *&msg[20] = 0u;
  v13 = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x55F000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v7 = *&msg[12];
  }

  else
  {
    v7 = reply_port;
  }

  v8 = mach_msg(msg, 3, 0x18u, 0x3Cu, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v8)
    {
      if (*&msg[20] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg[20] == 22100)
      {
        if ((*msg & 0x80000000) != 0)
        {
          v9 = 4294966996;
          if (*&msg[24] == 1 && *&msg[4] == 52 && !*&msg[8] && WORD1(v13) << 16 == 1114112)
          {
            v9 = 0;
            v10 = HIDWORD(v13);
            *a2 = *&msg[28];
            *a3 = v10;
            return v9;
          }
        }

        else if (*&msg[4] == 36)
        {
          v9 = 4294966996;
          if (*&msg[32])
          {
            if (*&msg[8])
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&msg[32];
            }
          }
        }

        else
        {
          v9 = 4294966996;
        }
      }

      else
      {
        v9 = 4294966995;
      }

      mach_msg_destroy(msg);
      return v9;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  return v9;
}

uint64_t pppcontroller_attach(mach_port_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, _DWORD *a7, _DWORD *a8)
{
  v30 = *MEMORY[0x1E69E9840];
  msg.msgh_id = 0;
  *&msg.msgh_size = 0u;
  v18 = 4;
  v19 = a2;
  v20 = 16777472;
  v21 = a3;
  v22 = a4;
  v23 = 1245184;
  v24 = a5;
  v25 = 1114112;
  v26 = a6;
  v27 = 1245184;
  v28 = *MEMORY[0x1E69E99E0];
  v29 = a3;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x465000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v13 = mach_msg(&msg, 3, 0x5Cu, 0x3Cu, msgh_local_port, 0, 0);
  v14 = v13;
  if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v13)
    {
      if (msg.msgh_id == 71)
      {
        v14 = 4294966988;
      }

      else if (msg.msgh_id == 18100)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v14 = 4294966996;
          if (v18 == 1 && msg.msgh_size == 52 && !msg.msgh_remote_port && HIWORD(v20) << 16 == 1114112)
          {
            v14 = 0;
            v15 = HIDWORD(v22);
            *a7 = v19;
            *a8 = v15;
            return v14;
          }
        }

        else if (msg.msgh_size == 36)
        {
          v14 = 4294966996;
          if (HIDWORD(v19))
          {
            if (msg.msgh_remote_port)
            {
              v14 = 4294966996;
            }

            else
            {
              v14 = HIDWORD(v19);
            }
          }
        }

        else
        {
          v14 = 4294966996;
        }
      }

      else
      {
        v14 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v14;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v14;
}

uint64_t pppcontroller_getstatus(int a1, _DWORD *a2, _DWORD *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x465100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v7 = *&msg[12];
  }

  else
  {
    v7 = reply_port;
  }

  v8 = mach_msg(msg, 3, 0x18u, 0x34u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(*&msg[12]);
      return v9;
    }

    if (*&msg[20] == 71)
    {
      v9 = 4294966988;
    }

    else if (*&msg[20] == 18101)
    {
      if ((*msg & 0x80000000) == 0)
      {
        if (*&msg[4] == 44)
        {
          if (!*&msg[8])
          {
            v9 = *&msg[32];
            if (!*&msg[32])
            {
              v12 = DWORD1(v14);
              *a2 = v14;
              *a3 = v12;
              return v9;
            }

            goto LABEL_24;
          }
        }

        else if (*&msg[4] == 36)
        {
          if (*&msg[8])
          {
            v10 = 1;
          }

          else
          {
            v10 = *&msg[32] == 0;
          }

          if (v10)
          {
            v9 = 4294966996;
          }

          else
          {
            v9 = *&msg[32];
          }

          goto LABEL_24;
        }
      }

      v9 = 4294966996;
    }

    else
    {
      v9 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(msg);
    return v9;
  }

  mig_put_reply_port(*&msg[12]);
  return v9;
}

uint64_t pppcontroller_copyextendedstatus(int a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v15 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x465200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = reply_port;
  }

  v10 = mach_msg(msg, 3, 0x18u, 0x44u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 18102)
      {
        if ((*msg & 0x80000000) != 0)
        {
          v11 = 4294966996;
          if (*&msg[24] == 1 && *&msg[4] == 60 && !*&msg[8] && BYTE3(v15) == 1)
          {
            v12 = DWORD1(v15);
            if (DWORD1(v15) == v16)
            {
              v11 = 0;
              *a2 = *&msg[28];
              *a3 = v12;
              *a4 = DWORD1(v16);
              return v11;
            }
          }
        }

        else if (*&msg[4] == 36)
        {
          v11 = 4294966996;
          if (*&msg[32])
          {
            if (*&msg[8])
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = *&msg[32];
            }
          }
        }

        else
        {
          v11 = 4294966996;
        }
      }

      else
      {
        v11 = 4294966995;
      }

      mach_msg_destroy(msg);
      return v11;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  return v11;
}

uint64_t pppcontroller_copystatistics(int a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v15 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x465300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = reply_port;
  }

  v10 = mach_msg(msg, 3, 0x18u, 0x44u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 18103)
      {
        if ((*msg & 0x80000000) != 0)
        {
          v11 = 4294966996;
          if (*&msg[24] == 1 && *&msg[4] == 60 && !*&msg[8] && BYTE3(v15) == 1)
          {
            v12 = DWORD1(v15);
            if (DWORD1(v15) == v16)
            {
              v11 = 0;
              *a2 = *&msg[28];
              *a3 = v12;
              *a4 = DWORD1(v16);
              return v11;
            }
          }
        }

        else if (*&msg[4] == 36)
        {
          v11 = 4294966996;
          if (*&msg[32])
          {
            if (*&msg[8])
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = *&msg[32];
            }
          }
        }

        else
        {
          v11 = 4294966996;
        }
      }

      else
      {
        v11 = 4294966995;
      }

      mach_msg_destroy(msg);
      return v11;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  return v11;
}

uint64_t pppcontroller_copyuseroptions(int a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v15 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x465400000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = reply_port;
  }

  v10 = mach_msg(msg, 3, 0x18u, 0x44u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 18104)
      {
        if ((*msg & 0x80000000) != 0)
        {
          v11 = 4294966996;
          if (*&msg[24] == 1 && *&msg[4] == 60 && !*&msg[8] && BYTE3(v15) == 1)
          {
            v12 = DWORD1(v15);
            if (DWORD1(v15) == v16)
            {
              v11 = 0;
              *a2 = *&msg[28];
              *a3 = v12;
              *a4 = DWORD1(v16);
              return v11;
            }
          }
        }

        else if (*&msg[4] == 36)
        {
          v11 = 4294966996;
          if (*&msg[32])
          {
            if (*&msg[8])
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = *&msg[32];
            }
          }
        }

        else
        {
          v11 = 4294966996;
        }
      }

      else
      {
        v11 = 4294966995;
      }

      mach_msg_destroy(msg);
      return v11;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  return v11;
}

uint64_t pppcontroller_start(mach_port_t a1, uint64_t a2, int a3, int a4, int *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = 1;
  v15 = a2;
  v16 = 16777472;
  v17 = a3;
  v18 = *MEMORY[0x1E69E99E0];
  v19 = a3;
  v20 = a4;
  reply_port = mig_get_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  *&msg.msgh_voucher_port = 0x465500000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v9 = mach_msg(&msg, 3, 0x3Cu, 0x30u, msgh_local_port, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v10;
    }

    if (msg.msgh_id == 71)
    {
      v10 = 4294966988;
    }

    else if (msg.msgh_id == 18105)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 40)
        {
          if (!msg.msgh_remote_port)
          {
            v10 = HIDWORD(v15);
            if (!HIDWORD(v15))
            {
              *a5 = v16;
              return v10;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v11 = 1;
          }

          else
          {
            v11 = HIDWORD(v15) == 0;
          }

          if (v11)
          {
            v10 = 4294966996;
          }

          else
          {
            v10 = HIDWORD(v15);
          }

          goto LABEL_24;
        }
      }

      v10 = 4294966996;
    }

    else
    {
      v10 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v10;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v10;
}

uint64_t pppcontroller_stop(int a1, int a2, _DWORD *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(&msg_4[16], 0, 28);
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x1E69E99E0];
  *&msg_4[28] = a2;
  reply_port = mig_get_reply_port();
  *&msg_4[4] = a1;
  *&msg_4[8] = reply_port;
  msg = 5395;
  *&msg_4[12] = 0x465600000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v6 = *&msg_4[8];
  }

  else
  {
    v6 = reply_port;
  }

  v7 = mach_msg(&msg, 3, 0x24u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_reply_port(*&msg_4[8]);
      return v8;
    }

    if (*&msg_4[16] == 71)
    {
      v8 = 4294966988;
    }

    else if (*&msg_4[16] == 18106)
    {
      if ((msg & 0x80000000) == 0)
      {
        if (*msg_4 == 40)
        {
          if (!*&msg_4[4])
          {
            v8 = *&msg_4[28];
            if (!*&msg_4[28])
            {
              *a3 = *&msg_4[32];
              return v8;
            }

            goto LABEL_24;
          }
        }

        else if (*msg_4 == 36)
        {
          if (*&msg_4[4])
          {
            v9 = 1;
          }

          else
          {
            v9 = *&msg_4[28] == 0;
          }

          if (v9)
          {
            v8 = 4294966996;
          }

          else
          {
            v8 = *&msg_4[28];
          }

          goto LABEL_24;
        }
      }

      v8 = 4294966996;
    }

    else
    {
      v8 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v8;
  }

  mig_put_reply_port(*&msg_4[8]);
  return v8;
}

uint64_t pppcontroller_suspend(mach_port_t a1, mach_port_t *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  *&msg[1].msgh_remote_port = 0u;
  *&msg[0].msgh_id = 0u;
  msg[0].msgh_size = 0;
  reply_port = mig_get_reply_port();
  msg[0].msgh_remote_port = a1;
  msg[0].msgh_local_port = reply_port;
  msg[0].msgh_bits = 5395;
  *&msg[0].msgh_voucher_port = 0x465700000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    msgh_local_port = msg[0].msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v6 = mach_msg(msg, 3, 0x18u, 0x30u, msgh_local_port, 0, 0);
  msgh_remote_port = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(msg[0].msgh_local_port);
      return msgh_remote_port;
    }

    if (msg[0].msgh_id == 71)
    {
      msgh_remote_port = 4294966988;
    }

    else if (msg[0].msgh_id == 18107)
    {
      if ((msg[0].msgh_bits & 0x80000000) == 0)
      {
        if (msg[0].msgh_size == 40)
        {
          if (!msg[0].msgh_remote_port)
          {
            msgh_remote_port = msg[1].msgh_remote_port;
            if (!msg[1].msgh_remote_port)
            {
              *a2 = msg[1].msgh_local_port;
              return msgh_remote_port;
            }

            goto LABEL_24;
          }
        }

        else if (msg[0].msgh_size == 36)
        {
          if (msg[0].msgh_remote_port)
          {
            v8 = 1;
          }

          else
          {
            v8 = msg[1].msgh_remote_port == 0;
          }

          if (v8)
          {
            msgh_remote_port = 4294966996;
          }

          else
          {
            msgh_remote_port = msg[1].msgh_remote_port;
          }

          goto LABEL_24;
        }
      }

      msgh_remote_port = 4294966996;
    }

    else
    {
      msgh_remote_port = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(msg);
    return msgh_remote_port;
  }

  mig_put_reply_port(msg[0].msgh_local_port);
  return msgh_remote_port;
}

uint64_t pppcontroller_resume(mach_port_t a1, mach_port_t *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  *&msg[1].msgh_remote_port = 0u;
  *&msg[0].msgh_id = 0u;
  msg[0].msgh_size = 0;
  reply_port = mig_get_reply_port();
  msg[0].msgh_remote_port = a1;
  msg[0].msgh_local_port = reply_port;
  msg[0].msgh_bits = 5395;
  *&msg[0].msgh_voucher_port = 0x465800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    msgh_local_port = msg[0].msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v6 = mach_msg(msg, 3, 0x18u, 0x30u, msgh_local_port, 0, 0);
  msgh_remote_port = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(msg[0].msgh_local_port);
      return msgh_remote_port;
    }

    if (msg[0].msgh_id == 71)
    {
      msgh_remote_port = 4294966988;
    }

    else if (msg[0].msgh_id == 18108)
    {
      if ((msg[0].msgh_bits & 0x80000000) == 0)
      {
        if (msg[0].msgh_size == 40)
        {
          if (!msg[0].msgh_remote_port)
          {
            msgh_remote_port = msg[1].msgh_remote_port;
            if (!msg[1].msgh_remote_port)
            {
              *a2 = msg[1].msgh_local_port;
              return msgh_remote_port;
            }

            goto LABEL_24;
          }
        }

        else if (msg[0].msgh_size == 36)
        {
          if (msg[0].msgh_remote_port)
          {
            v8 = 1;
          }

          else
          {
            v8 = msg[1].msgh_remote_port == 0;
          }

          if (v8)
          {
            msgh_remote_port = 4294966996;
          }

          else
          {
            msgh_remote_port = msg[1].msgh_remote_port;
          }

          goto LABEL_24;
        }
      }

      msgh_remote_port = 4294966996;
    }

    else
    {
      msgh_remote_port = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(msg);
    return msgh_remote_port;
  }

  mig_put_reply_port(msg[0].msgh_local_port);
  return msgh_remote_port;
}

uint64_t pppcontroller_notification(int a1, int a2, _DWORD *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(&msg_4[16], 0, 28);
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x1E69E99E0];
  *&msg_4[28] = a2;
  reply_port = mig_get_reply_port();
  *&msg_4[4] = a1;
  *&msg_4[8] = reply_port;
  msg = 5395;
  *&msg_4[12] = 0x465900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v6 = *&msg_4[8];
  }

  else
  {
    v6 = reply_port;
  }

  v7 = mach_msg(&msg, 3, 0x24u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_reply_port(*&msg_4[8]);
      return v8;
    }

    if (*&msg_4[16] == 71)
    {
      v8 = 4294966988;
    }

    else if (*&msg_4[16] == 18109)
    {
      if ((msg & 0x80000000) == 0)
      {
        if (*msg_4 == 40)
        {
          if (!*&msg_4[4])
          {
            v8 = *&msg_4[28];
            if (!*&msg_4[28])
            {
              *a3 = *&msg_4[32];
              return v8;
            }

            goto LABEL_24;
          }
        }

        else if (*msg_4 == 36)
        {
          if (*&msg_4[4])
          {
            v9 = 1;
          }

          else
          {
            v9 = *&msg_4[28] == 0;
          }

          if (v9)
          {
            v8 = 4294966996;
          }

          else
          {
            v8 = *&msg_4[28];
          }

          goto LABEL_24;
        }
      }

      v8 = 4294966996;
    }

    else
    {
      v8 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v8;
  }

  mig_put_reply_port(*&msg_4[8]);
  return v8;
}

uint64_t pppcontroller_attach_proxy(int a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7, int a8, int a9, _DWORD *a10, _DWORD *a11)
{
  v34 = *MEMORY[0x1E69E9840];
  *&reply_port[16] = 0x400000000;
  *reply_port = 0u;
  v20 = a2;
  v21 = 16777472;
  v22 = a3;
  v23 = a4;
  v24 = 1245184;
  v25 = a5;
  v26 = 1114112;
  v27 = a6;
  v28 = 1245184;
  v29 = *MEMORY[0x1E69E99E0];
  v30 = a3;
  v31 = a7;
  v32 = a8;
  v33 = a9;
  v12 = mig_get_reply_port();
  *&reply_port[4] = a1;
  *&reply_port[8] = v12;
  v18 = -2147478253;
  *&reply_port[12] = 0x465D00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v18);
    v13 = *&reply_port[8];
  }

  else
  {
    v13 = v12;
  }

  v14 = mach_msg(&v18, 3, 0x68u, 0x3Cu, v13, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&reply_port[8]);
  }

  else
  {
    if (!v14)
    {
      if (*&reply_port[16] == 71)
      {
        v15 = 4294966988;
      }

      else if (*&reply_port[16] == 18113)
      {
        if (v18 < 0)
        {
          v15 = 4294966996;
          if (*&reply_port[20] == 1 && *reply_port == 52 && !*&reply_port[4] && HIWORD(v21) << 16 == 1114112)
          {
            v15 = 0;
            v16 = HIDWORD(v23);
            *a10 = v20;
            *a11 = v16;
            return v15;
          }
        }

        else if (*reply_port == 36)
        {
          v15 = 4294966996;
          if (HIDWORD(v20))
          {
            if (*&reply_port[4])
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = HIDWORD(v20);
            }
          }
        }

        else
        {
          v15 = 4294966996;
        }
      }

      else
      {
        v15 = 4294966995;
      }

      mach_msg_destroy(&v18);
      return v15;
    }

    mig_dealloc_reply_port(*&reply_port[8]);
  }

  return v15;
}

void SCNetworkCategoryGetTypeID_cold_1()
{

  dispatch_once(&__SCNetworkCategoryInitialize_initialized, &__block_literal_global);
}

void __SC_log_enabled_cold_2()
{
  OUTLINED_FUNCTION_0();

  dispatch_once(&_SC_isAppleInternal_once, &__block_literal_global_63);
}

void _SC_dlopen_cold_1()
{
  OUTLINED_FUNCTION_0();

  dispatch_once(&_SC_dlopen_once, &__block_literal_global_1);
}

void _SC_hw_model_cold_1()
{
  OUTLINED_FUNCTION_0();

  dispatch_once(&_SC_hw_model_once, &__block_literal_global_9);
}

void _SC_crash_cold_1()
{
  OUTLINED_FUNCTION_0();

  dispatch_once(&_SC_isAppleInternal_once_0, &__block_literal_global_55);
}

void childrenReaped_cold_1()
{

  dispatch_once(&initializeLock_initialized, &__block_literal_global_2);
}

void _SCDPluginSpawnCommand_cold_2(int a1)
{
  LODWORD(v6) = 136315138;
  *(&v6 + 4) = strerror(a1);
  OUTLINED_FUNCTION_0_0(&dword_1AD2AD000, MEMORY[0x1E69E9C10], v1, "posix_spawn() failed: %s\n", v2, v3, v4, v5, v6, DWORD2(v6));
}

void _SCDPluginExecCommand2_cold_2()
{
  v0 = __error();
  LODWORD(v6) = 136315138;
  *(&v6 + 4) = strerror(*v0);
  OUTLINED_FUNCTION_0_0(&dword_1AD2AD000, MEMORY[0x1E69E9C10], v1, "setenv() failed: %s\n", v2, v3, v4, v5, v6, DWORD2(v6));
}

void _SCDPluginExecCommand2_cold_3(int a1)
{
  LODWORD(v6) = 136315138;
  *(&v6 + 4) = strerror(a1);
  OUTLINED_FUNCTION_0_0(&dword_1AD2AD000, MEMORY[0x1E69E9C10], v1, "fork() failed: %s\n", v2, v3, v4, v5, v6, DWORD2(v6));
}

void log_open_error_cold_1()
{
  OUTLINED_FUNCTION_0();

  dispatch_once(&log_open_error_once, &__block_literal_global_51);
}

void __SCPreferencesUpdateLockedState_cold_1()
{
  OUTLINED_FUNCTION_0();

  dispatch_once(&__SCPreferencesUpdateLockedState_once, &__block_literal_global_4);
}

void __log_open_error_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();

  dispatch_once(&_SC_isAppleInternal_once_1, &__block_literal_global_55_0);
}

void report_missing_entitlement_cold_1()
{

  dispatch_once(&_SC_isAppleInternal_once_2, &__block_literal_global_7);
}

void SCNetworkConnectionGetTypeID_cold_1()
{
  OUTLINED_FUNCTION_0();

  dispatch_once(&__SCNetworkConnectionInitialize_initialized, &__block_literal_global_8);
}

void __SCNetworkConnectionCopyExtendedStatus_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();

  dispatch_once(&__SCNetworkConnectionQueue_once, &__block_literal_global_113);
}

void SCUserPreferencesGetTypeID_cold_1()
{
  OUTLINED_FUNCTION_0();

  dispatch_once(&__SCUserPreferencesInitialize_initialized, &__block_literal_global_9);
}

void __SCNetworkInterfaceCreatePrivate_cold_1()
{
  OUTLINED_FUNCTION_0();

  dispatch_once(&__SCNetworkInterfaceInitialize_initialized, &__block_literal_global_11);
}

void _SCNetworkInterfaceCopyAllWithPreferences_cold_2()
{
  OUTLINED_FUNCTION_0();

  dispatch_once(&__wait_for_IOKit_to_quiesce_iokit_quiet, &__block_literal_global_655);
}

void SCNetworkInterfaceTypeSetTemporaryOverrideCost_cold_1()
{
  OUTLINED_FUNCTION_0();

  dispatch_once(&_SC_isAppleInternal_once_3, &__block_literal_global_621);
}

void __SCNetworkProtocolCreatePrivate_cold_1()
{
  OUTLINED_FUNCTION_0();

  dispatch_once(&__SCNetworkProtocolInitialize_initialized, &__block_literal_global_12);
}

void __SCNetworkServiceCreatePrivate_cold_1()
{
  OUTLINED_FUNCTION_0();

  dispatch_once(&__SCNetworkServiceInitialize_initialized, &__block_literal_global_13);
}

void SCNetworkSetAddService_cold_1()
{
  OUTLINED_FUNCTION_0();

  dispatch_once(&__SCNetworkSetInitialize_initialized, &__block_literal_global_55_1);
}

void copy_default_set_name_cold_1()
{
  OUTLINED_FUNCTION_0();

  dispatch_once(&copy_default_set_name_once_49, &__block_literal_global_52);
}

void copy_default_set_name_cold_2()
{
  OUTLINED_FUNCTION_0();

  dispatch_once(&copy_default_set_name_once, &__block_literal_global_14);
}

void _SCHelperExec_cold_1()
{

  dispatch_once(&_SCHelperExecCopyBacktrace_once, &__block_literal_global_10);
}

void CNSetSupportedSSIDs_cold_1()
{
  OUTLINED_FUNCTION_0();

  dispatch_once(&__loadCaptiveNetwork_once, &__block_literal_global_16);
}

void __SCNSManagerCreateCommon_cold_1()
{

  dispatch_once(&__SCNetworkSettingsInitialize_initialized, &__block_literal_global_17);
}

void _scprefs_observer_watch_cold_1()
{

  dispatch_once(&_scprefs_observer_watch_initialized, &__block_literal_global_18);
}

void _SCControlPrefsCreateCommon_cold_1()
{

  dispatch_once(&__SCControlPrefsInitialize_initialized, &__block_literal_global_19);
}

void SCNetworkCategoryManagerGetTypeID_cold_1()
{

  dispatch_once(&__SCNetworkCategoryManagerInitialize_initialized, &__block_literal_global_8);
}

void __SCNetworkCategoryManagerCopyActiveValueNoSession_cold_1()
{

  dispatch_once(&__SCNetworkCategoryManagerCopyActiveValueNoSession_initialized, &__block_literal_global_20);
}

void IPMonitorControlCreate_cold_1()
{

  dispatch_once(&__IPMonitorControlRegisterClass_once, &__block_literal_global_21);
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x1EEDB6B60](calendar, v3, at);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}