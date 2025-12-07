__CFString *__SCNetworkReachabilityCopyDescription(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(a1);
  if (pthread_mutex_lock((a1 + 16)))
  {
    __SCNetworkReachabilityCopyDescription_cold_1();
  }

  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<SCNetworkReachability %p [%p]> {", a1, v2);
  v4 = CFGetAllocator(a1);
  v5 = CFStringCreateMutable(v4, 0);
  v6 = *(a1 + 80);
  if (v6 < 2)
  {
    v9 = *(a1 + 96);
    if (v9)
    {
      address = nw_endpoint_get_address(v9);
      _SC_sockaddr_to_string(address, v26, 0x40uLL);
      CFStringAppendFormat(v5, 0, @"local address = %s", v26);
    }

    v11 = *(a1 + 104);
    if (v11)
    {
      v12 = nw_endpoint_get_address(v11);
      _SC_sockaddr_to_string(v12, v26, 0x40uLL);
      if (*(a1 + 96))
      {
        v13 = ", ";
      }

      else
      {
        v13 = "";
      }

      if (*(a1 + 80) == 1)
      {
        v14 = "remote ";
      }

      else
      {
        v14 = "";
      }

      CFStringAppendFormat(v5, 0, @"%s%saddress = %s", v13, v14, v26);
    }

    else
    {
      CFStringAppendFormat(v5, 0, @"default path", v23, v25);
    }
  }

  else if (v6 == 2)
  {
    hostname = nw_endpoint_get_hostname(*(a1 + 88));
    CFStringAppendFormat(v5, 0, @"name = %s", hostname, v25);
  }

  else if (v6 == 3)
  {
    v7 = *(a1 + 104);
    if (v7)
    {
      v8 = nw_endpoint_get_address(v7);
      _SC_sockaddr_to_string(v8, v26, 0x40uLL);
      CFStringAppendFormat(v5, 0, @"ptr = %s", v26, v25);
    }
  }

  if (*(a1 + 232))
  {
    required_interface_index = nw_parameters_get_required_interface_index();
    if (required_interface_index)
    {
      CFStringAppendFormat(v5, 0, @", if_index = %u", required_interface_index);
    }
  }

  CFStringAppend(Mutable, v5);
  CFRelease(v5);
  if (*(a1 + 80) >= 2u)
  {
    v16 = *(a1 + 272);
    if (*(a1 + 264))
    {
      if (!v16)
      {
        CFStringAppendFormat(Mutable, 0, @" (DNS query active)");
        goto LABEL_34;
      }
    }

    else if (!v16)
    {
      goto LABEL_34;
    }

    if (v16 == 2)
    {
      v17 = "complete";
    }

    else
    {
      v17 = "in progress";
    }

    CFStringAppendFormat(Mutable, 0, @" (%s"), v17;
    if (nw_array_get_count())
    {
      nw_array_apply();
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @", no addresses");
    }

    CFStringAppendFormat(Mutable, 0, @""));
  }

LABEL_34:
  if (*(a1 + 192))
  {
    CFStringAppendFormat(Mutable, 0, @", !resolve");
  }

  if (*(a1 + 112))
  {
    v18 = CFGetAllocator(a1);
    FlagsFromPath = __SCNetworkReachabilityGetFlagsFromPath(a1 + 193, "CopyTargetFlags", *(a1 + 248), *(a1 + 80), *(a1 + 272), *(a1 + 280), *(a1 + 288), *(a1 + 292));
    if (*(a1 + 288))
    {
      interface_index = *(a1 + 296);
    }

    else
    {
      interface_index = nw_path_get_interface_index();
    }

    v21 = CFStringCreateWithFormat(v18, 0, @"flags = 0x%08x, if_index = %u", FlagsFromPath, interface_index);
    CFStringAppendFormat(Mutable, 0, @", %@", v21);
    CFRelease(v21);
  }

  CFStringAppendFormat(Mutable, 0, @"}");
  if (pthread_mutex_unlock((a1 + 16)))
  {
    __SCNetworkReachabilityCopyDescription_cold_2();
  }

  return Mutable;
}

CFStringRef SCDynamicStoreKeyCreateProxies(CFAllocatorRef allocator)
{

  return SCDynamicStoreKeyCreateNetworkGlobalEntity(allocator, @"State:", @"Proxies");
}

CFDictionaryRef SCDynamicStoreCopyProxies(SCDynamicStoreRef store)
{

  return SCDynamicStoreCopyProxiesWithOptions(store, 0);
}

CFDictionaryRef SCDynamicStoreCopyProxiesWithOptions(const __SCDynamicStore *a1, const __CFDictionary *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_6;
  }

  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(a2) == TypeID)
  {
    Value = CFDictionaryGetValue(a2, @"NO_GLOBAL");
    v6 = CFBooleanGetTypeID();
    if (Value && CFGetTypeID(Value) == v6)
    {
      v7 = CFBooleanGetValue(Value) != 0;
      goto LABEL_7;
    }

LABEL_6:
    v7 = 0;
LABEL_7:
    v8 = SCPreferencesCreate(0, @"SCDynamicStoreCopyProxiesWithOptions", @"/Library/Managed Preferences/mobile/com.apple.SystemConfiguration.plist");
    if (v8)
    {
      v9 = v8;
      v10 = SCPreferencesGetValue(v8, @"Proxies");
      v11 = v10;
      if (v10)
      {
        CFRetain(v10);
      }

      CFRelease(v9);
      if (v7 && v11)
      {
        valuePtr = 0;
        v12 = CFDictionaryGetValue(v11, @"BypassAllowed");
        v13 = CFNumberGetTypeID();
        if (v12 && CFGetTypeID(v12) == v13 && CFNumberGetValue(v12, kCFNumberIntType, &valuePtr) && valuePtr)
        {
          CFRelease(v11);
          goto LABEL_24;
        }
      }

      else
      {
        if (!v11)
        {
          goto LABEL_24;
        }

        if (!v7)
        {
          valuePtr = 0;
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v11);
          CFRelease(v11);
          v16 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          CFDictionarySetValue(MutableCopy, @"BypassAllowed", v16);
          CFRelease(v16);
          v11 = MutableCopy;
        }
      }

      if (CFDictionaryContainsKey(v11, @"FallBackAllowed"))
      {
        if (v11)
        {
LABEL_30:
          v14 = __SCNetworkProxiesCopyNormalized(v11);
          CFRelease(v11);
          return v14;
        }

        return CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      valuePtr = 0;
      v19 = CFDictionaryCreateMutableCopy(0, 0, v11);
      CFRelease(v11);
      v20 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(v19, @"FallBackAllowed", v20);
      CFRelease(v20);
LABEL_29:
      v11 = v19;
      if (v19)
      {
        goto LABEL_30;
      }

      return CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

LABEL_24:
    NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, @"State:", @"Proxies");
    v11 = SCDynamicStoreCopyValue(a1, NetworkGlobalEntity);
    CFRelease(NetworkGlobalEntity);
    v18 = CFDictionaryGetTypeID();
    if (!v11)
    {
      return CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    if (CFGetTypeID(v11) != v18 || !CFDictionaryContainsKey(v11, @"BypassAllowed"))
    {
      goto LABEL_30;
    }

    v19 = CFDictionaryCreateMutableCopy(0, 0, v11);
    CFRelease(v11);
    CFDictionaryRemoveValue(v19, @"BypassAllowed");
    goto LABEL_29;
  }

  _SCErrorSet(1002);
  return 0;
}

CFDictionaryRef __SCNetworkProxiesCopyNormalized(const __CFDictionary *a1)
{
  v34[9] = *MEMORY[0x1E69E9840];
  TypeID = CFDictionaryGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a1);
    v4 = 0;
    v34[0] = @"FTPEnable";
    v34[1] = @"FTPProxy";
    v34[2] = @"FTPPort";
    v34[3] = @"GopherEnable";
    v34[4] = @"GopherProxy";
    v34[5] = @"GopherPort";
    v34[6] = @"RTSPEnable";
    v34[7] = @"RTSPProxy";
    v34[8] = @"RTSPPort";
    do
    {
      CFDictionaryRemoveValue(MutableCopy, v34[v4++]);
    }

    while (v4 != 9);
    validate_proxy_content(MutableCopy, @"HTTPEnable", @"HTTPProxy", @"HTTPPort", "http", 0x50u, 0);
    validate_proxy_content(MutableCopy, @"HTTPSEnable", @"HTTPSProxy", @"HTTPSPort", "https", 0x1BBu, 0);
    validate_proxy_content(MutableCopy, @"SOCKSEnable", @"SOCKSProxy", @"SOCKSPort", "socks", 0x438u, 0);
    validate_proxy_content(MutableCopy, @"TransportConverterEnable", @"TransportConverterProxy", @"TransportConverterPort", 0, 0, 1);
    if (CFDictionaryContainsKey(MutableCopy, @"ProxyAutoConfigURLString"))
    {
      validate_proxy_content(MutableCopy, @"ProxyAutoConfigEnable", @"ProxyAutoConfigURLString", 0, 0, 0, 0);
      CFDictionaryRemoveValue(MutableCopy, @"ProxyAutoConfigJavaScript");
    }

    else
    {
      validate_proxy_content(MutableCopy, @"ProxyAutoConfigEnable", @"ProxyAutoConfigJavaScript", 0, 0, 0, 0);
    }

    validate_proxy_content(MutableCopy, @"ProxyAutoDiscoveryEnable", 0, 0, 0, 0, 0);
    validate_proxy_content(MutableCopy, @"FallBackAllowed", 0, 0, 0, 0, 0);
    Value = CFDictionaryGetValue(MutableCopy, @"FTPPassive");
    if (Value)
    {
      v9 = Value;
      LODWORD(v34[0]) = 0;
      v10 = CFNumberGetTypeID();
      if (CFGetTypeID(v9) != v10 || !CFNumberGetValue(v9, kCFNumberIntType, v34))
      {
        LODWORD(v34[0]) = 1;
        v11 = CFNumberCreate(0, kCFNumberIntType, v34);
        CFDictionarySetValue(MutableCopy, @"FTPPassive", v11);
        CFRelease(v11);
      }
    }

    v12 = CFDictionaryGetValue(MutableCopy, @"ExceptionsList");
    if (!v12)
    {
      goto LABEL_26;
    }

    v13 = v12;
    v14 = CFArrayGetTypeID();
    if (CFGetTypeID(v13) == v14)
    {
      Count = CFArrayGetCount(v13);
      v16 = Count;
      if (Count < 1)
      {
        if (Count)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v17 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v13, v17);
          v19 = CFStringGetTypeID();
          if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != v19 || !CFStringGetLength(ValueAtIndex))
          {
            break;
          }

          if (v16 == ++v17)
          {
            goto LABEL_26;
          }
        }
      }
    }

    CFDictionaryRemoveValue(MutableCopy, @"ExceptionsList");
LABEL_26:
    v20 = CFDictionaryGetValue(MutableCopy, @"ExcludeSimpleHostnames");
    if (v20)
    {
      v21 = v20;
      LODWORD(v34[0]) = 0;
      v22 = CFNumberGetTypeID();
      if (CFGetTypeID(v21) != v22 || !CFNumberGetValue(v21, kCFNumberIntType, v34))
      {
        LODWORD(v34[0]) = 0;
        v23 = CFNumberCreate(0, kCFNumberIntType, v34);
        CFDictionarySetValue(MutableCopy, @"ExcludeSimpleHostnames", v23);
        CFRelease(v23);
      }
    }

    v24 = CFDictionaryGetValue(MutableCopy, @"__SCOPED__");
    v25 = CFDictionaryGetTypeID();
    if (v24 && CFGetTypeID(v24) == v25)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionaryApplyFunction(v24, normalize_scoped_proxy, Mutable);
      CFDictionarySetValue(MutableCopy, @"__SCOPED__", Mutable);
      CFRelease(Mutable);
    }

    v27 = CFDictionaryGetValue(MutableCopy, @"__SERVICES__");
    v28 = CFDictionaryGetTypeID();
    if (v27 && CFGetTypeID(v27) == v28)
    {
      v29 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionaryApplyFunction(v27, normalize_services_proxy, v29);
      CFDictionarySetValue(MutableCopy, @"__SERVICES__", v29);
      CFRelease(v29);
    }

    v30 = CFDictionaryGetValue(MutableCopy, @"__SUPPLEMENTAL__");
    v31 = CFArrayGetTypeID();
    if (v30)
    {
      if (CFGetTypeID(v30) == v31)
      {
        v32 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        v36.length = CFArrayGetCount(v30);
        v36.location = 0;
        CFArrayApplyFunction(v30, v36, normalize_supplemental_proxy, v32);
        CFDictionarySetValue(MutableCopy, @"__SUPPLEMENTAL__", v32);
        CFRelease(v32);
      }
    }

    Copy = CFDictionaryCreateCopy(0, MutableCopy);
    CFRelease(MutableCopy);
    return Copy;
  }

  v5 = MEMORY[0x1E695E9D8];
  v6 = MEMORY[0x1E695E9E8];

  return CFDictionaryCreate(0, 0, 0, 0, v5, v6);
}

CFDataRef SCNetworkProxiesCreateProxyAgentData(void *a1)
{
  values[1] = *MEMORY[0x1E69E9840];
  v16 = 0;
  values[0] = a1;
  TypeID = CFDictionaryGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {
    v3 = CFArrayCreate(0, values, 1, MEMORY[0x1E695E9C0]);
    _SCSerialize(v3, &v16, 0, 0);
    CFRelease(v3);
    return v16;
  }

  else
  {
    v5 = _SC_LOG_DEFAULT();
    v6 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v5, v6))
    {
      v7 = _os_log_pack_size();
      v13 = &v15 - ((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = __error();
      *_os_log_pack_fill(v13, v7, *v14, &dword_1AD2AD000, "Invalid proxy configuration") = 0;
      __SC_log_send(3, v5, v6, v13);
    }

    _SCErrorSet(1002);
    return 0;
  }
}

CFArrayRef SCNetworkProxiesCopyMatchingWithOptions(const void *a1, const __CFDictionary *a2)
{

  return _SCNetworkProxiesCopyMatchingInternal(a1, 0, 0, a2);
}

void validate_proxy_content(const __CFDictionary *a1, const void *a2, const void *a3, const void *a4, const char *a5, unsigned int a6, int a7)
{
  v35 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v15 = Value;
    TypeID = CFNumberGetTypeID();
    if (CFGetTypeID(v15) != TypeID || !CFNumberGetValue(v15, kCFNumberIntType, &valuePtr))
    {
      goto LABEL_26;
    }
  }

  if (a3)
  {
    v17 = CFDictionaryGetValue(a1, a3);
    v18 = v17;
    if (!valuePtr && v17)
    {
      goto LABEL_26;
    }

    if (valuePtr)
    {
      v19 = CFStringGetTypeID();
      if (!v18)
      {
        CFArrayGetTypeID();
        goto LABEL_26;
      }

      if (CFGetTypeID(v18) == v19)
      {
        if (a7 || !CFStringGetLength(v18))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v20 = CFArrayGetTypeID();
        v21 = CFGetTypeID(v18);
        if (!a7)
        {
          goto LABEL_26;
        }

        if (v21 != v20)
        {
          goto LABEL_26;
        }

        Count = CFArrayGetCount(v18);
        if (!Count)
        {
          goto LABEL_26;
        }

        if (Count >= 1)
        {
          v22 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v18, v22);
            v24 = CFStringGetTypeID();
            if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != v24 || !CFStringGetLength(ValueAtIndex))
            {
              goto LABEL_26;
            }
          }

          while (Count != ++v22);
        }
      }
    }
  }

  if (!a4)
  {
    return;
  }

  v33 = 0;
  v25 = CFDictionaryGetValue(a1, a4);
  v26 = v25;
  v27 = valuePtr;
  if (!valuePtr && v25)
  {
    goto LABEL_26;
  }

  if (valuePtr && v25)
  {
    v29 = CFNumberGetTypeID();
    if (CFGetTypeID(v26) == v29 && CFNumberGetValue(v26, kCFNumberIntType, &v33) && v33 < 0x10000)
    {
      if (!v33)
      {
        v26 = 0;
      }

      v27 = valuePtr;
      goto LABEL_39;
    }

LABEL_26:
    valuePtr = 0;
    v28 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(a1, a2, v28);
    CFRelease(v28);
    if (a3)
    {
      CFDictionaryRemoveValue(a1, a3);
    }

    if (a4)
    {
      CFDictionaryRemoveValue(a1, a4);
    }

    return;
  }

LABEL_39:
  if (!v27 || v26)
  {
    return;
  }

  if (!a5)
  {
    goto LABEL_26;
  }

  v30 = getservbyname(a5, "tcp");
  if (v30)
  {
    a6 = bswap32(LOWORD(v30->s_port)) >> 16;
  }

  v33 = a6;
  v31 = CFNumberCreate(0, kCFNumberIntType, &v33);
  CFDictionarySetValue(a1, a4, v31);
  CFRelease(v31);
}

void normalize_scoped_proxy(const void *a1, const __CFDictionary *a2, __CFDictionary *a3)
{
  v5 = __SCNetworkProxiesCopyNormalized(a2);
  CFDictionarySetValue(a3, a1, v5);

  CFRelease(v5);
}

void normalize_services_proxy(const void *a1, const __CFDictionary *a2, __CFDictionary *a3)
{
  v5 = __SCNetworkProxiesCopyNormalized(a2);
  CFDictionarySetValue(a3, a1, v5);

  CFRelease(v5);
}

void normalize_supplemental_proxy(const __CFDictionary *a1, __CFArray *a2)
{
  v3 = __SCNetworkProxiesCopyNormalized(a1);
  CFArrayAppendValue(a2, v3);

  CFRelease(v3);
}

Boolean DHCPClientPreferencesSetApplicationOptions(CFStringRef applicationID, const UInt8 *options, CFIndex count)
{
  v24 = *MEMORY[0x1E69E9840];
  if (applicationID && (v5 = CFStringCreateWithFormat(0, 0, @"/Application/%@", applicationID)) != 0)
  {
    v6 = v5;
    v7 = SCPreferencesCreate(0, @"DHCPClientSetAppReqParams", @"DHCPClient.xml");
    if (!v7)
    {
      LOBYTE(v11) = 0;
      v12 = v6;
LABEL_35:
      CFRelease(v12);
      return v11;
    }

    v8 = v7;
    Value = SCPreferencesPathGetValue(v7, v6);
    if (Value)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v12 = MutableCopy;
    if (!MutableCopy)
    {
      goto LABEL_33;
    }

    if (options && count >= 1)
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      if (!Mutable)
      {
        goto LABEL_33;
      }

      v14 = Mutable;
      v15 = 0;
      while (1)
      {
        if (options[v15] && options[v15] != 255)
        {
          valuePtr = options[v15];
          v16 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          if (!v16)
          {
            CFRelease(v14);
            goto LABEL_33;
          }

          v17 = v16;
          v18 = CFArrayGetCount(v14);
          if (v18 < 1)
          {
LABEL_21:
            CFArrayAppendValue(v14, v17);
          }

          else
          {
            v19 = v18;
            v20 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v14, v20);
              if (CFEqual(ValueAtIndex, v17))
              {
                break;
              }

              if (v19 == ++v20)
              {
                goto LABEL_21;
              }
            }
          }

          CFRelease(v17);
        }

        if (++v15 == count)
        {
          CFDictionarySetValue(v12, @"DHCPRequestedParameterList", v14);
          CFRelease(v14);
          goto LABEL_26;
        }
      }
    }

    CFDictionaryRemoveValue(MutableCopy, @"DHCPRequestedParameterList");
LABEL_26:
    if (SCPreferencesLock(v8, 1u))
    {
      if (SCPreferencesPathSetValue(v8, v6, v12))
      {
        v11 = SCPreferencesCommitChanges(v8);
        if (v11)
        {
          SCPreferencesApplyChanges(v8);
        }
      }

      else
      {
        LOBYTE(v11) = 0;
      }

      SCPreferencesUnlock(v8);
    }

    else
    {
LABEL_33:
      LOBYTE(v11) = 0;
    }

    CFRelease(v8);
    CFRelease(v6);
    if (v12)
    {
      goto LABEL_35;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

UInt8 *__cdecl DHCPClientPreferencesCopyApplicationOptions(CFStringRef applicationID, CFIndex *count)
{
  v20 = *MEMORY[0x1E69E9840];
  if (applicationID)
  {
    v3 = CFStringCreateWithFormat(0, 0, @"/Application/%@", applicationID);
    if (v3)
    {
      v4 = v3;
      v5 = SCPreferencesCreate(0, @"DHCPClientCopyAppReqParams", @"DHCPClient.xml");
      if (!v5)
      {
        v13 = 0;
LABEL_25:
        CFRelease(v4);
        return v13;
      }

      v6 = v5;
      Value = SCPreferencesPathGetValue(v5, v4);
      if (Value)
      {
        v8 = CFDictionaryGetValue(Value, @"DHCPRequestedParameterList");
        TypeID = CFArrayGetTypeID();
        if (v8)
        {
          if (CFGetTypeID(v8) == TypeID)
          {
            v10 = CFArrayGetCount(v8);
            v11 = v10;
            if (!v10 || (v12 = malloc_type_malloc(v10, 0xB7D1F9C5uLL)) == 0)
            {
              v13 = 0;
              *count = v11;
LABEL_24:
              CFRelease(v6);
              goto LABEL_25;
            }

            v13 = v12;
            if (v11 < 1)
            {
              *count = 0;
            }

            else
            {
              v14 = 0;
              for (i = 0; i != v11; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v8, i);
                v17 = CFNumberGetTypeID();
                if (ValueAtIndex)
                {
                  if (CFGetTypeID(ValueAtIndex) == v17)
                  {
                    valuePtr = 0;
                    if (CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr))
                    {
                      v13[v14++] = valuePtr;
                    }
                  }
                }
              }

              *count = v14;
              if (v14)
              {
                goto LABEL_24;
              }
            }

            free(v13);
          }
        }
      }

      v13 = 0;
      goto LABEL_24;
    }
  }

  return 0;
}

CFDictionaryRef SCDynamicStoreCopyDHCPInfo(SCDynamicStoreRef store, CFStringRef serviceID)
{
  if (serviceID)
  {
    Value = serviceID;
    v4 = 0;
  }

  else
  {
    NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, @"State:", @"IPv4");
    if (!NetworkGlobalEntity)
    {
      return 0;
    }

    v4 = NetworkGlobalEntity;
    v10 = SCDynamicStoreCopyValue(store, NetworkGlobalEntity);
    if (!v10)
    {
      v7 = 0;
      goto LABEL_18;
    }

    v11 = v10;
    Value = CFDictionaryGetValue(v10, @"PrimaryService");
    CFRelease(v4);
    if (!Value)
    {
      v7 = 0;
      v4 = v11;
      goto LABEL_18;
    }

    v4 = v11;
  }

  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, @"State:", Value, @"DHCP");
  if (!NetworkServiceEntity)
  {
    v7 = 0;
    if (!v4)
    {
      return v7;
    }

    goto LABEL_18;
  }

  v6 = NetworkServiceEntity;
  v7 = SCDynamicStoreCopyValue(store, NetworkServiceEntity);
  if (v7)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(v7) != TypeID)
    {
      CFRelease(v7);
      v7 = 0;
    }
  }

  CFRelease(v6);
  if (v4)
  {
LABEL_18:
    CFRelease(v4);
  }

  return v7;
}

CFDataRef DHCPInfoGetOptionData(CFDictionaryRef info, UInt8 code)
{
  v3 = CFStringCreateWithFormat(0, 0, @"Option_%d", code);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Value = CFDictionaryGetValue(info, v3);
  TypeID = CFDataGetTypeID();
  if (Value && CFGetTypeID(Value) != TypeID)
  {
    Value = 0;
  }

  CFRelease(v4);
  return Value;
}

CFDateRef DHCPInfoGetLeaseStartTime(CFDictionaryRef info)
{

  return CFDictionaryGetValue(info, @"LeaseStartTime");
}

CFDateRef DHCPInfoGetLeaseExpirationTime(CFDictionaryRef info)
{

  return CFDictionaryGetValue(info, @"LeaseExpirationTime");
}

uint64_t __SCNetworkInterfaceCreateCapabilities(const void *a1, unsigned int a2, const __CFDictionary *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = a2;
  v22 = 0;
  TypeID = SCNetworkInterfaceGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID && (BSDName = SCNetworkInterfaceGetBSDName(a1)) != 0)
  {
    if (a2 == -1)
    {
      v8 = &v21;
    }

    else
    {
      v8 = 0;
    }

    Capabilities = __getCapabilities(BSDName, v8, &v22);
    if (a3 && Capabilities && v22)
    {
      v10 = &byte_1E79BDB60;
      v11 = 10;
      do
      {
        valuePtr = 0;
        number = 0;
        v12 = *(v10 + 1);
        if ((v12 & v22) != 0)
        {
          if (*v10)
          {
            if (CFDictionaryGetValueIfPresent(a3, **(v10 - 1), &number))
            {
              v13 = number;
              v14 = CFNumberGetTypeID();
              if (v13)
              {
                if (CFGetTypeID(v13) == v14 && CFNumberGetValue(number, kCFNumberIntType, &valuePtr))
                {
                  if (valuePtr)
                  {
                    v15 = v22;
                    v16 = v21 | v22 & v12;
                    v17 = ~v12;
                  }

                  else
                  {
                    v17 = ~v12;
                    v15 = v22;
                    v16 = v21 & ~v12;
                  }

                  v21 = v16;
                  v22 = v15 & v17;
                }
              }
            }
          }
        }

        v10 += 16;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    _SCErrorSet(1002);
  }

  return v21;
}

uint64_t __getCapabilities(const __CFString *a1, _DWORD *a2, _DWORD *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v48 = 0u;
  v49 = 0u;
  if (!_SC_cfstring_to_cstring(a1, &v48, 16, 0x600u))
  {
    v8 = __log_SCNetworkConfiguration();
    v9 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v8, v9))
    {
      v10 = _os_log_pack_size();
      v16 = &v48 - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = __error();
      *_os_log_pack_fill(v16, v10, *v17, &dword_1AD2AD000, "could not convert interface name") = 0;
      __SC_log_send(5, v8, v9, v16);
    }

    _SCErrorSet(1002);
    return 0;
  }

  v5 = socket(2, 2, 0);
  if (v5 == -1)
  {
    v18 = __error();
    _SCErrorSet(*v18);
    v19 = __log_SCNetworkConfiguration();
    v20 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v19, v20))
    {
      v21 = _os_log_pack_size();
      v27 = &v48 - ((MEMORY[0x1EEE9AC00](v21, v22, v23, v24, v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = __error();
      v29 = _os_log_pack_fill(v27, v21, *v28, &dword_1AD2AD000, "socket() failed: %s", v48);
      v30 = __error();
      v31 = strerror(*v30);
      *v29 = 136315138;
      *(v29 + 4) = v31;
      __SC_log_send(3, v19, v20, v27);
    }

    return 0;
  }

  v6 = v5;
  if (ioctl(v5, 0xC020695BuLL, &v48) == -1)
  {
    v33 = __error();
    _SCErrorSet(*v33);
    v7 = 0;
    v34 = *__error();
    if (v34 != 6 && v34 != 16)
    {
      v35 = __log_SCNetworkConfiguration();
      v36 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v35, v36))
      {
        v37 = _os_log_pack_size();
        v43 = &v48 - ((MEMORY[0x1EEE9AC00](v37, v38, v39, v40, v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
        v44 = __error();
        v45 = _os_log_pack_fill(v43, v37, *v44, &dword_1AD2AD000, "ioctl(SIOCGIFCAP) failed: %s", v48);
        v46 = __error();
        v47 = strerror(*v46);
        *v45 = 136315138;
        *(v45 + 4) = v47;
        __SC_log_send(5, v35, v36, v43);
      }

      v7 = 0;
    }
  }

  else
  {
    if (a2)
    {
      *a2 = DWORD1(v49);
    }

    if (a3)
    {
      *a3 = v49;
    }

    v7 = 1;
  }

  close(v6);
  return v7;
}

CFNumberRef SCNetworkInterfaceCopyCapability(const void *a1, CFMutableDictionaryRef Mutable)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID || (BSDName = SCNetworkInterfaceGetBSDName(a1)) == 0)
  {
LABEL_19:
    _SCErrorSet(1002);
    return 0;
  }

  valuePtr = 0;
  if (!__getCapabilities(BSDName, v18 + 1, v18))
  {
    return 0;
  }

  if (Mutable)
  {
    v6 = &capabilityMappings;
    v7 = 10;
    while (!CFEqual(Mutable, **v6))
    {
      v6 += 2;
      if (!--v7)
      {
        goto LABEL_19;
      }
    }

    v15 = *(v6 + 3);
    if ((v15 & ~LODWORD(v18[0])) == 0)
    {
      valuePtr = (v15 & ~HIDWORD(v18[0])) == 0;
      return CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    }

    goto LABEL_19;
  }

  v8 = v18[0];
  v9 = 10;
  v10 = MEMORY[0x1E695E9D8];
  v11 = &capabilityMappings;
  v12 = MEMORY[0x1E695E9E8];
  do
  {
    v13 = *(v11 + 3);
    if ((v13 & ~v8) == 0)
    {
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, v10, v12);
      }

      valuePtr = (v13 & ~HIDWORD(v18[0])) == 0;
      v14 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(Mutable, **v11, v14);
      CFRelease(v14);
      v8 = v18[0] & ~v13;
      LODWORD(v18[0]) = v8;
    }

    v11 += 2;
    --v9;
  }

  while (v9);
  return Mutable;
}

uint64_t SCNetworkInterfaceSetCapability(const void *a1, const void *a2, const void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v16 = 0;
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!a1)
  {
    goto LABEL_15;
  }

  if (CFGetTypeID(a1) != TypeID)
  {
    goto LABEL_15;
  }

  BSDName = SCNetworkInterfaceGetBSDName(a1);
  if (!BSDName)
  {
    goto LABEL_15;
  }

  v8 = BSDName;
  v9 = &byte_1E79BDB60;
  v10 = 10;
  while (!CFEqual(a2, **(v9 - 1)))
  {
    v9 += 16;
    if (!--v10)
    {
      goto LABEL_15;
    }
  }

  if (!*v9)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    v11 = CFNumberGetTypeID();
    if (CFGetTypeID(a3) != v11)
    {
      goto LABEL_15;
    }
  }

  if (!__getCapabilities(v8, 0, &v16))
  {
    return 0;
  }

  if ((*(v9 + 1) & v16) == 0)
  {
LABEL_15:
    _SCErrorSet(1002);
    return 0;
  }

  Configuration = SCNetworkInterfaceGetConfiguration(a1);
  if (Configuration)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Configuration);
    CFDictionaryRemoveValue(MutableCopy, @"__INACTIVE__");
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  if (a3)
  {
    CFDictionarySetValue(MutableCopy, a2, a3);
  }

  else
  {
    CFDictionaryRemoveValue(MutableCopy, a2);
    if (!CFDictionaryGetCount(MutableCopy))
    {
      CFRelease(MutableCopy);
      return SCNetworkInterfaceSetConfiguration(a1, 0);
    }
  }

  v14 = SCNetworkInterfaceSetConfiguration(a1, MutableCopy);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v14;
}

uint64_t __SCNetworkInterfaceCreateMediaOptions(const void *a1, const __CFDictionary *a2)
{
  TypeID = SCNetworkInterfaceGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID && (BSDName = SCNetworkInterfaceGetBSDName(a1)) != 0)
  {
    v6 = __copyMediaList(BSDName, 0);
    if (v6)
    {
      if (*(v6 + 32) <= 0)
      {
        __freeMediaList(v6);
      }

      else
      {
        v7 = **(v6 + 36) & 0xE0;
        __freeMediaList(v6);
        if (v7 == 128)
        {
          v8 = 0;
          v9 = &ifm_subtype_ieee80211_descriptions;
          v10 = &ifm_subtype_ieee80211_option_descriptions;
        }

        else if (v7 == 32)
        {
          v8 = 0;
          v9 = &ifm_subtype_ethernet_descriptions;
          v10 = &ifm_subtype_ethernet_option_descriptions;
        }

        else
        {
          v10 = 0;
          v9 = 0;
          v8 = 1;
        }

        Value = CFDictionaryGetValue(a2, @"MediaSubType");
        v13 = CFStringGetTypeID();
        if (!Value)
        {
          return 0xFFFFFFFFLL;
        }

        if (CFGetTypeID(Value) != v13)
        {
          return 0xFFFFFFFFLL;
        }

        v14 = _SC_cfstring_to_cstring(Value, 0, 0, 0x600u);
        if (!v14)
        {
          return 0xFFFFFFFFLL;
        }

        v15 = v14;
        if (!strcasecmp(v14, "autoselect"))
        {
          v19 = 0;
          v16 = &ifm_subtype_shared_descriptions;
LABEL_24:
          v7 = *v16 | v7;
        }

        else
        {
          v16 = &ifm_subtype_shared_descriptions;
          v17 = 3;
          while (1)
          {
            v18 = *(v16 + 3);
            if (!--v17)
            {
              break;
            }

            v16 += 4;
            if (!strcasecmp(v15, v18))
            {
              v19 = v18 == 0;
              goto LABEL_24;
            }
          }

          v19 = v18 == 0;
        }

        if (v8)
        {
          CFAllocatorDeallocate(0, v15);
          if (v19)
          {
            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          if (v19)
          {
            v20 = *(v9 + 1);
            if (!v20)
            {
LABEL_33:
              v21 = v15;
LABEL_64:
              CFAllocatorDeallocate(0, v21);
              return 0xFFFFFFFFLL;
            }

            while (strcasecmp(v15, v20))
            {
              v20 = *(v9 + 3);
              v9 += 4;
              if (!v20)
              {
                goto LABEL_33;
              }
            }

            v7 = *v9 | v7;
          }

          CFAllocatorDeallocate(0, v15);
        }

        v22 = CFDictionaryGetValue(a2, @"MediaOptions");
        v23 = CFArrayGetTypeID();
        if (v22 && CFGetTypeID(v22) == v23)
        {
          Count = CFArrayGetCount(v22);
          if (Count < 1)
          {
            return v7;
          }

          v25 = Count;
          v26 = 0;
          v27 = "full-duplex";
          v39 = Count;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v22, v26);
            v29 = CFStringGetTypeID();
            if (!ValueAtIndex)
            {
              break;
            }

            if (CFGetTypeID(ValueAtIndex) != v29)
            {
              break;
            }

            v30 = _SC_cfstring_to_cstring(ValueAtIndex, 0, 0, 0x600u);
            if (!v30)
            {
              break;
            }

            v31 = v30;
            if (!strcasecmp(v30, v27))
            {
              v36 = 0;
              v33 = &ifm_shared_option_descriptions;
LABEL_49:
              v7 = *v33 | v7;
            }

            else
            {
              v32 = v27;
              v33 = &ifm_shared_option_descriptions;
              v34 = 8;
              while (1)
              {
                v35 = *(v33 + 3);
                if (!--v34)
                {
                  break;
                }

                v33 += 4;
                if (!strcasecmp(v31, v35))
                {
                  v36 = v35 == 0;
                  v27 = v32;
                  v25 = v39;
                  goto LABEL_49;
                }
              }

              v36 = v35 == 0;
              v27 = v32;
              v25 = v39;
            }

            if (v8)
            {
              CFAllocatorDeallocate(0, v31);
              if (v36)
              {
                return 0xFFFFFFFFLL;
              }
            }

            else
            {
              if (v36)
              {
                v37 = *(v10 + 1);
                v38 = v10;
                if (!v37)
                {
LABEL_63:
                  v21 = v31;
                  goto LABEL_64;
                }

                while (strcasecmp(v31, v37))
                {
                  v37 = *(v38 + 3);
                  v38 += 4;
                  if (!v37)
                  {
                    goto LABEL_63;
                  }
                }

                v7 = *v38 | v7;
              }

              CFAllocatorDeallocate(0, v31);
            }

            if (++v26 == v25)
            {
              return v7;
            }
          }
        }
      }
    }
  }

  else
  {
    _SCErrorSet(1002);
  }

  return 0xFFFFFFFFLL;
}

uint64_t __copyMediaList(const __CFString *a1, char *a2)
{
  v44[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1B26F3AA0](0, 44, 0x1010040C57E4BAFLL, 0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 28) = 0u;
  if (!_SC_cfstring_to_cstring(a1, v4, 16, 0x600u))
  {
    v9 = __log_SCNetworkConfiguration();
    v10 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v9, v10))
    {
      goto LABEL_16;
    }

    v11 = _os_log_pack_size();
    v17 = v44 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = __error();
    *_os_log_pack_fill(v17, v11, *v18, &dword_1AD2AD000, "could not convert interface name") = 0;
    v19 = 5;
LABEL_12:
    __SC_log_send(v19, v9, v10, v17);
    goto LABEL_16;
  }

  v5 = socket(2, 2, 0);
  if (v5 == -1)
  {
    v9 = __log_SCNetworkConfiguration();
    v10 = _SC_syslog_os_log_mapping(3);
    if (!__SC_log_enabled(3, v9, v10))
    {
      goto LABEL_16;
    }

    v20 = _os_log_pack_size();
    v17 = v44 - ((MEMORY[0x1EEE9AC00](v20, v21, v22, v23, v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = __error();
    v27 = _os_log_pack_fill(v17, v20, *v26, &dword_1AD2AD000, "socket() failed: %s", v44[0]);
    v28 = __error();
    v29 = strerror(*v28);
    *v27 = 136315138;
    *(v27 + 4) = v29;
    v19 = 3;
    goto LABEL_12;
  }

  v6 = v5;
  if (ioctl(v5, 0xC02C6948uLL, v4) != -1)
  {
    v7 = *(v4 + 32);
    if (v7 < 1 || (*(v4 + 36) = MEMORY[0x1B26F3AA0](0, 4 * v7, 0x100004052888210, 0), ioctl(v6, 0xC02C6948uLL, v4) != -1))
    {
      close(v6);
      v8 = 1;
      if (!a2)
      {
        return v4;
      }

      goto LABEL_17;
    }

    v30 = __log_SCNetworkConfiguration();
    v31 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v30, v31))
    {
      v32 = _os_log_pack_size();
      v38 = v44 - ((MEMORY[0x1EEE9AC00](v32, v33, v34, v35, v36, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
      v39 = __error();
      v40 = _os_log_pack_fill(v38, v32, *v39, &dword_1AD2AD000, "ioctl(SIOCGIFXMEDIA) failed: %s", v44[0]);
      v41 = __error();
      v42 = strerror(*v41);
      *v40 = 136315138;
      *(v40 + 4) = v42;
      __SC_log_send(5, v30, v31, v38);
    }
  }

  close(v6);
LABEL_16:
  __freeMediaList(v4);
  _SCErrorSet(1001);
  v8 = 0;
  v4 = 0;
  if (a2)
  {
LABEL_17:
    *a2 = v8;
  }

  return v4;
}

void __freeMediaList(char *ptr)
{
  v2 = *(ptr + 36);
  if (v2)
  {
    CFAllocatorDeallocate(0, v2);
  }

  CFAllocatorDeallocate(0, ptr);
}

Boolean SCNetworkInterfaceCopyMediaOptions(SCNetworkInterfaceRef interface, CFDictionaryRef *current, CFDictionaryRef *active, CFArrayRef *available, Boolean filter)
{
  v5 = filter;
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!interface || CFGetTypeID(interface) != TypeID || (BSDName = SCNetworkInterfaceGetBSDName(interface)) == 0)
  {
    _SCErrorSet(1002);
    LOBYTE(v12) = 0;
    return v12;
  }

  v12 = __copyMediaList(BSDName, 0);
  if (v12)
  {
    v13 = v12;
    if (active)
    {
      *active = 0;
    }

    if (current)
    {
      *current = 0;
    }

    if (available)
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      if (*(v13 + 32) >= 1)
      {
        v15 = 0;
        do
        {
          MediaDictionary = __createMediaDictionary(*(*(v13 + 36) + 4 * v15), v5);
          if (MediaDictionary)
          {
            v17 = MediaDictionary;
            if (active && !*active && *(v13 + 28) == *(*(v13 + 36) + 4 * v15))
            {
              *active = CFRetain(MediaDictionary);
            }

            if (current && !*current && *(v13 + 16) == *(*(v13 + 36) + 4 * v15))
            {
              *current = CFRetain(v17);
            }

            v21.length = CFArrayGetCount(Mutable);
            v21.location = 0;
            if (!CFArrayContainsValue(Mutable, v21, v17))
            {
              CFArrayAppendValue(Mutable, v17);
            }

            CFRelease(v17);
          }

          ++v15;
        }

        while (v15 < *(v13 + 32));
      }

      *available = Mutable;
    }

    if (active && !*active)
    {
      *active = __createMediaDictionary(*(v13 + 28), 0);
    }

    if (!current || *current)
    {
      goto LABEL_40;
    }

    if (active)
    {
      v18 = *(v13 + 16);
      if (*(v13 + 28) == v18)
      {
        if (!*active)
        {
LABEL_40:
          __freeMediaList(v13);
          LOBYTE(v12) = 1;
          return v12;
        }

        v19 = CFRetain(*active);
LABEL_39:
        *current = v19;
        goto LABEL_40;
      }
    }

    else
    {
      v18 = *(v13 + 16);
    }

    v19 = __createMediaDictionary(v18, 0);
    goto LABEL_39;
  }

  return v12;
}

__CFDictionary *__createMediaDictionary(int a1, int a2)
{
  v2 = a1;
  if (a2)
  {
    if ((a1 & 0xF001F) == 2 || (a1 & 0x8000000) != 0)
    {
      return 0;
    }
  }

  if ((a1 & 0xE0) == 0x20)
  {
    v4 = &ifm_subtype_ethernet_descriptions;
    v5 = &ifm_subtype_ethernet_option_descriptions;
  }

  else
  {
    if ((a1 & 0xE0) != 0x80)
    {
      return 0;
    }

    v4 = &ifm_subtype_ieee80211_descriptions;
    v5 = &ifm_subtype_ieee80211_option_descriptions;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = v2 & 0xF001F;
  if ((v2 & 0xF001F) != 0)
  {
    v8 = &dword_1E79BE3D8;
    v9 = 3;
    while (--v9)
    {
      v10 = v8 + 4;
      v11 = *v8;
      v8 += 4;
      if (v7 == v11)
      {
        v12 = *(v10 - 1);
        goto LABEL_18;
      }
    }

    goto LABEL_19;
  }

  v12 = "autoselect";
LABEL_18:
  v13 = CFStringCreateWithCString(0, v12, 0x600u);
  if (!v13)
  {
LABEL_19:
    v14 = *(v4 + 1);
    if (!v14)
    {
      goto LABEL_26;
    }

    v15 = v4;
    while (1)
    {
      v16 = *v15;
      v15 += 4;
      if (v7 == v16)
      {
        break;
      }

      v14 = *(v4 + 3);
      v4 = v15;
      if (!v14)
      {
        goto LABEL_26;
      }
    }

    v13 = CFStringCreateWithCString(0, v14, 0x600u);
    if (!v13)
    {
      goto LABEL_26;
    }
  }

  v17 = v13;
  CFDictionaryAddValue(Mutable, @"MediaSubType", v13);
  CFRelease(v17);
LABEL_26:
  v18 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if ((v2 & 0xFF0FF00) != 0)
  {
    v19 = &off_1E79BE410;
    v20 = 9;
    while (--v20)
    {
      v21 = v19 + 2;
      v22 = *(v19 - 2);
      if ((v22 & v2) != 0)
      {
        v23 = CFStringCreateWithCString(0, *v19, 0x600u);
        CFArrayAppendValue(v18, v23);
        CFRelease(v23);
        v2 &= ~v22;
      }

      v19 = v21;
      if ((v2 & 0xFF0FF00) == 0)
      {
        goto LABEL_39;
      }
    }

    if ((v2 & 0xFF0FF00) != 0)
    {
      v24 = (v5 + 2);
      do
      {
        if (!*v24)
        {
          break;
        }

        v25 = *(v24 - 2);
        if ((v25 & v2) != 0)
        {
          v26 = CFStringCreateWithCString(0, *v24, 0x600u);
          CFArrayAppendValue(v18, v26);
          CFRelease(v26);
          v2 &= ~v25;
        }

        v24 += 2;
      }

      while ((v2 & 0xFF0FF00) != 0);
    }
  }

LABEL_39:
  CFDictionaryAddValue(Mutable, @"MediaOptions", v18);
  CFRelease(v18);
  return Mutable;
}

CFArrayRef SCNetworkInterfaceCopyMediaSubTypes(CFArrayRef available)
{
  TypeID = CFArrayGetTypeID();
  if (!available || CFGetTypeID(available) != TypeID)
  {
    v11 = 1002;
    goto LABEL_15;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  Count = CFArrayGetCount(available);
  if (Count >= 1)
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(available, i);
      v8 = CFDictionaryGetTypeID();
      if (ValueAtIndex)
      {
        if (CFGetTypeID(ValueAtIndex) == v8)
        {
          Value = CFDictionaryGetValue(ValueAtIndex, @"MediaSubType");
          v10 = CFStringGetTypeID();
          if (Value)
          {
            if (CFGetTypeID(Value) == v10)
            {
              v13.length = CFArrayGetCount(Mutable);
              v13.location = 0;
              if (!CFArrayContainsValue(Mutable, v13, Value))
              {
                CFArrayAppendValue(Mutable, Value);
              }
            }
          }
        }
      }
    }
  }

  if (!CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    v11 = 0;
LABEL_15:
    _SCErrorSet(v11);
    return 0;
  }

  return Mutable;
}

CFArrayRef SCNetworkInterfaceCopyMediaSubTypeOptions(CFArrayRef available, CFStringRef subType)
{
  TypeID = CFArrayGetTypeID();
  if (!available || CFGetTypeID(available) != TypeID)
  {
    v15 = 1002;
    goto LABEL_18;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  Count = CFArrayGetCount(available);
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(available, i);
      v10 = CFDictionaryGetTypeID();
      if (ValueAtIndex)
      {
        if (CFGetTypeID(ValueAtIndex) == v10)
        {
          Value = CFDictionaryGetValue(ValueAtIndex, @"MediaSubType");
          v12 = CFStringGetTypeID();
          if (Value)
          {
            if (CFGetTypeID(Value) == v12)
            {
              if (CFEqual(subType, Value))
              {
                v13 = CFDictionaryGetValue(ValueAtIndex, @"MediaOptions");
                v14 = CFArrayGetTypeID();
                if (v13)
                {
                  if (CFGetTypeID(v13) == v14)
                  {
                    v17.length = CFArrayGetCount(Mutable);
                    v17.location = 0;
                    if (!CFArrayContainsValue(Mutable, v17, v13))
                    {
                      CFArrayAppendValue(Mutable, v13);
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

  if (!CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    v15 = 0;
LABEL_18:
    _SCErrorSet(v15);
    return 0;
  }

  return Mutable;
}

BOOL _SCNetworkInterfaceIsPhysicalEthernet(_DWORD *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  _SCErrorSet(0);
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    goto LABEL_14;
  }

  InterfaceType = SCNetworkInterfaceGetInterfaceType(a1);
  if (!CFEqual(InterfaceType, @"Ethernet") || _SCNetworkInterfaceIsHiddenConfiguration(a1) || _SCNetworkInterfaceIsHiddenInterface(a1) || _SCNetworkInterfaceIsTethered(a1) || _SCNetworkInterfaceIsBluetoothPAN(a1))
  {
    return 0;
  }

  BSDName = SCNetworkInterfaceGetBSDName(a1);
  if (!BSDName)
  {
LABEL_14:
    _SCErrorSet(1002);
    return 0;
  }

  v5 = __copyMediaList(BSDName, &v11);
  if (v5)
  {
    v6 = v5;
    _SCErrorSet(0);
    if ((*(v6 + 16) & 0xE0) == 0x20)
    {
      v7 = *(v6 + 32);
      if (v7 == 1)
      {
        if ((**(v6 + 36) & 0xF001F) == 0)
        {
          goto LABEL_22;
        }

LABEL_19:
        v10 = *(v6 + 36);
        while ((*(v10 + 2) & 0x10) == 0)
        {
          v10 += 4;
          if (!--v7)
          {
            goto LABEL_22;
          }
        }

        v8 = 1;
        goto LABEL_23;
      }

      if (v7 >= 1)
      {
        goto LABEL_19;
      }
    }

LABEL_22:
    v8 = 0;
LABEL_23:
    __freeMediaList(v6);
    return v8;
  }

  return v11 != 0;
}

Boolean SCNetworkInterfaceCopyMTU(SCNetworkInterfaceRef interface, int *mtu_cur, int *mtu_min, int *mtu_max)
{
  v65 = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!interface || CFGetTypeID(interface) != TypeID || (v9 = SCNetworkInterfaceGetBSDName(interface)) == 0)
  {
LABEL_15:
    _SCErrorSet(1002);
    return 0;
  }

  *bsdName = 0u;
  v64 = 0u;
  if (!_SC_cfstring_to_cstring(v9, bsdName, 16, 0x600u))
  {
    v13 = __log_SCNetworkConfiguration();
    v14 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v13, v14))
    {
      v15 = _os_log_pack_size();
      v21 = &existing[-2] - ((MEMORY[0x1EEE9AC00](v15, v16, v17, v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = __error();
      *_os_log_pack_fill(v21, v15, *v22, &dword_1AD2AD000, "could not convert interface name") = 0;
      __SC_log_send(5, v13, v14, v21);
    }

    goto LABEL_15;
  }

  v10 = socket(2, 2, 0);
  if (v10 != -1)
  {
    v11 = v10;
    if (ioctl(v10, 0xC0206933uLL, bsdName) == -1)
    {
      v39 = __error();
      _SCErrorSet(*v39);
      v23 = 0;
LABEL_85:
      close(v11);
      return v23;
    }

    if (mtu_cur)
    {
      *mtu_cur = v64;
    }

    if (mtu_min)
    {
      *mtu_min = v64;
      if (!mtu_max)
      {
        if (!ioctl(v11, 0xC0206944uLL, bsdName))
        {
          v57 = DWORD1(v64);
          if (SDWORD1(v64) <= 72)
          {
            v57 = 72;
          }

          *mtu_min = v57;
          v12 = 1;
          goto LABEL_76;
        }

        v12 = 1;
        goto LABEL_24;
      }
    }

    else if (!mtu_max)
    {
      goto LABEL_84;
    }

    *mtu_max = v64;
    if (!ioctl(v11, 0xC0206944uLL, bsdName))
    {
      if (mtu_min)
      {
        v51 = DWORD1(v64);
        if (SDWORD1(v64) <= 72)
        {
          v51 = 72;
        }

        *mtu_min = v51;
      }

      v12 = 0;
      *mtu_max = DWORD2(v64);
      goto LABEL_74;
    }

    v12 = 0;
LABEL_24:
    *existing = 0;
    HIDWORD(valuePtr) = 0;
    v40 = __getIOMTULimits_masterPort;
    if (!__getIOMTULimits_masterPort)
    {
      if (MEMORY[0x1B26F45E0]())
      {
LABEL_53:
        InterfaceType = SCNetworkInterfaceGetInterfaceType(interface);
        if (CFEqual(InterfaceType, @"Bridge"))
        {
          MemberInterfaces = SCBridgeInterfaceGetMemberInterfaces(interface);
          if (MemberInterfaces)
          {
            v54 = MemberInterfaces;
            Count = CFArrayGetCount(MemberInterfaces);
            v56 = Count;
            if (Count < 2)
            {
              if (Count != 1)
              {
                goto LABEL_74;
              }
            }

            else
            {
              if (mtu_min)
              {
                *mtu_min = 72;
              }

              if ((v12 & 1) == 0)
              {
                *mtu_max = 0xFFFF;
              }
            }

            v58 = 0;
            do
            {
              *existing = 0;
              ValueAtIndex = CFArrayGetValueAtIndex(v54, v58);
              if (SCNetworkInterfaceCopyMTU(ValueAtIndex, 0, &existing[1], existing))
              {
                if (mtu_min && *mtu_min < existing[1])
                {
                  *mtu_min = existing[1];
                }

                if ((v12 & 1) == 0 && *mtu_max > existing[0])
                {
                  *mtu_max = existing[0];
                }
              }

              ++v58;
            }

            while (v56 != v58);
          }
        }

LABEL_74:
        if (mtu_min)
        {
          v57 = *mtu_min;
LABEL_76:
          if (v57 <= 1279)
          {
            v57 = 1280;
            *mtu_min = 1280;
          }

          if (mtu_cur)
          {
            v60 = *mtu_cur;
            if (v57 > *mtu_cur)
            {
              *mtu_min = v60;
              v57 = v60;
            }
          }

          if ((v12 & 1) == 0 && v57 > *mtu_max)
          {
            *mtu_min = *mtu_max;
          }
        }

LABEL_84:
        v23 = 1;
        goto LABEL_85;
      }

      v40 = __getIOMTULimits_masterPort;
    }

    v41 = IOBSDNameMatching(v40, 0, bsdName);
    if (v41)
    {
      MatchingServices = IOServiceGetMatchingServices(__getIOMTULimits_masterPort, v41, existing);
      v43 = 0;
      v44 = existing[0];
      if (!MatchingServices && existing[0])
      {
        v43 = IOIteratorNext(existing[0]);
        v44 = existing[0];
      }

      if (v44)
      {
        IOObjectRelease(v44);
      }

      if (v43)
      {
        CFProperty = IORegistryEntryCreateCFProperty(v43, @"IOInterfaceType", 0, 0);
        if (CFProperty)
        {
          v46 = CFProperty;
          v47 = CFNumberGetTypeID();
          if (CFGetTypeID(v46) == v47)
          {
            CFNumberGetValue(v46, kCFNumberIntType, &existing[1]);
          }

          CFRelease(v46);
        }

        IORegistryEntryGetParentEntry(v43, "IOService", &valuePtr + 1);
        IOObjectRelease(v43);
        if (HIDWORD(valuePtr))
        {
          v48 = IORegistryEntryCreateCFProperty(HIDWORD(valuePtr), @"IOMaxPacketSize", 0, 0);
          if (v48)
          {
            v49 = v48;
            v50 = CFNumberGetTypeID();
            if (CFGetTypeID(v49) == v50)
            {
              LODWORD(valuePtr) = 0;
              CFNumberGetValue(v49, kCFNumberIntType, &valuePtr);
              if (existing[1] == 6)
              {
                LODWORD(valuePtr) = valuePtr - 18;
              }

              if (mtu_min)
              {
                *mtu_min = 72;
              }

              if ((v12 & 1) == 0)
              {
                *mtu_max = valuePtr;
              }
            }

            CFRelease(v49);
          }

          IOObjectRelease(HIDWORD(valuePtr));
        }

        goto LABEL_74;
      }
    }

    goto LABEL_53;
  }

  v25 = __error();
  _SCErrorSet(*v25);
  v26 = __log_SCNetworkConfiguration();
  v27 = _SC_syslog_os_log_mapping(3);
  if (__SC_log_enabled(3, v26, v27))
  {
    v28 = _os_log_pack_size();
    v34 = &existing[-2] - ((MEMORY[0x1EEE9AC00](v28, v29, v30, v31, v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = __error();
    v36 = _os_log_pack_fill(v34, v28, *v35, &dword_1AD2AD000, "socket() failed: %s", valuePtr);
    v37 = __error();
    v38 = strerror(*v37);
    *v36 = 136315138;
    *(v36 + 4) = v38;
    __SC_log_send(3, v26, v27, v34);
  }

  return 0;
}

Boolean SCNetworkInterfaceSetMediaOptions(SCNetworkInterfaceRef interface, CFStringRef subtype, CFArrayRef options)
{
  available[1] = *MEMORY[0x1E69E9840];
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!interface || CFGetTypeID(interface) != TypeID)
  {
    _SCErrorSet(1002);
    return 0;
  }

  Configuration = SCNetworkInterfaceGetConfiguration(interface);
  if (Configuration)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Configuration);
    CFDictionaryRemoveValue(MutableCopy, @"__INACTIVE__");
    if (subtype)
    {
      goto LABEL_5;
    }
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (subtype)
    {
LABEL_5:
      available[0] = 0;
      v9 = options;
      if (!options)
      {
        v9 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
      }

      if (SCNetworkInterfaceCopyMediaOptions(interface, 0, 0, available, 0))
      {
        if (available[0])
        {
          v10 = SCNetworkInterfaceCopyMediaSubTypes(available[0]);
          v11 = v10;
          if (v10 && (v61.length = CFArrayGetCount(v10), v61.location = 0, CFArrayContainsValue(v11, v61, subtype)))
          {
            v12 = SCNetworkInterfaceCopyMediaSubTypeOptions(available[0], subtype);
            v13 = v12;
            if (v12)
            {
              v62.length = CFArrayGetCount(v12);
              v62.location = 0;
              if (CFArrayContainsValue(v13, v62, v9))
              {
                CFDictionarySetValue(MutableCopy, @"MediaSubType", subtype);
                CFDictionarySetValue(MutableCopy, @"MediaOptions", v9);
                v14 = 0;
                goto LABEL_28;
              }
            }

            v47 = __log_SCNetworkConfiguration();
            v48 = _SC_syslog_os_log_mapping(6);
            if (__SC_log_enabled(6, v47, v48))
            {
              v49 = _os_log_pack_size();
              v59[1] = v59;
              v55 = MEMORY[0x1EEE9AC00](v49, v50, v51, v52, v53, v54);
              v59[0] = v47;
              v56 = v59 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
              v57 = __error();
              v58 = _os_log_pack_fill(v56, v49, *v57, &dword_1AD2AD000, "media options not valid for %@");
              *v58 = 138412290;
              *(v58 + 4) = subtype;
              __SC_log_send(6, v59[0], v48, v56);
            }

            _SCErrorSet(1002);
          }

          else
          {
            v36 = __log_SCNetworkConfiguration();
            v37 = _SC_syslog_os_log_mapping(6);
            if (__SC_log_enabled(6, v36, v37))
            {
              v38 = _os_log_pack_size();
              v44 = v59 - ((MEMORY[0x1EEE9AC00](v38, v39, v40, v41, v42, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
              v45 = __error();
              *_os_log_pack_fill(v44, v38, *v45, &dword_1AD2AD000, "media type not valid") = 0;
              __SC_log_send(6, v36, v37, v44);
            }

            _SCErrorSet(1002);
            v13 = 0;
          }

          goto LABEL_27;
        }

        _SCErrorSet(1002);
      }

      else
      {
        v26 = __log_SCNetworkConfiguration();
        v27 = _SC_syslog_os_log_mapping(6);
        if (__SC_log_enabled(6, v26, v27))
        {
          v28 = _os_log_pack_size();
          v34 = v59 - ((MEMORY[0x1EEE9AC00](v28, v29, v30, v31, v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
          v35 = __error();
          *_os_log_pack_fill(v34, v28, *v35, &dword_1AD2AD000, "media type / options not available") = 0;
          __SC_log_send(6, v26, v27, v34);
          v14 = 1;
          v13 = 0;
          v11 = 0;
          goto LABEL_28;
        }
      }

      v13 = 0;
      v11 = 0;
LABEL_27:
      v14 = 1;
LABEL_28:
      if (available[0])
      {
        CFRelease(available[0]);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      if (v13)
      {
        CFRelease(v13);
      }

      if (options)
      {
        if (v14)
        {
          goto LABEL_38;
        }
      }

      else
      {
        CFRelease(v9);
        if (v14)
        {
          goto LABEL_38;
        }
      }

LABEL_43:
      v15 = SCNetworkInterfaceSetConfiguration(interface, MutableCopy);
      if (!MutableCopy)
      {
        return v15;
      }

      goto LABEL_39;
    }
  }

  if (!options)
  {
    CFDictionaryRemoveValue(MutableCopy, @"MediaSubType");
    CFDictionaryRemoveValue(MutableCopy, @"MediaOptions");
    if (!CFDictionaryGetCount(MutableCopy))
    {
      CFRelease(MutableCopy);
      MutableCopy = 0;
    }

    goto LABEL_43;
  }

  v16 = __log_SCNetworkConfiguration();
  v17 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v16, v17))
  {
    v18 = _os_log_pack_size();
    v24 = v59 - ((MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = __error();
    *_os_log_pack_fill(v24, v18, *v25, &dword_1AD2AD000, "media type must be specified with options") = 0;
    __SC_log_send(6, v16, v17, v24);
  }

  _SCErrorSet(1002);
LABEL_38:
  v15 = 0;
  if (MutableCopy)
  {
LABEL_39:
    CFRelease(MutableCopy);
  }

  return v15;
}

Boolean SCNetworkInterfaceSetMTU(SCNetworkInterfaceRef interface, int mtu)
{
  v33 = *MEMORY[0x1E69E9840];
  valuePtr = mtu;
  TypeID = SCNetworkInterfaceGetTypeID();
  if (!interface || CFGetTypeID(interface) != TypeID)
  {
    _SCErrorSet(1002);
    return 0;
  }

  *mtu_max = 0;
  if (!SCNetworkInterfaceCopyMTU(interface, 0, mtu_max, &mtu_max[1]))
  {
    v9 = __log_SCNetworkConfiguration();
    v10 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v9, v10))
    {
      v11 = _os_log_pack_size();
      v17 = &v30[-((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0)];
      v18 = __error();
      *_os_log_pack_fill(v17, v11, *v18, &dword_1AD2AD000, "MTU bounds not available") = 0;
      __SC_log_send(6, v9, v10, v17);
    }

    return 0;
  }

  Configuration = SCNetworkInterfaceGetConfiguration(interface);
  if (Configuration)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Configuration);
    CFDictionaryRemoveValue(MutableCopy, @"__INACTIVE__");
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  if (mtu_max[0] <= mtu && mtu_max[1] >= mtu)
  {
    v19 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(MutableCopy, @"MTU", v19);
    goto LABEL_15;
  }

  if (!mtu)
  {
    CFDictionaryRemoveValue(MutableCopy, @"MTU");
    if (CFDictionaryGetCount(MutableCopy))
    {
LABEL_16:
      v7 = SCNetworkInterfaceSetConfiguration(interface, MutableCopy);
      if (!MutableCopy)
      {
        return v7;
      }

      goto LABEL_22;
    }

    v19 = MutableCopy;
    MutableCopy = 0;
LABEL_15:
    CFRelease(v19);
    goto LABEL_16;
  }

  v20 = __log_SCNetworkConfiguration();
  v21 = _SC_syslog_os_log_mapping(6);
  if (__SC_log_enabled(6, v20, v21))
  {
    v22 = _os_log_pack_size();
    v28 = &v30[-((MEMORY[0x1EEE9AC00](v22, v23, v24, v25, v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0)];
    v29 = __error();
    *_os_log_pack_fill(v28, v22, *v29, &dword_1AD2AD000, "MTU out of range") = 0;
    __SC_log_send(6, v20, v21, v28);
  }

  _SCErrorSet(1002);
  v7 = 0;
  if (MutableCopy)
  {
LABEL_22:
    CFRelease(MutableCopy);
  }

  return v7;
}

CFStringRef SCPreferencesPathKeyCreateNetworkServiceEntity(const __CFAllocator *a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return CFStringCreateWithFormat(a1, 0, @"/%@/%@/%@", @"NetworkServices", a2, a3, v5);
  }

  else
  {
    return CFStringCreateWithFormat(a1, 0, @"/%@/%@", @"NetworkServices", a2, v4, v5);
  }
}

CFStringRef SCPreferencesPathKeyCreateSetNetworkInterfaceEntity(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    return CFStringCreateWithFormat(a1, 0, @"/%@/%@/%@/%@/%@/%@", @"Sets", a2, @"Network", @"Interface", a3, a4);
  }

  else
  {
    return CFStringCreateWithFormat(a1, 0, @"/%@/%@/%@/%@/%@", @"Sets", a2, @"Network", @"Interface", a3);
  }
}

CFStringRef SCPreferencesPathKeyCreateSetNetworkService(const __CFAllocator *a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return CFStringCreateWithFormat(a1, 0, @"/%@/%@/%@/%@/%@", @"Sets", a2, @"Network", @"Service", a3, v5);
  }

  else
  {
    return CFStringCreateWithFormat(a1, 0, @"/%@/%@/%@/%@", @"Sets", a2, @"Network", @"Service", v4, v5);
  }
}

CFStringRef SCPreferencesPathKeyCreateSetNetworkServiceEntity(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    return CFStringCreateWithFormat(a1, 0, @"/%@/%@/%@/%@/%@/%@", @"Sets", a2, @"Network", @"Service", a3, a4);
  }

  else
  {
    return CFStringCreateWithFormat(a1, 0, @"/%@/%@/%@/%@/%@", @"Sets", a2, @"Network", @"Service", a3);
  }
}

CFStringRef SCPreferencesPathKeyCreateCategoryService(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    return CFStringCreateWithFormat(a1, 0, @"/%@/%@/%@/%@/%@", @"Categories", a2, a3, @"Service", a4, v6);
  }

  else
  {
    return CFStringCreateWithFormat(a1, 0, @"/%@/%@/%@/%@", @"Categories", a2, a3, @"Service", v5, v6);
  }
}

os_log_t __log_SCNetworkConfiguration()
{
  result = __log_SCNetworkConfiguration_log;
  if (!__log_SCNetworkConfiguration_log)
  {
    result = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
    __log_SCNetworkConfiguration_log = result;
  }

  return result;
}

void __SCNetworkConfigurationReport(uint64_t a1, const char *a2, const __SCPreferences *a3, SCPreferencesRef prefs)
{
  logConfiguration_NetworkInterfaces(a1, a2, prefs);

  logConfiguration_preferences(a1, a2, a3);
}

void logConfiguration_NetworkInterfaces(unsigned int a1, const char *a2, SCPreferencesRef prefs)
{
  v59 = *MEMORY[0x1E69E9840];
  Value = SCPreferencesGetValue(prefs, @"Interfaces");
  TypeID = CFArrayGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    v8 = SCPreferencesGetValue(prefs, @"Model");
    Count = CFArrayGetCount(Value);
    v10 = __log_SCNetworkConfiguration_log;
    if (!__log_SCNetworkConfiguration_log)
    {
      v10 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
      __log_SCNetworkConfiguration_log = v10;
    }

    v11 = _SC_syslog_os_log_mapping(a1);
    v58 = a1;
    if (__SC_log_enabled(a1, v10, v11))
    {
      v13 = _os_log_pack_size();
      v19 = &v53 - ((MEMORY[0x1EEE9AC00](v13, v14, v15, v16, v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = __error();
      v21 = _os_log_pack_fill(v19, v13, *v20, &dword_1AD2AD000, "%s%sinterfaces (%@)");
      if (a2)
      {
        v22 = a2;
      }

      else
      {
        v22 = "";
      }

      v23 = " ";
      if (!a2)
      {
        v23 = "";
      }

      *v21 = 136315650;
      *(v21 + 4) = v22;
      if (v8)
      {
        v24 = v8;
      }

      else
      {
        v24 = @"No model";
      }

      *(v21 + 12) = 2080;
      *(v21 + 14) = v23;
      *(v21 + 22) = 2112;
      *(v21 + 24) = v24;
      __SC_log_send(v58, v10, v11, v19);
      a1 = v58;
    }

    if (Count >= 1)
    {
      v25 = 0;
      v26 = @"BSD Name";
      v55 = @"UserDefinedName";
      *&v12 = 138413058;
      v53 = v12;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Value, v25);
        v28 = CFDictionaryGetTypeID();
        if (ValueAtIndex)
        {
          if (CFGetTypeID(ValueAtIndex) == v28)
          {
            v29 = CFDictionaryGetValue(ValueAtIndex, v26);
            v30 = CFStringGetTypeID();
            if (v29)
            {
              if (CFGetTypeID(v29) == v30)
              {
                v31 = CFDictionaryGetValue(ValueAtIndex, @"IOBuiltin");
                if (v31)
                {
                  v32 = CFBooleanGetValue(v31);
                  v33 = ", built-in";
                  if (!v32)
                  {
                    v33 = "";
                  }

                  v57 = v33;
                }

                else
                {
                  v57 = "";
                }

                v34 = CFDictionaryContainsKey(ValueAtIndex, @"HiddenConfiguration");
                v35 = ", hidden";
                if (!v34)
                {
                  v36 = CFDictionaryContainsKey(ValueAtIndex, @"HiddenInterface");
                  v35 = ", hidden";
                  if (!v36)
                  {
                    v35 = "";
                  }
                }

                v56 = v35;
                v37 = CFDictionaryGetValue(ValueAtIndex, @"SCNetworkInterfaceInfo");
                v38 = CFDictionaryGetValue(v37, v55);
                v39 = __log_SCNetworkConfiguration_log;
                if (!__log_SCNetworkConfiguration_log)
                {
                  v39 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
                  __log_SCNetworkConfiguration_log = v39;
                }

                v40 = _SC_syslog_os_log_mapping(a1);
                if (__SC_log_enabled(a1, v39, v40))
                {
                  v41 = v26;
                  v42 = _os_log_pack_size();
                  v54 = &v53;
                  v48 = &v53 - ((MEMORY[0x1EEE9AC00](v42, v43, v44, v45, v46, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
                  v49 = __error();
                  v50 = v42;
                  v26 = v41;
                  v51 = _os_log_pack_fill(v48, v50, *v49, &dword_1AD2AD000, "  %@ (%@%s%s)");
                  *v51 = v53;
                  v52 = @"???";
                  if (v38)
                  {
                    v52 = v38;
                  }

                  *(v51 + 4) = v29;
                  *(v51 + 12) = 2112;
                  *(v51 + 14) = v52;
                  *(v51 + 22) = 2080;
                  *(v51 + 24) = v57;
                  *(v51 + 32) = 2080;
                  *(v51 + 34) = v56;
                  __SC_log_send(v58, v39, v40, v48);
                  a1 = v58;
                }
              }
            }
          }
        }

        ++v25;
      }

      while (Count != v25);
    }
  }
}

void logConfiguration_preferences(uint64_t a1, const char *a2, SCPreferencesRef prefs)
{
  v235 = *MEMORY[0x1E69E9840];
  v214 = prefs;
  Value = SCPreferencesGetValue(prefs, @"Model");
  v6 = __log_SCNetworkConfiguration_log;
  if (!__log_SCNetworkConfiguration_log)
  {
    v6 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
    __log_SCNetworkConfiguration_log = v6;
  }

  v7 = _SC_syslog_os_log_mapping(a1);
  if (__SC_log_enabled(a1, v6, v7))
  {
    v8 = _os_log_pack_size();
    v14 = &v214 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = __error();
    v16 = _os_log_pack_fill(v14, v8, *v15, &dword_1AD2AD000, "%s%sconfiguration (%@)", v214);
    if (a2)
    {
      v17 = a2;
    }

    else
    {
      v17 = "";
    }

    v18 = " ";
    if (!a2)
    {
      v18 = "";
    }

    *v16 = 136315650;
    *(v16 + 4) = v17;
    if (Value)
    {
      v19 = Value;
    }

    else
    {
      v19 = @"No model";
    }

    *(v16 + 12) = 2080;
    *(v16 + 14) = v18;
    *(v16 + 22) = 2112;
    *(v16 + 24) = v19;
    __SC_log_send(a1, v6, v7, v14);
  }

  v234 = a1;
  v20 = SCNetworkServiceCopyAll(v214);
  if (v20)
  {
    v21 = v20;
    MutableCopy = CFArrayCreateMutableCopy(0, 0, v20);
    CFRelease(v21);
  }

  else
  {
    MutableCopy = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v23 = v234;
  v24 = SCNetworkSetCopyAll(v214);
  v224 = MutableCopy;
  if (v24)
  {
    v25 = v24;
    v217 = SCNetworkSetCopyCurrent(v214);
    Count = CFArrayGetCount(v25);
    if (Count < 1)
    {
      goto LABEL_102;
    }

    v27 = 0;
    *&v26 = 138412802;
    v216 = v26;
    v215 = v25;
    while (1)
    {
      v219 = v27;
      ValueAtIndex = CFArrayGetValueAtIndex(v25, v27);
      v29 = __log_SCNetworkConfiguration_log;
      if (!__log_SCNetworkConfiguration_log)
      {
        v29 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
        __log_SCNetworkConfiguration_log = v29;
      }

      v30 = _SC_syslog_os_log_mapping(v23);
      if (__SC_log_enabled(v23, v29, v30))
      {
        v31 = _os_log_pack_size();
        v37 = &v214 - ((MEMORY[0x1EEE9AC00](v31, v32, v33, v34, v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
        v38 = __error();
        v39 = _os_log_pack_fill(v37, v31, *v38, &dword_1AD2AD000, "  Set %@ (%@%s)");
        SetID = SCNetworkSetGetSetID(ValueAtIndex);
        Name = SCNetworkSetGetName(ValueAtIndex);
        if (ValueAtIndex == v217 || v217 && ValueAtIndex && CFEqual(ValueAtIndex, v217))
        {
          v42 = ", current";
        }

        else
        {
          v42 = "";
        }

        *v39 = v216;
        *(v39 + 4) = SetID;
        *(v39 + 12) = 2112;
        *(v39 + 14) = Name;
        *(v39 + 22) = 2080;
        *(v39 + 24) = v42;
        v23 = v234;
        __SC_log_send(v234, v29, v30, v37);
      }

      v43 = SCNetworkSetCopyServices(ValueAtIndex);
      if (!v43)
      {
        goto LABEL_101;
      }

      v44 = v43;
      ServiceOrder = SCNetworkSetGetServiceOrder(ValueAtIndex);
      v46 = ServiceOrder;
      if (ServiceOrder)
      {
        v222 = CFArrayGetCount(ServiceOrder);
      }

      else
      {
        v222 = 0;
      }

      v47 = CFArrayGetCount(v44);
      v48 = v47;
      v223 = v46;
      if (v47 < 2)
      {
        if (v47 != 1)
        {
          goto LABEL_100;
        }
      }

      else
      {
        v49 = CFArrayCreateMutableCopy(0, 0, v44);
        v236.length = CFArrayGetCount(v49);
        v236.location = 0;
        CFArraySortValues(v49, v236, _SCNetworkServiceCompare, v223);
        CFRelease(v44);
        v44 = v49;
        v46 = v223;
      }

      v50 = 0;
      v221 = v44;
      v229 = v48;
      do
      {
        v51 = CFArrayGetValueAtIndex(v44, v50);
        ServiceID = SCNetworkServiceGetServiceID(v51);
        v53 = SCNetworkServiceGetName(v51);
        if (v53)
        {
          v54 = v53;
        }

        else
        {
          v54 = &stru_1F22591E8;
        }

        Interface = SCNetworkServiceGetInterface(v51);
        BSDName = SCNetworkInterfaceGetBSDName(Interface);
        UserDefinedName = __SCNetworkInterfaceGetUserDefinedName(Interface);
        *&v232 = v54;
        if (v54 == UserDefinedName || (v57 = UserDefinedName) != 0 && CFEqual(v54, UserDefinedName))
        {
          v57 = 0;
        }

        v58 = v44;
        v233 = ServiceID;
        if (!v46 || (v237.location = 0, v237.length = v222, FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v46, v237, ServiceID), FirstIndexOfValue == -1))
        {
          v85 = MutableCopy;
          v86 = __log_SCNetworkConfiguration_log;
          if (!__log_SCNetworkConfiguration_log)
          {
            v86 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
            __log_SCNetworkConfiguration_log = v86;
          }

          v87 = v234;
          v88 = _SC_syslog_os_log_mapping(v234);
          v89 = __SC_log_enabled(v87, v86, v88);
          MutableCopy = v85;
          v44 = v58;
          if (v89)
          {
            v90 = _os_log_pack_size();
            v230 = &v214;
            v96 = &v214 - ((MEMORY[0x1EEE9AC00](v90, v91, v92, v93, v94, v95) + 15) & 0xFFFFFFFFFFFFFFF0);
            v97 = __error();
            v228 = _os_log_pack_fill(v96, v90, *v97, &dword_1AD2AD000, "    Service    : %@, %2d (%@%s%@%s%@%s%s%s%s)");
            LODWORD(v227) = __SCNetworkInterfaceOrder(Interface);
            if (BSDName)
            {
              v98 = ", ";
            }

            else
            {
              v98 = "";
            }

            if (BSDName)
            {
              v99 = BSDName;
            }

            else
            {
              v99 = &stru_1F22591E8;
            }

            BSDName = v99;
            v100 = " : ";
            if (!v57)
            {
              v100 = "";
            }

            v225 = v100;
            v226 = v98;
            if (!v57)
            {
              v57 = &stru_1F22591E8;
            }

            if (SCNetworkInterfaceGetDisablePrivateRelay(Interface))
            {
              v101 = ", no-private-relay";
            }

            else
            {
              v101 = "";
            }

            if (SCNetworkInterfaceGetDisableUntilNeeded(Interface))
            {
              v102 = ", disable-until-needed";
            }

            else
            {
              v102 = "";
            }

            if (_SCNetworkInterfaceIsHiddenConfiguration(Interface))
            {
              v103 = ", hidden";
            }

            else
            {
              v103 = "";
            }

            Enabled = SCNetworkServiceGetEnabled(v51);
            v105 = ", disabled";
            if (Enabled)
            {
              v105 = "";
            }

            __os_log_helper_1_2_11_8_64_4_0_8_64_8_32_8_64_8_32_8_64_8_32_8_32_8_32_8_32(v228, v233, v227, v232, v226, BSDName, v225, v57, v101, v102, v103, v105);
            v81 = v234;
            v82 = v86;
            v83 = v88;
            v84 = v96;
            goto LABEL_95;
          }
        }

        else
        {
          v60 = FirstIndexOfValue;
          v61 = MutableCopy;
          v62 = __log_SCNetworkConfiguration_log;
          if (!__log_SCNetworkConfiguration_log)
          {
            v62 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
            __log_SCNetworkConfiguration_log = v62;
          }

          v63 = v234;
          LODWORD(v228) = _SC_syslog_os_log_mapping(v234);
          v64 = __SC_log_enabled(v63, v62, v228);
          MutableCopy = v61;
          v44 = v58;
          if (v64)
          {
            v65 = _os_log_pack_size();
            v230 = &v214;
            v71 = &v214 - ((MEMORY[0x1EEE9AC00](v65, v66, v67, v68, v69, v70) + 15) & 0xFFFFFFFFFFFFFFF0);
            v72 = __error();
            v227 = _os_log_pack_fill(v71, v65, *v72, &dword_1AD2AD000, "    Service %2ld : %@, %2d (%@%s%@%s%@%s%s%s%s)");
            LODWORD(v226) = __SCNetworkInterfaceOrder(Interface);
            v73 = ", ";
            if (!BSDName)
            {
              v73 = "";
            }

            v225 = v73;
            if (BSDName)
            {
              v74 = BSDName;
            }

            else
            {
              v74 = &stru_1F22591E8;
            }

            BSDName = v74;
            v75 = " : ";
            if (!v57)
            {
              v75 = "";
            }

            v220 = v75;
            if (!v57)
            {
              v57 = &stru_1F22591E8;
            }

            if (SCNetworkInterfaceGetDisablePrivateRelay(Interface))
            {
              v76 = ", no-private-relay";
            }

            else
            {
              v76 = "";
            }

            if (SCNetworkInterfaceGetDisableUntilNeeded(Interface))
            {
              v77 = ", disable-until-needed";
            }

            else
            {
              v77 = "";
            }

            if (_SCNetworkInterfaceIsHiddenConfiguration(Interface))
            {
              v78 = ", hidden";
            }

            else
            {
              v78 = "";
            }

            v79 = SCNetworkServiceGetEnabled(v51);
            v80 = ", disabled";
            if (v79)
            {
              v80 = "";
            }

            __os_log_helper_1_2_12_8_0_8_64_4_0_8_64_8_32_8_64_8_32_8_64_8_32_8_32_8_32_8_32(v227, v60 + 1, v233, v226, v232, v225, BSDName, v220, v57, v76, v77, v78, v80);
            v81 = v234;
            v82 = v62;
            v83 = v228;
            v84 = v71;
LABEL_95:
            __SC_log_send(v81, v82, v83, v84);
            v46 = v223;
            MutableCopy = v224;
            v44 = v221;
          }
        }

        v238.length = CFArrayGetCount(MutableCopy);
        v238.location = 0;
        v106 = CFArrayGetFirstIndexOfValue(MutableCopy, v238, v51);
        if (v106 != -1)
        {
          CFArrayRemoveValueAtIndex(MutableCopy, v106);
        }

        ++v50;
      }

      while (v229 != v50);
      v25 = v215;
      v23 = v234;
LABEL_100:
      CFRelease(v44);
LABEL_101:
      v27 = v219 + 1;
      if (v219 + 1 == Count)
      {
LABEL_102:
        CFRelease(v25);
        if (v217)
        {
          CFRelease(v217);
        }

        break;
      }
    }
  }

  v233 = CFArrayGetCount(MutableCopy);
  if (v233 >= 1)
  {
    v107 = __log_SCNetworkConfiguration_log;
    if (!__log_SCNetworkConfiguration_log)
    {
      v107 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
      __log_SCNetworkConfiguration_log = v107;
    }

    v108 = _SC_syslog_os_log_mapping(v23);
    if (__SC_log_enabled(v23, v107, v108))
    {
      v110 = _os_log_pack_size();
      v116 = &v214 - ((MEMORY[0x1EEE9AC00](v110, v111, v112, v113, v114, v115) + 15) & 0xFFFFFFFFFFFFFFF0);
      v117 = __error();
      *_os_log_pack_fill(v116, v110, *v117, &dword_1AD2AD000, "  Orphans") = 0;
      __SC_log_send(v23, v107, v108, v116);
    }

    v118 = 0;
    *&v109 = 138413314;
    v232 = v109;
    do
    {
      v119 = CFArrayGetValueAtIndex(MutableCopy, v118);
      v120 = SCNetworkServiceGetServiceID(v119);
      v121 = SCNetworkServiceGetName(v119);
      v122 = SCNetworkServiceGetInterface(v119);
      v123 = SCNetworkInterfaceGetBSDName(v122);
      v124 = __log_SCNetworkConfiguration_log;
      if (!__log_SCNetworkConfiguration_log)
      {
        v124 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
        __log_SCNetworkConfiguration_log = v124;
      }

      v125 = _SC_syslog_os_log_mapping(v23);
      if (__SC_log_enabled(v23, v124, v125))
      {
        if (v121)
        {
          v126 = v121;
        }

        else
        {
          v126 = &stru_1F22591E8;
        }

        v127 = _os_log_pack_size();
        v133 = &v214 - ((MEMORY[0x1EEE9AC00](v127, v128, v129, v130, v131, v132) + 15) & 0xFFFFFFFFFFFFFFF0);
        v134 = __error();
        v135 = _os_log_pack_fill(v133, v127, *v134, &dword_1AD2AD000, "    Service    : %@, %2d (%@%s%@)");
        v136 = SCNetworkServiceGetInterface(v119);
        v137 = __SCNetworkInterfaceOrder(v136);
        *v135 = v232;
        v138 = "";
        if (v123)
        {
          v138 = ", ";
        }

        *(v135 + 4) = v120;
        v139 = &stru_1F22591E8;
        if (v123)
        {
          v139 = v123;
        }

        *(v135 + 12) = 1024;
        *(v135 + 14) = v137;
        *(v135 + 18) = 2112;
        *(v135 + 20) = v126;
        *(v135 + 28) = 2080;
        *(v135 + 30) = v138;
        *(v135 + 38) = 2112;
        *(v135 + 40) = v139;
        __SC_log_send(v234, v124, v125, v133);
        LODWORD(v23) = v234;
      }

      ++v118;
      MutableCopy = v224;
    }

    while (v233 != v118);
  }

  CFRelease(MutableCopy);
  v140 = SCBridgeInterfaceCopyAll(v214);
  if (v140)
  {
    v141 = v140;
    v233 = CFArrayGetCount(v140);
    if (v233 >= 1)
    {
      v142 = __log_SCNetworkConfiguration_log;
      if (!__log_SCNetworkConfiguration_log)
      {
        v142 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
        __log_SCNetworkConfiguration_log = v142;
      }

      v143 = _SC_syslog_os_log_mapping(v23);
      if (__SC_log_enabled(v23, v142, v143))
      {
        v145 = _os_log_pack_size();
        v151 = &v214 - ((MEMORY[0x1EEE9AC00](v145, v146, v147, v148, v149, v150) + 15) & 0xFFFFFFFFFFFFFFF0);
        v152 = __error();
        *_os_log_pack_fill(v151, v145, *v152, &dword_1AD2AD000, "  Bridge interfaces") = 0;
        __SC_log_send(v234, v142, v143, v151);
        LODWORD(v23) = v234;
      }

      v153 = 0;
      *&v144 = 138412290;
      v232 = v144;
      do
      {
        v154 = CFArrayGetValueAtIndex(v141, v153);
        v155 = SCNetworkInterfaceGetBSDName(v154);
        if (v155)
        {
          v156 = v155;
          Mutable = CFStringCreateMutable(0, 0);
          CFStringAppendFormat(Mutable, 0, @"%@: ", v156);
          MemberInterfaces = SCBridgeInterfaceGetMemberInterfaces(v154);
          if (MemberInterfaces)
          {
            v159 = MemberInterfaces;
            v160 = CFArrayGetCount(MemberInterfaces);
            if (v160 >= 1)
            {
              v161 = v160;
              for (i = 0; i != v161; ++i)
              {
                v163 = CFArrayGetValueAtIndex(v159, i);
                v164 = SCNetworkInterfaceGetBSDName(v163);
                if (v164)
                {
                  v165 = v164;
                }

                else
                {
                  v165 = @"?";
                }

                if (i)
                {
                  v166 = ", ";
                }

                else
                {
                  v166 = "";
                }

                CFStringAppendFormat(Mutable, 0, @"%s%@", v166, v165);
              }
            }
          }

          v167 = __log_SCNetworkConfiguration_log;
          if (!__log_SCNetworkConfiguration_log)
          {
            v167 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
            __log_SCNetworkConfiguration_log = v167;
          }

          LODWORD(v23) = v234;
          v168 = _SC_syslog_os_log_mapping(v234);
          if (__SC_log_enabled(v23, v167, v168))
          {
            v169 = _os_log_pack_size();
            v175 = &v214 - ((MEMORY[0x1EEE9AC00](v169, v170, v171, v172, v173, v174) + 15) & 0xFFFFFFFFFFFFFFF0);
            v176 = __error();
            v177 = v169;
            v23 = v234;
            v178 = _os_log_pack_fill(v175, v177, *v176, &dword_1AD2AD000, "    %@");
            *v178 = v232;
            *(v178 + 4) = Mutable;
            __SC_log_send(v23, v167, v168, v175);
          }

          CFRelease(Mutable);
        }

        ++v153;
      }

      while (v153 != v233);
    }

    CFRelease(v141);
  }

  v179 = SCVLANInterfaceCopyAll(v214);
  if (v179)
  {
    v180 = v179;
    v181 = CFArrayGetCount(v179);
    if (v181 >= 1)
    {
      v182 = v181;
      v183 = __log_SCNetworkConfiguration_log;
      if (!__log_SCNetworkConfiguration_log)
      {
        v183 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
        __log_SCNetworkConfiguration_log = v183;
      }

      v184 = _SC_syslog_os_log_mapping(v23);
      if (__SC_log_enabled(v23, v183, v184))
      {
        v186 = _os_log_pack_size();
        v192 = &v214 - ((MEMORY[0x1EEE9AC00](v186, v187, v188, v189, v190, v191) + 15) & 0xFFFFFFFFFFFFFFF0);
        v193 = __error();
        *_os_log_pack_fill(v192, v186, *v193, &dword_1AD2AD000, "  VLAN interfaces") = 0;
        __SC_log_send(v234, v183, v184, v192);
        LODWORD(v23) = v234;
      }

      v194 = 0;
      *&v185 = 138412802;
      v232 = v185;
      v233 = v180;
      do
      {
        v195 = CFArrayGetValueAtIndex(v180, v194);
        v196 = SCNetworkInterfaceGetBSDName(v195);
        if (v196)
        {
          v197 = v196;
          PhysicalInterface = SCVLANInterfaceGetPhysicalInterface(v195);
          if (PhysicalInterface)
          {
            v199 = SCNetworkInterfaceGetBSDName(PhysicalInterface);
          }

          else
          {
            v199 = 0;
          }

          Tag = SCVLANInterfaceGetTag(v195);
          v201 = __log_SCNetworkConfiguration_log;
          if (!__log_SCNetworkConfiguration_log)
          {
            v201 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
            __log_SCNetworkConfiguration_log = v201;
          }

          v202 = _SC_syslog_os_log_mapping(v23);
          if (__SC_log_enabled(v23, v201, v202))
          {
            v203 = _os_log_pack_size();
            v23 = &v214 - ((MEMORY[0x1EEE9AC00](v203, v204, v205, v206, v207, v208) + 15) & 0xFFFFFFFFFFFFFFF0);
            v209 = __error();
            v210 = _os_log_pack_fill(v23, v203, *v209, &dword_1AD2AD000, "    %@: physical=%@, tag=%@");
            v211 = @"?";
            if (v199)
            {
              v212 = v199;
            }

            else
            {
              v212 = @"?";
            }

            *v210 = v232;
            *(v210 + 4) = v197;
            if (Tag)
            {
              v211 = Tag;
            }

            *(v210 + 12) = 2112;
            *(v210 + 14) = v212;
            *(v210 + 22) = 2112;
            *(v210 + 24) = v211;
            v213 = v23;
            LODWORD(v23) = v234;
            __SC_log_send(v234, v201, v202, v213);
            v180 = v233;
          }
        }

        ++v194;
      }

      while (v182 != v194);
    }

    CFRelease(v180);
  }
}

CFDictionaryRef __SCNetworkConfigurationGetValue(const __SCPreferences *a1, const __CFString *a2)
{
  Value = SCPreferencesPathGetValue(a1, a2);
  TypeID = CFDictionaryGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) != TypeID)
    {
      return 0;
    }

    Count = CFDictionaryGetCount(Value);
    if (!Count || Count == 1 && CFDictionaryContainsKey(Value, @"__INACTIVE__"))
    {
      return 0;
    }
  }

  return Value;
}

uint64_t __SCNetworkConfigurationSetValue(SCPreferencesRef prefs, CFStringRef path, const void *a3, int a4)
{
  if (a3)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(a3) != TypeID)
    {
      _SCErrorSet(1002);
      return 0;
    }
  }

  Value = SCPreferencesPathGetValue(prefs, path);
  v10 = CFDictionaryGetTypeID();
  if (Value && CFGetTypeID(Value) != v10)
  {
    Value = 0;
  }

  if (!a3)
  {
    if (!a4)
    {
      if (!Value)
      {
        return 1;
      }

      goto LABEL_29;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    goto LABEL_12;
  }

  Mutable = CFDictionaryCreateMutableCopy(0, 0, a3);
  if (a4)
  {
LABEL_12:
    v13 = CFDictionaryGetTypeID();
    if (Value && CFGetTypeID(Value) == v13 && CFDictionaryContainsKey(Value, @"__INACTIVE__"))
    {
      CFDictionarySetValue(Mutable, @"__INACTIVE__", *MEMORY[0x1E695E4D0]);
    }

    else
    {
      CFDictionaryRemoveValue(Mutable, @"__INACTIVE__");
    }
  }

  if (Value == Mutable)
  {
    if (!Value)
    {
      return 1;
    }

LABEL_23:
    CFRelease(Mutable);
    return 1;
  }

  if (Value && Mutable)
  {
    if (!CFEqual(Value, Mutable))
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if (Mutable)
  {
LABEL_27:
    v14 = SCPreferencesPathSetValue(prefs, path, Mutable);
    CFRelease(Mutable);
    return v14;
  }

LABEL_29:
  result = SCPreferencesPathRemoveValue(prefs, path);
  if (!result)
  {
    return SCError() == 1004;
  }

  return result;
}

BOOL __getPrefsEnabled(const __SCPreferences *a1, const __CFString *a2)
{
  Value = SCPreferencesPathGetValue(a1, a2);
  TypeID = CFDictionaryGetTypeID();
  return !Value || CFGetTypeID(Value) != TypeID || !CFDictionaryContainsKey(Value, @"__INACTIVE__");
}

uint64_t __setPrefsEnabled(const __SCPreferences *a1, const __CFString *a2, int a3)
{
  Value = SCPreferencesPathGetValue(a1, a2);
  if (Value)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(Value) != TypeID)
    {
      _SCErrorSet(1001);
      return 0;
    }

    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
    Mutable = MutableCopy;
    if (a3)
    {
      CFDictionaryRemoveValue(MutableCopy, @"__INACTIVE__");
    }

    else
    {
      CFDictionarySetValue(MutableCopy, @"__INACTIVE__", *MEMORY[0x1E695E4D0]);
    }

    if (Value == Mutable)
    {
      goto LABEL_13;
    }

    if (Mutable)
    {
      if (CFEqual(Value, Mutable))
      {
LABEL_13:
        CFRelease(Mutable);
        return 1;
      }

LABEL_17:
      v11 = SCPreferencesPathSetValue(a1, a2, Mutable);
      CFRelease(Mutable);
      return v11;
    }
  }

  else
  {
    if (a3)
    {
      return 1;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"__INACTIVE__", *MEMORY[0x1E695E4D0]);
    if (!Mutable)
    {
      return 1;
    }
  }

  if (Mutable)
  {
    goto LABEL_17;
  }

  result = SCPreferencesPathRemoveValue(a1, a2);
  if (!result)
  {
    return SCError() == 1004;
  }

  return result;
}

const void *__copyInterfaceTemplate(const void *a1, __CFString *a2)
{
  v4 = __copyTemplates();
  if (v4)
  {
    v5 = v4;
    Value = CFDictionaryGetValue(v4, @"Interface");
    TypeID = CFDictionaryGetTypeID();
    if (!Value || CFGetTypeID(Value) != TypeID)
    {
      goto LABEL_14;
    }

    if (a2)
    {
      location = CFStringFind(a2, @".", 0).location;
      v9 = @"*";
      if (location == -1)
      {
        v9 = a2;
      }

      v10 = CFStringCreateWithFormat(0, 0, @"%@-%@", a1, v9);
      v11 = CFDictionaryGetValue(Value, v10);
      CFRelease(v10);
    }

    else
    {
      v11 = CFDictionaryGetValue(Value, a1);
    }

    v12 = CFDictionaryGetTypeID();
    if (!v11)
    {
      goto LABEL_15;
    }

    if (CFGetTypeID(v11) == v12 && CFDictionaryGetCount(v11) >= 1)
    {
      CFRetain(v11);
    }

    else
    {
LABEL_14:
      v11 = 0;
    }

LABEL_15:
    CFRelease(v5);
    return v11;
  }

  return 0;
}

CFPropertyListRef __copyTemplates()
{
  v28[1] = *MEMORY[0x1E69E9840];
  v0 = _SC_CFBundleGet();
  if (!v0)
  {
    return 0;
  }

  v1 = CFBundleCopyResourceURL(v0, @"NetworkConfiguration", @"plist", 0);
  if (!v1)
  {
    v2 = __log_SCNetworkConfiguration_log;
    if (!__log_SCNetworkConfiguration_log)
    {
      v2 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
      __log_SCNetworkConfiguration_log = v2;
    }

    v3 = _SC_syslog_os_log_mapping(3);
    if (__SC_log_enabled(3, v2, v3))
    {
      v4 = _os_log_pack_size();
      v10 = v28 - ((MEMORY[0x1EEE9AC00](v4, v5, v6, v7, v8, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      v11 = __error();
      v12 = _os_log_pack_fill(v10, v4, *v11, &dword_1AD2AD000, "failed to GET resource URL to %s. Trying harder...", v28[0]);
      *v12 = 136315138;
      *(v12 + 4) = "NetworkConfiguration.plist";
      __SC_log_send(3, v2, v3, v10);
    }

    v1 = CFURLCreateWithFileSystemPath(0, @"/System/Library/Frameworks/SystemConfiguration.framework/NetworkConfiguration.plist", kCFURLPOSIXPathStyle, 1u);
    if (!v1)
    {
      v16 = __log_SCNetworkConfiguration_log;
      if (!__log_SCNetworkConfiguration_log)
      {
        v16 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
        __log_SCNetworkConfiguration_log = v16;
      }

      v17 = _SC_syslog_os_log_mapping(3);
      if (__SC_log_enabled(3, v16, v17))
      {
        v18 = _os_log_pack_size();
        v24 = v28 - ((MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
        v25 = __error();
        v26 = _os_log_pack_fill(v24, v18, *v25, &dword_1AD2AD000, "failed to CREATE resource URL to %s", v28[0]);
        *v26 = 136315138;
        *(v26 + 4) = "/System/Library/Frameworks/SystemConfiguration.framework/NetworkConfiguration.plist";
        __SC_log_send(3, v16, v17, v24);
      }

      return 0;
    }
  }

  v13 = v1;
  v14 = _SCCreatePropertyListFromResource(v1);
  CFRelease(v13);
  if (v14)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(v14) != TypeID)
    {
      CFRelease(v14);
      return 0;
    }
  }

  return v14;
}

const void *__copyProtocolTemplate(const void *a1, __CFString *a2, const void *a3)
{
  v6 = __copyTemplates();
  if (v6)
  {
    v7 = v6;
    Value = CFDictionaryGetValue(v6, @"Protocol");
    TypeID = CFDictionaryGetTypeID();
    if (Value && CFGetTypeID(Value) == TypeID)
    {
      if (a2)
      {
        location = CFStringFind(a2, @".", 0).location;
        v11 = @"*";
        if (location == -1)
        {
          v11 = a2;
        }

        v12 = CFStringCreateWithFormat(0, 0, @"%@-%@", a1, v11);
        v13 = CFDictionaryGetValue(Value, v12);
        CFRelease(v12);
      }

      else
      {
        v13 = CFDictionaryGetValue(Value, a1);
      }

      v15 = CFDictionaryGetTypeID();
      if (v13)
      {
        if (CFGetTypeID(v13) == v15)
        {
          v14 = CFDictionaryGetValue(v13, a3);
          v16 = CFDictionaryGetTypeID();
          if (!v14)
          {
LABEL_16:
            CFRelease(v7);
            return v14;
          }

          if (CFGetTypeID(v14) == v16)
          {
            CFRetain(v14);
            goto LABEL_16;
          }
        }
      }
    }

    v14 = 0;
    goto LABEL_16;
  }

  return 0;
}

BOOL __createInterface(int a1, const __CFString *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v39 = 0u;
  v40 = 0u;
  _SC_cfstring_to_cstring(a2, &v39, 16, 0x8000100u);
  if (ioctl(a1, 0xC0206978uLL, &v39) == -1)
  {
    v15 = __log_SCNetworkConfiguration_log;
    if (!__log_SCNetworkConfiguration_log)
    {
      v15 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
      __log_SCNetworkConfiguration_log = v15;
    }

    v16 = _SC_syslog_os_log_mapping(5);
    result = __SC_log_enabled(5, v15, v16);
    if (result)
    {
      v18 = _os_log_pack_size();
      v24 = &v39 - ((MEMORY[0x1EEE9AC00](v18, v19, v20, v21, v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = __error();
      v26 = _os_log_pack_fill(v24, v18, *v25, &dword_1AD2AD000, "could not create interface %@: %s");
      v27 = __error();
      v28 = strerror(*v27);
      *v26 = 138412546;
      *(v26 + 4) = a2;
      *(v26 + 12) = 2080;
      *(v26 + 14) = v28;
      __SC_log_send(5, v15, v16, v24);
      return 0;
    }
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
    _SC_cfstring_to_cstring(a2, &v39, 16, 0x8000100u);
    if (ioctl(a1, 0xC0206911uLL, &v39) == -1)
    {
      v4 = __log_SCNetworkConfiguration_log;
      if (!__log_SCNetworkConfiguration_log)
      {
        v4 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
        __log_SCNetworkConfiguration_log = v4;
      }

      v5 = _SC_syslog_os_log_mapping(5);
      if (__SC_log_enabled(5, v4, v5))
      {
        v29 = _os_log_pack_size();
        v12 = &v39 - ((MEMORY[0x1EEE9AC00](v29, v30, v31, v32, v33, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
        v35 = *__error();
        v14 = _os_log_pack_fill(v12, v29, v35, &dword_1AD2AD000, "SIOCGIFFLAGS failed %@: %s");
        goto LABEL_17;
      }
    }

    else if ((v40 & 1) == 0)
    {
      LOWORD(v40) = v40 | 1;
      if (ioctl(a1, 0x80206910uLL, &v39) == -1)
      {
        v4 = __log_SCNetworkConfiguration_log;
        if (!__log_SCNetworkConfiguration_log)
        {
          v4 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
          __log_SCNetworkConfiguration_log = v4;
        }

        v5 = _SC_syslog_os_log_mapping(5);
        if (__SC_log_enabled(5, v4, v5))
        {
          v6 = _os_log_pack_size();
          v12 = &v39 - ((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
          v13 = *__error();
          v14 = _os_log_pack_fill(v12, v6, v13, &dword_1AD2AD000, "SIOCSIFFLAGS failed %@: %s");
LABEL_17:
          v36 = v14;
          v37 = __error();
          v38 = strerror(*v37);
          *v36 = 138412546;
          *(v36 + 4) = a2;
          *(v36 + 12) = 2080;
          *(v36 + 14) = v38;
          __SC_log_send(5, v4, v5, v12);
          return 1;
        }
      }
    }

    return 1;
  }

  return result;
}

BOOL __destroyInterface(int a1, const __CFString *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  memset(v18, 0, sizeof(v18));
  _SC_cfstring_to_cstring(a2, v18, 16, 0x8000100u);
  if (ioctl(a1, 0x80206979uLL, v18) != -1)
  {
    return 1;
  }

  v5 = __log_SCNetworkConfiguration_log;
  if (!__log_SCNetworkConfiguration_log)
  {
    v5 = os_log_create("com.apple.SystemConfiguration", "SCNetworkConfiguration");
    __log_SCNetworkConfiguration_log = v5;
  }

  v6 = _SC_syslog_os_log_mapping(5);
  result = __SC_log_enabled(5, v5, v6);
  if (result)
  {
    v7 = _os_log_pack_size();
    v13 = v18 - ((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = __error();
    v15 = _os_log_pack_fill(v13, v7, *v14, &dword_1AD2AD000, "could not destroy interface %@: %s");
    v16 = __error();
    v17 = strerror(*v16);
    *v15 = 138412546;
    *(v15 + 4) = a2;
    *(v15 + 12) = 2080;
    *(v15 + 14) = v17;
    __SC_log_send(5, v5, v6, v13);
    return 0;
  }

  return result;
}

uint64_t __extract_password(uint64_t a1, CFDictionaryRef theDict, const void *a3, void *key, const void *a5, uint64_t a6, uint64_t *a7)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      v13 = Value;
      TypeID = CFStringGetTypeID();
      if (CFGetTypeID(v13) != TypeID)
      {
        return 0;
      }

      result = CFEqual(v13, a5);
      v16 = 0;
      if (!result)
      {
        return result;
      }

      if (a7)
      {
        goto LABEL_6;
      }

LABEL_9:
      if (a1)
      {
        result = _SCPreferencesSystemKeychainPasswordItemExists();
      }

      else
      {
        result = _SCSecKeychainPasswordItemExists();
      }

      goto LABEL_14;
    }
  }

  v16 = 1;
  if (!a7)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (a1)
  {
    v17 = _SCPreferencesSystemKeychainPasswordItemCopy();
  }

  else
  {
    v17 = _SCSecKeychainPasswordItemCopy();
  }

  *a7 = v17;
  result = v17 != 0;
LABEL_14:
  if (result)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  if (theDict)
  {
    if (v18)
    {
      v19 = CFDictionaryGetValue(theDict, a3);
      result = __copy_legacy_password(v19);
      if (result)
      {
        if (a7)
        {
          *a7 = result;
        }

        else
        {
          CFRelease(result);
        }

        return 1;
      }
    }
  }

  return result;
}

CFDataRef __copy_legacy_password(const __CFData *a1)
{
  if (!a1)
  {
    return 0;
  }

  TypeID = CFDataGetTypeID();
  if (CFGetTypeID(a1) == TypeID)
  {
    Length = CFDataGetLength(a1);
    if ((Length & 1) == 0)
    {
      if (*CFDataGetBytePtr(a1))
      {
        v4 = 335544576;
      }

      else
      {
        v4 = 268435712;
      }

      BytePtr = CFDataGetBytePtr(a1);
      v6 = CFStringCreateWithBytes(0, BytePtr, Length, v4, 0);
      ExternalRepresentation = CFStringCreateExternalRepresentation(0, v6, 0x8000100u, 0);
      CFRelease(v6);
      return ExternalRepresentation;
    }

    return 0;
  }

  v9 = CFStringGetTypeID();
  if (CFGetTypeID(a1) != v9 || CFStringGetLength(a1) < 1)
  {
    return 0;
  }

  return CFStringCreateExternalRepresentation(0, a1, 0x8000100u, 0);
}

uint64_t __remove_password(uint64_t a1, CFDictionaryRef theDict, const void *a3, void *key, const void *a5, uint64_t a6, __CFDictionary **a7)
{
  if (theDict && (Value = CFDictionaryGetValue(theDict, key)) != 0)
  {
    v14 = Value;
    TypeID = CFStringGetTypeID();
    if (CFGetTypeID(v14) != TypeID || (v16 = CFEqual(v14, a5), v17 = 0, !v16))
    {
LABEL_16:
      v19 = 0;
      goto LABEL_17;
    }

    if (a1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v17 = 1;
    if (a1)
    {
LABEL_6:
      v18 = _SCPreferencesSystemKeychainPasswordItemRemove();
      goto LABEL_9;
    }
  }

  v18 = _SCSecKeychainPasswordItemRemove();
LABEL_9:
  v19 = v18;
  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17;
  }

  if (theDict && v20)
  {
    v21 = CFDictionaryGetValue(theDict, a3);
    v22 = __copy_legacy_password(v21);
    if (v22)
    {
      CFRelease(v22);
      v19 = 1;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_17:
  if (a7)
  {
    MutableCopy = 0;
    if (theDict && v19)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
      CFDictionaryRemoveValue(MutableCopy, a3);
      CFDictionaryRemoveValue(MutableCopy, key);
    }

    *a7 = MutableCopy;
  }

  return v19;
}

uint64_t __rank_to_str(int a1, __CFString **a2)
{
  result = 0;
  if (a1 <= 1)
  {
    if (!a1)
    {
      v5 = 0;
      goto LABEL_12;
    }

    if (a1 != 1)
    {
      return result;
    }

    v4 = kSCValNetServicePrimaryRankFirst;
  }

  else
  {
    switch(a1)
    {
      case 2:
        v4 = kSCValNetServicePrimaryRankLast;
        break;
      case 3:
        v4 = kSCValNetServicePrimaryRankNever;
        break;
      case 4:
        v4 = kSCValNetServicePrimaryRankScoped;
        break;
      default:
        return result;
    }
  }

  v5 = *v4;
LABEL_12:
  *a2 = v5;
  return 1;
}

uint64_t __str_to_rank(const void *a1, int *a2)
{
  TypeID = CFStringGetTypeID();
  if (!a1)
  {
    v5 = 0;
    goto LABEL_6;
  }

  if (CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  if (CFEqual(a1, @"First"))
  {
    v5 = 1;
LABEL_6:
    *a2 = v5;
    return 1;
  }

  if (CFEqual(a1, @"Last"))
  {
    v5 = 2;
    goto LABEL_6;
  }

  if (CFEqual(a1, @"Never"))
  {
    v5 = 3;
    goto LABEL_6;
  }

  result = CFEqual(a1, @"Scoped");
  if (result)
  {
    v5 = 4;
    goto LABEL_6;
  }

  return result;
}

BOOL _SCNetworkConfigurationBypassSystemInterfaces(uint64_t a1)
{
  NetworkConfigurationFlags = __SCPreferencesGetNetworkConfigurationFlags(a1);
  if ((NetworkConfigurationFlags & 3) != 0)
  {
    return NetworkConfigurationFlags & 1;
  }

  else
  {
    return __SCPreferencesUsingDefaultPrefs(a1) == 0;
  }
}

uint64_t _SCNetworkConfigurationSetBypassSystemInterfaces(uint64_t a1, int a2)
{
  v4 = __SCPreferencesGetNetworkConfigurationFlags(a1) & 0xFFFFFFFC;
  if (a2)
  {
    ++v4;
  }

  return __SCPreferencesSetNetworkConfigurationFlags(a1, v4 | 2u);
}

double __os_log_helper_1_2_12_8_0_8_64_4_0_8_64_8_32_8_64_8_32_8_64_8_32_8_32_8_32_8_32(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *&result = 134220802;
  *a1 = 134220802;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2112;
  *(a1 + 14) = a3;
  *(a1 + 22) = 1024;
  *(a1 + 24) = a4;
  *(a1 + 28) = 2112;
  *(a1 + 30) = a5;
  *(a1 + 38) = 2080;
  *(a1 + 40) = a6;
  *(a1 + 48) = 2112;
  *(a1 + 50) = a7;
  *(a1 + 58) = 2080;
  *(a1 + 60) = a8;
  *(a1 + 68) = 2112;
  *(a1 + 70) = a9;
  *(a1 + 78) = 2080;
  *(a1 + 80) = a10;
  *(a1 + 88) = 2080;
  *(a1 + 90) = a11;
  *(a1 + 98) = 2080;
  *(a1 + 100) = a12;
  *(a1 + 108) = 2080;
  *(a1 + 110) = a13;
  return result;
}

double __os_log_helper_1_2_11_8_64_4_0_8_64_8_32_8_64_8_32_8_64_8_32_8_32_8_32_8_32(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *&result = 138414850;
  *a1 = 138414850;
  *(a1 + 4) = a2;
  *(a1 + 12) = 1024;
  *(a1 + 14) = a3;
  *(a1 + 18) = 2112;
  *(a1 + 20) = a4;
  *(a1 + 28) = 2080;
  *(a1 + 30) = a5;
  *(a1 + 38) = 2112;
  *(a1 + 40) = a6;
  *(a1 + 48) = 2080;
  *(a1 + 50) = a7;
  *(a1 + 58) = 2112;
  *(a1 + 60) = a8;
  *(a1 + 68) = 2080;
  *(a1 + 70) = a9;
  *(a1 + 78) = 2080;
  *(a1 + 80) = a10;
  *(a1 + 88) = 2080;
  *(a1 + 90) = a11;
  *(a1 + 98) = 2080;
  *(a1 + 100) = a12;
  return result;
}

BOOL __SCNetworkInterfaceSupportsVLAN(const __CFString *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v1 = _SC_cfstring_to_cstring(a1, 0, 0, 0x600u);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = if_nametoindex(v1);
  if (!v3)
  {
LABEL_10:
    v5 = 0;
    v4 = v2;
LABEL_17:
    CFAllocatorDeallocate(0, v4);
    return v5;
  }

  *v35 = xmmword_1AD329780;
  v36 = 3;
  v37 = v3;
  if (sysctl(v35, 6u, 0, &v34, 0, 0) == -1)
  {
    v6 = __log_SCNetworkConfiguration();
    v7 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v6, v7))
    {
      v8 = _os_log_pack_size();
      v14 = &v33 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = __error();
      v16 = _os_log_pack_fill(v14, v8, *v15, &dword_1AD2AD000, "sysctl() size failed: %s", v33);
      v17 = __error();
      v18 = strerror(*v17);
      *v16 = 136315138;
      *(v16 + 4) = v18;
      __SC_log_send(5, v6, v7, v14);
    }

    goto LABEL_10;
  }

  v4 = MEMORY[0x1B26F3AA0](0, v34, 3900559081, 0);
  if (sysctl(v35, 6u, v4, &v34, 0, 0) != -1)
  {
    v5 = v4[3] == 14 && (v4[102] & 3) != 0;
    CFAllocatorDeallocate(0, v2);
    goto LABEL_17;
  }

  v19 = __log_SCNetworkConfiguration();
  v20 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v19, v20))
  {
    v21 = _os_log_pack_size();
    v27 = &v33 - ((MEMORY[0x1EEE9AC00](v21, v22, v23, v24, v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = __error();
    v29 = _os_log_pack_fill(v27, v21, *v28, &dword_1AD2AD000, "sysctl() failed: %s", v33);
    v30 = __error();
    v31 = strerror(*v30);
    *v29 = 136315138;
    *(v29 + 4) = v31;
    __SC_log_send(5, v19, v20, v27);
  }

  CFAllocatorDeallocate(0, v2);
  v5 = 0;
  if (v4)
  {
    goto LABEL_17;
  }

  return v5;
}

CFDataRef __SCCopyMacAddress(const __CFString *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v19 = 0;
  if (!_SC_cfstring_to_cstring(a1, __s1, 16, 0x8000100u))
  {
    return 0;
  }

  if (getifaddrs(&v19) == -1)
  {
    v4 = __error();
    _SCErrorSet(*v4);
    v5 = __log_SCNetworkConfiguration();
    v6 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v5, v6))
    {
      v7 = _os_log_pack_size();
      v13 = &__s1[-((MEMORY[0x1EEE9AC00](v7, v8, v9, v10, v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      v14 = __error();
      v15 = _os_log_pack_fill(v13, v7, *v14, &dword_1AD2AD000, "getifaddrs() failed: %s", v19);
      v16 = __error();
      v17 = strerror(*v16);
      *v15 = 136315138;
      *(v15 + 4) = v17;
      __SC_log_send(5, v5, v6, v13);
    }

    return 0;
  }

  v1 = v19;
  if (v19)
  {
    v2 = v19;
    while (1)
    {
      if (!strcmp(__s1, *(v2 + 1)))
      {
        v3 = *(v2 + 3);
        if (v3[1] == 18)
        {
          break;
        }
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_14;
      }
    }

    v2 = CFDataCreate(0, &v3[v3[5] + 8], v3[6]);
    v1 = v19;
  }

  else
  {
    v2 = 0;
  }

LABEL_14:
  MEMORY[0x1B26F4BC0](v1);
  return v2;
}

uint64_t _SCBridgeInterfaceCreatePrivate(const __CFAllocator *a1, const __CFString *a2)
{
  Private = __SCNetworkInterfaceCreatePrivate(a1, 0, 0, 0);
  v5 = Private;
  if (Private)
  {
    *(Private + 16) = @"Bridge";
    *(Private + 128) = @"Ethernet";
    Copy = CFStringCreateCopy(a1, a2);
    *(v5 + 112) = Copy;
    *(v5 + 160) = __SCCopyMacAddress(Copy);
    *(v5 + 176) = 1;
    *(v5 + 368) = __SCNetworkInterfaceSupportsVLAN(a2);
    *(v5 + 312) = 10;
    *(v5 + 48) = @"bridge";
    *(v5 + 56) = CFRetain(*(v5 + 112));
    *(v5 + 352) = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
  }

  return v5;
}

uint64_t _SCVLANInterfaceCreatePrivate(const __CFAllocator *a1, const __CFString *a2)
{
  Private = __SCNetworkInterfaceCreatePrivate(a1, 0, 0, 0);
  v5 = Private;
  if (Private)
  {
    *(Private + 16) = @"VLAN";
    *(Private + 128) = @"Ethernet";
    Copy = CFStringCreateCopy(a1, a2);
    *(v5 + 112) = Copy;
    *(v5 + 160) = __SCCopyMacAddress(Copy);
    *(v5 + 176) = 1;
    *(v5 + 312) = 9;
    *(v5 + 48) = @"vlan";
    *(v5 + 56) = CFRetain(*(v5 + 112));
  }

  return v5;
}

uint64_t _SCNetworkInterfaceCompare(uint64_t a1, uint64_t a2)
{
  __endptr[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 312);
  v3 = *(a2 + 312);
  if (v2 != v3)
  {
    if (v2 < v3)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  if (*(a1 + 176) != *(a2 + 176))
  {
    if (*(a1 + 176))
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  if (*(a1 + 176))
  {
    v6 = *(a1 + 200);
    if (v6 != *(a2 + 200))
    {
      TypeID = CFStringGetTypeID();
      if (!v6 || CFGetTypeID(v6) != TypeID)
      {
        return 1;
      }

      v8 = *(a2 + 200);
      v9 = CFStringGetTypeID();
      if (!v8 || CFGetTypeID(v8) != v9)
      {
        return -1;
      }

      v10 = CFStringCompare(*(a1 + 200), *(a2 + 200), 0);
      if (v10)
      {
        return v10;
      }
    }
  }

  v11 = *(a1 + 208);
  if (!v11 || !*(a2 + 208))
  {
    goto LABEL_44;
  }

  theArray = split_path(v11);
  Count = CFArrayGetCount(theArray);
  v13 = split_path(*(a2 + 208));
  v14 = CFArrayGetCount(v13);
  v33 = v14;
  v34 = Count;
  if (Count >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = Count;
  }

  if (v15 < 1)
  {
LABEL_38:
    if (v34 >= v33)
    {
      v26 = 0;
    }

    else
    {
      v26 = -1;
    }

    goto LABEL_43;
  }

  v16 = 0;
  while (1)
  {
    __endptr[0] = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v16);
    v18 = CFArrayGetValueAtIndex(v13, v16);
    v19 = _SC_cfstring_to_cstring(ValueAtIndex, 0, 0, 0x8000100u);
    *__error() = 0;
    v20 = strtoq(v19, __endptr, 16);
    if (!*v19 || *__endptr[0])
    {
LABEL_19:
      CFAllocatorDeallocate(0, v19);
      goto LABEL_20;
    }

    v22 = v20;
    v23 = *__error();
    CFAllocatorDeallocate(0, v19);
    if (!v23)
    {
      v19 = _SC_cfstring_to_cstring(v18, 0, 0, 0x8000100u);
      *__error() = 0;
      v24 = strtoq(v19, __endptr, 16);
      if (!*v19 || *__endptr[0])
      {
        goto LABEL_19;
      }

      v32 = v24;
      v25 = *__error();
      CFAllocatorDeallocate(0, v19);
      if (!v25)
      {
        break;
      }
    }

LABEL_20:
    v21 = CFStringCompare(ValueAtIndex, v18, 0);
    if (v21)
    {
      v26 = v21;
      goto LABEL_43;
    }

LABEL_21:
    if (v15 == ++v16)
    {
      goto LABEL_38;
    }
  }

  if (v22 == v32)
  {
    goto LABEL_21;
  }

  if (v22 < v32)
  {
    v26 = -1;
  }

  else
  {
    v26 = 1;
  }

LABEL_43:
  CFRelease(theArray);
  CFRelease(v13);
  if (!v26)
  {
LABEL_44:
    v27 = *(a1 + 112);
    if (v27 && (v28 = *(a2 + 112)) != 0 && (v10 = CFStringCompare(v27, v28, 0)) != kCFCompareEqualTo)
    {
      return v10;
    }

    else
    {
      v29 = *(a1 + 120);
      if (v29)
      {
        v30 = *(a2 + 120);
        if (v30)
        {
          return CFStringCompare(v29, v30, 0);
        }
      }

      return 0;
    }
  }

  return v26;
}

CFArrayRef split_path(CFStringRef theString)
{
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  v4.length = CFStringGetLength(MutableCopy);
  v4.location = 0;
  CFStringFindAndReplace(MutableCopy, @"@", @"/", v4, 0);
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, MutableCopy, @"/");
  CFRelease(MutableCopy);
  return ArrayBySeparatingStrings;
}

uint64_t __SCNetworkInterfaceOrder(_BYTE *cf)
{
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!cf)
    {
      return 0x7FFFFFFFLL;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!cf)
    {
      return 0x7FFFFFFFLL;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) == v2)
  {
    return (cf[176] == 0) | (2 * *(cf + 78));
  }

  return 0x7FFFFFFFLL;
}

__CFString *__SCNetworkInterfaceGetDefaultConfigurationType(uint64_t a1)
{
  if (!*(a1 + 96))
  {
    goto LABEL_8;
  }

  v2 = 0;
  v3 = *(a1 + 16);
  for (i = &off_1E79BE548; !CFEqual(v3, **(i - 1)); i += 5)
  {
    if (++v2 == 19)
    {
      return *(a1 + 16);
    }
  }

  if (((0x61200uLL >> v2) & 1) == 0)
  {
    return **i;
  }

LABEL_8:
  _SCErrorSet(1002);
  return 0;
}

uint64_t findConfiguration(CFTypeRef cf1)
{
  v2 = 0;
  for (i = configurations; !CFEqual(cf1, **i); i += 5)
  {
    if (++v2 == 19)
    {
      return -1;
    }
  }

  return v2;
}

uint64_t __SCNetworkInterfaceIsValidExtendedConfigurationType(const __SCNetworkInterface *a1, const void *a2, int a3)
{
  DefaultConfigurationType = __SCNetworkInterfaceGetDefaultConfigurationType(a1);
  if (!DefaultConfigurationType || CFEqual(a2, DefaultConfigurationType))
  {
    goto LABEL_22;
  }

  v7 = 0;
  v8 = *(a1 + 2);
  v9 = configurations;
  while (!CFEqual(v8, **v9))
  {
    ++v7;
    v9 += 5;
    if (v7 == 19)
    {
      goto LABEL_22;
    }
  }

  if (CFEqual(a2, @"IPSec") && (v10 = SCNetworkInterfaceGetInterfaceType(a1), CFEqual(v10, @"PPP")) && (Interface = SCNetworkInterfaceGetInterface(a1)) != 0)
  {
    InterfaceType = SCNetworkInterfaceGetInterfaceType(Interface);
    v13 = CFEqual(InterfaceType, @"L2TP") != 0;
    if (!a3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = 0;
    if (!a3)
    {
      goto LABEL_16;
    }
  }

  v14 = !v13;
  if ((0x240ECuLL >> v7))
  {
    v14 = 0;
  }

  if (v14)
  {
LABEL_22:
    _SCErrorSet(1002);
    return 0;
  }

LABEL_16:
  v15 = 0;
  while (!CFEqual(a2, *configurations[v15]))
  {
    v15 += 5;
    if (v15 == 95)
    {
      return 1;
    }
  }

  if (!v13)
  {
    goto LABEL_22;
  }

  return 1;
}

__CFDictionary *__SCNetworkInterfaceCopyInterfaceEntity(SCNetworkInterfaceRef Interface)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = Mutable;
  v4 = *(Interface + 16);
  if (v4)
  {
    CFDictionarySetValue(Mutable, @"Type", v4);
  }

  v5 = *(Interface + 17);
  if (v5)
  {
    CFDictionarySetValue(v3, @"SubType", v5);
  }

  v6 = *(Interface + 14);
  if (v6)
  {
    CFDictionarySetValue(v3, @"DeviceName", v6);
  }

  v7 = *(Interface + 15);
  if (v7)
  {
    CFDictionarySetValue(v3, @"DeviceUniqueIdentifier", v7);
  }

  v8 = MEMORY[0x1E695E4D0];
  if (*(Interface + 192))
  {
    CFDictionarySetValue(v3, @"HiddenConfiguration", *MEMORY[0x1E695E4D0]);
  }

  if (*(Interface + 240))
  {
    CFDictionarySetValue(v3, @"TrustRequired", *v8);
  }

  do
  {
    v9 = Interface;
    Interface = SCNetworkInterfaceGetInterface(Interface);
  }

  while (Interface);
  if (!CFEqual(v9, &__kSCNetworkInterfaceIPv4))
  {
    v10 = 0;
    v12 = (v9 + 16);
    v11 = *(v9 + 2);
    v13 = &off_1E79BE548;
    while (!CFEqual(v11, **(v13 - 1)))
    {
      ++v10;
      v13 += 5;
      if (v10 == 19)
      {
        goto LABEL_21;
      }
    }

    if ((0x61200uLL >> v10))
    {
      goto LABEL_22;
    }

    v12 = *v13;
LABEL_21:
    CFDictionarySetValue(v3, @"Hardware", *v12);
LABEL_22:
    LocalizedDisplayName = SCNetworkInterfaceGetLocalizedDisplayName(v9);
    CFDictionarySetValue(v3, @"UserDefinedName", LocalizedDisplayName);
  }

  return v3;
}

CFStringRef SCNetworkInterfaceGetLocalizedDisplayName(SCNetworkInterfaceRef interface)
{
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!interface)
    {
LABEL_7:
      _SCErrorSet(1002);
      return 0;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!interface)
    {
      goto LABEL_7;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(interface) != v2)
  {
    goto LABEL_7;
  }

  result = *(interface + 5);
  if (!result)
  {
    result = copy_display_name(interface, 1, 0);
    *(interface + 5) = result;
  }

  return result;
}

void __SCNetworkInterfaceSetIOInterfaceUnit(const __CFString **a1, const __CFString *a2)
{
  v50[1] = *MEMORY[0x1E69E9840];
  TypeID = CFNumberGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID)
  {
    return;
  }

  BSDName = SCNetworkInterfaceGetBSDName(a1);
  v6 = a1[29];
  if (!v6)
  {
    v7 = a1[14];
    v8 = CFStringGetTypeID();
    if (v7 && CFGetTypeID(v7) == v8)
    {
      v9 = _SCNetworkInterfaceCopyPrefixFromBSDName(a1[14]);
      if (v9)
      {
        v10 = v9;
        v11 = CFStringGetTypeID();
        if (CFGetTypeID(v10) == v11)
        {
          CFRetain(v10);
          v12 = a1[29];
          if (v12)
          {
            CFRelease(v12);
          }

          a1[29] = v10;
        }

        CFRelease(v10);
      }

      else
      {
        v13 = __log_SCNetworkConfiguration();
        v14 = _SC_syslog_os_log_mapping(6);
        if (__SC_log_enabled(6, v13, v14))
        {
          v15 = _os_log_pack_size();
          v21 = v50 - ((MEMORY[0x1EEE9AC00](v15, v16, v17, v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
          v22 = __error();
          *_os_log_pack_fill(v21, v15, *v22, &dword_1AD2AD000, "interfaceNamePrefix is NULL") = 0;
          __SC_log_send(6, v13, v14, v21);
        }
      }
    }

    v6 = a1[29];
    if (!v6)
    {
      v23 = 0;
      goto LABEL_19;
    }
  }

  v23 = CFStringCreateWithFormat(0, 0, @"%@%@", v6, a2);
  if (!v23)
  {
LABEL_19:
    v24 = 1;
    goto LABEL_20;
  }

  v24 = 0;
  if (!__SCNetworkInterfaceUpdateBSDName(a1, BSDName, v23))
  {
LABEL_20:
    v25 = __log_SCNetworkConfiguration();
    v26 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v25, v26))
    {
      v27 = _os_log_pack_size();
      v33 = v50 - ((MEMORY[0x1EEE9AC00](v27, v28, v29, v30, v31, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = __error();
      *_os_log_pack_fill(v33, v27, *v34, &dword_1AD2AD000, "BSD name update failed") = 0;
      __SC_log_send(6, v25, v26, v33);
    }
  }

  v35 = a1[26];
  v36 = CFStringGetTypeID();
  if (v35 && CFGetTypeID(v35) == v36)
  {
    v37 = CFStringCreateWithFormat(0, 0, @"Migrated_From: %@", v35);
    v38 = a1[26];
    if (v38)
    {
      CFRelease(v38);
    }

    a1[26] = CFRetain(v37);
    if (v37)
    {
      CFRelease(v37);
    }
  }

  else
  {
    v39 = __log_SCNetworkConfiguration();
    v40 = _SC_syslog_os_log_mapping(6);
    if (__SC_log_enabled(6, v39, v40))
    {
      v41 = _os_log_pack_size();
      v47 = v50 - ((MEMORY[0x1EEE9AC00](v41, v42, v43, v44, v45, v46) + 15) & 0xFFFFFFFFFFFFFFF0);
      v48 = __error();
      *_os_log_pack_fill(v47, v41, *v48, &dword_1AD2AD000, "IOPath update failed") = 0;
      __SC_log_send(6, v39, v40, v47);
    }
  }

  CFRetain(a2);
  v49 = a1[32];
  if (v49)
  {
    CFRelease(v49);
  }

  a1[32] = a2;
  if ((v24 & 1) == 0)
  {
    CFRelease(v23);
  }
}

CFMutableStringRef _SCNetworkInterfaceCopyPrefixFromBSDName(const __CFString *a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  TypeID = CFStringGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, a1);
    Length = CFStringGetLength(MutableCopy);
    if (Length >= 1)
    {
      do
      {
        v5 = Length - 1;
        if (CFStringGetCharacterAtIndex(MutableCopy, Length - 1) - 48 > 9)
        {
          break;
        }

        v18.location = v5;
        v18.length = 1;
        CFStringDelete(MutableCopy, v18);
        Length = CFStringGetLength(MutableCopy);
      }

      while (Length > 0);
    }
  }

  else
  {
    v6 = __log_SCNetworkConfiguration();
    v7 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v6, v7))
    {
      v8 = _os_log_pack_size();
      v14 = v17 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = __error();
      *_os_log_pack_fill(v14, v8, *v15, &dword_1AD2AD000, "No BSD name") = 0;
      __SC_log_send(7, v6, v7, v14);
    }

    return 0;
  }

  return MutableCopy;
}

BOOL __SCNetworkInterfaceUpdateBSDName(CFTypeRef cf, const void *a2, const void *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!cf)
    {
LABEL_9:
      v9 = __log_SCNetworkConfiguration();
      v10 = _SC_syslog_os_log_mapping(6);
      result = __SC_log_enabled(6, v9, v10);
      if (!result)
      {
        return result;
      }

      v11 = _os_log_pack_size();
      v17 = v19 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = __error();
      *_os_log_pack_fill(v17, v11, *v18, &dword_1AD2AD000, "No interface") = 0;
      __SC_log_send(6, v9, v10, v17);
      return 0;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_9;
    }
  }

  v6 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) != v6)
  {
    goto LABEL_9;
  }

  if (CFEqual(a2, a3))
  {
    return 0;
  }

  v7 = *(cf + 14);
  if (v7)
  {
    CFRelease(v7);
  }

  *(cf + 14) = CFRetain(a3);
  return 1;
}

__CFDictionary *__SCNetworkInterfaceCopyStorageEntity(uint64_t a1)
{
  BSDName = SCNetworkInterfaceGetBSDName(a1);
  TypeID = CFStringGetTypeID();
  if (BSDName)
  {
    if (CFGetTypeID(BSDName) == TypeID && ((v4 = *MEMORY[0x1E695E4D0], *(a1 + 176)) ? (v5 = *MEMORY[0x1E695E4D0]) : (v5 = *MEMORY[0x1E695E4C0]), (v6 = *(a1 + 232), v7 = CFStringGetTypeID(), v6) && CFGetTypeID(v6) == v7 && (v8 = *(a1 + 248), v9 = CFNumberGetTypeID(), v8) && CFGetTypeID(v8) == v9 && (v10 = *(a1 + 256), v11 = CFNumberGetTypeID(), v10) && CFGetTypeID(v10) == v11 && (v12 = *(a1 + 160), v13 = CFDataGetTypeID(), v12) && CFGetTypeID(v12) == v13 && (v14 = *(a1 + 208), v15 = CFStringGetTypeID(), v14) && CFGetTypeID(v14) == v15 && (v16 = _SCNetworkInterfaceCopyInterfaceInfo(a1), v17 = CFDictionaryGetTypeID(), v16)))
    {
      cf = v16;
      if (CFGetTypeID(v16) == v17 && (InterfaceType = SCNetworkInterfaceGetInterfaceType(a1), v25 = CFStringGetTypeID(), InterfaceType) && (v24 = v14, v19 = BSDName, CFGetTypeID(InterfaceType) == v25))
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        BSDName = Mutable;
        if (*(a1 + 24))
        {
          CFDictionaryAddValue(Mutable, @"Active", v4);
        }

        CFDictionaryAddValue(BSDName, @"BSD Name", v19);
        if (*(a1 + 192))
        {
          CFDictionaryAddValue(BSDName, @"HiddenConfiguration", v4);
        }

        if (*(a1 + 193))
        {
          CFDictionaryAddValue(BSDName, @"HiddenInterface", v4);
        }

        CFDictionaryAddValue(BSDName, @"IOBuiltin", v5);
        CFDictionaryAddValue(BSDName, @"IOInterfaceNamePrefix", v6);
        CFDictionaryAddValue(BSDName, @"IOInterfaceType", v8);
        CFDictionaryAddValue(BSDName, @"IOInterfaceUnit", v10);
        CFDictionaryAddValue(BSDName, @"IOMACAddress", v12);
        CFDictionaryAddValue(BSDName, @"IOPathMatch", v24);
        CFDictionaryAddValue(BSDName, @"SCNetworkInterfaceInfo", cf);
        CFDictionaryAddValue(BSDName, @"SCNetworkInterfaceType", InterfaceType);
        v21 = *(a1 + 304);
        v22 = CFArrayGetTypeID();
        if (v21 && CFGetTypeID(v21) == v22)
        {
          CFDictionaryAddValue(BSDName, @"MatchingMACs", *(a1 + 304));
        }
      }

      else
      {
        BSDName = 0;
      }

      CFRelease(cf);
    }

    else
    {
      return 0;
    }
  }

  return BSDName;
}

__CFDictionary *_SCNetworkInterfaceCopyInterfaceInfo(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  NonLocalizedDisplayName = __SCNetworkInterfaceGetNonLocalizedDisplayName(a1);
  if (NonLocalizedDisplayName)
  {
    CFDictionaryAddValue(Mutable, @"UserDefinedName", NonLocalizedDisplayName);
  }

  v4 = *(a1 + 288);
  if (v4 || *(a1 + 296))
  {
    if (*(a1 + 280))
    {
      CFDictionaryAddValue(Mutable, @"kUSBProductString", *(a1 + 280));
      v4 = *(a1 + 288);
    }

    if (v4)
    {
      CFDictionaryAddValue(Mutable, @"idVendor", v4);
    }

    v5 = *(a1 + 296);
    if (v5)
    {
      CFDictionaryAddValue(Mutable, @"idProduct", v5);
    }
  }

  if (!CFDictionaryGetCount(Mutable))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t matchesName(__CFBundle *a1, const __CFString *a2, const __CFString *a3, uint64_t a4)
{
  v5 = copy_interface_string(a1, a3, a4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = CFEqual(a2, v5);
  if (!v7)
  {
    if (CFStringHasSuffix(v6, @" %@"))
    {
      Length = CFStringGetLength(a2);
      do
      {
        v9 = Length;
        if (Length < 3)
        {
          break;
        }

        --Length;
      }

      while (CFStringGetCharacterAtIndex(a2, v9 - 1) - 58 > 0xFFFFFFF5);
      v13.location = 0;
      v13.length = v9;
      v10 = CFStringCreateWithSubstring(0, a2, v13);
      v14.length = CFStringGetLength(v6) - 2;
      v14.location = 0;
      v11 = CFStringCreateWithSubstring(0, v6, v14);
      v7 = CFEqual(v10, v11);
      CFRelease(v10);
      CFRelease(v11);
    }

    else
    {
      v7 = 0;
    }
  }

  CFRelease(v6);
  return v7;
}

void _SCNetworkInterfaceCacheOpen()
{
  v25 = *MEMORY[0x1E69E9840];
  v0 = __SCGetThreadSpecificData();
  v1 = v0[1];
  if (v1)
  {
    CFRetain(v1);
    v2 = __log_SCNetworkConfiguration();
    v3 = _SC_syslog_os_log_mapping(7);
    if (!__SC_log_enabled(7, v2, v3))
    {
      return;
    }

    v4 = _os_log_pack_size();
    v10 = &v24 - ((MEMORY[0x1EEE9AC00](v4, v5, v6, v7, v8, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = __error();
    v12 = _os_log_pack_fill(v10, v4, *v11, &dword_1AD2AD000, "SCNetworkInterface cache (%p): open %ld", v24, v25);
    v13 = v0[1];
    v14 = CFGetRetainCount(v13);
    *v12 = 134218240;
    *(v12 + 4) = v13;
    *(v12 + 12) = 2048;
    *(v12 + 14) = v14;
  }

  else
  {
    v0[1] = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v2 = __log_SCNetworkConfiguration();
    v3 = _SC_syslog_os_log_mapping(7);
    if (!__SC_log_enabled(7, v2, v3))
    {
      return;
    }

    v15 = _os_log_pack_size();
    v10 = &v24 - ((MEMORY[0x1EEE9AC00](v15, v16, v17, v18, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = __error();
    v22 = _os_log_pack_fill(v10, v15, *v21, &dword_1AD2AD000, "SCNetworkInterface cache (%p): open", v24);
    v23 = v0[1];
    *v22 = 134217984;
    *(v22 + 4) = v23;
  }

  __SC_log_send(7, v2, v3, v10);
}

void _SCNetworkInterfaceCacheClose()
{
  v27 = *MEMORY[0x1E69E9840];
  v0 = __SCGetThreadSpecificData();
  v1 = v0[1];
  if (v1)
  {
    v2 = CFGetRetainCount(v1);
    CFRelease(v0[1]);
    v3 = __log_SCNetworkConfiguration();
    v4 = _SC_syslog_os_log_mapping(7);
    v5 = __SC_log_enabled(7, v3, v4);
    if (v2 < 2)
    {
      if (v5)
      {
        v16 = _os_log_pack_size();
        v22 = &v26 - ((MEMORY[0x1EEE9AC00](v16, v17, v18, v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
        v23 = __error();
        v24 = _os_log_pack_fill(v22, v16, *v23, &dword_1AD2AD000, "SCNetworkInterface cache (%p): close", v26);
        v25 = v0[1];
        *v24 = 134217984;
        *(v24 + 4) = v25;
        __SC_log_send(7, v3, v4, v22);
      }

      v0[1] = 0;
    }

    else if (v5)
    {
      v6 = _os_log_pack_size();
      v12 = &v26 - ((MEMORY[0x1EEE9AC00](v6, v7, v8, v9, v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = __error();
      v14 = _os_log_pack_fill(v12, v6, *v13, &dword_1AD2AD000, "SCNetworkInterface cache (%p): close %ld", v26, v27);
      v15 = v0[1];
      *v14 = 134218240;
      *(v14 + 4) = v15;
      *(v14 + 12) = 2048;
      *(v14 + 14) = v2;
      __SC_log_send(7, v3, v4, v12);
    }
  }
}

CFTypeRef __SCNetworkInterfaceCreateCopy(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  if (__SCNetworkInterfaceInitialize_initialized != -1)
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
  }

  if (a2 == &__kSCNetworkInterfaceIPv4)
  {

    return CFRetain(&__kSCNetworkInterfaceIPv4);
  }

  else
  {
    Private = __SCNetworkInterfaceCreatePrivate(0, 0, a3, a4);
    v8 = Private;
    *(Private + 16) = *(a2 + 16);
    v9 = *(a2 + 72);
    if (v9)
    {
      *(Private + 72) = __SCNetworkInterfaceCreateCopy(Private, v9, a3, a4);
    }

    v10 = *(a2 + 32);
    if (v10)
    {
      *(v8 + 32) = CFRetain(v10);
    }

    v11 = *(a2 + 232);
    if (v11)
    {
      *(v8 + 232) = CFRetain(v11);
    }

    v12 = *(a2 + 40);
    if (v12)
    {
      *(v8 + 40) = CFRetain(v12);
    }

    v13 = *(a2 + 56);
    *(v8 + 48) = *(a2 + 48);
    if (v13)
    {
      *(v8 + 56) = CFRetain(v13);
    }

    v14 = *(a2 + 64);
    if (v14)
    {
      *(v8 + 64) = CFRetain(v14);
    }

    v15 = *(a2 + 104);
    if (v15)
    {
      *(v8 + 104) = CFDictionaryCreateMutableCopy(0, 0, v15);
    }

    v16 = *(a2 + 112);
    if (v16)
    {
      *(v8 + 112) = CFRetain(v16);
    }

    v17 = *(a2 + 120);
    if (v17)
    {
      *(v8 + 120) = CFRetain(v17);
    }

    *(v8 + 128) = *(a2 + 128);
    v18 = *(a2 + 144);
    if (v18)
    {
      *(v8 + 144) = CFArrayCreateMutableCopy(0, 0, v18);
    }

    v19 = *(a2 + 152);
    if (v19)
    {
      *(v8 + 152) = CFArrayCreateMutableCopy(0, 0, v19);
    }

    v20 = *(a2 + 160);
    if (v20)
    {
      *(v8 + 160) = CFRetain(v20);
    }

    *(v8 + 176) = *(a2 + 176);
    v21 = *(a2 + 184);
    if (v21)
    {
      *(v8 + 184) = CFRetain(v21);
    }

    *(v8 + 192) = *(a2 + 192);
    *(v8 + 240) = *(a2 + 240);
    v22 = *(a2 + 200);
    if (v22)
    {
      *(v8 + 200) = CFRetain(v22);
    }

    v23 = *(a2 + 208);
    if (v23)
    {
      *(v8 + 208) = CFRetain(v23);
    }

    v24 = *(a2 + 224);
    *(v8 + 216) = *(a2 + 216);
    if (v24)
    {
      *(v8 + 224) = CFDictionaryCreateMutableCopy(0, 0, v24);
    }

    v25 = *(a2 + 248);
    if (v25)
    {
      *(v8 + 248) = CFRetain(v25);
    }

    v26 = *(a2 + 256);
    if (v26)
    {
      *(v8 + 256) = CFRetain(v26);
    }

    v27 = *(a2 + 264);
    if (v27)
    {
      *(v8 + 264) = CFRetain(v27);
    }

    v28 = *(a2 + 272);
    if (v28)
    {
      *(v8 + 272) = CFRetain(v28);
    }

    v29 = *(a2 + 280);
    if (v29)
    {
      *(v8 + 280) = CFRetain(v29);
    }

    v30 = *(a2 + 288);
    if (v30)
    {
      *(v8 + 288) = CFRetain(v30);
    }

    v31 = *(a2 + 296);
    if (v31)
    {
      *(v8 + 296) = CFRetain(v31);
    }

    *(v8 + 312) = *(a2 + 312);
    *(v8 + 316) = *(a2 + 316);
    v32 = *(a2 + 320);
    if (v32)
    {
      *(v8 + 320) = CFRetain(v32);
    }

    v33 = *(a2 + 328);
    if (v33)
    {
      *(v8 + 328) = CFRetain(v33);
    }

    v34 = *(a2 + 336);
    if (v34)
    {
      *(v8 + 336) = CFRetain(v34);
    }

    *(v8 + 344) = *(a2 + 344);
    v35 = *(a2 + 352);
    if (v35)
    {
      *(v8 + 352) = CFRetain(v35);
    }

    v36 = *(a2 + 360);
    if (v36)
    {
      *(v8 + 360) = CFRetain(v36);
    }

    *(v8 + 368) = *(a2 + 368);
    v37 = *(a2 + 376);
    if (v37)
    {
      *(v8 + 376) = CFRetain(v37);
    }

    v38 = *(a2 + 384);
    if (v38)
    {
      *(v8 + 384) = CFRetain(v38);
    }

    v39 = *(a2 + 392);
    if (v39)
    {
      *(v8 + 392) = CFRetain(v39);
    }

    return v8;
  }
}

uint64_t processSerialInterface(uint64_t a1, io_registry_entry_t entry, const __CFDictionary *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = IORegistryEntrySearchCFProperty(entry, "IOService", @"Initializing", 0, 3u);
  if (v6)
  {
    v7 = v6;
    TypeID = CFBooleanGetTypeID();
    if (CFGetTypeID(v7) == TypeID)
    {
      Value = CFBooleanGetValue(v7);
      CFRelease(v7);
      if (Value)
      {
        return 0;
      }
    }

    else
    {
      CFRelease(v7);
    }
  }

  v10 = IORegistryEntrySearchCFProperty(entry, "IOService", @"WWAN", 0, 3u);
  if (v10)
  {
    v11 = v10;
    v12 = CFBooleanGetTypeID();
    v13 = CFGetTypeID(v11) != v12 || CFBooleanGetValue(v11) == 0;
    CFRelease(v11);
  }

  else
  {
    v13 = 1;
  }

  v14 = CFDictionaryGetValue(a3, @"IOTTYDevice");
  v15 = IOCopyCFStringValue(v14);
  *(a1 + 112) = v15;
  if (!v15)
  {
    return 0;
  }

  v16 = CFDictionaryGetValue(a3, @"IOTTYBaseName");
  v17 = IOCopyCFStringValue(v16);
  if (!v17)
  {
    v17 = CFRetain(*(a1 + 112));
  }

  Length = CFStringGetLength(@"bluetooth");
  v19 = CFStringGetTypeID();
  if (!v17)
  {
    CFDataGetTypeID();
    goto LABEL_28;
  }

  if (CFGetTypeID(v17) == v19)
  {
    v20 = 0;
    v21 = v17;
    goto LABEL_22;
  }

  v23 = CFDataGetTypeID();
  if (CFGetTypeID(v17) != v23 || (BytePtr = CFDataGetBytePtr(v17), v21 = CFStringCreateWithCStringNoCopy(0, BytePtr, 0x8000100u, *MEMORY[0x1E695E498]), (v20 = v21) == 0))
  {
LABEL_28:
    v26 = @"Modem";
    if (v13)
    {
      v27 = 2;
    }

    else
    {
      v26 = @"WWAN";
      v27 = 4;
    }

    *(a1 + 16) = v26;
    *(a1 + 312) = v27;
LABEL_32:
    *(a1 + 128) = @"Modem";
    v28 = CFDictionaryGetValue(a3, @"IOSerialBSDClientType");
    v29 = CFStringGetTypeID();
    if (v28 && CFGetTypeID(v28) == v29 && CFEqual(v28, @"IOSerialStream"))
    {
      if (CFEqual(v17, @"modem"))
      {
        v30 = 0;
        *(a1 + 176) = 1;
      }

      else
      {
        if (!CFEqual(v17, @"usbmodem"))
        {
          goto LABEL_47;
        }

        v30 = 1;
      }

      *(a1 + 312) = v30;
LABEL_47:
      merge_override(a1, entry, @"PPP");
      merge_override(a1, entry, @"Modem");
      v33 = *(a1 + 224);
      if (!v33)
      {
        goto LABEL_56;
      }

      v34 = CFDictionaryGetValue(v33, @"Modem");
      if (!v34)
      {
        goto LABEL_56;
      }

      v35 = v34;
      v36 = CFDictionaryGetValue(v34, @"ConnectionScript");
      v37 = CFStringGetTypeID();
      if (v36)
      {
        v38 = CFGetTypeID(v36) != v37;
      }

      else
      {
        v38 = 1;
      }

      v39 = CFDictionaryGetValue(v35, @"UniqueIdentifier");
      v40 = CFStringGetTypeID();
      if (v39 && CFGetTypeID(v39) == v40)
      {
        CFRelease(*(a1 + 112));
        *(a1 + 112) = CFRetain(v17);
        *(a1 + 120) = CFStringCreateCopy(0, v39);
      }

      if (v38)
      {
LABEL_56:
        v41 = IORegistryEntrySearchCFProperty(entry, "IOService", @"ModemCCL", 0, 3u);
        if (v41)
        {
          v42 = v41;
          v43 = IOCopyCFStringValue(v41);
          LOBYTE(v38) = v43 == 0;
          if (v43)
          {
            v44 = v43;
            set_connection_script(a1, v43);
            CFRelease(v44);
          }

          CFRelease(v42);
        }

        else
        {
          LOBYTE(v38) = 1;
        }
      }

      if (CFEqual(*(a1 + 16), @"Bluetooth"))
      {
        *(a1 + 48) = @"bluetooth";
        goto LABEL_80;
      }

      MutableCopy = CFStringCreateMutableCopy(0, 0, v17);
      CFStringLowercase(MutableCopy, 0);
      if (bundle)
      {
        v46 = copy_interface_string(bundle, MutableCopy, 0);
        if (v46)
        {
          v47 = v46;
          if (!CFEqual(MutableCopy, v46))
          {
LABEL_68:
            *(a1 + 32) = v47;
            if (bundle)
            {
              v48 = copy_interface_string(bundle, MutableCopy, 1);
              if (v48)
              {
                Copy = v48;
                if (!CFEqual(MutableCopy, v48))
                {
LABEL_73:
                  *(a1 + 40) = Copy;
                  if (!CFEqual(v17, @"modem"))
                  {
                    processUSBInterface(a1, entry);
                    updated = update_interface_name(a1, entry, 1);
                    v51 = !v38;
                    if (!updated)
                    {
                      v51 = 1;
                    }

                    if ((v51 & 1) == 0 && is_valid_connection_script(*(a1 + 32)))
                    {
                      set_connection_script(a1, *(a1 + 32));
                    }
                  }

                  CFRelease(MutableCopy);
LABEL_80:
                  v22 = 1;
                  if (!v17)
                  {
                    return v22;
                  }

                  goto LABEL_40;
                }

                CFRelease(Copy);
              }
            }

            Copy = CFStringCreateCopy(0, v17);
            goto LABEL_73;
          }

          CFRelease(v47);
        }
      }

      v47 = CFStringCreateCopy(0, v17);
      goto LABEL_68;
    }

    goto LABEL_38;
  }

LABEL_22:
  if (CFStringGetLength(v21) >= Length)
  {
    v54.location = 0;
    v54.length = Length;
    v25 = CFStringCompareWithOptions(v21, @"bluetooth", v54, 1uLL) != kCFCompareEqualTo;
    if (!v20)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v25 = 1;
  if (v20)
  {
LABEL_26:
    CFRelease(v20);
  }

LABEL_27:
  if (v25)
  {
    goto LABEL_28;
  }

  v52 = 0;
  *(a1 + 16) = @"Bluetooth";
  *(a1 + 312) = 3;
  *(a1 + 176) = isBluetoothBuiltin(&v52);
  if (v52)
  {
    goto LABEL_32;
  }

LABEL_38:
  v31 = *(a1 + 112);
  if (!v31)
  {
    v22 = 0;
    if (!v17)
    {
      return v22;
    }

    goto LABEL_40;
  }

  CFRelease(v31);
  v22 = 0;
  *(a1 + 112) = 0;
  if (v17)
  {
LABEL_40:
    CFRelease(v17);
  }

  return v22;
}

SCNetworkInterfaceRef SCNetworkInterfaceCreateWithInterface(SCNetworkInterfaceRef interface, CFStringRef interfaceType)
{
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!interface)
    {
LABEL_7:
      _SCErrorSet(1002);
      return 0;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!interface)
    {
      goto LABEL_7;
    }
  }

  v4 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(interface) != v4)
  {
    goto LABEL_7;
  }

  TypeID = CFStringGetTypeID();
  if (!interfaceType || CFGetTypeID(interfaceType) != TypeID || CFEqual(interface, &__kSCNetworkInterfaceLoopback))
  {
    goto LABEL_7;
  }

  v8 = 0;
  v9 = *(interface + 2);
  v10 = configurations;
  while (!CFEqual(v9, **v10))
  {
    ++v8;
    v10 += 5;
    if (v8 == 19)
    {
      v8 = -1;
      break;
    }
  }

  Private = __SCNetworkInterfaceCreatePrivate(0, interface, *(interface + 10), *(interface + 12));
  if (!Private)
  {
    _SCErrorSet(1001);
    return Private;
  }

  if (CFEqual(interfaceType, @"PPP"))
  {
    *(Private + 16) = @"PPP";
    *(Private + 128) = @"PPP";
    if (v8 == -1)
    {
      v11 = (interface + 128);
      goto LABEL_23;
    }

    if (((0x6895DuLL >> v8) & 1) == 0)
    {
      v11 = configurations[5 * v8 + 3];
LABEL_23:
      *(Private + 136) = *v11;
      v13 = *(interface + 14);
      if (v13)
      {
        *(Private + 112) = CFStringCreateCopy(0, v13);
      }

      v14 = *(interface + 15);
      if (v14)
      {
        *(Private + 120) = CFStringCreateCopy(0, v14);
      }

      goto LABEL_32;
    }

    goto LABEL_52;
  }

  if (!CFEqual(interfaceType, @"L2TP"))
  {
    if (CFEqual(interfaceType, @"PPTP"))
    {
      if (v8 == 18)
      {
        *(Private + 16) = @"PPTP";
        *(Private + 48) = @"pptp";
        v12 = &kSCEntNetPPTP;
        goto LABEL_30;
      }
    }

    else if (CFEqual(interfaceType, @"6to4"))
    {
      if (v8 == 18)
      {
        *(Private + 16) = @"6to4";
        *(Private + 48) = @"6to4";
        *(Private + 128) = @"6to4";
        *(Private + 112) = CFRetain(@"stf0");
        goto LABEL_32;
      }
    }

    else if (CFEqual(interfaceType, @"IPSec"))
    {
      if (v8 == 18)
      {
        *(Private + 16) = @"IPSec";
        *(Private + 48) = @"ipsec";
        v12 = &kSCValNetInterfaceTypeIPSec;
        goto LABEL_30;
      }
    }

    else if (CFEqual(interfaceType, @"VPN"))
    {
      if (v8 == -1)
      {
        *(Private + 16) = @"VPN";
        *(Private + 48) = @"vpn";
        *(Private + 56) = CFRetain(*(interface + 16));
        *(Private + 128) = @"VPN";
        v21 = *(interface + 16);
        *(Private + 136) = v21;
        v22 = *(interface + 14);
        if (v22)
        {
          *(Private + 112) = CFStringCreateCopy(0, v22);
          v21 = *(Private + 136);
        }

        if (v21)
        {
          if (CFEqual(v21, @"com.cisco.anyconnect.applevpn.plugin"))
          {
            v23 = @"com.cisco.Cisco-AnyConnect.vpnplugin";
          }

          else if (CFEqual(*(Private + 136), @"net.juniper.sslvpn"))
          {
            v23 = @"net.juniper.Junos-Pulse.vpnplugin";
          }

          else
          {
            v23 = v21;
          }

          ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v23, @".");
          Count = CFArrayGetCount(ArrayBySeparatingStrings);
          if (Count >= 4)
          {
            v26 = Count;
            ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, Count - 1);
            if (CFEqual(ValueAtIndex, @"vpnplugin"))
            {
              v28 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v26 - 2);
              MutableCopy = CFStringCreateMutableCopy(0, 0, v28);
              v30.length = CFStringGetLength(MutableCopy);
              v30.location = 0;
              CFStringFindAndReplace(MutableCopy, @"-", @" ", v30, 0);
              *(Private + 40) = MutableCopy;
            }
          }

          CFRelease(ArrayBySeparatingStrings);
        }

        goto LABEL_32;
      }
    }

    else
    {
      if (CFStringFind(interfaceType, @".", 0).location != -1)
      {
        pthread_mutex_lock(&lock_1);
        Mutable = vendor_interface_types;
        if (!vendor_interface_types)
        {
          Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
          vendor_interface_types = Mutable;
        }

        CFSetAddValue(Mutable, interfaceType);
        *(Private + 16) = CFSetGetValue(vendor_interface_types, interfaceType);
        pthread_mutex_unlock(&lock_1);
        v15 = *(Private + 16);
        goto LABEL_31;
      }

      if (CFEqual(interfaceType, @"AppleVPN"))
      {
        *(Private + 16) = @"AppleVPN";
        *(Private + 128) = @"AppleVPN";
        goto LABEL_32;
      }
    }

LABEL_52:
    CFRelease(Private);
    goto LABEL_7;
  }

  if (v8 != 18)
  {
    goto LABEL_52;
  }

  *(Private + 16) = @"L2TP";
  *(Private + 48) = @"l2tp";
  v12 = &kSCEntNetL2TP;
LABEL_30:
  v15 = *v12;
LABEL_31:
  *(Private + 128) = v15;
LABEL_32:
  *(Private + 192) = *(interface + 96);
  *(Private + 240) = *(interface + 240);
  v16 = *(interface + 28);
  if (v16)
  {
    *(Private + 224) = CFDictionaryCreateMutableCopy(0, 0, v16);
  }

  v17 = *(Private + 136);
  if (v17 && CFEqual(v17, @"PPPoE"))
  {
    v18 = *(interface + 2);
    if (v18 && CFEqual(v18, @"IEEE80211"))
    {
      v19 = 6;
    }

    else
    {
      v19 = 5;
    }
  }

  else
  {
    v19 = *(interface + 78);
  }

  *(Private + 312) = v19;
  return Private;
}

const __SCNetworkInterface *findBridgeInterface(const __SCPreferences *a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = SCBridgeInterfaceCopyAll(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Interface = findInterface(v3, a2);
  CFRelease(v4);
  return Interface;
}

const __SCNetworkInterface *findVLANInterface(const __SCPreferences *a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = SCVLANInterfaceCopyAll(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Interface = findInterface(v3, a2);
  CFRelease(v4);
  return Interface;
}

CFStringRef __SCNetworkInterfaceGetNonLocalizedDisplayName(CFStringRef *cf)
{
  if (__SCNetworkInterfaceInitialize_initialized == -1)
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
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_7;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    goto LABEL_7;
  }

  result = cf[4];
  if (!result)
  {
    result = copy_display_name(cf, 0, 0);
    cf[4] = result;
  }

  return result;
}

CFTypeRef __SCNetworkInterfaceSetService(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 80) = 0;
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 96) = 0;
  }

  v6 = *(a2 + 32);
  if (v6)
  {
    *(a1 + 80) = CFRetain(v6);
  }

  result = *(a2 + 16);
  if (result)
  {
    result = CFRetain(result);
    *(a1 + 96) = result;
  }

  return result;
}

__CFArray *__SCNetworkInterfaceCopyAll_IONetworkInterface(int a1)
{
  v2 = IOServiceMatching("IONetworkInterface");
  MatchingInterfaces = findMatchingInterfaces(v2, processNetworkInterface, @"HiddenInterface", 0, a1);
  CFRelease(v2);
  return MatchingInterfaces;
}

const __CFArray *_SCNetworkInterfaceCopyAllWithPreferences(const __SCPreferences *Private_cold_1)
{
  keys[2] = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized != -1)
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
  }

  if (__wait_for_IOKit_to_quiesce_iokit_quiet != -1)
  {
    _SCNetworkInterfaceCopyAllWithPreferences_cold_2();
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v3 = __SCNetworkInterfaceCopyAll_IONetworkInterface(0);
  if (v3)
  {
    v4 = v3;
    add_interfaces(Mutable, v3);
    CFRelease(v4);
  }

  keys[0] = @"IOProviderClass";
  keys[1] = @"IOSerialBSDClientType";
  values[0] = @"IOSerialBSDClient";
  values[1] = @"IOSerialStream";
  v5 = CFDictionaryCreate(0, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  MatchingInterfaces = findMatchingInterfaces(v5, processSerialInterface, @"HiddenPort", 0, 0);
  CFRelease(v5);
  if (MatchingInterfaces)
  {
    add_interfaces(Mutable, MatchingInterfaces);
    CFRelease(MatchingInterfaces);
  }

  v7 = Private_cold_1;
  if (Private_cold_1 || (v7 = SCPreferencesCreate(0, @"SCNetworkInterfaceCopyAll", 0)) != 0)
  {
    v8 = SCBridgeInterfaceCopyAll(v7);
    if (v8)
    {
      v9 = v8;
      add_interfaces(Mutable, v8);
      CFRelease(v9);
    }

    v10 = SCVLANInterfaceCopyAll(v7);
    if (v10)
    {
      v11 = v10;
      add_interfaces(Mutable, v10);
      CFRelease(v11);
    }

    if (!Private_cold_1)
    {
      CFRelease(v7);
    }
  }

  Count = CFArrayGetCount(Mutable);
  if (Count >= 2)
  {
    v16.length = Count;
    v16.location = 0;
    CFArraySortValues(Mutable, v16, _SCNetworkInterfaceCompare, 0);
  }

  return Mutable;
}

void add_interfaces(__CFArray *a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (SCNetworkInterfaceGetBSDName(ValueAtIndex))
      {
        CFArrayAppendValue(a1, ValueAtIndex);
      }
    }
  }
}

CFArrayRef SCNetworkInterfaceCopyAll(void)
{

  return _SCNetworkInterfaceCopyAllWithPreferences(0);
}

CFArrayRef SCNetworkInterfaceGetSupportedInterfaceTypes(SCNetworkInterfaceRef interface)
{
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!interface)
    {
LABEL_21:
      _SCErrorSet(1002);
      return 0;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!interface)
    {
      goto LABEL_21;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(interface) != v2)
  {
    goto LABEL_21;
  }

  if (!*(interface + 18))
  {
    v4 = 0;
    v5 = *(interface + 2);
    v6 = configurations;
    while (!CFEqual(v5, **v6))
    {
      --v4;
      v6 += 5;
      if (v4 == -19)
      {
        v7 = SCNetworkInterfaceGetInterface(interface);
        if (v7 && CFEqual(v7, &__kSCNetworkInterfaceIPv4))
        {
          Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
          *(interface + 18) = Mutable;
          v9 = @"VPN";
LABEL_19:
          CFArrayAppendValue(Mutable, v9);
          return *(interface + 18);
        }

        return *(interface + 18);
      }
    }

    if (((0x2C95DuLL >> -v4) & 1) == 0)
    {
      v10 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      *(interface + 18) = v10;
      if (v4 == -18)
      {
        CFArrayAppendValue(v10, @"6to4");
        CFArrayAppendValue(*(interface + 18), @"L2TP");
      }

      if (((0x6C95DuLL >> -v4) & 1) == 0)
      {
        CFArrayAppendValue(*(interface + 18), @"PPP");
      }

      if (v4 == -18)
      {
        Mutable = *(interface + 18);
        v9 = @"IPSec";
        goto LABEL_19;
      }
    }
  }

  return *(interface + 18);
}

CFArrayRef SCNetworkInterfaceGetSupportedProtocolTypes(SCNetworkInterfaceRef interface)
{
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!interface)
    {
LABEL_18:
      _SCErrorSet(1002);
      return 0;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!interface)
    {
      goto LABEL_18;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(interface) != v2)
  {
    goto LABEL_18;
  }

  if (!*(interface + 19))
  {
    v3 = 0;
    v4 = *(interface + 2);
    for (i = configurations; !CFEqual(v4, **i); i += 5)
    {
      if (++v3 == 19)
      {
        return *(interface + 19);
      }
    }

    if (((0x53612uLL >> v3) & 1) == 0)
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      *(interface + 19) = Mutable;
      if (((0x73613uLL >> v3) & 1) == 0)
      {
        CFArrayAppendValue(Mutable, @"DNS");
        Mutable = *(interface + 19);
      }

      if (((0x53613uLL >> v3) & 1) == 0)
      {
        CFArrayAppendValue(Mutable, @"IPv4");
        Mutable = *(interface + 19);
      }

      CFArrayAppendValue(Mutable, @"IPv6");
      if (((0x73613uLL >> v3) & 1) == 0)
      {
        CFArrayAppendValue(*(interface + 19), @"Proxies");
      }
    }
  }

  return *(interface + 19);
}

CFDictionaryRef __SCNetworkInterfaceGetDefaultConfiguration(const __SCNetworkSet *a1, uint64_t a2)
{
  if (__SCNetworkInterfaceInitialize_initialized != -1)
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
  }

  DefaultConfigurationType = __SCNetworkInterfaceGetDefaultConfigurationType(a2);
  Value = 0;
  if (a1)
  {
    v6 = DefaultConfigurationType;
    if (DefaultConfigurationType)
    {
      SetID = SCNetworkSetGetSetID(a1);
      SetNetworkInterfaceEntity = SCPreferencesPathKeyCreateSetNetworkInterfaceEntity(0, SetID, *(a2 + 112), v6);
      if (SetNetworkInterfaceEntity)
      {
        v9 = SetNetworkInterfaceEntity;
        Value = __SCNetworkConfigurationGetValue(*(a2 + 80), SetNetworkInterfaceEntity);
        CFRelease(v9);
        if (Value)
        {
          TypeID = CFDictionaryGetTypeID();
LABEL_8:
          if (CFGetTypeID(Value) == TypeID && !CFDictionaryGetCount(Value))
          {
            return 0;
          }

          return Value;
        }

        v11 = *(a2 + 104);
        if (v11)
        {
          v12 = CFDictionaryGetValue(v11, v6);
          if (v12 != *MEMORY[0x1E695E738])
          {
            Value = v12;
            TypeID = CFDictionaryGetTypeID();
            if (!Value)
            {
              return Value;
            }

            goto LABEL_8;
          }
        }

        CFDictionaryGetTypeID();
      }

      return 0;
    }
  }

  return Value;
}

CFDictionaryRef SCNetworkInterfaceGetConfiguration(SCNetworkInterfaceRef interface)
{
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!interface)
    {
LABEL_11:
      v7 = 1002;
LABEL_12:
      _SCErrorSet(v7);
      return 0;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!interface)
    {
      goto LABEL_11;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(interface) != v2)
  {
    goto LABEL_11;
  }

  DefaultConfigurationType = __SCNetworkInterfaceGetDefaultConfigurationType(interface);
  if (!DefaultConfigurationType)
  {
    return 0;
  }

  v4 = DefaultConfigurationType;
  Configuration = __SCNetworkInterfaceGetConfiguration(interface, DefaultConfigurationType);
  if (!Configuration)
  {
    v7 = CFEqual(v4, @"AirPort");
    if (v7)
    {
      NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, *(interface + 12), @"AirPort");
      Value = __SCNetworkConfigurationGetValue(*(interface + 10), NetworkServiceEntity);
      CFRelease(NetworkServiceEntity);
      if (Value)
      {
        return Value;
      }

      v7 = 0;
    }

    goto LABEL_12;
  }

  return Configuration;
}

const void *__SCNetworkInterfaceGetConfiguration(uint64_t a1, const void *a2)
{
  if (__SCNetworkInterfaceInitialize_initialized != -1)
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
  }

  v4 = copyConfigurationPaths(a1, a2);
  if (v4)
  {
    v5 = v4;
    ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
    Value = __SCNetworkConfigurationGetValue(*(a1 + 80), ValueAtIndex);
    CFRelease(v5);
  }

  else
  {
    v9 = *(a1 + 104);
    if (!v9 || (Value = CFDictionaryGetValue(v9, a2), Value == *MEMORY[0x1E695E738]))
    {
      CFDictionaryGetTypeID();
      return 0;
    }
  }

  TypeID = CFDictionaryGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID && !CFDictionaryGetCount(Value))
  {
    return 0;
  }

  return Value;
}

CFDictionaryRef SCNetworkInterfaceGetExtendedConfiguration(SCNetworkInterfaceRef interface, CFStringRef extendedType)
{
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!interface)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!interface)
    {
      goto LABEL_8;
    }
  }

  v4 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(interface) == v4 && __SCNetworkInterfaceIsValidExtendedConfigurationType(interface, extendedType, 1))
  {
    result = __SCNetworkInterfaceGetConfiguration(interface, extendedType);
    if (result)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_8:
  LODWORD(result) = 1002;
LABEL_9:
  _SCErrorSet(result);
  return 0;
}

CFStringRef SCNetworkInterfaceGetHardwareAddressString(SCNetworkInterfaceRef interface)
{
  v12 = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!interface)
    {
LABEL_16:
      _SCErrorSet(1002);
      return 0;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!interface)
    {
      goto LABEL_16;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(interface) != v2)
  {
    goto LABEL_16;
  }

  v3 = *(interface + 20);
  if (v3 && !*(interface + 21))
  {
    BytePtr = CFDataGetBytePtr(v3);
    Length = CFDataGetLength(*(interface + 20));
    v6 = 3 * Length;
    if ((3 * Length) < 0x19)
    {
      v7 = v11;
    }

    else
    {
      v7 = MEMORY[0x1B26F3AA0](0, v6, 1217767894, 0);
    }

    if (Length)
    {
      v8 = v7;
      do
      {
        v9 = *BytePtr++;
        v8 += snprintf(v8, v6, "%2.2x:", v9);
        v6 -= 3;
      }

      while (v6);
    }

    *(interface + 21) = CFStringCreateWithCString(0, v7, 0x8000100u);
    if (v7 != v11)
    {
      CFAllocatorDeallocate(0, v7);
    }
  }

  return *(interface + 21);
}

CFStringRef __SCNetworkInterfaceCopyOldLocalizedDisplayName(CFTypeRef cf, uint64_t a2)
{
  if (__SCNetworkInterfaceInitialize_initialized == -1)
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
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_8;
    }
  }

  v4 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) != v4)
  {
    goto LABEL_8;
  }

  return copy_display_name(cf, 1, a2);
}

CFStringRef copy_display_name(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  Mutable = CFStringCreateMutable(0, 0);
  if (a1)
  {
    while (1)
    {
      v7 = *(a1 + 72);
      if (v7)
      {
        v8 = v7 == &__kSCNetworkInterfaceIPv4;
      }

      else
      {
        v8 = 1;
      }

      if (v8 || CFEqual(*(a1 + 16), @"VPN"))
      {
        v9 = 0;
      }

      else
      {
        v9 = *(a1 + 72);
      }

      if (!bundle)
      {
        goto LABEL_27;
      }

      v10 = *(a1 + 48);
      if (!v10)
      {
        goto LABEL_27;
      }

      if (a3)
      {
        v10 = CFStringCreateWithFormat(0, 0, @"%@-%@", a3, v10);
      }

      else
      {
        CFRetain(*(a1 + 48));
      }

      v11 = copy_interface_string(bundle, v10, v4);
      CFRelease(v10);
      if (v11)
      {
        if (v4)
        {
          localizeNumberString((a1 + 56));
          localizeNumberString((a1 + 64));
        }

        v12 = *(a1 + 56);
        if (v12)
        {
          if (*(a1 + 64))
          {
            v21 = *(a1 + 64);
          }

          CFStringAppendFormat(Mutable, 0, v11, v12, v21);
        }

        else
        {
          CFStringAppend(Mutable, v11);
        }

        CFRelease(v11);
        if (!v9)
        {
          break;
        }
      }

      else
      {
LABEL_27:
        if (*(a1 + 80))
        {
          v13 = *(a1 + 96);
          if (v13)
          {
            if (!v9)
            {
              NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, v13, @"Interface");
              Value = SCPreferencesPathGetValue(*(a1 + 80), NetworkServiceEntity);
              CFRelease(NetworkServiceEntity);
              TypeID = CFDictionaryGetTypeID();
              if (Value)
              {
                if (CFGetTypeID(Value) == TypeID)
                {
                  v17 = CFDictionaryGetValue(Value, @"UserDefinedName");
                  v18 = CFStringGetTypeID();
                  if (v17)
                  {
                    if (CFGetTypeID(v17) == v18)
                    {
                      CFStringAppend(Mutable, v17);
                      break;
                    }
                  }
                }
              }
            }
          }
        }

        CFStringAppend(Mutable, *(a1 + 16));
        if (*(a1 + 112) && !v9)
        {
          CFStringAppendFormat(Mutable, 0, @" (%@)", *(a1 + 112));
          break;
        }

        if (!v9)
        {
          break;
        }
      }

      CFStringAppend(Mutable, @" --> ");
      a1 = v9;
    }
  }

  Copy = CFStringCreateCopy(0, Mutable);
  CFRelease(Mutable);
  return Copy;
}

CFStringRef __SCNetworkInterfaceCopyOldNonLocalizedDisplayName(CFTypeRef cf, uint64_t a2)
{
  if (__SCNetworkInterfaceInitialize_initialized == -1)
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
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_8;
    }
  }

  v4 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) != v4)
  {
    goto LABEL_8;
  }

  return copy_display_name(cf, 0, a2);
}

uint64_t __SCNetworkInterfaceGetUserDefinedName(void *cf)
{
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
    if (!cf)
    {
      return 0;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) == v2)
  {
    return cf[4];
  }

  return 0;
}

const void *__SCNetworkInterfaceGetTemplateOverrides(uint64_t a1, const void *a2)
{
  v2 = *(a1 + 224);
  if (!v2)
  {
    return 0;
  }

  return CFDictionaryGetValue(v2, a2);
}

CFTypeID SCNetworkInterfaceGetTypeID(void)
{
  if (__SCNetworkInterfaceInitialize_initialized != -1)
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
  }

  return __kSCNetworkInterfaceTypeID;
}

uint64_t __SCNetworkInterfaceSetDefaultConfiguration(const __SCNetworkSet *a1, uint64_t a2, __CFString *a3, const void *a4, int a5)
{
  DefaultConfigurationType = a3;
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (a3)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (DefaultConfigurationType)
    {
      goto LABEL_4;
    }
  }

  DefaultConfigurationType = __SCNetworkInterfaceGetDefaultConfigurationType(a2);
  if (!DefaultConfigurationType)
  {
    return 0;
  }

LABEL_4:
  TypeID = CFDictionaryGetTypeID();
  if (a4 && CFGetTypeID(a4) == TypeID && !CFDictionaryGetCount(a4))
  {
    a4 = 0;
  }

  if (!a1)
  {
    return 0;
  }

  SetID = SCNetworkSetGetSetID(a1);
  SetNetworkInterfaceEntity = SCPreferencesPathKeyCreateSetNetworkInterfaceEntity(0, SetID, *(a2 + 112), DefaultConfigurationType);
  if (SetNetworkInterfaceEntity)
  {
    v13 = SetNetworkInterfaceEntity;
    v14 = __SCNetworkConfigurationSetValue(*(a2 + 80), SetNetworkInterfaceEntity, a4, 0);
    CFRelease(v13);
    if (v14)
    {
      v15 = *(a2 + 104);
      if (v15)
      {
        CFDictionaryRemoveValue(v15, DefaultConfigurationType);
        if (!CFDictionaryGetCount(*(a2 + 104)))
        {
          CFRelease(*(a2 + 104));
          *(a2 + 104) = 0;
        }
      }
    }

    return v14;
  }

  if (!a5)
  {
    _SCErrorSet(1004);
    return 0;
  }

  if (!a4)
  {
    a4 = *MEMORY[0x1E695E738];
  }

  Mutable = *(a2 + 104);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(a2 + 104) = Mutable;
  }

  CFDictionarySetValue(Mutable, DefaultConfigurationType, a4);
  return 1;
}

uint64_t __SCNetworkInterfaceSetConfiguration(uint64_t a1, __CFString *a2, const void *a3, uint64_t a4)
{
  DefaultConfigurationType = a2;
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (a2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (DefaultConfigurationType)
    {
      goto LABEL_4;
    }
  }

  DefaultConfigurationType = __SCNetworkInterfaceGetDefaultConfigurationType(a1);
  if (!DefaultConfigurationType)
  {
    return 0;
  }

LABEL_4:
  TypeID = CFDictionaryGetTypeID();
  if (a3 && CFGetTypeID(a3) == TypeID && !CFDictionaryGetCount(a3))
  {
    a3 = 0;
  }

  v9 = copyConfigurationPaths(a1, DefaultConfigurationType);
  if (v9)
  {
    v10 = v9;
    Count = CFArrayGetCount(v9);
    if (Count < 1)
    {
      a4 = 0;
    }

    else
    {
      v12 = Count;
      v13 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, v13);
        a4 = __SCNetworkConfigurationSetValue(*(a1 + 80), ValueAtIndex, a3, 0);
        if (!a4)
        {
          break;
        }

        if (v12 == ++v13)
        {
          v15 = *(a1 + 104);
          if (v15)
          {
            CFDictionaryRemoveValue(v15, DefaultConfigurationType);
            if (!CFDictionaryGetCount(*(a1 + 104)))
            {
              CFRelease(*(a1 + 104));
              *(a1 + 104) = 0;
            }
          }

          break;
        }
      }
    }

    CFRelease(v10);
  }

  else if (a4)
  {
    if (!a3)
    {
      a3 = *MEMORY[0x1E695E738];
    }

    Mutable = *(a1 + 104);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(a1 + 104) = Mutable;
    }

    CFDictionarySetValue(Mutable, DefaultConfigurationType, a3);
    return 1;
  }

  else
  {
    _SCErrorSet(1004);
  }

  return a4;
}

__CFArray *copyConfigurationPaths(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  v6 = configurations;
  while (!CFEqual(v5, **v6))
  {
    ++v4;
    v6 += 5;
    if (v4 == 19)
    {
      v7 = *(a1 + 96);
      goto LABEL_10;
    }
  }

  v7 = *(a1 + 96);
  if ((0x5BF13uLL >> v4))
  {
LABEL_10:
    NetworkServiceEntity = SCPreferencesPathKeyCreateNetworkServiceEntity(0, v7, a2);
    v11[0] = NetworkServiceEntity;
    v10 = CFArrayCreate(0, v11, 1, MEMORY[0x1E695E9C0]);
    CFRelease(NetworkServiceEntity);
    return v10;
  }

  if (!v7)
  {
    return 0;
  }

  return copyPerInterfaceConfigurationPaths(a1, a2);
}

Boolean SCNetworkInterfaceSetConfiguration(SCNetworkInterfaceRef interface, CFDictionaryRef config)
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!interface)
    {
LABEL_11:
      _SCErrorSet(1002);
      goto LABEL_12;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!interface)
    {
      goto LABEL_11;
    }
  }

  v4 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(interface) != v4)
  {
    goto LABEL_11;
  }

  DefaultConfigurationType = __SCNetworkInterfaceGetDefaultConfigurationType(interface);
  if (!DefaultConfigurationType)
  {
LABEL_12:
    LOBYTE(v6) = 0;
    return v6;
  }

  v6 = __SCNetworkInterfaceSetConfiguration(interface, DefaultConfigurationType, config, 0);
  if (v6)
  {
    v7 = __log_SCNetworkConfiguration();
    v8 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v7, v8))
    {
      v9 = _os_log_pack_size();
      v15 = v20 - ((MEMORY[0x1EEE9AC00](v9, v10, v11, v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = __error();
      v17 = _os_log_pack_fill(v15, v9, *v16, &dword_1AD2AD000, "SCNetworkInterfaceSetConfiguration(): %@ -> %@");
      v18 = @"NULL";
      if (config)
      {
        v18 = config;
      }

      *v17 = 138412546;
      *(v17 + 4) = interface;
      *(v17 + 12) = 2112;
      *(v17 + 14) = v18;
      __SC_log_send(7, v7, v8, v15);
    }
  }

  return v6;
}

Boolean SCNetworkInterfaceSetExtendedConfiguration(SCNetworkInterfaceRef interface, CFStringRef extendedType, CFDictionaryRef config)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!interface)
    {
LABEL_11:
      _SCErrorSet(1002);
      goto LABEL_12;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!interface)
    {
      goto LABEL_11;
    }
  }

  v6 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(interface) != v6)
  {
    goto LABEL_11;
  }

  if (!__SCNetworkInterfaceIsValidExtendedConfigurationType(interface, extendedType, 1))
  {
LABEL_12:
    LOBYTE(v7) = 0;
    return v7;
  }

  v7 = __SCNetworkInterfaceSetConfiguration(interface, extendedType, config, 0);
  if (v7)
  {
    v8 = __log_SCNetworkConfiguration();
    v9 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v8, v9))
    {
      v10 = _os_log_pack_size();
      v16 = v21 - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = __error();
      v18 = _os_log_pack_fill(v16, v10, *v17, &dword_1AD2AD000, "SCNetworkInterfaceSetExtendedConfiguration(): %@ -> %@");
      v19 = @"NULL";
      if (config)
      {
        v19 = config;
      }

      *v18 = 138412546;
      *(v18 + 4) = interface;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v19;
      __SC_log_send(7, v8, v9, v16);
    }
  }

  return v7;
}

uint64_t _SCNetworkInterfaceForceConfigurationRefresh(const __CFString *a1)
{
  TypeID = CFStringGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, @"State:", a1, @"RefreshConfiguration");
    v4 = SCDynamicStoreNotifyValue(0, NetworkInterfaceEntity);
    CFRelease(NetworkInterfaceEntity);
    return v4;
  }

  else
  {
    _SCErrorSet(1002);
    return 0;
  }
}

Boolean SCNetworkInterfaceForceConfigurationRefresh(SCNetworkInterfaceRef interface)
{
  cf[1] = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized != -1)
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (interface)
    {
      goto LABEL_3;
    }

LABEL_22:
    v9 = 1002;
    goto LABEL_23;
  }

  if (!interface)
  {
    goto LABEL_22;
  }

LABEL_3:
  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(interface) != v2)
  {
    goto LABEL_22;
  }

  BSDName = SCNetworkInterfaceGetBSDName(interface);
  if (!BSDName)
  {
    goto LABEL_22;
  }

  v4 = BSDName;
  v5 = *(interface + 10);
  if (v5 && *(v5 + 312))
  {
    cf[0] = 0;
    v11 = 0;
    if (*(v5 + 320) || (helper = __SCPreferencesCreate_helper(v5)) != 0)
    {
      v7 = (v5 + 320);
      if (!_SCSerializeString(v4, cf, 0, 0))
      {
        goto LABEL_27;
      }

      v11 = 0;
      v8 = _SCHelperExec(*v7, 200, cf[0], &v11, 0);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      if (v8)
      {
        v9 = v11;
        if (!v11)
        {
          LOBYTE(helper) = 1;
          return helper;
        }
      }

      else
      {
LABEL_27:
        if (*v7)
        {
          _SCHelperClose(v7);
        }

        v9 = 1003;
        v11 = 1003;
      }

LABEL_23:
      _SCErrorSet(v9);
      LOBYTE(helper) = 0;
    }
  }

  else
  {

    LOBYTE(helper) = _SCNetworkInterfaceForceConfigurationRefresh(BSDName);
  }

  return helper;
}

uint64_t SCNetworkInterfaceCheckPassword(const void *a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0;
  *v23 = 0;
  if (!checkInterfacePassword(a1, a2, v23, &v22))
  {
    return 0;
  }

  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      Configuration = SCNetworkInterfaceGetConfiguration(a1);
      PasswordID = getPasswordID(Configuration, v22);
      v6 = *v23;
      v7 = &kSCValNetPPPAuthPasswordEncryptionKeychain;
      goto LABEL_19;
    }

    if (a2 != 2)
    {
      goto LABEL_22;
    }

    InterfaceType = SCNetworkInterfaceGetInterfaceType(a1);
    if (CFEqual(InterfaceType, @"PPP"))
    {
      ExtendedConfiguration = SCNetworkInterfaceGetExtendedConfiguration(a1, @"IPSec");
    }

    else
    {
      ExtendedConfiguration = SCNetworkInterfaceGetConfiguration(a1);
    }

    v14 = ExtendedConfiguration;
    v15 = copySharedSecretID(ExtendedConfiguration, v22);
    v16 = *v23;
    v17 = @"SharedSecret";
    v18 = @"SharedSecretEncryption";
    v19 = &kSCValNetIPSecSharedSecretEncryptionKeychain;
    goto LABEL_27;
  }

  if (a2 != 3)
  {
    if (a2 != 4)
    {
      if (a2 == 5)
      {
        Configuration = SCNetworkInterfaceGetConfiguration(a1);
        PasswordID = getPasswordID(Configuration, v22);
        v6 = *v23;
        v7 = kSCValNetVPNAuthPasswordEncryptionKeychain;
LABEL_19:
        v20 = *v7;

        return __extract_password(v6, Configuration, @"AuthPassword", @"AuthPasswordEncryption", v20, PasswordID, 0);
      }

LABEL_22:
      _SCErrorSet(1002);
      return 0;
    }

    v14 = SCNetworkInterfaceGetConfiguration(a1);
    v15 = copyXAuthID(v14, v22);
    v16 = *v23;
    v17 = @"XAuthPassword";
    v18 = @"XAuthPasswordEncryption";
    v19 = &kSCValNetIPSecXAuthPasswordEncryptionKeychain;
LABEL_27:
    password = __extract_password(v16, v14, v17, v18, *v19, v15, 0);
    CFRelease(v15);
    return password;
  }

  v10 = SCNetworkInterfaceGetExtendedConfiguration(a1, @"EAPOL");
  if (!v10)
  {
    CFStringGetTypeID();
    return 0;
  }

  Value = CFDictionaryGetValue(v10, @"UserPasswordKeychainItemID");
  TypeID = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  return _SCPreferencesSystemKeychainPasswordItemExists();
}

uint64_t checkInterfacePassword(CFTypeRef cf, int a2, void *a3, void *a4)
{
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!cf)
    {
      goto LABEL_21;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_21;
    }
  }

  v8 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) != v8)
  {
    goto LABEL_21;
  }

  v9 = *(cf + 12);
  *a4 = v9;
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = *(cf + 10);
  *a3 = v10;
  if (!v10)
  {
    goto LABEL_21;
  }

  result = 1;
  if (a2 > 3)
  {
    if (a2 == 4)
    {
      InterfaceType = SCNetworkInterfaceGetInterfaceType(cf);
      v15 = @"IPSec";
    }

    else
    {
      if (a2 != 5)
      {
        return result;
      }

      InterfaceType = SCNetworkInterfaceGetInterfaceType(cf);
      v15 = @"VPN";
    }
  }

  else if (a2 == 1)
  {
    InterfaceType = SCNetworkInterfaceGetInterfaceType(cf);
    v15 = @"PPP";
  }

  else
  {
    if (a2 != 2)
    {
      return result;
    }

    v12 = SCNetworkInterfaceGetInterfaceType(cf);
    if (CFEqual(v12, @"PPP"))
    {
      Interface = SCNetworkInterfaceGetInterface(cf);
      if (!Interface)
      {
        goto LABEL_21;
      }

      InterfaceType = SCNetworkInterfaceGetInterfaceType(Interface);
      v15 = @"L2TP";
    }

    else
    {
      v15 = @"IPSec";
      InterfaceType = v12;
    }
  }

  if (CFEqual(InterfaceType, v15))
  {
    return 1;
  }

LABEL_21:
  _SCErrorSet(1002);
  return 0;
}

const __CFDictionary *getPasswordID(const __CFDictionary *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    Value = CFDictionaryGetValue(result, @"AuthPasswordEncryption");
    TypeID = CFStringGetTypeID();
    if (Value && CFGetTypeID(Value) == TypeID && CFEqual(Value, @"Keychain"))
    {
      result = CFDictionaryGetValue(v3, @"AuthPassword");
    }

    else
    {
      result = 0;
    }
  }

  if (!result)
  {
    return a2;
  }

  return result;
}

__CFString *copySharedSecretID(CFDictionaryRef theDict, uint64_t a2)
{
  if (theDict && (Value = CFDictionaryGetValue(theDict, @"SharedSecretEncryption"), TypeID = CFStringGetTypeID(), Value) && CFGetTypeID(Value) == TypeID && CFEqual(Value, @"Keychain") && (v6 = CFDictionaryGetValue(theDict, @"SharedSecret")) != 0)
  {
    MutableCopy = v6;
    CFRetain(v6);
  }

  else
  {
    PasswordID = getPasswordID(theDict, a2);
    MutableCopy = CFStringCreateMutableCopy(0, 0, PasswordID);
    CFStringAppend(MutableCopy, @".SS");
  }

  return MutableCopy;
}

__CFString *copyXAuthID(CFDictionaryRef theDict, uint64_t a2)
{
  if (theDict && (Value = CFDictionaryGetValue(theDict, @"XAuthPasswordEncryption"), TypeID = CFStringGetTypeID(), Value) && CFGetTypeID(Value) == TypeID && CFEqual(Value, @"Keychain") && (v6 = CFDictionaryGetValue(theDict, @"XAuthPassword")) != 0)
  {
    MutableCopy = v6;
    CFRetain(v6);
  }

  else
  {
    PasswordID = getPasswordID(theDict, a2);
    MutableCopy = CFStringCreateMutableCopy(0, 0, PasswordID);
    CFStringAppend(MutableCopy, @".XAUTH");
  }

  return MutableCopy;
}

uint64_t SCNetworkInterfaceCopyPassword(const void *a1, int a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  *v22 = 0;
  v23[0] = 0;
  v21 = 0;
  if (!checkInterfacePassword(a1, a2, v22, &v21))
  {
    return 0;
  }

  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      Configuration = SCNetworkInterfaceGetConfiguration(a1);
      PasswordID = getPasswordID(Configuration, v21);
      v6 = *v22;
      v7 = &kSCValNetPPPAuthPasswordEncryptionKeychain;
      goto LABEL_17;
    }

    if (a2 != 2)
    {
      goto LABEL_18;
    }

    InterfaceType = SCNetworkInterfaceGetInterfaceType(a1);
    if (CFEqual(InterfaceType, @"PPP"))
    {
      ExtendedConfiguration = SCNetworkInterfaceGetExtendedConfiguration(a1, @"IPSec");
    }

    else
    {
      ExtendedConfiguration = SCNetworkInterfaceGetConfiguration(a1);
    }

    v13 = ExtendedConfiguration;
    v14 = copySharedSecretID(ExtendedConfiguration, v21);
    v15 = *v22;
    v16 = @"SharedSecret";
    v17 = @"SharedSecretEncryption";
    v18 = &kSCValNetIPSecSharedSecretEncryptionKeychain;
    goto LABEL_25;
  }

  if (a2 != 3)
  {
    if (a2 != 4)
    {
      if (a2 == 5)
      {
        Configuration = SCNetworkInterfaceGetConfiguration(a1);
        PasswordID = getPasswordID(Configuration, v21);
        v6 = *v22;
        v7 = kSCValNetVPNAuthPasswordEncryptionKeychain;
LABEL_17:
        __extract_password(v6, Configuration, @"AuthPassword", @"AuthPasswordEncryption", *v7, PasswordID, v23);
        return v23[0];
      }

LABEL_18:
      v19 = 1002;
LABEL_21:
      _SCErrorSet(v19);
      return 0;
    }

    v13 = SCNetworkInterfaceGetConfiguration(a1);
    v14 = copyXAuthID(v13, v21);
    v15 = *v22;
    v16 = @"XAuthPassword";
    v17 = @"XAuthPasswordEncryption";
    v18 = &kSCValNetIPSecXAuthPasswordEncryptionKeychain;
LABEL_25:
    __extract_password(v15, v13, v16, v17, *v18, v14, v23);
    CFRelease(v14);
    return v23[0];
  }

  v10 = SCNetworkInterfaceGetExtendedConfiguration(a1, @"EAPOL");
  if (!v10)
  {
    CFStringGetTypeID();
LABEL_20:
    v19 = 1001;
    goto LABEL_21;
  }

  Value = CFDictionaryGetValue(v10, @"UserPasswordKeychainItemID");
  TypeID = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    goto LABEL_20;
  }

  v23[0] = _SCPreferencesSystemKeychainPasswordItemCopy();
  return v23[0];
}

uint64_t SCNetworkInterfaceRemovePassword(const void *a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = 0;
  *v24 = 0;
  if (!checkInterfacePassword(a1, a2, v24, &v23))
  {
    return 0;
  }

  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      config = 0;
      Configuration = SCNetworkInterfaceGetConfiguration(a1);
      PasswordID = getPasswordID(Configuration, v23);
      v6 = *v24;
      v7 = &kSCValNetPPPAuthPasswordEncryptionKeychain;
LABEL_20:
      if (__remove_password(v6, Configuration, @"AuthPassword", @"AuthPasswordEncryption", *v7, PasswordID, &config))
      {
        v17 = SCNetworkInterfaceSetConfiguration(a1, config);
        v18 = config;
        if (!config)
        {
          return v17;
        }

        goto LABEL_37;
      }

      return 0;
    }

    if (a2 != 2)
    {
      goto LABEL_23;
    }

    config = 0;
    InterfaceType = SCNetworkInterfaceGetInterfaceType(a1);
    v9 = CFEqual(InterfaceType, @"PPP");
    if (v9)
    {
      ExtendedConfiguration = SCNetworkInterfaceGetExtendedConfiguration(a1, @"IPSec");
    }

    else
    {
      ExtendedConfiguration = SCNetworkInterfaceGetConfiguration(a1);
    }

    v20 = ExtendedConfiguration;
    v16 = copySharedSecretID(ExtendedConfiguration, v23);
    if (!__remove_password(*v24, v20, @"SharedSecret", @"SharedSecretEncryption", @"Keychain", v16, &config))
    {
LABEL_35:
      v17 = 0;
LABEL_36:
      v18 = v16;
LABEL_37:
      CFRelease(v18);
      return v17;
    }

    if (v9)
    {
      v21 = SCNetworkInterfaceSetExtendedConfiguration(a1, @"IPSec", config);
      goto LABEL_33;
    }

LABEL_32:
    v21 = SCNetworkInterfaceSetConfiguration(a1, config);
LABEL_33:
    v17 = v21;
    if (config)
    {
      CFRelease(config);
    }

    goto LABEL_36;
  }

  if (a2 != 3)
  {
    if (a2 != 4)
    {
      if (a2 == 5)
      {
        config = 0;
        Configuration = SCNetworkInterfaceGetConfiguration(a1);
        PasswordID = getPasswordID(Configuration, v23);
        v6 = *v24;
        v7 = kSCValNetVPNAuthPasswordEncryptionKeychain;
        goto LABEL_20;
      }

LABEL_23:
      v19 = 1002;
LABEL_26:
      _SCErrorSet(v19);
      return 0;
    }

    config = 0;
    v15 = SCNetworkInterfaceGetConfiguration(a1);
    v16 = copyXAuthID(v15, v23);
    if (!__remove_password(*v24, v15, @"XAuthPassword", @"XAuthPasswordEncryption", @"Keychain", v16, &config))
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v11 = SCNetworkInterfaceGetExtendedConfiguration(a1, @"EAPOL");
  if (!v11)
  {
    CFStringGetTypeID();
LABEL_25:
    v19 = 1001;
    goto LABEL_26;
  }

  Value = CFDictionaryGetValue(v11, @"UserPasswordKeychainItemID");
  TypeID = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    goto LABEL_25;
  }

  return _SCPreferencesSystemKeychainPasswordItemRemove();
}

uint64_t SCNetworkInterfaceSetPassword(const void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v55[1] = *MEMORY[0x1E69E9840];
  v54 = 0;
  v55[0] = 0;
  if (!checkInterfacePassword(a1, a2, v55, &v54))
  {
    return 0;
  }

  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      Configuration = SCNetworkInterfaceGetConfiguration(a1);
      v23 = v54;
      PasswordID = getPasswordID(Configuration, v54);
      if (Configuration && (CFDictionaryGetValue(Configuration, @"AuthName"), CFDictionaryGetValue(Configuration, @"UserDefinedName")))
      {
        Private = 0;
      }

      else
      {
        Private = __SCNetworkServiceCreatePrivate(0, v55[0], v23, a1);
        if (!SCNetworkServiceGetName(Private))
        {
          SCNetworkInterfaceGetLocalizedDisplayName(a1);
        }
      }

      if (bundle)
      {
        v27 = CFBundleCopyLocalizedString(bundle, @"KEYCHAIN_KIND_PPP_PASSWORD", @"PPP Password", 0);
      }

      else
      {
        v27 = 0;
      }

      if (_SCPreferencesSystemKeychainPasswordItemSet())
      {
        if (Configuration)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Configuration);
        }

        else
        {
          MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        v46 = MutableCopy;
        CFDictionarySetValue(MutableCopy, @"AuthPassword", PasswordID);
        v47 = &kSCValNetPPPAuthPasswordEncryptionKeychain;
        goto LABEL_97;
      }

LABEL_52:
      v25 = 0;
      if (!v27)
      {
LABEL_100:
        if (!Private)
        {
          return v25;
        }

        goto LABEL_111;
      }

LABEL_99:
      CFRelease(v27);
      goto LABEL_100;
    }

    if (a2 == 2)
    {
      InterfaceType = SCNetworkInterfaceGetInterfaceType(a1);
      v11 = CFEqual(InterfaceType, @"PPP");
      v12 = SCNetworkInterfaceGetConfiguration(a1);
      v13 = v12;
      if (v11)
      {
        ExtendedConfiguration = SCNetworkInterfaceGetExtendedConfiguration(a1, @"IPSec");
      }

      else
      {
        ExtendedConfiguration = v12;
        v13 = 0;
      }

      v31 = v54;
      v51 = copySharedSecretID(ExtendedConfiguration, v54);
      if (!ExtendedConfiguration)
      {
        goto LABEL_65;
      }

      value = 0;
      v53 = 0;
      if (CFDictionaryGetValueIfPresent(ExtendedConfiguration, @"LocalIdentifierType", &value))
      {
        if (CFEqual(value, @"KeyID"))
        {
          if (CFDictionaryGetValueIfPresent(ExtendedConfiguration, @"LocalIdentifier", &v53))
          {
            v32 = v53;
            CFStringGetTypeID();
            if (v32)
            {
              CFGetTypeID(v32);
            }
          }
        }
      }

      if (((v33 = ExtendedConfiguration, !v11) || (v33 = v13) != 0) && CFDictionaryGetValue(v33, @"UserDefinedName"))
      {
        v34 = 0;
      }

      else
      {
LABEL_65:
        v34 = __SCNetworkServiceCreatePrivate(0, v55[0], v31, a1);
        if (!SCNetworkServiceGetName(v34))
        {
          SCNetworkInterfaceGetLocalizedDisplayName(a1);
        }
      }

      if (bundle)
      {
        v35 = CFBundleCopyLocalizedString(bundle, @"KEYCHAIN_KIND_IPSEC_SHARED_SECRET", @"IPSec Shared Secret", 0);
      }

      else
      {
        v35 = 0;
      }

      Private = v51;
      if (_SCPreferencesSystemKeychainPasswordItemSet())
      {
        if (ExtendedConfiguration)
        {
          Mutable = CFDictionaryCreateMutableCopy(0, 0, ExtendedConfiguration);
        }

        else
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        v48 = Mutable;
        CFDictionarySetValue(Mutable, @"SharedSecret", v51);
        CFDictionarySetValue(v48, @"SharedSecretEncryption", @"Keychain");
        if (v11)
        {
          v49 = SCNetworkInterfaceSetExtendedConfiguration(a1, @"IPSec", v48);
        }

        else
        {
          v49 = SCNetworkInterfaceSetConfiguration(a1, v48);
        }

        v25 = v49;
        CFRelease(v48);
      }

      else
      {
        v25 = 0;
      }

      if (v35)
      {
        CFRelease(v35);
      }

      if (v34)
      {
        CFRelease(v34);
      }

LABEL_111:
      v43 = Private;
      goto LABEL_112;
    }

    goto LABEL_23;
  }

  if (a2 != 3)
  {
    if (a2 == 4)
    {
      v19 = SCNetworkInterfaceGetConfiguration(a1);
      v20 = v54;
      v21 = copyXAuthID(v19, v54);
      if (v19 && (CFDictionaryGetValue(v19, @"XAuthName"), CFDictionaryGetValue(v19, @"UserDefinedName")))
      {
        Private = 0;
      }

      else
      {
        Private = __SCNetworkServiceCreatePrivate(0, v55[0], v20, a1);
        if (!SCNetworkServiceGetName(Private))
        {
          SCNetworkInterfaceGetLocalizedDisplayName(a1);
        }
      }

      if (bundle)
      {
        v27 = CFBundleCopyLocalizedString(bundle, @"KEYCHAIN_KIND_IPSEC_XAUTH_PASSWORD", @"IPSec XAuth Password", 0);
      }

      else
      {
        v27 = 0;
      }

      if (_SCPreferencesSystemKeychainPasswordItemSet())
      {
        if (v19)
        {
          v28 = CFDictionaryCreateMutableCopy(0, 0, v19);
        }

        else
        {
          v28 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        v44 = v28;
        CFDictionarySetValue(v28, @"XAuthPassword", v21);
        CFDictionarySetValue(v44, @"XAuthPasswordEncryption", @"Keychain");
        v25 = SCNetworkInterfaceSetConfiguration(a1, v44);
        CFRelease(v44);
      }

      else
      {
        v25 = 0;
      }

      v45 = v21;
LABEL_98:
      CFRelease(v45);
      if (!v27)
      {
        goto LABEL_100;
      }

      goto LABEL_99;
    }

    if (a2 == 5)
    {
      v6 = SCNetworkInterfaceGetConfiguration(a1);
      v7 = v54;
      v8 = getPasswordID(v6, v54);
      if (v6 && (CFDictionaryGetValue(v6, @"AuthName"), CFDictionaryGetValue(v6, @"UserDefinedName")))
      {
        Private = 0;
      }

      else
      {
        Private = __SCNetworkServiceCreatePrivate(0, v55[0], v7, a1);
        if (!SCNetworkServiceGetName(Private))
        {
          SCNetworkInterfaceGetLocalizedDisplayName(a1);
        }
      }

      if (bundle)
      {
        v27 = CFBundleCopyLocalizedString(bundle, @"KEYCHAIN_KIND_VPN_PASSWORD", @"VPN Password", 0);
      }

      else
      {
        v27 = 0;
      }

      if (_SCPreferencesSystemKeychainPasswordItemSet())
      {
        if (v6)
        {
          v30 = CFDictionaryCreateMutableCopy(0, 0, v6);
        }

        else
        {
          v30 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        v46 = v30;
        CFDictionarySetValue(v30, @"AuthPassword", v8);
        v47 = kSCValNetVPNAuthPasswordEncryptionKeychain;
LABEL_97:
        CFDictionarySetValue(v46, @"AuthPasswordEncryption", *v47);
        v25 = SCNetworkInterfaceSetConfiguration(a1, v46);
        v45 = v46;
        goto LABEL_98;
      }

      goto LABEL_52;
    }

LABEL_23:
    _SCErrorSet(1002);
    return 0;
  }

  v15 = SCNetworkInterfaceGetExtendedConfiguration(a1, @"EAPOL");
  v16 = v15;
  if (v15 && (v17 = CFDictionaryGetValue(v15, @"UserPasswordKeychainItemID"), TypeID = CFStringGetTypeID(), v17) && CFGetTypeID(v17) == TypeID)
  {
    CFRetain(v17);
  }

  else
  {
    v26 = CFUUIDCreate(0);
    v17 = CFUUIDCreateString(0, v26);
    CFRelease(v26);
    if (!v16)
    {
      goto LABEL_74;
    }
  }

  CFDictionaryGetValue(v16, @"UserName");
LABEL_74:
  if (bundle)
  {
    LocalizedDisplayName = SCNetworkInterfaceGetLocalizedDisplayName(a1);
    if (LocalizedDisplayName)
    {
      v38 = CFBundleCopyLocalizedString(bundle, @"KEYCHAIN_DESCRIPTION_EAPOL_INTERFACE", @"Network Connection (%@)", 0);
      v39 = CFStringCreateWithFormat(0, 0, v38, LocalizedDisplayName);
      CFRelease(v38);
    }

    else
    {
      v39 = CFBundleCopyLocalizedString(bundle, @"KEYCHAIN_DESCRIPTION_EAPOL", @"Network Connection", 0);
    }

    v40 = CFBundleCopyLocalizedString(bundle, @"KEYCHAIN_KIND_EAPOL", @"802.1X Password", 0);
  }

  else
  {
    v40 = 0;
    v39 = 0;
  }

  if (_SCPreferencesSystemKeychainPasswordItemSet())
  {
    if (v16)
    {
      v41 = CFDictionaryCreateMutableCopy(0, 0, v16);
    }

    else
    {
      v41 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v42 = v41;
    CFDictionarySetValue(v41, @"UserPasswordKeychainItemID", v17);
    v25 = SCNetworkInterfaceSetExtendedConfiguration(a1, @"EAPOL", v42);
    CFRelease(v42);
  }

  else
  {
    v25 = 0;
  }

  CFRelease(v17);
  if (v39)
  {
    CFRelease(v39);
  }

  if (v40)
  {
    v43 = v40;
LABEL_112:
    CFRelease(v43);
  }

  return v25;
}

uint64_t SCNetworkInterfaceSetAdvisory(const __SCNetworkInterface *a1, unsigned int a2, const __CFString *a3)
{
  theString[1] = *MEMORY[0x1E69E9840];
  theString[0] = 0;
  IPMonitorControl = _SCNetworkInterfaceGetIPMonitorControl(a1, theString);
  if (!IPMonitorControl)
  {
    return 0;
  }

  v6 = theString[0];

  return IPMonitorControlSetInterfaceAdvisory(IPMonitorControl, v6, a2, a3);
}

uint64_t _SCNetworkInterfaceGetIPMonitorControl(const __SCNetworkInterface *a1, CFStringRef *a2)
{
  BSDName = SCNetworkInterfaceGetBSDName(a1);
  if (!BSDName)
  {
    v6 = 1002;
    goto LABEL_6;
  }

  result = *(a1 + 50);
  if (!result)
  {
    result = IPMonitorControlCreate();
    if (result)
    {
      *(a1 + 50) = result;
      goto LABEL_7;
    }

    v6 = 1001;
LABEL_6:
    _SCErrorSet(v6);
    result = 0;
  }

LABEL_7:
  *a2 = BSDName;
  return result;
}

BOOL SCNetworkInterfaceAdvisoryIsSpecificSet(const __SCNetworkInterface *a1, unsigned int a2)
{
  theString[1] = *MEMORY[0x1E69E9840];
  theString[0] = 0;
  IPMonitorControl = _SCNetworkInterfaceGetIPMonitorControl(a1, theString);
  if (!IPMonitorControl)
  {
    return 0;
  }

  v4 = theString[0];

  return IPMonitorControlIsInterfaceAdvisorySet(IPMonitorControl, v4, a2);
}

BOOL SCNetworkInterfaceAdvisoryIsSet(const __SCNetworkInterface *a1)
{

  return SCNetworkInterfaceAdvisoryIsSpecificSet(a1, 0);
}

CFStringRef SCNetworkInterfaceCopyAdvisoryNotificationKey(const __SCNetworkInterface *a1)
{
  BSDName = SCNetworkInterfaceGetBSDName(a1);
  if (BSDName)
  {

    return IPMonitorControlCopyInterfaceAdvisoryNotificationKey(BSDName);
  }

  else
  {
    _SCErrorSet(1002);
    return 0;
  }
}

uint64_t SCNetworkInterfaceCopyAdvisoryInfo(const __SCNetworkInterface *a1)
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  result = _SCNetworkInterfaceGetIPMonitorControl(a1, v2);
  if (result)
  {
    result = IPMonitorControlCopyInterfaceAdvisoryInfo(result, v2[0]);
    if (!result)
    {
      _SCErrorSet(1001);
      return 0;
    }
  }

  return result;
}

uint64_t SCNetworkInterfaceAdvisoryInfoGetAdvisory(const __CFDictionary *a1)
{

  return InterfaceAdvisoryInfoGetAdvisory(a1);
}

uint64_t SCNetworkInterfaceAdvisoryInfoGetProcessID(const __CFDictionary *a1)
{

  return InterfaceRankAssertionInfoGetProcessID(a1);
}

const void *SCNetworkInterfaceAdvisoryInfoGetProcessName(const __CFDictionary *a1)
{

  return InterfaceRankAssertionInfoGetProcessName(a1);
}

uint64_t SCNetworkInterfaceAdvisoryCopyInterfaceNames()
{
  v0 = IPMonitorControlCreate();
  if (v0)
  {
    v1 = v0;
    v2 = IPMonitorControlCopyInterfaceAdvisoryInterfaceNames(v0);
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

uint64_t _SCNetworkInterfaceCreateWithIONetworkInterfaceObject(uint64_t object)
{
  if (__SCNetworkInterfaceInitialize_initialized != -1)
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
  }

  if (IOObjectConformsTo(object, "IONetworkInterface"))
  {
    v2 = @"HiddenInterface";
    v3 = object;
    v4 = processNetworkInterface;
    v5 = 1;
  }

  else
  {
    if (!IOObjectConformsTo(object, "IOSerialBSDClient"))
    {
      return 0;
    }

    v2 = @"HiddenPort";
    v3 = object;
    v4 = processSerialInterface;
    v5 = 0;
  }

  return createInterface(v3, v4, v2, v5);
}

uint64_t _SCNetworkInterfaceGetFamilyType(const __CFNumber *interface)
{
  result = *(interface + 33);
  if (!result)
  {
    update_ift_family(interface);
    return *(interface + 33);
  }

  return result;
}

uint64_t _SCNetworkInterfaceIsBuiltin(unsigned __int8 *cf)
{
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
    if (!cf)
    {
      return 0;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) == v2)
  {
    return cf[176];
  }

  return 0;
}

uint64_t _SCNetworkInterfaceIsTrustRequired(unsigned __int8 *cf)
{
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
    if (!cf)
    {
      return 0;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) == v2)
  {
    return cf[240];
  }

  return 0;
}

const void *_SCNetworkInterfaceCopySlashDevPath(SCNetworkInterfaceRef interface)
{
  v37 = *MEMORY[0x1E69E9840];
  existing = 0;
  v1 = *(interface + 14);
  if (!v1)
  {
    return 0;
  }

  keys = 0;
  v36 = 0;
  values = 0;
  v34 = 0;
  if (*(interface + 15))
  {
    keys = @"IOTTYBaseName";
    values = v1;
    v3 = MEMORY[0x1E695E9D8];
    v4 = MEMORY[0x1E695E9E8];
    v5 = CFDictionaryCreate(0, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    keys = @"IOProviderClass";
    v36 = @"IOPropertyMatch";
    values = @"IOSerialBSDClient";
    v34 = v5;
    v6 = CFDictionaryCreate(0, &keys, &values, 2, v3, v4);
    CFRelease(v5);
    MatchingServices = IOServiceGetMatchingServices(masterPort, v6, &existing);
    if (MatchingServices)
    {
      v8 = MatchingServices;
      v9 = __log_SCNetworkConfiguration();
      v10 = _SC_syslog_os_log_mapping(6);
      if (__SC_log_enabled(6, v9, v10))
      {
        v11 = _os_log_pack_size();
        v17 = &v31 - ((MEMORY[0x1EEE9AC00](v11, v12, v13, v14, v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
        v18 = __error();
        v19 = _os_log_pack_fill(v17, v11, *v18, &dword_1AD2AD000, "IOServiceGetMatchingServices() failed, kr = %d", v31);
        *v19 = 67109120;
        v19[1] = v8;
        __SC_log_send(6, v9, v10, v17);
      }

      goto LABEL_24;
    }

    while (1)
    {
      v21 = IOIteratorNext(existing);
      if (!v21)
      {
        IOObjectRelease(existing);
        break;
      }

      v22 = v21;
      v23 = IORegistryEntrySearchCFProperty(v21, "IOService", @"NetworkConfigurationOverrides", 0, 3u);
      if (v23)
      {
        v24 = v23;
        Value = CFDictionaryGetValue(v23, @"Modem");
        if (Value)
        {
          v26 = Value;
          CFRetain(Value);
          CFRelease(v24);
          goto LABEL_13;
        }

        CFRelease(v24);
      }

      v26 = IORegistryEntrySearchCFProperty(v22, "IOService", @"DeviceModemOverrides", 0, 3u);
      if (!v26)
      {
        CFProperty = 0;
        goto LABEL_21;
      }

LABEL_13:
      TypeID = CFDictionaryGetTypeID();
      if (CFGetTypeID(v26) != TypeID)
      {
        goto LABEL_18;
      }

      CFProperty = CFDictionaryGetValue(v26, @"UniqueIdentifier");
      v28 = CFStringGetTypeID();
      if (CFProperty)
      {
        if (CFGetTypeID(CFProperty) != v28 || !CFEqual(*(interface + 15), CFProperty))
        {
LABEL_18:
          CFProperty = 0;
          goto LABEL_19;
        }

        CFProperty = IORegistryEntryCreateCFProperty(v22, @"IOTTYDevice", 0, 0);
      }

LABEL_19:
      CFRelease(v26);
LABEL_21:
      IOObjectRelease(v22);
      if (CFProperty)
      {
        IOObjectRelease(existing);
        return CFProperty;
      }
    }
  }

LABEL_24:
  BSDName = SCNetworkInterfaceGetBSDName(interface);
  CFProperty = BSDName;
  if (BSDName)
  {
    CFRetain(BSDName);
  }

  return CFProperty;
}

uint64_t _SCNetworkInterfaceIsApplePreconfigured(_DWORD *cf)
{
  v8 = *MEMORY[0x1E69E9840];
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
    if (!cf)
    {
      return 0;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) == v2)
  {
    result = _SCNetworkInterfaceIsHiddenConfiguration(cf);
    if (!result)
    {
      return result;
    }

    if (_SCNetworkInterfaceIsBuiltin(cf))
    {
      return 1;
    }

    v4 = *(cf + 36);
    TypeID = CFNumberGetTypeID();
    if (v4)
    {
      if (CFGetTypeID(v4) == TypeID)
      {
        valuePtr = 0;
        if (CFNumberGetValue(*(cf + 36), kCFNumberIntType, &valuePtr))
        {
          if (valuePtr == 1452)
          {
            return 1;
          }
        }
      }
    }

    if (_SCNetworkInterfaceIsCarPlay(cf))
    {
      v6 = *(cf + 28);
      if (v6)
      {
        if (CFDictionaryContainsKey(v6, @"IPv4") || CFDictionaryContainsKey(*(cf + 28), @"IPv6"))
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

BOOL _SCNetworkInterfaceIsCarPlay(_DWORD *cf)
{
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
    if (!cf)
    {
      return 0;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) == v2)
  {
    return cf[78] == 21;
  }

  return 0;
}

BOOL _SCNetworkInterfaceIsBluetoothPAN_NAP(_DWORD *cf)
{
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
    if (!cf)
    {
      return 0;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) == v2)
  {
    return cf[78] == 19;
  }

  return 0;
}

BOOL _SCNetworkInterfaceIsBluetoothP2P(_DWORD *cf)
{
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
    if (!cf)
    {
      return 0;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) == v2)
  {
    return cf[78] == 20;
  }

  return 0;
}

BOOL _SCNetworkInterfaceIsVMNET(_DWORD *cf)
{
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
    if (!cf)
    {
      return 0;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) == v2)
  {
    return cf[78] == 23;
  }

  return 0;
}

const __CFString *_SCNetworkInterfaceIsQoSMarkingProfileInstalled(const __SCNetworkInterface *a1)
{
  result = SCNetworkInterfaceGetBSDName(a1);
  if (result)
  {
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, @"State:", result, @"QoSMarkingPolicy");
    v3 = SCDynamicStoreCopyValue(0, NetworkInterfaceEntity);
    CFRelease(NetworkInterfaceEntity);
    if (v3)
    {
      CFRelease(v3);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL _SCNetworkInterfaceIsTethered(_DWORD *cf)
{
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
    if (!cf)
    {
      return 0;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) == v2)
  {
    return (cf[78] - 15) < 2;
  }

  return 0;
}

uint64_t _SCNetworkInterfaceIsEphemeral(unsigned __int8 *cf)
{
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
    if (!cf)
    {
      return 0;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) == v2)
  {
    return cf[241];
  }

  return 0;
}

uint64_t _SCNetworkInterfaceSupportsVMNETBridgedMode(unsigned __int8 *cf)
{
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
    if (!cf)
    {
      return 0;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) == v2)
  {
    return cf[244];
  }

  return 0;
}

uint64_t _SCNetworkInterfaceIsSelfNamed(unsigned __int8 *cf)
{
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
    if (!cf)
    {
      return 0;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) == v2)
  {
    return cf[242];
  }

  return 0;
}

uint64_t _SCNetworkInterfaceIsUserEthernet(unsigned __int8 *cf)
{
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
    if (!cf)
    {
      return 0;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) == v2)
  {
    return cf[243];
  }

  return 0;
}

const void *SCNetworkInterfaceGetQoSMarkingPolicy(CFTypeRef cf)
{
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!cf)
    {
      goto LABEL_7;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_7;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) == v2)
  {
    result = __SCNetworkInterfaceGetConfiguration(cf, @"QoSMarkingPolicy");
    if (result)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_7:
  LODWORD(result) = 1002;
LABEL_8:
  _SCErrorSet(result);
  return 0;
}

uint64_t SCNetworkInterfaceSetQoSMarkingPolicy(CFTypeRef cf, __CFString *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (__SCNetworkInterfaceInitialize_initialized == -1)
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
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_10;
    }
  }

  v4 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) != v4)
  {
    goto LABEL_10;
  }

  v5 = __SCNetworkInterfaceSetConfiguration(cf, @"QoSMarkingPolicy", a2, 0);
  if (v5)
  {
    v6 = __log_SCNetworkConfiguration();
    v7 = _SC_syslog_os_log_mapping(7);
    if (__SC_log_enabled(7, v6, v7))
    {
      v8 = _os_log_pack_size();
      v14 = v19 - ((MEMORY[0x1EEE9AC00](v8, v9, v10, v11, v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = __error();
      v16 = _os_log_pack_fill(v14, v8, *v15, &dword_1AD2AD000, "SCNetworkInterfaceSetQoSMarkingPolicy(): %@ -> %@");
      v17 = @"NULL";
      if (a2)
      {
        v17 = a2;
      }

      *v16 = 138412546;
      *(v16 + 4) = cf;
      *(v16 + 12) = 2112;
      *(v16 + 14) = v17;
      __SC_log_send(7, v6, v7, v14);
    }
  }

  return v5;
}

uint64_t SCNetworkInterfaceSetAutoConfigure(const __SCNetworkInterface *cf, uint64_t a2)
{
  v2 = a2;
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!cf)
    {
      goto LABEL_16;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!cf)
    {
      goto LABEL_16;
    }
  }

  v4 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) == v4)
  {
    InterfaceType = SCNetworkInterfaceGetInterfaceType(cf);
    if (CFEqual(InterfaceType, @"Bridge"))
    {

      return __SCBridgeInterfaceSetAutoConfigure(cf, v2);
    }
  }

  if (__SCNetworkInterfaceInitialize_initialized != -1)
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
  }

  v7 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) != v7 || (v8 = SCNetworkInterfaceGetInterfaceType(cf), !CFEqual(v8, @"VLAN")))
  {
LABEL_16:
    _SCErrorSet(1002);
    return 0;
  }

  return __SCVLANInterfaceSetAutoConfigure(cf, v2);
}

uint64_t SCNetworkInterfaceGetAutoConfigure(const __SCNetworkInterface *cf)
{
  if (__SCNetworkInterfaceInitialize_initialized == -1)
  {
    if (!cf)
    {
      return 1;
    }
  }

  else
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
    if (!cf)
    {
      return 1;
    }
  }

  v2 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) == v2)
  {
    InterfaceType = SCNetworkInterfaceGetInterfaceType(cf);
    if (CFEqual(InterfaceType, @"Bridge"))
    {

      return __SCBridgeInterfaceGetAutoConfigure(cf);
    }
  }

  if (__SCNetworkInterfaceInitialize_initialized != -1)
  {
    __SCNetworkInterfaceCreatePrivate_cold_1();
  }

  v5 = __kSCNetworkInterfaceTypeID;
  if (CFGetTypeID(cf) != v5)
  {
    return 1;
  }

  v6 = SCNetworkInterfaceGetInterfaceType(cf);
  if (!CFEqual(v6, @"VLAN"))
  {
    return 1;
  }

  return __SCVLANInterfaceGetAutoConfigure(cf);
}

__CFArray *__SCNetworkInterfaceCopyDeepConfiguration(const __SCNetworkSet *a1, const __SCNetworkInterface *Interface)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v5 = Mutable;
  if (Interface)
  {
    v6 = *MEMORY[0x1E695E738];
    v7 = MEMORY[0x1E695E9D8];
    v8 = MEMORY[0x1E695E9E8];
    v26 = Mutable;
    do
    {
      v9 = CFDictionaryCreateMutable(0, 0, v7, v8);
      DefaultConfigurationType = __SCNetworkInterfaceGetDefaultConfigurationType(Interface);
      if (DefaultConfigurationType)
      {
        v11 = DefaultConfigurationType;
        v12 = a1 ? __SCNetworkInterfaceGetDefaultConfiguration(a1, Interface) : __SCNetworkInterfaceGetConfiguration(Interface, DefaultConfigurationType);
        v13 = v12 ? v12 : v6;
        CFDictionarySetValue(v9, v11, v13);
        v14 = extendedConfigurationTypes(Interface);
        if (v14)
        {
          v15 = v14;
          v16 = a1;
          v17 = v8;
          v18 = v7;
          Count = CFArrayGetCount(v14);
          if (Count >= 1)
          {
            v20 = Count;
            for (i = 0; i != v20; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v15, i);
              Configuration = __SCNetworkInterfaceGetConfiguration(Interface, ValueAtIndex);
              if (Configuration)
              {
                v24 = Configuration;
              }

              else
              {
                v24 = v6;
              }

              CFDictionarySetValue(v9, ValueAtIndex, v24);
            }
          }

          CFRelease(v15);
          v7 = v18;
          v8 = v17;
          a1 = v16;
          v5 = v26;
        }
      }

      CFArrayAppendValue(v5, v9);
      CFRelease(v9);
      Interface = SCNetworkInterfaceGetInterface(Interface);
    }

    while (Interface);
  }

  return v5;
}