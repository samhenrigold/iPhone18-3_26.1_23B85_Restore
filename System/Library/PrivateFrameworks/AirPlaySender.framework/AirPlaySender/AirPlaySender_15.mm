uint64_t __carEndpoint_createPlaybackSessionInternal_block_invoke_2(uint64_t a1)
{
  result = APSEventRecorderGetEventTime();
  v3 = *(*(a1 + 32) + 8);
  *(v3 + 24) = result;
  *(v3 + 32) = v4;
  return result;
}

uint64_t carEndpoint_RequestCarUI(const void *a1, uint64_t a2, const __CFString *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_RequestCarUI(FigEndpointExtendedRef, CFStringRef, CFURLRef)", 33554482, "[%{ptr}] Request car UI for endpoint %'@ with url %'@ uuid %'@...\n", a1, *(DerivedStorage + 16), a3, a2);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    carEndpoint_RequestCarUI_cold_4();
    return 4294950575;
  }

  v8 = Mutable;
  if (!a3)
  {
LABEL_13:
    v11 = carEndpoint_sendCommandInternal(a1, @"requestUI", v8, 0, 0);
    v12 = v11;
    if (v11)
    {
      carEndpoint_RequestCarUI_cold_3(v11);
    }

    else
    {
      carEndpoint_recordRequestUI(a1, a3, 0);
    }

    goto LABEL_15;
  }

  v9 = CFURLGetString(a3);
  if (v9)
  {
    a3 = v9;
    v10 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v10)
    {
      v8 = v10;
      if (*(DerivedStorage + 61) && CFEqual(a3, @"videoplayback:"))
      {
        a3 = @"airplayvideo:";
      }

      CFDictionarySetValue(v8, @"url", a3);
      goto LABEL_13;
    }

    carEndpoint_RequestCarUI_cold_1();
    return 4294950575;
  }

  carEndpoint_RequestCarUI_cold_2();
  v12 = 4294950576;
LABEL_15:
  CFRelease(v8);
  return v12;
}

uint64_t carEndpoint_DisableBluetooth(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCarPlay <= 50)
  {
    v5 = DerivedStorage;
    if (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_DisableBluetooth(FigEndpointExtendedRef, CFStringRef, CFDictionaryRef)", 33554482, "[%{ptr}] Disable bluetooth for endpoint %'@ with device address %'@...\n", a1, *(v5 + 16), a2);
    }
  }

  if (a2)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v7 = Mutable;
      CFDictionarySetValue(Mutable, @"deviceID", a2);
      v8 = carEndpoint_packetizeCommandAndSend(a1, @"disableBluetooth", v7);
      v9 = v8;
      if (v8)
      {
        carEndpoint_DisableBluetooth_cold_1(v8);
      }

      CFRelease(v7);
    }

    else
    {
      carEndpoint_DisableBluetooth_cold_2();
      return 4294950575;
    }
  }

  else
  {
    carEndpoint_DisableBluetooth_cold_3();
    return 4294950576;
  }

  return v9;
}

uint64_t carEndpoint_DuckAudio(const void *a1, const __CFDictionary *a2)
{
  v23 = 0;
  v24[0] = &v23;
  v24[1] = 0x2000000000;
  v25 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  block[8] = 0;
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_DuckAudio(FigEndpointExtendedRef, CFDictionaryRef)", 33554482, "[%{ptr}] duck audio for endpoint %'@ with inParams %'@...\n", a1, *(DerivedStorage + 16), a2);
  }

  if (a2)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v6 = Mutable;
      if (FigCFDictionaryGetDoubleIfPresent())
      {
        CFDictionarySetDouble();
      }

      if (FigCFDictionaryGetDoubleIfPresent())
      {
        CFDictionarySetDouble();
      }

      Value = CFDictionaryGetValue(a2, *MEMORY[0x277CC0BA8]);
      if (Value)
      {
        v8 = Value;
        if (CFEqual(Value, *MEMORY[0x277CC0B98]))
        {
          v9 = *(DerivedStorage + 168);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = __carEndpoint_DuckAudio_block_invoke;
          block[3] = &unk_27849F4A0;
          block[4] = &v23;
          block[5] = DerivedStorage;
          block[6] = a1;
          block[7] = v6;
          dispatch_sync(v9, block);
          v10 = *(v24[0] + 24);
          if (v10)
          {
            carEndpoint_DuckAudio_cold_1(v10);
          }
        }

        else if (CFEqual(v8, *MEMORY[0x277CC0BA0]))
        {
          v18 = 0;
          v19 = &v18;
          v20 = 0x2000000000;
          v21 = 0;
          v11 = *(DerivedStorage + 168);
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 0x40000000;
          v17[2] = __carEndpoint_DuckAudio_block_invoke_2;
          v17[3] = &unk_27849F4C8;
          v17[5] = DerivedStorage;
          v17[6] = a1;
          v17[4] = &v18;
          dispatch_sync(v11, v17);
          if (v19[3])
          {
            v12 = *(DerivedStorage + 168);
            v16[0] = MEMORY[0x277D85DD0];
            v16[1] = 0x40000000;
            v16[2] = __carEndpoint_DuckAudio_block_invoke_3;
            v16[3] = &unk_27849F510;
            v16[6] = a1;
            v16[7] = v6;
            v16[4] = &v18;
            v16[5] = DerivedStorage;
            v16[8] = a1;
            dispatch_sync(v12, v16);
          }

          else
          {
            v13 = carEndpoint_sendCommandInternal(a1, @"unduckAudio", v6, 0, 0);
            *(v24[0] + 24) = v13;
            if (v13)
            {
              carEndpoint_DuckAudio_cold_2(v13);
            }
          }

          _Block_object_dispose(&v18, 8);
        }

        else
        {
          *(v24[0] + 24) = -16720;
          APSLogErrorAt();
        }
      }

      else
      {
        carEndpoint_DuckAudio_cold_3();
      }

      CFRelease(v6);
      v14 = *(v24[0] + 24);
    }

    else
    {
      carEndpoint_DuckAudio_cold_4(v24);
      v14 = 4294950575;
    }
  }

  else
  {
    carEndpoint_DuckAudio_cold_5();
    v14 = 4294950576;
  }

  _Block_object_dispose(&v23, 8);
  return v14;
}

uint64_t carEndpoint_SetHIDInputMode(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  v7 = *(DerivedStorage + 168);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = __carEndpoint_SetHIDInputMode_block_invoke;
  v9[3] = &__block_descriptor_tmp_1173;
  v9[4] = DerivedStorage;
  v9[5] = a2;
  v9[6] = a3;
  v9[7] = a1;
  dispatch_async(v7, v9);
  return 0;
}

uint64_t carEndpoint_CopyHIDInputMode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 168);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 0x40000000;
  v10[2] = __carEndpoint_CopyHIDInputMode_block_invoke;
  v10[3] = &unk_27849F558;
  v10[4] = &v11;
  v10[5] = DerivedStorage;
  v10[6] = a2;
  v10[7] = a4;
  dispatch_sync(v7, v10);
  v8 = 0;
  if (*(v12 + 6))
  {
    APSLogErrorAt();
    v8 = *(v12 + 6);
  }

  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t carEndpoint_CreateRemoteControlSession(uint64_t a1, const __CFDictionary *a2, uint64_t a3)
{
  v23 = 0;
  v24[0] = &v23;
  v24[1] = 0x2000000000;
  v25 = 0;
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  if (!a3)
  {
    carEndpoint_CreateRemoteControlSession_cold_9();
LABEL_33:
    v15 = 4294950576;
    goto LABEL_28;
  }

  v8 = DerivedStorage;
  Value = CFDictionaryGetValue(a2, *MEMORY[0x277CC0B38]);
  if (!Value)
  {
    carEndpoint_CreateRemoteControlSession_cold_8();
    goto LABEL_33;
  }

  v10 = Value;
  v11 = computeLogStringForRCSClientType(Value);
  if (CFStringCompare(v10, *MEMORY[0x277CC15E8], 0) == kCFCompareEqualTo)
  {
    if (*(v8 + 69))
    {
      v12 = 72;
      goto LABEL_27;
    }

    carEndpoint_CreateRemoteControlSession_cold_7();
LABEL_39:
    v15 = 4294949690;
    goto LABEL_28;
  }

  if (CFStringCompare(v10, *MEMORY[0x277CC15D8], 0) == kCFCompareEqualTo)
  {
    if (*(v8 + 80))
    {
      v12 = 88;
      goto LABEL_27;
    }

    carEndpoint_CreateRemoteControlSession_cold_6();
    goto LABEL_39;
  }

  if (CFStringCompare(v10, *MEMORY[0x277CC15E0], 0) == kCFCompareEqualTo)
  {
    if (*(v8 + 80))
    {
      v12 = 96;
      goto LABEL_27;
    }

    carEndpoint_CreateRemoteControlSession_cold_5();
    goto LABEL_39;
  }

  if (CFStringCompare(v10, *MEMORY[0x277CC15D0], 0) == kCFCompareEqualTo)
  {
    if (*(v8 + 104))
    {
      v12 = 112;
      goto LABEL_27;
    }

    carEndpoint_CreateRemoteControlSession_cold_4();
    goto LABEL_39;
  }

  if (CFStringCompare(v10, *MEMORY[0x277CC15C8], 0) == kCFCompareEqualTo)
  {
    if (*(v8 + 120))
    {
      v12 = 128;
      goto LABEL_27;
    }

    carEndpoint_CreateRemoteControlSession_cold_3();
    goto LABEL_39;
  }

  if (CFStringCompare(v10, *MEMORY[0x277CC15F8], 0) == kCFCompareEqualTo)
  {
    if (!*(v8 + 60))
    {
      carEndpoint_CreateRemoteControlSession_cold_2(v24);
      goto LABEL_42;
    }

    v12 = 144;
LABEL_27:
    v20[3] = v8 + v12;
    v13 = *(v8 + v12) != 0;
    v14 = *(v8 + 168);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carEndpoint_CreateRemoteControlSession_block_invoke;
    block[3] = &unk_27849F5E0;
    block[6] = v8;
    block[7] = FigEndpoint;
    v18 = v13;
    block[8] = v10;
    block[9] = a3;
    block[4] = &v23;
    block[5] = &v19;
    block[10] = v11;
    block[11] = a1;
    block[12] = a2;
    dispatch_sync(v14, block);
    v15 = *(v24[0] + 24);
    goto LABEL_28;
  }

  if (CFStringCompare(v10, *MEMORY[0x277CC15F0], 0) == kCFCompareEqualTo)
  {
    if (*(v8 + 60))
    {
      v12 = 152;
      goto LABEL_27;
    }

    carEndpoint_CreateRemoteControlSession_cold_1(v24);
LABEL_42:
    v15 = 4294960561;
    goto LABEL_28;
  }

  if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_CreateRemoteControlSession(FigEndpointExtendedRef, CFDictionaryRef, FigEndpointRemoteControlSessionRef *)", 33554522, "[%{ptr}] carEndpoint_CreateRemoteControlSession is called with unsupported client type: %@\n", FigEndpoint, v10);
  }

  v15 = 4294960561;
  *(v24[0] + 24) = -6735;
LABEL_28:
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  return v15;
}

uint64_t carEndpoint_CreateCommChannel(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(a2, *MEMORY[0x277CC0B38]);
  if (!Value)
  {
    carEndpoint_CreateCommChannel_cold_11();
    goto LABEL_28;
  }

  v9 = Value;
  if (CFStringCompare(Value, *MEMORY[0x277CC0B28], 0))
  {
    if (CFStringCompare(v9, *MEMORY[0x277CC0B18], 0))
    {
      if (CFStringCompare(v9, *MEMORY[0x277CC0B20], 0))
      {
        if (CFStringCompare(v9, *MEMORY[0x277CC0B10], 0))
        {
          if (CFStringCompare(v9, *MEMORY[0x277CC0B08], 0))
          {
            if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_CreateCommChannel(FigEndpointExtendedRef, CFDictionaryRef, CFStringRef *)", 33554522, "[%{ptr}] carEndpoint_CreateCommChannel is called with unsupported client type: %@\n", FigEndpoint, v9);
            }

            *(v26 + 6) = -6735;
            goto LABEL_28;
          }

          if (!*(DerivedStorage + 120))
          {
            carEndpoint_CreateCommChannel_cold_2();
            goto LABEL_28;
          }

          v10 = DerivedStorage + 128;
          if (*(DerivedStorage + 128))
          {
            carEndpoint_CreateCommChannel_cold_1();
            goto LABEL_28;
          }
        }

        else
        {
          if (!*(DerivedStorage + 104))
          {
            carEndpoint_CreateCommChannel_cold_4();
            goto LABEL_28;
          }

          v10 = DerivedStorage + 112;
          if (*(DerivedStorage + 112))
          {
            carEndpoint_CreateCommChannel_cold_3();
            goto LABEL_28;
          }
        }
      }

      else
      {
        if (!*(DerivedStorage + 80))
        {
          carEndpoint_CreateCommChannel_cold_6();
          goto LABEL_28;
        }

        v10 = DerivedStorage + 96;
        if (*(DerivedStorage + 96))
        {
          carEndpoint_CreateCommChannel_cold_5();
          goto LABEL_28;
        }
      }
    }

    else
    {
      if (!*(DerivedStorage + 80))
      {
        carEndpoint_CreateCommChannel_cold_8();
        goto LABEL_28;
      }

      v10 = DerivedStorage + 88;
      if (*(DerivedStorage + 88))
      {
        carEndpoint_CreateCommChannel_cold_7();
        goto LABEL_28;
      }
    }
  }

  else
  {
    if (!*(DerivedStorage + 69))
    {
      carEndpoint_CreateCommChannel_cold_10();
      goto LABEL_28;
    }

    v10 = DerivedStorage + 72;
    if (*(DerivedStorage + 72))
    {
      carEndpoint_CreateCommChannel_cold_9();
      goto LABEL_28;
    }
  }

  v22[3] = v10;
  v11 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_CreateCommChannel_block_invoke;
  block[3] = &unk_27849F608;
  block[4] = &v25;
  block[5] = &v17;
  block[6] = &v21;
  block[7] = a1;
  block[8] = a2;
  block[9] = FigEndpoint;
  dispatch_sync(v11, block);
  if (a3)
  {
    v12 = *v22[3];
    if (v12)
    {
      v12 = CFRetain(v12);
    }

    *a3 = v12;
  }

LABEL_28:
  v13 = v18[3];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(v26 + 6);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  return v14;
}

uint64_t carEndpoint_SendData(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2000000000;
  v16[3] = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2000000000;
  v15[3] = 0;
  if (a2)
  {
    v11 = *(DerivedStorage + 168);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carEndpoint_SendData_block_invoke;
    block[3] = &unk_27849F658;
    block[4] = v16;
    block[5] = &v17;
    block[6] = v15;
    block[7] = DerivedStorage;
    block[8] = a2;
    block[9] = a1;
    block[10] = a4;
    block[11] = a5;
    block[12] = a3;
    dispatch_sync(v11, block);
    v12 = *(v18 + 6);
    if (!a4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    carEndpoint_SendData_cold_1();
    v12 = 4294950576;
    if (!a4)
    {
      goto LABEL_5;
    }
  }

  if (v12)
  {
    a4(a1, a2, v12, a5);
    v12 = *(v18 + 6);
  }

LABEL_5:
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v17, 8);
  return v12;
}

uint64_t carEndpoint_CloseCommChannel(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2000000000;
  v9[3] = 0;
  if (a2)
  {
    v5 = *(DerivedStorage + 168);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carEndpoint_CloseCommChannel_block_invoke;
    block[3] = &unk_27849F680;
    block[6] = a2;
    block[7] = a1;
    block[8] = DerivedStorage;
    block[4] = &v10;
    block[5] = v9;
    dispatch_sync(v5, block);
    v6 = *(v11 + 6);
  }

  else
  {
    carEndpoint_CloseCommChannel_cold_1();
    v6 = 4294950576;
  }

  _Block_object_dispose(v9, 8);
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t carEndpoint_RequestViewArea(const void *a1, const void *a2, CFIndex a3)
{
  CMBaseObjectGetDerivedStorage();
  v6 = carEndpoint_validateViewAreaParams(a1, a2, a3, 0);
  if (v6)
  {
    carEndpoint_RequestViewArea_cold_1(v6);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v8 = Mutable;
      CFDictionarySetValue(Mutable, @"uuid", a2);
      CFDictionarySetInt64();
      v9 = carEndpoint_sendCommandInternal(a1, @"requestViewArea", v8, 0, 0);
      if (v9)
      {
        carEndpoint_RequestViewArea_cold_2(v9);
      }

      else if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_RequestViewArea(FigEndpointExtendedRef, CFStringRef, CFIndex)", 33554482, "[%{ptr}] requested viewArea %d for display %@\n", a1, a3, a2);
      }

      CFRelease(v8);
    }

    else
    {
      carEndpoint_RequestViewArea_cold_3();
    }
  }

  return 0;
}

uint64_t carEndpoint_RelinquishResource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  if (gLogCategory_APEndpointCarPlay <= 50)
  {
    v6 = FigEndpoint;
    if (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APEndpointCarPlay, "OSStatus carEndpoint_RelinquishResource(FigEndpointExtendedRef, CFStringRef, CFTypeRef)", 33554482, "[%{ptr}] Relinquishing '%@' [%{ptr}].\n", v6, a2, a3);
    }
  }

  if (!a3)
  {
    v7 = 4294950576;
LABEL_11:
    APSLogErrorAt();
    return v7;
  }

  if (!FigCFEqual())
  {
    v7 = 4294960561;
    goto LABEL_11;
  }

  return 0;
}

void __carEndpoint_runTestCommand_block_invoke(uint64_t a1)
{
  carEndpoint_requestUI(*(a1 + 32), *(a1 + 40));
  CFRelease(*(a1 + 32));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

__CFString *computeLogStringForRCSClientType(const __CFString *a1)
{
  if (CFStringCompare(a1, *MEMORY[0x277CC15E8], 0) == kCFCompareEqualTo)
  {
    return @"CarPlayUpdateData";
  }

  if (CFStringCompare(a1, *MEMORY[0x277CC15D0], 0) == kCFCompareEqualTo)
  {
    return @"CarPlayLoggingData";
  }

  if (CFStringCompare(a1, *MEMORY[0x277CC15C8], 0) == kCFCompareEqualTo)
  {
    return @"CarPlayClusterControl";
  }

  if (CFStringCompare(a1, *MEMORY[0x277CC15D8], 0) == kCFCompareEqualTo)
  {
    return @"CarPlayProtocolData";
  }

  if (CFStringCompare(a1, *MEMORY[0x277CC15E0], 0) == kCFCompareEqualTo)
  {
    return @"CarPlayProtocolData2";
  }

  if (CFStringCompare(a1, *MEMORY[0x277CC15F8], 0) == kCFCompareEqualTo)
  {
    return @"CarPlayVideoOverlayUI";
  }

  if (CFStringCompare(a1, *MEMORY[0x277CC15F0], 0))
  {
    return 0;
  }

  return @"CarPlayVideoSettings";
}

void carEndpoint_handleRemoteControlSessionEvent(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v36 = 0;
  v37 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = 0;
  CMBaseObject = FigEndpointRemoteControlSessionGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v10 = v9(CMBaseObject, @"SessionID", 0, &v37);
    if (v10)
    {
      v17 = v10;
    }

    else
    {
      v11 = FigEndpointRemoteControlSessionGetCMBaseObject();
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v13 = v12(v11, @"clientTypeUUID", 0, &v36);
        if (!v13)
        {
          if (CFStringCompare(v36, *MEMORY[0x277CC15E8], 0))
          {
            if (CFStringCompare(v36, *MEMORY[0x277CC15D0], 0))
            {
              if (CFStringCompare(v36, *MEMORY[0x277CC15C8], 0))
              {
                if (CFStringCompare(v36, *MEMORY[0x277CC15D8], 0))
                {
                  v14 = 0;
                  if (CFStringCompare(v36, *MEMORY[0x277CC15E0], 0))
                  {
                    goto LABEL_49;
                  }
                }
              }
            }
          }

          v31[0] = 0;
          v31[1] = v31;
          v31[2] = 0x2000000000;
          v31[3] = 0;
          v30[0] = 0;
          v30[1] = v30;
          v30[2] = 0x2000000000;
          v30[3] = 0;
          v28[0] = 0;
          v28[1] = v28;
          v28[2] = 0x2000000000;
          v29 = 0;
          v15 = *(DerivedStorage + 168);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = __carEndpoint_handleRemoteControlSessionEvent_block_invoke;
          block[3] = &unk_27849F630;
          block[7] = v28;
          block[8] = DerivedStorage;
          block[4] = &v32;
          block[5] = v31;
          block[6] = v30;
          dispatch_sync(v15, block);
          if (v33[3])
          {
            v16 = FigCFWeakReferenceHolderCopyReferencedObject();
            if (v16)
            {
              v14 = v16;
              if (CFEqual(a2, *MEMORY[0x277CC1650]))
              {
                if (a4)
                {
                  CFRetain(a4);
                }

                if (v37)
                {
                  CFRetain(v37);
                }

                if (a3)
                {
                  CFRetain(a3);
                }

                CFRetain(v14);
                APSDispatchAsyncFHelper();
                if (gLogCategory_APEndpointCarPlay <= 10 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
                {
                  v18 = computeLogStringForRCSClientType(v36);
                  if (a3)
                  {
                    Length = CFDataGetLength(a3);
                  }

                  else
                  {
                    Length = 0;
                  }

                  LogPrintF(&gLogCategory_APEndpointCarPlay, "void carEndpoint_handleRemoteControlSessionEvent(FigEndpointRemoteControlSessionRef, CFStringRef, CFDataRef, CFTypeRef)", 33554442, "[%{ptr}] RemoteControlSession EventType:IncomingMessage_%@, data size = %d, CommChannelUUID: %@\n", a4, v18, Length, v37);
                }
              }

              else if (CFEqual(a2, *MEMORY[0x277CC1658]))
              {
                if (a4)
                {
                  CFRetain(a4);
                }

                if (v37)
                {
                  CFRetain(v37);
                }

                CFRetain(v14);
                APSDispatchAsyncFHelper();
                if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
                {
                  carEndpoint_handleRemoteControlSessionEvent_cold_1(&v36);
                }
              }

              else if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
              {
                v26 = computeLogStringForRCSClientType(v36);
                LogPrintF(&gLogCategory_APEndpointCarPlay, "void carEndpoint_handleRemoteControlSessionEvent(FigEndpointRemoteControlSessionRef, CFStringRef, CFDataRef, CFTypeRef)", 33554522, "### [%{ptr}] Un-supported event received for %@. EventType: %@\n", a4, v26, a2);
              }

              v17 = 0;
              v20 = 1;
LABEL_48:
              _Block_object_dispose(v28, 8);
              _Block_object_dispose(v30, 8);
              _Block_object_dispose(v31, 8);
              if (v20)
              {
                goto LABEL_49;
              }

              goto LABEL_18;
            }

            APSLogErrorAt();
            if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
            {
              carEndpoint_handleRemoteControlSessionEvent_cold_2(a4, v24, v25);
            }
          }

          else
          {
            APSLogErrorAt();
            if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
            {
              carEndpoint_handleRemoteControlSessionEvent_cold_3(a4, v22, v23);
            }
          }

          v20 = 0;
          v14 = 0;
          v17 = 4294949690;
          goto LABEL_48;
        }

        v17 = v13;
      }

      else
      {
        v17 = 4294954514;
      }
    }
  }

  else
  {
    v17 = 4294954514;
  }

  APSLogErrorAt();
  v14 = 0;
LABEL_18:
  if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointCarPlay, "void carEndpoint_handleRemoteControlSessionEvent(FigEndpointRemoteControlSessionRef, CFStringRef, CFDataRef, CFTypeRef)", 33554522, "### [%{ptr}] Invalid context received while handling incoming remote control session message. err: %#m\n", a4, v17);
  }

LABEL_49:
  v21 = v33[3];
  if (v21)
  {
    CFRelease(v21);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  _Block_object_dispose(&v32, 8);
}

CFTypeRef __carEndpoint_handleRemoteControlSessionEvent_block_invoke(void *a1)
{
  result = *(a1[8] + 216);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(a1[4] + 8) + 24) = result;
  *(*(a1[5] + 8) + 24) = *(a1[8] + 196);
  *(*(a1[6] + 8) + 24) = *(a1[8] + 204);
  *(*(a1[7] + 8) + 24) = *(a1[8] + 224);
  return result;
}

void carEndpoint_callDidReceiveDataOverCommChannelDelegate(uint64_t a1)
{
  (*a1)(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {

    CFRelease(v5);
  }
}

void carEndpoint_callDidCloseCommChannelDelegate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    carEndpoint_callDidCloseCommChannelDelegate_cold_1(a1, a2, a3);
  }

  (*a1)(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v4 = *(a1 + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {

    CFRelease(v6);
  }
}

void carEndpoint_rcsSendMessageCompletion(int a1, uint64_t a2, CFTypeRef *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (a3[2])
  {
    CFRetain(*a3);
    CFRetain(a3[1]);
    APSDispatchAsyncFHelper();
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    carEndpoint_rcsSendMessageCompletion_cold_1(a3, v4, v5);
  }

  if (*a3)
  {
    CFRelease(*a3);
  }

  v6 = a3[1];
  if (v6)
  {
    CFRelease(v6);
  }

  free(a3);
}

void carEndpoint_callCompletionCallback(uint64_t a1)
{
  (*(a1 + 16))(*a1, *(a1 + 8), *(a1 + 32), *(a1 + 24));
  if (*a1)
  {
    CFRelease(*a1);
  }

  v2 = *(a1 + 8);
  if (v2)
  {

    CFRelease(v2);
  }
}

void OUTLINED_FUNCTION_32_1(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v36 = *(a33 + 24);

  carEndpoint_postNotification(v33, a2, v36, v34);
}

uint64_t OUTLINED_FUNCTION_33_0(uint64_t a1)
{

  return _LogCategory_Initialize();
}

uint64_t APAccTransportClientConnectionGetTypeID(uint64_t a1, uint64_t a2)
{
  if (gAPAccTransportClientConnectionInitOnce != -1)
  {
    APAccTransportClientConnectionGetTypeID_cold_1();
  }

  return gAPAccTransportClientConnectionTypeID;
}

uint64_t _APAccTransportClientConnectionGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPAccTransportClientConnectionTypeID = result;
  return result;
}

uint64_t APAccTransportClientConnectionCreate(const void *a1, uint64_t *a2)
{
  if (gAPAccTransportClientConnectionInitOnce != -1)
  {
    APAccTransportClientConnectionGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v5 = Instance;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 16) = dispatch_queue_create("com.apple.APAccTransportClientConnection", 0);
    if (a1)
    {
      v6 = CFRetain(a1);
    }

    else
    {
      v6 = 0;
    }

    *(v5 + 40) = v6;
    if (gLogCategory_APAccTransportClientConnection <= 50 && (gLogCategory_APAccTransportClientConnection != -1 || _LogCategory_Initialize()))
    {
      APAccTransportClientConnectionCreate_cold_2(v5);
    }

    result = 0;
    *a2 = v5;
  }

  else
  {
    APAccTransportClientConnectionCreate_cold_3();
    return 4294960568;
  }

  return result;
}

uint64_t APAccTransportClientConnectionOpen(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (APAccTransportClientConnectionOpen_once != -1)
  {
    APAccTransportClientConnectionOpen_cold_1();
  }

  v2 = *(a1 + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __APAccTransportClientConnectionOpen_block_invoke_3;
  v5[3] = &unk_27849F700;
  v5[4] = &v6;
  v5[5] = a1;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __APAccTransportClientConnectionOpen_block_invoke()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getacc_transportClient_serverDisconnectedHandlerSymbolLoc_ptr;
  v6 = getacc_transportClient_serverDisconnectedHandlerSymbolLoc_ptr;
  if (!getacc_transportClient_serverDisconnectedHandlerSymbolLoc_ptr)
  {
    v1 = CoreAccessoriesLibrary();
    v4[3] = dlsym(v1, "acc_transportClient_serverDisconnectedHandler");
    getacc_transportClient_serverDisconnectedHandlerSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    __APAccTransportClientConnectionOpen_block_invoke_cold_1();
  }

  return v0(&__block_literal_global_8);
}

void sub_22213175C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __APAccTransportClientConnectionOpen_block_invoke_2(uint64_t result, uint64_t a2)
{
  if (gLogCategory_APAccTransportClientConnection <= 60 && (gLogCategory_APAccTransportClientConnection != -1 || _LogCategory_Initialize()))
  {
    __APAccTransportClientConnectionOpen_block_invoke_2_cold_1();
  }
}

void __APAccTransportClientConnectionOpen_block_invoke_3(uint64_t a1)
{
  if (!*(*(a1 + 40) + 24))
  {
    v2 = *MEMORY[0x277CBECE8];
    v3 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
    if (!v3)
    {
      __APAccTransportClientConnectionOpen_block_invoke_3_cold_4(a1);
      return;
    }

    v4 = v3;
    v5 = CFUUIDCreateString(v2, v3);
    if (!v5)
    {
      __APAccTransportClientConnectionOpen_block_invoke_3_cold_3(a1, v4);
      return;
    }

    v6 = v5;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v7 = getacc_transportClient_createConnectionSymbolLoc_ptr;
    v14 = getacc_transportClient_createConnectionSymbolLoc_ptr;
    if (!getacc_transportClient_createConnectionSymbolLoc_ptr)
    {
      v8 = CoreAccessoriesLibrary();
      v12[3] = dlsym(v8, "acc_transportClient_createConnection");
      getacc_transportClient_createConnectionSymbolLoc_ptr = v12[3];
      v7 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v7)
    {
      __APAccTransportClientConnectionOpen_block_invoke_3_cold_2();
    }

    *(*(a1 + 40) + 24) = v7(5, v6);
    v9 = *(a1 + 40);
    v10 = *(v9 + 24);
    if (!v10)
    {
      __APAccTransportClientConnectionOpen_block_invoke_3_cold_1(a1);
      goto LABEL_12;
    }

    if (gLogCategory_APAccTransportClientConnection <= 50)
    {
      if (gLogCategory_APAccTransportClientConnection == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        v9 = *(a1 + 40);
        v10 = *(v9 + 24);
      }

      LogPrintF(&gLogCategory_APAccTransportClientConnection, "OSStatus APAccTransportClientConnectionOpen(APAccTransportClientConnectionRef)_block_invoke_3", 33554482, "[%{ptr}] Connection opened, connectionUUID: %@\n", v9, v10);
    }

LABEL_12:
    CFRelease(v4);
    CFRelease(v6);
  }
}

void sub_2221319AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t APAccTransportClientConnectionClose(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = 0;
  v1 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APAccTransportClientConnectionClose_block_invoke;
  block[3] = &unk_27849F728;
  block[5] = v5;
  block[6] = a1;
  block[4] = &v7;
  dispatch_sync(v1, block);
  v2 = *(v8 + 6);
  _Block_object_dispose(v5, 8);
  _Block_object_dispose(&v7, 8);
  return v2;
}

void __APAccTransportClientConnectionClose_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 32))
  {
    CFDictionaryApplyBlock();
    v2 = *(a1 + 48);
  }

  v3 = *(v2 + 24);
  if (!v3)
  {
    __APAccTransportClientConnectionClose_block_invoke_cold_2(a1);
    return;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v4 = getacc_transportClient_destroyConnectionSymbolLoc_ptr;
  v14 = getacc_transportClient_destroyConnectionSymbolLoc_ptr;
  if (!getacc_transportClient_destroyConnectionSymbolLoc_ptr)
  {
    v5 = CoreAccessoriesLibrary();
    v12[3] = dlsym(v5, "acc_transportClient_destroyConnection");
    getacc_transportClient_destroyConnectionSymbolLoc_ptr = v12[3];
    v4 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v4)
  {
    __APAccTransportClientConnectionClose_block_invoke_cold_1();
  }

  *(*(*(a1 + 40) + 8) + 24) = v4(v3);
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v7 = 50;
  }

  else
  {
    v7 = 90;
  }

  if (v7 >= gLogCategory_APAccTransportClientConnection)
  {
    if (gLogCategory_APAccTransportClientConnection != -1)
    {
LABEL_12:
      if (v6)
      {
        v8 = 33554482;
      }

      else
      {
        v8 = 33554522;
      }

      v9 = "successful";
      if (!v6)
      {
        v9 = "failed";
      }

      LogPrintF(&gLogCategory_APAccTransportClientConnection, "OSStatus APAccTransportClientConnectionClose(APAccTransportClientConnectionRef)_block_invoke", v8, "[%{ptr}] destroying of acc connection %s\n", *(a1 + 48), v9);
      goto LABEL_19;
    }

    if (_LogCategory_Initialize())
    {
      v6 = *(*(*(a1 + 40) + 8) + 24);
      goto LABEL_12;
    }
  }

LABEL_19:
  v10 = *(*(a1 + 48) + 24);
  if (v10)
  {
    CFRelease(v10);
    *(*(a1 + 48) + 24) = 0;
  }
}

void sub_222131C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __APAccTransportClientConnectionClose_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __accTransportClientEndpointInvalidate_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a3;
  dispatch_sync(v3, block);
}

uint64_t APAccTransportClientConnectionCopyEndpoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (!a1 || !a3 || !a2)
  {
    APSLogErrorAt();
    v6 = v9;
    v4 = 4294960591;
LABEL_9:
    *(v6 + 6) = v4;
    goto LABEL_6;
  }

  if (!*(a1 + 24))
  {
    APSLogErrorAt();
    v6 = v9;
    v4 = 4294960587;
    goto LABEL_9;
  }

  v3 = *(a1 + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __APAccTransportClientConnectionCopyEndpoint_block_invoke;
  v7[3] = &unk_27849DD00;
  v7[4] = &v8;
  v7[5] = a1;
  v7[6] = a2;
  v7[7] = a3;
  dispatch_sync(v3, v7);
  v4 = *(v9 + 6);
LABEL_6:
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __APAccTransportClientConnectionCopyEndpoint_block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 40) + 32))
  {
    *(*(a1 + 40) + 32) = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v2 = *MEMORY[0x277CBECE8];
  v3 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], *(a1 + 48), 0x8000100u);
  Value = CFDictionaryGetValue(*(*(a1 + 40) + 32), v3);
  if (Value)
  {
    v5 = Value;
    CFRetain(Value);
    goto LABEL_24;
  }

  v6 = *(a1 + 40);
  v7 = *(v6 + 40);
  if (v7)
  {
    v8 = CFDictionaryGetValue(v7, @"authenticationCertificateSerial");
    v6 = *(a1 + 40);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 48);
  if (!v9)
  {
    __APAccTransportClientConnectionCopyEndpoint_block_invoke_cold_5();
LABEL_35:
    v5 = 0;
    v14 = -6705;
    goto LABEL_22;
  }

  v10 = *(v6 + 24);
  if (!v10)
  {
    __APAccTransportClientConnectionCopyEndpoint_block_invoke_cold_4();
    goto LABEL_35;
  }

  if (gAPAccTransportClientEndpointInitOnce != -1)
  {
    __APAccTransportClientConnectionCopyEndpoint_block_invoke_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (!Instance)
  {
    __APAccTransportClientConnectionCopyEndpoint_block_invoke_cold_3();
LABEL_38:
    v14 = -6728;
    goto LABEL_22;
  }

  *(Instance + 80) = 0;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  v12 = dispatch_queue_create(v9, 0);
  v5[3] = v12;
  if (!v12)
  {
    __APAccTransportClientConnectionCopyEndpoint_block_invoke_cold_2(v5);
    v5 = 0;
    goto LABEL_38;
  }

  v5[4] = CFStringCreateWithCString(v2, v9, 0x8000100u);
  v5[5] = CFRetain(v10);
  if (v8)
  {
    v13 = CFRetain(v8);
  }

  else
  {
    v13 = 0;
  }

  v5[7] = v13;
  if (gLogCategory_APAccTransportClientEndpoint <= 50 && (gLogCategory_APAccTransportClientEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAccTransportClientEndpoint, "OSStatus accEndpointCreate(const char *, CFStringRef, CFDataRef, APAccTransportClientEndpointRef *)", 33554482, "[%{ptr}] Created, inEndpointID: %s\n", v5, v9);
  }

  v14 = 0;
LABEL_22:
  *(*(*(a1 + 32) + 8) + 24) = v14;
  v15 = *(*(*(a1 + 32) + 8) + 24);
  if (!v15)
  {
    CFDictionaryAddValue(*(*(a1 + 40) + 32), v3, v5);
LABEL_24:
    **(a1 + 56) = v5;
    v5 = 0;
    if (!v3)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  __APAccTransportClientConnectionCopyEndpoint_block_invoke_cold_6(v15);
  if (v3)
  {
LABEL_25:
    CFRelease(v3);
  }

LABEL_26:
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t APAccTransportClientConnectionInvalidateEndpoint(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (a1 && a2)
  {
    v2 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APAccTransportClientConnectionInvalidateEndpoint_block_invoke;
    block[3] = &unk_27849BEC0;
    block[4] = &v6;
    block[5] = a1;
    block[6] = a2;
    dispatch_sync(v2, block);
    v3 = *(v7 + 6);
  }

  else
  {
    APSLogErrorAt();
    v3 = 4294960591;
    *(v7 + 6) = -6705;
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

void __APAccTransportClientConnectionInvalidateEndpoint_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 32);
  if (v2)
  {
    if (CFDictionaryContainsValue(v2, *(a1 + 48)))
    {
      v3 = *(a1 + 48);
      v4 = *(v3 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __accTransportClientEndpointInvalidate_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v3;
      dispatch_sync(v4, block);
      CFDictionaryRemoveValue(*(*(a1 + 40) + 32), *(*(a1 + 48) + 32));
      if (!CFDictionaryGetCount(*(*(a1 + 40) + 32)))
      {
        v5 = *(*(a1 + 40) + 32);
        if (v5)
        {
          CFRelease(v5);
          *(*(a1 + 40) + 32) = 0;
        }
      }
    }

    else
    {
      __APAccTransportClientConnectionInvalidateEndpoint_block_invoke_cold_1();
    }
  }

  else
  {
    __APAccTransportClientConnectionInvalidateEndpoint_block_invoke_cold_2();
  }
}

uint64_t APAccTransportClientEndpointGetTypeID(uint64_t a1, uint64_t a2)
{
  if (gAPAccTransportClientEndpointInitOnce != -1)
  {
    __APAccTransportClientConnectionCopyEndpoint_block_invoke_cold_1();
  }

  return gAPAccTransportClientEndpointTypeID;
}

uint64_t _APAccTransportClientEndpointGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPAccTransportClientEndpointTypeID = result;
  return result;
}

uint64_t APAccTransportClientEndpointActivate(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  if (a4)
  {
    v4 = *(a1 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APAccTransportClientEndpointActivate_block_invoke;
    block[3] = &unk_27849F778;
    block[4] = a4;
    block[5] = &v12;
    v8 = a2;
    v9 = a3;
    block[6] = v10;
    block[7] = a1;
    dispatch_sync(v4, block);
    v5 = *(v13 + 6);
  }

  else
  {
    APSLogErrorAt();
    v5 = 4294960591;
    *(v13 + 6) = -6705;
  }

  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

void sub_222132458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __APAccTransportClientEndpointActivate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(v2 + 16))
  {
    result = __APAccTransportClientEndpointActivate_block_invoke_cold_1();
LABEL_23:
    v19 = -6709;
LABEL_30:
    *(*(*(a1 + 40) + 8) + 24) = v19;
    goto LABEL_18;
  }

  if (*(v2 + 48))
  {
    result = __APAccTransportClientEndpointActivate_block_invoke_cold_2();
    goto LABEL_23;
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = *(a1 + 56);
  *(v4 + 64) = v3;
  if (!v3)
  {
    result = __APAccTransportClientEndpointActivate_block_invoke_cold_8();
    v19 = -6728;
    goto LABEL_30;
  }

  v5 = *(v4 + 40);
  v6 = *(a1 + 64);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __APAccTransportClientEndpointActivate_block_invoke_2;
  v20[3] = &unk_27849F750;
  v20[4] = v4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v7 = getacc_transportClient_createEndpointSymbolLoc_ptr;
  v29 = getacc_transportClient_createEndpointSymbolLoc_ptr;
  if (!getacc_transportClient_createEndpointSymbolLoc_ptr)
  {
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __getacc_transportClient_createEndpointSymbolLoc_block_invoke;
    v24 = &unk_27849ACC8;
    v25 = &v26;
    v8 = CoreAccessoriesLibrary();
    v27[3] = dlsym(v8, "acc_transportClient_createEndpoint");
    getacc_transportClient_createEndpointSymbolLoc_ptr = *(v25[1] + 24);
    v7 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v7)
  {
    __APAccTransportClientEndpointActivate_block_invoke_cold_7();
  }

  result = (v7)(v5, 4, v6, 0, v20, 1);
  *(*(a1 + 56) + 48) = result;
  v10 = *(a1 + 56);
  if (!*(v10 + 48))
  {
    result = __APAccTransportClientEndpointActivate_block_invoke_cold_6();
    v19 = -6700;
    goto LABEL_30;
  }

  if (!*(a1 + 68))
  {
    goto LABEL_18;
  }

  if (gLogCategory_APAccTransportClientEndpoint <= 30)
  {
    if (gLogCategory_APAccTransportClientEndpoint != -1 || (v11 = _LogCategory_Initialize(), v10 = *(a1 + 56), v11))
    {
      LogPrintF(&gLogCategory_APAccTransportClientEndpoint, "OSStatus APAccTransportClientEndpointActivate(APAccTransportClientEndpointRef, ACCEndpoint_Protocol_t, Boolean, APAccTransportClientEndpointDataHandler)_block_invoke", 33554462, "[%{ptr}] Verify Auth Certificate Serial requested\n", v10);
      v10 = *(a1 + 56);
    }
  }

  if (!*(v10 + 56))
  {
    result = __APAccTransportClientEndpointActivate_block_invoke_cold_5();
    v19 = -6736;
    goto LABEL_30;
  }

  v12 = getkCFACCProperties_Connection_MFi4Auth_AccessoryCertInfoToMatch();
  v13 = *(a1 + 56);
  v15 = *(v13 + 48);
  v14 = *(v13 + 56);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v16 = getacc_transportClient_setPropertyForEndpointWithUUIDSymbolLoc_ptr;
  v29 = getacc_transportClient_setPropertyForEndpointWithUUIDSymbolLoc_ptr;
  if (!getacc_transportClient_setPropertyForEndpointWithUUIDSymbolLoc_ptr)
  {
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __getacc_transportClient_setPropertyForEndpointWithUUIDSymbolLoc_block_invoke;
    v24 = &unk_27849ACC8;
    v25 = &v26;
    v17 = CoreAccessoriesLibrary();
    v18 = dlsym(v17, "acc_transportClient_setPropertyForEndpointWithUUID");
    *(v25[1] + 24) = v18;
    getacc_transportClient_setPropertyForEndpointWithUUIDSymbolLoc_ptr = *(v25[1] + 24);
    v16 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v16)
  {
    __APAccTransportClientEndpointActivate_block_invoke_cold_4();
  }

  result = v16(v12, v14, v15);
  *(*(*(a1 + 48) + 8) + 24) = result;
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    result = __APAccTransportClientEndpointActivate_block_invoke_cold_3();
    v19 = -6762;
    goto LABEL_30;
  }

LABEL_18:
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    return accTransportClientEndpointDestroyEndpoint(*(a1 + 56));
  }

  return result;
}

void sub_2221327CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __APAccTransportClientEndpointActivate_block_invoke_2(uint64_t a1, const void *a2, const void *a3, const __CFData *a4)
{
  v7 = *(a1 + 32);
  if (gLogCategory_APAccTransportClientEndpoint <= 30 && (gLogCategory_APAccTransportClientEndpoint != -1 || _LogCategory_Initialize()))
  {
    __APAccTransportClientEndpointActivate_block_invoke_2_cold_1(a4, v7);
  }

  CFRetain(v7);
  CFRetain(a2);
  CFRetain(a3);
  CFRetain(a4);
  v8 = v7[3];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __APAccTransportClientEndpointActivate_block_invoke_3;
  v9[3] = &__block_descriptor_64_e5_v8__0l;
  v9[4] = v7;
  v9[5] = a2;
  v9[6] = a3;
  v9[7] = a4;
  dispatch_async(v8, v9);
}

void __APAccTransportClientEndpointActivate_block_invoke_3(uint64_t a1)
{
  if (!*(*(a1 + 32) + 16) && FigCFEqual() && FigCFEqual())
  {
    (*(*(*(a1 + 32) + 64) + 16))();
  }

  CFRelease(*(a1 + 56));
  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 40));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t accTransportClientEndpointDestroyEndpoint(uint64_t a1)
{
  if (*(a1 + 16))
  {
    accTransportClientEndpointDestroyEndpoint_cold_1();
    return 4294960587;
  }

  else
  {
    if (*(a1 + 72))
    {
      soft_acc_transportClient_setConnectionAuthStatusDidChangeHandler(0);
      v2 = *(a1 + 72);
      if (v2)
      {
        _Block_release(v2);
        *(a1 + 72) = 0;
      }
    }

    result = *(a1 + 48);
    if (result)
    {
      if (*(a1 + 80))
      {
        soft_acc_transportClient_setEndpointSecureTunnelDataReceiveHandler(result, 0);
        v4 = *(a1 + 80);
        if (v4)
        {
          _Block_release(v4);
          *(a1 + 80) = 0;
        }
      }

      v5 = *(a1 + 48);
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v6 = getacc_transportClient_destroyEndpointSymbolLoc_ptr;
      v16 = getacc_transportClient_destroyEndpointSymbolLoc_ptr;
      if (!getacc_transportClient_destroyEndpointSymbolLoc_ptr)
      {
        v7 = CoreAccessoriesLibrary();
        v14[3] = dlsym(v7, "acc_transportClient_destroyEndpoint");
        getacc_transportClient_destroyEndpointSymbolLoc_ptr = v14[3];
        v6 = v14[3];
      }

      _Block_object_dispose(&v13, 8);
      if (!v6)
      {
        accTransportClientEndpointDestroyEndpoint_cold_3();
      }

      v8 = v6(v5);
      if (v8)
      {
        v9 = 50;
      }

      else
      {
        v9 = 90;
      }

      if (v9 >= gLogCategory_APAccTransportClientEndpoint && (gLogCategory_APAccTransportClientEndpoint != -1 || _LogCategory_Initialize()))
      {
        v10 = "failed";
        if (v8)
        {
          v10 = "successful";
        }

        LogPrintF(&gLogCategory_APAccTransportClientEndpoint, "OSStatus accTransportClientEndpointDestroyEndpoint(APAccTransportClientEndpointRef)", v9 | 0x2000000u, "[%{ptr}] destroying of acc endpoint was %s\n", a1, v10);
      }

      v11 = *(a1 + 48);
      if (v11)
      {
        CFRelease(v11);
        *(a1 + 48) = 0;
      }

      v12 = *(a1 + 64);
      if (v12)
      {
        _Block_release(v12);
        *(a1 + 64) = 0;
      }

      if (v8)
      {
        return 0;
      }

      else
      {
        accTransportClientEndpointDestroyEndpoint_cold_2();
        return 4294960534;
      }
    }
  }

  return result;
}

void sub_222132B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t APAccTransportClientEndpointSetAuthStatusHandler(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (a2)
  {
    v2 = *(a1 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APAccTransportClientEndpointSetAuthStatusHandler_block_invoke;
    block[3] = &unk_27849F7C8;
    block[5] = &v6;
    block[6] = a1;
    block[4] = a2;
    dispatch_sync(v2, block);
    v3 = *(v7 + 6);
  }

  else
  {
    APSLogErrorAt();
    v3 = 4294960591;
    *(v7 + 6) = -6705;
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

void __APAccTransportClientEndpointSetAuthStatusHandler_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 16))
  {
    __APAccTransportClientEndpointSetAuthStatusHandler_block_invoke_cold_1(a1);
  }

  else if (*(v2 + 48))
  {
    v3 = *(v2 + 72);
    if (v3)
    {
      _Block_release(v3);
      *(*(a1 + 48) + 72) = 0;
    }

    v4 = _Block_copy(*(a1 + 32));
    v5 = *(a1 + 48);
    *(v5 + 72) = v4;
    if (v4)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __APAccTransportClientEndpointSetAuthStatusHandler_block_invoke_2;
      v7[3] = &unk_27849F7A0;
      v7[4] = v5;
      soft_acc_transportClient_setConnectionAuthStatusDidChangeHandler(v7);
    }

    else
    {
      __APAccTransportClientEndpointSetAuthStatusHandler_block_invoke_cold_2(a1);
    }
  }

  else
  {
    __APAccTransportClientEndpointSetAuthStatusHandler_block_invoke_cold_3(a1);
  }

  if (*(*(*(a1 + 40) + 8) + 24))
  {
    soft_acc_transportClient_setConnectionAuthStatusDidChangeHandler(0);
    v6 = *(*(a1 + 48) + 72);
    if (v6)
    {
      _Block_release(v6);
      *(*(a1 + 48) + 72) = 0;
    }
  }
}

uint64_t soft_acc_transportClient_setConnectionAuthStatusDidChangeHandler(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = getacc_transportClient_setConnectionAuthStatusDidChangeHandlerSymbolLoc_ptr;
  v8 = getacc_transportClient_setConnectionAuthStatusDidChangeHandlerSymbolLoc_ptr;
  if (!getacc_transportClient_setConnectionAuthStatusDidChangeHandlerSymbolLoc_ptr)
  {
    v3 = CoreAccessoriesLibrary();
    v6[3] = dlsym(v3, "acc_transportClient_setConnectionAuthStatusDidChangeHandler");
    getacc_transportClient_setConnectionAuthStatusDidChangeHandlerSymbolLoc_ptr = v6[3];
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    soft_acc_transportClient_setConnectionAuthStatusDidChangeHandler_cold_1();
  }

  return v2(a1);
}

void sub_222132E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __APAccTransportClientEndpointSetAuthStatusHandler_block_invoke_2(uint64_t a1, const void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (gLogCategory_APAccTransportClientEndpoint <= 50 && (gLogCategory_APAccTransportClientEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAccTransportClientEndpoint, "OSStatus APAccTransportClientEndpointSetAuthStatusHandler(APAccTransportClientEndpointRef, APAccTransportClientEndpointAuthStatusHandler)_block_invoke_2", 33554482, "[%{ptr}] AuthStatusDidChangeHandler, authenticated: %d\n", v5, a3);
  }

  CFRetain(v5);
  CFRetain(a2);
  v6 = v5[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APAccTransportClientEndpointSetAuthStatusHandler_block_invoke_3;
  block[3] = &__block_descriptor_49_e5_v8__0l;
  block[4] = v5;
  block[5] = a2;
  v8 = a3;
  dispatch_async(v6, block);
}

void __APAccTransportClientEndpointSetAuthStatusHandler_block_invoke_3(uint64_t a1)
{
  if (!*(*(a1 + 32) + 16) && FigCFEqual())
  {
    (*(*(*(a1 + 32) + 72) + 16))();
  }

  CFRelease(*(a1 + 40));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t APAccTransportClientEndpointForwardData(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a1 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APAccTransportClientEndpointForwardData_block_invoke;
  block[3] = &unk_27849BEC0;
  block[4] = &v6;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __APAccTransportClientEndpointForwardData_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 16))
  {
    result = __APAccTransportClientEndpointForwardData_block_invoke_cold_1();
LABEL_14:
    v10 = -6709;
LABEL_17:
    *(*(*(a1 + 32) + 8) + 24) = v10;
    return result;
  }

  if (!*(v2 + 48))
  {
    result = __APAccTransportClientEndpointForwardData_block_invoke_cold_4();
    goto LABEL_14;
  }

  if (gLogCategory_APAccTransportClientEndpoint <= 30)
  {
    if (gLogCategory_APAccTransportClientEndpoint != -1 || (v4 = _LogCategory_Initialize(), v2 = *(a1 + 40), v4))
    {
      Length = CFDataGetLength(*(a1 + 48));
      LogPrintF(&gLogCategory_APAccTransportClientEndpoint, "OSStatus APAccTransportClientEndpointForwardData(APAccTransportClientEndpointRef, CFDataRef)_block_invoke", 33554462, "[%{ptr}] Sending %u bytes of data to receiver\n", v2, Length);
      v2 = *(a1 + 40);
    }
  }

  v5 = *(a1 + 48);
  v6 = *(v2 + 48);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v7 = getacc_transportClient_processIncomingDataSymbolLoc_ptr;
  v14 = getacc_transportClient_processIncomingDataSymbolLoc_ptr;
  if (!getacc_transportClient_processIncomingDataSymbolLoc_ptr)
  {
    v8 = CoreAccessoriesLibrary();
    v12[3] = dlsym(v8, "acc_transportClient_processIncomingData");
    getacc_transportClient_processIncomingDataSymbolLoc_ptr = v12[3];
    v7 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v7)
  {
    __APAccTransportClientEndpointForwardData_block_invoke_cold_3();
  }

  result = v7(v5, v6);
  if ((result & 1) == 0)
  {
    result = __APAccTransportClientEndpointForwardData_block_invoke_cold_2();
    v10 = -6700;
    goto LABEL_17;
  }

  return result;
}

void sub_222133258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t APAccTransportClientEndpointDeactivate(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 24);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __APAccTransportClientEndpointDeactivate_block_invoke;
  v4[3] = &unk_27849F700;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __APAccTransportClientEndpointDeactivate_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = accTransportClientEndpointDestroyEndpoint(*(a1 + 40));
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    return __APAccTransportClientEndpointDeactivate_block_invoke_cold_1(result);
  }

  return result;
}

uint64_t APAccTransportClientEndpointSecureTunnelDataSend(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a1 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APAccTransportClientEndpointSecureTunnelDataSend_block_invoke;
  block[3] = &unk_27849BEC0;
  block[4] = &v6;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __APAccTransportClientEndpointSecureTunnelDataSend_block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  if (*(v1 + 16))
  {
    __APAccTransportClientEndpointSecureTunnelDataSend_block_invoke_cold_1(a1);
  }

  else
  {
    v3 = *(v1 + 48);
    if (v3)
    {
      v4 = (a1 + 48);
      v5 = *(a1 + 48);
      v8 = 0;
      v9 = &v8;
      v10 = 0x2020000000;
      v6 = getacc_transportClient_endpointSecureTunnelDataSendSymbolLoc_ptr;
      v11 = getacc_transportClient_endpointSecureTunnelDataSendSymbolLoc_ptr;
      if (!getacc_transportClient_endpointSecureTunnelDataSendSymbolLoc_ptr)
      {
        v7 = CoreAccessoriesLibrary();
        v9[3] = dlsym(v7, "acc_transportClient_endpointSecureTunnelDataSend");
        getacc_transportClient_endpointSecureTunnelDataSendSymbolLoc_ptr = v9[3];
        v6 = v9[3];
      }

      _Block_object_dispose(&v8, 8);
      if (!v6)
      {
        __APAccTransportClientEndpointSecureTunnelDataSend_block_invoke_cold_3();
      }

      v6(v3, 1, v5);
      if (gLogCategory_APAccTransportClientEndpoint <= 30 && (gLogCategory_APAccTransportClientEndpoint != -1 || _LogCategory_Initialize()))
      {
        __APAccTransportClientEndpointSecureTunnelDataSend_block_invoke_cold_2(v2, v4);
      }
    }

    else
    {
      __APAccTransportClientEndpointSecureTunnelDataSend_block_invoke_cold_4(a1);
    }
  }
}

void sub_222133588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t APAccTransportClientEndpointSetSecureTunnelDataReceiveHandler(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (a2)
  {
    v2 = *(a1 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APAccTransportClientEndpointSetSecureTunnelDataReceiveHandler_block_invoke;
    block[3] = &unk_27849F7C8;
    block[5] = &v6;
    block[6] = a1;
    block[4] = a2;
    dispatch_sync(v2, block);
    v3 = *(v7 + 6);
  }

  else
  {
    APSLogErrorAt();
    v3 = 4294960591;
    *(v7 + 6) = -6705;
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

void __APAccTransportClientEndpointSetSecureTunnelDataReceiveHandler_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 48))
  {
    if (*(v2 + 80))
    {
      __APAccTransportClientEndpointSetSecureTunnelDataReceiveHandler_block_invoke_cold_1(a1);
    }

    else
    {
      v3 = _Block_copy(*(a1 + 32));
      v4 = *(a1 + 48);
      *(v4 + 80) = v3;
      if (v3)
      {
        v5 = *(v4 + 48);
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 3221225472;
        v6[2] = __APAccTransportClientEndpointSetSecureTunnelDataReceiveHandler_block_invoke_2;
        v6[3] = &unk_27849F7F0;
        v6[4] = v4;
        soft_acc_transportClient_setEndpointSecureTunnelDataReceiveHandler(v5, v6);
      }

      else
      {
        __APAccTransportClientEndpointSetSecureTunnelDataReceiveHandler_block_invoke_cold_2(a1);
      }
    }
  }

  else
  {
    __APAccTransportClientEndpointSetSecureTunnelDataReceiveHandler_block_invoke_cold_3(a1);
  }
}

uint64_t soft_acc_transportClient_setEndpointSecureTunnelDataReceiveHandler(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v4 = getacc_transportClient_setEndpointSecureTunnelDataReceiveHandlerSymbolLoc_ptr;
  v10 = getacc_transportClient_setEndpointSecureTunnelDataReceiveHandlerSymbolLoc_ptr;
  if (!getacc_transportClient_setEndpointSecureTunnelDataReceiveHandlerSymbolLoc_ptr)
  {
    v5 = CoreAccessoriesLibrary();
    v8[3] = dlsym(v5, "acc_transportClient_setEndpointSecureTunnelDataReceiveHandler");
    getacc_transportClient_setEndpointSecureTunnelDataReceiveHandlerSymbolLoc_ptr = v8[3];
    v4 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v4)
  {
    soft_acc_transportClient_setEndpointSecureTunnelDataReceiveHandler_cold_1();
  }

  return v4(a1, a2);
}

void sub_222133850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __APAccTransportClientEndpointSetSecureTunnelDataReceiveHandler_block_invoke_2(uint64_t a1, const void *a2, const __CFData *a3)
{
  v5 = *(a1 + 32);
  if (gLogCategory_APAccTransportClientEndpoint <= 30 && (gLogCategory_APAccTransportClientEndpoint != -1 || _LogCategory_Initialize()))
  {
    __APAccTransportClientEndpointSetSecureTunnelDataReceiveHandler_block_invoke_2_cold_1(a3, v5);
  }

  CFRetain(v5);
  CFRetain(a2);
  CFRetain(a3);
  v6 = v5[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APAccTransportClientEndpointSetSecureTunnelDataReceiveHandler_block_invoke_3;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = v5;
  block[5] = a2;
  block[6] = a3;
  dispatch_async(v6, block);
}

void __APAccTransportClientEndpointSetSecureTunnelDataReceiveHandler_block_invoke_3(uint64_t a1)
{
  if (!*(*(a1 + 32) + 16) && FigCFEqual())
  {
    (*(*(*(a1 + 32) + 80) + 16))();
  }

  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 32));
  v2 = *(a1 + 48);

  CFRelease(v2);
}

void _APAccTransportClientConnectionFinalize(void *a1)
{
  if (gLogCategory_APAccTransportClientConnection <= 50 && (gLogCategory_APAccTransportClientConnection != -1 || _LogCategory_Initialize()))
  {
    _APAccTransportClientConnectionFinalize_cold_1(a1);
  }

  if (a1[3])
  {
    if (gLogCategory_APAccTransportClientConnection <= 90 && (gLogCategory_APAccTransportClientConnection != -1 || _LogCategory_Initialize()))
    {
      _APAccTransportClientConnectionFinalize_cold_2(a1);
    }

    APAccTransportClientConnectionClose(a1);
  }

  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    dispatch_release(v4);
    a1[2] = 0;
  }
}

void *__getacc_transportClient_serverDisconnectedHandlerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAccessoriesLibrary();
  result = dlsym(v2, "acc_transportClient_serverDisconnectedHandler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getacc_transportClient_serverDisconnectedHandlerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreAccessoriesLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!CoreAccessoriesLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __CoreAccessoriesLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_27849F810;
    v4 = 0;
    CoreAccessoriesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreAccessoriesLibraryCore_frameworkLibrary;
  if (!CoreAccessoriesLibraryCore_frameworkLibrary)
  {
    CoreAccessoriesLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __CoreAccessoriesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreAccessoriesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getacc_transportClient_createConnectionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAccessoriesLibrary();
  result = dlsym(v2, "acc_transportClient_createConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getacc_transportClient_createConnectionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getacc_transportClient_destroyConnectionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAccessoriesLibrary();
  result = dlsym(v2, "acc_transportClient_destroyConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getacc_transportClient_destroyConnectionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void _APAccTransportClientEndpointFinalize(void *a1)
{
  if (gLogCategory_APAccTransportClientEndpoint <= 50 && (gLogCategory_APAccTransportClientEndpoint != -1 || _LogCategory_Initialize()))
  {
    _APAccTransportClientEndpointFinalize_cold_1(a1);
  }

  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[7];
  if (v5)
  {

    CFRelease(v5);
  }
}

void *__getacc_transportClient_createEndpointSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAccessoriesLibrary();
  result = dlsym(v2, "acc_transportClient_createEndpoint");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getacc_transportClient_createEndpointSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getacc_transportClient_setPropertyForEndpointWithUUIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAccessoriesLibrary();
  result = dlsym(v2, "acc_transportClient_setPropertyForEndpointWithUUID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getacc_transportClient_setPropertyForEndpointWithUUIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getacc_transportClient_setConnectionAuthStatusDidChangeHandlerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAccessoriesLibrary();
  result = dlsym(v2, "acc_transportClient_setConnectionAuthStatusDidChangeHandler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getacc_transportClient_setConnectionAuthStatusDidChangeHandlerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getacc_transportClient_processIncomingDataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAccessoriesLibrary();
  result = dlsym(v2, "acc_transportClient_processIncomingData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getacc_transportClient_processIncomingDataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getacc_transportClient_destroyEndpointSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAccessoriesLibrary();
  result = dlsym(v2, "acc_transportClient_destroyEndpoint");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getacc_transportClient_destroyEndpointSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getacc_transportClient_copyPropertiesForEndpointWithUUIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAccessoriesLibrary();
  result = dlsym(v2, "acc_transportClient_copyPropertiesForEndpointWithUUID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getacc_transportClient_copyPropertiesForEndpointWithUUIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __accTransportClientEndpointInvalidate_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!*(result + 16))
  {
    result = accTransportClientEndpointDestroyEndpoint(result);
    *(*(a1 + 32) + 16) = 1;
  }

  return result;
}

void *__getacc_transportClient_endpointSecureTunnelDataSendSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAccessoriesLibrary();
  result = dlsym(v2, "acc_transportClient_endpointSecureTunnelDataSend");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getacc_transportClient_endpointSecureTunnelDataSendSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getacc_transportClient_setEndpointSecureTunnelDataReceiveHandlerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreAccessoriesLibrary();
  result = dlsym(v2, "acc_transportClient_setEndpointSecureTunnelDataReceiveHandler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getacc_transportClient_setEndpointSecureTunnelDataReceiveHandlerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t APPairingClientLegacyCreate(uint64_t a1, const void *a2, const void *a3, const void *a4, CFTypeRef *a5)
{
  cf = 0;
  if (!a4)
  {
    APPairingClientLegacyCreate_cold_4();
    return 4294895525;
  }

  APPairingClientGetClassID(a1, a2);
  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    v16 = v9;
    APPairingClientLegacyCreate_cold_1(v9);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      v11 = CFRetain(a2);
    }

    else
    {
      v11 = 0;
    }

    DerivedStorage[1] = v11;
    if (a3)
    {
      v12 = CFRetain(a3);
    }

    else
    {
      v12 = 0;
    }

    DerivedStorage[2] = v12;
    DerivedStorage[3] = CFRetain(a4);
    v13 = gQblcfSzZBQsYCCV();
    if (!v13)
    {
      if (gLogCategory_APPairingClientLegacy <= 50 && (gLogCategory_APPairingClientLegacy != -1 || _LogCategory_Initialize()))
      {
        APPairingClientLegacyCreate_cold_3(&cf, v14, v15);
      }

      v16 = 0;
      *a5 = cf;
      return v16;
    }

    v16 = v13;
    APPairingClientLegacyCreate_cold_2(v13);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

void legacyPairing_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
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

__CFString *legacyPairing_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APPairingClientLegacy '%@'>", *DerivedStorage);
  return Mutable;
}

uint64_t legacyPairing_DeriveKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  CMBaseObjectGetDerivedStorage();
  if (a6 == 16)
  {
    v8 = PCFdAVst();
    v9 = v8;
    if (v8)
    {
      legacyPairing_DeriveKey_cold_2(v8);
    }
  }

  else
  {
    legacyPairing_DeriveKey_cold_1();
    return 4294895525;
  }

  return v9;
}

uint64_t legacyPairing_PerformSetup(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, CFDataRef *a8)
{
  v56 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    memoryBlock = 0;
    dataPointerOut = 0;
    cf = 0;
    dataLength = 0;
    LOBYTE(v47) = 0;
    *bytes = 0u;
    v55 = 0u;
    v48 = 0;
    CMBaseObjectGetDerivedStorage();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (gLogCategory_APPairingClientLegacy <= 50 && (gLogCategory_APPairingClientLegacy != -1 || _LogCategory_Initialize()))
    {
      legacyPairing_PerformSetup_cold_1(a1, v12, v13);
      if (a2)
      {
LABEL_6:
        XoN3GgjZNCvkN1T8I3();
        v15 = rJPl3sdBfc0E3yB();
        if (v15)
        {
          v20 = v15;
          legacyPairing_PerformSetup_cold_2(v15);
        }

        else
        {
          v16 = GvMGlTNs();
          if (v16)
          {
            v20 = v16;
            legacyPairing_PerformSetup_cold_3(v16);
          }

          else
          {
            dataPointerOut = 0;
            dataLength = 0;
            LOBYTE(v47) = 0;
            v17 = *MEMORY[0x277CBECE8];
            v18 = *MEMORY[0x277CBECF0];
            while (1)
            {
              v19 = SrtySZG0();
              v20 = v19;
              if ((v19 + 71775) < 3)
              {
                break;
              }

              if (v19)
              {
                goto LABEL_68;
              }

              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }

              v21 = CMBlockBufferCreateWithMemoryBlock(v17, memoryBlock, dataLength, v18, 0, 0, dataLength, 0, &cf);
              if (v21)
              {
                v20 = v21;
                legacyPairing_PerformSetup_cold_6(v21);
                goto LABEL_87;
              }

              memoryBlock = 0;
              if (v48)
              {
                CFRelease(v48);
                v48 = 0;
              }

              v22 = *(DerivedStorage + 24);
              v23 = cf;
              v24 = *(*(CMBaseObjectGetVTable() + 16) + 56);
              if (!v24)
              {
                v20 = 4294954514;
                goto LABEL_87;
              }

              v25 = v24(v22, 1886613612, v23, &v48);
              if (v25 == 200470)
              {
LABEL_68:
                v20 = 200401;
                goto LABEL_87;
              }

              v20 = v25;
              if (v25)
              {
                goto LABEL_87;
              }

              dataLength = 0;
              dataPointerOut = 0;
              if (v48)
              {
                CMBlockBufferGetDataPointer(v48, 0, &dataLength, 0, &dataPointerOut);
              }
            }

            if (gLogCategory_APPairingClientLegacy <= 50 && (gLogCategory_APPairingClientLegacy != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APPairingClientLegacy, "OSStatus legacyPairing_performSetupPIN(APPairingClientRef, const CFStringRef, CFStringRef *, CFDataRef *)", 33554482, "### [%{ptr}] Error in pairing session pair setup PIN exchange: %#m\n", a1, v20);
            }

            APSLogErrorAt();
          }
        }

        goto LABEL_87;
      }
    }

    else if (a2)
    {
      goto LABEL_6;
    }

    v42 = *(DerivedStorage + 24);
    v43 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v43)
    {
      v44 = v43(v42, 1886417780, 0, 0);
      if (v44)
      {
        v20 = v44;
      }

      else
      {
        v20 = 200401;
      }
    }

    else
    {
      v20 = 4294954514;
    }

LABEL_87:
    if (v48)
    {
      CFRelease(v48);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (memoryBlock)
    {
      free(memoryBlock);
      memoryBlock = 0;
    }

    if (v20 && gLogCategory_APPairingClientLegacy <= 50 && (gLogCategory_APPairingClientLegacy != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APPairingClientLegacy, "OSStatus legacyPairing_performSetupPIN(APPairingClientRef, const CFStringRef, CFStringRef *, CFDataRef *)", 33554482, "### [%{ptr}] Control pair-setup PIN legacy failed: %#m\n", a1, v20);
    }

    return v20;
  }

  memoryBlock = 0;
  dataPointerOut = 0;
  v51 = 0;
  cf = 0;
  dataLength = 0;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  *bytes = 0u;
  v55 = 0u;
  CMBaseObjectGetDerivedStorage();
  v28 = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APPairingClientLegacy <= 50 && (gLogCategory_APPairingClientLegacy != -1 || _LogCategory_Initialize()))
  {
    legacyPairing_PerformSetup_cold_7(a1, v26, v27);
  }

  XoN3GgjZNCvkN1T8I3();
  v29 = *MEMORY[0x277CBECE8];
  v30 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], 0, 0x60uLL, *MEMORY[0x277CBECF0], 0, 0, 0x60uLL, 1u, &dataLength);
  if (v30)
  {
    v20 = v30;
    legacyPairing_PerformSetup_cold_8(v30);
  }

  else
  {
    DataPointer = CMBlockBufferGetDataPointer(dataLength, 0, &v48, 0, &cf);
    if (DataPointer)
    {
      v20 = DataPointer;
      legacyPairing_PerformSetup_cold_9(DataPointer);
    }

    else
    {
      memoryBlock = 0;
      dataPointerOut = 0;
      v51 = 0;
      v32 = h4BvW7X();
      if (!v32)
      {
        while (!v51)
        {
          if (v47)
          {
            CFRelease(v47);
            v47 = 0;
          }

          v35 = CMBlockBufferCreateWithBufferReference(v29, dataLength, 0, memoryBlock, 0, &v47);
          if (v35)
          {
            v20 = v35;
            legacyPairing_PerformSetup_cold_12(v35);
            goto LABEL_53;
          }

          if (v46)
          {
            CFRelease(v46);
            v46 = 0;
          }

          v36 = *(v28 + 24);
          v37 = v47;
          v38 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (!v38)
          {
            v39 = 0;
            v20 = 4294954514;
            goto LABEL_54;
          }

          v32 = v38(v36, 1886614892, v37, &v46);
          if (!v32)
          {
            memoryBlock = 0;
            dataPointerOut = 0;
            if (v46)
            {
              CMBlockBufferGetDataPointer(v46, 0, &memoryBlock, 0, &dataPointerOut);
            }

            v32 = h4BvW7X();
            if (!v32)
            {
              continue;
            }
          }

          goto LABEL_38;
        }

        if (gLogCategory_APPairingClientLegacy <= 50 && (gLogCategory_APPairingClientLegacy != -1 || _LogCategory_Initialize()))
        {
          legacyPairing_PerformSetup_cold_10(a1, v33, v34);
        }

        aMoe8v8GNE9T();
        v40 = CFDataCreate(v29, bytes, 32);
        v39 = v40;
        if (v40)
        {
          v41 = *(v28 + 16);
          *(v28 + 16) = v40;
          CFRetain(v40);
          if (v41)
          {
            CFRelease(v41);
          }

          if (a7)
          {
            *a7 = 0;
          }

          v20 = 0;
          if (a8)
          {
            *a8 = v39;
            goto LABEL_53;
          }
        }

        else
        {
          v20 = 4294895526;
          legacyPairing_PerformSetup_cold_11();
        }

        goto LABEL_54;
      }

LABEL_38:
      v20 = v32;
    }
  }

LABEL_53:
  v39 = 0;
LABEL_54:
  if (v46)
  {
    CFRelease(v46);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (dataLength)
  {
    CFRelease(dataLength);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v20 && gLogCategory_APPairingClientLegacy <= 60 && (gLogCategory_APPairingClientLegacy != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APPairingClientLegacy, "OSStatus legacyPairing_performSetupUnauthenticated(APPairingClientRef, CFStringRef *, CFDataRef *)", 33554492, "### [%{ptr}] Control pair-setup UA Legacy failed: %#m\n", a1, v20);
  }

  return v20;
}

uint64_t APCarPlayXPCUtils_UnpackASBD(void *a1, const char *a2, uint64_t a3, void *a4)
{
  if (!a4)
  {
    v7 = 4294960591;
LABEL_9:
    APSLogErrorAt();
    return v7;
  }

  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    v7 = 4294960569;
    goto LABEL_9;
  }

  if (xpc_data_get_bytes(value, a4, 0, 40 * a3) != 40 * a3)
  {
    v7 = 4294960550;
    goto LABEL_9;
  }

  return 0;
}

uint64_t APCarPlayAVVCServerGetTypeID(uint64_t a1, uint64_t a2)
{
  if (gAPCarPlayAVVCServerInitOnce != -1)
  {
    APCarPlayAVVCServerGetTypeID_cold_1();
  }

  return gAPCarPlayAVVCServerTypeID;
}

uint64_t _APCarPlayAVVCServerGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPCarPlayAVVCServerTypeID = result;
  return result;
}

uint64_t APCarPlayAVVCServerRegisterEndpoint(const void *a1, uint64_t a2, uint64_t a3)
{
  v3 = gCarPlayAVVCServer;
  if (gCarPlayAVVCServer)
  {
    v5 = *(gCarPlayAVVCServer + 24);
    if (v5)
    {
      APCarPlayAVVCServerRemoveEndpoint(v5, a2, a3);
      v6 = *(v3 + 24);
    }

    else
    {
      v6 = 0;
    }

    *(v3 + 24) = a1;
    if (a1)
    {
      CFRetain(a1);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (gLogCategory_APCarPlayAVVCServer <= 30 && (gLogCategory_APCarPlayAVVCServer != -1 || _LogCategory_Initialize()))
    {
      APCarPlayAVVCServerRegisterEndpoint_cold_1(a1, a2, a3);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277CC0D38], 0, 0, 1u);
    return 0;
  }

  else
  {
    APCarPlayAVVCServerRegisterEndpoint_cold_2();
    return 4294960578;
  }
}

uint64_t APCarPlayAVVCServerRemoveEndpoint(const void *a1, uint64_t a2, uint64_t a3)
{
  v3 = gCarPlayAVVCServer;
  if (gCarPlayAVVCServer)
  {
    v5 = *(gCarPlayAVVCServer + 24);
    if (v5 == a1)
    {
      if (gLogCategory_APCarPlayAVVCServer <= 30)
      {
        if (gLogCategory_APCarPlayAVVCServer != -1 || _LogCategory_Initialize())
        {
          APCarPlayAVVCServerRemoveEndpoint_cold_1(a1, a2, a3);
        }

        v5 = *(v3 + 24);
      }

      if (v5)
      {
        CFRelease(v5);
        *(v3 + 24) = 0;
      }
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277CC0D40], 0, 0, 1u);
    return 0;
  }

  else
  {
    APCarPlayAVVCServerRemoveEndpoint_cold_2();
    return 4294960578;
  }
}

uint64_t APCarPlayAVVCServerRegisterStream(const void *a1, uint64_t a2, uint64_t a3)
{
  v3 = gCarPlayAVVCServer;
  if (!gCarPlayAVVCServer)
  {
    APCarPlayAVVCServerRegisterStream_cold_2();
    return 4294960578;
  }

  v5 = *(gCarPlayAVVCServer + 32);
  if (v5)
  {
    APCarPlayAVVCServerRemoveStream(v5, a2, a3);
    v6 = *(v3 + 32);
  }

  else
  {
    v6 = 0;
  }

  *(v3 + 32) = a1;
  if (a1)
  {
    CFRetain(a1);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (gLogCategory_APCarPlayAVVCServer > 30)
  {
    return 0;
  }

  if (gLogCategory_APCarPlayAVVCServer != -1 || (result = _LogCategory_Initialize(), result))
  {
    APCarPlayAVVCServerRegisterStream_cold_1(a1, a2, a3);
    return 0;
  }

  return result;
}

uint64_t APCarPlayAVVCServerRemoveStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = gCarPlayAVVCServer;
  if (gCarPlayAVVCServer)
  {
    result = *(gCarPlayAVVCServer + 32);
    if (result == a1)
    {
      if (gLogCategory_APCarPlayAVVCServer <= 30)
      {
        if (gLogCategory_APCarPlayAVVCServer != -1 || _LogCategory_Initialize())
        {
          APCarPlayAVVCServerRemoveStream_cold_1(a1, a2, a3);
        }

        result = *(v3 + 32);
      }

      if (result)
      {
        CFRelease(result);
        result = 0;
        *(v3 + 32) = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    APCarPlayAVVCServerRemoveStream_cold_2();
    return 4294960578;
  }

  return result;
}

void APCarPlayAVVCServerStatesIncompatibleWithAuxIn()
{
  if (gLogCategory_APCarPlayAVVCServer <= 50 && (gLogCategory_APCarPlayAVVCServer != -1 || _LogCategory_Initialize()))
  {
    APCarPlayAVVCServerStatesIncompatibleWithAuxIn_cold_1();
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CarPlayAVVCEndpointStateIncompatibleWithJarvis", 0, 0, 1u);
}

uint64_t APCarPlayAVVCServerInit()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APCarPlayAVVCServerInit_block_invoke;
  block[3] = &unk_27849F838;
  block[4] = &v6;
  if (gCarPlayInputServerOnce != -1)
  {
    dispatch_once(&gCarPlayInputServerOnce, block);
  }

  v0 = v7;
  v1 = *(v7 + 6);
  if (v1 && gLogCategory_APCarPlayAVVCServer <= 90)
  {
    if (gLogCategory_APCarPlayAVVCServer == -1)
    {
      v2 = _LogCategory_Initialize();
      v0 = v7;
      if (!v2)
      {
        goto LABEL_8;
      }

      v1 = *(v7 + 6);
    }

    LogPrintF(&gLogCategory_APCarPlayAVVCServer, "OSStatus APCarPlayAVVCServerInit(CFAllocatorRef)", 33554522, "Error %d in initializing CarPlay AVVC Server\n", v1);
    v0 = v7;
  }

LABEL_8:
  v3 = *(v0 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __APCarPlayAVVCServerInit_block_invoke(uint64_t a1, uint64_t a2)
{
  if (gAPCarPlayAVVCServerInitOnce != -1)
  {
    APCarPlayAVVCServerGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return __APCarPlayAVVCServerInit_block_invoke_cold_5(a1);
  }

  Instance[2] = 0;
  v4 = Instance + 2;
  Instance[3] = 0;
  Instance[4] = 0;
  gCarPlayAVVCServer = Instance;
  v5 = FigXPCServerStart();
  v7 = *(a1 + 32);
  v6 = a1 + 32;
  *(*(v7 + 8) + 24) = v5;
  result = *(*(*v6 + 8) + 24);
  if (result)
  {
    return __APCarPlayAVVCServerInit_block_invoke_cold_2(result);
  }

  if (!*v4)
  {
    return __APCarPlayAVVCServerInit_block_invoke_cold_4(v6);
  }

  if (gLogCategory_APCarPlayAVVCServer <= 50)
  {
    if (gLogCategory_APCarPlayAVVCServer != -1)
    {
      return __APCarPlayAVVCServerInit_block_invoke_cold_3();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __APCarPlayAVVCServerInit_block_invoke_cold_3();
    }
  }

  return result;
}

uint64_t APCarPlayAVVCServer_MessageHandler(uint64_t a1, void *a2, void *a3)
{
  v4 = CFRetain(gCarPlayAVVCServer);
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v8 = OpCode;
    APCarPlayAVVCServer_MessageHandler_cold_1(OpCode);
    goto LABEL_5;
  }

  if (xpc_dictionary_get_uint64(a2, *MEMORY[0x277CC0990]))
  {
    v6 = FigXPCServerLookupAndRetainAssociatedObject();
    if (v6)
    {
      v8 = v6;
      APCarPlayAVVCServer_MessageHandler_cold_2(v6);
      goto LABEL_5;
    }

    APCarPlayAVVCServer_MessageHandler_cold_20();
  }

  else
  {
    APCarPlayAVVCServer_MessageHandler_cold_21();
  }

  v8 = 0;
LABEL_5:
  if (v4)
  {
    CFRelease(v4);
  }

  return v8;
}

uint64_t APCarPlayAVVCServer_VerifyConnectionCallback(uint64_t a1)
{
  has_entitlement = xpc_connection_has_entitlement();
  if ((has_entitlement & 1) == 0 && gLogCategory_APCarPlayAVVCServer <= 90 && (gLogCategory_APCarPlayAVVCServer != -1 || _LogCategory_Initialize()))
  {
    APCarPlayAVVCServer_VerifyConnectionCallback_cold_1();
  }

  return has_entitlement;
}

uint64_t StreamServer_StreamDestructor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APCarPlayAVVCServer <= 30 && (gLogCategory_APCarPlayAVVCServer != -1 || _LogCategory_Initialize()))
  {
    StreamServer_StreamDestructor_cold_1(a1, a2, a3);
  }

  v4 = APSGetFBOPropertyInt64();
  result = 0;
  if (v4)
  {
    result = FigEndpointStreamSuspendSync();
    if (result)
    {
      return StreamServer_StreamDestructor_cold_3(result);
    }
  }

  return result;
}

void StreamServer_SinkDestructor(const void *a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APCarPlayAVVCServer <= 30 && (gLogCategory_APCarPlayAVVCServer != -1 || _LogCategory_Initialize()))
  {
    StreamServer_SinkDestructor_cold_1(a1, a2, a3);
  }

  v4 = *(CMBaseObjectGetVTable() + 16);
  if (*v4 >= 2uLL)
  {
    v5 = v4[4];
    if (v5)
    {
      v5(a1);
    }
  }

  CFRelease(a1);
}

uint64_t APStarkModeCreateDictionaryRepresentation(int *a1, __CFDictionary **a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v4 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v4)
    {
      v5 = v4;
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      v6 = CFArrayEnsureCreatedAndAppend();
      CFRelease(v5);
      if (v6)
      {
        APStarkModeCreateDictionaryRepresentation_cold_1(v6);
      }

      else
      {
        v7 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v7)
        {
          v8 = v7;
          CFDictionarySetInt64();
          CFDictionarySetInt64();
          CFDictionarySetInt64();
          v6 = CFArrayEnsureCreatedAndAppend();
          CFRelease(v8);
          if (v6)
          {
            APStarkModeCreateDictionaryRepresentation_cold_2(v6);
          }

          else
          {
            v9 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (v9)
            {
              v10 = v9;
              CFDictionarySetInt64();
              CFDictionarySetInt64();
              v6 = CFArrayEnsureCreatedAndAppend();
              CFRelease(v10);
              if (v6)
              {
                APStarkModeCreateDictionaryRepresentation_cold_3(v6);
              }

              else
              {
                v11 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                if (v11)
                {
                  v12 = v11;
                  CFDictionarySetInt64();
                  CFDictionarySetInt64();
                  CFDictionarySetInt64();
                  v6 = CFArrayEnsureCreatedAndAppend();
                  CFRelease(v12);
                  if (v6)
                  {
                    APStarkModeCreateDictionaryRepresentation_cold_4(v6);
                  }

                  else
                  {
                    v13 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                    if (v13)
                    {
                      v14 = v13;
                      CFDictionarySetInt64();
                      CFDictionarySetInt64();
                      CFDictionarySetInt64();
                      v6 = CFArrayEnsureCreatedAndAppend();
                      CFRelease(v14);
                      if (v6)
                      {
                        APStarkModeCreateDictionaryRepresentation_cold_5(v6);
                      }

                      else
                      {
                        CFDictionarySetValue(Mutable, @"appStates", 0);
                        CFDictionarySetValue(Mutable, @"resources", 0);
                        *a2 = Mutable;
                        Mutable = 0;
                      }
                    }

                    else
                    {
                      v6 = 4294895246;
                      APStarkModeCreateDictionaryRepresentation_cold_6();
                    }
                  }
                }

                else
                {
                  v6 = 4294895246;
                  APStarkModeCreateDictionaryRepresentation_cold_7();
                }
              }
            }

            else
            {
              v6 = 4294895246;
              APStarkModeCreateDictionaryRepresentation_cold_8();
            }
          }
        }

        else
        {
          v6 = 4294895246;
          APStarkModeCreateDictionaryRepresentation_cold_9();
        }
      }
    }

    else
    {
      v6 = 4294895246;
      APStarkModeCreateDictionaryRepresentation_cold_10();
    }
  }

  else
  {
    v6 = 4294895246;
    APStarkModeCreateDictionaryRepresentation_cold_11();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v6;
}

const __CFArray *APStarkModeInitialOwnerRequestMakeFromDictionary(uint64_t a1, int a2, int *a3, int *a4)
{
  *a3 = 0;
  a3[2] = 0;
  a4[2] = 0;
  *a4 = 0;
  CFArrayGetTypeID();
  result = CFDictionaryGetTypedValue();
  if (result)
  {
    Count = CFArrayGetCount(result);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; v8 != i; ++i)
      {
        CFDictionaryGetTypeID();
        TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
        if (gLogCategory_APReceiverNTPClient <= 40 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
        {
          APStarkModeInitialOwnerRequestMakeFromDictionary_cold_1(TypedValueAtIndex);
          if (TypedValueAtIndex)
          {
LABEL_8:
            Int64 = CFDictionaryGetInt64();
            if (Int64 == 2)
            {
              v15 = CFDictionaryGetInt64();
              v16 = v15 == 2;
              if (v15 == 1)
              {
                v16 = 2;
              }

              *a4 = v16;
              if (v15 == 1)
              {
                v17 = 100;
                a4[1] = 100;
              }

              else
              {
                v19 = CFDictionaryGetInt64();
                if (v19 != 100 && v19 != 1000 && v19 != 500)
                {
                  v19 = 100;
                }

                a4[1] = v19;
                v17 = CFDictionaryGetInt64();
                if (v17 != 100 && v17 != 1000 && v17 != 500)
                {
                  v17 = 100;
                }
              }

              a4[2] = v17;
              if (gLogCategory_APReceiverNTPClient <= 40 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
              {
                APStarkModeInitialOwnerRequestMakeFromDictionary_cold_2(a4, a4 + 1, a4 + 2);
              }
            }

            else if (Int64 == 1)
            {
              v12 = CFDictionaryGetInt64();
              v13 = v12 == 2;
              if (v12 == 1)
              {
                v13 = 2;
              }

              *a3 = v13;
              if (v12 == 1)
              {
                v14 = 100;
                a3[1] = 100;
              }

              else
              {
                v18 = CFDictionaryGetInt64();
                if (v18 != 100 && v18 != 1000 && v18 != 500)
                {
                  v18 = 100;
                }

                a3[1] = v18;
                v14 = CFDictionaryGetInt64();
                if (v14 != 100 && v14 != 1000 && v14 != 500)
                {
                  v14 = 100;
                }
              }

              a3[2] = v14;
              if (gLogCategory_APReceiverNTPClient <= 40 && (gLogCategory_APReceiverNTPClient != -1 || _LogCategory_Initialize()))
              {
                APStarkModeInitialOwnerRequestMakeFromDictionary_cold_3(a3, a3 + 1, a3 + 2);
              }
            }
          }
        }

        else if (TypedValueAtIndex)
        {
          goto LABEL_8;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t APStarkModeChangeRequestMakeFromDictionary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v25 = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *a3 = 0x100000001;
  CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    Count = CFArrayGetCount(TypedValue);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; v7 != i; ++i)
      {
        CFDictionaryGetTypeID();
        if (CFArrayGetTypedValueAtIndex())
        {
          Int64 = CFDictionaryGetInt64();
          switch(Int64)
          {
            case 1:
              if (v4 && *(a3 + 56))
              {
LABEL_50:
                v24 = -72052;
                goto LABEL_51;
              }

              v12 = CFDictionaryGetInt64();
              v13 = -1;
              switch(v12)
              {
                case -1:
                  goto LABEL_32;
                case 1:
                  v13 = 10;
LABEL_32:
                  *(a3 + 56) = v13;
                  goto LABEL_33;
                case 2:
                  v14 = 11;
                  break;
                default:
                  v14 = 0;
                  break;
              }

              *(a3 + 56) = v14;
              if (v4 && v12 != 2)
              {
                v24 = -72051;
LABEL_51:
                APSLogErrorAt();
                v25 = v24;
                APSLogErrorAt();
                goto LABEL_44;
              }

              if (v12 != 2)
              {
                v13 = -1;
                goto LABEL_32;
              }

              break;
            case 3:
              if (v4 && *(a3 + 64))
              {
                goto LABEL_50;
              }

              if (CFDictionaryGetInt64())
              {
                v11 = 1;
              }

              else
              {
                v11 = -1;
              }

              *(a3 + 64) = v11;
              break;
            case 2:
              if (v4 && *(a3 + 60))
              {
                goto LABEL_50;
              }

              if (CFDictionaryGetInt64())
              {
                v10 = 1;
              }

              else
              {
                v10 = -1;
              }

              *(a3 + 60) = v10;
              break;
          }
        }

LABEL_33:
        v25 = 0;
      }
    }
  }

  CFArrayGetTypeID();
  v15 = CFDictionaryGetTypedValue();
  if (v15)
  {
    v16 = CFArrayGetCount(v15);
    if (v16 >= 1)
    {
      v17 = v16;
      for (j = 0; v17 != j; ++j)
      {
        CFDictionaryGetTypeID();
        TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
        if (TypedValueAtIndex)
        {
          v20 = CFDictionaryGetInt64();
          if (v20 == 2)
          {
            v22 = apStarkMode_parseResourceChangeRequest(TypedValueAtIndex, v4, a3 + 32);
            v25 = v22;
            if (v22)
            {
              APStarkModeChangeRequestMakeFromDictionary_cold_3(v22);
              break;
            }
          }

          else if (v20 == 1)
          {
            v21 = apStarkMode_parseResourceChangeRequest(TypedValueAtIndex, v4, a3 + 8);
            v25 = v21;
            if (v21)
            {
              APStarkModeChangeRequestMakeFromDictionary_cold_4(v21);
              break;
            }
          }
        }

        v25 = 0;
      }
    }
  }

LABEL_44:
  if (!v4 && v25)
  {
    *(a3 + 64) = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = 0x100000001;
    return 0;
  }

  return v25;
}

uint64_t apStarkMode_parseResourceChangeRequest(const __CFDictionary *a1, int a2, uint64_t a3)
{
  v15 = 0;
  if (*a3)
  {
    apStarkMode_parseResourceChangeRequest_cold_1();
    goto LABEL_47;
  }

  Int64 = CFDictionaryGetInt64();
  if (Int64 > 2)
  {
    if (Int64 == 4)
    {
      v7 = 23;
      goto LABEL_21;
    }

    if (Int64 != 3)
    {
LABEL_9:
      *a3 = 0;
LABEL_46:
      APSLogErrorAt();
      v15 = -72051;
      goto LABEL_47;
    }

    v8 = 22;
  }

  else
  {
    if (Int64 != 1)
    {
      if (Int64 == 2)
      {
        v7 = 21;
LABEL_21:
        *a3 = v7;
        goto LABEL_22;
      }

      goto LABEL_9;
    }

    v8 = 20;
  }

  *a3 = v8;
  if (*(a3 + 4))
  {
    apStarkMode_parseResourceChangeRequest_cold_3();
    goto LABEL_47;
  }

  v9 = CFDictionaryGetInt64();
  if (v15)
  {
    apStarkMode_parseResourceChangeRequest_cold_4(v15);
    goto LABEL_47;
  }

  if (v9 == 500)
  {
    v10 = 500;
  }

  else
  {
    v10 = 0;
  }

  if (v9 == 100)
  {
    v10 = 100;
  }

  *(a3 + 4) = v10;
  if (!v10)
  {
    apStarkMode_parseResourceChangeRequest_cold_11(&v15);
    goto LABEL_47;
  }

  v7 = *a3;
LABEL_22:
  if ((v7 & 0xFFFFFFFE) == 0x16)
  {
    *(a3 + 8) = CFDictionaryGetValue(a1, @"borrowID");
    v7 = *a3;
  }

  if (v7 == 22)
  {
    if (*(a3 + 16))
    {
      apStarkMode_parseResourceChangeRequest_cold_5();
    }

    else
    {
      v13 = CFDictionaryGetInt64();
      if (!v15)
      {
        if (v13 == 100 || v13 == 1000 || v13 == 500)
        {
          *(a3 + 16) = v13;
          goto LABEL_47;
        }

        *(a3 + 16) = 0;
        goto LABEL_46;
      }

      apStarkMode_parseResourceChangeRequest_cold_6(v15);
    }

    goto LABEL_47;
  }

  if (v7 != 20)
  {
    goto LABEL_47;
  }

  if (*(a3 + 16))
  {
    apStarkMode_parseResourceChangeRequest_cold_7();
    goto LABEL_47;
  }

  v11 = CFDictionaryGetInt64();
  if (v15)
  {
    apStarkMode_parseResourceChangeRequest_cold_8(v15);
    goto LABEL_47;
  }

  if (v11 != 100 && v11 != 500 && v11 != 1000)
  {
    *(a3 + 16) = 0;
    goto LABEL_46;
  }

  *(a3 + 16) = v11;
  if (*(a3 + 20))
  {
    apStarkMode_parseResourceChangeRequest_cold_9();
  }

  else
  {
    v12 = CFDictionaryGetInt64();
    if (!v15)
    {
      if (v12 == 100 || v12 == 1000 || v12 == 500)
      {
        *(a3 + 20) = v12;
        goto LABEL_47;
      }

      *(a3 + 20) = 0;
      goto LABEL_46;
    }

    apStarkMode_parseResourceChangeRequest_cold_10(v15);
  }

LABEL_47:
  result = v15;
  if (!a2)
  {
    if (v15)
    {
      result = 0;
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }
  }

  return result;
}

uint64_t APStarkModeChangeRequestToString(int *a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v6 = *a1;
  v7 = "Car";
  v8 = "iOS";
  if (*a1 != 2)
  {
    v8 = "?";
  }

  if (v6 != 1)
  {
    v7 = v8;
  }

  if (v6)
  {
    v9 = v7;
  }

  else
  {
    v9 = "N/A";
  }

  SNPrintF_Add(&v27, a2 + a3, "%s", v9);
  v10 = a1[2];
  if (!v10)
  {
    v13 = 1;
    goto LABEL_27;
  }

  SNPrintF_Add(&v27, a2 + a3, " ");
  v11 = a1[2];
  if (v11 > 20)
  {
    if (v11 == 21)
    {
      v12 = "Untake";
      goto LABEL_22;
    }

    if (v11 == 22)
    {
      v12 = "Borrow";
      goto LABEL_22;
    }

LABEL_17:
    if (v11 == 23)
    {
      v12 = "Unborrow";
    }

    else
    {
      v12 = "?";
    }

    goto LABEL_22;
  }

  if (!v11)
  {
    v12 = "N/A";
    goto LABEL_22;
  }

  if (v11 != 20)
  {
    goto LABEL_17;
  }

  v12 = "Take";
LABEL_22:
  SNPrintF_Add(&v27, a2 + a3, "%s screen", v12);
  v14 = a1[2];
  if (v14 == 22)
  {
    SNPrintF_Add(&v27, a2 + a3, " (priority %s, unborrow %s)");
  }

  else if (v14 == 20)
  {
    SNPrintF_Add(&v27, a2 + a3, " (priority %s, can take %s, can borrow %s)");
  }

  v13 = 0;
LABEL_27:
  if (!a1[8])
  {
    goto LABEL_48;
  }

  if (v10)
  {
    SNPrintF_Add(&v27, a2 + a3, ", ");
  }

  else
  {
    SNPrintF_Add(&v27, a2 + a3, " ");
  }

  v15 = a1[8];
  if (v15 > 20)
  {
    if (v15 == 21)
    {
      v16 = "Untake";
      goto LABEL_43;
    }

    if (v15 == 22)
    {
      v16 = "Borrow";
      goto LABEL_43;
    }

LABEL_38:
    if (v15 == 23)
    {
      v16 = "Unborrow";
    }

    else
    {
      v16 = "?";
    }

    goto LABEL_43;
  }

  if (!v15)
  {
    v16 = "N/A";
    goto LABEL_43;
  }

  if (v15 != 20)
  {
    goto LABEL_38;
  }

  v16 = "Take";
LABEL_43:
  SNPrintF_Add(&v27, a2 + a3, "%s mainAudio", v16);
  v17 = a1[8];
  if (v17 == 22)
  {
    SNPrintF_Add(&v27, a2 + a3, " (priority %s, can unborrow %s)");
  }

  else if (v17 == 20)
  {
    SNPrintF_Add(&v27, a2 + a3, " (priority %s, can take %s, can borrow %s)");
  }

  v13 = 0;
LABEL_48:
  if (a1[14])
  {
    if (v13)
    {
      SNPrintF_Add(&v27, a2 + a3, " ");
    }

    else
    {
      SNPrintF_Add(&v27, a2 + a3, ", ");
    }

    v18 = a1[14];
    if (v18 == -1)
    {
      v19 = "Neither";
    }

    else if (v18)
    {
      if (v18 == 10)
      {
        v19 = "Speaking";
      }

      else if (v18 == 11)
      {
        v19 = "Recognizing";
      }

      else
      {
        v19 = "?";
      }
    }

    else
    {
      v19 = "N/A";
    }

    SNPrintF_Add(&v27, a2 + a3, "Speech %s", v19);
    v13 = 0;
  }

  if (a1[15])
  {
    if (v13)
    {
      SNPrintF_Add(&v27, a2 + a3, " ");
    }

    else
    {
      SNPrintF_Add(&v27, a2 + a3, ", ");
    }

    v20 = a1[15];
    if (v20 == -1)
    {
      v22 = "false";
    }

    else
    {
      v21 = "true";
      if (v20 != 1)
      {
        v21 = "?";
      }

      if (v20)
      {
        v22 = v21;
      }

      else
      {
        v22 = "N/A";
      }
    }

    SNPrintF_Add(&v27, a2 + a3, "Phone %s", v22);
    v13 = 0;
  }

  if (a1[16])
  {
    if (v13)
    {
      SNPrintF_Add(&v27, a2 + a3, " ");
    }

    else
    {
      SNPrintF_Add(&v27, a2 + a3, ", ");
    }

    v23 = a1[16];
    if (v23 == -1)
    {
      v25 = "false";
    }

    else
    {
      v24 = "true";
      if (v23 != 1)
      {
        v24 = "?";
      }

      if (v23)
      {
        v25 = v24;
      }

      else
      {
        v25 = "N/A";
      }
    }

    SNPrintF_Add(&v27, a2 + a3, "Turns %s", v25);
  }

  return a2;
}

uint64_t APStarkInitialOwnerRequestToString(int *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  SNPrintF_Add(&v21, a3 + a4, " ");
  if (a1)
  {
    v8 = *a1;
    v9 = "Car";
    if (*a1 == 2)
    {
      v10 = "iOS";
    }

    else
    {
      v10 = "?";
    }

    if (v8 != 1)
    {
      v9 = v10;
    }

    if (v8)
    {
      v11 = v9;
    }

    else
    {
      v11 = "N/A";
    }

    SNPrintF_Add(&v21, a3 + a4, "InitialOwner Screen : %s", v11);
    v12 = a1[1];
    if (v12)
    {
      switch(v12)
      {
        case 100:
          v13 = "Anytime";
          break;
        case 500:
          v13 = "User";
          break;
        case 1000:
          v13 = "Never";
          break;
        default:
          v13 = "?";
          break;
      }
    }

    else
    {
      v13 = "N/A";
    }

    SNPrintF_Add(&v21, a3 + a4, " / %s", v13);
    SNPrintF_Add(&v21, a3 + a4, " / %s");
  }

  else
  {
    SNPrintF_Add(&v21, a3 + a4, "InitialOwner Screen : NULL");
  }

  SNPrintF_Add(&v21, a3 + a4, ", ");
  if (a2)
  {
    v14 = *a2;
    v15 = "Car";
    if (*a2 == 2)
    {
      v16 = "iOS";
    }

    else
    {
      v16 = "?";
    }

    if (v14 != 1)
    {
      v15 = v16;
    }

    if (v14)
    {
      v17 = v15;
    }

    else
    {
      v17 = "N/A";
    }

    SNPrintF_Add(&v21, a3 + a4, "InitialOwner mainAudio : %s", v17);
    v18 = a2[1];
    if (v18)
    {
      switch(v18)
      {
        case 100:
          v19 = "Anytime";
          break;
        case 500:
          v19 = "User";
          break;
        case 1000:
          v19 = "Never";
          break;
        default:
          v19 = "?";
          break;
      }
    }

    else
    {
      v19 = "N/A";
    }

    SNPrintF_Add(&v21, a3 + a4, " / %s", v19);
    SNPrintF_Add(&v21, a3 + a4, " / %s");
  }

  else
  {
    SNPrintF_Add(&v21, a3 + a4, "InitialOwner mainAudio : NULL");
  }

  return a3;
}

uint64_t airPlayDescriptionMock_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  return FigSimpleMutexDestroy();
}

uint64_t airPlayDescriptionMock_HasFeature(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();

  return APSFeaturesHasFeature();
}

uint64_t APRealTimeAudioFileWriterGetTypeID(uint64_t a1, uint64_t a2)
{
  if (gAPRealTimeAudioFileWriterInitOnce != -1)
  {
    APRealTimeAudioFileWriterGetTypeID_cold_1();
  }

  return gAPRealTimeAudioFileWriterTypeID;
}

uint64_t _APRealTimeAudioFileWriterGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPRealTimeAudioFileWriterTypeID = result;
  return result;
}

uint64_t APRealTimeAudioFileWriterCreate(const void *a1, __int128 *a2, uint64_t a3, uint64_t *a4)
{
  v23 = 0;
  if (!a2)
  {
    APRealTimeAudioFileWriterCreate_cold_9(&v23);
    return v23;
  }

  if (!a4)
  {
    APRealTimeAudioFileWriterCreate_cold_8(&v23);
    return v23;
  }

  if (gAPRealTimeAudioFileWriterInitOnce != -1)
  {
    APRealTimeAudioFileWriterGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APRealTimeAudioFileWriterCreate_cold_7(&v23);
    return v23;
  }

  v9 = Instance;
  *(Instance + 16) = 0u;
  v10 = Instance + 16;
  *(Instance + 160) = 0;
  *(Instance + 128) = 0u;
  *(Instance + 144) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  v11 = *a2;
  v12 = a2[1];
  *(Instance + 72) = *(a2 + 4);
  *(Instance + 56) = v12;
  *(Instance + 40) = v11;
  if (a3)
  {
    v13 = *MEMORY[0x277CBED28];
    *(Instance + 80) = v13 == FigCFDictionaryGetBooleanValue();
  }

  if (a1)
  {
    *(v9 + 104) = CFRetain(a1);
  }

  else
  {
    v14 = CFStringCreateF(&v23, "AudioFileWriterDefaultName");
    v15 = v23;
    *(v9 + 104) = v14;
    if (v15)
    {
      APRealTimeAudioFileWriterCreate_cold_2(v15);
      goto LABEL_24;
    }
  }

  v16 = dispatch_queue_create("APRealTimeAudioFileWrite", 0);
  *(v9 + 32) = v16;
  if (!v16)
  {
    APRealTimeAudioFileWriterCreate_cold_6(&v23);
    goto LABEL_24;
  }

  v17 = APAudioSourceConduitCreate(*MEMORY[0x277CBECE8], (v10 + 24), v10, 30.0);
  v23 = v17;
  if (v17)
  {
    APRealTimeAudioFileWriterCreate_cold_3(v17);
    goto LABEL_24;
  }

  v18 = *v10;
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v19)
  {
    v20 = 4294954514;
    v23 = -12782;
    goto LABEL_23;
  }

  v20 = v19(v18);
  v23 = v20;
  if (v20)
  {
LABEL_23:
    APRealTimeAudioFileWriterCreate_cold_5(v20);
LABEL_24:
    CFRelease(v9);
    return v23;
  }

  *(v9 + 160) = FigSimpleMutexCreate();
  v21 = APSRealTimeSignalCreate();
  v23 = v21;
  if (v21)
  {
    APRealTimeAudioFileWriterCreate_cold_4(v21);
    goto LABEL_24;
  }

  *(v9 + 128) = APSSettingsGetIntWithDefault();
  if (gLogCategory_APRealTimeAudioFileWriter <= 50 && (gLogCategory_APRealTimeAudioFileWriter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APRealTimeAudioFileWriter, "OSStatus APRealTimeAudioFileWriterCreate(CFStringRef, const AudioStreamBasicDescription *, CFDictionaryRef, APRealTimeAudioFileWriterRef *)", 33554482, "[%{ptr}] Created with fileLabel: %@", v9, *(v9 + 104));
  }

  *a4 = v9;
  return v23;
}

double APRealTimeAudioFileWriterSignalWhenDone(uint64_t a1, NSObject *a2)
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if (atomic_load((a1 + 148)))
  {
    *(a1 + 152) = a2;
    dispatch_retain(a2);
  }

  else
  {
    dispatch_semaphore_signal(a2);
  }

  FigSimpleMutexUnlock();
  return result;
}

uint64_t apRealTimeAudioFileWriter_CloseFile(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = ExtAudioFileDispose(v2);
    *(a1 + 88) = 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 96) = 0;
  }

  return v3;
}

uint64_t _APRealTimeAudioFileWriterFinalize(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (gLogCategory_APRealTimeAudioFileWriter <= 30)
  {
    if (gLogCategory_APRealTimeAudioFileWriter != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = _APRealTimeAudioFileWriterFinalize_cold_1(v3, a2, a3);
    }
  }

  if (*(v3 + 144))
  {
    v4 = *(v3 + 24);
    if (v4)
    {
      CFRelease(v4);
      *(v3 + 24) = 0;
    }

    v5 = *(v3 + 32);
    if (v5)
    {
      dispatch_release(v5);
      *(v3 + 32) = 0;
    }

    v6 = *(v3 + 152);
    if (v6)
    {
      dispatch_release(v6);
      *(v3 + 152) = 0;
    }

    v7 = *(v3 + 16);
    if (v7)
    {
      CFRelease(v7);
      *(v3 + 16) = 0;
    }

    v8 = *(v3 + 96);
    if (v8)
    {
      CFRelease(v8);
      *(v3 + 96) = 0;
    }

    v9 = *(v3 + 104);
    if (v9)
    {
      CFRelease(v9);
      *(v3 + 104) = 0;
    }

    return FigSimpleMutexDestroy();
  }

  else
  {
    if (gLogCategory_APRealTimeAudioFileWriter <= 100)
    {
      if (gLogCategory_APRealTimeAudioFileWriter != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = _APRealTimeAudioFileWriterFinalize_cold_2(v3);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t APEndpointDescriptionAirPlayCreateWithBonjourInfo(uint64_t a1, CFDictionaryRef theDict, uint64_t a3, CFTypeRef *a4)
{
  v13 = 0;
  cf = 0;
  if (theDict)
  {
    if (a4)
    {
      if (CFDictionaryGetValue(theDict, @"txt"))
      {
        if (CFDictionaryGetValue(theDict, @"name"))
        {
          v8 = APEndpointDescriptionAirPlayCreateWithTransportDevice(a1, 0, a3, &v13);
          if (v8)
          {
            v11 = v8;
            APEndpointDescriptionAirPlayCreateWithBonjourInfo_cold_1(v8);
          }

          else
          {
            DerivedStorage = CMBaseObjectGetDerivedStorage();
            v10 = APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName();
            v11 = v10;
            if (v10)
            {
              APEndpointDescriptionAirPlayCreateWithBonjourInfo_cold_2(v10);
            }

            else
            {
              FigSimpleMutexLock();
              airPlayDescription_updateWithAdvertiserAndPSGInfosNotifyingClients(v13, cf, *(DerivedStorage + 80), 0);
              FigSimpleMutexUnlock();
              *a4 = v13;
              v13 = 0;
            }
          }
        }

        else
        {
          v11 = 4294895545;
          APEndpointDescriptionAirPlayCreateWithBonjourInfo_cold_3();
        }
      }

      else
      {
        v11 = 4294895545;
        APEndpointDescriptionAirPlayCreateWithBonjourInfo_cold_4();
      }
    }

    else
    {
      v11 = 4294895545;
      APEndpointDescriptionAirPlayCreateWithBonjourInfo_cold_5();
    }
  }

  else
  {
    v11 = 4294895545;
    APEndpointDescriptionAirPlayCreateWithBonjourInfo_cold_6();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v11;
}

__CFString *airPlayDescription_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v5 = 0;
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  airPlayDescription_copyName(a1, &v5);
  FigSimpleMutexUnlock();
  v3 = v5;
  CFStringAppendFormat(Mutable, 0, @"<APEndpointDescriptionAirPlay %p, name=%@>", a1, v5);
  if (v3)
  {
    CFRelease(v3);
  }

  return Mutable;
}

uint64_t airPlayDescription_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointDescriptionAirPlay <= 30 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointDescriptionAirPlay, "OSStatus airPlayDescription_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "[%p] %###s propertyKey: '%@', propertyValue: '%@'\n", a1, "OSStatus airPlayDescription_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", a2, a3);
  }

  if (a2)
  {
    FigSimpleMutexLock();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (CFEqual(a2, @"PairingPeerCUAirPlayIdentifier"))
    {
      v7 = *(DerivedStorage + 32);
      *(DerivedStorage + 32) = a3;
      if (!a3)
      {
LABEL_9:
        if (!v7)
        {
LABEL_12:
          FigSimpleMutexUnlock();
          return 0;
        }

        v8 = v7;
LABEL_11:
        CFRelease(v8);
        goto LABEL_12;
      }

LABEL_8:
      CFRetain(a3);
      goto LABEL_9;
    }

    if (CFEqual(a2, @"PairingPeerCUSystemIdentifier"))
    {
      v7 = *(DerivedStorage + 40);
      *(DerivedStorage + 40) = a3;
      if (!a3)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (CFEqual(a2, @"PairingPeerPublicKey"))
    {
      v7 = *(DerivedStorage + 48);
      *(DerivedStorage + 48) = a3;
      if (!a3)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (CFEqual(a2, @"PermanentSpeakerGroupingInfo"))
    {
      if (FigCFEqual())
      {
        goto LABEL_12;
      }

      ChangedNotificationPayload = airPlayDescription_createChangedNotificationPayload(@"ChangeSource_SetPSGInfo");
      airPlayDescription_updateWithAdvertiserAndPSGInfosNotifyingClients(a1, *(DerivedStorage + 16), a3, ChangedNotificationPayload);
    }

    else
    {
      if (!CFEqual(a2, @"uglServerInfo"))
      {
        if (CFEqual(a2, @"SupportsBufferedAudio"))
        {
          CMBaseObjectGetDerivedStorage();
          if (airPlayDescription_hasFeatureInternal(a1, 32))
          {
            *(DerivedStorage + 65) = CFBooleanGetValue(a3);
            goto LABEL_12;
          }
        }

        if (CFEqual(a2, @"SupportsJarvis"))
        {
          *(DerivedStorage + 64) = CFBooleanGetValue(a3);
          goto LABEL_12;
        }

        if (!CFEqual(a2, @"HeadUnitRestrictions"))
        {
          if (gLogCategory_APEndpointDescriptionAirPlay <= 30 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
          {
            airPlayDescription_SetProperty_cold_1(a2, v11, v12);
          }

          goto LABEL_12;
        }

        v7 = *(DerivedStorage + 72);
        *(DerivedStorage + 72) = a3;
        if (!a3)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      ChangedNotificationPayload = airPlayDescription_createChangedNotificationPayload(@"ChangeSource_SetUGLServerInfo");
      if (airPlayDescription_updateUGLServerInfo(a1, a3, @"-", ChangedNotificationPayload))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
      }
    }

    if (!ChangedNotificationPayload)
    {
      goto LABEL_12;
    }

    v8 = ChangedNotificationPayload;
    goto LABEL_11;
  }

  airPlayDescription_SetProperty_cold_2();
  return 4294895545;
}

uint64_t airPlayDescription_copyAudioLatencyForAV(const __CFAllocator *a1, CFNumberRef *a2)
{
  valuePtr = APSAudioLatencyForAVMs();
  v4 = CFNumberCreate(a1, kCFNumberSInt32Type, &valuePtr);
  *a2 = v4;
  if (v4)
  {
    return 0;
  }

  airPlayDescription_copyAudioLatencyForAV_cold_1();
  return 4294895546;
}

uint64_t airPlayDescription_copyAudioLatencyOffsetForAV(const __CFAllocator *a1, CFNumberRef *a2)
{
  valuePtr = APSAudioLatencyOffsetForAVMs();
  v4 = CFNumberCreate(a1, kCFNumberSInt32Type, &valuePtr);
  *a2 = v4;
  if (v4)
  {
    return 0;
  }

  airPlayDescription_copyAudioLatencyOffsetForAV_cold_1();
  return 4294895546;
}

CFTypeRef airPlayDescription_copyPairingPeerCUAirPlayIdentifier(uint64_t a1, void *a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 32);
  if (v3)
  {
    result = CFRetain(v3);
  }

  else
  {
    result = APAdvertiserInfoCopyProperty();
  }

  *a2 = result;
  return result;
}

uint64_t airPlayDescription_hasCarPlayVideoFeatureInternal(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  v2 = airPlayDescription_copyCarPlayVideoFeaturesInternal(a1, &cf);
  if (v2)
  {
    airPlayDescription_hasCarPlayVideoFeatureInternal_cold_1(v2);
    HasFeature = 0;
  }

  else
  {
    HasFeature = APSFeaturesHasFeature();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return HasFeature;
}

uint64_t airPlayDescription_hasFeaturesInternal(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  v6 = 0;
  if (airPlayDescription_copyFeaturesInternal(a1, &v6))
  {
    APSLogErrorAt();
    HasAllFeatures = 0;
    v3 = v6;
    if (!v6)
    {
      return HasAllFeatures;
    }

    goto LABEL_3;
  }

  v3 = v6;
  HasAllFeatures = APSFeaturesHasAllFeatures();
  if (v3)
  {
LABEL_3:
    CFRelease(v3);
  }

  return HasAllFeatures;
}

void airPlayDescription_copyCarPlayAudioFormats(uint64_t a1, const __CFAllocator *a2, CFMutableDictionaryRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  BOOLean = 0;
  Mutable = CFDictionaryCreateMutable(a2, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    airPlayDescription_copyCarPlayAudioFormats_cold_4();
    return;
  }

  v8 = Mutable;
  airPlayDescription_copyIsConnectedOverUSB(a1, &BOOLean);
  Value = CFBooleanGetValue(BOOLean);
  v10 = *(DerivedStorage + 56);
  if (Value)
  {
    v11 = APCarPlayAudioFormatsCopyFormatsForAudioType(v10, 100, @"media", &v14, 0, 0);
    if (v11)
    {
      airPlayDescription_copyCarPlayAudioFormats_cold_1(v11);
LABEL_14:
      CFRelease(v8);
      return;
    }
  }

  else
  {
    v12 = APCarPlayAudioFormatsCopyFormatsForAudioType(v10, 102, @"media", &v14, 0, 0);
    if (v12)
    {
      airPlayDescription_copyCarPlayAudioFormats_cold_2(v12);
      goto LABEL_14;
    }
  }

  CFDictionarySetInt64();
  if (*(CMBaseObjectGetDerivedStorage() + 65))
  {
    v13 = APCarPlayAudioFormatsCopyFormatsForAudioType(*(DerivedStorage + 56), 103, @"media", &v14, 0, 0);
    if (v13)
    {
      airPlayDescription_copyCarPlayAudioFormats_cold_3(v13);
      goto LABEL_14;
    }

    CFDictionarySetInt64();
  }

  *a3 = v8;
}

uint64_t airPlayDescription_copyAirPlayAudioFormats(uint64_t a1, const __CFAllocator *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    airPlayDescription_copyAirPlayAudioFormats_cold_1();
    return 4294895545;
  }

  v7 = *(DerivedStorage + 24);
  if (v7)
  {
    Value = CFDictionaryGetValue(v7, @"supportedFormats");
    if (Value)
    {
      v9 = CFRetain(Value);
      if (v9)
      {
        goto LABEL_15;
      }
    }
  }

  v14 = 0;
  CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v11 = airPlayDescription_copyFeaturesInternal(a1, &v14);
  if (v11)
  {
    APSLogErrorAt();
    v9 = 0;
    v12 = v14;
    if (v14)
    {
LABEL_11:
      CFRelease(v12);
    }
  }

  else
  {
    v12 = v14;
    APSFeaturesHasFeature();
    if (APSFeaturesHasFeature())
    {
      APSSettingsIsFeatureEnabled();
    }

    APSFeaturesHasFeature();
    APSFeaturesHasFeature();
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    if (APSFeaturesHasFeature())
    {
      APAudioFormatGetSupportedTransportAudioFormatsLowLatencySender();
      CFDictionarySetInt64();
    }

    v9 = Mutable;
    Mutable = 0;
    if (v12)
    {
      goto LABEL_11;
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v11)
  {
LABEL_15:
    v11 = 0;
    *a3 = v9;
    return v11;
  }

  APSLogErrorAt();
  if (v9)
  {
    CFRelease(v9);
  }

  return v11;
}

uint64_t airPlayDescription_copyAirPlayAudioFormatsExtended(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 24);
    if (v4 && (Value = CFDictionaryGetValue(v4, @"supportedAudioFormatsExtended")) != 0)
    {
      v6 = CFRetain(Value);
    }

    else
    {
      v6 = 0;
    }

    result = 0;
    *a2 = v6;
  }

  else
  {
    airPlayDescription_copyAirPlayAudioFormatsExtended_cold_1();
    return 4294895545;
  }

  return result;
}

CFTypeRef airPlayDescription_copySupportsRFC2617DigestAuth(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (CFObjectGetPropertyInt64Sync())
  {
    v4 = MEMORY[0x277CBED28];
  }

  else
  {
    isSourceVersionAtLeast = airPlayDescription_isSourceVersionAtLeast(a1, 0x125048u);
    v4 = MEMORY[0x277CBED28];
    if (!isSourceVersionAtLeast)
    {
      v4 = MEMORY[0x277CBED10];
    }
  }

  result = CFRetain(*v4);
  *a2 = result;
  return result;
}

uint64_t airPlayDescription_copyDisplayDescriptionArray(uint64_t a1, const __CFAllocator *a2, __CFArray **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  value = 0;
  v7 = airPlayDescription_copyFeaturesInternal(a1, &cf);
  v23 = v7;
  if (v7)
  {
    airPlayDescription_copyDisplayDescriptionArray_cold_1(v7);
LABEL_20:
    Mutable = 0;
    goto LABEL_21;
  }

  v8 = cf;
  if (!APSFeaturesHasFeature())
  {
    Mutable = 0;
    v23 = -71754;
    goto LABEL_21;
  }

  Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    airPlayDescription_copyDisplayDescriptionArray_cold_6();
    goto LABEL_21;
  }

  v10 = *(DerivedStorage + 24);
  if (!v10)
  {
    DefaultWithEndpointFeatures = APEndpointDisplayDescriptionCreateDefaultWithEndpointFeatures(a2, v8, &value);
    v23 = DefaultWithEndpointFeatures;
    if (DefaultWithEndpointFeatures)
    {
      airPlayDescription_copyDisplayDescriptionArray_cold_4(DefaultWithEndpointFeatures);
      goto LABEL_21;
    }

    CFArrayAppendValue(Mutable, value);
    goto LABEL_16;
  }

  v11 = CFDictionaryGetValue(v10, @"displays");
  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = v11;
  v13 = CFGetTypeID(v11);
  if (v13 != CFArrayGetTypeID())
  {
    airPlayDescription_copyDisplayDescriptionArray_cold_2(&v23);
    goto LABEL_21;
  }

  Count = CFArrayGetCount(v12);
  if (Count < 1)
  {
LABEL_16:
    if (gLogCategory_APEndpointDescriptionAirPlay <= 50 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
    {
      airPlayDescription_copyDisplayDescriptionArray_cold_5(Mutable);
    }

    *a3 = Mutable;
    goto LABEL_20;
  }

  v15 = Count;
  v16 = 0;
  while (1)
  {
    CFDictionaryGetTypeID();
    TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
    v18 = APEndpointDisplayDescriptionCreateWithDisplayInfo(a2, TypedValueAtIndex, &value);
    v23 = v18;
    if (v18)
    {
      break;
    }

    CFArrayAppendValue(Mutable, value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    if (v15 == ++v16)
    {
      goto LABEL_16;
    }
  }

  airPlayDescription_copyDisplayDescriptionArray_cold_3(v18);
LABEL_21:
  if (value)
  {
    CFRelease(value);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v23;
}

CFTypeRef airplayDescription_copySupportsAWDL(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  isThirdPartyDevice = airPlayDescription_isThirdPartyDevice(a1);
  v5 = airPlayDescription_supportsCUPairingAndEncryption(a1);
  hasFeatureInternal = airPlayDescription_hasFeatureInternal(a1, 27);
  if (!isThirdPartyDevice && v5 | hasFeatureInternal)
  {
    v7 = MEMORY[0x277CBED28];
  }

  else
  {
    v7 = MEMORY[0x277CBED10];
  }

  result = CFRetain(*v7);
  *a2 = result;
  return result;
}

CFTypeRef airplayDescription_copySupportsNAN(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (APSIsOpenNANSenderEnabled() && airPlayDescription_hasFeatureInternal(a1, 78))
  {
    v4 = MEMORY[0x277CBED28];
  }

  else
  {
    v4 = MEMORY[0x277CBED10];
  }

  result = CFRetain(*v4);
  *a2 = result;
  return result;
}

CFTypeRef airplayDescription_copySupportsSharedReceiverClock(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  hasFeatureInternal = airPlayDescription_hasFeatureInternal(a1, 94);
  v5 = MEMORY[0x277CBED28];
  if (!hasFeatureInternal)
  {
    v5 = MEMORY[0x277CBED10];
  }

  result = CFRetain(*v5);
  *a2 = result;
  return result;
}

CFTypeRef airPlayDescription_copySupportsUnifiedMediaControl(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (airPlayDescription_copySupportsUnifiedMediaControl_checkPrefOnce != -1)
  {
    airPlayDescription_copySupportsUnifiedMediaControl_cold_1();
  }

  if (airPlayDescription_copySupportsUnifiedMediaControl_forceUnifiedMediaControlOverride == 1)
  {
    if (gLogCategory_APEndpointDescriptionAirPlay <= 60 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
    {
      airPlayDescription_copySupportsUnifiedMediaControl_cold_2();
    }
  }

  else
  {
    if (!airPlayDescription_copySupportsUnifiedMediaControl_forceUnifiedMediaControlOverride)
    {
      if (gLogCategory_APEndpointDescriptionAirPlay <= 60 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
      {
        airPlayDescription_copySupportsUnifiedMediaControl_cold_3();
      }

      goto LABEL_17;
    }

    if (!airPlayDescription_isSourceVersionAtLeast(a1, 0x287184u) || !airPlayDescription_hasFeatureInternal(a1, 38) && !airPlayDescription_hasFeatureInternal(a1, 43))
    {
LABEL_17:
      v4 = MEMORY[0x277CBED10];
      goto LABEL_18;
    }
  }

  v4 = MEMORY[0x277CBED28];
LABEL_18:
  result = CFRetain(*v4);
  *a2 = result;
  return result;
}

uint64_t airPlayDescription_copyEndpointInfoValueCFDictionary(uint64_t a1, const void *a2, void *a3)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  airPlayDescription_copyEndpointInfoValue(a1, a2, &cf);
  v6 = cf;
  if (cf && (v7 = CFGetTypeID(cf), v7 != CFDictionaryGetTypeID()))
  {
    airPlayDescription_copyEndpointInfoValueCFDictionary_cold_1(v6);
    return 4294895541;
  }

  else
  {
    result = 0;
    *a3 = v6;
  }

  return result;
}

uint64_t airPlayDescription_copyOEMIcons(uint64_t a1, const __CFAllocator *a2, void *a3)
{
  values = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  v6 = airPlayDescription_copyEndpointInfoValueCFArray(a1, @"oemIcons", &cf);
  v7 = cf;
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = cf == 0;
  }

  if (!v8)
  {
    v9 = 0;
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  CMBaseObjectGetDerivedStorage();
  v18 = 0;
  airPlayDescription_copyEndpointInfoValue(a1, @"oemIcon", &v18);
  v9 = v18;
  if (v18)
  {
    v10 = CFGetTypeID(v18);
    if (v10 == CFDataGetTypeID())
    {
      Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      values = Mutable;
      if (Mutable)
      {
        v12 = Mutable;
        CFDictionarySetValue(Mutable, @"imageData", v9);
        CFDictionarySetInt64();
        CFDictionarySetInt64();
        CFDictionarySetValue(v12, @"prerendered", *MEMORY[0x277CBED10]);
        v7 = CFArrayCreate(a2, &values, 1, MEMORY[0x277CBF128]);
        cf = v7;
        if (v7)
        {
          if (!a3)
          {
LABEL_15:
            CFRelease(v7);
LABEL_16:
            v13 = 0;
            v14 = 0;
            if (!v9)
            {
              goto LABEL_19;
            }

            goto LABEL_17;
          }

LABEL_13:
          *a3 = v7;
          cf = 0;
          goto LABEL_16;
        }

        v13 = 4294895546;
        airPlayDescription_copyOEMIcons_cold_2();
      }

      else
      {
        v13 = 4294895546;
        airPlayDescription_copyOEMIcons_cold_3();
      }

LABEL_17:
      CFRelease(v9);
      v14 = v13;
      goto LABEL_19;
    }

    airPlayDescription_copyOEMIcons_cold_1(v9);
    v14 = 4294895541;
  }

  else
  {
    v14 = 0;
  }

LABEL_19:
  if (values)
  {
    CFRelease(values);
  }

  return v14;
}

uint64_t airPlayDescription_extendedFeaturesHasKey(uint64_t a1, const void *a2)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 24))
  {
    return 0;
  }

  CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    return 0;
  }

  v4 = TypedValue;
  v5.length = CFArrayGetCount(TypedValue);
  v5.location = 0;

  return CFArrayContainsValue(v4, v5, a2);
}

uint64_t airplayDescription_copyReceiverModifiesMainHighLatency(uint64_t a1, void *a2)
{
  if (a2)
  {
    airplayDescription_copyReceiverModifiesMainHighLatency_cold_1(&v3, a1, a2, &v4);
    return v4;
  }

  else
  {
    airplayDescription_copyReceiverModifiesMainHighLatency_cold_2();
    return 4294960591;
  }
}

uint64_t airPlayDescription_checkIfUnifiedMediaControlIsForced(_DWORD *a1)
{
  result = FigGetCFPreferenceNumberWithDefault();
  *a1 = result;
  return result;
}

__CFDictionary *airPlayDescription_createChangedNotificationPayload(const void *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"ChangeSource", a1);
  return Mutable;
}

uint64_t airPlayDescription_updateUGLServerInfo(uint64_t a1, const void *a2, uint64_t a3, __CFDictionary *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(DerivedStorage + 88);
  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    v11 = CFRetain(Value);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(DerivedStorage + 88);
  *(DerivedStorage + 88) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(DerivedStorage + 88);
  v14 = FigCFDictionaryGetValue();
  if (!FigCFEqual() && gLogCategory_APEndpointDescriptionAirPlay <= 50 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointDescriptionAirPlay, "Boolean airPlayDescription_updateUGLServerInfo(APEndpointDescriptionRef, CFTypeRef, CFStringRef, CFMutableDictionaryRef)", 33554482, "[%{ptr}] <APUGLPort> Device %@ has UGL-RCServer Info, port: %@ -> %@", a1, a3, v11, v14);
  }

  if (!v9 && v13)
  {
    if (gLogCategory_APEndpointDescriptionAirPlay > 50 || gLogCategory_APEndpointDescriptionAirPlay == -1 && !_LogCategory_Initialize())
    {
      if (!a4)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    airPlayDescription_updateUGLServerInfo_cold_1(a1, v15, v16);
    if (a4)
    {
LABEL_19:
      CFDictionarySetValue(a4, @"UGLServerInfoAdded", *MEMORY[0x277CBED28]);
    }
  }

LABEL_20:
  if (v11)
  {
    CFRelease(v11);
  }

  return (v9 != 0) ^ (v13 != 0);
}

uint64_t airPlayDescription_SetEndpointInfo(uint64_t a1, const void *a2)
{
  v57[27] = *MEMORY[0x277D85DE8];
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointDescriptionAirPlay <= 30 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointDescriptionAirPlay, "OSStatus airPlayDescription_SetEndpointInfo(APEndpointDescriptionRef, CFDictionaryRef)", 33554462, "[%p] inEndpointInfo %@ %###s \n", a1, a2, "OSStatus airPlayDescription_SetEndpointInfo(APEndpointDescriptionRef, CFDictionaryRef)");
  }

  if (!a2 || (v4 = CFGetTypeID(a2), v4 != CFDictionaryGetTypeID()))
  {
    airPlayDescription_SetEndpointInfo_cold_10();
    return 4294895545;
  }

  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ArrayValue = FigCFDictionaryGetArrayValue();
  v7 = FigCFDictionaryGetArrayValue();
  v8 = MEMORY[0x277CBECE8];
  if (ArrayValue && !v7)
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    FigCFDictionarySetValue();
    v10 = *(DerivedStorage + 24);
    *(DerivedStorage + 24) = MutableCopy;
    if (MutableCopy)
    {
      CFRetain(MutableCopy);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    v11 = MutableCopy;
    goto LABEL_16;
  }

  v12 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = a2;
  CFRetain(a2);
  if (v12)
  {
    v11 = v12;
LABEL_16:
    CFRelease(v11);
  }

  if (gLogCategory_APEndpointDescriptionAirPlay <= 30 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointDescriptionAirPlay, "void airPlayDescription_setEndpointInfoInternal(APEndpointDescriptionRef, CFDictionaryRef)", 33554462, "[%{ptr}] new endpoint info: %@", a1, *(DerivedStorage + 24));
  }

  if (!airPlayDescription_hasFeatureInternal(a1, 32))
  {
    v15 = 0;
    v16 = *(DerivedStorage + 56);
    *(DerivedStorage + 56) = 0;
    goto LABEL_37;
  }

  if (APSSettingsGetInt64())
  {
    v13 = *(DerivedStorage + 72);
    if (!v13)
    {
      airPlayDescription_SetEndpointInfo_cold_1();
      Mutable = 0;
      goto LABEL_82;
    }

    v14 = CFDictionaryContainsKey(v13, @"kAPCarPlay_Disable24kHzTelephony");
  }

  else
  {
    v14 = 0;
  }

  v17 = *v8;
  if (*(DerivedStorage + 8))
  {
    v18 = APTransportDeviceIsConnectedOverUSB() == 0;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(CMBaseObjectGetDerivedStorage() + 64);
  v20 = CMBaseObjectGetDerivedStorage();
  v15 = APCarPlayAudioFormatsCreate(v17, a2, v18, v19, *(v20 + 65), v14);
  if (gLogCategory_APEndpointDescriptionAirPlay <= 30 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointDescriptionAirPlay, "void airPlayDescription_setEndpointInfoInternal(APEndpointDescriptionRef, CFDictionaryRef)", 33554462, "[%p] %###s: CarPlay Audio Formats: %@\n", a1, "void airPlayDescription_setEndpointInfoInternal(APEndpointDescriptionRef, CFDictionaryRef)", v15);
  }

  v16 = *(DerivedStorage + 56);
  *(DerivedStorage + 56) = v15;
  if (!v15)
  {
LABEL_37:
    v21 = 1;
    if (!v16)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  CFRetain(v15);
  v21 = 0;
  if (v16)
  {
LABEL_38:
    CFRelease(v16);
  }

LABEL_39:
  if ((v21 & 1) == 0)
  {
    CFRelease(v15);
  }

  Mutable = CFDictionaryCreateMutable(*v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"ChangeSource", @"ChangeSource_SetEndpointInfo");
  Value = CFDictionaryGetValue(a2, @"name");
  if (*(DerivedStorage + 121))
  {
    v24 = CFDictionaryGetValue(a2, @"uglServerInfo");
    airPlayDescription_updateUGLServerInfo(a1, v24, Value, Mutable);
  }

  if (!CFDictionaryGetValue(a2, @"txtAirPlay"))
  {
    v54 = 0;
    v26 = CMBaseObjectGetDerivedStorage();
    v27 = *MEMORY[0x277CE4B78];
    v56 = @"deviceID";
    v57[0] = v27;
    v28 = *MEMORY[0x277CE4B68];
    v57[1] = @"company";
    v57[2] = v28;
    v29 = *MEMORY[0x277CE4B70];
    v57[3] = @"deviceEnclosureColor";
    v57[4] = v29;
    v30 = *MEMORY[0x277CE4B80];
    v57[5] = @"manufacturer";
    v57[6] = v30;
    v31 = *MEMORY[0x277CE4B88];
    v57[7] = @"model";
    v57[8] = v31;
    v32 = *MEMORY[0x277CE4B90];
    v57[9] = @"name";
    v57[10] = v32;
    v33 = *MEMORY[0x277CE4BE0];
    v57[11] = @"nameIsFactoryDefault";
    v57[12] = v33;
    v34 = *MEMORY[0x277CE4C30];
    v57[13] = @"protocolVersion";
    v57[14] = v34;
    v35 = *MEMORY[0x277CE4C38];
    v57[15] = @"pi";
    v57[16] = v35;
    v36 = *MEMORY[0x277CE4C40];
    v57[17] = @"psi";
    v57[18] = v36;
    v37 = *MEMORY[0x277CE4C48];
    v57[19] = @"pk";
    v57[20] = v37;
    v38 = *MEMORY[0x277CE4B50];
    v57[21] = @"sourceVersion";
    v57[22] = v38;
    v39 = *MEMORY[0x277CE4C60];
    v57[23] = @"statusFlags";
    v57[24] = v39;
    v40 = *MEMORY[0x277CE4C78];
    v57[25] = @"vv";
    v57[26] = v40;
    if (!*(v26 + 16))
    {
      airPlayDescription_SetEndpointInfo_cold_9();
      goto LABEL_82;
    }

    v53 = (CFObjectGetPropertyInt64Sync() >> 22) & 1;
    v41 = v57;
    v42 = 14;
    do
    {
      v43 = *(v41 - 1);
      if (CFDictionaryContainsKey(a2, v43))
      {
        v44 = CFDictionaryGetValue(a2, v43);
        if (CFEqual(v43, @"pk"))
        {
          if (!v44 || (v45 = CFGetTypeID(v44), v45 != CFDataGetTypeID()) || CFDataGetLength(v44) != 32)
          {
            APSLogErrorAt();
            goto LABEL_82;
          }

          v58.location = 0;
          v58.length = 32;
          CFDataGetBytes(v44, v58, buffer);
          DataToHexCStringEx();
          v46 = CFObjectSetPropertyCString();
        }

        else
        {
          v46 = APAdvertiserInfoSetProperty();
        }

        v54 = v46;
        if (v46)
        {
          airPlayDescription_SetEndpointInfo_cold_4(v46);
          goto LABEL_82;
        }
      }

      v41 += 2;
      --v42;
    }

    while (v42);
    CFDictionaryGetValue(a2, @"featuresEx");
    CFDictionaryGetInt64();
    v47 = APSFeaturesCreateFromEndpointInfoFeatureRepresentations();
    if (!v54)
    {
      CMBaseObjectGetDerivedStorage();
      if (airPlayDescription_hasFeatureInternal(a1, 32))
      {
        v48 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
        if (*(v26 + 104))
        {
          v49 = APSFeaturesCreateMutableCopy();
          if (v49)
          {
            APSFeaturesSetAllFeatures();
            if (gLogCategory_APEndpointDescriptionAirPlay <= 30 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APEndpointDescriptionAirPlay, "OSStatus airPlayDescription_updateAdvertiserInfoWithEndpointInfo(APEndpointDescriptionRef, CFDictionaryRef, CFMutableDictionaryRef)", 33554462, "[%{ptr}] Combined GetInfo response Feature Flags with initial set:\n\t Initial set:\t%@\n\t GetInfo set:\t%@\n\t Combined set:\t%@\n", a1, *(v26 + 104), v47, v49);
            }

            CFRetain(v49);
            if (v47)
            {
              CFRelease(v47);
            }

            v47 = v49;
            goto LABEL_71;
          }

          airPlayDescription_SetEndpointInfo_cold_7(&v54);
LABEL_78:
          if (v47)
          {
            CFRelease(v47);
          }

          if (v49)
          {
            CFRelease(v49);
          }

          goto LABEL_82;
        }

        v49 = 0;
      }

      else
      {
        v49 = 0;
        v48 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
      }

LABEL_71:
      APAdvertiserInfoSetProperty();
      if (Mutable)
      {
        v50 = (CFObjectGetPropertyInt64Sync() >> 22) & 1;
        if (v53 != v50)
        {
          v51 = v48[56];
          if (v51 <= 50 && (v51 != -1 || _LogCategory_Initialize()))
          {
            airPlayDescription_SetEndpointInfo_cold_8(v53, v50, a1);
          }

          CFDictionarySetValue(Mutable, @"UGLSessionActiveDidChange", *MEMORY[0x277CBED28]);
        }

        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
      }

      goto LABEL_78;
    }

    airPlayDescription_SetEndpointInfo_cold_5(v54);
    v49 = 0;
    goto LABEL_78;
  }

  if (Value)
  {
    v25 = APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName();
    if (v25)
    {
      airPlayDescription_SetEndpointInfo_cold_2(v25);
    }

    else
    {
      airPlayDescription_updateWithAdvertiserAndPSGInfosNotifyingClients(a1, 0, *(DerivedStorage + 80), Mutable);
    }
  }

  else
  {
    airPlayDescription_SetEndpointInfo_cold_3();
  }

LABEL_82:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t airPlayDescription_DescribesSameTransportDevice(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = CFEqual(*(DerivedStorage + 8), a2);
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t APGetEndpointManager(void *a1)
{
  if (APGetEndpointManager_sCreateOnce != -1)
  {
    APGetEndpointManager_cold_1();
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a1)
  {
LABEL_3:
    *a1 = qword_280FB1B28;
  }

LABEL_4:
  if (gLogCategory_APEndpointManagerFactory <= 50 && (gLogCategory_APEndpointManagerFactory != -1 || _LogCategory_Initialize()))
  {
    APGetEndpointManager_cold_2();
  }

  return _MergedGlobals_15;
}

void __APGetEndpointManager_block_invoke()
{
  v0 = MEMORY[0x223DAEBE0]();
  if (!v0 || (v3 = getprogname(), v0 = strcmp(v3, "audiomxd"), v0))
  {
    if (gLogCategory_APEndpointManagerFactory <= 50)
    {
      if (gLogCategory_APEndpointManagerFactory != -1 || (v0 = _LogCategory_Initialize(), v0))
      {
        __APGetEndpointManager_block_invoke_cold_3(v0, v1, v2);
      }
    }

    v10 = 0;
    cf = 0;
    v4 = APEndpointManagerCreate(&cf);
    if (!v4)
    {
      if (APSSettingsIsFeatureEnabled())
      {
        v5 = APEndpointManagerPlusCreate(1, cf, &v10);
        if (v5)
        {
          v6 = v5;
          __APGetEndpointManager_block_invoke_cold_5(v5);
          goto LABEL_13;
        }
      }

      else
      {
        v10 = CFRetain(cf);
      }

      if (!APSIsExplicitEndpointManagerInitializationEnabledInMX())
      {
        v7 = CMSessionMgrRegisterEndpointManager();
        if (v7)
        {
          if (gLogCategory_APEndpointManagerFactory <= 90)
          {
            v8 = v7;
            if (gLogCategory_APEndpointManagerFactory != -1 || _LogCategory_Initialize())
            {
              __APGetEndpointManager_block_invoke_cold_6(v8);
            }
          }
        }
      }

      v6 = 0;
      qword_280FB1B28 = v10;
      v10 = 0;
      goto LABEL_13;
    }

    v6 = v4;
    __APGetEndpointManager_block_invoke_cold_4(v4);
LABEL_13:
    if (gLogCategory_APEndpointManagerFactory <= 50 && (gLogCategory_APEndpointManagerFactory != -1 || _LogCategory_Initialize()))
    {
      __APGetEndpointManager_block_invoke_cold_7(v6);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (v6)
    {
      __APGetEndpointManager_block_invoke_cold_8(v6);
    }

    goto LABEL_32;
  }

  if (gLogCategory_APEndpointManagerFactory <= 50)
  {
    if (gLogCategory_APEndpointManagerFactory != -1 || (v0 = _LogCategory_Initialize(), v0))
    {
      __APGetEndpointManager_block_invoke_cold_1(v0, v1, v2);
    }
  }

  v9 = FigEndpointManagerRemoteCopyAirPlayManager();
  LODWORD(v6) = v9;
  if (v9)
  {
    __APGetEndpointManager_block_invoke_cold_2(v9);
  }

LABEL_32:
  _MergedGlobals_15 = v6;
}

uint64_t SPHubbedDevicesProviderGetClassID(uint64_t a1, uint64_t a2)
{
  if (qword_280FB1B38 != -1)
  {
    SPHubbedDevicesProviderGetClassID_cold_1();
  }

  return qword_280FB1B40;
}

uint64_t hubbedDevicesProvider_registerClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&hubbedDevicesProvider_registerClass_sClassDesc, ClassID, 1, a1);
}

uint64_t SPHubbedDevicesProviderGetTypeID(uint64_t a1, uint64_t a2)
{
  if (qword_280FB1B38 != -1)
  {
    SPHubbedDevicesProviderGetClassID_cold_1();
  }

  v3 = qword_280FB1B40;

  return MEMORY[0x282111A98](v3);
}

uint64_t SPHubbedDevicesProviderAddListener(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    SPHubbedDevicesProviderAddListener_cold_3();
LABEL_15:
    v4 = 90;
    v3 = 4294960591;
    goto LABEL_7;
  }

  if (!a2)
  {
    SPHubbedDevicesProviderAddListener_cold_2();
    goto LABEL_15;
  }

  if (!a3)
  {
    SPHubbedDevicesProviderAddListener_cold_1();
    goto LABEL_15;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v3 = CMNotificationCenterAddListener();
  if (v3)
  {
    v4 = 90;
  }

  else
  {
    v4 = 50;
  }

LABEL_7:
  if (v4 >= gLogCategory_SPHubbedDevicesProvider && (gLogCategory_SPHubbedDevicesProvider != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPHubbedDevicesProvider, "OSStatus SPHubbedDevicesProviderAddListener(SPHubbedDevicesProviderRef, const void *, CMNotificationCallback)", v4 | 0x2000000u, "add listener: err %#m", v3);
  }

  return v3;
}

uint64_t SPHubbedDevicesProviderRemoveListener(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    SPHubbedDevicesProviderRemoveListener_cold_2();
LABEL_13:
    v3 = 90;
    v2 = 4294960591;
    goto LABEL_6;
  }

  if (!a2)
  {
    SPHubbedDevicesProviderRemoveListener_cold_1();
    goto LABEL_13;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v2 = CMNotificationCenterRemoveListener();
  if (v2)
  {
    v3 = 90;
  }

  else
  {
    v3 = 50;
  }

LABEL_6:
  if (v3 >= gLogCategory_SPHubbedDevicesProvider && (gLogCategory_SPHubbedDevicesProvider != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPHubbedDevicesProvider, "OSStatus SPHubbedDevicesProviderRemoveListener(SPHubbedDevicesProviderRef, const void *)", v3 | 0x2000000u, "remove listener: err %#m", v2);
  }

  return v2;
}

uint64_t SPHubbedDevicesProviderStartAsync(const void *a1)
{
  if (a1)
  {
    CFRetain(a1);
    global_queue = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __SPHubbedDevicesProviderStartAsync_block_invoke;
    block[3] = &__block_descriptor_tmp_33;
    block[4] = a1;
    dispatch_async(global_queue, block);
    v3 = 0;
    v4 = 50;
  }

  else
  {
    SPHubbedDevicesProviderStartAsync_cold_1();
    v3 = 4294960591;
    v4 = 90;
  }

  if (v4 >= gLogCategory_SPHubbedDevicesProvider && (gLogCategory_SPHubbedDevicesProvider != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPHubbedDevicesProvider, "OSStatus SPHubbedDevicesProviderStartAsync(SPHubbedDevicesProviderRef)", v4 | 0x2000000u, "start async: err %#m", v3);
  }

  return v3;
}

void __SPHubbedDevicesProviderStartAsync_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v3)
  {
    v4 = v3(v2);
  }

  else
  {
    v4 = 4294954514;
  }

  if (gLogCategory_SPHubbedDevicesProvider <= 50 && (gLogCategory_SPHubbedDevicesProvider != -1 || _LogCategory_Initialize()))
  {
    __SPHubbedDevicesProviderStartAsync_block_invoke_cold_1(v4);
  }

  v5 = *(a1 + 32);

  CFRelease(v5);
}

uint64_t SPHubbedDevicesProviderStartService(void *a1)
{
  if (a1)
  {
    *a1 = 0;
  }

  if (!MEMORY[0x223DAEBE0]() || FigServer_IsAirplayd())
  {
    SPHubbedDevicesProviderStartService_cold_2();
    v3 = 90;
    result = 4294960561;
    goto LABEL_13;
  }

  if (SPHubbedDevicesProviderStartService_onceToken != -1)
  {
    SPHubbedDevicesProviderStartService_cold_1();
  }

  result = _MergedGlobals_16;
  if (a1 && !_MergedGlobals_16)
  {
    *a1 = qword_280FB1B48;
LABEL_12:
    v3 = 50;
    goto LABEL_13;
  }

  if (!_MergedGlobals_16)
  {
    goto LABEL_12;
  }

  v3 = 90;
LABEL_13:
  if (v3 >= gLogCategory_SPHubbedDevicesProvider)
  {
    if (gLogCategory_SPHubbedDevicesProvider != -1 || (v5 = _LogCategory_Initialize(), result = _MergedGlobals_16, v5))
    {
      if (result)
      {
        v4 = 33554522;
      }

      else
      {
        v4 = 33554482;
      }

      LogPrintF(&gLogCategory_SPHubbedDevicesProvider, "OSStatus SPHubbedDevicesProviderStartService(SPHubbedDevicesProviderRef *)", v4, "remote start: err %#m", result);
      return _MergedGlobals_16;
    }
  }

  return result;
}

void __SPHubbedDevicesProviderStartService_block_invoke()
{
  v4 = 0;
  v0 = SPGetEndpointManager(&v4);
  _MergedGlobals_16 = v0;
  if (v0)
  {
    if (v0 == -72390)
    {
      _MergedGlobals_16 = -6735;
    }

    else
    {
      APSLogErrorAt();
    }
  }

  else if (v4)
  {
    __SPHubbedDevicesProviderStartService_block_invoke_cold_1(&v4);
  }

  else
  {
    __SPHubbedDevicesProviderStartService_block_invoke_cold_2();
  }

  v1 = qword_280FB1B48;
  if (_MergedGlobals_16)
  {
    v2 = qword_280FB1B48 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v3)
    {
      v3(v1);
    }

    if (qword_280FB1B48)
    {
      CFRelease(qword_280FB1B48);
      qword_280FB1B48 = 0;
    }
  }
}

void hubbedDevicesProviderRemote_updateRemoteManager(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (!a1)
  {
    hubbedDevicesProviderRemote_updateRemoteManager_cold_4();
LABEL_24:
    v6 = 90;
    v7 = 4294960591;
    goto LABEL_15;
  }

  if (!a2)
  {
    hubbedDevicesProviderRemote_updateRemoteManager_cold_3();
    goto LABEL_24;
  }

  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    v7 = 4294954514;
LABEL_13:
    APSLogErrorAt();
LABEL_14:
    v6 = 90;
    goto LABEL_15;
  }

  v4 = v3(a2, @"HubbedDevices", *MEMORY[0x277CBECE8], &cf);
  if (v4)
  {
    v7 = v4;
    goto LABEL_13;
  }

  if (!cf)
  {
    CMBaseObject = FigEndpointManagerGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v9)
    {
      v7 = v9(CMBaseObject, @"SPEndpointManagerProperty_HubbedDeviceIDs", 0);
      if (!v7)
      {
        v6 = 50;
        goto LABEL_15;
      }
    }

    else
    {
      v7 = 4294954514;
    }

    goto LABEL_13;
  }

  v5 = FigCFSetCopyValuesAsCFArray();
  if (v5)
  {
    v7 = v5;
    hubbedDevicesProviderRemote_updateRemoteManager_cold_1(v5);
    goto LABEL_14;
  }

  hubbedDevicesProviderRemote_updateRemoteManager_cold_2();
  v6 = 90;
  v7 = 4294960568;
LABEL_15:
  if (v6 >= gLogCategory_SPHubbedDevicesProvider && (gLogCategory_SPHubbedDevicesProvider != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPHubbedDevicesProvider, "OSStatus hubbedDevicesProviderRemote_updateRemoteManager(FigEndpointManagerRef, SPHubbedDevicesProviderRef)", v6 | 0x2000000u, "update remote manager: err %#m", v7);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t APCarPlay_AddSignPostTimeInfoToTimeStore(const void *a1, uint64_t a2)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__5;
  v18 = __Block_byref_object_dispose__5;
  v19 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APCarPlayCarServicesInterface, "OSStatus APCarPlay_AddSignPostTimeInfoToTimeStore(CFStringRef, CFDictionaryRef)", 33554462, "Calling CARConnectionTimeStoreSoft->init() and eventWithName...\n");
  }

  if (IsAppleInternalBuild())
  {
    v4 = mach_absolute_time();
  }

  else
  {
    v4 = 0;
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3052000000;
  v28 = __Block_byref_object_copy__5;
  v5 = getCARConnectionTimeStoreClass_softClass;
  v29 = __Block_byref_object_dispose__5;
  v30 = getCARConnectionTimeStoreClass_softClass;
  if (!getCARConnectionTimeStoreClass_softClass)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __getCARConnectionTimeStoreClass_block_invoke;
    v23 = &unk_27849ACC8;
    v24 = &v25;
    __getCARConnectionTimeStoreClass_block_invoke(&v20);
    v5 = v26[5];
  }

  _Block_object_dispose(&v25, 8);
  v6 = objc_alloc_init(v5);
  v15[5] = v6;
  if (v6)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3052000000;
    v28 = __Block_byref_object_copy__5;
    v7 = getCARConnectionEventClass_softClass;
    v29 = __Block_byref_object_dispose__5;
    v30 = getCARConnectionEventClass_softClass;
    if (!getCARConnectionEventClass_softClass)
    {
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __getCARConnectionEventClass_block_invoke;
      v23 = &unk_27849ACC8;
      v24 = &v25;
      __getCARConnectionEventClass_block_invoke(&v20);
      v7 = v26[5];
    }

    _Block_object_dispose(&v25, 8);
    v8 = [v7 eventWithName:a1 type:3 date:objc_msgSend(MEMORY[0x277CBEAA8] payload:{"date"), a2}];
    if (a1)
    {
      CFRetain(a1);
    }

    v9 = v15[5];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __APCarPlay_AddSignPostTimeInfoToTimeStore_block_invoke;
    v12[3] = &unk_27849F960;
    v12[6] = a1;
    v12[7] = v4;
    v12[4] = v13;
    v12[5] = &v14;
    [v9 sendConnectionEvent:v8 completion:v12];
    if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APCarPlayCarServicesInterface, "OSStatus APCarPlay_AddSignPostTimeInfoToTimeStore(CFStringRef, CFDictionaryRef)", 33554462, "Returned from sendConnectionEvent\n");
    }

    v10 = 0;
  }

  else
  {
    APSLogErrorAt();
    v10 = 4294960568;
  }

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v14, 8);
  return v10;
}

void sub_22213ACE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose((v17 - 128), 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void *APCarPlay_CRFetchInstrumentClusterURLs(CFTypeRef *a1)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v2 = dispatch_semaphore_create(0);
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APCarPlayCarServicesInterface, "OSStatus APCarPlay_CRFetchInstrumentClusterURLs(CFArrayRef *)", 33554462, "Calling CRFetchInstrumentClusterURLs...\n");
  }

  if (IsAppleInternalBuild())
  {
    v3 = mach_absolute_time();
  }

  else
  {
    v3 = 0;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __APCarPlay_CRFetchInstrumentClusterURLs_block_invoke;
  v12[3] = &unk_27849F988;
  v12[5] = &v18;
  v12[6] = v13;
  v12[7] = &v14;
  v12[8] = v3;
  v12[4] = v2;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v4 = getCRFetchInstrumentClusterURLsSymbolLoc_ptr;
  v30 = getCRFetchInstrumentClusterURLsSymbolLoc_ptr;
  if (!getCRFetchInstrumentClusterURLsSymbolLoc_ptr)
  {
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __getCRFetchInstrumentClusterURLsSymbolLoc_block_invoke;
    v25 = &unk_27849ACC8;
    v26 = &v27;
    v5 = CarKitLibrary();
    v6 = dlsym(v5, "CRFetchInstrumentClusterURLs");
    *(v26[1] + 24) = v6;
    getCRFetchInstrumentClusterURLsSymbolLoc_ptr = *(v26[1] + 24);
    v4 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (v4)
  {
    v4(v12);
    if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APCarPlayCarServicesInterface, "OSStatus APCarPlay_CRFetchInstrumentClusterURLs(CFArrayRef *)", 33554462, "Returned from CRFetchInstrumentClusterURLs\n");
    }

    v7 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v2, v7))
    {
      if (gLogCategory_APCarPlayCarServicesInterface <= 90 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APCarPlayCarServicesInterface, "OSStatus APCarPlay_CRFetchInstrumentClusterURLs(CFArrayRef *)", 33554522, "Fetch Urls timeout\n");
      }

      *(v19 + 6) = -1;
    }

    v8 = v15[3];
    if (v8)
    {
      if (a1)
      {
        *a1 = CFRetain(v8);
        v8 = v15[3];
      }

      CFRelease(v8);
    }

    dispatch_release(v2);
    v9 = *(v19 + 6);
    _Block_object_dispose(v13, 8);
    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v18, 8);
    return v9;
  }

  else
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    result = [v11 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void soft_CRFetchInstrumentClusterURLs(void (^)(NSArray<NSURL *> * description:{NSError *))"), @"APCarPlayCarServicesInterface.m", 69, @"%s", dlerror()}];
    __break(1u);
  }

  return result;
}

void sub_22213B228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose((v27 - 96), 8);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *APCarPlay_CRFetchScaledDisplaysForCertificateSerialNumber(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v6 = dispatch_semaphore_create(0);
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = 0;
  if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APCarPlayCarServicesInterface, "OSStatus APCarPlay_CRFetchScaledDisplaysForCertificateSerialNumber(CFDataRef, CFArrayRef, CFArrayRef *)", 33554462, "Calling CRFetchScaledDisplaysForCertificateSerialNumber...\n");
  }

  if (IsAppleInternalBuild())
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __APCarPlay_CRFetchScaledDisplaysForCertificateSerialNumber_block_invoke;
  v16[3] = &unk_27849F988;
  v16[5] = &v22;
  v16[6] = v17;
  v16[7] = &v18;
  v16[8] = v7;
  v16[4] = v6;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v8 = getCRFetchScaledDisplaysForCertificateSerialNumberSymbolLoc_ptr;
  v34 = getCRFetchScaledDisplaysForCertificateSerialNumberSymbolLoc_ptr;
  if (!getCRFetchScaledDisplaysForCertificateSerialNumberSymbolLoc_ptr)
  {
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __getCRFetchScaledDisplaysForCertificateSerialNumberSymbolLoc_block_invoke;
    v29 = &unk_27849ACC8;
    v30 = &v31;
    v9 = CarKitLibrary();
    v10 = dlsym(v9, "CRFetchScaledDisplaysForCertificateSerialNumber");
    *(v30[1] + 24) = v10;
    getCRFetchScaledDisplaysForCertificateSerialNumberSymbolLoc_ptr = *(v30[1] + 24);
    v8 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (v8)
  {
    v8(a1, a2, v16);
    if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APCarPlayCarServicesInterface, "OSStatus APCarPlay_CRFetchScaledDisplaysForCertificateSerialNumber(CFDataRef, CFArrayRef, CFArrayRef *)", 33554462, "Returned from CRFetchScaledDisplaysForCertificateSerialNumber\n");
    }

    v11 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v6, v11))
    {
      if (gLogCategory_APCarPlayCarServicesInterface <= 90 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APCarPlayCarServicesInterface, "OSStatus APCarPlay_CRFetchScaledDisplaysForCertificateSerialNumber(CFDataRef, CFArrayRef, CFArrayRef *)", 33554522, "Fetch scaledDisplays timeout\n");
      }

      *(v23 + 6) = -1;
    }

    v12 = v19[3];
    if (v12)
    {
      if (a3)
      {
        *a3 = CFRetain(v12);
        v12 = v19[3];
      }

      CFRelease(v12);
    }

    dispatch_release(v6);
    v13 = *(v23 + 6);
    _Block_object_dispose(v17, 8);
    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v22, 8);
    return v13;
  }

  else
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    result = [v15 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void soft_CRFetchScaledDisplaysForCertificateSerialNumber(NSData * description:{NSArray<NSDictionary *> *, void (^)(NSArray<NSDictionary *> *, NSError *))"), @"APCarPlayCarServicesInterface.m", 74, @"%s", dlerror()}];
    __break(1u);
  }

  return result;
}

void sub_22213B75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose((v27 - 112), 8);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t APCarPlay_FetchUIContextMasterURLList(CFTypeRef *a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v2 = dispatch_semaphore_create(0);
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v3 = objc_alloc_init(getCRSAppHistoryControllerClass());
  if (v3)
  {
    if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APCarPlayCarServicesInterface, "OSStatus APCarPlay_FetchUIContextMasterURLList(CFArrayRef *)", 33554462, "Calling fetchUIContextsWithCompletion...\n");
    }

    if (IsAppleInternalBuild())
    {
      v4 = mach_absolute_time();
    }

    else
    {
      v4 = 0;
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __APCarPlay_FetchUIContextMasterURLList_block_invoke;
    v9[3] = &unk_27849F988;
    v9[5] = &v15;
    v9[6] = v10;
    v9[7] = &v11;
    v9[8] = v4;
    v9[4] = v2;
    [v3 fetchUIContextsWithCompletion:v9];
    if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APCarPlayCarServicesInterface, "OSStatus APCarPlay_FetchUIContextMasterURLList(CFArrayRef *)", 33554462, "Returned from fetchUIContextsWithCompletion\n");
    }

    v5 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v2, v5))
    {
      if (gLogCategory_APCarPlayCarServicesInterface <= 90 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APCarPlayCarServicesInterface, "OSStatus APCarPlay_FetchUIContextMasterURLList(CFArrayRef *)", 33554522, "Fetch uiContextMasterUrls timeout\n");
      }

      *(v16 + 6) = -1;
    }

    v6 = v12[3];
    if (v6)
    {
      if (a1)
      {
        *a1 = CFRetain(v6);
        v6 = v12[3];
      }

      CFRelease(v6);
    }

    if (objc_opt_respondsToSelector())
    {
      [v3 invalidate];
    }
  }

  else
  {
    APSLogErrorAt();
    *(v16 + 6) = -6728;
  }

  dispatch_release(v2);
  v7 = *(v16 + 6);
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v7;
}

void sub_22213BBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t APCarPlay_FetchSessionFeatureKeysWithIdentifier(uint64_t a1, CFTypeRef *a2)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v4 = dispatch_semaphore_create(0);
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:a1];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = __Block_byref_object_copy__5;
  v6 = getCRFeatureAvailabilityClass_softClass;
  v28 = __Block_byref_object_dispose__5;
  v29 = getCRFeatureAvailabilityClass_softClass;
  if (!getCRFeatureAvailabilityClass_softClass)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __getCRFeatureAvailabilityClass_block_invoke;
    v23[3] = &unk_27849ACC8;
    v23[4] = &v24;
    __getCRFeatureAvailabilityClass_block_invoke(v23);
    v6 = v25[5];
  }

  _Block_object_dispose(&v24, 8);
  v7 = objc_alloc_init(v6);
  if (v7)
  {
    if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APCarPlayCarServicesInterface, "OSStatus APCarPlay_FetchSessionFeatureKeysWithIdentifier(CFStringRef, CFArrayRef *)", 33554462, "Calling fetchSupportedAirPlayFeaturesForVehicleIdentifier...\n");
    }

    if (IsAppleInternalBuild())
    {
      v8 = mach_absolute_time();
    }

    else
    {
      v8 = 0;
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __APCarPlay_FetchSessionFeatureKeysWithIdentifier_block_invoke;
    v13[3] = &unk_27849F9B0;
    v13[8] = a1;
    v13[9] = v8;
    v13[6] = v14;
    v13[7] = &v15;
    v13[4] = v4;
    v13[5] = &v19;
    [v7 fetchSupportedAirPlayFeaturesForVehicleIdentifier:v5 completion:v13];
    if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APCarPlayCarServicesInterface, "OSStatus APCarPlay_FetchSessionFeatureKeysWithIdentifier(CFStringRef, CFArrayRef *)", 33554462, "Returned from fetchSupportedAirPlayFeaturesForVehicleIdentifier\n");
    }

    v9 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v4, v9))
    {
      if (gLogCategory_APCarPlayCarServicesInterface <= 90 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APCarPlayCarServicesInterface, "OSStatus APCarPlay_FetchSessionFeatureKeysWithIdentifier(CFStringRef, CFArrayRef *)", 33554522, "Fetch FeatureKey List for a vehicle timeout\n");
      }

      *(v20 + 6) = -1;
    }

    v10 = v16[3];
    if (v10)
    {
      if (a2)
      {
        *a2 = CFRetain(v10);
        v10 = v16[3];
      }

      CFRelease(v10);
    }
  }

  else
  {
    APSLogErrorAt();
    *(v20 + 6) = -6728;
  }

  dispatch_release(v4);
  v11 = *(v20 + 6);
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  return v11;
}

void sub_22213C0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose((v27 - 128), 8);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t APCarPlayHasDeviceUnlockedSinceBoot()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  v6 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  if (!getMKBDeviceUnlockedSinceBootSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke;
    v2[3] = &unk_27849ACC8;
    v2[4] = &v3;
    __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    APCarPlayHasDeviceUnlockedSinceBoot_cold_1();
  }

  return v0();
}

void sub_22213C338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL APCarPlayHasSpringboardStarted()
{
  out_token = -1;
  notify_register_check(kAPCarPlaySpringBoardStartNotificationKey, &out_token);
  if (out_token == -1)
  {
    return 0;
  }

  v2 = 0;
  notify_get_state(out_token, &v2);
  v0 = v2 != 0;
  notify_cancel(out_token);
  return v0;
}

void *APCarPlayGetHeadUnitRestrictionsDictionary(void *a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_time(0, 3000000000);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  *a1 = 0;
  dispatch_retain(v2);
  if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APCarPlayCarServicesInterface, "OSStatus APCarPlayGetHeadUnitRestrictionsDictionary(CFDictionaryRef *)", 33554462, "Calling CRFetchCarPlayCapabilities...\n");
  }

  if (IsAppleInternalBuild())
  {
    v4 = mach_absolute_time();
  }

  else
  {
    v4 = 0;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __APCarPlayGetHeadUnitRestrictionsDictionary_block_invoke;
  v11[3] = &unk_27849F9D8;
  v11[6] = v12;
  v11[7] = v4;
  v11[8] = a1;
  v11[4] = v2;
  v11[5] = &v13;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v5 = getCRFetchCarPlayCapabilitiesSymbolLoc_ptr;
  v25 = getCRFetchCarPlayCapabilitiesSymbolLoc_ptr;
  if (!getCRFetchCarPlayCapabilitiesSymbolLoc_ptr)
  {
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __getCRFetchCarPlayCapabilitiesSymbolLoc_block_invoke;
    v20 = &unk_27849ACC8;
    v21 = &v22;
    v6 = CarKitLibrary();
    v7 = dlsym(v6, "CRFetchCarPlayCapabilities");
    *(v21[1] + 24) = v7;
    getCRFetchCarPlayCapabilitiesSymbolLoc_ptr = *(v21[1] + 24);
    v5 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (v5)
  {
    v5(v11);
    if (gLogCategory_APCarPlayCarServicesInterface <= 30 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APCarPlayCarServicesInterface, "OSStatus APCarPlayGetHeadUnitRestrictionsDictionary(CFDictionaryRef *)", 33554462, "Returned from CRFetchCarPlayCapabilities\n");
    }

    if (dispatch_semaphore_wait(v2, v3))
    {
      if (gLogCategory_APCarPlayCarServicesInterface <= 60 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APCarPlayCarServicesInterface, "OSStatus APCarPlayGetHeadUnitRestrictionsDictionary(CFDictionaryRef *)", 33554492, "Timeout occured while fetching HeadUnit Restrictions Dictionary");
      }

      *(v14 + 6) = -6722;
    }

    dispatch_release(v2);
    v8 = *(v14 + 6);
    _Block_object_dispose(v12, 8);
    _Block_object_dispose(&v13, 8);
    return v8;
  }

  else
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    result = [v10 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void soft_CRFetchCarPlayCapabilities(void (^)(NSDictionary * description:{NSError *))"), @"APCarPlayCarServicesInterface.m", 79, @"%s", dlerror()}];
    __break(1u);
  }

  return result;
}

void sub_22213C708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose((v19 - 96), 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __APCarPlayGetHeadUnitRestrictionsDictionary_block_invoke(uint64_t a1, CFTypeRef cf, void *a3)
{
  if (a3)
  {
    if (gLogCategory_APCarPlayCarServicesInterface <= 90 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      __APCarPlayGetHeadUnitRestrictionsDictionary_block_invoke_cold_1(a3);
    }

    *(*(*(a1 + 40) + 8) + 24) = -71148;
  }

  else if (IsAppleInternalBuild())
  {
    *(*(*(a1 + 48) + 8) + 24) = mach_absolute_time();
    if (gLogCategory_APCarPlayCarServicesInterface <= 50 && (gLogCategory_APCarPlayCarServicesInterface != -1 || _LogCategory_Initialize()))
    {
      __APCarPlayGetHeadUnitRestrictionsDictionary_block_invoke_cold_2();
    }
  }

  if (cf)
  {
    v6 = CFRetain(cf);
  }

  else
  {
    v6 = 0;
  }

  **(a1 + 64) = v6;
  dispatch_semaphore_signal(*(a1 + 32));
  v7 = *(a1 + 32);

  dispatch_release(v7);
}

Class __getCARConnectionTimeStoreClass_block_invoke(uint64_t a1)
{
  CarKitLibrary();
  result = objc_getClass("CARConnectionTimeStore");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCARConnectionTimeStoreClass_block_invoke_cold_1();
  }

  getCARConnectionTimeStoreClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t CarKitLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!CarKitLibraryCore_frameworkLibrary_0)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __CarKitLibraryCore_block_invoke_0;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_27849FA20;
    v4 = 0;
    CarKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = CarKitLibraryCore_frameworkLibrary_0;
  if (!CarKitLibraryCore_frameworkLibrary_0)
  {
    CarKitLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __CarKitLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  CarKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getCARConnectionEventClass_block_invoke(uint64_t a1)
{
  CarKitLibrary();
  result = objc_getClass("CARConnectionEvent");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCARConnectionEventClass_block_invoke_cold_1();
  }

  getCARConnectionEventClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void *__getCRFetchInstrumentClusterURLsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CarKitLibrary();
  result = dlsym(v2, "CRFetchInstrumentClusterURLs");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRFetchInstrumentClusterURLsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCRFetchScaledDisplaysForCertificateSerialNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CarKitLibrary();
  result = dlsym(v2, "CRFetchScaledDisplaysForCertificateSerialNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRFetchScaledDisplaysForCertificateSerialNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCRSAppHistoryControllerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CarPlayServicesLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CarPlayServicesLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27849FA38;
    v5 = 0;
    CarPlayServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!CarPlayServicesLibraryCore_frameworkLibrary_0)
  {
    __getCRSAppHistoryControllerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CRSAppHistoryController");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCRSAppHistoryControllerClass_block_invoke_cold_1();
  }

  getCRSAppHistoryControllerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __CarPlayServicesLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  CarPlayServicesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getCRFeatureAvailabilityClass_block_invoke(uint64_t a1)
{
  CarKitLibrary();
  result = objc_getClass("CRFeatureAvailability");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCRFeatureAvailabilityClass_block_invoke_cold_1();
  }

  getCRFeatureAvailabilityClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void *__getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MobileKeyBagLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27849FA50;
    v6 = 0;
    MobileKeyBagLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = MobileKeyBagLibraryCore_frameworkLibrary;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "MKBDeviceUnlockedSinceBoot");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBDeviceUnlockedSinceBootSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileKeyBagLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MobileKeyBagLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getCRFetchCarPlayCapabilitiesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CarKitLibrary();
  result = dlsym(v2, "CRFetchCarPlayCapabilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRFetchCarPlayCapabilitiesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t APCarPlayInitiateJarvisProcessing(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    v11 = 4294954514;
LABEL_13:
    APSLogErrorAt();
    a3(a1, 0);
    return v11;
  }

  v8 = v7(CMBaseObject, *MEMORY[0x277CC1368], *MEMORY[0x277CBECE8], &cf);
  if (v8)
  {
    v11 = v8;
    goto LABEL_13;
  }

  if (gLogCategory_APCarPlaySiriInterface <= 50 && (gLogCategory_APCarPlaySiriInterface != -1 || _LogCategory_Initialize()))
  {
    APCarPlayInitiateJarvisProcessing_cold_1();
  }

  v9 = cf;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __APCarPlayInitiateJarvisProcessing_block_invoke;
  v13[3] = &__block_descriptor_56_e20_v20__0B8__NSError_12l;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v10 = getAFSiriActivationCarPlayDeviceVoiceSymbolLoc_ptr;
  v19 = getAFSiriActivationCarPlayDeviceVoiceSymbolLoc_ptr;
  if (!getAFSiriActivationCarPlayDeviceVoiceSymbolLoc_ptr)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __getAFSiriActivationCarPlayDeviceVoiceSymbolLoc_block_invoke;
    v15[3] = &unk_27849ACC8;
    v15[4] = &v16;
    __getAFSiriActivationCarPlayDeviceVoiceSymbolLoc_block_invoke(v15);
    v10 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v10)
  {
    APCarPlayInitiateJarvisProcessing_cold_2();
  }

  (v10)(a2, v9, 0, v13);
  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t __APCarPlayInitiateJarvisProcessing_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (gLogCategory_APCarPlaySiriInterface <= 50 && (gLogCategory_APCarPlaySiriInterface != -1 || _LogCategory_Initialize()))
  {
    __APCarPlayInitiateJarvisProcessing_block_invoke_cold_1(a2, a3);
  }

  kdebug_trace();
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);

  return v7(v6, a2);
}

uint64_t APCarPlayIsSiriSwitchOn()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__6;
  v0 = getVTPreferencesClass_softClass;
  v7 = __Block_byref_object_dispose__6;
  v8 = getVTPreferencesClass_softClass;
  if (!getVTPreferencesClass_softClass)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getVTPreferencesClass_block_invoke;
    v2[3] = &unk_27849ACC8;
    v2[4] = &v3;
    __getVTPreferencesClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return [objc_msgSend(v0 "sharedPreferences")];
}

void sub_22213D2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t APCarPlayGetJarvisLanguageFromList(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v6 = dispatch_semaphore_create(0);
  dispatch_retain(v6);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__6;
  v7 = getCSCoreSpeechServicesClass_softClass;
  v25 = __Block_byref_object_dispose__6;
  v26 = getCSCoreSpeechServicesClass_softClass;
  if (!getCSCoreSpeechServicesClass_softClass)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __getCSCoreSpeechServicesClass_block_invoke;
    v20[3] = &unk_27849ACC8;
    v20[4] = &v21;
    __getCSCoreSpeechServicesClass_block_invoke(v20);
    v7 = v22[5];
  }

  _Block_object_dispose(&v21, 8);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __APCarPlayGetJarvisLanguageFromList_block_invoke;
  v11[3] = &unk_27849FA90;
  v11[5] = &v16;
  v11[6] = &v12;
  v11[4] = v6;
  [v7 voiceTriggerJarvisLanguageList:a1 jarvisSelectedLanguage:a2 completion:v11];
  v8 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v6, v8);
  if (v6)
  {
    dispatch_release(v6);
  }

  *a3 = v13[3];
  v9 = *(v17 + 6);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  return v9;
}

void sub_22213D4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose((v15 - 128), 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __APCarPlayGetJarvisLanguageFromList_block_invoke(uint64_t a1, const void *a2, void *a3)
{
  if ([a3 code])
  {
    if (gLogCategory_APCarPlaySiriInterface <= 90 && (gLogCategory_APCarPlaySiriInterface != -1 || _LogCategory_Initialize()))
    {
      __APCarPlayGetJarvisLanguageFromList_block_invoke_cold_1(a3);
    }

    *(*(*(a1 + 40) + 8) + 24) = [a3 code];
  }

  else if (a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = CFRetain(a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v6 = *(a1 + 32);
  if (v6)
  {

    dispatch_release(v6);
  }
}

void *__getAFSiriActivationCarPlayDeviceVoiceSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AssistantServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27849FAB0;
    v6 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = AssistantServicesLibraryCore_frameworkLibrary;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    __getAFSiriActivationCarPlayDeviceVoiceSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "AFSiriActivationCarPlayDeviceVoice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFSiriActivationCarPlayDeviceVoiceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getVTPreferencesClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!VoiceTriggerLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __VoiceTriggerLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27849FAC8;
    v5 = 0;
    VoiceTriggerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!VoiceTriggerLibraryCore_frameworkLibrary)
  {
    __getVTPreferencesClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("VTPreferences");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVTPreferencesClass_block_invoke_cold_1();
  }

  getVTPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __VoiceTriggerLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  VoiceTriggerLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCSCoreSpeechServicesClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CoreSpeechLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CoreSpeechLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27849FAE0;
    v5 = 0;
    CoreSpeechLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreSpeechLibraryCore_frameworkLibrary)
  {
    __getCSCoreSpeechServicesClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CSCoreSpeechServices");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCSCoreSpeechServicesClass_block_invoke_cold_1();
  }

  getCSCoreSpeechServicesClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __CoreSpeechLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreSpeechLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t metadataSender_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APMetadataSenderCreate(uint64_t a1, const void *a2, int a3, NSObject *a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (!a3)
  {
    APMetadataSenderCreate_cold_5();
    return 4294960591;
  }

  if (!a4)
  {
    APMetadataSenderCreate_cold_4();
    return 4294960591;
  }

  if (!a5)
  {
    APMetadataSenderCreate_cold_3();
    return 4294960591;
  }

  if (_MergedGlobals_17 != -1)
  {
    APMetadataSenderCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v17 = Instance;
    *(Instance + 96) = 0u;
    *(Instance + 112) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 24) = a4;
    dispatch_retain(a4);
    *(v17 + 20) = a3;
    *(v17 + 32) = CFRetain(a5);
    *(v17 + 48) = CFRetain(a2);
    *(v17 + 56) = a6;
    *(v17 + 64) = a7;
    *(v17 + 72) = a8;
    v18 = *MEMORY[0x277CBECE8];
    v19 = MEMORY[0x277CBF138];
    v20 = MEMORY[0x277CBF150];
    *(v17 + 80) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(v17 + 96) = CFDictionaryCreateMutable(v18, 0, v19, v20);
    *(v17 + 112) = CFDictionaryCreateMutable(v18, 0, v19, v20);
    *(v17 + 40) = APMetadataSourceAddEventCallback(*(v17 + 32), v17, metadataSender_handleMetadataEvent);
    if (gLogCategory_APMetadataSender <= 50 && (gLogCategory_APMetadataSender != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APMetadataSender, "OSStatus APMetadataSenderCreate(CFAllocatorRef, APSenderSessionRef, APMetadataFeatures, dispatch_queue_t, APMetadataSourceRef, void *, APMetadataSenderIsTimelineEstablishedCallback, APMetadataSenderGetCurrentRTPTimeCallback, APMetadataSenderRef *)", 33554482, "[%{ptr}] APMetadataSender with features=0x%llx created\n", v17, *(v17 + 20));
    }

    result = 0;
    *a9 = v17;
  }

  else
  {
    APMetadataSenderCreate_cold_2();
    return 4294960568;
  }

  return result;
}

void APMetadataSenderSendInitialMetadata(void *a1)
{
  CFRetain(a1);
  v2 = a1[3];

  dispatch_async_f(v2, a1, metadataSender_sendInitialMetadataInternal);
}

void metadataSender_sendMRNowPlayingInfo(uint64_t a1, const __CFDictionary *a2, const void *a3, int a4)
{
  cf[0] = 0;
  if (!a2 || *(a1 + 16))
  {
    goto LABEL_35;
  }

  if (!a3)
  {
    metadataSender_sendMRNowPlayingInfo_cold_7();
LABEL_35:
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    return;
  }

  if ((*(a1 + 20) & 0x20) == 0)
  {
    if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || _LogCategory_Initialize()))
    {
      metadataSender_sendMRNowPlayingInfo_cold_6(a1, a2, a3);
    }

    goto LABEL_35;
  }

  if (!a4 && !(*(a1 + 64))(*(a1 + 56)))
  {
    if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || _LogCategory_Initialize()))
    {
      metadataSender_sendMRNowPlayingInfo_cold_5(a1, v7, v8);
    }

    goto LABEL_35;
  }

  APSenderSessionGetCMBaseObject();
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v12 = *MEMORY[0x277CBECE8];
    v11(v10, @"TransportControlStream", *MEMORY[0x277CBECE8], cf);
    if (cf[0])
    {
      getkMRMediaRemoteNowPlayingInfoMediaType();
      CFStringGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      if (TypedValue == getkMRMediaRemoteNowPlayingInfoTypeVideo() || TypedValue && getkMRMediaRemoteNowPlayingInfoTypeVideo() && (v14 = getkMRMediaRemoteNowPlayingInfoTypeVideo(), CFEqual(TypedValue, v14)))
      {
        if (gLogCategory_APMetadataSender <= 50 && (gLogCategory_APMetadataSender != -1 || _LogCategory_Initialize()))
        {
          metadataSender_sendMRNowPlayingInfo_cold_1(a1);
        }

        MutableCopy = CFDictionaryCreateMutableCopy(v12, 0, a2);
        v16 = getkMRMediaRemoteNowPlayingInfoMediaType();
        v25 = 0;
        v26 = &v25;
        v27 = 0x2020000000;
        v17 = getkMRMediaRemoteNowPlayingInfoTypeAudioSymbolLoc_ptr;
        v28 = getkMRMediaRemoteNowPlayingInfoTypeAudioSymbolLoc_ptr;
        if (!getkMRMediaRemoteNowPlayingInfoTypeAudioSymbolLoc_ptr)
        {
          cf[1] = MEMORY[0x277D85DD0];
          cf[2] = 3221225472;
          cf[3] = __getkMRMediaRemoteNowPlayingInfoTypeAudioSymbolLoc_block_invoke;
          cf[4] = &unk_27849ACC8;
          v24 = &v25;
          v18 = MediaRemoteLibrary_0();
          v19 = dlsym(v18, "kMRMediaRemoteNowPlayingInfoTypeAudio");
          *(v24[1] + 24) = v19;
          getkMRMediaRemoteNowPlayingInfoTypeAudioSymbolLoc_ptr = *(v24[1] + 24);
          v17 = v26[3];
        }

        _Block_object_dispose(&v25, 8);
        if (!v17)
        {
          metadataSender_sendMRNowPlayingInfo_cold_4();
        }

        CFDictionarySetValue(MutableCopy, v16, *v17);
      }

      else
      {
        MutableCopy = CFRetain(a2);
      }

      Mutable = CFDictionaryCreateMutable(v12, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v21 = Mutable;
      if (Mutable)
      {
        CFDictionarySetValue(Mutable, @"type", @"npi-text");
        CFDictionarySetValue(v21, @"params", MutableCopy);
        CFDictionarySetValue(v21, @"mergePolicy", a3);
        v22 = metadataSender_sendMRMetadata(cf[0], @"updateMRNowPlayingInfo", v21);
        if (v22)
        {
          metadataSender_sendMRNowPlayingInfo_cold_2(v22);
        }

        else if (gLogCategory_APMetadataSender <= 30 && (gLogCategory_APMetadataSender != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APMetadataSender, "void metadataSender_sendMRNowPlayingInfo(APMetadataSenderRef, CFDictionaryRef, CFStringRef, Boolean)", 33554462, "[%{ptr}] Send [%@] with payload: %.64@\n", a1, @"updateMRNowPlayingInfo", a2);
        }
      }

      else
      {
        metadataSender_sendMRNowPlayingInfo_cold_3();
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      if (v21)
      {
        CFRelease(v21);
      }

      goto LABEL_35;
    }
  }
}

void sub_22213E188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void metadataSender_appendDictionaryKeyAndValue(void *key, const void *a2, uint64_t a3)
{
  CFDictionaryGetValue(*(a3 + 8), key);
  if (!FigCFEqual())
  {
    *a3 = 1;
    v6 = *(a3 + 8);

    CFDictionarySetValue(v6, key, a2);
  }
}

uint64_t getkMRMediaRemoteNowPlayingInfoTypeVideo()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoTypeVideoSymbolLoc_ptr;
  v6 = getkMRMediaRemoteNowPlayingInfoTypeVideoSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoTypeVideoSymbolLoc_ptr)
  {
    v1 = MediaRemoteLibrary_0();
    v4[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoTypeVideo");
    getkMRMediaRemoteNowPlayingInfoTypeVideoSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkMRMediaRemoteNowPlayingInfoTypeVideo_cold_1();
  }

  return *v0;
}

void sub_22213E2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t metadataSender_sendMRMetadata(uint64_t a1, const void *a2, const void *a3)
{
  if (!a2)
  {
    metadataSender_sendMRMetadata_cold_4();
    return 4294960591;
  }

  if (!a3)
  {
    metadataSender_sendMRMetadata_cold_3();
    return 4294960591;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    CFDictionarySetValue(Mutable, @"type", a2);
    CFDictionarySetValue(v6, @"params", a3);
    v7 = APTransportStreamSendPlistMessage();
    v8 = v7;
    if (v7)
    {
      metadataSender_sendMRMetadata_cold_1(v7);
    }

    CFRelease(v6);
  }

  else
  {
    metadataSender_sendMRMetadata_cold_2();
    return 4294960568;
  }

  return v8;
}

void *__getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = MediaRemoteLibrary_0();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoMediaType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MediaRemoteLibrary_0()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!MediaRemoteLibraryCore_frameworkLibrary_1)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __MediaRemoteLibraryCore_block_invoke_1;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_27849FC10;
    v4 = 0;
    MediaRemoteLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = MediaRemoteLibraryCore_frameworkLibrary_1;
  if (!MediaRemoteLibraryCore_frameworkLibrary_1)
  {
    MediaRemoteLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __MediaRemoteLibraryCore_block_invoke_1(uint64_t a1)
{
  result = _sl_dlopen();
  MediaRemoteLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoTypeVideoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary_0();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoTypeVideo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoTypeVideoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMRMediaRemoteNowPlayingInfoTypeAudioSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary_0();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoTypeAudio");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoTypeAudioSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __metadataSender_handleMRNowPlayingInfoChanged_block_invoke(uint64_t a1)
{
  metadataSender_sendMRNowPlayingInfo(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 40));
  v2 = *(a1 + 48);

  CFRelease(v2);
}

uint64_t SPHubbedDevicesProviderDefaultsCreate(uint64_t a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  cf = 0;
  if (!a3)
  {
    SPHubbedDevicesProviderDefaultsCreate_cold_5();
    return 4294960591;
  }

  SPHubbedDevicesProviderGetClassID(a1, a2);
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v13 = v5;
    SPHubbedDevicesProviderDefaultsCreate_cold_1(v5);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (gLogCategory_SPHubbedDevicesProviderDefaults <= 30 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SPHubbedDevicesProviderDefaults, "OSStatus SPHubbedDevicesProviderDefaultsCreate(CFAllocatorRef, CFDictionaryRef, SPHubbedDevicesProviderRef *)", 33554462, "[%{ptr}]=%p SPHubbedDevicesProviderDefaults create, options = %@", cf, cf, a2);
    }

    if (!a2 || (Value = CFDictionaryGetValue(a2, @"HubbedDevicesKeyName")) == 0 || (v8 = Value, v9 = CFGetTypeID(Value), v9 != CFStringGetTypeID()))
    {
      v8 = @"sidePlayHubbedDevices";
    }

    *(DerivedStorage + 40) = 0;
    *(DerivedStorage + 8) = CFRetain(v8);
    v10 = FigSimpleMutexCreate();
    *DerivedStorage = v10;
    if (v10)
    {
      SNPrintF(label, 64, "SPHubbedDevicesProviderDefaults.%{ptr}.notification", cf);
      v11 = dispatch_queue_create(label, 0);
      *(DerivedStorage + 16) = v11;
      if (v11)
      {
        *(DerivedStorage + 24) = -1;
        *(DerivedStorage + 32) = 0;
        if (gLogCategory_SPHubbedDevicesProviderDefaults <= 50 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
        {
          SPHubbedDevicesProviderDefaultsCreate_cold_2(&cf, DerivedStorage + 8, v12);
        }

        v13 = 0;
        *a3 = cf;
        return v13;
      }

      SPHubbedDevicesProviderDefaultsCreate_cold_3();
    }

    else
    {
      SPHubbedDevicesProviderDefaultsCreate_cold_4();
    }

    v13 = 4294960568;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t hdpd_Invalidate(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPHubbedDevicesProviderDefaults <= 50 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
  {
    hdpd_Invalidate_cold_1(a1, v2, v3);
  }

  dispatch_sync_f(*(DerivedStorage + 16), a1, hdpd_invalidateInternal);
  return 0;
}

void hdpd_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPHubbedDevicesProviderDefaults <= 50 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
  {
    hdpd_Finalize_cold_1(a1, v2, v3);
  }

  if (*(DerivedStorage + 40))
  {
    v5 = *(DerivedStorage + 32);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 32) = 0;
    }

    v6 = *(DerivedStorage + 16);
    if (v6)
    {
      dispatch_release(v6);
      *(DerivedStorage + 16) = 0;
    }

    FigSimpleMutexDestroy();
    v7 = *(DerivedStorage + 8);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 8) = 0;
    }
  }

  else
  {
    if (gLogCategory_SPHubbedDevicesProviderDefaults <= 90 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
    {
      hdpd_Finalize_cold_2(a1);
    }

    __break(1u);
  }
}

__CFString *hdpd_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<SPHubbedDevicesProviderDefaults %p>", a1);
  return Mutable;
}

uint64_t hdpd_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFSetRef *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPHubbedDevicesProviderDefaults <= 30 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPHubbedDevicesProviderDefaults, "OSStatus hdpd_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "[%{ptr}] %###s propertyKey: '%@'\n", a1, "OSStatus hdpd_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", a2);
  }

  if (!a2)
  {
    hdpd_CopyProperty_cold_6();
    return 4294960591;
  }

  if (!a4)
  {
    hdpd_CopyProperty_cold_5();
    return 4294960591;
  }

  FigSimpleMutexLock();
  if (!CFEqual(a2, @"HubbedDevices"))
  {
    if (gLogCategory_SPHubbedDevicesProviderDefaults <= 30 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
    {
      hdpd_CopyProperty_cold_4(a2);
    }

    v11 = 4294954512;
    goto LABEL_24;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(DerivedStorage + 32);
  if (!v9)
  {
    if (gLogCategory_SPHubbedDevicesProviderDefaults <= 30 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
    {
      hdpd_CopyProperty_cold_2(a1);
    }

    Copy = CFSetCreate(a3, 0, 0, MEMORY[0x277CBF158]);
    if (Copy)
    {
      goto LABEL_23;
    }

    hdpd_CopyProperty_cold_3();
LABEL_32:
    v11 = 4294960568;
    goto LABEL_24;
  }

  if (gLogCategory_SPHubbedDevicesProviderDefaults <= 30)
  {
    v10 = DerivedStorage;
    if (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || (v13 = _LogCategory_Initialize(), v9 = *(v10 + 32), v13))
    {
      LogPrintF(&gLogCategory_SPHubbedDevicesProviderDefaults, "OSStatus hdpd_copyHubbedDevices(SPHubbedDevicesProviderRef, CFAllocatorRef, CFSetRef *)", 33554462, "[%{ptr}] %###s copying hubbedDeviceIDs %@\n", a1, "OSStatus hdpd_copyHubbedDevices(SPHubbedDevicesProviderRef, CFAllocatorRef, CFSetRef *)", v9);
      v9 = *(v10 + 32);
    }
  }

  Copy = CFSetCreateCopy(a3, v9);
  if (!Copy)
  {
    hdpd_CopyProperty_cold_1();
    goto LABEL_32;
  }

LABEL_23:
  v11 = 0;
  *a4 = Copy;
LABEL_24:
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t hdpd_invalidateInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPHubbedDevicesProviderDefaults <= 30 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPHubbedDevicesProviderDefaults, "void hdpd_invalidateInternal(void *)", 33554462, "[%{ptr}] forgetting notify token %d.", a1, *(DerivedStorage + 24));
  }

  result = *(DerivedStorage + 24);
  if (result != -1)
  {
    result = notify_cancel(result);
    *(DerivedStorage + 24) = -1;
  }

  *(DerivedStorage + 40) = 1;
  return result;
}

uint64_t hdpd_Start(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 16);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = __hdpd_Start_block_invoke;
  handler[3] = &__block_descriptor_tmp_34;
  handler[4] = a1;
  notify_register_dispatch("com.apple.airplay.prefsChanged", (DerivedStorage + 24), v3, handler);
  hdpd_handlePreferencesChanged(a1);
  return 0;
}

void hdpd_handlePreferencesChanged(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPHubbedDevicesProviderDefaults <= 50 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
  {
    hdpd_handlePreferencesChanged_cold_1(a1, v2, v3);
  }

  APSSettingsSynchronize();
  FigSimpleMutexLock();
  v5 = APSSettingsCopyValue();
  if (gLogCategory_SPHubbedDevicesProviderDefaults <= 30 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPHubbedDevicesProviderDefaults, "OSStatus hdpd_handlePreferencesChanged(SPHubbedDevicesProviderRef)", 33554462, "[%{ptr}] %###s got value(%@) = %@\n", a1, "OSStatus hdpd_handlePreferencesChanged(SPHubbedDevicesProviderRef)", *(DerivedStorage + 8), v5);
  }

  if (v5 && (v6 = CFGetTypeID(v5), v6 == CFArrayGetTypeID()))
  {
    Count = CFArrayGetCount(v5);
    v8 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
    v14.location = 0;
    v14.length = Count;
    CFArrayGetValues(v5, v14, v8);
    v9 = CFSetCreate(*MEMORY[0x277CBECE8], v8, Count, MEMORY[0x277CBF158]);
    free(v8);
  }

  else
  {
    if (gLogCategory_SPHubbedDevicesProviderDefaults <= 30 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
    {
      hdpd_handlePreferencesChanged_cold_2(a1);
    }

    v9 = 0;
  }

  if (!FigCFEqual())
  {
    if (gLogCategory_SPHubbedDevicesProviderDefaults <= 50 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SPHubbedDevicesProviderDefaults, "OSStatus hdpd_handlePreferencesChanged(SPHubbedDevicesProviderRef)", 33554482, "[%{ptr}] HubbedDeviceIDs = %@\n", a1, v9);
    }

    v12 = *(DerivedStorage + 32);
    *(DerivedStorage + 32) = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (gLogCategory_SPHubbedDevicesProviderDefaults <= 50 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
    {
      hdpd_handlePreferencesChanged_cold_3(a1, v10, v11);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  FigSimpleMutexUnlock();
  if (v5)
  {
    CFRelease(v5);
  }

  if (v9)
  {

    CFRelease(v9);
  }
}

uint64_t APAudioZeroTimeStampProviderGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_18 != -1)
  {
    APAudioZeroTimeStampProviderGetTypeID_cold_1();
  }

  return qword_280FB1B68;
}

uint64_t __APAudioZeroTimeStampProviderGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_280FB1B68 = result;
  return result;
}

uint64_t APEndpointStreamAudioCreate(const __CFAllocator *a1, CFTypeRef cf, const void *a3, CFTypeRef a4, const void *a5, const void *a6, const void *a7, const void *a8, CFTypeRef cfa, void **a10)
{
  v64 = *MEMORY[0x277D85DE8];
  v61 = 0;
  v59 = 0;
  context = 0;
  v58 = 0;
  if (!cf || (v18 = CFGetTypeID(cf), v18 != CFStringGetTypeID()))
  {
    APEndpointStreamAudioCreate_cold_30();
    goto LABEL_67;
  }

  if (a5)
  {
    v19 = CFGetTypeID(a5);
    if (v19 != CFDictionaryGetTypeID())
    {
      APEndpointStreamAudioCreate_cold_1();
      goto LABEL_67;
    }
  }

  if (!a6 || (v20 = CFGetTypeID(a6), v20 != APSenderSessionGetTypeID(v20, v21)))
  {
    APEndpointStreamAudioCreate_cold_29();
    goto LABEL_67;
  }

  if (!cfa || (v22 = CFGetTypeID(cfa), v22 != APEndpointDescriptionGetTypeID(v22, v23)))
  {
    APEndpointStreamAudioCreate_cold_28();
    goto LABEL_67;
  }

  if (!a4)
  {
    APEndpointStreamAudioCreate_cold_27();
    goto LABEL_67;
  }

  v24 = CFGetTypeID(a4);
  if (v24 != CFStringGetTypeID())
  {
    APEndpointStreamAudioCreate_cold_2();
    goto LABEL_67;
  }

  v57 = a3;
  v25 = CFEqual(a4, *MEMORY[0x277CC1960]);
  v26 = MEMORY[0x277CC1970];
  if (!v25 && !CFEqual(a4, *MEMORY[0x277CC1970]))
  {
    APEndpointStreamAudioCreate_cold_26();
    goto LABEL_67;
  }

  if (!a10)
  {
    APEndpointStreamAudioCreate_cold_25();
    goto LABEL_67;
  }

  if (!a7)
  {
    APEndpointStreamAudioCreate_cold_24();
    goto LABEL_67;
  }

  if (!a8)
  {
    APEndpointStreamAudioCreate_cold_23();
    goto LABEL_67;
  }

  FigEndpointStreamGetClassID();
  v27 = CMDerivedObjectCreate();
  v61 = v27;
  if (v27)
  {
    APEndpointStreamAudioCreate_cold_3(v27);
    goto LABEL_67;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 252) = 0;
  *(DerivedStorage + 24) = CFRetain(cf);
  *(DerivedStorage + 40) = CFRetain(a4);
  SNPrintF(v62, 64, "APEndpointStreamAudio.%{ptr}", context);
  *(DerivedStorage + 16) = os_transaction_create();
  *(DerivedStorage + 56) = CFRetain(a6);
  *(DerivedStorage + 80) = CFRetain(cfa);
  *(DerivedStorage + 64) = CFRetain(a7);
  *(DerivedStorage + 72) = CFRetain(a8);
  v29 = FigSimpleMutexCreate();
  *(DerivedStorage + 144) = v29;
  if (!v29)
  {
    APEndpointStreamAudioCreate_cold_22();
    goto LABEL_67;
  }

  SNPrintF(label, 64, "APEndpointStreamAudio.%{ptr}.network", context);
  v30 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 288) = v30;
  if (!v30)
  {
    APEndpointStreamAudioCreate_cold_21();
    goto LABEL_67;
  }

  atomic_store(0, (DerivedStorage + 297));
  *(DerivedStorage + 464) = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 472) = FigGetCFPreferenceNumberWithDefault();
  SNPrintF(label, 64, "APEndpointStreamAudio.%{ptr}.dataProcessing", context);
  v31 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 304) = v31;
  if (!v31)
  {
    APEndpointStreamAudioCreate_cold_20();
    goto LABEL_67;
  }

  v32 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v31);
  *(DerivedStorage + 312) = v32;
  dispatch_set_context(v32, context);
  dispatch_source_set_event_handler_f(*(DerivedStorage + 312), audioStream_statsTimerFired);
  dispatch_source_set_timer(*(DerivedStorage + 312), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  dispatch_resume(*(DerivedStorage + 312));
  SNPrintF(label, 64, "APEndpointStreamAudio.%{ptr}.notification", context);
  v33 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 8) = v33;
  if (!v33)
  {
    APEndpointStreamAudioCreate_cold_19();
    goto LABEL_67;
  }

  if (!a5)
  {
    APEndpointStreamAudioCreate_cold_18();
    goto LABEL_67;
  }

  if (*v26 == a4)
  {
    v34 = 0;
  }

  else if (*v26)
  {
    v34 = CFEqual(a4, *v26) == 0;
  }

  else
  {
    v34 = 1;
  }

  *(DerivedStorage + 112) = v34;
  *(DerivedStorage + 113) = CFDictionaryGetInt64() != 0;
  Int64 = CFDictionaryGetInt64();
  *(DerivedStorage + 132) = CFDictionaryGetInt64() != 0;
  APEndpointDescriptionGetCMBaseObject();
  v37 = v36;
  v38 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v38)
  {
    v40 = 4294954514;
    v61 = -12782;
    goto LABEL_75;
  }

  v39 = *MEMORY[0x277CBECE8];
  v40 = v38(v37, @"SupportedAudioFormats", *MEMORY[0x277CBECE8], &v59);
  v61 = v40;
  if (v40)
  {
LABEL_75:
    APEndpointStreamAudioCreate_cold_17(v40);
    goto LABEL_67;
  }

  if (FigCFEqual())
  {
    CFDictionaryGetInt64();
    if (v61)
    {
      APEndpointStreamAudioCreate_cold_4(v61);
      goto LABEL_67;
    }
  }

  else
  {
    CFDictionaryGetInt64();
    if (v61)
    {
      APEndpointStreamAudioCreate_cold_5(v61);
      goto LABEL_67;
    }
  }

  if (!APSSettingsGetIntWithDefault())
  {
    v45 = APSAudioFormatDescriptionListCreateWithLegacyAudioFormatMask();
    v61 = v45;
    if (v45)
    {
      APEndpointStreamAudioCreate_cold_8(v45);
      goto LABEL_67;
    }

    goto LABEL_40;
  }

  APEndpointDescriptionGetCMBaseObject();
  v42 = v41;
  v43 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v43)
  {
    v61 = -12782;
    goto LABEL_38;
  }

  v44 = v43(v42, @"SupportedAudioFormatsExtended", v39, &v58);
  if (v44 == -12784)
  {
    v61 = 0;
    goto LABEL_77;
  }

  v61 = v44;
  if (v44)
  {
LABEL_38:
    APSLogErrorAt();
    goto LABEL_67;
  }

LABEL_77:
  if (v58)
  {
    if (FigCFDictionaryGetValue())
    {
      v56 = APSAudioFormatDescriptionListCreateWithAdvertisementArray();
      v61 = v56;
      if (v56)
      {
        APEndpointStreamAudioCreate_cold_6(v56);
        goto LABEL_67;
      }
    }
  }

  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
  {
    APEndpointStreamAudioCreate_cold_7();
  }

LABEL_40:
  v46 = *(DerivedStorage + 113);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (v46)
  {
    v48 = @"%@-%llu-screen";
  }

  else
  {
    v48 = @"%@-%llu-airplay";
  }

  *(DerivedStorage + 32) = CFStringCreateWithFormat(a1, 0, v48, v57, UpTimeNanoseconds);
  if (v57)
  {
    v49 = CFRetain(v57);
  }

  else
  {
    v49 = 0;
  }

  *(DerivedStorage + 48) = v49;
  *(DerivedStorage + 120) = CFRetain(*MEMORY[0x277CC17B8]);
  *(DerivedStorage + 128) = APSGetFBOPropertyInt64() != 0;
  if (v61)
  {
    APEndpointStreamAudioCreate_cold_9(v61);
  }

  else
  {
    *(DerivedStorage + 129) = APSGetFBOPropertyInt64() != 0;
    if (v61)
    {
      APEndpointStreamAudioCreate_cold_10(v61);
    }

    else
    {
      *(DerivedStorage + 130) = APSGetFBOPropertyInt64() != 0;
      if (v61)
      {
        APEndpointStreamAudioCreate_cold_11(v61);
      }

      else
      {
        v50 = CFDictionaryGetInt64();
        *(DerivedStorage + 131) = v50 != 0;
        if (v50 && gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
        {
          APEndpointStreamAudioCreate_cold_12(&context, v51, v52);
        }

        if (CFDictionaryContainsKey(a5, @"MediaPresentationLatencyMs") && (*(DerivedStorage + 96) = CFDictionaryGetInt64Ranged(), v61))
        {
          APEndpointStreamAudioCreate_cold_13(v61);
        }

        else
        {
          if (CFDictionaryGetInt64())
          {
            *(DerivedStorage + 240) = 1;
          }

          if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
          {
            APEndpointStreamAudioCreate_cold_14(&context, DerivedStorage, v53);
          }

          v54 = audioStream_setupEventRecorder(context, a5);
          v61 = v54;
          if (v54)
          {
            APEndpointStreamAudioCreate_cold_15(v54);
          }

          else
          {
            if (Int64)
            {
              audioStream_startSilentAudio(context);
            }

            APSIOReporterCreate();
            v61 = 0;
            if (gLogCategory_APEndpointStreamAudio <= 30 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
            {
              APEndpointStreamAudioCreate_cold_16(&context);
            }

            *a10 = context;
            context = 0;
          }
        }
      }
    }
  }

LABEL_67:
  if (v59)
  {
    CFRelease(v59);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (context)
  {
    CFRelease(context);
  }

  return v61;
}

void audioStream_statsTimerFired(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamAudio <= 20 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_statsTimerFired_cold_1(a1);
  }

  v3 = mach_absolute_time();
  UpTicksToSecondsF();
  if (DerivedStorage[49] <= v4)
  {
    DerivedStorage[48] = v3;
    v5 = DerivedStorage[40];
    v6 = DerivedStorage[41];
    if (v5 > v6 || DerivedStorage[42] > DerivedStorage[43])
    {
      if (gLogCategory_APEndpointStreamAudio <= 50)
      {
        if (gLogCategory_APEndpointStreamAudio == -1)
        {
          v7 = _LogCategory_Initialize();
          v5 = DerivedStorage[40];
          if (!v7)
          {
            goto LABEL_11;
          }

          v6 = DerivedStorage[41];
        }

        LogPrintF(&gLogCategory_APEndpointStreamAudio, "void audioStream_statsTimerFired(void *)", 33554482, "Audio stream %{ptr}: Total retransmits: %lld (%lld since last report) Total futile: %lld (%lld since last report)\n", a1, v5, v5 - v6, DerivedStorage[42], DerivedStorage[42] - DerivedStorage[43]);
        v5 = DerivedStorage[40];
      }

LABEL_11:
      DerivedStorage[41] = v5;
      DerivedStorage[43] = DerivedStorage[42];
    }
  }

  UpTicksToSecondsF();
  if (DerivedStorage[51] <= v8)
  {
    DerivedStorage[50] = v3;
    v9 = CMBaseObjectGetDerivedStorage();
    v15 = 0;
    cf = 0;
    FigSimpleMutexLock();
    v10 = MEMORY[0x277CBECE8];
    if (*(v9 + 168))
    {
      CMBaseObject = FigTransportStreamGetCMBaseObject();
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v12(CMBaseObject, *MEMORY[0x277CE5050], *v10, &cf);
      }
    }

    FigSimpleMutexUnlock();
    if (cf)
    {
      StatisticsReport = APTNANDataSessionCreateStatisticsReport();
      if (StatisticsReport)
      {
        audioStream_statsTimerFired_cold_2(StatisticsReport);
      }

      else
      {
        v14 = APTNANDataSessionStatisticsReportCopyDictionary();
        if (v14)
        {
          audioStream_statsTimerFired_cold_3(v14);
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }
}

uint64_t audioStream_setupEventRecorder(uint64_t a1, const __CFDictionary *Value)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (Value)
  {
    CFDictionaryGetValue(Value, @"EventRecorder");
  }

  v4 = *(DerivedStorage + 136);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 136) = 0;
  }

  v5 = APSEventRecorderCreate();
  v6 = v5;
  if (v5)
  {
    audioStream_setupEventRecorder_cold_1(v5);
  }

  return v6;
}

void audioStream_startSilentAudio(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  SNPrintF(label, 64, "APEndpointStreamAudio.%{ptr}.silentAudio", a1);
  v3 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 480) = v3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __audioStream_startSilentAudio_block_invoke;
  block[3] = &__block_descriptor_tmp_171;
  block[4] = DerivedStorage;
  block[5] = a1;
  dispatch_async(v3, block);
}

uint64_t audioStream_Finalize_0(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamAudio <= 50 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
  {
    audioStream_Finalize_cold_1_0(a1, v2, v3);
  }

  v5 = DerivedStorage[1];
  if (v5)
  {
    dispatch_release(v5);
    DerivedStorage[1] = 0;
  }

  audioStream_dissociateInternal_0(a1);
  v6 = DerivedStorage[17];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[17] = 0;
  }

  v7 = DerivedStorage[62];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[62] = 0;
  }

  v8 = DerivedStorage[57];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = DerivedStorage[7];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[7] = 0;
  }

  v10 = DerivedStorage[9];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[9] = 0;
  }

  v11 = DerivedStorage[10];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[10] = 0;
  }

  v12 = DerivedStorage[3];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[3] = 0;
  }

  v13 = DerivedStorage[4];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[4] = 0;
  }

  v14 = DerivedStorage[5];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[5] = 0;
  }

  v15 = DerivedStorage[6];
  if (v15)
  {
    CFRelease(v15);
    DerivedStorage[6] = 0;
  }

  v16 = DerivedStorage[13];
  if (v16)
  {
    CFRelease(v16);
    DerivedStorage[13] = 0;
  }

  v17 = DerivedStorage[15];
  if (v17)
  {
    CFRelease(v17);
    DerivedStorage[15] = 0;
  }

  v18 = DerivedStorage[8];
  if (v18)
  {
    CFRelease(v18);
    DerivedStorage[8] = 0;
  }

  v19 = DerivedStorage[2];
  if (v19)
  {
    os_release(v19);
    DerivedStorage[2] = 0;
  }

  v20 = DerivedStorage[32];
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = DerivedStorage[36];
  if (v21)
  {
    dispatch_release(v21);
    DerivedStorage[36] = 0;
  }

  v22 = DerivedStorage[38];
  if (v22)
  {
    dispatch_release(v22);
    DerivedStorage[38] = 0;
  }

  v23 = DerivedStorage[60];
  if (v23)
  {
    dispatch_release(v23);
    DerivedStorage[60] = 0;
  }

  v24 = DerivedStorage[24];
  if (v24)
  {
    CFRelease(v24);
    DerivedStorage[24] = 0;
  }

  return FigSimpleMutexDestroy();
}

__CFString *audioStream_CopyDebugDescription_0(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APEndpointStreamAudio %p '%@'>", a1, *(DerivedStorage + 24));
  return Mutable;
}

uint64_t audioStream_SetProperty_0(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamAudio <= 30 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamAudio, "OSStatus audioStream_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "[%{ptr}] %###s propertyKey: '%@'\n", a1, "OSStatus audioStream_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", a2);
  }

  if (*DerivedStorage)
  {
    audioStream_SetProperty_cold_1_0();
    return 4294950534;
  }

  if (!a2)
  {
    audioStream_SetProperty_cold_6_0();
    return 4294950536;
  }

  if (CFEqual(a2, @"IsTimelineEstablished") || CFEqual(a2, *MEMORY[0x277CEA0C8]))
  {
    if (a3)
    {
      v7 = CFGetTypeID(a3);
      if (v7 == CFBooleanGetTypeID())
      {
        FigSimpleMutexLock();
        if (DerivedStorage[185])
        {
          Value = CFBooleanGetValue(a3);
          if (DerivedStorage[184] != Value)
          {
            DerivedStorage[184] = Value;
            if (Value)
            {
              CMNotificationCenterGetDefaultLocalCenter();
              FigDispatchAsyncPostNotification();
            }
          }

          v9 = 0;
        }

        else
        {
          v9 = APSSignalErrorAt();
        }

        FigSimpleMutexUnlock();
        return v9;
      }
    }

    audioStream_SetProperty_cold_2_0();
    return 4294950536;
  }

  if (FigCFEqual())
  {
    if (!a3 || (v11 = CFGetTypeID(a3), v11 != CFStringGetTypeID()))
    {
      audioStream_SetProperty_cold_3_0();
      return 4294950536;
    }

    CMBaseObjectGetDerivedStorage();
    if (a1)
    {
      CFRetain(a1);
    }

    CFRetain(a3);
    APSDispatchAsyncFHelper();
    return 0;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    return 0;
  }

  if (FigCFEqual())
  {
    if (!a3 || (v12 = CFGetTypeID(a3), v12 != CFBooleanGetTypeID()))
    {
      audioStream_SetProperty_cold_4_0();
      return 4294950536;
    }

    v13 = CFBooleanGetValue(a3);
    audioStream_setEchoCancellationIsEnabled_0(a1, v13);
    return 0;
  }

  if (FigCFEqual())
  {
    if (!a3 || (v14 = CFGetTypeID(a3), v14 != CFBooleanGetTypeID()))
    {
      audioStream_SetProperty_cold_5_0();
      return 4294950536;
    }

    audioStream_setHTFTIsActive(a1, a3);
    return 0;
  }

  if (gLogCategory_APEndpointStreamAudio <= 30 && (gLogCategory_APEndpointStreamAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamAudio, "OSStatus audioStream_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "[%{ptr}] %###s %@ unsupported\n", a1, "OSStatus audioStream_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", a2);
  }

  return 4294954512;
}

double audioStream_invalidateTransportMDCStream_0(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 176);
  if (v2)
  {
    v3 = CFRetain(v2);
    FigSimpleMutexUnlock();
    if (v3)
    {
      CMBaseObject = FigTransportStreamGetCMBaseObject();
      if (CMBaseObject)
      {
        v6 = CMBaseObject;
        v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v7)
        {
          v7(v6);
        }
      }

      CFRelease(v3);
    }
  }

  else
  {

    FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t audioStream_suspendAndDissociateInternal_0(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  audioStream_suspendInternal_0(a1, 0);
  *DerivedStorage = 1;
  return 0;
}

void audioStream_invalidateTransportStreams(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 160);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(DerivedStorage + 168);
  if (v4)
  {
    v5 = CFRetain(v4);
  }

  else
  {
    v5 = 0;
  }

  FigSimpleMutexUnlock();
  if (v3)
  {
    CMBaseObject = FigTransportStreamGetCMBaseObject();
    if (CMBaseObject)
    {
      v7 = CMBaseObject;
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v8)
      {
        v8(v7);
      }
    }
  }

  if (v5)
  {
    v9 = FigTransportStreamGetCMBaseObject();
    if (v9)
    {
      v10 = v9;
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v11)
      {
        v11(v10);
      }
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v5)
  {

    CFRelease(v5);
  }
}

void audioStream_stopTimer(uint64_t *a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 208);
  *(DerivedStorage + 208) = 0;
  *(DerivedStorage + 216) = 0;
  FigSimpleMutexUnlock();
  APSEndpointStreamAudioHoseRegistrarProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable && (v6 = *(ProtocolVTable + 16)) != 0)
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v7(v4, v2, 0);
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v8 = -12782;
    }
  }

  else
  {
    v8 = -12788;
  }

  APSLogErrorAt();
LABEL_8:
  v9 = a1[1];
  if (v9)
  {
    *v9 = v8;
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

void audioStream_updateIsResumedAndPostNotification(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 185) != v2)
  {
    v4 = DerivedStorage;
    APSWiFiTransactionUpdateTransaction();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v6 = Mutable;
    v7 = MEMORY[0x277CBED10];
    if (v2)
    {
      v7 = MEMORY[0x277CBED28];
    }

    CFDictionarySetValue(Mutable, @"IsPlaying", *v7);
    *(v4 + 185) = v2;
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();

    CFRelease(v6);
  }
}