CFMutableArrayRef extendedConfigurationTypes(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  Mutable = 0;
  context = __SCNetworkInterfaceGetDefaultConfigurationType(a1);
  if (!context)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (*(a1 + 96))
  {
    v2 = 0;
    v3 = *(a1 + 16);
    for (i = configurations; !CFEqual(v3, **i); i += 5)
    {
      if (++v2 == 19)
      {
        return Mutable;
      }
    }

    if (((0x5BF13uLL >> v2) & 1) == 0)
    {
      Private = __SCNetworkServiceCreatePrivate(0, *(a1 + 80), *(a1 + 96), a1);
      v6 = SCNetworkSetCopyAll(*(a1 + 80));
      if (v6)
      {
        v7 = v6;
        Count = CFArrayGetCount(v6);
        if (Count >= 1)
        {
          v9 = Count;
          v10 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
            v12 = SCNetworkSetCopyServices(ValueAtIndex);
            v24.length = CFArrayGetCount(v12);
            v24.location = 0;
            v13 = CFArrayContainsValue(v12, v24, Private);
            CFRelease(v12);
            if (v13)
            {
              break;
            }

            if (v9 == ++v10)
            {
              goto LABEL_21;
            }
          }

          SetID = SCNetworkSetGetSetID(ValueAtIndex);
          SetNetworkInterfaceEntity = SCPreferencesPathKeyCreateSetNetworkInterfaceEntity(0, SetID, *(a1 + 112), 0);
          Value = __SCNetworkConfigurationGetValue(*(a1 + 80), SetNetworkInterfaceEntity);
          CFRelease(SetNetworkInterfaceEntity);
          TypeID = CFDictionaryGetTypeID();
          if (Value && CFGetTypeID(Value) == TypeID)
          {
            CFDictionaryApplyFunction(Value, __addExtendedConfigurationType, &context);
          }

          v19 = *(a1 + 104);
          if (v19)
          {
            CFDictionaryApplyFunction(v19, __addExtendedConfigurationType, &context);
          }
        }

LABEL_21:
        CFRelease(Private);
        v14 = v7;
      }

      else
      {
        v14 = Private;
      }

      CFRelease(v14);
    }
  }

  return Mutable;
}

uint64_t __SCNetworkInterfaceIsBusyMember(const __SCPreferences *a1, const __SCNetworkInterface *cf, uint64_t a3)
{
  v3 = a3;
  Interface = cf;
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!cf)
    {
      return 0;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!Interface)
    {
      return 0;
    }
  }

  v6 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(Interface) != v6)
  {
    return 0;
  }

  Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
  v8 = SCBridgeInterfaceCopyAll(a1);
  if (v8)
  {
    v9 = v8;
    __SCBridgeInterfaceListCollectMembers(v8, Mutable, v3);
    CFRelease(v9);
  }

  if (CFSetGetCount(Mutable))
  {
    while (1)
    {
      v10 = CFSetContainsValue(Mutable, Interface);
      if (v10)
      {
        break;
      }

      Interface = SCNetworkInterfaceGetInterface(Interface);
      if (!Interface)
      {
        goto LABEL_9;
      }
    }

    v11 = v10;
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  CFRelease(Mutable);
  return v11;
}

SCNetworkInterfaceRef __SCNetworkInterfaceSetDeepConfiguration(SCNetworkInterfaceRef result, const __SCNetworkInterface *a2, CFArrayRef theArray, __n128 a4)
{
  v87 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = theArray;
    v5 = a2;
    v6 = result;
    v7 = 0;
    v83 = *MEMORY[0x1E695E738];
    a4.n128_u64[0] = 138412546;
    v81 = a4;
    a4.n128_u64[0] = 138412802;
    v82 = a4;
    v78 = result;
    v79 = theArray;
    do
    {
      v80 = v7;
      if (v4)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
        DefaultConfigurationType = __SCNetworkInterfaceGetDefaultConfigurationType(v5);
        if (!DefaultConfigurationType)
        {
          goto LABEL_44;
        }

        v9 = DefaultConfigurationType;
        Value = ValueAtIndex;
        if (ValueAtIndex)
        {
          Value = CFDictionaryGetValue(ValueAtIndex, v9);
          v86 = 0;
          goto LABEL_11;
        }

        ValueAtIndex = 0;
      }

      else
      {
        v11 = __SCNetworkInterfaceGetDefaultConfigurationType(v5);
        if (!v11)
        {
          goto LABEL_44;
        }

        v9 = v11;
        ValueAtIndex = 0;
        Value = 0;
      }

      v86 = 1;
LABEL_11:
      if (Value == v83)
      {
        v12 = 0;
      }

      else
      {
        v12 = Value;
      }

      if (v6)
      {
        v13 = __SCNetworkInterfaceSetDefaultConfiguration(v6, v5, v9, v12, 1);
      }

      else
      {
        v13 = __SCNetworkInterfaceSetConfiguration(v5, v9, v12, 1);
      }

      v14 = v13;
      v15 = __log_SCNetworkConfiguration();
      if (v14)
      {
        v16 = _SC_syslog_os_log_mapping(7);
        if (!__SC_log_enabled(7, v15, v16))
        {
          goto LABEL_25;
        }

        v17 = _os_log_pack_size();
        v23 = &v77 - ((MEMORY[0x1EEE9AC00](v17, v18, v19, v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
        v24 = __error();
        v25 = _os_log_pack_fill(v23, v17, *v24, &dword_1AD2AD000, "__SCNetworkInterfaceSetDeepConfiguration(): %@, %@ -> %@");
        *v25 = v82.n128_u32[0];
        v26 = @"NULL";
        if (v12)
        {
          v26 = v12;
        }

        *(v25 + 4) = v5;
        *(v25 + 12) = 2112;
        *(v25 + 14) = v9;
        *(v25 + 22) = 2112;
        *(v25 + 24) = v26;
        v27 = 7;
        v28 = v15;
        v29 = v16;
        v30 = v23;
      }

      else
      {
        v31 = _SC_syslog_os_log_mapping(6);
        if (!__SC_log_enabled(6, v15, v31))
        {
          goto LABEL_25;
        }

        v32 = _os_log_pack_size();
        v38 = &v77 - ((MEMORY[0x1EEE9AC00](v32, v33, v34, v35, v36, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
        v39 = __error();
        v40 = _os_log_pack_fill(v38, v32, *v39, &dword_1AD2AD000, "__SCNetworkInterfaceSetDeepConfiguration() failed, interface=%@, type=%@");
        *v40 = v81.n128_u32[0];
        *(v40 + 4) = v5;
        *(v40 + 12) = 2112;
        *(v40 + 14) = v9;
        v27 = 6;
        v28 = v15;
        v29 = v31;
        v30 = v38;
      }

      __SC_log_send(v27, v28, v29, v30);
LABEL_25:
      v41 = extendedConfigurationTypes(v5);
      if (v41)
      {
        v42 = v41;
        Count = CFArrayGetCount(v41);
        v43 = v83;
        if (Count >= 1)
        {
          for (i = 0; Count != i; ++i)
          {
            v45 = CFArrayGetValueAtIndex(v42, i);
            if (v86)
            {
              v46 = 0;
            }

            else
            {
              v46 = CFDictionaryGetValue(ValueAtIndex, v45);
            }

            if (v46 == v43)
            {
              v47 = 0;
            }

            else
            {
              v47 = v46;
            }

            v48 = __SCNetworkInterfaceSetConfiguration(v5, v45, v47, 1);
            v49 = __log_SCNetworkConfiguration();
            if (v48)
            {
              v50 = _SC_syslog_os_log_mapping(7);
              if (__SC_log_enabled(7, v49, v50))
              {
                v51 = v5;
                v52 = _os_log_pack_size();
                v58 = &v77 - ((MEMORY[0x1EEE9AC00](v52, v53, v54, v55, v56, v57) + 15) & 0xFFFFFFFFFFFFFFF0);
                v59 = __error();
                v60 = v52;
                v5 = v51;
                v43 = v83;
                v61 = _os_log_pack_fill(v58, v60, *v59, &dword_1AD2AD000, "__SCNetworkInterfaceSetDeepConfiguration(): %@, %@ -> %@");
                *v61 = v82.n128_u32[0];
                v62 = @"NULL";
                if (v47)
                {
                  v62 = v47;
                }

                *(v61 + 4) = v5;
                *(v61 + 12) = 2112;
                *(v61 + 14) = v45;
                *(v61 + 22) = 2112;
                *(v61 + 24) = v62;
                v63 = 7;
                v64 = v49;
                v65 = v50;
                v66 = v58;
                goto LABEL_41;
              }
            }

            else
            {
              v67 = _SC_syslog_os_log_mapping(6);
              if (__SC_log_enabled(6, v49, v67))
              {
                v68 = _os_log_pack_size();
                v74 = &v77 - ((MEMORY[0x1EEE9AC00](v68, v69, v70, v71, v72, v73) + 15) & 0xFFFFFFFFFFFFFFF0);
                v75 = __error();
                v76 = _os_log_pack_fill(v74, v68, *v75, &dword_1AD2AD000, "__SCNetworkInterfaceSetDeepConfiguration() failed, interface=%@, type=%@");
                *v76 = v81.n128_u32[0];
                *(v76 + 4) = v5;
                *(v76 + 12) = 2112;
                *(v76 + 14) = v45;
                v63 = 6;
                v64 = v49;
                v65 = v67;
                v66 = v74;
LABEL_41:
                __SC_log_send(v63, v64, v65, v66);
              }
            }
          }
        }

        CFRelease(v42);
        v6 = v78;
        v4 = v79;
      }

LABEL_44:
      result = SCNetworkInterfaceGetInterface(v5);
      v5 = result;
      v7 = v80 + 1;
    }

    while (result);
  }

  return result;
}

SCNetworkInterfaceRef _SCNetworkInterfaceCopyActive(const void *a1, const __CFString *a2)
{
  v3 = _SCNetworkInterfaceCreateWithBSDName(a1, a2, -1);
  v4 = v3;
  if (a1 && v3)
  {
    CFRetain(a1);
    *(v4 + 11) = a1;
  }

  return v4;
}

int64_t SCNetworkInterfaceGetPrimaryRank(const __SCNetworkInterface *a1)
{
  v1 = *(a1 + 50);
  if (!v1)
  {
    return 0;
  }

  BSDName = SCNetworkInterfaceGetBSDName(a1);
  if (!BSDName)
  {
    _SCErrorSet(1002);
    return 0;
  }

  return IPMonitorControlGetInterfacePrimaryRank(v1, BSDName);
}

uint64_t SCNetworkInterfaceSetPrimaryRank(const __SCNetworkInterface *a1, unsigned int a2)
{
  BSDName = SCNetworkInterfaceGetBSDName(a1);
  if (!BSDName)
  {
    v8 = 1002;
    goto LABEL_9;
  }

  v5 = BSDName;
  v6 = *(a1 + 50);
  if (!v6)
  {
    v6 = IPMonitorControlCreate();
    if (v6)
    {
      *(a1 + 50) = v6;
      goto LABEL_5;
    }

    v8 = 1001;
LABEL_9:
    _SCErrorSet(v8);
    return 0;
  }

LABEL_5:

  return IPMonitorControlSetInterfacePrimaryRank(v6, v5, a2);
}

CFStringRef SCNetworkInterfaceCopyRankAssertionNotificationKey(const __SCNetworkInterface *a1)
{
  BSDName = SCNetworkInterfaceGetBSDName(a1);
  if (BSDName)
  {

    return IPMonitorControlCopyInterfaceRankAssertionNotificationKey(BSDName);
  }

  else
  {
    _SCErrorSet(1002);
    return 0;
  }
}

uint64_t SCNetworkInterfaceCopyRankAssertionInfo(const __SCNetworkInterface *a1)
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  result = _SCNetworkInterfaceGetIPMonitorControl(a1, v2);
  if (result)
  {
    result = IPMonitorControlCopyInterfaceRankAssertionInfo(result, v2[0]);
    if (!result)
    {
      _SCErrorSet(1001);
      return 0;
    }
  }

  return result;
}

uint64_t SCNetworkInterfaceRankAssertionInfoGetPrimaryRank(const __CFDictionary *a1)
{

  return InterfaceRankAssertionInfoGetPrimaryRank(a1);
}

uint64_t SCNetworkInterfaceRankAssertionInfoGetProcessID(const __CFDictionary *a1)
{

  return InterfaceRankAssertionInfoGetProcessID(a1);
}

const void *SCNetworkInterfaceRankAssertionInfoGetProcessName(const __CFDictionary *a1)
{

  return InterfaceRankAssertionInfoGetProcessName(a1);
}

uint64_t SCNetworkInterfaceRankAssertionCopyInterfaceNames()
{
  v0 = IPMonitorControlCreate();
  if (v0)
  {
    v1 = v0;
    v2 = IPMonitorControlCopyInterfaceRankAssertionInterfaceNames(v0);
    if (!v2)
    {
      _SCErrorSet(1001);
    }

    CFRelease(v1);
  }

  else
  {
    _SCErrorSet(1001);
    return 0;
  }

  return v2;
}

const void *__SCNetworkInterfaceGetDisableUntilNeededValue(const __SCPreferences **a1)
{

  return get_number_value(a1, @"DisableUntilNeeded");
}

const void *get_number_value(const __SCPreferences **cf, const void *a2)
{
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (cf)
    {
      goto LABEL_3;
    }

LABEL_20:
    v12 = 0;
    LODWORD(v8) = 1002;
    goto LABEL_21;
  }

  __SCNetworkInterfaceCreatePrivate_cold_1();
  if (!cf)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) != v4 || !cf[10])
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = cf[2];
  v7 = configurations;
  while (!CFEqual(v6, **v7))
  {
    ++v5;
    v7 += 5;
    if (v5 == 19)
    {
      goto LABEL_20;
    }
  }

  if ((0x5BF13uLL >> v5))
  {
    goto LABEL_20;
  }

  v8 = copyPerInterfaceConfigurationPaths(cf, 0);
  if (!v8)
  {
LABEL_17:
    v12 = 0;
    goto LABEL_21;
  }

  v9 = v8;
  ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
  Value = __SCNetworkConfigurationGetValue(cf[10], ValueAtIndex);
  CFRelease(v9);
  if (!Value)
  {
    LODWORD(v8) = 0;
    goto LABEL_17;
  }

  v12 = CFDictionaryGetValue(Value, a2);
  TypeID = CFNumberGetTypeID();
  if (v12)
  {
    v14 = TypeID;
    v15 = CFGetTypeID(v12);
    LODWORD(v8) = 0;
    if (v15 != v14)
    {
      v12 = 0;
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

LABEL_21:
  _SCErrorSet(v8);
  return v12;
}

BOOL SCNetworkInterfaceGetDisableUntilNeeded(const __SCPreferences **a1)
{
  v6 = *MEMORY[0x1E69E9840];
  number_value = get_number_value(a1, @"DisableUntilNeeded");
  if (!number_value)
  {
    return _SCNetworkInterfaceIsTethered(a1);
  }

  valuePtr = 0;
  Value = CFNumberGetValue(number_value, kCFNumberIntType, &valuePtr);
  result = valuePtr != 0;
  if (!Value)
  {
    return _SCNetworkInterfaceIsTethered(a1);
  }

  return result;
}

uint64_t __SCNetworkInterfaceSetDisableUntilNeededValue(uint64_t a1, const void *a2)
{

  return set_number_value(a1, @"DisableUntilNeeded", a2);
}

uint64_t set_number_value(uint64_t a1, const void *a2, const void *a3)
{
  if (!*(a1 + 80))
  {
    goto LABEL_24;
  }

  if (a3)
  {
    TypeID = CFNumberGetTypeID();
    if (CFGetTypeID(a3) != TypeID)
    {
      goto LABEL_24;
    }
  }

  v7 = 0;
  v8 = *(a1 + 16);
  v9 = configurations;
  while (!CFEqual(v8, **v9))
  {
    ++v7;
    v9 += 5;
    if (v7 == 19)
    {
      goto LABEL_24;
    }
  }

  if (((0x5BF13uLL >> v7) & 1) == 0 && (v10 = copyPerInterfaceConfigurationPaths(a1, 0)) != 0)
  {
    v11 = v10;
    Count = CFArrayGetCount(v10);
    if (Count < 1)
    {
      v22 = 1;
LABEL_27:
      _SCErrorSet(0);
    }

    else
    {
      v13 = Count;
      v14 = 0;
      v15 = MEMORY[0x1E695E9E8];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v11, v14);
        Value = __SCNetworkConfigurationGetValue(*(a1 + 80), ValueAtIndex);
        v18 = Value ? CFDictionaryCreateMutableCopy(0, 0, Value) : CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], v15);
        v19 = v18;
        if (a3)
        {
          CFDictionarySetValue(v18, a2, a3);
        }

        else
        {
          CFDictionaryRemoveValue(v18, a2);
        }

        v20 = *(a1 + 80);
        v21 = CFDictionaryGetCount(v19) <= 0 ? 0 : v19;
        v22 = __SCNetworkConfigurationSetValue(v20, ValueAtIndex, v21, 0);
        CFRelease(v19);
        if (!v22)
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_27;
        }
      }
    }

    CFRelease(v11);
  }

  else
  {
LABEL_24:
    _SCErrorSet(1002);
    return 0;
  }

  return v22;
}

uint64_t SCNetworkInterfaceSetDisableUntilNeeded(uint64_t a1, uint64_t a2)
{

  return set_BOOLean_value(a1, @"DisableUntilNeeded", a2);
}

uint64_t set_BOOLean_value(uint64_t a1, const void *a2, int a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = 1;
  if (a3)
  {
    v5 = &v10;
  }

  else
  {
    v5 = &v9;
  }

  v6 = CFNumberCreate(0, kCFNumberIntType, v5);
  v7 = set_number_value(a1, a2, v6);
  CFRelease(v6);
  return v7;
}

const void *__SCNetworkInterfaceGetDisablePrivateRelayValue(const __SCPreferences **a1)
{

  return get_number_value(a1, @"DisablePrivateRelay");
}

const __CFNumber *SCNetworkInterfaceGetDisablePrivateRelay(const __SCPreferences **a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = get_number_value(a1, @"DisablePrivateRelay");
  if (result)
  {
    valuePtr = 0;
    if (CFNumberGetValue(result, kCFNumberIntType, &valuePtr))
    {
      v2 = valuePtr == 0;
    }

    else
    {
      v2 = 1;
    }

    return !v2;
  }

  return result;
}

uint64_t __SCNetworkInterfaceSetDisablePrivateRelayValue(uint64_t a1, const void *a2)
{

  return set_number_value(a1, @"DisablePrivateRelay", a2);
}

uint64_t SCNetworkInterfaceSetDisablePrivateRelay(uint64_t a1, int a2)
{

  return set_BOOLean_value(a1, @"DisablePrivateRelay", a2);
}

const void *__SCNetworkInterfaceGetEnableLowDataModeValue(const __SCPreferences **a1)
{
  if (SCNetworkInterfaceSupportsLowDataMode(a1))
  {

    return get_number_value(a1, @"EnableLowDataMode");
  }

  else
  {
    _SCErrorSet(1002);
    return 0;
  }
}

const __CFNumber *SCNetworkInterfaceGetEnableLowDataMode(const __SCPreferences **a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = __SCNetworkInterfaceGetEnableLowDataModeValue(a1);
  if (result)
  {
    valuePtr = 0;
    if (CFNumberGetValue(result, kCFNumberIntType, &valuePtr))
    {
      v2 = valuePtr == 0;
    }

    else
    {
      v2 = 1;
    }

    return !v2;
  }

  return result;
}

uint64_t __SCNetworkInterfaceSetEnableLowDataModeValue(void *a1, const void *a2)
{
  if (SCNetworkInterfaceSupportsLowDataMode(a1))
  {

    return set_number_value(a1, @"EnableLowDataMode", a2);
  }

  else
  {
    _SCErrorSet(1002);
    return 0;
  }
}

uint64_t SCNetworkInterfaceSetEnableLowDataMode(void *a1, int a2)
{
  if (SCNetworkInterfaceSupportsLowDataMode(a1))
  {

    return set_BOOLean_value(a1, @"EnableLowDataMode", a2);
  }

  else
  {
    _SCErrorSet(1002);
    return 0;
  }
}

__CFArray *__SCNetworkInterfaceCopyStoredWithPreferences(const __SCPreferences *cf)
{
  v1 = cf;
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (cf)
    {
LABEL_3:
      CFRetain(v1);
      goto LABEL_6;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  v1 = SCPreferencesCreate(0, @"SCNetworkInterface", @"NetworkInterfaces.plist");
  if (!v1)
  {
    __SCNetworkInterfaceCopyStoredWithPreferences_cold_2();
  }

LABEL_6:
  Value = SCPreferencesGetValue(v1, @"Interfaces");
  TypeID = CFArrayGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    Count = CFArrayGetCount(Value);
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
        v8 = CFDictionaryGetTypeID();
        if (ValueAtIndex)
        {
          if (CFGetTypeID(ValueAtIndex) == v8)
          {
            v9 = __SCNetworkInterfaceCreateWithStorageEntity(ValueAtIndex);
            if (v9)
            {
              v10 = v9;
              CFArrayAppendValue(Mutable, v9);
              CFRelease(v10);
            }
          }
        }
      }
    }
  }

  else
  {
    Mutable = 0;
  }

  CFRelease(v1);
  return Mutable;
}

SCNetworkInterfaceRef __SCNetworkInterfaceCreateWithStorageEntity(const __CFDictionary *a1)
{
  v162 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized != -1)
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
  }

  valuePtr = 0;
  TypeID = CFDictionaryGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {
    Value = CFDictionaryGetValue(a1, @"Active");
    v4 = CFBooleanGetTypeID();
    v5 = MEMORY[0x1E695E4C0];
    if (Value)
    {
      v6 = v4;
      v7 = CFGetTypeID(Value);
      v8 = *v5;
      if (v7 == v6)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v8 = *MEMORY[0x1E695E4C0];
    }

    Value = v8;
LABEL_13:
    v21 = CFDictionaryGetValue(a1, @"BSD Name");
    v22 = CFStringGetTypeID();
    if (v21 && CFGetTypeID(v21) == v22)
    {
      v23 = CFDictionaryGetValue(a1, @"HiddenConfiguration");
      v24 = CFBooleanGetTypeID();
      v25 = v8;
      if (v23)
      {
        if (CFGetTypeID(v23) == v24)
        {
          v25 = v23;
        }

        else
        {
          v25 = v8;
        }
      }

      v26 = CFDictionaryGetValue(a1, @"HiddenInterface");
      v27 = CFBooleanGetTypeID();
      if (v26 && CFGetTypeID(v26) == v27)
      {
        v8 = v26;
      }

      v28 = CFDictionaryGetValue(a1, @"IOBuiltin");
      v29 = CFBooleanGetTypeID();
      if (!v28 || CFGetTypeID(v28) != v29)
      {
        v9 = __log_SCNetworkConfiguration();
        v10 = _SC_syslog_os_log_mapping(6);
        if (!__SC_log_enabled(6, v9, v10))
        {
          return 0;
        }

        v41 = _os_log_pack_size();
        v17 = &v151 - ((MEMORY[0x1EEE9AC00](v41, v42, v43, v44, v45, v46) + 15) & 0xFFFFFFFFFFFFFFF0);
        v47 = *__error();
        v19 = _os_log_pack_fill(v17, v41, v47, &dword_1AD2AD000, "No IOBuiltin property");
        goto LABEL_10;
      }

      v30 = CFDictionaryGetValue(a1, @"IOInterfaceNamePrefix");
      v31 = CFStringGetTypeID();
      if (v30 && CFGetTypeID(v30) == v31)
      {
        CFRetain(v30);
LABEL_35:
        v48 = CFDictionaryGetValue(a1, @"IOInterfaceType");
        v49 = CFNumberGetTypeID();
        if (v48 && CFGetTypeID(v48) == v49)
        {
          if (!CFNumberGetValue(v48, kCFNumberIntType, &valuePtr))
          {
            v50 = __log_SCNetworkConfiguration();
            v51 = _SC_syslog_os_log_mapping(5);
            if (__SC_log_enabled(5, v50, v51))
            {
              v159 = v50;
              v52 = _os_log_pack_size();
              v160 = &v151;
              v58 = MEMORY[0x1EEE9AC00](v52, v53, v54, v55, v56, v57);
              LODWORD(v158) = v51;
              v59 = &v151 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
              v60 = __error();
              *_os_log_pack_fill(v59, v52, *v60, &dword_1AD2AD000, "Count not extract value from ioInterfaceType") = 0;
              __SC_log_send(5, v159, v158, v59);
            }
          }

          v61 = CFDictionaryGetValue(a1, @"IOInterfaceUnit");
          v62 = CFNumberGetTypeID();
          if (v61 && CFGetTypeID(v61) == v62)
          {
            v159 = v61;
            v63 = CFDictionaryGetValue(a1, @"IOMACAddress");
            v64 = CFDataGetTypeID();
            if (v63 && (v160 = v63, CFGetTypeID(v63) == v64))
            {
              v65 = CFDictionaryGetValue(a1, @"IOPathMatch");
              v66 = CFStringGetTypeID();
              if (v65 && CFGetTypeID(v65) == v66)
              {
                v158 = v65;
                v67 = CFDictionaryGetValue(a1, @"SCNetworkInterfaceInfo");
                v68 = CFDictionaryGetTypeID();
                if (v67 && CFGetTypeID(v67) == v68)
                {
                  v152 = @"UserDefinedName";
                  v69 = CFDictionaryGetValue(v67, @"UserDefinedName");
                  v157 = CFStringGetTypeID();
                  if (v69)
                  {
                    v70 = CFGetTypeID(v69);
                    if (v70 == v157)
                    {
                      v71 = v69;
                    }

                    else
                    {
                      v71 = 0;
                    }

                    v154 = v71;
                  }

                  else
                  {
                    v154 = 0;
                  }

                  v118 = CFDictionaryGetValue(v67, @"kUSBProductString");
                  v157 = CFStringGetTypeID();
                  if (v118)
                  {
                    v119 = CFGetTypeID(v118);
                    if (v119 == v157)
                    {
                      v120 = v118;
                    }

                    else
                    {
                      v120 = 0;
                    }

                    v156 = v120;
                  }

                  else
                  {
                    v156 = 0;
                  }

                  v121 = CFDictionaryGetValue(v67, @"idProduct");
                  v157 = CFNumberGetTypeID();
                  if (v121)
                  {
                    v122 = CFGetTypeID(v121);
                    if (v122 == v157)
                    {
                      v123 = v121;
                    }

                    else
                    {
                      v123 = 0;
                    }

                    v157 = v123;
                  }

                  else
                  {
                    v157 = 0;
                  }

                  v124 = CFDictionaryGetValue(v67, @"idVendor");
                  v125 = CFNumberGetTypeID();
                  if (v124)
                  {
                    if (CFGetTypeID(v124) == v125)
                    {
                      v126 = v124;
                    }

                    else
                    {
                      v126 = 0;
                    }

                    v155 = v126;
                  }

                  else
                  {
                    v155 = 0;
                  }

                  v127 = CFDictionaryGetValue(a1, @"MatchingMACs");
                  v128 = CFArrayGetTypeID();
                  if (v127)
                  {
                    if (CFGetTypeID(v127) == v128)
                    {
                      v129 = v127;
                    }

                    else
                    {
                      v129 = 0;
                    }

                    v153 = v129;
                  }

                  else
                  {
                    v153 = 0;
                  }

                  v130 = CFDictionaryGetValue(a1, @"SCNetworkInterfaceType");
                  v131 = CFStringGetTypeID();
                  if (v130 && CFGetTypeID(v130) == v131)
                  {
                    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    v133 = Mutable;
                    if (valuePtr == 144)
                    {
                      v135 = &kSCValNetInterfaceTypeFireWire;
                    }

                    else
                    {
                      v134 = v130;
                      if (valuePtr != 6)
                      {
                        goto LABEL_102;
                      }

                      v135 = &kSCValNetInterfaceTypeEthernet;
                    }

                    v134 = *v135;
LABEL_102:
                    CFDictionarySetValue(Mutable, @"Type", v134);
                    Configuration = findConfiguration(v130);
                    if (Configuration == -1)
                    {
                      v145 = v133;
                      v144 = v130;
                    }

                    else
                    {
                      if ((0x61200uLL >> Configuration))
                      {
LABEL_107:
                        CFDictionarySetValue(v133, @"DeviceName", v21);
                        v146 = CFBooleanGetValue(v25);
                        if (v146)
                        {
                          CFDictionarySetValue(v133, @"HiddenConfiguration", *MEMORY[0x1E695E4D0]);
                        }

                        if (v154)
                        {
                          CFDictionarySetValue(v133, v152, v154);
                        }

                        v39 = _SCNetworkInterfaceCreateWithEntity(v146, v133, &__SCNetworkInterfaceSearchExternal);
                        CFRelease(v133);
                        *(v39 + 24) = CFBooleanGetValue(Value);
                        *(v39 + 176) = CFBooleanGetValue(v28);
                        *(v39 + 193) = CFBooleanGetValue(v8);
                        *(v39 + 29) = CFRetain(v30);
                        *(v39 + 31) = CFRetain(v48);
                        *(v39 + 32) = CFRetain(v159);
                        *(v39 + 20) = CFRetain(v160);
                        *(v39 + 26) = CFRetain(v158);
                        if (v156)
                        {
                          v147 = CFRetain(v156);
                        }

                        else
                        {
                          v147 = 0;
                        }

                        *(v39 + 35) = v147;
                        if (v157)
                        {
                          v148 = CFRetain(v157);
                        }

                        else
                        {
                          v148 = 0;
                        }

                        *(v39 + 37) = v148;
                        if (v155)
                        {
                          v149 = CFRetain(v155);
                        }

                        else
                        {
                          v149 = 0;
                        }

                        *(v39 + 36) = v149;
                        if (v153)
                        {
                          v150 = CFRetain(v153);
                        }

                        else
                        {
                          v150 = 0;
                        }

                        *(v39 + 38) = v150;
                        goto LABEL_99;
                      }

                      v144 = *configurations[5 * Configuration + 1];
                      v145 = v133;
                    }

                    CFDictionarySetValue(v145, @"Hardware", v144);
                    goto LABEL_107;
                  }

                  v72 = __log_SCNetworkConfiguration();
                  v73 = _SC_syslog_os_log_mapping(6);
                  if (__SC_log_enabled(6, v72, v73))
                  {
                    v136 = _os_log_pack_size();
                    v80 = &v151 - ((MEMORY[0x1EEE9AC00](v136, v137, v138, v139, v140, v141) + 15) & 0xFFFFFFFFFFFFFFF0);
                    v142 = *__error();
                    v82 = _os_log_pack_fill(v80, v136, v142, &dword_1AD2AD000, "No SCNetworkInterfaceType");
                    goto LABEL_97;
                  }

LABEL_98:
                  v39 = 0;
LABEL_99:
                  CFRelease(v30);
                  return v39;
                }

                v72 = __log_SCNetworkConfiguration();
                v73 = _SC_syslog_os_log_mapping(6);
                if (!__SC_log_enabled(6, v72, v73))
                {
                  goto LABEL_98;
                }

                v111 = _os_log_pack_size();
                v80 = &v151 - ((MEMORY[0x1EEE9AC00](v111, v112, v113, v114, v115, v116) + 15) & 0xFFFFFFFFFFFFFFF0);
                v117 = *__error();
                v82 = _os_log_pack_fill(v80, v111, v117, &dword_1AD2AD000, "No SCNetworkInterfaceInfo");
              }

              else
              {
                v72 = __log_SCNetworkConfiguration();
                v73 = _SC_syslog_os_log_mapping(6);
                if (!__SC_log_enabled(6, v72, v73))
                {
                  goto LABEL_98;
                }

                v104 = _os_log_pack_size();
                v80 = &v151 - ((MEMORY[0x1EEE9AC00](v104, v105, v106, v107, v108, v109) + 15) & 0xFFFFFFFFFFFFFFF0);
                v110 = *__error();
                v82 = _os_log_pack_fill(v80, v104, v110, &dword_1AD2AD000, "No IOPathMatch");
              }
            }

            else
            {
              v72 = __log_SCNetworkConfiguration();
              v73 = _SC_syslog_os_log_mapping(6);
              if (!__SC_log_enabled(6, v72, v73))
              {
                goto LABEL_98;
              }

              v97 = _os_log_pack_size();
              v80 = &v151 - ((MEMORY[0x1EEE9AC00](v97, v98, v99, v100, v101, v102) + 15) & 0xFFFFFFFFFFFFFFF0);
              v103 = *__error();
              v82 = _os_log_pack_fill(v80, v97, v103, &dword_1AD2AD000, "No IOMACAddress");
            }
          }

          else
          {
            v72 = __log_SCNetworkConfiguration();
            v73 = _SC_syslog_os_log_mapping(6);
            if (!__SC_log_enabled(6, v72, v73))
            {
              goto LABEL_98;
            }

            v90 = _os_log_pack_size();
            v80 = &v151 - ((MEMORY[0x1EEE9AC00](v90, v91, v92, v93, v94, v95) + 15) & 0xFFFFFFFFFFFFFFF0);
            v96 = *__error();
            v82 = _os_log_pack_fill(v80, v90, v96, &dword_1AD2AD000, "No IOInterfaceUnit");
          }
        }

        else
        {
          v72 = __log_SCNetworkConfiguration();
          v73 = _SC_syslog_os_log_mapping(6);
          if (!__SC_log_enabled(6, v72, v73))
          {
            goto LABEL_98;
          }

          v74 = _os_log_pack_size();
          v80 = &v151 - ((MEMORY[0x1EEE9AC00](v74, v75, v76, v77, v78, v79) + 15) & 0xFFFFFFFFFFFFFFF0);
          v81 = *__error();
          v82 = _os_log_pack_fill(v80, v74, v81, &dword_1AD2AD000, "No IOInterfaceType");
        }

LABEL_97:
        *v82 = 0;
        __SC_log_send(6, v72, v73, v80);
        goto LABEL_98;
      }

      v30 = _SCNetworkInterfaceCopyPrefixFromBSDName(v21);
      if (v30)
      {
        goto LABEL_35;
      }

      v9 = __log_SCNetworkConfiguration();
      v10 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v9, v10))
      {
        v83 = _os_log_pack_size();
        v17 = &v151 - ((MEMORY[0x1EEE9AC00](v83, v84, v85, v86, v87, v88) + 15) & 0xFFFFFFFFFFFFFFF0);
        v89 = *__error();
        v19 = _os_log_pack_fill(v17, v83, v89, &dword_1AD2AD000, "No BSD interface name prefix");
        goto LABEL_10;
      }
    }

    else
    {
      v9 = __log_SCNetworkConfiguration();
      v10 = _SC_syslog_os_log_mapping(7);
      if (__SC_log_enabled(7, v9, v10))
      {
        v32 = _os_log_pack_size();
        v17 = &v151 - ((MEMORY[0x1EEE9AC00](v32, v33, v34, v35, v36, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
        v38 = __error();
        *_os_log_pack_fill(v17, v32, *v38, &dword_1AD2AD000, "No BSD name") = 0;
        v20 = 7;
        goto LABEL_29;
      }
    }

    return 0;
  }

  v9 = __log_SCNetworkConfiguration();
  v10 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v9, v10))
  {
    v11 = _os_log_pack_size();
    v17 = &v151 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = *__error();
    v19 = _os_log_pack_fill(v17, v11, v18, &dword_1AD2AD000, "No interface entity");
LABEL_10:
    *v19 = 0;
    v20 = 6;
LABEL_29:
    __SC_log_send(v20, v9, v10, v17);
  }

  return 0;
}

uint64_t __SCNetworkInterfaceSaveStoredWithPreferences(SCPreferencesRef a1, const void *a2)
{
  TypeID = CFArrayGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID)
  {
    return 0;
  }

  if (a1)
  {
    CFRetain(a1);
  }

  else
  {
    a1 = SCPreferencesCreate(0, @"SCNetworkInterface", @"NetworkInterfaces.plist");
    if (!a1)
    {
      __SCNetworkInterfaceSaveStoredWithPreferences_cold_1();
    }
  }

  v6 = SCPreferencesSetValue(a1, @"Interfaces", a2);
  CFRelease(a1);
  return v6;
}

SCNetworkInterfaceRef __SCNetworkInterfaceCreateWithNIPreferencesUsingBSDName(int a1, const __SCPreferences *cf, const void *a3)
{
  v4 = cf;
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (cf)
    {
LABEL_3:
      CFRetain(v4);
      goto LABEL_6;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v4 = SCPreferencesCreate(0, @"SCNetworkInterface", @"NetworkInterfaces.plist");
  if (!v4)
  {
    __SCNetworkInterfaceCreateWithNIPreferencesUsingBSDName_cold_2();
  }

LABEL_6:
  Value = SCPreferencesGetValue(v4, @"Interfaces");
  TypeID = CFArrayGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID && (Count = CFArrayGetCount(Value), Count >= 1))
  {
    v8 = Count;
    v9 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Value, v9);
      v11 = CFDictionaryGetTypeID();
      if (ValueAtIndex)
      {
        if (CFGetTypeID(ValueAtIndex) == v11)
        {
          v12 = CFDictionaryGetValue(ValueAtIndex, @"BSD Name");
          v13 = CFStringGetTypeID();
          if (v12)
          {
            if (CFGetTypeID(v12) == v13 && CFEqual(a3, v12))
            {
              break;
            }
          }
        }
      }

      if (v8 == ++v9)
      {
        goto LABEL_16;
      }
    }

    v14 = __SCNetworkInterfaceCreateWithStorageEntity(ValueAtIndex);
  }

  else
  {
LABEL_16:
    v14 = 0;
  }

  CFRelease(v4);
  return v14;
}

__CFDictionary *__SCNetworkInterfaceCreateMappingUsingBSDName(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v3 = Count;
  Mutable = 0;
  v5 = 0;
  v6 = MEMORY[0x1E695E9D8];
  v7 = MEMORY[0x1E695E9E8];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
    BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
    if (BSDName)
    {
      v10 = BSDName;
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, v6, v7);
      }

      CFDictionarySetValue(Mutable, v10, ValueAtIndex);
    }

    ++v5;
  }

  while (v3 != v5);
  return Mutable;
}

const __CFDictionary *__SCNetworkInterfaceEntityIsPPTP(const __CFDictionary *result)
{
  if (result)
  {
    Value = CFDictionaryGetValue(result, @"SubType");
    return (Value && CFEqual(Value, @"PPTP"));
  }

  return result;
}

uint64_t SCNetworkInterfaceTypeSetTemporaryOverrideCost(const __SCPreferences *a1, CFTypeRef cf1, int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (CFEqual(cf1, @"IEEE80211") || CFEqual(cf1, @"Cellular"))
  {
    v6 = CFStringCreateWithFormat(0, 0, @"%@%@/%@/%@/%@/%@", @"/", @"System", @"Network", @"Override", @"InterfaceType", cf1);
    Value = SCPreferencesPathGetValue(a1, v6);
    TypeID = CFDictionaryGetTypeID();
    if (Value && CFGetTypeID(Value) == TypeID)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v10 = MutableCopy;
    v11 = @"Inexpensive";
    if (a3 != 1)
    {
      v11 = 0;
    }

    if (a3 == 2)
    {
      v12 = @"Expensive";
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      CFDictionarySetValue(MutableCopy, @"Cost", v12);
      if (_SC_isAppleInternal_once_3 != -1)
      {
        SCNetworkInterfaceTypeSetTemporaryOverrideCost_cold_1();
      }

      if (!_SC_isAppleInternal_isInternal_3)
      {
        goto LABEL_23;
      }

      LODWORD(valuePtr) = 0;
      v13 = SCDynamicStoreCopyValue(0, @"Global:NetworkInterfaceOverrideExpensiveExpiration");
      v14 = CFDictionaryGetTypeID();
      if (!v13)
      {
        goto LABEL_23;
      }

      if (CFGetTypeID(v13) == v14)
      {
        v15 = CFDictionaryGetValue(v13, @"Delta");
        v16 = CFNumberGetTypeID();
        if (v15)
        {
          if (CFGetTypeID(v15) == v16)
          {
            CFNumberGetValue(v15, kCFNumberIntType, &valuePtr);
          }
        }
      }

      CFRelease(v13);
      v17 = LODWORD(valuePtr);
      if (SLODWORD(valuePtr) < 1 || (Current = CFAbsoluteTimeGetCurrent(), (v19 = CFDateCreate(0, Current + v17)) == 0))
      {
LABEL_23:
        v26 = 0;
        v24 = 0;
        v20 = CFCalendarCreateWithIdentifier(0, *MEMORY[0x1E695E678]);
        valuePtr = CFAbsoluteTimeGetCurrent();
        CFCalendarAddComponents(v20, &valuePtr, 0, "d", 1);
        CFCalendarDecomposeAbsoluteTime(v20, valuePtr, "yMd", &v24, &v24 + 4, &v26);
        CFCalendarComposeAbsoluteTime(v20, &valuePtr, "yMdHms", v24, HIDWORD(v24), v26, 5, 0, 0);
        CFRelease(v20);
        v19 = CFDateCreate(0, valuePtr);
      }

      CFDictionarySetValue(v10, @"Expiration", v19);
      CFRelease(v19);
    }

    else
    {
      CFDictionaryRemoveValue(MutableCopy, @"Cost");
      CFDictionaryRemoveValue(v10, @"Expiration");
      if (!CFDictionaryGetCount(v10))
      {
        CFRelease(v10);
        goto LABEL_30;
      }
    }

    if (v10)
    {
      v21 = SCPreferencesPathSetValue(a1, v6, v10);
      CFRelease(v10);
      goto LABEL_33;
    }

LABEL_30:
    v22 = CFDictionaryGetTypeID();
    if (!Value || CFGetTypeID(Value) != v22)
    {
      CFRelease(v6);
      v21 = 1;
LABEL_36:
      _SCErrorSet(0);
      return v21;
    }

    v21 = SCPreferencesPathRemoveValue(a1, v6);
LABEL_33:
    CFRelease(v6);
    if (!v21)
    {
      return v21;
    }

    goto LABEL_36;
  }

  _SCErrorSet(1002);
  return 0;
}

uint64_t SCNetworkInterfaceTypeGetTemporaryOverrideCost(const __SCPreferences *a1, uint64_t a2)
{
  v3 = CFStringCreateWithFormat(0, 0, @"%@%@/%@/%@/%@/%@", @"/", @"System", @"Network", @"Override", @"InterfaceType", a2);
  Value = SCPreferencesPathGetValue(a1, v3);
  CFRelease(v3);
  TypeID = CFDictionaryGetTypeID();
  if (!Value)
  {
    return 0;
  }

  if (CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  v6 = CFDictionaryGetValue(Value, @"Expiration");
  v7 = CFDateGetTypeID();
  if (!v6)
  {
    return 0;
  }

  if (CFGetTypeID(v6) != v7)
  {
    return 0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v9 = CFDateCreate(0, Current);
  v10 = CFDateCompare(v9, v6, 0);
  CFRelease(v9);
  if (v10 != kCFCompareLessThan)
  {
    return 0;
  }

  v12 = CFDictionaryGetValue(Value, @"Cost");
  v13 = CFStringGetTypeID();
  if (!v12 || CFGetTypeID(v12) != v13)
  {
    return 0;
  }

  if (CFEqual(v12, @"Expensive"))
  {
    return 2;
  }

  return CFEqual(v12, @"Inexpensive") != 0;
}

uint64_t __SCNetworkInterfaceEqual(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = CFEqual(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    v5 = *(a1 + 112);
    v6 = *(a2 + 112);
    if (v5 == v6 || (result = 0, v5) && v6 && (result = CFEqual(*(a1 + 112), v6), result))
    {
      v7 = *(a1 + 120);
      v8 = *(a2 + 120);
      if (v7)
      {
        if (v8)
        {
          if (v7 == v8)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }

      else if (!v8)
      {
        goto LABEL_17;
      }

      NonLocalizedDisplayName = __SCNetworkInterfaceGetNonLocalizedDisplayName(a1);
      v10 = __SCNetworkInterfaceGetNonLocalizedDisplayName(a2);
      if (!NonLocalizedDisplayName)
      {
        goto LABEL_17;
      }

      v8 = v10;
      if (!v10 || NonLocalizedDisplayName == v10)
      {
        goto LABEL_17;
      }

      v7 = NonLocalizedDisplayName;
LABEL_16:
      result = CFEqual(v7, v8);
      if (!result)
      {
        return result;
      }

LABEL_17:
      if (!CFEqual(*(a1 + 16), @"Bond") || ((v11 = *(a1 + 320), v12 = *(a2 + 320), v11 == v12) || (result = 0, v11) && v12 && (result = CFEqual(*(a1 + 320), v12), result)) && ((v13 = *(a1 + 328), v14 = *(a2 + 328), v13 == v14) || (result = 0, v13) && v14 && (result = CFEqual(*(a1 + 328), v14), result)))
      {
        if (!CFEqual(*(a1 + 16), @"Bridge") || (v15 = *(a1 + 352), v16 = *(a2 + 352), v15 == v16) || (result = 0, v15) && v16 && (result = CFEqual(*(a1 + 352), v16), result))
        {
          if (!CFEqual(*(a1 + 16), @"VLAN") || ((v17 = *(a1 + 376), v18 = *(a2 + 376), v17 == v18) || (result = 0, v17) && v18 && (result = CFEqual(*(a1 + 376), v18), result)) && ((v19 = *(a1 + 384), v20 = *(a2 + 384), v19 == v20) || (result = 0, v19) && v20 && (result = CFEqual(*(a1 + 384), v20), result)))
          {
            v21 = *(a1 + 72);
            v22 = *(a2 + 72);
            return v21 == v22 || v21 && v22 && CFEqual(v21, v22);
          }
        }
      }
    }
  }

  return result;
}

CFHashCode __SCNetworkInterfaceHash(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 120);
  v4 = CFHash(v2);
  if (v3)
  {
    v4 ^= CFHash(*(a1 + 120));
  }

  return v4;
}

__CFString *__SCNetworkInterfaceCopyFormattingDescription(uint64_t a1, const __CFDictionary *a2)
{
  valuePtr[1] = *MEMORY[0x1E69E9840];
  v4 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v4, 0);
  CFStringAppendFormat(Mutable, 0, @"<SCNetworkInterface %p [%p]> {", a1, v4);
  CFStringAppendFormat(Mutable, 0, @"type = %@", *(a1 + 16));
  CFStringAppendFormat(Mutable, 0, @", entity_device = %@", *(a1 + 112));
  if (*(a1 + 120))
  {
    CFStringAppendFormat(Mutable, 0, @"+%@", *(a1 + 120));
  }

  CFStringAppendFormat(Mutable, 0, @", entity_type = %@", *(a1 + 128));
  if (*(a1 + 136))
  {
    CFStringAppendFormat(Mutable, 0, @" / %@", *(a1 + 136));
  }

  if (*(a1 + 32))
  {
    CFStringAppendFormat(Mutable, 0, @", name = %@", *(a1 + 32));
  }

  if (*(a1 + 40))
  {
    CFStringAppendFormat(Mutable, 0, @", name(l) = %@", *(a1 + 40));
  }

  else if (*(a1 + 48))
  {
    CFStringAppendFormat(Mutable, 0, @", name(k) = %@", *(a1 + 48));
    if (*(a1 + 56))
    {
      CFStringAppendFormat(Mutable, 0, @"+%@", *(a1 + 56));
    }

    if (*(a1 + 64))
    {
      CFStringAppendFormat(Mutable, 0, @"+%@", *(a1 + 64));
    }
  }

  if (*(a1 + 160))
  {
    CFStringAppendFormat(Mutable, 0, @", address = ");
    BytePtr = CFDataGetBytePtr(*(a1 + 160));
    Length = CFDataGetLength(*(a1 + 160));
    if (Length >= 1)
    {
      v8 = Length;
      for (i = 0; i != v8; ++i)
      {
        if (i)
        {
          v10 = ":";
        }

        else
        {
          v10 = "";
        }

        CFStringAppendFormat(Mutable, 0, @"%s%02x", v10, BytePtr[i]);
      }
    }
  }

  if (*(a1 + 176))
  {
    v11 = "TRUE";
  }

  else
  {
    v11 = "FALSE";
  }

  CFStringAppendFormat(Mutable, 0, @", builtin = %s", v11);
  if (*(a1 + 192))
  {
    CFStringAppendFormat(Mutable, 0, @", hidden = TRUE");
  }

  if (*(a1 + 193))
  {
    CFStringAppendFormat(Mutable, 0, @", HIDDEN");
  }

  if (*(a1 + 240))
  {
    CFStringAppendFormat(Mutable, 0, @", trust required = TRUE");
  }

  if (*(a1 + 241))
  {
    CFStringAppendFormat(Mutable, 0, @", ephemeral");
  }

  if (*(a1 + 242))
  {
    CFStringAppendFormat(Mutable, 0, @", self-named");
  }

  if (*(a1 + 200))
  {
    CFStringAppendFormat(Mutable, 0, @", location = %@", *(a1 + 200));
  }

  if (*(a1 + 208))
  {
    CFStringAppendFormat(Mutable, 0, @", path = %@", *(a1 + 208));
  }

  if (*(a1 + 216))
  {
    CFStringAppendFormat(Mutable, 0, @", entryID = 0x%llx", *(a1 + 216));
  }

  if (*(a1 + 248))
  {
    CFStringAppendFormat(Mutable, 0, @", type = %@", *(a1 + 248));
  }

  if (*(a1 + 256))
  {
    CFStringAppendFormat(Mutable, 0, @", unit = %@", *(a1 + 256));
  }

  if (*(a1 + 264))
  {
    CFStringAppendFormat(Mutable, 0, @", family = %@", *(a1 + 264));
  }

  if (*(a1 + 272))
  {
    CFStringAppendFormat(Mutable, 0, @", subfamily = %@", *(a1 + 272));
  }

  v12 = *(a1 + 296);
  if (*(a1 + 288) != 0)
  {
    valuePtr[0] = 0;
    TypeID = CFNumberGetTypeID();
    if (!v12 || CFGetTypeID(v12) != TypeID || !CFNumberGetValue(*(a1 + 296), kCFNumberIntType, valuePtr + 4))
    {
      HIDWORD(valuePtr[0]) = 0;
    }

    v14 = *(a1 + 288);
    v15 = CFNumberGetTypeID();
    if (!v14 || CFGetTypeID(v14) != v15 || !CFNumberGetValue(*(a1 + 288), kCFNumberIntType, valuePtr))
    {
      LODWORD(valuePtr[0]) = 0;
    }

    if (*(a1 + 280))
    {
      CFStringAppendFormat(Mutable, 0, @", USB name = %@", *(a1 + 280));
    }

    CFStringAppendFormat(Mutable, 0, @", USB vid/pid = %d/%d", LODWORD(valuePtr[0]), HIDWORD(valuePtr[0]));
  }

  if (*(a1 + 184))
  {
    CFStringAppendFormat(Mutable, 0, @", action = %@", *(a1 + 184));
  }

  v16 = *(a1 + 224);
  if (v16)
  {
    v17 = _SCCopyDescription(v16, a2);
    CFStringAppendFormat(Mutable, a2, @", overrides = %@", v17);
    CFRelease(v17);
  }

  v18 = *(a1 + 312);
  if (v18 > 0x18)
  {
    v19 = "?";
  }

  else
  {
    v19 = sortOrderName[v18];
  }

  CFStringAppendFormat(Mutable, 0, @", order = %u (%s)", *(a1 + 312), v19);
  if (*(a1 + 80))
  {
    CFStringAppendFormat(Mutable, 0, @", prefs = %p", *(a1 + 80));
  }

  if (*(a1 + 96))
  {
    CFStringAppendFormat(Mutable, 0, @", service = %@", *(a1 + 96));
  }

  if (*(a1 + 72))
  {
    CFStringAppendFormat(Mutable, 0, @", interface = %@", *(a1 + 72));
  }

  if (*(a1 + 104))
  {
    CFStringAppendFormat(Mutable, a2, @", unsaved = %@", *(a1 + 104));
  }

  v20 = *(a1 + 320);
  if (v20)
  {
    Count = CFArrayGetCount(v20);
    if (Count >= 1)
    {
      v22 = Count;
      for (j = 0; j != v22; ++j)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 320), j);
        if (j)
        {
          v25 = ",";
        }

        else
        {
          v25 = ", interfaces = ";
        }

        BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
        CFStringAppendFormat(Mutable, 0, @"%s%@", v25, BSDName);
      }
    }
  }

  if (*(a1 + 328))
  {
    CFStringAppendFormat(Mutable, 0, @", mode = %@", *(a1 + 328));
  }

  v27 = *(a1 + 336);
  if (v27)
  {
    v28 = _SCCopyDescription(v27, a2);
    CFStringAppendFormat(Mutable, a2, @", options = %@", v28);
    CFRelease(v28);
  }

  v29 = *(a1 + 352);
  if (v29)
  {
    v30 = CFArrayGetCount(v29);
    if (v30 >= 1)
    {
      v31 = v30;
      for (k = 0; k != v31; ++k)
      {
        v33 = CFArrayGetValueAtIndex(*(a1 + 352), k);
        if (k)
        {
          v34 = ",";
        }

        else
        {
          v34 = ", interfaces = ";
        }

        v35 = SCNetworkInterfaceGetBSDName(v33);
        CFStringAppendFormat(Mutable, 0, @"%s%@", v34, v35);
      }
    }
  }

  v36 = *(a1 + 360);
  if (v36)
  {
    v37 = _SCCopyDescription(v36, a2);
    CFStringAppendFormat(Mutable, a2, @", options = %@", v37);
    CFRelease(v37);
  }

  v38 = *(a1 + 376);
  if (v38)
  {
    v39 = SCNetworkInterfaceGetBSDName(v38);
    CFStringAppendFormat(Mutable, 0, @", interface = %@", v39);
  }

  if (*(a1 + 384))
  {
    CFStringAppendFormat(Mutable, 0, @", tag = %@", *(a1 + 384));
  }

  v40 = *(a1 + 392);
  if (v40)
  {
    v41 = _SCCopyDescription(v40, a2);
    CFStringAppendFormat(Mutable, a2, @", options = %@", v41);
    CFRelease(v41);
  }

  CFStringAppendFormat(Mutable, 0, @"}");
  return Mutable;
}

__CFString *__SCNetworkInterfaceCopyDescription(uint64_t a1)
{

  return __SCNetworkInterfaceCopyFormattingDescription(a1, 0);
}

CFStringRef copy_interface_string(__CFBundle *a1, const __CFString *a2, int a3)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v6 = copy_string_from_bundle(a1, a2, a3);
  v7 = v6;
  if (v6)
  {
    if (CFEqual(v6, a2) && (copy_interface_string_reported & 1) == 0)
    {
      v8 = copy_string_from_bundle(a1, @"airport", a3);
      v9 = v8;
      if (v8)
      {
        if (!CFEqual(v8, @"airport"))
        {
          goto LABEL_9;
        }
      }

      v10 = __log_SCNetworkConfiguration();
      v11 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v10, v11))
      {
        v12 = _os_log_pack_size();
        v18 = v33 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
        v19 = __error();
        v20 = _os_log_pack_fill(v18, v12, *v19, &dword_1AD2AD000, "Failed to retrieve the interface string: {Bundle: %@, key: %@, localized: %d}");
        *v20 = 138412802;
        *(v20 + 4) = a1;
        *(v20 + 12) = 2112;
        *(v20 + 14) = @"airport";
        *(v20 + 22) = 1024;
        *(v20 + 24) = a3;
        __SC_log_send(3, v10, v11, v18);
      }

      _SC_crash("Failed to retrieve interface string", 0, 0);
      copy_interface_string_reported = 1;
      if (v9)
      {
LABEL_9:
        CFRelease(v9);
      }
    }
  }

  else
  {
    v21 = __log_SCNetworkConfiguration();
    v22 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v21, v22))
    {
      v23 = _os_log_pack_size();
      v29 = v33 - ((MEMORY[0x1EEE9AC00](v23, v24, v25, v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = __error();
      v31 = _os_log_pack_fill(v29, v23, *v30, &dword_1AD2AD000, "Received NULL string for the interface key: {Bundle: %@, key: %@, localized: %d}");
      *v31 = 138412802;
      *(v31 + 4) = a1;
      *(v31 + 12) = 2112;
      *(v31 + 14) = a2;
      *(v31 + 22) = 1024;
      *(v31 + 24) = a3;
      __SC_log_send(3, v21, v22, v29);
    }
  }

  return v7;
}

CFStringRef copy_string_from_bundle(__CFBundle *a1, CFStringRef value, int a3)
{
  if (a3)
  {

    return CFBundleCopyLocalizedString(a1, value, value, @"NetworkInterface");
  }

  else
  {

    return CFBundleCopyLocalizedStringForLocalization();
  }
}

uint64_t isBuiltin(uint64_t a1)
{
  v1 = pci_slot(a1, 0);
  if (!v1)
  {
    return 1;
  }

  CFRelease(v1);
  return 0;
}

uint64_t pci_slot_info(uint64_t a1, uint64_t a2, CFMutableStringRef *a3, CFStringRef *a4)
{
  v6 = a2;
  v7 = a1;
  properties[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  properties[0] = 0;
  *a3 = 0;
  *a4 = 0;
  IORegistryEntryCreateCFProperties(a1, properties, 0, 0);
  if (properties[0])
  {
    v8 = IODictionaryCopyBSDName(properties[0]);
    CFRelease(properties[0]);
    if (v8)
    {
      v9 = pci_slot(v7, &cf);
      *a3 = v9;
      if (v9)
      {
        if (!cf)
        {
          v10 = 1;
LABEL_11:
          CFRelease(v8);
          return v10;
        }

        *a4 = pci_port(cf, v6, v8);
        v10 = 1;
      }

      else
      {
        v10 = 0;
      }

      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_11;
    }
  }

  return 0;
}

uint64_t isThunderbolt(io_registry_entry_t a1)
{
  result = IORegistryEntrySearchCFProperty(a1, "IOService", @"PCI-Thunderbolt", 0, 3u);
  if (result)
  {
    CFRelease(result);
    return 1;
  }

  return result;
}

void *processUSBInterface(void *result, io_registry_entry_t entry)
{
  v3 = result;
  if (!result[35])
  {
    result = IORegistryEntrySearchCFProperty(entry, "IOService", @"kUSBProductString", 0, 3u);
    v3[35] = result;
  }

  if (!v3[36])
  {
    result = IORegistryEntrySearchCFProperty(entry, "IOService", @"idVendor", 0, 3u);
    v3[36] = result;
  }

  if (!v3[37])
  {
    result = IORegistryEntrySearchCFProperty(entry, "IOService", @"idProduct", 0, 3u);
    v3[37] = result;
  }

  return result;
}

CFMutableStringRef pci_slot(io_registry_entry_t a1, CFTypeRef *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *a2 = 0;
  }

  CFProperty = IORegistryEntryCreateCFProperty(a1, @"AAPL,slot-name", 0, 0);
  if (CFProperty)
  {
    v5 = CFProperty;
    Mutable = CFStringCreateMutable(0, 0);
    TypeID = CFStringGetTypeID();
    if (CFGetTypeID(v5) == TypeID)
    {
      if (a2)
      {
        *a2 = CFStringCreateCopy(0, v5);
      }

      CFStringAppend(Mutable, v5);
    }

    else
    {
      v8 = CFDataGetTypeID();
      if (CFGetTypeID(v5) == v8)
      {
        if (a2)
        {
          *a2 = CFDataCreateCopy(0, v5);
        }

        BytePtr = CFDataGetBytePtr(v5);
        CFStringAppendCString(Mutable, BytePtr, 0x8000100u);
      }
    }

    for (i = 0; i != 3; ++i)
    {
      v11 = slot_prefixes[i];
      Length = CFStringGetLength(v11);
      if (CFStringGetLength(Mutable) > Length)
      {
        v34.location = 0;
        v34.length = Length;
        CFStringFindAndReplace(Mutable, v11, &stru_1F22591E8, v34, 9uLL);
      }
    }

    CFStringTrimWhitespace(Mutable);
    CFRelease(v5);
  }

  else
  {
    Mutable = 0;
  }

  parent = 0;
  ParentEntry = IORegistryEntryGetParentEntry(a1, "IOService", &parent);
  if (ParentEntry != -536870208)
  {
    v14 = ParentEntry;
    if (!ParentEntry)
    {
      v31 = 0;
      v15 = pci_slot(parent, &v31);
      if (v15)
      {
        v16 = v15;
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (a2)
        {
          if (*a2)
          {
            CFRelease(*a2);
          }

          v17 = v31;
          *a2 = v31;
          if (!v17)
          {
            goto LABEL_33;
          }

          CFRetain(v17);
        }
      }

      else
      {
        v16 = Mutable;
      }

      if (v31)
      {
        CFRelease(v31);
      }

LABEL_33:
      IOObjectRelease(parent);
      return v16;
    }

    v18 = __log_SCNetworkConfiguration();
    v19 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v18, v19))
    {
      v20 = _os_log_pack_size();
      v26 = &v30 - ((MEMORY[0x1EEE9AC00](v20, v21, v22, v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = __error();
      v28 = _os_log_pack_fill(v26, v20, *v27, &dword_1AD2AD000, "IORegistryEntryGetParentEntry() failed, kr = %d", v30);
      *v28 = 67109120;
      v28[1] = v14;
      __SC_log_send(6, v18, v19, v26);
    }
  }

  return Mutable;
}

CFStringRef pci_port(void *a1, int a2, const void *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  existing = 0;
  keys = @"AAPL,slot-name";
  v58 = 0;
  values = a1;
  v56 = 0;
  v5 = MEMORY[0x1E695E9D8];
  v6 = MEMORY[0x1E695E9E8];
  v7 = CFDictionaryCreate(0, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  keys = @"IOProviderClass";
  v58 = @"IOPropertyMatch";
  values = @"IOPCIDevice";
  v56 = v7;
  v8 = CFDictionaryCreate(0, &keys, &values, 2, v5, v6);
  CFRelease(v7);
  MatchingServices = IOServiceGetMatchingServices(masterPort, v8, &existing);
  if (MatchingServices)
  {
    v10 = MatchingServices;
    v11 = __log_SCNetworkConfiguration();
    v12 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v11, v12))
    {
      v13 = _os_log_pack_size();
      v19 = &v50 - ((MEMORY[0x1EEE9AC00](v13, v14, v15, v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = __error();
      v21 = _os_log_pack_fill(v19, v13, *v20, &dword_1AD2AD000, "IOServiceGetMatchingServices() failed, kr = %d", v50);
      *v21 = 67109120;
      v21[1] = v10;
      __SC_log_send(6, v11, v12, v19);
    }

    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v23 = IOIteratorNext(existing);
  if (v23)
  {
    v24 = v23;
    while (1)
    {
      v53 = 0;
      v25 = MEMORY[0x1B26F4630](v24, "IOService", 1, &v53);
      if (v25)
      {
        break;
      }

      while (1)
      {
        v26 = IOIteratorNext(v53);
        v27 = v26;
        if (!v26)
        {
          break;
        }

        if (IOObjectConformsTo(v26, "IONetworkInterface"))
        {
          properties = 0;
          IORegistryEntryCreateCFProperties(v27, &properties, 0, 0);
          if (properties)
          {
            valuePtr = a2;
            Value = CFDictionaryGetValue(properties, @"IOInterfaceType");
            if (Value)
            {
              v29 = Value;
              TypeID = CFNumberGetTypeID();
              if (CFGetTypeID(v29) != TypeID || !CFNumberGetValue(v29, kCFNumberIntType, &valuePtr))
              {
                valuePtr = a2;
              }
            }

            if (valuePtr == a2)
            {
              v31 = IODictionaryCopyBSDName(properties);
              if (v31)
              {
                v32 = v31;
                CFArrayAppendValue(Mutable, v31);
                CFRelease(v32);
              }
            }

            CFRelease(properties);
          }
        }

        IOObjectRelease(v27);
      }

      IOObjectRelease(v53);
      IOObjectRelease(v24);
      v24 = IOIteratorNext(existing);
      if (!v24)
      {
        goto LABEL_20;
      }
    }

    v37 = v25;
    v38 = __log_SCNetworkConfiguration();
    v39 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v38, v39))
    {
      v40 = _os_log_pack_size();
      v46 = &v50 - ((MEMORY[0x1EEE9AC00](v40, v41, v42, v43, v44, v45) + 15) & 0xFFFFFFFFFFFFFFF0);
      v47 = __error();
      v48 = _os_log_pack_fill(v46, v40, *v47, &dword_1AD2AD000, "IORegistryEntryCreateIterator() failed, kr = %d", v50);
      *v48 = 67109120;
      v48[1] = v37;
      __SC_log_send(6, v38, v39, v46);
    }

    CFRelease(Mutable);
    return 0;
  }

LABEL_20:
  IOObjectRelease(existing);
  Count = CFArrayGetCount(Mutable);
  if (Count < 2 || (v34 = Count, v60.location = 0, v60.length = Count, CFArraySortValues(Mutable, v60, compare_bsdNames, 0), v61.location = 0, v61.length = v34, FirstIndexOfValue = CFArrayGetFirstIndexOfValue(Mutable, v61, a3), FirstIndexOfValue == -1))
  {
    v36 = 0;
  }

  else
  {
    v36 = CFStringCreateWithFormat(0, 0, @"%ld", FirstIndexOfValue + 1);
  }

  CFRelease(Mutable);
  return v36;
}

CFComparisonResult compare_bsdNames(const __CFString *a1, const __CFString *a2)
{

  return CFStringCompare(a1, a2, 0);
}

uint64_t isBluetoothBuiltin(_BYTE *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  existing = 0;
  v2 = masterPort;
  v3 = IOServiceMatching("IOBluetoothHCIController");
  MatchingServices = IOServiceGetMatchingServices(v2, v3, &existing);
  v5 = existing;
  if (MatchingServices)
  {
    v6 = 1;
  }

  else
  {
    v6 = existing == 0;
  }

  if (v6)
  {
    if (MatchingServices)
    {
      v7 = __log_SCNetworkConfiguration();
      v8 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v7, v8))
      {
        v9 = _os_log_pack_size();
        v15 = &valuePtr - ((MEMORY[0x1EEE9AC00](v9, v10, v11, v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
        v16 = __error();
        v17 = _os_log_pack_fill(v15, v9, *v16, &dword_1AD2AD000, "IOServiceGetMatchingServices() failed, kr = %d", valuePtr);
        *v17 = 67109120;
        v17[1] = MatchingServices;
        __SC_log_send(6, v7, v8, v15);
      }
    }

    v18 = 0;
    *a1 = 0;
  }

  else
  {
    *a1 = 1;
    v19 = IOIteratorNext(v5);
    IOObjectRelease(existing);
    if (v19)
    {
      CFProperty = IORegistryEntryCreateCFProperty(v19, @"idVendor", 0, 0);
      if (CFProperty)
      {
        v21 = CFProperty;
        valuePtr = 0;
        TypeID = CFNumberGetTypeID();
        v18 = 0;
        if (CFGetTypeID(v21) == TypeID)
        {
          if (CFNumberGetValue(v21, kCFNumberIntType, &valuePtr))
          {
            v23 = valuePtr == 1452;
          }

          else
          {
            v23 = 0;
          }

          v18 = v23;
        }

        CFRelease(v21);
      }

      else
      {
        v18 = 0;
      }

      IOObjectRelease(v19);
    }

    else
    {
      return 0;
    }
  }

  return v18;
}

void set_connection_script(uint64_t a1, const void *a2)
{
  Mutable = *(a1 + 224);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(a1 + 224) = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, @"Modem");
  if (Value)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v7 = MutableCopy;
  if (a2)
  {
    CFDictionarySetValue(MutableCopy, @"ConnectionScript", a2);
  }

  else
  {
    CFDictionaryRemoveValue(MutableCopy, @"ConnectionScript");
  }

  Count = CFDictionaryGetCount(v7);
  v9 = *(a1 + 224);
  if (Count < 1)
  {
    CFDictionaryRemoveValue(v9, @"Modem");
  }

  else
  {
    CFDictionarySetValue(v9, @"Modem", v7);
  }

  CFRelease(v7);
  if (!CFDictionaryGetCount(*(a1 + 224)))
  {
    CFRelease(*(a1 + 224));
    *(a1 + 224) = 0;
  }
}

uint64_t is_valid_connection_script(const __CFString *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  _SC_cfstring_to_cstring(a1, v38, 1024, 0x8000100u);
  started = sysdir_start_search_path_enumeration(SYSDIR_DIRECTORY_LIBRARY, SYSDIR_DOMAIN_MASK_SYSTEM|SYSDIR_DOMAIN_MASK_LOCAL);
  result = MEMORY[0x1B26F5740](started, v37);
  if (result)
  {
    v4 = result;
    *&v3 = 136315138;
    v35 = v3;
    do
    {
      memset(&v36, 0, sizeof(v36));
      if (v38[0] == 47)
      {
        v37[0] = 0;
      }

      else
      {
        __strlcat_chk();
      }

      __strlcat_chk();
      if (stat(v37, &v36))
      {
        if (*__error() != 2)
        {
          v5 = __log_SCNetworkConfiguration();
          v6 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v5, v6))
          {
            v7 = _os_log_pack_size();
            v13 = &v35 - ((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
            v14 = __error();
            v15 = _os_log_pack_fill(v13, v7, *v14, &dword_1AD2AD000, "stat() failed: %s", v35);
            v16 = __error();
            v17 = strerror(*v16);
            *v15 = v35;
            *(v15 + 4) = v17;
            v18 = v5;
            v19 = v6;
            v20 = v13;
LABEL_17:
            __SC_log_send(6, v18, v19, v20);
            goto LABEL_19;
          }

          goto LABEL_19;
        }
      }

      else if ((v36.st_mode & 0xF000) == 0x8000)
      {
        return 1;
      }

      v21 = strlen(v37);
      if (v21 < 5 || !strstr(&v37[v21 - 6], ".ccl"))
      {
        __strlcat_chk();
        if (stat(v37, &v36))
        {
          if (*__error() == 2)
          {
            goto LABEL_19;
          }

          v22 = __log_SCNetworkConfiguration();
          v23 = _SC_syslog_os_log_mapping(6);
          if (!__SC_log_enabled(6, v22, v23))
          {
            goto LABEL_19;
          }

          v24 = _os_log_pack_size();
          v30 = &v35 - ((MEMORY[0x1EEE9AC00](v24, v25, v26, v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
          v31 = __error();
          v32 = _os_log_pack_fill(v30, v24, *v31, &dword_1AD2AD000, "stat() failed: %s", v35);
          v33 = __error();
          v34 = strerror(*v33);
          *v32 = v35;
          *(v32 + 4) = v34;
          v18 = v22;
          v19 = v23;
          v20 = v30;
          goto LABEL_17;
        }
      }

      if ((v36.st_mode & 0xF000) == 0x4000)
      {
        return 1;
      }

LABEL_19:
      result = MEMORY[0x1B26F5740](v4, v37);
      v4 = result;
    }

    while (result);
  }

  return result;
}

const __SCNetworkInterface *findInterface(const __CFArray *a1, const void *a2)
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
    BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
    if (BSDName)
    {
      if (CFEqual(BSDName, a2))
      {
        break;
      }
    }

    if (v5 == ++v6)
    {
      return 0;
    }
  }

  CFRetain(ValueAtIndex);
  return ValueAtIndex;
}

void localizeNumberString(CFStringRef *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (*a1)
  {
    Length = CFStringGetLength(*a1);
    rangep.location = 0;
    rangep.length = Length;
    v4 = CFLocaleCopyCurrent();
    v5 = CFNumberFormatterCreate(0, v4, kCFNumberFormatterNoStyle);
    v6 = CFNumberFormatterCreateNumberFromString(0, v5, v1, &rangep, 1uLL);
    if (v6 && (v7 = rangep.length, v7 == CFStringGetLength(v1)))
    {
      StringWithNumber = CFNumberFormatterCreateStringWithNumber(0, v5, v6);
    }

    else
    {
      StringWithNumber = CFRetain(v1);
    }

    v9 = StringWithNumber;
    if (v4)
    {
      CFRelease(v4);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    CFRelease(v1);
    *a1 = v9;
  }
}

__CFArray *copyPerInterfaceConfigurationPaths(uint64_t a1, uint64_t a2)
{
  Private = __SCNetworkServiceCreatePrivate(0, *(a1 + 80), *(a1 + 96), a1);
  v5 = SCNetworkSetCopyAll(*(a1 + 80));
  if (v5)
  {
    v6 = v5;
    Count = CFArrayGetCount(v5);
    if (Count < 1)
    {
      Mutable = 0;
    }

    else
    {
      v8 = Count;
      Mutable = 0;
      v10 = 0;
      v11 = MEMORY[0x1E695E9C0];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v10);
        v13 = SCNetworkSetCopyServices(ValueAtIndex);
        v17.length = CFArrayGetCount(v13);
        v17.location = 0;
        if (CFArrayContainsValue(v13, v17, Private))
        {
          SetID = SCNetworkSetGetSetID(ValueAtIndex);
          SetNetworkInterfaceEntity = SCPreferencesPathKeyCreateSetNetworkInterfaceEntity(0, SetID, *(a1 + 112), a2);
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(0, 0, v11);
          }

          CFArrayAppendValue(Mutable, SetNetworkInterfaceEntity);
          CFRelease(SetNetworkInterfaceEntity);
        }

        CFRelease(v13);
        ++v10;
      }

      while (v8 != v10);
    }

    CFRelease(Private);
    CFRelease(v6);
  }

  else
  {
    CFRelease(Private);
    return 0;
  }

  return Mutable;
}

void __addExtendedConfigurationType(const void *a1, uint64_t a2, uint64_t a3)
{
  if (!CFEqual(a1, *a3))
  {
    v5 = *(a3 + 8);
    v8.length = CFArrayGetCount(v5);
    v8.location = 0;
    if (!CFArrayContainsValue(v5, v8, a1))
    {
      v6 = *(a3 + 8);

      CFArrayAppendValue(v6, a1);
    }
  }
}

uint64_t _SCDynamicStoreCacheIsActive(unsigned __int8 *a1)
{
  TypeID = SCDynamicStoreGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {
    return a1[200];
  }

  _SCErrorSet(2001);
  return 0;
}

uint64_t __SCNetworkProtocolCreatePrivate(uint64_t a1, const __CFString *a2, const void *a3)
{
  if (__SCNetworkProtocolInitialize_initialized != -1)
  {
    __SCNetworkProtocolCreatePrivate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(Instance + 16) = CFStringCreateCopy(0, a2);
    *(Instance + 24) = CFRetain(a3);
  }

  return Instance;
}

BOOL __SCNetworkProtocolIsValidType(const __CFString *cf1)
{
  v2 = 0;
  while (!CFEqual(cf1, *__SCNetworkProtocolIsValidType_valid_types[v2]))
  {
    if (++v2 == 4)
    {
      v4.length = CFStringGetLength(cf1);
      v4.location = 0;
      return CFStringFindWithOptions(cf1, @".", v4, 0, 0) != 0;
    }
  }

  return 1;
}

CFComparisonResult _SCNetworkProtocolCompare(const __SCNetworkProtocol *a1, const __SCNetworkProtocol *a2)
{
  ProtocolType = SCNetworkProtocolGetProtocolType(a1);
  v4 = SCNetworkProtocolGetProtocolType(a2);

  return CFStringCompare(ProtocolType, v4, 0);
}

CFStringRef SCNetworkProtocolGetProtocolType(SCNetworkProtocolRef protocol)
{
  if (__SCNetworkProtocolInitialize_initialized == -1)
  {
    if (!protocol)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __SCNetworkProtocolCreatePrivate_cold_1();
    if (!protocol)
    {
      goto LABEL_6;
    }
  }

  v2 = __kSCNetworkProtocolTypeID;
  if (CFGetTypeID(protocol) == v2)
  {
    return *(protocol + 2);
  }

LABEL_6:
  _SCErrorSet(1002);
  return 0;
}

CFTypeID SCNetworkProtocolGetTypeID(void)
{
  if (__SCNetworkProtocolInitialize_initialized != -1)
  {
    __SCNetworkProtocolCreatePrivate_cold_1();
  }

  return __kSCNetworkProtocolTypeID;
}

CFDictionaryRef SCNetworkProtocolGetConfiguration(SCNetworkProtocolRef protocol)
{
  if (__SCNetworkProtocolInitialize_initialized == -1)
  {
    if (!protocol)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __SCNetworkProtocolCreatePrivate_cold_1();
    if (!protocol)
    {
      goto LABEL_6;
    }
  }

  v2 = __kSCNetworkProtocolTypeID;
  if (CFGetTypeID(protocol) == v2)
  {
    v3 = *(protocol + 3);
    NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(v3 + 16), *(protocol + 2));
    Value = __SCNetworkConfigurationGetValue(*(v3 + 32), NetworkServiceEntity);
    CFRelease(NetworkServiceEntity);
    return Value;
  }

LABEL_6:
  _SCErrorSet(1002);
  return 0;
}

Boolean SCNetworkProtocolGetEnabled(SCNetworkProtocolRef protocol)
{
  if (__SCNetworkProtocolInitialize_initialized == -1)
  {
    if (!protocol)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __SCNetworkProtocolCreatePrivate_cold_1();
    if (!protocol)
    {
      goto LABEL_6;
    }
  }

  v2 = __kSCNetworkProtocolTypeID;
  if (CFGetTypeID(protocol) == v2)
  {
    v3 = *(protocol + 3);
    NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(v3 + 16), *(protocol + 2));
    PrefsEnabled = __getPrefsEnabled(*(v3 + 32), NetworkServiceEntity);
    CFRelease(NetworkServiceEntity);
    return PrefsEnabled;
  }

LABEL_6:
  _SCErrorSet(1002);
  return 0;
}

Boolean SCNetworkProtocolSetConfiguration(SCNetworkProtocolRef protocol, CFDictionaryRef config)
{
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkProtocolInitialize_initialized == -1)
  {
    if (!protocol)
    {
LABEL_14:
      _SCErrorSet(1002);
      LOBYTE(v7) = 0;
      return v7;
    }
  }

  else
  {
    __SCNetworkProtocolCreatePrivate_cold_1();
    if (!protocol)
    {
      goto LABEL_14;
    }
  }

  v4 = __kSCNetworkProtocolTypeID;
  if (CFGetTypeID(protocol) != v4)
  {
    goto LABEL_14;
  }

  v5 = *(protocol + 3);
  if (!__SCNetworkServiceExists(v5))
  {
    v20 = __log_SCNetworkConfiguration();
    v21 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v20, v21))
    {
      v22 = _os_log_pack_size();
      v28 = block - ((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
      v29 = __error();
      v30 = _os_log_pack_fill(v28, v22, *v29, &dword_1AD2AD000, "SCNetworkProtocolSetConfiguration() w/removed service\n  protocol = %@\n  service = %@");
      v31 = *(protocol + 2);
      *v30 = 138412546;
      *(v30 + 4) = v31;
      *(v30 + 12) = 2112;
      *(v30 + 14) = v5;
      __SC_log_send(3, v20, v21, v28);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_2;
    block[3] = &__block_descriptor_tmp_37_0;
    block[5] = 0;
    block[6] = 0;
    block[4] = "SCNetworkProtocolSetConfiguration() w/removed service";
    if (_SC_crash_once_once_2 != -1)
    {
      dispatch_once(&_SC_crash_once_once_2, block);
    }

    goto LABEL_14;
  }

  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(*(protocol + 3) + 16), *(protocol + 2));
  v7 = __SCNetworkConfigurationSetValue(*(v5 + 32), NetworkServiceEntity, config, 1);
  CFRelease(NetworkServiceEntity);
  if (v7)
  {
    v8 = __log_SCNetworkConfiguration();
    v9 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v8, v9))
    {
      v10 = _os_log_pack_size();
      v16 = block - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = __error();
      v18 = _os_log_pack_fill(v16, v10, *v17, &dword_1AD2AD000, "SCNetworkProtocolSetConfiguration(): %@ --> %@");
      v19 = @"NULL";
      if (config)
      {
        v19 = config;
      }

      *v18 = 138412546;
      *(v18 + 4) = protocol;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v19;
      __SC_log_send(7, v8, v9, v16);
    }
  }

  return v7;
}

Boolean SCNetworkProtocolSetEnabled(SCNetworkProtocolRef protocol, Boolean enabled)
{
  v2 = enabled;
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkProtocolInitialize_initialized == -1)
  {
    if (!protocol)
    {
LABEL_14:
      _SCErrorSet(1002);
      LOBYTE(v7) = 0;
      return v7;
    }
  }

  else
  {
    __SCNetworkProtocolCreatePrivate_cold_1();
    if (!protocol)
    {
      goto LABEL_14;
    }
  }

  v4 = __kSCNetworkProtocolTypeID;
  if (CFGetTypeID(protocol) != v4)
  {
    goto LABEL_14;
  }

  v5 = *(protocol + 3);
  if (!__SCNetworkServiceExists(v5))
  {
    v20 = __log_SCNetworkConfiguration();
    v21 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v20, v21))
    {
      v22 = _os_log_pack_size();
      v28 = block - ((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
      v29 = __error();
      v30 = _os_log_pack_fill(v28, v22, *v29, &dword_1AD2AD000, "SCNetworkProtocolSetEnabled() w/removed service\n  protocol = %@\n  service = %@");
      v31 = *(protocol + 2);
      *v30 = 138412546;
      *(v30 + 4) = v31;
      *(v30 + 12) = 2112;
      *(v30 + 14) = v5;
      __SC_log_send(3, v20, v21, v28);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_2;
    block[3] = &__block_descriptor_tmp_37_0;
    block[5] = 0;
    block[6] = 0;
    block[4] = "SCNetworkProtocolSetEnabled() w/removed service";
    if (_SC_crash_once_once_2 != -1)
    {
      dispatch_once(&_SC_crash_once_once_2, block);
    }

    goto LABEL_14;
  }

  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(*(protocol + 3) + 16), *(protocol + 2));
  v7 = __setPrefsEnabled(*(v5 + 32), NetworkServiceEntity, v2);
  CFRelease(NetworkServiceEntity);
  if (v7)
  {
    v8 = __log_SCNetworkConfiguration();
    v9 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v8, v9))
    {
      v10 = _os_log_pack_size();
      v16 = block - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = __error();
      v18 = _os_log_pack_fill(v16, v10, *v17, &dword_1AD2AD000, "SCNetworkProtocolSetEnabled(): %@ -> %s");
      v19 = "Enabled";
      if (!v2)
      {
        v19 = "Disabled";
      }

      *v18 = 138412546;
      *(v18 + 4) = protocol;
      *(v18 + 12) = 2080;
      *(v18 + 14) = v19;
      __SC_log_send(7, v8, v9, v16);
    }
  }

  return v7;
}

void __SCNetworkProtocolDeallocate(uint64_t a1)
{
  CFRelease(*(a1 + 16));
  v2 = *(a1 + 24);

  CFRelease(v2);
}

uint64_t __SCNetworkProtocolEqual(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = CFEqual(*(a1 + 16), *(a2 + 16));
  if (!result)
  {
    return result;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  return v5 == v6 || v5 && v6 && CFEqual(v5, v6);
}

CFHashCode __SCNetworkProtocolHash(uint64_t a1)
{
  v1 = *(a1 + 16);

  return CFHash(v1);
}

__CFString *__SCNetworkProtocolCopyDescription(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<SCNetworkProtocol %p [%p]> {", a1, v2);
  CFStringAppendFormat(Mutable, 0, @"id = %@", a1[2]);
  CFStringAppendFormat(Mutable, 0, @", service = %p", a1[3]);
  CFStringAppendFormat(Mutable, 0, @", prefs = %p", *(a1[3] + 32));
  CFStringAppendFormat(Mutable, 0, @"}");
  return Mutable;
}

void *__SCNetworkServiceCreatePrivate(uint64_t a1, const void *a2, const __CFString *a3, const void *a4)
{
  if (__SCNetworkServiceInitialize_initialized != -1)
  {
    __SCNetworkServiceCreatePrivate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    if (a2)
    {
      v8 = CFRetain(a2);
    }

    else
    {
      v8 = 0;
    }

    Instance[4] = v8;
    Instance[2] = CFStringCreateCopy(0, a3);
    if (a4)
    {
      v9 = CFRetain(a4);
    }

    else
    {
      v9 = 0;
    }

    Instance[3] = v9;
  }

  return Instance;
}

CFComparisonResult _SCNetworkServiceCompare(const __SCNetworkService *a1, const __SCNetworkService *a2, const __CFArray *a3)
{
  ServiceID = SCNetworkServiceGetServiceID(a1);
  v6 = SCNetworkServiceGetServiceID(a2);
  if (a3)
  {
    Count = CFArrayGetCount(a3);
    v14.location = 0;
    v14.length = Count;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(a3, v14, ServiceID);
    v15.location = 0;
    v15.length = Count;
    v9 = CFArrayGetFirstIndexOfValue(a3, v15, v6);
    if (FirstIndexOfValue > v9)
    {
      v10 = v9 == -1;
      v11 = -1;
      goto LABEL_6;
    }

    if (FirstIndexOfValue < v9)
    {
      v10 = FirstIndexOfValue == -1;
      v11 = 1;
LABEL_6:
      if (v10)
      {
        return v11;
      }

      else
      {
        return -v11;
      }
    }
  }

  return CFStringCompare(ServiceID, v6, 0);
}

CFStringRef SCNetworkServiceGetServiceID(SCNetworkServiceRef service)
{
  if (__SCNetworkServiceInitialize_initialized == -1)
  {
    if (!service)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (!service)
    {
      goto LABEL_6;
    }
  }

  v2 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(service) == v2)
  {
    return *(service + 2);
  }

LABEL_6:
  _SCErrorSet(1002);
  return 0;
}

__CFArray *__SCNetworkServiceCopyAllEnabled(const __SCPreferences *a1)
{
  v1 = SCNetworkSetCopyAll(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Count = CFArrayGetCount(v1);
  if (Count >= 1)
  {
    v4 = Count;
    Mutable = 0;
    v6 = 0;
    v7 = MEMORY[0x1E695E9C0];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v2, v6);
      v9 = SCNetworkSetCopyServices(ValueAtIndex);
      if (v9)
      {
        v10 = v9;
        v11 = CFArrayGetCount(v9);
        if (v11 >= 1)
        {
          v12 = v11;
          for (i = 0; v12 != i; ++i)
          {
            v14 = CFArrayGetValueAtIndex(v10, i);
            if (SCNetworkServiceGetEnabled(v14))
            {
              if (!Mutable)
              {
                Mutable = CFArrayCreateMutable(0, 0, v7);
LABEL_12:
                CFArrayAppendValue(Mutable, v14);
                continue;
              }

              v16.length = CFArrayGetCount(Mutable);
              v16.location = 0;
              if (!CFArrayContainsValue(Mutable, v16, v14))
              {
                goto LABEL_12;
              }
            }
          }
        }

        CFRelease(v10);
      }

      if (++v6 == v4)
      {
        goto LABEL_19;
      }
    }
  }

  Mutable = 0;
LABEL_19:
  CFRelease(v2);
  return Mutable;
}

Boolean SCNetworkServiceGetEnabled(SCNetworkServiceRef service)
{
  if (__SCNetworkServiceInitialize_initialized == -1)
  {
    if (!service)
    {
      goto LABEL_7;
    }
  }

  else
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (!service)
    {
      goto LABEL_7;
    }
  }

  v2 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(service) == v2 && *(service + 4))
  {
    NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(service + 2), 0);
    PrefsEnabled = __getPrefsEnabled(*(service + 4), NetworkServiceEntity);
    CFRelease(NetworkServiceEntity);
    return PrefsEnabled;
  }

LABEL_7:
  _SCErrorSet(1002);
  return 0;
}

uint64_t __SCNetworkServiceExistsForInterface(const void *a1, const void *a2)
{
  TypeID = CFArrayGetTypeID();
  if (!a1)
  {
    return 0;
  }

  if (CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v6 = Count;
  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
    Interface = SCNetworkServiceGetInterface(ValueAtIndex);
    if (Interface)
    {
      break;
    }

LABEL_9:
    result = 0;
    if (++v7 == v6)
    {
      return result;
    }
  }

  v10 = Interface;
  while (!CFEqual(a2, v10))
  {
    v10 = SCNetworkInterfaceGetInterface(v10);
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  return 1;
}

SCNetworkInterfaceRef SCNetworkServiceGetInterface(SCNetworkServiceRef service)
{
  if (__SCNetworkServiceInitialize_initialized != -1)
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (service)
    {
      goto LABEL_3;
    }

LABEL_11:
    _SCErrorSet(1002);
    return 0;
  }

  if (!service)
  {
    goto LABEL_11;
  }

LABEL_3:
  v2 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(service) != v2 || !*(service + 4))
  {
    goto LABEL_11;
  }

  if (!*(service + 3))
  {
    NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(service + 2), @"Interface");
    Value = SCPreferencesPathGetValue(*(service + 4), NetworkServiceEntity);
    CFRelease(NetworkServiceEntity);
    TypeID = CFDictionaryGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        *(service + 3) = _SCNetworkInterfaceCreateWithEntity(0, Value, service);
      }
    }
  }

  return *(service + 3);
}

Boolean SCNetworkServiceAddProtocolType(SCNetworkServiceRef service, CFStringRef protocolType)
{
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkServiceInitialize_initialized != -1)
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (service)
    {
      goto LABEL_3;
    }

LABEL_15:
    _SCErrorSet(1002);
    LOBYTE(v6) = 0;
    return v6;
  }

  if (!service)
  {
    goto LABEL_15;
  }

LABEL_3:
  v4 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(service) != v4 || !*(service + 4) || !__SCNetworkProtocolIsValidType(protocolType))
  {
    goto LABEL_15;
  }

  if (!__SCNetworkServiceExists(service))
  {
    v7 = _SC_LOG_DEFAULT();
    v8 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v7, v8))
    {
      v9 = _os_log_pack_size();
      v15 = block - ((MEMORY[0x1EEE9AC00](v9, v10, v11, v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = __error();
      v17 = _os_log_pack_fill(v15, v9, *v16, &dword_1AD2AD000, "SCNetworkServiceAddProtocolType() w/removed service\n  service = %@\n  protocol = %@");
      *v17 = 138412546;
      *(v17 + 4) = service;
      *(v17 + 12) = 2112;
      *(v17 + 14) = protocolType;
      __SC_log_send(3, v7, v8, v15);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_3;
    block[3] = &__block_descriptor_tmp_51;
    block[5] = 0;
    block[6] = 0;
    block[4] = "SCNetworkServiceAddProtocolType() w/removed service";
    if (_SC_crash_once_once_3 != -1)
    {
      dispatch_once(&_SC_crash_once_once_3, block);
    }

    goto LABEL_15;
  }

  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(service + 2), protocolType);
  if (!SCPreferencesPathGetValue(*(service + 4), NetworkServiceEntity))
  {
    v19 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v20 = SCPreferencesPathSetValue(*(service + 4), NetworkServiceEntity, v19);
    CFRelease(v19);
    if (!v20)
    {
      goto LABEL_9;
    }

    v21 = SCNetworkServiceCopyProtocol(service, protocolType);
    if (!v21)
    {
      SCNetworkServiceAddProtocolType_cold_3();
    }

    v22 = v21;
    v23 = *(service + 3);
    if (v23)
    {
      InterfaceType = SCNetworkInterfaceGetInterfaceType(*(service + 3));
      Interface = SCNetworkInterfaceGetInterface(*(service + 3));
      if (Interface)
      {
        v26 = Interface;
        v27 = SCNetworkInterfaceGetInterfaceType(Interface);
        v28 = __copyProtocolTemplate(InterfaceType, v27, protocolType);
        if (v28)
        {
          v29 = v28;
          do
          {
            v23 = v26;
            v26 = SCNetworkInterfaceGetInterface(v26);
          }

          while (v26);
LABEL_26:
          TemplateOverrides = __SCNetworkInterfaceGetTemplateOverrides(v23, protocolType);
          TypeID = CFDictionaryGetTypeID();
          if (TemplateOverrides && CFGetTypeID(TemplateOverrides) == TypeID)
          {
            MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v29);
            CFDictionaryApplyFunction(TemplateOverrides, mergeDict, MutableCopy);
            CFRelease(v29);
            v29 = MutableCopy;
          }

          if (v29)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        v29 = __copyProtocolTemplate(InterfaceType, 0, protocolType);
        if (v29)
        {
          goto LABEL_26;
        }
      }
    }

    v29 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v29)
    {
      SCNetworkServiceAddProtocolType_cold_2();
    }

LABEL_31:
    if (SCNetworkProtocolSetConfiguration(v22, v29))
    {
      v33 = CFDictionaryContainsKey(v29, @"__INACTIVE__") == 0;
      v6 = SCNetworkProtocolSetEnabled(v22, v33);
    }

    else
    {
      v6 = 0;
    }

    CFRelease(v29);
    CFRelease(v22);
    if (v6)
    {
      v34 = _SC_LOG_DEFAULT();
      v35 = _SC_syslog_os_log_mapping(7);
      if (__SC_log_enabled(7, v34, v35))
      {
        v36 = _os_log_pack_size();
        v42 = block - ((MEMORY[0x1EEE9AC00](v36, v37, v38, v39, v40, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
        v43 = __error();
        v44 = _os_log_pack_fill(v42, v36, *v43, &dword_1AD2AD000, "SCNetworkServiceAddProtocolType(): %@, %@");
        *v44 = 138412546;
        *(v44 + 4) = service;
        *(v44 + 12) = 2112;
        *(v44 + 14) = protocolType;
        __SC_log_send(7, v34, v35, v42);
      }
    }

    goto LABEL_10;
  }

  _SCErrorSet(1005);
LABEL_9:
  LOBYTE(v6) = 0;
LABEL_10:
  CFRelease(NetworkServiceEntity);
  return v6;
}

BOOL __SCNetworkServiceExists(uint64_t a1)
{
  if (*(a1 + 32) && (NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(a1 + 16), @"Interface"), Value = SCPreferencesPathGetValue(*(a1 + 32), NetworkServiceEntity), CFRelease(NetworkServiceEntity), TypeID = CFDictionaryGetTypeID(), Value))
  {
    return CFGetTypeID(Value) == TypeID;
  }

  else
  {
    return 0;
  }
}

SCNetworkProtocolRef SCNetworkServiceCopyProtocol(SCNetworkServiceRef service, CFStringRef protocolType)
{
  if (__SCNetworkServiceInitialize_initialized != -1)
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (service)
    {
      goto LABEL_3;
    }

LABEL_18:
    v12 = 1002;
    goto LABEL_19;
  }

  if (!service)
  {
    goto LABEL_18;
  }

LABEL_3:
  v4 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(service) != v4)
  {
    goto LABEL_18;
  }

  if (!*(service + 4))
  {
    goto LABEL_18;
  }

  TypeID = CFStringGetTypeID();
  if (!protocolType || CFGetTypeID(protocolType) != TypeID)
  {
    goto LABEL_18;
  }

  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(service + 2), 0);
  Value = SCPreferencesPathGetValue(*(service + 4), NetworkServiceEntity);
  CFRelease(NetworkServiceEntity);
  v8 = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != v8)
  {
    v12 = 1001;
LABEL_19:
    _SCErrorSet(v12);
    return 0;
  }

  v9 = _copyInterfaceEntityTypes(Value);
  if (CFSetContainsValue(v9, protocolType))
  {
    v10 = 1002;
  }

  else
  {
    if (CFDictionaryContainsKey(Value, protocolType))
    {
      Private = __SCNetworkProtocolCreatePrivate(0, protocolType, service);
      goto LABEL_15;
    }

    v10 = 1004;
  }

  _SCErrorSet(v10);
  Private = 0;
LABEL_15:
  CFRelease(v9);
  return Private;
}

CFArrayRef SCNetworkServiceCopyAll(SCPreferencesRef prefs)
{
  v63 = *MEMORY[0x1E69E9840];
  NetworkServices = SCPreferencesPathKeyCreateNetworkServices(0);
  Value = SCPreferencesPathGetValue(prefs, NetworkServices);
  CFRelease(NetworkServices);
  if (!Value)
  {
    v10 = MEMORY[0x1E695E9C0];

    return CFArrayCreateMutable(0, 0, v10);
  }

  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  Count = CFDictionaryGetCount(Value);
  if (Count < 1)
  {
    return Mutable;
  }

  v7 = Count;
  v56 = prefs;
  v57 = Mutable;
  memset(v62, 0, sizeof(v62));
  memset(v61, 0, sizeof(v61));
  if (Count < 0x41)
  {
    v8 = v62;
    v9 = v61;
  }

  else
  {
    v8 = MEMORY[0x1B26F3AA0](0, 8 * Count, 0xC0040B8AA526DLL, 0);
    v9 = MEMORY[0x1B26F3AA0](0, 8 * v7, 0xC0040B8AA526DLL, 0);
  }

  CFDictionaryGetKeysAndValues(Value, v8, v9);
  v12 = 0;
  v60 = @"Interface";
  *&v13 = 138412290;
  v59 = v13;
  *&v13 = 138412546;
  v58 = v13;
  do
  {
    v14 = v9[v12];
    v15 = CFDictionaryGetTypeID();
    if (!v14 || CFGetTypeID(v14) != v15)
    {
      v30 = _SC_LOG_DEFAULT();
      v31 = _SC_syslog_os_log_mapping(6);
      if (!__SC_log_enabled(6, v30, v31))
      {
        goto LABEL_25;
      }

      v32 = _os_log_pack_size();
      v38 = &v56 - ((MEMORY[0x1EEE9AC00](v32, v33, v34, v35, v36, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
      v39 = __error();
      v40 = _os_log_pack_fill(v38, v32, *v39, &dword_1AD2AD000, "error w/service %@");
      v41 = v8[v12];
      *v40 = v59;
      *(v40 + 4) = v41;
      v28 = v30;
      v29 = v31;
      v42 = v38;
      goto LABEL_24;
    }

    v16 = CFDictionaryGetValue(v9[v12], v60);
    v17 = CFDictionaryGetTypeID();
    if (!v16 || CFGetTypeID(v16) != v17)
    {
      v43 = _SC_LOG_DEFAULT();
      v44 = _SC_syslog_os_log_mapping(6);
      if (!__SC_log_enabled(6, v43, v44))
      {
        goto LABEL_25;
      }

      v45 = _os_log_pack_size();
      v26 = &v56 - ((MEMORY[0x1EEE9AC00](v45, v46, v47, v48, v49, v50) + 15) & 0xFFFFFFFFFFFFFFF0);
      v51 = __error();
      v52 = _os_log_pack_fill(v26, v45, *v51, &dword_1AD2AD000, "no %@ entity for service %@");
      v53 = v8[v12];
      *v52 = v58;
      *(v52 + 4) = v60;
      *(v52 + 12) = 2112;
      *(v52 + 14) = v53;
      v28 = v43;
      v29 = v44;
      goto LABEL_23;
    }

    if (__SCNetworkInterfaceEntityIsPPTP(v16))
    {
      v18 = _SC_LOG_DEFAULT();
      v19 = _SC_syslog_os_log_mapping(6);
      if (!__SC_log_enabled(6, v18, v19))
      {
        goto LABEL_25;
      }

      v20 = _os_log_pack_size();
      v26 = &v56 - ((MEMORY[0x1EEE9AC00](v20, v21, v22, v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = __error();
      *_os_log_pack_fill(v26, v20, *v27, &dword_1AD2AD000, "PPTP services are no longer supported") = 0;
      v28 = v18;
      v29 = v19;
LABEL_23:
      v42 = v26;
LABEL_24:
      __SC_log_send(6, v28, v29, v42);
      goto LABEL_25;
    }

    Private = __SCNetworkServiceCreatePrivate(0, v56, v8[v12], 0);
    if (!Private)
    {
      SCNetworkServiceCopyAll_cold_1();
    }

    v55 = Private;
    CFArrayAppendValue(v57, Private);
    CFRelease(v55);
LABEL_25:
    ++v12;
  }

  while (v7 != v12);
  if (v8 != v62)
  {
    CFAllocatorDeallocate(0, v8);
    CFAllocatorDeallocate(0, v9);
  }

  return v57;
}

__CFArray *__SCNetworkServiceCopyAllInterfaces(const __SCPreferences *a1)
{
  v1 = SCNetworkServiceCopyAll(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Count = CFArrayGetCount(v1);
  if (Count)
  {
    v4 = Count;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (v4 >= 1)
    {
      for (i = 0; i != v4; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
        Interface = SCNetworkServiceGetInterface(ValueAtIndex);
        TypeID = SCNetworkInterfaceGetTypeID();
        if (Interface && CFGetTypeID(Interface) == TypeID)
        {
          CFArrayAppendValue(Mutable, Interface);
        }
      }
    }

    if (CFArrayGetCount(Mutable))
    {
      goto LABEL_12;
    }

    CFRelease(Mutable);
  }

  Mutable = 0;
LABEL_12:
  CFRelease(v2);
  return Mutable;
}

SCNetworkServiceRef SCNetworkServiceCopy(SCPreferencesRef prefs, CFStringRef serviceID)
{
  v20[1] = *MEMORY[0x1E69E9840];
  TypeID = CFStringGetTypeID();
  if (!serviceID || CFGetTypeID(serviceID) != TypeID)
  {
    v18 = 1002;
    goto LABEL_10;
  }

  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, serviceID, @"Interface");
  Value = SCPreferencesPathGetValue(prefs, NetworkServiceEntity);
  CFRelease(NetworkServiceEntity);
  v7 = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != v7)
  {
LABEL_8:
    v18 = 1004;
LABEL_10:
    _SCErrorSet(v18);
    return 0;
  }

  if (__SCNetworkInterfaceEntityIsPPTP(Value))
  {
    v8 = _SC_LOG_DEFAULT();
    v9 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v8, v9))
    {
      v10 = _os_log_pack_size();
      v16 = v20 - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = __error();
      *_os_log_pack_fill(v16, v10, *v17, &dword_1AD2AD000, "PPTP services are no longer supported") = 0;
      __SC_log_send(6, v8, v9, v16);
    }

    goto LABEL_8;
  }

  return __SCNetworkServiceCreatePrivate(0, prefs, serviceID, 0);
}

void *_SCNetworkServiceCopyActive(const void *a1, const __CFString *a2)
{
  TypeID = CFStringGetTypeID();
  if (a2 && CFGetTypeID(a2) == TypeID)
  {
    Private = __SCNetworkServiceCreatePrivate(0, 0, a2, 0);
    if (!Private)
    {
      _SCNetworkServiceCopyActive_cold_1();
    }

    v6 = Private;
    if (a1)
    {
      Private[5] = a1;
      CFRetain(a1);
    }
  }

  else
  {
    _SCErrorSet(1002);
    return 0;
  }

  return v6;
}

__CFSet *_copyInterfaceEntityTypes(const __CFDictionary *a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
  Value = CFDictionaryGetValue(a1, @"Interface");
  TypeID = CFDictionaryGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    v9[0] = @"Type";
    v9[1] = @"SubType";
    v9[2] = @"Hardware";
    CFSetAddValue(Mutable, @"Interface");
    for (i = 0; i != 3; ++i)
    {
      v6 = CFDictionaryGetValue(Value, v9[i]);
      v7 = CFStringGetTypeID();
      if (v6 && CFGetTypeID(v6) == v7)
      {
        CFSetAddValue(Mutable, v6);
      }
    }

    CFSetAddValue(Mutable, @"PPP");
  }

  return Mutable;
}

CFArrayRef SCNetworkServiceCopyProtocols(SCNetworkServiceRef service)
{
  v20 = *MEMORY[0x1E69E9840];
  if (__SCNetworkServiceInitialize_initialized != -1)
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (service)
    {
      goto LABEL_3;
    }

LABEL_22:
    v12 = 1002;
    goto LABEL_23;
  }

  if (!service)
  {
    goto LABEL_22;
  }

LABEL_3:
  v2 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(service) != v2 || !*(service + 4))
  {
    goto LABEL_22;
  }

  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(service + 2), 0);
  Value = SCPreferencesPathGetValue(*(service + 4), NetworkServiceEntity);
  CFRelease(NetworkServiceEntity);
  TypeID = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    v12 = 1001;
LABEL_23:
    _SCErrorSet(v12);
    return 0;
  }

  v6 = _copyInterfaceEntityTypes(Value);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  Count = CFDictionaryGetCount(Value);
  if (Count >= 1)
  {
    v9 = Count;
    memset(v19, 0, sizeof(v19));
    memset(v18, 0, sizeof(v18));
    if (Count < 0x41)
    {
      v11 = v18;
      v10 = v19;
    }

    else
    {
      v10 = MEMORY[0x1B26F3AA0](0, 8 * Count, 0xC0040B8AA526DLL, 0);
      v11 = MEMORY[0x1B26F3AA0](0, 8 * v9, 0xC0040B8AA526DLL, 0);
    }

    CFDictionaryGetKeysAndValues(Value, v10, v11);
    for (i = 0; i != v9; ++i)
    {
      v14 = v11[i];
      v15 = CFDictionaryGetTypeID();
      if (v14 && CFGetTypeID(v14) == v15 && !CFSetContainsValue(v6, v10[i]))
      {
        Private = __SCNetworkProtocolCreatePrivate(0, v10[i], service);
        CFArrayAppendValue(Mutable, Private);
        CFRelease(Private);
      }
    }

    if (v10 != v19)
    {
      CFAllocatorDeallocate(0, v10);
      CFAllocatorDeallocate(0, v11);
    }
  }

  CFRelease(v6);
  return Mutable;
}

SCNetworkServiceRef SCNetworkServiceCreate(SCPreferencesRef prefs, SCNetworkInterfaceRef interface)
{
  v73 = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!interface || CFGetTypeID(interface) != TypeID || !SCNetworkInterfaceGetSupportedProtocolTypes(interface) && (InterfaceType = SCNetworkInterfaceGetInterfaceType(interface), CFStringFind(InterfaceType, @".", 0).location == -1))
  {
    v6 = 1002;
    goto LABEL_8;
  }

  if (__SCNetworkInterfaceIsBusyMember(prefs, interface, 1))
  {
    v6 = 1001;
LABEL_8:
    _SCErrorSet(v6);
    return 0;
  }

  NetworkServices = SCPreferencesPathKeyCreateNetworkServices(0);
  UniqueChild = SCPreferencesPathCreateUniqueChild(prefs, NetworkServices);
  CFRelease(NetworkServices);
  if (!UniqueChild)
  {
    return UniqueChild;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, UniqueChild, @"/");
  CFRelease(UniqueChild);
  ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 2);
  UniqueChild = __SCNetworkServiceCreatePrivate(0, prefs, ValueAtIndex, 0);
  CFRelease(ArrayBySeparatingStrings);
  Copy = __SCNetworkInterfaceCreateCopy(0, interface, prefs, ValueAtIndex);
  UniqueChild->length = Copy;
  if (!Copy)
  {
    goto LABEL_43;
  }

  v64 = UniqueChild;
  v14 = @"Bluetooth";
  v15 = @"Modem";
  v66 = @"Serial";
  v65 = @"WWAN";
  v16 = @"ConnectionScript";
  v72 = @"ConnectionPersonality";
  v71 = @"DeviceVendor";
  v70 = @"DeviceModel";
  v63 = @"PPP";
  v17 = MEMORY[0x1E695E9D8];
  v18 = MEMORY[0x1E695E9E8];
  v62 = @"VPN";
  *&v13 = 138412290;
  v67 = v13;
  v68 = @"ConnectionScript";
  v69 = @"Bluetooth";
  do
  {
    v19 = SCNetworkInterfaceGetInterfaceType(Copy);
    v20 = SCNetworkInterfaceGetInterface(Copy);
    if (v20)
    {
      v21 = SCNetworkInterfaceGetInterfaceType(v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = __copyInterfaceTemplate(v19, v21);
    if (v22)
    {
      v23 = v22;
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v22);
      CFRelease(v23);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, v17, v18);
    }

    if (CFEqual(v19, v14) || CFEqual(v19, v15) || CFEqual(v19, v66) || CFEqual(v19, v65))
    {
      TemplateOverrides = __SCNetworkInterfaceGetTemplateOverrides(Copy, v15);
      v26 = CFDictionaryGetTypeID();
      if (!TemplateOverrides)
      {
        CFDictionaryGetTypeID();
        goto LABEL_31;
      }

      if (CFGetTypeID(TemplateOverrides) == v26 && CFDictionaryContainsKey(TemplateOverrides, v16))
      {
        CFDictionaryRemoveValue(MutableCopy, v72);
        CFDictionaryRemoveValue(MutableCopy, v16);
        CFDictionaryRemoveValue(MutableCopy, v71);
        CFDictionaryRemoveValue(MutableCopy, v70);
      }

      v27 = CFDictionaryGetTypeID();
LABEL_28:
      if (CFGetTypeID(TemplateOverrides) == v27)
      {
        CFDictionaryApplyFunction(TemplateOverrides, mergeDict, MutableCopy);
      }

      goto LABEL_31;
    }

    v44 = v63;
    if (!CFEqual(v19, v63))
    {
      if (CFEqual(v19, v62))
      {
        v44 = v63;
      }

      else
      {
        v44 = v19;
      }
    }

    TemplateOverrides = __SCNetworkInterfaceGetTemplateOverrides(Copy, v44);
    v27 = CFDictionaryGetTypeID();
    if (TemplateOverrides)
    {
      goto LABEL_28;
    }

LABEL_31:
    if (CFDictionaryGetCount(MutableCopy) >= 1 && !__SCNetworkInterfaceSetConfiguration(Copy, 0, MutableCopy, 1))
    {
      v28 = _SC_LOG_DEFAULT();
      v29 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v28, v29))
      {
        v30 = v15;
        v31 = v17;
        v32 = _os_log_pack_size();
        v38 = v18;
        v39 = &v61 - ((MEMORY[0x1EEE9AC00](v32, v33, v34, v35, v36, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
        v40 = __error();
        v41 = v32;
        v17 = v31;
        v15 = v30;
        v42 = _os_log_pack_fill(v39, v41, *v40, &dword_1AD2AD000, "__SCNetworkInterfaceSetConfiguration failed(), interface=%@, type=NULL");
        *v42 = v67;
        *(v42 + 4) = Copy;
        v43 = v39;
        v18 = v38;
        __SC_log_send(6, v28, v29, v43);
        v16 = v68;
        v14 = v69;
      }
    }

    CFRelease(MutableCopy);
    Copy = SCNetworkInterfaceGetInterface(Copy);
  }

  while (Copy);
  UniqueChild = v64;
  Copy = v64->length;
LABEL_43:
  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, UniqueChild->data, @"Interface");
  v46 = __SCNetworkInterfaceCopyInterfaceEntity(Copy);
  SCPreferencesPathSetValue(UniqueChild[1].isa, NetworkServiceEntity, v46);
  CFRelease(v46);
  CFRelease(NetworkServiceEntity);
  v47 = __SCNetworkInterfaceCopyDeepConfiguration(0, UniqueChild->length);
  __SCNetworkInterfaceSetDeepConfiguration(0, UniqueChild->length, v47, v48);
  if (v47)
  {
    CFRelease(v47);
  }

  Name = __SCNetworkServiceGetName(UniqueChild, 1);
  if (Name)
  {
    SCNetworkServiceSetName(UniqueChild, Name);
  }

  v50 = _SC_LOG_DEFAULT();
  v51 = _SC_syslog_os_log_mapping(7);
  if (__SC_log_enabled(7, v50, v51))
  {
    v52 = _os_log_pack_size();
    v58 = &v61 - ((MEMORY[0x1EEE9AC00](v52, v53, v54, v55, v56, v57) + 15) & 0xFFFFFFFFFFFFFFF0);
    v59 = __error();
    v60 = _os_log_pack_fill(v58, v52, *v59, &dword_1AD2AD000, "SCNetworkServiceCreate(): %@");
    *v60 = 138412290;
    *(v60 + 4) = UniqueChild;
    __SC_log_send(7, v50, v51, v58);
  }

  return UniqueChild;
}

void mergeDict(void *key, void *value, CFMutableDictionaryRef theDict)
{

  CFDictionarySetValue(theDict, key, value);
}

CFStringRef SCNetworkServiceGetName(SCNetworkServiceRef service)
{

  return __SCNetworkServiceGetName(service, 1);
}

Boolean SCNetworkServiceSetName(SCNetworkServiceRef service, CFStringRef name)
{
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkServiceInitialize_initialized == -1)
  {
    if (!service)
    {
      goto LABEL_21;
    }
  }

  else
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (!service)
    {
      goto LABEL_21;
    }
  }

  v4 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(service) != v4 || !*(service + 4))
  {
    goto LABEL_21;
  }

  if (!__SCNetworkServiceExists(service))
  {
    v13 = _SC_LOG_DEFAULT();
    v14 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v13, v14))
    {
      v15 = _os_log_pack_size();
      v21 = &v62 - ((MEMORY[0x1EEE9AC00](v15, v16, v17, v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = __error();
      v23 = _os_log_pack_fill(v21, v15, *v22, &dword_1AD2AD000, "SCNetworkServiceSetName() w/removed service\n  service = %@\n  name = %@");
      v24 = @"<NULL>";
      if (name)
      {
        v24 = name;
      }

      *v23 = 138412546;
      *(v23 + 4) = service;
      *(v23 + 12) = 2112;
      *(v23 + 14) = v24;
      __SC_log_send(3, v13, v14, v21);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_3;
    block[3] = &__block_descriptor_tmp_51;
    block[5] = 0;
    block[6] = 0;
    block[4] = "SCNetworkServiceSetName() w/removed service";
    if (_SC_crash_once_once_3 != -1)
    {
      dispatch_once(&_SC_crash_once_once_3, block);
    }

    goto LABEL_21;
  }

  if (!name)
  {
    v6 = 0;
    goto LABEL_47;
  }

  TypeID = CFStringGetTypeID();
  if (CFGetTypeID(name) != TypeID)
  {
LABEL_21:
    v25 = 1002;
    goto LABEL_22;
  }

  v6 = CFRetain(name);
  Interface = SCNetworkServiceGetInterface(service);
  while (Interface)
  {
    v8 = Interface;
    Interface = SCNetworkInterfaceGetInterface(Interface);
    if (!Interface)
    {
      LocalizedDisplayName = SCNetworkInterfaceGetLocalizedDisplayName(v8);
      if (LocalizedDisplayName)
      {
        v10 = LocalizedDisplayName;
        if (CFEqual(name, LocalizedDisplayName))
        {
          NonLocalizedDisplayName = __SCNetworkInterfaceGetNonLocalizedDisplayName(v8);
          if (NonLocalizedDisplayName)
          {
            v12 = NonLocalizedDisplayName;
            CFRelease(v6);
            v6 = CFRetain(v12);
          }
        }

        else if (CFStringHasPrefix(name, v10))
        {
          Length = CFStringGetLength(v10);
          v65.length = CFStringGetLength(name) - Length;
          v65.location = Length;
          v29 = CFStringCreateWithSubstring(0, name, v65);
          v30 = __SCNetworkInterfaceGetNonLocalizedDisplayName(v8);
          if (v30)
          {
            v31 = v30;
            CFRelease(v6);
            v6 = CFStringCreateWithFormat(0, 0, @"%@%@", v31, v29);
          }

          CFRelease(v29);
        }
      }

      break;
    }
  }

  v32 = SCNetworkSetCopyAll(*(service + 4));
  if (!v32)
  {
LABEL_47:
    NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(service + 2), 0);
    Value = SCPreferencesPathGetValue(*(service + 4), NetworkServiceEntity);
    v47 = CFDictionaryGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == v47)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
LABEL_52:
        v49 = MutableCopy;
        if (v6)
        {
          CFDictionarySetValue(MutableCopy, @"UserDefinedName", v6);
        }

        else
        {
          CFDictionaryRemoveValue(MutableCopy, @"UserDefinedName");
        }

        v26 = SCPreferencesPathSetValue(*(service + 4), NetworkServiceEntity, v49);
        CFRelease(v49);
        goto LABEL_57;
      }
    }

    else if (name)
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      goto LABEL_52;
    }

    v26 = 0;
LABEL_57:
    CFRelease(NetworkServiceEntity);
    if (v6)
    {
      CFRelease(v6);
    }

    v50 = *(service + 6);
    if (v50)
    {
      CFRelease(v50);
    }

    if (name)
    {
      CFRetain(name);
    }

    *(service + 6) = name;
    if (v26)
    {
      v51 = _SC_LOG_DEFAULT();
      v52 = _SC_syslog_os_log_mapping(7);
      if (__SC_log_enabled(7, v51, v52))
      {
        v53 = _os_log_pack_size();
        v59 = &v62 - ((MEMORY[0x1EEE9AC00](v53, v54, v55, v56, v57, v58) + 15) & 0xFFFFFFFFFFFFFFF0);
        v60 = __error();
        v61 = _os_log_pack_fill(v59, v53, *v60, &dword_1AD2AD000, "SCNetworkServiceSetName(): %@");
        *v61 = 138412290;
        *(v61 + 4) = service;
        __SC_log_send(7, v51, v52, v59);
      }
    }

    return v26;
  }

  v33 = v32;
  v62 = v6;
  Count = CFArrayGetCount(v32);
  if (Count < 1)
  {
LABEL_46:
    CFRelease(v33);
    v6 = v62;
    goto LABEL_47;
  }

  v34 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v33, v34);
    v36 = SCNetworkSetCopyServices(ValueAtIndex);
    v37 = CFArrayGetCount(v36);
    if (v37 >= 1)
    {
      break;
    }

    CFRelease(v36);
LABEL_45:
    if (++v34 == Count)
    {
      goto LABEL_46;
    }
  }

  v38 = v37;
  v39 = 0;
  v40 = 0;
  for (i = 0; i != v38; ++i)
  {
    v42 = CFArrayGetValueAtIndex(v36, i);
    ServiceID = SCNetworkServiceGetServiceID(v42);
    if (CFEqual(*(service + 2), ServiceID))
    {
      v39 = 1;
    }

    else
    {
      v44 = __SCNetworkServiceGetName(v42, 1);
      if (v44 && CFEqual(name, v44))
      {
        v40 = 1;
      }
    }
  }

  CFRelease(v36);
  if (!v39 || !v40)
  {
    goto LABEL_45;
  }

  CFRelease(v33);
  if (v62)
  {
    CFRelease(v62);
  }

  v25 = 1005;
LABEL_22:
  _SCErrorSet(v25);
  LOBYTE(v26) = 0;
  return v26;
}

SCNetworkServiceRef _SCNetworkServiceCreatePreconfigured(const __SCPreferences *a1, SCNetworkInterfaceRef interface)
{
  v58[1] = *MEMORY[0x1E69E9840];
  BSDName = SCNetworkInterfaceGetBSDName(interface);
  v5 = SCNetworkServiceCreate(a1, interface);
  if (!v5)
  {
    v23 = _SC_LOG_DEFAULT();
    v24 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v23, v24))
    {
      v25 = _os_log_pack_size();
      v31 = v58 - ((MEMORY[0x1EEE9AC00](v25, v26, v27, v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = __error();
      v33 = _os_log_pack_fill(v31, v25, *v32, &dword_1AD2AD000, "could not create network service for %@: %s");
      v34 = SCError();
      v35 = SCErrorString(v34);
      *v33 = 138412546;
      *(v33 + 4) = BSDName;
      *(v33 + 12) = 2080;
      *(v33 + 14) = v35;
      __SC_log_send(3, v23, v24, v31);
    }

    return 0;
  }

  v6 = v5;
  v7 = _SC_copyInterfaceUUID(BSDName);
  if (!v7)
  {
    v10 = _SC_LOG_DEFAULT();
    v11 = _SC_syslog_os_log_mapping(3);
    if (!__SC_log_enabled(3, v10, v11))
    {
      goto LABEL_11;
    }

    v36 = _os_log_pack_size();
    v18 = v58 - ((MEMORY[0x1EEE9AC00](v36, v37, v38, v39, v40, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
    v42 = __error();
    v43 = _os_log_pack_fill(v18, v36, *v42, &dword_1AD2AD000, "could not create serviceID for %@");
    *v43 = 138412290;
    *(v43 + 4) = BSDName;
    goto LABEL_10;
  }

  v8 = v7;
  v9 = _SCNetworkServiceSetServiceID(v6, v7);
  CFRelease(v8);
  if (!v9)
  {
    v10 = _SC_LOG_DEFAULT();
    v11 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v10, v11))
    {
      v12 = _os_log_pack_size();
      v18 = v58 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = __error();
      v20 = _os_log_pack_fill(v18, v12, *v19, &dword_1AD2AD000, "_SCNetworkServiceSetServiceID() failed: %s", v58[0]);
      v21 = SCError();
      v22 = SCErrorString(v21);
      *v20 = 136315138;
      *(v20 + 4) = v22;
LABEL_10:
      __SC_log_send(3, v10, v11, v18);
    }
  }

LABEL_11:
  if (!SCNetworkServiceEstablishDefaultConfiguration(v6))
  {
    v44 = _SC_LOG_DEFAULT();
    v45 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v44, v45))
    {
      v46 = _os_log_pack_size();
      v52 = v58 - ((MEMORY[0x1EEE9AC00](v46, v47, v48, v49, v50, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
      v53 = __error();
      v54 = _os_log_pack_fill(v52, v46, *v53, &dword_1AD2AD000, "could not establish network service for %@: %s");
      v55 = SCError();
      v56 = SCErrorString(v55);
      *v54 = 138412546;
      *(v54 + 4) = BSDName;
      *(v54 + 12) = 2080;
      *(v54 + 14) = v56;
      __SC_log_send(3, v44, v45, v52);
    }

    SCNetworkServiceRemove(v6);
    CFRelease(v6);
    return 0;
  }

  return v6;
}

uint64_t _SCNetworkServiceSetServiceID(uint64_t cf, const void *a2)
{
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkServiceInitialize_initialized != -1)
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (cf)
    {
      goto LABEL_3;
    }

LABEL_26:
    _SCErrorSet(1002);
    return 0;
  }

  if (!cf)
  {
    goto LABEL_26;
  }

LABEL_3:
  v4 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(cf) != v4)
  {
    goto LABEL_26;
  }

  if (!*(cf + 32))
  {
    goto LABEL_26;
  }

  TypeID = CFStringGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID)
  {
    goto LABEL_26;
  }

  if (CFEqual(a2, *(cf + 16)))
  {
    return 1;
  }

  context = 0;
  v41 = 0;
  if (!__SCNetworkServiceExists(cf))
  {
    v27 = _SC_LOG_DEFAULT();
    v28 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v27, v28))
    {
      v29 = _os_log_pack_size();
      v35 = v39 - ((MEMORY[0x1EEE9AC00](v29, v30, v31, v32, v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
      v36 = __error();
      v37 = _os_log_pack_fill(v35, v29, *v36, &dword_1AD2AD000, "_SCNetworkServiceSetServiceID() w/removed service\n  service = %@\n  serviceID = %@");
      *v37 = 138412546;
      *(v37 + 4) = cf;
      *(v37 + 12) = 2112;
      *(v37 + 14) = a2;
      __SC_log_send(3, v27, v28, v35);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_3;
    block[3] = &__block_descriptor_tmp_51;
    block[5] = 0;
    block[6] = 0;
    block[4] = "_SCNetworkServiceSetServiceID() w/removed service";
    if (_SC_crash_once_once_3 != -1)
    {
      dispatch_once(&_SC_crash_once_once_3, block);
    }

    goto LABEL_26;
  }

  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, a2, 0);
  Value = SCPreferencesPathGetValue(*(cf + 32), NetworkServiceEntity);
  v9 = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != v9)
  {
    v11 = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(cf + 16), 0);
    v12 = SCPreferencesPathGetValue(*(cf + 32), v11);
    v13 = CFDictionaryGetTypeID();
    if (v12 && CFGetTypeID(v12) == v13)
    {
      if (SCPreferencesPathSetValue(*(cf + 32), NetworkServiceEntity, v12))
      {
        v6 = SCPreferencesPathRemoveValue(*(cf + 32), v11);
        if (v6)
        {
          v10 = SCNetworkSetCopyAll(*(cf + 32));
          context = *(cf + 16);
          v41 = a2;
          v43.length = CFArrayGetCount(v10);
          v43.location = 0;
          CFArrayApplyFunction(v10, v43, replaceServiceID, &context);
          v14 = *(cf + 24);
          if (v14)
          {
            Copy = __SCNetworkInterfaceCreateCopy(0, v14, *(cf + 32), a2);
            CFRelease(*(cf + 24));
            *(cf + 24) = Copy;
          }

          v16 = _SC_LOG_DEFAULT();
          v17 = _SC_syslog_os_log_mapping(7);
          if (__SC_log_enabled(7, v16, v17))
          {
            v18 = _os_log_pack_size();
            v39[1] = v39;
            v24 = v39 - ((MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
            v25 = __error();
            v26 = _os_log_pack_fill(v24, v18, *v25, &dword_1AD2AD000, "_SCNetworkServiceSetServiceID(): %@ --> %@");
            *v26 = 138412546;
            *(v26 + 4) = cf;
            *(v26 + 12) = 2112;
            *(v26 + 14) = a2;
            __SC_log_send(7, v16, v17, v24);
          }

          CFRetain(a2);
          CFRelease(*(cf + 16));
          *(cf + 16) = a2;
          goto LABEL_31;
        }

LABEL_30:
        v10 = 0;
LABEL_31:
        if (v11)
        {
          CFRelease(v11);
        }

        goto LABEL_33;
      }
    }

    else
    {
      _SCErrorSet(1004);
    }

    v6 = 0;
    goto LABEL_30;
  }

  _SCErrorSet(1005);
  v10 = 0;
  v6 = 0;
LABEL_33:
  if (NetworkServiceEntity)
  {
    CFRelease(NetworkServiceEntity);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v6;
}

Boolean SCNetworkServiceEstablishDefaultConfiguration(SCNetworkServiceRef service)
{
  v47 = *MEMORY[0x1E69E9840];
  if (__SCNetworkServiceInitialize_initialized != -1)
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (service)
    {
      goto LABEL_3;
    }

LABEL_24:
    _SCErrorSet(1002);
    LOBYTE(Interface) = 0;
    return Interface;
  }

  if (!service)
  {
    goto LABEL_24;
  }

LABEL_3:
  v2 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(service) != v2 || !*(service + 4))
  {
    goto LABEL_24;
  }

  Interface = SCNetworkServiceGetInterface(service);
  if (Interface)
  {
    v44 = Interface;
    SupportedProtocolTypes = SCNetworkInterfaceGetSupportedProtocolTypes(Interface);
    if (SupportedProtocolTypes)
    {
      v5 = SupportedProtocolTypes;
      Count = CFArrayGetCount(SupportedProtocolTypes);
      if (Count >= 1)
      {
        v8 = Count;
        v9 = 0;
        *&v7 = 138412290;
        v45 = v7;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v5, v9);
          if (!SCNetworkServiceAddProtocolType(service, ValueAtIndex))
          {
            v11 = _SC_LOG_DEFAULT();
            v12 = _SC_syslog_os_log_mapping(6);
            if (__SC_log_enabled(6, v11, v12))
            {
              v13 = _os_log_pack_size();
              v19 = &v43 - ((MEMORY[0x1EEE9AC00](v13, v14, v15, v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
              v20 = __error();
              v21 = _os_log_pack_fill(v19, v13, *v20, &dword_1AD2AD000, "SCNetworkServiceEstablishDefaultConfiguration(): could not add protocol %@");
              *v21 = v45;
              *(v21 + 4) = ValueAtIndex;
              __SC_log_send(6, v11, v12, v19);
            }
          }

          ++v9;
        }

        while (v8 != v9);
      }
    }

    TemplateOverrides = __SCNetworkInterfaceGetTemplateOverrides(v44, @"PrimaryRank");
    TypeID = CFStringGetTypeID();
    if (!TemplateOverrides || CFGetTypeID(TemplateOverrides) != TypeID)
    {
      goto LABEL_22;
    }

    v46 = 0;
    if (__str_to_rank(TemplateOverrides, &v46))
    {
      if (SCNetworkServiceSetPrimaryRank(service, v46))
      {
        goto LABEL_22;
      }

      v24 = _SC_LOG_DEFAULT();
      v25 = _SC_syslog_os_log_mapping(6);
      if (!__SC_log_enabled(6, v24, v25))
      {
        goto LABEL_22;
      }

      v26 = _os_log_pack_size();
      v32 = &v43 - ((MEMORY[0x1EEE9AC00](v26, v27, v28, v29, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = *__error();
      v34 = _os_log_pack_fill(v32, v26, v33, &dword_1AD2AD000, "SCNetworkServiceEstablishDefaultConfiguration(): could not set rank %@");
    }

    else
    {
      v24 = _SC_LOG_DEFAULT();
      v25 = _SC_syslog_os_log_mapping(6);
      if (!__SC_log_enabled(6, v24, v25))
      {
LABEL_22:
        LOBYTE(Interface) = 1;
        return Interface;
      }

      v35 = _os_log_pack_size();
      v32 = &v43 - ((MEMORY[0x1EEE9AC00](v35, v36, v37, v38, v39, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
      v41 = *__error();
      v34 = _os_log_pack_fill(v32, v35, v41, &dword_1AD2AD000, "SCNetworkServiceEstablishDefaultConfiguration(): unknown rank %@");
    }

    *v34 = 138412290;
    *(v34 + 4) = TemplateOverrides;
    __SC_log_send(6, v24, v25, v32);
    goto LABEL_22;
  }

  return Interface;
}

Boolean SCNetworkServiceRemove(SCNetworkServiceRef service)
{
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkServiceInitialize_initialized != -1)
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (service)
    {
      goto LABEL_3;
    }

LABEL_20:
    _SCErrorSet(1002);
LABEL_21:
    LOBYTE(v10) = 0;
    return v10;
  }

  if (!service)
  {
    goto LABEL_20;
  }

LABEL_3:
  v2 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(service) != v2 || !*(service + 4))
  {
    goto LABEL_20;
  }

  if (!__SCNetworkServiceExists(service))
  {
    v22 = _SC_LOG_DEFAULT();
    v23 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v22, v23))
    {
      v24 = _os_log_pack_size();
      v30 = block - ((MEMORY[0x1EEE9AC00](v24, v25, v26, v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = __error();
      v32 = _os_log_pack_fill(v30, v24, *v31, &dword_1AD2AD000, "SCNetworkServiceRemove() w/removed service\n  service = %@");
      *v32 = 138412290;
      *(v32 + 4) = service;
      __SC_log_send(3, v22, v23, v30);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_3;
    block[3] = &__block_descriptor_tmp_51;
    block[5] = 0;
    block[6] = 0;
    block[4] = "SCNetworkServiceRemove() w/removed service";
    if (_SC_crash_once_once_3 != -1)
    {
      dispatch_once(&_SC_crash_once_once_3, block);
    }

    goto LABEL_20;
  }

  _SCNetworkInterfaceCacheOpen();
  v3 = SCNetworkSetCopyAll(*(service + 4));
  if (v3)
  {
    v4 = v3;
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
        if (!SCNetworkSetRemoveService(ValueAtIndex, service) && SCError() != 1004)
        {
          break;
        }

        if (v6 == ++v7)
        {
          goto LABEL_12;
        }
      }

      CFRelease(v4);
      goto LABEL_21;
    }

LABEL_12:
    CFRelease(v4);
  }

  _SCNetworkInterfaceCacheClose();
  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(service + 2), 0);
  v10 = SCPreferencesPathRemoveValue(*(service + 4), NetworkServiceEntity);
  CFRelease(NetworkServiceEntity);
  if (v10)
  {
    v11 = _SC_LOG_DEFAULT();
    v12 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v11, v12))
    {
      v13 = _os_log_pack_size();
      v19 = block - ((MEMORY[0x1EEE9AC00](v13, v14, v15, v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = __error();
      v21 = _os_log_pack_fill(v19, v13, *v20, &dword_1AD2AD000, "SCNetworkServiceRemove(): %@");
      *v21 = 138412290;
      *(v21 + 4) = service;
      __SC_log_send(7, v11, v12, v19);
    }
  }

  return v10;
}

uint64_t SCNetworkServiceSetPrimaryRank(uint64_t cf, unsigned int a2)
{
  block[7] = *MEMORY[0x1E69E9840];
  v34 = 0;
  if (__SCNetworkServiceInitialize_initialized == -1)
  {
    if (!cf)
    {
      goto LABEL_45;
    }
  }

  else
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_45;
    }
  }

  v4 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(cf) != v4)
  {
    goto LABEL_45;
  }

  if (*(cf + 32) && !__SCNetworkServiceExists(cf))
  {
    v11 = _SC_LOG_DEFAULT();
    v12 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v11, v12))
    {
      v13 = _os_log_pack_size();
      v19 = &v33 - ((MEMORY[0x1EEE9AC00](v13, v14, v15, v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = __error();
      v21 = _os_log_pack_fill(v19, v13, *v20, &dword_1AD2AD000, "SCNetworkServiceSetPrimaryRank() w/removed\n  service = %@");
      *v21 = 138412290;
      *(v21 + 4) = cf;
      __SC_log_send(3, v11, v12, v19);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_3;
    block[3] = &__block_descriptor_tmp_51;
    block[5] = 0;
    block[6] = 0;
    block[4] = "SCNetworkServiceSetPrimaryRank() w/removed service";
    if (_SC_crash_once_once_3 != -1)
    {
      dispatch_once(&_SC_crash_once_once_3, block);
    }

    goto LABEL_45;
  }

  v5 = __rank_to_str(a2, &v34);
  if (!v5)
  {
    _SCErrorSet(1002);
    return v5;
  }

  if (*(cf + 32))
  {
    if (a2 <= 4 && ((1 << a2) & 0x19) != 0)
    {
      NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(cf + 16), 0);
      Value = SCPreferencesPathGetValue(*(cf + 32), NetworkServiceEntity);
      if (!Value)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        goto LABEL_23;
      }

      v8 = Value;
      TypeID = CFDictionaryGetTypeID();
      if (CFGetTypeID(v8) == TypeID)
      {
        Mutable = CFDictionaryCreateMutableCopy(0, 0, v8);
LABEL_23:
        MutableCopy = Mutable;
        if (v34)
        {
          CFDictionarySetValue(Mutable, @"PrimaryRank", v34);
        }

        else
        {
          CFDictionaryRemoveValue(Mutable, @"PrimaryRank");
        }

        Count = CFDictionaryGetCount(MutableCopy);
        v27 = *(cf + 32);
        if (Count < 1)
        {
          v28 = SCPreferencesPathRemoveValue(v27, NetworkServiceEntity);
        }

        else
        {
          v28 = SCPreferencesPathSetValue(v27, NetworkServiceEntity, MutableCopy);
        }

        goto LABEL_37;
      }

LABEL_33:
      _SCErrorSet(1001);
      goto LABEL_39;
    }

LABEL_45:
    _SCErrorSet(1002);
    return 0;
  }

  if (!*(cf + 40))
  {
    goto LABEL_45;
  }

  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"State:", *(cf + 16), 0);
  v22 = SCDynamicStoreCopyValue(*(cf + 40), NetworkServiceEntity);
  if (v22)
  {
    v23 = v22;
    v24 = CFDictionaryGetTypeID();
    if (CFGetTypeID(v23) != v24)
    {
      CFRelease(v23);
      goto LABEL_33;
    }

    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v23);
    CFRelease(v23);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  if (v34)
  {
    CFDictionarySetValue(MutableCopy, @"PrimaryRank", v34);
  }

  else
  {
    CFDictionaryRemoveValue(MutableCopy, @"PrimaryRank");
  }

  v29 = CFDictionaryGetCount(MutableCopy);
  v30 = *(cf + 40);
  if (v29 < 1)
  {
    v31 = SCDynamicStoreRemoveValue(v30, NetworkServiceEntity);
    if (SCError() == 1004)
    {
      v5 = 1;
    }

    else
    {
      v5 = v31;
    }

    goto LABEL_38;
  }

  v28 = SCDynamicStoreSetValue(v30, NetworkServiceEntity, MutableCopy);
LABEL_37:
  v5 = v28;
LABEL_38:
  CFRelease(MutableCopy);
LABEL_39:
  if (NetworkServiceEntity)
  {
    CFRelease(NetworkServiceEntity);
  }

  return v5;
}

const __CFString *__SCNetworkServiceGetName(CFTypeRef cf, int a2)
{
  if (__SCNetworkServiceInitialize_initialized != -1)
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (cf)
    {
      goto LABEL_3;
    }

LABEL_51:
    _SCErrorSet(1002);
    return 0;
  }

  if (!cf)
  {
    goto LABEL_51;
  }

LABEL_3:
  v4 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(cf) != v4 || !*(cf + 4))
  {
    goto LABEL_51;
  }

  Value = *(cf + 6);
  if (Value)
  {
    if (a2)
    {
      return Value;
    }

    goto LABEL_16;
  }

  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(cf + 2), 0);
  Value = SCPreferencesPathGetValue(*(cf + 4), NetworkServiceEntity);
  CFRelease(NetworkServiceEntity);
  TypeID = CFDictionaryGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) != TypeID)
    {
      Value = 0;
      goto LABEL_16;
    }

    Value = CFDictionaryGetValue(Value, @"UserDefinedName");
    v8 = CFStringGetTypeID();
    if (Value && CFGetTypeID(Value) == v8)
    {
      *(cf + 6) = CFRetain(Value);
      if (_SCNetworkConfigurationBypassSystemInterfaces(*(cf + 4)))
      {
        return *(cf + 6);
      }

      goto LABEL_16;
    }

    if (a2)
    {
      goto LABEL_16;
    }

    return 0;
  }

LABEL_16:
  Interface = SCNetworkServiceGetInterface(cf);
  do
  {
    if (!Interface)
    {
      return *(cf + 6);
    }

    v10 = Interface;
    InterfaceType = SCNetworkInterfaceGetInterfaceType(Interface);
    if (CFEqual(InterfaceType, @"VPN"))
    {
      break;
    }

    v12 = SCNetworkInterfaceGetInterface(Interface);
    if (!v12)
    {
      break;
    }

    Interface = v12;
  }

  while (!CFEqual(v12, &__kSCNetworkInterfaceIPv4));
  v13 = 0;
  while (1)
  {
    if (!*(cf + 6))
    {
      v17 = 0;
      goto LABEL_40;
    }

    if (v13 != 2)
    {
      break;
    }

    v16 = __SCNetworkInterfaceCopyOldNonLocalizedDisplayName(v10, @"Y");
LABEL_30:
    v15 = v16;
    if (v16)
    {
      goto LABEL_31;
    }

LABEL_34:
    if (++v13 == 5)
    {
      v17 = 0;
      v18 = *(cf + 6) == 0;
      goto LABEL_41;
    }
  }

  if (v13 == 1)
  {
    v16 = __SCNetworkInterfaceCopyOldLocalizedDisplayName(v10, @"Y");
    goto LABEL_30;
  }

  if (v13)
  {
    goto LABEL_34;
  }

  NonLocalizedDisplayName = __SCNetworkInterfaceGetNonLocalizedDisplayName(v10);
  if (!NonLocalizedDisplayName)
  {
    goto LABEL_34;
  }

  v15 = NonLocalizedDisplayName;
  CFRetain(NonLocalizedDisplayName);
LABEL_31:
  if (CFEqual(Value, v15))
  {
    v17 = 0;
    goto LABEL_39;
  }

  if (!CFStringHasPrefix(Value, v15))
  {
    CFRelease(v15);
    goto LABEL_34;
  }

  Length = CFStringGetLength(v15);
  v22.length = CFStringGetLength(Value) - Length;
  v22.location = Length;
  v17 = CFStringCreateWithSubstring(0, Value, v22);
LABEL_39:
  CFRelease(v15);
  CFRelease(*(cf + 6));
  *(cf + 6) = 0;
LABEL_40:
  v18 = 1;
LABEL_41:
  if (a2 && v18 && (LocalizedDisplayName = SCNetworkInterfaceGetLocalizedDisplayName(v10)) != 0)
  {
    if (v17)
    {
      *(cf + 6) = CFStringCreateWithFormat(0, 0, @"%@%@", LocalizedDisplayName, v17);
      goto LABEL_47;
    }

    *(cf + 6) = CFRetain(LocalizedDisplayName);
  }

  else if (v17)
  {
LABEL_47:
    CFRelease(v17);
  }

  return *(cf + 6);
}

CFTypeID SCNetworkServiceGetTypeID(void)
{
  if (__SCNetworkServiceInitialize_initialized != -1)
  {
    __SCNetworkServiceCreatePrivate_cold_1();
  }

  return __kSCNetworkServiceTypeID;
}

Boolean SCNetworkServiceRemoveProtocolType(SCNetworkServiceRef service, CFStringRef protocolType)
{
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkServiceInitialize_initialized == -1)
  {
    if (!service)
    {
      goto LABEL_15;
    }
  }

  else
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (!service)
    {
      goto LABEL_15;
    }
  }

  v4 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(service) != v4 || !*(service + 4))
  {
    goto LABEL_15;
  }

  if (!__SCNetworkServiceExists(service))
  {
    v18 = _SC_LOG_DEFAULT();
    v19 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v18, v19))
    {
      v20 = _os_log_pack_size();
      v26 = block - ((MEMORY[0x1EEE9AC00](v20, v21, v22, v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = __error();
      v28 = _os_log_pack_fill(v26, v20, *v27, &dword_1AD2AD000, "SCNetworkServiceRemoveProtocolType() w/removed service\n  service = %@\n  protocol = %@");
      *v28 = 138412546;
      *(v28 + 4) = service;
      *(v28 + 12) = 2112;
      *(v28 + 14) = protocolType;
      __SC_log_send(3, v18, v19, v26);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_3;
    block[3] = &__block_descriptor_tmp_51;
    block[5] = 0;
    block[6] = 0;
    block[4] = "SCNetworkServiceRemoveProtocolType() w/removed service";
    if (_SC_crash_once_once_3 != -1)
    {
      dispatch_once(&_SC_crash_once_once_3, block);
    }

    goto LABEL_15;
  }

  if (!__SCNetworkProtocolIsValidType(protocolType))
  {
LABEL_15:
    _SCErrorSet(1002);
    LOBYTE(v6) = 0;
    return v6;
  }

  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(service + 2), protocolType);
  if (SCPreferencesPathGetValue(*(service + 4), NetworkServiceEntity))
  {
    v6 = SCPreferencesPathRemoveValue(*(service + 4), NetworkServiceEntity);
    if (v6)
    {
      v7 = _SC_LOG_DEFAULT();
      v8 = _SC_syslog_os_log_mapping(7);
      if (__SC_log_enabled(7, v7, v8))
      {
        v9 = _os_log_pack_size();
        v15 = block - ((MEMORY[0x1EEE9AC00](v9, v10, v11, v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
        v16 = __error();
        v17 = _os_log_pack_fill(v15, v9, *v16, &dword_1AD2AD000, "SCNetworkServiceRemoveProtocolType(): %@, %@");
        *v17 = 138412546;
        *(v17 + 4) = service;
        *(v17 + 12) = 2112;
        *(v17 + 14) = protocolType;
        __SC_log_send(7, v7, v8, v15);
      }
    }
  }

  else
  {
    _SCErrorSet(1004);
    LOBYTE(v6) = 0;
  }

  CFRelease(NetworkServiceEntity);
  return v6;
}

Boolean SCNetworkServiceSetEnabled(SCNetworkServiceRef service, Boolean enabled)
{
  v2 = enabled;
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkServiceInitialize_initialized != -1)
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (service)
    {
      goto LABEL_3;
    }

LABEL_19:
    v6 = 1002;
    goto LABEL_20;
  }

  if (!service)
  {
    goto LABEL_19;
  }

LABEL_3:
  v4 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(service) != v4 || !*(service + 4))
  {
    goto LABEL_19;
  }

  if (!__SCNetworkServiceExists(service))
  {
    v21 = _SC_LOG_DEFAULT();
    v22 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v21, v22))
    {
      v23 = _os_log_pack_size();
      v29 = block - ((MEMORY[0x1EEE9AC00](v23, v24, v25, v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = __error();
      v31 = _os_log_pack_fill(v29, v23, *v30, &dword_1AD2AD000, "SCNetworkServiceSetEnabled() w/removed service\n  service = %@");
      *v31 = 138412290;
      *(v31 + 4) = service;
      __SC_log_send(3, v21, v22, v29);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_3;
    block[3] = &__block_descriptor_tmp_51;
    block[5] = 0;
    block[6] = 0;
    block[4] = "SCNetworkProtocolSetEnabled() w/removed service";
    if (_SC_crash_once_once_3 != -1)
    {
      dispatch_once(&_SC_crash_once_once_3, block);
    }

    goto LABEL_19;
  }

  if (v2)
  {
    Interface = SCNetworkServiceGetInterface(service);
    if (Interface)
    {
      if (__SCNetworkInterfaceIsBusyMember(*(service + 4), Interface, 1))
      {
        v6 = 1001;
LABEL_20:
        _SCErrorSet(v6);
        LOBYTE(v8) = 0;
        return v8;
      }
    }
  }

  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(service + 2), 0);
  v8 = __setPrefsEnabled(*(service + 4), NetworkServiceEntity, v2);
  CFRelease(NetworkServiceEntity);
  if (v8)
  {
    v9 = _SC_LOG_DEFAULT();
    v10 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v9, v10))
    {
      v11 = _os_log_pack_size();
      v17 = block - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = __error();
      v19 = _os_log_pack_fill(v17, v11, *v18, &dword_1AD2AD000, "SCNetworkServiceSetEnabled(): %@ -> %s");
      v20 = "Enabled";
      if (!v2)
      {
        v20 = "Disabled";
      }

      *v19 = 138412546;
      *(v19 + 4) = service;
      *(v19 + 12) = 2080;
      *(v19 + 14) = v20;
      __SC_log_send(7, v9, v10, v17);
    }
  }

  return v8;
}

uint64_t SCNetworkServiceGetPrimaryRank(CFTypeRef cf)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  if (__SCNetworkServiceInitialize_initialized == -1)
  {
    if (!cf)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_18;
    }
  }

  v2 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_18;
  }

  if (*(cf + 4))
  {
    NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(cf + 2), 0);
    Value = SCPreferencesPathGetValue(*(cf + 4), NetworkServiceEntity);
    CFRelease(NetworkServiceEntity);
    TypeID = CFDictionaryGetTypeID();
    if (!Value || CFGetTypeID(Value) != TypeID)
    {
      goto LABEL_14;
    }

    v6 = CFDictionaryGetValue(Value, @"PrimaryRank");
    if (__str_to_rank(v6, &v14))
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  if (!*(cf + 5))
  {
LABEL_18:
    v12 = 1002;
    goto LABEL_19;
  }

  v7 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"State:", *(cf + 2), 0);
  v8 = SCDynamicStoreCopyValue(*(cf + 5), v7);
  CFRelease(v7);
  if (!v8)
  {
LABEL_14:
    v12 = 0;
LABEL_19:
    _SCErrorSet(v12);
    return v14;
  }

  v9 = CFDictionaryGetTypeID();
  if (CFGetTypeID(v8) == v9)
  {
    v10 = CFDictionaryGetValue(v8, @"PrimaryRank");
    v11 = __str_to_rank(v10, &v14);
  }

  else
  {
    v11 = 1;
  }

  CFRelease(v8);
  if (!v11)
  {
LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

LABEL_8:
  if (!v14)
  {
    goto LABEL_14;
  }

  return v14;
}

const __SCNetworkInterface *_SCNetworkServiceIsVPN(const __SCNetworkService *a1)
{
  result = SCNetworkServiceGetInterface(a1);
  if (result)
  {
    v2 = result;
    InterfaceType = SCNetworkInterfaceGetInterfaceType(result);
    if (CFEqual(InterfaceType, @"PPP"))
    {
      result = SCNetworkInterfaceGetInterface(v2);
      if (!result)
      {
        return result;
      }

      InterfaceType = SCNetworkInterfaceGetInterfaceType(result);
      if (CFEqual(InterfaceType, @"L2TP"))
      {
        return 1;
      }

      v4 = &kSCNetworkInterfaceTypePPTP;
    }

    else
    {
      if (CFEqual(InterfaceType, @"VPN"))
      {
        return 1;
      }

      v4 = &kSCNetworkInterfaceTypeIPSec;
    }

    return (CFEqual(InterfaceType, *v4) != 0);
  }

  return result;
}

uint64_t SCNetworkServiceSetExternalID(uint64_t cf, const void *a2, const void *a3)
{
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkServiceInitialize_initialized == -1)
  {
    if (!cf)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_18;
    }
  }

  v6 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(cf) != v6)
  {
    goto LABEL_18;
  }

  if (!*(cf + 32))
  {
    goto LABEL_18;
  }

  TypeID = CFStringGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID)
  {
    goto LABEL_18;
  }

  if (!__SCNetworkServiceExists(cf))
  {
    v15 = _SC_LOG_DEFAULT();
    v16 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v15, v16))
    {
      v17 = _os_log_pack_size();
      v23 = block - ((MEMORY[0x1EEE9AC00](v17, v18, v19, v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = __error();
      v25 = _os_log_pack_fill(v23, v17, *v24, &dword_1AD2AD000, "SCNetworkServiceSetExternalID() w/removed\n  service = %@\n  id = %@");
      *v25 = 138412546;
      *(v25 + 4) = cf;
      *(v25 + 12) = 2112;
      *(v25 + 14) = a3;
      __SC_log_send(3, v15, v16, v23);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_3;
    block[3] = &__block_descriptor_tmp_51;
    block[5] = 0;
    block[6] = 0;
    block[4] = "SCNetworkServiceSetExternalID() w/removed service";
    if (_SC_crash_once_once_3 != -1)
    {
      dispatch_once(&_SC_crash_once_once_3, block);
    }

    goto LABEL_18;
  }

  if (a3)
  {
    v8 = CFStringGetTypeID();
    if (CFGetTypeID(a3) != v8)
    {
LABEL_18:
      _SCErrorSet(1002);
      return 0;
    }
  }

  v9 = CFStringCreateWithFormat(0, 0, @"%s%@", "_", a2);
  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(cf + 16), 0);
  Value = SCPreferencesPathGetValue(*(cf + 32), NetworkServiceEntity);
  v12 = CFDictionaryGetTypeID();
  if (!Value)
  {
    if (!a3)
    {
      CFRelease(NetworkServiceEntity);
      v26 = 0;
LABEL_30:
      v29 = *(cf + 56);
      if (v29)
      {
        CFDictionaryRemoveValue(v29, v9);
      }

      goto LABEL_32;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    goto LABEL_22;
  }

  if (CFGetTypeID(Value) == v12)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
    Mutable = MutableCopy;
    if (!a3)
    {
      CFDictionaryRemoveValue(MutableCopy, v9);
LABEL_23:
      v26 = SCPreferencesPathSetValue(*(cf + 32), NetworkServiceEntity, Mutable);
      CFRelease(Mutable);
      goto LABEL_25;
    }

LABEL_22:
    CFDictionarySetValue(Mutable, v9, a3);
    goto LABEL_23;
  }

  v26 = 0;
LABEL_25:
  CFRelease(NetworkServiceEntity);
  if (!a3)
  {
    goto LABEL_30;
  }

  v28 = *(cf + 56);
  if (!v28)
  {
    v28 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(cf + 56) = v28;
  }

  CFDictionarySetValue(v28, v9, a3);
LABEL_32:
  CFRelease(v9);
  if (!v26)
  {
    _SCErrorSet(1001);
  }

  return v26;
}

const __CFDictionary *SCNetworkServiceCopyExternalID(CFTypeRef cf, const void *a2)
{
  if (__SCNetworkServiceInitialize_initialized != -1)
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (cf)
    {
      goto LABEL_3;
    }

LABEL_20:
    _SCErrorSet(1002);
    return 0;
  }

  if (!cf)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(cf) != v4)
  {
    goto LABEL_20;
  }

  if (!*(cf + 4))
  {
    goto LABEL_20;
  }

  TypeID = CFStringGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID)
  {
    goto LABEL_20;
  }

  v6 = CFStringCreateWithFormat(0, 0, @"%s%@", "_", a2);
  v7 = *(cf + 7);
  if (v7 && (v8 = CFDictionaryGetValue(v7, v6)) != 0)
  {
    Value = v8;
    CFRetain(v8);
    CFRelease(v6);
  }

  else
  {
    NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(cf + 2), 0);
    Value = SCPreferencesPathGetValue(*(cf + 4), NetworkServiceEntity);
    v11 = CFDictionaryGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == v11)
      {
        v12 = CFDictionaryGetValue(Value, v6);
        Value = v12;
        if (v12)
        {
          CFRetain(v12);
          Mutable = *(cf + 7);
          if (!Mutable)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            *(cf + 7) = Mutable;
          }

          CFDictionarySetValue(Mutable, v6, Value);
        }
      }

      else
      {
        Value = 0;
      }
    }

    CFRelease(NetworkServiceEntity);
    CFRelease(v6);
    if (!Value)
    {
      _SCErrorSet(1004);
    }
  }

  return Value;
}

void replaceServiceID(uint64_t a1, CFTypeRef *a2)
{
  ServiceOrder = SCNetworkSetGetServiceOrder(a1);
  TypeID = CFArrayGetTypeID();
  if (ServiceOrder)
  {
    if (CFGetTypeID(ServiceOrder) == TypeID)
    {
      v14.length = CFArrayGetCount(ServiceOrder);
      v14.location = 0;
      if (CFArrayContainsValue(ServiceOrder, v14, *a2))
      {
        MutableCopy = CFArrayCreateMutableCopy(0, 0, ServiceOrder);
        Count = CFArrayGetCount(MutableCopy);
        if (Count >= 1)
        {
          v8 = Count;
          for (i = 0; i != v8; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, i);
            if (CFEqual(ValueAtIndex, *a2))
            {
              CFArraySetValueAtIndex(MutableCopy, i, a2[1]);
            }
          }
        }

        SCNetworkSetSetServiceOrder(a1, MutableCopy);
        CFRelease(MutableCopy);
      }
    }
  }

  SetNetworkServiceEntity = SCPreferencesPathKeyCreateSetNetworkServiceEntity(0, *(a1 + 16), *a2, 0);
  if (SCPreferencesPathGetLink(*(a1 + 24), SetNetworkServiceEntity))
  {
    SCPreferencesPathRemoveValue(*(a1 + 24), SetNetworkServiceEntity);
    CFRelease(SetNetworkServiceEntity);
    SetNetworkServiceEntity = SCPreferencesPathKeyCreateSetNetworkServiceEntity(0, *(a1 + 16), a2[1], 0);
    NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, a2[1], 0);
    SCPreferencesPathSetLink(*(a1 + 24), SetNetworkServiceEntity, NetworkServiceEntity);
    if (!SetNetworkServiceEntity)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  NetworkServiceEntity = 0;
  if (SetNetworkServiceEntity)
  {
LABEL_12:
    CFRelease(SetNetworkServiceEntity);
  }

LABEL_13:
  if (NetworkServiceEntity)
  {

    CFRelease(NetworkServiceEntity);
  }
}

void __SCNetworkServiceAddProtocolToService(const __SCNetworkService *a1, const __CFString *a2, const __CFDictionary *a3, Boolean a4)
{
  v8 = SCNetworkServiceCopyProtocol(a1, a2);
  if (v8 || SCError() == 1004 && SCNetworkServiceAddProtocolType(a1, a2) && (v8 = SCNetworkServiceCopyProtocol(a1, a2)) != 0)
  {
    v9 = v8;
    SCNetworkProtocolSetConfiguration(v8, a3);
    SCNetworkProtocolSetEnabled(v9, a4);

    CFRelease(v9);
  }
}

uint64_t __SCNetworkServiceMigrateNew(const __SCPreferences *a1, uint64_t cf, const __CFDictionary *a3, const __CFDictionary *a4, const __CFDictionary *a5)
{
  v8 = cf;
  value[1] = *MEMORY[0x1E69E9840];
  value[0] = 0;
  if (__SCNetworkServiceInitialize_initialized == -1)
  {
    if (!cf)
    {
      return v8;
    }
  }

  else
  {
    __SCNetworkServiceCreatePrivate_cold_1();
    if (!v8)
    {
      return v8;
    }
  }

  v10 = __kSCNetworkServiceTypeID;
  if (CFGetTypeID(v8) != v10)
  {
    return 0;
  }

  v11 = *(v8 + 24);
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!v11 || CFGetTypeID(v11) != TypeID || !*(v8 + 32))
  {
    return 0;
  }

  v13 = *(v8 + 16);
  v14 = SCNetworkServiceCopy(a1, v13);
  if (v14)
  {
    v15 = v14;
    v16 = _SC_LOG_DEFAULT();
    v17 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v16, v17))
    {
      v18 = _os_log_pack_size();
      v24 = &v162 - ((MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = __error();
      *_os_log_pack_fill(v24, v18, *v25, &dword_1AD2AD000, "Service already exists") = 0;
      __SC_log_send(6, v16, v17, v24);
    }

    v8 = 0;
LABEL_11:
    CFRelease(v15);
    return v8;
  }

  Interface = SCNetworkServiceGetInterface(v8);
  if (!Interface)
  {
    v49 = _SC_LOG_DEFAULT();
    v50 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v49, v50))
    {
      v51 = _os_log_pack_size();
      v57 = &v162 - ((MEMORY[0x1EEE9AC00](v51, v52, v53, v54, v55, v56) + 15) & 0xFFFFFFFFFFFFFFF0);
      v58 = *__error();
      v59 = _os_log_pack_fill(v57, v51, v58, &dword_1AD2AD000, "No interface");
LABEL_65:
      *v59 = 0;
      __SC_log_send(6, v49, v50, v57);
    }

    return 0;
  }

  v27 = __SCNetworkInterfaceCopyInterfaceEntity(Interface);
  if (!v27)
  {
    v49 = _SC_LOG_DEFAULT();
    v50 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v49, v50))
    {
      v119 = _os_log_pack_size();
      v57 = &v162 - ((MEMORY[0x1EEE9AC00](v119, v120, v121, v122, v123, v124) + 15) & 0xFFFFFFFFFFFFFFF0);
      v125 = *__error();
      v59 = _os_log_pack_fill(v57, v119, v125, &dword_1AD2AD000, "No interface entity");
      goto LABEL_65;
    }

    return 0;
  }

  v28 = v27;
  if (a3 && (v29 = CFDictionaryGetValue(v27, @"DeviceName")) != 0 && (v30 = v29, (v31 = CFDictionaryGetValue(a3, v29)) != 0))
  {
    v32 = v31;
    v33 = _SC_LOG_DEFAULT();
    LODWORD(v164) = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v33, v164))
    {
      *&v162 = v33;
      v34 = _os_log_pack_size();
      v163 = &v162;
      v40 = MEMORY[0x1EEE9AC00](v34, v35, v36, v37, v38, v39);
      v165 = v32;
      v41 = &v162 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
      v42 = __error();
      v43 = _os_log_pack_fill(v41, v34, *v42, &dword_1AD2AD000, "  mapping %@ --> %@");
      *v43 = 138412546;
      *(v43 + 4) = v30;
      *(v43 + 12) = 2112;
      *(v43 + 14) = v165;
      v44 = v41;
      v32 = v165;
      __SC_log_send(6, v162, v164, v44);
    }

    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v28);
    CFDictionarySetValue(MutableCopy, @"DeviceName", v32);
    v165 = MutableCopy;
    v46 = CFDictionaryGetValue(MutableCopy, @"UserDefinedName");
    if (v46)
    {
      v47 = v32;
      v48 = CFStringCreateMutableCopy(0, 0, v46);
      v167.length = CFStringGetLength(v48);
      v167.location = 0;
      CFStringFindAndReplace(v48, v30, v47, v167, 0);
      CFDictionarySetValue(v165, @"UserDefinedName", v48);
      CFRelease(v48);
    }

    CFRelease(v28);
  }

  else
  {
    v165 = v28;
  }

  v60 = _SCNetworkInterfaceCreateWithEntity(0, v165, &__SCNetworkInterfaceSearchExternal);
  if (!a4 || !a5 || !CFDictionaryGetValueIfPresent(a5, v8, value))
  {
    v108 = _SC_LOG_DEFAULT();
    v109 = _SC_syslog_os_log_mapping(6);
    if (!__SC_log_enabled(6, v108, v109))
    {
LABEL_56:
      v8 = 0;
      v15 = 0;
      goto LABEL_57;
    }

    v110 = _os_log_pack_size();
    v116 = &v162 - ((MEMORY[0x1EEE9AC00](v110, v111, v112, v113, v114, v115) + 15) & 0xFFFFFFFFFFFFFFF0);
    v117 = *__error();
    v118 = _os_log_pack_fill(v116, v110, v117, &dword_1AD2AD000, "No mapping");
LABEL_55:
    *v118 = 0;
    __SC_log_send(6, v108, v109, v116);
    goto LABEL_56;
  }

  v61 = SCNetworkServiceCreate(a1, v60);
  if (!v61)
  {
    v108 = _SC_LOG_DEFAULT();
    v109 = _SC_syslog_os_log_mapping(6);
    if (!__SC_log_enabled(6, v108, v109))
    {
      goto LABEL_56;
    }

    v127 = _os_log_pack_size();
    v116 = &v162 - ((MEMORY[0x1EEE9AC00](v127, v128, v129, v130, v131, v132) + 15) & 0xFFFFFFFFFFFFFFF0);
    v133 = *__error();
    v118 = _os_log_pack_fill(v116, v127, v133, &dword_1AD2AD000, "SCNetworkServiceCreate() failed");
    goto LABEL_55;
  }

  v15 = v61;
  Enabled = SCNetworkServiceGetEnabled(v8);
  if (!SCNetworkServiceSetEnabled(v15, Enabled))
  {
    SCNetworkServiceRemove(v15);
    v134 = _SC_LOG_DEFAULT();
    v135 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v134, v135))
    {
      v136 = _os_log_pack_size();
      v142 = &v162 - ((MEMORY[0x1EEE9AC00](v136, v137, v138, v139, v140, v141) + 15) & 0xFFFFFFFFFFFFFFF0);
      v143 = *__error();
      v144 = _os_log_pack_fill(v142, v136, v143, &dword_1AD2AD000, "SCNetworkServiceSetEnabled() failed");
LABEL_78:
      *v144 = 0;
      __SC_log_send(6, v134, v135, v142);
    }

LABEL_79:
    v8 = 0;
    goto LABEL_57;
  }

  if (!SCNetworkServiceEstablishDefaultConfiguration(v15))
  {
    SCNetworkServiceRemove(v15);
    v134 = _SC_LOG_DEFAULT();
    v135 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v134, v135))
    {
      v155 = _os_log_pack_size();
      v142 = &v162 - ((MEMORY[0x1EEE9AC00](v155, v156, v157, v158, v159, v160) + 15) & 0xFFFFFFFFFFFFFFF0);
      v161 = *__error();
      v144 = _os_log_pack_fill(v142, v155, v161, &dword_1AD2AD000, "SCNetworkServiceEstablishDefaultConfiguration() failed");
      goto LABEL_78;
    }

    goto LABEL_79;
  }

  _SCNetworkServiceSetServiceID(v15, v13);
  if (CFArrayGetCount(value[0]) < 1)
  {
    goto LABEL_74;
  }

  LODWORD(v163) = 0;
  v64 = 0;
  *&v63 = 138412290;
  v162 = v63;
  v164 = v60;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(value[0], v64);
    v66 = CFDictionaryGetValue(a4, ValueAtIndex);
    if (v66)
    {
      v67 = v66;
      v68 = _SC_LOG_DEFAULT();
      v69 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v68, v69))
      {
        v70 = _os_log_pack_size();
        v76 = &v162 - ((MEMORY[0x1EEE9AC00](v70, v71, v72, v73, v74, v75) + 15) & 0xFFFFFFFFFFFFFFF0);
        v77 = __error();
        v78 = _os_log_pack_fill(v76, v70, *v77, &dword_1AD2AD000, "  adding service to set: %@");
        SetID = SCNetworkSetGetSetID(v67);
        *v78 = v162;
        *(v78 + 4) = SetID;
        __SC_log_send(6, v68, v69, v76);
      }

      if (SCNetworkSetAddService(v67, v15))
      {
        LODWORD(v163) = 1;
      }

      else
      {
        v80 = _SC_LOG_DEFAULT();
        v81 = _SC_syslog_os_log_mapping(6);
        if (__SC_log_enabled(6, v80, v81))
        {
          v82 = _os_log_pack_size();
          v88 = &v162 - ((MEMORY[0x1EEE9AC00](v82, v83, v84, v85, v86, v87) + 15) & 0xFFFFFFFFFFFFFFF0);
          v89 = __error();
          *_os_log_pack_fill(v88, v82, *v89, &dword_1AD2AD000, "SCNetworkSetAddService() failed") = 0;
          __SC_log_send(6, v80, v81, v88);
        }
      }

      v60 = v164;
    }

    ++v64;
  }

  while (v64 < CFArrayGetCount(value[0]));
  if (!v163)
  {
LABEL_74:
    SCNetworkServiceRemove(v15);
    v145 = _SC_LOG_DEFAULT();
    v146 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v145, v146))
    {
      v147 = _os_log_pack_size();
      v153 = &v162 - ((MEMORY[0x1EEE9AC00](v147, v148, v149, v150, v151, v152) + 15) & 0xFFFFFFFFFFFFFFF0);
      v154 = __error();
      *_os_log_pack_fill(v153, v147, *v154, &dword_1AD2AD000, "  service not added to any sets") = 0;
      __SC_log_send(6, v145, v146, v153);
    }

    goto LABEL_79;
  }

  Name = __SCNetworkServiceGetName(v8, 0);
  if (Name)
  {
    if (!SCNetworkServiceSetName(v15, Name))
    {
      v91 = _SC_LOG_DEFAULT();
      v92 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v91, v92))
      {
        v93 = _os_log_pack_size();
        v99 = &v162 - ((MEMORY[0x1EEE9AC00](v93, v94, v95, v96, v97, v98) + 15) & 0xFFFFFFFFFFFFFFF0);
        v100 = __error();
        *_os_log_pack_fill(v99, v93, *v100, &dword_1AD2AD000, "SCNetworkServiceSetName() failed") = 0;
        __SC_log_send(6, v91, v92, v99);
      }
    }
  }

  v101 = SCNetworkServiceCopyProtocols(v8);
  if (v101)
  {
    v102 = v101;
    if (CFArrayGetCount(v101) >= 1)
    {
      v103 = 0;
      do
      {
        v104 = CFArrayGetValueAtIndex(v102, v103);
        Configuration = SCNetworkProtocolGetConfiguration(v104);
        ProtocolType = SCNetworkProtocolGetProtocolType(v104);
        v107 = SCNetworkProtocolGetEnabled(v104);
        __SCNetworkServiceAddProtocolToService(v15, ProtocolType, Configuration, v107);
        ++v103;
      }

      while (v103 < CFArrayGetCount(v102));
    }

    CFRelease(v102);
  }

  copyInterfaceConfiguration(v8, v15);
  v8 = 1;
LABEL_57:
  if (v165)
  {
    CFRelease(v165);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v15)
  {
    goto LABEL_11;
  }

  return v8;
}

SCNetworkInterfaceRef copyInterfaceConfiguration(const __SCNetworkService *a1, const __SCNetworkService *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  Interface = SCNetworkServiceGetInterface(a1);
  result = SCNetworkServiceGetInterface(a2);
  if (Interface)
  {
    v5 = result;
    if (result)
    {
      v6 = @"PPP";
      v42 = @"L2TP";
      v7 = @"IPSec";
      v40 = @"IPSec";
      v41 = @"PPP";
      do
      {
        Configuration = SCNetworkInterfaceGetConfiguration(Interface);
        if ((Configuration || !SCError()) && !SCNetworkInterfaceSetConfiguration(v5, Configuration))
        {
          v9 = _SC_LOG_DEFAULT();
          v10 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v9, v10))
          {
            v11 = _os_log_pack_size();
            v17 = &v40 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
            v18 = __error();
            *_os_log_pack_fill(v17, v11, *v18, &dword_1AD2AD000, "problem setting interface configuration") = 0;
            v19 = v17;
            v7 = v40;
            __SC_log_send(6, v9, v10, v19);
            v6 = v41;
          }
        }

        InterfaceType = SCNetworkInterfaceGetInterfaceType(Interface);
        if (CFEqual(InterfaceType, v6))
        {
          v21 = SCNetworkInterfaceGetInterface(Interface);
          if (v21)
          {
            v22 = SCNetworkInterfaceGetInterfaceType(v21);
            if (CFEqual(v22, v42))
            {
              ExtendedConfiguration = SCNetworkInterfaceGetExtendedConfiguration(Interface, v7);
              if ((ExtendedConfiguration || !SCError()) && !SCNetworkInterfaceSetExtendedConfiguration(v5, v7, ExtendedConfiguration))
              {
                v24 = _SC_LOG_DEFAULT();
                v25 = _SC_syslog_os_log_mapping(6);
                if (__SC_log_enabled(6, v24, v25))
                {
                  v26 = _os_log_pack_size();
                  v32 = &v40 - ((MEMORY[0x1EEE9AC00](v26, v27, v28, v29, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
                  v33 = __error();
                  v34 = v26;
                  v7 = v40;
                  *_os_log_pack_fill(v32, v34, *v33, &dword_1AD2AD000, "problem setting child interface configuration") = 0;
                  __SC_log_send(6, v24, v25, v32);
                  v6 = v41;
                }
              }
            }
          }
        }

        v35 = SCNetworkInterfaceGetExtendedConfiguration(Interface, @"EAPOL");
        if (v35 || !SCError())
        {
          SCNetworkInterfaceSetExtendedConfiguration(v5, @"EAPOL", v35);
        }

        v36 = SCNetworkInterfaceGetExtendedConfiguration(Interface, @"com.apple.payload");
        if (v36 || !SCError())
        {
          SCNetworkInterfaceSetExtendedConfiguration(v5, @"com.apple.payload", v36);
        }

        v37 = SCNetworkInterfaceGetExtendedConfiguration(Interface, @"EAP");
        if (v37 || !SCError())
        {
          SCNetworkInterfaceSetExtendedConfiguration(v5, @"EAP", v37);
        }

        v38 = SCNetworkInterfaceGetExtendedConfiguration(Interface, @"EAPOL.LoginWindow");
        if (v38 || !SCError())
        {
          SCNetworkInterfaceSetExtendedConfiguration(v5, @"EAPOL.LoginWindow", v38);
        }

        v39 = SCNetworkInterfaceGetExtendedConfiguration(Interface, @"IPSec");
        if (v39 || !SCError())
        {
          SCNetworkInterfaceSetExtendedConfiguration(v5, @"IPSec", v39);
        }

        Interface = SCNetworkInterfaceGetInterface(Interface);
        result = SCNetworkInterfaceGetInterface(v5);
        if (!Interface)
        {
          break;
        }

        v5 = result;
      }

      while (result);
    }
  }

  return result;
}

uint64_t __SCNetworkServiceCreate(SCPreferencesRef prefs, const __SCNetworkInterface *cf, const __CFString *a3)
{
  v77[1] = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    return 0;
  }

  UserDefinedName = a3;
  if (!a3)
  {
    UserDefinedName = __SCNetworkInterfaceGetUserDefinedName(cf);
    if (!UserDefinedName)
    {
      v46 = _SC_LOG_DEFAULT();
      v47 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v46, v47))
      {
        v48 = _os_log_pack_size();
        v54 = v77 - ((MEMORY[0x1EEE9AC00](v48, v49, v50, v51, v52, v53) + 15) & 0xFFFFFFFFFFFFFFF0);
        v55 = __error();
        *_os_log_pack_fill(v54, v48, *v55, &dword_1AD2AD000, "No userDefinedName") = 0;
        __SC_log_send(6, v46, v47, v54);
      }

      return 0;
    }
  }

  v6 = SCNetworkServiceCreate(prefs, cf);
  v7 = v6;
  if (!v6)
  {
    v21 = _SC_LOG_DEFAULT();
    v22 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v21, v22))
    {
      v23 = _os_log_pack_size();
      v29 = v77 - ((MEMORY[0x1EEE9AC00](v23, v24, v25, v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = __error();
      v31 = _os_log_pack_fill(v29, v23, *v30, &dword_1AD2AD000, "SCNetworkServiceCreate() failed: %s", v77[0]);
      v32 = SCError();
      v33 = SCErrorString(v32);
      *v31 = 136315138;
      *(v31 + 4) = v33;
      __SC_log_send(6, v21, v22, v29);
    }

    v9 = SCNetworkSetCopyCurrent(prefs);
    v34 = 0;
    v10 = 0;
    if (v9)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

  if (!SCNetworkServiceSetName(v6, UserDefinedName))
  {
    v35 = _SC_LOG_DEFAULT();
    v36 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v35, v36))
    {
      v37 = _os_log_pack_size();
      v43 = v77 - ((MEMORY[0x1EEE9AC00](v37, v38, v39, v40, v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
      v44 = *__error();
      v45 = _os_log_pack_fill(v43, v37, v44, &dword_1AD2AD000, "SCNetworkServiceSetName() failed: %s");
LABEL_24:
      v63 = v45;
      v64 = SCError();
      v65 = SCErrorString(v64);
      *v63 = 136315138;
      *(v63 + 4) = v65;
      __SC_log_send(6, v35, v36, v43);
    }

LABEL_25:
    v34 = 0;
LABEL_30:
    SCNetworkServiceRemove(v7);
    CFRelease(v7);
    return v34;
  }

  if (!SCNetworkServiceEstablishDefaultConfiguration(v7))
  {
    v35 = _SC_LOG_DEFAULT();
    v36 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v35, v36))
    {
      v56 = _os_log_pack_size();
      v43 = v77 - ((MEMORY[0x1EEE9AC00](v56, v57, v58, v59, v60, v61) + 15) & 0xFFFFFFFFFFFFFFF0);
      v62 = *__error();
      v45 = _os_log_pack_fill(v43, v56, v62, &dword_1AD2AD000, "SCNetworkServiceEstablishDefaultConfiguration() failed: %s");
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v8 = SCNetworkSetCopyCurrent(prefs);
  if (v8)
  {
    v9 = v8;
    v10 = SCNetworkSetAddService(v8, v7);
    if (!v10)
    {
      v11 = _SC_LOG_DEFAULT();
      v12 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v11, v12))
      {
        v13 = _os_log_pack_size();
        v19 = v77 - ((MEMORY[0x1EEE9AC00](v13, v14, v15, v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
        v20 = __error();
        *_os_log_pack_fill(v19, v13, *v20, &dword_1AD2AD000, "Could not add service to the current set") = 0;
        __SC_log_send(6, v11, v12, v19);
      }

      SCNetworkServiceRemove(v7);
    }

    CFRelease(v7);
LABEL_16:
    CFRelease(v9);
    return v10;
  }

  v34 = 1;
LABEL_27:
  v66 = _SC_LOG_DEFAULT();
  v67 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v66, v67))
  {
    v68 = _os_log_pack_size();
    v74 = v77 - ((MEMORY[0x1EEE9AC00](v68, v69, v70, v71, v72, v73) + 15) & 0xFFFFFFFFFFFFFFF0);
    v75 = __error();
    *_os_log_pack_fill(v74, v68, *v75, &dword_1AD2AD000, "No current set") = 0;
    __SC_log_send(6, v66, v67, v74);
  }

  if (v7)
  {
    goto LABEL_30;
  }

  return v34;
}

void *__SCNetworkServiceIsPPTP(void *result)
{
  if (result)
  {
    result = result[3];
    if (result)
    {
      result = __SCNetworkInterfaceGetEntitySubType(result);
      if (result)
      {
        return (CFEqual(result, @"PPTP") != 0);
      }
    }
  }

  return result;
}

void __SCNetworkServiceDeallocate(uint64_t a1)
{
  CFRelease(*(a1 + 16));
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 56);
  if (v6)
  {

    CFRelease(v6);
  }
}

BOOL __SCNetworkServiceEqual(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 32) == *(a2 + 32))
  {
    return CFEqual(*(a1 + 16), *(a2 + 16)) != 0;
  }

  return 0;
}

CFHashCode __SCNetworkServiceHash(uint64_t a1)
{
  v1 = *(a1 + 16);

  return CFHash(v1);
}

__CFString *__SCNetworkServiceCopyDescription(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<SCNetworkService %p [%p]> {", a1, v2);
  CFStringAppendFormat(Mutable, 0, @"id = %@", a1[2]);
  if (a1[4])
  {
    CFStringAppendFormat(Mutable, 0, @", prefs = %p", a1[4]);
  }

  else if (a1[5])
  {
    CFStringAppendFormat(Mutable, 0, @", store = %p", a1[5]);
  }

  if (a1[6])
  {
    CFStringAppendFormat(Mutable, 0, @", name = %@", a1[6]);
  }

  if (!__SCNetworkServiceExists(a1))
  {
    CFStringAppendFormat(Mutable, 0, @", REMOVED");
  }

  CFStringAppendFormat(Mutable, 0, @"}");
  return Mutable;
}

Boolean SCNetworkSetAddService(SCNetworkSetRef set, SCNetworkServiceRef service)
{
  v59 = *MEMORY[0x1E69E9840];
  if (__SCNetworkSetInitialize_initialized == -1)
  {
    if (!set)
    {
LABEL_22:
      v22 = 1002;
      goto LABEL_23;
    }
  }

  else
  {
    SCNetworkSetAddService_cold_1();
    if (!set)
    {
      goto LABEL_22;
    }
  }

  v4 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(set) != v4)
  {
    goto LABEL_22;
  }

  TypeID = SCNetworkServiceGetTypeID();
  if (!service || CFGetTypeID(service) != TypeID || !*(service + 4))
  {
    goto LABEL_22;
  }

  if (!__SCNetworkSetExists(set))
  {
    v10 = __log_SCNetworkConfiguration();
    v11 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v10, v11))
    {
      v12 = _os_log_pack_size();
      v18 = &block - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = __error();
      v20 = _os_log_pack_fill(v18, v12, *v19, &dword_1AD2AD000, "SCNetworkSetAddService() w/removed set\n  set = %@\n  service = %@");
      *v20 = 138412546;
      *(v20 + 4) = set;
      *(v20 + 12) = 2112;
      *(v20 + 14) = service;
      __SC_log_send(3, v10, v11, v18);
    }

    block = MEMORY[0x1E69E9820];
    v53 = 0x40000000;
    v54 = ___SC_crash_once_block_invoke_4;
    v55 = &__block_descriptor_tmp_16;
    v57 = 0;
    v58 = 0;
    v56 = "SCNetworkSetAddService() w/removed set";
    if (_SC_crash_once_once_4 == -1)
    {
      goto LABEL_22;
    }

LABEL_41:
    dispatch_once(&_SC_crash_once_once_4, &block);
    goto LABEL_22;
  }

  if (!__SCNetworkServiceExists(service))
  {
    v23 = __log_SCNetworkConfiguration();
    v24 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v23, v24))
    {
      v25 = _os_log_pack_size();
      v31 = &block - ((MEMORY[0x1EEE9AC00](v25, v26, v27, v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = __error();
      v33 = _os_log_pack_fill(v31, v25, *v32, &dword_1AD2AD000, "SCNetworkSetAddService() w/removed service\n  set = %@\n  service =  %@");
      *v33 = 138412546;
      *(v33 + 4) = set;
      *(v33 + 12) = 2112;
      *(v33 + 14) = service;
      __SC_log_send(3, v23, v24, v31);
    }

    block = MEMORY[0x1E69E9820];
    v53 = 0x40000000;
    v54 = ___SC_crash_once_block_invoke_4;
    v55 = &__block_descriptor_tmp_16;
    v57 = 0;
    v58 = 0;
    v56 = "SCNetworkSetAddService() w/removed service";
    if (_SC_crash_once_once_4 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

  v6 = SCNetworkSetCopyServices(set);
  if (v6)
  {
    v7 = v6;
    v60.length = CFArrayGetCount(v6);
    v60.location = 0;
    v8 = CFArrayContainsValue(v7, v60, service);
    CFRelease(v7);
    if (v8)
    {
      LOBYTE(v9) = 1;
      return v9;
    }
  }

  Interface = SCNetworkServiceGetInterface(service);
  if (Interface && __SCNetworkInterfaceIsBusyMember(*(service + 4), Interface, 1))
  {
    v22 = 1001;
LABEL_23:
    _SCErrorSet(v22);
    LOBYTE(v9) = 0;
    return v9;
  }

  v35 = SCNetworkServiceGetInterface(service);
  if (v35)
  {
    v36 = __SCNetworkInterfaceCopyDeepConfiguration(set, v35);
  }

  else
  {
    v36 = 0;
  }

  SetNetworkServiceEntity = SCPreferencesPathKeyCreateSetNetworkServiceEntity(0, *(set + 2), *(service + 2), 0);
  v38 = SCPreferencesPathGetLink(*(set + 3), SetNetworkServiceEntity) != 0;
  NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(service + 2), 0);
  if (SCPreferencesPathSetLink(*(set + 3), SetNetworkServiceEntity, NetworkServiceEntity))
  {
    _SCNetworkInterfaceCacheOpen();
    v9 = ensure_unique_service_name(service);
    _SCNetworkInterfaceCacheClose();
    if (!v9)
    {
      SCPreferencesPathRemoveValue(*(set + 3), SetNetworkServiceEntity);
    }
  }

  else
  {
    v9 = 0;
  }

  CFRelease(SetNetworkServiceEntity);
  CFRelease(NetworkServiceEntity);
  if (v9)
  {
    if (v35)
    {
      __SCNetworkInterfaceSetDeepConfiguration(set, v35, v36, v40);
    }

    _serviceOrder_add(set, service, v38);
    *(set + 40) = 1;
    v41 = __log_SCNetworkConfiguration();
    v42 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v41, v42))
    {
      v43 = _os_log_pack_size();
      v49 = &block - ((MEMORY[0x1EEE9AC00](v43, v44, v45, v46, v47, v48) + 15) & 0xFFFFFFFFFFFFFFF0);
      v50 = __error();
      v51 = _os_log_pack_fill(v49, v43, *v50, &dword_1AD2AD000, "SCNetworkSetAddService(): %@, %@");
      *v51 = 138412546;
      *(v51 + 4) = set;
      *(v51 + 12) = 2112;
      *(v51 + 14) = service;
      __SC_log_send(7, v41, v42, v49);
    }
  }

  if (v36)
  {
    CFRelease(v36);
  }

  return v9;
}

BOOL __SCNetworkSetExists(uint64_t a1)
{
  if (*(a1 + 24) && (Set = SCPreferencesPathKeyCreateSet(0, *(a1 + 16)), Value = SCPreferencesPathGetValue(*(a1 + 24), Set), CFRelease(Set), TypeID = CFDictionaryGetTypeID(), Value))
  {
    return CFGetTypeID(Value) == TypeID;
  }

  else
  {
    return 0;
  }
}

uint64_t ensure_unique_service_name(const __SCNetworkService *a1)
{
  v42[1] = *MEMORY[0x1E69E9840];
  Interface = SCNetworkServiceGetInterface(a1);
  Name = SCNetworkServiceGetName(a1);
  v4 = Name;
  if (Name)
  {
    CFRetain(Name);
  }

  v5 = SCNetworkServiceSetName(a1, v4);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E695E9C0];
    while (SCError() == 1005)
    {
      if (!v4)
      {
        goto LABEL_18;
      }

      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v4, @" ");
      if (ArrayBySeparatingStrings)
      {
        v9 = ArrayBySeparatingStrings;
        MutableCopy = CFArrayCreateMutableCopy(0, 0, ArrayBySeparatingStrings);
        CFRelease(v9);
      }

      else
      {
        MutableCopy = CFArrayCreateMutable(0, 0, v7);
        CFArrayAppendValue(MutableCopy, v4);
      }

      Count = CFArrayGetCount(MutableCopy);
      if (Count < 2 || (v12 = Count - 1, ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, Count - 1), IntValue = CFStringGetIntValue(ValueAtIndex), IntValue < 1))
      {
        v15 = 2;
      }

      else
      {
        v15 = (IntValue + 1);
        CFArrayRemoveValueAtIndex(MutableCopy, v12);
      }

      v16 = CFStringCreateWithFormat(0, 0, @"%d", v15);
      CFArrayAppendValue(MutableCopy, v16);
      CFRelease(v16);
      v17 = CFStringCreateByCombiningStrings(0, MutableCopy, @" ");
      CFRelease(MutableCopy);
      if (!v17)
      {
LABEL_18:
        v19 = __log_SCNetworkConfiguration();
        v20 = _SC_syslog_os_log_mapping(6);
        if (!__SC_log_enabled(6, v19, v20))
        {
          goto LABEL_23;
        }

        v21 = _os_log_pack_size();
        v27 = v42 - ((MEMORY[0x1EEE9AC00](v21, v22, v23, v24, v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
        v28 = *__error();
        v29 = _os_log_pack_fill(v27, v21, v28, &dword_1AD2AD000, "could not create unique name for %@: %s");
        goto LABEL_22;
      }

      CFRelease(v4);
      v18 = SCNetworkServiceSetName(a1, v17);
      v4 = v17;
      if (v18)
      {
        v6 = v18;
        goto LABEL_25;
      }
    }

    v19 = __log_SCNetworkConfiguration();
    v20 = _SC_syslog_os_log_mapping(6);
    if (!__SC_log_enabled(6, v19, v20))
    {
      goto LABEL_23;
    }

    v30 = _os_log_pack_size();
    v27 = v42 - ((MEMORY[0x1EEE9AC00](v30, v31, v32, v33, v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = *__error();
    v29 = _os_log_pack_fill(v27, v30, v36, &dword_1AD2AD000, "could not update service name for %@: %s");
LABEL_22:
    v37 = v29;
    LocalizedDisplayName = SCNetworkInterfaceGetLocalizedDisplayName(Interface);
    v39 = SCError();
    v40 = SCErrorString(v39);
    *v37 = 138412546;
    *(v37 + 4) = LocalizedDisplayName;
    *(v37 + 12) = 2080;
    *(v37 + 14) = v40;
    __SC_log_send(6, v19, v20, v27);
LABEL_23:
    v6 = 0;
  }

  v17 = v4;
  if (v4)
  {
LABEL_25:
    CFRelease(v17);
  }

  return v6;
}

void _serviceOrder_add(SCPreferencesRef *a1, SCNetworkServiceRef service, int a3)
{
  v56 = *MEMORY[0x1E69E9840];
  ServiceID = SCNetworkServiceGetServiceID(service);
  v7 = _serviceOrder(service);
  ServiceOrder = SCNetworkSetGetServiceOrder(a1);
  if (ServiceOrder)
  {
    MutableCopy = CFArrayCreateMutableCopy(0, 0, ServiceOrder);
  }

  else
  {
    MutableCopy = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v10 = MutableCopy;
  if (!MutableCopy)
  {
    _serviceOrder_add_cold_1();
  }

  Count = CFArrayGetCount(MutableCopy);
  if (Count < 1)
  {
    goto LABEL_12;
  }

  v12 = Count;
  v13 = 0;
  for (i = 0; i != v12; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
    if (CFEqual(ValueAtIndex, ServiceID))
    {
      ++v13;
    }
  }

  if (v13 != 1)
  {
    if (v13)
    {
      v27 = __log_SCNetworkConfiguration();
      v28 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v27, v28))
      {
        v29 = _os_log_pack_size();
        v48[1] = v48;
        v35 = MEMORY[0x1EEE9AC00](v29, v30, v31, v32, v33, v34);
        v48[0] = v27;
        v36 = v48 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
        v37 = __error();
        v38 = _os_log_pack_fill(v36, v29, *v37, &dword_1AD2AD000, "SCNetworkSetAddService() %sservice w/multiple ServiceOrder references (x%ld)\n  service = %@");
        v39 = "";
        *v38 = 136315650;
        if (!a3)
        {
          v39 = "new ";
        }

        *(v38 + 4) = v39;
        *(v38 + 12) = 2048;
        *(v38 + 14) = v13;
        *(v38 + 22) = 2112;
        *(v38 + 24) = service;
        __SC_log_send(3, v48[0], v28, v36);
      }

      block = MEMORY[0x1E69E9820];
      v50 = 0x40000000;
      v51 = ___SC_crash_once_block_invoke_4;
      v52 = &__block_descriptor_tmp_16;
      v54 = 0;
      v55 = 0;
      v53 = "SCNetworkSetAddService() w/multiple ServiceOrder references";
      if (_SC_crash_once_once_4 != -1)
      {
        dispatch_once(&_SC_crash_once_once_4, &block);
      }

      _serviceOrder_clear(v10, ServiceID);
      goto LABEL_27;
    }

LABEL_12:
    if (a3)
    {
      v16 = __log_SCNetworkConfiguration();
      v17 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v16, v17))
      {
        v18 = _os_log_pack_size();
        v24 = v48 - ((MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
        v25 = __error();
        v26 = _os_log_pack_fill(v24, v18, *v25, &dword_1AD2AD000, "SCNetworkSetAddService() w/updated service not in ServiceOrder\n  service = %@");
        *v26 = 138412290;
        *(v26 + 4) = service;
        __SC_log_send(3, v16, v17, v24);
      }

      block = MEMORY[0x1E69E9820];
      v50 = 0x40000000;
      v51 = ___SC_crash_once_block_invoke_4;
      v52 = &__block_descriptor_tmp_16;
      v54 = 0;
      v55 = 0;
      v53 = "SCNetworkSetAddService() w/updated service not in ServiceOrder";
      if (_SC_crash_once_once_4 != -1)
      {
        dispatch_once(&_SC_crash_once_once_4, &block);
      }
    }

LABEL_27:
    v40 = CFArrayGetCount(v10);
    if (v40 < 1)
    {
      v43 = 0;
    }

    else
    {
      v41 = v40;
      v42 = 0;
      v43 = 0;
      do
      {
        v44 = CFArrayGetValueAtIndex(v10, v42);
        TypeID = CFStringGetTypeID();
        if (v44)
        {
          if (CFGetTypeID(v44) == TypeID)
          {
            v46 = SCNetworkServiceCopy(a1[3], v44);
            if (v46)
            {
              v47 = v46;
              if (v7 >= _serviceOrder(v46))
              {
                v43 = v42 + 1;
              }

              CFRelease(v47);
            }
          }
        }

        ++v42;
      }

      while (v41 != v42);
    }

    CFArrayInsertValueAtIndex(v10, v43, ServiceID);
    SCNetworkSetSetServiceOrder(a1, v10);
    CFRelease(v10);
    return;
  }

  CFRelease(v10);
}

SCNetworkSetRef SCNetworkSetCopy(SCPreferencesRef prefs, CFStringRef setID)
{
  TypeID = CFStringGetTypeID();
  if (!setID || CFGetTypeID(setID) != TypeID)
  {
    v9 = 1002;
LABEL_9:
    _SCErrorSet(v9);
    return 0;
  }

  Set = SCPreferencesPathKeyCreateSet(0, setID);
  Value = SCPreferencesPathGetValue(prefs, Set);
  CFRelease(Set);
  v7 = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != v7)
  {
    v9 = 1004;
    goto LABEL_9;
  }

  result = __SCNetworkSetCreatePrivate(prefs, setID);
  if (!result)
  {
    SCNetworkSetCopy_cold_1();
  }

  *(result + 40) = 1;
  return result;
}

uint64_t __SCNetworkSetCreatePrivate(const void *a1, const __CFString *a2)
{
  if (__SCNetworkSetInitialize_initialized != -1)
  {
    SCNetworkSetAddService_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(Instance + 16) = CFStringCreateCopy(0, a2);
    *(Instance + 24) = CFRetain(a1);
  }

  return Instance;
}

Boolean SCNetworkSetContainsInterface(SCNetworkSetRef set, SCNetworkInterfaceRef interface)
{
  v3 = SCNetworkSetCopyServices(set);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = __SCNetworkServiceExistsForInterface(v3, interface);
  CFRelease(v4);
  return v5;
}

CFArrayRef SCNetworkSetCopyServices(SCNetworkSetRef set)
{
  v67 = *MEMORY[0x1E69E9840];
  if (__SCNetworkSetInitialize_initialized == -1)
  {
    if (!set)
    {
LABEL_34:
      _SCErrorSet(1002);
      return 0;
    }
  }

  else
  {
    SCNetworkSetAddService_cold_1();
    if (!set)
    {
      goto LABEL_34;
    }
  }

  v2 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(set) != v2)
  {
    goto LABEL_34;
  }

  SetNetworkService = SCPreferencesPathKeyCreateSetNetworkService(0, *(set + 2), 0);
  Value = SCPreferencesPathGetValue(*(set + 3), SetNetworkService);
  CFRelease(SetNetworkService);
  if (!Value)
  {
    v10 = MEMORY[0x1E695E9C0];

    return CFArrayCreateMutable(0, 0, v10);
  }

  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  Count = CFDictionaryGetCount(Value);
  if (Count < 1)
  {
    return Mutable;
  }

  v8 = Count;
  memset(v66, 0, sizeof(v66));
  v62 = Mutable;
  if (Count < 0x11)
  {
    v9 = v66;
  }

  else
  {
    v9 = MEMORY[0x1B26F3AA0](0, 8 * Count, 0xC0040B8AA526DLL, 0);
  }

  CFDictionaryGetKeysAndValues(Value, v9, 0);
  v12 = 0;
  v63 = @"Interface";
  *&v13 = 138412546;
  v65 = v13;
  *&v13 = 138412802;
  v64 = v13;
  do
  {
    SetNetworkServiceEntity = SCPreferencesPathKeyCreateSetNetworkServiceEntity(0, *(set + 2), v9[v12], 0);
    Link = SCPreferencesPathGetLink(*(set + 3), SetNetworkServiceEntity);
    CFRelease(SetNetworkServiceEntity);
    if (!Link)
    {
      v31 = __log_SCNetworkConfiguration();
      v32 = _SC_syslog_os_log_mapping(6);
      if (!__SC_log_enabled(6, v31, v32))
      {
        goto LABEL_29;
      }

      v33 = _os_log_pack_size();
      v39 = v61 - ((MEMORY[0x1EEE9AC00](v33, v34, v35, v36, v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
      v40 = __error();
      v41 = _os_log_pack_fill(v39, v33, *v40, &dword_1AD2AD000, "service %@ for set %@ is not a link");
      v42 = v9[v12];
      v43 = *(set + 2);
      *v41 = v65;
      *(v41 + 4) = v42;
      *(v41 + 12) = 2112;
      *(v41 + 14) = v43;
      v44 = v31;
      v45 = v32;
      v46 = v39;
LABEL_25:
      __SC_log_send(6, v44, v45, v46);
      goto LABEL_29;
    }

    if (!SCPreferencesPathGetValue(*(set + 3), Link))
    {
      v47 = __log_SCNetworkConfiguration();
      v48 = _SC_syslog_os_log_mapping(6);
      if (!__SC_log_enabled(6, v47, v48))
      {
        goto LABEL_29;
      }

      v49 = _os_log_pack_size();
      v55 = v61 - ((MEMORY[0x1EEE9AC00](v49, v50, v51, v52, v53, v54) + 15) & 0xFFFFFFFFFFFFFFF0);
      v56 = __error();
      v57 = _os_log_pack_fill(v55, v49, *v56, &dword_1AD2AD000, "service %@ for set %@ broken link %@");
      v58 = v9[v12];
      v59 = *(set + 2);
      *v57 = v64;
      *(v57 + 4) = v58;
      *(v57 + 12) = 2112;
      *(v57 + 14) = v59;
      *(v57 + 22) = 2112;
      *(v57 + 24) = Link;
      v44 = v47;
      v45 = v48;
      v46 = v55;
      goto LABEL_25;
    }

    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, Link, @"/");
    if (CFArrayGetCount(ArrayBySeparatingStrings) == 3)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 2);
      NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, ValueAtIndex, 0);
      if (CFEqual(NetworkServiceEntity, Link))
      {
        v19 = SCPreferencesPathKeyCreateNetworkServiceEntity(0, ValueAtIndex, v63);
        v20 = SCPreferencesPathGetValue(*(set + 3), v19);
        CFRelease(v19);
        if (__SCNetworkInterfaceEntityIsPPTP(v20))
        {
          v21 = __log_SCNetworkConfiguration();
          v22 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v21, v22))
          {
            v23 = _os_log_pack_size();
            v61[1] = v61;
            v29 = v61 - ((MEMORY[0x1EEE9AC00](v23, v24, v25, v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
            v30 = __error();
            *_os_log_pack_fill(v29, v23, *v30, &dword_1AD2AD000, "PPTP services are no longer supported") = 0;
            __SC_log_send(6, v21, v22, v29);
          }
        }

        else
        {
          Private = __SCNetworkServiceCreatePrivate(0, *(set + 3), ValueAtIndex, 0);
          CFArrayAppendValue(v62, Private);
          CFRelease(Private);
        }
      }

      CFRelease(NetworkServiceEntity);
    }

    CFRelease(ArrayBySeparatingStrings);
LABEL_29:
    ++v12;
  }

  while (v8 != v12);
  if (v9 != v66)
  {
    CFAllocatorDeallocate(0, v9);
  }

  return v62;
}

CFArrayRef SCNetworkSetCopyAll(SCPreferencesRef prefs)
{
  v34 = *MEMORY[0x1E69E9840];
  Sets = SCPreferencesPathKeyCreateSets(0);
  v30 = prefs;
  Value = SCPreferencesPathGetValue(prefs, Sets);
  CFRelease(Sets);
  if (Value)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(Value) != TypeID)
    {
      return 0;
    }

    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    Count = CFDictionaryGetCount(Value);
    if (Count >= 1)
    {
      v6 = Count;
      memset(v33, 0, sizeof(v33));
      memset(v32, 0, sizeof(v32));
      if (Count < 0x11)
      {
        v7 = v33;
        v8 = v32;
      }

      else
      {
        v7 = MEMORY[0x1B26F3AA0](0, 8 * Count, 0xC0040B8AA526DLL, 0);
        v8 = MEMORY[0x1B26F3AA0](0, 8 * v6, 0xC0040B8AA526DLL, 0);
      }

      CFDictionaryGetKeysAndValues(Value, v7, v8);
      v11 = 0;
      *&v12 = 138412290;
      v29 = v12;
      do
      {
        v13 = v8[v11];
        v14 = CFDictionaryGetTypeID();
        if (v13 && CFGetTypeID(v13) == v14)
        {
          Private = __SCNetworkSetCreatePrivate(v30, v7[v11]);
          if (!Private)
          {
            SCNetworkSetCopyAll_cold_1();
          }

          v16 = Private;
          Private[40] = 1;
          CFArrayAppendValue(Mutable, Private);
          CFRelease(v16);
        }

        else
        {
          v17 = __log_SCNetworkConfiguration();
          v18 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v17, v18))
          {
            v19 = _os_log_pack_size();
            v25 = &v29 - ((MEMORY[0x1EEE9AC00](v19, v20, v21, v22, v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
            v26 = __error();
            v27 = _os_log_pack_fill(v25, v19, *v26, &dword_1AD2AD000, "error w/set %@");
            v28 = v7[v11];
            *v27 = v29;
            *(v27 + 4) = v28;
            __SC_log_send(6, v17, v18, v25);
          }
        }

        ++v11;
      }

      while (v6 != v11);
      if (v7 != v33)
      {
        CFAllocatorDeallocate(0, v7);
        CFAllocatorDeallocate(0, v8);
      }
    }

    return Mutable;
  }

  else
  {
    v9 = MEMORY[0x1E695E9C0];

    return CFArrayCreateMutable(0, 0, v9);
  }
}

__CFArray *SCNetworkSetCopyAvailableInterfaces(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = _SCNetworkInterfaceCopyAllWithPreferences(v1);
  Count = CFArrayGetCount(v2);
  if (v1)
  {
    v4 = Count == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return v2;
  }

  v6 = Count;
  Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
  v8 = SCBridgeInterfaceCopyAll(v1);
  if (v8)
  {
    v9 = v8;
    __SCBridgeInterfaceListCollectMembers(v8, Mutable, 0);
    CFRelease(v9);
  }

  if (!CFSetGetCount(Mutable))
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return v2;
  }

  v5 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
      if (!CFSetContainsValue(Mutable, ValueAtIndex))
      {
        CFArrayAppendValue(v5, ValueAtIndex);
      }
    }
  }

  CFRelease(v2);
  CFRelease(Mutable);
  return v5;
}

SCNetworkSetRef SCNetworkSetCopyCurrent(SCPreferencesRef prefs)
{
  v20[1] = *MEMORY[0x1E69E9840];
  Value = SCPreferencesGetValue(prefs, @"CurrentSet");
  TypeID = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, Value, @"/");
  v5 = 0;
  if (CFArrayGetCount(ArrayBySeparatingStrings) == 3)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 2);
    Set = SCPreferencesPathKeyCreateSet(0, ValueAtIndex);
    if (CFEqual(Set, Value))
    {
      Private = __SCNetworkSetCreatePrivate(prefs, ValueAtIndex);
      if (!Private)
      {
        SCNetworkSetCopyCurrent_cold_1();
      }

      v5 = Private;
      *(Private + 40) = 1;
    }

    else
    {
      v9 = __log_SCNetworkConfiguration();
      v10 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v9, v10))
      {
        v11 = _os_log_pack_size();
        v17 = v20 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
        v18 = __error();
        *_os_log_pack_fill(v17, v11, *v18, &dword_1AD2AD000, "SCNetworkSetCopyCurrent(): preferences are non-conformant") = 0;
        __SC_log_send(5, v9, v10, v17);
      }

      v5 = 0;
    }

    CFRelease(Set);
  }

  CFRelease(ArrayBySeparatingStrings);
  return v5;
}

SCNetworkSetRef SCNetworkSetCreate(SCPreferencesRef prefs)
{
  v22[1] = *MEMORY[0x1E69E9840];
  Sets = SCPreferencesPathKeyCreateSets(0);
  UniqueChild = SCPreferencesPathCreateUniqueChild(prefs, Sets);
  CFRelease(Sets);
  if (!UniqueChild)
  {
    return 0;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, UniqueChild, @"/");
  ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 2);
  Private = __SCNetworkSetCreatePrivate(prefs, ValueAtIndex);
  if (!Private)
  {
    SCNetworkSetCreate_cold_1();
  }

  v7 = Private;
  CFRelease(ArrayBySeparatingStrings);
  v7[40] = 0;
  v8 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = SCPreferencesPathSetValue(prefs, UniqueChild, v8);
  CFRelease(UniqueChild);
  CFRelease(v8);
  if (!v9)
  {
    CFRelease(v7);
    return 0;
  }

  v10 = __log_SCNetworkConfiguration();
  v11 = _SC_syslog_os_log_mapping(7);
  if (__SC_log_enabled(7, v10, v11))
  {
    v12 = _os_log_pack_size();
    v18 = v22 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = __error();
    v20 = _os_log_pack_fill(v18, v12, *v19, &dword_1AD2AD000, "SCNetworkSetCreate(): %@");
    *v20 = 138412290;
    *(v20 + 4) = v7;
    __SC_log_send(7, v10, v11, v18);
  }

  return v7;
}

const __SCNetworkSet *_SCNetworkSetCreateDefault(const __SCPreferences *a1)
{
  v61[1] = *MEMORY[0x1E69E9840];
  v2 = SCNetworkSetCopyCurrent(a1);
  if (v2)
  {
    v3 = v2;
    v4 = __log_SCNetworkConfiguration();
    v5 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v4, v5))
    {
      v6 = _os_log_pack_size();
      v12 = v61 - ((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = __error();
      *_os_log_pack_fill(v12, v6, *v13, &dword_1AD2AD000, "creating default set w/already existing set") = 0;
      __SC_log_send(5, v4, v5, v12);
    }

    CFRelease(v3);
    _SCErrorSet(1005);
    return 0;
  }

  v16 = SCNetworkSetCreate(a1);
  if (!v16)
  {
    v35 = __log_SCNetworkConfiguration();
    v36 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v35, v36))
    {
      v37 = _os_log_pack_size();
      v43 = v61 - ((MEMORY[0x1EEE9AC00](v37, v38, v39, v40, v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
      v44 = __error();
      v45 = _os_log_pack_fill(v43, v37, *v44, &dword_1AD2AD000, "could not create new set: %s", v61[0]);
      v46 = SCError();
      v47 = SCErrorString(v46);
      *v45 = 136315138;
      *(v45 + 4) = v47;
      __SC_log_send(5, v35, v36, v43);
    }

    return 0;
  }

  v14 = v16;
  v17 = copy_default_set_name(1);
  v18 = SCNetworkSetSetName(v14, v17);
  CFRelease(v17);
  *(v14 + 6) = *MEMORY[0x1E695E4D0];
  if (!v18)
  {
    v48 = __log_SCNetworkConfiguration();
    v49 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v48, v49))
    {
      v50 = _os_log_pack_size();
      v56 = v61 - ((MEMORY[0x1EEE9AC00](v50, v51, v52, v53, v54, v55) + 15) & 0xFFFFFFFFFFFFFFF0);
      v57 = __error();
      v58 = _os_log_pack_fill(v56, v50, *v57, &dword_1AD2AD000, "could not save the new set's name: %s", v61[0]);
      v59 = SCError();
      v60 = SCErrorString(v59);
      *v58 = 136315138;
      *(v58 + 4) = v60;
      __SC_log_send(5, v48, v49, v56);
    }

    goto LABEL_22;
  }

  v19 = SCNetworkSetSetCurrent(v14);
  if (!v19)
  {
    v20 = __log_SCNetworkConfiguration();
    v21 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v20, v21))
    {
      v22 = _os_log_pack_size();
      v28 = v61 - ((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
      v29 = __error();
      v30 = _os_log_pack_fill(v28, v22, *v29, &dword_1AD2AD000, "could not establish new set as current: %s", v61[0]);
      v31 = SCError();
      v32 = SCErrorString(v31);
      *v30 = 136315138;
      *(v30 + 4) = v32;
      __SC_log_send(5, v20, v21, v28);
    }
  }

  if (!SCPreferencesGetValue(a1, @"Model"))
  {
    v33 = _SC_hw_model(0);
    SCPreferencesSetValue(a1, @"Model", v33);
  }

  if (!SCPreferencesGetValue(a1, @"__VERSION__"))
  {
    HIDWORD(v61[0]) = 20191120;
    v34 = CFNumberCreate(0, kCFNumberIntType, v61 + 4);
    SCPreferencesSetValue(a1, @"__VERSION__", v34);
    CFRelease(v34);
  }

  if (!v19)
  {
LABEL_22:
    SCNetworkSetRemove(v14);
    CFRelease(v14);
    return 0;
  }

  return v14;
}

__CFString *copy_default_set_name(int a1)
{
  if (a1)
  {
    if (copy_default_set_name_once_49 != -1)
    {
      copy_default_set_name_cold_1();
    }

    v1 = &copy_default_set_name_localized;
  }

  else
  {
    if (copy_default_set_name_once != -1)
    {
      copy_default_set_name_cold_2();
    }

    v1 = &copy_default_set_name_non_localized;
  }

  v2 = *v1;
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = @"Automatic";
  }

  CFRetain(v3);
  return v3;
}

Boolean SCNetworkSetSetName(SCNetworkSetRef set, CFStringRef name)
{
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkSetInitialize_initialized == -1)
  {
    if (!set)
    {
      goto LABEL_16;
    }
  }

  else
  {
    SCNetworkSetAddService_cold_1();
    if (!set)
    {
      goto LABEL_16;
    }
  }

  v4 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(set) != v4)
  {
    goto LABEL_16;
  }

  if (!__SCNetworkSetExists(set))
  {
    v10 = __log_SCNetworkConfiguration();
    v11 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v10, v11))
    {
      v12 = _os_log_pack_size();
      v18 = block - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = __error();
      v20 = _os_log_pack_fill(v18, v12, *v19, &dword_1AD2AD000, "SCNetworkSetSetName() w/removed set\n  set = %@\n  name = %@");
      v21 = @"<NULL>";
      if (name)
      {
        v21 = name;
      }

      *v20 = 138412546;
      *(v20 + 4) = set;
      *(v20 + 12) = 2112;
      *(v20 + 14) = v21;
      __SC_log_send(3, v10, v11, v18);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_4;
    block[3] = &__block_descriptor_tmp_16;
    block[5] = 0;
    block[6] = 0;
    block[4] = "SCNetworkSetSetName() w/removed set";
    if (_SC_crash_once_once_4 != -1)
    {
      dispatch_once(&_SC_crash_once_once_4, block);
    }

    goto LABEL_16;
  }

  if (!name)
  {
    v9 = 0;
    v6 = 0;
    goto LABEL_19;
  }

  TypeID = CFStringGetTypeID();
  if (CFGetTypeID(name) != TypeID)
  {
LABEL_16:
    _SCErrorSet(1002);
    LOBYTE(v22) = 0;
    return v22;
  }

  v6 = copy_default_set_name(0);
  v7 = CFEqual(name, v6);
  v8 = copy_default_set_name(1);
  v9 = v8;
  if (!v7)
  {
    if (CFEqual(name, v6))
    {
LABEL_34:
      v39 = SCNetworkSetCopyAll(*(set + 3));
      if (v39)
      {
        v40 = v39;
        Count = CFArrayGetCount(v39);
        if (Count >= 1)
        {
          v42 = Count;
          v43 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v40, v43);
            SetID = SCNetworkSetGetSetID(ValueAtIndex);
            if (!CFEqual(*(set + 2), SetID))
            {
              v46 = SCNetworkSetGetName(ValueAtIndex);
              if (v46)
              {
                if (CFEqual(name, v46))
                {
                  break;
                }
              }
            }

            if (v42 == ++v43)
            {
              goto LABEL_41;
            }
          }

          CFRelease(v40);
          v38 = 1005;
          goto LABEL_29;
        }

LABEL_41:
        CFRelease(v40);
      }

LABEL_42:
      if (v6)
      {
        if (!v9)
        {
          v9 = copy_default_set_name(1);
        }

        if (CFEqual(name, v9))
        {
          name = v6;
        }
      }

      goto LABEL_47;
    }

LABEL_19:
    v24 = copy_default_set_name(1);
    v25 = SCNetworkSetGetName(set);
    if (v25 == v24)
    {
      CFRelease(v24);
    }

    else
    {
      if (!v24 || !v25)
      {
        CFRelease(v24);
        goto LABEL_31;
      }

      v26 = CFEqual(v25, v24);
      CFRelease(v24);
      if (!v26)
      {
LABEL_31:
        if (!name)
        {
          goto LABEL_47;
        }

        goto LABEL_42;
      }
    }

    if (geteuid())
    {
      v27 = __log_SCNetworkConfiguration();
      v28 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v27, v28))
      {
        v29 = _os_log_pack_size();
        v35 = block - ((MEMORY[0x1EEE9AC00](v29, v30, v31, v32, v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
        v36 = __error();
        v37 = _os_log_pack_fill(v35, v29, *v36, &dword_1AD2AD000, "SCNetworkSetSetName() failed, cannot rename : %@");
        *v37 = 138412290;
        *(v37 + 4) = set;
        __SC_log_send(3, v27, v28, v35);
      }

      _SC_crash("The Automatic network set cannot be renamed", 0, 0);
      v38 = 1002;
LABEL_29:
      _SCErrorSet(v38);
      goto LABEL_58;
    }

    goto LABEL_31;
  }

  name = v8;
  if (v8)
  {
    goto LABEL_34;
  }

LABEL_47:
  v47 = SCPreferencesPathKeyCreateSet(0, *(set + 2));
  Value = SCPreferencesPathGetValue(*(set + 3), v47);
  v49 = CFDictionaryGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) == v49)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
      Mutable = MutableCopy;
      if (!name)
      {
        CFDictionaryRemoveValue(MutableCopy, @"UserDefinedName");
LABEL_54:
        v22 = SCPreferencesPathSetValue(*(set + 3), v47, Mutable);
        CFRelease(Mutable);
        CFRelease(v47);
        if (v22)
        {
          v52 = __log_SCNetworkConfiguration();
          v53 = _SC_syslog_os_log_mapping(7);
          if (__SC_log_enabled(7, v52, v53))
          {
            v54 = _os_log_pack_size();
            v60 = block - ((MEMORY[0x1EEE9AC00](v54, v55, v56, v57, v58, v59) + 15) & 0xFFFFFFFFFFFFFFF0);
            v61 = __error();
            v62 = _os_log_pack_fill(v60, v54, *v61, &dword_1AD2AD000, "SCNetworkSetSetName(): %@");
            *v62 = 138412290;
            *(v62 + 4) = set;
            __SC_log_send(7, v52, v53, v60);
          }
        }

        goto LABEL_59;
      }

LABEL_53:
      CFDictionarySetValue(Mutable, @"UserDefinedName", name);
      goto LABEL_54;
    }
  }

  else if (name)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    goto LABEL_53;
  }

  CFRelease(v47);
LABEL_58:
  LOBYTE(v22) = 0;
LABEL_59:
  if (v9)
  {
    CFRelease(v9);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v22;
}

Boolean SCNetworkSetSetCurrent(SCNetworkSetRef set)
{
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkSetInitialize_initialized == -1)
  {
    if (!set)
    {
LABEL_12:
      _SCErrorSet(1002);
      LOBYTE(v4) = 0;
      return v4;
    }
  }

  else
  {
    SCNetworkSetAddService_cold_1();
    if (!set)
    {
      goto LABEL_12;
    }
  }

  v2 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(set) != v2)
  {
    goto LABEL_12;
  }

  if (!__SCNetworkSetExists(set))
  {
    v16 = __log_SCNetworkConfiguration();
    v17 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v16, v17))
    {
      v18 = _os_log_pack_size();
      v24 = block - ((MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = __error();
      v26 = _os_log_pack_fill(v24, v18, *v25, &dword_1AD2AD000, "SCNetworkSetSetCurrent() w/removed set\n  set = %@");
      *v26 = 138412290;
      *(v26 + 4) = set;
      __SC_log_send(3, v16, v17, v24);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_4;
    block[3] = &__block_descriptor_tmp_16;
    block[5] = 0;
    block[6] = 0;
    block[4] = "SCNetworkSetSetCurrent() w/removed set";
    if (_SC_crash_once_once_4 != -1)
    {
      dispatch_once(&_SC_crash_once_once_4, block);
    }

    goto LABEL_12;
  }

  v3 = SCPreferencesPathKeyCreateSet(0, *(set + 2));
  v4 = SCPreferencesSetValue(*(set + 3), @"CurrentSet", v3);
  CFRelease(v3);
  if (v4)
  {
    v5 = __log_SCNetworkConfiguration();
    v6 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v5, v6))
    {
      v7 = _os_log_pack_size();
      v13 = block - ((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = __error();
      v15 = _os_log_pack_fill(v13, v7, *v14, &dword_1AD2AD000, "SCNetworkSetSetCurrent(): %@");
      *v15 = 138412290;
      *(v15 + 4) = set;
      __SC_log_send(7, v5, v6, v13);
    }
  }

  return v4;
}

Boolean SCNetworkSetRemove(SCNetworkSetRef set)
{
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkSetInitialize_initialized == -1)
  {
    if (!set)
    {
LABEL_20:
      _SCErrorSet(1002);
LABEL_21:
      LOBYTE(v40) = 0;
      return v40;
    }
  }

  else
  {
    SCNetworkSetAddService_cold_1();
    if (!set)
    {
      goto LABEL_20;
    }
  }

  v2 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(set) != v2)
  {
    goto LABEL_20;
  }

  if (!__SCNetworkSetExists(set))
  {
    v29 = __log_SCNetworkConfiguration();
    v30 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v29, v30))
    {
      v31 = _os_log_pack_size();
      v37 = block - ((MEMORY[0x1EEE9AC00](v31, v32, v33, v34, v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
      v38 = __error();
      v39 = _os_log_pack_fill(v37, v31, *v38, &dword_1AD2AD000, "SCNetworkSetRemove() w/removed set\n  set = %@");
      *v39 = 138412290;
      *(v39 + 4) = set;
      __SC_log_send(3, v29, v30, v37);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_4;
    block[3] = &__block_descriptor_tmp_16;
    block[5] = 0;
    block[6] = 0;
    block[4] = "SCNetworkSetRemove() w/removed set";
    if (_SC_crash_once_once_4 != -1)
    {
      dispatch_once(&_SC_crash_once_once_4, block);
    }

    goto LABEL_20;
  }

  if (_SCNetworkSetIsDefault(set) && geteuid())
  {
    v3 = __log_SCNetworkConfiguration();
    v4 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v3, v4))
    {
      v5 = _os_log_pack_size();
      v11 = block - ((MEMORY[0x1EEE9AC00](v5, v6, v7, v8, v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = __error();
      v13 = _os_log_pack_fill(v11, v5, *v12, &dword_1AD2AD000, "SCNetworkSetRemove() failed, cannot remove set : %@");
      *v13 = 138412290;
      *(v13 + 4) = set;
      __SC_log_send(3, v3, v4, v11);
    }

    _SC_crash("The Automatic network set cannot be removed", 0, 0);
    goto LABEL_20;
  }

  Value = SCPreferencesGetValue(*(set + 3), @"CurrentSet");
  v15 = SCPreferencesPathKeyCreateSet(0, *(set + 2));
  TypeID = CFStringGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID && CFEqual(Value, v15))
  {
    v17 = __log_SCNetworkConfiguration();
    v18 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v17, v18))
    {
      v19 = _os_log_pack_size();
      v25 = block - ((MEMORY[0x1EEE9AC00](v19, v20, v21, v22, v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = __error();
      v27 = _os_log_pack_fill(v25, v19, *v26, &dword_1AD2AD000, "SCNetworkSetRemove() failed, currently active: %@");
      v28 = *(set + 2);
      *v27 = 138412290;
      *(v27 + 4) = v28;
      __SC_log_send(7, v17, v18, v25);
    }

    _SCErrorSet(1002);
    CFRelease(v15);
    goto LABEL_21;
  }

  v40 = SCPreferencesPathRemoveValue(*(set + 3), v15);
  CFRelease(v15);
  if (v40)
  {
    v42 = __log_SCNetworkConfiguration();
    v43 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v42, v43))
    {
      v44 = _os_log_pack_size();
      v50 = block - ((MEMORY[0x1EEE9AC00](v44, v45, v46, v47, v48, v49) + 15) & 0xFFFFFFFFFFFFFFF0);
      v51 = __error();
      v52 = _os_log_pack_fill(v50, v44, *v51, &dword_1AD2AD000, "SCNetworkSetRemove(): %@");
      *v52 = 138412290;
      *(v52 + 4) = set;
      __SC_log_send(7, v42, v43, v50);
    }
  }

  return v40;
}

CFStringRef SCNetworkSetGetSetID(SCNetworkSetRef set)
{
  if (__SCNetworkSetInitialize_initialized == -1)
  {
    if (!set)
    {
      goto LABEL_6;
    }
  }

  else
  {
    SCNetworkSetAddService_cold_1();
    if (!set)
    {
      goto LABEL_6;
    }
  }

  v2 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(set) == v2)
  {
    return *(set + 2);
  }

LABEL_6:
  _SCErrorSet(1002);
  return 0;
}

uint64_t _SCNetworkSetIsDefault(const __CFBoolean **cf)
{
  if (__SCNetworkSetInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_19:
      _SCErrorSet(1002);
      return 0;
    }
  }

  else
  {
    SCNetworkSetAddService_cold_1();
    if (!cf)
    {
      goto LABEL_19;
    }
  }

  v2 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_19;
  }

  v3 = cf[6];
  if (!v3)
  {
    v5 = _SCNetworkSetCopyUserDefinedName(cf);
    v6 = cf[6];
    if (!v6)
    {
      v7 = copy_default_set_name(0);
      if (v5 && CFEqual(v5, v7))
      {
        v8 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v8 = MEMORY[0x1E695E4C0];
      }

      v6 = *v8;
      if (v7)
      {
        CFRelease(v7);
      }

      cf[6] = v6;
    }

    Value = CFBooleanGetValue(v6);
    if (v5)
    {
      CFRelease(v5);
    }

    return Value;
  }

  return CFBooleanGetValue(v3);
}

CFTypeRef _SCNetworkSetCopyUserDefinedName(CFTypeRef cf)
{
  if (__SCNetworkSetInitialize_initialized != -1)
  {
    SCNetworkSetAddService_cold_1();
    if (cf)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!cf)
  {
    return 0;
  }

LABEL_3:
  v2 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    return 0;
  }

  Set = SCPreferencesPathKeyCreateSet(0, *(cf + 2));
  Value = SCPreferencesPathGetValue(*(cf + 3), Set);
  CFRelease(Set);
  if (!Value)
  {
    return 0;
  }

  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  v6 = CFDictionaryGetValue(Value, @"UserDefinedName");
  v7 = CFStringGetTypeID();
  if (!v6 || CFGetTypeID(v6) != v7)
  {
    return 0;
  }

  return CFRetain(v6);
}

CFStringRef SCNetworkSetGetName(SCNetworkSetRef set)
{
  if (__SCNetworkSetInitialize_initialized == -1)
  {
    if (!set)
    {
LABEL_7:
      _SCErrorSet(1002);
      return 0;
    }
  }

  else
  {
    SCNetworkSetAddService_cold_1();
    if (!set)
    {
      goto LABEL_7;
    }
  }

  v2 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(set) != v2)
  {
    goto LABEL_7;
  }

  result = *(set + 4);
  if (!result)
  {
    result = _SCNetworkSetCopyUserDefinedName(set);
    *(set + 4) = result;
  }

  return result;
}

CFArrayRef SCNetworkSetGetServiceOrder(SCNetworkSetRef set)
{
  if (__SCNetworkSetInitialize_initialized == -1)
  {
    if (!set)
    {
LABEL_12:
      _SCErrorSet(1002);
      return 0;
    }
  }

  else
  {
    SCNetworkSetAddService_cold_1();
    if (!set)
    {
      goto LABEL_12;
    }
  }

  v2 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(set) != v2)
  {
    goto LABEL_12;
  }

  result = SCPreferencesPathKeyCreateSetNetworkGlobalEntity(0, *(set + 2), @"IPv4");
  if (!result)
  {
    return result;
  }

  v4 = result;
  Value = SCPreferencesPathGetValue(*(set + 3), result);
  CFRelease(v4);
  TypeID = CFDictionaryGetTypeID();
  if (!Value)
  {
    return 0;
  }

  if (CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  v7 = CFDictionaryGetValue(Value, @"ServiceOrder");
  v8 = CFArrayGetTypeID();
  if (!v7)
  {
    return 0;
  }

  if (CFGetTypeID(v7) == v8)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

CFTypeID SCNetworkSetGetTypeID(void)
{
  if (__SCNetworkSetInitialize_initialized != -1)
  {
    SCNetworkSetAddService_cold_1();
  }

  return __kSCNetworkSetTypeID;
}

Boolean SCNetworkSetRemoveService(SCNetworkSetRef set, SCNetworkServiceRef service)
{
  v76 = *MEMORY[0x1E69E9840];
  if (__SCNetworkSetInitialize_initialized == -1)
  {
    if (!set)
    {
LABEL_26:
      _SCErrorSet(1002);
      LOBYTE(v38) = 0;
      return v38;
    }
  }

  else
  {
    SCNetworkSetAddService_cold_1();
    if (!set)
    {
      goto LABEL_26;
    }
  }

  v4 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(set) != v4)
  {
    goto LABEL_26;
  }

  TypeID = SCNetworkServiceGetTypeID();
  if (!service || CFGetTypeID(service) != TypeID || !*(service + 4))
  {
    goto LABEL_26;
  }

  if (!__SCNetworkSetExists(set))
  {
    v16 = __log_SCNetworkConfiguration();
    v17 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v16, v17))
    {
      v18 = _os_log_pack_size();
      v24 = &v65 - ((MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = __error();
      v26 = _os_log_pack_fill(v24, v18, *v25, &dword_1AD2AD000, "SCNetworkSetRemoveService() w/removed set\n  set = %@\n  service = %@");
      *v26 = 138412546;
      *(v26 + 4) = set;
      *(v26 + 12) = 2112;
      *(v26 + 14) = service;
      __SC_log_send(3, v16, v17, v24);
    }

    block = MEMORY[0x1E69E9820];
    v70 = 0x40000000;
    v71 = ___SC_crash_once_block_invoke_4;
    v72 = &__block_descriptor_tmp_16;
    v74 = 0;
    v75 = 0;
    v73 = "SCNetworkSetRemoveService() w/removed set";
    if (_SC_crash_once_once_4 == -1)
    {
      goto LABEL_26;
    }

LABEL_75:
    dispatch_once(&_SC_crash_once_once_4, &block);
    goto LABEL_26;
  }

  if (!__SCNetworkServiceExists(service))
  {
    v27 = __log_SCNetworkConfiguration();
    v28 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v27, v28))
    {
      v29 = _os_log_pack_size();
      v35 = &v65 - ((MEMORY[0x1EEE9AC00](v29, v30, v31, v32, v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
      v36 = __error();
      v37 = _os_log_pack_fill(v35, v29, *v36, &dword_1AD2AD000, "SCNetworkSetRemoveService() w/removed service\n  set = %@\n  service = %@");
      *v37 = 138412546;
      *(v37 + 4) = set;
      *(v37 + 12) = 2112;
      *(v37 + 14) = service;
      __SC_log_send(3, v27, v28, v35);
    }

    block = MEMORY[0x1E69E9820];
    v70 = 0x40000000;
    v71 = ___SC_crash_once_block_invoke_4;
    v72 = &__block_descriptor_tmp_16;
    v74 = 0;
    v75 = 0;
    v73 = "SCNetworkSetRemoveService() w/removed service";
    if (_SC_crash_once_once_4 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_75;
  }

  _serviceOrder_remove(set, service);
  SetNetworkServiceEntity = SCPreferencesPathKeyCreateSetNetworkServiceEntity(0, *(set + 2), *(service + 2), 0);
  if (SCPreferencesPathGetLink(*(set + 3), SetNetworkServiceEntity))
  {
    Interface = SCNetworkServiceGetInterface(service);
    if (Interface)
    {
      v8 = __SCNetworkInterfaceCopyDeepConfiguration(set, Interface);
      if (v8)
      {
        __SCNetworkInterfaceSetDeepConfiguration(set, Interface, 0, v9);
      }

      DisablePrivateRelayValue = __SCNetworkInterfaceGetDisablePrivateRelayValue(Interface);
      v11 = DisablePrivateRelayValue;
      if (DisablePrivateRelayValue)
      {
        CFRetain(DisablePrivateRelayValue);
        __SCNetworkInterfaceSetDisablePrivateRelayValue(Interface, 0);
      }

      DisableUntilNeededValue = __SCNetworkInterfaceGetDisableUntilNeededValue(Interface);
      v13 = DisableUntilNeededValue;
      if (DisableUntilNeededValue)
      {
        CFRetain(DisableUntilNeededValue);
        __SCNetworkInterfaceSetDisableUntilNeededValue(Interface, 0);
      }

      EnableLowDataModeValue = __SCNetworkInterfaceGetEnableLowDataModeValue(Interface);
      v15 = EnableLowDataModeValue;
      if (EnableLowDataModeValue)
      {
        CFRetain(EnableLowDataModeValue);
        __SCNetworkInterfaceSetEnableLowDataModeValue(Interface, 0);
      }
    }

    else
    {
      v8 = 0;
      v11 = 0;
      v13 = 0;
      v15 = 0;
    }

    v38 = SCPreferencesPathRemoveValue(*(set + 3), SetNetworkServiceEntity);
    if (v38)
    {
      v40 = 0;
    }

    else
    {
      v40 = SCError();
    }

    if (v8 || v11 || v13 || v15)
    {
      v67 = v40;
      v68 = v11;
      v41 = SCNetworkSetCopyServices(set);
      if (v41)
      {
        v43 = v41;
        Count = CFArrayGetCount(v41);
        if (Count < 1)
        {
          v49 = 1;
        }

        else
        {
          v45 = Count;
          v66 = v8;
          v46 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v43, v46);
            v48 = SCNetworkServiceGetInterface(ValueAtIndex);
            if (v48)
            {
              if (CFEqual(Interface, v48))
              {
                break;
              }
            }

            if (v45 == ++v46)
            {
              v49 = 1;
              goto LABEL_47;
            }
          }

          v49 = 0;
LABEL_47:
          v8 = v66;
        }

        CFRelease(v43);
      }

      else
      {
        v49 = 1;
      }

      if (v8)
      {
        if (v49)
        {
          v50 = 0;
        }

        else
        {
          v50 = v8;
        }

        __SCNetworkInterfaceSetDeepConfiguration(set, Interface, v50, v42);
        CFRelease(v8);
      }

      if (v68)
      {
        if (v49)
        {
          v51 = 0;
        }

        else
        {
          v51 = v68;
        }

        __SCNetworkInterfaceSetDisablePrivateRelayValue(Interface, v51);
        CFRelease(v68);
      }

      if (v13)
      {
        if (v49)
        {
          v52 = 0;
        }

        else
        {
          v52 = v13;
        }

        __SCNetworkInterfaceSetDisableUntilNeededValue(Interface, v52);
        CFRelease(v13);
      }

      v40 = v67;
      if (v15)
      {
        if (v49)
        {
          v53 = 0;
        }

        else
        {
          v53 = v15;
        }

        __SCNetworkInterfaceSetEnableLowDataModeValue(Interface, v53);
        CFRelease(v15);
      }
    }

    CFRelease(SetNetworkServiceEntity);
    if (!v38)
    {
      _SCErrorSet(v40);
      return v38;
    }
  }

  else
  {
    CFRelease(SetNetworkServiceEntity);
    LOBYTE(v38) = 1;
  }

  v54 = __log_SCNetworkConfiguration();
  v55 = _SC_syslog_os_log_mapping(7);
  if (__SC_log_enabled(7, v54, v55))
  {
    v56 = _os_log_pack_size();
    v62 = &v65 - ((MEMORY[0x1EEE9AC00](v56, v57, v58, v59, v60, v61) + 15) & 0xFFFFFFFFFFFFFFF0);
    v63 = __error();
    v64 = _os_log_pack_fill(v62, v56, *v63, &dword_1AD2AD000, "SCNetworkSetRemoveService(): %@, %@");
    *v64 = 138412546;
    *(v64 + 4) = set;
    *(v64 + 12) = 2112;
    *(v64 + 14) = service;
    __SC_log_send(7, v54, v55, v62);
  }

  return v38;
}

void _serviceOrder_remove(const __SCNetworkSet *a1, const __SCNetworkService *a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  ServiceOrder = SCNetworkSetGetServiceOrder(a1);
  if (ServiceOrder)
  {
    MutableCopy = CFArrayCreateMutableCopy(0, 0, ServiceOrder);
    ServiceID = SCNetworkServiceGetServiceID(a2);
    v7 = _serviceOrder_clear(MutableCopy, ServiceID);
    if (v7 >= 2)
    {
      v8 = v7;
      v9 = __log_SCNetworkConfiguration();
      v10 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v9, v10))
      {
        v11 = _os_log_pack_size();
        v17 = v20 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
        v18 = __error();
        v19 = _os_log_pack_fill(v17, v11, *v18, &dword_1AD2AD000, "SCNetworkSetRemoveService() w/multiple instances of service in ServiceOrder\n  service = %@\n  count = %ld");
        *v19 = 138412546;
        *(v19 + 4) = a2;
        *(v19 + 12) = 2048;
        *(v19 + 14) = v8;
        __SC_log_send(3, v9, v10, v17);
      }
    }

    SCNetworkSetSetServiceOrder(a1, MutableCopy);
    CFRelease(MutableCopy);
  }
}

Boolean SCNetworkSetSetServiceOrder(SCNetworkSetRef set, CFArrayRef newOrder)
{
  block[7] = *MEMORY[0x1E69E9840];
  if (__SCNetworkSetInitialize_initialized == -1)
  {
    if (!set)
    {
      goto LABEL_19;
    }
  }

  else
  {
    SCNetworkSetAddService_cold_1();
    if (!set)
    {
      goto LABEL_19;
    }
  }

  v4 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(set) != v4)
  {
    goto LABEL_19;
  }

  if (!__SCNetworkSetExists(set))
  {
    v15 = __log_SCNetworkConfiguration();
    v16 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v15, v16))
    {
      v17 = _os_log_pack_size();
      v23 = &v52 - ((MEMORY[0x1EEE9AC00](v17, v18, v19, v20, v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = __error();
      v25 = _os_log_pack_fill(v23, v17, *v24, &dword_1AD2AD000, "SCNetworkSetSetServiceOrder() w/removed set\n  set = %@");
      *v25 = 138412290;
      *(v25 + 4) = set;
      __SC_log_send(3, v15, v16, v23);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_4;
    block[3] = &__block_descriptor_tmp_16;
    block[5] = 0;
    block[6] = 0;
    block[4] = "SCNetworkSetSetServiceOrder() w/removed set";
    if (_SC_crash_once_once_4 != -1)
    {
      dispatch_once(&_SC_crash_once_once_4, block);
    }

    goto LABEL_19;
  }

  TypeID = CFArrayGetTypeID();
  if (!newOrder || CFGetTypeID(newOrder) != TypeID)
  {
LABEL_19:
    _SCErrorSet(1002);
    return 0;
  }

  Count = CFArrayGetCount(newOrder);
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(newOrder, v8);
      v10 = CFStringGetTypeID();
      if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != v10)
      {
        goto LABEL_19;
      }
    }

    while (v7 != ++v8);
  }

  SetNetworkGlobalEntity = SCPreferencesPathKeyCreateSetNetworkGlobalEntity(0, *(set + 2), @"IPv4");
  if (!SetNetworkGlobalEntity)
  {
    return 0;
  }

  v12 = SetNetworkGlobalEntity;
  Value = SCPreferencesPathGetValue(*(set + 3), SetNetworkGlobalEntity);
  v53 = v12;
  if (Value)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v52 = MutableCopy;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v29 = CFArrayGetCount(newOrder);
  if (v29 >= 1)
  {
    v31 = v29;
    v32 = 0;
    *&v30 = 138412290;
    v54 = v30;
    do
    {
      v33 = CFArrayGetCount(Mutable);
      v34 = CFArrayGetValueAtIndex(newOrder, v32);
      if (v33 && (v57.location = 0, v57.length = v33, CFArrayContainsValue(Mutable, v57, v34)))
      {
        v35 = __log_SCNetworkConfiguration();
        v36 = _SC_syslog_os_log_mapping(3);
        if (__SC_log_enabled(3, v35, v36))
        {
          v37 = _os_log_pack_size();
          v55 = &v52;
          v43 = &v52 - ((MEMORY[0x1EEE9AC00](v37, v38, v39, v40, v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
          v44 = __error();
          v45 = _os_log_pack_fill(v43, v37, *v44, &dword_1AD2AD000, "SCNetworkSetSetServiceOrder() found duplicate serviceID: removed %@\n");
          *v45 = v54;
          *(v45 + 4) = v34;
          __SC_log_send(3, v35, v36, v43);
        }
      }

      else
      {
        CFArrayAppendValue(Mutable, v34);
      }

      ++v32;
    }

    while (v31 != v32);
  }

  v46 = CFArrayGetCount(Mutable);
  v47 = v52;
  if (v46 < 1)
  {
    CFDictionaryRemoveValue(v52, @"ServiceOrder");
  }

  else
  {
    CFDictionarySetValue(v52, @"ServiceOrder", Mutable);
  }

  v48 = v53;
  CFRelease(Mutable);
  v49 = CFDictionaryGetCount(v47);
  v50 = *(set + 3);
  if (v49 < 1)
  {
    v51 = SCPreferencesPathRemoveValue(v50, v48);
  }

  else
  {
    v51 = SCPreferencesPathSetValue(v50, v48, v47);
  }

  v26 = v51;
  CFRelease(v47);
  CFRelease(v48);
  return v26;
}

CFComparisonResult _SCNetworkSetCompare(const __SCNetworkSet *a1, const __SCNetworkSet *a2)
{
  Name = SCNetworkSetGetName(a1);
  v5 = SCNetworkSetGetName(a2);
  v6 = v5;
  if (Name)
  {
    if (!v5)
    {
      return -1;
    }

    v7 = Name;
  }

  else
  {
    if (v5)
    {
      return 1;
    }

    SetID = SCNetworkSetGetSetID(a1);
    v6 = SCNetworkSetGetSetID(a2);
    v7 = SetID;
  }

  return CFStringCompare(v7, v6, 0);
}

uint64_t SCNetworkSetEstablishDefaultConfiguration(uint64_t *cf)
{
  if (__SCNetworkSetInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_7:
      _SCErrorSet(1002);
      return 0;
    }
  }

  else
  {
    SCNetworkSetAddService_cold_1();
    if (!cf)
    {
      goto LABEL_7;
    }
  }

  v2 = __kSCNetworkSetTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_7;
  }

  v3 = _SCNetworkInterfaceCopyAllWithPreferences(cf[3]);
  if (v3)
  {
    v4 = v3;
    v5 = __SCNetworkSetEstablishDefaultConfigurationForInterfaces(cf, v3, 1);
    CFRelease(v4);
    return v5;
  }

  return 0;
}

uint64_t __SCNetworkSetEstablishDefaultConfigurationForInterfaces(uint64_t a1, const __CFArray *a2, int a3)
{
  v5 = a1;
  v98 = *MEMORY[0x1E69E9840];
  v6 = SCNetworkSetCopyAll(*(a1 + 24));
  if (v6)
  {
    v7 = v6;
    if (CFArrayGetCount(v6) != 1 || (v8 = SCNetworkSetCopyServices(v5)) != 0 && (v9 = v8, Count = CFArrayGetCount(v8), CFRelease(v9), Count) || (ValueAtIndex = CFArrayGetValueAtIndex(v7, 0), !CFEqual(v5, ValueAtIndex)))
    {
      v12 = 0;
    }

    else
    {
      v12 = SCNetworkServiceCopyAll(*(v5 + 24));
    }

    CFRelease(v7);
  }

  else
  {
    v12 = 0;
  }

  v13 = SCNetworkSetCopyServices(v5);
  v14 = v13;
  v94 = v12;
  if (v13 && *(v5 + 40))
  {
    CFRelease(v13);
    v14 = SCNetworkServiceCopyAll(*(v5 + 24));
  }

  v15 = *(v5 + 24);
  Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
  v17 = SCBridgeInterfaceCopyAll(v15);
  if (v17)
  {
    v18 = v17;
    __SCBridgeInterfaceListCollectMembers(v17, Mutable, 0);
    CFRelease(v18);
  }

  v96 = 0;
  v19 = 1;
  v97 = v14;
  if (!a2 || !v14)
  {
    goto LABEL_53;
  }

  v20 = CFArrayGetCount(a2);
  if (v20 < 1)
  {
    v80 = 0;
    v81 = v97;
    goto LABEL_56;
  }

  v22 = v20;
  v23 = 0;
  v96 = 0;
  *&v21 = 138412546;
  v91 = v21;
  v95 = v5;
  v93 = a3;
  v92 = a2;
  do
  {
    v24 = CFArrayGetValueAtIndex(a2, v23);
    v25 = v24;
    if (a3)
    {
      ConfigurationAction = _SCNetworkInterfaceGetConfigurationAction(v24);
      TypeID = CFStringGetTypeID();
      if (ConfigurationAction)
      {
        if (CFGetTypeID(ConfigurationAction) == TypeID && CFEqual(ConfigurationAction, @"None"))
        {
          goto LABEL_52;
        }
      }
    }

    if (CFSetContainsValue(Mutable, v25) || __SCNetworkServiceExistsForInterface(v97, v25))
    {
      goto LABEL_52;
    }

    v28 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(v28, v25);
    if (!v19 || CFArrayGetCount(v28) < 1)
    {
      goto LABEL_51;
    }

    while (1)
    {
      v29 = CFArrayGetValueAtIndex(v28, 0);
      SupportedProtocolTypes = SCNetworkInterfaceGetSupportedProtocolTypes(v29);
      if (!SupportedProtocolTypes || CFArrayGetCount(SupportedProtocolTypes) < 1)
      {
        SupportedInterfaceTypes = SCNetworkInterfaceGetSupportedInterfaceTypes(v29);
        if (SupportedInterfaceTypes)
        {
          v35 = SupportedInterfaceTypes;
          v36 = CFArrayGetCount(SupportedInterfaceTypes);
          if (v36 >= 1)
          {
            v37 = v36;
            for (i = 0; i != v37; ++i)
            {
              v39 = CFArrayGetValueAtIndex(v35, i);
              v40 = SCNetworkInterfaceCreateWithInterface(v29, v39);
              if (v40)
              {
                v41 = v40;
                CFArrayAppendValue(v28, v40);
                CFRelease(v41);
              }
            }

            v5 = v95;
          }
        }

        goto LABEL_40;
      }

      v31 = SCNetworkServiceCreate(*(v5 + 24), v29);
      if (!v31)
      {
        break;
      }

      v32 = v31;
      if (!SCNetworkServiceEstablishDefaultConfiguration(v31))
      {
        v56 = __log_SCNetworkConfiguration();
        v57 = _SC_syslog_os_log_mapping(3);
        if (__SC_log_enabled(3, v56, v57))
        {
          v58 = v56;
          v59 = _os_log_pack_size();
          v90 = &v89;
          v65 = &v89 - ((MEMORY[0x1EEE9AC00](v59, v60, v61, v62, v63, v64) + 15) & 0xFFFFFFFFFFFFFFF0);
          v66 = *__error();
          v67 = _os_log_pack_fill(v65, v59, v66, &dword_1AD2AD000, "could not estabish default configuration for %@: %s");
          goto LABEL_48;
        }

LABEL_49:
        SCNetworkServiceRemove(v32);
        CFRelease(v32);
        goto LABEL_50;
      }

      v33 = SCNetworkSetAddService(v5, v32);
      if (!v33)
      {
        v68 = __log_SCNetworkConfiguration();
        v57 = _SC_syslog_os_log_mapping(3);
        if (__SC_log_enabled(3, v68, v57))
        {
          v58 = v68;
          v69 = _os_log_pack_size();
          v90 = &v89;
          v65 = &v89 - ((MEMORY[0x1EEE9AC00](v69, v70, v71, v72, v73, v74) + 15) & 0xFFFFFFFFFFFFFFF0);
          v75 = *__error();
          v67 = _os_log_pack_fill(v65, v69, v75, &dword_1AD2AD000, "could not add service for %@: %s");
LABEL_48:
          v76 = v67;
          LocalizedDisplayName = SCNetworkInterfaceGetLocalizedDisplayName(v29);
          v78 = SCError();
          v79 = SCErrorString(v78);
          *v76 = v91;
          *(v76 + 4) = LocalizedDisplayName;
          *(v76 + 12) = 2080;
          *(v76 + 14) = v79;
          __SC_log_send(3, v58, v57, v65);
          v5 = v95;
        }

        goto LABEL_49;
      }

      v19 = v33;
      CFRelease(v32);
      v96 = 1;
LABEL_40:
      CFArrayRemoveValueAtIndex(v28, 0);
      if (CFArrayGetCount(v28) <= 0)
      {
        goto LABEL_51;
      }
    }

    v42 = __log_SCNetworkConfiguration();
    v43 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v42, v43))
    {
      v44 = _os_log_pack_size();
      v50 = &v89 - ((MEMORY[0x1EEE9AC00](v44, v45, v46, v47, v48, v49) + 15) & 0xFFFFFFFFFFFFFFF0);
      v51 = __error();
      v52 = _os_log_pack_fill(v50, v44, *v51, &dword_1AD2AD000, "could not create service for %@: %s");
      v53 = SCNetworkInterfaceGetLocalizedDisplayName(v29);
      v54 = SCError();
      v55 = SCErrorString(v54);
      *v52 = v91;
      *(v52 + 4) = v53;
      *(v52 + 12) = 2080;
      *(v52 + 14) = v55;
      __SC_log_send(3, v42, v43, v50);
      v5 = v95;
    }

LABEL_50:
    CFArrayRemoveValueAtIndex(v28, 0);
    v19 = 0;
LABEL_51:
    CFRelease(v28);
    a3 = v93;
    a2 = v92;
LABEL_52:
    ++v23;
  }

  while (v23 != v22);
LABEL_53:
  v80 = v96;
  v81 = v97;
  if (v97)
  {
LABEL_56:
    CFRelease(v81);
  }

  CFRelease(Mutable);
  v82 = v94;
  if (v94)
  {
    if (v19)
    {
      if (v80)
      {
        v83 = CFArrayGetCount(v94);
        if (v83 >= 1)
        {
          v84 = v83;
          for (j = 0; j != v84; ++j)
          {
            v86 = CFArrayGetValueAtIndex(v82, j);
            if (_SCNetworkServiceIsVPN(v86))
            {
              v19 = SCNetworkSetAddService(v5, v86);
              if (!v19)
              {
                break;
              }
            }
          }
        }
      }
    }

    CFRelease(v82);
  }

  if (v19)
  {
    if (v80)
    {
      if (!SCPreferencesGetValue(*(v5 + 24), @"Model"))
      {
        v87 = _SC_hw_model(0);
        SCPreferencesSetValue(*(v5 + 24), @"Model", v87);
      }
    }

    else
    {
      _SCErrorSet(0);
    }
  }

  return v80;
}