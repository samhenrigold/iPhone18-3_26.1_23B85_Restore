uint64_t browser_setModeInternal(void *a1, uint64_t a2)
{
  v2 = a2;
  v118 = *MEMORY[0x277D85DE8];
  v106 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 245))
  {
    return -6723;
  }

  v5 = DerivedStorage;
  if (*(DerivedStorage + 24) == v2)
  {
    return 0;
  }

  v6 = *DerivedStorage;
  v7 = **DerivedStorage;
  if (v7 <= 50)
  {
    if (v7 != -1)
    {
LABEL_5:
      StringForMode = browser_getStringForMode(v2, v6);
      v9 = browser_getStringForMode(*(v5 + 12), *v5);
      LogPrintF(v6, "OSStatus browser_setModeInternal(APBrowserRef, APBrowserMode)", 33554482, "Setting %s browse mode from %s browse.\n", StringForMode, v9);
      goto LABEL_7;
    }

    if (_LogCategory_Initialize())
    {
      v6 = *v5;
      goto LABEL_5;
    }
  }

LABEL_7:
  v10 = APSGetCurrentLocalTimeString();
  cf = CFStringCreateF(&v106, "%s", v10);
  if (v106)
  {
    browser_setModeInternal_cold_1(v106);
    goto LABEL_156;
  }

  v11 = v5[4];
  v12 = cf;
  if (cf)
  {
    CFRetain(cf);
    v12 = cf;
  }

  v5[4] = v12;
  if (v11)
  {
    CFRelease(v11);
  }

  v13 = *(v5 + 12);
  *(v5 + 12) = v2;
  v14 = CMBaseObjectGetDerivedStorage();
  if (IsAppleInternalBuild() && APSSettingsGetInt64() && !IsAppleTV())
  {
    v15 = *(v14 + 48);
    if ((v2 & 0xFFFE) == 2)
    {
      if (!v15)
      {
        v16 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v14 + 8));
        *(v14 + 48) = v16;
        if (v16)
        {
          v17 = CFRetain(a1);
          v18 = *(v14 + 48);
          handler = MEMORY[0x277D85DD0];
          v108 = 3221225472;
          v109 = __browser_updateDetailedDiscoveryThresholdTimer_block_invoke;
          v110 = &__block_descriptor_40_e5_v8__0l;
          v111 = v17;
          dispatch_source_set_event_handler(v18, &handler);
          v19 = *(v14 + 48);
          v112 = MEMORY[0x277D85DD0];
          v113 = 3221225472;
          v114 = __browser_updateDetailedDiscoveryThresholdTimer_block_invoke_2;
          v115 = &__block_descriptor_48_e5_v8__0l;
          v116 = v14;
          v117 = v17;
          dispatch_source_set_cancel_handler(v19, &v112);
          v20 = *(v14 + 48);
          v21 = dispatch_time(0, 3600000000000);
          dispatch_source_set_timer(v20, v21, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
          dispatch_resume(*(v14 + 48));
        }

        else
        {
          browser_setModeInternal_cold_2();
        }
      }
    }

    else if (v15)
    {
      dispatch_source_cancel(*(v14 + 48));
      dispatch_release(v15);
      *(v14 + 48) = 0;
    }
  }

  v22 = *(v5 + 12);
  v23 = CMBaseObjectGetDerivedStorage();
  v24 = mach_absolute_time();
  CFAbsoluteTimeGetCurrent();
  if (v13 == v22)
  {
    browser_setModeInternal_cold_39();
    v27 = 4294960591;
LABEL_169:
    browser_setModeInternal_cold_40(v27);
    goto LABEL_156;
  }

  if (v13 >= 2 && v22 <= 1)
  {
    browser_ensureDetailedForeverTimerStopped(a1);
  }

  v25 = CMBaseObjectGetDerivedStorage();
  v26 = (v25 + 400);
  if (v13)
  {
    v26 = 0;
  }

  if (v13 == 1)
  {
    v26 = (v25 + 408);
  }

  if (v13 == 2)
  {
    v26 = (v25 + 416);
  }

  if (v13 == 3)
  {
    v26 = (v25 + 424);
  }

  *v26 += v24 - *(v25 + 432);
  *(v25 + 432) = v24;
  if (v22 <= 1)
  {
    if (v22)
    {
      v27 = 0;
      goto LABEL_48;
    }

    v28 = *v23;
    v29 = **v23;
    if (v29 <= 30)
    {
      if (v29 != -1)
      {
LABEL_41:
        LogPrintF(v28, "OSStatus browser_updateBrowserMetrics(APBrowserRef, APBrowserMode, APBrowserMode)", 33554462, "Discovery session ended");
        goto LABEL_62;
      }

      if (_LogCategory_Initialize())
      {
        v28 = *v23;
        goto LABEL_41;
      }
    }

LABEL_62:
    browser_batchAndSendDiscoveredDeviceRTCMetrics(a1);
    v40 = CMBaseObjectGetDerivedStorage();
    v41 = *v40;
    if (**v40 <= 30)
    {
      if (**v40 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_66;
        }

        v41 = *v40;
      }

      LogPrintF(v41, "OSStatus browser_resetSessionEvents(APBrowserRef)", 33554462, "Resetting session events");
    }

LABEL_66:
    APSEventRecorderResetEvent();
    APSEventRecorderResetEvent();
    APSEventRecorderResetEvent();
    APSEventRecorderResetEvent();
    browser_ensureDiscoverySessionThresholdTimerStopped(a1);
    *(v23 + 440) = 0;
    *(v23 + 444) = 0;
    goto LABEL_67;
  }

  if (v22 == 3)
  {
    APSEventRecorderRecordEventWithFlagsAtTime();
  }

  else if (v22 != 2)
  {
LABEL_67:
    v106 = 0;
    goto LABEL_77;
  }

  APSEventRecorderRecordEventWithFlagsAtTime();
  v30 = CMBaseObjectGetDerivedStorage();
  if (IsAppleInternalBuild() || *(v30 + 376))
  {
    goto LABEL_47;
  }

  v31 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v30 + 8));
  *(v30 + 376) = v31;
  if (v31)
  {
    v112 = MEMORY[0x277D85DD0];
    v113 = 3221225472;
    v114 = __browser_ensureDetailedForeverTimerStarted_block_invoke;
    v115 = &__block_descriptor_40_e5_v8__0l;
    v116 = a1;
    dispatch_source_set_event_handler(v31, &v112);
    CFRetain(a1);
    v32 = *(v30 + 376);
    handler = MEMORY[0x277D85DD0];
    v108 = 3221225472;
    v109 = __browser_ensureDetailedForeverTimerStarted_block_invoke_2;
    v110 = &__block_descriptor_40_e5_v8__0l;
    v111 = a1;
    dispatch_source_set_cancel_handler(v32, &handler);
    v33 = *(v30 + 376);
    v34 = dispatch_time(0, 600000000000);
    dispatch_source_set_timer(v33, v34, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_resume(*(v30 + 376));
LABEL_47:
    v27 = 0;
    goto LABEL_48;
  }

  browser_setModeInternal_cold_3(a1);
  v27 = 4294960568;
LABEL_48:
  APSEventRecorderRecordEventWithFlagsAtTime();
  if (*(v23 + 440) >= v22)
  {
    goto LABEL_74;
  }

  v35 = *v23;
  v36 = **v23;
  if (v36 <= 30)
  {
    if (v36 != -1)
    {
LABEL_51:
      LogPrintF(v35, "OSStatus browser_updateBrowserMetrics(APBrowserRef, APBrowserMode, APBrowserMode)", 33554462, "Increased max Discovery mode");
      goto LABEL_53;
    }

    if (_LogCategory_Initialize())
    {
      v35 = *v23;
      goto LABEL_51;
    }
  }

LABEL_53:
  *(v23 + 440) = v22;
  v37 = CMBaseObjectGetDerivedStorage();
  if (APSEventRecorderGetEventTimeRecursive())
  {
    browser_setModeInternal_cold_4();
    v27 = v112;
    goto LABEL_74;
  }

  v38 = *v37;
  v39 = **v37;
  if (*(v37 + 448))
  {
    if (v39 <= 50)
    {
      if (v39 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_73;
        }

        v38 = *v37;
      }

      LogPrintF(v38, "OSStatus browser_startOrExtendDiscoverySessionThresholdTimer(APBrowserRef)", 33554482, "Extending threshold timer");
    }

LABEL_73:
    v45 = *(v37 + 448);
    v46 = dispatch_time(0, 300000000000);
    dispatch_source_set_timer(v45, v46, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v27 = 0;
    goto LABEL_74;
  }

  if (v39 <= 50)
  {
    if (v39 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_71;
      }

      v38 = *v37;
    }

    LogPrintF(v38, "OSStatus browser_startOrExtendDiscoverySessionThresholdTimer(APBrowserRef)", 33554482, "Starting threshold timer");
  }

LABEL_71:
  v42 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v37 + 8));
  *(v37 + 448) = v42;
  if (v42)
  {
    CFRetain(a1);
    v43 = *(v37 + 448);
    v112 = MEMORY[0x277D85DD0];
    v113 = 3221225472;
    v114 = __browser_startOrExtendDiscoverySessionThresholdTimer_block_invoke;
    v115 = &__block_descriptor_40_e5_v8__0l;
    v116 = a1;
    dispatch_source_set_event_handler(v43, &v112);
    v44 = *(v37 + 448);
    handler = MEMORY[0x277D85DD0];
    v108 = 3221225472;
    v109 = __browser_startOrExtendDiscoverySessionThresholdTimer_block_invoke_2;
    v110 = &__block_descriptor_40_e5_v8__0l;
    v111 = a1;
    dispatch_source_set_cancel_handler(v44, &handler);
    dispatch_resume(*(v37 + 448));
    goto LABEL_73;
  }

  browser_setModeInternal_cold_5(a1);
  v27 = 4294960568;
LABEL_74:
  if (v22 > v13)
  {
    ++*(v23 + 392);
  }

  v106 = v27;
  if (v27)
  {
    goto LABEL_169;
  }

LABEL_77:
  if (v2 > 1)
  {
    if (v2 != 3)
    {
      if (v2 != 2)
      {
        goto LABEL_104;
      }

      v61 = browser_removeP2PServicesForNearbyDevices(a1);
      v106 = v61;
      if (v61)
      {
        browser_setModeInternal_cold_20(v61);
        goto LABEL_156;
      }
    }

    CMBaseObjectGetDerivedStorage();
    v62 = CMBaseObjectGetDerivedStorage();
    v63 = *(v62 + 40);
    if (v63)
    {
      CFRelease(v63);
      *(v62 + 40) = 0;
    }

    v64 = *MEMORY[0x277CBECE8];
    v65 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
    *(v62 + 40) = v65;
    if (v65)
    {
      v66 = CFUUIDCreateString(v64, v65);
      if (v66)
      {
        v67 = *v62;
        v68 = **v62;
        if (v68 > 40)
        {
          goto LABEL_116;
        }

        if (v68 == -1)
        {
          if (!_LogCategory_Initialize())
          {
LABEL_116:
            CFRelease(v66);
            v78 = CMBaseObjectGetDerivedStorage();
            v79 = CFDictionaryCopyKeys();
            v56 = v79;
            if (v79)
            {
              Count = CFArrayGetCount(v79);
              if (Count >= 1)
              {
                v81 = 0;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v56, v81);
                  if (!ValueAtIndex)
                  {
                    browser_setModeInternal_cold_23();
                    v48 = -6762;
                    goto LABEL_164;
                  }

                  Value = CFDictionaryGetValue(*(v78 + 216), ValueAtIndex);
                  if (!Value)
                  {
                    browser_setModeInternal_cold_22();
                    v48 = -6727;
                    goto LABEL_164;
                  }

                  if (CFDictionaryGetInt64())
                  {
                    updated = browser_updateDevice(a1, ValueAtIndex, Value);
                    v48 = updated;
                    if (updated)
                    {
                      break;
                    }
                  }

                  if (Count == ++v81)
                  {
                    goto LABEL_124;
                  }
                }

                browser_setModeInternal_cold_21(updated);
                goto LABEL_164;
              }

LABEL_124:
              CFRelease(v56);
            }

            v85 = browser_ensureWiFiPowerChangedListeningStarted(a1);
            v48 = v85;
            if (v85)
            {
              browser_setModeInternal_cold_24(v85);
              goto LABEL_199;
            }

            v86 = browser_ensureAWDLSoloSupportedListeningStarted(a1);
            v48 = v86;
            if (v86)
            {
              browser_setModeInternal_cold_25(v86);
              goto LABEL_199;
            }

            v87 = browser_updateBTLEBrowsing(a1);
            v48 = v87;
            if (v87)
            {
              browser_setModeInternal_cold_26(v87);
              goto LABEL_199;
            }

            v88 = browser_updateRapportBrowsing(a1);
            v48 = v88;
            if (v88)
            {
              browser_setModeInternal_cold_27(v88);
              goto LABEL_199;
            }

            v89 = browser_updateBrokerBrowsing(a1);
            v48 = v89;
            if (v89)
            {
              browser_setModeInternal_cold_28(v89);
              goto LABEL_199;
            }

            v90 = browser_updateBonjourBrowsing(a1);
            v48 = v90;
            if (v90)
            {
              browser_setModeInternal_cold_29(v90);
              goto LABEL_199;
            }

            v91 = CMBaseObjectGetDerivedStorage();
            if (!APSIsProximitySenderEnabled())
            {
              browser_setModeInternal_cold_34();
              v102 = v112;
              goto LABEL_150;
            }

            v92 = CMBaseObjectGetDerivedStorage();
            v93 = v92;
            if (*(v92 + 272))
            {
LABEL_142:
              v100 = *v91;
              v101 = **v91;
              if (v101 <= 50)
              {
                if (v101 == -1)
                {
                  if (!_LogCategory_Initialize())
                  {
                    goto LABEL_146;
                  }

                  v100 = *v91;
                }

                LogPrintF(v100, "OSStatus browser_startNI(APBrowserRef)", 33554482, "NISession run start\n");
              }

LABEL_146:
              v112 = 0;
              v113 = &v112;
              v114 = 0x3052000000;
              v115 = __Block_byref_object_copy__6;
              v116 = __Block_byref_object_dispose__6;
              v117 = getNISpatialBrowsingConfigurationClass_softClass;
              if (!getNISpatialBrowsingConfigurationClass_softClass)
              {
                handler = MEMORY[0x277D85DD0];
                v108 = 3221225472;
                v109 = __getNISpatialBrowsingConfigurationClass_block_invoke;
                v110 = &unk_278BC7CE0;
                v111 = &v112;
                __getNISpatialBrowsingConfigurationClass_block_invoke(&handler);
              }

              _Block_object_dispose(&v112, 8);
              v102 = objc_opt_new();
              if (v102)
              {
                [*(v91 + 272) runWithConfiguration:v102];
LABEL_150:

                goto LABEL_151;
              }

              browser_setModeInternal_cold_31();
LABEL_186:
              v102 = 0;
              goto LABEL_150;
            }

            v94 = *v92;
            v95 = **v93;
            if (v95 <= 50)
            {
              if (v95 != -1)
              {
LABEL_135:
                LogPrintF(v94, "OSStatus browser_setupNI(APBrowserRef)", 33554482, "NISession setup\n");
                goto LABEL_137;
              }

              if (_LogCategory_Initialize())
              {
                v94 = *v93;
                goto LABEL_135;
              }
            }

LABEL_137:
            v96 = [[BrowserNIDelegate alloc] initWithBrowser:a1];
            *(v93 + 280) = v96;
            if (v96)
            {
              v112 = 0;
              v113 = &v112;
              v114 = 0x3052000000;
              v115 = __Block_byref_object_copy__6;
              v116 = __Block_byref_object_dispose__6;
              v117 = getNISessionClass_softClass;
              if (!getNISessionClass_softClass)
              {
                handler = MEMORY[0x277D85DD0];
                v108 = 3221225472;
                v109 = __getNISessionClass_block_invoke;
                v110 = &unk_278BC7CE0;
                v111 = &v112;
                __getNISessionClass_block_invoke(&handler);
              }

              _Block_object_dispose(&v112, 8);
              v97 = objc_opt_new();
              *(v93 + 272) = v97;
              if (v97)
              {
                [v97 setDelegate:*(v93 + 280)];
                [*(v93 + 272) setDelegateQueue:*(v93 + 8)];
                v98 = APSRotatingKeyMapperInitialize();
                v99 = v98;
                if (!v98)
                {
                  goto LABEL_142;
                }

                browser_setModeInternal_cold_30(v98);
LABEL_184:
                browser_setModeInternal_cold_35(a1, v99);
                goto LABEL_186;
              }

              browser_setModeInternal_cold_32();
            }

            else
            {
              browser_setModeInternal_cold_33();
            }

            v99 = 4294960568;
            goto LABEL_184;
          }

          v67 = *v62;
        }

        LogPrintF(v67, "OSStatus browser_ensureBrowsingSessionUUIDCreated(APBrowserRef)", 33554472, "Starting detailed browse session %@.\n", v66);
        goto LABEL_116;
      }

      v104 = 6426;
    }

    else
    {
      v104 = 6423;
    }

    browser_setModeInternal_cold_38(v104);
    v48 = -6728;
    goto LABEL_199;
  }

  if (!v2)
  {
    v71 = CMBaseObjectGetDerivedStorage();
    v72 = *(v71 + 40);
    if (v72)
    {
      CFRelease(v72);
      *(v71 + 40) = 0;
    }

    v73 = browser_updateBTLEBrowsing(a1);
    v48 = v73;
    if (v73)
    {
      browser_setModeInternal_cold_6(v73);
      goto LABEL_199;
    }

    v74 = browser_updateRapportBrowsing(a1);
    v48 = v74;
    if (v74)
    {
      browser_setModeInternal_cold_7(v74);
      goto LABEL_199;
    }

    v75 = browser_updateBrokerBrowsing(a1);
    v48 = v75;
    if (v75)
    {
      browser_setModeInternal_cold_8(v75);
      goto LABEL_199;
    }

    v76 = browser_updateBonjourBrowsing(a1);
    v48 = v76;
    if (v76)
    {
      browser_setModeInternal_cold_9(v76);
      goto LABEL_199;
    }

    browser_stopNI(a1);
    CFDictionaryRemoveAllValues(*(v71 + 208));
    CFDictionaryRemoveAllValues(*(v71 + 216));
    *(v71 + 240) = 0;
    v77 = browser_dispatchEvent(a1, 7, 0);
    v48 = v77;
    if (v77)
    {
      browser_setModeInternal_cold_10(v77);
      goto LABEL_199;
    }

    v106 = 0;
    browser_setModeInternal_cold_37(v5);
LABEL_153:
    browser_sendPowerLogDiscoveryModeEvent(a1);
    goto LABEL_156;
  }

  if (v2 != 1)
  {
LABEL_104:
    v69 = *v5;
    v70 = **v5;
    if (v70 <= 90)
    {
      if (v70 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_155;
        }

        v69 = *v5;
      }

      LogPrintF(v69, "OSStatus browser_setModeInternal(APBrowserRef, APBrowserMode)", 33554522, "Unrecognized browsing mode %d.\n", v2);
    }

LABEL_155:
    v106 = -6727;
    goto LABEL_156;
  }

  CMBaseObjectGetDerivedStorage();
  v47 = browser_ensureWiFiPowerChangedListeningStarted(a1);
  v48 = v47;
  if (v47)
  {
    browser_setModeInternal_cold_11(v47);
    goto LABEL_199;
  }

  v49 = browser_ensureAWDLSoloSupportedListeningStarted(a1);
  v48 = v49;
  if (v49)
  {
    browser_setModeInternal_cold_12(v49);
    goto LABEL_199;
  }

  v50 = browser_updateBTLEBrowsing(a1);
  v48 = v50;
  if (v50)
  {
    browser_setModeInternal_cold_13(v50);
    goto LABEL_199;
  }

  v51 = browser_updateRapportBrowsing(a1);
  v48 = v51;
  if (v51)
  {
    browser_setModeInternal_cold_14(v51);
    goto LABEL_199;
  }

  v52 = browser_updateBrokerBrowsing(a1);
  v48 = v52;
  if (v52)
  {
    browser_setModeInternal_cold_15(v52);
    goto LABEL_199;
  }

  v53 = browser_updateBonjourBrowsing(a1);
  v48 = v53;
  if (v53)
  {
    browser_setModeInternal_cold_16(v53);
    goto LABEL_199;
  }

  browser_stopNI(a1);
  v54 = browser_removeP2PServicesForNearbyDevices(a1);
  v48 = v54;
  if (v54)
  {
    browser_setModeInternal_cold_17(v54);
    goto LABEL_199;
  }

  CMBaseObjectGetDerivedStorage();
  v55 = CFDictionaryCopyKeys();
  v56 = v55;
  if (!v55)
  {
    v106 = 0;
    goto LABEL_152;
  }

  v57 = CFArrayGetCount(v55);
  if (v57 < 1)
  {
LABEL_93:
    CFRelease(v56);
LABEL_151:
    v106 = 0;
LABEL_152:
    browser_setModeInternal_cold_36(v5, &v112, a1);
    goto LABEL_153;
  }

  v58 = 0;
  while (1)
  {
    v59 = CFArrayGetValueAtIndex(v56, v58);
    if (!v59)
    {
      browser_setModeInternal_cold_19();
      v48 = -6762;
      goto LABEL_164;
    }

    v60 = browser_updateEventInfoForDevice(a1, v59);
    v48 = v60;
    if (v60)
    {
      break;
    }

    if (v57 == ++v58)
    {
      goto LABEL_93;
    }
  }

  browser_setModeInternal_cold_18(v60);
LABEL_164:
  CFRelease(v56);
  APSLogErrorAt();
LABEL_199:
  v106 = v48;
  APSLogErrorAt();
LABEL_156:
  if (cf)
  {
    CFRelease(cf);
  }

  return v106;
}

void sub_23D2AB6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const char *browser_getStringForMode(unsigned int a1, int *a2)
{
  if (a1 < 4)
  {
    return off_278BCA320[a1];
  }

  if (*a2 <= 60 && (*a2 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(a2, "char *browser_getStringForMode(APBrowserMode, LogCategory *)", 33554492, "Unrecognized browsing mode %d.\n", a1);
  }

  return "Unrecognized";
}

uint64_t browser_SetMode(uint64_t a1, unsigned __int16 a2)
{
  CMBaseObjectGetDerivedStorage();
  v2 = APSDispatchSyncTask();
  v3 = v2;
  if (v2)
  {
    browser_SetMode_cold_1(v2);
  }

  return v3;
}

uint64_t browser_removeP2PServicesForNearbyDevices(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v3 = CFDictionaryCopyKeys();
  theArray = v3;
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count)
    {
      v5 = CFGetAllocator(a1);
      Mutable = CFArrayCreateMutable(v5, 3, MEMORY[0x277CBF128]);
      v7 = Mutable;
      if (Mutable)
      {
        CFArrayAppendValue(Mutable, @"AirPlayP2PBonjourInfo");
        CFArrayAppendValue(v7, @"AirPlayNANFullBonjourInfo");
        CFArrayAppendValue(v7, @"AirPlayNANPartialBonjourInfo");
        if (Count < 1)
        {
LABEL_9:
          v10 = 0;
        }

        else
        {
          v8 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
            if (!ValueAtIndex)
            {
              APSLogErrorAt();
              v10 = 4294960534;
              goto LABEL_10;
            }

            if (!CFDictionaryGetValue(*(DerivedStorage + 216), ValueAtIndex))
            {
              break;
            }

            CFArrayGetCount(v7);
            CFArrayApplyBlock();
            if (Count == ++v8)
            {
              goto LABEL_9;
            }
          }

          APSLogErrorAt();
          v10 = 4294960569;
        }
      }

      else
      {
        APSLogErrorAt();
        v7 = 0;
        v10 = 4294960568;
      }
    }

    else
    {
      v10 = 0;
      v7 = 0;
    }

LABEL_10:
    CFRelease(theArray);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v14, 8);
  return v10;
}

void sub_23D2ABA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t browser_ensureWiFiPowerChangedListeningStarted(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[196] || DerivedStorage[197])
  {
    return 0;
  }

  if (DerivedStorage[192])
  {
    started = browser_startWiFiPowerChangedListener(a1);
    if (started)
    {
LABEL_9:
      APSLogErrorAt();
    }
  }

  else
  {
    DerivedStorage[197] = 1;
    started = browser_ensureWiFiAvailableListeningStarted(a1);
    if (started)
    {
      goto LABEL_9;
    }
  }

  return started;
}

uint64_t browser_ensureAWDLSoloSupportedListeningStarted(const void *a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 131))
  {
    return 0;
  }

  v3 = DerivedStorage;
  if (*(DerivedStorage + 130))
  {
    return 0;
  }

  if (APSIsVirtualMachine())
  {
    v4 = OUTLINED_FUNCTION_1_29();
    if (!(v8 ^ v9 | v7))
    {
LABEL_11:
      *(v3 + 131) = 1;
      v12 = @"isAWDLSoloSupported";
      v13[0] = MEMORY[0x277CBEC28];
      v10 = browser_handleConnectivityHelperEventInternal(a1, 8, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1]);
      if (!v10)
      {
        return v10;
      }

LABEL_14:
      APSLogErrorAt();
      return v10;
    }

    if (v6 == -1)
    {
      if (!OUTLINED_FUNCTION_7(v4))
      {
        goto LABEL_11;
      }

      v4 = *v3;
    }

    OUTLINED_FUNCTION_11(v4, "OSStatus browser_ensureAWDLSoloSupportedListeningStarted(APBrowserRef)", v5, "Ignoring AWDL Solo Supported listener start on VirtualMachine\n");
    goto LABEL_11;
  }

  v10 = APConnectivityHelperRegisterForEvent(*(v3 + 184), a1, 8);
  if (v10)
  {
    goto LABEL_14;
  }

  *(v3 + 131) = 1;
  return v10;
}

uint64_t browser_updateBTLEBrowsing(CFStringRef (__cdecl *a1)(const void *))
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = *(v3 + 24);
  if (v4 >= 4)
  {
    v7 = v3;
    v8 = *v3;
    if (*v8 <= 60)
    {
      if (*v8 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_38;
        }

        v8 = *v7;
        v4 = *(v7 + 24);
      }

      LogPrintF(v8, "OSStatus browser_getBTLEMode(APBrowserRef, APBrowserBTLEMode *)", 33554492, "Unhandled browser mode %d.\n", v4);
    }

LABEL_38:
    v38 = 4294960534;
    goto LABEL_39;
  }

  v5 = 0x2000100010000uLL >> (16 * v4);
  v6 = APBrowserBTLEManagerSetMode(*(DerivedStorage + 96), v5 & 3);
  if (v6)
  {
    v38 = v6;
    browser_updateBTLEBrowsing_cold_1(v6);
    return v38;
  }

  if (v5 != 2)
  {
    if (v5 == 1)
    {
      browser_ensureConnectivityCheckTimerStopped(a1);
    }

    else
    {
      if (*(CMBaseObjectGetDerivedStorage() + 112))
      {
        handler.version = MEMORY[0x277D85DD0];
        handler.info = 3221225472;
        handler.retain = __browser_flushAllBTLEDevices_block_invoke;
        handler.release = &__block_descriptor_40_e15_v24__0r_v8r_v16l;
        handler.copyDescription = a1;
        CFDictionaryApplyBlock();
      }

      CFDictionaryRemoveAllValues(*(DerivedStorage + 112));
      updated = browser_updateAVDevicePresent(a1);
      if (updated)
      {
        v38 = updated;
        browser_updateBTLEBrowsing_cold_6(updated);
        return v38;
      }

      browser_ensureConnectivityCheckTimerStopped(a1);
      v33 = CMBaseObjectGetDerivedStorage();
      v34 = *(v33 + 136);
      if (!v34)
      {
        return 0;
      }

      SCDynamicStoreSetDispatchQueue(v34, 0);
      v35 = *(v33 + 136);
      if (v35)
      {
        CFRelease(v35);
        *(v33 + 136) = 0;
      }

      CFRelease(a1);
      v36 = *v33;
      v37 = **v33;
      if (v37 > 40)
      {
        return 0;
      }

      if (v37 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return 0;
        }

        v36 = *v33;
      }

      LogPrintF(v36, "OSStatus browser_ensureIPv4ListenerStopped(APBrowserRef)", 33554472, "IPv4 listener stopped.\n");
    }

    return 0;
  }

  v9 = CMBaseObjectGetDerivedStorage();
  v10 = v9;
  if (!*(v9 + 120))
  {
    v11 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v9 + 8));
    *(v10 + 120) = v11;
    if (!v11)
    {
      browser_updateBTLEBrowsing_cold_5(a1);
      return 4294960568;
    }

    handler.version = MEMORY[0x277D85DD0];
    handler.info = 3221225472;
    handler.retain = __browser_ensureConnectivityCheckTimerStarted_block_invoke;
    handler.release = &__block_descriptor_40_e5_v8__0l;
    handler.copyDescription = a1;
    dispatch_source_set_event_handler(v11, &handler);
    CFRetain(a1);
    v12 = *(v10 + 120);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __browser_ensureConnectivityCheckTimerStarted_block_invoke_2;
    v40[3] = &__block_descriptor_40_e5_v8__0l;
    v40[4] = a1;
    dispatch_source_set_cancel_handler(v12, v40);
    v13 = *(v10 + 120);
    v14 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(v13, v14, 0x2540BE400uLL, 0x3B9ACA00uLL);
    dispatch_resume(*(v10 + 120));
  }

  *(v10 + 128) = 1;
  v15 = CMBaseObjectGetDerivedStorage();
  handler.version = 0;
  memset(&handler.retain, 0, 24);
  handler.info = a1;
  if (*(v15 + 136))
  {
    return 0;
  }

  v16 = v15;
  v17 = CFGetAllocator(a1);
  v18 = SCDynamicStoreCreate(v17, @"APBrowser:IPv4Listener", browser_handleIPv4EventInternal, &handler);
  if (v18)
  {
LABEL_16:
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (!Mutable)
    {
      browser_updateBTLEBrowsing_cold_4();
      v38 = 4294960568;
      if (!v18)
      {
LABEL_52:
        if (!v38)
        {
          return v38;
        }

        goto LABEL_39;
      }

LABEL_51:
      CFRelease(v18);
      goto LABEL_52;
    }

    v21 = Mutable;
    v22 = *MEMORY[0x277CE1648];
    v23 = *MEMORY[0x277CE1628];
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, *MEMORY[0x277CE1648], *MEMORY[0x277CE1628], *MEMORY[0x277CE1688]);
    if (NetworkInterfaceEntity)
    {
      v25 = NetworkInterfaceEntity;
      CFArrayAppendValue(v21, NetworkInterfaceEntity);
      CFRelease(v25);
      v26 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, v22, v23, *MEMORY[0x277CE16A8]);
      if (v26)
      {
        v27 = v26;
        CFArrayAppendValue(v21, v26);
        CFRelease(v27);
        if (SCDynamicStoreSetNotificationKeys(v18, 0, v21))
        {
          goto LABEL_22;
        }

        if (SCError())
        {
          v28 = SCError();
          if (!v28)
          {
LABEL_22:
            if (SCDynamicStoreSetDispatchQueue(v18, *(v16 + 8)))
            {
              goto LABEL_25;
            }

            if (SCError())
            {
              v29 = SCError();
              if (!v29)
              {
LABEL_25:
                *(v16 + 136) = v18;
                CFRetain(a1);
                v30 = *v16;
                v31 = **v16;
                if (v31 <= 40)
                {
                  if (v31 == -1)
                  {
                    if (!_LogCategory_Initialize())
                    {
                      goto LABEL_47;
                    }

                    v30 = *v16;
                  }

                  LogPrintF(v30, "OSStatus browser_ensureIPv4ListenerStarted(APBrowserRef)", 33554472, "IPv4 listener started.\n");
                }

LABEL_47:
                v38 = 0;
                v18 = 0;
                goto LABEL_50;
              }

              v38 = v29;
            }

            else
            {
              v38 = 4294960596;
            }

            goto LABEL_49;
          }

          v38 = v28;
        }

        else
        {
          v38 = 4294960596;
        }

LABEL_49:
        APSLogErrorAt();
        goto LABEL_50;
      }

      browser_updateBTLEBrowsing_cold_2();
    }

    else
    {
      browser_updateBTLEBrowsing_cold_3();
    }

    v38 = 4294960568;
LABEL_50:
    CFRelease(v21);
    if (!v18)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  if (SCError())
  {
    v19 = SCError();
    if (!v19)
    {
      goto LABEL_16;
    }

    v38 = v19;
  }

  else
  {
    v38 = 4294960596;
  }

  APSLogErrorAt();
LABEL_39:
  APSLogErrorAt();
  return v38;
}

uint64_t APBrowserBTLEManagerSetMode(uint64_t a1, __int16 a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = *(a1 + 16);
  v4 = [v3 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APBrowserBTLEManagerSetMode_block_invoke;
  block[3] = &unk_278BC6D70;
  block[4] = v3;
  block[5] = &v9;
  v8 = a2;
  dispatch_sync(v4, block);
  v5 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void sub_23D2AC330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__APBrowserBTLEManagerSetMode_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) setBTLEMode:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_9(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 33554482, a4);
}

uint64_t OUTLINED_FUNCTION_6_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);

  return [v8 countByEnumeratingWithState:va objects:va1 count:16];
}

uint64_t OUTLINED_FUNCTION_6_5@<X0>(size_t dataLength@<X2>, CMBlockBufferRef *a2@<X8>, CMBlockBufferRef *blockBufferOut)
{

  return CMBlockBufferCreateWithMemoryBlock(v3, 0, dataLength, v4, 0, 0, dataLength, 1u, a2);
}

uint64_t OUTLINED_FUNCTION_6_8(uint64_t a1)
{

  return CFDictionaryGetTypedValue();
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1)
{

  return _LogCategory_Initialize();
}

uint64_t OUTLINED_FUNCTION_8(uint64_t a1)
{

  return _LogCategory_Initialize();
}

uint64_t OUTLINED_FUNCTION_15(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 33554522, a4);
}

uint64_t OUTLINED_FUNCTION_7_0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 33554462, a4);
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t a1)
{

  return _LogCategory_Initialize();
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1)
{

  return FigSimpleMutexCheckIsLockedOnThisThread();
}

Float64 OUTLINED_FUNCTION_5_0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, CMTime *time, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 timea, uint64_t time_16)
{
  timea = *a2;
  time_16 = *(a2 + 2);

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_11(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 33554472, a4);
}

uint64_t OUTLINED_FUNCTION_5_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  return [v28 countByEnumeratingWithState:&a19 objects:va count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_5_4(uint64_t a1, uint64_t a2)
{

  return APSSignalErrorAt();
}

uint64_t OUTLINED_FUNCTION_5_13(uint64_t result)
{
  *(v2 + 8 * *(v1 + 672)) += result - *(v1 + 688);
  *(v1 + 688) = result;
  return result;
}

void OUTLINED_FUNCTION_11_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t block, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18)
{
  a18 = v22;
  a14 = v20;
  a15 = v19;
  a16 = v18;
  a17 = v21;

  dispatch_async(a1, &block);
}

uint64_t OUTLINED_FUNCTION_11_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  return [v20 countByEnumeratingWithState:va objects:v21 - 216 count:{16, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_11_5(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 33554482, a4);
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t a1)
{

  return _LogCategory_Initialize();
}

uint64_t OUTLINED_FUNCTION_4(unsigned __int16 a1, uint64_t a2)
{

  return APSSignalErrorAt();
}

_BYTE *OUTLINED_FUNCTION_9_2(const void *a1, uint64_t a2)
{

  return httpconnection_callEventCallbacks(a1, a2, v2, 0, 1u, 0);
}

uint64_t _APConnectivityHelperHandleDynamicStoreNetworkEntityValueChange(uint64_t result, CFArrayRef theArray, uint64_t a3)
{
  if (theArray && !*(a3 + 232))
  {
    if (*(a3 + 168))
    {
      CFArrayGetCount(theArray);
      return CFArrayApplyBlock();
    }
  }

  return v3;
}

uint64_t OUTLINED_FUNCTION_14(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14)
{
  a11 = v15;
  a12 = v14;
  a13 = v16;
  a14 = v17;

  return [a1 activateWithCompletion:{&a9, a4, a5, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_14_0(uint64_t a1, uint64_t a2, CMTime *time2, uint64_t a4, CMTime *time1, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 time2a, uint64_t time2_16, uint64_t a13, uint64_t time1a)
{
  time2a = *(v14 + 400);
  time2_16 = *(v14 + 416);

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_14_2(uint64_t a1, uint64_t a2)
{

  return APSSignalErrorAt();
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 33554492, a4);
}

uint64_t OUTLINED_FUNCTION_2_3(void *a1, const char *a2, uint64_t a3)
{

  return [a1 errorWithDomain:a3 code:-6728 userInfo:0];
}

uint64_t OUTLINED_FUNCTION_2_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t *a24, uint64_t a25, uint64_t a26)
{
  a23 = 0;
  a24 = &a23;
  a25 = v26;
  a26 = 0;
  return *(a1 + 16);
}

void OUTLINED_FUNCTION_2_10(NSObject *a1)
{

  dispatch_source_set_event_handler_f(a1, connectionlistener_listenerSocketEventHandler);
}

uint64_t OUTLINED_FUNCTION_2_15(uint64_t a1)
{

  return _LogCategory_Initialize();
}

uint64_t OUTLINED_FUNCTION_2_20(unsigned __int16 a1, uint64_t a2)
{

  return kdebug_trace();
}

void browser_ensureConnectivityCheckTimerStopped(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  v3 = *(DerivedStorage + 120);
  if (v3)
  {
    dispatch_source_cancel(*(DerivedStorage + 120));
    dispatch_release(v3);
    *(v2 + 120) = 0;
  }

  *(v2 + 128) = 0;
}

uint64_t browser_updateRapportBrowsing(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = CMBaseObjectGetDerivedStorage();
  if (!*(v2 + 264) || (v3 = v2, v4 = *(v2 + 24), v4 < 2))
  {
    v6 = APBrowserRapportManagerSetMode(*(DerivedStorage + 144), 0);
    if (v6)
    {
      v5 = v6;
      goto LABEL_18;
    }

    v7 = CMBaseObjectGetDerivedStorage();
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v9 = Mutable;
      v10 = CFRetain(*(v7 + 160));
      v11 = *(v7 + 160);
      *(v7 + 160) = v9;
      CFRetain(v9);
      if (v11)
      {
        CFRelease(v11);
      }

      CFDictionaryApplyBlock();
      CFDictionaryRemoveAllValues(*(v7 + 152));
      CFDictionaryRemoveAllValues(*(v7 + 168));
      if (v10)
      {
        CFRelease(v10);
      }

      CFRelease(v9);
      return 0;
    }

    else
    {
      browser_updateRapportBrowsing_cold_1();
      return 4294960568;
    }
  }

  if (v4 - 2 >= 2)
  {
    v12 = *v2;
    v13 = **v3;
    if (v13 <= 60)
    {
      if (v13 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_17;
        }

        v12 = *v3;
        v4 = *(v3 + 24);
      }

      LogPrintF(v12, "OSStatus browser_getRapportMode(APBrowserRef, APBrowserRapportMode *)", 33554492, "Unhandled browser mode %d.\n", v4);
    }

LABEL_17:
    v5 = 4294960534;
LABEL_18:
    APSLogErrorAt();
    return v5;
  }

  v5 = APBrowserRapportManagerSetMode(*(DerivedStorage + 144), 1);
  if (v5)
  {
    goto LABEL_18;
  }

  return v5;
}

uint64_t APBrowserRapportManagerSetMode(uint64_t a1, __int16 a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APBrowserRapportManagerSetMode_block_invoke;
  block[3] = &unk_278BC8090;
  block[4] = &v7;
  block[5] = a1;
  v6 = a2;
  dispatch_sync(v2, block);
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t __APBrowserRapportManagerSetMode_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (*(v2 + 51))
  {
    v4 = -72284;
    goto LABEL_10;
  }

  v3 = *(result + 48);
  if (*(v2 + 48) == v3)
  {
    goto LABEL_19;
  }

  if (v3 == 1)
  {
    v5 = APBrowserRapportManager_ensurePreferencesUpdated(*(result + 40), 0);
    if (v5)
    {
      v4 = v5;
    }

    else
    {
      if (gLogCategory_APBrowserRapportManager <= 40 && (gLogCategory_APBrowserRapportManager != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APBrowserRapportManager)))
      {
        OUTLINED_FUNCTION_5();
        LogPrintF(v6, v7, v8, v9, "Detailed");
      }

      *(v2 + 48) = 1;
      result = APBrowserRapportManager_update(v2);
      if (!result)
      {
        goto LABEL_19;
      }

      v4 = result;
    }

    APSLogErrorAt();
    goto LABEL_24;
  }

  if (!*(result + 48))
  {
    result = APBrowserRapportManager_stop(*(result + 40));
    if (result)
    {
      v4 = result;
LABEL_24:
      result = APSLogErrorAt();
      goto LABEL_10;
    }

LABEL_19:
    v4 = 0;
    goto LABEL_10;
  }

  if (gLogCategory_APBrowserRapportManager <= 90)
  {
    if (gLogCategory_APBrowserRapportManager != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_APBrowserRapportManager, "OSStatus APBrowserRapportManager_setMode(APBrowserRapportManagerRef, APBrowserRapportMode)", 33554522, "Unrecognized Rapport advertiser mode %d\n", v3);
    }
  }

  v4 = -6705;
LABEL_10:
  *(*(*(v1 + 32) + 8) + 24) = v4;
  return result;
}

uint64_t APBrowserRapportManager_ensurePreferencesUpdated(_BYTE *a1, int a2)
{
  if (a1[51])
  {
    return 4294895012;
  }

  if (!a2 && a1[52])
  {
    return 0;
  }

  a1[50] = 1;
  v3 = APBrowserRapportManager_update(a1);
  if (v3)
  {
    APSLogErrorAt();
  }

  else
  {
    a1[52] = 1;
  }

  return v3;
}

uint64_t APBrowserRapportManager_update(uint64_t a1)
{
  if (*(a1 + 50) && *(a1 + 48))
  {
    if (!*(a1 + 72))
    {
      if (gLogCategory_APBrowserRapportManager <= 40 && (gLogCategory_APBrowserRapportManager != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APBrowserRapportManager)))
      {
        OUTLINED_FUNCTION_5();
        LogPrintF(v2, v3, v4, v5);
      }

      v10 = objc_alloc_init(MEMORY[0x277D44160]);
      if (!v10)
      {
        v13 = 4294895016;
        APSLogErrorAt();
        APSLogErrorAt();
        return v13;
      }

      v11 = v10;
      [v10 setDispatchQueue:*(a1 + 32)];
      [v11 setServiceType:@"com.apple.airplay.discovery.service"];
      [v11 setControlFlags:{objc_msgSend(v11, "controlFlags") | 2}];
      v12 = *(a1 + 40);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __APBrowserRapportManager_ensureScanningStarted_block_invoke;
      v21[3] = &__block_descriptor_40_e31_v16__0__RPCompanionLinkDevice_8l;
      v21[4] = v12;
      [v11 setDeviceFoundHandler:v21];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __APBrowserRapportManager_ensureScanningStarted_block_invoke_3;
      v20[3] = &__block_descriptor_40_e31_v16__0__RPCompanionLinkDevice_8l;
      v20[4] = v12;
      [v11 setDeviceLostHandler:v20];
      OUTLINED_FUNCTION_1_2();
      v16 = 3221225472;
      v17 = __APBrowserRapportManager_ensureScanningStarted_block_invoke_5;
      v18 = &__block_descriptor_40_e17_v16__0__NSError_8l;
      v19 = v12;
      [v11 activateWithCompletion:v15];
      *(a1 + 72) = v11;
    }
  }

  else if (*(a1 + 72))
  {
    if (gLogCategory_APBrowserRapportManager <= 40 && (gLogCategory_APBrowserRapportManager != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APBrowserRapportManager)))
    {
      OUTLINED_FUNCTION_5();
      LogPrintF(v6, v7, v8, v9);
    }

    [*(a1 + 72) invalidate];

    *(a1 + 72) = 0;
    CFDictionaryRemoveAllValues(*(a1 + 80));
  }

  return 0;
}

void *OUTLINED_FUNCTION_1_7()
{

  return malloc_type_calloc(1uLL, 0x20uLL, 0x10620408E24C83AuLL);
}

uint64_t OUTLINED_FUNCTION_1_13(uint64_t a1, uint64_t a2)
{

  return APSSignalErrorAt();
}

void OUTLINED_FUNCTION_1_14(NSObject *a1)
{

  dispatch_source_set_cancel_handler_f(a1, connectionlistener_listenerSocketCancelHandler);
}

Float64 OUTLINED_FUNCTION_1_23(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *time, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 timea, uint64_t time_16)
{
  timea = *a1;
  time_16 = *(a1 + 2);

  return CMTimeGetSeconds(&timea);
}

uint64_t browser_updateBrokerBrowsing(const void *a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 24);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (!v2)
  {
    browser_updateBrokerBrowsing_cold_3();
    return 0;
  }

  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v5 = *(DerivedStorage + 344);
  if (v5)
  {
    if (!*(v4 + 352))
    {
      *&v10 = browser_handleBrokerGroupAddOrUpdate;
      *(&v10 + 1) = browser_handleBrokerGroupAddOrUpdate;
      *&v11 = browser_handleBrokerGroupRemove;
      *(&v11 + 1) = browser_handleBrokeredReceiverAddOrUpdate;
      *&v12 = browser_handleBrokeredReceiverAddOrUpdate;
      *(&v12 + 1) = browser_handleBrokeredReceiverRemoved;
      v6 = APBrokerManagerSetDelegate(v5, a1, &v10);
      if (v6)
      {
        v8 = v6;
        browser_updateBrokerBrowsing_cold_1(v6);
        goto LABEL_12;
      }

      *(v4 + 352) = 1;
      v5 = *(v4 + 344);
    }

    v7 = APBrokerManagerSetBrowseMode(v5, v2);
    if (!v7)
    {
      return 0;
    }

    v8 = v7;
    browser_updateBrokerBrowsing_cold_2(v7);
LABEL_12:
    APSLogErrorAt();
    return v8;
  }

  return 0;
}

uint64_t APBrokerManagerSetDelegate(uint64_t a1, const void *a2, __int128 *a3)
{
  OUTLINED_FUNCTION_6_1(a1);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  v6 = *(v3 + 192);
  if (v6)
  {
    CFRelease(v6);
    *(v3 + 192) = 0;
  }

  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  ++*(v3 + 200);
  if (a3)
  {
    if (a2)
    {
      v7 = CFRetain(a2);
    }

    else
    {
      v7 = 0;
    }

    *(v3 + 192) = v7;
    v8 = *a3;
    v9 = a3[2];
    *(v3 + 160) = a3[1];
    *(v3 + 176) = v9;
    *(v3 + 144) = v8;
    FigSimpleMutexCheckIsLockedOnThisThread();
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t APBrokerManagerSetBrowseMode(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_6_1(a1);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if (*(v2 + 130) == a2)
  {
    updated = 0;
  }

  else
  {
    *(v2 + 130) = a2;
    global_queue = dispatch_get_global_queue(17, 0);
    dispatch_async(global_queue, &__block_literal_global_0);
    if (gLogCategory_APBrokerManager <= 30 && (gLogCategory_APBrokerManager != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APBrokerManager)))
    {
      OUTLINED_FUNCTION_7_0(&gLogCategory_APBrokerManager, "OSStatus APBrokerManagerSetBrowseMode(APBrokerManagerRef, APBrowserMode)", v5, "[%{ptr}] Browser browse mode set to %d\n");
    }

    updated = _APBrokerManagerUpdateBrowsing(v2);
    if (updated)
    {
      APSLogErrorAt();
    }
  }

  FigSimpleMutexUnlock();
  return updated;
}

uint64_t _APBrokerManagerUpdateBrowsing(uint64_t a1)
{
  OUTLINED_FUNCTION_6_1(a1);
  FigSimpleMutexCheckIsLockedOnThisThread();
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (!*(v1 + 280))
  {
    *(v1 + 280) = 1;
    CFRetain(v1);
    v2 = *(v1 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___APBrokerManagerEnsureKnownNetworkProfileMonitoringStarted_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v1;
    dispatch_async(v2, block);
  }

  FigSimpleMutexCheckIsLockedOnThisThread();
  v3 = *(v1 + 130);
  if ((v3 - 2) < 2)
  {
LABEL_15:
    v3 = 2;
    goto LABEL_20;
  }

  if (*(v1 + 130))
  {
    if (v3 == 1)
    {
      if (APSSettingsGetInt64())
      {
        OUTLINED_FUNCTION_5_1();
        if (v6 ^ v7 | v5 && (v4 != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APBrokerManager)))
        {
          OUTLINED_FUNCTION_3_1();
          LogPrintF(v8, v9, v10, v11, v1);
        }

        goto LABEL_19;
      }

      if (!*(v1 + 281))
      {
        if (gLogCategory_APBrokerManager <= 30 && (gLogCategory_APBrokerManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APBrokerManager, "APBrokerManagerBrowseMode _APBrokerManagerGetBrokerBrowseMode(APBrokerManagerRef)", 33554462, "[%{ptr}] Will not request Brokered Discovery in Presence mode, current network is not a public AirPlay network", v1);
        }

        goto LABEL_19;
      }

      goto LABEL_15;
    }

    if (gLogCategory_APBrokerManager <= 60)
    {
      if (gLogCategory_APBrokerManager == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_19;
        }

        v3 = *(v1 + 130);
      }

      LogPrintF(&gLogCategory_APBrokerManager, "APBrokerManagerBrowseMode _APBrokerManagerGetBrokerBrowseMode(APBrokerManagerRef)", 33554492, "[%{ptr}] Unhandled browse mode: %d", v1, v3);
    }

LABEL_19:
    v3 = 0;
  }

LABEL_20:
  if (v3 != *(v1 + 128))
  {
    *(v1 + 128) = v3;
    if (gLogCategory_APBrokerManager <= 30)
    {
      if (gLogCategory_APBrokerManager == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_25;
        }

        v3 = *(v1 + 128);
      }

      LogPrintF(&gLogCategory_APBrokerManager, "OSStatus _APBrokerManagerUpdateBrowsing(APBrokerManagerRef)", 33554462, "[%{ptr}] Brokered browse mode set to %d\n", v1, v3);
LABEL_25:
      LODWORD(v3) = *(v1 + 128);
    }
  }

  if (v3 == 2)
  {
    FigSimpleMutexCheckIsLockedOnThisThread();
    if (!*(v1 + 137))
    {
      CFDictionaryApplyBlock();
      OUTLINED_FUNCTION_5_1();
      if (v6 ^ v7 | v5 && (v18 != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APBrokerManager)))
      {
        OUTLINED_FUNCTION_3_1();
        LogPrintF(v19, v20, v21, v22, v1);
      }

      *(v1 + 137) = 1;
    }
  }

  else
  {
    if (v3 != 1)
    {
      LODWORD(v3) = 0;
    }

    if (*(v1 + 132))
    {
      v12 = 1;
    }

    else
    {
      v12 = v3;
    }

    FigSimpleMutexCheckIsLockedOnThisThread();
    if (*(v1 + 137))
    {
      CFDictionaryApplyBlock();
      OUTLINED_FUNCTION_5_1();
      if (v6 ^ v7 | v5)
      {
        if (v13 != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APBrokerManager))
        {
          OUTLINED_FUNCTION_3_1();
          LogPrintF(v14, v15, v16, v17, v1);
        }
      }
    }

    *(v1 + 137) = 0;
    if (!v12)
    {
      FigSimpleMutexCheckIsLockedOnThisThread();
      if (*(v1 + 136))
      {
        _APBrokerManagerDiscoveryDelegateStop(v1);
        _APBrokerManagerRemoveAllBrokerGroups(v1);
        OUTLINED_FUNCTION_5_1();
        if (v6 ^ v7 | v5 && (v23 != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APBrokerManager)))
        {
          OUTLINED_FUNCTION_3_1();
          LogPrintF(v24, v25, v26, v27, v1);
        }

        v29 = 0;
        *(v1 + 136) = 0;
        return v29;
      }

      return 0;
    }
  }

  FigSimpleMutexCheckIsLockedOnThisThread();
  if (*(v1 + 136))
  {
    return 0;
  }

  LODWORD(block[0]) = 0;
  if (*(v1 + 48))
  {
    v28 = _APBrokerManagerCopyReferencedObjectIfNecessary(*(v1 + 72), block);
    if (LODWORD(block[0]) || (LODWORD(block[0]) = (*(v1 + 48))(v28, *(v1 + 80))) != 0)
    {
      APSLogErrorAt();
      if (!v28)
      {
LABEL_57:
        v29 = LODWORD(block[0]);
        if (LODWORD(block[0]))
        {
          APSLogErrorAt();
          APSLogErrorAt();
          return v29;
        }

        goto LABEL_58;
      }
    }

    else if (!v28)
    {
      goto LABEL_57;
    }

    CFRelease(v28);
    goto LABEL_57;
  }

LABEL_58:
  OUTLINED_FUNCTION_5_1();
  if (v6 ^ v7 | v5 && (v30 != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APBrokerManager)))
  {
    OUTLINED_FUNCTION_3_1();
    LogPrintF(v31, v32, v33, v34, v1);
  }

  v29 = 0;
  *(v1 + 136) = 1;
  return v29;
}

uint64_t OUTLINED_FUNCTION_3_4(uint64_t a1, uint64_t a2)
{

  return APSSignalErrorAt();
}

uint64_t OUTLINED_FUNCTION_3_8(uint64_t a1, uint64_t a2)
{

  return APSSignalErrorAt();
}

uint64_t OUTLINED_FUNCTION_3_10(uint64_t a1, uint64_t a2)
{

  return APSSignalErrorAt();
}

uint64_t OUTLINED_FUNCTION_3_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{

  return APSAtomicMessageQueueSendMessage();
}

uint64_t _APBrokerManagerCopyReferencedObjectIfNecessary(uint64_t result, int *a2)
{
  if (a2)
  {
    if (result && (result = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
    {
      _APBrokerManagerCopyReferencedObjectIfNecessary_cold_1();
      result = 0;
      v3 = -6723;
    }

    else
    {
      v3 = 0;
    }

    *a2 = v3;
  }

  else
  {
    _APBrokerManagerCopyReferencedObjectIfNecessary_cold_2();
    return 0;
  }

  return result;
}

uint64_t BonjourDiscoveryDelegateStart(uint64_t a1, void *a2)
{
  v2 = BonjourBrowser_Start();
  v3 = v2;
  if (v2)
  {
    BonjourDiscoveryDelegateStart_cold_1(v2);
  }

  return v3;
}

uint64_t browser_updateBonjourBrowsing(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  browser_ensureWiFiAvailableListeningStarted(a1);
  v3 = CMBaseObjectGetDerivedStorage();
  if (!*(v3 + 195))
  {
    v4 = v3;
    if (!*(v3 + 193))
    {
      if (!APSIsVirtualMachine())
      {
        if (!APConnectivityHelperRegisterForEvent(*(v4 + 184), a1, 7))
        {
          *(v4 + 195) = 1;
          goto LABEL_13;
        }

LABEL_23:
        APSLogErrorAt();
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_3_12();
      if (v9 ^ v10 | v8)
      {
        if (v7 == -1)
        {
          if (!OUTLINED_FUNCTION_7(v5))
          {
            goto LABEL_12;
          }

          v5 = *v4;
        }

        OUTLINED_FUNCTION_11(v5, "OSStatus browser_ensureAWDLAvailableListeningStarted(APBrowserRef)", v6, "Ignoring AWDL listener start on VirtualMachine\n");
      }

LABEL_12:
      *(v4 + 195) = 1;
      if (!browser_handleConnectivityHelperEventInternal(a1, 7, 0))
      {
        goto LABEL_13;
      }

      goto LABEL_23;
    }
  }

LABEL_13:
  browser_ensureAWDLSoloSupportedListeningStarted(a1);
  v11 = CMBaseObjectGetDerivedStorage();
  v12 = *(v11 + 24);
  if (v12 >= 4)
  {
    v14 = v11;
    v15 = *v11;
    if (*v15 <= 60)
    {
      if (*v15 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_20;
        }

        v15 = *v14;
        v12 = *(v14 + 24);
      }

      LogPrintF(v15, "OSStatus browser_getBonjourMode(APBrowserRef, APBonjourBrowserMode *)", 33554492, "Unhandled browser mode %d.\n", v12);
    }

LABEL_20:
    v13 = 4294960534;
LABEL_21:
    APSLogErrorAt();
    return v13;
  }

  v13 = APBonjourBrowserSetMode(*(DerivedStorage + 88), (0x2000300010000uLL >> (16 * v12)) & 3);
  if (v13)
  {
    goto LABEL_21;
  }

  return v13;
}

uint64_t browser_ensureWiFiAvailableListeningStarted(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 194))
  {
    return 0;
  }

  v3 = DerivedStorage;
  if (*(DerivedStorage + 192))
  {
    return 0;
  }

  if (APSIsVirtualMachine())
  {
    v4 = OUTLINED_FUNCTION_2_21();
    if (!(v8 ^ v9 | v7))
    {
LABEL_11:
      *(v3 + 194) = 1;
      v10 = browser_handleConnectivityHelperEventInternal(a1, 1, 0);
      if (!v10)
      {
        return v10;
      }

LABEL_14:
      APSLogErrorAt();
      return v10;
    }

    if (v6 == -1)
    {
      if (!OUTLINED_FUNCTION_7(v4))
      {
        goto LABEL_11;
      }

      v4 = *v3;
    }

    OUTLINED_FUNCTION_11(v4, "OSStatus browser_ensureWiFiAvailableListeningStarted(APBrowserRef)", v5, "Ignoring WiFi listener start on VirtualMachine\n");
    goto LABEL_11;
  }

  v10 = APConnectivityHelperRegisterForEvent(*(v3 + 184), a1, 1);
  if (v10)
  {
    goto LABEL_14;
  }

  *(v3 + 194) = 1;
  return v10;
}

uint64_t APBonjourBrowserSetMode(uint64_t a1, unsigned __int16 a2)
{
  v3 = a1;
  v4 = a2;
  dispatch_sync_f(*(a1 + 16), &v3, _APBonjourBrowserSetMode);
  return HIDWORD(v4);
}

void _APBonjourBrowserSetMode(unsigned __int16 *a1)
{
  v2 = *a1;
  v3 = a1[4];
  if (!*(*a1 + 32))
  {
    if (!*(v2 + 211))
    {
      goto LABEL_8;
    }

LABEL_4:
    LODWORD(v2) = 0;
LABEL_18:
    v7 = 0;
    goto LABEL_19;
  }

  do
  {
    OUTLINED_FUNCTION_14_1();
  }

  while (v4);
  if (*(v2 + 211))
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_16();
  if (v5)
  {
    goto LABEL_4;
  }

LABEL_8:
  if (!*(v2 + 216))
  {
LABEL_17:
    OUTLINED_FUNCTION_13_3();
    APSLogErrorAt();
    goto LABEL_18;
  }

  if (v3 >= 4)
  {
    if (gLogCategory_APBonjourBrowser <= 90 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APBonjourBrowser, "void _APBonjourBrowserSetMode(void *)", 33554522, "Unrecognized browsing mode %d.\n", v3);
    }

    goto LABEL_17;
  }

  v6 = OUTLINED_FUNCTION_1_7();
  v7 = v6;
  if (!v6)
  {
    APSLogErrorAt();
    LODWORD(v2) = -72210;
    goto LABEL_19;
  }

  *v6 = 0;
  v6[4] = v3;
  LODWORD(v2) = _APBonjourBrowserEnqueueOperation(v2, v6);
  if (!v2)
  {
    goto LABEL_18;
  }

  APSLogErrorAt();
LABEL_19:
  _APBonjourBrowserOperationDisposeNullSafe(v7);
  *(a1 + 3) = v2;
}

uint64_t _APBonjourBrowserEnqueueOperation(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = *(a1 + 32);
    do
    {
      v4 = v3;
      v3 = *(v3 + 24);
    }

    while (v3);
    if (!*(a1 + 211) && *v4 != 2)
    {
      do
      {
        OUTLINED_FUNCTION_14_1();
      }

      while (v7);
      v2 = (v6 + 24);
      goto LABEL_11;
    }

    return 0;
  }

  if (*(a1 + 211))
  {
    return 0;
  }

LABEL_11:
  *v2 = a2;
  *(a2 + 24) = 0;
  v5 = _APBonjourBrowserProcessOperationQueue(a1);
  if (v5)
  {
    APSLogErrorAt();
  }

  return v5;
}

uint64_t _APBonjourBrowserProcessOperationQueue(char *cf)
{
  v1 = *(cf + 4);
  if (v1)
  {
    v3 = (cf + 40);
    while (1)
    {
      v4 = *v1;
      if (v4 > 2)
      {
        break;
      }

      if (!*v1)
      {
        goto LABEL_12;
      }

      if (v4 == 1)
      {
        v15 = *(v1 + 1);
        v16 = *(cf + 6);
        if (v15)
        {
          CFRetain(*(v1 + 1));
        }

        *(cf + 6) = v15;
        if (v16)
        {
          CFRelease(v16);
        }

        goto LABEL_55;
      }

      if (v4 != 2)
      {
        goto LABEL_35;
      }

      if (*(v1 + 16))
      {
        v5 = 0;
      }

      else
      {
        v5 = _APBonjourBrowserSetModeInternal(cf, 0, 0, 0, v1 + 5);
        if (*(cf + 29))
        {
          if (gLogCategory_APBonjourBrowser <= 50 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
          {
            _APBonjourBrowserProcessOperationQueue_cold_1(cf + 10);
          }

          [*(cf + 29) invalidate];

          *(cf + 29) = 0;
        }
      }

      v6 = *(v1 + 5);
      *(v1 + 16) = v6 != 0;
      if (!v6)
      {
        _APBonjourBrowserHandleModeChangeCompleteInternal(cf, 0);
        _APBonjourBrowserDispatchEvent(cf, 3u, 0);
        v5 = 0;
        cf[211] = 1;
      }

LABEL_56:
      if (*(v1 + 16))
      {
        return v5;
      }

      v22 = *(cf + 4);
      if (!v22)
      {
        _APBonjourBrowserProcessOperationQueue_cold_4();
        return 4294895083;
      }

      *(cf + 4) = *(v22 + 24);
      _APBonjourBrowserOperationDisposeNullSafe(v1);
      v1 = *(cf + 4);
      if (!v1)
      {
        return 0;
      }
    }

    if (v4 - 3 <= 1)
    {
LABEL_12:
      if (gLogCategory_APBonjourBrowser <= 30 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
      {
        _APBonjourBrowserProcessOperationQueue_cold_2(v3);
      }

      v7 = v1 + 4;
      v8 = *v1;
      if (*v1)
      {
        v7 = v3;
      }

      v9 = *v7;
      if (v8 == 3)
      {
        v10 = 1;
      }

      else
      {
        v10 = cf[56];
        if (v8 == 4)
        {
          v11 = 1;
          goto LABEL_22;
        }
      }

      v11 = cf[57];
LABEL_22:
      if (*(v1 + 16))
      {
        if (gLogCategory_APBonjourBrowser <= 30)
        {
          if (gLogCategory_APBonjourBrowser != -1)
          {
LABEL_25:
            StringForMode = _APBonjourBrowserGetStringForMode(v9);
            v13 = "yes";
            if (v10)
            {
              v14 = "yes";
            }

            else
            {
              v14 = "no";
            }

            if (!v11)
            {
              v13 = "no";
            }

            LogPrintF(&gLogCategory_APBonjourBrowser, "OSStatus _APBonjourBrowserProcessOperationQueue(APBonjourBrowserRef)", 33554462, "[%{ptr}] Updating SetMode for event type %d: %s %s %s\n", cf, v8, StringForMode, v14, v13);
            goto LABEL_39;
          }

          if (_LogCategory_Initialize())
          {
            v8 = *v1;
            goto LABEL_25;
          }
        }

LABEL_39:
        v5 = 0;
LABEL_40:
        v17 = *(v1 + 5);
        *(v1 + 16) = v17 != 0;
        if (v17)
        {
          goto LABEL_56;
        }

        if (gLogCategory_APBonjourBrowser <= 30 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
        {
          v18 = *v1;
          v19 = _APBonjourBrowserGetStringForMode(v9);
          v20 = "yes";
          if (v10)
          {
            v21 = "yes";
          }

          else
          {
            v21 = "no";
          }

          if (!v11)
          {
            v20 = "no";
          }

          LogPrintF(&gLogCategory_APBonjourBrowser, "OSStatus _APBonjourBrowserProcessOperationQueue(APBonjourBrowserRef)", 33554462, "[%{ptr}] Completed SetMode for event type %d: %s %s %s\n", cf, v18, v19, v21, v20);
        }

        _APBonjourBrowserHandleModeChangeCompleteInternal(cf, v9);
        if (gLogCategory_APBonjourBrowser <= 30 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
        {
          _APBonjourBrowserProcessOperationQueue_cold_3(v3);
        }

        goto LABEL_55;
      }

      if (gLogCategory_APBonjourBrowser <= 30)
      {
        if (gLogCategory_APBonjourBrowser != -1)
        {
LABEL_64:
          v23 = _APBonjourBrowserGetStringForMode(v9);
          v24 = "yes";
          if (v10)
          {
            v25 = "yes";
          }

          else
          {
            v25 = "no";
          }

          if (!v11)
          {
            v24 = "no";
          }

          LogPrintF(&gLogCategory_APBonjourBrowser, "OSStatus _APBonjourBrowserProcessOperationQueue(APBonjourBrowserRef)", 33554462, "[%{ptr}] Initiating SetMode for event type %d: %s %s %s\n", cf, v8, v23, v25, v24);
          goto LABEL_70;
        }

        if (_LogCategory_Initialize())
        {
          v8 = *v1;
          goto LABEL_64;
        }
      }

LABEL_70:
      v5 = _APBonjourBrowserSetModeInternal(cf, v9, v10, v11, v1 + 5);
      goto LABEL_40;
    }

LABEL_35:
    if (gLogCategory_APBonjourBrowser <= 90)
    {
      if (gLogCategory_APBonjourBrowser == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_55;
        }

        v4 = *v1;
      }

      LogPrintF(&gLogCategory_APBonjourBrowser, "OSStatus _APBonjourBrowserProcessOperationQueue(APBonjourBrowserRef)", 33554522, "Unrecognized operation type: %hu\n", v4);
    }

LABEL_55:
    v5 = 0;
    goto LABEL_56;
  }

  return 0;
}

uint64_t _APBonjourBrowserSetModeInternal(uint64_t a1, uint64_t a2, int a3, int a4, _DWORD *a5)
{
  v104 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) == a2 && *(a1 + 56) == a3 && *(a1 + 57) == a4)
  {
    goto LABEL_112;
  }

  if (a3)
  {
    if (!*(a1 + 56))
    {
      *(a1 + 56) = 1;
      if (gLogCategory_APBonjourBrowser <= 50 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APBonjourBrowser, "OSStatus _APBonjourBrowserSetModeInternal(APBonjourBrowserRef, APBonjourBrowserMode, Boolean, Boolean, uint32_t *)", 33554482, "[%{ptr}] WiFi is now available", a1);
      }
    }
  }

  if (*(a1 + 57) != a4)
  {
    *(a1 + 57) = 1;
    if (gLogCategory_APBonjourBrowser <= 50 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APBonjourBrowser, "OSStatus _APBonjourBrowserSetModeInternal(APBonjourBrowserRef, APBonjourBrowserMode, Boolean, Boolean, uint32_t *)", 33554482, "[%{ptr}] AWDL is now available", a1);
    }
  }

  if (!a2)
  {
    v14 = OUTLINED_FUNCTION_7_3();
    _APBonjourBrowserStopBrowsing(v14, v15);
    v16 = OUTLINED_FUNCTION_7_3();
    _APBonjourBrowserStopBrowsingForP2PInfra(v16, v17);
    v18 = OUTLINED_FUNCTION_7_3();
    _APBonjourBrowserStopBrowsingOpenNAN(v18, v19);
    goto LABEL_111;
  }

  *buffer = 0;
  v100 = 0;
  v101 = 0;
  v9 = *(a1 + 88);
  if (APSIsDemoModeEnabled())
  {
    v10 = v9 | 0x30000000000000;
  }

  else
  {
    v10 = v9;
  }

  if (*(a1 + 208))
  {
    v11 = *(a1 + 57) && a2 == 2;
    if (v11)
    {
      v10 |= 0x400000000000000uLL;
    }
  }

  LOBYTE(v102) = 0;
  if (IsAppleTV() || APSIsAPMSpeaker())
  {
    LOBYTE(v102) = 1;
  }

  v12 = 33554462;
  if (IsAppleInternalBuild())
  {
    if (APSSettingsGetBooleanIfPresent())
    {
      v12 = 33554482;
    }

    else
    {
      v12 = 33554462;
    }
  }

  if ((v12 & 0x3E) >= gLogCategory_APBonjourBrowser && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_20();
    LogPrintF(&gLogCategory_APBonjourBrowser, "Boolean _APBonjourBrowserShouldDisableDirectLink()", v12, "%s discovery over USB and Thunderbolt\n", v13);
  }

  if (v102)
  {
    v20 = v10 | 0x43000000000000;
  }

  else
  {
    v20 = v10;
  }

  if (a2 == 1)
  {
    v20 |= 0x4000000000000000uLL;
  }

  if (*(a1 + 209))
  {
    v21 = v20 | 0x3000000000000000;
  }

  else
  {
    v21 = v20;
  }

  OUTLINED_FUNCTION_21();
  if (v23 ^ v24 | v11 && (v22 != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APBonjourBrowser)))
  {
    _APBonjourBrowserGetStringForMode(a2);
    OUTLINED_FUNCTION_20();
    if (*(a1 + 129))
    {
      v28 = v26;
    }

    else
    {
      v28 = v27;
    }

    if (*(a1 + 56))
    {
      v29 = v26;
    }

    else
    {
      v29 = v27;
    }

    if (!*(a1 + 57))
    {
      v26 = v27;
    }

    v97 = v29;
    v98 = v26;
    v96 = v28;
    OUTLINED_FUNCTION_11(&gLogCategory_APBonjourBrowser, "OSStatus _APBonjourBrowserStartBrowsingWithMode(APBonjourBrowserRef, APBonjourBrowserMode, uint32_t *)", v25, "Starting Bonjour browses: mode = %s trafficReduction = %s p2pAllow = %s local = %s wifiSystemReady = %s awdlSystemReady = %s\n");
  }

  buffer[0] = 0;
  v30 = *(a1 + 48);
  if (!v30 || CFStringGetCString(v30, buffer, 17, 0x8000100u))
  {
    if (*(a1 + 129))
    {
      v31 = OUTLINED_FUNCTION_17_0();
      started = _APBonjourBrowserStartBonjourBrowser(v31, v32, v33, v34, v35, v36, v37, v38);
      if (started)
      {
        v59 = started;
        goto LABEL_88;
      }
    }

    if (*(a1 + 56))
    {
      v40 = *(a1 + 232);
      if (v40)
      {
        [v40 forceReportCachedDevices];
      }
    }

    v41 = OUTLINED_FUNCTION_17_0();
    v48 = _APBonjourBrowserStartBonjourBrowser(v41, v42, v43, v44, v45, v21, v46, v47);
    if (v48)
    {
      v59 = v48;
      goto LABEL_88;
    }

    if (*(a1 + 104))
    {
      v51 = OUTLINED_FUNCTION_17_0();
      v58 = _APBonjourBrowserStartBonjourBrowser(v51, v52, v53, v54, v55, v21, v56, v57);
      if (v58)
      {
        v59 = v58;
LABEL_88:
        APSLogErrorAt();
        goto LABEL_89;
      }
    }

    if (*(a1 + 114))
    {
      if (*(a1 + 129))
      {
        v60 = OUTLINED_FUNCTION_17_0();
        v68 = _APBonjourBrowserStartBonjourBrowser(v60, v61, v62, v63, v64, v65, v66, v67);
        if (v68)
        {
          v59 = v68;
          goto LABEL_88;
        }
      }

      v69 = OUTLINED_FUNCTION_17_0();
      v76 = _APBonjourBrowserStartBonjourBrowser(v69, v70, v71, v72, v73, v21, v74, v75);
      if (v76)
      {
        v59 = v76;
        goto LABEL_88;
      }
    }

    if (*(a1 + 160) && a2 == 2 && *(a1 + 57))
    {
      v103 = 0;
      v102 = *"awdl0";
      if (*(a1 + 161))
      {
        goto LABEL_92;
      }

      if (!BonjourBrowser_Start())
      {
        CFRetain(a1);
        *(a1 + 161) = 1;
        OUTLINED_FUNCTION_21();
        if (v23 ^ v24 | v11 && (v50 != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APBonjourBrowser)))
        {
          OUTLINED_FUNCTION_11(&gLogCategory_APBonjourBrowser, "OSStatus _APBonjourBrowserStartForP2PInfra(APBonjourBrowserRef, APBonjourBrowserMode, uint32_t *, uint64_t)", v49, "[%{ptr}] Started browsing for %s\n");
        }

LABEL_92:
        if (*(a1 + 176) && a2 == 2 && *(a1 + 56))
        {
          v103 = 0;
          v102 = *"nan0";
          if (!*(a1 + 177))
          {
            v81 = BonjourBrowser_Start();
            if (v81)
            {
              v59 = v81;
              APSLogErrorAt();
              if (gLogCategory_APBonjourBrowser <= 90 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APBonjourBrowser, "OSStatus _APBonjourBrowserStartOpenNAN(APBonjourBrowserRef, APBonjourBrowserMode, uint32_t *, uint64_t)", 33554522, "[%{ptr}] Failed to start browsing for %s over NAN with error: %#m\n", a1, "com.apple.airplay", v59, v96, v97, v98);
              }

              v92 = OUTLINED_FUNCTION_7_3();
              _APBonjourBrowserStopBrowsingOpenNAN(v92, v93);
              goto LABEL_88;
            }

            CFRetain(a1);
            *(a1 + 177) = 1;
            OUTLINED_FUNCTION_21();
            if (v23 ^ v24 | v11 && (v83 != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APBonjourBrowser)))
            {
              OUTLINED_FUNCTION_11(&gLogCategory_APBonjourBrowser, "OSStatus _APBonjourBrowserStartOpenNAN(APBonjourBrowserRef, APBonjourBrowserMode, uint32_t *, uint64_t)", v82, "[%{ptr}] Started browsing for %s over NAN\n");
            }
          }
        }

        else
        {
          v84 = OUTLINED_FUNCTION_7_3();
          _APBonjourBrowserStopBrowsingOpenNAN(v84, v85);
        }

        if (*(a1 + 192) && a2 == 2 && *(a1 + 56))
        {
          v103 = 0;
          v102 = *"nan0";
          if (!*(a1 + 193))
          {
            v86 = BonjourBrowser_Start();
            if (v86)
            {
              v59 = v86;
              APSLogErrorAt();
              if (gLogCategory_APBonjourBrowser <= 90 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APBonjourBrowser, "OSStatus _APBonjourBrowserStartSecureNANPartial(APBonjourBrowserRef, APBonjourBrowserMode, uint32_t *, uint64_t)", 33554522, "[%{ptr}] Failed to start browsing for %s over NAN with error: %#m\n", a1, "_airplay-p2p._tcp.", v59, v96, v97, v98);
              }

              v94 = OUTLINED_FUNCTION_7_3();
              _APBonjourBrowserStopBrowsingSecureNANPartial(v94, v95);
              goto LABEL_88;
            }

            CFRetain(a1);
            *(a1 + 193) = 1;
            OUTLINED_FUNCTION_21();
            if (v23 ^ v24 | v11 && (v88 != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APBonjourBrowser)))
            {
              OUTLINED_FUNCTION_11(&gLogCategory_APBonjourBrowser, "OSStatus _APBonjourBrowserStartSecureNANPartial(APBonjourBrowserRef, APBonjourBrowserMode, uint32_t *, uint64_t)", v87, "[%{ptr}] Started browsing for %s over NAN\n");
            }
          }

LABEL_112:
          v59 = 0;
          goto LABEL_113;
        }

LABEL_111:
        v89 = OUTLINED_FUNCTION_7_3();
        _APBonjourBrowserStopBrowsingSecureNANPartial(v89, v90);
        goto LABEL_112;
      }

      APSLogErrorAt();
    }

    v79 = OUTLINED_FUNCTION_7_3();
    _APBonjourBrowserStopBrowsingForP2PInfra(v79, v80);
    goto LABEL_92;
  }

  APSLogErrorAt();
  v59 = 4294895084;
LABEL_89:
  v77 = OUTLINED_FUNCTION_7_3();
  _APBonjourBrowserStopBrowsing(v77, v78);
  APSLogErrorAt();
LABEL_113:
  *a5 = 0;
  return v59;
}

uint64_t OUTLINED_FUNCTION_19_0(uint64_t a1)
{
  v3 = *(a1 + 384);

  return udpconnection_markSignPostExplicit(v3, 722863888, v1);
}

uint64_t OUTLINED_FUNCTION_19_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);

  return [v4 countByEnumeratingWithState:va objects:va1 count:16];
}

const char *_APBonjourBrowserGetStringForMode(uint64_t a1)
{
  v1 = a1;
  if (a1 < 4)
  {
    return off_278BC76F0[a1];
  }

  if (gLogCategory_APBonjourBrowser <= 60 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
  {
    _APBonjourBrowserGetStringForMode_cold_1(v1);
  }

  return "Unrecognized";
}

uint64_t OUTLINED_FUNCTION_23()
{

  return CFGetInt64Ranged();
}

uint64_t _APBonjourBrowserStartBonjourBrowser(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  if (a2)
  {
    v10 = BonjourBrowser_Start();
    if (v10)
    {
      v12 = v10;
      APSLogErrorAt();
      return v12;
    }

    if (!*a8)
    {
      CFRetain(a1);
      *a8 = 1;
    }

    if (gLogCategory_APBonjourBrowser <= 40 && (gLogCategory_APBonjourBrowser != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APBonjourBrowser)))
    {
      OUTLINED_FUNCTION_11(&gLogCategory_APBonjourBrowser, "OSStatus _APBonjourBrowserStartBonjourBrowser(APBonjourBrowserRef, BonjourBrowserRef, const char *, const char *, const char *, uint64_t, const char *, Boolean *)", v11, "[%{ptr}] %s %s for %s\n");
    }
  }

  return 0;
}

void OUTLINED_FUNCTION_7_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  _Block_object_dispose(va, 8);
}

uint64_t OUTLINED_FUNCTION_7_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return CFDictionaryGetTypedValue();
}

void APBrokerKeychainUtilsRemoveExpiredAuthTokens()
{
  v57[17] = *MEMORY[0x277D85DE8];
  v57[0] = 0;
  v0 = objc_opt_new();
  if (v0 && (v40 = objc_opt_new()) != 0)
  {
    [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
    v2 = v1;
    v3 = _CopyAllAuthTokenKeychainItems(v0, v57);
    v4 = NSErrorToOSStatus();
    if (!v4)
    {
      v12 = OUTLINED_FUNCTION_5_3(v4, v5, v6, v7, v8, v9, v10, v11, v33, v36, v38, v40, v41, v43, v45, v46, v47, v48[0], 0, 0, 0, 0, 0, 0, 0, 0, v56, v57[0]);
      if (v12)
      {
        v13 = v12;
        v14 = *v50;
        v39 = &v45;
        do
        {
          v15 = 0;
          do
          {
            if (*v50 != v14)
            {
              objc_enumerationMutation(v3);
            }

            v16 = *(v49 + 8 * v15);
            [objc_msgSend(objc_msgSend(v16 "metadata")];
            v18 = v17;
            v48[0] = 0;
            [objc_msgSend(v16 "dateModified")];
            if (v2 - v19 >= v18)
            {
              [v0 removeItemMatchingItem:v16 error:v57];
              if (v57[0])
              {
                if (gLogCategory_APBrokerKeychainUtils <= 90 && (gLogCategory_APBrokerKeychainUtils != -1 || _LogCategory_Initialize()))
                {
                  v34 = [v16 identifier];
                  v37 = v57[0];
                  LogPrintF(&gLogCategory_APBrokerKeychainUtils, "void APBrokerKeychainUtilsRemoveExpiredAuthTokens(void)", 33554522, "Failed to remove expired keychain authToken for %@ due to error: %{error}\n");
                }

                v57[0] = 0;
              }

              else if (gLogCategory_APBrokerKeychainUtils <= 30 && (gLogCategory_APBrokerKeychainUtils != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APBrokerKeychainUtils)))
              {
                v35 = [v16 identifier];
                OUTLINED_FUNCTION_1();
                LogPrintF(v20, v21, v22, "Successfully removed expired keychain authToken for %@\n", v35);
              }

              if (APSIsPairingGroupEnabled())
              {
                APBrokerKeychainUtilsCopyInfoFromKeychainItemID([v16 identifier], 0, v48);
                v42 = MEMORY[0x277D85DD0];
                v44 = 3221225472;
                v45 = __APBrokerKeychainUtilsRemoveExpiredAuthTokens_block_invoke;
                v46 = &unk_278BC7220;
                v47 = v48[0];
                [v40 updatePairedPeersWithGroupID:? groupInfo:? options:? completion:?];
              }
            }

            ++v15;
          }

          while (v13 != v15);
          v31 = OUTLINED_FUNCTION_5_3(v23, v24, v25, v26, v27, v28, v29, v30, v34, v37, v39, v40, v42, v44, v45, v46, v47, v48[0], v48[1], v49, v50, v51, v52, v53, v54, v55, v56, v57[0]);
          v13 = v31;
        }

        while (v31);
      }
    }
  }

  else
  {
    APSLogErrorAt();
    v3 = 0;
    v40 = 0;
    v57[0] = OUTLINED_FUNCTION_2_3(MEMORY[0x277CCA9B8], v32, *MEMORY[0x277CCA590]);
  }
}

uint64_t _APBonjourBrowserStopBrowsingForP2PInfra(uint64_t result, _DWORD *a2)
{
  v3 = *(result + 161);
  if (*(result + 161))
  {
    v4 = result;
    *(result + 161) = 0;
    result = BonjourBrowser_Stop();
    if (gLogCategory_APBonjourBrowser <= 40)
    {
      if (gLogCategory_APBonjourBrowser != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = _APBonjourBrowserStopBrowsingForP2PInfra_cold_1(v4, v5, v6);
      }
    }

    v3 = 1;
  }

  if (a2)
  {
    *a2 += v3;
  }

  return result;
}

void *_CopyAllAuthTokenKeychainItems(void *a1, void *a2)
{
  v3 = a1;
  v7 = 0;
  if (a1)
  {
    v4 = objc_opt_new();
    v5 = v4;
    if (v4)
    {
      [v4 setAccessGroup:@"com.apple.airplay"];
      [v5 setType:@"APBroker"];
      v3 = [v3 copyItemsMatchingItem:v5 flags:0 error:&v7];
    }

    else
    {
      _CopyAllAuthTokenKeychainItems_cold_1();
      v3 = 0;
    }
  }

  else
  {
    _CopyAllAuthTokenKeychainItems_cold_2();
    v5 = 0;
  }

  if (a2)
  {
    *a2 = v7;
  }

  return v3;
}

uint64_t _APBonjourBrowserStopBrowsingSecureNANPartial(uint64_t result, _DWORD *a2)
{
  v3 = *(result + 193);
  if (*(result + 193))
  {
    v4 = result;
    *(result + 193) = 0;
    result = BonjourBrowser_Stop();
    if (gLogCategory_APBonjourBrowser <= 40)
    {
      if (gLogCategory_APBonjourBrowser != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = _APBonjourBrowserStopBrowsingSecureNANPartial_cold_1(v4, v5, v6);
      }
    }

    v3 = 1;
  }

  if (a2)
  {
    *a2 += v3;
  }

  return result;
}

void _APBonjourBrowserOperationDisposeNullSafe(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *a1;
  if ((v2 - 2) >= 3 && v2 != 0)
  {
    if (v2 == 1)
    {
      v4 = a1[1];
      if (v4)
      {
        CFRelease(v4);
      }

      goto LABEL_7;
    }

    if (gLogCategory_APBonjourBrowser <= 60)
    {
      if (gLogCategory_APBonjourBrowser == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_7;
        }

        v2 = *a1;
      }

      LogPrintF(&gLogCategory_APBonjourBrowser, "void _APBonjourBrowserOperationDisposeNullSafe(APBonjourBrowserOperation *)", 33554492, "Unexpected operation type: %hu", v2);
    }
  }

LABEL_7:

  free(a1);
}

unsigned __int16 *_APBonjourBrowserHandleModeChangeCompleteInternal(unsigned __int16 *cf, uint64_t a2)
{
  if (cf[20] == a2)
  {
    return cf;
  }

  v2 = a2;
  v3 = cf;
  cf[20] = a2;
  if (gLogCategory_APBonjourBrowser <= 30)
  {
    v4 = a2;
    if (gLogCategory_APBonjourBrowser != -1)
    {
LABEL_4:
      _APBonjourBrowserGetStringForMode(v4);
      OUTLINED_FUNCTION_6_7();
      cf = OUTLINED_FUNCTION_7_0(&gLogCategory_APBonjourBrowser, "OSStatus _APBonjourBrowserHandleModeChangeCompleteInternal(APBonjourBrowserRef, APBonjourBrowserMode)", v5, "[%{ptr}] Changed currentMode: %s %s %s\n");
      goto LABEL_6;
    }

    cf = OUTLINED_FUNCTION_8_0(&gLogCategory_APBonjourBrowser);
    if (cf)
    {
      v4 = v3[20];
      goto LABEL_4;
    }
  }

LABEL_6:
  if (!v2)
  {

    return _APBonjourBrowserDispatchEvent(v3, 2u, 0);
  }

  return cf;
}

uint64_t browser_setModeInternal_cold_34()
{
  OUTLINED_FUNCTION_2_5();
  result = OUTLINED_FUNCTION_4_14(v1);
  if (v3 <= 30)
  {
    if (v3 != -1 || (result = OUTLINED_FUNCTION_8_0(result), result))
    {
      OUTLINED_FUNCTION_1();
      result = LogPrintF(v4, v5, v6, v7);
    }
  }

  *v0 = 0;
  return result;
}

uint64_t browser_setModeInternal_cold_36(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(result + 368))
  {
    v3 = result;
    SNPrintF(a2, 64, "APBrowser.%{ptr}", a3);
    result = os_transaction_create();
    *(v3 + 368) = result;
  }

  return result;
}

void browser_sendPowerLogDiscoveryModeEvent(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72) == @"AirPlay")
  {
    if (APBrowserGetModeString(*(DerivedStorage + 24)) && (Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150])) != 0)
    {
      v3 = Mutable;
      CFDictionarySetCString();
      PLLogRegisteredEvent();

      CFRelease(v3);
    }

    else
    {

      APSLogErrorAt();
    }
  }
}

const char *APBrowserGetModeString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_278BC7A38[a1];
  }
}

uint64_t OUTLINED_FUNCTION_4_4(void *a1, const char *a2, uint64_t a3)
{

  return [a1 errorWithDomain:a3 code:-6705 userInfo:0];
}

uint64_t OUTLINED_FUNCTION_4_6(uint64_t a1, uint64_t a2)
{

  return APSSignalErrorAt();
}

uint64_t OUTLINED_FUNCTION_4_9(uint64_t a1, uint64_t a2)
{

  return APSSignalErrorAt();
}

void APBrowserRapportManager_runOnQueue(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_5 != -1)
  {
    dispatch_once(&_MergedGlobals_5, &__block_literal_global_20);
  }

  v3 = FigCFWeakReferenceTableCopyValue();
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __APBrowserRapportManager_runOnQueue_block_invoke;
    v6[3] = &unk_278BC8170;
    v6[4] = a2;
    v6[5] = v4;
    dispatch_sync(v5, v6);
    CFRelease(v4);
  }
}

void __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  if (!*(*(a1 + 40) + 48))
  {
    goto LABEL_108;
  }

  v2 = *(a1 + 64);
  if (v2 > 8)
  {
    if (v2 <= 102)
    {
      if (v2 != 9)
      {
        if (v2 == 10)
        {
          v3 = *(a1 + 48);
          v4 = *(a1 + 56);
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          *buf = 0;
          v42 = buf;
          v43 = 0x2020000000;
          v44 = 0;
          if (!v4 || (v6 = DerivedStorage, (Value = CFDictionaryGetValue(v4, @"networkInterfaceName")) == 0) || (CFDictionaryGetValue(v4, @"IPv4Addresses"), Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]), (*(v42 + 3) = Mutable) == 0) || (*buffer = MEMORY[0x277D85DD0], v46 = 3221225472, v47 = __carPlayHelperSession_IPv4InterfaceAddressesChanged_block_invoke, v48 = &unk_278BC8288, v49 = buf, v50 = v3, v51 = v6, FigCFArrayApplyBlock(), carPlayHelperSession_updateIPAddresses(v3, Value, *(v42 + 3), 4)))
          {
            APSLogErrorAt();
          }

          v9 = *(v42 + 3);
          if (v9)
          {
            CFRelease(v9);
          }

          _Block_object_dispose(buf, 8);
          *(*(*(a1 + 32) + 8) + 24) = 0;
          v10 = *(*(*(a1 + 32) + 8) + 24);
          if (v10)
          {
            __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_10(v10);
          }

          goto LABEL_108;
        }

        goto LABEL_31;
      }

LABEL_30:
      __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_1(a1);
      goto LABEL_108;
    }

    if (v2 == 103)
    {
      carPlayHelperSession_wifiNetworkListeningStopped(*(a1 + 48));
      goto LABEL_108;
    }

    if (v2 == 104)
    {
      carPlayHelperSession_usbInterfaceListeningStopped(*(a1 + 48));
      goto LABEL_108;
    }

LABEL_31:
    if (gLogCategory_APBrowserCarSessionHelper <= 30 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
    {
      __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_20();
    }

    goto LABEL_108;
  }

  if (v2 == 3)
  {
    goto LABEL_30;
  }

  if (v2 == 4)
  {
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    *buffer = 0;
    v20 = CMBaseObjectGetDerivedStorage();
    if (v19)
    {
      v21 = v20;
      v22 = CFDictionaryGetValue(v19, @"networkInterfaceName");
      v23 = v22;
      v24 = v22 == 0;
      if (v22 && CFStringHasPrefix(v22, @"anpi"))
      {
        __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_2();
      }

      else
      {
        Int64 = CFDictionaryGetInt64();
        if (CFDictionaryGetInt64())
        {
          if (v23 && *(v21 + 32))
          {
            APSPowerAssertionRaiseTemporary();
            v24 = 0;
          }
        }

        else
        {
          if (!FigCFEqual())
          {
            goto LABEL_99;
          }

          v23 = 0;
          v24 = 1;
        }

        if (!FigCFEqual())
        {
          if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
          {
            __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_4();
          }

          if (*(v21 + 264))
          {
            if (v24)
            {
              APSEventRecorderRecordEvent();
              v27 = LogCategoryCopyOSLogHandle();
              v28 = v27;
              if (v27)
              {
                v29 = v27;
              }

              else
              {
                v29 = MEMORY[0x277D86220];
              }

              if (os_signpost_enabled(v29))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_23D2A9000, v29, OS_SIGNPOST_EVENT, 0x2B8D08DCuLL, "AP_SIGNPOST_CAR_USB_LINKDOWN", "", buf, 2u);
              }

              if (v28)
              {
              }

              v30 = *(v21 + 80);
              *(v21 + 80) = v23;
              goto LABEL_82;
            }

            APSEventRecorderRecordEvent();
            v31 = LogCategoryCopyOSLogHandle();
            v32 = v31;
            if (v31)
            {
              v33 = v31;
            }

            else
            {
              v33 = MEMORY[0x277D86220];
            }

            if (os_signpost_enabled(v33))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_23D2A9000, v33, OS_SIGNPOST_EVENT, 0x2B8D07FCuLL, "AP_SIGNPOST_CAR_USB_LINKUP", "", buf, 2u);
            }

            if (v32)
            {
            }

            v30 = *(v21 + 80);
            *(v21 + 80) = v23;
          }

          else
          {
            v30 = *(v21 + 80);
            *(v21 + 80) = v23;
            if (v24)
            {
              goto LABEL_82;
            }
          }

          CFRetain(v23);
LABEL_82:
          if (v30)
          {
            CFRelease(v30);
          }

          if (v24)
          {
            *(v21 + 88) = 0;
            *(v21 + 72) = 0;
            v34 = *(v21 + 184);
            if (v34 && *(v21 + 208) == 1)
            {

              *(v21 + 184) = 0;
              v35 = *(v21 + 192);
              if (v35)
              {
                CFRelease(v35);
                *(v21 + 192) = 0;
              }

              *(v21 + 200) = 0;
              *(v21 + 208) = 0;
              if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
              {
                __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_5();
              }
            }
          }

          else
          {
            *(v21 + 88) = Int64;
            *(v21 + 72) = CFAbsoluteTimeGetCurrent();
          }

          if (!*(v21 + 177))
          {
            if (_MergedGlobals_18 != -1)
            {
              APCarPlayHelperSessionCreate_cold_4();
            }

            [qword_281309C60 checkCarPlayControlAdvertisingForUSB];
          }

          updated = carPlayHelperSession_updateNetworkAndSessionState(v18);
          *buffer = updated;
          if (updated)
          {
            __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_7(updated);
          }
        }
      }
    }

    else
    {
      __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_8();
    }

LABEL_99:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    v37 = *(*(*(a1 + 32) + 8) + 24);
    if (v37)
    {
      __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_9(v37);
    }

    goto LABEL_108;
  }

  if (v2 != 6)
  {
    goto LABEL_31;
  }

  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  CMBaseObjectGetDerivedStorage();
  if (v12)
  {
    v13 = CFDictionaryGetValue(v12, @"networkInterfaceName");
    v14 = CFDictionaryGetValue(v12, @"IPv6Addresses");
    v15 = CMBaseObjectGetDerivedStorage();
    *buf = 0;
    *buffer = 0;
    v46 = 0;
    LOBYTE(v47) = 0;
    if (v13)
    {
      v16 = v15;
      if (CFStringHasPrefix(v13, @"anpi"))
      {
        __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_11();
      }

      else
      {
        if (FigCFEqual())
        {
          v17 = *(v16 + 96);
          if (v17)
          {
            CFRelease(v17);
            *(v16 + 96) = 0;
          }

          if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
          {
            __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_12();
          }
        }

        if (v14 && !*(v16 + 96) && CFArrayGetCount(v14) >= 1)
        {
          if (CFStringGetCString(v13, buffer, 17, 0x8000100u))
          {
            InterfaceInfo = SocketGetInterfaceInfo();
            if (InterfaceInfo)
            {
              __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_13(InterfaceInfo);
            }

            else if (*buf == 16)
            {
              if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
              {
                __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_14();
              }

              v38 = *(v16 + 96);
              *(v16 + 96) = v13;
              CFRetain(v13);
              if (v38)
              {
                CFRelease(v38);
              }
            }
          }

          else
          {
            __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_15();
          }
        }
      }
    }

    else
    {
      __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_16();
    }

    v39 = carPlayHelperSession_updateIPAddresses(v11, v13, v14, 6);
    if (v39)
    {
      __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_17(v39);
    }
  }

  else
  {
    __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_18();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v40 = *(*(*(a1 + 32) + 8) + 24);
  if (v40)
  {
    __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_19(v40);
  }

LABEL_108:
  __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_21(a1);
}

void sub_23D2B0EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _APConnectivityHelperHandleUSBNetworkChangedEvent(uint64_t result, const __CFString *a2, CFStringRef theString, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!*(a4 + 120))
  {
    return result;
  }

  v7 = result;
  *buffer = 0;
  v21 = 0;
  v22 = 0;
  if (*(a4 + 80) && CFStringHasPrefix(theString, @"APCHTestInterface"))
  {
    if (CFStringHasSuffix(theString, @"USB"))
    {
      v8 = 8;
    }

    else if (CFStringHasSuffix(theString, @"DirectLink"))
    {
      v8 = 16;
    }

    else
    {
      v8 = 2 * (CFStringHasSuffix(theString, @"WiFi") != 0);
    }
  }

  else
  {
    CFStringGetCString(theString, buffer, 17, 0x8000100u);
    v8 = 0;
    SocketGetInterfaceInfo();
  }

  v9 = SCDynamicStoreCopyValue(v7, a2);
  if (v9)
  {
    v10 = v9;
    v11 = CFDictionaryGetInt64() != 0;
    CFRelease(v10);
  }

  else
  {
    v13 = SCError();
    if (v13 != 1004)
    {
      if (gLogCategory_APConnectivityHelper > 90)
      {
        v11 = 0;
        goto LABEL_28;
      }

      v14 = v13;
      if (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize())
      {
        v15 = SCErrorString(v14);
        LogPrintF(&gLogCategory_APConnectivityHelper, "void _APConnectivityHelperHandleUSBNetworkChangedEvent(SCDynamicStoreRef, CFStringRef, CFStringRef, void *)", 33554522, "[%{ptr}] Error retrieving link status dictionary for key: %'@ (%#m: %s)\n", a4, a2, v14, v15);
      }
    }

    v11 = 0;
  }

  if (gLogCategory_APConnectivityHelper <= 40)
  {
    v16 = __CFADD__(gLogCategory_APConnectivityHelper, 1);
    v17 = gLogCategory_APConnectivityHelper == -1;
    if (gLogCategory_APConnectivityHelper != -1 || OUTLINED_FUNCTION_7(&gLogCategory_APConnectivityHelper))
    {
      if (v17 || !v16)
      {
        switch(v8)
        {
          case 1u:
          case 2u:
          case 3u:
          case 4u:
          case 5u:
          case 6u:
          case 7u:
          case 8u:
            break;
          default:
            JUMPOUT(0);
        }
      }

      OUTLINED_FUNCTION_11(&gLogCategory_APConnectivityHelper, "void _APConnectivityHelperHandleUSBNetworkChangedEvent(SCDynamicStoreRef, CFStringRef, CFStringRef, void *)", v12, "[%{ptr}] Network interface changed: %@ (transportType: %d (%s), linkActive: %d)\n");
    }
  }

LABEL_28:
  result = CFDictionaryContainsKey(*(a4 + 112), theString);
  v19 = (v8 & 0x18) == 0 || !v11;
  if (result)
  {
    if (v19)
    {
      result = _APConnectivityHelperHandleUSBInterfaceChange(a4, theString, v8, 0);
      if (result)
      {
        return APSLogErrorAt();
      }
    }
  }

  else if (!v19)
  {
    result = _APConnectivityHelperHandleUSBInterfaceChange(a4, theString, v8, 1);
    if (result)
    {
      return APSLogErrorAt();
    }
  }

  return result;
}

uint64_t _APConnectivityHelperHandleUSBInterfaceChange(uint64_t a1, const void *a2, unsigned int a3, int a4)
{
  v4 = 4294895095;
  if (!a2)
  {
    v15 = 2244;
LABEL_20:
    _APConnectivityHelperHandleUSBInterfaceChange_cold_2(v15, v4);
    return v4;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v4 = 4294895096;
    v15 = 2248;
    goto LABEL_20;
  }

  v9 = Mutable;
  CFDictionarySetValue(Mutable, @"networkInterfaceName", a2);
  CFDictionarySetInt64();
  v10 = MEMORY[0x277CBED28];
  if (!a4)
  {
    v10 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(v9, @"isAddEvent", *v10);
  if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
  {
    v11 = "added";
    if (!a4)
    {
      v11 = "removed";
    }

    LogPrintF(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperHandleUSBInterfaceChange(APConnectivityHelperRef, CFStringRef, NetTransportType, Boolean)", 33554482, "[%{ptr}] USB interface %s: %@\n", a1, v11, a2);
  }

  v12 = *(a1 + 112);
  if (a4)
  {
    CFDictionarySetValue(v12, a2, v9);
  }

  else
  {
    CFDictionaryRemoveValue(v12, a2);
  }

  v13 = _APConnectivityHelperDispatchEvent(a1, 4, v9);
  v4 = v13;
  if (v13)
  {
    _APConnectivityHelperHandleUSBInterfaceChange_cold_1(v13);
  }

  CFRelease(v9);
  return v4;
}

uint64_t _APConnectivityHelperDispatchEvent(uint64_t a1, void *key, const void *a3)
{
  if (*(a1 + 232))
  {
    return 0;
  }

  v4 = key;
  if (*(a1 + 216))
  {
    v6 = malloc_type_calloc(1uLL, 0x28uLL, 0x10E00404FF7FCA9uLL);
    if (!v6)
    {
      APSLogErrorAt();
      return 4294895096;
    }

    v7 = v6;
    CFRetain(a1);
    if (a3)
    {
      CFRetain(a3);
    }

    v8 = *(a1 + 224);
    *v7 = *(a1 + 216);
    v7[1] = a1;
    *(v7 + 4) = v4;
    v7[3] = a3;
    v7[4] = v8;
    if (gLogCategory_APConnectivityHelper <= 20 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      EventString = APConnectivityHelperGetEventString(v4);
      LogPrintF(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperDispatchEvent(APConnectivityHelperRef, APConnectivityHelperEventType, CFDictionaryRef)", 33554452, "[%{ptr}] Dispatching %s event with info %@\n", a1, EventString, a3);
    }

    dispatch_async_f(*(a1 + 32), v7, _APConnectivityHelperDispatchEventExternal);
  }

  else
  {
    if (key > 0x62)
    {
      Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
      if (!Mutable)
      {
        APSLogErrorAt();
        return 4294960568;
      }

      v11 = Mutable;
      CFDictionaryApplyBlock();
    }

    else
    {
      Value = CFDictionaryGetValue(*(a1 + 248), key);
      if (Value)
      {
        v11 = CFRetain(Value);
      }

      else
      {
        v11 = 0;
      }
    }

    if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      v13 = APConnectivityHelperGetEventString(v4);
      if (v11)
      {
        Count = CFSetGetCount(v11);
      }

      else
      {
        Count = 0;
      }

      LogPrintF(&gLogCategory_APConnectivityHelper, "OSStatus _APConnectivityHelperDispatchEvent(APConnectivityHelperRef, APConnectivityHelperEventType, CFDictionaryRef)", 33554482, "[%{ptr}] Dispatching event %'s to %ld clients", a1, v13, Count);
    }

    if (v11)
    {
      CFSetApplyBlock();
    }

    if (v4 <= 0xA && ((1 << v4) & 0x5DA) != 0)
    {
      if (a3)
      {
        v15 = a3;
      }

      else
      {
        v15 = *MEMORY[0x277CBEEE8];
      }

      CFDictionarySetValue(*(a1 + 264), v4, v15);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  return 0;
}

const char *APConnectivityHelperGetEventString(int a1)
{
  if (a1 <= 99)
  {
    if (a1 <= 5)
    {
      if (a1 > 2)
      {
        if (a1 == 3)
        {
          return "WiFi Network Changed";
        }

        if (a1 == 4)
        {
          return "USB Interface Changed";
        }
      }

      else
      {
        if (a1 == 1)
        {
          return "WiFi Available";
        }

        if (a1 == 2)
        {
          return "WiFi Power Changed";
        }
      }
    }

    else
    {
      if (a1 <= 7)
      {
        if (a1 == 6)
        {
          return "IPv6 Addresses Changed";
        }

        else
        {
          return "AWDL Available";
        }
      }

      switch(a1)
      {
        case 8:
          return "AWDL Solo Support";
        case 9:
          return "Link Debounce Failed";
        case 10:
          return "IPv4 Addresses Changed";
      }
    }

    return "Unknown";
  }

  if (a1 > 105)
  {
    if (a1 > 107)
    {
      switch(a1)
      {
        case 'l':
          return "AWDL Solo Support Listening Stopped";
        case 'm':
          return "Link Debounce Failed Listening Stopped";
        case 'n':
          return "IPv4 Addresses Changed Listening Stopped";
      }

      return "Unknown";
    }

    if (a1 == 106)
    {
      return "IPv6 Addresses Changed Listening Stopped";
    }

    else
    {
      return "AWDL Available Listening Stopped";
    }
  }

  else
  {
    if (a1 > 101)
    {
      switch(a1)
      {
        case 'f':
          return "WiFi Power Changed Listening Stopped";
        case 'g':
          return "WiFi Network Changed Listening Stopped";
        case 'h':
          return "USB Interface Changed Listening Stopped";
      }

      return "Unknown";
    }

    if (a1 == 100)
    {
      return "Invalidated";
    }

    else
    {
      return "WiFi Available Listening Stopped";
    }
  }
}

uint64_t carPlayHelperSession_updateNetworkAndSessionState(const void *a1)
{
  v145 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  *__str = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  memset(v130, 0, sizeof(v130));
  v4 = *(DerivedStorage + 176) == 0;
  value = 0;
  cf = 0;
  v5 = 168;
  if (v4)
  {
    v5 = 160;
  }

  v6 = *(DerivedStorage + v5);
  v7 = (DerivedStorage + 177);
  v8 = (DerivedStorage + 112);
  if (*(DerivedStorage + 177))
  {
    if (*(DerivedStorage + 112))
    {
      if (*(DerivedStorage + 128))
      {
        if (FigCFEqual())
        {
          if (*(v3 + 200) - *(v3 + 120) > -*(v3 + 56))
          {
            v9 = *(v3 + 184);
            if (v9)
            {
              if ([v9 wirelessIPv6Addresses])
              {
                if ([objc_msgSend(*(v3 + 184) "wirelessIPv6Addresses")])
                {
                  v10 = CFDictionaryGetValue(v6, *(v3 + 128));
                  if (v10)
                  {
                    if (CFArrayGetCount(v10))
                    {
                      v11 = 1;
                      goto LABEL_71;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
    {
      if (!*v8)
      {
        v11 = 0;
        strcpy(__str, "<disabled>");
        goto LABEL_71;
      }

      if (!*(v3 + 128))
      {
        v11 = 0;
        strcpy(__str, "No Network SSID");
        goto LABEL_71;
      }

      v12 = FigCFEqual();
      if (v12)
      {
        v13 = 0;
        v14 = 0;
      }

      else
      {
        v14 = snprintf(__str, 0x80uLL, "%sUUID Mismatch", "");
        v13 = 1;
      }

      if (*(v3 + 200) - *(v3 + 120) <= -*(v3 + 56))
      {
        v26 = "";
        if (!v12)
        {
          v26 = ", ";
        }

        v14 += snprintf(&__str[v14], 128 - v14, "%sSession Start Timeout", v26);
        v13 = 1;
      }

      v27 = *(v3 + 184);
      if (!v27 || ![v27 wirelessIPv6Addresses] || !objc_msgSend(objc_msgSend(*(v3 + 184), "wirelessIPv6Addresses"), "count"))
      {
        v28 = ", ";
        if (!v13)
        {
          v28 = "";
        }

        v14 += snprintf(&__str[v14], 128 - v14, "%sNo Remote IP", v28);
        v13 = 1;
      }

      v29 = CFDictionaryGetValue(v6, *(v3 + 128));
      if (!v29 || !CFArrayGetCount(v29))
      {
        v30 = ", ";
        if (!v13)
        {
          v30 = "";
        }

        snprintf(&__str[v14], 128 - v14, "%sNo Local IP", v30);
      }
    }

    v11 = 0;
LABEL_71:
    if (!*(v3 + 64) || !*(v3 + 80) || (v31 = *(v3 + 184)) == 0 || (*(v3 + 88) & 0x10) == 0 && (![v31 isWiredCarPlaySimulator] || (*(v3 + 88) & 8) == 0) || *(v3 + 200) - *(v3 + 72) <= -*(v3 + 56) || (v32 = *(v3 + 184)) == 0 || !objc_msgSend(v32, "wiredIPv6Addresses") || !objc_msgSend(objc_msgSend(*(v3 + 184), "wiredIPv6Addresses"), "count") || (v33 = CFDictionaryGetValue(v6, *(v3 + 80))) == 0 || !CFArrayGetCount(v33))
    {
      if (gLogCategory_APBrowserCarSessionHelper <= 50)
      {
        if (gLogCategory_APBrowserCarSessionHelper == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_139;
        }

        if (*(v3 + 64))
        {
          if (*(v3 + 80))
          {
            v34 = *(v3 + 200) - *(v3 + 72);
            v35 = -*(v3 + 56);
            if (v34 <= v35)
            {
              v36 = snprintf(v130, 0x80uLL, "%sSession Start Timeout", "");
              v37 = 1;
            }

            else
            {
              v36 = 0;
              v37 = 0;
            }

            v38 = *(v3 + 184);
            if (!v38 || ![v38 wiredIPv6Addresses] || !objc_msgSend(objc_msgSend(*(v3 + 184), "wiredIPv6Addresses"), "count"))
            {
              v39 = ", ";
              if (v34 > v35)
              {
                v39 = "";
              }

              v36 += snprintf(&v130[v36], 128 - v36, "%sNo Remote IP", v39);
              v37 = 1;
            }

            v40 = *(v3 + 184);
            if (!v40 || (*(v3 + 88) & 0x10) != 0 || [v40 isWiredCarPlaySimulator] && (*(v3 + 88) & 8) != 0)
            {
              goto LABEL_134;
            }

            v41 = *(v3 + 184);
            if (!v41)
            {
              goto LABEL_134;
            }

            v42 = [v41 isWiredCarPlaySimulator];
            v43 = *(v3 + 88);
            if (v42)
            {
              if ((v43 & 8) == 0)
              {
                v44 = "%sUSB transport type mismatch:%d, Sim:Yes";
LABEL_131:
                v50 = ", ";
                if (!v37)
                {
                  v50 = "";
                }

                v36 += snprintf(&v130[v36], 128 - v36, v44, v50, v43);
                v37 = 1;
              }
            }

            else if ((v43 & 8) != 0)
            {
              v44 = "%sUSB transport type mismatch:%d, Sim:No";
              goto LABEL_131;
            }

LABEL_134:
            v51 = CFDictionaryGetValue(v6, *(v3 + 80));
            if (!v51 || !CFArrayGetCount(v51))
            {
              v52 = ", ";
              if (!v37)
              {
                v52 = "";
              }

              snprintf(&v130[v36], 128 - v36, "%sNo Local IP", v52);
            }

            goto LABEL_139;
          }

          goto LABEL_94;
        }

LABEL_93:
        strcpy(v130, "<disabled>");
LABEL_139:
        v21 = 1;
        goto LABEL_140;
      }

LABEL_89:
      if (v11)
      {
LABEL_147:
        v55 = *(v3 + 128);
        CFRetain(v55);
        v56 = *(v3 + 184);
        if (v56)
        {
          v57 = [v56 wirelessIPv6Addresses];
        }

        else
        {
          v57 = 0;
        }

        v58 = 2;
        v59 = 1;
LABEL_191:
        if (FigCFEqual())
        {
          if (gLogCategory_APBrowserCarSessionHelper <= 30 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
          {
            if (*(v3 + 177))
            {
              if (*(v3 + 64))
              {
                v71 = "[Session/WiFi/USB]";
                v72 = "[Session/USB]";
LABEL_214:
                if (*(v3 + 112))
                {
                  v75 = v71;
                }

                else
                {
                  v75 = v72;
                }

                LogPrintF(&gLogCategory_APBrowserCarSessionHelper, "OSStatus carPlayHelperSession_updateNetworkAndSessionState(APCarPlayHelperRef)", 33554462, "[%{ptr}] %s Skipping NetworkChanged event: activeInterface = %@, newInterface = %@", a1, v75, *(v3 + 224), v55);
                goto LABEL_236;
              }

              v71 = "[Session/WiFi]";
            }

            else
            {
              if (*(v3 + 64))
              {
                v71 = "[Bonjour/WiFi/USB]";
                v72 = "[Bonjour/USB]";
                goto LABEL_214;
              }

              v71 = "[Bonjour/WiFi]";
            }

            v72 = "<Invalid>";
            goto LABEL_214;
          }

LABEL_236:
          if (!*v7 || !*(v3 + 224) || !*(v3 + 184))
          {
            Mutable = 0;
            v90 = 0;
            v91 = 0;
            *(v3 + 216) = 0;
            goto LABEL_345;
          }

          v118 = v58;
          v119 = v59;
          v82 = a1;
          v124 = 0uLL;
          v126 = 0;
          v125 = 0;
          v83 = [v57 firstObject];
          v120 = 0u;
          v121 = 0u;
          v122 = 0u;
          v123 = 0u;
          v84 = [v57 countByEnumeratingWithState:&v120 objects:v129 count:16];
          if (v84)
          {
            v85 = v84;
            v86 = *v121;
            while (2)
            {
              for (i = 0; i != v85; ++i)
              {
                if (*v121 != v86)
                {
                  objc_enumerationMutation(v57);
                }

                v88 = *(*(&v120 + 1) + 8 * i);
                StringToSockAddr([v88 cStringUsingEncoding:4], &v124, 28, 0);
                if (BYTE1(v124) == 30 && BYTE8(v124) == 254 && (BYTE9(v124) & 0xC0) == 0x80)
                {
                  v83 = v88;
                  goto LABEL_254;
                }

                if (BYTE1(v124) == 30)
                {
                  v83 = v88;
                }
              }

              v85 = [v57 countByEnumeratingWithState:&v120 objects:v129 count:16];
              if (v85)
              {
                continue;
              }

              break;
            }
          }

LABEL_254:
          if (!v83)
          {
            Mutable = 0;
            v90 = 0;
LABEL_344:
            v91 = 0;
            goto LABEL_345;
          }

          v92 = v82;
          Mutable = APSFeaturesCreateMutable();
          if (Mutable)
          {
            APSFeaturesSetFeature();
            APSFeaturesSetFeature();
            APSFeaturesSetFeature();
            APSFeaturesSetFeature();
            APSFeaturesSetFeature();
            if (![*(v3 + 184) supportsMutualAuthentication])
            {
              if (gLogCategory_APBrowserCarSessionHelper <= 30 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
              {
                carPlayHelperSession_updateNetworkAndSessionState_cold_2();
              }

              APSFeaturesSetFeature();
              v90 = 0;
              goto LABEL_281;
            }

            APSFeaturesSetFeature();
            v93 = CFGetAllocator(v82);
            v90 = CFDictionaryCreateMutable(v93, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (!v90)
            {
              carPlayHelperSession_updateNetworkAndSessionState_cold_8();
              goto LABEL_376;
            }

            CFDictionarySetValue(v90, @"authenticationCertificateSerial", [*(v3 + 184) authenticationCertificateSerial]);
            if (gLogCategory_APBrowserCarSessionHelper > 30 || gLogCategory_APBrowserCarSessionHelper == -1 && !_LogCategory_Initialize())
            {
LABEL_281:
              if (![*(v3 + 184) pairedVehicleIdentifier])
              {
                goto LABEL_300;
              }

              if (!v90)
              {
                v97 = CFGetAllocator(v82);
                v90 = CFDictionaryCreateMutable(v97, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                if (!v90)
                {
                  carPlayHelperSession_updateNetworkAndSessionState_cold_3();
                  goto LABEL_376;
                }
              }

              CFDictionarySetValue(v90, @"pairedVehicleIdentifier", [objc_msgSend(*(v3 + 184) "pairedVehicleIdentifier")]);
              if (gLogCategory_APBrowserCarSessionHelper > 30 || gLogCategory_APBrowserCarSessionHelper == -1 && !_LogCategory_Initialize())
              {
                goto LABEL_300;
              }

              if (*(v3 + 177))
              {
                if (*(v3 + 64))
                {
                  v98 = "[Session/WiFi/USB]";
                  v99 = "[Session/USB]";
LABEL_296:
                  if (*(v3 + 112))
                  {
                    v100 = v98;
                  }

                  else
                  {
                    v100 = v99;
                  }

                  LogPrintF(&gLogCategory_APBrowserCarSessionHelper, "OSStatus carPlayHelperSession_updateNetworkAndSessionState(APCarPlayHelperRef)", 33554462, "[%{ptr}] %s Setting pairedVehicleIdentifier, sessionHostInfo: %@\n", v82, v100, v90);
LABEL_300:
                  v101 = *(v3 + 192);
                  if (!v101)
                  {
                    goto LABEL_320;
                  }

                  if (v90)
                  {
LABEL_304:
                    CFDictionarySetValue(v90, @"requestIdentifier", v101);
                    if (gLogCategory_APBrowserCarSessionHelper > 30 || gLogCategory_APBrowserCarSessionHelper == -1 && !_LogCategory_Initialize())
                    {
                      goto LABEL_320;
                    }

                    if (*(v3 + 177))
                    {
                      if (*(v3 + 64))
                      {
                        v103 = "[Session/WiFi/USB]";
                        v104 = "[Session/USB]";
LABEL_316:
                        if (*(v3 + 112))
                        {
                          v105 = v103;
                        }

                        else
                        {
                          v105 = v104;
                        }

                        LogPrintF(&gLogCategory_APBrowserCarSessionHelper, "OSStatus carPlayHelperSession_updateNetworkAndSessionState(APCarPlayHelperRef)", 33554462, "[%{ptr}] %s Setting requestIdentifier: %@\n", v82, v105, *(v3 + 192));
LABEL_320:
                        v106 = APAdvertiserInfoCreate(*MEMORY[0x277CBECE8], &value);
                        if (v106)
                        {
                          v91 = v106;
                          carPlayHelperSession_updateNetworkAndSessionState_cold_5(v106);
                          goto LABEL_345;
                        }

                        APAdvertiserInfoSetProperty(value, 0, @"airPlayVersion", 0, [*(v3 + 184) sourceVersion]);
                        APAdvertiserInfoSetProperty(value, 0, @"deviceID", 0, [*(v3 + 184) deviceIdentifier]);
                        APAdvertiserInfoSetProperty(value, 0, @"deviceName", 0, [*(v3 + 184) displayName]);
                        APAdvertiserInfoSetProperty(value, 0, @"featuresEx", 0, Mutable);
                        APAdvertiserInfoSetProperty(value, 0, @"publicCUAirPlayPairingIdentity", 0, [*(v3 + 184) publicKey]);
                        StringToSockAddr([v83 cStringUsingEncoding:4], &v124, 28, 0);
                        v107 = APSNetworkAddressCreateWithSocketAddr();
                        if (v107)
                        {
                          v91 = v107;
                          carPlayHelperSession_updateNetworkAndSessionState_cold_6(v107);
                          goto LABEL_345;
                        }

                        [*(v3 + 184) port];
                        APSNetworkAddressSetPort();
                        APSNetworkAddressSetInterfaceName();
                        if (gLogCategory_APBrowserCarSessionHelper > 30 || gLogCategory_APBrowserCarSessionHelper == -1 && !_LogCategory_Initialize())
                        {
                          goto LABEL_338;
                        }

                        if (*(v3 + 177))
                        {
                          if (*(v3 + 64))
                          {
                            v108 = "[Session/WiFi/USB]";
                            v109 = "[Session/USB]";
LABEL_334:
                            if (*(v3 + 112))
                            {
                              v110 = v108;
                            }

                            else
                            {
                              v110 = v109;
                            }

                            LogPrintF(&gLogCategory_APBrowserCarSessionHelper, "OSStatus carPlayHelperSession_updateNetworkAndSessionState(APCarPlayHelperRef)", 33554462, "[%{ptr}] %s Posting StartSessionEvent: %@, %@\n", v82, v110, v83, value);
LABEL_338:
                            v111 = CFGetAllocator(v82);
                            v112 = CFDictionaryCreateMutable(v111, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                            if (v112)
                            {
                              v113 = v112;
                              CFDictionarySetValue(v112, @"advertiserInfo", value);
                              CFDictionarySetValue(v113, @"networkAddress", cf);
                              CFDictionarySetInt64();
                              if (v90)
                              {
                                CFDictionarySetValue(v113, @"sessionHostInfo", v90);
                              }

                              *(v3 + 208) = v118;
                              v114 = 0;
                              if (v119)
                              {
                                v114 = *(v3 + 120);
                              }

                              *(v3 + 216) = v114;
                              carPlayHelperSession_dispatchEvent(v92, 1, v113);
                              CFRelease(v113);
                              goto LABEL_344;
                            }

                            carPlayHelperSession_updateNetworkAndSessionState_cold_7();
                            goto LABEL_376;
                          }

                          v108 = "[Session/WiFi]";
                        }

                        else
                        {
                          if (*(v3 + 64))
                          {
                            v108 = "[Bonjour/WiFi/USB]";
                            v109 = "[Bonjour/USB]";
                            goto LABEL_334;
                          }

                          v108 = "[Bonjour/WiFi]";
                        }

                        v109 = "<Invalid>";
                        goto LABEL_334;
                      }

                      v103 = "[Session/WiFi]";
                    }

                    else
                    {
                      if (*(v3 + 64))
                      {
                        v103 = "[Bonjour/WiFi/USB]";
                        v104 = "[Bonjour/USB]";
                        goto LABEL_316;
                      }

                      v103 = "[Bonjour/WiFi]";
                    }

                    v104 = "<Invalid>";
                    goto LABEL_316;
                  }

                  v102 = CFGetAllocator(v82);
                  v90 = CFDictionaryCreateMutable(v102, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  if (v90)
                  {
                    v101 = *(v3 + 192);
                    goto LABEL_304;
                  }

                  carPlayHelperSession_updateNetworkAndSessionState_cold_4();
LABEL_376:
                  v91 = 4294954510;
                  goto LABEL_345;
                }

                v98 = "[Session/WiFi]";
              }

              else
              {
                if (*(v3 + 64))
                {
                  v98 = "[Bonjour/WiFi/USB]";
                  v99 = "[Bonjour/USB]";
                  goto LABEL_296;
                }

                v98 = "[Bonjour/WiFi]";
              }

              v99 = "<Invalid>";
              goto LABEL_296;
            }

            if (*(v3 + 177))
            {
              if (*(v3 + 64))
              {
                v94 = "[Session/WiFi/USB]";
                v95 = "[Session/USB]";
LABEL_277:
                if (*(v3 + 112))
                {
                  v96 = v94;
                }

                else
                {
                  v96 = v95;
                }

                LogPrintF(&gLogCategory_APBrowserCarSessionHelper, "OSStatus carPlayHelperSession_updateNetworkAndSessionState(APCarPlayHelperRef)", 33554462, "[%{ptr}] %s Mutual Authentication requested, sessionHostInfo: %@\n", v82, v96, v90);
                goto LABEL_281;
              }

              v94 = "[Session/WiFi]";
            }

            else
            {
              if (*(v3 + 64))
              {
                v94 = "[Bonjour/WiFi/USB]";
                v95 = "[Bonjour/USB]";
                goto LABEL_277;
              }

              v94 = "[Bonjour/WiFi]";
            }

            v95 = "<Invalid>";
            goto LABEL_277;
          }

          carPlayHelperSession_updateNetworkAndSessionState_cold_9();
LABEL_369:
          v90 = 0;
          goto LABEL_376;
        }

        if (gLogCategory_APBrowserCarSessionHelper > 30 || gLogCategory_APBrowserCarSessionHelper == -1 && !_LogCategory_Initialize())
        {
LABEL_224:
          v77 = *(v3 + 224);
          *(v3 + 224) = v55;
          if (v55)
          {
            CFRetain(v55);
          }

          if (v77)
          {
            CFRelease(v77);
          }

          v78 = CFGetAllocator(a1);
          v79 = CFDictionaryCreateMutable(v78, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (!v79)
          {
            carPlayHelperSession_updateNetworkAndSessionState_cold_10();
            Mutable = 0;
            goto LABEL_369;
          }

          v80 = v79;
          v81 = *(v3 + 224);
          if (v81)
          {
            CFDictionarySetValue(v79, @"interfaceName", v81);
          }

          if (*(v3 + 256) && *(v3 + 224))
          {
            CFDictionarySetValue(v80, @"setUpForOSTransaction", *MEMORY[0x277CBED28]);
            CFDictionarySetInt64();
          }

          else
          {
            *(v3 + 256) = 0;
          }

          carPlayHelperSession_dispatchEvent(a1, 0, v80);
          CFRelease(v80);
          goto LABEL_236;
        }

        if (*(v3 + 177))
        {
          if (*(v3 + 64))
          {
            v73 = "[Session/WiFi/USB]";
            v74 = "[Session/USB]";
LABEL_220:
            if (*(v3 + 112))
            {
              v76 = v73;
            }

            else
            {
              v76 = v74;
            }

            LogPrintF(&gLogCategory_APBrowserCarSessionHelper, "OSStatus carPlayHelperSession_updateNetworkAndSessionState(APCarPlayHelperRef)", 33554462, "[%{ptr}] %s Posting NetworkChanged event: %@\n", a1, v76, v55);
            goto LABEL_224;
          }

          v73 = "[Session/WiFi]";
        }

        else
        {
          if (*(v3 + 64))
          {
            v73 = "[Bonjour/WiFi/USB]";
            v74 = "[Bonjour/USB]";
            goto LABEL_220;
          }

          v73 = "[Bonjour/WiFi]";
        }

        v74 = "<Invalid>";
        goto LABEL_220;
      }

LABEL_176:
      v59 = 0;
      v58 = 0;
      v57 = 0;
      v55 = 0;
      goto LABEL_191;
    }

    goto LABEL_43;
  }

  if (*(DerivedStorage + 112) && *(DerivedStorage + 128) && FigCFEqual() && *(v3 + 152) - *(v3 + 120) > -*(v3 + 56) && (v15 = CFDictionaryGetValue(v6, *(v3 + 128))) != 0 && CFArrayGetCount(v15))
  {
    v11 = 1;
  }

  else if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
  {
    if (*v8)
    {
      if (*(v3 + 128))
      {
        v16 = FigCFEqual();
        if (v16)
        {
          v17 = 0;
          v18 = 0;
        }

        else
        {
          v18 = snprintf(__str, 0x80uLL, "%sUUID Mismatch", "");
          v17 = 1;
        }

        if (*(v3 + 152) - *(v3 + 120) <= -*(v3 + 56))
        {
          v47 = "";
          if (!v16)
          {
            v47 = ", ";
          }

          v18 += snprintf(&__str[v18], 128 - v18, "%sSession Start Timeout", v47);
          v17 = 1;
        }

        v48 = CFDictionaryGetValue(v6, *(v3 + 128));
        if (!v48 || !CFArrayGetCount(v48))
        {
          v49 = ", ";
          if (!v17)
          {
            v49 = "";
          }

          snprintf(&__str[v18], 128 - v18, "%sNo Local IP", v49);
        }

        v11 = 0;
      }

      else
      {
        v11 = 0;
        strcpy(__str, "No Network SSID");
      }
    }

    else
    {
      v11 = 0;
      strcpy(__str, "<disabled>");
    }
  }

  else
  {
    v11 = 0;
  }

  if (*(v3 + 64))
  {
    v19 = *(v3 + 80);
    if (v19)
    {
      if (*(v3 + 104) - *(v3 + 72) > -*(v3 + 56))
      {
        v20 = CFDictionaryGetValue(v6, v19);
        if (v20)
        {
          if (CFArrayGetCount(v20))
          {
LABEL_43:
            v21 = 0;
            goto LABEL_140;
          }
        }
      }
    }
  }

  if (gLogCategory_APBrowserCarSessionHelper > 50)
  {
    goto LABEL_89;
  }

  if (gLogCategory_APBrowserCarSessionHelper == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_139;
  }

  if (!*(v3 + 64))
  {
    goto LABEL_93;
  }

  v22 = *(v3 + 80);
  if (!v22)
  {
LABEL_94:
    strcpy(v130, "No Network Interface");
    goto LABEL_139;
  }

  v23 = *(v3 + 104) - *(v3 + 72);
  v24 = -*(v3 + 56);
  if (v23 <= v24)
  {
    v25 = snprintf(v130, 0x80uLL, "%sSession Start Timeout", "");
    v22 = *(v3 + 80);
  }

  else
  {
    v25 = 0;
  }

  v45 = CFDictionaryGetValue(v6, v22);
  if (!v45 || !CFArrayGetCount(v45))
  {
    v46 = ", ";
    if (v23 > v24)
    {
      v46 = "";
    }

    snprintf(&v130[v25], 128 - v25, "%sNo Local IP", v46);
  }

  v21 = 1;
LABEL_140:
  if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
  {
    if (*(v3 + 177))
    {
      if (*(v3 + 64))
      {
        v53 = "[Session/WiFi/USB]";
        v54 = "[Session/USB]";
        goto LABEL_156;
      }

      v53 = "[Session/WiFi]";
    }

    else
    {
      if (*(v3 + 64))
      {
        v53 = "[Bonjour/WiFi/USB]";
        v54 = "[Bonjour/USB]";
        goto LABEL_156;
      }

      v53 = "[Bonjour/WiFi]";
    }

    v54 = "<Invalid>";
LABEL_156:
    if (*(v3 + 112))
    {
      v60 = v53;
    }

    else
    {
      v60 = v54;
    }

    v61 = "";
    v62 = " (";
    if (v21)
    {
      v63 = " (";
    }

    else
    {
      v63 = "";
    }

    if (v21)
    {
      v64 = ")";
    }

    else
    {
      v64 = "";
    }

    if (v21)
    {
      v65 = 78;
    }

    else
    {
      v65 = 89;
    }

    if (v11)
    {
      v62 = "";
    }

    else
    {
      v61 = ")";
    }

    v117 = v60;
    if (v11)
    {
      v66 = 89;
    }

    else
    {
      v66 = 78;
    }

    LogPrintF(&gLogCategory_APBrowserCarSessionHelper, "OSStatus carPlayHelperSession_updateNetworkAndSessionState(APCarPlayHelperRef)", 33554482, "[%{ptr}] %s WiFi eligible: %c%s%s%s, USB eligible: %c%s%s%s\n", a1, v117, v66, v62, __str, v61, v65, v63, v130, v64);
    if (v11)
    {
      goto LABEL_147;
    }

    goto LABEL_175;
  }

  if (v11)
  {
    goto LABEL_147;
  }

LABEL_175:
  if (v21)
  {
    goto LABEL_176;
  }

  v67 = *(v3 + 80);
  CFRetain(v67);
  v68 = *(v3 + 184);
  if (!v68)
  {
    v59 = 0;
    v57 = 0;
    goto LABEL_190;
  }

  v57 = [v68 wiredIPv6Addresses];
  if (![*(v3 + 184) isWiredCarPlaySimulator] || !objc_msgSend(*(v3 + 184), "isRemoteDeviceConnected"))
  {
    v59 = 0;
LABEL_190:
    v58 = 1;
    v55 = v67;
    goto LABEL_191;
  }

  v55 = *(v3 + 96);
  if (v55)
  {
    CFRetain(*(v3 + 96));
    if (v67)
    {
      CFRelease(v67);
    }

    if (gLogCategory_APBrowserCarSessionHelper > 50 || gLogCategory_APBrowserCarSessionHelper == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_366;
    }

    if (*(v3 + 177))
    {
      if (*(v3 + 64))
      {
        v69 = "[Session/WiFi/USB]";
        v70 = "[Session/USB]";
LABEL_362:
        if (*(v3 + 112))
        {
          v116 = v69;
        }

        else
        {
          v116 = v70;
        }

LABEL_366:
        v59 = 0;
        v58 = 1;
        goto LABEL_191;
      }

      v69 = "[Session/WiFi]";
    }

    else
    {
      if (*(v3 + 64))
      {
        v69 = "[Bonjour/WiFi/USB]";
        v70 = "[Bonjour/USB]";
        goto LABEL_362;
      }

      v69 = "[Bonjour/WiFi]";
    }

    v70 = "<Invalid>";
    goto LABEL_362;
  }

  carPlayHelperSession_updateNetworkAndSessionState_cold_1();
  Mutable = 0;
  v90 = 0;
  v91 = 4294960587;
  v55 = v67;
LABEL_345:
  if (v55)
  {
    CFRelease(v55);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v90)
  {
    CFRelease(v90);
  }

  return v91;
}

void _APConnectivityHelperDispatchEventToClient(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  v5 = a3;
  Value = CFDictionaryGetValue(*(a1 + 240), a2);
  if (Value)
  {
    if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      EventString = APConnectivityHelperGetEventString(v5);
      LogPrintF(&gLogCategory_APConnectivityHelper, "void _APConnectivityHelperDispatchEventToClient(APConnectivityHelperRef, CFTypeRef, APConnectivityHelperEventType, CFDictionaryRef)", 33554462, "[%{ptr}] Dispatching event %'s to client [%{ptr}]", a1, EventString, a2);
    }

    CFRetain(a1);
    CFRetain(a2);
    if (a4)
    {
      CFRetain(a4);
    }

    v10 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___APConnectivityHelperDispatchEventToClient_block_invoke;
    block[3] = &__block_descriptor_68_e5_v8__0l;
    block[4] = Value;
    block[5] = a1;
    v12 = v5;
    block[6] = a4;
    block[7] = a2;
    dispatch_async(v10, block);
  }

  else
  {
    _APConnectivityHelperDispatchEventToClient_cold_1(gLogCategory_APConnectivityHelper, v5, a1, a2);
  }
}

uint64_t OUTLINED_FUNCTION_10_0(uint64_t a1, uint64_t a2)
{

  return APSSignalErrorAt();
}

uint64_t OUTLINED_FUNCTION_10_9(unsigned __int16 a1, uint64_t a2)
{

  return kdebug_trace();
}

void carPlayHelperSession_handleConnectivityHelperEvent(uint64_t a1, int a2, const void *a3, const void *a4)
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  if (a4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    CFRetain(a4);
    if (a3)
    {
      CFRetain(a3);
    }

    v8 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke;
    block[3] = &unk_278BC9BE8;
    v10 = a2;
    block[4] = v11;
    block[5] = DerivedStorage;
    block[6] = a4;
    block[7] = a3;
    dispatch_async(v8, block);
  }

  _Block_object_dispose(v11, 8);
}

void _APConnectivityHelperHandleIPv6ChangedEvent(const __SCDynamicStore *a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  v7 = SCDynamicStoreCopyValue(a1, a2);
  v8 = v7;
  if (v7)
  {
    Value = CFDictionaryGetValue(v7, @"Addresses");
    if (!Value)
    {
      goto LABEL_5;
    }

    v9 = Value;
    CFRetain(Value);
  }

  else
  {
    v9 = CFArrayCreate(0, 0, 0, MEMORY[0x277CBF128]);
    if (!v9)
    {
LABEL_5:
      _APConnectivityHelperHandleIPv6ChangedEvent_cold_1();
      if (!v8)
      {
        return;
      }

      goto LABEL_16;
    }
  }

  v11 = CFGetTypeID(v9);
  if (v11 == CFArrayGetTypeID())
  {
    if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APConnectivityHelper, "void _APConnectivityHelperHandleIPv6ChangedEvent(SCDynamicStoreRef, CFStringRef, CFStringRef, void *)", 33554472, "[%{ptr}] IPv6 Address changed (for interface %@): %@ = %@\n", a4, a3, a2, v9);
    }

    if (CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]))
    {
      _APConnectivityHelperHandleIPv6ChangedEvent_cold_2();
    }

    else
    {
      _APConnectivityHelperHandleIPv6ChangedEvent_cold_3();
    }
  }

  else
  {
    _APConnectivityHelperHandleIPv6ChangedEvent_cold_1();
  }

  CFRelease(v9);
  if (v8)
  {
LABEL_16:

    CFRelease(v8);
  }
}

void _APConnectivityHelperHandleIPv6ChangedEvent_cold_2()
{
  OUTLINED_FUNCTION_10_5();
  CFDictionarySetValue(v4, @"networkInterfaceName", v2);
  CFDictionarySetValue(v0, @"IPv6Addresses", v3);
  Count = CFArrayGetCount(v3);
  v6 = *(v1 + 128);
  if (Count)
  {
    CFDictionarySetValue(v6, v2, v0);
  }

  else
  {
    CFDictionaryRemoveValue(v6, v2);
  }

  if (_APConnectivityHelperDispatchEvent(v1, 6, v0))
  {
    APSLogErrorAt();
  }

  CFRelease(v0);
}

uint64_t __tcpunbuf_networkInfoUpdate_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (v1 > 0.0)
  {
    if (*(v2 + 256))
    {
      *(v2 + 248) = *(v2 + 248) + *(v2 + 240) * (v1 - *(v2 + 248));
    }

    else
    {
      *(v2 + 248) = v1;
      *(v2 + 256) = 1;
    }
  }

  if (*(v2 + 280))
  {
    *(v2 + 272) = *(v2 + 272) + *(v2 + 264) * (*(result + 48) - *(v2 + 272));
  }

  else
  {
    *(v2 + 272) = *(result + 48);
    *(v2 + 280) = 1;
  }

  *(v2 + 288) = *(result + 80);
  return result;
}

uint64_t stream_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFNumberRef *a4)
{
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x2000000000;
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24))
  {
    stream_CopyProperty_cold_1(v16);
  }

  else
  {
    v9 = DerivedStorage;
    if (CFEqual(a2, *MEMORY[0x277CC1B28]))
    {
      v10 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, v9);
      *a4 = v10;
      if (!v10)
      {
        stream_CopyProperty_cold_2(v16);
      }
    }

    else
    {
      v11 = v9[2];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __stream_CopyProperty_block_invoke;
      block[3] = &unk_278BC7DB8;
      block[4] = &v15;
      block[5] = a1;
      block[6] = a2;
      block[7] = a3;
      block[8] = a4;
      dispatch_sync(v11, block);
    }
  }

  v12 = *(v16[0] + 24);
  _Block_object_dispose(&v15, 8);
  return v12;
}

uint64_t stream_CopyProperty_0(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    stream_CopyProperty_cold_1_0();
    return 4294950679;
  }

  v7 = DerivedStorage;
  if (CFEqual(a2, *MEMORY[0x277CC1B28]))
  {
    v8 = 56;
    if (!*(v7 + 24))
    {
      v8 = 48;
    }

    v9 = *(v7 + v8);
    if (APTransportStreamIDGetStreamCategory(*v7) == 2 && !*(v9 + 9))
    {
      stream_CopyProperty_cold_3(&v14);
      return v14;
    }

    v10 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, v7);
    if (!v10)
    {
      stream_CopyProperty_cold_2_0();
      return 4294950685;
    }

    goto LABEL_12;
  }

  if (CFEqual(a2, @"IssueReporter"))
  {
    v12 = *(v7 + 8);
    if (v12)
    {
LABEL_11:
      v10 = CFRetain(v12);
LABEL_12:
      v13 = v10;
LABEL_13:
      result = 0;
      *a4 = v13;
      return result;
    }

LABEL_17:
    v13 = 0;
    goto LABEL_13;
  }

  if (CFEqual(a2, @"NANDataSession"))
  {
    v12 = *(v7 + 16);
    if (v12)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  return FigDispatchSyncCopyPropertyImplementation();
}

void tcpunbuf_networkInfoUpdate(uint64_t a1)
{
  v16 = 424;
  mach_absolute_time();
  v2 = UpTicksToNanoseconds();
  if (*(a1 + 180) == 5)
  {
    v3 = v2;
    Value = APSWrapperGetValue();
    if (Value)
    {
      if ((v3 - *(a1 + 296)) >= 0x2FAF081)
      {
        v5 = Value;
        bzero(__src, 0x1A8uLL);
        if (getsockopt(*(v5 + 4), 6, 512, __src, &v16))
        {
          APSLogErrorAt();
          if (gLogCategory_APTransportConnectionTCPUnbuffered <= 50 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APTransportConnectionTCPUnbuffered, "void tcpunbuf_networkInfoUpdate(void *)", 33554482, "get TCP_INFO failed on socket %d\n", *(v5 + 4));
          }
        }

        else
        {
          v6 = *&__src[19];
          v7 = *&__src[21];
          v9 = *(a1 + 304);
          v8 = *(a1 + 312);
          *(a1 + 304) = *&__src[19];
          *(a1 + 312) = v7;
          v10 = 0.0;
          v11 = v6 - v9;
          if (v11)
          {
            v10 = (v7 - v8) / v11;
          }

          if (*(a1 + 320))
          {
            v12 = *&__src[33];
          }

          else
          {
            v12 = 8000000.0;
          }

          v13 = *(a1 + 232);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = __tcpunbuf_networkInfoUpdate_block_invoke;
          block[3] = &__block_descriptor_tmp_29_0;
          *&block[4] = v12;
          block[5] = a1;
          *&block[6] = v10;
          memcpy(v15, __src, sizeof(v15));
          dispatch_sync(v13, block);
          if (gLogCategory_APTransportConnectionTCPUnbuffered <= 20 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APTransportConnectionTCPUnbuffered, "void tcpunbuf_networkInfoUpdate(void *)", 33554452, "current estimates: bandwidth: %f, loss: %f, rtt: %u\n", v12, v10, __src[6]);
          }

          *(a1 + 296) = v3;
        }
      }
    }

    else
    {

      APSLogErrorAt();
    }
  }
}

double __tcpunbuf_networkInfoCopy_block_invoke(void *a1)
{
  v1 = a1[7];
  *(*(a1[4] + 8) + 24) = *(v1 + 248);
  result = *(v1 + 272);
  *(*(a1[5] + 8) + 24) = result;
  *(*(a1[6] + 8) + 24) = *(v1 + 288);
  return result;
}

uint64_t tcpunbuf_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFNumberRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"NetworkInfo"))
  {
    if (CFEqual(a2, @"MaxPackageSize"))
    {
      v17[0] = 0;
      v12 = *(DerivedStorage + 192);
      if (v12)
      {
        v13 = v12(v17);
        if (v13)
        {
          v15 = v13;
          tcpunbuf_CopyProperty_cold_1(v13);
          return v15;
        }

        v14 = CFNumberCreate(a3, kCFNumberIntType, v17);
        *a4 = v14;
        if (!v14)
        {
          tcpunbuf_CopyProperty_cold_2();
          return 4294894973;
        }

        return 0;
      }

      tcpunbuf_CopyProperty_cold_3();
    }

    else if (gLogCategory_APTransportConnectionTCPUnbuffered <= 30 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
    {
      tcpunbuf_CopyProperty_cold_4(a2, v10, v11);
    }

    return 4294954512;
  }

  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2000000000;
  v21[3] = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2000000000;
  v20[3] = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2000000000;
  v19 = 0;
  Mutable = CFDictionaryCreateMutable(a3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v9 = *(DerivedStorage + 232);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 0x40000000;
  v17[2] = __tcpunbuf_networkInfoCopy_block_invoke;
  v17[3] = &unk_278BC8AE0;
  v17[4] = v21;
  v17[5] = v20;
  v17[6] = v18;
  v17[7] = DerivedStorage;
  dispatch_sync(v9, v17);
  FigCFDictionarySetDouble();
  FigCFDictionarySetDouble();
  FigCFDictionarySetInt32();
  *a4 = Mutable;
  dispatch_async_f(*(DerivedStorage + 8), DerivedStorage, tcpunbuf_networkInfoUpdate);
  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v21, 8);
  return 0;
}

uint64_t APTTrafficMetricsDataAvailable(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_4_13();
    OUTLINED_FUNCTION_2_20(0x754u, v1);
    OUTLINED_FUNCTION_1_28();
    LODWORD(v10) = 4;
    v2 = mach_absolute_time();
    OUTLINED_FUNCTION_0_10(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    return APSRealTimeSignalRaise();
  }

  return result;
}

void tcpunbuf_signalDataAvailable(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  APTTrafficMetricsDataAvailable(*(DerivedStorage + 584));
  if (*(DerivedStorage + 168) && *(DerivedStorage + 176))
  {
    APSPriorityDispatchSourceResume();
    *(DerivedStorage + 176) = 0;
  }

  if (*(DerivedStorage + 340))
  {
    v3 = CMBaseObjectGetDerivedStorage();
    if (!*(v3 + 340))
    {
      return;
    }

    v4 = v3;
    v5 = CMBaseObjectGetDerivedStorage();
    if (*(v5 + 384))
    {
      goto LABEL_10;
    }

    v6 = v5;
    if (!*(v5 + 340))
    {
      goto LABEL_10;
    }

    v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v5 + 8));
    *(v6 + 384) = v7;
    if (v7)
    {
      handler.value = MEMORY[0x277D85DD0];
      *&handler.timescale = 0x40000000;
      handler.epoch = __tcpunbuf_ensureStallMonitorTimerCreated_block_invoke;
      v11 = &__block_descriptor_tmp_61_0;
      v12 = a1;
      dispatch_source_set_event_handler(v7, &handler);
      dispatch_source_set_timer(*(v6 + 384), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
      dispatch_resume(*(v6 + 384));
LABEL_10:
      handler = *(v4 + 360);
      Seconds = CMTimeGetSeconds(&handler);
      v9 = dispatch_time(0, (Seconds * 1000000000.0));
      dispatch_source_set_timer(*(v4 + 384), v9, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
      return;
    }

    APSLogErrorAt();
    APSLogErrorAt();
    if (gLogCategory_APTransportConnectionTCPUnbuffered <= 90 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportConnectionTCPUnbuffered, "void tcpunbuf_signalDataAvailable(void *)", 33554522, "[%{ptr}] Error starting stall monitor timer: %#m\n", a1, 4294894973);
    }
  }

  else
  {

    tcpunbuf_requestAndSendData(a1);
  }
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return APSLogErrorAt();
}

uint64_t OUTLINED_FUNCTION_0_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);

  return [v8 countByEnumeratingWithState:va objects:va1 count:16];
}

uint64_t OUTLINED_FUNCTION_0_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, int a13)
{

  return APSAtomicMessageQueueSendMessage();
}

uint64_t APTransportPackageGetClassID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_3 != -1)
  {
    APTransportPackageGetClassID_cold_1();
  }

  return qword_281309B60;
}

uint64_t aptTrafficMetrics_handleQueuedEvents(int64x2_t *a1)
{
  if (!a1)
  {
    v4 = 665;
    return aptTrafficMetrics_handleQueuedEvents_cold_2(v4);
  }

  if (!a1[3].i64[1])
  {
    v4 = 666;
    return aptTrafficMetrics_handleQueuedEvents_cold_2(v4);
  }

  for (result = APSAtomicMessageQueueReadMessage(); result; result = APSAtomicMessageQueueReadMessage())
  {
    v3 = a1[1].i64[0];
    if (*v3 <= 10)
    {
      if (*v3 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          continue;
        }

        v3 = a1[1].i64[0];
      }

      LogPrintF(v3, "void aptTrafficMetrics_eventHandler(APTTrafficMetricsRef, const APTTrafficMetricsEvent *)", 33554442, "[%{ptr}] Event handler hit. Event type %d", a1[1].i64[1], 0);
    }
  }

  return result;
}

uint64_t stream_SignalDataAvailable(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __stream_SignalDataAvailable_block_invoke;
  v5[3] = &unk_278BC7F80;
  v5[4] = &v6;
  v5[5] = DerivedStorage;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t tcpunbuf_SignalDataAvailable(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dispatch_async_f(*(DerivedStorage + 8), a1, tcpunbuf_signalDataAvailable);
  return 0;
}

void __stream_readyToSendCallback_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 24))
  {
    __stream_readyToSendCallback_block_invoke_cold_1();
  }

  else
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      *(*(*(a1 + 32) + 8) + 24) = v2(*(v1 + 80), *(a1 + 64), *(*(a1 + 40) + 8) + 24);
    }

    else
    {
      __stream_readyToSendCallback_block_invoke_cold_2(a1);
    }
  }
}

uint64_t APTransportPackageScreenCreateWithBBuf(uint64_t a1, const void *a2, void *a3)
{
  v8 = 0;
  APTransportPackageGetClassID(a1, a2);
  v5 = CMDerivedObjectCreate();
  v6 = v5;
  if (v5)
  {
    APTransportPackageScreenCreateWithBBuf_cold_1(v5, &v8);
  }

  else
  {
    *CMBaseObjectGetDerivedStorage() = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (gLogCategory_APTransportPackageScreen <= 30 && (gLogCategory_APTransportPackageScreen != -1 || _LogCategory_Initialize()))
    {
      APTransportPackageScreenCreateWithBBuf_cold_2(&v8);
    }

    *a3 = v8;
  }

  return v6;
}

void tcpunbuf_canWriteData(void **a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 340))
  {
    v3 = DerivedStorage;
    if (*(DerivedStorage + 180) == 5)
    {
      APTTrafficMetricsCanWriteData(*(DerivedStorage + 584));
      if (*(v3 + 392) == 1)
      {
        *(v3 + 392) = 0;
        if (gLogCategory_APTransportConnectionTCPUnbuffered <= 50 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
        {
          OUTLINED_FUNCTION_9(&gLogCategory_APTransportConnectionTCPUnbuffered, "OSStatus tcpunbuf_handleLowWatermarkHit(APTransportConnectionRef)", v4, "[%{ptr}] No longer stalled\n");
        }
      }

      dispatch_source_set_timer(*(v3 + 384), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    }
  }

  v5 = *a1;

  tcpunbuf_requestAndSendData(v5);
}

void tcpunbuf_requestAndSendData(void *a1)
{
  v35 = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = APSWrapperGetValue();
  if (*(DerivedStorage + 180) != 5)
  {
    v5 = 0;
    *(DerivedStorage + 224) = -72320;
    goto LABEL_43;
  }

  v4 = Value;
  if (*(DerivedStorage + 72) && *(DerivedStorage + 568))
  {
    v5 = 0;
    goto LABEL_24;
  }

  FigSimpleMutexLock();
  if (!*(DerivedStorage + 208))
  {
LABEL_63:
    if (*(DerivedStorage + 168) && !*(DerivedStorage + 176))
    {
      APSPriorityDispatchSourceSuspend();
      *(DerivedStorage + 176) = 1;
    }

    v5 = 0;
    *(DerivedStorage + 224) = 0;
    goto LABEL_53;
  }

  v6 = (*(DerivedStorage + 184))(*MEMORY[0x277CBECE8], &cf);
  if (!v6)
  {
    APTTrafficMetricsRequestDataStarted(*(DerivedStorage + 584));
    (*(DerivedStorage + 208))(*(DerivedStorage + 216), &cf, *(DerivedStorage + 224));
    APTTrafficMetricsRequestDataFinished(*(DerivedStorage + 584));
    if (cf || (APTTrafficMetricsConsumedAllData(*(DerivedStorage + 584)), cf))
    {
      FigSimpleMutexUnlock();
      v7 = cf;
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v8 && (v9 = v8(v7)) != 0)
      {
        v5 = v9;
        IOVecArrayWithBlockBuffer = FigMakeIOVecArrayWithBlockBuffer();
        if (!IOVecArrayWithBlockBuffer)
        {
          v11 = cf;
          v12 = *(*(CMBaseObjectGetVTable() + 16) + 136);
          if (v12)
          {
            v13 = v12(v11) == 0;
          }

          else
          {
            v13 = 1;
          }

          v14 = CMBaseObjectGetDerivedStorage();
          if (*(v14 + 342))
          {
            if (*(v14 + 344) != v13)
            {
              *(v14 + 344) = v13;
              v15 = APSWrapperGetValue();
              tcpunbuf_setAggregationSocketOption(*(v15 + 4), v13);
              if (gLogCategory_APTransportConnectionTCPUnbuffered <= 50 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APTransportConnectionTCPUnbuffered, "void tcpunbuf_updateBufferingMode(APTransportConnectionRef, Boolean)", 33554482, "[%{ptr}] Updated buffering mode to %d\n", a1, v13);
              }
            }
          }

          if (!*(DerivedStorage + 72))
          {
            goto LABEL_29;
          }

          *(DerivedStorage + 560) = DerivedStorage + 400;
          *(DerivedStorage + 568) = v35;
          v16 = *(DerivedStorage + 576);
          *(DerivedStorage + 576) = v5;
          CFRetain(v5);
          if (v16)
          {
            CFRelease(v16);
          }

LABEL_24:
          if (*(DerivedStorage + 72))
          {
            v17 = *(DerivedStorage + 568);
            if (v17 < 1)
            {
              DataLength = 0;
            }

            else
            {
              DataLength = 0;
              v19 = (*(DerivedStorage + 560) + 8);
              do
              {
                v20 = *v19;
                v19 += 2;
                DataLength += v20;
                --v17;
              }

              while (v17);
            }

            goto LABEL_31;
          }

LABEL_29:
          DataLength = CMBlockBufferGetDataLength(v5);
LABEL_31:
          APTTrafficMetricsSendStarted(*(DerivedStorage + 584), DataLength);
          if (*(DerivedStorage + 72))
          {
            NetSocket_GetNative();
            v21 = (DerivedStorage + 568);
            v22 = SocketWriteData();
            if (v22 == 35)
            {
              v31 = *v21;
              if (*v21 < 1)
              {
                DataLength = 0;
              }

              else
              {
                DataLength = 0;
                v32 = (*(DerivedStorage + 560) + 8);
                do
                {
                  v33 = *v32;
                  v32 += 2;
                  DataLength += v33;
                  --v31;
                }

                while (v31);
              }

              if (gLogCategory_APTransportConnectionTCPUnbuffered <= 30 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
              {
                tcpunbuf_requestAndSendData_cold_3(a1, v23, v24);
              }
            }

            else
            {
              v25 = v22;
              v26 = *(DerivedStorage + 576);
              if (v26)
              {
                CFRelease(v26);
                *(DerivedStorage + 576) = 0;
              }

              *v21 = 0;
              if (v25)
              {
                APSLogErrorAt();
                if (gLogCategory_APTransportConnectionTCPUnbuffered <= 90 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&gLogCategory_APTransportConnectionTCPUnbuffered, "void tcpunbuf_requestAndSendData(void *)", 33554522, "[%{ptr}] ### SocketWriteData() failed: %#m\n", a1, v25);
                }

                *(DerivedStorage + 224) = v25;
                if (*(DerivedStorage + 180) == 5)
                {
                  dispatch_async_f(*(DerivedStorage + 8), a1, tcpunbuf_requestAndSendData);
                }

                goto LABEL_43;
              }
            }

            goto LABEL_40;
          }

          v27 = (*(v4 + 40))(v4, DerivedStorage + 400, v35, *(DerivedStorage + 328));
          if (!v27)
          {
LABEL_40:
            APTTrafficMetricsSendFinished(*(DerivedStorage + 584), 0, DataLength);
            tcpunbuf_networkInfoUpdate(DerivedStorage);
            if (!*(DerivedStorage + 340))
            {
              dispatch_async_f(*(DerivedStorage + 8), a1, tcpunbuf_requestAndSendData);
            }

            goto LABEL_42;
          }

          v28 = v27;
          if (v27 == -6723)
          {
LABEL_42:
            *(DerivedStorage + 224) = 0;
            goto LABEL_43;
          }

          APSLogErrorAt();
          if (gLogCategory_APTransportConnectionTCPUnbuffered <= 90 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APTransportConnectionTCPUnbuffered, "void tcpunbuf_requestAndSendData(void *)", 33554522, "[%{ptr}] ### NetSocket_WriteV() failed: %#m\n", a1, v28);
          }

          goto LABEL_49;
        }

        LODWORD(v28) = IOVecArrayWithBlockBuffer;
        tcpunbuf_requestAndSendData_cold_2(IOVecArrayWithBlockBuffer);
      }

      else
      {
        LODWORD(v28) = -72323;
        tcpunbuf_requestAndSendData_cold_4();
        v5 = 0;
      }

LABEL_49:
      v29 = 1;
      goto LABEL_50;
    }

    goto LABEL_63;
  }

  LODWORD(v28) = v6;
  tcpunbuf_requestAndSendData_cold_1(v6);
  v29 = 0;
  v5 = 0;
LABEL_50:
  v30 = *(DerivedStorage + 180);
  *(DerivedStorage + 224) = v28;
  if (v30 == 5)
  {
    dispatch_async_f(*(DerivedStorage + 8), a1, tcpunbuf_requestAndSendData);
  }

  if ((v29 & 1) == 0)
  {
LABEL_53:
    FigSimpleMutexUnlock();
  }

LABEL_43:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t APTTrafficMetricsCanWriteData(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_4_13();
    OUTLINED_FUNCTION_2_20(0x758u, v1);
    OUTLINED_FUNCTION_1_28();
    LODWORD(v10) = 5;
    v2 = mach_absolute_time();
    OUTLINED_FUNCTION_0_10(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    return APSRealTimeSignalRaise();
  }

  return result;
}

uint64_t APTTrafficMetricsRequestDataStarted(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_4_13();
    OUTLINED_FUNCTION_2_20(0x75Cu, v1);
    OUTLINED_FUNCTION_1_28();
    LODWORD(v10) = 6;
    v2 = mach_absolute_time();
    OUTLINED_FUNCTION_0_10(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    return APSRealTimeSignalRaise();
  }

  return result;
}

uint64_t APTransportPackageScreenCreate(uint64_t a1, void *a2)
{
  v2 = APTransportPackageScreenCreateWithBBuf(a1, 0, a2);
  v3 = v2;
  if (v2)
  {
    APTransportPackageScreenCreate_cold_1(v2);
  }

  return v3;
}

void stream_readyToSendCallback(uint64_t a1, CFTypeRef *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  if (a2)
  {
    v6 = *(DerivedStorage + 64);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __stream_readyToSendCallback_block_invoke;
    block[3] = &unk_278BC7F58;
    block[6] = DerivedStorage;
    block[7] = a2;
    v15 = a3;
    block[4] = &v20;
    block[5] = &v16;
    dispatch_sync(v6, block);
    v7 = v21[3];
    v8 = *a2;
    if (v7)
    {
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v9)
      {
        v9(v8, v7);
      }

      v10 = *a2;
      v11 = *(v17 + 6);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v12)
      {
        v12(v10, v11);
      }
    }

    else if (v8)
    {
      CFRelease(*a2);
      *a2 = 0;
    }
  }

  else
  {
    stream_readyToSendCallback_cold_1();
  }

  v13 = v21[3];
  if (v13)
  {
    CFRelease(v13);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
}

void screenpackage_SetMessageData(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  *DerivedStorage = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t APTTrafficMetricsConsumedAllData(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_4_13();
    OUTLINED_FUNCTION_2_20(0x764u, v1);
    OUTLINED_FUNCTION_1_28();
    LODWORD(v10) = 8;
    v2 = mach_absolute_time();
    OUTLINED_FUNCTION_0_10(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    return APSRealTimeSignalRaise();
  }

  return result;
}

CFTypeRef screenpackage_CreateBBufRepresentation(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *DerivedStorage;
  if (*DerivedStorage)
  {
    CFRetain(*DerivedStorage);
  }

  return v2;
}

void screenpackage_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportPackageScreen <= 30 && (gLogCategory_APTransportPackageScreen != -1 || _LogCategory_Initialize()))
  {
    screenpackage_Finalize_cold_1(a1);
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t APTTrafficMetricsRequestDataFinished(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_4_13();
    OUTLINED_FUNCTION_2_20(0x760u, v1);
    OUTLINED_FUNCTION_1_28();
    LODWORD(v10) = 7;
    v2 = mach_absolute_time();
    OUTLINED_FUNCTION_0_10(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    return APSRealTimeSignalRaise();
  }

  return result;
}

uint64_t APTTrafficMetricsSendFinished(uint64_t result, int a2, uint64_t a3)
{
  if (result)
  {
    OUTLINED_FUNCTION_4_13();
    kdebug_trace();
    OUTLINED_FUNCTION_1_28();
    LODWORD(v13) = 3;
    v5 = mach_absolute_time();
    LODWORD(v14) = a2;
    OUTLINED_FUNCTION_3_11(v5, v6, v7, v8, v9, v10, v11, v12, v13, v5, v14, a3, v15);
    return APSRealTimeSignalRaise();
  }

  return result;
}

uint64_t APTTrafficMetricsSendStarted(uint64_t result, uint64_t a2)
{
  if (result)
  {
    OUTLINED_FUNCTION_4_13();
    OUTLINED_FUNCTION_10_9(0x74Cu, v3);
    OUTLINED_FUNCTION_1_28();
    LODWORD(v12) = 2;
    v4 = mach_absolute_time();
    LODWORD(v13) = 0;
    OUTLINED_FUNCTION_3_11(v4, v5, v6, v7, v8, v9, v10, v11, v12, v4, v13, a2, v14);
    return APSRealTimeSignalRaise();
  }

  return result;
}

uint64_t httpconnection_handleEvent(uint64_t a1, void *a2)
{
  v5 = *(a1 + 384);
  dataPointerOut = 0;
  v49[0] = 0;
  if (!v5)
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_10_3();
    v6 = 0;
LABEL_67:
    v29 = 0;
    DataLength = 0;
    v34 = 0;
    v46 = 400;
    goto LABEL_41;
  }

  v3 = a2;
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v6)
  {
    OUTLINED_FUNCTION_10_3();
    goto LABEL_67;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 232))
  {
    APSPowerAssertionRaise();
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v2 = dispatch_semaphore_create(0);
  if (!v2)
  {
    APSLogErrorAt();
    v9 = 0;
LABEL_18:
    v24 = 400;
    goto LABEL_19;
  }

  FigSimpleMutexLock();
  v9 = (*(DerivedStorage + 296) + 1);
  *(DerivedStorage + 296) = v9;
  *(DerivedStorage + 280) = v2;
  dispatch_retain(v2);
  FigSimpleMutexUnlock();
  OUTLINED_FUNCTION_11_3();
  if (v12 ^ v13 | v11 && (v10 != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APTransportConnectionHTTP)))
  {
    v42 = v3[1066];
    v41 = v3[1027];
    OUTLINED_FUNCTION_3_1();
    LogPrintF(v14, v15, v16, v17, v6, a1 + 256, v41, v42, v9);
  }

  if (APTransportPackageHTTPCreateWithHTTPMessage(*MEMORY[0x277CBECE8], v3, v49))
  {
    APSLogErrorAt();
    goto LABEL_18;
  }

  v18 = v49[0];
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v19)
  {
    v19(v18, 1937337955);
  }

  v20 = v49[0];
  v21 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (v21)
  {
    v21(v20, v9);
  }

  v22 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __httpconnection_handleEvent_block_invoke;
  block[3] = &__block_descriptor_tmp_108;
  block[4] = v6;
  block[5] = v49[0];
  block[6] = v2;
  dispatch_sync(v22, block);
  v23 = dispatch_time(0, 5000000000);
  if (!dispatch_semaphore_wait(v2, v23))
  {
    goto LABEL_18;
  }

  APSLogErrorAt();
  v24 = 408;
LABEL_19:
  v46 = v24;
  FigSimpleMutexLock();
  v25 = *(DerivedStorage + 280);
  v3 = *(DerivedStorage + 288);
  *(DerivedStorage + 288) = 0;
  if (v25)
  {
    dispatch_release(v25);
    *(DerivedStorage + 280) = 0;
  }

  FigSimpleMutexUnlock();
  v45 = v8;
  v43 = v9;
  if (!v3)
  {
    v35 = 0;
    v29 = 0;
    DataLength = 0;
    v34 = 0;
LABEL_41:
    v44 = 1;
    goto LABEL_42;
  }

  v26 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (v26)
  {
    v27 = v26(v3) == 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v28)
  {
    v29 = v28(v3);
  }

  else
  {
    v29 = 0;
  }

  v30 = *(*(CMBaseObjectGetVTable() + 16) + 168);
  if (v30)
  {
    v31 = v30(v3);
  }

  else
  {
    v31 = 0;
  }

  if (v31 == v9 && (!v27 ? (v32 = v46) : (v32 = 200), v46 = v32, v29))
  {
    DataLength = CMBlockBufferGetDataLength(v29);
    if (DataLength)
    {
      CMBlockBufferGetDataPointer(v29, 0, 0, 0, &dataPointerOut);
      v44 = 0;
      v34 = "application/x-apple-binary-plist";
      v35 = dataPointerOut;
      goto LABEL_42;
    }

    v35 = 0;
    v44 = 0;
  }

  else
  {
    v35 = 0;
    v44 = 0;
    DataLength = 0;
  }

  v34 = 0;
LABEL_42:
  v36 = a1;
  v37 = MEMORY[0x23EEDD8F0](a1, v46, 0, v34, v35, DataLength);
  if (v37)
  {
    v38 = 90;
  }

  else
  {
    v38 = 50;
  }

  if (v38 >= gLogCategory_APTransportConnectionHTTP && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
  {
    v39 = "failed to send";
    if (!v37)
    {
      v39 = "sent";
    }

    LogPrintF(&gLogCategory_APTransportConnectionHTTP, "OSStatus httpconnection_handleEvent(HTTPConnectionRef, HTTPMessageRef, void *)", v38 | 0x2000000u, "[%{ptr}] Event message reply %s to %##a, HTTP Status: %d, Body %zu bytes, ID 0x%04X%?{end} error: %#m", v6, v39, v36 + 256, v46, DataLength, v43, v37 == 0, v37);
  }

  if (v45)
  {
    APSPowerAssertionRelease();
  }

  if (v2)
  {
    dispatch_release(v2);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if ((v44 & 1) == 0)
  {
    CFRelease(v3);
  }

  if (v49[0])
  {
    CFRelease(v49[0]);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v37;
}

_BYTE *httpconnection_callEventCallbacks(const void *a1, unsigned int a2, const void *a3, NSObject *a4, unsigned __int8 a5, uint64_t a6)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    if (a3)
    {
      CFRetain(a3);
    }

    if (a1)
    {
      CFRetain(a1);
    }

    if (a4)
    {
      dispatch_retain(a4);
    }

    return APSDispatchAsyncFHelper();
  }

  return result;
}

uint64_t APTransportPackageHTTPCreateWithHTTPMessage(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (a2)
  {
    v3 = httppackage_createWithHTTPMessage(a1, a2, a3);
    v4 = v3;
    if (v3)
    {
      APTransportPackageHTTPCreateWithHTTPMessage_cold_1(v3);
    }
  }

  else
  {
    APTransportPackageHTTPCreateWithHTTPMessage_cold_2();
    return 4294960591;
  }

  return v4;
}

CMBlockBufferRef httppackage_CopyMessageData(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  blockBufferOut = 0;
  v18 = 0;
  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    blockBufferOut = CFRetain(v3);
  }

  else
  {
    v4 = *(DerivedStorage + 24);
    v5 = *(v4 + 8528);
    if (v5)
    {
      v6 = *(v4 + 8520);
      HIDWORD(customBlockSource.AllocateBlock) = 0;
      *&customBlockSource.version = 0;
      customBlockSource.FreeBlock = httppackage_bbufFree;
      customBlockSource.refCon = CFRetain(a1);
      v7 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], v6, v5, *MEMORY[0x277CBED00], &customBlockSource, 0, v5, 0, &blockBufferOut);
      if (v7)
      {
        httppackage_CopyMessageData_cold_1(v7, &customBlockSource, &blockBufferOut);
        return blockBufferOut;
      }
    }

    else
    {
      *&customBlockSource.version = 0;
      time.value = 0;
      v11 = 1;
      do
      {
        v12 = v11;
        if (!HTTPGetHeaderField())
        {
          break;
        }

        v11 = 0;
      }

      while ((v12 & 1) != 0);
    }
  }

  HTTPGetHeaderField();
  if (v19)
  {
    v16.tv_sec = 0;
    *&v16.tv_usec = 0;
    v14 = 0;
    v15 = 0;
    *&customBlockSource.version = *MEMORY[0x277CC08F0];
    *(&customBlockSource.FreeBlock + 4) = *(MEMORY[0x277CC08F0] + 16);
    gettimeofday(&v16, 0);
    if (ParseFractionalDateString())
    {
      APSLogErrorAt();
    }

    else
    {
      CMTimeMake(&customBlockSource, 1000000 * (v16.tv_sec - v14) - v15 + v16.tv_usec, 1000000);
      v8 = *MEMORY[0x277CBECE8];
      *&time.value = *&customBlockSource.version;
      time.epoch = *(&customBlockSource.FreeBlock + 4);
      v9 = CMTimeCopyAsDictionary(&time, v8);
      CMSetAttachment(blockBufferOut, *MEMORY[0x277CEA358], v9, 0);
      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

  return blockBufferOut;
}

uint64_t httppackage_SetReplySequenceNumber(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 44) = a2;
  return result;
}

uint64_t httppackage_createWithHTTPMessage(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  APTransportPackageGetClassID(a1, a2);
  v5 = CMDerivedObjectCreate();
  v17 = v5;
  if (v5)
  {
    httppackage_createWithHTTPMessage_cold_1(v5);
    goto LABEL_34;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v7 = HTTPMessageCopy();
    *(DerivedStorage + 24) = v7;
    if (v17)
    {
      httppackage_createWithHTTPMessage_cold_2(v17);
      goto LABEL_34;
    }

    *(v7 + 9672) = *(a2 + 9672);
    *(v7 + 9680) = *(a2 + 9680);
    *(v7 + 9696) = *(a2 + 9696);
  }

  else
  {
    v8 = HTTPMessageCreate();
    v17 = v8;
    if (v8)
    {
      httppackage_createWithHTTPMessage_cold_3(v8);
      goto LABEL_34;
    }

    v7 = *(DerivedStorage + 24);
  }

  *(DerivedStorage + 40) = 1634957678;
  v9 = *(v7 + 8248);
  if (!v9)
  {
    v14 = *(v7 + 8272);
    if (v14)
    {
      if (gLogCategory_APTransportPackageHTTP > 60)
      {
LABEL_26:
        *a3 = cf;
        return v17;
      }

      if (gLogCategory_APTransportPackageHTTP == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_23;
        }

        v14 = *(v7 + 8272);
      }

      LogPrintF(&gLogCategory_APTransportPackageHTTP, "OSStatus httppackage_createWithHTTPMessage(CFAllocatorRef, HTTPMessageRef, APTransportPackageRef *)", 33554492, "### Unrecognized incoming message URL: '%.*s' %s\n", v14, *(v7 + 8264), *(v7 + 8392));
    }

LABEL_23:
    if (gLogCategory_APTransportPackageHTTP <= 30 && (gLogCategory_APTransportPackageHTTP != -1 || _LogCategory_Initialize()))
    {
      httppackage_createWithHTTPMessage_cold_4(&cf);
    }

    goto LABEL_26;
  }

  v10 = *(v7 + 8240);
  v11 = *(v7 + 8344);
  v12 = *(v7 + 8352);
  if (httppackage_matchIncomingMessageMethodAndURL(v10, v9, "SETUP", v11, v12, ""))
  {
    v13 = 1937012080;
LABEL_22:
    *(DerivedStorage + 8) = v13;
    v17 = 0;
    goto LABEL_23;
  }

  if (httppackage_matchIncomingMessageMethodAndURL(v10, v9, "TEARDOWN", v11, v12, ""))
  {
    v13 = 1952741230;
    goto LABEL_22;
  }

  if (httppackage_matchIncomingMessageMethodAndURL(v10, v9, "POST", v11, v12, "/event"))
  {
    v13 = 1702260340;
    goto LABEL_22;
  }

  if (httppackage_matchIncomingMessageMethodAndURL(v10, v9, "POST", v11, v12, "/command"))
  {
    v13 = 1668116068;
    goto LABEL_22;
  }

  APSLogErrorAt();
  if (gLogCategory_APTransportPackageHTTP <= 50 && (gLogCategory_APTransportPackageHTTP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTransportPackageHTTP, "OSStatus httppackage_getIncomingMessageType(const char *, size_t, const char *, size_t, OSType *)", 33554482, "Message type not found for method/URL pair %.*s %.*s.\n", v9, v10, v12, v11);
  }

  v17 = -16643;
  APSLogErrorAt();
LABEL_34:
  if (cf)
  {
    CFRelease(cf);
  }

  return v17;
}

uint64_t httppackage_SetPackageType(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 40) = a2;
  return result;
}

uint64_t httppackage_GetGroupID(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 32);
  if (!result)
  {
    result = *(DerivedStorage + 24);
    if (result)
    {
      HTTPMessageGetHeaderField();
      return 0;
    }
  }

  return result;
}

uint64_t httpconnection_AcquirePackage(const void *a1, CFTypeRef *a2)
{
  v4 = CFGetAllocator(a1);
  v5 = APTransportPackageHTTPCreate(v4, a2);
  v6 = v5;
  if (v5)
  {
    httpconnection_AcquirePackage_cold_1(v5);
  }

  else if (gLogCategory_APTransportConnectionHTTP <= 30 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTransportConnectionHTTP, "OSStatus httpconnection_AcquirePackage(APTransportConnectionRef, APTransportPackageRef *)", 33554462, "[%{ptr}] Created HTTP package [%{ptr}]", a1, *a2);
  }

  return v6;
}

void httppackage_SetMessageData(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  if (a2)
  {
    CFRetain(a2);
  }

  *(DerivedStorage + 16) = a2;
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t httpconnection_SendPackage(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (v5 && v5(a2) == 1919970425)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 168);
    if (v6)
    {
      v7 = v6(a2);
    }

    else
    {
      v7 = 0;
    }

    FigSimpleMutexLock();
    v9 = *(DerivedStorage + 280);
    if (v9 && *(DerivedStorage + 296) == v7)
    {
      if (a2)
      {
        v10 = CFRetain(a2);
        v9 = *(DerivedStorage + 280);
      }

      else
      {
        v10 = 0;
      }

      *(DerivedStorage + 288) = v10;
      dispatch_semaphore_signal(v9);
    }

    else if (gLogCategory_APTransportConnectionHTTP <= 50 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportConnectionHTTP, "OSStatus httpconnection_SendPackage(APTransportConnectionRef, APTransportPackageRef)", 33554482, "[%{ptr}] Ignoring late response for event 0x%04X", a1, v7);
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    CFRetain(a1);
    CFRetain(a2);
    APSDispatchAsyncFHelper();
  }

  return 0;
}

uint64_t httppackage_SetReplyToken(uint64_t a1, unint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v4 = *(result + 24);
  *(v4 + 9680) = HIDWORD(a2);
  *(v4 + 9688) = a2;
  return result;
}

uint64_t httpconnection_RelinquishPackage(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

BOOL httppackage_matchIncomingMessageMethodAndURL(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v7 = strncmpx();
  v8 = strncmp_prefix();
  v9 = strncmpx();
  v10 = strncmp_prefix();
  if (v7)
  {
    if (v8)
    {
      return 0;
    }

    return *a6 == 0;
  }

  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  result = v12;
  if (!v12 && !v8)
  {
    return *a6 == 0;
  }

  return result;
}

_BYTE *__httpconnection_handleEvent_block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v4)
  {
    v5 = v4(v2);
  }

  else
  {
    v5 = 0;
  }

  return httpconnection_callEventCallbacks(v1, 7u, v2, v3, 0, v5);
}

void httppackage_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportPackageHTTP <= 30 && (gLogCategory_APTransportPackageHTTP != -1 || _LogCategory_Initialize()))
  {
    httppackage_Finalize_cold_1(a1);
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 16) = 0;
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 24) = 0;
  }
}

uint64_t APTransportPackageGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_3 != -1)
  {
    APTransportPackageGetClassID_cold_1();
  }

  v3 = qword_281309B60;

  return MEMORY[0x282111A98](v3);
}

uint64_t httpconnection_iterateOnEventCallbacks(int a1, CFArrayRef theArray, _BYTE **a3)
{
  CFArrayGetValueAtIndex(theArray, 2);
  CFArrayGetValueAtIndex(theArray, 1);
  CFArrayGetValueAtIndex(theArray, 0);
  result = APSDispatchSyncTask();
  if (!result)
  {
    *a3[1] = 1;
  }

  return result;
}

uint64_t stream_handleEventFromSendConnection(int a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a3);
  if (a2)
  {
    CFRetain(a2);
  }

  v7 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __stream_handleEventFromSendConnection_block_invoke;
  block[3] = &__block_descriptor_tmp_21;
  v10 = a1;
  block[4] = a3;
  block[5] = a2;
  dispatch_async(v7, block);
  return 0;
}

void stream_handleEventFromConnection(const void *a1, int a2, const void *a3, char a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  if (a3)
  {
    CFRetain(a3);
  }

  v9 = *(DerivedStorage + 64);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 0x40000000;
  v10[2] = __stream_handleEventFromConnection_block_invoke;
  v10[3] = &__block_descriptor_tmp_173;
  v11 = a2;
  v10[4] = a1;
  v10[5] = a3;
  v12 = a4;
  v10[6] = DerivedStorage;
  dispatch_async(v9, v10);
}

void httpconnection_deferCallEventCallbackForGroupID(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  context[0] = a1;
  context[1] = &v7;
  if (*(a1 + 32))
  {
    CFDictionaryApplyFunction(*(DerivedStorage + 96), httpconnection_iterateOnEventCallbacks, context);
  }

  else
  {
    CFArrayGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (TypedValue)
    {
      httpconnection_iterateOnEventCallbacks(TypedValue, TypedValue, context);
    }
  }

  if (!v7 && a1[3])
  {
    if (gLogCategory_APTransportConnectionHTTP <= 50 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
    {
      httpconnection_deferCallEventCallbackForGroupID_cold_1(a1);
    }

    dispatch_semaphore_signal(a1[3]);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v5 = a1[3];
  if (v5)
  {
    dispatch_release(v5);
  }
}

void __stream_handleEventFromConnection_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = 48;
  if (!*(a1 + 60))
  {
    v5 = 56;
  }

  v6 = *(*(a1 + 48) + v5);
  v69 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v68 = 0;
  theData = 0;
  if (*(DerivedStorage + 72))
  {
    v65 = -16617;
    goto LABEL_152;
  }

  v8 = DerivedStorage;
  if (v2 == 7)
  {
    v9 = 30;
  }

  else
  {
    v9 = 50;
  }

  if (v9 >= gLogCategory_APTransportStream && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
  {
    if ((v2 - 1) >= 6)
    {
      if (v2 == 7)
      {
        v10 = "PackageReceived";
      }

      else if (v2 == 8)
      {
        v10 = "PackageFailedToSend";
      }

      else
      {
        v10 = "?";
      }
    }

    else
    {
      v10 = off_278BCA018[(v2 - 1)];
    }

    v11 = *(v6 + 24);
    if (gLogCategory_APTransportStream > 30)
    {
      v12 = 1;
    }

    else
    {
      v12 = gLogCategory_APTransportStream == -1 && _LogCategory_Initialize() == 0;
    }

    LogPrintF(&gLogCategory_APTransportStream, "OSStatus stream_eventReceived(FigTransportStreamRef, APTransportConnectionEvent, CFTypeRef, APTransportStreamConnectionStateRef)", v9 | 0x2000000u, "[%{ptr}] Received event %s from connection [%{ptr}] %?{end}with data %{ptr}\n", v3, v10, v11, v12, v4);
  }

  if (*(v6 + 9))
  {
    if (v4)
    {
      v13 = CFGetTypeID(v4);
      if (v13 == APTransportPackageGetTypeID(v13, v14))
      {
        v15 = v8[12];
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 80);
        v17 = v16 ? v16(v4) : 0;
        if (v15 != v17)
        {
          APSLogErrorAt();
          v65 = -16618;
          goto LABEL_152;
        }
      }
    }

    switch(v2)
    {
      case 1:
      case 2:
      case 3:
        stream_recordConnectionEvent(v3, v2, v4);
        goto LABEL_139;
      case 4:
        *(v6 + 16) = 0;
        if (gLogCategory_APTransportStream <= 90 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APTransportStream, "OSStatus stream_eventReceived(FigTransportStreamRef, APTransportConnectionEvent, CFTypeRef, APTransportStreamConnectionStateRef)", 33554522, "[%{ptr}] connection failed\n", v3);
        }

        if (*(v6 + 9))
        {
          *(v6 + 8) = 0;
          if (v4)
          {
            v49 = CFGetTypeID(v4);
            if (v49 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v4, kCFNumberSInt32Type, (v6 + 12));
              FigCreateBlockBufferCopyingMemoryBlock();
            }
          }

          CFRetain(v3);
          if (v68)
          {
            CFRetain(v68);
          }

          OUTLINED_FUNCTION_2_19();
          v71 = 0x40000000;
          v72 = __stream_eventReceived_block_invoke_2_0;
          v73 = &__block_descriptor_tmp_188;
          v74 = v8;
          v75 = v3;
          v76 = v50;
          dispatch_async(v51, &valuePtr);
        }

        OUTLINED_FUNCTION_13_6();
        goto LABEL_129;
      case 5:
        stream_recordConnectionEvent(v3, 5, v4);
        if (v8[6] == v8[7])
        {
          goto LABEL_42;
        }

        APTransportConnectionGetCMBaseObject();
        v19 = v18;
        v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v20)
        {
          v69 = v20(v19, @"RemoteNetworkIPAddress", 0, &cf);
          if (!v69)
          {
            v21 = *(v6 + 40);
            v22 = cf;
            *(v6 + 40) = cf;
            if (v22)
            {
              CFRetain(v22);
            }

            if (v21)
            {
              CFRelease(v21);
            }

LABEL_42:
            *(v6 + 76) = APSGetFBOPropertyInt64();
            if (v69)
            {
              if (gLogCategory_APTransportStream <= 30 && (gLogCategory_APTransportStream != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APTransportStream)))
              {
              }

              v69 = 0;
            }

            APTransportConnectionGetCMBaseObject();
            v58 = v57;
            v60 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v60)
            {
              v69 = v60(v58, @"LocalNetworkIPAddress", 0, &theData);
              if (!v69 && theData)
              {
                if (CFDataGetLength(theData) == 28)
                {
                  v83.location = 0;
                  v83.length = 28;
                  CFDataGetBytes(theData, v83, (v6 + 48));
LABEL_127:
                  *(v6 + 16) = 0;
                  if (*(v6 + 9))
                  {
                    *(v6 + 8) = 1;
                    *(v6 + 12) = 0;
                    CFRetain(v3);
                    OUTLINED_FUNCTION_1_27();
                    v71 = 0x40000000;
                    v72 = __stream_eventReceived_block_invoke_0;
                    v73 = &__block_descriptor_tmp_186;
                    v74 = v8;
                    v75 = v3;
                    dispatch_async(v61, &valuePtr);
                  }

LABEL_129:
                  v41 = *v6;
LABEL_130:
                  dispatch_semaphore_signal(v41);
                  goto LABEL_139;
                }

                APSLogErrorAt();
                v65 = -6742;
LABEL_152:
                v69 = v65;
                goto LABEL_139;
              }
            }

            else
            {
              v69 = -12782;
            }

            if (gLogCategory_APTransportStream <= 30 && (gLogCategory_APTransportStream != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APTransportStream)))
            {
            }

            v69 = 0;
            goto LABEL_127;
          }
        }

        else
        {
          v69 = -12782;
        }

        APSLogErrorAt();
        goto LABEL_139;
      case 6:
        *(v6 + 16) = 0;
        *(v6 + 8) = 0;
        if (v4)
        {
          v28 = CFGetTypeID(v4);
          if (v28 == CFNumberGetTypeID())
          {
            valuePtr = 0;
            CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr);
            FigCreateBlockBufferCopyingMemoryBlock();
          }
        }

        CFRetain(v3);
        if (v68)
        {
          CFRetain(v68);
        }

        OUTLINED_FUNCTION_2_19();
        v71 = 0x40000000;
        v72 = __stream_eventReceived_block_invoke_3_0;
        v73 = &__block_descriptor_tmp_189;
        v74 = v8;
        v75 = v3;
        v76 = v42;
        dispatch_async(v43, &valuePtr);
        OUTLINED_FUNCTION_13_6();
        goto LABEL_139;
      case 7:
        v29 = CMBaseObjectGetDerivedStorage();
        v30 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v30)
        {
          v31 = v30(v4);
        }

        else
        {
          v31 = 0;
        }

        v32 = 1634957678;
        v33 = *(*(CMBaseObjectGetVTable() + 16) + 96);
        if (v33)
        {
          v32 = v33(v4);
        }

        if (*(v29 + 72))
        {
          v63 = -16617;
          if (v31)
          {
LABEL_137:
            CFRelease(v31);
          }
        }

        else
        {
          v34 = *(v29 + 24);
          v35 = v34 == 0;
          v36 = 56;
          if (v34)
          {
            v37 = 56;
          }

          else
          {
            v37 = 48;
          }

          if (!v35)
          {
            v36 = 48;
          }

          v38 = *(v29 + v36);
          if (v32 == 1937337955)
          {
            v81[0] = 0;
            v81[1] = v81;
            v81[2] = 0x2000000000;
            v82 = 0;
            v47 = *(*(CMBaseObjectGetVTable() + 16) + 40);
            if (v47)
            {
              v48 = v47(v4);
            }

            else
            {
              v48 = 0;
            }

            v54 = *(*(CMBaseObjectGetVTable() + 16) + 168);
            if (v54)
            {
              v55 = v54(v4);
            }

            else
            {
              v55 = 0;
            }

            if (*(v38 + 9))
            {
              CFRetain(v3);
              if (v4)
              {
                CFRetain(v4);
              }

              if (v31)
              {
                CFRetain(v31);
              }

              OUTLINED_FUNCTION_1_27();
              v71 = 0x40000000;
              v72 = __stream_packageReceived_block_invoke_2;
              v73 = &unk_278BC9FA8;
              v74 = v81;
              v75 = v29;
              v76 = v3;
              v77 = v4;
              v78 = v31;
              v79 = v48;
              v80 = v55;
              dispatch_async(v56, &valuePtr);
            }

            _Block_object_dispose(v81, 8);
          }

          else if (v32 == 1919970425)
          {
            v44 = *(v29 + v37);
            v45 = *(*(CMBaseObjectGetVTable() + 16) + 40);
            if (v45)
            {
              v46 = v45(v4);
            }

            else
            {
              v46 = 0;
            }

            if (v46 == v3)
            {
              if (*(v44 + 9))
              {
                v52 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                v53 = v52 ? v52(v4) : 0;
                *(v29 + 152) = v53;
                *(v29 + 160) = v31;
                v31 = 0;
              }

              else
              {
                *(v29 + 152) = -16613;
              }

              v62 = *(v29 + 168);
              if (v62)
              {
                dispatch_semaphore_signal(v62);
              }
            }
          }

          else if (v32 == 1634957678 && *(v38 + 9))
          {
            CFRetain(v3);
            if (v4)
            {
              CFRetain(v4);
            }

            if (v31)
            {
              CFRetain(v31);
            }

            OUTLINED_FUNCTION_1_27();
            v71 = 0x40000000;
            v72 = __stream_packageReceived_block_invoke_0;
            v73 = &__block_descriptor_tmp_196;
            v74 = v29;
            v75 = v3;
            v76 = v4;
            v77 = v31;
            dispatch_async(v39, &valuePtr);
          }

          v63 = 0;
          if (v31)
          {
            goto LABEL_137;
          }
        }

        v69 = v63;
        goto LABEL_139;
      case 8:
        v24 = CMBaseObjectGetDerivedStorage();
        if (*(v24 + 72))
        {
          goto LABEL_139;
        }

        v25 = v24;
        v26 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        v27 = v26 ? v26(v4) : 0;
        if (v27 != v3)
        {
          goto LABEL_139;
        }

        *(v25 + 152) = -16612;
        v40 = *(v25 + 160);
        if (v40)
        {
          CFRelease(v40);
          *(v25 + 160) = 0;
        }

        v41 = *(v25 + 168);
        goto LABEL_130;
      default:
        goto LABEL_139;
    }
  }

  if ((v2 - 4) <= 2)
  {
    *(v6 + 16) = v2;
  }

LABEL_139:
  if (v68)
  {
    CFRelease(v68);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (v69 && v69 != -16618)
  {
    APSLogErrorAt();
  }

  v64 = *(a1 + 40);
  if (v64)
  {
    CFRelease(v64);
  }

  CFRelease(*(a1 + 32));
}

void __stream_packageReceived_block_invoke_2(uint64_t a1)
{
  v18 = 0;
  v2 = *(*(a1 + 40) + 208);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v5)
    {
      v6 = v5(v4);
    }

    else
    {
      v6 = 0;
    }

    v2(v3, v6, *(a1 + 64), *(*(a1 + 40) + 192), &v18);
  }

  OUTLINED_FUNCTION_8_1();
  *(v8 + 24) = v7;
  OUTLINED_FUNCTION_8_1();
  if (*(v9 + 24) != -16618)
  {
    CFRetain(*(a1 + 48));
    if (v18)
    {
      CFRetain(v18);
      v10 = v18;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(*(a1 + 40) + 64);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 0x40000000;
    v16[2] = __stream_packageReceived_block_invoke_3;
    v16[3] = &unk_278BC9F80;
    v12 = *(a1 + 48);
    v13 = *(a1 + 72);
    v17 = *(a1 + 80);
    v16[4] = *(a1 + 32);
    v16[5] = v12;
    v16[6] = v13;
    v16[7] = v10;
    dispatch_async(v11, v16);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  v14 = *(a1 + 64);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    CFRelease(v15);
  }

  CFRelease(*(a1 + 48));
}

void __stream_packageReceived_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 40);
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v35 = 0;
  if (*(DerivedStorage + 72))
  {
    __stream_packageReceived_block_invoke_3_cold_1();
    v10 = 0;
    goto LABEL_25;
  }

  v8 = DerivedStorage;
  v9 = 48;
  if (!*(DerivedStorage + 24))
  {
    v9 = 56;
  }

  v10 = *(DerivedStorage + v9);
  v11 = *(v10 + 24);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v12)
  {
    v13 = 4294954514;
    goto LABEL_32;
  }

  v13 = v12(v11, &v35);
  if (v13)
  {
LABEL_32:
    __stream_packageReceived_block_invoke_3_cold_3(v13);
    goto LABEL_25;
  }

  v14 = v35;
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v15)
  {
    v15(v14, v5);
  }

  v16 = *(v8 + 96);
  if (v16)
  {
    v17 = v35;
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v18)
    {
      v18(v17, v16);
    }
  }

  v19 = v35;
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v20)
  {
    v20(v19, v6);
  }

  v21 = v35;
  v22 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (v22)
  {
    v22(v21, v4);
  }

  v23 = v35;
  v24 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (v24)
  {
    v24(v23, v2);
  }

  v25 = v35;
  v26 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v26)
  {
    v26(v25, 1919970425);
  }

  if (gLogCategory_APTransportStream <= 10 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTransportStream, "void stream_sendReplyMessage(FigTransportStreamRef, uint64_t, uint32_t, OSStatus, CMBlockBufferRef)", 33554442, "[%{ptr}] Reply message %{ptr}.\n", v3, v5);
  }

  v27 = *(v10 + 24);
  v28 = v35;
  v29 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v29)
  {
    v30 = 4294954514;
    goto LABEL_34;
  }

  v30 = v29(v27, v28);
  if (v30)
  {
LABEL_34:
    __stream_packageReceived_block_invoke_3_cold_2(v30);
  }

LABEL_25:
  v31 = v35;
  if (v35)
  {
    v32 = *(v10 + 24);
    v33 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v33)
    {
      v33(v32, v31);
    }
  }

  v34 = *(a1 + 56);
  if (v34)
  {
    CFRelease(v34);
  }

  CFRelease(*(a1 + 40));
}

uint64_t httppackage_SetReplyStatus(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 48) = a2;
  return result;
}

uint64_t APTransportPackageHTTPCreate(uint64_t a1, CFTypeRef *a2)
{
  v2 = httppackage_createWithHTTPMessage(a1, 0, a2);
  v3 = v2;
  if (v2)
  {
    APTransportPackageHTTPCreate_cold_1(v2);
  }

  return v3;
}

void httpconnection_stallMonitorCancelledCallback(const void *a1)
{
  httpconnection_checkIfNetworkStalled(a1);

  CFRelease(a1);
}

void standardKeepAliveController_sendKeepAliveCallback(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  v20 = 0;
  context[0] = a1;
  context[1] = &v20;
  dispatch_sync_f(*(DerivedStorage + 16), context, standardKeepAliveController_copyTransportStreamCallback);
  if (!v20)
  {
    standardKeepAliveController_sendKeepAliveCallback_cold_4();
    v8 = -71761;
    goto LABEL_22;
  }

  if (*(DerivedStorage + 32))
  {
    if (gLogCategory_APTransportKeepAliveControllerStandard <= 30 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
    {
      standardKeepAliveController_sendKeepAliveCallback_cold_1(a1, v3, v4);
    }

    v5 = v20;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v6)
    {
      v8 = -12782;
      goto LABEL_21;
    }

    v7 = v6(v5, 1818977637, 0, 0);
    if (v7)
    {
      v8 = v7;
LABEL_21:
      APSLogErrorAt();
LABEL_22:
      *&v21.timescale = 0;
      if (a1)
      {
        v14 = CFRetain(a1);
      }

      else
      {
        v14 = 0;
      }

      v21.value = v14;
      v21.timescale = v8;
LABEL_40:
      APSDispatchAsyncFHelper();
      goto LABEL_41;
    }
  }

  else
  {
    if (gLogCategory_APTransportKeepAliveControllerStandard <= 30 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
    {
      standardKeepAliveController_sendKeepAliveCallback_cold_2(a1, v3, v4);
    }

    v9 = v20;
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v10)
    {
      v8 = -12782;
      goto LABEL_21;
    }

    v11 = v10(v9, 1801807216, 0, &v22);
    if (v11)
    {
      v8 = v11;
      goto LABEL_21;
    }

    v12 = v22;
    context[0] = v22;
    v13 = CMBaseObjectGetDerivedStorage();
    if (v12)
    {
      v12 = CFDictionaryCreate(*MEMORY[0x277CBECE8], kAPTransportKeepAliveControllerNotificationKey_BlockBuffer, context, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    if (gLogCategory_APTransportKeepAliveControllerStandard <= 30 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportKeepAliveControllerStandard, "OSStatus standardKeepAliveController_handleKeepAliveResponse(APTransportKeepAliveControllerRef, CMBlockBufferRef)", 33554462, "[%{ptr}] Keep-alive response received with reply: %@\n", a1, v12);
    }

    if (*(v13 + 33))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }

  context[0] = a1;
  v17 = *MEMORY[0x277CC0898];
  *&context[1] = *MEMORY[0x277CC0898];
  v15 = *(MEMORY[0x277CC0898] + 16);
  context[3] = v15;
  dispatch_sync_f(*(DerivedStorage + 16), context, standardKeepAliveController_setKeepAliveReceivedCallback);
  v21 = *&context[1];
  CMTimeMake(context, *(DerivedStorage + 36), 1000);
  time1 = v21;
  if (CMTimeCompare(&time1, context) >= 1 && gLogCategory_APTransportKeepAliveControllerStandard <= 60 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
  {
    standardKeepAliveController_sendKeepAliveCallback_cold_3(&v21);
  }

  CMTimeMake(context, 10, 1);
  time1 = v21;
  if (CMTimeCompare(&time1, context) >= 1)
  {
    *(DerivedStorage + 128) = v17;
    *(DerivedStorage + 144) = v15;
    memset(&context[1], 0, 32);
    if (a1)
    {
      v16 = CFRetain(a1);
    }

    else
    {
      v16 = 0;
    }

    context[0] = v16;
    LOBYTE(context[1]) = 0;
    *(&context[1] + 4) = v21;
    goto LABEL_40;
  }

LABEL_41:
  if (v22)
  {
    CFRelease(v22);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t standardKeepAliveController_copyTransportStreamCallback(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  result = FigCFWeakReferenceHolderCopyReferencedObject();
  **(a1 + 8) = result;
  return result;
}

void standardKeepAliveController_timerFiredCallback(void *a1)
{
  if (a1)
  {
    v28 = v1;
    v29 = v2;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    memset(&v22, 0, sizeof(v22));
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v22, HostTimeClock);
    lhs[0] = v22;
    standardKeepAliveController_timerFiredCheck(a1, lhs, 1);
    if (*(DerivedStorage + 92))
    {
      v6 = CMBaseObjectGetDerivedStorage();
      v27 = **&MEMORY[0x277CC0898];
      epoch = v27.epoch;
      v21 = *&v27.value;
      v26 = v27;
      v8 = CMClockGetHostTimeClock();
      CMClockGetTime(&v27, v8);
      ++*(v6 + 152);
      lhs[0] = v27;
      rhs = *(v6 + 80);
      CMTimeSubtract(&v26, lhs, &rhs);
      if (gLogCategory_APTransportKeepAliveControllerStandard <= 60 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
      {
        standardKeepAliveController_timerFiredCallback_cold_1(&v26.value, v6 + 152, a1, v9, v10, v11, v12, v13);
      }

      CMTimeMake(lhs, 10, 1);
      rhs = v26;
      if ((CMTimeCompare(&rhs, lhs) & 0x80000000) == 0)
      {
        *&rhs.value = v21;
        rhs.epoch = epoch;
        lhs[0] = v27;
        time1 = *(v6 + 128);
        CMTimeSubtract(&rhs, lhs, &time1);
        if ((*(v6 + 140) & 1) == 0 || (CMTimeMake(lhs, 180, 1), time1 = rhs, CMTimeCompare(&time1, lhs) >= 1))
        {
          memset(&lhs[0].timescale, 0, 32);
          lhs[0].value = CFRetain(a1);
          LOBYTE(lhs[0].timescale) = 1;
          *(v6 + 128) = v27;
          ++*(v6 + 156);
          if (gLogCategory_APTransportKeepAliveControllerStandard <= 60 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
          {
            standardKeepAliveController_timerFiredCallback_cold_2(&v26.value, v6 + 156, a1, v14, v15, v16, v17, v18);
          }

          *&lhs[0].flags = v26;
          APSDispatchAsyncFHelper();
          IsAppleInternalBuild();
          if (IsAppleInternalBuild())
          {
            v19 = 50;
          }

          else
          {
            v19 = 30;
          }

          if (v19 >= gLogCategory_APTransportKeepAliveControllerStandard)
          {
            if (gLogCategory_APTransportKeepAliveControllerStandard != -1 || (IsAppleInternalBuild(), _LogCategory_Initialize()))
            {
              standardKeepAliveController_timerFiredCallback_cold_3(a1);
            }
          }

          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.airplay.connection.stalled", 0, 0, 1u);
        }
      }
    }

    else
    {
      CFRetain(a1);
      *(DerivedStorage + 80) = v22;
      dispatch_async_f(*DerivedStorage, a1, standardKeepAliveController_sendKeepAliveCallback);
    }
  }
}

uint64_t stream_copyPackageForBBuf(uint64_t a1, OpaqueCMBlockBuffer *a2, CFTypeRef *a3, char *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*(DerivedStorage + 72))
  {
    stream_copyPackageForBBuf_cold_1();
    return 4294950679;
  }

  v8 = DerivedStorage;
  if (!a2)
  {
    goto LABEL_11;
  }

  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  v21 = 0;
  DataPointer = CMBlockBufferGetDataPointer(a2, 0, &lengthAtOffsetOut, &v21, &dataPointerOut);
  if (DataPointer)
  {
    v15 = DataPointer;
    goto LABEL_23;
  }

  if (lengthAtOffsetOut == v21)
  {
    v10 = *(v8 + 40);
    if (v10)
    {
      APTransportStreamSendBackingProviderCopyPackageForAcquiredBBuf(v10, a2, &cf);
    }

    else
    {
      Value = CFDictionaryGetValue(*(v8 + 112), dataPointerOut);
      cf = Value;
      if (!Value)
      {
LABEL_11:
        v13 = *(v8 + 40);
        if (v13)
        {
          v14 = APTransportStreamSendBackingProviderCopyPackageForGivenBBuf(v13, a2, &cf);
          if (v14)
          {
            v15 = v14;
            stream_copyPackageForBBuf_cold_2(v14);
            return v15;
          }

          goto LABEL_13;
        }

        v17 = 56;
        if (!*(v8 + 24))
        {
          v17 = 48;
        }

        v18 = *(*(v8 + v17) + 24);
        v19 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v19)
        {
          v20 = v19(v18, &cf);
          if (!v20)
          {
            if (cf)
            {
              CFRetain(cf);
            }

LABEL_13:
            v12 = 1;
            goto LABEL_14;
          }

          v15 = v20;
        }

        else
        {
          v15 = 4294954514;
        }

LABEL_23:
        APSLogErrorAt();
        return v15;
      }

      CFRetain(Value);
    }
  }

  if (!cf)
  {
    goto LABEL_11;
  }

  v12 = 0;
LABEL_14:
  v15 = 0;
  *a3 = cf;
  *a4 = v12;
  return v15;
}

uint64_t httppackage_SetMessageType(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 8) = a2;
  return result;
}

void httpconnection_httpResponseReceived(uint64_t a1)
{
  v2 = *(a1 + 9672);
  v3 = *(a1 + 9696);
  v27 = 0;
  cf = 0;
  v25 = 0;
  v26 = 0;
  mach_absolute_time();
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v4)
  {
    v5 = v4;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!*DerivedStorage)
    {
      v7 = DerivedStorage;
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (v8)
      {
        v9 = v8(v3);
      }

      else
      {
        v9 = 0;
      }

      if (v7[61])
      {
        v10 = UpTicksToMilliseconds();
        v7[61] = 0;
        v7[58] += v10;
        if (!HTTPMessageGetHeaderField())
        {
          SNScanF(v27, v26, "%llu", &v25);
          v11 = v10 - v25 + v7[60];
          v7[59] += v25;
          v7[60] = v11;
        }
      }

      else
      {
        v10 = 0;
      }

      if ((*(a1 + 8456) - 100) > 0x1F3)
      {
        httpconnection_callEventCallbacks(v5, 8u, v3, 0, 0, v9);
      }

      else
      {
        if (v25 <= 0xC8)
        {
          v12 = 30;
        }

        else
        {
          v12 = 50;
        }

        if (v12 >= gLogCategory_APTransportConnectionHTTP)
        {
          if (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize())
          {
            ClientID = HTTPClientGetClientID();
            LogPrintF(&gLogCategory_APTransportConnectionHTTP, "void httpconnection_httpResponseReceived(HTTPMessageRef)", v12 | 0x2000000u, "[%{ptr}] Received response for CID:0x%08X groupID %llu%?{end} duration %llums%?{end} receiver %llums", v5, ClientID, v9, v10 == 0, v10, v25 == 0, v25);
          }

          if (gLogCategory_APTransportConnectionHTTP < 11 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
          {
            LogHTTP();
          }
        }

        APTTrafficMetricsResponseReceived(v7[63], *(a1 + 8528) + *(a1 + 8216));
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 96);
        if (!v14 || v14(v3) != 1937337955)
        {
          goto LABEL_34;
        }

        if (!APTransportPackageHTTPCreateWithHTTPMessage(*MEMORY[0x277CBECE8], a1, &cf))
        {
          v15 = cf;
          v16 = *(*(CMBaseObjectGetVTable() + 16) + 88);
          if (v16)
          {
            v16(v15, 1919970425);
          }

          v17 = cf;
          v18 = *(*(CMBaseObjectGetVTable() + 16) + 80);
          if (v18)
          {
            v19 = v18(v3);
          }

          else
          {
            v19 = 0;
          }

          v20 = *(*(CMBaseObjectGetVTable() + 16) + 72);
          if (v20)
          {
            v20(v17, v19);
          }

          httpconnection_callEventCallbacks(v5, 7u, cf, 0, 0, v9);
LABEL_34:
          v21 = CMBaseObjectGetDerivedStorage();
          HostTimeClock = CMClockGetHostTimeClock();
          CMClockGetTime(&v29, HostTimeClock);
          *(v21 + 376) = v29;
          v23 = *(v21 + 372) - 1;
          *(v21 + 372) = v23;
          if (!v23)
          {
            v24 = *(v21 + 424);
            if (v24)
            {
              dispatch_source_cancel(*(v21 + 424));
              dispatch_release(v24);
              *(v21 + 424) = 0;
            }
          }

          goto LABEL_37;
        }

        APSLogErrorAt();
      }
    }

LABEL_37:
    CFRelease(v5);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void stream_sendMessageExpectingReplyInternal(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  cf = 0;
  v27 = 0;
  if (*(DerivedStorage + 72))
  {
    stream_sendMessageExpectingReplyInternal_cold_1();
    v5 = 0;
    v20 = -16617;
  }

  else
  {
    v4 = 56;
    if (!*(DerivedStorage + 24))
    {
      v4 = 48;
    }

    v5 = *(DerivedStorage + v4);
    if (*(v5 + 9))
    {
      v6 = stream_copyPackageForBBuf(*a1, a1[2], &cf, &v27);
      if (v6)
      {
        v20 = v6;
        stream_sendMessageExpectingReplyInternal_cold_2(v6);
      }

      else
      {
        v7 = cf;
        v8 = *(a1 + 2);
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v9)
        {
          v9(v7, v8);
        }

        v10 = a1[2];
        v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v11)
        {
          v11(v7, v10);
        }

        v12 = *a1;
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v13)
        {
          v13(v7, v12);
        }

        v14 = *(v3 + 96);
        if (v14)
        {
          v15 = *(*(CMBaseObjectGetVTable() + 16) + 72);
          if (v15)
          {
            v15(v7, v14);
          }
        }

        v16 = *(*(CMBaseObjectGetVTable() + 16) + 88);
        if (v16)
        {
          v16(v7, 1937337955);
        }

        if (gLogCategory_APTransportStream <= 10 && (gLogCategory_APTransportStream != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APTransportStream, "void stream_sendMessageExpectingReplyInternal(void *)", 33554442, "[%{ptr}] Send message expecting reply: type %'C message %{ptr} replyToken %{ptr}.\n", *a1, *(a1 + 2), a1[2], *a1);
        }

        v17 = *(v5 + 24);
        v18 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v18)
        {
          v19 = v18(v17, v7);
          if (!v19)
          {
            goto LABEL_28;
          }

          v20 = v19;
        }

        else
        {
          v20 = -12782;
        }

        APSLogErrorAt();
      }
    }

    else
    {
      stream_sendMessageExpectingReplyInternal_cold_3();
      v20 = -16614;
    }
  }

  if (!*(v3 + 72))
  {
    *(v3 + 152) = v20;
    dispatch_semaphore_signal(*(v3 + 168));
  }

LABEL_28:
  if (v27)
  {
    v21 = *(v3 + 40);
    if (v21)
    {
      APTransportStreamSendBackingProviderRelinquishBBuf(v21, a1[2]);
    }

    else
    {
      v24 = *(v5 + 24);
      v25 = cf;
      v26 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v26)
      {
        v26(v24, v25);
      }
    }
  }

  CFRelease(*a1);
  v22 = a1[2];
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = cf;
  if (cf)
  {

    CFRelease(v23);
  }
}

void httpconnection_sendPackageInternal(CFTypeRef *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 108) != 5)
  {
    goto LABEL_30;
  }

  v3 = DerivedStorage;
  if (!*(DerivedStorage + 264))
  {
    httpconnection_sendPackageInternal_cold_6();
LABEL_30:
    httpconnection_sendPackageInternal_cold_7(a1);
    goto LABEL_24;
  }

  if (*(DerivedStorage + 360))
  {
    CFObjectSetValue();
  }

  v4 = a1 + 1;
  APTransportPackageHTTPSetURL(a1[1], *(v3 + 280));
  v5 = APTransportPackageHTTPGetHTTPMessage(a1[1]);
  if (!v5)
  {
    httpconnection_sendPackageInternal_cold_5();
    goto LABEL_30;
  }

  v6 = v5;
  v7 = *(v3 + 272);
  *(v3 + 272) = v7 + 1;
  HTTPHeader_SetField(v5 + 24, "CSeq", "%u", v7);
  if (*(v3 + 336))
  {
    HTTPHeader_SetField((v6 + 3), "DACP-ID", "%llX", *(v3 + 328));
    HTTPHeader_SetField((v6 + 3), "Active-Remote", "%u", *(v3 + 336));
  }

  if (*(v3 + 32))
  {
    HTTPHeader_SetField((v6 + 3), "User-Agent", "%s", *(v3 + 32));
  }

  v6[1209] = CFRetain(*(v3 + 216));
  v8 = *v4;
  v6[1212] = *v4;
  if (v8)
  {
    CFRetain(v8);
  }

  v6[1214] = httpconnection_httpResponseReceived;
  if (gLogCategory_APTransportConnectionHTTP <= 30)
  {
    if (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize())
    {
      httpconnection_sendPackageInternal_cold_1(a1, a1 + 1);
    }

    if (gLogCategory_APTransportConnectionHTTP <= 10 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
    {
      httpconnection_sendPackageInternal_cold_2(v6, (v6 + 3));
    }
  }

  APTTrafficMetricsSendStarted(*(v3 + 504), v6[1066] + v6[1027]);
  *(v3 + 488) = mach_absolute_time();
  v9 = HTTPClientSendMessage();
  APTTrafficMetricsSendFinished(*(v3 + 504), v9, v6[1066] + v6[1027]);
  if (v9)
  {
    httpconnection_sendPackageInternal_cold_3(v9);
    goto LABEL_30;
  }

  v10 = CMBaseObjectGetDerivedStorage();
  if (!*(v10 + 372))
  {
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v17, HostTimeClock);
    *(v10 + 376) = v17;
    v12 = CMBaseObjectGetDerivedStorage();
    v13 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    if (!*(v12 + 424))
    {
      v14 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v12 + 8));
      *(v12 + 424) = v14;
      if (v14)
      {
        dispatch_set_context(v14, v13);
        dispatch_source_set_event_handler_f(*(v12 + 424), httpconnection_checkIfNetworkStalled);
        dispatch_source_set_cancel_handler_f(*(v12 + 424), httpconnection_stallMonitorCancelledCallback);
        v15 = *(v12 + 424);
        v16 = dispatch_time(0, 2000000000);
        dispatch_source_set_timer(v15, v16, 0x77359400uLL, 0x174876E800uLL);
        dispatch_resume(*(v12 + 424));
        goto LABEL_23;
      }

      httpconnection_sendPackageInternal_cold_4();
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

LABEL_23:
  ++*(v10 + 372);
LABEL_24:
  CFRelease(a1[1]);
  CFRelease(*a1);
}

uint64_t APTransportPackageHTTPGetHTTPMessage(void *a1)
{
  v53 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  data = 0;
  v47 = 0;
  v4 = *(DerivedStorage + 8);
  memset(v52, 0, sizeof(v52));
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  if (v4 <= 1885435251)
  {
    if (v4 > 1768842862)
    {
      if (v4 <= 1835428127)
      {
        if (v4 <= 1818977636)
        {
          switch(v4)
          {
            case 0x696E666F:
              v6 = 0;
              goto LABEL_145;
            case 0x6A706567:
              v6 = 0;
              goto LABEL_144;
            case 0x6B656570:
              v6 = 0;
              goto LABEL_145;
          }

          goto LABEL_208;
        }

        if (v4 > 1819243875)
        {
          if (v4 == 1819243876)
          {
            v6 = 0;
            goto LABEL_144;
          }

          if (v4 == 1835100003)
          {
            v6 = 0;
            goto LABEL_144;
          }

          goto LABEL_208;
        }

        if (v4 != 1818977637)
        {
          if (v4 == 1819240307)
          {
            v6 = 0;
            goto LABEL_145;
          }

          goto LABEL_208;
        }

        goto LABEL_97;
      }

      if (v4 <= 1885430127)
      {
        if (v4 == 1835428128)
        {
          v6 = 0;
          goto LABEL_145;
        }

        if (v4 != 1835428205)
        {
          if (v4 == 1852796517)
          {
            v6 = 0;
            goto LABEL_144;
          }

          goto LABEL_208;
        }

        v5 = 0;
      }

      else if (v4 > 1885434479)
      {
        if (v4 == 1885434480)
        {
          v5 = 0;
        }

        else
        {
          if (v4 != 1885434725)
          {
            goto LABEL_208;
          }

          v5 = 0;
        }
      }

      else if (v4 == 1885430128)
      {
        v5 = 0;
      }

      else
      {
        if (v4 != 1885432944)
        {
          goto LABEL_208;
        }

        v5 = 0;
      }
    }

    else
    {
      if (v4 <= 1668247141)
      {
        if (v4 <= 1634627170)
        {
          switch(v4)
          {
            case 0x6163746E:
              v6 = 0;
              goto LABEL_145;
            case 0x616D736D:
              v6 = 0;
              goto LABEL_145;
            case 0x616E6368:
              v6 = 0;
              goto LABEL_144;
          }

          goto LABEL_208;
        }

        if (v4 <= 1635087463)
        {
          if (v4 == 1634627171)
          {
            v6 = 0;
            goto LABEL_144;
          }

          if (v4 == 1634956656)
          {
            v5 = 0;
            goto LABEL_128;
          }

LABEL_208:
          if (gLogCategory_APTransportPackageHTTP <= 50 && (gLogCategory_APTransportPackageHTTP != -1 || _LogCategory_Initialize()))
          {
            APTransportPackageHTTPGetHTTPMessage_cold_21(v4);
          }

          APSLogErrorAt();
          goto LABEL_212;
        }

        if (v4 != 1635087464)
        {
          if (v4 == 1668246893)
          {
            v6 = 0;
            goto LABEL_145;
          }

          goto LABEL_208;
        }

LABEL_97:
        v6 = 0;
        goto LABEL_145;
      }

      if (v4 > 1718628916)
      {
        if (v4 <= 1735422065)
        {
          if (v4 == 1718628917)
          {
            v6 = 0;
            goto LABEL_145;
          }

          if (v4 == 1718839394)
          {
            v6 = 0;
            goto LABEL_144;
          }

          goto LABEL_208;
        }

        if (v4 != 1735422066)
        {
          if (v4 == 1735815020)
          {
            v6 = 0;
            goto LABEL_144;
          }

          goto LABEL_208;
        }

LABEL_104:
        v5 = 1;
        goto LABEL_128;
      }

      if (v4 == 1668247142)
      {
        v6 = 0;
        goto LABEL_145;
      }

      if (v4 == 1702064240)
      {
        v6 = 0;
        goto LABEL_145;
      }

      if (v4 != 1718383464)
      {
        goto LABEL_208;
      }

      v5 = 1;
    }

    goto LABEL_128;
  }

  if (v4 <= 1936024938)
  {
    if (v4 > 1886613611)
    {
      if (v4 <= 1918984563)
      {
        if (v4 == 1886613612)
        {
          v6 = 0;
          goto LABEL_145;
        }

        if (v4 == 1886614892)
        {
          v6 = 0;
          goto LABEL_145;
        }

        v7 = 1886809964;
      }

      else
      {
        if (v4 > 1919119971)
        {
          if (v4 == 1919119972)
          {
            v6 = 0;
            goto LABEL_144;
          }

          if (v4 != 1920164128)
          {
            goto LABEL_208;
          }

          goto LABEL_97;
        }

        if (v4 == 1918984564)
        {
          v6 = 0;
          goto LABEL_145;
        }

        v7 = 1918989413;
      }

      if (v4 != v7)
      {
        goto LABEL_208;
      }

      v5 = 1;
      goto LABEL_128;
    }

    if (v4 <= 1886283374)
    {
      switch(v4)
      {
        case 0x70617574:
          v5 = 0;
          break;
        case 0x70617665:
          v5 = 0;
          break;
        case 0x706C6179:
          v6 = 0;
          goto LABEL_145;
        default:
          goto LABEL_208;
      }

      goto LABEL_128;
    }

    if (v4 <= 1886417779)
    {
      if (v4 == 1886283375)
      {
        v6 = 0;
        goto LABEL_145;
      }

      if (v4 == 1886283552)
      {
        v6 = 0;
        goto LABEL_144;
      }

      goto LABEL_208;
    }

    if (v4 == 1886417780)
    {
      v5 = 0;
      goto LABEL_128;
    }

    v8 = 1886547815;
LABEL_84:
    if (v4 == v8)
    {
      v6 = 0;
      goto LABEL_144;
    }

    goto LABEL_208;
  }

  if (v4 > 1937011315)
  {
    if (v4 > 1952741229)
    {
      if (v4 > 1953719407)
      {
        if (v4 == 1953719408)
        {
          v6 = 0;
          goto LABEL_144;
        }

        if (v4 == 2053925920)
        {
          v6 = 0;
          goto LABEL_144;
        }
      }

      else
      {
        if (v4 == 1952741230)
        {
          v6 = 0;
          goto LABEL_144;
        }

        if (v4 == 1952807028)
        {
          v6 = 0;
          goto LABEL_144;
        }
      }

      goto LABEL_208;
    }

    if (v4 == 1937011316)
    {
      v6 = 0;
      goto LABEL_144;
    }

    if (v4 == 1937012080)
    {
      v6 = 0;
      goto LABEL_144;
    }

    v8 = 1937141612;
    goto LABEL_84;
  }

  if (v4 <= 1936748657)
  {
    if (v4 != 1936024939)
    {
      if (v4 == 1936027749)
      {
        v6 = 0;
        goto LABEL_144;
      }

      if (v4 == 1936027768)
      {
        v6 = 0;
        goto LABEL_144;
      }

      goto LABEL_208;
    }

    goto LABEL_104;
  }

  if (v4 > 1936942191)
  {
    if (v4 == 1936942192)
    {
      v6 = 0;
      goto LABEL_144;
    }

    if (v4 == 1937010544)
    {
      v6 = 0;
      goto LABEL_145;
    }

    goto LABEL_208;
  }

  if (v4 != 1936748658)
  {
    if (v4 == 1936875892)
    {
      v6 = 0;
      goto LABEL_144;
    }

    goto LABEL_208;
  }

  v5 = 1;
LABEL_128:
  if (!*(DerivedStorage + 16))
  {
    v6 = 0;
    if (!v5)
    {
      goto LABEL_145;
    }

    goto LABEL_144;
  }

  v9 = *MEMORY[0x277CBECE8];
  CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
  if (CFDataWithBlockBufferNoCopy)
  {
    APTransportPackageHTTPGetHTTPMessage_cold_1(CFDataWithBlockBufferNoCopy);
    goto LABEL_212;
  }

  v11 = CFPropertyListCreateWithData(v9, data, 0, 0, 0);
  v6 = v11;
  if (!v11 || (v12 = CFGetTypeID(v11), v12 != CFDictionaryGetTypeID()))
  {
    APTransportPackageHTTPGetHTTPMessage_cold_2();
    goto LABEL_213;
  }

  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    v14 = *v3;
    *v3 = TypedValue;
    CFRetain(TypedValue);
    if (v14)
    {
      CFRelease(v14);
    }
  }

  if (v5)
  {
LABEL_144:
    v15 = CFStringCopyUTF8CString();
    if (v15)
    {
      APTransportPackageHTTPGetHTTPMessage_cold_3(v15);
      goto LABEL_213;
    }
  }

LABEL_145:
  inited = HTTPHeader_InitRequest();
  if (inited)
  {
    APTransportPackageHTTPGetHTTPMessage_cold_4(inited);
    goto LABEL_213;
  }

  v17 = *(v3 + 8);
  switch(v17)
  {
    case 1886151033:
      v22 = *(v3 + 24);
      FractionalDateString = MakeFractionalDateString();
      HTTPHeader_SetField(v22 + 24, "X-Transmit-Date", "%s", FractionalDateString);
      break;
    case 1768842863:
      v19 = *(v3 + 24);
      UserVersion = APSSystemGetUserVersion();
      v21 = HTTPHeader_SetField(v19 + 24, "X-Apple-ProtocolVersion", "%u", UserVersion);
      if (v21)
      {
        APTransportPackageHTTPGetHTTPMessage_cold_5(v21);
        goto LABEL_213;
      }

      break;
    case 1718628917:
      v18 = HTTPHeader_SetField(*(v3 + 24) + 24, "X-Apple-ET", "%u", 32);
      if (v18)
      {
        APTransportPackageHTTPGetHTTPMessage_cold_6(v18);
LABEL_213:
        v39 = 0;
        goto LABEL_194;
      }

      break;
  }

  if (*(v3 + 32))
  {
    v24 = HTTPHeader_SetField(*(v3 + 24) + 24, "X-Apple-StreamID", "%llu", *(v3 + 32));
    if (v24)
    {
      APTransportPackageHTTPGetHTTPMessage_cold_7(v24);
      goto LABEL_213;
    }
  }

  if (v6)
  {
    CFDictionaryApplyFunction(v6, httppackage_appendCustomHeaderField, a1);
    CFDataGetTypeID();
    v25 = CFDictionaryGetTypedValue();
    if (v25)
    {
      v26 = v25;
      CFDataGetLength(v25);
      CFDataGetBytePtr(v26);
      v27 = HTTPMessageSetBody();
      if (v27)
      {
        APTransportPackageHTTPGetHTTPMessage_cold_8(v27);
        goto LABEL_213;
      }
    }

    goto LABEL_169;
  }

  v28 = *(v3 + 16);
  if (!v28)
  {
LABEL_169:
    v32 = 1;
    goto LABEL_188;
  }

  totalLengthOut = 0;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(v28, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
  if (DataPointer)
  {
    APTransportPackageHTTPGetHTTPMessage_cold_9(DataPointer);
    goto LABEL_212;
  }

  v30 = *(v3 + 8);
  if (v30 <= 1886547814)
  {
    if (v30 != 1785750887 && v30 != 1852796517 && v30 != 1886283552)
    {
      goto LABEL_204;
    }
  }

  else if (v30 > 1936942191)
  {
    if (v30 != 1952807028)
    {
      if (v30 == 1936942192)
      {
        if (lengthAtOffsetOut != totalLengthOut)
        {
          APTransportPackageHTTPGetHTTPMessage_cold_17();
          goto LABEL_212;
        }

        v33 = HTTPHeader_SetField(*(v3 + 24) + 24, "Transport", "%.*s", lengthAtOffsetOut, dataPointerOut);
        if (v33)
        {
          APTransportPackageHTTPGetHTTPMessage_cold_18(v33);
          goto LABEL_212;
        }

        goto LABEL_186;
      }

      goto LABEL_204;
    }
  }

  else if (v30 != 1886547815)
  {
    if (v30 == 1920164128)
    {
      if (lengthAtOffsetOut != totalLengthOut)
      {
        APTransportPackageHTTPGetHTTPMessage_cold_15();
        goto LABEL_212;
      }

      v31 = HTTPHeader_SetField(*(v3 + 24) + 24, "Apple-Challenge", "%.*s", lengthAtOffsetOut, dataPointerOut);
      if (v31)
      {
        APTransportPackageHTTPGetHTTPMessage_cold_16(v31);
LABEL_212:
        v6 = 0;
        goto LABEL_213;
      }

      goto LABEL_186;
    }

LABEL_204:
    if (lengthAtOffsetOut != totalLengthOut)
    {
      APTransportPackageHTTPGetHTTPMessage_cold_19();
      goto LABEL_212;
    }

    v42 = HTTPMessageSetBody();
    if (IsAppleInternalBuild())
    {
      httpPackage_computeMessageTypeString(a1, dataPointerOut, totalLengthOut, v52);
      v38 = 1;
      if (!v42)
      {
        goto LABEL_187;
      }
    }

    else
    {
      v38 = 0;
      if (!v42)
      {
        goto LABEL_187;
      }
    }

    APTransportPackageHTTPGetHTTPMessage_cold_20(v42);
    goto LABEL_212;
  }

  v34 = HTTPHeader_SetField(*(v3 + 24) + 24, "RTP-Info", "rtptime=%u", *dataPointerOut);
  if (v34)
  {
    APTransportPackageHTTPGetHTTPMessage_cold_10(v34);
    goto LABEL_212;
  }

  if (totalLengthOut < 5)
  {
    v37 = HTTPMessageSetBody();
    if (v37)
    {
      APTransportPackageHTTPGetHTTPMessage_cold_11(v37);
      goto LABEL_212;
    }
  }

  else
  {
    v35 = CMBlockBufferGetDataPointer(*(v3 + 16), 4uLL, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
    if (v35)
    {
      APTransportPackageHTTPGetHTTPMessage_cold_12(v35);
      goto LABEL_212;
    }

    if (lengthAtOffsetOut + 4 != totalLengthOut)
    {
      APTransportPackageHTTPGetHTTPMessage_cold_13();
      goto LABEL_212;
    }

    v36 = HTTPMessageSetBody();
    if (v36)
    {
      APTransportPackageHTTPGetHTTPMessage_cold_14(v36);
      goto LABEL_212;
    }
  }

LABEL_186:
  v38 = 0;
LABEL_187:
  v32 = v38 == 0;
LABEL_188:
  if (IsAppleInternalBuild() || (v41 = *(v3 + 8), v41 == 1952741230) || v41 == 1937012080)
  {
    if (v32)
    {
      httpPackage_computeMessageTypeString(a1, 0, 0, v52);
    }

    if (LOBYTE(v52[0]))
    {
      HTTPMessageSetClientMessageType();
    }
  }

  v39 = *(v3 + 24);
LABEL_194:
  if (v47)
  {
    free(v47);
    v47 = 0;
  }

  if (data)
  {
    CFRelease(data);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v39;
}