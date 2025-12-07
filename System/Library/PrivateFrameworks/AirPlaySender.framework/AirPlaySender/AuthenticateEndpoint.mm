@interface AuthenticateEndpoint
@end

@implementation AuthenticateEndpoint

void __mfiMutualAuth_AuthenticateEndpoint_block_invoke(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v85[0] = 0;
  v6 = 0x27CFEF000uLL;
  if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 50 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
  {
    __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_1(v2, v3, v4);
  }

  v7 = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 50 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAuthenticationClientMFiMutualAuth, "OSStatus mfiMutualAuth_initMFi4(APAuthenticationClientRef)", 33554482, "[%{ptr}] Initializing MFi4 Authentication (accTransportClientEndpoint: [%{ptr}])\n", v2, *(v7 + 8));
  }

  FigSimpleMutexLock();
  mfiMutualAuth_setAndLogAuthState(v2, 1);
  FigSimpleMutexUnlock();
  v8 = *(v7 + 8);
  dataPointerOut[0] = MEMORY[0x277D85DD0];
  dataPointerOut[1] = 0x40000000;
  dataPointerOut[2] = __mfiMutualAuth_initMFi4_block_invoke;
  dataPointerOut[3] = &__block_descriptor_tmp_21;
  dataPointerOut[4] = v2;
  dataPointerOut[5] = v7;
  v9 = APAccTransportClientEndpointActivate(v8, 14, 1, dataPointerOut);
  v10 = MEMORY[0x277CBECE8];
  v77 = v1;
  if (v9)
  {
    v25 = v9;
    __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_2(v9);
LABEL_169:
    APSLogErrorAt();
    v15 = 0;
    goto LABEL_72;
  }

  v11 = *(v7 + 8);
  lengthAtOffsetOut[0] = MEMORY[0x277D85DD0];
  lengthAtOffsetOut[1] = 0x40000000;
  lengthAtOffsetOut[2] = __mfiMutualAuth_initMFi4_block_invoke_2;
  lengthAtOffsetOut[3] = &__block_descriptor_tmp_25;
  lengthAtOffsetOut[4] = v7;
  lengthAtOffsetOut[5] = v2;
  v12 = APAccTransportClientEndpointSetAuthStatusHandler(v11, lengthAtOffsetOut);
  if (v12)
  {
    v25 = v12;
    __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_3(v12);
    goto LABEL_169;
  }

  v13 = *(v7 + 8);
  cf[0] = MEMORY[0x277D85DD0];
  cf[1] = 0x40000000;
  cf[2] = __mfiMutualAuth_initMFi4_block_invoke_3;
  cf[3] = &__block_descriptor_tmp_28;
  cf[4] = v2;
  cf[5] = v7;
  v14 = APAccTransportClientEndpointSetSecureTunnelDataReceiveHandler(v13, cf);
  if (v14)
  {
    v25 = v14;
    __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_4(v14);
    goto LABEL_169;
  }

  v75 = DerivedStorage;
  v15 = 0;
  v16 = *v10;
  v17 = *MEMORY[0x277CBED00];
  while (1)
  {
    if (v15)
    {
      CFRelease(v15);
    }

    v18 = v85[0];
    v21 = CMBaseObjectGetDerivedStorage();
    dataPointerOut[0] = 0;
    lengthAtOffsetOut[0] = 0;
    if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 30 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
    {
      __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_5(v2);
      if (!v18)
      {
LABEL_29:
        if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 50 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
        {
          __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_9(v2, v19, v20);
        }

        v23 = 0;
        goto LABEL_33;
      }
    }

    else if (!v18)
    {
      goto LABEL_29;
    }

    FigSimpleMutexLock();
    if (*(v21 + 120) != 2)
    {
      FigSimpleMutexUnlock();
      APSLogErrorAt();
      v15 = 0;
      v25 = 4294895493;
      goto LABEL_65;
    }

    mfiMutualAuth_setAndLogAuthState(v2, 1);
    FigSimpleMutexUnlock();
    CMBlockBufferGetDataPointer(v18, 0, lengthAtOffsetOut, 0, dataPointerOut);
    if (!dataPointerOut[0] || !lengthAtOffsetOut[0])
    {
      __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_8();
      v15 = 0;
      v25 = 4294895492;
      goto LABEL_65;
    }

    v22 = CFDataCreateWithBytesNoCopy(v16, dataPointerOut[0], lengthAtOffsetOut[0], v17);
    if (!v22)
    {
      __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_7();
      v15 = 0;
      v25 = 4294895496;
      goto LABEL_65;
    }

    v23 = v22;
    if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 30 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAuthenticationClientMFiMutualAuth, "OSStatus mfiMutualAuth_exchangeMFi4(APAuthenticationClientRef, CMBlockBufferRef, CFDataRef *, Boolean *)", 33554462, "[%{ptr}] Forwarding %zu bytes to accTransportClientEndpoint\n", v2, lengthAtOffsetOut[0]);
    }

    v24 = APAccTransportClientEndpointForwardData(*(v21 + 8), v23);
    if (v24)
    {
      v25 = v24;
      __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_6(v24);
      v26 = 0;
      v15 = 0;
LABEL_46:
      CFRelease(v23);
      goto LABEL_47;
    }

LABEL_33:
    dispatch_semaphore_wait(*(v21 + 88), 0xFFFFFFFFFFFFFFFFLL);
    if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 50 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
    {
      __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_10(v2, v27, v28);
    }

    FigSimpleMutexLock();
    v15 = 0;
    v29 = *(v21 + 120);
    if ((v29 - 3) < 2)
    {
      v26 = 1;
LABEL_44:
      v25 = 0;
LABEL_45:
      FigSimpleMutexUnlock();
      if (!v23)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    if (v29 != 2)
    {
      v26 = 0;
      v25 = 4294895493;
      goto LABEL_45;
    }

    v30 = *(v21 + 112);
    if (v30)
    {
      v15 = CFRetain(v30);
      v31 = *(v21 + 112);
      if (v31)
      {
        CFRelease(v31);
        v26 = 0;
        *(v21 + 112) = 0;
      }

      else
      {
        v26 = 0;
      }

      goto LABEL_44;
    }

    __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_11();
    v26 = 0;
    v15 = 0;
    v25 = 4294895494;
    if (v23)
    {
      goto LABEL_46;
    }

LABEL_47:
    if (v25)
    {
      v6 = 0x27CFEF000;
LABEL_65:
      FigSimpleMutexLock();
      mfiMutualAuth_setAndLogAuthState(v2, 4);
      FigSimpleMutexUnlock();
      APSLogErrorAt();
      goto LABEL_66;
    }

    if (v26)
    {
      break;
    }

    if (v85[0])
    {
      CFRelease(v85[0]);
      v85[0] = 0;
    }

    v25 = mfiMutualAuth_sendMessageMFi4(v2, v15, 0, v85);
    v6 = 0x27CFEF000uLL;
    if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 20 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAuthenticationClientMFiMutualAuth, "OSStatus mfiMutualAuth_authenticateEndpointInternal(APAuthenticationClientRef)", 33554452, "[%{ptr}] Response from Accessory for 'MFi' message: %@, err: %#m\n", v2, v85[0], v25);
    }

    if (v25)
    {
      __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_13(v25);
LABEL_66:
      v10 = MEMORY[0x277CBECE8];
      goto LABEL_72;
    }
  }

  FigSimpleMutexLock();
  v10 = MEMORY[0x277CBECE8];
  if (*(v75 + 120) == 3)
  {
    v25 = 0;
    v6 = 0x27CFEF000;
  }

  else
  {
    v6 = 0x27CFEF000uLL;
    if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 90 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
    {
      __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_12(v2, v32, v33);
    }

    v25 = 4294895494;
  }

  FigSimpleMutexUnlock();
LABEL_72:
  if (v85[0])
  {
    CFRelease(v85[0]);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v34 = *(v6 + 2848);
  if (v25)
  {
    if (v34 <= 90 && (v34 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAuthenticationClientMFiMutualAuth, "OSStatus mfiMutualAuth_authenticateEndpointInternal(APAuthenticationClientRef)", 33554522, "[%{ptr}] ### MFi failed: %#m\n", v2, v25);
    }

    if (v25 == 200403)
    {
      v35 = -71145;
    }

    else
    {
      v35 = -71802;
    }

    FigSimpleMutexLock();
    mfiMutualAuth_setAndLogAuthState(v2, 4);
    FigSimpleMutexUnlock();
  }

  else
  {
    if (v34 <= 50 && (v34 != -1 || _LogCategory_Initialize()))
    {
      __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_14(v2, v72, v73);
    }

    v35 = 0;
  }

  *(*(*(v1 + 32) + 8) + 24) = v35;
  if (*(*(*(v1 + 32) + 8) + 24))
  {
    return;
  }

  v36 = *(v1 + 40);
  v37 = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  v84 = 0;
  v85[0] = 0;
  v83 = 0;
  v38 = *v10;
  Mutable = CFDictionaryCreateMutable(*v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v81 = 0;
  v82 = 0;
  v42 = *(v6 + 2848);
  if (v42 <= 50 && (v42 != -1 || _LogCategory_Initialize()))
  {
    __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_15(v36, v39, v40);
  }

  CFDictionarySetValue(Mutable, @"X-Apple-PairingTranscript", @"1");
  v76 = v37;
  v43 = v37 + 24;
  v44 = *MEMORY[0x277CBED00];
  v74 = CFDataCreateWithBytesNoCopy(v38, (v37 + 24), 32, *MEMORY[0x277CBED00]);
  TransformedMessage = mfiMutualAuth_createTransformedMessage(v36, 0, v74, cf);
  if (TransformedMessage)
  {
    LODWORD(v50) = TransformedMessage;
    __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_16(TransformedMessage);
LABEL_172:
    v47 = 0;
    goto LABEL_176;
  }

  v46 = mfiMutualAuth_sendMessageMFi4(v36, cf[0], Mutable, &v83);
  if (v46)
  {
    LODWORD(v50) = v46;
    __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_17(v46);
    goto LABEL_172;
  }

  v47 = v83;
  v48 = CMBaseObjectGetDerivedStorage();
  dataPointerOut[0] = 0;
  lengthAtOffsetOut[0] = 0;
  v49 = *(v6 + 2848);
  if (v49 <= 30 && (v49 != -1 || _LogCategory_Initialize()))
  {
    __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_18(v36);
    if (!v47)
    {
      goto LABEL_160;
    }

LABEL_99:
    FigSimpleMutexLock();
    if (*(v48 + 124))
    {
      FigSimpleMutexUnlock();
      APSLogErrorAt();
      v47 = 0;
      v50 = 4294895493;
      goto LABEL_122;
    }

    mfiMutualAuth_setAndLogSecureTunnelState(v36, 5);
    FigSimpleMutexUnlock();
    CMBlockBufferGetDataPointer(v47, 0, lengthAtOffsetOut, 0, dataPointerOut);
    if (!dataPointerOut[0] || !lengthAtOffsetOut[0])
    {
      __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_23();
      v47 = 0;
      v50 = 4294895492;
      goto LABEL_122;
    }

    v51 = CFDataCreateWithBytesNoCopy(v38, dataPointerOut[0], lengthAtOffsetOut[0], v44);
    if (!v51)
    {
      __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_22();
      v47 = 0;
      v50 = 4294895496;
      goto LABEL_122;
    }

    v52 = v51;
    v53 = *(v6 + 2848);
    if (v53 <= 30 && (v53 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAuthenticationClientMFiMutualAuth, "OSStatus mfiMutualAuth_exchangeArea51Message(APAuthenticationClientRef, CMBlockBufferRef, CFDataRef *)", 33554462, "[%{ptr}] Area51 message: Forwarding %zu bytes to acc endpoint\n", v36, lengthAtOffsetOut[0]);
    }

    v54 = APAccTransportClientEndpointForwardData(*(v48 + 8), v52);
    if (v54)
    {
      v50 = v54;
      __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_19(v54);
    }

    else
    {
      dispatch_semaphore_wait(*(v48 + 88), 0xFFFFFFFFFFFFFFFFLL);
      v57 = *(v6 + 2848);
      if (v57 <= 50 && (v57 != -1 || _LogCategory_Initialize()))
      {
        __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_20(v36, v55, v56);
      }

      FigSimpleMutexLock();
      v58 = *(v48 + 124);
      if (v58 != 6)
      {
        v47 = 0;
        v50 = 4294895493;
LABEL_119:
        FigSimpleMutexUnlock();
        CFRelease(v52);
        if (v58 != 6)
        {
          v6 = 0x27CFEF000uLL;
          goto LABEL_122;
        }

        v1 = v77;
        v6 = 0x27CFEF000;
LABEL_124:
        v61 = mfiMutualAuth_sendMessageMFi4(v36, v47, Mutable, &v84);
        if (v61)
        {
          LODWORD(v50) = v61;
          __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_26(v61);
        }

        else
        {
          DataPointer = CMBlockBufferGetDataPointer(v84, 0, &v81, 0, &v82);
          if (!DataPointer)
          {
            v63 = CFDataCreateWithBytesNoCopy(v38, v82, v81, v44);
            v64 = mfiMutualAuth_createTransformedMessage(v36, 1, v63, v85);
            if (v64)
            {
              LODWORD(v50) = v64;
              __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_28(v64);
              goto LABEL_177;
            }

            if (CFDataGetLength(v85[0]) == 32)
            {
              BytePtr = CFDataGetBytePtr(v85[0]);
              Length = CFDataGetLength(v85[0]);
              if (!memcmp((v76 + 56), BytePtr, Length))
              {
                v69 = *(v6 + 2848);
                if (v69 <= 50)
                {
                  v70 = v74;
                  if (v69 != -1 || _LogCategory_Initialize())
                  {
                    __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_31(v36, v67, v68);
                  }

                  LODWORD(v50) = 0;
                  goto LABEL_135;
                }

                LODWORD(v50) = 0;
LABEL_134:
                v70 = v74;
                goto LABEL_135;
              }

              __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_30();
            }

            else
            {
              __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_29();
            }

            LODWORD(v50) = -71145;
            goto LABEL_134;
          }

          LODWORD(v50) = DataPointer;
          __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_27(DataPointer);
        }

LABEL_176:
        v63 = 0;
        goto LABEL_177;
      }

      v59 = *(v48 + 112);
      if (v59)
      {
        v47 = CFRetain(v59);
        v60 = *(v48 + 112);
        if (v60)
        {
          CFRelease(v60);
          *(v48 + 112) = 0;
        }

        mfiMutualAuth_setAndLogSecureTunnelState(v36, 0);
        v50 = 0;
        goto LABEL_119;
      }

      __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_21();
      v50 = 4294895494;
      v6 = 0x27CFEF000;
    }

    CFRelease(v52);
    v47 = 0;
    goto LABEL_122;
  }

  if (v47)
  {
    goto LABEL_99;
  }

LABEL_160:
  __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_24();
  v50 = 4294895495;
LABEL_122:
  FigSimpleMutexLock();
  mfiMutualAuth_setAndLogSecureTunnelState(v36, 7);
  FigSimpleMutexUnlock();
  if (!v50)
  {
    v1 = v77;
    goto LABEL_124;
  }

  __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_25(v50);
  v63 = 0;
  v1 = v77;
LABEL_177:
  v70 = v74;
LABEL_135:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  if (v84)
  {
    CFRelease(v84);
  }

  if (v85[0])
  {
    CFRelease(v85[0]);
  }

  if (v63)
  {
    CFRelease(v63);
  }

  if (v83)
  {
    CFRelease(v83);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  for (i = 0; i != 64; ++i)
  {
    *(v43 + i) = 0;
  }

  if (v50)
  {
    FigSimpleMutexLock();
    mfiMutualAuth_setAndLogSecureTunnelState(v36, 7);
    FigSimpleMutexUnlock();
  }

  *(*(*(v1 + 32) + 8) + 24) = v50;
}

@end