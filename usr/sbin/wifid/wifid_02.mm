uint64_t sub_1000241AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v8 = objc_autoreleasePoolPush();
  if (!a1)
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "WiFiManagerFlushKnownNetworksCache", v23, v24}];
    }

    goto LABEL_9;
  }

  if (sub_1000243A0(a1))
  {
    goto LABEL_10;
  }

  if (!*(a1 + 1408))
  {
    goto LABEL_10;
  }

  v9 = *(a1 + 232);
  if (!v9)
  {
    goto LABEL_10;
  }

  Count = CFArrayGetCount(v9);
  Current = CFAbsoluteTimeGetCurrent();
  if (!a3)
  {
    v12 = Current - *(a1 + 240);
    if (v12 < 30.0)
    {
      v13 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Skip this flush attempt, flush %d seconds later, networks were fetched from the plist just %f seconds ago", "WiFiManagerFlushKnownNetworksCache", 30, *&v12}];
      }

LABEL_9:
      objc_autoreleasePoolPop(v13);
LABEL_10:
      v14 = 0;
      goto LABEL_23;
    }
  }

  v15 = sub_10003524C(*(a1 + 232), v6);
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v15;
  v14 = sub_10007393C(a1, @"List of known networks", v15, v4);
  v17 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v18 = "Successfully flushed";
    if (!v14)
    {
      v18 = "Failed to flush";
    }

    [off_100298C40 WFLog:3 message:{"%s: %s %ld known networks to the plist", "WiFiManagerFlushKnownNetworksCache", v18, Count}];
  }

  objc_autoreleasePoolPop(v17);
  if (!Count)
  {
    v19 = *(a1 + 232);
    if (v19)
    {
      CFRelease(v19);
      *(a1 + 232) = 0;
    }

    v20 = objc_autoreleasePoolPush();
    v21 = sub_1000950EC();
    if (v21)
    {
      [v21 WFLog:3 message:{"%s: Cleared known networks cache", "WiFiManagerFlushKnownNetworksCache"}];
    }

    objc_autoreleasePoolPop(a1);
  }

  CFRelease(v16);
LABEL_23:
  objc_autoreleasePoolPop(v8);
  return v14;
}

uint64_t sub_1000243A0(void *a1)
{
  if (a1)
  {
    result = _os_feature_enabled_impl();
    if (result)
    {
      return [(__SCPreferences *)sub_10001769C(a1 intValue]> 13;
    }
  }

  else
  {
    sub_10016D060();
    return 0;
  }

  return result;
}

void sub_100024408(uint64_t a1)
{
  v2 = (a1 + 5267);
  v3 = *(a1 + 64);
  v4 = sub_100006F88(v3);
  sub_100006F94(v3, v4, 481, 0, 0);
  if (*(a1 + 5496))
  {
    sub_10014C1C0(*(a1 + 64), v5, v6, v7, v8, v9, v10, v11, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
    v13 = v12;
    if (sub_1000C905C(a1))
    {
      sub_1001A05CC(a1, v13);
    }
  }

  if (v2[1709] && v2[1873])
  {
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Disconnect from Hotspot. LTE/5G Available!!", "WiFiDeviceManagerHeartbeatHadler"}];
    }

    objc_autoreleasePoolPop(v14);
    v15 = sub_100006F88(*(a1 + 64));
    sub_1000B9DC8(a1, v15, 1019, "WiFiDeviceManagerHeartbeatHadler", 31094);
  }

  if ([*(a1 + 6832) isClientAssociated])
  {
    v16 = *(a1 + 6848);
    if (v16 != 0.0)
    {
      v16 = CFAbsoluteTimeGetCurrent() - *(a1 + 6848);
      if (v16 >= *(a1 + 6864))
      {
        *(a1 + 6568) = sub_100058B68();
        *(a1 + 6624) = 3;
        v17 = *(a1 + 6632);
        if (v17)
        {
          CFRelease(v17);
          *(a1 + 6632) = 0;
        }

        *(a1 + 6632) = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", @"Off Head");
        [*(a1 + 6832) stopSubscriberForPHSOverNAN];
        v16 = sub_100146CAC((a1 + 6536));
      }
    }
  }

  if (v2[3918])
  {
    [*(a1 + 6720) removeExpiredDenyListedState:{3, v16}];
  }

  if (!*v2 && !*(a1 + 5392))
  {
    v18 = *(a1 + 5276);
    if (v18)
    {
      v19 = IOPMAssertionRelease(v18);
      if (v19)
      {
        v20 = v19;
        v21 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s MIS session not active: release MIS PM Assertion, error=%d", "WiFiDeviceManagerHeartbeatHadler", v20}];
        }

        objc_autoreleasePoolPop(v21);
      }

      *(a1 + 5276) = 0;
    }

    if (v2[193] == 1)
    {
      v2[193] = 0;
      if (!v2[142])
      {
        v22 = sub_100006F88(*(a1 + 64));
        v23 = sub_100007D90(a1, v22, 1);
        if (!v23)
        {
          return;
        }

        v24 = v23;
        v25 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: setting interface rank %s : reason %s ", "WiFiDeviceManagerHeartbeatHadler", "kSCNetworkServicePrimaryRankDefault", " BT tethering stopped"}];
        }

        objc_autoreleasePoolPop(v25);
        sub_1000BFD00(a1, v24, 0, 0);
        CFRelease(v24);
      }
    }
  }

  v26 = *(a1 + 3560);
  if (v26 && *(a1 + 3496) && *(a1 + 3512) && MGGetBoolAnswer())
  {
    v27 = objc_autoreleasePoolPush();
    v28 = *(a1 + 7168);
    if (v28)
    {
      if ([v28 isInProgress])
      {
        sub_1001A070C();
        goto LABEL_60;
      }

      v29 = *(a1 + 7168);
      if (v29)
      {
        [v29 abort];

        *(a1 + 7168) = 0;
      }
    }

    Current = CFAbsoluteTimeGetCurrent();
    v31 = CFDateCreate(kCFAllocatorDefault, Current);
    v32 = sub_10000A540(v26, @"lastTputMeasurementDate");
    if (sub_10000A9DC(*(a1 + 64)) || *(a1 + 72) == 3)
    {
      v33 = 86400.0;
    }

    else
    {
      v33 = 604800.0;
    }

    v34 = sub_100024ABC(*(a1 + 6872));
    v35 = _os_feature_enabled_impl();
    v36 = 86400.0;
    if (v35)
    {
      v37 = 0.0;
    }

    else
    {
      v37 = 86400.0;
    }

    if (v32)
    {
      if (!v34)
      {
        v36 = v33;
      }

      if (v35)
      {
        v38 = 60.0;
      }

      else
      {
        v38 = v36;
      }

      if (CFDateGetTimeIntervalSinceDate(v31, v32) > v38)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v43 = CFAbsoluteTimeGetCurrent();
      v44 = CFDateCreate(kCFAllocatorDefault, v43);
      v45 = sub_10000DBF0(v26);
      v46 = sub_10000DC20(v26);
      if (v46)
      {
        v45 = v45 + CFDateGetTimeIntervalSinceDate(v44, v46);
      }

      else
      {
        v47 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: failed to get last association date for %@.", "__WiFiDeviceManagerPerformThroughputMeasurement", sub_10000A878(v26)}];
        }

        objc_autoreleasePoolPop(v47);
      }

      if (_os_feature_enabled_impl())
      {
        v48 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: network usage time is %.2f secs.", "__WiFiDeviceManagerPerformThroughputMeasurement", *&v45}];
        }

        objc_autoreleasePoolPop(v48);
      }

      if (v44)
      {
        CFRelease(v44);
      }

      if (v45 >= v37)
      {
LABEL_52:
        v39 = [[WFMeasure alloc] initWithType:1 andReason:@"Primary&Charging" prevTestedOptions:0 andInterfaceName:sub_100006F88(*(a1 + 64))];
        *(a1 + 7168) = v39;
        if (v39)
        {
          v60 = 0;
          v61 = &v60;
          v62 = 0x2020000000;
          v63 = CFRetain(v26);
          v59[0] = 0;
          v59[1] = v59;
          v59[2] = 0x3052000000;
          v59[3] = sub_100002B80;
          v40 = *(a1 + 240);
          v59[4] = sub_100006788;
          v59[5] = v40;
          dispatch_retain(v40);
          CFRetain(a1);
          v52 = _NSConcreteStackBlock;
          v53 = 3221225472;
          v54 = sub_1000F58F8;
          v55 = &unk_100261CD8;
          v57 = v59;
          v58 = a1;
          v56 = &v60;
          [*(a1 + 7168) start:&v52 withCompletionQueue:*(a1 + 240)];
          v41 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v42 = "as periodic test";
            if (!v32)
            {
              v42 = "as first test";
            }

            [off_100298C40 WFLog:3 message:{"%s: throughput measurement started for %@, triggered %s", "__WiFiDeviceManagerPerformThroughputMeasurement", v61[3], v42}];
          }

          objc_autoreleasePoolPop(v41);
          _Block_object_dispose(v59, 8);
          _Block_object_dispose(&v60, 8);
        }

        if (!v31)
        {
          goto LABEL_60;
        }

LABEL_59:
        CFRelease(v31);
LABEL_60:
        objc_autoreleasePoolPop(v27);
        return;
      }
    }

    sub_100024AC8();
    if (!v31)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }
}

void sub_100024A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100024ABC(uint64_t result)
{
  if (result)
  {
    return *(result + 1949);
  }

  return result;
}

void sub_100024AC8()
{
  sub_10000D798();
  sub_100015E88();
  v1 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"%s: throughput measurement was last run on %@"];
  }

  objc_autoreleasePoolPop(v1);
  objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A540(v0, @"lastTputMeasurementResults");
    sub_1000F8A68();
  }

  sub_1000084B8();

  objc_autoreleasePoolPop(v2);
}

void sub_100024BA4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(result + 4152);
    if (v4)
    {
      v6 = *(result + 4160);

      v4(result, a2, v6, a3);
    }
  }

  else
  {
    sub_100156590();
  }
}

void sub_100024BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (a4)
    {
      context[0] = a3;
      context[1] = a1;
      context[2] = a4;
      CFSetApplyFunction(*(a3 + 144), sub_100024C60, context);
    }
  }
}

uint64_t sub_100024C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a3 + 4296);
    if (v3)
    {
      return v3(a3, a2, *(a3 + 4304));
    }
  }

  return result;
}

void sub_100024C60(uint64_t a1, uint64_t a2)
{
  if (a2 && *a2)
  {
    if (*(a2 + 8))
    {
      sub_100024C54(a1, *(a2 + 8), *(a2 + 16));
    }
  }
}

void sub_100024CEC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t valuePtr, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100011520();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  valuePtr = 0;
  v28 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, &valuePtr);
  if (v28)
  {
    v29 = v28;
    Count = CFDictionaryGetCount(*(v27 + 5112));
    if (Count)
    {
      v31 = Count;
      v32 = 8 * Count;
      sub_100024EF8();
      v34 = malloc_type_malloc(v32, v33);
      if (v34)
      {
        v35 = v34;
        sub_1000083BC();
        v37 = malloc_type_malloc(v32, v36);
        if (v37)
        {
          v47 = v37;
          v48 = v35;
          CFDictionaryGetKeysAndValues(*(v27 + 5112), v35, v37);
          Mutable = CFArrayCreateMutable(kCFAllocatorDefault, v31, &kCFTypeArrayCallBacks);
          if (v31 >= 1)
          {
            v39 = v47;
            v40 = v35;
            do
            {
              v41 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              if (v41)
              {
                v42 = v41;
                CFDictionaryAddValue(v41, @"VIRT_IF_NAME", *v40);
                v43 = CFGetTypeID(*v39);
                v44 = sub_100006F40();
                v45 = v29;
                if (v43 != v44 || (v45 = sub_100024FC0(*v39)) != 0)
                {
                  CFDictionaryAddValue(v42, @"VIRT_IF_ROLE", v45);
                }

                CFArrayAppendValue(Mutable, v42);
                CFRelease(v42);
              }

              ++v39;
              ++v40;
              --v31;
            }

            while (v31);
          }

          free(v47);
          v35 = v48;
        }

        free(v35);
      }
    }

    else
    {
      v46 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:"No virtual interfaces found"];
      }

      objc_autoreleasePoolPop(v46);
    }

    CFRelease(v29);
  }

  sub_10001091C();
}

void sub_100024EBC(NSObject *a1)
{

  dispatch_source_set_timer(a1, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
}

void sub_100024F28(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v2, a2, v3);
}

uint64_t sub_100024F4C(uint64_t a1, void *a2, _DWORD *a3)
{
  *a2 = 0;
  *a3 = 0;

  return sub_10000FFF0();
}

const void *sub_100024FC0(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 32)) != 0)
  {
    return CFDictionaryGetValue(v1, @"VIRT_IF_ROLE");
  }

  else
  {
    return 0;
  }
}

void sub_100024FE0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int valuePtr, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_10000FDC0();
  a27 = v28;
  a28 = v29;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = v38 + 4096;
  a16 = 0;
  v41 = sub_100025864(v38, v34);
  valuePtr = 0;
  Value = CFDictionaryGetValue(v37, @"SCAN_TYPE");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    if (valuePtr == 3)
    {
      goto LABEL_3;
    }
  }

  if (sub_1000258E0(v39))
  {
    v44 = objc_autoreleasePoolPush();
    v45 = off_100298C40;
    if (off_100298C40)
    {
      v46 = "%s: Will not queue scan request - sensitive action on";
LABEL_21:
      [v45 WFLog:3 message:v46];
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  if (sub_100025AB8(v39) && (sub_1000C905C(v39), sub_1000F8C14(), (v47 & v41) != 1) || *(v39 + 3470) != 0 && !v41 && sub_10002CFB0(v37))
  {
    v48 = *(v40 + 3041);
    v49 = objc_autoreleasePoolPush();
    if (v48)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"%s: Will try to queue scan request on LPSC only"];
      }

      objc_autoreleasePoolPop(v49);
      v43 = 1;
LABEL_15:
      v50 = sub_1000075BC();
      if (v50)
      {
        v51 = v50;
        *v50 = v39;
        v50[1] = v33;
        v50[2] = CFDictionaryGetValue(v37, @"ScanReqClientName");
        v51[3] = v31;
        if (CFDictionaryContainsKey(v37, @"SSID_STR"))
        {
          v52 = 1;
        }

        else
        {
          v52 = CFDictionaryContainsKey(v37, @"SCAN_SSID_LIST") != 0;
        }

        *(v51 + 32) = v52;
        if (*(v40 + 3041) && sub_100025C84(v39, v35, v37, v43))
        {
          v55 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:"%s: Setting scan throttle to true and isLPSCSupported=%d"];
          }

          objc_autoreleasePoolPop(v55);
          CFDictionarySetValue(v37, @"SCAN_IS_THROTTLED", kCFBooleanTrue);
        }

        if (*(v40 + 1472) && CFDictionaryGetValue(v37, @"SCAN_DWELL_TIME"))
        {
          sub_1000F8C34();
          CFNumberGetValue(v56, v57, v58);
        }

        if (v51[2] != 0 && v41)
        {
          if (CFDictionaryGetValue(v37, @"SCAN_LOW_PRIORITY"))
          {
            sub_1000F8C34();
            CFNumberGetValue(v59, v60, v61);
          }

          CFDictionarySetValue(v37, @"SCAN_LOW_LATENCY", kCFBooleanTrue);
          v62 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:"%s: Setting low latency to true for interactive client %@"];
          }

          objc_autoreleasePoolPop(v62);
          if (CFStringCompare(v51[2], @"mobilewifitool", 0) == kCFCompareEqualTo && valuePtr == 9)
          {
            v63 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: This is normal priority, low latency mobilewifitool client with low power scan type"}];
            }

            objc_autoreleasePoolPop(v63);
          }
        }

        if (*(v39 + 6272) <= -75)
        {
          v64 = CFDictionaryGetValue(v37, @"SCAN_LOW_LATENCY");
          if (v64)
          {
            CFNumberGetValue(v64, kCFNumberSInt32Type, &a16);
          }

          if (CFDictionaryGetValue(v37, @"SCAN_LOW_PRIORITY"))
          {
            sub_1000F8C34();
            CFNumberGetValue(v65, v66, v67);
          }

          if (!a16)
          {
            v68 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"currentRssi(=%d) <= threshold(=%d), lowering scan priority \n"}];
            }

            objc_autoreleasePoolPop(v68);
            v69 = sub_100029EB8();
            CFDictionarySetValue(v69, v70, v71);
            v72 = sub_100029EB8();
            CFDictionarySetValue(v72, v73, v74);
          }
        }

        v75 = v51[2];
        if (v75 && CFStringCompare(v75, @"Preferences", 0) == kCFCompareEqualTo)
        {
          CFDictionarySetValue(v37, @"SCAN_INC_BSS_LIST", kCFBooleanTrue);
        }

        if (*(v39 + 4440))
        {
          v76 = sub_10000FC38();
          v77(v76);
        }

        if (*(v39 + 7480))
        {
          v78 = v51[2];
          if (v78)
          {
            if (!CFEqual(v78, @"Preferences") && !CFEqual(v51[2], @"SpringBoard") && !CFEqual(v51[2], @"WiFiPickerExtens") && !CFEqual(v51[2], @"locationd") && !CFEqual(v51[2], @"pipelined") && !CFEqual(v51[2], @"homed") && !CFEqual(v51[2], @"configd"))
            {
              CFEqual(v51[2], @"milod");
            }
          }
        }

        sub_100008C1C();
        sub_10000FC38();
        sub_100020100();
        v86 = sub_100025FF8(v79, v80, v81, v82, v83, v84, 0, v85);
        goto LABEL_62;
      }

LABEL_92:
      v98 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:"%s: null scanData"];
      }

      objc_autoreleasePoolPop(v98);
      goto LABEL_64;
    }

    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"%s: Will not queue scan request - hosting AWDL session and isLPSCSupported=%d"];
    }

    v54 = v49;
LABEL_23:
    objc_autoreleasePoolPop(v54);
    goto LABEL_64;
  }

  sub_100025A5C(v39);
  sub_1000F8C14();
  if (((v53 | v41) & 1) == 0)
  {
    v44 = objc_autoreleasePoolPush();
    v45 = off_100298C40;
    if (off_100298C40)
    {
      v46 = "%s: Will not queue scan request - MIS discovery state %d MIS Scan Blocked = %d";
      goto LABEL_21;
    }

LABEL_22:
    v54 = v44;
    goto LABEL_23;
  }

  sub_100025B90(v39);
  sub_1000F8C14();
  if (((v87 | v41) & 1) == 0)
  {
    v44 = objc_autoreleasePoolPush();
    v45 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_22;
    }

    v46 = "%s: Will not queue scan request - autojoin is busy";
    goto LABEL_21;
  }

  if (*(v40 + 3041) || !sub_100025C84(v39, v35, v37, 0))
  {
LABEL_3:
    v43 = 0;
    goto LABEL_15;
  }

  v88 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"%s: Will not queue scan request - too frequent location scans and isLPSCSupported=%d"];
  }

  objc_autoreleasePoolPop(v88);
  if (*(v39 + 441))
  {
    v89 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Location Scan request rejected due to EBUSY, queueing for scan cache"}];
    }

    objc_autoreleasePoolPop(v89);
    v90 = sub_1000075BC();
    if (v90)
    {
      v51 = v90;
      *v90 = v39;
      v90[1] = v33;
      v90[2] = CFDictionaryGetValue(v37, @"ScanReqClientName");
      v51[3] = v31;
      if (CFDictionaryContainsKey(v37, @"SSID_STR"))
      {
        v91 = 1;
      }

      else
      {
        v91 = CFDictionaryContainsKey(v37, @"SCAN_SSID_LIST") != 0;
      }

      *(v51 + 32) = v91;
      CFDictionarySetValue(v37, @"BeaconCacheOnly", kCFBooleanTrue);
      sub_100008C1C();
      sub_100020100();
      v86 = sub_1000616EC(v92, v93, v94, v95, v96, v97);
LABEL_62:
      if (v86)
      {
        free(v51);
      }

      goto LABEL_64;
    }

    goto LABEL_92;
  }

LABEL_64:
  sub_100008690();
}

BOOL sub_100025864(uint64_t a1, const void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (*(a1 + 4984))
    {
      CFArrayGetCount(*(a1 + 4984));
      v5 = sub_100011340();
      return CFArrayContainsValue(v5, v6, a2) != 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000258E0(uint64_t a1)
{
  if (*(a1 + 5576))
  {
    v1 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiDeviceManager Link setup - critical phase is ON", "WiFiDeviceManagerIsSensitiveActivityOnGoing"}];
    }
  }

  else
  {
    result = sub_100025988(a1);
    if (!result)
    {
      return result;
    }

    v1 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiDeviceManager - in autojoin deferral period", "WiFiDeviceManagerIsSensitiveActivityOnGoing"}];
    }
  }

  objc_autoreleasePoolPop(v1);
  return 1;
}

uint64_t sub_100025988(uint64_t a1)
{
  if (a1)
  {
    if (!*(a1 + 360))
    {
      return 0;
    }

    v2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Auto-join has been deferred for %f seconds with reasons=0x%x", CFAbsoluteTimeGetCurrent() - *(a1 + 376), *(a1 + 360)}];
    }

    v3 = 1;
  }

  else
  {
    v2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null manager.", "__WiFiDeviceManagerIsAutoJoinDeferred"}];
    }

    v3 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v3;
}

BOOL sub_100025A5C(uint64_t a1)
{
  v1 = a1 + 4096;
  if (*(a1 + 5376))
  {
    if (CFAbsoluteTimeGetCurrent() >= *(a1 + 5384))
    {
      *(v1 + 1280) = 0;
    }

    else if (*(v1 + 1280))
    {
      return 1;
    }
  }

  return *(v1 + 1173) != 0;
}

CFIndex sub_100025B90(CFIndex result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  result = CFArrayGetCount(*(result + 3576));
  if (!result)
  {
    return result;
  }

  if (_os_feature_enabled_impl())
  {
    if ((CWFIsAutoJoinRetryTrigger() & 1) == 0 && *(v1 + 8984))
    {
      v2 = *(v1 + 3336);
      return v2 != 14 && v2 != 17;
    }

    return 0;
  }

  if ((*(v1 + 3336) - 5) > 7)
  {
    return 0;
  }

  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_1000AA864(*(v1 + 3336));
    sub_1000F8A68();
  }

  objc_autoreleasePoolPop(v4);
  return 1;
}

uint64_t sub_100025C70()
{
  result = *v0;
  *(*v0 + 3336) = *(*v0 + 6972);
  return result;
}

uint64_t sub_100025C84(uint64_t a1, CFStringRef theString1, const __CFDictionary *a3, int a4)
{
  valuePtr = 0;
  if (CFStringCompare(theString1, @"locationd", 0) == kCFCompareEqualTo || CFStringCompare(theString1, @"loctool", 0) == kCFCompareEqualTo || CFStringCompare(theString1, @"milod", 0) == kCFCompareEqualTo)
  {
    Value = CFDictionaryGetValue(a3, @"SCAN_LOW_LATENCY");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr)
      {
        v9 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"Low-latency scan request: shouldBlockScans=%d, no throttling\n", 0}];
        }

        objc_autoreleasePoolPop(v9);
        return 0;
      }
    }

    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"startCheck: shouldBlockScans=%d numAdmitted %d admittedTS=%f connected=%d\n", 0, *(a1 + 412), *(a1 + 416), *(a1 + 3467)}];
    }

    objc_autoreleasePoolPop(v10);
    if (!*(a1 + 3467))
    {
      return 0;
    }

    if (a4)
    {
      CFDictionarySetValue(a3, @"SCAN_ONLY_USE_LOW_POWER_CORE", kCFBooleanTrue);
      CFDictionarySetValue(a3, @"SCAN_IS_THROTTLED", kCFBooleanTrue);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v12 = *(a1 + 416);
    v13 = CFDictionaryGetValue(a3, @"SCAN_CHANNELS");
    Count = CFArrayGetCount(v13);
    if (*(a1 + 5569) == 1 && (v15 = Count, Count >= 4))
    {
      v16 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"User scan request blocked due to high number of channels (%ld) during FT call", v15}];
      }

      v17 = 1;
    }

    else
    {
      v18 = Current - v12;
      if (*(a1 + 441) == 1)
      {
        if (*(a1 + 424) == 2)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        v20 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s CATSPolicy=%d, numAllowedScanPolicy=%d ", "WiFiDeviceManagerIsFrequentLocationScan", *(a1 + 424), v19}];
        }

        objc_autoreleasePoolPop(v20);
      }

      else
      {
        LODWORD(v19) = 2;
      }

      if (v18 > 6.0)
      {
        *(a1 + 416) = CFAbsoluteTimeGetCurrent();
        *(a1 + 412) = 1;
        v21 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"Resetting, shouldBlockScans=%d numAdmitted %d delta=%f admittedTS=%f \n", 0, *(a1 + 412), *&v18, *(a1 + 416)}];
        }

        objc_autoreleasePoolPop(v21);
      }

      if (v18 >= 6.0)
      {
        v17 = 0;
        goto LABEL_45;
      }

      v22 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"TOO CLOSE: shouldBlockScans=%d delta %f admitted=%d\n", 0, *&v18, *(a1 + 412)}];
      }

      objc_autoreleasePoolPop(v22);
      v23 = *(a1 + 412);
      if (v23 >= v19 || *(a1 + 5569))
      {
        v17 = 1;
      }

      else
      {
        v17 = 0;
        *(a1 + 412) = v23 + 1;
      }

      v16 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        if (*(a1 + 5569))
        {
          v24 = "TRUE";
        }

        else
        {
          v24 = "FALSE";
        }

        [off_100298C40 WFLog:3 message:{"TOO CLOSE, shouldBlockScans=%d delta %f numAdmitted=%d, facetime=%s\n", v17, *&v18, *(a1 + 412), v24}];
      }
    }

    objc_autoreleasePoolPop(v16);
LABEL_45:
    *(a1 + 408) = v17;
    return v17;
  }

  return 0;
}

uint64_t sub_100025FF8(uint64_t a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v11 = sub_10002608C(*(a1 + 64), a2, a3, a4, a5, a6, a7);
  v12 = v11;
  if (v11)
  {
    sub_10019DFB4(v11);
  }

  else
  {
    v13 = *(a1 + 7480);
    if (v13)
    {
      [v13 setScanningState:1 client:a8 neighborBSS:0 otherBSS:0 withChannelInfoList:0 withRequest:a3 forInterface:sub_100006F88(*(a1 + 64))];
    }
  }

  return v12;
}

uint64_t sub_10002608C(uint64_t a1, CFTypeRef cf, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v14 = CFRetain(cf);
  v15 = CFRetain(a3);
  v16 = sub_100026144(a1, 0, a4, v14, v15, a5, a6, 0, a7);
  if (v16)
  {
    if (cf)
    {
      CFRelease(cf);
    }

    if (a3)
    {
      CFRelease(a3);
    }
  }

  return v16;
}

uint64_t sub_100026144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (a1)
  {
    if (*(a1 + 52) == 1)
    {
      v11 = a2;
      v17[1] = -1431655766;
      v24 = 0xAAAAAAAAAAAAAA00;
      v17[0] = a2;
      v18 = a4;
      v19 = a5;
      v20 = a6;
      v21 = a7;
      v22 = a8;
      v23 = 0;
      v25 = a3;
      v12 = objc_autoreleasePoolPush();
      v13 = off_100298C40;
      if (off_100298C40)
      {
        v14 = sub_1000262B0(v11);
        [v13 WFLog:3 message:{"Enqueuing command type: %@ priority:%ld pending commands: %ld", v14, a3, sub_1000262A8(*(a1 + 176))}];
      }

      objc_autoreleasePoolPop(v12);
      return sub_1000263D4(*(a1 + 176), v17, 72, a9);
    }

    else
    {
      return 82;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null device", "__WiFiDeviceCommandEnqueue"}];
    }

    objc_autoreleasePoolPop(v16);
    return 4294963396;
  }
}

uint64_t sub_10002626C@<X0>(void *a1@<X0>, int a2@<W1>, const __CFString *a3@<X8>)
{
  if (!a2)
  {
    v3 = v4;
  }

  v6 = *v3;

  return sub_10007393C(a1, a3, v6, 0);
}

id sub_100026290()
{

  return [v0 WFLog:3 message:?];
}

unint64_t sub_1000262B0(unsigned int a1)
{
  if (a1 > 0xF)
  {
    return 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    return *(&off_10025F770 + a1);
  }
}

uint64_t sub_1000262D0(uint64_t a1, uint64_t *a2)
{
  *buffer = 0;
  if (a1 && (Count = CFArrayGetCount(*(a1 + 16)), Count >= 1))
  {
    v7 = Count;
    v5 = 0;
    v8 = 0;
    v6 = -1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v8);
      if (!ValueAtIndex)
      {
        break;
      }

      v15.location = 0;
      v15.length = 8;
      CFDataGetBytes(ValueAtIndex, v15, buffer);
      v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, buffer);
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v12 = CFSetContainsValue(*(a1 + 80), v10);
      if (!v12)
      {
        ++v5;
      }

      if (v12 == 0 && v6 == -1)
      {
        v6 = v8;
      }

      CFRelease(v11);
      ++v8;
    }

    while (v7 != v8);
  }

  else
  {
    v5 = 0;
    v6 = -1;
  }

  if (a2)
  {
    *a2 = v6;
  }

  return v5;
}

uint64_t sub_1000263D4(uint64_t a1, const UInt8 *a2, CFIndex a3, void *a4)
{
  result = 4294963394;
  if (a2 && a3)
  {
    Count = CFArrayGetCount(*(a1 + 16));
    v10 = *(a1 + 24);
    if (v10 && Count >= v10)
    {
      return 4294963394;
    }

    v11 = sub_1000262D0(a1, 0);
    Mutable = CFDataCreateMutable(kCFAllocatorDefault, a3 + 8);
    if (!Mutable)
    {
      return 4294963394;
    }

    else
    {
      v13 = Mutable;
      ++qword_100298AE8;
      CFDataAppendBytes(Mutable, &qword_100298AE8, 8);
      CFDataAppendBytes(v13, a2, a3);
      CFDataSetLength(v13, a3 + 8);
      CFArrayAppendValue(*(a1 + 16), v13);
      if (a4)
      {
        *a4 = qword_100298AE8;
      }

      if (!v11)
      {
        *(a1 + 88) = sub_10000D83C("WiFiCommandQueueEnqueue");
        sub_1000264E8(a1, 1);
      }

      CFRelease(v13);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000264E8(uint64_t a1, int a2)
{
  Count = CFArrayGetCount(*(a1 + 16));
  v5 = Count;
  if (Count < 11)
  {
    if (!Count)
    {
      return 0;
    }

    if (!a2)
    {
LABEL_14:
      sub_100026684(a1);
      return 0;
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: cmdQueue size %ld exceeding recurse limit of %ld. Back to runloop.", "WiFiCommandQueueSignal", v5, 10}];
    }

    objc_autoreleasePoolPop(v6);
  }

  if (!*(a1 + 48))
  {
    goto LABEL_14;
  }

  if (*(a1 + 72))
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: timer is running. Will not signal cmdQueue", "WiFiCommandQueueSignal"}];
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    CFRetain(a1);
    v8 = *(a1 + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002663C;
    block[3] = &unk_10025EAD8;
    block[4] = a1;
    dispatch_async(v8, block);
  }

  return 0;
}

void sub_10002663C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[6])
  {
    sub_100026684(v2);
    v2 = *(a1 + 32);
  }

  CFRelease(v2);
}

void sub_100026684(uint64_t a1)
{
  if (sub_1000262D0(a1, 0))
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = *(a1 + 40);

      v2(a1, v3);
    }
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s:%d cmdQueue is EMPTY!!!!", "__WiFiCommandQueueCallback", 506}];
    }

    objc_autoreleasePoolPop(v4);
  }
}

uint64_t sub_100026744(uint64_t a1, uint64_t a2)
{
  v346 = 72;
  if (!a2)
  {
    sub_1001527B4();
    return 4294963394;
  }

  if (!a1)
  {
    sub_100152748();
    return 4294963394;
  }

  v347 = 0xAAAAAAAAAAAAAAAALL;
  if (sub_10000E6B0(a1, &v347, &v346, (a2 + 184)))
  {
    return 4294963394;
  }

  FirstIndexOfValue = &v354;
  while (1)
  {
    v4 = sub_10001D9F0(a2, 0, *v347);
    if (v4 <= *(v347 + 64))
    {
      break;
    }

    v5 = v4;
    v6 = objc_autoreleasePoolPush();
    v7 = off_100298C40;
    if (off_100298C40)
    {
      v8 = v347;
      v9 = sub_1000262B0(*v347);
      v311 = *(v8 + 64);
      v312 = v5;
      v309 = v9;
      [v7 WFLog:3 message:"Deferring command type: %@ because its priority (%ld) is less than the minimum allowed priority (%ld) for this command type"];
    }

    objc_autoreleasePoolPop(v6);
    sub_1001AB564(*(a2 + 176), *(a2 + 184));
    if (sub_10000E6B0(a1, &v347, &v346, (a2 + 184)))
    {
      return 4294963394;
    }
  }

  *(v347 + 56) = 1;
  v12 = objc_autoreleasePoolPush();
  v13 = off_100298C40;
  if (off_100298C40)
  {
    v309 = sub_1000262B0(*v347);
    v311 = (sub_1000262A8(*(a2 + 176)) - 1);
    [v13 WFLog:3 message:"Dequeuing command type: %@ pending commands: %ld"];
  }

  objc_autoreleasePoolPop(v12);
  v14 = *(a2 + 176);
  if (v347)
  {
    if (*v347 == 1)
    {
      if (sub_100009730(*(v347 + 16)))
      {
        v15 = 40;
      }

      else
      {
        v15 = 30;
      }
    }

    else
    {
      v15 = 30;
    }
  }

  else
  {
    v15 = 0;
  }

  sub_100028E5C(v14, v15);
  switch(*v347)
  {
    case 0:
      v23 = *(v347 + 8);
      v24 = *(v347 + 16);
      v25 = *(v347 + 24);
      v26 = *(v347 + 32);
      v350 = 0.0;
      v27 = sub_100007060(a2, v23);
      v28 = objc_autoreleasePoolPush();
      if (!v27)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"Unknown interface %@", v23}];
        }

        v53 = v28;
        goto LABEL_49;
      }

      if (off_100298C40)
      {
        v311 = [NSString stringWithFormat:@"Attempting Apple80211ScanAsync on %@", v23];
        v309 = [+[NSString stringWithFormat:](NSString UTF8String:@"{%@+} %@"];
        v29 = [NSString stringWithFormat:@"%s"];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v309 = [(NSString *)v29 UTF8String];
          v30 = [[NSString stringWithFormat:?]];
          *buf = 136446210;
          v352 = v30;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v28);
      v31 = CFGetTypeID(v27);
      if (v31 == sub_100006F40())
      {
        return sub_1001AC9AC(v27);
      }

      *(a2 + 4008) = v25;
      *(a2 + 4016) = v26;
      Value = CFDictionaryGetValue(v24, @"SCAN_MAXAGE");
      if (Value && !CFNumberGetValue(Value, kCFNumberDoubleType, &v350))
      {
        v350 = 0.0;
      }

      v146 = v350;
      if (_os_feature_enabled_impl())
      {
        v147 = 30.0;
      }

      else
      {
        v147 = 14.0;
      }

      v148 = kCFAllocatorDefault;
      if (v146 >= v147)
      {
        if (_os_feature_enabled_impl())
        {
          v149 = 30.0;
        }

        else
        {
          v149 = 14.0;
        }
      }

      else
      {
        v149 = v350;
      }

      v350 = v149;
      v156 = CFDictionaryGetValue(v24, @"BeaconCacheOnly");
      if (v156 && CFBooleanGetValue(v156))
      {
        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        sub_1000616F4(a2);
        if (CFArrayGetCount(Mutable))
        {
          v301 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: using scan cache (%ld) to serve scan request", "__WiFiDeviceScanAsyncQueued", CFArrayGetCount(Mutable)}];
          }

          objc_autoreleasePoolPop(v301);
          v302 = sub_10014DA18(a2);
          sub_1000663D8(a2, v302, 1);
          sub_100028EC4(a2, v24);
          if (v302)
          {
            CFRelease(v302);
          }

          if (*(a2 + 64))
          {
            CFRetain(a2);
            v303 = *(a2 + 64);
            *&block = _NSConcreteStackBlock;
            *(&block + 1) = 3221225472;
            v354 = sub_100066434;
            v355 = &unk_10025EAD8;
            v356 = a2;
            dispatch_async(v303, &block);
          }

          else
          {
            v304 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s: null queue.", "__WiFiDeviceScanAsyncQueued"}];
            }

            objc_autoreleasePoolPop(v304);
          }

          v10 = 0;
        }

        else
        {
          sub_10002E080(a2, *(a2 + 112), 0, 0, 0);
          v10 = 4294963396;
        }

        goto LABEL_166;
      }

      v157 = CFDictionaryGetValue(v24, @"CacheOnly");
      if (v157)
      {
        v158 = CFBooleanGetValue(v157) == 0;
      }

      else
      {
        v158 = 1;
      }

      HIDWORD(v320) = v158;
      v207 = v350;
      theDictb = v26;
      v319 = v23;
      if (v350 == 0.0 || (v327 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks)) == 0)
      {
        v255 = 0;
LABEL_399:
        v256 = objc_autoreleasePoolPush();
        v257 = off_100298C40;
        if (off_100298C40)
        {
          if (v255)
          {
            Count = CFArrayGetCount(v255);
          }

          else
          {
            Count = 0;
          }

          [v257 WFLog:3 message:{"%s: network records count: %lu ", "__WiFiDeviceCopyPreparedScanResults", Count}];
        }

        objc_autoreleasePoolPop(v256);
        if (v255)
        {
          v267 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:"ScanCache: Successfully Retrieved Scan Results from Scan Cache."];
          }

          objc_autoreleasePoolPop(v267);
          sub_1000663D8(a2, v255, 1);
          sub_100028EC4(a2, v24);
          CFRelease(v255);
          if (*(a2 + 64))
          {
            CFRetain(a2);
            v268 = *(a2 + 64);
            *&valuePtr[0] = _NSConcreteStackBlock;
            *&valuePtr[1] = 3221225472;
            v349[0] = sub_100066510;
            v349[1] = &unk_10025EAD8;
            v349[2] = a2;
            dispatch_async(v268, valuePtr);
          }

          else
          {
            v269 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s: null queue.", "__WiFiDeviceScanAsyncQueued"}];
            }

            objc_autoreleasePoolPop(v269);
          }

          return 0;
        }

        else
        {
          if ((v320 & 0x100000000) == 0)
          {
            sub_10002E080(a2, *(a2 + 112), 0, 0, 0);
            return 4294963396;
          }

          v10 = Apple80211ScanAsync();
          if (v10)
          {
            if (v26)
            {
              if (*theDictb)
              {
                CFRetain(*theDictb);
                v298 = *theDictb;
                if (*theDictb)
                {
                  v299 = CFGetTypeID(v298);
                  v300 = sub_10002DFD4();
                  v298 = *theDictb;
                  if (v299 == v300)
                  {
                    *(sub_10002BFA0(v298) + 426) = v10;
                    v298 = *theDictb;
                  }
                }

                CFRelease(v298);
                sub_10002E080(a2, v319, 0, 0, v10);
              }

              else
              {
                sub_100152688();
              }
            }

            else
            {
              sub_1001526E8();
              return 12;
            }
          }

          else
          {
            sub_100028EC4(a2, v24);
          }
        }

        return v10;
      }

      v208 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
      if (!v208)
      {
        goto LABEL_396;
      }

      v209 = v208;
      v210 = _os_feature_enabled_impl();
      v211 = 14.0;
      if (v210)
      {
        v211 = 30.0;
      }

      sub_1000665B4(*(a2 + 5024), v211);
      v212 = CFArrayGetCount(*(a2 + 5024));
      v213 = sub_1001515F4(a2, v24);
      LOBYTE(v214) = 0;
      if (!v213 && v212 >= 1)
      {
        v214 = 0;
        v334 = v24;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 5024), v212 - 1);
          Current = CFAbsoluteTimeGetCurrent();
          v217 = sub_1000A5018(ValueAtIndex);
          v328 = v212 - 1;
          if (!v217 || (v218 = v217, FirstIndexOfValue = ValueAtIndex, v219 = sub_10010DB50(ValueAtIndex), v219 == 0.0))
          {
            v235 = 0;
            v24 = v334;
            goto LABEL_386;
          }

          v332 = v212;
          v220 = Current - v219;
          v24 = v334;
          if (v207 < 0.0 || v220 <= v207)
          {
            break;
          }

          v235 = 0;
LABEL_386:
          v214 |= v235;
          v213 = sub_1001515F4(a2, v24);
          v26 = theDictb;
          if (v212 >= 2)
          {
            v212 = v328;
            v148 = kCFAllocatorDefault;
            if (!v213)
            {
              continue;
            }
          }

          goto LABEL_390;
        }

        LODWORD(v330) = v214;
        v221 = CFArrayCreateMutable(v148, 0, &kCFTypeArrayCallBacks);
        if (!v221)
        {
          v235 = 0;
          goto LABEL_386;
        }

        v222 = v221;
        v223 = CFArrayCreateMutable(v148, 0, &kCFTypeArrayCallBacks);
        if (!v223)
        {
          v235 = 0;
          v226 = v222;
          v212 = v332;
LABEL_385:
          CFRelease(v226);
          goto LABEL_386;
        }

        v224 = v223;
        v225 = CFArrayCreateMutable(v148, 0, &kCFTypeArrayCallBacks);
        if (v225)
        {
          v226 = CFArrayCreateMutable(v148, 0, &kCFTypeArrayCallBacks);
          if (v226)
          {
            sub_10006698C(v334, v222);
            sub_10006698C(v218, v224);
            if (CFArrayGetCount(v222) >= 1)
            {
              v227 = 0;
              do
              {
                v228 = CFArrayGetCount(v224);
                v229 = CFArrayGetValueAtIndex(v222, v227);
                v358.location = 0;
                v358.length = v228;
                if (CFArrayGetFirstIndexOfValue(v224, v358, v229) == -1)
                {
                  goto LABEL_361;
                }
              }

              while (++v227 < CFArrayGetCount(v222));
            }

            v24 = v334;
            sub_100066680(a2, v334, v225);
            sub_100066680(a2, v218, v226);
            if (CFArrayGetCount(v225) >= 1)
            {
              v230 = 0;
              v231 = 0;
              do
              {
                v232 = CFArrayGetCount(v226);
                v233 = CFArrayGetValueAtIndex(v225, v231);
                v359.location = 0;
                v359.length = v232;
                if (CFArrayGetFirstIndexOfValue(v226, v359, v233) != -1)
                {
                  v234 = CFArrayGetValueAtIndex(v225, v231);
                  CFSetAddValue(v209, v234);
                  v230 = 1;
                }

                ++v231;
              }

              while (v231 < CFArrayGetCount(v225));
              if (v230)
              {
                v236 = sub_10009A8E0(FirstIndexOfValue);
                if (v236 && (v237 = v236, CFArrayGetCount(v236)) && (v360.length = CFArrayGetCount(v222), v360.location = 0, FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v222, v360, &stru_1002680F8), CFArrayGetCount(v237) >= 1))
                {
                  v238 = 0;
                  v316 = (v220 * 1000.0);
                  do
                  {
                    v239 = v237;
                    v240 = CFArrayGetValueAtIndex(v237, v238);
                    if (v240)
                    {
                      v241 = v240;
                      if (FirstIndexOfValue != -1 || (v242 = CFArrayGetCount(v222), v243 = sub_10000A878(v241), v361.location = 0, v361.length = v242, CFArrayGetFirstIndexOfValue(v222, v361, v243) != -1))
                      {
                        v244 = sub_1001516B4(v241);
                        if (v244)
                        {
                          v245 = v244;
                          v362.length = CFArrayGetCount(v225);
                          v362.location = 0;
                          if (CFArrayGetFirstIndexOfValue(v225, v362, v245) != -1)
                          {
                            v246 = sub_100034EEC(v241, @"ORIG_AGE");
                            sub_10000C614(v241, @"AGE", v246 + v316);
                            CFArrayAppendValue(v327, v241);
                          }

                          CFRelease(v245);
                        }
                      }
                    }

                    ++v238;
                    v237 = v239;
                  }

                  while (v238 < CFArrayGetCount(v239));
                  v235 = 1;
                }

                else
                {
                  v235 = 1;
                }

                goto LABEL_376;
              }

LABEL_361:
              v235 = 0;
LABEL_376:
              v24 = v334;
              goto LABEL_382;
            }
          }
        }

        else
        {
          v226 = 0;
        }

        v235 = 0;
LABEL_382:
        CFRelease(v222);
        CFRelease(v224);
        if (v225)
        {
          CFRelease(v225);
        }

        v214 = v330;
        v212 = v332;
        if (!v226)
        {
          goto LABEL_386;
        }

        goto LABEL_385;
      }

LABEL_390:
      if (v207 >= 0.0)
      {
        v247 = v213;
      }

      else
      {
        v247 = v214;
      }

      v248 = v247;
      CFRelease(v209);
      if (v248)
      {
        v249 = v327;
        if (!CFArrayGetCount(v327))
        {
          v255 = 0;
LABEL_398:
          CFRelease(v249);
          goto LABEL_399;
        }

        sub_10002E9DC(v327, 0, v24, v250, v251, v252, v253, v254, v309, v311, v312, v313, v314, v315, v316, v319, v320, theDictb, SHIDWORD(theDictb), v327, v328, v330, v332, v334, FirstIndexOfValue, v349, theArray_8, kCFAllocatorDefault, allocator_8, v346, v347);
        v295 = v294;
        v255 = sub_100035314(v294);
        if (v295)
        {
          CFRelease(v295);
        }

        v26 = theDictb;
      }

      else
      {
LABEL_396:
        v255 = 0;
      }

      v249 = v327;
      goto LABEL_398;
    case 1:
      v65 = *(v347 + 16);
      allocator = *(v347 + 8);
      v66 = *(v347 + 24);
      *theArraya = *(v347 + 32);
      if (sub_100009730(v65))
      {
        v67 = 40;
      }

      else
      {
        v67 = 30;
      }

      *(a2 + 4056) = *theArraya;
      v68 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v69 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v70 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
          LODWORD(block) = 136446210;
          *(&block + 4) = v70;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", &block, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v68);
      v71 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Starting %d second(s) timer to complete association", "__WiFiDeviceAssociateAsyncQueued", v67}];
      }

      objc_autoreleasePoolPop(v71);
      LOBYTE(block) = 0;
      if (!v65)
      {
        v10 = 4294963396;
LABEL_449:
        sub_100066A94(a2, allocator, v65, 0, v10);
        return v10;
      }

      v72 = sub_10000A878(v65);
      v73 = sub_10009F2A4(v65);
      if (sub_100009730(v65))
      {
        if (v73)
        {
          v74 = sub_100174C78(v65);
          v75 = 0;
          if (!v66)
          {
            if (v74)
            {
              v75 = sub_10002A1CC(v65);
              if (!v75)
              {
                v261 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:4 message:{"No password for one time password network %@ ", sub_10000A878(v65), v311, v312}];
                }

                goto LABEL_508;
              }
            }
          }
        }

        else
        {
          v75 = 0;
        }

        if (v66)
        {
          v76 = v66;
        }

        else
        {
          v76 = v75;
        }

        v77 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"Attempting to join EAP network: %@", sub_10000A878(v65)}];
        }

        objc_autoreleasePoolPop(v77);
        v78 = sub_1000078F4(a2, allocator);
        if (v78)
        {
          v79 = v78;
          if (!CFEqual(v78, v65) || sub_1000A5008(*(a2 + 144)) != 5)
          {
            sub_1000627E8(a2, allocator, v80, *(a2 + 5128), "__WiFiDeviceAssociateEAP", 11229);
          }

          CFRelease(v79);
        }

        v10 = sub_1000F9614(*(a2 + 144), v65, v76);
        if (v10 != -3900 || sub_10000A540(v65, @"EnterpriseProfile"))
        {
          if (!v75)
          {
            goto LABEL_448;
          }

          goto LABEL_447;
        }

        v260 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: EAP association failed with param error and no configuration. Falling back to non-EAP association...", "__WiFiDeviceAssociate"}];
        }

        objc_autoreleasePoolPop(v260);
      }

      else
      {
        v75 = 0;
      }

      if (!v73)
      {
        goto LABEL_442;
      }

      if (v66 || (v75 = sub_10009F954(v65, &block, 3.0)) != 0)
      {
LABEL_419:
        if (sub_10009E148(v65))
        {
          v263 = objc_autoreleasePoolPush();
          v264 = off_100298C40;
          if (off_100298C40)
          {
            v310 = sub_10001CF3C(v65);
            v311 = v72;
            v265 = "Attempting to join SAE (transition mode = %d) network: %@";
LABEL_422:
            v266 = v264;
LABEL_440:
            [v266 WFLog:3 message:{v265, v310, v311, v312, v313, v314}];
          }
        }

        else
        {
          if (!sub_10001CF3C(v65))
          {
            if (!sub_10009DB7C(v65))
            {
              v263 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"Attempting to join: %@", v72, v311, v312, v313, v314}];
              }

              goto LABEL_441;
            }

            if (sub_10000A540(v65, @"WEP_AUTH_Flags"))
            {
              v287 = sub_100034EEC(v65, @"WEP_AUTH_Flags");
              v263 = objc_autoreleasePoolPush();
              v264 = off_100298C40;
              if (!off_100298C40)
              {
                goto LABEL_441;
              }

              if (v287)
              {
                v288 = "40 Bit";
              }

              else
              {
                v288 = "104 Bit";
              }

              if ((v287 & 4) != 0)
              {
                v289 = "Open";
              }

              else
              {
                v289 = "Shared";
              }

              if ((v287 & 2) != 0)
              {
                v290 = "Hashed";
              }

              else
              {
                v290 = "Unhashed";
              }

              v313 = v287;
              v314 = sub_10000A878(v65);
              v311 = v289;
              v312 = v290;
              v310 = v288;
              v265 = "Attempting to join %s %s %s (0x%lx) WEP network: %@";
            }

            else
            {
              v263 = objc_autoreleasePoolPush();
              v264 = off_100298C40;
              if (!off_100298C40)
              {
                goto LABEL_441;
              }

              v310 = sub_10000A878(v65);
              v265 = "Attempting to join WEP network: %@";
            }

            goto LABEL_422;
          }

          v263 = objc_autoreleasePoolPush();
          v266 = off_100298C40;
          if (off_100298C40)
          {
            v310 = v72;
            v265 = "Attempting to join WPA network: %@";
            goto LABEL_440;
          }
        }

LABEL_441:
        objc_autoreleasePoolPop(v263);
LABEL_442:
        if (v66)
        {
          v270 = v66;
        }

        else
        {
          v270 = v75;
        }

        v10 = sub_100061C30(a2, allocator, v65, v270, sub_1000671DC, 0);
        if (!v75 || block)
        {
LABEL_448:
          if (!v10)
          {
            return v10;
          }

          goto LABEL_449;
        }

LABEL_447:
        CFRelease(v75);
        goto LABEL_448;
      }

      v75 = sub_10009FB8C(v65, &block, 3.0);
      v261 = objc_autoreleasePoolPush();
      v262 = off_100298C40;
      if (v75)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: found password with non-syncable attribute for network %@.", "__WiFiDeviceAssociate", sub_10000A878(v65)}];
        }

        objc_autoreleasePoolPop(v261);
        goto LABEL_419;
      }

      if (off_100298C40)
      {
        v296 = sub_10000A878(v65);
        if (block)
        {
          v297 = ", although keychain fetch did time out";
        }

        else
        {
          v297 = "";
        }

        [v262 WFLog:4 message:{"%s: No password returned for %@%s", "__WiFiDeviceAssociate", v296, v297}];
      }

LABEL_508:
      objc_autoreleasePoolPop(v261);
      v10 = 4294967196;
      goto LABEL_449;
    case 2:
      kdebug_trace();
      v54 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:"Disassociating."];
      }

      objc_autoreleasePoolPop(v54);
      v56 = sub_1000627E8(a2, *(v347 + 8), v55, *(a2 + 5128), "__WiFiDeviceDisassociateQueued", 11294);
      goto LABEL_162;
    case 3:
      v37 = *(v347 + 8);
      v58 = *(v347 + 24);
      v57 = *(v347 + 32);
      v59 = sub_100007060(a2, v37);
      if (!v59)
      {
        goto LABEL_547;
      }

      v60 = v59;
      v61 = CFGetTypeID(v59);
      if (v61 != sub_100006F40())
      {
        *(a2 + 3936) = v58;
        *(a2 + 3944) = v57;
        for (i = 6; ; --i)
        {
          v135 = Apple80211Set();
          v10 = v135;
          if (v135 <= 15)
          {
            if (v135 != -3905)
            {
              goto LABEL_243;
            }
          }

          else if (v135 != 61 && v135 != 16)
          {
            goto LABEL_244;
          }

          if (!i)
          {
LABEL_243:
            if (!v135)
            {
              return v10;
            }

LABEL_244:
            sub_1001517E8(a2, v37, v135, v136, v137, v138, v139, v140, v309, v311, v312, SHIDWORD(v312), v313, v314, v315, v316, v317, v320, theDict, v325, v328);
            return v10;
          }

          usleep(0x7A120u);
        }
      }

      return sub_1001ACAEC(v60);
    case 4:
      v37 = *(v347 + 8);
      v38 = *(v347 + 16);
      v39 = *(v347 + 24);
      v40 = sub_100007060(a2, v37);
      if (!v40)
      {
        goto LABEL_547;
      }

      v41 = CFGetTypeID(v40);
      if (v41 == sub_100006F40())
      {
        goto LABEL_406;
      }

      v43 = *(a2 + 3296);
      if (v43)
      {
        IOPMAssertionRelease(v43);
      }

      v44 = *(a2 + 3304);
      if (!v44)
      {
        goto LABEL_406;
      }

      if (_MISStopService)
      {
        v45 = _MISStopService(v44);
        if (!v45)
        {
          goto LABEL_406;
        }
      }

      else
      {
        v45 = -1;
      }

      v259 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"Unable to shutdown mobile internet sharing: %s\n", strerror(v45)}];
      }

      objc_autoreleasePoolPop(v259);
LABEL_406:
      v10 = sub_1000627E8(a2, v37, v42, *(a2 + 5128), "__WiFiDeviceStopNetworkQueued", 3476);
      if (v38)
      {
        v38(a2, v37, v10, v39);
      }

      goto LABEL_408;
    case 5:
      v107 = *(v347 + 8);
      *allocatorb = *(v347 + 24);
      v108 = sub_100007060(a2, v107);
      *(a2 + 3952) = *allocatorb;
      v109 = CFGetTypeID(v108);
      if (v109 != sub_100006F40())
      {
        for (j = 6; ; --j)
        {
          v127 = Apple80211Set();
          v10 = v127;
          if (v127 <= 15)
          {
            if (v127 != -3905)
            {
              goto LABEL_245;
            }
          }

          else if (v127 != 61 && v127 != 16)
          {
            goto LABEL_246;
          }

          if (!j)
          {
LABEL_245:
            if (!v127)
            {
              return v10;
            }

LABEL_246:
            v111 = a2;
            v112 = v107;
            v113 = v10;
            goto LABEL_247;
          }

          usleep(0x7A120u);
        }
      }

      v110 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"Start WiFi Direct Group is not supported by %@", v107}];
      }

      objc_autoreleasePoolPop(v110);
      v10 = 4294963396;
      v111 = a2;
      v112 = v107;
      v113 = 4294963396;
LABEL_247:
      sub_10005BAE0(v111, v112, v113);
      return v10;
    case 6:
      v37 = *(v347 + 8);
      v114 = *(v347 + 16);
      v115 = *(v347 + 24);
      v116 = sub_100007060(a2, v37);
      if (!v116)
      {
LABEL_547:
        sub_10015262C(v37);
        return 4294963396;
      }

      v117 = CFGetTypeID(v116);
      if (v117 == sub_100006F40())
      {
        v118 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"Stop WiFi Direct Group is not suported by %@", v37}];
        }

        v64 = v118;
        goto LABEL_158;
      }

      for (k = 6; ; --k)
      {
        v151 = Apple80211Set();
        v10 = v151;
        if (v151 != -3905 && v151 != 61 && v151 != 16)
        {
          break;
        }

        if (!k)
        {
          break;
        }

        usleep(0x7A120u);
      }

      if (v114)
      {
        v114(a2, v37, v151, v115);
      }

      goto LABEL_408;
    case 7:
      v33 = *(v347 + 8);
      LODWORD(block) = *(v347 + 24);
      v62 = sub_100007060(a2, v33);
      if (!v62)
      {
        goto LABEL_532;
      }

      v63 = CFGetTypeID(v62);
      if (v63 != sub_100006F40())
      {
        for (m = 6; ; --m)
        {
          v143 = Apple80211Set();
          v10 = v143;
          if (v143 != -3905 && v143 != 61 && v143 != 16)
          {
            break;
          }

          if (!m)
          {
            break;
          }

          usleep(0x7A120u);
        }

        goto LABEL_408;
      }

      v36 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"Set Bluetooth State command is not supported by %@", v33}];
      }

      goto LABEL_62;
    case 8:
      v119 = *(v347 + 8);
      v120 = *(v347 + 16);
      v121 = sub_100007060(a2, v119);
      if (!v121)
      {
        sub_10015262C(v119);
        return 4294963396;
      }

      v122 = v121;
      v123 = CFGetTypeID(v121);
      if (v123 == sub_100006F40())
      {
        v56 = sub_1001AC940(v122, v120);
LABEL_162:
        v10 = v56;
      }

      else
      {
        for (n = 6; ; --n)
        {
          v154 = Apple80211SetPowerState();
          v10 = v154;
          if (v154 != -3905 && v154 != 61 && v154 != 16)
          {
            break;
          }

          if (!n)
          {
            break;
          }

          usleep(0x7A120u);
        }
      }

      goto LABEL_408;
    case 9:
      v47 = *(v347 + 8);
      v48 = *(v347 + 16);
      *theArray = *(v347 + 24);
      v49 = sub_100007060(a2, v47);
      v50 = objc_autoreleasePoolPush();
      if (!v49)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"Unknown interface %@", v47}];
        }

        v53 = v50;
        goto LABEL_49;
      }

      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"Attempting Apple80211GasRequest on %@", v47}];
      }

      objc_autoreleasePoolPop(v50);
      v51 = CFGetTypeID(v49);
      if (v51 == sub_100006F40())
      {
        v52 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:"Gas request is not supported on virtual interfaces."];
        }

        v53 = v52;
LABEL_49:
        objc_autoreleasePoolPop(v53);
        return 4294963396;
      }

      *(a2 + 4280) = *theArray;
      valuePtr[0] = -1.0;
      v132 = CFDictionaryGetValue(v48, @"SCAN_MAXAGE");
      if (v132)
      {
        CFNumberGetValue(v132, kCFNumberDoubleType, valuePtr);
      }

      v133 = CFDictionaryGetValue(v48, @"CacheOnly");
      v318 = v47;
      if (v133)
      {
        v321 = CFBooleanGetValue(v133) != 0;
      }

      else
      {
        v321 = 0;
      }

      theDicta = v48;
      if (!v48 || (v159 = valuePtr[0], valuePtr[0] == 0.0) || (sub_1000665B4(*(a2 + 5080), 3600.0), (v160 = CFArrayGetCount(*(a2 + 5080))) == 0) || (v161 = v160, v162 = CFDictionaryGetValue(v48, @"GAS_NETWORKS"), v163 = CFDictionaryGetValue(v48, @"GAS_QUERY"), v164 = CFDictionaryGetValue(v48, @"GAS_PROTOCOL"), v161 < 1) || !v162 || !v163 || (v165 = v164) == 0)
      {
LABEL_324:
        sub_100152510();
        v46 = 0;
        v197 = theDicta;
        goto LABEL_325;
      }

      v326 = v162;
      v329 = v163;
      v331 = v164;
      while (1)
      {
        v166 = CFArrayGetValueAtIndex(*(a2 + 5080), v161 - 1);
        if (!v166)
        {
          goto LABEL_318;
        }

        v167 = v166;
        v168 = sub_1000A5018(v166);
        if (!v168)
        {
          goto LABEL_318;
        }

        v169 = v168;
        if (v159 > 0.0)
        {
          v170 = CFAbsoluteTimeGetCurrent();
          if (v170 - sub_10010DB50(v167) > v159)
          {
            goto LABEL_318;
          }
        }

        v171 = CFDictionaryGetValue(v169, @"GAS_PROTOCOL");
        if (!v171)
        {
          goto LABEL_318;
        }

        if (!CFEqual(v165, v171))
        {
          goto LABEL_318;
        }

        v172 = CFDictionaryGetValue(v169, @"GAS_QUERY");
        if (!v172)
        {
          goto LABEL_318;
        }

        if (!CFEqual(v163, v172))
        {
          goto LABEL_318;
        }

        theArrayc = sub_10009A8E0(v167);
        if (!theArrayc)
        {
          goto LABEL_318;
        }

        v173 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        v174 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        v175 = 0;
        v176 = 0;
        v333 = 0;
        if (!v173 || !v174)
        {
          goto LABEL_309;
        }

        v335 = v174;
        v333 = sub_100151A2C(v162);
        v176 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        if (v176)
        {
          break;
        }

        v175 = 0;
        v174 = v335;
LABEL_310:
        v195 = v174;
        CFRelease(v173);
        v174 = v195;
LABEL_311:
        if (v174)
        {
          CFRelease(v174);
        }

        if (v333)
        {
          CFRelease(v333);
        }

        if (v176)
        {
          CFRelease(v176);
        }

        if (v175)
        {
          v272 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: found matching request. Using cached result", "__WiFiDeviceCopyCachedGasResponse"}];
          }

          objc_autoreleasePoolPop(v272);
          v273 = CFArrayGetCount(theArrayc);
          v197 = theDicta;
          if (v273)
          {
            v274 = v273;
            v46 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
            if (!v46)
            {
              goto LABEL_325;
            }

            v275 = sub_100151A2C(v162);
            if (v275)
            {
              sub_100152570(v274, v275, theArrayc);
              goto LABEL_325;
            }

            v198 = 1;
LABEL_326:
            v199 = CFDictionaryGetValue(v197, @"GAS_NETWORKS");
            if (v199)
            {
              v200 = v199;
              sub_1000672F4(v199, v46);
              sub_1000673F8(a2, v200);
              if (*(a2 + 64))
              {
                CFRetain(a2);
                v201 = *(a2 + 64);
                *&block = _NSConcreteStackBlock;
                *(&block + 1) = 3221225472;
                v354 = sub_10006743C;
                v355 = &unk_10025EAD8;
                v356 = a2;
                dispatch_async(v201, &block);
              }

              else
              {
                v286 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:4 message:{"%s: null queue.", "__WiFiDeviceGasStartAsyncQueued"}];
                }

                objc_autoreleasePoolPop(v286);
              }

              v10 = 0;
            }

            else
            {
              v271 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: Oops - no networks in request", "__WiFiDeviceGasStartAsyncQueued"}];
              }

              objc_autoreleasePoolPop(v271);
              v10 = 4294963396;
              sub_100067544(a2, v318, 0, 4294963396);
            }

            if (v198)
            {
LABEL_473:
              v124 = v46;
LABEL_474:
              CFRelease(v124);
            }
          }

          else
          {
            v46 = 0;
LABEL_325:
            v198 = v46 != 0;
            if (v198 || v321)
            {
              goto LABEL_326;
            }

            v202 = CFDictionaryGetValue(v197, @"GAS_NETWORKS");
            if (v202)
            {
              v203 = v202;
              MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v197);
              if (MutableCopy)
              {
                v46 = MutableCopy;
                v205 = sub_100035314(v203);
                if (v205)
                {
                  v206 = v205;
                  CFDictionaryReplaceValue(v46, @"GAS_NETWORKS", v205);
                  v10 = Apple80211GasRequest();
                  if (v10)
                  {
                    sub_100067544(a2, v318, 0, v10);
                  }

                  else
                  {
                    sub_10006765C(a2, v197);
                  }

                  CFRelease(v206);
                }

                else
                {
                  v10 = 4294963396;
                }

                goto LABEL_473;
              }
            }

            return 4294963396;
          }

          return v10;
        }

LABEL_318:
        if (v161-- <= 1)
        {
          goto LABEL_324;
        }
      }

      v177 = CFArrayGetCount(v162);
      if (v177 >= 1)
      {
        v178 = v177;
        for (ii = 0; ii != v178; ++ii)
        {
          v180 = CFArrayGetValueAtIndex(v162, ii);
          if (v180)
          {
            v181 = sub_10000A540(v180, @"CHANNEL");
            if (v181)
            {
              CFArrayAppendValue(v176, v181);
            }
          }
        }
      }

      if (v333)
      {
        v182 = CFArrayGetCount(theArrayc);
        v183 = CFArrayGetCount(v333);
        v175 = 0;
        if (v183 && v182)
        {
          v184 = v183;
          if (v182 < v183)
          {
            v162 = v326;
          }

          else
          {
            if (v182 >= 1)
            {
              for (jj = 0; jj != v182; ++jj)
              {
                v186 = CFArrayGetValueAtIndex(theArrayc, jj);
                if (v186)
                {
                  v187 = v186;
                  v188 = CFDictionaryGetValue(v186, @"BSSID");
                  v189 = CFDictionaryGetValue(v187, @"CHANNEL");
                  if (v188)
                  {
                    v190 = v189;
                    if (v189)
                    {
                      CFArrayAppendValue(v173, v188);
                      CFArrayAppendValue(v335, v190);
                    }
                  }
                }
              }
            }

            if (v184 < 1)
            {
              v191 = 0;
              v162 = v326;
            }

            else
            {
              v191 = 0;
              v162 = v326;
              while (1)
              {
                v192 = CFArrayGetValueAtIndex(v333, v191);
                v193 = CFArrayGetValueAtIndex(v176, v191);
                if (v192)
                {
                  v357.length = CFArrayGetCount(v173);
                  v357.location = 0;
                  if (!CFArrayContainsValue(v173, v357, v192))
                  {
                    break;
                  }
                }

                v194 = CFArrayGetValueAtIndex(v335, v191);
                if (v193)
                {
                  if (v194 && !CFEqual(v193, v194))
                  {
                    break;
                  }
                }

                if (v184 == ++v191)
                {
                  v191 = v184;
                  break;
                }
              }
            }

            v175 = v191 == v184;
          }

          v163 = v329;
        }
      }

      else
      {
        v333 = 0;
        v175 = 0;
      }

      v165 = v331;
      v174 = v335;
LABEL_309:
      if (!v173)
      {
        goto LABEL_311;
      }

      goto LABEL_310;
    case 0xA:
      v277 = *(v347 + 8);
      v276 = *(v347 + 16);
      v279 = *(v347 + 24);
      v278 = *(v347 + 32);
      v280 = *(v347 + 40);
      sub_10014DDAC(a2, v16, v17, v18, v19, v20, v21, v22, v309, v311, v312, v313, v314, v315, v316, v317, v320, theDict);
      if (v281)
      {
        v282 = v281;
        *(a2 + 3968) = v279;
        *(a2 + 3976) = v278;
        v283 = *(a2 + 3984);
        if (v283)
        {
          CFRelease(v283);
          *(a2 + 3984) = 0;
        }

        if (v276)
        {
          v284 = CFRetain(v276);
        }

        else
        {
          v284 = 0;
        }

        *(a2 + 3984) = v284;
        v291 = *(a2 + 3992);
        if (v291)
        {
          CFRelease(v291);
          *(a2 + 3992) = 0;
        }

        if (v280)
        {
          v292 = CFRetain(v280);
        }

        else
        {
          v292 = 0;
        }

        *(a2 + 3992) = v292;
        *(a2 + 4000) = CFAbsoluteTimeGetCurrent();
        v10 = sub_10010FEC8(v282, v277, v276, sub_1000671E0, a2, v280);
        if (!v10)
        {
          return v10;
        }

        v293 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: WiFiVirtualInterfaceStartAwdl() returned error %d.", "__WiFiDeviceStartAwdlQueued", v10}];
        }
      }

      else
      {
        v293 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: not an AWDL interface.", "__WiFiDeviceStartAwdlQueued"}];
        }

        v10 = 4294963393;
      }

      objc_autoreleasePoolPop(v293);
      if (v279)
      {
        v279(a2, v277, v10, v278);
        sub_10002ECA0(a2);
        *(a2 + 3968) = 0;
        *(a2 + 3976) = 0;
        v307 = *(a2 + 3984);
        if (v307)
        {
          CFRelease(v307);
          *(a2 + 3984) = 0;
        }

        v308 = *(a2 + 3992);
        if (v308)
        {
          CFRelease(v308);
          *(a2 + 3992) = 0;
        }
      }

      return v10;
    case 0xB:
      v285 = *(v347 + 8);
      v46 = *(v347 + 16);
      v10 = sub_100151974(a2, v285, v46, *(v347 + 24), *(v347 + 32));
      sub_10002EDD4(*(a2 + 176), 0, 0, 0);
      if (v285)
      {
        CFRelease(v285);
      }

      goto LABEL_40;
    case 0xC:
      v88 = *(v347 + 8);
      v89 = *(v347 + 16);
      *(a2 + 4440) = *(v347 + 24);
      theArrayb = v88;
      if (!v88)
      {
        v305 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: null ifName.", "__WiFiDeviceRangingStartAsyncQueued"}];
        }

        goto LABEL_546;
      }

      v90 = kCFAllocatorDefault;
      if (!v89 || !CFArrayGetCount(v89))
      {
        v305 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: empty peers.", "__WiFiDeviceRangingStartAsyncQueued"}];
        }

LABEL_546:
        objc_autoreleasePoolPop(v305);
        Mutable = 0;
        v10 = 4294963396;
        v103 = theArrayb;
        goto LABEL_165;
      }

      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      if (CFArrayGetCount(v89) >= 1)
      {
        v92 = 0;
        do
        {
          v93 = CFArrayGetValueAtIndex(v89, v92);
          if (v93)
          {
            v94 = CFDictionaryCreateMutableCopy(v90, 0, v93);
            if (v94)
            {
              v95 = v94;
              LOBYTE(valuePtr[0]) = 0;
              v96 = CFDictionaryGetValue(v94, @"RANGING_PEER_FLAGS");
              if (v96)
              {
                CFNumberGetValue(v96, kCFNumberSInt8Type, valuePtr);
              }

              v97 = *(a2 + 3984);
              if (v97)
              {
                LODWORD(block) = 0;
                v98 = CFDictionaryGetValue(v97, @"AWDL_INFO_SUPPORTED_CHANNEL_FLAGS");
                if (v98)
                {
                  CFNumberGetValue(v98, kCFNumberSInt32Type, &block);
                  if ((block & 0x80000) != 0)
                  {
                    LOBYTE(valuePtr[0]) |= 0x10u;
                  }

                  if ((block & 0x40000) != 0)
                  {
                    LOBYTE(valuePtr[0]) |= 0x20u;
                  }
                }
              }

              if (*(a2 + 5304))
              {
                LOBYTE(valuePtr[0]) |= 2u;
              }

              if (_os_feature_enabled_impl())
              {
                LOBYTE(valuePtr[0]) |= 4u;
              }

              if (*(a2 + 5305))
              {
                LOBYTE(valuePtr[0]) |= 8u;
              }

              if ((MGGetBoolAnswer() & 1) == 0 && sub_10006B824())
              {
                v99 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: debug profile installed, enabling ranging log dump", "__WiFiDeviceRangingStartAsyncQueued"}];
                }

                objc_autoreleasePoolPop(v99);
                LOBYTE(valuePtr[0]) |= 2u;
                v90 = kCFAllocatorDefault;
              }

              v100 = CFNumberCreate(v90, kCFNumberSInt8Type, valuePtr);
              if (v100)
              {
                v101 = v100;
                CFDictionarySetValue(v95, @"RANGING_PEER_FLAGS", v100);
                CFRelease(v101);
              }

              CFArrayAppendValue(Mutable, v95);
              CFRelease(v95);
              v90 = kCFAllocatorDefault;
            }
          }

          ++v92;
        }

        while (v92 < CFArrayGetCount(v89));
      }

      v102 = objc_autoreleasePoolPush();
      v103 = theArrayb;
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"Attempting APPLE80211_IOC_RANGING_START on %@ to %ld peers", theArrayb, CFArrayGetCount(Mutable)}];
      }

      objc_autoreleasePoolPop(v102);
      for (kk = 6; ; --kk)
      {
        v105 = Apple80211RangeAsync();
        v10 = v105;
        if (v105 <= 15)
        {
          if (v105 != -3905)
          {
            break;
          }
        }

        else if (v105 != 61 && v105 != 16)
        {
          goto LABEL_165;
        }

        if (!kk)
        {
          break;
        }

        usleep(0x7A120u);
      }

      if (!v105)
      {
        goto LABEL_166;
      }

LABEL_165:
      sub_10005C904(a2, v103, 0, v10);
LABEL_166:
      if (Mutable)
      {
        v124 = Mutable;
        goto LABEL_474;
      }

      return v10;
    case 0xD:
      v33 = *(v347 + 8);
      LODWORD(block) = *(v347 + 16);
      v34 = sub_100007060(a2, v33);
      if (!v34)
      {
LABEL_532:
        sub_10015262C(v33);
        return 4294963396;
      }

      v35 = CFGetTypeID(v34);
      if (v35 == sub_100006F40())
      {
        v36 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"Set display State command is not supported by %@", v33}];
        }

LABEL_62:
        v64 = v36;
LABEL_158:
        objc_autoreleasePoolPop(v64);
        v10 = 4294963396;
      }

      else
      {
        for (mm = 6; ; --mm)
        {
          v130 = Apple80211Set();
          v10 = v130;
          if (v130 != -3905 && v130 != 61 && v130 != 16)
          {
            break;
          }

          if (!mm)
          {
            break;
          }

          usleep(0x7A120u);
        }
      }

LABEL_408:
      sub_10002EDD4(*(a2 + 176), 0, 0, 0);
      return v10;
    case 0xE:
      v81 = *(v347 + 8);
      if (v81)
      {
        if ((*(a2 + 40) & 2) == 0)
        {
          v10 = 4294963389;
          goto LABEL_172;
        }

        *allocatora = *(v347 + 24);
        v82 = sub_100007060(a2, v81);
        if (v82)
        {
          v83 = CFGetTypeID(v82);
          if (v83 != sub_100006F40())
          {
            *(a2 + 4760) = *allocatora;
            v84 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"Attempting APPLE80211_IOC_SENSING_ENABLE on %@", v81}];
            }

            objc_autoreleasePoolPop(v84);
            for (nn = 6; ; --nn)
            {
              v86 = Apple80211Set();
              v10 = v86;
              if (v86 <= 15)
              {
                if (v86 != -3905)
                {
                  break;
                }
              }

              else if (v86 != 61 && v86 != 16)
              {
                goto LABEL_169;
              }

              if (!nn)
              {
                break;
              }

              usleep(0x7A120u);
            }

            if (!v86)
            {
              return v10;
            }

LABEL_169:
            v125 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s: IOC %d returned error %d", "__WiFiDeviceSensingEnableAsyncQueued", 408, v10}];
            }

            objc_autoreleasePoolPop(v125);
            if (!v10)
            {
              return v10;
            }

LABEL_172:
            sub_100151AD4();
            return v10;
          }

          v306 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: unsupported interface %@", "__WiFiDeviceSensingEnableAsyncQueued", v81}];
          }
        }

        else
        {
          v306 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: unknown interface %@", "__WiFiDeviceSensingEnableAsyncQueued", v81}];
          }
        }

        objc_autoreleasePoolPop(v306);
        v10 = 4294963393;
        goto LABEL_172;
      }

      v10 = 4294963396;
      goto LABEL_172;
    case 0xF:
      v46 = *(v347 + 8);
      v10 = sub_100062B64(a2, v16, *(v347 + 16));
      sub_10002EDD4(*(a2 + 176), 0, 0, 0);
LABEL_40:
      if (!v46)
      {
        return v10;
      }

      goto LABEL_473;
    default:
      *(v347 + 56) = 0;
      return 4294963394;
  }
}

void sub_100028E5C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      v3 = dispatch_time(0, 1000000000 * a2);

      dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }
}

void sub_100028EC4(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 5000);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 5000) = 0;
  }

  if (cf)
  {
    *(a1 + 5000) = CFRetain(cf);
  }
}

__CFDictionary *sub_1000291D4(id *a1)
{
  if (_os_feature_enabled_impl())
  {
    v2 = [objc_msgSend(a1[1117] "statistics")];
    v3 = [objc_msgSend(v2 "debugInfo")];

    return v3;
  }

  else
  {
    if (!a1)
    {
      return 0;
    }

    v44[0] = @"PrevChannelScan";
    v44[1] = @"MRUChannelScan";
    v44[2] = @"RemChannelScan";
    v44[3] = @"Broadcast24GScan";
    v44[4] = @"Broadcast5GScan";
    v44[5] = @"BroadcastGeoBasedAllBandScan";
    v44[6] = @"BroadcastPeriodicAllBandScan";
    v44[7] = @"BroadcastLegacyAllBandScan";
    v44[8] = @"BroadcastLocnInvalidAllBandScan";
    v44[9] = @"BroadcastFake5GScan";
    v44[10] = @"HiddenNetworkScan";
    v44[11] = @"LocnPrevChannelScan";
    v44[12] = @"LocnMRUChannelScan";
    v43[0] = @"DeviceEnable";
    v43[1] = @"ATJOneShot";
    v43[2] = @"BTStateChange";
    v43[3] = @"PowerStateChange";
    v43[4] = @"LinkStateChange";
    v43[5] = @"WiFiDirectDisabled";
    v43[6] = @"ClientAssociateCallback";
    v43[7] = @"AdhocNetworkStopped";
    v43[8] = @"BatteryPowerResource";
    v43[9] = @"AWDLBringup";
    v43[10] = @"AWDLBringdown";
    v43[11] = @"AJDeferralTimer";
    v43[12] = @"MISEvent";
    v43[13] = @"SetNetworkCall";
    v42[0] = @"ResetTypeNone";
    v42[1] = @"ResetTypeModerate";
    v42[2] = @"ResetTypeFull";
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v6 = 0;
    v7 = a1 + 5988;
    do
    {
      v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, v7);
      if (v8)
      {
        v9 = v8;
        CFDictionarySetValue(Mutable, v44[v6], v8);
        CFRelease(v9);
      }

      ++v6;
      v7 += 4;
    }

    while (v6 != 13);
    v10 = 0;
    v11 = a1 + 718;
    do
    {
      v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, v11);
      if (v12)
      {
        v13 = v12;
        CFDictionarySetValue(Mutable, v43[v10], v12);
        CFRelease(v13);
      }

      ++v10;
      v11 = (v11 + 4);
    }

    while (v10 != 14);
    v14 = 0;
    v15 = a1 + 715;
    do
    {
      v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, v15);
      if (v16)
      {
        v17 = v16;
        CFDictionarySetValue(Mutable, v42[v14], v16);
        CFRelease(v17);
      }

      ++v14;
      v15 = (v15 + 4);
    }

    while (v14 != 3);
    v18 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, a1 + 767);
    if (v18)
    {
      v19 = v18;
      CFDictionarySetValue(Mutable, @"NetworkTransitionScan", v18);
      CFRelease(v19);
    }

    v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, a1 + 5908);
    if (v20)
    {
      v21 = v20;
      CFDictionarySetValue(Mutable, @"AJNum5GhzOnlyNetworks", v20);
      CFRelease(v21);
    }

    v22 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, a1 + 739);
    if (v22)
    {
      v23 = v22;
      CFDictionarySetValue(Mutable, @"AJNumDualBandNetworks", v22);
      CFRelease(v23);
    }

    v24 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, a1 + 5916);
    if (v24)
    {
      v25 = v24;
      CFDictionarySetValue(Mutable, @"AJNum24GhzOnlyNetworks", v24);
      CFRelease(v25);
    }

    v26 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, a1 + 5900);
    if (v26)
    {
      v27 = v26;
      CFDictionarySetValue(Mutable, @"AJ5GhzTriggerForBusy24GhzBand", v26);
      CFRelease(v27);
    }

    v28 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, a1 + 5892);
    if (v28)
    {
      v29 = v28;
      CFDictionarySetValue(Mutable, @"AJ5GhzTriggerForHS20Networks", v28);
      CFRelease(v29);
    }

    v30 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, a1 + 737);
    if (v30)
    {
      v31 = v30;
      CFDictionarySetValue(Mutable, @"AJ5GhzTriggerForLegacyHSNetworks", v30);
      CFRelease(v31);
    }

    v32 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, a1 + 738);
    if (v32)
    {
      v33 = v32;
      CFDictionarySetValue(Mutable, @"AJ5GhzTriggerForNetworks", v32);
      CFRelease(v33);
    }

    v34 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, a1 + 736);
    if (v34)
    {
      v35 = v34;
      CFDictionarySetValue(Mutable, @"AJ5GhzTriggerForHiddenNetworks", v34);
      CFRelease(v35);
    }

    v36 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, a1 + 6236);
    if (v36)
    {
      v37 = v36;
      CFDictionarySetValue(Mutable, @"AutoHotspotBTScanCount", v36);
      CFRelease(v37);
    }

    v38 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, a1 + 780);
    if (v38)
    {
      v39 = v38;
      CFDictionarySetValue(Mutable, @"AutoHotspotBTScanDuration", v38);
      CFRelease(v39);
    }

    v40 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCharType, a1 + 872);
    if (v40)
    {
      v41 = v40;
      CFDictionarySetValue(Mutable, @"isADHSConnected", v40);
      CFRelease(v41);
    }

    return Mutable;
  }
}

void sub_10002983C(uint64_t a1, uint64_t a2, id *a3, __CFDictionary **a4)
{
  if (a3)
  {
    if (a4)
    {
      *a4 = sub_1000291D4(a3);
    }

    else
    {
      sub_10019A0A0();
    }
  }

  else
  {
    sub_10019A10C();
  }
}

uint64_t sub_100029880(uint64_t a1, _DWORD *a2)
{
  v3 = sub_10001134C(a1, a2);
  v4 = sub_10001D1E8(v3);
  if (v4)
  {
    v5 = v4;
    if (sub_100010038(v4))
    {
      v7 = sub_100029A10(v5);
      if (v7)
      {
        *v2 = sub_100029A18(v7);
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v9 = sub_10000715C(v5);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_get_wow_capability(mach_port_t message:{int *)", v9}];
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRelease(v5);
  }

  return 0;
}

void sub_100029934(uint64_t a1, uint64_t a2, uint64_t a3, CFMutableDictionaryRef *a4)
{
  if (a3)
  {
    if (a4)
    {
      v5 = *(a3 + 7128);
      if (v5)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v5);
      }

      else
      {
        MutableCopy = 0;
      }

      *a4 = MutableCopy;
    }

    else
    {
      sub_10019A178();
    }
  }

  else
  {
    sub_10019A1E4();
  }
}

_DWORD *sub_100029994(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_100029880(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

uint64_t sub_100029A18(uint64_t a1)
{
  context[0] = a1;
  context[1] = 0xAAAAAAAA00000031;
  v3 = 0;
  v4 = 0;
  context[2] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  return v3;
}

uint64_t sub_100029A80(uint64_t a1, void *a2, _DWORD *a3)
{
  v4 = sub_100024F4C(a1, a2, a3);
  v5 = sub_10001D1E8(v4);
  if (v5)
  {
    v6 = v5;
    if (sub_100010038(v5))
    {
      v8 = sub_100029A10(v6);
      if (v8)
      {
        v9 = sub_100029BE0(v8);
        if (v9)
        {
          sub_10000393C(v9);
          CFRelease(v3);
        }
      }
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v11 = sub_10000715C(v6);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_copy_wow_state(mach_port_t message:{vm_offset_t *, mach_msg_type_number_t *)", v11}];
      }

      objc_autoreleasePoolPop(v7);
    }

    CFRelease(v6);
  }

  return 0;
}

_DWORD *sub_100029B38(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = sub_100029A80(result[3], (a2 + 28), (a2 + 52));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

__CFDictionary *sub_100029BE0(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_10000836C();
  Mutable = CFDictionaryCreateMutable(v2, v3, v4, v5);
  v7 = Mutable;
  if (Mutable)
  {
    v8 = &kCFBooleanTrue;
    if (!*(a1 + 1168))
    {
      v8 = &kCFBooleanFalse;
    }

    CFDictionaryAddValue(Mutable, @"WoWEnabled", *v8);
    if (*(a1 + 1168))
    {
      Count = CFSetGetCount(*(a1 + 1176));
    }

    else
    {
      Count = 0;
    }

    valuePtr = Count;
    v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &valuePtr);
    if (v10)
    {
      v11 = v10;
      v12 = sub_100007514();
      CFDictionaryAddValue(v12, v13, v14);
      CFRelease(v11);
    }

    if (valuePtr)
    {
      v15 = sub_10000836C();
      v18 = CFArrayCreateMutable(v15, v16, v17);
      CFSetApplyFunction(*(a1 + 1176), sub_100029DE8, v18);
      v19 = sub_10000D818();
      CFDictionaryAddValue(v19, v20, v21);
      if (v18)
      {
        CFRelease(v18);
      }
    }

    v22 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v23 = "Enabled";
      if (!*(a1 + 1168))
      {
        v23 = "Disabled";
      }

      [off_100298C40 WFLog:3 message:{"WoW is %s, %ld WoW Clients", v23, valuePtr}];
    }

    objc_autoreleasePoolPop(v22);
  }

  return v7;
}

id sub_100029D7C(uint64_t a1)
{

  return [v1 addFieldForKey:v2 value:a1 options:1];
}

void sub_100029DE8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      valuePtr = sub_100029EA4(a1);
      v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
      if (v3)
      {
        v4 = v3;
        v5 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v8 = sub_10000715C(a1);
          [sub_10002147C() WFLog:v8 message:v4];
        }

        objc_autoreleasePoolPop(v5);
        v6 = sub_1000086AC();
        CFArrayAppendValue(v6, v7);
        CFRelease(v4);
      }
    }
  }
}

void sub_100029F04()
{
  sub_10000D798();
  v2 = v1;
  sub_10000842C();
  *v3 = 0;
  v4 = sub_10000FFF0();
  v5 = sub_10000D824(v4);
  if (v5)
  {
    v6 = v5;
    if (sub_100010038(v5))
    {
      v8 = sub_100029DC0();
      if (sub_100017AC4(v8, v9))
      {
        v10 = sub_10002D09C();
        if (sub_100010040(v10, v0))
        {
          v11 = sub_100021D64();
          if (sub_100029A10(v11))
          {
            v12 = sub_10009502C();
            *v2 = sub_10002A0D0(v12);
          }
        }

        CFRelease(v0);
      }
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v6);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v7);
    }

    CFRelease(v6);
  }

  v13 = sub_100029DC0();
  sub_100017CC0(v13, v14);
  sub_1000084B8();
}

void sub_100029FEC(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 56)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return;
  }

  if (*(a1 + 39) != 1 || *(a1 + 40) != *(a1 + 52))
  {
    v4 = -300;
    goto LABEL_9;
  }

  sub_100029F04();
  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  if (!v3)
  {
    *(a2 + 4) = 40;
  }
}

const void *sub_10002A0AC(uint64_t a1)
{

  return sub_10000FF3C(v1, a1);
}

id sub_10002A0E4()
{

  return [v0 WFLog:3 message:?];
}

void sub_10002A114()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkGetProperty"}];
  }

  objc_autoreleasePoolPop(v0);
}

id sub_10002A1AC()
{

  return [v0 setObject:v1 forKey:?];
}

CFStringRef sub_10002A1CC(CFDictionaryRef *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "WiFiNetworkCopyPassword";
    v7 = 2112;
    v8 = sub_10002A2C0(a1);
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: Copy password for Network %@", &v5, 0x16u);
  }

  if (!a1 || !CFDictionaryContainsKey(a1[2], @"PayloadUUID") || (v2 = sub_10002A2C0(a1), (result = sub_10002A330(v2)) == 0))
  {
    v4 = sub_10002A2C0(a1);
    return sub_1000A5EAC(v4);
  }

  return result;
}

const __CFString *sub_10002A2C0(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_10000A878(a1);
  v3 = v2;
  if ((!v2 || !CFStringGetLength(v2)) && sub_10000AFE4(a1))
  {
    v4 = sub_10000A540(a1, @"DomainName");
    if (v4)
    {
      return v4;
    }
  }

  return v3;
}

CFStringRef sub_10002A330(const __CFString *a1)
{
  v1 = a1;
  result = 0;
  if (!a1)
  {
    return v1;
  }

  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Attempting to fetch non-syncable password for account %@", "WiFiSecurityCopyNonSyncablePassword", v1}];
  }

  objc_autoreleasePoolPop(v2);
  if (MKBGetDeviceLockState() == 1 && !MKBUserUnlockedSinceBoot())
  {
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Cannot copy password for %@. Device wasn't unlocked yet", "WiFiSecurityCopyNonSyncablePassword", v1}];
    }

    objc_autoreleasePoolPop(v9);
    v4 = 0;
    goto LABEL_18;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
  v4 = Mutable;
  if (!Mutable)
  {
LABEL_18:
    v1 = 0;
    goto LABEL_19;
  }

  CFDictionarySetValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionarySetValue(v4, kSecAttrAccount, v1);
  CFDictionarySetValue(v4, kSecAttrService, @"AirPort");
  CFDictionarySetValue(v4, kSecUseSystemKeychain, kCFBooleanTrue);
  CFDictionarySetValue(v4, kSecReturnData, kCFBooleanTrue);
  v5 = SecItemCopyMatching(v4, &result);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = result == 0;
  }

  if (v6)
  {
    v7 = v5;
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s:[%@] Error result %d", "WiFiSecurityCopyNonSyncablePassword", v1, v7}];
    }

    objc_autoreleasePoolPop(v8);
    goto LABEL_18;
  }

  v1 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, result, 0x8000100u);
LABEL_19:
  if (result)
  {
    CFRelease(result);
    result = 0;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v1;
}

void sub_10002A6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002A6EC(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    *&buf[4] = "[WiFiAnalyticsManager updateNetworkTraitsCache]_block_invoke";
    v34 = 1024;
    v35 = 382;
    v36 = 2112;
    v37 = &off_1002826A0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Fetching networks with traits:%@", buf, 0x1Cu);
  }

  v4 = [v2 deviceAnalyticsClient];
  v5 = [v4 networkSsidsByTraits:&off_1002826A0 withError:0];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:&off_100281068];
    if (v6)
    {
      v7 = [v2 movingNetworkSsidsCache];
      [v7 removeAllObjects];

      [*(*(a1 + 32) + 40) addObjectsFromArray:v6];
    }

    v8 = [v5 objectForKeyedSubscript:&off_100281080];
    if (v8)
    {
      v9 = [v2 omnipresentNetworkSsidsCache];
      [v9 removeAllObjects];

      v10 = [v2 omnipresentNetworkSsidsCache];
      [v10 addObjectsFromArray:v8];
    }

    v11 = [v5 objectForKeyedSubscript:&off_100281098];
    if (v11)
    {
      v12 = [v2 poorCoverageNetworkSsidsCache];
      [v12 removeAllObjects];

      v13 = [v2 poorCoverageNetworkSsidsCache];
      [v13 addObjectsFromArray:v11];
    }

    v14 = [v5 objectForKeyedSubscript:&off_1002810B0];
    if (v11)
    {
      v15 = [v2 highCongestionNetworkSsidsCache];
      [v15 removeAllObjects];

      v16 = [v2 highCongestionNetworkSsidsCache];
      [v16 addObjectsFromArray:v11];
    }

    v17 = +[NSDate date];
    [v2 setDateTraitCachesUpdated:v17];
  }

  else
  {
    sub_100138F0C(buf);
    v6 = *buf;
  }

  [v2 setTraitsCacheUpdateBusy:0];
  v18 = objc_autoreleasePoolPush();
  v19 = off_100298C40;
  if (off_100298C40)
  {
    v20 = [v2 dateTraitCachesUpdated];
    [v19 WFLog:3 message:{"%s: Network traits caches updated at %@", "-[WiFiAnalyticsManager updateNetworkTraitsCache]_block_invoke", v20}];
  }

  objc_autoreleasePoolPop(v18);
  v21 = objc_autoreleasePoolPush();
  v22 = off_100298C40;
  if (off_100298C40)
  {
    v23 = [v2 movingNetworkSsidsCache];
    [v22 WFLog:3 message:{"%s: Moving Networks: %@", "-[WiFiAnalyticsManager updateNetworkTraitsCache]_block_invoke", v23}];
  }

  objc_autoreleasePoolPop(v21);
  v24 = objc_autoreleasePoolPush();
  v25 = off_100298C40;
  if (off_100298C40)
  {
    v26 = [v2 omnipresentNetworkSsidsCache];
    [v25 WFLog:3 message:{"%s: Omnipresent Networks: %@", "-[WiFiAnalyticsManager updateNetworkTraitsCache]_block_invoke", v26}];
  }

  objc_autoreleasePoolPop(v24);
  v27 = objc_autoreleasePoolPush();
  v28 = off_100298C40;
  if (off_100298C40)
  {
    v29 = [v2 poorCoverageNetworkSsidsCache];
    [v28 WFLog:3 message:{"%s: Poor Coverage networks: %@", "-[WiFiAnalyticsManager updateNetworkTraitsCache]_block_invoke", v29}];
  }

  objc_autoreleasePoolPop(v27);
  v30 = objc_autoreleasePoolPush();
  v31 = off_100298C40;
  if (off_100298C40)
  {
    v32 = [v2 highCongestionNetworkSsidsCache];
    [v31 WFLog:3 message:{"%s: High Congestion networks: %@", "-[WiFiAnalyticsManager updateNetworkTraitsCache]_block_invoke", v32}];
  }

  objc_autoreleasePoolPop(v30);
}

void sub_10002AB10()
{
  sub_10000D798();
  v1 = sub_10001095C();
  v2 = sub_10001D1E8(v1);
  if (v2)
  {
    v3 = v2;
    v4 = sub_100010038(v2);
    v5 = objc_autoreleasePoolPush();
    v6 = off_100298C40;
    if (v4)
    {
      if (off_100298C40)
      {
        sub_10000715C(v3);
        [sub_10000FC2C() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v5);
      if (sub_10002ACC0(v3) != v0)
      {
        v7 = sub_100029A10(v3);
        if (v7)
        {
          sub_10002ACC8(v7, v3);
          v8 = sub_1000086AC();
          sub_10002EFB4(v8, v9);
          v10 = sub_100021DA8();
          sub_10002EEB0(v10, v11);
        }
      }
    }

    else
    {
      if (off_100298C40)
      {
        sub_10000715C(v3);
        [v6 WFLog:4 message:"%s Client %@ has no entitlement"];
      }

      objc_autoreleasePoolPop(v5);
    }

    CFRelease(v3);
  }

  sub_1000084B8();
}

void sub_10002AC38(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    sub_10002AB10();
    *(a2 + 32) = v3;
  }
}

void sub_10002ACC8(uint64_t a1, const void *a2)
{
  v4 = CFSetContainsValue(*(a1 + 168), a2);
  CFSetRemoveValue(*(a1 + 144), a2);
  sub_10002ADEC(a1, a2);
  sub_10002AFE0(a1, a2);
  if (sub_10002ACC0(a2) == 1)
  {
    v5 = *(a1 + 152);
LABEL_5:
    CFSetRemoveValue(v5, a2);
    v6 = *(a1 + 800);

    sub_100002E5C(a1, v6);
    return;
  }

  if (sub_10002ACC0(a2) == 2)
  {
    v5 = *(a1 + 160);
    goto LABEL_5;
  }

  if (v4)
  {
    if (_os_feature_enabled_impl())
    {

      sub_1000197A4(a1, 30);
    }

    else
    {

      sub_10007A1F4(a1, 0);
    }
  }
}

void sub_10002ADEC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return;
  }

  sub_100094FF0();
  v4 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", 14);
  if (!v4)
  {
    return;
  }

  v5 = v4;
  if (CFDictionaryGetValue(v2[296], v4))
  {
    v6 = sub_100010938();
    sub_10000715C(v6);
    v7 = sub_100024B8C();
    CFDictionaryRemoveValue(v7, v8);
    if (CFDictionaryGetCount(v3) == 3)
    {
      CFDictionaryRemoveValue(v2[296], v5);
      v9 = sub_100020030(v2);
      if (!v9)
      {
        v18 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: failed to get device managers", "__WiFiManagerEventClearRateLimit"}];
        }

        objc_autoreleasePoolPop(v18);
        goto LABEL_5;
      }

      v10 = v9;
      if (CFArrayGetCount(v9))
      {
        v11 = sub_100011340();
        ValueAtIndex = CFArrayGetValueAtIndex(v11, v12);
        if (ValueAtIndex && (v14 = sub_100010908(ValueAtIndex)) != 0)
        {
          sub_100009664(v14);
          v15 = sub_100024B8C();
          if (!sub_1000D6F38(v15, v16))
          {
LABEL_16:
            CFRelease(v10);
            goto LABEL_5;
          }

          v17 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: Failed to set default LQM interval", "__WiFiManagerEventClearRateLimit"}];
          }
        }

        else
        {
          v17 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: device manager is null", "__WiFiManagerEventClearRateLimit"}];
          }
        }
      }

      else
      {
        v17 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: device managers array is empty", "__WiFiManagerEventClearRateLimit"}];
        }
      }

      objc_autoreleasePoolPop(v17);
      goto LABEL_16;
    }
  }

LABEL_5:

  CFRelease(v5);
}

void sub_10002AFE0(uint64_t a1, const void *a2)
{
  v4 = sub_10002B048(a2);
  CFDictionaryApplyFunction(v4, sub_10007D60C, 0);
  CFSetRemoveValue(*(a1 + 168), a2);
  v5 = *(a1 + 24);

  sub_10000D4C0(a1, v5);
}

uint64_t sub_10002B050(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 224) = a2;
  }

  return result;
}

void sub_10002B05C(uint64_t a1, dispatch_queue_t *a2)
{
  if (a2)
  {
    if (a2[4])
    {
      v3 = MKBGetDeviceLockState() == 1;
      CFRetain(a2);
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_10002B12C;
      v5[3] = &unk_10025EE08;
      v5[4] = a2;
      v5[5] = v3;
      v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, v5);
      dispatch_async(a2[4], v4);
      _Block_release(v4);
    }

    else
    {
      sub_10016C010();
    }
  }

  else
  {
    sub_10016C07C();
  }
}

void sub_10002B12C(uint64_t a1)
{
  sub_10002B170(*(a1 + 32), *(a1 + 40), 0);
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void sub_10002B170(uint64_t a1, uint64_t a2, int a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 832);
  *(a1 + 832) = a2;
  if (MKBUserUnlockedSinceBoot())
  {
    if (!*(a1 + 1408))
    {
      sub_10016C370();
    }

    v8 = *(a1 + 832);
    sub_10002B5D0(a1);
    if (a3 || v7 != v8)
    {
      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        if (*(a1 + 832))
        {
          v10 = "DISABLED";
        }

        else
        {
          v10 = "ENABLED";
        }

        [off_100298C40 WFLog:3 message:{"User interaction %s", v10}];
      }

      objc_autoreleasePoolPop(v9);
      if (!*(a1 + 832))
      {
        if (*(a1 + 2644))
        {
          *(a1 + 2644) = 0;
          v11 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: lock state changed while in LPEM. Restoring power state.", "__WiFiManagerLockStateUpdate"}];
          }

          objc_autoreleasePoolPop(v11);
          v12 = sub_100079A8C(a1);
          sub_100079528(a1, v12, @"LPEM");
        }

        if (!*(a1 + 2424))
        {
          v13 = objc_autoreleasePoolPush();
          if (sub_100076C24(a1, v14))
          {
            v15 = [[WiFi3BarsSource alloc] initWithChangeHandler:0 localStoreType:0];
            *(a1 + 2424) = v15;
            context[0] = a1;
            context[1] = 0xAAAAAAAA00000061;
            context[3] = 0;
            context[4] = 0;
            context[2] = v15;
            CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
          }

          objc_autoreleasePoolPop(v13);
        }

        v16 = objc_autoreleasePoolPush();
        if (![+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")])
        {
          v17 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s initDeviceAnalyticsClient failed. Will retry", "__WiFiManagerLockStateUpdate"}];
          }

          objc_autoreleasePoolPop(v17);
          [+[WiFiManagerAnalytics sharedInstance](WiFiManagerAnalytics triggerDeviceAnalyticsStoreMigrationWithCompletion:"triggerDeviceAnalyticsStoreMigrationWithCompletion:", &stru_100260C88];
        }

        objc_autoreleasePoolPop(v16);
      }

      if ((*(a1 + 756) | 2) == 2)
      {
        v18 = *(a1 + 1144);
        v19 = *(a1 + 832);
        if (!v19)
        {
          v20 = 1;
          sub_10000D1F8(a1, 1);
          if ((*(a1 + 800) & 0x11) != 0)
          {
            v20 = 0;
            v18 = *(a1 + 1136);
          }

          sub_10000D4C0(a1, 1);
          if ((*(a1 + 800) & 0xF) != 0)
          {
            sub_10000D278(a1);
          }

          else
          {
            sub_100006910(a1);
          }

          if (v7 != v8)
          {
            *(a1 + 848) = 0;
          }

          goto LABEL_48;
        }

        sub_1000927AC(a1);
        if ((*(a1 + 800) & 0x2A) == 0)
        {
          if (*(a1 + 1184))
          {
            v18 = *(a1 + 1160);
            v20 = 3;
            goto LABEL_48;
          }

          if (!*(a1 + 1168))
          {
            sub_10000D4C0(a1, 0);
          }
        }

        v20 = 1;
LABEL_48:
        if (_os_feature_enabled_impl())
        {
          sub_1000084DC(a1);
        }

        else
        {
          sub_10000D0D8(a1, v18, v20);
        }

        if (_os_feature_enabled_impl())
        {
          if (*(a1 + 832))
          {
            if (!*(a1 + 816))
            {
              sub_1000197A4(a1, 34);
            }

            goto LABEL_32;
          }

          goto LABEL_59;
        }

        if (v19)
        {
          goto LABEL_32;
        }

        goto LABEL_55;
      }

      v22 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"Ignoring lock state manager->wakeMode %d\n", *(a1 + 756)}];
      }

      objc_autoreleasePoolPop(v22);
      if (v7 != v8 && !*(a1 + 832))
      {
        sub_10000D1F8(a1, 1);
        if (_os_feature_enabled_impl())
        {
LABEL_59:
          sub_1000197A4(a1, 29);
          if (_os_feature_enabled_impl() && [+[WiFiUserInteractionMonitor isPersonalHotspotRecommendationAllowed] sharedInstance]
          {
            sub_100092858(a1, 1);
          }

          goto LABEL_32;
        }

LABEL_55:
        sub_10007A1F4(a1, 2);
      }
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"Device has not been unlocked since boot"];
    }

    objc_autoreleasePoolPop(v21);
    sub_10002B5D0(a1);
  }

LABEL_32:
  objc_autoreleasePoolPop(v6);
}

void sub_10002B5D0(uint64_t a1)
{
  if (*(a1 + 1408))
  {
    if (*(a1 + 816))
    {
      v2 = 1;
    }

    else
    {
      v2 = 3;
    }

    if (*(a1 + 816))
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }

    if (*(a1 + 832))
    {
      v4 = v3;
    }

    else
    {
      v4 = v2;
    }
  }

  else
  {
    v4 = 0;
  }

  [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor setCurrentDisplayState:"setCurrentDisplayState:andLockState:" andLockState:*(a1 + 816) != 0, *(a1 + 832) != 0];
  if (*(a1 + 1392) != v4)
  {
    *(a1 + 1392) = v4;
    if (v4 == 1)
    {
      if (*(a1 + 1904))
      {
        *(a1 + 1904) = 0;
        context = _NSConcreteStackBlock;
        v36 = 3221225472;
        v37 = sub_100093D98;
        v38 = &unk_10025EAD8;
        v39 = a1;
        dispatch_async(qword_100298C50, &context);
      }
    }

    else if ((v4 - 1) > 1)
    {
      goto LABEL_15;
    }

    v5 = objc_autoreleasePoolPush();
    if (sub_10000CDC4(a1))
    {
      goto LABEL_42;
    }

    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v32 = "__WiFiManagerCheckUserAutoJoinEnable";
      [off_100298C40 WFLog:3 message:{"%s: user auto join state is disabled, checking to re-enable"}];
    }

    objc_autoreleasePoolPop(v6);
    v7 = *(a1 + 2184);
    if ([*(a1 + 1792) isAuthorized])
    {
      if (*(a1 + 2177))
      {
        v9 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: no location was available when disabled", "__WiFiManagerCheckUserAutoJoinEnable"}];
        }
      }

      else
      {
        if (v7)
        {
          v10 = [objc_msgSend(*(a1 + 1792) "latestLocation")];
          if ([WiFiLocationManager isLocationValid:v10 uptoSeconds:1 isHighAccuracy:60.0])
          {
            [v7 horizontalAccuracy];
            v12 = v11;
            [v10 horizontalAccuracy];
            v14 = v13;
            [v10 distanceFromLocation:v7];
            v16 = v15 - v12 - v14;
            v9 = objc_autoreleasePoolPush();
            if (v16 > 300.0)
            {
              if (off_100298C40)
              {
                v34 = 0x4072C00000000000;
                v33 = *&v16;
                v32 = "__WiFiManagerCheckUserAutoJoinEnable";
                [off_100298C40 WFLog:3 message:"%s: distance (%f) passed fence size (%f)"];
              }

              objc_autoreleasePoolPop(v9);
              *(a1 + 2176) = 0;
              v17 = *(a1 + 2184);
              if (v17)
              {
                CFRelease(v17);
                *(a1 + 2184) = 0;
              }

              sub_10007393C(a1, @"UserAutoJoinDisabledLoc", 0, 0);
              goto LABEL_35;
            }

            if (off_100298C40)
            {
              v34 = 0x4072C00000000000;
              v33 = *&v16;
              [off_100298C40 WFLog:3 message:{"%s, distance (%f) from disabling is less than fence size (%f)", "__WiFiManagerCheckUserAutoJoinEnable"}];
            }
          }

          else
          {
            v9 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: leeched location is not high accuracy", "__WiFiManagerCheckUserAutoJoinEnable"}];
            }
          }

LABEL_48:
          objc_autoreleasePoolPop(v9);
          if (*(a1 + 2192))
          {
            v29 = objc_alloc_init(NSDate);
            v30 = [*(a1 + 2192) compare:v29];
            v31 = objc_autoreleasePoolPush();
            if (v30 == -1)
            {
              if (off_100298C40)
              {
                v32 = "__WiFiManagerCheckUserAutoJoinEnable";
                v33 = *(a1 + 2192);
                [off_100298C40 WFLog:3 message:"%s: enabling user auto join due to time (date: %@)"];
              }

              objc_autoreleasePoolPop(v31);
              sub_1000740C8(a1, 1, 5, 0);
            }

            else
            {
              if (off_100298C40)
              {
                v32 = "__WiFiManagerCheckUserAutoJoinEnable";
                v33 = *(a1 + 2192);
                [off_100298C40 WFLog:3 message:{"%s: keeping user auto join disabled, not past date %@"}];
              }

              objc_autoreleasePoolPop(v31);
            }

            if (v29)
            {
              CFRelease(v29);
            }
          }

          else
          {
            sub_10016CF28();
          }

          goto LABEL_40;
        }

        v8 = *(a1 + 2176);
        v9 = objc_autoreleasePoolPush();
        if (!v8)
        {
          if (off_100298C40)
          {
            v32 = "__WiFiManagerCheckUserAutoJoinEnable";
            [off_100298C40 WFLog:3 message:"%s: already past geofence. Checking motion activity."];
          }

          objc_autoreleasePoolPop(v9);
          v10 = 0;
LABEL_35:
          v18 = *(a1 + 1488);
          v19 = *(a1 + 1496);
          v20 = objc_autoreleasePoolPush();
          v21 = off_100298C40;
          if (off_100298C40)
          {
            v34 = v19;
            v32 = "__WiFiManagerCheckUserAutoJoinEnable";
            v33 = sub_100014038(v18);
            [v21 WFLog:3 message:"%s: motionState %@ (time %f)"];
          }

          objc_autoreleasePoolPop(v20);
          v22 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v32 = "__WiFiManagerCheckUserAutoJoinEnable";
            [off_100298C40 WFLog:3 message:"%s: enabling user auto join due to motion state"];
          }

          objc_autoreleasePoolPop(v22);
          sub_1000740C8(a1, 1, 4, 0);
LABEL_40:
          if (v10)
          {
            CFRelease(v10);
          }

LABEL_42:
          objc_autoreleasePoolPop(v5);
          sub_100159340(a1, 0, v23, v24, v25, v26, v27, v28, v32, v33, v34, context, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
          if ([+[WiFiUserInteractionMonitor isSetupCompleted]&& !*(a1 + 2457) sharedInstance]
          {
            sub_100076F74(a1);
          }

          goto LABEL_15;
        }

        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: no disabled location", "__WiFiManagerCheckUserAutoJoinEnable"}];
        }
      }
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: wifi not authorized for location services", "__WiFiManagerCheckUserAutoJoinEnable"}];
      }
    }

    v10 = 0;
    goto LABEL_48;
  }

LABEL_15:
  context = a1;
  v36 = 0xAAAAAAAA0000000ALL;
  v37 = 0;
  v38 = 1;
  v39 = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, &context);
}

void sub_10002BB38(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: %d", "WiFiDeviceManagerSetUserInteractionMode", a2}];
  }

  objc_autoreleasePoolPop(v6);
  v7 = *(a1 + 176);
  if (a2)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = !v8;
  if (v7 != a2)
  {
    if (*(a1 + 240))
    {
      if (!*(a1 + 6776))
      {
        v15 = objc_autoreleasePoolPush();
        v16 = [[WiFiUserNotificationManager alloc] initWithQueue:*(a1 + 240) supportsWAPI:*(a1 + 88) manager:*(a1 + 6872)];
        *(a1 + 6776) = v16;
        if (v16)
        {
          [(WiFiUserNotificationManager *)v16 startListening];
          [*(a1 + 6776) registerCallback:&stru_100261608 withContext:a1];
          *(a1 + 6788) = 0;
          [*(a1 + 6776) enableTestMode:sub_1001ADB94(*(a1 + 96)) != 0];
        }

        else
        {
          v17 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: failed to create user notification manager", "WiFiDeviceManagerSetUserInteractionMode"}];
          }

          objc_autoreleasePoolPop(v17);
        }

        objc_autoreleasePoolPop(v15);
      }

      if (*(a1 + 20) == 1)
      {
        keys = @"IO80211InterfaceRadioMODE";
        v18 = &kCFBooleanFalse;
        if (a2 == 1)
        {
          v18 = &kCFBooleanTrue;
        }

        values = *v18;
        v19 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v19)
        {
          v20 = v19;
          v21 = *(a1 + 64);
          v22 = sub_100006F88(v21);
          sub_100006F94(v21, v22, 473, 0, v20);
          CFRelease(v20);
        }
      }

      else
      {
        v23 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:"MIMO Power Save Configuration cancelled because device is not powered."];
        }

        objc_autoreleasePoolPop(v23);
      }

      if (a2 == 1)
      {
        *(a1 + 6788) = 0;
      }

      if (!a3)
      {
        *(a1 + 216) = CFAbsoluteTimeGetCurrent();
      }

      sub_100189430(a1);
      v7 = *(a1 + 176);
    }

    if (v7 != a2)
    {
      goto LABEL_13;
    }
  }

  if (*(a1 + 208) != a3)
  {
LABEL_13:
    sub_1000D095C(a1, a3);
    if (*(a1 + 6884) != 2 || a2 == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    *(a1 + 7104) = v11 | *(a1 + 7104) & 0xFD;
  }

  *(a1 + 208) = a3;
  *(a1 + 176) = a2;
  sub_10002B050(*(a1 + 120), a2);
  if (a2 == 3)
  {
    if (_os_feature_enabled_impl())
    {
      sub_100019814(a1, 0x3AuLL);
    }

    else
    {
      sub_1000BBDEC(a1, 0);
    }

    [*(a1 + 6776) dismissJoinAlerts];
  }

  sub_10002BEE0(*(a1 + 96), a2);
  if ((v9 & 1) == 0)
  {
    sub_1000C0CA0(a1);
  }

  v12 = *(a1 + 176) - 1;
  v13 = *(a1 + 7480);
  if (v13)
  {
    [v13 setDeviceLockState:a3 != 0];
    [*(a1 + 7480) setDisplayState:v12 < 2];
  }

  if (_os_feature_enabled_impl())
  {
    [*(a1 + 8936) setDisplayOff:v12 > 1];
  }

  if (a3)
  {
    LOBYTE(a3) = *(a1 + 3512) == 0;
  }

  v14 = sub_100025988(a1) != 0;
  sub_10002BFB4(a1, (v14 | a3) & 1);
}

void sub_10002BEE0(uint64_t result, int a2)
{
  if (result && *(result + 20) != a2)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v5 = "NonInteractive";
      if (a2 == 1)
      {
        v5 = "Interactive";
      }

      [off_100298C40 WFLog:3 message:{"ATJManager: setting ask-to-join interaction mode to %s", v5}];
    }

    objc_autoreleasePoolPop(v4);
    *(result + 20) = a2;
    *(result + 40) = 0;

    sub_1001AD798(result);
  }
}

uint64_t sub_10002BFA0(uint64_t a1)
{
  if (a1)
  {
    return a1 + 5688;
  }

  else
  {
    return 0;
  }
}

void sub_10002BFB4(uint64_t a1, int a2)
{
  if (!a1)
  {
    goto LABEL_16;
  }

  if (a2 && !*(a1 + 5502))
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Setting AWDL MAC address in use", "__WiFiDeviceManagerSetAwdlMacAddressInUse"}];
    }

    objc_autoreleasePoolPop(v3);
    v4 = +[WiFiP2PSPITransactionRequestor shared];

    [v4 beginTransaction:15 completionHandler:0];
    return;
  }

  if (!a2 && *(a1 + 5502))
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Setting AWDL MAC address not in use", "__WiFiDeviceManagerSetAwdlMacAddressInUse"}];
    }

    objc_autoreleasePoolPop(v5);
    v6 = +[WiFiP2PSPITransactionRequestor shared];

    [v6 endTransaction:15];
  }

  else
  {
LABEL_16:
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v8 = "";
      if (!a2)
      {
        v8 = "not ";
      }

      [off_100298C40 WFLog:2 message:{"%s: Skip setting AWDL MAC address %sin use, already configured", "__WiFiDeviceManagerSetAwdlMacAddressInUse", v8}];
    }

    objc_autoreleasePoolPop(v7);
  }
}

uint64_t sub_10002C134(uint64_t a1, UInt8 *a2, int a3, UInt8 *a4, unsigned int a5, _DWORD *a6)
{
  LODWORD(v9) = a3;
  valuePtr = 0;
  v145 = 0;
  v142 = 1;
  v143 = 0;
  *a6 = -3900;
  v11 = sub_10000FFF0();
  v12 = sub_10001D1E8(v11);
  if (!v12)
  {
    goto LABEL_131;
  }

  v13 = v12;
  if ((sub_100010038(v12) & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v113 = sub_10000715C(v13);
      [sub_100008C8C() WFLog:"kern_return_t _wifi_device_scan_async(mach_port_t message:{vm_offset_t, mach_msg_type_number_t, vm_offset_t, mach_msg_type_number_t, int *)", v113}];
    }

    objc_autoreleasePoolPop(v14);
    goto LABEL_130;
  }

  Mutable = sub_100017AC4(a2, v9);
  v16 = sub_100017AC4(a4, a5);
  v17 = v16;
  if (!Mutable || !v16)
  {
    goto LABEL_126;
  }

  HIDWORD(v132) = v9;
  v133 = sub_100010040(v13, Mutable);
  if (!v133)
  {
    v107 = v17;
    v108 = Mutable;
    v109 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: unable to find device manager for interface %@", "_wifi_device_scan_async", v108}];
    }

    objc_autoreleasePoolPop(v109);
    Mutable = v108;
    v17 = v107;
    goto LABEL_127;
  }

  Value = CFDictionaryGetValue(v17, @"SCAN_MAXAGE");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr + 4);
  }

  v19 = CFDictionaryGetValue(v17, @"SCAN_NUM_SCANS");
  if (v19)
  {
    CFNumberGetValue(v19, kCFNumberCFIndexType, &v145);
  }

  v20 = CFDictionaryGetValue(v17, @"SCAN_LOW_PRIORITY");
  if (v20)
  {
    CFNumberGetValue(v20, kCFNumberIntType, &valuePtr);
  }

  v134 = a6;
  v136 = Mutable;
  v21 = CFDictionaryGetValue(v17, @"SCAN_LOW_LATENCY");
  if (v21)
  {
    CFNumberGetValue(v21, kCFNumberIntType, &v143);
  }

  theDict = v17;
  v22 = CFDictionaryGetValue(v17, @"SSID_STR");
  v23 = objc_autoreleasePoolPush();
  v9 = "normal";
  if (v22)
  {
    if (!off_100298C40)
    {
      goto LABEL_23;
    }

    sub_10000715C(v13);
    sub_10001EC7C();
    v117 = v24;
    v118 = v25;
    v115 = v27;
    v116 = v26;
    v112 = v28;
    v114 = v29;
    v111 = v22;
  }

  else
  {
    if (!off_100298C40)
    {
      goto LABEL_23;
    }

    sub_10000715C(v13);
    sub_10001EC7C();
    v116 = v30;
    v117 = v31;
    v114 = v33;
    v115 = v32;
    v111 = v34;
    v112 = v35;
  }

  sub_10002D39C();
LABEL_23:
  objc_autoreleasePoolPop(v23);
  *v134 = 0;
  v36 = sub_10002CF28(v13);
  if (v36)
  {
    v61 = objc_autoreleasePoolPush();
    LODWORD(v9) = HIDWORD(v132);
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Already scanning, will not queue request. "}];
    }

    objc_autoreleasePoolPop(v61);
    Mutable = v136;
    sub_10002DE74(v13, v133, v136, 0, 37);
    goto LABEL_127;
  }

  Mutable = v36;
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v17);
  if (!MutableCopy)
  {
    *v134 = -3901;
    sub_1000A9C0C();
    goto LABEL_127;
  }

  HIDWORD(v122) = Mutable;
  v37 = CFDictionaryGetValue(v17, @"SCAN_CHANNELS");
  v127 = a2;
  if (!v37 || (v38 = v37, CFArrayGetCount(v37) < 1))
  {
    v62 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v111 = "_wifi_device_scan_async";
      v112 = sub_10000715C(v13);
      sub_10002D39C();
    }

    objc_autoreleasePoolPop(v62);
    if (sub_10000715C(v13))
    {
      v63 = sub_10000715C(v13);
      v64 = CFStringCompare(v63, @"WirelessStress", 0);
      v65 = sub_10000715C(v13);
      if (CFStringCompare(v65, @"coreautomationd", 0) == kCFCompareEqualTo || v64 == kCFCompareEqualTo)
      {
        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        v70 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        theArray = v70;
        if (Mutable && v70)
        {
          LODWORD(v122) = a5;
          v119 = a4;
          if (!sub_10002CF68(v133, Mutable))
          {
            if (CFArrayGetCount(Mutable) >= 1)
            {
              v71 = 0;
              v9 = &kCFTypeDictionaryValueCallBacks;
              v137 = Mutable;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v71);
                if (ValueAtIndex)
                {
                  v73 = CFDictionaryGetValue(ValueAtIndex, @"SUP_CHANNEL");
                  if (v73)
                  {
                    v74 = v73;
                    v75 = sub_1000A9C2C();
                    v77 = CFDictionaryGetValue(v75, v76);
                    if (v77)
                    {
                      Mutable = v77;
                      v78 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                      if (!v78)
                      {
                        v45 = 0;
                        sub_1000200F4(-3901, v111, v112, v114, v115, v116, v117, v118, a4, v122, v127, MutableCopy, v132, v133, v134);
                        a4 = v120;
                        goto LABEL_137;
                      }

                      v79 = v78;
                      CFDictionaryAddValue(v78, @"CHANNEL", v74);
                      CFDictionaryAddValue(v79, @"CHANNEL_FLAGS", Mutable);
                      CFArrayAppendValue(theArray, v79);
                      CFRelease(v79);
                    }
                  }
                }

                ++v71;
                Mutable = v137;
              }

              while (CFArrayGetCount(v137) > v71);
            }

            v60 = MutableCopy;
            CFDictionarySetValue(MutableCopy, @"SCAN_CHANNELS", theArray);
            v45 = 0;
            goto LABEL_81;
          }

          v66 = Mutable;
          sub_1000200F4(-3902, v111, v112, v114, v115, v116, v117, v118, a4, v122, a2, MutableCopy, v132, v133, v134);
          Mutable = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: Error - Device failed to return supported channels! \n", "_wifi_device_scan_async"}];
          }

          objc_autoreleasePoolPop(Mutable);
          v45 = 0;
          a4 = v121;
          a5 = v125;
          a2 = v129;
          sub_1000A9C0C();
LABEL_66:
          v68 = MutableCopy;
          v69 = v66;
          goto LABEL_120;
        }

        v137 = Mutable;
        v110 = v134;
        v45 = 0;
LABEL_145:
        *v110 = -3902;
        goto LABEL_135;
      }

      theArray = 0;
      v45 = 0;
      Mutable = 0;
    }

    else
    {
      theArray = 0;
      v45 = 0;
      Mutable = 0;
    }

    v60 = MutableCopy;
LABEL_81:
    v80 = sub_10000715C(v13);
    if (CFStringCompare(v80, @"locationd", 0) && (v81 = sub_10000715C(v13), CFStringCompare(v81, @"milod", 0)))
    {
      v82 = sub_10000715C(v13);
      v83 = CFStringCompare(v82, @"pipelined", 0) == kCFCompareEqualTo;
    }

    else
    {
      v83 = 1;
    }

    v138 = Mutable;
    if (CFDictionaryGetValue(v17, @"SSID_STR") || _os_feature_enabled_impl())
    {
      if (!v83)
      {
        CFDictionarySetValue(v60, @"SCAN_6GHZ_FOLLOWUP", kCFBooleanTrue);
      }

      CFDictionarySetValue(v60, @"SCAN_INCL_ORIG_RNR", kCFBooleanTrue);
    }

    v84 = sub_10000715C(v13);
    if (CFStringCompare(v84, @"pipelined", 0) == kCFCompareEqualTo)
    {
      v85 = a5;
      v86 = valuePtr;
      v87 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v111 = sub_10000715C(v13);
        [sub_1000A9C38() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v87);
      v88 = &kCFBooleanTrue;
      if (v86)
      {
        v88 = &kCFBooleanFalse;
      }

      CFDictionarySetValue(MutableCopy, @"SCAN_LOW_LATENCY", *v88);
      a5 = v85;
      v17 = theDict;
    }

    v89 = MutableCopy;
    v90 = sub_10002CFB0(MutableCopy);
    if (v83)
    {
      if (v143)
      {
        v91 = &kCFBooleanTrue;
      }

      else
      {
        v91 = &kCFBooleanFalse;
      }

      CFDictionarySetValue(MutableCopy, @"SCAN_LOW_LATENCY", *v91);
      if (!v143 && v90)
      {
        CFDictionarySetValue(MutableCopy, @"SCAN_LOW_PRIORITY", kCFBooleanTrue);
        CFDictionarySetValue(MutableCopy, @"SCAN_PRIO_OVERRIDE", kCFBooleanTrue);
      }

      sub_100008BF8(0x3Cu);
      v92 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v111 = sub_10000715C(v13);
        v112 = v90;
        [sub_1000A9B34() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v92);
      v17 = theDict;
      v89 = MutableCopy;
    }

    v93 = sub_10000715C(v13);
    CFDictionarySetValue(v89, @"ScanReqClientName", v93);
    v141 = sub_100029EA4(v13);
    v94 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v141);
    v68 = v89;
    if (v94)
    {
      v95 = v94;
      sub_10002D0A8(v94, @"ScanReqClientPid");
      CFRelease(v95);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v97 = CFDateCreate(kCFAllocatorDefault, Current);
    a2 = v127;
    LODWORD(v9) = HIDWORD(v132);
    if (v97)
    {
      v98 = v97;
      sub_10002D0A8(v97, @"ScanReqReceiptTimestamp");
      CFRelease(v98);
    }

    sub_10002D0CC(v13, HIDWORD(v122) | 1);
    v99 = CFDictionaryGetValue(v17, @"SCAN_MERGE");
    if (v99)
    {
      CFNumberGetValue(v99, kCFNumberIntType, &v142);
      v100 = v142 != 0;
    }

    else
    {
      v100 = 1;
    }

    Mutable = v136;
    if (v90)
    {
      v101 = v100 | 2;
    }

    else
    {
      v101 = v100;
    }

    sub_10002D0D4(v13, v101);
    v102 = sub_10000715C(v13);
    sub_100024FE0(v133, v136, v68, v102, sub_10002DC94, v13, v103, v104, v111, v112, v114, v115, v116, SHIDWORD(v116), v117, SHIDWORD(v117), v118, v119, v122, v127, MutableCopy, v132, v133, v134, v136, v138, theDict, theArray);
    *v135 = v105;
    if (v105)
    {
      sub_10002D0CC(v13, v126);
    }

    else
    {
      CFRetain(v13);
    }

    goto LABEL_119;
  }

  v39 = sub_10002DC84();
  v9 = CFArrayCreateMutable(v39, v40, v41);
  v42 = sub_10002DC84();
  v45 = CFArrayCreateMutable(v42, v43, v44);
  v46 = sub_10002DC84();
  Mutable = v9;
  v49 = CFArrayCreateMutable(v46, v47, v48);
  theArray = v49;
  if (!v9 || !v45 || !v49)
  {
    v137 = v9;
    v110 = v134;
    goto LABEL_145;
  }

  if (sub_10002CF68(v133, v9) || !CFArrayGetCount(v9))
  {
    v66 = v9;
    v67 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Error - Device failed to return supported channels! \n", "_wifi_device_scan_async"}];
    }

    objc_autoreleasePoolPop(v67);
    Mutable = v136;
    *v134 = -3902;
    LODWORD(v9) = HIDWORD(v132);
    goto LABEL_66;
  }

  if (CFArrayGetCount(v9) >= 1)
  {
    v17 = 0;
    v9 = @"SUP_CHANNEL";
    do
    {
      v50 = CFArrayGetValueAtIndex(Mutable, v17);
      if (v50)
      {
        v51 = CFDictionaryGetValue(v50, @"SUP_CHANNEL");
        CFArrayAppendValue(v45, v51);
      }

      v17 = (v17 + 1);
    }

    while (v17 < CFArrayGetCount(Mutable));
  }

  v137 = Mutable;
  LODWORD(v122) = a5;
  v52 = a4;
  if (CFArrayGetCount(v38) < 1)
  {
LABEL_52:
    v17 = theDict;
    if (CFArrayGetCount(theArray) > 0)
    {
      v60 = MutableCopy;
      CFDictionarySetValue(MutableCopy, @"SCAN_CHANNELS", theArray);
      a4 = v52;
      a5 = v122;
      Mutable = v137;
      goto LABEL_81;
    }

    Mutable = objc_autoreleasePoolPush();
    a4 = v52;
    if (off_100298C40)
    {
      v111 = "_wifi_device_scan_async";
      [off_100298C40 WFLog:3 message:"%s: Error - Scan Channel List Empty!!! (No valid channel to scan!) \n"];
    }

    objc_autoreleasePoolPop(Mutable);
    sub_1000200F4(-3900, v111, v112, v114, v115, v116, v117, v118, v119, v122, v127, MutableCopy, v132, v133, v134);
    a5 = v123;
LABEL_135:
    sub_1000A9C0C();
    v68 = MutableCopy;
    goto LABEL_119;
  }

  v53 = 0;
  while (1)
  {
    v54 = CFArrayGetValueAtIndex(v38, v53);
    if (v54)
    {
      break;
    }

LABEL_51:
    if (++v53 >= CFArrayGetCount(v38))
    {
      goto LABEL_52;
    }
  }

  Mutable = v54;
  CFDictionaryGetValue(v54, @"CHANNEL");
  v55 = sub_100011430();
  CFDictionaryGetValue(v55, @"CHANNEL_FLAGS");
  if (!v17)
  {
    v59 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Error - Invalid Channel(0) filtered from Scan List \n", "_wifi_device_scan_async", v112, v114, v115, v116, v117, v118}];
    }

    goto LABEL_50;
  }

  v56 = sub_100021D64();
  v146.length = CFArrayGetCount(v56);
  v146.location = 0;
  if (!CFArrayContainsValue(v45, v146, v17))
  {
    v59 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Error - Invalid Channel(%@) filtered from Scan List \n", "_wifi_device_scan_async", v17, v114, v115, v116, v117, v118}];
    }

LABEL_50:
    objc_autoreleasePoolPop(v59);
    goto LABEL_51;
  }

  v57 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v57)
  {
    v58 = v57;
    CFDictionaryAddValue(v57, @"CHANNEL", v17);
    if (v9)
    {
      CFDictionaryAddValue(v58, @"CHANNEL_FLAGS", v9);
    }

    CFArrayAppendValue(theArray, v58);
    CFRelease(v58);
    a2 = v127;
    goto LABEL_51;
  }

  sub_1000200F4(-3902, v111, v112, v114, v115, v116, v117, v118, v119, v122, v127, MutableCopy, v132, v133, v134);
  a4 = v52;
LABEL_137:
  a5 = v124;
  a2 = v128;
  v68 = v131;
  sub_1000A9C0C();
  v17 = theDict;
LABEL_119:
  v69 = v137;
  if (v137)
  {
LABEL_120:
    CFRelease(v69);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  CFRelease(v68);
LABEL_126:
  if (Mutable)
  {
LABEL_127:
    CFRelease(Mutable);
  }

  if (v17)
  {
    CFRelease(v17);
  }

LABEL_130:
  CFRelease(v13);
LABEL_131:
  sub_100017CC0(a2, v9);
  sub_100017CC0(a4, a5);
  return 0;
}

uint64_t sub_10002CE1C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 2 || *(result + 4) != 76)
  {
    v5 = -304;
LABEL_11:
    *(a2 + 32) = v5;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 39) != 1 || *(result + 55) != 1 || (v3 = *(result + 40), v3 != *(result + 68)) || (v4 = *(result + 56), v4 != *(result + 72)))
  {
    v5 = -300;
    goto LABEL_11;
  }

  result = sub_10002C134(*(result + 12), *(result + 28), v3, *(result + 44), v4, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

void sub_10002CEF0(uint64_t a1, void *a2)
{

  sub_10000AD34(v2, a2, v3);
}

double sub_10002CF08()
{
  v3 = *v0;
  *(*v0 + 6536) = v1;

  return sub_100146CAC((v3 + 6536));
}

CFNumberRef sub_10002CF30@<X0>(int a1@<W8>)
{
  *(v2 - 176) = a1;

  return CFNumberCreate(v1, kCFNumberIntType, (v2 - 176));
}

uint64_t sub_10002CF68(uint64_t a1, __CFArray *a2)
{
  v3 = *(a1 + 64);
  v4 = sub_100006F88(v3);

  return sub_10001A6E4(v3, v4, a2);
}

uint64_t sub_10002CFB0(const __CFDictionary *a1)
{
  result = CFDictionaryGetValue(a1, @"SCAN_CHANNELS");
  if (result)
  {
    v2 = result;
    result = CFArrayGetCount(result);
    if (result)
    {
      v3 = result;
      if (result < 1)
      {
        return 1;
      }

      else
      {
        v4 = 0;
        valuePtr = -1431655766;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v2, v4);
          Value = CFDictionaryGetValue(ValueAtIndex, @"CHANNEL");
          CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
          if (valuePtr <= 0x23)
          {
            break;
          }

          if (v3 == ++v4)
          {
            return 1;
          }
        }

        v7 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: 2GHz Scan request because channel %d is requested ", "WiFiDeviceManagerIs5GScanRequest", valuePtr}];
        }

        objc_autoreleasePoolPop(v7);
        return 0;
      }
    }
  }

  return result;
}

void sub_10002D0A8(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v3, a2, v2);
}

uint64_t sub_10002D0DC(uint64_t a1, void *a2, uint64_t a3)
{
  Count = CFArrayGetCount(*(a1 + 16));
  if (Count < 1)
  {
    v10 = 4294963394;
  }

  else
  {
    v7 = 0;
    while (1)
    {
      *buffer = 0xAAAAAAAAAAAAAAAALL;
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v7);
      if (ValueAtIndex)
      {
        v9 = ValueAtIndex;
        v19.location = 0;
        v19.length = 8;
        CFDataGetBytes(ValueAtIndex, v19, buffer);
        if (*buffer == a3)
        {
          break;
        }
      }

      if (Count == ++v7)
      {
        v10 = 4294963394;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      BytePtr = CFDataGetBytePtr(v9);
      Length = CFDataGetLength(v9);
      memcpy(a2, BytePtr + 8, Length - 8);
    }

    CFArraySetValueAtIndex(*(a1 + 16), v7, kCFNull);
    v13 = *(a1 + 16);
    v20.length = CFArrayGetCount(v13);
    v20.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v13, v20, kCFNull);
    if (FirstIndexOfValue != -1)
    {
      for (i = FirstIndexOfValue; i != -1; i = CFArrayGetFirstIndexOfValue(v16, v21, kCFNull))
      {
        CFArrayRemoveValueAtIndex(*(a1 + 16), i);
        v16 = *(a1 + 16);
        v21.length = CFArrayGetCount(v16);
        v21.location = 0;
      }
    }

    v10 = 0;
  }

  if (Count)
  {
LABEL_15:
    if (!CFArrayGetCount(*(a1 + 16)))
    {
    }
  }

  return v10;
}

uint64_t sub_10002D254(int a1, vm_address_t a2, int a3, uint64_t a4, int a5, int a6, mach_msg_timeout_t timeout)
{
  v15 = a2;
  v16 = 27918592;
  v17[0] = a3;
  *&v17[1] = a4;
  v17[3] = 27918592;
  v18[0] = a5;
  *&v18[1] = NDR_record;
  v18[3] = a3;
  v18[4] = a5;
  v18[5] = a6;
  v12 = 0xAAAAAAAA80000013;
  v13 = a1;
  v14 = xmmword_1001CE8D0;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v12);
  }

  v10 = mach_msg(&v12, 2097169, 0x50u, 0, 0, timeout, 0);
  if (v10 == 268435460)
  {
    if (v15 != a2)
    {
      mig_deallocate(v15, v17[0]);
    }

    if (*&v17[1] != a4)
    {
      mig_deallocate(*&v17[1], v18[0]);
    }
  }

  return v10;
}

uint64_t sub_10002D350(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"SCAN_TRIM_RESULTS");
  if (!Value)
  {
    return 0;
  }

  return CFBooleanGetValue(Value);
}

id sub_10002D39C()
{

  return [v0 WFLog:3 message:?];
}

void sub_10002D3C0(uint64_t a1, uint64_t a2, const __CFArray *a3, const __CFDictionary *a4, uint64_t a5, uint64_t *a6)
{
  v10 = objc_autoreleasePoolPush();
  v11 = os_transaction_create();
  v12 = v11;
  if (!a6)
  {
    sub_10019E01C();
    v22 = 0;
    goto LABEL_123;
  }

  v66 = v11;
  v13 = *a6;
  if (a4)
  {
    v14 = CFDictionaryGetValue(a4, @"CompletedUsingCache");
    v15 = CFDictionaryGetValue(a4, @"CompletedUsingBeaconCache");
  }

  else
  {
    v14 = kCFBooleanFalse;
    v15 = kCFBooleanFalse;
  }

  v16 = a6[2];
  if (v16)
  {
    v17 = CFStringCompare(v16, @"Preferences", 0) && CFStringCompare(a6[2], @"SpringBoard", 0) && CFStringCompare(a6[2], @"WiFiPickerExtens", 0);
    v18 = CFStringCompare(a6[2], @"aonsensed", 0) == kCFCompareEqualTo || CFStringCompare(a6[2], @"pipelined", 0) == kCFCompareEqualTo;
    v19 = a6[2];
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v17 = 1;
  }

  if (v14 && v14 == kCFBooleanTrue || v15 && v15 == kCFBooleanTrue)
  {
    v18 = 1;
  }

  if (v15)
  {
    if (a3 && CFArrayGetCount(a3))
    {
      ++*(v13 + 425);
    }

    else
    {
      ++*(v13 + 426);
    }
  }

  if (a3 && !v18)
  {
    [*(v13 + 6744) ingestScanResults:a3 ofType:2 clientName:v19 directed:*(a6 + 32) != 0];
  }

  v20 = 0;
  if (v13)
  {
    v21 = v17;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v22 = 0;
  }

  else if (a3)
  {
    v22 = 0;
    if (*(v13 + 6784))
    {
      v23 = sub_10018DF8C(v13);
      v22 = [[WiFiScanResultsPreparer alloc] initWithManager:v13 availabilityEngine:*(v13 + 6736) scanResults:a3 disableProminentFiltering:0 blacklistedSSIDs:v23];
      v20 = [(WiFiScanResultsPreparer *)v22 preparedScanResults];
      if (v23)
      {
        CFRelease(v23);
      }
    }
  }

  else
  {
    v22 = 0;
  }

  v24 = a6[2];
  v25 = !v24 || CFStringCompare(v24, @"Preferences", 0) && CFStringCompare(a6[2], @"WiFiPickerExtens", 0) && CFStringCompare(a6[2], @"NanoSettings", 0) && CFStringCompare(a6[2], @"NanoWiFiViewService", 0) && CFStringCompare(a6[2], @"WiFiViewService", 0) && CFStringCompare(a6[2], @"mobilewifitool", 0) && CFStringCompare(a6[2], @"coreautomationd", 0) && CFStringCompare(a6[2], @"SpringBoard", 0);
  if (a5 == -536870165 && *(v13 + 5592) == 1)
  {
    v26 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: converting error to EBUSY", "WiFiDeviceManagerClientScanCallback"}];
    }

    objc_autoreleasePoolPop(v26);
    *(v13 + 736) = 1;
    a5 = 16;
  }

  v27 = a6[1];
  if (v27)
  {
    if (v20)
    {
      v28 = v20;
    }

    else
    {
      v28 = a3;
    }

    if (v25)
    {
      v27(v13, a2, v28, a5, a6[3]);
      goto LABEL_120;
    }

    v61 = a5;
    if (v28)
    {
      MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, v28);
      if (MutableCopy)
      {
        v60 = v10;
        v68 = 0;
        v69 = -1;
        if (!sub_10000A154(*(v13 + 6872)))
        {
          v30 = *(v13 + 4792);
          if (v30)
          {
            v30(v13, 0, @"PrivateMacCheckForMDMOrSupervised", kCFBooleanTrue, *(v13 + 4800));
          }

          Count = CFArrayGetCount(MutableCopy);
          if (Count >= 1)
          {
            v32 = Count;
            v33 = 0;
            v65 = 0;
            v63 = 0;
            value = 0;
            v34 = 0;
            v62 = v22;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v33);
              if (ValueAtIndex)
              {
                break;
              }

LABEL_113:
              if (v32 == ++v33)
              {
                goto LABEL_116;
              }
            }

            v36 = ValueAtIndex;
            sub_10000AACC(*(v13 + 3752), ValueAtIndex, &v69, &v68);
            if (v69 != -1)
            {
              v37 = CFArrayGetValueAtIndex(*(v13 + 3752), v69);
              if (v37)
              {
                v38 = v37;
                v34 = sub_10000A540(v37, @"PRIVATE_MAC_ADDRESS");
                value = sub_10000A540(v38, @"PrivateMacDefaultToOFF");
                v63 = sub_10000A540(v38, @"PrivateMacFutureMacAddress");
                v65 = sub_10000A540(v38, @"PrivateMacControlledDevice");
              }

              if (!v34)
              {
                goto LABEL_113;
              }

              TypeID = CFDictionaryGetTypeID();
              if (TypeID != CFGetTypeID(v34))
              {
                goto LABEL_113;
              }

              v40 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v34);
              if (v63)
              {
                v41 = CFDataGetTypeID();
                if (v41 == CFGetTypeID(v63))
                {
                  CFDictionarySetValue(v40, @"PRIVATE_MAC_ADDRESS_VALUE", v63);
                }
              }

              if (!*(v13 + 3736))
              {
                v42 = sub_100059228(1);
                CFDictionarySetValue(v40, @"PRIVATE_MAC_ADDRESS_TYPE", v42);
                CFDictionarySetValue(v40, @"PRIVATE_MAC_ADDRESS_VALUE", *(v13 + 3760));
                if (v42)
                {
                  CFRelease(v42);
                }
              }

              sub_10000AD34(v36, @"PRIVATE_MAC_ADDRESS", v40);
              if (value && value == kCFBooleanTrue)
              {
                Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                CFDictionarySetValue(Mutable, @"PrivateMacDefaultToOFF", value);
                if (!v65)
                {
LABEL_96:
                  sub_10000AD34(v36, @"PrivateMacInfoDictionary", Mutable);
                  if (Mutable)
                  {
                    CFRelease(Mutable);
                  }

                  goto LABEL_111;
                }

LABEL_95:
                CFDictionarySetValue(Mutable, @"PrivateMacControlledDevice", v65);
                goto LABEL_96;
              }

              if (v65 && v65 == kCFBooleanTrue)
              {
                v50 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                Mutable = v50;
                if (value)
                {
                  CFDictionarySetValue(v50, @"PrivateMacDefaultToOFF", value);
                }

                goto LABEL_95;
              }

              v56 = v36;
              v57 = @"PrivateMacInfoDictionary";
              v58 = 0;
LABEL_110:
              sub_10000AD34(v56, v57, v58);
LABEL_111:
              v22 = v62;
              if (v40)
              {
                CFRelease(v40);
              }

              goto LABEL_113;
            }

            v44 = _os_feature_enabled_impl();
            v40 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (*(v13 + 3736))
            {
              if (sub_10000A7CC(v36))
              {
                if ((v44 & 1) == 0)
                {
                  v52 = sub_100059228(1);
                  CFDictionarySetValue(v40, @"PRIVATE_MAC_ADDRESS_TYPE", v52);
                  v55 = *(v13 + 3760);
                  v53 = v40;
                  v54 = @"PRIVATE_MAC_ADDRESS_VALUE";
                  goto LABEL_107;
                }

                v45 = sub_100059228(3);
                CFDictionarySetValue(v40, @"PRIVATE_MAC_ADDRESS_TYPE", v45);
                if (v45)
                {
                  CFRelease(v45);
                }

LABEL_102:
                if (sub_1000A2ED8(v36))
                {
                  v51 = 2;
                }

                else
                {
                  v51 = 3;
                }

                v52 = sub_100059228(v51);
                v53 = v40;
                v54 = @"PRIVATE_MAC_ADDRESS_TYPE";
                v55 = v52;
LABEL_107:
                CFDictionarySetValue(v53, v54, v55);
                if (v52)
                {
                  CFRelease(v52);
                }

LABEL_109:
                v56 = v36;
                v57 = @"PRIVATE_MAC_ADDRESS";
                v58 = v40;
                goto LABEL_110;
              }

              v46 = sub_100059228(2);
              v48 = v40;
              v49 = @"PRIVATE_MAC_ADDRESS_TYPE";
              v47 = v46;
            }

            else
            {
              v46 = sub_100059228(1);
              CFDictionarySetValue(v40, @"PRIVATE_MAC_ADDRESS_TYPE", v46);
              v47 = *(v13 + 3760);
              v48 = v40;
              v49 = @"PRIVATE_MAC_ADDRESS_VALUE";
            }

            CFDictionarySetValue(v48, v49, v47);
            if (v46)
            {
              CFRelease(v46);
            }

            if (!v44)
            {
              goto LABEL_109;
            }

            goto LABEL_102;
          }
        }

LABEL_116:
        v10 = v60;
      }
    }

    else
    {
      MutableCopy = 0;
    }

    (a6[1])(v13, a2, MutableCopy, v61, a6[3]);
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

LABEL_120:
  v59 = *(v13 + 4440);
  if (v59)
  {
    v59(v13, a2, *(v13 + 4448), 5, 0);
  }

  free(a6);
  v12 = v66;
LABEL_123:

  if (v12)
  {
  }

  objc_autoreleasePoolPop(v10);
}

void sub_10002DC58(dispatch_time_t start)
{

  dispatch_source_set_timer(v1, start, 0xFFFFFFFFFFFFFFFFLL, 0);
}

void sub_10002DC94(uint64_t a1, const void *a2, const __CFArray *a3, uint64_t a4, const void *a5)
{
  v10 = sub_10002CF28(a5);
  v11 = objc_autoreleasePoolPush();
  v12 = off_100298C40;
  if (off_100298C40)
  {
    v13 = sub_10000715C(a5);
    if (a3)
    {
      Count = CFArrayGetCount(a3);
    }

    else
    {
      Count = 0;
    }

    [v12 WFLog:3 message:{"Async scan request completed for %@ (%d), found %ld networks", v13, a4, Count}];
  }

  objc_autoreleasePoolPop(v11);
  v15 = sub_10000715C(a5);
  if (CFStringCompare(v15, @"locationd", 0) == kCFCompareEqualTo)
  {
    sub_10003522C(a1, a4);
    kdebug_trace();
    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"Locationd scan done."];
    }

    objc_autoreleasePoolPop(v16);
  }

  if (_os_feature_enabled_impl())
  {
    v17 = sub_10000715C(a5);
    if (CFStringCompare(v17, @"configd", 0) == kCFCompareEqualTo && (~sub_100059658(a5) & 3) == 0)
    {
      sub_1000C5ADC(a1, a3);
    }
  }

  sub_10002DE74(a5, a1, a2, a3, a4);
  sub_10002D0CC(a5, v10 & 0xFFFFFFFE);
  if (a5 && (v10 & 1) != 0)
  {

    CFRelease(a5);
  }
}

void sub_10002DE74(uint64_t a1, uint64_t a2, const void *a3, const __CFArray *a4, int a5)
{
  if (!a3)
  {
    v9 = 0;
LABEL_6:
    BytePtr = 0;
    Length = 0;
    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v8 = sub_10000EDD8(kCFAllocatorDefault, a3);
  v9 = v8;
  if (!v8)
  {
    goto LABEL_6;
  }

  BytePtr = CFDataGetBytePtr(v8);
  Length = CFDataGetLength(v9);
  if (!a4)
  {
LABEL_12:
    sub_10002D254(*(a1 + 96), BytePtr, Length, 0, 0, a5, 0);
    if (!v9)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_7:
  v12 = sub_100035314(a4);
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v12;
  v14 = sub_10000EDD8(kCFAllocatorDefault, v12);
  if (!v14)
  {
    CFRelease(v13);
    goto LABEL_12;
  }

  v15 = v14;
  v16 = CFDataGetBytePtr(v14);
  v17 = CFDataGetLength(v15);
  CFRelease(v13);
  sub_10002D254(*(a1 + 96), BytePtr, Length, v16, v17, a5, 0);
  CFRelease(v15);
  if (!v9)
  {
    return;
  }

LABEL_13:

  CFRelease(v9);
}

uint64_t sub_10002DFD4()
{
  if (!qword_100298678)
  {
    qword_100298678 = _CFRuntimeRegisterClass();
    if (!qword_100298678)
    {
      sub_100198A58();
    }

    v0 = IOMasterPort(0, dword_100298680);
    if (v0)
    {
      v1 = v0;
      v2 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: can't get mach master port: %ld\n", "__WiFiDeviceManagerRegister", v1}];
      }

      objc_autoreleasePoolPop(v2);
    }
  }

  return qword_100298678;
}

void sub_10002E080(uint64_t a1, CFArrayRef theArray, __CFArray *cf, uint64_t a4, uint64_t a5)
{
  v6 = cf;
  v8 = a1 + 4096;
  cfa = *(a1 + 5000);
  v87 = *(a1 + 4016);
  *v97 = a1 + 4096;
  v91 = *(a1 + 4008);
  if (!cf)
  {
    v9 = 0;
    goto LABEL_27;
  }

  v10 = CFGetTypeID(cf);
  if (v10 != CFArrayGetTypeID())
  {
    v9 = 0;
    v6 = 0;
    goto LABEL_27;
  }

  v11 = sub_100034D5C(v6, *(a1 + 240), *(a1 + 244));
  v12 = v11;
  if (*(v8 + 1128) || !v11)
  {
    v6 = v11;
    if (!v11)
    {
      v53 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v83 = "__WiFiDeviceCreateTrimmedScanResults";
        [off_100298C40 WFLog:4 message:"%s: exiting due to null scanResults"];
      }

      v6 = 0;
      Count = 0;
      goto LABEL_113;
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v83 = "__WiFiDeviceProcessScanDoneEvent";
      [off_100298C40 WFLog:3 message:"%s: Filtering WAPI networks"];
    }

    objc_autoreleasePoolPop(v13);
    v14 = sub_100034F98();
    Mutable = CFArrayCreateMutable(v14, v15, v16);
    if (Mutable)
    {
      v6 = Mutable;
      if (CFArrayGetCount(v12) >= 1)
      {
        v48 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v12, v48);
          v50 = ValueAtIndex;
          if (ValueAtIndex && sub_10000D970(ValueAtIndex))
          {
            v51 = objc_autoreleasePoolPush();
            v52 = off_100298C40;
            if (off_100298C40)
            {
              v83 = "__WiFiDeviceProcessScanDoneEvent";
              v84 = sub_10000A878(v50);
              [v52 WFLog:3 message:"%s: filtered out WAPI network %@"];
            }

            objc_autoreleasePoolPop(v51);
          }

          else
          {
            CFArrayAppendValue(v6, v50);
          }

          ++v48;
        }

        while (v48 < CFArrayGetCount(v12));
      }

      CFRelease(v12);
    }

    else
    {
      v6 = v12;
    }
  }

  Count = CFArrayGetCount(v6);
  v19 = sub_100034F98();
  v22 = CFArrayCreateMutable(v19, v20, v21);
  if (!v22)
  {
    v53 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v83 = "__WiFiDeviceCreateTrimmedScanResults";
      [off_100298C40 WFLog:4 message:"%s: exiting due to null trimmedScanResults"];
    }

LABEL_113:
    objc_autoreleasePoolPop(v53);
    v29 = 0;
    v9 = 0;
    v23 = 0;
    goto LABEL_24;
  }

  v9 = v22;
  if (Count < 1)
  {
    v23 = 0;
    goto LABEL_22;
  }

  v23 = 0;
  v24 = 0;
  while (1)
  {
    v25 = CFArrayGetValueAtIndex(v6, v24);
    if (v25)
    {
      break;
    }

    ++v23;
LABEL_17:
    if (Count == ++v24)
    {
      goto LABEL_22;
    }
  }

  v26 = sub_100034A98(v25);
  if (v26)
  {
    v27 = v26;
    CFArrayAppendValue(v9, v26);
    CFRelease(v27);
    goto LABEL_17;
  }

  v81 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v83 = "__WiFiDeviceCreateTrimmedScanResults";
    [off_100298C40 WFLog:4 message:"%s: exiting due to null trimmedNetwork"];
  }

  objc_autoreleasePoolPop(v81);
LABEL_22:
  v28 = CFArrayGetCount(v9);
  v29 = v28;
  if (!v28 || v28 != Count)
  {
LABEL_24:
    v30 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v85 = v29;
      v86 = v23;
      v83 = "__WiFiDeviceCreateTrimmedScanResults";
      v84 = Count;
      [off_100298C40 WFLog:3 message:{"%s: scanResultsCount: %ld, trimmedScanResultsCount: %ld, nullNetworksCount: %ld"}];
    }

    objc_autoreleasePoolPop(v30);
  }

LABEL_27:
  v31 = objc_autoreleasePoolPush();
  v32 = *v97;
  if (off_100298C40)
  {
    v33 = v6 ? CFArrayGetCount(v6) : 0;
    v85 = v33;
    v84 = [NSString stringWithFormat:@"Completed Apple80211ScanAsync on %@ (0x%x) with %ld networks", theArray, a5];
    v83 = [+[NSString stringWithFormat:](NSString UTF8String:@"{%@-} %@"];
    v34 = [NSString stringWithFormat:@"%s"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v83 = [(NSString *)v34 UTF8String];
      LODWORD(buf) = 136446210;
      *(&buf + 4) = [[NSString stringWithFormat:?]];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v31);
  if ((a5 & 0xFFFFFFFD) == 0xE0820445 || a5 == -528350142)
  {
    v41 = 16;
  }

  else
  {
    v41 = a5;
  }

  v42 = cfa;
  if (cfa)
  {
    CFRetain(cfa);
  }

  if (*(*v97 + 952))
  {
    sub_1000361B4(a1, 0);
    *(*v97 + 952) = 0;
  }

  sub_10002E9DC(v6, v9, cfa, v35, v36, v37, v38, v39, v83, v84, v85, v86, v87, a4, v91, cfa, theArray, v97[0], v97[1], buf, *(&buf + 1), v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
  v44 = v43;
  if (!v9 || !v42 || v41 || !v6)
  {
    goto LABEL_52;
  }

  LODWORD(buf) = 0;
  Value = CFDictionaryGetValue(v42, @"SCAN_TYPE");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &buf);
  }

  if (buf == 3 || *(*v98 + 920) || sub_10002D350(v42))
  {
    goto LABEL_51;
  }

  v54 = *(a1 + 5024);
  if (!v54)
  {
    v60 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: scanRequest or scanResults or cache empty", "__WiFiDeviceAddScanCacheEntry"}];
    }

    goto LABEL_93;
  }

  v55 = sub_1001AC000(kCFAllocatorDefault);
  if (!v55)
  {
    v60 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: WiFiCacheEntryCreateMutable failed", "__WiFiDeviceAddScanCacheEntry"}];
    }

LABEL_93:
    objc_autoreleasePoolPop(v60);
    goto LABEL_94;
  }

  v56 = v55;
  if (sub_10010DAB8(v55, v42))
  {
    if (sub_10010DB20(v56))
    {
      if (CFArrayGetCount(v6) >= 1)
      {
        v57 = 0;
        do
        {
          v58 = CFArrayGetValueAtIndex(v6, v57);
          v59 = sub_100034EEC(v58, @"AGE");
          sub_10000C614(v58, @"ORIG_AGE", v59);
          ++v57;
        }

        while (v57 < CFArrayGetCount(v6));
      }

      if (sub_10010DAEC(v56, v6))
      {
        CFArrayAppendValue(v54, v56);
        goto LABEL_90;
      }

      v82 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: WiFiCacheEntrySetResults failed", "__WiFiDeviceAddScanCacheEntry"}];
      }
    }

    else
    {
      v82 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: WiFiCacheEntrySetTimestampNow failed", "__WiFiDeviceAddScanCacheEntry"}];
      }
    }
  }

  else
  {
    v82 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: WiFiCacheEntrySetRequest failed", "__WiFiDeviceAddScanCacheEntry"}];
    }
  }

  objc_autoreleasePoolPop(v82);
LABEL_90:
  CFRelease(v56);
LABEL_94:
  if (_os_feature_enabled_impl())
  {
    v61 = 30.0;
  }

  else
  {
    v61 = 14.0;
  }

  sub_1000665B4(*(a1 + 5024), v61);
  dispatch_time(0, (v61 * 1000000000.0));
  v62 = sub_10000D800();
  dispatch_source_set_timer(v62, v63, 0xFFFFFFFFFFFFFFFFLL, 0);
  v64 = sub_100034F98();
  v68 = CFDictionaryCreateMutable(v64, v65, v66, v67);
  v69 = v68;
  if (v68 && (CFDictionaryAddValue(v68, @"scanRequest", cfb), (v70 = sub_100035314(v6)) != 0))
  {
    v71 = v70;
    CFDictionaryAddValue(v69, @"scanResults", v70);
    CFRelease(v71);
    v72 = sub_100034F98();
    v76 = CFDictionaryCreateMutable(v72, v73, v74, v75);
    v77 = v76;
    if (v76)
    {
      CFDictionaryAddValue(v76, @"scanRequest", cfb);
      v78 = sub_100035314(v9);
      if (v78)
      {
        v79 = v78;
        CFDictionaryAddValue(v77, @"scanResults", v78);
        CFRelease(v79);
      }
    }
  }

  else
  {
    v77 = 0;
  }

  v80 = *(a1 + 4024);
  v42 = cfb;
  if (v80)
  {
    v80(a1, theArrayb, v69, v77, 0, *(a1 + 4032));
  }

  if (v69)
  {
    CFRelease(v69);
  }

  if (v77)
  {
    CFRelease(v77);
  }

LABEL_51:
  v32 = *v98;
LABEL_52:
  if (v6)
  {
    CFRelease(v6);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v46 = *(a1 + 5000);
  if (v46)
  {
    CFRelease(v46);
    *(a1 + 5000) = 0;
  }

  *(a1 + 4008) = 0;
  *(a1 + 4016) = 0;
  if (v92)
  {
    v92(a1, theArrayb, v44, v90, v41, v88);
  }

  v47 = *(a1 + 5008);
  if (v47)
  {
    CFRelease(v47);
    *(a1 + 5008) = 0;
  }

  *(v32 + 920) = 0;
  sub_10002ECA0(a1);
  if (v44)
  {
    CFRelease(v44);
  }

  if (v42)
  {
    CFRelease(v42);
  }
}

void sub_10002E9DC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, CFArrayRef theArray, int a18, int valuePtr, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_10002183C();
  a30 = v31;
  a31 = v33;
  v34 = v32;
  theArraya = v35;
  v37 = v36;
  valuePtr = 0;
  if (v32 && (Value = CFDictionaryGetValue(v32, @"SCAN_RSSI_THRESHOLD")) != 0)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    v60 = valuePtr;
  }

  else
  {
    v60 = 0;
  }

  v39 = sub_10002D350(v34);
  if (!v37)
  {
    v58 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"%s: null scanResults"];
    }

    objc_autoreleasePoolPop(v58);
    Count = 0;
    goto LABEL_53;
  }

  Count = CFArrayGetCount(v37);
  if (!v60)
  {
    if (!v39)
    {
      v42 = CFRetain(v37);
      goto LABEL_37;
    }

    if (theArraya)
    {
      v42 = CFRetain(theArraya);
      goto LABEL_38;
    }
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    v59 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"%s: null filteredScanResults"];
    }

    objc_autoreleasePoolPop(v59);
LABEL_53:
    v42 = 0;
    goto LABEL_37;
  }

  v42 = Mutable;
  if (Count >= 1)
  {
    v43 = 0;
    v44 = 0;
    v45 = v60;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v37, v44);
      if (ValueAtIndex)
      {
        v47 = ValueAtIndex;
        v48 = sub_100034EEC(ValueAtIndex, @"RSSI");
        if (v45)
        {
          v49 = v48 < v60;
        }

        else
        {
          v49 = 0;
        }

        v50 = !v49;
        if (v48 && v50)
        {
          if (v39)
          {
            v51 = v39;
            if (theArraya)
            {
              v52 = CFArrayGetValueAtIndex(theArraya, v44);
              v53 = CFRetain(v52);
            }

            else
            {
              v53 = sub_100034A98(v47);
            }

            v54 = v53;
            if (v53)
            {
              v55 = v53;
            }

            else
            {
              v55 = v47;
            }

            CFArrayAppendValue(v42, v55);
            if (v54)
            {
              CFRelease(v54);
            }

            v39 = v51;
            v45 = v60;
          }

          else
          {
            CFArrayAppendValue(v42, v47);
          }
        }
      }

      else
      {
        ++v43;
      }

      ++v44;
    }

    while (Count != v44);
  }

LABEL_37:
  if (!theArraya)
  {
    if (v42)
    {
      goto LABEL_39;
    }

    goto LABEL_43;
  }

LABEL_38:
  CFArrayGetCount(theArraya);
  if (v42)
  {
LABEL_39:
    v56 = CFArrayGetCount(v42);
    if (v56 && v56 == Count)
    {
      goto LABEL_46;
    }
  }

LABEL_43:
  v57 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: rssiThresh %d, doTrimming %d, scanResultsCount: %ld, trimmedScanResultsCount: %ld, filteredScanResultsCount: %ld, nullNetworksCount: %ld "}];
  }

  objc_autoreleasePoolPop(v57);
LABEL_46:
  sub_10000FDDC();
}

void sub_10002ECA0(uint64_t a1)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v5 = v1;
  v6 = v1;
  *cf = v1;
  *v4 = v1;
  if (!sub_10002EDD4(*(a1 + 176), cf, 0x48uLL, 0))
  {
    switch(LODWORD(cf[0]))
    {
      case 0:
      case 3:
      case 5:
      case 9:
      case 0xB:
      case 0xC:
      case 0xE:
        if (cf[1])
        {
          CFRelease(cf[1]);
          cf[1] = 0;
        }

        v2 = v4[0];
        if (v4[0])
        {
          goto LABEL_4;
        }

        break;
      case 1:
        if (cf[1])
        {
          CFRelease(cf[1]);
          cf[1] = 0;
        }

        if (v4[0])
        {
          CFRelease(v4[0]);
          v4[0] = 0;
        }

        v2 = v4[1];
        if (v4[1])
        {
          goto LABEL_4;
        }

        break;
      case 2:
      case 4:
      case 6:
      case 7:
      case 8:
      case 0xD:
      case 0xF:
        v2 = cf[1];
        if (cf[1])
        {
          goto LABEL_4;
        }

        break;
      case 0xA:
        if (cf[1])
        {
          CFRelease(cf[1]);
          cf[1] = 0;
        }

        if (v4[0])
        {
          CFRelease(v4[0]);
          v4[0] = 0;
        }

        v2 = *(&v5 + 1);
        if (*(&v5 + 1))
        {
LABEL_4:
          CFRelease(v2);
        }

        break;
      default:
        return;
    }
  }
}

uint64_t sub_10002EDD4(uint64_t a1, void *a2, size_t a3, void *a4)
{
  __src = 0;
  __len = a3;
  v10 = 0;
  if (a1)
  {
    v7 = *(a1 + 64);
    if (v7)
    {
      dispatch_source_set_timer(v7, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }

  if (!sub_1000262D0(a1, 0))
  {
    result = 4294963394;
    if (!a4)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (a2)
  {
    p_src = &__src;
  }

  else
  {
    p_src = 0;
  }

  if (!sub_10000E6B0(a1, p_src, &__len, &v10) && __src)
  {
    memmove(a2, __src, __len);
  }

  result = sub_10002D0DC(a1, 0, v10);
  if (!result)
  {
    sub_1000264E8(a1, 0);
    result = 0;
  }

  if (a4)
  {
LABEL_14:
    *a4 = v10;
  }

  return result;
}

void sub_10002EEB0(uint64_t a1, const void *a2)
{
  CFSetAddValue(*(a1 + 144), a2);
  if (sub_10002ACC0(a2) == 1)
  {
    CFSetAddValue(*(a1 + 152), a2);
    sub_100002E5C(a1, *(a1 + 800));
    if (CFSetGetCount(*(a1 + 152)) >= 2)
    {
      if (_os_feature_enabled_impl())
      {

        sub_1000197A4(a1, 30);
      }

      else
      {

        sub_10007A1F4(a1, 0);
      }
    }
  }

  else if (sub_10002ACC0(a2) == 2)
  {
    CFSetAddValue(*(a1 + 160), a2);
    v4 = *(a1 + 800);

    sub_100002E5C(a1, v4);
  }
}

uint64_t sub_10002EFBC(uint64_t a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      entryID = 0;
      RegistryEntryID = IORegistryEntryGetRegistryEntryID(v5, &entryID);
      if (RegistryEntryID)
      {
        sub_10016CA30(RegistryEntryID);
      }

      else if ([*(a1 + 2736) objectForKeyedSubscript:{+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", entryID)}])
      {
        sub_10002F3D8(&entryID);
      }

      else
      {
        v7 = [IORegistryEntryCreateCFProperty(v5 @"DataRole"];
        v8 = IORegistryEntryCreateCFProperty(v5, @"TransportDescription", kCFAllocatorDefault, 0);
        v9 = [IORegistryEntryCreateCFProperty(v5 @"TransportType"];
        v10 = v9;
        if (v7 || v9 != 5)
        {
          v11 = IORegistryEntryCreateCFProperty(v5, @"Vendor ID", kCFAllocatorDefault, 0);
        }

        else
        {
          v11 = [NSNumber numberWithInt:0xFFFFLL];
        }

        v12 = v11;
        v13 = [(NSNumber *)v11 intValue]== 1452 || [(NSNumber *)v12 intValue]== 1452;
        *(a1 + 2704) = v13;
        if (v7 <= 1)
        {
          v14 = *(a1 + 2700);
          if (v14 >= 0)
          {
            v15 = v14 + 1;
          }

          else
          {
            v15 = 1;
          }

          *(a1 + 2700) = v15;
          v16 = [[WiFiUsageMonitor_UsbDevice alloc] initWithName:v8 vid:-[NSNumber intValue](v12 isApple:"intValue") locationID:{*(a1 + 2704) != 0, 0}];
          if (v16)
          {
            v17 = v16;
            [*(a1 + 2728) addObject:v16];
          }

          if (*(a1 + 2700))
          {
            *(a1 + 2696) = 1;
            *(a1 + 2720) = CFAbsoluteTimeGetCurrent();
            if (v10 == 2)
            {
              --*(a1 + 2700);
            }

            else if (v10 == 3)
            {
              sub_100158290(a1);
            }

            v18 = sub_10007681C(a1, 1);
            v19 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s - Usb Host Notification usbDevices  (%lu) %@ \n", "__WiFiManagerhandleUnifiedE85ServiceAdded", objc_msgSend(*(a1 + 2728), "count"), *(a1 + 2728)}];
            }

            objc_autoreleasePoolPop(v19);
            [+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor setUsbStatus:"setUsbStatus:currentDevices:currentNoiseDelta:" currentDevices:1 currentNoiseDelta:*(a1 + 2728), v18];
          }
        }

        notification = 0;
        if (IOServiceAddInterestNotification(*(a1 + 928), v5, "IOGeneralInterest", sub_10002F93C, a1, &notification))
        {
          sub_10016CA8C();
        }

        else if (notification)
        {
          v20 = *(a1 + 2736);
          v21 = [NSNumber numberWithUnsignedInt:?];
          [v20 setObject:v21 forKey:{+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", entryID)}];
        }
      }

      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_10002F2F4(uint64_t a1, int a2)
{
  v4 = a2;
  if (a1)
  {
    context[0] = a1;
    context[1] = 0xAAAAAAAA0000003ALL;
    context[2] = &v4;
    context[3] = 1;
    context[4] = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
    if (v4 == -536870272)
    {
      [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor resetBackgroundApps];
    }
  }

  else
  {
    v2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null manager ref", "__WiFiManagerSetSystemPMState"}];
    }

    objc_autoreleasePoolPop(v2);
  }
}

void sub_10002F3D8(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Usb Host Notification Port object already exists for service, ignoring... (registryEntryID: %llu)", *a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10002F438(uint64_t a1, uint64_t a2, int a3, intptr_t a4)
{
  v7 = objc_autoreleasePoolPush();
  v26 = 255;
  if (a3 > -536870145)
  {
    if (a3 != -536870144)
    {
      if (a3 == -536870112)
      {
        v8 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:"Received kIOMessageSystemWillPowerOn"];
        }

        objc_autoreleasePoolPop(v8);
        v9 = -536870112;
LABEL_22:
        sub_10002F2F4(a1, v9);
        goto LABEL_23;
      }

      goto LABEL_23;
    }

    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"Received kIOMessageSystemHasPoweredOn"];
    }

    objc_autoreleasePoolPop(v13);
    sysctlbyname("kern.wakereason", (a1 + 498), &v26, 0, 0);
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"System wake reason: %s", a1 + 498}];
    }

    objc_autoreleasePoolPop(v14);
    if (!*(a1 + 1409) && !*(a1 + 1184) || *(a1 + 26))
    {
      goto LABEL_55;
    }

    v15 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      if (*(a1 + 1409))
      {
        v16 = "Re-enabling auto-join";
      }

      else
      {
        v16 = "Enabling auto-join for LPAS";
      }

      [off_100298C40 WFLog:3 message:{"System Powered ON notification %s", v16}];
    }

    objc_autoreleasePoolPop(v15);
    *(a1 + 2328) = 0;
    if (sub_10000D690(a1))
    {
      if (*(a1 + 2320) <= 0.0 || CFAbsoluteTimeGetCurrent() - *(a1 + 2320) <= 360.0)
      {
        v22 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"AlwaysOnWiFi: Reschedule Scan after %d Seconds ", 360}];
        }

        objc_autoreleasePoolPop(v22);
        *(a1 + 2328) = 1;
        v23 = *(a1 + 1680);
        v24 = dispatch_time(0, 360000000000);
        dispatch_source_set_timer(v23, v24, 0xFFFFFFFFFFFFFFFFLL, 0);
LABEL_55:
        *(a1 + 1409) = 0;
        if ((*(a1 + 800) & 0xF) == 0)
        {
          sub_100006910(a1);
        }

        context = a1;
        v28 = 0xAAAAAAAA0000004ELL;
        v30 = 0;
        v31 = 0;
        v29 = 0;
        CFSetApplyFunction(*(a1 + 112), sub_100003B88, &context);
        sub_10002F2F4(a1, -536870144);
        if (*(a1 + 1624) != 1)
        {
          goto LABEL_23;
        }

        v25 = *(a1 + 1616);
        if (!v25)
        {
          goto LABEL_23;
        }

        Copy = CFStringCreateCopy(kCFAllocatorDefault, v25);
        sub_100085E20(a1, 1, Copy);
        if (!Copy)
        {
          goto LABEL_23;
        }

LABEL_60:
        CFRelease(Copy);
        goto LABEL_23;
      }

      v17 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"AlwaysOnWiFi: Scan time expired, Re-Enable Auto-Join"}];
      }

      objc_autoreleasePoolPop(v17);
      *(a1 + 2320) = CFAbsoluteTimeGetCurrent();
    }

    sub_10000D4C0(a1, 1);
    goto LABEL_55;
  }

  if (a3 == -536870256)
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"Received kIOMessageSystemWillNotSleep"];
    }

    objc_autoreleasePoolPop(v10);
    if ((*(a1 + 1409) || *(a1 + 1184)) && !*(a1 + 26))
    {
      v11 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        if (*(a1 + 1409))
        {
          v12 = "Re-enabling auto-join";
        }

        else
        {
          v12 = "Enabling auto-join for LPAS";
        }

        [off_100298C40 WFLog:3 message:{"System Sleep Cancelled notification, %s", v12}];
      }

      objc_autoreleasePoolPop(v11);
      sub_10000D4C0(a1, 1);
    }

    *(a1 + 1409) = 0;
    if ((*(a1 + 800) & 0xF) == 0)
    {
      sub_100006910(a1);
    }

    v9 = -536870256;
    goto LABEL_22;
  }

  if (a3 == -536870272)
  {
    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"Received kIOMessageSystemWillSleep"];
    }

    objc_autoreleasePoolPop(v18);
    v19 = *(a1 + 26);
    if (v19)
    {
      v20 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"System Sleep notification, Disabling auto-join"}];
      }

      objc_autoreleasePoolPop(v20);
      sub_10000D4C0(a1, 0);
      v19 = 1;
    }

    *(a1 + 1409) = v19;
    sub_10000D278(a1);
    sub_10002F2F4(a1, -536870272);
    context = a1;
    v28 = 0xAAAAAAAA00000050;
    v29 = 0;
    v30 = 1;
    v31 = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, &context);
    Copy = sub_100021720(a1);
    sub_100169D1C(a1, &Copy->isa);
    if (Copy)
    {
      goto LABEL_60;
    }
  }

LABEL_23:
  IOAllowPowerChange(*(a1 + 1020), a4);
  objc_autoreleasePoolPop(v7);
}

void sub_10002F93C(uint64_t a1, io_registry_entry_t entry, uint64_t a3)
{
  entryID = 0;
  v6 = *(a1 + 2700);
  RegistryEntryID = IORegistryEntryGetRegistryEntryID(entry, &entryID);
  if (RegistryEntryID)
  {
    sub_10016CA30(RegistryEntryID);
  }

  else
  {
    v8 = IORegistryEntryCreateCFProperty(entry, @"TransportDescription", kCFAllocatorDefault, 0);
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Usb Host Notification Transport message arrived! (messageType: 0x%08x, transportDescription: %@, registryEntryID: %llu)", a3, v8, entryID}];
    }

    objc_autoreleasePoolPop(v9);
    v10 = [IORegistryEntryCreateCFProperty(entry @"TransportType"];
    if (a3 == -536870896)
    {
      v11 = v10;
      v12 = [IORegistryEntryCreateCFProperty(entry @"DataRole"];
      v13 = IORegistryEntryCreateCFProperty(entry, @"Vendor ID", kCFAllocatorDefault, 0);
      if (v12 <= 1)
      {
        v14 = v13;
        v15 = (a1 + 2700);
        --*(a1 + 2700);
        v16 = [v13 intValue] == 1452 || objc_msgSend(v14, "intValue") == 1452;
        *(a1 + 2704) = v16;
        if ([*(a1 + 2728) count])
        {
          v23 = 0;
          v24 = &v23;
          v25 = 0x2020000000;
          v26 = -1;
          v17 = *(a1 + 2728);
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_10009103C;
          v22[3] = &unk_100260B88;
          v22[4] = v8;
          v22[5] = &v23;
          [v17 enumerateObjectsUsingBlock:v22];
          v18 = v24[3];
          v19 = [*(a1 + 2728) count];
          v20 = objc_autoreleasePoolPush();
          if (v18 >= v19)
          {
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s - Usb Removal Usb Host Notification for %@ -- unable to find in %@\n", "__WiFiManagerhandleNotificationForService", v8, *(a1 + 2728)}];
            }
          }

          else
          {
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s - Usb Removal Usb Host Notification for %@ -- Removing device at index %lu from %@\n", "__WiFiManagerhandleNotificationForService", v8, v24[3], *(a1 + 2728)}];
            }

            objc_autoreleasePoolPop(v20);
            [*(a1 + 2728) removeObjectAtIndex:v24[3]];
            v20 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s - Usb Removal Usb Host Notification for %@ seqNum %d managerTotal %d setTotal:%ld\n", "__WiFiManagerhandleNotificationForService", v8, *(a1 + 2692), *(a1 + 2700), objc_msgSend(*(a1 + 2728), "count")}];
            }
          }

          objc_autoreleasePoolPop(v20);
          _Block_object_dispose(&v23, 8);
        }

        else
        {
          sub_1001730C8(a1, (a1 + 2700), v8);
        }

        if (v6 > *v15)
        {
          *(a1 + 2696) = 0;
          *(a1 + 2720) = CFAbsoluteTimeGetCurrent();
          if (v11 == 2)
          {
            ++*v15;
          }

          else if (v11 == 3)
          {
            sub_100158290(a1);
          }

          v21 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"Usb Host Notification metrics usbDevices removal count %lu %@ \n", objc_msgSend(*(a1 + 2728), "count"), *(a1 + 2728)}];
          }

          objc_autoreleasePoolPop(v21);
          [+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor setUsbStatus:"setUsbStatus:currentDevices:currentNoiseDelta:" currentDevices:0 currentNoiseDelta:*(a1 + 2728), 0x7FFFFFFFFFFFFFFFLL];
        }
      }

      sub_100173148();
    }
  }
}

void sub_10002FCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002FD14(uint64_t a1, int *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = (a1 + 4096);
    v5 = *a2;
    *(a1 + 6856) = *a2;
    if (v5 == -536870256 || v5 == -536870144)
    {
      if (*(a1 + 5267) && *(a1 + 5266) == -*(a1 + 5265) && !*(a1 + 7408) && sub_100150E14(*(a1 + 64)))
      {
        v16 = 0;
        v8 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"Disable MIS on Wake: Client Count %d", (v4[1170] + v4[1169])}];
        }

        objc_autoreleasePoolPop(v8);
        sub_1000C60E0(a1, 0, 1, 0, &v16);
      }

      if (!a3)
      {
        sub_1001A0024();
      }

      v9 = 1;
      v10 = 1;
    }

    else
    {
      if (v5 != -536870272)
      {
        return 0;
      }

      if (*(a1 + 5496))
      {
        v15 = *(a1 + 3376);
        if (v15)
        {
          if (CFSetGetCount(v15))
          {
            sub_1001A0090();
          }
        }
      }

      sub_1000D095C(a1, *(a1 + 208));
      sub_1000D07C8(a1, 0);
      sub_100189430(a1);
      v9 = 0;
      v10 = 0;
    }

    v4[3312] = v9;
    v11 = *(a1 + 7480);
    if (v11)
    {
      [v11 setSystemWakeState:v10 wokenByWiFi:sub_100033278()];
    }

    v12 = *(a1 + 120);

    return sub_100033358(v12, v9);
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: NULL Device Manager !", "WiFiDeviceManagerSetSystemPMState"}];
    }

    objc_autoreleasePoolPop(v14);
    return 4294963396;
  }
}

void sub_10002FF10(uint64_t a1, const __CFArray *a2, uint64_t a3)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  if (a2)
  {
    Count = CFArrayGetCount(v26);
    v23 = v25;
    if (v25)
    {
      for (i = 0; i < Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v26, i);
        if (sub_100030350(ValueAtIndex))
        {
          v7 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v8 = v7;
            [off_100298C40 WFLog:3 message:{"%s: Changed key: %@", "__WiFiDeviceDynamicStoreCallback", ValueAtIndex}];
            v7 = v8;
          }

          objc_autoreleasePoolPop(v7);
          if (CFEqual(ValueAtIndex, qword_100298548) || CFEqual(ValueAtIndex, qword_100298550))
          {
            if (sub_10005A654(v23) == 1)
            {
              dispatch_source_set_timer(*(v23 + 72), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
              v9 = v23;
              v10 = sub_100006F88(v23);
              sub_100006F94(v9, v10, 482, 0, kCFBooleanTrue);
              if (*(v23 + 4328))
              {
                (*(v23 + 4328))(v23, *(v23 + 112), *(v23 + 4336));
              }
            }

            else
            {
              v11 = v23;
              v12 = sub_100006F88(v23);
              sub_100006F94(v11, v12, 482, 0, kCFBooleanFalse);
            }

            v13 = +[WiFiUsageMonitor sharedInstance];
            v14 = sub_10005A654(v23) != 0;
            [(WiFiUsageMonitor *)v13 notifyInterfaceRankingState:v14 forInterface:sub_100006F88(v23)];
          }

          else
          {
            v19 = CFStringFind(ValueAtIndex, kSCEntNetInterfaceActiveDuringSleepSupported, 0);
            if (v19.location == -1)
            {
              v18 = CFStringFind(ValueAtIndex, @"IPConfigurationBusy", 0);
              if (v18.location == -1)
              {
                v17 = CFStringFind(ValueAtIndex, kSCEntNetIPv4RouterARPAlive, 0);
                if (v17.location == -1 && (v16 = CFStringFind(ValueAtIndex, kSCEntNetIPv4RouterARPFailure, 0), v16.location == -1))
                {
                  sub_1000305D0(v23, ValueAtIndex);
                }

                else
                {
                  v15 = -1431655766;
                  if (sub_100152128(ValueAtIndex, &v15))
                  {
                    sub_10005FBF8(v23, v15);
                    if (*(v23 + 4344))
                    {
                      (*(v23 + 4344))(v23, *(v23 + 112), *(v23 + 4352), v15);
                    }
                  }
                }
              }

              else
              {
                sub_100030394(v23);
              }
            }

            else
            {
              sub_100151EF0(v23, ValueAtIndex);
            }
          }

          v21 = 0;
        }

        else
        {
          v5 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v6 = v5;
            [off_100298C40 WFLog:3 message:{"%s: Not a valid CFString", "__WiFiDeviceDynamicStoreCallback"}];
            v5 = v6;
          }

          objc_autoreleasePoolPop(v5);
          v21 = 7;
        }
      }

      v21 = 5;
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v4 = v3;
        [off_100298C40 WFLog:4 message:"__WiFiDeviceDynamicStoreCallback: device reference is NULL"];
        v3 = v4;
      }

      objc_autoreleasePoolPop(v3);
    }
  }
}

const void *sub_100030350(const void *a1)
{
  TypeID = CFStringGetTypeID();
  if (!a1)
  {
    return 0;
  }

  if (CFGetTypeID(a1) == TypeID)
  {
    return a1;
  }

  return 0;
}

void sub_100030394(uint64_t a1)
{
  if (!a1)
  {
LABEL_20:
    sub_10001ED88();
    return;
  }

  sub_10001131C();
  NetworkInterfaceEntity = v4;
  if (v4)
  {
    goto LABEL_6;
  }

  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, *(v2 + 112), @"IPConfigurationBusy");
  v6 = objc_autoreleasePoolPush();
  v7 = sub_10006AD2C();
  if (v7)
  {
    [v7 WFLog:3 message:{"%s: using default key %@", "__WiFiDeviceCheckForIPConfigurationBusy", NetworkInterfaceEntity}];
  }

  objc_autoreleasePoolPop(v3);
  if (NetworkInterfaceEntity)
  {
LABEL_6:
    v8 = SCDynamicStoreCopyValue(*(v2 + 152), NetworkInterfaceEntity);
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      sub_1000305B8();
      [v10 WFLog:3 message:{"%s: %@ = %s", "__WiFiDeviceCheckForIPConfigurationBusy", NetworkInterfaceEntity, v11}];
    }

    objc_autoreleasePoolPop(v9);
    if (v8)
    {
      if (*(v2 + 3588) == 2)
      {
        v12 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: waiting for IP configuration update", "__WiFiDeviceCheckForIPConfigurationBusy"}];
        }

        objc_autoreleasePoolPop(v12);
        v13 = 1;
      }

      else
      {
        v13 = 0;
      }

      *(v2 + 3616) = v13;
      CFRelease(v8);
    }

    else if (*(v2 + 3616))
    {
      v14 = objc_autoreleasePoolPush();
      v15 = sub_10006AD2C();
      if (v15)
      {
        [v15 WFLog:3 message:{"%s: checking for IP configuration update", "__WiFiDeviceCheckForIPConfigurationBusy"}];
      }

      objc_autoreleasePoolPop(0);
      *(v2 + 3616) = 0;
      sub_10014CEA0();
    }

    if (v1)
    {
      goto LABEL_20;
    }

    sub_10001ED88();

    CFRelease(v16);
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null serviceKey", "__WiFiDeviceCheckForIPConfigurationBusy"}];
    }

    sub_10001ED88();

    objc_autoreleasePoolPop(v19);
  }
}

CFNumberRef sub_1000305A0(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(v3, kCFNumberSInt8Type, a3);
}

void sub_1000305D0(uint64_t a1, const __CFString *a2)
{
  v157[0] = 0;
  v157[1] = 0;
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, a2, @"/");
  if (CFArrayGetCount(ArrayBySeparatingStrings) != 5)
  {
    goto LABEL_293;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 3);
  if (!ValueAtIndex)
  {
    goto LABEL_288;
  }

  v6 = ValueAtIndex;
  ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 4);
  if (!ValueAtIndex)
  {
    goto LABEL_288;
  }

  v7 = ValueAtIndex;
  if (!CFEqual(ValueAtIndex, kSCEntNetIPv4) && !CFEqual(v7, kSCEntNetIPv6))
  {
LABEL_293:
    ValueAtIndex = 0;
    goto LABEL_288;
  }

  ValueAtIndex = sub_1000078F4(a1, *(a1 + 112));
  if (!ValueAtIndex)
  {
    goto LABEL_288;
  }

  v8 = ValueAtIndex;
  theArray = ArrayBySeparatingStrings;
  if (CFEqual(v6, *(a1 + 112)))
  {
    v145 = 0;
    goto LABEL_14;
  }

  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainSetup, v6, kSCEntNetInterface);
  if (!NetworkServiceEntity)
  {
    sub_10015235C();
LABEL_300:
    ValueAtIndex = v8;
    goto LABEL_288;
  }

  v10 = NetworkServiceEntity;
  v11 = SCDynamicStoreCopyValue(*(a1 + 152), NetworkServiceEntity);
  if (!v11)
  {
    sub_1001522F0();
    goto LABEL_299;
  }

  v12 = v11;
  Value = CFDictionaryGetValue(v11, kSCPropNetInterfaceDeviceName);
  if (!Value || (v145 = Value, !CFEqual(*(a1 + 112), Value)))
  {
    sub_100152278(v12);
LABEL_299:
    CFRelease(v10);
    goto LABEL_300;
  }

  CFRelease(v12);
  CFRelease(v10);
LABEL_14:
  v156 = a1;
  v153 = v8;
  if (CFEqual(v7, kSCEntNetIPv4))
  {
    context = objc_autoreleasePoolPush();
    LODWORD(v164[0]) = 0;
    LODWORD(valuePtr[0]) = 0;
    v157[0] = 0;
    *v158 = 0;
    *&v158[4] = 0;
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        *&buf[4] = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v14);
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!Mutable)
    {
      goto LABEL_232;
    }

    v17 = SCDynamicStoreCopyValue(*(a1 + 152), a2);
    v18 = v17;
    if (!v17)
    {
      keya = 0;
      info = 0;
      LeaseStartTime = 0;
      v146 = 0;
      theDicta = 0;
      goto LABEL_193;
    }

    v19 = CFDictionaryGetValue(v17, kSCPropNetIPv4Addresses);
    v20 = v19;
    if (v19 && CFArrayGetCount(v19) >= 1)
    {
      v21 = CFArrayGetValueAtIndex(v20, 0);
      if (v21)
      {
        v22 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v23 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
            *buf = 136446210;
            *&buf[4] = v24;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v22);
        sub_100065E64(v21, v157);
        if (BYTE1(v157[0]) == 254 && LOBYTE(v157[0]) == 169)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        LODWORD(valuePtr[0]) = v26;
      }
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v28 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
          *buf = 136446210;
          *&buf[4] = v29;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v27);
    }

    *(v156 + 3568) = v157[0];
    v30 = CFDictionaryGetValue(v18, kSCPropNetIPv4CLAT46);
    if (v30 && CFBooleanGetValue(v30) == 1)
    {
      v31 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v32 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
          *buf = 136446210;
          *&buf[4] = v33;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v31);
      LODWORD(v157[0]) = 0;
    }

    v34 = CFDictionaryGetValue(v18, kSCPropNetIPv4ARPResolvedIPAddress);
    v35 = objc_autoreleasePoolPush();
    if (v34)
    {
      if (off_100298C40)
      {
        v36 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
          *buf = 136446210;
          *&buf[4] = v37;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v35);
      sub_100065E64(v34, v157 + 1);
    }

    else
    {
      if (off_100298C40)
      {
        v63 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v64 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
          *buf = 136446210;
          *&buf[4] = v64;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v35);
    }

    LODWORD(v162[0]) = 0;
    v65 = CFDictionaryGetValue(v18, kSCPropNetIPv4Router);
    v66 = objc_autoreleasePoolPush();
    if (v65)
    {
      if (off_100298C40)
      {
        v67 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v68 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
          *buf = 136446210;
          *&buf[4] = v68;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v66);
      sub_100065E64(v65, v162);
    }

    else
    {
      if (off_100298C40)
      {
        v69 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v70 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
          *buf = 136446210;
          *&buf[4] = v70;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v66);
    }

    v71 = v162[0];
    v72 = LODWORD(v162[0]) == 0;
    if (sub_10000A7CC(v8))
    {
      if (v71)
      {
        LODWORD(v164[0]) = 2;
        v73 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Setting power mode to kA11PowerProfileCarPlayWithInternet", "__WiFiDeviceCheckForIPV4ParamsChange"}];
        }
      }

      else
      {
        LODWORD(v164[0]) = 1;
        v73 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Setting power mode to kA11PowerProfileCarPlayOnly", "__WiFiDeviceCheckForIPV4ParamsChange"}];
        }
      }
    }

    else
    {
      v73 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Setting power mode to kA11PowerProfileDefault", "__WiFiDeviceCheckForIPV4ParamsChange"}];
      }
    }

    v75 = v71 == 0;
    objc_autoreleasePoolPop(v73);
    v76 = valuePtr[0];
    if (*(v156 + 3584) == v72 && LODWORD(valuePtr[0]) == *(v156 + 3588))
    {
LABEL_149:
      keya = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, v164);
      if (!keya)
      {
        CFRelease(Mutable);
        keya = 0;
        info = 0;
        v146 = 0;
        theDicta = 0;
LABEL_223:
        CFRelease(v18);
LABEL_224:
        if (theDicta)
        {
          CFRelease(theDicta);
        }

        if (v146)
        {
          CFRelease(v146);
        }

        if (info)
        {
          CFRelease(info);
        }

        if (keya)
        {
          CFRelease(keya);
        }

LABEL_232:
        objc_autoreleasePoolPop(context);
        goto LABEL_233;
      }

      sub_100006F94(v156, *(v156 + 112), 479, 0, keya);
      sub_100065FF8(v156);
      theDicta = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainSetup, v6, kSCEntNetIPv4);
      if (theDicta && (v83 = SCDynamicStoreCopyValue(*(v156 + 152), theDicta), (v146 = v83) != 0))
      {
        v84 = CFDictionaryGetValue(v83, kSCPropNetIPv4ConfigMethod);
        v85 = v84;
        if (v84 && CFStringCompare(v84, kSCValNetIPv4ConfigMethodDHCP, 0) == kCFCompareEqualTo)
        {
          v86 = 1;
          goto LABEL_157;
        }
      }

      else
      {
        v85 = 0;
        v146 = 0;
      }

      v86 = 0;
LABEL_157:
      *(v156 + 3592) = v86;
      if (!sub_10005A910(v156))
      {
        LeaseStartTime = 0;
        info = 0;
        goto LABEL_172;
      }

      dispatch_source_set_timer(*(v156 + 80), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      v87 = SCDynamicStoreCopyDHCPInfo(0, v6);
      info = v87;
      if (v87)
      {
        LeaseStartTime = DHCPInfoGetLeaseStartTime(v87);
        LeaseExpirationTime = DHCPInfoGetLeaseExpirationTime(info);
        if (!LeaseStartTime)
        {
          goto LABEL_168;
        }

        v90 = LeaseExpirationTime;
        if (!LeaseExpirationTime)
        {
          LeaseStartTime = 0xFFFFFFFFLL;
LABEL_168:
          v94 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v95 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v96 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
              *buf = 136446210;
              *&buf[4] = v96;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v94);
LABEL_172:
          *(v156 + 3596) = LeaseStartTime;
          v97 = CFDictionaryGetValue(v18, kSCPropNetIPv4ARPResolvedHardwareAddress);
          v98 = objc_autoreleasePoolPush();
          if (v97)
          {
            if (off_100298C40)
            {
              v99 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                v100 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
                *buf = 136446210;
                *&buf[4] = v100;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
              }
            }

            objc_autoreleasePoolPop(v98);
            *v158 = 0;
            *&v158[4] = 0;
            TypeID = CFStringGetTypeID();
            if (CFGetTypeID(v97) == TypeID)
            {
              *&v102 = 0xAAAAAAAAAAAAAAAALL;
              *(&v102 + 1) = 0xAAAAAAAAAAAAAAAALL;
              *&v166[16] = v102;
              v167 = v102;
              *buf = v102;
              *v166 = v102;
              if (CFStringGetCString(v97, buf, 64, 0x600u))
              {
                v103 = ether_aton(buf);
                v104 = *v103->octet;
                *&v158[4] = *&v103->octet[4];
                *v158 = v104;
              }
            }
          }

          else
          {
            if (off_100298C40)
            {
              v105 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                v106 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
                *buf = 136446210;
                *&buf[4] = v106;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
              }
            }

            objc_autoreleasePoolPop(v98);
          }

          sub_100062E18(v156, v97, v65);
          v107 = CFDictionaryGetValue(v18, kSCPropNetIPv4SubnetMasks);
          v108 = v107;
          if (v107 && CFArrayGetCount(v107) >= 1)
          {
            v109 = CFArrayGetValueAtIndex(v108, 0);
            if (!v109)
            {
LABEL_193:
              v113 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, v157);
              if (v113)
              {
                CFDictionaryAddValue(Mutable, @"IO80211InterfaceIPV4Address", v113);
                CFRelease(v113);
              }

              if (LODWORD(valuePtr[0]) != *(v156 + 3588))
              {
                *(v156 + 3588) = valuePtr[0];
              }

              v114 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, v157 + 4);
              if (v114)
              {
                CFDictionaryAddValue(Mutable, @"IO80211InterfaceIPV4RouterAddress", v114);
                CFRelease(v114);
              }

              v115 = CFDataCreate(kCFAllocatorDefault, v158, 6);
              if (v115)
              {
                CFDictionaryAddValue(Mutable, @"IO80211InterfaceRouterMACAddress", v115);
                CFRelease(v115);
              }

              for (i = 6; ; --i)
              {
                v117 = Apple80211Set();
                v118 = v117;
                if (v117 <= 15)
                {
                  if (v117 != -3905)
                  {
                    break;
                  }
                }

                else if (v117 != 61 && v117 != 16)
                {
                  goto LABEL_212;
                }

                if (!i)
                {
                  break;
                }

                usleep(0x7A120u);
              }

              if (!v117)
              {
                goto LABEL_215;
              }

LABEL_212:
              v120 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"%s: ERROR: Setting IPv4 params failed %x\n", "__WiFiDeviceCheckForIPV4ParamsChange", v118}];
              }

              objc_autoreleasePoolPop(v120);
LABEL_215:
              if (v18)
              {
                v121 = *(v156 + 4312);
                if (v121)
                {
                  v121(v156, v145, v18, *(v156 + 4320));
                }
              }

              if (objc_opt_class() && sub_10005A910(v156) && *(v156 + 3592))
              {
                sub_10014573C(v156, v8, LeaseStartTime, (v156 + 3620));
                v122 = +[WiFiManagerAnalytics sharedInstance];
                *bytes = @"dhcpLatencyMilliSecs";
                *buf = [NSNumber numberWithUnsignedInt:*(v156 + 3620)];
                *&bytes[8] = @"dhcpLeaseMins";
                *&buf[8] = [NSNumber numberWithUnsignedInt:*(v156 + 3628)];
                v169 = @"networkAuthFlags";
                *v166 = [NSNumber numberWithUnsignedInt:*(v156 + 3624)];
                [(WiFiManagerAnalytics *)v122 submitWiFiAnalytics:@"com.apple.wifi.Ipv4Latency" data:[NSDictionary dictionaryWithObjects:buf forKeys:bytes count:3]];
              }

              [+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor notifyIpConfigurationStateWithMethod:"notifyIpConfigurationStateWithMethod:dhcpLeaseDuration:hasRoutableIpV4:hasRoutableIpV6:" dhcpLeaseDuration:*(v156 + 3592) != 0 hasRoutableIpV4:*(v156 + 3588) == 2 hasRoutableIpV6:*(v156 + 3572) != 0, LeaseStartTime];
              [+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor notifyIPv4Changes:"notifyIPv4Changes:", [(__CFDictionary *)v18 copy]];
              *(v156 + 3616) = 0;
              CFRelease(Mutable);
              if (!v18)
              {
                goto LABEL_224;
              }

              goto LABEL_223;
            }

            v110 = objc_autoreleasePoolPush();
            if (!off_100298C40 || (v111 = [NSString stringWithFormat:@"%s", [[NSString stringWithFormat:?], !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT)])
            {
LABEL_192:
              objc_autoreleasePoolPop(v110);
              goto LABEL_193;
            }
          }

          else
          {
            v110 = objc_autoreleasePoolPush();
            if (!off_100298C40)
            {
              goto LABEL_192;
            }

            v111 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_192;
            }
          }

          v112 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
          *buf = 136446210;
          *&buf[4] = v112;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          goto LABEL_192;
        }

        AbsoluteTime = CFDateGetAbsoluteTime(LeaseStartTime);
        v92 = CFDateGetAbsoluteTime(v90);
        if (v92 > AbsoluteTime)
        {
          v93 = v92 - AbsoluteTime;
          if (v93 / 0x3C >= 0xFFFFFFFE)
          {
            LeaseStartTime = 4294967294;
          }

          else
          {
            LeaseStartTime = v93 / 0x3C;
          }

          goto LABEL_168;
        }
      }

      LeaseStartTime = 0;
      goto LABEL_168;
    }

    if (LODWORD(valuePtr[0]) == 1)
    {
      if (*(v156 + 3588) == 2)
      {
        v77 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Device lost a valid IP address. Resetting routability.", "__WiFiDeviceCheckForIPV4ParamsChange"}];
        }

        objc_autoreleasePoolPop(v77);
        *(v156 + 3572) = 0;
        v76 = valuePtr[0];
      }

      else
      {
        v76 = 1;
      }
    }

    *(v156 + 3584) = v72;
    *(v156 + 3588) = v76;
    if (v71)
    {
      v78 = &kCFBooleanFalse;
    }

    else
    {
      v78 = &kCFBooleanTrue;
    }

    v79 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, valuePtr);
    v80 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v81 = v80;
    if (v79 && *v78 && v80)
    {
      CFDictionarySetValue(v80, @"WiFiHasNoGatewayIP", *v78);
      CFDictionarySetValue(v81, @"WiFiIPState", v79);
    }

    else if (!v79)
    {
      goto LABEL_143;
    }

    CFRelease(v79);
LABEL_143:
    if (v81)
    {
      if (*(v156 + 4120))
      {
        v82 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Dispatch LQM with hasNoGatewayIP %d, wifiIPState %d", "__WiFiDeviceCheckForIPV4ParamsChange", v75, LODWORD(valuePtr[0])}];
        }

        objc_autoreleasePoolPop(v82);
        (*(v156 + 4120))(v156, v145, *(v156 + 4128), v81);
      }

      CFRelease(v81);
    }

    goto LABEL_149;
  }

  if (!CFEqual(v7, kSCEntNetIPv6))
  {
    goto LABEL_233;
  }

  memset(bytes, 170, sizeof(bytes));
  v38 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 2);
  if (CFEqual(v38, @"Service"))
  {
    *(a1 + 3572) = 0;
  }

  v39 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v40 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v39);
  v41 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v41)
  {
    key = SCDynamicStoreKeyCreateNetworkInterfaceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, *(a1 + 112), kSCEntNetIPv6);
    if (key)
    {
      v42 = SCDynamicStoreCopyValue(*(a1 + 152), key);
      theDict = v42;
      if (v42)
      {
        v43 = CFDictionaryGetValue(v42, kSCPropNetIPv6Addresses);
        if (v43)
        {
          v44 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 2);
          if (CFEqual(v44, @"Service") && CFArrayGetCount(v43))
          {
            *(v156 + 3572) = 1;
            v45 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s : IPv6 address is routable", "__WiFiDeviceCheckForIPV6ParamsChange"}];
            }

            objc_autoreleasePoolPop(v45);
          }

          Count = CFArrayGetCount(v43);
          v47 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          if (v47)
          {
            if (Count >= 1)
            {
              v48 = 0;
              v49 = Count + 1;
              while (1)
              {
                v50 = CFArrayGetValueAtIndex(v43, v48);
                if (v50)
                {
                  break;
                }

LABEL_87:
                ++v48;
                if (--v49 <= 1)
                {
                  goto LABEL_88;
                }
              }

              v51 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                v52 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  v53 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
                  *buf = 136446210;
                  *&buf[4] = v53;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
                }
              }

              objc_autoreleasePoolPop(v51);
              memset(bytes, 0, sizeof(bytes));
              v54 = CFStringGetTypeID();
              if (CFGetTypeID(v50) == v54)
              {
                *&v55 = 0xAAAAAAAAAAAAAAAALL;
                *(&v55 + 1) = 0xAAAAAAAAAAAAAAAALL;
                *&v166[14] = v55;
                *buf = v55;
                *v166 = v55;
                if (CFStringGetCString(v50, buf, 46, 0x600u))
                {
                  if (inet_pton(30, buf, bytes) == 1)
                  {
                    goto LABEL_80;
                  }

                  v56 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: Error converting IPv6 address %@ to network type", "__WiFiDeviceConvertStrToIPv6Addr", v50}];
                  }
                }

                else
                {
                  v56 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: Error converting IPv6 address %@ to ASCII", "__WiFiDeviceConvertStrToIPv6Addr", v50}];
                  }
                }
              }

              else
              {
                v56 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: Not a valid CFString", "__WiFiDeviceConvertStrToIPv6Addr"}];
                }
              }

              objc_autoreleasePoolPop(v56);
LABEL_80:
              if (bytes[0] == 254 && bytes[1] == 128)
              {
                kdebug_trace();
                v57 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:4 message:"IPv6 address is assigned"];
                }

                objc_autoreleasePoolPop(v57);
              }

              v58 = CFDataCreate(kCFAllocatorDefault, bytes, 16);
              if (v58)
              {
                CFArrayAppendValue(v47, v58);
                CFRelease(v58);
              }

              goto LABEL_87;
            }

LABEL_88:
            CFDictionaryAddValue(v41, @"IO80211InterfaceIPV6Address", v47);
            for (j = 6; ; --j)
            {
              v60 = Apple80211Set();
              v61 = v60;
              if (v60 <= 15)
              {
                if (v60 != -3905)
                {
                  break;
                }
              }

              else if (v60 != 61 && v60 != 16)
              {
                goto LABEL_118;
              }

              if (!j)
              {
                break;
              }

              usleep(0x7A120u);
            }

            if (!v60)
            {
              goto LABEL_121;
            }

LABEL_118:
            v74 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s: ERROR: Setting IOC %s failed %x\n", "__WiFiDeviceCheckForIPV6ParamsChange", "APPLE80211_IOC_IPV6_PARAMS", v61}];
            }

            objc_autoreleasePoolPop(v74);
LABEL_121:
            [+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor notifyIPv6Changes:"notifyIPv6Changes:", [(__CFDictionary *)v41 copy]];
            CFRelease(v47);
            CFRelease(v41);
            v41 = theDict;
            goto LABEL_122;
          }

          v143 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: ipAddrNumRef is NULL", "__WiFiDeviceCheckForIPV6ParamsChange"}];
          }
        }

        else
        {
          v143 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: ipv6Addresses is NULL", "__WiFiDeviceCheckForIPV6ParamsChange"}];
          }
        }

        objc_autoreleasePoolPop(v143);
        CFRelease(v41);
        CFRelease(theDict);
LABEL_123:
        CFRelease(key);
        goto LABEL_233;
      }

      v142 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: ipv6State_dict is NULL", "__WiFiDeviceCheckForIPV6ParamsChange"}];
      }
    }

    else
    {
      v142 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: interface_key is NULL", "__WiFiDeviceCheckForIPV6ParamsChange"}];
      }
    }

    objc_autoreleasePoolPop(v142);
LABEL_122:
    CFRelease(v41);
    if (!key)
    {
      goto LABEL_233;
    }

    goto LABEL_123;
  }

  sub_100152218();
LABEL_233:
  if (!objc_opt_class() || !+[WADeviceAnalyticsClient sharedDeviceAnalyticsClient])
  {
    goto LABEL_287;
  }

  v123 = objc_opt_new();
  v124 = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetIPv4);
  if (v124)
  {
    [v123 addObject:v124];
  }

  v125 = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetIPv6);
  if (v125)
  {
    [v123 addObject:v125];
  }

  v126 = SCDynamicStoreCopyMultiple(*(v156 + 152), 0, v123);
  v127 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:2 message:{"%s: ipServices_dict:%@", "__fetchNetworkSignatures", v126}];
  }

  objc_autoreleasePoolPop(v127);
  if (v123)
  {
  }

  v160 = 0u;
  v161 = 0u;
  *v158 = 0u;
  v159 = 0u;
  allocator = [(__CFDictionary *)v126 allKeys];
  v128 = 0;
  v129 = [(__CFAllocator *)allocator countByEnumeratingWithState:v158 objects:buf count:16];
  if (!v129)
  {
    v154 = 0;
    goto LABEL_268;
  }

  v154 = 0;
  v130 = *v159;
  do
  {
    for (k = 0; k != v129; k = k + 1)
    {
      if (*v159 != v130)
      {
        objc_enumerationMutation(allocator);
      }

      v132 = *(*&v158[8] + 8 * k);
      v133 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:2 message:{"%s: Key:%@ InterfaceName:%@", "__fetchNetworkSignatures", v132, objc_msgSend(-[__CFDictionary objectForKeyedSubscript:](v126, "objectForKeyedSubscript:", v132), "objectForKeyedSubscript:", @"InterfaceName"}];
      }

      objc_autoreleasePoolPop(v133);
      if ([objc_msgSend(-[__CFDictionary objectForKeyedSubscript:](v126 objectForKeyedSubscript:{v132), "objectForKeyedSubscript:", @"InterfaceName", "isEqualToString:", *(v156 + 112)}])
      {
        v134 = [v132 componentsSeparatedByString:@"/"];
        v135 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:2 message:{"%s: tmp:%@ --> %@", "__fetchNetworkSignatures", v134, objc_msgSend(v134, "lastObject")}];
        }

        objc_autoreleasePoolPop(v135);
        if ([objc_msgSend(v134 "lastObject")])
        {
          if (v128)
          {
          }

          v128 = [-[__CFDictionary objectForKeyedSubscript:](v126 objectForKeyedSubscript:{v132), "objectForKeyedSubscript:", @"NetworkSignatureHash"}];
          v136 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:2 message:{"%s: %@:%@ --> %@", "__fetchNetworkSignatures", v132, -[__CFDictionary objectForKeyedSubscript:](v126, "objectForKeyedSubscript:", v132), v128}];
          }
        }

        else
        {
          if (![objc_msgSend(v134 "lastObject")])
          {
            continue;
          }

          if (v154)
          {
          }

          v154 = [-[__CFDictionary objectForKeyedSubscript:](v126 objectForKeyedSubscript:{v132), "objectForKeyedSubscript:", @"NetworkSignatureHash"}];
          v136 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:2 message:{"%s: %@:%@ --> %@", "__fetchNetworkSignatures", v132, -[__CFDictionary objectForKeyedSubscript:](v126, "objectForKeyedSubscript:", v132), v154}];
          }
        }

        objc_autoreleasePoolPop(v136);
      }
    }

    v129 = [(__CFAllocator *)allocator countByEnumeratingWithState:v158 objects:buf count:16];
  }

  while (v129);
LABEL_268:
  v137 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:2 message:{"%s: v4:%@ v6:%@", "__fetchNetworkSignatures", v128, v154}];
  }

  objc_autoreleasePoolPop(v137);
  if (*(v156 + 64) && objc_opt_class() && +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient]&& v128 | v154)
  {
    v164[0] = 0;
    v164[1] = v164;
    v164[2] = 0x3052000000;
    v164[3] = sub_100002B20;
    v164[4] = sub_100006744;
    if (v128)
    {
      v138 = v128;
    }

    else
    {
      v138 = 0;
    }

    v164[5] = v138;
    valuePtr[0] = 0;
    valuePtr[1] = valuePtr;
    valuePtr[2] = 0x3052000000;
    valuePtr[3] = sub_100002B20;
    valuePtr[4] = sub_100006744;
    if (v154)
    {
      v139 = v154;
    }

    else
    {
      v139 = 0;
    }

    valuePtr[5] = v139;
    v162[0] = 0;
    v162[1] = v162;
    v162[2] = 0x2020000000;
    v162[3] = CFRetain(v156);
    v140 = *(v156 + 64);
    *bytes = _NSConcreteStackBlock;
    *&bytes[8] = 3221225472;
    v169 = sub_100150F34;
    v170 = &unk_10025F668;
    v171 = v164;
    v172 = valuePtr;
    v173 = v162;
    v174 = v156;
    dispatch_async(v140, bytes);
    _Block_object_dispose(v162, 8);
    _Block_object_dispose(valuePtr, 8);
    _Block_object_dispose(v164, 8);
  }

  if (v126)
  {
  }

  if (v128)
  {
  }

  if (v154)
  {
  }

LABEL_287:
  ArrayBySeparatingStrings = theArray;
  ValueAtIndex = v153;
LABEL_288:
  if (ArrayBySeparatingStrings)
  {
    v141 = ValueAtIndex;
    CFRelease(ArrayBySeparatingStrings);
    ValueAtIndex = v141;
  }

  if (ValueAtIndex)
  {
    CFRelease(ValueAtIndex);
  }
}

void sub_100032980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000329B4(uint64_t a1)
{
  if (!*(a1 + 3361))
  {
    *(a1 + 3361) = 1;
    if (*(a1 + 5480))
    {
      v2 = objc_autoreleasePoolPush();
      v3 = [*(a1 + 5480) requestPowerResource:0 withDetails:0];
      objc_autoreleasePoolPop(v2);
      if (!v3)
      {
        return;
      }
    }

    else
    {
      *(a1 + 192) = 0;
      if (_os_feature_enabled_impl())
      {
        sub_100019814(a1, 0xFuLL);
      }

      else
      {
        [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
        sub_1000BD310(a1, 2, "WiFiDeviceManagerEnable");
      }

      v3 = 4294963365;
    }

    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : Requested resource but none available. Will not autojoin. Nothing to do here. %d", "WiFiDeviceManagerEnable", v3}];
    }

    objc_autoreleasePoolPop(v4);
  }
}

void sub_100032E70(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null request.", "WiFiDeviceManagerHandleUnchangedPowerBudgetValue"}];
    }

    goto LABEL_38;
  }

  v6 = objc_autoreleasePoolPush();
  if (!a1)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null device manager.", "WiFiDeviceManagerHandleUnchangedPowerBudgetValue"}];
    }

LABEL_38:
    objc_autoreleasePoolPop(v6);
    v17 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : NULL Request or Null Device Manager", "WiFiDeviceManagerHandleUnchangedPowerBudgetValue"}];
    }

    objc_autoreleasePoolPop(v17);
    return;
  }

  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : power budget resource is present and unchanged!.", "WiFiDeviceManagerHandleUnchangedPowerBudgetValue"}];
  }

  objc_autoreleasePoolPop(v6);
  if (*a3)
  {
    if (*a3 != 1)
    {
      return;
    }

    v7 = a3[1];
    if (!v7)
    {
      return;
    }

    if (a2)
    {
      v8 = sub_1000CE3C4(a1, *(v7 + 16), *(v7 + 24), *(v7 + 8), *(v7 + 40), *(v7 + 48));
      if (!v8)
      {
        goto LABEL_22;
      }

      v9 = *(v7 + 8);
      if (!v9)
      {
        goto LABEL_22;
      }

      v10 = v8;
      v11 = *(v7 + 16);
      v12 = *(v7 + 40);
      v13 = a1;
    }

    else
    {
      v9 = *(v7 + 8);
      if (!v9)
      {
LABEL_22:
        v14 = *(v7 + 16);
        if (v14)
        {
          CFRelease(v14);
          *(v7 + 16) = 0;
        }

        v15 = *(v7 + 24);
        if (v15)
        {
          CFRelease(v15);
          *(v7 + 24) = 0;
        }

        v16 = *(v7 + 48);
        if (v16)
        {
          CFRelease(v16);
        }

        free(v7);
        return;
      }

      v11 = *(v7 + 16);
      v12 = *(v7 + 40);
      v13 = a1;
      v10 = 4294963390;
    }

    v9(v13, v11, v10, 0, 0, v12);
    goto LABEL_22;
  }

  if (a2 && *(a1 + 3361))
  {
    *(a1 + 192) = 9;
    if (_os_feature_enabled_impl())
    {

      sub_100019814(a1, 0x17uLL);
    }

    else
    {
      [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];

      sub_1000BD310(a1, 2, "WiFiDeviceManagerAutoAssociateStart");
    }
  }
}