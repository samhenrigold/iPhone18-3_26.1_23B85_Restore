CFTypeID ipsec_set_initial_values(uint64_t a1, const void *a2)
{
  result = CFDictionaryGetTypeID();
  if (a2)
  {
    v5 = result;
    result = CFGetTypeID(a2);
    if (result == v5)
    {
      v6 = 0;
      result = getNumber(a2, @"LastCause", &v6);
      *(a1 + 596) = v6;
    }
  }

  return result;
}

uint64_t ipsec_user_notification_callback(uint64_t result, CFUserNotificationRef userNotification, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  v9 = *(result + 592);
  if ((a3 & 3) != 0)
  {
    if (v9)
    {

      return ipsec_stop(result, userNotification, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      v16 = *(result + 596);
      v17 = v16 > 0x15;
      v18 = (1 << v16) & 0x302000;
      if (!v17 && v18 != 0)
      {
        result = *(result + 584);
        if (result)
        {
          v20 = *(v8 + 144);

          return ne_sm_bridge_start_profile_janitor(result, v20);
        }
      }
    }

    return result;
  }

  if (v9 != 4)
  {
    return result;
  }

  v11 = *(result + 916);
  if ((v11 & 8) != 0)
  {
    v21 = 16529;
LABEL_22:
    v24[0] = v21;
    ResponseValue = CFUserNotificationGetResponseValue(userNotification, kCFUserNotificationTextFieldValuesKey, 0);
    v12 = 1;
    goto LABEL_23;
  }

  if ((v11 & 0x10) != 0)
  {
    v21 = 16528;
    goto LABEL_22;
  }

  if (v11)
  {
    v24[0] = 16521;
    ResponseValue = CFUserNotificationGetResponseValue(userNotification, kCFUserNotificationTextFieldValuesKey, 0);
    v11 = *(v8 + 916);
    v12 = 1;
    if ((v11 & 4) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
    if ((v11 & 4) != 0)
    {
LABEL_11:
      v13 = v12;
      v14 = &v24[8 * v12];
      v15 = 16523;
LABEL_30:
      *v14 = v15;
      *(v14 + 1) = CFUserNotificationGetResponseValue(userNotification, kCFUserNotificationTextFieldValuesKey, v13);
      ++v12;
      goto LABEL_23;
    }
  }

  if ((v11 & 2) != 0)
  {
    v13 = v12;
    v14 = &v24[8 * v12];
    v15 = 16522;
    goto LABEL_30;
  }

LABEL_23:
  v22 = *(v8 + 776);
  if (v22)
  {
    Current = CFAbsoluteTimeGetCurrent();
    CFRunLoopTimerSetNextFireDate(v22, Current + 30.0);
  }

  sub_1EA40(v8, 3, a3, a4, a5, a6, a7, a8);
  return racoon_send_cmd_xauthinfo(*(v8 + 784), *(v8 + 748), v24, v12);
}

uint64_t sub_1EA40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 592) != a2)
  {
    v9 = a2;
    v10 = result;
    *(result + 592) = a2;
    phase_changed(result, a2, a3, a4, a5, a6, a7, a8);
    v11 = gDynamicStore;
    v12 = *(v10 + 24);

    return publish_dictnumentry(v11, v12, kSCEntNetIPSec, kSCPropNetIPSecStatus, v9);
  }

  return result;
}

uint64_t racoon_send_cmd_xauthinfo(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  v8 = a4;
  if (a4 < 1)
  {
    v13 = 20;
  }

  else
  {
    v9 = (a3 + 8);
    v10 = 20;
    v11 = a4;
    do
    {
      if (*v9)
      {
        v12 = CFStringGetLength(*v9) + 4;
      }

      else
      {
        v12 = 4;
      }

      v10 += v12;
      v9 += 2;
      --v11;
    }

    while (v11);
    v13 = v10;
  }

  v14 = malloc_type_malloc(v13, 0xF03AD8B4uLL);
  if (!v14)
  {
    return 0xFFFFFFFFLL;
  }

  v20 = v14;
  *v14 = 0;
  *(v14 + 1) = 0;
  *v14 = 5120;
  *(v14 + 7) = bswap32(v13 - 16) >> 16;
  *(v14 + 4) = a2;
  if (a4 >= 1)
  {
    v21 = v14 + 20;
    v22 = (a3 + 8);
    do
    {
      usedBufLen = 0;
      if (*v22)
      {
        Length = CFStringGetLength(*v22);
      }

      else
      {
        Length = 0;
      }

      *v21 = bswap32(Length | (*(v22 - 4) << 16));
      v21 += 4;
      if (Length)
      {
        v28.location = 0;
        v28.length = Length;
        CFStringGetBytes(*v22, v28, 0x8000100u, 0, 0, v21, Length, &usedBufLen);
        v21 += Length;
      }

      v22 += 2;
      --v8;
    }

    while (v8);
  }

  sub_20920(a1, v20, v13, v15, v16, v17, v18, v19);
  v24 = ne_log_obj();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "IPSec sending Extended Authentication.\n", buf, 2u);
  }

  free(v20);
  return 0;
}

void sub_1EC90(uint64_t a1, int a2, int a3)
{
  v242 = 0;
  v240 = 0;
  v241 = 0;
  v237 = 0;
  v238 = 0;
  v235 = 0;
  v236 = 0;
  v234 = 0;
  *(a1 + 908) = 0;
  v4 = *(a1 + 816);
  v5 = v4;
  if (!v4)
  {
    v4 = *(a1 + 832);
    if (!v4)
    {
      return;
    }

    v5 = a1 + 848;
  }

  v239 = 0;
  v6 = bswap32(*(v5 + 14)) >> 16;
  Mutable = 0;
  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration started.\n", buf, 2u);
  }

  if (v6 < 0x1D)
  {
    goto LABEL_39;
  }

  v229 = 0;
  v14 = v6 - 28;
  v219 = a1;
  v227 = (a1 + 908);
  v15 = -1;
  v220 = v6 - 28;
  v16 = (v4 + 44);
  do
  {
    v17 = v16[1];
    v18 = bswap32(*v16);
    v19 = HIWORD(v18) & 0x7FFF;
    if (v19 != 28673)
    {
      if (v19 == 2)
      {
        v15 = *(v16 + 1);
        v242 = v15;
        v23 = ne_log_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24.s_addr = v15;
          v25 = inet_ntoa(v24);
          *buf = 136315138;
          *&buf[4] = v25;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration: INTERNAL-IP4-MASK = %s.\n", buf, 0xCu);
        }
      }

      else if (v19 == 1)
      {
        v242 = *(v16 + 1);
        v20 = ne_log_obj();
        v229 = v242;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21.s_addr = v242;
          v22 = inet_ntoa(v21);
          *buf = 136315138;
          *&buf[4] = v22;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration: INTERNAL-IP4-ADDRESS = %s.\n", buf, 0xCu);
        }
      }

      goto LABEL_31;
    }

    v26 = ne_log_obj();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v17 != 256;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration: SAVE-PASSWORD = %d.\n", buf, 8u);
    }

    v27 = *(a1 + 916);
    if ((v17 != 256) == ((v27 & 0x40) == 0))
    {
      v28 = *(a1 + 584);
      if (v28)
      {
        ne_sm_bridge_clear_saved_password(v28);
      }

      else
      {
        if (v17 == 256)
        {
          v29 = 0;
        }

        else
        {
          v29 = kSCValNetIPSecXAuthPasswordEncryptionPrompt;
        }

        if (!UpdatePasswordPrefs(*(a1 + 24), *(a1 + 32), 4, kSCPropNetIPSecXAuthPasswordEncryption, v29))
        {
          goto LABEL_27;
        }
      }

      v30 = *(a1 + 916);
      if (v17 == 256)
      {
        *(a1 + 916) = v30 & 0xFFBF;
        CFDictionaryRemoveValue(*(a1 + 608), kSCPropNetIPSecXAuthPasswordEncryption);
        if ((v27 & 0x20) == 0)
        {
          goto LABEL_31;
        }

LABEL_30:
        if ((*(a1 + 916) & 0xC0) == 0x40)
        {
          sub_240C8(a1, (a1 + 744), (a1 + 760), 0, v10, v11, v12, v13);
          return;
        }

        goto LABEL_31;
      }

      *(a1 + 916) = v30 | 0x40;
      CFDictionarySetValue(*(a1 + 608), kSCPropNetIPSecXAuthPasswordEncryption, kSCValNetIPSecXAuthPasswordEncryptionPrompt);
LABEL_27:
      if ((v27 & 0x20) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

LABEL_31:
    v31 = __rev16(v17);
    if (v18 >> 16 >= 0)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    v33 = v16 + v32;
    v34 = v14 - v32;
    v16 = (v33 + 4);
    v14 = v34 - 4;
  }

  while (v34 > 4);
  v35 = a1;
  if (!v229)
  {
LABEL_39:
    sub_1E1E8(3, @"IPSec Controller: Internal IP Address missing from Mode Config packet ", v8, v9, v10, v11, v12, v13, v204);
    return;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  theArray = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v207 = v15;
  if (CFDictionaryContainsKey(*(a1 + 608), @"ForceLocalAddress") && CFDictionaryGetValue(*(a1 + 608), @"ForceLocalAddress") == kCFBooleanTrue)
  {
    Value = CFDictionaryGetValue(*(a1 + 608), @"LocalAddress");
    CFDictionarySetValue(Mutable, @"LocalAddress", Value);
    memset(__s, 0, sizeof(__s));
    v232 = 0;
    v40 = v220;
    v41 = (v4 + 44);
    if (*(a1 + 760))
    {
      LOWORD(__s[0]) = 7708;
      v43 = __s;
      nw_nat64_synthesize_v6();
    }

    else
    {
      v43 = (a1 + 744);
    }

    getnameinfo(v43, *v43, buf, 0x39u, 0, 0, 10);
    AddString(Mutable, @"RemoteAddress", buf);
  }

  else
  {
    v36.s_addr = *(v4 + 20);
    v37 = inet_ntoa(v36);
    AddString(Mutable, @"LocalAddress", v37);
    v242 = *(v4 + 16);
    v38.s_addr = v242;
    v39 = inet_ntoa(v38);
    AddString(Mutable, @"RemoteAddress", v39);
    v40 = v220;
    v41 = (v4 + 44);
  }

  v214 = 0;
  v44 = 0;
  v45 = 0;
  v226 = 0;
  v46 = 0;
  v210 = 1;
  v211 = 1;
  do
  {
    v47 = v41[1];
    v48 = bswap32(*v41);
    v49 = HIWORD(v48) & 0x7FFF;
    v50 = __rev16(v47);
    if (v49 > 0x7002)
    {
      if ((HIWORD(v48) & 0x7FFF) <= 0x7005u)
      {
        if (v49 != 28675)
        {
          if (v49 != 28676)
          {
            goto LABEL_172;
          }

          if (!v41[1])
          {
            v210 = 0;
            goto LABEL_172;
          }

          v221 = v40;
          v224 = v48;
          v212 = v44;
          v215 = v50;
          v217 = v41;
          v51 = (v41 + 2);
          v52 = v242;
          v53 = (v50 - 1) / 0xEu;
          v54 = v50 + 14;
          v55 = v226;
          while (1)
          {
            v56 = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            CFDictionarySetValue(v56, @"Mode", @"Tunnel");
            CFDictionarySetValue(v56, @"Direction", @"InOut");
            CFDictionarySetValue(v56, @"Level", @"Unique");
            v57.s_addr = v229;
            v58 = inet_ntoa(v57);
            AddString(v56, @"LocalAddress", v58);
            AddNumber(v56, @"LocalPrefix", 32);
            v59 = *v51;
            v60.s_addr = *v51;
            v61 = inet_ntoa(v60);
            AddString(v56, @"RemoteAddress", v61);
            v62 = v51[1];
            if (*v227)
            {
              if (!v62)
              {
                goto LABEL_57;
              }
            }

            else if (v62 == -1)
            {
              *v227 = v59;
            }

            else
            {
              *v227 = v59 | 0x1000000;
              if (!v62)
              {
LABEL_57:
                v63 = 0;
                goto LABEL_60;
              }
            }

            v63 = 32 - __clz(__rbit32(bswap32(v62)));
LABEL_60:
            AddNumber(v56, @"RemotePrefix", v63);
            if (!v55)
            {
              v64 = ne_log_obj();
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_0, v64, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration: SPLIT-INCLUDE.\n", buf, 2u);
              }
            }

            update_service_route(v35, v229, -1, v52, 0, 0, 0, 0);
            CFArrayAppendValue(theArray, v56);
            CFRelease(v56);
            ++v55;
            v54 -= 14;
            v51 = (v51 + 14);
            if (v54 <= 14)
            {
              v210 = 0;
              v226 += v53 + 1;
              goto LABEL_164;
            }
          }
        }

        if (v237)
        {
          goto LABEL_172;
        }

        v237 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        if (!v237 || !v47)
        {
          goto LABEL_172;
        }

        v213 = v44;
        v99 = v50;
        v100 = (v41 + 2);
        v215 = v99;
        v218 = v41;
        v101 = v99;
        v223 = v40;
        v225 = v48;
LABEL_132:
        __s[0] = 0;
        v102 = CFStringCreateWithCString(0, v100, 0);
        if (!v102)
        {
          my_CFRelease(&v237);
          goto LABEL_180;
        }

        v103 = v102;
        v104 = CFStringGetLength(v102) + 2;
        v105 = malloc_type_malloc(v104, 0xF3A80EABuLL);
        __s[0] = v105;
        if (!v105)
        {
          goto LABEL_154;
        }

        v106 = v105;
        CFStringGetCString(v103, v105, v104, 0);
        v107 = __s[0];
        v108 = ",";
        if (!strchr(__s[0], 44))
        {
          v108 = ";";
          if (!strchr(v107, 59))
          {
            v108 = "\n";
            if (!strchr(v107, 10))
            {
              v108 = "\r";
              if (!strchr(v107, 13))
              {
                if (strchr(v107, 32))
                {
                  v108 = " ";
                }

                else
                {
                  v108 = &unk_2DC90;
                }
              }
            }
          }
        }

        v109 = strsep(__s, v108);
        while (1)
        {
          if (v109)
          {
            if (!*v109)
            {
              goto LABEL_150;
            }
          }

          else
          {
            v109 = __s[0];
          }

          v110 = CFStringCreateWithCString(0, v109, 0);
          if (!v110)
          {
            my_CFRelease(&v237);
LABEL_153:
            free(v106);
            v40 = v223;
            v41 = v218;
LABEL_154:
            v100 += v104;
            v101 -= v104;
            CFRelease(v103);
            v48 = v225;
            if (v101 <= 0)
            {
LABEL_180:
              v35 = v219;
              v44 = v213;
LABEL_171:
              LODWORD(v50) = v215;
              goto LABEL_172;
            }

            goto LABEL_132;
          }

          CFArrayAppendValue(v237, v110);
          v111 = ne_log_obj();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
          {
            CStringPtr = CFStringGetCStringPtr(v110, 0);
            *buf = 67109378;
            *&buf[4] = v45;
            *&buf[8] = 2080;
            *&buf[10] = CStringPtr;
            _os_log_impl(&dword_0, v111, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration: SPLITDNS-NAME[%d] = %s.\n", buf, 0x12u);
          }

          CFRelease(v110);
          ++v45;
LABEL_150:
          v109 = strsep(__s, v108);
          if (!v109)
          {
            goto LABEL_153;
          }
        }
      }

      if (v49 == 28678)
      {
        if (!v41[1])
        {
          goto LABEL_172;
        }

        v221 = v40;
        v224 = v48;
        v212 = v44;
        v215 = v50;
        v217 = v41;
        v113 = (v41 + 2);
        v114 = v242;
        v115 = v50 + 14;
        do
        {
          v116 = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          CFDictionarySetValue(v116, @"Mode", @"Tunnel");
          CFDictionarySetValue(v116, @"Direction", @"InOut");
          CFDictionarySetValue(v116, @"Level", @"None");
          v117.s_addr = v229;
          v118 = inet_ntoa(v117);
          AddString(v116, @"LocalAddress", v118);
          AddNumber(v116, @"LocalPrefix", 32);
          v119 = *v113;
          v120.s_addr = *v113;
          v121 = inet_ntoa(v120);
          AddString(v116, @"RemoteAddress", v121);
          v122 = v113[1];
          v123 = 32 - __clz(__rbit32(bswap32(v122)));
          if (v122)
          {
            v124 = v123;
          }

          else
          {
            v124 = 0;
          }

          AddNumber(v116, @"RemotePrefix", v124);
          v125 = ne_log_obj();
          if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
          {
            v126.s_addr = v119;
            v127 = inet_ntoa(v126);
            v128.s_addr = v229;
            v129 = inet_ntoa(v128);
            *buf = 67110146;
            *&buf[4] = v226;
            *&buf[8] = 2080;
            *&buf[10] = v127;
            v244 = 1024;
            v245 = v124;
            v246 = 2080;
            v247 = v129;
            v248 = 1024;
            v249 = 32;
            _os_log_impl(&dword_0, v125, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration: LOCAL-LAN[%d] = destination %s/%d -> gateway %s/%d.\n", buf, 0x28u);
          }

          update_service_route(v35, v229, -1, v114, 0, 0, 0, 0);
          CFArrayAppendValue(theArray, v116);
          CFRelease(v116);
          v115 -= 14;
          v113 = (v113 + 14);
        }

        while (v115 > 14);
LABEL_164:
        v44 = v212;
        v40 = v221;
        v41 = v217;
LABEL_170:
        v48 = v224;
        goto LABEL_171;
      }

      if (v49 != 28683)
      {
        goto LABEL_172;
      }

      if (!v41[1])
      {
        v44 = 0;
        v214 = 0;
        goto LABEL_172;
      }

      v222 = v40;
      v224 = v48;
      v214 = 0;
      v44 = 0;
      v69 = v41;
      v70 = v41;
      v215 = v50;
      v71 = v50;
      while (1)
      {
        v72 = (v70 + 4);
        v73 = bswap32(*(v70 + 2));
        v74 = HIWORD(v73) & 0x7FFF;
        v75 = __rev16(*(v70 + 3));
        if (v74 <= 4)
        {
          if ((HIWORD(v73) & 0x7FFF) > 2u)
          {
            if (v74 != 3)
            {
              if (v74 == 4)
              {
                v81 = ne_log_obj();
                if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109376;
                  *&buf[4] = v46;
                  *&buf[8] = 1024;
                  *&buf[10] = v75;
                  _os_log_impl(&dword_0, v81, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration: BROWSER-PROXY[%d] = auto-detect %d.\n", buf, 0xEu);
                }

                LODWORD(v214) = v75;
              }

              goto LABEL_113;
            }

            v85 = ne_log_obj();
            if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *&buf[4] = v46;
              *&buf[8] = 1024;
              *&buf[10] = v75;
              v78 = v85;
              v79 = "IPSec Network Configuration: BROWSER-PROXY[%d] = connection-type %d.\n";
              goto LABEL_108;
            }
          }

          else
          {
            if (v74 == 1)
            {
              v84 = ne_log_obj();
              if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *&buf[4] = v46;
                *&buf[8] = 1024;
                *&buf[10] = v75;
                _os_log_impl(&dword_0, v84, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration: BROWSER-PROXY[%d] = setting %d.\n", buf, 0xEu);
              }

              v211 = v75;
              goto LABEL_113;
            }

            if (v74 == 2)
            {
              v80 = ne_log_obj();
              if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *&buf[4] = v46;
                *&buf[8] = 1024;
                *&buf[10] = v75;
                v78 = v80;
                v79 = "IPSec Network Configuration: BROWSER-PROXY[%d] = browser-type %d.\n";
                goto LABEL_108;
              }
            }
          }
        }

        else if ((HIWORD(v73) & 0x7FFF) <= 6u)
        {
          if (v74 != 5)
          {
            if (v74 != 6 || v235)
            {
              goto LABEL_113;
            }

            v82 = v70 + 8;
            v83 = *(v70 + 3) ? v75 - (v82[v75 - 1] == 0) : 0;
            v235 = CFStringCreateWithBytes(0, v82, v83, 0x8000100u, 0);
            v92 = ne_log_obj();
            if (!os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_113;
            }

            v93 = CFStringGetCStringPtr(v235, 0);
            *buf = 67109378;
            *&buf[4] = v46;
            *&buf[8] = 2080;
            *&buf[10] = v93;
            v78 = v92;
            v79 = "IPSec Network Configuration: BROWSER-PROXY[%d] = server %s.\n";
LABEL_121:
            v88 = 18;
            goto LABEL_109;
          }

          v87 = ne_log_obj();
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            *&buf[4] = v46;
            *&buf[8] = 1024;
            *&buf[10] = v75;
            v78 = v87;
            v79 = "IPSec Network Configuration: BROWSER-PROXY[%d] = protocol %d.\n";
LABEL_108:
            v88 = 14;
LABEL_109:
            _os_log_impl(&dword_0, v78, OS_LOG_TYPE_DEFAULT, v79, buf, v88);
          }
        }

        else
        {
          if (v74 == 7)
          {
            v86 = ne_log_obj();
            if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *&buf[4] = v46;
              *&buf[8] = 1024;
              *&buf[10] = v75;
              _os_log_impl(&dword_0, v86, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration: BROWSER-PROXY[%d] = port %d.\n", buf, 0xEu);
            }

            HIDWORD(v214) = v75;
            goto LABEL_113;
          }

          if (v74 == 8)
          {
            v89 = ne_log_obj();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *&buf[4] = v46;
              *&buf[8] = 1024;
              *&buf[10] = v75;
              _os_log_impl(&dword_0, v89, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration: BROWSER-PROXY[%d] = bypass-local %d.\n", buf, 0xEu);
            }

            v44 = v75;
            goto LABEL_113;
          }

          if (v74 == 9 && !v234)
          {
            v234 = CFStringCreateWithBytes(0, v70 + 8, v75, 0, 0);
            v76 = ne_log_obj();
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
            {
              v77 = CFStringGetCStringPtr(v234, 0);
              *buf = 67109378;
              *&buf[4] = v46;
              *&buf[8] = 2080;
              *&buf[10] = v77;
              v78 = v76;
              v79 = "IPSec Network Configuration: BROWSER-PROXY[%d] = bypass-address-list %s.\n";
              goto LABEL_121;
            }
          }
        }

LABEL_113:
        if (v73 >> 16 >= 0)
        {
          v90 = v75;
        }

        else
        {
          v90 = 0;
        }

        v91 = v71 - v90;
        v70 = v72 + v90;
        ++v46;
        v71 = v91 - 4;
        if (v91 <= 4)
        {
          v40 = v222;
          v41 = v69;
          goto LABEL_170;
        }
      }
    }

    if (v49 == 3)
    {
      if (v236 || (v236 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks)) != 0)
      {
        v94 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", *(v41 + 4), *(v41 + 5), *(v41 + 6), *(v41 + 7));
        if (v94)
        {
          v95 = v94;
          v216 = v50;
          v50 = v44;
          v96 = v48;
          CFArrayAppendValue(v236, v94);
          v97 = ne_log_obj();
          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
          {
            v98 = CFStringGetCStringPtr(v95, 0);
            *buf = 136315138;
            *&buf[4] = v98;
            _os_log_impl(&dword_0, v97, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration: INTERNAL-IP4-DNS = %s.\n", buf, 0xCu);
          }

          CFRelease(v95);
          v48 = v96;
          v44 = v50;
          LODWORD(v50) = v216;
        }
      }
    }

    else
    {
      if (v49 == 28672)
      {
        if (*(v35 + 960))
        {
          goto LABEL_172;
        }

        *(v35 + 960) = CFStringCreateWithBytes(0, v41 + 4, v50, 0, 0);
        v130 = ne_log_obj();
        if (!os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_172;
        }

        v131 = CFStringGetCStringPtr(*(v35 + 960), 0);
        *buf = 136315138;
        *&buf[4] = v131;
        v67 = v130;
        v68 = "IPSec Network Configuration: BANNER = %s.\n";
      }

      else
      {
        if (v49 != 28674)
        {
          goto LABEL_172;
        }

        if (v238)
        {
          goto LABEL_172;
        }

        v238 = CFStringCreateWithBytes(0, v41 + 4, v50, 0, 0);
        v65 = ne_log_obj();
        if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_172;
        }

        v66 = CFStringGetCStringPtr(v238, 0);
        *buf = 136315138;
        *&buf[4] = v66;
        v67 = v65;
        v68 = "IPSec Network Configuration: DEF-DOMAIN = %s.\n";
      }

      _os_log_impl(&dword_0, v67, OS_LOG_TYPE_DEFAULT, v68, buf, 0xCu);
    }

LABEL_172:
    if (v48 >> 16 >= 0)
    {
      v132 = v50;
    }

    else
    {
      v132 = 0;
    }

    v40 = v40 - v132 - 4;
    v41 = (v41 + v132 + 4);
  }

  while (v40 > 0);
  if (v210)
  {
    v133 = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v133, @"Mode", @"Tunnel");
    CFDictionarySetValue(v133, @"Direction", @"InOut");
    CFDictionarySetValue(v133, @"Level", @"Require");
    v135 = v229;
    v134.s_addr = v229;
    v242 = v229;
    v136 = inet_ntoa(v134);
    AddString(v133, @"LocalAddress", v136);
    AddNumber(v133, @"LocalPrefix", 32);
    v137 = ne_log_obj();
    if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
    {
      v138.s_addr = v229;
      v139 = inet_ntoa(v138);
      *buf = 136315394;
      *&buf[4] = v139;
      *&buf[12] = 1024;
      *&buf[14] = 32;
      _os_log_impl(&dword_0, v137, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration: DEFAULT-ROUTE = local-address %s/%d.\n", buf, 0x12u);
    }

    *(v35 + 908) = v229;
    CFDictionarySetValue(v133, @"RemoteAddress", @"0.0.0.0");
    AddNumber(v133, @"RemotePrefix", 0);
    update_service_route(v35, v229, -1, 0, 0, 0, 0, 0);
    v140 = theArray;
    CFArrayAppendValue(theArray, v133);
    CFRelease(v133);
    v141 = v210;
  }

  else
  {
    v141 = 0;
    v135 = v229;
    v140 = theArray;
  }

  CFDictionarySetValue(Mutable, @"Policies", v140);
  CFRelease(v140);
  if (!a3)
  {
LABEL_202:
    if (!a2)
    {
      my_CFRelease(&v237);
      my_CFRelease(&v238);
      my_CFRelease(&v236);
      my_CFRelease(&v235);
      my_CFRelease(&v234);
      my_CFRelease(&v241);
      my_CFRelease(&v240);
      my_CFRelease(&Mutable);
LABEL_240:
      if (a3)
      {
        *(v35 + 876) = 1;
      }

      v203 = ne_log_obj();
      if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v203, OS_LOG_TYPE_DEFAULT, "IPSec Network Configuration established.\n", buf, 2u);
      }

      return;
    }

    flags = 0;
    v163 = SCNetworkReachabilityCreateWithAddress(0, (v35 + 744));
    v164 = SCNetworkReachabilityGetFlags(v163, &flags);
    v165 = flags;
    CFRelease(v163);
    *buf = 0;
    __s[0] = 0;
    if (v164 && (v165 & 0x20000) != 0 || !*(v35 + 940))
    {
      if (!*(v35 + 918))
      {
        v167 = 0;
LABEL_212:
        if (v210)
        {
          v171 = 0;
        }

        else
        {
          v242 = v229;
          v171 = sub_23B70(Mutable, v229);
          *buf = v171;
          if (!v171)
          {
            sub_1E1E8(3, @"IPSec Controller: create_ipv4_route_array failed", v172, v173, v174, v175, v176, v177, v204);
          }
        }

        if (!*(v35 + 584))
        {
          sub_23E44(v35, &v242, v141);
        }

        v241 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        v240 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        stateaddr = create_stateaddr(gDynamicStore, *(v35 + 24), v35 + 104, *(v35 + 748), v229, v229, v207, v141, v171, v167);
        my_CFRelease(buf);
        my_CFRelease(__s);
        if (stateaddr)
        {
          CFArrayAppendValue(v240, kSCEntNetIPv4);
          CFArrayAppendValue(v241, stateaddr);
          CFRelease(stateaddr);
        }

        if (v210)
        {
          ipv6_dummy_primary = create_ipv6_dummy_primary(v35 + 104);
          if (ipv6_dummy_primary)
          {
            v180 = ipv6_dummy_primary;
            *(v35 + 892) = 1;
            CFArrayAppendValue(v240, kSCEntNetIPv6);
            CFArrayAppendValue(v241, v180);
            CFRelease(v180);
          }
        }

        if (v236)
        {
          v182 = v237;
          v181 = v238;
          if (!v237 && v238)
          {
            v183 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
            v237 = v183;
            v181 = v238;
            if (v183)
            {
              CFArrayAppendValue(v183, v238);
              v182 = v237;
              v181 = v238;
            }

            else
            {
              v182 = 0;
            }
          }

          dns = create_dns(gDynamicStore, *(v35 + 24), v236, v181, v182, 0);
          if (dns)
          {
            v185 = dns;
            CFArrayAppendValue(v240, kSCEntNetDNS);
            CFArrayAppendValue(v241, v185);
            CFRelease(v185);
          }
        }

        if (v211 == 2)
        {
          v186 = gDynamicStore;
          v187 = *(v35 + 24);
          v189 = v234;
          v188 = v235;
          v190 = v237;
          v191 = v214;
          v192 = HIDWORD(v214);
          v193 = v44;
        }

        else
        {
          v190 = v237;
          if (!v237)
          {
LABEL_237:
            v196 = *(v35 + 584);
            if (v196)
            {
              ne_sm_bridge_filter_state_dictionaries(v196);
            }

            publish_multiple_dicts(gDynamicStore, *(v35 + 24), v240, v241);
            sub_1E1E8(7, @"IPSec Controller: Published dictionaries to dynamic store.", v197, v198, v199, v200, v201, v202, v206);
            my_CFRelease(&v237);
            my_CFRelease(&v238);
            my_CFRelease(&v236);
            my_CFRelease(&v235);
            my_CFRelease(&v234);
            my_CFRelease(&v241);
            my_CFRelease(&v240);
            my_CFRelease(&Mutable);
            *(v35 + 872) = 1;
            goto LABEL_240;
          }

          v186 = gDynamicStore;
          v187 = *(v35 + 24);
          v191 = 0;
          v188 = 0;
          v192 = 0;
          v193 = 0;
          v189 = 0;
        }

        proxies = create_proxies(v186, v187, v191, v188, v192, v193, v189, v190);
        if (proxies)
        {
          v195 = proxies;
          CFArrayAppendValue(v240, kSCEntNetProxies);
          CFArrayAppendValue(v241, v195);
          CFRelease(v195);
        }

        goto LABEL_237;
      }

      v166 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      v167 = v166;
      __s[0] = v166;
      v168 = *(v35 + 748);
      v170 = v35 + 918;
      v169 = 0;
    }

    else
    {
      v166 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      v167 = v166;
      __s[0] = v166;
      v168 = *(v35 + 748);
      v169 = *(v35 + 940);
      v170 = 0;
    }

    sub_23958(v166, v168, 0xFFFFFFFF, v169, 1, v170);
    goto LABEL_212;
  }

  sub_1E1E8(7, @"IPSec Controller: Mode Config Policies %@", v142, v143, v144, v145, v146, v147, Mutable);
  if ((IPSecInstallPolicies(Mutable, -1, &v239) & 0x80000000) != 0)
  {
    sub_1E1E8(3, @"IPSec Controller: IPSecInstallPolicies failed '%s'", v148, v149, v150, v151, v152, v153, v239);
    goto LABEL_196;
  }

  *(v35 + 880) = my_CFRetain(Mutable);
  *(v35 + 888) = v141;
  *(v35 + 896) = v135;
  *(v35 + 900) = v207;
  tun_interface = create_tun_interface((v35 + 104), 0x10u, (v35 + 120), 3, 0);
  *(v35 + 904) = tun_interface;
  if (tun_interface == -1)
  {
    v161 = @"IPSec Controller: cannot create tunnel interface";
    goto LABEL_195;
  }

  if (set_tun_delegate(tun_interface, (v35 + 918)))
  {
    v161 = @"IPSec Controller: cannot set delegate interface for tunnel interface";
    goto LABEL_195;
  }

  set_ifmtu(v35 + 104, 1280);
  set_ifaddr(v35 + 104, v135, v135, v207);
  if (!racoon_send_cmd_start_ph2(*(v35 + 784), *(v35 + 748), Mutable))
  {
    sub_2378C((v35 + 104), v227, v155, v156, v157, v158, v159, v160, v205);
    goto LABEL_202;
  }

  v205 = v239;
  v161 = @"IPSec Controller: racoon_send_cmd_start_ph2 failed '%s'";
LABEL_195:
  sub_1E1E8(3, v161, v155, v156, v157, v158, v159, v160, v205);
LABEL_196:
  my_CFRelease(&v237);
  my_CFRelease(&v238);
  my_CFRelease(&v236);
  my_CFRelease(&v235);
  my_CFRelease(&v234);
  my_CFRelease((v35 + 960));
  my_CFRelease(&v241);
  my_CFRelease(&v240);
  my_CFRelease(&Mutable);
  v162 = *(v35 + 880);
  if (v162)
  {
    IPSecRemovePolicies(v162, -1, &v239);
    my_CFRelease((v35 + 880));
  }

  if (*(v35 + 888))
  {
    *(v35 + 888) = 0;
  }

  my_close(*(v35 + 904));
  *(v35 + 904) = -1;
}

void sub_20628(uint64_t a1, int a2)
{
  v12 = 0;
  v13 = 0;
  if (*(a1 + 872))
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    v13 = Mutable;
    CFArrayAppendValue(Mutable, kSCEntNetIPv4);
    if (*(a1 + 892))
    {
      CFArrayAppendValue(Mutable, kSCEntNetIPv6);
      *(a1 + 892) = 0;
    }

    CFArrayAppendValue(Mutable, kSCEntNetDNS);
    CFArrayAppendValue(Mutable, kSCEntNetProxies);
    unpublish_multiple_dicts(gDynamicStore, *(a1 + 24), Mutable, 1);
    my_CFRelease(&v13);
    if (*(a1 + 888))
    {
      *(a1 + 888) = 0;
    }

    my_CFRelease((a1 + 960));
    *(a1 + 872) = 0;
  }

  if (a2 && *(a1 + 876))
  {
    v5 = *(a1 + 880);
    if (v5)
    {
      if (IPSecRemovePolicies(v5, -1, &v12))
      {
        sub_1E1E8(3, @"IPSec Controller: Cannot remove mode config policies, error '%s'", v6, v7, v8, v9, v10, v11, v12);
      }

      my_CFRelease((a1 + 880));
    }

    IPSecRemoveSecurityAssociations((a1 + 616), (a1 + 744));
    clear_ifaddr(a1 + 104, *(a1 + 896));
    my_close(*(a1 + 904));
    *(a1 + 904) = -1;
    free_service_routes(a1);
    *(a1 + 876) = 0;
  }
}

uint64_t ipsec_ondemand_add_service_data(uint64_t a1, __CFDictionary *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 136), kSCPropNetIPSecOnDemandMatchDomainsAlways);
  if (isArray(Value))
  {
    CFDictionarySetValue(a2, @"OnDemandMatchDomainsAlways", Value);
  }

  v5 = CFDictionaryGetValue(*(a1 + 136), kSCPropNetIPSecOnDemandMatchDomainsOnRetry);
  if (isArray(v5))
  {
    CFDictionarySetValue(a2, @"OnDemandMatchDomainsOnRetry", v5);
  }

  v6 = CFDictionaryGetValue(*(a1 + 136), kSCPropNetIPSecOnDemandMatchDomainsNever);
  if (isArray(v6))
  {
    CFDictionarySetValue(a2, @"OnDemandMatchDomainsNever", v6);
  }

  v7 = CFDictionaryGetValue(*(a1 + 136), @"RemoteAddress");
  if (isString(v7))
  {
    CFDictionarySetValue(a2, @"RemoteAddress", v7);
  }

  return 0;
}

uint64_t racoon_send_cmd_reconnect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16[1] = 0x400000000000000;
  v16[0] = 5888;
  v17 = a2;
  sub_1E1E8(5, @"IPSec Controller: sending RECONNECT to racoon control socket", a3, a4, a5, a6, a7, a8, v15);
  sub_20920(a1, v16, 0x14uLL, v9, v10, v11, v12, v13);
  return 0;
}

uint64_t sub_20920(uint64_t __fd, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v10 = __fd;
    v11 = 0;
    while (1)
    {
      v12 = write(v10, (a2 + v11), a3 - v11);
      if (v12 < 1)
      {
        v13 = *__error();
        if (v13 == 35)
        {
          v20 = strerror(35);
          sub_1E1E8(3, @"Received write error %s", v21, v22, v23, v24, v25, v26, v20);
          if (write_barrier(v10))
          {
            sub_1E1E8(3, @"Failed to write packet", v27, v28, v29, v30, v31, v32, v41);
            return sub_1E1E8(5, @"Sent %zd/%zu bytes", a3, a4, a5, a6, a7, a8, v11);
          }

          sub_1E1E8(6, @"Received writeable event", v27, v28, v29, v30, v31, v32, v41);
        }

        else
        {
          if (v13 != 4)
          {
            v42 = strerror(v13);
            sub_1E1E8(3, @"Received write error %s", v33, v34, v35, v36, v37, v38, v42);
            return sub_1E1E8(5, @"Sent %zd/%zu bytes", a3, a4, a5, a6, a7, a8, v11);
          }

          v40 = strerror(4);
          sub_1E1E8(5, @"Received write error %s", v14, v15, v16, v17, v18, v19, v40);
        }
      }

      else
      {
        v11 += v12;
      }

      if (v11 >= a3)
      {
        return sub_1E1E8(5, @"Sent %zd/%zu bytes", a3, a4, a5, a6, a7, a8, v11);
      }
    }
  }

  v11 = 0;
  return sub_1E1E8(5, @"Sent %zd/%zu bytes", a3, a4, a5, a6, a7, a8, v11);
}

void ipsec_network_event(uint64_t a1, uint64_t a2)
{
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = a1;
  v88 = 0;
  if (*(a1 + 617) == 2)
  {
    IPSecLogVPNInterfaceAddressEvent("ipsec_network_event", a2, *(a1 + 972), (a1 + 918), (a1 + 620));
  }

  if (*(a1 + 584))
  {
    if ((*(a1 + 74) & 0x20) != 0)
    {
      if (*(a1 + 934))
      {
        v93[0] = 0;
        is_cellular = primary_interface_is_cellular(v93);
        if (v93[0])
        {
          if (!is_cellular)
          {
            v11 = @"IPSec Controller: Disconnecting tunnel over cellular in favor of better interface";
            v12 = 5;
LABEL_19:
            sub_1E1E8(v12, v11, v5, v6, v7, v8, v9, v10, v83);
            *(a1 + 596) = 15;
            ipsec_stop(a1, v13, v14, v15, v16, v17, v18, v19);
            return;
          }
        }
      }
    }
  }

  if ((*(a2 + 20) - 1) > 2)
  {
    return;
  }

  snprintf(__str, 0x20uLL, "%s%d", (a2 + 32), *(a2 + 28));
  if (!strncmp(__str, (a1 + 918), 0x10uLL))
  {
    if (*(a2 + 24) == 6)
    {
      v11 = @"IPSec Controller: Network changed on underlying PPP interface";
      goto LABEL_18;
    }

    if (!getifaddrs(&v88))
    {
      v34 = v88;
      if (v88)
      {
        v35 = v88;
        do
        {
          ifa_name = v35->ifa_name;
          v38 = !ifa_name || (ifa_addr = v35->ifa_addr) == 0 || strncmp(ifa_name, (a1 + 918), 0x10uLL) || ifa_addr->sa_family != 2 || *(a1 + 617) != 2 || *&ifa_addr->sa_data[2] != *(a1 + 620);
          v35 = v35->ifa_next;
        }

        while (v35 && v38);
        freeifaddrs(v34);
        if (!v38)
        {
          if (*(a1 + 952))
          {
            sub_1EA40(a1, 6, v5, v6, v7, v8, v9, v10);
            sub_1E1E8(3, @"IPSec Controller: Network changed, address came back on underlying interface, cancel timer", v39, v40, v41, v42, v43, v44, v83);
            Current = CFRunLoopGetCurrent();
            CFRunLoopRemoveTimer(Current, *(a1 + 952), kCFRunLoopCommonModes);
            my_CFRelease((a1 + 952));
            if ((*(a1 + 73) & 4) != 0)
            {
              racoon_send_cmd_start_dpd(*(a1 + 784), *(a1 + 748), v46, v47, v48, v49, v50, v51);
              *(a1 + 992) = 1;
            }

            else
            {
              sub_1E1E8(5, @"IPSec Controller: asserting connection", v46, v47, v48, v49, v50, v51, v84);
              racoon_send_cmd_assert(a1, v52, v53, v54, v55, v56, v57, v58);
            }
          }

          return;
        }
      }

      else
      {
        freeifaddrs(0);
      }
    }

    v20 = gDynamicStore;
    if (gDynamicStore)
    {
      if ((*(a2 + 20) & 0xFFFFFFFE) != 2)
      {
        goto LABEL_45;
      }

      memset(v93, 0, 512);
      memset(v92, 0, 512);
      v21 = CFStringCreateWithCStringNoCopy(0, (a1 + 918), 0x600u, kCFAllocatorNull);
      if (v21)
      {
        v22 = v21;
        Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        v24 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainSetup, v22, kSCEntNetAirPort);
        CFArrayAppendValue(Mutable, NetworkInterfaceEntity);
        CFRelease(NetworkInterfaceEntity);
        v26 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v22, kSCEntNetAirPort);
        CFArrayAppendValue(Mutable, v26);
        CFRelease(v26);
        NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetInterface);
        CFArrayAppendValue(v24, NetworkServiceEntity);
        CFRelease(NetworkServiceEntity);
        v28 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetIPv4);
        CFArrayAppendValue(v24, v28);
        CFRelease(v28);
        v29 = SCDynamicStoreCopyMultiple(v20, Mutable, v24);
        CFRelease(Mutable);
        CFRelease(v24);
        if (v29)
        {
          Count = CFDictionaryGetCount(v29);
          theDict = v29;
          if (Count <= 0)
          {
            syslog(3, "%s: empty SCDynamicStore dictionary", "ipsec_network_event");
            CFRelease(v22);
            v65 = 0;
            v66 = 0;
          }

          else
          {
            v31 = Count;
            cf1 = v22;
            if (Count < 0x81)
            {
              v33 = v92;
              Typed = v93;
            }

            else
            {
              Typed = CFAllocatorAllocateTyped();
              v33 = CFAllocatorAllocateTyped();
            }

            CFDictionaryGetKeysAndValues(v29, Typed, v33);
            v85 = 0;
            for (i = 0; i != v31; ++i)
            {
              v68 = Typed[i];
              v69 = v33[i];
              TypeID = CFStringGetTypeID();
              if (v68)
              {
                if (CFGetTypeID(v68) == TypeID)
                {
                  v71 = CFDictionaryGetTypeID();
                  if (v69)
                  {
                    if (CFGetTypeID(v69) == v71)
                    {
                      if (CFStringHasSuffix(v68, kSCEntNetInterface))
                      {
                        Value = CFDictionaryGetValue(v69, kSCPropNetInterfaceDeviceName);
                        v73 = CFStringGetTypeID();
                        if (Value && CFGetTypeID(Value) == v73 && CFEqual(cf1, Value))
                        {
                          ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v68, @"/");
                          if (CFArrayGetCount(ArrayBySeparatingStrings) < 4)
                          {
                            LOBYTE(v76) = 1;
                          }

                          else
                          {
                            ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 3);
                            v76 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, ValueAtIndex, kSCEntNetIPv4);
                            if (v76)
                            {
                              v77 = CFDictionaryGetValue(theDict, v76);
                              v78 = v77 != 0;
                              if (!v77)
                              {
                                syslog(5, "%s: detected disabled IPv4 Config", "ipsec_network_event");
                              }

                              CFRelease(v76);
                              LOBYTE(v76) = v78;
                            }

                            else
                            {
                              syslog(5, "%s: detected disabled IPv4 Config", "ipsec_network_event");
                            }
                          }

                          if (ArrayBySeparatingStrings)
                          {
                            CFRelease(ArrayBySeparatingStrings);
                          }

                          v85 = 1;
                          v65 = 1;
                          if ((v76 & 1) == 0)
                          {
                            goto LABEL_95;
                          }
                        }
                      }

                      else if (CFStringHasSuffix(v68, kSCEntNetAirPort))
                      {
                        if (CFStringHasPrefix(v68, kSCDynamicStoreDomainSetup))
                        {
                          v79 = CFDictionaryGetValue(v69, @"PowerEnabled");
                          v80 = CFBooleanGetTypeID();
                          if (v79 && CFGetTypeID(v79) == v80 && CFEqual(v79, kCFBooleanFalse))
                          {
                            syslog(5, "%s: detected AirPort, PowerEnable == FALSE", "ipsec_network_event");
                            v65 = 1;
                            goto LABEL_95;
                          }
                        }

                        else if (CFStringHasPrefix(v68, kSCDynamicStoreDomainState))
                        {
                          valuePtr = 0;
                          v81 = CFDictionaryGetValue(v69, @"Power Status");
                          v82 = CFNumberGetTypeID();
                          if (v81)
                          {
                            if (CFGetTypeID(v81) == v82 && CFNumberGetValue(v81, kCFNumberShortType, &valuePtr) && !valuePtr)
                            {
                              syslog(5, "%s: detected AirPort, PowerStatus == 0", "ipsec_network_event");
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v65 = 0;
LABEL_95:
            CFRelease(cf1);
            if (Typed != v93)
            {
              CFAllocatorDeallocate(0, Typed);
              CFAllocatorDeallocate(0, v33);
            }

            v66 = v85;
          }

          CFRelease(theDict);
          if (v65 == 1 || !v66)
          {
            goto LABEL_100;
          }

LABEL_45:
          if (*(a1 + 952))
          {
            if (*(a1 + 617) == 2 && *(a1 + 592) == 8 && (*(a2 + 20) - 1) <= 1 && *(a1 + 620) != *(a2 + 48) && *(a2 + 48) != 65193)
            {
              v83 = (a1 + 918);
              v11 = @"IPSec Controller: the underlying interface %s address changed.";
              goto LABEL_18;
            }
          }

          else
          {
            sub_1E1E8(3, @"IPSec Controller: Network changed, address disappeared on underlying interface, install timer %d secs", v5, v6, v7, v8, v9, v10, *(a1 + 972));
            v59 = CFAbsoluteTimeGetCurrent();
            LODWORD(v60) = *(a1 + 972);
            v61 = CFRunLoopTimerCreate(0, v59 + v60, 3.1536e10, 0, 0, sub_21668, &context);
            *(a1 + 952) = v61;
            if (!v61)
            {
              v11 = @"IPSec Controller: Network changed, cannot create RunLoop timer";
              goto LABEL_18;
            }

            sub_1EA40(a1, 8, v5, v6, v7, v8, v9, v10);
            v62 = CFRunLoopGetCurrent();
            CFRunLoopAddTimer(v62, *(a1 + 952), kCFRunLoopCommonModes);
            if (*(a1 + 984))
            {
              v63 = (a1 + 984);
              v64 = CFRunLoopGetCurrent();
              CFRunLoopRemoveTimer(v64, *v63, kCFRunLoopCommonModes);
              my_CFRelease(v63);
            }
          }

          return;
        }

        syslog(3, "%s: failed to initialize SCDynamicStore dictionary", "ipsec_network_event");
        CFRelease(v22);
      }

      else
      {
        syslog(3, "%s: failed to initialize interface CFString", "ipsec_network_event");
      }

LABEL_100:
      v11 = @"IPSec Controller: the underlying interface/service has changed unrecoverably.";
      goto LABEL_18;
    }

    syslog(7, "%s: invalid SCDynamicStore reference", "ipsec_network_event");
    goto LABEL_45;
  }

  if (*(a1 + 592) == 8 && *(a1 + 952) && (*(a2 + 20) - 1) <= 1 && *(a2 + 48) != -343)
  {
    v83 = __str;
    v11 = @"IPSec Controller: an alternative interface %s was detected while the underlying interface %s was down.";
LABEL_18:
    v12 = 3;
    goto LABEL_19;
  }
}

uint64_t racoon_send_cmd_start_dpd(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16[1] = 0x400000000000000;
  v16[0] = 5376;
  v17 = a2;
  sub_1E1E8(5, @"IPSec Controller: sending START_DPD to racoon control socket", a3, a4, a5, a6, a7, a8, v15);
  sub_20920(a1, v16, 0x14uLL, v9, v10, v11, v12, v13);
  return 0;
}

uint64_t racoon_send_cmd_assert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = a1;
  v42 = 5632;
  v43 = 0;
  v44 = 0;
  if (*(a1 + 617) == 2)
  {
    v44 = *(a1 + 620);
  }

  v45 = *(a1 + 748);
  HIWORD(v43) = 2048;
  sub_20920(*(a1 + 784), &v42, 0x18uLL, a4, a5, a6, a7, a8);
  *(a1 + 912) = 0;
  if (*(a1 + 592) == 6)
  {
    *(a1 + 600) = 1;
  }

  v9 = *(a1 + 776);
  v10 = CFAbsoluteTimeGetCurrent() + 3.0;
  if (v9)
  {
    CFRunLoopTimerSetNextFireDate(v9, v10);
LABEL_9:
    sub_1E1E8(5, @"IPSec Controller: wait for %d secs before forcing SAs to rekey", v11, v12, v13, v14, v15, v16, 3);
    return 0;
  }

  v17 = CFRunLoopTimerCreate(0, v10, 3.1536e10, 0, 0, sub_22240, &context);
  *(a1 + 776) = v17;
  if (v17)
  {
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddTimer(Current, *(a1 + 776), kCFRunLoopCommonModes);
    goto LABEL_9;
  }

  sub_1E1E8(3, @"IPSec Controller: assert cannot create RunLoop timer", v18, v19, v20, v21, v22, v23, v39);
  if (!*(a1 + 596))
  {
    *(a1 + 596) = 1;
  }

  sub_1E1E8(3, @"IPSec Controller: ASSERT failed", v26, v27, v28, v29, v30, v31, v40);
  ipsec_stop(a1, v32, v33, v34, v35, v36, v37, v38);
  return 0xFFFFFFFFLL;
}

uint64_t sub_21668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1E1E8(5, @"IPSec Controller: Network change event timer expired", a3, a4, a5, a6, a7, a8, v17);
  if (*(a2 + 617) == 2)
  {
    IPSecLogVPNInterfaceAddressEvent("event_timer", 0, *(a2 + 972), (a2 + 918), (a2 + 620));
  }

  *(a2 + 596) = 15;

  return ipsec_stop(a2, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t racoon_send_cmd_connect(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17[1] = 0x400000000000000;
  v17[0] = 4352;
  v18 = a2;
  sub_1E1E8(5, @"IPSec Controller: sending CONNECT to racoon control socket", a3, a4, a5, a6, a7, a8, v16);
  sub_20920(a1, v17, 0x14uLL, v9, v10, v11, v12, v13);
  v14 = ne_log_obj();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "IPSec Phase1 starting.\n", &v16, 2u);
  }

  return 0;
}

uint64_t racoon_send_cmd_disconnect(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15[1] = 0x400000000000000;
  v15[0] = 4608;
  v16 = a2;
  sub_1E1E8(5, @"IPSec Controller: sending DISCONNECT to racoon control socket, address 0x%x", a3, a4, a5, a6, a7, a8, bswap32(a2));
  sub_20920(a1, v15, 0x14uLL, v9, v10, v11, v12, v13);
  return 0;
}

uint64_t racoon_send_cmd_bind(uint64_t a1, unsigned int a2, char *__s, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (__s)
  {
    v11 = strlen(__s);
  }

  else
  {
    v11 = 0;
  }

  v25 = 0;
  HIWORD(v25) = bswap32(v11 + 8) >> 16;
  v24 = 256;
  v26[0] = a2;
  v26[1] = bswap32(v11) >> 16;
  sub_1E1E8(5, @"IPSec Controller: sending BIND to racoon control socket", __s, a4, a5, a6, a7, a8, v23);
  sub_20920(a1, &v24, 0x18uLL, v12, v13, v14, v15, v16);
  if (v11)
  {
    sub_20920(a1, __s, v11, v17, v18, v19, v20, v21);
  }

  return 0;
}

uint64_t racoon_send_cmd_set_nat64_prefix(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16[1] = 0x1000000000000000;
  v16[0] = 6144;
  v17 = *a2;
  sub_1E1E8(5, @"IPSec Controller: sending SET_NAT64_PREFIX to racoon control socket", a3, a4, a5, a6, a7, a8, v15);
  sub_20920(a1, v16, 0x20uLL, v9, v10, v11, v12, v13);
  return 0;
}

uint64_t racoon_send_cmd_unbind(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16[1] = 0x400000000000000;
  v16[0] = 512;
  v17 = a2;
  sub_1E1E8(5, @"IPSec Controller: sending UNBIND to racoon control socket", a3, a4, a5, a6, a7, a8, v15);
  sub_20920(a1, v16, 0x14uLL, v9, v10, v11, v12, v13);
  return 0;
}

uint64_t racoon_send_cmd_start_ph2(unsigned int a1, int a2, const __CFDictionary *a3)
{
  v6 = IPSecCountPolicies(a3);
  if (v6 < 1)
  {
    v48 = "cannot create ph2 config - no policies found";
LABEL_60:
    sub_1E1E8(3, @"IPSec Controller: failed to start phase2 - '%s'", v7, v8, v9, v10, v11, v12, v48);
    return 0xFFFFFFFFLL;
  }

  v13 = 48 * v6;
  v14 = malloc_type_malloc(v13 + 88, 0xAB8A860CuLL);
  if (!v14)
  {
    v48 = "out of memory";
    goto LABEL_60;
  }

  v15 = v14;
  bzero(v14, v13 + 88);
  *v15 = 4864;
  v15[4] = a2;
  v15[5] = 269352960;
  *(v15 + 26) = 117440512;
  if (!GetStrAddrFromDict(a3, @"LocalAddress", v70, 256))
  {
LABEL_61:
    v49 = "incorrect local address";
    goto LABEL_64;
  }

  if (!GetStrAddrFromDict(a3, @"RemoteAddress", v69, 256))
  {
LABEL_62:
    v49 = "incorrect remote address";
    goto LABEL_64;
  }

  Value = CFDictionaryGetValue(a3, @"Policies");
  if (!isArray(Value) || (Count = CFArrayGetCount(Value)) == 0)
  {
    v49 = "no policy found";
    goto LABEL_64;
  }

  __fd = a1;
  v24 = (v15 + 8);
  if (Count < 1)
  {
    LODWORD(v27) = 0;
LABEL_67:
    *(v15 + 13) = bswap32(v27) >> 16;
    *v24 = 201326592;
    *(v24 + 2) = 1;
    *(v24 + 2) = 201326592;
    *(v24 + 6) = 0;
    *(v24 + 4) = 50331648;
    *(v24 + 10) = 0;
    *(v24 + 6) = 318767360;
    *(v24 + 14) = 0;
    *(v24 + 8) = 251658496;
    *(v24 + 18) = 0;
    *(v24 + 10) = 234881280;
    *(v24 + 22) = 0;
    *(v24 + 12) = 419430912;
    *(v24 + 26) = 0;
    v51 = 24 * v27;
    *(v15 + 7) = bswap32(v51 + 72) >> 16;
    sub_1E1E8(5, @"IPSec Controller: sending START_PH2 to racoon control socket", v16, v17, v18, v19, v20, v21, v58);
    sub_20920(__fd, v15, v51 + 88, v52, v53, v54, v55, v56);
    v57 = ne_log_obj();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v67.s_addr) = 0;
      _os_log_impl(&dword_0, v57, OS_LOG_TYPE_DEFAULT, "IPSec Phase2 starting.\n", &v67, 2u);
    }

    free(v15);
    return 0;
  }

  v25 = Count;
  v26 = 0;
  v27 = 0;
  v60 = Count;
  v61 = Value;
  while (1)
  {
    v67.s_addr = 0;
    *&v66[0].s_addr = 0;
    v64 = 255;
    v65 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(Value, v26);
    if (!isDictionary(ValueAtIndex))
    {
      v49 = "incorrect policy found";
      goto LABEL_64;
    }

    v29 = CFDictionaryGetValue(ValueAtIndex, @"Mode");
    if (isString(v29) && !CFEqual(v29, @"Tunnel"))
    {
      if (!CFEqual(v29, @"Transport"))
      {
        v49 = "incorrect policy type found";
        goto LABEL_64;
      }

      v30 = 1;
    }

    else
    {
      v30 = 0;
    }

    v31 = CFDictionaryGetValue(ValueAtIndex, @"Direction");
    if (!isString(v31))
    {
      goto LABEL_21;
    }

    if (!CFEqual(v31, @"In"))
    {
      break;
    }

    v32 = 0;
    v62 = 1;
LABEL_22:
    v33 = CFDictionaryGetValue(ValueAtIndex, @"Level");
    if (isString(v33) && (CFEqual(v33, @"Unique") || CFEqual(v33, @"Require")))
    {
      if (v30)
      {
        v63 = 0;
        GetIntFromDict(ValueAtIndex, @"LocalPort", &v63, 0);
        v34 = v63;
        if (!inet_aton(v70, &v67))
        {
          goto LABEL_61;
        }

        v35 = v27;
        s_addr = v67.s_addr;
        GetIntFromDict(ValueAtIndex, @"RemotePort", &v63, 0);
        v37 = v63;
        if (!inet_aton(v69, &v66[1]))
        {
          goto LABEL_62;
        }

        v38 = bswap32(v34) >> 16;
        v39 = bswap32(v37) >> 16;
        if (s_addr)
        {
          v40 = -1;
        }

        else
        {
          v40 = 0;
        }

        if (v66[1].s_addr)
        {
          v41 = -1;
        }

        else
        {
          v41 = 0;
        }

        GetIntFromDict(ValueAtIndex, @"Protocol", &v64, 0);
LABEL_49:
        v45 = v62;
      }

      else
      {
        if (!GetStrAddrFromDict(ValueAtIndex, @"LocalAddress", v68, 256) || !inet_aton(v68, &v67))
        {
          v49 = "incorrect local network";
          goto LABEL_64;
        }

        GetIntFromDict(ValueAtIndex, @"LocalPrefix", v66, 32);
        v42 = v66[0].s_addr;
        if (v66[0].s_addr)
        {
          v43 = 0;
          do
          {
            v40 = (v43 >> 1) | 0x80000000;
            v43 = v40;
            --v42;
          }

          while (v42);
        }

        else
        {
          v40 = 0;
        }

        if (!GetStrAddrFromDict(ValueAtIndex, @"RemoteAddress", v68, 256) || !inet_aton(v68, &v66[1]))
        {
          v49 = "incorrect remote network";
          goto LABEL_64;
        }

        v35 = v27;
        GetIntFromDict(ValueAtIndex, @"RemotePrefix", &v65, 32);
        v44 = v65;
        if (!v65)
        {
          LOWORD(v38) = 0;
          LOWORD(v39) = 0;
          v41 = 0;
          goto LABEL_49;
        }

        v41 = 0;
        v45 = v62;
        do
        {
          v41 = (v41 >> 1) | 0x80000000;
          --v44;
        }

        while (v44);
        LOWORD(v38) = 0;
        LOWORD(v39) = 0;
      }

      v46 = bswap32(v40);
      v47 = bswap32(v41);
      if (v45)
      {
        v27 = v35;
      }

      else
      {
        *v24 = v67;
        *(v24 + 1) = v46;
        *(v24 + 8) = v38;
        *(v24 + 2) = v66[1];
        *(v24 + 3) = v47;
        *(v24 + 9) = v39;
        *(v24 + 10) = bswap32(v64) >> 16;
        v27 = (v35 + 1);
        v24 += 24;
      }

      v25 = v60;
      if ((v32 & 1) == 0)
      {
        *(v24 + 2) = v67;
        *(v24 + 3) = v46;
        *(v24 + 9) = v38;
        *v24 = v66[1];
        *(v24 + 1) = v47;
        *(v24 + 8) = v39;
        *(v24 + 10) = bswap32(v64) >> 16;
        v27 = (v27 + 1);
        v24 += 24;
      }

      Value = v61;
    }

    if (++v26 == v25)
    {
      goto LABEL_67;
    }
  }

  if (CFEqual(v31, @"Out"))
  {
    v62 = 0;
    v32 = 1;
    goto LABEL_22;
  }

  if (CFEqual(v31, @"InOut"))
  {
LABEL_21:
    v32 = 0;
    v62 = 0;
    goto LABEL_22;
  }

  v49 = "incorrect policy direction found";
LABEL_64:
  sub_1E1E8(3, @"IPSec Controller: failed to start phase2 - '%s'", v16, v17, v18, v19, v20, v21, v49);
  free(v15);
  return 0xFFFFFFFFLL;
}

intptr_t write_barrier(int a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_source_create(&_dispatch_source_type_write, a1, 0, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_221FC;
  handler[3] = &unk_39450;
  handler[4] = v2;
  dispatch_source_set_event_handler(v3, handler);
  dispatch_retain(v3);
  dispatch_retain(v2);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_22204;
  v7[3] = &unk_39470;
  v7[4] = v2;
  v7[5] = v3;
  dispatch_source_set_cancel_handler(v3, v7);
  dispatch_activate(v3);
  v4 = dispatch_time(0, 250000000);
  v5 = dispatch_semaphore_wait(v2, v4);
  dispatch_source_cancel(v3);
  dispatch_release(v3);
  dispatch_release(v2);
  return v5;
}

void sub_22204(uint64_t a1)
{
  dispatch_release(*(a1 + 32));
  v2 = *(a1 + 40);

  dispatch_release(v2);
}

void sub_22240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1E1E8(5, @"IPSec Controller: racoon_timer expired", a3, a4, a5, a6, a7, a8, v49);
  v16 = *(a2 + 592);
  if ((v16 - 1) > 1 || (v17 = *(a2 + 1024)) == 0)
  {
LABEL_12:
    if (v16 <= 2)
    {
      if (v16 == 1)
      {
        v35 = 7;
        goto LABEL_23;
      }

      if (v16 == 2)
      {
        v35 = 9;
LABEL_23:
        *(a2 + 596) = v35;

        ipsec_stop(a2, v9, v10, v11, v12, v13, v14, v15);
        return;
      }

LABEL_21:
      v35 = 10;
      goto LABEL_23;
    }

    if (v16 == 3)
    {
      v37 = *(a2 + 912);
      if (v37 < 1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v16 != 6)
      {
        goto LABEL_21;
      }

      v36 = *(a2 + 600);
      if (v36 == 1)
      {
        v40 = *(a2 + 784);
        v41 = *(a2 + 748);
        *(&buffer + 1) = 0x400000000000000;
        *&buffer = 5888;
        v53 = v41;
        sub_1E1E8(5, @"IPSec Controller: sending RECONNECT to racoon control socket", v10, v11, v12, v13, v14, v15, v50);
        sub_20920(v40, &buffer, 0x14uLL, v42, v43, v44, v45, v46);
        if (*(a2 + 592) == 6)
        {
          *(a2 + 600) = 2;
        }

        v47 = *(a2 + 776);
        if (v47)
        {
          Current = CFAbsoluteTimeGetCurrent();
          CFRunLoopTimerSetNextFireDate(v47, Current + 10.0);
        }

        return;
      }

      if (v36 != 4)
      {
        goto LABEL_21;
      }

      v37 = *(a2 + 912);
      if (v37 <= 0)
      {
        goto LABEL_21;
      }
    }

    *(a2 + 912) = v37 - 1;
    sub_2378C((a2 + 104), (a2 + 908), v10, v11, v12, v13, v14, v15, v50);
    v38 = *(a2 + 776);
    if (v38)
    {
      v39 = CFAbsoluteTimeGetCurrent() + 1.0;

      CFRunLoopTimerSetNextFireDate(v38, v39);
    }

    return;
  }

  v18 = *(a2 + 1036);
  if (CFArrayGetCount(v17) <= v18)
  {
    v16 = *(a2 + 592);
    goto LABEL_12;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 1024), *(a2 + 1036));
  if (ValueAtIndex)
  {
    v20 = ValueAtIndex;
    ++*(a2 + 1036);
    Value = CFDictionaryGetValue(ValueAtIndex, @"RemoteAddress");
    if (Value)
    {
      v22 = Value;
      if (CFDataGetLength(Value) >= 0x10)
      {
        buffer = 0uLL;
        v55.length = CFDataGetLength(v22);
        v55.location = 0;
        CFDataGetBytes(v22, v55, &buffer);
        v51 = 0uLL;
        v23 = CFDictionaryGetValue(v20, @"RemoteAddressNAT64Prefix");
        if (v23)
        {
          v30 = v23;
          if (CFDataGetLength(v23) != 16)
          {
            return;
          }

          v56.length = CFDataGetLength(v30);
          v56.location = 0;
          CFDataGetBytes(v30, v56, &v51);
        }

        sub_1E1E8(5, @"IPSec Controller: racoon_timer call racoon_restart_cisco_ipsec", v24, v25, v26, v27, v28, v29, v50);
        sub_240C8(a2, &buffer, &v51, 0, v31, v32, v33, v34);
      }
    }
  }
}

uint64_t ipsec_cellular_event(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a2 - 1) >= 2)
  {
    if (!a2)
    {
      return sub_2254C(a1);
    }
  }

  else
  {
    *(a1 + 596) = 18;
    return ipsec_stop(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return a1;
}

uint64_t sub_2254C(uint64_t a1)
{
  GetStrFromDict(*(a1 + 136), @"RemoteAddress", v18, 255, "");
  *(a1 + 744) = 528;
  if (inet_aton(v18, (a1 + 748)))
  {
    return sub_240C8(a1, (a1 + 744), (a1 + 760), 0, v2, v3, v4, v5);
  }

  gettimeofday((a1 + 1008), 0);
  v7 = getaddrinfo_async_start();
  if (v7)
  {
    sub_26574(v7, 0, a1);
    *(a1 + 596) = 5;
    ipsec_stop(a1, v8, v9, v10, v11, v12, v13, v14);
    return *(a1 + 596);
  }

  else
  {
    v15 = _SC_CFMachPortCreateWithPort();
    *(a1 + 1000) = v15;
    if (v15)
    {
      RunLoopSource = CFMachPortCreateRunLoopSource(0, v15, 0);
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopCommonModes);
      CFRelease(RunLoopSource);
    }

    return 0;
  }
}

uint64_t ipsec_start(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 16))
  {
    *(a1 + 596) = 7;
    sub_22BB8(a1, 0, 7, 0);
    return *(a1 + 596);
  }

  v9 = a7;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  sub_1E1E8(5, @"IPSec Controller: ipsec_start, ondemand flag = %d", a3, a4, a5, a6, a7, a8, a7);
  if (!*(a1 + 592))
  {
    v27 = *(a1 + 168);
    if (v27)
    {
      if (v9)
      {
        v28 = *(a1 + 596);
        if (v28 <= 0x15 && ((1 << v28) & 0x302000) != 0)
        {
          sub_1E1E8(3, @"IPSec Controller: ipsec_start fails cert validity, returns error %d ", v14, v15, v16, v17, v18, v19, *(a1 + 596));
          return *(a1 + 596);
        }
      }

      CFUserNotificationCancel(v27);
      Current = CFRunLoopGetCurrent();
      CFRunLoopRemoveSource(Current, *(a1 + 176), kCFRunLoopDefaultMode);
      my_CFRelease((a1 + 168));
      my_CFRelease((a1 + 176));
    }

    sub_1EA40(a1, 1, v14, v15, v16, v17, v18, v19);
    *(a1 + 600) = 0;
    *(a1 + 396) = 0;
    service_started();
    *(a1 + 596) = 0;
    *(a1 + 912) = 0;
    *(a1 + 992) = 0;
    *(a1 + 1024) = 0u;
    *(a1 + 128) = a2;
    my_CFRetain(a2);
    *(a1 + 88) = v12;
    *(a1 + 92) = v11;
    scnc_bootstrap_retain(a1, v10);
    *(a1 + 72) = *(a1 + 72) & 0xFFFFF3FF | ((v9 != 0) << 10);
    sub_1E1E8(7, @"IPSec Controller: IPSec System Prefs %@", v30, v31, v32, v33, v34, v35, *(a1 + 136));
    sub_1E1E8(7, @"IPSec Controller: IPSec User Options %@", v36, v37, v38, v39, v40, v41, *(a1 + 128));
    if (GetStrFromDict(*(a1 + 136), @"RemoteAddress", cStr, 255, ""))
    {
      if (racoon_validate_cfg_str(cStr))
      {
        v48 = ne_log_obj();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *&buf.sa_len = 136315138;
          *&buf.sa_data[2] = cStr;
          _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "IPSec connecting to server %s\n", &buf.sa_len, 0xCu);
        }

        *(a1 + 916) = 0x8000;
        Value = CFDictionaryGetValue(*(a1 + 136), kSCPropNetIPSecXAuthPasswordEncryption);
        if (isString(Value) && CFStringCompare(Value, kSCValNetIPSecXAuthPasswordEncryptionPrompt, 0) == kCFCompareEqualTo)
        {
          *(a1 + 916) |= 0x40u;
        }

        if (*(a1 + 584) || *(a1 + 800) != -1 || (event_create_socket(a1, (a1 + 800), (a1 + 808), sub_22E3C, 0) & 0x80000000) == 0)
        {
          flags = 0;
          *&buf.sa_data[6] = 0;
          *&buf.sa_len = 528;
          v50 = SCNetworkReachabilityCreateWithAddress(0, &buf);
          if (v50)
          {
            v51 = v50;
            if (SCNetworkReachabilityGetFlags(v50, &flags))
            {
              v58 = (flags & 0x40006) != 262150;
              sub_1E1E8(5, @"IPSec Controller: ipsec_start reachability flags = 0x%x, need_cellular = %d", v52, v53, v54, v55, v56, v57, flags);
            }

            else
            {
              v58 = 1;
            }

            CFRelease(v51);
          }

          else
          {
            v58 = 1;
          }

          valuePtr = 1;
          v67 = CFDictionaryGetValue(*(a1 + 136), @"NattKeepAliveEnabled");
          TypeID = CFNumberGetTypeID();
          if (!v67 || CFGetTypeID(v67) != TypeID || (CFNumberGetValue(v67, kCFNumberIntType, &valuePtr), valuePtr))
          {
            if ((flags & 0x40000) != 0)
            {
              v69 = 0;
            }

            else
            {
              v69 = 60;
            }

            v81 = v69;
            v70 = CFDictionaryGetValue(*(a1 + 136), @"NattKeepAliveTimer");
            v71 = CFNumberGetTypeID();
            if (v70)
            {
              if (CFGetTypeID(v70) == v71)
              {
                CFNumberGetValue(v70, kCFNumberIntType, &v81);
              }
            }

            v80 = 4;
            sysctlbyname("net.key.natt_keepalive_interval", &gNattKeepAliveInterval, &v80, &v81, 4uLL);
          }

          if (v58)
          {
            return sub_2254C(a1);
          }

          if (bringup_cellular(a1))
          {
            return 0;
          }

          v66 = 18;
          goto LABEL_49;
        }

        v59 = @"IPSec Controller: cannot create event socket";
LABEL_30:
        sub_1E1E8(3, v59, v42, v43, v44, v45, v46, v47, v79);
        if (*(a1 + 596))
        {
LABEL_50:
          sub_1E1E8(3, @"IPSec Controller: ipsec_start failed", v60, v61, v62, v63, v64, v65, v79);
          ipsec_stop(a1, v72, v73, v74, v75, v76, v77, v78);
          return *(a1 + 596);
        }

        v66 = 1;
LABEL_49:
        *(a1 + 596) = v66;
        goto LABEL_50;
      }

      v59 = @"IPSec Controller: invalid RemoteAddress ...";
    }

    else
    {
      v59 = @"IPSec Controller: cannot find RemoteAddress ...";
    }

    *(a1 + 596) = 2;
    goto LABEL_30;
  }

  if (my_CFEqual(a2, *(a1 + 128)))
  {
    phase_changed(a1, *(a1 + 592), v20, v21, v22, v23, v24, v25);
    return 0;
  }

  return 5;
}

void sub_22BB8(uint64_t a1, CFStringRef theString, uint64_t a3, int a4)
{
  v15 = 0;
  if ((*(a1 + 72) & 0x40) != 0)
  {
    error = 0;
    if (theString)
    {
      v16 = theString;
      v7 = theString;
    }

    else
    {
      if (a3 <= 0x13 && ((1 << a3) & 0xB8001) != 0)
      {
        return;
      }

      v7 = CFStringCreateWithFormat(0, 0, @"IPSec Error %d", a3);
      v16 = v7;
      if (!v7)
      {
        my_CFRelease(&v15);
LABEL_24:
        my_CFRelease(&v16);
        return;
      }
    }

    if (CFStringGetLength(v7) && (a4 != 2 || (*(a1 + 73) & 4) == 0 || !*(a1 + 1040)))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v15 = Mutable;
      if (Mutable)
      {
        v9 = Mutable;
        if (gIconURLRef)
        {
          CFDictionaryAddValue(Mutable, kCFUserNotificationIconURLKey, gIconURLRef);
        }

        if (gBundleURLRef)
        {
          CFDictionaryAddValue(v9, kCFUserNotificationLocalizationURLKey, gBundleURLRef);
        }

        CFDictionaryAddValue(v9, kCFUserNotificationAlertMessageKey, v7);
        CFDictionaryAddValue(v9, kCFUserNotificationAlertHeaderKey, @"VPN Connection");
        if (a4 == 2)
        {
          CFDictionaryAddValue(v9, kCFUserNotificationDefaultButtonTitleKey, @"Ignore");
          CFDictionaryAddValue(v9, kCFUserNotificationAlternateButtonTitleKey, @"Settings");
          *(a1 + 1040) = 1;
        }

        else if (a4 == 1)
        {
          CFDictionaryAddValue(v9, kCFUserNotificationAlternateButtonTitleKey, @"Disconnect");
        }

        v10 = *(a1 + 168);
        if (v10)
        {
          error = CFUserNotificationUpdate(v10, 0.0, 1uLL, v9);
        }

        else
        {
          v11 = CFUserNotificationCreate(0, 0.0, 1uLL, &error, v9);
          *(a1 + 168) = v11;
          if (v11)
          {
            RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v11, user_notification_callback, 0);
            *(a1 + 176) = RunLoopSource;
            if (RunLoopSource)
            {
              Current = CFRunLoopGetCurrent();
              CFRunLoopAddSource(Current, *(a1 + 176), kCFRunLoopDefaultMode);
            }

            else
            {
              my_CFRelease((a1 + 168));
            }
          }
        }
      }
    }

    my_CFRelease(&v15);
    if (!theString)
    {
      goto LABEL_24;
    }
  }
}

void sub_22E3C(__CFSocket *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Native = CFSocketGetNative(a1);
  if (recv(Native, v7, 0x100uLL, 0) != -1)
  {
    ipsec_network_event(a5, v7);
  }
}

uint64_t ipsec_getstatus_hack_notify(uint64_t a1)
{
  v1 = *(a1 + 592) - 1;
  if (v1 > 6)
  {
    return 0;
  }

  else
  {
    return dword_2DCFC[v1];
  }
}

uint64_t sub_22EE0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    return 0;
  }

  sub_1EA40(a1, 1, a3, a4, a5, a6, a7, a8);
  *(a1 + 72) |= a2;
  *(a1 + 596) = 0;
  *(a1 + 1036) = 1;
  *(a1 + 912) = 0;
  *(a1 + 992) = 0;
  v10 = *(a1 + 832);
  if (v10)
  {
    my_Deallocate(v10, *(a1 + 844) + 1);
    *(a1 + 832) = 0;
  }

  *(a1 + 840) = 0;
  v11 = *(a1 + 816);
  if (v11)
  {
    my_Deallocate(v11, *(a1 + 824));
    *(a1 + 816) = 0;
  }

  *(a1 + 824) = 0;
  if (*(a1 + 776))
  {
    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveTimer(Current, *(a1 + 776), kCFRunLoopCommonModes);
    my_CFRelease((a1 + 776));
  }

  if (*(a1 + 952))
  {
    v13 = CFRunLoopGetCurrent();
    CFRunLoopRemoveTimer(v13, *(a1 + 952), kCFRunLoopCommonModes);
    my_CFRelease((a1 + 952));
  }

  if (*(a1 + 984))
  {
    v14 = CFRunLoopGetCurrent();
    CFRunLoopRemoveTimer(v14, *(a1 + 984), kCFRunLoopCommonModes);
    my_CFRelease((a1 + 984));
  }

  my_CFRelease((a1 + 976));
  sub_1E1E8(5, @"IPSec Controller: reconnecting", v15, v16, v17, v18, v19, v20, v27);
  my_CFRelease((a1 + 472));
  my_CFRelease((a1 + 480));
  v21 = 1;
  sub_240C8(a1, (a1 + 744), (a1 + 760), 1, v22, v23, v24, v25);
  return v21;
}

uint64_t ipsec_getstatus(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 592) - 1;
  if (v8 > 7)
  {
    v10 = 0;
    v9 = "Disconnected";
  }

  else
  {
    v9 = off_39490[v8];
    v10 = dword_2DD18[v8];
  }

  if (gSCNCVerbose)
  {
    sub_1E1E8(5, @"IPSec Controller: ipsec_getstatus = %s", a3, a4, a5, a6, a7, a8, v9);
  }

  return v10;
}

uint64_t ipsec_copyextendedstatus(uint64_t a1, void *a2)
{
  v46 = 0;
  *a2 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v47 = Mutable;
  if (!Mutable || (v5 = Mutable, v6 = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks), (v46 = v6) == 0))
  {
    v12 = 12;
    goto LABEL_36;
  }

  v7 = v6;
  AddNumber(v6, kSCPropNetIPSecStatus, *(a1 + 592));
  if (!*(a1 + 592))
  {
    goto LABEL_10;
  }

  v8.s_addr = *(a1 + 748);
  v9 = inet_ntoa(v8);
  if (v9)
  {
    AddString(v7, @"RemoteAddress", v9);
  }

  if (*(a1 + 592) != 6)
  {
LABEL_10:
    v13 = *(a1 + 596);
    v14 = @"LastCause";
    v15 = v7;
LABEL_11:
    AddNumber(v15, v14, v13);
    goto LABEL_12;
  }

  v10 = *(a1 + 584);
  if (!v10)
  {
    v13 = *(a1 + 184);
    v15 = v7;
    v14 = kSCPropNetIPSecConnectTime;
    goto LABEL_11;
  }

  connect_time = ne_sm_bridge_get_connect_time(v10);
  AddNumber64(v7, kSCPropNetIPSecConnectTime, connect_time);
LABEL_12:
  CFDictionaryAddValue(v5, kSCEntNetIPSec, v7);
  v22 = *(a1 + 592);
  if (v22 == 6)
  {
    v23 = copyEntity(gDynamicStore, kSCDynamicStoreDomainState, *(a1 + 24), kSCEntNetIPv4);
    if (v23)
    {
      v24 = v23;
      CFDictionaryAddValue(v5, kSCEntNetIPv4, v23);
      CFRelease(v24);
    }

    v25 = copyEntity(gDynamicStore, kSCDynamicStoreDomainState, *(a1 + 24), kSCEntNetDNS);
    if (v25)
    {
      v26 = v25;
      Value = CFDictionaryGetValue(v25, kSCPropNetDNSServerAddresses);
      TypeID = CFArrayGetTypeID();
      if (Value && CFGetTypeID(Value) == TypeID)
      {
        CFDictionarySetValue(v5, @"DNSServers", Value);
      }

      v29 = CFDictionaryGetValue(v26, kSCPropNetDNSDomainName);
      v30 = CFStringGetTypeID();
      if (v29 && CFGetTypeID(v29) == v30)
      {
        CFDictionarySetValue(v5, @"DNSDomain", v29);
      }

      v31 = CFDictionaryGetValue(v26, kSCPropNetDNSSearchDomains);
      v32 = CFArrayGetTypeID();
      if (v31 && CFGetTypeID(v31) == v32)
      {
        CFDictionarySetValue(v5, @"DNSSearchDomains", v31);
      }

      v33 = CFDictionaryGetValue(v26, kSCPropNetDNSSupplementalMatchDomains);
      v34 = CFArrayGetTypeID();
      if (v33 && CFGetTypeID(v33) == v34)
      {
        CFDictionarySetValue(v5, @"DNSSupplementalMatchDomains", v33);
      }

      CFRelease(v26);
    }

    v22 = *(a1 + 592);
  }

  v35 = v22 - 1;
  if ((v22 - 1) > 7)
  {
    v37 = 0;
    v36 = "Disconnected";
  }

  else
  {
    v36 = off_39490[v35];
    v37 = dword_2DD18[v35];
  }

  if (gSCNCVerbose)
  {
    sub_1E1E8(5, @"IPSec Controller: ipsec_getstatus = %s", v16, v17, v18, v19, v20, v21, v36);
  }

  AddNumber(v5, @"Status", v37);
  sub_1E1E8(7, @"IPSec Controller: Copy Extended Status %@", v38, v39, v40, v41, v42, v43, v5);
  v44 = CFRetain(v5);
  v12 = 0;
  *a2 = v44;
LABEL_36:
  my_CFRelease(&v46);
  my_CFRelease(&v47);
  return v12;
}

uint64_t ipsec_getconnectdata(uint64_t a1, CFTypeRef *a2, int a3)
{
  v12 = 0;
  *a2 = 0;
  v3 = *(a1 + 128);
  if (v3)
  {
    if (!a3)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v3);
      v12 = MutableCopy;
      if (!MutableCopy)
      {
        return 0;
      }

      v3 = MutableCopy;
      Value = CFDictionaryGetValue(MutableCopy, kSCEntNetIPSec);
      if (Value)
      {
        v8 = Value;
        v9 = CFGetTypeID(Value);
        if (v9 == CFDictionaryGetTypeID())
        {
          v10 = CFDictionaryCreateMutableCopy(0, 0, v8);
          if (v10)
          {
            v11 = v10;
            CFDictionaryRemoveValue(v10, kSCPropNetIPSecSharedSecret);
            CFDictionarySetValue(v3, kSCEntNetIPSec, v11);
            CFRelease(v11);
          }
        }
      }
    }

    *a2 = CFRetain(v3);
    my_CFRelease(&v12);
  }

  return 0;
}

uint64_t ipsec_copystatistics(uint64_t a1, void *a2)
{
  v10 = 0;
  *a2 = 0;
  if (*(a1 + 592) != 6)
  {
    return 22;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v11 = Mutable;
  if (Mutable && (v4 = Mutable, v5 = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks), (v10 = v5) != 0))
  {
    v6 = v5;
    AddNumber(v5, @"BytesIn", 0);
    AddNumber(v6, @"BytesOut", 0);
    AddNumber(v6, @"PacketsIn", 0);
    AddNumber(v6, @"PacketsOut", 0);
    AddNumber(v6, @"ErrorsIn", 0);
    AddNumber(v6, @"ErrorsOut", 0);
    CFDictionaryAddValue(v4, kSCEntNetIPSec, v6);
    v7 = CFRetain(v4);
    v8 = 0;
    *a2 = v7;
  }

  else
  {
    v8 = 12;
  }

  my_CFRelease(&v10);
  my_CFRelease(&v11);
  return v8;
}

uint64_t ipsec_log_out(uint64_t result)
{
  if (*(result + 592))
  {
    if ((*(result + 74) & 2) != 0)
    {
      return scnc_stop(result, 0, 15, 3);
    }
  }

  return result;
}

uint64_t ipsec_log_switch(uint64_t result)
{
  if (*(result + 592))
  {
    if ((*(result + 74) & 0x10) != 0)
    {
      return scnc_stop(result, 0, 15, 4);
    }
  }

  return result;
}

uint64_t ipsec_will_sleep(uint64_t a1, int a2)
{
  if (*(a1 + 592) && !a2 && (*(a1 + 72) & 0x40000) != 0)
  {
    scnc_stop(a1, 0, 15, 2);
  }

  return 0;
}

uint64_t ipsec_wake_up(uint64_t result)
{
  v1 = *(result + 592);
  if (v1 == 8 || v1 == 6)
  {
    return scnc_disconnectifoverslept("ipsec_wake_up", result);
  }

  return result;
}

uint64_t sub_2378C(const char *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = socket(2, 3, 1);
  if ((v11 & 0x80000000) == 0)
  {
    v18 = v11;
    v37 = 0;
    *&v40.sa_len = 0;
    *&v40.sa_data[6] = 0;
    v36 = if_nametoindex(a1);
    if (setsockopt(v18, 0, 25, &v36, 4u))
    {
      sub_1E1E8(3, @"racoon_trigger_phase2 failed to set IP_BOUND_IF", v19, v20, v21, v22, v23, v24, v34);
      return close(v18);
    }

    v40.sa_family = 2;
    *v40.sa_data = 0;
    *&v40.sa_data[2] = *a2;
    v38 = 8;
    v39[0] = 0;
    *(v39 + 3) = 0;
    v35 = 4;
    if (sysctlbyname("net.key.blockacq_count", &v37, &v35, 0, 0))
    {
      v37 = 10;
    }

    else if (v37 < 0)
    {
      return close(v18);
    }

    v26 = -1;
    do
    {
      v27 = sendto(v18, &v38, 8uLL, 0, &v40, 0x10u);
      sub_1E1E8(3, @"racoon_trigger_phase2 sent ping, wrote %ld", v28, v29, v30, v31, v32, v33, v27);
      if (v27 <= 7)
      {
        break;
      }

      ++v26;
    }

    while (v26 < v37);
    return close(v18);
  }

  return sub_1E1E8(3, @"racoon_trigger_phase2 failed to create socket", v12, v13, v14, v15, v16, v17, a9);
}

void sub_23958(__CFArray *a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5, uint64_t a6)
{
  TypeID = CFArrayGetTypeID();
  if (a1)
  {
    if (CFGetTypeID(a1) == TypeID)
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v19 = Mutable;
      v14 = CFDictionaryGetTypeID();
      if (Mutable)
      {
        if (CFGetTypeID(Mutable) == v14)
        {
          v15 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a2, BYTE1(a2), BYTE2(a2), HIBYTE(a2), v19);
          cf = v15;
          if (v15)
          {
            CFDictionarySetValue(Mutable, kSCPropNetIPv4RouteDestinationAddress, v15);
            my_CFRelease(&cf);
          }

          if (a3)
          {
            v16 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a3, BYTE1(a3), BYTE2(a3), HIBYTE(a3));
            cf = v16;
            if (v16)
            {
              CFDictionarySetValue(Mutable, kSCPropNetIPv4RouteSubnetMask, v16);
              my_CFRelease(&cf);
            }
          }

          if (a4)
          {
            v17 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a4, BYTE1(a4), BYTE2(a4), HIBYTE(a4));
            cf = v17;
            if (v17)
            {
              CFDictionarySetValue(Mutable, kSCPropNetIPv4RouteGatewayAddress, v17);
              my_CFRelease(&cf);
            }
          }

          if (a5 && a6)
          {
            v18 = CFStringCreateWithFormat(0, 0, @"%s", a6);
            cf = v18;
            if (v18)
            {
              CFDictionarySetValue(Mutable, kSCPropNetIPv4RouteInterfaceName, v18);
              CFRelease(cf);
            }
          }

          CFArrayAppendValue(a1, Mutable);
          my_CFRelease(&v19);
        }
      }
    }
  }
}

__CFArray *sub_23B70(const __CFDictionary *a1, unsigned int a2)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  Value = CFDictionaryGetValue(a1, @"Policies");
  TypeID = CFArrayGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) == TypeID)
    {
      Count = CFArrayGetCount(Value);
      if (Count >= 1)
      {
        v8 = Count;
        v9 = 0;
        v22[0] = 0;
        v22[1] = 0;
        v20 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Value, v9);
          if (isDictionary(ValueAtIndex))
          {
            v11 = CFDictionaryGetValue(ValueAtIndex, @"Mode");
            v12 = CFStringGetTypeID();
            if (v11)
            {
              if (CFGetTypeID(v11) == v12)
              {
                if (CFEqual(v11, @"Tunnel"))
                {
                  v13 = CFDictionaryGetValue(ValueAtIndex, @"Direction");
                  v14 = CFStringGetTypeID();
                  if (v13)
                  {
                    if (CFGetTypeID(v13) == v14 && (CFEqual(v13, @"Out") || CFEqual(v13, @"InOut")))
                    {
                      v15 = CFDictionaryGetValue(ValueAtIndex, @"Level");
                      v16 = CFStringGetTypeID();
                      if (v15)
                      {
                        if (CFGetTypeID(v15) == v16 && !CFEqual(v15, @"None") && (CFEqual(v15, @"Require") || CFEqual(v15, @"Discard") || CFEqual(v15, @"Unique")))
                        {
                          if (GetStrNetFromDict(ValueAtIndex, @"RemoteAddress", v21, 32))
                          {
                            LODWORD(v22[0]) = 528;
                            if (inet_aton(v21, v22 + 1))
                            {
                              GetIntFromDict(ValueAtIndex, @"RemotePrefix", &v20, 24);
                              v17 = v20;
                              if (v20)
                              {
                                v18 = 0;
                                do
                                {
                                  v18 = (v18 >> 1) | 0x80000000;
                                  --v17;
                                }

                                while (v17);
                                v20 = 0;
                              }

                              else
                              {
                                v18 = 0;
                              }

                              sub_23958(Mutable, HIDWORD(v22[0]), bswap32(v18), a2, 0, 0);
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

          ++v9;
        }

        while (v9 != v8);
      }
    }
  }

  return Mutable;
}

void sub_23E44(uint64_t a1, _DWORD *a2, int a3)
{
  Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
  v29 = Mutable;
  v7 = CFDataCreateMutable(kCFAllocatorDefault, 0);
  v28 = v7;
  v8 = CFDataCreateMutable(kCFAllocatorDefault, 0);
  v27 = v8;
  v9 = CFDataCreateMutable(kCFAllocatorDefault, 0);
  v26 = v9;
  if (Mutable)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && v8 != 0 && v9 != 0)
  {
    v13 = v9;
    for (i = *(a1 + 1048); i; i = *i)
    {
      v15 = *(i + 6);
      if (v15 == *a2)
      {
        v16 = Mutable;
      }

      else
      {
        v16 = v8;
      }

      if (v15 == *a2)
      {
        v17 = v7;
      }

      else
      {
        v17 = v13;
      }

      CFDataAppendBytes(v16, i + 16, 4);
      CFDataAppendBytes(v17, i + 20, 4);
    }

    v18 = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v18)
    {
      v19 = v18;
      v20 = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v20)
      {
        v21 = v20;
        if (CFDataGetLength(Mutable))
        {
          v22 = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (v22)
          {
            v23 = v22;
            CFDictionaryAddValue(v22, @"Addresses", Mutable);
            CFDictionaryAddValue(v23, @"Masks", v7);
            CFDictionaryAddValue(v21, @"IncludedRoutes", v23);
            CFRelease(v23);
          }
        }

        if (CFDataGetLength(v8))
        {
          v24 = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (v24)
          {
            v25 = v24;
            CFDictionaryAddValue(v24, @"Addresses", v8);
            CFDictionaryAddValue(v25, @"Masks", v13);
            CFDictionaryAddValue(v21, @"ExcludedRoutes", v25);
            CFRelease(v25);
          }
        }

        CFDictionaryAddValue(v19, @"IPv4", v21);
        CFRelease(v21);
      }

      scnc_cache_routing_table(a1, v19, 0, a3 != 0);
      CFRelease(v19);
    }
  }

  my_CFRelease(&v29);
  my_CFRelease(&v28);
  my_CFRelease(&v27);
  my_CFRelease(&v26);
}

uint64_t sub_240C8(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v156 = 0;
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = a1;
  sub_1E1E8(5, @"IPSec Controller: racoon_restart_cisco_ipsec...", a3, a4, a5, a6, a7, a8, v148);
  if (a3 && *a3)
  {
    *(a1 + 760) = *a3;
    sub_1E1E8(5, @"IPSec Controller: NAT64 prefix with length %d", v12, v13, v14, v15, v16, v17, *(a1 + 760));
  }

  else
  {
    *flags = 0;
    nw_nat64_copy_prefixes();
    *(a1 + 760) = 0;
    *(a1 + 768) = 0;
  }

  if (*(a1 + 868))
  {
    if (IPSecRemovePolicies(*(a1 + 608), -1, &v156))
    {
      sub_1E1E8(3, @"IPSec Controller: Cannot remove policies, error '%s'", v18, v19, v20, v21, v22, v23, v156);
    }

    IPSecRemoveSecurityAssociations((a1 + 616), (a1 + 744));
    *(a1 + 868) = 0;
  }

  v24 = *(a1 + 584);
  if (v24)
  {
    ne_sm_bridge_request_uninstall(v24);
  }

  sub_20628(a1, 1);
  if (*(a1 + 864))
  {
    if (IPSecRemoveConfigurationFile(*(a1 + 608), &v156))
    {
      sub_1E1E8(3, @"IPSec Controller: Cannot remove configuration, error '%s'", v25, v26, v27, v28, v29, v30, v156);
    }

    *(a1 + 864) = 0;
    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  *(a1 + 912) = 0;
  *(a1 + 744) = *a2;
  v32 = *(a1 + 128);
  if (v32)
  {
    v33 = GetStrFromDict(v32, @"OutgoingInterface", (a1 + 918), 16, "") != 0;
  }

  else
  {
    v33 = 0;
  }

  memset(v153, 0, sizeof(v153));
  v154 = 0;
  v34 = (a1 + 744);
  if (*(a1 + 760))
  {
    LOWORD(v153[0]) = 7708;
    v34 = v153;
    nw_nat64_synthesize_v6();
  }

  if (v33)
  {
    v35 = (a1 + 918);
  }

  else
  {
    v35 = 0;
  }

  if (!get_src_address((a1 + 616), v34, v35, 0))
  {
    if (!v33)
    {
      copyGateway(gDynamicStore, 2, (a1 + 918), 16, (a1 + 936), 16);
    }

    if (*(a1 + 918))
    {
      *(a1 + 934) = interface_is_cellular(a1 + 918);
      sub_1E1E8(5, @"IPSec Controller: lower interface (%s) is%s cellular", v50, v51, v52, v53, v54, v55, a1 + 918);
    }

    else
    {
      flags[0] = 0;
      v56 = SCNetworkReachabilityCreateWithAddress(0, (a1 + 744));
      v57 = SCNetworkReachabilityGetFlags(v56, flags);
      v58 = (flags[0] >> 18) & 1;
      if (!v57)
      {
        LOBYTE(v58) = 0;
      }

      *(a1 + 934) = v58;
      CFRelease(v56);
    }

    if (*(a1 + 584))
    {
      if ((*(a1 + 74) & 0x20) != 0)
      {
        if (*(a1 + 934))
        {
          LOBYTE(flags[0]) = 0;
          is_cellular = primary_interface_is_cellular(flags);
          if (LOBYTE(flags[0]))
          {
            if (!is_cellular)
            {
              v42 = @"IPSec Controller: Skipping tunnel creation over cellular in favor of better interface";
              v43 = 5;
              goto LABEL_27;
            }
          }
        }
      }
    }

    *(a1 + 968) = 0;
    if ((*(a1 + 72) & 0x400) != 0)
    {
      v60 = 5;
    }

    else
    {
      v60 = 20;
    }

    sub_1E1E8(5, @"getting interface (media %x) timeout for ipsec: %d secs", v36, v37, v38, v39, v40, v41, 0);
    *(a1 + 972) = v60;
    if (check_interface_captive_and_not_ready(gDynamicStore, a1 + 918))
    {
      goto LABEL_102;
    }

    v61 = (a1 + 608);
    if (!v8 && *(a1 + 608))
    {
      getnameinfo((a1 + 616), *(a1 + 616), flags, 0x39u, 0, 0, 10);
      v62 = CFStringCreateWithCString(0, flags, 0x600u);
      if (v62)
      {
        v63 = v62;
        CFDictionarySetValue(*v61, @"LocalAddress", v62);
        CFRelease(v63);
      }

      v64 = addr2ascii(2, (a1 + 748), 4, 0);
      v65 = CFStringCreateWithCString(0, v64, 0x600u);
      if (v65)
      {
        v72 = v65;
        CFDictionarySetValue(*v61, @"RemoteAddress", v65);
        CFRelease(v72);
      }

      if (v33)
      {
        CFDictionarySetValue(*v61, @"ForceLocalAddress", kCFBooleanTrue);
      }

      goto LABEL_97;
    }

    Value = CFDictionaryGetValue(*(a1 + 136), @"AuthenticationMethod");
    v74 = @"SharedSecret";
    if (isString(Value) && !CFEqual(Value, @"SharedSecret"))
    {
      if (CFEqual(Value, @"Certificate"))
      {
        *(a1 + 72) |= 0x800u;
      }

      v74 = Value;
    }

    v75 = CFDictionaryGetValue(*(a1 + 136), @"IdentifierVerification");
    v76 = v75;
    if (v75)
    {
      isString(v75);
    }

    v77 = CFDictionaryGetValue(*(a1 + 136), @"RemoteAddress");
    if (*(a1 + 608))
    {
      my_CFRelease((a1 + 608));
    }

    if (cfstring_is_ip(v77))
    {
      v78 = 0;
    }

    else
    {
      v78 = v77;
    }

    StrFromDict = GetStrFromDict(*(a1 + 136), @"LocalIdentifier", flags, 256, "");
    CiscoDefaultConfiguration = IPSecCreateCiscoDefaultConfiguration((a1 + 616), a1 + 744, v78, v74, StrFromDict, 1, 0, v76, v8);
    *(a1 + 608) = CiscoDefaultConfiguration;
    if (!CiscoDefaultConfiguration)
    {
      v42 = @"IPSec Controller: cannot create IPSec dictionary...";
      goto LABEL_26;
    }

    CFDictionaryApplyFunction(*(a1 + 136), sub_24B84, CiscoDefaultConfiguration);
    if (v33)
    {
      CFDictionarySetValue(*v61, @"ForceLocalAddress", kCFBooleanTrue);
    }

    if ((*(a1 + 73) & 4) != 0)
    {
      valuePtr = 1;
      v81 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      if (v81)
      {
        v82 = v81;
        CFDictionarySetValue(*v61, @"DisconnectOnIdle", v81);
        CFRelease(v82);
      }

      valuePtr = 120;
      v83 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      if (v83)
      {
        v84 = v83;
        CFDictionarySetValue(*v61, @"DisconnectOnIdleTimer", v83);
        CFRelease(v84);
      }
    }

    v85 = *(a1 + 128);
    if (v85)
    {
      v86 = CFDictionaryGetValue(v85, kSCEntNetIPSec);
      v87 = v86;
      if (v86)
      {
        v88 = CFDictionaryGetValue(v86, @"XAuthName");
        if (isString(v88))
        {
          CFDictionarySetValue(*v61, @"XAuthName", v88);
        }

        v89 = CFDictionaryGetValue(v87, @"XAuthPassword");
        if (isString(v89))
        {
          CFDictionarySetValue(*v61, @"XAuthPassword", v89);
        }
      }
    }

    else
    {
      v87 = 0;
    }

    v90 = CFDictionaryGetValue(*v61, @"LocalIdentifier");
    if (isString(v90))
    {
      if (CFStringHasSuffix(v90, @"[hybrid]"))
      {
        Length = CFStringGetLength(v90);
        v158.length = Length - CFStringGetLength(@"[hybrid]");
        v158.location = 0;
        v92 = CFStringCreateWithSubstring(0, v90, v158);
        if (v92)
        {
          v93 = v92;
          CFDictionarySetValue(*v61, @"LocalIdentifier", v92);
          CFDictionarySetValue(*v61, @"AuthenticationMethod", @"Hybrid");
          CFRelease(v93);
          CFDictionarySetValue(*v61, @"RemoteIdentifier", v77);
          CFDictionarySetValue(*v61, @"IdentifierVerification", @"UseRemoteIdentifier");
        }
      }
    }

    if (!CFEqual(v74, @"SharedSecret"))
    {
LABEL_97:
      sub_1E1E8(7, @"IPSec Controller: Complete IPsec dictionary %@", v66, v67, v68, v69, v70, v71, *v61);
      v101 = CFDictionaryContainsKey(*v61, @"XAuthName");
      v102 = *v61;
      if (v101)
      {
        if (IPSecApplyConfiguration(v102, &v156))
        {
LABEL_99:
          sub_1E1E8(3, @"IPSec Controller: Cannot apply configuration, error '%s'", v103, v104, v105, v106, v107, v108, v156);
LABEL_100:
          v109 = 7;
LABEL_101:
          *(a1 + 596) = v109;
          goto LABEL_102;
        }
      }

      else
      {
        CFDictionarySetValue(v102, @"XAuthName", @" ");
        v118 = IPSecApplyConfiguration(*v61, &v156);
        CFDictionaryRemoveValue(*v61, @"XAuthName");
        if (v118)
        {
          goto LABEL_99;
        }
      }

      *(a1 + 864) = 1;
      if (IPSecCountPolicies(*(a1 + 608)))
      {
        if (IPSecInstallPolicies(*v61, -1, &v156))
        {
          sub_1E1E8(3, @"IPSec Controller: Cannot install policies, error '%s'", v119, v120, v121, v122, v123, v124, v156);
          v31 = 0;
          goto LABEL_100;
        }

        *(a1 + 868) = 1;
      }

      v125 = *(a1 + 784);
      if (v125 == -1)
      {
        if ((sub_24BF4(a1) & 0x80000000) != 0)
        {
          sub_1E1E8(3, @"IPSec Controller: cannot create racoon control socket", v131, v126, v127, v128, v129, v130, v151);
          v31 = 0;
          v109 = 8;
          goto LABEL_101;
        }
      }

      else
      {
        racoon_send_cmd_unbind(v125, -1, v119, v120, v121, v122, v123, v124);
      }

      racoon_send_cmd_bind(*(a1 + 784), *(a1 + 748), gIPSecAppVersion, v126, v127, v128, v129, v130);
      if (*(a1 + 760))
      {
        racoon_send_cmd_set_nat64_prefix(*(a1 + 784), (a1 + 760), v132, v133, v134, v135, v136, v137);
      }

      racoon_send_cmd_connect(*(a1 + 784), *(a1 + 748), v132, v133, v134, v135, v136, v137);
      v138 = *(a1 + 776);
      v139 = CFAbsoluteTimeGetCurrent() + 10.0;
      if (v138)
      {
        CFRunLoopTimerSetNextFireDate(v138, v139);
      }

      else
      {
        v140 = CFRunLoopTimerCreate(0, v139, 3.1536e10, 0, 0, sub_22240, &context);
        *(a1 + 776) = v140;
        if (!v140)
        {
          sub_1E1E8(3, @"IPSec Controller: cannot create RunLoop timer", v141, v142, v143, v144, v145, v146, v151);
          v31 = 0;
          goto LABEL_102;
        }

        Current = CFRunLoopGetCurrent();
        CFRunLoopAddTimer(Current, *(a1 + 776), kCFRunLoopCommonModes);
      }

      return 0;
    }

    v94 = CFDictionaryGetValue(*v61, @"SharedSecret");
    if (!isString(v94))
    {
      goto LABEL_127;
    }

    v95 = CFDictionaryGetValue(*v61, @"SharedSecretEncryption");
    if (!my_CFEqual(v95, @"Keychain"))
    {
      goto LABEL_97;
    }

    v96 = ne_sm_bridge_copy_password_from_keychain(*(a1 + 584));
    if (!v96)
    {
LABEL_127:
      if (v87 && *(a1 + 128))
      {
        v97 = CFDictionaryGetValue(v87, @"SharedSecret");
        if (isString(v97))
        {
          CFDictionarySetValue(*v61, @"SharedSecret", v97);
          CFDictionaryRemoveValue(*v61, @"SharedSecretEncryption");
          goto LABEL_97;
        }

LABEL_122:
        *(a1 + 596) = 3;
        v42 = @"IPSec Controller: incorrect shared secret found.";
        goto LABEL_26;
      }

      v98 = CFDictionaryGetValue(*v61, @"SharedSecretEncryption");
      if (!my_CFEqual(v98, @"Keychain"))
      {
        goto LABEL_122;
      }

      v149 = *(a1 + 24);
      v99 = CFStringCreateWithFormat(0, 0, @"%@.SS");
      if (!v99)
      {
        goto LABEL_122;
      }

      v100 = v99;
      CFDictionarySetValue(*v61, @"SharedSecret", v99);
      v96 = v100;
    }

    CFRelease(v96);
    goto LABEL_97;
  }

  *(a1 + 596) = 6;
  v42 = @"IPSec Controller: cannot get our local address...";
LABEL_26:
  v43 = 3;
LABEL_27:
  sub_1E1E8(v43, v42, v36, v37, v38, v39, v40, v41, v149);
LABEL_102:
  if (!*(a1 + 596))
  {
    *(a1 + 596) = 1;
  }

  sub_1E1E8(3, @"IPSec Controller: restart failed", v44, v45, v46, v47, v48, v49, v150);
  if (v31)
  {
    IPSecKickConfiguration();
  }

  ipsec_stop(a1, v110, v111, v112, v113, v114, v115, v116);
  return *(a1 + 596);
}

void sub_24B84(const __CFString *a1, const void *a2, __CFDictionary *a3)
{
  if (CFStringCompare(a1, @"RemoteAddress", 0))
  {

    CFDictionarySetValue(a3, a1, a2);
  }
}

uint64_t sub_24BF4(uint64_t a1)
{
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = a1;
  memset(v33, 0, 106);
  v2 = socket(1, 1, 0);
  *(a1 + 784) = v2;
  if (v2 < 0)
  {
    v30 = *__error();
    sub_1E1E8(3, @"IPSec Controller: cannot create racoon control socket (errno = %d) ", v16, v17, v18, v19, v20, v21, v30);
  }

  else
  {
    strcpy(v33[0].sa_data, "/var/run/vpncontrol.sock");
    *&v33[0].sa_len = 256;
    memset(&v33[1].sa_data[9], 0, 79);
    if (connect(v2, v33, 0x6Au) < 0)
    {
      v31 = *__error();
      sub_1E1E8(3, @"IPSec Controller: cannot connect racoon control socket (errno = %d)", v22, v23, v24, v25, v26, v27, v31);
    }

    else
    {
      v3 = fcntl(*(a1 + 784), 3);
      if (v3 == -1 || fcntl(*(a1 + 784), 4, v3 | 4u) == -1)
      {
        v4 = __error();
        sub_1E1E8(3, @"IPSec Controller: Couldn't set client socket in non-blocking mode, errno = %d", v5, v6, v7, v8, v9, v10, *v4);
      }

      v11 = CFSocketCreateWithNative(0, *(a1 + 784), 1uLL, sub_24DEC, &context);
      *(a1 + 792) = v11;
      if (v11)
      {
        RunLoopSource = CFSocketCreateRunLoopSource(0, v11, 0);
        if (RunLoopSource)
        {
          v13 = RunLoopSource;
          Current = CFRunLoopGetCurrent();
          CFRunLoopAddSource(Current, v13, kCFRunLoopDefaultMode);
          CFRelease(v13);
          return 0;
        }
      }
    }
  }

  v28 = *(a1 + 792);
  if (v28)
  {
    CFSocketInvalidate(v28);
    CFRelease(*(a1 + 792));
  }

  else
  {
    v29 = *(a1 + 784);
    if ((v29 & 0x80000000) == 0)
    {
      close(v29);
    }
  }

  *(a1 + 792) = 0;
  result = 0xFFFFFFFFLL;
  *(a1 + 784) = -1;
  return result;
}

double sub_24DEC(__CFSocket *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Native = CFSocketGetNative(a1);
  v7 = Native;
  v8 = *(a5 + 840);
  if (v8 <= 0xF)
  {
    v9 = (a5 + 848);
    v10 = readn(Native, (a5 + 848 + v8), 16 - v8);
    if (v10 == -1)
    {
      v20 = 2;
    }

    else
    {
      LODWORD(v8) = *(a5 + 840) + v10;
      *(a5 + 840) = v8;
      if (v8 != 16)
      {
        v20 = 0;
        goto LABEL_11;
      }

      v18 = bswap32(*(a5 + 862)) >> 16;
      *(a5 + 844) = v18 + 16;
      v19 = my_Allocate(v18 + 17);
      *(a5 + 832) = v19;
      if (v19)
      {
        v20 = 0;
        v17 = *v9;
        *v19 = *v9;
        *(*(a5 + 832) + *(a5 + 844)) = 0;
      }

      else
      {
        v20 = 3;
      }
    }

    LODWORD(v8) = *(a5 + 840);
LABEL_11:
    if (v8 < 0x10)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v20 = 0;
LABEL_12:
  v21 = readn(v7, (*(a5 + 832) + v8), *(a5 + 844) - v8);
  if (v21 == -1)
  {
LABEL_15:
    sub_1E1E8(5, @"IPSec Controller: connection closed by client, call ipsec_stop", v11, v12, v13, v14, v15, v16, v379);
    *(a5 + 596) = 1;

    ipsec_stop(a5, v23, v24, v25, v26, v27, v28, v29);
    return *&v17;
  }

  v22 = *(a5 + 840) + v21;
  *(a5 + 840) = v22;
  if (v22 != *(a5 + 844))
  {
LABEL_14:
    if ((v20 - 2) >= 2)
    {
      return *&v17;
    }

    goto LABEL_15;
  }

  v398 = 0uLL;
  if (!gSCNCVerbose)
  {
    goto LABEL_27;
  }

  sub_1E1E8(5, @"IPSec Controller: ====================================================", v11, v12, v13, v14, v15, v16, v379);
  sub_1E1E8(5, @"IPSec Controller: Process Message:", v30, v31, v32, v33, v34, v35, v380);
  v36 = bswap32(*(a5 + 848));
  v37 = HIWORD(v36);
  ipsec_msgtype_to_str(HIWORD(v36));
  sub_1E1E8(5, @"IPSec Controller:\tmsg_type = 0x%x (%s)", v38, v39, v40, v41, v42, v43, v37);
  sub_1E1E8(5, @"IPSec Controller:\tflags = 0x%x %s", v44, v45, v46, v47, v48, v49, __rev16(*(a5 + 850)));
  sub_1E1E8(5, @"IPSec Controller:\tcookie = 0x%x", v50, v51, v52, v53, v54, v55, bswap32(*(a5 + 852)));
  sub_1E1E8(5, @"IPSec Controller:\treserved = 0x%x", v56, v57, v58, v59, v60, v61, bswap32(*(a5 + 856)));
  sub_1E1E8(5, @"IPSec Controller:\tresult = 0x%x", v62, v63, v64, v65, v66, v67, bswap32(*(a5 + 860)) >> 16);
  sub_1E1E8(5, @"IPSec Controller:\tlen = %d", v68, v69, v70, v71, v72, v73, bswap32(*(a5 + 862)) >> 16);
  v80 = bswap32(*(a5 + 848)) >> 16;
  if (v80 <= 0x8000)
  {
    if (v80 > 0x17 || ((1 << v80) & 0x860006) == 0 && v80 != 20)
    {
      goto LABEL_26;
    }

    v81 = *(a5 + 832);
    sub_1E1E8(5, @"IPSec Controller:\t----------------------------", v74, v75, v76, v77, v78, v79, v381);
    v82.s_addr = *(v81 + 16);
    v382 = inet_ntoa(v82);
    v83 = @"IPSec Controller:\taddress = %s";
    goto LABEL_24;
  }

  if (v80 <= 33024)
  {
    if (v80 != 32769)
    {
      if (v80 == 32787)
      {
        v105 = *(a5 + 832);
        v106.s_addr = *(v105 + 16);
        v107 = inet_ntoa(v106);
        sub_1E1E8(5, @"IPSec Controller:\taddress = %s", v108, v109, v110, v111, v112, v113, v107);
        if ((*(v105 + 2) & 0x100) != 0)
        {
          v114 = *(a5 + 832);
          v115 = bswap32(*(a5 + 862)) >> 16;
          v116.s_addr = *(v114 + 20);
          v117 = inet_ntoa(v116);
          sub_1E1E8(5, @"IPSec Controller:\touter_local_addr = %s", v118, v119, v120, v121, v122, v123, v117);
          sub_1E1E8(5, @"IPSec Controller:\touter_remote_port = %d", v124, v125, v126, v127, v128, v129, bswap32(*(v114 + 24)) >> 16);
          sub_1E1E8(5, @"IPSec Controller:\touter_local_port = %d", v130, v131, v132, v133, v134, v135, bswap32(*(v114 + 26)) >> 16);
          sub_1E1E8(5, @"IPSec Controller:\tifname = %s", v136, v137, v138, v139, v140, v141, v114 + 28);
          if (v115 >= 0x1D)
          {
            v142 = v115 - 28;
            v143 = (v114 + 44);
            do
            {
              v144 = v143[1];
              v145 = bswap32(*v143);
              ipsec_modecfgtype_to_str(HIWORD(v145) & 0x7FFF);
              sub_1E1E8(5, @"IPSec Controller:\tModeConfig Attribute Type = %d (%s)", v146, v147, v148, v149, v150, v151, HIWORD(v145) & 0x7FFF);
              v158 = bswap32(v144);
              v159 = HIWORD(v158);
              if ((v145 & 0x80000000) != 0)
              {
                sub_1E1E8(5, @"IPSec Controller:\tModeConfig Attribute Value = %d", v152, v153, v154, v155, v156, v157, HIWORD(v158));
              }

              else
              {
                sub_1E1E8(5, @"IPSec Controller:\tModeConfig Attribute Length = %d Value = ...", v152, v153, v154, v155, v156, v157, HIWORD(v158));
                v142 -= v159;
                v143 = (v143 + v159);
              }

              v143 += 2;
              v160 = __OFSUB__(v142, 4);
              v142 -= 4;
            }

            while (!((v142 < 0) ^ v160 | (v142 == 0)));
          }
        }
      }

      goto LABEL_26;
    }

    v225 = *(a5 + 832);
    sub_1E1E8(5, @"IPSec Controller:\t----------------------------", v74, v75, v76, v77, v78, v79, v381);
    v226.s_addr = *(v225 + 16);
    v227 = inet_ntoa(v226);
    sub_1E1E8(5, @"IPSec Controller:\taddress = %s", v228, v229, v230, v231, v232, v233, v227);
    v234 = bswap32(*(v225 + 20));
    v387 = HIWORD(v234);
    v389 = ipsec_error_to_str(HIWORD(v234));
    sub_1E1E8(5, @"IPSec Controller:\tike_code = %d 0x%x (%s)", v235, v236, v237, v238, v239, v240, v387);
    sub_1E1E8(5, @"IPSec Controller:\tfrom = %d", v241, v242, v243, v244, v245, v246, bswap32(*(v225 + 22)) >> 16);
    if (*(v225 + 20) != 13726)
    {
      goto LABEL_26;
    }

    v247.s_addr = *(v225 + 24);
    v382 = inet_ntoa(v247);
    v83 = @"IPSec Controller:\tredirect address = %s";
LABEL_24:
    v84 = 5;
    goto LABEL_25;
  }

  if (v80 != 33025)
  {
    if (v80 != 33027)
    {
      goto LABEL_26;
    }

    v196 = *(a5 + 832);
    sub_1E1E8(5, @"IPSec Controller:\t----------------------------", v74, v75, v76, v77, v78, v79, v381);
    v197.s_addr = *(v196 + 16);
    v198 = inet_ntoa(v197);
    sub_1E1E8(5, @"IPSec Controller:\tresponse from address = %s", v199, v200, v201, v202, v203, v204, v198);
    v382 = (bswap32(*(v196 + 20)) >> 16);
    v83 = @"IPSec Controller:\tike_code = %d";
    goto LABEL_24;
  }

  v248 = *(a5 + 832);
  sub_1E1E8(5, @"IPSec Controller:\t----------------------------", v74, v75, v76, v77, v78, v79, v381);
  v249.s_addr = *(v248 + 16);
  v250 = inet_ntoa(v249);
  sub_1E1E8(5, @"IPSec Controller:\taddress = %s", v251, v252, v253, v254, v255, v256, v250);
  LODWORD(v257) = bswap32(*(a5 + 862)) >> 16;
  if (v257 < 5)
  {
    goto LABEL_26;
  }

  v258 = (*(a5 + 832) + 20);
  while (1)
  {
    v257 = (v257 - 4);
    if (v257 <= 3)
    {
      v382 = &dword_4;
      v83 = @"IPSec Controller: invalid length of isakmp data, expected %zu actual %d";
      goto LABEL_191;
    }

    v259 = *v258;
    v260 = bswap32(v259);
    v261 = HIWORD(v260) & 0x7FFF;
    v262 = __rev16(v258[1]);
    if ((v260 & 0x80000000) == 0)
    {
      break;
    }

    ipsec_xauthtype_to_str(HIWORD(v260) & 0x7FFF);
    sub_1E1E8(5, @"IPSec Controller:\tXAuth Attribute Type = %d (%s)", v283, v284, v285, v286, v287, v288, v261);
    sub_1E1E8(5, @"IPSec Controller:\tXAuth Attribute Value = %d", v289, v290, v291, v292, v293, v294, v262);
LABEL_108:
    v258 += 2;
    if (v257 <= 4)
    {
      goto LABEL_26;
    }
  }

  if (v262 + 4 <= v257)
  {
    ipsec_xauthtype_to_str(HIWORD(v260) & 0x7FFF);
    sub_1E1E8(5, @"IPSec Controller:\tXAuth Attribute Type = %d (%s)", v263, v264, v265, v266, v267, v268, v261);
    if (v259 == 35904)
    {
      v275 = malloc_type_malloc(v262 + 1, 0xDD97CF70uLL);
      if (v275)
      {
        v276 = v275;
        memmove(v275, v258 + 2, v262);
        v276[v262] = 0;
        sub_1E1E8(5, @"IPSec Controller:\tXAuth Attribute Value = %s", v277, v278, v279, v280, v281, v282, v276);
        free(v276);
      }
    }

    else
    {
      sub_1E1E8(5, @"IPSec Controller:\tXAuth Attribute Length = %d Value = ...", v269, v270, v271, v272, v273, v274, v262);
    }

    LODWORD(v257) = v257 - v262;
    v258 = (v258 + v262);
    goto LABEL_108;
  }

  v382 = (v262 + 4);
  v83 = @"IPSec Controller: invalid length of xauth message, expected %zu actual %d";
LABEL_191:
  v84 = 3;
LABEL_25:
  sub_1E1E8(v84, v83, v74, v75, v76, v77, v78, v79, v382);
LABEL_26:
  sub_1E1E8(5, @"IPSec Controller: ====================================================", v74, v75, v76, v77, v78, v79, v381);
LABEL_27:
  v85 = bswap32(*(a5 + 848)) >> 16;
  if (v85 > 32800)
  {
    if (v85 <= 33024)
    {
      if (v85 == 32801)
      {
        sub_1E1E8(5, @"IPSec Controller: PH2 START. phase %d, assert %d", v11, v12, v13, v14, v15, v16, *(a5 + 592));
        v219 = *(a5 + 592);
        if (v219 == 3)
        {
          v310 = *(a5 + 776);
          if (v310)
          {
            Current = CFAbsoluteTimeGetCurrent();
            CFRunLoopTimerSetNextFireDate(v310, Current + 30.0);
          }

          v93 = a5;
          v94 = 5;
LABEL_116:
          sub_1EA40(v93, v94, v86, v87, v88, v89, v90, v91);
          goto LABEL_286;
        }

        if (v219 != 6 || *(a5 + 600) != 4)
        {
          goto LABEL_286;
        }

        v220 = 5;
LABEL_177:
        *(a5 + 600) = v220;
        goto LABEL_286;
      }

      if (v85 != 32802)
      {
        goto LABEL_286;
      }

      sub_1E1E8(5, @"IPSec Controller: PH2 ESTABLISHED. phase %d, assert %d", v11, v12, v13, v14, v15, v16, *(a5 + 592));
      v95 = *(a5 + 592);
      if (v95 != 5 && (v95 != 6 || *(a5 + 600) != 5))
      {
        goto LABEL_286;
      }

      if (*(a5 + 776))
      {
        v96 = CFRunLoopGetCurrent();
        CFRunLoopRemoveTimer(v96, *(a5 + 776), kCFRunLoopCommonModes);
      }

      my_CFRelease((a5 + 776));
      v103 = *(a5 + 592);
      if (v103 == 6)
      {
        if (*(a5 + 600) == 5)
        {
          *(a5 + 600) = 0;
        }
      }

      else if (v103 == 5)
      {
        v104 = *(a5 + 960);
        if (v104)
        {
          if ((*(a5 + 73) & 4) == 0)
          {
            sub_22BB8(a5, v104, 0, 1);
            my_CFRelease((a5 + 960));
          }
        }
      }

      sub_1EA40(a5, 6, v97, v98, v99, v100, v101, v102);
      *(a5 + 396) = 1;
      v338 = ne_log_obj();
      if (!os_log_type_enabled(v338, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_286;
      }

      *buf = 0;
      v339 = "IPSec Phase2 established.\n";
LABEL_182:
      _os_log_impl(&dword_0, v338, OS_LOG_TYPE_DEFAULT, v339, buf, 2u);
      goto LABEL_286;
    }

    if (v85 != 33025)
    {
      if (v85 == 33027)
      {
        sub_1E1E8(5, @"IPSec Controller: PEER RESP. phase %d, assert %d", v11, v12, v13, v14, v15, v16, *(a5 + 592));
        v169 = *(a5 + 832);
        sub_1E1E8(5, @"IPSec Controller:\t----------------------------", v170, v171, v172, v173, v174, v175, v384);
        v176.s_addr = *(v169 + 16);
        v177 = inet_ntoa(v176);
        sub_1E1E8(5, @"IPSec Controller:\tresponse from address = %s", v178, v179, v180, v181, v182, v183, v177);
        sub_1E1E8(5, @"IPSec Controller:\tike_code = %d", v184, v185, v186, v187, v188, v189, bswap32(*(v169 + 20)) >> 16);
        if (!*(a5 + 992))
        {
          sub_1E1E8(3, @"IPSec Controller: unsolicited peer response notification", v190, v191, v192, v193, v194, v195, v385);
        }

        *(a5 + 992) = 0;
      }

      goto LABEL_286;
    }

    v386 = *(a5 + 600);
    sub_1E1E8(5, @"IPSec Controller: AUTHINFO. phase %d, assert %d", v11, v12, v13, v14, v15, v16, *(a5 + 592));
    v224 = *(a5 + 592);
    if (v224 == 3)
    {
      sub_1EA40(a5, 4, v162, v163, v164, v165, v166, v167);
    }

    else
    {
      if (v224 != 6 || *(a5 + 600) != 4)
      {
        goto LABEL_286;
      }

      if ((*(a5 + 916) & 0x40) != 0)
      {
        v168 = @"IPSec Controller: session asserting but XAuth dialog required, so connection aborted";
        goto LABEL_284;
      }
    }

    v312 = *(a5 + 776);
    if (v312)
    {
      CFRunLoopTimerSetNextFireDate(v312, 3.1536e10);
    }

    v313 = ne_log_obj();
    if (os_log_type_enabled(v313, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v313, OS_LOG_TYPE_DEFAULT, "IPSec requesting Extended Authentication.\n", buf, 2u);
    }

    v314 = *(a5 + 832);
    LODWORD(v315) = bswap32(*(a5 + 862)) >> 16;
    v316 = *(a5 + 916) & 0xFFD0 | 0x20;
    *(a5 + 916) = v316;
    if (v315 >= 5)
    {
      v317 = 0;
      v318 = (v314 + 20);
      while (1)
      {
        v315 = (v315 - 4);
        if (v315 <= 3)
        {
          sub_1E1E8(3, @"IPSec Controller: invalid length of isakmp data, expected %zu actual %d", v162, v163, v164, v165, v166, v167, 4);
          goto LABEL_281;
        }

        v319 = bswap32(*v318);
        v320 = v319 >> 16;
        if (((v319 >> 16) & 0x80000000) == 0)
        {
          v321 = (bswap32(v318[1]) >> 16) + 4;
          if (v321 > v315)
          {
            sub_1E1E8(3, @"IPSec Controller: invalid length of xauth message, expected %zu actual %d", v162, v163, v164, v165, v166, v167, v321);
            goto LABEL_281;
          }
        }

        v322 = HIWORD(v319) & 0x7FFF;
        if (v322 > 16524)
        {
          if (v322 > 16527)
          {
            if (v322 == 16528)
            {
              v325 = *(a5 + 916) & 0xFFE0 | 0x10;
            }

            else
            {
              if (v322 != 16529)
              {
                if (v322 == 32136)
                {
                  v324 = v318[1];
                  if (v324 != 256)
                  {
                    sub_1E1E8(3, @"IPSec Controller: Received unsupported Xauth Vendor attribute (value %d)", v162, v163, v164, v165, v166, v167, __rev16(v324));
                    goto LABEL_281;
                  }
                }

                goto LABEL_152;
              }

              v325 = *(a5 + 916) & 0xFFE0 | 8;
            }

            goto LABEL_151;
          }

          if (v322 != 16526)
          {
            if (v322 == 16525)
            {
              v327 = @"IPSec Controller: Received unsupported Xauth Challenge";
            }

            else
            {
              v327 = @"IPSec Controller: Received unsupported Xauth Status";
            }

            sub_1E1E8(3, v327, v162, v163, v164, v165, v166, v167, v383);
LABEL_281:
            *(a5 + 916) = 0;
            if (v317)
            {
              free(v317);
            }

            v168 = @"IPSec Controller: XAuth authentication failed";
LABEL_284:
            sub_1E1E8(3, v168, v162, v163, v164, v165, v166, v167, v383);
LABEL_285:
            ipsec_stop(a5, v303, v304, v305, v306, v307, v308, v309);
            goto LABEL_286;
          }

          sub_1E1E8(3, @"IPSec Controller: Ignoring unsupported Xauth Domain", v162, v163, v164, v165, v166, v167, v383);
        }

        else
        {
          if (v322 > 16521)
          {
            if (v322 == 16522)
            {
              v325 = *(a5 + 916) & 0xFFE1 | 2;
            }

            else
            {
              if (v322 != 16523)
              {
                if (!v317)
                {
                  v323 = malloc_type_malloc((bswap32(v318[1]) >> 16) + 1, 0x9C341DC0uLL);
                  v317 = v323;
                  if (v323)
                  {
                    memmove(v323, v318 + 2, bswap32(v318[1]) >> 16);
                    *(v317 + (bswap32(v318[1]) >> 16)) = 0;
                  }
                }

                goto LABEL_152;
              }

              v325 = *(a5 + 916) & 0xFFE1 | 4;
            }

            goto LABEL_151;
          }

          if (v322 == 16520)
          {
            if (v318[1])
            {
              sub_1E1E8(3, @"IPSec Controller: Received unsupported Xauth Type (value %d)", v162, v163, v164, v165, v166, v167, __rev16(v318[1]));
              goto LABEL_281;
            }

            goto LABEL_152;
          }

          if (v322 == 16521)
          {
            v325 = *(a5 + 916) & 0xFFE6 | 1;
LABEL_151:
            *(a5 + 916) = v325;
          }
        }

LABEL_152:
        if ((v320 & 0x80000000) == 0)
        {
          v326 = bswap32(v318[1]);
          LODWORD(v315) = v315 - HIWORD(v326);
          v318 = (v318 + HIWORD(v326));
        }

        v318 += 2;
        if (v315 <= 4)
        {
          v316 = *(a5 + 916);
          goto LABEL_185;
        }
      }
    }

    v317 = 0;
LABEL_185:
    if ((v316 & 0x8000) == 0 && *(a5 + 592) != 6 || (LOBYTE(v340) = v316, *(a5 + 916) = v316 & 0x7FFF, (v316 & 0x40) != 0))
    {
LABEL_215:
      v397 = 0;
      if ((*(a5 + 72) & 0x80) == 0)
      {
        goto LABEL_281;
      }

      v350 = *(a5 + 168);
      if (v350)
      {
        CFUserNotificationCancel(v350);
        v351 = CFRunLoopGetCurrent();
        CFRunLoopRemoveSource(v351, *(a5 + 176), kCFRunLoopDefaultMode);
        my_CFRelease((a5 + 168));
        my_CFRelease((a5 + 176));
      }

      if (v317)
      {
        v352 = CFStringCreateWithFormat(0, 0, @"%s", v317, v386, v389);
      }

      else
      {
        v352 = CFStringCreateWithFormat(0, 0, @"Enter your user authentication", v383, v386, v389);
      }

      v353 = v352;
      error = 0;
      *buf = v352;
      if (!v352 && !CFStringGetLength(0))
      {
        goto LABEL_279;
      }

      Mutable = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v397 = Mutable;
      if (!Mutable)
      {
        goto LABEL_279;
      }

      v355 = Mutable;
      if (gIconURLRef)
      {
        CFDictionaryAddValue(Mutable, kCFUserNotificationIconURLKey, gIconURLRef);
      }

      if (gBundleURLRef)
      {
        CFDictionaryAddValue(v355, kCFUserNotificationLocalizationURLKey, gBundleURLRef);
      }

      CFDictionaryAddValue(v355, kCFUserNotificationAlertMessageKey, v353);
      CFDictionaryAddValue(v355, kCFUserNotificationAlertHeaderKey, @"VPN Connection");
      CFDictionaryAddValue(v355, kCFUserNotificationAlternateButtonTitleKey, @"Cancel");
      v356 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      if (!v356)
      {
        v360 = 0;
        Count = 0;
LABEL_256:
        if (*(a5 + 916))
        {
          Value = CFDictionaryGetValue(*(a5 + 608), @"XAuthName");
          if (isString(Value))
          {
            v367 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
            if (v367)
            {
              v368 = v367;
              CFArrayAppendValue(v367, Value);
              if ((*(a5 + 916) & 6) != 0)
              {
                CFArrayAppendValue(v368, &stru_3D170);
              }

              CFDictionaryAddValue(v355, kCFUserNotificationTextFieldValuesKey, v368);
              CFRelease(v368);
            }
          }
        }

        if (Count >= 1)
        {
          v369 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
          v395 = v369;
          v370 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
          v394 = v370;
          v392 = 1;
          valuePtr = 0;
          v371 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          v391 = v371;
          v372 = CFNumberCreate(0, kCFNumberIntType, &v392);
          v390 = v372;
          if (v369)
          {
            if (v370)
            {
              if (v371)
              {
                v373 = v372;
                if (v372)
                {
                  do
                  {
                    CFArrayAppendValue(v369, v371);
                    CFArrayAppendValue(v370, v373);
                    --Count;
                  }

                  while (Count);
                  CFDictionarySetValue(v355, @"SBUserNotificationTextAutocapitalizationType", v369);
                  CFDictionarySetValue(v355, @"SBUserNotificationTextAutocorrectionType", v370);
                }
              }
            }
          }

          my_CFRelease(&v395);
          my_CFRelease(&v394);
          my_CFRelease(&v391);
          my_CFRelease(&v390);
        }

        if (v360)
        {
          v374 = 0x8000 << v360;
        }

        else
        {
          v374 = 0;
        }

        v375 = CFUserNotificationCreate(0, 150.0, v374, &error, v355);
        *(a5 + 168) = v375;
        if (v375)
        {
          RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v375, user_notification_callback, 0);
          *(a5 + 176) = RunLoopSource;
          if (RunLoopSource)
          {
            v377 = CFRunLoopGetCurrent();
            CFRunLoopAddSource(v377, *(a5 + 176), kCFRunLoopDefaultMode);
            my_CFRelease(&v397);
            my_CFRelease(buf);
            *(a5 + 916) |= 0x80u;
LABEL_276:
            if (v317)
            {
              free(v317);
            }

            goto LABEL_286;
          }

          my_CFRelease((a5 + 168));
        }

LABEL_279:
        my_CFRelease(&v397);
        my_CFRelease(buf);
        goto LABEL_281;
      }

      v357 = v356;
      v358 = *(a5 + 916);
      if ((v358 & 8) != 0)
      {
        CFArrayAppendValue(v356, @"Answer");
      }

      else
      {
        if ((v358 & 0x10) != 0)
        {
          CFArrayAppendValue(v356, @"Next PIN");
          v360 = 1;
          goto LABEL_255;
        }

        if (v358)
        {
          CFArrayAppendValue(v356, @"Account");
          v358 = *(a5 + 916);
        }

        if ((v358 & 4) != 0)
        {
          v359 = @"Passcode";
LABEL_252:
          CFArrayAppendValue(v357, v359);
          if (*(a5 + 916))
          {
            v360 = 2;
          }

          else
          {
            v360 = 1;
          }

          goto LABEL_255;
        }

        if ((v358 & 2) != 0)
        {
          v359 = @"Password";
          goto LABEL_252;
        }
      }

      v360 = 0;
LABEL_255:
      Count = CFArrayGetCount(v357);
      CFDictionaryAddValue(v355, kCFUserNotificationTextFieldTitlesKey, v357);
      CFRelease(v357);
      goto LABEL_256;
    }

    if (v316)
    {
      v341 = CFDictionaryGetValue(*(a5 + 608), @"XAuthName");
      if (isString(v341))
      {
        Length = CFStringGetLength(v341);
        v340 = *(a5 + 916);
        if (Length)
        {
          v343 = 1;
          goto LABEL_199;
        }
      }

      else
      {
        v340 = *(a5 + 916);
      }
    }

    else
    {
      v341 = 0;
    }

    if (v340)
    {
      goto LABEL_215;
    }

    v343 = 0;
LABEL_199:
    if ((v340 & 6) == 0)
    {
      v346 = 0;
      goto LABEL_210;
    }

    v344 = CFDictionaryGetValue(*(a5 + 608), kSCPropNetIPSecXAuthPasswordEncryption);
    TypeID = CFStringGetTypeID();
    if (!v344 || CFGetTypeID(v344) != TypeID || CFStringCompare(v344, kSCValNetIPSecXAuthPasswordEncryptionKeychain, 0))
    {
      v346 = CFDictionaryGetValue(*(a5 + 608), kSCPropNetIPSecXAuthPassword);
      v347 = CFStringGetTypeID();
      if (!v346)
      {
LABEL_208:
        if (!isString(v346))
        {
LABEL_213:
          if (v346)
          {
            CFRelease(v346);
          }

          goto LABEL_215;
        }

        v343 = CFStringGetLength(v346) != 0;
LABEL_210:
        if (v343)
        {
          v348 = *(a5 + 916);
          if (v348)
          {
            *buf = 16521;
            v400 = v341;
            v349 = 1;
          }

          else
          {
            v349 = 0;
          }

          if ((v348 & 4) != 0)
          {
            v362 = 16523;
          }

          else
          {
            if ((v348 & 2) == 0)
            {
LABEL_245:
              v364 = *(a5 + 776);
              if (v364)
              {
                v365 = CFAbsoluteTimeGetCurrent();
                CFRunLoopTimerSetNextFireDate(v364, v365 + 30.0);
              }

              sub_1EA40(a5, 3, v162, v163, v164, v165, v166, v167);
              racoon_send_cmd_xauthinfo(*(a5 + 784), *(a5 + 748), buf, v349);
              if (v346)
              {
                CFRelease(v346);
              }

              goto LABEL_276;
            }

            v362 = 16522;
          }

          v363 = &buf[16 * v349];
          *v363 = v362;
          *(v363 + 1) = v346;
          ++v349;
          goto LABEL_245;
        }

        goto LABEL_213;
      }

      if (CFGetTypeID(v346) == v347)
      {
        CFRetain(v346);
        goto LABEL_208;
      }
    }

    v346 = 0;
    goto LABEL_208;
  }

  if (v85 > 32785)
  {
    if (v85 == 32786)
    {
      sub_1E1E8(5, @"IPSec Controller: PH1 STARTPEER. phase %d, assert %d", v11, v12, v13, v14, v15, v16, *(a5 + 592));
      v221 = *(a5 + 592);
      if (v221 != 2 && (v221 != 6 || *(a5 + 600) != 3))
      {
        goto LABEL_286;
      }

      v222 = *(a5 + 776);
      if (v222)
      {
        v223 = CFAbsoluteTimeGetCurrent();
        CFRunLoopTimerSetNextFireDate(v222, v223 + 30.0);
        v221 = *(a5 + 592);
      }

      if (v221 != 6)
      {
        if (v221 != 2)
        {
          goto LABEL_286;
        }

        v93 = a5;
        v94 = 3;
        goto LABEL_116;
      }

      if (*(a5 + 600) != 3)
      {
        goto LABEL_286;
      }

      v220 = 4;
      goto LABEL_177;
    }

    if (v85 != 32787)
    {
      goto LABEL_286;
    }

    sub_1E1E8(5, @"IPSec Controller: PH1 ESTABLISHED. phase %d, assert %d", v11, v12, v13, v14, v15, v16, *(a5 + 592));
    v161 = *(a5 + 592);
    if (v161 == 3)
    {
      v331 = *(a5 + 832);
      if (!*(a5 + 584))
      {
        goto LABEL_167;
      }

      v332 = *(a5 + 816);
      if (v332)
      {
        my_Deallocate(v332, *(a5 + 824));
        *(a5 + 816) = 0;
      }

      v333 = *(a5 + 844) + 1;
      *(a5 + 824) = v333;
      v334 = my_Allocate(v333);
      *(a5 + 816) = v334;
      memcpy(v334, *(a5 + 832), *(a5 + 824));
      v335 = *(a5 + 584);
      sub_26480(a5);
      LOBYTE(v335) = ne_sm_bridge_request_install(v335);
      sub_1EC90(a5, 0, 1);
      if ((v335 & 1) == 0)
      {
LABEL_167:
        if ((*(v331 + 2) & 0x100) != 0)
        {
          sub_1EC90(a5, 1, 1);
        }
      }

      *(a5 + 912) = 15;
      v336 = *(a5 + 776);
      if (v336)
      {
        v337 = CFAbsoluteTimeGetCurrent();
        CFRunLoopTimerSetNextFireDate(v336, v337 + 1.0);
      }

      *(a5 + 184) = (*&gTimeScaleSeconds * mach_absolute_time());
      *(a5 + 192) = 0;
    }

    else
    {
      if (v161 != 6 || *(a5 + 600) != 4)
      {
        goto LABEL_286;
      }

      if (sub_264F4(a5))
      {
        v168 = @"IPSec Controller: unassert failed";
        goto LABEL_284;
      }
    }

    v338 = ne_log_obj();
    if (!os_log_type_enabled(v338, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_286;
    }

    *buf = 0;
    v339 = "IPSec Phase1 established.\n";
    goto LABEL_182;
  }

  if (v85 != 32769)
  {
    if (v85 != 32785)
    {
      goto LABEL_286;
    }

    sub_1E1E8(5, @"IPSec Controller: PH1 STARTUS. phase %d, assert %d", v11, v12, v13, v14, v15, v16, *(a5 + 592));
    v92 = *(a5 + 592);
    if (v92 != 6)
    {
      if (v92 != 1)
      {
        goto LABEL_286;
      }

      v93 = a5;
      v94 = 2;
      goto LABEL_116;
    }

    v328 = *(a5 + 600);
    if (v328 != 2)
    {
      if (v328 != 1)
      {
        goto LABEL_286;
      }

      v329 = *(a5 + 776);
      if (v329)
      {
        v330 = CFAbsoluteTimeGetCurrent();
        CFRunLoopTimerSetNextFireDate(v329, v330 + 10.0);
        if (*(a5 + 592) != 6)
        {
          goto LABEL_286;
        }
      }
    }

    v220 = 3;
    goto LABEL_177;
  }

  sub_1E1E8(3, @"IPSec Controller: IKE FAILED. phase %d, assert %d", v11, v12, v13, v14, v15, v16, *(a5 + 592));
  v205 = *(a5 + 832);
  v206 = *(v205 + 20);
  if (v206 != 13726)
  {
    v388 = __rev16(v206);
    ipsec_error_to_str(v388);
    v301 = sub_1E1E8(3, @"IPSec Controller: connection failed <IKE Error %d (0x%x) %s>", v295, v296, v297, v298, v299, v300, v388);
    v302 = ipsec_error_to_status(v301, bswap32(*(v205 + 22)) >> 16, bswap32(*(v205 + 20)) >> 16);
    *(a5 + 596) = v302;
    if (v302 == 14 && *(a5 + 592) >= 5u)
    {
      *(a5 + 596) = 16;
    }

    goto LABEL_285;
  }

  *(&v398 + 1) = 0;
  v207.s_addr = *(v205 + 24);
  LODWORD(v398) = 528;
  DWORD1(v398) = v207;
  v208 = inet_ntoa(v207);
  sub_1E1E8(5, @"IPSec Controller: connection redirected to server '%s'...", v209, v210, v211, v212, v213, v214, v208);
  sub_240C8(a5, &v398, (a5 + 760), 0, v215, v216, v217, v218);
LABEL_286:
  my_Deallocate(*(a5 + 832), *(a5 + 844) + 1);
  *&v17 = 0;
  *(a5 + 832) = 0u;
  return *&v17;
}

BOOL sub_26480(uint64_t a1)
{
  v1 = bswap32(*(a1 + 862)) >> 16;
  if (v1 < 0x1D)
  {
    return 1;
  }

  v3 = v1 - 28;
  v4 = (*(a1 + 832) + 44);
  do
  {
    v5 = bswap32(*v4);
    v6 = HIWORD(v5) & 0x7FFF;
    result = v6 != 28676;
    if (v6 == 28676)
    {
      break;
    }

    v7 = bswap32(v4[1]) >> 16;
    v8 = v5 >> 16 >= 0 ? v7 : 0;
    v9 = v3 - v8;
    v4 = (v4 + v8 + 4);
    v10 = __OFSUB__(v9, 4);
    v3 = v9 - 4;
  }

  while (!((v3 < 0) ^ v10 | (v3 == 0)));
  return result;
}

uint64_t sub_264F4(uint64_t a1)
{
  if (!*(a1 + 872))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 592) != 6 || *(a1 + 600) != 4)
  {
    return 0;
  }

  v1 = (a1 + 776);
  if (*(a1 + 776))
  {
    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveTimer(Current, *v1, kCFRunLoopCommonModes);
  }

  my_CFRelease(v1);
  return 0;
}

void sub_26574(int a1, addrinfo *a2, uint64_t a3)
{
  buffer = 0uLL;
  v101 = 0uLL;
  v6 = nw_nat64_copy_prefixes();
  if (a1 || !a2)
  {
    v94 = gai_strerror(a1);
    sub_1E1E8(3, @"IPSec Controller: dns reply: getaddrinfo() failed: %s", v40, v41, v42, v43, v44, v45, v94);
    goto LABEL_39;
  }

  v7 = v6;
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  theArray = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v97 = a2;
  v9 = a2;
  do
  {
    ai_addr = v9->ai_addr;
    sa_family = ai_addr->sa_family;
    if (sa_family == 2)
    {
      if (ai_addr->sa_len <= 0x10u)
      {
        v12 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v12)
        {
          v13 = v12;
          v14 = CFDataCreate(0, &v9->ai_addr->sa_len, v9->ai_addr->sa_len);
          if (v14)
          {
            v15 = v14;
            CFDictionarySetValue(v13, @"RemoteAddress", v14);
            CFRelease(v15);
            if (v7 < 1)
            {
              goto LABEL_25;
            }

            v16 = CFDataCreate(kCFAllocatorDefault, 0, 16);
            if (v16)
            {
              v17 = v16;
              CFDictionarySetValue(v13, @"RemoteAddressNAT64Prefix", v16);
              CFArrayAppendValue(theArray, v13);
              CFRelease(v17);
            }

            goto LABEL_26;
          }
        }
      }
    }

    else
    {
      v18 = sa_family != 30 || v7 < 1;
      if (!v18 && ai_addr->sa_len <= 0x1Cu)
      {
        v19 = 0;
        v20 = v7;
        while ((nw_nat64_extract_v4() & 1) == 0)
        {
          v19 += 16;
          if (!--v20)
          {
            goto LABEL_27;
          }
        }

        if (v20)
        {
          v21 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (v21)
          {
            v13 = v21;
            v22 = CFDataCreate(0, v19, 16);
            if (v22)
            {
              v23 = v22;
              CFDictionarySetValue(v13, @"RemoteAddressNAT64Prefix", v22);
              CFRelease(v23);
              v100 = 0;
              *v99 = 528;
              *&v99[4] = 0;
              v24 = CFDataCreate(0, v99, 16);
              if (!v24)
              {
                goto LABEL_27;
              }

              v25 = v24;
              CFDictionarySetValue(v13, @"RemoteAddress", v24);
              CFRelease(v25);
LABEL_25:
              CFArrayAppendValue(Mutable, v13);
            }

LABEL_26:
            CFRelease(v13);
          }
        }
      }
    }

LABEL_27:
    v9 = v9->ai_next;
  }

  while (v9);
  v26 = (a3 + 1024);
  my_CFRelease((a3 + 1024));
  *(a3 + 1024) = Mutable;
  *(a3 + 1032) = 0;
  if (CFArrayGetCount(Mutable) || v7 < 1)
  {
    CFRelease(theArray);
    v39 = *v26;
  }

  else
  {
    sub_1E1E8(5, @"IPSec Controller: dns reply: no synthesized IPv6 address in reply on NAT64 network", v27, v28, v29, v30, v31, v32, v93);
    my_CFRelease((a3 + 1024));
    v39 = theArray;
    *v26 = theArray;
  }

  a2 = v97;
  a1 = 0;
  sub_1E1E8(7, @"IPSec Controller: dns reply: resolvedAddress %@", v33, v34, v35, v36, v37, v38, v39);
  if (!CFArrayGetCount(*v26))
  {
    my_CFRelease((a3 + 1024));
    sub_1E1E8(3, @"IPSec Controller: dns reply: no IPv4 address in reply", v62, v63, v64, v65, v66, v67, v96);
    goto LABEL_39;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*v26, 0);
  if (!ValueAtIndex || (v59 = ValueAtIndex, (Value = CFDictionaryGetValue(ValueAtIndex, @"RemoteAddress")) == 0) || (v61 = Value, CFDataGetLength(Value) <= 0xF))
  {
    sub_1E1E8(3, @"IPSec Controller: dns reply: failed to get elem %d from addr array", v53, v54, v55, v56, v57, v58, *(a3 + 1036));
    goto LABEL_39;
  }

  buffer = 0uLL;
  v103.length = CFDataGetLength(v61);
  v103.location = 0;
  CFDataGetBytes(v61, v103, &buffer);
  *(a3 + 1036) = 1;
  v101 = 0uLL;
  v81 = CFDictionaryGetValue(v59, @"RemoteAddressNAT64Prefix");
  if (v81)
  {
    v86 = v81;
    if (CFDataGetLength(v81) == 16)
    {
      v104.length = CFDataGetLength(v86);
      v104.location = 0;
      CFDataGetBytes(v86, v104, &v101);
      goto LABEL_46;
    }

    sub_1E1E8(3, @"IPSec Controller: dns reply: failed to get elem %d from nat64 array", v87, v88, v89, v90, v91, v92, *(a3 + 1036));
LABEL_39:
    sub_1E1E8(5, @"IPSec Controller: dns reply: Stopping service", v46, v47, v48, v49, v50, v51, v95);
    *(a3 + 596) = 5;
    ipsec_stop(a3, v68, v69, v70, v71, v72, v73, v74);
    *(a3 + 1024) = CFRetain(kCFNull);
    *(a3 + 1032) = a1;
  }

  else
  {
LABEL_46:
    sub_240C8(a3, &buffer, &v101, 0, v82, v83, v84, v85);
  }

  sub_1E1E8(7, @"IPSec Controller: dns reply: done", v75, v76, v77, v78, v79, v80, v96);
  if (a2)
  {
    freeaddrinfo(a2);
  }
}

__CFMachPort *sub_26A18(__CFMachPort *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a4 + 1000);
  if (result == a1)
  {
    CFMachPortInvalidate(result);
    CFRelease(*(a4 + 1000));
    *(a4 + 1000) = 0;

    return _getaddrinfo_async_handle_reply(a2);
  }

  return result;
}

void nat_port_mapping_set(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 888))
    {
      SCLog();
      return;
    }

    if (*(a1 + 392))
    {
      sub_26C9C(a1);
    }

    if (*(a1 + 64) == 1)
    {
      if_nametoindex((a1 + 918));
      if (!strstr((a1 + 918), "ppp") && !strstr((a1 + 918), "utun"))
      {
        v2 = (a1 + 200);
        if (!*(a1 + 200))
        {
          if (DNSServiceCreateConnection((a1 + 200)) || (v3 = *v2) == 0 || (current_queue = dispatch_get_current_queue(), DNSServiceSetDispatchQueue(v3, current_queue)))
          {
LABEL_13:
            SCLog();
            if (*v2)
            {
              DNSServiceRefDeallocate(*v2);
            }

            *(a1 + 216) = 0u;
            *(a1 + 232) = 0u;
            *v2 = 0u;
            return;
          }

          if (!*(a1 + 976))
          {
            Current = CFRunLoopGetCurrent();
            *(a1 + 976) = my_CFRetain(Current);
          }
        }

        *(a1 + 208) = *(a1 + 200);
        if (!DNSServiceNATPortMappingCreate((a1 + 208), 0x4000u, 0, 0, 0, 0, 0, sub_26DE0, a1))
        {
          *(a1 + 220) = 0;
          *(a1 + 224) = 0;
          *(a1 + 228) = 0;
          *(a1 + 232) = 0;
          SCLog();
          ++*(a1 + 392);
          return;
        }

        goto LABEL_13;
      }
    }
  }
}

void sub_26C9C(uint64_t a1)
{
  sub_26D78(a1);
  if (*(a1 + 392))
  {
    SCLog();
    if (*(a1 + 392))
    {
      v2 = 0;
      v3 = a1 + 200;
      do
      {
        if (*v3)
        {
          DNSServiceRefDeallocate(*v3);
        }

        *(v3 + 16) = 0u;
        *(v3 + 32) = 0u;
        *v3 = 0u;
        if (v2 > 2)
        {
          break;
        }

        ++v2;
        v3 += 48;
      }

      while (v2 < *(a1 + 392));
    }

    *(a1 + 392) = 0;
  }
}

void nat_port_mapping_clear(uint64_t a1)
{
  if (a1)
  {
    sub_26C9C(a1);
  }
}

void sub_26D78(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 984);
    if (v2)
    {
      CFRunLoopRemoveTimer(*(a1 + 976), v2, kCFRunLoopCommonModes);

      my_CFRelease((a1 + 984));
    }
  }
}

void sub_26DE0(uint64_t a1, uint64_t a2, unsigned int a3, int a4, unsigned int a5, int a6, unsigned int a7, unsigned int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    v14 = (a10 + 64);
    if (*(a10 + 64) == 1)
    {
      v15 = *(a10 + 592) != 0;
      v16 = (a10 + 918);
      v17 = 16;
    }

    else
    {
      v15 = 0;
      v16 = "NULL";
      v17 = 4;
    }
  }

  else
  {
    v14 = (&stru_20 + 32);
    v15 = 0;
    v16 = "NULL";
    v17 = 4;
  }

  v18 = bswap32(a5);
  v19 = __rev16(a7);
  v20 = __rev16(a8);
  if (*(a10 + 888))
  {
    SCLog();
    goto LABEL_8;
  }

  v63 = v19;
  v61 = v15;
  v62 = v20;
  if (a4 != -65558 && a4)
  {
    SCLog();
    if ((a4 + 65565) > 1)
    {
      if (a4 != -65563)
      {
        return;
      }
    }

    else
    {
      LODWORD(v21) = *(a10 + 392);
      if (!v21)
      {
        return;
      }

      if (v21 >= 4)
      {
        v21 = 4;
      }

      else
      {
        v21 = v21;
      }

      for (i = (a10 + 240); *(i - 4) != a1; i += 12)
      {
        if (!--v21)
        {
          return;
        }
      }

      SCLog();
      if (*i && v61)
      {
        SCLog();
        v40 = *v14;
        goto LABEL_70;
      }
    }

LABEL_8:

    sub_26C9C(a10);
    return;
  }

  v60 = v18;
  v64 = 0;
  if (getifaddrs(&v64))
  {
    goto LABEL_14;
  }

  v55 = a4;
  v54 = v14;
  v23 = v64;
  if (!v64)
  {
    freeifaddrs(0);
    v56 = 0;
    goto LABEL_50;
  }

  v56 = 0;
  v24 = 0;
  do
  {
    ifa_name = v23->ifa_name;
    if (ifa_name)
    {
      ifa_addr = v23->ifa_addr;
      if (ifa_addr)
      {
        if ((!strncmp(v23->ifa_name, "utun", 4uLL) || *ifa_name == 112 && ifa_name[1] == 112 && ifa_name[2] == 112) && ifa_addr->sa_family == 2 && *&ifa_addr->sa_data[2] == a5)
        {
          SCLog();
          ifa_name = v23->ifa_name;
          if (!ifa_name)
          {
            v24 = 1;
            goto LABEL_44;
          }

          ifa_addr = v23->ifa_addr;
          v24 = 1;
          if (!ifa_addr)
          {
            goto LABEL_44;
          }
        }

        if (!strncmp(ifa_name, v16, v17) && ifa_addr->sa_family == 2 && *(a10 + 617) == 2)
        {
          v27 = v56;
          if (*&ifa_addr->sa_data[2] == *(a10 + 620))
          {
            v27 = 1;
          }

          v56 = v27;
        }
      }
    }

LABEL_44:
    v23 = v23->ifa_next;
  }

  while (v23);
  freeifaddrs(v64);
  if (v24)
  {
    return;
  }

LABEL_50:
  if_indextoname(a3, &__s1);
  if (!strncmp(&__s1, v16, v17))
  {
    v29 = v55;
    if (strstr(v16, "ppp") || strstr(v16, "utun"))
    {
      goto LABEL_14;
    }

    if (v56)
    {
      goto LABEL_56;
    }

    if (a5 && (!a7 || a8))
    {
      goto LABEL_14;
    }

    SCLog();
    v47 = *(a10 + 392);
    if (v47)
    {
      v48 = 0;
      v49 = (a10 + 240);
      do
      {
        if (*(v49 - 4) == a1)
        {
          *v49 = 0;
          SCLog();
          v47 = *(a10 + 392);
        }

        if (v48 > 2)
        {
          break;
        }

        ++v48;
        v49 += 12;
      }

      while (v48 < v47);
    }

    return;
  }

  v28 = v62 | v63;
  v29 = v55;
  if ((a6 || !a5 || v28) && (v60 | a6 || v28) && (*v54 != 1 || *(a10 + 617) != 2 || *(a10 + 620) != a5 || !v56))
  {
LABEL_14:
    SCLog();
    return;
  }

LABEL_56:
  SCLog();
  LODWORD(v30) = *(a10 + 392);
  v31 = a7;
  v32 = a3;
  if (!v30)
  {
    return;
  }

  if (v30 >= 4)
  {
    v30 = 4;
  }

  else
  {
    v30 = v30;
  }

  for (j = (a10 + 240); *(j - 4) != a1; j += 12)
  {
    if (!--v30)
    {
      return;
    }
  }

  if (*j)
  {
    v41 = a5 == 0;
  }

  else
  {
    v41 = 0;
  }

  if (v41 && a8 == 0)
  {
    SCLog();
    __s1.version = 0;
    memset(&__s1.retain, 0, 24);
    __s1.info = a10;
    if (*(a10 + 64) == 1 && !*(a10 + 952) && !*(a10 + 984))
    {
      SCLog();
      Current = CFAbsoluteTimeGetCurrent();
      v46 = CFRunLoopTimerCreate(0, Current + 20.0, 3.1536e10, 0, 0, sub_279BC, &__s1);
      *(a10 + 984) = v46;
      if (v46)
      {
        CFRunLoopAddTimer(*(a10 + 976), v46, kCFRunLoopCommonModes);
        return;
      }

      goto LABEL_141;
    }

    return;
  }

  if (*j)
  {
    sub_26D78(a10);
    v32 = a3;
    v31 = a7;
  }

  if (*v54 == 1 && *(a10 + 617) == 2 && *(a10 + 620) == a5 && v31 == a8)
  {
    SCLog();
    v32 = a3;
  }

  if (*(j - 5) == v32)
  {
    v43 = *(j - 4);
    v44 = v63;
    if (v43 == a6)
    {
      if (*(j - 6) == v63)
      {
        SCLog();
        goto LABEL_116;
      }

LABEL_113:
      if (*(j - 6) != v44)
      {
        SCLog();
        *(j - 6) = v44;
      }

      goto LABEL_116;
    }
  }

  else
  {
    v50 = v32;
    SCLog();
    *(j - 5) = v50;
    v43 = *(j - 4);
    v44 = v63;
  }

  if (v43 == a6)
  {
    goto LABEL_113;
  }

  SCLog();
  *(j - 4) = a6;
LABEL_116:
  v51 = *(j - 2);
  v52 = a7;
  v53 = v60;
  if (!*j)
  {
    if (v51 != v60)
    {
      SCLog();
      v53 = v60;
      v52 = a7;
      *(j - 2) = v60;
    }

    if (*(j - 2) != v62)
    {
      SCLog();
      v52 = a7;
      *(j - 2) = v62;
      v53 = *(j - 2);
    }

    if (v53 && (!v52 || a8))
    {
      *j = 1;
      goto LABEL_14;
    }

    return;
  }

  if (v51 != v60)
  {
    SCLog();
    if (!v61)
    {
      *(j - 2) = v60;
      return;
    }

    if (!a7 || a5)
    {
      goto LABEL_141;
    }

    return;
  }

  if (*(j - 2) == v62)
  {
    if (v29 == -65558)
    {
      goto LABEL_14;
    }

    return;
  }

  SCLog();
  if (!v61)
  {
    *(j - 2) = v62;
    return;
  }

  if (!a7 || a8)
  {
LABEL_141:
    SCLog();
    v40 = *v54;
LABEL_70:
    if (v40 == 1)
    {
      racoon_send_cmd_start_dpd(*(a10 + 784), *(a10 + 748), v34, v35, v36, v37, v38, v39);
      *(a10 + 992) = 1;
    }
  }
}

uint64_t sub_279BC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 64) == 1)
  {
    result = SCLog();
    if (*(a2 + 64) == 1)
    {
      result = racoon_send_cmd_start_dpd(*(a2 + 784), *(a2 + 748), v4, v5, v6, v7, v8, v9);
      *(a2 + 992) = 1;
    }
  }

  return result;
}

uint64_t ne_sm_bridge_logv()
{
  if (!qword_435D8 || !*qword_435D8)
  {
    return 0;
  }

  (*qword_435D8)();
  return 1;
}

uint64_t ne_sm_bridge_is_logging_at_level()
{
  if (qword_435D8 && (v0 = *(qword_435D8 + 8)) != 0)
  {
    return v0();
  }

  else
  {
    return 1;
  }
}

uint64_t ne_sm_bridge_copy_configuration(uint64_t a1)
{
  if (qword_435D8 && (v1 = *(qword_435D8 + 16)) != 0)
  {
    return v1(*(a1 + 1064));
  }

  else
  {
    return 0;
  }
}

uint64_t ne_sm_bridge_status_changed(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_435D8)
  {
    v8 = *(qword_435D8 + 24);
    if (v8)
    {
      v9 = *(result + 1064);
      v11 = *(qword_435D8 + 24);
      v10 = scnc_getstatus(result + 8, v8, a3, a4, a5, a6, a7, a8);

      return v11(v9, v10);
    }
  }

  return result;
}

uint64_t ne_sm_bridge_acknowledge_sleep(uint64_t result)
{
  if (qword_435D8)
  {
    v1 = *(qword_435D8 + 32);
    if (v1)
    {
      return v1(*(result + 1064));
    }
  }

  return result;
}

uint64_t ne_sm_bridge_filter_state_dictionaries(uint64_t result)
{
  if (qword_435D8)
  {
    v1 = *(qword_435D8 + 40);
    if (v1)
    {
      return v1(*(result + 1064));
    }
  }

  return result;
}

uint64_t ne_sm_bridge_copy_password_from_keychain(uint64_t a1)
{
  if (qword_435D8 && (v1 = *(qword_435D8 + 48)) != 0)
  {
    return v1(*(a1 + 1064));
  }

  else
  {
    return 0;
  }
}

void ne_sm_bridge_allow_dispose(uint64_t a1)
{
  v1 = *(a1 + 1072);
  *(a1 + 1072) = 0;
  if (v1)
  {
    v1[2](v1);

    _Block_release(v1);
  }
}

uint64_t ne_sm_bridge_get_connect_time(uint64_t a1)
{
  if (qword_435D8 && (v1 = *(qword_435D8 + 56)) != 0)
  {
    return v1(*(a1 + 1064));
  }

  else
  {
    return 0;
  }
}

uint64_t ne_sm_bridge_request_install(uint64_t a1)
{
  if (!qword_435D8)
  {
    return 0;
  }

  v1 = *(qword_435D8 + 64);
  if (!v1)
  {
    return 0;
  }

  v1(*(a1 + 1064));
  return 1;
}

uint64_t ne_sm_bridge_request_uninstall(uint64_t a1)
{
  if (!qword_435D8)
  {
    return 0;
  }

  v1 = *(qword_435D8 + 72);
  if (!v1)
  {
    return 0;
  }

  v1(*(a1 + 1064));
  return 1;
}

uint64_t ne_sm_bridge_start_profile_janitor(uint64_t a1, CFStringRef theString)
{
  if (!theString)
  {
    return 0;
  }

  result = CFStringGetCString(theString, buffer, 256, 0x8000100u);
  if (!result)
  {
    return result;
  }

  if (!qword_435D8)
  {
    return 0;
  }

  v4 = *(qword_435D8 + 80);
  if (!v4)
  {
    return 0;
  }

  v4(*(a1 + 1064), buffer);
  return 1;
}

uint64_t ne_sm_bridge_clear_saved_password(uint64_t result)
{
  if (qword_435D8)
  {
    v1 = *(qword_435D8 + 88);
    if (v1)
    {
      return v1(*(result + 1064));
    }
  }

  return result;
}

uint64_t ne_sm_bridge_copy_functions(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_27DCC;
  v3[3] = &unk_394D0;
  v3[4] = a1;
  v3[5] = a2;
  if (qword_435E0 != -1)
  {
    dispatch_once(&qword_435E0, v3);
  }

  return qword_435E8;
}

CFTypeRef sub_27DCC(uint64_t a1)
{
  v2 = malloc_type_malloc(0xB8uLL, 0x80040A224B1F7uLL);
  qword_435E8 = v2;
  *v2 = sub_27FCC;
  v2[1] = sub_281F4;
  v2[2] = sub_282B8;
  v2[3] = sub_284F0;
  v2[4] = sub_28580;
  v2[5] = sub_28600;
  v2[6] = sub_286A4;
  v2[7] = sub_28744;
  v2[8] = sub_287A4;
  v2[9] = sub_28828;
  v2[10] = sub_28908;
  v2[11] = sub_28944;
  v2[12] = sub_289BC;
  v2[13] = sub_28A34;
  v2[14] = sub_28BE8;
  v2[15] = sub_28C50;
  v2[16] = sub_28CB8;
  v2[17] = sub_28D28;
  v2[18] = sub_28D54;
  v2[19] = sub_28D80;
  v2[20] = sub_28D98;
  v2[21] = sub_28DB0;
  v2[22] = sub_28E2C;
  v3 = malloc_type_malloc(0x60uLL, 0x800408F261F10uLL);
  qword_435D8 = v3;
  v4 = *(a1 + 32);
  v5 = v4[1];
  *v3 = *v4;
  v3[1] = v5;
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[5];
  v3[4] = v4[4];
  v3[5] = v8;
  v3[2] = v6;
  v3[3] = v7;
  result = CFRetain(*(a1 + 40));
  gBundleRef = result;
  return result;
}

void *sub_27FCC(int a1, const __CFString *a2, uint64_t a3)
{
  if (qword_435F0 != -1)
  {
    sub_2C4EC();
  }

  if (byte_435F8 != 1)
  {
    return 0;
  }

  v6 = malloc_type_malloc(0x438uLL, 0x10F2040525B70B8uLL);
  bzero(v6 + 4, 0x434uLL);
  *v6 = a1;
  *(v6 + 133) = a3;
  v7 = v6 + 8;
  *(v6 + 4) = CFRetain(a2);
  Length = CFStringGetLength(a2);
  v9 = malloc_type_malloc(Length + 1, 0x7B28E523uLL);
  *(v6 + 8) = v9;
  CFStringGetCString(a2, v9, Length + 1, 0x8000100u);
  *(v6 + 74) = v6;
  if (a1 == 1)
  {
    *(v6 + 5) = CFRetain(kSCValNetInterfaceTypeIPSec);
    *(v6 + 36) = 1;
    ipsec_new_service((v6 + 8));
    v10 = ipsec_setup_service((v6 + 8));
    if (!v10)
    {
      goto LABEL_14;
    }

    sub_28E88(3, @"bridge_create: ipsec_setup_service failed: %d", v11, v12, v13, v14, v15, v16, v10);
    goto LABEL_12;
  }

  if ((a1 & 0xFFFFFFFE) == 2)
  {
    *(v6 + 5) = CFRetain(kSCValNetInterfaceTypePPP);
    v17 = &kSCValNetInterfaceSubTypeL2TP;
    *(v6 + 36) = 0;
    if (a1 != 3)
    {
      v17 = &kSCValNetInterfaceSubTypePPTP;
    }

    v18 = CFRetain(*v17);
    *(v6 + 6) = v18;
    *(v6 + 37) = ppp_subtype(v18);
    ppp_new_service((v6 + 8));
    v19 = ppp_setup_service((v6 + 8));
    if (v19)
    {
      sub_28E88(3, @"bridge_create: ppp_setup_service failed: %d", v20, v21, v22, v23, v24, v25, v19);
LABEL_12:
      LOBYTE(a1) = 0;
      goto LABEL_14;
    }
  }

  LOBYTE(a1) = 1;
LABEL_14:
  v26 = findfreeunit(*(v6 + 36), *(v6 + 37));
  *(v6 + 38) = v26;
  if (v26 == 0xFFFF)
  {
    sub_28E88(3, @"bridge_create: findfreeunit failed", v27, v28, v29, v30, v31, v32, v36);
    v34 = qword_436E8;
    *(v6 + 1) = 0;
    *(v6 + 2) = v34;
    *v34 = v7;
    qword_436E8 = (v6 + 8);
    goto LABEL_18;
  }

  v33 = qword_436E8;
  *(v6 + 1) = 0;
  *(v6 + 2) = v33;
  *v33 = v7;
  qword_436E8 = (v6 + 8);
  if ((a1 & 1) == 0)
  {
LABEL_18:
    sub_281F4(v6);
    return 0;
  }

  v6[24] = 1;
  return v6;
}

void sub_281F4(void *a1)
{
  if ((*a1 - 2) >= 2)
  {
    if (*a1 == 1)
    {
      ipsec_dispose_service(a1 + 8);
    }
  }

  else
  {
    ppp_dispose_service(a1 + 8);
  }

  CFRelease(*(a1 + 4));
  CFRelease(*(a1 + 5));
  v2 = *(a1 + 6);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = &service_head;
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  if (v4)
  {
    v3 = *(a1 + 1);
  }

  v3[1] = v5;
  *v5 = v4;
  v6 = *(a1 + 134);
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = *(a1 + 65);
  if (v7)
  {
    free(v7);
  }

  v8 = *(a1 + 66);
  if (v8)
  {
    free(v8);
  }

  free(*(a1 + 8));

  free(a1);
}

void sub_282B8(_DWORD *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1 == 1)
  {
    v8 = a3;
    if (scnc_getstatus((a1 + 2), a2, a3, a4, a5, a6, a7, a8))
    {
      memset(v45, 0, sizeof(v45));
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
      if (v8)
      {
        v39 = 0;
        v40 = 512;
        v41 = 0;
        strncpy(__dst, a2, 0xFuLL);
        v11 = socket(2, 2, 0);
        v12 = ioctl(v11, 0xC0206921uLL, __dst);
        close(v11);
        if (v12 < 0)
        {
          v30 = __error();
          v31 = strerror(*v30);
          sub_28E88(3, @"ioctl(SIOCGIFADDR) failed: %s", v32, v33, v34, v35, v36, v37, v31);
          return;
        }

        LODWORD(v45[0]) = HIDWORD(v40);
      }

      v13 = -1;
      do
      {
        v14 = a2[++v13];
        if (v14)
        {
          v15 = (v14 - 58) >= 0xFFFFFFF6;
        }

        else
        {
          v15 = 1;
        }
      }

      while (!v15);
      __strncpy_chk();
      if ((a2[v13] - 48) <= 9)
      {
        HIDWORD(v43) = strtol(&a2[v13], 0, 10);
      }

      if (v44 == 7368816)
      {
        DWORD2(v43) = 6;
      }

      if (v8)
      {
        v22 = 1;
      }

      else
      {
        v22 = 3;
      }

      DWORD1(v43) = v22;
      if (qword_435D8)
      {
        v23 = *(qword_435D8 + 8);
        if (v23)
        {
          if (!v23(7))
          {
LABEL_27:
            ipsec_network_event((a1 + 2), &v42);
            return;
          }

          v22 = DWORD1(v43);
        }
      }

      if (v22 == 3)
      {
        sub_28E88(7, @"Network change event: deleted address from interface %s%d (family %d)", v16, v17, v18, v19, v20, v21, &v44);
      }

      else if (v22 == 1)
      {
        *__dst = 0;
        v39 = 0;
        inet_ntop(2, v45, __dst, 0x10u);
        sub_28E88(7, @"Network change event: added address %s to interface %s%d (family %d)", v24, v25, v26, v27, v28, v29, __dst);
      }

      goto LABEL_27;
    }
  }
}

BOOL sub_284F0(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*a1 - 2) >= 2)
  {
    v9 = *a1 == 1 && ipsec_will_sleep((a1 + 2), 0) != 0;
  }

  else
  {
    v9 = ppp_will_sleep((a1 + 2), 0) > 0;
  }

  sub_28E88(7, @"handle sleep for bridge type %d returning %d", a3, a4, a5, a6, a7, a8, *a1);
  return v9;
}

BOOL sub_28580(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*a1 - 2) >= 2)
  {
    if (*a1 != 1)
    {
      v10 = 1;
      goto LABEL_7;
    }

    can_sleep = ipsec_can_sleep((a1 + 2));
  }

  else
  {
    can_sleep = ppp_can_sleep((a1 + 2));
  }

  v10 = can_sleep;
LABEL_7:
  sub_28E88(7, @"can sleep for bridge type %d returning %d", a3, a4, a5, a6, a7, a8, *a1);
  return v10;
}

uint64_t sub_28600(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = sub_28E88(6, @"System slept for %f secs", a4, a5, a6, a7, a8, a9, *&a2);
  if ((*(a1 + 83) & 8) != 0)
  {
    result = sub_28E88(6, @"Session is configured to disconnect on wake if slept for more than %f seconds", v12, v13, v14, v15, v16, v17, 0);
    *(a1 + 200) += a2;
    if (a2 > 0.0)
    {

      return scnc_idle_disconnect(a1 + 8, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  return result;
}

_DWORD *sub_286A4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_28E88(5, @"Handling wake up for bridge type %d", a3, a4, a5, a6, a7, a8, *a1);
  if ((*a1 - 2) >= 2)
  {
    if (*a1 == 1)
    {

      return ipsec_wake_up((a1 + 2));
    }
  }

  else
  {

    return ppp_wake_up(a1 + 2);
  }

  return result;
}

BOOL sub_28744(_DWORD *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((*a1 - 2) < 2)
  {
    v7 = ppp_start((a1 + 2), a2, a3, a4, a5, a6, 0, a7);
    return v7 == 0;
  }

  if (*a1 == 1)
  {
    v7 = ipsec_start((a1 + 2), a2, a3, a4, a5, 0, a7, a7);
    return v7 == 0;
  }

  return 0;
}

BOOL sub_287A4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_28E88(5, @"Handling stop for bridge type %d", a3, a4, a5, a6, a7, a8, *a1);
  if ((*a1 - 2) < 2)
  {
    v15 = ppp_stop(a1 + 2, 15);
    return v15 == 0;
  }

  if (*a1 == 1)
  {
    v15 = ipsec_stop((a1 + 2), 0, v9, v10, v11, v12, v13, v14);
    return v15 == 0;
  }

  return 0;
}

void sub_28828(_DWORD *a1, xpc_object_t xdict, _DWORD *a3, _DWORD *a4)
{
  xpc_dictionary_get_remote_connection(xdict);
  v7 = xpc_connection_copy_entitlement_value();
  v8 = v7;
  if (*a1 == 3)
  {
    if (!v7)
    {
      *a3 = 0;
      *a4 = 0;
      return;
    }
  }

  else if (*a1 != 2 || v7 == 0)
  {
    *a3 = 0;
    *a4 = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_16;
  }

  if (xpc_get_type(v7) == &_xpc_type_BOOL && xpc_BOOL_get_value(v8))
  {
    *a3 = a1[26];
    v10 = a1[27];
  }

  else
  {
    v10 = 0;
    *a3 = 0;
  }

  *a4 = v10;
LABEL_16:

  xpc_release(v8);
}

void *sub_28908(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 1072);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 1072) = result;
  return result;
}

uint64_t sub_28944(_DWORD *a1)
{
  v10 = 0;
  if ((*a1 - 2) < 2)
  {
    v1 = ppp_copystatistics((a1 + 2), &v10);
    if (!v1)
    {
      return v10;
    }

    goto LABEL_6;
  }

  if (*a1 == 1)
  {
    v1 = ipsec_copystatistics((a1 + 2), &v10);
    if (v1)
    {
LABEL_6:
      v2 = strerror(v1);
      sub_28E88(5, @"Failed to copy statistics: %s", v3, v4, v5, v6, v7, v8, v2);
    }
  }

  return v10;
}

uint64_t sub_289BC(_DWORD *a1)
{
  v10 = 0;
  if ((*a1 - 2) < 2)
  {
    v1 = ppp_copyextendedstatus((a1 + 2), &v10);
    if (!v1)
    {
      return v10;
    }

    goto LABEL_6;
  }

  if (*a1 == 1)
  {
    v1 = ipsec_copyextendedstatus((a1 + 2), &v10);
    if (v1)
    {
LABEL_6:
      v2 = strerror(v1);
      sub_28E88(5, @"Failed to copy extended status: %s", v3, v4, v5, v6, v7, v8, v2);
    }
  }

  return v10;
}

__CFDictionary *sub_28A34(uint64_t a1, xpc_object_t xdict)
{
  xpc_dictionary_get_remote_connection(xdict);
  if (qword_435D8 && (v3 = *(qword_435D8 + 16)) != 0)
  {
    v4 = v3(*(a1 + 1064));
  }

  else
  {
    v4 = 0;
  }

  value = 0;
  if ((*a1 - 2) >= 2)
  {
    if (*a1 != 1)
    {
      v9 = 0;
      goto LABEL_17;
    }

    v8 = ipsec_getconnectdata(a1 + 8, &value, 0);
LABEL_16:
    v9 = v8;
    goto LABEL_17;
  }

  v5 = xpc_connection_copy_entitlement_value();
  if (!v5)
  {
    v8 = ppp_getconnectdata(a1 + 8, &value, 0);
    goto LABEL_16;
  }

  v6 = v5;
  v7 = xpc_get_type(v5) == &_xpc_type_BOOL && xpc_BOOL_get_value(v6);
  v9 = ppp_getconnectdata(a1 + 8, &value, v7);
  xpc_release(v6);
LABEL_17:
  Mutable = 0;
  v11 = value;
  if (!v9 && value)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(Mutable, @"SessionLegacyUserConfiguration", value);
    v11 = value;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v4)
  {
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    CFDictionarySetValue(Mutable, @"SessionLegacyServiceConfiguration", v4);
    CFRelease(v4);
  }

  return Mutable;
}

_DWORD *sub_28BE8(_DWORD *result)
{
  if ((*result - 2) < 2)
  {
    result = ppp_install((result + 2));
    if (!result)
    {
      return result;
    }

LABEL_6:
    v1 = strerror(result);
    return sub_28E88(5, @"Failed to install: %s", v2, v3, v4, v5, v6, v7, v1);
  }

  if (*result == 1)
  {
    result = ipsec_install((result + 2));
    if (result)
    {
      goto LABEL_6;
    }
  }

  return result;
}

_DWORD *sub_28C50(_DWORD *result)
{
  if ((*result - 2) < 2)
  {
    result = ppp_uninstall((result + 2));
    if (!result)
    {
      return result;
    }

LABEL_6:
    v1 = strerror(result);
    return sub_28E88(5, @"Failed to uninstall: %s", v2, v3, v4, v5, v6, v7, v1);
  }

  if (*result == 1)
  {
    result = ipsec_uninstall((result + 2));
    if (result)
    {
      goto LABEL_6;
    }
  }

  return result;
}

_DWORD *sub_28CB8(_DWORD *result)
{
  if ((*result - 2) >= 2)
  {
    if (*result == 1)
    {
      result = ipsec_setup_service((result + 2));
      if (result)
      {
        return sub_28E88(3, @"bridge_create: ipsec_setup_service failed: %d", v7, v8, v9, v10, v11, v12, result);
      }
    }
  }

  else
  {
    result = ppp_setup_service((result + 2));
    if (result)
    {
      return sub_28E88(3, @"bridge_create: ppp_setup_service failed: %d", v1, v2, v3, v4, v5, v6, result);
    }
  }

  return result;
}

_DWORD *sub_28D28(_DWORD *result)
{
  if ((*result - 2) < 2)
  {
    return ppp_log_out((result + 2));
  }

  if (*result == 1)
  {
    return ipsec_log_out((result + 2));
  }

  return result;
}

_DWORD *sub_28D54(_DWORD *result)
{
  if ((*result - 2) < 2)
  {
    return ppp_log_switch(result + 2);
  }

  if (*result == 1)
  {
    return ipsec_log_switch((result + 2));
  }

  return result;
}

void sub_28D80(_DWORD *a1)
{
  if (*a1 == 1)
  {
    ipsec_device_lock();
  }
}

_DWORD *sub_28D98(_DWORD *result)
{
  if (*result == 1)
  {
    return ipsec_device_unlock((result + 2));
  }

  return result;
}

CFTypeID sub_28DB0(_DWORD *a1, const void *a2)
{
  result = CFDictionaryGetTypeID();
  if (a2)
  {
    v5 = result;
    result = CFGetTypeID(a2);
    if (result == v5 && *a1 == 1)
    {

      return ipsec_set_initial_values((a1 + 2), a2);
    }
  }

  return result;
}

FILE *sub_28E2C(FILE *result, _DWORD *a2)
{
  if (a2)
  {
    v3 = result;
    result = racoon_pid();
    *a2 = result;
    if ((LODWORD(v3->_p) - 2) >= 2)
    {
      if (LODWORD(v3->_p) != 1)
      {
        return result;
      }

      r = 0;
    }

    else
    {
      r = v3[4]._r;
    }

    a2[1] = r;
  }

  return result;
}

uint64_t sub_28E88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (qword_435D8)
  {
    if (*qword_435D8)
    {
      return (*qword_435D8)(result, a2, &a9, a4, a5, a6, a7, a8);
    }
  }

  return result;
}

void sub_28EC8(id a1)
{
  info = 0;
  values = kCFBooleanTrue;
  keys = kSCDynamicStoreUseSessionKeys;
  scnc_init_resources(gBundleRef);
  if (mach_timebase_info(&info))
  {
    sub_28E88(3, @"init_controller: mach_timebase_info failed", v1, v2, v3, v4, v5, v6, v18);
    return;
  }

  LODWORD(v7) = info.numer;
  LODWORD(v8) = info.denom;
  *&gTimeScaleSeconds = v7 / v8 / 1000000000.0;
  v9 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  gDynamicStore = SCDynamicStoreCreateWithOptions(kCFAllocatorDefault, @"NE - SCNC bridge", v9, 0, 0);
  if (gDynamicStore)
  {
    service_head = 0;
    qword_436E8 = &service_head;
    client_init_all();
    ipsec_init_things();
    byte_435F8 = 1;
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v10 = SCError();
    v11 = SCErrorString(v10);
    sub_28E88(3, @"init_controller: SCDynamicStoreCreateWithOptions failed: %s", v12, v13, v14, v15, v16, v17, v11);
    if (!v9)
    {
      return;
    }
  }

  CFRelease(v9);
}

uint64_t setup_security_context()
{
  *sp = 0;
  v5 = 0;
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v0 = bootstrap_look_up(bootstrap_port, "com.apple.SystemConfiguration.PPPController-priv", &sp[1]);
  if (v0)
  {
    if (v0 == 1102)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 4294967294;
    }
  }

  else
  {
    v1 = sub_2B3EC(sp[1], sp, &v5, &v4, v3);
    mach_port_deallocate(mach_task_self_, sp[1]);
    if (!v1)
    {
      if (!sp[0] || (v1 = task_set_special_port(mach_task_self_, 4, sp[0]), mach_port_deallocate(mach_task_self_, sp[0]), !v1))
      {
        if (v5)
        {
          if (!audit_session_join(v5))
          {
            return 4294967293;
          }

          mach_port_deallocate(mach_task_self_, v5);
        }

        return 0;
      }
    }
  }

  return v1;
}

void controller_options_modify_ondemand()
{
  v1 = 0;
  v2 = &v1;
  v3 = 0x2000000000;
  v4 = 1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_29268;
  block[3] = &unk_39538;
  block[4] = &v1;
  if (qword_43618 != -1)
  {
    dispatch_once(&qword_43618, block);
  }

  if (*(v2 + 24))
  {
    sub_29438(*qword_43610);
    SCPreferencesSynchronize(*qword_43610);
  }

  _Block_object_dispose(&v1, 8);
}

void sub_29268(uint64_t a1)
{
  memset(&context, 0, sizeof(context));
  qword_43610 = CFAllocatorAllocateTyped();
  v2 = SCPreferencesCreate(kCFAllocatorDefault, @"PPPController", @"com.apple.pppcontroller-options.plist");
  v3 = qword_43610;
  *qword_43610 = v2;
  if (!v2)
  {
    v6 = SCError();
    SCErrorString(v6);
LABEL_7:
    SCLog();
    *(*(*(a1 + 32) + 8) + 24) = 0;
    goto LABEL_8;
  }

  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = v3;
  if (!SCPreferencesSetCallback(v2, sub_293DC, &context) || (v4 = *qword_43610, Current = CFRunLoopGetCurrent(), !SCPreferencesScheduleWithRunLoop(v4, Current, kCFRunLoopDefaultMode)))
  {
    v7 = SCError();
    SCErrorString(v7);
    goto LABEL_7;
  }

LABEL_8:
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v8 = qword_43610;
    if (*qword_43610)
    {
      CFRelease(*qword_43610);
      v8 = qword_43610;
    }

    CFAllocatorDeallocate(kCFAllocatorDefault, v8);
    qword_43610 = 0;
  }
}

void sub_293DC(const __SCPreferences *a1, int a2)
{
  if (a2 == 1)
  {
    SCLog();
    sub_29438(a1);

    SCPreferencesSynchronize(a1);
  }
}

const void *sub_29438(const __SCPreferences *a1)
{
  SCLog();
  Value = SCPreferencesGetValue(a1, @"Debug");
  TypeID = CFBooleanGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    v4 = CFBooleanGetValue(Value);
    SCLog();
  }

  else
  {
    SCLog();
    v4 = 0;
  }

  gSCNCVerbose = _sc_verbose | v4;
  gSCNCDebug = v4;
  dword_40408 = 10;
  v5 = SCPreferencesGetValue(a1, @"OnDemandPauseIntervalOnAuthCancel");
  v6 = CFNumberGetTypeID();
  if (v5 && CFGetTypeID(v5) == v6)
  {
    CFNumberGetValue(v5, kCFNumberSInt32Type, &dword_40408);
  }

  SCLog();
  byte_4040C = 1;
  v7 = SCPreferencesGetValue(a1, @"PauseUntilNetChangeCheckWakeup");
  v8 = CFBooleanGetTypeID();
  if (v7 && CFGetTypeID(v7) == v8)
  {
    byte_4040C = CFBooleanGetValue(v7);
  }

  SCLog();
  byte_4040D = 1;
  v9 = SCPreferencesGetValue(a1, @"PauseUntilNetChangeCheckNetSignature");
  v10 = CFBooleanGetTypeID();
  if (v9 && CFGetTypeID(v9) == v10)
  {
    byte_4040D = CFBooleanGetValue(v9);
  }

  SCLog();
  byte_4040E = 1;
  v11 = SCPreferencesGetValue(a1, @"OnDemandAutoPauseUponDisconnect");
  v12 = CFBooleanGetTypeID();
  if (v11 && CFGetTypeID(v11) == v12)
  {
    byte_4040E = CFBooleanGetValue(v11);
  }

  SCLog();
  if (qword_43608)
  {
    CFRelease(qword_43608);
  }

  qword_43608 = 0;
  v13 = SCPreferencesGetValue(a1, @"OnDemandBlacklistedProcesses");
  v14 = CFArrayGetTypeID();
  if (v13 && CFGetTypeID(v13) == v14)
  {
    Count = CFArrayGetCount(v13);
    if (Count < 1)
    {
LABEL_26:
      qword_43608 = CFArrayCreateCopy(kCFAllocatorDefault, v13);
    }

    else
    {
      v16 = Count;
      v17 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v13, v17);
        v19 = CFStringGetTypeID();
        if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != v19)
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

  else
  {
    SCLog();
  }

  v20 = byte_43600;
  byte_43600 = 0;
  v21 = SCPreferencesGetValue(a1, @"UseVODDisconnectRulesWhenVODDisabled");
  v22 = CFBooleanGetTypeID();
  if (v21 && CFGetTypeID(v21) == v22)
  {
    byte_43600 = CFBooleanGetValue(v21);
  }

  result = SCLog();
  if (byte_43600 != v20)
  {
    v24 = service_head;
    if (service_head)
    {
      v25 = kSCPropNetVPNOnDemandRules;
      do
      {
        v26 = v24;
        v24 = *v24;
        v27 = *(v26 + 18);
        if ((v27 & 0x200000) == 0)
        {
          if (!byte_43600)
          {
            v28 = v27 & 0xFEDFFFFF;
            goto LABEL_39;
          }

          result = CFDictionaryGetValue(v26[17], v25);
          if (result)
          {
            v28 = *(v26 + 18) | 0x1000000;
LABEL_39:
            *(v26 + 18) = v28;
          }
        }
      }

      while (v24);
    }
  }

  return result;
}

void reachability_init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_299B4;
  block[3] = &unk_39560;
  block[5] = a1;
  block[6] = a2;
  block[4] = a3;
  if (qword_43620 != -1)
  {
    dispatch_once(&qword_43620, block);
  }
}

void *sub_299B4(uint64_t a1)
{
  qword_43628 = dispatch_queue_create("PPPController reachability dispatch queue", 0);
  qword_43630 = *(a1 + 40);
  CFRetain(qword_43630);
  qword_43638 = *(a1 + 48);
  CFRetain(qword_43638);
  result = _Block_copy(*(a1 + 32));
  qword_43640 = result;
  return result;
}

double reachability_clear(uint64_t a1)
{
  v2 = *(a1 + 536);
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_2A098;
    block[3] = &unk_395E0;
    block[4] = v2;
    dispatch_async(qword_43628, block);
  }

  *(a1 + 536) = 0;
  result = NAN;
  *(a1 + 544) = 0xFFFFFFFF00000000;
  return result;
}

void reachability_reset(uint64_t a1)
{
  reachability_clear(a1);
  v2 = scnc_copy_remote_server(a1, 0);
  TypeID = CFStringGetTypeID();
  if (v2 && CFGetTypeID(v2) == TypeID && CFStringGetLength(v2) >= 1)
  {
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    *bytes = 0u;
    Length = CFStringGetLength(v2);
    Typed = CFAllocatorAllocateTyped();
    CFStringGetCString(v2, Typed, Length, 0x600u);
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (inet_pton(2, Typed, &bytes[4]) == 1)
    {
      *bytes = 528;
      v7 = kCFAllocatorDefault;
      v8 = 16;
    }

    else
    {
      if (inet_pton(30, Typed, &bytes[8]) != 1)
      {
        CFDictionarySetValue(Mutable, @"nodename", v2);
        goto LABEL_10;
      }

      *bytes = 7708;
      v7 = kCFAllocatorDefault;
      v8 = 28;
    }

    v9 = CFDataCreate(v7, bytes, v8);
    CFDictionarySetValue(Mutable, @"remote-address", v9);
    CFRelease(v9);
LABEL_10:
    CFRelease(v2);
    CFAllocatorDeallocate(kCFAllocatorDefault, Typed);
    CFDictionarySetValue(Mutable, @"ConnectionOnDemandBypass", kCFBooleanTrue);
    v10 = *(a1 + 24);
    CFRetain(v10);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_29D14;
    block[3] = &unk_395C0;
    block[4] = Mutable;
    block[5] = v10;
    block[6] = v2;
    dispatch_async(qword_43628, block);
  }
}

void sub_29D14(uint64_t a1)
{
  v2 = SCNetworkReachabilityCreateWithOptions();
  CFRelease(*(a1 + 32));
  if (v2)
  {
    v3 = *(a1 + 40);
    context.version = 0;
    context.info = v3;
    context.retain = &_CFRetain;
    context.release = &_CFRelease;
    context.copyDescription = &CFCopyDescription;
    SCNetworkReachabilitySetCallback(v2, sub_29E60, &context);
    SCNetworkReachabilitySetDispatchQueue(v2, qword_43628);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_29F2C;
    block[3] = &unk_395A0;
    block[4] = *(a1 + 40);
    block[5] = v2;
    CFRunLoopPerformBlock(qword_43630, qword_43638, block);
    CFRunLoopWakeUp(qword_43630);
  }

  else
  {
    SCLog();
  }

  CFRelease(*(a1 + 40));
}

void sub_29E60(const void *a1, SCNetworkReachabilityFlags a2, const void *a3)
{
  flags = a2;
  CFRetain(a1);
  CFRetain(a3);
  SCNetworkReachabilityGetFlags(a1, &flags);
  InterfaceIndex = SCNetworkReachabilityGetInterfaceIndex();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_2A0E8;
  v6[3] = &unk_39600;
  v6[4] = a3;
  v6[5] = a1;
  v7 = flags;
  v8 = InterfaceIndex;
  CFRunLoopPerformBlock(qword_43630, qword_43638, v6);
  CFRunLoopWakeUp(qword_43630);
}

void sub_29F2C(uint64_t a1)
{
  v2 = findbyserviceID(*(a1 + 32));
  if (v2)
  {
    v3 = v2;
    v4 = v2[67];
    if (v4)
    {
      block = _NSConcreteStackBlock;
      v12 = 0x40000000;
      v13 = sub_2A098;
      v14 = &unk_395E0;
      v15 = v4;
      dispatch_async(qword_43628, &block);
      v3[67] = 0;
    }

    v5 = *(a1 + 40);
    v3[67] = v5;
    v6 = qword_43628;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = sub_2A088;
    v10[3] = &unk_39580;
    v7 = *(a1 + 32);
    v10[4] = v5;
    v10[5] = v7;
    p_block = v10;
  }

  else
  {
    v9 = *(a1 + 40);
    v6 = qword_43628;
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_2A098;
    v14 = &unk_395E0;
    v15 = v9;
    p_block = &block;
  }

  dispatch_async(v6, p_block);
}

void sub_2A098(uint64_t a1)
{
  SCNetworkReachabilitySetCallback(*(a1 + 32), 0, 0);
  SCNetworkReachabilitySetDispatchQueue(*(a1 + 32), 0);
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void sub_2A0E8(uint64_t a1)
{
  v2 = findbyserviceID(*(a1 + 32));
  if (v2 && v2[67] == *(a1 + 40))
  {
    *(v2 + 136) = *(a1 + 48);
    *(v2 + 137) = *(a1 + 52);
    (*(qword_43640 + 16))();
  }

  CFRelease(*(a1 + 40));
  v3 = *(a1 + 32);

  CFRelease(v3);
}

uint64_t sub_2A168(mach_port_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, _DWORD *a7, _DWORD *a8)
{
  msg.msgh_size = 0;
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
  v28 = NDR_record;
  v29 = a3;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x465000000000;
  if (&_voucher_mach_msg_set)
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

uint64_t sub_2A370(int a1, _DWORD *a2, _DWORD *a3)
{
  *&msg[20] = 0u;
  v14 = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x465100000000;
  if (&_voucher_mach_msg_set)
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

uint64_t sub_2A4E4(int a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  v16 = 0u;
  v15 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x465200000000;
  if (&_voucher_mach_msg_set)
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

uint64_t sub_2A6BC(int a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  v16 = 0u;
  v15 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x465300000000;
  if (&_voucher_mach_msg_set)
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

uint64_t sub_2A894(int a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  v16 = 0u;
  v15 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x465400000000;
  if (&_voucher_mach_msg_set)
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

uint64_t sub_2AA6C(mach_port_t a1, uint64_t a2, int a3, int a4, int *a5)
{
  v14 = 1;
  v15 = a2;
  v16 = 16777472;
  v17 = a3;
  v18 = NDR_record;
  v19 = a3;
  v20 = a4;
  reply_port = mig_get_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  *&msg.msgh_voucher_port = 0x465500000000;
  if (&_voucher_mach_msg_set)
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

uint64_t sub_2AC1C(mach_port_t a1, int a2, _DWORD *a3)
{
  v13 = 0u;
  v11.msgh_size = 0;
  v12 = NDR_record;
  LODWORD(v13) = a2;
  reply_port = mig_get_reply_port();
  v11.msgh_remote_port = a1;
  v11.msgh_local_port = reply_port;
  v11.msgh_bits = 5395;
  *&v11.msgh_voucher_port = 0x465600000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v11);
    msgh_local_port = v11.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v7 = mach_msg(&v11, 3, 0x24u, 0x30u, msgh_local_port, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_reply_port(v11.msgh_local_port);
      return v8;
    }

    if (v11.msgh_id == 71)
    {
      v8 = 4294966988;
    }

    else if (v11.msgh_id == 18106)
    {
      if ((v11.msgh_bits & 0x80000000) == 0)
      {
        if (v11.msgh_size == 40)
        {
          if (!v11.msgh_remote_port)
          {
            v8 = v13;
            if (!v13)
            {
              *a3 = DWORD1(v13);
              return v8;
            }

            goto LABEL_24;
          }
        }

        else if (v11.msgh_size == 36)
        {
          if (v11.msgh_remote_port)
          {
            v9 = 1;
          }

          else
          {
            v9 = v13 == 0;
          }

          if (v9)
          {
            v8 = 4294966996;
          }

          else
          {
            v8 = v13;
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
    mach_msg_destroy(&v11);
    return v8;
  }

  mig_put_reply_port(v11.msgh_local_port);
  return v8;
}

uint64_t sub_2AD98(int a1, _DWORD *a2)
{
  memset(&reply_port_12[4], 0, 28);
  reply_port = 0;
  v4 = mig_get_reply_port();
  reply_port_4 = a1;
  reply_port_8 = v4;
  v10 = 5395;
  *reply_port_12 = 0x465700000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v10);
    v5 = reply_port_8;
  }

  else
  {
    v5 = v4;
  }

  v6 = mach_msg(&v10, 3, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(reply_port_8);
      return v7;
    }

    if (*&reply_port_12[4] == 71)
    {
      v7 = 4294966988;
    }

    else if (*&reply_port_12[4] == 18107)
    {
      if ((v10 & 0x80000000) == 0)
      {
        if (reply_port == 40)
        {
          if (!reply_port_4)
          {
            v7 = *&reply_port_12[16];
            if (!*&reply_port_12[16])
            {
              *a2 = *&reply_port_12[20];
              return v7;
            }

            goto LABEL_24;
          }
        }

        else if (reply_port == 36)
        {
          if (reply_port_4)
          {
            v8 = 1;
          }

          else
          {
            v8 = *&reply_port_12[16] == 0;
          }

          if (v8)
          {
            v7 = 4294966996;
          }

          else
          {
            v7 = *&reply_port_12[16];
          }

          goto LABEL_24;
        }
      }

      v7 = 4294966996;
    }

    else
    {
      v7 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v10);
    return v7;
  }

  mig_put_reply_port(reply_port_8);
  return v7;
}

uint64_t sub_2AF00(int a1, _DWORD *a2)
{
  memset(&reply_port_12[4], 0, 28);
  reply_port = 0;
  v4 = mig_get_reply_port();
  reply_port_4 = a1;
  reply_port_8 = v4;
  v10 = 5395;
  *reply_port_12 = 0x465800000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v10);
    v5 = reply_port_8;
  }

  else
  {
    v5 = v4;
  }

  v6 = mach_msg(&v10, 3, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(reply_port_8);
      return v7;
    }

    if (*&reply_port_12[4] == 71)
    {
      v7 = 4294966988;
    }

    else if (*&reply_port_12[4] == 18108)
    {
      if ((v10 & 0x80000000) == 0)
      {
        if (reply_port == 40)
        {
          if (!reply_port_4)
          {
            v7 = *&reply_port_12[16];
            if (!*&reply_port_12[16])
            {
              *a2 = *&reply_port_12[20];
              return v7;
            }

            goto LABEL_24;
          }
        }

        else if (reply_port == 36)
        {
          if (reply_port_4)
          {
            v8 = 1;
          }

          else
          {
            v8 = *&reply_port_12[16] == 0;
          }

          if (v8)
          {
            v7 = 4294966996;
          }

          else
          {
            v7 = *&reply_port_12[16];
          }

          goto LABEL_24;
        }
      }

      v7 = 4294966996;
    }

    else
    {
      v7 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v10);
    return v7;
  }

  mig_put_reply_port(reply_port_8);
  return v7;
}

uint64_t sub_2B068(mach_port_t a1, int a2, _DWORD *a3)
{
  v13 = 0u;
  v11.msgh_size = 0;
  v12 = NDR_record;
  LODWORD(v13) = a2;
  reply_port = mig_get_reply_port();
  v11.msgh_remote_port = a1;
  v11.msgh_local_port = reply_port;
  v11.msgh_bits = 5395;
  *&v11.msgh_voucher_port = 0x465900000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v11);
    msgh_local_port = v11.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v7 = mach_msg(&v11, 3, 0x24u, 0x30u, msgh_local_port, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_reply_port(v11.msgh_local_port);
      return v8;
    }

    if (v11.msgh_id == 71)
    {
      v8 = 4294966988;
    }

    else if (v11.msgh_id == 18109)
    {
      if ((v11.msgh_bits & 0x80000000) == 0)
      {
        if (v11.msgh_size == 40)
        {
          if (!v11.msgh_remote_port)
          {
            v8 = v13;
            if (!v13)
            {
              *a3 = DWORD1(v13);
              return v8;
            }

            goto LABEL_24;
          }
        }

        else if (v11.msgh_size == 36)
        {
          if (v11.msgh_remote_port)
          {
            v9 = 1;
          }

          else
          {
            v9 = v13 == 0;
          }

          if (v9)
          {
            v8 = 4294966996;
          }

          else
          {
            v8 = v13;
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
    mach_msg_destroy(&v11);
    return v8;
  }

  mig_put_reply_port(v11.msgh_local_port);
  return v8;
}

uint64_t sub_2B1E4(mach_port_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7, int a8, int a9, _DWORD *a10, _DWORD *a11)
{
  v19 = 4;
  v18.msgh_size = 0;
  v20 = a2;
  v21 = 16777472;
  v22 = a3;
  v23 = a4;
  v24 = 1245184;
  v25 = a5;
  v26 = 1114112;
  v27 = a6;
  v28 = 1245184;
  v29 = NDR_record;
  v30 = a3;
  v31 = a7;
  v32 = a8;
  v33 = a9;
  reply_port = mig_get_reply_port();
  v18.msgh_remote_port = a1;
  v18.msgh_local_port = reply_port;
  v18.msgh_bits = -2147478253;
  *&v18.msgh_voucher_port = 0x465D00000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v18);
    msgh_local_port = v18.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v14 = mach_msg(&v18, 3, 0x68u, 0x3Cu, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v18.msgh_local_port);
  }

  else
  {
    if (!v14)
    {
      if (v18.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (v18.msgh_id == 18113)
      {
        if ((v18.msgh_bits & 0x80000000) != 0)
        {
          v15 = 4294966996;
          if (v19 == 1 && v18.msgh_size == 52 && !v18.msgh_remote_port && HIWORD(v21) << 16 == 1114112)
          {
            v15 = 0;
            v16 = HIDWORD(v23);
            *a10 = v20;
            *a11 = v16;
            return v15;
          }
        }

        else if (v18.msgh_size == 36)
        {
          v15 = 4294966996;
          if (HIDWORD(v20))
          {
            if (v18.msgh_remote_port)
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

    mig_dealloc_reply_port(v18.msgh_local_port);
  }

  return v15;
}

uint64_t sub_2B3EC(int a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _OWORD *a5)
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *&msg[4] = 0;
  *&msg[20] = 0u;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x465F00000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(msg);
    v11 = *&msg[12];
  }

  else
  {
    v11 = reply_port;
  }

  v12 = mach_msg(msg, 50331651, 0x18u, 0x84u, v11, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) <= 0xE && ((1 << (v12 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    return v13;
  }

  if (v12)
  {
    mig_dealloc_reply_port(*&msg[12]);
    return v13;
  }

  if (*&msg[20] == 71)
  {
    v13 = 4294966988;
    goto LABEL_28;
  }

  if (*&msg[20] != 18115)
  {
    v13 = 4294966995;
    goto LABEL_28;
  }

  if ((*msg & 0x80000000) == 0)
  {
    if (*&msg[4] == 36)
    {
      v13 = 4294966996;
      if (*&msg[32])
      {
        if (*&msg[8])
        {
          v13 = 4294966996;
        }

        else
        {
          v13 = *&msg[32];
        }
      }
    }

    else
    {
      v13 = 4294966996;
    }

    goto LABEL_28;
  }

  v13 = 4294966996;
  if (*&msg[24] != 2 || *&msg[4] != 64 || *&msg[8] || WORD1(v18) << 16 != 1114112 || HIWORD(v18) << 16 != 1114112)
  {
LABEL_28:
    mach_msg_destroy(msg);
    return v13;
  }

  if (HIDWORD(v19) || v20 < 0x20)
  {
    return 4294966987;
  }

  v13 = 0;
  v15 = DWORD1(v18);
  *a2 = *&msg[28];
  *a3 = v15;
  *a4 = DWORD2(v19);
  v16 = v22;
  *a5 = v21;
  a5[1] = v16;
  return v13;
}

uint64_t sub_2B5DC(mach_port_t a1, int a2, void *a3, _DWORD *a4, _DWORD *a5, _OWORD *a6)
{
  memset(v22, 0, sizeof(v22));
  v21 = 0u;
  v20 = 0u;
  msg.msgh_size = 0;
  *v19 = NDR_record;
  *&v19[8] = a2;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x466000000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v13 = mach_msg(&msg, 50331651, 0x24u, 0x80u, msgh_local_port, 0, 0);
  v14 = v13;
  if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v14;
  }

  if (v13)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v14;
  }

  if (msg.msgh_id == 71)
  {
    v14 = 4294966988;
    goto LABEL_28;
  }

  if (msg.msgh_id != 18116)
  {
    v14 = 4294966995;
    goto LABEL_28;
  }

  if ((msg.msgh_bits & 0x80000000) == 0)
  {
    if (msg.msgh_size == 36)
    {
      v14 = 4294966996;
      if (*&v19[8])
      {
        if (msg.msgh_remote_port)
        {
          v14 = 4294966996;
        }

        else
        {
          v14 = *&v19[8];
        }
      }
    }

    else
    {
      v14 = 4294966996;
    }

    goto LABEL_28;
  }

  v14 = 4294966996;
  if (*v19 != 1 || msg.msgh_size != 60 || msg.msgh_remote_port || BYTE3(v20) != 1 || (v15 = DWORD1(v20), DWORD1(v20) != v21))
  {
LABEL_28:
    mach_msg_destroy(&msg);
    return v14;
  }

  if (DWORD2(v21) || HIDWORD(v21) < 0x20)
  {
    return 4294966987;
  }

  v14 = 0;
  *a3 = *&v19[4];
  *a4 = v15;
  *a5 = DWORD1(v21);
  v17 = *&v22[28];
  *a6 = *&v22[12];
  a6[1] = v17;
  return v14;
}

uint64_t sub_2B810(int a1, _DWORD *a2, _OWORD *a3)
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v14 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x466100000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(msg);
    v7 = *&msg[12];
  }

  else
  {
    v7 = reply_port;
  }

  v8 = mach_msg(msg, 50331651, 0x18u, 0x6Cu, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    return v9;
  }

  if (v8)
  {
    mig_dealloc_reply_port(*&msg[12]);
    return v9;
  }

  if (*&msg[20] == 71)
  {
    v9 = 4294966988;
LABEL_24:
    mach_msg_destroy(msg);
    return v9;
  }

  if (*&msg[20] != 18117)
  {
    v9 = 4294966995;
    goto LABEL_24;
  }

  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (*&msg[4] != 40)
  {
    if (*&msg[4] == 36)
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

    goto LABEL_23;
  }

  if (*&msg[8])
  {
LABEL_23:
    v9 = 4294966996;
    goto LABEL_24;
  }

  v9 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_24;
  }

  if (DWORD1(v14) || DWORD2(v14) < 0x20)
  {
    return 4294966987;
  }

  v9 = 0;
  *a2 = v14;
  v12 = *(&v15[1] + 8);
  *a3 = *(v15 + 8);
  a3[1] = v12;
  return v9;
}

uint64_t sub_2B9D4(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 18022) >= 0xFFFFFFEA)
  {
    return *(&_pppcontroller_subsystem + 5 * (v1 - 18000) + 5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2BA10(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 4 || *(result + 4) != 92)
  {
    v3 = -304;
    goto LABEL_13;
  }

  if (*(result + 39) != 1 || *(result + 54) << 16 != 1114112 || *(result + 66) << 16 != 1114112 || *(result + 78) << 16 != 1114112 || *(result + 40) != *(result + 88))
  {
    v3 = -300;
    goto LABEL_13;
  }

  if (*(result + 92) || *(result + 96) <= 0x1Fu)
  {
    v3 = -309;
LABEL_13:
    *(a2 + 32) = v3;
    goto LABEL_14;
  }

  *(a2 + 32) = 0x11000000000000;
  v4 = *(result + 12);
  v5 = *(result + 28);
  v6 = *(result + 40);
  v7 = *(result + 44);
  v8 = *(result + 56);
  v9 = *(result + 68);
  v10 = *(result + 128);
  v11[0] = *(result + 112);
  v11[1] = v10;
  result = sub_17524(v4, v5, v6, v7, v8, v9, (a2 + 28), (a2 + 48), v11);
  if (!result)
  {
    *(a2 + 40) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 52;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_14:
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_2BB60(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_17608(result[3], (a2 + 36), (a2 + 40));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 44;
    }
  }

  return result;
}

_DWORD *sub_2BBE0(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = sub_1766C(result[3], (a2 + 28), (a2 + 52), (a2 + 56));
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
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

_DWORD *sub_2BC8C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = sub_1770C(result[3], (a2 + 28), (a2 + 52), (a2 + 56));
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
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

_DWORD *sub_2BD38(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = sub_177AC(result[3], (a2 + 28), (a2 + 52), (a2 + 56));
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
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_2BDE4(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 60)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v4 = -300;
    goto LABEL_9;
  }

  result = sub_17850(*(result + 12), *(result + 28), v3, *(result + 56), (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *sub_2BE9C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_17978(result[3], result[8], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

_DWORD *sub_2BF20(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_17A1C(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

_DWORD *sub_2BF9C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_17A70(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

_DWORD *sub_2C018(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_17AC4(result[3], result[8], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

uint64_t sub_2C09C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 4 || *(result + 4) != 104)
  {
    v3 = -304;
    goto LABEL_13;
  }

  if (*(result + 39) != 1 || *(result + 54) << 16 != 1114112 || *(result + 66) << 16 != 1114112 || *(result + 78) << 16 != 1114112 || *(result + 40) != *(result + 88))
  {
    v3 = -300;
    goto LABEL_13;
  }

  if (*(result + 104) || *(result + 108) <= 0x1Fu)
  {
    v3 = -309;
LABEL_13:
    *(a2 + 32) = v3;
    goto LABEL_14;
  }

  *(a2 + 32) = 0x11000000000000;
  v4 = *(result + 12);
  v5 = *(result + 28);
  v6 = *(result + 40);
  v7 = *(result + 44);
  v8 = *(result + 56);
  v9 = *(result + 68);
  v10 = *(result + 92);
  v11 = *(result + 96);
  v12 = *(result + 100);
  v13 = *(result + 140);
  v14[0] = *(result + 124);
  v14[1] = v13;
  result = sub_16F08(v4, v5, v6, v7, v8, v9, v10, v11, v12, (a2 + 28), (a2 + 48), v14);
  if (!result)
  {
    *(a2 + 40) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 52;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_14:
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_2C1FC(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 24)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 24) || *(result + 28) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
LABEL_8:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 32) = 0x13000000000000;
  *(a2 + 44) = 0x13000000000000;
  result = sub_17B18(*(result + 12), (a2 + 28), (a2 + 40), (a2 + 60), (result + 44));
  if (result)
  {
    *(a2 + 32) = result;
    goto LABEL_8;
  }

  *(a2 + 52) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 64;
  *(a2 + 24) = 2;
  return result;
}

uint64_t sub_2C2C8(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
LABEL_8:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 36) = 16777473;
  result = sub_17BBC(*(result + 12), *(result + 32), (a2 + 28), (a2 + 52), (a2 + 56), (result + 56));
  if (result)
  {
    *(a2 + 32) = result;
    goto LABEL_8;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_2C3A0(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 24)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 24) || *(result + 28) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  result = sub_17CA4(*(result + 12), (a2 + 36), (result + 44));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_2C440(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 18022) >= 0xFFFFFFEA && (v5 = *(&_pppcontroller_subsystem + 5 * (v4 - 18000) + 5)) != 0)
  {
    v5(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
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

CFRange CFURLGetByteRangeForComponent(CFURLRef url, CFURLComponentType component, CFRange *rangeIncludingSeparators)
{
  v5 = _CFURLGetByteRangeForComponent(url, component, rangeIncludingSeparators);
  length = v5.length;
  location = v5.location;
  result.length = length;
  result.location = location;
  return result;
}