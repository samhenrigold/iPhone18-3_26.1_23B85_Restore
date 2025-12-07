CFDictionaryRef SCPreferencesPathGetValue(SCPreferencesRef prefs, CFStringRef path)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!prefs)
  {
    _SCErrorSet(3001);
    return 0;
  }

  value = 0;
  v7[0] = 0;
  if (!getPath(prefs, path, v7))
  {
    return 0;
  }

  v3 = v7[0];
  TypeID = CFDictionaryGetTypeID();
  if (v3 && CFGetTypeID(v3) == TypeID && CFDictionaryGetValueIfPresent(v3, @"__LINK__", &value))
  {
    if (getPath(prefs, value, v7))
    {
      return v7[0];
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

CFStringRef SCPreferencesPathGetLink(SCPreferencesRef prefs, CFStringRef path)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (!prefs)
  {
    _SCErrorSet(3001);
    return 0;
  }

  value = 0;
  v6[0] = 0;
  if (!getPath(prefs, path, v6))
  {
    return 0;
  }

  v2 = v6[0];
  TypeID = CFDictionaryGetTypeID();
  if (!v2 || CFGetTypeID(v2) != TypeID)
  {
    return 0;
  }

  if (CFDictionaryGetValueIfPresent(v2, @"__LINK__", &value))
  {
    return value;
  }

  else
  {
    return 0;
  }
}

Boolean SCPreferencesPathSetValue(SCPreferencesRef prefs, CFStringRef path, CFDictionaryRef value)
{
  if (!prefs)
  {
    v13 = 3001;
LABEL_20:
    _SCErrorSet(v13);
    return 0;
  }

  if (CFEqual(path, @"/CurrentSet"))
  {
    TypeID = CFStringGetTypeID();
    if (!value)
    {
      CFDictionaryGetTypeID();
LABEL_19:
      SCPrint(1, *MEMORY[0x1E69E9848], @"SCPreferencesPathSetValue(, %@,) called with non-dictionary value\n", v15, v16, v17, v18, v19, path);
      v13 = 1002;
      goto LABEL_20;
    }

    if (CFGetTypeID(value) == TypeID)
    {
      if ((SCPreferencesPathSetValue_warned & 1) == 0)
      {
        SCPrint(1, *MEMORY[0x1E69E9848], @"SCPreferencesPathSetValue(, %@,) called with non-dictionary value\n", v7, v8, v9, v10, v11, path);
        SCPreferencesPathSetValue_warned = 1;
      }

      return SCPreferencesSetValue(prefs, @"CurrentSet", value);
    }

    v14 = CFDictionaryGetTypeID();
  }

  else
  {
    v14 = CFDictionaryGetTypeID();
    if (!value)
    {
      goto LABEL_19;
    }
  }

  if (CFGetTypeID(value) != v14)
  {
    goto LABEL_19;
  }

  return setPath(prefs, path, value);
}

Boolean SCPreferencesPathSetLink(SCPreferencesRef prefs, CFStringRef path, CFStringRef link)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!prefs)
  {
    v10 = 3001;
    goto LABEL_8;
  }

  TypeID = CFStringGetTypeID();
  if (!link || CFGetTypeID(link) != TypeID)
  {
    v10 = 1002;
LABEL_8:
    _SCErrorSet(v10);
    return 0;
  }

  if (getPath(prefs, link, v11))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"__LINK__", link);
    v8 = setPath(prefs, path, Mutable);
    CFRelease(Mutable);
    return v8;
  }

  return 0;
}

Boolean SCPreferencesPathRemoveValue(SCPreferencesRef prefs, CFStringRef path)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (!prefs)
  {
    v8 = 3001;
LABEL_7:
    _SCErrorSet(v8);
    return 0;
  }

  if (getPath(prefs, path, v9))
  {
    v4 = normalizePath(path);
    if (v4)
    {
      v5 = v4;
      v6 = setPath(prefs, path, 0);
      CFRelease(v5);
      return v6;
    }

    v8 = 1004;
    goto LABEL_7;
  }

  return 0;
}

const __CFArray *normalizePath(const __CFString *a1)
{
  TypeID = CFStringGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    _SCErrorSet(1002);
    return 0;
  }

  if (!CFStringHasPrefix(a1, @"/"))
  {
    return 0;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, a1, @"/");
  MutableCopy = CFArrayCreateMutableCopy(0, 0, ArrayBySeparatingStrings);
  CFRelease(ArrayBySeparatingStrings);
  Count = CFArrayGetCount(MutableCopy);
  if (Count >= 1)
  {
    v6 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v6 - 2);
      if (!CFStringGetLength(ValueAtIndex))
      {
        CFArrayRemoveValueAtIndex(MutableCopy, v6 - 2);
      }

      --v6;
    }

    while (v6 > 1);
  }

  return MutableCopy;
}

Boolean SCPreferencesApplyChanges(SCPreferencesRef prefs)
{
  v40[1] = *MEMORY[0x1E69E9840];
  if (!prefs)
  {
    _SCErrorSet(3001);
LABEL_10:
    LOBYTE(v5) = 0;
    return v5;
  }

  v2 = *(prefs + 112);
  if (!*(prefs + 112) && !SCPreferencesLock(prefs, 1u))
  {
    v28 = __log_SCPreferences();
    v29 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v28, v29))
    {
      v30 = _os_log_pack_size();
      v36 = v40 - ((MEMORY[0x1EEE9AC00](v30, v31, v32, v33, v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
      v37 = __error();
      *_os_log_pack_fill(v36, v30, *v37, &dword_1AD2AD000, "SCPreferencesLock() failed") = 0;
      __SC_log_send(6, v28, v29, v36);
    }

    goto LABEL_10;
  }

  if (!*(prefs + 39))
  {
    v6 = __log_SCPreferences();
    v7 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v6, v7))
    {
      v8 = _os_log_pack_size();
      v14 = v40 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = __error();
      v16 = _os_log_pack_fill(v14, v8, *v15, &dword_1AD2AD000, "SCPreferences() apply: %s", v40[0]);
      v17 = *(prefs + 13);
      *v16 = 136315138;
      *(v16 + 4) = v17;
      __SC_log_send(6, v6, v7, v14);
    }

    v5 = SCDynamicStoreNotifyValue(0, *(prefs + 24));
    if (v5)
    {
      goto LABEL_23;
    }

    v18 = __log_SCPreferences();
    v19 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v18, v19))
    {
      v20 = _os_log_pack_size();
      v26 = v40 - ((MEMORY[0x1EEE9AC00](v20, v21, v22, v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = __error();
      *_os_log_pack_fill(v26, v20, *v27, &dword_1AD2AD000, "SCDynamicStoreNotifyValue() failed") = 0;
      __SC_log_send(6, v18, v19, v26);
    }

    v4 = 1001;
    goto LABEL_22;
  }

  HIDWORD(v40[0]) = 0;
  v3 = *(prefs + 80);
  if (!v3)
  {
    goto LABEL_21;
  }

  if (!_SCHelperExec(v3, 105, 0, v40 + 1, 0))
  {
    if (*(prefs + 80))
    {
      _SCHelperClose(prefs + 80);
    }

LABEL_21:
    v4 = 1003;
    HIDWORD(v40[0]) = 1003;
    goto LABEL_22;
  }

  v4 = HIDWORD(v40[0]);
  if (!HIDWORD(v40[0]))
  {
    LOBYTE(v5) = 1;
    goto LABEL_23;
  }

LABEL_22:
  _SCErrorSet(v4);
  LOBYTE(v5) = 0;
LABEL_23:
  if (!v2)
  {
    v38 = SCError();
    SCPreferencesUnlock(prefs);
    _SCErrorSet(v38);
  }

  return v5;
}

const void *_SCPreferencesCopyComputerName(const __SCPreferences *a1, _DWORD *a2)
{
  v4 = a1;
  if (!a1)
  {
    v4 = SCPreferencesCreate(0, @"_SCPreferencesCopyComputerName", 0);
    if (!v4)
    {
      return 0;
    }
  }

  v5 = CFStringCreateWithFormat(0, 0, @"/%@/%@", @"System", @"System");
  Value = SCPreferencesPathGetValue(v4, v5);
  CFRelease(v5);
  if (Value)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(Value) != TypeID)
    {
      goto LABEL_8;
    }

    v8 = CFDictionaryGetValue(Value, @"ComputerName");
    v9 = CFStringGetTypeID();
    if (!v8)
    {
      goto LABEL_9;
    }

    if (CFGetTypeID(v8) == v9)
    {
      CFRetain(v8);
    }

    else
    {
LABEL_8:
      v8 = 0;
    }

LABEL_9:
    if (a2)
    {
      *a2 = getNameEncoding(Value);
    }

    if (a1)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  v8 = 0;
  if (!a1)
  {
LABEL_18:
    CFRelease(v4);
  }

LABEL_12:
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1004;
  }

  _SCErrorSet(v10);
  return v8;
}

void report_missing_entitlement(const char *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (_SC_isAppleInternal_once_2 != -1)
  {
    report_missing_entitlement_cold_1();
  }

  if (_SC_isAppleInternal_isInternal_2)
  {
    v2 = get_contact_string_contact;
    if (!get_contact_string_contact)
    {
      v3 = SCPreferencesCreate(0, @"UserDefinedDeviceNameContact", @"/AppleInternal/Library/SystemConfiguration/PrivateStrings.plist");
      if (v3)
      {
        v4 = v3;
        Value = SCPreferencesGetValue(v3, @"UserDefinedDeviceNameContact");
        TypeID = CFStringGetTypeID();
        if (Value && CFGetTypeID(Value) == TypeID)
        {
          CFRetain(Value);
          CFRelease(v4);
          get_contact_string_contact = _SC_cfstring_to_cstring(Value, 0, 0, 0x8000100u);
          CFRelease(Value);
          v2 = get_contact_string_contact;
          goto LABEL_11;
        }

        CFRelease(v4);
      }

      v2 = 0;
    }

LABEL_11:
    if (!v2)
    {
      v2 = "privacy";
    }

    snprintf(__str, 0x100uLL, "%s() requires an entitlement, please contact %s", a1, v2);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SC_crash_once_block_invoke_1;
    block[3] = &__block_descriptor_tmp_9;
    block[5] = 0;
    block[6] = 0;
    block[4] = __str;
    if (_SC_crash_once_once_1 != -1)
    {
      dispatch_once(&_SC_crash_once_once_1, block);
    }
  }
}

Boolean SCPreferencesSetComputerName(SCPreferencesRef prefs, CFStringRef name, CFStringEncoding nameEncoding)
{
  v35 = *MEMORY[0x1E69E9840];
  valuePtr = nameEncoding;
  if (!name)
  {
    v6 = 0;
LABEL_7:
    v7 = CFStringCreateWithFormat(0, 0, @"/%@/%@", @"System", @"System");
    Value = SCPreferencesPathGetValue(prefs, v7);
    if (Value)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v11 = MutableCopy;
    if (v6 && CFStringGetLength(v6) >= 1)
    {
      CFDictionarySetValue(v11, @"ComputerName", v6);
      v12 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      CFDictionarySetValue(v11, @"ComputerNameEncoding", v12);
      CFRelease(v12);
      CFDictionaryRemoveValue(v11, @"ComputerNameRegion");
      if (!valuePtr)
      {
        *&v33[12] = 0;
        _CFStringGetUserDefaultEncoding();
      }
    }

    else
    {
      CFDictionaryRemoveValue(v11, @"ComputerName");
      CFDictionaryRemoveValue(v11, @"ComputerNameEncoding");
      CFDictionaryRemoveValue(v11, @"ComputerNameRegion");
    }

    v10 = __SCNetworkConfigurationSetValue(prefs, v7, v11, 0);
    if (!v10 || !__SCPreferencesUsingDefaultPrefs(prefs))
    {
      goto LABEL_24;
    }

    v13 = __log_SCPreferences();
    v14 = _SC_syslog_os_log_mapping(5);
    v15 = __SC_log_enabled(5, v13, v14);
    if (v6)
    {
      if (v15)
      {
        v16 = _os_log_pack_size();
        v22 = &v33[-((MEMORY[0x1EEE9AC00](v16, v17, v18, v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0)];
        v23 = __error();
        v24 = _os_log_pack_fill(v22, v16, *v23, &dword_1AD2AD000, "attempting to set the computer name to %@");
        *v24 = 138412290;
        *(v24 + 4) = v6;
LABEL_23:
        __SC_log_send(5, v13, v14, v22);
      }
    }

    else if (v15)
    {
      v25 = _os_log_pack_size();
      v22 = &v33[-((MEMORY[0x1EEE9AC00](v25, v26, v27, v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v31 = __error();
      *_os_log_pack_fill(v22, v25, *v31, &dword_1AD2AD000, "attempting to reset the computer name") = 0;
      goto LABEL_23;
    }

LABEL_24:
    CFRelease(v7);
    CFRelease(v11);
    return v10;
  }

  TypeID = CFStringGetTypeID();
  if (CFGetTypeID(name) == TypeID)
  {
    if (CFStringGetLength(name))
    {
      v6 = name;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_7;
  }

  _SCErrorSet(1002);
  LOBYTE(v10) = 0;
  return v10;
}

const void *SCPreferencesGetHostName(const __SCPreferences *a1)
{
  v2 = CFStringCreateWithFormat(0, 0, @"/%@/%@", @"System", @"System");
  Value = SCPreferencesPathGetValue(a1, v2);
  CFRelease(v2);
  TypeID = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID || (v5 = CFDictionaryGetValue(Value, @"HostName"), v6 = CFStringGetTypeID(), !v5) || CFGetTypeID(v5) != v6)
  {
    _SCErrorSet(1004);
    return 0;
  }

  return v5;
}

uint64_t SCPreferencesSetHostName(const __SCPreferences *a1, const __CFString *a2)
{
  v31[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v5 = 0;
LABEL_7:
    v6 = CFStringCreateWithFormat(0, 0, @"/%@/%@", @"System", @"System");
    Value = SCPreferencesPathGetValue(a1, v6);
    if (Value)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v10 = MutableCopy;
    if (v5)
    {
      CFDictionarySetValue(MutableCopy, @"HostName", v5);
    }

    else
    {
      CFDictionaryRemoveValue(MutableCopy, @"HostName");
    }

    v9 = __SCNetworkConfigurationSetValue(a1, v6, v10, 0);
    if (!v9 || !__SCPreferencesUsingDefaultPrefs(a1))
    {
      goto LABEL_22;
    }

    v11 = __log_SCPreferences();
    v12 = _SC_syslog_os_log_mapping(5);
    v13 = __SC_log_enabled(5, v11, v12);
    if (v5)
    {
      if (v13)
      {
        v14 = _os_log_pack_size();
        v20 = v31 - ((MEMORY[0x1EEE9AC00](v14, v15, v16, v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
        v21 = __error();
        v22 = _os_log_pack_fill(v20, v14, *v21, &dword_1AD2AD000, "attempting to set the host name to %@");
        *v22 = 138412290;
        *(v22 + 4) = v5;
LABEL_21:
        __SC_log_send(5, v11, v12, v20);
      }
    }

    else if (v13)
    {
      v23 = _os_log_pack_size();
      v20 = v31 - ((MEMORY[0x1EEE9AC00](v23, v24, v25, v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
      v29 = __error();
      *_os_log_pack_fill(v20, v23, *v29, &dword_1AD2AD000, "attempting to reset the host name") = 0;
      goto LABEL_21;
    }

LABEL_22:
    CFRelease(v6);
    CFRelease(v10);
    return v9;
  }

  TypeID = CFStringGetTypeID();
  if (CFGetTypeID(a2) == TypeID)
  {
    if (CFStringGetLength(a2))
    {
      v5 = a2;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_7;
  }

  _SCErrorSet(1002);
  return 0;
}

const void *_SCPreferencesCopyLocalHostName(const __SCPreferences *a1)
{
  v2 = a1;
  if (!a1)
  {
    v2 = SCPreferencesCreate(0, @"_SCPreferencesCopyLocalHostName", 0);
    if (!v2)
    {
      return 0;
    }
  }

  v3 = CFStringCreateWithFormat(0, 0, @"/%@/%@/%@", @"System", @"Network", @"HostNames");
  Value = SCPreferencesPathGetValue(v2, v3);
  CFRelease(v3);
  if (Value)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(Value) != TypeID)
    {
      goto LABEL_8;
    }

    Value = CFDictionaryGetValue(Value, @"LocalHostName");
    v6 = CFStringGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == v6)
      {
        CFRetain(Value);
        goto LABEL_9;
      }

LABEL_8:
      Value = 0;
    }
  }

LABEL_9:
  if (!a1)
  {
    CFRelease(v2);
  }

  if (Value)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1004;
  }

  _SCErrorSet(v7);
  return Value;
}

Boolean SCPreferencesSetLocalHostName(SCPreferencesRef prefs, CFStringRef name)
{
  v2 = name;
  v32[1] = *MEMORY[0x1E69E9840];
  if (!name)
  {
    goto LABEL_8;
  }

  TypeID = CFStringGetTypeID();
  if (CFGetTypeID(v2) == TypeID)
  {
    Length = CFStringGetLength(v2);
    if (Length < 1)
    {
      v2 = 0;
    }

    else
    {
      v6 = Length;
      if (!_SC_CFStringIsValidDNSName(v2))
      {
        goto LABEL_6;
      }

      v33.location = 0;
      v33.length = v6;
      if (CFStringFindWithOptions(v2, @".", v33, 0, 0))
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    v8 = CFStringCreateWithFormat(0, 0, @"/%@/%@/%@", @"System", @"Network", @"HostNames");
    Value = SCPreferencesPathGetValue(prefs, v8);
    if (Value)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v11 = MutableCopy;
    if (v2)
    {
      CFDictionarySetValue(MutableCopy, @"LocalHostName", v2);
    }

    else
    {
      CFDictionaryRemoveValue(MutableCopy, @"LocalHostName");
    }

    v7 = __SCNetworkConfigurationSetValue(prefs, v8, v11, 0);
    if (!v7 || !__SCPreferencesUsingDefaultPrefs(prefs))
    {
      goto LABEL_22;
    }

    v12 = __log_SCPreferences();
    v13 = _SC_syslog_os_log_mapping(5);
    v14 = __SC_log_enabled(5, v12, v13);
    if (v2)
    {
      if (v14)
      {
        v15 = _os_log_pack_size();
        v21 = v32 - ((MEMORY[0x1EEE9AC00](v15, v16, v17, v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
        v22 = __error();
        v23 = _os_log_pack_fill(v21, v15, *v22, &dword_1AD2AD000, "attempting to set the local host name to %@");
        *v23 = 138412290;
        *(v23 + 4) = v2;
LABEL_21:
        __SC_log_send(5, v12, v13, v21);
      }
    }

    else if (v14)
    {
      v24 = _os_log_pack_size();
      v21 = v32 - ((MEMORY[0x1EEE9AC00](v24, v25, v26, v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = __error();
      *_os_log_pack_fill(v21, v24, *v30, &dword_1AD2AD000, "attempting to reset the local host name") = 0;
      goto LABEL_21;
    }

LABEL_22:
    CFRelease(v8);
    CFRelease(v11);
    return v7;
  }

LABEL_6:
  _SCErrorSet(1002);
  LOBYTE(v7) = 0;
  return v7;
}

CFStringRef SCDynamicStoreKeyCreateLocation(CFAllocatorRef allocator)
{

  return CFRetain(@"Setup:");
}

CFTypeID SCNetworkConnectionGetTypeID(void)
{
  if (__SCNetworkConnectionInitialize_initialized != -1)
  {
    SCNetworkConnectionGetTypeID_cold_1();
  }

  return __kSCNetworkConnectionTypeID;
}

CFMutableArrayRef SCNetworkConnectionCopyAvailableServices(const __SCNetworkSet *a1)
{
  if (a1)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v3 = a1;
    goto LABEL_3;
  }

  v12 = SCPreferencesCreate(0, @"SCNetworkConnectionCopyAvailableServices", 0);
  if (v12)
  {
    v13 = v12;
    v3 = SCNetworkSetCopyCurrent(v12);
    CFRelease(v13);
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (!v3)
    {
      return Mutable;
    }

LABEL_3:
    v4 = SCNetworkSetCopyServices(v3);
    if (v4)
    {
      v5 = v4;
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v7 = Count;
        for (i = 0; i != v7; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
          Interface = SCNetworkServiceGetInterface(ValueAtIndex);
          if (Interface)
          {
            InterfaceType = SCNetworkInterfaceGetInterfaceType(Interface);
            if (CFEqual(InterfaceType, @"PPP") || CFEqual(InterfaceType, @"VPN") || CFEqual(InterfaceType, @"IPSec"))
            {
              CFArrayAppendValue(Mutable, ValueAtIndex);
            }
          }
        }
      }

      CFRelease(v5);
    }

    if (!a1)
    {
      CFRelease(v3);
    }

    return Mutable;
  }

  v15 = MEMORY[0x1E695E9C0];

  return CFArrayCreateMutable(0, 0, v15);
}

uint64_t SCNetworkConnectionCreateWithService(uint64_t a1, void *a2, uint64_t a3, __int128 *a4)
{
  v33[1] = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkServiceGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID)
  {
    v19 = 1002;
LABEL_10:
    _SCErrorSet(v19);
    return 0;
  }

  if (__SCNetworkServiceIsPPTP(a2))
  {
    v9 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v9 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v9;
    }

    v10 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v9, v10))
    {
      v11 = _os_log_pack_size();
      v17 = v33 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = __error();
      *_os_log_pack_fill(v17, v11, *v18, &dword_1AD2AD000, "PPTP VPNs are no longer supported") = 0;
      __SC_log_send(6, v9, v10, v17);
    }

    v19 = 5002;
    goto LABEL_10;
  }

  Private = __SCNetworkConnectionCreatePrivate(a1, a2, a3, a4);
  if (Private)
  {
    v22 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v22 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v22;
    }

    v23 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v22, v23))
    {
      v24 = _os_log_pack_size();
      v30 = v33 - ((MEMORY[0x1EEE9AC00](v24, v25, v26, v27, v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = __error();
      v32 = _os_log_pack_fill(v30, v24, *v31, &dword_1AD2AD000, "%screate w/service %@");
      *v32 = 136315394;
      *(v32 + 4) = Private + 88;
      *(v32 + 12) = 2112;
      *(v32 + 14) = a2;
      __SC_log_send(7, v22, v23, v30);
    }
  }

  return Private;
}

uint64_t __SCNetworkConnectionCreatePrivate(uint64_t a1, const void *a2, uint64_t a3, __int128 *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if (__SCNetworkConnectionInitialize_initialized != -1)
  {
    SCNetworkConnectionGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    goto LABEL_23;
  }

  v8 = Instance;
  pthread_mutex_init((Instance + 16), 0);
  if (a2)
  {
    *(v8 + 80) = CFRetain(a2);
  }

  *(v8 + 160) = geteuid();
  *(v8 + 164) = getegid();
  *(v8 + 168) = getpid();
  *(v8 + 232) = a3;
  if (a4)
  {
    v9 = *a4;
    v10 = a4[1];
    *(v8 + 272) = *(a4 + 4);
    *(v8 + 240) = v9;
    *(v8 + 256) = v10;
    v11 = *(a4 + 2);
    if (v11)
    {
      *(v8 + 248) = v11(*(a4 + 1));
    }
  }

  *(v8 + 304) = 0;
  if (_sc_log >= 1)
  {
    snprintf((v8 + 88), 0x20uLL, "[%p] ", v8);
  }

  if (ne_session_use_as_system_vpn() && *(v8 + 80))
  {
    _SCErrorSet(0);
    if (_SCNetworkServiceIsVPN(*(v8 + 80)))
    {
      goto LABEL_14;
    }

    if (SCError() != 1002)
    {
      return v8;
    }

    ServiceID = SCNetworkServiceGetServiceID(*(v8 + 80));
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(*MEMORY[0x1E695E480], @"Setup:", ServiceID, @"Interface");
    v28 = SCDynamicStoreCopyValue(0, NetworkServiceEntity);
    TypeID = CFDictionaryGetTypeID();
    if (v28)
    {
      if (CFGetTypeID(v28) == TypeID)
      {
        Value = CFDictionaryGetValue(v28, @"Type");
        v31 = CFStringGetTypeID();
        if (Value)
        {
          if (CFGetTypeID(Value) == v31)
          {
            if (!CFEqual(Value, @"PPP"))
            {
              if (!CFEqual(Value, @"VPN"))
              {
                v33 = &kSCNetworkInterfaceTypeIPSec;
LABEL_45:
                v46 = CFEqual(Value, *v33);
                CFRelease(v28);
                CFRelease(NetworkServiceEntity);
                if (!v46)
                {
                  return v8;
                }

LABEL_14:
                v12 = SCNetworkServiceGetServiceID(*(v8 + 80));
                v13 = v12;
                if (v12)
                {
                  *buffer = 0u;
                  memset(v49, 0, sizeof(v49));
                  if (CFStringGetCString(v12, buffer, 37, 0x8000100u))
                  {
                    memset(uu, 0, sizeof(uu));
                    if (!uuid_parse(buffer, uu))
                    {
                      v34 = ne_session_create();
                      *(v8 + 344) = v34;
                      if (v34)
                      {
                        v35 = __log_SCNetworkConnection_log;
                        if (!__log_SCNetworkConnection_log)
                        {
                          v35 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
                          __log_SCNetworkConnection_log = v35;
                        }

                        v36 = _SC_syslog_os_log_mapping(7);
                        if (__SC_log_enabled(7, v35, v36))
                        {
                          v37 = _os_log_pack_size();
                          v43 = &uu[-((MEMORY[0x1EEE9AC00](v37, v38, v39, v40, v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0)];
                          v44 = __error();
                          v45 = _os_log_pack_fill(v43, v37, *v44, &dword_1AD2AD000, "%sne_session created", *uu);
                          *v45 = 136315138;
                          *(v45 + 4) = v8 + 88;
                          __SC_log_send(7, v35, v36, v43);
                        }
                      }
                    }
                  }
                }

                if (!*(v8 + 344))
                {
                  v14 = __log_SCNetworkConnection_log;
                  if (!__log_SCNetworkConnection_log)
                  {
                    v14 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
                    __log_SCNetworkConnection_log = v14;
                  }

                  v15 = _SC_syslog_os_log_mapping(5);
                  if (__SC_log_enabled(5, v14, v15))
                  {
                    v16 = _os_log_pack_size();
                    v22 = &uu[-((MEMORY[0x1EEE9AC00](v16, v17, v18, v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0)];
                    v23 = __error();
                    v24 = _os_log_pack_fill(v22, v16, *v23, &dword_1AD2AD000, "SCNetworkConnection failed to create an ne_session: service ID %@ is not a valid UUID");
                    *v24 = 138412290;
                    *(v24 + 4) = v13;
                    __SC_log_send(5, v14, v15, v22);
                  }

                  CFRelease(v8);
LABEL_23:
                  _SCErrorSet(1001);
                  return 0;
                }

                return v8;
              }

LABEL_43:
              CFRelease(v28);
              CFRelease(NetworkServiceEntity);
              goto LABEL_14;
            }

            Value = CFDictionaryGetValue(v28, @"SubType");
            v32 = CFStringGetTypeID();
            if (Value && CFGetTypeID(Value) == v32)
            {
              if (!CFEqual(Value, @"PPTP"))
              {
                v33 = &kSCValNetInterfaceSubTypeL2TP;
                goto LABEL_45;
              }

              goto LABEL_43;
            }
          }
        }
      }

      CFRelease(v28);
    }

    CFRelease(NetworkServiceEntity);
  }

  return v8;
}

SCNetworkConnectionRef SCNetworkConnectionCreateWithServiceID(CFAllocatorRef allocator, CFStringRef serviceID, SCNetworkConnectionCallBack callout, SCNetworkConnectionContext *context)
{
  v24[1] = *MEMORY[0x1E69E9840];
  TypeID = CFStringGetTypeID();
  if (!serviceID || CFGetTypeID(serviceID) != TypeID)
  {
    _SCErrorSet(1002);
    return 0;
  }

  v9 = _SCNetworkServiceCopyActive(0, serviceID);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = SCNetworkConnectionCreateWithService(allocator, v9, callout, &context->version);
  CFRelease(v10);
  if (v11)
  {
    v12 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v12 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v12;
    }

    v13 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v12, v13))
    {
      v14 = _os_log_pack_size();
      v20 = v24 - ((MEMORY[0x1EEE9AC00](v14, v15, v16, v17, v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = __error();
      v22 = _os_log_pack_fill(v20, v14, *v21, &dword_1AD2AD000, "%screate w/serviceID %@");
      *v22 = 136315394;
      *(v22 + 4) = v11 + 88;
      *(v22 + 12) = 2112;
      *(v22 + 14) = v10;
      __SC_log_send(7, v12, v13, v20);
    }
  }

  return v11;
}

uint64_t SCNetworkConnectionCreate(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  Private = __SCNetworkConnectionCreatePrivate(a1, 0, a2, a3);
  if (Private)
  {
    v4 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v4 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v4;
    }

    v5 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v4, v5))
    {
      v6 = _os_log_pack_size();
      v12 = v16 - ((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = __error();
      v14 = _os_log_pack_fill(v12, v6, *v13, &dword_1AD2AD000, "%screate", v16[0]);
      *v14 = 136315138;
      *(v14 + 4) = Private + 88;
      __SC_log_send(7, v4, v5, v12);
    }
  }

  return Private;
}

CFStringRef SCNetworkConnectionCopyServiceID(SCNetworkConnectionRef connection)
{
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!connection)
    {
LABEL_10:
      v6 = 1002;
      goto LABEL_11;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!connection)
    {
      goto LABEL_10;
    }
  }

  v2 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(connection) != v2)
  {
    goto LABEL_10;
  }

  v3 = *(connection + 10);
  if (!v3)
  {
    v6 = 5001;
LABEL_11:
    _SCErrorSet(v6);
    return 0;
  }

  ServiceID = SCNetworkServiceGetServiceID(v3);

  return CFRetain(ServiceID);
}

uint64_t SCNetworkConnectionSetClientInfo(mach_port_name_t *cf, mach_port_name_t a2, mach_port_name_t a3, mach_port_name_t a4, mach_port_name_t a5)
{
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_10:
      _SCErrorSet(1002);
      return 0;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_10;
    }
  }

  v10 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(cf) != v10)
  {
    goto LABEL_10;
  }

  v11 = cf[30];
  v12 = MEMORY[0x1E69E9A60];
  if (v11)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v11);
  }

  cf[30] = a2;
  if (a2)
  {
    mach_port_mod_refs(*v12, a2, 0, 1);
  }

  cf[40] = a3;
  cf[41] = a4;
  result = 1;
  cf[42] = a5;
  return result;
}

uint64_t SCNetworkConnectionSetClientAuditInfo(uint64_t a1, void *a2, mach_port_name_t a3, mach_port_name_t a4, pid_t a5, const unsigned __int8 *a6, const char *a7)
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = 0uLL;
  v28 = 0uLL;
  if (*a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a2[1] == 0;
  }

  if (v13 && a2[2] == 0 && a2[3] == 0)
  {
    v19 = 0;
    v17 = 0;
  }

  else
  {
    v16 = *(a2 + 1);
    *v26.val = *a2;
    *&v26.val[4] = v16;
    v17 = audit_token_to_euid(&v26);
    v18 = *(a2 + 1);
    *v26.val = *a2;
    *&v26.val[4] = v18;
    v19 = audit_token_to_egid(&v26);
    v20 = *(a2 + 1);
    *v26.val = *a2;
    *&v26.val[4] = v20;
    a5 = audit_token_to_pid(&v26);
  }

  result = SCNetworkConnectionSetClientInfo(a1, a3, v17, v19, a5);
  if (result)
  {
    v22 = *(a1 + 156);
    v23 = MEMORY[0x1E69E9A60];
    if (v22)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v22);
    }

    *(a1 + 156) = a4;
    if (a4)
    {
      mach_port_mod_refs(*v23, a4, 0, 1);
    }

    v24 = *a2;
    *(a1 + 140) = *(a2 + 1);
    *(a1 + 124) = v24;
    if (a6 && !uuid_is_null(a6))
    {
      uuid_copy((a1 + 172), a6);
    }

    v25 = *(a1 + 192);
    if (v25)
    {
      CFRelease(v25);
      *(a1 + 192) = 0;
    }

    if (a7)
    {
      *(a1 + 192) = CFStringCreateWithCString(*MEMORY[0x1E695E480], a7, 0x8000100u);
    }

    return 1;
  }

  return result;
}

CFDictionaryRef SCNetworkConnectionCopyStatistics(SCNetworkConnectionRef connection)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v18 = 1001;
  v19 = 0;
  v17 = 0;
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!connection)
    {
LABEL_28:
      _SCErrorSet(1002);
      return 0;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!connection)
    {
      goto LABEL_28;
    }
  }

  v2 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(connection) != v2)
  {
    goto LABEL_28;
  }

  pthread_mutex_lock((connection + 16));
  if (*(connection + 43))
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    ne_session_retain();
    pthread_mutex_unlock((connection + 16));
    v3 = dispatch_semaphore_create(0);
    if (__SCNetworkConnectionQueue_once != -1)
    {
      SCNetworkConnectionCopyStatistics_cold_2();
    }

    ne_session_get_info();
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v3);
    if (v14[3])
    {
      v4 = _CFXPCCreateCFObjectFromXPCObject();
      xpc_release(v14[3]);
    }

    else
    {
      _SCErrorSet(1001);
      v4 = 0;
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    while (1)
    {
      v5 = __SCNetworkConnectionSessionPort(connection);
      if (!v5)
      {
        break;
      }

      v6 = pppcontroller_copystatistics(v5, v20, &v19, &v18);
      if (!__SCNetworkConnectionNeedsRetry(connection, "SCNetworkConnectionCopyStatistics()", v6, &v18))
      {
        if (!v20[0])
        {
          goto LABEL_16;
        }

        v7 = _SCUnserialize(&v17, 0, v20[0], v19);
        v8 = v18;
        if (!v7 && v18)
        {
          v8 = SCError();
          v18 = v8;
        }

        if (v8 || (v10 = v17, TypeID = CFDictionaryGetTypeID(), v10) && CFGetTypeID(v10) == TypeID)
        {
LABEL_16:
          v9 = v18;
          if (!v18)
          {
            break;
          }
        }

        else
        {
          v9 = 1001;
          v18 = 1001;
        }

        if (v17)
        {
          CFRelease(v17);
          v17 = 0;
          v9 = v18;
        }

        _SCErrorSet(v9);
        break;
      }
    }

    pthread_mutex_unlock((connection + 16));
    return v17;
  }

  return v4;
}

intptr_t __SCNetworkConnectionCopyStatistics_block_invoke(void *a1, xpc_object_t object)
{
  if (object)
  {
    *(*(a1[4] + 8) + 24) = xpc_retain(object);
  }

  ne_session_release();
  v3 = a1[6];

  return dispatch_semaphore_signal(v3);
}

uint64_t __SCNetworkConnectionSessionPort(uint64_t a1)
{
  v1 = a1;
  v150[1] = *MEMORY[0x1E69E9840];
  v149 = 0;
  v150[0] = 0;
  *name = 0;
  v148 = 0;
  v146 = 1001;
  v3 = (a1 + 200);
  result = *(a1 + 200);
  if (result)
  {
    return result;
  }

  v4 = *(v1 + 10);
  if (!v4)
  {
    v12 = 0;
    v146 = 5001;
    goto LABEL_95;
  }

  v5 = 0x1EB591000uLL;
  v6 = scnc_server;
  ServiceID = SCNetworkServiceGetServiceID(v4);
  if (!_SCSerializeString(ServiceID, v150, &v149, &v148))
  {
    v12 = 0;
    goto LABEL_95;
  }

  v8 = *(v1 + 26);
  v9 = MEMORY[0x1E69E9A60];
  if (v8)
  {
    Port = CFMachPortGetPort(v8);
    CFMachPortInvalidate(*(v1 + 26));
    CFRelease(*(v1 + 26));
    *(v1 + 26) = 0;
    mach_port_mod_refs(*v9, Port, 1u, -1);
  }

  v11 = audit_session_self();
  v12 = 0;
  LODWORD(v142) = 0;
  *&v13 = 136315138;
  v144 = v13;
  v143 = v1;
  HIDWORD(v142) = v11;
  while (1)
  {
    if (*(v1 + 29))
    {
      v14 = name[1] == 0;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v15 = mach_port_allocate(*v9, 1u, &name[1]);
      if (v15)
      {
        v55 = v15;
        v56 = __log_SCNetworkConnection_log;
        if (!__log_SCNetworkConnection_log)
        {
          v56 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
          __log_SCNetworkConnection_log = v56;
        }

        v57 = _SC_syslog_os_log_mapping(3);
        if (__SC_log_enabled(3, v56, v57))
        {
          v58 = _os_log_pack_size();
          v64 = &v142 - ((MEMORY[0x1EEE9AC00](v58, v59, v60, v61, v62, v63) + 15) & 0xFFFFFFFFFFFFFFF0);
          v65 = __error();
          v66 = _os_log_pack_fill(v64, v58, *v65, &dword_1AD2AD000, "mach_port_allocate() failed: %s", v142);
          v67 = mach_error_string(v55);
          *v66 = v144;
          *(v66 + 4) = v67;
          v68 = v64;
          v9 = MEMORY[0x1E69E9A60];
          __SC_log_send(3, v56, v57, v68);
        }

        v146 = v55;
        v12 = 1;
        if (v11)
        {
          goto LABEL_94;
        }

        goto LABEL_95;
      }

      inserted = mach_port_insert_right(*v9, name[1], name[1], 0x14u);
      if (inserted)
      {
        v69 = inserted;
        v70 = __log_SCNetworkConnection_log;
        if (!__log_SCNetworkConnection_log)
        {
          v70 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
          __log_SCNetworkConnection_log = v70;
        }

        v71 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v70, v71))
        {
          v72 = _os_log_pack_size();
          v78 = &v142 - ((MEMORY[0x1EEE9AC00](v72, v73, v74, v75, v76, v77) + 15) & 0xFFFFFFFFFFFFFFF0);
          v79 = __error();
          v80 = _os_log_pack_fill(v78, v72, *v79, &dword_1AD2AD000, "mach_port_insert_right() failed: %s", v142);
          v81 = mach_error_string(v69);
          *v80 = v144;
          *(v80 + 4) = v81;
          v82 = v78;
          v9 = MEMORY[0x1E69E9A60];
          __SC_log_send(5, v70, v71, v82);
        }

        v12 = 1;
        mach_port_mod_refs(*v9, name[1], 1u, -1);
        v146 = v69;
        if (v11)
        {
          goto LABEL_94;
        }

        goto LABEL_95;
      }

      v12 = 0;
    }

    if (v6)
    {
      break;
    }

LABEL_38:
    pthread_mutex_lock(&scnc_lock);
    version = *(v5 + 2512);
    if (!version)
    {
      goto LABEL_41;
    }

    if (version == v6)
    {
      scnc_server_name = 0;
      mach_port_deallocate(*v9, v6);
LABEL_41:
      LODWORD(sp.version) = 0;
      v38 = *MEMORY[0x1E69E99F8];
      ControllerPortName = __SCNetworkConnectionGetControllerPortName();
      v146 = bootstrap_look_up(v38, ControllerPortName, &sp);
      if (v146)
      {
        version = 0;
        scnc_server_name = 0;
      }

      else
      {
        version = sp.version;
      }

      *(v5 + 2512) = version;
    }

    pthread_mutex_unlock(&scnc_lock);
    v6 = version;
    if (!version)
    {
      if (v146 != 1102)
      {
        goto LABEL_80;
      }

      v40 = v142;
      if (v142)
      {
        if (v142 > 0x991)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v41 = SCDynamicStoreCreate(0, @"SCNetworkConnection connect", 0, 0);
        if (v41)
        {
          CFRelease(v41);
        }
      }

      LODWORD(v142) = v40 + 50;
      usleep(0xC350u);
      v6 = 0;
    }
  }

  if (!*(v1 + 30) && !*(v1 + 39) && (v17 = *(v1 + 40), v17 == geteuid()) && (v18 = *(v1 + 41), v18 == getegid()) && (v19 = *(v1 + 42), v19 == getpid()))
  {
    v20 = pppcontroller_attach(v6, v149, v148, *MEMORY[0x1E69E99F8], name[1], v11, v3, &v146);
  }

  else
  {
    if (*(v1 + 30))
    {
      v21 = *(v1 + 30);
    }

    else
    {
      v21 = v11;
    }

    if (*(v1 + 39))
    {
      v22 = *(v1 + 39);
    }

    else
    {
      v22 = *MEMORY[0x1E69E99F8];
    }

    v20 = pppcontroller_attach_proxy(v6, v149, v148, v22, name[1], v21, *(v1 + 40), *(v1 + 41), *(v1 + 42), v3, &v146);
  }

  v12 = v20;
  if (v20)
  {
    v23 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v23 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v23;
    }

    v24 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v23, v24))
    {
      v25 = v5;
      v26 = v3;
      v27 = _os_log_pack_size();
      v33 = &v142 - ((MEMORY[0x1EEE9AC00](v27, v28, v29, v30, v31, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = __error();
      v35 = _os_log_pack_fill(v33, v27, *v34, &dword_1AD2AD000, "!attach: %s", v142);
      v36 = SCErrorString(v12);
      *v35 = v144;
      *(v35 + 4) = v36;
      v3 = v26;
      v5 = v25;
      __SC_log_send(6, v23, v24, v33);
      v11 = HIDWORD(v142);
      v1 = v143;
    }

    if (v12 == 268435459)
    {
      v9 = MEMORY[0x1E69E9A60];
    }

    else
    {
      v9 = MEMORY[0x1E69E9A60];
      if (v12 != -308)
      {
        v146 = v12;
        goto LABEL_80;
      }

      mach_port_mod_refs(*MEMORY[0x1E69E9A60], name[1], 1u, -1);
      name[1] = 0;
    }

    goto LABEL_38;
  }

  if (v146)
  {
    v42 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v42 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v42;
    }

    v43 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v42, v43))
    {
      v44 = _os_log_pack_size();
      v50 = &v142 - ((MEMORY[0x1EEE9AC00](v44, v45, v46, v47, v48, v49) + 15) & 0xFFFFFFFFFFFFFFF0);
      v51 = __error();
      v52 = _os_log_pack_fill(v50, v44, *v51, &dword_1AD2AD000, "attach w/error, sc_status=%s%s", v142, v143);
      v53 = SCErrorString(v146);
      v54 = ", w/session_port!=MACH_PORT_NULL";
      if (!*v3)
      {
        v54 = "";
      }

      *v52 = 136315394;
      *(v52 + 4) = v53;
      *(v52 + 12) = 2080;
      *(v52 + 14) = v54;
      __SC_log_send(7, v42, v43, v50);
    }

    if (*v3)
    {
      mach_port_deallocate(*v9, *v3);
      *v3 = 0;
    }

    if (name[1])
    {
      mach_port_mod_refs(*v9, name[1], 1u, -1);
      v12 = 0;
      goto LABEL_92;
    }

    v12 = 0;
    if (!v11)
    {
      goto LABEL_95;
    }

LABEL_94:
    mach_port_deallocate(*v9, v11);
    goto LABEL_95;
  }

  v12 = 0;
LABEL_80:
  if (!name[1])
  {
LABEL_93:
    if (!v11)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  if (!*v3)
  {
    mach_port_mod_refs(*v9, name[1], 1u, -1);
    mach_port_deallocate(*v9, name[1]);
LABEL_92:
    name[1] = 0;
    goto LABEL_93;
  }

  sp.version = 0;
  sp.info = v1;
  sp.retain = MEMORY[0x1E695D7C8];
  sp.release = MEMORY[0x1E695D7C0];
  sp.copyDescription = pppMPCopyDescription;
  v12 = mach_port_request_notification(*v9, name[1], 70, 1u, name[1], 0x15u, name);
  if (v12)
  {
    v83 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v83 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v83;
    }

    v84 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v83, v84))
    {
      v85 = _os_log_pack_size();
      v91 = &v142 - ((MEMORY[0x1EEE9AC00](v85, v86, v87, v88, v89, v90) + 15) & 0xFFFFFFFFFFFFFFF0);
      v92 = __error();
      v93 = _os_log_pack_fill(v91, v85, *v92, &dword_1AD2AD000, "mach_port_request_notification() failed: %s", v142);
      v94 = mach_error_string(v12);
      *v93 = v144;
      *(v93 + 4) = v94;
      v95 = v91;
      v9 = MEMORY[0x1E69E9A60];
      __SC_log_send(5, v83, v84, v95);
    }

    mach_port_mod_refs(*v9, name[1], 1u, -1);
    v146 = v12;
    if (v11)
    {
      goto LABEL_94;
    }
  }

  else
  {
    if (name[0])
    {
      v131 = __log_SCNetworkConnection_log;
      if (!__log_SCNetworkConnection_log)
      {
        v131 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
        __log_SCNetworkConnection_log = v131;
      }

      v132 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v131, v132))
      {
        v133 = _os_log_pack_size();
        v139 = &v142 - ((MEMORY[0x1EEE9AC00](v133, v134, v135, v136, v137, v138) + 15) & 0xFFFFFFFFFFFFFFF0);
        v140 = __error();
        *_os_log_pack_fill(v139, v133, *v140, &dword_1AD2AD000, "oldNotify != MACH_PORT_NULL") = 0;
        v141 = v139;
        v9 = MEMORY[0x1E69E9A60];
        __SC_log_send(5, v131, v132, v141);
      }
    }

    *(v1 + 26) = _SC_CFMachPortCreateWithPort("SCNetworkConnection", name[1], __SCNetworkConnectionMachCallBack, &sp);
    v1[216] = 0;
    if (v11)
    {
      goto LABEL_94;
    }
  }

LABEL_95:
  if (v150[0])
  {
    CFRelease(v150[0]);
  }

  v96 = __log_SCNetworkConnection_log;
  if (v146 == 1102)
  {
    if (!__log_SCNetworkConnection_log)
    {
      v96 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v96;
    }

    if (v12)
    {
      v111 = 3;
    }

    else
    {
      v111 = 5;
    }

    v112 = _SC_syslog_os_log_mapping(v111);
    if (!__SC_log_enabled(v111, v96, v112))
    {
      goto LABEL_119;
    }

    v113 = _os_log_pack_size();
    v119 = &v142 - ((MEMORY[0x1EEE9AC00](v113, v114, v115, v116, v117, v118) + 15) & 0xFFFFFFFFFFFFFFF0);
    v120 = __error();
    v121 = _os_log_pack_fill(v119, v113, *v120, &dword_1AD2AD000, "%sPPPController not available", v142);
    *v121 = 136315138;
    *(v121 + 4) = v1 + 88;
  }

  else
  {
    if (!v146)
    {
      if (!__log_SCNetworkConnection_log)
      {
        v96 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
        __log_SCNetworkConnection_log = v96;
      }

      v97 = _SC_syslog_os_log_mapping(7);
      if (__SC_log_enabled(7, v96, v97))
      {
        v98 = _os_log_pack_size();
        v104 = &v142 - ((MEMORY[0x1EEE9AC00](v98, v99, v100, v101, v102, v103) + 15) & 0xFFFFFFFFFFFFFFF0);
        v105 = __error();
        v106 = _os_log_pack_fill(v104, v98, *v105, &dword_1AD2AD000, "%sPPPController session created", v142);
        *v106 = 136315138;
        *(v106 + 4) = v1 + 88;
        v107 = 7;
        v108 = v96;
        v109 = v97;
        v110 = v104;
        goto LABEL_118;
      }

      goto LABEL_119;
    }

    if (!__log_SCNetworkConnection_log)
    {
      v96 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v96;
    }

    if (v12)
    {
      v111 = 3;
    }

    else
    {
      v111 = 5;
    }

    v112 = _SC_syslog_os_log_mapping(v111);
    if (!__SC_log_enabled(v111, v96, v112))
    {
      goto LABEL_119;
    }

    v122 = _os_log_pack_size();
    v119 = &v142 - ((MEMORY[0x1EEE9AC00](v122, v123, v124, v125, v126, v127) + 15) & 0xFFFFFFFFFFFFFFF0);
    v128 = __error();
    v129 = _os_log_pack_fill(v119, v122, *v128, &dword_1AD2AD000, "%spppcontroller_attach() failed: %s", v142, v143);
    v130 = SCErrorString(v146);
    *v129 = 136315394;
    *(v129 + 4) = v1 + 88;
    *(v129 + 12) = 2080;
    *(v129 + 14) = v130;
  }

  v107 = v111;
  v108 = v96;
  v109 = v112;
  v110 = v119;
LABEL_118:
  __SC_log_send(v107, v108, v109, v110);
LABEL_119:
  if (v146)
  {
    _SCErrorSet(v146);
  }

  return *v3;
}

uint64_t __SCNetworkConnectionNeedsRetry(uint64_t a1, uint64_t a2, mach_error_t a3, mach_error_t *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  switch(a3)
  {
    case 268435459:
      goto LABEL_4;
    case 0:
      return 0;
    case -308:
LABEL_4:
      v7 = __log_SCNetworkConnection_log;
      if (!__log_SCNetworkConnection_log)
      {
        v7 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
        __log_SCNetworkConnection_log = v7;
      }

      v8 = _SC_syslog_os_log_mapping(7);
      if (__SC_log_enabled(7, v7, v8))
      {
        v9 = _os_log_pack_size();
        v15 = &v32 - ((MEMORY[0x1EEE9AC00](v9, v10, v11, v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
        v16 = __error();
        v17 = _os_log_pack_fill(v15, v9, *v16, &dword_1AD2AD000, "%sPPPController session no longer valid", v32);
        *v17 = 136315138;
        *(v17 + 4) = a1 + 88;
        __SC_log_send(7, v7, v8, v15);
      }

      mach_port_deallocate(*MEMORY[0x1E69E9A60], *(a1 + 200));
      break;
    default:
      v20 = __log_SCNetworkConnection_log;
      if (!__log_SCNetworkConnection_log)
      {
        v20 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
        __log_SCNetworkConnection_log = v20;
      }

      v21 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v20, v21))
      {
        v22 = _os_log_pack_size();
        v28 = &v32 - ((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
        v29 = __error();
        v30 = _os_log_pack_fill(v28, v22, *v29, &dword_1AD2AD000, "%s%s: %s", v32, v33, v34);
        v31 = mach_error_string(a3);
        *v30 = 136315650;
        *(v30 + 4) = a1 + 88;
        *(v30 + 12) = 2080;
        *(v30 + 14) = a2;
        *(v30 + 22) = 2080;
        *(v30 + 24) = v31;
        __SC_log_send(5, v20, v21, v28);
      }

      break;
  }

  *(a1 + 200) = 0;
  if ((a3 == 268435459 || a3 == -308) && __SCNetworkConnectionSessionPort(a1))
  {
    return 1;
  }

  result = 0;
  *a4 = a3;
  return result;
}

uint64_t SCNetworkConnectionGetService(void *cf)
{
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!cf)
    {
      goto LABEL_6;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_6;
    }
  }

  v2 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(cf) == v2)
  {
    return cf[10];
  }

LABEL_6:
  _SCErrorSet(1002);
  return 0;
}

SCNetworkConnectionStatus SCNetworkConnectionGetStatus(SCNetworkConnectionRef connection)
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 1001;
  v18 = kSCNetworkConnectionInvalid;
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!connection)
    {
LABEL_27:
      v8 = 1002;
      goto LABEL_28;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!connection)
    {
      goto LABEL_27;
    }
  }

  v2 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(connection) != v2)
  {
    goto LABEL_27;
  }

  v3 = *(connection + 10);
  if (!v3 || (ServiceID = SCNetworkServiceGetServiceID(v3), !CFStringGetLength(ServiceID)))
  {
    v8 = 5001;
LABEL_28:
    _SCErrorSet(v8);
    return -1;
  }

  pthread_mutex_lock((connection + 16));
  if (*(connection + 43))
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    ne_session_retain();
    pthread_mutex_unlock((connection + 16));
    v5 = dispatch_semaphore_create(0);
    if (__SCNetworkConnectionQueue_once != -1)
    {
      SCNetworkConnectionCopyStatistics_cold_2();
    }

    ne_session_get_status();
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v5);
    v6 = *(v14 + 6) - 1;
    if (v6 > 4)
    {
      v7 = kSCNetworkConnectionInvalid;
    }

    else
    {
      v7 = dword_1AD329728[v6];
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    for (i = 0; ; i += 10)
    {
      do
      {
        v10 = __SCNetworkConnectionSessionPort(connection);
        if (!v10)
        {
          goto LABEL_23;
        }

        v11 = pppcontroller_getstatus(v10, &v18, &v17);
      }

      while (__SCNetworkConnectionNeedsRetry(connection, "SCNetworkConnectionGetStatus()", v11, &v17));
      if (*(connection + 216) || v17 != 5001 || i > 0xEF)
      {
        break;
      }

      usleep(0x2710u);
    }

    if (v17)
    {
      _SCErrorSet(v17);
LABEL_23:
      v18 = kSCNetworkConnectionInvalid;
      goto LABEL_24;
    }

    *(connection + 216) = 1;
LABEL_24:
    pthread_mutex_unlock((connection + 16));
    return v18;
  }

  return v7;
}

intptr_t __SCNetworkConnectionGetStatus_block_invoke(void *a1, int a2)
{
  *(*(a1[4] + 8) + 24) = a2;
  ne_session_release();
  v3 = a1[6];

  return dispatch_semaphore_signal(v3);
}

uint64_t SCNetworkConnectionGetStatusFromNEStatus(int a1)
{
  if ((a1 - 1) > 4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_1AD329728[a1 - 1];
  }
}

CFDictionaryRef SCNetworkConnectionCopyExtendedStatus(SCNetworkConnectionRef connection)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v24[0] = 0;
  v23 = 0;
  v22 = 0;
  v21 = 1001;
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!connection)
    {
LABEL_35:
      v7 = 1002;
      goto LABEL_36;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!connection)
    {
      goto LABEL_35;
    }
  }

  v2 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(connection) != v2)
  {
    goto LABEL_35;
  }

  v3 = *(connection + 10);
  if (!v3 || (ServiceID = SCNetworkServiceGetServiceID(v3), !CFStringGetLength(ServiceID)))
  {
    v7 = 5001;
LABEL_36:
    _SCErrorSet(v7);
    return 0;
  }

  pthread_mutex_lock((connection + 16));
  if (*(connection + 43))
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 0;
    ne_session_retain();
    pthread_mutex_unlock((connection + 16));
    v5 = dispatch_semaphore_create(0);
    if (__SCNetworkConnectionQueue_once != -1)
    {
      SCNetworkConnectionCopyStatistics_cold_2();
    }

    ne_session_get_info();
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v5);
    v6 = v18[3];
    if (!v6)
    {
      _SCErrorSet(1001);
    }

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v8 = 0;
    while (1)
    {
      v9 = __SCNetworkConnectionSessionPort(connection);
      if (!v9)
      {
        break;
      }

      v10 = pppcontroller_copyextendedstatus(v9, v24, &v23, &v21);
      if (!__SCNetworkConnectionNeedsRetry(connection, "SCNetworkConnectionCopyExtendedStatus()", v10, &v21))
      {
        if (v24[0])
        {
          v11 = _SCUnserialize(&v22, 0, v24[0], v23);
          v12 = v21;
          if (!v11 && v21)
          {
            v12 = SCError();
            v21 = v12;
          }

          if (!v12)
          {
            v13 = v22;
            TypeID = CFDictionaryGetTypeID();
            if (!v13 || CFGetTypeID(v13) != TypeID)
            {
              v15 = 1001;
              v21 = 1001;
LABEL_30:
              if (v22)
              {
                CFRelease(v22);
                v22 = 0;
                v15 = v21;
              }

              _SCErrorSet(v15);
              break;
            }
          }
        }

        v15 = v21;
        if (*(connection + 216) || v21 != 5001 || v8 > 0xEF)
        {
          if (!v21)
          {
            *(connection + 216) = 1;
            break;
          }

          goto LABEL_30;
        }

        v8 += 10;
        usleep(0x2710u);
      }
    }

    pthread_mutex_unlock((connection + 16));
    return v22;
  }

  return v6;
}

intptr_t __SCNetworkConnectionCopyExtendedStatus_block_invoke(void *a1, uint64_t a2)
{
  if (a2)
  {
    *(*(a1[4] + 8) + 24) = _CFXPCCreateCFObjectFromXPCObject();
    ne_session_release();
    v3 = a1[6];

    return dispatch_semaphore_signal(v3);
  }

  else
  {
    if (__SCNetworkConnectionQueue_once != -1)
    {
      __SCNetworkConnectionCopyExtendedStatus_block_invoke_cold_1();
    }

    return ne_session_get_status();
  }
}

intptr_t __SCNetworkConnectionCopyExtendedStatus_block_invoke_2(uint64_t a1, int a2)
{
  keys[1] = *MEMORY[0x1E69E9840];
  if ((a2 - 1) >= 5)
  {
    valuePtr = -1;
  }

  else
  {
    valuePtr = dword_1AD329728[a2 - 1];
    keys[0] = @"Status";
    v3 = *MEMORY[0x1E695E480];
    values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    *(*(*(a1 + 32) + 8) + 24) = CFDictionaryCreate(v3, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFRelease(values);
  }

  ne_session_release();
  return dispatch_semaphore_signal(*(a1 + 48));
}

Boolean SCNetworkConnectionStart(SCNetworkConnectionRef connection, CFDictionaryRef userOptions, Boolean linger)
{
  v3 = linger;
  v71[1] = *MEMORY[0x1E69E9840];
  v70 = 0;
  v71[0] = 0;
  v69 = 0;
  v68 = 1001;
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!connection)
    {
      goto LABEL_71;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!connection)
    {
      goto LABEL_71;
    }
  }

  v6 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(connection) != v6)
  {
    goto LABEL_71;
  }

  if (!userOptions)
  {
    userOptions = *(connection + 40);
    goto LABEL_10;
  }

  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(userOptions) != TypeID)
  {
LABEL_71:
    _SCErrorSet(1002);
    return 0;
  }

  if (*(connection + 40))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, userOptions);
    if (MutableCopy)
    {
      v9 = MutableCopy;
      CFDictionaryApplyFunction(*(connection + 40), _SCNetworkConnectionMergeDictionaries, MutableCopy);
      CFRelease(*(connection + 40));
      *(connection + 40) = v9;
      userOptions = v9;
    }
  }

LABEL_10:
  if (debug >= 1)
  {
    v10 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v10 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v10;
    }

    v11 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v10, v11))
    {
      v12 = _os_log_pack_size();
      v18 = &v66 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = __error();
      v20 = _os_log_pack_fill(v18, v12, *v19, &dword_1AD2AD000, "%sstart", v66);
      *v20 = 136315138;
      *(v20 + 4) = connection + 88;
      __SC_log_send(6, v10, v11, v18);
    }

    if (userOptions)
    {
      v21 = CFDictionaryCreateMutableCopy(0, 0, userOptions);
      Value = CFDictionaryGetValue(v21, @"PPP");
      v23 = CFDictionaryGetTypeID();
      if (Value)
      {
        if (CFGetTypeID(Value) == v23)
        {
          v24 = CFDictionaryGetValue(Value, @"AuthPasswordEncryption");
          v25 = CFStringGetTypeID();
          if (!v24 || CFGetTypeID(v24) != v25 || !CFEqual(v24, @"Keychain"))
          {
            v26 = CFDictionaryCreateMutableCopy(0, 0, Value);
            CFDictionaryReplaceValue(v26, @"AuthPassword", @"******");
            CFDictionarySetValue(v21, @"PPP", v26);
            CFRelease(v26);
          }
        }
      }

      v27 = CFDictionaryGetValue(v21, @"L2TP");
      v28 = CFDictionaryGetTypeID();
      if (v27)
      {
        if (CFGetTypeID(v27) == v28)
        {
          v29 = CFDictionaryGetValue(v27, @"IPSecSharedSecretEncryption");
          v30 = CFStringGetTypeID();
          if (!v29 || CFGetTypeID(v29) != v30 || !CFEqual(v29, @"Keychain"))
          {
            v31 = CFDictionaryCreateMutableCopy(0, 0, v27);
            CFDictionaryReplaceValue(v31, @"IPSecSharedSecret", @"******");
            CFDictionarySetValue(v21, @"L2TP", v31);
            CFRelease(v31);
          }
        }
      }

      v32 = CFDictionaryGetValue(v21, @"IPSec");
      v33 = CFDictionaryGetTypeID();
      if (v32)
      {
        if (CFGetTypeID(v32) == v33)
        {
          v34 = CFDictionaryGetValue(v32, @"SharedSecretEncryption");
          v35 = CFStringGetTypeID();
          if (!v34 || CFGetTypeID(v34) != v35 || !CFEqual(v34, @"Keychain"))
          {
            v36 = CFDictionaryCreateMutableCopy(0, 0, v32);
            CFDictionaryReplaceValue(v36, @"SharedSecret", @"******");
            CFDictionarySetValue(v21, @"IPSec", v36);
            CFRelease(v36);
          }
        }
      }
    }

    else
    {
      v21 = 0;
    }

    v37 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v37 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v37;
    }

    v38 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v37, v38))
    {
      v39 = _os_log_pack_size();
      v45 = &v66 - ((MEMORY[0x1EEE9AC00](v39, v40, v41, v42, v43, v44) + 15) & 0xFFFFFFFFFFFFFFF0);
      v46 = __error();
      v47 = _os_log_pack_fill(v45, v39, *v46, &dword_1AD2AD000, "User options: %@");
      *v47 = 138412290;
      *(v47 + 4) = v21;
      __SC_log_send(6, v37, v38, v45);
    }

    if (v21)
    {
      CFRelease(v21);
    }
  }

  pthread_mutex_lock((connection + 16));
  v48 = *(connection + 42);
  if (v48)
  {
    CFRelease(v48);
    *(connection + 42) = 0;
  }

  if (*(connection + 43))
  {
    if (userOptions)
    {
      v49 = _CFXPCCreateXPCObjectFromCFObject();
    }

    else
    {
      v49 = 0;
    }

    if (*(connection + 39))
    {
      ne_session_start_on_behalf_of();
    }

    else
    {
      ne_session_start_with_options();
    }

    ne_session_send_barrier();
    if (v49)
    {
      xpc_release(v49);
    }
  }

  else
  {
    if (userOptions && !_SCSerialize(userOptions, v71, &v70, &v69))
    {
LABEL_68:
      v64 = 0;
      goto LABEL_69;
    }

    do
    {
      v50 = __SCNetworkConnectionSessionPort(connection);
      if (!v50)
      {
        if (v71[0])
        {
          CFRelease(v71[0]);
        }

        goto LABEL_68;
      }

      v51 = pppcontroller_start(v50, v70, v69, v3, &v68);
    }

    while (__SCNetworkConnectionNeedsRetry(connection, "SCNetworkConnectionStart()", v51, &v68));
    if (v71[0])
    {
      CFRelease(v71[0]);
    }

    if (debug >= 1)
    {
      v52 = __log_SCNetworkConnection_log;
      if (!__log_SCNetworkConnection_log)
      {
        v52 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
        __log_SCNetworkConnection_log = v52;
      }

      v53 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v52, v53))
      {
        v54 = _os_log_pack_size();
        v60 = &v66 - ((MEMORY[0x1EEE9AC00](v54, v55, v56, v57, v58, v59) + 15) & 0xFFFFFFFFFFFFFFF0);
        v61 = __error();
        v62 = _os_log_pack_fill(v60, v54, *v61, &dword_1AD2AD000, "%sstart, return: %d", v66, v67);
        v63 = v68;
        *v62 = 136315394;
        *(v62 + 4) = connection + 88;
        *(v62 + 12) = 1024;
        *(v62 + 14) = v63;
        __SC_log_send(6, v52, v53, v60);
      }
    }

    if (v68)
    {
      _SCErrorSet(v68);
      goto LABEL_68;
    }
  }

  v64 = 1;
LABEL_69:
  pthread_mutex_unlock((connection + 16));
  return v64;
}

void _SCNetworkConnectionMergeDictionaries(void *key, void *value, CFMutableDictionaryRef theDict)
{

  CFDictionaryAddValue(theDict, key, value);
}

Boolean SCNetworkConnectionStop(SCNetworkConnectionRef connection, Boolean forceDisconnect)
{
  v2 = forceDisconnect;
  v33 = *MEMORY[0x1E69E9840];
  HIDWORD(v32) = 1001;
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!connection)
    {
LABEL_24:
      _SCErrorSet(1002);
      return 0;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!connection)
    {
      goto LABEL_24;
    }
  }

  v4 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(connection) != v4)
  {
    goto LABEL_24;
  }

  if (debug >= 1)
  {
    v5 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v5 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v5;
    }

    v6 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v5, v6))
    {
      v7 = _os_log_pack_size();
      v13 = &v32 - ((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = __error();
      v15 = _os_log_pack_fill(v13, v7, *v14, &dword_1AD2AD000, "%sstop", v32);
      *v15 = 136315138;
      *(v15 + 4) = connection + 88;
      __SC_log_send(6, v5, v6, v13);
    }
  }

  pthread_mutex_lock((connection + 16));
  if (*(connection + 43))
  {
    ne_session_stop();
    ne_session_send_barrier();
  }

  else
  {
    do
    {
      v17 = __SCNetworkConnectionSessionPort(connection);
      if (!v17)
      {
        goto LABEL_21;
      }

      v18 = pppcontroller_stop(v17, v2, &v32 + 1);
    }

    while (__SCNetworkConnectionNeedsRetry(connection, "SCNetworkConnectionStop()", v18, &v32 + 1));
    if (debug >= 1)
    {
      v19 = __log_SCNetworkConnection_log;
      if (!__log_SCNetworkConnection_log)
      {
        v19 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
        __log_SCNetworkConnection_log = v19;
      }

      v20 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v19, v20))
      {
        v21 = _os_log_pack_size();
        v27 = &v32 - ((MEMORY[0x1EEE9AC00](v21, v22, v23, v24, v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
        v28 = __error();
        v29 = _os_log_pack_fill(v27, v21, *v28, &dword_1AD2AD000, "%sstop, return: %d", v32, v33);
        v30 = HIDWORD(v32);
        *v29 = 136315394;
        *(v29 + 4) = connection + 88;
        *(v29 + 12) = 1024;
        *(v29 + 14) = v30;
        __SC_log_send(6, v19, v20, v27);
      }
    }

    if (HIDWORD(v32))
    {
      _SCErrorSet(SHIDWORD(v32));
LABEL_21:
      v16 = 0;
      goto LABEL_22;
    }
  }

  v16 = 1;
LABEL_22:
  pthread_mutex_unlock((connection + 16));
  return v16;
}

uint64_t SCNetworkConnectionSuspend(char *cf)
{
  v31 = *MEMORY[0x1E69E9840];
  HIDWORD(v30) = 1001;
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_23:
      _SCErrorSet(1002);
      return 0;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_23;
    }
  }

  v2 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_23;
  }

  if (debug >= 1)
  {
    v3 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v3 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v3;
    }

    v4 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v3, v4))
    {
      v5 = _os_log_pack_size();
      v11 = &v30 - ((MEMORY[0x1EEE9AC00](v5, v6, v7, v8, v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = __error();
      v13 = _os_log_pack_fill(v11, v5, *v12, &dword_1AD2AD000, "%ssuspend", v30);
      *v13 = 136315138;
      *(v13 + 4) = cf + 88;
      __SC_log_send(6, v3, v4, v11);
    }
  }

  pthread_mutex_lock((cf + 16));
  do
  {
    v14 = __SCNetworkConnectionSessionPort(cf);
    if (!v14)
    {
      goto LABEL_19;
    }

    v15 = pppcontroller_suspend(v14, &v30 + 1);
  }

  while (__SCNetworkConnectionNeedsRetry(cf, "SCNetworkConnectionSuspend()", v15, &v30 + 1));
  if (debug >= 1)
  {
    v16 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v16 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v16;
    }

    v17 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v16, v17))
    {
      v18 = _os_log_pack_size();
      v24 = &v30 - ((MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = __error();
      v26 = _os_log_pack_fill(v24, v18, *v25, &dword_1AD2AD000, "%ssuspend, return: %d", v30, v31);
      v27 = HIDWORD(v30);
      *v26 = 136315394;
      *(v26 + 4) = cf + 88;
      *(v26 + 12) = 1024;
      *(v26 + 14) = v27;
      __SC_log_send(6, v16, v17, v24);
    }
  }

  if (HIDWORD(v30))
  {
    _SCErrorSet(SHIDWORD(v30));
LABEL_19:
    v28 = 0;
    goto LABEL_20;
  }

  v28 = 1;
LABEL_20:
  pthread_mutex_unlock((cf + 16));
  return v28;
}

uint64_t SCNetworkConnectionResume(char *cf)
{
  v31 = *MEMORY[0x1E69E9840];
  HIDWORD(v30) = 1001;
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_23:
      _SCErrorSet(1002);
      return 0;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_23;
    }
  }

  v2 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_23;
  }

  if (debug >= 1)
  {
    v3 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v3 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v3;
    }

    v4 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v3, v4))
    {
      v5 = _os_log_pack_size();
      v11 = &v30 - ((MEMORY[0x1EEE9AC00](v5, v6, v7, v8, v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = __error();
      v13 = _os_log_pack_fill(v11, v5, *v12, &dword_1AD2AD000, "%sresume", v30);
      *v13 = 136315138;
      *(v13 + 4) = cf + 88;
      __SC_log_send(6, v3, v4, v11);
    }
  }

  pthread_mutex_lock((cf + 16));
  if (!*(cf + 43))
  {
    do
    {
      v15 = __SCNetworkConnectionSessionPort(cf);
      if (!v15)
      {
        goto LABEL_20;
      }

      v16 = pppcontroller_resume(v15, &v30 + 1);
    }

    while (__SCNetworkConnectionNeedsRetry(cf, "SCNetworkConnectionResume()", v16, &v30 + 1));
    if (debug >= 1)
    {
      v17 = __log_SCNetworkConnection_log;
      if (!__log_SCNetworkConnection_log)
      {
        v17 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
        __log_SCNetworkConnection_log = v17;
      }

      v18 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v17, v18))
      {
        v19 = _os_log_pack_size();
        v25 = &v30 - ((MEMORY[0x1EEE9AC00](v19, v20, v21, v22, v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
        v26 = __error();
        v27 = _os_log_pack_fill(v25, v19, *v26, &dword_1AD2AD000, "%sresume, return: %d", v30, v31);
        v28 = HIDWORD(v30);
        *v27 = 136315394;
        *(v27 + 4) = cf + 88;
        *(v27 + 12) = 1024;
        *(v27 + 14) = v28;
        __SC_log_send(6, v17, v18, v25);
      }
    }

    if (HIDWORD(v30))
    {
      _SCErrorSet(SHIDWORD(v30));
LABEL_20:
      v14 = 0;
      goto LABEL_21;
    }
  }

  v14 = 1;
LABEL_21:
  pthread_mutex_unlock((cf + 16));
  return v14;
}

CFDictionaryRef SCNetworkConnectionCopyUserOptions(SCNetworkConnectionRef connection)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v18 = 1001;
  v19 = 0;
  v17 = 0;
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!connection)
    {
LABEL_35:
      _SCErrorSet(1002);
      return 0;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!connection)
    {
      goto LABEL_35;
    }
  }

  v2 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(connection) != v2)
  {
    goto LABEL_35;
  }

  pthread_mutex_lock((connection + 16));
  if (*(connection + 43))
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    ne_session_retain();
    pthread_mutex_unlock((connection + 16));
    v3 = dispatch_semaphore_create(0);
    if (__SCNetworkConnectionQueue_once != -1)
    {
      SCNetworkConnectionCopyStatistics_cold_2();
    }

    ne_session_get_info();
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v3);
    if (v14[3] && MEMORY[0x1B26F5920]() == MEMORY[0x1E69E9E80])
    {
      if (xpc_dictionary_get_value(v14[3], "SessionLegacyUserConfiguration"))
      {
        v4 = _CFXPCCreateCFObjectFromXPCObject();
      }

      else
      {
        v4 = 0;
      }

      xpc_release(v14[3]);
    }

    else
    {
      v4 = 0;
    }

    _Block_object_dispose(&v13, 8);
    return v4;
  }

  do
  {
    v5 = __SCNetworkConnectionSessionPort(connection);
    if (!v5)
    {
      goto LABEL_30;
    }

    v6 = pppcontroller_copyuseroptions(v5, v20, &v19, &v18);
  }

  while (__SCNetworkConnectionNeedsRetry(connection, "SCNetworkConnectionCopyUserOptions()", v6, &v18));
  if (!v20[0])
  {
    v9 = 0;
LABEL_23:
    v8 = v18;
    goto LABEL_24;
  }

  v7 = _SCUnserialize(&v17, 0, v20[0], v19);
  v8 = v18;
  if (!v7 && v18)
  {
    v8 = SCError();
    v18 = v8;
  }

  v9 = v17;
  if (!v8 && v17)
  {
    TypeID = CFDictionaryGetTypeID();
    v11 = CFGetTypeID(v9);
    v9 = v17;
    if (v11 != TypeID)
    {
      v8 = 1001;
      v18 = 1001;
LABEL_25:
      if (v9)
      {
        CFRelease(v9);
        v17 = 0;
        v8 = v18;
      }

      _SCErrorSet(v8);
      goto LABEL_30;
    }

    goto LABEL_23;
  }

LABEL_24:
  if (v8)
  {
    goto LABEL_25;
  }

  if (!v9)
  {
    v17 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

LABEL_30:
  pthread_mutex_unlock((connection + 16));
  return v17;
}

intptr_t __SCNetworkConnectionCopyUserOptions_block_invoke(void *a1, xpc_object_t object)
{
  if (object)
  {
    *(*(a1[4] + 8) + 24) = xpc_retain(object);
  }

  ne_session_release();
  v3 = a1[6];

  return dispatch_semaphore_signal(v3);
}

Boolean SCNetworkConnectionScheduleWithRunLoop(SCNetworkConnectionRef connection, CFRunLoopRef runLoop, CFStringRef runLoopMode)
{
  if (__SCNetworkConnectionInitialize_initialized != -1)
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (connection)
    {
      goto LABEL_3;
    }

LABEL_10:
    _SCErrorSet(1002);
    return 0;
  }

  if (!connection)
  {
    goto LABEL_10;
  }

LABEL_3:
  v6 = __kSCNetworkConnectionTypeID;
  v7 = CFGetTypeID(connection);
  if (!runLoopMode || !runLoop || v7 != v6)
  {
    goto LABEL_10;
  }

  return __SCNetworkConnectionScheduleWithRunLoop(connection, runLoop, runLoopMode, 0);
}

uint64_t __SCNetworkConnectionScheduleWithRunLoop(uint64_t a1, __CFRunLoop *a2, const __CFString *a3, NSObject *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v46 = 1001;
  pthread_mutex_lock((a1 + 16));
  if (!*(a1 + 232) || *(a1 + 288))
  {
    goto LABEL_3;
  }

  if (!a4)
  {
    if (!*(a1 + 217))
    {
      goto LABEL_11;
    }

LABEL_27:
    if (!_SC_isScheduled(a1, a2, a3, *(a1 + 280)))
    {
      CFRunLoopAddSource(a2, *(a1 + 224), a3);
    }

    _SC_schedule(a1, a2, a3, *(a1 + 280));
    goto LABEL_30;
  }

  if (*(a1 + 217))
  {
LABEL_3:
    v8 = 1002;
    goto LABEL_4;
  }

  do
  {
LABEL_11:
    if (*(a1 + 344))
    {
      if (!a2)
      {
        goto LABEL_20;
      }

      v45.version = 0;
      v45.info = a1;
      v45.retain = MEMORY[0x1E695D7C8];
      v45.release = MEMORY[0x1E695D7C0];
      memset(&v45.copyDescription, 0, 40);
      v45.perform = __SCNetworkConnectionCallBack;
      RunLoopSource = CFRunLoopSourceCreate(*MEMORY[0x1E695E480], 0, &v45);
      goto LABEL_19;
    }

    v11 = __SCNetworkConnectionSessionPort(a1);
    if (!v11)
    {
      goto LABEL_5;
    }

    v12 = pppcontroller_notification(v11, 1, &v46);
  }

  while (__SCNetworkConnectionNeedsRetry(a1, "__SCNetworkConnectionScheduleWithRunLoop()", v12, &v46));
  v8 = v46;
  if (v46)
  {
    goto LABEL_4;
  }

  if (a2)
  {
    RunLoopSource = CFMachPortCreateRunLoopSource(0, *(a1 + 208), 0);
LABEL_19:
    *(a1 + 224) = RunLoopSource;
    *(a1 + 280) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

LABEL_20:
  *(a1 + 217) = 1;
  if (!a4)
  {
    goto LABEL_27;
  }

  *(a1 + 288) = a4;
  dispatch_retain(a4);
  if (*(a1 + 344))
  {
LABEL_30:
    if (*(a1 + 344))
    {
      CFRetain(a1);
      if (__SCNetworkConnectionQueue_once != -1)
      {
        SCNetworkConnectionCopyStatistics_cold_2();
      }

      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 0x40000000;
      v41[2] = ____SCNetworkConnectionScheduleWithRunLoop_block_invoke_3;
      v41[3] = &__block_descriptor_tmp_137;
      v41[4] = a1;
      v41[5] = a1;
      ne_session_set_event_handler();
    }

    v20 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v20 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v20;
    }

    v21 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v20, v21))
    {
      v22 = _os_log_pack_size();
      v28 = v41 - ((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
      v29 = __error();
      v30 = _os_log_pack_fill(v28, v22, *v29, &dword_1AD2AD000, "%sscheduled", v41[0]);
      *v30 = 136315138;
      *(v30 + 4) = a1 + 88;
      __SC_log_send(7, v20, v21, v28);
    }

    v9 = 1;
    goto LABEL_6;
  }

  v14 = *(a1 + 208);
  Port = CFMachPortGetPort(v14);
  if (Port)
  {
    v16 = Port;
    v17 = Port;
    if (__SCNetworkConnectionQueue_once != -1)
    {
      SCNetworkConnectionCopyStatistics_cold_2();
    }

    v18 = dispatch_source_create(MEMORY[0x1E69E96D8], v17, 0, __SCNetworkConnectionQueue_q);
    if (v18)
    {
      v19 = v18;
      CFRetain(a1);
      dispatch_set_context(v19, a1);
      dispatch_set_finalizer_f(v19, dispatch_CFRelease_0);
      CFRetain(v14);
      dispatch_retain(a4);
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 0x40000000;
      v43[2] = ____SCNetworkConnectionScheduleWithRunLoop_block_invoke;
      v43[3] = &__block_descriptor_tmp_133;
      v44 = v16;
      v43[4] = a1;
      v43[5] = a4;
      dispatch_source_set_event_handler(v19, v43);
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 0x40000000;
      v42[2] = ____SCNetworkConnectionScheduleWithRunLoop_block_invoke_2;
      v42[3] = &__block_descriptor_tmp_134;
      v42[4] = v14;
      v42[5] = v19;
      v42[6] = a4;
      dispatch_source_set_cancel_handler(v19, v42);
      *(a1 + 296) = v19;
      dispatch_resume(v19);
      goto LABEL_30;
    }

    v31 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v31 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v31;
    }

    v32 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v31, v32))
    {
      v33 = _os_log_pack_size();
      v39 = v41 - ((MEMORY[0x1EEE9AC00](v33, v34, v35, v36, v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
      v40 = __error();
      *_os_log_pack_fill(v39, v33, *v40, &dword_1AD2AD000, "dispatch_source_create() failed") = 0;
      __SC_log_send(5, v31, v32, v39);
    }
  }

  dispatch_release(*(a1 + 288));
  *(a1 + 288) = 0;
  v8 = 1001;
LABEL_4:
  _SCErrorSet(v8);
LABEL_5:
  v9 = 0;
LABEL_6:
  pthread_mutex_unlock((a1 + 16));
  return v9;
}

Boolean SCNetworkConnectionUnscheduleFromRunLoop(SCNetworkConnectionRef connection, CFRunLoopRef runLoop, CFStringRef runLoopMode)
{
  if (__SCNetworkConnectionInitialize_initialized != -1)
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (connection)
    {
      goto LABEL_3;
    }

LABEL_10:
    _SCErrorSet(1002);
    return 0;
  }

  if (!connection)
  {
    goto LABEL_10;
  }

LABEL_3:
  v6 = __kSCNetworkConnectionTypeID;
  v7 = CFGetTypeID(connection);
  if (!runLoopMode || !runLoop || v7 != v6)
  {
    goto LABEL_10;
  }

  return __SCNetworkConnectionUnscheduleFromRunLoop(connection, runLoop, runLoopMode);
}

uint64_t __SCNetworkConnectionUnscheduleFromRunLoop(uint64_t a1, void *a2, const __CFString *a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  HIDWORD(v24[0]) = 1001;
  CFRetain(a1);
  pthread_mutex_lock((a1 + 16));
  if (a2)
  {
    if (*(a1 + 217) && !*(a1 + 288))
    {
      if (!_SC_unschedule(a1, a2, a3, *(a1 + 280), 0))
      {
        v20 = 1001;
        goto LABEL_20;
      }

      if (CFArrayGetCount(*(a1 + 280)))
      {
        if (!_SC_isScheduled(a1, a2, a3, *(a1 + 280)))
        {
          CFRunLoopRemoveSource(a2, *(a1 + 224), a3);
        }

        goto LABEL_14;
      }

      v7 = (a1 + 224);
      CFRunLoopRemoveSource(a2, *(a1 + 224), a3);
      CFRelease(*(a1 + 280));
      *(a1 + 280) = 0;
      CFRunLoopSourceInvalidate(*(a1 + 224));
      CFRelease(*(a1 + 224));
      goto LABEL_11;
    }

LABEL_19:
    v20 = 1002;
    goto LABEL_20;
  }

  v6 = *(a1 + 288);
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = (a1 + 288);
  if (*(a1 + 344) || !*(a1 + 296) || (dispatch_source_cancel(*(a1 + 296)), *(a1 + 296) = 0, (v6 = *(a1 + 288)) != 0))
  {
    dispatch_release(v6);
LABEL_11:
    *v7 = 0;
  }

  *(a1 + 217) = 0;
  if (!*(a1 + 344))
  {
    v22 = __SCNetworkConnectionSessionPort(a1);
    if (!v22)
    {
      goto LABEL_21;
    }

    v23 = pppcontroller_notification(v22, 0, v24 + 1);
    if (__SCNetworkConnectionNeedsRetry(a1, "__SCNetworkConnectionUnscheduleFromRunLoop pppcontroller_notification()", v23, v24 + 1))
    {
      v20 = 0;
      HIDWORD(v24[0]) = 0;
      goto LABEL_33;
    }

    v20 = HIDWORD(v24[0]);
    if (!v23)
    {
LABEL_33:
      if (!v20)
      {
        goto LABEL_14;
      }
    }

LABEL_20:
    _SCErrorSet(v20);
LABEL_21:
    v19 = 0;
    goto LABEL_22;
  }

  ne_session_cancel();
LABEL_14:
  v8 = __log_SCNetworkConnection_log;
  if (!__log_SCNetworkConnection_log)
  {
    v8 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
    __log_SCNetworkConnection_log = v8;
  }

  v9 = _SC_syslog_os_log_mapping(7);
  if (__SC_log_enabled(7, v8, v9))
  {
    v10 = _os_log_pack_size();
    v16 = v24 - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = __error();
    v18 = _os_log_pack_fill(v16, v10, *v17, &dword_1AD2AD000, "%sunscheduled", v24[0]);
    *v18 = 136315138;
    *(v18 + 4) = a1 + 88;
    __SC_log_send(7, v8, v9, v16);
  }

  v19 = 1;
LABEL_22:
  pthread_mutex_unlock((a1 + 16));
  CFRelease(a1);
  return v19;
}

Boolean SCNetworkConnectionSetDispatchQueue(SCNetworkConnectionRef connection, dispatch_queue_t queue)
{
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!connection)
    {
LABEL_12:
      _SCErrorSet(1002);
      return 0;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!connection)
    {
      goto LABEL_12;
    }
  }

  v4 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(connection) != v4)
  {
    goto LABEL_12;
  }

  if (queue)
  {

    return __SCNetworkConnectionScheduleWithRunLoop(connection, 0, 0, queue);
  }

  else
  {

    return __SCNetworkConnectionUnscheduleFromRunLoop(connection, 0, 0);
  }
}

uint64_t SCNetworkConnectionIsOnDemandSuspended(const __CFDictionary **cf)
{
  v9 = *MEMORY[0x1E69E9840];
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_12:
      v7 = 1002;
      goto LABEL_13;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_12;
    }
  }

  v2 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_12;
  }

  v3 = cf[39];
  if (v3)
  {
    valuePtr = 0;
    Value = CFDictionaryGetValue(v3, @"OnDemandSuspended");
    TypeID = CFNumberGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID && CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr) && valuePtr)
      {
        return 1;
      }
    }
  }

  v7 = 0;
LABEL_13:
  _SCErrorSet(v7);
  return 0;
}

uint64_t SCNetworkConnectionCopyOnDemandInfo(CFDictionaryRef *cf, void *a2, _DWORD *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_22:
      v13 = 1002;
      goto LABEL_23;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_22;
    }
  }

  v6 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(cf) != v6)
  {
    goto LABEL_22;
  }

  if (!cf[10])
  {
    v13 = 5001;
LABEL_23:
    _SCErrorSet(v13);
    return 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = -1;
  }

  v7 = cf[39];
  if (v7)
  {
    if (a2)
    {
      Value = CFDictionaryGetValue(v7, @"RemoteAddress");
      TypeID = CFStringGetTypeID();
      if (Value)
      {
        if (CFGetTypeID(Value) == TypeID)
        {
          *a2 = Value;
          CFRetain(Value);
        }
      }
    }

    if (a3)
    {
      valuePtr = 0;
      v10 = CFDictionaryGetValue(cf[39], @"Status");
      v11 = CFNumberGetTypeID();
      if (v10)
      {
        if (CFGetTypeID(v10) == v11)
        {
          if (CFNumberGetValue(v10, kCFNumberIntType, &valuePtr))
          {
            *a3 = valuePtr;
          }
        }
      }
    }
  }

  return *(cf + 308);
}

uint64_t SCNetworkConnectionGetReachabilityInfo(CFDictionaryRef *cf, _DWORD *a2, _DWORD *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_23:
      v13 = 1002;
      goto LABEL_24;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_23;
    }
  }

  v6 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(cf) != v6)
  {
    goto LABEL_23;
  }

  if (!cf[10])
  {
    v13 = 5001;
LABEL_24:
    _SCErrorSet(v13);
    return 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  v7 = cf[39];
  if (v7)
  {
    if (a2)
    {
      valuePtr = 0;
      Value = CFDictionaryGetValue(v7, @"ReachFlags");
      TypeID = CFNumberGetTypeID();
      if (Value)
      {
        if (CFGetTypeID(Value) == TypeID && CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
        {
          *a2 = valuePtr;
        }
      }
    }

    if (a3)
    {
      valuePtr = 0;
      v10 = CFDictionaryGetValue(cf[39], @"ReachInterfaceIndex");
      v11 = CFNumberGetTypeID();
      if (v10)
      {
        if (CFGetTypeID(v10) == v11)
        {
          if (CFNumberGetValue(v10, kCFNumberIntType, &valuePtr))
          {
            *a3 = valuePtr;
          }
        }
      }
    }
  }

  return 1;
}

uint64_t SCNetworkConnectionGetType(unsigned int *cf)
{
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_8:
      v4 = 1002;
      goto LABEL_9;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_8;
    }
  }

  v2 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_8;
  }

  if (*(cf + 10))
  {
    _SCErrorSet(0);
    return cf[76];
  }

  v4 = 5001;
LABEL_9:
  _SCErrorSet(v4);
  return 0;
}

const __CFDictionary *SCNetworkConnectionGetServiceIdentifier(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 80))
  {
    return 0xFFFFFFFFLL;
  }

  valuePtr = 0;
  result = *(a1 + 312);
  if (result)
  {
    Value = CFDictionaryGetValue(result, @"ServiceIdentifier");
    TypeID = CFNumberGetTypeID();
    if (Value && CFGetTypeID(Value) == TypeID)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _SC_domainEndsWithDomain(const __CFString *a1, const __CFString *cf1)
{
  v2 = cf1;
  if (CFEqual(cf1, @"*"))
  {
    return 1;
  }

  HasSuffix = CFStringHasSuffix(a1, @".");
  if (HasSuffix)
  {
    v11.length = CFStringGetLength(a1) - 1;
    v11.location = 0;
    a1 = CFStringCreateWithSubstring(0, a1, v11);
    if (!a1)
    {
      return 0;
    }
  }

  v6 = CFStringHasSuffix(v2, @".");
  if (v6)
  {
    v12.length = CFStringGetLength(v2) - 1;
    v12.location = 0;
    v2 = CFStringCreateWithSubstring(0, v2, v12);
    if (!v2)
    {
      v4 = 0;
      v7 = 0;
      if (!HasSuffix)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  if (!CFStringHasPrefix(v2, @"*."))
  {
    v9 = v2;
    goto LABEL_16;
  }

  v13.length = CFStringGetLength(v2) - 2;
  v13.location = 2;
  v8 = CFStringCreateWithSubstring(0, v2, v13);
  if (v8)
  {
    v9 = v8;
    if (v6)
    {
      CFRelease(v2);
    }

    v7 = 1;
LABEL_16:
    v4 = CFStringHasSuffix(a1, v9);
    v2 = v9;
    if (!HasSuffix)
    {
      goto LABEL_20;
    }

LABEL_19:
    CFRelease(a1);
    goto LABEL_20;
  }

  v4 = 0;
  if (HasSuffix)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (v7)
  {
    CFRelease(v2);
  }

  return v4;
}

uint64_t _SC_hostMatchesDomain(const __CFString *a1, const __CFString *a2)
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

  v5 = CFStringGetTypeID();
  if (!a2 || CFGetTypeID(a2) != v5)
  {
    return 0;
  }

  StringByTrimmingDotsAndStars = _SC_createStringByTrimmingDotsAndStars(a1);
  v7 = _SC_createStringByTrimmingDotsAndStars(a2);
  v8 = CFStringGetTypeID();
  if (StringByTrimmingDotsAndStars)
  {
    if (CFGetTypeID(StringByTrimmingDotsAndStars) != v8 || (v9 = CFStringGetTypeID(), !v7) || CFGetTypeID(v7) != v9)
    {
      v13 = 0;
      goto LABEL_14;
    }

    CountOfStringInString = _SC_getCountOfStringInString(StringByTrimmingDotsAndStars);
    v11 = _SC_getCountOfStringInString(v7);
    if (CountOfStringInString == v11)
    {
      HasSuffix = CFEqual(StringByTrimmingDotsAndStars, v7);
    }

    else
    {
      v13 = 0;
      if (v11 < 1 || v11 >= CountOfStringInString)
      {
LABEL_14:
        CFRelease(StringByTrimmingDotsAndStars);
        if (!v7)
        {
          return v13;
        }

        goto LABEL_17;
      }

      v15.location = 0;
      v15.length = 0;
      CFStringReplace(v7, v15, @".");
      HasSuffix = CFStringHasSuffix(StringByTrimmingDotsAndStars, v7);
    }

    v13 = HasSuffix;
    goto LABEL_14;
  }

  v13 = 0;
  if (v7)
  {
LABEL_17:
    CFRelease(v7);
  }

  return v13;
}

CFMutableStringRef _SC_createStringByTrimmingDotsAndStars(CFStringRef theString)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  if (!_SC_getNotDotOrStarCharacterSet_notDotOrStar)
  {
    v3 = CFCharacterSetCreateWithCharactersInString(v2, @".*");
    if (v3)
    {
      v4 = v3;
      _SC_getNotDotOrStarCharacterSet_notDotOrStar = CFCharacterSetCreateInvertedSet(v2, v3);
      CFRelease(v4);
    }
  }

  v5 = _SC_getNotDotOrStarCharacterSet_notDotOrStar;
  Length = CFStringGetLength(theString);
  MutableCopy = CFStringCreateMutableCopy(v2, Length, theString);
  result.location = 0;
  result.length = 0;
  v12.location = Length;
  v12.length = 0;
  v16.location = 0;
  v16.length = Length;
  if (CFStringFindCharacterFromSet(theString, v5, v16, 0, &result))
  {
    v17.location = 0;
    v17.length = Length;
    CharacterFromSet = CFStringFindCharacterFromSet(theString, v5, v17, 4uLL, &v12);
    location = v12.location;
    if (CharacterFromSet && (result.location == -1 || v12.location == -1 || result.location > v12.location))
    {
      CFRelease(MutableCopy);
      return 0;
    }
  }

  else
  {
    location = Length;
  }

  if (Length > location + 1)
  {
    v15.location = location + 1;
    v15.length = Length - (location + 1);
    CFStringReplace(MutableCopy, v15, &stru_1F22591E8);
  }

  v10.length = result.location;
  if (result.location >= 1)
  {
    v10.location = 0;
    CFStringReplace(MutableCopy, v10, &stru_1F22591E8);
  }

  return MutableCopy;
}

CFIndex _SC_getCountOfStringInString(const __CFString *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v7.length = CFStringGetLength(a1);
  v7.location = 0;
  Results = CFStringCreateArrayWithFindResults(v2, a1, @".", v7, 0);
  if (!Results)
  {
    return 0;
  }

  v4 = Results;
  Count = CFArrayGetCount(Results);
  CFRelease(v4);
  return Count;
}

uint64_t __SCNetworkConnectionCopyOnDemandInfoWithName(uint64_t a1, const __CFString *a2, uint64_t a3, CFTypeRef *a4, _DWORD *a5, CFTypeRef *a6)
{
  v9 = a3;
  v65 = *MEMORY[0x1E69E9840];
  v64 = 0;
  v11 = __SCNetworkConnectionCopyOnDemandConfiguration();
  if (!v11)
  {
    goto LABEL_60;
  }

  v12 = v11;
  v13 = __SCNetworkConnectionCopyMatchingTriggerWithName(v11, a2, 0, v9, 0, &v64, 0);
  v14 = v13;
  if (v13 && v64)
  {
    value = 0;
    HIDWORD(v62) = 0;
    if (!CFDictionaryGetValueIfPresent(v13, @"Status", &value) || (v15 = value, TypeID = CFNumberGetTypeID(), !v15) || CFGetTypeID(v15) != TypeID || !CFNumberGetValue(value, kCFNumberSInt32Type, &v62 + 4))
    {
      HIDWORD(v62) = 0;
    }

    if (a5)
    {
      *a5 = HIDWORD(v62);
    }

    if (a4)
    {
      v17 = CFDictionaryGetValue(v14, @"ServiceID");
      *a4 = v17;
      v18 = CFStringGetTypeID();
      if (v17 && CFGetTypeID(v17) == v18)
      {
        *a4 = v17;
        if (CFStringGetLength(v17) >= 1)
        {
          CFRetain(*a4);
          goto LABEL_16;
        }
      }

      else
      {
        *a4 = 0;
      }

      v35 = __log_SCNetworkConnection_log;
      if (!__log_SCNetworkConnection_log)
      {
        v35 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
        __log_SCNetworkConnection_log = v35;
      }

      v36 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v35, v36))
      {
        v37 = _os_log_pack_size();
        v43 = &v62 - ((MEMORY[0x1EEE9AC00](v37, v38, v39, v40, v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
        v44 = __error();
        v45 = _os_log_pack_fill(v43, v37, *v44, &dword_1AD2AD000, "OnDemand%s configuration error, no serviceID", v62);
        v46 = " (on retry)";
        if (!v9)
        {
          v46 = "";
        }

        *v45 = 136315138;
        *(v45 + 4) = v46;
        __SC_log_send(6, v35, v36, v43);
      }

      *a4 = 0;
      v19 = 1;
      if (!a6)
      {
LABEL_17:
        if (!v19)
        {
LABEL_18:
          v20 = __log_SCNetworkConnection_log;
          if (!__log_SCNetworkConnection_log)
          {
            v20 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
            __log_SCNetworkConnection_log = v20;
          }

          v21 = _SC_syslog_os_log_mapping(6);
          if (__SC_log_enabled(6, v20, v21))
          {
            v22 = _os_log_pack_size();
            v28 = &v62 - ((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
            v29 = __error();
            v30 = _os_log_pack_fill(v28, v22, *v29, &dword_1AD2AD000, "OnDemand%s match, connection status = %d", v62, value);
            v31 = " (on retry)";
            v32 = HIDWORD(v62);
            if (!v9)
            {
              v31 = "";
            }

            *v30 = 136315394;
            *(v30 + 4) = v31;
            *(v30 + 12) = 1024;
            *(v30 + 14) = v32;
            __SC_log_send(6, v20, v21, v28);
          }

          v33 = 0;
          v34 = 0;
LABEL_56:
          CFRelease(v14);
          CFRelease(v12);
          if (!v33)
          {
            return 1;
          }

          goto LABEL_59;
        }

        goto LABEL_48;
      }

LABEL_35:
      v47 = CFDictionaryGetValue(v14, @"RemoteAddress");
      *a6 = v47;
      v48 = CFStringGetTypeID();
      if (v47 && CFGetTypeID(v47) == v48)
      {
        *a6 = v47;
        if (CFStringGetLength(v47) >= 1)
        {
          CFRetain(*a6);
          if (!v19)
          {
            goto LABEL_18;
          }

          goto LABEL_48;
        }
      }

      else
      {
        *a6 = 0;
      }

      v49 = __log_SCNetworkConnection_log;
      if (!__log_SCNetworkConnection_log)
      {
        v49 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
        __log_SCNetworkConnection_log = v49;
      }

      v50 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v49, v50))
      {
        v51 = _os_log_pack_size();
        v57 = &v62 - ((MEMORY[0x1EEE9AC00](v51, v52, v53, v54, v55, v56) + 15) & 0xFFFFFFFFFFFFFFF0);
        v58 = __error();
        v59 = _os_log_pack_fill(v57, v51, *v58, &dword_1AD2AD000, "OnDemand%s configuration error, no server address", v62);
        v60 = " (on retry)";
        if (!v9)
        {
          v60 = "";
        }

        *v59 = 136315138;
        *(v59 + 4) = v60;
        __SC_log_send(6, v49, v50, v57);
      }

      *a6 = 0;
LABEL_48:
      if (a4 && *a4)
      {
        CFRelease(*a4);
        *a4 = 0;
      }

      if (a6 && *a6)
      {
        CFRelease(*a6);
        *a6 = 0;
      }

      v34 = 1001;
      goto LABEL_55;
    }

LABEL_16:
    v19 = 0;
    if (!a6)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

  if (v13)
  {
    v34 = 0;
LABEL_55:
    v33 = 1;
    goto LABEL_56;
  }

  CFRelease(v12);
  v34 = 0;
LABEL_59:
  LODWORD(v11) = v34;
LABEL_60:
  _SCErrorSet(v11);
  return 0;
}

CFTypeRef __SCNetworkConnectionCopyOnDemandConfiguration()
{
  v55 = *MEMORY[0x1E69E9840];
  check = 1;
  state64 = 0;
  pthread_mutex_lock(&onDemand_notify_lock);
  v0 = onDemand_notify_token;
  if (onDemand_notify_token == -1)
  {
    v14 = notify_register_check("com.apple.system.SCNetworkConnectionOnDemand", &onDemand_notify_token);
    if (v14)
    {
      v15 = v14;
      v16 = __log_SCNetworkConnection_log;
      if (!__log_SCNetworkConnection_log)
      {
        v16 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
        __log_SCNetworkConnection_log = v16;
      }

      v17 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v16, v17))
      {
        v18 = _os_log_pack_size();
        v24 = &v52 - ((MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
        v25 = __error();
        v26 = _os_log_pack_fill(v24, v18, *v25, &dword_1AD2AD000, "notify_register_check() failed, status=%d", v52);
        *v26 = 67109120;
        v26[1] = v15;
        __SC_log_send(5, v16, v17, v24);
      }

      goto LABEL_14;
    }

    v0 = onDemand_notify_token;
    if (onDemand_notify_token == -1)
    {
      goto LABEL_15;
    }
  }

  v1 = notify_check(v0, &check);
  if (v1)
  {
    v2 = v1;
    v3 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v3 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v3;
    }

    v4 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v3, v4))
    {
      goto LABEL_8;
    }

    v5 = _os_log_pack_size();
    v11 = &v52 - ((MEMORY[0x1EEE9AC00](v5, v6, v7, v8, v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = *__error();
    v13 = _os_log_pack_fill(v11, v5, v12, &dword_1AD2AD000, "notify_check() failed, status=%d");
LABEL_7:
    *v13 = 67109120;
    v13[1] = v2;
    __SC_log_send(5, v3, v4, v11);
LABEL_8:
    notify_cancel(onDemand_notify_token);
LABEL_14:
    onDemand_notify_token = -1;
    goto LABEL_15;
  }

  if (check)
  {
    if (onDemand_notify_token != -1)
    {
      state = notify_get_state(onDemand_notify_token, &state64);
      if (state)
      {
        v2 = state;
        v3 = __log_SCNetworkConnection_log;
        if (!__log_SCNetworkConnection_log)
        {
          v3 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
          __log_SCNetworkConnection_log = v3;
        }

        v4 = _SC_syslog_os_log_mapping(5);
        if (!__SC_log_enabled(5, v3, v4))
        {
          goto LABEL_8;
        }

        v45 = _os_log_pack_size();
        v11 = &v52 - ((MEMORY[0x1EEE9AC00](v45, v46, v47, v48, v49, v50) + 15) & 0xFFFFFFFFFFFFFFF0);
        v51 = *__error();
        v13 = _os_log_pack_fill(v11, v45, v51, &dword_1AD2AD000, "notify_get_state() failed, status=%d");
        goto LABEL_7;
      }
    }
  }

LABEL_15:
  if (check || onDemand_force_refresh)
  {
    v27 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v27 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v27;
    }

    v28 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v27, v28))
    {
      v29 = _os_log_pack_size();
      v35 = &v52 - ((MEMORY[0x1EEE9AC00](v29, v30, v31, v32, v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
      v36 = __error();
      v37 = _os_log_pack_fill(v35, v29, *v36, &dword_1AD2AD000, "OnDemand information %s", v52);
      if (onDemand_configuration)
      {
        v38 = "updated";
      }

      else
      {
        v38 = "fetched";
      }

      *v37 = 136315138;
      *(v37 + 4) = v38;
      __SC_log_send(6, v27, v28, v35);
    }

    if (onDemand_configuration)
    {
      CFRelease(onDemand_configuration);
      onDemand_configuration = 0;
    }

    if (state64 || onDemand_force_refresh)
    {
      NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, @"State:", @"OnDemand");
      onDemand_configuration = SCDynamicStoreCopyValue(0, NetworkGlobalEntity);
      CFRelease(NetworkGlobalEntity);
      v40 = onDemand_configuration;
      if (onDemand_configuration)
      {
        TypeID = CFDictionaryGetTypeID();
        if (CFGetTypeID(v40) != TypeID)
        {
          CFRelease(onDemand_configuration);
          onDemand_configuration = 0;
        }
      }
    }

    onDemand_force_refresh = 0;
  }

  if (onDemand_configuration)
  {
    v42 = CFRetain(onDemand_configuration);
  }

  else
  {
    v42 = 0;
  }

  pthread_mutex_unlock(&onDemand_notify_lock);
  return v42;
}

const void *__SCNetworkConnectionCopyMatchingTriggerWithName(const __CFDictionary *a1, const __CFString *a2, int a3, int a4, CFTypeRef *a5, _BYTE *a6, CFTypeRef *a7)
{
  v8 = a6;
  v9 = a5;
  v60 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    *a6 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  Value = CFDictionaryGetValue(a1, @"Triggers");
  TypeID = CFArrayGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID || (Count = CFArrayGetCount(Value), Count < 1))
  {
    ValueAtIndex = 0;
    v15 = 0;
    goto LABEL_76;
  }

  v52 = a3;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  allocator = *MEMORY[0x1E695E480];
  v47 = *MEMORY[0x1E695E4C0];
  v48 = *MEMORY[0x1E695E4D0];
  v51 = a4;
  v56 = Value;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Value, v16);
    v18 = CFDictionaryGetTypeID();
    if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != v18)
    {
      goto LABEL_19;
    }

    v19 = CFDictionaryGetValue(ValueAtIndex, @"Action");
    v20 = CFStringGetTypeID();
    if (v19 && CFGetTypeID(v19) == v20 && CFEqual(v19, @"Connect"))
    {
      if (__SCNetworkConnectionShouldNeverMatch(ValueAtIndex, a2, v52))
      {
        ValueAtIndex = v14;
LABEL_16:
        Value = v56;
        goto LABEL_20;
      }

      v53 = v15;
      Match = 0;
      v35 = 0;
      v36 = 0;
      Value = v56;
    }

    else
    {
      Value = v56;
      if (__SCNetworkConnectionShouldIgnoreTrigger(ValueAtIndex))
      {
        v15 = 5002;
LABEL_19:
        ValueAtIndex = v14;
        goto LABEL_20;
      }

      v21 = CFDictionaryGetValue(ValueAtIndex, @"Action");
      v22 = CFDictionaryGetValue(ValueAtIndex, @"ActionParameters");
      if (v21 && v22)
      {
        cf = v22;
        if (!CFEqual(v21, @"EvaluateConnection"))
        {
          goto LABEL_19;
        }

        v50 = v8;
        v23 = CFArrayGetTypeID();
        if (CFGetTypeID(cf) != v23 || (v54 = CFArrayGetCount(cf), v54 < 1))
        {
          ValueAtIndex = v14;
          goto LABEL_20;
        }

        v53 = v15;
        v45 = v9;
        v46 = a7;
        v24 = 0;
        while (1)
        {
          v25 = CFArrayGetValueAtIndex(cf, v24);
          v26 = CFDictionaryGetTypeID();
          if (v25)
          {
            if (CFGetTypeID(v25) == v26)
            {
              v27 = CFDictionaryGetValue(v25, @"Domains");
              v28 = CFArrayGetTypeID();
              if (v27)
              {
                if (CFGetTypeID(v27) == v28)
                {
                  v29 = CFArrayGetCount(v27);
                  if (v29 >= 1)
                  {
                    break;
                  }
                }
              }
            }
          }

LABEL_38:
          if (++v24 == v54)
          {
            goto LABEL_39;
          }
        }

        v30 = v29;
        v31 = 0;
        while (1)
        {
          Match = CFArrayGetValueAtIndex(v27, v31);
          v33 = CFStringGetTypeID();
          if (Match)
          {
            if (CFGetTypeID(Match) == v33 && _SC_domainEndsWithDomain(a2, Match))
            {
              break;
            }
          }

          if (v30 == ++v31)
          {
            goto LABEL_38;
          }
        }

        v42 = CFDictionaryGetValue(v25, @"DomainAction");
        v43 = CFStringGetTypeID();
        if (v42 && CFGetTypeID(v42) == v43 && CFEqual(v42, @"NeverConnect"))
        {
LABEL_39:
          ValueAtIndex = v14;
          v8 = v50;
          v9 = v45;
          a7 = v46;
          a4 = v51;
          goto LABEL_16;
        }

        v36 = CFDictionaryGetValue(v25, @"RequiredURLStringProbe");
        v35 = 1;
        v8 = v50;
        v9 = v45;
        a7 = v46;
        Value = v56;
      }

      else
      {
        v53 = v15;
        if (!a4 && (v34 = __SCNetworkConnectionDomainGetMatch(ValueAtIndex, a2, 0), v34 | v14))
        {
          Match = v34;
          v35 = 0;
          if (!v34)
          {
LABEL_45:
            ValueAtIndex = v14;
            a4 = v51;
            v15 = v53;
            goto LABEL_20;
          }
        }

        else
        {
          v35 = 1;
          Match = __SCNetworkConnectionDomainGetMatch(ValueAtIndex, a2, 1);
          if (!Match)
          {
            goto LABEL_45;
          }
        }

        v36 = 0;
      }

      if (__SCNetworkConnectionShouldNeverMatch(ValueAtIndex, a2, v52))
      {
        goto LABEL_45;
      }
    }

    if (v9)
    {
      valuePtr = 2;
      if (*v9)
      {
        CFRelease(*v9);
        *v9 = 0;
      }

      v37 = v9;
      Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v39 = CFNumberCreate(allocator, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(Mutable, @"OnDemandMatchInfoVPNType", v39);
      CFRelease(v39);
      if (Match)
      {
        CFDictionarySetValue(Mutable, @"OnDemandMatchInfoDomain", Match);
      }

      if (v35)
      {
        v40 = v48;
      }

      else
      {
        v40 = v47;
      }

      CFDictionarySetValue(Mutable, @"OnDemandMatchInfoOnRetry", v40);
      v9 = v37;
      *v37 = Mutable;
      Value = v56;
    }

    a4 = v51;
    if (a7)
    {
      if (*a7)
      {
        CFRelease(*a7);
        *a7 = 0;
      }

      if (v36)
      {
        *a7 = CFRetain(v36);
      }
    }

    v41 = v51 ? 0 : v35;
    if (v8 && (v41 & 1) == 0)
    {
      break;
    }

    v15 = v53;
    if (!v41)
    {
      goto LABEL_78;
    }

LABEL_20:
    ++v16;
    v14 = ValueAtIndex;
    if (v16 == Count)
    {
      goto LABEL_78;
    }
  }

  *v8 = 1;
  v15 = v53;
LABEL_78:
  if (ValueAtIndex)
  {
    CFRetain(ValueAtIndex);
  }

LABEL_76:
  _SCErrorSet(v15);
  return ValueAtIndex;
}

Boolean SCNetworkConnectionCopyUserPreferences(CFDictionaryRef selectionOptions, CFStringRef *serviceID, CFDictionaryRef *userOptions)
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (__SCNetworkConnectionInitialize_initialized != -1)
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (selectionOptions)
    {
      goto LABEL_3;
    }

    return __SCNetworkConnectionCopyUserPreferencesInternal(selectionOptions, serviceID, userOptions);
  }

  if (!selectionOptions)
  {
    return __SCNetworkConnectionCopyUserPreferencesInternal(selectionOptions, serviceID, userOptions);
  }

LABEL_3:
  Value = CFDictionaryGetValue(selectionOptions, @"OnDemandHostName");
  TypeID = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return __SCNetworkConnectionCopyUserPreferencesInternal(selectionOptions, serviceID, userOptions);
  }

  v30[0] = 0;
  v29 = -1;
  v8 = CFDictionaryGetValue(selectionOptions, @"OnDemandRetry");
  v9 = CFBooleanGetTypeID();
  if (v8 && (v10 = v9, v9 = CFGetTypeID(v8), v9 == v10))
  {
    v9 = CFBooleanGetValue(v8);
    v11 = v9;
  }

  else
  {
    v11 = 1;
  }

  v12 = __SCNetworkConnectionCopyOnDemandInfoWithName(v9, Value, v11, v30, &v29, 0);
  if (debug >= 2)
  {
    v13 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v13 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v13;
    }

    v14 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v13, v14))
    {
      v15 = _os_log_pack_size();
      v27 = &v27;
      v21 = &v27 - ((MEMORY[0x1EEE9AC00](v15, v16, v17, v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = __error();
      v23 = _os_log_pack_fill(v21, v15, *v22, &dword_1AD2AD000, "__SCNetworkConnectionCopyOnDemandInfoWithName: return %d, status %d", v27, v28);
      v24 = v29;
      *v23 = 67109376;
      *(v23 + 4) = v12;
      *(v23 + 8) = 1024;
      *(v23 + 10) = v24;
      __SC_log_send(6, v13, v14, v21);
    }
  }

  if (!v12)
  {
    if (!v11)
    {
      return 0;
    }

    return __SCNetworkConnectionCopyUserPreferencesInternal(selectionOptions, serviceID, userOptions);
  }

  result = v30[0];
  if (v29 == 2)
  {
    if (v30[0])
    {
      CFRelease(v30[0]);
      return 0;
    }
  }

  else
  {
    *serviceID = v30[0];
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *userOptions = Mutable;
    CFDictionarySetValue(Mutable, @"OnDemandHostName", Value);
    return 1;
  }

  return result;
}

uint64_t __SCNetworkConnectionCopyUserPreferencesInternal(const __CFDictionary *a1, CFStringRef *a2, CFDictionaryRef *a3)
{
  v164 = *MEMORY[0x1E69E9840];
  check = 1;
  v6 = notify_userprefs_token;
  if (notify_userprefs_token != -1)
  {
    goto LABEL_2;
  }

  v20 = notify_register_check("com.apple.networkConnect", &notify_userprefs_token);
  if (v20)
  {
    v8 = v20;
    v9 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v9 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v9;
    }

    v10 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v9, v10))
    {
      goto LABEL_13;
    }

    v21 = _os_log_pack_size();
    v17 = &v146 - ((MEMORY[0x1EEE9AC00](v21, v22, v23, v24, v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = *__error();
    v19 = _os_log_pack_fill(v17, v21, v27, &dword_1AD2AD000, "notify_register_check() failed, status=%d");
    goto LABEL_12;
  }

  notify_check(notify_userprefs_token, &check);
  check = 1;
  v6 = notify_userprefs_token;
  if (notify_userprefs_token != -1)
  {
LABEL_2:
    v7 = notify_check(v6, &check);
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = v7;
    v9 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v9 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v9;
    }

    v10 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v9, v10))
    {
LABEL_13:
      notify_cancel(notify_userprefs_token);
      notify_userprefs_token = -1;
LABEL_14:
      if (!check)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v11 = _os_log_pack_size();
    v17 = &v146 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = *__error();
    v19 = _os_log_pack_fill(v17, v11, v18, &dword_1AD2AD000, "notify_check() failed, status=%d");
LABEL_12:
    *v19 = 67109120;
    v19[1] = v8;
    __SC_log_send(5, v9, v10, v17);
    goto LABEL_13;
  }

LABEL_15:
  CFPreferencesAppSynchronize(@"com.apple.networkConnect");
LABEL_16:
  *a2 = 0;
  *a3 = 0;
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"OnDemandHostName");
    if (Value)
    {
      v29 = Value;
      TypeID = CFStringGetTypeID();
    }

    else
    {
      v29 = CFDictionaryGetValue(a1, @"OnDemandHostName");
      TypeID = CFStringGetTypeID();
      if (!v29)
      {
        goto LABEL_67;
      }
    }

    if (CFGetTypeID(v29) == TypeID)
    {
      v36 = CFDictionaryGetValue(a1, @"OnDemandPriority");
      v37 = CFStringGetTypeID();
      if (!v36 || CFGetTypeID(v36) != v37)
      {
        v36 = @"Default";
      }

      v158 = v36;
      v38 = *MEMORY[0x1E695E8B8];
      v39 = *MEMORY[0x1E695E8B0];
      v40 = CFPreferencesCopyKeyList(@"com.apple.networkConnect", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
      v41 = CFArrayGetTypeID();
      if (v40)
      {
        if (CFGetTypeID(v40) != v41 || (v42 = CFPreferencesCopyMultiple(v40, @"com.apple.networkConnect", v38, v39), v43 = CFDictionaryGetTypeID(), !v42))
        {
          v70 = 0;
          v93 = v40;
          goto LABEL_100;
        }

        v157 = v42;
        if (CFGetTypeID(v42) == v43)
        {
          Count = CFArrayGetCount(v40);
          if (Count >= 1)
          {
            v146 = @"OnDemandPriority";
            v147 = a2;
            v151 = a3;
            v152 = 0;
            v148 = 0;
            v149 = 0;
            v44 = 0;
            v159 = @"PPP";
            v155 = @"OnDemandEnabled";
            v156 = v40;
            v150 = @"OnDemandDomains";
            v160 = a1;
            do
            {
              valuePtr = 0;
              ValueAtIndex = CFArrayGetValueAtIndex(v40, v44);
              v46 = CFStringGetTypeID();
              if (ValueAtIndex)
              {
                if (CFGetTypeID(ValueAtIndex) == v46)
                {
                  v47 = CFDictionaryGetValue(v157, ValueAtIndex);
                  v48 = CFArrayGetTypeID();
                  if (v47)
                  {
                    if (CFGetTypeID(v47) == v48)
                    {
                      v49 = CFArrayGetCount(v47);
                      if (v49 >= 1)
                      {
                        v50 = v49;
                        for (i = 0; i != v50; ++i)
                        {
                          v52 = CFArrayGetValueAtIndex(v47, i);
                          v53 = CFDictionaryGetTypeID();
                          if (v52)
                          {
                            if (CFGetTypeID(v52) == v53)
                            {
                              v54 = CFDictionaryGetValue(v52, v159);
                              v55 = CFDictionaryGetTypeID();
                              if (v54)
                              {
                                if (CFGetTypeID(v54) == v55)
                                {
                                  v56 = CFDictionaryGetValue(v54, v155);
                                  v57 = CFNumberGetTypeID();
                                  if (v56 && CFGetTypeID(v56) == v57)
                                  {
                                    CFNumberGetValue(v56, kCFNumberIntType, &valuePtr);
                                    v40 = v156;
                                    if (valuePtr)
                                    {
                                      v58 = CFDictionaryGetValue(v54, v150);
                                      v59 = CFArrayGetTypeID();
                                      if (v58)
                                      {
                                        if (CFGetTypeID(v58) == v59)
                                        {
                                          v154 = CFArrayGetCount(v58);
                                          if (v154 >= 1)
                                          {
                                            v60 = 0;
                                            v153 = v58;
                                            do
                                            {
                                              v61 = CFArrayGetValueAtIndex(v58, v60);
                                              v62 = CFStringGetTypeID();
                                              if (v61 && CFGetTypeID(v61) == v62)
                                              {
                                                v40 = v156;
                                                if (!v152)
                                                {
                                                  if (CFStringCompare(v61, &stru_1F22591E8, 0) && CFStringCompare(v61, @".", 0))
                                                  {
                                                    v152 = 0;
                                                  }

                                                  else
                                                  {
                                                    v152 = 1;
                                                    v148 = v44;
                                                    v149 = i;
                                                  }
                                                }

                                                if (_SC_domainEndsWithDomain(v29, v61))
                                                {
                                                  v143 = v147;
                                                  *v147 = ValueAtIndex;
                                                  CFRetain(ValueAtIndex);
                                                  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v52);
                                                  v145 = v151;
                                                  *v151 = MutableCopy;
                                                  CFDictionarySetValue(MutableCopy, @"OnDemandHostName", v29);
                                                  CFDictionarySetValue(*v145, v146, v158);
                                                  addPasswordFromKeychain(*v143, v145);
                                                  v70 = 1;
                                                  a1 = v160;
LABEL_99:
                                                  CFRelease(v40);
                                                  v93 = v157;
LABEL_100:
                                                  CFRelease(v93);
LABEL_101:
                                                  if (debug >= 2)
                                                  {
                                                    v95 = __log_SCNetworkConnection_log;
                                                    if (!__log_SCNetworkConnection_log)
                                                    {
                                                      v95 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
                                                      __log_SCNetworkConnection_log = v95;
                                                    }

                                                    v96 = _SC_syslog_os_log_mapping(6);
                                                    if (__SC_log_enabled(6, v95, v96))
                                                    {
                                                      v97 = _os_log_pack_size();
                                                      v103 = &v146 - ((MEMORY[0x1EEE9AC00](v97, v98, v99, v100, v101, v102) + 15) & 0xFFFFFFFFFFFFFFF0);
                                                      v104 = __error();
                                                      v105 = _os_log_pack_fill(v103, v97, *v104, &dword_1AD2AD000, "SCNetworkConnectionCopyUserPreferences %s", v146);
                                                      v106 = "succeeded";
                                                      if (!v70)
                                                      {
                                                        v106 = "failed";
                                                      }

                                                      *v105 = 136315138;
                                                      *(v105 + 4) = v106;
                                                      __SC_log_send(6, v95, v96, v103);
                                                    }

                                                    v107 = __log_SCNetworkConnection_log;
                                                    if (!__log_SCNetworkConnection_log)
                                                    {
                                                      v107 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
                                                      __log_SCNetworkConnection_log = v107;
                                                    }

                                                    v108 = _SC_syslog_os_log_mapping(6);
                                                    if (__SC_log_enabled(6, v107, v108))
                                                    {
                                                      v109 = _os_log_pack_size();
                                                      v115 = &v146 - ((MEMORY[0x1EEE9AC00](v109, v110, v111, v112, v113, v114) + 15) & 0xFFFFFFFFFFFFFFF0);
                                                      v116 = __error();
                                                      v117 = _os_log_pack_fill(v115, v109, *v116, &dword_1AD2AD000, "Selection options: %@");
                                                      *v117 = 138412290;
                                                      *(v117 + 4) = a1;
                                                      v118 = v107;
                                                      v119 = v108;
                                                      goto LABEL_129;
                                                    }
                                                  }

                                                  return v70;
                                                }
                                              }

                                              else
                                              {
                                                v40 = v156;
                                              }

                                              ++v60;
                                              v58 = v153;
                                            }

                                            while (v154 != v60);
                                          }
                                        }
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v40 = v156;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

              ++v44;
              a1 = v160;
            }

            while (v44 != Count);
            if (v152)
            {
              v63 = CFArrayGetValueAtIndex(v40, v148);
              v64 = CFDictionaryGetValue(v157, v63);
              v65 = CFArrayGetValueAtIndex(v64, v149);
              v66 = v147;
              *v147 = v63;
              CFRetain(v63);
              v67 = CFDictionaryCreateMutableCopy(0, 0, v65);
              v68 = v151;
              *v151 = v67;
              CFDictionarySetValue(v67, @"OnDemandHostName", v29);
              CFDictionarySetValue(*v68, v146, v158);
              v69 = *v66;
              v40 = v156;
              addPasswordFromKeychain(v69, v68);
              v70 = 1;
              goto LABEL_99;
            }
          }
        }

        v70 = 0;
        goto LABEL_99;
      }
    }

LABEL_67:
    v70 = 0;
    goto LABEL_101;
  }

  v31 = *MEMORY[0x1E695E8B8];
  v32 = CFPreferencesCopyValue(@"ServiceID", @"com.apple.internetconnect", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v32)
  {
    v33 = v32;
    if (SCNetworkConnectionPrivateIsPPPService(v32, @"PPPSerial", @"PPPoE"))
    {
      NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"Setup:", v33, @"Interface");
      v35 = SCDynamicStoreCopyValue(0, NetworkServiceEntity);
      CFRelease(NetworkServiceEntity);
      if (v35)
      {
        CFRelease(v35);
        *a2 = CFRetain(v33);
        CFRelease(v33);
        goto LABEL_84;
      }
    }

    CFRelease(v33);
  }

  *a2 = 0;
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, @"Setup:", @"IPv4");
  if (!NetworkGlobalEntity)
  {
    v94 = 1;
    fwrite("Error, Setup Key == NULL!\n", 0x1AuLL, 1uLL, *MEMORY[0x1E69E9848]);
    v70 = 0;
    goto LABEL_122;
  }

  v72 = NetworkGlobalEntity;
  v73 = SCDynamicStoreCopyValue(0, NetworkGlobalEntity);
  v74 = CFDictionaryGetTypeID();
  if (!v73 || CFGetTypeID(v73) != v74)
  {
    fwrite("no global IPv4 entity\n", 0x16uLL, 1uLL, *MEMORY[0x1E69E9848]);
    v82 = 0;
    goto LABEL_82;
  }

  v75 = CFDictionaryGetValue(v73, @"ServiceOrder");
  v76 = CFArrayGetTypeID();
  if (!v75 || CFGetTypeID(v75) != v76)
  {
    fwrite("service order not specified\n", 0x1CuLL, 1uLL, *MEMORY[0x1E69E9848]);
    goto LABEL_119;
  }

  v77 = CFArrayGetCount(v75);
  if (v77 < 1)
  {
LABEL_119:
    CFRelease(v72);
    v82 = 0;
    goto LABEL_120;
  }

  v78 = v77;
  v79 = a2;
  v151 = a3;
  v80 = 0;
  while (1)
  {
    v81 = CFArrayGetValueAtIndex(v75, v80);
    if (SCNetworkConnectionPrivateIsPPPService(v81, @"PPPSerial", @"PPPoE"))
    {
      break;
    }

    if (v78 == ++v80)
    {
      v82 = 0;
      a3 = v151;
      a2 = v79;
      goto LABEL_82;
    }
  }

  v142 = CFRetain(v81);
  a2 = v79;
  *v79 = v142;
  v82 = 1;
  a3 = v151;
LABEL_82:
  CFRelease(v72);
  if (!v73)
  {
    if (v82)
    {
      goto LABEL_84;
    }

LABEL_121:
    v70 = 0;
    v94 = 1;
    goto LABEL_122;
  }

LABEL_120:
  CFRelease(v73);
  if (!v82)
  {
    goto LABEL_121;
  }

LABEL_84:
  if (*a2)
  {
    v83 = CFPreferencesCopyValue(*a2, @"com.apple.networkConnect", v31, *MEMORY[0x1E695E8B0]);
    if (v83)
    {
      v84 = v83;
      v85 = CFArrayGetTypeID();
      if (CFGetTypeID(v84) == v85)
      {
        v86 = CFArrayGetCount(v84);
        if (v86 >= 1)
        {
          v87 = v86;
          v88 = 0;
          while (1)
          {
            v89 = CFArrayGetValueAtIndex(v84, v88);
            v90 = CFDictionaryGetTypeID();
            if (v89)
            {
              if (CFGetTypeID(v89) == v90)
              {
                v91 = CFDictionaryGetValue(v89, @"ConnectByDefault");
                v92 = CFBooleanGetTypeID();
                if (v91)
                {
                  if (CFGetTypeID(v91) == v92 && CFBooleanGetValue(v91))
                  {
                    break;
                  }
                }
              }
            }

            if (v87 == ++v88)
            {
              goto LABEL_95;
            }
          }

          *a3 = CFDictionaryCreateCopy(0, v89);
        }

LABEL_95:
        addPasswordFromKeychain(*a2, a3);
      }

      else
      {
        v120 = __log_SCNetworkConnection_log;
        if (!__log_SCNetworkConnection_log)
        {
          v120 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
          __log_SCNetworkConnection_log = v120;
        }

        v121 = _SC_syslog_os_log_mapping(6);
        if (__SC_log_enabled(6, v120, v121))
        {
          v122 = _os_log_pack_size();
          v128 = &v146 - ((MEMORY[0x1EEE9AC00](v122, v123, v124, v125, v126, v127) + 15) & 0xFFFFFFFFFFFFFFF0);
          v129 = __error();
          *_os_log_pack_fill(v128, v122, *v129, &dword_1AD2AD000, "Error, userServices are not of type CFArray!") = 0;
          __SC_log_send(6, v120, v121, v128);
        }
      }

      CFRelease(v84);
    }
  }

  v94 = 0;
  v70 = 1;
LABEL_122:
  if (debug >= 2)
  {
    v130 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v130 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v130;
    }

    v131 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v130, v131))
    {
      v132 = _os_log_pack_size();
      v115 = &v146 - ((MEMORY[0x1EEE9AC00](v132, v133, v134, v135, v136, v137) + 15) & 0xFFFFFFFFFFFFFFF0);
      v138 = __error();
      v139 = _os_log_pack_fill(v115, v132, *v138, &dword_1AD2AD000, "SCNetworkConnectionCopyUserPreferences %@, no selection options");
      v140 = @"succeeded";
      if (v94)
      {
        v140 = @"failed";
      }

      *v139 = 138412290;
      *(v139 + 4) = v140;
      v118 = v130;
      v119 = v131;
LABEL_129:
      __SC_log_send(6, v118, v119, v115);
    }
  }

  return v70;
}

uint64_t SCNetworkConnectionOnDemandShouldRetryOnFailure(CFDictionaryRef *cf)
{
  if (__SCNetworkConnectionInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_16:
      v10 = 1002;
      goto LABEL_17;
    }
  }

  else
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_16;
    }
  }

  v2 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_16;
  }

  if (!cf[10])
  {
    v10 = 5001;
LABEL_17:
    _SCErrorSet(v10);
    return 0;
  }

  v3 = cf[40];
  TypeID = CFDictionaryGetTypeID();
  if (!v3)
  {
    return 0;
  }

  if (CFGetTypeID(v3) != TypeID)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(cf[40], @"OnDemandMatchInfo");
  v6 = CFDictionaryGetTypeID();
  if (!Value)
  {
    return 0;
  }

  if (CFGetTypeID(Value) != v6)
  {
    return 0;
  }

  v7 = CFDictionaryGetValue(Value, @"OnDemandMatchInfoOnRetry");
  v8 = CFBooleanGetTypeID();
  if (!v7 || CFGetTypeID(v7) != v8)
  {
    return 0;
  }

  return CFBooleanGetValue(v7);
}

uint64_t SCNetworkConnectionCanTunnelAddress(void *cf, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    v6 = *(a2 + 1);
    if (v6 != 30 && v6 != 2)
    {
      return 0;
    }

    if (__SCNetworkConnectionInitialize_initialized == -1)
    {
      if (!cf)
      {
        goto LABEL_44;
      }
    }

    else
    {
      SCNetworkConnectionGetTypeID_cold_1();
      if (!cf)
      {
        goto LABEL_44;
      }
    }

    v8 = __kSCNetworkConnectionTypeID;
    if (CFGetTypeID(cf) == v8)
    {
      v9 = cf[10];
      if (v9)
      {
        ServiceID = SCNetworkServiceGetServiceID(v9);
        TypeID = CFStringGetTypeID();
        if (ServiceID)
        {
          if (CFGetTypeID(ServiceID) == TypeID)
          {
            v12 = __SCNetworkConnectionCopyOnDemandConfiguration();
            if (v12)
            {
              v13 = v12;
              v14 = __SCNetworkConnectionCopyTriggerWithService(v12, ServiceID);
              if (v14)
              {
                v15 = v14;
                v16 = cf[41];
                v17 = CFStringGetTypeID();
                if (v16 && CFGetTypeID(v16) == v17 && ((Value = CFDictionaryGetValue(v15, @"ProbeResults"), v19 = CFDictionaryGetTypeID(), !Value) || CFGetTypeID(Value) != v19 || (v20 = CFDictionaryGetValue(Value, v16), v21 = CFBooleanGetTypeID(), v20) && CFGetTypeID(v20) == v21 && !CFBooleanGetValue(v20)) || __SCNetworkConnectionAddressMatchesRedirectedDNS(v15, v4))
                {
                  v4 = 1;
                  if (a3)
                  {
                    *a3 = 1;
                  }

                  goto LABEL_42;
                }

                v23 = CFDictionaryGetValue(v15, @"TunneledNetworks");
                v24 = CFDictionaryGetTypeID();
                if (v23 && CFGetTypeID(v23) == v24)
                {
                  if (v6 == 2)
                  {
                    v25 = CFDictionaryGetValue(v23, @"IPv4");
                    v26 = CFDictionaryGetTypeID();
                    if (v25)
                    {
                      if (CFGetTypeID(v25) == v26)
                      {
                        v27 = CFDictionaryGetValue(v25, @"IncludedRoutes");
                        if (__SCNetworkConnectionIPv4AddressMatchesRoutes(v4, v27))
                        {
                          v28 = CFDictionaryGetValue(v25, @"ExcludedRoutes");
                          if (!__SCNetworkConnectionIPv4AddressMatchesRoutes(v4, v28))
                          {
LABEL_48:
                            v4 = 1;
                            goto LABEL_42;
                          }
                        }
                      }
                    }
                  }

                  else
                  {
                    v29 = CFDictionaryGetValue(v23, @"IPv6");
                    v30 = CFDictionaryGetTypeID();
                    if (v29)
                    {
                      if (CFGetTypeID(v29) == v30)
                      {
                        v31 = CFDictionaryGetValue(v29, @"IncludedRoutes");
                        if (__SCNetworkConnectionIPv6AddressMatchesRoutes(v4, v31))
                        {
                          v32 = CFDictionaryGetValue(v29, @"ExcludedRoutes");
                          if (!__SCNetworkConnectionIPv6AddressMatchesRoutes(v4, v32))
                          {
                            goto LABEL_48;
                          }
                        }
                      }
                    }
                  }
                }

                v4 = 0;
LABEL_42:
                CFRelease(v13);
                CFRelease(v15);
                return v4;
              }

              CFRelease(v13);
            }
          }
        }

        return 0;
      }

      v22 = 5001;
LABEL_45:
      _SCErrorSet(v22);
      return 0;
    }

LABEL_44:
    v22 = 1002;
    goto LABEL_45;
  }

  return v4;
}

const __CFDictionary *__SCNetworkConnectionCopyTriggerWithService(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, @"Triggers");
  TypeID = CFArrayGetTypeID();
  if (!Value)
  {
    return 0;
  }

  if (CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  Count = CFArrayGetCount(Value);
  if (Count < 1)
  {
    return 0;
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
        v10 = CFDictionaryGetValue(ValueAtIndex, @"ServiceID");
        v11 = CFStringGetTypeID();
        if (v10)
        {
          if (CFGetTypeID(v10) == v11 && CFEqual(v10, a2))
          {
            break;
          }
        }
      }
    }

    if (v6 == ++v7)
    {
      return 0;
    }
  }

  CFRetain(ValueAtIndex);
  return ValueAtIndex;
}

uint64_t __SCNetworkConnectionAddressMatchesRedirectedDNS(const __CFDictionary *a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(a1, @"DNSRedirectDetected");
  TypeID = CFBooleanGetTypeID();
  if (!Value)
  {
    return 0;
  }

  if (CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  if (!CFBooleanGetValue(Value))
  {
    return 0;
  }

  v6 = CFDictionaryGetValue(a1, @"DNSRedirectedAddresses");
  v7 = CFDictionaryGetTypeID();
  if (!v6 || CFGetTypeID(v6) != v7)
  {
    return 0;
  }

  v8 = *(a2 + 1);
  if (v8 != 30)
  {
    if (v8 == 2)
    {
      v9 = CFDictionaryGetValue(v6, @"IPv4");

      return __SCNetworkConnectionIPv4AddressMatchesRoutes(a2, v9);
    }

    return 0;
  }

  v11 = CFDictionaryGetValue(v6, @"IPv6");

  return __SCNetworkConnectionIPv6AddressMatchesRoutes(a2, v11);
}

uint64_t __SCNetworkConnectionIPv4AddressMatchesRoutes(uint64_t a1, const void *a2)
{
  TypeID = CFDictionaryGetTypeID();
  if (!a2)
  {
    return 0;
  }

  if (CFGetTypeID(a2) != TypeID)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a2, @"Addresses");
  v6 = CFDictionaryGetValue(a2, @"Masks");
  v7 = CFDataGetTypeID();
  if (!Value || CFGetTypeID(Value) != v7)
  {
    return 0;
  }

  if (v6)
  {
    v8 = CFDataGetTypeID();
    if (CFGetTypeID(v6) != v8)
    {
      return 0;
    }

    Length = CFDataGetLength(Value);
    if (Length != CFDataGetLength(v6))
    {
      return 0;
    }

    BytePtr = CFDataGetBytePtr(Value);
    v6 = CFDataGetBytePtr(v6);
  }

  else
  {
    BytePtr = CFDataGetBytePtr(Value);
  }

  v11 = CFDataGetLength(Value);
  if (v11 < 4)
  {
    return 0;
  }

  v13 = v11 >> 2;
  while (1)
  {
    v14 = *BytePtr;
    if (!v6)
    {
      break;
    }

    v15 = *v6++;
    if (((*(a1 + 4) ^ v14) & v15) == 0)
    {
      return 1;
    }

LABEL_18:
    result = 0;
    BytePtr += 4;
    if (!--v13)
    {
      return result;
    }
  }

  if (*(a1 + 4) != v14)
  {
    v6 = 0;
    goto LABEL_18;
  }

  return 1;
}

uint64_t __SCNetworkConnectionIPv6AddressMatchesRoutes(uint64_t a1, const void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  TypeID = CFDictionaryGetTypeID();
  if (!a2)
  {
    return 0;
  }

  if (CFGetTypeID(a2) != TypeID)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a2, @"Addresses");
  v6 = CFDictionaryGetValue(a2, @"Masks");
  v7 = CFDataGetTypeID();
  if (!Value || CFGetTypeID(Value) != v7)
  {
    return 0;
  }

  if (v6)
  {
    v8 = CFDataGetTypeID();
    if (CFGetTypeID(v6) != v8)
    {
      return 0;
    }

    Length = CFDataGetLength(Value);
    if (Length != CFDataGetLength(v6))
    {
      return 0;
    }

    BytePtr = CFDataGetBytePtr(Value);
    v11 = CFDataGetBytePtr(v6);
  }

  else
  {
    BytePtr = CFDataGetBytePtr(Value);
    v11 = 0;
  }

  v12 = CFDataGetLength(Value);
  if (v12 >= 0x10)
  {
    v14 = 0;
    v15 = v12 >> 4;
    while (1)
    {
      if (v6)
      {
        v16 = 0;
        v17 = *(a1 + 8);
        v21 = *BytePtr;
        v22 = v17;
        do
        {
          *(&v21 + v16) &= v11[v16];
          ++v16;
        }

        while (v16 != 16);
        for (i = 0; i != 16; ++i)
        {
          *(&v22 + i) &= v11[i];
        }

        if (v21 == v22 && *(&v21 + 1) == *(&v22 + 1))
        {
          return 1;
        }

        v11 += 16;
      }

      else if (*BytePtr == *(a1 + 8) && *(BytePtr + 1) == *(a1 + 16))
      {
        return 1;
      }

      result = 0;
      BytePtr += 16;
      if (++v14 == v15)
      {
        return result;
      }
    }
  }

  return 0;
}

BOOL SCNetworkConnectionSelectServiceWithOptions(unsigned int *cf, const __CFDictionary *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v49 = 0;
  valuePtr = -1;
  cfa = 0;
  v47 = 0;
  v45 = 0;
  if (__SCNetworkConnectionInitialize_initialized != -1)
  {
    SCNetworkConnectionGetTypeID_cold_1();
    if (cf)
    {
      goto LABEL_3;
    }

LABEL_5:
    _SCErrorSet(1002);
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_6;
  }

  if (!cf)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = __kSCNetworkConnectionTypeID;
  if (CFGetTypeID(cf) != v4 || *(cf + 10))
  {
    goto LABEL_5;
  }

  TypeID = CFDictionaryGetTypeID();
  if (a2 && CFGetTypeID(a2) == TypeID)
  {
    v11 = CFDictionaryGetValue(a2, @"NoUserPrefs");
    v12 = CFDictionaryGetValue(a2, @"OnDemandRetry");
    v13 = CFDictionaryGetValue(a2, @"OnDemandAccountIdentifier");
    v14 = CFDictionaryGetValue(a2, @"OnDemandHostName");
    v15 = CFBooleanGetTypeID();
    v16 = !v11 || CFGetTypeID(v11) != v15 || CFBooleanGetValue(v11) == 0;
    v18 = CFBooleanGetTypeID();
    if (v12 && CFGetTypeID(v12) == v18)
    {
      v17 = CFBooleanGetValue(v12);
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v17 = 1;
    v16 = 1;
  }

  v8 = __SCNetworkConnectionCopyOnDemandConfiguration();
  v19 = cf[42];
  v20 = *(cf + 24);
  v21 = *(cf + 35);
  *value = *(cf + 31);
  v51 = v21;
  v22 = VPNAppLayerCopyMatchingService(value, v19, cf + 172, v20, v14, v13);
  cfa = v22;
  v23 = CFDictionaryGetTypeID();
  if (v22)
  {
    if (v8 && CFGetTypeID(v8) == v23)
    {
      v24 = __SCNetworkConnectionCopyTriggerWithService(v8, v22);
      v7 = v24;
      if (v24)
      {
        value[0] = 0;
        if (!CFDictionaryGetValueIfPresent(v24, @"Status", value) || (v25 = value[0], v26 = CFNumberGetTypeID(), !v25) || CFGetTypeID(v25) != v26 || !CFNumberGetValue(value[0], kCFNumberSInt32Type, &valuePtr))
        {
          valuePtr = -1;
        }

        if (__SCNetworkConnectionShouldIgnoreTrigger(v7) && (valuePtr - 3) < 0xFFFFFFFE)
        {
          CFRelease(v22);
          cfa = 0;
          if (v49)
          {
            CFRelease(v49);
            v49 = 0;
          }

          CFRelease(v7);
          v23 = CFDictionaryGetTypeID();
          goto LABEL_54;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 1;
    if (!v17)
    {
      if (v49)
      {
        if ((valuePtr - 3) <= 0xFFFFFFFD)
        {
          v27 = CFDictionaryGetValue(v49, @"OnDemandMatchInfoOnRetry");
          if (v27)
          {
            v6 = CFBooleanGetValue(v27) == 0;
          }
        }
      }
    }

    cf[76] = 3;
    goto LABEL_77;
  }

  if (!v8)
  {
    v28 = 1;
    goto LABEL_61;
  }

LABEL_54:
  v28 = 0;
  if (CFGetTypeID(v8) == v23 && v14)
  {
    LOBYTE(value[0]) = 0;
    v29 = __SCNetworkConnectionCopyMatchingTriggerWithName(v8, v14, cf[42], v17, &v49, value, &v47);
    v7 = v29;
    if (v29)
    {
      v30 = CFDictionaryGetValue(v29, @"ServiceID");
      cfa = v30;
      v31 = CFStringGetTypeID();
      if (v30 && CFGetTypeID(v30) == v31)
      {
        CFRetain(v30);
        cf[76] = 2;
      }

      else
      {
        cfa = 0;
      }

      v6 = LOBYTE(value[0]) != 0;
      goto LABEL_77;
    }

    if (!v17)
    {
LABEL_72:
      v6 = 1;
      goto LABEL_77;
    }

    if (v49)
    {
      CFRelease(v49);
      v49 = 0;
    }

    v28 = 0;
    if (!v16)
    {
LABEL_71:
      v7 = 0;
      goto LABEL_72;
    }

    goto LABEL_62;
  }

LABEL_61:
  if (!v16)
  {
    goto LABEL_71;
  }

LABEL_62:
  if (!__SCNetworkConnectionCopyUserPreferencesInternal(a2, &cfa, &v45))
  {
    goto LABEL_71;
  }

  v32 = CFDictionaryGetTypeID();
  if (v28)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    if (CFGetTypeID(v8) == v32 && v8)
    {
      v7 = __SCNetworkConnectionCopyTriggerWithService(v8, cfa);
    }
  }

  v6 = 1;
  cf[76] = 1;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v34 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, cf + 76);
  CFDictionarySetValue(Mutable, @"OnDemandMatchInfoVPNType", v34);
  CFRelease(v34);
  v49 = Mutable;
LABEL_77:
  if (cfa)
  {
    v35 = _SCNetworkServiceCopyActive(0, cfa);
    *(cf + 10) = v35;
    if (!v35)
    {
      _SCErrorSet(0);
      v5 = 0;
      v6 = 0;
      goto LABEL_6;
    }

    if (v7)
    {
      v36 = *(cf + 39);
      if (v36)
      {
        CFRelease(v36);
      }

      *(cf + 39) = v7;
      CFRetain(v7);
      v37 = valuePtr;
      if (valuePtr == -1)
      {
        value[0] = 0;
        if (CFDictionaryGetValueIfPresent(v7, @"Status", value) && (v38 = value[0], v39 = CFNumberGetTypeID(), v38) && CFGetTypeID(v38) == v39 && CFNumberGetValue(value[0], kCFNumberSInt32Type, &valuePtr))
        {
          v37 = valuePtr;
        }

        else
        {
          v37 = -1;
          valuePtr = -1;
        }
      }

      if (v37 == 2)
      {
        goto LABEL_100;
      }

      if (cf[76] == 3)
      {
        v40 = CFDictionaryGetValue(v7, @"OnDemandMatchAppEnabled");
        v41 = CFBooleanGetTypeID();
        if (!v40 || CFGetTypeID(v40) != v41 || !CFBooleanGetValue(v40))
        {
          goto LABEL_100;
        }
      }
    }

    else if (cf[76] != 1)
    {
      goto LABEL_100;
    }

    *(cf + 308) = 1;
LABEL_100:
    v42 = *MEMORY[0x1E695E480];
    if (v45)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v42, 0, v45);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(v42, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v5 = MutableCopy;
    if (v14)
    {
      CFDictionarySetValue(MutableCopy, @"OnDemandHostName", v14);
    }

    if (*(cf + 308) && v49)
    {
      CFDictionarySetValue(v5, @"OnDemandMatchInfo", v49);
    }

    *(cf + 40) = v5;
    CFRetain(v5);
    v44 = v47;
    if (v47)
    {
      *(cf + 41) = v47;
      CFRetain(v44);
    }

LABEL_6:
    if (cfa)
    {
      CFRelease(cfa);
    }

    if (v8)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  _SCErrorSet(0);
  v6 = 0;
  v5 = 0;
  if (v8)
  {
LABEL_9:
    CFRelease(v8);
  }

LABEL_10:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  return v6;
}

BOOL __SCNetworkConnectionShouldIgnoreTrigger(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"Action");
  TypeID = CFStringGetTypeID();
  return Value && CFGetTypeID(Value) == TypeID && (CFEqual(Value, @"Ignore") || CFEqual(Value, @"Disconnect"));
}

const char *__SCNetworkConnectionGetControllerPortName()
{
  result = scnc_server_name;
  if (!scnc_server_name)
  {
    getpid();
    if (sandbox_check())
    {
      result = "com.apple.SystemConfiguration.PPPController";
    }

    else
    {
      result = "com.apple.SystemConfiguration.PPPController-priv";
    }

    scnc_server_name = result;
  }

  return result;
}

uint64_t __SCNetworkConnectionDeallocate(uint64_t a1)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v2 = __log_SCNetworkConnection_log;
  if (!__log_SCNetworkConnection_log)
  {
    v2 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
    __log_SCNetworkConnection_log = v2;
  }

  v3 = _SC_syslog_os_log_mapping(7);
  if (__SC_log_enabled(7, v2, v3))
  {
    v4 = _os_log_pack_size();
    v10 = v29 - ((MEMORY[0x1EEE9AC00](v4, v5, v6, v7, v8, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = __error();
    v12 = _os_log_pack_fill(v10, v4, *v11, &dword_1AD2AD000, "%srelease", v29[0]);
    *v12 = 136315138;
    *(v12 + 4) = a1 + 88;
    __SC_log_send(7, v2, v3, v10);
  }

  pthread_mutex_destroy((a1 + 16));
  v13 = *(a1 + 120);
  v14 = MEMORY[0x1E69E9A60];
  if (v13)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v13);
  }

  v15 = *(a1 + 156);
  if (v15)
  {
    mach_port_deallocate(*v14, v15);
  }

  v16 = *(a1 + 192);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a1 + 224);
  if (v17)
  {
    CFRunLoopSourceInvalidate(v17);
    CFRelease(*(a1 + 224));
  }

  v18 = *(a1 + 280);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(a1 + 208);
  if (v19)
  {
    Port = CFMachPortGetPort(v19);
    CFMachPortInvalidate(*(a1 + 208));
    CFRelease(*(a1 + 208));
    mach_port_mod_refs(*v14, Port, 1u, -1);
  }

  v21 = *(a1 + 200);
  if (v21)
  {
    mach_port_deallocate(*v14, v21);
  }

  v22 = *(a1 + 264);
  if (v22)
  {
    v22(*(a1 + 248));
  }

  v23 = *(a1 + 80);
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = *(a1 + 312);
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *(a1 + 320);
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *(a1 + 328);
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = *(a1 + 336);
  if (v27)
  {
    CFRelease(v27);
  }

  result = *(a1 + 344);
  if (result)
  {
    ne_session_set_event_handler();
    return ne_session_release();
  }

  return result;
}

__CFString *__SCNetworkConnectionCopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<SCNetworkConnection, %p [%p]> {", a1, v2);
  CFStringAppendFormat(Mutable, 0, @"service = %p", *(a1 + 80));
  if (*(a1 + 200))
  {
    CFStringAppendFormat(Mutable, 0, @", server port = 0x%x", *(a1 + 200));
  }

  if (*(a1 + 344))
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  CFStringAppendFormat(Mutable, 0, @"using NetworkExtension = %s", v4);
  CFStringAppendFormat(Mutable, 0, @"}");
  return Mutable;
}

void __SCNetworkConnectionMachCallBack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (*(a2 + 20) == 70)
  {
    v5 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v5 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v5;
    }

    v6 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v5, v6))
    {
      v7 = _os_log_pack_size();
      v13 = v15 - ((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = __error();
      *_os_log_pack_fill(v13, v7, *v14, &dword_1AD2AD000, "PPPController server died") = 0;
      __SC_log_send(6, v5, v6, v13);
    }

    __SCNetworkConnectionReconnectNotifications(a4);
  }

  __SCNetworkConnectionCallBack(a4);
}

void __SCNetworkConnectionReconnectNotifications(uint64_t a1)
{
  v46[1] = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 16));
  v2 = *(a1 + 280);
  if (v2)
  {
    *(a1 + 280) = 0;
  }

  v3 = *(a1 + 224);
  if (v3)
  {
    CFRunLoopSourceInvalidate(v3);
    CFRelease(*(a1 + 224));
    *(a1 + 224) = 0;
  }

  v4 = *(a1 + 296);
  if (v4)
  {
    dispatch_source_cancel(v4);
    *(a1 + 296) = 0;
  }

  v5 = *(a1 + 288);
  if (v5)
  {
    *(a1 + 288) = 0;
    dispatch_retain(v5);
    *(a1 + 217) = 0;
    pthread_mutex_unlock((a1 + 16));
    if (!v2)
    {
      if (SCNetworkConnectionSetDispatchQueue(a1, v5))
      {
        v6 = 1;
      }

      else
      {
        if (SCError() != 1102)
        {
          v36 = __log_SCNetworkConnection_log;
          if (!__log_SCNetworkConnection_log)
          {
            v36 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
            __log_SCNetworkConnection_log = v36;
          }

          v37 = _SC_syslog_os_log_mapping(5);
          if (__SC_log_enabled(5, v36, v37))
          {
            v38 = _os_log_pack_size();
            v44 = v46 - ((MEMORY[0x1EEE9AC00](v38, v39, v40, v41, v42, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
            v45 = __error();
            *_os_log_pack_fill(v44, v38, *v45, &dword_1AD2AD000, "SCNetworkConnectionSetDispatchQueue() failed") = 0;
            __SC_log_send(5, v36, v37, v44);
          }
        }

        v6 = 0;
      }

      goto LABEL_25;
    }

LABEL_12:
    Count = CFArrayGetCount(v2);
    if (Count < 1)
    {
      v6 = 1;
    }

    else
    {
      v8 = Count;
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, v9 + 1);
        v11 = CFArrayGetValueAtIndex(v2, v9 + 2);
        v12 = SCNetworkConnectionScheduleWithRunLoop(a1, ValueAtIndex, v11);
        if (!v12)
        {
          break;
        }

        v6 = v12;
        v9 += 3;
        if (v9 >= v8)
        {
          goto LABEL_24;
        }
      }

      if (SCError() != 1102)
      {
        v13 = __log_SCNetworkConnection_log;
        if (!__log_SCNetworkConnection_log)
        {
          v13 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
          __log_SCNetworkConnection_log = v13;
        }

        v14 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v13, v14))
        {
          v15 = _os_log_pack_size();
          v21 = v46 - ((MEMORY[0x1EEE9AC00](v15, v16, v17, v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
          v22 = __error();
          *_os_log_pack_fill(v21, v15, *v22, &dword_1AD2AD000, "SCNetworkConnectionScheduleWithRunLoop() failed") = 0;
          __SC_log_send(5, v13, v14, v21);
        }
      }

      v6 = 0;
    }

LABEL_24:
    CFRelease(v2);
    if (!v5)
    {
LABEL_26:
      if (v6)
      {
        return;
      }

      goto LABEL_27;
    }

LABEL_25:
    dispatch_release(v5);
    goto LABEL_26;
  }

  *(a1 + 217) = 0;
  pthread_mutex_unlock((a1 + 16));
  if (v2)
  {
    goto LABEL_12;
  }

LABEL_27:
  v23 = __log_SCNetworkConnection_log;
  if (!__log_SCNetworkConnection_log)
  {
    v23 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
    __log_SCNetworkConnection_log = v23;
  }

  v24 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v23, v24))
  {
    v25 = _os_log_pack_size();
    v31 = v46 - ((MEMORY[0x1EEE9AC00](v25, v26, v27, v28, v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = __error();
    v33 = _os_log_pack_fill(v31, v25, *v32, &dword_1AD2AD000, "SCNetworkConnection server %s, notification not restored", v46[0]);
    v34 = SCError();
    v35 = "failed";
    if (v34 == 1102)
    {
      v35 = "shutdown";
    }

    *v33 = 136315138;
    *(v33 + 4) = v35;
    __SC_log_send(5, v23, v24, v31);
  }
}

void __SCNetworkConnectionCallBack(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 16));
  if (*(a1 + 217))
  {
    v2 = *(a1 + 232);
    if (v2)
    {
      v4 = *(a1 + 248);
      v3 = *(a1 + 256);
      if (v3 && v4)
      {
        v4 = v3(*(a1 + 248));
        v5 = *(a1 + 264);
      }

      else
      {
        v5 = 0;
      }

      if (*(a1 + 344))
      {
LABEL_13:
        pthread_mutex_unlock((a1 + 16));
        Status = SCNetworkConnectionGetStatus(a1);
        __SCNetworkConnectionNotify(a1, v2, Status, v5, v4);

        CFRelease(a1);
        return;
      }

      CFRetain(a1);
      if (*(a1 + 280))
      {
        Current = CFRunLoopGetCurrent();
        if (!Current)
        {
          __SCNetworkConnectionCallBack_cold_2();
        }

        v19 = Current;
        if (Current != CFRunLoopGetMain())
        {
          goto LABEL_13;
        }

        CFRetain(v19);
        v20 = CFRunLoopCopyCurrentMode(v19);
        pthread_mutex_unlock((a1 + 16));
        if (__SCNetworkConnectionQueue_once != -1)
        {
          __SCNetworkConnectionCopyExtendedStatus_block_invoke_cold_1();
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = ____SCNetworkConnectionCallBack_block_invoke;
        block[3] = &__block_descriptor_tmp_126;
        block[4] = a1;
        block[5] = v19;
        block[6] = v20;
        block[7] = v2;
        block[8] = v5;
        block[9] = v4;
        dispatch_async(__SCNetworkConnectionQueue_q, block);
      }

      else
      {
        v21 = *(a1 + 288);
        if (!v21)
        {
          __SCNetworkConnectionCallBack_cold_3();
        }

        pthread_mutex_unlock((a1 + 16));
        v22 = SCNetworkConnectionGetStatus(a1);
        CFRetain(a1);
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 0x40000000;
        v24[2] = ____SCNetworkConnectionCallBackPerformDispatch_block_invoke;
        v24[3] = &__block_descriptor_tmp_129;
        v24[4] = a1;
        v24[5] = v2;
        v25 = v22;
        v24[6] = v5;
        v24[7] = v4;
        dispatch_async(v21, v24);
        CFRelease(a1);
      }
    }

    else
    {

      pthread_mutex_unlock((a1 + 16));
    }
  }

  else
  {
    v6 = __log_SCNetworkConnection_log;
    if (!__log_SCNetworkConnection_log)
    {
      v6 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
      __log_SCNetworkConnection_log = v6;
    }

    v7 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v6, v7))
    {
      v8 = _os_log_pack_size();
      v14 = block - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = __error();
      v16 = _os_log_pack_fill(v14, v8, *v15, &dword_1AD2AD000, "%sskipping SCNetworkConnection callback, no longer scheduled", block[0]);
      *v16 = 136315138;
      *(v16 + 4) = a1 + 88;
      __SC_log_send(6, v6, v7, v14);
    }

    pthread_mutex_unlock((a1 + 16));
  }
}

uint64_t __SCNetworkConnectionNotify(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = __log_SCNetworkConnection_log;
  if (!__log_SCNetworkConnection_log)
  {
    v10 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
    __log_SCNetworkConnection_log = v10;
  }

  v11 = _SC_syslog_os_log_mapping(7);
  if (__SC_log_enabled(7, v10, v11))
  {
    v12 = _os_log_pack_size();
    v18 = &v22 - ((MEMORY[0x1EEE9AC00](v12, v13, v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = __error();
    v20 = _os_log_pack_fill(v18, v12, *v19, &dword_1AD2AD000, "%sexec SCNetworkConnection callout w/status = %d", v22, v23);
    *v20 = 136315394;
    *(v20 + 4) = a1 + 88;
    *(v20 + 12) = 1024;
    *(v20 + 14) = a3;
    __SC_log_send(7, v10, v11, v18);
  }

  result = a2(a1, a3, a5);
  if (a4)
  {
    if (a5)
    {
      return a4(a5);
    }
  }

  return result;
}

uint64_t __SCNetworkConnectionShouldNeverMatch(const __CFDictionary *a1, const __CFString *a2, int a3)
{
  v32 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a1, @"OnDemandMatchDomainsNever");
  TypeID = CFArrayGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) == TypeID)
    {
      Count = CFArrayGetCount(Value);
      if (Count >= 1)
      {
        v9 = Count;
        v10 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Value, v10);
          v12 = CFStringGetTypeID();
          if (ValueAtIndex)
          {
            if (CFGetTypeID(ValueAtIndex) == v12 && _SC_domainEndsWithDomain(a2, ValueAtIndex))
            {
              break;
            }
          }

          if (v9 == ++v10)
          {
            goto LABEL_9;
          }
        }

        v21 = __log_SCNetworkConnection_log;
        if (!__log_SCNetworkConnection_log)
        {
          v21 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConnection");
          __log_SCNetworkConnection_log = v21;
        }

        v22 = _SC_syslog_os_log_mapping(6);
        if (__SC_log_enabled(6, v21, v22))
        {
          v23 = _os_log_pack_size();
          v29 = &v31 - ((MEMORY[0x1EEE9AC00](v23, v24, v25, v26, v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
          v30 = __error();
          *_os_log_pack_fill(v29, v23, *v30, &dword_1AD2AD000, "OnDemand match exception") = 0;
          __SC_log_send(6, v21, v22, v29);
          return 1;
        }

        return 1;
      }
    }
  }

LABEL_9:
  if (a3)
  {
    v13 = CFDictionaryGetValue(a1, @"PluginPIDs");
    v14 = CFArrayGetTypeID();
    if (v13)
    {
      if (CFGetTypeID(v13) == v14)
      {
        v15 = CFArrayGetCount(v13);
        if (v15 >= 1)
        {
          v16 = v15;
          v17 = 0;
          while (1)
          {
            HIDWORD(v31) = 0;
            v18 = CFArrayGetValueAtIndex(v13, v17);
            v19 = CFNumberGetTypeID();
            if (v18)
            {
              if (CFGetTypeID(v18) == v19 && CFNumberGetValue(v18, kCFNumberIntType, &v31 + 4) && HIDWORD(v31) == a3)
              {
                break;
              }
            }

            if (v16 == ++v17)
            {
              return 0;
            }
          }

          return 1;
        }
      }
    }
  }

  return 0;
}

const __CFString *__SCNetworkConnectionDomainGetMatch(const __CFDictionary *a1, const __CFString *a2, int a3)
{
  if (a3)
  {
    v4 = @"OnDemandMatchDomainsOnRetry";
  }

  else
  {
    v4 = @"OnDemandMatchDomainsAlways";
  }

  Value = CFDictionaryGetValue(a1, v4);
  TypeID = CFArrayGetTypeID();
  if (!Value)
  {
    return 0;
  }

  if (CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  Count = CFArrayGetCount(Value);
  if (Count < 1)
  {
    return 0;
  }

  v8 = Count;
  v9 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Value, v9);
    v11 = CFStringGetTypeID();
    if (ValueAtIndex)
    {
      if (CFGetTypeID(ValueAtIndex) == v11 && _SC_domainEndsWithDomain(a2, ValueAtIndex))
      {
        break;
      }
    }

    if (v8 == ++v9)
    {
      return 0;
    }
  }

  return ValueAtIndex;
}

void addPasswordFromKeychain(const __CFString *a1, CFDictionaryRef *a2)
{
  if (*a2)
  {
    Value = CFDictionaryGetValue(*a2, @"UniqueIdentifier");
    TypeID = CFStringGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID && SCNetworkConnectionPrivateIsPPPService(a1, @"L2TP", 0))
      {
        MutableCopy = CFStringCreateMutableCopy(0, 0, Value);
        CFStringAppend(MutableCopy, @".SS");

        CFRelease(MutableCopy);
      }
    }
  }
}

BOOL SCNetworkConnectionPrivateIsPPPService(CFStringRef serviceID, const void *a2, const void *a3)
{
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"Setup:", serviceID, @"Interface");
  if (!NetworkServiceEntity)
  {
    return 0;
  }

  v6 = NetworkServiceEntity;
  v7 = SCDynamicStoreCopyValue(0, NetworkServiceEntity);
  if (v7)
  {
    v8 = v7;
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(v8) == TypeID)
    {
      Value = CFDictionaryGetValue(v8, @"Type");
      v11 = CFStringGetTypeID();
      v12 = Value && CFGetTypeID(Value) == v11 && CFEqual(Value, @"PPP") != 0;
      v14 = CFDictionaryGetValue(v8, @"SubType");
      v15 = CFStringGetTypeID();
      if (v14 && CFGetTypeID(v14) == v15)
      {
        v16 = CFEqual(v14, a2);
        if (a3 && !v16)
        {
          v16 = CFEqual(v14, a3);
        }
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    CFRelease(v8);
  }

  else
  {
    v13 = 0;
  }

  CFRelease(v6);
  return v13;
}

uint64_t SCUserPreferencesGetTypeID()
{
  if (__SCUserPreferencesInitialize_initialized != -1)
  {
    SCUserPreferencesGetTypeID_cold_1();
  }

  return __kSCUserPreferencesTypeID;
}

uint64_t SCUserPreferencesGetUniqueID(void *cf)
{
  if (__SCUserPreferencesInitialize_initialized == -1)
  {
    if (!cf)
    {
      goto LABEL_6;
    }
  }

  else
  {
    SCUserPreferencesGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_6;
    }
  }

  v2 = __kSCUserPreferencesTypeID;
  if (CFGetTypeID(cf) == v2)
  {
    return cf[3];
  }

LABEL_6:
  _SCErrorSet(1002);
  return 0;
}

uint64_t SCUserPreferencesIsForced(const __CFString **cf)
{
  if (__SCUserPreferencesInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_8:
      _SCErrorSet(1002);
      return 0;
    }
  }

  else
  {
    SCUserPreferencesGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_8;
    }
  }

  v2 = __kSCUserPreferencesTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_8;
  }

  v3 = cf[2];

  return CFPreferencesAppValueIsForced(v3, @"com.apple.networkConnect");
}

uint64_t SCUserPreferencesRemove(CFTypeRef cf)
{
  if (__SCUserPreferencesInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_8:
      _SCErrorSet(1002);
      return 0;
    }
  }

  else
  {
    SCUserPreferencesGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_8;
    }
  }

  v2 = __kSCUserPreferencesTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_8;
  }

  v3 = *(cf + 2);
  v4 = *(cf + 3);

  return processPreferences(v3, removeCallout, v4, 0, 0);
}

uint64_t processPreferences(const __CFString *a1, uint64_t (*a2)(const __CFString *, const void *, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  cf[1] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  CFPreferencesAppSynchronize(@"com.apple.networkConnect");
  v9 = CFPreferencesCopyAppValue(a1, @"com.apple.networkConnect");
  if (v9)
  {
    v10 = v9;
    TypeID = CFArrayGetTypeID();
    if (CFGetTypeID(v10) == TypeID)
    {
      Count = CFArrayGetCount(v10);
      if (Count >= 1)
      {
        v13 = Count;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v10, v14);
          if (!ValueAtIndex)
          {
            processPreferences_cold_1();
          }

          v17 = ValueAtIndex;
          v18 = CFDictionaryGetTypeID();
          if (CFGetTypeID(v17) != v18)
          {
            break;
          }

          v19 = a2(a1, v17, a3, a4, a5);
          if (v19)
          {
            goto LABEL_10;
          }

          v15 = 1;
LABEL_13:
          if (v13 == ++v14)
          {
            v20 = v15 == 0;
            goto LABEL_16;
          }
        }

        v19 = CFRetain(v17);
LABEL_10:
        if (!CFEqual(v17, v19))
        {
          v15 = 1;
        }

        addKey(cf, v19);
        CFRelease(v19);
        goto LABEL_13;
      }
    }

    v20 = 1;
LABEL_16:
    CFRelease(v10);
  }

  else
  {
    v20 = 1;
  }

  v21 = a2(a1, 0, a3, a4, a5);
  if (v21)
  {
    v22 = v21;
    addKey(cf, v21);
    CFRelease(v22);
    v23 = cf[0];
  }

  else
  {
    v23 = cf[0];
    if (v20)
    {
      v24 = 1;
      if (!cf[0])
      {
        return v24;
      }

      goto LABEL_25;
    }
  }

  if (!CFPreferencesAppValueIsForced(a1, @"com.apple.networkConnect"))
  {
    logCFPreferencesChange(a1, v23);
    v26 = *MEMORY[0x1E695E8B8];
    v27 = *MEMORY[0x1E695E8B0];
    CFPreferencesSetValue(a1, v23, @"com.apple.networkConnect", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    v24 = CFPreferencesSynchronize(@"com.apple.networkConnect", v26, v27);
    notify_post("com.apple.networkConnect");
    if (!v23)
    {
      return v24;
    }

    goto LABEL_25;
  }

  v24 = 0;
  if (v23)
  {
LABEL_25:
    CFRelease(v23);
  }

  return v24;
}

CFTypeRef removeCallout(int a1, CFDictionaryRef theDict, const void *a3)
{
  if (!theDict)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"UniqueIdentifier");
  TypeID = CFStringGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) == TypeID && CFEqual(Value, a3))
    {
      return 0;
    }
  }

  return CFRetain(theDict);
}

uint64_t SCUserPreferencesSetCurrent(CFTypeRef cf)
{
  if (__SCUserPreferencesInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_8:
      _SCErrorSet(1002);
      return 0;
    }
  }

  else
  {
    SCUserPreferencesGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_8;
    }
  }

  v2 = __kSCUserPreferencesTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_8;
  }

  v3 = *(cf + 2);
  v4 = *(cf + 3);

  return processPreferences(v3, setCurrentCallout, v4, 0, 0);
}

__CFDictionary *setCurrentCallout(int a1, CFDictionaryRef theDict, const void *a3)
{
  if (!theDict)
  {
    return 0;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  CFDictionaryRemoveValue(MutableCopy, @"ConnectByDefault");
  Value = CFDictionaryGetValue(theDict, @"UniqueIdentifier");
  TypeID = CFStringGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID && CFEqual(Value, a3))
  {
    CFDictionarySetValue(MutableCopy, @"ConnectByDefault", *MEMORY[0x1E695E4D0]);
  }

  return MutableCopy;
}

CFTypeRef SCUserPreferencesCopyName(CFTypeRef cf)
{
  cfa[1] = *MEMORY[0x1E69E9840];
  cfa[0] = 0;
  if (__SCUserPreferencesInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_8:
      _SCErrorSet(1002);
      return 0;
    }
  }

  else
  {
    SCUserPreferencesGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_8;
    }
  }

  v2 = __kSCUserPreferencesTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_8;
  }

  v3 = processPreferences(*(cf + 2), copyNameCallout, *(cf + 3), 0, cfa);
  result = cfa[0];
  if (!v3 && cfa[0])
  {
    CFRelease(cfa[0]);
    return 0;
  }

  return result;
}

CFTypeRef copyNameCallout(int a1, CFDictionaryRef theDict, const void *a3, uint64_t a4, CFTypeRef *a5)
{
  if (!theDict)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"UniqueIdentifier");
  TypeID = CFStringGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID && CFEqual(Value, a3))
  {
    if (*a5)
    {
      CFRelease(*a5);
      *a5 = 0;
    }

    v10 = CFDictionaryGetValue(theDict, @"UserDefinedName");
    *a5 = v10;
    if (v10)
    {
      v11 = v10;
      v12 = CFStringGetTypeID();
    }

    else
    {
      v14 = CFDictionaryGetValue(theDict, @"PPP");
      v15 = CFDictionaryGetTypeID();
      if (v14 && CFGetTypeID(v14) == v15)
      {
        v11 = CFDictionaryGetValue(v14, @"UserDefinedName");
        *a5 = v11;
      }

      else
      {
        v11 = *a5;
      }

      v12 = CFStringGetTypeID();
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    if (CFGetTypeID(v11) == v12)
    {
      *a5 = v11;
      CFRetain(v11);
      goto LABEL_18;
    }

LABEL_17:
    *a5 = 0;
  }

LABEL_18:

  return CFRetain(theDict);
}

uint64_t SCUserPreferencesSetName(CFTypeRef cf, const void *a2)
{
  if (__SCUserPreferencesInitialize_initialized != -1)
  {
    SCUserPreferencesGetTypeID_cold_1();
    if (cf)
    {
      goto LABEL_3;
    }

LABEL_10:
    _SCErrorSet(1002);
    return 0;
  }

  if (!cf)
  {
    goto LABEL_10;
  }

LABEL_3:
  v4 = __kSCUserPreferencesTypeID;
  if (CFGetTypeID(cf) != v4)
  {
    goto LABEL_10;
  }

  if (a2)
  {
    TypeID = CFStringGetTypeID();
    if (CFGetTypeID(a2) != TypeID)
    {
      goto LABEL_10;
    }
  }

  v6 = *(cf + 2);
  v7 = *(cf + 3);

  return processPreferences(v6, setNameCallout, v7, a2, 0);
}

__CFDictionary *setNameCallout(int a1, CFDictionaryRef theDict, const void *a3, const void *a4)
{
  if (!theDict)
  {
    return 0;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  Value = CFDictionaryGetValue(theDict, @"UniqueIdentifier");
  TypeID = CFStringGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID && CFEqual(Value, a3))
  {
    if (a4)
    {
      CFDictionarySetValue(MutableCopy, @"UserDefinedName", a4);
    }

    else
    {
      CFDictionaryRemoveValue(MutableCopy, @"UserDefinedName");
    }

    v11 = CFDictionaryGetValue(MutableCopy, @"PPP");
    v12 = CFDictionaryGetTypeID();
    if (v11)
    {
      if (CFGetTypeID(v11) == v12)
      {
        v13 = CFDictionaryCreateMutableCopy(0, 0, v11);
        v14 = v13;
        if (a4)
        {
          CFDictionarySetValue(v13, @"UserDefinedName", a4);
        }

        else
        {
          CFDictionaryRemoveValue(v13, @"UserDefinedName");
        }

        CFDictionarySetValue(MutableCopy, @"PPP", v14);
        CFRelease(v14);
      }
    }
  }

  return MutableCopy;
}

CFTypeRef SCUserPreferencesCopyInterfaceConfiguration(const void *a1, const void *a2)
{
  TypeID = SCNetworkInterfaceGetTypeID();
  if (a2 && CFGetTypeID(a2) == TypeID && (DefaultConfigurationType = __SCNetworkInterfaceGetDefaultConfigurationType(a2)) != 0)
  {

    return SCUserPreferencesCopyInterfaceTypeConfiguration(a1, DefaultConfigurationType);
  }

  else
  {
    _SCErrorSet(1002);
    return 0;
  }
}

CFTypeRef SCUserPreferencesCopyInterfaceTypeConfiguration(CFTypeRef cf, uint64_t a2)
{
  cfa[1] = *MEMORY[0x1E69E9840];
  cfa[0] = 0;
  if (__SCUserPreferencesInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_8:
      _SCErrorSet(1002);
      return 0;
    }
  }

  else
  {
    SCUserPreferencesGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_8;
    }
  }

  v4 = __kSCUserPreferencesTypeID;
  if (CFGetTypeID(cf) != v4)
  {
    goto LABEL_8;
  }

  v5 = processPreferences(*(cf + 2), copyInterfaceConfigurationCallout, *(cf + 3), a2, cfa);
  result = cfa[0];
  if (!v5 && cfa[0])
  {
    CFRelease(cfa[0]);
    return 0;
  }

  return result;
}

CFTypeRef copyInterfaceConfigurationCallout(int a1, CFDictionaryRef theDict, const void *a3, const void *a4, CFTypeRef *a5)
{
  if (!theDict)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"UniqueIdentifier");
  TypeID = CFStringGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID && CFEqual(Value, a3))
  {
    if (*a5)
    {
      CFRelease(*a5);
      *a5 = 0;
    }

    v11 = CFDictionaryGetValue(theDict, a4);
    *a5 = v11;
    v12 = CFDictionaryGetTypeID();
    if (v11 && CFGetTypeID(v11) == v12)
    {
      *a5 = v11;
      CFRetain(v11);
    }

    else
    {
      *a5 = 0;
    }
  }

  return CFRetain(theDict);
}

uint64_t SCUserPreferencesSetInterfaceConfiguration(const void *a1, const void *a2, uint64_t a3)
{
  TypeID = SCNetworkInterfaceGetTypeID();
  if (a2 && CFGetTypeID(a2) == TypeID && (DefaultConfigurationType = __SCNetworkInterfaceGetDefaultConfigurationType(a2)) != 0)
  {

    return SCUserPreferencesSetInterfaceTypeConfiguration(a1, DefaultConfigurationType, a3);
  }

  else
  {
    _SCErrorSet(1002);
    return 0;
  }
}

uint64_t SCUserPreferencesSetInterfaceTypeConfiguration(CFTypeRef cf, uint64_t a2, uint64_t a3)
{
  if (__SCUserPreferencesInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_8:
      _SCErrorSet(1002);
      return 0;
    }
  }

  else
  {
    SCUserPreferencesGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_8;
    }
  }

  v6 = __kSCUserPreferencesTypeID;
  if (CFGetTypeID(cf) != v6)
  {
    goto LABEL_8;
  }

  v7 = *(cf + 2);
  v8 = *(cf + 3);

  return processPreferences(v7, setInterfaceConfigurationCallout, v8, a2, a3);
}

__CFDictionary *setInterfaceConfigurationCallout(int a1, CFDictionaryRef theDict, const void *a3, const void *a4, const void *a5)
{
  if (!theDict)
  {
    return 0;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  Value = CFDictionaryGetValue(theDict, @"UniqueIdentifier");
  TypeID = CFStringGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID && CFEqual(Value, a3))
  {
    if (a5)
    {
      CFDictionarySetValue(MutableCopy, a4, a5);
      if (CFEqual(a4, @"PPP"))
      {
        v12 = CFDictionaryGetValue(a5, @"UserDefinedName");
        if (v12)
        {
          CFDictionarySetValue(MutableCopy, @"UserDefinedName", v12);
        }

        else
        {
          v14 = CFDictionaryGetValue(MutableCopy, @"UserDefinedName");
          if (v14)
          {
            v15 = v14;
            v16 = CFDictionaryCreateMutableCopy(0, 0, a5);
            CFDictionarySetValue(v16, @"UserDefinedName", v15);
            CFDictionarySetValue(MutableCopy, a4, v16);
            CFRelease(v16);
          }
        }
      }
    }

    else
    {
      CFDictionaryRemoveValue(MutableCopy, a4);
    }
  }

  return MutableCopy;
}

CFTypeRef SCUserPreferencesCopyExtendedInterfaceConfiguration(CFTypeRef cf, const void *a2, const void *a3)
{
  cfa[1] = *MEMORY[0x1E69E9840];
  cfa[0] = 0;
  if (__SCUserPreferencesInitialize_initialized != -1)
  {
    SCUserPreferencesGetTypeID_cold_1();
    if (cf)
    {
      goto LABEL_3;
    }

LABEL_11:
    _SCErrorSet(1002);
    return 0;
  }

  if (!cf)
  {
    goto LABEL_11;
  }

LABEL_3:
  v6 = __kSCUserPreferencesTypeID;
  if (CFGetTypeID(cf) != v6)
  {
    goto LABEL_11;
  }

  TypeID = SCNetworkInterfaceGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID || !__SCNetworkInterfaceIsValidExtendedConfigurationType(a2, a3, 0))
  {
    goto LABEL_11;
  }

  v8 = processPreferences(*(cf + 2), copyInterfaceConfigurationCallout, *(cf + 3), a3, cfa);
  result = cfa[0];
  if (!v8 && cfa[0])
  {
    CFRelease(cfa[0]);
    return 0;
  }

  return result;
}

uint64_t SCUserPreferencesSetExtendedInterfaceConfiguration(CFTypeRef cf, const void *a2, const void *a3, uint64_t a4)
{
  if (__SCUserPreferencesInitialize_initialized != -1)
  {
    SCUserPreferencesGetTypeID_cold_1();
    if (cf)
    {
      goto LABEL_3;
    }

LABEL_11:
    _SCErrorSet(1002);
    return 0;
  }

  if (!cf)
  {
    goto LABEL_11;
  }

LABEL_3:
  v8 = __kSCUserPreferencesTypeID;
  if (CFGetTypeID(cf) != v8)
  {
    goto LABEL_11;
  }

  TypeID = SCNetworkInterfaceGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID || !__SCNetworkInterfaceIsValidExtendedConfigurationType(a2, a3, 0))
  {
    goto LABEL_11;
  }

  v10 = *(cf + 2);
  v11 = *(cf + 3);

  return processPreferences(v10, setInterfaceConfigurationCallout, v11, a3, a4);
}

CFTypeRef SCNetworkConnectionCopyAllUserPreferences(const __SCNetworkConnection *a1)
{
  cf[1] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  v1 = SCNetworkConnectionCopyServiceID(a1);
  if (!processPreferences(v1, copyAllCallout, 0, 0, cf) && cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  CFRelease(v1);
  return cf[0];
}

CFTypeRef copyAllCallout(const __CFString *a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4, __CFArray **a5)
{
  if (!theDict)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"UniqueIdentifier");
  TypeID = CFStringGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) == TypeID)
    {
      Private = __SCUserPreferencesCreatePrivate(a1, Value);
      if (Private)
      {
        v11 = Private;
        Mutable = *a5;
        if (!*a5)
        {
          Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
          *a5 = Mutable;
        }

        CFArrayAppendValue(Mutable, v11);
        CFRelease(v11);
      }
    }
  }

  return CFRetain(theDict);
}

CFTypeRef SCNetworkConnectionCopyCurrentUserPreferences(const __SCNetworkConnection *a1)
{
  cf[1] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  v1 = SCNetworkConnectionCopyServiceID(a1);
  if (!processPreferences(v1, copyCurrentCallout, 0, 0, cf) && cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  CFRelease(v1);
  return cf[0];
}

CFTypeRef copyCurrentCallout(const __CFString *a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (!theDict)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"UniqueIdentifier");
  TypeID = CFStringGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) == TypeID)
    {
      v10 = CFDictionaryGetValue(theDict, @"ConnectByDefault");
      v11 = CFBooleanGetTypeID();
      if (v10)
      {
        if (CFGetTypeID(v10) == v11 && CFBooleanGetValue(v10))
        {
          *a5 = __SCUserPreferencesCreatePrivate(a1, Value);
        }
      }
    }
  }

  return CFRetain(theDict);
}

uint64_t SCNetworkConnectionCreateUserPreferences(const __SCNetworkConnection *a1)
{
  v1 = SCNetworkConnectionCopyServiceID(a1);
  v2 = CFUUIDCreate(0);
  v3 = CFUUIDCreateString(0, v2);
  CFRelease(v2);
  Private = __SCUserPreferencesCreatePrivate(v1, v3);
  if (Private)
  {
    processPreferences(v1, createCallout, v3, 0, 0);
  }

  CFRelease(v3);
  CFRelease(v1);
  return Private;
}

uint64_t __SCUserPreferencesCreatePrivate(const __CFString *a1, const __CFString *a2)
{
  if (__SCUserPreferencesInitialize_initialized != -1)
  {
    SCUserPreferencesGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(Instance + 16) = CFStringCreateCopy(0, a1);
    *(Instance + 24) = CFStringCreateCopy(0, a2);
  }

  return Instance;
}

__CFDictionary *createCallout(int a1, CFTypeRef cf, const void *a3)
{
  if (cf)
  {

    return CFRetain(cf);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"UniqueIdentifier", a3);
    return Mutable;
  }
}

CFDictionaryRef SCUserPreferencesCopyStartOptions(void *cf)
{
  theDict[1] = *MEMORY[0x1E69E9840];
  theDict[0] = 0;
  if (__SCUserPreferencesInitialize_initialized == -1)
  {
    if (!cf)
    {
      goto LABEL_49;
    }
  }

  else
  {
    SCUserPreferencesGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_49;
    }
  }

  v2 = __kSCUserPreferencesTypeID;
  if (CFGetTypeID(cf) == v2)
  {
    processPreferences(cf[2], copyOptionsCallout, cf[3], 0, theDict);
    if (!theDict[0])
    {
      return theDict[0];
    }

    Value = CFDictionaryGetValue(theDict[0], @"PPP");
    TypeID = CFDictionaryGetTypeID();
    if (!Value || CFGetTypeID(Value) != TypeID || ((v5 = CFDictionaryGetValue(Value, @"AuthPasswordEncryption")) != 0 ? (v6 = v5) : (v6 = @"Keychain"), (v7 = CFStringGetTypeID(), !v6) || CFGetTypeID(v6) != v7 || !CFEqual(v6, @"Keychain")))
    {
LABEL_22:
      v13 = CFDictionaryGetValue(theDict[0], @"IPSec");
      v14 = CFDictionaryGetTypeID();
      if (v13)
      {
        if (CFGetTypeID(v13) == v14)
        {
          v15 = CFDictionaryGetValue(v13, @"AuthenticationMethod");
          v16 = CFStringGetTypeID();
          if (v15)
          {
            if (CFGetTypeID(v15) == v16 && CFEqual(v15, @"SharedSecret"))
            {
              v17 = CFDictionaryGetValue(v13, @"SharedSecretEncryption");
              v18 = v17 ? v17 : @"Keychain";
              v19 = CFStringGetTypeID();
              if (v18)
              {
                if (CFGetTypeID(v18) == v19 && CFEqual(v18, @"Keychain"))
                {
                  v20 = CFDictionaryGetValue(v13, @"SharedSecret");
                  v21 = CFStringGetTypeID();
                  if (!v20)
                  {
                    CFDataGetTypeID();
                    goto LABEL_39;
                  }

                  if (CFGetTypeID(v20) == v21)
                  {
                    CFRetain(v20);
LABEL_40:
                    v24 = _SCSecKeychainPasswordItemCopy();
                    if (v24)
                    {
                      v25 = v24;
                      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v13);
                      BytePtr = CFDataGetBytePtr(v25);
                      Length = CFDataGetLength(v25);
                      v29 = CFStringCreateWithBytes(0, BytePtr, Length, 0x8000100u, 0);
                      CFRelease(v25);
                      CFDictionarySetValue(MutableCopy, @"SharedSecret", v29);
                      CFRelease(v29);
                      CFDictionaryRemoveValue(MutableCopy, @"SharedSecretEncryption");
                      v30 = CFDictionaryCreateMutableCopy(0, 0, theDict[0]);
                      CFDictionarySetValue(v30, @"IPSec", MutableCopy);
                      CFRelease(MutableCopy);
                      CFRelease(theDict[0]);
                      theDict[0] = v30;
                    }

                    else
                    {
                      v31 = _SCSecKeychainCopySystemKeychain();
                      if (v31)
                      {
                        v32 = v31;
                        if (_SCSecKeychainPasswordItemExists())
                        {
                          v33 = CFDictionaryCreateMutableCopy(0, 0, v13);
                          CFDictionarySetValue(v33, @"SharedSecret", v20);
                          CFDictionarySetValue(v33, @"SharedSecretEncryption", @"Keychain");
                          v34 = CFDictionaryCreateMutableCopy(0, 0, theDict[0]);
                          CFDictionarySetValue(v34, @"IPSec", v33);
                          CFRelease(v33);
                          CFRelease(theDict[0]);
                          theDict[0] = v34;
                        }

                        CFRelease(v32);
                      }
                    }

                    CFRelease(v20);
                    return theDict[0];
                  }

                  v22 = CFDataGetTypeID();
                  if (CFGetTypeID(v20) != v22 || (CFDataGetLength(v20) & 1) != 0)
                  {
LABEL_39:
                    UniqueID = SCUserPreferencesGetUniqueID(cf);
                    v20 = CFStringCreateMutableCopy(0, 0, UniqueID);
                    CFStringAppend(v20, @".SS");
                    goto LABEL_40;
                  }
                }
              }
            }
          }
        }
      }

      return theDict[0];
    }

    v8 = CFDictionaryGetValue(Value, @"AuthPassword");
    v9 = CFStringGetTypeID();
    if (v8)
    {
      if (CFGetTypeID(v8) == v9)
      {
        goto LABEL_20;
      }

      v10 = CFDataGetTypeID();
      if (CFGetTypeID(v8) == v10 && (CFDataGetLength(v8) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      CFDataGetTypeID();
    }

    v8 = SCUserPreferencesGetUniqueID(cf);
LABEL_20:
    if (_SCSecKeychainPasswordItemExists())
    {
      v11 = CFDictionaryCreateMutableCopy(0, 0, Value);
      CFDictionarySetValue(v11, @"AuthPassword", v8);
      CFDictionarySetValue(v11, @"AuthPasswordEncryption", @"Keychain");
      v12 = CFDictionaryCreateMutableCopy(0, 0, theDict[0]);
      CFDictionarySetValue(v12, @"PPP", v11);
      CFRelease(v11);
      CFRelease(theDict[0]);
      theDict[0] = v12;
    }

    goto LABEL_22;
  }

LABEL_49:
  _SCErrorSet(1002);
  return 0;
}

CFTypeRef copyOptionsCallout(int a1, CFDictionaryRef theDict, const void *a3, uint64_t a4, CFTypeRef *a5)
{
  if (!theDict)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"UniqueIdentifier");
  TypeID = CFStringGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID && CFEqual(Value, a3))
  {
    if (*a5)
    {
      CFRelease(*a5);
    }

    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
    *a5 = MutableCopy;
    CFDictionaryRemoveValue(MutableCopy, @"UniqueIdentifier");
    CFDictionaryRemoveValue(*a5, @"ConnectByDefault");
  }

  return CFRetain(theDict);
}

uint64_t SCNetworkConnectionStartWithUserPreferences(const __SCNetworkConnection *a1, void *cf, Boolean a3)
{
  started = SCUserPreferencesCopyStartOptions(cf);
  v6 = SCNetworkConnectionStart(a1, started, a3);
  if (started)
  {
    CFRelease(started);
  }

  return v6;
}

uint64_t SCUserPreferencesCheckInterfacePassword(void *a1, const void *a2, int a3)
{
  if (!checkUserPreferencesPassword(a1, a2, a3))
  {
    return 0;
  }

  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v6 = SCUserPreferencesCopyInterfaceConfiguration(a1, a2);
      v7 = copyUserXAuthID(v6, a1);
      v8 = @"XAuthPassword";
      v9 = @"XAuthPasswordEncryption";
      v10 = &kSCValNetIPSecXAuthPasswordEncryptionKeychain;
      goto LABEL_15;
    }

    if (a3 != 5)
    {
      goto LABEL_9;
    }

    v11 = SCUserPreferencesCopyInterfaceConfiguration(a1, a2);
    UserPasswordID = getUserPasswordID(v11, a1);
    v13 = kSCValNetVPNAuthPasswordEncryptionKeychain;
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v6 = SCUserPreferencesCopyExtendedInterfaceConfiguration(a1, a2, @"IPSec");
        v7 = copyUserSharedSecretID(v6, a1);
        v8 = @"SharedSecret";
        v9 = @"SharedSecretEncryption";
        v10 = &kSCValNetIPSecSharedSecretEncryptionKeychain;
LABEL_15:
        password = __extract_password(0, v6, v8, v9, *v10, v7, 0);
        if (v6)
        {
          CFRelease(v6);
        }

        v15 = v7;
        goto LABEL_18;
      }

LABEL_9:
      _SCErrorSet(1002);
      return 0;
    }

    v11 = SCUserPreferencesCopyInterfaceConfiguration(a1, a2);
    UserPasswordID = getUserPasswordID(v11, a1);
    v13 = &kSCValNetPPPAuthPasswordEncryptionKeychain;
  }

  password = __extract_password(0, v11, @"AuthPassword", @"AuthPasswordEncryption", *v13, UserPasswordID, 0);
  if (v11)
  {
    v15 = v11;
LABEL_18:
    CFRelease(v15);
  }

  return password;
}

uint64_t checkUserPreferencesPassword(CFTypeRef cf, const void *a2, int a3)
{
  if (__SCUserPreferencesInitialize_initialized == -1)
  {
    if (!cf)
    {
      goto LABEL_21;
    }
  }

  else
  {
    SCUserPreferencesGetTypeID_cold_1();
    if (!cf)
    {
      goto LABEL_21;
    }
  }

  v6 = __kSCUserPreferencesTypeID;
  if (CFGetTypeID(cf) != v6)
  {
    goto LABEL_21;
  }

  TypeID = SCNetworkInterfaceGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID)
  {
    goto LABEL_21;
  }

  result = 1;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      InterfaceType = SCNetworkInterfaceGetInterfaceType(a2);
      v10 = &kSCNetworkInterfaceTypePPP;
    }

    else
    {
      if (a3 != 2)
      {
        return result;
      }

      v11 = SCNetworkInterfaceGetInterfaceType(a2);
      if (!CFEqual(v11, @"PPP"))
      {
        goto LABEL_21;
      }

      Interface = SCNetworkInterfaceGetInterface(a2);
      if (!Interface)
      {
        goto LABEL_21;
      }

      InterfaceType = SCNetworkInterfaceGetInterfaceType(Interface);
      v10 = &kSCNetworkInterfaceTypeL2TP;
    }
  }

  else
  {
    switch(a3)
    {
      case 3:
        goto LABEL_21;
      case 4:
        InterfaceType = SCNetworkInterfaceGetInterfaceType(a2);
        v10 = &kSCNetworkInterfaceTypeIPSec;
        break;
      case 5:
        InterfaceType = SCNetworkInterfaceGetInterfaceType(a2);
        v10 = kSCNetworkInterfaceTypeVPN;
        break;
      default:
        return result;
    }
  }

  if (CFEqual(InterfaceType, *v10))
  {
    return 1;
  }

LABEL_21:
  _SCErrorSet(1002);
  return 0;
}

const void *getUserPasswordID(const __CFDictionary *a1, void *cf)
{
  if (!a1 || (Value = CFDictionaryGetValue(a1, @"AuthPasswordEncryption"), TypeID = CFStringGetTypeID(), !Value) || CFGetTypeID(Value) != TypeID || !CFEqual(Value, @"Keychain") || (result = CFDictionaryGetValue(a1, @"AuthPassword")) == 0)
  {

    return SCUserPreferencesGetUniqueID(cf);
  }

  return result;
}

__CFString *copyUserSharedSecretID(const __CFDictionary *a1, void *cf)
{
  if (a1 && (Value = CFDictionaryGetValue(a1, @"SharedSecretEncryption"), TypeID = CFStringGetTypeID(), Value) && CFGetTypeID(Value) == TypeID && CFEqual(Value, @"Keychain") && (v6 = CFDictionaryGetValue(a1, @"SharedSecret")) != 0)
  {
    MutableCopy = v6;
    CFRetain(v6);
  }

  else
  {
    UserPasswordID = getUserPasswordID(a1, cf);
    MutableCopy = CFStringCreateMutableCopy(0, 0, UserPasswordID);
    CFStringAppend(MutableCopy, @".SS");
  }

  return MutableCopy;
}

__CFString *copyUserXAuthID(const __CFDictionary *a1, void *cf)
{
  if (a1 && (Value = CFDictionaryGetValue(a1, @"XAuthPasswordEncryption"), TypeID = CFStringGetTypeID(), Value) && CFGetTypeID(Value) == TypeID && CFEqual(Value, @"Keychain") && (v6 = CFDictionaryGetValue(a1, @"XAuthPassword")) != 0)
  {
    MutableCopy = v6;
    CFRetain(v6);
  }

  else
  {
    UserPasswordID = getUserPasswordID(a1, cf);
    MutableCopy = CFStringCreateMutableCopy(0, 0, UserPasswordID);
    CFStringAppend(MutableCopy, @".XAUTH");
  }

  return MutableCopy;
}

uint64_t SCUserPreferencesCopyInterfacePassword(void *a1, const void *a2, int a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  if (!checkUserPreferencesPassword(a1, a2, a3))
  {
    return 0;
  }

  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v6 = SCUserPreferencesCopyInterfaceConfiguration(a1, a2);
      v7 = copyUserXAuthID(v6, a1);
      v8 = @"XAuthPassword";
      v9 = @"XAuthPasswordEncryption";
      v10 = &kSCValNetIPSecXAuthPasswordEncryptionKeychain;
      goto LABEL_15;
    }

    if (a3 != 5)
    {
      goto LABEL_9;
    }

    v11 = SCUserPreferencesCopyInterfaceConfiguration(a1, a2);
    UserPasswordID = getUserPasswordID(v11, a1);
    v13 = kSCValNetVPNAuthPasswordEncryptionKeychain;
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v6 = SCUserPreferencesCopyExtendedInterfaceConfiguration(a1, a2, @"IPSec");
        v7 = copyUserSharedSecretID(v6, a1);
        v8 = @"SharedSecret";
        v9 = @"SharedSecretEncryption";
        v10 = &kSCValNetIPSecSharedSecretEncryptionKeychain;
LABEL_15:
        __extract_password(0, v6, v8, v9, *v10, v7, v16);
        if (v6)
        {
          CFRelease(v6);
        }

        v15 = v7;
        goto LABEL_18;
      }

LABEL_9:
      _SCErrorSet(1002);
      return 0;
    }

    v11 = SCUserPreferencesCopyInterfaceConfiguration(a1, a2);
    UserPasswordID = getUserPasswordID(v11, a1);
    v13 = &kSCValNetPPPAuthPasswordEncryptionKeychain;
  }

  __extract_password(0, v11, @"AuthPassword", @"AuthPasswordEncryption", *v13, UserPasswordID, v16);
  if (v11)
  {
    v15 = v11;
LABEL_18:
    CFRelease(v15);
  }

  return v16[0];
}

uint64_t SCUserPreferencesRemoveInterfacePassword(void *a1, const void *a2, int a3)
{
  cf[1] = *MEMORY[0x1E69E9840];
  if (!checkUserPreferencesPassword(a1, a2, a3))
  {
    return 0;
  }

  if (a3 > 3)
  {
    if (a3 == 4)
    {
      cf[0] = 0;
      v6 = SCUserPreferencesCopyInterfaceConfiguration(a1, a2);
      v7 = copyUserXAuthID(v6, a1);
      if (__remove_password(0, v6, @"XAuthPassword", @"XAuthPasswordEncryption", @"Keychain", v7, cf))
      {
        v8 = SCUserPreferencesSetInterfaceConfiguration(a1, a2, cf[0]);
LABEL_20:
        v12 = v8;
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        if (!v6)
        {
          goto LABEL_24;
        }

LABEL_23:
        CFRelease(v6);
LABEL_24:
        v13 = v7;
LABEL_27:
        CFRelease(v13);
        return v12;
      }

LABEL_29:
      v12 = 0;
      if (!v6)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (a3 != 5)
    {
      goto LABEL_10;
    }

    cf[0] = 0;
    v9 = SCUserPreferencesCopyInterfaceConfiguration(a1, a2);
    UserPasswordID = getUserPasswordID(v9, a1);
    v11 = kSCValNetVPNAuthPasswordEncryptionKeychain;
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        cf[0] = 0;
        v6 = SCUserPreferencesCopyExtendedInterfaceConfiguration(a1, a2, @"IPSec");
        v7 = copyUserSharedSecretID(v6, a1);
        if (__remove_password(0, v6, @"SharedSecret", @"SharedSecretEncryption", @"Keychain", v7, cf))
        {
          v8 = SCUserPreferencesSetExtendedInterfaceConfiguration(a1, a2, @"IPSec", cf[0]);
          goto LABEL_20;
        }

        goto LABEL_29;
      }

LABEL_10:
      _SCErrorSet(1002);
      return 0;
    }

    cf[0] = 0;
    v9 = SCUserPreferencesCopyInterfaceConfiguration(a1, a2);
    UserPasswordID = getUserPasswordID(v9, a1);
    v11 = &kSCValNetPPPAuthPasswordEncryptionKeychain;
  }

  if (!__remove_password(0, v9, @"AuthPassword", @"AuthPasswordEncryption", *v11, UserPasswordID, cf))
  {
    v12 = 0;
    if (!v9)
    {
      return v12;
    }

LABEL_26:
    v13 = v9;
    goto LABEL_27;
  }

  v12 = SCUserPreferencesSetInterfaceConfiguration(a1, a2, cf[0]);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v9)
  {
    goto LABEL_26;
  }

  return v12;
}

uint64_t SCUserPreferencesSetInterfacePassword(void *a1, const void *a2, int a3, uint64_t a4, uint64_t a5)
{
  if (!checkUserPreferencesPassword(a1, a2, a3))
  {
    return 0;
  }

  v8 = _SC_CFBundleGet();
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v17 = SCUserPreferencesCopyInterfaceConfiguration(a1, a2);
      v10 = copyUserXAuthID(v17, a1);
      if (v17)
      {
        CFDictionaryGetValue(v17, @"XAuthName");
      }

      v21 = SCUserPreferencesCopyName(a1);
      if (v8)
      {
        v8 = CFBundleCopyLocalizedString(v8, @"KEYCHAIN_KIND_IPSEC_XAUTH_PASSWORD", @"IPSec XAuth Password", 0);
      }

      if (_SCSecKeychainPasswordItemSet())
      {
        if (v17)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v17);
        }

        else
        {
          MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        v28 = MutableCopy;
        CFDictionarySetValue(MutableCopy, @"XAuthPassword", v10);
        CFDictionarySetValue(v28, @"XAuthPasswordEncryption", @"Keychain");
        v15 = SCUserPreferencesSetInterfaceConfiguration(a1, a2, v28);
        CFRelease(v28);
      }

      else
      {
        v15 = 0;
      }

      if (v17)
      {
        CFRelease(v17);
      }

      if (v8)
      {
        CFRelease(v8);
      }

      if (!v21)
      {
        goto LABEL_67;
      }

      v24 = v21;
      goto LABEL_66;
    }

    if (a3 != 5)
    {
      goto LABEL_14;
    }

    v13 = SCUserPreferencesCopyInterfaceConfiguration(a1, a2);
    UserPasswordID = getUserPasswordID(v13, a1);
    if (v13)
    {
      CFDictionaryGetValue(v13, @"AuthName");
    }

    v18 = SCUserPreferencesCopyName(a1);
    if (v8)
    {
      v8 = CFBundleCopyLocalizedString(v8, @"KEYCHAIN_KIND_VPN_PASSWORD", @"VPN Password", 0);
    }

    if (_SCSecKeychainPasswordItemSet())
    {
      if (v13)
      {
        Mutable = CFDictionaryCreateMutableCopy(0, 0, v13);
      }

      else
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      v25 = Mutable;
      if (!Mutable)
      {
        SCUserPreferencesSetInterfacePassword_cold_1();
      }

      CFDictionarySetValue(Mutable, @"AuthPassword", UserPasswordID);
      v26 = kSCValNetVPNAuthPasswordEncryptionKeychain;
LABEL_52:
      CFDictionarySetValue(v25, @"AuthPasswordEncryption", *v26);
      v15 = SCUserPreferencesSetInterfaceConfiguration(a1, a2, v25);
      CFRelease(v25);
      if (!v13)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v9 = SCUserPreferencesCopyExtendedInterfaceConfiguration(a1, a2, @"IPSec");
        v10 = copyUserSharedSecretID(v9, a1);
        v11 = SCUserPreferencesCopyName(a1);
        if (v8)
        {
          v8 = CFBundleCopyLocalizedString(v8, @"KEYCHAIN_KIND_IPSEC_SHARED_SECRET", @"IPSec Shared Secret", 0);
        }

        if (_SCSecKeychainPasswordItemSet())
        {
          if (v9)
          {
            v12 = CFDictionaryCreateMutableCopy(0, 0, v9);
          }

          else
          {
            v12 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          }

          v23 = v12;
          CFDictionarySetValue(v12, @"SharedSecret", v10);
          CFDictionarySetValue(v23, @"SharedSecretEncryption", @"Keychain");
          v15 = SCUserPreferencesSetExtendedInterfaceConfiguration(a1, a2, @"IPSec", v23);
          CFRelease(v23);
        }

        else
        {
          v15 = 0;
        }

        if (v9)
        {
          CFRelease(v9);
        }

        if (v8)
        {
          CFRelease(v8);
        }

        if (!v11)
        {
          goto LABEL_67;
        }

        v24 = v11;
LABEL_66:
        CFRelease(v24);
LABEL_67:
        v27 = v10;
        goto LABEL_68;
      }

LABEL_14:
      _SCErrorSet(1002);
      return 0;
    }

    v13 = SCUserPreferencesCopyInterfaceConfiguration(a1, a2);
    v16 = getUserPasswordID(v13, a1);
    if (v13)
    {
      CFDictionaryGetValue(v13, @"AuthName");
    }

    v18 = SCUserPreferencesCopyName(a1);
    if (v8)
    {
      v8 = CFBundleCopyLocalizedString(v8, @"KEYCHAIN_KIND_PPP_PASSWORD", @"PPP Password", 0);
    }

    if (_SCSecKeychainPasswordItemSet())
    {
      if (v13)
      {
        v20 = CFDictionaryCreateMutableCopy(0, 0, v13);
      }

      else
      {
        v20 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      v25 = v20;
      CFDictionarySetValue(v20, @"AuthPassword", v16);
      v26 = &kSCValNetPPPAuthPasswordEncryptionKeychain;
      goto LABEL_52;
    }
  }

  v15 = 0;
  if (v13)
  {
LABEL_53:
    CFRelease(v13);
  }

LABEL_54:
  if (v8)
  {
    CFRelease(v8);
  }

  if (v18)
  {
    v27 = v18;
LABEL_68:
    CFRelease(v27);
  }

  return v15;
}

void __SCUserPreferencesDeallocate(uint64_t a1)
{
  CFRelease(*(a1 + 24));
  v2 = *(a1 + 16);

  CFRelease(v2);
}

CFHashCode __SCUserPreferencesHash(uint64_t a1)
{
  v1 = *(a1 + 24);

  return CFHash(v1);
}

__CFString *__SCUserPreferencesCopyDescription(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<SCUserPreferences %p [%p]> {", a1, v2);
  CFStringAppendFormat(Mutable, 0, @"service = %@", a1[2]);
  CFStringAppendFormat(Mutable, 0, @", id = %@", a1[3]);
  CFStringAppendFormat(Mutable, 0, @"}");
  return Mutable;
}

void logCFPreferencesChange(const __CFString *a1, const void *a2)
{
  v115 = *MEMORY[0x1E69E9840];
  v4 = CFPreferencesCopyAppValue(@"LOG_SC_CHANGES", @"com.apple.networkConnect");
  if (!v4)
  {
    return;
  }

  v5 = v4;
  TypeID = CFBooleanGetTypeID();
  if (CFGetTypeID(v5) != TypeID)
  {

    CFRelease(v5);
    return;
  }

  Value = CFBooleanGetValue(v5);
  CFRelease(v5);
  if (!Value)
  {
    return;
  }

  memset(&v112, 0, sizeof(v112));
  v111.tv_sec = 0;
  *&v111.tv_usec = 0;
  gettimeofday(&v111, 0);
  localtime_r(&v111.tv_sec, &v112);
  v8 = CFStringCreateWithFormat(0, 0, @"/var/tmp/com.apple.networkConnect-%@-%4d%02d%02d.%02d%02d%02d.%03d", a1, (v112.tm_year + 1900), (v112.tm_mon + 1), v112.tm_mday, v112.tm_hour, v112.tm_min, v112.tm_sec, (v111.tv_usec / 1000));
  _SC_cfstring_to_cstring(v8, v114, 256, 0x8000100u);
  CFRelease(v8);
  v9 = __log_SCNetworkConfiguration();
  v10 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v9, v10))
  {
    v11 = _os_log_pack_size();
    v17 = &v111 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = __error();
    v19 = _os_log_pack_fill(v17, v11, *v18, &dword_1AD2AD000, "CFPreferences being updated, old/new in %s", v111.tv_sec);
    *v19 = 136315138;
    *(v19 + 4) = v114;
    __SC_log_send(5, v9, v10, v17);
  }

  if (mkdir(v114, 0x1EDu) == -1)
  {
    v44 = __log_SCNetworkConfiguration();
    v45 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v44, v45))
    {
      return;
    }

    v46 = _os_log_pack_size();
    v52 = &v111 - ((MEMORY[0x1EEE9AC00](v46, v47, v48, v49, v50, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
    v53 = *__error();
    v54 = _os_log_pack_fill(v52, v46, v53, &dword_1AD2AD000, "mkdir() failed: %s");
    goto LABEL_23;
  }

  v20 = _SC_copyBacktrace();
  if (v20)
  {
    v21 = v20;
    __strlcpy_chk();
    __strlcat_chk();
    v22 = open(v113, 3585, 420);
    if (v22 == -1)
    {
      v58 = __log_SCNetworkConfiguration();
      v59 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v58, v59))
      {
        v60 = _os_log_pack_size();
        v66 = &v111 - ((MEMORY[0x1EEE9AC00](v60, v61, v62, v63, v64, v65) + 15) & 0xFFFFFFFFFFFFFFF0);
        v67 = __error();
        v68 = _os_log_pack_fill(v66, v60, *v67, &dword_1AD2AD000, "fopen() failed: %s", v111.tv_sec);
        v69 = __error();
        v70 = SCErrorString(*v69);
        *v68 = 136315138;
        *(v68 + 4) = v70;
        __SC_log_send(5, v58, v59, v66);
      }

      v43 = v21;
      goto LABEL_33;
    }

    v23 = fdopen(v22, "w");
    SCPrint(1, v23, @"%@", v24, v25, v26, v27, v28, v21);
    fclose(v23);
    CFRelease(v21);
  }

  v29 = CFPreferencesCopyAppValue(a1, @"com.apple.networkConnect");
  if (v29)
  {
    v30 = v29;
    __strlcpy_chk();
    __strlcat_chk();
    v31 = open(v113, 3585, 420);
    if (v31 == -1)
    {
      v71 = __log_SCNetworkConfiguration();
      v72 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v71, v72))
      {
        v73 = _os_log_pack_size();
        v79 = &v111 - ((MEMORY[0x1EEE9AC00](v73, v74, v75, v76, v77, v78) + 15) & 0xFFFFFFFFFFFFFFF0);
        v80 = __error();
        v81 = _os_log_pack_fill(v79, v73, *v80, &dword_1AD2AD000, "fopen() failed: %s", v111.tv_sec);
        v82 = __error();
        v83 = SCErrorString(*v82);
        *v81 = 136315138;
        *(v81 + 4) = v83;
        __SC_log_send(5, v71, v72, v79);
      }
    }

    else
    {
      v32 = v31;
      Data = CFPropertyListCreateData(0, v30, kCFPropertyListXMLFormat_v1_0, 0, 0);
      if (Data)
      {
        v34 = Data;
        BytePtr = CFDataGetBytePtr(Data);
        Length = CFDataGetLength(v34);
        write(v32, BytePtr, Length);
        close(v32);
        CFRelease(v34);
        CFRelease(v30);
        goto LABEL_14;
      }

      v84 = __log_SCNetworkConfiguration();
      v85 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v84, v85))
      {
        v86 = _os_log_pack_size();
        v92 = &v111 - ((MEMORY[0x1EEE9AC00](v86, v87, v88, v89, v90, v91) + 15) & 0xFFFFFFFFFFFFFFF0);
        v93 = __error();
        *_os_log_pack_fill(v92, v86, *v93, &dword_1AD2AD000, "CFPropertyListCreateData() failed") = 0;
        __SC_log_send(5, v84, v85, v92);
      }

      close(v32);
    }

    v43 = v30;
    goto LABEL_33;
  }

LABEL_14:
  if (!a2)
  {
    return;
  }

  __strlcpy_chk();
  __strlcat_chk();
  v37 = open(v113, 3585, 420);
  if (v37 == -1)
  {
    v44 = __log_SCNetworkConfiguration();
    v45 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v44, v45))
    {
      return;
    }

    v94 = _os_log_pack_size();
    v52 = &v111 - ((MEMORY[0x1EEE9AC00](v94, v95, v96, v97, v98, v99) + 15) & 0xFFFFFFFFFFFFFFF0);
    v100 = *__error();
    v54 = _os_log_pack_fill(v52, v94, v100, &dword_1AD2AD000, "fopen() failed: %s");
LABEL_23:
    v55 = v54;
    v56 = __error();
    v57 = SCErrorString(*v56);
    *v55 = 136315138;
    *(v55 + 4) = v57;
    __SC_log_send(5, v44, v45, v52);
    return;
  }

  v38 = v37;
  v39 = CFPropertyListCreateData(0, a2, kCFPropertyListXMLFormat_v1_0, 0, 0);
  if (v39)
  {
    v40 = v39;
    v41 = CFDataGetBytePtr(v39);
    v42 = CFDataGetLength(v40);
    write(v38, v41, v42);
    close(v38);
    v43 = v40;
LABEL_33:
    CFRelease(v43);
    return;
  }

  v101 = __log_SCNetworkConfiguration();
  v102 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v101, v102))
  {
    v103 = _os_log_pack_size();
    v109 = &v111 - ((MEMORY[0x1EEE9AC00](v103, v104, v105, v106, v107, v108) + 15) & 0xFFFFFFFFFFFFFFF0);
    v110 = __error();
    *_os_log_pack_fill(v109, v103, *v110, &dword_1AD2AD000, "CFPropertyListCreateData() failed") = 0;
    __SC_log_send(5, v101, v102, v109);
  }

  close(v38);
}

SCNetworkReachabilityRef SCNetworkReachabilityCreateWithAddressPair(CFAllocatorRef allocator, const sockaddr *localAddress, const sockaddr *remoteAddress)
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (!(localAddress | remoteAddress))
  {
    goto LABEL_2;
  }

  v5 = remoteAddress;
  if (!localAddress)
  {
    v7 = 0;
    if (!remoteAddress)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v7 = is_valid_address(&localAddress->sa_len);
  if (!v7)
  {
    goto LABEL_2;
  }

  if (v5)
  {
LABEL_9:
    v5 = is_valid_address(&v5->sa_len);
    if (v5)
    {
      goto LABEL_10;
    }

LABEL_2:
    _SCErrorSet(1002);
    return 0;
  }

LABEL_10:
  Private = __SCNetworkReachabilityCreatePrivate(allocator);
  v3 = Private;
  if (!Private)
  {
    return v3;
  }

  *(Private + 20) = 1;
  if (v7)
  {
    *(Private + 12) = nw_endpoint_create_address(v7);
    if (v5)
    {
      v9 = v7[1];
      if (v9 != v5->sa_family || *v7 != v5->sa_len)
      {
        goto LABEL_28;
      }

      if (v9 == 30)
      {
        if (*(v7 + 6) != *&v5[1].sa_data[6])
        {
          goto LABEL_28;
        }

        v12 = v7 + 8;
        v11 = &v5->sa_data[6];
        v10 = 16;
      }

      else
      {
        if (v9 == 2)
        {
          v10 = 4;
        }

        else
        {
          v10 = *v7;
        }

        if (v9 == 2)
        {
          v11 = &v5->sa_data[2];
        }

        else
        {
          v11 = v5;
        }

        if (v9 == 2)
        {
          v12 = v7 + 4;
        }

        else
        {
          v12 = v7;
        }
      }

      if (!bcmp(v12, v11, v10))
      {
        address = nw_retain(*(v3 + 12));
LABEL_29:
        *(v3 + 13) = address;
        goto LABEL_30;
      }

LABEL_28:
      address = nw_endpoint_create_address(v5);
      goto LABEL_29;
    }
  }

  else if (v5)
  {
    goto LABEL_28;
  }

LABEL_30:
  *(v3 + 29) = MEMORY[0x1B26F5100]();
  MEMORY[0x1B26F5170]();
  v14 = __log_SCNetworkReachability_log;
  if (!__log_SCNetworkReachability_log)
  {
    v14 = os_log_create("com.apple.SystemConfiguration", "SCNetworkReachability");
    __log_SCNetworkReachability_log = v14;
  }

  v15 = _SC_syslog_os_log_mapping(7);
  if (__SC_log_enabled(7, v14, v15))
  {
    v16 = _os_log_pack_size();
    v22 = v25 - ((MEMORY[0x1EEE9AC00](v16, v17, v18, v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = __error();
    v24 = _os_log_pack_fill(v22, v16, *v23, &dword_1AD2AD000, "%s%s %@");
    *v24 = 136315650;
    *(v24 + 4) = v3 + 193;
    *(v24 + 12) = 2080;
    *(v24 + 14) = "create w/address pair";
    *(v24 + 22) = 2112;
    *(v24 + 24) = v3;
    __SC_log_send(7, v14, v15, v22);
  }

  return v3;
}

char *__SCNetworkReachabilityCreateWithPTR(unsigned __int8 *a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v1 = is_valid_address(a1);
  if (v1)
  {
    v2 = v1;
    Private = __SCNetworkReachabilityCreatePrivate(0);
    v4 = Private;
    if (Private)
    {
      *(Private + 20) = 3;
      *(Private + 13) = nw_endpoint_create_address(v2);
      *(v4 + 29) = MEMORY[0x1B26F5100]();
      nw_parameters_set_resolve_ptr();
      v5 = __log_SCNetworkReachability_log;
      if (!__log_SCNetworkReachability_log)
      {
        v5 = os_log_create("com.apple.SystemConfiguration", "SCNetworkReachability");
        __log_SCNetworkReachability_log = v5;
      }

      v6 = _SC_syslog_os_log_mapping(7);
      if (__SC_log_enabled(7, v5, v6))
      {
        v7 = _os_log_pack_size();
        v13 = v17 - ((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
        v14 = __error();
        v15 = _os_log_pack_fill(v13, v7, *v14, &dword_1AD2AD000, "%s%s %@");
        *v15 = 136315650;
        *(v15 + 4) = v4 + 193;
        *(v15 + 12) = 2080;
        *(v15 + 14) = "create w/ptr";
        *(v15 + 22) = 2112;
        *(v15 + 24) = v4;
        __SC_log_send(7, v5, v6, v13);
      }
    }
  }

  else
  {
    _SCErrorSet(1002);
    return 0;
  }

  return v4;
}

CFTypeID SCNetworkReachabilityGetTypeID(void)
{
  if (__SCNetworkReachabilityInitialize_initialized != -1)
  {
    __SCNetworkReachabilityCreatePrivate_cold_1();
  }

  return __kSCNetworkReachabilityTypeID;
}

CFMutableArrayRef SCNetworkReachabilityCopyResolvedAddress(char *cf, _DWORD *a2)
{
  if (__SCNetworkReachabilityInitialize_initialized != -1)
  {
    __SCNetworkReachabilityCreatePrivate_cold_1();
    if (cf)
    {
      goto LABEL_3;
    }

LABEL_14:
    _SCErrorSet(1002);
    return 0;
  }

  if (!cf)
  {
    goto LABEL_14;
  }

LABEL_3:
  v4 = __kSCNetworkReachabilityTypeID;
  if (CFGetTypeID(cf) != v4 || *(cf + 20) <= 1u)
  {
    goto LABEL_14;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (pthread_mutex_lock((cf + 16)))
  {
    SCNetworkReachabilityCopyResolvedAddress_cold_2();
  }

  if (nw_array_get_count())
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    nw_array_apply();
  }

  else
  {
    Mutable = 0;
  }

  if (pthread_mutex_unlock((cf + 16)))
  {
    SCNetworkReachabilityCopyResolvedAddress_cold_3();
  }

  _SCErrorSet(0);
  return Mutable;
}

uint64_t __SCNetworkReachabilityCopyResolvedAddress_block_invoke(uint64_t a1, int a2, nw_endpoint_t endpoint)
{
  v51 = *MEMORY[0x1E69E9840];
  type = nw_endpoint_get_type(endpoint);
  if (type == nw_endpoint_type_host)
  {
    hostname = nw_endpoint_get_hostname(endpoint);
    if (hostname)
    {
      v10 = *MEMORY[0x1E695E480];
      v11 = CFStringCreateWithCString(*MEMORY[0x1E695E480], hostname, 0x600u);
      if (v11)
      {
        v8 = v11;
        if (CFStringHasPrefix(v11, @".") || CFStringHasSuffix(v8, @"."))
        {
          MutableCopy = CFStringCreateMutableCopy(v10, 0, v8);
          CFRelease(v8);
          CFStringTrim(MutableCopy, @".");
          v8 = MutableCopy;
        }

        goto LABEL_10;
      }

      v24 = __log_SCNetworkReachability_log;
      if (!__log_SCNetworkReachability_log)
      {
        v24 = os_log_create("com.apple.SystemConfiguration", "SCNetworkReachability");
        __log_SCNetworkReachability_log = v24;
      }

      v25 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v24, v25))
      {
        v42 = _os_log_pack_size();
        v32 = &v50 - ((MEMORY[0x1EEE9AC00](v42, v43, v44, v45, v46, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
        v48 = *__error();
        v34 = _os_log_pack_fill(v32, v42, v48, &dword_1AD2AD000, "nw_endpoint_type_host w/non-ASCII host");
        goto LABEL_27;
      }
    }

    else
    {
      v24 = __log_SCNetworkReachability_log;
      if (!__log_SCNetworkReachability_log)
      {
        v24 = os_log_create("com.apple.SystemConfiguration", "SCNetworkReachability");
        __log_SCNetworkReachability_log = v24;
      }

      v25 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v24, v25))
      {
        v35 = _os_log_pack_size();
        v32 = &v50 - ((MEMORY[0x1EEE9AC00](v35, v36, v37, v38, v39, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
        v41 = *__error();
        v34 = _os_log_pack_fill(v32, v35, v41, &dword_1AD2AD000, "nw_endpoint_type_host w/no host");
        goto LABEL_27;
      }
    }
  }

  else
  {
    v6 = type;
    if (type == nw_endpoint_type_address)
    {
      address = nw_endpoint_get_address(endpoint);
      if (address)
      {
        v8 = CFDataCreate(*MEMORY[0x1E695E480], &address->sa_len, address->sa_len);
LABEL_10:
        CFArrayAppendValue(*(a1 + 32), v8);
        CFRelease(v8);
        return 1;
      }

      v24 = __log_SCNetworkReachability_log;
      if (!__log_SCNetworkReachability_log)
      {
        v24 = os_log_create("com.apple.SystemConfiguration", "SCNetworkReachability");
        __log_SCNetworkReachability_log = v24;
      }

      v25 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v24, v25))
      {
        v26 = _os_log_pack_size();
        v32 = &v50 - ((MEMORY[0x1EEE9AC00](v26, v27, v28, v29, v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
        v33 = *__error();
        v34 = _os_log_pack_fill(v32, v26, v33, &dword_1AD2AD000, "nw_endpoint_type_address w/no address");
LABEL_27:
        *v34 = 0;
        __SC_log_send(3, v24, v25, v32);
      }
    }

    else
    {
      v13 = __log_SCNetworkReachability_log;
      if (!__log_SCNetworkReachability_log)
      {
        v13 = os_log_create("com.apple.SystemConfiguration", "SCNetworkReachability");
        __log_SCNetworkReachability_log = v13;
      }

      v14 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v13, v14))
      {
        v15 = _os_log_pack_size();
        v21 = &v50 - ((MEMORY[0x1EEE9AC00](v15, v16, v17, v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
        v22 = __error();
        v23 = _os_log_pack_fill(v21, v15, *v22, &dword_1AD2AD000, "unexpected nw_endpoint type: %u", v50);
        *v23 = 67109120;
        v23[1] = v6;
        __SC_log_send(3, v13, v14, v21);
      }
    }
  }

  return 1;
}

uint64_t SCNetworkReachabilityGetInterfaceIndex(char *cf)
{
  if (__SCNetworkReachabilityInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_13:
      _SCErrorSet(1002);
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    __SCNetworkReachabilityCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_13;
    }
  }

  v2 = __kSCNetworkReachabilityTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_13;
  }

  if (pthread_mutex_lock((cf + 16)))
  {
    SCNetworkReachabilityGetInterfaceIndex_cold_2();
  }

  if ((__SCNetworkReachabilityGetFlagsFromPath((cf + 193), "GetInterfaceIndex", *(cf + 31), *(cf + 20), 0, 0, cf[288], *(cf + 73)) & 6) == 2)
  {
    if (cf[288])
    {
      interface_index = *(cf + 74);
    }

    else
    {
      interface_index = nw_path_get_interface_index();
    }
  }

  else
  {
    interface_index = 0xFFFFFFFFLL;
  }

  if (pthread_mutex_unlock((cf + 16)))
  {
    SCNetworkReachabilityGetInterfaceIndex_cold_3();
  }

  return interface_index;
}

Boolean SCNetworkReachabilityUnscheduleFromRunLoop(SCNetworkReachabilityRef target, CFRunLoopRef runLoop, CFStringRef runLoopMode)
{
  if (__SCNetworkReachabilityInitialize_initialized != -1)
  {
    __SCNetworkReachabilityCreatePrivate_cold_1();
    if (target)
    {
      goto LABEL_3;
    }

LABEL_16:
    _SCErrorSet(1002);
    return 0;
  }

  if (!target)
  {
    goto LABEL_16;
  }

LABEL_3:
  v6 = __kSCNetworkReachabilityTypeID;
  v7 = CFGetTypeID(target);
  if (!runLoopMode || !runLoop || v7 != v6)
  {
    goto LABEL_16;
  }

  if (pthread_mutex_lock((target + 16)))
  {
    SCNetworkReachabilityUnscheduleFromRunLoop_cold_2();
  }

  v8 = *(target + 22);
  if (!v8 || !*(target + 15) || !*(target + 112))
  {
    if (pthread_mutex_unlock((target + 16)))
    {
      SCNetworkReachabilityUnscheduleFromRunLoop_cold_4();
    }

    goto LABEL_16;
  }

  if (!_SC_unschedule(target, runLoop, runLoopMode, v8, 0))
  {
LABEL_14:
    v9 = 1;
    goto LABEL_19;
  }

  if (CFArrayGetCount(*(target + 22)))
  {
    if (!_SC_isScheduled(0, runLoop, runLoopMode, *(target + 22)))
    {
      CFRunLoopRemoveSource(runLoop, *(target + 15), runLoopMode);
    }

    goto LABEL_14;
  }

  CFRunLoopRemoveSource(runLoop, *(target + 15), runLoopMode);
  CFRelease(*(target + 22));
  *(target + 22) = 0;
  CFRunLoopSourceInvalidate(*(target + 15));
  CFRelease(*(target + 15));
  *(target + 15) = 0;
  v9 = __SCNetworkReachabilitySetDispatchQueue(target, 0);
LABEL_19:
  if (pthread_mutex_unlock((target + 16)))
  {
    SCNetworkReachabilityUnscheduleFromRunLoop_cold_3();
  }

  return v9;
}

uint64_t _SC_checkResolverReachabilityByAddress(uint64_t a1, _DWORD *a2, char *a3)
{
  default_evaluator = nw_path_create_default_evaluator();
  v6 = nw_path_evaluator_copy_path();
  if (nw_path_get_status(v6) == nw_path_status_unsatisfied)
  {
    if (a2)
    {
      *a2 = 0;
    }

    if (a3)
    {
      v7 = 0;
LABEL_10:
      *a3 = v7;
    }
  }

  else
  {
    if (a2)
    {
      *a2 = 2;
    }

    if (a3)
    {
      v7 = 1;
      goto LABEL_10;
    }
  }

  nw_release(default_evaluator);
  nw_release(v6);
  return 1;
}