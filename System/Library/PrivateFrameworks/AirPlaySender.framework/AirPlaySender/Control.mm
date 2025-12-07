@interface Control
@end

@implementation Control

void __screenstreamudp_Control_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v38 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v37 = 0;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  if (*(DerivedStorage + 24))
  {
    __screenstreamudp_Control_block_invoke_cold_1(&v38);
    v13 = 4294950534;
    goto LABEL_30;
  }

  if (!v3)
  {
    __screenstreamudp_Control_block_invoke_cold_13(&v38);
    v13 = 4294950536;
    goto LABEL_30;
  }

  v5 = DerivedStorage;
  Int64 = CFDictionaryGetInt64();
  if (Int64 != *(v5 + 248))
  {
    v7 = Int64;
    if (!Int64)
    {
      v8 = "default";
      goto LABEL_9;
    }

    if (Int64 != 1)
    {
      if (gLogCategory_APEndpointStreamScreenUDP <= 90 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointStreamScreenUDP, "OSStatus screenstreamudp_handleCommandSetMode(FigEndpointStreamRef, CFDictionaryRef)", 33554522, "### set mode for screen stream %{ptr} failed: invalid mode '%d'\n", v2, v7);
      }

      v13 = 4294950536;
      v38 = -16760;
      APSLogErrorAt();
      goto LABEL_30;
    }

    if (*(v5 + 257))
    {
      v8 = "media presentation";
LABEL_9:
      if (gLogCategory_APEndpointStreamScreenUDP >= 51)
      {
        *(v5 + 248) = Int64;
      }

      else
      {
        if (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_APEndpointStreamScreenUDP, "OSStatus screenstreamudp_handleCommandSetMode(FigEndpointStreamRef, CFDictionaryRef)", 33554482, "screen stream %{ptr}: setting %s mode\n", v2, v8);
        }

        v9 = gLogCategory_APEndpointStreamScreenUDP;
        *(v5 + 248) = v7;
        if (v9 <= 40 && (v9 != -1 || _LogCategory_Initialize()))
        {
          __screenstreamudp_Control_block_invoke_cold_2(v2);
        }
      }

      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!Mutable)
      {
        __screenstreamudp_Control_block_invoke_cold_12(&v38);
        v13 = 4294950535;
        goto LABEL_30;
      }

      v12 = Mutable;
      if (!*(v5 + 112) || !*(v5 + 113) || !*(v5 + 120))
      {
        goto LABEL_24;
      }

      v30 = *MEMORY[0x277CBF3A8];
      v29 = 0;
      if (*(v5 + 248) == 1)
      {
        APSScreenGetMediaPresentationParams();
        if (gLogCategory_APEndpointStreamScreenUDP <= 50 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
        {
          __screenstreamudp_Control_block_invoke_cold_3(&v30);
        }
      }

      else
      {
        v30 = *(v5 + 152);
        v29 = *(v5 + 268);
      }

      v31 = v30;
      LODWORD(v32) = v29;
      BYTE8(v33) = *(v5 + 248) == 1;
      *&v34 = screenstreamudp_getDisplayHDRMode(v5, v11);
      v15 = *(v5 + 216);
      if (v15)
      {
        *(&v35 + 1) = CFDictionaryGetValue(v15, @"encoderEncryptionData");
        if (!*(&v35 + 1))
        {
          __screenstreamudp_Control_block_invoke_cold_5(&v38);
          goto LABEL_24;
        }

        FigCFDictionaryGetInt64IfPresent();
        if (!v36)
        {
          __screenstreamudp_Control_block_invoke_cold_4(&v38);
          goto LABEL_24;
        }
      }

      if (!*(v5 + 113))
      {
LABEL_43:
        TypedValue = 0;
        goto LABEL_44;
      }

      CFDictionarySetInt64();
      DisplayHDRMode = screenstreamudp_getDisplayHDRMode(v5, v18);
      CFDictionarySetValue(v12, @"displayHDRMode", DisplayHDRMode);
      v20 = MEMORY[0x277CBED28];
      if (!*(v5 + 263))
      {
        v20 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(v12, @"hdrMirroringSupported", *v20);
      v22 = [*(v5 + 40) isConfigPresentForPresentationMode:BYTE8(v33)];
      if (!v22)
      {
        v24 = *(v5 + 40);
        v25 = screenstreamudp_getDisplayHDRMode(v5, v21);
        v26 = [v24 initializeNegotiatorWithMode:v25 presentationMode:BYTE8(v33) != 0 hdrMirroringSupported:*(v5 + 263) != 0];
        v38 = v26;
        if (v26)
        {
          __screenstreamudp_Control_block_invoke_cold_6(v26);
          goto LABEL_24;
        }

        v27 = [*(v5 + 40) negotiationDataForPresentationMode:BYTE8(v33)];
        if (!v27)
        {
          __screenstreamudp_Control_block_invoke_cold_10(&v38);
          goto LABEL_24;
        }

        v28 = v27;
        if (gLogCategory_APEndpointStreamScreenUDP <= 40 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
        {
          __screenstreamudp_Control_block_invoke_cold_7(&v33 + 8);
        }

        CFDictionarySetValue(v12, @"negotiationData", v28);
      }

      v23 = APTransportStreamSendPlistMessageCreatingPlistReply();
      v38 = v23;
      if (v23)
      {
        __screenstreamudp_Control_block_invoke_cold_8(v23);
      }

      else
      {
        if (v22)
        {
          goto LABEL_43;
        }

        CFDataGetTypeID();
        TypedValue = CFDictionaryGetTypedValue();
        if (!v38)
        {
LABEL_44:
          v17 = [*(v5 + 40) restartWithScreenOptions:&v31 negotiatedBlob:TypedValue];
          v38 = v17;
          if (v17)
          {
            __screenstreamudp_Control_block_invoke_cold_11(v17);
          }

          goto LABEL_24;
        }

        __screenstreamudp_Control_block_invoke_cold_9(v38);
      }

LABEL_24:
      CFRelease(v12);
      if (v37)
      {
        CFRelease(v37);
      }
    }
  }

  v13 = v38;
  if (v38)
  {
LABEL_30:
    screenstreamudp_handleFatalError(v2, v13, @"HDR restart failed");
    v14 = v38;
    goto LABEL_31;
  }

  v14 = 0;
LABEL_31:
  *(*(a1[4] + 8) + 24) = v14;
}

uint64_t __screenstream_Control_block_invoke_3(uint64_t a1)
{
  result = screenstream_handleCommandSetRecordingState(*(a1 + 40), 1);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __screenstreamudp_Control_block_invoke_cold_4(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16765;
  return result;
}

uint64_t __screenstreamudp_Control_block_invoke_cold_5(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16765;
  return result;
}

uint64_t __screenstreamudp_Control_block_invoke_cold_10(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16761;
  return result;
}

uint64_t __screenstreamudp_Control_block_invoke_cold_12(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16761;
  return result;
}

void __screenstream_Control_block_invoke(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_21_7(a1);
  if (*(v3 + 24) || !v2)
  {
LABEL_27:
    APSLogErrorAt();
    goto LABEL_30;
  }

  v4 = v3;
  Int64 = CFDictionaryGetInt64();
  if (Int64 != *(v4 + 368) && !*(v4 + 394) && !*(v4 + 409))
  {
    v6 = *(v4 + 160);
    if (v6)
    {
      v7 = Int64;
      if (Int64 == 1)
      {
        if (!*(v4 + 383))
        {
          goto LABEL_30;
        }
      }

      else if (Int64)
      {
        if (gLogCategory_APEndpointStreamScreen <= 90 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_handleCommandSetMode(FigEndpointStreamRef, CFDictionaryRef)", 33554522, "%@ ### set mode for screen stream %{ptr} failed: invalid mode '%d'\n", *(v4 + 40), v1, v7);
        }

        goto LABEL_27;
      }

      v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v9)
      {
        v9(v6);
      }

      if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamScreen)))
      {
        OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_handleCommandSetMode(FigEndpointStreamRef, CFDictionaryRef)", v8, "%@ setting %s mode\n");
      }

      *(v4 + 368) = v7;
      screenstream_createVirtualDisplayActivationOptions(v1);
      if (!*(*(OUTLINED_FUNCTION_22_3() + 16) + 8) || (v10 = OUTLINED_FUNCTION_14_11(), v11(v10)) || (v12 = *(*(OUTLINED_FUNCTION_33_2() + 16) + 40)) == 0 || v12(v4))
      {
        APSLogErrorAt();
        if (!v1)
        {
          goto LABEL_30;
        }
      }

      else if (!v1)
      {
        goto LABEL_30;
      }

      CFRelease(v1);
    }
  }

LABEL_30:
  OUTLINED_FUNCTION_15_3();
}

uint64_t __screenstream_Control_block_invoke_2(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v4 = result;
  if (gLogCategory_APEndpointStreamScreen <= 50)
  {
    if (gLogCategory_APEndpointStreamScreen != -1 || (result = OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamScreen), result))
    {
      result = OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_handleCommandRestartBitstream(FigEndpointStreamRef)", v3, "%@ restart bitstream\n");
    }
  }

  if (*(v4 + 24))
  {
    v8 = -16762;
    goto LABEL_14;
  }

  if (!*(v4 + 26) || (v5 = *(v4 + 160)) == 0)
  {
    v8 = 0;
    goto LABEL_15;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v6)
  {
    v6(v5);
  }

  v7 = *(*(OUTLINED_FUNCTION_33_2() + 16) + 32);
  if (!v7)
  {
    v8 = -12782;
LABEL_14:
    result = APSLogErrorAt();
    goto LABEL_15;
  }

  result = v7(v4);
  v8 = result;
  if (result)
  {
    goto LABEL_14;
  }

LABEL_15:
  *(*(*(a1 + 32) + 8) + 24) = v8;
  return result;
}

uint64_t __screenstream_Control_block_invoke_4(uint64_t a1)
{
  result = screenstream_handleCommandSetRecordingState(*(a1 + 40), 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __screenstream_Control_block_invoke_5(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_21_7(a1);
  cf = 0;
  if (*(v3 + 394))
  {
    goto LABEL_26;
  }

  v4 = v3;
  if (*(v3 + 26))
  {
    if (!v2)
    {
      goto LABEL_30;
    }

    v5 = CFGetTypeID(v2);
    if (v5 != CFDictionaryGetTypeID())
    {
      goto LABEL_30;
    }

    v6 = *(v4 + 160);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v7)
    {
      v7(v6);
    }

    if (APEndpointDisplayDescriptionCreateWithDisplayInfo(*MEMORY[0x277CBECE8], v2, &cf))
    {
LABEL_30:
      APSLogErrorAt();
      goto LABEL_24;
    }

    if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamScreen)))
    {
      OUTLINED_FUNCTION_29_3();
      OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_handleUpdateDisplayInfo(FigEndpointStreamRef, CFDictionaryRef)", v8, "%@ Received update display info command\n");
    }

    v9 = *(v4 + 72);
    v10 = cf;
    *(v4 + 72) = cf;
    if (v10)
    {
      CFRetain(v10);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    screenstream_initDisplayInfo(v4);
    screenstream_createVirtualDisplayActivationOptions(v1);
    if (!*(*(OUTLINED_FUNCTION_22_3() + 16) + 8) || (v11 = OUTLINED_FUNCTION_14_11(), v12(v11)) || (v13 = *(*(OUTLINED_FUNCTION_33_2() + 16) + 40)) == 0 || v13(v4))
    {
      APSLogErrorAt();
      if (!v1)
      {
        goto LABEL_24;
      }
    }

    else if (!v1)
    {
      goto LABEL_24;
    }

    CFRelease(v1);
  }

LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_26:
  OUTLINED_FUNCTION_15_3();
}

void __screenstream_Control_block_invoke_6(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_21_7(a1);
  if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_4(&gLogCategory_APEndpointStreamScreen)))
  {
    OUTLINED_FUNCTION_29_3();
    OUTLINED_FUNCTION_2(&gLogCategory_APEndpointStreamScreen, "OSStatus screenstream_handleOverrideCanvasSize(FigEndpointStreamRef, CFDictionaryRef)", v4, "%@ Received override canvas size command\n");
  }

  if (!*(v3 + 394) || !v2 || (v5 = CFGetTypeID(v2), v5 != CFDictionaryGetTypeID()) || !CGSizeMakeWithDictionaryRepresentation(v2, (v3 + 232)))
  {
    APSLogErrorAt();
    goto LABEL_21;
  }

  if (*(v3 + 25))
  {
    v6 = *(v3 + 160);
    if (v6)
    {
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v7)
      {
        v7(v6);
      }

      screenstream_createVirtualDisplayActivationOptions(v1);
      if (*(*(OUTLINED_FUNCTION_22_3() + 16) + 8))
      {
        v8 = OUTLINED_FUNCTION_14_11();
        if (!v9(v8))
        {
          v10 = *(*(OUTLINED_FUNCTION_33_2() + 16) + 40);
          if (v10)
          {
            if (!v10(v3))
            {
              if (!v1)
              {
                goto LABEL_21;
              }

              goto LABEL_20;
            }
          }
        }
      }

      APSLogErrorAt();
      if (v1)
      {
LABEL_20:
        CFRelease(v1);
      }
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_15_3();
}

@end