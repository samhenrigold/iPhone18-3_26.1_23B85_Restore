void ServiceCallback(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a2 + 112);
  v7 = v6 + 2408;
  if (!a3 && v7 != a2)
  {
    return;
  }

  if (a3 != -65792)
  {
    if (a3 == -65548)
    {
      *(v6 + 16) = 1;

      mDNS_DeregisterService_drt(a1, v6, 0);
      return;
    }

    v11 = 1;
LABEL_33:
    v12 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v13 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_63:
        if ((*(v6 + 1404) & 0xFFFFFFFE) != 4)
        {
          IsSubdomain(*(v6 + 1272), "\x05local");
        }

        if (*v6)
        {
          (*v6)(a1, v6, v3);
        }

        return;
      }

      v14 = "";
      if (!v11)
      {
        v14 = "un";
      }

      v15 = *(v6 + 1272);
      if (v15)
      {
        v16 = *(v6 + 1272);
        while (1)
        {
          if (!v16 || (v17 = *v16, v17 > 0x3F))
          {
LABEL_47:
            v18 = 257;
            goto LABEL_62;
          }

          if (!*v16)
          {
            break;
          }

          v16 += v17 + 1;
          if (&v16[-v15] >= 256)
          {
            goto LABEL_47;
          }
        }

        v18 = (v16 - v15 + 1);
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v12 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_63;
      }

      v14 = "";
      if (!v11)
      {
        v14 = "un";
      }

      v15 = *(v6 + 1272);
      if (v15)
      {
        v20 = *(v6 + 1272);
        while (1)
        {
          if (!v20 || (v21 = *v20, v21 > 0x3F))
          {
LABEL_57:
            v18 = 257;
            goto LABEL_62;
          }

          if (!*v20)
          {
            break;
          }

          v20 += v21 + 1;
          if (&v20[-v15] >= 256)
          {
            goto LABEL_57;
          }
        }

        v18 = (v20 - v15 + 1);
      }

      else
      {
        v18 = 0;
      }
    }

LABEL_62:
    v22 = 136446979;
    v23 = v14;
    v24 = 2160;
    v25 = 1752392040;
    v26 = 1040;
    v27 = v18;
    v28 = 2101;
    v29 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ServiceCallback: All records %{public}sregistered for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", &v22, 0x26u);
    goto LABEL_63;
  }

  if (*(v6 + 2416) || *(v6 + 3592) || *(v6 + 1240) || *(v6 + 64))
  {
    return;
  }

  v8 = *(v6 + 24);
  v9 = *(v6 + 32);
  if (v9)
  {
    v10 = (*(v6 + 40) + 8);
    while (!*v10)
    {
      v10 += 1176;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    if (!v8)
    {
LABEL_20:
      if (*(v6 + 16))
      {
        v3 = 4294901748;
      }

      else
      {
        v3 = 4294901504;
      }

      if (*(v6 + 2712))
      {
        CompleteRDataUpdate(a1, v7);
      }

      if (*(v6 + 3888))
      {
        CompleteRDataUpdate(a1, v6 + 3584);
      }

      if (*(v6 + 1536))
      {
        CompleteRDataUpdate(a1, v6 + 1232);
      }

      if (*(v6 + 360))
      {
        CompleteRDataUpdate(a1, v6 + 56);
      }

      v11 = 0;
      goto LABEL_33;
    }

    while (!*(v8 + 24))
    {
      v8 = *v8;
      if (!v8)
      {
        goto LABEL_20;
      }
    }
  }
}

uint64_t *GetServiceTarget(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 120))
  {
    return (*(a2 + 48) + 10);
  }

  v3 = a1;
  v4 = *(a2 + 40);
  v5 = *v4;
  if (*v4)
  {
    v6 = 0;
    do
    {
      ++v6;
      v7 = &v4[v5];
      v8 = v7[1];
      v4 = v7 + 1;
      v5 = v8;
    }

    while (v8);
  }

  else
  {
    v6 = 0;
  }

  v10 = *(a1 + 14680);
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(v10 + 202);
      v14 = v13 == 2 || v13 == 5;
      if (v14 || ((v15 = *(v10 + 496), v15 != 5) ? (v16 = v15 == 2) : (v16 = 1), v16))
      {
        v17 = *(v10 + 208);
        if (*(v10 + 208))
        {
          v18 = 0;
          v19 = v10 + 26;
          do
          {
            ++v18;
            v20 = v19 + v17;
            v21 = *(v20 + 1);
            v19 = (v20 + 1);
            v17 = v21;
          }

          while (v21);
        }

        else
        {
          v18 = 0;
        }

        v22 = v18 >= v6 ? v6 : v18;
        if (v22 >= 1 && v22 > v11)
        {
          v24 = v6 + 1 - v22;
          v25 = v18 - v22 + 1;
          do
          {
            v26 = *(a2 + 40);
            if (v6 - v22 >= 1)
            {
              v27 = v24;
              do
              {
                if (!*v26)
                {
                  break;
                }

                v26 += *v26 + 1;
                --v27;
              }

              while (v27 > 1);
            }

            v28 = (v10 + 26);
            if (v18 - v22 >= 1)
            {
              v29 = v25;
              v28 = (v10 + 26);
              do
              {
                if (!*v28)
                {
                  break;
                }

                v28 += *v28 + 1;
                --v29;
              }

              while (v29 > 1);
            }

            if (SameDomainNameBytes(v26, v28))
            {
              v12 = v10;
              v11 = v22;
            }

            if (v22 < 2)
            {
              break;
            }

            --v22;
            ++v24;
            ++v25;
          }

          while (v22 > v11);
        }
      }

      v10 = *v10;
    }

    while (v10);
    v3 = a1;
    if (v12)
    {
      return v12 + 26;
    }
  }

  if (*(v3 + 14168))
  {
    return (v3 + 14168);
  }

  if (*(v3 + 12980) == -1)
  {
    v30 = *(v3 + 12720);
    if (v30)
    {
      memset(v35, 0, 30);
      bzero((v3 + 12768), 0x2B8uLL);
      mDNS_snprintf(v35, 30, "%d.%d.%d.%d.in-addr.arpa.", HIBYTE(v30), BYTE2(v30), BYTE1(v30), v30);
      *(v3 + 13144) = 0;
      if (AppendDNSNameString((v3 + 13144), v35))
      {
        *(v3 + 12904) = 0;
        *(v3 + 13092) = 0;
        *(v3 + 13110) = 65548;
        *(v3 + 13400) = 0x1000000;
        *(v3 + 13404) = 0;
        *(v3 + 13409) = 0;
        *(v3 + 13407) = 0;
        *(v3 + 13421) = 0;
        *(v3 + 13012) = getpid();
        *(v3 + 13016) = 0;
        *(v3 + 12920) = FoundStaticHostname;
        *(v3 + 12944) = 0;
        if (mDNS_LoggingEnabled == 1)
        {
          v31 = mDNSLogCategory_Default;
          v32 = DNSTypeName(*(v3 + 13110));
          LogMsgWithLevel(v31, OS_LOG_TYPE_DEFAULT, "GetStaticHostname: %##s (%s)", v3 + 13144, v32);
        }

        if (mDNS_StartQuery_internal(v3, v3 + 12768))
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Error: GetStaticHostname - StartQuery returned error %d");
        }
      }

      else
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Error: GetStaticHostname - bad name %s");
      }
    }
  }

  if (mDNS_LoggingEnabled == 1)
  {
    v33 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (v3 + 47032));
    LogMsgWithLevel(v33, OS_LOG_TYPE_DEFAULT, "GetServiceTarget: Returning NULL for %s", (v3 + 47032));
  }

  return 0;
}

void NetworkChanged(uint64_t a1, const __CFArray *a2, unsigned int *a3)
{
  pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime();
  mDNS_Lock_(a3, "NetworkChanged", 6693);
  Count = CFArrayGetCount(a2);
  v84.location = 0;
  v84.length = Count;
  v62 = CFArrayContainsValue(a2, v84, NetworkChangedKey_Hostnames);
  v85.location = 0;
  v85.length = Count;
  v61 = CFArrayContainsValue(a2, v85, NetworkChangedKey_Computername);
  v86.location = 0;
  v86.length = Count;
  v60 = CFArrayContainsValue(a2, v86, NetworkChangedKey_DNS);
  v87.location = 0;
  v87.length = Count;
  v6 = CFArrayContainsValue(a2, v87, @"Setup:/Network/DynamicDNS");
  v7 = CFArrayGetCount(a2);
  if (v7 >= 1 && (v8 = v7, (Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks)) != 0))
  {
    v10 = Mutable;
    v11 = kSCDynamicStoreDomainSetup;
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetInterface);
    if (NetworkServiceEntity && (v13 = NetworkServiceEntity, CFArrayAppendValue(v10, NetworkServiceEntity), CFRelease(v13), (v14 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetIPv4)) != 0) && (v15 = v14, CFArrayAppendValue(v10, v14), CFRelease(v15), v16 = SCDynamicStoreCopyMultiple(0, 0, v10), CFRelease(v10), v16))
    {
      v17 = CFDictionaryGetCount(v16);
      if (v17 >= 1)
      {
        v18 = v17;
        v19 = 8 * v17;
        if (!v19 || (values = malloc_type_malloc(8 * v17, 0x55AAD57DuLL)) == 0 || (v57 = v18, v64 = a3, (v20 = malloc_type_malloc(v19, 0x9DABD5B5uLL)) == 0))
        {
          __break(1u);
        }

        v21 = v20;
        theDict = v16;
        CFDictionaryGetKeysAndValues(v16, v20, values);
        v54 = 0;
        v22 = 0;
        v55 = v21;
        v56 = v8;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v22);
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          memset(buffer, 0, sizeof(buffer));
          if (CFStringHasPrefix(ValueAtIndex, @"State:/Network/Interface/"))
          {
            if (CFStringHasSuffix(ValueAtIndex, kSCEntNetIPv4))
            {
              v24 = CopyNameFromKey(ValueAtIndex);
              if (v24)
              {
                break;
              }
            }
          }

LABEL_35:
          if (++v22 == v8)
          {
            free(values);
            free(v21);
            suffix = v54 == 0;
            a3 = v64;
            v16 = theDict;
            goto LABEL_40;
          }
        }

        v25 = v24;
        if (mDNS_LoggingEnabled == 1 && !CFStringGetCString(v24, buffer, 256, 0x8000100u))
        {
          buffer[0] = 0;
        }

        v26 = v57;
        v27 = values;
        cf = v25;
        while (1)
        {
          if (!CFStringHasSuffix(*v21, kSCEntNetInterface))
          {
            goto LABEL_33;
          }

          TypeID = CFDictionaryGetTypeID();
          if (TypeID != CFGetTypeID(*v27))
          {
            goto LABEL_33;
          }

          Value = CFDictionaryGetValue(*v27, kSCPropNetInterfaceDeviceName);
          if (!Value)
          {
            goto LABEL_33;
          }

          if (!CFEqual(v25, Value))
          {
            goto LABEL_33;
          }

          v30 = CopyNameFromKey(*v21);
          if (!v30)
          {
            goto LABEL_33;
          }

          v31 = v30;
          v32 = v11;
          v33 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, v11, v30, kSCEntNetIPv4);
          CFRelease(v31);
          if (!v33)
          {
            break;
          }

          v34 = CFDictionaryGetValue(theDict, v33);
          CFRelease(v33);
          if (!v34)
          {
            break;
          }

          v35 = CFDictionaryGetTypeID();
          if (v35 != CFGetTypeID(v34))
          {
            break;
          }

          v36 = CFDictionaryGetValue(v34, kSCPropNetIPv4ConfigMethod);
          v11 = v32;
          if (!v36)
          {
            goto LABEL_32;
          }

          v37 = CFEqual(v36, kSCValNetIPv4ConfigMethodLinkLocal);
          v38 = v54;
          if (v37)
          {
            v38 = v54 + 1;
          }

          v54 = v38;
          v25 = cf;
          if (v37)
          {
LABEL_34:
            CFRelease(v25);
            v21 = v55;
            v8 = v56;
            goto LABEL_35;
          }

LABEL_33:
          ++v27;
          ++v21;
          if (!--v26)
          {
            goto LABEL_34;
          }
        }

        v11 = v32;
LABEL_32:
        v25 = cf;
        goto LABEL_33;
      }

      suffix = 1;
LABEL_40:
      CFRelease(v16);
    }

    else
    {
      suffix = 1;
    }
  }

  else
  {
    suffix = 1;
  }

  if (Count >= 1)
  {
    v65 = a3;
    v39 = 0;
    while (1)
    {
      v40 = CFArrayGetValueAtIndex(a2, v39);
      if (CFStringHasPrefix(v40, NetworkChangedKey_StateInterfacePrefix) && (CFStringHasSuffix(v40, kSCEntNetIPv6) || CFStringHasSuffix(v40, kSCEntNetIPv4)))
      {
        ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v40, @"/");
        if (!ArrayBySeparatingStrings)
        {
          goto LABEL_54;
        }

        v42 = ArrayBySeparatingStrings;
        if (CFArrayGetCount(ArrayBySeparatingStrings) == 5)
        {
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          memset(buffer, 0, sizeof(buffer));
          v43 = CFArrayGetValueAtIndex(v42, 3);
          if (CFStringGetCString(v43, buffer, 256, 0x8000100u))
          {
            if (strstr(buffer, "p2p") || (getExtendedFlags(buffer) & 0x20100000) != 0 || (util_is_car_play(buffer) & 1) != 0)
            {
              CFRelease(v42);
              v44 = 0;
LABEL_58:
              if (mDNS_LoggingEnabled)
              {
                for (i = 0; i != Count; ++i)
                {
                  v82 = 0u;
                  v83 = 0u;
                  v80 = 0u;
                  v81 = 0u;
                  v78 = 0u;
                  v79 = 0u;
                  v76 = 0u;
                  v77 = 0u;
                  v74 = 0u;
                  v75 = 0u;
                  v72 = 0u;
                  v73 = 0u;
                  v70 = 0u;
                  v71 = 0u;
                  memset(buffer, 0, sizeof(buffer));
                  v46 = CFArrayGetValueAtIndex(a2, i);
                  if (!CFStringGetCString(v46, buffer, 256, 0x8000100u))
                  {
                    buffer[0] = 0;
                  }

                  v47 = mDNSLogCategory_State;
                  if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136446210;
                    v68 = buffer;
                    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "*** Network Configuration Change *** SC key: %{public}s", buf, 0xCu);
                  }
                }

                a3 = v65;
LABEL_66:
                v48 = mDNSLogCategory_State;
                if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
                {
                  v49 = v62 != 0;
                  if (v62)
                  {
                    v50 = 3;
                  }

                  else
                  {
                    v50 = 2;
                  }

                  if (v61)
                  {
                    v49 = v50;
                  }

                  if (v60)
                  {
                    v49 |= 4u;
                  }

                  if (v6)
                  {
                    v49 |= 8u;
                  }

                  if (!suffix)
                  {
                    v49 |= 0x10u;
                  }

                  *buffer = 134218496;
                  *&buffer[4] = Count;
                  if (!v44)
                  {
                    v49 |= 0x20u;
                  }

                  *&buffer[12] = 1024;
                  *&buffer[14] = 25;
                  *&buffer[18] = 1026;
                  *&buffer[20] = v49;
                  _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "*** Network Configuration Change *** -- change count: %ld, delay: %d, flags: %{public, mdnsresponder:net_change_flags}u", buffer, 0x18u);
                }
              }

              goto LABEL_81;
            }
          }
        }

        CFRelease(v42);
      }

      if (Count == ++v39)
      {
LABEL_54:
        v44 = 1;
        goto LABEL_58;
      }
    }
  }

  if (mDNS_LoggingEnabled)
  {
    v44 = 1;
    goto LABEL_66;
  }

LABEL_81:
  SetNetworkChanged(25);
  if (v6)
  {
    v51 = *(mDNSStorage[0] + 500);
    v52 = dword_10016D258 + 25;
    if ((dword_10016D258 + 25) <= 1)
    {
      v52 = 1;
    }

    if (v51)
    {
      v53 = v51 - v52 < 1;
    }

    else
    {
      v53 = 0;
    }

    if (!v53)
    {
      *(mDNSStorage[0] + 500) = v52;
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetKeyChainTimer: %d", 25);
      }
    }
  }

  mDNS_Unlock_(a3, "NetworkChanged", 6784);
  KQueueUnlock("NetworkChanged");
}

uint64_t mDNS_StartNATOperation_internal(uint64_t a1, uint64_t *a2)
{
  if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNS_StartNATOperation_internal %p Protocol %d IntPort %d RequestedPort %d NATLease %d", a2, *(a2 + 172), bswap32(*(a2 + 87)) >> 16, bswap32(*(a2 + 88)) >> 16, *(a2 + 45));
  }

  v4 = *(a1 + 14720);
  v5 = (a1 + 14720);
  if (v4)
  {
    v5 = (a1 + 14720);
    while (1)
    {
      v6 = *(a2 + 172);
      if (v4 == a2)
      {
        break;
      }

      if (*(a2 + 172) && v6 == *(v4 + 172))
      {
        v7 = *(a2 + 87);
        if (v7 == *(v4 + 87) && v7 != 5632)
        {
          v10 = __rev16(v7);
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Warning: Created port mapping request %p Prot %d Int %d TTL %d duplicates existing port mapping request %p Prot %d Int %d TTL %d", a2, v6, v10, *(a2 + 45), v4, v6, v10, *(v4 + 45));
          v4 = *v5;
        }
      }

      v5 = v4;
      v4 = *v4;
      if (!v4)
      {
        goto LABEL_14;
      }
    }

    LogFatalError("Error! Tried to add a NAT traversal that's already in the active list: request %p Prot %d Int %d TTL %d", a2, v6, bswap32(*(a2 + 87)) >> 16, *(a2 + 45));
    return 4294901749;
  }

  else
  {
LABEL_14:
    *a2 = 0;
    a2[1] = 0xFA00000000;
    *(a2 + 4) = *(a1 + 64);
    *(a2 + 28) = 0;
    *(a2 + 20) = 0;
    a2[19] = 0xFFFFFFFFLL;
    *(a2 + 80) = 0;
    *(a2 + 41) = 0;
    *(a2 + 42) = 0;
    if (!*(a2 + 45))
    {
      *(a2 + 45) = 7200;
    }

    *(a2 + 7) = 0u;
    *(a2 + 8) = 0u;
    *(a2 + 5) = 0u;
    *(a2 + 6) = 0u;
    *(a2 + 3) = 0u;
    *(a2 + 4) = 0u;
    *(a2 + 2) = 0u;
    if (!*(a1 + 14720))
    {
      *(a1 + 14740) = *(a1 + 64);
      *(a1 + 14736) = 250;
    }

    if (!*(a2 + 172))
    {
      *(a2 + 39) = *(a1 + 14744);
    }

    result = 0;
    *(a1 + 104) = *(a1 + 64);
    *v5 = a2;
  }

  return result;
}

void send_all(int a1, const void *a2, size_t a3)
{
  v5 = send(a1, a2, a3, 0);
  v6 = v5;
  if ((v5 & 0x8000000000000000) != 0 || v5 < a3)
  {
    v7 = mDNSLogCategory_Default;
    v8 = *__error();
    v9 = __error();
    v10 = strerror(*v9);
    LogMsgWithLevel(v7, OS_LOG_TYPE_DEFAULT, "ERROR: send_all(%d) wrote %ld of %lu errno %d (%s)", a1, v6, a3, v8, v10);
  }
}

void uDNS_SendNATMsg(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (!a2)
  {
    v9 = mDNSLogCategory_NAT;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v10 = mDNSLogCategory_NAT == mDNSLogCategory_State;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LOWORD(v25) = 0;
      v11 = "uDNS_SendNATMsg called unexpectedly with NULL info";
    }

    else
    {
      v9 = mDNSLogCategory_NAT_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LOWORD(v25) = 0;
      v11 = "uDNS_SendNATMsg called unexpectedly with NULL info";
    }

    v13 = &v25;
    v14 = v9;
    v15 = 2;
    goto LABEL_17;
  }

  v7 = a1 + 12288;
  v8 = *(a1 + 12700);
  if (v8 != 10)
  {
    if (v8 == 172)
    {
      if ((*(a1 + 12701) & 0xF0) != 0x10)
      {
        return;
      }
    }

    else if (v8 != 192 || *(a1 + 12701) != 168)
    {
      return;
    }
  }

  if (a3)
  {
    LODWORD(v25) = 258;
    v16 = *(a2 + 180);
    BYTE4(v25) = HIBYTE(v16);
    BYTE5(v25) = BYTE2(v16);
    BYTE6(v25) = BYTE1(v16);
    HIBYTE(v25) = v16;
    v26 = 0;
    LODWORD(v27) = -65536;
    HIDWORD(v27) = *(a1 + 12720);
    v28 = *(a1 + 14748);
    LODWORD(v29) = *(a1 + 14756);
    v17 = *(a2 + 172);
    if (v17 == 1)
    {
      v18 = 17;
    }

    else
    {
      v18 = 6;
    }

    BYTE4(v29) = v18;
    *(&v29 + 5) = 0;
    HIBYTE(v29) = 0;
    if (v17)
    {
      v19 = (a2 + 174);
    }

    else
    {
      v19 = &DiscardPort;
    }

    v30 = *v19;
    v31 = *(a2 + 176);
    v32 = 0;
    v33 = -65536;
    v34 = *(a2 + 156);
    mDNSPlatformSendUDP(a1, &v25, &v35, 0, 0, (a1 + 12696), 0xE714u, 0);
    *(a2 + 28) = 0;
    if (!a4)
    {
      if (!*(v7 + 2746) || !*(v7 + 2748))
      {
        LNT_SendDiscoveryMsg(a1);
        return;
      }

      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "LNT_MapPort", v25, v26, v27, v28, v29);
      }

      if (!*(a2 + 56))
      {
        *(a2 + 48) = a2;
        *(a2 + 136) = 0;
        v20 = SendPortMapRequest(a1, a2);
        if (v20)
        {
          v21 = v20;
          v22 = mDNSLogCategory_NAT;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            v36 = 67109120;
            v37 = v21;
            v11 = "uDNS_SendNATMsg: LNT_MapPort returned error %d";
          }

          else
          {
            v22 = mDNSLogCategory_NAT_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            v36 = 67109120;
            v37 = v21;
            v11 = "uDNS_SendNATMsg: LNT_MapPort returned error %d";
          }

          v13 = &v36;
          v14 = v22;
          v15 = 8;
LABEL_17:
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v11, v13, v15);
        }
      }
    }
  }

  else if (!*(a2 + 28))
  {
    v23 = *(a2 + 172);
    if (v23)
    {
      uDNS_SendNATMsg_NATPortReq = 0;
      byte_10016218D = v23;
      word_10016218E = 0;
      v24 = bswap32(*(a2 + 180));
      dword_100162190 = *(a2 + 174);
      unk_100162194 = v24;
      mDNSPlatformSendUDP(a1, &uDNS_SendNATMsg_NATPortReq, &uDNS_RequestAddress_req, 0, 0, (a1 + 12696), 0xE714u, 0);
    }

    *(a2 + 156) = *(a1 + 14744);
    *(a2 + 28) = 1;
  }
}

void KQueueUnlock(uint64_t a1)
{
  v2 = mDNSPlatformRawTime() - *(mDNSStorage[0] + 680);
  if (v2 < WatchDogReportingThreshold)
  {
    goto LABEL_11;
  }

  v3 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v4 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }
  }

  *buf = 136446466;
  v11 = a1;
  v12 = 1024;
  v13 = v2;
  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "WARNING: %{public}s took %d ms to complete", buf, 0x12u);
LABEL_11:
  pthread_mutex_unlock((mDNSStorage[0] + 616));
  buf[0] = 1;
  if (send(*(mDNSStorage[0] + 684), buf, 1uLL, 0) == -1)
  {
    v6 = mDNSLogCategory_Default;
    v7 = *__error();
    v8 = __error();
    v9 = strerror(*v8);
    LogMsgWithLevel(v6, OS_LOG_TYPE_DEFAULT, "ERROR: KQueueWake: send failed with error code: %d (%s)", v7, v9);
  }
}

ssize_t KQWokenFlushBytes(int a1)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  do
  {
    result = recv(a1, v3, 0x64uLL, 128);
  }

  while (result > 0);
  return result;
}

uint64_t mDNS_NewMessageID(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + 12616);
  do
  {
LABEL_2:
    v4 = arc4random();
  }

  while (v4 == 0xFFFF);
  result = bswap32(v4 + 1) >> 16;
  v6 = v3;
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    if (*(v6 + 179) == result)
    {
      goto LABEL_6;
    }
  }

  v7 = *(a1 + 192);
  if (!v7)
  {
    return result;
  }

  while (*(v7 + 340) != result)
  {
    v7 = *(v7 + 8);
    if (!v7)
    {
      return result;
    }
  }

LABEL_6:
  if (++v2 != 10)
  {
    goto LABEL_2;
  }

  return result;
}

void ActivateUnicastQuery(uint64_t a1, uint64_t a2, int a3)
{
  if (!*(a2 + 40))
  {
    *(a2 + 353) = 0;
    v6 = *(a2 + 104);
    if (v6)
    {
      CancelGetZoneData(a1, v6);
      *(a2 + 104) = 0;
    }

    if (*(a2 + 632))
    {
      *(a2 + 350) = 1;
      *(a2 + 328) = 0;
      *(a2 + 336) = 0;
      v7 = *(a2 + 112);
      if (v7)
      {
        DisposeTCPConn(v7);
        *(a2 + 112) = 0;
      }
    }

    if (a3)
    {
      v8 = AuthGroupForName(a1 + 6264, *(a2 + 200), (a2 + 376));
      if (v8 && (v9 = v8[2]) != 0)
      {
        while (1)
        {
          if (*(v9 + 172) == 4 && (*(v9 + 8) & 0x32) != 0)
          {
            v10 = *(v9 + 12);
            v11 = v10 > 0x1C;
            v12 = (1 << v10) & 0x10001022;
            v13 = v11 || v12 == 0;
            if (!v13 && LocalOnlyRecordAnswersQuestion(v9, a2))
            {
              break;
            }
          }

          v9 = *v9;
          if (!v9)
          {
            goto LABEL_19;
          }
        }

        if (mDNS_LoggingEnabled == 1)
        {
          v14 = mDNSLogCategory_Default;
          v15 = DNSTypeName(*(a2 + 342));
          v16 = (a1 + 47032);
          GetRRDisplayString_rdb((v9 + 8), (*(v9 + 48) + 4), v16);
          LogMsgWithLevel(v14, OS_LOG_TYPE_DEFAULT, "QuestionHasLocalAnswers: Question %p %##s (%s) has local answer %s", a2, a2 + 376, v15, v16);
        }
      }

      else
      {
LABEL_19:
        *(a2 + 208) = *(a1 + 64) - 334;
        *(a2 + 212) = 334;

        SetNextQueryTime(a1, a2);
      }
    }
  }
}

uint64_t *CacheGroupForName(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  for (i = *(a1 + 8 * (a2 % 0x1F3) + 272); i; i = *i)
  {
    if (*(i + 2) == a2 && SameDomainNameBytes(i[4], a3))
    {
      break;
    }
  }

  return i;
}

void MakeNegativeCacheRecord(uint64_t a1, uint64_t a2, uint64_t a3, int a4, __int16 a5, __int16 a6, int a7, uint64_t a8, void *a9, __int16 a10)
{
  if (a1 + 37912 == a2 && *(a1 + 37920))
  {
    GetRRDisplayString_rdb((a1 + 37920), (*(a1 + 37960) + 4), (a1 + 47032));
    LogFatalError("MakeNegativeCacheRecord: m->rec appears to be already in use for %s", (a1 + 47032));
  }

  *(a2 + 8) = -16;
  *(a2 + 32) = a8;
  v18 = *(a2 + 56);
  if (v18)
  {
    os_release(v18);
    *(a2 + 56) = 0;
  }

  if (a9)
  {
    v19 = mdns_cache_metadata_create();
    *(a2 + 56) = v19;
    mdns_dns_push_service_definition_set_srv_name(v19, a9);
  }

  *(a2 + 152) = 0;
  v20 = a2 + 152;
  *(v20 - 140) = a5;
  *(v20 - 138) = a6;
  *(v20 - 136) = a7;
  *(v20 - 132) = 0;
  *(v20 - 128) = a4;
  *(v20 - 124) = 0;
  *(v20 - 112) = a3;
  *(v20 - 104) = v20;
  *(v20 - 88) = 0;
  *(v20 - 80) = 0;
  v21 = *(a1 + 64);
  *(v20 - 72) = v21;
  *(v20 - 68) = 0;
  *(v20 - 64) = v21;
  *(v20 - 44) = 0;
  *(v20 - 60) = 0;
  *(v20 - 52) = 0;
  *(v20 - 40) = 0;
  *(v20 - 32) = 0;
  *(v20 - 42) = a10;
  *(v20 - 143) = HIBYTE(a10) & 0xF;
}

uint64_t GetCacheEntity(uint64_t a1, void *a2)
{
  if (!*(a1 + 56))
  {
    *(a1 + 56) = 1;
    v2 = *(a1 + 264);
    if (v2)
    {
      goto LABEL_50;
    }

    if (!*(a1 + 32))
    {
      goto LABEL_20;
    }

    v6 = *(a1 + 240);
    v5 = *(a1 + 244);
    if (v5 == v6)
    {
LABEL_13:
      if (v5 < 0x1389 || (v8 = *(a1 + 252), v8 >= v5 >> 5))
      {
        v10 = *(a1 + 48);
        v11 = *(a1 + 52) + 1;
        *(a1 + 52) = v11;
        mDNS_VerifyLockState("Drop Lock", 0, v10, v11, "GetCacheEntity", 6508);
        (*(a1 + 32))(a1, 4294901506);
        mDNS_VerifyLockState("Reclaim Lock", 0, *(a1 + 48), *(a1 + 52), "GetCacheEntity", 6510);
        --*(a1 + 52);
        goto LABEL_20;
      }

      v9 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v9 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }
      }

      v29 = 67109376;
      v30 = v5;
      v31 = 1024;
      v32 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Possible denial-of-service attack in progress: m->rrcache_size %u; m->rrcache_active %u", &v29, 0xEu);
LABEL_20:
      v2 = *(a1 + 264);
      if (v2)
      {
        goto LABEL_50;
      }

      v12 = 0;
      v13 = *(a1 + 244);
      do
      {
        v14 = (a1 + 272 + 8 * v12);
        v15 = *v14;
        if (*v14)
        {
          do
          {
            v17 = v15 + 2;
            v16 = v15[2];
            if (v16)
            {
              do
              {
                if (*(v16 + 96) || *(v16 + 112) || *(v16 + 84) || *(v16 + 128))
                {
                  v17 = v16;
                }

                else
                {
                  *v17 = *v16;
                  ReleaseCacheRecord(a1, v16);
                }

                v16 = *v17;
              }

              while (*v17);
              v15 = *v14;
            }

            v15[3] = v17;
            v18 = *v14;
            if (*v14 != a2 && (*v14)[2] == 0)
            {
              ReleaseCacheGroup(a1, v14);
              v18 = v14;
            }

            v15 = *v18;
            v14 = v18;
          }

          while (*v18);
        }

        ++v12;
      }

      while (v12 != 499);
      v20 = mDNSLogCategory_Default;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v21 = mDNSLogCategory_Default == mDNSLogCategory_State;
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_49;
        }
      }

      else
      {
        v20 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
LABEL_49:
          v2 = *(a1 + 264);
          if (!v2)
          {
LABEL_65:
            *(a1 + 56) = 0;
            return v2;
          }

LABEL_50:
          *(a1 + 264) = *v2;
          v24 = *(a1 + 244) + 1;
          *(a1 + 244) = v24;
          if (v24 < *(a1 + 256))
          {
LABEL_64:
            *(v2 + 192) = 0u;
            *(v2 + 208) = 0u;
            *(v2 + 160) = 0u;
            *(v2 + 176) = 0u;
            *(v2 + 128) = 0u;
            *(v2 + 144) = 0u;
            *(v2 + 96) = 0u;
            *(v2 + 112) = 0u;
            *(v2 + 64) = 0u;
            *(v2 + 80) = 0u;
            *(v2 + 32) = 0u;
            *(v2 + 48) = 0u;
            *v2 = 0u;
            *(v2 + 16) = 0u;
            goto LABEL_65;
          }

          v25 = mDNSLogCategory_Default;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
            {
              v29 = 67109120;
              v30 = v24;
              goto LABEL_57;
            }
          }

          else
          {
            v25 = mDNSLogCategory_Default_redacted;
            if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
            {
              v29 = 67109120;
              v30 = v24;
LABEL_57:
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "RR Cache now using %u objects", &v29, 8u);
            }
          }

          v26 = *(a1 + 256);
          if (v26 >= 0x3E8)
          {
            v27 = 1000;
          }

          else
          {
            v27 = 100;
          }

          if (v26 < 0x64)
          {
            v27 = 10;
          }

          *(a1 + 256) = v26 + v27;
          goto LABEL_64;
        }
      }

      v23 = *(a1 + 244);
      v29 = 67109632;
      v30 = v13 - v23;
      v31 = 1024;
      v32 = v13;
      v33 = 1024;
      v34 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "GetCacheEntity recycled %u records to reduce cache from %u to %u", &v29, 0x14u);
      goto LABEL_49;
    }

    v7 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_11:
        v29 = 67109376;
        v30 = v5;
        v31 = 1024;
        v32 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "GetFreeCacheRR: count mismatch: m->rrcache_totalused %u != m->rrcache_size %u", &v29, 0xEu);
      }
    }

    else
    {
      v7 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }
    }

    v5 = *(a1 + 240);
    goto LABEL_13;
  }

  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetFreeCacheRR ERROR! Cache already locked!");
  return 0;
}

BOOL SameNameRecordAnswersQuestion(unsigned __int8 *a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 3);
  if ((v4 + 5) <= 3 && v4 + 5 != 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SameNameRecordAnswersQuestion: ERROR!! called with LocalOnly ResourceRecord %p, Question %p", v4, *(a3 + 136));
    return 0;
  }

  if (*(a3 + 354) && (!*(a3 + 646) || *(a1 + 2) != 5))
  {
    return 0;
  }

  if (v4)
  {
    v8 = *(a3 + 136);
    v9 = v8 == -2 || v8 == 0;
    if (!v9 && v4 != v8)
    {
      return 0;
    }
  }

  v11 = *(a3 + 80);
  if (v11 && (*(v11 + 276) & 0x4000) != 0)
  {
    v14 = *(a1 + 6);
    if (v14)
    {
      v14 = *(v14 + 24);
    }
  }

  else
  {
    v12 = *(a1 + 6);
    v13 = (!v12 || !*(v12 + 24)) && v4 != 0;
    if (v13 | a2)
    {
      if (v13 && *(a3 + 340))
      {
        return 0;
      }

      goto LABEL_36;
    }

    if (!*(a3 + 340))
    {
      return 0;
    }

    if (v12)
    {
      v14 = *(v12 + 24);
    }

    else
    {
      v14 = 0;
    }
  }

  if (v14 != v11)
  {
    return 0;
  }

LABEL_36:
  if (*(a1 + 2) == 5 && *a1 == 240 && *(a3 + 342) != 5)
  {
    return 0;
  }

  v15 = *(a3 + 144);
  if (v15)
  {
    v16 = *(v15 + 24);
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v16 | 2;
  }

  else
  {
    v17 = v16;
  }

  result = RRTypeAnswersQuestionType(a1, *(a3 + 342), v17);
  if (result)
  {
    v18 = *(a3 + 344);
    if (*(a1 + 3) == v18 || v18 == 255)
    {
      v19 = *(a1 + 3);
      if (!v19 || v19 == *(a3 + 136) || v19 != AWDLInterfaceID && v19 != WiFiAwareInterfaceID)
      {
        return 1;
      }

      if ((*(a3 + 326) & 0x10) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

void CheckCacheExpiration(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!*(a1 + 56))
  {
    v7 = (a3 + 16);
    v6 = *(a3 + 16);
    *(a1 + 56) = 1;
    if (!v6)
    {
LABEL_88:
      *(a3 + 24) = v7;
      *(a1 + 56) = 0;
      return;
    }

    v9 = a1 + 4264;
    while (1)
    {
      if (*(v6 + 109))
      {
        v10 = dword_10016D258 + 939524096;
      }

      else
      {
        v10 = *(v6 + 80) + 1000 * *(v6 + 16);
      }

      v11 = *(a1 + 64);
      if (v11 - v10 < 0)
      {
        v13 = *(v6 + 84);
        if (v13 && v13 - v11 > 0)
        {
          v10 = *(v6 + 84);
        }

        else
        {
          if (v13)
          {
            CacheRecordDeferredAdd(a1, v6);
          }

          if (*(v6 + 96) && *(v6 + 108) <= 3u)
          {
            v14 = *(a1 + 64);
            v15 = *(v6 + 88);
            if (v14 - v15 < 0)
            {
              v35 = 1374389535000 * *(v6 + 16);
              v14 = (v35 >> 36) + (v35 >> 63);
            }

            else
            {
              *(a1 + 92) = v14;
              v15 = 939524096;
            }

            v10 = v14 + v15;
          }
        }

        goto LABEL_84;
      }

      v12 = *(v6 + 96);
      if (v12)
      {
        break;
      }

LABEL_69:
      v33 = *(v6 + 10);
      if (*(v6 + 10) && *(v6 + 16))
      {
        v10 += 604800000;
        if (v33 == 1)
        {
          *(v6 + 10) = 2;
          if (*(v6 + 84))
          {
            *(v6 + 84) = 0;
            v34 = mDNSLogCategory_Default;
            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
            {
              if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_81;
              }
            }

            else
            {
              v34 = mDNSLogCategory_Default_redacted;
              if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
              {
LABEL_81:
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "CheckCacheExpiration: Resetting DelayDelivery for new ghost", buf, 2u);
              }
            }
          }

LABEL_84:
          if (*(v9 + 4 * a2) - v10 >= 1)
          {
            *(v9 + 4 * a2) = v10;
          }

          v7 = v6;
          goto LABEL_87;
        }

        if (v33 != 2 || *(a1 + 64) - v10 < 0)
        {
          goto LABEL_84;
        }
      }

      *v7 = *v6;
      ReleaseCacheRecord(a1, v6);
LABEL_87:
      v6 = *v7;
      if (!*v7)
      {
        goto LABEL_88;
      }
    }

    if (*(v12 + 340))
    {
      if (!*(v12 + 632))
      {
        goto LABEL_25;
      }
    }

    else if ((*(v6 + 8) & 0x10) != 0)
    {
LABEL_25:
      if (*(v12 + 212) >= 1 && !*(v12 + 40))
      {
        *(v12 + 208) = v11 - 334;
        *(v12 + 212) = 334;
        SetNextQueryTime(a1, v12);
      }
    }

    v16 = *(a1 + 208);
    if (v16)
    {
      v17 = mDNSLogCategory_Default;
      v18 = v16 + 376;
      v19 = DNSTypeName(*(v16 + 342));
      LogMsgWithLevel(v17, OS_LOG_TYPE_DEFAULT, "CacheRecordRmv ERROR m->CurrentQuestion already set: %##s (%s)", v18, v19);
    }

    v20 = *(a1 + 192);
    *(a1 + 208) = v20;
    if (v20)
    {
      while (1)
      {
        if (v20 == *(a1 + 200))
        {
          goto LABEL_68;
        }

        if (!*(v20 + 354) && RecordAnswersQuestion(v6 + 8, 0, v20))
        {
          *(v20 + 16) = 0;
          *(v20 + 24) = 0;
          v21 = *(v20 + 228);
          if (v21)
          {
            *(v20 + 228) = --v21;
            if (*(v6 + 20) >= 0x401u)
            {
              --*(v20 + 232);
            }

            if ((*(v6 + 8) & 0x10) != 0)
            {
              --*(v20 + 236);
            }
          }

          if (!*(v20 + 340) && v21 < *(v20 + 351))
          {
            *(v20 + 212) = 334;
            *(v20 + 208) = *(a1 + 64) - 334;
            SetNextQueryTime(a1, v20);
            if (mDNS_LoggingEnabled == 1)
            {
              v22 = mDNSLogCategory_Default;
              v23 = DNSTypeName(*(v20 + 342));
              LogMsgWithLevel(v22, OS_LOG_TYPE_DEFAULT, "CacheRecordRmv: (%s) %##s dropped below threshold of %d answers", v23, v20 + 376, *(v20 + 351));
            }
          }

          if (**(v6 + 48))
          {
            goto LABEL_44;
          }

          v27 = *(v6 + 64);
          if (v27)
          {
            v28 = *(v27 + 32);
            if (!v28 || v28 == 1 && dnssec_obj_resource_record_member_get_validation_result(v27) == 1)
            {
              break;
            }
          }
        }

LABEL_50:
        v26 = *(a1 + 208);
        if (v26 == v20)
        {
          v26 = *(v20 + 8);
          *(a1 + 208) = v26;
        }

        v20 = v26;
        if (!v26)
        {
          goto LABEL_68;
        }
      }

      v29 = mDNSLogCategory_DNSSEC;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO))
        {
          v30 = *(v6 + 64);
          if (v30)
          {
            LODWORD(v30) = *(v30 + 32) == 1;
          }

LABEL_67:
          v31 = bswap32(*(v20 + 340));
          v32 = *(v6 + 12);
          *buf = 67109632;
          v37 = HIWORD(v31);
          v38 = 1024;
          v39 = v32;
          v40 = 1024;
          v41 = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "[Q%u] Delivering RMV event for the negative record - rr type: %{mdns:rrtype}d, validated: %{mdns:yesno}d", buf, 0x14u);
        }
      }

      else
      {
        v29 = mDNSLogCategory_DNSSEC_redacted;
        if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO))
        {
          v30 = *(v6 + 64);
          if (v30)
          {
            LODWORD(v30) = *(v30 + 32) == 1;
          }

          goto LABEL_67;
        }
      }

LABEL_44:
      if (!*(v20 + 228) && !*(v20 + 340))
      {
        if (mDNS_LoggingEnabled == 1)
        {
          v24 = mDNSLogCategory_Default;
          v25 = DNSTypeName(*(v20 + 342));
          LogMsgWithLevel(v24, OS_LOG_TYPE_DEFAULT, "CacheRecordRmv: Last answer for %##s (%s) expired from cache; will reconfirm antecedents", v20 + 376, v25);
        }

        ReconfirmAntecedents(a1, (v20 + 376), *(v20 + 200), *(v6 + 32), 0);
      }

      AnswerCurrentQuestionWithResourceRecord(a1, v6, 0);
      goto LABEL_50;
    }

LABEL_68:
    *(a1 + 208) = 0;
    --*(a1 + 252);
    goto LABEL_69;
  }

  v3 = mDNSLogCategory_Default;

  LogMsgWithLevel(v3, OS_LOG_TYPE_DEFAULT, "CheckCacheExpiration ERROR! Cache already locked!");
}

void CacheRecordDeferredAdd(void *a1, uint64_t a2)
{
  *(a2 + 84) = 0;
  v4 = a1[26];
  if (v4)
  {
    v5 = mDNSLogCategory_Default;
    v6 = v4 + 376;
    v7 = DNSTypeName(*(v4 + 342));
    LogMsgWithLevel(v5, OS_LOG_TYPE_DEFAULT, "CacheRecordDeferredAdd ERROR m->CurrentQuestion already set: %##s (%s)", v6, v7);
  }

  v8 = a1[24];
  a1[26] = v8;
  if (v8)
  {
    do
    {
      if (v8 == a1[25])
      {
        break;
      }

      if (RecordAnswersQuestion(a2 + 8, 0, v8))
      {
        AnswerCurrentQuestionWithResourceRecord(a1, a2, 1);
      }

      v9 = a1[26];
      if (v9 == v8)
      {
        v9 = *(v8 + 8);
        a1[26] = v9;
      }

      v8 = v9;
    }

    while (v9);
  }

  a1[26] = 0;
}

void AnswerCurrentQuestionWithResourceRecord(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 208);
  v7 = FollowCNAME(v6, (a2 + 8), a3);
  if (DNSQuestionNeedsSensitiveLogging(v6))
  {
    if (*(a2 + 129))
    {
      goto LABEL_7;
    }

    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  *(a2 + 129) = v8;
  v9 = *(a2 + 120);
  if (v9)
  {
    *(v9 + 129) = v8;
  }

LABEL_7:
  if (*(v6 + 355))
  {
    if (mDNS_LoggingEnabled == 1)
    {
      v10 = mDNSLogCategory_Default;
      v11 = DNSTypeName(*(v6 + 342));
      v12 = (a1 + 47032);
      GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v12);
      LogMsgWithLevel(v10, OS_LOG_TYPE_DEFAULT, "AnswerCurrentQuestionWithResourceRecord: Question %p %##s (%s) not answering with record %s due to LOAddressAnswers %d", v6, v6 + 376, v11, v12, *(v6 + 355));
    }

    return;
  }

  if (a3 == 4 || !*(v6 + 354) || (*(v6 + 646) ? (v13 = !v7) : (v13 = 1), !v13 || *(v6 + 637) && *(a2 + 8) == 240 && *(a1 + 64) - *(v6 + 240) >= 0))
  {
    if (a3 == 1 && *(v6 + 340))
    {
      if (!*(a2 + 10) && *(v6 + 647) - 1 <= 1 && *(a2 + 8) != 240 && !*(v6 + 144) && !*(a2 + 64))
      {
        *(a2 + 10) = 1;
      }
    }

    else if (a3 != 1)
    {
      if (a3 != 2 || *(v6 + 352))
      {
        goto LABEL_57;
      }

      goto LABEL_52;
    }

    if (*(v6 + 638) || *(v6 + 653))
    {
      if (v7)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v20 = *(v6 + 136) + 5;
      v21 = v20 > 3 || v20 == 1;
      if (!v21 || *(v6 + 634) || IsLocalDomain((v6 + 376)) || v7)
      {
        goto LABEL_49;
      }
    }

    if (!*(v6 + 268))
    {
      v14 = *(v6 + 80);
      if (v14 && (*(v14 + 281) - 1) <= 3u)
      {
        v15 = dword_10010D360[(*(v14 + 281) - 1)];
        v16 = *(v6 + 260);
        v17 = *(v6 + 96);
        if (v17 && *(v17 + 16) == &_mdns_querier_kind)
        {
          v18 = atomic_load((v17 + 208));
          v16 += v18;
          v14 = *(v6 + 80);
        }

        if (v16)
        {
          v19 = *(v6 + 264);
          if (v19)
          {
            dnssd_analytics_update_dns_query_info((*(v14 + 276) >> 3) & 1, (0x203010100uLL >> (8 * v15)), *(v6 + 342), v16, 1000 * (*(a1 + 64) - v19) / 1000, *(a2 + 8) != 240);
          }
        }
      }

      *(v6 + 268) = 1;
    }

LABEL_49:
    if (!*(v6 + 40))
    {
      v26 = *(a2 + 96);
      if (v26 != v6 && *(a2 + 10) != 2)
      {
        if (!v26)
        {
          ++*(a1 + 252);
          AdjustUnansweredQueries(a1, a2);
        }

        *(a2 + 96) = v6;
        SetNextCacheCheckTimeForRecord(a1, a2);
      }
    }

    if (!*(v6 + 633) && (*(a2 + 8) & 0x10) == 0)
    {
LABEL_57:
      if (*(a2 + 84))
      {
        return;
      }

      if (!*(v6 + 340))
      {
        goto LABEL_118;
      }

      v23 = *(v6 + 673);
      if (v23 > 2)
      {
        if (v23 - 4 < 5)
        {
          goto LABEL_118;
        }

        if (v23 == 3)
        {
          v24 = *(a2 + 12);
          if (v24 != 5)
          {
            if (*(a2 + 8) != 240 && v24 == 1 && a3 == 1 && *(a2 + 14) == 1)
            {
              v25 = *(v6 + 80);
              if (v25)
              {
                if (_DNS64TestIPv6Synthesis(a1, v25, (*(a2 + 48) + 4)))
                {
                  *(v6 + 673) = 4;
                  goto LABEL_118;
                }
              }
            }

            goto LABEL_101;
          }

LABEL_118:
          v28 = *(a2 + 8);
          goto LABEL_119;
        }

LABEL_108:
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "DNS64StateMachine: unrecognized DNS64 state %d", *(v6 + 673));
        goto LABEL_118;
      }

      if (*(v6 + 673))
      {
        if (v23 != 1)
        {
          if (v23 == 2)
          {
            mDNS_StopQuery_internal(a1, v6);
            *(v6 + 673) = 6;
            v27 = 12;
LABEL_102:
            *(v6 + 342) = v27;

            mDNS_StartQuery_internal(a1, v6);
            return;
          }

          goto LABEL_108;
        }

        if (a3 != 1 || *(a2 + 8) == 240 || *(a2 + 12) != 28 || *(a2 + 14) != 1)
        {
LABEL_101:
          mDNS_StopQuery_internal(a1, v6);
          *(v6 + 673) = 5;
          v27 = 28;
          goto LABEL_102;
        }

        v32 = a1;
        v33 = v6;
        v34 = 3;
      }

      else
      {
        v28 = *(a2 + 8);
        if (a3 != 1 || v28 != 240)
        {
LABEL_119:
          if (v28 == 240)
          {
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            __src = 0u;
            v61 = 0u;
            if (PerformNextPunycodeConversion(v6, &__src))
            {
              v36 = *(v6 + 72);
              v37 = *(v6 + 340);
              *(v6 + 72) = 0;
              mDNS_StopQuery_internal(a1, v6);
              p_src = &__src;
              do
              {
                if (!p_src)
                {
                  break;
                }

                v39 = *p_src;
                if (v39 > 0x3F)
                {
                  break;
                }

                if (!*p_src)
                {
                  v48 = p_src - &__src + 1;
                  if (v48 <= 0x100u)
                  {
                    memcpy((v6 + 376), &__src, v48);
                    goto LABEL_165;
                  }

                  break;
                }

                p_src = (p_src + v39 + 1);
              }

              while (p_src - &__src <= 255);
              *(v6 + 376) = 0;
LABEL_165:
              *(v6 + 200) = DomainNameHashValue(v6 + 376);
              mDNS_StartQuery_internal(a1, v6);
              if (v36)
              {
                if (*(v6 + 40))
                {
                  CloseSocketSet(v36);
                  free(v36);
                }

                else
                {
                  *(v6 + 72) = v36;
                  *(v6 + 340) = v37;
                }
              }

              return;
            }

            v40 = *(a2 + 8) == 240;
          }

          else
          {
            v40 = 0;
          }

          v41 = *(v6 + 342);
          v42 = v41 != 47 && *(a2 + 12) == 47 && RRAssertsExistence(a2 + 8, v41) == 0;
          if (v40 || v42)
          {
            if ((a3 - 1) >= 2)
            {
              if (!a3)
              {
                v43 = *(v6 + 144);
                if (!v43 || (*(v43 + 24) & 1) == 0)
                {
                  return;
                }

                goto LABEL_145;
              }
            }

            else if (!*(v6 + 635))
            {
              return;
            }
          }

          else if (!a3)
          {
LABEL_145:
            if (*(v6 + 152) && (!v7 || *(v6 + 635) || *(v6 + 647) == 1))
            {
              v44 = *(a1 + 48);
              v45 = *(a1 + 52) + 1;
              *(a1 + 52) = v45;
              mDNS_VerifyLockState("Drop Lock", 0, v44, v45, "AnswerCurrentQuestionWithResourceRecord", 5540);
              v46 = *(v6 + 342);
              if (v46 == 47 || *(a2 + 12) != 47 || RRAssertsExistence(a2 + 8, v46))
              {
                if (*(v6 + 673) - 3 <= 1 && *(a2 + 12) == 1)
                {
                  DNS64AnswerCurrentQuestion(a1, (a2 + 8), a3);
                }

                else
                {
                  (*(v6 + 152))(a1, v6, a2 + 8, a3);
                }
              }

              else if (!*(v6 + 340))
              {
                v72 = 0u;
                v73 = 0u;
                v70 = 0u;
                v71 = 0u;
                v68 = 0u;
                v69 = 0u;
                v66 = 0u;
                v67 = 0u;
                v64 = 0u;
                v65 = 0u;
                v62 = 0u;
                v63 = 0u;
                __src = 0u;
                v61 = 0u;
                MakeNegativeCacheRecordForQuestion(a1, &__src, v6, *(a2 + 32));
                (*(v6 + 152))(a1, v6, &__src + 8, a3);
              }

              mDNS_VerifyLockState("Reclaim Lock", 0, *(a1 + 48), *(a1 + 52), "AnswerCurrentQuestionWithResourceRecord", 5566);
              --*(a1 + 52);
            }

            if (*(a1 + 208) == v6 && v7)
            {
              AnswerQuestionByFollowingCNAME(a1, v6, a2 + 8);
            }

            return;
          }

          if (!*(v6 + 40) && !*(v6 + 340))
          {
            if (!*(v6 + 268))
            {
              *(v6 + 268) = 1;
            }

            v49 = *(a1 + 12656);
            if (v49)
            {
              while (!*(v49 + 16))
              {
                v49 = *v49;
                if (!v49)
                {
                  goto LABEL_145;
                }
              }

LABEL_177:
              v50 = v49[1];
              if (v50 && v49[444] == *(a2 + 32))
              {
                if (*(v6 + 357))
                {
                  v51 = *(v6 + 264);
                  if (v51)
                  {
                    v52 = *(a1 + 64) - v51;
                    if (v52 >= 1)
                    {
                      v53 = 1000 * (v52 % 0x3E8u) / 0x3E8 + 1000 * (v52 / 0x3E8u);
                      v54 = v53 >> 3;
                      v55 = 15;
                      if (v53 >> 5 >= 0x271)
                      {
                        v55 = 16;
                      }

                      v56 = v53 / 0x3E8u;
                      if (v54 > 0x752)
                      {
                        v56 = v55;
                      }

                      v57 = v50 + 28;
                      v58 = *(v57 + 2 * v56);
                      if (v58 != 0xFFFF)
                      {
                        *(v57 + 2 * v56) = v58 + 1;
                      }
                    }
                  }
                }

                else
                {
                  v59 = *(v50 + 24);
                  if (v59 != -1)
                  {
                    *(v50 + 24) = v59 + 1;
                  }
                }
              }

              else
              {
                while (1)
                {
                  v49 = *v49;
                  if (!v49)
                  {
                    break;
                  }

                  if (*(v49 + 16))
                  {
                    goto LABEL_177;
                  }
                }
              }
            }
          }

          goto LABEL_145;
        }

        v29 = *(v6 + 342);
        if (v29 == 28)
        {
          if (*(a2 + 12) == 28 && *(a2 + 14) == 1)
          {
            v30 = *(v6 + 200);
            if (_DNS64IPv4OnlyFQDNHash_sHashOnce != -1)
            {
              dispatch_once(&_DNS64IPv4OnlyFQDNHash_sHashOnce, &__block_literal_global_610);
            }

            if (v30 != _DNS64IPv4OnlyFQDNHash_sHash || !SameDomainNameBytes((v6 + 376), "\bipv4only\x04arpa"))
            {
              v31 = *(v6 + 80);
              if (v31)
              {
                if (*(v31 + 282) == 2 && (*(v31 + 276) & 0x30) == 0x20)
                {
                  v32 = a1;
                  v33 = v6;
                  v34 = 1;
                  goto LABEL_98;
                }
              }
            }
          }

          v29 = *(v6 + 342);
        }

        if (v29 != 12)
        {
          goto LABEL_118;
        }

        if (*(a2 + 12) != 12)
        {
          goto LABEL_118;
        }

        if (*(a2 + 14) != 1)
        {
          goto LABEL_118;
        }

        v35 = *(v6 + 80);
        if (!v35 || *(v35 + 282) != 2 || (*(v35 + 276) & 0x30) != 0x20 || !GetReverseIPv6Addr((v6 + 376), 0))
        {
          goto LABEL_118;
        }

        v32 = a1;
        v33 = v6;
        v34 = 2;
      }

LABEL_98:

      _DNS64RestartQuestion(v32, v33, v34);
      return;
    }

LABEL_52:
    if (*(v6 + 212) >= 1 && !*(v6 + 40) && (!*(v6 + 340) || !*(v6 + 632)))
    {
      v22 = *(a1 + 64);
      *(v6 + 256) = v22;
      *(v6 + 224) = 0;
      *(v6 + 208) = v22;
      *(v6 + 212) = 3600000;
      *(v6 + 352) = 0;
      *(v6 + 649) = 0;
    }

    goto LABEL_57;
  }
}

char *create_reply(char *result, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0xFFFFFFFC) > 0xBuLL)
  {
    v3 = a2;
    v4 = a2 + 44;
    if (v4 && (v6 = result, (result = malloc_type_calloc(1uLL, v4, 0x12F86626uLL)) != 0))
    {
      *result = 0;
      *(result + 2) = v3 + 28;
      *(result + 12) = &_mh_execute_header;
      *(result + 5) = v3;
      *(result + 6) = 0;
      *(result + 7) = v6;
      *(result + 4) = *(a3 + 232);
      *(result + 10) = 0;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: create_reply - data length less than length of required fields");
    return 0;
  }

  return result;
}

char *mDNSPlatformInterfaceIndexfromInterfaceID(uint64_t **a1, char *a2, int a3)
{
  v3 = a2;
  v5 = a2 + 5;
  if (a2 + 5) < 6 && ((0x2Du >> v5))
  {
    return dword_10010DF70[v5];
  }

  v6 = **a1;
  if (v6)
  {
    while (*(v6 + 3720) != a2)
    {
      v6 = *(v6 + 3680);
      if (!v6)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (!a3)
    {
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Interface index for InterfaceID %p not found; Updating interface list", a2);
      }

      mDNSMacOSXNetworkChanged();
      v7 = **a1;
      if (v7)
      {
        while (*(v7 + 3720) != v3)
        {
          v7 = *(v7 + 3680);
          if (!v7)
          {
            return 0;
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return v3;
}

void abort_request(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (!v2)
  {
LABEL_11:
    if (*a1)
    {
      Querier_DeregisterCustomDNSService(*a1);
      *a1 = 0;
    }

    v5 = *(a1 + 184);
    if (v5 < 0)
    {
      v10 = mDNSLogCategory_Default;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v11 = mDNSLogCategory_Default == mDNSLogCategory_State;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }
      }

      else
      {
        v10 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }
      }

      v18 = *(a1 + 200);
      *buf = 67109632;
      v32 = v18;
      v33 = 2048;
      *v34 = a1;
      *&v34[8] = 1024;
      LODWORD(v35) = v5;
      v14 = "[R%u] abort_request: ERROR: Attempt to abort operation %p with invalid fd %d";
      v15 = v10;
      v16 = 24;
      goto LABEL_36;
    }

    if (*(a1 + 24))
    {
LABEL_56:
      *(a1 + 192) = -1;
      *(a1 + 184) = -1;
      *(a1 + 112) = -1;
      return;
    }

    v6 = *(a1 + 192);
    v7 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v8 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v8 = 1;
    }

    v9 = v8;
    if (v6 == v5)
    {
      if (v9)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_45;
        }
      }

      else
      {
        v7 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_45;
        }
      }

      v19 = *(a1 + 200);
      *buf = 67109376;
      v32 = v19;
      v33 = 1024;
      *v34 = v5;
      v20 = "[R%u] Removing FD %d";
      v21 = v7;
      v22 = 14;
    }

    else
    {
      if (v9)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_45;
        }
      }

      else
      {
        v7 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_45;
        }
      }

      v23 = *(a1 + 200);
      *buf = 67109632;
      v32 = v23;
      v33 = 1024;
      *v34 = v5;
      *&v34[4] = 1024;
      *&v34[6] = v6;
      v20 = "[R%u] Removing FD %d and closing errsd %d";
      v21 = v7;
      v22 = 20;
    }

    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, v20, buf, v22);
LABEL_45:
    v24 = *(a1 + 184);
    v25 = &gEventSources;
    while (1)
    {
      v26 = v25;
      v25 = *v25;
      if (!v25)
      {
        break;
      }

      if (*(v25 + 2) == v24)
      {
        *v26 = *v25;
        close(v24);
        free(v25);
        goto LABEL_50;
      }
    }

    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "udsSupportRemoveFDFromEventLoop: ERROR fd %d not found in EventLoop source list", *(a1 + 184));
LABEL_50:
    v27 = *(a1 + 192);
    if (v27 != *(a1 + 184))
    {
      close(v27);
      *(a1 + 192) = *(a1 + 184);
    }

    v29 = (a1 + 96);
    v28 = *(a1 + 96);
    if (v28)
    {
      do
      {
        v30 = *v28;
        *v29 = *v28;
        if (!v30)
        {
          *(a1 + 104) = v29;
        }

        free(v28);
        v28 = *v29;
      }

      while (*v29);
    }

    goto LABEL_56;
  }

  if (v2 != -1)
  {
    v2(a1);
    goto LABEL_11;
  }

  v3 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v4 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    goto LABEL_33;
  }

  v3 = mDNSLogCategory_Default_redacted;
  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
  {
LABEL_33:
    v13 = *(a1 + 200);
    *buf = 67109632;
    v32 = v13;
    v33 = 2048;
    *v34 = a1;
    *&v34[8] = 2048;
    v35 = -1;
    v14 = "[R%u] abort_request: ERROR: Attempt to abort operation %p with req->terminate %p";
    v15 = v3;
    v16 = 28;
LABEL_36:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
  }
}

void queryrecord_termination_callback(uint64_t a1)
{
  v2 = (*(a1 + 144) + 376);
  v3 = IsLocalDomain(v2);
  v4 = *(*(a1 + 144) + 342);
  if (!_shouldLogFullRequestInfo((a1 + 204), (a1 + 208)))
  {
    if (!mDNS_SensitiveLoggingEnableCount || (v3 ? (v13 = mDNSLogCategory_mDNS) : (v13 = mDNSLogCategory_Default), v13 == mDNSLogCategory_State))
    {
      if (v3)
      {
        v14 = mDNSLogCategory_mDNS;
      }

      else
      {
        v14 = mDNSLogCategory_Default;
      }

      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v3)
      {
        v14 = mDNSLogCategory_mDNS;
      }

      else
      {
        v14 = mDNSLogCategory_Default_redacted;
      }

      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }
    }

    v15 = *(a1 + 200);
    v16 = mDNS_DomainNameFNV1aHash(v2);
    *__tp = 0;
    *&__tp[8] = 0;
    clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
    v17 = *__tp - *(a1 + 204);
    *__tp = 67109632;
    *&__tp[4] = v15;
    *&__tp[8] = 1024;
    *&__tp[10] = v16;
    *&__tp[14] = 1024;
    *&__tp[16] = v17;
    v18 = "[R%u] DNSServiceQueryRecord STOP -- name hash: %x, duration: %{mdns:time_duration}u";
    v19 = v14;
    v20 = 20;
LABEL_45:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, __tp, v20);
    goto LABEL_46;
  }

  if (!mDNS_SensitiveLoggingEnableCount || (v3 ? (v5 = mDNSLogCategory_mDNS) : (v5 = mDNSLogCategory_Default), v5 == mDNSLogCategory_State))
  {
    if (v3)
    {
      v6 = mDNSLogCategory_mDNS;
    }

    else
    {
      v6 = mDNSLogCategory_Default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 200);
      v11 = v2;
      while (1)
      {
        if (!v11 || (v12 = *v11, v12 > 0x3F))
        {
LABEL_26:
          v10 = 257;
          goto LABEL_44;
        }

        if (!*v11)
        {
          break;
        }

        v11 += v12 + 1;
        if (v11 - v2 >= 256)
        {
          goto LABEL_26;
        }
      }

      v10 = (v11 - v2 + 1);
      goto LABEL_44;
    }
  }

  else
  {
    if (v3)
    {
      v6 = mDNSLogCategory_mDNS;
    }

    else
    {
      v6 = mDNSLogCategory_Default_redacted;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 200);
      v8 = v2;
      while (1)
      {
        if (!v8 || (v9 = *v8, v9 > 0x3F))
        {
LABEL_16:
          v10 = 257;
          goto LABEL_44;
        }

        if (!*v8)
        {
          break;
        }

        v8 += v9 + 1;
        if (v8 - v2 >= 256)
        {
          goto LABEL_16;
        }
      }

      v10 = (v8 - v2 + 1);
LABEL_44:
      v30 = v10;
      v21 = *(a1 + 248);
      v22 = *(a1 + 252);
      v23 = *(a1 + 188);
      v24 = mDNS_DomainNameFNV1aHash(v2);
      *__tp = 0;
      *&__tp[8] = 0;
      clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
      v25 = *__tp - *(a1 + 204);
      *__tp = 67111683;
      *&__tp[4] = v7;
      *&__tp[8] = 2160;
      *&__tp[10] = 1752392040;
      *&__tp[18] = 1040;
      v32 = v30;
      v33 = 2101;
      v34 = v2;
      v35 = 1024;
      v36 = v4;
      v37 = 1024;
      v38 = v21;
      v39 = 1024;
      v40 = v22;
      v41 = 1024;
      v42 = v23;
      v43 = 2082;
      v44 = a1 + 256;
      v45 = 1024;
      v46 = v24;
      v47 = 1024;
      v48 = v25;
      v18 = "[R%u] DNSServiceQueryRecord STOP -- qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{mdns:rrtype}d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x, duration: %{mdns:time_duration}u";
      v19 = v6;
      v20 = 80;
      goto LABEL_45;
    }
  }

LABEL_46:
  QueryRecordClientRequestStop(*(a1 + 144));
  v26 = *(a1 + 8);
  if (v26)
  {
    v27 = *(a1 + 252);
    if (v27)
    {
      v28 = AWDLInterfaceID == v27 || WiFiAwareInterfaceID == v27;
    }

    else
    {
      v28 = (*(a1 + 250) >> 4) & 1;
    }

    bzero(__tp, 0x3F1uLL);
    service_type_from_domain_name = _mdns_get_service_type_from_domain_name(v2, __tp);
    _mdns_powerlog_bonjour_event(9u, v28, (a1 + 256), service_type_from_domain_name, v26);
    *(a1 + 8) = 0;
  }
}

void mDNS_StopQuery(unsigned int *a1, uint64_t a2)
{
  mDNS_Lock_(a1, "mDNS_StopQuery", 16005);
  mDNS_StopQuery_internal(a1, a2);

  mDNS_Unlock_(a1, "mDNS_StopQuery", 16007);
}

uint64_t mDNS_StopQuery_internal(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 144);
  if (v4 && *(v4 + 24) == 1)
  {
    v5 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v6 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v6 = 1;
    }

    v7 = v6;
    if (!*(a2 + 656))
    {
      if (v7)
      {
        if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_29;
        }
      }

      else
      {
        v5 = mDNSLogCategory_DNSSEC_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_29;
        }
      }

      *buf = 136447234;
      *v150 = "question->enableDNSSEC";
      *&v150[8] = 2082;
      *&v150[10] = "";
      *&v150[18] = 2082;
      *&v150[20] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec.c";
      *&v150[28] = 1024;
      *&v150[30] = 126;
      *&v150[34] = 2048;
      *&v150[36] = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", buf, 0x30u);
      goto LABEL_29;
    }

    if (v7)
    {
      if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_DEBUG))
      {
        v8 = bswap32(*(a2 + 340)) >> 16;
        v9 = a2 + 376;
        v10 = (a2 + 376);
        while (1)
        {
          if (!v10 || (v11 = *v10, v11 > 0x3F))
          {
LABEL_17:
            v12 = 257;
            goto LABEL_27;
          }

          if (!*v10)
          {
            break;
          }

          v10 += v11 + 1;
          if (&v10[-v9] >= 256)
          {
            goto LABEL_17;
          }
        }

        v12 = (v10 - v9 + 1);
LABEL_27:
        v16 = DNSTypeName(*(a2 + 342));
        *buf = 67110403;
        *v150 = v8;
        *&v150[4] = 2160;
        *&v150[6] = 1752392040;
        *&v150[14] = 1040;
        *&v150[16] = v12;
        *&v150[20] = 2101;
        *&v150[22] = a2 + 376;
        *&v150[30] = 2160;
        *&v150[32] = 1752392040;
        *&v150[40] = 2085;
        *&v150[42] = v16;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[Q%u] Stopping Primary DNSSEC question - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{sensitive, mask.hash}s", buf, 0x36u);
      }
    }

    else
    {
      v5 = mDNSLogCategory_DNSSEC_redacted;
      if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_DEBUG))
      {
        v8 = bswap32(*(a2 + 340)) >> 16;
        v13 = a2 + 376;
        v14 = (a2 + 376);
        while (1)
        {
          if (!v14 || (v15 = *v14, v15 > 0x3F))
          {
LABEL_24:
            v12 = 257;
            goto LABEL_27;
          }

          if (!*v14)
          {
            break;
          }

          v14 += v15 + 1;
          if (&v14[-v13] >= 256)
          {
            goto LABEL_24;
          }
        }

        v12 = (v14 - v13 + 1);
        goto LABEL_27;
      }
    }

    v17 = *(*(a2 + 144) + 16);
    *(a2 + 152) = *(v17 + 40);
    *(a2 + 635) = *(v17 + 36);
  }

LABEL_29:
  if (*(a1 + 232) != a2 && *(a2 + 184))
  {
    dns_push_handle_question_stop(a1, a2);
  }

  v18 = (a2 + 376);
  v19 = CacheGroupForName(a1, *(a2 + 200), (a2 + 376));
  v20 = (a1 + 192);
  v21 = *(a2 + 252);
  v22 = *(a2 + 136);
  v24 = v22 == -5 || v22 == -3 || v22 == -2;
  v25 = (a1 + 216);
  if (!v24)
  {
    v25 = (a1 + 192);
  }

  do
  {
    v26 = v25;
    v27 = *v25;
    v25 = (*v25 + 8);
    if (v27)
    {
      v28 = v27 == a2;
    }

    else
    {
      v28 = 1;
    }
  }

  while (!v28);
  if (!v27)
  {
    v32 = 4294901755;
    if ((*(a2 + 212) & 0x80000000) != 0)
    {
      return v32;
    }

    v33 = __rev16(*(a2 + 340));
    v34 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v35 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v35 = 1;
    }

    if (v35)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
      {
        return v32;
      }

      v36 = (a2 + 376);
      while (1)
      {
        if (!v36 || (v37 = *v36, v37 > 0x3F))
        {
LABEL_67:
          v38 = 257;
          goto LABEL_245;
        }

        if (!*v36)
        {
          break;
        }

        v36 += v37 + 1;
        if (v36 - v18 >= 256)
        {
          goto LABEL_67;
        }
      }

      v38 = (v36 - v18 + 1);
    }

    else
    {
      v34 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
      {
        return v32;
      }

      v94 = (a2 + 376);
      while (1)
      {
        if (!v94 || (v95 = *v94, v95 > 0x3F))
        {
LABEL_181:
          v38 = 257;
          goto LABEL_245;
        }

        if (!*v94)
        {
          break;
        }

        v94 += v95 + 1;
        if (v94 - v18 >= 256)
        {
          goto LABEL_181;
        }
      }

      v38 = (v94 - v18 + 1);
    }

LABEL_245:
    v115 = DNSTypeName(*(a2 + 342));
    *buf = 67110403;
    *v150 = v21;
    *&v150[4] = 1024;
    *&v150[6] = v33;
    *&v150[10] = 2160;
    *&v150[12] = 1752392040;
    *&v150[20] = 1040;
    *&v150[22] = v38;
    *&v150[26] = 2101;
    *&v150[28] = a2 + 376;
    *&v150[36] = 2082;
    *&v150[38] = v115;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_FAULT, "[R%u->Q%u] mDNS_StopQuery_internal: Question %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s) not found in active list.", buf, 0x32u);
    return v32;
  }

  *v26 = *v25;
  v29 = *(a2 + 136) + 5;
  v30 = v29 > 3 || v29 == 1;
  if (v30 && !*(a2 + 340))
  {
    v39 = *(a1 + 19908);
    if (v39 + *(a1 + 19904) == 1)
    {
      v40 = *(a1 + 64) + 60000;
      if (v40 <= 1)
      {
        v40 = 1;
      }

      *(a1 + 116) = v40;
    }

    *(a1 + 19908) = v39 - 1;
  }

  v148 = v19;
  if (!v21)
  {
    v31 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_76;
      }
    }

    else
    {
      v31 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_76;
      }
    }

    v41 = bswap32(*(a2 + 340)) >> 16;
    v42 = mDNS_DomainNameFNV1aHash((a2 + 376));
    *buf = 67109376;
    *v150 = v41;
    *&v150[4] = 1024;
    *&v150[6] = v42;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[Q%u] mDNS_StopQuery_internal STOP -- name hash: %x", buf, 0xEu);
  }

LABEL_76:
  v43 = *(a2 + 40);
  v44 = &unk_100178000;
  if (!v43)
  {
    v50 = *v20;
    if (!*v20)
    {
      goto LABEL_199;
    }

    v51 = 0;
    v52 = (a2 + 284);
    v53 = (a2 + 96);
    while (1)
    {
      if (*(v50 + 40) != a2)
      {
        goto LABEL_166;
      }

      *(v50 + 40) = v51;
      if (v51)
      {
        goto LABEL_166;
      }

      *(v50 + 208) = *(a2 + 208);
      *(v50 + 224) = *(a2 + 224);
      *(v50 + 352) = *(a2 + 352);
      *(v50 + 256) = *(a2 + 256);
      *(v50 + 104) = *(a2 + 104);
      v54 = *v52;
      *(v50 + 300) = *(v52 + 4);
      *(v50 + 284) = v54;
      *(v50 + 336) = *(a2 + 336);
      v55 = *(a2 + 80);
      if (v55)
      {
        os_retain(v55);
      }

      v56 = *(v50 + 80);
      if (v56)
      {
        os_release(v56);
      }

      v57 = *(a2 + 80);
      *(v50 + 80) = v57;
      if (v57)
      {
        os_release(v57);
        *(a2 + 80) = 0;
      }

      v59 = (v50 + 96);
      v58 = *(v50 + 96);
      if (v58)
      {
        mdns_client_invalidate(v58);
        os_release(*v59);
        *v59 = 0;
      }

      if (!*v53)
      {
        goto LABEL_103;
      }

      os_retain(*v53);
      if (*v59)
      {
        os_release(*v59);
      }

      v60 = *v53;
      *v59 = *v53;
      if (v60)
      {
        break;
      }

LABEL_104:
      *(v50 + 192) = *(a2 + 192);
      *(a2 + 192) = 0;
      v61 = *(a2 + 144);
      if (!v61 || *(v61 + 24) != 1)
      {
        goto LABEL_117;
      }

      v62 = mDNSLogCategory_DNSSEC;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO))
        {
LABEL_111:
          v63 = bswap32(*(v50 + 340));
          v64 = bswap32(*(a2 + 340));
          *buf = 67109376;
          *v150 = HIWORD(v63);
          *&v150[4] = 1024;
          *&v150[6] = HIWORD(v64);
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "[Q%u->Q%u] Non-primary DNSSEC question becomes primary due to primary question cancelation.", buf, 0xEu);
        }
      }

      else
      {
        v62 = mDNSLogCategory_DNSSEC_redacted;
        if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO))
        {
          goto LABEL_111;
        }
      }

      v65 = *(a2 + 144);
      if (v65)
      {
        ++*v65;
      }

      if (*(v50 + 144))
      {
        ref_count_obj_release(*(v50 + 144));
        *(v50 + 144) = 0;
        v65 = *(a2 + 144);
      }

      *(v50 + 144) = v65;
      ref_count_obj_release(v65);
      *(a2 + 144) = 0;
      v66 = *(v50 + 152);
      v67 = *(*(v50 + 144) + 16);
      v68 = *(v50 + 635) != 0;
      *(v67 + 24) = v50;
      *(v67 + 40) = v66;
      *(v67 + 36) = v68;
      *(v50 + 152) = dnssec_query_record_result_reply;
      *(v50 + 635) = 1;
      *(v50 + 228) = *(a2 + 228);
LABEL_117:
      *(v50 + 340) = *(a2 + 340);
      *(v50 + 350) = *(a2 + 350);
      *(v50 + 272) = *(a2 + 272);
      *(v50 + 348) = *(a2 + 348);
      *(v50 + 328) = *(a2 + 328);
      *(a2 + 104) = 0;
      if (!*(a2 + 40) && !*(a2 + 340))
      {
        v69 = *(a2 + 260);
        *(v50 + 268) = *(a2 + 268);
        *(v50 + 260) = v69;
      }

      if (*(v50 + 104))
      {
        v70 = *(v44 + 434);
        if (!mDNS_SensitiveLoggingEnableCount || v70 == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(*(v44 + 434), OS_LOG_TYPE_DEFAULT))
          {
            v71 = v44;
            v76 = v50 + 376;
            v77 = (v50 + 376);
            while (1)
            {
              if (!v77 || (v78 = *v77, v78 > 0x3F))
              {
LABEL_136:
                v75 = 257;
                goto LABEL_139;
              }

              if (!*v77)
              {
                break;
              }

              v77 += v78 + 1;
              if (&v77[-v76] >= 256)
              {
                goto LABEL_136;
              }
            }

            v75 = (v77 - v76 + 1);
LABEL_139:
            v79 = DNSTypeName(*(v50 + 342));
            *buf = 141558787;
            *v150 = 1752392040;
            *&v150[8] = 1040;
            *&v150[10] = v75;
            *&v150[14] = 2101;
            *&v150[16] = v50 + 376;
            *&v150[24] = 2082;
            *&v150[26] = v79;
            _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "UpdateQuestionDuplicates transferred nta pointer for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", buf, 0x26u);
            v44 = v71;
            v52 = (a2 + 284);
          }
        }

        else
        {
          v70 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            v71 = v44;
            v72 = v50 + 376;
            v73 = (v50 + 376);
            while (1)
            {
              if (!v73 || (v74 = *v73, v74 > 0x3F))
              {
LABEL_129:
                v75 = 257;
                goto LABEL_139;
              }

              if (!*v73)
              {
                break;
              }

              v73 += v74 + 1;
              if (&v73[-v72] >= 256)
              {
                goto LABEL_129;
              }
            }

            v75 = (v73 - v72 + 1);
            goto LABEL_139;
          }
        }

        *(*(v50 + 104) + 824) = v50;
      }

      if (*(a2 + 112) && mDNS_LoggingEnabled)
      {
        LogMsgWithLevel(*(v44 + 434), OS_LOG_TYPE_DEFAULT, "UpdateQuestionDuplicates did not transfer tcp pointer");
      }

      if (*(a2 + 350) != 22)
      {
        goto LABEL_165;
      }

      v80 = *(v44 + 434);
      if (!mDNS_SensitiveLoggingEnableCount || v80 == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(*(v44 + 434), OS_LOG_TYPE_DEFAULT))
        {
          v81 = v44;
          v86 = v50 + 376;
          v87 = (v50 + 376);
          while (1)
          {
            if (!v87 || (v88 = *v87, v88 > 0x3F))
            {
LABEL_160:
              v85 = 257;
              goto LABEL_163;
            }

            if (!*v87)
            {
              break;
            }

            v87 += v88 + 1;
            if (&v87[-v86] >= 256)
            {
              goto LABEL_160;
            }
          }

          v85 = (v87 - v86 + 1);
          goto LABEL_163;
        }
      }

      else
      {
        v80 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          v81 = v44;
          v82 = v50 + 376;
          v83 = (v50 + 376);
          while (1)
          {
            if (!v83 || (v84 = *v83, v84 > 0x3F))
            {
LABEL_153:
              v85 = 257;
              goto LABEL_163;
            }

            if (!*v83)
            {
              break;
            }

            v83 += v84 + 1;
            if (&v83[-v82] >= 256)
            {
              goto LABEL_153;
            }
          }

          v85 = (v83 - v82 + 1);
LABEL_163:
          v89 = DNSTypeName(*(v50 + 342));
          *buf = 141558787;
          *v150 = 1752392040;
          *&v150[8] = 1040;
          *&v150[10] = v85;
          *&v150[14] = 2101;
          *&v150[16] = v50 + 376;
          *&v150[24] = 2082;
          *&v150[26] = v89;
          _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "UpdateQuestionDuplicates transferred LLQ state for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", buf, 0x26u);
          v44 = v81;
          v52 = (a2 + 284);
        }
      }

      *(a2 + 350) = 0;
LABEL_165:
      SetNextQueryTime(a1, v50);
      v51 = v50;
LABEL_166:
      v50 = *(v50 + 8);
      if (!v50)
      {
        goto LABEL_199;
      }
    }

    os_release(v60);
    v59 = (a2 + 96);
LABEL_103:
    *v59 = 0;
    goto LABEL_104;
  }

  v45 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
    {
      v46 = *(a2 + 252);
      v90 = (a2 + 376);
      v147 = bswap32(*(a2 + 340)) >> 16;
      v146 = bswap32(*(v43 + 340)) >> 16;
      while (1)
      {
        if (!v90 || (v91 = *v90, v91 > 0x3F))
        {
LABEL_174:
          v92 = 257;
          goto LABEL_183;
        }

        if (!*v90)
        {
          break;
        }

        v90 += v91 + 1;
        if (v90 - v18 >= 256)
        {
          goto LABEL_174;
        }
      }

      v92 = (v90 - v18 + 1);
LABEL_183:
      v145 = v92;
      v96 = DNSTypeName(*(a2 + 342));
      v97 = *(a2 + 40);
      v98 = v97 + 376;
      v99 = (v97 + 376);
      while (1)
      {
        if (!v99 || (v100 = *v99, v100 > 0x3F))
        {
LABEL_188:
          v101 = 257;
          goto LABEL_198;
        }

        if (!*v99)
        {
          break;
        }

        v99 += v100 + 1;
        if (&v99[-v98] >= 256)
        {
          goto LABEL_188;
        }
      }

      v101 = (v99 - v98 + 1);
      goto LABEL_198;
    }
  }

  else
  {
    v45 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
    {
      v46 = *(a2 + 252);
      v47 = (a2 + 376);
      v147 = bswap32(*(a2 + 340)) >> 16;
      v146 = bswap32(*(v43 + 340)) >> 16;
      while (1)
      {
        if (!v47 || (v48 = *v47, v48 > 0x3F))
        {
LABEL_85:
          v49 = 257;
          goto LABEL_191;
        }

        if (!*v47)
        {
          break;
        }

        v47 += v48 + 1;
        if (v47 - v18 >= 256)
        {
          goto LABEL_85;
        }
      }

      v49 = (v47 - v18 + 1);
LABEL_191:
      v145 = v49;
      v96 = DNSTypeName(*(a2 + 342));
      v97 = *(a2 + 40);
      v102 = v97 + 376;
      v103 = (v97 + 376);
      while (1)
      {
        if (!v103 || (v104 = *v103, v104 > 0x3F))
        {
LABEL_196:
          v101 = 257;
          goto LABEL_198;
        }

        if (!*v103)
        {
          break;
        }

        v103 += v104 + 1;
        if (&v103[-v102] >= 256)
        {
          goto LABEL_196;
        }
      }

      v101 = (v103 - v102 + 1);
LABEL_198:
      v105 = DNSTypeName(*(v97 + 342));
      *buf = 67112195;
      *v150 = v46;
      *&v150[4] = 1024;
      *&v150[6] = v147;
      *&v150[10] = 1024;
      *&v150[12] = v146;
      *&v150[16] = 2048;
      *&v150[18] = a2;
      *&v150[26] = 2160;
      *&v150[28] = 1752392040;
      *&v150[36] = 1040;
      *&v150[38] = v145;
      *&v150[42] = 2101;
      *&v150[44] = a2 + 376;
      v151 = 2082;
      v152 = v96;
      v153 = 2048;
      v154 = v97;
      v155 = 2160;
      v156 = 1752392040;
      v157 = 1040;
      v158 = v101;
      v159 = 2101;
      v160 = v97 + 376;
      v161 = 2082;
      v162 = v105;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "[R%u->DupQ%d->Q%d] UpdateQuestionDuplicates: question %p %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s) duplicate of %p %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", buf, 0x70u);
      v44 = &unk_100178000;
    }
  }

LABEL_199:
  *(a2 + 212) = -1;
  if (v148)
  {
    for (i = v148[2]; i; i = *i)
    {
      if (i[12] == a2)
      {
        v107 = *v20;
        if (*v20)
        {
          v108 = 0;
          do
          {
            if (v107 == *(a1 + 200))
            {
              break;
            }

            if (!*(v107 + 40) && !*(v107 + 354) && RecordAnswersQuestion((i + 1), 0, v107))
            {
              if (*(v107 + 212) >= 1)
              {
                i[12] = v107;
                goto LABEL_216;
              }

              if (!v108)
              {
                v108 = v107;
              }
            }

            v107 = *(v107 + 8);
          }

          while (v107);
          i[12] = v108;
          if (v108)
          {
            continue;
          }
        }

        else
        {
          i[12] = 0;
        }

        --*(a1 + 252);
      }

LABEL_216:
      ;
    }
  }

  if (*(a1 + 208) == a2)
  {
    *(a1 + 208) = *(a2 + 8);
  }

  if (*(a1 + 200) == a2)
  {
    *(a1 + 200) = *(a2 + 8);
  }

  if (*(a1 + 224) == a2)
  {
    *(a1 + 224) = *(a2 + 8);
  }

  if (*(a1 + 232) == a2)
  {
    v109 = *(v44 + 434);
    if (!mDNS_SensitiveLoggingEnableCount || v109 == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(*(v44 + 434), OS_LOG_TYPE_DEFAULT))
      {
        v113 = (a2 + 376);
        while (1)
        {
          if (!v113 || (v114 = *v113, v114 > 0x3F))
          {
LABEL_241:
            v112 = 257;
            goto LABEL_247;
          }

          if (!*v113)
          {
            break;
          }

          v113 += v114 + 1;
          if (v113 - v18 >= 256)
          {
            goto LABEL_241;
          }
        }

        v112 = (v113 - v18 + 1);
        goto LABEL_247;
      }
    }

    else
    {
      v109 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v110 = (a2 + 376);
        while (1)
        {
          if (!v110 || (v111 = *v110, v111 > 0x3F))
          {
LABEL_234:
            v112 = 257;
            goto LABEL_247;
          }

          if (!*v110)
          {
            break;
          }

          v110 += v111 + 1;
          if (v110 - v18 >= 256)
          {
            goto LABEL_234;
          }
        }

        v112 = (v110 - v18 + 1);
LABEL_247:
        v116 = DNSTypeName(*(a2 + 342));
        *buf = 141558787;
        *v150 = 1752392040;
        *&v150[8] = 1040;
        *&v150[10] = v112;
        *&v150[14] = 2101;
        *&v150[16] = a2 + 376;
        *&v150[24] = 2082;
        *&v150[26] = v116;
        _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "mDNS_StopQuery_internal: Just deleted the current restart question: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", buf, 0x26u);
      }
    }

    *(a1 + 232) = *(a2 + 8);
  }

  *(a2 + 8) = 0;
  v117 = *(a2 + 112);
  if (v117)
  {
    DisposeTCPConn(v117);
    *(a2 + 112) = 0;
  }

  v118 = *(a2 + 72);
  if (v118)
  {
    CloseSocketSet(*(a2 + 72));
    free(v118);
    *(a2 + 72) = 0;
  }

  v119 = *(a2 + 104);
  if (v119)
  {
    CancelGetZoneData(a1, v119);
    *(a2 + 104) = 0;
  }

  v120 = *(a2 + 96);
  if (!v120)
  {
    goto LABEL_278;
  }

  v121 = *(v120 + 16);
  if (v121 == &_mdns_querier_kind)
  {
    if (*(v120 + 248))
    {
      goto LABEL_276;
    }

    v123 = 0;
    v122 = *(a2 + 96);
  }

  else
  {
    if (v121 != &_mdns_subscriber_kind)
    {
      goto LABEL_276;
    }

    v122 = 0;
    v123 = *(a2 + 96);
  }

  if (*(*(v120 + 32) + 276))
  {
    goto LABEL_276;
  }

  OrphanedClientSet = _Querier_GetOrphanedClientSet(v121 == &_mdns_querier_kind);
  if (OrphanedClientSet)
  {
    v125 = OrphanedClientSet;
    Count = CFSetGetCount(OrphanedClientSet);
    v120 = *(a2 + 96);
    if (Count <= 9)
    {
      CFSetAddValue(v125, v120);
      v127 = *(v44 + 434);
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v128 = v127 == mDNSLogCategory_State;
      }

      else
      {
        v128 = 1;
      }

      v129 = v128;
      if (v121 != &_mdns_querier_kind)
      {
        if (v129)
        {
          if (os_log_type_enabled(*(v44 + 434), OS_LOG_TYPE_DEFAULT))
          {
            v130 = *(v123 + 128);
            *buf = 134217984;
            *v150 = v130;
LABEL_308:
            _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "[Sub%llu] Keeping orphaned subscriber for up to 30 seconds", buf, 0xCu);
          }
        }

        else
        {
          v127 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            v142 = *(v123 + 128);
            *buf = 134217984;
            *v150 = v142;
            goto LABEL_308;
          }
        }

        v143 = 30000;
        goto LABEL_314;
      }

      if (v129)
      {
        if (os_log_type_enabled(*(v44 + 434), OS_LOG_TYPE_DEFAULT))
        {
          v141 = *(v122 + 232);
          *buf = 67109120;
          *v150 = v141;
LABEL_312:
          _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "[Q%u] Keeping orphaned querier for up to 5 seconds", buf, 8u);
        }
      }

      else
      {
        v127 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          v144 = *(v122 + 232);
          *buf = 67109120;
          *v150 = v144;
          goto LABEL_312;
        }
      }

      v143 = 5000;
LABEL_314:
      mdns_client_set_time_limit_ms(*(a2 + 96), v143);
      v131 = *(a2 + 96);
      if (!v131)
      {
        goto LABEL_278;
      }

      goto LABEL_277;
    }
  }

  else
  {
    v120 = *(a2 + 96);
  }

  if (v120)
  {
LABEL_276:
    mdns_client_invalidate(v120);
    v131 = *(a2 + 96);
LABEL_277:
    os_release(v131);
    *(a2 + 96) = 0;
  }

LABEL_278:
  v132 = *(a2 + 80);
  if (v132)
  {
    os_release(v132);
    *(a2 + 80) = 0;
  }

  if (DPCFeatureEnabled_sOnce != -1)
  {
    dispatch_once(&DPCFeatureEnabled_sOnce, &__block_literal_global_3326);
  }

  if (DPCFeatureEnabled_sEnabled)
  {
    v133 = *(a2 + 192);
    if (v133)
    {
      mdns_cfset_enumerate(v133, &__block_literal_global_33);
      CFSetRemoveAllValues(*(a2 + 192));
      v134 = *(a2 + 192);
      if (v134)
      {
        CFRelease(v134);
        *(a2 + 192) = 0;
      }
    }
  }

  *(a2 + 268) = 0;
  *(a2 + 260) = 0;
  v135 = *(a2 + 673);
  if (v135 > 4)
  {
    if (v135 - 5 >= 4)
    {
      LogMsgWithLevel(*(v44 + 434), OS_LOG_TYPE_DEFAULT, "DNS64ResetState: unrecognized DNS64 state %d", *(a2 + 673));
    }
  }

  else if (*(a2 + 673) > 2u)
  {
    *(a2 + 342) = 28;
  }

  else if (*(a2 + 673))
  {
    if (v135 != 1)
    {
      *(a2 + 342) = 12;
    }

    *v18 = *(a2 + 674);
    *(a2 + 383) = *(a2 + 681);
    *(a2 + 200) = DomainNameHashValue(a2 + 376);
  }

  *(a2 + 673) = 0;
  if (DNSQuestionNeedsSensitiveLogging(a2))
  {
    mDNSDisableSensitiveLoggingForQuestion(bswap32(*(a2 + 340)) >> 16);
  }

  v136 = *(a1 + 48);
  v137 = *(a1 + 52) + 1;
  *(a1 + 52) = v137;
  mDNS_VerifyLockState("Drop Lock", 0, v136, v137, "mDNS_StopQuery_internal", 15981);
  v138 = *(a2 + 144);
  if (v138)
  {
    ref_count_obj_release(v138);
    *(a2 + 144) = 0;
  }

  mDNS_VerifyLockState("Reclaim Lock", 0, *(a1 + 48), *(a1 + 52), "mDNS_StopQuery_internal", 15983);
  --*(a1 + 52);
  v139 = *(a2 + 56);
  if (!v139)
  {
    return 0;
  }

  free(v139);
  v32 = 0;
  *(a2 + 56) = 0;
  return v32;
}

unsigned __int8 *putQuestion(unint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 *a4, __int16 a5, __int16 a6)
{
  result = putDomainNameAsLabels(a1, a2, a3, a4);
  if (result)
  {
    v11 = result;
    result += 4;
    if (result >= a3)
    {
      return 0;
    }

    else
    {
      *v11 = HIBYTE(a5);
      v11[1] = a5;
      v11[2] = HIBYTE(a6);
      v11[3] = a6;
      ++*(a1 + 4);
    }
  }

  return result;
}

unsigned __int8 *putDomainNameAsLabels(unint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 *a4)
{
  if (a2)
  {
    v4 = *a4;
    if (*a4)
    {
      v6 = a4;
      v7 = a2;
      while (1)
      {
        if (v4 >= 0x40)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Malformed domain name %##s (label more than 63 bytes)", a4);
          return 0;
        }

        if (&v6[v4 + 1] >= a4 + 256)
        {
          break;
        }

        if (a1)
        {
          v8 = &a2[-v4];
LABEL_8:
          while ((v8 - 1) >= a1)
          {
            v9 = v8--;
            if (*(v9 - 1) == v4 && *v9 == v6[1] && &v8[v4] < a2)
            {
              LODWORD(v11) = v4;
              v12 = v8;
              v13 = v6;
LABEL_15:
              v14 = v11 + 1;
              v15 = v12;
              v16 = v13;
              v17 = v14;
              while (1)
              {
                v19 = *v15++;
                v18 = v19;
                v20 = *v16++;
                if (v18 != v20)
                {
                  break;
                }

                if (!--v17)
                {
                  v12 += v14;
                  v13 += v14;
                  v11 = *v13;
                  v21 = *v12;
                  if (!*v13)
                  {
                    if (*v12)
                    {
                      goto LABEL_8;
                    }

                    if ((v7 + 2) <= a3)
                    {
                      v25 = v8 - a1;
                      *v7 = HIBYTE(v25) | 0xC0;
                      v7[1] = v25;
                      return v7 + 2;
                    }

                    return 0;
                  }

                  if (v21 < 0x40 || v21 >= 0xC0 && v12 + 1 < a2 && (v22 = (a1 + ((v21 & 0x3F) << 8) + v12[1]), v12 >= v22) && (v12 = v22, *v22 <= 0x3Fu))
                  {
                    if (&v12[v11] < a2)
                    {
                      goto LABEL_15;
                    }
                  }

                  goto LABEL_8;
                }
              }
            }
          }
        }

        if (&v7[v4 + 1] >= a3)
        {
          return 0;
        }

        *v7++ = v4;
        ++v6;
        do
        {
          v23 = *v6++;
          *v7++ = v23;
          --v4;
        }

        while (v4);
        v4 = *v6;
        if (!*v6)
        {
          goto LABEL_35;
        }
      }

      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Malformed domain name %##s (more than 256 bytes)", a4);
    }

    else
    {
      v7 = a2;
      if (a2 < a3)
      {
LABEL_35:
        *v7 = 0;
        return v7 + 1;
      }
    }
  }

  else
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "putDomainNameAsLabels %##s ptr is null", a4);
  }

  return 0;
}

unsigned __int8 *PutResourceRecordTTLWithLimit(unint64_t a1, unsigned __int8 *a2, _WORD *a3, uint64_t a4, int a5, unint64_t a6)
{
  v10 = a2;
  if (*a1 && (*(a1 + 2) & 0x78) == 0x28 && *(a4 + 4) == 33)
  {
    v11 = 0;
  }

  else
  {
    v11 = a1;
  }

  if (*a4)
  {
    if (!a2)
    {
      v26 = mDNSLogCategory_Default;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v27 = mDNSLogCategory_Default == mDNSLogCategory_State;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        v28 = *(a4 + 32);
        if (v28)
        {
          v29 = *(a4 + 32);
          while (1)
          {
            if (!v29 || (v30 = *v29, v30 > 0x3F))
            {
LABEL_48:
              v31 = 257;
              goto LABEL_125;
            }

            if (!*v29)
            {
              break;
            }

            v29 += v30 + 1;
            if (&v29[-v28] >= 256)
            {
              goto LABEL_48;
            }
          }

          v31 = (v29 - v28 + 1);
        }

        else
        {
          v31 = 0;
        }
      }

      else
      {
        v26 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        v28 = *(a4 + 32);
        if (v28)
        {
          v38 = *(a4 + 32);
          while (1)
          {
            if (!v38 || (v39 = *v38, v39 > 0x3F))
            {
LABEL_72:
              v31 = 257;
              goto LABEL_125;
            }

            if (!*v38)
            {
              break;
            }

            v38 += v39 + 1;
            if (&v38[-v28] >= 256)
            {
              goto LABEL_72;
            }
          }

          v31 = (v38 - v28 + 1);
        }

        else
        {
          v31 = 0;
        }
      }

LABEL_125:
      v59 = DNSTypeName(*(a4 + 4));
      v63 = 141558787;
      v64 = 1752392040;
      v65 = 1040;
      v66 = v31;
      v67 = 2101;
      v68 = v28;
      v69 = 2082;
      v70 = v59;
      v55 = "Pointer to message is NULL while filling resource record %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)";
      v56 = v26;
      v57 = OS_LOG_TYPE_ERROR;
      v58 = 38;
      goto LABEL_126;
    }

    v12 = putDomainNameAsLabels(a1, a2, a6, *(a4 + 32));
    v13 = v12;
    if (v12 && (v12 + 10) < a6)
    {
      *v12 = *(a4 + 5);
      v12[1] = *(a4 + 4);
      v12[2] = *(a4 + 7);
      v12[3] = *(a4 + 6);
      v12[4] = HIBYTE(a5);
      v12[5] = BYTE2(a5);
      v12[6] = BYTE1(a5);
      v12[7] = a5;
      v14 = putRData(v11, v12 + 10, a6, a4);
      if (v14)
      {
        v10 = v14;
        *(v13 + 4) = bswap32(v14 - v13 - 10) >> 16;
        if (a3)
        {
          ++*a3;
          return v10;
        }

        v15 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
          {
            return v10;
          }

          v44 = *(a4 + 32);
          if (v44)
          {
            v52 = *(a4 + 32);
            while (1)
            {
              if (!v52 || (v53 = *v52, v53 > 0x3F))
              {
LABEL_118:
                v47 = 257;
                goto LABEL_137;
              }

              if (!*v52)
              {
                break;
              }

              v52 += v53 + 1;
              if (&v52[-v44] >= 256)
              {
                goto LABEL_118;
              }
            }

            v47 = (v52 - v44 + 1);
          }

          else
          {
            v47 = 0;
          }
        }

        else
        {
          v15 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
          {
            return v10;
          }

          v44 = *(a4 + 32);
          if (v44)
          {
            v45 = *(a4 + 32);
            while (1)
            {
              if (!v45 || (v46 = *v45, v46 > 0x3F))
              {
LABEL_94:
                v47 = 257;
                goto LABEL_137;
              }

              if (!*v45)
              {
                break;
              }

              v45 += v46 + 1;
              if (&v45[-v44] >= 256)
              {
                goto LABEL_94;
              }
            }

            v47 = (v45 - v44 + 1);
          }

          else
          {
            v47 = 0;
          }
        }

LABEL_137:
        v62 = DNSTypeName(*(a4 + 4));
        v63 = 141558787;
        v64 = 1752392040;
        v65 = 1040;
        v66 = v47;
        v67 = 2101;
        v68 = v44;
        v69 = 2082;
        v70 = v62;
        v51 = "No target count to update for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)";
LABEL_110:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v51, &v63, 0x26u);
        return v10;
      }

      v21 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
        {
          v40 = *(a4 + 32);
          if (v40)
          {
            v48 = *(a4 + 32);
            while (1)
            {
              if (!v48 || (v49 = *v48, v49 > 0x3F))
              {
LABEL_104:
                v43 = 257;
                goto LABEL_134;
              }

              if (!*v48)
              {
                break;
              }

              v48 += v49 + 1;
              if (&v48[-v40] >= 256)
              {
                goto LABEL_104;
              }
            }

            v43 = (v48 - v40 + 1);
          }

          else
          {
            v43 = 0;
          }

          goto LABEL_134;
        }
      }

      else
      {
        v21 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
        {
          v40 = *(a4 + 32);
          if (v40)
          {
            v41 = *(a4 + 32);
            while (1)
            {
              if (!v41 || (v42 = *v41, v42 > 0x3F))
              {
LABEL_82:
                v43 = 257;
                goto LABEL_134;
              }

              if (!*v41)
              {
                break;
              }

              v41 += v42 + 1;
              if (&v41[-v40] >= 256)
              {
                goto LABEL_82;
              }
            }

            v43 = (v41 - v40 + 1);
          }

          else
          {
            v43 = 0;
          }

LABEL_134:
          v61 = DNSTypeName(*(a4 + 4));
          v63 = 141559043;
          v64 = 1752392040;
          v65 = 1040;
          v66 = v43;
          v67 = 2101;
          v68 = v40;
          v69 = 2082;
          v70 = v61;
          v71 = 2048;
          v72 = a6 - v13 - 10;
          v55 = "Can't put more rdata into current message, will possibly put it into the next message - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s), remaining space: %ld";
          goto LABEL_122;
        }
      }

      return 0;
    }

    v21 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
      {
        return 0;
      }

      v22 = *(a4 + 32);
      if (v22)
      {
        v35 = *(a4 + 32);
        while (1)
        {
          if (!v35 || (v36 = *v35, v36 > 0x3F))
          {
LABEL_64:
            v25 = 257;
            goto LABEL_121;
          }

          if (!*v35)
          {
            break;
          }

          v35 += v36 + 1;
          if (&v35[-v22] >= 256)
          {
            goto LABEL_64;
          }
        }

        v25 = (v35 - v22 + 1);
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v21 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
      {
        return 0;
      }

      v22 = *(a4 + 32);
      if (v22)
      {
        v23 = *(a4 + 32);
        while (1)
        {
          if (!v23 || (v24 = *v23, v24 > 0x3F))
          {
LABEL_35:
            v25 = 257;
            goto LABEL_121;
          }

          if (!*v23)
          {
            break;
          }

          v23 += v24 + 1;
          if (&v23[-v22] >= 256)
          {
            goto LABEL_35;
          }
        }

        v25 = (v23 - v22 + 1);
      }

      else
      {
        v25 = 0;
      }
    }

LABEL_121:
    v54 = DNSTypeName(*(a4 + 4));
    v63 = 141559043;
    v64 = 1752392040;
    v65 = 1040;
    v66 = v25;
    v67 = 2101;
    v68 = v22;
    v69 = 2082;
    v70 = v54;
    v71 = 2048;
    v72 = a6 - v13;
    v55 = "Can't put more names into current message, will possibly put it into the next message - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s), remaining space: %ld";
LABEL_122:
    v56 = v21;
    v57 = OS_LOG_TYPE_DEBUG;
    v58 = 48;
LABEL_126:
    _os_log_impl(&_mh_execute_header, v56, v57, v55, &v63, v58);
    return 0;
  }

  v15 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v16 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
    {
      return v10;
    }

    v17 = *(a4 + 32);
    if (v17)
    {
      v18 = *(a4 + 32);
      while (1)
      {
        if (!v18 || (v19 = *v18, v19 > 0x3F))
        {
LABEL_25:
          v20 = 257;
          goto LABEL_109;
        }

        if (!*v18)
        {
          break;
        }

        v18 += v19 + 1;
        if (&v18[-v17] >= 256)
        {
          goto LABEL_25;
        }
      }

      v20 = (v18 - v17 + 1);
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_109;
  }

  v15 = mDNSLogCategory_Default_redacted;
  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
  {
    v17 = *(a4 + 32);
    if (v17)
    {
      v33 = *(a4 + 32);
      while (1)
      {
        if (!v33 || (v34 = *v33, v34 > 0x3F))
        {
LABEL_56:
          v20 = 257;
          goto LABEL_109;
        }

        if (!*v33)
        {
          break;
        }

        v33 += v34 + 1;
        if (&v33[-v17] >= 256)
        {
          goto LABEL_56;
        }
      }

      v20 = (v33 - v17 + 1);
    }

    else
    {
      v20 = 0;
    }

LABEL_109:
    v50 = DNSTypeName(*(a4 + 4));
    v63 = 141558787;
    v64 = 1752392040;
    v65 = 1040;
    v66 = v20;
    v67 = 2101;
    v68 = v17;
    v69 = 2082;
    v70 = v50;
    v51 = "Attempt to put kDNSRecordTypeUnregistered %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)";
    goto LABEL_110;
  }

  return v10;
}

char *putRData(unint64_t a1, char *__dst, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = __dst;
  v7 = *(a4 + 40);
  v8 = (v7 + 4);
  v9 = a1;
  switch(*(a4 + 4))
  {
    case 1:
      v11 = 0;
      if ((__dst + 4) <= a3 && *(a4 + 12) == 4)
      {
        *__dst = *(v7 + 4);
        __dst[1] = *(v7 + 5);
        __dst[2] = *(v7 + 6);
        __dst[3] = *(v7 + 7);
        return __dst + 4;
      }

      return v11;
    case 2:
    case 5:
    case 0xC:
    case 0x27:
      v12 = (v7 + 4);
      goto LABEL_87;
    case 3:
    case 4:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xD:
    case 0xE:
    case 0x10:
    case 0x13:
    case 0x14:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1B:
    case 0x1D:
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x22:
    case 0x23:
    case 0x25:
    case 0x26:
    case 0x28:
    case 0x2A:
    case 0x2B:
    case 0x2C:
    case 0x2D:
    case 0x2E:
    case 0x30:
    case 0x31:
      goto LABEL_2;
    case 6:
      v29 = putDomainNameAsLabels(a1, __dst, a3, (v7 + 4));
      if (!v29)
      {
        return 0;
      }

      v30 = putDomainNameAsLabels(v9, v29, v5, (v7 + 260));
      v11 = (v30 + 20);
      if (!v30 || v11 > v5)
      {
        return 0;
      }

      *v30 = bswap32(*(v7 + 516));
      *(v30 + 1) = bswap32(*(v7 + 520));
      *(v30 + 2) = bswap32(*(v7 + 524));
      *(v30 + 3) = bswap32(*(v7 + 528));
      *(v30 + 4) = bswap32(*(v7 + 532));
      return v11;
    case 0xF:
    case 0x12:
    case 0x15:
    case 0x24:
      if ((__dst + 3) > a3)
      {
        return 0;
      }

      *__dst = bswap32(*(v7 + 4)) >> 16;
      v12 = (v7 + 6);
      __dst += 2;
      goto LABEL_86;
    case 0x11:
      v35 = putDomainNameAsLabels(a1, __dst, a3, (v7 + 4));
      if (!v35)
      {
        return 0;
      }

      __dst = v35;
      v12 = (v7 + 260);
      goto LABEL_85;
    case 0x1A:
      if ((__dst + 5) > a3)
      {
        return 0;
      }

      *__dst = bswap32(*(v7 + 4)) >> 16;
      v13 = putDomainNameAsLabels(a1, __dst + 2, a3, (v7 + 6));
      if (!v13)
      {
        return 0;
      }

      __dst = v13;
      v12 = (v7 + 262);
      goto LABEL_85;
    case 0x1C:
      if (*(a4 + 12) != 16)
      {
        return 0;
      }

      v11 = __dst + 16;
      if ((__dst + 16) > a3)
      {
        return 0;
      }

      *__dst = *v8;
      return v11;
    case 0x21:
      if ((__dst + 7) > a3)
      {
        return 0;
      }

      *__dst = *(v7 + 5);
      __dst[1] = *(v7 + 4);
      __dst[2] = *(v7 + 7);
      __dst[3] = *(v7 + 6);
      __dst[4] = *(v7 + 8);
      __dst[5] = *(v7 + 9);
      __dst += 6;
      v12 = (v7 + 10);
LABEL_85:
      a1 = v9;
LABEL_86:
      a3 = v5;
LABEL_87:

      return putDomainNameAsLabels(a1, __dst, a3, v12);
    case 0x29:
      v14 = *(a4 + 12);
      v15 = (v8 + v14);
      if (v8 >= (v8 + v14))
      {
        v11 = __dst;
        if (__dst <= a3)
        {
          return v11;
        }

        goto LABEL_94;
      }

      v16 = 0;
      v17 = (v7 + 20);
      while (1)
      {
        v18 = *(v17 - 8);
        if (v18 <= 3)
        {
          if (v18 == 1)
          {
            v19 = 22;
          }

          else
          {
            if (v18 != 2)
            {
              goto LABEL_29;
            }

            v19 = 8;
          }
        }

        else
        {
          switch(v18)
          {
            case 0xFDEAu:
              v19 = 14;
              break;
            case 0xFDE9u:
              v19 = 9;
              break;
            case 4u:
              if (*(v17 - 5) == *(v17 - 2) && *(v17 - 4) == *(v17 - 1))
              {
                if (*(v17 - 3) == *v17)
                {
                  v19 = 12;
                }

                else
                {
                  v19 = 18;
                }
              }

              else
              {
                v19 = 18;
              }

              break;
            default:
LABEL_29:
              v19 = 0x10000;
              break;
          }
        }

        v16 += v19;
        v20 = v17 + 4;
        v17 += 12;
        if (v20 >= v15)
        {
          if (&__dst[v16] <= a3)
          {
            for (i = (v7 + 12); ; i += 12)
            {
              v22 = *(i - 4);
              if (v22 <= 3)
              {
                if (v22 == 1)
                {
                  v23 = 22;
                }

                else
                {
                  if (v22 != 2)
                  {
                    goto LABEL_49;
                  }

                  v23 = 8;
                }
              }

              else
              {
                switch(v22)
                {
                  case 0xFDEAu:
                    v23 = 14;
                    break;
                  case 0xFDE9u:
                    v23 = 9;
                    break;
                  case 4u:
                    if (*(i - 1) == i[2] && *i == i[3])
                    {
                      if (i[1] == i[4])
                      {
                        v23 = 12;
                      }

                      else
                      {
                        v23 = 18;
                      }
                    }

                    else
                    {
                      v23 = 18;
                    }

                    break;
                  default:
LABEL_49:
                    v23 = 0x10000;
                    break;
                }
              }

              *v6 = BYTE1(v22);
              v6[1] = v22;
              v6[2] = (v23 - 4) >> 8;
              v6[3] = v23 - 4;
              v11 = v6 + 4;
              v24 = *(i - 4);
              if (v24 <= 3)
              {
                if (v24 == 1)
                {
                  *(v6 + 2) = bswap32(*(i - 2)) >> 16;
                  *(v6 + 3) = bswap32(*(i - 1)) >> 16;
                  *(v6 + 4) = bswap32(*i) >> 16;
                  *(v6 + 10) = *(i + 2);
                  *(v6 + 18) = bswap32(*(i + 3));
                  v11 = v6 + 22;
                }

                else if (v24 == 2)
                {
                  *(v6 + 1) = bswap32(*(i - 1));
                  v11 = v6 + 8;
                }
              }

              else
              {
                switch(v24)
                {
                  case 4u:
                    v6[4] = *(i - 4);
                    v6[5] = *(i - 3);
                    v25 = *(i - 1);
                    *(v6 + 5) = i[1];
                    *(v6 + 6) = v25;
                    v11 = v6 + 12;
                    if (v23 >= 0x12)
                    {
                      v26 = *(i + 1);
                      *(v6 + 8) = i[4];
                      *v11 = v26;
                      v11 = v6 + 18;
                      v27 = v23 - 18;
                      if (v23 != 18)
                      {
                        memcpy(v11, i + 5, v23 - 18);
                        v11 += v27;
                      }
                    }

                    break;
                  case 0xFDE9u:
                    v6[4] = *(i - 4);
                    *(v6 + 5) = bswap32(*i);
                    v11 = v6 + 9;
                    break;
                  case 0xFDEAu:
                    *__tp = 0;
                    *&__tp[8] = 0;
                    clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
                    *(v6 + 1) = bswap32(*__tp - *(i - 1));
                    *(v6 + 2) = bswap32(*i);
                    *(v6 + 6) = bswap32(i[2]) >> 16;
                    v11 = v6 + 14;
                    break;
                }
              }

              v28 = i + 8;
              v6 = v11;
              if (v28 >= v15)
              {
                return v11;
              }
            }
          }

LABEL_94:
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: putOptRData - out of space");
          return 0;
        }
      }

    case 0x2F:
      v32 = (v7 + 4);
      while (1)
      {
        if (!v32 || (v33 = *v32, v33 > 0x3F))
        {
LABEL_77:
          v34 = 257;
          goto LABEL_96;
        }

        if (!*v32)
        {
          break;
        }

        v32 += v33 + 1;
        if (v32 - v8 >= 256)
        {
          goto LABEL_77;
        }
      }

      v34 = v32 - v8 + 1;
LABEL_96:
      v37 = v8 + v34;
      if (RRAssertsExistence(a4, 0x2Fu))
      {
        v10 = *(a4 + 12);
        v38 = v10 - v34;
        if (v10 == v34)
        {
LABEL_102:
          if (&v6[v10] <= v5)
          {
LABEL_3:
            memcpy(v6, v8, v10);
            return &v6[*(a4 + 12)];
          }

          v41 = mDNSLogCategory_Default;
          v42 = *(a4 + 32);
          v43 = DNSTypeName(*(a4 + 4));
          LogMsgWithLevel(v41, OS_LOG_TYPE_DEFAULT, "putRData: NSEC rdlength beyond limit %##s (%s), ptr %p, rdlength %d, limit %p", v42, v43, v6, *(a4 + 12), v5);
        }

        else
        {
          while (1)
          {
            v39 = v38 - 2;
            if (v38 <= 2)
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "putRData: invalid length %d");
              return 0;
            }

            v40 = v37[1];
            if (v39 < v40 || (v40 - 33) <= 0xFFFFFFDF)
            {
              break;
            }

            v37 += v40 + 2;
            v38 = v39 - v40;
            if (!v38)
            {
              goto LABEL_102;
            }
          }

          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "putRData: invalid window length %d");
        }

        return 0;
      }

      v46 = v37[1];
      v45 = v37 + 1;
      v44 = v46;
      if (v46)
      {
        while (!v45[v44])
        {
          v47 = __OFSUB__(v44--, 1);
          if (((v44 & 0x80000000) != 0) ^ v47 | (v44 == 0))
          {
            v44 = 0;
            break;
          }
        }
      }

      v48 = putDomainNameAsLabels(v9, v6, v5, *(a4 + 32));
      v11 = v48;
      if (!v44 || !v48)
      {
        goto LABEL_114;
      }

      if (&v48[v44 + 2] <= v5)
      {
        v49 = v45 + 1;
        v50 = v44;
        *v48 = 0;
        v48[1] = v44;
        v11 = (v48 + 2);
        do
        {
          v51 = *v49++;
          *v11++ = v51;
          --v50;
        }

        while (v50);
LABEL_114:
        if (v11)
        {
          return v11;
        }
      }

      v52 = mDNSLogCategory_mDNS;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v53 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
      }

      else
      {
        v53 = 1;
      }

      if (v53)
      {
        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEBUG))
        {
          return 0;
        }

        v54 = *(a4 + 32);
        if (v54)
        {
          v55 = *(a4 + 32);
          while (1)
          {
            if (!v55 || (v56 = *v55, v56 > 0x3F))
            {
LABEL_127:
              v57 = 257;
              goto LABEL_144;
            }

            if (!*v55)
            {
              break;
            }

            v55 += v56 + 1;
            if (&v55[-v54] >= 256)
            {
              goto LABEL_127;
            }
          }

          v57 = (v55 - v54 + 1);
        }

        else
        {
          v57 = 0;
        }

        goto LABEL_144;
      }

      v52 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEBUG))
      {
        v54 = *(a4 + 32);
        if (v54)
        {
          v59 = *(a4 + 32);
          while (1)
          {
            if (!v59 || (v60 = *v59, v60 > 0x3F))
            {
LABEL_139:
              v57 = 257;
              goto LABEL_144;
            }

            if (!*v59)
            {
              break;
            }

            v59 += v60 + 1;
            if (&v59[-v54] >= 256)
            {
              goto LABEL_139;
            }
          }

          v57 = (v59 - v54 + 1);
        }

        else
        {
          v57 = 0;
        }

LABEL_144:
        *__tp = 134218755;
        *&__tp[4] = v5 - v6;
        *&__tp[12] = 2160;
        *&__tp[14] = 1752392040;
        v62 = 1040;
        v63 = v57;
        v64 = 2101;
        v65 = v54;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "The mDNS message does not have enough space for the NSEC record, will add it to the next message (This is not an error message) -- remaining space: %ld, NSEC name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", __tp, 0x26u);
      }

      return 0;
    default:
      if (*(a4 + 4) == 65323)
      {
        *__tp = 0;
        *&__tp[8] = 0;
        clock_gettime(_CLOCK_MONOTONIC_RAW, __tp);
        *v6 = bswap32(*__tp - *v8);
        return v6 + 4;
      }

LABEL_2:
      v10 = *(a4 + 12);
      if (&__dst[v10] > v5)
      {
        return 0;
      }

      goto LABEL_3;
  }
}

_WORD *mDNSSendDNSMessage(uint64_t a1, _WORD *a2, unsigned __int8 *a3, uint64_t a4, unsigned __int16 *a5, unsigned __int16 *a6, unsigned int *a7, unsigned __int16 a8, _DWORD *a9, unsigned __int8 a10)
{
  v12 = a5;
  v14 = a3;
  v17 = a2[5];
  if (*a2)
  {
    ++*(a1 + 168);
  }

  else
  {
    ++*(a1 + 172);
  }

  v18 = a2 + 6;
  v19 = a3 - (a2 + 6);
  if (a3 < a2 + 12 || v19 >= 8941)
  {
    v23 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v24 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      v25 = 4294901756;
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        return v25;
      }
    }

    else
    {
      v23 = mDNSLogCategory_Default_redacted;
      v26 = os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT);
      v25 = 4294901756;
      if (!v26)
      {
        return v25;
      }
    }

    *buf = 134218496;
    v70 = v18;
    *v71 = 2048;
    *&v71[2] = v14;
    v72 = 2048;
    v73 = v19;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "mDNSSendDNSMessage: invalid message %p %p %ld", buf, 0x20u);
    return v25;
  }

  v61 = v17;
  a2[2] = bswap32(a2[2]) >> 16;
  a2[3] = bswap32(a2[3]) >> 16;
  a2[4] = bswap32(a2[4]) >> 16;
  v20 = bswap32(a2[5]) >> 16;
  a2[5] = v20;
  v62 = a6;
  if (a9)
  {
    v64 = __rev16(v20);
    v21 = a9[196] - 1;
    if (v21 > 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = dword_10010D58C[v21];
    }

    bzero(buf, 0x498uLL);
    v67 = 0;
    v66 = 0;
    memset(macOut, 0, sizeof(macOut));
    memset(&ctx, 0, sizeof(ctx));
    CCHmacInit(&ctx, v22, a9 + 198, a9[197]);
    CCHmacUpdate(&ctx, a2, v14 - a2);
    BYTE4(v70) = 32;
    v74 = 0;
    v75 = v109;
    *v71 = 0x1194000100FALL;
    v110 = 264;
    v77 = 0;
    v76 = &v110;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0;
    v90 = v109;
    v105 = 0;
    v106 = 0;
    v108 = 0;
    v107 = 0u;
    v104 = 0;
    v109[0] = 0;
    v27 = a9 + 67;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    memset(v103, 0, sizeof(v103));
    v28 = a9 + 67;
    do
    {
      if (!v28)
      {
        break;
      }

      v29 = *v28;
      if (v29 > 0x3F)
      {
        break;
      }

      if (!*v28)
      {
        v30 = v28 - v27 + 1;
        if (v30 <= 0x100u)
        {
          memcpy(v109, a9 + 67, v30);
        }

        break;
      }

      v28 += v29 + 1;
    }

    while (v28 - v27 <= 255);
    v31 = 257;
    v32 = a9 + 67;
    v12 = a5;
    do
    {
      if (!v32)
      {
        break;
      }

      v33 = *v32;
      if (v33 > 0x3F)
      {
        break;
      }

      if (!*v32)
      {
        v31 = (v32 - v27 + 1);
        break;
      }

      v32 += v33 + 1;
    }

    while (v32 - v27 < 256);
    CCHmacUpdate(&ctx, a9 + 67, v31);
    *&v71[2] = 255;
    data = -256;
    CCHmacUpdate(&ctx, &data, 2uLL);
    *&v71[4] = 0;
    CCHmacUpdate(&ctx, &v71[4], 4uLL);
    if (v21 > 5)
    {
      v34 = "\fhmac-invalid";
    }

    else
    {
      v34 = off_100150130[v21];
    }

    v35 = v34;
    do
    {
      if (!v35)
      {
        break;
      }

      v36 = *v35;
      if (v36 > 0x3F)
      {
        break;
      }

      if (!*v35)
      {
        v37 = v35 - v34 + 1;
        if (v37 <= 0x100u)
        {
          memcpy(v76 + 2, v34, v37);
          goto LABEL_46;
        }

        break;
      }

      v35 += v36 + 1;
    }

    while (v35 - v34 <= 255);
    *(v76 + 4) = 0;
LABEL_46:
    v38 = 257;
    v39 = v34;
    v60 = a8;
    while (1)
    {
      if (!v39 || (v40 = *v39, v40 > 0x3F))
      {
LABEL_51:
        v41 = a7;
        goto LABEL_53;
      }

      if (!*v39)
      {
        break;
      }

      v39 += v40 + 1;
      if (v39 - v34 >= 256)
      {
        goto LABEL_51;
      }
    }

    v41 = a7;
    v38 = (v39 - v34 + 1);
LABEL_53:
    v42 = v76 + v38 + 4;
    CCHmacUpdate(&ctx, v34, v38);
    v43 = time(0);
    if (v43 == -1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: DNSDigest_SignMessage - mDNSPlatformUTC returned bad time -1");
    }

    LOWORD(v66) = 0;
    BYTE2(v66) = HIBYTE(v43);
    HIBYTE(v66) = BYTE2(v43);
    LOBYTE(v67) = BYTE1(v43);
    HIBYTE(v67) = v43;
    v44 = v66;
    *(v42 + 4) = v67;
    *v42 = v44;
    CCHmacUpdate(&ctx, &v66, 6uLL);
    *(v42 + 6) = 11265;
    CCHmacUpdate(&ctx, (v42 + 6), 2uLL);
    data = 0;
    CCHmacUpdate(&ctx, &data, 2uLL);
    data = 0;
    CCHmacUpdate(&ctx, &data, 2uLL);
    CCHmacFinal(&ctx, macOut);
    v45 = 0;
    if (v21 <= 5)
    {
      v45 = word_10010D580[v21];
    }

    *(v42 + 8) = __rev16(v45);
    memcpy((v42 + 10), macOut, v45);
    v46 = v42 + 10 + v45;
    *v46 = *a2;
    *(v46 + 1) = *(a2 + 1);
    *(v46 + 2) = 0;
    *&v71[8] = v46 - v76 + 2;
    v14 = PutResourceRecordTTLWithLimit(a2, v14, &v64, &v70 + 4, 0, (a2 + 4476));
    if (v14)
    {
      a2[5] = bswap32(v64) >> 16;
    }

    else
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: DNSDigest_SignMessage - could not put TSIG");
    }

    a7 = v41;
    a8 = v60;
    a6 = v62;
  }

  if (!v14)
  {
    v53 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      v25 = 4294901757;
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_81;
      }

      *buf = 0;
    }

    else
    {
      v53 = mDNSLogCategory_Default_redacted;
      v25 = 4294901757;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
LABEL_81:
        a2[2] = bswap32(a2[2]) >> 16;
        a2[3] = bswap32(a2[3]) >> 16;
        a2[4] = bswap32(a2[4]) >> 16;
        a2[5] = bswap32(a2[5]) >> 16;
        if (v62)
        {
          v56 = *v62;
        }

        else
        {
          v56 = 59668;
        }

        if (v12)
        {
          if (*(v12 + 1))
          {
            v57 = "TLS";
          }

          else
          {
            v57 = "TCP";
          }

          v56 = *v12;
        }

        else
        {
          v57 = "UDP";
        }

        DumpPacket(v25, 1, v57, 0, v56, a7, a8, a2, v14, a4);
        a2[5] = v61;
        return v25;
      }

      *buf = 0;
    }

    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "mDNSSendDNSMessage: DNSDigest_SignMessage failed", buf, 2u);
    goto LABEL_81;
  }

  if (!v12)
  {
    v25 = mDNSPlatformSendUDP(a1, a2, v14, a4, a6, a7, a8, a10);
    goto LABEL_81;
  }

  v58 = a4;
  v47 = a8;
  v48 = a7;
  v49 = (v14 - a2);
  result = malloc_type_malloc((v49 + 2), 0x86C1EF79uLL);
  if (result)
  {
    v51 = result;
    *result = bswap32(v14 - a2) >> 16;
    memcpy(result + 1, a2, (v14 - a2));
    v52 = mDNSPlatformWriteTCP(v12, v51, (v49 + 2));
    if (v52 == v49 + 2)
    {
      v25 = 0;
LABEL_80:
      a7 = v48;
      free(v51);
      a8 = v47;
      a4 = v58;
      goto LABEL_81;
    }

    v54 = v52;
    v25 = 4294901508;
    v55 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }
    }

    else
    {
      v55 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }
    }

    *buf = 134218240;
    v70 = v54;
    *v71 = 1024;
    *&v71[2] = (v14 - a2);
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "mDNSSendDNSMessage: write message failed %ld/%d", buf, 0x12u);
    goto LABEL_80;
  }

  __break(1u);
  return result;
}

uint64_t mDNSPlatformSendUDP(void *a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, unsigned int a7, int a8)
{
  memset(v128, 0, sizeof(v128));
  if (a4)
  {
    v14 = *mDNSStorage[0];
    if (!*mDNSStorage[0])
    {
LABEL_6:
      v15 = mDNSLogCategory_NAT;
      v16 = 4294901756;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v17 = mDNSLogCategory_NAT == mDNSLogCategory_State;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
        {
          return v16;
        }

        *buf = 134217984;
        *v105 = a4;
        v18 = "mDNSPlatformSendUDP: Invalid interface index %p";
      }

      else
      {
        v15 = mDNSLogCategory_NAT_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
        {
          return v16;
        }

        *buf = 134217984;
        *v105 = a4;
        v18 = "mDNSPlatformSendUDP: Invalid interface index %p";
      }

      v22 = v15;
      v23 = OS_LOG_TYPE_DEFAULT;
      v24 = 12;
LABEL_32:
      _os_log_impl(&_mh_execute_header, v22, v23, v18, buf, v24);
      return v16;
    }

    while (!*(v14 + 3768) || *(v14 + 3720) != a4)
    {
      v14 = *(v14 + 3680);
      if (!v14)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  if (a4)
  {
    v19 = (v14 + 3606);
  }

  else
  {
    v19 = "unicast";
  }

  if (*a6 == 6)
  {
    *&v128[0].sa_len = 7708;
    *v128[0].sa_data = a7;
    *&v128[0].sa_data[6] = *(a6 + 1);
    if (v14)
    {
      v25 = *(v14 + 3720);
    }

    else
    {
      v25 = 0;
    }

    *&v128[1].sa_data[6] = v25;
    v103 = a1;
    if (a5)
    {
      v31 = (a5 + 48);
    }

    else
    {
      v31 = (*a1 + 56);
    }

    v28 = *v31;
    if (!v14)
    {
      goto LABEL_84;
    }

    v101 = v19;
    if (!mDNSAddrIsDNSMulticast(a6))
    {
      goto LABEL_79;
    }

    v32 = (v14 + 3720);
    v33 = setsockopt(v28, 41, 9, (v14 + 3720), 4u);
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_79;
    }

    v34 = v33;
    __errnum = *__error();
    *v126 = 0;
    v127 = 0;
    v35 = if_indextoname(*v32, v126);
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v36 = mDNSLogCategory_NAT == mDNSLogCategory_State;
    }

    else
    {
      v36 = 1;
    }

    v37 = v36;
    if (v35)
    {
      if (v37)
      {
        v38 = mDNSLogCategory_NAT;
        if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_67;
        }
      }

      else
      {
        v38 = mDNSLogCategory_NAT_redacted;
        if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_ERROR))
        {
LABEL_67:
          v96 = bswap32(*a2) >> 16;
          *buf = 67109890;
          *v105 = v96;
          *&v105[4] = 1024;
          *&v105[6] = v34;
          *&v105[10] = 1024;
          *&v105[12] = __errnum;
          *&v105[16] = 2082;
          *&v105[18] = strerror(__errnum);
          v44 = "[Q%u] setsockopt - IPV6_MULTICAST_IF error %d errno %d (%{public}s)";
          v45 = v38;
          v46 = 30;
LABEL_78:
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, v44, buf, v46);
        }
      }

LABEL_79:
      if (mDNSAddrIsDNSMulticast(a6))
      {
        goto LABEL_80;
      }

      v19 = v101;
      if (!*(v14 + 3720))
      {
        v74 = mDNSLogCategory_NAT;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_84;
          }
        }

        else
        {
          v74 = mDNSLogCategory_NAT_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_84;
          }
        }

        v77 = bswap32(*a2);
        *buf = 67109634;
        *v105 = HIWORD(v77);
        *&v105[4] = 2048;
        *&v105[6] = v14;
        *&v105[14] = 2082;
        *&v105[16] = v101;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "[Q%u] IPV6_BOUND_IF socket option not set -- info %p (%{public}s) scope_id is zero", buf, 0x1Cu);
LABEL_84:
        if (v28 < 0)
        {
          return 4294901747;
        }

        if (a8)
        {
          *buf = 100;
          setsockopt(v28, 0xFFFF, 4230, buf, 4u);
        }

        v56 = sendto(v28, a2, a3 - a2, 0, v128, v128[0].sa_len);
        v57 = 0;
        if (v56 < 0)
        {
          v57 = *__error();
        }

        if (a8)
        {
          *buf = 900;
          setsockopt(v28, 0xFFFF, 4230, buf, 4u);
        }

        if ((v56 & 0x8000000000000000) == 0)
        {
          return 0;
        }

        v102 = v19;
        v58 = mDNSLogCategory_NAT;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_101;
          }

          v63 = bswap32(*a2) >> 16;
          v64 = *a6;
          v65 = strerror(v57);
          v66 = *(v103 + 16);
          *buf = 67112451;
          *v105 = v63;
          *&v105[4] = 1024;
          *&v105[6] = v28;
          *&v105[10] = 2048;
          *&v105[12] = a4;
          *&v105[20] = 2082;
          *&v105[22] = v102;
          v106 = 1024;
          v107 = v64;
          v108 = 2160;
          *v109 = 1752392040;
          *&v109[8] = 1045;
          *&v109[10] = 20;
          v110 = 2101;
          v111 = a6;
          v112 = 1024;
          v113 = bswap32(a7) >> 16;
          v114 = 1024;
          v115 = v28;
          v116 = 2048;
          v117 = v56;
          v118 = 1024;
          v119 = v57;
          v120 = 2082;
          v121 = v65;
          v122 = 1024;
          v123 = v66;
        }

        else
        {
          v58 = mDNSLogCategory_NAT_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_101;
          }

          v59 = bswap32(*a2) >> 16;
          v60 = *a6;
          v61 = strerror(v57);
          v62 = *(v103 + 16);
          *buf = 67112451;
          *v105 = v59;
          *&v105[4] = 1024;
          *&v105[6] = v28;
          *&v105[10] = 2048;
          *&v105[12] = a4;
          *&v105[20] = 2082;
          *&v105[22] = v102;
          v106 = 1024;
          v107 = v60;
          v108 = 2160;
          *v109 = 1752392040;
          *&v109[8] = 1045;
          *&v109[10] = 20;
          v110 = 2101;
          v111 = a6;
          v112 = 1024;
          v113 = bswap32(a7) >> 16;
          v114 = 1024;
          v115 = v28;
          v116 = 2048;
          v117 = v56;
          v118 = 1024;
          v119 = v57;
          v120 = 2082;
          v121 = v61;
          v122 = 1024;
          v123 = v62;
        }

        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "[Q%u] mDNSPlatformSendUDP -> sendto(%d) failed to send packet on InterfaceID %p %{public}s/%d to %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P:%d skt %d error %ld errno %d (%{public}s) %u", buf, 0x6Eu);
LABEL_101:
        v67 = *a6;
        if (*a6 == 6)
        {
          if (a6[1] != 767 || a6[2] || a6[3])
          {
            goto LABEL_113;
          }

          v68 = a6[4];
          v69 = -83886080;
        }

        else
        {
          if (v67 != 4)
          {
            goto LABEL_113;
          }

          v68 = a6[1];
          v69 = -83885856;
        }

        if (v68 == v69)
        {
          if (v57 != 49)
          {
            if (v57 != 50)
            {
              if (v57 == 65)
              {
                if (mDNSPlatformRawTime() >= 0x2BF20)
                {
                  goto LABEL_136;
                }

                return 4294901734;
              }

LABEL_120:
              v70 = ++mDNSPlatformSendUDP_MessageCount;
              v71 = mDNSLogCategory_Default;
              if (mDNS_SensitiveLoggingEnableCount)
              {
                v72 = mDNSLogCategory_Default == mDNSLogCategory_State;
              }

              else
              {
                v72 = 1;
              }

              v73 = v72;
              if (v70 > 49)
              {
                if (v73)
                {
                  if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                  {
                    return 4294901759;
                  }
                }

                else
                {
                  v71 = mDNSLogCategory_Default_redacted;
                  if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                  {
                    return 4294901759;
                  }
                }

                v89 = bswap32(*a2) >> 16;
                v90 = strerror(v57);
                v91 = *(v103 + 16);
                *buf = 67112707;
                *v105 = v89;
                *&v105[4] = 1024;
                *&v105[6] = v28;
                *&v105[10] = 2048;
                *&v105[12] = a4;
                *&v105[20] = 2082;
                *&v105[22] = v102;
                v106 = 1024;
                v107 = v67;
                v108 = 2160;
                *v109 = 1752392040;
                *&v109[8] = 1045;
                *&v109[10] = 20;
                v110 = 2101;
                v111 = a6;
                v112 = 1024;
                v113 = bswap32(a7) >> 16;
                v114 = 1024;
                v115 = v28;
                v116 = 2048;
                v117 = v56;
                v118 = 1024;
                v119 = v57;
                v120 = 2082;
                v121 = v90;
                v122 = 1024;
                v123 = v91;
                v124 = 1024;
                v125 = mDNSPlatformSendUDP_MessageCount;
                v82 = "[Q%u] mDNSPlatformSendUDP: sendto(%d) failed to send packet on InterfaceID %p %{public}s/%d to %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P:%d skt %d error %ld errno %d (%{public}s) %u MessageCount is %d";
                v83 = v71;
                v84 = OS_LOG_TYPE_DEFAULT;
              }

              else
              {
                if (v73)
                {
                  if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
                  {
                    return 4294901759;
                  }
                }

                else
                {
                  v71 = mDNSLogCategory_Default_redacted;
                  if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
                  {
                    return 4294901759;
                  }
                }

                v86 = bswap32(*a2) >> 16;
                v87 = strerror(v57);
                v88 = *(v103 + 16);
                *buf = 67112707;
                *v105 = v86;
                *&v105[4] = 1024;
                *&v105[6] = v28;
                *&v105[10] = 2048;
                *&v105[12] = a4;
                *&v105[20] = 2082;
                *&v105[22] = v102;
                v106 = 1024;
                v107 = v67;
                v108 = 2160;
                *v109 = 1752392040;
                *&v109[8] = 1045;
                *&v109[10] = 20;
                v110 = 2101;
                v111 = a6;
                v112 = 1024;
                v113 = bswap32(a7) >> 16;
                v114 = 1024;
                v115 = v28;
                v116 = 2048;
                v117 = v56;
                v118 = 1024;
                v119 = v57;
                v120 = 2082;
                v121 = v87;
                v122 = 1024;
                v123 = v88;
                v124 = 1024;
                v125 = mDNSPlatformSendUDP_MessageCount;
                v82 = "[Q%u] mDNSPlatformSendUDP: sendto(%d) failed to send packet on InterfaceID %p %{public}s/%d to %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P:%d skt %d error %ld errno %d (%{public}s) %u MessageCount is %d";
                v83 = v71;
                v84 = OS_LOG_TYPE_ERROR;
              }

              v85 = 116;
              goto LABEL_152;
            }

LABEL_136:
            v75 = mDNSLogCategory_NAT;
            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
            {
              v76 = v102;
              if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_ERROR))
              {
LABEL_146:
                v78 = bswap32(*a2) >> 16;
                v79 = *a6;
                v80 = strerror(v57);
                v81 = *(v103 + 16);
                *buf = 67112451;
                *v105 = v78;
                *&v105[4] = 1024;
                *&v105[6] = v28;
                *&v105[10] = 2048;
                *&v105[12] = a4;
                *&v105[20] = 2082;
                *&v105[22] = v76;
                v106 = 1024;
                v107 = v79;
                v108 = 2160;
                *v109 = 1752392040;
                *&v109[8] = 1045;
                *&v109[10] = 20;
                v110 = 2101;
                v111 = a6;
                v112 = 1024;
                v113 = bswap32(a7) >> 16;
                v114 = 1024;
                v115 = v28;
                v116 = 2048;
                v117 = v56;
                v118 = 1024;
                v119 = v57;
                v120 = 2082;
                v121 = v80;
                v122 = 1024;
                v123 = v81;
                v82 = "[Q%u] mDNSPlatformSendUDP sendto(%d) failed to send packet on InterfaceID %p %{public}s/%d to %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P:%d skt %d error %ld errno %d (%{public}s) %u";
                v83 = v75;
                v84 = OS_LOG_TYPE_ERROR;
                v85 = 110;
LABEL_152:
                _os_log_impl(&_mh_execute_header, v83, v84, v82, buf, v85);
              }
            }

            else
            {
              v75 = mDNSLogCategory_NAT_redacted;
              v76 = v102;
              if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_146;
              }
            }

            return 4294901759;
          }

LABEL_134:
          if (*(v103 + 2))
          {
            return 4294901734;
          }

          goto LABEL_136;
        }

LABEL_113:
        if (v57 > 50)
        {
          v16 = 4294901510;
          switch(v57)
          {
            case '3':
              return v16;
            case '@':
              return 4294901734;
            case 'A':
              return v16;
          }

          goto LABEL_120;
        }

        if (v57 != 49)
        {
          if (v57 == 50)
          {
            return 4294901734;
          }

          goto LABEL_120;
        }

        goto LABEL_134;
      }

      v39 = (v14 + 3720);
      v40 = v28;
      v41 = 41;
      v42 = 125;
LABEL_83:
      setsockopt(v40, v41, v42, v39, 4u);
      goto LABEL_84;
    }

    if (v37)
    {
      v43 = mDNSLogCategory_NAT;
      if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_79;
      }
    }

    else
    {
      v43 = mDNSLogCategory_NAT_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_79;
      }
    }

    v54 = bswap32(*a2);
    v55 = *v32;
    *buf = 67109376;
    *v105 = HIWORD(v54);
    *&v105[4] = 1024;
    *&v105[6] = v55;
    v44 = "[Q%u] setsockopt - IPV6_MUTLICAST_IF scopeid %u, not a valid interface";
    v45 = v43;
    v46 = 14;
    goto LABEL_78;
  }

  if (*a6 == 4)
  {
    *&v128[0].sa_len = 528;
    *v128[0].sa_data = a7;
    *&v128[0].sa_data[2] = a6[1];
    v103 = a1;
    if (a5)
    {
      v20 = (a5 + 16);
    }

    else
    {
      v20 = (*a1 + 24);
    }

    v28 = *v20;
    if (mDNSAddrIsDNSMulticast(a6))
    {
      if (v14 && setsockopt(v28, 0, 66, (v14 + 3720), 4u) < 0)
      {
        v101 = v19;
        if (*__error() != 42)
        {
          v29 = mDNSLogCategory_NAT;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_ERROR))
            {
LABEL_69:
              __errnuma = bswap32(*a2) >> 16;
              v47 = *__error();
              v48 = __error();
              v49 = strerror(*v48);
              *buf = 67109634;
              *v105 = __errnuma;
              *&v105[4] = 1024;
              *&v105[6] = v47;
              *&v105[10] = 2082;
              *&v105[12] = v49;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[Q%u] mDNSPlatformSendUDP: setsockopt: IP_MUTLTICAST_IFINDEX returned %d (%{public}s)", buf, 0x18u);
            }
          }

          else
          {
            v29 = mDNSLogCategory_NAT_redacted;
            if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_69;
            }
          }
        }

        v50 = v14 + 3716;
        v51 = setsockopt(v28, 0, 9, (v14 + 3716), 4u);
        if ((v51 & 0x80000000) == 0 || *(v103 + 2))
        {
          goto LABEL_80;
        }

        v52 = v51;
        v53 = mDNSLogCategory_NAT;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_ERROR))
          {
LABEL_157:
            __errnumb = v53;
            v93 = bswap32(*a2) >> 16;
            v97 = *__error();
            v94 = __error();
            v95 = strerror(*v94);
            *buf = 67110659;
            *v105 = v93;
            *&v105[4] = 2160;
            *&v105[6] = 1752392040;
            *&v105[14] = 1045;
            *&v105[16] = 4;
            *&v105[20] = 2101;
            *&v105[22] = v50;
            v106 = 1024;
            v107 = v52;
            v108 = 1024;
            *v109 = v97;
            *&v109[4] = 2082;
            *&v109[6] = v95;
            _os_log_impl(&_mh_execute_header, __errnumb, OS_LOG_TYPE_ERROR, "[Q%u] setsockopt - IP_MULTICAST_IF error %{sensitive, mask.hash, network:in_addr}.4P %d errno %d (%{public}s)", buf, 0x38u);
          }
        }

        else
        {
          v53 = mDNSLogCategory_NAT_redacted;
          if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_157;
          }
        }

LABEL_80:
        v19 = v101;
        goto LABEL_84;
      }

      goto LABEL_84;
    }

    if (v14)
    {
      v30 = *(v14 + 3720);
    }

    else
    {
      v30 = 0;
    }

    *buf = v30;
    v39 = buf;
    v40 = v28;
    v41 = 0;
    v42 = 25;
    goto LABEL_83;
  }

  v16 = 4294901756;
  v26 = mDNSLogCategory_NAT;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_FAULT))
    {
LABEL_31:
      v27 = bswap32(*a2) >> 16;
      *buf = 67109120;
      *v105 = v27;
      v18 = "[Q%u] mDNSPlatformSendUDP: dst is not an IPv4 or IPv6 address!";
      v22 = v26;
      v23 = OS_LOG_TYPE_FAULT;
      v24 = 8;
      goto LABEL_32;
    }
  }

  else
  {
    v26 = mDNSLogCategory_NAT_redacted;
    if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_31;
    }
  }

  return v16;
}

BOOL mDNSAddrIsDNSMulticast(unsigned int *a1)
{
  v1 = -83886080;
  v2 = *a1;
  if (v2 == 4)
  {
    v1 = -83885856;
  }

  else
  {
    if (v2 != 6 || a1[1] != 767 || a1[2] || a1[3])
    {
      return 0;
    }

    v2 = 16;
  }

  return *(a1 + v2) == v1;
}

void myKQSocketCallBack(uint64_t a1, int a2, unsigned __int16 *a3, int a4)
{
  v7 = *(a3 + 1);
  v78 = 0;
  if (a2 != -1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "myKQSocketCallBack: Why is filter %d not EVFILT_READ (%d)?", a2, -1);
  }

  if (*(a3 + 4) != a1 && *(a3 + 12) != a1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "myKQSocketCallBack: native socket %d", a1);
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "myKQSocketCallBack: sktv4 %d sktv6 %d", *(a3 + 4), *(a3 + 12));
  }

  if (!a4)
  {
    v74 = mDNSPlatformRawTime();
    v9 = 0;
    v75 = (v7 + 2501);
    v10 = 1;
    for (i = a1; ; a1 = i)
    {
      v11 = mDNSPlatformRawTime() - v74;
      if (v11 >= 125 && v9 != 0 || v78 != 0)
      {
        v38 = 0;
        v39 = &unk_100178000;
        goto LABEL_112;
      }

      memset(v77, 0, sizeof(v77));
      memset(v76, 0, 20);
      memset(v84, 0, sizeof(v84));
      *__s2 = 0;
      v83 = 0;
      *v80 = v75;
      v81 = 8952;
      memset(&v79.msg_namelen, 0, 24);
      bzero(buf, 0x400uLL);
      v79.msg_name = v84;
      v79.msg_namelen = 128;
      v79.msg_iov = v80;
      v79.msg_iovlen = 1;
      v79.msg_control = buf;
      *&v79.msg_controllen = 1024;
      v14 = recvmsg(a1, &v79, 0);
      if (v14 < 0)
      {
        v39 = &unk_100178000;
        if (*__error() != 35)
        {
          v40 = myrecvfrom_numLogMessages++;
          if (v40 <= 0x63)
          {
            v41 = mDNSLogCategory_Default;
            v69 = v14;
            v70 = *__error();
            v68 = a1;
            v42 = "mDNSMacOSX.c: recvmsg(%d) returned error %d errno %d";
LABEL_107:
            v44 = v41;
LABEL_110:
            LogMsgWithLevel(v44, OS_LOG_TYPE_DEFAULT, v42, v68, v69, v70, v71, v72);
          }
        }

LABEL_111:
        v38 = *__error();
        v10 = 1;
LABEL_112:
        if (v11 >= 125)
        {
          v46 = *(*v7 + 6);
          v47 = *(*v7 + 14);
          v48 = *(v39 + 434);
          if (mDNS_SensitiveLoggingEnableCount)
          {
            v49 = v48 == mDNSLogCategory_State;
          }

          else
          {
            v49 = 1;
          }

          v50 = v49;
          if (v46 == a1 || v47 == a1)
          {
            if (v50)
            {
              if (!os_log_type_enabled(*(v39 + 434), OS_LOG_TYPE_INFO))
              {
                goto LABEL_140;
              }

              buf[0].fds_bits[0] = 67109632;
              if (v46 == a1)
              {
                v52 = 4;
              }

              else
              {
                v52 = 6;
              }
            }

            else
            {
              v48 = mDNSLogCategory_Default_redacted;
              if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_INFO))
              {
                goto LABEL_140;
              }

              buf[0].fds_bits[0] = 67109632;
              if (v46 == a1)
              {
                v52 = 4;
              }

              else
              {
                v52 = 6;
              }
            }

            buf[0].fds_bits[1] = v9;
            LOWORD(buf[0].fds_bits[2]) = 1024;
            *(&buf[0].fds_bits[2] + 2) = v52;
            HIWORD(buf[0].fds_bits[3]) = 1024;
            buf[0].fds_bits[4] = v11;
            v53 = "WARNING: Processed %d messages from IPv%d mDNS socket in %d ms";
            goto LABEL_139;
          }

          if (v50)
          {
            if (os_log_type_enabled(*(v39 + 434), OS_LOG_TYPE_INFO))
            {
LABEL_138:
              buf[0].fds_bits[0] = 67109632;
              buf[0].fds_bits[1] = v9;
              LOWORD(buf[0].fds_bits[2]) = 1024;
              *(&buf[0].fds_bits[2] + 2) = a1;
              HIWORD(buf[0].fds_bits[3]) = 1024;
              buf[0].fds_bits[4] = v11;
              v53 = "WARNING: Processed %d messages from socket %d in %d ms";
LABEL_139:
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, v53, buf, 0x14u);
            }
          }

          else
          {
            v48 = mDNSLogCategory_Default_redacted;
            if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_INFO))
            {
              goto LABEL_138;
            }
          }
        }

LABEL_140:
        if ((v10 & (v38 == 57)) == 1)
        {
          if (mDNS_LoggingEnabled == 1)
          {
            LogMsgWithLevel(*(v39 + 434), OS_LOG_TYPE_DEFAULT, "myKQSocketCallBack: ENOTCONN, closing socket");
          }

          close(a1);
        }

        else
        {
          if (v9)
          {
            v54 = v38 == 35;
          }

          else
          {
            v54 = 0;
          }

          v55 = !v54;
          if ((v10 & v55) == 1)
          {
            LODWORD(v79.msg_name) = -1;
            *v77 = -1;
            v76[0] = -1;
            *&v84[0].tv_usec = 0;
            memset(buf, 0, 128);
            if (__darwin_check_fd_set_overflow(a1, buf, 0))
            {
              *(buf[0].fds_bits + ((a1 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << a1;
            }

            v84[0].tv_sec = 0;
            v56 = select(a1 + 1, buf, 0, 0, v84);
            v80[0] = 4;
            if (getsockopt(a1, 0xFFFF, 4103, &v79, v80) == -1)
            {
              v57 = *(v39 + 434);
              v58 = __error();
              LogMsgWithLevel(v57, OS_LOG_TYPE_DEFAULT, "myKQSocketCallBack getsockopt(SO_ERROR) error %d", *v58);
            }

            v80[0] = 4;
            if (getsockopt(a1, 0xFFFF, 4128, v77, v80) == -1)
            {
              v59 = *(v39 + 434);
              v60 = __error();
              LogMsgWithLevel(v59, OS_LOG_TYPE_DEFAULT, "myKQSocketCallBack getsockopt(SO_NREAD) error %d", *v60);
            }

            if (ioctl(a1, 0x4004667FuLL, v76) == -1)
            {
              v61 = *(v39 + 434);
              v62 = __error();
              LogMsgWithLevel(v61, OS_LOG_TYPE_DEFAULT, "myKQSocketCallBack ioctl(FIONREAD) error %d", *v62);
            }

            v63 = myKQSocketCallBack_numLogMessages;
            v64 = ++myKQSocketCallBack_numLogMessages;
            if (v63 <= 0x63)
            {
              v65 = *(v39 + 434);
              v66 = strerror(v38);
              if (__darwin_check_fd_set_overflow(a1, buf, 0) && ((*(buf[0].fds_bits + ((a1 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> a1) & 1) != 0)
              {
                v67 = "";
              }

              else
              {
                v67 = "*NO* ";
              }

              LogMsgWithLevel(v65, OS_LOG_TYPE_DEFAULT, "myKQSocketCallBack recvfrom skt %d error %d errno %d (%s) select %d (%spackets waiting) so_error %d so_nread %d fionread %d count %d", a1, -1, v38, v66, v56, v67, LODWORD(v79.msg_name), *v77, v76[0], v9);
              v64 = myKQSocketCallBack_numLogMessages;
            }

            if (v64 >= 6)
            {
              NotifyOfElusiveBug("Flaw in Kernel (select/recvfrom mismatch)", "Congratulations, you've reproduced an elusive bug.\rPlease send email to radar-3387020@group.apple.com.)\rIf possible, please leave your machine undisturbed so that someone can come to investigate the problem.");
            }

            sleep(1u);
          }
        }

        return;
      }

      msg_controllen = v79.msg_controllen;
      if (v79.msg_controllen <= 0xB)
      {
        v43 = myrecvfrom_numLogMessages++;
        v39 = &unk_100178000;
        if (v43 > 0x63)
        {
          goto LABEL_111;
        }

        v41 = mDNSLogCategory_Default;
        v72 = *__error();
        v70 = msg_controllen;
        v71 = 12;
        v68 = a1;
        v69 = v14;
        v42 = "mDNSMacOSX.c: recvmsg(%d) returned %d msg.msg_controllen %d < sizeof(struct cmsghdr) %lu, errno %d";
        goto LABEL_107;
      }

      if ((v79.msg_flags & 0x20) != 0)
      {
        v45 = myrecvfrom_numLogMessages++;
        v39 = &unk_100178000;
        if (v45 > 0x63)
        {
          goto LABEL_111;
        }

        v44 = mDNSLogCategory_Default;
        v68 = a1;
        v42 = "mDNSMacOSX.c: recvmsg(%d) msg.msg_flags & MSG_CTRUNC";
        goto LABEL_110;
      }

      msg_control = v79.msg_control;
      if (v79.msg_control)
      {
        LODWORD(v17) = 0;
        do
        {
          v18 = msg_control[1];
          switch(v18)
          {
            case 0xFFFFu:
              if (msg_control[2] == 7)
              {
                v23 = *(msg_control + 3);
                if (mdns_mach_ticks_per_second_s_once != -1)
                {
                  dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_3502);
                }

                v17 = v23 / mdns_mach_ticks_per_second_s_ticks_per_second;
              }

              break;
            case 0x29u:
              if (msg_control[2] == 46)
              {
                v76[0] = 6;
                *&v76[1] = *(msg_control + 3);
                v20 = msg_control[7];
                v21 = myGetIfAddrs_ifa;
                if (myGetIfAddrs_ifa || (getifaddrs(&myGetIfAddrs_ifa), (v21 = myGetIfAddrs_ifa) != 0))
                {
                  while (1)
                  {
                    v22 = v21[3];
                    if (v22)
                    {
                      if (*(v22 + 1) == 18 && *(v22 + 2) == v20)
                      {
                        break;
                      }
                    }

                    v21 = *v21;
                    if (!v21)
                    {
                      goto LABEL_48;
                    }
                  }

                  v24 = v21[1];
                  if (!v24)
                  {
                    __break(1u);
                  }

                  v25 = __s2;
                  v26 = 15;
                  while (1)
                  {
                    v27 = *v24;
                    *v25 = v27;
                    if (!v27)
                    {
                      break;
                    }

                    ++v25;
                    ++v24;
                    if (!--v26)
                    {
                      *v25 = 0;
                      goto LABEL_48;
                    }
                  }
                }
              }

              break;
            case 0u:
              v19 = msg_control[2];
              if (v19 == 20)
              {
                if (*(msg_control + 17) <= 0xFuLL)
                {
                  __memcpy_chk();
                  __s2[*(msg_control + 17)] = 0;
                }
              }

              else if (v19 == 7)
              {
                v76[0] = 4;
                v76[1] = msg_control[3];
              }

              break;
          }

LABEL_48:
          msg_control = (msg_control + ((*msg_control + 3) & 0x1FFFFFFFCLL));
          if (msg_control)
          {
            v28 = (msg_control + 3) > v79.msg_control + v79.msg_controllen;
          }

          else
          {
            v28 = 1;
          }
        }

        while (!v28);
        v29 = v9;
      }

      else
      {
        v29 = v9;
        LODWORD(v17) = 0;
      }

      v30 = v76[0];
      if (v76[0] == 4)
      {
        if ((v76[1] & 0xF0) == 0xE0)
        {
          goto LABEL_60;
        }
      }

      else if (v76[0] == 6 && LOBYTE(v76[1]) == 255)
      {
LABEL_60:
        ++*(*v7 + 26);
      }

      if (BYTE1(v84[0].tv_sec) == 30)
      {
        *v77 = 6;
        *&v77[4] = *&v84[0].tv_usec;
      }

      else
      {
        if (BYTE1(v84[0].tv_sec) != 2)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "myKQSocketCallBack from is unknown address family %d", BYTE1(v84[0].tv_sec));
          return;
        }

        *v77 = 4;
        *&v77[4] = HIDWORD(v84[0].tv_sec);
      }

      v31 = WORD1(v84[0].tv_sec);
      v32 = v7;
      v33 = *v7;
      v34 = **v7;
      if (v34)
      {
        while (!*(v34 + 3696) || strcmp((v34 + 3606), __s2))
        {
          v34 = *(v34 + 3680);
          if (!v34)
          {
            goto LABEL_69;
          }
        }

        v35 = *(v34 + 3552);
        v7 = v32;
        if (v35)
        {
          goto LABEL_90;
        }
      }

      else
      {
LABEL_69:
        v7 = v32;
        if (mDNSAddrIsDNSMulticast(v76))
        {
          goto LABEL_95;
        }
      }

      if (v30 == 6)
      {
        v36 = xmmword_100170388;
        if (xmmword_100170388)
        {
          while (*(v36 + 890) != 6 || !*(v36 + 3671) || *(v36 + 891) != v76[1] || *(v36 + 892) != v76[2] || *(v36 + 893) != v76[3] || *(v36 + 894) != v76[4])
          {
            v36 = *v36;
            if (!v36)
            {
              goto LABEL_88;
            }
          }

          goto LABEL_96;
        }
      }

      else if (v30 == 4)
      {
        v36 = xmmword_100170388;
        if (xmmword_100170388)
        {
          while (*(v36 + 890) != 4 || !*(v36 + 3671) || *(v36 + 891) != v76[1])
          {
            v36 = *v36;
            if (!v36)
            {
              goto LABEL_88;
            }
          }

LABEL_96:
          v37 = (v36 + 444);
          goto LABEL_89;
        }
      }

LABEL_88:
      v37 = &mDNSInterface_Any;
LABEL_89:
      v35 = *v37;
LABEL_90:
      *(a3 + 10) = &v78;
      if (*(a3 + 88))
      {
        (v33[122])(v33 + 176, v75, v75 + v14, v77, v31, v76, *a3, v35, 0);
      }

      else
      {
        mDNSCoreReceive(v7, v75, v75 + v14, v77, v31, v76, *a3, v35, v17);
      }

      if (!v78)
      {
        *(a3 + 10) = 0;
      }

LABEL_95:
      v10 = 0;
      v9 = v29 + 1;
    }
  }

  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "myKQSocketCallBack: socket %d is no longer readable (EOF)", a1);
  if (*(a3 + 4) == a1)
  {
    *(a3 + 89) = 1;
    v8 = a3 + 12;
  }

  else
  {
    if (*(a3 + 12) != a1)
    {
      return;
    }

    *(a3 + 90) = 1;
    v8 = a3 + 28;
  }

  KQueueSet(a1, 2u, -1, v8);
}

void mDNSCoreReceive(uint64_t a1, uint64_t a2, unint64_t a3, int *a4, uint64_t a5, unsigned int *a6, unsigned int a7, void *a8, int a9)
{
  if (a6 == 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = a6;
  }

  *&v17 = a1 + 12696;
  if (!mDNSSameAddress(a4, (a1 + 12696)))
  {
    v103 = a1;
    v24 = *(a1 + 15024);
    if (v24 && *v24 == a7)
    {
      return;
    }

    goto LABEL_19;
  }

  v18 = a1;
  v19 = a1 + 12288;
  if (a5 != 27655)
  {
    v20 = *(v18 + 15024);
    if (!v20 || *v20 != a7)
    {
      v103 = v18;
      if (a5 == 59156)
      {
        mDNS_Lock_(v18, "mDNSCoreReceive", 13974);
        v25 = (a3 - a2);
        if (a3 == a2)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_ReceiveNATPacket: zero length packet");
          goto LABEL_100;
        }

        if (*a2)
        {
          if (*a2 != 2)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_ReceiveNATPacket: packet with version %u (expected %u or %u)");
            goto LABEL_100;
          }

          if (v25 <= 0x17)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_ReceivePCPPacket: message too short (%d bytes)");
            goto LABEL_100;
          }

          v58 = *(a2 + 1);
          if ((v58 & 0x80000000) == 0 || (v59 = v58 & 0x7F, v59 >= 2))
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_ReceivePCPPacket: unhandled opCode %u");
            goto LABEL_100;
          }

          v75 = *(v103 + 14768);
          v76 = bswap32(*(a2 + 8));
          *(a2 + 4) = bswap32(*(a2 + 4));
          *(a2 + 8) = v76;
          v77 = *(v103 + 64);
          v100 = *(v103 + 14772);
          v102 = v75;
          if (v76 <= 1)
          {
            v78 = 1;
          }

          else
          {
            v78 = v76;
          }

          *(v103 + 14768) = v78;
          *(v103 + 14772) = v77;
          LNT_ClearState(v103);
          v79 = *(v103 + 15024);
          if (v79)
          {
            CloseSocketSet(*(v103 + 15024));
            free(v79);
            *(v103 + 15024) = 0;
          }

          if (v102)
          {
            v80 = (v77 - v100) / 1000;
            v81 = v76 - v102;
            if (v80 + 2 < v81 - (v81 >> 4) || v81 + 2 < v80 - (v80 >> 4))
            {
              if (v59)
              {
                v82 = 0;
                v83 = v103;
              }

              else
              {
                v83 = v103;
                do
                {
                  v82 = arc4random() & 0x1FFF;
                }

                while (v82 > 0x1388);
              }

              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_ReceivePCPPacket: Epoch invalid, %#a likely rebooted, waiting %u ticks", v17, v82);
              RecreateNATMappings(v83, v82);
              goto LABEL_100;
            }
          }

          if (v59)
          {
            v86 = *(a2 + 3);
            *(v19 + 2488) = v86;
            if (v86)
            {
              if (mDNS_LoggingEnabled == 1)
              {
                LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_ReceivePCPPacket: error received from server. opcode %X result %X lifetime %X epoch %X", *(a2 + 1), v86, *(a2 + 4), *(a2 + 8));
              }

              v87 = v103;
              v88 = 0;
              if (v25 < 0x3C)
              {
                v90 = 0;
                v91 = 0;
                v89 = 0;
              }

              else
              {
                v89 = 0;
                v90 = *(a2 + 36);
                v91 = *(a2 + 40);
              }

              goto LABEL_209;
            }

            if (v25 <= 0x3B)
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_ReceivePCPPacket: mapping response too short (%d bytes)");
              goto LABEL_100;
            }

            if (*(a2 + 24) != *(v103 + 14748) || *(a2 + 32) != *(v103 + 14756))
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_ReceivePCPPacket: invalid nonce, ignoring. received { %x %x %x } expected { %x %x %x }", *(a2 + 24));
              goto LABEL_100;
            }

            v90 = *(a2 + 36);
            v91 = *(a2 + 40);
            v89 = *(a2 + 42);
            if (*(a2 + 44) || *(a2 + 48) || *(a2 + 52) || *(a2 + 54) != -1)
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_ReceivePCPPacket: unexpected external address: %.16a", COERCE_DOUBLE(a2 + 44));
              v88 = 0;
            }

            else
            {
              v88 = *(a2 + 56);
              if (v88)
              {
                goto LABEL_236;
              }
            }

            *(a2 + 3) = 3;
LABEL_236:
            v87 = v103;
LABEL_209:
            v95 = *(v87 + 14720);
            if (v95)
            {
              v96 = v88;
              do
              {
                if ((*(v95 + 172) & 2) != 0)
                {
                  v97 = 6;
                }

                else
                {
                  v97 = 17;
                }

                if (v97 == v90 && *(v95 + 174) == v91 || (!*(v95 + 172) ? (v98 = v90 == 6) : (v98 = 0), v98 && v91 == 2304))
                {
                  if (*(a2 + 3))
                  {
                    v99 = 3;
                  }

                  else
                  {
                    v99 = 0;
                  }

                  natTraversalHandlePortMapReplyWithAddress(v103, v95, a8, v99, v96, v89, *(a2 + 4), 3);
                }

                v95 = *v95;
              }

              while (v95);
            }
          }
        }

        else if (v25 > 3)
        {
          v60 = __rev16(*(a2 + 2));
          *(a2 + 2) = v60;
          if (v60 == 1)
          {
            if (mDNS_LoggingEnabled == 1)
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "NAT-PMP version unsupported message received");
            }

            for (i = *(v103 + 14720); i; i = *i)
            {
              uDNS_SendNATMsg(v103, i, 0, 0);
            }

            *(v103 + 104) = *(v103 + 64);
            goto LABEL_100;
          }

          if (v25 > 7)
          {
            v62 = bswap32(*(a2 + 4));
            *(a2 + 4) = v62;
            v63 = *(v103 + 14768);
            v64 = v62 - v63;
            if (v62 < v63 || (v65 = *(v103 + 64), v66 = 274877907 * (v65 - *(v103 + 14772)), LODWORD(v66) = (v66 >> 38) + (v66 >> 63), v64 + 2 < v66 - (v66 >> 3)))
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "NAT-PMP epoch time check failed: assuming NAT gateway %#a rebooted", v17);
              RecreateNATMappings(v103, 0);
              v62 = *(a2 + 4);
              v65 = *(v103 + 64);
            }

            *(v103 + 14768) = v62;
            *(v103 + 14772) = v65;
            LNT_ClearState(v103);
            v67 = *(a2 + 1);
            if ((v67 - 129) >= 2)
            {
              if (v67 != 128)
              {
                LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Received NAT-PMP response with unknown opcode 0x%X");
                goto LABEL_100;
              }

              if (mDNS_LoggingEnabled == 1)
              {
                v84 = "failure";
                if (!*(a2 + 2))
                {
                  v84 = "success";
                }

                LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_ReceiveNATPMPPacket: AddressRequest %s error %d", v84, *(a2 + 2));
              }

              if (v25 <= 0xB && !*(a2 + 2))
              {
                LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "NAT-PMP AddrResponse message too short (%d bytes)");
                goto LABEL_100;
              }

              v92 = v103;
              natTraversalHandleAddressReply(v103, *(a2 + 2), *(a2 + 8));
            }

            else
            {
              if (mDNS_LoggingEnabled == 1)
              {
                v68 = "failure";
                if (!*(a2 + 2))
                {
                  v68 = "success";
                }

                v69 = "TCP";
                if (v67 == 129)
                {
                  v69 = "UDP";
                }

                LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_ReceiveNATPMPPacket: PortMapRequest %s %s - error %d", v68, v69, *(a2 + 2));
              }

              v70 = *(a2 + 2);
              if (!v70)
              {
                if (v25 <= 0xF)
                {
                  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "NAT-PMP PortMapReply message too short (%d bytes)");
                  goto LABEL_100;
                }

                *(a2 + 12) = bswap32(*(a2 + 12));
              }

              *(v19 + 2488) = v70;
              v92 = v103;
              for (j = *(v103 + 14720); j; j = *j)
              {
                if (*(j + 172) == (v67 & 0x7F) && *(j + 174) == *(a2 + 8))
                {
                  natTraversalHandlePortMapReplyWithAddress(v103, j, a8, *(a2 + 2), *(v103 + 14744), *(a2 + 10), *(a2 + 12), 1);
                }
              }
            }

            v94 = *(v92 + 15024);
            if (v94)
            {
              CloseSocketSet(*(v92 + 15024));
              free(v94);
              *(v103 + 15024) = 0;
            }

            goto LABEL_100;
          }

          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "NAT-PMP message too short (%d bytes) 0x%X 0x%X");
        }

        else
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "NAT-PMP message too short (%d bytes)");
        }

LABEL_100:
        v22 = v103;
        v23 = 13976;
        goto LABEL_101;
      }

LABEL_19:
      v26 = a3 - a2;
      if (((a3 - a2) & 0xFFFFFFFC) <= 0xB)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "DNS Message from %#a:%d to %#a:%d length %d too short", *&a4, bswap32(a5) >> 16, *&v16, bswap32(a7) >> 16, a3 - a2);
        return;
      }

      v27 = *(a2 + 2);
      *(a2 + 4) = bswap32(*(a2 + 4)) >> 16;
      *(a2 + 6) = bswap32(*(a2 + 6)) >> 16;
      *(a2 + 8) = bswap32(*(a2 + 8)) >> 16;
      *(a2 + 10) = bswap32(*(a2 + 10)) >> 16;
      if (*a4 == 6)
      {
        v43 = a4[1];
        v44 = a4[2];
        v45 = a4[3];
        v46 = a4[4];
        if (!(v44 | v43 | v45 | v46) || (v44 & v43 & v45 & v46) == 0xFFFFFFFF)
        {
          return;
        }
      }

      else if (*a4 != 4 || (a4[1] + 1) < 2)
      {
        return;
      }

      v101 = v27 & 0xF8;
      mDNS_Lock_(v103, "mDNSCoreReceive", 14004);
      ++*(v103 + 132);
      if (*a2 || (++*(v103 + 136), IsLocalSubnet = mDNS_AddressIsLocalSubnet(v103, a8, a4), !v16) || IsLocalSubnet)
      {
        if (!v16)
        {
          v57 = "TCP";
          v50 = v101;
LABEL_127:
          v53 = a8;
          if (*a2)
          {
            if (mDNS_PacketLoggingEnabled)
            {
              if (a6 == 1)
              {
                v71 = "TLS";
              }

              else
              {
                v71 = v57;
              }

              v72 = a5;
              DumpPacket(0, 0, v71, a4, a5, v16, a7, a2, a3, a8);
            }

            else
            {
              v72 = a5;
            }

            uDNS_ReceiveMsg(v103, a2, a3, a4, v72);
            v53 = 0;
            v50 = v101;
          }

LABEL_135:
          if (v50 > 127)
          {
            if (v50 == 128)
            {
              mDNSCoreReceiveResponse(v103, a2, a3, a4, a5, v16, a7, 0, 0, v53, a9);
              goto LABEL_156;
            }

            if (v50 == 168)
            {
              mDNSCoreReceiveUpdateR(v103, a2, a3, a4, a8, v47, v48, v53);
              goto LABEL_156;
            }
          }

          else
          {
            if (!v50)
            {
              mDNSCoreReceiveQuery(v103, a2, a3, a4, a5, v16, a7, v53);
              goto LABEL_156;
            }

            if (v50 == 40)
            {
              mDNSCoreReceiveUpdate(v103, a2, a3, a4, a5, v16, a7, a8);
LABEL_156:
              mDNS_Unlock_(v103, "mDNSCoreReceive", 14065);
              return;
            }
          }

          if (mDNS_LoggingEnabled == 1 && mDNSCoreReceive_msgCount <= 999)
          {
            ++mDNSCoreReceive_msgCount;
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Unknown DNS packet type %02X%02X from %#-15a:%-5d to %#-15a:%-5d length %d on %p (ignored)", *(a2 + 2), *(a2 + 3), *&a4, bswap32(a5) >> 16, *&v16, bswap32(a7) >> 16, a3 - a2, a8);
            if (v26 >= 1)
            {
              v73 = 0;
              do
              {
                memset(v105, 0, sizeof(v105));
                v74 = v105 + mDNS_snprintf(v105, 128, "%04X", v73);
                do
                {
                  if (v73 < v26)
                  {
                    v74 += mDNS_snprintf(v74, 128, " %02X", *(a2 + v73));
                  }

                  ++v73;
                }

                while ((v73 & 0xF) != 0);
                if (mDNS_LoggingEnabled == 1)
                {
                  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%s", v105);
                }
              }

              while (v73 < v26);
            }
          }

          goto LABEL_156;
        }

        v49 = *v16;
        v50 = v101;
        goto LABEL_62;
      }

      v49 = *v16;
      if (*v16 == 6)
      {
        v50 = v101;
        if (v16[1] != 767)
        {
          goto LABEL_125;
        }

        if (v16[2] || v16[3] || v16[4] != -83886080)
        {
          goto LABEL_95;
        }
      }

      else
      {
        v50 = v101;
        if (v49 != 4)
        {
LABEL_62:
          if (v49 != 6)
          {
            if (v49 != 4)
            {
              goto LABEL_125;
            }

            v51 = v16[1];
            v52 = -83885856;
            goto LABEL_65;
          }

          if (v16[1] != 767)
          {
            goto LABEL_125;
          }

LABEL_95:
          if (v16[2] || v16[3])
          {
            goto LABEL_125;
          }

          v51 = v16[4];
          v52 = -83886080;
LABEL_65:
          v53 = a8;
          if (v51 == v52)
          {
            goto LABEL_135;
          }

LABEL_125:
          v57 = "UDP";
          if (v50 != 168)
          {
            v53 = a8;
            if (v50 != 128)
            {
              goto LABEL_135;
            }
          }

          goto LABEL_127;
        }

        if (v16[1] != -83885856)
        {
          goto LABEL_125;
        }
      }

      ++*(v103 + 176);
      goto LABEL_62;
    }
  }

  v21 = v18;
  mDNS_Lock_(v18, "mDNSCoreReceive", 13966);
  if (*(v19 + 2746))
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  v28 = (a3 - a2);
  if (a3 == a2)
  {
    goto LABEL_9;
  }

  v29 = (a2 + (a3 - a2));
  v30 = v28 - 1;
  v31 = v28 - 1;
  v32 = a2;
  do
  {
    if ((*v32 & 0xDF) == 0x57 && !strncasecmp(v32, "WANIPConnection:1", 0x11uLL))
    {
      break;
    }

    if (!++v32)
    {
      break;
    }
  }

  while (v31--);
  if (v32 == v29)
  {
    v54 = v30;
    v32 = a2;
    do
    {
      if ((*v32 & 0xDF) == 0x57 && !strncasecmp(v32, "WANPPPConnection:1", 0x12uLL))
      {
        break;
      }

      if (!++v32)
      {
        break;
      }
    }

    while (v54--);
  }

  if (!v32 || v32 == v29)
  {
    goto LABEL_9;
  }

  do
  {
    if ((*a2 & 0xDF) == 0x4C && !strncasecmp(a2, "Location:", 9uLL))
    {
      break;
    }

    if (!++a2)
    {
      break;
    }
  }

  while (v30--);
  if (!a2 || a2 == v29)
  {
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "LNT_ConfigureRouterInfo: Location field not found");
    }

    goto LABEL_9;
  }

  v35 = (a2 + 9);
  do
  {
    v36 = v35;
    v38 = *v35++;
    v37 = v38;
  }

  while (v36 < v29 && v37 == 32);
  if (v36 < v29)
  {
    v39 = (v35 - 1);
    v40 = v35 - 1;
    while (*v40 != 13)
    {
      if (++v40 == v29)
      {
        v40 = v29;
        break;
      }
    }

    *(v19 + 2746) = 20480;
    v41 = v21[1883];
    if (v41)
    {
      free(v41);
      v21[1883] = 0;
    }

    v42 = v21[1880];
    if (v42)
    {
      free(v42);
      v21[1880] = 0;
    }

    if (ParseHttpUrl(v39, v40, v21 + 1883, (v19 + 2746), v21 + 1880))
    {
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "LNT_ConfigureRouterInfo: Failed to parse URL");
      }

      goto LABEL_9;
    }

    v21[1877] = a8;
    if (v21[1883])
    {
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "LNT_ConfigureRouterInfo: Router address string [%s]");
      }
    }

    else
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "LNT_ConfigureRouterInfo: UPnPRouterAddressString is NULL");
    }

    if (v21[1880])
    {
      if (mDNS_LoggingEnabled != 1)
      {
LABEL_184:
        v85 = v21[1878];
        if (v85)
        {
          CloseSocketSet(v21[1878]);
          free(v85);
          v21[1878] = 0;
        }

        GetDeviceDescription(v21, (v21 + 1862));
        goto LABEL_9;
      }

      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "LNT_ConfigureRouterInfo: Router URL [%s]");
    }

    else
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "LNT_ConfigureRouterInfo: UPnPRouterURL is NULL");
    }

    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "LNT_ConfigureRouterInfo: Router port %d", bswap32(*(v19 + 2746)) >> 16);
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "LNT_ConfigureRouterInfo: Router interface %d", v21[1877]);
      }
    }

    goto LABEL_184;
  }

LABEL_9:
  v22 = v21;
  v23 = 13968;
LABEL_101:

  mDNS_Unlock_(v22, "mDNSCoreReceive", v23);
}

void mDNSCoreReceiveQuery(uint64_t a1, unsigned __int16 *a2, unint64_t a3, __int128 *a4, uint64_t a5, unsigned int *a6, unsigned int a7, const void *a8)
{
  v296 = a2;
  if (!a4 || !a6)
  {
    if (!a6)
    {
      v14 = "Received over TCP connection";
      goto LABEL_44;
    }

    v273 = a7;
LABEL_8:
    v13 = 0;
    if (!a8)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v273 = a7;
  if (mDNSAddrIsDNSMulticast(a6))
  {
    goto LABEL_8;
  }

  v13 = mDNS_AddressIsLocalSubnet(a1, a8, a4) != 0;
  if (!a8)
  {
LABEL_9:
    if (mDNSAddrIsDNSMulticast(a6))
    {
      v14 = "Multicast, but no InterfaceID";
      a2 = v296;
      a7 = v273;
LABEL_44:
      v40 = bswap32(a5) >> 16;
      v41 = bswap32(a7) >> 16;
      v42 = "s,";
      v43 = a2[2];
      if (v43 == 1)
      {
        v44 = ", ";
      }

      else
      {
        v44 = "s,";
      }

      v45 = a2[3];
      if (v45 == 1)
      {
        v42 = ", ";
      }

      v46 = "ies,";
      v47 = a2[4];
      if (v47 == 1)
      {
        v46 = "y,  ";
      }

      v48 = a2[5];
      v49 = "s";
      if (v48 == 1)
      {
        v49 = " ";
      }

      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Ignoring Query from %#-15a:%-5d to %#-15a:%-5d on 0x%p with %2d Question%s %2d Answer%s %2d Authorit%s %2d Additional%s %d bytes (%s)", *&a4, v40, *&a6, v41, a8, v43, v44, v45, v42, v47, v46, v48, v49, a3 - a2 - 12, v14);
      return;
    }
  }

LABEL_11:
  v15 = (a1 + 37920);
  v277 = (a1 + 28960);
  v16 = (a1 + 19924);
  v17 = a5 != 59668;
  v265 = a6;
  IsDNSMulticast = mDNSAddrIsDNSMulticast(a6);
  IsLocalSubnet = mDNS_AddressIsLocalSubnet(a1, a8, a4);
  v303 = &v304;
  v304 = 0;
  IsD2D = mDNSPlatformInterfaceIsD2D(a8);
  v301 = 0;
  v302 = 0;
  v300 = 0;
  OptRR = LocateOptRR(v296, a3, 0xCu);
  v274 = a4;
  v299 = a3;
  v287 = (a1 + 19924);
  if (!OptRR)
  {
    goto LABEL_63;
  }

  if (!GetLargeResourceRecord(a1, v296, OptRR, a3, a8, 128, a1 + 37912))
  {
    goto LABEL_61;
  }

  if (*v15 == 240)
  {
    goto LABEL_61;
  }

  if (*(a1 + 37924) != 41)
  {
    goto LABEL_61;
  }

  v20 = *(a1 + 37960);
  v21 = v20 + 4 + *(a1 + 37932);
  if (v20 + 4 >= v21)
  {
    goto LABEL_61;
  }

  v22 = 0;
  v290 = 0;
  v23 = v20 + 8;
  v292 = v20 + 4 + *(a1 + 37932);
  do
  {
    v24 = *(v23 - 4);
    if (v24 == 65002)
    {
      v294 = v22 + 1;
      v25 = *(v23 + 8);
      v26 = DomainNamePtrAtTSRIndex(v296, v299, v25);
      if (v26)
      {
        v27 = UnsafeBufferPointer(v296, v26, v299, v23 - 4);
        if (v27)
        {
          *v27 = v290;
          v300 = v27;
          v290 = v27;
LABEL_25:
          v21 = v292;
          v22 = v294;
          goto LABEL_39;
        }

        v30 = mDNSLogCategory_mDNS;
        v22 = v294;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
        {
          v21 = v292;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_39;
          }
        }

        else
        {
          v30 = mDNSLogCategory_mDNS_redacted;
          v21 = v292;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_39;
          }
        }

        v36 = *(a1 + 37944);
        v37 = *v23;
        v38 = *(v23 + 4);
        v39 = *(v23 + 8);
        *buf = 67110144;
        *v319 = v294;
        *&v319[4] = 2048;
        *&v319[6] = v36;
        v320 = 1024;
        *v321 = v37;
        *&v321[4] = 1024;
        *&v321[6] = v38;
        LOWORD(v322) = 1024;
        *(&v322 + 2) = v39;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "ProcessQuery: Create TSR(%u) failed - if %p tsrTime %d tsrHost %x recIndex %d", buf, 0x24u);
      }

      else
      {
        v28 = mDNSLogCategory_mDNS;
        if (mDNS_SensitiveLoggingEnableCount)
        {
          v29 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
        }

        else
        {
          v29 = 1;
        }

        if (v29)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_25;
          }
        }

        else
        {
          v28 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_25;
          }
        }

        v32 = *(a1 + 37944);
        v33 = *v23;
        v34 = *(v23 + 4);
        *buf = 67110144;
        *v319 = v294;
        *&v319[4] = 2048;
        *&v319[6] = v32;
        v320 = 1024;
        *v321 = v33;
        *&v321[4] = 1024;
        *&v321[6] = v34;
        LOWORD(v322) = 1024;
        *(&v322 + 2) = v25;
        v22 = v294;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "ProcessQuery: No Domain Name for TSR(%u) if %p tsrTime %d tsrHost %x recIndex %d", buf, 0x24u);
        v21 = v292;
      }
    }

    else if (v24 == 4 && !*v23 && *(v23 + 2))
    {
      ClearProxyRecords(a1, v23, *(a1 + 12624));
      ClearProxyRecords(a1, v23, *(a1 + 12616));
    }

LABEL_39:
    v35 = v23 + 20;
    v23 += 24;
  }

  while (v35 < v21);
  a3 = v299;
  if (v290)
  {
    v50 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_60;
      }
    }

    else
    {
      v50 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEBUG))
      {
LABEL_60:
        v51 = *(a1 + 37944);
        GetRRDisplayString_rdb((a1 + 37920), (*(a1 + 37960) + 4), (a1 + 47032));
        *buf = 67109634;
        *v319 = v22;
        *&v319[4] = 2048;
        *&v319[6] = v51;
        a3 = v299;
        v320 = 2082;
        *v321 = a1 + 47032;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "ProcessQuery: Received TSR(%u) if %p %{public}s", buf, 0x1Cu);
      }
    }
  }

LABEL_61:
  *v15 = 0;
  *(a1 + 38022) = 0;
  v52 = *(a1 + 37976);
  v16 = (a1 + 19924);
  v17 = a5 != 59668;
  if (v52)
  {
    ref_count_obj_release(v52);
    *(a1 + 37976) = 0;
  }

LABEL_63:
  v289 = (v296 + 6);
  if (v296[2])
  {
    v282 = 0;
    v53 = 0;
    v54 = a5 != 59668;
    if (!IsDNSMulticast)
    {
      v54 = 1;
    }

    v286 = v54;
    v284 = (a1 + 47032);
    v276 = IsDNSMulticast || v13;
    if (IsLocalSubnet | v17)
    {
      v55 = 1;
    }

    else
    {
      v55 = !IsDNSMulticast;
    }

    v283 = v55;
    v264 = &v301;
    v56 = &v302;
    v57 = &unk_100178000;
    v58 = (v296 + 6);
    v59 = v296;
    while (1)
    {
      bzero(buf, 0x2B8uLL);
      Question = getQuestion(v59, v58, v299, a8, buf);
      if (!Question)
      {
        v298 = 0;
        goto LABEL_362;
      }

      v58 = Question;
      v61 = v336;
      v62 = v286;
      if ((v336 & 0x8000u) != 0)
      {
        v62 = 1;
      }

      v297 = v62;
      v295 = v56;
      if (v336 < 0)
      {
        ++v16[3];
      }

      else
      {
        ++v16[4];
      }

      v336 = v61 & 0x7FFF;
      v63 = *(a1 + 12640);
      if (v63)
      {
        v64 = *(v57 + 434);
        GetRRDisplayString_rdb((v63 + 8), (*(v63 + 48) + 4), v284);
        LogMsgWithLevel(v64, OS_LOG_TYPE_DEFAULT, "ProcessQuery ERROR m->CurrentRecord already set %s", v284);
      }

      v65 = *(a1 + 12616);
      *(a1 + 12640) = v65;
      if (!v65)
      {
LABEL_326:
        v282 = 1000;
        goto LABEL_327;
      }

      v293 = 0;
      v291 = 0;
      v66 = -2;
      if (a5 != 59668)
      {
        v66 = v58;
      }

      v281 = v66;
      do
      {
        *(a1 + 12640) = *v65;
        v67 = *(v65 + 32);
        if (v67 + 3 < 2)
        {
LABEL_85:
          LogMsgWithLevel(*(v57 + 434), OS_LOG_TYPE_DEFAULT, "AnyTypeRecordAnswersQuestion: ERROR!! called with LocalOnly ResourceRecord %p, Question %p", *(v65 + 32), v332);
          goto LABEL_86;
        }

        if (v67)
        {
          if (v67 == -5)
          {
            goto LABEL_85;
          }

          v68 = v332 == -2 || v332 == 0;
          if (!v68 && v67 != v332)
          {
            goto LABEL_86;
          }
        }

        if (v331 && (v331[138] & 0x4000) != 0)
        {
          v72 = *(v65 + 56);
          if (v72)
          {
            v72 = *(v72 + 24);
          }

          if (v72 != v331)
          {
            goto LABEL_86;
          }

          goto LABEL_114;
        }

        v70 = *(v65 + 56);
        if (v70)
        {
          if (*(v70 + 24))
          {
            v71 = 1;
          }

          else
          {
            v71 = v67 == 0;
          }

          if (v71)
          {
            v67 = *(v70 + 24);
LABEL_105:
            if (v67 != v331 || !mDNSPlatformValidRecordForInterface(v65, v332))
            {
              goto LABEL_86;
            }

            goto LABEL_114;
          }
        }

        else if (!v67)
        {
          goto LABEL_105;
        }

        if (v334)
        {
          goto LABEL_86;
        }

LABEL_114:
        if (*(v65 + 14) != v336 && v336 != 255 || *(v65 + 24) != v333 || !SameDomainNameBytes(*(v65 + 40), v337) || !v276 && !*(v65 + 121))
        {
          goto LABEL_86;
        }

        ++v16[5];
        if (!RRTypeAnswersQuestionType(v65 + 8, v335, 0))
        {
          if ((*(v65 + 8) & 0x30) != 0)
          {
            IsValidAnswer = ResourceRecordIsValidAnswer(v65);
            v76 = v293;
            if (v293)
            {
              v77 = 1;
            }

            else
            {
              v77 = !IsValidAnswer;
            }

            if (!v77)
            {
              v76 = v65;
            }

            v293 = v76;
          }

          goto LABEL_86;
        }

        v73 = *(v65 + 40);
        v74 = &v300;
        v275 = v58;
        while (1)
        {
          v74 = *v74;
          if (!v74)
          {
            break;
          }

          if (SameDomainNameBytes(v74 + 20, v73))
          {
            v278 = (v74 + 1);
            goto LABEL_133;
          }
        }

        v278 = 0;
LABEL_133:
        v78 = *(v65 + 8);
        Authorities = LocateAuthorities(v59, v299);
        v80 = Authorities;
        v16 = (a1 + 19924);
        if (v78 == 2)
        {
          if (!*(v59 + 8))
          {
            v102 = 1;
LABEL_198:
            v58 = v275;
            if (v102 && mDNS_LoggingEnabled)
            {
              v112 = *(v57 + 434);
              v113 = *(v65 + 40);
              v114 = DNSTypeName(*(v65 + 12));
              v262 = v113;
              v16 = (a1 + 19924);
              LogMsgWithLevel(v112, OS_LOG_TYPE_DEFAULT, "ResolveSimultaneousProbe: %##s (%s): No Update Record found", v262, v114);
            }

LABEL_201:
            *v15 = 0;
            *(a1 + 38022) = 0;
            v115 = *(a1 + 37976);
            if (v115)
            {
              ref_count_obj_release(v115);
              *(a1 + 37976) = 0;
            }

            goto LABEL_86;
          }

          v81 = 0;
          v82 = 0;
          v271 = v53;
          while (2)
          {
            LargeResourceRecord = GetLargeResourceRecord(a1, v59, v80, v299, v332, 160, a1 + 37912);
            if (!LargeResourceRecord)
            {
LABEL_175:
              v102 = v82 == 0;
              v16 = (a1 + 19924);
              goto LABEL_198;
            }

            v80 = LargeResourceRecord;
            if (*v15 != 240 && RecordAnswersQuestion(a1 + 37920, 0, buf))
            {
              if (v278)
              {
                v84 = mDNSGetTSRForAuthRecordNamed(*(a1 + 12616), *(v65 + 40), *(v65 + 24));
                if (v84)
                {
                  v85 = CheckTSRForResourceRecord(v278, (v84 + 1));
                  if (v85)
                  {
                    v16 = (a1 + 19924);
                    v58 = v275;
                    if (v85 != -1)
                    {
                      goto LABEL_201;
                    }

                    v120 = mDNSLogCategory_mDNS;
                    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                    {
                      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                      {
                        v121 = *(v65 + 40);
                        if (v121)
                        {
                          v127 = *(v65 + 40);
                          while (1)
                          {
                            if (!v127 || (v128 = *v127, v128 > 0x3F))
                            {
LABEL_240:
                              v124 = v275;
                              v125 = 257;
                              goto LABEL_270;
                            }

                            if (!*v127)
                            {
                              break;
                            }

                            v127 += v128 + 1;
                            if (&v127[-v121] >= 256)
                            {
                              goto LABEL_240;
                            }
                          }

                          v124 = v275;
                          v125 = (v127 - v121 + 1);
                        }

                        else
                        {
                          v124 = v275;
                          v125 = 0;
                        }

LABEL_270:
                        v140 = DNSTypeName(*(v65 + 12));
                        v141 = *(v65 + 32);
                        *__dst = 141559043;
                        *&__dst[4] = 1752392040;
                        *&__dst[12] = 1040;
                        *&__dst[14] = v125;
                        *&__dst[18] = 2101;
                        *&__dst[20] = v121;
                        *&__dst[28] = 2082;
                        *&__dst[30] = v140;
                        *&__dst[38] = 2048;
                        *&__dst[40] = v141;
                        _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "ResolveSimultaneousProbe - deregistering %{sensitive, mask.hash, mdnsresponder:domain_name}.*P type %{public}s on interface id: %p due to TSR conflict", __dst, 0x30u);
                        v16 = (a1 + 19924);
                        v58 = v124;
                        v53 = v271;
                      }
                    }

                    else
                    {
                      v120 = mDNSLogCategory_mDNS_redacted;
                      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                      {
                        v121 = *(v65 + 40);
                        if (v121)
                        {
                          v122 = *(v65 + 40);
                          while (1)
                          {
                            if (!v122 || (v123 = *v122, v123 > 0x3F))
                            {
LABEL_229:
                              v124 = v275;
                              v125 = 257;
                              goto LABEL_270;
                            }

                            if (!*v122)
                            {
                              break;
                            }

                            v122 += v123 + 1;
                            if (&v122[-v121] >= 256)
                            {
                              goto LABEL_229;
                            }
                          }

                          v124 = v275;
                          v125 = (v122 - v121 + 1);
                        }

                        else
                        {
                          v124 = v275;
                          v125 = 0;
                        }

                        goto LABEL_270;
                      }
                    }

                    mDNS_Deregister_internal(a1, v65, 4);
                    goto LABEL_201;
                  }
                }
              }

              if (!PacketRRConflict(a1, v65, a1 + 37912))
              {
                v82 = 1;
                goto LABEL_172;
              }

              v86 = *(v65 + 14);
              v87 = *(a1 + 37926);
              v88 = v86 - v87;
              if (v86 == v87)
              {
                v88 = *(v65 + 12) - *(a1 + 37924);
                if (!v88)
                {
                  goto LABEL_152;
                }
              }

              else
              {
                if (v88)
                {
                  goto LABEL_145;
                }

LABEL_152:
                memset(__dst, 0, sizeof(__dst));
                v307 = 0u;
                v308 = 0u;
                v309 = 0u;
                v310 = 0u;
                v311 = 0u;
                v312 = 0u;
                v313 = 0u;
                v314 = 0u;
                v315 = 0u;
                v316 = 0u;
                v317 = 0u;
                memset(v305, 0, sizeof(v305));
                v93 = __dst;
                v94 = putRData(0, __dst, buf, v65 + 8);
                v95 = v305;
                v96 = putRData(0, v305, __dst, a1 + 37920);
                v97 = v305 < v96;
                v98 = __dst < v94;
                if (__dst >= v94 || v305 >= v96)
                {
LABEL_158:
                  if (v98)
                  {
                    v88 = 1;
                  }

                  else
                  {
                    v88 = (v98 || v97) << 31 >> 31;
                  }

                  v57 = &unk_100178000;
                  if (v98 && v97)
                  {
                    v100 = *v95;
                    v99 = *v93;
                    goto LABEL_165;
                  }
                }

                else
                {
                  v93 = __dst;
                  v95 = v305;
                  while (1)
                  {
                    v99 = *v93;
                    v100 = *v95;
                    if (v99 != v100)
                    {
                      break;
                    }

                    ++v93;
                    v97 = ++v95 < v96;
                    v98 = v93 < v94;
                    if (v93 >= v94 || v95 >= v96)
                    {
                      goto LABEL_158;
                    }
                  }

                  v57 = &unk_100178000;
LABEL_165:
                  if (v100 <= v99)
                  {
                    if (v100 < v99)
                    {
                      v88 = 1;
                      goto LABEL_170;
                    }

                    LogMsgWithLevel(*(v57 + 434), OS_LOG_TYPE_DEFAULT, "CompareRData ERROR: Invalid state");
                  }

                  v88 = -1;
                }

LABEL_170:
                v53 = v271;
                if (!v88)
                {
                  v82 = 1;
                  v59 = v296;
                  goto LABEL_172;
                }
              }

LABEL_145:
              if (v88 >= 0)
              {
                v89 = "won: ";
              }

              else
              {
                v89 = "lost:";
              }

              v268 = *(v57 + 434);
              v270 = v89;
              v90 = v332;
              v91 = *(a1 + 37940);
              GetRRDisplayString_rdb((a1 + 37920), (*(a1 + 37960) + 4), v284);
              LogMsgWithLevel(v268, OS_LOG_TYPE_DEFAULT, "ResolveSimultaneousProbe: %p Pkt Record:        %08lX %s", v90, v91, v284);
              v267 = *(v65 + 32);
              v269 = mDNSLogCategory_Default;
              LODWORD(v91) = *(v65 + 190);
              v92 = *(v65 + 28);
              GetRRDisplayString_rdb((v65 + 8), (*(v65 + 48) + 4), v284);
              LogMsgWithLevel(v269, OS_LOG_TYPE_DEFAULT, "ResolveSimultaneousProbe: %p Our Record %d %s %08lX %s", v267, v91, v270, v92, v284);
              if (v88 < 0)
              {
                v126 = *(a1 + 64) + 1000;
                if (v126 <= 1)
                {
                  v126 = 1;
                }

                *(a1 + 12672) = v126;
                *(v65 + 190) = 1027;
                InitializeLastAPTime(a1, v65);
                v59 = v296;
                v16 = (a1 + 19924);
                v58 = v275;
                v53 = v271;
                v57 = &unk_100178000;
                goto LABEL_201;
              }

              v82 = 1;
              v59 = v296;
              v53 = v271;
              v57 = &unk_100178000;
            }

LABEL_172:
            *v15 = 0;
            *(a1 + 38022) = 0;
            v101 = *(a1 + 37976);
            if (v101)
            {
              ref_count_obj_release(v101);
              *(a1 + 37976) = 0;
            }

            if (++v81 >= *(v59 + 8))
            {
              goto LABEL_175;
            }

            continue;
          }
        }

        v103 = v299;
        if (Authorities && *(v59 + 8))
        {
          v104 = 0;
          while (1)
          {
            v105 = GetLargeResourceRecord(a1, v59, v80, v103, v332, 160, a1 + 37912);
            if (!v105)
            {
              goto LABEL_189;
            }

            v80 = v105;
            v106 = *(a1 + 37976);
            if (resource_records_have_same_dnssec_rr_category(v106, *(v65 + 64)))
            {
              if (*(a1 + 37924) == *(v65 + 12) && *(a1 + 37926) == *(v65 + 14) && *(a1 + 37932) == *(v65 + 20) && *(a1 + 37940) == *(v65 + 28))
              {
                v107 = SameRDataBody(a1 + 37920, (*(v65 + 48) + 4), SameDomainName);
                v106 = *(a1 + 37976);
                if (v107)
                {
                  break;
                }
              }
            }

            *v15 = 0;
            *(a1 + 38022) = 0;
            if (v106)
            {
              ref_count_obj_release(v106);
              *(a1 + 37976) = 0;
            }

            ++v104;
            v103 = v299;
            if (v104 >= *(v59 + 8))
            {
              goto LABEL_189;
            }
          }

          *v15 = 0;
          *(a1 + 38022) = 0;
          if (v106)
          {
            ref_count_obj_release(v106);
            *(a1 + 37976) = 0;
          }

          v58 = v275;
          v57 = &unk_100178000;
        }

        else
        {
LABEL_189:
          v108 = LocateAuthorities(v59, v103);
          v57 = &unk_100178000;
          if (v108)
          {
            if (*(v59 + 8))
            {
              v109 = v108;
              v110 = mDNSGetTSRForAuthRecordNamed(*(a1 + 12616), *(v65 + 40), *(v65 + 24));
              if (v110)
              {
                if (CheckTSRForResourceRecord(v278, (v110 + 1)) == -1 && *(v59 + 8))
                {
                  v117 = 0;
                  while (1)
                  {
                    v118 = GetLargeResourceRecord(a1, v59, v109, v299, v332, 160, a1 + 37912);
                    if (!v118)
                    {
                      goto LABEL_193;
                    }

                    v109 = v118;
                    if (PacketRRMatchesSignature(a1 + 37912, v65) && (*(v65 + 8) & 0x32) != 0)
                    {
                      break;
                    }

                    *v15 = 0;
                    *(a1 + 38022) = 0;
                    v119 = *(a1 + 37976);
                    if (v119)
                    {
                      ref_count_obj_release(v119);
                      *(a1 + 37976) = 0;
                    }

                    if (++v117 >= *(v59 + 8))
                    {
                      goto LABEL_193;
                    }
                  }

                  *v15 = 0;
                  *(a1 + 38022) = 0;
                  v129 = *(a1 + 37976);
                  if (v129)
                  {
                    ref_count_obj_release(v129);
                    *(a1 + 37976) = 0;
                  }

                  v130 = mDNSLogCategory_mDNS;
                  v272 = v53;
                  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                  {
                    if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                    {
                      v131 = v332;
                      v137 = DNSTypeName(*(a1 + 37924));
                      v133 = *(a1 + 37952);
                      v279 = v137;
                      if (v133)
                      {
                        v138 = *(a1 + 37952);
                        while (1)
                        {
                          if (!v138 || (v139 = *v138, v139 > 0x3F))
                          {
LABEL_260:
                            v136 = 257;
                            goto LABEL_274;
                          }

                          if (!*v138)
                          {
                            break;
                          }

                          v138 += v139 + 1;
                          if (&v138[-v133] >= 256)
                          {
                            goto LABEL_260;
                          }
                        }

                        v136 = (v138 - v133 + 1);
                      }

                      else
                      {
                        v136 = 0;
                      }

LABEL_274:
                      GetRRDisplayString_rdb((a1 + 37920), (*(a1 + 37960) + 4), v284);
                      *__dst = 134219779;
                      *&__dst[4] = v131;
                      *&__dst[12] = 2160;
                      *&__dst[14] = 1752392040;
                      *&__dst[22] = 2085;
                      *&__dst[24] = v279;
                      *&__dst[32] = 2160;
                      *&__dst[34] = 1752392040;
                      *&__dst[42] = 1040;
                      *&__dst[44] = v136;
                      *&__dst[48] = 2101;
                      *&__dst[50] = v133;
                      *&__dst[58] = 2160;
                      *&__dst[60] = 1752392040;
                      *&__dst[68] = 2085;
                      *&__dst[70] = a1 + 47032;
                      _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "ProbeRRMatchAndTSRCheck: pkt ar on interface  %p rrtype: %{sensitive, mask.hash}s, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P%{sensitive, mask.hash}s", __dst, 0x4Eu);
                      v16 = (a1 + 19924);
                      v53 = v272;
                      v57 = &unk_100178000;
                    }
                  }

                  else
                  {
                    v130 = mDNSLogCategory_mDNS_redacted;
                    if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                    {
                      v131 = v332;
                      v132 = DNSTypeName(*(a1 + 37924));
                      v133 = *(a1 + 37952);
                      v279 = v132;
                      if (v133)
                      {
                        v134 = *(a1 + 37952);
                        while (1)
                        {
                          if (!v134 || (v135 = *v134, v135 > 0x3F))
                          {
LABEL_252:
                            v136 = 257;
                            goto LABEL_274;
                          }

                          if (!*v134)
                          {
                            break;
                          }

                          v134 += v135 + 1;
                          if (&v134[-v133] >= 256)
                          {
                            goto LABEL_252;
                          }
                        }

                        v136 = (v134 - v133 + 1);
                      }

                      else
                      {
                        v136 = 0;
                      }

                      goto LABEL_274;
                    }
                  }

                  v142 = mDNSLogCategory_mDNS;
                  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                  {
                    if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                    {
                      v143 = *(v65 + 32);
                      v149 = DNSTypeName(*(v65 + 12));
                      v145 = *(v65 + 40);
                      v280 = v149;
                      if (v145)
                      {
                        v150 = *(v65 + 40);
                        while (1)
                        {
                          if (!v150 || (v151 = *v150, v151 > 0x3F))
                          {
LABEL_292:
                            v148 = 257;
                            goto LABEL_297;
                          }

                          if (!*v150)
                          {
                            break;
                          }

                          v150 += v151 + 1;
                          if (&v150[-v145] >= 256)
                          {
                            goto LABEL_292;
                          }
                        }

                        v148 = (v150 - v145 + 1);
                      }

                      else
                      {
                        v148 = 0;
                      }

LABEL_297:
                      GetRRDisplayString_rdb((v65 + 8), (*(v65 + 48) + 4), v284);
                      *__dst = 134219779;
                      *&__dst[4] = v143;
                      *&__dst[12] = 2160;
                      *&__dst[14] = 1752392040;
                      *&__dst[22] = 2085;
                      *&__dst[24] = v280;
                      *&__dst[32] = 2160;
                      *&__dst[34] = 1752392040;
                      *&__dst[42] = 1040;
                      *&__dst[44] = v148;
                      *&__dst[48] = 2101;
                      *&__dst[50] = v145;
                      *&__dst[58] = 2160;
                      *&__dst[60] = 1752392040;
                      *&__dst[68] = 2085;
                      *&__dst[70] = a1 + 47032;
                      _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEFAULT, "ProbeRRMatchAndTSRCheck: Conflict with our ar %p rrtype: %{sensitive, mask.hash}s, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P%{sensitive, mask.hash}s", __dst, 0x4Eu);
                      v16 = (a1 + 19924);
                      v53 = v272;
                      v57 = &unk_100178000;
                    }
                  }

                  else
                  {
                    v142 = mDNSLogCategory_mDNS_redacted;
                    if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                    {
                      v143 = *(v65 + 32);
                      v144 = DNSTypeName(*(v65 + 12));
                      v145 = *(v65 + 40);
                      v280 = v144;
                      if (v145)
                      {
                        v146 = *(v65 + 40);
                        while (1)
                        {
                          if (!v146 || (v147 = *v146, v147 > 0x3F))
                          {
LABEL_284:
                            v148 = 257;
                            goto LABEL_297;
                          }

                          if (!*v146)
                          {
                            break;
                          }

                          v146 += v147 + 1;
                          if (&v146[-v145] >= 256)
                          {
                            goto LABEL_284;
                          }
                        }

                        v148 = (v146 - v145 + 1);
                      }

                      else
                      {
                        v148 = 0;
                      }

                      goto LABEL_297;
                    }
                  }

                  v152 = mDNSLogCategory_mDNS;
                  v58 = v275;
                  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                  {
                    if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                    {
                      v153 = *(v65 + 40);
                      if (v153)
                      {
                        v158 = *(v65 + 40);
                        while (1)
                        {
                          if (!v158 || (v159 = *v158, v159 > 0x3F))
                          {
LABEL_315:
                            v156 = v275;
                            v157 = 257;
                            goto LABEL_320;
                          }

                          if (!*v158)
                          {
                            break;
                          }

                          v158 += v159 + 1;
                          if (&v158[-v153] >= 256)
                          {
                            goto LABEL_315;
                          }
                        }

                        v156 = v275;
                        v157 = (v158 - v153 + 1);
                      }

                      else
                      {
                        v156 = v275;
                        v157 = 0;
                      }

LABEL_320:
                      v160 = DNSTypeName(*(v65 + 12));
                      v161 = *(v65 + 32);
                      *__dst = 141559043;
                      *&__dst[4] = 1752392040;
                      *&__dst[12] = 1040;
                      *&__dst[14] = v157;
                      *&__dst[18] = 2101;
                      *&__dst[20] = v153;
                      *&__dst[28] = 2082;
                      *&__dst[30] = v160;
                      *&__dst[38] = 2048;
                      *&__dst[40] = v161;
                      _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "ProcessQuery - deregistering %{sensitive, mask.hash, mdnsresponder:domain_name}.*P type %{public}s on interface id: %p due to TSR conflict", __dst, 0x30u);
                      v16 = (a1 + 19924);
                      v58 = v156;
                      v53 = v272;
                    }
                  }

                  else
                  {
                    v152 = mDNSLogCategory_mDNS_redacted;
                    if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                    {
                      v153 = *(v65 + 40);
                      if (v153)
                      {
                        v154 = *(v65 + 40);
                        while (1)
                        {
                          if (!v154 || (v155 = *v154, v155 > 0x3F))
                          {
LABEL_307:
                            v156 = v275;
                            v157 = 257;
                            goto LABEL_320;
                          }

                          if (!*v154)
                          {
                            break;
                          }

                          v154 += v155 + 1;
                          if (&v154[-v153] >= 256)
                          {
                            goto LABEL_307;
                          }
                        }

                        v156 = v275;
                        v157 = (v154 - v153 + 1);
                      }

                      else
                      {
                        v156 = v275;
                        v157 = 0;
                      }

                      goto LABEL_320;
                    }
                  }

                  mDNS_Deregister_internal(a1, v65, 4);
                  goto LABEL_86;
                }
              }
            }
          }

LABEL_193:
          if (ResourceRecordIsValidAnswer(v65))
          {
            v58 = v275;
            ++v291;
            if (v297 & v283)
            {
              if (*(v65 + 264))
              {
                goto LABEL_86;
              }

              v111 = v281;
              goto LABEL_209;
            }

            if ((*(a1 + 64) - *(v65 + 288)) > 0x3E7 || (v116 = *(v65 + 296), v116 != a8) && v116 != -1)
            {
              v111 = -1;
LABEL_209:
              *(v65 + 264) = v111;
            }
          }

          else
          {
            v58 = v275;
          }
        }

LABEL_86:
        v65 = *(a1 + 12640);
      }

      while (v65);
      if (v291 || !v293)
      {
        if (!v291)
        {
          goto LABEL_326;
        }
      }

      else
      {
        *(v293 + 200) = a8;
        *(a1 + 100) = *(a1 + 64);
      }

LABEL_327:
      if ((*(v59 + 2) & 2) != 0)
      {
        ++v16[1];
      }

      v56 = v295;
      if ((v297 & 1) == 0 && (*(v59 + 2) & 2) == 0)
      {
        if (!IsD2D)
        {
          v164 = CacheGroupForName(a1, v333, v337);
          if (v164)
          {
            for (i = v164[2]; i; i = *i)
            {
              if (SameNameRecordAnswersQuestion((i + 8), 0, buf) && *(i + 20) <= 0x400u && !*(i + 72) && v56 != (i + 72))
              {
                *v56 = i;
                v56 = (i + 72);
              }
            }
          }
        }

        for (j = *(a1 + 192); j; j = *(j + 8))
        {
          if (!QuestionSendsMDNSQueriesViaUnicast(j) && *(j + 212) >= 1 && !*(j + 40) && *(a1 + 64) - *(j + 256) >= 251)
          {
            v163 = *(j + 136);
            if (!v163 || v163 == a8)
            {
              if (!*(j + 48) && v264 != (j + 48) && *(j + 342) == v335 && *(j + 344) == v336 && *(j + 200) == v333 && SameDomainNameBytes((j + 376), v337))
              {
                *v264 = j;
                v264 = (j + 48);
              }

              v57 = &unk_100178000;
            }
          }
        }
      }

      if (++v53 >= *(v59 + 4))
      {
        v167 = v303;
        a3 = v299;
        goto LABEL_363;
      }
    }
  }

  v282 = 0;
  v167 = &v304;
  v58 = (v296 + 6);
  v59 = v296;
LABEL_363:
  for (k = *(a1 + 12616); k; k = *k)
  {
    if (k[33])
    {
      if (!k[32] && v167 != k + 32)
      {
        *v167 = k;
        k[34] = 0;
        v167 = k + 32;
      }
    }
  }

  v303 = v167;
  AddAdditionalsToResponseList(a1, v304, &v303, a8);
  if (*(v59 + 6))
  {
    v172 = 0;
    do
    {
      v173 = GetLargeResourceRecord(a1, v59, v58, a3, a8, 192, a1 + 37912);
      if (!v173)
      {
        v298 = 0;
        goto LABEL_499;
      }

      v174 = v173;
      if (*v15 != 240)
      {
        v175 = v304;
        if (v304)
        {
          do
          {
            if ((*(v175 + 264) || *(v175 + 272)) && *(a1 + 37936) == *(v175 + 24) && resource_records_have_same_dnssec_rr_category(*(a1 + 37976), *(v175 + 64)) && *(a1 + 37924) == *(v175 + 12) && *(a1 + 37926) == *(v175 + 14) && *(a1 + 37932) == *(v175 + 20) && *(a1 + 37940) == *(v175 + 28) && SameRDataBody(a1 + 37920, (*(v175 + 48) + 4), SameDomainName) && SameDomainNameBytes(*(a1 + 37952), *(v175 + 40)) && *(a1 + 37928) >= *(v175 + 16) >> 1)
            {
              ++*v287;
              *(v175 + 264) = 0;
              *(v175 + 272) = 0;
            }

            v175 = *(v175 + 256);
          }

          while (v175);
        }

        for (m = *(a1 + 12616); m; m = *m)
        {
          if (m[26] == a8 && *(a1 + 37936) == *(m + 6) && resource_records_have_same_dnssec_rr_category(*(a1 + 37976), m[8]) && *(a1 + 37924) == *(m + 6) && *(a1 + 37926) == *(m + 7) && *(a1 + 37932) == *(m + 10) && *(a1 + 37940) == *(m + 7) && SameRDataBody(a1 + 37920, (m[6] + 4), SameDomainName) && SameDomainNameBytes(*(a1 + 37952), m[5]) && *(a1 + 37928) >= *(m + 4) >> 1)
          {
            if (*v274 == 6)
            {
              if (*(m + 59) == *(v274 + 1) && *(m + 60) == *(v274 + 2) && *(m + 61) == *(v274 + 3) && *(m + 62) == *(v274 + 4))
              {
                *(m + 236) = 0;
                *(m + 244) = 0;
              }
            }

            else if (*v274 == 4 && *(m + 58) == *(v274 + 1))
            {
              *(m + 58) = 0;
            }

            if (!*(m + 58) && !*&vorr_s8(*(m + 236), *&vextq_s8(*(m + 236), *(m + 236), 8uLL)))
            {
              ++*v287;
              m[26] = 0;
              *(m + 195) = 0;
            }
          }
        }

        IdenticalRecordInCache = FindIdenticalRecordInCache(a1, a1 + 37920);
        if (!IsD2D)
        {
          v178 = v302;
          if (v302)
          {
            v179 = &v302;
            do
            {
              if (v178[4] == a8 && *(a1 + 37936) == v178[3].i32[0] && resource_records_have_same_dnssec_rr_category(*(a1 + 37976), *&v178[8]) && *(a1 + 37924) == v178[1].u16[2] && *(a1 + 37926) == v178[1].u16[3] && *(a1 + 37932) == v178[2].u16[2] && *(a1 + 37940) == v178[3].i32[1] && SameRDataBody(a1 + 37920, (*&v178[6] + 4), SameDomainName) && SameDomainNameBytes(*(a1 + 37952), *&v178[5]))
              {
                *v179 = v178[9];
                v178[9] = 0;
              }

              else
              {
                v179 = &v178[9];
              }

              v178 = *v179;
            }

            while (*v179);
          }
        }

        a3 = v299;
        if (!IdenticalRecordInCache)
        {
          v180 = v301;
          if (v301)
          {
            v181 = &v301;
            do
            {
              v182 = RecordAnswersQuestion(a1 + 37920, 0, v180);
              v183 = (v180 + 48);
              if (v182)
              {
                *v181 = *v183;
                *v183 = 0;
              }

              else
              {
                v181 = (v180 + 48);
              }

              v180 = *v181;
            }

            while (*v181);
          }
        }
      }

      *v15 = 0;
      *(a1 + 38022) = 0;
      v184 = *(a1 + 37976);
      if (v184)
      {
        ref_count_obj_release(v184);
        *(a1 + 37976) = 0;
      }

      ++v172;
      v58 = v174;
    }

    while (v172 < *(v59 + 6));
  }

  v185 = v304;
  if (!v304)
  {
    v298 = 0;
    v205 = 1;
    v187 = v282;
    if (!v282)
    {
      goto LABEL_498;
    }

LABEL_497:
    if (*(a1 + 76))
    {
      goto LABEL_498;
    }

    v240 = *(a1 + 84);
    v241 = *(a1 + 64);
    if (v240)
    {
      v242 = v187 + 49;
      if (v240 - v241 >= ((v187 + 49) / 0x32u))
      {
        goto LABEL_498;
      }
    }

    else
    {
      v242 = v187 + 49;
    }

    do
    {
      v243 = arc4random() & 0x1FFF;
    }

    while (v243 > 0x1388);
    v244 = (v243 + v242) / 0x32 + v241;
    if (v244 <= 1)
    {
      v244 = 1;
    }

    *(a1 + 84) = v244;
    if (!v205)
    {
      goto LABEL_585;
    }

LABEL_499:
    v166 = 0;
    goto LABEL_500;
  }

  v186 = v304;
  v170 = a1 + 19924;
  v171 = IsDNSMulticast;
  v187 = v282;
  do
  {
    v188 = v186[34];
    if (v188 && !*(v188 + 264) && !*(v188 + 272))
    {
      v186[33] = 0;
      v186[34] = 0;
    }

    v186 = v186[32];
  }

  while (v186);
  v189 = 0;
  while (2)
  {
    v190 = *(v185 + 264);
    if (v190)
    {
      v191 = *(a1 + 64);
      v193 = IsDNSMulticast && v191 - *(v185 + 288) >= (1000 * *(v185 + 16)) >> 2;
      if (v190 == -2 && v193 != 0)
      {
        ++*(a1 + 19956);
        v190 = -1;
        *(v185 + 264) = -1;
      }

      if (v190 == -2)
      {
        ++*(a1 + 19948);
        *(a1 + 100) = v191;
        v196 = (v185 + 208);
        v197 = *(v185 + 208);
        if (!v197 || v197 == a8)
        {
          *(v185 + 208) = a8;
          *(v185 + 195) = 1;
          goto LABEL_471;
        }

        goto LABEL_482;
      }

      if (v190 == -1)
      {
        ++*(a1 + 19952);
LABEL_468:
        *(a1 + 100) = v191;
        v196 = (v185 + 208);
        v198 = *(v185 + 208);
        if (v198 && v198 != a8)
        {
          goto LABEL_482;
        }

        *v196 = a8;
LABEL_471:
        if (*v274 != 6)
        {
          if (*v274 == 4)
          {
            v199 = *(v185 + 232);
            v200 = *(v274 + 1);
            if (v199)
            {
              if (v199 != v200)
              {
                *(v185 + 232) = -1;
              }
            }

            else
            {
              *(v185 + 232) = v200;
            }
          }

          goto LABEL_483;
        }

        v201 = *(v185 + 236);
        v202 = *(v185 + 240);
        v196 = (v185 + 236);
        v204 = *(v185 + 244);
        v203 = *(v185 + 248);
        if (!(v202 | v201 | v204 | v203))
        {
          *v196 = *(v274 + 4);
          goto LABEL_483;
        }

        if (v201 != *(v274 + 1) || v202 != *(v274 + 2) || v204 != *(v274 + 3) || v203 != *(v274 + 4))
        {
          *(v185 + 244) = -1;
LABEL_482:
          *v196 = -1;
        }

LABEL_483:
        v189 = 1;
      }

      else
      {
        LODWORD(v186) = 1;
        if (v193)
        {
          goto LABEL_468;
        }
      }

      if ((*(v59 + 2) & 2) != 0)
      {
        v187 = 20000;
      }

      else if (*(v185 + 8) == 8)
      {
        v187 = 1000;
      }
    }

    else
    {
      v195 = *(v185 + 272);
      if (v195 && *(v195 + 264) == -1)
      {
        *(v185 + 216) = a8;
      }
    }

    v185 = *(v185 + 256);
    if (v185)
    {
      continue;
    }

    break;
  }

  v298 = v189;
  v205 = v186 == 0;
  if (v187)
  {
    goto LABEL_497;
  }

LABEL_498:
  if (v205)
  {
    goto LABEL_499;
  }

LABEL_585:
  v245 = v59;
  v246 = v304;
  v247 = a1 + 28972;
  if (a8)
  {
    v248 = 4500;
  }

  else
  {
    v248 = 3600;
  }

  *v277 = *v245;
  *(a1 + 28962) = 132;
  *(a1 + 28964) = 0;
  v16 = (a1 + 19924);
  if (a5 != 59668)
  {
    if (v245[2])
    {
      v249 = 0;
      v166 = (a1 + 28972);
      v250 = v296;
      do
      {
        bzero(buf, 0x2B8uLL);
        v251 = getQuestion(v250, v289, v299, a8, buf);
        v16 = (a1 + 19924);
        v289 = v251;
        if (!v251)
        {
          goto LABEL_362;
        }

        if (v246)
        {
          v252 = v246;
          while (*(v252 + 264) != v251)
          {
            v252 = *(v252 + 256);
            if (!v252)
            {
              goto LABEL_598;
            }
          }

          v166 = putQuestion(v277, v166, a1 + 37912, v337, v335, v336);
          if (!v166)
          {
            goto LABEL_362;
          }
        }

LABEL_598:
        ++v249;
        v250 = v296;
      }

      while (v249 < v296[2]);
      v16 = (a1 + 19924);
      if (*(a1 + 28964))
      {
        v248 = 10;
        goto LABEL_602;
      }
    }

    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GenerateUnicastResponse: ERROR! Why no questions?", v170, v171);
LABEL_362:
    v166 = 0;
    goto LABEL_501;
  }

  v166 = (a1 + 28972);
LABEL_602:
  if (!v246)
  {
LABEL_500:
    v16 = (a1 + 19924);
    goto LABEL_501;
  }

  v253 = v246;
  v254 = (a1 + 28960);
  do
  {
    v255 = v166;
    if (!*(v253 + 264))
    {
      goto LABEL_613;
    }

    if (v248 >= *(v253 + 16))
    {
      v256 = *(v253 + 16);
    }

    else
    {
      v256 = v248;
    }

    if (v254[3] || v254[4])
    {
      v257 = 1440;
    }

    else
    {
      v257 = 1440;
      if (!v254[5])
      {
        v257 = 8940;
      }
    }

    v258 = PutResourceRecordTTLWithLimit(v254, v166, v254 + 3, v253 + 8, v256, v247 + v257);
    v254 = (a1 + 28960);
    v166 = v258;
    if (!v258)
    {
      *(a1 + 28962) |= 2u;
LABEL_613:
      v166 = v255;
    }

    v253 = *(v253 + 256);
  }

  while (v253);
  v16 = (a1 + 19924);
  do
  {
    if (*(v246 + 272) && !*(v246 + 264))
    {
      v259 = v248 >= *(v246 + 16) ? *(v246 + 16) : v248;
      if (v254[3] || v254[4])
      {
        v260 = 1440;
      }

      else
      {
        v260 = v254[5] ? 1440 : 8940;
      }

      v261 = PutResourceRecordTTLWithLimit(v254, v166, v254 + 5, v246 + 8, v259, v247 + v260);
      v254 = (a1 + 28960);
      if (v261)
      {
        v166 = v261;
      }
    }

    v246 = *(v246 + 256);
  }

  while (v246);
LABEL_501:
  *v15 = 0;
  *(a1 + 38022) = 0;
  v206 = *(a1 + 37976);
  if (v206)
  {
    ref_count_obj_release(v206);
    *(a1 + 37976) = 0;
  }

  v207 = v304;
  if (v304)
  {
    do
    {
      v208 = v207[32];
      v207[33] = 0;
      v207[34] = 0;
      v207[32] = 0;
      v207 = v208;
    }

    while (v208);
    v304 = 0;
  }

  v209 = v302;
  if (v302)
  {
    v210 = IsD2D == 0;
  }

  else
  {
    v210 = 0;
  }

  if (v210)
  {
    do
    {
      v302 = v209[9];
      v209[9] = 0;
      if ((v296[1] & 2) == 0)
      {
        v220 = *(a1 + 64);
        if (!v209[13].i8[4] || v220 - v209[13].i32[0] >= 750)
        {
          ++v209[13].i8[4];
          v209[13].i32[0] = v220;
          SetNextCacheCheckTimeForRecord(a1, v209);
        }
      }

      v221 = v209[13].u8[4];
      if (v221 < 4)
      {
        goto LABEL_551;
      }

      if (v209[13].i8[5])
      {
        v222 = dword_10016D258 - *(a1 + 64) + 939524096;
        if (v222 >= 7667 && mDNS_LoggingEnabled != 0)
        {
LABEL_548:
          v224 = mDNSLogCategory_Default;
          v225 = ((v222 + 999) / 1000);
          GetRRDisplayString_rdb(&v209[1], (*&v209[6] + 4), (a1 + 47032));
          v263 = v225;
          v16 = (a1 + 19924);
          LogMsgWithLevel(v224, OS_LOG_TYPE_DEFAULT, "ProcessQuery: UnansweredQueries %lu interface %lu TTL %lu mDNS_Reconfirm() for %s", v221, a8, v263, (a1 + 47032));
        }
      }

      else
      {
        v222 = v209[10].i32[0] + 1000 * v209[2].i32[0] - *(a1 + 64);
        if (v222 >= 7667 && (mDNS_LoggingEnabled & 1) != 0)
        {
          goto LABEL_548;
        }
      }

      ++v16[2];
      mDNS_Reconfirm_internal(a1, v209, 0x1388u);
      v226 = v209[12];
      if (!*&v226 || v209[16].i8[2])
      {
        goto LABEL_551;
      }

      v228 = &v209[16] + 4;
      v227 = v209[16].i32[1];
      if (v227 == 6)
      {
        if (!*&vorr_s8(v209[17], *&vextq_s8(*v209[17].i8, *v209[17].i8, 8uLL)))
        {
          goto LABEL_551;
        }
      }

      else if (v227 != 4 || !v209[17].i32[0])
      {
        goto LABEL_551;
      }

      v229 = *(a1 + 64);
      v209[11].i32[0] = v229;
      *(a1 + 92) = v229;
      v209[16].i8[2] = 2;
      v230 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_INFO))
        {
          v235 = *&v226 + 376;
          v236 = (*&v226 + 376);
          while (1)
          {
            if (!v236 || (v237 = *v236, v237 > 0x3F))
            {
LABEL_573:
              v234 = 257;
              goto LABEL_576;
            }

            if (!*v236)
            {
              break;
            }

            v236 += v237 + 1;
            if (&v236[-v235] >= 256)
            {
              goto LABEL_573;
            }
          }

          v234 = (v236 - v235 + 1);
          goto LABEL_576;
        }
      }

      else
      {
        v230 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_INFO))
        {
          v231 = *&v226 + 376;
          v232 = (*&v226 + 376);
          while (1)
          {
            if (!v232 || (v233 = *v232, v233 > 0x3F))
            {
LABEL_566:
              v234 = 257;
              goto LABEL_576;
            }

            if (!*v232)
            {
              break;
            }

            v232 += v233 + 1;
            if (&v232[-v231] >= 256)
            {
              goto LABEL_566;
            }
          }

          v234 = (v232 - v231 + 1);
LABEL_576:
          v238 = *(*&v226 + 342);
          v239 = *(*&v226 + 200);
          *buf = 141559811;
          *v319 = 1752392040;
          *&v319[8] = 1045;
          *&v319[10] = 20;
          v320 = 2101;
          *v321 = v228;
          *&v321[8] = 2160;
          v322 = 1752392040;
          v323 = 1040;
          v324 = v234;
          v325 = 2101;
          v326 = *&v226 + 376;
          v327 = 1024;
          v328 = v238;
          v329 = 1024;
          v330 = v239;
          _os_log_impl(&_mh_execute_header, v230, OS_LOG_TYPE_INFO, "ProcessQuery: Preparing unicast assist query (max unanswered) - %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P %{sensitive, mask.hash, mdnsresponder:domain_name}.*P %{mdns:rrtype}d qhash %x", buf, 0x42u);
        }
      }

LABEL_551:
      v209 = v302;
    }

    while (v302);
  }

  for (n = v301; v301; n = v301)
  {
    v212 = *(n + 56);
    v301 = *(n + 48);
    *(n + 48) = 0;
    v213 = *(a1 + 64);
    v214 = *v274;
    if (v212)
    {
      v215 = 0;
      while (1)
      {
        if (*&v212[v215] == a8)
        {
          v216 = &v212[v215];
          if (*&v212[v215 + 12] == v214)
          {
            break;
          }
        }

        v215 += 16;
        if (v215 == 128)
        {
          goto LABEL_519;
        }
      }
    }

    else
    {
      v212 = malloc_type_calloc(1uLL, 0x80uLL, 0x2A1147ACuLL);
      if (!v212)
      {
        __break(1u);
      }

      *(n + 56) = v212;
LABEL_519:
      v217 = 8;
      v216 = v212;
      while (*v212)
      {
        if (*(v212 + 2) - *(v216 + 2) < 0)
        {
          v216 = v212;
        }

        v212 += 16;
        if (!--v217)
        {
          goto LABEL_526;
        }
      }

      v216 = v212;
    }

LABEL_526:
    *v216 = a8;
    *(v216 + 2) = v213;
    *(v216 + 3) = v214;
  }

  v218 = v300;
  if (v300)
  {
    do
    {
      v219 = *v218;
      free(v218);
      v218 = v219;
    }

    while (v219);
  }

  if (v298)
  {
    DumpPacket(0, 0, "N/A", v274, a5, v265, v273, v296, v299, a8);
  }

  if (v166)
  {
    mDNSSendDNSMessage(a1, v277, v166, a8, 0, 0, v274, a5, 0, 0);
  }
}