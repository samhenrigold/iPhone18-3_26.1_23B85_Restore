void epp_postNotificationAsync(CFTypeRef cf, CFTypeRef a2, CFTypeRef a3)
{
  if (a2)
  {
    CFRetain(a2);
  }

  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __epp_postNotificationAsync_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = cf;
  block[5] = a2;
  block[6] = a3;
  global_queue = dispatch_get_global_queue(25, 0);
  dispatch_async(global_queue, block);
}

void __epp_postNotificationAsync_block_invoke(void *a1)
{
  if (gLogCategory_APEndpointPlus <= 40 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    __epp_postNotificationAsync_block_invoke_cold_1(a1);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t epp_updateDelegateRouting(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 208) = 0u;
  *(DerivedStorage + 224) = 0u;
  *(DerivedStorage + 240) = 0;
  v4 = *(DerivedStorage + 248);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 248) = 0;
  }

  if (a2)
  {
    *(DerivedStorage + 216) = *(a2 + 8);
    *(DerivedStorage + 232) = *(a2 + 24);
    if (*a2)
    {
      *(DerivedStorage + 248) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t epp_updateDelegateRemoteControl(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 256) = 0u;
  *(DerivedStorage + 272) = 0u;
  v4 = *(DerivedStorage + 288);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 288) = 0;
  }

  if (a2)
  {
    *(DerivedStorage + 280) = *(a2 + 24);
    *(DerivedStorage + 264) = *(a2 + 8);
    if (*a2)
    {
      *(DerivedStorage + 288) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t epp_RequestCarUI(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_RequestCarUI_cold_1(a1, v6, v7);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_RequestCarUI_cold_2();
    return 4294949690;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_5:
  v9 = *(*(CMBaseObjectGetVTable() + 24) + 8);
  if (v9)
  {
    v10 = v9(v8, a2, a3);
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(v8);
  return v10;
}

uint64_t epp_BorrowScreen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_BorrowScreen_cold_1(a1, v6, v7);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_BorrowScreen_cold_2();
    return 4294949690;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_5:
  v9 = *(*(CMBaseObjectGetVTable() + 24) + 16);
  if (v9)
  {
    v10 = v9(v8, a2, a3);
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(v8);
  return v10;
}

uint64_t epp_UnborrowScreen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_UnborrowScreen_cold_1(a1, v6, v7);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_UnborrowScreen_cold_2();
    return 4294949690;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_5:
  v9 = *(*(CMBaseObjectGetVTable() + 24) + 24);
  if (v9)
  {
    v10 = v9(v8, a2, a3);
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(v8);
  return v10;
}

uint64_t epp_TakeScreen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_TakeScreen_cold_1(a1, v6, v7);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_TakeScreen_cold_2();
    return 4294949690;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_5:
  v9 = *(*(CMBaseObjectGetVTable() + 24) + 32);
  if (v9)
  {
    v10 = v9(v8, a2, a3);
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(v8);
  return v10;
}

uint64_t epp_DisableBluetooth(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_DisableBluetooth_cold_1(a1, v6, v7);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_DisableBluetooth_cold_2();
    return 4294949690;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_5:
  v9 = *(*(CMBaseObjectGetVTable() + 24) + 40);
  if (v9)
  {
    v10 = v9(v8, a2, a3);
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(v8);
  return v10;
}

uint64_t epp_DuckAudio(uint64_t a1, uint64_t a2)
{
  v6 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_DuckAudio_cold_1(a1, v4, v5);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_DuckAudio_cold_2();
    return 4294949690;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_5:
  v7 = *(*(CMBaseObjectGetVTable() + 24) + 48);
  if (v7)
  {
    v8 = v7(v6, a2);
  }

  else
  {
    v8 = 4294954514;
  }

  CFRelease(v6);
  return v8;
}

uint64_t epp_SetHIDInputMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_SetHIDInputMode_cold_1(a1, v6, v7);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_SetHIDInputMode_cold_2();
    return 4294949690;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_5:
  v9 = *(*(CMBaseObjectGetVTable() + 24) + 56);
  if (v9)
  {
    v10 = v9(v8, a2, a3);
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(v8);
  return v10;
}

uint64_t epp_CopyHIDInputMode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_CopyHIDInputMode_cold_1(a1, v8, v9);
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_CopyHIDInputMode_cold_2();
    return 4294949690;
  }

  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_5:
  v11 = *(*(CMBaseObjectGetVTable() + 24) + 64);
  if (v11)
  {
    v12 = v11(v10, a2, a3, a4);
  }

  else
  {
    v12 = 4294954514;
  }

  CFRelease(v10);
  return v12;
}

uint64_t epp_SendCommand(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = epp_copyInnerExtended();
  v12 = malloc_type_calloc(1uLL, 0x20uLL, 0xE0040174B3136uLL);
  *v12 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v12[1] = CFRetain(a1);
  v12[2] = a4;
  v12[3] = a5;
  if (v11)
  {
    CFRetain(a1);
    CFRetain(v11);
    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    v13 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __epp_SendCommand_block_invoke;
    block[3] = &__block_descriptor_72_e5_v8__0l;
    block[4] = a1;
    block[5] = v11;
    block[6] = v12;
    block[7] = a2;
    block[8] = a3;
    dispatch_async(v13, block);
    CFRelease(v11);
    return 0;
  }

  else
  {
    epp_SendCommand_cold_1(DerivedStorage, v15);
    return 4294949690;
  }
}

uint64_t epp_CreateRemoteControlSession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_CreateRemoteControlSession_cold_1(a1, v6, v7);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_CreateRemoteControlSession_cold_2();
    return 4294949690;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_5:
  v9 = *(*(CMBaseObjectGetVTable() + 24) + 80);
  if (v9)
  {
    v10 = v9(v8, a2, a3);
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(v8);
  return v10;
}

uint64_t epp_CreateCommChannel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_CreateCommChannel_cold_1(a1, v6, v7);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_CreateCommChannel_cold_2();
    return 4294949690;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_5:
  v9 = *(*(CMBaseObjectGetVTable() + 24) + 88);
  if (v9)
  {
    v10 = v9(v8, a2, a3);
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(v8);
  return v10;
}

uint64_t epp_SendData(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = epp_copyInnerExtended();
  v12 = malloc_type_calloc(1uLL, 0x20uLL, 0xE0040174B3136uLL);
  *v12 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v12[1] = CFRetain(a1);
  v12[2] = a4;
  v12[3] = a5;
  if (!a2)
  {
    v16 = epp_SendData_cold_1(v11);
    v14 = 4294950576;
    v17 = v11;
    if (v16)
    {
LABEL_12:
      v18 = *(DerivedStorage + 8);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __epp_SendData_block_invoke_2;
      v19[3] = &__block_descriptor_60_e5_v8__0l;
      v19[4] = v11;
      v19[5] = a2;
      v20 = v14;
      v19[6] = v12;
      dispatch_async(v18, v19);
      if (!v11)
      {
        return v14;
      }

      goto LABEL_6;
    }

LABEL_11:
    CFRetain(v17);
    goto LABEL_12;
  }

  if (!v11)
  {
    v14 = 4294949690;
    v17 = a2;
    goto LABEL_11;
  }

  CFRetain(a1);
  CFRetain(v11);
  CFRetain(a2);
  if (a3)
  {
    CFRetain(a3);
  }

  v13 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __epp_SendData_block_invoke;
  block[3] = &__block_descriptor_72_e5_v8__0l;
  block[4] = a1;
  block[5] = v11;
  block[6] = v12;
  block[7] = a2;
  block[8] = a3;
  dispatch_async(v13, block);
  v14 = 0;
LABEL_6:
  CFRelease(v11);
  return v14;
}

uint64_t epp_CloseCommChannel(uint64_t a1, uint64_t a2)
{
  v6 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_CloseCommChannel_cold_1(a1, v4, v5);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_CloseCommChannel_cold_2();
    return 4294949690;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_5:
  v7 = *(*(CMBaseObjectGetVTable() + 24) + 104);
  if (v7)
  {
    v8 = v7(v6, a2);
  }

  else
  {
    v8 = 4294954514;
  }

  CFRelease(v6);
  return v8;
}

uint64_t epp_RequestViewArea(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_RequestViewArea_cold_1(a1, v6, v7);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_RequestViewArea_cold_2();
    return 4294949690;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_5:
  v9 = *(*(CMBaseObjectGetVTable() + 24) + 112);
  if (v9)
  {
    v10 = v9(v8, a2, a3);
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(v8);
  return v10;
}

uint64_t epp_CopyCurrentViewArea(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_CopyCurrentViewArea_cold_1(a1, v6, v7);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_CopyCurrentViewArea_cold_2();
    return 4294949690;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_5:
  v9 = *(*(CMBaseObjectGetVTable() + 24) + 120);
  if (v9)
  {
    v10 = v9(v8, a2, a3);
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(v8);
  return v10;
}

uint64_t epp_AcquireAndCopyResource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_AcquireAndCopyResource_cold_1(a1, v8, v9);
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_AcquireAndCopyResource_cold_2();
    return 4294949690;
  }

  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_5:
  v11 = *(*(CMBaseObjectGetVTable() + 24) + 128);
  if (v11)
  {
    v12 = v11(v10, a2, a3, a4);
  }

  else
  {
    v12 = 4294954514;
  }

  CFRelease(v10);
  return v12;
}

uint64_t epp_RelinquishResource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = epp_copyInnerExtended();
  if (gLogCategory_APEndpointPlus <= 30 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_RelinquishResource_cold_1(a1, v6, v7);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_11:
    epp_RelinquishResource_cold_2();
    return 4294949690;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_5:
  v9 = *(*(CMBaseObjectGetVTable() + 24) + 136);
  if (v9)
  {
    v10 = v9(v8, a2, a3);
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(v8);
  return v10;
}

void epp_CloseAllCommChannels(uint64_t a1)
{
  v1 = epp_copyInnerExtended();
  if (v1)
  {
    v2 = v1;
    v3 = *(*(CMBaseObjectGetVTable() + 24) + 144);
    if (v3)
    {
      v3(v2);
    }

    CFRelease(v2);
  }
}

CFTypeRef epp_copyInnerExtended()
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v1 = epp_copyInner(FigEndpoint);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  FigEndpointExtendedGetClassID();
  if (!CMBaseObjectIsMemberOfClass())
  {
    return 0;
  }

  return v2;
}

void epp_delegate_handleFailed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v8 = DerivedStorage;
    FigSimpleMutexLock();
    v12 = *(v8 + 224);
    v9 = *(v8 + 248);
    FigSimpleMutexUnlock();
    if (v12)
    {
      if (v9)
      {
        v10 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v10)
        {
          v11 = v10;
          v12(a4, a2, a3, v10);

          CFRelease(v11);
        }

        else
        {
          epp_delegate_handleFailed_cold_1();
        }
      }

      else
      {

        v12(a4, a2, a3, 0);
      }
    }

    else
    {
      epp_delegate_handleFailed_cold_2();
    }
  }

  else
  {
    epp_delegate_handleFailed_cold_3();
  }
}

void epp_delegate_handleAuthRequired(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, void (*a6)(uint64_t, void, uint64_t, uint64_t), uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = 0;
  if (!a4)
  {
    epp_delegate_handleAuthRequired_cold_9();
    return;
  }

  if (!a6)
  {
    epp_delegate_handleAuthRequired_cold_8();
    goto LABEL_24;
  }

  v15 = DerivedStorage;
  if (gLogCategory_APEndpointPlus <= 50 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    epp_delegate_handleAuthRequired_cold_1(v15, a2, a4);
  }

  FigSimpleMutexLock();
  v16 = *(v15 + 216);
  v17 = *(v15 + 248);
  FigSimpleMutexUnlock();
  if (!v16)
  {
    epp_delegate_handleAuthRequired_cold_7();
    goto LABEL_24;
  }

  if (v17)
  {
    v17 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v17)
    {
      epp_delegate_handleAuthRequired_cold_2();
      goto LABEL_24;
    }
  }

  if (!a2)
  {
    goto LABEL_22;
  }

  v18 = (v15 + 32);
  FigSimpleMutexLock();
  cf = 0;
  if (*CMBaseObjectGetDerivedStorage() != 2)
  {
    epp_delegate_handleAuthRequired_cold_3(&cf, v18);
    v23 = 4294950576;
    goto LABEL_33;
  }

  if (APSGetFBOPropertyInt64())
  {
    epp_delegate_handleAuthRequired_cold_4();
    v23 = 4294950576;
    goto LABEL_18;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v20)
  {
    v23 = 4294954514;
LABEL_17:
    APSLogErrorAt();
    goto LABEL_18;
  }

  v21 = v20(CMBaseObject, *MEMORY[0x277CC1368], *MEMORY[0x277CBECE8], &cf);
  if (v21)
  {
    v23 = v21;
    goto LABEL_17;
  }

  v22 = epp_copySubEndpoint(a4, cf, &v25);
  v23 = v22;
  if (v22)
  {
    epp_delegate_handleAuthRequired_cold_5(v22);
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  FigSimpleMutexUnlock();
  if (!v23)
  {
    if (v25)
    {
LABEL_22:
      v24 = malloc_type_calloc(1uLL, 0x20uLL, 0xE0040174B3136uLL);
      *v24 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
      v24[1] = CFRetain(a4);
      v24[2] = a6;
      v24[3] = a7;
      v16(a4, v25, a3, v17, a5, epp_delegate_handleAuthRequiredCallback, v24);
      if (!v17)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    epp_delegate_handleAuthRequired_cold_6();
    v23 = 4294960587;
    goto LABEL_36;
  }

LABEL_33:
  APSLogErrorAt();
LABEL_36:
  a6(a1, 0, v23, a7);
  if (v17)
  {
LABEL_23:
    CFRelease(v17);
  }

LABEL_24:
  if (v25)
  {
    CFRelease(v25);
  }
}

void epp_delegate_handleStreamsChanged(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v6 = DerivedStorage;
    FigSimpleMutexLock();
    v7 = *(v6 + 248);
    v10 = *(v6 + 240);
    FigSimpleMutexUnlock();
    if (v10)
    {
      if (v7)
      {
        v8 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v8)
        {
          v9 = v8;
          v10(a3, a2, v8);

          CFRelease(v9);
        }

        else
        {
          epp_delegate_handleStreamsChanged_cold_1();
        }
      }

      else
      {

        v10(a3, a2, 0);
      }
    }

    else
    {
      epp_delegate_handleStreamsChanged_cold_2();
    }
  }

  else
  {
    epp_delegate_handleStreamsChanged_cold_3();
  }
}

void epp_delegate_handleConnectedStateChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    v10 = DerivedStorage;
    FigSimpleMutexLock();
    v14 = *(v10 + 232);
    v11 = *(v10 + 248);
    FigSimpleMutexUnlock();
    if (v14)
    {
      if (v11)
      {
        v12 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v12)
        {
          v13 = v12;
          v14(a5, a2, a3, a4, v12);

          CFRelease(v13);
        }

        else
        {
          epp_delegate_handleConnectedStateChanged_cold_1();
        }
      }

      else
      {

        v14(a5, a2, a3, a4, 0);
      }
    }

    else
    {
      epp_delegate_handleConnectedStateChanged_cold_2();
    }
  }

  else
  {
    epp_delegate_handleConnectedStateChanged_cold_3();
  }
}

void epp_delegate_handleDidCloseCommChannel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v8 = DerivedStorage;
    FigSimpleMutexLock();
    v9 = *(v8 + 288);
    v12 = *(v8 + 280);
    FigSimpleMutexUnlock();
    if (v12)
    {
      if (v9)
      {
        v10 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v10)
        {
          v11 = v10;
          v12(a4, a2, a3, v10);

          CFRelease(v11);
        }

        else
        {
          epp_delegate_handleDidCloseCommChannel_cold_1();
        }
      }

      else
      {

        v12(a4, a2, a3, 0);
      }
    }

    else
    {
      epp_delegate_handleDidCloseCommChannel_cold_2();
    }
  }

  else
  {
    epp_delegate_handleDidCloseCommChannel_cold_3();
  }
}

void epp_delegate_handleDidReceiveDataFromCommChannel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    v10 = DerivedStorage;
    FigSimpleMutexLock();
    v14 = *(v10 + 272);
    v11 = *(v10 + 288);
    FigSimpleMutexUnlock();
    if (v14)
    {
      if (v11)
      {
        v12 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v12)
        {
          v13 = v12;
          v14(a5, a2, a3, a4, v12);

          CFRelease(v13);
        }

        else
        {
          epp_delegate_handleDidReceiveDataFromCommChannel_cold_1();
        }
      }

      else
      {

        v14(a5, a2, a3, a4, 0);
      }
    }

    else
    {
      epp_delegate_handleDidReceiveDataFromCommChannel_cold_2();
    }
  }

  else
  {
    epp_delegate_handleDidReceiveDataFromCommChannel_cold_3();
  }
}

void epp_delegate_handleIncomingRemoteControlSessionCreated(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v8 = DerivedStorage;
    FigSimpleMutexLock();
    v12 = *(v8 + 264);
    v9 = *(v8 + 288);
    FigSimpleMutexUnlock();
    if (v12)
    {
      if (v9)
      {
        v10 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v10)
        {
          v11 = v10;
          v12(a4, a2, a3, v10);

          CFRelease(v11);
        }

        else
        {
          epp_delegate_handleIncomingRemoteControlSessionCreated_cold_1();
        }
      }

      else
      {

        v12(a4, a2, a3, 0);
      }
    }

    else
    {
      epp_delegate_handleIncomingRemoteControlSessionCreated_cold_2();
    }
  }

  else
  {
    epp_delegate_handleIncomingRemoteControlSessionCreated_cold_3();
  }
}

uint64_t epp_delegate_handleSetProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a5)
  {
    epp_delegate_handleSetProperty_cold_3();
    return 4294949690;
  }

  v10 = DerivedStorage;
  FigSimpleMutexLock();
  v11 = *(v10 + 320);
  v16 = *(v10 + 312);
  FigSimpleMutexUnlock();
  if (!v16)
  {
    epp_delegate_handleSetProperty_cold_2();
    return 0;
  }

  if (v11)
  {
    v12 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v12)
    {
      v13 = v12;
      v14 = v16(a5, a2, a3, a4, v12);
      CFRelease(v13);
      return v14;
    }

    epp_delegate_handleSetProperty_cold_1();
    return 0;
  }

  return v16(a5, a2, a3, a4, 0);
}

uint64_t epp_delegate_handleCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a6)
  {
    epp_delegate_handleCopyProperty_cold_3();
    return 4294949690;
  }

  v12 = DerivedStorage;
  FigSimpleMutexLock();
  v18 = *(v12 + 304);
  v13 = *(v12 + 320);
  FigSimpleMutexUnlock();
  if (!v18)
  {
    epp_delegate_handleCopyProperty_cold_2();
    return 0;
  }

  if (v13)
  {
    v14 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v14)
    {
      v15 = v14;
      v16 = v18(a6, a2, a3, a4, a5, v14);
      CFRelease(v15);
      return v16;
    }

    epp_delegate_handleCopyProperty_cold_1();
    return 0;
  }

  return v18(a6, a2, a3, a4, a5, 0);
}

void epp_delegate_handleAuthRequiredCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(a4 + 16);
  v10 = epp_copyInner(a1);
  if (gLogCategory_APEndpointPlus <= 50 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    v11 = *DerivedStorage - 1;
    if (v11 > 2)
    {
      v12 = "<unknown>";
    }

    else
    {
      v12 = off_27849B040[v11];
    }

    LogPrintF(&gLogCategory_APEndpointPlus, "void epp_delegate_handleAuthRequiredCallback(FigEndpointRef _Nonnull, CFStringRef _Nullable, OSStatus, void * _Nullable)", 33554482, "[%{ptr}] Authorization request completion callback for inner %s [%{ptr}] result %#m", a1, v12, v10, a3);
  }

  if (v9)
  {
    v9(v10, a2, a3, *(a4 + 24));
    if (!v10)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  epp_delegate_handleAuthRequiredCallback_cold_1();
  if (v10)
  {
LABEL_11:
    CFRelease(v10);
  }

LABEL_12:
  if (*a4)
  {
    CFRelease(*a4);
  }

  v13 = *(a4 + 8);
  if (v13)
  {
    CFRelease(v13);
  }

  free(a4);
}

uint64_t APEndpointStreamAudioHoseAggregateCreate(const __CFAllocator *a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  cf = 0;
  if (!a2)
  {
    APEndpointStreamAudioHoseAggregateCreate_cold_10();
    return 4294894965;
  }

  if (!a4)
  {
    APEndpointStreamAudioHoseAggregateCreate_cold_9();
    v13 = 0;
    v20 = 4294894965;
    goto LABEL_22;
  }

  if (_MergedGlobals_2 != -1)
  {
    APEndpointStreamAudioHoseAggregateCreate_cold_1();
  }

  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    v20 = v8;
    APEndpointStreamAudioHoseAggregateCreate_cold_2(v8);
LABEL_34:
    v13 = 0;
    goto LABEL_22;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = FigSimpleMutexCreate();
  DerivedStorage[1] = v10;
  if (!v10)
  {
    v20 = 4294894966;
    APEndpointStreamAudioHoseAggregateCreate_cold_8();
    goto LABEL_34;
  }

  SNPrintF(v23, 64, "APEndpointStreamAudioHoseAggregate.%{ptr}.deregistration", cf);
  v11 = FigDispatchQueueCreateWithPriority();
  DerivedStorage[2] = v11;
  if (!v11)
  {
    v20 = 4294894966;
    APEndpointStreamAudioHoseAggregateCreate_cold_7();
    goto LABEL_34;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  DerivedStorage[3] = Mutable;
  if (!Mutable)
  {
    v20 = 4294894966;
    APEndpointStreamAudioHoseAggregateCreate_cold_6();
    goto LABEL_34;
  }

  if (a3)
  {
    v13 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v13)
    {
      v20 = 4294894966;
      APEndpointStreamAudioHoseAggregateCreate_cold_3();
LABEL_22:
      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_24;
    }

    CFDictionaryGetValue(a3, @"BBufBackingProvider");
    FigCFDictionarySetValue();
  }

  else
  {
    v13 = 0;
  }

  v14 = APTransportStreamAggregateCreate();
  if (v14)
  {
    v20 = v14;
    APEndpointStreamAudioHoseAggregateCreate_cold_4(v14);
    goto LABEL_22;
  }

  v15 = DerivedStorage[4];
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v16)
  {
    v20 = 4294954514;
LABEL_21:
    APSLogErrorAt();
    goto LABEL_22;
  }

  v17 = v16(v15);
  if (v17)
  {
    v20 = v17;
    goto LABEL_21;
  }

  DerivedStorage[5] = CFRetain(a2);
  if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 50 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || _LogCategory_Initialize()))
  {
    APEndpointStreamAudioHoseAggregateCreate_cold_5(&cf, v18, v19);
  }

  v20 = 0;
  *a4 = cf;
  cf = 0;
LABEL_24:
  if (v13)
  {
    CFRelease(v13);
  }

  return v20;
}

__CFString *hoseAggregate_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v3 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"<APEndpointStreamAudioHoseAggregate %p>", a1);
  }

  return v3;
}

uint64_t hoseAggregate_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    v10 = 4294894965;
    hoseAggregate_CopyProperty_cold_2();
    return v10;
  }

  v9 = DerivedStorage;
  if (FigCFEqual())
  {
    v10 = 0;
    *a4 = CFRetain(*MEMORY[0x277CBED28]);
  }

  else if (FigCFEqual())
  {
    context = 0;
    FigSimpleMutexLock();
    if (CFDictionaryGetCount(*(v9 + 24)) >= 1)
    {
      context = -1;
      CFDictionaryApplyFunction(*(v9 + 24), hoseAggregate_arrivalToRenderTicksApplier, &context);
    }

    FigSimpleMutexUnlock();
    Int64 = CFNumberCreateInt64();
    *a4 = Int64;
    if (Int64)
    {
      return 0;
    }

    else
    {
      hoseAggregate_CopyProperty_cold_1();
      return 4294894966;
    }
  }

  else
  {
    if (FigCFEqual())
    {
      CMBaseObject = FigTransportStreamGetCMBaseObject();
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v14)
      {
        v10 = v14(CMBaseObject, *MEMORY[0x277CE5078], a3, a4);
        if (!v10)
        {
          return v10;
        }
      }

      else
      {
        v10 = 4294954514;
      }

      APSLogErrorAt();
      return v10;
    }

    if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 50 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamAudioHoseAggregate, "OSStatus hoseAggregate_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554482, "[%{ptr}] %###s Unsupported propertyKey: '%@'\n", a1, "OSStatus hoseAggregate_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", a2);
    }

    return 4294954509;
  }

  return v10;
}

uint64_t hoseAggregate_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    hoseAggregate_SetProperty_cold_1();
    return 4294954511;
  }

  if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 30 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamAudioHoseAggregate, "OSStatus hoseAggregate_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "[%{ptr}] %###s propertyKey: '%@'\n", a1, "OSStatus hoseAggregate_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", a2);
  }

  if (FigCFEqual())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (!*DerivedStorage)
    {
      CFDictionaryApplyBlock();
      FigSimpleMutexUnlock();
      return 0;
    }

    hoseAggregate_SetProperty_cold_2((DerivedStorage + 8));
    return 4294954511;
  }

  return 4294954512;
}

uint64_t CMBaseObjectNotificationBarrier(uint64_t a1)
{
  v2 = *(CMBaseObjectGetVTable() + 8);
  if (*v2 < 2uLL)
  {
    return 4294954514;
  }

  v3 = v2[8];
  if (!v3)
  {
    return 4294954514;
  }

  return v3(a1);
}

unint64_t hoseAggregate_arrivalToRenderTicksApplier(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  result = APSGetFBOPropertyInt64();
  v5 = *a3;
  if (*a3 >= result)
  {
    v5 = result;
  }

  *a3 = v5;
  return result;
}

uint64_t __hoseAggregate_setPropertyOnSubHoses_block_invoke(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 20 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || _LogCategory_Initialize()))
  {
    __hoseAggregate_setPropertyOnSubHoses_block_invoke_cold_1(a1, a2);
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {

    return v9(a2, v4, v5);
  }

  return result;
}

__CFString *hoseAggregate_audioHoseProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v3 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"APEndpointStreamAudioHoseAggregate <APSEndpointStreamAudioHoseProtocol> on <%p>", a1);
  }

  return v3;
}

uint64_t hoseAggregate_audioHoseTimeAnnounce(uint64_t a1, int a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    hoseAggregate_audioHoseTimeAnnounce_cold_1();
    v4 = 4294954511;
  }

  else
  {
    CFDictionaryApplyBlock();
    v4 = 0;
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t hoseAggregate_audioHoseFlush(uint64_t a1, int a2, _OWORD *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a4)
  {
    hoseAggregate_audioHoseFlush_cold_1(&v8);
    v6 = v8;
  }

  else if (*DerivedStorage)
  {
    hoseAggregate_audioHoseFlush_cold_2();
    v6 = 4294954511;
  }

  else
  {
    CFDictionaryApplyBlock();
    v6 = 0;
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t __hoseAggregate_audioHoseTimeAnnounce_block_invoke(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 30 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamAudioHoseAggregate, "OSStatus hoseAggregate_audioHoseTimeAnnounce(APSEndpointStreamAudioHoseRef, OSType, CMBlockBufferRef)_block_invoke", 33554462, "[%{ptr}] Sent TimeAnnounce to %{ptr}\n", *(a1 + 32), a2);
  }

  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  APSEndpointStreamAudioHoseProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v8 = *(result + 16);
    result += 16;
    v7 = v8;
    if (v8)
    {
      v9 = *(v7 + 16);
      if (v9)
      {

        return v9(a2, v4, v5);
      }
    }
  }

  return result;
}

uint64_t __hoseAggregate_audioHoseFlush_block_invoke(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 30 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamAudioHoseAggregate, "OSStatus hoseAggregate_audioHoseFlush(APSEndpointStreamAudioHoseRef, uint32_t, APSAudioTransportTime, APSEndpointStreamAudioHoseFlushCompletionHandler, void *)_block_invoke", 33554462, "[%{ptr}] Flush %{ptr}\n", *(a1 + 32), a2);
  }

  v4 = *(a1 + 40);
  *v9 = *(a1 + 44);
  *&v9[12] = *(a1 + 56);
  APSEndpointStreamAudioHoseProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v7 = *(result + 16);
    result += 16;
    v6 = v7;
    if (v7)
    {
      v8 = *(v6 + 24);
      if (v8)
      {
        v10[0] = *v9;
        *(v10 + 12) = *&v9[12];
        return v8(a2, v4, v10, 0, 0);
      }
    }
  }

  return result;
}

__CFString *hoseAggregate_audioHoseRegistrarProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APEndpointStreamAudioHoseAggregate <APSEndpointStreamAudioHoseRegistrarProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t hoseAggregate_audioHoseRegistrarRegisterHose(uint64_t a1, const void *a2, const __CFDictionary *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v18 = 4294894965;
    hoseAggregate_audioHoseRegistrarRegisterHose_cold_6();
    return v18;
  }

  if (!a4)
  {
    v18 = 4294894965;
    hoseAggregate_audioHoseRegistrarRegisterHose_cold_5();
    return v18;
  }

  v9 = DerivedStorage;
  if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 50 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamAudioHoseAggregate, "OSStatus hoseAggregate_audioHoseRegistrarRegisterHose(APSEndpointStreamAudioHoseRegistrarRef, APSEndpointStreamAudioHoseRef, CFDictionaryRef, const APSEndpointStreamAudioHoseRegistrarCallbacks **)", 33554482, "[%{ptr}] Registering Hose with self: %{ptr}\n", a1, a2);
  }

  if (!a3 || (Value = CFDictionaryGetValue(a3, *MEMORY[0x277CEA0E0])) == 0 || (v11 = Value, v12 = CFGetTypeID(Value), v12 != FigTransportStreamGetTypeID()))
  {
    hoseAggregate_audioHoseRegistrarRegisterHose_cold_4(&v21);
    return v21;
  }

  FigSimpleMutexLock();
  if (*v9)
  {
    hoseAggregate_audioHoseRegistrarRegisterHose_cold_1();
    v18 = 4294954511;
LABEL_37:
    FigSimpleMutexUnlock();
    return v18;
  }

  if (CFDictionaryContainsKey(*(v9 + 24), a2))
  {
    hoseAggregate_audioHoseRegistrarRegisterHose_cold_2(&v20);
    v18 = v20;
    goto LABEL_37;
  }

  v13 = APTransportStreamAggregateAddSubStream();
  if (v13)
  {
    v18 = v13;
    hoseAggregate_audioHoseRegistrarRegisterHose_cold_3(v13);
    goto LABEL_37;
  }

  CFDictionaryAddValue(*(v9 + 24), a2, v11);
  v14 = *(v9 + 40);
  if (v14)
  {
    v15 = CFRetain(v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v9 + 48);
  if (v16 && *(v16 + 16))
  {
    v17 = *(v16 + 16);
  }

  else
  {
    v17 = 0;
  }

  FigSimpleMutexUnlock();
  if (v15 && v17)
  {
    v17(v15);
  }

  if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 30 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamAudioHoseAggregate, "OSStatus hoseAggregate_audioHoseRegistrarRegisterHose(APSEndpointStreamAudioHoseRegistrarRef, APSEndpointStreamAudioHoseRef, CFDictionaryRef, const APSEndpointStreamAudioHoseRegistrarCallbacks **)", 33554462, "[%{ptr}] Registered Hose %{ptr}\n", a1, a2);
  }

  *a4 = &gHoseAggregateCallbacks;
  if (v15)
  {
    CFRelease(v15);
  }

  return 0;
}

uint64_t hoseAggregate_hoseRegistrarGetMessageAtSequenceNumberCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*DerivedStorage && *(DerivedStorage + 56) && (v7 = *(DerivedStorage + 48)) != 0 && *v7)
  {
    if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 20 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamAudioHoseAggregate, "OSStatus hoseAggregate_hoseRegistrarGetMessageAtSequenceNumberCallback(void *, uint16_t, CMBlockBufferRef *)", 33554452, "[%{ptr}] Getting message at sequence number %d\n", a1, a2);
    }

    if (**(DerivedStorage + 48))
    {
      v9 = **(DerivedStorage + 48);
    }

    else
    {
      v9 = 0;
    }

    FigSimpleMutexUnlock();
    v10 = v9(*(DerivedStorage + 40), a2, a3);
    v8 = v10;
    if (v10)
    {
      hoseAggregate_hoseRegistrarGetMessageAtSequenceNumberCallback_cold_1(v10);
    }
  }

  else
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  return v8;
}

uint64_t hoseAggregate_hoseRegistrarTriggerTimeAnnounceCallback(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*DerivedStorage && *(DerivedStorage + 56) && (v3 = *(DerivedStorage + 48)) != 0 && *(v3 + 16))
  {
    if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 20 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || _LogCategory_Initialize()))
    {
      hoseAggregate_hoseRegistrarTriggerTimeAnnounceCallback_cold_1(a1);
    }

    if (*(*(DerivedStorage + 48) + 16))
    {
      v4 = *(*(DerivedStorage + 48) + 16);
    }

    else
    {
      v4 = 0;
    }

    FigSimpleMutexUnlock();
    v6 = v4(*(DerivedStorage + 40));
    v5 = v6;
    if (v6)
    {
      hoseAggregate_hoseRegistrarTriggerTimeAnnounceCallback_cold_2(v6);
    }
  }

  else
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  return v5;
}

void hoseAggregate_audioHoseRegistrarDeregisterHoseDispatchInternal(CFTypeRef *a1)
{
  v2 = *a1;
  v3 = a1[1];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v8 = 4294954511;
LABEL_28:
    FigSimpleMutexUnlock();
    goto LABEL_13;
  }

  if (!CFDictionaryContainsKey(*(DerivedStorage + 24), v3))
  {
    hoseAggregate_audioHoseRegistrarDeregisterHoseDispatchInternal_cold_2(v2, v3, &v11);
    v8 = v11;
    goto LABEL_28;
  }

  Value = CFDictionaryGetValue(*(DerivedStorage + 24), v3);
  if (Value)
  {
    v6 = CFRetain(Value);
  }

  else
  {
    v6 = 0;
  }

  CFDictionaryRemoveValue(*(DerivedStorage + 24), v3);
  v7 = APTransportStreamAggregateRemoveSubStream();
  v8 = v7;
  if (v7)
  {
    hoseAggregate_audioHoseRegistrarDeregisterHoseDispatchInternal_cold_1(v7);
  }

  else if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 20 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamAudioHoseAggregate, "OSStatus hoseAggregate_audioHoseRegistrarDeregisterHoseInternal(APSEndpointStreamAudioHoseRegistrarRef, APSEndpointStreamAudioHoseRef, CFDictionaryRef)", 33554452, "[%{ptr}] Deregistered Hose %{ptr}\n", v2, v3);
  }

  FigSimpleMutexUnlock();
  if (v6)
  {
    CFRelease(v6);
  }

LABEL_13:
  if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 50 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamAudioHoseAggregate, "OSStatus hoseAggregate_audioHoseRegistrarDeregisterHoseInternal(APSEndpointStreamAudioHoseRegistrarRef, APSEndpointStreamAudioHoseRef, CFDictionaryRef)", 33554482, "[%{ptr}] Deregisted Hose: %{ptr}; err: %d\n", v2, v3, v8);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v9 = a1[1];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[2];
  if (v10)
  {

    CFRelease(v10);
  }
}

uint64_t hoseAggregate_initClassIDOnce(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&hoseAggregate_initClassIDOnce_sAPEndpointStreamAudioHoseAggregateClassDesc, ClassID, 1, a1);
}

__CFString *carplaysource_CopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAudioSourceCarPlay>");
  return Mutable;
}

uint64_t carplaysource_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"BufferCapacityMS"))
  {
    UInt32 = FigCFNumberCreateUInt32();
    *a4 = UInt32;
    if (!UInt32)
    {
      v8 = 170;
      goto LABEL_12;
    }
  }

  if (!CFEqual(a2, @"PacketSizeLimit"))
  {
    if (!CFEqual(a2, @"VBRTestingBitRate"))
    {
      return 4294954512;
    }

    v9 = FigCFNumberCreateUInt32();
    *a4 = v9;
    if (!v9)
    {
      v8 = 180;
      goto LABEL_12;
    }

    return 0;
  }

  v7 = FigCFNumberCreateUInt32();
  *a4 = v7;
  if (v7)
  {
    return 0;
  }

  v8 = 175;
LABEL_12:
  carplaysource_CopyProperty_cold_1(v8);
  return 4294950526;
}

uint64_t carplaysource_GetOutputFormat(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 80);
  v5 = *(DerivedStorage + 64);
  *a2 = *(DerivedStorage + 48);
  *(a2 + 16) = v5;
  *(a2 + 32) = v4;
  return 0;
}

uint64_t carplaysource_Flush(uint64_t a1)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 0;
  }

  else
  {
    return 4294950524;
  }
}

void carplaysource_SuspendInternal(void *a1)
{
  v2 = a1[24];
  if (v2)
  {
    AudioConverterDispose(v2);
    a1[24] = 0;
  }

  MirroredRingBufferFree();
  v3 = a1[19];
  if (v3)
  {
    CFRelease(v3);
    a1[19] = 0;
  }

  v4 = a1[21];
  if (v4)
  {
    CFRelease(v4);
    a1[21] = 0;
  }

  v5 = a1[22];
  if (v5)
  {
    CFRelease(v5);
    a1[22] = 0;
  }

  v6 = a1[18];
  if (v6)
  {
    a1[18] = 0;

    free(v6);
  }
}

void __carplaysource_scheduleReadinessCallbackAfterTimeNs_block_invoke_2(uint64_t a1)
{
  carplaysource_ReadinessCallback(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t APHTTPProxyMonitorClientRegisterHTTPProxyMonitor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [APHTTPProxyMonitorClientManager obtainSharedInstanceOrCreate:1];
  if (v8)
  {
    v9 = [v8 setMonitorCallbackIfNotExists:a4 forKey:a1 forLink:a2 forIP:a3];
  }

  else
  {
    APHTTPProxyMonitorClientRegisterHTTPProxyMonitor_cold_1();
    v9 = 4294960568;
  }

  if (gLogCategory_APHTTPProxyMonitorClient <= 30 && (gLogCategory_APHTTPProxyMonitorClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APHTTPProxyMonitorClient, "OSStatus APHTTPProxyMonitorClientRegisterHTTPProxyMonitor(CFTypeRef, Boolean, CFStringRef _Nullable, HTTPProxyParamterChangedHandler)", 33554462, "RegisterHTTPProxyMonitor: key = %{ptr},  err = %#m", a1, v9);
  }

  return v9;
}

uint64_t APHTTPProxyMonitorClientUnregisterHTTPProxyMonitor(uint64_t a1)
{
  v2 = [APHTTPProxyMonitorClientManager obtainSharedInstanceOrCreate:0];
  if (v2)
  {
    v3 = [v2 removeMonitorClientForKey:a1];
  }

  else
  {
    APHTTPProxyMonitorClientUnregisterHTTPProxyMonitor_cold_1();
    v3 = 4294960587;
  }

  if (gLogCategory_APHTTPProxyMonitorClient <= 30 && (gLogCategory_APHTTPProxyMonitorClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APHTTPProxyMonitorClient, "OSStatus APHTTPProxyMonitorClientUnregisterHTTPProxyMonitor(CFTypeRef)", 33554462, "UnregisterHTTPProxyMonitor: key = %{ptr},  err = %#m", a1, v3);
  }

  return v3;
}

uint64_t APAudioEngineVendorGetTypeID(uint64_t a1, uint64_t a2)
{
  if (gAPAudioEngineVendorInitOnce != -1)
  {
    APAudioEngineVendorGetTypeID_cold_1();
  }

  return gAPAudioEngineVendorTypeID;
}

uint64_t _APAudioEngineVendorGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPAudioEngineVendorTypeID = result;
  return result;
}

uint64_t APAudioEngineVendorCreate(const void *a1, const void *a2, uint64_t (*a3)(CFAllocatorRef, void, void, void *), void *a4)
{
  if (a3)
  {
    if (gAPAudioEngineVendorInitOnce != -1)
    {
      APAudioEngineVendorGetTypeID_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v9 = Instance;
      *(Instance + 16) = 0u;
      *(Instance + 32) = 0u;
      v10 = (Instance + 16);
      if (a1)
      {
        v11 = CFRetain(a1);
      }

      else
      {
        v11 = 0;
      }

      *v10 = v11;
      if (a2)
      {
        v12 = CFRetain(a2);
      }

      else
      {
        v12 = 0;
      }

      v9[3] = v12;
      v9[4] = a3;
      v13 = CFGetAllocator(v9);
      v14 = a3(v13, v9[2], v9[3], v9 + 5);
      if (v14)
      {
        v15 = v14;
        APAudioEngineVendorCreate_cold_2(v14, v9);
      }

      else
      {
        if (gLogCategory_APAudioEngineVendor <= 50 && (gLogCategory_APAudioEngineVendor != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APAudioEngineVendor, "OSStatus APAudioEngineVendorCreate(APSNetworkClockRef, CFDictionaryRef, APAudioEngineCreationFunc, APAudioEngineVendorRef *)", 33554482, "[%{ptr}] Created internal engine [%{ptr}]", v9, v9[5]);
        }

        v15 = 0;
        *a4 = v9;
      }
    }

    else
    {
      APAudioEngineVendorCreate_cold_3();
      return 4294960568;
    }
  }

  else
  {
    APAudioEngineVendorCreate_cold_4();
    return 4294960591;
  }

  return v15;
}

uint64_t APAudioEngineVendorVend(void *cf, uint64_t a2)
{
  v8 = cf[4];
  v4 = CFGetAllocator(cf);
  v5 = cf[2];
  v6 = cf[3];

  return v8(v4, v5, v6, a2);
}

void _APAudioEngineVendorFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t endpointAggregate_createInternal(uint64_t a1, int a2, const void *a3, const void *a4, char a5, int a6, int a7, uint64_t a8, const void *a9, const __CFDictionary *a10, CFTypeRef *a11)
{
  v59 = *MEMORY[0x277D85DE8];
  v55 = 0;
  v56 = 0;
  FigEndpointAggregateGetClassID();
  v19 = CMDerivedObjectCreate();
  v54 = v19;
  if (v19)
  {
    endpointAggregate_createInternal_cold_1(v19);
    return v54;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = DerivedStorage;
  DerivedStorage[456] = a5;
  DerivedStorage[457] = a6;
  if (a6)
  {
    v22 = a7 == 0;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  DerivedStorage[458] = v23;
  if (!FigCFDictionaryGetBooleanIfPresent())
  {
    v21[464] = APSMultiPrimariesEnabled();
  }

  v21[465] = APSSettingsIsFeatureEnabled();
  if (FigCFDictionaryGetIntIfPresent())
  {
    DeviceClass = 0;
  }

  else
  {
    DeviceClass = GestaltGetDeviceClass();
  }

  *(v21 + 122) = DeviceClass;
  if (a10)
  {
    Value = CFDictionaryGetValue(a10, @"aggregateIsMemberOfHTGroup");
    *(v21 + 59) = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    v26 = CFDictionaryGetValue(a10, @"aggregateIsPersistentConnectionOverride");
    *(v21 + 60) = v26;
    if (v26)
    {
      CFRetain(v26);
    }

    if (a9)
    {
      goto LABEL_19;
    }
  }

  else
  {
    *(v21 + 59) = 0;
    *(v21 + 60) = 0;
    if (a9)
    {
LABEL_19:
      v27 = CFRetain(a9);
      goto LABEL_22;
    }
  }

  v27 = 0;
LABEL_22:
  *(v21 + 56) = v27;
  v28 = FigSimpleMutexCreate();
  *v21 = v28;
  if (v28)
  {
    if (a3)
    {
      v29 = CFRetain(a3);
    }

    else
    {
      UUIDGet();
      v30 = UUIDtoCString();
      v29 = CFStringCreateWithCString(0, v30, 0x8000100u);
    }

    *(v21 + 54) = v29;
    if (v29)
    {
      if (a7)
      {
        if (!a6)
        {
          endpointAggregate_createInternal_cold_3(&v54);
          return v54;
        }

        v31 = APEndpointLocalCreate(a1, v21 + 52);
        v54 = v31;
        if (v31)
        {
          endpointAggregate_createInternal_cold_2(v31);
          return v54;
        }
      }

      v32 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], &endpointAggregate_createInternal_subEndpointEntryDictionaryCallbacks);
      *(v21 + 1) = Mutable;
      if (Mutable)
      {
        v34 = CFArrayCreateMutable(v32, 0, MEMORY[0x277CBF128]);
        *(v21 + 4) = v34;
        if (v34)
        {
          if (a2)
          {
            if (a2 == 2)
            {
              v35 = "CL";
            }

            else
            {
              v35 = "?";
              if (a2 == 3)
              {
                v35 = "SP";
              }
            }
          }

          else
          {
            v35 = "SM";
          }

          SNPrintF(label, 100, "APEndpointAggregate.%s-%s-[%{ptr}].activation", v58, v35, 0);
          v36 = dispatch_queue_create(label, 0);
          *(v21 + 49) = v36;
          if (v36)
          {
            if (a2)
            {
              if (a2 == 2)
              {
                v37 = "CL";
              }

              else
              {
                v37 = "?";
                if (a2 == 3)
                {
                  v37 = "SP";
                }
              }
            }

            else
            {
              v37 = "SM";
            }

            SNPrintF(label, 100, "APEndpointAggregate.%s-%s-[%{ptr}].notification", v58, v37, 0);
            v38 = dispatch_queue_create(label, 0);
            *(v21 + 50) = v38;
            if (v38)
            {
              *(v21 + 102) = a2;
              *(v21 + 55) = a8;
              v21[162] = *(v21 + 122) == 4;
              v21[162] = FigGetCFPreferenceNumberWithDefault();
              *(v21 + 45) = 0;
              v39 = CFGetAllocator(0);
              v40 = CFDictionaryCreateMutable(v39, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              *(v21 + 13) = v40;
              if (v40)
              {
                v41 = CFGetAllocator(0);
                v42 = CFDictionaryCreateMutable(v41, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                *(v21 + 16) = v42;
                if (v42)
                {
                  v43 = CFGetAllocator(0);
                  v44 = CFDictionaryCreateMutable(v43, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  *(v21 + 21) = v44;
                  if (v44)
                  {
                    v45 = CFGetAllocator(0);
                    v46 = CFDictionaryCreateMutable(v45, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                    *(v21 + 17) = v46;
                    if (v46)
                    {
                      v47 = CFDictionaryCreateMutable(v32, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                      *(v21 + 47) = v47;
                      if (v47)
                      {
                        if (a4)
                        {
                          *(v21 + 53) = CFRetain(a4);
                        }

                        else
                        {
                          v48 = *(v21 + 102);
                          if (v48)
                          {
                            if (v48 == 2)
                            {
                              v49 = "CL";
                            }

                            else if (v48 == 3)
                            {
                              v49 = "SP";
                            }

                            else
                            {
                              v49 = "?";
                            }
                          }

                          else
                          {
                            v49 = "SM";
                          }

                          v50 = CFStringCreateF(&v54, "APEndpointAggregate-%s-[%{ptr}]", v49, 0);
                          v51 = v54;
                          *(v21 + 53) = v50;
                          if (v51)
                          {
                            endpointAggregate_createInternal_cold_4(v51);
                            return v54;
                          }
                        }

                        if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
                        {
                          if (a2)
                          {
                            if (a2 == 2)
                            {
                              v52 = "CL";
                            }

                            else
                            {
                              v52 = "?";
                              if (a2 == 3)
                              {
                                v52 = "SP";
                              }
                            }
                          }

                          else
                          {
                            v52 = "SM";
                          }

                          LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_createInternal(CFAllocatorRef, FigEndpointAggregateType, CFStringRef, CFStringRef, Boolean, Boolean, Boolean, FigEndpointRef, APSNetworkClockRef, CFDictionaryRef, FigEndpointRef *)", 33554482, "APEndpointAggregate (%s) created: [%{ptr}], uuid: %@, owner endpoint [%{ptr}], shared clock [%{ptr}].\n", v52, 0, *(v21 + 54), *(v21 + 55), *(v21 + 56));
                        }

                        *a11 = 0;
                      }

                      else
                      {
                        endpointAggregate_createInternal_cold_5();
                      }
                    }

                    else
                    {
                      endpointAggregate_createInternal_cold_6();
                    }
                  }

                  else
                  {
                    endpointAggregate_createInternal_cold_7();
                  }
                }

                else
                {
                  endpointAggregate_createInternal_cold_8();
                }
              }

              else
              {
                endpointAggregate_createInternal_cold_9();
              }
            }

            else
            {
              endpointAggregate_createInternal_cold_10();
            }
          }

          else
          {
            endpointAggregate_createInternal_cold_11();
          }
        }

        else
        {
          endpointAggregate_createInternal_cold_12();
        }
      }

      else
      {
        endpointAggregate_createInternal_cold_13();
      }
    }

    else
    {
      endpointAggregate_createInternal_cold_14();
    }
  }

  else
  {
    endpointAggregate_createInternal_cold_15();
  }

  return v54;
}

void endpointAggregate_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage[50];
  if (v3)
  {
    dispatch_release(v3);
    DerivedStorage[50] = 0;
  }

  v4 = DerivedStorage[49];
  if (v4)
  {
    dispatch_release(v4);
    DerivedStorage[49] = 0;
  }

  FigSimpleMutexDestroy();
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointAggregate, "void endpointAggregate_Finalize(CMBaseObjectRef)", 33554482, "APEndpointAggregate destroyed: [%{ptr}], uuid: %@.\n", a1, DerivedStorage[54]);
  }

  v5 = DerivedStorage[31];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[31] = 0;
  }

  v6 = DerivedStorage[32];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[32] = 0;
  }

  v7 = DerivedStorage[8];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[8] = 0;
  }

  v8 = DerivedStorage[9];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[9] = 0;
  }

  v9 = DerivedStorage[10];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[10] = 0;
  }

  v10 = DerivedStorage[11];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[11] = 0;
  }

  v11 = DerivedStorage[13];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[13] = 0;
  }

  v12 = DerivedStorage[14];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[14] = 0;
  }

  v13 = DerivedStorage[1];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[1] = 0;
  }

  v14 = DerivedStorage[3];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[3] = 0;
  }

  v15 = DerivedStorage[4];
  if (v15)
  {
    CFRelease(v15);
    DerivedStorage[4] = 0;
  }

  v16 = DerivedStorage[16];
  if (v16)
  {
    CFRelease(v16);
    DerivedStorage[16] = 0;
  }

  v17 = DerivedStorage[17];
  if (v17)
  {
    CFRelease(v17);
    DerivedStorage[17] = 0;
  }

  v18 = DerivedStorage[21];
  if (v18)
  {
    CFRelease(v18);
    DerivedStorage[21] = 0;
  }

  v19 = DerivedStorage[18];
  if (v19)
  {
    CFRelease(v19);
    DerivedStorage[18] = 0;
  }

  v20 = DerivedStorage[19];
  if (v20)
  {
    CFRelease(v20);
    DerivedStorage[19] = 0;
  }

  v21 = DerivedStorage[42];
  if (v21)
  {
    CFRelease(v21);
    DerivedStorage[42] = 0;
  }

  v22 = DerivedStorage[47];
  if (v22)
  {
    CFRelease(v22);
    DerivedStorage[47] = 0;
  }

  v23 = DerivedStorage[56];
  if (v23)
  {
    CFRelease(v23);
    DerivedStorage[56] = 0;
  }

  v24 = DerivedStorage[54];
  if (v24)
  {
    CFRelease(v24);
    DerivedStorage[54] = 0;
  }

  v25 = DerivedStorage[52];
  if (v25)
  {
    CFRelease(v25);
    DerivedStorage[52] = 0;
  }

  v26 = DerivedStorage[53];
  if (v26)
  {
    CFRelease(v26);
    DerivedStorage[53] = 0;
  }

  v27 = DerivedStorage[48];
  if (v27)
  {
    CFRelease(v27);
    DerivedStorage[48] = 0;
  }

  v28 = DerivedStorage[59];
  if (v28)
  {
    CFRelease(v28);
    DerivedStorage[59] = 0;
  }

  v29 = DerivedStorage[60];
  if (v29)
  {
    CFRelease(v29);
    DerivedStorage[60] = 0;
  }
}

uint64_t endpointAggregate_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  if (gLogCategory_APEndpointAggregate <= 10 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554442, "[%{ptr}] %###s propertyKey: '%@'\n", a1, "OSStatus endpointAggregate_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", a2);
  }

  if (a2)
  {
    if (CFEqual(a2, *MEMORY[0x277CC1450]))
    {
      v9 = *(DerivedStorage + 424);
LABEL_15:
      v11 = CFRetain(v9);
LABEL_16:
      v12 = 0;
      *a4 = v11;
      return v12;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1498]))
    {
      if (*(DerivedStorage + 64))
      {
        v9 = *(DerivedStorage + 64);
      }

      else
      {
        v9 = *MEMORY[0x277CC11D8];
      }

      goto LABEL_15;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1568]))
    {
      v10 = MEMORY[0x277CC1A20];
LABEL_14:
      v9 = *v10;
      goto LABEL_15;
    }

    if (CFEqual(a2, *MEMORY[0x277CC14F0]))
    {
      v14 = *(DerivedStorage + 408);
      if (v14 == 3)
      {
        v10 = MEMORY[0x277CC1998];
      }

      else if (v14 == 2)
      {
        v10 = MEMORY[0x277CC1988];
      }

      else
      {
        if (v14)
        {
          v9 = @"Unknown";
          goto LABEL_15;
        }

        v10 = MEMORY[0x277CC1990];
      }

      goto LABEL_14;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1278]))
    {
LABEL_24:
      v10 = MEMORY[0x277CBED10];
      goto LABEL_14;
    }

    if (CFEqual(a2, *MEMORY[0x277CC13F0]))
    {
      v10 = MEMORY[0x277CBED28];
      if (*(DerivedStorage + 408) != 3)
      {
        v10 = MEMORY[0x277CBED10];
      }

      goto LABEL_14;
    }

    if (CFEqual(a2, *MEMORY[0x277CC14F8]))
    {
      if (*(DerivedStorage + 408) == 3)
      {
        valuePtr = 16;
      }

      else
      {
        valuePtr = 10;
        if (APSIsLowLatencyAudioSendingEnabled() && *(DerivedStorage + 408) == 2 && *(DerivedStorage + 456))
        {
          valuePtr = 42;
          v15 = 46;
        }

        else
        {
          v15 = 14;
        }

        v16 = *(CMBaseObjectGetDerivedStorage() + 488);
        if (v16 > 0xD || ((1 << v16) & 0x2090) == 0)
        {
          valuePtr = v15;
        }
      }

      v11 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
      if (v11)
      {
        goto LABEL_16;
      }

      endpointAggregate_CopyProperty_cold_1();
      v12 = 4294950575;
    }

    else
    {
      if (CFEqual(a2, @"SupportsMuteControl"))
      {
        goto LABEL_24;
      }

      FigSimpleMutexLock();
      v12 = endpointAggregate_copyPropertyInternal(a1, a2, a3, &v18);
      FigSimpleMutexUnlock();
      if (!v12)
      {
        v11 = v18;
        goto LABEL_16;
      }

      if (v12 == -12784)
      {
        return v12;
      }
    }
  }

  else
  {
    endpointAggregate_CopyProperty_cold_2();
    v12 = 4294950536;
  }

  if (gLogCategory_APEndpointAggregate <= 90 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554522, "[%{ptr}] propertyKey = %@, err = %#m\n", a1, a2, v12);
  }

  return v12;
}

uint64_t endpointAggregate_SetProperty(const void *a1, const void *a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554482, "[%{ptr}] %###s propertyKey: '%@', propertyValue: '%@'\n", a1, "OSStatus endpointAggregate_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", a2, a3);
  }

  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    endpointAggregate_SetProperty_cold_11();
LABEL_44:
    v9 = 4294950576;
    goto LABEL_23;
  }

  v7 = DerivedStorage;
  if (!CFEqual(a2, *MEMORY[0x277CC0A40]))
  {
    if (CFEqual(a2, *MEMORY[0x277CC15A8]) || CFEqual(a2, *MEMORY[0x277CC15C0]) || CFEqual(a2, @"HALVolumeDB"))
    {
      if (*(v7 + 408) != 3)
      {
        v9 = endpointAggregate_setPropertyOnAllSubEndpoints(a1, a2, a3);
        goto LABEL_23;
      }

      endpointAggregate_SetProperty_cold_7();
    }

    else
    {
      if (!CFEqual(a2, *MEMORY[0x277CC13D0]) && !CFEqual(a2, @"IsHALMuted") && !CFEqual(a2, *MEMORY[0x277CC13D8]) && !CFEqual(a2, *MEMORY[0x277CC13E0]))
      {
        if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
        {
          endpointAggregate_SetProperty_cold_10(a2);
        }

        v9 = 4294954512;
        goto LABEL_23;
      }

      if (*(v7 + 408) != 3)
      {
        v12 = endpointAggregate_setPropertyOnAllSubEndpoints(a1, a2, a3);
        v9 = v12;
        if (v12)
        {
          endpointAggregate_SetProperty_cold_8(v12);
        }

        goto LABEL_23;
      }

      endpointAggregate_SetProperty_cold_9();
    }

LABEL_48:
    v9 = 4294950570;
    goto LABEL_23;
  }

  if (!a3)
  {
    endpointAggregate_SetProperty_cold_6();
    goto LABEL_44;
  }

  v8 = CFGetTypeID(a3);
  if (v8 != CFBooleanGetTypeID())
  {
    endpointAggregate_SetProperty_cold_1();
    goto LABEL_44;
  }

  if (*(v7 + 408) == 3)
  {
    endpointAggregate_SetProperty_cold_5();
    goto LABEL_48;
  }

  if (!*(v7 + 457))
  {
    endpointAggregate_SetProperty_cold_4();
    v9 = 4294954509;
    goto LABEL_23;
  }

  if (endpointAggregate_isATVInHTGroup(a1))
  {
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      endpointAggregate_SetProperty_cold_2(a1);
    }

    goto LABEL_22;
  }

  Value = CFBooleanGetValue(a3);
  if (*(v7 + 160) == Value)
  {
LABEL_22:
    v9 = 0;
    goto LABEL_23;
  }

  v13 = Value;
  *(v7 + 160) = Value;
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_setPropertyInternal(FigEndpointRef, CFStringRef, CFTypeRef)", 33554482, "[%{ptr}] Local playback requested %d\n", a1, v13);
  }

  IsEnabledOrDisabled = endpointAggregate_ensureLocalPlaybackIsEnabledOrDisabled(a1);
  v9 = IsEnabledOrDisabled;
  if (IsEnabledOrDisabled)
  {
    endpointAggregate_SetProperty_cold_3(IsEnabledOrDisabled);
  }

LABEL_23:
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t endpointAggregate_copyPropertyInternal(uint64_t a1, const void *a2, const __CFAllocator *a3, void **a4)
{
  isMuted = 0;
  v33 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    endpointAggregate_copyPropertyInternal_cold_10(&isMuted);
    return isMuted;
  }

  v9 = DerivedStorage;
  v10 = *MEMORY[0x277CC1370];
  if (!CFEqual(a2, *MEMORY[0x277CC1370]) && !CFEqual(a2, *MEMORY[0x277CC1368]) && *(v9 + 44))
  {
    endpointAggregate_copyPropertyInternal_cold_1(&isMuted);
    return isMuted;
  }

  if (CFEqual(a2, v10))
  {
    v11 = MEMORY[0x277CBED28];
    v12 = MEMORY[0x277CBED10];
    v13 = *(v9 + 40) == 2;
LABEL_7:
    if (!v13)
    {
      v11 = v12;
    }

    goto LABEL_9;
  }

  if (CFEqual(a2, *MEMORY[0x277CC11E8]))
  {
    valuePtr = 0;
    if (*(v9 + 40) == 2)
    {
      valuePtr = *(v9 + 56);
    }

    v33 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
    if (v33)
    {
      goto LABEL_16;
    }

    APSLogErrorAt();
    return -16721;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1368]))
  {
    v14 = *(v9 + 432);
    goto LABEL_10;
  }

  if (CFEqual(a2, *MEMORY[0x277CC0A40]))
  {
    if (!*(v9 + 457))
    {
      endpointAggregate_copyPropertyInternal_cold_2(&isMuted);
      return isMuted;
    }

    v11 = MEMORY[0x277CBED10];
    v12 = MEMORY[0x277CBED28];
    v13 = *(v9 + 160) == 0;
    goto LABEL_7;
  }

  if (CFEqual(a2, *MEMORY[0x277CC14B0]))
  {
    v14 = *(v9 + 72);
    if (!v14)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (!CFEqual(a2, @"EnabledFeatures"))
  {
    if (CFEqual(a2, *MEMORY[0x277CC14E0]))
    {
      v15 = endpointAggregate_copyStreams(a1, a3, &v33);
      goto LABEL_35;
    }

    if (CFEqual(a2, *MEMORY[0x277CC14E8]))
    {
      v15 = endpointAggregate_copyExposedSubEndpoints(a1, &v33);
      goto LABEL_35;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1228]))
    {
      v11 = MEMORY[0x277CBED28];
      v18 = *(v9 + 344);
LABEL_42:
      v19 = MEMORY[0x277CBED10];
      v20 = v18 == 0;
      goto LABEL_43;
    }

    if (CFEqual(a2, *MEMORY[0x277CC15B0]))
    {
      v11 = MEMORY[0x277CBED28];
      v18 = *(v9 + 352);
      goto LABEL_42;
    }

    if (CFEqual(a2, *MEMORY[0x277CC15B8]))
    {
      v33 = CFNumberCreate(a3, kCFNumberSInt64Type, (v9 + 360));
      if (!v33)
      {
        endpointAggregate_copyPropertyInternal_cold_5();
        return isMuted;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1448]))
    {
      v11 = MEMORY[0x277CBED28];
      v18 = *(v9 + 368);
      goto LABEL_42;
    }

    if (CFEqual(a2, *MEMORY[0x277CC15C0]) || CFEqual(a2, @"HALVolumeDB") || CFEqual(a2, *MEMORY[0x277CC15A8]))
    {
      v15 = endpointAggregate_copyPropertyFromAnySubEndpoint(a1, a2, a3, &v33);
      goto LABEL_35;
    }

    if (CFEqual(a2, *MEMORY[0x277CC13D0]) || CFEqual(a2, @"IsHALMuted") || CFEqual(a2, *MEMORY[0x277CC13D8]) || CFEqual(a2, *MEMORY[0x277CC13E0]))
    {
      LOBYTE(valuePtr) = 0;
      isMuted = endpointAggregate_isMuted(a1, a2, &valuePtr);
      if (isMuted)
      {
        APSLogErrorAt();
        return isMuted;
      }

      v11 = MEMORY[0x277CBED28];
      v18 = valuePtr;
      goto LABEL_42;
    }

    if (CFEqual(a2, @"EndpointShowInfo"))
    {
      v15 = endpointAggregate_copyShowInfoDict(a1, &v33);
      goto LABEL_35;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1208]) || CFEqual(a2, *MEMORY[0x277CC1218]) || CFEqual(a2, *MEMORY[0x277CC1230]) || CFEqual(a2, *MEMORY[0x277CC1518]) || CFEqual(a2, *MEMORY[0x277CC1520]))
    {
      v14 = *(v9 + 152);
      if (v14)
      {
LABEL_74:
        v14 = endpointAggregate_copySubEndpointProperty(v14, a3, a2, &isMuted);
        goto LABEL_11;
      }

      v11 = MEMORY[0x277CBED10];
LABEL_9:
      v14 = *v11;
LABEL_10:
      v14 = CFRetain(v14);
LABEL_11:
      v33 = v14;
      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x277CC12F0]) || CFEqual(a2, *MEMORY[0x277CC1318]) || CFEqual(a2, *MEMORY[0x277CC1308]) || CFEqual(a2, *MEMORY[0x277CC1310]) || CFEqual(a2, *MEMORY[0x277CC1320]) || CFEqual(a2, *MEMORY[0x277CC1588]))
    {
      v14 = *(v9 + 152);
      if (v14)
      {
        goto LABEL_74;
      }

      v11 = MEMORY[0x277CBED28];
      goto LABEL_9;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1238]))
    {
      v22 = *(v9 + 152);
      if (v22)
      {
        Int64 = endpointAggregate_copySubEndpointProperty(v22, a3, a2, &isMuted);
      }

      else
      {
        Int64 = CFNumberCreateInt64();
      }

      v33 = Int64;
      if (!Int64)
      {
        endpointAggregate_copyPropertyInternal_cold_6();
        return isMuted;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x277CC12F8]) || CFEqual(a2, *MEMORY[0x277CC1300]))
    {
      v14 = *(v9 + 152);
      if (!v14)
      {
        goto LABEL_11;
      }

      goto LABEL_74;
    }

    if (CFEqual(a2, *MEMORY[0x277CC13F8]))
    {
      v11 = MEMORY[0x277CBED28];
      v19 = MEMORY[0x277CBED10];
      v20 = *(v9 + 152) == 0;
LABEL_43:
      if (v20)
      {
        v11 = v19;
      }

      goto LABEL_9;
    }

    if (CFEqual(a2, @"IsEngaged"))
    {
      v11 = MEMORY[0x277CBED28];
      v18 = *(v9 + 45);
      goto LABEL_42;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1570]))
    {
      v14 = *(v9 + 144);
      if (!v14)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1340]))
    {
      v24 = *(v9 + 88);
      if (v24)
      {
        v33 = CFRetain(v24);
        if (v33)
        {
          goto LABEL_16;
        }
      }

      APSLogErrorAt();
      return -17606;
    }

    if (CFEqual(a2, *MEMORY[0x277CC12A0]))
    {
      if (*(v9 + 408) == 2)
      {
        v25 = endpointAggregate_copyClusterActivatedCompositionAsArray(a1, &v33);
        isMuted = v25;
        if (v25)
        {
          endpointAggregate_copyPropertyInternal_cold_7(v25);
          return isMuted;
        }

        goto LABEL_17;
      }

      return -16726;
    }

    if (!CFEqual(a2, *MEMORY[0x277CC12D0]))
    {
      if (!CFEqual(a2, *MEMORY[0x277CC1290]))
      {
        return -12784;
      }

      Value = CFDictionaryGetValue(*(v9 + 128), *MEMORY[0x277CC1968]);
      if (!Value)
      {
        endpointAggregate_copyPropertyInternal_cold_9(&isMuted, a1);
        return isMuted;
      }

      v15 = FigEndpointStreamCopyProperty(Value, *MEMORY[0x277CC18B8], a3, &v33);
LABEL_35:
      isMuted = v15;
      if (!v15)
      {
        goto LABEL_17;
      }

LABEL_36:
      endpointAggregate_copyPropertyInternal_cold_8(v15);
      return isMuted;
    }

    v26 = FigCFDictionaryCopyArrayOfKeys();
    if (v26)
    {
      v27 = v26;
      if (CFArrayGetCount(v26) < 1)
      {
        CFRelease(v27);
      }

      else
      {
        v28 = 0;
        v29 = 0;
        do
        {
          CFArrayGetValueAtIndex(v27, v29);
          v28 |= APSGetFBOPropertyInt64() != 0;
          ++v29;
        }

        while (v29 < CFArrayGetCount(v27));
        CFRelease(v27);
        if (v28)
        {
          v30 = MEMORY[0x277CBED28];
          goto LABEL_123;
        }
      }
    }

    v30 = MEMORY[0x277CBED10];
LABEL_123:
    v14 = *v30;
    if (!*v30)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  valuePtr = 0;
  EnabledFeatures = APEndpointGetEnabledFeatures(*(v9 + 128), *(v9 + 152) != 0, &valuePtr);
  isMuted = EnabledFeatures;
  if (EnabledFeatures)
  {
    endpointAggregate_copyPropertyInternal_cold_3(EnabledFeatures);
    return isMuted;
  }

  v33 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
  if (!v33)
  {
    endpointAggregate_copyPropertyInternal_cold_4();
    return isMuted;
  }

LABEL_16:
  v15 = isMuted;
  if (isMuted)
  {
    goto LABEL_36;
  }

LABEL_17:
  *a4 = v33;
  return isMuted;
}

uint64_t endpointAggregate_copyStreams(uint64_t a1, const __CFAllocator *a2, __CFArray **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    endpointAggregate_copyStreams_cold_2();
    return 4294950576;
  }

  v7 = DerivedStorage;
  Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    endpointAggregate_copyStreams_cold_1();
    return 4294950575;
  }

  v9 = Mutable;
  v10 = FigCFDictionaryCopyArrayOfValues();
  v11 = v10;
  if (v10)
  {
    v15.length = CFArrayGetCount(v10);
    v15.location = 0;
    CFArrayAppendArray(v9, v11, v15);
  }

  v12 = *(v7 + 48);
  if (v12)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_9:
    if (endpointAggregate_getFirstSubEndpointActivatedForFeatures(a1, 1))
    {
      FigEndpointCopyFirstStreamOfType();
    }

    goto LABEL_11;
  }

  if (*(v7 + 56))
  {
    goto LABEL_9;
  }

LABEL_11:
  *a3 = v9;
  if (v11)
  {
    CFRelease(v11);
  }

  return 0;
}

uint64_t endpointAggregate_copyExposedSubEndpoints(uint64_t a1, __CFArray **a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigCFDictionaryCopyArrayOfKeys();
  if (v5)
  {
    v6 = v5;
    Count = CFArrayGetCount(v5);
    v8 = *(DerivedStorage + 416);
    if (v8 && (v9 = Count, v13.location = 0, v13.length = Count, CFArrayContainsValue(v6, v13, v8)))
    {
      MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v6);
      v14.location = 0;
      v14.length = v9;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v6, v14, *(DerivedStorage + 416));
      if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
      {
        endpointAggregate_copyExposedSubEndpoints_cold_1(a1);
      }

      CFArrayRemoveValueAtIndex(MutableCopy, FirstIndexOfValue);
      if (!a2)
      {
        goto LABEL_8;
      }
    }

    else
    {
      MutableCopy = CFRetain(v6);
      if (!a2)
      {
LABEL_8:
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        goto LABEL_12;
      }
    }

    *a2 = MutableCopy;
LABEL_12:
    CFRelease(v6);
    return 0;
  }

  endpointAggregate_copyExposedSubEndpoints_cold_2();
  return 4294949690;
}

uint64_t endpointAggregate_copyPropertyFromAnySubEndpoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_copyPropertyFromAnySubEndpoint(FigEndpointRef, CFStringRef, CFAllocatorRef, CFTypeRef *)", 33554462, "%###s( [%{ptr}], %@, [%{ptr}])\n", "OSStatus endpointAggregate_copyPropertyFromAnySubEndpoint(FigEndpointRef, CFStringRef, CFAllocatorRef, CFTypeRef *)", a1, a2, a4);
  }

  v9 = FigCFDictionaryCopyArrayOfKeys();
  v10 = v9;
  if (*(DerivedStorage + 40) != 2)
  {
    endpointAggregate_copyPropertyFromAnySubEndpoint_cold_1();
    v16 = 4294895039;
    if (!v10)
    {
      return v16;
    }

    goto LABEL_17;
  }

  if (!v9)
  {
    endpointAggregate_copyPropertyFromAnySubEndpoint_cold_2();
    return 4294950575;
  }

  Count = CFArrayGetCount(v9);
  if (Count < 1)
  {
    v16 = 0;
LABEL_17:
    CFRelease(v10);
    return v16;
  }

  v12 = Count;
  for (i = 0; i != v12; ++i)
  {
    CFArrayGetValueAtIndex(v10, i);
    CMBaseObject = FigEndpointGetCMBaseObject();
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v16 = v15(CMBaseObject, a2, a3, a4);
      if (!v16)
      {
        break;
      }
    }

    else
    {
      v16 = 4294954514;
    }
  }

  if (v10)
  {
    goto LABEL_17;
  }

  return v16;
}

uint64_t endpointAggregate_isMuted(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v16 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_isMuted(FigEndpointRef, CFStringRef, Boolean *)", 33554462, "[%{ptr}] %###s getting %@\n", a1, "OSStatus endpointAggregate_isMuted(FigEndpointRef, CFStringRef, Boolean *)", a2);
  }

  v7 = FigCFDictionaryCopyArrayOfKeys();
  v8 = v7;
  if (*(DerivedStorage + 40) != 2)
  {
    endpointAggregate_isMuted_cold_1(&v16);
    if (!v8)
    {
      return v16;
    }

    goto LABEL_19;
  }

  if (!v7)
  {
    endpointAggregate_isMuted_cold_4();
    return v16;
  }

  if (!a3)
  {
    endpointAggregate_isMuted_cold_3(&v16);
LABEL_19:
    CFRelease(v8);
    return v16;
  }

  Count = CFArrayGetCount(v7);
  if (Count < 1)
  {
    v13 = 0;
  }

  else
  {
    v10 = Count;
    for (i = 0; i != v10; ++i)
    {
      CFArrayGetValueAtIndex(v8, i);
      v12 = APSGetFBOPropertyInt64();
      v13 = v12 != 0;
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = 11;
      }

      if (v14)
      {
        break;
      }
    }
  }

  *a3 = v13;
  if (v8)
  {
    goto LABEL_19;
  }

  return v16;
}

uint64_t endpointAggregate_copyShowInfoDict(uint64_t a1, __CFDictionary **a2)
{
  v26 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = 0;
  v24 = 0;
  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    endpointAggregate_copyShowInfoDict_cold_2();
    return 0;
  }

  v7 = Mutable;
  SNPrintF(&v24, 10, "[%{ptr}]", a1);
  CFDictionarySetCString();
  v8 = *MEMORY[0x277CBED28];
  v9 = *MEMORY[0x277CBED10];
  if (*(DerivedStorage + 40) == 2)
  {
    v10 = *MEMORY[0x277CBED28];
  }

  else
  {
    v10 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(v7, @"Activated", v10);
  CFDictionarySetValue(v7, @"Name", @"APEndpointAggregate");
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  if (*(DerivedStorage + 408) == 3)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  CFDictionarySetValue(v7, @"IsRemoteControlEndpoint", v11);
  v12 = FigCFDictionaryCopyArrayOfKeys();
  if (!v12)
  {
    v21 = 0;
    *a2 = v7;
    return v21;
  }

  v13 = v12;
  Count = CFArrayGetCount(v12);
  if (Count > 0)
  {
    v15 = Count;
    v16 = CFArrayCreateMutable(v5, Count, MEMORY[0x277CBF128]);
    if (!v16)
    {
      endpointAggregate_copyShowInfoDict_cold_1(v7);
      v21 = 4294950575;
      goto LABEL_20;
    }

    v17 = v16;
    for (i = 0; i != v15; ++i)
    {
      value = 0;
      CFArrayGetValueAtIndex(v13, i);
      CMBaseObject = FigEndpointGetCMBaseObject();
      v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v20)
      {
        v20(CMBaseObject, @"EndpointShowInfo", v5, &value);
      }

      if (value)
      {
        CFArrayAppendValue(v17, value);
        if (value)
        {
          CFRelease(value);
        }
      }
    }

    CFDictionarySetValue(v7, @"SubEndpointShowInfoDicts", v17);
    CFRelease(v17);
  }

  v21 = 0;
  *a2 = v7;
LABEL_20:
  CFRelease(v13);
  return v21;
}

uint64_t endpointAggregate_copySubEndpointProperty(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v11 = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    v9 = -12782;
LABEL_7:
    APSLogErrorAt();
    if (!a4)
    {
      return v11;
    }

    goto LABEL_4;
  }

  v9 = v8(CMBaseObject, a3, a2, &v11);
  if (v9)
  {
    goto LABEL_7;
  }

  if (a4)
  {
LABEL_4:
    *a4 = v9;
  }

  return v11;
}

uint64_t endpointAggregate_copyClusterActivatedCompositionAsArray(uint64_t a1, uint64_t *a2)
{
  v16 = 0;
  v17[0] = &v16;
  v17[1] = 0x2000000000;
  v18 = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 408) == 2)
  {
    if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      endpointAggregate_copyClusterActivatedCompositionAsArray_cold_1(a1);
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v9 = MEMORY[0x277D85DD0];
      v10 = 0x40000000;
      v11 = __endpointAggregate_copyClusterActivatedCompositionAsArray_block_invoke;
      v12 = &unk_27849B1E8;
      v14 = Mutable;
      v15 = a1;
      v13 = &v16;
      CFDictionaryApplyBlock();
      v5 = *(v17[0] + 24);
      if (v5)
      {
        endpointAggregate_copyClusterActivatedCompositionAsArray_cold_2(v5);
      }

      else
      {
        v6 = FigCFDictionaryCopyArrayOfValues();
        *a2 = v6;
        if (!v6)
        {
          endpointAggregate_copyClusterActivatedCompositionAsArray_cold_3(v17);
        }
      }
    }

    else
    {
      endpointAggregate_copyClusterActivatedCompositionAsArray_cold_4(v17);
    }
  }

  else
  {
    Mutable = 0;
    *(v17[0] + 24) = -16726;
  }

  if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_copyClusterActivatedCompositionAsArray(FigEndpointRef, CFArrayRef *)", 33554462, "[%{ptr}] <AirPlayClusterComp> CopyClusterActivatedComposition result: err %#m: %@.\n", a1, *(v17[0] + 24), *a2, v9, v10, v11, v12, v13, v14, v15);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v7 = *(v17[0] + 24);
  _Block_object_dispose(&v16, 8);
  return v7;
}

uint64_t FigEndpointStreamCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(CMBaseObject, a2, a3, a4);
}

const void *endpointAggregate_getFirstSubEndpointActivatedForFeatures(uint64_t a1, uint64_t a2)
{
  if (*(CMBaseObjectGetDerivedStorage() + 40) == 2)
  {
    v3 = FigCFDictionaryCopyArrayOfKeys();
    Count = CFArrayGetCount(v3);
    if (Count < 1)
    {
LABEL_6:
      ValueAtIndex = 0;
    }

    else
    {
      v5 = Count;
      v6 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
        if ((a2 & ~APSGetFBOPropertyInt64()) == 0)
        {
          break;
        }

        if (v5 == ++v6)
        {
          goto LABEL_6;
        }
      }
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  else
  {
    endpointAggregate_getFirstSubEndpointActivatedForFeatures_cold_1();
    return 0;
  }

  return ValueAtIndex;
}

void __endpointAggregate_copyClusterActivatedCompositionAsArray_block_invoke(uint64_t a1, int a2, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CC1550]);
  if (Value)
  {
    v6 = Value;
    v7 = CFDictionaryGetValue(*(a1 + 40), Value);
    if (v7)
    {
      v8 = v7;
      Int64 = CFDictionaryGetInt64();
      v10 = CFDictionaryGetInt64();
      if (Int64)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10 == 0;
      }

      if (v11)
      {
        if ((Int64 != 0) == (v10 != 0))
        {
          v12 = *MEMORY[0x277CC0AD0];
          v13 = CFDictionaryGetValue(v8, *MEMORY[0x277CC0AD0]);
          v14 = CFDictionaryGetValue(theDict, v12);
          if (v13)
          {
            v15 = v14;
            v16 = CFGetTypeID(v13);
            if (v16 == CFStringGetTypeID() && v15 != 0)
            {
              v18 = CFGetTypeID(v15);
              if (v18 == CFStringGetTypeID() && CFStringCompare(v13, v15, 1uLL) == kCFCompareGreaterThan)
              {
                CFDictionarySetValue(v8, v12, v15);
                if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_copyClusterActivatedCompositionAsArray(FigEndpointRef, CFArrayRef *)_block_invoke", 33554462, "[%{ptr}] <AirPlayClusterComp> Merged activated stereo pair entry for %@ with alphabetically lower name to: %@.\n", *(a1 + 48), v6, v8);
                }
              }
            }
          }
        }
      }

      else
      {
        FigCFDictionarySetValueFromKeyInDict();
        FigCFDictionarySetValueFromKeyInDict();
        if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_copyClusterActivatedCompositionAsArray(FigEndpointRef, CFArrayRef *)_block_invoke", 33554462, "[%{ptr}] <AirPlayClusterComp> Merged activated stereo pair entry for %@ from leader to: %@.\n", *(a1 + 48), v6, v8);
        }
      }
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theDict);
      if (MutableCopy)
      {
        v21 = MutableCopy;
        CFDictionarySetValue(MutableCopy, *MEMORY[0x277CC0AD8], v6);
        FigCFDictionarySetValueFromKeyInDict();
        FigCFDictionarySetValueFromKeyInDict();
        if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_copyClusterActivatedCompositionAsArray(FigEndpointRef, CFArrayRef *)_block_invoke", 33554462, "[%{ptr}] <AirPlayClusterComp> Adding activated stereo pair entry for %@: %@.\n", *(a1 + 48), v6, v21);
        }

        CFDictionarySetValue(*(a1 + 40), v6, v21);

        CFRelease(v21);
      }

      else
      {
        *(*(*(a1 + 32) + 8) + 24) = -16721;
      }
    }
  }

  else
  {
    v19 = CFDictionaryGetValue(theDict, *MEMORY[0x277CC0AD8]);
    if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_copyClusterActivatedCompositionAsArray(FigEndpointRef, CFArrayRef *)_block_invoke", 33554462, "[%{ptr}] <AirPlayClusterComp> Adding activated entry for %@: %@.\n", *(a1 + 48), v19, theDict);
    }

    v22 = *(a1 + 40);

    CFDictionarySetValue(v22, v19, theDict);
  }
}

uint64_t endpointAggregate_isATVInHTGroup(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 472);
  if (v2)
  {
    return v2 == *MEMORY[0x277CBED28] && *(DerivedStorage + 488) == 4;
  }

  else
  {

    return MEMORY[0x28213C3E8]();
  }
}

uint64_t endpointAggregate_setPropertyOnAllSubEndpoints(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigCFDictionaryCopyArrayOfKeys();
  v8 = v7;
  if (*(DerivedStorage + 40) != 2)
  {
    endpointAggregate_setPropertyOnAllSubEndpoints_cold_1();
    v13 = 4294895039;
    if (!v8)
    {
      return v13;
    }

    goto LABEL_15;
  }

  if (!v7)
  {
    endpointAggregate_setPropertyOnAllSubEndpoints_cold_2();
    return 4294950575;
  }

  Count = CFArrayGetCount(v7);
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_setPropertyOnAllSubEndpoints(FigEndpointRef, CFStringRef, CFTypeRef)", 33554482, "[%{ptr}] setPropertyOnSubEndpoints(%ld): %@ = %@\n", a1, Count, a2, a3);
  }

  if (Count < 1)
  {
    v13 = 0;
LABEL_15:
    CFRelease(v8);
    return v13;
  }

  for (i = 0; i != Count; ++i)
  {
    CFArrayGetValueAtIndex(v8, i);
    CMBaseObject = FigEndpointGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v12)
    {
      v12(CMBaseObject, a2, a3);
    }
  }

  v13 = 0;
  if (v8)
  {
    goto LABEL_15;
  }

  return v13;
}

uint64_t endpointAggregate_addEndpointInternal(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = 0;
  FigEndpoint = FigEndpointAggregateGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = APSGetFBOPropertyInt64();
  v12 = *(DerivedStorage + 48);
  if (!v12)
  {
    v12 = *(DerivedStorage + 56);
  }

  v13 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    v14 = "APEndpointCluster";
    if (!v11)
    {
      v14 = "APEndpoint";
    }

    LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_addEndpointInternal(FigEndpointAggregateRef, FigEndpointRef, CFDictionaryRef, FigEndpointAggregateCompletionCallback, void *)", 33554482, "[%{ptr}] Adding subEndpoint <%s> [%{ptr}] to endpointAggregate with features %#ll{flags}\n", a1, v14, a2, v12, &unk_2222981D8);
  }

  v47 = v12;
  v15 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A004044E3744DuLL);
  v16 = CFRetain(FigEndpoint);
  v17 = *(DerivedStorage + 120);
  *v15 = v16;
  v15[1] = v17;
  v15[3] = a5;
  v15[4] = a4;
  v46 = a5;
  if (*(DerivedStorage + 40) == 2)
  {
    MutableCopy = APSGetFBOPropertyInt64();
    if (v49)
    {
      endpointAggregate_addEndpointInternal_cold_2(v49);
    }

    else
    {
      v19 = APSGetFBOPropertyInt64();
      APSGetFBOPropertyInt64();
      if (*(DerivedStorage + 408) == 3)
      {
        if (!v19)
        {
          v20 = -72258;
          endpointAggregate_addEndpointInternal_cold_11();
LABEL_99:
          MutableCopy = 0;
          goto LABEL_100;
        }
      }

      else
      {
        if (!MutableCopy)
        {
          v20 = -72258;
          endpointAggregate_addEndpointInternal_cold_6();
LABEL_100:
          v40 = 0;
          goto LABEL_84;
        }

        if (v19)
        {
          v20 = -72258;
          endpointAggregate_addEndpointInternal_cold_4();
          goto LABEL_99;
        }

        v21 = CMBaseObjectGetDerivedStorage();
        v50 = 0;
        SubEndpointCount = endpointAggregate_getSubEndpointCount(FigEndpoint, 1);
        if (*(v21 + 96) && !SubEndpointCount)
        {
          GroupID = endpointAggregate_generateGroupID(FigEndpoint, &v50);
          if (GroupID)
          {
            endpointAggregate_addEndpointInternal_cold_5(GroupID);
          }

          else if (!FigCFEqual())
          {
            if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_updateGroupIDIfNeeded(FigEndpointRef)", 33554482, "[%{ptr}] <AirPlayActivation> Updating groupID from %@ to %@\n", FigEndpoint, *(v21 + 88), v50);
            }

            v24 = *(v21 + 88);
            v25 = v50;
            *(v21 + 88) = v50;
            if (v25)
            {
              CFRetain(v25);
            }

            if (v24)
            {
              CFRelease(v24);
            }

            CMNotificationCenterGetDefaultLocalCenter();
            FigDispatchAsyncPostNotification();
          }
        }

        if (v50)
        {
          CFRelease(v50);
        }
      }

      v26 = FigEndpointAggregateGetFigEndpoint();
      v27 = CMBaseObjectGetDerivedStorage();
      if (CFDictionaryContainsKey(*(v27 + 8), a2))
      {
        Value = CFDictionaryGetValue(*(v27 + 8), a2);
        goto LABEL_53;
      }

      if (*(v27 + 408) == 3 || !APSGetFBOPropertyInt64())
      {
LABEL_37:
        Value = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040F7F8B94BuLL);
        v29 = *(v27 + 16) + 1;
        *(v27 + 16) = v29;
        *Value = v29;
        CFDictionarySetValue(*(v27 + 8), a2, Value);
        if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_addEntryForSubEndpoint(FigEndpointAggregateRef, FigEndpointRef, uint32_t *)", 33554482, "<AirPlayActivation> [%{ptr}] subEndpoint [%{ptr}] added with regToken=0x%04x\n", a1, a2, *Value);
        }

        if (!*(v27 + 384) && endpointAggregate_getSubEndpointCount(v26, 1) >= 1 && !*(CMBaseObjectGetDerivedStorage() + 408))
        {
          v30 = a4;
          v31 = *MEMORY[0x277CBECE8];
          v32 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
          if (v32)
          {
            v33 = v32;
            v34 = CFUUIDCreateString(v31, v32);
            if (v34)
            {
              CFRelease(v33);
              v35 = CFRetain(v34);
              *(v27 + 384) = v35;
              if (gLogCategory_APEndpointAggregate >= 51)
              {
                ++*(Value + 1);
                v38 = *Value;
                a4 = v30;
                goto LABEL_60;
              }

              a4 = v30;
              if (gLogCategory_APEndpointAggregate == -1)
              {
                v13 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_54;
                }

                v35 = *(v27 + 384);
              }

              LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_addEntryForSubEndpoint(FigEndpointAggregateRef, FigEndpointRef, uint32_t *)", 33554482, "<AirPlayActivation> [%{ptr}] generated continuousGroupSessionID %@\n", a1, v35);
              goto LABEL_51;
            }

            endpointAggregate_addEndpointInternal_cold_8(v33);
          }

          else
          {
            endpointAggregate_addEndpointInternal_cold_9();
            v34 = 0;
          }

          a4 = v30;
LABEL_51:
          v13 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
          goto LABEL_54;
        }

LABEL_53:
        v34 = 0;
LABEL_54:
        v36 = v13[482];
        v37 = *(Value + 1) + 1;
        *(Value + 1) = v37;
        if (v36 > 50)
        {
          goto LABEL_59;
        }

        if (v36 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_59;
          }

          v37 = *(Value + 1);
        }

        LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_addEntryForSubEndpoint(FigEndpointAggregateRef, FigEndpointRef, uint32_t *)", 33554482, "<AirPlayActivation> [%{ptr}] subEndpoint [%{ptr}] has %llu activation(s) with regToken=0x%04x\n", a1, a2, v37, *Value);
LABEL_59:
        v38 = *Value;
        if (!v34)
        {
LABEL_61:
          v49 = 0;
          *(v15 + 4) = v38;
          v39 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v39)
          {
            v39(a2, DerivedStorage + 264);
          }

          if (*(DerivedStorage + 408) != 3)
          {
            FigEndpointSetDelegateRemoteControl(a2, DerivedStorage + 304);
          }

          MutableCopy = FigCFDictionaryCreateMutableCopy();
          if (a3)
          {
            CFDictionaryMergeDictionary();
          }

          v40 = CFStringCreateF(&v49, "%@-%{ptr}", *(DerivedStorage + 432), a1);
          if (v49)
          {
            endpointAggregate_addEndpointInternal_cold_10(v49);
          }

          else
          {
            CFDictionarySetValue(MutableCopy, @"ParentContextID", v40);
            v41 = MEMORY[0x277CBED28];
            if (*(DerivedStorage + 408) != 3)
            {
              CFDictionarySetValue(MutableCopy, @"AudioOptions", *(DerivedStorage + 104));
              CFDictionarySetValue(MutableCopy, @"NetworkClock", *(DerivedStorage + 80));
              CFDictionarySetValue(MutableCopy, @"GroupID", *(DerivedStorage + 88));
              v42 = *v41;
              CFDictionarySetValue(MutableCopy, @"IsGroupPlayback", *v41);
              v43 = *(DerivedStorage + 408) == 2 ? v42 : *MEMORY[0x277CBED10];
              CFDictionarySetValue(MutableCopy, @"IsPartOfCluster", v43);
              if (!APSGetFBOPropertyInt64())
              {
                FigCFDictionarySetValue();
              }
            }

            if (endpointAggregate_isUpdateUGLRCServerNeeded(FigEndpoint, a2))
            {
              CFDictionarySetValue(MutableCopy, @"IsUGLRCServerUpdateNeeded", *v41);
            }

            SubEndpointFeaturesToActivate = endpointAggregate_getSubEndpointFeaturesToActivate(FigEndpoint, a2, v47);
            if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_addEndpointInternal(FigEndpointAggregateRef, FigEndpointRef, CFDictionaryRef, FigEndpointAggregateCompletionCallback, void *)", 33554482, "[%{ptr}] Activating subEndpoint [%{ptr}] with features %#ll{flags} \n", a1, a2, SubEndpointFeaturesToActivate, &unk_2222981D8);
            }

            FigEndpointActivateWithCompletionCallback(a2, SubEndpointFeaturesToActivate, MutableCopy, v15);
            CFRetain(FigEndpoint);
            if (a2)
            {
              CFRetain(a2);
            }

            CFRetain(*MEMORY[0x277CC0A28]);
            APSDispatchAsyncFHelper();
          }

LABEL_83:
          v20 = v49;
          if (!v49)
          {
            goto LABEL_87;
          }

          goto LABEL_84;
        }

LABEL_60:
        CFRelease(v34);
        goto LABEL_61;
      }

      if (!*(v27 + 24))
      {
        *(v27 + 24) = a2;
        if (a2)
        {
          CFRetain(a2);
        }

        goto LABEL_37;
      }

      endpointAggregate_addEndpointInternal_cold_7();
    }

    v40 = 0;
    MutableCopy = 0;
    goto LABEL_83;
  }

  endpointAggregate_addEndpointInternal_cold_1(&v49);
  MutableCopy = 0;
  v40 = 0;
  v20 = -15580;
LABEL_84:
  if (a4)
  {
    endpointAggregate_scheduleAddOrRemoveSubEndpointCompletionCallback(FigEndpoint, a2, 0, *(DerivedStorage + 120), v20, a4, v46);
  }

  CFRelease(*v15);
  free(v15);
LABEL_87:
  if (v40)
  {
    CFRelease(v40);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v49;
}

uint64_t endpointAggregate_removeEndpointInternal(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  FigEndpoint = FigEndpointAggregateGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_removeEndpointInternal(FigEndpointAggregateRef, FigEndpointRef, CFDictionaryRef, FigEndpointAggregateCompletionCallback, void *)", 33554482, "Removing subEndpoint [%{ptr}] from endpointAggregate [%{ptr}]\n", a2, a1);
  }

  v10 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A004044E3744DuLL);
  v11 = CFRetain(FigEndpoint);
  v12 = *(DerivedStorage + 120);
  *v10 = v11;
  v10[1] = v12;
  v10[3] = a4;
  v10[4] = a3;
  *(v10 + 4) = 0;
  if (*(DerivedStorage + 40) == 2)
  {
    if (*(DerivedStorage + 408) != 3)
    {
      v13 = APSGetFBOPropertyInt64();
      endpointAggregate_handleSubEndpointFeatureActivationStateChanged(FigEndpoint, a2, 0, v13);
    }

    v14 = endpointAggregate_removeEntryForSubEndpoint(a1, a2, 1);
    if (!v14)
    {
      endpointAggregate_updateURLPlaybackSupportedState(FigEndpoint);
      endpointAggregate_updateClusterCompositionPropertiesFromSubEndpoint(FigEndpoint, a2, 1);
      endpointAggregate_unregisterCommChannelsForSubEndpointAndNotifyClientIfNeeded(FigEndpoint, a2);
      if (*(DerivedStorage + 408) != 3)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        if (*(DerivedStorage + 408) != 3)
        {
          v15 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v15)
          {
            v15(a2, 0);
          }
        }
      }

      v16 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v16)
      {
        v16(a2, 0);
      }

      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CC0B90], @"RemovedFromAggregate");
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v18)
      {
        v18(a2, Mutable, endpointAggregate_deactivateSubEndpointCallback, v10);
      }

      CFRetain(FigEndpoint);
      CFRetain(a2);
      CFRetain(*MEMORY[0x277CC0A30]);
      APSDispatchAsyncFHelper();
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      return 0;
    }

    v19 = v14;
    endpointAggregate_removeEndpointInternal_cold_2(v14);
  }

  else
  {
    endpointAggregate_removeEndpointInternal_cold_1();
    v19 = 4294951716;
  }

  if (a3)
  {
    endpointAggregate_scheduleAddOrRemoveSubEndpointCompletionCallback(FigEndpoint, a2, 0, *(DerivedStorage + 120), v19, a3, a4);
  }

  CFRelease(*v10);
  free(v10);
  return v19;
}

CFIndex endpointAggregate_getSubEndpointCount(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CFDictionaryGetCount(*(DerivedStorage + 8));
  if (a2 && result >= 1 && *(DerivedStorage + 24) && (a2 == 1 || *(DerivedStorage + 416)))
  {
    --result;
  }

  return result;
}

void endpointAggregate_setEnableLocalPlaybackOnAggregateStreams(uint64_t a1, int a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 457) || *(DerivedStorage + 416))
  {
    endpointAggregate_setEnableLocalPlaybackOnAggregateStreams_cold_1();
  }

  else
  {
    v6 = FigCFDictionaryCopyArrayOfValues();
    if (CFArrayGetCount(v6) >= 1)
    {
      v7 = 0;
      v8 = *MEMORY[0x277CC1900];
      v9 = *MEMORY[0x277CBECE8];
      v10 = MEMORY[0x277CBED10];
      if (a2)
      {
        v10 = MEMORY[0x277CBED28];
      }

      v11 = *v10;
      do
      {
        CFArrayGetValueAtIndex(v6, v7);
        cf = 0;
        CMBaseObject = FigEndpointStreamGetCMBaseObject();
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v13)
        {
          v13(CMBaseObject, v8, v9, &cf);
        }

        if (cf)
        {
          if ((APEndpointGetFeatureFromStreamType(cf) & a3) != 0)
          {
            v14 = FigEndpointStreamGetCMBaseObject();
            v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v15)
            {
              v15(v14, @"enableLocalPlayback", v11);
            }
          }

          if (cf)
          {
            CFRelease(cf);
          }
        }

        ++v7;
      }

      while (v7 < CFArrayGetCount(v6));
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }
}

void endpointAggregate_updateIsVolumeControlSupported(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFDictionaryCopyArrayOfKeys();
  if (v3)
  {
    v4 = v3;
    if (CFArrayGetCount(v3) < 1)
    {
LABEL_6:
      v6 = *(DerivedStorage + 161);
    }

    else
    {
      v5 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(v4, v5);
        if (APSGetFBOPropertyInt64())
        {
          break;
        }

        if (++v5 >= CFArrayGetCount(v4))
        {
          goto LABEL_6;
        }
      }

      v6 = 1;
    }

    if (*(DerivedStorage + 352) != v6)
    {
      if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
      {
        endpointAggregate_updateIsVolumeControlSupported_cold_1(v6, a1);
      }

      *(DerivedStorage + 352) = v6;
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
    }

    CFRelease(v4);
  }

  else
  {
    endpointAggregate_updateIsVolumeControlSupported_cold_2();
  }
}

void endpointAggregate_updateSubEndpointAggregateStreamMembershipForFeatures(uint64_t a1, __CFString *a2, uint64_t a3, int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  if (a2 || *(DerivedStorage + 458))
  {
    if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      v9 = "+";
      if (!a4)
      {
        v9 = "-";
      }

      LogPrintF(&gLogCategory_APEndpointAggregate, "void endpointAggregate_updateSubEndpointAggregateStreamMembershipForFeatures(FigEndpointRef, FigEndpointRef, FigEndpointFeatures, Boolean)", 33554462, "[%{ptr}] Update subEndpoint [%{ptr}] aggregate stream membership (%s0x%llx)\n", a1, a2, v9, a3);
    }

    AllAudioFeatures = APEndpointGetAllAudioFeatures(a3);
    APEndpointCreateStreamTypeArrayFromFeatures(AllAudioFeatures, &theArray);
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v12 = Count;
        v13 = 0;
        v25 = a2 == 0;
        allocator = *MEMORY[0x277CBECE8];
        if (a2)
        {
          v14 = a2;
        }

        else
        {
          v14 = @"LocalPlaybackID";
        }

        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13);
          v16 = CMBaseObjectGetDerivedStorage();
          v17 = v16;
          if (!a4)
          {
            if (a2 || *(v16 + 458))
            {
              if (ValueAtIndex)
              {
                Value = CFDictionaryGetValue(*(v16 + 136), ValueAtIndex);
                if (Value)
                {
                  v23 = Value;
                  if (CFSetContainsValue(Value, v14))
                  {
                    CFSetRemoveValue(v23, v14);
                    if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
                    {
                      v24 = CFSetGetCount(v23);
                      LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_unregisterSubEndpointAggregateStreamMembership(FigEndpointRef, FigEndpointRef, CFStringRef)", 33554462, "[%{ptr}] Unregister subEndpoint [%{ptr}%?s] as %@ aggregate stream member (%d members after removal)\n", a1, v14, v25, " (legacy local playback)", ValueAtIndex, v24);
                    }

                    if (!CFSetGetCount(v23))
                    {
                      CFDictionaryRemoveValue(*(v17 + 136), ValueAtIndex);
                    }
                  }
                }
              }

              else
              {
                endpointAggregate_updateSubEndpointAggregateStreamMembershipForFeatures_cold_4();
              }
            }

            else
            {
              endpointAggregate_updateSubEndpointAggregateStreamMembershipForFeatures_cold_5();
            }

            goto LABEL_38;
          }

          if (a2 || *(v16 + 458))
          {
            if (ValueAtIndex)
            {
              v18 = CFDictionaryGetValue(*(v16 + 136), ValueAtIndex);
              if (v18)
              {
                v19 = CFRetain(v18);
                if (v19)
                {
                  goto LABEL_22;
                }
              }

              Mutable = CFSetCreateMutable(allocator, 0, MEMORY[0x277CBF158]);
              if (Mutable)
              {
                v19 = Mutable;
                CFDictionarySetValue(*(v17 + 136), ValueAtIndex, Mutable);
LABEL_22:
                CFSetAddValue(v19, v14);
                if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
                {
                  v21 = CFSetGetCount(v19);
                  LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_registerSubEndpointAggregateStreamMembership(FigEndpointRef, FigEndpointRef, CFStringRef)", 33554462, "[%{ptr}] Register subEndpoint [%{ptr}%?s] as %@ aggregate stream member (%d members after addition)\n", a1, v14, v25, " (legacy local playback)", ValueAtIndex, v21);
                }

                CFRelease(v19);
                goto LABEL_38;
              }

              endpointAggregate_updateSubEndpointAggregateStreamMembershipForFeatures_cold_1();
            }

            else
            {
              endpointAggregate_updateSubEndpointAggregateStreamMembershipForFeatures_cold_2();
            }
          }

          else
          {
            endpointAggregate_updateSubEndpointAggregateStreamMembershipForFeatures_cold_3();
          }

LABEL_38:
          ++v13;
        }

        while (v12 != v13);
      }
    }

    else
    {
      endpointAggregate_updateSubEndpointAggregateStreamMembershipForFeatures_cold_6();
    }
  }

  else
  {
    endpointAggregate_updateSubEndpointAggregateStreamMembershipForFeatures_cold_7();
  }

  if (theArray)
  {
    CFRelease(theArray);
  }
}

uint64_t endpointAggregate_createAndInitAudioStream(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, const void *a5, int a6, const void *a7, const void *a8, const void *a9, const void *a10, char a11, CFTypeRef *a12)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a9)
  {
    endpointAggregate_createAndInitAudioStream_cold_8();
    return 4294950576;
  }

  if (!a2)
  {
    endpointAggregate_createAndInitAudioStream_cold_7();
LABEL_31:
    v27 = 4294950576;
    goto LABEL_20;
  }

  if (!a5)
  {
    endpointAggregate_createAndInitAudioStream_cold_6();
    goto LABEL_31;
  }

  v21 = DerivedStorage;
  if (!a4 && !*(DerivedStorage + 458))
  {
    endpointAggregate_createAndInitAudioStream_cold_5();
    goto LABEL_31;
  }

  Value = CFDictionaryGetValue(a2, a9);
  if (!Value)
  {
    endpointAggregate_createAndInitAudioStream_cold_4();
    goto LABEL_31;
  }

  v23 = CFDictionaryGetValue(Value, @"AudioEngineVendor");
  if (!v23)
  {
    endpointAggregate_createAndInitAudioStream_cold_3();
    goto LABEL_31;
  }

  v24 = *MEMORY[0x277CBECE8];
  v25 = APEndpointStreamAggregateAudioCreate(*MEMORY[0x277CBECE8], a9, a3, v23, a5, a4, 1, *(v21 + 408) == 2, *(v21 + 456), *(v21 + 458), a11, a10, &cf);
  if (v25)
  {
    v27 = v25;
    endpointAggregate_createAndInitAudioStream_cold_1(v25);
  }

  else
  {
    if (!a6)
    {
      *a12 = CFRetain(cf);
LABEL_15:
      if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_createAndInitAudioStream(FigEndpointRef, CFDictionaryRef, CFStringRef, FigEndpointRef, APSNetworkClockRef, Boolean, CFStringRef, FigEndpointStreamRef, CFStringRef, CFStringRef, Boolean, FigEndpointStreamRef *)", 33554482, "[%{ptr}] Set up %@ stream [%{ptr}], wrapper [%{ptr}]\n", a1, a9, cf, *a12);
      }

      v27 = 0;
      goto LABEL_20;
    }

    if (a8)
    {
      v26 = APEndpointStreamInterruptingWrapperCreate(v24, cf, a8, a7, a12);
    }

    else
    {
      v26 = APEndpointStreamInterruptibleWrapperCreate(v24, cf, a7, a12);
    }

    v27 = v26;
    if (!v26)
    {
      goto LABEL_15;
    }

    endpointAggregate_createAndInitAudioStream_cold_2(v26);
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  return v27;
}

void endpointAggregate_addObserverInternal(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  APSubEndpointAddRemoveObservingProtocolGetProtocolID();
  if (CMBaseObjectImplementsProtocol())
  {
    v4 = *(DerivedStorage + 32);

    CFArrayAppendValue(v4, a2);
  }

  else
  {
    endpointAggregate_addObserverInternal_cold_1();
  }
}

uint64_t endpointAggregate_handleAggregateStreamInUseChanged(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  endpointAggregate_updateEngagedState(a2);

  return FigSimpleMutexUnlock();
}

uint64_t endpointAggregate_handleBufferedAudioCapabilitiesChanged(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 440))
  {
    v4 = *(DerivedStorage + 440);
  }

  else
  {
    v4 = a2;
  }

  v5 = MEMORY[0x277CC0D10];
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointAggregate, "void endpointAggregate_handleBufferedAudioCapabilitiesChanged(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] Posting %@ on behalf of [%{ptr}]\n", a2, *v5, v4);
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigDispatchAsyncPostNotification();
}

void endpointAggregate_destroyAggregateStreams(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  AllAudioFeatures = APEndpointGetAllAudioFeatures(v2);
  APEndpointCreateStreamTypeArrayFromFeatures(AllAudioFeatures, &cf);
  if (cf)
  {
    endpointAggregate_destroyAggregateStreams_cold_1(cf, &cf, a1, DerivedStorage);
  }

  else
  {
    endpointAggregate_destroyAggregateStreams_cold_2();
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t __endpointAggregate_notifyStreamObservers_block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  FeatureFromStreamType = APEndpointGetFeatureFromStreamType(a2);
  result = APEndpointGetAllAudioFeatures(*(a1 + 32));
  if ((result & FeatureFromStreamType) != 0)
  {
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      __endpointAggregate_notifyStreamObservers_block_invoke_cold_1(a1, a3, a2);
    }

    CFRetain(a3);
    CFRetain(*(a1 + 48));
    return APSDispatchAsyncFHelper();
  }

  return result;
}

void endpointAggregate_notifyObserverNotificationQueueDispatch(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  v4 = *(a1 + 8);
  APSubEndpointAddRemoveObservingProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (v2)
  {
    if (ProtocolVTable)
    {
      v6 = *(ProtocolVTable + 16);
      if (v6)
      {
        v7 = *(v6 + 8);
        if (v7)
        {
LABEL_9:
          v7(v3, v4);
        }
      }
    }
  }

  else if (ProtocolVTable)
  {
    v8 = *(ProtocolVTable + 16);
    if (v8)
    {
      v7 = *(v8 + 16);
      if (v7)
      {
        goto LABEL_9;
      }
    }
  }

  CFRelease(*(a1 + 8));
  v9 = *a1;

  CFRelease(v9);
}

uint64_t FigEndpointSetDelegateRemoteControl(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 56);
  if (v7)
  {

    return v7(a1, a2);
  }

  return result;
}

uint64_t FigEndpointActivateWithCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v11 = *(v10 + 8);
  if (v11)
  {

    return v11(a1, a2, a3, endpointAggregate_activateSubEndpointCallback, a4);
  }

  return result;
}

void endpointAggregate_activateSubEndpointCallback(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1 || (FigEndpointExtendedGetClassID(), v11 = a1, !CMBaseObjectIsMemberOfClass()))
  {
    v11 = 0;
  }

  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(DerivedStorage + 8), a1);
  if (Value)
  {
    v13 = *Value;
    if (v13 == *(a5 + 4))
    {
      if (gLogCategory_APEndpointAggregate > 50)
      {
        goto LABEL_15;
      }

      if (gLogCategory_APEndpointAggregate == -1)
      {
        if (!_LogCategory_Initialize())
        {
LABEL_15:
          if (a4)
          {
            v15 = *a5;
            if (!*a5 || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
            {
              v15 = 0;
            }

            endpointAggregate_removeEntryForSubEndpoint(v15, a1, 0);
            v14 = a4;
          }

          else
          {
            if (v11)
            {
              v16 = *(DerivedStorage + 336);
              if (v16)
              {
                v17 = *(*(CMBaseObjectGetVTable() + 24) + 48);
                if (v17)
                {
                  v17(v11, v16);
                }
              }
            }

            if (*(DerivedStorage + 408) != 3)
            {
              endpointAggregate_activateSubEndpointCallback_cold_1(a5, a1);
            }

            v14 = 0;
          }

          goto LABEL_27;
        }

        v13 = *(a5 + 4);
      }

      LogPrintF(&gLogCategory_APEndpointAggregate, "void endpointAggregate_activateSubEndpointCallback(FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, void *)", 33554482, "[%{ptr}] <AirPlayActivation> SubEndpoint [%{ptr}] activation complete for regToken=0x%04x, features %#ll{flags}, seed %llu, result %#m\n", *a5, a1, v13, a2, &unk_2222981D8, a3, a4);
      goto LABEL_15;
    }
  }

  v14 = -72251;
  if (gLogCategory_APEndpointAggregate <= 60 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointAggregate, "void endpointAggregate_activateSubEndpointCallback(FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, void *)", 33554492, "[%{ptr}] <AirPlayActivation> SubEndpoint [%{ptr}] activation complete for a stale regToken=0x%04x, features %#ll{flags}, seed %llu, result %#m\n", *a5, a1, *(a5 + 4), a2, &unk_2222981D8, a3, a4);
  }

  a2 = 0;
LABEL_27:
  endpointAggregate_scheduleAddOrRemoveSubEndpointCompletionCallback(*a5, a1, a2, a5[1], v14, a5[4], a5[3]);
  FigSimpleMutexUnlock();
  CFRelease(*a5);

  free(a5);
}

void endpointAggregate_postEndpointAddedOrRemovedNotification(CFTypeRef *a1)
{
  value = 0;
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    endpointAggregate_postEndpointAddedOrRemovedNotification_cold_4();
    goto LABEL_11;
  }

  v4 = Mutable;
  if (*a1)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v7 = v6(CMBaseObject, *MEMORY[0x277CC1368], v2, &value);
      if (!v7)
      {
        CFDictionarySetValue(v4, *MEMORY[0x277CC0A20], value);
        if (gLogCategory_APEndpointAggregate <= 10 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
        {
          endpointAggregate_postEndpointAddedOrRemovedNotification_cold_1(a1, &value);
        }

        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        goto LABEL_9;
      }
    }

    else
    {
      v7 = 4294954514;
    }

    endpointAggregate_postEndpointAddedOrRemovedNotification_cold_2(v7);
  }

  else
  {
    endpointAggregate_postEndpointAddedOrRemovedNotification_cold_3();
  }

LABEL_9:
  CFRelease(v4);
  if (value)
  {
    CFRelease(value);
  }

LABEL_11:
  if (*a1)
  {
    CFRelease(*a1);
  }

  v8 = a1[1];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[2];
  if (v9)
  {
    CFRelease(v9);
  }
}

uint64_t endpointAggregate_scheduleAddOrRemoveSubEndpointCompletionCallback(const void *a1, const void *a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  CFRetain(a2);
  return APSDispatchAsyncFHelper();
}

uint64_t endpointAggregate_generateGroupID(uint64_t a1, uint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v5 = Mutable;
    v6 = MEMORY[0x277CBED28];
    if (!*(DerivedStorage + 464))
    {
      v6 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277CEA290], *v6);
    CFDictionarySetNumber();
    v7 = APSCreateGroupIDForLocalDeviceEx();
    v8 = v7;
    if (a2)
    {
      *a2 = v7;
      v9 = v5;
    }

    else
    {
      CFRelease(v5);
      if (!v8)
      {
        return 0;
      }

      v9 = v8;
    }

    CFRelease(v9);
    return 0;
  }

  endpointAggregate_generateGroupID_cold_1();
  return 4294950575;
}

uint64_t endpointAggregate_removeEntryForSubEndpoint(uint64_t a1, const void *a2, int a3)
{
  FigEndpoint = FigEndpointAggregateGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFDictionaryContainsKey(*(DerivedStorage + 8), a2))
  {
    endpointAggregate_removeEntryForSubEndpoint_cold_2();
    return 4294895046;
  }

  Value = CFDictionaryGetValue(*(DerivedStorage + 8), a2);
  v9 = *(Value + 1);
  if (!v9)
  {
    endpointAggregate_removeEntryForSubEndpoint_cold_1();
    return 4294949690;
  }

  v10 = Value;
  v11 = v9 - 1;
  *(Value + 1) = v11;
  if (gLogCategory_APEndpointAggregate <= 50)
  {
    if (gLogCategory_APEndpointAggregate != -1)
    {
LABEL_5:
      LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_removeEntryForSubEndpoint(FigEndpointAggregateRef, FigEndpointRef, Boolean)", 33554482, "<AirPlayActivation> [%{ptr}] subEndpoint [%{ptr}] has %llu activation(s) with regToken=0x%04x\n", a1, a2, v11, *v10);
      goto LABEL_7;
    }

    if (_LogCategory_Initialize())
    {
      v11 = *(v10 + 1);
      goto LABEL_5;
    }
  }

  if (!a3 && *(v10 + 1))
  {
    return 0;
  }

LABEL_7:
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    v12 = "yes";
    if (!a3)
    {
      v12 = "no";
    }

    LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_removeEntryForSubEndpoint(FigEndpointAggregateRef, FigEndpointRef, Boolean)", 33554482, "<AirPlayActivation> [%{ptr}] subEndpoint [%{ptr}] removed with regToken=0x%04x (forced=%s)\n", a1, a2, *v10, v12);
  }

  CFDictionaryRemoveValue(*(DerivedStorage + 8), a2);
  if (FigCFEqual())
  {
    v13 = *(DerivedStorage + 24);
    if (v13)
    {
      CFRelease(v13);
      *(DerivedStorage + 24) = 0;
    }
  }

  if (!*(DerivedStorage + 384) || endpointAggregate_getSubEndpointCount(FigEndpoint, 1))
  {
    return 0;
  }

  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_removeEntryForSubEndpoint(FigEndpointAggregateRef, FigEndpointRef, Boolean)", 33554482, "<AirPlayActivation> [%{ptr}] removing continuousGroupSessionID %@\n", a1, *(DerivedStorage + 384));
  }

  result = *(DerivedStorage + 384);
  if (result)
  {
    CFRelease(result);
    result = 0;
    *(DerivedStorage + 384) = 0;
  }

  return result;
}

void endpointAggregate_handleSubEndpointVolumeDidChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    v9 = DerivedStorage;
    v10 = *MEMORY[0x277CC15A8];
    CFNumberGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    FigSimpleMutexLock();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v13 = Mutable;
      CFDictionarySetValue(Mutable, *MEMORY[0x277CC1368], *(v9 + 432));
      CFDictionarySetValue(v13, v10, TypedValue);
      if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointAggregate, "void endpointAggregate_handleSubEndpointVolumeDidChange(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] forwarding volume change (volume level: %@) from receiver [%{ptr}].\n", a2, TypedValue, a4);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      FigSimpleMutexUnlock();
      CFRelease(v13);
    }

    else
    {
      endpointAggregate_handleSubEndpointVolumeDidChange_cold_2();
    }
  }

  else
  {
    endpointAggregate_handleSubEndpointVolumeDidChange_cold_3();
  }
}

void endpointAggregate_handleSubEndpointIsMutedDidChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v8 = Mutable;
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC1368], *(DerivedStorage + 432));
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointAggregate, "void endpointAggregate_handleSubEndpointIsMutedDidChange(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] forwarding mute change from receiver [%{ptr}].\n", a2, a4);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    FigSimpleMutexUnlock();

    CFRelease(v8);
  }

  else
  {
    endpointAggregate_handleSubEndpointIsMutedDidChange_cold_1();
  }
}

uint64_t endpointAggregate_handleSubEndpointVolumeControlSupportedChanged(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  endpointAggregate_updateIsVolumeControlSupported(a2);

  return FigSimpleMutexUnlock();
}

uint64_t endpointAggregate_handleSubEndpointVolumeControlTypeChanged(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  endpointAggregate_updateVolumeControlType(a2);

  return FigSimpleMutexUnlock();
}

uint64_t endpointAggregate_handleSubEndpointMuteControlSupportedChanged(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  endpointAggregate_updateIsMuteControlSupported(a2);

  return FigSimpleMutexUnlock();
}

uint64_t endpointAggregate_handleSubEndpointAirPlayVideoPlaybackChanged(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  endpointAggregate_updateVideoPlaybackIsActive(a2);

  return FigSimpleMutexUnlock();
}

uint64_t endpointAggregate_handleSubEndpointDescriptionChanged(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a5 && (CFDictionaryGetInt64() || CFDictionaryGetInt64() || CFDictionaryGetInt64()))
  {
    endpointAggregate_updateClusterCompositionPropertiesFromSubEndpoint(a2, a4, 0);
  }

  return FigSimpleMutexUnlock();
}

void endpointAggregate_updateVolumeControlType(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFDictionaryCopyArrayOfKeys();
  if (v3)
  {
    v4 = v3;
    if (CFArrayGetCount(v3) < 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(v4, v6);
        v7 = APSGetFBOPropertyInt64();
        if (v7 == 3)
        {
          break;
        }

        v8 = v7;
        if (CFArrayGetCount(v4) == 1)
        {
          v5 = v8;
        }

        if (++v6 >= CFArrayGetCount(v4))
        {
          goto LABEL_11;
        }
      }

      v5 = 3;
    }

LABEL_11:
    if (*(DerivedStorage + 360) != v5)
    {
      if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
      {
        v9 = APSGetFigEndpointVolumeControlTypeName();
        v10 = *(DerivedStorage + 360);
        v11 = APSGetFigEndpointVolumeControlTypeName();
        LogPrintF(&gLogCategory_APEndpointAggregate, "void endpointAggregate_updateVolumeControlType(FigEndpointRef)", 33554482, "[%{ptr}] [AirPlayVolume] volumeControlType changed: %s (%d) => %s (%d)\n", a1, v9, v10, v11, v5);
      }

      *(DerivedStorage + 360) = v5;
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
    }

    CFRelease(v4);
  }

  else
  {
    endpointAggregate_updateVolumeControlType_cold_1();
  }
}

void endpointAggregate_updateIsMuteControlSupported(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFDictionaryCopyArrayOfKeys();
  if (v3)
  {
    v4 = v3;
    if (CFArrayGetCount(v3) < 1)
    {
      v7 = 0;
      v6 = "no";
    }

    else
    {
      v5 = 0;
      v6 = "no";
      while (1)
      {
        CFArrayGetValueAtIndex(v4, v5);
        if (APSGetFBOPropertyInt64())
        {
          break;
        }

        if (++v5 >= CFArrayGetCount(v4))
        {
          v7 = 0;
          goto LABEL_9;
        }
      }

      v7 = 1;
      v6 = "yes";
    }

LABEL_9:
    if (*(DerivedStorage + 368) != v7)
    {
      if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointAggregate, "void endpointAggregate_updateIsMuteControlSupported(FigEndpointRef)", 33554482, "[%{ptr}] [AirPlayVolume] isMuteControlSupported => %s\n", a1, v6);
      }

      *(DerivedStorage + 368) = v7;
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
    }

    CFRelease(v4);
  }

  else
  {
    endpointAggregate_updateIsMuteControlSupported_cold_1();
  }
}

void endpointAggregate_updateVideoPlaybackIsActive(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFDictionaryCopyArrayOfKeys();
  if (!v3)
  {
    endpointAggregate_updateVideoPlaybackIsActive_cold_2();
    return;
  }

  v4 = v3;
  if (CFArrayGetCount(v3) < 1)
  {
LABEL_6:
    v6 = 0;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex(v4, v5);
      if (APSGetFBOPropertyInt64())
      {
        break;
      }

      if (++v5 >= CFArrayGetCount(v4))
      {
        goto LABEL_6;
      }
    }

    v6 = 1;
  }

  if (*(DerivedStorage + 344) != v6)
  {
    *(DerivedStorage + 344) = v6;
    v8 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v10 = Mutable;
      FigCFDictionarySetInt64();
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      CFRelease(v4);
      v7 = v10;
      goto LABEL_12;
    }

    endpointAggregate_updateVideoPlaybackIsActive_cold_1();
  }

  v7 = v4;
LABEL_12:

  CFRelease(v7);
}

void endpointAggregate_addOrRemoveSubEndpointCallCompletionCallback(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v2(*(a1 + 8), *a1, *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  }

  CFRelease(*a1);
  v3 = *(a1 + 8);

  CFRelease(v3);
}

void endpointAggregate_unregisterCommChannelsForSubEndpointAndNotifyClientIfNeeded(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v3 = Mutable;
    CFDictionaryApplyBlock();
    CFArrayGetCount(v3);
    CFArrayApplyBlock();
    CFRelease(v3);
  }

  else
  {
    endpointAggregate_unregisterCommChannelsForSubEndpointAndNotifyClientIfNeeded_cold_1();
  }
}

void __endpointAggregate_unregisterCommChannelsForSubEndpointAndNotifyClientIfNeeded_block_invoke(uint64_t a1, void *value, CFTypeRef cf2)
{
  v5 = *(a1 + 32);
  if (!v5 || CFEqual(v5, cf2))
  {
    v6 = *(a1 + 40);

    CFArrayAppendValue(v6, value);
  }
}

void endpointAggregate_unregisterCommChannelAndNotifyClientIfNeeded(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFDictionaryContainsKey(*(DerivedStorage + 168), a2))
  {
    APEndpointCallRCDelegateDidCloseAsync(a1, *(DerivedStorage + 120), a2, *(DerivedStorage + 400), *(DerivedStorage + 240), *(DerivedStorage + 256));
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointAggregate, "void endpointAggregate_unregisterCommChannelAndNotifyClientIfNeeded(FigEndpointRef, CFStringRef)", 33554482, "[%{ptr}] Unregistering relay RCS with commChannelID [%@]\n", a1, a2);
    }

    v5 = *(DerivedStorage + 168);

    CFDictionaryRemoveValue(v5, a2);
  }
}

__CFString *endpointAggregate_subEndpointSupportProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APEndpointCluster <FigEndpointSubEndpointSupportProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t endpointAggregate_Activate(const void *a1, uint64_t a2, CFTypeRef a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_Activate(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554482, "Activating APEndpointAggregate [%{ptr}] %'@ with features %#ll{flags}.\n", a1, *(DerivedStorage + 432), a2, &unk_2222981D8, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  if (a3 && (v10 = CFGetTypeID(a3), v10 != CFDictionaryGetTypeID()))
  {
    endpointAggregate_Activate_cold_1();
    v13 = 4294950576;
  }

  else if (*(DerivedStorage + 40))
  {
    endpointAggregate_Activate_cold_2();
    v13 = 4294950569;
  }

  else if (*(DerivedStorage + 44))
  {
    endpointAggregate_Activate_cold_3();
    v13 = 4294950573;
  }

  else
  {
    v11 = CMBaseObjectGetDerivedStorage();
    if (CFDictionaryGetCount(*(v11 + 8)))
    {
      endpointAggregate_Activate_cold_4();
      v13 = 4294895043;
    }

    else
    {
      v12 = endpointAggregate_copyActivationOptionsToStorage(a1, a2, a3, *(DerivedStorage + 408) != 3, 1);
      v13 = v12;
      if (v12)
      {
        endpointAggregate_Activate_cold_5(v12);
      }

      else
      {
        *(DerivedStorage + 264) = 0u;
        *(DerivedStorage + 280) = 0u;
        *(DerivedStorage + 304) = 0u;
        *(DerivedStorage + 320) = 0u;
        *(DerivedStorage + 296) = 0;
        *(DerivedStorage + 304) = a1;
        *(DerivedStorage + 264) = a1;
        *(DerivedStorage + 272) = endpointAggregate_handleAuthRequiredInternal;
        *(DerivedStorage + 288) = endpointAggregate_handleConnectedStateChangedInternal;
        *(DerivedStorage + 280) = endpointAggregate_handleFailedInternal;
        *(DerivedStorage + 320) = endpointAggregate_handleDidReceiveDataFromCommChannelInternal;
        *(DerivedStorage + 328) = endpointAggregate_handleDidCloseCommChannelInternal;
        *(DerivedStorage + 48) = a2;
        *(DerivedStorage + 40) = 1;
        ++*(DerivedStorage + 120);
      }
    }
  }

  v14 = CFRetain(a1);
  v15 = *(DerivedStorage + 120);
  if (a3)
  {
    a3 = CFRetain(a3);
  }

  v16 = *(DerivedStorage + 80);
  if (v16)
  {
    v17 = CFRetain(v16);
  }

  else
  {
    v17 = 0;
  }

  if (*(DerivedStorage + 408) != 3)
  {
    APSDispatchAsyncFHelper();
    goto LABEL_34;
  }

  v18 = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointAggregate, "void endpointAggregate_activateInternalForRC(void *)", 33554482, "[%{ptr}] Activating APEndpointAggregate RC %'@ with seed %llu...\n", v14, *(v18 + 432), v15);
  }

  if (v13)
  {
    APSLogErrorAt();
    if (gLogCategory_APEndpointAggregate <= 90 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointAggregate, "void endpointAggregate_activateInternalForRC(void *)", 33554522, "[%{ptr}] APEndpointAggregate RC activation (seed %llu) failed with error %#m.\n", v14, v15, v13);
    }

    endpointAggregate_clearActivationState(v14);
    if (!a4)
    {
      goto LABEL_30;
    }
  }

  else
  {
    *(v18 + 56) = a2;
    *(v18 + 40) = 2;
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointAggregate, "void endpointAggregate_activateInternalForRC(void *)", 33554482, "[%{ptr}] APEndpointAggregate activated for features %#ll{flags}\n", v14, a2, &unk_2222981D8);
    }

    if (!a4)
    {
      goto LABEL_30;
    }
  }

  CFRetain(v14);
  APSDispatchAsyncFHelper();
LABEL_30:
  CFRelease(v14);
  if (a3)
  {
    CFRelease(a3);
  }

  if (v17)
  {
    CFRelease(v17);
  }

LABEL_34:
  FigSimpleMutexUnlock();
  return v13;
}

uint64_t endpointAggregate_Deactivate(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    endpointAggregate_Deactivate_cold_1(a1);
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 44))
  {
    v6 = 4294950573;
LABEL_13:
    APSLogErrorAt();
    goto LABEL_8;
  }

  if (*(DerivedStorage + 40) != 2)
  {
    v6 = 4294951716;
    goto LABEL_13;
  }

  if (endpointAggregate_getSubEndpointCount(a1, 2))
  {
    v6 = 4294895043;
    goto LABEL_13;
  }

  v6 = 0;
LABEL_8:
  CFRetain(a1);
  APSDispatchAsyncFHelper();
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t endpointAggregate_Dissociate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 44))
  {
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      endpointAggregate_Dissociate_cold_1(a1);
    }

    *(DerivedStorage + 44) = 1;
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t endpointAggregate_SetDelegate(uint64_t a1, __int128 *a2)
{
  if (a2)
  {
    v3 = a2[1];
    v12[0] = *a2;
    v12[1] = v3;
    v13 = *(a2 + 4);
    v10[1] = 0;
    v10[0] = *&v12[0];
    v11 = a2[3];
    v4 = endpointAggregate_SetDelegateRouting(a1, v12);
    if (v4)
    {
      v6 = v4;
      endpointAggregate_SetDelegate_cold_1(v4);
    }

    else
    {
      v5 = endpointAggregate_SetDelegateRemoteControl(a1, v10);
      v6 = v5;
      if (v5)
      {
        endpointAggregate_SetDelegate_cold_2(v5);
      }
    }
  }

  else
  {
    v7 = endpointAggregate_SetDelegateRouting(a1, 0);
    if (v7)
    {
      v6 = v7;
      endpointAggregate_SetDelegate_cold_3(v7);
    }

    else
    {
      v8 = endpointAggregate_SetDelegateRemoteControl(a1, 0);
      v6 = v8;
      if (v8)
      {
        endpointAggregate_SetDelegate_cold_4(v8);
      }
    }
  }

  return v6;
}

uint64_t endpointAggregate_SetDelegateRouting(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 44))
  {
    endpointAggregate_SetDelegateRouting_cold_1();
    a2 = 4294950573;
  }

  else
  {
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_SetDelegateRouting(FigEndpointRef, const FigEndpointDelegateRouting *)", 33554482, "[%{ptr}] Setting endpoint routing delegate %{ptr}.\n", a1, a2);
    }

    v5 = *(DerivedStorage + 248);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 248) = 0;
    }

    if (a2)
    {
      v6 = *a2;
      v7 = *(a2 + 16);
      *(DerivedStorage + 208) = *(a2 + 32);
      *(DerivedStorage + 176) = v6;
      *(DerivedStorage + 192) = v7;
      a2 = 0;
      *(DerivedStorage + 248) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }

    else
    {
      *(DerivedStorage + 208) = 0;
      *(DerivedStorage + 176) = 0u;
      *(DerivedStorage + 192) = 0u;
    }
  }

  FigSimpleMutexUnlock();
  return a2;
}

uint64_t endpointAggregate_SetDelegateRemoteControl(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 44))
  {
    endpointAggregate_SetDelegateRemoteControl_cold_1();
    a2 = 4294950573;
  }

  else
  {
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_SetDelegateRemoteControl(FigEndpointRef, const FigEndpointDelegateRemoteControl *)", 33554482, "[%{ptr}] Setting endpoint remote control delegate %{ptr}.\n", a1, a2);
    }

    v5 = *(DerivedStorage + 256);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 256) = 0;
    }

    if (a2)
    {
      v6 = *a2;
      *(DerivedStorage + 232) = *(a2 + 16);
      *(DerivedStorage + 216) = v6;
      a2 = 0;
      *(DerivedStorage + 256) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }

    else
    {
      *(DerivedStorage + 232) = 0u;
      *(DerivedStorage + 216) = 0u;
    }
  }

  FigSimpleMutexUnlock();
  return a2;
}

uint64_t endpointAggregate_CreatePlaybackSession(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 40) != 2)
  {
    endpointAggregate_CreatePlaybackSession_cold_1();
    v6 = 4294951716;
    goto LABEL_8;
  }

  v4 = *(DerivedStorage + 152);
  if (!v4)
  {
    endpointAggregate_CreatePlaybackSession_cold_2();
    v6 = 4294895039;
    goto LABEL_8;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v5)
  {
    v6 = 4294954514;
LABEL_7:
    APSLogErrorAt();
    goto LABEL_8;
  }

  v6 = v5(v4, a2);
  if (v6)
  {
    goto LABEL_7;
  }

LABEL_8:
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t endpointAggregate_UpdateFeatures(const void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_UpdateFeatures(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554482, "[%{ptr}] UpdateFeatures %#ll{flags}\n", a1, a2, &unk_2222981D8);
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 408) == 3)
  {
    endpointAggregate_UpdateFeatures_cold_2();
    v9 = 4294950570;
  }

  else if (*(DerivedStorage + 40))
  {
    if (a1)
    {
      CFRetain(a1);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    APSDispatchAsyncFHelper();
    v9 = 0;
  }

  else
  {
    endpointAggregate_UpdateFeatures_cold_1();
    v9 = 4294949690;
  }

  FigSimpleMutexUnlock();
  return v9;
}

uint64_t endpointAggregate_copyActivationOptionsToStorage(uint64_t a1, uint64_t a2, const void *a3, int a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v57 = 0;
  v11 = *(DerivedStorage + 112);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 112) = 0;
  }

  v55 = a2;
  if (a3)
  {
    v12 = *MEMORY[0x277CC09D8];
    if (CFDictionaryContainsKey(a3, *MEMORY[0x277CC09D8]))
    {
      MutableCopy = CFRetain(a3);
    }

    else
    {
      v17 = APSCreateNewUUIDString();
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a3);
      CFDictionaryAddValue(MutableCopy, v12, v17);
      if (v17)
      {
        CFRelease(v17);
      }
    }

    *(DerivedStorage + 112) = MutableCopy;
    v18 = CFDictionaryGetValue(a3, *MEMORY[0x277CC09E8]);
    v14 = CFDictionaryGetValue(a3, *MEMORY[0x277CC09F8]);
    v16 = CFDictionaryGetInt64() == 0;
    v15 = *(DerivedStorage + 64);
    *(DerivedStorage + 64) = v18;
    if (v18)
    {
      CFRetain(v18);
    }
  }

  else
  {
    v14 = 0;
    *(DerivedStorage + 112) = 0;
    v15 = *(DerivedStorage + 64);
    v16 = 1;
    *(DerivedStorage + 64) = 0;
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v19 = *(DerivedStorage + 72);
  *(DerivedStorage + 72) = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (!a4)
  {
    v36 = 0;
    v25 = 0;
    Mutable = 0;
LABEL_83:
    v50 = 0;
    goto LABEL_84;
  }

  v20 = FigCFEqual();
  Int64 = APSSettingsGetInt64();
  v22 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    endpointAggregate_copyActivationOptionsToStorage_cold_5();
    v36 = 0;
    v25 = 0;
    v50 = 4294950575;
    goto LABEL_84;
  }

  v54 = a1;
  v24 = a5;
  v25 = CFDictionaryCreateMutable(v22, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v26 = *MEMORY[0x277CBED28];
  CFDictionarySetValue(v25, @"IsSharedAudioEngine", *MEMORY[0x277CBED28]);
  v27 = *MEMORY[0x277CBED10];
  if (v16)
  {
    v28 = *MEMORY[0x277CBED10];
  }

  else
  {
    v28 = v26;
  }

  CFDictionarySetValue(v25, @"IsHTGroup", v28);
  FigCFDictionarySetValueFromKeyInDict();
  v29 = MEMORY[0x277CEA278];
  if (Int64)
  {
    v29 = MEMORY[0x277CEA268];
  }

  CFDictionarySetValue(Mutable, @"PreferredNetworkClockType", *v29);
  CFDictionarySetValue(Mutable, @"AllowP2PForNTP", v26);
  if (v20)
  {
    v30 = v26;
  }

  else
  {
    v30 = v27;
  }

  CFDictionarySetValue(Mutable, @"IgnoreClientPIDForMediaRemote", v30);
  CFDictionarySetValue(Mutable, @"AudioEngineOptions", v25);
  v31 = *(DerivedStorage + 448);
  v32 = v20;
  if (v31)
  {
    CFDictionarySetValue(Mutable, @"NetworkClock", v31);
  }

  SharedContext = APEndpointCopyFromActivationOptionsOrCreateSharedContext(a3, v55, Mutable, &cf, 0, &v57);
  if (SharedContext)
  {
    v50 = SharedContext;
    endpointAggregate_copyActivationOptionsToStorage_cold_1(SharedContext);
    goto LABEL_105;
  }

  if (v24)
  {
    v34 = CMBaseObjectGetDerivedStorage();
    if (*(v34 + 408))
    {
      v35 = v32;
    }

    else
    {
      v35 = v32;
      v37 = *(CMBaseObjectGetDerivedStorage() + 488);
      if (v37 <= 0xD)
      {
        v38 = 0x1F6Fu >> v37;
        if (!a3)
        {
          goto LABEL_42;
        }

LABEL_39:
        v39 = CFDictionaryGetValue(a3, @"GroupID");
        if (v39)
        {
          v40 = CFRetain(v39);
          value = v40;
          if (v40)
          {
            v36 = v40;
            v41 = 0;
            goto LABEL_58;
          }

          goto LABEL_43;
        }

LABEL_42:
        value = 0;
LABEL_43:
        if (v38)
        {
          if (*(v34 + 408) == 2 && (endpointAggregate_isATVInHTGroup(v54) || endpointAggregate_isPersistentConnection(v54) && *(v34 + 488) == 7))
          {
            v36 = 0;
            v41 = 1;
            goto LABEL_58;
          }

          v43 = APSCreateNewUUIDString();
          value = v43;
          if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_copyFromActivationOptionsOrCreateGroupID(FigEndpointRef, CFDictionaryRef, CFStringRef *, Boolean *)", 33554482, "[%{ptr}] Using random UUID for groupID: %@\n", v54, v43);
          }

          if (v43)
          {
            v41 = 0;
            goto LABEL_57;
          }

          endpointAggregate_copyActivationOptionsToStorage_cold_3();
          v50 = 4294950575;
        }

        else
        {
          GroupID = endpointAggregate_generateGroupID(v54, &value);
          if (!GroupID)
          {
            v41 = 1;
LABEL_57:
            v36 = value;
LABEL_58:
            if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_copyActivationOptionsToStorage(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, Boolean, Boolean)", 33554482, "[%{ptr}] <AirPlayActivation> GroupID: %@ -> %@\n", v54, *(DerivedStorage + 88), v36);
            }

            v44 = *(DerivedStorage + 88);
            *(DerivedStorage + 88) = v36;
            if (v36)
            {
              CFRetain(v36);
            }

            if (v44)
            {
              CFRelease(v44);
            }

            *(DerivedStorage + 96) = v41;
            v32 = v35;
            goto LABEL_67;
          }

          v50 = GroupID;
          endpointAggregate_copyActivationOptionsToStorage_cold_2(GroupID);
        }

        if (value)
        {
          CFRelease(value);
        }

        APSLogErrorAt();
LABEL_105:
        v36 = 0;
        goto LABEL_84;
      }
    }

    LOBYTE(v38) = 1;
    if (!a3)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v36 = 0;
LABEL_67:
  v45 = cf;
  v46 = CMBaseObjectGetDerivedStorage();
  value = 0;
  if (!*(v46 + 456))
  {
    goto LABEL_75;
  }

  v47 = v46;
  if (!APSIsLowLatencyAudioSendingEnabled() || (v48 = *MEMORY[0x277CC1970], CFDictionaryContainsKey(*(v47 + 104), *MEMORY[0x277CC1970])))
  {
    v50 = 0;
  }

  else
  {
    AudioStreamOptions = APEndpointCreateAudioStreamOptions(v48, v45, v25, v32, &value);
    v50 = AudioStreamOptions;
    if (AudioStreamOptions)
    {
      endpointAggregate_copyActivationOptionsToStorage_cold_4(AudioStreamOptions);
    }

    else
    {
      CFDictionarySetValue(*(v47 + 104), v48, value);
    }
  }

  if (value)
  {
    CFRelease(value);
  }

  if (!v50)
  {
LABEL_75:
    CFDictionaryMergeDictionary();
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_copyActivationOptionsToStorage(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, Boolean, Boolean)", 33554482, "<AirPlayClock> Merged audio options [%{ptr}] into [%{ptr}] with features %#ll{flags}", v57, *(DerivedStorage + 104), v55, &unk_2222981D8);
    }

    v51 = *(DerivedStorage + 80);
    v52 = cf;
    *(DerivedStorage + 80) = cf;
    if (v52)
    {
      CFRetain(v52);
    }

    if (v51)
    {
      CFRelease(v51);
    }

    goto LABEL_83;
  }

  APSLogErrorAt();
LABEL_84:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v50;
}

uint64_t endpointAggregate_handleAuthRequiredInternal(const void *a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5, uint64_t a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 184))
  {
    if (*(DerivedStorage + 248) && (v13 = FigCFWeakReferenceHolderCopyReferencedObject(), *(DerivedStorage + 248)) && !v13)
    {
      if (gLogCategory_APEndpointAggregate <= 90 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
      {
        endpointAggregate_handleAuthRequiredInternal_cold_1(a4);
      }
    }

    else
    {
      v14 = malloc_type_calloc(1uLL, 0x18uLL, 0xA00402214FCE6uLL);
      if (a1)
      {
        v15 = CFRetain(a1);
      }

      else
      {
        v15 = 0;
      }

      *v14 = v15;
      v14[1] = a6;
      v14[2] = a7;
      if (a4)
      {
        CFRetain(a4);
      }

      if (a1)
      {
        CFRetain(a1);
      }

      if (a5)
      {
        CFRetain(a5);
      }

      APSDispatchAsyncFHelper();
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t endpointAggregate_handleConnectedStateChangedInternal(const void *a1, uint64_t a2, char a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 200))
  {
    if (*(DerivedStorage + 248) && (v8 = FigCFWeakReferenceHolderCopyReferencedObject(), *(DerivedStorage + 248)) && !v8)
    {
      if (gLogCategory_APEndpointAggregate <= 90 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
      {
        endpointAggregate_handleConnectedStateChangedInternal_cold_1(a5);
      }
    }

    else
    {
      if (a5)
      {
        CFRetain(a5);
      }

      if (a1)
      {
        CFRetain(a1);
      }

      APSDispatchAsyncFHelper();
    }
  }

  return FigSimpleMutexUnlock();
}

void endpointAggregate_handleFailedInternal(const void *a1, uint64_t a2, const __CFDictionary *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!DerivedStorage[24])
  {
LABEL_8:

    FigSimpleMutexUnlock();
    return;
  }

  if (DerivedStorage[31])
  {
    v8 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (DerivedStorage[31])
    {
      if (!v8)
      {
        if (gLogCategory_APEndpointAggregate <= 90 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
        {
          endpointAggregate_handleFailedInternal_cold_1(a4);
        }

        goto LABEL_8;
      }
    }
  }

  if (a3)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a3);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v10 = MutableCopy;
  if (MutableCopy)
  {
    CFDictionaryAddValue(MutableCopy, *MEMORY[0x277CC0A10], a1);
    CFDictionarySetInt64();
    if (a4)
    {
      v11 = CFRetain(a4);
    }

    else
    {
      v11 = 0;
    }

    v12 = DerivedStorage[24];
    v15[0] = v11;
    v15[1] = v12;
    v15[2] = DerivedStorage[15];
    v13 = CFRetain(v10);
    v14 = DerivedStorage[22];
    v15[3] = v13;
    v15[4] = v14;
    APSDispatchAsyncFHelper();
    FigSimpleMutexUnlock();
    CFRelease(v10);
  }

  else
  {
    endpointAggregate_handleFailedInternal_cold_2(v15, DerivedStorage);
  }
}

uint64_t endpointAggregate_handleDidReceiveDataFromCommChannelInternal(const void *a1, uint64_t a2, const void *a3, const void *a4, const void *a5)
{
  if (!a1)
  {
    return endpointAggregate_handleDidReceiveDataFromCommChannelInternal_cold_8();
  }

  if (!a3)
  {
    return endpointAggregate_handleDidReceiveDataFromCommChannelInternal_cold_7();
  }

  if (!a4)
  {
    return endpointAggregate_handleDidReceiveDataFromCommChannelInternal_cold_6();
  }

  if (!a5)
  {
    return endpointAggregate_handleDidReceiveDataFromCommChannelInternal_cold_5();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 44))
  {
    endpointAggregate_handleDidReceiveDataFromCommChannelInternal_cold_1();
  }

  else if (*(DerivedStorage + 40) == 2)
  {
    if (endpointAggregate_getSubEndpointCount(a5, 1) <= 0)
    {
      endpointAggregate_handleDidReceiveDataFromCommChannelInternal_cold_4();
    }

    else if (CFDictionaryContainsKey(*(DerivedStorage + 8), a1))
    {
      if (!CFDictionaryContainsKey(*(DerivedStorage + 168), a3))
      {
        if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointAggregate, "void endpointAggregate_handleDidReceiveDataFromCommChannelInternal(FigEndpointRef, uint64_t, CFStringRef, CFDataRef, CFTypeRef)", 33554482, "[%{ptr}] Registering incoming RCS with commChannelID [%@] from subEndpoint [%{ptr}]\n", a5, a3, a1);
        }

        CFDictionarySetValue(*(DerivedStorage + 168), a3, a1);
      }

      APEndpointCallRCDelegateDidReceiveDataAsync(a5, *(DerivedStorage + 120), a3, a4, *(DerivedStorage + 400), *(DerivedStorage + 232), *(DerivedStorage + 256));
    }

    else
    {
      endpointAggregate_handleDidReceiveDataFromCommChannelInternal_cold_3();
    }
  }

  else
  {
    endpointAggregate_handleDidReceiveDataFromCommChannelInternal_cold_2();
  }

  return FigSimpleMutexUnlock();
}

uint64_t endpointAggregate_handleDidCloseCommChannelInternal(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  if (!a1)
  {
    return endpointAggregate_handleDidCloseCommChannelInternal_cold_4();
  }

  if (!a3)
  {
    return endpointAggregate_handleDidCloseCommChannelInternal_cold_3();
  }

  if (!a4)
  {
    return endpointAggregate_handleDidCloseCommChannelInternal_cold_2();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 44))
  {
    endpointAggregate_handleDidCloseCommChannelInternal_cold_1();
  }

  else
  {
    endpointAggregate_unregisterCommChannelAndNotifyClientIfNeeded(a4, a3);
  }

  return FigSimpleMutexUnlock();
}

void endpointAggregate_activateInternal(uint64_t a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(a1 + 32))
  {
    APSLogErrorAt();
    v4 = *(a1 + 32);
    if (v4)
    {
LABEL_9:
      if (gLogCategory_APEndpointAggregate <= 90 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointAggregate, "void endpointAggregate_activateInternal(void *)", 33554522, "[%{ptr}] APEndpointAggregate activation (seed %llu) failed with error %#m.\n", v2, *(a1 + 16), v4);
      }

      FigSimpleMutexLock();
      if (*(a1 + 16) == *(DerivedStorage + 120) && *(DerivedStorage + 40) == 1)
      {
        endpointAggregate_clearActivationState(v2);
      }

      FigSimpleMutexUnlock();
      goto LABEL_17;
    }
  }

  else
  {
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointAggregate, "void endpointAggregate_activateInternal(void *)", 33554482, "[%{ptr}] Activating APEndpointAggregate %'@ with seed %llu...\n", v2, *(DerivedStorage + 432), *(a1 + 16));
    }

    FigSimpleMutexLock();
    if (*(a1 + 16) != *(DerivedStorage + 120) || *(DerivedStorage + 40) != 1)
    {
      FigSimpleMutexUnlock();
      v4 = 4294949692;
      APSLogErrorAt();
      goto LABEL_9;
    }

    *(DerivedStorage + 40) = 2;
    v7 = *(a1 + 8);
    *(DerivedStorage + 48) = 0;
    *(DerivedStorage + 56) = v7;
    endpointAggregate_ensureLocalPlaybackIsEnabledOrDisabled(v2);
    FigSimpleMutexUnlock();
  }

  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    endpointAggregate_activateInternal_cold_1(a1);
  }

LABEL_17:
  if (*(a1 + 40))
  {
    CFRetain(v2);
    APSDispatchAsyncFHelper();
  }

  CFRelease(*a1);
  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t endpointAggregate_isPersistentConnection(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 480);
  if (v2)
  {
    return v2 == *MEMORY[0x277CBED28];
  }

  v2 = *(DerivedStorage + 472);
  if (v2)
  {
    return v2 == *MEMORY[0x277CBED28];
  }

  if (!*(DerivedStorage + 456))
  {
    return 0;
  }

  return APSIsMemberOfPersistentGroup();
}

void endpointAggregate_authHandlingCompletionCallbackInternal(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4[1];
  if (v5)
  {
    v5(*a4, a2, a3, a4[2]);
  }

  if (*a4)
  {
    CFRelease(*a4);
  }

  free(a4);
}

void endpointAggregate_callDelegateHandleAuthRequiredInternal(uint64_t a1)
{
  (*(a1 + 16))(*a1, *(a1 + 8), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  if (*a1)
  {
    CFRelease(*a1);
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

void endpointAggregate_callDelegateHandleConnectedStateChangedInternal(uint64_t a1)
{
  (*(a1 + 8))(*a1, *(a1 + 24), *(a1 + 32), *(a1 + 16), *(a1 + 40));
  if (*a1)
  {
    CFRelease(*a1);
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void endpointAggregate_callDelegateHandleFailedInternal(uint64_t a1)
{
  (*(a1 + 8))(*a1, *(a1 + 16), *(a1 + 24), *(a1 + 32));
  if (*a1)
  {
    CFRelease(*a1);
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    CFRelease(v3);
  }
}

void endpointAggregate_deactivateInternal(CFTypeRef *a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(a1 + 8))
  {
    APSLogErrorAt();
  }

  else
  {
    FigSimpleMutexLock();
    if (a1[2] == *(DerivedStorage + 120) && *(DerivedStorage + 40))
    {
      endpointAggregate_clearActivationState(v2);
      FigSimpleMutexUnlock();
    }

    else
    {
      FigSimpleMutexUnlock();
      APSLogErrorAt();
    }
  }

  if (a1[5])
  {
    CFRetain(v2);
    APSDispatchAsyncFHelper();
  }

  CFRelease(*a1);
}

void endpointAggregate_updateFeaturesInternalWithContext(CFTypeRef *a1)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v24 = a1[4];
  v25[0] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  v8 = *(DerivedStorage + 48);
  if (!v8)
  {
    v8 = *(DerivedStorage + 56);
  }

  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_updateFeaturesInternal(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554482, "[%{ptr}] UpdateFeatures with features %#ll{flags} -> %#ll{flags} and options %@\n", v2, v8, &unk_2222981D8, v3, &unk_2222981D8, v5);
  }

  v9 = v8 | v3;
  if ((v8 | v3) == v8 && v9 == v3)
  {
    goto LABEL_33;
  }

  if (v9 != v8 && v9 != v3)
  {
    v25[0] = -6705;
    goto LABEL_33;
  }

  isPersistentConnection = endpointAggregate_isPersistentConnection(v2);
  v13 = endpointAggregate_copyActivationOptionsToStorage(v2, v3, v5, (v8 | v3) != v8, isPersistentConnection);
  v25[0] = v13;
  if (v13)
  {
    endpointAggregate_updateFeaturesInternalWithContext_cold_1(v13);
    goto LABEL_33;
  }

  v14 = *MEMORY[0x277CBECE8];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    endpointAggregate_updateFeaturesInternalWithContext_cold_4();
LABEL_33:
    CFRetain(v2);
    APSDispatchAsyncFHelper();
    if (v25[0])
    {
      endpointAggregate_updateFeaturesInternalWithContext_cold_5(v25[0]);
    }

    goto LABEL_35;
  }

  v16 = MutableCopy;
  v17 = MEMORY[0x277CBED28];
  if (*(v7 + 408) != 2)
  {
    v17 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(MutableCopy, @"IsPartOfCluster", *v17);
  if (v9 == v8)
  {
    v18 = 0;
  }

  else
  {
    v18 = CFStringCreateF(v25, "%@-%{ptr}", *(v7 + 432), v2);
    if (v25[0])
    {
      endpointAggregate_updateFeaturesInternalWithContext_cold_2(v25[0]);
      goto LABEL_30;
    }

    CFDictionarySetValue(v16, @"ParentContextID", v18);
  }

  CFDictionarySetValue(v16, @"AudioOptions", *(v7 + 104));
  *(v7 + 48) = v3;
  v19 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A00407E6BCD4EuLL);
  if (v19)
  {
    v20 = v19;
    *v19 = v2;
    CFRetain(v2);
    v21 = *(v7 + 120);
    v20[1] = v3;
    v20[2] = v21;
    *(v20 + 6) = 0;
    v20[4] = v4;
    v20[5] = v24;
    v20[6] = CFDictionaryCreateMutable(v14, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    Count = CFDictionaryGetCount(*(v7 + 8));
    v20[7] = Count;
    if (gLogCategory_APEndpointAggregate <= 50)
    {
      if (gLogCategory_APEndpointAggregate == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_29;
        }

        Count = v20[7];
      }

      LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_updateFeaturesInternal(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554482, "[%{ptr}] UpdateFeatures for %ld subEndpoints - starting\n", v2, Count);
    }

LABEL_29:
    CFDictionaryApplyBlock();
    goto LABEL_30;
  }

  endpointAggregate_updateFeaturesInternalWithContext_cold_3(v25);
LABEL_30:
  CFRelease(v16);
  if (v18)
  {
    CFRelease(v18);
  }

  if (v25[0])
  {
    goto LABEL_33;
  }

LABEL_35:
  FigSimpleMutexUnlock();
  if (*a1)
  {
    CFRelease(*a1);
  }

  v23 = a1[2];
  if (v23)
  {
    CFRelease(v23);
  }
}

void __endpointAggregate_updateFeaturesInternal_block_invoke(void *a1, const void *a2)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v7)
  {
    v8 = v7(a2, v4, v5, endpointaggregate_handleSubEndpointUpdateFeaturesCompleted, v6);
  }

  else
  {
    v8 = 4294954514;
  }

  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_updateFeaturesInternal(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)_block_invoke", 33554482, "[%{ptr}] called UpdateFeatures for subEndpoints [%{ptr}], result %#m\n", a1[7], a2, v8);
  }

  if (v8 == -12782)
  {
    if (a2)
    {
      CFRetain(a2);
    }

    v9 = a1[8];
    v10 = *(v9 + 400);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __endpointAggregate_updateFeaturesInternal_block_invoke_2;
    block[3] = &__block_descriptor_tmp_163;
    v11 = a1[4];
    block[4] = a2;
    block[5] = v11;
    v14 = -12782;
    v12 = a1[6];
    block[6] = v9;
    block[7] = v12;
    dispatch_async(v10, block);
  }
}

void endpointaggregate_handleSubEndpointUpdateFeaturesCompleted(const void *a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v11 = *(DerivedStorage + 400);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __endpointaggregate_handleSubEndpointUpdateFeaturesCompleted_block_invoke;
  block[3] = &__block_descriptor_tmp_165;
  block[4] = a1;
  block[5] = a2;
  v13 = a4;
  block[6] = a3;
  block[7] = a5;
  dispatch_async(v11, block);
}

void __endpointAggregate_updateFeaturesInternal_block_invoke_2(uint64_t a1)
{
  endpointaggregate_handleSubEndpointUpdateFeaturesCompletedInternal(*(a1 + 32), *(a1 + 64), *(a1 + 56));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void endpointaggregate_handleSubEndpointUpdateFeaturesCompletedInternal(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointAggregate, "void endpointaggregate_handleSubEndpointUpdateFeaturesCompletedInternal(FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, SubEndpointUpdateFeaturesCallbackContext *)", 33554482, "[%{ptr}] UpdateFeatures completed for subEndpoint [%{ptr}], result = %#m.\n", *a3, a1, a2);
  }

  CFDictionarySetInt64();
  Count = CFDictionaryGetCount(a3[6]);
  v8 = a3[7];
  if (Count != v8)
  {
    if (gLogCategory_APEndpointAggregate > 50)
    {
      return;
    }

    v11 = Count;
    if (gLogCategory_APEndpointAggregate == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v8 = a3[7];
    }

    LogPrintF(&gLogCategory_APEndpointAggregate, "void endpointaggregate_handleSubEndpointUpdateFeaturesCompletedInternal(FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, SubEndpointUpdateFeaturesCallbackContext *)", 33554482, "[%{ptr}] UpdateFeatures completed for %ld of %ld subEndpoints.\n", *a3, v11, v8);
    return;
  }

  v23 = 0u;
  memset(v22, 0, sizeof(v22));
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v13 = MEMORY[0x277D85DD0];
  CFDictionaryApplyBlock();
  FigSimpleMutexLock();
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    v9 = *(v19 + 6);
    if (*(v15 + 24))
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    LogPrintF(&gLogCategory_APEndpointAggregate, "void endpointaggregate_handleSubEndpointUpdateFeaturesCompletedInternal(FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, SubEndpointUpdateFeaturesCallbackContext *)", 33554482, "[%{ptr}] UpdateFeatures completed for %ld subEndpoints, result = %#m -> %#m; features %#ll{flags} -> %#ll{flags}.\n", *a3, a3[7], v9, v10, *(DerivedStorage + 56), &unk_2222981D8, a3[1], &unk_2222981D8, v13, 0x40000000, __endpointaggregate_handleSubEndpointUpdateFeaturesCompletedInternal_block_invoke, &unk_27849B2D0, &v18, &v14);
  }

  if (*(v15 + 24))
  {
    *(v19 + 6) = 0;
  }

  else if (*(v19 + 6))
  {
    goto LABEL_20;
  }

  *(DerivedStorage + 56) = a3[1];
LABEL_20:
  *(DerivedStorage + 48) = 0;
  FigSimpleMutexUnlock();
  *&v22[0] = CFRetain(*a3);
  *(v22 + 8) = vextq_s8(*(a3 + 1), *(a3 + 1), 8uLL);
  DWORD2(v22[1]) = *(v19 + 6);
  v23 = *(a3 + 2);
  APSDispatchAsyncFHelper();
  if (*a3)
  {
    CFRelease(*a3);
  }

  v12 = a3[6];
  if (v12)
  {
    CFRelease(v12);
  }

  free(a3);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
}

void __endpointaggregate_handleSubEndpointUpdateFeaturesCompleted_block_invoke(uint64_t a1)
{
  endpointaggregate_handleSubEndpointUpdateFeaturesCompletedInternal(*(a1 + 32), *(a1 + 64), *(a1 + 56));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t __endpointaggregate_handleSubEndpointUpdateFeaturesCompletedInternal_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = FigCFNumberGetUInt64();
  v5 = *(*(a1 + 32) + 8);
  if (*(v5 + 24))
  {
    v6 = 1;
  }

  else
  {
    v6 = result == 0;
  }

  if (v6)
  {
    if (!result)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  else
  {
    *(v5 + 24) = result;
  }

  return result;
}

uint64_t endpointAggregate_DuckAudio(uint64_t a1, const __CFDictionary *a2)
{
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_DuckAudio(FigEndpointExtendedRef, CFDictionaryRef)", 33554482, "[%{ptr}] DuckAudio %@\n", a1, a2);
  }

  FigSimpleMutexLock();
  if (!a2)
  {
    v16 = 4294950576;
LABEL_33:
    APSLogErrorAt();
    FigSimpleMutexUnlock();
    return v16;
  }

  if (!CFDictionaryContainsKey(a2, *MEMORY[0x277CC0BA8]))
  {
    v16 = 4294950576;
    goto LABEL_33;
  }

  if (*(DerivedStorage + 40) != 2)
  {
    v16 = 4294951716;
    goto LABEL_33;
  }

  v5 = FigCFDictionaryCopyArrayOfKeys();
  if (!v5)
  {
    v16 = 4294950575;
    goto LABEL_33;
  }

  v6 = v5;
  Count = CFArrayGetCount(v5);
  if (Count < 1)
  {
LABEL_21:
    v15 = *(DerivedStorage + 336);
    *(DerivedStorage + 336) = a2;
    CFRetain(a2);
    if (v15)
    {
      CFRelease(v15);
    }

    v16 = 0;
  }

  else
  {
    v8 = Count;
    for (i = 0; i != v8; ++i)
    {
      if (CFArrayGetValueAtIndex(v6, i))
      {
        FigEndpointExtendedGetClassID();
        if (CMBaseObjectIsMemberOfClass())
        {
          continue;
        }
      }

      APSLogErrorAt();
      v16 = 4294950570;
      goto LABEL_25;
    }

    v10 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, v10);
      if (!ValueAtIndex || (v12 = ValueAtIndex, FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
      {
        v12 = 0;
      }

      v13 = *(*(CMBaseObjectGetVTable() + 24) + 48);
      if (!v13)
      {
        v16 = 4294954514;
        goto LABEL_28;
      }

      v14 = v13(v12, a2);
      if (v14)
      {
        break;
      }

      if (v8 == ++v10)
      {
        goto LABEL_21;
      }
    }

    v16 = v14;
LABEL_28:
    APSLogErrorAt();
  }

LABEL_25:
  FigSimpleMutexUnlock();
  CFRelease(v6);
  return v16;
}

uint64_t endpointAggregate_SendCommand(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void, uint64_t), uint64_t a5)
{
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 40) != 2)
  {
    v19 = 4294951716;
LABEL_19:
    APSLogErrorAt();
    v12 = 0;
    goto LABEL_12;
  }

  v11 = FigCFDictionaryCopyArrayOfKeys();
  if (!v11)
  {
    v19 = 4294950575;
    goto LABEL_19;
  }

  v12 = v11;
  Count = CFArrayGetCount(v11);
  if (Count >= 1)
  {
    v14 = Count;
    for (i = 0; i != v14; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v12, i);
      if (!ValueAtIndex || (v17 = ValueAtIndex, FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
      {
        v17 = 0;
      }

      v18 = *(*(CMBaseObjectGetVTable() + 24) + 72);
      if (v18)
      {
        v18(v17, a2, a3, 0, 0);
      }
    }
  }

  v19 = 0;
LABEL_12:
  FigSimpleMutexUnlock();
  if (a4)
  {
    a4(a1, v19, 0, a5);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v19;
}

uint64_t endpointAggregate_SendData(const void *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = endpointAggregate_copySubEndpointExtendedForRelayCommChannel(FigEndpoint, a2);
  if (v12)
  {
    RCSendDataCompletionContext = APEndpointCreateRCSendDataCompletionContext(a1, a2, *(DerivedStorage + 400), a4, a5);
    if (RCSendDataCompletionContext)
    {
      v14 = RCSendDataCompletionContext;
      v15 = *(*(CMBaseObjectGetVTable() + 24) + 96);
      if (v15)
      {
        v15(v12, a2, a3, APEndpointCallRCSendDataCompletionFromContextAsync, v14);
      }

LABEL_5:
      CFRelease(v12);
      return 0;
    }

    v17 = -16721;
  }

  else
  {
    v17 = -16725;
  }

  APSLogErrorAt();
  if (a4)
  {
    APEndpointCallRCSendDataCompletionAsync(a1, a2, v17, *(DerivedStorage + 400), a4, a5);
  }

  if (v12)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t endpointAggregate_AcquireAndCopyResource(uint64_t a1, uint64_t a2, const __CFDictionary *a3, void *a4)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_AcquireAndCopyResource(FigEndpointExtendedRef, CFStringRef, CFDictionaryRef, CFTypeRef *)", 33554482, "[%{ptr}] Resource '%@' requested.\n", FigEndpoint, a2);
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 40) != 2)
  {
    v17 = 4294949690;
    goto LABEL_23;
  }

  if (FigCFEqual())
  {
    v9 = CMBaseObjectGetDerivedStorage();
    if (a3)
    {
      v10 = v9;
      Value = CFDictionaryGetValue(a3, *MEMORY[0x277CC09A8]);
      if (Value)
      {
        v12 = Value;
        v13 = *(v10 + 128);
        if (v13)
        {
          v14 = CFDictionaryGetValue(v13, v12);
          if (v14)
          {
            v15 = CFRetain(v14);
            if (v15)
            {
              v16 = v15;
              if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_acquireAndCopyEndpointStream(FigEndpointRef, CFDictionaryRef, CFTypeRef *)", 33554482, "[%{ptr}] %@ stream requested: [%{ptr}]\n", FigEndpoint, v12, v16);
              }

              v17 = 0;
              *a4 = v16;
              goto LABEL_23;
            }
          }

          endpointAggregate_AcquireAndCopyResource_cold_1();
        }

        else
        {
          endpointAggregate_AcquireAndCopyResource_cold_2();
        }

        v17 = 4294950571;
        goto LABEL_23;
      }

      endpointAggregate_AcquireAndCopyResource_cold_3();
    }

    else
    {
      endpointAggregate_AcquireAndCopyResource_cold_4();
    }

    v17 = 4294950576;
    goto LABEL_23;
  }

  if (gLogCategory_APEndpointAggregate <= 90 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_AcquireAndCopyResource(FigEndpointExtendedRef, CFStringRef, CFDictionaryRef, CFTypeRef *)", 33554522, "### [%{ptr}] Unsupported resource type '%@' requested.\n", FigEndpoint, a2);
  }

  v17 = 4294950570;
LABEL_23:
  FigSimpleMutexUnlock();
  return v17;
}

uint64_t endpointAggregate_RelinquishResource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_RelinquishResource(FigEndpointExtendedRef, CFStringRef, CFTypeRef)", 33554482, "[%{ptr}] Relinquishing '%@' [%{ptr}].\n", FigEndpoint, a2, a3);
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 40) != 2)
  {
    v7 = 4294949690;
LABEL_13:
    APSLogErrorAt();
    goto LABEL_9;
  }

  if (!a3)
  {
    v7 = 4294950576;
    goto LABEL_13;
  }

  if (!FigCFEqual())
  {
    v7 = 4294950570;
    goto LABEL_13;
  }

  v7 = 0;
LABEL_9:
  FigSimpleMutexUnlock();
  return v7;
}

void endpointAggregate_CloseAllCommChannels(uint64_t a1)
{
  FigEndpointExtendedGetFigEndpoint();
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = FigCFDictionaryCopyArrayOfKeys();
  FigSimpleMutexUnlock();
  if (v1)
  {
    CFArrayGetCount(v1);
    CFArrayApplyBlock();
    CFRelease(v1);
  }

  else
  {
    endpointAggregate_CloseAllCommChannels_cold_1();
  }
}

uint64_t endpointAggregate_borrowOrUnborrowScreen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 408) != 2)
  {
    endpointAggregate_borrowOrUnborrowScreen_cold_1();
    v14 = 4294950570;
    goto LABEL_18;
  }

  if (*(DerivedStorage + 40) != 2)
  {
    endpointAggregate_borrowOrUnborrowScreen_cold_2();
    v14 = 4294951716;
    goto LABEL_18;
  }

  FirstSubEndpointActivatedForFeatures = endpointAggregate_getFirstSubEndpointActivatedForFeatures(FigEndpoint, 1);
  if (!FirstSubEndpointActivatedForFeatures)
  {
    endpointAggregate_borrowOrUnborrowScreen_cold_3();
    goto LABEL_9;
  }

  v11 = FirstSubEndpointActivatedForFeatures;
  FigEndpointExtendedGetClassID();
  if (!CMBaseObjectIsMemberOfClass())
  {
    APSLogErrorAt();
LABEL_9:
    v14 = 4294949690;
    goto LABEL_18;
  }

  v12 = *(CMBaseObjectGetVTable() + 24);
  if (a4)
  {
    v13 = *(v12 + 24);
    if (v13)
    {
LABEL_11:
      v14 = v13(v11, a2, a3);
      if (!v14)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v13 = *(v12 + 16);
    if (v13)
    {
      goto LABEL_11;
    }
  }

  v14 = 4294954514;
LABEL_14:
  APSLogErrorAt();
  if (gLogCategory_APEndpointAggregate <= 90 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointAggregate, "OSStatus endpointAggregate_borrowOrUnborrowScreen(FigEndpointExtendedRef, CFStringRef, CFStringRef, ScreenOperation)", 33554522, "### [%{ptr}] Screen operation %d failed with err %#m\n", a1, a4, v14);
  }

LABEL_18:
  FigSimpleMutexUnlock();
  return v14;
}

const void *endpointAggregate_copySubEndpointExtendedForRelayCommChannel(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 40) == 2)
  {
    Value = CFDictionaryGetValue(*(DerivedStorage + 168), a2);
    if (Value)
    {
      FigEndpointExtendedGetClassID();
      if (!CMBaseObjectIsMemberOfClass())
      {
        Value = 0;
      }

      CFRetain(Value);
    }

    else
    {
      endpointAggregate_copySubEndpointExtendedForRelayCommChannel_cold_2();
    }
  }

  else
  {
    endpointAggregate_copySubEndpointExtendedForRelayCommChannel_cold_1();
    Value = 0;
  }

  FigSimpleMutexUnlock();
  return Value;
}

uint64_t endpointAggregate_AddEndpoint(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  FigEndpointAggregateGetFigEndpoint();
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v10 = endpointAggregate_addEndpointInternal(a1, a2, a3, a4, a5);
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t endpointAggregate_RemoveEndpoint(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  FigEndpointAggregateGetFigEndpoint();
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v9 = endpointAggregate_removeEndpointInternal(a1, a2, a4, a5);
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t APEndpointStreamCarPlayAudioCreate(const __CFAllocator *a1, uint64_t a2, const void *a3, const void *a4, const void *a5, const __CFDictionary *a6, const void *a7, const void *a8, const void *a9, const void *a10, CFTypeRef *a11)
{
  v91 = *MEMORY[0x277D85DE8];
  cf = 0;
  v83 = 0;
  theString = 0;
  v81 = 0;
  v89 = 0u;
  v90 = 0u;
  *label = 0u;
  v88 = 0u;
  if (!a2)
  {
    APEndpointStreamCarPlayAudioCreate_cold_23();
LABEL_114:
    v32 = 4294950536;
    goto LABEL_90;
  }

  if (!a3)
  {
    APEndpointStreamCarPlayAudioCreate_cold_22();
    goto LABEL_114;
  }

  if (!a5)
  {
    APEndpointStreamCarPlayAudioCreate_cold_21();
    goto LABEL_114;
  }

  if (!a8)
  {
    APEndpointStreamCarPlayAudioCreate_cold_20();
    goto LABEL_114;
  }

  if (!a7)
  {
    APEndpointStreamCarPlayAudioCreate_cold_19();
    goto LABEL_114;
  }

  if (!a10)
  {
    APEndpointStreamCarPlayAudioCreate_cold_18();
    goto LABEL_114;
  }

  if (!a9)
  {
    APEndpointStreamCarPlayAudioCreate_cold_17();
    goto LABEL_114;
  }

  if (!a11)
  {
    APEndpointStreamCarPlayAudioCreate_cold_16();
    goto LABEL_114;
  }

  FigEndpointStreamGetClassID();
  v79 = a1;
  v17 = CMDerivedObjectCreate();
  if (v17)
  {
    v32 = v17;
    APEndpointStreamCarPlayAudioCreate_cold_1(v17);
    goto LABEL_90;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(DerivedStorage + 24) = CFRetain(a3);
  *(DerivedStorage + 32) = CFRetain(a4);
  *(DerivedStorage + 40) = CFRetain(a5);
  *(DerivedStorage + 96) = CFRetain(a8);
  *(DerivedStorage + 8) = CFRetain(a7);
  *(DerivedStorage + 16) = CFRetain(a10);
  *(DerivedStorage + 104) = CFRetain(a9);
  APEndpointDescriptionGetCMBaseObject();
  v20 = v19;
  v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v21)
  {
    v32 = 4294954514;
    goto LABEL_15;
  }

  v22 = v21(v20, @"DeviceID", a1, &cf);
  if (v22)
  {
    v32 = v22;
    goto LABEL_15;
  }

  v23 = cf;
  v24 = *(DerivedStorage + 32);
  v25 = *(DerivedStorage + 40);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  *(DerivedStorage + 48) = CFStringCreateWithFormat(a1, 0, @"%@-%@-%@-%llu", v23, v24, v25, UpTimeNanoseconds);
  v27 = CFEqual(a5, *MEMORY[0x277CC1938]);
  v28 = MEMORY[0x277CC1940];
  if (v27)
  {
    v29 = 1;
    v30 = 1835100526;
    v31 = 1;
  }

  else if (CFEqual(a5, *MEMORY[0x277CC1918]))
  {
    v29 = 0;
    v31 = 1;
    v30 = 1634497568;
  }

  else if (CFEqual(a5, *MEMORY[0x277CC1920]))
  {
    v29 = 0;
    v31 = 1;
    v30 = 1635088495;
  }

  else
  {
    if (!CFEqual(a5, *v28))
    {
      v32 = 4294950536;
      goto LABEL_15;
    }

    v31 = 0;
    v29 = 1;
    v30 = 1869575779;
  }

  *(DerivedStorage + 68) = v30;
  *(DerivedStorage + 72) = v29;
  *(DerivedStorage + 73) = v31;
  if (APSSettingsGetInt64())
  {
    theDict = 0;
    v33 = *MEMORY[0x277CBECE8];
    APEndpointDescriptionGetCMBaseObject();
    v35 = v34;
    v36 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v36)
    {
      v36(v35, @"HeadUnitRestrictions", v33, &theDict);
    }

    if (!theDict)
    {
      APEndpointStreamCarPlayAudioCreate_cold_2();
      v32 = 0;
      goto LABEL_90;
    }

    v37 = CFDictionaryContainsKey(theDict, @"kAPCarPlay_ClockUnstable") == 0;
    goto LABEL_34;
  }

  v33 = *MEMORY[0x277CBECE8];
  APEndpointDescriptionGetCMBaseObject();
  v39 = v38;
  v40 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v40)
  {
    v40(v39, @"Manufacturer", v33, &v81);
  }

  APEndpointDescriptionGetCMBaseObject();
  v42 = v41;
  v43 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v43)
  {
    v43(v42, @"Model", v33, &theString);
  }

  v44 = FigCFEqual();
  v45 = 1;
  if (v44 && theString)
  {
    v37 = CFStringFind(theString, @"NBTEvo", 0).location == -1;
LABEL_34:
    v45 = v37;
  }

  v46 = APAudioZeroTimeStampProviderCreate(a1, v45, (DerivedStorage + 56), 2.017);
  if (v46)
  {
    v32 = v46;
    APEndpointStreamCarPlayAudioCreate_cold_3(v46);
    goto LABEL_90;
  }

  v47 = v83;
  v48 = CMBaseObjectGetDerivedStorage();
  theString1 = 0;
  theDict = 0;
  if (APSSettingsGetInt64())
  {
    v84 = 0;
    APEndpointDescriptionGetCMBaseObject();
    v50 = v49;
    v51 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v51 && (v51(v50, @"HeadUnitRestrictions", v33, &v84), v84))
    {
      CFDictionaryContainsKey(v84, @"kAPCarPlay_DisableTimestampSmoothing");
    }

    else
    {
      APEndpointStreamCarPlayAudioCreate_cold_4();
    }

    goto LABEL_56;
  }

  APEndpointDescriptionGetCMBaseObject();
  v53 = v52;
  v54 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v54)
  {
    v54(v53, @"Manufacturer", v33, &theDict);
  }

  APEndpointDescriptionGetCMBaseObject();
  v56 = v55;
  v57 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v57)
  {
    v57(v56, @"Model", v33, &theString1);
    v58 = theDict;
    if (theDict)
    {
      v59 = theString1;
      if (theString1)
      {
        if (gLogCategory_APEndpointStreamCarPlayAudio <= 30)
        {
          if (gLogCategory_APEndpointStreamCarPlayAudio == -1)
          {
            v60 = _LogCategory_Initialize();
            v58 = theDict;
            if (!v60)
            {
              goto LABEL_52;
            }

            v59 = theString1;
          }

          LogPrintF(&gLogCategory_APEndpointStreamCarPlayAudio, "Boolean carAudioStream_isTimestampSmoothingDisabled(FigEndpointStreamRef)", 33554462, "[%{ptr}] %@: HU details: manufacturer: <%@>, model: <%@> \n", v47, *(v48 + 40), v58, v59);
          v58 = theDict;
        }

LABEL_52:
        if ((CFStringCompare(v58, @"SUZUKI", 0) == kCFCompareEqualTo && CFStringCompare(theString1, @"Suzuki Harman MY15SN", 0) == kCFCompareEqualTo || CFStringCompare(theDict, @"JBL", 0) == kCFCompareEqualTo && CFStringCompare(theString1, @"Legend CP100", 0) == kCFCompareEqualTo) && gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointStreamCarPlayAudio, "Boolean carAudioStream_isTimestampSmoothingDisabled(FigEndpointStreamRef)", 33554482, "[%{ptr}] %@: Turning off timestamp smoothing for this HU\n", v47, *(v48 + 40));
        }
      }
    }
  }

LABEL_56:
  IntWithDefault = APSSettingsGetIntWithDefault();
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (theString1)
  {
    CFRelease(theString1);
  }

  *(DerivedStorage + 64) = IntWithDefault;
  if (gLogCategory_APEndpointStreamCarPlayAudio <= 50)
  {
    if (gLogCategory_APEndpointStreamCarPlayAudio == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_68;
      }

      v62 = *(DerivedStorage + 64);
    }

    else
    {
      v62 = IntWithDefault;
    }

    if (v62)
    {
      v63 = "Disabled";
    }

    else
    {
      v63 = "Enabled";
    }

    LogPrintF(&gLogCategory_APEndpointStreamCarPlayAudio, "OSStatus APEndpointStreamCarPlayAudioCreate(CFAllocatorRef, FigEndpointRef, CFStringRef, CFStringRef, CFStringRef, CFDictionaryRef, APEndpointDescriptionRef, APSenderSessionRef, APSNetworkClockRef, APAudioEngineRef, FigEndpointStreamRef *)", 33554482, "[%{ptr}] [%@] TimeStampSmoothing is %s\n", v83, *(DerivedStorage + 40), v63);
  }

LABEL_68:
  *(DerivedStorage + 392) = 0;
  *(DerivedStorage + 488) = 0;
  CMBaseObjectGetDerivedStorage();
  if (a6)
  {
    CFDictionaryGetValue(a6, @"EventRecorder");
  }

  if (FigCFEqual())
  {
    v64 = APSEventRecorderCreate();
    if (!v64)
    {
      goto LABEL_81;
    }

    v32 = v64;
    APEndpointStreamCarPlayAudioCreate_cold_5(v64);
LABEL_15:
    APSLogErrorAt();
    goto LABEL_90;
  }

  if (FigCFEqual())
  {
    v65 = APSEventRecorderCreate();
    if (v65)
    {
      v32 = v65;
      APEndpointStreamCarPlayAudioCreate_cold_6(v65);
      goto LABEL_15;
    }
  }

  else
  {
    if (!FigCFEqual())
    {
      if (FigCFEqual())
      {
        v67 = APSEventRecorderCreate();
        if (!v67)
        {
          goto LABEL_81;
        }

        v32 = v67;
        APEndpointStreamCarPlayAudioCreate_cold_8(v67);
      }

      else
      {
        v32 = 4294950536;
        APSLogErrorAt();
      }

      goto LABEL_15;
    }

    v66 = APSEventRecorderCreate();
    if (v66)
    {
      v32 = v66;
      APEndpointStreamCarPlayAudioCreate_cold_7(v66);
      goto LABEL_15;
    }
  }

LABEL_81:
  APSEventRecorderAddSignPostForEvent();
  v68 = APCarPlayAnalyticsCreate(v79, (DerivedStorage + 88));
  if (v68)
  {
    v32 = v68;
    APEndpointStreamCarPlayAudioCreate_cold_9(v68);
    goto LABEL_90;
  }

  SNPrintF(label, 64, "APEndpointStreamCarPlayAudio.%@.notification", a5);
  v69 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 112) = v69;
  if (!v69)
  {
    APEndpointStreamCarPlayAudioCreate_cold_15();
LABEL_123:
    v32 = 4294950535;
    goto LABEL_90;
  }

  SNPrintF(label, 64, "APEndpointStreamCarPlayAudio.%@.state", a5);
  v70 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 120) = v70;
  if (!v70)
  {
    APEndpointStreamCarPlayAudioCreate_cold_14();
    goto LABEL_123;
  }

  SNPrintF(label, 64, "APEndpointStreamCarPlayAudio.%@.network", a5);
  v71 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 168) = v71;
  if (!v71)
  {
    APEndpointStreamCarPlayAudioCreate_cold_13();
    goto LABEL_123;
  }

  SNPrintF(label, 64, "APEndpointStreamCarPlayAudio.%@.input", a5);
  v72 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 352) = v72;
  if (!v72)
  {
    APEndpointStreamCarPlayAudioCreate_cold_12();
    goto LABEL_123;
  }

  SNPrintF(label, 64, "APEndpointStreamCarPlayAudio.%@.output", a5);
  v73 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 416) = v73;
  if (!v73)
  {
    APEndpointStreamCarPlayAudioCreate_cold_11();
    goto LABEL_123;
  }

  if (CFEqual(a5, *v28) && (v76 = APCarPlayAVVCServerRegisterStream(v83, v74, v75), v76))
  {
    v32 = v76;
    APEndpointStreamCarPlayAudioCreate_cold_10(v76);
  }

  else
  {
    v32 = 0;
    *a11 = v83;
    v83 = 0;
  }

LABEL_90:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v83)
  {
    CFRelease(v83);
  }

  if (v81)
  {
    CFRelease(v81);
  }

  if (theString)
  {
    CFRelease(theString);
  }

  return v32;
}

uint64_t carAudioStream_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
  {
    carAudioStream_finalize_cold_1(a1, v2, v3);
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v5 = *(DerivedStorage + 8);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 8) = 0;
  }

  v6 = *(DerivedStorage + 16);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 16) = 0;
  }

  v7 = *(DerivedStorage + 24);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 24) = 0;
  }

  v8 = *(DerivedStorage + 40);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 40) = 0;
  }

  v9 = *(DerivedStorage + 48);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 48) = 0;
  }

  v10 = *(DerivedStorage + 80);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 80) = 0;
  }

  v11 = *(DerivedStorage + 96);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 96) = 0;
  }

  v12 = *(DerivedStorage + 104);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 104) = 0;
  }

  v13 = *(DerivedStorage + 56);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 56) = 0;
  }

  v14 = *(DerivedStorage + 136);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 136) = 0;
  }

  v15 = *(DerivedStorage + 144);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 144) = 0;
  }

  v16 = *(DerivedStorage + 152);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 152) = 0;
  }

  v17 = *(DerivedStorage + 160);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 160) = 0;
  }

  v18 = *(DerivedStorage + 112);
  if (v18)
  {
    dispatch_release(v18);
    *(DerivedStorage + 112) = 0;
  }

  v19 = *(DerivedStorage + 120);
  if (v19)
  {
    dispatch_release(v19);
    *(DerivedStorage + 120) = 0;
  }

  v20 = *(DerivedStorage + 168);
  if (v20)
  {
    dispatch_release(v20);
    *(DerivedStorage + 168) = 0;
  }

  v21 = *(DerivedStorage + 352);
  if (v21)
  {
    dispatch_release(v21);
    *(DerivedStorage + 352) = 0;
  }

  v22 = *(DerivedStorage + 416);
  if (v22)
  {
    dispatch_release(v22);
    *(DerivedStorage + 416) = 0;
  }

  v23 = *(DerivedStorage + 88);
  if (v23)
  {
    CFRelease(v23);
    *(DerivedStorage + 88) = 0;
  }

  v24 = *(DerivedStorage + 368);
  if (v24)
  {
    CFRelease(v24);
    *(DerivedStorage + 368) = 0;
  }

  v25 = *(DerivedStorage + 376);
  if (v25)
  {
    CFRelease(v25);
    *(DerivedStorage + 376) = 0;
  }

  v26 = *(DerivedStorage + 384);
  if (v26)
  {
    CFRelease(v26);
    *(DerivedStorage + 384) = 0;
  }

  v27 = *(DerivedStorage + 432);
  if (v27)
  {
    CFRelease(v27);
    *(DerivedStorage + 432) = 0;
  }

  v28 = *(DerivedStorage + 448);
  if (v28)
  {
    CFRelease(v28);
    *(DerivedStorage + 448) = 0;
  }

  v29 = *(DerivedStorage + 456);
  if (v29)
  {
    CFRelease(v29);
    *(DerivedStorage + 456) = 0;
  }

  v30 = *(DerivedStorage + 464);
  if (v30)
  {
    CFRelease(v30);
    *(DerivedStorage + 464) = 0;
  }

  v31 = *(DerivedStorage + 392);
  if (v31)
  {
    CFRelease(v31);
    *(DerivedStorage + 392) = 0;
  }

  v32 = *(DerivedStorage + 488);
  if (v32)
  {
    CFRelease(v32);
    *(DerivedStorage + 488) = 0;
  }

  return kdebug_trace();
}

__CFString *carAudioStream_copyDebugDescription(const void *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"<APEndpointStreamCarPlayAudio %p>\n", a1);
  v3 = CFGetAllocator(a1);
  v4 = carAudioStream_copyShowInfo(a1, v3);
  if (v4)
  {
    v5 = v4;
    __s = 0;
    ASPrintF(&__s, "%@", v4);
    v6 = __s;
    v7 = strlen(__s);
    if (v7 && __s[v7 - 1] == 10)
    {
      __s[v7 - 1] = 0;
      v6 = __s;
    }

    CFStringAppendFormat(Mutable, 0, @"%s", v6);
    free(__s);
    CFRelease(v5);
  }

  return Mutable;
}

__CFDictionary *carAudioStream_copyShowInfo(uint64_t a1, const __CFAllocator *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"Type", *(DerivedStorage + 32));
    CFDictionarySetValue(v5, @"Subtype", *(DerivedStorage + 40));
    CFDictionarySetValue(v5, @"Name", *(DerivedStorage + 24));
    CFDictionarySetValue(v5, @"ID", *(DerivedStorage + 48));
    v6 = MEMORY[0x277CBED28];
    if (!*(DerivedStorage + 176))
    {
      v6 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v5, @"Resumed", *v6);
  }

  else
  {
    carAudioStream_copyShowInfo_cold_1();
  }

  return v5;
}

uint64_t carAudioStream_flush(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 128))
  {
    carAudioStream_flush_cold_1();
    return 4294950534;
  }

  else
  {
    v7 = DerivedStorage;
    CFRetain(a1);
    if (a3)
    {
      CFRetain(a3);
    }

    v8 = *(v7 + 168);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 0x40000000;
    v10[2] = __carAudioStream_flush_block_invoke;
    v10[3] = &__block_descriptor_tmp_186;
    v10[4] = v7;
    v10[5] = a3;
    v10[6] = a1;
    v10[7] = a2;
    dispatch_async(v8, v10);
    return 0;
  }
}

uint64_t carAudioStream_dissociate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = *(v3 + 120);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carAudioStream_dissociateInternal_block_invoke;
  block[3] = &__block_descriptor_tmp_188;
  block[4] = v3;
  dispatch_sync(v4, block);
  v5 = *(v3 + 168);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 0x40000000;
  v11[2] = __carAudioStream_dissociateInternal_block_invoke_2;
  v11[3] = &__block_descriptor_tmp_189;
  v11[4] = a1;
  dispatch_sync(v5, v11);
  if (CFEqual(*(v3 + 40), *MEMORY[0x277CC1940]))
  {
    APCarPlayAVVCServerRemoveStream(a1, v6, v7);
  }

  CFRetain(a1);
  v8 = *(DerivedStorage + 112);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 0x40000000;
  v10[2] = __carAudioStream_dissociate_block_invoke;
  v10[3] = &__block_descriptor_tmp_187;
  v10[4] = a1;
  dispatch_async(v8, v10);
  return 0;
}

void __carAudioStream_suspendInternal_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 360) = 0;
  *(v2 + 400) = 0;
  v3 = *(v2 + 392);
  if (v3)
  {
    CFRelease(v3);
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 376);
  if (v4)
  {
    CFRelease(v4);
    v2 = *(a1 + 32);
  }

  v5 = *(v2 + 368);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t carAudioStream_updateZeroTimeFromPhaseValues(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 272) = a4;
  *(DerivedStorage + 280) = a2;
  *(DerivedStorage + 328) = 3;
  v9 = a3;
  *(DerivedStorage + 288) = a3;
  if (gLogCategory_APEndpointStreamCarPlayAudio <= 50)
  {
    v10 = a4;
    v11 = a2;
    if (gLogCategory_APEndpointStreamCarPlayAudio != -1)
    {
LABEL_3:
      v12 = *(DerivedStorage + 40);
      v13 = mach_absolute_time();
      LogPrintF(&gLogCategory_APEndpointStreamCarPlayAudio, "void carAudioStream_updateZeroTimeFromPhaseValues(FigEndpointStreamRef, double, int64_t, int64_t)", 33554482, "[%{ptr}] %@: Updating zero time to ht: %llu st: %lf; upTicks = %llu\n", a1, v12, v11, *&v10, v13);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v11 = *(DerivedStorage + 280);
      v10 = *(DerivedStorage + 272);
      goto LABEL_3;
    }
  }

LABEL_5:
  v14 = *APCarPlayAudioFormatInfoGetDescription(*(DerivedStorage + 192));
  if ((~*(DerivedStorage + 264) & 3) != 0)
  {
    v18 = *(DerivedStorage + 320);
    *(DerivedStorage + 240) = *(DerivedStorage + 304);
    *(DerivedStorage + 256) = v18;
    v19 = *(DerivedStorage + 288);
    *(DerivedStorage + 208) = *(DerivedStorage + 272);
    *(DerivedStorage + 224) = v19;
    *(DerivedStorage + 224) = v9;
    *(DerivedStorage + 344) = v14;
    goto LABEL_21;
  }

  v15 = a4 - *(DerivedStorage + 272);
  UpTicksToSecondsF();
  if (a3)
  {
    v17 = (a4 - *(DerivedStorage + 272)) / ((v9 - *(DerivedStorage + 288)) / 1000000000.0);
  }

  else
  {
    v17 = 0.0;
  }

  v20 = v15 / v16;
  if (vabdd_f64(*(DerivedStorage + 344), v14) > v14 * 0.00025 && gLogCategory_APEndpointStreamCarPlayAudioTimeStamps <= 50 && (gLogCategory_APEndpointStreamCarPlayAudioTimeStamps != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamCarPlayAudioTimeStamps, "void carAudioStream_updateZeroTimeFromPhaseValues(FigEndpointStreamRef, double, int64_t, int64_t)", 33554482, "[%{ptr}] %@: New ZeroTime phase sample rate: %lf%?s%?lf deviating from nominal: %lf\n", a1, *(DerivedStorage + 40), *&v20, a3 != 0, " / raw sample rate: ", a3 != 0, *&v17, *&v14);
  }

  v21 = *(DerivedStorage + 344);
  if (vabdd_f64(v21, v20) > v21 * 0.00005 && gLogCategory_APEndpointStreamCarPlayAudioTimeStamps <= 50)
  {
    if (gLogCategory_APEndpointStreamCarPlayAudioTimeStamps == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_20;
      }

      v21 = *(DerivedStorage + 344);
    }

    LogPrintF(&gLogCategory_APEndpointStreamCarPlayAudioTimeStamps, "void carAudioStream_updateZeroTimeFromPhaseValues(FigEndpointStreamRef, double, int64_t, int64_t)", 33554482, "[%{ptr}] %@: New ZeroTime phase sample rate: %lf%?s%?lf deviating from average: %lf\n", a1, *(DerivedStorage + 40), *&v20, a3 != 0, " / raw sample rate: ", a3 != 0, *&v17, *&v21);
  }

LABEL_20:
  v22 = a4 - *(DerivedStorage + 208);
  UpTicksToSecondsF();
  *(DerivedStorage + 344) = v22 / v23;
LABEL_21:
  v24 = *(DerivedStorage + 56);

  return APAudioZeroTimeStampProviderSetZeroTimeStamp(v24, (DerivedStorage + 272));
}

uint64_t CMBaseObjectSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigEndpointAudioSourceResume(uint64_t a1)
{
  v2 = *(CMBaseObjectGetVTable() + 16);
  if (*v2 < 2uLL)
  {
    return 4294954515;
  }

  v3 = v2[4];
  if (!v3)
  {
    return 4294954514;
  }

  return v3(a1);
}

uint64_t carAudioStream_sendFlush(const void *a1, __int16 a2, int a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  v7 = *(DerivedStorage + 168);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 0x40000000;
  v10[2] = __carAudioStream_sendFlush_block_invoke;
  v10[3] = &unk_27849B608;
  v10[5] = a1;
  v10[6] = DerivedStorage;
  v12 = a2;
  v11 = a3;
  v10[4] = &v13;
  dispatch_async(v7, v10);
  v8 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v8;
}

uint64_t carAudioStream_sendMainHighMessage(const void *a1, int a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 == 1734700576)
  {
    v7 = DerivedStorage;
    CFRetain(a1);
    CFRetain(a3);
    v8 = *(v7 + 168);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 0x40000000;
    v10[2] = __carAudioStream_sendMainHighMessage_block_invoke;
    v10[3] = &__block_descriptor_tmp_162;
    v11 = 1734700576;
    v10[4] = v7;
    v10[5] = a3;
    v10[6] = a1;
    dispatch_async(v8, v10);
    return 0;
  }

  else
  {
    carAudioStream_sendMainHighMessage_cold_1();
    return 4294960561;
  }
}

uint64_t APSenderSessionCreateTransportStreamWithID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t FigTransportStreamResume(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t APAudioEngineRegisterStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, 0, 0, a4);
}

void __carAudioStream_sendFlush_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  if (gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
  {
    __carAudioStream_sendFlush_block_invoke_cold_1(a1, a2, a3);
  }

  v4 = CFGetAllocator(*(a1 + 40));
  APSenderSessionGetCMBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v8 = v7(v6, @"TransportControlStream", v4, &cf);
  }

  else
  {
    v8 = -12782;
  }

  v9 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = v8;
  v10 = *(*(*(a1 + 32) + 8) + 24);
  if (v10)
  {
    __carAudioStream_sendFlush_block_invoke_cold_2(v10);
    Mutable = 0;
LABEL_29:
    v13 = 0;
LABEL_31:
    Data = 0;
    goto LABEL_17;
  }

  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    __carAudioStream_sendFlush_block_invoke_cold_7();
    goto LABEL_29;
  }

  v13 = CFStringCreateWithFormat(v11, 0, @"seq=%u;rtptime=%u", *(a1 + 60), *(a1 + 56));
  if (!v13)
  {
    __carAudioStream_sendFlush_block_invoke_cold_6();
    goto LABEL_31;
  }

  CFDictionarySetValue(Mutable, @"RTP-Info", v13);
  Data = CFPropertyListCreateData(v11, Mutable, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (Data)
  {
    *(*(*v9 + 8) + 24) = FigCreateBlockBufferWithCFDataNoCopy();
    v15 = *(*(*v9 + 8) + 24);
    if (v15)
    {
      __carAudioStream_sendFlush_block_invoke_cold_3(v15);
    }

    else
    {
      v16 = cf;
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v17)
      {
        v18 = v17(v16, 1718383464, 0, 0);
      }

      else
      {
        v18 = -12782;
      }

      *(*(*v9 + 8) + 24) = v18;
      v19 = *(*(*v9 + 8) + 24);
      if (v19)
      {
        __carAudioStream_sendFlush_block_invoke_cold_4(v19);
      }
    }
  }

  else
  {
    __carAudioStream_sendFlush_block_invoke_cold_5();
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (Data)
  {
    CFRelease(Data);
  }

  CFRelease(*(a1 + 40));
}

void __carAudioStream_flush_block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(v2 + 176))
  {
    if (APCarPlayAudioFormatInfoGetStreamType(*(v2 + 192)) == 102)
    {
      v10 = **&MEMORY[0x277CC0898];
      FigCFDictionaryGetCMTimeIfPresent();
      if (gLogCategory_APEndpointStreamCarPlayAudio <= 30 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
      {
        __carAudioStream_flush_block_invoke_cold_2(a1, v3, &v10);
      }

      v5 = *(*(a1 + 32) + 16);
      v6 = *(a1 + 56);
      v9 = v10;
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v7)
      {
        v11 = v9;
        v7(v5, v6 & 1, &v11);
      }
    }

    else if (gLogCategory_APEndpointStreamCarPlayAudio <= 30 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
    {
      __carAudioStream_flush_block_invoke_cold_1(a1, v3, v4);
    }
  }

  else
  {
    __carAudioStream_flush_block_invoke_cold_3();
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    CFRelease(v8);
  }

  CFRelease(*(a1 + 48));
}

void __carAudioStream_dissociate_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t APSenderSessionAirPlayCreate(uint64_t a1, const void *a2, const void *a3, const void *a4, unsigned int a5, int a6, NSObject *a7, char a8, double a9, char a10, char a11, const void *a12, const void *a13, const void *a14, char a15, const __CFDictionary *a16, const void *a17, const void *a18, CFTypeRef *a19)
{
  v95 = *MEMORY[0x277D85DE8];
  v86 = 0;
  cf = 0;
  APSenderSessionGetClassID(a1, a2);
  v26 = CMDerivedObjectCreate();
  if (v26)
  {
    v47 = v26;
    APSenderSessionAirPlayCreate_cold_1(v26);
    goto LABEL_39;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = CFRetain(a2);
  v28 = FigSimpleMutexCreate();
  *(DerivedStorage + 296) = v28;
  if (!v28)
  {
    v47 = 4294895476;
    APSenderSessionAirPlayCreate_cold_16();
    goto LABEL_39;
  }

  *(DerivedStorage + 48) = a7;
  dispatch_retain(a7);
  *(DerivedStorage + 56) = CFRetain(a3);
  if (a4)
  {
    v29 = CFRetain(a4);
  }

  else
  {
    v29 = 0;
  }

  *(DerivedStorage + 64) = v29;
  *(DerivedStorage + 400) = -998653952;
  *(DerivedStorage + 404) = 0;
  *(DerivedStorage + 72) = a5;
  *(DerivedStorage + 88) = a6;
  *(DerivedStorage + 112) = a8;
  *(DerivedStorage + 113) = a11;
  *(DerivedStorage + 114) = a10;
  if (a17)
  {
    v30 = CFRetain(a17);
  }

  else
  {
    v30 = 0;
  }

  *(DerivedStorage + 120) = v30;
  if (a18)
  {
    v31 = CFRetain(a18);
  }

  else
  {
    v31 = 0;
  }

  *(DerivedStorage + 128) = v31;
  *(DerivedStorage + 136) = a15;
  *(DerivedStorage + 144) = a9;
  if (a13)
  {
    v32 = CFRetain(a13);
  }

  else
  {
    v32 = 0;
  }

  *(DerivedStorage + 96) = v32;
  if (a14)
  {
    v33 = CFRetain(a14);
  }

  else
  {
    v33 = 0;
  }

  *(DerivedStorage + 104) = v33;
  *(DerivedStorage + 24) = @"None";
  v34 = *(DerivedStorage + 72) - 1;
  v35 = MEMORY[0x277CBECE8];
  if (v34 >= 8 || ((0xE1u >> v34) & 1) == 0)
  {
    if (!a12)
    {
      APSenderSessionAirPlayCreate_cold_2();
      v47 = 4294895475;
      goto LABEL_39;
    }

    CMBaseObject = APSNetworkClockGetCMBaseObject();
    v38 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v38)
    {
      v39 = *v35;
      v40 = v38(CMBaseObject, *MEMORY[0x277CEA260], *v35, &v86);
      if (!v40)
      {
        if (FigCFEqual())
        {
          v41 = @"PTP";
        }

        else
        {
          v41 = @"NTP";
        }

        if (APSenderSessionShouldEstablishNetworkClockLink(*(DerivedStorage + 72), *(DerivedStorage + 56), v41, cf))
        {
          *(DerivedStorage + 24) = v41;
          *(DerivedStorage + 80) = CFRetain(a12);
        }

        *(DerivedStorage + 310) = 1;
        v36 = *(DerivedStorage + 24);
        if (!v36)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      v47 = v40;
    }

    else
    {
      v47 = 4294954514;
    }

    APSLogErrorAt();
    goto LABEL_39;
  }

  v36 = @"None";
LABEL_30:
  CFRetain(v36);
  v39 = *v35;
LABEL_31:
  ShouldForcePairSetup = APManagedConfigurationShouldForcePairSetup();
  if (*(DerivedStorage + 72) == 5)
  {
    v43 = 0;
  }

  else
  {
    v43 = ShouldForcePairSetup;
  }

  *(DerivedStorage + 432) = v43;
  Mutable = CFDictionaryCreateMutable(v39, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 576) = Mutable;
  if (!Mutable)
  {
    v47 = 4294895476;
    APSenderSessionAirPlayCreate_cold_15();
    goto LABEL_39;
  }

  SNPrintF(label, 64, "APSenderSessionAirPlay.network.%{ptr}", cf);
  *(DerivedStorage + 184) = dispatch_queue_create(label, 0);
  SNPrintF(label, 64, "APSenderSessionAirPlay.notification.%{ptr}", cf);
  *(DerivedStorage + 40) = dispatch_queue_create(label, 0);
  SNPrintF(label, 64, "APSenderSessionAirPlay.invalidation.%{ptr}", cf);
  *(DerivedStorage + 32) = dispatch_queue_create(label, 0);
  v45 = cf;
  v46 = CMBaseObjectGetDerivedStorage();
  if (a16)
  {
    CFDictionaryGetValue(a16, @"eventRecorder");
  }

  v48 = CFStringCreateF(0, "APSenderSession(%{ptr}).%@", v45, *(v46 + 8));
  v49 = *(v46 + 160);
  if (v49)
  {
    CFRelease(v49);
    *(v46 + 160) = 0;
  }

  v50 = *(v46 + 168);
  if (v50)
  {
    CFRelease(v50);
    *(v46 + 168) = 0;
  }

  v51 = APSEventRecorderCreate();
  if (v51)
  {
    v47 = v51;
    APSenderSessionAirPlayCreate_cold_3(v51);
    goto LABEL_55;
  }

  if (*(v46 + 72) != 5)
  {
    goto LABEL_53;
  }

  v52 = APSEventRecorderAddSignPostForEvent();
  if (v52)
  {
    v47 = v52;
    APSenderSessionAirPlayCreate_cold_4(v52);
    goto LABEL_55;
  }

  v53 = APSEventRecorderAddSignPostForEvent();
  if (v53)
  {
    v47 = v53;
    APSenderSessionAirPlayCreate_cold_5(v53);
    goto LABEL_55;
  }

  v54 = APSEventRecorderAddSignPostForEvent();
  if (v54)
  {
    v47 = v54;
    APSenderSessionAirPlayCreate_cold_6(v54);
    goto LABEL_55;
  }

  v55 = APSEventRecorderAddSignPostForEvent();
  if (v55)
  {
    v47 = v55;
    APSenderSessionAirPlayCreate_cold_7(v55);
    goto LABEL_55;
  }

  v56 = APSEventRecorderAddSignPostForEvent();
  if (v56)
  {
    v47 = v56;
    APSenderSessionAirPlayCreate_cold_8(v56);
    goto LABEL_55;
  }

  v57 = APSEventRecorderAddSignPostForEvent();
  if (v57)
  {
    v47 = v57;
    APSenderSessionAirPlayCreate_cold_9(v57);
  }

  else
  {
LABEL_53:
    v58 = CFArrayCreateMutable(v39, 0, MEMORY[0x277CBF128]);
    *(v46 + 168) = v58;
    if (v58)
    {
      v47 = 0;
    }

    else
    {
      v47 = 4294895476;
      APSenderSessionAirPlayCreate_cold_10();
    }
  }

LABEL_55:
  if (v48)
  {
    CFRelease(v48);
  }

  if (v47)
  {
    APSenderSessionAirPlayCreate_cold_11(v47);
  }

  else
  {
    if (a16)
    {
      *(DerivedStorage + 152) = CFDictionaryGetInt64() != 0;
      *(DerivedStorage + 153) = CFDictionaryGetInt64() != 0;
      FigCFDictionaryGetBooleanIfPresent();
    }

    CMBaseObjectGetDerivedStorage();
    v92 = 0;
    v93 = 0;
    v90 = 0;
    v91 = 0;
    v88 = 0;
    v89 = 0;
    v59 = CFDictionaryCreateMutable(v39, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v59)
    {
      APEndpointDescriptionGetCMBaseObject();
      v61 = v60;
      v62 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v62)
      {
        v62(v61, @"Company", 0, &v91);
      }

      APEndpointDescriptionGetCMBaseObject();
      v64 = v63;
      v65 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v65)
      {
        v65(v64, @"Manufacturer", 0, &v90);
      }

      APEndpointDescriptionGetCMBaseObject();
      v67 = v66;
      v68 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v68)
      {
        v68(v67, @"Model", 0, &v89);
      }

      APEndpointDescriptionGetCMBaseObject();
      v70 = v69;
      v71 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v71)
      {
        v71(v70, @"OSVersion", 0, &v88);
      }

      APEndpointDescriptionGetCMBaseObject();
      v73 = v72;
      v74 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v74)
      {
        v74(v73, @"StatusFlags", 0, &v92);
      }

      APEndpointDescriptionGetCMBaseObject();
      v76 = v75;
      v77 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v77)
      {
        v77(v76, @"AirPlaySecurity", 0, &v93);
      }

      v78 = APSGetFBOPropertyInt64();
      v79 = APSGetFBOPropertyInt64();
      APSGetFBOPropertyInt64();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      v80 = *MEMORY[0x277CBED28];
      v81 = *MEMORY[0x277CBED10];
      if (v79)
      {
        v82 = *MEMORY[0x277CBED28];
      }

      else
      {
        v82 = *MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(v59, @"unifiedAuthPairing", v82);
      if (v78)
      {
        v83 = v80;
      }

      else
      {
        v83 = v81;
      }

      CFDictionarySetValue(v59, @"supportsVideoV2", v83);
      CFDictionarySetInt64();
      *(DerivedStorage + 496) = v59;
      if (v91)
      {
        CFRelease(v91);
      }

      v47 = 0;
    }

    else
    {
      v47 = 4294895476;
      APSenderSessionAirPlayCreate_cold_12();
    }

    if (v90)
    {
      CFRelease(v90);
    }

    if (v89)
    {
      CFRelease(v89);
    }

    if (v88)
    {
      CFRelease(v88);
    }

    if (v92)
    {
      CFRelease(v92);
    }

    if (v93)
    {
      CFRelease(v93);
    }

    if (v59)
    {
      if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
      {
        APSenderSessionAirPlayCreate_cold_13(&cf, a5, a2);
      }

      v47 = 0;
      *a19 = cf;
      cf = 0;
      goto LABEL_97;
    }

    APSenderSessionAirPlayCreate_cold_14(v47);
  }

LABEL_39:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_97:
  if (v86)
  {
    CFRelease(v86);
  }

  return v47;
}

void APSenderSessionGetPreferredAndEligibleTransportsBasedOnUsage(uint64_t a1, uint64_t a2, int *a3, int *a4, _BYTE *a5)
{
  v9 = a1;
  if (!IsAppleInternalBuild())
  {
    v11 = 0;
    goto LABEL_13;
  }

  v10 = APSSettingsCopyValue();
  v11 = v10;
  if (!v10)
  {
LABEL_13:
    v12 = 1;
    goto LABEL_15;
  }

  if (CFStringGetLength(v10) >= 1)
  {
    if (CFStringHasPrefix(v11, @"awdl"))
    {
      v12 = 0;
      v13 = 2;
      v14 = 2;
    }

    else
    {
      HasPrefix = CFStringHasPrefix(v11, @"nan");
      v12 = 0;
      if (HasPrefix)
      {
        v13 = 4;
      }

      else
      {
        v13 = 1;
      }

      if (HasPrefix)
      {
        v14 = 4;
      }

      else
      {
        v14 = 9;
      }
    }

    goto LABEL_60;
  }

  v12 = 0;
LABEL_15:
  v16 = 9;
  v13 = 1;
  if (v9 > 3)
  {
    if (v9 == 4)
    {
      if (IsAppleInternalBuild() && APSSettingsGetInt64())
      {
        v27 = 0;
      }

      else
      {
        v21 = APSGetFBOPropertyInt64();
        if (v21)
        {
          v22 = 4;
        }

        else
        {
          v22 = 2;
        }

        v23 = 4 * (v21 != 0);
        if (v21)
        {
          v24 = 12;
        }

        else
        {
          v24 = 8;
        }

        v25 = APSGetFBOPropertyInt64();
        v26 = v24 | 2;
        if (v25)
        {
          v27 = v22;
        }

        else
        {
          v27 = v23;
        }

        if (!v25)
        {
          v26 = v24;
        }

        v16 = v26 | 1;
      }

      if (v27 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v27;
      }
    }

    else if (v9 == 11 && APSSettingsIsFeatureEnabled())
    {
      v17 = APSIsVirtualMachine();
      if (v17)
      {
        v13 = 1;
      }

      else
      {
        v13 = 4;
      }

      if (v17)
      {
        v16 = 9;
      }

      else
      {
        v16 = 13;
      }
    }
  }

  else if (v9)
  {
    if (v9 == 3)
    {
      v13 = 4;
      if (APSGetAllowPersistentGroupsOnInfra())
      {
        v13 = APSIsVirtualMachine() ? 1 : 4;
      }

      else
      {
        v16 = 8;
      }

      if (APSSettingsGetIntWithDefault())
      {
        v16 |= 4u;
      }
    }
  }

  else
  {
    if (APSGetFBOPropertyInt64())
    {
      v18 = 12;
    }

    else
    {
      v18 = 8;
    }

    v19 = APSGetFBOPropertyInt64();
    v20 = v18 | 2;
    if (!v19)
    {
      v20 = v18;
    }

    v16 = v20 | 1;
    v13 = 1;
  }

  isDirectLinkEligible = apsession_isDirectLinkEligible(a2);
  v14 = v16 & 7;
  if (isDirectLinkEligible)
  {
    v14 = v16;
  }

LABEL_60:
  if ((v9 - 1) > 0xA)
  {
    v29 = 0;
    if (!a3)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  v29 = byte_2222982E0[v9 - 1];
  if (a3)
  {
LABEL_64:
    *a3 = v13;
  }

LABEL_65:
  if (a4)
  {
    *a4 = v14;
  }

  if (a5)
  {
    *a5 = v29;
  }

  if ((v12 & 1) == 0)
  {

    CFRelease(v11);
  }
}