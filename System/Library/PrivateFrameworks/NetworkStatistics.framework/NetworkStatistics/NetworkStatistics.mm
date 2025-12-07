id pid_to_uuid(int a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v1 = proc_pidinfo(a1, 17, 1uLL, v4, 56);
  v2 = 0;
  if (v1 == 56)
  {
    v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v4];
  }

  return v2;
}

void NStatSourceSetDescriptionBlock(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  v4 = [v8 delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v6 = objc_alloc_init(NWStatisticsDelegateBlockWrapper);
    [v8 setDelegate:v6];
  }

  v7 = [v8 delegate];
  [v7 setDescriptionBlock:v3];
}

void NStatSourceSetRemovedBlock(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  v4 = [v8 delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v6 = objc_alloc_init(NWStatisticsDelegateBlockWrapper);
    [v8 setDelegate:v6];
  }

  v7 = [v8 delegate];
  [v7 setRemovedBlock:v3];
}

void NStatSourceSetCountsBlock(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  v4 = [v8 delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v6 = objc_alloc_init(NWStatisticsDelegateBlockWrapper);
    [v8 setDelegate:v6];
  }

  v7 = [v8 delegate];
  [v7 setCountsBlock:v3];
}

uint64_t printf_domain(uint64_t a1, uint64_t a2)
{
  if (printf_domain_once != -1)
  {
    printf_domain_cold_1();
  }

  return printf_domain_printfdomain;
}

uint64_t maskLeadingBitsCount(uint64_t a1)
{
  v2 = *(a1 + 1);
  if (v2 == 2)
  {
    v4 = 4;
    v3 = 4;
  }

  else
  {
    if (v2 != 30)
    {
      return 0;
    }

    v3 = 16;
    v4 = 8;
  }

  result = 0;
  v6 = (a1 + v4);
  v7 = 8 * v3;
  while (1)
  {
    v9 = *v6++;
    v8 = v9;
    if (v9 != 255)
    {
      break;
    }

    result += 8;
    if (v7 == result)
    {
      return result;
    }
  }

  if (v8 <= 239)
  {
    switch(v8)
    {
      case 128:
        ++result;
        break;
      case 192:
        result += 2;
        break;
      case 224:
        result += 3;
        break;
    }
  }

  else if (v8 > 251)
  {
    if (v8 == 254)
    {
      result += 7;
    }

    else if (v8 == 252)
    {
      result += 6;
    }
  }

  else if (v8 == 240)
  {
    result += 4;
  }

  else if (v8 == 248)
  {
    result += 5;
  }

  return result;
}

uint64_t xprint_ifindex_arginfo(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a2)
  {
    *a3 = 1;
  }

  return 1;
}

uint64_t xprint_ifindex(FILE *a1, uint64_t a2, unsigned int **a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = **a3;
  v6[0] = 0;
  if_indextoname(v4, v6);
  if (!v6[0])
  {
    return fprintf(a1, "%d");
  }

  v6[16] = 0;
  return fprintf(a1, "%s");
}

uint64_t xprint_sockaddr_arginfo(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a2)
  {
    *a3 = 32;
  }

  return 1;
}

uint64_t xprint_sockaddr(FILE *a1, uint64_t a2, unsigned __int8 ***a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = **a3;
  if (v4)
  {
    v5 = *v4;
    if (v5 < 2)
    {
      return 0;
    }

    v8 = v4[1];
    if (v8 > 0x11)
    {
      if (v8 == 18)
      {
        if (v5 >= 8)
        {
          v11 = v4[5];
          if (v11 + v4[6] + v4[7] + 8 <= v5)
          {
            if (v4[6])
            {
              v12 = 0;
              LODWORD(v6) = 0;
              do
              {
                if (v12)
                {
                  v13 = fprintf(a1, ":%x");
                }

                else
                {
                  v13 = fprintf(a1, "%x");
                }

                v6 = (v13 + v6);
                ++v12;
              }

              while (v12 < v4[6]);
              LODWORD(v11) = v4[5];
            }

            else
            {
              v6 = 0;
            }

            if (v11)
            {
              v14 = fprintf(a1, "%s%*s");
            }

            else
            {
              if (!*(v4 + 1))
              {
                return v6;
              }

              if (v6)
              {
                v14 = fprintf(a1, "%%%d");
              }

              else
              {
                v14 = fprintf(a1, "%d");
              }
            }

            return (v14 + v6);
          }
        }

        return 0;
      }

      if (v8 != 30)
      {
        return fprintf(a1, "<unsupported af: %u>");
      }

      goto LABEL_14;
    }

    if (v8 != 1)
    {
      if (v8 != 2)
      {
        return fprintf(a1, "<unsupported af: %u>");
      }

LABEL_14:
      if (!getnameinfo(v4, v5, v16, 0x39u, v15, 6u, 10))
      {
        if (!*(v4 + 1))
        {
          return fprintf(a1, "%s");
        }

        if (v4[1] == 2)
        {
          v9 = "%s:%s";
        }

        else
        {
          v9 = "%s.%s";
        }

        return fprintf(a1, v9, v16, v15);
      }

      return 0;
    }

    if (v5 == 2)
    {
      return 0;
    }

    return fprintf(a1, "%.*s");
  }

  else
  {

    return fprintf(a1, "<NULL>");
  }
}

_printf_domain *__printf_domain_block_invoke()
{
  result = new_printf_domain();
  printf_domain_printfdomain = result;
  if (result)
  {
    register_printf_domain_render_std(result, "M");
    register_printf_domain_function(printf_domain_printfdomain, 78, xprint_sockaddr, xprint_sockaddr_arginfo, 0);
    register_printf_domain_function(printf_domain_printfdomain, 64, xprint_cfobject, xprint_cfobject_arginfo, 0);
    v1 = printf_domain_printfdomain;

    return register_printf_domain_function(v1, 73, xprint_ifindex, xprint_ifindex_arginfo, 0);
  }

  return result;
}

uint64_t xprint_cfobject(FILE *a1, uint64_t a2, CFTypeRef **a3)
{
  v4 = **a3;
  if (v4)
  {
    v5 = CFGetTypeID(**a3);
    if (v5 == CFDictionaryGetTypeID() || (v6 = CFGetTypeID(v4), v6 == CFArrayGetTypeID()))
    {
      v7 = fprintf(a1, "\n");
      return xprint_cfobject_container(a1, 2, v4) + v7;
    }

    else
    {
      xprint_cfobject_leaf(a1, v4);
      return 0;
    }
  }

  else
  {

    return fprintf(a1, "<NULL>");
  }
}

uint64_t xprint_cfobject_arginfo(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a2)
  {
    *a3 = 32;
  }

  return 1;
}

id NStatGetLog(uint64_t a1)
{
  if (NStatGetLog_pred != -1)
  {
    NStatGetLog_cold_1();
  }

  v2 = sNstatLogHandle;

  return v2;
}

void __NStatGetLog_block_invoke()
{
  v34 = *MEMORY[0x277D85DE8];
  v0 = os_log_create("com.apple.networkstatistics", "NetworkStatistics");
  v1 = sNstatLogHandle;
  sNstatLogHandle = v0;

  if (sNstatLogHandle)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:@"/Library/Preferences/com.apple.NetworkStatistics.plist"];
    if (v2)
    {
      v3 = [MEMORY[0x277CCAC58] propertyListWithData:v2 options:0 format:0 error:0];
      if (v3)
      {
        v4 = getpid();
        if (proc_name(v4, buffer, 0x64u))
        {
          v25 = v2;
          v5 = 0x277CCA000uLL;
          v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:buffer];
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v24 = v3;
          v7 = v3;
          v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v29;
            v26 = v6;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v29 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v28 + 1) + 8 * i);
                v13 = [v7 valueForKey:v12];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  if ([v12 isEqualToString:@"log_level"])
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 integerValue] >= 7)
                    {
                      defaultMgrFlags |= 0x10u;
                    }
                  }

                  else if (([v12 isEqualToString:@"all"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", v6))
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v27 = v6;
                      v14 = v5;
                      v15 = v13;
                      v16 = [v15 objectForKeyedSubscript:@"traceFilePrefix"];
                      v17 = [v15 objectForKeyedSubscript:@"logVerbose"];
                      v18 = [v15 objectForKeyedSubscript:@"traceVerbose"];

                      v5 = v14;
                      if (v16)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v19 = *(v14 + 3240);
                          v23 = getpid();
                          v20 = v19;
                          v5 = v14;
                          v21 = [v20 stringWithFormat:@"%@.%@.%d", v16, v27, v23];
                          v22 = traceFilePrefix;
                          traceFilePrefix = v21;
                        }
                      }

                      if (v17)
                      {
                        defaultMgrFlags |= 0x10u;
                      }

                      if (v18)
                      {
                        defaultMgrFlags |= 0x80u;
                      }

                      v6 = v26;
                    }
                  }
                }
              }

              v9 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
            }

            while (v9);
          }

          v3 = v24;
          v2 = v25;
        }
      }
    }
  }
}

const char *msgTypeToString(int a1)
{
  if (a1 <= 1006)
  {
    if (a1 <= 1002)
    {
      if (a1 <= 1000)
      {
        if (!a1)
        {
          return "success";
        }

        if (a1 == 1)
        {
          return "error";
        }

        return "???";
      }

      if (a1 == 1001)
      {
        return "add-src";
      }

      else
      {
        return "add-all";
      }
    }

    if (a1 <= 1004)
    {
      if (a1 == 1003)
      {
        return "rem-src";
      }

      else
      {
        return "query-src";
      }
    }

    if (a1 != 1005)
    {
      return "set-filter";
    }

    return "src-desc";
  }

  if (a1 > 10002)
  {
    if (a1 > 10004)
    {
      if (a1 == 10005)
      {
        return "sysinfo-counts";
      }

      if (a1 == 10006)
      {
        return "src-update";
      }

      return "???";
    }

    if (a1 != 10003)
    {
      return "src-counts";
    }

    return "src-desc";
  }

  if (a1 <= 10000)
  {
    if (a1 == 1007)
    {
      return "get-update";
    }

    if (a1 == 1008)
    {
      return "subscribe-sysinfo";
    }

    return "???";
  }

  if (a1 == 10001)
  {
    return "src-added";
  }

  else
  {
    return "src-removed";
  }
}

void NStatMgrVTraceF(void *a1, const char *a2, va_list a3)
{
  v5 = a1;
  v6 = v5;
  if (v5 && ([v5 mgrflags] & 0x80) != 0)
  {
    v7 = objc_autoreleasePoolPush();
    __ret = 0;
    if (printf_domain_once != -1)
    {
      printf_domain_cold_1();
    }

    vasxprintf(&__ret, printf_domain_printfdomain, 0, a2, a3);
    if (__ret)
    {
      [v6 trace:?];
      free(__ret);
    }

    objc_autoreleasePoolPop(v7);
  }
}

void *NStatSourceCopyProperty(void *a1, uint64_t a2)
{
  v3 = [a1 currentSnapshot];
  v4 = [v3 traditionalDictionary];
  v5 = [v4 objectForKeyedSubscript:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 UUIDString];

    v5 = v6;
  }

  return v5;
}

uint64_t NStatSourceCopyProperties(void *a1)
{
  v1 = [a1 currentSnapshot];
  v2 = [v1 traditionalDictionary];

  return v2;
}

uint64_t NStatSourceCopyCounts(void *a1)
{
  v1 = [a1 currentSnapshot];
  v2 = [v1 traditionalDictionary];

  return v2;
}

void NStatSourceSetEventsBlock(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  v4 = [v8 delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v6 = objc_alloc_init(NWStatisticsDelegateBlockWrapper);
    [v8 setDelegate:v6];
  }

  v7 = [v8 delegate];
  [v7 setEventsBlock:v3];
}

void NStatSourceRemove(void *a1)
{
  v1 = a1;
  v2 = [v1 manager];
  [v2 removeSource:v1];
}

NWStatisticsRouteSource *NStatManagerCreateRouteSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [NWStatisticsRouteSource alloc];

  return [(NWStatisticsRouteSource *)v8 initWithManager:a1 destination:a2 mask:a3 interface:a4];
}

NWStatisticsInterfaceSource *NStatManagerCreateInterfaceSource(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = [NWStatisticsInterfaceSource alloc];

  return [(NWStatisticsInterfaceSource *)v6 initWithManager:a1 interface:a2 threshold:a3];
}

uint64_t NStatManagerDestroy(void *a1)
{
  [a1 invalidate];
  [a1 setDelegate:0];

  return [a1 setStrongDelegate:0];
}

NWStatisticsManager *NStatManagerCreate(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_alloc_init(NWStatisticsDelegateBlockWrapper);
  v7 = v6;
  if (v6)
  {
    [(NWStatisticsDelegateBlockWrapper *)v6 setAddedBlock:v5];
    v8 = [[NWStatisticsManager alloc] initWithQueue:v4];
    [(NWStatisticsManager *)v8 setStrongDelegate:v7];
    [(NWStatisticsManager *)v8 setDelegate:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void NStatSourceSetFilter(void *a1, uint64_t a2)
{
  v3 = [a1 manager];
  [v3 setFilter:a2];
}

void NStatManagerSetQueuePriority(uint64_t a1)
{
  v1 = NStatGetLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    NStatManagerSetQueuePriority_cold_1(v1);
  }
}

BOOL NStatRouteValuesForIPv4Host(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = 0;
  if (a1 && a3)
  {
    v8 = [NWSSnapshotSource routeSnapshotForIPv4Host:a1 viaInterfaceIndex:a2];
    v9 = v8;
    v7 = v8 != 0;
    if (v8)
    {
      [v8 rttMinimum];
      *a3 = v10;
      [v9 rttAverage];
      *(a3 + 8) = v11;
      [v9 rttVariation];
      *(a3 + 16) = v12;
      *(a3 + 24) = [v9 connectAttempts];
      *(a3 + 28) = [v9 connectSuccesses];
    }
  }

  objc_autoreleasePoolPop(v6);
  return v7;
}

BOOL NStatRouteValuesForIPv6Host(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = 0;
  if (a1 && a3)
  {
    v8 = [NWSSnapshotSource routeSnapshotForIPv6Host:a1 viaInterfaceIndex:a2];
    v9 = v8;
    v7 = v8 != 0;
    if (v8)
    {
      [v8 rttMinimum];
      *a3 = v10;
      [v9 rttAverage];
      *(a3 + 8) = v11;
      [v9 rttVariation];
      *(a3 + 16) = v12;
      *(a3 + 24) = [v9 connectAttempts];
      *(a3 + 28) = [v9 connectSuccesses];
    }
  }

  objc_autoreleasePoolPop(v6);
  return v7;
}

uint64_t xprint_cfobject_container(FILE *a1, int a2, CFTypeRef cf)
{
  context[0] = 0;
  v13 = a1;
  context[1] = a2;
  v14 = 0;
  v6 = CFGetTypeID(cf);
  if (v6 == CFDictionaryGetTypeID())
  {
    if (CFDictionaryGetCount(cf))
    {
      CFDictionaryApplyFunction(cf, xprint_cfobject_dictionary, context);
      return v14;
    }
  }

  else
  {
    v7 = CFGetTypeID(cf);
    if (v7 != CFArrayGetTypeID())
    {
      return v14;
    }

    Count = CFArrayGetCount(cf);
    if (Count)
    {
      v15.length = Count;
      v15.location = 0;
      CFArrayApplyFunction(cf, v15, xprint_cfobject_array, context);
      return v14;
    }
  }

  if (a2 >= 80)
  {
    v9 = 80;
  }

  else
  {
    v9 = a2;
  }

  v10 = fprintf(a1, "%.*s", v9, "                                                                                ");
  return (fprintf(a1, "<empty>") + v10);
}

uint64_t xprint_cfobject_leaf(FILE *a1, const __CFString *a2)
{
  if (a2)
  {
    v4 = CFGetTypeID(a2);
    if (v4 == CFStringGetTypeID())
    {
      CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
      if (CStringPtr)
      {
        return fprintf(a1, "%s", CStringPtr);
      }

      Length = CFStringGetLength(a2);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v13 = malloc_type_malloc(MaximumSizeForEncoding, 0x781CFB60uLL);
      if (v13)
      {
        v14 = v13;
        if (CFStringGetCString(a2, v13, MaximumSizeForEncoding, 0x8000100u))
        {
          v15 = fprintf(a1, "%s", v14);
        }

        else
        {
          v15 = 0;
        }

        free(v14);
        return v15;
      }

      return 0;
    }

    v8 = CFGetTypeID(a2);
    if (v8 == CFDataGetTypeID())
    {
      v9 = CFStringCreateFromExternalRepresentation(*MEMORY[0x277CBECE8], a2, 0x8000100u);
      if (!v9)
      {
        return 0;
      }

LABEL_23:
      v18 = v9;
      v15 = xprint_cfobject_leaf(a1, v9);
      CFRelease(v18);
      return v15;
    }

    v10 = CFGetTypeID(a2);
    if (v10 != CFBooleanGetTypeID())
    {
      v16 = CFGetTypeID(a2);
      if (v16 == CFNumberGetTypeID())
      {
        switch(CFNumberGetType(a2))
        {
          case kCFNumberSInt8Type:
            LOBYTE(valuePtr) = 0;
            CFNumberGetValue(a2, kCFNumberSInt8Type, &valuePtr);
            v17 = fprintf(a1, "(SInt8) %hhd");
            break;
          case kCFNumberSInt16Type:
            LOWORD(valuePtr) = 0;
            CFNumberGetValue(a2, kCFNumberSInt16Type, &valuePtr);
            v17 = fprintf(a1, "(SInt16) %hd");
            break;
          case kCFNumberSInt32Type:
            LODWORD(valuePtr) = 0;
            CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr);
            v17 = fprintf(a1, "(SInt32) %d");
            break;
          case kCFNumberSInt64Type:
            valuePtr = 0;
            CFNumberGetValue(a2, kCFNumberSInt64Type, &valuePtr);
            v17 = fprintf(a1, "(SInt64) %lld");
            break;
          case kCFNumberFloat32Type:
            LODWORD(valuePtr) = 0;
            CFNumberGetValue(a2, kCFNumberFloat32Type, &valuePtr);
            v17 = fprintf(a1, "(Float32) %f");
            break;
          case kCFNumberFloat64Type:
            valuePtr = 0;
            CFNumberGetValue(a2, kCFNumberFloat64Type, &valuePtr);
            v17 = fprintf(a1, "(Float64) %lf");
            break;
          case kCFNumberCharType:
            LOBYTE(valuePtr) = 0;
            CFNumberGetValue(a2, kCFNumberCharType, &valuePtr);
            v17 = fprintf(a1, "(Char) %hhd");
            break;
          case kCFNumberShortType:
            LOWORD(valuePtr) = 0;
            CFNumberGetValue(a2, kCFNumberShortType, &valuePtr);
            v17 = fprintf(a1, "(Short) %hd");
            break;
          case kCFNumberIntType:
            LODWORD(valuePtr) = 0;
            CFNumberGetValue(a2, kCFNumberIntType, &valuePtr);
            v17 = fprintf(a1, "(Int) %d");
            break;
          case kCFNumberLongType:
            valuePtr = 0;
            CFNumberGetValue(a2, kCFNumberLongType, &valuePtr);
            v17 = fprintf(a1, "(Long) %ld");
            break;
          case kCFNumberLongLongType:
            valuePtr = 0;
            CFNumberGetValue(a2, kCFNumberLongLongType, &valuePtr);
            v17 = fprintf(a1, "(LongLong) %lld");
            break;
          case kCFNumberFloatType:
            LODWORD(valuePtr) = 0;
            CFNumberGetValue(a2, kCFNumberFloatType, &valuePtr);
            v17 = fprintf(a1, "(Float) %f");
            break;
          case kCFNumberDoubleType:
            valuePtr = 0;
            CFNumberGetValue(a2, kCFNumberDoubleType, &valuePtr);
            v17 = fprintf(a1, "(Double) %lf");
            break;
          case kCFNumberCFIndexType:
            valuePtr = 0;
            CFNumberGetValue(a2, kCFNumberCFIndexType, &valuePtr);
            v17 = fprintf(a1, "(CFIndex) %ld");
            break;
          default:
            goto LABEL_22;
        }

        return v17;
      }

LABEL_22:
      v9 = CFCopyDescription(a2);
      if (!v9)
      {
        return 0;
      }

      goto LABEL_23;
    }

    if (CFBooleanGetValue(a2))
    {
      v7 = "True";
    }

    else
    {
      v7 = "False";
    }
  }

  else
  {
    v7 = "<NULL>";
  }

  return fprintf(a1, v7);
}

uint64_t xprint_cfobject_dictionary(const __CFString *cf, __CFString *a2, uint64_t a3)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFStringGetTypeID())
    {
      v21.length = CFStringGetLength(cf);
      v21.location = 0;
      if (CFStringFindWithOptions(cf, @"password", v21, 1uLL, 0))
      {
        a2 = @"<hidden>";
      }
    }
  }

  v7 = *(a3 + 4);
  if (v7 >= 80)
  {
    v7 = 80;
  }

  *(a3 + 16) += 4 * fprintf(*(a3 + 8), "%.*s", v7, "                                                                                ");
  if (a2 && ((v8 = CFGetTypeID(a2), v8 == CFDictionaryGetTypeID()) || (v9 = CFGetTypeID(a2), v9 == CFArrayGetTypeID())))
  {
    v10 = xprint_cfobject_leaf(*(a3 + 8), cf);
    v11 = *(a3 + 8);
    *(a3 + 16) += 4 * v10;
    v12 = fprintf(v11, "\n");
    v13 = *(a3 + 8);
    *(a3 + 16) += 4 * v12;
    result = xprint_cfobject_container(v13, *(a3 + 4) + 2, a2);
  }

  else
  {
    v15 = xprint_cfobject_leaf(*(a3 + 8), cf);
    v16 = *(a3 + 8);
    *(a3 + 16) += 4 * v15;
    v17 = fprintf(v16, " : ");
    v18 = *(a3 + 8);
    *(a3 + 16) += 4 * v17;
    v19 = xprint_cfobject_leaf(v18, a2);
    v20 = *(a3 + 8);
    *(a3 + 16) += 4 * v19;
    result = fprintf(v20, "\n");
  }

  *(a3 + 16) += 4 * result;
  return result;
}

uint64_t xprint_cfobject_array(const __CFString *a1, int *a2)
{
  v5 = *a2;
  v4 = a2[1];
  ++*a2;
  if (v4 >= 80)
  {
    v4 = 80;
  }

  *(a2 + 2) += 4 * fprintf(*(a2 + 1), "%.*s", v4, "                                                                                ");
  if (a1 && ((v6 = CFGetTypeID(a1), v6 == CFDictionaryGetTypeID()) || (v7 = CFGetTypeID(a1), v7 == CFArrayGetTypeID())))
  {
    v8 = fprintf(*(a2 + 1), "%d\n", v5);
    v9 = *(a2 + 1);
    *(a2 + 2) += 4 * v8;
    result = xprint_cfobject_container(v9, a2[1] + 2, a1);
  }

  else
  {
    v11 = fprintf(*(a2 + 1), "%d : ", v5);
    v12 = *(a2 + 1);
    *(a2 + 2) += 4 * v11;
    v13 = xprint_cfobject_leaf(v12, a1);
    v14 = *(a2 + 1);
    *(a2 + 2) += 4 * v13;
    result = fprintf(v14, "\n");
  }

  *(a2 + 2) += 4 * result;
  return result;
}

void sub_25BA447CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25BA44B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25BA4A744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25BA4ABD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25BA4C550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

__CFString *attributionReasonString(unsigned int a1)
{
  if (a1 > 6)
  {
    return @"reason-unknown-type";
  }

  else
  {
    return *(&off_27996E1B8 + a1);
  }
}

__CFString *sockaddrForLogging(const sockaddr *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a1 && !getnameinfo(a1, a1->sa_len, v4, 0x39u, v3, 6u, 10))
  {
    v4[56] = 0;
    v3[5] = 0;
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s:%s", v4, v3];
  }

  else
  {
    v1 = @"?";
  }

  return v1;
}

BOOL sockaddrsHavePortDiffOnly(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  if (v2 != *(a2 + 1))
  {
    return 0;
  }

  if (v2 == 30)
  {
    if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if (v2 != 2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  return *(a1 + 2) != *(a2 + 2);
}

void sub_25BA65B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id pid_to_process_name(int a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  buffer = 0u;
  v6 = 0u;
  if (proc_pidinfo(a1, 13, 1uLL, &buffer, 64) == 64)
  {
    v3 = v6;
    v4 = 0;
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v3];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id pid_to_uuid_string(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 0;
  memset(buffer, 0, sizeof(buffer));
  v1 = proc_pidinfo(a1, 17, 1uLL, buffer, 56);
  v2 = 0;
  if (v1 == 56)
  {
    memset(v4, 0, 37);
    uuid_unparse_upper(buffer, v4);
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
  }

  return v2;
}

BOOL pid_is_valid(int a1)
{
  v3 = *MEMORY[0x277D85DE8];
  memset(v2, 0, sizeof(v2));
  return proc_pidinfo(a1, 13, 1uLL, v2, 64) == 64;
}

uint64_t uuid_to_pid(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  *v13 = 0x600000001;
  *count = 0;
  v9 = 4;
  if (sysctl(v13, 2u, count, &v9, 0, 0) < 0)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    if (!*count || (*count & 0x80000000) != 0 || (v2 = malloc_type_calloc(*count, 4uLL, 0x327C723AuLL)) == 0)
    {
      __break(1u);
    }

    v3 = v2;
    *uu2 = 0;
    v12 = 0;
    [v1 getUUIDBytes:uu2];
    v4 = proc_listallpids(v3, 4 * *count);
    if (v4 < 1)
    {
LABEL_10:
      v7 = 0xFFFFFFFFLL;
    }

    else
    {
      v5 = v4;
      v6 = v3;
      while (1)
      {
        memset(&count[4], 0, 56);
        if (proc_pidinfo(*v6, 17, 1uLL, &count[4], 56) == 56 && !uuid_compare(&count[4], uu2))
        {
          break;
        }

        ++v6;
        if (!--v5)
        {
          goto LABEL_10;
        }
      }

      v7 = *v6;
    }

    free(v3);
  }

  return v7;
}

uint64_t pid_to_coalitionid(int a1)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  if (proc_pidinfo(a1, 20, 1uLL, v2, 40) == 40)
  {
    return *&v2[0];
  }

  else
  {
    return 1;
  }
}

id pid_to_coalition_bundleid(int a1)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v1 = 0;
  if (proc_pidinfo(a1, 20, 1uLL, v9, 40) == 40)
  {
    v2 = *&v9[0];
  }

  else
  {
    v2 = 1;
  }

  if (v2 >= 2)
  {
    v3 = xpc_coalition_copy_info();
    v4 = v3;
    if (v3 && MEMORY[0x25F8758A0](v3) == MEMORY[0x277D86468])
    {
      string = xpc_dictionary_get_string(v4, *MEMORY[0x277D863D0]);
      if (string)
      {
        v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
        goto LABEL_8;
      }

      v7 = xpc_dictionary_get_string(v4, *MEMORY[0x277D863D8]);
      if (v7)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
        v1 = stringByRemovingTrailingUUIDsAndLaunchServicesStuff(v8);

        goto LABEL_8;
      }
    }

    v1 = 0;
LABEL_8:
  }

  return v1;
}

id stringByRemovingTrailingUUIDsAndLaunchServicesStuff(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || (v3 = [v1 length]) == 0)
  {
    v9 = 0;
    goto LABEL_19;
  }

  v4 = v3;
  v5 = [v2 characterAtIndex:v3 - 1];
  v6 = [@"com.apple.xpc.launchd.oneshot" length];
  if ((v5 - 48) < 0xA || (v5 - 65) <= 5)
  {
    if (stringByRemovingTrailingUUIDsAndLaunchServicesStuff_pred != -1)
    {
      stringByRemovingTrailingUUIDsAndLaunchServicesStuff_cold_1();
    }

    v8 = [stringByRemovingTrailingUUIDsAndLaunchServicesStuff_regex stringByReplacingMatchesInString:v2 options:0 range:0 withTemplate:{objc_msgSend(v2, "length"), &stru_286D30F78}];
    goto LABEL_18;
  }

  if (v4 <= v6 || [v2 characterAtIndex:v6 - 1] != 116 || !objc_msgSend(v2, "hasPrefix:", @"com.apple.xpc.launchd.oneshot"))
  {
    v8 = v2;
LABEL_18:
    v9 = v8;
    goto LABEL_19;
  }

  v10 = [v2 componentsSeparatedByString:@"."];
  if ([v10 count] == 7 && (objc_msgSend(v10, "objectAtIndexedSubscript:", 5), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "hasPrefix:", @"0x"), v11, v12))
  {
    v13 = [v10 mutableCopy];
    [v13 removeObjectAtIndex:5];
    v9 = [v13 componentsJoinedByString:@"."];
  }

  else
  {
    v9 = v2;
  }

LABEL_19:

  return v9;
}

void __stringByRemovingTrailingUUIDsAndLaunchServicesStuff_block_invoke()
{
  v3 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(\\.[A-F0-9]{8}-[A-F0-9]{4}-[A-F0-9]{4}-[A-F0-9]{4}-[A-F0-9]{12}\\Z|\\.[0-9]+\\Z|\\A\\[0x[a-fA-F0-9]+-0x[a-fA-F0-9]+\\]\\.)" options:0 error:&v3];
  v1 = v3;
  v2 = stringByRemovingTrailingUUIDsAndLaunchServicesStuff_regex;
  stringByRemovingTrailingUUIDsAndLaunchServicesStuff_regex = v0;
}

id pid_to_coalitionID(int a1)
{
  if (pid_to_coalitionID_onceToken != -1)
  {
    pid_to_coalitionID_cold_1();
  }

  v2 = pid_to_coalition_bundleid(a1);
  if (!v2 || ([sLSPlugInKitProxyClass pluginKitProxyForIdentifier:v2], (v3 = objc_claimAutoreleasedReturnValue()) == 0) || (v4 = v3, objc_msgSend(v3, "containingBundle"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "bundleIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), v5, v4, !v6))
  {
    v6 = v2;
  }

  return v6;
}

void __pid_to_coalitionID_block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  Class = dlopen(gCoreServicesFrameworkPath, 4);
  sCoreServicesDylibHandle = Class;
  if (!Class || ((Class = objc_getClass("LSPlugInKitProxy"), sLSPlugInKitProxyClass = Class, sCoreServicesDylibHandle) ? (v1 = Class == 0) : (v1 = 1), v1))
  {
    v2 = NStatGetLog(Class);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      v3 = 134218240;
      v4 = sCoreServicesDylibHandle;
      v5 = 2048;
      v6 = sLSPlugInKitProxyClass;
      _os_log_impl(&dword_25BA3A000, v2, OS_LOG_TYPE_FAULT, "procinfo utils plugin mMapping dylib lookup failure handle %p plugin proxy class %p", &v3, 0x16u);
    }
  }
}

uint64_t fillClientMetrics(void *a1, unsigned int *a2, uint64_t a3)
{
  if (!a2)
  {
    return 22;
  }

  v3 = a3;
  v5 = MEMORY[0x277CBEB38];
  v6 = a1;
  v7 = objc_alloc_init(v5);
  v8 = v7;
  v9 = *a2;
  if (v9)
  {
    if (v9 != 1)
    {
      v13 = a2[1];
      v12 = a2[2];
      v14 = a2[3];
      v15 = pid_to_process_name(a2[1]);
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
      [v8 setObject:v16 forKeyedSubscript:@"kNtstatMetricId"];

      v17 = [MEMORY[0x277CCABB0] numberWithInt:v13];
      [v8 setObject:v17 forKeyedSubscript:@"kNtstatMetricClientPid"];

      if (v15)
      {
        v18 = v15;
      }

      else
      {
        v18 = @"Unknown";
      }

      [v8 setObject:v18 forKeyedSubscript:@"kNtstatMetricClientName"];
      v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"nstat_metrics   For client id: %d  process name %@ pid %d", v9, v15, v13];
      if (v12)
      {
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
        [v8 setObject:v20 forKeyedSubscript:@"kNtstatMetricClientWatching"];

        v21 = [v19 stringByAppendingFormat:@" watched provider bitmap 0x%x", v12];

        v19 = v21;
      }

      if (v14)
      {
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v14];
        [v8 setObject:v22 forKeyedSubscript:@"kNtstatMetricClientAdded"];

        v23 = [v19 stringByAppendingFormat:@" added provider bitmap 0x%x", v14];

        v19 = v23;
      }

      [v8 setObject:v19 forKeyedSubscript:@"kNtstatMetricIdPretty"];

      goto LABEL_16;
    }

    [v7 setObject:@"kNtstatMetricsGrandTotal" forKeyedSubscript:@"kNtstatMetricId"];
    v10 = @"nstat_metrics   Grand total accumulated from all current and previous NetworkStatistics clients";
  }

  else
  {
    [v7 setObject:@"kNtstatMetricsPrevious" forKeyedSubscript:@"kNtstatMetricId"];
    v10 = @"nstat_metrics   Accumulated from all previous NetworkStatistics clients as they closed down";
  }

  [v8 setObject:v10 forKeyedSubscript:@"kNtstatMetricIdPretty"];
LABEL_16:
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  handleField(v24, "nstat_src_current", a2[4], @"current number of srcs for client", v3);
  handleField(v24, "nstat_src_max", a2[5], @"max number of srcs for client", v3);
  handleField(v24, "nstat_query_request_all", a2[7], @"Client requests for all counts", v3);
  handleField(v24, "nstat_query_request_one", a2[8], @"Client request for counts on a single source", v3);
  handleField(v24, "nstat_query_description_all", a2[9], @"Client requests for all descriptors", v3);
  handleField(v24, "nstat_query_description_one", a2[10], @"Client requests for descriptor on a single source", v3);
  handleField(v24, "nstat_query_update_all", a2[11], @"Client requests for all updates", v3);
  handleField(v24, "nstat_query_update_one", a2[12], @"Client requests for update on a single source", v3);
  handleField(v24, "nstat_remove_src_found", a2[13], @"Client request to remove a source which is still in existence", v3);
  handleField(v24, "nstat_remove_src_missed", a2[14], @"Client request to remove a source which is no longer there", v3);
  handleField(v24, "nstat_query_request_nobuf", a2[15], @"No buffers for counts message send", v3);
  handleField(v24, "nstat_query_request_upgrade", a2[16], @"Successful lock upgrade to handle gone source", v3);
  handleField(v24, "nstat_query_request_noupgrade", a2[17], @"Unsuccessful lock upgrade to handle gone source", v3);
  handleField(v24, "nstat_query_request_nodesc", a2[18], @"Can't send a descriptor for gone source", v3);
  handleField(v24, "nstat_query_request_yield", a2[19], @"Client yields lock due to possibly higher priority processing", v3);
  handleField(v24, "nstat_query_request_limit", a2[20], @"Client requests for all counts hit limit on number returned per batch", v3);
  handleField(v24, "nstat_query_description_nobuf", a2[21], @"No buffers for message send", v3);
  handleField(v24, "nstat_query_description_yield", a2[22], @"Client yields lock due to possibly higher priority processing", v3);
  handleField(v24, "nstat_query_description_limit", a2[23], @"Client requests for all descriptors hit limit on number returned per batch", v3);
  handleField(v24, "nstat_query_details_nobuf", a2[24], @"No buffers for details message send", v3);
  handleField(v24, "nstat_query_details_upgrade", a2[25], @"Successful lock upgrade to handle gone source", v3);
  handleField(v24, "nstat_query_details_noupgrade", a2[26], @"Unsuccessful lock upgrade to handle gone source", v3);
  handleField(v24, "nstat_query_details_yield", a2[27], @"Client yields lock due to possibly higher priority processing", v3);
  handleField(v24, "nstat_query_details_limit", a2[28], @"Client requests for all details hit limit on number returned per batch", v3);
  handleField(v24, "nstat_query_details_all", a2[29], @"Client requests for details on all sources", v3);
  handleField(v24, "nstat_query_details_one", a2[30], @"Client requests for details on a single source", v3);
  handleField(v24, "nstat_query_update_nobuf", a2[31], @"No buffers for update message send", v3);
  handleField(v24, "nstat_query_update_upgrade", a2[32], @"Successful lock upgrade to handle gone source", v3);
  handleField(v24, "nstat_query_update_noupgrade", a2[33], @"Unsuccessful lock upgrade to handle gone source", v3);
  handleField(v24, "nstat_query_update_nodesc", a2[34], @"Can't send a descriptor for gone source", v3);
  handleField(v24, "nstat_query_update_yield", a2[35], @"Client yields lock due to possibly higher priority processing", v3);
  handleField(v24, "nstat_query_update_limit", a2[36], @"Client requests for all updates hit limit on number returned per batch", v3);
  handleField(v24, "nstat_src_add_success", a2[37], @"successful src_add", v3);
  handleField(v24, "nstat_src_add_no_buf", a2[38], @"fail to get buffer for initial src-added", v3);
  handleField(v24, "nstat_src_add_no_src_mem", a2[39], @"fail to get memory for nstat_src structure", v3);
  handleField(v24, "nstat_src_add_send_err", a2[40], @"fail to send initial src-added", v3);
  handleField(v24, "nstat_src_add_while_cleanup", a2[41], @"fail to add because client is in clean up state", v3);
  handleField(v24, "nstat_add_all_tcp_skip_dead", a2[42], @"Skip a dead PCB when adding all TCP", v3);
  handleField(v24, "nstat_add_all_udp_skip_dead", a2[43], @"Skip a dead PCB when adding all UDP", v3);
  handleField(v24, "nstat_src_goodbye_successes", a2[44], @"Successful goodbyes (include cases messages filtered out)", v3);
  handleField(v24, "nstat_src_goodbye_failures", a2[45], @"Failed goodbyes, further qualified by..", v3);
  handleField(v24, "nstat_src_goodbye_sent_details", a2[46], @"Sent a concluding details message", v3);
  handleField(v24, "nstat_src_goodbye_failed_details", a2[47], @"Failed to send a details message", v3);
  handleField(v24, "nstat_src_goodbye_filtered_details", a2[48], @"Skipped trying to send a details message", v3);
  handleField(v24, "nstat_src_goodbye_sent_update", a2[49], @"Sent a concluding update message", v3);
  handleField(v24, "nstat_src_goodbye_failed_update", a2[50], @"Failed to send an update message", v3);
  handleField(v24, "nstat_src_goodbye_filtered_update", a2[51], @"Skipped trying to send an update message", v3);
  handleField(v24, "nstat_src_goodbye_sent_counts", a2[52], @"Sent a concluding counts message", v3);
  handleField(v24, "nstat_src_goodbye_failed_counts", a2[53], @"Failed to send a counts message", v3);
  handleField(v24, "nstat_src_goodbye_filtered_counts", a2[54], @"Skipped trying to send both counts and descriptor messages", v3);
  handleField(v24, "nstat_src_goodbye_sent_description", a2[55], @"Sent a concluding description message", v3);
  handleField(v24, "nstat_src_goodbye_failed_description", a2[56], @"Failed to send a description message", v3);
  handleField(v24, "nstat_src_goodbye_sent_removed", a2[57], @"Sent a concluding removed message", v3);
  handleField(v24, "nstat_src_goodbye_failed_removed", a2[58], @"Failed to send a removed message", v3);
  handleField(v24, "nstat_src_goodbye_filtered_removed", a2[59], @"Skipped on sending a removed message", v3);
  handleField(v24, "nstat_pcb_event", a2[60], @"send pcb event code called, one precursor to the send_event metrics", v3);
  handleField(v24, "nstat_send_event", a2[61], @"send event successful", v3);
  handleField(v24, "nstat_send_event_fail", a2[62], @"send event fail, likely lack of buffers", v3);
  handleField(v24, "nstat_send_event_notsup", a2[63], @"send event not supported, old style client", v3);
  handleField(v24, "nstat_route_src_gone_idlecheck", a2[64], @"route src gone noted during periodic idle check", v3);
  handleField(v24, "nstat_src_removed_linkage", a2[65], @"removed src linkages on the way to deletion", v3);
  handleField(v24, "nstat_src_gone_idlecheck", a2[66], @"Expected to be redundant/removed when socket handling code is refined", v3);
  [v8 setObject:v24 forKeyedSubscript:@"kNtstatMetricItems"];
  [v6 addObject:v8];

  return 0;
}

void handleField(void *a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v15 = a1;
  v9 = a4;
  if (a3 || a5)
  {
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a2];
    if (v10)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v11 setObject:v10 forKeyedSubscript:@"kNtstatMetricItemName"];
      v12 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
      [v11 setObject:v12 forKeyedSubscript:@"kNtstatMetricItemValue"];

      v13 = [v10 stringByPaddingToLength:42 withString:@" " startingAtIndex:0];
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ %12lld  %@", v13, a3, v9];
      [v11 setObject:v14 forKeyedSubscript:@"kNtstatMetricItemPretty"];
      [v15 addObject:v11];
    }
  }
}

uint64_t getGlobalMetrics(void *a1, int a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
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
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 432;
  v4 = sysctlbyname("net.stats.global_counts", &v11, &v10, 0, 0);
  if ((v4 & 0x80000000) != 0)
  {
    v7 = __error();
    v6 = *v7;
    v5 = NStatGetLog(v7);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v39 = "net.stats.global_counts";
      v40 = 1024;
      v41 = v6;
      _os_log_impl(&dword_25BA3A000, v5, OS_LOG_TYPE_ERROR, "systcl %s fail %{darwin.errno}d ", buf, 0x12u);
    }
  }

  else if (v11 < 2)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v5 setObject:@"kNtstatMetricsGlobal" forKeyedSubscript:@"kNtstatMetricId"];
    [v5 setObject:@"nstat_global_counts  Metrics that are global forKeyedSubscript:i.e. not per client", @"kNtstatMetricIdPretty"];
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    handleField(v8, "nstat_global_exclusive_lock_uncontended", *(&v11 + 1), @"Uncontended acquisitions of exlusive lock", a2);
    handleField(v8, "nstat_global_exclusive_lock_contended", v12, @"Contended acquisitions of exlusive lock", a2);
    handleField(v8, "nstat_global_shared_lock_uncontended", *(&v12 + 1), @"Uncontended acquisitions of shared lock", a2);
    handleField(v8, "nstat_global_shared_lock_contended", v13, @"Contended acquisitions of shared lock", a2);
    handleField(v8, "nstat_global_client_current", *(&v13 + 1), @"current number of clients overall", a2);
    handleField(v8, "nstat_global_client_max", v14, @"max number of clients overall", a2);
    handleField(v8, "nstat_global_client_allocs", *(&v14 + 1), @"total number of clients allocated", a2);
    handleField(v8, "nstat_global_client_alloc_fails", v15, @"total number of failures to allocate a client", a2);
    handleField(v8, "nstat_global_src_current", *(&v15 + 1), @"current number of srcs overall", a2);
    handleField(v8, "nstat_global_src_max", v16, @"max number of srcs overall", a2);
    handleField(v8, "nstat_global_src_allocs", *(&v16 + 1), @"total number of sources allocated", a2);
    handleField(v8, "nstat_global_src_alloc_fails", v17, @"total number of failures to allocate a source", a2);
    handleField(v8, "nstat_global_tcp_sck_locus_current", *(&v17 + 1), @"current number of tcp nstat_sock_locus overall", a2);
    handleField(v8, "nstat_global_tcp_sck_locus_max", v18, @"max number of tcp nstat_sock_locus overall", a2);
    handleField(v8, "nstat_global_tcp_sck_locus_allocs", *(&v18 + 1), @"total number of tcp nstat_sock_locus allocated", a2);
    handleField(v8, "nstat_global_tcp_sck_locus_alloc_fails", v19, @"total number of failures to allocate a tcp nstat_sock_locus", a2);
    handleField(v8, "nstat_global_udp_sck_locus_current", *(&v19 + 1), @"current number of udp nstat_extended_sock_locus overall", a2);
    handleField(v8, "nstat_global_udp_sck_locus_max", v20, @"max number of udp nstat_extended_sock_locus overall", a2);
    handleField(v8, "nstat_global_udp_sck_locus_allocs", *(&v20 + 1), @"total number of udp nstat_extended_sock_locus allocated", a2);
    handleField(v8, "nstat_global_udp_sck_locus_alloc_fails", v21, @"total number of failures to allocate a udp nstat_extended_sock_locus", a2);
    handleField(v8, "nstat_global_tu_shad_current", *(&v21 + 1), @"current number of nstat_tu_shadow objects overall", a2);
    handleField(v8, "nstat_global_tu_shad_max", v22, @"max number of tu_shadows overall", a2);
    handleField(v8, "nstat_global_tu_shad_allocs", *(&v22 + 1), @"total number of tu_shadows allocated", a2);
    handleField(v8, "nstat_global_gshad_current", v23, @"current number of generic shadow objects overall", a2);
    handleField(v8, "nstat_global_gshad_max", *(&v23 + 1), @"max number of srcs overall", a2);
    handleField(v8, "nstat_global_gshad_allocs", v24, @"total number of sources allocated", a2);
    handleField(v8, "nstat_global_procdetails_current", *(&v24 + 1), @"current number of procdetails objects overall", a2);
    handleField(v8, "nstat_global_procdetails_max", v25, @"max number of procdetails overall", a2);
    handleField(v8, "nstat_global_procdetails_allocs", *(&v25 + 1), @"total number of procdetails allocated", a2);
    handleField(v8, "nstat_global_idlecheck_tcp_gone", v26, @"idle check removes a TCP locus", a2);
    handleField(v8, "nstat_global_idlecheck_udp_gone", *(&v26 + 1), @"idle check removes a UDP locus", a2);
    handleField(v8, "nstat_global_idlecheck_route_src_gone", v27, @"total number of route sources discovered gone in idle check", a2);
    handleField(v8, "nstat_global_tcp_sck_locus_stop_using", *(&v27 + 1), @"Socket has WNT_STOPUSING when creating the initial locus", a2);
    handleField(v8, "nstat_global_udp_sck_locus_stop_using", v28, @"Socket has WNT_STOPUSING when creating the initial locus", a2);
    handleField(v8, "nstat_global_pcb_detach_with_locus", *(&v28 + 1), @"Expected path, locus on pcb_detach", a2);
    handleField(v8, "nstat_global_pcb_detach_with_src", v29, @"Expected path, locus on pcb_detach, an associated source being detached", a2);
    handleField(v8, "nstat_global_pcb_detach_without_locus", *(&v29 + 1), @"Unexpected path, no locus on pcb_detach", a2);
    handleField(v8, "nstat_global_pcb_detach_udp", v30, @"pcb detach removes a UDP locus", a2);
    handleField(v8, "nstat_global_pcb_detach_tcp", *(&v30 + 1), @"pcb detach removes a TCP locus", a2);
    handleField(v8, "nstat_global_sck_update_last_owner", v31, @"nstat_pcb_update_last_owner() was called", a2);
    handleField(v8, "nstat_global_sck_fail_first_owner", *(&v31 + 1), @"can't set name on sock locus create", a2);
    handleField(v8, "nstat_global_sck_fail_last_owner", v32, @"nstat_pcb_update_last_owner() was called, no name available", a2);
    handleField(v8, "nstat_global_tcp_desc_new_name", *(&v32 + 1), @"TCP Socket ownership discovered to have changed", a2);
    handleField(v8, "nstat_global_tcp_desc_fail_name", v33, @"TCP Socket ownership discovered to have changed, fail to get new name", a2);
    handleField(v8, "nstat_global_udp_desc_new_name", *(&v33 + 1), @"UDP Socket ownership discovered to have changed", a2);
    handleField(v8, "nstat_global_udp_desc_fail_name", v34, @"UDP Socket ownership discovered to have changed, fail to get new name", a2);
    [v5 setObject:v8 forKeyedSubscript:@"kNtstatMetricItems"];
    [v3 addObject:v5];

    v6 = 0;
  }

  else
  {
    v5 = NStatGetLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v39 = "net.stats.global_counts";
      v40 = 1024;
      v41 = v11;
      v42 = 1024;
      v43 = 1;
      _os_log_impl(&dword_25BA3A000, v5, OS_LOG_TYPE_ERROR, "systcl %s EINVAL global counts version %d != expected %d\n", buf, 0x18u);
    }

    v6 = 22;
  }

  return v6;
}

uint64_t specificClientMetrics(void *a1, int a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v12 = 276;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v11[0] = 2;
  v11[1] = a2;
  if (sysctlbyname("net.stats.metrics", v13, &v12, v11, 8uLL) < 0)
  {
    v6 = *__error();
    v7 = __error();
    if (*v7 != 34)
    {
      v8 = NStatGetLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *__error();
        *buf = 136315906;
        v16 = "net.stats.metrics";
        v17 = 1024;
        v18 = 2;
        v19 = 1024;
        v20 = a2;
        v21 = 1024;
        v22 = v9;
        _os_log_impl(&dword_25BA3A000, v8, OS_LOG_TYPE_ERROR, "systcl %s fail requesting version %d, specific id %d err %{darwin.errno}d ", buf, 0x1Eu);
      }
    }
  }

  else
  {
    v6 = fillClientMetrics(v5, v13, a3);
  }

  return v6;
}

uint64_t scanClientMetrics(void *a1, int a2, void *a3, uint64_t a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a3;
  v20 = 276;
  v9 = -1;
  while (1)
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    v19[0] = 2;
    v19[1] = v9;
    if (sysctlbyname("net.stats.metrics", v21, &v20, v19, 8uLL) < 0)
    {
      break;
    }

    v10 = v21[0];
    if (a2 && a2 != DWORD1(v21[0]))
    {
LABEL_9:
      v14 = 0;
      goto LABEL_10;
    }

    if (v8)
    {
      v11 = pid_to_process_name(SDWORD1(v21[0]));
      v12 = [v8 isEqual:v11];
      v13 = DWORD1(v21[0]);

      if (!v12)
      {
        goto LABEL_9;
      }

      a2 = v13;
    }

    v14 = fillClientMetrics(v7, v21, a4);
LABEL_10:
    v9 = v10 - 1;
    if (v14)
    {
      goto LABEL_17;
    }
  }

  if (*__error() == 34)
  {
    v14 = 0;
  }

  else
  {
    v15 = __error();
    v14 = *v15;
    v16 = NStatGetLog(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *__error();
      *buf = 136315906;
      v24 = "net.stats.metrics";
      v25 = 1024;
      v26 = 2;
      v27 = 1024;
      v28 = v9;
      v29 = 1024;
      v30 = v17;
      _os_log_impl(&dword_25BA3A000, v16, OS_LOG_TYPE_ERROR, "systcl %s fail scanning requesting version %d,  requested id %d err %{darwin.errno}d", buf, 0x1Eu);
    }
  }

LABEL_17:

  return v14;
}

id dateStringMillisecondsFromTimeInterval(long double a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *__src = 0;
  v15 = 0;
  v17 = 0;
  v16 = 0;
  v10 = a1;
  if (a1 <= 0)
  {
    time(&v10);
    a1 = 0.0;
  }

  __y = 0.0;
  v1 = modf(a1, &__y);
  v2 = localtime(&v10);
  v3 = strftime(__src, 0x1AuLL, "%Y-%m-%d %H:%M:%S %z", v2);
  if (v3)
  {
    v8 = 0;
    *__str = 0;
    if (snprintf(__str, 6uLL, "%.3f", v1))
    {
      *__dst = 0;
      v12 = 0;
      memset(v13, 0, sizeof(v13));
      v4 = stpncpy(__dst, __src, 0x13uLL);
      v5 = stpncpy(v4, &__str[1], 4uLL);
      stpncpy(v5, &v16 + 3, 6uLL);
      HIBYTE(v13[6]) = 0;
      v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:__dst encoding:1];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

id timeStringMillisecondsFromTimeInterval(long double a1)
{
  v14 = *MEMORY[0x277D85DE8];
  *&__src[7] = 0;
  *__src = 0;
  __y = 0.0;
  v10 = a1;
  v1 = modf(a1, &__y);
  v2 = localtime(&v10);
  v3 = strftime(__src, 0xFuLL, "%H:%M:%S %z", v2);
  if (v3)
  {
    v8 = 0;
    *__str = 0;
    if (snprintf(__str, 6uLL, "%.3f", v1))
    {
      *__dst = 0;
      memset(v12, 0, 11);
      v4 = stpncpy(__dst, __src, 8uLL);
      v5 = stpncpy(v4, &__str[1], 4uLL);
      stpncpy(v5, &__src[8], 6uLL);
      BYTE2(v12[1]) = 0;
      v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:__dst encoding:1];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}