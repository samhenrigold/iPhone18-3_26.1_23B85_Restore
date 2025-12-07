@interface Activate
@end

@implementation Activate

void __carEndpoint_Activate_block_invoke(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = "\n";
  if (carEndpoint_isDissociated(*(a1 + 32)))
  {
    LODWORD(v4) = -16723;
    APSLogErrorAt();
    v5 = 0;
    goto LABEL_434;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v248 = 0;
  v249 = &v248;
  v250 = 0x2000000000;
  v251 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v246 = 0;
  v247 = 0;
  v245 = 0;
  v241 = 0;
  v242 = &v241;
  v243 = 0x2000000000;
  v244 = 0;
  v237 = 0;
  v238 = &v237;
  v239 = 0x2000000000;
  v240 = 0;
  if (*(DerivedStorage + 536))
  {
    APSEventRecorderRecordEventWithFlags();
  }

  v9 = LogCategoryCopyOSLogHandle();
  v10 = v9;
  v11 = MEMORY[0x277D86220];
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = MEMORY[0x277D86220];
  }

  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_221FFA000, v12, OS_SIGNPOST_EVENT, 0x2B160198uLL, "AP_SIGNPOST_ENDPOINTSELECTED", &unk_2222A918B, buf, 2u);
  }

  if (v10)
  {
    os_release(v10);
  }

  carEndpoint_setFeatureFlagsToDefaultValues(v6, 0, 0);
  v13 = *(DerivedStorage + 168);
  *buf = MEMORY[0x277D85DD0];
  v228 = 0x40000000;
  v229 = __carEndpoint_activateInternal_block_invoke;
  v230 = &unk_27849E6A8;
  v231 = &v248;
  v232 = &v237;
  v234 = DerivedStorage;
  v235 = v6;
  v236 = v2;
  v233 = &v241;
  dispatch_sync(v13, buf);
  if (*(v249 + 6))
  {
    v5 = 0;
    v19 = 0;
    goto LABEL_78;
  }

  if (*(DerivedStorage + 536))
  {
    APSEventRecorderRecordEvent();
  }

  v14 = LogCategoryCopyOSLogHandle();
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v11;
  }

  if (os_signpost_enabled(v16))
  {
    *block = 0;
    _os_signpost_emit_with_name_impl(&dword_221FFA000, v16, OS_SIGNPOST_EVENT, 0x2B8D0804uLL, "AP_SIGNPOST_CAR_SETUPREQUESTFEATURELIST_START", &unk_2222A918B, block, 2u);
  }

  if (v15)
  {
    os_release(v15);
  }

  v17 = CMBaseObjectGetDerivedStorage();
  v189 = v7;
  if (!*(v17 + 160))
  {
    v20 = v17;
    *block = 0;
    Value = *(v17 + 48);
    if (Value)
    {
      Value = CFDictionaryGetValue(Value, @"pairedVehicleIdentifier");
    }

    SessionFeatureKeysWithIdentifier = APCarPlay_FetchSessionFeatureKeysWithIdentifier(Value, block);
    if (SessionFeatureKeysWithIdentifier)
    {
      v31 = SessionFeatureKeysWithIdentifier;
      __carEndpoint_Activate_block_invoke_cold_1(SessionFeatureKeysWithIdentifier);
    }

    else
    {
      v24 = *block;
      if (*block)
      {
        MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x277CBECE8], 0, *block);
        if (MutableCopy)
        {
          v19 = MutableCopy;
          carEndpoint_overrideFeatureKeyWithPrefValue(v6, MutableCopy, @"fileTransfer", @"enableCarPlayUpdateDataChannel");
          carEndpoint_overrideFeatureKeyWithPrefValue(v6, v19, @"vehicleStateProtocol", @"enableCarPlayProtocolDataChannels");
          carEndpoint_overrideFeatureKeyWithPrefValue(v6, v19, @"logTransfer", @"enableCarPlayLoggingDataChannel");
          carEndpoint_overrideFeatureKeyWithPrefValue(v6, v19, @"iAPChannel", @"enableiAPChannel");
          carEndpoint_overrideFeatureKeyWithPrefValue(v6, v19, @"uiSync", @"enableCarPlayClusterControlChannel");
          carEndpoint_overrideFeatureKeyWithPrefValue(v6, v19, @"mainBuffered", @"enableCarPlayBufferedAudio");
          carEndpoint_overrideFeatureKeyWithPrefValue(v6, v19, @"hevc", @"enableCarPlayEncodingStreamTypeHEVC");
          carEndpoint_overrideFeatureKeyWithPrefValue(v6, v19, @"sessionManagement", @"enableSessionManagement");
          v26 = CMBaseObjectGetDerivedStorage();
          IntWithDefault = APSSettingsGetIntWithDefault();
          v262.length = CFArrayGetCount(v19);
          v262.location = 0;
          CountOfValue = CFArrayGetCountOfValue(v19, v262, @"enhancedSiri");
          if (CountOfValue <= 1)
          {
            v29 = IntWithDefault == 0;
            if (CountOfValue != 1)
            {
              v29 = 0;
            }

            *(v26 + 56) = v29;
            if (CountOfValue && IntWithDefault && CountOfValue == 1)
            {
              v263.length = CFArrayGetCount(v19);
              v263.location = 0;
              FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v19, v263, @"enhancedSiri");
              CFArrayRemoveValueAtIndex(v19, FirstIndexOfValue);
            }

            if (FigCFArrayContainsValue())
            {
              CFArrayAppendValue(v19, @"videoPlayback");
            }

            *(v20 + 59) = carEndpoint_overrideFeatureKeyWithPrefValue(v6, v19, @"videoPlayback", @"enableCarPlayVideoPlayback");
            CFRelease(*block);
            if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_createSetupRequestFeatureList(FigEndpointRef, CFArrayRef *, CFDictionaryRef)", 33554482, "[%{ptr}] FeatureKey list proposed:%@", v6, v19);
            }

            goto LABEL_55;
          }

          __carEndpoint_Activate_block_invoke_cold_2();
          v31 = -6705;
        }

        else
        {
          __carEndpoint_Activate_block_invoke_cold_3();
          v31 = -16721;
        }
      }

      else
      {
        if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          __carEndpoint_Activate_block_invoke_cold_4(v6, v23, v24);
        }

        v31 = -16720;
        APSLogErrorAt();
      }
    }

    v19 = 0;
    goto LABEL_56;
  }

  if (v7 && (v18 = CFDictionaryGetValue(v7, @"FeaturesList")) != 0)
  {
    v19 = CFRetain(v18);
  }

  else
  {
    v19 = 0;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_createSetupRequestFeatureList(FigEndpointRef, CFArrayRef *, CFDictionaryRef)", 33554482, "[%{ptr}] In carPlayTestControlMode, FeatureKey list proposed:%@", v6, v19);
  }

LABEL_55:
  v31 = 0;
LABEL_56:
  *(v249 + 6) = v31;
  if (*(DerivedStorage + 536))
  {
    APSEventRecorderRecordEvent();
  }

  v32 = LogCategoryCopyOSLogHandle();
  v33 = v32;
  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = v11;
  }

  if (os_signpost_enabled(v34))
  {
    *block = 0;
    _os_signpost_emit_with_name_impl(&dword_221FFA000, v34, OS_SIGNPOST_EVENT, 0x2B8D0808uLL, "AP_SIGNPOST_CAR_SETUPREQUESTFEATURELIST_COMPLETE", &unk_2222A918B, block, 2u);
  }

  if (v33)
  {
    os_release(v33);
  }

  v35 = *(v249 + 6);
  if (v35)
  {
    __carEndpoint_Activate_block_invoke_cold_5(v35);
    goto LABEL_77;
  }

  v36 = v242[3];
  v37 = *(DerivedStorage + 304);
  v38 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v38)
  {
    v39 = 4294954514;
    *(v249 + 6) = -12782;
    goto LABEL_76;
  }

  v39 = v38(v36, v19, v37, &v246);
  *(v249 + 6) = v39;
  if (v39)
  {
LABEL_76:
    __carEndpoint_Activate_block_invoke_cold_53(v39);
LABEL_77:
    v5 = 0;
LABEL_78:
    v42 = 0;
    goto LABEL_418;
  }

  v196 = v19;
  v197 = v6;
  v191 = DerivedStorage;
  if (!v246)
  {
    theDict = 0;
    goto LABEL_203;
  }

  if (FigCFArrayContainsValue())
  {
    v40 = FigCFArrayCreateMutableCopy();
    v41 = FigCFArrayGetFirstIndexOfValue();
    CFArraySetValueAtIndex(v40, v41, @"videoPlayback");
    CFRelease(v246);
    v246 = v40;
    *(DerivedStorage + 61) = 1;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_activateInternal(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, dispatch_semaphore_t, uint32_t *)", 33554482, "[%{ptr}] FeatureKey list negotiated:%@", v6, v246);
  }

  v43 = v246;
  theDicta = *(v238 + 6);
  v44 = CMBaseObjectGetDerivedStorage();
  v264.length = CFArrayGetCount(v43);
  v264.location = 0;
  if (CFArrayContainsValue(v43, v264, @"altScreen"))
  {
    *(v44 + 63) = 1;
  }

  v265.length = CFArrayGetCount(v43);
  v265.location = 0;
  if (CFArrayContainsValue(v43, v265, @"uiContext"))
  {
    *(v44 + 64) = 1;
  }

  v266.length = CFArrayGetCount(v43);
  v266.location = 0;
  if (CFArrayContainsValue(v43, v266, @"viewAreas"))
  {
    *(v44 + 62) = 1;
  }

  v45 = v2;
  if (*(v44 + 56))
  {
    v267.length = CFArrayGetCount(v43);
    v267.location = 0;
    if (CFArrayContainsValue(v43, v267, @"enhancedSiri"))
    {
      *(v44 + 57) = 1;
    }
  }

  v46 = *(v44 + 8);
  v47 = *MEMORY[0x277CBED28];
  v48 = *MEMORY[0x277CBED10];
  if (*(v44 + 57))
  {
    v49 = *MEMORY[0x277CBED28];
  }

  else
  {
    v49 = *MEMORY[0x277CBED10];
  }

  v50 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v50)
  {
    v50(v46, @"SupportsJarvis", v49);
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_Activate_block_invoke_cold_6();
  }

  v268.length = CFArrayGetCount(v43);
  v268.location = 0;
  if (CFArrayContainsValue(v43, v268, @"cornerMasks"))
  {
    *(v44 + 65) = 1;
    if (gLogCategory_APEndpointCarPlay <= 50)
    {
      if (gLogCategory_APEndpointCarPlay == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_103;
        }

        v51 = *(v44 + 65);
      }

      else
      {
        v51 = 1;
      }

      LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_readSupportedFeaturesFromSetupResponseAndNotify(FigEndpointRef, CFArrayRef, uint32_t)", 33554482, "[%{ptr}], displayCornerMasksEnabled = %d", v197, v51);
    }
  }

LABEL_103:
  v269.length = CFArrayGetCount(v43);
  v269.location = 0;
  if (CFArrayContainsValue(v43, v269, @"focusTransfer"))
  {
    *(v44 + 66) = 1;
    if (gLogCategory_APEndpointCarPlay <= 50)
    {
      if (gLogCategory_APEndpointCarPlay != -1)
      {
        v52 = 1;
LABEL_107:
        LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_readSupportedFeaturesFromSetupResponseAndNotify(FigEndpointRef, CFArrayRef, uint32_t)", 33554482, "[%{ptr}], focusTransferEnabled = %d", v197, v52);
        goto LABEL_109;
      }

      if (_LogCategory_Initialize())
      {
        v52 = *(v44 + 66);
        goto LABEL_107;
      }
    }
  }

LABEL_109:
  v270.length = CFArrayGetCount(v43);
  v270.location = 0;
  if (CFArrayContainsValue(v43, v270, @"hevc"))
  {
    *(v44 + 68) = 1;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_Activate_block_invoke_cold_7();
  }

  v271.length = CFArrayGetCount(v43);
  v271.location = 0;
  if (CFArrayContainsValue(v43, v271, @"fileTransfer"))
  {
    *(v44 + 69) = 1;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_readSupportedFeaturesFromSetupResponseAndNotify(FigEndpointRef, CFArrayRef, uint32_t)", 33554482, "[%{ptr}], updateDataChannel = %d", v197, *(v44 + 69));
  }

  v272.length = CFArrayGetCount(v43);
  v272.location = 0;
  if (CFArrayContainsValue(v43, v272, @"logTransfer"))
  {
    *(v44 + 104) = 1;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_readSupportedFeaturesFromSetupResponseAndNotify(FigEndpointRef, CFArrayRef, uint32_t)", 33554482, "[%{ptr}], loggingDataChannel = %d", v197, *(v44 + 104));
  }

  v273.length = CFArrayGetCount(v43);
  v273.location = 0;
  if (CFArrayContainsValue(v43, v273, @"uiSync"))
  {
    *(v44 + 120) = 1;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_readSupportedFeaturesFromSetupResponseAndNotify(FigEndpointRef, CFArrayRef, uint32_t)", 33554482, "[%{ptr}], clusterControlChannel = %d", v197, *(v44 + 120));
  }

  v274.length = CFArrayGetCount(v43);
  v274.location = 0;
  if (CFArrayContainsValue(v43, v274, @"vehicleStateProtocol"))
  {
    *(v44 + 80) = 1;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_readSupportedFeaturesFromSetupResponseAndNotify(FigEndpointRef, CFArrayRef, uint32_t)", 33554482, "[%{ptr}], protocolDataChannels = %d", v197, *(v44 + 80));
  }

  v275.length = CFArrayGetCount(v43);
  v275.location = 0;
  if (CFArrayContainsValue(v43, v275, @"iAPChannel"))
  {
    *(v44 + 136) = 1;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_readSupportedFeaturesFromSetupResponseAndNotify(FigEndpointRef, CFArrayRef, uint32_t)", 33554482, "[%{ptr}], iAPChannel = %d", v197, *(v44 + 136));
  }

  v276.length = CFArrayGetCount(v43);
  v276.location = 0;
  if (CFArrayContainsValue(v43, v276, @"mainBuffered"))
  {
    *(v44 + 58) = 1;
    v53 = v47;
  }

  else if (*(v44 + 58))
  {
    v53 = v47;
  }

  else
  {
    v53 = v48;
  }

  v54 = *(v44 + 8);
  v55 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v55)
  {
    v55(v54, @"SupportsBufferedAudio", v53);
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_Activate_block_invoke_cold_8();
  }

  v277.length = CFArrayGetCount(v43);
  v277.location = 0;
  if (CFArrayContainsValue(v43, v277, @"videoPlayback"))
  {
    if (!*(v44 + 59))
    {
      if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        __carEndpoint_Activate_block_invoke_cold_9(v197, v56, v57);
      }

      *(v249 + 6) = -6735;
      APSLogErrorAt();
      v5 = 0;
      v42 = 0;
      v2 = v45;
      v3 = "[%{ptr}] %###s called: handler [%{ptr}], context [%{ptr}], clientRef [%@]\n" + 73;
      v19 = v196;
      v6 = v197;
      goto LABEL_418;
    }

    *(v44 + 60) = 1;
  }

  else if (!*(v44 + 60))
  {
    v47 = v48;
  }

  v58 = *(v44 + 8);
  v59 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v59)
  {
    v59(v58, @"SupportsAirPlayVideoV2", v47);
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_Activate_block_invoke_cold_10();
  }

  v278.length = CFArrayGetCount(v43);
  v278.location = 0;
  v2 = v45;
  if (CFArrayContainsValue(v43, v278, @"sessionManagement"))
  {
    *(v44 + 67) = 1;
  }

  v19 = v196;
  v6 = v197;
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_Activate_block_invoke_cold_11();
  }

  carEndpoint_postNotification(v197, *MEMORY[0x277CC0D48], theDicta, 0);
  *(v249 + 6) = 0;
  v60 = MEMORY[0x277D86220];
  if (v191[67])
  {
    APSEventRecorderRecordEvent();
  }

  v61 = LogCategoryCopyOSLogHandle();
  v62 = v61;
  if (v61)
  {
    v63 = v61;
  }

  else
  {
    v63 = v60;
  }

  v3 = "[%{ptr}] %###s called: handler [%{ptr}], context [%{ptr}], clientRef [%@]\n" + 73;
  if (os_signpost_enabled(v63))
  {
    *block = 0;
    _os_signpost_emit_with_name_impl(&dword_221FFA000, v63, OS_SIGNPOST_EVENT, 0x2B8D080CuLL, "AP_SIGNPOST_CAR_INFOREQUESTFEATURELIST_START", &unk_2222A918B, block, 2u);
  }

  if (v62)
  {
    os_release(v62);
  }

  v64 = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  theDict = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!theDict)
  {
    __carEndpoint_Activate_block_invoke_cold_17();
    theDict = 0;
    v69 = -16721;
    goto LABEL_191;
  }

  if (*(v64 + 63))
  {
    v65 = APCarPlay_CRFetchInstrumentClusterURLs(&theArray);
    if (v65)
    {
      v69 = v65;
      __carEndpoint_Activate_block_invoke_cold_12(v65);
      goto LABEL_475;
    }

    if (!theArray)
    {
      __carEndpoint_Activate_block_invoke_cold_14();
LABEL_474:
      v69 = -16721;
      goto LABEL_475;
    }

    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (!Mutable)
    {
      __carEndpoint_Activate_block_invoke_cold_13();
      v69 = -71750;
      goto LABEL_475;
    }

    v67 = Mutable;
    CFArrayGetCount(theArray);
    *block = MEMORY[0x277D85DD0];
    v220 = 0x40000000;
    v221 = __carEndpoint_createInfoRequestFeatureList_block_invoke;
    v222 = &__block_descriptor_tmp_641;
    v223 = v67;
    CFArrayApplyBlock();
    CFDictionarySetValue(theDict, @"altScreenURLs", v67);
    if (theArray)
    {
      CFRelease(theArray);
      theArray = 0;
    }

    CFRelease(v67);
  }

  if (!*(v64 + 64))
  {
    v69 = 0;
    goto LABEL_191;
  }

  UIContextMasterURLList = APCarPlay_FetchUIContextMasterURLList(&theArray);
  if (!UIContextMasterURLList)
  {
    if (theArray)
    {
      CFDictionarySetValue(theDict, @"uiContextURLs", theArray);
      v69 = 0;
      *(v64 + 64) = 1;
      goto LABEL_191;
    }

    __carEndpoint_Activate_block_invoke_cold_16();
    goto LABEL_474;
  }

  v69 = UIContextMasterURLList;
  __carEndpoint_Activate_block_invoke_cold_15(UIContextMasterURLList);
LABEL_475:
  CFRelease(theDict);
  theDict = 0;
LABEL_191:
  if (theArray)
  {
    CFRelease(theArray);
  }

  *(v249 + 6) = v69;
  if (v191[67])
  {
    APSEventRecorderRecordEvent();
  }

  v70 = LogCategoryCopyOSLogHandle();
  v71 = v70;
  if (v70)
  {
    v72 = v70;
  }

  else
  {
    v72 = v60;
  }

  if (os_signpost_enabled(v72))
  {
    *block = 0;
    _os_signpost_emit_with_name_impl(&dword_221FFA000, v72, OS_SIGNPOST_EVENT, 0x2B8D0810uLL, "AP_SIGNPOST_CAR_INFOREQUESTFEATURELIST_COMPLETE", &unk_2222A918B, block, 2u);
  }

  if (v71)
  {
    os_release(v71);
  }

  v73 = *(v249 + 6);
  if (v73)
  {
    __carEndpoint_Activate_block_invoke_cold_18(v73);
    goto LABEL_417;
  }

LABEL_203:
  v74 = v242[3];
  v75 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v75)
  {
    v76 = 4294954514;
    *(v249 + 6) = -12782;
    goto LABEL_220;
  }

  v76 = v75(v74, theDict);
  *(v249 + 6) = v76;
  if (v76)
  {
LABEL_220:
    __carEndpoint_Activate_block_invoke_cold_52(v76);
    goto LABEL_417;
  }

  v77 = CFGetAllocator(v6);
  APEndpointDescriptionGetCMBaseObject();
  v79 = v78;
  v80 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v80)
  {
    v81 = 4294954514;
    *(v249 + 6) = -12782;
    goto LABEL_282;
  }

  v81 = v80(v79, @"EndpointInfo", v77, &v245);
  *(v249 + 6) = v81;
  if (v81)
  {
LABEL_282:
    __carEndpoint_Activate_block_invoke_cold_51(v81);
    goto LABEL_417;
  }

  v82 = v245;
  v83 = CMBaseObjectGetDerivedStorage();
  if (!v82)
  {
    __carEndpoint_Activate_block_invoke_cold_50();
    goto LABEL_415;
  }

  v84 = v83;
  if (CFDictionaryContainsKey(v82, @"uiContextLastOnDisplayURLs") || CFDictionaryContainsKey(v82, @"uiContextNowOnDisplayURLs"))
  {
    if (!v84[64] && gLogCategory_APEndpointCarPlay <= 60 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carEndpoint_Activate_block_invoke_cold_19(v6, v85, v86);
    }
  }

  else if (v84[64])
  {
    if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carEndpoint_Activate_block_invoke_cold_20(v6, v85, v86);
    }

    v87 = -16720;
    goto LABEL_262;
  }

  v190 = v84;
  v88 = CFDictionaryGetValue(v82, @"displays");
  v89 = CFDictionaryGetValue(v82, @"displayPanels");
  if (!v88)
  {
    if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carEndpoint_Activate_block_invoke_cold_49(v6, v90, v91);
    }

    v87 = -16720;
LABEL_262:
    APSLogErrorAt();
    goto LABEL_416;
  }

  v184 = v89;
  v186 = v2;
  v187 = a1;
  Count = CFArrayGetCount(v88);
  theArray = 0;
  p_theArray = &theArray;
  v213 = 0x2000000000;
  LOBYTE(v214) = 0;
  LODWORD(v260) = 0;
  v185 = v82;
  v93 = CFDictionaryContainsKey(v82, @"hevcInfo");
  v96 = 8912896;
  if (!v93)
  {
    v96 = 9437184;
  }

  v193 = v96;
  if (Count < 1)
  {
    v188 = 0;
    v192 = 0;
LABEL_264:
    if (v190[63])
    {
      v2 = v186;
      v3 = "[%{ptr}] %###s called: handler [%{ptr}], context [%{ptr}], clientRef [%@]\n" + 73;
      v116 = v191;
      if (Count <= 1)
      {
        a1 = v187;
        v6 = v197;
        if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          __carEndpoint_Activate_block_invoke_cold_23(v197, v94, v95);
        }

LABEL_309:
        APSLogErrorAt();
        goto LABEL_414;
      }
    }

    else
    {
      v2 = v186;
      v3 = "[%{ptr}] %###s called: handler [%{ptr}], context [%{ptr}], clientRef [%@]\n" + 73;
      v116 = v191;
      if (Count >= 2)
      {
        a1 = v187;
        v6 = v197;
        if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          __carEndpoint_Activate_block_invoke_cold_48(v197, v94, v95);
        }

        goto LABEL_309;
      }
    }

    a1 = v187;
    if (v190[62])
    {
      if (!v192)
      {
        v6 = v197;
        if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          __carEndpoint_Activate_block_invoke_cold_24(v197, v94, v95);
        }

        goto LABEL_309;
      }
    }

    else if (v192 == 1 && gLogCategory_APEndpointCarPlay <= 60 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carEndpoint_Activate_block_invoke_cold_25(v197, v94, v95);
    }

    if (v190[66])
    {
      v6 = v197;
      if (!*(p_theArray + 24) && !v184)
      {
        v190[66] = 0;
        if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          __carEndpoint_Activate_block_invoke_cold_26(v197, v94, v95);
        }

        goto LABEL_309;
      }
    }

    else
    {
      v6 = v197;
      if (*(p_theArray + 24) == 1 && gLogCategory_APEndpointCarPlay <= 60 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        __carEndpoint_Activate_block_invoke_cold_27(v197, v94, v95);
      }
    }

    if (v190[65])
    {
      if (!v188)
      {
        v190[65] = 0;
        if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          __carEndpoint_Activate_block_invoke_cold_28(v6, v94, v95);
        }

        goto LABEL_309;
      }
    }

    else if (v188 == 1 && gLogCategory_APEndpointCarPlay <= 60 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carEndpoint_Activate_block_invoke_cold_29(v6, v94, v95);
    }

    _Block_object_dispose(&theArray, 8);
    v117 = carEndpoint_validateInfoResponseKeyPresentForFeature(v6, v185, @"hevcInfo", v190[68] != 0);
    if (v117)
    {
      v87 = v117;
      __carEndpoint_Activate_block_invoke_cold_30(v117);
      goto LABEL_416;
    }

    v118 = carEndpoint_validateInfoResponseKeyPresentForFeature(v6, v185, @"mainBufferedInfo", v190[58] != 0);
    if (v118)
    {
      v87 = v118;
      __carEndpoint_Activate_block_invoke_cold_31(v118);
      goto LABEL_416;
    }

    if (v190[61])
    {
      v119 = @"video2Info";
    }

    else
    {
      v119 = @"videoPlaybackInfo";
    }

    v120 = carEndpoint_validateInfoResponseKeyPresentForFeature(v6, v185, v119, v190[60] != 0);
    if (v120)
    {
      v87 = v120;
      __carEndpoint_Activate_block_invoke_cold_32(v120);
      goto LABEL_416;
    }

    v121 = carEndpoint_validateInfoResponseKeyPresentForFeature(v6, v185, @"sessionManagementInfo", v190[67] != 0);
    if (v121)
    {
      v87 = v121;
      __carEndpoint_Activate_block_invoke_cold_33(v121);
      goto LABEL_416;
    }

    v122 = carEndpoint_validateInfoResponseKeyPresentForFeature(v6, v185, @"fileTransferInfo", v190[69] != 0);
    if (v122)
    {
      v87 = v122;
      __carEndpoint_Activate_block_invoke_cold_34(v122);
      goto LABEL_416;
    }

    v123 = carEndpoint_validateInfoResponseKeyPresentForFeature(v6, v185, @"vehicleStateProtocolInfo", v190[80] != 0);
    if (v123)
    {
      v87 = v123;
      __carEndpoint_Activate_block_invoke_cold_35(v123);
      goto LABEL_416;
    }

    v124 = carEndpoint_validateInfoResponseKeyPresentForFeature(v6, v185, @"logTransferInfo", v190[104] != 0);
    if (v124)
    {
      v87 = v124;
      __carEndpoint_Activate_block_invoke_cold_36(v124);
      goto LABEL_416;
    }

    v125 = carEndpoint_validateInfoResponseKeyPresentForFeature(v6, v185, @"uiSyncInfo", v190[120] != 0);
    if (v125)
    {
      v87 = v125;
      __carEndpoint_Activate_block_invoke_cold_37(v125);
      goto LABEL_416;
    }

    *(v249 + 6) = 0;
    APEndpointDescriptionGetCMBaseObject();
    v127 = v126;
    v128 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v128)
    {
      v129 = v128(v127, @"HIDs", 0, &v247);
      *(v249 + 6) = v129;
      if (!v129)
      {
        v130 = v116[21];
        *block = MEMORY[0x277D85DD0];
        v220 = 0x40000000;
        v221 = __carEndpoint_activateInternal_block_invoke_147;
        v222 = &unk_27849E6D0;
        v223 = &v248;
        v224 = v116;
        v225 = v247;
        v226 = v197;
        dispatch_sync(v130, block);
        if (*(v249 + 6))
        {
          v5 = 0;
          v6 = v197;
LABEL_494:
          v42 = theDict;
          v19 = v196;
          goto LABEL_418;
        }

        v131 = CMBaseObjectGetDerivedStorage();
        carEndpoint_registerForGlobalNotification(v197, "com.apple.airplay.overrideTBTPrefsChanged", carEndpoint_handleOverrideTurnByTurnConfigurationChanged, v131 + 344);
        v132 = *(v131 + 512);
        theArray = MEMORY[0x277D85DD0];
        p_theArray = 0x40000000;
        v213 = __carEndpoint_registerForOverrideTurnByTurnConfigurationChangedNotification_block_invoke;
        v214 = &__block_descriptor_tmp_736;
        v215 = v197;
        dispatch_async(v132, &theArray);
        v133 = v116[21];
        theArray = MEMORY[0x277D85DD0];
        p_theArray = 0x40000000;
        v213 = __carEndpoint_activateInternal_block_invoke_2_152;
        v214 = &unk_27849E6F8;
        v215 = &v248;
        v216 = v116;
        v217 = v197;
        v218 = v189;
        dispatch_sync(v133, &theArray);
        v6 = v197;
        if (*(v249 + 6))
        {
          goto LABEL_493;
        }

        if (*(v116 + 57))
        {
          v134 = CMBaseObjectGetDerivedStorage();
          carEndpoint_registerForGlobalNotification(v197, "com.apple.coreaudio.BorealisToggled", carEndpoint_handleJarvisParametersChangedNotification, v134 + 428);
          carEndpoint_registerForGlobalNotification(v197, "com.apple.corespeech.voicetriggerassetchange", carEndpoint_handleJarvisParametersChangedNotification, (v134 + 54));
          carEndpoint_registerForGlobalNotification(v197, "com.apple.airplay.jarvisParametersChanged", carEndpoint_handleJarvisParametersChangedNotification, (v134 + 53));
          carEndpoint_registerForGlobalNotification(v197, "com.apple.mobile.keybagd.first_unlock", carEndpoint_handleJarvisParametersChangedNotification, v134 + 436);
          carEndpoint_registerForGlobalNotification(v197, kAPCarPlaySpringBoardStartNotificationKey, carEndpoint_handleJarvisParametersChangedNotification, (v134 + 55));
          v135 = *v134;
          *v252 = MEMORY[0x277D85DD0];
          v253 = 0x40000000;
          v254 = __carEndpoint_setupNotificationsAndInitialParametersForJarvis_block_invoke;
          v255 = &__block_descriptor_tmp_837;
          v256 = v197;
          dispatch_async(v135, v252);
          APCarPlayAVVCServerRegisterEndpoint(v197, v136, v137);
        }

        if (!*(v116 + 60))
        {
          goto LABEL_347;
        }

        v138 = *(v238 + 6);
        v261[0] = 0;
        v139 = CMBaseObjectGetDerivedStorage();
        *buffer = 0;
        v206 = 0;
        LODWORD(v208) = 0;
        v207 = 0;
        v260 = 0;
        v259 = 0;
        if (IsAppleInternalBuild())
        {
          APSSettingsGetBooleanIfPresent();
          if (v259)
          {
            __carEndpoint_Activate_block_invoke_cold_38(v252, v140, v141);
            v146 = *v252;
            goto LABEL_341;
          }
        }

        APSenderSessionGetCMBaseObject();
        v143 = v142;
        v144 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v144)
        {
          v145 = v144(v143, 0x28357A450, *MEMORY[0x277CBECE8], &v260);
          v261[0] = v145;
          if (!v145)
          {
            if (v260 && CFDataGetLength(v260) > 0x1B)
            {
              v279.location = 0;
              v279.length = 28;
              CFDataGetBytes(v260, v279, buffer);
              v146 = CFStringCreateF(v261, "%##a", buffer);
              if (!v261[0])
              {
                v182 = *(v139 + 40);
                *v252 = MEMORY[0x277D85DD0];
                v253 = 0x40000000;
                v254 = __carEndpoint_registerForHTTPProxy_block_invoke;
                v255 = &__block_descriptor_tmp_872;
                v256 = v197;
                v257 = v139;
                v258 = v138;
                v6 = v197;
                APHTTPProxyMonitorClientRegisterHTTPProxyMonitor(v197, v182, v146, v252);
                goto LABEL_342;
              }

              __carEndpoint_Activate_block_invoke_cold_39(v261[0]);
LABEL_341:
              v6 = v197;
LABEL_342:
              if (v260)
              {
                CFRelease(v260);
              }

              if (v146)
              {
                CFRelease(v146);
              }

              v147 = v261[0];
              *(v249 + 6) = v261[0];
              if (!v147)
              {
LABEL_347:
                DictionaryValue = FigCFDictionaryGetDictionaryValue();
                updated = carEndpoint_updateVideoPlaybackAllowed(v6, DictionaryValue, 0);
                *(v249 + 6) = updated;
                if (!updated)
                {
                  *(v116 + 162) = *(v116 + 60);
                  APSEventRecorderRecordEvent();
                  v150 = CMBaseObjectGetDerivedStorage();
                  *buffer = 0;
                  v206 = buffer;
                  v207 = 0x2000000000;
                  LODWORD(v208) = 0;
                  v151 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  if (v151)
                  {
                    v152 = v151;
                    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
                    {
                      v171 = CFGetAllocator(v6);
                      v172 = CFStringCreateMutable(v171, 0);
                      v153 = v172;
                      if (v172)
                      {
                        CFStringAppendFormat(v172, 0, @"CarPlay Connection: AirPlay Timing Information For %@\n", *(v150 + 16));
                      }
                    }

                    else
                    {
                      v153 = 0;
                    }

                    v154 = *(v150 + 544);
                    v155 = *(v150 + 536);
                    if (*(v150 + 40))
                    {
                      carEndpoint_addEventIntervalToPerformanceDictionaryAndLog(v154, 268427268, v155, 268304385, @"Total AirPlay Contribution (Endpoint Detected To Endpoint Activate Complete)", v152, v153);
                      *(v150 + 460) = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
                      v156 = *(v150 + 544);
                      v157 = @"EndpointDetectedOverWiFiTime";
                      v158 = 268427268;
                    }

                    else
                    {
                      carEndpoint_addEventIntervalToPerformanceDictionaryAndLog(v154, 268427269, v155, 268304385, @"Total AirPlay Contribution (Endpoint Detected To Endpoint Activate Complete)", v152, v153);
                      *(v150 + 460) = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
                      v156 = *(v150 + 544);
                      v157 = @"EndpointDetectedOverUSBTime";
                      v158 = 268427269;
                    }

                    carEndpoint_addEventToPerformanceDictionaryAndLog(v156, v158, v157, v152, v153);
                    carEndpoint_addEventToPerformanceDictionaryAndLog(*(v150 + 544), 268427275, @"CarPlayControlConnectCommandReceived", v152, v153);
                    carEndpoint_addEventToPerformanceDictionaryAndLog(*(v150 + 536), 150994945, @"ResolveDNSTime", v152, v153);
                    carEndpoint_addEventToPerformanceDictionaryAndLog(*(v150 + 544), 268427266, @"USBBrowsingStartTime", v152, v153);
                    carEndpoint_addEventToPerformanceDictionaryAndLog(*(v150 + 544), 268427267, @"WiFiBrowsingStartTime", v152, v153);
                    carEndpoint_addEventToPerformanceDictionaryAndLog(*(v150 + 536), 268304384, @"EndpointActivate", v152, v153);
                    carEndpoint_addEventToPerformanceDictionaryAndLog(*(v150 + 536), 150994944, @"QuerySRVTime", v152, v153);
                    carEndpoint_addEventToPerformanceDictionaryAndLog(*(v150 + 536), 150994946, @"ConnectTime", v152, v153);
                    carEndpoint_addEventToPerformanceDictionaryAndLog(*(v150 + 536), 150994948, @"ConnectedTime", v152, v153);
                    carEndpoint_addEventToPerformanceDictionaryAndLog(*(v150 + 536), 250609664, @"EndpointConnectionStartTime", v152, v153);
                    carEndpoint_addEventToPerformanceDictionaryAndLog(*(v150 + 536), 250609668, @"EndpointGetInfoCompleteTime", v152, v153);
                    carEndpoint_addEventIntervalToPerformanceDictionaryAndLog(*(v150 + 536), 250609667, *(v150 + 536), 250609668, @"INFOTimeMs", v152, v153);
                    carEndpoint_addEventIntervalToPerformanceDictionaryAndLog(*(v150 + 536), 150994946, *(v150 + 536), 150994948, @"ConnectTimeMs", v152, v153);
                    carEndpoint_addEventIntervalToPerformanceDictionaryAndLog(*(v150 + 536), 250609677, *(v150 + 536), 250609678, @"EndpointAUTHTimeMs", v152, v153);
                    carEndpoint_addEventIntervalToPerformanceDictionaryAndLog(*(v150 + 536), 250609675, *(v150 + 536), 250609676, @"EndpointRECORDTimeMs", v152, v153);
                    TimeBetweenEventsInMilliSecondRecursive = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
                    v160 = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive() + TimeBetweenEventsInMilliSecondRecursive;
                    v161 = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
                    v162 = v160 + v161 + APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
                    v163 = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
                    carEndpoint_addIntervalToPerformanceDictionaryAndLog(v162 + v163, @"EndpointTotalSETUPTimeMs", v152, v153);
                    if (*(v150 + 536))
                    {
                      APSEventRecorderRecordEvent();
                    }

                    v164 = LogCategoryCopyOSLogHandle();
                    v165 = v164;
                    if (v164)
                    {
                      v166 = v164;
                    }

                    else
                    {
                      v166 = MEMORY[0x277D86220];
                    }

                    v6 = v197;
                    if (os_signpost_enabled(v166))
                    {
                      *v252 = 0;
                      _os_signpost_emit_with_name_impl(&dword_221FFA000, v166, OS_SIGNPOST_EVENT, 0x2B8D07E8uLL, "AP_SIGNPOST_CAR_SENT_STATISTICS", &unk_2222A918B, v252, 2u);
                    }

                    if (v165)
                    {
                      os_release(v165);
                    }

                    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF(&gLogCategory_APEndpointCarPlay, "void carEndpoint_postPerformanceReport(FigEndpointRef)", 33554482, "[%{ptr}] %@", v197, v153);
                    }

                    v167 = *(v150 + 168);
                    *v252 = MEMORY[0x277D85DD0];
                    v253 = 0x40000000;
                    v254 = __carEndpoint_postPerformanceReport_block_invoke;
                    v255 = &unk_27849F120;
                    v256 = buffer;
                    v257 = v150;
                    dispatch_sync(v167, v252);
                    carEndpoint_postNotification(v197, *MEMORY[0x277CC0D80], *(v206 + 24), v152);
                    CFRelease(v152);
                    if (v153)
                    {
                      CFRelease(v153);
                    }
                  }

                  else
                  {
                    __carEndpoint_Activate_block_invoke_cold_44();
                  }

                  _Block_object_dispose(buffer, 8);
                  carEndpoint_powerLogActivation(v6, 1);
                  v168 = CMBaseObjectGetDerivedStorage();
                  v169 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  v3 = "[%{ptr}] %###s called: handler [%{ptr}], context [%{ptr}], clientRef [%@]\n" + 73;
                  if (v169)
                  {
                    carEndpoint_addSignPostTimeToDictionary(*(v168 + 544), 268427271, @"AP_SIGNPOST_CAR_CARENTERED", v169);
                    carEndpoint_addSignPostTimeToDictionary(*(v168 + 544), 268427270, @"AP_SIGNPOST_CAR_USB_LINKUP", v169);
                    carEndpoint_addSignPostTimeToDictionary(*(v168 + 544), 268427272, @"AP_SIGNPOST_CAR_WIFI_LINKUP", v169);
                    carEndpoint_addSignPostTimeToDictionary(*(v168 + 544), 268427276, @"AP_SIGNPOST_CAR_STARTSESSIONHOST", v169);
                    carEndpoint_addSignPostTimeToDictionary(*(v168 + 544), 268427266, @"AP_SIGNPOST_CAR_STARTEDBROWSE_USB", v169);
                    carEndpoint_addSignPostTimeToDictionary(*(v168 + 544), 268427267, @"AP_SIGNPOST_CAR_STARTEDBROWSE_WIFI", v169);
                    carEndpoint_addSignPostTimeToDictionary(*(v168 + 544), 268427269, @"AP_SIGNPOST_ENDPOINTADDED_USB", v169);
                    carEndpoint_addSignPostTimeToDictionary(*(v168 + 544), 268427268, @"AP_SIGNPOST_ENDPOINTADDED_WIFI", v169);
                    carEndpoint_addSignPostTimeToDictionary(*(v168 + 544), 268427273, @"AP_SIGNPOST_CAR_CONTROLSERVER_STARTEDSERVER", v169);
                    carEndpoint_addSignPostTimeToDictionary(*(v168 + 536), 268304384, @"AP_SIGNPOST_ENDPOINTSELECTED", v169);
                    carEndpoint_addSignPostTimeToDictionary(*(v168 + 536), 150994946, @"AP_SIGNPOST_DNS_RESOLVED", v169);
                    carEndpoint_addSignPostTimeToDictionary(*(v168 + 536), 250609681, @"AP_SIGNPOST_CAR_INITIALCONNECTION_START", v169);
                    carEndpoint_addSignPostTimeToDictionary(*(v168 + 536), 250609682, @"AP_SIGNPOST_CAR_INITIALCONNECTION_COMPLETE", v169);
                    carEndpoint_addSignPostTimeToDictionary(*(v168 + 536), 250609673, @"AP_SIGNPOST_CAR_PAIRING_START", v169);
                    carEndpoint_addSignPostTimeToDictionary(*(v168 + 536), 250609674, @"AP_SIGNPOST_CAR_PAIRING_COMPLETE", v169);
                    carEndpoint_addSignPostTimeToDictionary(*(v168 + 536), 250609677, @"AP_SIGNPOST_CAR_AUTHORIZE_START", v169);
                    carEndpoint_addSignPostTimeToDictionary(*(v168 + 536), 250609678, @"AP_SIGNPOST_CAR_AUTHORIZE_COMPLETE", v169);
                    carEndpoint_addSignPostTimeToDictionary(*(v168 + 536), 250609679, @"AP_SIGNPOST_CAR_SETUPMESSAGE_START", v169);
                    carEndpoint_addSignPostTimeToDictionary(*(v168 + 536), 250609680, @"AP_SIGNPOST_CAR_SETUPMESSAGE_COMPLETE", v169);
                    carEndpoint_addSignPostTimeToDictionary(*(v168 + 536), 250609667, @"AP_SIGNPOST_CAR_INFOMESSAGE_START", v169);
                    carEndpoint_addSignPostTimeToDictionary(*(v168 + 536), 250609668, @"AP_SIGNPOST_CAR_INFOMESSAGE_COMPLETE", v169);
                    carEndpoint_addSignPostTimeToDictionary(*(v168 + 536), 250609675, @"AP_SIGNPOST_CAR_STARTSESSION_START", v169);
                    carEndpoint_addSignPostTimeToDictionary(*(v168 + 536), 250609676, @"AP_SIGNPOST_CAR_STARTSESSION_COMPLETE", v169);
                    carEndpoint_addSignPostTimeToDictionary(*(v168 + 536), 268304387, @"AP_SIGNPOST_CAR_SENT_STATISTICS", v169);
                    v170 = APCarPlay_AddSignPostTimeInfoToTimeStore(@"CARAirPlayConnectionTimeInfo", v169);
                    v19 = v196;
                    if (!v170)
                    {
LABEL_399:
                      CFRelease(v169);
LABEL_400:
                      if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
                      {
                        LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_activateInternal(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, dispatch_semaphore_t, uint32_t *)", 33554482, "[%{ptr}] Activated endpoint %'@ with seed %u...\n", v6, v191[2], *(v238 + 6));
                      }

                      v5 = *(v238 + 6);
                      a1 = v187;
                      v42 = theDict;
                      if (introspector_getCollectionOfActiveCarPlayEndpoints_once != -1)
                      {
                        __carEndpoint_Activate_block_invoke_cold_46();
                      }

                      if (introspector_getCollectionOfActiveCarPlayEndpoints_coll)
                      {
                        v173 = *introspector_getCollectionOfActiveCarPlayEndpoints_coll;
                        *v252 = MEMORY[0x277D85DD0];
                        v253 = 0x40000000;
                        v254 = __carEndpoint_activateInternal_block_invoke_2_160;
                        v255 = &__block_descriptor_tmp_161_0;
                        v256 = introspector_getCollectionOfActiveCarPlayEndpoints_coll;
                        v257 = v6;
                        dispatch_sync(v173, v252);
                      }

                      if (APSSettingsGetInt64())
                      {
                        v174 = v191[21];
                        *buffer = MEMORY[0x277D85DD0];
                        v206 = 0x40000000;
                        v207 = __carEndpoint_activateInternal_block_invoke_3_165;
                        v208 = &unk_27849E740;
                        v209 = &v248;
                        v210 = v191;
                        dispatch_async(v174, buffer);
                      }

                      goto LABEL_418;
                    }
                  }

                  else
                  {
                    __carEndpoint_Activate_block_invoke_cold_45();
                    v170 = 4294950575;
                    v19 = v196;
                  }

                  if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&gLogCategory_APEndpointCarPlay, "void carEndpoint_AccumulateSignpostsAndSendToTimeStore(FigEndpointRef)", 33554522, "### [%{ptr}] Adding signpost to CARConnectionTimeStore. err: %#m\n", v6, v170);
                  }

                  if (!v169)
                  {
                    goto LABEL_400;
                  }

                  goto LABEL_399;
                }

                __carEndpoint_Activate_block_invoke_cold_43(updated);
                goto LABEL_493;
              }

              __carEndpoint_Activate_block_invoke_cold_42(v147);
LABEL_493:
              v5 = 0;
              goto LABEL_494;
            }

            __carEndpoint_Activate_block_invoke_cold_40(v261);
LABEL_340:
            v146 = 0;
            goto LABEL_341;
          }
        }

        else
        {
          v145 = 4294954514;
          v261[0] = -12782;
        }

        __carEndpoint_Activate_block_invoke_cold_41(v145);
        goto LABEL_340;
      }

      v19 = v196;
      v6 = v197;
    }

    else
    {
      v129 = 4294954514;
      *(v249 + 6) = -12782;
    }

    __carEndpoint_Activate_block_invoke_cold_47(v129);
    goto LABEL_417;
  }

  v97 = 0;
  v192 = 0;
  v188 = 0;
  v98 = *MEMORY[0x277CBF3A8];
  v99 = *(MEMORY[0x277CBF3A8] + 8);
  v100 = @"viewAreas";
  while (1)
  {
    *v252 = 0;
    v253 = v252;
    v254 = 0x2000000000;
    LOBYTE(v255) = 0;
    CFDictionaryGetTypeID();
    TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
    if (v260)
    {
      v102 = 1;
    }

    else
    {
      v102 = TypedValueAtIndex == 0;
    }

    if (v102)
    {
      goto LABEL_256;
    }

    v103 = TypedValueAtIndex;
    v104 = v100;
    Int64 = CFDictionaryGetInt64();
    v106 = CFDictionaryGetInt64();
    v107 = CFDictionaryGetInt64();
    v108 = CFDictionaryGetInt64();
    if (!Int64 || !v106)
    {
      v6 = v197;
      if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_validateEnabledFeaturesWithAccessory(FigEndpointRef, CFDictionaryRef)", 33554522, "[%{ptr}] carEndpoint_checkCarPlayFeatureAcceptance failed: Pixel display view dimension(s) set to 0. displayPixelWidth = %llu, displayPixelHeight = %llu \n", v197, Int64, v106);
      }

      goto LABEL_390;
    }

    if (v106 * Int64 > v193)
    {
      v6 = v197;
      if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_validateEnabledFeaturesWithAccessory(FigEndpointRef, CFDictionaryRef)", 33554522, "[%{ptr}] carEndpoint_checkCarPlayFeatureAcceptance failed: Pixel display area greater than %llu. displayPixelWidth = %llu, displayPixelHeight = %llu\n", v197, v193, Int64, v106);
      }

LABEL_390:
      APSLogErrorAt();
      v2 = v186;
      a1 = v187;
      v3 = "[%{ptr}] %###s called: handler [%{ptr}], context [%{ptr}], clientRef [%@]\n" + 73;
      v19 = v196;
      goto LABEL_413;
    }

    v109 = v108;
    v110 = v98 == v107 && v99 == v108;
    if (!v110 && (!v107 || !v108))
    {
      break;
    }

    v100 = v104;
    v19 = v196;
    if (CFDictionaryContainsKey(v103, v104) || CFDictionaryContainsKey(v103, @"initialViewArea") || CFDictionaryContainsKey(v103, @"adjacentViewAreas"))
    {
      v111 = CFDictionaryGetValue(v103, v104);
      if (v111)
      {
        v112 = v111;
        *buffer = 0;
        v206 = buffer;
        v207 = 0x2000000000;
        LODWORD(v208) = 0;
        v113 = CFGetTypeID(v111);
        if (v113 == CFArrayGetTypeID())
        {
          CFArrayGetCount(v112);
          *block = MEMORY[0x277D85DD0];
          v220 = 0x40000000;
          v221 = __carEndpoint_validateEnabledFeaturesWithAccessory_block_invoke;
          v222 = &unk_27849EDE0;
          v223 = buffer;
          v224 = &theArray;
          v225 = v252;
          CFArrayApplyBlock();
          if (!*(v206 + 24))
          {
            _Block_object_dispose(buffer, 8);
            goto LABEL_251;
          }

          v183 = 2212;
        }

        else
        {
          v183 = 2183;
        }

        __carEndpoint_Activate_block_invoke_cold_21(v183, buffer);
        v2 = v186;
        a1 = v187;
        v3 = "[%{ptr}] %###s called: handler [%{ptr}], context [%{ptr}], clientRef [%@]\n" + 73;
        v6 = v197;
        goto LABEL_413;
      }

LABEL_251:
      v192 = 1;
    }

    if (CFDictionaryContainsKey(v103, @"cornerMasks") && CFDictionaryGetInt64())
    {
      if (*(v253 + 24))
      {
        v6 = v197;
        if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          __carEndpoint_Activate_block_invoke_cold_22(v197, v114, v115);
        }

        goto LABEL_412;
      }

      v188 = 1;
    }

LABEL_256:
    _Block_object_dispose(v252, 8);
    if (Count == ++v97)
    {
      goto LABEL_264;
    }
  }

  v19 = v196;
  v6 = v197;
  if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_validateEnabledFeaturesWithAccessory(FigEndpointRef, CFDictionaryRef)", 33554522, "[%{ptr}] carEndpoint_checkCarPlayFeatureAcceptance failed: Display physical size, height or width set to 0. displayPhysicalWidth = %llu, displayPhysicalHeight = %llu\n", v197, v107, v109);
  }

LABEL_412:
  APSLogErrorAt();
  v2 = v186;
  a1 = v187;
  v3 = "\n";
LABEL_413:
  _Block_object_dispose(v252, 8);
LABEL_414:
  _Block_object_dispose(&theArray, 8);
LABEL_415:
  v87 = -16720;
LABEL_416:
  *(v249 + 6) = v87;
  APSLogErrorAt();
LABEL_417:
  v5 = 0;
  v42 = theDict;
LABEL_418:
  if (*(v249 + 6))
  {
    dispatch_semaphore_signal(v2);
    carEndpoint_deactivateInternal(v6, 0, @"Activation Failed", 0);
  }

  if (v245)
  {
    CFRelease(v245);
  }

  v175 = v242[3];
  if (v175)
  {
    CFRelease(v175);
  }

  if (v247)
  {
    CFRelease(v247);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v246)
  {
    CFRelease(v246);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  LODWORD(v4) = *(v249 + 6);
  _Block_object_dispose(&v237, 8);
  _Block_object_dispose(&v241, 8);
  _Block_object_dispose(&v248, 8);
  if (v4)
  {
    APSLogErrorAt();
  }

LABEL_434:
  v176 = *(a1 + 32);
  v177 = *(v176 + 168);
  v204[0] = MEMORY[0x277D85DD0];
  v178 = *(v3 + 35);
  v204[1] = v178;
  v204[2] = __carEndpoint_Activate_block_invoke_2;
  v204[3] = &__block_descriptor_tmp_122;
  v204[4] = v176;
  dispatch_sync(v177, v204);
  if (!v4)
  {
    v4 = *(*(a1 + 32) + 228);
    if (v4)
    {
      if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_Activate(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)_block_invoke", 33554522, "[%{ptr}] endpointStatus error occured during Activation: %d\n", *(a1 + 40), v4);
      }

      dispatch_semaphore_signal(v2);
      carEndpoint_deactivateInternal(*(a1 + 40), 0, @"Activation failed, endpointStatus error ", 0);
      v5 = 0;
    }
  }

  CFRetain(*(a1 + 40));
  dispatch_retain(v2);
  v179 = **(a1 + 32);
  v198[0] = MEMORY[0x277D85DD0];
  v198[1] = v178;
  v198[2] = __carEndpoint_Activate_block_invoke_3;
  v198[3] = &__block_descriptor_tmp_128;
  v180 = *(a1 + 72);
  v198[4] = *(a1 + 64);
  v199 = *(a1 + 40);
  v202 = v5;
  v203 = v4;
  v200 = v180;
  v201 = v2;
  dispatch_async(v179, v198);
  if (v5)
  {
    carEndpoint_postActivationNotification(*(a1 + 40), *MEMORY[0x277CC0D38], v5);
  }

  CFRelease(*(a1 + 40));
  v181 = *(a1 + 56);
  if (v181)
  {
    CFRelease(v181);
  }

  dispatch_release(v2);
}

void __carEndpoint_Activate_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2(*(a1 + 40), *(a1 + 48), *(a1 + 72), *(a1 + 76), *(a1 + 56));
  }

  if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_Activate_block_invoke_3_cold_1();
  }

  if (!*(a1 + 76))
  {
    dispatch_semaphore_signal(*(a1 + 64));
  }

  dispatch_release(*(a1 + 64));
  v3 = *(a1 + 40);

  CFRelease(v3);
}

void *__carEndpoint_Activate_block_invoke_cold_38(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (gLogCategory_APEndpointCarPlay <= 60)
  {
    if (gLogCategory_APEndpointCarPlay != -1 || (result = OUTLINED_FUNCTION_33_0(&gLogCategory_APEndpointCarPlay), result))
    {
      result = OUTLINED_FUNCTION_3_11(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_registerForHTTPProxy(FigEndpointRef, APSenderSessionRef, uint32_t)", a3, "HTTPProxy for CarPlay is turned off with defaults com.apple.airplay/carPlayForceHTTPProxyDisabled");
    }
  }

  *v3 = 0;
  return result;
}

uint64_t __carEndpoint_Activate_block_invoke_cold_40(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -17606;
  return result;
}

@end