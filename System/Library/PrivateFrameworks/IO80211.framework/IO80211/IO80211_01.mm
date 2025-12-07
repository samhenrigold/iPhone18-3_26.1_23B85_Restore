uint64_t Apple80211IOCTLGetWrapper()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v64 = *MEMORY[0x277D85DE8];
  v4 = *(v1 + 16);
  if (!*(v0 + 109))
  {
    if (*(v0 + 1817))
    {
      bzero(buf, 0x3C30uLL);
      *buf = -1071093303;
      v6 = v3 + 4;
      __strlcpy_chk();
      v62 = v4;
      v63 = v2[5];
      if (*(v3 + 2008))
      {
        v7 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          if (v4 > 584)
          {
            v8 = "Error Invalid ioctl";
          }

          else if (v4 == -1)
          {
            v8 = "APPLE80211_IOC_CARD_SPECIFIC";
          }

          else if (v4 < 0 || (v8 = gAppleIoucIndexToString[v4]) == 0)
          {
            v8 = "unknown Apple80211_IOC_";
          }

          v15 = v2[6];
          *v39 = 136448002;
          *&v39[4] = "Apple80211IOCTLGetWrapper";
          *&v39[12] = 1024;
          *&v39[14] = 8095;
          *&v39[18] = 2048;
          *&v39[20] = v7 / 0x3B9ACA00;
          *&v39[28] = 2048;
          *&v39[30] = v7 % 0x3B9ACA00 / 0x3E8;
          v40 = 2082;
          v41 = v3 + 4;
          v42 = 1024;
          v43 = v4;
          v44 = 2082;
          v45 = v8;
          v46 = 1024;
          v47 = v15;
          _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s:%u @[%llu.%06llu] ifname['%{public}s'] IOUC type %d/'%{public}s', len[%d]\n", v39, 0x46u);
        }
      }

      v16 = v2[6];
      if ((v16 - 1) >> 10 >= 0xF)
      {
        v17 = *(v2 + 4);
      }

      else
      {
        LODWORD(v53) = v2[6];
        v17 = *(v2 + 4);
        __memcpy_chk();
      }

      if (v16)
      {
        v18 = v17 == 0;
      }

      else
      {
        v18 = 1;
      }

      v19 = v18;
      v20 = 4;
      if (!v18)
      {
        v20 = v16;
      }

      outputStructCnt = v20;
      v21 = *(v3 + 1820);
      if (v21)
      {
        if (v19)
        {
          v22 = v2 + 5;
        }

        else
        {
          v22 = v17;
        }

        v23 = IOConnectCallStructMethod(v21, 0, buf, 0x3C30uLL, v22, &outputStructCnt);
        if (v23)
        {
          *__error() = v23;
          v24 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            if (v4 > 584)
            {
              v25 = "Error Invalid ioctl";
            }

            else if (v4 == -1)
            {
              v25 = "APPLE80211_IOC_CARD_SPECIFIC";
            }

            else if (v4 < 0 || (v25 = gAppleIoucIndexToString[v4]) == 0)
            {
              v25 = "unknown Apple80211_IOC_";
            }

            v37 = v2[6];
            *v39 = 136448514;
            *&v39[4] = "Apple80211IOCTLGetWrapper";
            *&v39[12] = 1024;
            *&v39[14] = 8128;
            *&v39[18] = 2048;
            *&v39[20] = v24 / 0x3B9ACA00;
            *&v39[28] = 2048;
            *&v39[30] = v24 % 0x3B9ACA00 / 0x3E8;
            v40 = 2082;
            v41 = v6;
            v42 = 1024;
            v43 = v4;
            v44 = 2082;
            v45 = v25;
            v46 = 1024;
            v47 = v37;
            v48 = 1024;
            v49 = v23;
            v50 = 1024;
            v51 = v23;
            _os_log_debug_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}s:%u @[%llu.%06llu] ifname['%{public}s'] IOUC type %d/'%{public}s', len[%d] return %d/0x%08x\n", v39, 0x52u);
          }
        }

        else
        {
          v2[6] = outputStructCnt;
        }

        return v23;
      }

      v23 = 3758097088;
      v26 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v23;
      }

      if (v4 > 584)
      {
        v27 = "Error Invalid ioctl";
      }

      else if (v4 == -1)
      {
        v27 = "APPLE80211_IOC_CARD_SPECIFIC";
      }

      else if (v4 < 0 || (v27 = gAppleIoucIndexToString[v4]) == 0)
      {
        v27 = "unknown Apple80211_IOC_";
      }

      *v39 = 136447746;
      *&v39[4] = "Apple80211IOCTLGetWrapper";
      *&v39[12] = 1024;
      *&v39[14] = 8113;
      *&v39[18] = 2048;
      *&v39[20] = v26 / 0x3B9ACA00;
      *&v39[28] = 2048;
      *&v39[30] = v26 % 0x3B9ACA00 / 0x3E8;
      v40 = 2082;
      v41 = v6;
      v42 = 1024;
      v43 = v4;
      v44 = 2082;
      v45 = v27;
      v28 = MEMORY[0x277D86220];
      v29 = "%{public}s:%u @[%llu.%06llu] ifname['%{public}s'] WiFi is in the middle of recovery, ignore command, type %d/'%{public}s'\n";
      v30 = v39;
      v31 = 64;
    }

    else
    {
      memset(v39, 0, 32);
      v9 = v0 + 4;
      __strlcpy_chk();
      v10 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      ioctl(*v3, 0xC0206911uLL, v39);
      v11 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v10;
      if (v11 > 0x3B9AC9FF && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136448258;
        v53 = "_logTimeIfThresholdExceeded";
        v54 = 2082;
        *v55 = v39;
        *&v55[8] = 2080;
        *&v55[10] = " 'SIOCGIFFLAGS' ";
        *&v55[18] = 1024;
        *&v55[20] = -1071617775;
        v56 = 1024;
        *v57 = -1071617775;
        *&v57[4] = 2048;
        *&v57[6] = v11 / 0x3B9ACA00;
        v58 = 2048;
        *v59 = v11 % 0x3B9ACA00 / 0x3E8;
        *&v59[8] = 2048;
        *&v59[10] = 1;
        *&v59[18] = 2048;
        v60 = 0;
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: ['%{public}s']%s: ioctl[0x%08x/%u] [%llu.%06llu] Exceeded threshold >= [%llu.%06llu]\n", buf, 0x54u);
      }

      __strlcpy_chk();
      if (*(v3 + 2008))
      {
        v12 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v13 = v2[4];
          if (v13 > 584)
          {
            v14 = "Error Invalid ioctl";
          }

          else if (v13 == -1)
          {
            v14 = "APPLE80211_IOC_CARD_SPECIFIC";
          }

          else if (v13 < 0 || (v14 = gAppleIoucIndexToString[v13]) == 0)
          {
            v14 = "unknown Apple80211_IOC_";
          }

          v32 = v2[6];
          *buf = 136448258;
          v53 = "Apple80211IOCTLGetWrapper";
          v54 = 1024;
          *v55 = 8150;
          *&v55[4] = 2048;
          *&v55[6] = v12 / 0x3B9ACA00;
          *&v55[14] = 2048;
          *&v55[16] = v12 % 0x3B9ACA00 / 0x3E8;
          v56 = 2082;
          *v57 = v3 + 4;
          *&v57[8] = 1024;
          *&v57[10] = *&v39[16];
          v58 = 1024;
          *v59 = v13;
          *&v59[4] = 2082;
          *&v59[6] = v14;
          *&v59[14] = 1024;
          *&v59[16] = v32;
          _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s:%u @[%llu.%06llu] ifname['%{public}s']/0x%08x IOCTL type %d/'%{public}s', len[%d]\n", buf, 0x4Cu);
        }
      }

      v23 = ioctl(*v3, 0xC02869C9uLL, v2);
      if (!v23)
      {
        return v23;
      }

      v33 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v23;
      }

      v34 = v2[4];
      if (v34 > 584)
      {
        v35 = "Error Invalid ioctl";
      }

      else if (v34 == -1)
      {
        v35 = "APPLE80211_IOC_CARD_SPECIFIC";
      }

      else if (v34 < 0 || (v35 = gAppleIoucIndexToString[v34]) == 0)
      {
        v35 = "unknown Apple80211_IOC_";
      }

      v36 = v2[6];
      *buf = 136448770;
      v53 = "Apple80211IOCTLGetWrapper";
      v54 = 1024;
      *v55 = 8156;
      *&v55[4] = 2048;
      *&v55[6] = v33 / 0x3B9ACA00;
      *&v55[14] = 2048;
      *&v55[16] = v33 % 0x3B9ACA00 / 0x3E8;
      v56 = 2082;
      *v57 = v9;
      *&v57[8] = 1024;
      *&v57[10] = *&v39[16];
      v58 = 1024;
      *v59 = v34;
      *&v59[4] = 2082;
      *&v59[6] = v35;
      *&v59[14] = 1024;
      *&v59[16] = v36;
      LOWORD(v60) = 1024;
      *(&v60 + 2) = v23;
      HIWORD(v60) = 1024;
      v61 = v23;
      v28 = MEMORY[0x277D86220];
      v29 = "%{public}s:%u @[%llu.%06llu] ifname['%{public}s']/0x%08x IOCTL type %d/'%{public}s', len[%d] return %d/0x%08x\n";
      v30 = buf;
      v31 = 88;
    }

    _os_log_impl(&dword_254882000, v28, OS_LOG_TYPE_DEFAULT, v29, v30, v31);
    return v23;
  }

  return _Apple80211AWDLCompatibilityCall(v0, v1, 0);
}

uint64_t _addScanResultToList(uint64_t a1, _WORD *a2, const __CFArray *a3, const __CFArray *a4, CFTypeRef cf, int a6, int a7, int a8, char a9, char a10, char a11, char a12)
{
  v189 = *MEMORY[0x277D85DE8];
  idx = 0xAAAAAAAAAAAAAAAALL;
  if (!a2)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      return 4294963396;
    }

    v20 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v157 = 0;
    v26 = 0;
    v28 = 0;
    cf1 = 0;
    v163 = 0;
    v162 = 4294963396;
    goto LABEL_339;
  }

  v177 = *(a1 + 99);
  v18 = MEMORY[0x277CBECE8];
  if (cf)
  {
    Mutable = CFRetain(cf);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v20 = Mutable;
  if (!Mutable)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      return 4294963395;
    }

    v20 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v157 = 0;
    v26 = 0;
    v28 = 0;
    cf1 = 0;
    v163 = 0;
    v162 = 4294963395;
    goto LABEL_339;
  }

  v21 = 134217984;
  theArray = a4;
  v178 = a3;
  if ((v177 & 0x40) == 0)
  {
    v173 = 0;
LABEL_9:
    if (*(a2 + 96) && *(a2 + 97))
    {
      v23 = *v18;
      v24 = 1;
      do
      {
        v25 = CFStringCreateWithBytes(v23, a2 + 97, *(a2 + 96), v21, 0);
        v26 = v25;
        if ((v24 & 1) == 0)
        {
          break;
        }

        v24 = 0;
        v21 = 1280;
      }

      while (!v25);
      v27 = CFDataCreate(v23, a2 + 97, *(a2 + 96));
      v28 = 0;
      a3 = v178;
      if (!v27)
      {
        v162 = 4294963395;
        v159 = 0;
        v160 = 0;
        v161 = 0;
        v157 = 0;
        cf1 = 0;
        goto LABEL_337;
      }

      cf1 = v27;
    }

    else
    {
      cf1 = 0;
      v28 = 0;
      v26 = 0;
    }

    goto LABEL_19;
  }

  v22 = *(a2 + 136);
  v173 = (v22 >> 2) & 1;
  if ((v22 & 8) == 0)
  {
    goto LABEL_9;
  }

  valuePtr = *(a2 + 97);
  v29 = CFNumberCreate(*v18, kCFNumberSInt32Type, &valuePtr);
  cf1 = 0;
  if (!v29)
  {
    v162 = 4294963395;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v157 = 0;
    v26 = 0;
    v28 = 0;
    goto LABEL_337;
  }

  v28 = v29;
  v26 = 0;
LABEL_19:
  v30 = ether_ntoa((a2 + 14));
  if (v30)
  {
    v167 = a6;
    v31 = *v18;
    cf2 = CFStringCreateWithCString(*v18, v30, 0x8000100u);
    if (cf2)
    {
      v168 = a1;
      v166 = a7;
      v171 = v26;
      v172 = v28;
      theDict = v20;
      if (a3)
      {
        Count = CFArrayGetCount(a3);
        idx = 0;
        if (Count >= 1)
        {
          v33 = Count;
          v34 = 0;
          v35 = *MEMORY[0x277CBED28];
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a3, v34);
            if (ValueAtIndex)
            {
              v37 = ValueAtIndex;
              Value = CFDictionaryGetValue(ValueAtIndex, @"BSSID");
              v39 = CFDictionaryGetValue(v37, @"SSID");
              if ((v177 & 0x40) != 0)
              {
                v40 = CFDictionaryGetValue(v37, @"SHORT_SSID");
                v41 = CFDictionaryGetValue(v37, @"SCAN_RESULT_FROM_FILS_DISC_FRAME") == v35;
                if (!Value)
                {
                  goto LABEL_42;
                }
              }

              else
              {
                v40 = 0;
                v41 = 0;
                if (!Value)
                {
                  goto LABEL_42;
                }
              }

              if (CFEqual(Value, cf2))
              {
                if (cf1 && v39)
                {
                  if (!CFEqual(v39, cf1))
                  {
                    goto LABEL_42;
                  }
                }

                else if (cf1 || v39)
                {
                  goto LABEL_42;
                }

                if (v41 == v173)
                {
                  if (v172 && v40)
                  {
                    if (CFEqual(v40, v172))
                    {
                      v159 = 0;
                      v160 = 0;
                      v161 = 0;
                      v162 = 4294963394;
                      goto LABEL_332;
                    }
                  }

                  else if (!(v172 | v40))
                  {
                    v159 = 0;
                    v160 = 0;
                    v161 = 0;
                    v28 = 0;
                    v162 = 4294963394;
                    v20 = theDict;
                    v157 = cf2;
                    goto LABEL_337;
                  }
                }
              }
            }

LABEL_42:
            v34 = idx + 1;
            idx = v34;
            a3 = v178;
          }

          while (v34 < v33);
        }
      }

      else
      {
        idx = 0;
      }

      if (!a12 && v173)
      {
        v159 = 0;
        v160 = 0;
        v161 = 0;
        goto LABEL_357;
      }

      cfa = 0;
      v42 = 0;
      v20 = theDict;
      if (!v167 || !cf1)
      {
        goto LABEL_98;
      }

      v43 = theArray;
      if (!theArray)
      {
        v42 = 0;
        cfa = 0;
        idx = 0;
        goto LABEL_98;
      }

      v44 = CFArrayGetCount(theArray);
      idx = 0;
      if (v44 < 1)
      {
        v42 = 0;
        cfa = 0;
        goto LABEL_98;
      }

      v45 = v44;
      cfa = 0;
      v46 = 0;
      while (1)
      {
        v47 = CFArrayGetValueAtIndex(v43, v46);
        if (!v47)
        {
          goto LABEL_74;
        }

        v48 = v47;
        v49 = CFDictionaryGetValue(v47, @"SSID");
        if (!v49)
        {
          goto LABEL_74;
        }

        if (!CFEqual(cf1, v49))
        {
          goto LABEL_74;
        }

        LOWORD(v184) = -21846;
        v50 = CFDictionaryGetValue(v48, @"AP_MODE");
        if (!v50 || !CFNumberGetValue(v50, kCFNumberSInt16Type, &v184))
        {
          goto LABEL_74;
        }

        if (v184 != 2)
        {
          break;
        }

        if (a2[13])
        {
          goto LABEL_62;
        }

LABEL_74:
        v46 = idx + 1;
        idx = v46;
        if (v46 >= v45)
        {
          v42 = 0;
          goto LABEL_98;
        }
      }

      if (v184 == 1 && (a2[13] & 2) == 0)
      {
        goto LABEL_74;
      }

LABEL_62:
      if (a8)
      {
        v51 = a2[69];
        if ((v51 - 3) <= 0x7FD)
        {
          v56 = 0;
          v57 = 0;
          v58 = (a2 + 70);
          do
          {
            v59 = v51 - 2;
            v60 = v58[1];
            v97 = v59 >= v60;
            v51 = v59 - v60;
            if (!v97)
            {
              break;
            }

            v61 = *v58;
            if (v60 >= 4 && v61 == 127)
            {
              if ((v58[4] & 8) != 0)
              {
                v57 = 1;
              }
            }

            else if (v60 >= 5 && v61 == 11)
            {
              if (*(v58 + 1) != -1)
              {
                break;
              }

              v56 = 1;
            }

            if (v57 && v56)
            {
              goto LABEL_74;
            }

            v63 = &v58[v60 + 2];
            if (v51 > 0)
            {
              v58 = v63;
            }
          }

          while (v51 > 2);
        }
      }

      if (a10)
      {
        v52 = CFDictionaryGetValue(v48, @"SCAN_BSSID_LIST");
        if (v52)
        {
          v53 = v52;
          if (cfa)
          {
            CFRelease(cfa);
          }

          cfa = CFArrayCreateMutableCopy(v31, 0, v53);
        }

        v43 = theArray;
      }

      v54 = CFDictionaryGetValue(v48, @"RSSI");
      if (!v54)
      {
        goto LABEL_74;
      }

      v182 = -21846;
      if (!CFNumberGetValue(v54, kCFNumberSInt16Type, &v182))
      {
        goto LABEL_74;
      }

      v55 = CFDictionaryGetValue(v48, @"CHANNEL_FLAGS");
      if (!v55)
      {
        goto LABEL_74;
      }

      valuePtr = -1431655766;
      if (!CFNumberGetValue(v55, kCFNumberSInt32Type, &valuePtr))
      {
        goto LABEL_74;
      }

      v164 = *(a2 + 3);
      if ((valuePtr & 0x2000) != 0)
      {
        if ((v164 & 0x2000) == 0)
        {
LABEL_345:
          CFArrayRemoveValueAtIndex(v43, idx);
          v42 = 0;
          goto LABEL_98;
        }
      }

      else if ((v164 & 0x2000) != 0)
      {
LABEL_346:
        if (cfa)
        {
          CFArrayAppendValue(cfa, cf2);
          CFDictionarySetValue(v48, @"SCAN_BSSID_LIST", cfa);
          CFRelease(cfa);
        }

        cfa = 0;
        v42 = 1;
LABEL_98:
        v64 = CFNumberCreate(v31, kCFNumberSInt32Type, a2 + 4);
        if (!v64)
        {
          goto LABEL_333;
        }

        v65 = v64;
        CFDictionarySetValue(theDict, @"CHANNEL", v64);
        CFRelease(v65);
        v66 = CFNumberCreate(v31, kCFNumberSInt32Type, a2 + 6);
        if (!v66)
        {
          goto LABEL_333;
        }

        v67 = v66;
        CFDictionarySetValue(theDict, @"CHANNEL_FLAGS", v66);
        CFRelease(v67);
        if (!a2[8])
        {
          goto LABEL_104;
        }

        v68 = CFNumberCreate(v31, kCFNumberSInt16Type, a2 + 9);
        if (!v68)
        {
          goto LABEL_333;
        }

        v69 = v68;
        CFDictionarySetValue(theDict, @"NOISE", v68);
        CFRelease(v69);
        v70 = CFNumberCreate(v31, kCFNumberSInt16Type, a2 + 10);
        if (!v70)
        {
          goto LABEL_333;
        }

        v71 = v70;
        CFDictionarySetValue(theDict, @"SNR", v70);
        CFRelease(v71);
LABEL_104:
        v72 = CFNumberCreate(v31, kCFNumberSInt16Type, a2 + 11);
        if (!v72)
        {
          goto LABEL_333;
        }

        v73 = v72;
        CFDictionarySetValue(theDict, @"RSSI", v72);
        CFRelease(v73);
        v74 = CFNumberCreate(v31, kCFNumberSInt16Type, a2 + 12);
        if (!v74)
        {
          goto LABEL_333;
        }

        v75 = v74;
        CFDictionarySetValue(theDict, @"BEACON_INT", v74);
        CFRelease(v75);
        v76 = (a2[13] & 1) != 0 ? 2 : (a2[13] >> 1) & 1;
        v181 = v76;
        v77 = CFNumberCreate(v31, kCFNumberSInt16Type, &v181);
        if (!v77)
        {
          goto LABEL_333;
        }

        v78 = v77;
        CFDictionarySetValue(theDict, @"AP_MODE", v77);
        CFRelease(v78);
        v79 = a2 + 18;
        v80 = *(a2 + 34);
        v179 = 0;
        LOBYTE(v182) = 0;
        LOBYTE(v184) = 0;
        LOBYTE(valuePtr) = 0;
        if (v80)
        {
          v81 = 0;
          while (1)
          {
            v82 = *&v79[2 * v81];
            if (v82 > 0x36)
            {
              break;
            }

            if (((1 << v82) & 0x41001001041240) != 0)
            {
              p_valuePtr = &v184;
            }

            else if (((1 << v82) & 0x826) != 0)
            {
              p_valuePtr = &valuePtr;
            }

            else
            {
              if (((1 << v82) & 0x200400000) == 0)
              {
                break;
              }

              p_valuePtr = &v182;
            }

LABEL_120:
            *p_valuePtr = 1;
            v84 = valuePtr;
            if (valuePtr != 1 || v184 != 1 || v182 != 1 || (v84 = 1, (v179 & 1) == 0))
            {
              if (++v81 < v80)
              {
                continue;
              }
            }

            goto LABEL_127;
          }

          p_valuePtr = &v179;
          goto LABEL_120;
        }

        v84 = 0;
LABEL_127:
        v85 = *(a2 + 3);
        if ((v85 & 0x2018) == 0)
        {
          v88 = 0;
          goto LABEL_187;
        }

        v86 = a2[69];
        if (v86 < 3)
        {
          v87 = 0;
          if ((v85 & 0x10) != 0)
          {
            goto LABEL_182;
          }

LABEL_163:
          if ((v85 & 8) == 0)
          {
LABEL_183:
            v88 = v87;
            goto LABEL_187;
          }

          if (v84)
          {
            v88 = v87;
            if ((v184 & 1) == 0)
            {
              v88 = v87;
              if ((v179 & 1) == 0)
              {
                v88 = v87 | 4;
                if ((v87 & 0x10) != 0)
                {
                  v88 = v87;
                }
              }

LABEL_175:
              if (v182 != 1)
              {
                goto LABEL_187;
              }
            }
          }

          else
          {
            v88 = v87;
            if ((v184 & 1) == 0)
            {
              goto LABEL_175;
            }
          }

          if ((v179 & 1) == 0 && (v87 & 0x10) == 0)
          {
            v88 |= 8u;
          }

          goto LABEL_187;
        }

        v89 = 0;
        v90 = 0;
        v91 = 0;
        v92 = 0;
        v93 = (a2 + 70);
        do
        {
          v94 = *v93;
          switch(v94)
          {
            case 61:
              v95 = v93[1];
              v100 = v95 > 0x15 && v86 - 2 >= v95;
              v92 |= v100;
              break;
            case 191:
              v95 = v93[1];
              v97 = v95 > 0xB && v86 - 2 >= v95;
              v98 = v97;
              v91 |= v98;
              break;
            case 255:
              v95 = v93[1];
              if (v86 - 2 >= v95)
              {
                v101 = v93[2];
                v90 |= v101 == 35;
                v96 = v101 == 108;
              }

              else
              {
                v96 = 0;
              }

              v89 = v96 || v89;
              break;
            default:
              v95 = v93[1];
              break;
          }

          v102 = v95 + 2;
          v86 -= v102;
          v93 += v102;
        }

        while (v86 > 2);
        if (v92)
        {
          if (v91)
          {
            v87 = 144;
          }

          else
          {
            v87 = 16;
          }

          if ((v90 & 1) == 0)
          {
            if (!v89)
            {
              goto LABEL_162;
            }

LABEL_181:
            v87 |= 0x200u;
            if ((v85 & 0x10) == 0)
            {
              goto LABEL_163;
            }

LABEL_182:
            if (v84 & 1 | ((v184 & 1) == 0))
            {
              goto LABEL_183;
            }

            if (v179 & 1 | ((~v87 & 0x90) == 0))
            {
              v88 = v87;
            }

            else
            {
              v88 = v87 | 2;
            }

LABEL_187:
            v180 = v88;
            v103 = CFNumberCreate(v31, kCFNumberSInt32Type, &v180);
            if (v103)
            {
              v104 = v103;
              CFDictionarySetValue(theDict, @"PHY_MODE", v103);
              CFRelease(v104);
              v105 = CFNumberCreate(v31, kCFNumberSInt16Type, a2 + 13);
              if (v105)
              {
                v106 = v105;
                CFDictionarySetValue(theDict, @"CAPABILITIES", v105);
                CFRelease(v106);
                CFDictionarySetValue(theDict, @"BSSID", cf2);
                if (cf1)
                {
                  CFDictionarySetValue(theDict, @"SSID", cf1);
                }

                v28 = v172;
                if (v26)
                {
                  CFDictionarySetValue(theDict, @"SSID_STR", v26);
                }

                if (v172)
                {
                  CFDictionarySetValue(theDict, @"SHORT_SSID", v172);
                }

                v159 = CFArrayCreateMutable(v31, 0, MEMORY[0x277CBF128]);
                if (!v159)
                {
                  v161 = 0;
                  v162 = 4294963395;
                  goto LABEL_336;
                }

                idx = 0;
                if (*(a2 + 34))
                {
                  v107 = 0;
                  do
                  {
                    v108 = CFNumberCreate(v31, kCFNumberSInt32Type, &v79[2 * v107]);
                    if (!v108)
                    {
                      goto LABEL_334;
                    }

                    v109 = v108;
                    CFArrayAppendValue(v159, v108);
                    CFRelease(v109);
                    v107 = idx + 1;
                    idx = v107;
                  }

                  while (v107 < *(a2 + 34));
                }

                CFDictionarySetValue(theDict, @"RATES", v159);
                v110 = CFNumberCreate(v31, kCFNumberSInt32Type, a2 + 66);
                if (v110)
                {
                  v111 = v110;
                  CFDictionarySetValue(theDict, @"AGE", v110);
                  CFRelease(v111);
                  v112 = CFNumberCreate(v31, kCFNumberSInt64Type, a2 + 1128);
                  if (v112)
                  {
                    v113 = v112;
                    CFDictionarySetValue(theDict, @"TIMESTAMP", v112);
                    CFRelease(v113);
                    v114 = v173 | a9;
                    if (v114)
                    {
                      v162 = 4294963395;
                      goto LABEL_229;
                    }

                    if ((a2[13] & 0x10) != 0)
                    {
                      v115 = Apple80211ParseWPAIE(a2 + 140, a2[69], theDict);
                      v116 = v115 == 0;
                      v117 = Apple80211ParseRSNIE((a2 + 70), a2[69], theDict);
                      v118 = v117 == 0;
                      if (v117 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        valuePtr = 136315650;
                        *v186 = "_parseSecurity";
                        *&v186[8] = 1024;
                        *&v186[10] = 17731;
                        v187 = 1024;
                        v188 = v117;
                        _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d] parse RSNIE returns 0x%X\n", &valuePtr, 0x18u);
                      }

                      Apple80211ParseRSNXE(a2 + 140, a2[69], theDict);
                      v119 = Apple80211ParseWAPIIE(a2 + 140, a2[69], theDict);
                      if (v115 && v117)
                      {
                        v118 = 0;
                        v116 = 0;
                      }

                      else if ((*(v168 + 90) & 0x20) == 0)
                      {
                        v120 = CFDictionaryGetValue(theDict, @"WPA_IE");
                        v184 = -1431655766;
                        if (v120)
                        {
                          v121 = CFDictionaryGetValue(v120, @"IE_KEY_WPA_MCIPHER");
                          if (v121)
                          {
                            if (CFNumberGetValue(v121, kCFNumberSInt32Type, &v184) && v184 == 5)
                            {
                              CFDictionaryRemoveValue(theDict, @"WPA_IE");
                              v116 = 0;
                            }
                          }
                        }

                        v122 = CFDictionaryGetValue(theDict, @"RSN_IE");
                        if (v122)
                        {
                          v123 = CFDictionaryGetValue(v122, @"IE_KEY_RSN_MCIPHER");
                          if (v123)
                          {
                            if (CFNumberGetValue(v123, kCFNumberSInt32Type, &v184) && v184 == 5)
                            {
                              CFDictionaryRemoveValue(theDict, @"RSN_IE");
                              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                              {
                                valuePtr = 136315394;
                                *v186 = "_parseSecurity";
                                *&v186[8] = 1024;
                                *&v186[10] = 17773;
                                _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d] removing RSN IE\n", &valuePtr, 0x12u);
                              }

                              v118 = 0;
                            }
                          }
                        }
                      }

                      v162 = 0;
                      if (v118 || v116 || !v119)
                      {
LABEL_229:
                        v124 = (a2 + 68);
                        if ((a2[68] & 0x10) != 0)
                        {
                          valuePtr = -1431655766;
                          v125 = CFDictionaryGetValue(theDict, @"RSN_IE");
                          if (v125)
                          {
                            v126 = CFDictionaryGetValue(v125, @"IE_KEY_RSN_AUTHSELS");
                            if (v126)
                            {
                              v127 = v126;
                              v128 = CFArrayGetCount(v126);
                              if (v128)
                              {
                                v129 = v128;
                                idx = 0;
                                if (v128 >= 1)
                                {
                                  v130 = 0;
                                  while (1)
                                  {
                                    v131 = CFArrayGetValueAtIndex(v127, v130);
                                    if (v131)
                                    {
                                      if (CFNumberGetValue(v131, kCFNumberSInt32Type, &valuePtr) && valuePtr == 18)
                                      {
                                        break;
                                      }
                                    }

                                    v130 = idx + 1;
                                    idx = v130;
                                    if (v130 >= v129)
                                    {
                                      goto LABEL_241;
                                    }
                                  }

                                  if (!a11)
                                  {
                                    v161 = 0;
                                    v162 = 4294963394;
                                    v20 = theDict;
                                    goto LABEL_330;
                                  }
                                }
                              }
                            }
                          }
                        }

LABEL_241:
                        v161 = CFArrayCreateMutable(v31, 0, MEMORY[0x277CBF128]);
                        if (v161)
                        {
                          v132 = 0;
                          idx = 0;
                          do
                          {
                            if ((v124[v132 / 8] >> (v132 % 8)))
                            {
                              v133 = CFNumberCreate(v31, kCFNumberSInt32Type, &idx);
                              if (!v133)
                              {
                                goto LABEL_331;
                              }

                              v134 = v133;
                              CFArrayAppendValue(v161, v133);
                              CFRelease(v134);
                              v132 = idx;
                            }

                            idx = v132 + 1;
                          }

                          while (v132++ < 5);
                          v136 = theDict;
                          CFDictionarySetValue(theDict, @"SCAN_RESULT_NET_FLAGS", v161);
                          v137 = *MEMORY[0x277CBED28];
                          v138 = *MEMORY[0x277CBED10];
                          if (*v124)
                          {
                            v139 = *MEMORY[0x277CBED28];
                          }

                          else
                          {
                            v139 = *MEMORY[0x277CBED10];
                          }

                          CFDictionarySetValue(theDict, @"SCAN_RESULT_FROM_PROBE_RSP", v139);
                          if ((*v124 & 0x10) != 0)
                          {
                            v140 = v137;
                          }

                          else
                          {
                            v140 = v138;
                          }

                          CFDictionarySetValue(theDict, @"SCAN_RESULT_OWE_MULTI_SSID", v140);
                          if ((v177 & 0x40) != 0)
                          {
                            v141 = *v124;
                            if ((*v124 & 8) != 0)
                            {
                              CFDictionarySetValue(theDict, @"SCAN_RESULT_INCL_SHORT_SSID", v137);
                              v141 = *v124;
                            }

                            v136 = theDict;
                            if ((v141 & 4) != 0)
                            {
                              CFDictionarySetValue(theDict, @"SCAN_RESULT_FROM_FILS_DISC_FRAME", v137);
                            }
                          }

                          v142 = _parseIEs(a2 + 140, a2[69], v136, v168 + 88);
                          v20 = v136;
                          if (!v142)
                          {
                            LOWORD(valuePtr) = 20;
                            v143 = CFDictionaryGetValue(v136, @"HE_OP_IE");
                            if (v143)
                            {
                              v144 = v143;
                              v145 = CFDictionaryGetValue(v143, @"6GHZ_OP_INFO_CHANNEL_WIDTH");
                              if (v145 && CFNumberGetValue(v145, kCFNumberSInt8Type, &valuePtr))
                              {
                                if (valuePtr > 1u)
                                {
                                  if (valuePtr == 2)
                                  {
                                    goto LABEL_289;
                                  }

                                  if (valuePtr == 3)
                                  {
                                    goto LABEL_288;
                                  }
                                }

                                else
                                {
                                  if (!valuePtr)
                                  {
                                    v153 = 20;
                                    goto LABEL_291;
                                  }

                                  if (valuePtr == 1)
                                  {
                                    goto LABEL_287;
                                  }
                                }
                              }

                              else
                              {
                                v146 = CFDictionaryGetValue(v144, @"VHT_OP_INFO_CHANNEL_WIDTH");
                                if (v146 && CFNumberGetValue(v146, kCFNumberSInt8Type, &valuePtr))
                                {
                                  if (valuePtr - 2 < 2)
                                  {
                                    goto LABEL_288;
                                  }

                                  if (valuePtr == 1)
                                  {
                                    goto LABEL_289;
                                  }

                                  if (!valuePtr)
                                  {
                                    LOWORD(valuePtr) = 20;
                                  }
                                }
                              }
                            }

                            v147 = CFDictionaryGetValue(v136, @"VHT_IE");
                            if (!v147)
                            {
                              goto LABEL_281;
                            }

                            v148 = CFDictionaryGetValue(v147, @"VHT_CHAN_WIDTH");
                            if (!v148 || !CFNumberGetValue(v148, kCFNumberSInt8Type, &valuePtr))
                            {
                              goto LABEL_281;
                            }

                            if (valuePtr - 2 >= 2)
                            {
                              if (valuePtr != 1)
                              {
                                if (!valuePtr)
                                {
                                  LOWORD(valuePtr) = 20;
                                }

LABEL_281:
                                v149 = CFDictionaryGetValue(v136, @"HT_IE");
                                if (!v149)
                                {
                                  goto LABEL_292;
                                }

                                v150 = CFDictionaryGetValue(v149, @"HT_STA_CHAN_WIDTH");
                                if (!v150)
                                {
                                  goto LABEL_292;
                                }

                                if (CFBooleanGetValue(v150) != 1)
                                {
                                  goto LABEL_292;
                                }

                                v151 = CFDictionaryGetValue(v136, @"HT_CAPS_IE");
                                if (!v151)
                                {
                                  goto LABEL_292;
                                }

                                LOWORD(v184) = 0;
                                v152 = CFDictionaryGetValue(v151, @"CAPS");
                                if (!v152)
                                {
                                  goto LABEL_292;
                                }

                                CFNumberGetValue(v152, kCFNumberSInt16Type, &v184);
                                if ((v184 & 2) == 0)
                                {
                                  goto LABEL_292;
                                }

LABEL_287:
                                v153 = 40;
LABEL_291:
                                LOWORD(valuePtr) = v153;
LABEL_292:
                                v154 = CFNumberCreate(v31, kCFNumberSInt16Type, &valuePtr);
                                if (v154)
                                {
                                  v155 = v154;
                                  CFDictionarySetValue(v136, @"CHANNEL_WIDTH", v154);
                                  CFRelease(v155);
                                }

                                if (v178)
                                {
                                  CFDictionaryRemoveValue(v136, @"HT_CAPS_IE");
                                  CFDictionaryRemoveValue(v136, @"VHT_CAPS_IE");
                                }

                                CFDictionaryRemoveValue(v136, @"VHT_IE");
                                CFDictionaryRemoveValue(v136, @"HT_IE");
                                v28 = v172;
                                if (v166)
                                {
                                  CFDictionarySetValue(v136, @"SCAN_DIRECTED", v137);
                                }

                                if (v178)
                                {
                                  CFArrayAppendValue(v178, v136);
                                }

                                v26 = v171;
                                if (theArray)
                                {
                                  v156 = v42;
                                }

                                else
                                {
                                  v156 = 1;
                                }

                                if (v156)
                                {
                                  v162 = 0;
                                  v157 = cf2;
                                  v160 = cfa;
                                }

                                else
                                {
                                  v160 = cfa;
                                  if (a10 && (cfa || (v160 = CFArrayCreateMutable(v31, 0, MEMORY[0x277CBF128])) != 0))
                                  {
                                    v157 = cf2;
                                    CFArrayAppendValue(v160, cf2);
                                    CFDictionarySetValue(v20, @"SCAN_BSSID_LIST", v160);
                                  }

                                  else
                                  {
                                    v157 = cf2;
                                  }

                                  CFArrayAppendValue(theArray, v20);
                                  v162 = 0;
                                }

                                goto LABEL_311;
                              }

LABEL_289:
                              v153 = 80;
                              goto LABEL_291;
                            }

LABEL_288:
                            v153 = 160;
                            goto LABEL_291;
                          }

                          v162 = v142;
LABEL_330:
                          v26 = v171;
LABEL_335:
                          v28 = v172;
LABEL_336:
                          v157 = cf2;
                          v160 = cfa;
                          goto LABEL_337;
                        }

LABEL_331:
                        v160 = cfa;
                        if (v114)
                        {
LABEL_332:
                          v20 = theDict;
                          v157 = cf2;
                          v26 = v171;
                          v28 = v172;
                          goto LABEL_337;
                        }

LABEL_357:
                        v162 = 0;
                        v20 = theDict;
                        v157 = cf2;
                        v26 = v171;
                        v28 = v172;
                        goto LABEL_311;
                      }

                      CFDictionarySetValue(theDict, @"WEP", *MEMORY[0x277CBED28]);
                    }

                    v162 = 0;
                    goto LABEL_229;
                  }
                }

LABEL_334:
                v161 = 0;
                v162 = 4294963395;
                goto LABEL_335;
              }
            }

LABEL_333:
            v159 = 0;
            goto LABEL_334;
          }

          v87 |= 0x100u;
          if (v89)
          {
            goto LABEL_181;
          }
        }

        else if (v90)
        {
          v87 = 256;
          if (v89)
          {
            goto LABEL_181;
          }
        }

        else
        {
          v87 = 0;
          if (v89)
          {
            goto LABEL_181;
          }
        }

LABEL_162:
        if ((v85 & 0x10) == 0)
        {
          goto LABEL_163;
        }

        goto LABEL_182;
      }

      if (v182 >= a2[11])
      {
        goto LABEL_346;
      }

      goto LABEL_345;
    }
  }

  v159 = 0;
  v160 = 0;
  v161 = 0;
  v157 = 0;
  v162 = 4294963395;
LABEL_337:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v163 = CFDictionaryGetValue(v20, @"BSSID");
LABEL_339:
    valuePtr = 67109378;
    *v186 = v162;
    *&v186[4] = 2112;
    *&v186[6] = v163;
    _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to add scan result to list (err=%d, bssid=%@)", &valuePtr, 0x12u);
  }

LABEL_311:
  if (v20)
  {
    CFRelease(v20);
  }

  if (v159)
  {
    CFRelease(v159);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  if (v157)
  {
    CFRelease(v157);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v161)
  {
    CFRelease(v161);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v160)
  {
    CFRelease(v160);
  }

  return v162;
}

uint64_t Apple80211ParseWPAIE(unsigned __int8 *a1, unsigned int a2, __CFDictionary *a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = 4294963393;
  if (a1 && a2 >= 2)
  {
    v5 = a1;
    while (1)
    {
      v6 = v5[1];
      v7 = *v5 == 221 && v6 >= 5;
      v8 = v7 && (v6 + 2) <= a2;
      if (v8 && *(v5 + 2) == 32657408)
      {
        break;
      }

      a2 = a2 - v6 - 2;
      if (a2 >= 1)
      {
        v9 = &v5[v5[1]];
        v5 = v9 + 2;
        if (v9[3] + 2 <= a2)
        {
          continue;
        }
      }

      return 4294963393;
    }

    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *(v55 + 12) = v11;
    v54 = v11;
    v55[0] = v11;
    v52 = v11;
    v53 = v11;
    v50 = v11;
    v51 = v11;
    v48 = v11;
    v49 = v11;
    v12 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v14 = Mutable;
    valuePtr = -21846;
    if (!a3)
    {
      goto LABEL_57;
    }

    if (!Mutable)
    {
      return 4294963395;
    }

    v15 = v5[1];
    if (v15 >= 6)
    {
      valuePtr = *(v5 + 3);
      v16 = CFNumberCreate(v12, kCFNumberSInt16Type, &valuePtr);
      if (!v16)
      {
        v3 = 4294963395;
        goto LABEL_56;
      }

      v17 = v16;
      CFDictionarySetValue(v14, @"IE_KEY_WPA_VERSION", v16);
      CFRelease(v17);
      if (valuePtr != 1)
      {
        CFDictionarySetValue(a3, @"WPA_IE", v14);
        v3 = 0;
LABEL_56:
        CFRelease(v14);
        return v3;
      }

      v48 = 0u;
      v49 = 0u;
      v54 = 0u;
      memset(v55, 0, 28);
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v18 = &v49;
      v19 = 2;
      DWORD2(v48) = 2;
      WORD6(v48) = 1;
      LOWORD(v51) = 1;
      v20 = &v51 + 4;
      DWORD1(v51) = 1;
      LODWORD(v49) = 2;
      if (((v15 - 6) & 0xFFFFFFFC) == 0 || (v19 = v5[11], DWORD2(v48) = v19, ((v15 - 10) & 0xFFFFFFFE) == 0))
      {
        v23 = 0;
        goto LABEL_39;
      }

      valuePtr = *(v5 + 6);
      v21 = valuePtr;
      if (valuePtr <= 8u)
      {
        v22 = v15 - 12;
        v23 = valuePtr == 0;
        v24 = 0;
        if (valuePtr)
        {
          v25 = v5 + 17;
          do
          {
            v7 = v22 >= 4;
            v22 -= 4;
            if (!v7)
            {
              WORD6(v48) = v24;
              goto LABEL_57;
            }

            v26 = *v25;
            v25 += 4;
            *(&v49 + v24++) = v26;
          }

          while (v21 != v24);
          v24 = v21;
        }

        WORD6(v48) = v21;
        v27 = v22 - 2;
        if (v22 >= 2)
        {
          v28 = &v5[4 * v24];
          valuePtr = *(v28 + 7);
          v29 = valuePtr;
          if (valuePtr > 0x10u)
          {
LABEL_57:
            v3 = 4294963396;
            goto LABEL_53;
          }

          if (valuePtr)
          {
            v30 = 0;
            v31 = v28 + 19;
            while (1)
            {
              v7 = v27 >= 4;
              v27 -= 4;
              if (!v7)
              {
                break;
              }

              v32 = *v31;
              v31 += 4;
              *(&v51 + ++v30) = v32;
              if (v29 == v30)
              {
                goto LABEL_38;
              }
            }

            LOWORD(v51) = v30;
            goto LABEL_57;
          }

LABEL_38:
          LOWORD(v51) = v29;
        }

LABEL_39:
        v47 = v19;
        v33 = CFNumberCreate(v12, kCFNumberSInt32Type, &v47);
        if (v33)
        {
          v34 = v33;
          CFDictionarySetValue(v14, @"IE_KEY_WPA_MCIPHER", v33);
          CFRelease(v34);
          v35 = CFArrayCreateMutable(v12, 0, MEMORY[0x277CBF128]);
          if (v35)
          {
            v36 = v35;
            if (v23)
            {
LABEL_45:
              CFDictionarySetValue(v14, @"IE_KEY_WPA_UCIPHERS", v36);
              v40 = CFArrayCreateMutable(v12, 0, MEMORY[0x277CBF128]);
              if (v40)
              {
                v41 = v40;
                if (v51)
                {
                  v42 = 0;
                  while (1)
                  {
                    v43 = CFNumberCreate(v12, kCFNumberSInt32Type, v20);
                    if (!v43)
                    {
                      break;
                    }

                    v44 = v43;
                    CFArrayAppendValue(v41, v43);
                    CFRelease(v44);
                    ++v42;
                    v20 += 4;
                    if (v42 >= v51)
                    {
                      goto LABEL_50;
                    }
                  }

                  v45 = 0;
                  v3 = 4294963395;
                }

                else
                {
LABEL_50:
                  CFDictionarySetValue(v14, @"IE_KEY_WPA_AUTHSELS", v41);
                  v3 = 0;
                  v45 = 1;
                }

                CFRelease(v36);
                CFRelease(v41);
                if (v45)
                {
                  CFDictionarySetValue(a3, @"WPA_IE", v14);
                  v3 = 0;
                }

LABEL_53:
                if (!v14)
                {
                  return v3;
                }

                goto LABEL_56;
              }
            }

            else
            {
              v37 = 0;
              while (1)
              {
                v38 = CFNumberCreate(v12, kCFNumberSInt32Type, v18);
                if (!v38)
                {
                  break;
                }

                v39 = v38;
                CFArrayAppendValue(v36, v38);
                CFRelease(v39);
                ++v37;
                v18 = (v18 + 4);
                if (v37 >= WORD6(v48))
                {
                  goto LABEL_45;
                }
              }
            }

            CFRelease(v36);
          }
        }

        v3 = 4294963395;
        goto LABEL_53;
      }
    }

    v3 = 4294963396;
    goto LABEL_56;
  }

  return v3;
}

uint64_t Apple80211ParseRSNIE(uint64_t a1, unsigned int a2, __CFDictionary *a3)
{
  v87 = *MEMORY[0x277D85DE8];
  v3 = 4294963393;
  if (!a1 || !a2)
  {
    return v3;
  }

  v5 = a1;
  while (a2 < 3 || *v5 != 48)
  {
    v7 = *(v5 + 1);
    a2 = a2 - v7 - 2;
    if (a2 < 1)
    {
      return 4294963393;
    }

    v8 = v5 + v7;
    v5 = v8 + 2;
    v6 = *(v8 + 3);
LABEL_10:
    if (v6 + 2 > a2)
    {
      return 4294963393;
    }
  }

  v6 = *(v5 + 1);
  if (a2 - 2 < v6)
  {
    goto LABEL_10;
  }

  v10 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v12 = Mutable;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(v86 + 12) = v13;
  v85 = v13;
  v86[0] = v13;
  v83 = v13;
  v84 = v13;
  v81 = v13;
  v82 = v13;
  v79 = v13;
  v80 = v13;
  valuePtr = -21846;
  if (!a3)
  {
    v3 = 4294963396;
    goto LABEL_121;
  }

  if (!Mutable)
  {
    return 4294963395;
  }

  v14 = *(v5 + 1);
  valuePtr = *(v5 + 2);
  v15 = CFNumberCreate(v10, kCFNumberSInt16Type, &valuePtr);
  if (!v15)
  {
    v3 = 4294963395;
    goto LABEL_122;
  }

  v16 = v15;
  CFDictionarySetValue(v12, @"IE_KEY_RSN_VERSION", v15);
  CFRelease(v16);
  if (valuePtr != 1)
  {
    CFDictionarySetValue(a3, @"RSN_IE", v12);
    v3 = 0;
    goto LABEL_122;
  }

  v79 = 0u;
  v80 = 0u;
  v85 = 0u;
  memset(v86, 0, 28);
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v17 = &v80;
  v18 = 4;
  DWORD2(v79) = 4;
  WORD6(v79) = 1;
  LODWORD(v80) = 4;
  LOWORD(v82) = 1;
  v19 = &v82 + 4;
  DWORD1(v82) = 1;
  if (v14 == 2)
  {
    goto LABEL_66;
  }

  v3 = 4294963396;
  if (v14 < 3 || v14 - 2 < 4)
  {
    goto LABEL_122;
  }

  v18 = *(v5 + 7);
  DWORD2(v79) = v18;
  if (v14 == 6)
  {
LABEL_66:
    v78 = v18;
    v43 = CFNumberCreate(v10, kCFNumberSInt32Type, &v78);
    if (!v43 || (v44 = v43, CFDictionarySetValue(v12, @"IE_KEY_RSN_MCIPHER", v43), CFRelease(v44), (v45 = CFArrayCreateMutable(v10, 0, MEMORY[0x277CBF128])) == 0))
    {
      v3 = 4294963395;
      goto LABEL_121;
    }

    v46 = v45;
    if (WORD6(v79))
    {
      v47 = 0;
      do
      {
        v48 = CFNumberCreate(v10, kCFNumberSInt32Type, v17);
        if (!v48)
        {
          goto LABEL_123;
        }

        v49 = v48;
        CFArrayAppendValue(v46, v48);
        CFRelease(v49);
        ++v47;
        v17 = (v17 + 4);
      }

      while (v47 < WORD6(v79));
    }

    CFDictionarySetValue(v12, @"IE_KEY_RSN_UCIPHERS", v46);
    v50 = CFArrayCreateMutable(v10, 0, MEMORY[0x277CBF128]);
    if (!v50)
    {
LABEL_123:
      v3 = 4294963395;
LABEL_118:
      CFRelease(v46);
LABEL_119:
      if (!v3)
      {
        CFDictionarySetValue(a3, @"RSN_IE", v12);
      }

      goto LABEL_121;
    }

    v51 = v50;
    if (v82)
    {
      v52 = 0;
      while (1)
      {
        v53 = CFNumberCreate(v10, kCFNumberSInt32Type, v19);
        if (!v53)
        {
          break;
        }

        v54 = v53;
        CFArrayAppendValue(v51, v53);
        CFRelease(v54);
        ++v52;
        v19 += 4;
        if (v52 >= v82)
        {
          goto LABEL_77;
        }
      }

      v56 = 0;
      goto LABEL_125;
    }

LABEL_77:
    CFDictionarySetValue(v12, @"IE_KEY_RSN_AUTHSELS", v51);
    if (WORD2(v86[0]))
    {
      v55 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v56 = v55;
      if (!v55)
      {
        goto LABEL_125;
      }

      v57 = *MEMORY[0x277CBED10];
      v58 = *MEMORY[0x277CBED28];
      v59 = ((BYTE4(v86[0]) & 1) != 0 ? *MEMORY[0x277CBED28] : *MEMORY[0x277CBED10]);
      CFDictionaryAddValue(v55, @"PRE_AUTH", v59);
      v60 = ((BYTE4(v86[0]) & 2) != 0 ? v58 : v57);
      CFDictionaryAddValue(v56, @"NO_PAIRWISE", v60);
      v61 = ((BYTE4(v86[0]) & 0x40) != 0 ? v58 : v57);
      CFDictionaryAddValue(v56, @"MFP_REQUIRED", v61);
      v62 = ((BYTE4(v86[0]) & 0x80) != 0 ? v58 : v57);
      CFDictionaryAddValue(v56, @"MFP_CAPABLE", v62);
      v63 = (WORD2(v86[0]) >> 2) & 3;
      if (v63 > 1)
      {
        v64 = v63 == 2 ? 4 : 16;
      }

      else
      {
        v64 = v63 ? 2 : 1;
      }

      v77 = v64;
      v65 = CFNumberCreate(v10, kCFNumberSInt16Type, &v77);
      if (!v65)
      {
        goto LABEL_125;
      }

      v66 = v65;
      CFDictionaryAddValue(v56, @"PTKSA_REPLAY_COUNTERS", v65);
      CFRelease(v66);
      v67 = (WORD2(v86[0]) >> 4) & 3;
      if (v67 > 1)
      {
        v68 = v67 == 2 ? 4 : 16;
      }

      else
      {
        v68 = v67 ? 2 : 1;
      }

      v77 = v68;
      v69 = CFNumberCreate(v10, kCFNumberSInt16Type, &v77);
      if (!v69)
      {
        goto LABEL_125;
      }

      v70 = v69;
      CFDictionaryAddValue(v56, @"GTKSA_REPLAY_COUNTERS", v69);
      CFRelease(v70);
      v71 = ((WORD2(v86[0]) & 0x4000) != 0 ? v58 : v57);
      CFDictionaryAddValue(v56, @"OCV", v71);
      v72 = CFNumberCreate(v10, kCFNumberShortType, v86 + 4);
      if (!v72)
      {
        goto LABEL_125;
      }

      v73 = v72;
      CFDictionaryAddValue(v56, @"RSN_CAPABILITIES", v72);
      CFRelease(v73);
      CFDictionaryAddValue(v12, @"IE_KEY_RSN_CAPS", v56);
    }

    else
    {
      v56 = 0;
    }

    if (!DWORD2(v86[1]))
    {
LABEL_116:
      v3 = 0;
      goto LABEL_117;
    }

    v78 = DWORD2(v86[1]);
    v74 = CFNumberCreate(v10, kCFNumberSInt32Type, &v78);
    if (v74)
    {
      v75 = v74;
      CFDictionarySetValue(v12, @"IE_KEY_RSN_BCIPHER", v74);
      CFRelease(v75);
      goto LABEL_116;
    }

LABEL_125:
    v3 = 4294963395;
LABEL_117:
    CFRelease(v46);
    CFRelease(v51);
    v46 = v56;
    if (!v56)
    {
      goto LABEL_119;
    }

    goto LABEL_118;
  }

  v3 = 4294963392;
  if (v14 < 8)
  {
    goto LABEL_122;
  }

  valuePtr = *(v5 + 8);
  v20 = valuePtr;
  v21 = v14 - 8;
  v22 = 0;
  if (!valuePtr)
  {
LABEL_37:
    WORD6(v79) = v22;
    if (v21)
    {
      v26 = __OFSUB__(v21, 2);
      v27 = v21 - 2;
      if (v27 < 0 != v26)
      {
        v3 = 4294963392;
        goto LABEL_121;
      }

      v28 = v5 + 4 * v20;
      v31 = *(v28 + 10);
      v30 = v28 + 10;
      v29 = v31;
      valuePtr = v31;
      v32 = 0;
      if (v31)
      {
        v33 = v30 + 2;
        v34 = v29;
        v35 = v27 - 4 * v29;
        while (1)
        {
          v3 = 4294963392;
          v26 = __OFSUB__(v27, 4);
          v27 -= 4;
          if (v27 < 0 != v26 || v32 > 0xF)
          {
            goto LABEL_121;
          }

          if ((*v33 == 28053248 || *v33 == 44830464 || *v33 == 61607680 || *v33 == 78384896 || *v33 == 95162112 || *v33 == 111939328 || *v33 == 145493760 || *v33 == 162270976 || *v33 == 212602624 || *v33 == 229379840 || *v33 == 313265920 || *v33 == 413929216 || *v33 == 430706432) && *(v33 + 3))
          {
            *(&v82 + ++v32) = *(v33 + 3);
          }

          v33 += 4;
          if (!--v34)
          {
            v36 = v29;
            v27 = v35;
            goto LABEL_62;
          }
        }
      }

      v36 = 0;
LABEL_62:
      LOWORD(v82) = v32;
      if (v27 >= 2)
      {
        v37 = v30 + 4 * v36;
        v39 = *(v37 + 2);
        v38 = v37 + 2;
        WORD2(v86[0]) = v39;
        if (v27 >= 8)
        {
          v41 = *(v38 + 2);
          v40 = v38 + 2;
          valuePtr = v41;
          v42 = (16 * v41) | 2;
          if (v27 - v42 - 2 >= 4)
          {
            DWORD2(v86[1]) = *(v40 + v42 + 3);
          }
        }
      }
    }

    goto LABEL_66;
  }

  v23 = v5 + 10;
  v24 = valuePtr;
  v25 = v21 - 4 * valuePtr;
  while (1)
  {
    v26 = __OFSUB__(v21, 4);
    v21 -= 4;
    if (v21 < 0 != v26 || v22 > 7)
    {
      break;
    }

    if ((*v23 == 78384896 || *v23 == 162270976 || *v23 == 145493760 || *v23 == 179048192 || *v23 == 28053248 || *v23 == 95162112 || *v23 == 44830464) && *(v23 + 3))
    {
      *(&v80 + v22++) = *(v23 + 3);
    }

    v23 += 4;
    if (!--v24)
    {
      v20 = v20;
      v21 = v25;
      goto LABEL_37;
    }
  }

LABEL_121:
  if (v12)
  {
LABEL_122:
    CFRelease(v12);
  }

  return v3;
}

uint64_t Apple80211ParseHEOperationIE(unsigned __int8 *a1, int a2, __CFDictionary *a3)
{
  v86 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (!a1 || !a3)
  {
    return v3;
  }

  v4 = a2;
  if (!a2)
  {
    return 0;
  }

  v5 = a1;
  v6 = 0;
  v75 = 0;
  v7 = *MEMORY[0x277CBECE8];
  v8 = *MEMORY[0x277CBED28];
  v9 = *MEMORY[0x277CBED10];
  do
  {
    if (v4 < 2 || (v10 = v5[1], v4 < (v10 + 2)))
    {
      v3 = v75;
      goto LABEL_95;
    }

    if (v10 < 3 || *v5 != 255 || v10 < 7 || v5[2] != 36)
    {
      v46 = 0;
      v5 += v10 + 2;
      v4 -= v10 + 2;
      continue;
    }

    Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      return 4294963395;
    }

    v6 = Mutable;
    v12 = v5[5];
    v13 = *(v5 + 3);
    valuePtr = v13 & 7;
    v14 = CFNumberCreate(v7, kCFNumberSInt8Type, &valuePtr);
    if (!v14)
    {
      goto LABEL_86;
    }

    v15 = v14;
    v16 = v13 | (v12 << 16);
    CFDictionarySetValue(v6, @"DEFAULT_PE_DURATION", v14);
    CFRelease(v15);
    if ((v16 & 8) != 0)
    {
      v17 = v8;
    }

    else
    {
      v17 = v9;
    }

    if (v17 == v8)
    {
      CFDictionarySetValue(v6, @"TWT_REQUIRED", v17);
    }

    v84 = (v16 >> 4) & 0x3FF;
    v18 = CFNumberCreate(v7, kCFNumberSInt16Type, &v84);
    if (!v18)
    {
      goto LABEL_86;
    }

    v19 = v18;
    CFDictionarySetValue(v6, @"TXOP_DURATION_RTS_THRESHOLD", v18);
    CFRelease(v19);
    if ((v16 & 0x8000) != 0)
    {
      v20 = v8;
    }

    else
    {
      v20 = v9;
    }

    if (v20 == v8)
    {
      CFDictionarySetValue(v6, @"CO_HOSTED_BSS", v20);
    }

    if ((v16 & 0x10000) != 0)
    {
      v21 = v8;
    }

    else
    {
      v21 = v9;
    }

    if (v21 == v8)
    {
      CFDictionarySetValue(v6, @"ER_SU_DISABLE", v21);
    }

    v83 = v5[6] & 0x3F;
    v22 = CFNumberCreate(v7, kCFNumberSInt8Type, &v83);
    if (!v22)
    {
      goto LABEL_86;
    }

    v23 = v22;
    CFDictionarySetValue(v6, @"BSS_COLOR", v22);
    CFRelease(v23);
    v24 = v5[6];
    if ((v24 & 0x40) != 0)
    {
      v25 = v8;
    }

    else
    {
      v25 = v9;
    }

    if (v25 == v8)
    {
      CFDictionarySetValue(v6, @"PARTIAL_BSS_COLOR", v25);
      v24 = v5[6];
    }

    if (v24 >= 0)
    {
      v26 = v9;
    }

    else
    {
      v26 = v8;
    }

    if (v26 == v8)
    {
      CFDictionarySetValue(v6, @"BSS_COLOR_DISABLED", v26);
    }

    v27 = *(v5 + 7);
    v82 = v27 & 3;
    v28 = CFNumberCreate(v7, kCFNumberSInt8Type, &v82);
    if (!v28)
    {
      goto LABEL_86;
    }

    v29 = v28;
    CFDictionarySetValue(v6, @"MAX_HE_MCS_1SS", v28);
    CFRelease(v29);
    v82 = (v27 >> 2) & 3;
    v30 = CFNumberCreate(v7, kCFNumberSInt8Type, &v82);
    if (!v30)
    {
      goto LABEL_86;
    }

    v31 = v30;
    CFDictionarySetValue(v6, @"MAX_HE_MCS_2SS", v30);
    CFRelease(v31);
    v82 = (v27 >> 4) & 3;
    v32 = CFNumberCreate(v7, kCFNumberSInt8Type, &v82);
    if (!v32)
    {
      goto LABEL_86;
    }

    v33 = v32;
    CFDictionarySetValue(v6, @"MAX_HE_MCS_3SS", v32);
    CFRelease(v33);
    v82 = v27 >> 6;
    v34 = CFNumberCreate(v7, kCFNumberSInt8Type, &v82);
    if (!v34)
    {
      goto LABEL_86;
    }

    v35 = v34;
    CFDictionarySetValue(v6, @"MAX_HE_MCS_4SS", v34);
    CFRelease(v35);
    v82 = BYTE1(v27) & 3;
    v36 = CFNumberCreate(v7, kCFNumberSInt8Type, &v82);
    if (!v36)
    {
      goto LABEL_86;
    }

    v37 = v36;
    CFDictionarySetValue(v6, @"MAX_HE_MCS_5SS", v36);
    CFRelease(v37);
    v82 = (v27 >> 10) & 3;
    v38 = CFNumberCreate(v7, kCFNumberSInt8Type, &v82);
    if (!v38)
    {
      goto LABEL_86;
    }

    v39 = v38;
    CFDictionarySetValue(v6, @"MAX_HE_MCS_6SS", v38);
    CFRelease(v39);
    v82 = (v27 >> 12) & 3;
    v40 = CFNumberCreate(v7, kCFNumberSInt8Type, &v82);
    if (!v40)
    {
      goto LABEL_86;
    }

    v41 = v40;
    CFDictionarySetValue(v6, @"MAX_HE_MCS_7SS", v40);
    CFRelease(v41);
    v82 = v27 >> 14;
    v42 = CFNumberCreate(v7, kCFNumberSInt8Type, &v82);
    if (!v42)
    {
      goto LABEL_86;
    }

    v43 = v42;
    CFDictionarySetValue(v6, @"MAX_HE_MCS_8SS", v42);
    CFRelease(v43);
    v44 = (v5 + 9);
    v45 = v4 - 9;
    if ((v16 & 0x4000) == 0 && v9 != v8)
    {
      v4 -= 9;
      goto LABEL_60;
    }

    v47 = v4 >= 0xC;
    v4 -= 12;
    if (v47)
    {
      v81 = *v44;
      v48 = CFNumberCreate(v7, kCFNumberSInt8Type, &v81);
      if (v48)
      {
        v49 = v48;
        CFDictionarySetValue(v6, @"VHT_OP_INFO_CHANNEL_WIDTH", v48);
        CFRelease(v49);
        v80 = v5[10];
        v50 = CFNumberCreate(v7, kCFNumberSInt8Type, &v80);
        if (v50)
        {
          v51 = v50;
          CFDictionarySetValue(v6, @"VHT_OP_INFO_CENTER_CHANNEL_FREQ_SEG0", v50);
          CFRelease(v51);
          v79 = v5[11];
          v52 = CFNumberCreate(v7, kCFNumberSInt8Type, &v79);
          if (v52)
          {
            v53 = v52;
            CFDictionarySetValue(v6, @"VHT_OP_INFO_CENTER_CHANNEL_FREQ_SEG1", v52);
            CFRelease(v53);
            v44 = (v5 + 12);
LABEL_60:
            if (v20 == v8)
            {
              if (v4 < 1)
              {
                goto LABEL_89;
              }

              v81 = *v44;
              v54 = CFNumberCreate(v7, kCFNumberSInt8Type, &v81);
              if (!v54)
              {
                goto LABEL_86;
              }

              v55 = v54;
              CFDictionarySetValue(v6, @"MAX_CO_HOSTED_BSSID_IND", v54);
              CFRelease(v55);
              ++v44;
              --v4;
              if ((v16 & 0x20000) != 0)
              {
LABEL_68:
                if (v4 >= 5)
                {
                  v81 = *v44;
                  v56 = CFNumberCreate(v7, kCFNumberSInt8Type, &v81);
                  if (v56)
                  {
                    v57 = v56;
                    CFDictionarySetValue(v6, @"6GHZ_OP_INFO_PRIMARY_CHANNEL", v56);
                    CFRelease(v57);
                    v80 = v44[1] & 3;
                    v58 = CFNumberCreate(v7, kCFNumberSInt8Type, &v80);
                    if (v58)
                    {
                      v59 = v58;
                      CFDictionarySetValue(v6, @"6GHZ_OP_INFO_CHANNEL_WIDTH", v58);
                      CFRelease(v59);
                      v60 = v44[1];
                      v61 = (v60 & 4) != 0 ? v8 : v9;
                      if (v61 == v8)
                      {
                        CFDictionarySetValue(v6, @"6GHZ_OP_INFO_DUPLICATE_BEACON", v61);
                        v60 = v44[1];
                      }

                      v79 = (v60 >> 3) & 7;
                      v62 = CFNumberCreate(v7, kCFNumberSInt8Type, &v79);
                      if (v62)
                      {
                        v63 = v62;
                        CFDictionarySetValue(v6, @"6GHZ_OP_INFO_REG_INFO", v62);
                        CFRelease(v63);
                        if (v79)
                        {
                          if (v79 != 1)
                          {
LABEL_82:
                            v78 = v44[2];
                            v65 = CFNumberCreate(v7, kCFNumberSInt8Type, &v78);
                            if (v65)
                            {
                              v66 = v65;
                              CFDictionarySetValue(v6, @"6GHZ_OP_INFO_CENTER_CHANNEL_FREQ_SEG0", v65);
                              CFRelease(v66);
                              v77 = v44[3];
                              v67 = CFNumberCreate(v7, kCFNumberSInt8Type, &v77);
                              if (v67)
                              {
                                v68 = v67;
                                CFDictionarySetValue(v6, @"6GHZ_OP_INFO_CENTER_CHANNEL_FREQ_SEG1", v67);
                                CFRelease(v68);
                                v76 = v44[4];
                                v69 = CFNumberCreate(v7, kCFNumberSInt8Type, &v76);
                                if (v69)
                                {
                                  v70 = v69;
                                  CFDictionarySetValue(v6, @"6GHZ_OP_INFO_MIN_RATE", v69);
                                  CFRelease(v70);
                                  v46 = 8;
                                  v4 -= 5;
                                  continue;
                                }
                              }
                            }

                            goto LABEL_86;
                          }

                          v64 = @"6GHZ_OP_INFO_STANDARD_POWER_AP";
                        }

                        else
                        {
                          v64 = @"6GHZ_OP_INFO_INDOOR_AP";
                        }

                        CFDictionarySetValue(v6, v64, v8);
                        goto LABEL_82;
                      }
                    }
                  }

LABEL_86:
                  v46 = 4;
                  v71 = -3901;
LABEL_87:
                  v75 = v71;
                  continue;
                }

LABEL_89:
                v46 = 4;
                v71 = -3904;
                goto LABEL_87;
              }
            }

            else if ((v16 & 0x20000) != 0)
            {
              goto LABEL_68;
            }

            if (v9 != v8)
            {
              v46 = 8;
              continue;
            }

            goto LABEL_68;
          }
        }
      }

      v46 = 4;
      v72 = -3901;
    }

    else
    {
      v46 = 4;
      v72 = -3904;
    }

    v75 = v72;
    v4 = v45;
  }

  while (!v46);
  if (v46 != 4)
  {
    v3 = v75;
LABEL_95:
    if (!v6)
    {
      return v3;
    }

    CFDictionarySetValue(a3, @"HE_OP_IE", v6);
    goto LABEL_98;
  }

  v3 = v75;
  if (!v6)
  {
    return v3;
  }

LABEL_98:
  CFRelease(v6);
  return v3;
}

void _dispatchlqmChangedEvent(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v70 = *MEMORY[0x277D85DE8];
  if (a3 < 0x1D8)
  {
    return;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return;
  }

  v6 = Mutable;
  v7 = *MEMORY[0x277CBECE8];
  if (*a2)
  {
    v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, (a2 + 4));
    if (!v8)
    {
      DictFromRoamState = v6;
LABEL_123:
      CFRelease(DictFromRoamState);
      return;
    }

    cf = v8;
    CFDictionaryAddValue(v6, @"RSSI", v8);
  }

  else
  {
    cf = 0;
  }

  if (*(a2 + 8))
  {
    v9 = (a2 + 9);
    v10 = *(a2 + 9);
    if (v10 == 128)
    {
      LOBYTE(v10) = 0;
    }

    *v9 = v10;
    v12 = (a2 + 10);
    v11 = *(a2 + 10);
    if (v11 == 128)
    {
      LOBYTE(v11) = 0;
    }

    *v12 = v11;
    v13 = CFNumberCreate(v7, kCFNumberSInt8Type, v9);
    v67 = CFNumberCreate(v7, kCFNumberSInt8Type, v12);
    v68 = CFArrayCreateMutable(v7, 0, MEMORY[0x277CBF128]);
    if (!v68)
    {
      v61 = 0;
      v58 = 0;
      v59 = 0;
      v56 = 0;
      v57 = 0;
      v55 = 0;
      v53 = 0;
      v51 = 0;
      v65 = 0;
      v66 = 0;
      v64 = 0;
      v49 = 0;
      v50 = 0;
      v63 = 0;
      v54 = 0;
      v52 = 0;
      v48 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      DictFromCCAStats = 0;
      v60 = 0;
      v21 = 0;
      v22 = 0;
      DictFromRoamState = 0;
      v23 = cf;
      v24 = v67;
      if (!cf)
      {
        goto LABEL_70;
      }

LABEL_69:
      CFRelease(v23);
      goto LABEL_70;
    }

    if (v13)
    {
      CFArrayAppendValue(v68, v13);
    }

    if (v67)
    {
      CFArrayAppendValue(v68, v67);
    }

    CFDictionaryAddValue(v6, @"PER_CORE_RSSI", v68);
  }

  else
  {
    v67 = 0;
    v68 = 0;
    v13 = 0;
  }

  if (*(a2 + 11))
  {
    v14 = CFNumberCreate(v7, kCFNumberSInt16Type, (a2 + 12));
    if (!v14)
    {
      v61 = 0;
      goto LABEL_38;
    }

    v61 = v14;
    CFDictionaryAddValue(v6, @"SNR", v14);
  }

  else
  {
    v61 = 0;
  }

  if (!*(a2 + 14))
  {
    v59 = 0;
LABEL_30:
    if (*(a2 + 328))
    {
      v21 = CFNumberCreate(v7, kCFNumberSInt8Type, (a2 + 330));
      value = CFNumberCreate(v7, kCFNumberSInt8Type, (a2 + 331));
      v25 = CFArrayCreateMutable(v7, 0, MEMORY[0x277CBF128]);
      DictFromCCAStats = v25;
      if (!v25)
      {
        v57 = 0;
        v58 = 0;
        v55 = 0;
        v56 = 0;
        v53 = 0;
        v51 = 0;
        v65 = 0;
        v66 = 0;
        v64 = 0;
        v49 = 0;
        v50 = 0;
        v63 = 0;
        v54 = 0;
        v52 = 0;
        v48 = 0;
        v17 = 0;
        v18 = 0;
        v60 = 0;
LABEL_66:
        DictFromRoamState = 0;
        goto LABEL_67;
      }

      if (v21)
      {
        CFArrayAppendValue(v25, v21);
      }

      if (value)
      {
        CFArrayAppendValue(DictFromCCAStats, value);
      }

      CFDictionaryAddValue(v6, @"PER_CORE_NOISE", DictFromCCAStats);
    }

    else
    {
      DictFromCCAStats = 0;
      v21 = 0;
      value = 0;
    }

    v60 = DictFromCCAStats;
    if (*(a2 + 18))
    {
      v26 = CFNumberCreate(v7, kCFNumberSInt8Type, (a2 + 19));
      if (!v26)
      {
        v58 = 0;
        goto LABEL_57;
      }

      v58 = v26;
      CFDictionaryAddValue(v6, @"CCA", v26);
    }

    else
    {
      v58 = 0;
    }

    v27 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 20));
    if (v27)
    {
      v57 = v27;
      CFDictionaryAddValue(v6, @"TXFAIL", v27);
      v28 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 24));
      if (v28)
      {
        v56 = v28;
        CFDictionaryAddValue(v6, @"TXRETRANS", v28);
        v29 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 28));
        if (v29)
        {
          v55 = v29;
          CFDictionaryAddValue(v6, @"TXFRAMES", v29);
          v30 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 64));
          if (v30)
          {
            v54 = v30;
            CFDictionaryAddValue(v6, @"TXRATE", v30);
            v31 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 68));
            if (v31)
            {
              v52 = v31;
              CFDictionaryAddValue(v6, @"TXFBRATE", v31);
              if (!*(a2 + 49))
              {
                v53 = 0;
                v51 = 0;
                v66 = 0;
LABEL_127:
                v35 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 36));
                if (v35)
                {
                  v65 = v35;
                  CFDictionaryAddValue(v6, @"RXFRAMES", v35);
                  v36 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 32));
                  if (v36)
                  {
                    v64 = v36;
                    CFDictionaryAddValue(v6, @"RXRETRYFRMS", v36);
                    v37 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 72));
                    if (v37)
                    {
                      v49 = v37;
                      CFDictionaryAddValue(v6, @"RXRATE", v37);
                      if (*(a2 + 48))
                      {
                        v38 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 40));
                        if (v38)
                        {
                          v50 = v38;
                          CFDictionaryAddValue(v6, @"RXBEACONFRMS", v38);
                          v39 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 44));
                          if (v39)
                          {
                            v63 = v39;
                            CFDictionaryAddValue(v6, @"RXBEACONSCHED", v39);
                            goto LABEL_141;
                          }
                        }

                        else
                        {
                          v50 = 0;
                        }

                        v63 = 0;
                        goto LABEL_63;
                      }

                      v50 = 0;
                      v63 = 0;
LABEL_141:
                      if (!*(a2 + 80))
                      {
                        v48 = 0;
                        v17 = 0;
                        v18 = 0;
                        goto LABEL_149;
                      }

                      valuePtr = *(a2 + 82);
                      v40 = CFNumberCreate(v7, kCFNumberIntType, &valuePtr);
                      if (v40)
                      {
                        v48 = v40;
                        CFDictionaryAddValue(v6, @"QBSS_STA_COUNT", v40);
                        v17 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 84));
                        if (v17)
                        {
                          CFDictionaryAddValue(v6, @"QBSS_CHAN_UTIL", v17);
                          v18 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 88));
                          if (v18)
                          {
                            CFDictionaryAddValue(v6, @"QBSS_AAC", v18);
LABEL_149:
                            if (*(a2 + 94))
                            {
                              DictFromRoamState = _createDictFromRoamState((a2 + 92));
                              if (!DictFromRoamState)
                              {
                                DictFromCCAStats = 0;
                                goto LABEL_67;
                              }

                              CFDictionaryAddValue(v6, @"ROAM_STATE", DictFromRoamState);
                              CFRelease(DictFromRoamState);
                            }

                            if (*(a2 + 308))
                            {
                              DictFromCCAStats = _createDictFromCCAStats(a2 + 308);
                              if (DictFromCCAStats)
                              {
                                CFDictionaryAddValue(v6, @"CCA_STATS", DictFromCCAStats);
                              }
                            }

                            else
                            {
                              DictFromCCAStats = 0;
                            }

                            if (!*(a2 + 332))
                            {
                              DictFromRoamState = 0;
LABEL_168:
                              v19 = v68;
                              if (*(a2 + 468))
                              {
                                v43 = MEMORY[0x277CBED28];
                                if (!*(a2 + 469))
                                {
                                  v43 = MEMORY[0x277CBED10];
                                }

                                CFDictionaryAddValue(v6, @"TXRX_STATS_VALID", *v43);
                              }

                              (*(a1 + 72))(0, a1, 39, v6, 8, *(a1 + 80));
                              v23 = cf;
                              v24 = v67;
LABEL_68:
                              v22 = value;
                              if (!v23)
                              {
                                goto LABEL_70;
                              }

                              goto LABEL_69;
                            }

                            DictFromRoamState = _createDictFromMloOpStats(a2 + 332);
                            if (DictFromRoamState)
                            {
                              CFDictionaryAddValue(v6, @"MLO_OP_STATS", DictFromRoamState);
                            }

                            if (!*(a2 + 332))
                            {
                              goto LABEL_168;
                            }

                            theArray = CFArrayCreateMutable(v7, 0, MEMORY[0x277CBF128]);
                            if (theArray)
                            {
                              if (*(a2 + 332))
                              {
                                v46 = 0;
                                v41 = a2 + 348;
                                do
                                {
                                  DictFromMLOStats = _createDictFromMLOStats(v41);
                                  if (DictFromMLOStats)
                                  {
                                    v45 = DictFromMLOStats;
                                    CFArrayAppendValue(theArray, DictFromMLOStats);
                                    CFRelease(v45);
                                  }

                                  v41 += 40;
                                  ++v46;
                                }

                                while (v46 < *(a2 + 332));
                              }

                              CFDictionaryAddValue(v6, @"MLO_LQM_STATS", theArray);
                              CFRelease(theArray);
                              goto LABEL_168;
                            }

LABEL_67:
                            v23 = cf;
                            v24 = v67;
                            v19 = v68;
                            goto LABEL_68;
                          }

                          goto LABEL_65;
                        }

LABEL_64:
                        v18 = 0;
LABEL_65:
                        DictFromCCAStats = 0;
                        goto LABEL_66;
                      }

LABEL_63:
                      v48 = 0;
                      v17 = 0;
                      goto LABEL_64;
                    }

                    goto LABEL_139;
                  }

LABEL_138:
                  v64 = 0;
LABEL_139:
                  v50 = 0;
                  v63 = 0;
                  goto LABEL_62;
                }

LABEL_137:
                v65 = 0;
                goto LABEL_138;
              }

              v32 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 52));
              if (v32)
              {
                v53 = v32;
                CFDictionaryAddValue(v6, @"TXFWFAIL", v32);
                v33 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 56));
                if (v33)
                {
                  v51 = v33;
                  CFDictionaryAddValue(v6, @"TXFWRETRANS", v33);
                  v34 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 60));
                  if (v34)
                  {
                    v66 = v34;
                    CFDictionaryAddValue(v6, @"TXFWFRAMES", v34);
                    goto LABEL_127;
                  }

LABEL_136:
                  v66 = 0;
                  goto LABEL_137;
                }
              }

              else
              {
                v53 = 0;
              }

              v51 = 0;
              goto LABEL_136;
            }

            v53 = 0;
            v51 = 0;
            v65 = 0;
            v66 = 0;
            v64 = 0;
            v50 = 0;
            v63 = 0;
LABEL_61:
            v52 = 0;
LABEL_62:
            v49 = 0;
            goto LABEL_63;
          }

LABEL_60:
          v53 = 0;
          v51 = 0;
          v65 = 0;
          v66 = 0;
          v64 = 0;
          v50 = 0;
          v63 = 0;
          v54 = 0;
          goto LABEL_61;
        }

LABEL_59:
        v55 = 0;
        goto LABEL_60;
      }

LABEL_58:
      v56 = 0;
      goto LABEL_59;
    }

LABEL_57:
    v57 = 0;
    goto LABEL_58;
  }

  v16 = CFNumberCreate(v7, kCFNumberSInt16Type, (a2 + 16));
  if (v16)
  {
    v59 = v16;
    CFDictionaryAddValue(v6, @"NOISE", v16);
    goto LABEL_30;
  }

LABEL_38:
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v53 = 0;
  v51 = 0;
  v65 = 0;
  v66 = 0;
  v64 = 0;
  v49 = 0;
  v50 = 0;
  v63 = 0;
  v54 = 0;
  v52 = 0;
  v48 = 0;
  v17 = 0;
  v18 = 0;
  DictFromCCAStats = 0;
  v60 = 0;
  v21 = 0;
  v22 = 0;
  DictFromRoamState = 0;
  v23 = cf;
  v24 = v67;
  v19 = v68;
  if (cf)
  {
    goto LABEL_69;
  }

LABEL_70:
  if (v19)
  {
    CFRelease(v19);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v63)
  {
    CFRelease(v63);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  CFRelease(v6);
  if (DictFromCCAStats)
  {
    CFRelease(DictFromCCAStats);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (DictFromRoamState)
  {
    goto LABEL_123;
  }
}

__CFDictionary *_createDictFromCCAStats(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return Mutable;
  }

  v4 = CFNumberCreate(v2, kCFNumberSInt16Type, (a1 + 2));
  if (!v4)
  {
    return Mutable;
  }

  v5 = v4;
  CFDictionaryAddValue(Mutable, @"CCA_TIMESTAMP_TOTAL", v4);
  v6 = CFNumberCreate(v2, kCFNumberSInt8Type, (a1 + 4));
  if (!v6)
  {
    v17 = v5;
LABEL_35:
    CFRelease(v17);
    return Mutable;
  }

  v7 = v6;
  CFDictionaryAddValue(Mutable, @"CCA_SELF_TOTAL", v6);
  v8 = CFNumberCreate(v2, kCFNumberSInt8Type, (a1 + 5));
  v21 = v7;
  cf = v5;
  v20 = v8;
  if (!v8 || (CFDictionaryAddValue(Mutable, @"CCA_OTHER_TOTAL", v8), (v9 = CFNumberCreate(v2, kCFNumberSInt8Type, (a1 + 6))) == 0))
  {
    v19 = 0;
    v10 = 0;
    goto LABEL_38;
  }

  v19 = v9;
  CFDictionaryAddValue(Mutable, @"CCA_INTERFERENCE_TOTAL", v9);
  v10 = CFNumberCreate(v2, kCFNumberSInt16Type, (a1 + 8));
  if (!v10)
  {
LABEL_38:
    v11 = 0;
    goto LABEL_39;
  }

  CFDictionaryAddValue(Mutable, @"CCA_TIMESTAMP_SLEEP", v10);
  v11 = CFNumberCreate(v2, kCFNumberSInt8Type, (a1 + 10));
  if (!v11)
  {
LABEL_39:
    v12 = 0;
    goto LABEL_40;
  }

  CFDictionaryAddValue(Mutable, @"CCA_SELF_SLEEP", v11);
  v12 = CFNumberCreate(v2, kCFNumberSInt8Type, (a1 + 11));
  if (!v12)
  {
LABEL_40:
    v13 = 0;
    goto LABEL_41;
  }

  CFDictionaryAddValue(Mutable, @"CCA_OTHER_SLEEP", v12);
  v13 = CFNumberCreate(v2, kCFNumberSInt8Type, (a1 + 12));
  if (!v13)
  {
LABEL_41:
    v14 = 0;
    goto LABEL_42;
  }

  CFDictionaryAddValue(Mutable, @"CCA_INTERFERENCE_SLEEP", v13);
  v14 = CFNumberCreate(v2, kCFNumberSInt16Type, (a1 + 14));
  if (!v14)
  {
LABEL_42:
    v15 = 0;
    goto LABEL_43;
  }

  CFDictionaryAddValue(Mutable, @"CCA_TIMESTAMP_WAKE", v14);
  v15 = CFNumberCreate(v2, kCFNumberSInt8Type, (a1 + 16));
  if (!v15)
  {
LABEL_43:
    v16 = 0;
    goto LABEL_44;
  }

  CFDictionaryAddValue(Mutable, @"CCA_SELF_WAKE", v15);
  v16 = CFNumberCreate(v2, kCFNumberSInt8Type, (a1 + 17));
  if (!v16)
  {
LABEL_44:
    v17 = 0;
    goto LABEL_16;
  }

  CFDictionaryAddValue(Mutable, @"CCA_OTHER_WAKE", v16);
  v17 = CFNumberCreate(v2, kCFNumberSInt8Type, (a1 + 18));
  if (v17)
  {
    CFDictionaryAddValue(Mutable, @"CCA_INTERFERENCE_WAKE", v17);
  }

LABEL_16:
  CFRelease(cf);
  CFRelease(v21);
  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v17)
  {
    goto LABEL_35;
  }

  return Mutable;
}

void _dispatchWeightedAvgLQMUpdateEvent(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    return;
  }

  if (a3 != 16)
  {
    return;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return;
  }

  v6 = Mutable;
  v7 = *MEMORY[0x277CBECE8];
  v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a2);
  if (v8)
  {
    v9 = v8;
    CFDictionaryAddValue(v6, @"WEIGHT_AVG_RSSI", v8);
    v10 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 4));
    if (v10)
    {
      v11 = v10;
      CFDictionaryAddValue(v6, @"WEIGHT_AVG_SNR", v10);
      v12 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 8));
      if (v12)
      {
        CFDictionaryAddValue(v6, @"WEIGHT_AVG_TX_RATE", v12);
        v13 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 12));
        if (v13)
        {
          CFDictionaryAddValue(v6, @"WEIGHT_AVG_RX_RATE", v13);
          (*(a1 + 72))(0, a1, 145, v6, 8, *(a1 + 80));
        }
      }

      else
      {
        v13 = 0;
      }

      CFRelease(v9);
      CFRelease(v11);
      if (v12)
      {
        CFRelease(v12);
      }

      if (!v13)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v13 = v9;
    }

    CFRelease(v13);
  }

LABEL_16:

  CFRelease(v6);
}

void _dispatchLqmTxStatsUpdate(uint64_t a1, uint64_t a2, int a3)
{
  v40 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    if (a3 == 136)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v7 = Mutable;
        v8 = *MEMORY[0x277CBECE8];
        v9 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, a2);
        if (v9)
        {
          v10 = v9;
          CFDictionaryAddValue(v7, @"LQM_TX_STATS_TX_SUCCESS", v9);
          CFRelease(v10);
          v11 = CFNumberCreate(v8, kCFNumberSInt64Type, (a2 + 128));
          if (v11)
          {
            v12 = v11;
            CFDictionaryAddValue(v7, @"APPLE80211KEY_LQM_TX_STATS_TX_DROP_MISC", v11);
            CFRelease(v12);
            v13 = CFNumberCreate(v8, kCFNumberSInt64Type, (a2 + 24));
            if (v13)
            {
              v14 = v13;
              CFDictionaryAddValue(v7, @"APPLE80211KEY_LQM_TX_STATS_TX_NO_BUFF", v13);
              CFRelease(v14);
              v15 = CFNumberCreate(v8, kCFNumberSInt64Type, (a2 + 48));
              if (v15)
              {
                v16 = v15;
                CFDictionaryAddValue(v7, @"APPLE80211KEY_LQM_TX_STATS_TX_NO_RESOURCE", v15);
                CFRelease(v16);
                v17 = CFNumberCreate(v8, kCFNumberSInt64Type, (a2 + 32));
                if (v17)
                {
                  v18 = v17;
                  CFDictionaryAddValue(v7, @"APPLE80211KEY_LQM_TX_STATS_TX_NO_ACK", v17);
                  CFRelease(v18);
                  v19 = CFNumberCreate(v8, kCFNumberSInt64Type, (a2 + 72));
                  if (v19)
                  {
                    v20 = v19;
                    CFDictionaryAddValue(v7, @"APPLE80211KEY_LQM_TX_STATS_TX_CHIP_MODE_ERROR", v19);
                    CFRelease(v20);
                    v21 = CFNumberCreate(v8, kCFNumberSInt64Type, (a2 + 16));
                    if (v21)
                    {
                      v22 = v21;
                      CFDictionaryAddValue(v7, @"APPLE80211KEY_LQM_TX_STATS_TX_EXPIRED", v21);
                      CFRelease(v22);
                      v23 = CFNumberCreate(v8, kCFNumberSInt64Type, (a2 + 40));
                      if (v23)
                      {
                        v24 = v23;
                        CFDictionaryAddValue(v7, @"APPLE80211KEY_LQM_TX_STATS_TX_FAIL", v23);
                        CFRelease(v24);
                        v25 = CFNumberCreate(v8, kCFNumberSInt64Type, (a2 + 104));
                        if (v25)
                        {
                          v26 = v25;
                          CFDictionaryAddValue(v7, @"APPLE80211KEY_LQM_TX_STATS_TX_FW_FREE_PACKET", v25);
                          CFRelease(v26);
                          v27 = CFNumberCreate(v8, kCFNumberSInt64Type, (a2 + 112));
                          if (v27)
                          {
                            v28 = v27;
                            CFDictionaryAddValue(v7, @"APPLE80211KEY_LQM_TX_STATS_TX_MAX_RETRIES", v27);
                            CFRelease(v28);
                            v29 = CFNumberCreate(v8, kCFNumberSInt64Type, (a2 + 120));
                            if (v29)
                            {
                              v30 = v29;
                              CFDictionaryAddValue(v7, @"APPLE80211KEY_LQM_TX_STATS_TX_FORCE_LIFETIME_EXPIRED", v29);
                              CFRelease(v30);
                              (*(a1 + 72))(0, a1, 169, v7, 8, *(a1 + 80));
LABEL_17:
                              CFRelease(v7);
                              return;
                            }

                            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_17;
                            }

                            v36 = 136315138;
                            v37 = "_dispatchLqmTxStatsUpdate";
                            v34 = MEMORY[0x277D86220];
                            v35 = "%s: Failed to allocate txForceLifetimeExpiredRef";
                          }

                          else
                          {
                            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_17;
                            }

                            v36 = 136315138;
                            v37 = "_dispatchLqmTxStatsUpdate";
                            v34 = MEMORY[0x277D86220];
                            v35 = "%s: Failed to allocate txMaxRetriesRef";
                          }
                        }

                        else
                        {
                          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_17;
                          }

                          v36 = 136315138;
                          v37 = "_dispatchLqmTxStatsUpdate";
                          v34 = MEMORY[0x277D86220];
                          v35 = "%s: Failed to allocate txFWFreePacketRef";
                        }
                      }

                      else
                      {
                        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_17;
                        }

                        v36 = 136315138;
                        v37 = "_dispatchLqmTxStatsUpdate";
                        v34 = MEMORY[0x277D86220];
                        v35 = "%s: Failed to allocate txFailRef";
                      }
                    }

                    else
                    {
                      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_17;
                      }

                      v36 = 136315138;
                      v37 = "_dispatchLqmTxStatsUpdate";
                      v34 = MEMORY[0x277D86220];
                      v35 = "%s: Failed to allocate txExpiredRef";
                    }
                  }

                  else
                  {
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_17;
                    }

                    v36 = 136315138;
                    v37 = "_dispatchLqmTxStatsUpdate";
                    v34 = MEMORY[0x277D86220];
                    v35 = "%s: Failed to allocate txChipModeErrorRef";
                  }
                }

                else
                {
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_17;
                  }

                  v36 = 136315138;
                  v37 = "_dispatchLqmTxStatsUpdate";
                  v34 = MEMORY[0x277D86220];
                  v35 = "%s: Failed to allocate txNoACKRef";
                }
              }

              else
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_17;
                }

                v36 = 136315138;
                v37 = "_dispatchLqmTxStatsUpdate";
                v34 = MEMORY[0x277D86220];
                v35 = "%s: Failed to allocate txNoResourcesRef";
              }
            }

            else
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_17;
              }

              v36 = 136315138;
              v37 = "_dispatchLqmTxStatsUpdate";
              v34 = MEMORY[0x277D86220];
              v35 = "%s: Failed to allocate txNoBuffRef";
            }
          }

          else
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_17;
            }

            v36 = 136315138;
            v37 = "_dispatchLqmTxStatsUpdate";
            v34 = MEMORY[0x277D86220];
            v35 = "%s: Failed to allocate txDroppedMiscRef";
          }
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_17;
          }

          v36 = 136315138;
          v37 = "_dispatchLqmTxStatsUpdate";
          v34 = MEMORY[0x277D86220];
          v35 = "%s: Failed to allocate txSuccessRef";
        }

        _os_log_impl(&dword_254882000, v34, OS_LOG_TYPE_DEFAULT, v35, &v36, 0xCu);
        goto LABEL_17;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v36 = 136315138;
        v37 = "_dispatchLqmTxStatsUpdate";
        v31 = MEMORY[0x277D86220];
        v32 = "%s: NULL lqmTxStatsEventDict, Bail out\n";
        v33 = 12;
        goto LABEL_23;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v36 = 136315394;
      v37 = "_dispatchLqmTxStatsUpdate";
      v38 = 1024;
      v39 = a3;
      v31 = MEMORY[0x277D86220];
      v32 = "%s:wrong DataLen:%u\n";
      v33 = 18;
LABEL_23:
      _os_log_impl(&dword_254882000, v31, OS_LOG_TYPE_DEFAULT, v32, &v36, v33);
    }
  }
}

uint64_t _parseIEs(unsigned __int8 *a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4)
{
  result = 0;
  v80 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v6 = a2;
    if (a2)
    {
      if (a2 >= 0x801)
      {
        v69 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        result = 4294963396;
        if (v69)
        {
          v70 = 67110146;
          v71 = -3900;
          v72 = 2112;
          Value = CFDictionaryGetValue(a3, @"BSSID");
          v74 = 2048;
          v75 = a1;
          v76 = 1024;
          v77 = v6;
          v78 = 1024;
          v79 = 2048;
          _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed: Invalid IE length parameter check, (err=%d, bssid=%@), [%p], size[%u] > max size[%u]", &v70, 0x28u);
          return 4294963396;
        }
      }

      else
      {
        v9 = Apple80211ParseAppleIE(a1, a2, a3);
        if (v9)
        {
          v10 = v9;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v70 = 67109378;
            v71 = v10;
            v72 = 2112;
            Value = CFDictionaryGetValue(a3, @"BSSID");
            _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse Apple IE (err=%d, bssid=%@)", &v70, 0x12u);
          }
        }

        v11 = Apple80211ParseAppleiOSIE(a1, v6, a3);
        if (v11)
        {
          v12 = v11;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v50 = CFDictionaryGetValue(a3, @"BSSID");
            v70 = 67109378;
            v71 = v12;
            v72 = 2112;
            Value = v50;
            _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse Apple iOS IE (err=%d, bssid=%@)", &v70, 0x12u);
          }
        }

        v13 = Apple80211ParseAppleDeviceIE(a1, v6, a3);
        if (v13)
        {
          v14 = v13;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v51 = CFDictionaryGetValue(a3, @"BSSID");
            v70 = 67109378;
            v71 = v14;
            v72 = 2112;
            Value = v51;
            _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse Apple device IE (err=%d, bssid=%@)", &v70, 0x12u);
          }
        }

        v15 = Apple80211Parse80211dIE(a1, v6, a3);
        if (v15)
        {
          v16 = v15;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v52 = CFDictionaryGetValue(a3, @"BSSID");
            v70 = 67109378;
            v71 = v16;
            v72 = 2112;
            Value = v52;
            _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse Country IE (err=%d, bssid=%@)", &v70, 0x12u);
          }
        }

        v17 = Apple80211ParseSES_IE(a1, v6, a3);
        if (v17)
        {
          v18 = v17;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v53 = CFDictionaryGetValue(a3, @"BSSID");
            v70 = 67109378;
            v71 = v18;
            v72 = 2112;
            Value = v53;
            _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse SES IE (err=%d, bssid=%@)", &v70, 0x12u);
          }
        }

        v19 = Apple80211ParseHT_Caps(a1, v6, a3);
        if (v19)
        {
          v20 = v19;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v54 = CFDictionaryGetValue(a3, @"BSSID");
            v70 = 67109378;
            v71 = v20;
            v72 = 2112;
            Value = v54;
            _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse HT Caps IE (err=%d, bssid=%@)", &v70, 0x12u);
          }
        }

        v21 = Apple80211ParseHT_IE(a1, v6, a3);
        if (v21)
        {
          v22 = v21;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v55 = CFDictionaryGetValue(a3, @"BSSID");
            v70 = 67109378;
            v71 = v22;
            v72 = 2112;
            Value = v55;
            _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse HT IE (err=%d, bssid=%@)", &v70, 0x12u);
          }
        }

        v23 = Apple80211ParseVHT_Caps(a1, v6, a3);
        if (v23)
        {
          v24 = v23;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v56 = CFDictionaryGetValue(a3, @"BSSID");
            v70 = 67109378;
            v71 = v24;
            v72 = 2112;
            Value = v56;
            _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse VHT Caps IE (err=%d, bssid=%@)", &v70, 0x12u);
          }
        }

        v25 = Apple80211ParseVHT_IE(a1, v6, a3);
        if (v25)
        {
          v26 = v25;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v57 = CFDictionaryGetValue(a3, @"BSSID");
            v70 = 67109378;
            v71 = v26;
            v72 = 2112;
            Value = v57;
            _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse VHT IE (err=%d, bssid=%@)", &v70, 0x12u);
          }
        }

        v27 = Apple80211ParseInterworkingIE(a1, v6, a3);
        if (v27)
        {
          v28 = v27;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v58 = CFDictionaryGetValue(a3, @"BSSID");
            v70 = 67109378;
            v71 = v28;
            v72 = 2112;
            Value = v58;
            _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse Interworking IE (err=%d, bssid=%@)", &v70, 0x12u);
          }
        }

        v29 = Apple80211ParseHS20IE(a1, v6, a3);
        if (v29)
        {
          v30 = v29;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v59 = CFDictionaryGetValue(a3, @"BSSID");
            v70 = 67109378;
            v71 = v30;
            v72 = 2112;
            Value = v59;
            _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse HS20 IE (err=%d, bssid=%@)", &v70, 0x12u);
          }
        }

        v31 = Apple80211ParseQBSSLoadIE(a1, v6, a3);
        if (v31)
        {
          v32 = v31;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v60 = CFDictionaryGetValue(a3, @"BSSID");
            v70 = 67109378;
            v71 = v32;
            v72 = 2112;
            Value = v60;
            _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse QBSS Load IE (err=%d, bssid=%@)", &v70, 0x12u);
          }
        }

        v33 = Apple80211ParseMobilityDomainIE(a1, v6, a3);
        if (v33)
        {
          v34 = v33;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v61 = CFDictionaryGetValue(a3, @"BSSID");
            v70 = 67109378;
            v71 = v34;
            v72 = 2112;
            Value = v61;
            _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse Mobility Domain IE (err=%d, bssid=%@)", &v70, 0x12u);
          }
        }

        v35 = Apple80211ParseExtCapsIE(a1, v6, a3);
        if (v35)
        {
          v36 = v35;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v62 = CFDictionaryGetValue(a3, @"BSSID");
            v70 = 67109378;
            v71 = v36;
            v72 = 2112;
            Value = v62;
            _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse Extended Caps IE (err=%d, bssid=%@)", &v70, 0x12u);
          }
        }

        v37 = Apple80211ParseCyclopsIE(a1, v6, a3);
        if (v37)
        {
          v38 = v37;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v63 = CFDictionaryGetValue(a3, @"BSSID");
            v70 = 67109378;
            v71 = v38;
            v72 = 2112;
            Value = v63;
            _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse Cyclops IE (err=%d, bssid=%@)", &v70, 0x12u);
          }
        }

        v39 = Apple80211ParseHE_IEs(a1, v6, a3);
        if (v39)
        {
          v40 = v39;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v64 = CFDictionaryGetValue(a3, @"BSSID");
            v70 = 67109378;
            v71 = v40;
            v72 = 2112;
            Value = v64;
            _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse HE IEs (err=%d, bssid=%@)", &v70, 0x12u);
          }
        }

        if ((*(a4 + 11) & 0x40) != 0)
        {
          v41 = Apple80211ParseRNRIE(a1, v6, a3);
          if (v41)
          {
            v42 = v41;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v66 = CFDictionaryGetValue(a3, @"BSSID");
              v70 = 67109378;
              v71 = v42;
              v72 = 2112;
              Value = v66;
              _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse RNR IE (err=%d, bssid=%@)", &v70, 0x12u);
            }
          }

          v43 = Apple80211ParseMBOOCEIE(a1, v6, a3);
          if (v43)
          {
            v44 = v43;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v67 = CFDictionaryGetValue(a3, @"BSSID");
              v70 = 67109378;
              v71 = v44;
              v72 = 2112;
              Value = v67;
              _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse MBO-OCE IE (err=%d, bssid=%@)", &v70, 0x12u);
            }
          }

          v45 = Apple80211ParseHEOperationIE(a1, v6, a3);
          if (v45)
          {
            v46 = v45;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v68 = CFDictionaryGetValue(a3, @"BSSID");
              v70 = 67109378;
              v71 = v46;
              v72 = 2112;
              Value = v68;
              _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse HE Op IE (err=%d, bssid=%@)", &v70, 0x12u);
            }
          }
        }

        v47 = Apple80211ParseWPS_IE(a1, v6, a3);
        if (v47)
        {
          v48 = v47;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v65 = CFDictionaryGetValue(a3, @"BSSID");
            v70 = 67109378;
            v71 = v48;
            v72 = 2112;
            Value = v65;
            _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse WPS IE (err=%d, bssid=%@)", &v70, 0x12u);
          }
        }

        result = CFDataCreate(*MEMORY[0x277CBECE8], a1, v6);
        if (result)
        {
          v49 = result;
          CFDictionarySetValue(a3, @"IE", result);
          CFRelease(v49);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t Apple80211ParseRSNXE(unsigned __int8 *a1, unsigned int a2, __CFDictionary *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = 4294963393;
  if (!a1 || !a2)
  {
    return v3;
  }

  v5 = a1;
  while (a2 < 3 || *v5 != 244)
  {
    v7 = v5[1];
    a2 = a2 - v7 - 2;
    if (a2 < 1)
    {
      return 4294963393;
    }

    v8 = &v5[v7];
    v5 = v8 + 2;
    v6 = v8[3];
LABEL_10:
    if (v6 + 2 > a2)
    {
      return 4294963393;
    }
  }

  v6 = v5[1];
  if (a2 - 2 < v6)
  {
    goto LABEL_10;
  }

  v10 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v12 = Mutable;
  if (!a3)
  {
    v3 = 4294963396;
    if (Mutable)
    {
      goto LABEL_32;
    }

    return v3;
  }

  if (!Mutable)
  {
    return 4294963395;
  }

  if (*v5 != 244)
  {
    v3 = 4294963379;
    goto LABEL_32;
  }

  if (!v5[2])
  {
    goto LABEL_30;
  }

  v13 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v13)
  {
LABEL_37:
    v3 = 4294963395;
    goto LABEL_32;
  }

  v14 = v13;
  v15 = *MEMORY[0x277CBED10];
  v16 = *MEMORY[0x277CBED28];
  if ((v5[2] & 0x10) != 0)
  {
    v17 = *MEMORY[0x277CBED28];
  }

  else
  {
    v17 = *MEMORY[0x277CBED10];
  }

  CFDictionaryAddValue(v13, @"RSNXE_PROTECTED_TWT", v17);
  if ((v5[2] & 0x20) != 0)
  {
    v18 = v16;
  }

  else
  {
    v18 = v15;
  }

  CFDictionaryAddValue(v14, @"RSNXE_SAE_H2E", v18);
  if ((v5[2] & 0x40) != 0)
  {
    v19 = v16;
  }

  else
  {
    v19 = v15;
  }

  CFDictionaryAddValue(v14, @"RSNXE_SAE_PK", v19);
  valuePtr = v5[1];
  v20 = CFNumberCreate(v10, kCFNumberSInt16Type, &valuePtr);
  if (!v20 || (v21 = v20, CFDictionaryAddValue(v14, @"RSNXE_CAP_LEN", v20), CFRelease(v21), v24 = v5[2] & 0xF, (v22 = CFNumberCreate(v10, kCFNumberSInt16Type, &v24)) == 0))
  {
    CFRelease(v14);
    goto LABEL_37;
  }

  v23 = v22;
  CFDictionaryAddValue(v14, @"RSNXE_CAP_RSNXE_LEN", v22);
  CFRelease(v23);
  CFDictionaryAddValue(v12, @"IE_KEY_RSNXE_CAPS", v14);
  CFRelease(v14);
LABEL_30:
  CFDictionarySetValue(a3, @"RSN_XE", v12);
  v3 = 0;
LABEL_32:
  CFRelease(v12);
  return v3;
}

uint64_t Apple80211ParseWAPIIE(_BYTE *a1, unsigned int a2, CFDictionaryRef theDict)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = 4294963393;
  if (a1 && a2 >= 2)
  {
    while (1)
    {
      v5 = a1[1];
      v6 = *a1 == 68 && v5 >= 5;
      v7 = v6 && (v5 + 2) <= a2;
      if (v7 && a1[2] == 1)
      {
        break;
      }

      a2 = a2 - v5 - 2;
      if (a2 >= 1)
      {
        v8 = &a1[a1[1]];
        a1 = v8 + 2;
        if (v8[3] + 2 <= a2)
        {
          continue;
        }
      }

      return 4294963393;
    }

    v10 = a1[4];
    if (4 * v10 + 6 <= v5 && a1[4])
    {
      v11 = a1 + 6;
      v12 = *MEMORY[0x277CBECE8];
      v3 = 4294963393;
      while (1)
      {
        if (*v11 != 5120 || v11[2] != 114)
        {
          goto LABEL_33;
        }

        valuePtr = 3;
        Value = CFDictionaryGetValue(theDict, @"WAPI");
        if (Value)
        {
          CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
        }

        v15 = v11[3];
        v16 = valuePtr;
        if (v15 == 2)
        {
          v3 = 0;
          v16 = valuePtr + 4;
        }

        else
        {
          if (v15 != 1)
          {
            goto LABEL_31;
          }

          v3 = 0;
          v16 = valuePtr + 8;
        }

        valuePtr = v16;
LABEL_31:
        if (v16 >= 4)
        {
          v17 = CFNumberCreate(v12, kCFNumberIntType, &valuePtr);
          CFDictionarySetValue(theDict, @"WAPI", v17);
          CFRelease(v17);
        }

LABEL_33:
        v11 += 4;
        if (!--v10)
        {
          return v3;
        }
      }
    }

    return 4294963393;
  }

  return v3;
}

uint64_t Apple80211ParseAppleIE(unsigned __int8 *a1, int a2, __CFDictionary *a3)
{
  v3 = 4294963396;
  if (a1 && a2 && a3)
  {
    if (a2 < 2)
    {
      return 0;
    }

    else
    {
      v5 = a1;
      while (1)
      {
        v6 = v5[1];
        v7 = a2 >= (v6 + 2);
        a2 -= v6 + 2;
        if (!v7)
        {
          return 0;
        }

        if (v6 >= 3 && *v5 == 221)
        {
          v8 = Apple80211ParseAppleIE_appleOUI == *(v5 + 1) && byte_27F611CE2 == v5[4];
          v9 = !v8;
          if (v6 >= 7 && !v9)
          {
            break;
          }
        }

        v10 = &v5[v6 + 2];
        if (a2 > 0)
        {
          v5 = v10;
        }

        if (a2 <= 1)
        {
          return 0;
        }
      }

      v12 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v14 = Mutable;
        v15 = CFNumberCreate(v12, kCFNumberSInt8Type, v5 + 5);
        if (!v15)
        {
          goto LABEL_48;
        }

        v16 = v15;
        CFDictionarySetValue(v14, @"APPLE_IE_VERSION", v15);
        CFRelease(v16);
        if (v5[5] != 1)
        {
          goto LABEL_37;
        }

        v17 = CFNumberCreate(v12, kCFNumberSInt8Type, v5 + 6);
        if (!v17)
        {
LABEL_48:
          v3 = 4294963395;
          goto LABEL_38;
        }

        v18 = v17;
        CFDictionarySetValue(v14, @"APPLE_IE_PRODUCT_ID", v17);
        CFRelease(v18);
        v19 = bswap32(*(v5 + 7)) >> 16;
        v20 = MEMORY[0x277CBED28];
        if (v19)
        {
          CFDictionarySetValue(v14, @"APPLE_IE_INT_MIT", *MEMORY[0x277CBED28]);
          if ((v19 & 2) == 0)
          {
LABEL_29:
            if ((v19 & 4) == 0)
            {
              goto LABEL_30;
            }

            goto LABEL_41;
          }
        }

        else if ((v19 & 2) == 0)
        {
          goto LABEL_29;
        }

        CFDictionarySetValue(v14, @"APPLE_IE_UNCONFIGURED", *v20);
        if ((v19 & 4) == 0)
        {
LABEL_30:
          if ((v19 & 8) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_42;
        }

LABEL_41:
        CFDictionarySetValue(v14, @"APPLE_IE_FOUND_PPPOE", *v20);
        if ((v19 & 8) == 0)
        {
LABEL_31:
          if ((v19 & 0x10) == 0)
          {
            goto LABEL_32;
          }

          goto LABEL_43;
        }

LABEL_42:
        CFDictionarySetValue(v14, @"APPLE_IE_GUEST_NETWORK", *v20);
        if ((v19 & 0x10) == 0)
        {
LABEL_32:
          if ((v19 & 0x20) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_44;
        }

LABEL_43:
        CFDictionarySetValue(v14, @"APPLE_IE_LEGACY_WDS", *v20);
        if ((v19 & 0x20) == 0)
        {
LABEL_33:
          if ((v19 & 0x40) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_45;
        }

LABEL_44:
        CFDictionarySetValue(v14, @"APPLE_IE_WSC_CAP", *v20);
        if ((v19 & 0x40) == 0)
        {
LABEL_34:
          if ((v19 & 0x80) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_46;
        }

LABEL_45:
        CFDictionarySetValue(v14, @"APPLE_IE_WSC_ACTIVE", *v20);
        if ((v19 & 0x80) == 0)
        {
LABEL_35:
          if ((v19 & 0x100) != 0)
          {
LABEL_36:
            CFDictionarySetValue(v14, @"APPLE_IE_WOW_SUPPORTED", *v20);
          }

LABEL_37:
          CFDictionarySetValue(a3, @"APPLE_IE", v14);
          v3 = 0;
LABEL_38:
          CFRelease(v14);
          return v3;
        }

LABEL_46:
        CFDictionarySetValue(v14, @"APPLE_IE_WSC_SOLICITABLE", *v20);
        if ((v19 & 0x100) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      return 4294963395;
    }
  }

  return v3;
}

uint64_t Apple80211ParseAppleiOSIE(unsigned __int8 *a1, int a2, CFMutableDictionaryRef theDict)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (!a1)
  {
    return v3;
  }

  v4 = a2;
  if (!a2 || !theDict)
  {
    return v3;
  }

  if (a2 < 3)
  {
    return 0;
  }

  v6 = a1;
  v7 = 0;
  valuePtr = -86;
  v8 = *MEMORY[0x277CBECE8];
  value = *MEMORY[0x277CBED28];
  while (1)
  {
    v9 = v6[1];
    if (v9 + 2 > v4)
    {
LABEL_37:
      if (v7)
      {
        CFDictionarySetValue(theDict, @"IOS_IE", v7);
        v3 = 0;
        goto LABEL_39;
      }

      return 0;
    }

    if (v9 >= 4 && *v6 == 221 && Apple80211ParseAppleiOSIE_iosSignature == *(v6 + 2))
    {
      if (!v7)
      {
        Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!Mutable)
        {
          return 4294963395;
        }

        v7 = Mutable;
        v9 = v6[1];
      }

      v11 = v9 - 4;
      if (v9 - 4 >= 3)
      {
        break;
      }
    }

LABEL_34:
    v4 = v4 - v9 - 2;
    v29 = &v6[v9 + 2];
    if (v4 > 0)
    {
      v6 = v29;
    }

    if (v4 <= 2)
    {
      goto LABEL_37;
    }
  }

  v12 = v6 + 6;
  while (1)
  {
    v13 = *v12;
    v14 = v12[1];
    valuePtr = v12[1];
    v15 = v12[2];
    v16 = v11 - 3;
    if (v15 > (v11 - 3))
    {
LABEL_42:
      v3 = 4294963394;
      goto LABEL_39;
    }

    v17 = v12 + 3;
    if (v14 != 1)
    {
      goto LABEL_32;
    }

    if (v13 == 4)
    {
      v28 = CFNumberCreate(v8, kCFNumberSInt8Type, &valuePtr);
      if (!v28)
      {
        goto LABEL_43;
      }

      v25 = v28;
      v26 = v7;
      v27 = @"IOS_NAN_PH_INFO_VERSION";
      goto LABEL_31;
    }

    if (v13 == 2)
    {
      break;
    }

    if (v13 == 1)
    {
      if (!v12[2])
      {
        goto LABEL_42;
      }

      v18 = CFNumberCreate(v8, kCFNumberSInt8Type, &valuePtr);
      if (!v18)
      {
        goto LABEL_43;
      }

      v19 = v18;
      CFDictionarySetValue(v7, @"IOS_IE_FEATURE_VERSION", v18);
      CFRelease(v19);
      v20 = CFDataCreate(v8, v17, v15);
      if (!v20)
      {
        goto LABEL_43;
      }

      v21 = v20;
      CFDictionarySetValue(v7, @"IOS_IE_FEATURES", v20);
      CFRelease(v21);
      if (*v17)
      {
        CFDictionarySetValue(v7, @"IOS_IE_FEATURE_WOW_DISALLOWED", value);
      }
    }

LABEL_32:
    v11 = v16 - v15;
    v12 = &v17[v15];
    if ((v16 - v15) <= 2u)
    {
      v9 = v6[1];
      goto LABEL_34;
    }
  }

  if (v15 < 6)
  {
    goto LABEL_42;
  }

  v22 = CFNumberCreate(v8, kCFNumberSInt8Type, &valuePtr);
  if (v22)
  {
    v23 = v22;
    CFDictionarySetValue(v7, @"IOS_IE_BTMAC_VERSION", v22);
    CFRelease(v23);
    v24 = CFDataCreate(v8, v17, 6);
    if (v24)
    {
      v25 = v24;
      v26 = v7;
      v27 = @"IOS_IE_BTMAC";
LABEL_31:
      CFDictionarySetValue(v26, v27, v25);
      CFRelease(v25);
      goto LABEL_32;
    }
  }

LABEL_43:
  v3 = 4294963395;
LABEL_39:
  CFRelease(v7);
  return v3;
}

uint64_t Apple80211GetPowerState(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  v3 = Apple80211CopyValue();
  if (!v3)
  {
    Count = CFArrayGetCount(0xAAAAAAAAAAAAAAAALL);
    if (Count >= 1)
    {
      v5 = 0;
      do
      {
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(0xAAAAAAAAAAAAAAAALL, v5);
          if (ValueAtIndex)
          {
            break;
          }

          if (++v5 >= Count)
          {
            goto LABEL_11;
          }
        }

        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, a2);
        ++v5;
      }

      while (*a2 != 1 && v5 < Count);
    }

LABEL_11:
    CFRelease(0xAAAAAAAAAAAAAAAALL);
  }

  return v3;
}

uint64_t Apple80211GetPower(uint64_t a1, BOOL *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = -1431655766;
  result = Apple80211GetPowerState(a1, &v4);
  *a2 = v4 == 1;
  return result;
}

void _dispatchRealtimeSessionEvent(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    return;
  }

  if (a3 != 20)
  {
    return;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return;
  }

  v6 = Mutable;
  v7 = *MEMORY[0x277CBECE8];
  v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt8Type, (a2 + 1));
  if (v8)
  {
    v9 = v8;
    CFDictionaryAddValue(v6, @"ASR_SESSION_STATE", v8);
    v10 = CFNumberCreate(v7, kCFNumberSInt8Type, a2);
    if (!v10)
    {
LABEL_27:
      CFRelease(v9);
      goto LABEL_28;
    }

    v11 = v10;
    CFDictionaryAddValue(v6, @"RT_TRAFFIC_STATE", v10);
    v12 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v12)
    {
      (*(a1 + 72))(0, a1, 156, v6, 8, *(a1 + 80));
      goto LABEL_26;
    }

    v13 = v12;
    v14 = CFNumberCreate(v7, kCFNumberSInt8Type, (a2 + 8));
    if (!v14)
    {
LABEL_25:
      CFDictionaryAddValue(v6, @"QUAL_SCORE", v13);
      (*(a1 + 72))(0, a1, 156, v6, 8, *(a1 + 80));
      CFRelease(v11);
      v11 = v9;
      v9 = v13;
LABEL_26:
      CFRelease(v11);
      goto LABEL_27;
    }

    v15 = v14;
    CFDictionaryAddValue(v13, @"CHANQUAL_SCORE", v14);
    v16 = CFNumberCreate(v7, kCFNumberSInt8Type, (a2 + 4));
    if (!v16)
    {
      v21 = v15;
LABEL_24:
      CFRelease(v21);
      goto LABEL_25;
    }

    v22 = v16;
    cf = v15;
    CFDictionaryAddValue(v13, @"TX_LATENCY_SCORE", v16);
    v17 = CFNumberCreate(v7, kCFNumberSInt8Type, (a2 + 5));
    v24 = v11;
    if (v17)
    {
      CFDictionaryAddValue(v13, @"RX_LATENCY_SCORE", v17);
      v18 = CFNumberCreate(v7, kCFNumberSInt8Type, (a2 + 6));
      if (v18)
      {
        CFDictionaryAddValue(v13, @"TX_LOSS_SCORE", v18);
        v19 = CFNumberCreate(v7, kCFNumberSInt8Type, (a2 + 7));
        if (v19)
        {
          CFDictionaryAddValue(v13, @"RX_LOSS_SCORE", v19);
          v20 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 12));
          if (v20)
          {
            CFDictionaryAddValue(v13, @"P95_TX_LATENCY_SCORE", v20);
            v21 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 16));
            if (v21)
            {
              CFDictionaryAddValue(v13, @"LINK_RECOMMENDATION_FLAGS", v21);
            }

LABEL_15:
            CFRelease(cf);
            CFRelease(v22);
            if (v17)
            {
              CFRelease(v17);
            }

            if (v18)
            {
              CFRelease(v18);
            }

            if (v19)
            {
              CFRelease(v19);
            }

            if (v20)
            {
              CFRelease(v20);
            }

            v11 = v24;
            if (!v21)
            {
              goto LABEL_25;
            }

            goto LABEL_24;
          }

LABEL_37:
          v21 = 0;
          goto LABEL_15;
        }

LABEL_36:
        v20 = 0;
        goto LABEL_37;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = 0;
    goto LABEL_36;
  }

LABEL_28:

  CFRelease(v6);
}

void _dispatchCCAChangedEvent(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  if (a3 < 0x1C)
  {
    return;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return;
  }

  v6 = Mutable;
  v7 = *MEMORY[0x277CBECE8];
  v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a2);
  if (v8)
  {
    v9 = v8;
    CFDictionaryAddValue(v6, @"TIMESTAMP", v8);
    v10 = CFNumberCreate(v7, kCFNumberSInt16Type, a2 + 4);
    if (!v10)
    {
      DictFromCCAStats = v9;
LABEL_17:
      CFRelease(DictFromCCAStats);
      goto LABEL_18;
    }

    v11 = v10;
    CFDictionaryAddValue(v6, @"CHANNEL", v10);
    v12 = CFNumberCreate(v7, kCFNumberSInt8Type, a2 + 6);
    if (v12)
    {
      CFDictionaryAddValue(v6, @"CCA", v12);
      v14 = a2[8];
      v13 = a2 + 8;
      if (v14)
      {
        DictFromCCAStats = _createDictFromCCAStats(v13);
        if (!DictFromCCAStats)
        {
          goto LABEL_14;
        }

        CFDictionaryAddValue(v6, @"CCA_STATS", DictFromCCAStats);
      }

      else
      {
        DictFromCCAStats = 0;
      }

      (*(a1 + 72))(0, a1, 60, v6, 8, *(a1 + 80));
    }

    else
    {
      DictFromCCAStats = 0;
    }

LABEL_14:
    CFRelease(v9);
    CFRelease(v11);
    if (v12)
    {
      CFRelease(v12);
    }

    if (!DictFromCCAStats)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_18:

  CFRelease(v6);
}

uint64_t Apple80211SetProperty()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v36 = *MEMORY[0x277D85DE8];
  values = v1;
  keys = v3;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  bzero(&v31, 0x1004uLL);
  v30 = 1;
  error = 0;
  if (!v4)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return 4294963396;
    }

    *buf = 136315138;
    v26 = "Apple80211SetProperty";
    v8 = MEMORY[0x277D86220];
    v9 = "%s: key NULL\n";
LABEL_37:
    v10 = 12;
    goto LABEL_17;
  }

  if (!v2)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 136315138;
    v26 = "Apple80211SetProperty";
    v8 = MEMORY[0x277D86220];
    v9 = "%s: property NULL\n";
    goto LABEL_37;
  }

  if (!v5)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v11 = 0;
    v6 = -1;
LABEL_16:
    *buf = 136315906;
    v26 = "Apple80211SetProperty";
    v27 = 2048;
    *v28 = v5;
    *&v28[8] = 1024;
    LODWORD(v29[0]) = v6;
    WORD2(v29[0]) = 2048;
    *(v29 + 6) = v11;
    v8 = MEMORY[0x277D86220];
    v9 = "%s: bad opaque: opaque=%p, opaque->sockfd=%d, name-len=%lu\n";
    v10 = 38;
LABEL_17:
    _os_log_impl(&dword_254882000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, v10);
    goto LABEL_18;
  }

  v6 = *v5;
  if ((*v5 & 0x80000000) != 0 || !*(v5 + 4))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v11 = strlen((v5 + 4));
    goto LABEL_16;
  }

  if (CFStringGetLength(v4) <= 79)
  {
    v7 = 0;
    while (!CFEqual(v4, _isValidProperty_DEPRECATED_validProperties_DEPRECATED[v7]))
    {
      if (++v7 == 62)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        *buf = 136315394;
        v26 = "Apple80211SetProperty";
        v27 = 2112;
        *v28 = v4;
        v8 = MEMORY[0x277D86220];
        v9 = "%s: Key: %@ is not a valid property\n";
        v10 = 22;
        goto LABEL_17;
      }
    }

    v14 = *MEMORY[0x277CBECE8];
    v15 = CFDictionaryCreate(*MEMORY[0x277CBECE8], &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v15)
    {
      v13 = 3758097085;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v26 = "Apple80211SetProperty";
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: could not build wrapper dictionary\n", buf, 0xCu);
      }

      v12 = 0;
      goto LABEL_28;
    }

    v12 = v15;
    v16 = CFPropertyListCreateData(v14, v15, kCFPropertyListXMLFormat_v1_0, 0, &error);
    if (v16)
    {
      v17 = v16;
      v18 = CFDataGetLength(v16) + 1;
      v31 = v18;
      if (v18 > 0x1000)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v26 = "Apple80211SetProperty";
          v27 = 2048;
          *v28 = v18;
          *&v28[8] = 1024;
          LODWORD(v29[0]) = 4096;
          WORD2(v29[0]) = 2112;
          *(v29 + 6) = values;
          _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: serialized property dictionary too long (%lu => %i). Consider changing APPLE80211_MAX_PROPERTY_SERIAL_LEN: %@\n", buf, 0x26u);
        }

        v13 = 4294963396;
      }

      else
      {
        v37.length = CFDataGetLength(v17);
        v37.location = 0;
        CFDataGetBytes(v17, v37, v32);
        v32[v31 - 1] = 0;
        v33 = 0u;
        v34 = 0u;
        v35 = 0;
        LODWORD(v34) = 383;
        __strlcpy_chk();
        DWORD2(v34) = 4104;
        v35 = &v30;
        v13 = Apple80211RawSet();
        if (v13)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v19 = keys;
            v20 = *__error();
            *buf = 136315906;
            v26 = "Apple80211SetProperty";
            v27 = 2112;
            *v28 = v19;
            *&v28[8] = 1024;
            LODWORD(v29[0]) = v13;
            WORD2(v29[0]) = 1024;
            *(v29 + 6) = v20;
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: failed to set %@: bsdErr=%d, errno=%d\n", buf, 0x22u);
          }

          v13 = *__error();
        }
      }

      CFRelease(v17);
      goto LABEL_28;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v26 = "Apple80211SetProperty";
      v27 = 2112;
      *v28 = error;
      *&v28[8] = 2112;
      v29[0] = v12;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: cannot serialize: error: %@ property- %@\n", buf, 0x20u);
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v26 = "Apple80211SetProperty";
    v27 = 1024;
    *v28 = CFStringGetLength(v4);
    *&v28[4] = 1024;
    *&v28[6] = 80;
    v8 = MEMORY[0x277D86220];
    v9 = "%s: C-string in key is too long (%u >= %u)\n";
    v10 = 24;
    goto LABEL_17;
  }

LABEL_18:
  v12 = 0;
LABEL_19:
  v13 = 4294963396;
LABEL_28:
  if (error)
  {
    CFRelease(error);
    error = 0;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v13;
}

uint64_t Apple80211RawSet()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v54 = *MEMORY[0x277D85DE8];
  if (*(v1 + 24) < 0x3C01u)
  {

    return Apple80211IOCTLSetWrapper();
  }

  if (!*(v0 + 109))
  {
    v5 = *(v1 + 16);
    if (!*(v0 + 1817))
    {
      memset(v32, 0, 32);
      v9 = v0 + 4;
      __strlcpy_chk();
      v10 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      ioctl(*v3, 0xC0206911uLL, v32);
      v11 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v10;
      if (v11 > 0x3B9AC9FF && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136448258;
        v44 = "_logTimeIfThresholdExceeded";
        v45 = 2082;
        *v46 = v32;
        *&v46[8] = 2080;
        *&v46[10] = " 'SIOCGIFFLAGS' ";
        *&v46[18] = 1024;
        *&v46[20] = -1071617775;
        v47 = 1024;
        *v48 = -1071617775;
        *&v48[4] = 2048;
        *&v48[6] = v11 / 0x3B9ACA00;
        v49 = 2048;
        *v50 = v11 % 0x3B9ACA00 / 0x3E8;
        *&v50[8] = 2048;
        *&v50[10] = 1;
        *&v50[18] = 2048;
        v51 = 0;
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: ['%{public}s']%s: ioctl[0x%08x/%u] [%llu.%06llu] Exceeded threshold >= [%llu.%06llu]\n", buf, 0x54u);
      }

      __strlcpy_chk();
      if (*(v3 + 2008))
      {
        v12 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          if (v5 > 584)
          {
            v13 = "Error Invalid ioctl";
          }

          else if (v5 == -1)
          {
            v13 = "APPLE80211_IOC_CARD_SPECIFIC";
          }

          else if (v5 < 0 || (v13 = gAppleIoucIndexToString[v5]) == 0)
          {
            v13 = "unknown Apple80211_IOC_";
          }

          v22 = *(v2 + 24);
          *buf = 136448258;
          v44 = "_Apple80211LargeIOCTLSetWrapper";
          v45 = 1024;
          *v46 = 604;
          *&v46[4] = 2048;
          *&v46[6] = v12 / 0x3B9ACA00;
          *&v46[14] = 2048;
          *&v46[16] = v12 % 0x3B9ACA00 / 0x3E8;
          v47 = 2082;
          *v48 = v3 + 4;
          *&v48[8] = 1024;
          *&v48[10] = v5;
          v49 = 1024;
          *v50 = *&v32[16];
          *&v50[4] = 2082;
          *&v50[6] = v13;
          *&v50[14] = 1024;
          *&v50[16] = v22;
          _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s:%u  @[%llu.%06llu] ifname['%{public}s']/0x%08x IOCTL type %d/'%{public}s', len[%d]\n", buf, 0x4Cu);
        }
      }

      v19 = ioctl(*v3, 0x802869C8uLL, v2);
      if (!v19)
      {
        return v19;
      }

      v23 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v19;
      }

      if (v5 > 584)
      {
        v24 = "Error Invalid ioctl";
      }

      else if (v5 == -1)
      {
        v24 = "APPLE80211_IOC_CARD_SPECIFIC";
      }

      else if (v5 < 0 || (v24 = gAppleIoucIndexToString[v5]) == 0)
      {
        v24 = "unknown Apple80211_IOC_";
      }

      v25 = *(v2 + 24);
      *buf = 136448514;
      v44 = "_Apple80211LargeIOCTLSetWrapper";
      v45 = 1024;
      *v46 = 610;
      *&v46[4] = 2048;
      *&v46[6] = v23 / 0x3B9ACA00;
      *&v46[14] = 2048;
      *&v46[16] = v23 % 0x3B9ACA00 / 0x3E8;
      v47 = 2082;
      *v48 = v9;
      *&v48[8] = 1024;
      *&v48[10] = *&v32[16];
      v49 = 1024;
      *v50 = v5;
      *&v50[4] = 2082;
      *&v50[6] = v24;
      *&v50[14] = 1024;
      *&v50[16] = v25;
      LOWORD(v51) = 1024;
      *(&v51 + 2) = v19;
      v26 = MEMORY[0x277D86220];
      v27 = "%{public}s:%u @[%llu.%06llu] ifname['%{public}s']/0x%08x IOCTL type %d/'%{public}s', len[%d] return %d\n";
      v28 = buf;
      v29 = 82;
LABEL_67:
      _os_log_impl(&dword_254882000, v26, OS_LOG_TYPE_DEFAULT, v27, v28, v29);
      return v19;
    }

    bzero(buf, 0x3C030uLL);
    *buf = -2144835128;
    v6 = v3 + 4;
    __strlcpy_chk();
    v52 = v5;
    if (*(v3 + 2008))
    {
      v7 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        if (v5 > 584)
        {
          v8 = "Error Invalid ioctl";
        }

        else if (v5 == -1)
        {
          v8 = "APPLE80211_IOC_CARD_SPECIFIC";
        }

        else if (v5 < 0 || (v8 = gAppleIoucIndexToString[v5]) == 0)
        {
          v8 = "unknown Apple80211_IOC_";
        }

        v14 = *(v2 + 24);
        *v32 = 136448002;
        *&v32[4] = "_Apple80211LargeIOCTLSetWrapper";
        *&v32[12] = 1024;
        *&v32[14] = 554;
        *&v32[18] = 2048;
        *&v32[20] = v7 / 0x3B9ACA00;
        *&v32[28] = 2048;
        *&v32[30] = v7 % 0x3B9ACA00 / 0x3E8;
        v33 = 2082;
        v34 = v3 + 4;
        v35 = 1024;
        v36 = v5;
        v37 = 2082;
        v38 = v8;
        v39 = 1024;
        v40 = v14;
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s:%u  @[%llu.%06llu] ifname['%{public}s'] IOUC type %d/'%{public}s', len[%d]\n", v32, 0x46u);
      }
    }

    if (*(v2 + 20))
    {
      v53 = *(v2 + 20);
    }

    v15 = *(v2 + 24);
    if (v15 > 0x3C000)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 136315394;
        *&v32[4] = "_Apple80211LargeIOCTLSetWrapper";
        *&v32[12] = 1024;
        *&v32[14] = v15;
        v16 = MEMORY[0x277D86220];
        v17 = "%s: req_len %d exceeds max input buffer length\n";
LABEL_42:
        _os_log_impl(&dword_254882000, v16, OS_LOG_TYPE_DEFAULT, v17, v32, 0x12u);
        return 22;
      }

      return 22;
    }

    v18 = *(v2 + 32);
    if (v15)
    {
      if (v18)
      {
        LODWORD(v44) = *(v2 + 24);
        __memcpy_chk();
        goto LABEL_45;
      }
    }

    else if (!v18)
    {
      v15 = 0;
LABEL_45:
      outputStructCnt = v15;
      v19 = IOConnectCallStructMethod(*(v3 + 1820), 6u, buf, 0x3C030uLL, v18, &outputStructCnt);
      if (!v19)
      {
        return v19;
      }

      *__error() = v19;
      v20 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        return v19;
      }

      if (v5 > 584)
      {
        v21 = "Error Invalid ioctl";
      }

      else if (v5 == -1)
      {
        v21 = "APPLE80211_IOC_CARD_SPECIFIC";
      }

      else if (v5 < 0 || (v21 = gAppleIoucIndexToString[v5]) == 0)
      {
        v21 = "unknown Apple80211_IOC_";
      }

      v30 = *(v2 + 24);
      *v32 = 136448258;
      *&v32[4] = "_Apple80211LargeIOCTLSetWrapper";
      *&v32[12] = 1024;
      *&v32[14] = 583;
      *&v32[18] = 2048;
      *&v32[20] = v20 / 0x3B9ACA00;
      *&v32[28] = 2048;
      *&v32[30] = v20 % 0x3B9ACA00 / 0x3E8;
      v33 = 2082;
      v34 = v6;
      v35 = 1024;
      v36 = v5;
      v37 = 2082;
      v38 = v21;
      v39 = 1024;
      v40 = v30;
      v41 = 1024;
      v42 = v19;
      v26 = MEMORY[0x277D86220];
      v27 = "%{public}s:%u @[%llu.%06llu] ifname['%{public}s'] IOUC type %d/'%{public}s', len[%d] return %d\n";
      v28 = v32;
      v29 = 76;
      goto LABEL_67;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 136315394;
      *&v32[4] = "_Apple80211LargeIOCTLSetWrapper";
      *&v32[12] = 1024;
      *&v32[14] = v15;
      v16 = MEMORY[0x277D86220];
      v17 = "%s: Invalid data or length in req: len %d\n";
      goto LABEL_42;
    }

    return 22;
  }

  return _Apple80211AWDLCompatibilityCall(v0, v1, 1);
}

uint64_t Apple80211ParseAppleDeviceIE(unsigned __int8 *a1, int a2, __CFDictionary *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (!a1 || !a2 || !a3)
  {
    return v3;
  }

  if (a2 < 2)
  {
    return 0;
  }

  v5 = a1;
  while (1)
  {
    v6 = v5[1];
    v7 = a2 >= (v6 + 2);
    a2 -= v6 + 2;
    if (!v7)
    {
      return 0;
    }

    if (v6 >= 4 && *v5 == 221 && Apple80211ParseAppleDeviceIE_signature == *(v5 + 2))
    {
      break;
    }

    v8 = &v5[v6 + 2];
    if (a2 > 0)
    {
      v5 = v8;
    }

    if (a2 <= 1)
    {
      return 0;
    }
  }

  v10 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return 4294963395;
  }

  v12 = Mutable;
  v13 = v5[1] - 4;
  if ((v5[1] - 4) < 2u)
  {
LABEL_110:
    CFDictionarySetValue(a3, @"APPLE_DEVICE_IE", v12);
    v3 = 0;
    goto LABEL_111;
  }

  v14 = v5 + 6;
  v15 = *MEMORY[0x277CBED28];
  while (1)
  {
    v16 = v14[1];
    v17 = v13 - 2;
    if (v16 > (v13 - 2))
    {
LABEL_112:
      v3 = 4294963394;
      goto LABEL_111;
    }

    v18 = v14 + 2;
    v19 = *v14;
    if (v19 > 3)
    {
      break;
    }

    if (*v14 <= 1u)
    {
      if (*v14)
      {
        if (!v14[1])
        {
          goto LABEL_112;
        }

        v20 = CFStringCreateWithBytes(v10, v14 + 2, v14[1], 0x8000100u, 0);
        if (!v20)
        {
          goto LABEL_113;
        }

        v21 = v20;
        v22 = v12;
        v23 = @"APPLE_DEVICE_IE_FRIENDLY_NAME";
        goto LABEL_84;
      }

      if (!v14[1])
      {
        goto LABEL_112;
      }

      v29 = CFDataCreate(v10, v14 + 2, v14[1]);
      if (!v29)
      {
        goto LABEL_113;
      }

      v30 = v29;
      CFDictionarySetValue(v12, @"APPLE_DEVICE_IE_FEATURE_FLAGS", v29);
      CFRelease(v30);
      v31 = *v18;
      if (v31 < 0)
      {
        CFDictionarySetValue(v12, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_AIRPLAY", v15);
        LOBYTE(v31) = *v18;
        if ((*v18 & 0x40) == 0)
        {
LABEL_48:
          if ((v31 & 0x20) != 0)
          {
            CFDictionarySetValue(v12, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_MFI_CONFIG_V1", v15);
            LOBYTE(v31) = *v18;
            if ((*v18 & 0x10) == 0)
            {
LABEL_50:
              if ((v31 & 8) == 0)
              {
                goto LABEL_51;
              }

              goto LABEL_89;
            }
          }

          else if ((v31 & 0x10) == 0)
          {
            goto LABEL_50;
          }

          CFDictionarySetValue(v12, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_WOW", v15);
          LOBYTE(v31) = *v18;
          if ((*v18 & 8) == 0)
          {
LABEL_51:
            if ((v31 & 4) == 0)
            {
              goto LABEL_52;
            }

            goto LABEL_90;
          }

LABEL_89:
          CFDictionarySetValue(v12, @"APPLE_DEVICE_IE_FEATURE_INTERFERENCE_ROBUSTNESS", v15);
          LOBYTE(v31) = *v18;
          if ((*v18 & 4) == 0)
          {
LABEL_52:
            if ((v31 & 2) == 0)
            {
              goto LABEL_53;
            }

            goto LABEL_91;
          }

LABEL_90:
          CFDictionarySetValue(v12, @"APPLE_DEVICE_IE_FEATURE_REMOTE_PPPOE_SERVER", v15);
          LOBYTE(v31) = *v18;
          if ((*v18 & 2) == 0)
          {
LABEL_53:
            if ((v31 & 1) == 0)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          }

LABEL_91:
          CFDictionarySetValue(v12, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_WPS", v15);
          if ((*v18 & 1) == 0)
          {
LABEL_55:
            if (v16 == 1)
            {
              goto LABEL_85;
            }

            v32 = v14[3];
            if (v32 < 0)
            {
              CFDictionarySetValue(v12, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_AIRPRINT", v15);
              LOBYTE(v32) = v14[3];
              if ((v32 & 0x40) == 0)
              {
LABEL_59:
                if ((v32 & 0x20) != 0)
                {
                  CFDictionarySetValue(v12, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_CARPLAY", v15);
                  LOBYTE(v32) = v14[3];
                  if ((v32 & 0x10) == 0)
                  {
LABEL_61:
                    if ((v32 & 8) == 0)
                    {
                      goto LABEL_62;
                    }

                    goto LABEL_97;
                  }
                }

                else if ((v32 & 0x10) == 0)
                {
                  goto LABEL_61;
                }

                CFDictionarySetValue(v12, @"APPLE_DEVICE_IE_FEATURE_PROVIDES_INTERNET_ACCESS", v15);
                LOBYTE(v32) = v14[3];
                if ((v32 & 8) == 0)
                {
LABEL_62:
                  if ((v32 & 4) == 0)
                  {
                    goto LABEL_63;
                  }

                  goto LABEL_98;
                }

LABEL_97:
                CFDictionarySetValue(v12, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_ACP_CONFIG_V1", v15);
                LOBYTE(v32) = v14[3];
                if ((v32 & 4) == 0)
                {
LABEL_63:
                  if ((v32 & 2) == 0)
                  {
                    goto LABEL_64;
                  }

                  goto LABEL_99;
                }

LABEL_98:
                CFDictionarySetValue(v12, @"APPLE_DEVICE_IE_FEATURE_RECENT_PHYSICAL_CONTACT", v15);
                LOBYTE(v32) = v14[3];
                if ((v32 & 2) == 0)
                {
LABEL_64:
                  if ((v32 & 1) == 0)
                  {
                    goto LABEL_66;
                  }

                  goto LABEL_65;
                }

LABEL_99:
                CFDictionarySetValue(v12, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_24GHZ_WIFI_NETWORKS", v15);
                if ((v14[3] & 1) == 0)
                {
LABEL_66:
                  if (v16 < 3)
                  {
                    goto LABEL_85;
                  }

                  v33 = v14[4];
                  if ((v33 & 0x40) != 0)
                  {
                    CFDictionarySetValue(v12, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_HOMEKIT", v15);
                    v33 = v14[4];
                    if ((v33 & 0x20) == 0)
                    {
LABEL_69:
                      if ((v33 & 0x10) == 0)
                      {
                        goto LABEL_70;
                      }

                      goto LABEL_105;
                    }
                  }

                  else if ((v14[4] & 0x20) == 0)
                  {
                    goto LABEL_69;
                  }

                  CFDictionarySetValue(v12, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_HOMEKIT_V2", v15);
                  v33 = v14[4];
                  if ((v33 & 0x10) == 0)
                  {
LABEL_70:
                    if ((v33 & 8) == 0)
                    {
                      goto LABEL_71;
                    }

                    goto LABEL_106;
                  }

LABEL_105:
                  CFDictionarySetValue(v12, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_BUFFERED_AIRPLAY", v15);
                  v33 = v14[4];
                  if ((v33 & 8) == 0)
                  {
LABEL_71:
                    if ((v33 & 4) == 0)
                    {
                      goto LABEL_72;
                    }

                    goto LABEL_107;
                  }

LABEL_106:
                  CFDictionarySetValue(v12, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_SECURE_WAC", v15);
                  v33 = v14[4];
                  if ((v33 & 4) == 0)
                  {
LABEL_72:
                    if ((v33 & 2) == 0)
                    {
                      goto LABEL_73;
                    }

LABEL_108:
                    CFDictionarySetValue(v12, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_SOFTWARE_TOKEN_AUTH", v15);
                    if (v14[4])
                    {
LABEL_109:
                      CFDictionarySetValue(v12, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_SOFTWARE_CERT_AUTH", v15);
                      goto LABEL_85;
                    }

                    goto LABEL_85;
                  }

LABEL_107:
                  CFDictionarySetValue(v12, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_MFI_HARDWARE_AUTH", v15);
                  v33 = v14[4];
                  if ((v33 & 2) == 0)
                  {
LABEL_73:
                    if (v33)
                    {
                      goto LABEL_109;
                    }

                    goto LABEL_85;
                  }

                  goto LABEL_108;
                }

LABEL_65:
                CFDictionarySetValue(v12, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_5GHZ_WIFI_NETWORKS", v15);
                goto LABEL_66;
              }
            }

            else if ((v32 & 0x40) == 0)
            {
              goto LABEL_59;
            }

            CFDictionarySetValue(v12, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_IAP_OVER_WIFI", v15);
            LOBYTE(v32) = v14[3];
            goto LABEL_59;
          }

LABEL_54:
          CFDictionarySetValue(v12, @"APPLE_DEVICE_IE_FEATURE_WPS_ACTIVE", v15);
          goto LABEL_55;
        }
      }

      else if ((v31 & 0x40) == 0)
      {
        goto LABEL_48;
      }

      CFDictionarySetValue(v12, @"APPLE_DEVICE_IE_FEATURE_UNCONFIGURED", v15);
      LOBYTE(v31) = *v18;
      goto LABEL_48;
    }

    if (v19 == 2)
    {
      if (!v14[1])
      {
        goto LABEL_112;
      }

      v35 = CFStringCreateWithBytes(v10, v14 + 2, v14[1], 0x8000100u, 0);
      if (!v35)
      {
        goto LABEL_113;
      }

      v21 = v35;
      v22 = v12;
      v23 = @"APPLE_DEVICE_IE_MANUFACTURER_NAME";
      goto LABEL_84;
    }

    if (v19 == 3)
    {
      if (!v14[1])
      {
        goto LABEL_112;
      }

      v27 = CFStringCreateWithBytes(v10, v14 + 2, v14[1], 0x8000100u, 0);
      if (!v27)
      {
        goto LABEL_113;
      }

      v21 = v27;
      v22 = v12;
      v23 = @"APPLE_DEVICE_IE_MODEL_NAME";
      goto LABEL_84;
    }

LABEL_85:
    v14 = &v18[v16];
    v13 = v17 - v16;
    if ((v17 - v16) <= 1u)
    {
      goto LABEL_110;
    }
  }

  if (*v14 <= 5u)
  {
    if (v19 == 4)
    {
      if (v16 < 3)
      {
        goto LABEL_112;
      }

      v34 = CFDataCreate(v10, v14 + 2, 3);
      if (!v34)
      {
        goto LABEL_113;
      }

      v21 = v34;
      v22 = v12;
      v23 = @"APPLE_DEVICE_IE_OUI";
      goto LABEL_84;
    }

    if (v19 == 5)
    {
      if (v16 < 2)
      {
        goto LABEL_112;
      }

      valuePtr = *v18;
      v24 = CFNumberCreate(v10, kCFNumberSInt8Type, &valuePtr);
      if (!v24)
      {
        goto LABEL_113;
      }

      v25 = v24;
      CFDictionarySetValue(v12, @"APPLE_DEVICE_IE_DWDS_ROLE", v24);
      CFRelease(v25);
      v37 = v14[3];
      v26 = CFNumberCreate(v10, kCFNumberSInt8Type, &v37);
      if (!v26)
      {
        goto LABEL_113;
      }

      v21 = v26;
      v22 = v12;
      v23 = @"APPLE_DEVICE_IE_DWDS_FLAGS";
      goto LABEL_84;
    }

    goto LABEL_85;
  }

  if (v19 != 6)
  {
    if (v19 == 7)
    {
      if (v16 < 6)
      {
        goto LABEL_112;
      }

      v28 = CFDataCreate(v10, v14 + 2, 6);
      if (!v28)
      {
        goto LABEL_113;
      }

      v21 = v28;
      v22 = v12;
      v23 = @"APPLE_DEVICE_IE_DEVICE_ID";
      goto LABEL_84;
    }

    goto LABEL_85;
  }

  if (v16 < 6)
  {
    goto LABEL_112;
  }

  v36 = CFDataCreate(v10, v14 + 2, 6);
  if (v36)
  {
    v21 = v36;
    v22 = v12;
    v23 = @"APPLE_DEVICE_IE_BLUETOOTH_MAC";
LABEL_84:
    CFDictionarySetValue(v22, v23, v21);
    CFRelease(v21);
    goto LABEL_85;
  }

LABEL_113:
  v3 = 4294963395;
LABEL_111:
  CFRelease(v12);
  return v3;
}

uint64_t Apple80211Parse80211dIE(uint64_t a1, unsigned int a2, __CFDictionary *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (a1 && a3)
  {
    if (a2 < 2)
    {
      return 0;
    }

    else
    {
      v5 = a1;
      while (1)
      {
        v6 = *(v5 + 1);
        v7 = *v5 == 7 && v6 >= 6;
        if (v7 && (v6 + 2) <= a2)
        {
          break;
        }

        a2 = a2 - v6 - 2;
        if (a2 >= 1)
        {
          v9 = v5 + *(v5 + 1);
          v5 = v9 + 2;
          if (*(v9 + 3) + 2 <= a2)
          {
            continue;
          }
        }

        return 0;
      }

      memset(v19, 0, sizeof(v19));
      *cStr = *(v5 + 2);
      if (v6 - 6 > 0xFFFFFFFC)
      {
        v11 = 0;
      }

      else
      {
        if ((v6 - 6) / 3 >= 0x53)
        {
          v10 = 83;
        }

        else
        {
          v10 = (v6 - 6) / 3;
        }

        memcpy(&v19[2], (v5 + 5), 3 * v10 + 3);
        v11 = v10 + 1;
      }

      v19[1] = v11;
      v12 = *MEMORY[0x277CBECE8];
      v13 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
      if (v13)
      {
        v14 = v13;
        Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          v16 = Mutable;
          CFDictionarySetValue(Mutable, @"IE_KEY_80211D_COUNTRY_CODE", v14);
          CFDictionarySetValue(a3, @"80211D_IE", v16);
          CFRelease(v14);
          v3 = 0;
          v14 = v16;
        }

        else
        {
          v3 = 4294963395;
        }

        CFRelease(v14);
      }

      else
      {
        return 4294963395;
      }
    }
  }

  return v3;
}

uint64_t Apple80211ParseSES_IE(unsigned __int8 *a1, unsigned int a2, __CFDictionary *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (a1 && a3)
  {
    if (a2 < 2)
    {
      return 0;
    }

    else
    {
      v5 = a1;
      while (1)
      {
        v6 = v5[1];
        v7 = *v5 == 221 && v6 >= 7;
        if (v7 && (v6 + 2) <= a2 && *(v5 + 2) == 21794816 && v5[6] == 1)
        {
          break;
        }

        a2 = a2 - v6 - 2;
        if (a2 >= 1)
        {
          v10 = &v5[v5[1]];
          v5 = v10 + 2;
          if (v10[3] + 2 <= a2)
          {
            continue;
          }
        }

        return 0;
      }

      v12 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v14 = Mutable;
        valuePtr = v5[9];
        v15 = CFNumberCreate(v12, kCFNumberSInt32Type, &valuePtr);
        if (v15)
        {
          v16 = v15;
          CFDictionarySetValue(v14, @"IE_KEY_SES_VERSION", v15);
          CFRelease(v16);
          if (v5[9] == 16)
          {
            v17 = *MEMORY[0x277CBED28];
            v18 = *MEMORY[0x277CBED10];
            if (v5[10])
            {
              v19 = *MEMORY[0x277CBED28];
            }

            else
            {
              v19 = *MEMORY[0x277CBED10];
            }

            CFDictionarySetValue(v14, @"IE_KEY_SES_RWO", v19);
            if ((v5[10] & 2) != 0)
            {
              v20 = v17;
            }

            else
            {
              v20 = v18;
            }

            CFDictionarySetValue(v14, @"IE_KEY_SES_WDS_RWO", v20);
          }

          CFDictionarySetValue(a3, @"SES_IE", v14);
          v3 = 0;
        }

        else
        {
          v3 = 4294963395;
        }

        CFRelease(v14);
      }

      else
      {
        return 4294963395;
      }
    }
  }

  return v3;
}

uint64_t Apple80211ParseHT_Caps(uint64_t a1, int a2, __CFDictionary *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (!a1 || !a3)
  {
    return v3;
  }

  if (a2 < 3)
  {
    return 0;
  }

  v5 = a1;
  while (*v5 != 45)
  {
    v7 = *(v5 + 1);
    v6 = a2 - 2;
LABEL_13:
    a2 = v6 - v7;
    v5 += v7 + 2;
    if ((v6 - v7) <= 2)
    {
      return 0;
    }
  }

  v6 = a2 - 2;
  v7 = *(v5 + 1);
  if (v7 < 0x1A || v6 < v7)
  {
    goto LABEL_13;
  }

  v10 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return 4294963395;
  }

  v12 = Mutable;
  v25 = -1431655766;
  valuePtr = *(v5 + 2);
  v13 = CFNumberCreate(v10, kCFNumberSInt16Type, &valuePtr);
  if (v13 && (v14 = v13, CFDictionarySetValue(v12, @"CAPS", v13), CFRelease(v14), (v15 = CFNumberCreate(v10, kCFNumberSInt8Type, (v5 + 4))) != 0) && (v16 = v15, CFDictionarySetValue(v12, @"AMPDU_PARAMS", v15), CFRelease(v16), (v17 = CFDataCreate(v10, (v5 + 5), 16)) != 0) && (v18 = v17, CFDictionarySetValue(v12, @"MCS_SET", v17), CFRelease(v18), valuePtr = *(v5 + 21), (v19 = CFNumberCreate(v10, kCFNumberSInt16Type, &valuePtr)) != 0) && (v20 = v19, CFDictionarySetValue(v12, @"EXT_CAPS", v19), CFRelease(v20), v25 = *(v5 + 23), (v21 = CFNumberCreate(v10, kCFNumberSInt32Type, &v25)) != 0) && (v22 = v21, CFDictionarySetValue(v12, @"TXBF_CAPS", v21), CFRelease(v22), (v23 = CFNumberCreate(v10, kCFNumberSInt8Type, (v5 + 27))) != 0))
  {
    v24 = v23;
    CFDictionarySetValue(v12, @"ASEL_CAPS", v23);
    CFRelease(v24);
    CFDictionarySetValue(a3, @"HT_CAPS_IE", v12);
    v3 = 0;
  }

  else
  {
    v3 = 4294963395;
  }

  CFRelease(v12);
  return v3;
}

uint64_t Apple80211ParseHT_IE(uint64_t a1, int a2, __CFDictionary *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (!a1 || !a3)
  {
    return v3;
  }

  if (a2 < 3)
  {
    return 0;
  }

  v5 = a1;
  while (*v5 != 61)
  {
    v7 = *(v5 + 1);
    v6 = a2 - 2;
LABEL_13:
    a2 = v6 - v7;
    v5 += v7 + 2;
    if ((v6 - v7) <= 2)
    {
      return 0;
    }
  }

  v6 = a2 - 2;
  v7 = *(v5 + 1);
  if (v7 < 0x16 || v6 < v7)
  {
    goto LABEL_13;
  }

  v10 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return 4294963395;
  }

  v12 = Mutable;
  v38 = -86;
  valuePtr = *(v5 + 2);
  v13 = CFNumberCreate(v10, kCFNumberSInt16Type, &valuePtr);
  if (v13 && (v14 = v13, CFDictionarySetValue(v12, @"HT_PRIMARY_CHAN", v13), CFRelease(v14), v38 = *(v5 + 3) & 3, (v15 = CFNumberCreate(v10, kCFNumberSInt8Type, &v38)) != 0) && ((v16 = v15, CFDictionarySetValue(v12, @"HT_SECONDARY_CHAN_OFFSET", v15), CFRelease(v16), v17 = *MEMORY[0x277CBED28], v18 = *MEMORY[0x277CBED10], (*(v5 + 3) & 4) != 0) ? (v19 = *MEMORY[0x277CBED28]) : (v19 = *MEMORY[0x277CBED10]), (CFDictionarySetValue(v12, @"HT_STA_CHAN_WIDTH", v19), (*(v5 + 3) & 8) != 0) ? (v20 = v17) : (v20 = v18), (CFDictionarySetValue(v12, @"HT_RIFS_MODE", v20), (*(v5 + 3) & 0x10) != 0) ? (v21 = v17) : (v21 = v18), (CFDictionarySetValue(v12, @"HT_PSMP_STAS_ONLY", v21), v38 = *(v5 + 3) >> 5, (v22 = CFNumberCreate(v10, kCFNumberSInt8Type, &v38)) != 0) && (v23 = v22, CFDictionarySetValue(v12, @"HT_SERVICE_INT", v22), CFRelease(v23), v38 = *(v5 + 4) & 3, (v24 = CFNumberCreate(v10, kCFNumberSInt8Type, &v38)) != 0) && ((v25 = v24, CFDictionarySetValue(v12, @"HT_OP_MODE", v24), CFRelease(v25), (*(v5 + 4) & 4) != 0) ? (v26 = v17) : (v26 = v18), (CFDictionarySetValue(v12, @"HT_NON_GF_STAS_PRESENT", v26), (*(v5 + 4) & 8) != 0) ? (v27 = v17) : (v27 = v18), (CFDictionarySetValue(v12, @"HT_TX_BURST_LIMIT", v27), (*(v5 + 4) & 0x10) != 0) ? (v28 = v17) : (v28 = v18), (CFDictionarySetValue(v12, @"HT_OBSS_NON_HT_STAS_PRESENT", v28), (*(v5 + 6) & 0x40) != 0) ? (v29 = v17) : (v29 = v18), (CFDictionarySetValue(v12, @"HT_DUAL_BEACON", v29), *(v5 + 6) >= 0) ? (v30 = v18) : (v30 = v17), (CFDictionarySetValue(v12, @"HT_DUAL_CTS_PROT", v30), (*(v5 + 7) & 1) != 0) ? (v31 = v17) : (v31 = v18), (CFDictionarySetValue(v12, @"HT_SECONDARY_BEACON", v31), (*(v5 + 7) & 2) != 0) ? (v32 = v17) : (v32 = v18), (CFDictionarySetValue(v12, @"HT_LSIG_TXOP_PROT_FULL", v32), (*(v5 + 7) & 4) != 0) ? (v33 = v17) : (v33 = v18), (CFDictionarySetValue(v12, @"HT_PCO_ACTIVE", v33), (*(v5 + 7) & 8) != 0) ? (v34 = v17) : (v34 = v18), CFDictionarySetValue(v12, @"HT_PCO_PHASE", v34), (v35 = CFDataCreate(v10, (v5 + 8), 16)) != 0)))
  {
    v36 = v35;
    CFDictionarySetValue(v12, @"HT_BASIC_MCS_SET", v35);
    CFRelease(v36);
    CFDictionarySetValue(a3, @"HT_IE", v12);
    v3 = 0;
  }

  else
  {
    v3 = 4294963395;
  }

  CFRelease(v12);
  return v3;
}

uint64_t Apple80211ParseVHT_Caps(unsigned __int8 *a1, int a2, __CFDictionary *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (!a1 || !a3)
  {
    return v3;
  }

  if (a2 < 3)
  {
    return 0;
  }

  v5 = a1;
  while (*v5 != 191)
  {
    v7 = v5[1];
    v6 = a2 - 2;
LABEL_13:
    a2 = v6 - v7;
    v5 += v7 + 2;
    if ((v6 - v7) <= 2)
    {
      return 0;
    }
  }

  v6 = a2 - 2;
  v7 = v5[1];
  if (v7 < 0xC || v6 < v7)
  {
    goto LABEL_13;
  }

  v10 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return 4294963395;
  }

  v12 = Mutable;
  valuePtr = *(v5 + 2);
  v13 = CFNumberCreate(v10, kCFNumberSInt32Type, &valuePtr);
  if (v13 && (v14 = v13, CFDictionarySetValue(v12, @"VHT_CAPS", v13), CFRelease(v14), (v15 = CFDataCreate(v10, v5 + 6, 8)) != 0))
  {
    v16 = v15;
    CFDictionarySetValue(v12, @"VHT_SUPPORTED_MCS_SET", v15);
    CFRelease(v16);
    CFDictionarySetValue(a3, @"VHT_CAPS_IE", v12);
    v3 = 0;
  }

  else
  {
    v3 = 4294963395;
  }

  CFRelease(v12);
  return v3;
}

uint64_t Apple80211ParseVHT_IE(unsigned __int8 *a1, int a2, __CFDictionary *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (!a1 || !a3)
  {
    return v3;
  }

  if (a2 < 3)
  {
    return 0;
  }

  v5 = a1;
  while (*v5 != 192)
  {
    v7 = v5[1];
    v6 = a2 - 2;
LABEL_13:
    a2 = v6 - v7;
    v5 += v7 + 2;
    if ((v6 - v7) <= 2)
    {
      return 0;
    }
  }

  v6 = a2 - 2;
  v7 = v5[1];
  if (v7 < 5 || v6 < v7)
  {
    goto LABEL_13;
  }

  v10 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return 4294963395;
  }

  v12 = Mutable;
  v21 = -21846;
  valuePtr = v5[2];
  v13 = CFNumberCreate(v10, kCFNumberSInt8Type, &valuePtr);
  if (v13 && (v14 = v13, CFDictionarySetValue(v12, @"VHT_CHAN_WIDTH", v13), CFRelease(v14), valuePtr = v5[3], (v15 = CFNumberCreate(v10, kCFNumberSInt8Type, &valuePtr)) != 0) && (v16 = v15, CFDictionarySetValue(v12, @"VHT_CENTER_CHAN_SEGMENT0", v15), CFRelease(v16), valuePtr = v5[4], (v17 = CFNumberCreate(v10, kCFNumberSInt8Type, &valuePtr)) != 0) && (v18 = v17, CFDictionarySetValue(v12, @"VHT_CENTER_CHAN_SEGMENT1", v17), CFRelease(v18), v21 = *(v5 + 5), (v19 = CFNumberCreate(v10, kCFNumberSInt16Type, &v21)) != 0))
  {
    v20 = v19;
    CFDictionarySetValue(v12, @"VHT_BASIC_MCS_SET", v19);
    CFRelease(v20);
    CFDictionarySetValue(a3, @"VHT_IE", v12);
    v3 = 0;
  }

  else
  {
    v3 = 4294963395;
  }

  CFRelease(v12);
  return v3;
}

uint64_t Apple80211ParseInterworkingIE(_BYTE *a1, unsigned int a2, __CFDictionary *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (a1 && a3)
  {
    if (!a2)
    {
      return 0;
    }

    v5 = a1;
    while (*v5 != 107 || !v5[1])
    {
      a2 = a2 - v5[1] - 2;
      if (a2 >= 1)
      {
        v6 = &v5[v5[1]];
        v5 = v6 + 2;
        if (v6[3] + 2 <= a2)
        {
          continue;
        }
      }

      return 0;
    }

    v7 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      return 4294963395;
    }

    v9 = Mutable;
    valuePtr = v5[2] & 0xF;
    v10 = CFNumberCreate(v7, kCFNumberSInt8Type, &valuePtr);
    if (!v10)
    {
      v3 = 4294963395;
      goto LABEL_40;
    }

    v11 = v10;
    CFDictionarySetValue(v9, @"INTERWORKING_ACCESS_NETWORK_TYPE", v10);
    CFRelease(v11);
    v12 = *MEMORY[0x277CBED28];
    v13 = *MEMORY[0x277CBED10];
    if ((v5[2] & 0x10) != 0)
    {
      v14 = *MEMORY[0x277CBED28];
    }

    else
    {
      v14 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v9, @"INTERWORKING_ACCESS_INTERNET", v14);
    if ((v5[2] & 0x20) != 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = v13;
    }

    CFDictionarySetValue(v9, @"INTERWORKING_ACCESS_ASRA", v15);
    if ((v5[2] & 0x40) != 0)
    {
      v16 = v12;
    }

    else
    {
      v16 = v13;
    }

    CFDictionarySetValue(v9, @"INTERWORKING_ACCESS_ESR", v16);
    if (v5[2] >= 0)
    {
      v17 = v13;
    }

    else
    {
      v17 = v12;
    }

    CFDictionarySetValue(v9, @"INTERWORKING_ACCESS_UESA", v17);
    v18 = v5[1];
    if (v18 == 9 || v18 == 3)
    {
      v19 = CFNumberCreate(v7, kCFNumberSInt8Type, v5 + 3);
      if (!v19 || (v20 = v19, CFDictionaryAddValue(v9, @"INTERWORKING_ACCESS_VENTURE_GRP", v19), CFRelease(v20), (v21 = CFNumberCreate(v7, kCFNumberSInt8Type, v5 + 4)) == 0))
      {
LABEL_37:
        v3 = 0;
LABEL_40:
        CFRelease(v9);
        return v3;
      }

      v22 = v21;
      CFDictionaryAddValue(v9, @"INTERWORKING_ACCESS_VENTURE_TYPE", v21);
      CFRelease(v22);
      v18 = v5[1];
      v23 = 5;
    }

    else
    {
      v23 = 3;
    }

    if (v18 != 9 && v18 != 7)
    {
      goto LABEL_34;
    }

    v24 = CFStringCreateWithFormat(v7, 0, @"%02x:%02x:%02x:%02x:%02x:%02x", v5[v23], v5[v23 + 1], v5[v23 + 2], v5[v23 + 3], v5[v23 + 4], v5[v23 + 5]);
    if (v24)
    {
      v25 = v24;
      CFDictionarySetValue(v9, @"INTERWORKING_ACCESS_HESSID", v24);
      CFRelease(v25);
LABEL_34:
      CFDictionarySetValue(a3, @"11U_INTERWORKING_IE", v9);
      CFRelease(v9);
      return 0;
    }

    goto LABEL_37;
  }

  return v3;
}

uint64_t Apple80211ParseHS20IE(unsigned __int8 *a1, unsigned int a2, __CFDictionary *a3)
{
  v3 = 4294963396;
  if (a1 && a3)
  {
    if (a2 >= 2)
    {
      v5 = a1;
      v6 = a2;
      v7 = *MEMORY[0x277CBECE8];
      do
      {
        v8 = v5[1];
        v9 = v6 - (v8 + 2);
        if (v6 < v8 + 2)
        {
          break;
        }

        if (v6 >= 7 && v8 >= 5 && *v5 == 221 && v5[2] == 80 && v5[3] == 111 && v5[4] == 154 && v5[5] == 16)
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (!Mutable)
          {
            return 4294963395;
          }

          v12 = Mutable;
          v13 = CFNumberCreate(v7, kCFNumberSInt8Type, v5 + 6);
          if (v13)
          {
            v14 = v13;
            CFDictionarySetValue(v12, @"HOTSPOT20_CONFIGURATION", v13);
            CFRelease(v14);
            CFDictionarySetValue(a3, @"HOTSPOT20_IE", v12);
            v3 = 0;
          }

          else
          {
            v3 = 4294963395;
          }

          CFRelease(v12);
          return v3;
        }

        v5 += v8 + 2;
        v6 -= v8 + 2;
      }

      while (v9 >= 2);
    }

    return 0;
  }

  return v3;
}

uint64_t Apple80211ParseQBSSLoadIE(_BYTE *a1, int a2, __CFDictionary *a3)
{
  v3 = 4294963396;
  if (a1 && a3)
  {
    if (!a2)
    {
      return 0;
    }

    if (a2 > 2048)
    {
      return v3;
    }

    if (a2 < 3)
    {
      return 0;
    }

    v5 = a1;
    v6 = *MEMORY[0x277CBECE8];
    while (1)
    {
      v7 = a2 - 2;
      v8 = v5[1];
      a2 = a2 - 2 - v8;
      if (v7 < v8)
      {
        return 4294963396;
      }

      if (v8 >= 5 && *v5 == 11)
      {
        break;
      }

      if (a2 > 0)
      {
        v5 += v5[1] + 2;
      }

      if (a2 <= 2)
      {
        return 0;
      }
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v11 = Mutable;
      v12 = CFNumberCreate(v6, kCFNumberSInt16Type, v5 + 2);
      if (v12 && (v13 = v12, CFDictionarySetValue(v11, @"QBSS_STA_COUNT", v12), CFRelease(v13), (v14 = CFNumberCreate(v6, kCFNumberSInt8Type, v5 + 4)) != 0) && (v15 = v14, CFDictionarySetValue(v11, @"QBSS_CHAN_UTIL", v14), CFRelease(v15), (v16 = CFNumberCreate(v6, kCFNumberSInt16Type, v5 + 5)) != 0))
      {
        v17 = v16;
        CFDictionarySetValue(v11, @"QBSS_AAC", v16);
        CFRelease(v17);
        CFDictionarySetValue(a3, @"QBSS_LOAD_IE", v11);
        v3 = 0;
      }

      else
      {
        v3 = 4294963395;
      }

      CFRelease(v11);
    }

    else
    {
      return 4294963395;
    }
  }

  return v3;
}

uint64_t Apple80211ParseMobilityDomainIE(uint64_t a1, int a2, __CFDictionary *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  result = 4294963396;
  if (!a1 || !a3)
  {
    return result;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > 2048)
  {
    return result;
  }

  if (a2 < 3)
  {
    return 0;
  }

  while (*a1 != 54)
  {
    v7 = *(a1 + 1);
    v6 = a2 - 2;
LABEL_14:
    a2 = v6 - v7;
    a1 += v7 + 2;
    if ((v6 - v7) <= 2)
    {
      return 0;
    }
  }

  v6 = a2 - 2;
  v7 = *(a1 + 1);
  if (v7 < 3 || v6 < v7)
  {
    goto LABEL_14;
  }

  v9 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  valuePtr = *(a1 + 2);
  v11 = CFNumberCreate(v9, kCFNumberSInt16Type, &valuePtr);
  CFDictionarySetValue(Mutable, @"MOBILITY_DOMAIN_IDENTIFIER", v11);
  CFRelease(v11);
  v12 = *MEMORY[0x277CBED28];
  v13 = *MEMORY[0x277CBED10];
  if (*(a1 + 4))
  {
    v14 = *MEMORY[0x277CBED28];
  }

  else
  {
    v14 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"MOBILITY_DOMAIN_FT_OVER_DS", v14);
  if ((*(a1 + 4) & 2) != 0)
  {
    v15 = v12;
  }

  else
  {
    v15 = v13;
  }

  CFDictionarySetValue(Mutable, @"MOBILITY_DOMAIN_RESOURCE_REQ_PROTO", v15);
  CFDictionarySetValue(a3, @"MOBILITY_DOMAIN_IE", Mutable);
  CFRelease(Mutable);
  return 0;
}

uint64_t Apple80211ParseExtCapsIE(uint64_t a1, int a2, __CFDictionary *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (a1 && a3)
  {
    v5 = a2;
    if (a2)
    {
      if (a2 <= 2048)
      {
        v6 = a1;
        v3 = 0;
        v7 = 0;
        v8 = 0;
        v9 = *MEMORY[0x277CBECE8];
        while (v5 >= 3)
        {
          v10 = *(v6 + 1);
          if (v5 - 2 < v10)
          {
            return 4294963396;
          }

          if (v10 >= 4 && *v6 == 127)
          {
            Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (!Mutable)
            {
              return 4294963395;
            }

            v7 = Mutable;
            valuePtr = 1;
            v8 = CFNumberCreate(v9, kCFNumberSInt8Type, &valuePtr);
            if (v8)
            {
              if ((*(v6 + 4) & 8) != 0)
              {
                CFDictionarySetValue(v7, @"BSS_TRANS_MGMT", v8);
              }

              v12 = *(v6 + 1);
              if (v12 >= 0xB)
              {
                if ((*(v6 + 13) & 0x10) != 0)
                {
                  CFDictionarySetValue(v7, @"BEACON_PROTECTION", v8);
                  v12 = *(v6 + 1);
                }

                if (v12 >= 0xC && (*(v6 + 13) & 0x100) != 0)
                {
                  CFDictionarySetValue(v7, @"SAE_PK_PASSWD_USED", v8);
                }
              }

              if (CFDictionaryGetCount(v7))
              {
                CFDictionarySetValue(a3, @"EXT_CAPS", v7);
              }
            }

            else
            {
              v3 = 4294963395;
            }

            break;
          }

          if ((v5 - 2 - v10) > 0)
          {
            v6 += *(v6 + 1) + 2;
          }

          v5 = v5 - 2 - v10;
        }

        if (v7)
        {
          CFRelease(v7);
        }

        if (v8)
        {
          CFRelease(v8);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t Apple80211ParseCyclopsIE(unsigned __int8 *a1, int a2, __CFDictionary *a3)
{
  result = 4294963396;
  if (a1 && a3)
  {
    if (!a2)
    {
      return 0;
    }

    if (a2 > 2048)
    {
      return result;
    }

    if (a2 < 3)
    {
      return 0;
    }

    v6 = *MEMORY[0x277CBED28];
    v7 = *MEMORY[0x277CBED10];
    while (1)
    {
      v8 = a2 - 2;
      v9 = a1[1];
      a2 = a2 - 2 - v9;
      if (v8 < v9)
      {
        return 4294963396;
      }

      if (v9 >= 4 && *a1 == 221)
      {
        v10 = *(a1 + 1) == 0x4000 && a1[4] == 150;
        if (v10 && a1[5] == 11)
        {
          break;
        }
      }

      if (a2 > 0)
      {
        a1 += a1[1] + 2;
      }

      if (a2 <= 2)
      {
        return 0;
      }
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v12 = Mutable;
      if ((a1[6] & 0x40) != 0)
      {
        v13 = v6;
      }

      else
      {
        v13 = v7;
      }

      CFDictionarySetValue(Mutable, @"FT_STATE", v13);
      if ((a1[6] & 0x20) != 0)
      {
        v14 = v6;
      }

      else
      {
        v14 = v7;
      }

      CFDictionarySetValue(v12, @"FASTLANE_STATE", v14);
      CFDictionarySetValue(a3, @"FAST_ENTERPRISE_NETWORK", v12);
      CFRelease(v12);
      return 0;
    }

    return 4294963395;
  }

  return result;
}

uint64_t Apple80211ParseHE_IEs(const UInt8 *a1, int a2, __CFDictionary *a3)
{
  result = 4294963396;
  if (a1 && a3)
  {
    if (a2 < 3)
    {
      return 0;
    }

    v6 = *MEMORY[0x277CBECE8];
    while (1)
    {
      v7 = a2 - 2;
      if (*a1 != 255)
      {
        goto LABEL_8;
      }

      v9 = a1[1];
      if (v7 >= v9 && a1[2] == 35)
      {
        Mutable = CFDataCreateMutable(v6, 0);
        if (!Mutable)
        {
          return 4294963395;
        }

        v11 = Mutable;
        CFDataAppendBytes(Mutable, a1, a1[1] + 2);
        CFDictionarySetValue(a3, @"HE_CAP", v11);
        CFRelease(v11);
        if (*a1 != 255)
        {
          goto LABEL_8;
        }

        v9 = a1[1];
      }

      if (v7 >= v9 && a1[2] == 36)
      {
        v12 = CFDataCreateMutable(v6, 0);
        if (!v12)
        {
          return 4294963395;
        }

        v13 = v12;
        CFDataAppendBytes(v12, a1, a1[1] + 2);
        CFDictionarySetValue(a3, @"HE_OP", v13);
        CFRelease(v13);
        if (*a1 != 255)
        {
          goto LABEL_8;
        }

        v9 = a1[1];
      }

      if (v7 >= v9 && a1[2] == 38)
      {
        v14 = CFDataCreateMutable(v6, 0);
        if (!v14)
        {
          return 4294963395;
        }

        v15 = v14;
        CFDataAppendBytes(v14, a1, a1[1] + 2);
        CFDictionarySetValue(a3, @"HE_MU_EDCA", v15);
        CFRelease(v15);
        if (*a1 != 255)
        {
          goto LABEL_8;
        }

        v9 = a1[1];
      }

      if (v7 >= v9 && a1[2] == 47)
      {
        v16 = CFDataCreateMutable(v6, 0);
        if (!v16)
        {
          return 4294963395;
        }

        v17 = v16;
        CFDataAppendBytes(v16, a1, a1[1] + 2);
        CFDictionarySetValue(a3, @"HE_QBSS_LOAD", v17);
        CFRelease(v17);
      }

LABEL_8:
      v8 = a1[1];
      a2 = v7 - v8;
      a1 += v8 + 2;
      if ((v7 - v8) <= 2)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t Apple80211ParseRNRIE(unsigned __int8 *a1, int a2, __CFDictionary *a3)
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (a1 && a3)
  {
    if (a2 >= 2)
    {
      v5 = a1;
      while (1)
      {
        v6 = v5[1];
        v7 = a2 >= (v6 + 2);
        a2 -= v6 + 2;
        if (!v7)
        {
          return 0;
        }

        if (v6 >= 4 && *v5 == 201)
        {
          break;
        }

        v5 += v6 + 2;
        if (a2 <= 1)
        {
          return 0;
        }
      }

      v9 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!Mutable)
      {
        return 4294963395;
      }

      v11 = Mutable;
      v59 = a3;
      v61 = CFArrayCreateMutable(v9, 0, MEMORY[0x277CBF128]);
      if (!v61)
      {
        v3 = 4294963395;
        goto LABEL_95;
      }

      v60 = v11;
      v12 = v5[1];
      if (v12 < 4)
      {
LABEL_88:
        v11 = v60;
        CFDictionarySetValue(v60, @"NEIGHBOR_AP_INFO_LIST", v61);
        CFRelease(v61);
        CFDictionarySetValue(v59, @"RNR_IE", v60);
        v3 = 0;
LABEL_95:
        CFRelease(v11);
        return v3;
      }

      v13 = v5 + 2;
      v63 = *MEMORY[0x277CBED28];
      v14 = *MEMORY[0x277CBED10];
LABEL_16:
      v15 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v15)
      {
        v3 = 4294963395;
        v11 = v60;
        goto LABEL_94;
      }

      v16 = v15;
      v17 = *v13;
      valuePtr = *v13 & 2;
      v18 = CFNumberCreate(v9, kCFNumberSInt8Type, &valuePtr);
      if (v18)
      {
        v19 = v18;
        CFDictionarySetValue(v16, @"TYPE", v18);
        CFRelease(v19);
        if ((v17 & 4) != 0)
        {
          v20 = v63;
        }

        else
        {
          v20 = v14;
        }

        CFDictionarySetValue(v16, @"FILTERED_AP", v20);
        if ((v17 & 8) != 0)
        {
          v21 = v63;
        }

        else
        {
          v21 = v14;
        }

        theDict = v16;
        CFDictionarySetValue(v16, @"COLOCATED_AP", v21);
        v22 = HIBYTE(v17);
        v64 = v17 >> 4;
        v23 = HIBYTE(v17) * v64 + HIBYTE(v17);
        if (v23 > v12)
        {
          v3 = 4294963392;
          goto LABEL_100;
        }

        v71 = v13[2];
        v24 = CFNumberCreate(v9, kCFNumberSInt8Type, &v71);
        if (!v24)
        {
          v3 = 4294963395;
          v11 = v60;
          goto LABEL_93;
        }

        v25 = v24;
        CFDictionarySetValue(v16, @"OPERATING_CLASS", v24);
        CFRelease(v25);
        v70 = v13[3];
        v26 = CFNumberCreate(v9, kCFNumberSInt8Type, &v70);
        if (v26)
        {
          v27 = v26;
          CFDictionarySetValue(v16, @"CHANNEL", v26);
          CFRelease(v27);
          v69 = _channelFlagsFromIEEEOperatingClass(v13[2]);
          v28 = CFNumberCreate(v9, kCFNumberSInt32Type, &v69);
          if (v28)
          {
            v29 = v28;
            CFDictionarySetValue(v16, @"CHANNEL_FLAGS", v28);
            CFRelease(v29);
            v12 -= 4;
            if (v12 < v23)
            {
              theArray = 0;
              v3 = 4294963392;
LABEL_91:
              v11 = v60;
              v16 = theDict;
              if (theArray)
              {
                CFRelease(theArray);
              }

              goto LABEL_93;
            }

            v30 = CFArrayCreateMutable(v9, 0, MEMORY[0x277CBF128]);
            if (v30)
            {
              v31 = 0;
              v13 += 4;
              v34 = (v17 & 0xFB00) == 0x200 || (v17 & 0xFE00) == 2048 || HIBYTE(v17) == 12;
              v65 = v17;
              v66 = v34;
              theArray = v30;
              while (1)
              {
                v35 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                if (!v35)
                {
                  goto LABEL_90;
                }

                v36 = v35;
                v37 = v13;
                if (v17 < 0x100u)
                {
                  goto LABEL_46;
                }

                LOBYTE(v68) = *v13;
                v38 = CFNumberCreate(v9, kCFNumberSInt8Type, &v68);
                if (!v38)
                {
                  goto LABEL_89;
                }

                v39 = v38;
                CFDictionarySetValue(v36, @"TBTT_OFFSET", v38);
                CFRelease(v39);
                v37 = (v13 + 1);
                if (v17 <= 0xCFFu)
                {
LABEL_46:
                  if (v22 > 0xC || ((1 << v22) & 0x1B80) == 0)
                  {
                    goto LABEL_52;
                  }

                  v40 = 0;
                }

                else
                {
                  v40 = 1;
                }

                v41 = ether_ntoa(v37);
                if (!v41 || (v42 = CFStringCreateWithCString(v9, v41, 0x8000100u)) == 0)
                {
LABEL_89:
                  CFRelease(v36);
                  goto LABEL_90;
                }

                v43 = v42;
                CFDictionarySetValue(v36, @"BSSID", v42);
                CFRelease(v43);
                ++v37;
                if (v40)
                {
                  v44 = 1;
LABEL_54:
                  v68 = *v37->octet;
                  v45 = CFNumberCreate(v9, kCFNumberSInt32Type, &v68);
                  if (!v45)
                  {
                    goto LABEL_89;
                  }

                  v46 = v45;
                  CFDictionarySetValue(v36, @"SHORT_SSID", v45);
                  CFRelease(v46);
                  v37 = (v37 + 4);
                  goto LABEL_56;
                }

LABEL_52:
                v44 = 0;
                if (v22 <= 0xC && ((1 << v22) & 0x1860) != 0)
                {
                  goto LABEL_54;
                }

LABEL_56:
                if ((v66 | v44) == 1)
                {
                  LOBYTE(v68) = v37->octet[0];
                  v47 = CFNumberCreate(v9, kCFNumberSInt8Type, &v68);
                  if (!v47)
                  {
                    goto LABEL_89;
                  }

                  v48 = v47;
                  CFDictionarySetValue(v36, @"BSS_PARAMS", v47);
                  CFRelease(v48);
                  if (v68)
                  {
                    v49 = v63;
                  }

                  else
                  {
                    v49 = v14;
                  }

                  CFDictionarySetValue(v36, @"OCT_RECOMMENDED", v49);
                  if ((v68 & 2) != 0)
                  {
                    v50 = v63;
                  }

                  else
                  {
                    v50 = v14;
                  }

                  CFDictionarySetValue(v36, @"SAME_SSID", v50);
                  if ((v68 & 4) != 0)
                  {
                    v51 = v63;
                  }

                  else
                  {
                    v51 = v14;
                  }

                  CFDictionarySetValue(v36, @"MULTIPLE_BSSID", v51);
                  if ((v68 & 8) != 0)
                  {
                    v52 = v63;
                  }

                  else
                  {
                    v52 = v14;
                  }

                  CFDictionarySetValue(v36, @"TRANSMITTED_BSSID", v52);
                  if ((v68 & 0x10) != 0)
                  {
                    v53 = v63;
                  }

                  else
                  {
                    v53 = v14;
                  }

                  CFDictionarySetValue(v36, @"MEMBER_OF_ESS_WITH_2GHZ_OR_5GHZ_COLOCATED_AP", v53);
                  if ((v68 & 0x20) != 0)
                  {
                    v54 = v63;
                  }

                  else
                  {
                    v54 = v14;
                  }

                  CFDictionarySetValue(v36, @"UPR_ACTIVE", v54);
                  if ((v68 & 0x40) != 0)
                  {
                    v55 = v63;
                  }

                  else
                  {
                    v55 = v14;
                  }

                  CFDictionarySetValue(v36, @"COLOCATED_AP", v55);
                  v37 = (v37 + 1);
                }

                v56 = v44 ^ 1;
                if (v22 == 9)
                {
                  v56 = 0;
                }

                v17 = v65;
                if ((v56 & 1) == 0)
                {
                  LOBYTE(v68) = v37->octet[0];
                  v57 = CFNumberCreate(v9, kCFNumberSInt8Type, &v68);
                  if (!v57)
                  {
                    goto LABEL_89;
                  }

                  v58 = v57;
                  CFDictionarySetValue(v36, @"20MHZ_PSD", v57);
                  CFRelease(v58);
                }

                CFArrayAppendValue(theArray, v36);
                CFRelease(v36);
                v13 += v22;
                v12 -= v22;
                v7 = v31++ >= v64;
                if (v7)
                {
                  CFDictionarySetValue(theDict, @"TBTT_INFO_SET", theArray);
                  CFRelease(theArray);
                  CFArrayAppendValue(v61, theDict);
                  CFRelease(theDict);
                  if (v12 > 3)
                  {
                    goto LABEL_16;
                  }

                  goto LABEL_88;
                }
              }
            }
          }

          theArray = 0;
LABEL_90:
          v3 = 4294963395;
          goto LABEL_91;
        }
      }

      v3 = 4294963395;
LABEL_100:
      v11 = v60;
LABEL_93:
      CFRelease(v16);
LABEL_94:
      CFRelease(v61);
      goto LABEL_95;
    }

    return 0;
  }

  return v3;
}

uint64_t Apple80211ParseMBOOCEIE(unsigned __int8 *a1, unsigned int a2, __CFDictionary *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (!a1 || !a3)
  {
    return v3;
  }

  if (a2 < 2)
  {
    return 0;
  }

  v6 = a1;
  while (1)
  {
    v3 = 0;
    if (a2 < 6)
    {
      return v3;
    }

    v7 = v6[1];
    v8 = a2 >= v7 + 2;
    a2 -= v7 + 2;
    if (!v8)
    {
      return v3;
    }

    if (v7 >= 4 && *v6 == 221 && v6[2] == 80 && v6[3] == 111 && v6[4] == 154 && v6[5] == 22)
    {
      break;
    }

    v3 = 0;
    v6 += v7 + 2;
    if (a2 <= 1)
    {
      return v3;
    }
  }

  v9 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return 4294963395;
  }

  v11 = Mutable;
  v12 = v6[1];
  if (v12 < 6)
  {
    v13 = 0;
    v14 = 0;
LABEL_84:
    CFDictionarySetValue(a3, @"MBO_OCE_IE", v11);
    v27 = 0;
    v20 = 0;
    v3 = 0;
    goto LABEL_85;
  }

  v13 = 0;
  v14 = 0;
  v15 = v12 - 4;
  v16 = v6 + 6;
  v34 = *MEMORY[0x277CBED10];
  v35 = *MEMORY[0x277CBED28];
  v32 = Mutable;
  while (1)
  {
    v17 = v16[1];
    v18 = v17 + 2;
    v8 = v15 >= (v17 + 2);
    v15 -= v17 + 2;
    if (!v8)
    {
LABEL_96:
      v27 = 0;
      v20 = 0;
      v3 = 4294963392;
      goto LABEL_85;
    }

    v19 = *v16;
    if (v19 > 4)
    {
      if (*v16 > 6u)
      {
        if (v19 == 7)
        {
          if (v17 != 1)
          {
            goto LABEL_96;
          }

          LOBYTE(v39) = v16[2];
          v20 = CFNumberCreate(v9, kCFNumberSInt8Type, &v39);
          if (!v20)
          {
LABEL_97:
            v27 = 0;
LABEL_98:
            v3 = 4294963395;
            goto LABEL_85;
          }

          v28 = v11;
          v29 = @"TRANS_REJECT_REASON_CODE";
        }

        else
        {
          if (v19 != 8)
          {
            goto LABEL_77;
          }

          if (v17 != 2)
          {
            goto LABEL_96;
          }

          LOWORD(v39) = *(v16 + 1);
          v20 = CFNumberCreate(v9, kCFNumberSInt16Type, &v39);
          if (!v20)
          {
            goto LABEL_97;
          }

          v28 = v11;
          v29 = @"ASSOC_RETRY_DELAY";
        }
      }

      else if (v19 == 5)
      {
        if (v17 != 1)
        {
          goto LABEL_96;
        }

        LOBYTE(v39) = v16[2];
        v20 = CFNumberCreate(v9, kCFNumberSInt8Type, &v39);
        if (!v20)
        {
          goto LABEL_97;
        }

        v28 = v11;
        v29 = @"CELL_CONN_PREF";
      }

      else
      {
        if (v19 != 6)
        {
          goto LABEL_77;
        }

        if (v17 != 1)
        {
          goto LABEL_96;
        }

        LOBYTE(v39) = v16[2];
        v20 = CFNumberCreate(v9, kCFNumberSInt8Type, &v39);
        if (!v20)
        {
          goto LABEL_97;
        }

        v28 = v11;
        v29 = @"TRANS_REASON_CODE";
      }

LABEL_75:
      CFDictionarySetValue(v28, v29, v20);
      v31 = v20;
      goto LABEL_76;
    }

    if (*v16 > 2u)
    {
      if (v19 == 3)
      {
        if (v17 != 1)
        {
          goto LABEL_96;
        }

        LOBYTE(v39) = v16[2];
        v20 = CFNumberCreate(v9, kCFNumberSInt8Type, &v39);
        if (!v20)
        {
          goto LABEL_97;
        }

        v28 = v11;
        v29 = @"CELL_DATA_CONNECTIVITY";
      }

      else
      {
        if (v19 != 4)
        {
          goto LABEL_77;
        }

        if (v17 != 1)
        {
          goto LABEL_96;
        }

        LOBYTE(v39) = v16[2];
        v20 = CFNumberCreate(v9, kCFNumberSInt8Type, &v39);
        if (!v20)
        {
          goto LABEL_97;
        }

        v28 = v11;
        v29 = @"ASSOC_DISALLOWED_REASON_CODE";
      }

      goto LABEL_75;
    }

    if (v19 == 1)
    {
      if (v17 != 1)
      {
        goto LABEL_96;
      }

      LOBYTE(v39) = v16[2];
      v20 = CFNumberCreate(v9, kCFNumberSInt8Type, &v39);
      if (!v20)
      {
        goto LABEL_97;
      }

      CFDictionarySetValue(v11, @"AP_CAP", v20);
      CFRelease(v20);
      if ((v39 & 0x40) != 0)
      {
        v30 = v35;
      }

      else
      {
        v30 = v34;
      }

      CFDictionarySetValue(v11, @"AP_CAP_CELL_DATA_AWARE", v30);
      goto LABEL_77;
    }

    if (v19 == 2)
    {
      break;
    }

LABEL_77:
    v16 += v18;
    if (v15 <= 1)
    {
      if (v14)
      {
        CFDictionarySetValue(v11, @"NON_PREF_CHANNEL_REPORT_LIST", v14);
      }

      goto LABEL_84;
    }
  }

  if ((v17 - 1) < 2)
  {
    goto LABEL_96;
  }

  if (!v14 && (v14 = CFArrayCreateMutable(v9, 0, MEMORY[0x277CBF128])) == 0 || (theDict = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150])) == 0)
  {
    v27 = 0;
    v20 = 0;
    goto LABEL_98;
  }

  if (!v17)
  {
    v27 = theDict;
    goto LABEL_80;
  }

  valuePtr = v16[2];
  v20 = CFNumberCreate(v9, kCFNumberSInt8Type, &valuePtr);
  if (!v20)
  {
    v3 = 4294963395;
    goto LABEL_95;
  }

  CFDictionarySetValue(theDict, @"OPERATING_CLASS", v20);
  CFRelease(v20);
  v39 = _channelFlagsFromIEEEOperatingClass(valuePtr);
  v20 = CFNumberCreate(v9, kCFNumberSInt32Type, &v39);
  v33 = v14;
  if (!v20)
  {
    goto LABEL_94;
  }

  CFDictionarySetValue(theDict, @"CHANNEL_FLAGS", v20);
  CFRelease(v20);
  v20 = CFArrayCreateMutable(v9, 0, MEMORY[0x277CBF128]);
  if (!v20)
  {
    goto LABEL_94;
  }

  v21 = (v16 + 3);
  if (v17 >= 4)
  {
    v22 = v17 - 3;
    while (1)
    {
      v13 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v13)
      {
        break;
      }

      v38 = *v21;
      v23 = CFNumberCreate(v9, kCFNumberSInt8Type, &v38);
      if (!v23)
      {
        break;
      }

      v24 = v23;
      CFDictionarySetValue(v13, @"CHANNEL", v23);
      CFRelease(v24);
      v37 = v39;
      v25 = CFNumberCreate(v9, kCFNumberSInt32Type, &v37);
      if (!v25)
      {
        break;
      }

      v26 = v25;
      CFDictionarySetValue(v13, @"CHANNEL_FLAGS", v25);
      CFRelease(v26);
      CFArrayAppendValue(v20, v13);
      CFRelease(v13);
      ++v21;
      if (!--v22)
      {
        goto LABEL_41;
      }
    }

LABEL_94:
    v3 = 4294963395;
    v11 = v32;
    v14 = v33;
LABEL_95:
    v27 = theDict;
    goto LABEL_85;
  }

LABEL_41:
  v27 = theDict;
  CFDictionarySetValue(theDict, @"CHANNEL_LIST", v20);
  CFRelease(v20);
  LOBYTE(v37) = *v21;
  v20 = CFNumberCreate(v9, kCFNumberSInt8Type, &v37);
  if (v20)
  {
    CFDictionarySetValue(theDict, @"PREF", v20);
    CFRelease(v20);
    v38 = v21[1];
    v20 = CFNumberCreate(v9, kCFNumberSInt8Type, &v38);
    v11 = v32;
    v14 = v33;
    if (!v20)
    {
      goto LABEL_98;
    }

    CFDictionarySetValue(theDict, @"REASON_CODE", v20);
    CFRelease(v20);
LABEL_80:
    CFArrayAppendValue(v14, v27);
    v31 = v27;
LABEL_76:
    CFRelease(v31);
    goto LABEL_77;
  }

  v3 = 4294963395;
  v11 = v32;
  v14 = v33;
LABEL_85:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  CFRelease(v11);
  return v3;
}

uint64_t Apple80211ParseWPS_IE(unsigned __int8 *a1, unsigned int a2, __CFDictionary *a3)
{
  v212 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (a1 && a3)
  {
    v5 = a2;
    if (a2 >= 3)
    {
      v6 = a1;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        if (*v6 == 221 && v5 >= 6)
        {
          v9 = v6[1];
          v10 = v9 - 4;
          if (v9 >= 4)
          {
            v11 = v9 + 2;
            if (*(v6 + 2) == 82989056 && v11 <= v5)
            {
              if (v8)
              {
                v13 = malloc_type_realloc(v8, (v10 + v7), 0x331FADA9uLL);
                if (!v13)
                {
                  goto LABEL_223;
                }

                v14 = v13;
                memcpy(&v13[v7], v6 + 6, v10);
                v8 = v14;
                v7 += v10;
              }

              else
              {
                v15 = malloc_type_malloc(v10, 0x100004077774924uLL);
                if (!v15)
                {
                  return 4294963395;
                }

                v8 = v15;
                memcpy(v15, v6 + 6, v10);
                v7 = v10;
              }
            }
          }
        }

        v16 = v6[1];
        v17 = v16 + 2;
        v6 += v16 + 2;
        v18 = v5 - (v16 + 2);
        if (v5 >= v17)
        {
          v5 = v18;
        }

        else
        {
          v5 = 0;
        }

        if (v5 <= 2)
        {
          if (!v8)
          {
            return 0;
          }

          if (v7 < 5)
          {
            goto LABEL_122;
          }

          if (*v8 != 18960)
          {
            goto LABEL_122;
          }

          if (*(v8 + 4) != 16)
          {
            goto LABEL_122;
          }

          v19 = bswap32(v8[1]);
          v20 = v7 - HIWORD(v19) - 4;
          if (v20 < 5)
          {
            goto LABEL_122;
          }

          v21 = (v8 + HIWORD(v19) + 4);
          v22 = bswap32(*v21) >> 16;
          if (v22 != 4155)
          {
            if (v22 == 4164)
            {
              v23 = *MEMORY[0x277CBECE8];
              Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (Mutable)
              {
                v25 = Mutable;
                v3 = 4294963396;
                if (!v21[1] || __rev16(v21[1]) + 4 > v20 || *v21 != 17424)
                {
                  goto LABEL_219;
                }

                v26 = CFNumberCreate(v23, kCFNumberSInt8Type, v21 + 2);
                if (!v26)
                {
                  goto LABEL_224;
                }

                v27 = v26;
                CFDictionarySetValue(v25, @"IE_KEY_WPS_SC_STATE", v26);
                CFRelease(v27);
                v28 = bswap32(v21[1]);
                v29 = v20 - HIWORD(v28) - 4;
                if (v29 < 4)
                {
                  goto LABEL_217;
                }

                v30 = v21 + HIWORD(v28) + 4;
                v31 = *(v30 + 1);
                v32 = __rev16(v31);
                v33 = v32 + 4;
                if (*(v30 + 1) && v33 <= v29 && *v30 == 22288)
                {
                  v35 = v30[4];
                  v34 = (v30 + 4);
                  if (v35)
                  {
                    v36 = MEMORY[0x277CBED28];
                  }

                  else
                  {
                    v36 = MEMORY[0x277CBED10];
                  }

                  CFDictionarySetValue(v25, @"IE_KEY_WPS_AP_SETUP_LOCKED", *v36);
                  v37 = bswap32(*(v34 - 1));
                  v29 = v29 - HIWORD(v37) - 4;
                  if (v29 >= 4)
                  {
                    v30 = v34 + HIWORD(v37);
                    v31 = *(v30 + 1);
                    v32 = __rev16(v31);
                    v33 = v32 + 4;
                    goto LABEL_42;
                  }

LABEL_217:
                  v202 = @"WPS_BEACON_IE";
LABEL_218:
                  CFDictionarySetValue(a3, v202, v25);
                  v3 = 0;
LABEL_219:
                  CFRelease(v25);
LABEL_220:
                  free(v8);
                  return v3;
                }

LABEL_42:
                if (v33 <= v29)
                {
                  if (v32)
                  {
                    if (*v30 == 16656)
                    {
                      v39 = v30[4];
                      v38 = (v30 + 4);
                      if (v39)
                      {
                        v40 = MEMORY[0x277CBED28];
                      }

                      else
                      {
                        v40 = MEMORY[0x277CBED10];
                      }

                      CFDictionarySetValue(v25, @"IE_KEY_WPS_SEL_REG", *v40);
                      v41 = bswap32(*(v38 - 1));
                      v29 = v29 - HIWORD(v41) - 4;
                      if (v29 < 4)
                      {
                        goto LABEL_217;
                      }

                      v30 = v38 + HIWORD(v41);
                      v31 = *(v30 + 1);
                      v32 = __rev16(v31);
                      v33 = v32 + 4;
                    }

                    goto LABEL_50;
                  }

LABEL_211:
                  if (!v31 || __rev16(v31) + 4 > v29 || *v30 != 15376)
                  {
                    goto LABEL_217;
                  }

                  v209 = CFNumberCreate(v23, kCFNumberSInt8Type, v30 + 4);
                  if (v209)
                  {
                    v204 = v209;
                    v205 = @"IE_KEY_WPS_RF_BANDS";
                    goto LABEL_216;
                  }

                  goto LABEL_224;
                }

LABEL_50:
                v42 = v33 <= v29 && v32 >= 2;
                if (v42 && *v30 == 4624)
                {
                  valuePtr = bswap32(*(v30 + 2)) >> 16;
                  v43 = CFNumberCreate(v23, kCFNumberSInt16Type, &valuePtr);
                  if (!v43)
                  {
                    goto LABEL_224;
                  }

                  v44 = v43;
                  CFDictionarySetValue(v25, @"IE_KEY_WPS_DEV_PW_ID", v43);
                  CFRelease(v44);
                  v45 = bswap32(*(v30 + 1));
                  v29 = v29 - HIWORD(v45) - 4;
                  if (v29 < 4)
                  {
                    goto LABEL_217;
                  }

                  v30 += HIWORD(v45) + 4;
                  v31 = *(v30 + 1);
                  v32 = __rev16(v31);
                  v33 = v32 + 4;
                }

                if (v33 <= v29 && v32 >= 2)
                {
                  v46 = *v30;
                  if (v46 == 21264 || v46 == 21249)
                  {
                    valuePtr = bswap32(*(v30 + 2)) >> 16;
                    v47 = CFNumberCreate(v23, kCFNumberSInt16Type, &valuePtr);
                    if (!v47)
                    {
                      goto LABEL_224;
                    }

                    v48 = v47;
                    CFDictionarySetValue(v25, @"IE_KEY_WPS_REG_CFG_METHODS", v47);
                    CFRelease(v48);
                    v49 = bswap32(*(v30 + 1));
                    v29 = v29 - HIWORD(v49) - 4;
                    if (v29 < 4)
                    {
                      goto LABEL_217;
                    }

                    v30 += HIWORD(v49) + 4;
                    v31 = *(v30 + 1);
                    v32 = __rev16(v31);
                    v33 = v32 + 4;
                  }
                }

                if (v33 > v29 || !v32)
                {
                  goto LABEL_211;
                }

                v50 = *v30;
                if (v50 != 15120)
                {
                  if (v32 < 0x10)
                  {
                    goto LABEL_211;
                  }

                  if (v50 == 18192)
                  {
                    v206 = CFDataCreate(v23, v30 + 4, 16);
                    if (v206)
                    {
                      v207 = v206;
                      CFDictionarySetValue(v25, @"IE_KEY_WPS_UUID_E", v206);
                      CFRelease(v207);
                      v208 = bswap32(*(v30 + 1));
                      LODWORD(v29) = v29 - HIWORD(v208) - 4;
                      if (v29 < 4)
                      {
                        goto LABEL_217;
                      }

                      v30 += HIWORD(v208) + 4;
                      v31 = *(v30 + 1);
                      goto LABEL_211;
                    }
                  }

                  else
                  {
                    if (v50 != 6672)
                    {
                      goto LABEL_211;
                    }

                    v203 = CFDataCreate(v23, v30 + 4, 16);
                    if (v203)
                    {
                      v204 = v203;
                      v205 = @"IE_KEY_WPS_ENRL_NONCE";
LABEL_216:
                      CFDictionarySetValue(v25, v205, v204);
                      CFRelease(v204);
                      goto LABEL_217;
                    }
                  }

LABEL_224:
                  v3 = 4294963395;
                  goto LABEL_219;
                }

                v51 = CFNumberCreate(v23, kCFNumberSInt8Type, v30 + 4);
                if (!v51)
                {
                  goto LABEL_224;
                }

                v52 = v51;
                CFDictionarySetValue(v25, @"IE_KEY_WPS_RESP_TYPE", v51);
                CFRelease(v52);
                v53 = bswap32(*(v30 + 1));
                v54 = v29 - HIWORD(v53) - 4;
                if (v54 >= 4)
                {
                  v55 = &v30[HIWORD(v53) + 4];
                  v56 = bswap32(*(v55 + 2)) >> 16;
                  v3 = 4294963396;
                  if (v56 < 0x10 || v56 + 4 > v54 || *v55 != 18192)
                  {
                    goto LABEL_219;
                  }

                  v57 = CFDataCreate(v23, (v55 + 4), 16);
                  if (!v57)
                  {
                    goto LABEL_224;
                  }

                  v58 = v57;
                  CFDictionarySetValue(v25, @"IE_KEY_WPS_UUID_E", v57);
                  CFRelease(v58);
                  v59 = bswap32(*(v55 + 2));
                  v60 = v54 - HIWORD(v59) - 4;
                  if (v60 >= 4)
                  {
                    v61 = v55 + 4 + HIWORD(v59);
                    v62 = bswap32(*(v61 + 2)) >> 16;
                    v3 = 4294963396;
                    if (v62 > 0x40 || v62 + 4 > v60 || *v61 != 8464)
                    {
                      goto LABEL_219;
                    }

                    v63 = CFStringCreateWithBytes(v23, (v61 + 4), v62, 0x8000100u, 0);
                    if (!v63)
                    {
                      goto LABEL_224;
                    }

                    v64 = v63;
                    CFDictionarySetValue(v25, @"IE_KEY_WPS_MANUFACTURER", v63);
                    CFRelease(v64);
                    v65 = bswap32(*(v61 + 2));
                    v66 = v60 - HIWORD(v65) - 4;
                    if (v66 >= 4)
                    {
                      v67 = v61 + 4 + HIWORD(v65);
                      v68 = bswap32(*(v67 + 2)) >> 16;
                      v3 = 4294963396;
                      if (v68 > 0x20 || v68 + 4 > v66 || *v67 != 8976)
                      {
                        goto LABEL_219;
                      }

                      v69 = CFStringCreateWithBytes(v23, (v67 + 4), v68, 0x8000100u, 0);
                      if (!v69)
                      {
                        goto LABEL_224;
                      }

                      v70 = v69;
                      CFDictionarySetValue(v25, @"IE_KEY_WPS_MODEL_NAME", v69);
                      CFRelease(v70);
                      v71 = bswap32(*(v67 + 2));
                      v72 = v66 - HIWORD(v71) - 4;
                      if (v72 >= 4)
                      {
                        v73 = v67 + 4 + HIWORD(v71);
                        v74 = bswap32(*(v73 + 2)) >> 16;
                        v3 = 4294963396;
                        if (v74 > 0x20 || v74 + 4 > v72 || *v73 != 9232)
                        {
                          goto LABEL_219;
                        }

                        v75 = CFStringCreateWithBytes(v23, (v73 + 4), v74, 0x8000100u, 0);
                        if (!v75)
                        {
                          goto LABEL_224;
                        }

                        v76 = v75;
                        CFDictionarySetValue(v25, @"IE_KEY_WPS_MODEL_NUM", v75);
                        CFRelease(v76);
                        v77 = bswap32(*(v73 + 2));
                        v78 = v72 - HIWORD(v77) - 4;
                        if (v78 >= 4)
                        {
                          v79 = v73 + 4 + HIWORD(v77);
                          v80 = bswap32(*(v79 + 2)) >> 16;
                          v3 = 4294963396;
                          if (v80 > 0x20 || v80 + 4 > v78 || *v79 != 16912)
                          {
                            goto LABEL_219;
                          }

                          v81 = CFStringCreateWithBytes(v23, (v79 + 4), v80, 0x8000100u, 0);
                          if (!v81)
                          {
                            goto LABEL_224;
                          }

                          v82 = v81;
                          CFDictionarySetValue(v25, @"IE_KEY_WPS_SERIAL_NUM", v81);
                          CFRelease(v82);
                          v83 = bswap32(*(v79 + 2));
                          v84 = v78 - HIWORD(v83) - 4;
                          if (v84 >= 4)
                          {
                            v85 = v79 + 4 + HIWORD(v83);
                            valuePtr = -21846;
                            v86 = bswap32(*(v85 + 2)) >> 16;
                            v3 = 4294963396;
                            if (v86 < 8 || v86 + 4 > v84 || *v85 != 21520)
                            {
                              goto LABEL_219;
                            }

                            v87 = CFDictionaryCreateMutable(v23, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                            if (!v87)
                            {
                              goto LABEL_224;
                            }

                            v88 = v87;
                            v89 = v85 + 4;
                            valuePtr = bswap32(*(v85 + 4)) >> 16;
                            v90 = CFNumberCreate(v23, kCFNumberSInt16Type, &valuePtr);
                            if (!v90)
                            {
                              goto LABEL_227;
                            }

                            v91 = v90;
                            CFDictionarySetValue(v88, @"WPS_DEV_TYPE_CAT", v90);
                            CFRelease(v91);
                            v92 = CFDataCreate(v23, (v85 + 6), 4);
                            if (!v92)
                            {
                              goto LABEL_227;
                            }

                            v93 = v92;
                            CFDictionarySetValue(v88, @"WPS_DEV_TYPE_OUI", v92);
                            CFRelease(v93);
                            valuePtr = bswap32(*(v85 + 10)) >> 16;
                            v94 = CFNumberCreate(v23, kCFNumberSInt16Type, &valuePtr);
                            if (!v94)
                            {
                              goto LABEL_227;
                            }

                            v95 = v94;
                            CFDictionarySetValue(v88, @"WPS_DEV_TYPE_SUB_CAT", v94);
                            CFRelease(v95);
                            CFDictionarySetValue(v25, @"IE_KEY_WPS_PRIMARY_DEV_TYPE", v88);
                            v96 = bswap32(*(v85 + 2));
                            v97 = v84 - HIWORD(v96) - 4;
                            if (v97 < 4)
                            {
                              goto LABEL_228;
                            }

                            v98 = v89 + HIWORD(v96);
                            v99 = bswap32(*(v98 + 2)) >> 16;
                            v3 = 4294963396;
                            if (v99 > 0x20 || v99 + 4 > v97 || *v98 != 4368)
                            {
                              goto LABEL_120;
                            }

                            v100 = CFStringCreateWithBytes(v23, (v98 + 4), v99, 0x8000100u, 0);
                            if (!v100)
                            {
                              goto LABEL_227;
                            }

                            v101 = v100;
                            CFDictionarySetValue(v25, @"IE_KEY_WPS_DEV_NAME", v100);
                            CFRelease(v101);
                            v102 = bswap32(*(v98 + 2));
                            v103 = v97 - HIWORD(v102) - 4;
                            if (v103 < 4)
                            {
LABEL_228:
                              v3 = 4294963396;
                            }

                            else
                            {
                              v104 = (v98 + 4 + HIWORD(v102));
                              v105 = bswap32(v104[1]) >> 16;
                              v3 = 4294963396;
                              if (v105 >= 2 && v105 + 4 <= v103 && *v104 == 2064)
                              {
                                valuePtr = bswap32(v104[2]) >> 16;
                                v106 = CFNumberCreate(v23, kCFNumberSInt16Type, &valuePtr);
                                if (!v106)
                                {
                                  goto LABEL_227;
                                }

                                v107 = v106;
                                CFDictionarySetValue(v25, @"IE_KEY_WPS_CFG_METHODS", v106);
                                CFRelease(v107);
                                v108 = bswap32(v104[1]);
                                v109 = v103 - HIWORD(v108) - 4;
                                if (v109 >= 4 && (v110 = (v104 + HIWORD(v108) + 4), v110[1]) && __rev16(v110[1]) + 4 <= v109 && *v110 == 15376)
                                {
                                  v111 = CFNumberCreate(v23, kCFNumberSInt8Type, v110 + 2);
                                  if (v111)
                                  {
                                    v112 = v111;
                                    CFDictionarySetValue(v25, @"IE_KEY_WPS_RF_BANDS", v111);
                                    CFRelease(v112);
                                    goto LABEL_119;
                                  }

LABEL_227:
                                  v3 = 4294963395;
                                }

                                else
                                {
LABEL_119:
                                  CFDictionarySetValue(a3, @"WPS_PROB_RESP_IE", v25);
                                  v3 = 0;
                                }
                              }
                            }

LABEL_120:
                            CFRelease(v88);
                            goto LABEL_219;
                          }
                        }
                      }
                    }
                  }
                }

                goto LABEL_222;
              }

LABEL_223:
              v3 = 4294963395;
              goto LABEL_220;
            }

LABEL_122:
            v3 = 0;
            goto LABEL_220;
          }

          v113 = *MEMORY[0x277CBECE8];
          v114 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (!v114)
          {
            goto LABEL_223;
          }

          v25 = v114;
          valuePtr = -21846;
          v3 = 4294963396;
          if (!v21[1] || __rev16(v21[1]) + 4 > v20 || *v21 != 15120)
          {
            goto LABEL_219;
          }

          v115 = v21 + 2;
          v116 = CFNumberCreate(v113, kCFNumberSInt8Type, v21 + 2);
          CFDictionarySetValue(v25, @"IE_KEY_WPS_RESP_TYPE", v116);
          CFRelease(v116);
          v117 = bswap32(v21[1]);
          v118 = v20 - HIWORD(v117) - 4;
          if (v118 < 4)
          {
            goto LABEL_222;
          }

          v119 = v115 + HIWORD(v117);
          v120 = bswap32(*(v119 + 1)) >> 16;
          if (v120 < 0x10 || v120 + 4 > v118)
          {
            goto LABEL_222;
          }

          v122 = *v119;
          if (v122 == 18192)
          {
            v123 = @"IE_KEY_WPS_UUID_E";
          }

          else
          {
            if (v122 != 18448)
            {
              goto LABEL_222;
            }

            v123 = @"IE_KEY_WPS_UUID_R";
          }

          v124 = CFDataCreate(v113, v119 + 4, 16);
          if (!v124)
          {
            goto LABEL_224;
          }

          v125 = v124;
          CFDictionarySetValue(v25, v123, v124);
          CFRelease(v125);
          v126 = bswap32(*(v119 + 1));
          v127 = v118 - HIWORD(v126) - 4;
          if (v127 < 4)
          {
            goto LABEL_222;
          }

          v128 = &v119[HIWORD(v126) + 4];
          v3 = 4294963396;
          if (!*(v128 + 1) || __rev16(*(v128 + 1)) + 4 > v127 || *v128 != 17424)
          {
            goto LABEL_219;
          }

          v129 = CFNumberCreate(v113, kCFNumberSInt8Type, v128 + 4);
          if (!v129)
          {
            goto LABEL_224;
          }

          v130 = v129;
          CFDictionarySetValue(v25, @"IE_KEY_WPS_SC_STATE", v129);
          CFRelease(v130);
          v131 = bswap32(*(v128 + 1));
          v132 = v127 - HIWORD(v131) - 4;
          if (v132 < 4)
          {
            goto LABEL_222;
          }

          v133 = &v128[HIWORD(v131) + 4];
          v134 = bswap32(*(v133 + 2)) >> 16;
          v3 = 4294963396;
          if (v134 > 0x40 || v134 + 4 > v132 || *v133 != 8464)
          {
            goto LABEL_219;
          }

          v135 = CFStringCreateWithBytes(v113, (v133 + 4), v134, 0x8000100u, 0);
          if (!v135)
          {
            goto LABEL_224;
          }

          v136 = v135;
          CFDictionarySetValue(v25, @"IE_KEY_WPS_MANUFACTURER", v135);
          CFRelease(v136);
          v137 = bswap32(*(v133 + 2));
          v138 = v132 - HIWORD(v137) - 4;
          if (v138 < 4)
          {
            goto LABEL_222;
          }

          v139 = v133 + 4 + HIWORD(v137);
          v140 = bswap32(*(v139 + 2)) >> 16;
          v3 = 4294963396;
          if (v140 > 0x20 || v140 + 4 > v138 || *v139 != 8976)
          {
            goto LABEL_219;
          }

          v141 = CFStringCreateWithBytes(v113, (v139 + 4), v140, 0x8000100u, 0);
          if (!v141)
          {
            goto LABEL_224;
          }

          v142 = v141;
          CFDictionarySetValue(v25, @"IE_KEY_WPS_MODEL_NAME", v141);
          CFRelease(v142);
          v143 = bswap32(*(v139 + 2));
          v144 = v138 - HIWORD(v143) - 4;
          if (v144 < 4)
          {
            goto LABEL_222;
          }

          v145 = v139 + 4 + HIWORD(v143);
          v146 = bswap32(*(v145 + 2)) >> 16;
          v3 = 4294963396;
          if (v146 > 0x20 || v146 + 4 > v144 || *v145 != 9232)
          {
            goto LABEL_219;
          }

          v147 = CFStringCreateWithBytes(v113, (v145 + 4), v146, 0x8000100u, 0);
          if (!v147)
          {
            goto LABEL_224;
          }

          v148 = v147;
          CFDictionarySetValue(v25, @"IE_KEY_WPS_MODEL_NUM", v147);
          CFRelease(v148);
          v149 = bswap32(*(v145 + 2));
          v150 = v144 - HIWORD(v149) - 4;
          if (v150 < 4)
          {
            goto LABEL_222;
          }

          v151 = v145 + 4 + HIWORD(v149);
          v152 = bswap32(*(v151 + 2)) >> 16;
          v3 = 4294963396;
          if (v152 > 0x20 || v152 + 4 > v150 || *v151 != 16912)
          {
            goto LABEL_219;
          }

          v153 = CFStringCreateWithBytes(v113, (v151 + 4), v152, 0x8000100u, 0);
          if (!v153)
          {
            goto LABEL_224;
          }

          v154 = v153;
          CFDictionarySetValue(v25, @"IE_KEY_WPS_SERIAL_NUM", v153);
          CFRelease(v154);
          v155 = bswap32(*(v151 + 2));
          v156 = v150 - HIWORD(v155) - 4;
          if (v156 < 4)
          {
            goto LABEL_222;
          }

          v157 = v151 + 4 + HIWORD(v155);
          v158 = bswap32(*(v157 + 2)) >> 16;
          v3 = 4294963396;
          if (v158 < 8 || v158 + 4 > v156 || *v157 != 21520)
          {
            goto LABEL_219;
          }

          v159 = CFDictionaryCreateMutable(v113, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (!v159)
          {
            goto LABEL_224;
          }

          v160 = v159;
          valuePtr = bswap32(*(v157 + 4)) >> 16;
          v161 = CFNumberCreate(v113, kCFNumberSInt16Type, &valuePtr);
          if (!v161 || (v162 = v161, CFDictionarySetValue(v160, @"WPS_DEV_TYPE_CAT", v161), CFRelease(v162), (v163 = CFDataCreate(v113, (v157 + 6), 4)) == 0) || (v164 = v163, CFDictionarySetValue(v160, @"WPS_DEV_TYPE_OUI", v163), CFRelease(v164), valuePtr = bswap32(*(v157 + 10)) >> 16, (v165 = CFNumberCreate(v113, kCFNumberSInt16Type, &valuePtr)) == 0))
          {
            CFRelease(v25);
            v3 = 4294963395;
            v25 = v160;
            goto LABEL_219;
          }

          v166 = v165;
          CFDictionarySetValue(v160, @"WPS_DEV_TYPE_SUB_CAT", v165);
          CFRelease(v166);
          CFDictionarySetValue(v25, @"IE_KEY_WPS_PRIMARY_DEV_TYPE", v160);
          CFRelease(v160);
          v167 = bswap32(*(v157 + 2));
          v168 = v156 - HIWORD(v167) - 4;
          if (v168 < 4)
          {
            goto LABEL_222;
          }

          v169 = v157 + 4 + HIWORD(v167);
          v170 = bswap32(*(v169 + 2)) >> 16;
          v3 = 4294963396;
          if (v170 > 0x20 || v170 + 4 > v168 || *v169 != 4368)
          {
            goto LABEL_219;
          }

          v171 = CFStringCreateWithBytes(v113, (v169 + 4), v170, 0x8000100u, 0);
          if (!v171)
          {
            goto LABEL_224;
          }

          v172 = v171;
          CFDictionarySetValue(v25, @"IE_KEY_WPS_DEV_NAME", v171);
          CFRelease(v172);
          v173 = bswap32(*(v169 + 2));
          v174 = v168 - HIWORD(v173) - 4;
          if (v174 < 6)
          {
            goto LABEL_222;
          }

          v175 = (v169 + 4 + HIWORD(v173));
          if (*v175 != 2064)
          {
            goto LABEL_222;
          }

          valuePtr = bswap32(v175[2]) >> 16;
          v176 = CFNumberCreate(v113, kCFNumberSInt16Type, &valuePtr);
          if (!v176)
          {
            goto LABEL_224;
          }

          v177 = v176;
          CFDictionarySetValue(v25, @"IE_KEY_WPS_CFG_METHODS", v176);
          CFRelease(v177);
          v178 = bswap32(v175[1]);
          v179 = v174 - HIWORD(v178) - 4;
          if (v179 < 5 || (v180 = v175 + HIWORD(v178) + 4, *v180 != 16656))
          {
LABEL_222:
            v3 = 4294963396;
            goto LABEL_219;
          }

          v182 = *(v180 + 4);
          v181 = v180 + 4;
          v183 = *MEMORY[0x277CBED28];
          v184 = *MEMORY[0x277CBED10];
          if (v182)
          {
            v185 = *MEMORY[0x277CBED28];
          }

          else
          {
            v185 = *MEMORY[0x277CBED10];
          }

          CFDictionarySetValue(v25, @"IE_KEY_WPS_SEL_REG", v185);
          v186 = bswap32(*(v181 - 2));
          v187 = v179 - HIWORD(v186) - 4;
          if (v187 >= 5)
          {
            v188 = (v181 + HIWORD(v186));
            if (*v188 == 22288)
            {
              v190 = v188[4];
              v189 = (v188 + 4);
              if (v190)
              {
                v191 = v183;
              }

              else
              {
                v191 = v184;
              }

              CFDictionarySetValue(v25, @"IE_KEY_WPS_AP_SETUP_LOCKED", v191);
              v192 = bswap32(*(v189 - 1));
              v188 = v189 + HIWORD(v192);
              v187 = v187 - HIWORD(v192) - 4;
            }

            if (v187 >= 6)
            {
              v193 = *v188;
              if (v193 == 21264 || v193 == 21249)
              {
                valuePtr = bswap32(*(v188 + 2)) >> 16;
                v194 = CFNumberCreate(v113, kCFNumberSInt16Type, &valuePtr);
                if (!v194)
                {
                  goto LABEL_224;
                }

                v195 = v194;
                CFDictionarySetValue(v25, @"IE_KEY_WPS_REG_CFG_METHODS", v194);
                CFRelease(v195);
                v196 = bswap32(*(v188 + 1));
                v187 = v187 - HIWORD(v196) - 4;
                if (v187 >= 6)
                {
                  v188 += HIWORD(v196) + 4;
                  v193 = *v188;
                  goto LABEL_195;
                }
              }

              else
              {
LABEL_195:
                if (v193 == 4624)
                {
                  valuePtr = bswap32(*(v188 + 2)) >> 16;
                  v197 = CFNumberCreate(v113, kCFNumberSInt16Type, &valuePtr);
                  if (!v197)
                  {
                    goto LABEL_224;
                  }

                  v198 = v197;
                  CFDictionarySetValue(v25, @"IE_KEY_WPS_DEV_PW_ID", v197);
                  CFRelease(v198);
                  v199 = bswap32(*(v188 + 1));
                  v188 += HIWORD(v199) + 4;
                  v187 = v187 - HIWORD(v199) - 4;
                }

                if (v187 >= 0x14 && *v188 == 6672)
                {
                  v200 = CFDataCreate(v113, v188 + 4, 16);
                  if (!v200)
                  {
                    goto LABEL_224;
                  }

                  v201 = v200;
                  CFDictionarySetValue(v25, @"IE_KEY_WPS_ENRL_NONCE", v200);
                  CFRelease(v201);
                }
              }
            }
          }

          v202 = @"WPS_PROB_RESP_IE";
          goto LABEL_218;
        }
      }
    }

    return 0;
  }

  return v3;
}

uint64_t Apple80211Get(uint64_t a1)
{
  if (a1)
  {
    return Apple80211GetWithIOCTL();
  }

  else
  {
    return 4294963396;
  }
}

void _dispatchBTCoexStatsUpdateEvent(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    return;
  }

  if (a3 != 28)
  {
    return;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return;
  }

  v6 = Mutable;
  v7 = *MEMORY[0x277CBECE8];
  v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, (a2 + 8));
  if (v8)
  {
    v9 = v8;
    CFDictionaryAddValue(v6, @"BTC_STATS_TOT_DUR_MS", v8);
    v10 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 12));
    if (!v10)
    {
      v17 = v9;
LABEL_31:
      CFRelease(v17);
      goto LABEL_32;
    }

    v11 = v10;
    CFDictionaryAddValue(v6, @"BTC_STATS_BT_DUR_MS", v10);
    v12 = CFNumberCreate(v7, kCFNumberSInt32Type, a2);
    if (v12)
    {
      CFDictionaryAddValue(v6, @"BTC_STATS_HYBRID_CNT", v12);
      v13 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 4));
      if (v13)
      {
        CFDictionaryAddValue(v6, @"BTC_STATS_TDD_CNT", v13);
        v14 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 16));
        if (v14)
        {
          v19 = v14;
          CFDictionaryAddValue(v6, @"BTC_STATS_PARALLEL_CNT", v14);
          v15 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 20));
          if (v15)
          {
            CFDictionaryAddValue(v6, @"BTC_STATS_BT_DUR_AIR_MS", v15);
            v16 = CFNumberCreate(v7, kCFNumberSInt8Type, (a2 + 24));
            if (v16)
            {
              CFDictionaryAddValue(v6, @"BTC_STATS_WLRSSI_COEX", v16);
              v17 = CFNumberCreate(v7, kCFNumberSInt8Type, (a2 + 25));
              if (v17)
              {
                CFDictionaryAddValue(v6, @"BTC_STATS_BTRSSI_COEX", v17);
                (*(a1 + 72))(0, a1, 190, v6, 8, *(a1 + 80));
              }

              goto LABEL_19;
            }
          }

          else
          {
            v16 = 0;
          }

          v17 = 0;
LABEL_19:
          v18 = v19;
LABEL_20:
          CFRelease(v9);
          CFRelease(v11);
          if (v12)
          {
            CFRelease(v12);
          }

          if (v13)
          {
            CFRelease(v13);
          }

          if (v18)
          {
            CFRelease(v18);
          }

          if (v15)
          {
            CFRelease(v15);
          }

          if (v16)
          {
            CFRelease(v16);
          }

          if (!v17)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }
      }
    }

    else
    {
      v13 = 0;
    }

    v18 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_20;
  }

LABEL_32:

  CFRelease(v6);
}

uint64_t Apple80211ScanAsync()
{
  v0 = MEMORY[0x28223BE20]();
  v19 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v10 = 0;
  if (!v0)
  {
    return 4294963396;
  }

  v2 = v0;
  if ((*v0 & 0x80000000) != 0 || !*(v0 + 4))
  {
    return 4294963396;
  }

  v3 = v1;
  memset(__b, 170, sizeof(__b));
  v13 = -1431655766;
  v14 = -1431655766;
  v12 = -86;
  result = _getScanData(v3, __b, 0, &v12, &v13, &v14, &v11, &v10 + 1, v2 + 88, &v10);
  if (!result)
  {
    *(&uu + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&uu = 0xAAAAAAAAAAAAAAAALL;
    MEMORY[0x259C1D950](&uu);
    uuid_unparse(&uu, &__b[681] + 4);
    uu = 0u;
    v17 = 0u;
    v18 = 0;
    LODWORD(v17) = 10;
    __strlcpy_chk();
    DWORD2(v17) = 5528;
    v18 = __b;
    if (Apple80211RawSet())
    {
      return *__error();
    }

    else
    {
      __strlcpy_chk();
      pthread_mutex_lock((v2 + 160));
      if (!*(v2 + 232))
      {
        if (v3)
        {
          Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], v3);
        }

        else
        {
          Copy = 0;
        }

        *(v2 + 144) = Copy;
        *(v2 + 240) = 0;
        *(v2 + 236) = v14;
        *(v2 + 232) = 1;
        *(v2 + 120) = v12;
        *(v2 + 121) = v11;
        *(v2 + 124) = v13;
        *(v2 + 224) = pthread_self();
        *(v2 + 264) = 0;
        *(v2 + 128) = HIBYTE(v10);
        *(v2 + 129) = v10;
        *(v2 + 136) = __b[609];
        v6 = *(v2 + 248);
        if (v6)
        {
          Current = CFAbsoluteTimeGetCurrent();
          CFRunLoopTimerSetNextFireDate(v6, Current + 315360000.0);
        }

        v8 = *(v2 + 256);
        if (v8)
        {
          v9 = dispatch_time(0, 315360000000000000);
          dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
        }
      }

      pthread_mutex_unlock((v2 + 160));
      return 0;
    }
  }

  return result;
}

CFMutableArrayRef _getLQMSummary()
{
  MEMORY[0x28223BE20]();
  v1 = v0;
  v3 = v2;
  v61[160] = *MEMORY[0x277D85DE8];
  bzero(&valuePtr, 0x15A0uLL);
  *(v3 + 24) = 5536;
  *(v3 + 32) = &valuePtr;
  if (Apple80211IOCTLGetWrapper())
  {
    return *__error();
  }

  v4 = *MEMORY[0x277CBECE8];
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt8Type, &valuePtr);
  CFDictionarySetValue(v1, @"LQM_SUMMARY_CCA", v5);
  CFRelease(v5);
  v6 = CFNumberCreate(v4, kCFNumberSInt8Type, v40);
  CFDictionarySetValue(v1, @"LQM_SUMMARY_RSSI", v6);
  CFRelease(v6);
  v7 = CFNumberCreate(v4, kCFNumberSInt16Type, &v40[1]);
  CFDictionarySetValue(v1, @"LQM_SUMMARY_SNR", v7);
  CFRelease(v7);
  v8 = CFNumberCreate(v4, kCFNumberSInt64Type, &v42);
  CFDictionarySetValue(v1, @"LQM_SUMMARY_TX_RETRIES", v8);
  CFRelease(v8);
  v9 = CFNumberCreate(v4, kCFNumberSInt64Type, &v44);
  CFDictionarySetValue(v1, @"LQM_SUMMARY_TX_FRAMES", v9);
  CFRelease(v9);
  v10 = CFNumberCreate(v4, kCFNumberSInt64Type, &v43);
  CFDictionarySetValue(v1, @"LQM_SUMMARY_TX_FAILS", v10);
  CFRelease(v10);
  v11 = CFNumberCreate(v4, kCFNumberSInt64Type, &v45);
  CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_FCS", v11);
  CFRelease(v11);
  v12 = CFNumberCreate(v4, kCFNumberSInt64Type, &v46);
  CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_PLCP", v12);
  CFRelease(v12);
  v13 = CFNumberCreate(v4, kCFNumberSInt64Type, &v47);
  CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_CRS", v13);
  CFRelease(v13);
  v14 = CFNumberCreate(v4, kCFNumberSInt64Type, &v48);
  CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_DUP", v14);
  CFRelease(v14);
  v15 = CFNumberCreate(v4, kCFNumberSInt64Type, &v49);
  CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_AMPDU_DUP", v15);
  CFRelease(v15);
  v16 = CFNumberCreate(v4, kCFNumberSInt64Type, &v50);
  CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_UCAST_REPLAY", v16);
  CFRelease(v16);
  v17 = CFNumberCreate(v4, kCFNumberSInt64Type, &v51);
  CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_UCAST_DECRYPT", v17);
  CFRelease(v17);
  v18 = CFNumberCreate(v4, kCFNumberSInt64Type, &v52);
  CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_MCAST_REPLAY", v18);
  CFRelease(v18);
  v19 = CFNumberCreate(v4, kCFNumberSInt64Type, &v53);
  CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_MCAST_DECRYPT", v19);
  CFRelease(v19);
  v20 = CFNumberCreate(v4, kCFNumberSInt64Type, &v54);
  CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_RETRIES", v20);
  CFRelease(v20);
  v21 = CFNumberCreate(v4, kCFNumberSInt64Type, &v55);
  CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_GOOD_PLCPS", v21);
  CFRelease(v21);
  v22 = CFNumberCreate(v4, kCFNumberSInt64Type, &v56);
  CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_UCAST_FRAMES", v22);
  CFRelease(v22);
  v23 = CFNumberCreate(v4, kCFNumberSInt64Type, &v57);
  CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_MCAST_FRAMES", v23);
  CFRelease(v23);
  v24 = CFNumberCreate(v4, kCFNumberSInt64Type, &v58);
  CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_TOTAL_FRAMES", v24);
  CFRelease(v24);
  v25 = CFNumberCreate(v4, kCFNumberSInt64Type, &v59);
  CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_RTS_UCAST", v25);
  CFRelease(v25);
  v26 = CFNumberCreate(v4, kCFNumberSInt64Type, &v59);
  CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_RTS_UCAST", v26);
  CFRelease(v26);
  v27 = CFNumberCreate(v4, kCFNumberIntType, &v40[3]);
  CFDictionarySetValue(v1, @"LQM_SUMMARY_DATA_STALL_SCORE", v27);
  CFRelease(v27);
  v28 = CFNumberCreate(v4, kCFNumberIntType, &v41);
  CFDictionarySetValue(v1, @"LQM_SUMMARY_NET_SCORE", v28);
  CFRelease(v28);
  result = CFArrayCreateMutable(v4, 0, MEMORY[0x277CBF128]);
  if (result)
  {
    v30 = result;
    v31 = &v60;
    v32 = 16;
    do
    {
      if (*v31)
      {
        v33 = CFStringCreateWithCString(v4, v31, 0x8000100u);
        if (v33)
        {
          v34 = v33;
          CFArrayAppendValue(v30, v33);
          CFRelease(v34);
        }
      }

      v31 += 256;
      --v32;
    }

    while (v32);
    v35 = v61;
    v36 = 5;
    do
    {
      if (*v35)
      {
        v37 = CFStringCreateWithCString(v4, v35, 0x8000100u);
        if (v37)
        {
          v38 = v37;
          CFArrayAppendValue(v30, v37);
          CFRelease(v38);
        }
      }

      v35 += 256;
      --v36;
    }

    while (v36);
    CFDictionarySetValue(v1, @"LQM_SUMMARY_DBG_LOG_LIST", v30);
    CFRelease(v30);
    return 0;
  }

  return result;
}

uint64_t _getScanData(const __CFDictionary *a1, char *a2, uint64_t a3, _BYTE *a4, _DWORD *a5, _DWORD *a6, Boolean *a7, Boolean *a8, uint64_t a9, Boolean *a10)
{
  usedBufLen[4] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 4294963396;
  }

  v16 = a2;
  bzero(a2, 0x1598uLL);
  *v16 = 1;
  if (!a1)
  {
    *(v16 + 1) = 3;
    *(v16 + 52) = 0x100000001;
    if (a4)
    {
      *a4 = 1;
    }

    if (a6)
    {
      *a6 = 1;
    }

    result = 0;
    if (a5)
    {
      *a5 = 0x80000000;
    }

    return result;
  }

  v113 = a5;
  v114 = a3;
  v112 = a6;
  v122 = 0xAAAAAAAAAAAAAAAALL;
  valuePtr = -1431655766;
  v120 = -21846;
  Value = CFDictionaryGetValue(a1, @"SCAN_SSID_LIST");
  v19 = CFDictionaryGetValue(a1, @"SCAN_BSSID_LIST");
  v20 = CFDictionaryGetValue(a1, @"SSID_STR");
  v21 = CFDictionaryGetValue(a1, @"BSSID");
  v111 = *(a9 + 11);
  if ((v111 & 0x40) != 0)
  {
    v22 = CFDictionaryGetValue(a1, @"SCAN_SHORT_SSID");
  }

  else
  {
    v22 = 0;
  }

  v24 = v20 | v21 | v22;
  v110 = v24 != 0;
  v115 = v20;
  v117 = v21;
  if (!v24)
  {
    if (!Value)
    {
      v40 = 0;
      v28 = v113;
      goto LABEL_47;
    }

    v102 = v22;
    v103 = a7;
    v108 = v16;
    v105 = a1;
    Count = CFArrayGetCount(Value);
    v29 = Count - 1;
    if (Count >= 1)
    {
      v30 = 0;
      v31 = (v16 + 4888);
      if (v29 >= 9)
      {
        v29 = 9;
      }

      v32 = v29 + 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Value, v30);
        if (!ValueAtIndex)
        {
          return 4294963396;
        }

        v34 = ValueAtIndex;
        v35 = CFDictionaryGetValue(ValueAtIndex, @"SSID_STR");
        if (!v35)
        {
          return 4294963396;
        }

        v36 = v35;
        Length = CFStringGetLength(v35);
        if (Length > 32)
        {
          return 4294963396;
        }

        v38 = Length;
        *v31 = 1;
        usedBufLen[0] = 0;
        if (CFStringGetLength(v36))
        {
          v125.location = 0;
          v125.length = v38;
          if (!CFStringGetBytes(v36, v125, 0x8000100u, 0, 0, (v31 + 8), 32, usedBufLen))
          {
            return 4294963396;
          }
        }

        *(v31 + 4) = usedBufLen[0];
        __getNetworkSecurityParams(v34, v31, a9);
        ++v30;
        v31 += 56;
      }

      while (v32 != v30);
    }

    v22 = v102;
    v39 = 10;
    if (Count < 10)
    {
      v39 = Count;
    }

    v16 = v108;
    *(v108 + 1221) = v39;
    a7 = v103;
    a1 = v105;
    v20 = v115;
    v21 = v117;
    if (v115)
    {
      goto LABEL_23;
    }

LABEL_40:
    v28 = v113;
    if (v22)
    {
      CFNumberGetValue(v22, kCFNumberSInt32Type, v16 + 5448);
      v114 = 0;
      *(v16 + 4) = 4;
    }

    goto LABEL_42;
  }

  if (v20)
  {
    v25 = v22 == 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = !v25;
  if (Value || v19 || (v26 & 1) != 0)
  {
    return 4294963396;
  }

  if (!v20)
  {
    goto LABEL_40;
  }

LABEL_23:
  v27 = CFStringGetLength(v20);
  v28 = v113;
  if ((v27 - 33) < 0xFFFFFFFFFFFFFFE0)
  {
    return 4294963396;
  }

  v124.length = v27;
  usedBufLen[0] = 0xAAAAAAAAAAAAAAAALL;
  v124.location = 0;
  if (!CFStringGetBytes(v20, v124, 0x8000100u, 0, 0, v16 + 20, 32, usedBufLen))
  {
    return 4294963396;
  }

  v114 = 0;
  *(v16 + 4) = usedBufLen[0];
LABEL_42:
  v40 = !v110;
  if (!v21)
  {
LABEL_47:
    v42 = v114;
    goto LABEL_48;
  }

  memset(usedBufLen, 170, 18);
  if (!CFStringGetCString(v21, usedBufLen, 18, 0x8000100u))
  {
    return 4294963396;
  }

  v41 = ether_aton(usedBufLen);
  if (!v41)
  {
    return 4294963396;
  }

  v42 = 0;
  v43 = *v41->octet;
  *(v16 + 6) = *&v41->octet[4];
  *(v16 + 2) = v43;
LABEL_48:
  if (v19)
  {
    v44 = 1;
  }

  else
  {
    v44 = v40;
  }

  if (v115)
  {
    v44 = 1;
  }

  if (v21)
  {
    v44 = 1;
  }

  if (v44)
  {
    v45 = v42;
  }

  else
  {
    v45 = 0;
  }

  if (a4)
  {
    v46 = CFDictionaryGetValue(a1, @"SCAN_MERGE");
    BoolRef = makeBoolRef(v46);
    if (BoolRef)
    {
      LOBYTE(BoolRef) = CFBooleanGetValue(BoolRef);
    }

    *a4 = BoolRef;
  }

  if (a10)
  {
    v48 = CFDictionaryGetValue(a1, @"SCAN_INC_BSS_LIST");
    v49 = makeBoolRef(v48);
    if (v49)
    {
      *a10 = CFBooleanGetValue(v49);
    }
  }

  v50 = CFDictionaryGetValue(a1, @"SCAN_FLAGS");
  if (v50 && !CFNumberGetValue(v50, kCFNumberSInt32Type, v16 + 4872))
  {
    return 4294963396;
  }

  v51 = *MEMORY[0x277CBED28];
  v52 = CFDictionaryGetValue(a1, @"SCAN_LOW_PRIORITY");
  if (v51 == makeBoolRef(v52))
  {
    *(v16 + 609) |= 2uLL;
  }

  v53 = CFDictionaryGetValue(a1, @"SCAN_LOW_LATENCY");
  if (v51 == makeBoolRef(v53))
  {
    *(v16 + 609) |= 0x20uLL;
  }

  v54 = CFDictionaryGetValue(a1, @"SCAN_PRIO_OVERRIDE");
  if (v51 == makeBoolRef(v54))
  {
    *(v16 + 609) |= 0x40uLL;
  }

  v55 = CFDictionaryGetValue(a1, @"SCAN_IS_THROTTLED");
  if (v51 == makeBoolRef(v55))
  {
    *(v16 + 609) |= 0x80uLL;
  }

  v56 = CFDictionaryGetValue(a1, @"SCAN_ONLY_USE_LOW_POWER_CORE");
  if (v51 == makeBoolRef(v56))
  {
    *(v16 + 609) |= 0x1000uLL;
  }

  v57 = CFDictionaryGetValue(a1, @"SCAN_INC_OFFCHANNEL_BSS");
  if (v51 == makeBoolRef(v57))
  {
    *(v16 + 609) |= 8uLL;
  }

  if ((v111 & 0x40) == 0)
  {
    v58 = *(v16 + 609) & 0xFFFFF0FFLL;
LABEL_89:
    *(v16 + 609) = v58;
    goto LABEL_90;
  }

  v59 = CFDictionaryGetValue(a1, @"SCAN_6GHZ_FOLLOWUP");
  if (v51 == makeBoolRef(v59))
  {
    *(v16 + 609) |= 0x100uLL;
  }

  v60 = CFDictionaryGetValue(a1, @"SCAN_INCL_FILS_DISC_FRAMES");
  if (v51 == makeBoolRef(v60))
  {
    *(v16 + 609) |= 0x200uLL;
  }

  v61 = CFDictionaryGetValue(a1, @"SCAN_SKIP_FILS_DISC_PERIOD");
  if (v51 == makeBoolRef(v61))
  {
    *(v16 + 609) |= 0x400uLL;
  }

  v62 = CFDictionaryGetValue(a1, @"SCAN_INCL_ORIG_RNR");
  if (v51 == makeBoolRef(v62))
  {
    v58 = *(v16 + 609) | 0x800;
    goto LABEL_89;
  }

LABEL_90:
  *(v16 + 1220) = 0x80000000;
  v63 = CFDictionaryGetValue(a1, @"SCAN_RSSI_THRESHOLD");
  if (v63 && !CFNumberGetValue(v63, kCFNumberSInt32Type, v16 + 4880))
  {
    return 4294963396;
  }

  if (v28)
  {
    *v28 = *(v16 + 1220);
  }

  if (v112)
  {
    v64 = CFDictionaryGetValue(a1, @"SCAN_NUM_SCANS");
    if (v64)
    {
      if (!CFNumberGetValue(v64, kCFNumberSInt32Type, v112))
      {
        return 4294963396;
      }
    }

    else
    {
      *v112 = 1;
    }
  }

  v65 = CFDictionaryGetValue(a1, @"SCAN_TYPE");
  if (v65)
  {
    if (!CFNumberGetValue(v65, kCFNumberSInt32Type, &valuePtr))
    {
      return 4294963396;
    }

    v66 = valuePtr;
  }

  else
  {
    v66 = 1;
  }

  *(v16 + 13) = v66;
  v67 = v16 + 52;
  v68 = CFDictionaryGetValue(a1, @"SCAN_BSS_TYPE");
  if (v68)
  {
    if (!CFNumberGetValue(v68, kCFNumberSInt32Type, &valuePtr))
    {
      return 4294963396;
    }

    v69 = valuePtr;
  }

  else
  {
    v69 = 3;
  }

  *(v16 + 1) = v69;
  v70 = CFDictionaryGetValue(a1, @"SCAN_PHY_MODE");
  if (v70)
  {
    if (!CFNumberGetValue(v70, kCFNumberSInt32Type, &valuePtr))
    {
      return 4294963396;
    }

    v71 = valuePtr;
  }

  else
  {
    v71 = 1;
  }

  *(v16 + 14) = v71;
  v72 = CFDictionaryGetValue(a1, @"SCAN_DWELL_TIME");
  if (v72)
  {
    if (!CFNumberGetValue(v72, kCFNumberSInt16Type, &v120))
    {
      return 4294963396;
    }

    *(v16 + 30) = v120;
  }

  v73 = CFDictionaryGetValue(a1, @"SCAN_REST_TIME");
  if (v73)
  {
    if (!CFNumberGetValue(v73, kCFNumberSInt32Type, &valuePtr))
    {
      return 4294963396;
    }

    *(v16 + 16) = valuePtr;
  }

  v74 = CFDictionaryGetValue(a1, @"SCAN_MIN_TIMESTAMP");
  if (v74)
  {
    if (CFNumberGetValue(v74, kCFNumberSInt64Type, &v122))
    {
      *(v16 + 690) = v122;
      goto LABEL_120;
    }

    return 4294963396;
  }

LABEL_120:
  v75 = CFDictionaryGetValue(a1, @"SCAN_CHANNELS");
  if (v75)
  {
    v76 = v75;
    v77 = CFArrayGetCount(v75);
    v118 = -1431655766;
    v119 = -1431655766;
    if (v77 >= 1)
    {
      v104 = a7;
      v106 = a1;
      v107 = a8;
      v109 = v16;
      v116 = 0;
      v78 = 0;
      v79 = 0;
      if (v45)
      {
        v80 = (v45 + 512);
      }

      else
      {
        v80 = v16 + 52;
      }

      v81 = v16 + 72;
      if ((v77 - 1) >= 0x18F)
      {
        v82 = 399;
      }

      else
      {
        v82 = v77 - 1;
      }

      while (1)
      {
        v83 = CFArrayGetValueAtIndex(v76, v79);
        if (!v83)
        {
          return 4294963396;
        }

        v84 = v83;
        v85 = CFDictionaryGetValue(v83, @"CHANNEL");
        if (!v85 || !CFNumberGetValue(v85, kCFNumberSInt32Type, &v119))
        {
          return 4294963396;
        }

        v86 = CFDictionaryGetValue(v84, @"CHANNEL_FLAGS");
        v87 = v86;
        if (!v86)
        {
          break;
        }

        if (!CFNumberGetValue(v86, kCFNumberSInt32Type, &v118))
        {
          return 4294963396;
        }

        if (!v118)
        {
          goto LABEL_136;
        }

LABEL_142:
        if (!CFNumberGetValue(v87, kCFNumberSInt32Type, &v118))
        {
          return 4294963396;
        }

        v90 = *v67 == 1 && v117 != 0;
        v91 = v118;
        if ((v118 & 0x2000) == 0 || *v80 == 3 || v90)
        {
          v93 = v119;
        }

        else
        {
          if ((_os_feature_enabled_impl() & 1) == 0)
          {
            v116 = v119;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              LODWORD(usedBufLen[0]) = 67109120;
              HIDWORD(usedBufLen[0]) = v116;
              _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Excluding 6GHz scan channel (%u)", usedBufLen, 8u);
            }

            goto LABEL_164;
          }

          v92 = _os_feature_enabled_impl();
          v91 = v118;
          v93 = v119;
          if ((v92 & 1) == 0)
          {
            if ((~v118 & 0x2002) != 0)
            {
              goto LABEL_185;
            }

            v94 = 0;
            do
            {
              v95 = k6GHzPSC[v94];
              if (v94 > 0xD)
              {
                break;
              }

              ++v94;
            }

            while (v95 != v119);
            if (v95 != v119)
            {
LABEL_185:
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                LODWORD(usedBufLen[0]) = 67109120;
                HIDWORD(usedBufLen[0]) = v93;
                _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Excluding 6GHz non-PSC scan channel (%u)", usedBufLen, 8u);
              }

              v116 = v93;
              goto LABEL_164;
            }
          }
        }

        v96 = &v81[12 * v78];
        *v96 = 1;
        *(v96 + 1) = v93;
        *(v96 + 2) = v91;
        ++v78;
LABEL_164:
        v25 = v79++ == v82;
        if (v25)
        {
          if (v78)
          {
            a1 = v106;
            a8 = v107;
            a7 = v104;
            v16 = v109;
          }

          else
          {
            a1 = v106;
            a8 = v107;
            a7 = v104;
            v16 = v109;
            if (v116)
            {
              *(v109 + 13) = 3;
              *(v109 + 9) = 1;
              *(v109 + 20) = 0;
              LODWORD(v78) = 1;
            }
          }

          goto LABEL_175;
        }
      }

      v118 = 0;
LABEL_136:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(usedBufLen[0]) = 67109120;
        HIDWORD(usedBufLen[0]) = v119;
        _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Missing channel flags for scan channel (%u)", usedBufLen, 8u);
      }

      if (v119 > 0xD)
      {
        v88 = 18;
      }

      else
      {
        v88 = 10;
      }

      v118 = v88;
      goto LABEL_142;
    }

    LODWORD(v78) = 0;
LABEL_175:
    *(v16 + 17) = v78;
  }

  if (a7)
  {
    v97 = CFDictionaryGetValue(a1, @"MONITOR_QBSS_LOAD");
    v98 = makeBoolRef(v97);
    if (v98)
    {
      *a7 = CFBooleanGetValue(v98);
    }
  }

  if (!a8)
  {
    return 0;
  }

  v99 = CFDictionaryGetValue(a1, @"SCAN_TRIM_RESULTS");
  result = makeBoolRef(v99);
  if (result)
  {
    v100 = CFBooleanGetValue(result);
    result = 0;
    *a8 = v100;
  }

  return result;
}