BOOL sub_100019DA0(CFStringRef key, CFPropertyListRef value)
{
  if (demand)
  {
    v4 = SCDynamicStoreSetValue(cfgCache, key, value) != 0;
  }

  else
  {
    v4 = 1;
  }

  if (!publish_dict)
  {
    return 0;
  }

  CFDictionarySetValue(publish_dict, key, value);
  return v4;
}

uint64_t sifdefaultroute()
{
  byte_10004B858 = 1;
  ppp_create_ipv6_dummy_primary(0);

  return publish_dictnumentry(kSCEntNetIPv4, kSCPropNetOverridePrimary, 1);
}

uint64_t publish_dns_wins_entry(CFStringRef entity, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, void *key, void *value, int a11)
{
  if (publish_dict | cfgCache)
  {
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceidRef, entity);
    if (NetworkServiceEntity)
    {
      v19 = NetworkServiceEntity;
      if (publish_dict)
      {
        v20 = CFDictionaryGetValue(publish_dict, NetworkServiceEntity);
        if (v20)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v20);
          goto LABEL_11;
        }
      }

      else
      {
        v20 = SCDynamicStoreCopyValue(cfgCache, NetworkServiceEntity);
        if (v20)
        {
          v23 = v20;
          v24 = CFDictionaryCreateMutableCopy(0, 0, v20);
          CFRelease(v23);
          if (v24)
          {
            goto LABEL_12;
          }

          goto LABEL_9;
        }
      }

      MutableCopy = CFDictionaryCreateMutable(v20, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
LABEL_11:
      v24 = MutableCopy;
      if (MutableCopy)
      {
LABEL_12:
        v25 = CFGetTypeID(v24);
        if (v25 != CFDictionaryGetTypeID())
        {
          goto LABEL_46;
        }

        if (a11 || (v33 = CFDictionaryGetValue(v24, a2)) == 0)
        {
          cf = 0;
        }

        else
        {
          v34 = v33;
          v44 = CFGetTypeID(v33);
          cf = v34;
          if (v44 == CFArrayGetTypeID())
          {
            Count = CFArrayGetCount(v34);
            v26 = CFArrayCreateMutableCopy(0, Count + 1, v34);
LABEL_16:
            v27 = v26;
            if (v26)
            {
              CFArrayAppendValue(v26, a3);
              if (a4)
              {
                CFArrayAppendValue(v27, a4);
              }

              CFDictionarySetValue(v24, a2, v27);
              CFRelease(v27);
              if (a5)
              {
                v28 = cf;
                v29 = a11;
                if (!a11)
                {
                  v28 = CFDictionaryGetValue(v24, a5);
                }

                if (v28 && (v30 = CFGetTypeID(v28), v30 == CFArrayGetTypeID()))
                {
                  v31 = CFArrayGetCount(v28);
                  Mutable = CFArrayCreateMutableCopy(0, v31 + 1, v28);
                }

                else
                {
                  Mutable = CFArrayCreateMutable(0, 1, &kCFTypeArrayCallBacks);
                }

                v36 = Mutable;
                if (!Mutable)
                {
                  goto LABEL_46;
                }

                CFArrayAppendValue(Mutable, a6);
                CFDictionarySetValue(v24, a5, v36);
                CFRelease(v36);
              }

              else
              {
                v28 = cf;
                v29 = a11;
              }

              if (a7)
              {
                if (!v29)
                {
                  v28 = CFDictionaryGetValue(v24, a7);
                }

                if (v28 && (v37 = CFGetTypeID(v28), v37 == CFArrayGetTypeID()))
                {
                  v38 = CFArrayGetCount(v28);
                  v39 = CFArrayCreateMutableCopy(0, v38 + 1, v28);
                }

                else
                {
                  v39 = CFArrayCreateMutable(0, 1, &kCFTypeArrayCallBacks);
                }

                v40 = v39;
                if (!v39)
                {
                  goto LABEL_46;
                }

                CFArrayAppendValue(v39, a8);
                CFDictionarySetValue(v24, a7, v40);
                CFRelease(v40);
              }

              if (key)
              {
                CFDictionarySetValue(v24, key, value);
              }

              if (sub_100019DA0(v19, v24))
              {
                v22 = 1;
LABEL_47:
                CFRelease(v19);
                goto LABEL_48;
              }

              v41 = SCError();
              v42 = SCErrorString(v41);
              warning("SCDynamicStoreSetValue DNS/WINS %s failed: %s\n", &ifname, v42);
            }

LABEL_46:
            v22 = 0;
            goto LABEL_47;
          }
        }

        v26 = CFArrayCreateMutable(0, 1, &kCFTypeArrayCallBacks);
        goto LABEL_16;
      }

LABEL_9:
      v22 = 0;
      v24 = v19;
LABEL_48:
      CFRelease(v24);
      return v22;
    }
  }

  return 0;
}

uint64_t sifdns(unsigned int a1, unsigned int a2)
{
  valuePtr = 100000;
  v4 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  if (v4)
  {
    v5 = v4;
    v6 = CFStringCreateWithCString(0, &unk_10002F9F2, 0x8000100u);
    if (v6)
    {
      v7 = v6;
      notify_post("com.apple.system.dns.delay");
      v8 = a1 & 0xFF000000 | (BYTE2(a1) << 16) | (BYTE1(a1) << 8) | a1;
      if (v8 && (v9 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a1, BYTE1(a1), BYTE2(a1), HIBYTE(a1))) != 0)
      {
        v10 = v9;
        v11 = 0;
        v12 = a2 & 0xFF000000 | (BYTE2(a2) << 16) | (BYTE1(a2) << 8) | a2;
        if (v12 && v12 != v8)
        {
          v11 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a2, BYTE1(a2), BYTE2(a2), HIBYTE(a2));
        }

        v13 = 1;
        if (publish_dns_wins_entry(kSCEntNetDNS, kSCPropNetDNSServerAddresses, v10, v11, kSCPropNetDNSSupplementalMatchDomains, v7, kSCPropNetDNSSupplementalMatchOrders, v5, kSCPropNetDNSConfirmedServiceID, serviceidRef, 1))
        {
          publish_dns_wins_entry(kSCEntNetProxies, kSCPropNetProxiesSupplementalMatchDomains, v7, 0, kSCPropNetProxiesSupplementalMatchOrders, v5, 0, 0, 0, 0, 1);
        }

        else
        {
          v13 = 0;
        }

        CFRelease(v5);
        CFRelease(v10);
        if (!v11)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v13 = 0;
        v11 = v5;
      }

      CFRelease(v11);
    }

    else
    {
      v13 = 0;
      v7 = v5;
    }

LABEL_16:
    CFRelease(v7);
    return v13;
  }

  return 0;
}

uint64_t sifproxyarp(uint64_t a1, int a2)
{
  xmmword_10004B85C = 0u;
  *algn_10004B86C = 0u;
  xmmword_10004B87C = 0u;
  unk_10004B88C = 0u;
  xmmword_10004B89C = 0u;
  unk_10004B8AC = 0u;
  xmmword_10004B8BC = 0u;
  unk_10004B8CC = 0u;
  xmmword_10004B8DC = 0u;
  unk_10004B8EC = 0u;
  xmmword_10004B8FC = 0u;
  unk_10004B90C = 0u;
  xmmword_10004B91C = 0u;
  unk_10004B92C = 0u;
  xmmword_10004B93C = 0u;
  unk_10004B94C = 0u;
  v14 = 0u;
  v15 = 0u;
  v11 = 1024;
  v12 = &v13;
  if (ioctl(dword_10004B6BC, 0xC00C6924uLL, &v11) < 0)
  {
    error("ioctl(SIOCGIFCONF): %m");
  }

  else if (v11 >= 1)
  {
    v3 = v12;
    v4 = &v12[v11];
    while (1)
    {
      if (v3[17] == 2)
      {
        v5 = *(v3 + 5);
        __strlcpy_chk();
        if ((ioctl(dword_10004B6BC, 0xC0206911uLL, &v14) & 0x80000000) == 0 && (v15 & 0x9B) == 3 && (ioctl(dword_10004B6BC, 0xC0206925uLL, &v14) & 0x80000000) == 0 && (DWORD1(v15) & (v5 ^ a2)) == 0)
        {
          break;
        }
      }

      v3 += *(v3 + 16) + 16;
      if (v3 >= v4)
      {
        goto LABEL_12;
      }
    }

    info("found interface %s for proxy arp", v3);
    for (i = v12; i < v4; i += *(i + 16) + 16)
    {
      if (!strcmp(v3, i) && i[17] == 18)
      {
        __memcpy_chk();
        v9 = socket(17, 3, 17);
        if (v9 < 0)
        {
          error("Couldn't add proxy arp entry: socket: %m");
        }

        else
        {
          v10 = v9;
          *(&xmmword_10004B85C + 1) = 0x300004804;
          WORD1(xmmword_10004B85C) = 261;
          dword_10004B870 = ++dword_10004B95C;
          LODWORD(xmmword_10004B87C) = 4;
          word_10004B8B8 = 528;
          LODWORD(xmmword_10004B8BC) = a2;
          v6 = 1;
          WORD5(xmmword_10004B8BC) = 1;
          LOWORD(xmmword_10004B85C) = BYTE12(xmmword_10004B8BC) + 108;
          if ((write(v9, &xmmword_10004B85C, BYTE12(xmmword_10004B8BC) + 108) & 0x8000000000000000) == 0)
          {
            close(v10);
            byte_10004B960 = 1;
            dword_10004B7D0 = a2;
            return v6;
          }

          error("Couldn't add proxy arp entry: %m");
          close(v10);
        }

        return 0;
      }
    }
  }

LABEL_12:
  error("Cannot determine ethernet address for proxy ARP");
  return 0;
}

uint64_t GetMask(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v1 = ntohl();
  v2 = v1;
  if (v1 >> 30 == 2)
  {
    v3 = -65536;
  }

  else
  {
    v3 = -256;
  }

  if (v1 < 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = -16777216;
  }

  v5 = netmask;
  v6 = htonl() | v5;
  v10 = 1024;
  v11 = &v12;
  if (ioctl(dword_10004B6BC, 0xC00C6924uLL, &v10) < 0)
  {
    warning("ioctl(SIOCGIFCONF): %m");
  }

  else if (v10 >= 1)
  {
    v7 = v11;
    v8 = &v11[v10];
    do
    {
      if (v7[17] == 2 && ((ntohl() ^ v2) & v4) == 0)
      {
        __strlcpy_chk();
        if ((ioctl(dword_10004B6BC, 0xC0206911uLL, &v13) & 0x80000000) == 0 && (v14 & 0x19) == 1 && (ioctl(dword_10004B6BC, 0xC0206925uLL, &v13) & 0x80000000) == 0)
        {
          v6 = DWORD1(v14) | v6;
        }
      }

      v7 += v7[16] + 16;
    }

    while (v7 < v8);
  }

  return v6;
}

uint64_t sys_loadplugin(_BYTE *a1)
{
  if (*a1 == 47)
  {
    __strlcpy_chk();
  }

  else
  {
    __strlcpy_chk();
    __strlcat_chk();
  }

  v1 = strlen(__s);
  v2 = CFURLCreateFromFileSystemRepresentation(0, __s, v1, 1u);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  v4 = CFBundleCreate(0, v2);
  if (v4)
  {
    v5 = v4;
    if (CFBundleLoadExecutable(v4) && (FunctionPointerForName = CFBundleGetFunctionPointerForName(v5, @"start")) != 0)
    {
      v7 = FunctionPointerForName(v5);
    }

    else
    {
      v7 = 0xFFFFFFFFLL;
    }

    CFRelease(v5);
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  CFRelease(v3);
  return v7;
}

uint64_t sys_eaploadplugin(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 47)
  {
    __strlcpy_chk();
  }

  else
  {
    __strlcpy_chk();
    __strlcat_chk();
  }

  v3 = strlen(__s);
  v4 = CFURLCreateFromFileSystemRepresentation(0, __s, v3, 1u);
  if (v4)
  {
    v5 = v4;
    v6 = CFBundleCopyInfoDictionaryForURL(v4);
    if (v6)
    {
      v7 = v6;
      valuePtr = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0;
      Value = CFDictionaryGetValue(v6, @"EAPType");
      if (Value)
      {
        v9 = Value;
        v10 = CFGetTypeID(Value);
        if (v10 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr);
          *(a2 + 8) = valuePtr;
        }
      }

      v11 = CFDictionaryGetValue(v7, @"EAPName");
      if (v11)
      {
        v12 = v11;
        v13 = CFGetTypeID(v11);
        if (v13 == CFStringGetTypeID())
        {
          Length = CFStringGetLength(v12);
          v15 = malloc_type_malloc(Length + 1, 0xB223BAA2uLL);
          *(a2 + 16) = v15;
          if (v15)
          {
            v16 = v15;
            v17 = CFStringGetLength(v12);
            CFStringGetCString(v12, v16, v17 + 1, 0x8000100u);
          }
        }
      }

      CFRelease(v7);
      v18 = CFBundleCreate(0, v5);
      if (v18)
      {
        v19 = v18;
        if (CFBundleLoadExecutable(v18))
        {
          *(a2 + 40) = CFBundleGetFunctionPointerForName(v19, @"Init");
          *(a2 + 48) = CFBundleGetFunctionPointerForName(v19, @"Dispose");
          *(a2 + 56) = CFBundleGetFunctionPointerForName(v19, @"Process");
          *(a2 + 64) = CFBundleGetFunctionPointerForName(v19, @"Free");
          *(a2 + 72) = CFBundleGetFunctionPointerForName(v19, @"GetAttribute");
          *(a2 + 80) = CFBundleGetFunctionPointerForName(v19, @"InteractiveUI");
          *(a2 + 88) = CFBundleGetFunctionPointerForName(v19, @"PrintPacket");
          v20 = 0;
          *(a2 + 96) = CFBundleGetFunctionPointerForName(v19, @"Identity");
          *(a2 + 32) = v19;
LABEL_19:
          CFRelease(v5);
          return v20;
        }

        CFRelease(v19);
      }
    }

    v20 = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

  return 0xFFFFFFFFLL;
}

uint64_t publish_keyentry(const __CFString *key, const void *a2, const void *a3)
{
  if (!cfgCache)
  {
    return 0;
  }

  if (key && publish_dict && CFDictionaryContainsKey(publish_dict, key) && (Value = CFDictionaryGetValue(publish_dict, key)) != 0)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v8 = MutableCopy;
  if (!MutableCopy)
  {
    return 0;
  }

  CFDictionarySetValue(MutableCopy, a2, a3);
  if (!sub_100019DA0(key, v8))
  {
    v9 = SCError();
    v10 = SCErrorString(v9);
    warning("publish_entry SCDSet() failed: %s\n", v10);
  }

  CFRelease(v8);
  return 1;
}

uint64_t unpublish_keyentry(const __CFString *key, const void *a2)
{
  if (cfgCache)
  {
    if (key)
    {
      if (publish_dict)
      {
        if (CFDictionaryContainsKey(publish_dict, key))
        {
          Value = CFDictionaryGetValue(publish_dict, key);
          if (Value)
          {
            MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
            if (MutableCopy)
            {
              v6 = MutableCopy;
              CFDictionaryRemoveValue(MutableCopy, a2);
              if (!sub_100019DA0(key, v6))
              {
                v7 = SCError();
                v8 = SCErrorString(v7);
                warning("unpublish_keyentry SCDSet() failed: %s\n", v8);
              }

              CFRelease(v6);
            }
          }
        }
      }
    }
  }

  return 0;
}

double getabsolutetime(uint64_t a1)
{
  result = *&timeScaleSeconds;
  if (*&timeScaleSeconds != 0.0)
  {
    v3 = mach_absolute_time();
    v4 = *&timeScaleSeconds * v3;
    *a1 = v4;
    result = v4 * -1000000.0 + v3 * *&timeScaleMicroSeconds;
    *(a1 + 8) = result;
  }

  return result;
}

const char *sys_publish_remoteaddress(const char *result)
{
  if (result)
  {
    return publish_dictstrentry(kSCEntNetPPP, kSCPropNetPPPCommRemoteAddress, result, 0x8000100u);
  }

  return result;
}

uint64_t sys_reinit()
{
  cfgCache = SCDynamicStoreCreate(0, @"pppd", 0, 0);
  if (!cfgCache)
  {
    v2 = SCError();
    v3 = SCErrorString(v2);
    fatal("SCDynamicStoreCreate failed: %s", v3);
  }

  v0 = getpid();

  return publish_dictnumentry(kSCEntNetPPP, @"pid", v0);
}

uint64_t route_gateway(int a1, int a2, int a3, int a4, int a5)
{
  v26 = a3;
  v27 = a2;
  v25 = a4;
  v10 = socket(17, 3, 17);
  if (v10 < 0)
  {
    v14 = __error();
    v15 = strerror(*v14);
    v16 = addr2ascii(2, &v27, 4, v42);
    v17 = addr2ascii(2, &v26, 4, v41);
    v18 = addr2ascii(2, &v25, 4, v40);
    sys_log(6u, "host_gateway: open routing socket failed, %s. (address %s, mask %s, gateway %s, use-gateway %d).", v15, v16, v17, v18, a5);
  }

  else
  {
    v11 = v10;
    v31 = 0u;
    v32 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v30 = a1;
    if (a5)
    {
      v12 = 2051;
    }

    else
    {
      v12 = 2049;
    }

    v29 = 5;
    LODWORD(v32) = 1;
    *(&v31 + 4) = v12 | 0x700000000;
    WORD4(v36) = 528;
    HIDWORD(v36) = a2;
    WORD4(v37) = 528;
    HIDWORD(v37) = a4;
    WORD4(v38) = 528;
    HIDWORD(v38) = a3;
    __buf = 140;
    if ((write(v10, &__buf, 0x8CuLL) & 0x8000000000000000) == 0)
    {
      close(v11);
      return 1;
    }

    if (a1 == 2)
    {
      v19 = 7;
    }

    else
    {
      v19 = 3;
    }

    v20 = __error();
    v21 = strerror(*v20);
    v22 = addr2ascii(2, &v27, 4, v42);
    v23 = addr2ascii(2, &v26, 4, v41);
    v24 = addr2ascii(2, &v25, 4, v40);
    sys_log(v19, "host_gateway: write routing socket failed, %s. (address %s, mask %s, gateway %s, use-gateway %d).", v21, v22, v23, v24, a5);
    close(v11);
  }

  return 0;
}

uint64_t ppp_ip_probe_send()
{
  dbglog("%s: starting", "ppp_ip_probe_send");
  if (!session || !*session)
  {
    return 0xFFFFFFFFLL;
  }

  v0 = if_nametoindex(*(session + 16));
  v1 = session;
  *(session + 312) = 0;
  if (*(v1 + 253) != 2 || !*(v1 + 256))
  {
    info("%s: no goog-dns address", "ppp_ip_probe_send");
    goto LABEL_8;
  }

  dbglog("%s: found goog-dns address", "ppp_ip_probe_send");
  v2 = sub_10001B410(*(session + 300));
  *(session + 300) = v2;
  if (v2 == -1)
  {
LABEL_8:
    v3 = 0;
    goto LABEL_9;
  }

  add_fd(v2);
  dbglog("%s: sent to goog-dns over scope %d", "ppp_ip_probe_send", v0);
  v3 = 1;
LABEL_9:
  if (*(session + 269) != 2 || !*(session + 272))
  {
    dbglog("%s: no peer address");
    goto LABEL_19;
  }

  dbglog("%s: found peer address", "ppp_ip_probe_send");
  v4 = sub_10001B410(*(session + 304));
  v5 = session;
  *(session + 304) = v4;
  if (v4 != -1)
  {
    add_fd(v4);
    dbglog("%s: sent to peer over scope %d", "ppp_ip_probe_send", v0);
    ++v3;
    v5 = session;
  }

  if (*(v5 + 285) != 2 || !*(v5 + 288))
  {
    dbglog("%s: no alternate peer address");
LABEL_19:
    if (v3)
    {
      goto LABEL_20;
    }

    return 0xFFFFFFFFLL;
  }

  dbglog("%s: found alternate peer address", "ppp_ip_probe_send");
  v6 = sub_10001B410(*(session + 308));
  *(session + 308) = v6;
  if (v6 == -1)
  {
    goto LABEL_19;
  }

  add_fd(v6);
  info("%s: sent to alternate peer over scope %d", "ppp_ip_probe_send", v0);
  ++v3;
LABEL_20:
  dbglog("%s: %d probes sent", "ppp_ip_probe_send", v3);
  v7 = session;
  ++*(session + 316);
  if (!*(v7 + 248))
  {
    *(v7 + 248) = 1;
    timeout(sub_10001B57C);
  }

  return 0;
}

uint64_t sub_10001B410(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v4 = v3;
  v5 = v1;
  v10 = 0;
  v11 = v2;
  if ((v1 & 0x80000000) != 0)
  {
    v7 = v2;
    v8 = socket(2, 2, 1);
    if ((v8 & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    v5 = v8;
    if (v7 && setsockopt(v8, 0, 25, &v11, 4u))
    {
LABEL_3:
      close(v5);
      return 0xFFFFFFFFLL;
    }

    v10 = 65663;
    setsockopt(v5, 0xFFFF, 4098, &v10, 4u);
  }

  v12.i32[0] = 8;
  v12.i16[3] = htons();
  v12.i16[2] = getpid();
  v6 = vaddvq_s32(vmovl_u16(v12));
  v12.i16[1] = ~(HIWORD(v6) + v6 + ((HIWORD(v6) + v6) >> 16));
  if (sendto(v5, &v12, 8uLL, 0, v4, 0x10u) != 8)
  {
    goto LABEL_3;
  }

  return v5;
}

void sub_10001B57C()
{
  if (session && *session && (*(session + 316) > 14 || ppp_ip_probe_send()))
  {

    error("ppp_auxiliary_probe timed out");
  }
}

uint64_t ppp_ip_probe_stop()
{
  v0 = session;
  if (!session || !*session)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(session + 248))
  {
    *(session + 248) = 0;
    untimeout(sub_10001B57C, 0);
    dbglog("ppp_auxiliary_probe stopped");
    v0 = session;
  }

  for (i = 300; i != 312; i += 4)
  {
    v2 = *(v0 + i);
    if (v2 >= 1)
    {
      remove_fd(v2);
      close(*(session + i));
      v0 = session;
      *(session + i) = -1;
    }
  }

  result = 0;
  *(v0 + 312) = 0;
  return result;
}

double ppp_session_clear(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 320) = 0;
    result = 0.0;
    *(a1 + 288) = 0u;
    *(a1 + 304) = 0u;
    *(a1 + 256) = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 308) = -1;
    *(a1 + 300) = -1;
  }

  return result;
}

void ppp_variable_echo_start()
{
  if (session && *session && (wait_underlying_interface_up != 0) | byte_10004B964 & 1 && !lcp_echos_hastened)
  {
    dbglog("ppp_variable_echo_start");
    lcp_echo_interval_slow = lcp_echo_interval;
    lcp_echo_interval = 1;
    lcp_echo_fails_slow = lcp_echo_fails;
    if (lcp_echo_fails >= 11)
    {
      lcp_echo_fails = 10;
    }

    lcp_echos_hastened = 1;

    lcp_echo_restart(0);
  }
}

void ppp_variable_echo_stop()
{
  if (session && *session)
  {
    if (wait_underlying_interface_up)
    {
      v0 = 0;
    }

    else
    {
      v0 = byte_10004B964 == 0;
    }

    if (!v0)
    {
      dbglog("received echo-reply, ppp_variable_echo_stop!");
      wait_underlying_interface_up = 0;
      byte_10004B964 = 0;
      if (lcp_echos_hastened)
      {
        lcp_echo_interval = lcp_echo_interval_slow;
        lcp_echo_fails = lcp_echo_fails_slow;
        lcp_echos_hastened = 0;
      }
    }
  }
}

void *ppp_auxiliary_probe_init()
{
  dword_10004B96C = 0;
  dword_10004B970 = 0;
  if ((byte_10004B974 & 1) == 0)
  {
    add_notifier(&ip_up_notify, ppp_auxiliary_probe_ip_up, 0);
    result = add_notifier(&ip_down_notify, ppp_auxiliary_probe_ip_down, 0);
    byte_10004B974 = 1;
  }

  return result;
}

uint64_t ppp_auxiliary_probe_stop()
{
  result = ppp_ip_probe_stop();
  dword_10004B96C = 0;
  dword_10004B970 = 0;
  return result;
}

void ppp_auxiliary_probe_check(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (result >= 2)
  {
    v3 = byte_10004B968 && wait_underlying_interface_up == 0;
    if (v3 && (byte_10004B964 & 1) == 0)
    {
      v4 = dword_10004B96C;
      if (dword_10004B96C)
      {
        ++dword_10004B96C;
        if (v4 >= 1 && dword_10004B970 != 0)
        {
          error("no echo-reply, despite successful ppp_auxiliary_probe!");
          if (a2)
          {

            a2(a3);
          }
        }
      }

      else
      {
        error("no echo-reply, start ppp_auxiliary_probe!", a2, a3);
        ppp_ip_probe_send();
        dword_10004B96C = 1;
        dword_10004B970 = 0;
      }
    }
  }
}

void ppp_process_auxiliary_probe_input()
{
  v0 = session;
  if (session)
  {
    v5 = 0;
    if (*session)
    {
      v1 = 0;
      for (i = 75; i != 78; ++i)
      {
        v3 = *(v0 + 4 * i);
        if (v3 >= 1)
        {
          ready = is_ready_fd(v3);
          v0 = session;
          if (ready)
          {
            v5 = 0;
            read(*(session + 4 * i), &v5, 1uLL);
            remove_fd(*(session + 4 * i));
            if (v5 >= 1)
            {
              ++*(session + 312);
              ++v1;
              dbglog("ppp_auxiliary_probe[%d] response!", i - 75);
            }

            close(*(session + 4 * i));
            v0 = session;
            *(session + 4 * i) = -1;
          }
        }
      }

      if (v1)
      {
        if (*(v0 + 248))
        {
          *(v0 + 248) = 0;
          untimeout(sub_10001B57C, 0);
        }

        if (dword_10004B96C)
        {
          ++dword_10004B970;
        }
      }
    }
  }
}

void ppp_start_public_nat_port_mapping_timer()
{
  if (session && *session && !*(session + 32) && !*(session + 36))
  {
    notice("starting wait-port-mapping timer for %s: %d secs", *(session + 8), 20);
    timeout(sub_10001BBE8);
    *(session + 36) = 1;
  }
}

void sub_10001BBE8()
{
  if (session)
  {
    if (*session)
    {
      if (*(session + 36))
      {
        *(session + 36) = 0;
        sys_log(3u, "NAT's public interface down for more than %d secs... starting faster probe.\n", 20);
        v0 = *(session + 240);
        if (v0)
        {
          byte_10004B964 = 1;

          v0();
        }
      }
    }
  }
}

void ppp_stop_public_nat_port_mapping_timer()
{
  if (session && *session)
  {
    if (*(session + 36))
    {
      untimeout(sub_10001BBE8, 0);
      *(session + 36) = 0;
    }
  }
}

void ppp_block_public_nat_port_mapping_timer()
{
  if (session)
  {
    if (*session)
    {
      ppp_stop_public_nat_port_mapping_timer();
      *(session + 32) = 1;
    }
  }
}

void ppp_unblock_public_nat_port_mapping_timer()
{
  if (session)
  {
    if (*session)
    {
      *(session + 32) = 0;
    }
  }
}

uint64_t sys_setup_security_session(uint64_t a1)
{
  if (qword_10004B978 != -1)
  {
    sub_10002D7B4();
  }

  if (byte_10004B975)
  {
    if (qword_10004B988 != -1)
    {
      sub_10002D818();
    }

    if (qword_10004B980)
    {
      ne_session_copy_security_session_info();
    }

    return 1;
  }

  else
  {

    return setup_security_context();
  }
}

intptr_t sub_10001BE8C(uint64_t a1, xpc_object_t object)
{
  if (object)
  {
    *(*(*(a1 + 32) + 8) + 24) = xpc_retain(object);
  }

  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

void sub_10001BED8(id a1)
{
  v1 = getenv("NetworkExtension");
  if (v1)
  {
    memset(uu, 0, sizeof(uu));
    if (!uuid_parse(v1, uu))
    {
      qword_10004B980 = ne_session_create();
    }
  }
}

const char *tdb_error(uint64_t a1)
{
  if (!a1)
  {
    return "Invalid tdb context";
  }

  v1 = *(a1 + 40);
  if (!v1)
  {
    return "Success";
  }

  v2 = &dword_10003CC30;
  v3 = 6;
  result = "Invalid error code";
  while (--v3)
  {
    v5 = v2 + 4;
    v6 = *v2;
    v2 += 4;
    if (v1 == v6)
    {
      return *(v5 - 1);
    }
  }

  return result;
}

uint64_t tdb_update(_DWORD *a1, char *a2, size_t a3, const void *a4, uint64_t a5)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v10 = 596579247 * a3;
  if (a3)
  {
    v11 = 0;
    v12 = 1;
    v13 = a2;
    do
    {
      v14 = *v13++;
      v10 += v14 << (v11 % 0x18);
      v15 = a3 > v12++;
      v11 += 5;
    }

    while (v15);
  }

  v16 = 1103515243 * v10 + 12345;
  sub_10001C124(a1, v16 % a1[20]);
  v17 = sub_10001C1B4(a1, a2, a3, v16, &v21);
  if (!v17 || a5 + a3 > v21 || (v18 = v17, sub_10001C2B4(a1, v17 + v22 + 24, a4, a5) == -1))
  {
    v19 = 0xFFFFFFFFLL;
  }

  else if (a5 == HIDWORD(v22))
  {
    v19 = 0;
  }

  else
  {
    HIDWORD(v22) = a5;
    v19 = sub_10001C2B4(a1, v18, &v21, 0x18u);
  }

  sub_10001C354(a1, v16 % a1[20]);
  return v19;
}

uint64_t sub_10001C124(uint64_t a1, int a2)
{
  if (a2 < -1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 80) > a2)
  {
    v4 = *(a1 + 32);
    v5 = a2 + 1;
    v6 = *(v4 + 4 * (a2 + 1));
    if (v6)
    {
LABEL_5:
      result = 0;
      *(v4 + 4 * v5) = v6 + 1;
      return result;
    }

    if (!sub_10001D820(a1, 4 * a2 + 1024, 1, 3, 9))
    {
      v4 = *(a1 + 32);
      v6 = *(v4 + 4 * v5);
      goto LABEL_5;
    }
  }

  return 0xFFFFFFFFLL;
}

void *sub_10001C1B4(_DWORD *a1, const void *a2, size_t a3, unsigned int a4, unsigned int *a5)
{
  v15 = 0;
  if (sub_10001D348(a1, 4 * (a4 % a1[20]) + 44, &v15, 4u) != -1)
  {
    v10 = v15;
    if (v15)
    {
      while (sub_10001C800(a1, v10, a5) != -1)
      {
        if (a5[4] == a4)
        {
          v11 = a5[2];
          if (a3 == v11)
          {
            result = sub_10001C518(a1, v15 + 24, v11);
            if (!result)
            {
              return result;
            }

            v13 = result;
            v14 = memcmp(a2, result, a3);
            free(v13);
            if (!v14)
            {
              return v15;
            }
          }
        }

        v10 = a5[1];
        v15 = v10;
        if (!v10)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_10001C2B4(uint64_t a1, unsigned int a2, const void *a3, unsigned int a4)
{
  if (sub_10001DA5C(a1, a4 + a2))
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    memcpy((v9 + a2), a3, a4);
  }

  else if (lseek(*(a1 + 16), a2, 0) != a2 || write(*(a1 + 16), a3, a4) != a4)
  {
    *(a1 + 40) = 2;
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t sub_10001C354(uint64_t a1, int a2)
{
  if (a2 < -1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 80) <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 32);
  v5 = a2 + 1;
  v6 = *(v4 + 4 * (a2 + 1));
  if (v6 == 1)
  {
    if (sub_10001D820(a1, 4 * a2 + 1024, 0, 3, 9))
    {
      return 0xFFFFFFFFLL;
    }

    v4 = *(a1 + 32);
    v6 = *(v4 + 4 * v5);
  }

  else if (!v6)
  {
    *(a1 + 40) = 3;
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(v4 + 4 * v5) = v6 - 1;
  return result;
}

void *tdb_fetch(_DWORD *a1, char *a2, size_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v6 = 596579247 * a3;
  if (a3)
  {
    v7 = 0;
    v8 = 1;
    v9 = a2;
    do
    {
      v10 = *v9++;
      v6 += v10 << (v7 % 0x18);
      v11 = a3 > v8++;
      v7 += 5;
    }

    while (v11);
  }

  v12 = 1103515243 * v6 + 12345;
  sub_10001C124(a1, v12 % a1[20]);
  v13 = sub_10001C1B4(a1, a2, a3, v12, &v16);
  if (v13)
  {
    v14 = sub_10001C518(a1, v13 + v17 + 24, HIDWORD(v17));
  }

  else
  {
    v14 = 0;
  }

  sub_10001C354(a1, v12 % a1[20]);
  return v14;
}

void *sub_10001C518(uint64_t a1, uint64_t a2, size_t size)
{
  v3 = size;
  v4 = a2;
  v6 = malloc_type_malloc(size, 0x100004077774924uLL);
  if (v6)
  {
    if (sub_10001D348(a1, v4, v6, v3) == -1)
    {
      free(v6);
      return 0;
    }
  }

  else
  {
    *(a1 + 40) = 4;
  }

  return v6;
}

uint64_t tdb_exists(uint64_t result, char *a2, size_t a3)
{
  if (result)
  {
    v5 = result;
    memset(v14, 0, sizeof(v14));
    v6 = 596579247 * a3;
    if (a3)
    {
      v7 = 0;
      v8 = 1;
      v9 = a2;
      do
      {
        v10 = *v9++;
        v6 += v10 << (v7 % 0x18);
        v11 = a3 > v8++;
        v7 += 5;
      }

      while (v11);
    }

    v12 = 1103515243 * v6 + 12345;
    sub_10001C124(result, v12 % *(result + 80));
    v13 = sub_10001C1B4(v5, a2, a3, v12, v14);
    sub_10001C354(v5, v12 % v5[20]);
    return v13 != 0;
  }

  return result;
}

uint64_t tdb_traverse(_DWORD *a1, unsigned int (*a2)(uint64_t, void *, void, void *, void, uint64_t), uint64_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a1[20])
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v15 = 0;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  while (1)
  {
    sub_10001C124(a1, v6);
    if (sub_10001D348(a1, 4 * (v6 % a1[20]) + 44, &v15, 4u) == -1)
    {
      break;
    }

    v8 = v15;
    if (v15)
    {
      while (sub_10001C800(a1, v8, &v12) != -1)
      {
        v9 = sub_10001C518(a1, v15 + 24, (HIDWORD(v13) + v13));
        if (!v9)
        {
          break;
        }

        v10 = v9;
        v7 = (v7 + 1);
        if (a2 && a2(a1, v9, v13, &v9[v13], HIDWORD(v13), a3))
        {
          free(v10);
          goto LABEL_17;
        }

        free(v10);
        v8 = HIDWORD(v12);
        v15 = HIDWORD(v12);
        if (!HIDWORD(v12))
        {
          goto LABEL_11;
        }
      }

      break;
    }

LABEL_11:
    sub_10001C354(a1, v6 % a1[20]);
    if (++v6 >= a1[20])
    {
      return v7;
    }
  }

  v7 = 0xFFFFFFFFLL;
LABEL_17:
  sub_10001C354(a1, v6 % a1[20]);
  return v7;
}

uint64_t sub_10001C800(_DWORD *a1, uint64_t a2, unsigned int *a3)
{
  result = sub_10001D348(a1, a2, a3, 0x18u);
  if (result != -1)
  {
    if (a3[5] == 637606297)
    {
      if (sub_10001DA5C(a1, a3[1]))
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      a1[10] = 1;
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void *tdb_firstkey(_DWORD *a1)
{
  if (a1)
  {
    v10 = 0;
    if (a1[20])
    {
      v2 = 0;
      v7 = 0;
      size = 0;
      v3 = 44;
      v9 = 0;
      while (1)
      {
        sub_10001C124(a1, v2);
        if (sub_10001D348(a1, v3, &v10, 4u) == -1)
        {
          break;
        }

        v4 = v10;
        if (v10)
        {
          goto LABEL_8;
        }

        sub_10001C354(a1, v2 % a1[20]);
        ++v2;
        v3 += 4;
        if (v2 >= a1[20])
        {
          v4 = v10;
          if (!v10)
          {
            return 0;
          }

LABEL_8:
          if (sub_10001C800(a1, v4, &v7) != -1)
          {
            v5 = sub_10001C518(a1, v10 + 24, size);
            sub_10001C354(a1, v2 % a1[20]);
            return v5;
          }

          break;
        }
      }

      sub_10001C354(a1, v2 % a1[20]);
    }
  }

  return 0;
}

void *tdb_nextkey(_DWORD *a1, char *a2, size_t a3)
{
  if (a1)
  {
    v18 = 0;
    size = 0;
    v20 = 0;
    v6 = 596579247 * a3;
    if (a3)
    {
      v7 = 0;
      v8 = 1;
      v9 = a2;
      do
      {
        v10 = *v9++;
        v6 += v10 << (v7 % 0x18);
        v11 = a3 > v8++;
        v7 += 5;
      }

      while (v11);
    }

    v12 = 1103515243 * v6 + 12345;
    v13 = v12 % a1[20];
    sub_10001C124(a1, v13);
    v21 = sub_10001C1B4(a1, a2, a3, v12, &v18);
    if (v21)
    {
      v21 = HIDWORD(v18);
    }

    while (!v21)
    {
      sub_10001C354(a1, v13++);
      v14 = a1[20];
      if (v13 >= v14 - 1)
      {
        return 0;
      }

      v15 = 4 * (v13 % v14);
      sub_10001C124(a1, v13);
      if (sub_10001D348(a1, v15 + 44, &v21, 4u) == -1)
      {
        goto LABEL_13;
      }
    }

    if (sub_10001C800(a1, v21, &v18) != -1)
    {
      v16 = sub_10001C518(a1, v21 + 24, size);
      sub_10001C354(a1, v13);
      return v16;
    }

LABEL_13:
    sub_10001C354(a1, v13);
  }

  return 0;
}

uint64_t tdb_delete(_DWORD *a1, char *a2, size_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v28 = 0;
  size[1] = 0;
  v27 = 0;
  size[0] = 0;
  v25 = 0;
  v6 = 596579247 * a3;
  v24 = 0uLL;
  if (a3)
  {
    v7 = 0;
    v8 = 1;
    v9 = a2;
    do
    {
      v10 = *v9++;
      v6 += v10 << (v7 % 0x18);
      v11 = a3 > v8++;
      v7 += 5;
    }

    while (v11);
  }

  v12 = 1103515243 * v6 + 12345;
  sub_10001C124(a1, v12 % a1[20]);
  if (sub_10001D348(a1, 4 * (v12 % a1[20]) + 44, &v28, 4u) != -1)
  {
    v13 = v28;
    if (v28)
    {
      v14 = 0;
      while (sub_10001C800(a1, v13, size) != -1)
      {
        if (v12 == v27 && a3 == LODWORD(size[1]))
        {
          v15 = sub_10001C518(a1, v28 + 24, LODWORD(size[1]));
          if (!v15)
          {
            break;
          }

          v16 = v15;
          if (!memcmp(a2, v15, a3))
          {
            if (v14)
            {
              DWORD1(v24) = HIDWORD(size[0]);
              v20 = &v24;
              v21 = a1;
              v22 = v14;
              v23 = 24;
            }

            else
            {
              v22 = 4 * (v12 % a1[20]) + 44;
              v20 = size + 4;
              v21 = a1;
              v23 = 4;
            }

            if (sub_10001C2B4(v21, v22, v20, v23) == -1)
            {
              free(v16);
              break;
            }

            sub_10001C354(a1, v12 % a1[20]);
            sub_10001C124(a1, -1);
            if (sub_10001D348(a1, 0x28u, size + 4, 4u) != -1)
            {
              HIDWORD(v27) = -637606298;
              if (sub_10001C2B4(a1, v28, size, 0x18u) != -1 && sub_10001C2B4(a1, 0x28u, &v28, 4u) != -1)
              {
                free(v16);
                v18 = 0;
                v17 = -1;
                goto LABEL_17;
              }
            }

            free(v16);
            v17 = -1;
            goto LABEL_16;
          }

          free(v16);
        }

        v14 = v28;
        v24 = *size;
        v25 = v27;
        v13 = HIDWORD(size[0]);
        v28 = HIDWORD(size[0]);
        if (!HIDWORD(size[0]))
        {
          break;
        }
      }
    }
  }

  v17 = v12 % a1[20];
LABEL_16:
  v18 = 0xFFFFFFFFLL;
LABEL_17:
  sub_10001C354(a1, v17);
  return v18;
}

uint64_t tdb_store(uint64_t a1, char *a2, size_t a3, const void *a4, size_t a5, int a6)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v44 = 0uLL;
  v45 = 0;
  v12 = 596579247 * a3;
  if (a3)
  {
    v13 = 0;
    v14 = 1;
    v15 = a2;
    do
    {
      v16 = *v15++;
      v12 += v16 << (v13 % 0x18);
      v17 = a3 > v14++;
      v13 += 5;
    }

    while (v17);
  }

  if (a6 == 2)
  {
    if (tdb_exists(a1, a2, a3))
    {
      *(a1 + 40) = 5;
      return 0xFFFFFFFFLL;
    }
  }

  else if (!tdb_update(a1, a2, a3, a4, a5))
  {
    return 0;
  }

  v52 = 0;
  v50 = 0uLL;
  v51 = 0;
  v48 = 0uLL;
  v49 = 0;
  v46[0] = 0;
  v46[1] = 0;
  v47 = 0;
  sub_10001C124(a1, -1);
  if (sub_10001D348(a1, 0x28u, &v52, 4u) != -1)
  {
    v19 = a5 + a3;
    v43 = 1103515243 * v12 + 12345;
    while (1)
    {
      v20 = v52;
      if (v52)
      {
        break;
      }

LABEL_21:
      v55[0] = 0;
      v55[1] = 0;
      v56 = 0;
      v54 = 0;
      __buf = 0;
      sub_10001C124(a1, -1);
      sub_10001DA5C(a1, *(a1 + 20) + 1);
      v23 = *(a1 + 16);
      v24 = *(a1 + 20);
      v25 = 10 * (a5 + a3) + 240 + v24;
      if (v23 != -1)
      {
        lseek(v23, v25 | 0x1FFFu, 0);
        if (write(*(a1 + 16), &__buf, 1uLL) != 1)
        {
          goto LABEL_35;
        }
      }

      v26 = (v25 & 0xFFFFE000) - v24;
      LODWORD(v55[0]) = v26 + 8168;
      HIDWORD(v56) = -637606298;
      if (sub_10001D348(a1, 0x28u, v55 + 4, 4u) == -1)
      {
        goto LABEL_35;
      }

      v27 = v26 + 0x2000;
      v28 = *(a1 + 16);
      v29 = (*(a1 + 20) + v27);
      *(a1 + 20) = v29;
      if (v28 == -1)
      {
        *(a1 + 8) = malloc_type_realloc(*(a1 + 8), v29, 0x9B74745BuLL);
        LODWORD(v29) = *(a1 + 20);
      }

      if (sub_10001C2B4(a1, v29 - v27, v55, 0x18u) == -1 || (v54 = *(a1 + 20) - v27, sub_10001C2B4(a1, 0x28u, &v54, 4u) == -1))
      {
LABEL_35:
        sub_10001C354(a1, -1);
        goto LABEL_49;
      }

      sub_10001C354(a1, -1);
      if (sub_10001D348(a1, 0x28u, &v52, 4u) == -1)
      {
        goto LABEL_49;
      }
    }

    v21 = 0;
    while (sub_10001D348(a1, v20, &v50, 0x18u) != -1 && HIDWORD(v51) == -637606298)
    {
      if (v50 >= v19)
      {
        if (v19 + 52 < v50)
        {
          LODWORD(v46[0]) = v50 - (v19 & 0xFFFFFFFC) - 28;
          HIDWORD(v46[0]) = DWORD1(v50);
          HIDWORD(v47) = -637606298;
          LODWORD(v50) = (v19 & 0xFFFFFFFC) + 4;
          DWORD1(v50) = (v19 & 0xFFFFFFFC) + v52 + 28;
          if (sub_10001C2B4(a1, DWORD1(v50), v46, 0x18u) == -1 || sub_10001C2B4(a1, v52, &v50, 0x18u) == -1)
          {
            break;
          }
        }

        if (v21)
        {
          DWORD1(v48) = DWORD1(v50);
          v30 = &v48;
          v31 = a1;
          v32 = v21;
          v33 = 24;
        }

        else
        {
          v30 = &v50 + 4;
          v31 = a1;
          v32 = 40;
          v33 = 4;
        }

        if (sub_10001C2B4(v31, v32, v30, v33) == -1)
        {
          break;
        }

        v18 = 0xFFFFFFFFLL;
        sub_10001C354(a1, -1);
        v34 = v52;
        LODWORD(v55[0]) = v52;
        if (!v52)
        {
          return v18;
        }

        sub_10001C124(a1, v43 % *(a1 + 80));
        if (a6 != 2)
        {
          tdb_delete(a1, a2, a3);
        }

        if (sub_10001D348(a1, v34, &v44, 0x18u) != -1 && HIDWORD(v45) == -637606298)
        {
          v35 = 4 * (v43 % *(a1 + 80));
          if (sub_10001D348(a1, v35 + 44, &v44 + 4, 4u) != -1)
          {
            *(&v44 + 1) = __PAIR64__(a5, a3);
            v45 = v43 | 0x2601199900000000;
            v36 = v19 + 24;
            v37 = malloc_type_malloc(v19 + 24, 0x1000040504FFAC1uLL);
            if (v37)
            {
              v38 = v37;
              v39 = v44;
              *(v37 + 2) = v45;
              *v37 = v39;
              v40 = v37 + 24;
              memcpy(v37 + 24, a2, a3);
              memcpy(&v40[a3], a4, a5);
              v41 = sub_10001C2B4(a1, v34, v38, v36);
              free(v38);
              if (v41 != -1 && sub_10001C2B4(a1, v35 + 44, v55, 4u) != -1)
              {
                sub_10001C354(a1, v43 % *(a1 + 80));
                return 0;
              }
            }

            else
            {
              *(a1 + 40) = 4;
            }
          }
        }

        sub_10001C354(a1, v43 % *(a1 + 80));
        return 0xFFFFFFFFLL;
      }

      v48 = v50;
      v49 = v51;
      v21 = v52;
      v20 = DWORD1(v50);
      v52 = DWORD1(v50);
      if (!DWORD1(v50))
      {
        goto LABEL_21;
      }
    }
  }

LABEL_49:
  v18 = 0xFFFFFFFFLL;
  sub_10001C354(a1, -1);
  return v18;
}

uint64_t sub_10001D348(uint64_t a1, unsigned int a2, void *a3, unsigned int a4)
{
  if (sub_10001DA5C(a1, a4 + a2))
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    memcpy(a3, (v9 + a2), a4);
  }

  else if (lseek(*(a1 + 16), a2, 0) != a2 || read(*(a1 + 16), a3, a4) != a4)
  {
    *(a1 + 40) = 2;
    return 0xFFFFFFFFLL;
  }

  return 0;
}

_OWORD *tdb_open(char *a1, int a2, char a3, __int16 a4, uint64_t a5)
{
  memset(&v22, 0, sizeof(v22));
  __fd = 0u;
  memset(v25, 0, sizeof(v25));
  LODWORD(__fd) = -1;
  v23 = 0uLL;
  if ((a4 & 3) != 1)
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 128;
    }

    DWORD2(__fd) = (a4 & 3) == 0;
    if (a1)
    {
      v9 = open(a1, a4, a5);
      LODWORD(__fd) = v9;
      if (v9 == -1)
      {
        goto LABEL_41;
      }

      fcntl(v9, 2, 1);
    }

    sub_10001D820(&v23, 0, 1, 3, 9);
    if ((a3 & 1) != 0 && !sub_10001D820(&v23, 4u, 1, 3, 8))
    {
      ftruncate(__fd, 0);
      sub_10001D820(&v23, 4u, 0, 3, 8);
    }

    sub_10001D820(&v23, 4u, 1, 1, 9);
    if (read(__fd, &v25[12], 0x28uLL) == 40 && !(*&v25[12] ^ 0x656C696620424454 | *&v25[20] ^ 0xALL) && *&v25[44] == 637606248)
    {
      goto LABEL_14;
    }

    if ((a4 & 0x200) == 0)
    {
LABEL_41:
      if (v23)
      {
        free(v23);
      }

      goto LABEL_43;
    }

    memset(&__buf[10], 0, 22);
    strcpy(__buf, "TDB file\n");
    LODWORD(v28) = 637606248;
    HIDWORD(v28) = v8;
    lseek(__fd, 0, 0);
    ftruncate(__fd, 0);
    if (__fd == -1 || write(__fd, __buf, 0x28uLL) == 40)
    {
      memset(v26, 0, sizeof(v26));
      if (v8 >= 15)
      {
        v10 = 0;
        v11 = v8 + 16;
        v12 = 40;
        while (__fd == -1 || write(__fd, v26, 0x40uLL) == 64)
        {
          v12 += 64;
          v10 += 16;
          v11 -= 16;
          if (v11 <= 30)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_40;
      }

      v10 = 0;
      v12 = 40;
LABEL_26:
      if (v10 <= v8)
      {
        v13 = v8 - v10 + 1;
        while (__fd == -1 || write(__fd, v26, 4uLL) == 4)
        {
          v12 += 4;
          if (!--v13)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_40;
      }

LABEL_31:
      v14 = __fd;
      if (__fd != -1)
      {
        goto LABEL_34;
      }

      *(&v23 + 1) = malloc_type_calloc(v12, 1uLL, 0x76AD00A4uLL);
      DWORD1(__fd) = v12;
      if (*(&v23 + 1))
      {
        *&v25[12] = *__buf;
        *&v25[28] = *&__buf[16];
        *&v25[44] = v28;
        v14 = __fd;
LABEL_34:
        lseek(v14, 0, 0);
        if (__fd == -1)
        {
          goto LABEL_37;
        }

        if (read(__fd, &v25[12], 0x28uLL) == 40)
        {
LABEL_14:
          if (__fd != -1)
          {
            fstat(__fd, &v22);
            *&v23 = strdup(a1);
            DWORD1(__fd) = v22.st_size;
          }

LABEL_37:
          *v25 = malloc_type_calloc((*&v25[48] + 1), 4uLL, 0x100004052888210uLL);
          if (*v25)
          {
            v15 = malloc_type_malloc(0x58uLL, 0x10900406C209894uLL);
            if (v15)
            {
              v16 = v15;
              v17 = __fd;
              *v15 = v23;
              v15[1] = v17;
              v18 = *v25;
              v19 = *&v25[16];
              v20 = *&v25[32];
              *(v15 + 10) = *&v25[48];
              v15[3] = v19;
              v15[4] = v20;
              v15[2] = v18;
              sub_10001D820(&v23, 0, 0, 3, 9);
              return v16;
            }
          }

          goto LABEL_41;
        }

        goto LABEL_41;
      }
    }

LABEL_40:
    *&v25[8] = 2;
    goto LABEL_41;
  }

LABEL_43:
  if (__fd != -1)
  {
    close(__fd);
  }

  if (*(&v23 + 1))
  {
    munmap(*(&v23 + 1), DWORD1(__fd));
  }

  return 0;
}

uint64_t sub_10001D820(_DWORD *a1, unsigned int a2, int a3, __int16 a4, int a5)
{
  v6 = a1[4];
  if (v6 == -1)
  {
    return 0;
  }

  if (a1[6])
  {
    return 0xFFFFFFFFLL;
  }

  if (a3 != 1)
  {
    a4 = 2;
  }

  v11 = a4;
  v12 = 0;
  v9[0] = a2;
  v9[1] = 1;
  v10 = 0;
  result = fcntl(v6, a5, v9);
  if (result)
  {
    a1[10] = 3;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t tdb_close(unsigned int *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != -1)
  {
    close(v3);
  }

  v4 = *(a1 + 4);
  if (v4)
  {
    free(v4);
  }

  v5 = *(a1 + 1);
  if (v5)
  {
    if (a1[4] == -1)
    {
      free(v5);
    }

    else
    {
      munmap(v5, a1[5]);
    }
  }

  *(a1 + 10) = 0;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  free(a1);
  return 0;
}

uint64_t tdb_writelock(uint64_t a1)
{
  if (a1)
  {
    return sub_10001C124(a1, -1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t tdb_writeunlock(uint64_t a1)
{
  if (a1)
  {
    return sub_10001C354(a1, -1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t tdb_lockchain(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 596579247 * a3;
  if (a3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *a2++;
      v3 += v6 << (v4 % 0x18);
      v7 = a3 >= v5;
      v8 = a3 == v5++;
      v4 += 5;
    }

    while (!v8 && v7);
  }

  return sub_10001C124(a1, (1103515243 * v3 + 12345) % *(a1 + 80));
}

uint64_t tdb_unlockchain(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 596579247 * a3;
  if (a3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *a2++;
      v3 += v6 << (v4 % 0x18);
      v7 = a3 >= v5;
      v8 = a3 == v5++;
      v4 += 5;
    }

    while (!v8 && v7);
  }

  return sub_10001C354(a1, (1103515243 * v3 + 12345) % *(a1 + 80));
}

uint64_t sub_10001DA5C(_DWORD *a1, unsigned int a2)
{
  if (a1[5] >= a2)
  {
    return 0;
  }

  v9 = v2;
  v10 = v3;
  v5 = a1[4];
  if (v5 == -1)
  {
    return 0;
  }

  memset(&v8, 0, sizeof(v8));
  fstat(v5, &v8);
  if (v8.st_size <= a2)
  {
    a1[10] = 2;
    return 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
    a1[5] = v8.st_size;
  }

  return result;
}

BOOL sub_10001DAF8(char *__s2, uint64_t a2, int a3)
{
  if (!*__s2)
  {
    return 0;
  }

  v4 = __s2;
  memset(&v6, 0, sizeof(v6));
  if (strncmp("/dev/", __s2, 5uLL))
  {
    __strlcpy_chk();
    __strlcat_chk();
    v4 = &v7;
  }

  if (stat(v4, &v6) < 0)
  {
    if (!a3)
    {
      return *__error() != 2;
    }

    option_error("Couldn't stat %s: %m");
    return 0;
  }

  if ((v6.st_mode & 0xF000) != 0x2000)
  {
    if (a3)
    {
      option_error("%s is not a character device");
    }

    return 0;
  }

  if (a3)
  {
    __strlcpy_chk();
    *devstat = v6;
    default_device = 0;
  }

  return 1;
}

uint64_t sub_10001DC80(char *a1, uint64_t a2, int a3)
{
  __endptr = 0;
  v5 = strtol(a1, &__endptr, 0);
  if (__endptr == a1)
  {
    return 0;
  }

  if (*__endptr || v5 == 0)
  {
    return 0;
  }

  if (a3)
  {
    inspeed = v5;
    slprintf(byte_10004B994, 16, "%d", v5);
  }

  return 1;
}

uint64_t sub_10001DD10()
{
  connect_script = 0;
  initializer = 0;
  disconnect_script = 0;
  default_device = 1;
  LOBYTE(devnam) = 0;
  inspeed = 0;
  return 1;
}

uint64_t sub_10001DD54()
{
  dword_10004792C |= 0xA0000u;
  byte_100047914 = 1;
  crtscts = -2;
  return 1;
}

uint64_t sub_10001DD88(const char **a1)
{
  i = *a1;
  if (**a1)
  {
    __endptr = 0;
    v2 = 1;
    while (1)
    {
      v3 = strtol(i, &__endptr, 16);
      v4 = __endptr;
      if (i == __endptr)
      {
        break;
      }

      if (v3 > 0xFF || v3 == 94)
      {
        option_error("can't escape character 0x%x", v3);
        v2 = 0;
      }

      else
      {
        xmit_accm[v3 >> 5] |= 1 << v3;
      }

      for (i = v4; ; ++i)
      {
        v5 = *i;
        if (v5 != 32 && v5 != 44)
        {
          break;
        }
      }

      if (!*i)
      {
        goto LABEL_15;
      }
    }

    option_error("escape parameter contains invalid hex number '%s'", i);
    return 0;
  }

  else
  {
    v2 = 1;
LABEL_15:
    dword_1000479B4 = xmit_accm[0];
  }

  return v2;
}

void sub_10001DE94(uint64_t a1, void (*a2)(uint64_t, const char *, ...), uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  do
  {
    while (1)
    {
      v6 = v5 == 125 ? 127 : v5;
      if (((xmit_accm[v6 >> 5] >> v6) & 1) == 0)
      {
        break;
      }

      if (v4)
      {
        a2(a3, ",");
      }

      a2(a3, "%x", v6);
      v5 = v6 + 1;
      v4 = 1;
      if (v6 >= 255)
      {
        return;
      }
    }

    v5 = v6 + 1;
  }

  while (v6 < 255);
  if ((v4 & 1) == 0)
  {

    a2(a3, "oops # nothing escaped");
  }
}

void tty_process_extra_options()
{
  if (notty)
  {
    v0 = 0;
  }

  else
  {
    v0 = ptycommand == 0;
  }

  if (!v0)
  {
    using_pty = 1;
    return;
  }

  using_pty = pty_socket != 0;
  if (!pty_socket)
  {
    if (default_device)
    {
      if (!isatty(0) || !ttyname(0))
      {
        option_error("no device specified and stdin is not a tty");
        goto LABEL_14;
      }

      __strlcpy_chk();
      if (stat(&devnam, devstat) < 0)
      {
        fatal("Couldn't stat default device %s: %m", &devnam);
      }
    }

    if (options_for_tty())
    {
      return;
    }

LABEL_14:
    exit(2);
  }
}

uint64_t tty_check_options()
{
  if (demand)
  {
    v0 = connect_script == 0;
  }

  else
  {
    v0 = 0;
  }

  if (v0 && ptycommand == 0)
  {
    option_error("connect script is required for demand-dialling\n");
    goto LABEL_46;
  }

  if (connect_script)
  {
    v2 = 0;
  }

  else
  {
    v2 = holdoff_specified == 0;
  }

  if (v2)
  {
    holdoff = 0;
  }

  memset(&v6, 0, sizeof(v6));
  if (using_pty)
  {
    if (default_device)
    {
      if (ptycommand && notty)
      {
        option_error("pty option is incompatible with notty option");
      }

      else
      {
        if (notty)
        {
          v3 = 0;
        }

        else
        {
          v3 = ptycommand == 0;
        }

        v4 = !v3;
        if (!pty_socket || !v4)
        {
          default_device = notty;
          lockflag = 0;
          modem = 0;
          if (notty && log_to_fd <= 1)
          {
            log_to_fd = -1;
          }

          goto LABEL_34;
        }

        option_error("socket option is incompatible with pty and notty");
      }
    }

    else
    {
      option_error("%s option precludes specifying device name");
    }

LABEL_46:
    exit(2);
  }

  if ((fstat(0, &v6) & 0x80000000) == 0 && (v6.st_mode & 0xF000) == 0x2000 && v6.st_rdev == *&devstat[24])
  {
    default_device = 1;
    if ((fcntl(0, 3) & 3) == 2)
    {
      privopen = 1;
    }
  }

LABEL_34:
  if (default_device)
  {
    nodetach = 1;
  }

  result = log_to_fd;
  if ((log_to_fd & 0x80000000) == 0)
  {
    result = fstat(log_to_fd, &v6);
    if ((result & 0x80000000) == 0 && (v6.st_mode & 0xF000) == 0x2000 && v6.st_rdev == *&devstat[24])
    {
      log_to_fd = -1;
    }
  }

  return result;
}

uint64_t connect_tty(_DWORD *a1)
{
  *a1 = -1;
  __strlcpy_chk();
  dword_10004B9A8 = -1;
  v2 = &unk_10004B000;
  dword_10004B9AC = -1;
  dword_10004B9A4 = -1;
  if (using_pty)
  {
    v3 = 0;
  }

  else
  {
    v3 = record_file == 0;
  }

  if (!v3)
  {
    if (!get_pty(&dword_10004B9A8, &dword_10004B9AC, ppp_devnam, uid))
    {
      error("Couldn't allocate pseudo-tty");
      v7 = 1;
      goto LABEL_56;
    }

    clocal = 1;
    set_up_tty(dword_10004B9AC, 1);
  }

  if (lockflag && !privopen)
  {
    if ((lock(&devnam) & 0x80000000) != 0)
    {
      v7 = 6;
      goto LABEL_56;
    }

    locked = 1;
  }

  hungup = 0;
  do_modem_hungup = 0;
  if (redialingalternate && (v4 = altconnect_script) != 0)
  {
    v5 = altconnect_data;
    v6 = altconnect_data_len;
  }

  else if (doing_callback)
  {
    v5 = 0;
    v6 = 0;
    v4 = callback_script;
  }

  else
  {
    v4 = connect_script;
    v5 = connect_data;
    v6 = connect_data_len;
  }

  memset(&v41, 0, sizeof(v41));
  if (!devnam)
  {
LABEL_61:
    if (kill_link)
    {
      return 0xFFFFFFFFLL;
    }

    *status = 9;
    if (ptycommand)
    {
      if (record_file)
      {
        if (pipe(&v42) < 0 || pipe(&__endptr) < 0)
        {
          fatal("Couldn't create pipes for record option: %m");
        }

        fcntl(*&v42.sa_len, 2, 1);
        fcntl(SHIDWORD(__endptr), 2, 1);
        v19 = &unk_100049000;
        if (device_script(ptycommand, __endptr, *&v42.sa_data[2], 1, 0xFFFFFFFF, 0, 0))
        {
          close(*&v42.sa_len);
          close(*&v42.sa_data[2]);
          close(__endptr);
          v20 = HIDWORD(__endptr);
LABEL_70:
          close(v20);
          return 0xFFFFFFFFLL;
        }

        v40 = v5;
        v30 = sub_10001F2C0(*&v42.sa_len, HIDWORD(__endptr));
        close(*&v42.sa_len);
        close(*&v42.sa_data[2]);
        close(__endptr);
        close(SHIDWORD(__endptr));
        if (!v30)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        v40 = v5;
        notify(connectscript_started_notify, 0);
        v17 = 0xFFFFFFFFLL;
        if ((device_script(ptycommand, dword_10004B9A8, dword_10004B9A8, 1, 0xFFFFFFFF, 0, 0) & 0x80000000) != 0)
        {
          return v17;
        }

        dword_10004B9B0 = v2[619];
        close(dword_10004B9A8);
        dword_10004B9A8 = -1;
        if (pty_delay)
        {
          if (wait_input_fd(dword_10004B9B0, pty_delay) < 1)
          {
            return v17;
          }
        }

        notify(connectscript_finished_notify, 0);
        v19 = &unk_100049000;
      }
    }

    else
    {
      v40 = v5;
      v21 = pty_socket;
      if (pty_socket)
      {
        __endptr = 0;
        v22 = strchr(pty_socket, 58);
        if (!v22 || (v23 = v22, v24 = v22 + 1, v25 = strtol(v22 + 1, &__endptr, 10), v23 == v21) || v25 < 0 || __endptr == v24)
        {
          error("Can't parse host:port for socket destination");
          return 0xFFFFFFFFLL;
        }

        *v23 = 0;
        v26 = inet_addr(v21);
        if (v26 == -1)
        {
          v27 = gethostbyname(v21);
          if (!v27)
          {
            error("%s: unknown host in socket option", v21);
            *v23 = 58;
            return 0xFFFFFFFFLL;
          }

          v26 = **v27->h_addr_list;
        }

        *v23 = 58;
        v28 = socket(2, 1, 0);
        if ((v28 & 0x80000000) != 0)
        {
          error("Can't create socket: %m");
          return 0xFFFFFFFFLL;
        }

        v29 = v28;
        *&v42.sa_len = 512;
        *&v42.sa_data[6] = 0;
        *v42.sa_data = htons();
        *&v42.sa_data[2] = v26;
        if (connect(v29, &v42, 0x10u) < 0)
        {
          error("Can't connect to %s: %m", v21);
          v20 = v29;
          goto LABEL_70;
        }

        v19 = &unk_100049000;
        if (!sub_10001F2C0(v29, v29))
        {
          return 0xFFFFFFFFLL;
        }
      }

      else if (notty)
      {
        v19 = &unk_100049000;
        if (!sub_10001F2C0(0, 1))
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        v19 = &unk_100049000;
        if (record_file && !sub_10001F2C0(dword_10004B9B0, dword_10004B9B0))
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    if (v4)
    {
      v31 = initializer;
      if (!*v4 && !initializer)
      {
        goto LABEL_134;
      }
    }

    else
    {
      v31 = initializer;
      if (!initializer)
      {
        v4 = 0;
        goto LABEL_134;
      }
    }

    if (dword_10004B9A4 != -1 && !default_device && modem)
    {
      setdtr(dword_10004B9A4, 0);
      sleep(1u);
      setdtr(dword_10004B9A4, 1);
      v31 = initializer;
    }

    if (v31 && *v31)
    {
      if (kill_link)
      {
        return 0xFFFFFFFFLL;
      }

      notify(initscript_started_notify, 0);
      if (device_script(initializer, dword_10004B9B0, dword_10004B9B0, 0, 0xFFFFFFFF, 0, 0))
      {
        error("Initializer script failed");
        v32 = 18;
LABEL_123:
        *status = v32;
        return 0xFFFFFFFFLL;
      }

      if (kill_link)
      {
        disconnect_tty();
        return 0xFFFFFFFFLL;
      }

      notify(initscript_finished_notify, 0);
      info("Serial port initialized.");
    }

    if (v4 && *v4)
    {
      if (kill_link)
      {
        return 0xFFFFFFFFLL;
      }

      notify(connectscript_started_notify, 0);
      v33 = device_script(v4, dword_10004B9B0, dword_10004B9B0, 0, connector_uid, v40, v6);
      *a1 = v33;
      if (v33)
      {
        if (cancelcode == -1 || v33 != cancelcode)
        {
          error("Connect script failed");
          v32 = 8;
          goto LABEL_123;
        }

        goto LABEL_161;
      }

      if (kill_link)
      {
        return 4294967294;
      }

      notify(connectscript_finished_notify, 0);
      info("Serial connection established.");
      if (link_up_hook && !link_up_hook(v34))
      {
        goto LABEL_161;
      }

      link_up_done = 1;
    }

    if (dword_10004B9A4 != -1)
    {
      *&v42.sa_len = 0;
      if (ioctl(dword_10004B9A4, 0x4004746AuLL, &v42) != -1 && (v42.sa_len & 0x40) != 0)
      {
        clocal = 0;
        set_up_tty_local(dword_10004B9A4, 0);
      }
    }

    if (doing_callback == 1)
    {
      v4 = 0;
    }

LABEL_134:
    if (!v4 && modem && devnam)
    {
      ioctl(dword_10004B9B0, 0x2000740EuLL, 0);
      while (1)
      {
        v35 = open(&devnam, 2);
        if ((v35 & 0x80000000) == 0)
        {
          break;
        }

        if (*__error() != 4)
        {
          error("Failed to reopen %s: %m", &devnam);
          *status = 7;
        }

        if (!persist)
        {
          return 0xFFFFFFFFLL;
        }

        v17 = 0xFFFFFFFFLL;
        if (*__error() == 4 && !hungup && kill_link == 0)
        {
          continue;
        }

        return v17;
      }

      v37 = v35;
      if (ioctl(v35, 0x2000740DuLL, 0) < 0)
      {
        error("Failed to reacquire the port %s exclusively: %m", &devnam);
        *status = 7;
        v20 = v37;
        goto LABEL_70;
      }

      close(v37);
      v19 = &unk_100049000;
    }

    slprintf(&v42, 16, "%d", baud_rate);
    script_setenv("SPEED", &v42);
    if (!terminal_window_hook && (!terminal_script || !*terminal_script))
    {
LABEL_164:
      if (welcomer && *welcomer && device_script(welcomer, dword_10004B9B0, dword_10004B9B0, 0, 0xFFFFFFFF, 0, 0))
      {
        warning("Welcome script failed");
      }

      if (v4 | v19[400])
      {
        listen_time = connect_delay;
      }

      return dword_10004B9B0;
    }

    if (!kill_link)
    {
      notify(terminalscript_started_notify, 0);
      if (terminal_window_hook)
      {
        v38 = terminal_window_hook(terminal_script, dword_10004B9B0, dword_10004B9B0);
      }

      else
      {
        v38 = device_script(terminal_script, dword_10004B9B0, dword_10004B9B0, 0, 0xFFFFFFFF, terminal_data, terminal_data_len);
      }

      *a1 = v38;
      if (v38)
      {
        if (cancelcode == -1 || v38 != cancelcode)
        {
          error("Terminal script failed");
          v39 = 20;
          goto LABEL_173;
        }

LABEL_161:
        v39 = 5;
LABEL_173:
        *status = v39;
        return 4294967294;
      }

      if (!kill_link)
      {
        notify(terminalscript_finished_notify, 0);
        info("Terminal connection established.");
        goto LABEL_164;
      }
    }

    return 4294967294;
  }

  while (1)
  {
    if (privopen)
    {
      v8 = 0;
    }

    else
    {
      v8 = word_1000452F0 < 100;
    }

    v9 = v8;
    if (v9 == 1)
    {
      seteuid(uid);
    }

    dword_10004B9B0 = open(&devnam, 6, 0);
    v10 = *__error();
    if (v9)
    {
      seteuid(0);
    }

    if ((dword_10004B9B0 & 0x80000000) == 0)
    {
      if (ioctl(dword_10004B9B0, 0x2000740DuLL, 0) < 0)
      {
        v10 = *__error();
        goto LABEL_33;
      }

      dword_10004B9A4 = dword_10004B9B0;
      v11 = fcntl(dword_10004B9B0, 3);
      if (v11 == -1 || fcntl(dword_10004B9B0, 4, v11 & 0xFFFFFFFB) < 0)
      {
        warning("Couldn't reset non-blocking mode on device: %m");
      }

      if (fstat(dword_10004B9B0, &v41) < 0 || fchmod(dword_10004B9B0, v41.st_mode & 0xFFED) < 0)
      {
        warning("Couldn't restrict write permissions to %s: %m", &devnam);
      }

      else
      {
        tty_mode = v41.st_mode;
      }

      if (v4)
      {
        if (*v4)
        {
          v12 = 0;
        }

        else
        {
          v12 = initializer == 0;
        }

        v13 = !v12;
        clocal = v13;
        v14 = dword_10004B9B0;
        if (*v4)
        {
          v15 = 1;
          v2 = &unk_10004B000;
LABEL_60:
          set_up_tty(v14, v15);
          goto LABEL_61;
        }

        v16 = initializer;
      }

      else
      {
        v16 = initializer;
        clocal = initializer != 0;
        v14 = dword_10004B9B0;
      }

      v2 = &unk_10004B000;
      v15 = v16 != 0;
      goto LABEL_60;
    }

LABEL_33:
    *__error() = v10;
    if (v10 != 4)
    {
      break;
    }

    if (!persist)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (dword_10004B9B0 < 0)
  {
    error("Failed to open %s: %m", &devnam);
  }

  else
  {
    error("Failed to acquire %s in exclusive mode : %m", &devnam);
    close(dword_10004B9B0);
    dword_10004B9B0 = -1;
  }

  v7 = 7;
LABEL_56:
  *status = v7;
  return 0xFFFFFFFFLL;
}

void disconnect_tty()
{
  if (disconnect_script)
  {
    v0 = hungup == 0;
  }

  else
  {
    v0 = 0;
  }

  if (v0)
  {
    if ((dword_10004B9A4 & 0x80000000) == 0)
    {
      clocal = 1;
    }

    set_up_tty_local(dword_10004B9A4, 1);
    if (device_script(disconnect_script, dword_10004B9B0, dword_10004B9B0, 0, disconnector_uid, disconnect_data, disconnect_data_len))
    {

      warning("disconnect script failed");
    }

    else
    {

      info("Serial link disconnected.");
    }
  }
}

void tty_do_send_config(uint64_t a1, int a2, int a3, int a4)
{
  tty_set_xaccm(xmit_accm);

  tty_send_config(a1, a2, a3, a4);
}

uint64_t cleanup_tty()
{
  v0 = dword_10004B9A4;
  if ((dword_10004B9A4 & 0x80000000) == 0)
  {
    if (default_device)
    {
      v1 = 1;
    }

    else
    {
      v1 = modem == 0;
    }

    if (!v1)
    {
      setdtr(dword_10004B9A4, 0);
      sleep(1u);
      v0 = dword_10004B9A4;
    }

    restore_tty(v0);
    if (tty_mode != 0xFFFF && fchmod(dword_10004B9A4, tty_mode))
    {
      chmod(&devnam, tty_mode);
    }

    close(dword_10004B9A4);
    dword_10004B9A4 = -1;
  }

  result = tty_close_fds();
  if (locked)
  {
    result = unlock();
    locked = 0;
  }

  return result;
}

uint64_t tty_close_fds()
{
  if ((dword_10004B9A8 & 0x80000000) == 0)
  {
    close(dword_10004B9A8);
  }

  if ((dword_10004B9AC & 0x80000000) == 0)
  {
    close(dword_10004B9AC);
  }

  result = dword_10004B9A4;
  if ((dword_10004B9A4 & 0x80000000) == 0)
  {
    result = close(dword_10004B9A4);
    dword_10004B9A4 = -1;
  }

  return result;
}

void *tty_init()
{
  add_notifier(&pidchange, sub_10001F1F4, 0);
  result = add_notifier(&sigreceived, sub_10001F20C, 0);
  dword_10004B9A4 = -1;
  the_channel = &tty_channel;
  dword_100049CF0 = 1610612736;
  return result;
}

uint64_t sub_10001F1F4(uint64_t a1, uint64_t a2)
{
  if (locked)
  {
    return relock(a2);
  }

  return result;
}

void sub_10001F20C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (a2 == 1 && dword_10004B9A4 != -1 && phase != 12)
  {
    ioctl(dword_10004B9A4, 0x4004746AuLL, &v3);
    if (!clocal && (v3 & 0x40) == 0)
    {
      hungup = 1;
      do_modem_hungup = 1;
      if ((phase - 11) <= 0xFFFFFFFD)
      {
        *status = 16;
      }
    }
  }
}

uint64_t sub_10001F2C0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = safe_fork();
  if (v4 == -1)
  {
    error("Can't fork process for character shunt: %m");
    return 0;
  }

  else
  {
    v5 = v4;
    if (!v4)
    {
      close(dword_10004B9AC);
      setuid(uid);
      if (getuid() == uid)
      {
        v7 = getgid();
        setgid(v7);
        sys_close();
        if (!nodetach)
        {
          log_to_fd = -1;
        }

        sub_10001F400(v3, v2, record_file);
      }

      fatal("setuid failed");
    }

    charshunt_pid = v4;
    add_notifier(&sigreceived, sub_10001FE80, 0);
    close(dword_10004B9A8);
    dword_10004B9A8 = -1;
    dword_10004B9B0 = dword_10004B9AC;
    record_child(v5, "pppd (charshunt)", sub_10001FEA4, 0);
    return 1;
  }
}

void sub_10001F400(int a1, int a2, const char *a3)
{
  signal(1, 1);
  signal(2, 0);
  signal(15, 0);
  signal(20, 0);
  signal(30, 0);
  signal(31, 0);
  signal(6, 0);
  signal(14, 0);
  signal(8, 0);
  signal(4, 0);
  signal(13, 0);
  signal(3, 0);
  signal(11, 0);
  signal(10, 0);
  signal(7, 0);
  signal(27, 0);
  signal(12, 0);
  signal(5, 0);
  signal(26, 0);
  signal(24, 0);
  signal(25, 0);
  if (a1 > 1023 || a2 > 1023 || dword_10004B9A8 >= 1024)
  {
    fatal("internal error: file descriptor too large (%d, %d, %d)", a1, a2, dword_10004B9A8);
  }

  if (a3)
  {
    v5 = fopen(a3, "a");
    if (!v5)
    {
      error("Couldn't create record file %s: %m", a3);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = fcntl(dword_10004B9A8, 3);
  if (v6 == -1 || fcntl(dword_10004B9A8, 4, v6 | 4u) == -1)
  {
    warning("couldn't set pty master to nonblock: %m");
  }

  v7 = fcntl(a1, 3);
  if (v7 == -1 || fcntl(a1, 4, v7 | 4u) == -1)
  {
    v8 = "tty";
    if (!a1)
    {
      v8 = "stdin";
    }

    warning("couldn't set %s to nonblock: %m", v8);
  }

  if (a2 != a1)
  {
    v9 = fcntl(a2, 3);
    if (v9 == -1 || fcntl(a2, 4, v9 | 4u) == -1)
    {
      warning("couldn't set stdout to nonblock: %m");
    }
  }

  memset(&v69, 0, sizeof(v69));
  memset(&v68, 0, sizeof(v68));
  v66.tv_sec = 0;
  *&v66.tv_usec = 0;
  v64 = 0;
  v65 = 0;
  gettimeofday(&v66, 0);
  if (max_data_rate)
  {
    v10 = max_data_rate / 10;
    if (max_data_rate / 10 <= 100)
    {
      v10 = 100;
    }
  }

  else
  {
    v10 = 1505;
  }

  v53 = v10;
  v67.tv_sec = 0;
  *&v67.tv_usec = 0;
  if (dword_10004B9A8 <= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = dword_10004B9A8;
  }

  if (v5)
  {
    gettimeofday(&v67, 0);
    putc(7, v5);
    tv_sec = v67.tv_sec;
    putc(v67.tv_sec >> 24, v5);
    putc(tv_sec >> 16, v5);
    putc(tv_sec >> 8, v5);
    putc(tv_sec, v5);
    v67.tv_usec = 0;
  }

  v56 = 0;
  v57 = v5;
  v13 = 0;
  v14 = 0;
  v51 = 0;
  v52 = 0;
  v55 = 0;
  v15 = 0;
  v59 = 0;
  v61 = 1 << a2;
  v60 = &v68.fds_bits[a2 >> 5];
  v16 = 1;
  v17 = 1;
  v18 = 1;
  v19 = 1;
  v54 = 0x100000001;
  while (1)
  {
    __buf = v15;
    while (1)
    {
      v64 = 0;
      LODWORD(v65) = 10000;
      memset(&v69, 0, sizeof(v69));
      memset(&v68, 0, sizeof(v68));
      if (!v14)
      {
        if (v18)
        {
          v23 = __darwin_check_fd_set_overflow(a1, &v69, 0);
          v22 = &v69.fds_bits[a1 >> 5];
          v21 = 1 << a1;
          if (v23)
          {
            goto LABEL_38;
          }
        }

LABEL_40:
        v24 = 0;
        if (v13)
        {
          goto LABEL_41;
        }

        goto LABEL_45;
      }

      if (v17)
      {
        v20 = dword_10004B9A8;
        if (__darwin_check_fd_set_overflow(dword_10004B9A8, &v68, 0))
        {
          v21 = 1 << v20;
          v22 = &v68.fds_bits[v20 >> 5];
LABEL_38:
          v24 = 0;
          *v22 |= v21;
          if (v13)
          {
            goto LABEL_41;
          }

          goto LABEL_45;
        }

        goto LABEL_40;
      }

      v24 = &v64;
      if (v13)
      {
LABEL_41:
        if (v16)
        {
          v25 = __darwin_check_fd_set_overflow(a2, &v68, 0);
          v26 = &v68.fds_bits[a2 >> 5];
          v27 = 1 << a2;
          if (v25)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v24 = &v64;
        }

        goto LABEL_50;
      }

LABEL_45:
      if (v19)
      {
        v28 = dword_10004B9A8;
        if (__darwin_check_fd_set_overflow(dword_10004B9A8, &v69, 0))
        {
          v27 = 1 << v28;
          v26 = &v69.fds_bits[v28 >> 5];
LABEL_48:
          *v26 |= v27;
        }
      }

LABEL_50:
      if ((select(v11 + 1, &v69, &v68, 0, v24) & 0x80000000) == 0)
      {
        break;
      }

      if (*__error() != 4)
      {
        fatal("select");
      }
    }

    if (max_data_rate)
    {
      v63.tv_sec = 0;
      *&v63.tv_usec = 0;
      gettimeofday(&v63, 0);
      v29 = (((v63.tv_usec - v66.tv_usec) / 1000000.0 + (v63.tv_sec - v66.tv_sec)) * max_data_rate);
      v30 = v29 < 0;
      if (v51 < v29 || v29 < 0)
      {
        v32 = 0;
      }

      else
      {
        v32 = v51 - v29;
      }

      v33 = __OFSUB__(v52, v29);
      v34 = v52 - v29;
      if (v34 < 0 != v33)
      {
        v30 = 1;
      }

      if (v30)
      {
        v35 = 0;
      }

      else
      {
        v35 = v34;
      }

      v66 = v63;
    }

    else
    {
      v32 = 0;
      v35 = 0;
    }

    v36 = v59;
    v37 = v56;
    if (!__darwin_check_fd_set_overflow(a1, &v69, 0) || (v69.fds_bits[a1 >> 5] & (1 << a1)) == 0)
    {
      v39 = v57;
      goto LABEL_88;
    }

    v38 = read(a1, &inpacket_buf, 0x5E0uLL);
    v37 = v38;
    if ((v38 & 0x80000000) != 0)
    {
      v39 = v57;
      if (*__error() == 5)
      {
        goto LABEL_78;
      }

      if (*__error() == 4 || *__error() == 35)
      {
        v37 = 0;
        goto LABEL_87;
      }

      error("Error reading standard input: %m");
      goto LABEL_139;
    }

    v39 = v57;
    if (v38)
    {
      v40 = dword_10004B9A8;
      if (__darwin_check_fd_set_overflow(dword_10004B9A8, &v68, 0))
      {
        *(v68.fds_bits + ((v40 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v40;
      }

      if (v57)
      {
        v41 = sub_10001FEB0(v57, 2, &inpacket_buf, v37, &v67);
LABEL_80:
        if (!v41)
        {
          v39 = 0;
        }
      }

      goto LABEL_87;
    }

LABEL_78:
    write(dword_10004B9A8, &inpacket_buf, 0);
    if (v39)
    {
      v41 = sub_10001FEB0(v39, 4, 0, 0, &v67);
      v37 = 0;
      LODWORD(v54) = 0;
      goto LABEL_80;
    }

    v37 = 0;
    LODWORD(v54) = 0;
LABEL_87:
    __buf = &inpacket_buf;
LABEL_88:
    v42 = dword_10004B9A8;
    v43 = v55;
    if (__darwin_check_fd_set_overflow(dword_10004B9A8, &v69, 0) && ((*(v69.fds_bits + ((v42 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v42) & 1) != 0)
    {
      v44 = read(dword_10004B9A8, &outpacket_buf, 0x5E0uLL);
      v36 = v44;
      if ((v44 & 0x80000000) == 0)
      {
        if (v44)
        {
          if (__darwin_check_fd_set_overflow(a2, &v68, 0))
          {
            *v60 |= v61;
          }

          if (v39)
          {
            v43 = &outpacket_buf;
            if (!sub_10001FEB0(v39, 1, &outpacket_buf, v36, &v67))
            {
              v39 = 0;
            }

            goto LABEL_108;
          }

LABEL_107:
          v43 = &outpacket_buf;
          goto LABEL_108;
        }

LABEL_99:
        close(a2);
        if (v39)
        {
          v37 = 0;
          v36 = 0;
          v54 = 0;
          if (!sub_10001FEB0(v39, 3, 0, 0, &v67))
          {
            v39 = 0;
          }
        }

        else
        {
          v37 = 0;
          v36 = 0;
          v54 = 0;
        }

        goto LABEL_107;
      }

      if (*__error() == 5)
      {
        goto LABEL_99;
      }

      if (*__error() == 4 || *__error() == 35)
      {
        v36 = 0;
        goto LABEL_107;
      }

      error("Error reading pseudo-tty master: %m");
      goto LABEL_139;
    }

LABEL_108:
    if (__darwin_check_fd_set_overflow(a2, &v68, 0) && (*v60 & v61) != 0)
    {
      if (v36 + v35 <= v53)
      {
        v45 = v36;
      }

      else
      {
        v45 = v53 - v35;
      }

      v46 = write(a2, v43, v45);
      if (v46 < 0)
      {
        if (*__error() == 5)
        {
          v36 = 0;
          HIDWORD(v54) = 0;
        }

        else if (*__error() != 35 && *__error() != 4)
        {
          error("Error writing standard output: %m");
          goto LABEL_139;
        }
      }

      else
      {
        v43 = (v43 + (v46 & 0x7FFFFFFF));
        v36 = (v36 - v46);
        v35 += v46;
      }
    }

    v47 = dword_10004B9A8;
    v55 = v43;
    if (__darwin_check_fd_set_overflow(dword_10004B9A8, &v68, 0) && ((*(v68.fds_bits + ((v47 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v47) & 1) != 0)
    {
      if (v37 + v32 <= v53)
      {
        v48 = v37;
      }

      else
      {
        v48 = v53 - v32;
      }

      v15 = __buf;
      v49 = write(dword_10004B9A8, __buf, v48);
      if (v49 < 0)
      {
        if (*__error() == 5)
        {
          v37 = 0;
          LODWORD(v54) = 0;
        }

        else if (*__error() != 35 && *__error() != 4)
        {
          error("Error writing pseudo-tty master: %m");
          goto LABEL_139;
        }
      }

      else
      {
        v15 = (__buf + (v49 & 0x7FFFFFFF));
        v37 = (v37 - v49);
        v32 += v49;
      }
    }

    else
    {
      v15 = __buf;
    }

    v57 = v39;
    v14 = v37 != 0;
    v59 = v36;
    v13 = v36 != 0;
    v19 = HIDWORD(v54) != 0;
    v50 = v37;
    v18 = v54 != 0;
    v51 = v32;
    v52 = v35;
    v17 = v32 < v53;
    v16 = v35 < v53;
    v56 = v50;
    if (!v50 && !v59 && !v54)
    {
LABEL_139:
      exit(0);
    }
  }
}

uint64_t sub_10001FE80(uint64_t a1, uint64_t a2)
{
  result = charshunt_pid;
  if (charshunt_pid)
  {
    if (a2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 15;
    }

    return kill(charshunt_pid, v3);
  }

  return result;
}

uint64_t sub_10001FEB0(FILE *a1, int a2, const void *a3, unsigned int a4, timeval *a5)
{
  v13 = 0uLL;
  gettimeofday(&v13, 0);
  SDWORD2(v13) /= 100000;
  v10 = DWORD2(v13) - a5->tv_usec + 10 * (v13 - LODWORD(a5->tv_sec));
  if (v10 >= 1)
  {
    if (v10 < 0x100)
    {
      v11 = 6;
    }

    else
    {
      putc(5, a1);
      putc(HIBYTE(v10), a1);
      putc(HIWORD(v10), a1);
      v11 = v10 >> 8;
    }

    putc(v11, a1);
    putc(v10, a1);
    *a5 = v13;
  }

  putc(a2, a1);
  if (a3)
  {
    putc(a4 >> 8, a1);
    putc(a4, a1);
    fwrite(a3, a4, 1uLL, a1);
  }

  fflush(a1);
  if (!ferror(a1))
  {
    return 1;
  }

  error("Error writing record file: %m");
  return 0;
}

double sub_100020008(int a1)
{
  v1 = &upap + 64 * a1;
  *v1 = a1;
  *(v1 + 1) = 0;
  *(v1 + 4) = 0;
  *(v1 + 3) = 0;
  *(v1 + 4) = 0;
  *(v1 + 37) = 0;
  *(v1 + 12) = 3;
  *&result = 0x1E0000000ALL;
  *(v1 + 7) = 0x1E0000000ALL;
  return result;
}

void sub_100020044(int a1, unsigned __int8 *a2, unsigned int a3)
{
  if (a3 <= 3)
  {
    if (!debug)
    {
      return;
    }

    v3 = "pap_input: rcvd short header.";
LABEL_10:

    dbglog(v3, a2);
    return;
  }

  v4 = __rev16(*(a2 + 1));
  if (v4 <= 3)
  {
    if (!debug)
    {
      return;
    }

    v3 = "pap_input: rcvd illegal length.";
    goto LABEL_10;
  }

  if (v4 > a3)
  {
    if (!debug)
    {
      return;
    }

    v3 = "pap_input: rcvd short packet.";
    goto LABEL_10;
  }

  v5 = (&upap + 64 * a1);
  v6 = *a2;
  v7 = v4 - 4;
  switch(v6)
  {
    case 3:
      if (v5[9] != 3)
      {
        return;
      }

      if (v4 == 4)
      {
        if (debug)
        {
          dbglog("pap_rauthnak: ignoring missing msg-length.");
        }
      }

      else if (a2[4])
      {
        if (v7 <= a2[4])
        {
          if (!debug)
          {
            return;
          }

          v3 = "pap_rauthnak: rcvd short packet.";
          goto LABEL_10;
        }

        info("Remote message: %0.*v", a2[4], a2 + 5);
      }

      v5[9] = 5;
      error("PAP authentication failed");
      v12 = *v5;

      auth_withpeer_fail(v12, 49187);
      break;
    case 2:
      if (v5[9] != 3)
      {
        return;
      }

      if (v4 == 4)
      {
        if (debug)
        {
          dbglog("pap_rauthack: ignoring missing msg-length.");
        }
      }

      else if (a2[4])
      {
        if (v7 <= a2[4])
        {
          if (!debug)
          {
            return;
          }

          v3 = "pap_rauthack: rcvd short packet.";
          goto LABEL_10;
        }

        info("Remote message: %0.*v", a2[4], a2 + 5);
      }

      v5[9] = 4;
      notice("PAP authentication succeeded");
      v11 = *v5;

      auth_withpeer_success(v11, 49187, 0);
      break;
    case 1:
      v8 = v5[10];
      if (v8 < 3)
      {
        return;
      }

      v9 = a2[1];
      if (v8 == 5)
      {
        outpacket_buf = 599786495;
        v10 = 3;
        goto LABEL_41;
      }

      if (v8 == 4)
      {
        outpacket_buf = 599786495;
        v10 = 2;
LABEL_41:
        LOBYTE(word_100048120) = v10;
        HIBYTE(word_100048120) = v9;
        word_100048122 = 1280;
        byte_100048124 = 0;
        output(*v5, &outpacket_buf, 9);
        return;
      }

      if (v4 == 4 || (v13 = a2[4], (v4 - v13 - 6) < 0) || (v14 = a2 + 5, v15 = &a2[a2[4] + 5], v16 = *v15, v4 - v13 - 6 < v16))
      {
        if (debug)
        {
          dbglog("pap_rauth: rcvd short packet.");
        }
      }

      else
      {
        __s = 0;
        v17 = check_passwd(*v5, (a2 + 5), v13, (v15 + 1), v16, &__s);
        bzero(v15 + 1, v16);
        if (v17 == 2)
        {
          if (auth_number())
          {
            v17 = 2;
          }

          else
          {
            warning("calling number %q is not authorized", &remote_number);
            v17 = 3;
          }
        }

        v18 = strlen(__s);
        if (v18 >= 255)
        {
          v19 = 255;
        }

        else
        {
          v19 = v18;
        }

        outpacket_buf = 599786495;
        LOBYTE(word_100048120) = v17;
        HIBYTE(word_100048120) = v9;
        LOBYTE(word_100048122) = (v19 + 5) >> 8;
        HIBYTE(word_100048122) = v19 + 5;
        byte_100048124 = v19;
        memcpy(byte_100048125, __s, v19);
        output(*v5, &outpacket_buf, (v19 + 9));
        slprintf(v21, 256, "%.*v", v13, v14);
        if (v17 == 2)
        {
          v5[10] = 4;
          notice("PAP peer authentication succeeded for %q", v21);
          auth_peer_success(*v5, 49187, 0, v14, v13);
        }

        else
        {
          v5[10] = 5;
          warning("PAP peer authentication failed for %q", v21);
          auth_peer_fail(*v5);
        }

        if (v5[15] >= 1)
        {
          untimeout(sub_100020B64, v5);
        }
      }

      break;
    default:
      return;
  }
}

void sub_1000205D4(uint64_t a1)
{
  v1 = a1;
  v2 = &upap + 64 * a1;
  if (*(v2 + 9) == 3)
  {
    error("PAP authentication failed due to protocol-reject");
    auth_withpeer_fail(v1, 49187);
  }

  if (*(v2 + 10) == 3)
  {
    error("PAP authentication of peer failed (protocol-reject)");
    auth_peer_fail(v1);
  }

  sub_100020714(v1);
}

void sub_100020660(int a1)
{
  v1 = (&upap + 64 * a1);
  v2 = v1[9];
  if (v2 == 2)
  {
    sub_100020A28(&upap + 16 * a1);
  }

  else if (!v2)
  {
    v1[9] = 1;
  }

  v3 = v1[10];
  if (v3 == 2)
  {
    v1[10] = 3;
    if (v1[15] >= 1)
    {

      timeout(sub_100020B64);
    }
  }

  else if (!v3)
  {
    v1[10] = 1;
  }
}

void sub_100020714(int a1)
{
  v1 = (&upap + 64 * a1);
  if (v1[9] == 3)
  {
    untimeout(sub_100020BA8, v1);
  }

  if (v1[10] == 3 && v1[15] >= 1)
  {
    untimeout(sub_100020B64, v1);
  }

  v1[9] = 0;
  v1[10] = 0;
}

uint64_t sub_100020798(char *a1, unsigned int a2, uint64_t (*a3)(uint64_t, const char *), uint64_t a4)
{
  if (a2 < 4)
  {
    return 0;
  }

  v6 = __rev16(*(a1 + 1));
  v7 = v6 - 4;
  if (v6 < 4 || v6 > a2)
  {
    return 0;
  }

  v11 = *a1;
  v12 = a1[1];
  v13 = (a1 + 4);
  if ((v11 - 1) > 2)
  {
    v14 = " code=0x%x";
  }

  else
  {
    v14 = " %s";
  }

  a3(a4, v14);
  (a3)(a4, " id=0x%x", v12);
  if ((v11 - 2) < 2)
  {
    if (v6 == 4)
    {
      return (v13 - a1);
    }

    v15 = *v13;
    if (v7 <= v15)
    {
      goto LABEL_25;
    }

    v13 += v15 + 1;
    v16 = v7 - (v15 + 1);
    a3(a4, " ");
    v17 = a1 + 5;
    v18 = v15;
    goto LABEL_16;
  }

  if (v11 == 1)
  {
    if (v6 == 4)
    {
      return (v13 - a1);
    }

    v19 = *v13;
    if (v7 < v19 + 2)
    {
      goto LABEL_25;
    }

    v20 = &v13[*v13];
    v21 = v20[1];
    v22 = v19 + 2 + v21;
    v16 = v7 - v22;
    if (v7 < v22)
    {
      goto LABEL_25;
    }

    v13 += v22;
    a3(a4, " user=");
    print_string(a1 + 5, v19, a3, a4);
    a3(a4, " password=");
    if (!byte_100046080)
    {
      v17 = (v20 + 2);
      v18 = v21;
LABEL_16:
      print_string(v17, v18, a3, a4);
      goto LABEL_24;
    }

    a3(a4, "<hidden>");
  }

  else
  {
    v16 = v6 - 4;
  }

LABEL_24:
  v7 = v16;
  if (v16 >= 1)
  {
LABEL_25:
    v23 = v7 + 1;
    do
    {
      v24 = *v13++;
      (a3)(a4, " %.2x", v24);
      --v23;
    }

    while (v23 > 1);
  }

  return (v13 - a1);
}

void upap_authwithpeer(int a1, char *__s, const char *a3)
{
  v4 = &upap + 64 * a1;
  *(v4 + 1) = __s;
  *(v4 + 4) = strlen(__s);
  *(v4 + 3) = a3;
  *(v4 + 8) = strlen(a3);
  *(v4 + 13) = 0;
  if ((*(v4 + 9) | 2) == 2)
  {
    *(v4 + 9) = 2;
  }

  else
  {

    sub_100020A28(v4);
  }
}

void sub_100020A28(unsigned int *a1)
{
  v2 = a1[4];
  v3 = v2 + a1[8];
  outpacket_buf = 599786495;
  LOBYTE(word_100048120) = 1;
  v4 = *(a1 + 44) + 1;
  *(a1 + 44) = v4;
  HIBYTE(word_100048120) = v4;
  LOBYTE(word_100048122) = (v3 + 6) >> 8;
  HIBYTE(word_100048122) = v3 + 6;
  byte_100048124 = v2;
  memcpy(byte_100048125, *(a1 + 1), v2);
  v5 = &byte_100048125[a1[4]];
  *v5 = a1[8];
  memcpy(v5 + 1, *(a1 + 3), a1[8]);
  output(*a1, &outpacket_buf, (v3 + 10));
  timeout(sub_100020BA8);
  ++a1[13];
  a1[9] = 3;
}

void upap_authpeer(int a1)
{
  v1 = &upap + 64 * a1;
  if ((*(v1 + 10) | 2) == 2)
  {
    *(v1 + 10) = 2;
  }

  else
  {
    *(v1 + 10) = 3;
    if (*(v1 + 15) >= 1)
    {
      timeout(sub_100020B64);
    }
  }
}

void sub_100020B64(int *result)
{
  if (result[10] == 3)
  {
    auth_peer_fail(*result);
    result[10] = 5;
  }
}

void sub_100020BA8(unsigned int *a1)
{
  if (a1[9] == 3)
  {
    if (a1[13] >= a1[14])
    {
      error("No response to PAP authenticate-requests");
      a1[9] = 5;
      v2 = *a1;

      auth_withpeer_fail(v2, 49187);
    }

    else
    {

      sub_100020A28(a1);
    }
  }
}

uint64_t vslprintf(char *a1, int a2, char *__src, int *a4)
{
  v4 = a1;
  v92 = 0;
  v93 = a4;
  v90 = 0;
  v91 = 0;
  __dst = a1;
  if (a2 >= 2)
  {
    v6 = a2 - 1;
    v4 = a1;
    while (1)
    {
      while (1)
      {
          ;
        }

        v8 = &__src[i];
        if (&__src[i] > __src)
        {
          if (v6 >= i)
          {
            v9 = i;
          }

          else
          {
            v9 = v6;
          }

          memcpy(v4, __src, v9);
          v4 += v9;
          v6 -= v9;
          __src = v8;
        }

        if (!*__src)
        {
          goto LABEL_226;
        }

        v11 = __src + 1;
        v10 = __src[1];
        if (v10 == 48)
        {
          v13 = __src[2];
          v12 = 48;
          v11 = __src + 2;
        }

        else
        {
          v12 = 32;
          v13 = __src[1];
        }

        if (v13 == 42)
        {
          v14 = v93;
          v93 += 2;
          v15 = *v14;
          v17 = *++v11;
          v16 = v17;
        }

        else
        {
          v16 = v13;
          if ((v13 - 48) > 9)
          {
            v15 = 0;
          }

          else
          {
            v15 = 0;
            do
            {
              v15 = v16 + 10 * v15 - 48;
              v18 = *++v11;
              v16 = v18;
            }

            while ((v18 - 48) < 0xA);
          }
        }

        if (v16 == 46)
        {
          v16 = v11[1];
          if (v16 == 42)
          {
            v19 = v93;
            v93 += 2;
            v20 = *v19;
            v21 = v11[2];
            v11 += 2;
            v16 = v21;
          }

          else if ((v16 - 48) > 9)
          {
            v20 = 0;
            ++v11;
          }

          else
          {
            v20 = 0;
            ++v11;
            do
            {
              v20 = v16 + 10 * v20 - 48;
              v26 = *++v11;
              v16 = v26;
            }

            while ((v26 - 48) < 0xA);
          }
        }

        else
        {
          v20 = -1;
        }

        __src = v11 + 1;
        if (v16 <= 110)
        {
          break;
        }

        if (v16 > 115)
        {
          if (v16 <= 117)
          {
            if (v16 == 116)
            {
              time(&v92);
              v51 = ctime(&v92);
              v23 = v51 + 4;
              v51[19] = 0;
              goto LABEL_137;
            }

            LODWORD(v25) = 0;
            v29 = v93;
            v93 += 2;
            v24 = *v29;
            goto LABEL_169;
          }

          if (v16 == 118)
          {
LABEL_65:
            v34 = v93;
            v93 += 2;
            v35 = *v34;
            if (v10 != 48 || v20 < 0)
            {
              v36 = strlen(*v34);
              if (v20 >= v36)
              {
                v37 = v36;
              }

              else
              {
                v37 = v20;
              }

              if (v20 >= 0)
              {
                v20 = v37;
              }

              else
              {
                v20 = v36;
              }
            }

            if (v20 < 1 || v6 < 1)
            {
              goto LABEL_197;
            }

            while (2)
            {
              v39 = *v35++;
              v38 = v39;
              v40 = v39;
              if (v16 != 113 && v38 < 0)
              {
                *v4 = 77;
                v41 = v6 >= 2;
                v6 -= 2;
                if (v41)
                {
                  v4[1] = 45;
                  v4 += 2;
                }

                else
                {
                  v6 = 0;
                  ++v4;
                }

                v40 -= 128;
                goto LABEL_88;
              }

              if (v16 != 113)
              {
                if (v40 < 0x20 || (v40 - 127) < 0x21)
                {
LABEL_93:
                  if (v40 == 9)
                  {
                    if (!v6)
                    {
                      goto LABEL_226;
                    }

                    --v6;
                    v42 = 9;
                    goto LABEL_96;
                  }

                  if (!v6)
                  {
                    goto LABEL_226;
                  }

                  *v4 = 94;
                  if (v6 == 1)
                  {
                    ++v4;
                    goto LABEL_226;
                  }

                  v6 -= 2;
                  v4[1] = v40 ^ 0x40;
                  v4 += 2;
LABEL_102:
                  if (v20 < 2)
                  {
                    goto LABEL_197;
                  }

                  --v20;
                  if (!v6)
                  {
                    goto LABEL_197;
                  }

                  continue;
                }

LABEL_91:
                --v6;
                *v4++ = v40;
                goto LABEL_102;
              }

              break;
            }

            if (v40 == 92 || v40 == 34)
            {
              --v6;
              *v4++ = 92;
            }

LABEL_88:
            if (v40 >= 32 && (v40 - 127) >= 0x21)
            {
              if (!v6)
              {
                goto LABEL_226;
              }

              goto LABEL_91;
            }

            if (v16 != 113)
            {
              goto LABEL_93;
            }

            if (v6)
            {
              v43 = v6 - 1;
              *v4++ = 92;
            }

            else
            {
              v43 = 0;
            }

            if (v40 > 9)
            {
              if (v40 == 10)
              {
                if (!v43)
                {
                  goto LABEL_226;
                }

                v6 = v43 - 1;
                v42 = 110;
                goto LABEL_96;
              }

              if (v40 == 12)
              {
                if (!v43)
                {
                  goto LABEL_226;
                }

                v6 = v43 - 1;
                v42 = 102;
                goto LABEL_96;
              }
            }

            else
            {
              if (v40 == 8)
              {
                if (!v43)
                {
                  goto LABEL_226;
                }

                v6 = v43 - 1;
                v42 = 98;
                goto LABEL_96;
              }

              if (v40 == 9)
              {
                if (!v43)
                {
                  goto LABEL_226;
                }

                v6 = v43 - 1;
                v42 = 116;
LABEL_96:
                *v4++ = v42;
                goto LABEL_102;
              }
            }

            if (!v43)
            {
              goto LABEL_226;
            }

            *v4 = 120;
            if (v43 == 1)
            {
              ++v4;
              goto LABEL_226;
            }

            v4[1] = a0123456789abcd[v40 >> 4];
            if (v43 == 2)
            {
              v4 += 2;
              goto LABEL_226;
            }

            v6 = v43 - 3;
            v4[2] = a0123456789abcd[v40 & 0xF];
            v4 += 3;
            goto LABEL_102;
          }

          if (v16 != 120)
          {
            goto LABEL_161;
          }

          goto LABEL_63;
        }

        if (v16 > 112)
        {
          if (v16 == 113)
          {
            goto LABEL_65;
          }

          if (v16 == 115)
          {
            v30 = v93;
            v93 += 2;
            v23 = *v30;
            goto LABEL_137;
          }

          goto LABEL_161;
        }

        if (v16 == 111)
        {
          LODWORD(v25) = 0;
          v49 = v93;
          v93 += 2;
          v24 = *v49;
          v33 = 8;
          goto LABEL_170;
        }

        v25 = v93;
        v93 += 2;
        v24 = *v25;
        LODWORD(v25) = 2;
LABEL_64:
        v33 = 16;
LABEL_170:
        v95 = 0;
        v23 = &v95;
        while (v23 > &v94[v25])
        {
          v71 = v24;
          v24 /= v33;
          *--v23 = a0123456789abcd[v71 - v24 * v33];
          v72 = __OFSUB__(v20--, 1);
          if ((v20 < 0) ^ v72 | (v20 == 0))
          {
            if (v33 > v71)
            {
              break;
            }
          }
        }

        if (v25 == 1)
        {
          v73 = 45;
          v74 = -1;
          goto LABEL_179;
        }

        if (v25 == 2)
        {
          *(v23 - 1) = 120;
          v73 = 48;
          v74 = -2;
LABEL_179:
          v23 += v74;
          *v23 = v73;
        }

        v54 = &v95 - v23;
LABEL_181:
        if (v15 >= 1)
        {
          v75 = v15 >= v6 ? v6 : v15;
          v76 = v75 - v54;
          if (v75 - v54 >= 1)
          {
            v77 = (v75 + ~v54) + 1;
            memset(v4, v12, v77);
            v6 -= v76;
            v4 += v77;
          }
        }

        if (v54 >= v6)
        {
          v78 = v6;
        }

        else
        {
          v78 = v54;
        }

        memcpy(v4, v23, v78);
        v4 += v78;
        v72 = __OFSUB__(v6, v78);
        v6 -= v78;
        if ((v6 < 0) ^ v72 | (v6 == 0))
        {
          goto LABEL_226;
        }
      }

      if (v16 <= 98)
      {
        break;
      }

      if (v16 <= 107)
      {
        if (v16 == 99)
        {
          v50 = v93;
          v93 += 2;
          v94[0] = *v50;
          v94[1] = 0;
          v23 = v94;
          goto LABEL_137;
        }

        if (v16 != 100)
        {
          goto LABEL_161;
        }

        v27 = v93;
        v93 += 2;
        v28 = *v27;
        if (v28 >= 0)
        {
          v24 = v28;
        }

        else
        {
          v24 = -v28;
        }

        LODWORD(v25) = v28 >> 31;
        goto LABEL_169;
      }

      if (v16 != 108)
      {
        if (v16 == 109)
        {
          v31 = __error();
          v23 = strerror(*v31);
          goto LABEL_137;
        }

LABEL_161:
        *v4++ = 37;
        if (v16 != 37)
        {
          __src = v11;
        }

        --v6;
        goto LABEL_197;
      }

      v67 = *__src;
      if (v67 == 117)
      {
        LODWORD(v25) = 0;
        __src = v11 + 2;
        v70 = v93;
        v93 += 2;
        v24 = *v70;
LABEL_169:
        v33 = 10;
        goto LABEL_170;
      }

      if (v67 == 100)
      {
        __src = v11 + 2;
        v68 = v93;
        v93 += 2;
        v69 = *v68;
        if (v69 >= 0)
        {
          v24 = v69;
        }

        else
        {
          v24 = -v69;
        }

        v25 = v69 >> 63;
        goto LABEL_169;
      }

      *v4 = 27685;
      v4 += 2;
      v6 -= 2;
LABEL_197:
      if (v6 <= 0)
      {
        goto LABEL_226;
      }
    }

    if (v16 <= 79)
    {
      if (v16 == 66)
      {
        v44 = v93;
        v93 += 2;
        if (v20 >= 1)
        {
          v45 = *v44;
          v46 = v20 + 1;
          do
          {
            v48 = *v45++;
            v47 = v48;
            if (v10 != 48 && v6 >= 1)
            {
              *v4++ = 32;
              --v6;
            }

            if (v6 >= 1)
            {
              *v4 = a0123456789abcd[v47 >> 4];
              if (v6 == 1)
              {
                v6 = 0;
                ++v4;
              }

              else
              {
                v6 -= 2;
                v4[1] = a0123456789abcd[v47 & 0xF];
                v4 += 2;
              }
            }

            --v46;
          }

          while (v46 > 1);
        }

        goto LABEL_197;
      }

      if (v16 == 73)
      {
        v93 += 2;
        v22 = ntohl();
        v23 = v94;
        slprintf(v94, 32, "%d.%d.%d.%d", HIBYTE(v22), BYTE2(v22), BYTE1(v22), v22);
LABEL_137:
        v52 = strlen(v23);
        if (v20 >= v52)
        {
          v53 = v52;
        }

        else
        {
          v53 = v20;
        }

        if (v20 >= 0)
        {
          v54 = v53;
        }

        else
        {
          v54 = v52;
        }

        goto LABEL_181;
      }

      goto LABEL_161;
    }

    if (v16 != 80)
    {
      if (v16 != 88)
      {
        goto LABEL_161;
      }

LABEL_63:
      LODWORD(v25) = 0;
      v32 = v93;
      v93 += 2;
      v24 = *v32;
      goto LABEL_64;
    }

    v90 = v4;
    LODWORD(v91) = v6 + 1;
    v55 = v93;
    v93 += 2;
    v56 = *v55;
    v93 = v55 + 4;
    v57 = v55[2];
    v58 = (v57 - 4);
    if (v57 < 4)
    {
      v59 = v56;
    }

    else
    {
      if (*v56 == 255 && v56[1] == 3)
      {
        v59 = v56 + 4;
        v60 = __rev16(*(v56 + 1));
        v61 = protocols;
        if (protocols)
        {
          v62 = &off_100043898;
          v63 = protocols;
          do
          {
            if (v60 == *v63)
            {
              sub_10002177C(&v90, "[%s", *(v63 + 11));
              v79 = (*(v63 + 8))(v59, v58, sub_10002177C, &v90);
              sub_10002177C(&v90, "]");
              v59 += v79;
              v58 = (v58 - v79);
              goto LABEL_166;
            }

            v64 = *v62++;
            v63 = v64;
          }

          while (v64);
          if (protocols)
          {
            v65 = &off_100043898;
            while (v60 != (*v61 & 0x7FFF))
            {
              v66 = *v65++;
              v61 = v66;
              if (!v66)
              {
                goto LABEL_223;
              }
            }

            if (*(v61 + 12))
            {
              sub_10002177C(&v90, "[%s data", *(v61 + 12));
              v80 = *(v61 + 20);
              if (v80)
              {
                v81 = v80(v59, v58, sub_10002177C, &v90);
                v59 += v81;
                LODWORD(v58) = v58 - v81;
              }

              sub_10002177C(&v90, "]\n");
              if (v58 < 1)
              {
                v57 = 0;
              }

              else
              {
                do
                {
                  if (v58 >= 0x10)
                  {
                    v82 = 16;
                  }

                  else
                  {
                    v82 = v58;
                  }

                  sub_10002177C(&v90, "  ");
                  v83 = 0;
                  do
                  {
                    v84 = v83;
                    if (v83 == 8)
                    {
                      sub_10002177C(&v90, "  ");
                    }

                    sub_10002177C(&v90, "%.1B", &v59[v84]);
                    v83 = v84 + 1;
                  }

                  while (v84 + 1 < v82);
                  if (v84 <= 0xE)
                  {
                    do
                    {
                      if (v84 == 7)
                      {
                        sub_10002177C(&v90, "  ");
                      }

                      sub_10002177C(&v90, "   ");
                      LODWORD(v84) = v84 + 1;
                    }

                    while (v84 < 0xF);
                  }

                  sub_10002177C(&v90, "   '");
                  v85 = 0;
                  do
                  {
                    if (v59[v85] - 32 >= 0x5F)
                    {
                      v86 = 46;
                    }

                    else
                    {
                      v86 = v59[v85];
                    }

                    sub_10002177C(&v90, "%c", v86);
                    ++v85;
                  }

                  while (v85 < v82);
                  sub_10002177C(&v90, "'\n");
                  v57 = 0;
                  v59 += 16;
                  v72 = __OFSUB__(v58, 16);
                  LODWORD(v58) = v58 - 16;
                }

                while (!((v58 < 0) ^ v72 | (v58 == 0)));
              }

              goto LABEL_195;
            }
          }
        }

LABEL_223:
        sub_10002177C(&v90, "[proto=0x%x]", v60);
      }

      else
      {
        v58 = v57;
        v59 = v56;
      }

LABEL_166:
      if (v58 >= 33)
      {
        sub_10002177C(&v90, "%.32B ...", v59, v88);
LABEL_196:
        v4 = v90;
        v6 = v91 - 1;
        goto LABEL_197;
      }

      v57 = v58;
    }

LABEL_195:
    sub_10002177C(&v90, "%.*B", v57, v59);
    goto LABEL_196;
  }

LABEL_226:
  *v4 = 0;
  return (v4 - __dst);
}

uint64_t sub_10002177C(uint64_t a1, char *__src, ...)
{
  va_start(va, __src);
  result = vslprintf(*a1, *(a1 + 8), __src, va);
  *a1 += result;
  *(a1 + 8) -= result;
  return result;
}

size_t init_pr_log(size_t result, int a2)
{
  qword_10004BAB8 = byte_10004B9B8;
  if (result)
  {
    __strlcpy_chk();
    result = strlen(byte_10004B9B8);
    qword_10004BAB8 = &byte_10004B9B8[result];
  }

  dword_10004BAC0 = a2;
  return result;
}

void end_pr_log()
{
  if (qword_10004BAB8 != byte_10004B9B8)
  {
    *qword_10004BAB8 = 0;
    sub_100021874(dword_10004BAC0, byte_10004B9B8);
  }
}

void sub_100021874(unsigned int a1, const char *a2)
{
  sys_log(a1, "%s", a2);
  if ((log_to_fd & 0x80000000) == 0 && (a1 != 7 || debug))
  {
    v7 = 0;
    v4 = strlen(a2);
    time(&v7);
    v5 = localtime(&v7);
    v6 = strftime(__buf, 0x40uLL, "%c : ", v5);
    if (write(log_to_fd, __buf, v6) != v6)
    {
      log_to_fd = -1;
    }

    if (v4 >= 1)
    {
      v4 -= a2[v4 - 1] == 10;
    }

    if (write(log_to_fd, a2, v4) != v4 || write(log_to_fd, "\n", 1uLL) != 1)
    {
      log_to_fd = -1;
    }
  }
}

void pr_log(uint64_t a1, char *__src, ...)
{
  va_start(va, __src);
  v2 = __s;
  v3 = vslprintf(__s, 256, __src, va);
  v4 = strchr(__s, 10);
  v5 = v4;
  v6 = qword_10004BAB8;
  if (qword_10004BAB8 == byte_10004B9B8)
  {
    goto LABEL_10;
  }

  v2 = __s;
  v7 = v4 - __s;
  if (!v4)
  {
    v7 = v3;
  }

  v8 = (qword_10004BAB8 + v7);
  if (v8 >= &qword_10004BAB8)
  {
LABEL_9:
    *v6 = 0;
    sub_100021874(dword_10004BAC0, byte_10004B9B8);
    qword_10004BAB8 = byte_10004B9B8;
LABEL_10:
    while (v5)
    {
      *v5 = 0;
      sub_100021874(dword_10004BAC0, v2);
      v2 = v5 + 1;
      v5 = strchr(v5 + 1, 10);
    }

    v9 = &__s[v3] - v2;
    if (v9 >= 1)
    {
      __memcpy_chk();
      qword_10004BAB8 = &byte_10004B9B8[v9 & 0x7FFFFFFF];
    }

    return;
  }

  if (v7 >= 1)
  {
    memcpy(qword_10004BAB8, __s, v7);
    qword_10004BAB8 = v8;
    v6 = v8;
  }

  if (v5)
  {
    v2 = v5 + 1;
    v5 = strchr(v5 + 1, 10);
    goto LABEL_9;
  }
}

uint64_t print_string(char *a1, int a2, uint64_t (*a3)(uint64_t, const char *), uint64_t a4)
{
  a3(a4, "");
  if (a2 >= 1)
  {
    v7 = a2 + 1;
    do
    {
      v9 = *a1++;
      v8 = v9;
      if ((v9 - 32) > 0x5E)
      {
        if (v8 == 9)
        {
          v10 = a4;
          v11 = "\\t";
        }

        else if (v8 == 13)
        {
          v10 = a4;
          v11 = "\\r";
        }

        else
        {
          v10 = a4;
          if (v8 == 10)
          {
            v11 = "\\n";
          }

          else
          {
            v11 = "\\%.3o";
          }
        }
      }

      else
      {
        if (v8 == 92 || v8 == 34)
        {
          a3(a4, "\"");
        }

        v10 = a4;
        v11 = "%c";
      }

      a3(v10, v11);
      --v7;
    }

    while (v7 > 1);
  }

  return a3(a4, "");
}

void sub_100021CEC(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  vslprintf(v4, 4096, v2, v3);
  sub_100021874(v1, v4);
}

void error(const char *a1, ...)
{
  va_start(va, a1);
  v1 = __chkstk_darwin(a1);
  vslprintf(v2, 4096, v1, va);
  sub_100021874(3u, v2);
  ++error_count;
}

void warning(const char *a1, ...)
{
  va_start(va, a1);
  v1 = __chkstk_darwin(a1);
  vslprintf(v2, 4096, v1, va);
  sub_100021874(4u, v2);
}

void notice(const char *a1, ...)
{
  va_start(va, a1);
  v1 = __chkstk_darwin(a1);
  vslprintf(v2, 4096, v1, va);
  sub_100021874(5u, v2);
}

void info(const char *a1, ...)
{
  va_start(va, a1);
  v1 = __chkstk_darwin(a1);
  vslprintf(v2, 4096, v1, va);
  sub_100021874(6u, v2);
}

void dbglog(const char *a1, ...)
{
  va_start(va, a1);
  v1 = __chkstk_darwin(a1);
  vslprintf(v2, 4096, v1, va);
  sub_100021874(7u, v2);
}

void dump_packet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (debug)
  {
    if (a3 < 8)
    {
      goto LABEL_17;
    }

    v3 = __rev16(*(a2 + 2));
    v4 = debug <= 1 && unsuccess == 0;
    if (!v4 || v3 != 49185)
    {
      goto LABEL_17;
    }

    v6 = __rev16(*(a2 + 6));
    v7 = *(a2 + 4);
    if ((v7 - 9) >= 2)
    {
      if (v7 != 13 || v6 <= 3)
      {
        goto LABEL_17;
      }
    }

    else if (v6 < 4)
    {
LABEL_17:
      dbglog("%s %P", a1, a2, a3);
      return;
    }

    if (v6 <= a3 - 4)
    {
      return;
    }

    goto LABEL_17;
  }
}

uint64_t complete_read(int a1, char *a2, size_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  v7 = a3;
  do
  {
    while (1)
    {
      v8 = read(a1, a2, v7);
      if (v8 < 0)
      {
        break;
      }

      if (v8)
      {
        v6 += v8;
        a2 += v8;
        v7 = a3 - v6;
        if (a3 > v6)
        {
          continue;
        }
      }

      return v6;
    }
  }

  while (*__error() == 4);
  return -1;
}

uint64_t lock(char *a1)
{
  v2 = strstr(a1, "dev/");
  if (v2)
  {
    v3 = __dst;
    strncpy(__dst, v2 + 4, 0x3FFuLL);
    __dst[1023] = 0;
    for (i = strrchr(__dst, 47); i; i = strrchr(__dst, 47))
    {
      *i = 95;
      v3 = __dst;
    }
  }

  else
  {
    v5 = strrchr(a1, 47);
    if (v5)
    {
      v3 = v5 + 1;
    }

    else
    {
      v3 = a1;
    }
  }

  slprintf(&byte_10004BAC4, 1024, "%s/LCK..%s", "/var/spool/lock", v3);
  v6 = open(&byte_10004BAC4, 2562, 420);
  if ((v6 & 0x80000000) == 0)
  {
LABEL_9:
    v7 = v6;
    v8 = getpid();
    slprintf(__buf, 12, "%10d\n", v8);
    write(v7, __buf, 0xBuLL);
    close(v7);
    return 0;
  }

  while (1)
  {
    if (*__error() != 17)
    {
      error("Can't create lock file %s: %m");
      goto LABEL_28;
    }

    v10 = open(&byte_10004BAC4, 0, 0);
    if (v10 < 0)
    {
      break;
    }

    v11 = v10;
    v12 = read(v10, __buf, 0xBuLL);
    close(v11);
    if (v12 <= 0)
    {
      error("Can't read pid from lock file %s");
      goto LABEL_28;
    }

    __buf[v12 & 0x7FFFFFFF] = 0;
    v13 = atoi(__buf);
    if (v13 == getpid())
    {
      return 1;
    }

    if (v13 && (kill(v13, 0) != -1 || *__error() != 3))
    {
      notice("Device %s is locked by pid %d", v3, v13);
      goto LABEL_28;
    }

    if (unlink(&byte_10004BAC4))
    {
      warning("Couldn't remove stale lock on %s", v3);
      goto LABEL_28;
    }

    notice("Removed stale lock on %s (pid %d)", v3, v13);
LABEL_20:
    v6 = open(&byte_10004BAC4, 2562, 420);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  if (*__error() == 2)
  {
    goto LABEL_20;
  }

  error("Can't open existing lock file %s: %m");
LABEL_28:
  byte_10004BAC4 = 0;
  return 0xFFFFFFFFLL;
}

uint64_t relock(int a1)
{
  if (byte_10004BAC4)
  {
    v2 = open(&byte_10004BAC4, 1, 0);
    if ((v2 & 0x80000000) == 0)
    {
      v3 = v2;
      slprintf(__buf, 12, "%10d\n", a1);
      write(v3, __buf, 0xBuLL);
      close(v3);
      return 0;
    }

    error("Couldn't reopen lock file %s: %m", &byte_10004BAC4);
    byte_10004BAC4 = 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t unlock()
{
  if (byte_10004BAC4)
  {
    result = unlink(&byte_10004BAC4);
    byte_10004BAC4 = 0;
  }

  return result;
}

void log_vpn_interface_address_event(uint64_t a1, uint64_t a2, int a3, char *a4, void *a5)
{
  if (!a2)
  {
    addr2ascii(2, a5, 4, v32);
    notice("%s: %d secs TIMEOUT waiting for interface to be reconfigured. previous setting (name: %s, address: %s).");
    return;
  }

  v28 = ntohl();
  v9 = *(a2 + 20);
  v10 = addr2ascii(2, a5, 4, v32);
  v11 = *(a2 + 28);
  v12 = sub_1000227FC(*(a2 + 24));
  v13 = addr2ascii(2, (a2 + 48), 4, v31);
  v14 = v13;
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v22 = addr2ascii(2, &v28, 4, v30);
      v23 = addr2ascii(2, (a2 + 72), 4, v29);
      v20 = v12;
      v21 = v14;
      v18 = (a2 + 32);
      v19 = v11;
      v17 = v10;
      v15 = "%s: Address deleted. previous interface setting (name: %s, address: %s), deleted interface setting (name: %s%d, family: %s, address: %s, subnet: %s, destination: %s).";
      goto LABEL_13;
    }

    if (v9 == 7)
    {
      v26 = *(a2 + 54);
      v27 = *(a2 + 53);
      v24 = *(a2 + 56);
      v25 = *(a2 + 55);
      v22 = *(a2 + 58);
      v23 = *(a2 + 57);
      v20 = v12;
      v21 = v13;
      v18 = (a2 + 32);
      v19 = v11;
      v17 = v10;
      v15 = "%s: ARP collided. previous interface setting (name: %s, address: %s), conflicting interface setting (name: %s%d, family: %s, address: %s, mac: %x:%x:%x:%x:%x:%x).";
      goto LABEL_13;
    }
  }

  else
  {
    if (v9 == 1)
    {
      v22 = addr2ascii(2, &v28, 4, v30);
      v23 = addr2ascii(2, (a2 + 72), 4, v29);
      v20 = v12;
      v21 = v14;
      v18 = (a2 + 32);
      v19 = v11;
      v17 = v10;
      v15 = "%s: Address added. previous interface setting (name: %s, address: %s), current interface setting (name: %s%d, family: %s, address: %s, subnet: %s, destination: %s).";
      goto LABEL_13;
    }

    if (v9 == 2)
    {
      v22 = addr2ascii(2, &v28, 4, v30);
      v23 = addr2ascii(2, (a2 + 72), 4, v29);
      v20 = v12;
      v21 = v14;
      v18 = (a2 + 32);
      v19 = v11;
      v17 = v10;
      v15 = "%s: Address changed. previous interface setting (name: %s, address: %s), current interface setting (name: %s%d, family: %s, address: %s, subnet: %s, destination: %s).";
LABEL_13:
      v16 = a4;
      goto LABEL_14;
    }
  }

  v23 = addr2ascii(2, &v28, 4, v30);
  v24 = addr2ascii(2, (a2 + 72), 4, v29);
  v21 = v12;
  v22 = v14;
  v19 = (a2 + 32);
  v20 = v11;
  v17 = a4;
  v18 = v10;
  v15 = "%s: Other Address event (%d). previous interface setting (name: %s, address: %s), other interface setting (name: %s%d, family: %s, address: %s, subnet: %s, destination: %s).";
  v16 = v9;
LABEL_14:
  notice(v15, a1, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
}

char *sub_1000227FC(int a1)
{
  if ((a1 - 1) < 0xE)
  {
    return (&off_10003CCA8)[a1 - 1];
  }

  v1 = byte_10004BEC4;
  snprintf(byte_10004BEC4, 0x10uLL, "%d", a1);
  return v1;
}

uint64_t check_vpn_interface_or_service_unrecoverable(const __SCDynamicStore *a1, const char *a2, uint64_t a3, char *cStr)
{
  if (!a1)
  {
    dbglog("%s: invalid SCDynamicStore reference", a2);
    return 0;
  }

  if ((*(a3 + 20) & 0xFFFFFFFE) != 2)
  {
    return 0;
  }

  memset(v43, 0, 512);
  memset(v42, 0, 512);
  v6 = CFStringCreateWithCStringNoCopy(0, cStr, 0x600u, kCFAllocatorNull);
  if (!v6)
  {
    notice("%s: failed to initialize interface CFString", a2);
    return 1;
  }

  v7 = v6;
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v9 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainSetup, v7, kSCEntNetAirPort);
  CFArrayAppendValue(Mutable, NetworkInterfaceEntity);
  CFRelease(NetworkInterfaceEntity);
  v11 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v7, kSCEntNetAirPort);
  CFArrayAppendValue(Mutable, v11);
  CFRelease(v11);
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetInterface);
  CFArrayAppendValue(v9, NetworkServiceEntity);
  CFRelease(NetworkServiceEntity);
  v13 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetIPv4);
  CFArrayAppendValue(v9, v13);
  CFRelease(v13);
  v14 = SCDynamicStoreCopyMultiple(a1, Mutable, v9);
  CFRelease(Mutable);
  CFRelease(v9);
  if (!v14)
  {
    notice("%s: failed to initialize SCDynamicStore dictionary", a2);
    CFRelease(v7);
    return 1;
  }

  Count = CFDictionaryGetCount(v14);
  if (Count <= 0)
  {
    notice("%s: empty SCDynamicStore dictionary", a2);
    CFRelease(v7);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v16 = Count;
    if (Count < 0x81)
    {
      v18 = v42;
      Typed = v43;
    }

    else
    {
      Typed = CFAllocatorAllocateTyped();
      v18 = CFAllocatorAllocateTyped();
    }

    theDict = v14;
    CFDictionaryGetKeysAndValues(v14, Typed, v18);
    v40 = 0;
    for (i = 0; i != v16; ++i)
    {
      v23 = Typed[i];
      v24 = v18[i];
      TypeID = CFStringGetTypeID();
      if (v23)
      {
        if (CFGetTypeID(v23) == TypeID)
        {
          v26 = CFDictionaryGetTypeID();
          if (v24)
          {
            if (CFGetTypeID(v24) == v26)
            {
              if (CFStringHasSuffix(v23, kSCEntNetInterface))
              {
                Value = CFDictionaryGetValue(v24, kSCPropNetInterfaceDeviceName);
                v28 = CFStringGetTypeID();
                if (Value && CFGetTypeID(Value) == v28 && CFEqual(v7, Value))
                {
                  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v23, @"/");
                  if (CFArrayGetCount(ArrayBySeparatingStrings) < 4)
                  {
                    v34 = 1;
                  }

                  else
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 3);
                    v31 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, ValueAtIndex, kSCEntNetIPv4);
                    if (v31)
                    {
                      v32 = v31;
                      v33 = CFDictionaryGetValue(theDict, v31);
                      v34 = v33 != 0;
                      if (!v33)
                      {
                        notice("%s: detected disabled IPv4 Config", a2);
                      }

                      CFRelease(v32);
                    }

                    else
                    {
                      notice("%s: detected disabled IPv4 Config", a2);
                      v34 = 0;
                    }
                  }

                  if (ArrayBySeparatingStrings)
                  {
                    CFRelease(ArrayBySeparatingStrings);
                  }

                  v40 = 1;
                  v20 = 1;
                  if (!v34)
                  {
                    goto LABEL_48;
                  }
                }
              }

              else if (CFStringHasSuffix(v23, kSCEntNetAirPort))
              {
                if (CFStringHasPrefix(v23, kSCDynamicStoreDomainSetup))
                {
                  v35 = CFDictionaryGetValue(v24, @"PowerEnabled");
                  v36 = CFBooleanGetTypeID();
                  if (v35 && CFGetTypeID(v35) == v36 && CFEqual(v35, kCFBooleanFalse))
                  {
                    notice("%s: detected AirPort, PowerEnable == FALSE", a2);
                    v20 = 1;
                    goto LABEL_48;
                  }
                }

                else if (CFStringHasPrefix(v23, kSCDynamicStoreDomainState))
                {
                  valuePtr = 0;
                  v37 = CFDictionaryGetValue(v24, @"Power Status");
                  v38 = CFNumberGetTypeID();
                  if (v37)
                  {
                    if (CFGetTypeID(v37) == v38 && CFNumberGetValue(v37, kCFNumberShortType, &valuePtr) && !valuePtr)
                    {
                      notice("%s: detected AirPort, PowerStatus == 0", a2);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v20 = 0;
LABEL_48:
    CFRelease(v7);
    if (Typed != v43)
    {
      CFAllocatorDeallocate(0, Typed);
      CFAllocatorDeallocate(0, v18);
    }

    v14 = theDict;
    v21 = v40;
  }

  CFRelease(v14);
  if (v21)
  {
    return v20;
  }

  else
  {
    return 1;
  }
}

double sub_100022F78(unsigned int a1)
{
  v1 = &eap[104 * a1];
  *(v1 + 24) = 0u;
  *(v1 + 25) = 0u;
  *(v1 + 22) = 0u;
  *(v1 + 23) = 0u;
  *(v1 + 20) = 0u;
  *(v1 + 21) = 0u;
  *(v1 + 18) = 0u;
  *(v1 + 19) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 17) = 0u;
  *(v1 + 14) = 0u;
  *(v1 + 15) = 0u;
  *(v1 + 12) = 0u;
  *(v1 + 13) = 0u;
  *(v1 + 10) = 0u;
  *(v1 + 11) = 0u;
  *(v1 + 8) = 0u;
  *(v1 + 9) = 0u;
  *(v1 + 6) = 0u;
  *(v1 + 7) = 0u;
  *(v1 + 4) = 0u;
  *(v1 + 5) = 0u;
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  *v1 = 0u;
  *(v1 + 1) = 0u;
  v1[1] = 0;
  v1[2] = 0;
  *v1 = a1;
  *(v1 + 38) = 0xA00000003;
  result = NAN;
  *(v1 + 44) = -1;
  return result;
}

void sub_100022FE0(int a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3 < 4)
  {
    return;
  }

  v3 = a3;
  v5 = __rev16(*(a2 + 1));
  v6 = v5 - 4;
  if (v5 < 4 || v5 > a3)
  {
    return;
  }

  v8 = &eap[104 * a1];
  v9 = *a2;
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      if (v8[1] == 4)
      {
        return;
      }
    }

    else if (v9 != 4)
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  v10 = a2[1];
  if (v9 != 1)
  {
    if (v9 == 2)
    {
      if (v8[2] - 1 < 2 || v5 == 4 || *(v8 + 296) != v10)
      {
        return;
      }

      v11 = a2[4];
      if (v11 == 3)
      {
        if (!*(v8 + 48))
        {
          return;
        }

        untimeout(sub_100023FCC, v8);
        v12 = *(v8 + 48);
        v13 = &eap_extensions;
        while (1)
        {
          v13 = *v13;
          if (!v13)
          {
            break;
          }

          if (*(v13 + 8) == a2[5])
          {
            goto LABEL_60;
          }
        }

        if (*(v12 + 8))
        {
LABEL_60:
          (*(v12 + 48))(*(v8 + 49));
          free(*(v8 + 50));
          free(*(v8 + 51));
          *(v8 + 24) = 0u;
          *(v8 + 25) = 0u;
          if (v13)
          {
            goto LABEL_62;
          }

          v13 = *v12;
          if (*v12)
          {
            goto LABEL_62;
          }

          error("Server and client disagree on EAP type");
          goto LABEL_74;
        }
      }

      else
      {
        if (*(v8 + 298) && v11 != *(v8 + 298))
        {
          return;
        }

        untimeout(sub_100023FCC, v8);
        if (v11 == 1)
        {
          if (v6 >= 0x100)
          {
            v19 = 256;
          }

          else
          {
            v19 = v6;
          }

          v20 = v19 - 1;
          memcpy(v8 + 10, a2 + 5, (v19 - 1));
          *(v8 + v20 + 40) = 0;
          v13 = eap_extensions;
          if (eap_extensions)
          {
LABEL_62:
            *(v8 + 48) = v13;
            *(v8 + 298) = *(v13 + 8);
            *(v8 + 50) = malloc_type_malloc(0x40uLL, 0x1090040C3ADEBCBuLL);
            v32 = malloc_type_malloc(0x18uLL, 0x10900405F3747B1uLL);
            *(v8 + 51) = v32;
            if (v32)
            {
              v33 = *(v8 + 50);
              if (v33)
              {
                *v33 = 64;
                *v32 = 24;
                *(v33 + 2) = 1;
                *(v33 + 3) = *(v8 + 296) + 1;
                mtu = netif_get_mtu();
                v35 = *(v8 + 50);
                *(v35 + 4) = mtu;
                *(v35 + 24) = v8 + 10;
                *(v35 + 32) = 0;
                *(v35 + 40) = 0;
                *(v35 + 48) = dbglog;
                *(v35 + 56) = error;
                *(v35 + 6) = 0;
                v36 = *(v8 + 48);
                v38 = *(v36 + 32);
                v37 = *(v36 + 40);
                *(v35 + 16) = v38;
                if (v37(v35, v8 + 98))
                {
                  error("EAP cannot initialize plugin for %s (request type %d)");
                  return;
                }

                v39 = v8;
                v40 = 1;
                v41 = 0;
                v42 = 0;
                goto LABEL_68;
              }
            }

LABEL_77:
            novm("Couldn't allocate memory for EAP Plugin data");
          }

          error("No EAP server protocol available");
LABEL_74:
          v8[2] = 6;
          v43 = *v8;

          auth_peer_fail(v43);
          return;
        }
      }

      v39 = v8;
      v40 = 4;
      v41 = a2;
      v42 = v3;
LABEL_68:

      sub_1000240F0(v39, v40, v41, v42);
      return;
    }

LABEL_22:
    warning("Unknown EAP code (%d) received.", *a2);
    return;
  }

  if (v5 == 4)
  {
    return;
  }

  if (v8[1] - 1 < 2)
  {
    return;
  }

  v14 = a2[4];
  switch(v14)
  {
    case 3:
      return;
    case 2:
      info("Remote message: %0.*v", v5 - 5, a2 + 5);
      outpacket_buf = 667026431;
      LOBYTE(word_100048120) = 2;
      HIBYTE(word_100048120) = v10;
      word_100048122 = 1024;
      v17 = *v8;
      v18 = 8;
      goto LABEL_34;
    case 1:
      v15 = *(v8 + 2);
      v16 = strlen(v15);
      outpacket_buf = 667026431;
      LOBYTE(word_100048120) = 2;
      HIBYTE(word_100048120) = v10;
      LOBYTE(word_100048122) = (v16 + 5) >> 8;
      HIBYTE(word_100048122) = v16 + 5;
      byte_100048124 = 1;
      memcpy(byte_100048125, v15, v16 + 1 - 1);
      v17 = *v8;
      v18 = (v16 + 9);
LABEL_34:

      output(v17, &outpacket_buf, v18);
      return;
  }

  v21 = *(v8 + 40);
  if (v21)
  {
    if (*(v21 + 8) != v14)
    {
      error("EAP received an unexpected request for type %d");
      return;
    }

    goto LABEL_30;
  }

  v22 = &eap_extensions;
  do
  {
    v22 = *v22;
    if (!v22)
    {
      error("EAP refuse to authenticate using type %d", a2[4]);
      if (!eap_extensions)
      {
        return;
      }

      error("EAP send NAK requesting type %d", *(eap_extensions + 8));
      outpacket_buf = 667026431;
      LOBYTE(word_100048120) = 2;
      HIBYTE(word_100048120) = v10;
      word_100048122 = 1536;
      byte_100048124 = 3;
      byte_100048125[0] = *(eap_extensions + 8);
      v17 = *v8;
      v18 = 10;
      goto LABEL_34;
    }
  }

  while (*(v22 + 8) != v14);
  *(v8 + 40) = v22;
  *(v8 + 42) = malloc_type_malloc(0x40uLL, 0x1090040C3ADEBCBuLL);
  v23 = malloc_type_malloc(0x18uLL, 0x10900405F3747B1uLL);
  *(v8 + 43) = v23;
  if (!v23)
  {
    goto LABEL_77;
  }

  v24 = *(v8 + 42);
  if (!v24)
  {
    goto LABEL_77;
  }

  *v24 = 64;
  *v23 = 24;
  v25 = netif_get_mtu();
  v26 = *(v8 + 42);
  *(v26 + 4) = v25;
  *(v26 + 24) = *(v8 + 1);
  *(v26 + 40) = *(v8 + 4);
  *(v26 + 48) = dbglog;
  *(v26 + 56) = error;
  *(v26 + 6) = 0;
  v27 = *(v8 + 40);
  v29 = *(v27 + 32);
  v28 = *(v27 + 40);
  *(v26 + 16) = v29;
  if (!v28(v26, v8 + 82))
  {
LABEL_30:

    sub_100024484(v8, 4, a2, v3);
    return;
  }

  v30 = v22[2];
  if (!v30)
  {
    v30 = "???";
  }

  error("EAP cannot initialize plugin for %s (request type %d)", v30, v14);
  v31 = *v8;

  auth_withpeer_fail(v31, 49703);
}

double sub_100023650(uint64_t a1)
{
  v1 = a1;
  v2 = &eap[104 * a1];
  if (v2[2] >= 2)
  {
    auth_peer_fail(a1);
  }

  if (v2[1] >= 2)
  {
    auth_withpeer_fail(v1, 49703);
  }

  return sub_100023738(v1);
}

void sub_1000236C4(uint64_t result)
{
  v1 = &eap[104 * result];
  v2 = v1[1];
  if (v2)
  {
    if (v2 != 2)
    {
      goto LABEL_6;
    }

    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  v1[1] = v3;
LABEL_6:
  v4 = v1[2];
  if (v4)
  {
    if (v4 != 2)
    {
      return;
    }

    sub_100023BD4(&eap[104 * result]);
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  v1[2] = v5;
}

double sub_100023738(int a1)
{
  v1 = &eap[104 * a1];
  v2 = v1[2];
  v3 = sub_100023FCC;
  v4 = v2 == 3 || v2 == 5;
  if (v4 || v2 == 4 && (v3 = sub_100024098, v1[75]))
  {
    untimeout(v3, v1);
  }

  v1[1] = 0;
  v1[2] = 0;
  v6 = *(v1 + 40);
  if (v6)
  {
    (*(v6 + 48))(*(v1 + 41));
    free(*(v1 + 42));
    free(*(v1 + 43));
    result = 0.0;
    *(v1 + 20) = 0u;
    *(v1 + 21) = 0u;
  }

  v7 = *(v1 + 48);
  if (v7)
  {
    (*(v7 + 48))(*(v1 + 49));
    free(*(v1 + 50));
    free(*(v1 + 51));
    result = 0.0;
    *(v1 + 24) = 0u;
    *(v1 + 25) = 0u;
  }

  return result;
}

uint64_t sub_100023804(unsigned __int8 *a1, unsigned int a2, void (*a3)(uint64_t, const char *, ...), uint64_t a4)
{
  if (a2 < 4)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = v7 | (v6 << 8);
  v9 = v8 - 4;
  if (v8 < 4 || v8 > a2)
  {
    return 0;
  }

  v13 = *a1;
  v14 = a1[1];
  if ((v13 - 1) > 3u)
  {
    v15 = " code=0x%x";
  }

  else
  {
    v15 = " %s";
  }

  a3(a4, v15);
  a3(a4, " id=0x%x", v14);
  if ((v13 - 1) < 2)
  {
    if (v8 != 4)
    {
      v18 = a1[4];
      if ((v18 - 1) >= 3)
      {
        v21 = &eap_extensions;
        while (1)
        {
          v21 = *v21;
          if (!v21)
          {
            break;
          }

          if (*(v21 + 8) == v18)
          {
            goto LABEL_27;
          }
        }

        v22 = " type=0x%x ";
      }

      else
      {
LABEL_27:
        v22 = " %s ";
      }

      a3(a4, v22);
      v17 = v8 - 5;
      if (v8 != 5)
      {
        v23 = (a1 + 5);
        if ((v18 - 1) >= 2u)
        {
          v24 = &eap_extensions;
          while (1)
          {
            v24 = *v24;
            if (!v24)
            {
              break;
            }

            if (*(v24 + 8) == v18)
            {
              v25 = v24[11];
              if (v25)
              {
                v25(a3, a4, v13, v23, v8 - 5);
                return v17 + 5;
              }

              break;
            }
          }

          a3(a4, "<");
          if (v8 >= 6)
          {
            do
            {
              v26 = *v23++;
              a3(a4, "%.2x", v26);
              --v9;
            }

            while (v9 > 1);
          }
        }

        else
        {
          a3(a4, "<");
          print_string(v23, v8 - 5, a3, a4);
        }

        a3(a4, ">");
      }

      return v17 + 5;
    }

    goto LABEL_23;
  }

  v16 = (a1 + 4);
  if ((v13 - 3) >= 2)
  {
    if (v8 >= 5)
    {
      v19 = (v6 << 8) + v7 - 3;
      do
      {
        v20 = *v16++;
        a3(a4, " %.2x", v20);
        --v19;
      }

      while (v19 > 1);
      goto LABEL_15;
    }

LABEL_23:
    v17 = 0;
    return v17 + 5;
  }

  a3(a4, " ");
  print_string(v16, v8 - 4, a3, a4);
LABEL_15:
  v17 = v8 - 4;
  return v17 + 5;
}

uint64_t EapAuthWithPeer(uint64_t result)
{
  v1 = result;
  v2 = eap_extensions;
  if (username)
  {
    v3 = 1;
  }

  else
  {
    v3 = eap_extensions == 0;
  }

  if (!v3)
  {
    do
    {
      v4 = v2[12];
      if (v4)
      {
        result = v4(&username, 256);
        if (!result)
        {
          break;
        }
      }

      v2 = *v2;
    }

    while (v2);
  }

  v5 = &eap[104 * v1];
  *(v5 + 2) = &username;
  *(v5 + 3) = &username;
  *(v5 + 4) = &passwd;
  if ((v5[1] & 0xFFFFFFFD) != 0)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v5[1] = v6;
  return result;
}

void EapAuthPeer(uint64_t result)
{
  v1 = &eap[104 * result];
  *(v1 + 3) = 0;
  *(v1 + 4) = 0;
  *(v1 + 2) = user;
  *(v1 + 298) = 1;
  v1[78] = 0;
  *(v1 + 296) = 1;
  v2 = v1[2] | 2;
  if (v2 != 2)
  {
    sub_100023BD4(&eap[104 * result]);
    v2 = 3;
  }

  v1[2] = v2;
}

void sub_100023BD4(unsigned int *a1)
{
  outpacket_buf = 667026431;
  LOBYTE(word_100048120) = 1;
  HIBYTE(word_100048120) = *(a1 + 296);
  word_100048122 = 1280;
  byte_100048124 = *(a1 + 298);
  output(*a1, &outpacket_buf, 9);
  timeout(sub_100023FCC);
  ++a1[78];
}

void EapLostSuccess(int a1)
{
  v1 = &eap[104 * a1];
  v2[0] = 3;
  v2[1] = *(v1 + 297);
  v3 = 1024;
  if (v1[1] != 4)
  {
    sub_100024484(v1, 4, v2, 4);
  }
}

void EapLostFailure(int a1)
{
  v1 = &eap[104 * a1];
  v2[0] = 4;
  v2[1] = *(v1 + 297);
  v3 = 1024;
  sub_100024484(v1, 4, v2, 4);
}

uint64_t EapExtAdd(uint64_t a1)
{
  v1 = &eap_extensions;
  v2 = eap_extensions;
  if (eap_extensions)
  {
    while (1)
    {
      v1 = v2;
      if (*(v2 + 8) == *(a1 + 8))
      {
        return 1;
      }

      v2 = *v2;
      if (!*v1)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v3 = 0;
    *v1 = a1;
    *a1 = 0;
  }

  return v3;
}

uint64_t EAPClientUIThread(int a1)
{
  __buf = -1;
  v2 = pthread_self();
  if (!pthread_detach(v2))
  {
    v4 = &eap[104 * a1];
    v5 = *(*(v4 + 40) + 80);
    if (v5)
    {
      if (!v5(*(v4 + 45), v4[92], v4 + 90, v4 + 92))
      {
        __buf = 0;
      }
    }
  }

  write(SHIDWORD(qword_100049F58), &__buf, 1uLL);
  return 0;
}

uint64_t EapGetClientSecret(unsigned int *a1, const char *a2, const char *a3, void *a4, int *a5)
{
  secret = get_secret(*a1, a2, a3, a4, a5, 0);
  result = 0;
  if (!secret)
  {
    *a5 = 0;
    warning("No EAP secret found for authenticating us to %s", a3);
    return 1;
  }

  return result;
}

uint64_t EapGetServerSecret(unsigned int *a1, const char *a2, const char *a3, void *a4, int *a5)
{
  if (get_secret(*a1, a2, a3, a4, a5, 1))
  {
    return 0;
  }

  *a5 = 0;
  warning("No EAP secret found for authenticating %s", a3);
  return 1;
}

uint64_t sub_100023EAC(const char **a1)
{
  v2 = *a1;
  v3 = malloc_type_malloc(0x68uLL, 0x10B0040F6A58395uLL);
  if (!v3)
  {
    novm("Couldn't allocate memory for EAP plugin");
  }

  v4 = v3;
  v3[12] = 0;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  if (sys_eaploadplugin(*a1, v3))
  {
    option_error("Couldn't load EAP plugin %s", v2);
    return 1;
  }

  if (v4[5] && v4[6] && v4[7])
  {
    v6 = *(v4 + 8);
    v7 = &eap_extensions;
    v8 = &eap_extensions;
    while (1)
    {
      v8 = *v8;
      if (!v8)
      {
        break;
      }

      if (*(v8 + 8) == v6)
      {
        option_error("EAP plugin %s is trying to use an already loaded EAP type %d");
        return 0;
      }
    }

    while (1)
    {
      v9 = *v7;
      if (!*v7)
      {
        break;
      }

      v7 = *v7;
      if (*(v9 + 8) == v6)
      {
        return 1;
      }
    }

    *v7 = v4;
    *v4 = 0;
    return 1;
  }

  option_error("EAP plugin %s has no Init() Dispose() or Process() function");
  return 0;
}

void sub_100023FCC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 == 5 || v1 == 3)
  {
    if (*(a1 + 312) >= *(a1 + 308))
    {
      error("Peer failed to respond to EAP challenge");
      *(a1 + 8) = 6;
      v4 = *a1;

      auth_peer_fail(v4);
    }

    else if (*(a1 + 298) == 1)
    {

      sub_100023BD4(a1);
    }

    else
    {

      sub_1000240F0(a1, 6, 0, 0);
    }
  }
}

void sub_100024098(uint64_t result)
{
  if (*(result + 8) == 4)
  {
    ++*(result + 296);
    *(result + 312) = 0;
    sub_1000240F0(result, 2, 0, 0);
    *(result + 8) = 5;
  }
}

void sub_1000240F0(unsigned int *a1, __int16 a2, uint64_t a3, __int16 a4)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    v6 = *(a1 + 50);
    v7 = *(a1 + 51);
    *(v6 + 6) = a2;
    *(v6 + 16) = a3;
    *(v6 + 8) = a4;
    *(v7 + 2) = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    v8 = (*(v4 + 56))(*(a1 + 49), v6, v7);
    if (v8)
    {
      v9 = *(a1 + 48);
      v10 = *(v9 + 16);
      if (!v10)
      {
        v10 = "???";
      }

      error("EAP error while processing packet for %s (request type %d, error %d)", v10, *(v9 + 8), v8);
    }

    else
    {
      v11 = *(a1 + 51);
      v12 = *(v11 + 2);
      v13 = v12 > 6;
      v14 = (1 << v12) & 0x62;
      if (!v13 && v14 != 0)
      {
        v16 = *(v11 + 8);
        if (v16 && (v17 = *(v11 + 4), (v17 - 1501) > 0xFFFFFA26))
        {
          outpacket_buf = 667026431;
          memcpy(&word_100048120, v16, v17);
          v18 = word_100048120;
          a1[78] = 0;
          *(a1 + 296) = HIBYTE(word_100048120);
          v19 = *(*(a1 + 48) + 64);
          if (v19)
          {
            v19(*(a1 + 49), v11);
          }

          output(*a1, &outpacket_buf, *(v11 + 4) + 4);
          v20 = *(v11 + 2);
          if (v20 == 5)
          {
            timeout(sub_100023FCC);
            v20 = *(v11 + 2);
          }

          ++a1[78];
          if (v20 == 6 && (a1[2] | 2) != 6)
          {
            if (*(v11 + 16))
            {
              v21 = *(v11 + 16);
            }

            else
            {
              v21 = (a1 + 10);
            }

            untimeout(sub_100023FCC, a1);
            if (v18 == 3)
            {
              v22 = a1[2];
              a1[2] = 4;
              if (v22 == 3)
              {
                sub_10002438C(a1);
                v23 = strlen(v21);
                auth_peer_success(*a1, 49703, 0, v21, v23);
              }

              if (a1[75])
              {
                timeout(sub_100024098);
              }

              notice("EAP peer authentication succeeded for %s", v21);
            }

            else
            {
              error("EAP peer authentication failed for remote host %s", v21);
              a1[2] = 6;
              v24 = *a1;

              auth_peer_fail(v24);
            }
          }
        }

        else
        {

          error("EAP plugin tries to send a packet with with incorrect data");
        }
      }
    }
  }
}

void sub_10002438C(uint64_t a1)
{
  v1 = *(*(a1 + 384) + 72);
  if (v1)
  {
    v6[1] = 0;
    v6[0] = 1;
    if (v1(*(a1 + 392), v6))
    {
      v3 = "MPPE_SEND_KEY";
    }

    else
    {
      __memmove_chk();
      LOWORD(v6[0]) = 2;
      if (!(*(*(a1 + 384) + 72))(*(a1 + 392), v6))
      {
        __memmove_chk();
        return;
      }

      v3 = "MPPE_RECV_KEY";
    }

    v4 = *(a1 + 384);
    v5 = *(v4 + 16);
    if (!v5)
    {
      v5 = "???";
    }

    dbglog("EAP plugin %s (type %d) does not have %s attribute", v5, *(v4 + 8), v3);
  }
}

void sub_100024484(unsigned int *a1, __int16 a2, uint64_t a3, __int16 a4)
{
  v4 = *(a1 + 40);
  if (!v4)
  {
    return;
  }

  v6 = *(a1 + 42);
  v7 = *(a1 + 43);
  *(v6 + 6) = a2;
  *(v6 + 16) = a3;
  *(v6 + 8) = a4;
  *(v7 + 2) = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  v8 = (*(v4 + 56))(*(a1 + 41), v6, v7);
  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = *(v9 + 16);
    if (!v10)
    {
      v10 = "???";
    }

    error("EAP error while processing packet for %s (request type %d, error %d)", v10, *(v9 + 8), v8);
    return;
  }

  v11 = *(a1 + 43);
  v12 = *(v11 + 2);
  if (v12 > 2)
  {
    if (v12 != 3)
    {
      if (v12 == 4)
      {
        error("EAP authentication failed");
        v17 = *a1;

        auth_withpeer_fail(v17, 49703);
      }

      else if (v12 == 7)
      {
        v13 = *a1;

        auth_withpeer_cancelled(v13);
      }

      return;
    }

    v15 = *(*(a1 + 40) + 72);
    if (v15)
    {
      v27[1] = 0;
      v27[0] = 1;
      if (v15(*(a1 + 41), v27))
      {
        v16 = "MPPE_SEND_KEY";
LABEL_41:
        v24 = *(a1 + 40);
        v25 = *(v24 + 16);
        if (!v25)
        {
          v25 = "???";
        }

        dbglog("EAP plugin %s (type %d) does not have %s attribute", v25, *(v24 + 8), v16);
        goto LABEL_44;
      }

      __memmove_chk();
      LOWORD(v27[0]) = 2;
      if ((*(*(a1 + 40) + 72))(*(a1 + 41), v27))
      {
        v16 = "MPPE_RECV_KEY";
        goto LABEL_41;
      }

      __memmove_chk();
    }

LABEL_44:
    a1[1] = 4;
    auth_withpeer_success(*a1, 49703, 0);
    return;
  }

  if (v12 != 1)
  {
    if (v12 != 2)
    {
      return;
    }

    *(a1 + 45) = *(v11 + 8);
    a1[92] = *(v11 + 4);
    if ((pipe(a1 + 88) & 0x80000000) == 0)
    {
      if (pthread_create(a1 + 47, 0, EAPClientUIThread, *a1))
      {
        error("EAP failed to create thread for client User Interface...\n");
        close(a1[88]);
        v14 = a1[89];

        close(v14);
      }

      else
      {
        wait_input_hook = sub_100024828;
        v26 = a1[88];

        add_fd(v26);
      }

      return;
    }

    v20 = "EAP failed to create pipe for User Interface...\n";
    goto LABEL_31;
  }

  v18 = *(v11 + 8);
  if (!v18 || (v19 = *(v11 + 4), (v19 - 1501) <= 0xFFFFFA26))
  {
    v20 = "EAP plugin tries to send a packet with with incorrect data";
LABEL_31:

    error(v20);
    return;
  }

  outpacket_buf = 667026431;
  memcpy(&word_100048120, v18, v19);
  *(a1 + 297) = HIBYTE(word_100048120);
  v21 = *(*(a1 + 40) + 64);
  if (v21)
  {
    v21(*(a1 + 41), v11);
  }

  v22 = *a1;
  v23 = *(v11 + 4) + 4;

  output(v22, &outpacket_buf, v23);
}

void sub_100024828()
{
  if (qword_100049F58 != -1)
  {
    v4 = v0;
    v5 = v1;
    if (is_ready_fd(qword_100049F58))
    {
      v3 = 0;
      read(qword_100049F58, &v3, 1uLL);
      wait_input_hook = 0;
      remove_fd(qword_100049F58);
      close(qword_100049F58);
      close(SHIDWORD(qword_100049F58));
      qword_100049F58 = -1;
      if (v3 == 255)
      {
        v2 = *(qword_100049F38 + 16);
        if (!v2)
        {
          v2 = "???";
        }

        error("EAP error while requesting user input for %s (request type %d)", v2, *(qword_100049F38 + 8));
      }

      else
      {
        sub_100024484(eap, 5, qword_100049F60, dword_100049F68);
      }
    }
  }
}

void sub_100024908(int a1)
{
  v2 = &ecp_fsm + 80 * a1;
  *v2 = a1;
  *(v2 + 1) = 32851;
  *(v2 + 7) = &unk_1000464D8;
  fsm_init(v2);
  ecp_wantoptions[a1] = 0;
  *&ecp_gotoptions[8 * a1] = 0;
  ecp_allowoptions[a1] = 0;
  ecp_hisoptions[a1] = 0;
}

double sub_100024988(int a1)
{
  v1 = &ipv6cp_fsm + 80 * a1;
  v2 = &ipv6cp_wantoptions + 52 * a1;
  v3 = &ipv6cp_allowoptions + 52 * a1;
  *v1 = a1;
  *(v1 + 1) = 32855;
  *(v1 + 7) = off_100046A78;
  fsm_init(v1);
  result = 0.0;
  *(v2 + 12) = 0;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *v2 = 0u;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 12) = 0;
  *(v2 + 2) = 1;
  *v2 = 1;
  *v3 = 1;
  return result;
}

uint64_t sub_100024AB0(char *a1, unsigned int a2, void (*a3)(uint64_t, const char *, ...), uint64_t a4)
{
  if (a2 < 4)
  {
    return 0;
  }

  v6 = __rev16(*(a1 + 1));
  v7 = v6 - 4;
  if (v6 < 4 || v6 > a2)
  {
    return 0;
  }

  v11 = *a1;
  v12 = a1[1];
  v13 = (a1 + 4);
  if ((v11 - 1) > 6)
  {
    v14 = " code=0x%x";
  }

  else
  {
    v14 = " %s";
  }

  a3(a4, v14);
  a3(a4, " id=0x%x", v12);
  if ((v11 - 1) < 4)
  {
    if (v6 >= 6)
    {
      while (1)
      {
        v15 = v13[1];
        if (v15 < 2 || v7 < v15)
        {
          goto LABEL_41;
        }

        v17 = *v13;
        a3(a4, " <");
        if (v17 == 1)
        {
          v19 = v13;
          if (v15 == 10)
          {
            v19 = v13 + 10;
            v22 = eui64_ntoa(*(v13 + 2));
            snprintf(byte_10004BED4, 0x40uLL, "fe80::%s", v22);
            v20 = a4;
            v21 = "addr %s";
            goto LABEL_28;
          }
        }

        else
        {
          v18 = v17 == 2 && v15 >= 4;
          v19 = v13;
          if (v18)
          {
            v19 = v13 + 4;
            a3(a4, "compress ");
            v20 = a4;
            v21 = "0x%x";
LABEL_28:
            a3(v20, v21);
          }
        }

        if (v19 < &v13[v15])
        {
          v23 = &v13[v15];
          v24 = v23 - v19;
          do
          {
            v25 = *v19++;
            a3(a4, " %.2x", v25);
            --v24;
          }

          while (v24);
          v19 = v23;
        }

        v7 -= v15;
        a3(a4, ">");
        v13 = v19;
        if (v7 <= 1)
        {
          goto LABEL_40;
        }
      }
    }

LABEL_39:
    v19 = (a1 + 4);
LABEL_40:
    v13 = v19;
    if (v7 < 1)
    {
      return (v13 - a1);
    }

    goto LABEL_41;
  }

  if ((v11 - 5) >= 2)
  {
    goto LABEL_39;
  }

  if (v6 != 4)
  {
    if (*v13 - 32 > 0x5E)
    {
LABEL_41:
      v26 = v7 + 1;
      do
      {
        v27 = *v13++;
        a3(a4, " %.2x", v27);
        --v26;
      }

      while (v26 > 1);
      return (v13 - a1);
    }

    a3(a4, " ");
    print_string(a1 + 4, v6 - 4, a3, a4);
    LODWORD(v13) = v13 + v7;
  }

  return (v13 - a1);
}

void sub_100024D48()
{
  if (!byte_100046A20)
  {
    return;
  }

  v0 = dword_10004A018;
  if (dword_10004A024)
  {
    v1 = dword_10004A018 == 0;
  }

  else
  {
    v1 = 0;
  }

  if (!v1 || dword_10004A01C != 0)
  {
    goto LABEL_13;
  }

  if (!ether_to_eui64(&qword_10004A030))
  {
    v0 = dword_10004A018;
LABEL_13:
    if (!v0)
    {
      v3 = qword_10004A030;
      v4 = HIDWORD(qword_10004A030);
      if (dword_10004A020)
      {
        v5 = qword_10004A030 == 0;
      }

      else
      {
        v5 = 0;
      }

      if (v5)
      {
        LODWORD(qword_10004A030) = 0;
        ntohl();
        HIDWORD(qword_10004A030) = htonl();
        if (HIDWORD(qword_10004A030))
        {
          v3 = 0;
          v4 = 1;
          dword_10004A018 = 1;
        }

        else
        {
          v4 = 0;
          v3 = 0;
        }
      }

      if (!(v4 | v3))
      {
        do
        {
          LODWORD(qword_10004A030) = magic();
          HIDWORD(qword_10004A030) = magic();
          LOBYTE(qword_10004A030) = qword_10004A030 & 0xFD;
        }

        while (!qword_10004A030);
      }
    }

    goto LABEL_24;
  }

  dword_10004A018 = 1;
LABEL_24:
  if (dword_10004A01C)
  {
    v6 = 1;
  }

  else
  {
    v6 = dword_10004A020 == 0;
  }

  if (!v6 && !qword_10004A038)
  {
    LODWORD(qword_10004A038) = 0;
    ntohl();
    HIDWORD(qword_10004A038) = htonl();
    if (HIDWORD(qword_10004A038))
    {
      dword_10004A01C = 1;
    }
  }
}

BOOL sub_100024EB0(unsigned __int8 *a1, unsigned int a2)
{
  if (a2 < 44)
  {
    return 0;
  }

  v3 = a1[10];
  if (v3 != 6)
  {
    return v3 != 44;
  }

  return a2 >= 0x40 && ((a1[57] & 1) == 0 || a2 - 4 != ((a1[56] >> 2) & 0x3C) + 40);
}

char *llv6_ntoa(unint64_t a1)
{
  v1 = eui64_ntoa(a1);
  snprintf(byte_10004BED4, 0x40uLL, "fe80::%s", v1);
  return byte_10004BED4;
}

uint64_t sub_100024F74(const char **a1)
{
  v1 = *a1;
  v2 = strchr(*a1, 44);
  if (!v2)
  {
    v2 = &v1[strlen(v1)];
  }

  v12 = 0;
  v13 = 0;
  v3 = *v2;
  if (v2 != v1)
  {
    *v2 = 0;
    if (inet_pton(30, v1, &v12))
    {
      v4 = v12 == 0;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4 && HIDWORD(v12) == 0;
    if (!v5 || !v13)
    {
      option_error("Illegal interface identifier (local): %s");
      return 0;
    }

    if (option_priority >= dword_10004BF14)
    {
      qword_10004A030 = v13;
      dword_10004A018 = 1;
      dword_10004BF14 = option_priority;
    }

    *v2 = v3;
  }

  if (v3)
  {
    v7 = v2[1];
    v6 = v2 + 1;
    if (v7)
    {
      if (inet_pton(30, v6, &v12))
      {
        v8 = v12 == 0;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8 && HIDWORD(v12) == 0;
      if (v9 && v13)
      {
        if (option_priority >= dword_10004BF18)
        {
          qword_10004A038 = v13;
          dword_10004A01C = 1;
          dword_10004BF18 = option_priority;
        }

        goto LABEL_29;
      }

      option_error("Illegal interface identifier (remote): %s");
      return 0;
    }
  }

LABEL_29:
  v10 = override_value("+ipv6", option_priority, option_source);
  result = 1;
  if (v10)
  {
    byte_100046A20 = 1;
  }

  return result;
}

uint64_t sub_100025118(uint64_t a1, uint64_t (*a2)(uint64_t, const char *), uint64_t a3)
{
  if (dword_10004A018)
  {
    v5 = eui64_ntoa(qword_10004A030);
    snprintf(byte_10004BED4, 0x40uLL, "fe80::%s", v5);
    (a2)(a3, "%s", byte_10004BED4);
  }

  result = a2(a3, ",");
  if (dword_10004A01C)
  {
    v7 = eui64_ntoa(qword_10004A038);
    snprintf(byte_10004BED4, 0x40uLL, "fe80::%s", v7);
    return (a2)(a3, "%s", byte_10004BED4);
  }

  return result;
}

__n128 sub_1000251F4(int *a1)
{
  v1 = *a1;
  v2 = &ipv6cp_wantoptions + 52 * *a1;
  v3 = *v2;
  if (*v2)
  {
    v3 = *(&ipv6cp_allowoptions + 13 * v1) != 0;
  }

  *(v2 + 1) = v3;
  if (!*(v2 + 3))
  {
    do
    {
      *(v2 + 9) = magic();
      v4 = magic();
      *(v2 + 10) = v4;
      v2[36] &= ~2u;
    }

    while (!(*(v2 + 9) | v4));
  }

  v5 = &ipv6cp_gotoptions + 52 * v1;
  v6 = *(v2 + 1);
  *v5 = *v2;
  *(v5 + 1) = v6;
  result = *(v2 + 28);
  *(v5 + 28) = result;
  *(v5 + 11) = 0;
  *(v5 + 12) = 0;
  return result;
}

uint64_t sub_1000252A0(int *a1)
{
  v1 = (&ipv6cp_gotoptions + 52 * *a1);
  if (*v1)
  {
    v2 = 10;
  }

  else
  {
    v2 = 0;
  }

  return v2 | (4 * (v1[7] != 0));
}

int *sub_1000252D8(int *result, uint64_t a2, int *a3)
{
  v3 = &ipv6cp_gotoptions + 52 * *result;
  v4 = *a3;
  if (*v3)
  {
    if (v4 < 10)
    {
      *v3 = 0;
    }

    else
    {
      *a2 = 2561;
      *(a2 + 2) = *(v3 + 36);
      a2 += 10;
      v4 -= 10;
    }
  }

  if (*(v3 + 7))
  {
    if (v4 < 4)
    {
      *(v3 + 7) = 0;
    }

    else
    {
      *a2 = 1026;
      *(a2 + 2) = v3[33];
      *(a2 + 3) = v3[32];
      v4 -= 4;
    }
  }

  *a3 -= v4;
  return result;
}

BOOL sub_100025364(int *a1, uint64_t a2, int a3)
{
  v3 = &ipv6cp_gotoptions + 52 * *a1;
  if (*v3)
  {
    v4 = __OFSUB__(a3, 10);
    a3 -= 10;
    if (a3 < 0 != v4)
    {
      return 0;
    }

    v5 = *(a2 + 1) == 10 && *a2 == 1;
    if (!v5 || *(v3 + 9) != *(a2 + 2) || *(v3 + 10) != *(a2 + 6))
    {
      return 0;
    }

    a2 += 10;
  }

  if (*(v3 + 7))
  {
    v4 = __OFSUB__(a3, 4);
    a3 -= 4;
    if (a3 < 0 != v4 || *(a2 + 1) != 4 || *a2 != 2 || *(v3 + 16) != bswap32(*(a2 + 2)) >> 16)
    {
      return 0;
    }
  }

  return !a3;
}

uint64_t sub_100025410(int *a1, unsigned __int8 *a2, int a3)
{
  v4 = 0;
  v5 = &ipv6cp_gotoptions + 52 * *a1;
  v6 = *v5;
  v29 = *(v5 + 4);
  v30 = *(v5 + 20);
  v7 = *(v5 + 7);
  v8 = *(v5 + 8);
  v10 = *(v5 + 9);
  v9 = *(v5 + 10);
  v11 = *(v5 + 44);
  v12 = a3 - 10;
  if (a3 < 10 || !v6)
  {
    goto LABEL_12;
  }

  if (a2[1] != 10 || *a2 != 1)
  {
    v4 = 0;
LABEL_12:
    v17 = *(v5 + 7);
    v13 = a2;
    v12 = a3;
    goto LABEL_13;
  }

  v13 = a2 + 10;
  if (*(v5 + 2))
  {
    v14 = *(v5 + 44);
    v9 = *(a2 + 6);
    v15 = *(a2 + 2);
    for (i = v15; ; i = v15 & 0xFD)
    {
      v10 = v15 & 0xFFFFFF00 | i;
      if (v10 | v9)
      {
        if (v10 != *(v5 + 11) || v9 != *(v5 + 12))
        {
          break;
        }
      }

      v15 = magic();
      v9 = magic();
    }

    v17 = *(v5 + 7);
    v4 = 1;
    v11 = v14;
  }

  else
  {
    v4 = 1;
    v17 = *(v5 + 7);
  }

LABEL_13:
  v18 = 0;
  if (v17 && v13[1] == 4 && v12 >= 4)
  {
    if (*v13 != 2)
    {
      v18 = 0;
LABEL_22:
      v27 = v11;
      v28 = v8;
      while (1)
      {
        v19 = v13[1];
        if (v19 < 2)
        {
          return 0;
        }

        v12 -= v19;
        if (v12 < 0)
        {
          return 0;
        }

        v20 = *v13;
        if (v20 == 1)
        {
          if (v19 != 10 || *v5 != 0 || v4 != 0)
          {
            return 0;
          }

          if (*(v5 + 2))
          {
            v9 = *(v13 + 6);
            v24 = *(v13 + 2);
            for (j = v24; ; j = v24 & 0xFD)
            {
              v10 = v24 & 0xFFFFFF00 | j;
              if (v10 | v9)
              {
                if (v10 != *(v5 + 11) || v9 != *(v5 + 12))
                {
                  break;
                }
              }

              v24 = magic();
              v9 = magic();
            }
          }

          v4 = 1;
          v6 = 1;
        }

        else if (v20 == 2)
        {
          v21 = 0;
          if (v19 != 4 || *(v5 + 7) || v18)
          {
            return v21;
          }

          v18 = 1;
        }

        v13 += v19;
        if (v12 <= 1)
        {
          v8 = v28;
          v11 = v27;
          if (!v12)
          {
            goto LABEL_49;
          }

          return 0;
        }
      }
    }

    v7 = 0;
    v13 += 4;
    v18 = 1;
    v12 -= 4;
  }

  if (v12 >= 2)
  {
    goto LABEL_22;
  }

  if (v12)
  {
    return 0;
  }

LABEL_49:
  if (a1[2] != 9)
  {
    *v5 = v6;
    *(v5 + 4) = v29;
    *(v5 + 20) = v30;
    *(v5 + 7) = v7;
    *(v5 + 8) = v8;
    *(v5 + 9) = v10;
    *(v5 + 10) = v9;
    *(v5 + 44) = v11;
  }

  return 1;
}

uint64_t sub_1000256A4(uint64_t result, uint64_t a2, int a3)
{
  v3 = result;
  v4 = &ipv6cp_gotoptions + 52 * *result;
  LODWORD(result) = *v4;
  v5 = *(v4 + 7);
  if (a3 >= 10 && result && *(a2 + 1) == 10 && *a2 == 1)
  {
    if (*(a2 + 2) != *(v4 + 9))
    {
      return 0;
    }

    result = 0;
    if (*(a2 + 6) != *(v4 + 10))
    {
      return result;
    }

    a2 += 10;
    a3 -= 10;
  }

  if (!v5 || (*(a2 + 1) == 4 ? (v6 = a3 < 4) : (v6 = 1), v6))
  {
    if (!a3)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (*a2 != 2)
  {
    return 0;
  }

  if (*(v4 + 16) != bswap32(*(a2 + 2)) >> 16)
  {
    return 0;
  }

  v5 = 0;
  if (a3 != 4)
  {
    return 0;
  }

LABEL_15:
  if (*(v3 + 8) != 9)
  {
    *v4 = result;
    *(v4 + 7) = v5;
  }

  return 1;
}

uint64_t sub_10002577C(int *a1, unsigned __int8 *__src, int *a3, int a4)
{
  v4 = __src;
  v5 = &ipv6cp_wantoptions + 52 * *a1;
  v6 = &ipv6cp_hisoptions + 52 * *a1;
  v7 = (&ipv6cp_allowoptions + 52 * *a1);
  v8 = &ipv6cp_gotoptions + 52 * *a1;
  v9 = *a3;
  *(v6 + 12) = 0;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *v6 = 0u;
  v10 = 2;
  v11 = __src;
LABEL_2:
  v12 = v11;
LABEL_3:
  v13 = v12;
  while (v9)
  {
    if (v9 < 2 || ((v14 = v13[1], v14 >= 2) ? (v15 = v9 >= v14) : (v15 = 0), !v15))
    {
      LOWORD(v14) = v9;
      v11 = v13;
      v9 = 0;
      goto LABEL_36;
    }

    v9 -= v14;
    v11 = &v13[v14];
    if (*v13 != 1 || v14 != 10 || !*v7)
    {
      goto LABEL_36;
    }

    v16 = *(v13 + 2);
    v17 = HIDWORD(v16);
    if (!v16 && !*(v8 + 36))
    {
      goto LABEL_42;
    }

    if (*(v5 + 44) && *(v5 + 44) != v16 && !*(v8 + 44))
    {
      v21 = *(v5 + 44);
      v19 = v21;
      v20 = HIDWORD(v21);
      LODWORD(v16) = v21;
      goto LABEL_31;
    }

    if (!v16 || *(v8 + 36) == v16)
    {
      v18 = *(v13 + 2);
      if (!*(v8 + 44))
      {
        v16 = *(v5 + 44);
        v17 = HIDWORD(v16);
        LODWORD(v18) = v16;
      }

      v19 = v16;
      v20 = v17;
      while (!(v20 | v18) || v18 == *(v8 + 9) && v20 == *(v8 + 10))
      {
        LODWORD(v16) = magic();
        v20 = magic();
        v19 = v16 & 0xFD;
        LODWORD(v18) = v16 & 0xFFFFFFFD;
      }

      v21 = v16 & 0xFFFFFF00 | v19 | (v20 << 32);
LABEL_31:
      *(v8 + 44) = v21;
      v22 = v16 & 0xFFFFFF00 | v19 | (v20 << 32);
      *(v13 + 2) = v22;
      *v6 = 1;
      *(v6 + 44) = v22;
      if (!a4)
      {
        v12 = v11;
        if (v10 == 4)
        {
          goto LABEL_3;
        }

        if (v10 == 2)
        {
          v4 = __src;
        }

        v23 = 10;
        v10 = 3;
        goto LABEL_39;
      }

LABEL_42:
      LOWORD(v14) = 10;
LABEL_36:
      if (v10 != 4)
      {
        v4 = __src;
      }

      v23 = v14;
      v10 = 4;
LABEL_39:
      if (v4 != v13)
      {
        memcpy(v4, v13, v23);
      }

      v4 += v23;
      goto LABEL_2;
    }

    *v6 = 1;
    *(v6 + 44) = v16;
    v13 = v11;
    if (v10 == 2)
    {
      v23 = 10;
      v13 = v12;
      goto LABEL_39;
    }
  }

  if (v10 == 4)
  {
    v24 = a3;
  }

  else
  {
    v24 = a3;
    if (!*v6 && !a4 && *(v5 + 1))
    {
      if (v10 == 2)
      {
        *(v5 + 1) = 0;
        v4 = __src;
      }

      *v4 = 2561;
      *(v4 + 2) = *(v5 + 44);
      LODWORD(v4) = v4 + 10;
      v10 = 3;
    }
  }

  *v24 = v4 - __src;
  return v10;
}

void sub_100025A80(unsigned int *a1)
{
  v2 = &ipv6cp_hisoptions + 52 * *a1;
  v3 = &ipv6cp_gotoptions + 52 * *a1;
  if (!*v2)
  {
    *(v2 + 44) = *(&ipv6cp_wantoptions + 52 * *a1 + 44);
  }

  if (no_ifaceid_neg)
  {
    goto LABEL_4;
  }

  if (!*(v2 + 44))
  {
    v9 = "Could not determine remote LL address";
    error("Could not determine remote LL address");
    goto LABEL_27;
  }

  if (!*(v3 + 36))
  {
    v9 = "Could not determine local LL address";
    error("Could not determine local LL address");
    goto LABEL_27;
  }

  if (*(v3 + 9) == *(v2 + 11) && *(v3 + 10) == *(v2 + 12))
  {
    v9 = "local and remote LL addresses are equal";
    error("local and remote LL addresses are equal");
LABEL_27:
    v10 = &ipv6cp_fsm + 80 * *a1;
    v11 = v9;
    goto LABEL_28;
  }

LABEL_4:
  v4 = eui64_ntoa(*(v3 + 36));
  snprintf(byte_10004BED4, 0x40uLL, "fe80::%s", v4);
  script_setenv("LLLOCAL", byte_10004BED4);
  v5 = eui64_ntoa(*(v2 + 44));
  snprintf(byte_10004BED4, 0x40uLL, "fe80::%s", v5);
  script_setenv("LLREMOTE", byte_10004BED4);
  if (sif6addr(*a1, *(v3 + 36), *(v2 + 44)))
  {
    if (sifup())
    {
      sifnpmode(*a1, 87, 0);
      v6 = eui64_ntoa(*(v3 + 36));
      snprintf(byte_10004BED4, 0x40uLL, "fe80::%s", v6);
      notice("local  LL address %s", byte_10004BED4);
      v7 = eui64_ntoa(*(v2 + 44));
      snprintf(byte_10004BED4, 0x40uLL, "fe80::%s", v7);
      notice("remote LL address %s", byte_10004BED4);
      np_up();
      byte_10004BF1C = 1;
      if ((byte_10004BF20 & 1) == 0 && !dword_10004BF24)
      {
        byte_10004BF20 = 1;

        sub_100025E64("/etc/ppp/ipv6-up");
      }

      return;
    }

    if (debug)
    {
      warning("sifup failed (IPV6)");
    }
  }

  else if (debug)
  {
    warning("sif6addr failed");
  }

  v10 = &ipv6cp_fsm + 80 * *a1;
  v11 = "Interface configuration failed";
LABEL_28:

  fsm_close(v10, v11);
}

uint64_t sub_100025D48(unsigned int *a1)
{
  update_link_stats(*a1);
  if (byte_10004BF1C == 1)
  {
    byte_10004BF1C = 0;
    np_down();
  }

  sifnpmode(*a1, 87, 1);
  sifdown();
  result = cif6addr();
  if (byte_10004BF20 == 1 && dword_10004BF24 == 0)
  {
    byte_10004BF20 = 0;

    return sub_100025E64("/etc/ppp/ipv6-down");
  }

  return result;
}

void sub_100025E18()
{
  if (byte_10004BF28 == 1)
  {
    byte_10004BF28 = 0;
    np_finished();
  }
}

uint64_t ***sub_100025E3C(uint64_t ***result)
{
  if (*(result + 6) - *(result + 7) == 2)
  {
    return notify(protocolsready_notifier, 0);
  }

  return result;
}

uint64_t sub_100025E64(char *a1)
{
  snprintf(__str, 0x20uLL, "%d", baud_rate);
  v2 = eui64_ntoa(qword_10004A064);
  snprintf(byte_10004BED4, 0x40uLL, "fe80::%s", v2);
  __strlcpy_chk();
  v3 = eui64_ntoa(qword_10004A0D4);
  snprintf(byte_10004BED4, 0x40uLL, "fe80::%s", v3);
  __strlcpy_chk();
  v5[0] = a1;
  v5[1] = &ifname;
  v5[2] = &devnam;
  v5[3] = __str;
  v5[4] = &v7;
  v5[5] = &v6;
  v5[6] = ipparam;
  v5[7] = 0;
  result = run_program(a1, v5, 0, sub_100025FD0, 0);
  dword_10004BF24 = result;
  return result;
}

void sub_100025FD0()
{
  dword_10004BF24 = 0;
  if (byte_10004BF20 == 1)
  {
    if (dword_10004A0E8 == 9)
    {
      return;
    }

    v0 = "/etc/ppp/ipv6-down";
  }

  else
  {
    if (dword_10004A0E8 != 9)
    {
      return;
    }

    v0 = "/etc/ppp/ipv6-up";
  }

  byte_10004BF20 ^= 1u;
  sub_100025E64(v0);
}

void sub_100026098(int a1)
{
  v1 = &acscp_fsm + 80 * a1;
  acsp_no_routes = 0;
  acsp_no_domains = 0;
  *v1 = a1;
  *(v1 + 1) = 33333;
  *(v1 + 7) = off_100046F58;
  fsm_init(v1);
  *&acscp_wantoptions = 0x100000000;
  *(&acscp_wantoptions + 1) = &_mh_execute_header;
  acscp_allowoptions = 0x100000000;
  *&byte_10004A178 = &_mh_execute_header;
}

uint64_t sub_1000261A8(char *a1, unsigned int a2, void (*a3)(uint64_t, const char *, ...), uint64_t a4)
{
  if (a2 < 4)
  {
    return 0;
  }

  v6 = __rev16(*(a1 + 1));
  v7 = v6 - 4;
  if (v6 < 4 || v6 > a2)
  {
    return 0;
  }

  v11 = *a1;
  v12 = a1[1];
  v13 = (a1 + 4);
  if ((v11 - 1) > 6)
  {
    v14 = " code=0x%x";
  }

  else
  {
    v14 = " %s";
  }

  a3(a4, v14);
  a3(a4, " id=0x%x", v12);
  if ((v11 - 1) < 4)
  {
    if (v6 >= 6)
    {
      while (1)
      {
        v15 = v13[1];
        if (v15 < 2 || v7 < v15)
        {
          goto LABEL_36;
        }

        v17 = *v13;
        a3(a4, " <");
        if (v17 == 1)
        {
          break;
        }

        v18 = v13;
        if (v17 == 2)
        {
          v19 = "domain vers %d";
LABEL_23:
          v18 = v13 + 6;
          htonl();
          a3(a4, v19);
        }

        if (v18 < &v13[v15])
        {
          v20 = &v13[v15];
          v21 = &v13[v15] - v18;
          do
          {
            v22 = *v18++;
            a3(a4, " %.2x", v22);
            --v21;
          }

          while (v21);
          v18 = v20;
        }

        v7 -= v15;
        a3(a4, ">");
        v13 = v18;
        if (v7 <= 1)
        {
          goto LABEL_35;
        }
      }

      v19 = "route vers %d";
      goto LABEL_23;
    }

LABEL_34:
    v18 = (a1 + 4);
LABEL_35:
    v13 = v18;
    if (v7 < 1)
    {
      return (v13 - a1);
    }

    goto LABEL_36;
  }

  if ((v11 - 5) >= 2)
  {
    goto LABEL_34;
  }

  if (v6 != 4)
  {
    if (*v13 - 32 > 0x5E)
    {
LABEL_36:
      v23 = v7 + 1;
      do
      {
        v24 = *v13++;
        a3(a4, " %.2x", v24);
        --v23;
      }

      while (v23 > 1);
      return (v13 - a1);
    }

    a3(a4, " ");
    print_string(a1 + 4, v6 - 4, a3, a4);
    LODWORD(v13) = v13 + v7;
  }

  return (v13 - a1);
}

void *sub_1000263F4()
{
  if (byte_100046F00)
  {
    v0 = 0;
  }

  else
  {
    v0 = acsp_use_dhcp == 0;
  }

  if (!v0 || acsp_intercept_dhcp != 0)
  {
    result = add_notifier(&phasechange, acsp_init_plugins, 0);
    if (acsp_intercept_dhcp)
    {
      ip_src_address_filter |= 4u;
    }
  }

  if (acsp_use_dhcp)
  {
    ip_src_address_filter |= 8u;
  }

  return result;
}

double sub_1000264A8()
{
  result = *&acscp_wantoptions;
  acscp_gotoptions = acscp_wantoptions;
  return result;
}

uint64_t sub_1000264C4()
{
  if (acscp_gotoptions)
  {
    v0 = 6;
  }

  else
  {
    v0 = 0;
  }

  if (BYTE8(acscp_gotoptions))
  {
    v1 = 6;
  }

  else
  {
    v1 = 0;
  }

  return (v1 + v0);
}

void sub_1000264F0(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  if (acscp_gotoptions)
  {
    if (v3 < 6)
    {
      LOBYTE(acscp_gotoptions) = 0;
    }

    else
    {
      *a2 = 1537;
      *(a2 + 2) = BYTE7(acscp_gotoptions);
      *(a2 + 3) = BYTE6(acscp_gotoptions);
      *(a2 + 4) = BYTE5(acscp_gotoptions);
      *(a2 + 5) = BYTE4(acscp_gotoptions);
      a2 += 6;
      v3 -= 6;
    }
  }

  if (BYTE8(acscp_gotoptions))
  {
    if (v3 < 6)
    {
      BYTE8(acscp_gotoptions) = 0;
    }

    else
    {
      *a2 = 1538;
      *(a2 + 2) = HIBYTE(acscp_gotoptions);
      *(a2 + 3) = BYTE14(acscp_gotoptions);
      *(a2 + 4) = BYTE13(acscp_gotoptions);
      *(a2 + 5) = BYTE12(acscp_gotoptions);
      v3 -= 6;
    }
  }

  *a3 -= v3;
}

BOOL sub_1000265B0(uint64_t a1, uint64_t a2, int a3)
{
  if (acscp_gotoptions)
  {
    v3 = __OFSUB__(a3, 6);
    a3 -= 6;
    if (a3 < 0 != v3)
    {
      return 0;
    }

    v4 = *(a2 + 1) == 6 && *a2 == 1;
    if (!v4 || DWORD1(acscp_gotoptions) != bswap32(*(a2 + 2)))
    {
      return 0;
    }

    a2 += 6;
  }

  if (BYTE8(acscp_gotoptions))
  {
    if (a3 < 6)
    {
      return 0;
    }

    if (*(a2 + 1) != 6 || *a2 != 2)
    {
      return 0;
    }

    return HIDWORD(acscp_gotoptions) == bswap32(*(a2 + 2)) && a3 == 6;
  }

  return !a3;
}

uint64_t sub_10002664C(uint64_t a1, uint64_t a2, int a3)
{
  v3 = DWORD1(acscp_gotoptions);
  v4 = HIDWORD(acscp_gotoptions);
  if (acscp_gotoptions && a3 >= 6 && *(a2 + 1) == 6 && *a2 == 1)
  {
    v5 = *(a2 + 2);
    a2 += 6;
    v6 = bswap32(v5);
    if (v6 < 2)
    {
      v3 = v6;
    }

    a3 -= 6;
  }

  if (BYTE8(acscp_gotoptions))
  {
    if (*(a2 + 1) == 6 && a3 >= 6)
    {
      if (*a2 != 2)
      {
        goto LABEL_17;
      }

      a3 -= 6;
      v8 = *(a2 + 2);
      a2 += 6;
      v9 = bswap32(v8);
      if (v9 < 2)
      {
        v4 = v9;
      }
    }
  }

  if (a3 < 3)
  {
LABEL_19:
    if (*(a1 + 8) != 9)
    {
      DWORD1(acscp_gotoptions) = v3;
      HIDWORD(acscp_gotoptions) = v4;
    }

    return 1;
  }

  else
  {
LABEL_17:
    while (1)
    {
      v10 = *(a2 + 1);
      a3 -= v10;
      if (a3 < 0)
      {
        return 0;
      }

      a2 += v10;
      if (a3 <= 2)
      {
        goto LABEL_19;
      }
    }
  }
}

uint64_t sub_100026724(uint64_t a1, uint64_t a2, int a3)
{
  v3 = acscp_gotoptions;
  v4 = BYTE8(acscp_gotoptions);
  if (acscp_gotoptions && a3 >= 6 && *(a2 + 1) == 6 && *a2 == 1)
  {
    if (bswap32(*(a2 + 2)) != DWORD1(acscp_gotoptions))
    {
      return 0;
    }

    v3 = 0;
    a2 += 6;
    a3 -= 6;
  }

  if (!BYTE8(acscp_gotoptions) || (*(a2 + 1) == 6 ? (v5 = a3 < 6) : (v5 = 1), v5))
  {
    if (!a3)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (*a2 != 2)
  {
    return 0;
  }

  if (bswap32(*(a2 + 2)) != HIDWORD(acscp_gotoptions))
  {
    return 0;
  }

  v4 = 0;
  if (a3 != 6)
  {
    return 0;
  }

LABEL_14:
  if (*(a1 + 8) != 9)
  {
    LOBYTE(acscp_gotoptions) = v3;
    BYTE8(acscp_gotoptions) = v4;
  }

  return 1;
}

uint64_t sub_1000267E8(int a1, unsigned __int8 *__src, int *a3, int a4)
{
  v5 = *a3;
  acscp_hisoptions = 0;
  *&byte_10004A188 = 0;
  v6 = 2;
  v7 = acscp_allowoptions;
  v8 = __src;
  v9 = __src;
LABEL_2:
  v10 = v8;
LABEL_3:
  v11 = byte_10004A178;
  v12 = dword_10004A17C;
  v13 = v10;
  v14 = HIDWORD(acscp_allowoptions);
  while (v5)
  {
    if (v5 < 2 || ((v15 = v13[1], v15 >= 2) ? (v16 = v5 >= v15) : (v16 = 0), !v16))
    {
      LOWORD(v15) = v5;
      v8 = v13;
      v5 = 0;
      goto LABEL_29;
    }

    v17 = *v13;
    v5 -= v15;
    v8 = &v13[v15];
    if (v17 == 2)
    {
      if (v15 != 6 || !v11)
      {
        goto LABEL_29;
      }

      v18 = &byte_10004A188;
      if (bswap32(*(v13 + 2)) > v12)
      {
        HIBYTE(v14) = HIBYTE(v12);
        v19 = &dword_10004A17C;
LABEL_23:
        v13[2] = HIBYTE(v14);
        v13[3] = *(v19 + 1);
        v13[4] = BYTE1(*v19);
        v13[5] = *v19;
        if (!a4)
        {
          v10 = v8;
          if (v6 == 4)
          {
            goto LABEL_3;
          }

          if (v6 == 2)
          {
            v9 = __src;
          }

          v20 = 6;
          v6 = 3;
          goto LABEL_32;
        }

        LOWORD(v15) = 6;
LABEL_29:
        if (v6 != 4)
        {
          v9 = __src;
        }

        v20 = v15;
        v6 = 4;
LABEL_32:
        if (v9 != v13)
        {
          memcpy(v9, v13, v20);
          v7 = acscp_allowoptions;
        }

        v9 += v20;
        goto LABEL_2;
      }
    }

    else
    {
      if (v17 != 1 || v15 != 6 || !v7)
      {
        goto LABEL_29;
      }

      v18 = &acscp_hisoptions;
      if (bswap32(*(v13 + 2)) > v14)
      {
        v19 = &acscp_allowoptions + 1;
        goto LABEL_23;
      }
    }

    *v18 = 1;
    v13 = v8;
    if (v6 == 2)
    {
      v20 = 6;
      v13 = v10;
      goto LABEL_32;
    }
  }

  *a3 = v9 - __src;
  return v6;
}

void sub_1000269E0()
{
  mtu = netif_get_mtu();
  v1 = notify(acsp_up_notifier, 0);
  if (acsp_up_hook)
  {
    acsp_up_hook(v1);
  }

  check_protocols_ready();

  acsp_start(mtu);
}

uint64_t (*sub_100026A40())(void)
{
  notify(acsp_down_notifier, 0);
  acsp_stop();
  result = acsp_down_hook;
  if (acsp_down_hook)
  {

    return result();
  }

  return result;
}

void sub_100026A8C()
{
  if (byte_10004BF4C == 1)
  {
    byte_10004BF4C = 0;
    np_finished();
  }
}

uint64_t ***sub_100026AB0(uint64_t ***result)
{
  if (*(result + 6) - *(result + 7) == 2)
  {
    return notify(protocolsready_notifier, 0);
  }

  return result;
}

void acsp_init_plugins()
{
  qword_10004BF50 = 0;
  remove_notifier(&phasechange, acsp_init_plugins, 0);
  qword_10004BF58 = 0;
  qword_10004BF60 = 0;
  if (!serverid)
  {
    if (!acsp_no_routes)
    {
      LOBYTE(acscp_wantoptions) = 1;
    }

    if (!acsp_no_domains)
    {
      BYTE8(acscp_wantoptions) = 1;
    }

    buffer[0] = 0;
    NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetIPv4);
    if (!NetworkGlobalEntity)
    {
      goto LABEL_22;
    }

    v9 = NetworkGlobalEntity;
    v10 = SCDynamicStoreCopyValue(cfgCache, NetworkGlobalEntity);
    if (v10)
    {
      v11 = v10;
      Value = CFDictionaryGetValue(v10, kSCPropNetIPv4Router);
      if (Value)
      {
        v13 = Value;
        v14 = CFGetTypeID(Value);
        if (v14 == CFStringGetTypeID())
        {
          CFStringGetCString(v13, buffer, 32, 0x8000100u);
        }
      }

      CFRelease(v11);
    }

    CFRelease(v9);
    if (buffer[0])
    {
      inet_aton(buffer, &dword_10004BF68);
    }

    else
    {
LABEL_22:
      dword_10004BF68 = 0;
    }

    goto LABEL_23;
  }

  v0 = SCPreferencesCreate(0, @"pppd", @"com.apple.RemoteAccessServers.plist");
  if (v0)
  {
    v1 = v0;
    v2 = SCPreferencesGetValue(v0, @"Servers");
    if (v2)
    {
      v3 = v2;
      v4 = CFStringCreateWithCString(0, serverid, 0);
      if (!v4)
      {
LABEL_9:
        CFRelease(v1);
        goto LABEL_23;
      }

      v5 = v4;
      v6 = CFDictionaryGetValue(v3, v4);
      if (v6)
      {
        v7 = v6;
        if (!acsp_no_routes)
        {
          v21 = CFDictionaryGetValue(v6, kSCEntNetIPv4);
          if (v21)
          {
            v22 = v21;
            v23 = CFGetTypeID(v21);
            if (v23 == CFDictionaryGetTypeID())
            {
              v24 = CFDictionaryGetValue(v22, @"OfferedRouteAddresses");
              if (v24)
              {
                v25 = v24;
                v26 = CFGetTypeID(v24);
                if (v26 == CFArrayGetTypeID())
                {
                  Count = CFArrayGetCount(v25);
                  v28 = CFDictionaryGetValue(v22, @"OfferedRouteMasks");
                  if (v28)
                  {
                    v29 = v28;
                    v30 = CFGetTypeID(v28);
                    if (v30 == CFArrayGetTypeID())
                    {
                      v31 = CFArrayGetCount(v25);
                      v32 = CFDictionaryGetValue(v22, @"OfferedRouteTypes");
                      if (v32)
                      {
                        v33 = v32;
                        v84 = v29;
                        v34 = CFGetTypeID(v32);
                        v35 = v34 == CFArrayGetTypeID();
                        v36 = v84;
                        if (v35)
                        {
                          v37 = CFArrayGetCount(v33);
                          if (Count == v31 && Count == v37)
                          {
                            LOBYTE(acscp_allowoptions) = 1;
                            if (Count >= 1)
                            {
                              v38 = v33;
                              v39 = 0;
                              *&v86[0].s_addr = 0;
                              v82 = "ACSP plugin: invalid route type specified\n";
                              v83 = Count;
                              v40 = v38;
                              while (1)
                              {
                                ValueAtIndex = CFArrayGetValueAtIndex(v25, v39);
                                buffer[0] = 0;
                                CFStringGetCString(ValueAtIndex, buffer, 1024, 0x8000100u);
                                v42 = CFArrayGetValueAtIndex(v36, v39);
                                LOBYTE(v87.s_addr) = 0;
                                CFStringGetCString(v42, &v87, 1024, 0x8000100u);
                                v43 = CFArrayGetValueAtIndex(v40, v39);
                                if (CFStringCompare(v43, @"Private", 0))
                                {
                                  if (CFStringCompare(v43, @"Public", 0))
                                  {
                                    goto LABEL_100;
                                  }

                                  v44 = 2;
                                }

                                else
                                {
                                  v44 = 1;
                                }

                                v45 = malloc_type_malloc(0x20uLL, 0x1020040983EA955uLL);
                                if (!v45)
                                {
                                  break;
                                }

                                v46 = v45;
                                *&v45->s_addr = 0u;
                                *&v45[4].s_addr = 0u;
                                if (!inet_aton(buffer, &v86[1]) || !inet_aton(&v87, v86))
                                {
                                  error("ACSP plugin: invalid ip address or mask specified\n", "ACSP plugin: invalid route type specified\n");
                                  free(v46);
                                  goto LABEL_102;
                                }

                                s_addr = v86[0].s_addr;
                                v46[2].s_addr = v86[1];
                                v46[3].s_addr = s_addr;
                                LOWORD(v46[5].s_addr) = v44;
                                v46[6].s_addr = 0;
                                *&v46->s_addr = qword_10004BF58;
                                qword_10004BF58 = v46;
                                ++v39;
                                v36 = v84;
                                v40 = v38;
                                if (v83 == v39)
                                {
                                  goto LABEL_7;
                                }
                              }

                              v82 = "ACSP plugin: no memory\n";
LABEL_100:
                              error(v82, v82);
                              LOBYTE(acscp_allowoptions) = 0;
                            }

                            if (!qword_10004BF58)
                            {
LABEL_102:
                              LOBYTE(acscp_allowoptions) = 0;
                            }
                          }

                          else
                          {
                            error("ACSP plugin: while reading prefs - route address, mask, and type counts not equal\n");
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

LABEL_7:
        if (!acsp_no_domains)
        {
          v48 = CFDictionaryGetValue(v7, kSCEntNetDNS);
          if (v48)
          {
            v49 = v48;
            v50 = CFGetTypeID(v48);
            if (v50 == CFDictionaryGetTypeID())
            {
              v51 = CFDictionaryGetValue(v49, @"OfferedSearchDomains");
              if (v51)
              {
                v52 = v51;
                v53 = CFGetTypeID(v51);
                if (v53 == CFArrayGetTypeID())
                {
                  v54 = CFArrayGetCount(v52);
                  v55 = CFDictionaryGetValue(v49, @"OfferedSearchDomainServers");
                  v56 = v55;
                  if (v55 && (v57 = CFGetTypeID(v55), v57 == CFArrayGetTypeID()))
                  {
                    v85 = v54;
                    if (CFArrayGetCount(v56) != v54)
                    {
                      error("ACSP plugin: search domain count not equal to search domain server count\n");
                      goto LABEL_8;
                    }
                  }

                  else
                  {
                    v85 = 0;
                  }

                  v87.s_addr = 0;
                  byte_10004A178 = 1;
                  if (v54)
                  {
                    if (v54 >= 1)
                    {
                      for (i = 0; v54 != i; ++i)
                      {
                        v59 = CFArrayGetValueAtIndex(v52, i);
                        buffer[0] = 0;
                        CFStringGetCString(v59, buffer, 1024, 0x8000100u);
                        v60 = strlen(buffer);
                        if (v60)
                        {
                          v61 = v60;
                          v62 = malloc_type_malloc(0x18uLL, 0x1030040A9CFD972uLL);
                          if (!v62)
                          {
                            error("ACSP plugin: no memory\n");
                            byte_10004A178 = 0;
                            break;
                          }

                          v63 = v62;
                          v64 = malloc_type_malloc(v61 + 1, 0x2E559E60uLL);
                          *&v63[4].s_addr = v64;
                          if (!v64)
                          {
                            error("ACSP plugin: no memory\n");
                            byte_10004A178 = 0;
                            free(v63);
                            break;
                          }

                          memcpy(v64, buffer, v61 + 1);
                          if (v85)
                          {
                            v65 = CFArrayGetValueAtIndex(v56, i);
                            buffer[0] = 0;
                            CFStringGetCString(v65, buffer, 1024, 0x8000100u);
                            if (!inet_aton(buffer, &v87))
                            {
                              error("ACSP plugin: invalid ip address specified for DNS server\n");
                              free(v63);
                              goto LABEL_109;
                            }

                            v63[2].s_addr = v87.s_addr;
                          }

                          else
                          {
                            v63[2].s_addr = 0;
                          }

                          *&v63->s_addr = qword_10004BF60;
                          qword_10004BF60 = v63;
                        }
                      }
                    }
                  }

                  else
                  {
                    v66 = SCDynamicStoreCreate(0, @"pppd", 0, 0);
                    if (v66)
                    {
                      v67 = v66;
                      v68 = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetDNS);
                      if (v68)
                      {
                        v69 = v68;
                        v70 = SCDynamicStoreCopyValue(v67, v68);
                        if (v70)
                        {
                          v71 = v70;
                          v72 = CFGetTypeID(v70);
                          if (v72 == CFDictionaryGetTypeID())
                          {
                            v73 = CFDictionaryGetValue(v71, kSCPropNetDNSDomainName);
                            if (v73)
                            {
                              v74 = v73;
                              v75 = CFGetTypeID(v73);
                              if (v75 == CFStringGetTypeID())
                              {
                                buffer[0] = 0;
                                CFStringGetCString(v74, buffer, 1024, 0x8000100u);
                                v76 = strlen(buffer);
                                if (v76)
                                {
                                  v77 = malloc_type_malloc(0x18uLL, 0x1030040A9CFD972uLL);
                                  if (v77)
                                  {
                                    v78 = v77;
                                    v79 = v76 + 1;
                                    v80 = v76 + 1;
                                    v81 = malloc_type_malloc(v79, 0x8390BA50uLL);
                                    v78[2] = v81;
                                    if (v81)
                                    {
                                      memcpy(v81, buffer, v80);
                                      *(v78 + 2) = 0;
                                      *v78 = qword_10004BF60;
                                      qword_10004BF60 = v78;
                                    }

                                    else
                                    {
                                      error("ACSP plugin: no memory\n");
                                      free(v78);
                                    }
                                  }

                                  else
                                  {
                                    error("ACSP plugin: no memory\n");
                                  }
                                }
                              }
                            }
                          }

                          CFRelease(v69);
                        }

                        else
                        {
                          v71 = v69;
                        }

                        CFRelease(v71);
                      }

                      CFRelease(v67);
                    }
                  }

                  if (!qword_10004BF60)
                  {
LABEL_109:
                    byte_10004A178 = 0;
                  }
                }
              }
            }
          }
        }
      }

LABEL_8:
      CFRelease(v5);
      goto LABEL_9;
    }
  }

LABEL_23:
  for (j = 1; ; j = 0)
  {
    v16 = j;
    v17 = malloc_type_malloc(0x78uLL, 0x10A0040E44D7C7EuLL);
    if (!v17)
    {
      break;
    }

    v18 = v17;
    if (v16)
    {
      *(v17 + 64) = 1;
      if (!sub_100028F04(v17, 1))
      {
        v19 = &qword_10004BF58;
LABEL_31:
        v20 = v18[9];
        *(v20 + 48) = *v19;
        if (*(v18 + 64) == 2)
        {
          add_notifier_last(&ip_up_notify, sub_100028FF0, v20);
        }

        else
        {
          add_notifier(&ip_up_notify, sub_100028FF0, v20);
        }

        add_notifier(&ip_down_notify, sub_100029030, v18[9]);
        *(v18 + 12) = 0x2000000000;
        v18[4] = 0;
        v18[5] = 0;
        *(v18 + 24) = 16;
        *v18 = qword_10004BF50;
        qword_10004BF50 = v18;
        goto LABEL_35;
      }
    }

    else
    {
      *(v17 + 64) = 2;
      if (!sub_100028F04(v17, 2))
      {
        v19 = &qword_10004BF60;
        goto LABEL_31;
      }
    }

    error("error initializing acsp plugin type\n", v82);
    free(v18);
LABEL_35:
    if ((v16 & 1) == 0)
    {
      ipdata_input_hook = sub_1000274E8;
      ipdata_up_hook = sub_100027EEC;
      ipdata_down_hook = sub_100027FD8;
      ipdata_print_hook = sub_100028040;
      return;
    }
  }

  error("acscp unable allocate plugin structures\n");
  byte_100046F00 = 0;
}

void sub_1000274E8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if (!acsp_intercept_dhcp || ntohl() != -1 || ntohs() != 68 || ntohs() != 67)
  {
    if (!acsp_use_dhcp || *(a2 + 16) != a4 || ntohs() != 67 || ntohs() != 68)
    {
      return;
    }

    if (a3 > 0x10E)
    {
      if (!qword_10004BF70)
      {
        return;
      }

      ntohl();
      if (bswap32(*(a2 + 264)) == 1669485411)
      {
        if (*(a2 + 268) == 53 && *(a2 + 269) == 1 && *(a2 + 270) == 5)
        {
          __stringp = 0;
          v28 = a3 - 271;
          if ((a3 - 271) >= 1)
          {
            v29 = *(a2 + 271);
            if (v29 != 255)
            {
              v30 = 0;
              v31 = (a2 + 271);
              do
              {
                if (v29)
                {
                  v32 = v31[1];
                  v33 = v28 - 2;
                  v18 = __OFSUB__(v33, v32);
                  v34 = v33 - v32;
                  if ((v34 < 0) ^ v18 | (v34 == 0))
                  {
LABEL_105:
                    warning("DHCP packet received with incorrect message option\n");
                    return;
                  }

                  v35 = (v31 + 2);
                  v95 = v34;
                  switch(v29)
                  {
                    case 1:
                      v43 = *v35;
                      v44 = qword_10004BF70;
                      if (*v35)
                      {
                        v45 = *(qword_10004BF70 + 36) == a4;
                      }

                      else
                      {
                        v45 = 0;
                      }

                      if (v45 && *(qword_10004BF70 + 24) != v43)
                      {
                        *(qword_10004BF70 + 24) = v43;
                        if (!uifaddr(a1, a4, *(v44 + 40), v43))
                        {
                          ntohl();
                          ntohl();
                          notice("failed to configure dhcp option 'subnet mask' = %d.%d.%d.%d, our %x, his %x\n");
                        }
                      }

                      else
                      {
                        v93 = HIBYTE(v43);
                        v46 = *v35;
                        v94 = BYTE1(v43);
                        v47 = BYTE2(v43);
                        v48 = ntohl();
                        v49 = ntohl();
                        info("ignoring dhcp option 'subnet mask' = %d.%d.%d.%d, current addr %x, current mask %x\n", v46, v94, v47, v93, v48, v49);
                      }

                      break;
                    case 15:
                      if (v30)
                      {
                        notice("ignoring dhcp option 'domain name', option already processed.\n");
                        break;
                      }

                      __memcpy_chk();
                      __s[v32] = 0;
                      __stringp = __s;
                      v50 = ",";
                      if (!strchr(__s, 44))
                      {
                        v50 = ";";
                        if (!strchr(__s, 59))
                        {
                          v50 = "\n";
                          if (!strchr(__s, 10))
                          {
                            v50 = "\r";
                            if (!strchr(__s, 13))
                            {
                              if (strchr(__s, 32))
                              {
                                v50 = " ";
                              }

                              else
                              {
                                v50 = &unk_10002EF18;
                              }
                            }
                          }
                        }
                      }

                      v51 = strsep(&__stringp, v50);
                      v52 = 0;
                      while (1)
                      {
                        if (v51 && !*v51)
                        {
                          v30 = v52;
                        }

                        else
                        {
                          v53 = malloc_type_malloc(0x18uLL, 0x1030040A9CFD972uLL);
                          if (!v53)
                          {
                            error("failed to allocate domain from DHCP packet\n");
                            v30 = v52;
                            goto LABEL_91;
                          }

                          v30 = v53;
                          v53[1] = 0;
                          v53[2] = 0;
                          *v53 = v52;
                          if (!v51)
                          {
                            v53[2] = __s;
                            goto LABEL_91;
                          }

                          v53[2] = v51;
                          v52 = v53;
                        }

                        v51 = strsep(&__stringp, v50);
                        if (!v51)
                        {
                          goto LABEL_91;
                        }
                      }

                    case 249:
                      if (v31[1])
                      {
                        v36 = 0;
                        do
                        {
                          v37 = malloc_type_malloc(0x20uLL, 0x1020040983EA955uLL);
                          if (!v37)
                          {
                            error("DHCP: no memory\n");
                            return;
                          }

                          v38 = v37;
                          *v37 = 0u;
                          v37[1] = 0u;
                          v39 = *(v35 + v36);
                          v40 = htonl();
                          *(v38 + 3) = v40;
                          LODWORD(v41) = v39 >> 3;
                          if ((v39 & 7) != 0)
                          {
                            v41 = (v41 + 1);
                          }

                          else
                          {
                            v41 = v41;
                          }

                          *(v38 + 2) = *(v35 + v36 + 1) & v40;
                          *(v38 + 4) = *(v35 + v41 + v36 + 1);
                          *(v38 + 10) = 1;
                          *(v38 + 6) = 0;
                          v42 = qword_10004BF70;
                          *v38 = *(qword_10004BF70 + 8);
                          *(v42 + 8) = v38;
                          v36 += v41 + 5;
                        }

                        while (v36 < v32);
                      }

                      else
                      {
                        v38 = *(qword_10004BF70 + 8);
                      }

                      sub_100029A40(v38);
                      break;
                  }

LABEL_91:
                  v31 = v35 + v32;
                  v28 = v95;
                }

                else
                {
                  ++v31;
                  --v28;
                }

                v29 = *v31;
              }

              while (v29 != 255 && v28 > 0);
              if (v30)
              {
                sub_100029C18(v30);
                do
                {
                  v86 = *v30;
                  free(v30);
                  v30 = v86;
                }

                while (v86);
              }
            }
          }

          untimeout(sub_100029F94, qword_10004BF70);
          *qword_10004BF70 = 5;
          notify(acspdhcpready_notifier, 0);
          return;
        }

        goto LABEL_103;
      }

LABEL_102:
      warning("DHCP packet received with incorrect cookie\n");
      return;
    }

LABEL_41:
    warning("DHCP packet received with incorrect length\n");
    return;
  }

  if (a3 <= 0x10E)
  {
    goto LABEL_41;
  }

  if (bswap32(*(a2 + 264)) != 1669485411)
  {
    goto LABEL_102;
  }

  if (*(a2 + 268) != 53 || *(a2 + 269) != 1 || *(a2 + 270) != 8)
  {
LABEL_103:
    warning("DHCP packet received with incorrect message type\n");
    return;
  }

  v9 = 0;
  WORD2(__stringp) = 0;
  LODWORD(__stringp) = 0;
  *__s = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v10 = a3 - 271;
  v111 = 0;
  if ((a3 - 271) < 1)
  {
    v12 = 0;
  }

  else
  {
    v11 = *(a2 + 271);
    v12 = 0;
    if (v11 != 255)
    {
      v13 = 0;
      v14 = 0;
      v15 = (a2 + 271);
      do
      {
        if (v11)
        {
          v16 = v15[1];
          v17 = v10 - 2;
          v18 = __OFSUB__(v17, v16);
          v10 = v17 - v16;
          if ((v10 < 0) ^ v18 | (v10 == 0))
          {
            goto LABEL_105;
          }

          v19 = v15 + 2;
          if (v11 == 55 && v16)
          {
            v20 = v19;
            v21 = v16;
            do
            {
              v23 = *v20++;
              v22 = v23;
              v24 = v23 == 15;
              if (qword_10004BF58)
              {
                v25 = v22 == 249;
              }

              else
              {
                v25 = 0;
              }

              if (v25)
              {
                v26 = 1;
              }

              else
              {
                v26 = v13;
              }

              if (v24 && qword_10004BF60 != 0)
              {
                v14 = 1;
              }

              else
              {
                v13 = v26;
              }

              --v21;
            }

            while (v21);
          }

          v15 = &v19[v16];
        }

        else
        {
          ++v15;
          --v10;
        }

        v11 = *v15;
      }

      while (v11 != 255 && v10 > 0);
      v9 = v14 != 0;
      v12 = v13 != 0;
    }
  }

  if (v9 || v12)
  {
    outpacket_buf = 553649151;
    qword_100048134 = 0;
    v55 = *(a2 + 30);
    v56 = *(a2 + 34);
    v57 = *(a2 + 214);
    v58 = *(a2 + 246);
    v109 = *(a2 + 230);
    v110 = v58;
    v59 = *(a2 + 150);
    v60 = *(a2 + 182);
    v105 = *(a2 + 166);
    v106 = v60;
    v107 = *(a2 + 198);
    v108 = v57;
    v61 = *(a2 + 86);
    v62 = *(a2 + 118);
    v101 = *(a2 + 102);
    v102 = v62;
    v103 = *(a2 + 134);
    v104 = v59;
    v63 = *(a2 + 54);
    v64 = *(a2 + 70);
    v65 = *(a2 + 262);
    *__s = *(a2 + 38);
    v98 = v63;
    v99 = v64;
    v100 = v61;
    unk_1000481F6 = v108;
    unk_100048206 = v109;
    unk_100048216 = v110;
    unk_1000481B6 = v59;
    unk_1000481C6 = v105;
    unk_1000481D6 = v106;
    unk_1000481E6 = v107;
    unk_100048176 = v61;
    unk_100048186 = v101;
    unk_100048196 = v102;
    unk_1000481A6 = v103;
    *(&dword_100048144 + 2) = *__s;
    unk_100048156 = v63;
    *&byte_100048128 = 0;
    *&word_100048120 = 0;
    dword_100048130 = 0;
    LODWORD(__stringp) = v55;
    WORD2(__stringp) = v56;
    v111 = v65;
    word_10004813C = 258;
    *&byte_10004813E = v55;
    word_100048142 = v56;
    LOWORD(dword_100048144) = 0;
    word_100048226 = v65;
    unk_100048166 = v64;
    qword_100048228 = 0x3605013563538263;
    LOBYTE(word_100048230) = 4;
    v66 = ntohl();
    *(&word_100048230 + 1) = bswap32(v66);
    if (v9)
    {
      v67 = qword_10004BF60;
      do
      {
        v68 = v67;
        v67 = *v67;
      }

      while (v67);
      LOBYTE(word_100048235) = 15;
      v69 = strlen(v68[2]);
      if ((v69 << 32) + 0x11B00000000 > 0x5DF00000000)
      {
        warning("Domain name too large for DHCP\n");
        return;
      }

      v70 = v69;
      v71 = v69 << 32;
      HIBYTE(word_100048235) = v69;
      memcpy(&qword_100048237, v68[2], v69);
      v72 = (&qword_100048237 + (v71 >> 32));
      v73 = v70 + 283;
    }

    else
    {
      v72 = &word_100048235;
      v73 = 281;
    }

    if (v12)
    {
      v74 = qword_10004BF58;
      if (qword_10004BF58)
      {
        v75 = 0;
        v76 = 1;
        while (1)
        {
          while ((*(v74 + 20) & 1) == 0)
          {
            v74 = *v74;
            if (!v74)
            {
              if (v76)
              {
                goto LABEL_142;
              }

LABEL_141:
              v87 = v72 - (v75 + 1);
              *v87 = v75;
              v72 = &v87[v75 + 1];
              v73 += v75 + 2;
              goto LABEL_142;
            }
          }

          if (v76)
          {
            if ((v73 - 1502) <= 0xFFFFFA1F)
            {
              warning("No space for DHCP routes\n");
              return;
            }

            *v72++ = 249;
          }

          v77 = ntohl();
          v78 = ntohl();
          v79 = 32;
          if ((v77 & 1) == 0)
          {
            v80 = v77;
            do
            {
              if (!--v79)
              {
                break;
              }

              v81 = v80;
              v80 >>= 1;
            }

            while ((v81 & 2) == 0);
          }

          if ((v79 & 7) != 0)
          {
            v82 = (v79 >> 3) + 1;
          }

          else
          {
            v82 = v79 >> 3;
          }

          if ((v73 - 1499 + v82) < 0xFFFFFA20)
          {
            warning("Static routes list too large DHCP\n");
            return;
          }

          v83 = v78 & v77;
          *v72 = v79;
          *(v72 + 1) = (v78 & v77) >> 24;
          *(v72 + 2) = (v78 & v77) >> 16;
          *(v72 + 3) = (v78 & v77) >> 8;
          v84 = v72 - (4 - v82);
          *(v72 + 4) = v83;
          v85 = ntohl();
          v76 = 0;
          v72 = (v84 + 9);
          *(v84 + 5) = bswap32(v85);
          v75 += v82 + 5;
          v74 = *v74;
          if (!v74)
          {
            goto LABEL_141;
          }
        }
      }
    }

LABEL_142:
    *v72 = -1;
    v88 = (v73 + 1);
    if (v88 <= 0)
    {
      v89 = -(-v88 & 3);
    }

    else
    {
      v89 = (v73 + 1) & 3;
    }

    if (v88 <= 0x5DF)
    {
      v18 = __OFSUB__(v89, 1);
      v90 = v89 - 1;
      if (v90 < 0 == v18)
      {
        if (v90 >= (1502 - v73))
        {
          v91 = (1502 - v73);
        }

        else
        {
          v91 = v90;
        }

        bzero(v72 + 1, v91 + 1);
        v88 = (v73 + v91 + 2);
      }
    }

    v92 = ntohl();
    sub_100029DA4(a1, v88, v66, 0x43u, v92, 68);
  }
}