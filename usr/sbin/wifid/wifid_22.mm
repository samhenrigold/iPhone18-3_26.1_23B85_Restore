void sub_1001912B4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, __int16 valuePtr, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a1)
  {
    sub_10000D798();
    a19 = v20;
    a20 = v22;
    v24 = v23;
    if (!*(v23 + 4168) || (v25 = v21, v26 = sub_100034FE4(), (Mutable = CFDictionaryCreateMutable(v26, v27, v28, v29)) == 0))
    {
LABEL_19:
      sub_1000084B8();
      return;
    }

    v31 = Mutable;
    if (v25)
    {
      valuePtr = 0;
      v32 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &valuePtr);
      if (v32)
      {
        v33 = v32;
        CFDictionaryAddValue(v31, @"HostApDisableHotspotAdvertiseReason", v32);
        CFRelease(v33);
      }

      v34 = objc_autoreleasePoolPush();
      v35 = off_100298C40;
      if (!off_100298C40)
      {
        goto LABEL_12;
      }

      v36 = "%s: HostAP Max Client Connected: Disable Hotspot Advertising\n";
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      v35 = off_100298C40;
      if (!off_100298C40)
      {
LABEL_12:
        objc_autoreleasePoolPop(v34);
        if (*(v24 + 5267))
        {
          v37 = kCFBooleanTrue;
        }

        else
        {
          v37 = kCFBooleanFalse;
        }

        CFDictionaryAddValue(v31, @"HostApEnabled", v37);
        if (v25)
        {
          v38 = kCFBooleanTrue;
        }

        else
        {
          v38 = kCFBooleanFalse;
        }

        CFDictionaryAddValue(v31, @"HostApDisableHotspotAdvertise", v38);
        v39 = sub_10000D818();
        v40(v39);
        CFRelease(v31);
        goto LABEL_19;
      }

      v36 = "%s: HostAP Max Client Allowed: Enable Hotspot Advertising\n";
    }

    [v35 WFLog:3 message:v36];
    goto LABEL_12;
  }
}

uint64_t sub_100191434(uint64_t a1)
{
  v1 = a1;
  v50 = 0;
  if (*(a1 + 3336) != 2)
  {
    v2 = *(a1 + 1168);
    if (v2)
    {
      CFRelease(v2);
      *(v1 + 1168) = 0;
    }

    *(v1 + 1192) = 0;
  }

  v3 = *(v1 + 1224);
  if (v3)
  {
    CFRelease(v3);
    *(v1 + 1224) = 0;
  }

  *(v1 + 1200) = 0;
  Count = CFArrayGetCount(*(v1 + 3600));
  v5 = sub_1000E63A0(v1, &v50);
  v6 = *(v1 + 176) != 3 && CFAbsoluteTimeGetCurrent() - *(v1 + 3352) > 30.0;
  if (*(v1 + 34))
  {
    v6 = 0;
  }

  if (!*(v1 + 32) || !*(v1 + 33))
  {
    v7 = 7;
    goto LABEL_15;
  }

  if (*(v1 + 35))
  {
    v7 = 9;
    goto LABEL_15;
  }

  if (*(v1 + 3336) != 2)
  {
    if (v5 | v6)
    {
      if (v50)
      {
        if (v5)
        {
          v7 = 5;
        }

        else
        {
          if (!v6)
          {
            goto LABEL_16;
          }

          v7 = 6;
        }

LABEL_15:
        *(v1 + 5692) = v7;
LABEL_16:
        *(v1 + 3360) = 0;
        v8 = 16;
        v9 = 1;
        goto LABEL_17;
      }
    }

    else
    {
      if (!*(v1 + 3360))
      {
        v9 = 0;
        *(v1 + 5692) = 3;
        ++*(v1 + 6184);
        v8 = 8;
        goto LABEL_17;
      }

      if (v50)
      {
        goto LABEL_16;
      }
    }

    v7 = 8;
    goto LABEL_15;
  }

  if (!*(v1 + 5680) || (v26 = CFArrayGetCount(*(v1 + 1168)), v27 = CFArrayGetCount(*(v1 + 3616)) + v26, v27 + CFArrayGetCount(*(v1 + 3608))))
  {
    *(v1 + 5692) = 4;
  }

  v9 = 0;
  ++*(v1 + 6180);
  *(v1 + 3360) = 0;
  v8 = 16;
LABEL_17:
  if (Count)
  {
    v10 = 110;
  }

  else
  {
    v10 = 0;
  }

  valuePtr = -1431655766;
  v11 = sub_1000083D0();
  Mutable = CFArrayCreateMutable(v11, v12, &kCFTypeArrayCallBacks);
  v14 = sub_1000083D0();
  v16 = CFArrayCreateMutable(v14, v15, &kCFTypeArrayCallBacks);
  v17 = v16;
  v18 = 0;
  if (Mutable && v16)
  {
    sub_100006F88(*(v1 + 64));
    v19 = sub_1000F8A18();
    v21 = sub_10001A6E4(v19, v20, v17);
    if (v21)
    {
      v24 = v21;
      v25 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"AJScan: Device return error %d for supported channels. Scanning ALL channels\n", v24}];
      }

      objc_autoreleasePoolPop(v25);
      v18 = 0;
    }

    else
    {
      v51 = 0;
      v22 = sub_1000E6A7C(v1, &v51);
      *(v1 + 6232) = v51;
      v23 = sub_1000E6D08(v1, &v51);
      v18 = v23;
      if (v22)
      {
        v28 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:"AJScan: Disallowing 2.4Ghz channels"];
        }

        objc_autoreleasePoolPop(v28);
        v8 = 16;
      }

      else if (v9)
      {
        if (!v23)
        {
          goto LABEL_54;
        }

        v8 = 8;
      }

      if (CFArrayGetCount(v17) < 1)
      {
        v18 = v8;
      }

      else
      {
        v49 = v1;
        v29 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v17, v29);
          if (ValueAtIndex)
          {
            Value = CFDictionaryGetValue(ValueAtIndex, @"SUP_CHANNEL");
            v32 = sub_1000950F8();
            v34 = CFDictionaryGetValue(v32, v33);
            if (Value)
            {
              v35 = v34;
              if (v34)
              {
                if (CFNumberGetValue(v34, kCFNumberSInt32Type, &valuePtr))
                {
                  if ((valuePtr & v8) != 0)
                  {
                    if (!v18 || (LODWORD(keys) = -1431655766, CFNumberGetValue(Value, kCFNumberSInt32Type, &keys), keys) && keys <= 0xE)
                    {
                      *&keys = @"CHANNEL";
                      *(&keys + 1) = @"CHANNEL_FLAGS";
                      values[0] = Value;
                      values[1] = v35;
                      v36 = CFDictionaryCreate(kCFAllocatorDefault, &keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                      if (v36)
                      {
                        v37 = v36;
                        CFArrayAppendValue(Mutable, v36);
                        CFRelease(v37);
                      }
                    }
                  }
                }
              }
            }
          }

          ++v29;
        }

        while (v29 < CFArrayGetCount(v17));
        v18 = v8;
        v1 = v49;
      }
    }
  }

LABEL_54:
  if (*(v1 + 5680))
  {
    v38 = " ";
    if (*(v1 + 3336) == 2)
    {
      v39 = CFArrayGetCount(*(v1 + 1168));
      v40 = CFArrayGetCount(*(v1 + 3616)) + v39;
      if (!(v40 + CFArrayGetCount(*(v1 + 3608))))
      {
        v38 = "- Fake ";
      }
    }
  }

  else
  {
    v38 = " ";
  }

  v41 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v42 = "ALL";
    if (v18 == 16)
    {
      v42 = "5Ghz";
    }

    if (v18 == 8)
    {
      v42 = "2.4Ghz";
    }

    v43 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
      LODWORD(keys) = 136446210;
      *(&keys + 4) = v44;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", &keys, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v41);
  if (v18 == 8)
  {
    v45 = 2;
    v46 = 4;
  }

  else if (v18 == 16)
  {
    v45 = 3;
    v46 = 5;
  }

  else
  {
    v45 = 4;
    v46 = 6;
  }

  v47 = sub_100191A78(v1, 0, Mutable, v10, v46);
  if (v47)
  {
    return sub_1000D7FA8(v1, v47);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v45;
}

uint64_t sub_100191A78(uint64_t a1, uint64_t a2, const __CFArray *a3, int a4, void *a5)
{
  sub_1000F8BE4();
  if (v9 && *(v5 + 3470) && CFArrayGetCount(a3) != 1)
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"Multi channel scan attempt not permitted because AWDL real time mode is active"];
    }

    objc_autoreleasePoolPop(v10);
    return 4294963366;
  }

  v13 = sub_10001098C();
  sub_10018C85C(v13, v14, 0, a4, 1, v15, v16, v17, v66, v70, v73, SHIDWORD(v73), v75, SHIDWORD(v75), v78, v80, v81, v82, v83, v84, v85, v86, v87, v88, vars0, vars8);
  if (!v18)
  {
    return 4294963396;
  }

  v19 = v18;
  v20 = sub_10001A904(v5);
  v21 = objc_autoreleasePoolPush();
  if (!v20)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"Location is Nil"];
    }

    objc_autoreleasePoolPop(v21);
    *(v5 + 6160) = 0u;
    *(v5 + 6144) = 0u;
    goto LABEL_16;
  }

  v22 = [v20 timestamp];
  if (v22)
  {
    [v22 timeIntervalSinceNow];
    *(v5 + 6168) = v23;
    objc_autoreleasePoolPop(v21);
    [v20 horizontalAccuracy];
    *(v5 + 6144) = v24;
    [v20 coordinate];
    *(v5 + 6152) = v25;
    [v20 coordinate];
    *(v5 + 6160) = v26;
    if (*(v5 + 6152) != 0.0)
    {
      ++*(v5 + 6176);
      goto LABEL_17;
    }

LABEL_16:
    ++*(v5 + 6178);
LABEL_17:
    Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
    if (Mutable)
    {
      v28 = Mutable;
      if (*(v5 + 33) && *(v5 + 32))
      {
        v29 = @"Scan-{";
      }

      else
      {
        v29 = @"_Scan-{";
      }

      CFStringAppend(Mutable, v29);
      v30 = sub_10001EDAC();
      CFStringAppend(v30, v31);
      if (*(v5 + 5700) <= 3u)
      {
        CFStringAppend(v28, @" ");
        v32 = sub_10001EDAC();
        CFStringAppend(v32, v33);
      }

      if (*(v5 + 5704) > 2u)
      {
        v67 = *(v5 + 5712);
        v36 = sub_1000083D0();
        CFStringAppendFormat(v36, v37, v38, v67);
      }

      else
      {
        CFStringAppend(v28, @" ");
        v34 = sub_10001EDAC();
        CFStringAppend(v34, v35);
      }

      if (*(v5 + 192) <= 0xEu)
      {
        CFStringAppend(v28, @" ");
        v39 = sub_10001EDAC();
        CFStringAppend(v39, v40);
      }

      CFStringAppend(v28, @"}  Expecting-[");
      v74 = *(v5 + 6188);
      v76 = *(v5 + 6192);
      v68 = *(v5 + 6200);
      v71 = *(v5 + 6196);
      v41 = sub_1000083D0();
      CFStringAppendFormat(v41, v42, v43, v68, v71, v74, v76);
      CFStringAppend(v28, @"] @ ");
      v44 = sub_100014038(*(v5 + 3408));
      v77 = *(v5 + 6144);
      v79 = *(v5 + 6168);
      v72 = *(v5 + 6152);
      v69 = v44;
      v45 = sub_1000083D0();
      CFStringAppendFormat(v45, v46, v47, v69, v72, v77, v79);
      v48 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"AJScan: %@", v28}];
      }

      objc_autoreleasePoolPop(v48);
      CFRelease(v28);
    }

    v49 = *(v5 + 5692);
    if (v49 <= 0xC)
    {
      *(v5 + 5696) = v49;
      ++*(v5 + 2 * v49 + 5936);
      ++*(v5 + 4 * v49 + 5988);
    }

    v50 = *(v5 + 5704);
    if (v50 <= 2)
    {
      ++*(v5 + 4 * v50 + 5732);
    }

    v51 = *(v5 + 5708);
    if (v51 <= 0x11)
    {
      ++*(v5 + 4 * v51 + 5744);
    }

    *(v5 + 5692) = 13;
    *(v5 + 5704) = 0x1200000003;
    if (!v20)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v65 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: location timestamp is nil", "__WiFiDeviceManagerCollectAutoJoinMetrics"}];
  }

  objc_autoreleasePoolPop(v65);
  objc_autoreleasePoolPop(v21);
LABEL_39:
  CFRelease(v20);
LABEL_40:
  *(v5 + 192) = 18;
  v52 = sub_1000075BC();
  if (v52)
  {
    v53 = v52;
    [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
    *v53 = v5;
    v53[1] = 0;
    v53[3] = 0;
    if (CFDictionaryContainsKey(v19, @"SSID_STR"))
    {
      v54 = 1;
    }

    else
    {
      v54 = CFDictionaryContainsKey(v19, @"SCAN_SSID_LIST") != 0;
    }

    *(v53 + 32) = v54;
    sub_100006F88(*(v5 + 64));
    sub_10000D7D0();
    sub_100020100();
    v11 = sub_100025FF8(v55, v56, v57, v58, v59, v60, v61, a5);
    if (v11)
    {
      v64 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"Error initiating scan request: %d", v11}];
      }

      objc_autoreleasePoolPop(v64);
      free(v53);
    }
  }

  else
  {
    v62 = objc_autoreleasePoolPush();
    v63 = sub_1000F8AC4();
    if (v63)
    {
      [v63 WFLog:4 message:{"%s: null scanData", "__WiFiDeviceManagerScan"}];
    }

    objc_autoreleasePoolPop(a5);
    v11 = 4294963396;
  }

  CFRelease(v19);
  return v11;
}

void sub_100191FA0(uint64_t a1, CFArrayRef theArray)
{
  if (!theArray)
  {
    return;
  }

  if (a1)
  {
    if (*(a1 + 6120))
    {
      if (*(a1 + 6128))
      {
        if (CFArrayGetCount(theArray) >= 1)
        {
          v4 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
            v6 = sub_10000A878(ValueAtIndex);
            if (v6)
            {
              CFSetAddValue(*(a1 + 6120), v6);
            }

            ++v4;
          }

          while (v4 < CFArrayGetCount(theArray));
        }

        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        v8 = sub_1000086AC();
        if (sub_1000D59D8(v8, v9, Mutable) && CFArrayGetCount(Mutable) >= 1)
        {
          v10 = 0;
          do
          {
            v11 = sub_10000FC38();
            v13 = CFArrayGetValueAtIndex(v11, v12);
            v14 = sub_10000A878(v13);
            if (v14)
            {
              CFSetAddValue(*(a1 + 6128), v14);
            }

            ++v10;
          }

          while (v10 < CFArrayGetCount(Mutable));
        }

        if (Mutable)
        {

          CFRelease(Mutable);
        }

        return;
      }

      v15 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: null knownSSIDsScannedThisSession.", "__WiFiDeviceManagerTrackScanResultsForAWDMetrics"}];
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: null scannedSSIDsThisSession.", "__WiFiDeviceManagerTrackScanResultsForAWDMetrics"}];
      }
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null ajMetrics.", "__WiFiDeviceManagerTrackScanResultsForAWDMetrics"}];
    }
  }

  objc_autoreleasePoolPop(v15);
}

void sub_100192190(uint64_t a1, const __CFArray *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (!a1 || !*(a1 + 1160))
  {
    goto LABEL_63;
  }

  v5 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  Count = CFArrayGetCount(*(a1 + 1160));
  v54 = v4;
  if (!a2 || !CFArrayGetCount(a2) || CFArrayGetCount(a2) < 1)
  {
    v6 = 0;
    goto LABEL_51;
  }

  v6 = 0;
  v7 = 0;
  v55 = a2;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v7);
    v9 = sub_10000A878(ValueAtIndex);
    v10 = sub_10000A540(ValueAtIndex, @"BSSID");
    valuePtr = 0;
    value = ValueAtIndex;
    v11 = sub_10000A540(ValueAtIndex, @"TIMESTAMP");
    if (v11)
    {
      CFNumberGetValue(v11, kCFNumberSInt64Type, &valuePtr);
    }

    sub_10002A0FC();
    if (!v38 & v12)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = off_100298C40;
      if (off_100298C40)
      {
        [v9 redactedForWiFi];
        [sub_1000F8C4C() redactedForWiFi];
        sub_10000DB84();
        [v14 WFLog:2 message:{"%s: excluding old entry (ssid=%@, bssid=%@, age=%lums, max=%dms)", "__WiFiDeviceManagerUpdateCumulativeScanResults", v9, v15}];
      }

      objc_autoreleasePoolPop(v13);
      goto LABEL_48;
    }

    if (CFArrayGetCount(*(a1 + 1160)) < 1)
    {
      goto LABEL_45;
    }

    v56 = v7;
    v16 = 0;
    do
    {
      v17 = sub_1000F8BF0();
      v19 = CFArrayGetValueAtIndex(v17, v18);
      v20 = sub_10000A878(v19);
      v21 = sub_10000A540(v19, @"BSSID");
      v58 = 0;
      v22 = sub_10000A540(v19, @"TIMESTAMP");
      if (v22)
      {
        CFNumberGetValue(v22, kCFNumberSInt64Type, &v58);
      }

      if (v20 && v9)
      {
        if (!CFEqual(v20, v9))
        {
          goto LABEL_32;
        }
      }

      else if (v20 || v9)
      {
LABEL_32:
        sub_10002A0FC();
        if (!v38 & v12)
        {
          v32 = objc_autoreleasePoolPush();
          v33 = off_100298C40;
          if (off_100298C40)
          {
            v34 = [v20 redactedForWiFi];
            [v21 redactedForWiFi];
            sub_10000DB84();
            [v33 WFLog:2 message:{"%s: removing old existing entry (ssid=%@, bssid=%@, age=%lums, max=%dms)", "__WiFiDeviceManagerUpdateCumulativeScanResults", v34, v35}];
          }

          objc_autoreleasePoolPop(v32);
          v36 = sub_1000F8BF0();
          CFArrayRemoveValueAtIndex(v36, v37);
          --v16;
        }

        v31 = -1;
        goto LABEL_38;
      }

      if (!v21 || !v10 || !CFEqual(v21, v10))
      {
        goto LABEL_32;
      }

      if (valuePtr > v58)
      {
        v23 = objc_autoreleasePoolPush();
        v24 = off_100298C40;
        if (off_100298C40)
        {
          v25 = [v9 redactedForWiFi];
          [v10 redactedForWiFi];
          sub_10000DB84();
          [v24 WFLog:2 message:{"%s: replacing existing entry with new entry (ssid=%@, bssid=%@, age=%lums, max=%dms)", "__WiFiDeviceManagerUpdateCumulativeScanResults", v25, v26}];
        }

        objc_autoreleasePoolPop(v23);
        v27 = sub_1000F8BF0();
        CFArrayRemoveValueAtIndex(v27, v28);
        v29 = sub_1000F8BF0();
        CFArrayInsertValueAtIndex(v29, v30, value);
      }

      v31 = v16;
LABEL_38:
      if (v6 <= v16)
      {
        v6 = v16;
      }

      v38 = ++v16 < CFArrayGetCount(*(a1 + 1160)) && v31 == -1;
    }

    while (v38);
    a2 = v55;
    v7 = v56;
    if (v31 == -1)
    {
LABEL_45:
      v39 = objc_autoreleasePoolPush();
      v40 = off_100298C40;
      if (off_100298C40)
      {
        [v9 redactedForWiFi];
        [sub_1000F8C4C() redactedForWiFi];
        sub_10000DB84();
        [v40 WFLog:2 message:{"%s: adding new entry (ssid=%@, bssid=%@, age=%lums, max=%dms)", "__WiFiDeviceManagerUpdateCumulativeScanResults", v9, v41}];
      }

      objc_autoreleasePoolPop(v39);
      CFArrayAppendValue(*(a1 + 1160), value);
    }

LABEL_48:
    ++v7;
  }

  while (v7 < CFArrayGetCount(a2));
LABEL_51:
  while (v6 < CFArrayGetCount(*(a1 + 1160)))
  {
    v42 = CFArrayGetValueAtIndex(*(a1 + 1160), v6);
    v43 = sub_10000A878(v42);
    v44 = sub_10000A540(v42, @"BSSID");
    valuePtr = 0;
    v45 = sub_10000A540(v42, @"TIMESTAMP");
    if (v45)
    {
      CFNumberGetValue(v45, kCFNumberSInt64Type, &valuePtr);
    }

    if (v5 - valuePtr > 0xDF8475800)
    {
      v46 = objc_autoreleasePoolPush();
      v47 = off_100298C40;
      if (off_100298C40)
      {
        v48 = [v43 redactedForWiFi];
        [v44 redactedForWiFi];
        sub_10000DB84();
        [v47 WFLog:2 message:{"%s: removing (remaining) old existing entry (ssid=%@, bssid=%@, age=%lums, max=%dms)", "__WiFiDeviceManagerUpdateCumulativeScanResults", v48, v49}];
      }

      objc_autoreleasePoolPop(v46);
      CFArrayRemoveValueAtIndex(*(a1 + 1160), v6--);
    }

    ++v6;
  }

  v50 = CFArrayGetCount(*(a1 + 1160));
  v4 = v54;
  if (Count != v50)
  {
    v51 = v50;
    v52 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: oldCount=%lu, newCount=%lu", "__WiFiDeviceManagerUpdateCumulativeScanResults", Count, v51}];
    }

    objc_autoreleasePoolPop(v52);
  }

LABEL_63:
  objc_autoreleasePoolPop(v4);
}

void sub_1001926B0(uint64_t a1)
{
  if (*(a1 + 384))
  {
    if (*(a1 + 400))
    {
      if (*(a1 + 392) != 0.0)
      {
        valuePtr = CFAbsoluteTimeGetCurrent();
        v2 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
        if (v2)
        {
          v3 = v2;
          CFArrayAppendValue(*(a1 + 384), v2);
          CFRelease(v3);
          v4 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            CFArrayGetCount(*(a1 + 384));
            sub_1000F8A68();
          }

          objc_autoreleasePoolPop(v4);
        }
      }
    }
  }
}

void sub_100192784(uint64_t a1, void *a2, __CFString *a3)
{
  if (a1 && a2)
  {
    if (sub_10001CDD8(a2))
    {
      v5 = sub_10000A540(a2, @"BSSID");
    }

    else
    {
      v5 = sub_10000A878(a2);
    }

    v12 = v5;
    v6 = sub_100008684();
    CFStringAppendFormat(v6, v7, v8, v12);
    if (sub_100009730(a2))
    {
      CFStringAppend(a3, @"(E)");
    }

    if (sub_10009DB7C(a2))
    {
      CFStringAppend(a3, @"(WEP)");
    }

    if (sub_10001CF3C(a2))
    {
      CFStringAppend(a3, @"(W)");
    }

    if (sub_10009E148(a2))
    {
      CFStringAppend(a3, @"(SAE)");
    }

    v9 = sub_100008684();

    CFStringAppendFormat(v9, v10, v11);
  }
}

void sub_100192890(uint64_t a1, void *a2, __CFString *a3)
{
  if (a1 && a2)
  {
    if (sub_10001CDD8(a2))
    {
      v5 = @"*";
    }

    else
    {
      v5 = sub_10000A878(a2);
    }

    CFStringAppend(a3, v5);
    v6 = sub_100008684();
    CFStringAppendFormat(v6, v7, @"-");
    v32 = sub_10000A540(a2, @"BSSID");
    v8 = sub_100008684();
    CFStringAppendFormat(v8, v9, v10, v32);
    v11 = sub_100008684();
    CFStringAppendFormat(v11, v12, @"-");
    v33 = sub_100014000(a2, v13);
    v14 = sub_100008684();
    CFStringAppendFormat(v14, v15, v16, v33);
    v34 = sub_100034EEC(a2, @"RSSI");
    v17 = sub_100008684();
    CFStringAppendFormat(v17, v18, v19, v34);
    v35 = sub_100034EEC(a2, @"AGE");
    v20 = sub_100008684();
    CFStringAppendFormat(v20, v21, v22, v35);
    if (sub_10000AFE4(a2))
    {
      v23 = sub_10009F864(a2);
      CFStringAppend(a3, @",");
      if (v23)
      {
        v24 = @" HS2.0-h";
      }

      else
      {
        v24 = @" HS2.0-r";
      }

      CFStringAppend(a3, v24);
    }

    v25 = sub_10000FC38();
    if (sub_1001933D4(v25, v26))
    {
      CFStringAppend(a3, @",");
      CFStringAppend(a3, @" HS");
    }

    v27 = sub_10000FC38();
    if (sub_100189D00(v27, v28))
    {
      CFStringAppend(a3, @",");
      CFStringAppend(a3, @" Cap");
    }

    if (sub_10000A7CC(a2))
    {
      CFStringAppend(a3, @",");
      CFStringAppend(a3, @" Car");
    }

    if (sub_10000C894(a2))
    {
      CFStringAppend(a3, @",");
      CFStringAppend(a3, @" Ad");
    }

    if (sub_100009730(a2))
    {
      CFStringAppend(a3, @",");
      CFStringAppend(a3, @" EAP");
    }

    if (sub_10009DB7C(a2))
    {
      CFStringAppend(a3, @",");
      CFStringAppend(a3, @" WEP");
    }

    if (sub_10001CF3C(a2))
    {
      CFStringAppend(a3, @",");
      CFStringAppend(a3, @" WPA");
    }

    if (sub_10009E148(a2))
    {
      CFStringAppend(a3, @",");
      CFStringAppend(a3, @" SAE");
    }

    v29 = sub_100008684();

    CFStringAppendFormat(v29, v30, v31);
  }
}

CFIndex sub_100192B7C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = &xpc_dictionary_set_uint64_ptr;
  v4 = &qword_1001CDFF8[1];
  if (off_100298C40)
  {
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
      sub_1000F8B08();
      sub_1000F8A80(&_mh_execute_header, &_os_log_default, v6, "%{public}s", v7, v8, v9, v10, v95, v100, v103, v104, v105, v106);
    }
  }

  objc_autoreleasePoolPop(v2);
  v11 = *(a1 + 1168);
  if (v11)
  {
    result = CFArrayGetCount(v11);
    if (!result)
    {
      return result;
    }

    v13 = result;
    v107.location = 0;
    v107.length = result;
    CFArraySortValues(*(a1 + 1168), v107, sub_1000EA500, a1);
    if (*(a1 + 3336) != 11)
    {
      v14 = *(a1 + 3560);
      if (v14)
      {
        if (!sub_1001933D4(a1, v14) && !sub_10000AFE4(*(a1 + 3560)))
        {
          v108.location = 0;
          v108.length = v13;
          FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(a1 + 1168), v108, *(a1 + 3560));
          if (FirstIndexOfValue != -1)
          {
            v73 = FirstIndexOfValue;
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 1168), FirstIndexOfValue);
            if (sub_10000A604(*(a1 + 3560)))
            {
              if (sub_10000A540(*(a1 + 3560), @"WiFiInstantHotspotJoining") == kCFBooleanTrue)
              {
                v77 = sub_10000D80C();
                sub_10000AD34(v77, v78, kCFBooleanTrue);
                v75 = 1;
              }

              else
              {
                v75 = 0;
              }

              if (sub_10000A540(*(a1 + 3560), @"WiFiAutoInstantHotspotJoining") == kCFBooleanTrue)
              {
                v79 = sub_10000D80C();
                sub_10000AD34(v79, v80, kCFBooleanTrue);
                v76 = 1;
              }

              else
              {
                v76 = 0;
              }
            }

            else
            {
              v76 = 0;
              v75 = 0;
            }

            CFRetain(ValueAtIndex);
            CFArrayRemoveValueAtIndex(*(a1 + 1168), v73);
            CFArrayInsertValueAtIndex(*(a1 + 1168), 0, ValueAtIndex);
            if (ValueAtIndex)
            {
              CFRelease(ValueAtIndex);
            }

            if (((v75 == 0) & ~v76) == 0)
            {
              v81 = sub_10000A540(*(a1 + 3560), @"lastDisconnectTimestampKey");
              if (v81)
              {
                v82 = v81;
                Current = CFAbsoluteTimeGetCurrent();
                if (Current - CFDateGetAbsoluteTime(v82) > 300.0)
                {
                  v84 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    v85 = sub_10000A878(*(a1 + 3560));
                    v86 = v75 ? "Instant" : "Auto instant";
                    v87 = CFAbsoluteTimeGetCurrent();
                    v88 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                    {
                      [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
                      sub_1000F8B08();
                      sub_1000F8A80(&_mh_execute_header, &_os_log_default, v89, "%{public}s", v90, v91, v92, v93, v99, v102, v103, v104, v105, v106);
                    }
                  }

                  objc_autoreleasePoolPop(v84);
                  CFArrayRemoveValueAtIndex(*(a1 + 1168), 0);
                }
              }
            }
          }
        }
      }
    }

    Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
    if (!Mutable)
    {
      goto LABEL_15;
    }

    v16 = Mutable;
    v17 = *(a1 + 1168);
    if (!v17 || (Count = CFArrayGetCount(*(a1 + 1168)), v19 = Count - 1, Count < 1))
    {
LABEL_11:
      v20 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v21 = [v3[465] stringWithFormat:@"%s", objc_msgSend(objc_msgSend(v3[465], "stringWithFormat:", @"{%@*} %@", @"AUTOJOIN", objc_msgSend(v3[465], "stringWithFormat:", @"Attempting auto-join for networks in following order: %@", v16)), "UTF8String")];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          [objc_msgSend(v3[465] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v21, "UTF8String")), "UTF8String"];
          sub_1000F8B08();
          sub_1000F8A80(&_mh_execute_header, &_os_log_default, v22, "%{public}s", v23, v24, v25, v26, v96, v101, v103, v104, v105, v106);
        }
      }

      objc_autoreleasePoolPop(v20);
      CFRelease(v16);
LABEL_15:
      *(a1 + 1176) = 0u;
      return 1;
    }

    v27 = @"SAE";
    while (1)
    {
      v28 = CFArrayGetValueAtIndex(v17, 0);
      if (v28)
      {
        v30 = v28;
        if (sub_10001CDD8(v28))
        {
          sub_10000A540(v30, @"BSSID");
        }

        else
        {
          sub_10000A878(v30);
        }

        v31 = sub_100015EB8();
        CFStringAppend(v31, v32);
        if (sub_10000AFE4(v30))
        {
          v106 = a1;
          v53 = v27;
          v54 = v19;
          v55 = v3;
          v56 = v4;
          v57 = sub_10009F864(v30);
          CFStringAppend(v16, @"(");
          v29 = !v57;
          v4 = v56;
          v3 = v55;
          v19 = v54;
          v27 = v53;
          a1 = v106;
          if (v29)
          {
            v58 = @"HS2.0-r";
          }

          else
          {
            v58 = @"HS2.0-h";
          }

          CFStringAppend(v16, v58);
          v59 = sub_1000950F8();
          v61 = sub_1001933D4(v59, v60);
          v36 = @",";
          if (v61)
          {
LABEL_38:
            CFStringAppend(v16, v36);
            CFStringAppend(v16, @"HS");
          }

          v62 = sub_1000950F8();
          v64 = sub_100189D00(v62, v63);
          v40 = @",";
          if (v64)
          {
LABEL_40:
            CFStringAppend(v16, v40);
            CFStringAppend(v16, @"C");
          }

          v65 = sub_10000C894(v30);
          v42 = @",";
          if (v65)
          {
LABEL_42:
            CFStringAppend(v16, v42);
            CFStringAppend(v16, @"A");
          }

          v66 = sub_100009730(v30);
          v44 = @",";
          if (v66)
          {
LABEL_44:
            CFStringAppend(v16, v44);
            CFStringAppend(v16, @"EAP");
          }

          v67 = sub_10009DB7C(v30);
          v46 = @",";
          if (v67)
          {
LABEL_46:
            CFStringAppend(v16, v46);
            CFStringAppend(v16, @"WEP");
          }

          v68 = sub_10001CF3C(v30);
          v48 = @",";
          if (v68)
          {
LABEL_48:
            CFStringAppend(v16, v48);
            CFStringAppend(v16, @"W");
          }

          v69 = sub_10009E148(v30);
          v50 = @",";
          if (v69)
          {
LABEL_50:
            CFStringAppend(v16, v50);
            CFStringAppend(v16, v27);
          }

          v98 = sub_100014000(v30, v50);
          v70 = sub_100011340();
          if (v19 <= 0)
          {
            CFStringAppendFormat(v70, v71, @", %@"), v98);
          }

          else
          {
            CFStringAppendFormat(v70, v71, @", %@, "), v98);
          }

          goto LABEL_19;
        }

        v33 = sub_1000950F8();
        v35 = sub_1001933D4(v33, v34);
        v36 = CFSTR("(");
        if (v35)
        {
          goto LABEL_38;
        }

        v37 = sub_1000950F8();
        v39 = sub_100189D00(v37, v38);
        v40 = CFSTR("(");
        if (v39)
        {
          goto LABEL_40;
        }

        v41 = sub_10000C894(v30);
        v42 = CFSTR("(");
        if (v41)
        {
          goto LABEL_42;
        }

        v43 = sub_100009730(v30);
        v44 = CFSTR("(");
        if (v43)
        {
          goto LABEL_44;
        }

        v45 = sub_10009DB7C(v30);
        v46 = CFSTR("(");
        if (v45)
        {
          goto LABEL_46;
        }

        v47 = sub_10001CF3C(v30);
        v48 = CFSTR("(");
        if (v47)
        {
          goto LABEL_48;
        }

        v49 = sub_10009E148(v30);
        v50 = CFSTR("(");
        if (v49)
        {
          goto LABEL_50;
        }

        v97 = sub_100014000(v30, @"(");
        v51 = sub_100011340();
        CFStringAppendFormat(v51, v52, @"(%@), ", v97);
      }

LABEL_19:
      sub_1000950C4();
      if (v29)
      {
        goto LABEL_11;
      }
    }
  }

  v94 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: no scan candidate network", "__WiFiDeviceManagerPrepareCandidates"}];
  }

  objc_autoreleasePoolPop(v94);
  return 0;
}

BOOL sub_1001933D4(uint64_t a1, _BOOL8 a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  if (sub_10000AFE4(a2))
  {
    return 0;
  }

  Count = CFArrayGetCount(*(a1 + 3624));
  if (!Count)
  {
    return 0;
  }

  v4 = sub_1000F8CA0(Count);
  if (v4 == -1)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 3624), v4);
  if (!ValueAtIndex)
  {
    return 0;
  }

  return sub_10000966C(ValueAtIndex);
}

void sub_100193574(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    sub_100095008();
    v6 = objc_autoreleasePoolPush();
    v7 = [*(v4 + 6720) enabled];
    objc_autoreleasePoolPop(v6);
    if (v7)
    {
      v8 = *(v4 + 3552);
      if (a3)
      {

        CFSetAddValue(v8, v3);
      }

      else
      {

        CFSetRemoveValue(v8, v3);
      }
    }
  }
}

void sub_100193620(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int __s1, __int16 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_10000FDC0();
  a26 = v27;
  a27 = v28;
  v30 = v29;
  v32 = v31;
  objc_autoreleasePoolPush();
  if (!sub_10006373C(*(v32 + 64)))
  {
    goto LABEL_25;
  }

  v33 = sub_10000A540(v30, @"JOIN_STATUS_SUBSTATE_INFO");
  if (v33)
  {
    v34 = v33;
    if ([v33 count])
    {
      v35 = 0;
      v55 = v30;
      do
      {
        v36 = [sub_10001153C() objectAtIndex:?];
        if (v36)
        {
          v37 = v36;
          v38 = [v36 objectForKey:@"JOIN_STATUS_SUBSTATE_FLAGS"];
          if (v38)
          {
            if ([v38 intValue])
            {
              v39 = [v37 objectForKey:@"BSSID"];
              if (v39)
              {
                v40 = v39;
                a15 = 0;
                __s1 = 0;
                if (memcmp(&__s1, [v39 bytes], 6uLL))
                {
                  v41 = ether_ntoa([v40 bytes]);
                  v42 = v41 ? [NSString stringWithUTF8String:v41]: 0;
                  v43 = sub_1000EB3B0(v37, v42);
                  if (v43)
                  {
                    v44 = v43;
                    if ([v43 count])
                    {
                      v45 = sub_10000C580(kCFAllocatorDefault, v30);
                      sub_10000AD34(v45, @"BSSID", v42);
                      v46 = sub_10001A9BC(v45);
                      if ([v44 count])
                      {
                        v47 = 0;
                        do
                        {
                          [v44 objectAtIndex:v47];
                          v48 = sub_10000757C();
                          v50 = sub_1000BE2EC(v48, 8, v49, v42, 2);
                          [*(v32 + 6720) setNetworkDenyListInfo:v50 forScanResult:v46];

                          ++v47;
                        }

                        while (v47 < [v44 count]);
                      }

                      v51 = *(v32 + 7480);
                      if (v51)
                      {
                        [v51 addFaultEvent:9 forInterface:sub_100006F88(*(v32 + 64))];
                      }

                      if (v45)
                      {
                        CFRelease(v45);
                      }

                      v30 = v55;
                    }
                  }
                }
              }
            }
          }
        }

        ++v35;
      }

      while (v35 < [v34 count]);
    }

LABEL_25:
    if (!v30)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v54 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"%s substatesArray for join status is nil"];
  }

  objc_autoreleasePoolPop(v54);
  if (v30)
  {
LABEL_26:
    sub_10000AD34(v30, @"JOIN_STATUS_SUBSTATE_INFO", 0);
  }

LABEL_27:
  sub_100008690();

  objc_autoreleasePoolPop(v52);
}

void sub_100193894()
{
  sub_100011520();
  sub_1000F8BE4();
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1000A5008(v1);
  v4 = sub_10009A8E0(v1);
  if (v4)
  {
    v5 = v4;
    v6 = objc_autoreleasePoolPush();
    v7 = off_100298C40;
    if (off_100298C40)
    {
      sub_10000A878(v5);
      [v7 WFLog:3 message:"%s: responseType=%d ssid=%@"];
    }

    objc_autoreleasePoolPop(v6);
    switch(v3)
    {
      case 1:
        v8 = sub_1000A5324(v1, kCFUserNotificationTextFieldValuesKey);
        if (!v8)
        {
          break;
        }

        v9 = v8;
        TypeID = CFArrayGetTypeID();
        if (TypeID == CFGetTypeID(v9))
        {
          if (CFArrayGetCount(v9) <= 1)
          {
            if (CFArrayGetCount(v9) < 1)
            {
              goto LABEL_18;
            }

            v14 = sub_1000083D0();
          }

          else
          {
            v11 = sub_1000083D0();
            ValueAtIndex = CFArrayGetValueAtIndex(v11, v12);
            sub_10000AD34(v5, @"UserName", ValueAtIndex);
            v14 = v9;
            v15 = 1;
          }

          CFArrayGetValueAtIndex(v14, v15);
          v18 = sub_100015EB8();
        }

        else
        {
          v17 = CFStringGetTypeID();
          if (v17 != CFGetTypeID(v9))
          {
            goto LABEL_18;
          }

          v18 = sub_10000D80C();
        }

        sub_10009FBF4(v18, v19);
LABEL_18:
        v20 = sub_10000FC38();
        if (sub_1000D3D70(v20, v21, 1))
        {
          v22 = sub_10000FC38();
          sub_1000E3DB4(v22, v23, 0, v24);
        }

        break;
      case 2:
        v25 = sub_10000FC38();
        sub_100193574(v25, v26, 1);
        v27 = sub_10001A9BC(v5);
        sub_10000A540(v5, @"BSSID");
        v28 = sub_10000836C();
        v31 = sub_1000BE2EC(v28, v29, 0, v30, 3);
        [*(v0 + 6720) setNetworkDenyListInfo:v31 forScanResult:v27];

        goto LABEL_21;
      case 3:
LABEL_21:
        if (_os_feature_enabled_impl())
        {
          sub_10000FC38();
          sub_1000F8AB8();
          sub_1000EAF00(v32, v33, v34, v35, v36);
        }

        sub_1000E9864(v0);
        break;
      case 4:
        v16 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:"%s: opening settings to collect credentials"];
        }

        objc_autoreleasePoolPop(v16);
        sub_1000EC328(0, v5);
        break;
      default:
        break;
    }
  }

  objc_autoreleasePoolPop(v2);
  sub_10001091C();
}

void sub_100193B0C(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 8968))
      {
        v5 = *(a1 + 8960);
        if (v5)
        {
          if ([*(a1 + 6824) isEqualHotspotDevicesName:v5 compareTo:a2])
          {
            (*(*(a1 + 8968) + 16))();
            _Block_release(*(a1 + 8968));
            *(a1 + 8968) = 0;
            CFRelease(*(a1 + 8960));
            *(a1 + 8960) = 0;
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100193BAC()
{
  sub_100008C40();
  *(v2 + 7052) = v3;
  if (_os_feature_enabled_impl())
  {
    v4 = sub_1000086AC();
    sub_1000EC6C0(v4, v5, v6, v7, 0);
  }

  v8 = *(v0 + 6936);
  if (v8)
  {
    CFRelease(v8);
    *(v0 + 6936) = 0;
  }

  v9 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Dispatch Notification: Auto Hotspot Failure %d", *(v0 + 7052)}];
  }

  objc_autoreleasePoolPop(v9);
  if (!*(v0 + 7048) && *(v0 + 6884) == 1)
  {
    v10 = sub_10009D2E4(v1);
    if (v10)
    {
      v11 = v10;
      sub_100006F88(*(v0 + 64));
      v12 = sub_1000F8A18();
      sub_1000D62B4(v12, v13, 11, 0, v11, 0);
      CFRelease(v11);

      sub_1000EC5CC(v0, @"userJoinAssociationFailed", 0);
    }
  }
}

uint64_t sub_100193CE8(uint64_t a1, int a2, int a3)
{
  valuePtr = 0;
  if (a1)
  {
    if (a3)
    {
      v32 = sub_1000083D0();
      sub_10018C85C(v32, v33, v34, 110, 1, v35, v36, v37, v43, v44, v45, valuePtr, values, SHIDWORD(values), v48, keys, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
      v21 = v38;
      sub_10002A0C4();
      Mutable = 0;
      if (v39)
      {
LABEL_7:
        v22 = sub_1000075BC();
        if (v22)
        {
          v23 = v22;
          *v22 = a1;
          v22[1] = 0;
          v22[3] = 0;
          if (CFDictionaryContainsKey(v21, @"SSID_STR"))
          {
            v24 = 1;
          }

          else
          {
            v24 = CFDictionaryContainsKey(v21, @"SCAN_SSID_LIST") != 0;
          }

          v23[32] = v24;
          sub_100006F88(*(a1 + 64));
          v27 = sub_10001153C();
          v26 = sub_100025FF8(v27, v28, v29, 0, v30, v23, 0, 18);
          if (v26)
          {
            v42 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"Error initiating scan request: %d", v26}];
            }

            objc_autoreleasePoolPop(v42);
            free(v23);
          }
        }

        else
        {
          v41 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: null scanData", "__WiFiDeviceManagerAutoInstantHotspotJoin"}];
          }

          objc_autoreleasePoolPop(v41);
          v26 = 0;
        }

        CFRelease(v21);
        if (!v3)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else
    {
      valuePtr = 130;
      v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
      if (!v7)
      {
        return 0;
      }

      v3 = v7;
      v8 = sub_10000836C();
      Mutable = CFArrayCreateMutable(v8, v9, v10);
      if (!Mutable)
      {
        v4 = 0;
        v26 = 0;
LABEL_16:
        CFRelease(v3);
LABEL_17:
        if (v4)
        {
          CFRelease(v4);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        return v26;
      }

      v12 = sub_10001EDAC();
      v14 = sub_10000A540(v12, v13);
      keys = @"CHANNEL";
      v50 = @"CHANNEL_FLAGS";
      values = v14;
      v48 = v3;
      v4 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v15 = sub_100021D58();
      CFArrayAppendValue(v15, v16);
      sub_10018C85C(a2, Mutable, *(a1 + 128), 110, 1, v17, v18, v19, v43, v44, v45, valuePtr, values, SHIDWORD(values), v48, keys, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
      if (v20)
      {
        v21 = v20;
        CFDictionarySetValue(v20, @"SCAN_LOW_LATENCY", kCFBooleanTrue);
        goto LABEL_7;
      }
    }

    v40 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: failed to create scan request", "__WiFiDeviceManagerAutoInstantHotspotJoin"}];
    }

    objc_autoreleasePoolPop(v40);
    v26 = 0;
    if (!v3)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v25 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager NULL", "__WiFiDeviceManagerAutoInstantHotspotJoin"}];
  }

  objc_autoreleasePoolPop(v25);
  return 4294963396;
}

void sub_100194030()
{
  sub_10000D798();
  v1 = v0;
  if ([objc_msgSend(*(v0 + 6832) "wapCfg")])
  {
    sub_1000084B8();
  }

  else
  {
    v5 = objc_alloc_init(NSMutableString);
    v2 = 16;
    do
    {
      arc4random_uniform(9u);
      [v5 appendString:{objc_msgSend(sub_10002A0A0(), "stringWithFormat:")}];
      --v2;
    }

    while (v2);
    [*(v1 + 6832) createWAPConfig:v5];
    *(v1 + 5440) = v5;
    if (sub_1000F8BCC())
    {
      [objc_msgSend(&@"DRIVER_AVAILABLE_JOIN_TIMEOUT_TARGET_CLASS_INFO".length "sharedInstance")];
    }

    sub_1000084B8();
  }
}

void sub_100194110(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v10 = *a6;
  v11 = sub_100060BB0(*(*a6 + 64));
  v12 = sub_10018A684(v10);
  free(a6);
  v13 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"MIS scan completed (%d) with current state: %d", a5, *(v10 + 5392)}];
  }

  objc_autoreleasePoolPop(v13);
  if (v11 == *(v10 + 5400))
  {
    if (!*(v10 + 5271) || *(v10 + 5269) && v12)
    {
      if (a1 && a3 && *(v10 + 5416))
      {
        v38 = 0;
        v37 = 0;
        Count = CFArrayGetCount(a3);
        if (Count >= 1)
        {
          a1 = Count;
          do
          {
            v15 = sub_10001E7C0();
            ValueAtIndex = CFArrayGetValueAtIndex(v15, v16);
            if (ValueAtIndex)
            {
              v18 = sub_10000A540(ValueAtIndex, @"CHANNEL");
              v39.location = 0;
              v39.length = 3;
              v19 = CFArrayBSearchValues(*(v10 + 5416), v39, v18, &_CFNumberCompare, 0);
              if (v19 <= 2)
              {
                ++*(&v37 + v19);
              }
            }

            sub_100021D9C();
          }

          while (!v20);
        }

        v21 = 0;
        LODWORD(v22) = 0;
        a3 = "%s: interfernce on channel %d = %d";
        do
        {
          if (sub_1000CEE58(v10, dword_100297BAC[v21]))
          {
            *(&v37 + v21) = 0xFFFF;
          }

          v23 = objc_autoreleasePoolPush();
          v24 = sub_10001E2C0();
          if (v24)
          {
            [v24 WFLog:3 message:{"%s: interfernce on channel %d = %d", "__FindLeastBusyChannelForMIS", dword_100297BAC[v21], *(&v37 + v21)}];
          }

          objc_autoreleasePoolPop(a1);
          if (*(&v37 + v22) > *(&v37 + v21))
          {
            LODWORD(v22) = v21;
          }

          ++v21;
        }

        while (v21 != 3);
      }

      else
      {
        v22 = 0;
        while (sub_1000CEE58(v10, dword_100297BAC[v22]))
        {
          if (++v22 == 3)
          {
            LODWORD(v22) = 0;
            break;
          }
        }

        v35 = objc_autoreleasePoolPush();
        v36 = sub_1000950EC();
        if (v36)
        {
          [v36 WFLog:3 message:{"Error: %s: Using default hostAp channel %d", "__FindLeastBusyChannelForMIS", dword_100297BAC[v22]}];
        }

        objc_autoreleasePoolPop(a3);
      }

      *(v10 + 5264) = dword_100297BAC[v22];
      if (sub_1000F8BCC())
      {
        [objc_msgSend(a3 + 440 "sharedInstance")];
      }

      v25 = objc_autoreleasePoolPush();
      v26 = sub_1000950EC();
      if (v26)
      {
        [v26 WFLog:3 message:{"Least Congested channel is %d", *(v10 + 5264)}];
      }

      objc_autoreleasePoolPop(a3);
      if (*(v10 + 5392) == 1)
      {
        sub_1000F8C64();

        sub_1000EE598(v27);
        return;
      }
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = sub_1000950EC();
      if (v34)
      {
        [v34 WFLog:3 message:{"%s: Aborting MIS Start", "__WiFiDeviceManagerMISScanCallback"}];
      }

      objc_autoreleasePoolPop(a3);
      *(v10 + 5392) = 0;
      bzero(&v37, 0xB8uLL);
      HIDWORD(v37) = 7;
      sub_1000C67C8(v10, &v37);
    }

    sub_1000F8C64();
    return;
  }

  v29 = objc_autoreleasePoolPush();
  v30 = sub_1000950EC();
  if (v30)
  {
    [v30 WFLog:3 message:{"Ignorning old MIS Scan request.  CurrentCommand=%lld PendingCommand=%lld", v11, *(v10 + 5400)}];
  }

  sub_1000F8C64();

  objc_autoreleasePoolPop(v31);
}

void sub_1001944D4()
{
  sub_1000F8B6C();
  v1 = v0;
  v3 = v2;
  v62 = v4;
  v6 = v5;
  v7 = v5 + 4096;
  [NSString stringWithFormat:@"%@"];
  v8 = sub_10001158C();
  sub_1000F8B9C(v8, v9, v10, v11, v12, v13, v14, v15, @"PHBringUp", v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76);
  v16 = sub_10018A684(v6);
  v17 = *(v7 + 1174);
  v18 = *(v7 + 1175);
  v19 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"_WiFiDeviceManagerStartMISCallback err=%d, network=%@ state=%d", v3, sub_10000A878(v1), *(v6 + 5392)}];
  }

  objc_autoreleasePoolPop(v19);
  if (*(v6 + 5392) == 2)
  {
    *(v6 + 5392) = 0;
    *(v7 + 1174) = 0;
    *(v7 + 1176) = 0;
    *(v7 + 1339) = 0;
    *(v7 + 1343) = 0;
    if (v3 || !v1)
    {
      v42 = objc_autoreleasePoolPush();
      v43 = sub_1000F8AF8();
      if (v43)
      {
        [v43 WFLog:4 message:"__WiFiDeviceManagerStartMISCallback start network failed"];
      }

      objc_autoreleasePoolPop(v3);
      v44 = sub_1000F8A4C();
      v47 = 14;
      goto LABEL_58;
    }

    if (!*(v6 + 4992))
    {
      v48 = objc_autoreleasePoolPush();
      v49 = sub_1000F8AF8();
      if (v49)
      {
        [v49 WFLog:4 message:"__WiFiDeviceManagerStartMISCallback: MIS Session is NULL"];
      }

      objc_autoreleasePoolPop(v3);
      v44 = sub_1000F8A4C();
      v47 = 9;
      goto LABEL_58;
    }

    if (!v16)
    {
      v50 = objc_autoreleasePoolPush();
      v51 = sub_1000F8AF8();
      if (v51)
      {
        [v51 WFLog:3 message:{"%s: Aborting MIS Start", "__WiFiDeviceManagerStartMISSessionCallback"}];
      }

      objc_autoreleasePoolPop(v3);
      v44 = sub_1000F8A4C();
      v47 = 4;
      goto LABEL_58;
    }

    if (!v18 && !v17)
    {
      if (!*(v7 + 1173) && !*(v6 + 5280))
      {
        v20 = objc_autoreleasePoolPush();
        v21 = sub_10006AD2C();
        if (v21)
        {
          [v21 WFLog:3 message:{"%s: Starting MIS idle timer", "__WiFiDeviceManagerStartMISSessionCallback"}];
        }

        objc_autoreleasePoolPop(v3);
        v22 = sub_1000F8B38();
        sub_1000C7220(v22, v23);
      }

      goto LABEL_23;
    }

    if (!v17)
    {
LABEL_23:
      bzero(buffer, 0x100uLL);
      v29 = sub_100060E7C();
      CFStringGetCString(v29, buffer, 256, 0);
      v30 = objc_autoreleasePoolPush();
      v31 = sub_10006AD2C();
      if (v31)
      {
        [v31 WFLog:3 message:{"Attempting to start DHCP Service on %s", buffer}];
      }

      objc_autoreleasePoolPop(v3);
      if (_MISStartServiceDHCP)
      {
        v32 = _MISStartServiceDHCP(*(v6 + 4992), buffer, (v6 + 5000));
        if (!v32)
        {
          v33 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            sub_100060E7C();
            sub_100026290();
          }

          objc_autoreleasePoolPop(v33);
          v34 = *(v6 + 5256);
          if (v34)
          {
            CFRelease(v34);
          }

          *(v6 + 5256) = v1;
          CFRetain(v1);
          if (!*(v6 + 5276))
          {
            v35 = sub_100060E7C();
            v36 = IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, v35, (v6 + 5276));
            if (v36)
            {
              v37 = v36;
              v38 = objc_autoreleasePoolPush();
              v39 = sub_1000F8AC4();
              if (v39)
              {
                [v39 WFLog:4 message:{"Unable to prevent idle sleep during MIS Session, error=%d", v37}];
              }

              objc_autoreleasePoolPop(v1);
              *(v6 + 5276) = 0;
            }
          }

          v40 = objc_autoreleasePoolPush();
          v41 = sub_1000F8AC4();
          if (v41)
          {
            [v41 WFLog:3 message:"Started Internet Connection Sharing over WiFi"];
          }

          objc_autoreleasePoolPop(v1);
          sub_10014C5C0();
          bzero(&v63, 0xB8uLL);
          v67 = sub_100058B68();
          LODWORD(v71) = *(v7 + 1168);
          v64 = 1;
          if (*(v7 + 1338))
          {
            v76 = sub_100058B68();
          }

          sub_1000C67C8(v6, &v63);
          v24 = sub_1000F8C58();
          v26 = 1;
          goto LABEL_41;
        }

        v52 = v32;
      }

      else
      {
        v52 = -1;
      }

      v53 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"Can't start DHCP service: %s", strerror(v52)}];
      }

      objc_autoreleasePoolPop(v53);
      v44 = sub_1000F8A4C();
      v47 = 20;
LABEL_58:
      sub_1001949D0(v44, v45, v46, v47);
      goto LABEL_42;
    }

    sub_10014C5C0();
    v27 = objc_autoreleasePoolPush();
    v28 = sub_1000F8AC4();
    if (v28)
    {
      [v28 WFLog:3 message:{"%s: MIS successfully restarted.", "__WiFiDeviceManagerStartMISSessionCallback"}];
    }

    objc_autoreleasePoolPop(v1);
  }

  else
  {
    v1 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Start MIS Session, unexpected state %d", *(v6 + 5392)}];
    }

    objc_autoreleasePoolPop(v1);
    if ((*(v7 + 3057) & 4) != 0)
    {
      v24 = sub_1000F8C58();
      v26 = 0;
LABEL_41:
      sub_1000BBAE0(v24, v25, v26);
    }
  }

LABEL_42:
  if (!*(v7 + 1171))
  {
    v54 = *(v6 + 5276);
    if (v54)
    {
      v55 = IOPMAssertionRelease(v54);
      if (v55)
      {
        v56 = v55;
        v57 = objc_autoreleasePoolPush();
        v58 = sub_1000F8AC4();
        if (v58)
        {
          [v58 WFLog:4 message:{"%s: MIS session start failed: release MIS PM Assertion, error=%d", "__WiFiDeviceManagerStartMISSessionCallbackWrapper", v56}];
        }

        objc_autoreleasePoolPop(v1);
      }

      *(v6 + 5276) = 0;
    }
  }

  sub_1000F8B84();
}

void sub_1001949D0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_100015E88();
  v8 = v7 + 4096;
  if (v9 != 14)
  {
    sub_100006F88(*(v4 + 64));
    sub_1000F8A18();
    sub_1000F8AB8();
    sub_1000CEA50(v10, v11, v12, v13, v14);
  }

  *(v8 + 1171) = 0;
  if (+[WiFiSoftApStateMonitor sharedInstance])
  {
    [+[WiFiSoftApStateMonitor sharedInstance](WiFiSoftApStateMonitor setMisEnabled:"setMisEnabled:", *(v8 + 1171) != 0];
  }

  if (*(v8 + 1338))
  {
    *(v8 + 1338) = 0;
  }

  sub_10018AC18();
  if (_MISDetach)
  {
    v15 = *(v4 + 4992);
    if (v15)
    {
      _MISDetach(v15);
    }
  }

  *(v4 + 4992) = 0;
  *(v4 + 192) = 13;
  v16 = sub_1000F8C58();
  sub_1000BBAE0(v16, v17, 0);
  if (_os_feature_enabled_impl())
  {
    sub_100019814(v4, 0xAuLL);
  }

  else
  {
    [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
    v18 = sub_1000F8B38();
    sub_1000BD310(v18, v19, v20);
  }

  bzero(v21, 0xB8uLL);
  v22 = a4;
  sub_1000C67C8(v4, v21);
}

void sub_100194B10()
{
  sub_10000FDC0();
  sub_10001131C();
  v3 = sub_1000A4FF8(v2);
  v4 = sub_1000A5000(v1);
  v5 = sub_1000A5008(v1);
  v6 = objc_autoreleasePoolPush();
  v7 = off_100298C40;
  if (off_100298C40)
  {
    sub_1000AA864(*(v0 + 3336));
    sub_1000A5484(v5);
    [v7 WFLog:3 message:"%s: state=%@ type=%d responseType=%@ inputType=%d"];
  }

  objc_autoreleasePoolPop(v6);
  if (v4 == 2 || (!v3 ? (v8 = v5 == 4) : (v8 = 0), v8 ? (v9 = 0) : (v9 = 1), v3 == 13 || (v9 & 1) == 0))
  {
    if (v3)
    {
      switch(v3)
      {
        case 2:
          v14 = sub_1000086AC();
          sub_1000EBAD8(v14, v15);
          break;
        case 13:
          v10 = sub_1000086AC();
          sub_1000DE20C(v10, v11);
          break;
        case 1:
          sub_1000086AC();
          sub_100193894();
          break;
      }
    }

    else
    {
      v12 = sub_1000086AC();
      sub_1000EBEB0(v12, v13);
    }
  }

  v16 = *(v0 + 224);
  if (v16 == v1)
  {
    v17 = *(v0 + 3336);
    if (v17 == 17 || v17 == 14)
    {
      sub_100008690();

      sub_1000B6EBC(v19);
    }

    else
    {
      if (v1)
      {
        CFRelease(v16);
        *(v0 + 224) = 0;
      }

      sub_100008690();
    }
  }

  else
  {
    objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"%s: notification in callback is not pending"];
    }

    sub_100008690();

    objc_autoreleasePoolPop(v21);
  }
}

void sub_100194CC0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v13 = objc_autoreleasePoolPush();
  if (a3)
  {
    if (!v5)
    {
      sub_100003958(NSDictionary, v6, v7, v8, v9, v10, v11, v12, v55, v56, v57);
      v39 = [sub_100024F70() errorWithDomain:? code:? userInfo:?];
      goto LABEL_83;
    }

    if (*(v5 + 8936))
    {
      if (*(v5 + 3361) && (*(v5 + 6344) || *(v5 + 5576)) && *(v5 + 20) == 1 && !*(v5 + 256) && !*(v5 + 257))
      {
        v14 = !*(v5 + 5267) && !*(v5 + 5392) && *(v5 + 5409) == -*(v5 + 5408) && !sub_100025A5C(v5);
        v15 = *(v5 + 7152);
        if (*(v5 + 7152))
        {
          v15 = sub_1000C7464(v5, 1) != 0;
        }

        if ((v14 | v15))
        {
          sub_100006F88(*(v5 + 64));
          v16 = sub_10000D800();
          v25 = sub_1000078F4(v16, v17);
          if ((*(v5 + 5468) == 102 && (*(v5 + 5464) & 1) != 0 || *(v5 + 50)) && *(v5 + 5592) == 1 && !*(v5 + 37) && (a2 > 0x37 || ((1 << a2) & 0xD0000000000000) == 0) || *(v5 + 3470) && (a2 > 0x37 || ((1 << a2) & 0xD0012000000184) == 0) || sub_1000C905C(v5) || sub_100025988(v5))
          {
            goto LABEL_85;
          }

          if (!v25 || sub_10000A604(v25))
          {
LABEL_73:
            if (*(v5 + 5488))
            {
              v37 = *(v5 + 5480);
              if (!v37 || ([v37 isPowerResourceAvailable:0] & 1) != 0)
              {
                if (*(v5 + 3536) || (sub_1000F8C40(), !v45))
                {
                  if (!sub_10019004C(v5) && *(v5 + 9120))
                  {
                    v38 = *(v5 + 3520);
                    if (v38 < 1)
                    {
                      v39 = 0;
                      v5 = 1;
                      if (!v25)
                      {
LABEL_83:
                        v40 = sub_100021504();
                        v41(v40, v5, v39);
                        goto LABEL_84;
                      }

LABEL_82:
                      CFRelease(v25);
                      goto LABEL_83;
                    }

                    [NSString stringWithFormat:@"User join is in progress (count=%d)", v38];
                  }
                }
              }
            }

            else
            {
              [NSString stringWithFormat:@"Thermal index (%d) is below disabled threshold (%d)", 0, 0];
            }

LABEL_85:
            sub_100003958(NSDictionary, v18, v19, v20, v21, v22, v23, v24, v55, v56, v57);
            v39 = [sub_1000F89EC() errorWithDomain:? code:? userInfo:?];
            v5 = 0;
            if (!v25)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          }

          if ((a2 - 9 > 0x3B || ((1 << (a2 - 9)) & 0xC037802478E0001) == 0) && !CWFIsAutoJoinRetryTrigger())
          {
            goto LABEL_155;
          }

          v26 = objc_autoreleasePoolPush();
          if (a2 == 28 && *(v5 + 6976) && *(v5 + 7056))
          {
            v27 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: Transition OK. Auto Hotspot Network recommendation", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition"}];
            }

LABEL_71:
            objc_autoreleasePoolPop(v27);
            goto LABEL_72;
          }

          if (!*(v5 + 3576))
          {
            v36 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: no known networks", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", v56}];
            }

            goto LABEL_153;
          }

          if (*(v5 + 20) != 1)
          {
            v36 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: wifi is off", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", v56}];
            }

            goto LABEL_153;
          }

          if (!*(v5 + 3467))
          {
            v36 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: not associated", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", v56}];
            }

            goto LABEL_153;
          }

          if (sub_100025AB8(v5) && sub_1000C9084(v5))
          {
            v36 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: Active Ranging Session", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", v56}];
            }

            goto LABEL_153;
          }

          if (*(v5 + 6704))
          {
LABEL_45:
            if (a2 - 56 > 0xFFFFFFFFFFFFFFFBLL)
            {
LABEL_72:
              objc_autoreleasePoolPop(v26);
              goto LABEL_73;
            }

            if (*(v5 + 3464))
            {
              v36 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: voip on going", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", v56}];
              }
            }

            else if (*(v5 + 3465))
            {
              v36 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: call on going", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", v56}];
              }
            }

            else if (*(v5 + 3466))
            {
              v36 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: media playing", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", v56}];
              }
            }

            else if (*(v5 + 3470))
            {
              v36 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: Awdl RealTime is active", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", v56}];
              }
            }

            else
            {
              if (a2 == 32 || a2 == 47)
              {
                goto LABEL_72;
              }

              if (*(v5 + 3468))
              {
                v36 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: on a moving network", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", v56}];
                }
              }

              else if (*(v5 + 5570))
              {
                v36 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: Airplay over Infra is active", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", v56}];
                }
              }

              else if (*(v5 + 5568))
              {
                v36 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: in carplay", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", v56}];
                }
              }

              else if (*(v5 + 3448) >= 5)
              {
                v36 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: already tried enough times", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", v56}];
                }
              }

              else
              {
                Current = CFAbsoluteTimeGetCurrent();
                v29 = *(v5 + 3456);
                v30 = Current - v29;
                if (v29 != 0.0 && v30 <= 30.0)
                {
                  v59 = v30;
                  v36 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: timeSinceLastScan %f", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", *&v59}];
                  }
                }

                else
                {
                  v32 = CFAbsoluteTimeGetCurrent();
                  v33 = *(v5 + 3472);
                  v34 = v32 - v33;
                  if (v33 == 0.0 || v34 > 10.0)
                  {
                    goto LABEL_72;
                  }

                  v58 = v34;
                  v36 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: timeSinceLinkUp %f", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", *&v58}];
                  }
                }
              }
            }

            goto LABEL_153;
          }

          if (*(v5 + 6696) == 1)
          {
            v27 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: Transition ok when its within colocated scope", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition"}];
            }

            goto LABEL_71;
          }

          v42 = sub_100009664(*(v5 + 64));
          v43 = sub_100007D90(v5, v42, 1);
          v44 = v43;
          if (a2 - 32 > 0x24 || ((1 << (a2 - 32)) & 0x1800F08001) == 0)
          {
            if (v43 && sub_10000A604(v43))
            {
              goto LABEL_90;
            }

            if (*(v5 + 3469))
            {
              v53 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: network switched by user", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition"}];
              }

              objc_autoreleasePoolPop(v53);
              if (v44)
              {
                CFRelease(v44);
              }

              goto LABEL_154;
            }
          }

          if (!v44)
          {
LABEL_91:
            if (a2 - 69 > 0xFFFFFFFFFFFFFFFDLL || a2 == 47 || a2 == 32 || a2 == 45)
            {
              goto LABEL_45;
            }

            v45 = (a2 & 0xFFFFFFFFFFFFFFFCLL) == 0x34 || *(v5 + 176) == 3;
            if (v45)
            {
              goto LABEL_45;
            }

            v36 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: display is on", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", v56}];
            }

LABEL_153:
            objc_autoreleasePoolPop(v36);
LABEL_154:
            objc_autoreleasePoolPop(v26);
LABEL_155:
            sub_100003958(NSDictionary, v46, v47, v48, v49, v50, v51, v52, v55, v56, v57);
            v39 = [sub_1000F89EC() errorWithDomain:? code:? userInfo:?];
            v5 = 0;
            goto LABEL_82;
          }

LABEL_90:
          CFRelease(v44);
          goto LABEL_91;
        }

        [NSString stringWithFormat:@"MIS is enabled (wifi_count=%d, bt_count=%d, block_scan=%d, mis_disc_state=%d)", *(v5 + 5408), *(v5 + 5409), *(v5 + 5376), *(v5 + 5269)];
      }

      sub_100003958(NSDictionary, v6, v7, v8, v9, v10, v11, v12, v55, v56, v57);
      v54 = sub_1000F89DC();
    }

    else
    {
      sub_100003958(NSDictionary, v6, v7, v8, v9, v10, v11, v12, v55, v56, v57);
      v54 = sub_100024F70();
    }

    v39 = [v54 errorWithDomain:? code:? userInfo:?];
    v5 = 0;
    goto LABEL_83;
  }

LABEL_84:
  objc_autoreleasePoolPop(v13);
}

void sub_10019598C()
{
  sub_1000951B4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *(v6 + 32);
  v10 = objc_autoreleasePoolPush();
  if (v1)
  {
    if (v7 && v7[1117])
    {
      if (v5)
      {
        v11 = sub_10000836C();
        v13 = sub_100022854(v11, v12);
        if (v13)
        {
          v14 = v13;
          if (sub_1000E0A04(v7, v13, 1))
          {
            if (!v3)
            {
              goto LABEL_11;
            }

            v17 = sub_100022854([v3 matchingKnownNetworkProfile], 0);
            if (v17)
            {
              v3 = v17;
              if (sub_100164A3C(v7[859], v14))
              {
                v20 = v7[859];
                sub_100006F88(v7[8]);
                if (sub_100164B04(v20))
                {
LABEL_11:
                  v21 = sub_1001986B0(v7, v14);
                  CFRelease(v14);
                  v22 = 0;
                  v23 = 0;
                  v24 = 1;
                  if (!v3)
                  {
LABEL_13:
                    v25 = sub_100021504();
                    v26(v25, v24, v21, v23);
                    goto LABEL_14;
                  }

LABEL_12:
                  CFRelease(v3);
                  v23 = v22;
                  goto LABEL_13;
                }

                v28 = NSPOSIXErrorDomain;
              }

              else
              {
                v28 = NSPOSIXErrorDomain;
              }

              v22 = [NSError errorWithDomain:v28 code:1 userInfo:sub_1000F89FC(NSDictionary, v18, v19)];
              CFRelease(v14);
              v21 = 0;
              v24 = 0;
              goto LABEL_12;
            }
          }

          sub_1000F89FC(NSDictionary, v15, v16);
          v23 = [sub_1000F89EC() errorWithDomain:? code:? userInfo:?];
          CFRelease(v14);
LABEL_19:
          v21 = 0;
          v24 = 0;
          goto LABEL_13;
        }
      }

      sub_1000F89FC(NSDictionary, v8, v9);
      v27 = sub_1000F89DC();
    }

    else
    {
      sub_1000F89FC(NSDictionary, v8, v9);
      v27 = sub_100024F70();
    }

    v23 = [v27 errorWithDomain:? code:? userInfo:?];
    goto LABEL_19;
  }

LABEL_14:
  objc_autoreleasePoolPop(v10);
  sub_10001ED88();
}

void sub_100195D04()
{
  sub_1000F8B6C();
  v1 = v0;
  v3 = v2;
  v5 = *(v4 + 32);
  v6 = objc_autoreleasePoolPush();
  if (!v1)
  {
    goto LABEL_74;
  }

  if (!v5)
  {
    v97[0] = NSLocalizedDescriptionKey;
    v61 = @"No device manager configured";
LABEL_80:
    v100[0] = v61;
    [NSDictionary dictionaryWithObjects:v100 forKeys:v97 count:1];
    v62 = sub_1000F8B44();
LABEL_82:
    v63 = [v62 errorWithDomain:? code:? userInfo:?];
    v56 = 0;
    goto LABEL_87;
  }

  if (!*(v5 + 8936))
  {
    v97[0] = NSLocalizedDescriptionKey;
    v61 = @"No auto-join manager configured";
    goto LABEL_80;
  }

  if (!v3)
  {
    v97[0] = NSLocalizedDescriptionKey;
    v100[0] = @"No scan parameters specified";
    [NSDictionary dictionaryWithObjects:v100 forKeys:v97 count:1];
    v62 = sub_1000F8B44();
    goto LABEL_82;
  }

  v7 = *(v5 + 9040);
  v78 = v3;
  if (v7)
  {
    CWFErrorDescription();
    sub_1000305C4();
    CWFErrorWithDescription();
    sub_100021504();
    sub_10001ECA0();
    v8();
    _Block_release(*(v5 + 9040));
    *(v5 + 9040) = 0;
  }

  if (_os_feature_enabled_impl())
  {
    v9 = sub_10001D430(*(v5 + 6872));
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: prefer 6E enabled %d", "__WiFiDeviceManagerUnifiedAutoJoinScanForNetworks", v9 == 0}];
    }

    v7 = v9 == 0;
    objc_autoreleasePoolPop(v10);
    [*(v5 + 8936) setMaxCompatibilityEnabled:v7];
    v3 = v78;
  }

  *(v5 + 3915) = 0;
  *(v5 + 9040) = _Block_copy(v1);

  *(v5 + 9048) = [v3 copy];
  v76 = +[NSMutableDictionary dictionary];
  v92 = 0;
  v11 = sub_1000083D0();
  HIDWORD(v82) = sub_1000E6A7C(v11, v12);
  v13 = sub_1000E6D08(v5, &v92);
  if (*(v5 + 7152) && *(v5 + 5267) && *(v5 + 5264) >= 0xFu && (*(v5 + 7153) & 4) != 0)
  {
    v59 = objc_autoreleasePoolPush();
    v60 = sub_1000F8B2C();
    if (v60)
    {
      [v60 WFLog:4 message:"AJScan: Disallowing 6Ghz channels due to Active 5GHz MIS session"];
    }

    objc_autoreleasePoolPop(v7);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v71 = v6;
  v69 = v5;
  if ([v3 channels])
  {
    v15 = +[NSMutableArray array];
  }

  else
  {
    v15 = 0;
  }

  v73 = v1;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = [v3 channels];
  v16 = [obj countByEnumeratingWithState:&v88 objects:v100 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v89;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v89 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v88 + 1) + 8 * i);
        if ((!HIDWORD(v82) || ([*(*(&v88 + 1) + 8 * i) is2GHz] & 1) == 0) && (!v13 || (objc_msgSend(v21, "is5GHz") & 1) == 0) && ((v14 & 1) != 0 || (objc_msgSend(v21, "is6GHz") & 1) == 0))
        {
          if (!v18)
          {
            v18 = +[NSMutableArray array];
          }

          [v15 addObject:v21];
          v98[0] = @"CHANNEL";
          [v21 channel];
          v22 = [sub_10001158C() numberWithUnsignedInteger:?];
          v98[1] = @"CHANNEL_FLAGS";
          v99[0] = v22;
          v99[1] = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v21 flags]);
          [NSDictionary dictionaryWithObjects:v99 forKeys:v98 count:2];
          [sub_100029EF8() addObject:?];
        }
      }

      v17 = [obj countByEnumeratingWithState:&v88 objects:v100 count:16];
    }

    while (v17);
  }

  else
  {
    v18 = 0;
  }

  v23 = v5;
  [*(v5 + 9048) setChannels:v15];
  v6 = v71;
  if (![v18 count] && v92 == 5)
  {
    *(v5 + 3915) = 1;
    v24 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{" %s: ajScanRejectedInAWDLRealTime:%d ", "__WiFiDeviceManagerUnifiedAutoJoinScanForNetworks", *(v5 + 3915)}];
    }

    objc_autoreleasePoolPop(v24);
  }

  if ([v18 count])
  {
    [v76 setObject:v18 forKeyedSubscript:@"SCAN_CHANNELS"];
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v25 = [v78 SSIDList];
    v26 = [v25 countByEnumeratingWithState:&v84 objects:v97 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = 0;
      v29 = *v85;
      do
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v85 != v29)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v84 + 1) + 8 * j);
          if (!v28)
          {
            v28 = +[NSMutableArray array];
          }

          v95 = @"SSID_STR";
          v96 = v31;
          [NSDictionary dictionaryWithObjects:&v96 forKeys:&v95 count:1];
          v32 = [sub_10001D1D0() addObject:?];
        }

        v27 = sub_1000F8BB4(v32, v33, &v84, v97);
      }

      while (v27);
    }

    else
    {
      v28 = 0;
    }

    if ([v28 count])
    {
      v93 = @"SSID_STR";
      v94 = &stru_1002680F8;
      [NSDictionary dictionaryWithObjects:&v94 forKeys:&v93 count:1];
      [sub_10001D1D0() addObject:?];
    }

    v34 = v76;
    [v76 setObject:v28 forKeyedSubscript:@"SCAN_SSID_LIST"];
    [v76 setObject:objc_msgSend(v78 forKeyedSubscript:{"SSID"), @"SSID_STR"}];
    [v76 setObject:objc_msgSend(v78 forKeyedSubscript:{"BSSID"), @"BSSID"}];
    if ([v78 shortSSID])
    {
      [sub_1000F8A24() shortSSID];
      v35 = [sub_100021488() numberWithUnsignedInteger:?];
    }

    else
    {
      v35 = 0;
    }

    [v76 setObject:v35 forKeyedSubscript:@"SCAN_SHORT_SSID"];
    [sub_1000F8A24() scanType];
    [v76 setObject:objc_msgSend(sub_100021488() forKeyedSubscript:{"numberWithUnsignedInt:"), @"SCAN_TYPE"}];
    [sub_1000F8A24() BSSType];
    [v76 setObject:objc_msgSend(sub_100021488() forKeyedSubscript:{"numberWithUnsignedInt:"), @"SCAN_BSS_TYPE"}];
    [sub_1000F8A24() PHYMode];
    [v76 setObject:objc_msgSend(sub_100021488() forKeyedSubscript:{"numberWithUnsignedInt:"), @"SCAN_PHY_MODE"}];
    [sub_1000F8A24() restTime];
    [v76 setObject:objc_msgSend(sub_100021488() forKeyedSubscript:{"numberWithUnsignedInteger:"), @"SCAN_REST_TIME"}];
    [sub_1000F8A24() dwellTime];
    [v76 setObject:objc_msgSend(sub_100021488() forKeyedSubscript:{"numberWithUnsignedInteger:"), @"SCAN_DWELL_TIME"}];
    [sub_1000F8A24() mergeScanResults];
    [v76 setObject:objc_msgSend(sub_100021488() forKeyedSubscript:{"numberWithBool:"), @"SCAN_MERGE"}];
    if ([v78 numberOfScans])
    {
      [sub_1000F8A24() numberOfScans];
      v36 = [sub_100021488() numberWithUnsignedInteger:?];
    }

    else
    {
      v36 = &off_1002818D8;
    }

    [v76 setObject:v36 forKeyedSubscript:@"SCAN_NUM_SCANS"];
    if ([v78 acceptableCacheAge] == -1)
    {
      [v76 setObject:&__kCFBooleanTrue forKeyedSubscript:@"CacheOnly"];
      v37 = &off_1002818F0;
    }

    else
    {
      v37 = [@"SSID_STR" numberWithDouble:{objc_msgSend(sub_1000F8A24(), "acceptableCacheAge") / 1000.0}];
    }

    [v76 setObject:v37 forKeyedSubscript:@"SCAN_MAXAGE"];
    [sub_1000F8A24() scanFlags];
    [v76 setObject:objc_msgSend(sub_100021488() forKeyedSubscript:{"numberWithUnsignedInt:"), @"SCAN_FLAGS"}];
    if ([v78 scanType] != 3 && objc_msgSend(v78, "acceptableCacheAge") != -1)
    {
      v38 = *(v69 + 9024);
      if ([objc_msgSend(*(v69 + 9048) "channels")] + v38 >= 7)
      {
        v65 = [*(v69 + 9016) UUIDString];
        [NSString stringWithFormat:@"%@/%@"];
        v39 = sub_100021488();
        sub_1000F8B9C(v39, v40, v41, v42, v43, v44, v45, v46, @"AutoJoin", v65, v67, v69, v71, v73, HIDWORD(v73), v76, v78, obj, v82, v84, *(&v84 + 1), v85, *(&v85 + 1), v86, *(&v86 + 1), v87, *(&v87 + 1));
        v66 = [*(v23 + 9016) UUIDString];
        [NSString stringWithFormat:@"%@/%@"];
        v47 = sub_100021488();
        sub_1000F8D50(v47, v48, v49, v50, v51, v52, v53, v54, @"AutoJoin", v66, v68, v70, v72, v74, v75, v77, v79, obja, v83, v84, *(&v84 + 1), v85, *(&v85 + 1), v86, *(&v86 + 1), v87, *(&v87 + 1));
      }
    }

    v55 = sub_1000075BC();
    v56 = v55;
    if (v55)
    {
      *v55 = v23;
      v55[1] = 0;
      v55[3] = 0;
      if ([v28 count])
      {
        v57 = 21;
      }

      else
      {
        v57 = 20;
      }

      v58 = sub_100006F88(*(v23 + 64));
      if (!sub_100025FF8(v23, v58, v34, 10, sub_1000F74E8, v56, 0, v57))
      {
        goto LABEL_74;
      }

      sub_100021D58();
      CWFErrorDescription();
      sub_100021D58();
    }

    else
    {
      CWFErrorDescription();
      sub_100021488();
    }

    v63 = CWFErrorWithDescription();
  }

  else
  {
    CWFErrorDescription();
    sub_100021488();
    v63 = CWFErrorWithDescription();
    v56 = 0;
  }

LABEL_87:
  if (v63)
  {
    if (v56)
    {
      free(v56);
    }

    sub_10001ECA0();
    v64();
  }

LABEL_74:
  objc_autoreleasePoolPop(v6);
  sub_1000F8B84();
}

void sub_1001966E8(uint64_t a1, void *a2, const void *a3)
{
  v5 = *(a1 + 32);
  v6 = objc_autoreleasePoolPush();
  v7 = v6;
  if (!a3)
  {
    goto LABEL_22;
  }

  if (!v5)
  {
    *&v29 = NSLocalizedDescriptionKey;
    v23 = @"No device manager configured";
LABEL_25:
    v28[0] = v23;
    [NSDictionary dictionaryWithObjects:v28 forKeys:&v29 count:1];
    v24 = sub_100024F70();
    goto LABEL_27;
  }

  if (!*(v5 + 8936))
  {
    *&v29 = NSLocalizedDescriptionKey;
    v23 = @"No auto-join manager configured";
    goto LABEL_25;
  }

  if (a2)
  {
    v27 = v6;
    if (*(v5 + 9056))
    {
      CWFErrorDescription();
      sub_10001158C();
      CWFErrorWithDescription();
      sub_10001ECA0();
      v8();
      _Block_release(*(v5 + 9056));
      *(v5 + 9056) = 0;
    }

    *(v5 + 9056) = _Block_copy(a3);

    *(v5 + 9064) = [a2 copy];
    v9 = +[NSMutableDictionary dictionary];
    [v9 setObject:&off_100281878 forKeyedSubscript:@"GAS_PROTOCOL"];
    [v9 setObject:objc_msgSend(a2 forKeyedSubscript:{"ANQPElementIDList"), @"GAS_QUERY"}];
    v10 = +[NSMutableArray array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = [a2 scanResults];
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if ([*(*(&v29 + 1) + 8 * i) scanRecord])
          {
            [sub_10001158C() addObject:?];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v29 objects:v28 count:16];
      }

      while (v13);
    }

    v16 = sub_10005894C(v10);
    if (v16 && ((v17 = v16, [sub_10001153C() setObject:? forKeyedSubscript:?], objc_msgSend(a2, "acceptableCacheAge") == -1) ? (objc_msgSend(v9, "setObject:forKeyedSubscript:", &__kCFBooleanTrue, @"CacheOnly"), v18 = &off_1002818F0) : (v18 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", objc_msgSend(a2, "acceptableCacheAge") / 1000.0)), objc_msgSend(v9, "setObject:forKeyedSubscript:", v18, @"SCAN_MAXAGE"), CFRelease(v17), (v19 = malloc_type_malloc(0x18uLL, 0xA00402214FCE6uLL)) != 0))
    {
      v20 = v19;
      v19[1] = 0;
      v19[2] = 0;
      *v19 = v5;
      v21 = *(v5 + 64);
      v22 = sub_100006F88(v21);
      v7 = v27;
      if (!sub_1000635DC(v21, v22, v9, 10, sub_1000F7850, v20))
      {
        goto LABEL_22;
      }

      sub_10000DAB4();
      CWFErrorDescription();
      sub_10000DAB4();
      v25 = CWFErrorWithDescription();
    }

    else
    {
      CWFErrorDescription();
      sub_10000757C();
      v25 = CWFErrorWithDescription();
      v20 = 0;
      v7 = v27;
    }

    goto LABEL_31;
  }

  *&v29 = NSLocalizedDescriptionKey;
  v28[0] = @"No ANQP parameters specified";
  [NSDictionary dictionaryWithObjects:v28 forKeys:&v29 count:1];
  v24 = sub_1000F89DC();
LABEL_27:
  v25 = [v24 errorWithDomain:? code:? userInfo:?];
  v20 = 0;
LABEL_31:
  if (v25)
  {
    if (v20)
    {
      free(v20);
    }

    sub_1000F8AE8();
    sub_10001ECA0();
    v26();
  }

LABEL_22:
  objc_autoreleasePoolPop(v7);
}

void sub_10019712C()
{
  sub_1000951B4();
  v1 = v0;
  v3 = v2;
  v5 = *(v4 + 32);
  v8 = objc_autoreleasePoolPush();
  if (v1)
  {
    if (!v5 || !*(v5 + 8936))
    {
      sub_1000F89FC(NSDictionary, v6, v7);
      [sub_100024F70() errorWithDomain:? code:? userInfo:?];
      goto LABEL_25;
    }

    if (![+[WiFiUserInteractionMonitor isSetupCompleted] sharedInstance]
    {
      sub_1000F89FC(NSDictionary, v9, v10);
      v18 = sub_100024F70();
LABEL_42:
      [v18 errorWithDomain:? code:? userInfo:?];
      goto LABEL_25;
    }

    if (!*(v5 + 6884) || sub_100064A78(*(v5 + 64)) || *(v5 + 5267))
    {
LABEL_41:
      sub_1000F89FC(NSDictionary, v9, v10);
      v18 = sub_1000F89DC();
      goto LABEL_42;
    }

    if (*(v5 + 7104))
    {
      v19 = @"AutoHotspot disabled via flags (0x%X)";
    }

    else
    {
      if (sub_1000D7904(v5))
      {
        goto LABEL_17;
      }

      if ((_os_feature_enabled_impl() & 1) != 0 || CFAbsoluteTimeGetCurrent() - *(v5 + 7032) > 15.0)
      {
        v11 = *(v5 + 6880);
        if (_os_feature_enabled_impl())
        {
          if ([+[WiFiUserInteractionMonitor isPersonalHotspotRecommendationAllowed] sharedInstance]
          {
LABEL_17:
            if ([+[WiFiUserInteractionMonitor isAnyCallInProgress] sharedInstance]
            {
              goto LABEL_41;
            }

            v12 = *(v5 + 3336);
            if (v12 == 12 || (v12 - 17) <= 3 || *(v5 + 6976))
            {
              goto LABEL_41;
            }

            if (v3 == 68 || (v13 = *(v5 + 64), v14 = sub_100006F88(v13), (v15 = sub_1000078F4(v13, v14)) == 0))
            {
              if ((_os_feature_enabled_impl() & 1) != 0 || CFAbsoluteTimeGetCurrent() - *(v5 + 7024) > 180.0)
              {
                goto LABEL_25;
              }

              v19 = @"AutoHotspot triggered within %d seconds of previous browse attempt";
              goto LABEL_40;
            }

            v20 = v15;
            sub_10000A878(v15);
            [NSString stringWithFormat:@"Already associated to %@"];
            [NSError errorWithDomain:NSPOSIXErrorDomain code:37 userInfo:sub_1000F89FC(NSDictionary, v21, v22)];
            CFRelease(v20);
LABEL_25:
            v16 = sub_100021504();
            v17(v16);
            goto LABEL_26;
          }
        }

        else if (v11)
        {
          goto LABEL_17;
        }

        if (*(v5 + 6884) == 1)
        {
          goto LABEL_41;
        }

        goto LABEL_17;
      }

      v19 = @"AutoHotspot triggered within %d seconds of previous link down";
    }

LABEL_40:
    [NSString stringWithFormat:v19];
    goto LABEL_41;
  }

LABEL_26:
  objc_autoreleasePoolPop(v8);
  sub_10001ED88();
}

void sub_1001976D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v12 = objc_autoreleasePoolPush();
  if (a3)
  {
    if (!v5 || !*(v5 + 8936))
    {
      sub_1000F8A30(NSDictionary, v6, v7, v8, v9, v10, v11);
      v46 = sub_100024F70();
      goto LABEL_42;
    }

    if (!a2)
    {
      sub_1000F8A30(NSDictionary, v6, v7, v8, v9, v10, v11);
      v46 = sub_1000F89DC();
      goto LABEL_42;
    }

    Count = CFArrayGetCount(*(v5 + 6992));
    v14 = CFArrayGetCount(*(v5 + 7000));
    v15 = CFArrayGetCount(*(v5 + 7008));
    v16 = [*(v5 + 7016) count];
    if (Count >= 1)
    {
      v17 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 6992), v17);
        if (sub_1000F8B50(ValueAtIndex))
        {
          goto LABEL_41;
        }
      }

      while (Count != ++v17);
    }

    if (v16 >= 1)
    {
      for (i = v16 + 1; i >= 2; --i)
      {
        v26 = [*(v5 + 7016) objectAtIndexedSubscript:i - 2];
        if (v26 && (v27 = v26, [v26 hotspotDevice]) && (+[NSDate date](NSDate, "date"), objc_msgSend(v27, "lastNotifiedAt"), objc_msgSend(sub_100029EF8(), "timeIntervalSinceDate:"), v28 <= 1800.0))
        {
          if (sub_1000F8B50([v27 hotspotDevice]))
          {
            sub_1000F8A30(NSDictionary, v29, v30, v31, v32, v33, v34);
            [sub_1000F89DC() errorWithDomain:? code:? userInfo:?];
            goto LABEL_43;
          }
        }

        else
        {
          [*(v5 + 7016) removeObjectAtIndex:i - 2];
        }
      }
    }

    if (v14 >= 1)
    {
      v35 = 0;
      while (1)
      {
        v36 = CFArrayGetValueAtIndex(*(v5 + 7000), v35);
        if (sub_1000F8B50(v36))
        {
          break;
        }

        if (v14 == ++v35)
        {
          goto LABEL_23;
        }
      }

      v43 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Hotspot blacklisted: Peer declined \n", "__WiFiDeviceManagerUnifiedAutoJoinAllowHotspot"}];
      }

      goto LABEL_40;
    }

LABEL_23:
    if (v15)
    {
      v37 = [*(v5 + 6824) getHotspotDeviceName:a2];
      if (v15 >= 1)
      {
        v38 = v37;
        while (1)
        {
          v39 = CFArrayGetValueAtIndex(*(v5 + 7008), 0);
          if (v39)
          {
            v40 = v39;
            v41 = sub_10000A878(v39);
            if (CFEqual(v38, v41))
            {
              break;
            }
          }

          sub_1000950C4();
          if (v42)
          {
            goto LABEL_30;
          }
        }

        v44 = sub_10000A540(v40, @"lastDisconnectTimestampKey");
        if (!v44 || (v45 = v44, sub_10009EA74(v40)))
        {
          v43 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v51 = "__WiFiDeviceManagerUnifiedAutoJoinAllowHotspot";
            v52 = sub_10000A878(v40);
            sub_100026290();
          }

LABEL_40:
          objc_autoreleasePoolPop(v43);
LABEL_41:
          sub_1000F8A30(NSDictionary, v19, v20, v21, v22, v23, v24, v51, v52);
          v46 = sub_1000F89DC();
LABEL_42:
          [v46 errorWithDomain:? code:? userInfo:?];
LABEL_43:
          v47 = sub_100021504();
          v48(v47);
          goto LABEL_44;
        }

        Current = CFAbsoluteTimeGetCurrent();
        if (Current - CFDateGetAbsoluteTime(v45) < 3600.0)
        {
          v50 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: Hotspot denylisted due to Deauth on %@\n", "__WiFiDeviceManagerUnifiedAutoJoinAllowHotspot", v45}];
          }

          objc_autoreleasePoolPop(v50);
          [NSString stringWithFormat:@"Hotspot deauthed/disconnected within past %d seconds", 3600];
          goto LABEL_41;
        }

        CFArrayRemoveValueAtIndex(*(v5 + 7008), 0);
      }
    }

LABEL_30:
    if ([*(v5 + 6824) isHotspotDeviceSupportADHS:a2])
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

LABEL_44:
  objc_autoreleasePoolPop(v12);
}

void sub_100197C58()
{
  sub_100024B78();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = *(v8 + 32);
  v12 = objc_autoreleasePoolPush();
  if (v1)
  {
    if (!v9 || !*(v9 + 8936) || !*(v9 + 6824))
    {
      sub_1000F89FC(NSDictionary, v10, v11);
      if (![sub_100024F70() errorWithDomain:? code:? userInfo:?])
      {
        goto LABEL_15;
      }

      v14 = sub_10001143C();
      goto LABEL_10;
    }

    if (CFAbsoluteTimeGetCurrent() - *(v9 + 6928) <= v5 && [*(v9 + 6920) count])
    {
      v13 = [*(v9 + 6920) copy];
      v14 = sub_10001143C();
      v17 = 0;
LABEL_11:
      v16(v14, v17, v15);
      goto LABEL_15;
    }

    if (v3)
    {
      v14 = sub_10001143C();
      v17 = 0;
LABEL_10:
      v15 = 0;
      goto LABEL_11;
    }

    v18 = *(v9 + 8976);
    if (v18)
    {
      CWFErrorDescription();
      sub_10001158C();
      v19 = CWFErrorWithDescription();
      (*(v18 + 16))(v18, v19, 0);
      _Block_release(*(v9 + 8976));
    }

    *(v9 + 8976) = _Block_copy(v1);
    CFArrayRemoveAllValues(*(v9 + 6920));
    dispatch_time(0, 1000000000 * v7);
    sub_100015EB8();
    sub_10002CF5C();
    dispatch_source_set_timer(v20, v21, v22, v23);
    *(v9 + 3336) = 16;
    [*(v9 + 6824) startBrowsing];
    *(v9 + 7040) = CFAbsoluteTimeGetCurrent();
    ++*(v9 + 6236);
  }

LABEL_15:
  objc_autoreleasePoolPop(v12);
  sub_10006AD5C();
}

void sub_100197EA0()
{
  sub_100024B78();
  v1 = v0;
  v3 = v2;
  v5 = *(v4 + 32);
  v8 = objc_autoreleasePoolPush();
  if (!v1)
  {
    goto LABEL_10;
  }

  if (v5 && *(v5 + 8936))
  {
    if (!sub_100064A78(*(v5 + 64)) && !*(v5 + 5267) && v3)
    {
      v11 = *(v5 + 8968);
      if (v11)
      {
        _Block_release(v11);
      }

      *(v5 + 8968) = _Block_copy(v1);
      *(v5 + 8960) = v3;
      CFArrayRemoveAllValues(*(v5 + 6920));
      CFArrayAppendValue(*(v5 + 6920), v3);
      *(v5 + 6968) = 2;
      *(v5 + 6960) = 0x300000002;
      *(v5 + 7048) = 0;
      *(v5 + 3336) = sub_1000E596C(v5);
      goto LABEL_10;
    }

    sub_1000F89FC(NSDictionary, v9, v10);
    v12 = sub_1000F89DC();
  }

  else
  {
    sub_1000F89FC(NSDictionary, v6, v7);
    v12 = sub_100024F70();
  }

  if ([v12 errorWithDomain:? code:? userInfo:?])
  {
    v13 = sub_10001143C();
    v14(v13);
  }

LABEL_10:
  objc_autoreleasePoolPop(v8);
  sub_10006AD5C();
}

void sub_1001980D0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = objc_autoreleasePoolPush();
  if (v7 && *(v7 + 8936))
  {
    v9 = *(v7 + 8984);
    *(v7 + 8984) = a4;
    *(v7 + 8992) = [a3 trigger];
    if (a4 != 1 || v9)
    {
      if (a4)
      {
        +[WiFiXPCManager sharedXPCManager];
        sub_100006F88(*(v7 + 64));
        [sub_10002D0C0() autoJoinUpdatedWithState:a4 interfaceName:?];
        if (a4 == 4)
        {
          [*(v7 + 6744) ingestScanResults:*(v7 + 1160) ofType:1 clientName:@"wifid" directed:0];
          v28 = sub_100011340();
          sub_1000D7FA8(v28, v29);
        }
      }

      else
      {
        v35 = [*(v7 + 8936) metric];
        [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
        if ([v35 result])
        {
          v36 = sub_1001987AC([v35 autoJoinedNetwork]);
          sub_1000ED650(v7, @"autoJoinSuccess", v36, v35);
          if (v36)
          {
            CFRelease(v36);
          }
        }

        else
        {
          if ([v35 error])
          {
            v37 = off_10025FC18;
          }

          else if ([v35 wasAlreadyAssociatedToNetwork])
          {
            v37 = off_10025FBF0;
          }

          else
          {
            v37 = off_10025FC08;
          }

          sub_1000ED650(v7, *v37, 0, v35);
        }

        if (_os_feature_enabled_impl())
        {
          v38 = 30.0;
        }

        else
        {
          v38 = 14.0;
        }

        v39 = [v35 autoJoinedNetwork];
        if (v39)
        {
          v40 = v39;
          if ([objc_msgSend(v39 "matchingKnownNetworkProfile")] == 8 && !objc_msgSend(objc_msgSend(v40, "matchingKnownNetworkProfile"), "lastJoinedBySystemAt"))
          {
            [objc_msgSend(v35 "endedAt")];
            v42 = v41;
            [objc_msgSend(v35 "startedAt")];
            if (v42 - v43 < v38)
            {
              v44 = sub_1000A2E44(v40);
              v45 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s Updating 6G standalone property after iCloud sync on %@", "__WiFiDeviceManagerUnifiedAutoJoinCheckForStandalone6G", v44}];
              }

              objc_autoreleasePoolPop(v45);
              sub_10000D80C();
              sub_100189AE8();
              if (v44)
              {
                CFRelease(v44);
              }
            }
          }
        }

        sub_100190E38();
        if (*(v7 + 3336) == 16)
        {
          v46 = sub_1000B6E20(v7, 0);
        }

        if (([a3 trigger] == 54 || objc_msgSend(a3, "trigger") == 55) && objc_msgSend(objc_msgSend(v35, "error"), "code"))
        {
          if ([objc_msgSend(v35 "error")] == 37)
          {
            v49 = objc_autoreleasePoolPush();
            v50 = sub_10006AD2C();
            if (v50)
            {
              [v50 WFLog:3 message:{"%s: SSID transition arbitrator is running, ignore duplicated steering request", "__WiFiDeviceManagerUnifiedAutoJoinStateChanged"}];
            }

            objc_autoreleasePoolPop(v35);
          }

          else
          {
            HIDWORD(v63) = 4;
            v51 = CFNumberCreate(0, kCFNumberIntType, &v63 + 4);
            v52 = CFNumberCreate(0, kCFNumberIntType, (v7 + 3900));
            sub_10001ECA0();
            sub_1000D5318(v53, v54, v55, v56, v51, v52);
            if (v51)
            {
              CFRelease(v51);
            }

            if (v52)
            {
              CFRelease(v52);
            }
          }
        }

        else
        {
          [*(v7 + 6744) ingestScanResults:*(v7 + 1160) ofType:1 clientName:@"wifid" directed:0];
          [objc_msgSend(v35 "error")];
          v47 = sub_100015EB8();
          sub_1000D7FA8(v47, v48);
        }

        [*(v7 + 3704) setScanResultsWithAutoJoinSessionCompletion:*(v7 + 1160) complete:1];
        v57 = sub_100011340();
        sub_100192190(v57, v58);
        if ([a3 trigger] == 39)
        {
          *(v7 + 6696) = 0;
        }
      }
    }

    else
    {
      v10 = *(v7 + 9016);
      if (v10)
      {
        v59 = [v10 UUIDString];
        [NSString stringWithFormat:@"%@/%@"];
        v11 = sub_10001158C();
        sub_1000F8B9C(v11, v12, v13, v14, v15, v16, v17, v18, @"AutoJoin", v59, v61, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, vars0, vars8);
        v60 = [*(v7 + 9016) UUIDString];
        [NSString stringWithFormat:@"%@/%@"];
        v19 = sub_10001158C();
        sub_1000F8D50(v19, v20, v21, v22, v23, v24, v25, v26, @"AutoJoin", v60, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, vars0, vars8);
        v27 = *(v7 + 9016);
      }

      else
      {
        v27 = 0;
      }

      *(v7 + 9024) = 0u;

      *(v7 + 9016) = [a2 copy];
      +[WiFiXPCManager sharedXPCManager];
      v30 = [sub_100010938() trigger];
      [a2 autoJoinStartedWithTrigger:v30 interfaceName:sub_100006F88(*(v7 + 64))];
      sub_10001ECA0();
      sub_1000ED650(v31, v32, v33, v34);
    }
  }

  objc_autoreleasePoolPop(v8);
}

void sub_10019859C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = objc_autoreleasePoolPush();
  v7 = 0;
  if (a2 && a3 && v5)
  {
    if (*(v5 + 8936) && *(v5 + 4584) && (v8 = sub_10000836C(), (v10 = sub_100022854(v8, v9)) != 0))
    {
      v11 = v10;
      v12 = sub_10001E7F0();
      v14 = sub_10000B3A8(v12, v13, 0);
      if (!v14)
      {
        v7 = 0;
LABEL_13:
        CFRelease(v11);
        goto LABEL_14;
      }

      v15 = v14;
      v7 = sub_10001B368(v14);
      if (v7 && (v16 = sub_1000F8AE8(), (v18 = v17(v16, v7)) != 0))
      {
        v19 = sub_100022854(v18, 0);
        if (v19)
        {
          (*(v5 + 4584))(v5, v19, *(v5 + 4592));
        }
      }

      else
      {
        v19 = 0;
      }

      CFRelease(v11);
      CFRelease(v15);
      v11 = v19;
      if (v19)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_14:

  objc_autoreleasePoolPop(v6);
}

BOOL sub_1001986B0(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = 0;
  if (a2 && *(a1 + 8936))
  {
    Mutable = *(a1 + 1168);
    if (!Mutable)
    {
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      *(a1 + 1168) = Mutable;
    }

    CFArrayRemoveAllValues(Mutable);
    CFArrayRemoveAllValues(*(a1 + 3608));
    CFArrayRemoveAllValues(*(a1 + 3616));
    [*(a1 + 3704) clearScanResultsForAutoJoinSessionReset];
    CFArrayAppendValue(*(a1 + 1168), a2);
    sub_1000E8A6C(a1);
    v3 = CFArrayGetCount(*(a1 + 3616)) > 0 || CFArrayGetCount(*(a1 + 3608)) > 0 || !CFArrayGetCount(*(a1 + 1168));
    CFArrayRemoveAllValues(*(a1 + 3608));
    CFArrayRemoveAllValues(*(a1 + 3616));
    [*(a1 + 3704) clearScanResultsForAutoJoinSessionReset];
    CFArrayRemoveAllValues(*(a1 + 1168));
  }

  return v3;
}

_WORD *sub_1001987AC(_WORD *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    v3 = [a1 matchingKnownNetworkProfile];
    if (!v3)
    {
      goto LABEL_9;
    }

    v4 = v3;
    a1 = [a1 scanRecord];
    if (!a1)
    {
      goto LABEL_8;
    }

    [v4 properties];
    v5 = sub_100015EB8();
    v7 = sub_100022854(v5, v6);
    if (!v7)
    {
LABEL_9:
      a1 = 0;
      goto LABEL_8;
    }

    v8 = v7;
    v9 = sub_100017C00(v7);
    if (v9)
    {
      v10 = v9;
      v11 = +[NSMutableDictionary dictionary];
      [v11 addEntriesFromDictionary:v10];
      [v11 addEntriesFromDictionary:a1];
      a1 = sub_10000AD2C(kCFAllocatorDefault, v11);
      sub_10009D854(a1, v8);
      CFRelease(v8);
      v8 = v10;
    }

    else
    {
      a1 = 0;
    }

    CFRelease(v8);
  }

LABEL_8:
  objc_autoreleasePoolPop(v2);
  return a1;
}

void sub_1001988A0(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  if (a1 && !*(a1 + 9120))
  {
    v2 = sub_100009664(*(a1 + 64));
    if (v2)
    {
      v3 = v2;
      v4 = socket(30, 2, 0);
      if ((v4 & 0x80000000) == 0)
      {
        v5 = v4;
        [v3 getCString:&v8 maxLength:16 encoding:4];
        if (!ioctl(v5, 0xC0206911uLL, &v8) && (v9 & 1) != 0)
        {
          *(a1 + 9120) = 1;
          sub_100189040(a1);
          v6 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: interface went up, starting auto-join", "__WiFiDeviceManagerUpdateInterfaceFlags"}];
          }

          objc_autoreleasePoolPop(v6);
          sub_100019814(a1, 0x26uLL);
        }

        close(v5);
      }
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: null ifName", "__WiFiDeviceManagerUpdateInterfaceFlags"}];
      }

      objc_autoreleasePoolPop(v7);
    }
  }
}

void sub_100198A84()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to create slowWiFi.displayTimer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198AE4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to create dps.displayTimer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198B44()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to create bssBlacklist.expiryTimer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198BA4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create autoHotspotLockStateTimer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198C04()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create autoHotspotScanTimer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198C64()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create assocStateMonitor.timer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198CC4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create carPlayLpcStats.timer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198D24()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create carPlayPowerSaveDeferral.timer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198D84()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create carPlayLinkDownCtx.timer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198DE4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create carPlayHidEventCtx.timer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198E44()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create _24GHzInfraNetworkData.timer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198EA4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create priorityLinkSetupPhase.timer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198F04()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create mis.misBroadcastToHiddenTimer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198F64()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create mis.misIdleTimer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198FC4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create autoJoinDeferral.timer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199030()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create retry.timer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019909C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to allocate CRSAppHistoryController", "__WiFiDeviceManagerDonateCarPlayLinkMetricsToCarEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001990FC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: CRSAppHistoryController is unavailable.", "__WiFiDeviceManagerDonateCarPlayLinkMetricsToCarEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019915C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to allocate inAnalyticsValues", "__WiFiDeviceManagerDonateCarPlayLinkMetricsToCarEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001991BC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null awdlIfname.", "__WiFiDeviceManagerInitializeAwdlState"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199228()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: AWDL is not supported on the device.", "__WiFiDeviceManagerInitializeAwdlState"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199294()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, roamManager is NULL", "__WiFiDeviceManagerRoamScanStartEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199300()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, WiFiDeviceManagerRef is NULL", "__WiFiDeviceManagerRoamScanStartEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019936C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, roamManager is NULL", "__WiFiDeviceManagerRoamScanEndEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001993D8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, WiFiDeviceManagerRef is NULL", "__WiFiDeviceManagerRoamScanEndEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199444()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, roamManager is NULL", "__WiFiDeviceManagerRoamPrepEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001994F8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: resetTriggerInfo allocation failed!", "WiFiDeviceManagerResetChip"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199564()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager->device is NULL", "WiFiDeviceManagerResetChip"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001995D0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "WiFiDeviceManagerResetChip"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019963C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null queue.", "__WiFiDeviceManagerWiFiPrimaryInfCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001996A8(uint64_t *a1, void ***a2, uint64_t a3, const void *a4)
{
  v5 = sub_10000843C(a1, a2);
  sub_1000F8BFC(COERCE_DOUBLE(3221225472), v5, v6);
  v7[2] = sub_1000F13B4;
  v7[3] = &unk_10025EFD8;
  v7[4] = v9;
  v7[5] = v8;
  dispatch_async(v10, v7);
  _Block_object_dispose(a4, 8);
}

void sub_100199704(double a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: skipping update, interval since last update (%f)", "__WiFiDeviceManagerUpdateLocalNetworkDiscoveredDevices", *&a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100199774()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: nil profile", "__WiFiDeviceManagerUpdateLocalNetworkDiscoveredDevices"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001997D4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: network is null", "__WiFiDeviceManagerWiFiPrimaryInfCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199840()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is null", "__WiFiDeviceManagerWiFiPrimaryInfCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

BOOL sub_1001998AC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, BSSID is NULL", "__WiFiLQAMgrTrigDiscEventCallback"}];
  }

  objc_autoreleasePoolPop(v2);
  return a1 == 0;
}

void sub_100199918()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, Device IfName is NULL", "__WiFiLQAMgrTrigDiscEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199984()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, Device Manager is NULL", "__WiFiLQAMgrTrigDiscEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001999F0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, leakyAPStatsVersionRef is NULL", "__WiFiDeviceManagerLeakyAPEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199A5C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL !", "__WiFiDeviceManagerLeakyAPEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199AC8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: LQA manager is NULL !", "__WiFiDeviceManagerActiveProbeQueryCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199B34()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL !", "__WiFiDeviceManagerActiveProbeQueryCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199BA0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deviceManagerRef is NULL!", "__WiFiDeviceManagerSymptomsEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199C0C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: txFailHistoryData is NULL!", "__WiFiDeviceManagerTxFailEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199C78()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deviceManagerRef is NULL!", "__WiFiDeviceManagerTxFailEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199CE4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s dict for roam status is nil", "__WiFiDeviceManagerProcessRoamStatusSubState"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199D44()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, roamManager is NULL", "__WiFiDeviceManagerRoamStatusEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199DA4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: dict[%@] is NULL!", "__WiFiDeviceManagerRoamStatusEventCallback", @"ROAMEDEVENT_STATUS"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199E18()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: dict is NULL!", "__WiFiDeviceManagerRoamStatusEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199E84()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: device is NULL!", "__WiFiDeviceManagerRoamStatusEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199EF0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deviceManagerRef is NULL!", "__WiFiDeviceManagerRoamStatusEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199F5C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null afMetric", "__WiFiDeviceManagerActionFrameEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199FC8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: currentNetwork is NULL!", "__WiFiDeviceManagerActionFrameEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A034()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deviceManagerRef is NULL!", "__WiFiDeviceManagerActionFrameEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A0A0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: AJMetrics is NULL!", "__WiFiDeviceManagerQueryAJMetricsCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A10C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deviceManagerRef is NULL!", "__WiFiDeviceManagerQueryAJMetricsCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A178()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: LPHSMetrics is NULL!", "__WiFiDeviceManagerQueryLPHSMetricsCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A1E4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deviceManagerRef is NULL!", "__WiFiDeviceManagerQueryLPHSMetricsCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A250()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, curNetwork is NULL", "__WiFiDeviceManagerHandleSlowWiFiEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A2B0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: SlowWiFi reason not found", "__WiFiDeviceManagerHandleSlowWiFiEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A310()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, SlowWiFi recovery not enabled", "__WiFiDeviceManagerHandleSlowWiFiEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A370()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, isRecoveryEnabled key not found", "__WiFiDeviceManagerHandleSlowWiFiEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A3D0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, isBadAP key not found", "__WiFiDeviceManagerHandleSlowWiFiEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A43C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, Device IfName is NULL", "__WiFiDeviceManagerHandleSlowWiFiEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A4A8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, Device Manager is NULL", "__WiFiDeviceManagerHandleSlowWiFiEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A514()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Current network is NULL. Not handling the BSS pruned event", "__WiFiDeviceManagerHandleBssPrunedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A580()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Pruned event received when BssBlacklisting is not supported! Bailing", "__WiFiDeviceManagerHandleBssPrunedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A5EC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s dict is NULL", "__WiFiDeviceManagerHandleBssPrunedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A658()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s manager is NULL", "__WiFiDeviceManagerHandleBssPrunedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A6C4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s manager is NULL", "__WiFiDeviceManagerHandleTrafficInfoEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A730()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Status is not successful", "__WiFiDeviceManagerProcessBeaconCacheUpdatedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A79C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s beaconScanCache alloc cache failed", "__WiFiDeviceManagerProcessBeaconCacheUpdatedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A808()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Not enough channels", "__WiFiDeviceManagerProcessBeaconCacheUpdatedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A874()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s statusNum nil", "__WiFiDeviceManagerProcessBeaconCacheUpdatedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A8E0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s chanNum nil", "__WiFiDeviceManagerProcessBeaconCacheUpdatedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A94C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s currentNetwork nil", "__WiFiDeviceManagerProcessBeaconCacheUpdatedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A9B8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s eventData nil", "__WiFiDeviceManagerProcessBeaconCacheUpdatedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019AA24()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s manager nil", "__WiFiDeviceManagerProcessBeaconCacheUpdatedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019AA90()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager", "__WiFiDeviceManagerProcessSupportedChannelInfoChangedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019AAFC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: outAccount is NULL!", "__WiFiDeviceManagerRequestForNextMatchingHS20AccountCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019AB68()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: inNetwork is NULL!", "__WiFiDeviceManagerRequestForNextMatchingHS20AccountCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019ABD4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL!", "__WiFiDeviceManagerRequestForNextMatchingHS20AccountCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019AC40()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: numRef is NULL", "__WiFiDeviceManagerRoamNotificationCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019ACA0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: bssidDataRef is NULL", "__WiFiDeviceManagerRoamNotificationCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019AD00()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: bssidInfo is NULL", "__WiFiDeviceManagerRoamNotificationCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019AD60()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL", "__WiFiDeviceManagerRoamNotificationCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019ADCC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager", "__WiFiDeviceManagerConfigureForXCTests"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019AE38()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL", "__WiFiDeviceManagerChipResetRequestedCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019AEA4(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to get LPC stats", "__WiFiDeviceManagerGetLPCStats"}];
  }

  objc_autoreleasePoolPop(v2);

  free(a1);
}

void sub_10019AF1C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to alloc string", "__WiFiDeviceManagerGetLPCStats"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019AF88()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to alloc buf", "__WiFiDeviceManagerGetLPCStats"}];
  }

  objc_autoreleasePoolPop(v0);
}

double sub_10019AFF4()
{
  sub_10001131C();
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Device in Lock state over %d minutes but is being used", "__WiFiDeviceManagerAutoHotspotLockStateTimeoutCallback", *(v1 + 5448) / 0x3Cu}];
  }

  objc_autoreleasePoolPop(v2);
  dispatch_time(0, 1000000000 * *(v1 + 5448));
  sub_10000D800();
  sub_10002CF5C();
  dispatch_source_set_timer(v3, v4, v5, v6);
  Current = CFAbsoluteTimeGetCurrent();
  LODWORD(v8) = *(v1 + 5448);
  result = Current + v8;
  *v0 = result;
  return result;
}

void sub_10019B0A8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null device manager", "__WiFiDeviceManagerGetUserAutoJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B114(uint64_t a1, int a2)
{
  *(a1 + 6536) = a2;
  *(a1 + 6544) = [*(a1 + 6824) isFamilyHotspot:?];
  sub_100146CAC((a1 + 6536));
  sub_1000EC5CC(a1, @"userJoinAssociationFailed", 0);
}

void sub_10019B16C(id *a1)
{
  if (*a1)
  {

    *a1 = 0;
  }
}

void sub_10019B1A0(unsigned int *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s with state=%d not allowed with Unified Auto-Join", "__WiFiDeviceManagerStateMachineRun", *a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019B208(unsigned int *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"GAS Query failed with err=%d. Continuing...", *a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019B268()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"No GAS responses to filter"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B2B4(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"No provisioned HS2.0 networks found"];
  }

  objc_autoreleasePoolPop(v2);
  CFRelease(a1);
}

void sub_10019B30C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"No suitable HS2.0 networks found"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B358()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"No HS2.0 accounts"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B3A4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"GAS Query returned response count=0. Continuing..."];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B3F0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"GAS Query returned no responses. Continuing..."];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B43C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null scan.candidates.networks", "__WiFiDeviceManagerProcessGasResponses"}];
  }

  objc_autoreleasePoolPop(v0);
}

id sub_10019B49C()
{
  result = off_100298C40;
  if (off_100298C40)
  {
    return [off_100298C40 WFLog:4 message:{"%s: null manager.", "__WiFiDeviceManagerDpsHUDTimerExpiryHandler"}];
  }

  return result;
}

id sub_10019B4E8()
{
  result = off_100298C40;
  if (off_100298C40)
  {
    return [off_100298C40 WFLog:4 message:{"%s: null manager.", "__WiFiDeviceManagerSlowWiFiHUDTimerExpiryHandler"}];
  }

  return result;
}

void sub_10019B534()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: kernel event monitor already initialized.", "__WiFiDeviceManagerSetupKernelEventMonitor"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B594()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager->kernelEventSource", "__WiFiDeviceManagerSetupKernelEventMonitor"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B5F4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v1 = __error();
    strerror(*v1);
    sub_100008328();
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B65C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null misDict", "__WiFiDeviceManagerHotspotTransportTypeMetric"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B6C8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null dynamicstoreref keys", "__WiFiDeviceManagerHotspotTransportTypeMetric"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B734()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null dynamicstoreref", "__WiFiDeviceManagerHotspotTransportTypeMetric"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B7A0()
{
  sub_10000D798();
  v1 = v0;
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_100060E7C();
    sub_1000F8A68();
  }

  objc_autoreleasePoolPop(v2);
  if (v1)
  {
    _os_feature_enabled_impl();
  }

  sub_1000084B8();
}

void sub_10019B848()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: not now...", "__WiFiDeviceManagerAttemptNetworkTransition"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B8B4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: no top network found", "__WiFiDeviceManagerAttemptNetworkTransition"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B920()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: no rank sorted networks and not preferAutoJoinHomeNetwork", "__WiFiDeviceManagerAttemptNetworkTransition"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B98C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s not allowed with Unified Auto-Join", "__WiFiDeviceManagerAttemptNetworkTransition"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B9F8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "__WiFiDeviceManagerHandleSiriTimedOutNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019BA64()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "__WiFiDeviceManagerHandleApsdTimedOutNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019BAD0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "__WiFiDeviceManagerHandleAirplayConnectionStallNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019BB3C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "__WiFiDeviceManagerHandleAirplayBufferedAudioUnderrunNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019BBA8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "__WiFiDeviceManagerHandleAirplayRealtimeAudioUnderrunNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019BC14()
{
  sub_10001131C();
  v4 = *(v3 + 64);
  if (v4)
  {
    sub_100006F88(v4);
    v5 = sub_100015EB8();
    v7 = sub_100007D90(v5, v6, 1);
    v1 = v7;
    if (v7 && (v9 = sub_10001A9BC(v7)) != 0)
    {
      v2 = sub_10001B368(v1);
      if (v2)
      {
        v8 = [v9 scanResultWithMatchingKnownNetworkProfile:v2];

        v9 = v8;
      }
    }

    else
    {
      v9 = 0;
      v2 = 0;
    }
  }

  else
  {
    v9 = 0;
    sub_10002A0C4();
  }

  objc_autoreleasePoolPop(v0);

  if (v1)
  {
    CFRelease(v1);
  }

  [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
}

void sub_10019BCFC(void *context)
{
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is null", "__WiFiDeviceManagerUpdateCoreWiFiAssociatedNetwork"}];
  }

  objc_autoreleasePoolPop(context);
}

void sub_10019BD64()
{
  sub_100024B78();
  v1 = v0;
  objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_1000A4FF8(*v1);
    sub_1000A5000(*v1);
    sub_10002D39C();
  }

  sub_10006AD5C();

  objc_autoreleasePoolPop(v2);
}

void sub_10019BDF4(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: not releasing ask to join notification %@", "WiFiDeviceManagerAbort", *a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019BE68()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Power modules not attached.", "__WiFiDeviceManagerReleasePowerResource"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019BED4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "__WiFiDeviceManagerReleasePowerResource"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019BF40()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL!", "__WiFiDeviceManagerCreateDenyListInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019BFAC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null networks", "WiFiDeviceManagerSetNetworks"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C018()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Not CarPlay join\n", "__WiFiDeviceManagerSwitchMISChannelForCarPlayJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C078()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: 2.4 Ghz channel is available\n", "__WiFiDeviceManagerSwitchMISChannelForCarPlayJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C0D8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Channel (%d) is DFS channel\n", "__WiFiDeviceManagerSwitchMISChannelForCarPlayJoin", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019C13C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Channel (%d) is coex denylisted\n", "__WiFiDeviceManagerSwitchMISChannelForCarPlayJoin", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019C1A0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Failed to update softAP state, err %d", "__WiFiDeviceManagerUpdateSoftApState", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019C204()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Failed to create dict", "__WiFiDeviceManagerSwitchMISChannel"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C264(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Invalid channel (%d)\n", "__WiFiDeviceManagerSwitchMISChannelForCarPlayJoin", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019C2C8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Concurrent mode is not allowed\n", "__WiFiDeviceManagerSwitchMISChannelForCarPlayJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C328()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: 2.4 Ghz CarPlay network\n", "__WiFiDeviceManagerSwitchMISChannelForCarPlayJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C388()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: No channel inform\n", "__WiFiDeviceManagerSwitchMISChannelForCarPlayJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C3E8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Not CarPlay network\n", "__WiFiDeviceManagerSwitchMISChannelForCarPlayJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C448()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: failed to create disabledNetworks array", "WiFiDeviceManagerSetNetworks"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C4B4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: failed to create hs20 array", "WiFiDeviceManagerSetNetworks"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C520()
{
  sub_1000951B4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(v5);
    sub_1000A9B70();
  }

  objc_autoreleasePoolPop(v8);
  v9 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000AFE4(v5);
    sub_1000A9B70();
  }

  objc_autoreleasePoolPop(v9);
  if (!sub_10000AFE4(v5) || *(v7 + 5592) != 1)
  {
    v3 = 0;
  }

  *v1 = v3;
  sub_10001ED88();
}

void sub_10019C614()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: failed to create array", "WiFiDeviceManagerSetNetworks"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C680()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: netif is NULL!!!", "__WiFiDeviceManagerSetInterfaceRank"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C6EC(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: networkTypeNum is NULL", "__WiFiDeviceManagerUpdateDynamicStoreNetworkEntry"}];
  }

  objc_autoreleasePoolPop(v2);
  CFRelease(a1);
}

void sub_10019C758()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: newConfig is NULL", "__WiFiDeviceManagerUpdateDynamicStoreNetworkEntry"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C7B8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: config is NULL.", "__WiFiDeviceManagerUpdateDynamicStoreNetworkEntry"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C824()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: no matching known network", "__WiFiDeviceManagerUpdateDynamicStoreNetworkEntry"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C890()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: dynamicStoreRef is NULL", "__WiFiDeviceManagerUpdateDynamicStoreNetworkEntry"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C8FC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: netif is NULL", "__WiFiDeviceManagerUpdateDynamicStoreNetworkEntry"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C968()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL", "__WiFiDeviceManagerUpdateDynamicStoreNetworkEntry"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C9D4()
{
  sub_1000F8B6C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = 0;
  do
  {
    v7 = sub_10000DAB4();
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v8);
    if (ValueAtIndex)
    {
      v10 = ValueAtIndex;
      if (sub_10001CDD8(ValueAtIndex))
      {
        v11 = sub_10000A540(v10, @"BSSID");
        if (v11)
        {
          v12 = v11;
        }

        else
        {
          v12 = @"null-bssid!";
        }
      }

      else
      {
        v13 = sub_10000A878(v10);
        if (v13)
        {
          v12 = v13;
        }

        else
        {
          v12 = @"null-ssid!";
        }
      }

      CFStringAppend(v1, v12);
      v14 = sub_100008684();
      CFStringAppendFormat(v14, v15, @" ");
    }

    ++v6;
  }

  while (v3 != v6);
  if (v5)
  {
    v16 = sub_100008684();
    CFStringAppendFormat(v16, v17, v18);
  }

  sub_1000F8B84();
}

void sub_10019CAA8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: No Device", "WiFiDeviceManagerSetMacRandomisationFeature"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019CB14(unsigned int *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_1000AA864(*a1);
    sub_100008328();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019CB90()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: SSID is NULL!", "WiFiDeviceManagerProcessWoWBlacklistCommandsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019CBF0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: triggerReason not present", "WiFiDeviceManagerProcessWoWBlacklistCommandsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019CC5C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: kWiFiNetworkProblematicStateEntryReasonData fail", "__WiFiDeviceManagerCopyWoWDenyListProblemList"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019CCBC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: kWiFiNetworkProblematicStateEntryReason fail", "__WiFiDeviceManagerCopyWoWDenyListProblemList"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019CD1C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: kWiFiNetworkProblematicStateEntryTimestamp fail", "__WiFiDeviceManagerCopyWoWDenyListProblemList"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019CD7C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: problematicEntry fail", "__WiFiDeviceManagerCopyWoWDenyListProblemList"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019CDDC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: SSID is NULL!", "WiFiDeviceManagerProcessWoWBlacklistCommandsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019CE48()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: numref is NULL!", "WiFiDeviceManagerProcessWoWBlacklistCommandsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019CEB4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL!", "WiFiDeviceManagerProcessWoWBlacklistCommandsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019CF20()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: networkDenyListTimestamps is NULL", "__WiFiDeviceManagerCopyWoWDenyListingHistory"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019CF80()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: networkDenyListedNetworks is NULL", "__WiFiDeviceManagerCopyWoWDenyListingHistory"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019CFEC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL!", "__WiFiDeviceManagerCopyWoWDenyListingHistory"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D058()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: denyListHistory is NULL", "__WiFiDeviceManagerCopyWoWDenyListingHistory"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D0C4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: numRef is NULL", "__WiFiDeviceManagerWoWBlacklistCopyThresholds"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D124(uint64_t a1, uint64_t a2, const void *a3)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: keyStrRefBssid is NULL", "__WiFiDeviceManagerWoWBlacklistCopyThresholds"}];
  }

  objc_autoreleasePoolPop(v4);
  CFRelease(a3);
}

void sub_10019D190()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: keyStrRefSsid is NULL", "__WiFiDeviceManagerWoWBlacklistCopyThresholds"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D1F0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: perBSSIDInfo is NULL", "__WiFiDeviceManagerWoWBlacklistCopyThresholds"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D25C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: perSSIDInfo is NULL", "__WiFiDeviceManagerWoWBlacklistCopyThresholds"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D2C8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: response is NULL", "__WiFiDeviceManagerWoWBlacklistCopyThresholds"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D334()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "__WiFiDeviceManagerWoWBlacklistCopyThresholds"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D3A0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: network is NULL!", "__WiFiDeviceManagerCopyMatchingMergedNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D40C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL!", "__WiFiDeviceManagerCopyMatchingMergedNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D478()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null ifName.", "WiFiDeviceManagerSetCellularCarrierName"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D4E4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null carrierName.", "WiFiDeviceManagerSetCellularCarrierName"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D550()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager.", "WiFiDeviceManagerSetCellularCarrierName"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D5BC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager.", "WiFiDeviceManagerSetForegroundAppBundleId"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D628()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "WiFiDeviceManagerSetSoftAPNANCocurrencyPreferredBand"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D694()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: metric is null", "WiFiDeviceManagerSubmitMloPrefBandSwitchMetric"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D700()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: metric is null", "WiFiDeviceManagerSubmitObssMitTransitionMetric"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D76C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Not able to submit setup metric __WiFiDeviceManagerCopyCurrentCoreWiFiScanResult returned NULL", "WiFiDeviceManagerSubmitObssMitTransitionMetric"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D7D8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: metric is null", "WiFiDeviceManagerSubmitObssMitMetric"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D844()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Not able to submit setup metric __WiFiDeviceManagerCopyCurrentCoreWiFiScanResult returned NULL", "WiFiDeviceManagerSubmitObssMitMetric"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D8B0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: rssi is 0", "__WiFiDeviceManagerCheckLQAMgrAllowNetworkForAutoJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D91C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"No valid manager ref"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D974()
{
  sub_10000FDC0();
  v3 = v2;
  sub_100008C40();
  v5 = sub_10000A540(v4, @"SSID");
  v6 = *(v1 + 3824);
  if (v5 != v6)
  {
    v7 = v5;
    if (v5 && v6)
    {
      if ([v5 isEqual:?])
      {
        goto LABEL_9;
      }

      v6 = *(v1 + 3824);
    }

    if (v6)
    {
      CFRelease(v6);
      *(v1 + 3824) = 0;
    }

    *(v1 + 3824) = [v7 copy];
    *(v1 + 3832) = 0;
  }

LABEL_9:
  v8 = sub_10014FED8();
  v9 = sub_100011580();
  v11 = sub_10000B3A8(v9, v10, 0);
  if (v11)
  {
    v12 = v11;
    if (v3 && CFArrayGetCount(v3) >= 1)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = objc_autoreleasePoolPush();
        v17 = sub_10001EDAC();
        ValueAtIndex = CFArrayGetValueAtIndex(v17, v18);
        v20 = sub_10001A9BC(ValueAtIndex);
        if ([v20 SSID] == *(v1 + 3824) || objc_msgSend(v20, "SSID") && *(v1 + 3824) && objc_msgSend(objc_msgSend(v20, "SSID"), "isEqual:", *(v1 + 3824)))
        {
          v21 = [objc_msgSend(v20 "channel")];
          v13 |= v21 == 3;
          v15 |= v21 != 3;
        }

        objc_autoreleasePoolPop(v16);
        ++v14;
      }

      while (v14 < CFArrayGetCount(v3));
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    if (v8 && CFArrayGetCount(v8) >= 1)
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = objc_autoreleasePoolPush();
        v25 = CFArrayGetValueAtIndex(v8, v23);
        v26 = sub_10001A9BC(v25);
        if ([v26 SSID] == *(v1 + 3824) || objc_msgSend(v26, "SSID") && *(v1 + 3824) && objc_msgSend(objc_msgSend(v26, "SSID"), "isEqual:", *(v1 + 3824)))
        {
          v27 = [objc_msgSend(v26 "channel")];
          v13 |= v27 == 3;
          v22 |= v27 != 3;
        }

        objc_autoreleasePoolPop(v24);
        ++v23;
      }

      while (v23 < CFArrayGetCount(v8));
    }

    else
    {
      v22 = 0;
    }

    v28 = v13 & ((v15 | v22) ^ 1);
    v29 = sub_10000DAB4();
    if ((v28 ^ (sub_10000A540(v29, v30) == kCFBooleanTrue)))
    {
      v31 = v28 & 1;
      ++*(v1 + 3832);
      v32 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"Tracking changed standalone6G (%d --> %d) for known network %@, counter=%d/%d"}];
      }

      objc_autoreleasePoolPop(v32);
      if (*(v1 + 3832) > 2u)
      {
        *(v1 + 3832) = 0;
        v33 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:"Updating standalone6G (%d --> %d) for known network %@"];
        }

        objc_autoreleasePoolPop(v33);
        [NSNumber numberWithBool:v31];
        v34 = sub_10000DAB4();
        sub_10000AD34(v34, v35, v36);
        v37 = sub_10001E7C0();
        sub_1000C5B3C(v37, v38);
      }
    }

    else
    {
      *(v1 + 3832) = 0;
    }

    CFRelease(v12);
  }

  CFRelease(v0);
  if (v8)
  {
    sub_100008690();

    CFRelease(v39);
  }

  else
  {
    sub_100008690();
  }
}

void sub_10019DCD0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null network", "__WiFiDeviceManagerUpdateNetworkAsync"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019DD3C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null queue", "__WiFiDeviceManagerUpdateNetworkAsync"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019DDA8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null updateNetwork callback", "__WiFiDeviceManagerUpdateNetworkAsync"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019DE14()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager", "__WiFiDeviceManagerUpdateNetworkAsync"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019DE80()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: new and current passwords are equal", "WiFiDeviceManagerSetMisPassword"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019DEEC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: values alloc failure", "__WiFiDeviceManagerCheckAndSubmitAPInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_10019DF4C(char a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: keys alloc failure", "__WiFiDeviceManagerCheckAndSubmitAPInfo"}];
  }

  objc_autoreleasePoolPop(v2);
  return a1 & 1;
}

void sub_10019DFB4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Error initiating scan request: %d", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019E01C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null scanData", "WiFiDeviceManagerClientScanCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019E088()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: network is NULL!", "__WiFiDeviceManagerIsNetworkAutoJoinDelayed"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019E0E8(unsigned __int16 *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_100014038(*a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019E158(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019E1C8(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019E238(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019E2A8(void *context, const void *a2)
{
  if (off_100298C40)
  {
    sub_10000A878(a2);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(context);
}

void sub_10019E308()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: not considering delayed auto-join due to MIS", "__WiFiDeviceManagerIsNetworkAutoJoinDelayed"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019E37C(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019E3F8(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019E468()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"CFDictionaryRef soft_EAPClientConfigurationCopyAndImport(CFDictionaryRef)"];
  v0 = dlerror();
  [sub_1000F8B44() handleFailureInFunction:v0 file:? lineNumber:? description:?];
  __break(1u);
}

void sub_10019E4D4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: isEAP8021XAvailable() indicated the function doesn't exist. Soft link failed. EAP8021X deps missing.", "WiFiDeviceManagerFixAndIngestShareableNetworkIfNecessary"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019E540()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: user auto-join is disabled.", "__WiFiDeviceManagerDelayedAutoJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019E5AC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null queue.", "__WiFiDeviceManagerClientAssociateCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019E60C(uint64_t *a1, void ***a2, uint64_t a3, const void *a4)
{
  v5 = sub_10000843C(a1, a2);
  sub_1000F8BFC(COERCE_DOUBLE(3221225472), v5, v6);
  *(v7 + 16) = sub_1000ED99C;
  *(v7 + 24) = &unk_100261A00;
  *(v7 + 32) = v9;
  *(v7 + 40) = v8;
  *(v7 + 48) = 0;
  dispatch_async(v10, v7);
  _Block_object_dispose(a4, 8);
}

void sub_10019E66C()
{
  sub_1000951B4();
  sub_100011560();
  *(v2 + 6680) = sub_100189234(v2, v3);
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(v1);
    sub_1000A9B58();
  }

  objc_autoreleasePoolPop(v4);
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(v1);
    sub_10000A878(*v0);
    sub_100026290();
  }

  objc_autoreleasePoolPop(v5);
  +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
  sub_10000A878(v1);
  sub_10000A878(*v0);
  +[NSDate date];
  [sub_10002A0A0() updateNetwork:? switchedFrom:? at:?];
  sub_10001ED88();
}

void sub_10019E774(unsigned int *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: PM assertion already acquired with ID:%d", "__WiFiDeviceManagerAcquireWakeAssertionForAutoJoin", *a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019E7E8()
{
  sub_100094FF0();
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: bad args: manager %p network %p", "__WiFiDeviceManagerAcquireWakeAssertionForAutoJoin", v0, v1}];
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_10019E864(const void **a1, void *a2)
{
  v3 = *a1;
  if (v3)
  {
    CFRelease(v3);
  }

  free(a2);
  sub_10001ECA0();

  return sub_10005B904(v4, v5, v6, v7);
}

void sub_10019E8C4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"MIGRATION:%s: SoftAP failed to start", "WiFiDeviceManagerStartWiFiDirectGroup"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019E924()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null hostAPDictionary", "WiFiDeviceManagerStartWiFiDirectGroup"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019E990()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null request", "WiFiDeviceManagerStartWiFiDirectGroup"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019E9FC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null startData", "WiFiDeviceManagerStartWiFiDirectGroup"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019EA68()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: unable to start AWDL due to concurrency.", "__WiFiDeviceManagerRequestAwdlBringup"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019EAD4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: error bringing up AWDL (=%d)", "WiFiDeviceManagerStartAwdl", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019EB44()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null queue.", "WiFiDeviceManagerStartAwdl"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019EBB0()
{
  sub_1000F8C20();
  v5 = *v4;
  if (v5)
  {
    CFRelease(v5);
    *v3 = 0;
  }

  if (*v2)
  {
    CFRelease(*v2);
    *v2 = 0;
  }

  if (*v1)
  {
    CFRelease(*v1);
    *v1 = 0;
  }

  free(v0);
}

void sub_10019EC1C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: unable to start AWDL due to concurrency.", "WiFiDeviceManagerStartAwdl"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019EC88(unsigned int *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: AWDL is already started in Assisted Discovery. Follow Mode not allowed. Refcount=%d", "WiFiDeviceManagerStartAwdl", *a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019ECFC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: unable to start AWDL in follow mode, VoIP Call Active.", "WiFiDeviceManagerStartAwdl"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019ED68(unsigned int *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: unable to start AWDL, thermal index (%d) is below disabled threshold (%d).", "WiFiDeviceManagerStartAwdl", *a1, 0}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019EDE0()
{
  sub_100011560();
  v3 = v2;
  ++*v2;
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: AWDL refCount is now [%d].", "WiFiDeviceManagerStartAwdl", *v3}];
  }

  objc_autoreleasePoolPop(v4);
  if (*v3 == 1)
  {
    v5 = *(v1 + 5504);
    if (v5)
    {
    }

    *(v1 + 5504) = sub_10000D83C("WiFiDeviceManagerStartAwdl");
  }

  *v0 = 0;
}

void sub_10019EE8C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null blacklistedChannels", "WiFiDeviceManagerIsChannelCoexBlacklisted"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019EEF8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null deviceManager", "WiFiDeviceManagerIsChannelCoexBlacklisted"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019EF64()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: invalid channel %d", "WiFiDeviceManagerIsChannelCoexBlacklisted", 0}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019EFD0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: No HS2.0 accounts", "__WiFiDeviceManagerFindMergeHS20Account"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019F03C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager", "__WiFiDeviceManagerFindMergeHS20Account"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019F0A8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: thermal index unchanged (%d).", "WiFiDeviceManagerSetThermalIndex", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019F118()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "WiFiDeviceManagerSetThermalIndex"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019F30C(unsigned int *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s dictRef for %d is NULL", "__WiFiDeviceManagerDebugSimulateUCM", *a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019F374()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s request is NULL", "__WiFiDeviceManagerDebugSimulateUCM"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019F3D4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s manager is NULL", "__WiFiDeviceManagerDebugSimulateUCM"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019F434(unsigned int *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s dictRef for %d is NULL", "__WiFiDeviceManagerDebugSimulateBSP", *a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019F49C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s request is NULL", "__WiFiDeviceManagerDebugSimulateBSP"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019F4FC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s manager is NULL", "__WiFiDeviceManagerDebugSimulateBSP"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019F55C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s request is NULL", "__WiFiDeviceManagerDebugPH"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019F5BC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s manager is NULL", "__WiFiDeviceManagerDebugPH"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019F61C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s kWiFiDebugCommandValueDict is NULL", "__WiFiDeviceManagerDebugSimulateWiFiAssistOverrideCondition"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019F67C(uint64_t a1, CFDictionaryRef theDict, int *a3)
{
  if (!a1)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s manager is NULL", "__WiFiDeviceManagerDebugRoamMgr", v20}];
    }

    goto LABEL_8;
  }

  if (!theDict)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s request is NULL", "__WiFiDeviceManagerDebugRoamMgr", v20}];
    }

    goto LABEL_8;
  }

  Value = CFDictionaryGetValue(theDict, @"DebugCommand");
  if (Value)
  {
    valuePtr = -1431655766;
    if (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
    {
      v6 = valuePtr;
      v7 = objc_autoreleasePoolPush();
      if (v6)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: Unknown debug command %d", "__WiFiDeviceManagerDebugRoamMgr", valuePtr}];
        }

LABEL_8:
        v8 = -3900;
LABEL_16:
        objc_autoreleasePoolPop(v7);
        goto LABEL_17;
      }

      v9 = +[WiFiRoamManager sharedWiFiRoamManager];
      if (v9)
      {
        v10 = v9;
        v11 = [(__CFDictionary *)theDict valueForKey:@"DebugCommandValueDict"];
        if (v11)
        {
          v12 = v11;
          [objc_msgSend(v11 valueForKey:{@"minLinkUpWaitSec", "doubleValue"}];
          v14 = v13;
          [objc_msgSend(v12 valueForKey:{@"minRetryWaitSec", "doubleValue"}];
          v16 = v15;
          [objc_msgSend(v12 valueForKey:{@"maxRetriesSec", "integerValue"}];
          [objc_msgSend(v12 valueForKey:{@"windowSizeSec", "doubleValue"}];
          v18 = v17;
          [v10 setParamMinRoamWaitTimeFromLinkUpInSec:v14];
          [v10 setParamMinRoamRetryWaitTime:v16];
          [sub_10001153C() setParamMaxRoamRetriesInWindow:?];
          [v10 setParamWindowSizeInSec:v18];
          v19 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [v10 paramMinRoamWaitTimeFromLinkUpInSec];
            [v10 paramMinRoamRetryWaitTime];
            [v10 paramMaxRoamRetriesInWindow];
            [v10 paramWindowSizeInSec];
            sub_1000A9B58();
          }

          v8 = 0;
          goto LABEL_15;
        }

        v19 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s kWiFiDebugCommandValueDict is NULL", "__WiFiDeviceManagerDebugRoamMgr"}];
        }
      }

      else
      {
        v19 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s WiFiRoamManager is NULL", "__WiFiDeviceManagerDebugRoamMgr"}];
        }
      }

      v8 = -3900;
LABEL_15:
      objc_autoreleasePoolPop(v19);
      goto LABEL_16;
    }
  }

  v8 = -3900;
LABEL_17:
  *a3 = v8;
}

void sub_10019F94C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s DebugCmdBTSCOEnable no value", "__WiFiDeviceManagerDebugAutoJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019F9AC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s DebugCmdAutoJoinBTSCODisable no value", "__WiFiDeviceManagerDebugAutoJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019FA0C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s DebugCmdBTA2DPEnable no value", "__WiFiDeviceManagerDebugAutoJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019FA6C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s DebugCmdAutoJoinDrivingCarPlay no value", "__WiFiDeviceManagerDebugAutoJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019FACC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s DebugCmdAutoJoinDrivingRssiThres valRef is NULL", "__WiFiDeviceManagerDebugAutoJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019FB2C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s DebugCmdDisable24GhzAJScanDuringBTAndDriving no value", "__WiFiDeviceManagerDebugAutoJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019FB8C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s request is NULL", "__WiFiDeviceManagerDebugAutoJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019FBEC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s manager is NULL", "__WiFiDeviceManagerDebugAutoJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019FC4C()
{
  sub_100011560();
  Value = CFDictionaryGetValue(v1, @"DebugCommandValueDict");
  if (Value && sub_1000F8D38(Value))
  {
    *(v0 + 132) = 0;
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s Using Debug Value for AutoJoinUnreliableNwRssiThres = %d", "__WiFiDeviceManagerDebugAutoJoin", 0}];
    }

    v4 = 0;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s DebugCmdAutoJoinUnreliableNwRssiThres valRef is NULL", "__WiFiDeviceManagerDebugAutoJoin"}];
    }

    v4 = -3900;
  }

  sub_1000F8D20(v4);
}

void sub_10019FD14()
{
  sub_100011560();
  Value = CFDictionaryGetValue(v1, @"DebugCommandValueDict");
  if (Value && sub_1000F8D38(Value))
  {
    *(v0 + 136) = 0;
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s Using Debug Value for AutoJoinPnoRssiThres = %d", "__WiFiDeviceManagerDebugAutoJoin", 0}];
    }

    v4 = 0;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s DebugCmdAutoJoinPnoRssiThres valRef is NULL", "__WiFiDeviceManagerDebugAutoJoin"}];
    }

    v4 = -3900;
  }

  sub_1000F8D20(v4);
}

void sub_10019FDDC()
{
  sub_100011560();
  Value = CFDictionaryGetValue(v1, @"DebugCommandValueDict");
  if (Value && sub_1000F8D38(Value))
  {
    *(v0 + 140) = 0;
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s Using Debug Value for AutoJoinDrivingRssiThres = %d", "__WiFiDeviceManagerDebugAutoJoin", 0}];
    }

    v4 = 0;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s DebugCmdAutoJoinDrivingRssiThres valRef is NULL", "__WiFiDeviceManagerDebugAutoJoin"}];
    }

    v4 = -3900;
  }

  sub_1000F8D20(v4);
}

void sub_10019FEA4()
{
  sub_100011560();
  Value = CFDictionaryGetValue(v1, @"DebugCommandValueDict");
  if (Value && sub_1000F8D38(Value))
  {
    *(v0 + 144) = 0;
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s Using Debug Value for DebugCmdTopNetworksRankLimit = %d", "__WiFiDeviceManagerDebugAutoJoin", 0}];
    }

    v4 = 0;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s DebugCmdTopNetworksRankLimit valRef is NULL", "__WiFiDeviceManagerDebugAutoJoin"}];
    }

    v4 = -3900;
  }

  sub_1000F8D20(v4);
}

void sub_10019FF6C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null deviceManager", "WiFiDeviceManagerSetScanBackoffReport"}];
  }

  objc_autoreleasePoolPop(v0);
}

id sub_10019FFD8()
{
  result = off_100298C40;
  if (off_100298C40)
  {
    return [off_100298C40 WFLog:3 message:{"%s: NULL Device Manager!", "WiFiDeviceManagerSetWoWBlacklistThresholds"}];
  }

  return result;
}

void sub_1001A0024()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null wakeReason.", "__WiFiDeviceManagerSystemWokenForAutoUnlock"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0090()
{
  sub_10001131C();
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: system is going to sleep. Tearing down hosted AWDL session.", "WiFiDeviceManagerSetSystemPMState"}];
  }

  objc_autoreleasePoolPop(v2);
  v3 = v0[688];
  if (v3)
  {
  }

  v0[688] = 0;
  v4 = *v1;

  CFSetApplyFunction(v4, &sub_1000D0774, v0);
}

void sub_1001A0134()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "__WiFiDeviceManagerHostedAwdlSessionTearDownApplier"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A01A0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null appWiFiUsageState", "WiFiDeviceManagerSetAppNetworkUsageState"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A020C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null deviceManager", "WiFiDeviceManagerSetAppNetworkUsageState"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0278()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null deviceManager", "WiFiDeviceManagerSetMotionState"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A02E4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: roamTriggerRssiRef create failed", "__WiFiDeviceManagerSetAppRoamPolicy"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0344()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null deviceManager", "WiFiDeviceManagerSetSmartCoverState"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A03B0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null deviceManager", "WiFiDeviceManagerSetDeviceOrientation"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A041C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s - interface is NULL!", "__WiFiDeviceManagerTdConfirmedCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0488()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s - Manager is NULL!", "__WiFiDeviceManagerTdConfirmedCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A04F4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "WiFiDeviceManagerSetNANOffHeadConnectionExpiry"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0560()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deviceManager is NULL!", "WiFiDeviceManagerGetNANOffHeadConnectionExpiry"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A070C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: link throughput measurement already started.", "__WiFiDeviceManagerPerformThroughputMeasurement"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0778()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: PM assertion Network NULL.", "__WiFiDeviceManagerReleaseWakeAssertionForAutoJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A07E4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: PM assertion not held.", "__WiFiDeviceManagerReleaseWakeAssertionForAutoJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0850(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: bad args: manager %p network %p", "__WiFiDeviceManagerReleaseWakeAssertionForAutoJoin", 0, a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A08C4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Error: %s: policy dict has NULL values", "WiFiDeviceManagerSetAppPolicy"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0930()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Error: %s: device manager or policy dict is NULL", "WiFiDeviceManagerSetAppPolicy"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A099C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: numProbesRef is NULL !", "__WiFiDeviceManagerTriggerActiveProbe"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A09FC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL !", "__WiFiDeviceManagerTriggerActiveProbe"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0A68()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s; failed to create dictionary", "WiFiDeviceManagerSetDeviceInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0AC8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: iosVersion is NULL", "WiFiDeviceManagerSetDeviceInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0B34()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: productType is NULL", "WiFiDeviceManagerSetDeviceInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0BFC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Error initiating association request: %d", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A0C58(const void **a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(*a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A0CD4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null scanData", "WiFiDeviceManagerUserForcedAssociation"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0D40()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network.", "WiFiDeviceManagerUserForcedAssociation"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0DAC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "WiFiDeviceManagerUserForcedAssociation"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0E18()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: network is NULL", "__WiFiDeviceManagerUserForcedAssociationScanCallback"}];
  }

  objc_autoreleasePoolPop(v0);
  v1 = sub_100008684();

  sub_1000D4A10(v1, v2, 1);
}

void sub_1001A0E94()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null scanData", "__WiFiDeviceManagerUserForcedAssociationScanCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0F00(const void **a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(*a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A1098()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network.", "WiFiDeviceManagerAddNetworkScan"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A1104()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "WiFiDeviceManagerAddNetworkScan"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A1170()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null scanData", "__WiFiDeviceManagerAddNetworkScanCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A11DC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: wifi is off", "WiFiDeviceManagerNoNetworksFoundNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A1248()
{
  sub_10001131C();
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: associated, not reporting no network soft-error", "WiFiDeviceManagerNoNetworksFoundNotification"}];
  }

  objc_autoreleasePoolPop(v2);
  objc_autoreleasePoolPop(v1);

  CFRelease(v0);
}

void sub_1001A12D0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: EAP is not idle, not reporting no network soft-error", "WiFiDeviceManagerNoNetworksFoundNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A133C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: no known networks at this location, not reporting no network soft-error", "WiFiDeviceManagerNoNetworksFoundNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A13A8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deviceManager is NULL!", "WiFiDeviceManagerNoNetworksFoundNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A1414()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: bssidDataRef is NULL", "WiFiDeviceManagerSetRoam"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A1474()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: bssidStrRef is NULL", "WiFiDeviceManagerSetRoam"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A14E0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: bssidInfo allocation failed!", "WiFiDeviceManagerSetRoam"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A154C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager->device is NULL", "WiFiDeviceManagerSetRoam"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A15B8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "WiFiDeviceManagerSetRoam"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A1624()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager->device is NULL", "WiFiDeviceManagerTriggerCoreCapture"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A1690()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "WiFiDeviceManagerTriggerCoreCapture"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A16FC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deviceManager is NULL!", "WiFiDeviceManagerGetCurrentRssi"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A1768()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: called with improper arguments!", "WiFiDeviceManagerFilterForKnownNetworksInScanResults"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A17D4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null device manager", "WiFiDeviceManagerSetUserAutoJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A1840()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deviceManager is NULL!", "__WiFiDeviceManagerUserAutoJoinPreferenceChangedNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A18AC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is nil", "WiFiDeviceManagerDispatchSimulatedJoinRecommendationNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

id sub_1001A1918(const void *a1, uint64_t a2)
{
  result = sub_10000A878(a1);
  v4 = *(a2 + 3336);
  if (result)
  {
    result = [*(a2 + 6776) dispatchNotificationWithRandomMAC:result];
  }

  *(a2 + 3336) = v4;
  return result;
}

void sub_1001A1954()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is nil", "WiFiDeviceManagerDispatchSimulatedRandomMACNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A19C0(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A1A3C(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A1AAC(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A1B1C(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A1B8C(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A1C08(const void *a1, const void *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a2);
    sub_1000F8A68();
  }

  objc_autoreleasePoolPop(v4);

  CFRelease(a1);
}

void sub_1001A1C90(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A1D0C(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A1D88(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A1E04(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A1E80()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s requires manager and interface name args", "WiFiDeviceManagerDestroyEAPTrustExceptionsForCurrentNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A1EEC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Error: %s: device manager is NULL", "WiFiDeviceManagerLQMConfig"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A1F58()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Error: %s: device manager is NULL", "WiFiDeviceManagerCoalesceUndispatchedLQMEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A1FC4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Error: %s: dictCopy is NULL", "WiFiDeviceManagerCopyCoalescedUndispatchedLQMEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2030()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Error: %s: device manager is NULL", "WiFiDeviceManagerCopyCoalescedUndispatchedLQMEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A209C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Error: %s: device manager is NULL", "WiFiDeviceManagerResetCoalescedUndispatchedLQMEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2108()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : NULL Manager", "WiFiDeviceManagerHandleChangedPowerBudgetValue"}];
  }

  objc_autoreleasePoolPop(v0);
  v1 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : NULL Manager", "WiFiDeviceManagerHandleChangedPowerBudgetValue"}];
  }

  objc_autoreleasePoolPop(v1);
}

void sub_1001A21A8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: autoHotspotMode is not set", "WiFiDeviceManagerStartAutoInstantHotspotAssociation"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2214()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "WiFiDeviceManagerStartAutoInstantHotspotAssociation"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2280()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Pending Notification. Not queuing another.", "__WiFiDeviceManagerProcessAutoHotspotJoinRecommendedFromScanResults"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A22E0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: not interactive. Suppressing ATJ action", "__WiFiDeviceManagerDetermineNextAction"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2340()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: ask to join not allowed due to user interaction state", "__WiFiDeviceManagerDetermineAskToJoinActionFromScanResults"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A23A0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: ask to join action (%d) not allowed due to user interaction state", "__WiFiDeviceManagerDetermineAskToJoinActionFromScanResults", 0}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2400()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: scanResults is empty", "__WiFiDeviceManagerDetermineAskToJoinActionFromScanResults"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2460()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: scanResults is null", "__WiFiDeviceManagerDetermineAskToJoinActionFromScanResults"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A24C0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: ask-to-join is set to off", "__WiFiDeviceManagerDetermineAskToJoinActionFromScanResults"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2520()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Not prompting ATJ"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A256C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: scan results do not qualify for ask to join", "__WiFiDeviceManagerDetermineNextAction"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A25CC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: ask-to-join is set to off", "__WiFiDeviceManagerDetermineNextAction"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A262C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Not prompting ATJ, due to user disabled auto join"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2678()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Not prompting ATJ, driving"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A26C4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Not prompting ATJ, still driving"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2710()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Not prompting ATJ, running"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A275C(unsigned int *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Not prompting ATJ, auto-join scan suppressed due to reason=%d", *a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A27BC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: not prompting ATJ action (%d), condition not fulfilled", "__WiFiDeviceManagerDetermineNextAction", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A2820(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_1000F8A68();
  }

  objc_autoreleasePoolPop(v2);
  CFRelease(a1);
}

void sub_1001A2898(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: New Peer List alloc failed.", "WiFiDeviceManagerGetInterfaceDataUsage"}];
  }

  objc_autoreleasePoolPop(v2);

  CFRelease(a1);
}

void sub_1001A2910()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null ifUsageRef. Nothing to update.", "WiFiDeviceManagerGetInterfaceDataUsage"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A297C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null ifName.", "WiFiDeviceManagerGetInterfaceDataUsage"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A29E8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null mutableIfStatsArrayRef.", "WiFiDeviceManagerGetInterfaceDataUsage"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2A54()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager.", "WiFiDeviceManagerGetInterfaceDataUsage"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2AC0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null wifidevice manager", "WiFiDeviceManagerResetAvailabilityEngine"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2B2C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s couldn't convert record to network", "WiFiDeviceManagerProcessBssBlacklistCommandsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2B8C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s - Couldn't perform BSS unblacklist", "WiFiDeviceManagerProcessBssBlacklistCommandsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2BEC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s - Couldn't perform time triggered BSS unblacklist", "WiFiDeviceManagerProcessBssBlacklistCommandsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2C4C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s - Couldn't find network to set blacklist condition", "WiFiDeviceManagerProcessBssBlacklistCommandsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

id sub_1001A2CAC()
{
  sub_10001131C();
  result = off_100298C40;
  if (off_100298C40)
  {
    result = [off_100298C40 WFLog:3 message:{"%s - Couldn't determine blacklist condition to set", "WiFiDeviceManagerProcessBssBlacklistCommandsAndCopyResponse"}];
  }

  *v0 = v1;
  return result;
}

void sub_1001A2D04()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: BssBlacklist not supported on this platform.. Bailing!", "WiFiDeviceManagerProcessBssBlacklistCommandsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2D64()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s with no command", "WiFiDeviceManagerProcessBssBlacklistCommandsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2DC4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: request is NULL!", "WiFiDeviceManagerProcessBssBlacklistCommandsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2E30()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL!", "WiFiDeviceManagerProcessBssBlacklistCommandsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2E9C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager", "WiFiDeviceManagerSetSymptomsCellOutrankRecommendation"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2F08()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s:cannot allocate regulatoryInfoRef", "__WiFiDeviceManagerSendBSPRegulatoryInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2F68()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s cannot create countryCodeRef", "__WiFiDeviceManagerSendBSPRegulatoryInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2FC8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s manager is NULL", "WiFiDeviceManagerProcessBSPCommand"}];
  }

  objc_autoreleasePoolPop(v0);
}

id sub_1001A3034()
{
  sub_10001131C();
  v3 = sub_100025AB8(v2);
  v4 = sub_1000C905C(v1);
  v5 = *(v1 + 3470);
  v6 = sub_100025A5C(v1);
  return [v0 WFLog:3 message:{"Rejecting sensing: AWDLEnabled:%d AssistedDiscHostedNetwork:%d RealTimeMode:%d MISScanBlocked:%d AutoJoinBusy:%d\n", v3, v4, v5, v6, sub_100025B90(v1)}];
}

void sub_1001A3288(uint64_t a1)
{
  v2 = *(a1 + 3784);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 3784) = 0;
  }

  v3 = *(a1 + 3800);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 3800) = 0;
  }

  *(a1 + 3792) = 0;
}

void sub_1001A32CC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Beacon cache was empty", "WiFiDeviceManagerAttemptToShowColocatedJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A3338()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiDeviceManagerRef is NULL", "WiFiDeviceManagerAttemptToShowColocatedJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A33A4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiNetworkRef returned NULL", "WiFiDeviceManagerAttemptToShowColocatedJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A3410()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Beacon cache was empty", "__WiFiDeviceManagerCopyDeviceScanCache"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A347C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: CFArrayCreateMutable() returned NULL", "__WiFiDeviceManagerCopyDeviceScanCache"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A34E8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiDeviceManagerRef is NULL", "__WiFiDeviceManagerCopyDeviceScanCache"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A3554()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"suppressing limited compatibility modal as setup is not complete"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A35AC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_1000591D8(0xDu);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A3620()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to create additionalInformation", "__WiFiDeviceManagerShowColocatedJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A3680()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: current network name is null", "__WiFiDeviceManagerShowColocatedJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A36EC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: candidate manager is nil", "__WiFiDeviceManagerShowColocatedJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A3758()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: current network is null", "__WiFiDeviceManagerShowColocatedJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A37C4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null device manager", "__WiFiDeviceManagerShowColocatedJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A3830(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: scanning for %@", "WiFiDeviceManagerDispatchSimulatedColocatedJoinNotification", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A391C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: device is not connected to a network", "WiFiDeviceManagerDispatchSimulatedColocatedJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A3988()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "WiFiDeviceManagerDispatchSimulatedColocatedJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A39F4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: __WiFiDeviceManagerCopyCurrentCoreWiFiScanResult() returned NULL", "__WiFiDeviceManagerSimulatedColocatedJoinNotificationScanCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A3A60()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: scan results were empty", "__WiFiDeviceManagerSimulatedColocatedJoinNotificationScanCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A3ACC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is null", "__WiFiDeviceManagerSimulatedColocatedJoinNotificationScanCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A3B38()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: app name is null", "WiFiDeviceManagerDispatchAppJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A3BA4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: network name is null", "WiFiDeviceManagerDispatchAppJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A3C10()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null device manager", "WiFiDeviceManagerDispatchAppJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A3C7C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: metric is null", "WiFiDeviceManagerSubmitSetupMetric"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A3CE8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Not able to submit setup metric __WiFiDeviceManagerCopyCurrentCoreWiFiNetworkProfile returned NULL", "WiFiDeviceManagerSubmitSetupMetric"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A3D54()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Not able to submit setup metric __WiFiDeviceManagerCopyCurrentCoreWiFiScanResult returned NULL", "WiFiDeviceManagerSubmitSetupMetric"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A3DC0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: User has already set up device", "WiFiDeviceManagerSubmitSetupMetric"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A3E2C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to retrieve password for %@", "__WiFiDeviceManagerProcessColocatedJoinNotification", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A3E9C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to  %@", "__WiFiDeviceManagerProcessColocatedJoinNotification", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A3F0C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: no matching profile for %@", "__WiFiDeviceManagerProcessColocatedJoinNotification", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A3F7C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: no SSID in additional information", "__WiFiDeviceManagerProcessColocatedJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A3FE8(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_100008328();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A4064()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: metric is null", "__WiFiDeviceManagerProcessColocatedJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A40D0(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to get password for %@", "__WiFiDeviceManagerColocatedJoinAssociationCallback", *a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A4144()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"Could not create WiFiNetworkRef from scan result"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A419C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null config.", "WiFiDeviceManagerSetBackgroundScanConfiguration"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A4208()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null interfaceName.", "WiFiDeviceManagerSetBackgroundScanConfiguration"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A4274()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "WiFiDeviceManagerSetBackgroundScanConfiguration"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A42E0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "WiFiDeviceManagerCopyBackgroundScanConfiguration"}];
  }

  objc_autoreleasePoolPop(v0);
}

id sub_1001A434C()
{
  sub_1000F8A5C();
  *v1 = NSLocalizedDescriptionKey;
  *v2 = @"No scan parameters specified";
  sub_1000F8AD0(NSDictionary, v2, v3, v4);
  result = [sub_100029DCC() errorWithDomain:? code:? userInfo:?];
  *v0 = result;
  return result;
}

id sub_1001A43C0()
{
  sub_1000F8A5C();
  *v1 = NSLocalizedDescriptionKey;
  *v2 = @"No jittdImpactEstimator configured";
  sub_1000F8AD0(NSDictionary, v2, v3, v4);
  result = [sub_100029DCC() errorWithDomain:? code:? userInfo:?];
  *v0 = result;
  return result;
}

id sub_1001A4434()
{
  sub_1000F8A5C();
  *v1 = NSLocalizedDescriptionKey;
  *v2 = @"No device manager configured";
  sub_1000F8AD0(NSDictionary, v2, v3, v4);
  result = [sub_100029DCC() errorWithDomain:? code:? userInfo:?];
  *v0 = result;
  return result;
}

void sub_1001A44A8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Invalid ref con"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A4500()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null originTimeNum", "__WiFiDeviceManagerManageMissingPasswordList"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A4560()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null ssid", "__WiFiDeviceManagerManageMissingPasswordList"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A45CC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null networksMissingPassword", "__WiFiDeviceManagerManageMissingPasswordList"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A4638()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "__WiFiDeviceManagerManageMissingPasswordList"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A46A4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager", "__WiFiDeviceManagerManageMissingPasswordList"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A4710()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: NULL manager", "__WiFiDeviceManagerIsMIS5GhzEnabled"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A477C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: no known BSS for this network. Learning environment.", "__WiFiDeviceManagerEvaluateAPEnvironment"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A47E8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"Null LQA manager\n"];
  }

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1001A4840(uint64_t a1)
{
  result = sub_10018A684(a1);
  if (result && *(a1 + 5267) && *(a1 + 5264) >= 0xFu)
  {
    v3 = sub_10000D7B8();

    return sub_1000C47C0(v3, v4);
  }

  return result;
}

void sub_1001A48A0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deviceManagerRef is Null!", "__WiFiDeviceManagerP2pThreadCoexEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A490C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, roamManager is NULL", "__WiFiDeviceManagerSubmitRoamStatusMetrics"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A4978()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, roamStatusdict is NULL", "__WiFiDeviceManagerSubmitRoamStatusMetrics"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A49E4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, WiFiDeviceManagerRef is NULL", "__WiFiDeviceManagerSubmitRoamStatusMetrics"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A4A50(const void **a1, const void *a2)
{
  v3 = *a1;
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a2);
    sub_1000F8A68();
  }

  objc_autoreleasePoolPop(v4);
}

void sub_1001A4ACC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null queue.", "__WiFiDeviceManagerProcessAssociationResult"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A4B2C(uint64_t *a1, void ***a2)
{
  v2 = sub_10000843C(a1, a2);
  sub_1000F8BFC(COERCE_DOUBLE(3221225472), v2, v3);
  v4[2] = sub_1000EC7CC;
  v4[3] = &unk_10025EFD8;
  v4[4] = v6;
  v4[5] = v5;
  dispatch_async(v7, v4);
}

void sub_1001A4B70()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: network is null", "__WiFiDeviceManagerProcessAutoHotspotJoinRecommendationNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A4BDC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null queue.", "__WiFiDeviceManagerProcessAutoHotspotJoinRecommendationNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A4C48()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: location timestamp is nil", "__WiFiDeviceManagerIsGeotagged5GhzNetworkPresent"}];
  }

  objc_autoreleasePoolPop(v0);
}

id sub_1001A4CB4(uint64_t a1, void *a2)
{
  v3 = 0;
  v4 = 0;
  v5 = a1 + 6040;
  do
  {
    v6 = [sub_1000F8B44() objectAtIndex:?];
    if (v6)
    {
      v7 = [v6 unsignedIntegerValue];
      if (v7 <= 0xCu && ((1 << v7) & v3) == 0)
      {
        v3 |= (1 << v7);
        ++*(v5 + 2 * v7);
      }
    }

    ++v4;
    result = [a2 count];
  }

  while (v4 < result);
  return result;
}

void sub_1001A4D4C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s !__WiFiDeviceManagerIsNetworkSuitableForAutojoin but couldn't get problematicNetwork", "__WiFiDeviceManagerTrackBlacklistedNetworksExcludedFromAutoJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A4DB8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null mruNetworkChanList", "__WiFiDeviceManagerScanMRUNetworkChannels"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A4E18()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Failed to create remaining or supp ch list array", "__WiFiDeviceManagerScanRemainingChannels"}];
  }

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1001A4E78()
{
  sub_10001131C();
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Fallback to all channel scans", "__WiFiDeviceManagerScanRemainingChannels"}];
  }

  objc_autoreleasePoolPop(v2);
  result = sub_100191434(v1);
  *v0 = result;
  return result;
}

void sub_1001A4EF0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"logMessage is Null!"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A4F48()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"ScanResults is Null!"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A4FA0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s  logMessage is NULL", "__WiFiDeviceManagerPrepareDeferredNetworkList"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A500C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deferred network list is NULL", "__WiFiDeviceManagerPrepareDeferredNetworkList"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A5078()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: scan candidates is NULL", "__WiFiDeviceManagerPrepareDeferredNetworkList"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A50E4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager object is NULL", "__WiFiDeviceManagerPrepareDeferredNetworkList"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A5150()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: no scan candidate network", "__WiFiDeviceManagerFilterCandidatesWithRssiThreshold"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A51BC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is Null!", "__WiFiDeviceManagerFilterCandidatesWithRssiThreshold"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A5228(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Done processing AJ candidates, %ld", "__WiFiDeviceManagerProcessCandidates", *(a1 + 1176)}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A5290(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_100058F60(*(a1 + 7153));
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A530C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: No scan results", "__WiFiDeviceManagerProcessDeferredNetworks"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A5378()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: No GAS queries.", "__WiFiDeviceManagerProcessDeferredNetworks"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A53E4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"No HS2.0 networks to query"];
  }

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1001A543C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_100094FF0();
  Count = CFArrayGetCount(*(v6 + 3616));
  if (Count)
  {
    v8 = Count;
    Mutable = *v4;
    if (!*v4)
    {
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      *v4 = Mutable;
    }

    v13.location = 0;
    v13.length = v8;
    CFArrayAppendArray(Mutable, *(v3 + 3616), v13);
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Appending deffered networks to candidates list", "__WiFiDeviceManagerProcessDeferredNetworks"}];
    }

    objc_autoreleasePoolPop(v10);
  }

  CFArrayRemoveAllValues(*(v3 + 3608));
  CFArrayRemoveAllValues(*(v3 + 3616));
  [*(v3 + 3704) clearScanResultsForAutoJoinSessionReset];
  sub_1000E9010(v3, *v4);
  if (!sub_100192B7C(v3))
  {
    return 1;
  }

  v11 = sub_1000E9864(v3);
  result = 0;
  *a3 = v11;
  return result;
}

void sub_1001A5540(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: error: scan index invalid, %ld", "__WiFiDeviceManagerScanForHiddenNetworks", *(a1 + 1176)}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A55B4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s bssid is nil", "__CopyReasonsFromSubStatesForBssBlacklist"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A5620()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s dict is nil", "__CopyReasonsFromSubStatesForBssBlacklist"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A568C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to create network", "__WiFiDeviceManagerProcessEAPTrustNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A56F8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to make mutable copy of eap client config", "__WiFiDeviceManagerProcessEAPTrustNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A5764(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_100008328();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A57E0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to make mutable copy of eap profile", "__WiFiDeviceManagerProcessEAPTrustNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A584C(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_100008328();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A58C8(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_100008328();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A5944(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_100008328();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A59C0()
{
  sub_10001131C();
  sub_100193574(v2, v3, 1);
  v8 = sub_10001A9BC(v0);
  sub_10000A540(v0, @"BSSID");
  v4 = sub_100011340();
  v7 = sub_1000BE2EC(v4, v5, 0, v6, 3);
  [*(v1 + 6720) setNetworkDenyListInfo:v7 forScanResult:v8];
}

void sub_1001A5A4C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to archive network to path %@", "__WiFiDeviceManagerOpenSettings", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A5ABC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: skip persisting network to disk", "__WiFiDeviceManagerOpenSettings"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A5B28(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to create urlString for type %d", "__WiFiDeviceManagerOpenSettings", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A5B98(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to create urlPathString for type %d", "__WiFiDeviceManagerOpenSettings", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A5C08()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null detailedState.", "__WiFiDeviceManagerPostUserJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A5C74()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null status.", "__WiFiDeviceManagerPostUserJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A5CE0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "__WiFiDeviceManagerPostUserJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

double sub_1001A5D4C(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Error returned by Associate Async %d", "__WiFiDeviceManagerAutoInstantHotspotAssociate", a1}];
  }

  objc_autoreleasePoolPop(v4);
  *(a2 + 6952) = 0;
  *(a2 + 3336) = *(a2 + 6972);
  sub_1000329B4(a2);
  *(a2 + 3336) = *(a2 + 6972);
  sub_100021D58();
  sub_100193BAC();
  *(a2 + 6536) = a1;

  return sub_100146CAC((a2 + 6536));
}

void sub_1001A5E04(_DWORD *a1)
{
  a1[834] = a1[1743];
  sub_100193BAC();
  a1[1634] = -3906;
  sub_100146CAC(a1 + 1634);
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: did not find the top network", "__WiFiDeviceManagerAutoInstantHotspotScanCallback"}];
  }

  objc_autoreleasePoolPop(v2);
}

double sub_1001A5E98(uint64_t a1, uint64_t a2, int a3)
{
  sub_100094FF0();
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: no scan result. ", "__WiFiDeviceManagerAutoInstantHotspotScanCallback"}];
  }

  objc_autoreleasePoolPop(v5);
  v3[834] = v3[1743];
  sub_100193BAC();
  v3[1634] = a3;

  return sub_100146CAC(v3 + 1634);
}

void sub_1001A5F3C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: No Network", "__WiFiDeviceManagerAutoInstantHotspotScanCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A5FA8()
{
  sub_100011560();
  v3 = sub_100193CE8(v2, *(v2 + 6936), *(v1 + 48));
  if (v3)
  {
    v5 = v3;
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: error initiating scan = %d", "__WiFiDeviceManagerAutoInstantHotspotScanCallback_block_invoke_2", v5}];
    }

    objc_autoreleasePoolPop(v6);
    sub_100025C70();
    sub_100193BAC();
    sub_10002CF08();
  }

  v4 = *v0;

  CFRelease(v4);
}

void sub_1001A6050()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: No Network", "__WiFiDeviceManagerAutoInstantHotspotAssociationCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A60BC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100193CE8(a1, *(a1 + 6936), *(a1 + 7048));
  if (v3)
  {
    v5 = v3;
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: error = %d", "__WiFiDeviceManagerAutoInstantHotspotAssociationCallback_block_invoke_2", v5}];
    }

    objc_autoreleasePoolPop(v6);
    sub_100025C70();
    sub_100193BAC();
    sub_10002CF08();
    sub_1000329B4(*a2);
  }

  v4 = *a2;

  CFRelease(v4);
}

void sub_1001A6174()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null notificationDict.", "__WiFiDeviceManagerPostAutoJoinNotificationWithMetric"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A61E0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null status.", "__WiFiDeviceManagerPostAutoJoinNotificationWithMetric"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A624C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "__WiFiDeviceManagerPostAutoJoinNotificationWithMetric"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A62B8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: countryCode is null\n", "__WiFiDeviceManagerIsRegulatoryUNII3Restricted"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A6324()
{
  sub_100024B78();
  v2 = v1;
  v4 = v3;
  sub_100094FF0();
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_100034900();
    [v6 WFLog:3 message:{"%s: MIS Mode: %s, Client Type: NAN Link Client client macAddr: %@"}];
  }

  objc_autoreleasePoolPop(v5);
  CFSetAddValue(*v4, v0);
  ++*v2;
  sub_10006AD5C();

  sub_10018A7CC(v7, v8);
}

void sub_1001A63E8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"__WiFiDeviceManagerNANPHSSTALeavingCallback", 11058}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A6450()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"__WiFiDeviceManagerNANPHSSTALeavingCallback", 11057}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A64B8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"__WiFiDeviceManagerNANPHSPublisherMetricsCallback", 10852}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A6520()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"__WiFiDeviceManagerNANPHSPublisherMetricsCallback", 10851}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A6588()
{
  sub_100024B78();
  sub_100008C40();
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    CFSetContainsValue(*(*v0 + 5360), *v1);
    sub_100026290();
  }

  objc_autoreleasePoolPop(v2);
  CFSetRemoveValue(*(*v0 + 5360), *v1);
  sub_10018A7CC(*v0, 0);
  if (_os_feature_enabled_impl())
  {
    [+[CWFHotspotClientManager sharedInstance](CWFHotspotClientManager clientDisassociated:"clientDisassociated:", *v1];
  }

  --*(*v0 + 5266);
  sub_10006AD5C();
}

void sub_1001A666C()
{
  sub_100011560();
  sub_100194030();
  [objc_msgSend(*v0 "wapCfg")];
  v1 = sub_1000305C4();
  sub_10014C6CC(v1, 1, v2);
}

void sub_1001A66AC()
{
  sub_10000D798();
  v3 = v2;
  sub_100008C40();
  if (!sub_1000C7464(v4, 8) || *(v0 + 5433))
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      sub_10000A878(v3);
      sub_1000A9B58();
    }

    objc_autoreleasePoolPop(v5);
    v6 = sub_100006F88(*v1);
    sub_1000B9DC8(v0, v6, 1007, "__WiFiDeviceManagerStartNANSession", 24927);
  }

  sub_1000084B8();
}

void sub_1001A6754()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"MIS Service is not available"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A67AC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"misSession is NULL"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A6804(int a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    strerror(a1);
    sub_100008328();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A6878()
{
  sub_10001131C();
  sub_100194030();
  [objc_msgSend(*v0 "wapCfg")];
  v1 = sub_1000305C4();
  sub_10014C6CC(v1, 0, v2);
}

void sub_1001A68B8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"__WiFiDeviceManagerStartMISSession: Detected non-NULL misSession"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A6910()
{
  sub_100011560();
  sub_100194030();
  [objc_msgSend(*v0 "wapCfg")];
  v1 = sub_1000305C4();
  sub_10014C6CC(v1, 0, v2);
}

void sub_1001A6950()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"MIS Scan: Failed to get supported channel list"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A699C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"MIS Scan: mis allowed channels list is empty"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A69E8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Error initiating MIS scan request: %d", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A6A44()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null scanData", "__WiFiDeviceManagerStartMISScan"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A6AA4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"WiFi is Powered OFF, Unable to start MIS Scan"}];
  }

  objc_autoreleasePoolPop(v2);
  bzero(v3, 0xB8uLL);
  v4 = 6;
  sub_1000C67C8(a1, v3);
}

void sub_1001A6B1C(uint64_t a1)
{
  if (sub_10018A684(a1) && !*(a1 + 5267))
  {
    v2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Starting MIS", "__WiFiDeviceManagerStopNetworkCallback"}];
    }

    objc_autoreleasePoolPop(v2);
    sub_1000C7790(a1);
  }

  CFSetAddValue(*(a1 + 5320), @"wifid");
  v3 = sub_10000D7B8();
  sub_10018A7CC(v3, v4);
  sub_10014C5C0();

  sub_1000C7220(a1, 5);
}

void sub_1001A6BD8()
{
  sub_10000D798();
  sub_10001131C();
  qword_100298688 = *(v3 + 40);
  if (!qword_100298688)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"Error transfering misKey to CFString"];
    }

    objc_autoreleasePoolPop(v4);
    v2 = *v0;
  }

  *(*v0 + 5268) = sub_10018A684(v2);
  if (_MISDetach)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"%s: MIS dynamic store key: %@"];
    }

    objc_autoreleasePoolPop(v5);
    _MISDetach(*(v1 + 48));
  }

  sub_10018FE18();
  sub_1000084B8();

  CFRelease(v6);
}

void sub_1001A6CCC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: No HS2.0 accounts", "__WiFiDeviceManagerSetHS20HomeOperatorNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A6D38()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: No GAS responses received", "__WiFiDeviceManagerSetHS20HomeOperatorNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A6DA4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: No HS2.0 accounts", "__WiFiDeviceManagerFindMatchingHS20Account"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A6E10()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: No GAS responses received", "__WiFiDeviceManagerFindMatchingHS20Account"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A6E7C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager.", "__WiFiDeviceManagerClearDpsHUD"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A6EE8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager.", "__WiFiDeviceManagerClearSlowWiFiHUD"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A6F54()
{
  sub_100094FF0();
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: disregarding update, profile='%@' expected='%@'", "__WiFiDeviceManagerUpdateNetworkProfileWithDiscoveredDevices", v0, v1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A6FD0(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [a1 discoveredDevices];
    sub_1000F8A68();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A7050()
{
  sub_10001131C();
  sub_1001909BC(v0, 1);
  v1 = sub_100011580();
  sub_10018ADC8(v1, v2, 1);
}

void sub_1001A7084(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 40) == 1)
  {
    *(a2 + 3466) = 1;
    [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor updateIsMediaPlaying:"updateIsMediaPlaying:", 1];
LABEL_3:
    v5 = *a3;
    goto LABEL_5;
  }

  *(a2 + 3466) = 0;
  [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor updateIsMediaPlaying:"updateIsMediaPlaying:", 0];
  v5 = *a3;
  if (!*(*a3 + 6704))
  {
    v7 = _os_feature_enabled_impl();
    v8 = *a3;
    if (v7)
    {
      sub_100019814(v8, 0x1BuLL);
    }

    else
    {
      sub_1000BBDEC(v8, 2);
    }

    goto LABEL_3;
  }

LABEL_5:
  if (*(v5 + 441))
  {
    sub_100008DCC(v5, 3);
    v5 = *a3;
  }

  if (*(v5 + 7480))
  {
    [*(v5 + 7480) setMediaState:*(v5 + 3466) != 0];
    v5 = *a3;
  }

  sub_100021870(v5, 0);
  if (*a3)
  {
    sub_100048F18(*(*a3 + 120), *(a1 + 40) == 1);
    v6 = *a3;
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v6);
}

void sub_1001A71A8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: wifi is off", "__WiFiDeviceManagerIsStateSuitableForNetworkTransition"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A7214()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: on a moving network", "__WiFiDeviceManagerIsStateSuitableForNetworkTransition"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A7280()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Active Ranging Session", "__WiFiDeviceManagerIsStateSuitableForNetworkTransition"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A72EC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: display is on", "__WiFiDeviceManagerIsStateSuitableForNetworkTransition"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A7358()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: in carplay", "__WiFiDeviceManagerIsStateSuitableForNetworkTransition"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A73C4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: voip on going", "__WiFiDeviceManagerIsStateSuitableForNetworkTransition"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A7430()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: call on going", "__WiFiDeviceManagerIsStateSuitableForNetworkTransition"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A749C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: media playing", "__WiFiDeviceManagerIsStateSuitableForNetworkTransition"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A7508()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Awdl RealTime is active", "__WiFiDeviceManagerIsStateSuitableForNetworkTransition"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A7574()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Airplay over Infra is active", "__WiFiDeviceManagerIsStateSuitableForNetworkTransition"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A75E0(double a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: timeSinceLinkUp %f", "__WiFiDeviceManagerIsStateSuitableForNetworkTransition", *&a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A765C(double a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: timeSinceLastScan %f", "__WiFiDeviceManagerIsStateSuitableForNetworkTransition", *&a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A76D8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: already tried enough times", "__WiFiDeviceManagerIsStateSuitableForNetworkTransition"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A7744()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: not associated", "__WiFiDeviceManagerIsStateSuitableForNetworkTransition"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A77B0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: no known networks", "__WiFiDeviceManagerIsStateSuitableForNetworkTransition"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A781C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager ref is null", "__WiFiDeviceManagerIsStateSuitableForNetworkTransition"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A7888(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Error initiating scan request: %d", a2}];
  }

  objc_autoreleasePoolPop(v4);
  free(a1);
}

void sub_1001A78F8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null scanData", "__WiFiDeviceManagerTransitionToNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A7958()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: not now...", "__WiFiDeviceManagerTransitionToNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A79B8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: failed to create scan request", "__WiFiDeviceManagerTransitionToNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A7A18()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: no mru channels found", "__WiFiDeviceManagerTransitionToNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A7A78(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Error in scan: %d", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A7AE0()
{
  sub_1000086C4();
  sub_100095008();
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    CFArrayGetCount(v1);
    sub_100026290();
  }

  objc_autoreleasePoolPop(v2);
  v3 = sub_100021D58();
  sub_100191FA0(v3, v4);
  if (CFArrayGetCount(v1) < 1)
  {
LABEL_9:
    v10 = objc_autoreleasePoolPush();
    v11 = sub_1000F8B2C();
    if (!v11)
    {
LABEL_12:
      sub_100010944();

      objc_autoreleasePoolPop(v13);
      return;
    }

    v12 = "%s: did not find the top network";
LABEL_11:
    [v11 WFLog:3 message:v12];
    goto LABEL_12;
  }

  v5 = 0;
  v6 = v0 + 4096;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v1, v5);
    if (ValueAtIndex)
    {
      v8 = ValueAtIndex;
      v9 = *(v0 + 3432);
      if (v9)
      {
        if (CFEqual(v9, v8))
        {
          break;
        }
      }
    }

    if (CFArrayGetCount(v1) <= ++v5)
    {
      goto LABEL_9;
    }
  }

  v15 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(v8);
    sub_100026290();
  }

  objc_autoreleasePoolPop(v15);
  if (!sub_1000F37B8(v0))
  {
    v34 = objc_autoreleasePoolPush();
    v11 = sub_1000F8B2C();
    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = "%s: not now...";
    goto LABEL_11;
  }

  if (!*(v0 + 6704))
  {
    v31 = *(v0 + 3488);
    if (v31)
    {
      if (CFEqual(v8, v31))
      {
        v32 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_10000A878(v8);
          sub_1000F8A68();
        }

        objc_autoreleasePoolPop(v32);
        if (*(v6 + 2600) == 1)
        {
          *(v6 + 2600) = 0;
          v33 = objc_autoreleasePoolPush();
          v11 = sub_1000F8B2C();
          if (!v11)
          {
            goto LABEL_12;
          }

          v12 = "%s:Clearing colocatedScopeTransition state";
          goto LABEL_11;
        }

LABEL_36:
        sub_100010944();
        return;
      }
    }
  }

  ++*(v0 + 3448);
  *(v0 + 3456) = CFAbsoluteTimeGetCurrent();
  sub_1000BCCD4(v0);
  sub_100006F88(*(v0 + 64));
  sub_1000F8B44();
  sub_1000F8AB8();
  if (!sub_1000C9DD4(v16, v17, v18, v19, v20, v21, 0, 1013))
  {
    goto LABEL_36;
  }

  v22 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"%s: Error returned by Associate Async %d"];
  }

  objc_autoreleasePoolPop(v22);
  if (*(v0 + 6696) == 1)
  {
    *(v0 + 6696) = 0;
    v23 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"%s:Clearing colocatedScopeTransition state"];
    }

    objc_autoreleasePoolPop(v23);
  }

  sub_1000329B4(v0);
  sub_100006F88(*(v0 + 64));
  sub_1000F8A18();
  sub_100010944();

  sub_1000D62B4(v24, v25, v26, v27, v28, v29);
}

void sub_1001A7DC4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: no scan result", "__WiFiDeviceManagerNetworkTransitionScanCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A7E30()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager", "__WiFiDeviceManagerNetworkTransitionScanCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A7F04(uint64_t *a1, void ***a2)
{
  v2 = sub_10000843C(a1, a2);
  sub_1000F8BFC(COERCE_DOUBLE(3221225472), v2, v3);
  v4[2] = sub_1000F4750;
  v4[3] = &unk_10025EFD8;
  v4[4] = v6;
  v4[5] = v5;
  dispatch_async(v7, v4);
}

void sub_1001A7F48()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: network is NULL", "__WiFiDeviceManagerUserNotificationAssociationCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A7FB4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: probeOptions is NULL !", "__WiFiDeviceManagerTriggerDpsACProbe"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A8014(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: probeSizeArrRef is NULL !", "__WiFiDeviceManagerTriggerDpsACProbe"}];
  }

  objc_autoreleasePoolPop(v2);
  CFRelease(a1);
}

void sub_1001A8080()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: numProbesRef is NULL !", "__WiFiDeviceManagerTriggerDpsACProbe"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A80E0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL !", "__WiFiDeviceManagerTriggerDpsACProbe"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A814C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager.", "__WiFiDeviceManagerTriggerOrSuppressSubsequentDpsProbes"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A81AC(const void **a1, char a2, const __CFDate *a3)
{
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v7 = sub_10000A878(*a1);
    if (a2)
    {
      v8 = "Instant";
    }

    else
    {
      v8 = "Auto instant";
    }

    Current = CFAbsoluteTimeGetCurrent();
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v12 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v6);
}

id sub_1001A8354()
{
  sub_1000F8A5C();
  *v1 = NSLocalizedDescriptionKey;
  *v2 = @"Below minimum RSSI threshold";
  sub_1000F8AD0(NSDictionary, v2, v3, v4);
  result = [sub_100029DCC() errorWithDomain:? code:? userInfo:?];
  *v0 = result;
  return result;
}

id sub_1001A83C8()
{
  sub_1000F8A5C();
  *v1 = NSLocalizedDescriptionKey;
  *v2 = @"Join candidate not suitable for auto-join";
  sub_1000F8AD0(NSDictionary, v2, v3, v4);
  result = [sub_100029DCC() errorWithDomain:? code:? userInfo:?];
  *v0 = result;
  return result;
}

id sub_1001A843C()
{
  sub_1000F8A5C();
  *v1 = NSLocalizedDescriptionKey;
  *v2 = @"No matching known network specified";
  sub_1000F8AD0(NSDictionary, v2, v3, v4);
  result = [sub_100029DCC() errorWithDomain:? code:? userInfo:?];
  *v0 = result;
  return result;
}

id sub_1001A84B0()
{
  sub_1000F8A5C();
  *v1 = NSLocalizedDescriptionKey;
  *v2 = @"No join candidate specified";
  sub_1000F8AD0(NSDictionary, v2, v3, v4);
  result = [sub_100029DCC() errorWithDomain:? code:? userInfo:?];
  *v0 = result;
  return result;
}

id sub_1001A8524()
{
  sub_1000F8A5C();
  *v1 = NSLocalizedDescriptionKey;
  *v2 = @"No auto-join manager configured";
  sub_1000F8AD0(NSDictionary, v2, v3, v4);
  result = [sub_100029DCC() errorWithDomain:? code:? userInfo:?];
  *v0 = result;
  return result;
}

void sub_1001A8598(unsigned int *a1, const void **a2, char a3)
{
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v7 = sub_10000A878(*a2);
    v8 = "Auto instant";
    if (a3)
    {
      v8 = "Instant";
    }

    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v11 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v6);
}

void sub_1001A8720()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"No valid impact estimator ref"];
  }

  objc_autoreleasePoolPop(v0);
}

const __CFDictionary *sub_1001A957C(uint64_t a1, CFDictionaryRef *a2, const void *a3)
{
  v6 = sub_10009D548(a2, a3);
  v7 = v6;
  if (!a3)
  {
    if (v6)
    {
      Value = CFDictionaryGetValue(v6, @"EAPClientConfiguration");
      if (Value)
      {
        v9 = CFDictionaryGetValue(Value, @"UserPassword");
        v10 = CFRetain(a2);
        if (v10)
        {
          v11 = v10;
          if (sub_10000AFE4(v10))
          {
            v12 = v9 != 0;
            while (sub_10009F2A4(v11) && !v12)
            {
              v13 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"%s: did not manage to find password for HS2.0 account %@. Looking for next matching account...", "__WiFiDeviceCopyPreparedEAPProfile", sub_10000A878(v11)}];
              }

              objc_autoreleasePoolPop(v13);
              v14 = *(a1 + 16);
              v15 = sub_100009664(v14);
              v16 = sub_100060B60(v14, v15, v11);
              CFRelease(v11);
              if (!v16)
              {
                v19 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:4 message:{"%s: did not manage to find password for HS2.0 network %@. No more matching HS2.0 account", "__WiFiDeviceCopyPreparedEAPProfile", sub_10000A878(a2)}];
                }

                objc_autoreleasePoolPop(v19);
                return v7;
              }

              if (v7)
              {
                CFRelease(v7);
              }

              v11 = v16;
              v17 = sub_10009D548(v16, 0);
              v7 = v17;
              v12 = v17 && (v18 = CFDictionaryGetValue(v17, @"EAPClientConfiguration")) != 0 && CFDictionaryGetValue(v18, @"UserPassword") != 0;
              if (!sub_10000AFE4(v11))
              {
                break;
              }
            }
          }

          CFRelease(v11);
        }
      }
    }
  }

  return v7;
}

void sub_1001A9760()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: network is null.", "__WiFiDeviceEAPConfigureWoWEapolFilterIfNeeded"}];
  }

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1001A9D64(uint64_t *a1)
{
  sub_100106A0C();
  CWFErrorDescription();
  sub_1000305C4();
  result = CWFErrorWithDescription();
  *a1 = result;
  return result;
}

uint64_t sub_1001A9DA8(void *a1)
{
  sub_100106A0C();
  CWFErrorDescription();
  sub_1000305C4();
  if (!CWFErrorWithDescription())
  {
    return 1;
  }

  result = [sub_100011430() response];
  if (result)
  {
    [a1 response];
    sub_10000845C();
    v3();
    return 0;
  }

  return result;
}

uint64_t sub_1001A9E14(uint64_t *a1)
{
  sub_100024F98();
  CWFErrorDescription();
  sub_100024F98();
  result = CWFErrorWithDescription();
  *a1 = result;
  return result;
}

uint64_t sub_1001A9E58(uint64_t *a1)
{
  CWFErrorDescription();
  sub_1000305C4();
  result = CWFErrorWithDescription();
  *a1 = result;
  return result;
}

uint64_t sub_1001A9EA0(uint64_t *a1)
{
  sub_10000DBC0();
  CWFErrorDescription();
  sub_1000305C4();
  result = CWFErrorWithDescription();
  *a1 = result;
  return result;
}

uint64_t sub_1001A9EE4(uint64_t *a1)
{
  CWFErrorDescription();
  sub_1000305C4();
  result = CWFErrorWithDescription();
  *a1 = result;
  return result;
}

void sub_1001A9F2C(const void *a1, const void *a2, uint64_t *a3)
{
  CWFErrorDescription();
  *a3 = CWFErrorWithDescription();
  CFRelease(a1);

  CFRelease(a2);
}

void sub_1001A9FA4()
{
  sub_10001131C();
  CWFErrorDescription();
  sub_10000757C();
  v0 = CWFErrorWithDescription();
  v1 = sub_100011368(v0);
  CFRelease(v1);
}

void sub_1001A9FF8()
{
  sub_10001131C();
  sub_100029DDC();
  CWFErrorDescription();
  sub_10000757C();
  v0 = CWFErrorWithDescription();
  v1 = sub_100011368(v0);

  CFRelease(v1);
}

uint64_t sub_1001AA054()
{
  sub_10001131C();
  CWFErrorDescription();
  sub_10000757C();
  result = CWFErrorWithDescription();
  *v0 = result;
  return result;
}

void sub_1001AA0A4()
{
  sub_10001131C();
  sub_100029DDC();
  CWFErrorDescription();
  sub_10000757C();
  v0 = CWFErrorWithDescription();
  v1 = sub_100011368(v0);
  CFRelease(v1);
}

id sub_1001AA0F4()
{
  sub_100008C40();
  CWFErrorDescription();
  sub_10000757C();
  result = CWFErrorWithDescription();
  if (result)
  {
    result = [sub_100011430() response];
    if (result)
    {
      v2 = *([v0 response] + 2);

      return v2();
    }
  }

  return result;
}

uint64_t sub_1001AA198(uint64_t *a1)
{
  CWFErrorDescription();
  sub_1000305C4();
  result = CWFErrorWithDescription();
  *a1 = result;
  return result;
}

void sub_1001AA1E0(void *a1, uint64_t a2)
{
  if ([a1 response])
  {
    v3 = [a1 response];
    v3[2](v3, a2, 0);
  }
}

uint64_t sub_1001AA244()
{
  sub_100008C40();
  CWFErrorDescription();
  sub_10000757C();
  if (!CWFErrorWithDescription())
  {
    return 1;
  }

  result = [sub_100011430() response];
  if (result)
  {
    [v0 response];
    sub_10000845C();
    v2();
    return 0;
  }

  return result;
}

uint64_t sub_1001AA2B8(void *a1)
{
  sub_100024F98();
  CWFErrorDescription();
  sub_100024F98();
  if (!CWFErrorWithDescription())
  {
    return 1;
  }

  result = [sub_100011430() response];
  if (result)
  {
    [a1 response];
    sub_10000845C();
    v3();
    return 0;
  }

  return result;
}

void sub_1001AA3C0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null _applications", "-[WiFiAppStateManager _unRegisterApplication:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AA42C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null bundleID", "-[WiFiAppStateManager _unRegisterApplication:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AA498()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null _applications", "-[WiFiAppStateManager _registerApplication:capabilities:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AA4F8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null capabilitiesRef", "-[WiFiAppStateManager _registerApplication:capabilities:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AA558()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null bundleID", "-[WiFiAppStateManager _registerApplication:capabilities:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AA5C4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Nil queue", "-[WiFiAppStateManager _setApplicationState:active:underLock:capabilities:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AA630()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: No queue", "-[WiFiAppStateManager _setApplicationState:active:underLock:capabilities:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AA690()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null background applications", "-[WiFiAppStateManager _setApplicationState:active:underLock:capabilities:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AA6FC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null active applications", "-[WiFiAppStateManager _setApplicationState:active:underLock:capabilities:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AA768()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null bundleID", "-[WiFiAppStateManager _setApplicationState:active:underLock:capabilities:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AA7D4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null bundleID", "-[WiFiAppStateManager _appStateChanged:bundleID:capabilities:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AA840()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null _applicationStateMonitor", "-[WiFiAppStateManager _getAppCapabilitiesForBundleID:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AA8AC(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10010A0C4();
    sub_100008470();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
  }

  *a2 = 0;
}

void sub_1001AA960()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10010A0C4();
    sub_100008470();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

void sub_1001AAA0C(uint64_t a1, uint64_t a2, void *a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100024FA4();
    sub_10000DBCC();
    sub_100008470();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);
  }

  *a3 = a2;
}

void sub_1001AAAD4(uint64_t a1, uint64_t a2, void *a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100024FA4();
    sub_10000DBCC();
    sub_100008470();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);
  }

  *a3 = a2;
}

void sub_1001AAC30()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100008470();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }
}

void sub_1001AACCC()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100008470();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }
}

void sub_1001AAD68()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v0[0] = 136315394;
    sub_100024FA4();
    v1 = @"/tmp/Centauri/wifi-assert-strings.bin";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: error opening file %@", v0, 0x16u);
  }
}

void sub_1001AAE10()
{
  sub_10010A0C4();
  sub_100008470();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1001AAE98(void *a1, void *a2, void *a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100008470();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
  }
}

void sub_1001AAF5C(void *a1, void *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100008470();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

void sub_1001AB010(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100008470();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1001AB0BC(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100008470();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_1001AB17C(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100024FA4();
    sub_100008470();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void sub_1001AB230(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100024FA4();
    sub_100008470();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

uint64_t sub_1001AB3EC(const __CFAllocator *a1, CFIndex a2)
{
  if (!qword_100298AE0)
  {
    pthread_once(&stru_100297C90, sub_10010A11C);
  }

  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (Instance)
  {
    *(Instance + 64) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 24) = a2;
    Mutable = CFArrayCreateMutable(a1, a2, &kCFTypeArrayCallBacks);
    *(v5 + 16) = Mutable;
    if (Mutable && (v7 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks), (*(v5 + 80) = v7) != 0))
    {
      *(v5 + 72) = 0;
    }

    else
    {
      CFRelease(v5);
      return 0;
    }
  }

  return v5;
}

void sub_1001AB4C8(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 64);
    if (v1)
    {
      dispatch_source_set_timer(v1, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }
}

void sub_1001AB4E8(uint64_t a1)
{
  *(a1 + 72) = 0;
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: retrying command", "__WiFiCommandQueueTimerCallback"}];
  }

  objc_autoreleasePoolPop(v2);

  sub_100026684(a1);
}

void sub_1001AB564(uint64_t a1, uint64_t a2)
{
  valuePtr = a2;
  if (a1)
  {
    Count = CFArrayGetCount(*(a1 + 16));
    if (Count >= 1)
    {
      v4 = Count;
      v5 = 0;
      while (1)
      {
        v9 = 0xAAAAAAAAAAAAAAAALL;
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v5);
        if (ValueAtIndex)
        {
          v11.location = 0;
          v11.length = 8;
          CFDataGetBytes(ValueAtIndex, v11, &v9);
          if (valuePtr == v9)
          {
            v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
            if (v7)
            {
              break;
            }
          }
        }

        if (v4 == ++v5)
        {
          return;
        }
      }

      v8 = v7;
      CFSetAddValue(*(a1 + 80), v7);
      CFRelease(v8);
    }
  }
}

void sub_1001AB638(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"Resetting deferred command queue IDs"];
    }

    objc_autoreleasePoolPop(v2);
    idx = -1;
    v3 = sub_1000262D0(a1, &idx);
    CFSetRemoveAllValues(*(a1 + 80));
    if (v3)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), idx);
      CFArrayInsertValueAtIndex(*(a1 + 16), 0, ValueAtIndex);
      CFArrayRemoveValueAtIndex(*(a1 + 16), idx + 1);
    }

    else
    {
      sub_1000264E8(a1, 0);
    }
  }
}

void sub_1001AB6F8(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"WiFiSmartCoverStateObserver.h" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void sub_1001AB778()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: motionServices is null", "registerSmartCoverStateInitialize"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AB7E4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null smartCoverStateChangeCb", "registerSmartCoverStateInitialize"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AB850()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager", "registerSmartCoverStateInitialize"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AB8BC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"smartCoverStateChangeCb is NULL!"];
  }

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1001AB9C4(NSObject **a1, void *a2)
{
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = &_os_log_default;
    v6 = &_os_log_default;
  }

  result = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v8[0] = 0;
    result = _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v5, 0, "[corewifi] SSID Transition: Legacy SSID networks not enabled", v8, 2);
  }

  *a2 = 0;
  *a1 = v5;
  return result;
}

void sub_1001ABA80()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: User Settings CWFKeyValueStore alloc failed", "-[WiFiUserSettingsStore init]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001ABAE0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: KVS change disregarded, syncing not enabled", "-[WiFiUserSettingsStore _kvsDidChangeWithKeys:isExternal:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001ABB4C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: local changed to KVS keys='%@'", "-[WiFiUserSettingsStore _kvsDidChangeWithKeys:isExternal:]", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001ABBBC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: auto hotspot mode change disregarded, syncing not enabled (new value: %ld)", "-[WiFiUserSettingsStore setAutoInstantHotspotMode:]", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001ABC2C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: ask to join mode change disregarded, syncing not enabled (new value: %ld)", "-[WiFiUserSettingsStore setAskToJoinMode:]", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001ABE30(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Zero(0) message identifier, bail."}];
  }

  objc_autoreleasePoolPop(v2);
  v3 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9010 userInfo:0];
  (*(a1 + 16))(a1, 0, v3);
}

void sub_1001ABEC0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s NULL reply supplied trying to process: %u", "-[WiFiManagerAnalytics prepareMessageForSubmission:withData:andReply:]_block_invoke", *(a1 + 48)}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001ABF34()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: failed to get deviceIdentifier", "-[WiFiManagerAnalytics __copyHashOfSSID:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001ABFA0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Failed to get key kWiFiDPSSypmtom", "-[WiFiManagerAnalytics _populateDPSNotificationMessage:andReply:]_block_invoke"}];
  }

  objc_autoreleasePoolPop(v0);
}

void *sub_1001AC000(uint64_t a1)
{
  if (!qword_100298B08)
  {
    pthread_once(&stru_100297D00, sub_10010DA90);
  }

  result = _CFRuntimeCreateInstance();
  if (result)
  {
    result[2] = 0;
    result[3] = 0;
    result[4] = 0;
  }

  return result;
}

uint64_t sub_1001AC0C4(uint64_t a1)
{
  result = sub_10001D1DC(a1);
  if (result)
  {
    if (Apple80211EventMonitoringInit2())
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: Unable to init event monitoring", "WiFiVirtualInterfaceMonitorEvents"}];
      }

      objc_autoreleasePoolPop(v4);
    }

    else if (!Apple80211StartMonitoringEvent() && !Apple80211StartMonitoringEvent() && !Apple80211StartMonitoringEvent())
    {
      return *(v1 + 16);
    }

    if (*(v1 + 16))
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: failed to start event monitoring on %@", "WiFiVirtualInterfaceMonitorEvents", *(v1 + 40)}];
      }

      objc_autoreleasePoolPop(v3);
      Apple80211EventMonitoringHalt();
      result = 0;
      *(v1 + 16) = 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFDataRef sub_1001AC1E0(uint64_t a1)
{
  *buffer = 0;
  v16 = 0;
  v2 = *(a1 + 184);
  if (!v2 || ![v2 isEnabled])
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      Value = CFDictionaryGetValue(v5, @"VIRT_IF_NAME");
      if (Value)
      {
        v7 = Value;
        SystemEncoding = CFStringGetSystemEncoding();
        CFStringGetCString(v7, buffer, 16, SystemEncoding);
        *v17 = xmmword_1001CE820;
        v18 = 3;
        v19 = if_nametoindex(buffer);
        size = 0;
        sysctl(v17, 6u, 0, &size, 0, 0);
        if (size)
        {
          v9 = malloc_type_malloc(size, 0xDE39BB77uLL);
          if (v9)
          {
            v10 = v9;
            if (sysctl(v17, 6u, v9, &size, 0, 0) < 0)
            {
              v13 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: sysctl failed.", "WiFiVirtualInterfaceCopyMACAddress"}];
              }

              objc_autoreleasePoolPop(v13);
              v11 = 0;
            }

            else
            {
              v11 = CFDataCreate(kCFAllocatorDefault, &v10[v10[117] + 120], 6);
            }

            free(v10);
            return v11;
          }

          v12 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: reqBuff is NULL.", "WiFiVirtualInterfaceCopyMACAddress"}];
          }
        }

        else
        {
          v12 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: failed to get mib length.", "WiFiVirtualInterfaceCopyMACAddress"}];
          }
        }

        objc_autoreleasePoolPop(v12);
      }
    }

    return 0;
  }

  v3 = [objc_msgSend(*(a1 + 184) "macAddress")];
  if (!v3)
  {
    return 0;
  }

  return CFRetain(v3);
}

uint64_t sub_1001AC428(uint64_t a1, __CFDictionary **a2)
{
  valuePtr = 0;
  result = 4294963396;
  if (!a1 || !a2)
  {
    return result;
  }

  v5 = *(a1 + 32);
  if (!v5)
  {
    return 4294963393;
  }

  Value = CFDictionaryGetValue(v5, @"VIRT_IF_ROLE");
  if (!Value)
  {
    return 4294963393;
  }

  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr != 6)
  {
    return 4294963393;
  }

  v7 = *(a1 + 184);
  if (v7)
  {
    v8 = [v7 isEnabled] ^ 1;
  }

  else
  {
    v8 = 1;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    return 4294963395;
  }

  v10 = Mutable;
  if (sub_10014E1FC(*(a1 + 24), *(a1 + 40)))
  {
    v11 = kCFBooleanTrue;
  }

  else
  {
    v11 = kCFBooleanFalse;
  }

  CFDictionarySetValue(v10, @"LINK_CHANGED_IS_AVAILABLE", v11);
  if (v8)
  {
    v12 = kCFBooleanTrue;
  }

  else
  {
    v12 = kCFBooleanFalse;
  }

  CFDictionarySetValue(v10, @"LINK_CHANGED_IS_LINKDOWN", v12);
  if (*(a1 + 224))
  {
    v13 = [*(a1 + 192) queryPeerDatabase];
    if (v13)
    {
      v14 = CFRetain(v13);
      if (v14)
      {
        v15 = v14;
        sub_100024F28(v14, @"LINK_CHANGED_PEER_LIST");
        CFRelease(v15);
      }
    }
  }

  v16 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v16)
  {
    CFRelease(v10);
    return 4294963395;
  }

  v17 = v16;
  v18 = sub_1001AC1E0(a1);
  if (v18)
  {
    v19 = v18;
    CFDictionarySetValue(v17, @"AWDL_IF_MAC_ADDRESS", v18);
    CFRelease(v19);
  }

  theDict = 0;
  sub_1001AC74C(a1, &theDict);
  if (theDict)
  {
    v20 = CFDictionaryGetValue(theDict, @"AWDL_INFO_PREFERRED_CHANNEL");
    v21 = CFDictionaryGetValue(theDict, @"AWDL_INFO_PEER_MASTER_CHANNEL");
    v29 = CFDictionaryGetValue(theDict, @"AWDL_INFO_EXT");
    if (v20)
    {
      CFDictionarySetValue(v17, @"AWDL_INFO_PREFERRED_CHANNEL", v20);
    }

    if (v21)
    {
      CFDictionarySetValue(v17, @"AWDL_INFO_PEER_MASTER_CHANNEL", v21);
    }

    if (sub_10014D6A8(*(a1 + 24), v22, v23, v24, v25, v26, v27, v28, v35, v36, theDict, v38, valuePtr, v40, v41, v42, v43, v44, v45, v46, v47) && v29)
    {
      CFDictionarySetValue(v17, @"AWDL_INFO_EXT", v29);
    }

    v30 = *(a1 + 232);
    if (v30)
    {
      CFRelease(v30);
      *(a1 + 232) = 0;
    }

    *(a1 + 232) = CFRetain(theDict);
    if (theDict)
    {
      CFRelease(theDict);
      theDict = 0;
    }
  }

  HIDWORD(v36) = sub_10010F604(a1);
  v31 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v36 + 4);
  if (v31)
  {
    v32 = v31;
    CFDictionarySetValue(v17, @"AWDL_INFO_SUPPORTED_CHANNEL_FLAGS", v31);
    CFRelease(v32);
  }

  LODWORD(v36) = 2;
  v33 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v36);
  if (v33)
  {
    v34 = v33;
    CFDictionarySetValue(v17, @"AWDL_INFO_ASSISTED_DISCOVERY_METRIC", v33);
    CFRelease(v34);
  }

  sub_100024F28(v33, @"AWDL_INFO");
  CFRelease(v17);
  result = 0;
  *a2 = v10;
  return result;
}

uint64_t sub_1001AC74C(uint64_t a1, CFMutableDictionaryRef *a2)
{
  if (!a1 || !a2)
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null params.", "WiFiVirtualInterfaceCopyAwdlPreferredChannels"}];
    }

    goto LABEL_18;
  }

  if (!*(a1 + 184))
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: no awdl state", "WiFiVirtualInterfaceCopyAwdlPreferredChannels"}];
    }

LABEL_18:
    objc_autoreleasePoolPop(v13);
    return 4294963396;
  }

  *a2 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    return 4294963395;
  }

  v5 = Mutable;
  *bytes = -21846;
  valuePtr = [objc_msgSend(*(a1 + 184) "peerPrimaryPreferredChannel")];
  v14 = 0;
  if (!sub_100060188(*(a1 + 24), valuePtr, &v14))
  {
    valuePtr = v14;
  }

  v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &valuePtr);
  if (!v6 || (v7 = v6, sub_100024F28(v6, @"AWDL_INFO_PREFERRED_CHANNEL"), CFRelease(v7), valuePtr = [objc_msgSend(*(a1 + 184) "peerMasterChannel")], (v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &valuePtr)) == 0) || (v9 = v8, sub_100024F28(v8, @"AWDL_INFO_PEER_MASTER_CHANNEL"), CFRelease(v9), *bytes = objc_msgSend(objc_msgSend(*(a1 + 184), "peerSecondaryPreferredChannel"), "channelNumber"), (v10 = CFDataCreate(kCFAllocatorDefault, bytes, 2)) == 0))
  {
    CFRelease(v5);
    return 4294963395;
  }

  v11 = v10;
  CFDictionarySetValue(v5, @"AWDL_INFO_EXT", v10);
  CFRelease(v11);
  result = 0;
  *a2 = v5;
  return result;
}

uint64_t sub_1001AC940(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return 4294963393;
  }

  for (i = 6; ; --i)
  {
    result = Apple80211SetPowerState();
    if (result != -3905 && result != 61 && result != 16)
    {
      break;
    }

    if (!i)
    {
      break;
    }

    sub_10000390C();
  }

  return result;
}

uint64_t sub_1001AC9AC(uint64_t a1)
{
  if (!sub_10001D1DC(a1))
  {
    return 4294963393;
  }

  v1[9] = v2;
  v1[10] = v3;
  for (i = 6; ; --i)
  {
    v5 = Apple80211ScanAsync();
    v6 = v5;
    v7 = v5 == -3905 || v5 == 16;
    if (!v7 && v5 != 61 || !i)
    {
      break;
    }

    sub_10000390C();
  }

  if (v5)
  {
    sub_10010F8D4(v1, v1[5], 0, v5);
  }

  return v6;
}

uint64_t sub_1001ACA3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  if (!a1[2])
  {
    return 4294963393;
  }

  a1[7] = a6;
  a1[8] = a7;
  v7 = 6;
  if (a5)
  {
    while (1)
    {
      result = Apple80211AssociateAsync();
      if (result != -3905 && result != 61 && result != 16)
      {
        break;
      }

      if (!v7)
      {
        break;
      }

      sub_10000390C();
      --v7;
    }
  }

  else
  {
    while (1)
    {
      result = Apple80211Associate();
      if (result != -3905 && result != 61 && result != 16)
      {
        break;
      }

      if (!v7)
      {
        break;
      }

      sub_10000390C();
      --v7;
    }
  }

  return result;
}

uint64_t sub_1001ACAEC(uint64_t a1)
{
  if (!sub_10001D1DC(a1))
  {
    return 4294963393;
  }

  v5 = v2;
  v1[11] = v3;
  v1[12] = v4;
  for (i = 6; ; --i)
  {
    v7 = Apple80211Set();
    v8 = v7;
    v9 = v7 == -3905 || v7 == 16;
    if (!v9 && v7 != 61 || !i)
    {
      break;
    }

    sub_10000390C();
  }

  if (v7)
  {
    v11 = v1[11];
    v10 = v1[12];
    v1[11] = 0;
    v1[12] = 0;
    if (v11)
    {
      v11(v1[3], v5, v7, v10);
    }

    sub_10002ECA0(v1[3]);
  }

  return v8;
}

uint64_t sub_1001ACBA8(uint64_t a1)
{
  if (!sub_10001D1DC(a1))
  {
    return 4294963393;
  }

  for (i = 6; ; --i)
  {
    result = Apple80211Disassociate();
    if (result != -3905 && result != 61 && result != 16)
    {
      break;
    }

    if (!i)
    {
      break;
    }

    sub_10000390C();
  }

  return result;
}

CFHashCode sub_1001ACC00(uint64_t a1)
{
  v1 = sub_1001AC1E0(a1);
  v2 = CFHash(v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

void sub_1001ACC3C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"invalid args: virtInf:%s, eventDict:%s", "Null", "non-Null"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001ACCB0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null property.", "WiFiVirtualInterfaceSetProperty"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001ACD1C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null key.", "WiFiVirtualInterfaceSetProperty"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001ACD88()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null virtInf.", "WiFiVirtualInterfaceSetProperty"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001ACDF4(uint64_t a1, __CFDictionary **a2, int *a3)
{
  memset(v19, 0, sizeof(v19));
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = sub_1001AC1E0(a1);
    if (v8)
    {
      v9 = v8;
      BytePtr = CFDataGetBytePtr(v8);
      v11 = ether_ntoa(BytePtr);
      if (v11)
      {
        v12 = v11;
        SystemEncoding = CFStringGetSystemEncoding();
        v14 = CFStringCreateWithCString(kCFAllocatorDefault, v12, SystemEncoding);
        if (v14)
        {
          v15 = v14;
          CFDictionarySetValue(v7, @"BSSID", v14);
          CFRelease(v15);
        }
      }

      CFDictionarySetValue(v7, @"STATION_MAC", v9);
      CFRelease(v9);
    }

    CFDictionarySetValue(v7, @"SSID_STR", &stru_1002680F8);
    v16 = CFDataCreate(kCFAllocatorDefault, v19, 32);
    if (v16)
    {
      v17 = v16;
      CFDictionarySetValue(v7, @"SSID", v16);
      v18 = 0;
      *a2 = v7;
      v7 = v17;
    }

    else
    {
      v18 = -3901;
    }

    CFRelease(v7);
  }

  else
  {
    v18 = -3901;
  }

  *a3 = v18;
}

void sub_1001ACF78()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null follow mode policy.", "WiFiVirtualInterfaceStartAwdl"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001ACFE4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: timed out waiting for assisted discovery registration", "WiFiVirtualInterfaceStartAwdl"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AD044()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: no AWDL request", "__WiFiVirtualInterfaceCreateFollowModePolicyFromRequest"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AD0A4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null peer Context array.", "__WiFiVirtualInterfaceCreateFollowModePolicyFromRequest"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AD104()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null peerContext.", "__WiFiVirtualInterfaceCreateFollowModePolicyFromRequest"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AD170()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null policy.", "__WiFiVirtualInterfaceCreateFollowModePolicyFromRequest"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AD1DC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null ifname.", "__WiFiVirtualInterfaceCreateFollowModePolicyFromRequest"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AD248()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null AWDL interface.", "__WiFiVirtualInterfaceCreateFollowModePolicyFromRequest"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AD2B4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: no AWDL request", "__WiFiVirtualInterfaceCreateAssistedDiscoveryPolicyFromRequest"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AD314()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null peer Context array.", "__WiFiVirtualInterfaceCreateAssistedDiscoveryPolicyFromRequest"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AD374()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null peerContext.", "__WiFiVirtualInterfaceCreateAssistedDiscoveryPolicyFromRequest"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AD3E0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null policy.", "__WiFiVirtualInterfaceCreateAssistedDiscoveryPolicyFromRequest"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AD44C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null ifname.", "__WiFiVirtualInterfaceCreateAssistedDiscoveryPolicyFromRequest"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AD4B8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null AWDL interface.", "__WiFiVirtualInterfaceCreateAssistedDiscoveryPolicyFromRequest"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AD524()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"Failed to send traffic registration because failed to parse dictionary"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AD570()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null follow mode policy.", "WiFiVirtualInterfaceStopAwdl"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AD634(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = sub_1001AC1E0(a1);
  v6 = sub_1001AC1E0(a2);
  if (CFEqual(v5, v6))
  {
    if (v5)
    {
      CFRelease(v5);
    }

    v7 = 1;
    v8 = 1;
    if (v6)
    {
LABEL_5:
      CFRelease(v6);
      v8 = v7;
    }
  }

  else
  {
    if (v5)
    {
      CFRelease(v5);
    }

    v7 = 0;
    v8 = 0;
    if (v6)
    {
      goto LABEL_5;
    }
  }

  *a3 = v8;
}

_OWORD *sub_1001AD6C8(uint64_t a1)
{
  if (!qword_100298B28)
  {
    pthread_once(&stru_100297D80, sub_1001115F8);
  }

  Instance = _CFRuntimeCreateInstance();
  v2 = Instance;
  if (Instance)
  {
    Instance[2] = 0u;
    Instance[3] = 0u;
    Instance[1] = 0u;
    *(Instance + 16) = 0;
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    *(v2 + 3) = Mutable;
    if (Mutable)
    {
      *(v2 + 57) = 0;
      if (objc_opt_class())
      {
        *(v2 + 58) = [+[LockdownModeManager shared](LockdownModeManager "shared")];
      }
    }

    else
    {
      CFRelease(v2);
      return 0;
    }
  }

  return v2;
}

void sub_1001AD798(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 24);
  if (v2 && CFArrayGetCount(v2))
  {
    Count = CFArrayGetCount(*(a1 + 24));
    if (CFArrayGetCount(*(a1 + 24)) >= 1)
    {
      for (i = 0; i < CFArrayGetCount(*(a1 + 24)); ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), i);
        if (ValueAtIndex)
        {
          v6 = ValueAtIndex;
          Current = CFAbsoluteTimeGetCurrent();
          sub_1001AE568(v6);
          Value = CFDictionaryGetValue(v6, @"atjHistTblEntCreationTimeStamp");
          if (!Value)
          {
            goto LABEL_27;
          }

          AbsoluteTime = CFDateGetAbsoluteTime(Value);
          if (AbsoluteTime == 0.0 || Current <= AbsoluteTime)
          {
            v20 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              v28 = v20;
              [off_100298C40 WFLog:3 message:{"%s: current time is less than creation time", "__WiFiATJMgrATJHistTblEntGetAverageInRangeTime"}];
              v20 = v28;
            }

            objc_autoreleasePoolPop(v20);
LABEL_27:
            if (!CFEqual(v6, *(a1 + 32)))
            {
              CFArrayRemoveValueAtIndex(*(a1 + 24), i--);
            }

            continue;
          }

          sub_10000847C();
          if (v12)
          {
            v13 = 1;
          }

          else
          {
            v13 = 0;
          }

          if (v11 < dbl_1001CE840[v13])
          {
            goto LABEL_27;
          }

          v14 = CFAbsoluteTimeGetCurrent();
          v15 = CFDictionaryGetValue(v6, @"atjHistTblEntCreationTimeStamp");
          if (v15)
          {
            v16 = CFDateGetAbsoluteTime(v15);
            if (v16 == 0.0 || v14 <= v16)
            {
              v21 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: current time is less than last seen time", "__WiFiATJMgrATJHistTblEntGetTimeElapsedSinceLastSeen"}];
              }

              objc_autoreleasePoolPop(v21);
              continue;
            }

            sub_10000847C();
            v19 = v12;
            if (v18 > dbl_1001CE850[v19])
            {
              goto LABEL_27;
            }
          }
        }
      }
    }

    v22 = objc_autoreleasePoolPush();
    v23 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_38;
    }

    v26 = Count;
    v27 = CFArrayGetCount(*(a1 + 24));
    v24 = "ATJManager: entries before cleanup %ld, entries after cleanup %ld";
    v25 = v23;
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v25 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_38;
    }

    v24 = "ATJManager: no entries to purge";
  }

  [v25 WFLog:3 message:{v24, v26, v27}];
LABEL_38:

  objc_autoreleasePoolPop(v22);
}

void sub_1001ADA24(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    if (*(a1 + 58))
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Lockdown Mode is enabled, ignoring SetATJMode %ld", "WiFiATJMgrSetATJMode", a2}];
      }

      objc_autoreleasePoolPop(v4);
    }

    else if (*(a1 + 16) != a2)
    {
      *(a1 + 16) = a2;
      if (!a2)
      {
        v5 = *(a1 + 32);
        if (v5)
        {
          CFRelease(v5);
          *(a1 + 32) = 0;
        }

        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        v6 = *(a1 + 24);

        CFArrayRemoveAllValues(v6);
      }
    }
  }
}

void sub_1001ADB08(uint64_t a1, int a2)
{
  if (a1)
  {
    *(a1 + 57) = a2;
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v4 = "enabled";
      if (!a2)
      {
        v4 = "disabled";
      }

      [off_100298C40 WFLog:3 message:{"ATJManager: atj test mode %s ", v4}];
    }

    objc_autoreleasePoolPop(v3);
  }
}

uint64_t sub_1001ADB94(uint64_t result)
{
  if (result)
  {
    return *(result + 57);
  }

  return result;
}

uint64_t sub_1001ADBA0(uint64_t result)
{
  if (result)
  {
    return *(result + 20);
  }

  return result;
}

uint64_t sub_1001ADBAC(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

BOOL sub_1001ADBB8(uint64_t a1, _BOOL8 a2, const __CFArray *a3, uint64_t a4)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (!a1)
  {
    return 0;
  }

  v9 = Current;
  v10 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    if (*(a1 + 20) == 1)
    {
      v11 = "Interactive";
    }

    else
    {
      v11 = "NonInteractive";
    }

    [off_100298C40 WFLog:3 message:{"ATJManager: atjAction=%d atjEnabled=%d userInteractionMode=%s discovered %ld networks", a4, *(a1 + 16), v11, CFArrayGetCount(a2)}];
  }

  objc_autoreleasePoolPop(v10);
  if (a2)
  {
    if (!CFArrayGetCount(a2) || *(a1 + 20) != 1)
    {
LABEL_58:
      a2 = 0;
      goto LABEL_119;
    }

    if (a4 != 3)
    {
      Count = CFArrayGetCount(a2);
      if (a3)
      {
        if (Count && CFArrayGetCount(a3) && CFArrayGetCount(a2) >= 1)
        {
          v13 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a2, v13);
            if (ValueAtIndex)
            {
              v15 = ValueAtIndex;
              v79.length = CFArrayGetCount(a3);
              v79.location = 0;
              if (CFArrayContainsValue(a3, v79, v15))
              {
                break;
              }
            }

            if (++v13 >= CFArrayGetCount(a2))
            {
              goto LABEL_19;
            }
          }

          v41 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: in range of preferred network.", "__WiFiATJMgrIsPreferredNetworkInRange"}];
          }

          objc_autoreleasePoolPop(v41);
          goto LABEL_58;
        }
      }
    }

LABEL_19:
    v80.length = CFArrayGetCount(a2);
    v80.location = 0;
    CFArraySortValues(a2, v80, sub_1000A0950, 0);
    v16 = *(a1 + 32);
    if (v16)
    {
      if (sub_1001AE46C(v16, a2))
      {
        v35 = *(a1 + 40);
        v36 = v9 - v35;
        v19 = v35 == 0.0;
        v37 = 0.0;
        if (!v19)
        {
          v37 = v36;
        }

        if (v37 > 1800.0)
        {
          v37 = 1800.0;
        }

        *(a1 + 48) = *(a1 + 48) + v37;
        v38 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v39 = "monitored";
          if (!*(a1 + 56))
          {
            v39 = "unmonitored";
          }

          [off_100298C40 WFLog:3 message:{"ATJManager: device still at %s atj point for %f seconds", v39, *(a1 + 48)}];
        }

        objc_autoreleasePoolPop(v38);
        v40 = *(a1 + 32);
        if (v40)
        {
          a2 = 0;
LABEL_96:
          v62 = CFAbsoluteTimeGetCurrent();
          v63 = CFDateCreate(kCFAllocatorDefault, v62);
          if (v63)
          {
            v64 = v63;
            CFDictionarySetValue(v40, @"atjHistTblEntLastSeenTimeStamp", v63);
            CFRelease(v64);
          }

LABEL_98:
          if (a4 == 2)
          {
            sub_10000847C();
            if (v19)
            {
              v65 = 18000.0;
            }

            else
            {
              v65 = 120.0;
            }
          }

          else
          {
            v65 = 0.0;
            if (a4 == 1)
            {
              sub_10000847C();
              if (v19)
              {
                v65 = 60.0;
              }

              else
              {
                v65 = 5.0;
              }
            }
          }

          v70 = *(a1 + 32);
          if (v70)
          {
            if (sub_1001AE568(v70) + *(a1 + 48) >= v65)
            {
              v71 = *(a1 + 32);
              if (v71)
              {
                if (CFDictionaryGetValue(v71, @"atjHistTblEntUserPromptPending") == kCFBooleanTrue)
                {
                  v72 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"ATJManager: prompt user for action=%d", a4}];
                  }

                  objc_autoreleasePoolPop(v72);
                  a2 = 1;
                }
              }
            }
          }

          goto LABEL_119;
        }
      }

      else
      {
        v17 = *(a1 + 48);
        sub_10000847C();
        v18 = 60.0;
        if (!v19)
        {
          v18 = 25.0;
        }

        if (v17 > v18)
        {
          v20 = *(a1 + 32);
          if (v20)
          {
            valuePtr = v17 + sub_1001AE568(*(a1 + 32));
            v21 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
            if (v21)
            {
              v22 = v21;
              CFDictionarySetValue(v20, @"atjHistTblEntInRangeTime", v21);
              CFRelease(v22);
            }
          }

          if (!*(a1 + 56))
          {
            v23 = *(a1 + 24);
            if (v23)
            {
              v24 = *(a1 + 32);
              v81.length = CFArrayGetCount(*(a1 + 24));
              v81.location = 0;
              if (CFArrayContainsValue(v23, v81, v24))
              {
                v34 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"ATJManager: atjTableEntry already exists in table", v74, v75, v76}];
                }
              }

              else
              {
                CFArrayGetCount(*(a1 + 24));
                sub_10000847C();
                v26 = 5;
                if (v19)
                {
                  v26 = 64;
                }

                if (v25 >= v26)
                {
                  v27 = *(a1 + 24);
                  v82.length = CFArrayGetCount(v27);
                  v82.location = 0;
                  CFArraySortValues(v27, v82, sub_1001116B0, 0);
                  if (*(a1 + 32))
                  {
                    if (*(a1 + 56))
                    {
                      v28 = *(a1 + 24);
                      v83.length = CFArrayGetCount(v28);
                      v83.location = 0;
                      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v28, v83, *(a1 + 32));
                      if (FirstIndexOfValue != -1)
                      {
                        CFArrayRemoveValueAtIndex(*(a1 + 24), FirstIndexOfValue);
                        CFArrayInsertValueAtIndex(*(a1 + 24), 0, *(a1 + 32));
                      }
                    }
                  }

                  v30 = *(a1 + 24);
                  sub_10000847C();
                  if (v19)
                  {
                    v31 = 63;
                  }

                  else
                  {
                    v31 = 4;
                  }

                  CFArrayGetCount(v30);
                  sub_10000847C();
                  v33 = -5;
                  if (v19)
                  {
                    v33 = -64;
                  }

                  v84.length = v32 + v33 + 1;
                  v84.location = v31;
                  CFArrayReplaceValues(v30, v84, 0, 0);
                }

                CFArrayAppendValue(*(a1 + 24), v24);
                v34 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"ATJManager: %ld entries in atjHistory Table, add %@ to %@", CFArrayGetCount(*(a1 + 24)), v24, *(a1 + 24)}];
                }
              }
            }

            else
            {
              v34 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s, ATJManager: atj table is NULL", "__WiFiATJMgrATJHistTblAddEntry"}];
              }
            }

            objc_autoreleasePoolPop(v34);
          }
        }

        v42 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v43 = "monitored";
          if (!*(a1 + 56))
          {
            v43 = "unmonitored";
          }

          [off_100298C40 WFLog:3 message:{"ATJManager: device moved from %s atj point after %f seconds", v43, *(a1 + 48)}];
        }

        objc_autoreleasePoolPop(v42);
        v44 = *(a1 + 32);
        if (v44)
        {
          CFRelease(v44);
          *(a1 + 32) = 0;
        }

        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
      }
    }

    if (CFArrayGetCount(a2) && (v45 = CFArrayGetCount(*(a1 + 24)), v45 >= 1))
    {
      v66 = v45;
      v67 = 0;
      while (1)
      {
        v68 = CFArrayGetValueAtIndex(*(a1 + 24), v67);
        if (v68)
        {
          if (sub_1001AE46C(v68, a2))
          {
            break;
          }
        }

        if (v66 == ++v67)
        {
          goto LABEL_71;
        }
      }

      v69 = CFArrayGetValueAtIndex(*(a1 + 24), v67);
      a2 = 0;
      *(a1 + 32) = CFRetain(v69);
      *(a1 + 56) = 1;
    }

    else
    {
LABEL_71:
      valuePtr = 0.0;
      v46 = CFArrayGetCount(a2);
      if (v46 && (v47 = v46, (v48 = CFDateCreate(kCFAllocatorDefault, v9)) != 0))
      {
        v49 = v48;
        v50 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
        if (v50)
        {
          v51 = v50;
          Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          if (Mutable)
          {
            v53 = Mutable;
            v54 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            v55 = v54;
            if (v54)
            {
              v77 = a4;
              CFDictionaryAddValue(v54, @"atjHistTblEntCreationTimeStamp", v49);
              CFDictionaryAddValue(v55, @"atjHistTblEntLastSeenTimeStamp", v49);
              CFDictionaryAddValue(v55, @"atjHistTblEntInRangeTime", v51);
              CFDictionarySetValue(v55, @"atjHistTblEntUserPromptPending", kCFBooleanTrue);
              if (v47 >= 1)
              {
                for (i = 0; i != v47; ++i)
                {
                  if (CFArrayGetCount(v53) > 4)
                  {
                    break;
                  }

                  v57 = CFArrayGetValueAtIndex(a2, i);
                  if (v57)
                  {
                    v58 = sub_10000A540(v57, @"BSSID");
                    if (v58)
                    {
                      v59 = v58;
                      v85.length = CFArrayGetCount(v53);
                      v85.location = 0;
                      if (!CFArrayContainsValue(v53, v85, v59))
                      {
                        CFArrayAppendValue(v53, v59);
                      }
                    }
                  }
                }
              }

              CFDictionaryAddValue(v55, @"atjHistTblEntBSSIDList", v53);
              if (!CFArrayGetCount(v53))
              {
                CFRelease(v55);
                v55 = 0;
              }

              a4 = v77;
            }

            CFRelease(v53);
          }

          else
          {
            v55 = 0;
          }

          CFRelease(v51);
        }

        else
        {
          v55 = 0;
        }

        CFRelease(v49);
      }

      else
      {
        v55 = 0;
      }

      *(a1 + 32) = v55;
      *(a1 + 56) = 0;
      a2 = a4 == 2;
    }

    *(a1 + 48) = 0;
    v60 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v61 = "monitored";
      if (!*(a1 + 56))
      {
        v61 = "unmonitored";
      }

      [off_100298C40 WFLog:3 message:{"ATJManager: device detected at a previously %s atj point", v61}];
    }

    objc_autoreleasePoolPop(v60);
    v40 = *(a1 + 32);
    if (!v40)
    {
      goto LABEL_98;
    }

    goto LABEL_96;
  }

LABEL_119:
  *(a1 + 40) = v9;
  sub_1001AD798(a1);
  return a2;
}

uint64_t sub_1001AE46C(const __CFDictionary *a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  result = 0;
  if (theArray)
  {
    if (Count)
    {
      result = CFDictionaryGetValue(a1, @"atjHistTblEntBSSIDList");
      if (result)
      {
        v6 = result;
        v7 = CFArrayGetCount(result);
        if (v7 >= 1)
        {
          v8 = v7;
          v9 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
            if (ValueAtIndex)
            {
              if (Count >= 1)
              {
                break;
              }
            }

LABEL_14:
            if (++v9 == v8)
            {
              return 0;
            }
          }

          v11 = ValueAtIndex;
          v12 = 0;
          while (1)
          {
            v13 = CFArrayGetValueAtIndex(theArray, v12);
            if (v13)
            {
              v14 = sub_10000A540(v13, @"BSSID");
              if (v14)
              {
                if (CFEqual(v11, v14))
                {
                  return 1;
                }
              }
            }

            if (Count == ++v12)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

double sub_1001AE568(const __CFDictionary *a1)
{
  valuePtr = 0;
  v1 = 0.0;
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"atjHistTblEntInRangeTime");
    if (Value)
    {
      return CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:"atjTableEntry does not have in range time"];
      }

      objc_autoreleasePoolPop(v4);
    }
  }

  return v1;
}

void sub_1001AE5F8(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 32);
    if (v1)
    {
      CFDictionarySetValue(v1, @"atjHistTblEntUserPromptPending", kCFBooleanFalse);
    }
  }
}

void sub_1001AE678(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: from scan result not found for notification (%@)", "-[WiFiUserNotificationManager userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001AE6E8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: to scan result not found for notification (%@)", "-[WiFiUserNotificationManager userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001AE758()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: notifyReason is nil", "-[WiFiUserNotificationManager userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AE7C4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: recommendation not found for notification (%@)", "-[WiFiUserNotificationManager userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:]", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001AE834()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: no scan results", "-[WiFiTimeDeferredNetworksAJManager setScanResultsWithAutoJoinSessionCompletion:complete:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AE8A0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: scanResults NULL", "-[WiFiTimeDeferredNetworksAJManager setScanResultsWithAutoJoinSessionCompletion:complete:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AE99C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"failed to create SFRemoteHotspotSession"];
  }

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1001AE9E8(uint64_t a1)
{
  v1 = objc_autoreleasePoolPush();
  if (objc_opt_class())
  {
    if (!qword_100298B30)
    {
      pthread_once(&stru_100297E50, sub_100118564);
    }

    Instance = _CFRuntimeCreateInstance();
    v3 = Instance;
    if (Instance)
    {
      *(Instance + 16) = 0u;
      *(Instance + 32) = 0u;
      v4 = objc_alloc_init(AudioRouteMonitor);
      *(v3 + 40) = v4;
      [(AudioRouteMonitor *)v4 initializeWithHandler:v3];
    }
  }

  else
  {
    v3 = 0;
  }

  objc_autoreleasePoolPop(v1);
  return v3;
}

id sub_1001AEFA8(_BYTE *a1)
{
  if (*a1)
  {
    v1 = [NSString stringWithUTF8String:a1];
  }

  else
  {
    v1 = @"??????";
  }

  result = [(__CFString *)v1 hasPrefix:@"WiFiDebug"];
  if ((result & 1) == 0)
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:2 message:{"Log collection started (event=DumpLogs, reason=%@)", v1}];
    }

    objc_autoreleasePoolPop(v3);
    result = objc_alloc_init(sub_10011ABC0());
    if (result)
    {
      v4 = result;
      v8 = @"Reason";
      v9 = v1;
      result = [sub_10011ACAC() requestWithItemID:71 configuration:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v9, &v8, 1)}];
      if (result)
      {
        v6[0] = @"Reason";
        v6[1] = @"Compress";
        v7[0] = v1;
        v7[1] = &__kCFBooleanTrue;
        v5 = result;
        return [v4 collectLogs:+[NSArray arrayWithObjects:count:](NSArray configuration:"arrayWithObjects:count:" update:&v5 reply:{1), +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v7, v6, 2), 0, &stru_100263450}];
      }
    }
  }

  return result;
}

id sub_1001AF130(_BYTE *a1)
{
  if (*a1)
  {
    v1 = [NSString stringWithUTF8String:a1];
  }

  else
  {
    v1 = @"??????";
  }

  result = [(__CFString *)v1 hasPrefix:@"WiFiDebug"];
  if ((result & 1) == 0)
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:2 message:{"Log collection started (event=DatapathStall, reason=%@)", v1}];
    }

    objc_autoreleasePoolPop(v3);
    result = objc_alloc_init(sub_10011ABC0());
    if (result)
    {
      v4 = result;
      result = [sub_10011ACAC() requestWithItemID:72 configuration:0];
      if (result)
      {
        v6[0] = @"Reason";
        v6[1] = @"Compress";
        v7[0] = v1;
        v7[1] = &__kCFBooleanTrue;
        v5 = result;
        return [v4 collectLogs:+[NSArray arrayWithObjects:count:](NSArray configuration:"arrayWithObjects:count:" update:&v5 reply:{1), +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v7, v6, 2), 0, &stru_100263470}];
      }
    }
  }

  return result;
}

void sub_1001AFDF4(void *a1)
{
  v1 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null clientPath", "-[WiFiUserInteractionMonitorNetworkAgent assertAgentWithOptions:]"}];
  }

  objc_autoreleasePoolPop(v1);
}

void sub_1001AFE6C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null clientUUID", "-[WiFiUserInteractionMonitorNetworkAgent assertAgentWithOptions:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AFED8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null userInfo", "-[WiFiUserInteractionMonitorNetworkAgent assertAgentWithOptions:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AFF44()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: notify token is null", "-[WiFiUserInteractionMonitor _notifyCaptiveWithApplicationState]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001AFFB0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Invalid cellular interface name\n"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001B0008()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Invalid cellular connection reference\n"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001B0060()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Invalid dictionary\n"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001B02B0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null incoming data.", "-[WiFiIDSSyncEngine service:account:incomingData:fromID:context:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001B031C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "-[WiFiIDSSyncEngine updateGuessedNetworkCredentials:password:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1001B0388(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!a1)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null syncFormattedNetworkRecord", "WiFiNetworkSyncHelperGetNetworkSecurity"}];
    }

    objc_autoreleasePoolPop(v7);
    goto LABEL_7;
  }

  v3 = [a1 objectForKey:@"WEP"];
  if (v3 && ([v3 BOOLValue] & 1) != 0)
  {
    v4 = 1;
  }

  else if ([a1 objectForKey:@"WPA3_RSN_IE"])
  {
    v4 = 4;
  }

  else if ([a1 objectForKey:@"RSN_IE"])
  {
    v4 = 3;
  }

  else
  {
    if (![a1 objectForKey:@"WPA_IE"])
    {
LABEL_7:
      v4 = 0;
      goto LABEL_8;
    }

    v4 = 2;
  }

LABEL_8:
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: <%@> security %d", "WiFiNetworkSyncHelperGetNetworkSecurity", objc_msgSend(a1, "objectForKey:", @"SSID_STR", v4}];
  }

  objc_autoreleasePoolPop(v5);
  objc_autoreleasePoolPop(v2);
  return v4;
}

void sub_1001B04D8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: network object passed in is not WiFiNetwork type", "WiFiNetworkSyncHelperCreateSyncableNetworkRecord"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001B0544()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null customNetworkSetDictRef", "__WiFiNetworkSyncHelperIsCustomNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001B05B0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: error - null apMode", "WiFiNetworkSyncHelperCreateSyncableNetworkRecord"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001B061C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null ssid... abort", "WiFiNetworkSyncHelperCreateSyncableNetworkRecord"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001B0688()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null networkRecord", "WiFiNetworkSyncHelperCreateSyncableNetworkRecord"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001B06F4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null cloudNetwork", "WiFiNetworkSyncHelperCreateSyncableNetworkRecord"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001B0760()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager", "WiFiNetworkSyncHelperCreateSyncableNetworkRecord"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001B07CC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null networkRef ", "WiFiNetworkSyncHelperCreateSyncableNetworkRecord"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001B0838()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkSyncHelperSanitizeNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001B08A4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null WIFICLOUDSYNC_NETWORKKEY_SSID", "WiFiNetworkSyncHelperCreateNetworkRef"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001B0910()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null networkRecord", "WiFiNetworkSyncHelperCreateNetworkRef"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001B097C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null cloudNetworkDict", "WiFiNetworkSyncHelperCreateNetworkRef"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001B09E8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager", "WiFiNetworkSyncHelperAddNetworkToPlist"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001B0A54()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null networkRef ", "WiFiNetworkSyncHelperAddNetworkToPlist"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001B0AC0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager", "WiFiNetworkSyncHelperRemoveNetworkFromPlist"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001B0B2C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null networkRef ", "WiFiNetworkSyncHelperRemoveNetworkFromPlist"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001B0B98()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Error: %s: eventObject is null", "__WiFiCoexManagerHandleEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v5 = _CFStringFind(theString, stringToFind, compareOptions);
  length = v5.length;
  location = v5.location;
  result.length = length;
  result.location = location;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}