void manager_introspector_activateEndpoint(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  cf = 0;
  v28 = 0;
  if (!a1)
  {
    manager_introspector_activateEndpoint_cold_1(a2);
    goto LABEL_40;
  }

  v6 = a3;
  while (1)
  {
    v8 = getopt(v6, a4, "rw");
    if (v8 != 114)
    {
      break;
    }

    v9 = (&v28 + 1);
LABEL_7:
    *v9 = 1;
  }

  if (v8 == 119)
  {
    HIBYTE(v28) = 1;
    v9 = &v28;
    goto LABEL_7;
  }

  if (v8 != -1)
  {
    FPrintF(a2, "Error: Invalid option\n");
LABEL_43:
    if (cf)
    {
      CFRelease(cf);
    }

    FPrintF(a2, "Usage: %s [-r|w] <name|ID|hash|ptr> <features> [key1:type1:val1] [key2:type2:val2] ...\n", *a4);
    manager_introspector_printRWUsage(a2);
    FPrintF(a2, "  features are a combination of characters: s)creen, a)udio, p)layback, b)uffered audio, c)ontrol\n");
    FPrintF(a2, "  key/type/val are used to create a parameter dictionary. See CoreUtils documentation for CFDictionaryCreateFromNameTypeValueArgList for details.\n");
    FPrintF(a2, "Examples:\n");
    FPrintF(a2, "  %s 'HomePod' ba RoutingContextUUID:s:test-routing-id\n", *a4);
    FPrintF(a2, "  %s -r 'Living Room' c\n", *a4);
    return;
  }

  v10 = MEMORY[0x277D85E78];
  v11 = *MEMORY[0x277D85E78];
  if (v11 >= v6)
  {
    FPrintF(a2, "Error: Missing argument: name|ID|hash|ptr\n");
    goto LABEL_43;
  }

  v12 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a4[v11], 0x8000100u);
  v13 = (*v10)++;
  if (v13 + 1 >= v6)
  {
    FPrintF(a2, "Error: Missing argument: features\n");
    goto LABEL_51;
  }

  v14 = a4[v13 + 1];
  *v10 = v13 + 2;
  if (CFDictionaryCreateFromNameTypeValueArgList())
  {
    FPrintF(a2, "%s: parameter parse error starting at '%s': %#m\n");
LABEL_51:
    if (v12)
    {
      CFRelease(v12);
    }

    goto LABEL_43;
  }

  v15 = HIBYTE(v28);
  v16 = manager_introspector_copyMatchingEndpoint(a1, v12, HIBYTE(v28), v28);
  if (v16)
  {
    if (v15)
    {
      v17 = 16;
    }

    else
    {
      v17 = 2;
    }

    v18 = strlen(v14);
    if (!v18)
    {
      goto LABEL_33;
    }

    v19 = 0;
    do
    {
      v21 = *v14++;
      v20 = v21;
      v22 = v19 | 0x10;
      v23 = v19 | 4;
      v24 = v19 | 1;
      if (v21 != 115)
      {
        v24 = v19;
      }

      if (v20 != 112)
      {
        v23 = v24;
      }

      if (v20 != 99)
      {
        v22 = v23;
      }

      v25 = v19 | 2;
      v26 = v19 | 8;
      if (v20 != 98)
      {
        v26 = v19;
      }

      if (v20 != 97)
      {
        v25 = v26;
      }

      if (v20 <= 98)
      {
        v19 = v25;
      }

      else
      {
        v19 = v22;
      }

      --v18;
    }

    while (v18);
    if (!v19)
    {
LABEL_33:
      v19 = v17;
    }

    v27 = FigEndpointActivateSync();
    if (v27)
    {
      FPrintF(a2, "Error: Failed to activate endpoint [%{ptr}], features 0x%llx, options (%@): %#m\n", v16, v19, cf, v27);
    }

    else
    {
      FPrintF(a2, "Activated endpoint [%{ptr}], features 0x%llx, options (%@): success\n", v16, v19, cf);
    }
  }

  else
  {
    FPrintF(a2, "Error: Couldn't find a matching endpoint for: %@\n", v12);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v16)
  {
    CFRelease(v16);
  }

LABEL_40:
  if (cf)
  {
    CFRelease(cf);
  }
}

void manager_introspector_deactivateEndpoint(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  v16 = 0;
  if (!a1)
  {
    manager_introspector_deactivateEndpoint_cold_2(a2);
    return;
  }

  v6 = a3;
  while (1)
  {
    v8 = getopt(v6, a4, "rw");
    if (v8 != 114)
    {
      break;
    }

    v9 = (&v16 + 1);
LABEL_7:
    *v9 = 1;
  }

  if (v8 == 119)
  {
    HIBYTE(v16) = 1;
    v9 = &v16;
    goto LABEL_7;
  }

  if (v8 != -1)
  {
    v15 = "Error: Invalid option\n";
LABEL_20:
    manager_introspector_deactivateEndpoint_cold_1(a2, v15, a4);
    return;
  }

  v10 = MEMORY[0x277D85E78];
  v11 = *MEMORY[0x277D85E78];
  if (v11 >= v6)
  {
    v15 = "Error: Missing argument: name|ID|hash|ptr\n";
    goto LABEL_20;
  }

  v12 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a4[v11], 0x8000100u);
  ++*v10;
  v13 = manager_introspector_copyMatchingEndpoint(a1, v12, HIBYTE(v16), v16);
  if (v13)
  {
    v14 = FigEndpointDeactivate();
    if (v14)
    {
      FPrintF(a2, "Error: Failed to deactivate endpoint [%{ptr}]: %#m\n", v13, v14);
    }

    else
    {
      FPrintF(a2, "Deactivated endpoint [%{ptr}]: success\n", v13);
    }
  }

  else
  {
    FPrintF(a2, "Error: Couldn't find a matching endpoint for: %@\n", v12);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {

    CFRelease(v13);
  }
}

void manager_introspector_setDiscoveryMode(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  if (!a1)
  {
    manager_introspector_setDiscoveryMode_cold_1(a2);
    return;
  }

  v6 = a3;
  if (getopt(a3, a4, "") != -1)
  {
    FPrintF(a2, "Error: Invalid option\n");
LABEL_4:
    FPrintF(a2, "Usage: %s <mode>\n", *a4);
    FPrintF(a2, "  mode is one of the kFigEndpointManagerDiscoveryMode... constants:\n");
    FPrintF(a2, "  - n|%@: Turn off discovery\n", *MEMORY[0x277CC0C08]);
    FPrintF(a2, "  - p|%@: Turn on presence scanning\n", *MEMORY[0x277CC0C10]);
    FPrintF(a2, "  - b|%@: Turn on background discovery\n", *MEMORY[0x277CC0BF8]);
    v8 = *MEMORY[0x277CC0C00];
    FPrintF(a2, "  - d|%@: Turn on full detailed discovery\n", *MEMORY[0x277CC0C00]);
    FPrintF(a2, "  For example, %s %@\n", *a4, v8);
    return;
  }

  v9 = MEMORY[0x277D85E78];
  v10 = *MEMORY[0x277D85E78];
  if (v10 >= v6)
  {
    FPrintF(a2, "Error: Missing argument: mode\n");
    goto LABEL_4;
  }

  v11 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a4[v10], 0x8000100u);
  v12 = v11;
  v13 = *v9 + 1;
  *v9 = v13;
  if (v13 < v6)
  {
    FPrintF(a2, "Error: Too many arguments at '%s'\n", a4[v13]);
    if (v12)
    {
      CFRelease(v12);
    }

    goto LABEL_4;
  }

  if (CFStringGetLength(v11) < 1)
  {
    v16 = 0;
    goto LABEL_20;
  }

  HIDWORD(v15) = CFStringGetCharacterAtIndex(v12, 0) - 98;
  LODWORD(v15) = HIDWORD(v15);
  v14 = v15 >> 1;
  if (v14 > 5)
  {
    if (v14 == 7)
    {
      v17 = MEMORY[0x277CC0C10];
    }

    else
    {
      v16 = v12;
      if (v14 != 6)
      {
        goto LABEL_20;
      }

      v17 = MEMORY[0x277CC0C08];
    }
  }

  else if (v14)
  {
    v16 = v12;
    if (v14 != 1)
    {
      goto LABEL_20;
    }

    v17 = MEMORY[0x277CC0C00];
  }

  else
  {
    v17 = MEMORY[0x277CC0BF8];
  }

  v16 = *v17;
LABEL_20:
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v18)
  {
    v19 = v18(a1, v16, 0);
  }

  else
  {
    v19 = 4294954514;
  }

  FPrintF(a2, "Set discovery mode to %@; result %d\n", v16, v19);
  if (v12)
  {

    CFRelease(v12);
  }
}

void manager_introspector_getGroupID(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  v16 = 0;
  v17 = 0;
  v15 = 0;
  if (!a1)
  {
    manager_introspector_getGroupID_cold_1(a2);
    Copy = 0;
LABEL_13:
    FPrintF(a2, "[%{ptr}] No EndpointAggregates found\n", a1);
    goto LABEL_14;
  }

  APSCopyClusterInfo();
  APSCopyBootUUID();
  FPrintF(a2, "[%{ptr}] ClusterUUID %@ | ClusterMemberID %@\n", a1, v17, v16);
  FPrintF(a2, "[%{ptr}] BootUUID %@\n\n", a1, v15);
  FigSimpleMutexLock();
  v4 = *MEMORY[0x277CBECE8];
  Copy = FigCFArrayCreateCopy();
  FigSimpleMutexUnlock();
  Count = CFArrayGetCount(Copy);
  v7 = Count;
  if (Count < 1)
  {
    if (Count)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v8 = 0;
  v9 = *MEMORY[0x277CC14B0];
  do
  {
    cf = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(Copy, v8);
    CMBaseObject = FigEndpointGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(CMBaseObject, v9, v4, &cf);
    }

    v13 = APSCreateGroupIDForLocalDevice();
    FPrintF(a2, "[%{ptr}] AggregateEndpoint [%{ptr}] GroupID for %@: %@\n", a1, ValueAtIndex, cf, v13);
    if (v13)
    {
      CFRelease(v13);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    ++v8;
  }

  while (v7 != v8);
LABEL_14:
  FPrintF(a2, "\n");
  if (v15)
  {
    CFRelease(v15);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }
}

void manager_introspector_sendUGLreceiverCommand(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v5 = a3;
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v8 = MEMORY[0x277D85E78];
    v9 = *MEMORY[0x277D85E78];
    if (v9 >= v5)
    {
      FPrintF(a2, "Error: Missing argument: command\n");
      FigSimpleMutexUnlock();
LABEL_9:
      FPrintF(a2, "Usage: %s <start|stop>\n", *a4);
      FPrintF(a2, "  start: start the receiver server.\n");
      FPrintF(a2, "  stop: stop the receiver server.\n");
      return;
    }

    v10 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a4[v9], 0x8000100u);
    ++*v8;
    if (CFDictionaryCreateFromNameTypeValueArgList())
    {
      FPrintF(a2, "%s: parameter parse error starting at '%s': %#m\n");
LABEL_7:
      FigSimpleMutexUnlock();
      if (v10)
      {
        CFRelease(v10);
      }

      goto LABEL_9;
    }

    FigSimpleMutexLock();
    if (FigCFEqual())
    {
      v11 = 1;
    }

    else
    {
      if (!FigCFEqual())
      {
        FPrintF(a2, "Unrecognized command: %@\n", v10);
        goto LABEL_7;
      }

      v11 = 0;
    }

    manager_startOrStopUGLRCServer(a1, v11);
    FPrintF(a2, "Processed command %@, result = %d\n", v10, 0);
    FigSimpleMutexUnlock();
    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    manager_introspector_sendUGLreceiverCommand_cold_1();
  }
}

uint64_t manager_handleTriggerSenderStateUpdate(uint64_t a1, uint64_t a2)
{
  if (APEndpointManagerGetShared_once != -1)
  {
    APEndpointManagerCreate_cold_1();
  }

  v3 = APEndpointManagerGetShared_sAPEndpointManager;
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_handleTriggerSenderStateUpdate_cold_2(a1);
  }

  FigSimpleMutexLock();
  v4 = manager_getAndPostSenderStateUpdate(v3);
  FigSimpleMutexUnlock();
  return v4;
}

void manager_handlePSGDataSourceGroupInfoChanged(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 320))
  {
    CMBaseObject = APSPSGDataSourceGetCMBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v5(CMBaseObject, *MEMORY[0x277CEA2E8], *MEMORY[0x277CBECE8], &cf);
    }

    v6 = manager_copyEndpoints(a2, 1);
    v7 = v6;
    if (v6)
    {
      CFArrayGetCount(v6);
      CFArrayApplyBlock();
    }

    else
    {
      manager_handlePSGDataSourceGroupInfoChanged_cold_1();
    }
  }

  else
  {
    manager_handlePSGDataSourceGroupInfoChanged_cold_2();
    v7 = 0;
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t __manager_create_block_invoke_4(uint64_t a1)
{
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    __manager_create_block_invoke_4_cold_1();
  }

  v2 = *(a1 + 32);
  APSHierarchyReporterProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v4 = *(ProtocolVTable + 16)) == 0)
  {
    result = 4294954508;
    return __manager_create_block_invoke_5(result, 0, "[Error] Object:[%{ptr}]%?s%?''@ cannot be dumped (error %#m) Parent:[%{ptr}]\n", v2, 0, " ", 0, 0, result, 0);
  }

  v5 = *(v4 + 8);
  if (!v5)
  {
    result = 4294954514;
    return __manager_create_block_invoke_5(result, 0, "[Error] Object:[%{ptr}]%?s%?''@ cannot be dumped (error %#m) Parent:[%{ptr}]\n", v2, 0, " ", 0, 0, result, 0);
  }

  result = v5(v2, 0, 0, 0, &__block_literal_global_173);
  if (result == -12782 || result == -12788)
  {
    return __manager_create_block_invoke_5(result, 0, "[Error] Object:[%{ptr}]%?s%?''@ cannot be dumped (error %#m) Parent:[%{ptr}]\n", v2, 0, " ", 0, 0, result, 0);
  }

  return result;
}

uint64_t __manager_create_block_invoke_5(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  v4 = CFStringCreateV();
  if (gLogCategory_APEndpointHierarchy <= 50 && (gLogCategory_APEndpointHierarchy != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointHierarchy, "OSStatus manager_create(CFDictionaryRef, FigEndpointManagerRef *)_block_invoke_5", 33554482, "%*s%@", 2 * a2, "", v4);
    if (!v4)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (v4)
  {
LABEL_7:
    CFRelease(v4);
  }

  return 0;
}

uint64_t manager_Invalidate(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dispatch_sync_f(*(DerivedStorage + 8), a1, manager_invalidateInternal);
  return 0;
}

void manager_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 392) && gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_Finalize_cold_1(a1);
  }

  if (*(DerivedStorage + 1))
  {
    if (introspector_getCollectionOfEndpointManagers_once != -1)
    {
      manager_Finalize_cold_2();
    }

    if (introspector_getCollectionOfEndpointManagers_coll)
    {
      v3 = *introspector_getCollectionOfEndpointManagers_coll;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __manager_Finalize_block_invoke;
      block[3] = &__block_descriptor_48_e5_v8__0l;
      block[4] = introspector_getCollectionOfEndpointManagers_coll;
      block[5] = a1;
      dispatch_sync(v3, block);
    }

    if (*(DerivedStorage + 384))
    {
      AirPlayReceiverServerGetDispatchQueue();
      CFObjectControlSync();
      v4 = *(DerivedStorage + 384);
      if (v4)
      {
        CFRelease(v4);
      }

      *(DerivedStorage + 384) = 0;
    }

    v5 = *(DerivedStorage + 8);
    if (v5)
    {
      dispatch_release(v5);
      *(DerivedStorage + 8) = 0;
    }

    v6 = *(DerivedStorage + 304);
    if (v6)
    {
      if (gLogCategory_APEndpointManager <= 50)
      {
        if (gLogCategory_APEndpointManager != -1 || (v7 = _LogCategory_Initialize(), v6 = *(DerivedStorage + 304), v7))
        {
          LogPrintF(&gLogCategory_APEndpointManager, "void manager_Finalize(CMBaseObjectRef)", 33554482, "[%{ptr}] <AirPlayClock> %###s: Stopping network clock [%{ptr}] for manager finalize", a1, "void manager_Finalize(CMBaseObjectRef)", v6);
          v6 = *(DerivedStorage + 304);
        }
      }

      v8 = *(*(CMBaseObjectGetVTable() + 16) + 88);
      if (v8)
      {
        v8(v6, a1);
      }
    }

    FigSimpleMutexDestroy();
    v9 = *(DerivedStorage + 272);
    if (v9)
    {
      CFRelease(v9);
      *(DerivedStorage + 272) = 0;
    }

    v10 = *(DerivedStorage + 280);
    if (v10)
    {
      CFRelease(v10);
      *(DerivedStorage + 280) = 0;
    }

    v11 = *(DerivedStorage + 104);
    if (v11)
    {
      CFRelease(v11);
      *(DerivedStorage + 104) = 0;
    }

    v12 = *(DerivedStorage + 112);
    if (v12)
    {
      CFRelease(v12);
      *(DerivedStorage + 112) = 0;
    }

    v13 = *(DerivedStorage + 168);
    if (v13)
    {
      CFRelease(v13);
      *(DerivedStorage + 168) = 0;
    }

    v14 = *(DerivedStorage + 176);
    if (v14)
    {
      CFRelease(v14);
      *(DerivedStorage + 176) = 0;
    }

    v15 = *(DerivedStorage + 192);
    if (v15)
    {
      CFRelease(v15);
      *(DerivedStorage + 192) = 0;
    }

    v16 = *(DerivedStorage + 208);
    if (v16)
    {
      CFRelease(v16);
      *(DerivedStorage + 208) = 0;
    }

    v17 = *(DerivedStorage + 216);
    if (v17)
    {
      CFRelease(v17);
      *(DerivedStorage + 216) = 0;
    }

    v18 = *(DerivedStorage + 224);
    if (v18)
    {
      CFRelease(v18);
      *(DerivedStorage + 224) = 0;
    }

    v19 = *(DerivedStorage + 184);
    if (v19)
    {
      CFRelease(v19);
      *(DerivedStorage + 184) = 0;
    }

    v20 = *(DerivedStorage + 232);
    if (v20)
    {
      CFRelease(v20);
      *(DerivedStorage + 232) = 0;
    }

    v21 = *(DerivedStorage + 240);
    if (v21)
    {
      CFRelease(v21);
      *(DerivedStorage + 240) = 0;
    }

    v22 = *(DerivedStorage + 248);
    if (v22)
    {
      CFRelease(v22);
      *(DerivedStorage + 248) = 0;
    }

    v23 = *(DerivedStorage + 128);
    if (v23)
    {
      CFRelease(v23);
      *(DerivedStorage + 128) = 0;
    }

    v24 = *(DerivedStorage + 304);
    if (v24)
    {
      CFRelease(v24);
      *(DerivedStorage + 304) = 0;
    }

    v25 = *(DerivedStorage + 344);
    if (v25)
    {
      (*(*v25 + 24))(v25);
      *(DerivedStorage + 344) = 0;
    }

    v26 = *(DerivedStorage + 336);
    if (v26)
    {
      CFRelease(v26);
      *(DerivedStorage + 336) = 0;
    }

    v27 = *(DerivedStorage + 264);
    if (v27)
    {
      CFRelease(v27);
      *(DerivedStorage + 264) = 0;
    }

    v28 = *(DerivedStorage + 352);
    if (v28)
    {
      dispatch_source_cancel(*(DerivedStorage + 352));
      dispatch_release(v28);
      *(DerivedStorage + 352) = 0;
    }

    v29 = *(DerivedStorage + 88);
    if (v29)
    {
      CFRelease(v29);
      *(DerivedStorage + 88) = 0;
    }

    v30 = *(DerivedStorage + 312);
    if (v30)
    {
      CFRelease(v30);
      *(DerivedStorage + 312) = 0;
    }

    v31 = *(DerivedStorage + 296);
    if (v31)
    {
      CFRelease(v31);
      *(DerivedStorage + 296) = 0;
    }

    v32 = *(DerivedStorage + 320);
    if (v32)
    {
      CFRelease(v32);
      *(DerivedStorage + 320) = 0;
    }

    v33 = *(DerivedStorage + 328);
    if (v33)
    {
      CFRelease(v33);
      *(DerivedStorage + 328) = 0;
    }

    v34 = *(DerivedStorage + 256);
    if (v34)
    {
      CFRelease(v34);
      *(DerivedStorage + 256) = 0;
    }

    v35 = *(DerivedStorage + 136);
    if (v35)
    {
      CFRelease(v35);
      *(DerivedStorage + 136) = 0;
    }

    v36 = *(DerivedStorage + 152);
    if (v36)
    {
      dispatch_source_cancel(*(DerivedStorage + 152));
      dispatch_release(v36);
      *(DerivedStorage + 152) = 0;
    }

    v37 = *(DerivedStorage + 376);
    if (v37)
    {

      *(DerivedStorage + 376) = 0;
    }
  }

  else
  {
    if (gLogCategory_APEndpointManager <= 100 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_Finalize_cold_3(a1);
    }

    __break(1u);
  }
}

__CFString *manager_CopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  cf = 0;
  CFStringAppendFormat(Mutable, 0, @"<APEndpointManager %p>", a1);
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v6 = v5(CMBaseObject, @"ShowInfo", v2, &cf);
    v7 = cf;
    if (!v6)
    {
      __s = 0;
      ASPrintF(&__s, "%@", cf);
      v8 = __s;
      v9 = strlen(__s);
      if (v9 && __s[v9 - 1] == 10)
      {
        __s[v9 - 1] = 0;
        v8 = __s;
      }

      CFStringAppendFormat(Mutable, 0, @"%s", v8);
      free(__s);
      v7 = cf;
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  return Mutable;
}

uint64_t manager_SetProperty(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointManager, "OSStatus manager_setPropertyInternal(FigEndpointManagerRef, CFStringRef, CFTypeRef)", 33554462, "[%{ptr}] Setting unsupported property: %@\n", a1, a2);
  }

  FigSimpleMutexUnlock();
  return 4294954512;
}

uint64_t __manager_invalidateInternal_block_invoke(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 32);
  if (v6)
  {

    return v6(a2);
  }

  return result;
}

void manager_removeCluster(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  key = 0;
  cf = 0;
  v5 = *MEMORY[0x277CBECE8];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(CMBaseObject, *MEMORY[0x277CC14E8], v5, &theArray);
  }

  v8 = APSGetFBOPropertyInt64();
  v9 = FigEndpointGetCMBaseObject();
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    v10(v9, *MEMORY[0x277CC12C8], v5, &cf);
  }

  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_removeCluster_cold_1(v8 == 0, &cf, a1, a2);
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v8)
  {
LABEL_9:
    manager_updateExposedLocalEndpoint(a1, *(DerivedStorage + 296));
  }

LABEL_10:
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v12 = Count;
      for (i = 0; i != v12; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointManager, "void manager_removeCluster(FigEndpointManagerRef, FigEndpointRef)", 33554482, "[%{ptr}] Cluster change: Removing subEndpoint [%{ptr}] from cluster due to cluster removal\n", a1, ValueAtIndex);
        }

        manager_removeEndpointFromCluster();
      }
    }
  }

  v15 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v15)
  {
    v15(a2);
  }

  v16 = FigEndpointGetCMBaseObject();
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v17 && (v17(v16, *MEMORY[0x277CC1368], v5, &key), key))
  {
    CFDictionaryRemoveValue(*(DerivedStorage + 240), key);
    APEndpointManagerUpdateInternalClientNeedingDiscovery(a1, key, 0);
  }

  else
  {
    manager_removeCluster_cold_2();
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (key)
  {
    CFRelease(key);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t __manager_invalidateInternal_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 32);
  if (v7)
  {

    return v7(a3);
  }

  return result;
}

void manager_removeAllEndpointsIfNeeded(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  manager_removeAllEndpointsForDictIfNeeded();
  manager_removeAllEndpointsForDictIfNeeded();

  manager_removeAllEndpointsForDictIfNeeded();
}

void manager_removeEndpointIfNeeded(uint64_t a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (IsAnUGLWrapperEndpoint(a2))
  {

    manager_removeUGLWrapperEndpointIfEmpty(a1, a2);
  }

  else
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(CMBaseObject, @"TransportDevice", *MEMORY[0x277CBECE8], &cf);
    }

    v9 = APSGetFBOPropertyInt64();
    v10 = 176;
    if (!v9)
    {
      v10 = 168;
    }

    manager_removeEndpointForTransportDeviceIfNeeded(a1, cf, *(DerivedStorage + v10), a3);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t manager_addClusterSubEndpoints(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    v5 = 4294954514;
LABEL_6:
    APSLogErrorAt();
    goto LABEL_7;
  }

  v4 = v3(CMBaseObject, *MEMORY[0x277CC14E8], *MEMORY[0x277CBECE8], &v7);
  if (v4)
  {
    v5 = v4;
    goto LABEL_6;
  }

  v5 = v7;
  if (!v7)
  {
    return v5;
  }

  CFArrayGetCount(v7);
  CFArrayApplyBlock();
  v5 = 0;
LABEL_7:
  if (v7)
  {
    CFRelease(v7);
  }

  return v5;
}

uint64_t manager_determineLocalClusterAction(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a2)
  {
    manager_determineLocalClusterAction_cold_5();
    return a2;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(CMBaseObject, *MEMORY[0x277CC12C8], *MEMORY[0x277CBECE8], &cf);
    v5 = cf;
  }

  else
  {
    v5 = 0;
  }

  v6 = APEndpointFigEndpointClusterTypeToAPSClusterType(v5);
  if (v6 == 1)
  {
    v7 = APSGetFBOPropertyInt64();
    v8 = APSGetFBOPropertyInt64();
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      v10 = v8;
      if (v7)
      {
        v11 = 1;
      }

      else
      {
        v11 = v8 == 0;
      }

      if (!v11)
      {
        if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
        {
          manager_determineLocalClusterAction_cold_2(a2);
        }

        a2 = 2;
        goto LABEL_44;
      }

      if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
      {
        v12 = "yes";
        if (v7)
        {
          v13 = "yes";
        }

        else
        {
          v13 = "no";
        }

        if (!v10)
        {
          v12 = "no";
        }

        LogPrintF(&gLogCategory_APEndpointManager, "APEndpointManagerLocalClusterAction manager_determineLocalClusterAction(FigEndpointManagerRef, FigEndpointRef)", 33554482, "Local SP cluster action [%{ptr}]: none b/c cluster leader (%s) == not in use (%s)\n", a2, v13, v12);
      }

      goto LABEL_43;
    }

    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_determineLocalClusterAction_cold_1(a2);
    }

    goto LABEL_41;
  }

  if (v6 == 2 && APSIsLocalClusterWithStaticLeadershipEnabled())
  {
    if (APSGetFBOPropertyInt64())
    {
      if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
      {
        manager_determineLocalClusterAction_cold_3(a2);
      }

      goto LABEL_43;
    }

    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_determineLocalClusterAction_cold_4(a2);
    }

LABEL_41:
    a2 = 1;
    goto LABEL_44;
  }

LABEL_43:
  a2 = 0;
LABEL_44:
  if (cf)
  {
    CFRelease(cf);
  }

  return a2;
}

void manager_activateLocalCluster(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*(DerivedStorage + 1))
  {
    manager_activateLocalCluster_cold_1();
    return;
  }

  v5 = DerivedStorage;
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    manager_activateLocalCluster_cold_4();
    return;
  }

  v8 = Mutable;
  CFDictionarySetValue(Mutable, @"ActivatedByManager", *MEMORY[0x277CBED28]);
  CFDictionarySetValue(v8, @"NetworkClock", *(v5 + 304));
  v9 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  if (v9)
  {
    v10 = v9;
    *v9 = CFRetain(a1);
    CMBaseObject = FigEndpointGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(CMBaseObject, *MEMORY[0x277CC12C8], v6, &cf);
      v13 = cf;
    }

    else
    {
      v13 = 0;
    }

    v14 = APEndpointFigEndpointClusterTypeToAPSClusterType(v13);
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      v15 = APSClusterTypeToDescriptionString();
      LogPrintF(&gLogCategory_APEndpointManager, "void manager_activateLocalCluster(FigEndpointManagerRef, FigEndpointRef)", 33554482, "[%{ptr}] <AirPlayActivation> Endpoint [%{ptr}]: local %@ cluster activation started\n", a1, a2, v15);
    }

    if (v14 == 1)
    {
      v16 = 0;
    }

    else
    {
      if (v14 != 2)
      {
        if (gLogCategory_APEndpointManager <= 90 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointManager, "void manager_activateLocalCluster(FigEndpointManagerRef, FigEndpointRef)", 33554522, "[%{ptr}] <AirPlayActivation> [%{ptr}] Ignoring local cluster activation for unsupported cluster type.", a1, a2);
        }

        goto LABEL_26;
      }

      if (*(v5 + 396) == 100)
      {
        v16 = 34;
      }

      else
      {
        v16 = 32;
      }
    }

    v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v17)
    {
      v18 = v17(a2, v16, v8, manager_activateLocalClusterCallback, v10);
      if (!v18)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v18 = 4294954514;
    }

    manager_activateLocalCluster_cold_2(v18);
  }

  else
  {
    manager_activateLocalCluster_cold_3();
  }

LABEL_26:
  CFRelease(v8);
  if (cf)
  {
    CFRelease(cf);
  }
}

void manager_activateLocalClusterCallback(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5)
{
  v9 = *a5;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointManager, "void manager_activateLocalClusterCallback(FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, void *)", 33554482, "[%{ptr}] <AirPlayActivation> Endpoint [%{ptr}]: local cluster activation complete (seed %llu), result = %#m\n", v9, a1, a3, a4);
  }

  if (a4)
  {
    if (a4 == -16723)
    {
      if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointManager, "void manager_activateLocalClusterCallback(FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, void *)", 33554482, "[%{ptr}] <AirPlayActivation> Cluster endpoint [%{ptr}] is dissociated; not retrying\n", v9, a1);
      }
    }

    else
    {
      v11 = *(DerivedStorage + 368);
      *(DerivedStorage + 368) = v11 + 1;
      if (v11 <= 4)
      {
        v12 = 100;
      }

      else
      {
        v12 = 1000;
      }

      if (v11 <= 9)
      {
        v13 = v12;
      }

      else
      {
        v13 = 5000;
      }

      if (v9)
      {
        CFRetain(v9);
      }

      if (a1)
      {
        CFRetain(a1);
      }

      if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointManager, "void manager_activateLocalClusterCallback(FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, void *)", 33554482, "[%{ptr}] <AirPlayActivation> Endpoint [%{ptr}]: Delaying next activation attempt for %d milliseconds, after %d failures\n", v9, a1, v13, *(DerivedStorage + 368));
      }

      v14 = dispatch_time(0, 1000000 * v13);
      v15 = *(DerivedStorage + 8);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __manager_activateLocalClusterCallback_block_invoke;
      block[3] = &__block_descriptor_48_e5_v8__0l;
      block[4] = v9;
      block[5] = a1;
      dispatch_after(v14, v15, block);
    }
  }

  else
  {
    *(DerivedStorage + 368) = 0;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  free(a5);
}

void __manager_activateLocalClusterCallback_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  manager_activateLocalCluster(v2, v3);
  FigSimpleMutexUnlock();
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

uint64_t manager_handleEndpointIsInUseDidChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  result = CFDictionaryGetInt64();
  if (!result)
  {
    v8 = CFDictionaryGetInt64() != 0;
    FigSimpleMutexLock();
    manager_removeEndpointIfNeeded(a2, a4, v8);

    return FigSimpleMutexUnlock();
  }

  return result;
}

void manager_removeUGLWrapperEndpointIfEmpty(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  key = 0;
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointManager, "void manager_removeUGLWrapperEndpointIfEmpty(FigEndpointManagerRef, FigEndpointRef)", 33554482, "[%{ptr}] Remove UGL wrapper [%{ptr}] if empty", a1, a2);
  }

  if (APEndpointUGLWrapperIsEmpty(a2))
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6 && (v6(CMBaseObject, *MEMORY[0x277CC1340], *MEMORY[0x277CBECE8], &key), key))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointManager, "void manager_removeUGLWrapperEndpointIfEmpty(FigEndpointManagerRef, FigEndpointRef)", 33554482, "[%{ptr}] RemoveUGLWrapperEndpointIfEmpty: Removing UGL wrapper [%{ptr}] for groupID %@", a1, a2, key);
      }

      CFDictionaryRemoveValue(*(DerivedStorage + 208), key);
    }

    else if (manager_removeUGLWrapperEndpointIfEmpty_cold_1(a1, a2))
    {
      return;
    }
  }

  if (key)
  {
    CFRelease(key);
  }
}

uint64_t manager_handleInterruptingSessionStateDidChange(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  v7 = CFDictionaryGetInt64() != 0;
  FigSimpleMutexLock();
  manager_updateAggregatedInterruptingSessionStateIfNeeded(a2, a4, v7);

  return FigSimpleMutexUnlock();
}

uint64_t manager_getAndPostSenderStateUpdate(uint64_t a1)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    manager_getAndPostSenderStateUpdate_cold_2();
    v11 = 4294960568;
    goto LABEL_14;
  }

  if (*(DerivedStorage + 256))
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v6 = v5(CMBaseObject, @"LocalRouteState", v2, &cf);
      if (!v6)
      {
        FigCFDictionarySetValueFromKeyInDict();
        FigCFDictionarySetValueFromKeyInDict();
        FigCFDictionarySetValueFromKeyInDict();
        goto LABEL_6;
      }

      v11 = v6;
    }

    else
    {
      v11 = 4294954514;
    }

    APSLogErrorAt();
    goto LABEL_14;
  }

LABEL_6:
  v7 = CMBaseObjectGetDerivedStorage();
  Count = CFSetGetCount(*(v7 + 224));
  v9 = MEMORY[0x277CBED28];
  if (Count < 1)
  {
    v9 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"NonBuddyConnectionActive", *v9);
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_getAndPostSenderStateUpdate_cold_1(Mutable);
  }

  CFRetain(Mutable);
  v10 = *(DerivedStorage + 8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __manager_getAndPostSenderStateUpdate_block_invoke;
  v13[3] = &__block_descriptor_40_e5_v8__0l;
  v13[4] = Mutable;
  dispatch_async(v10, v13);
  v11 = 0;
LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v11;
}

void __manager_getAndPostSenderStateUpdate_block_invoke(uint64_t a1)
{
  APSXPCServerPostEvent();
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t manager_copyHierarchy(uint64_t a1, const __CFAllocator *a2, void *a3)
{
  CMBaseObjectGetDerivedStorage();
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  Mutable = CFStringCreateMutable(a2, 0x100000);
  v20[3] = Mutable;
  if (!Mutable)
  {
    APSLogErrorAt();
    v11 = 4294950585;
    goto LABEL_12;
  }

  CFStringAppendF(Mutable, "+-+ APEndpoint Hierarchy Dump +-+\n\n");
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v16 = __manager_copyHierarchy_block_invoke;
  v17 = &unk_27849BC90;
  v18 = &v19;
  APSHierarchyReporterProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable && (v8 = *(ProtocolVTable + 16)) != 0)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      v10 = v9(a1, 0, 0, 0, v15);
      v11 = v10;
      if (v10 != -12782 && v10 != -12788)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = 4294954514;
    }
  }

  else
  {
    v11 = 4294954508;
  }

  v11 = (v16)(v15, 0, "[Error] Object:[%{ptr}]%?s%?''@ cannot be dumped (error %#m) Parent:[%{ptr}]\n", a1, 0, " ", 0, 0, v11, 0);
LABEL_10:
  if (v11)
  {
    APSLogErrorAt();
  }

  else
  {
    v12 = v20;
    *a3 = v20[3];
    v12[3] = 0;
  }

LABEL_12:
  v13 = v20[3];
  if (v13)
  {
    CFRelease(v13);
  }

  _Block_object_dispose(&v19, 8);
  return v11;
}

void manager_copyEndpointInfoForShowInfo(CFArrayRef theArray, __CFArray **a2, __CFArray **a3)
{
  value = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], Count, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    manager_copyEndpointInfoForShowInfo_cold_2();
    return;
  }

  v9 = Mutable;
  v10 = CFArrayCreateMutable(v7, Count, MEMORY[0x277CBF128]);
  if (!v10)
  {
    manager_copyEndpointInfoForShowInfo_cold_1();
    goto LABEL_23;
  }

  v14 = a3;
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      CFArrayGetValueAtIndex(theArray, i);
      value = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v13)
      {
        v13(CMBaseObject, @"EndpointShowInfo", v7, &value);
      }

      if (value)
      {
        CFArrayAppendValue(v9, value);
        if (CFDictionaryGetInt64())
        {
          CFArrayAppendValue(v10, value);
        }

        if (value)
        {
          CFRelease(value);
          value = 0;
        }
      }
    }
  }

  if (a2)
  {
    *a2 = v10;
    v10 = 0;
  }

  if (!v14)
  {
LABEL_23:
    CFRelease(v9);
    if (!v10)
    {
      return;
    }

    goto LABEL_24;
  }

  *v14 = v9;
  if (v10)
  {
LABEL_24:
    CFRelease(v10);
  }
}

void __manager_copyShowInfo_block_invoke(uint64_t a1, const void *a2, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CEA2C8]);
  v7 = *MEMORY[0x277CBECE8];
  Count = CFDictionaryGetCount(theDict);
  MutableCopy = CFDictionaryCreateMutableCopy(v7, Count + 1, theDict);
  if (!MutableCopy)
  {
    __manager_copyShowInfo_block_invoke_cold_1(a1);
    return;
  }

  v10 = MutableCopy;
  CFDictionaryAddValue(MutableCopy, @"deviceID", a2);
  v11 = CFDictionaryGetValue(*(a1 + 40), Value);
  if (v11)
  {
    v12 = CFRetain(v11);
    if (v12)
    {
      Mutable = v12;
      CFArrayAppendValue(v12, v10);
LABEL_6:
      CFRelease(Mutable);
      goto LABEL_7;
    }
  }

  Mutable = CFArrayCreateMutable(v7, 0, MEMORY[0x277CBF128]);
  CFDictionarySetValue(*(a1 + 40), Value, Mutable);
  CFArrayAppendValue(Mutable, v10);
  if (Mutable)
  {
    goto LABEL_6;
  }

LABEL_7:

  CFRelease(v10);
}

void __manager_copyShowInfo_block_invoke_2(uint64_t a1, uint64_t a2, CFArrayRef theArray)
{
  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  Count = CFArrayGetCount(theArray);
  v8 = *(*(a1 + 32) + 8);
  Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x277CEA2B0]);
  DataBuffer_AppendF(v8 + 32, "\t[%@] %@ Size=%d\n", a2, Value, Count);
  if (Count >= 1)
  {
    v10 = CFArrayGetValueAtIndex(theArray, 0);
    v11 = CFDictionaryGetValue(v10, @"deviceID");
    if (v11)
    {
      v12 = v11;
      v13 = *MEMORY[0x277CBECE8];
      v14 = *MEMORY[0x277CEA2A8];
      v15 = 1;
      v16 = *MEMORY[0x277CEA2A0];
      while (1)
      {
        Length = CFStringGetLength(v12);
        MutableCopy = CFStringCreateMutableCopy(v13, Length, v12);
        if (!MutableCopy)
        {
          break;
        }

        v19 = MutableCopy;
        CFStringTrim(MutableCopy, @"PSGDataSource::PSGInfo::");
        DataBuffer_AppendF(*(*(a1 + 32) + 8) + 32, "\t\t%-36@ ", v19);
        if (CFDictionaryContainsKey(v10, v14))
        {
          v20 = *(*(a1 + 32) + 8);
          v21 = CFDictionaryGetValue(v10, v14);
          DataBuffer_AppendF(v20 + 32, "PGMemberID=%@ ", v21);
        }

        if (CFDictionaryContainsKey(v10, v16))
        {
          v22 = *(*(a1 + 32) + 8);
          Int64 = CFDictionaryGetInt64();
          DataBuffer_AppendF(v22 + 32, "IsPGLeader=%d ", Int64 != 0);
        }

        DataBuffer_AppendF(*(*(a1 + 32) + 8) + 32, "\n");
        if (Count == v15)
        {
          goto LABEL_15;
        }

        v10 = CFArrayGetValueAtIndex(theArray, v15);
        v12 = CFDictionaryGetValue(v10, @"deviceID");
        ++v15;
        if (!v12)
        {
          goto LABEL_14;
        }
      }

      __manager_copyShowInfo_block_invoke_2_cold_1();
    }

    else
    {
      v19 = 0;
LABEL_14:
      APSLogErrorAt();
      if (v19)
      {
LABEL_15:

        CFRelease(v19);
      }
    }
  }
}

uint64_t __manager_copyHierarchy_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = CFStringAppendF(*(*(*(a1 + 32) + 8) + 24), "%*s", 2 * a2, "");
  if (v9)
  {
    v11 = v9;
    __manager_copyHierarchy_block_invoke_cold_1(v9);
  }

  else
  {
    v10 = CFStringAppendV();
    v11 = v10;
    if (v10)
    {
      __manager_copyHierarchy_block_invoke_cold_2(v10);
    }
  }

  return v11;
}

uint64_t manager_DumpHierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  (*(a5 + 16))(a5, a3, "EndpointManager:[%{ptr}] (AirPlay)\n", a4, a1);
  v8 = manager_copyEndpoints(a1, 0);
  if (!v8)
  {
    manager_DumpHierarchy_cold_2();
    return 4294950585;
  }

  v9 = v8;
  Count = CFArrayGetCount(v8);
  if (Count < 1)
  {
    goto LABEL_3;
  }

  v12 = Count;
  v13 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v9, v13);
    v15 = APSGetFBOPropertyInt64();
    v16 = v22;
    if (!v22)
    {
      goto LABEL_11;
    }

    if (gLogCategory_APEndpointManager <= 90)
    {
      if (gLogCategory_APEndpointManager == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_10;
        }

        v16 = v22;
      }

      LogPrintF(&gLogCategory_APEndpointManager, "OSStatus manager_DumpHierarchy(APSHierarchyReporterRef, void *, CFIndex, CFStringRef, APSHierarchyReporterDumpCallback)", 33554522, "[%{ptr}] ### Get IsActivated for endpoint [%{ptr}] failed (%#m)\n", a1, ValueAtIndex, v16);
    }

LABEL_10:
    v22 = 0;
LABEL_11:
    if (v15)
    {
      break;
    }

LABEL_23:
    if (v12 == ++v13)
    {
      goto LABEL_3;
    }
  }

  APSHierarchyReporterProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v18 = *(ProtocolVTable + 16)) == 0)
  {
    v20 = 4294954508;
LABEL_21:
    v20 = (*(a5 + 16))(a5, a3 + 1, "[Error] Object:[%{ptr}]%?s%?''@ cannot be dumped (error %#m) Parent:[%{ptr}]\n", ValueAtIndex, 0, " ", 0, 0, v20, a1);
    goto LABEL_22;
  }

  v19 = *(v18 + 8);
  if (!v19)
  {
    v20 = 4294954514;
    goto LABEL_21;
  }

  v20 = v19(ValueAtIndex, a1, a3 + 1, 0, a5);
  if (v20 == -12782 || v20 == -12788)
  {
    goto LABEL_21;
  }

LABEL_22:
  v22 = v20;
  if (!v20)
  {
    goto LABEL_23;
  }

  manager_DumpHierarchy_cold_1(v20);
LABEL_3:
  CFRelease(v9);
  return v22;
}

uint64_t manager_CreateAggregateEndpoint(uint64_t a1, uint64_t a2, void **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  FigSimpleMutexLock();
  if (a2 == 3)
  {
    AsSystemRemotePool = APEndpointAggregateCreateAsSystemRemotePool(*MEMORY[0x277CBECE8], &value);
    if (AsSystemRemotePool)
    {
      v11 = AsSystemRemotePool;
      manager_CreateAggregateEndpoint_cold_1(AsSystemRemotePool);
      goto LABEL_16;
    }

    v9 = 0;
    goto LABEL_7;
  }

  if (!a2)
  {
    v9 = *(DerivedStorage + 304);
    AsSystemMusicAggregate = APEndpointAggregateCreateAsSystemMusicAggregate(*MEMORY[0x277CBECE8], *(DerivedStorage + 4), v9, 0, &value);
    if (AsSystemMusicAggregate)
    {
      v11 = AsSystemMusicAggregate;
      manager_CreateAggregateEndpoint_cold_2(AsSystemMusicAggregate);
      goto LABEL_16;
    }

LABEL_7:
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointManager, "OSStatus manager_CreateAggregateEndpoint(FigEndpointManagerRef, FigEndpointAggregateType, FigEndpointRef *)", 33554482, "[%{ptr}] <AirPlayClock> Created aggregate endpoint [%{ptr}] of type %d with network clock [%{ptr}]", a1, value, a2, v9);
    }

    CFArrayAppendValue(*(DerivedStorage + 192), value);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    v11 = 0;
    *a3 = value;
    value = 0;
    goto LABEL_16;
  }

  if (gLogCategory_APEndpointManager <= 90 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_CreateAggregateEndpoint_cold_3(a2, v7, v8);
  }

  v11 = 4294950586;
LABEL_16:
  FigSimpleMutexUnlock();
  if (value)
  {
    CFRelease(value);
  }

  return v11;
}

uint64_t manager_CopyRemoteControlDepotEndpoint(uint64_t a1, void *a2)
{
  v8 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = &v8;
  FigSimpleMutexLock();
  if (manager_CopyRemoteControlDepotEndpoint_createDepotOnce != -1)
  {
    dispatch_once_f(&manager_CopyRemoteControlDepotEndpoint_createDepotOnce, v7, manager_createRemoteControlEndpointDepotInternalOnce);
  }

  v5 = *(DerivedStorage + 200);
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  *a2 = v5;
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t manager_handleAggregateEndpointDissociated(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_handleAggregateEndpointDissociated_cold_1(a4);
  }

  FigSimpleMutexLock();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  v6 = *(DerivedStorage + 192);
  v10.length = CFArrayGetCount(v6);
  v10.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v6, v10, a4);
  if (FirstIndexOfValue == -1)
  {
    manager_handleAggregateEndpointDissociated_cold_2();
  }

  else
  {
    CFArrayRemoveValueAtIndex(*(DerivedStorage + 192), FirstIndexOfValue);
  }

  return FigSimpleMutexUnlock();
}

uint64_t manager_createRemoteControlEndpointDepotInternalOnce(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  AsSystemRemotePool = APEndpointAggregateCreateAsSystemRemotePool(*MEMORY[0x277CBECE8], (DerivedStorage + 200));
  v4 = AsSystemRemotePool;
  if (AsSystemRemotePool)
  {
    result = manager_createRemoteControlEndpointDepotInternalOnce_cold_1(AsSystemRemotePool);
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();
    result = FigNotificationCenterAddWeakListener();
  }

  *a1[2] = v4;
  return result;
}

void manager_deactivateLocalCluster(uint64_t a1, uint64_t a2, int a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    manager_deactivateLocalCluster_cold_2();
    return;
  }

  v7 = Mutable;
  v8 = *MEMORY[0x277CBED28];
  CFDictionarySetValue(Mutable, @"ActivatedByManager", *MEMORY[0x277CBED28]);
  if (a3)
  {
    v9 = v8;
  }

  else
  {
    v9 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(v7, @"ForceClusterChange", v9);
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointManager, "void manager_deactivateLocalCluster(FigEndpointManagerRef, FigEndpointRef, Boolean)", 33554482, "[%{ptr}] <AirPlayActivation> Endpoint [%{ptr}]: local cluster deactivation started\n", a1, a2);
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v10)
  {
    v11 = 4294954514;
    goto LABEL_15;
  }

  v11 = v10(a2, v7, 0, 0);
  if (v11)
  {
LABEL_15:
    manager_deactivateLocalCluster_cold_1(v11);
  }

  CFRelease(v7);
}

uint64_t __manager_createEndpoint_block_invoke(uint64_t a1, const void *a2, const void *a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v9 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  Count = CFSetGetCount(*(DerivedStorage + 272));
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    v12 = "yes";
    if (!v6)
    {
      v12 = "no";
    }

    LogPrintF(&gLogCategory_APEndpointManager, "void manager_updateUGLRCServerandCopyInfo(FigEndpointManagerRef, FigEndpointRef, CFStringRef, Boolean, CFDictionaryRef *)", 33554482, "<APUGL> Updating rc server: endpoint [%{ptr}], groupID %@, shouldStart=%s, oldCount=%ld", a2, a3, v12, Count);
  }

  v13 = *(DerivedStorage + 272);
  if (!v6)
  {
    CFSetRemoveValue(v13, a2);
    if (Count != 1 || CFSetGetCount(*(DerivedStorage + 272)))
    {
      goto LABEL_30;
    }

    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      __manager_createEndpoint_block_invoke_cold_2(DerivedStorage);
    }

    v14 = *(DerivedStorage + 288);
    if (v14)
    {
      CFRelease(v14);
      *(DerivedStorage + 288) = 0;
    }

LABEL_37:
    manager_startOrStopUGLRCServer(v9, v6);
    if (!a5)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  CFSetAddValue(v13, a2);
  if (a3)
  {
    if (!FigCFEqual())
    {
      if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointManager, "void manager_updateUGLRCServerandCopyInfo(FigEndpointManagerRef, FigEndpointRef, CFStringRef, Boolean, CFDictionaryRef *)", 33554482, "<APUGL> Updating rc server groupUUID from endpoint [%{ptr}]: %@ -> %@", a2, *(DerivedStorage + 288), a3);
      }

      v15 = *(DerivedStorage + 288);
      *(DerivedStorage + 288) = a3;
      CFRetain(a3);
      if (v15)
      {
        CFRelease(v15);
      }

      AirPlayReceiverServerSetProperty();
    }
  }

  else if (gLogCategory_APEndpointManager <= 60 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    __manager_createEndpoint_block_invoke_cold_1(a2);
  }

  if (!Count)
  {
    goto LABEL_37;
  }

LABEL_30:
  if (!a5)
  {
    goto LABEL_34;
  }

LABEL_31:
  v16 = *(DerivedStorage + 280);
  if (v16)
  {
    v16 = CFRetain(v16);
  }

  *a5 = v16;
LABEL_34:

  return FigSimpleMutexUnlock();
}

uint64_t manager_handleLocalRouteStateChanged(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  manager_getAndPostSenderStateUpdate(a2);

  return FigSimpleMutexUnlock();
}

uint64_t manager_handleClusterChangeDeactivationFinish(uint64_t a1, void *a2, uint64_t a3, const void *a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = APSGetFBOPropertyInt64();
  if (v9)
  {
    v10 = a4;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    Value = 0;
  }

  else
  {
    Value = a4;
  }

  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    v12 = "cluster";
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v12 = "endpoint";
      v13 = Value;
    }

    LogPrintF(&gLogCategory_APEndpointManager, "void manager_handleClusterChangeDeactivationFinish(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] Cluster change: Deactivation finished for local %s [%{ptr}]\n", a2, v12, v13);
  }

  FigSimpleMutexLock();
  if (v10)
  {
    if (a5)
    {
      Value = CFDictionaryGetValue(a5, @"SourceEndpoint");
    }

    a4 = Value;
    if (!Value)
    {
      if (gLogCategory_APEndpointManager <= 90 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointManager, "void manager_handleClusterChangeDeactivationFinish(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554522, "[%{ptr}] Cluster change: Couldn't find localEndpoint in payload [%{ptr}]\n", a2, a5);
      }

      manager_removeCluster(a2, v10);
      goto LABEL_28;
    }
  }

  else if (!Value)
  {
    goto LABEL_28;
  }

  if (gLogCategory_APEndpointManager <= 50)
  {
    manager_handleClusterChangeDeactivationFinish_cold_1(gLogCategory_APEndpointManager, a2, a4);
  }

  updated = manager_updateEndpointClusterMembershipIfNeeded(a2, a4, 0, 1);
  if (updated)
  {
    manager_handleClusterChangeDeactivationFinish_cold_2(updated);
  }

LABEL_28:
  if (!*(DerivedStorage + 160))
  {
    goto LABEL_54;
  }

  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_handleClusterChangeDeactivationFinish_cold_3(a2);
  }

  *(DerivedStorage + 160) = 0;
  v15 = CMBaseObjectGetDerivedStorage();
  v16 = CFDictionaryGetValue(*(v15 + 232), *(v15 + 296));
  v17 = CFDictionaryGetValue(*(v15 + 240), v16);
  v18 = FigCFDictionaryCopyArrayOfValues();
  if (CFArrayGetCount(v18) >= 1)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v18, v20);
      v22 = APSGetFBOPropertyInt64();
      v23 = FigCFEqual();
      if (v22)
      {
        if (!v23)
        {
          if (gLogCategory_APEndpointManager <= 90 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
          {
            manager_handleClusterChangeDeactivationFinish_cold_4(ValueAtIndex, v24, v25);
          }

          manager_removeCluster(a2, ValueAtIndex);
          v19 = -71790;
        }
      }

      else if (v23)
      {
        v19 = -71790;
        if (gLogCategory_APEndpointManager <= 90 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointManager, "OSStatus manager_localClusterConfigurationSanityCheck(FigEndpointManagerRef)", 33554522, "Cluster change: local endpoint [%{ptr}] is contained in non-local cluster [%{ptr}].\n", *(v15 + 296), v17);
        }
      }

      ++v20;
    }

    while (v20 < CFArrayGetCount(v18));
    if (v19)
    {
      goto LABEL_52;
    }
  }

  if (gLogCategory_APEndpointManager > 30 || gLogCategory_APEndpointManager == -1 && !_LogCategory_Initialize())
  {
LABEL_52:
    if (!v18)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  manager_handleClusterChangeDeactivationFinish_cold_5();
  if (v18)
  {
LABEL_53:
    CFRelease(v18);
  }

LABEL_54:
  CFRetain(a2);
  dispatch_async_f(*(DerivedStorage + 8), a2, manager_notifyAvailableEndpointsChanged);

  return FigSimpleMutexUnlock();
}

void manager_handleClusterChangeDeactivationRequired(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Int64 = CFDictionaryGetInt64();
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    v9 = "Cluster change: config changed";
    if (Int64)
    {
      v9 = "Failed";
    }

    LogPrintF(&gLogCategory_APEndpointManager, "void manager_handleClusterChangeDeactivationRequired(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] <AirPlayActivationLocal> Deactivation required for local cluster [%{ptr}]: %s\n", a2, a4, v9);
  }

  FigSimpleMutexLock();
  if (Int64 && !*(DerivedStorage + 160))
  {
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_handleClusterChangeDeactivationRequired_cold_1(a2);
    }

    *(DerivedStorage + 160) = Int64 != 0;
    CFRetain(a2);
    dispatch_async_f(*(DerivedStorage + 8), a2, manager_notifyAvailableEndpointsChanged);
  }

  FigSimpleMutexUnlock();

  manager_deactivateLocalCluster(a2, a4, 0);
}

void manager_handleNonPersistentReceiverSessionStartedOnLocalHTSecondary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      manager_handleNonPersistentReceiverSessionStartedOnLocalHTSecondary_cold_1();
      return;
    }

    v6 = Mutable;
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
  }

  else
  {
    v6 = 0;
  }

  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_handleNonPersistentReceiverSessionStartedOnLocalHTSecondary_cold_2();
  }

  APSXPCServerPostEvent();
  if (v6)
  {

    CFRelease(v6);
  }
}

void __manager_asyncRegisterAirPlayHALDriverInternal_block_invoke(uint64_t a1)
{
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    __manager_asyncRegisterAirPlayHALDriverInternal_block_invoke_cold_1(a1);
  }

  v2 = *(a1 + 32);

  manager_AudioServerPluginInterruptionHandler(v2);
}

void __manager_asyncStartNetworkClock_block_invoke(uint64_t a1)
{
  for (i = *(a1 + 32); !*(i + 1); i = *(a1 + 32))
  {
    if (gLogCategory_APEndpointManager <= 30)
    {
      if (gLogCategory_APEndpointManager != -1 || (v3 = _LogCategory_Initialize(), i = *(a1 + 32), v3))
      {
        LogPrintF(&gLogCategory_APEndpointManager, "void manager_asyncStartNetworkClock(FigEndpointManagerRef)_block_invoke", 33554462, "[%{ptr}] <AirPlayClock> Starting network clock [%{ptr}]\n", *(a1 + 40), *(i + 304));
        i = *(a1 + 32);
      }
    }

    v4 = *(i + 304);
    v5 = *(a1 + 40);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v6)
    {
      v7 = v6(v4, v5);
    }

    else
    {
      v7 = 4294954514;
    }

    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointManager, "void manager_asyncStartNetworkClock(FigEndpointManagerRef)_block_invoke", 33554482, "[%{ptr}] <AirPlayClock> Starting shared network clock [%{ptr}] returns %#m\n", *(a1 + 40), *(*(a1 + 32) + 304), v7);
    }

    if (!v7)
    {
      break;
    }

    sleep(2u);
  }

  v8 = *(a1 + 40);

  CFRelease(v8);
}

uint64_t manager_injectEndpoint(void *a1, const __CFDictionary *a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFDictionaryGetValue(*(DerivedStorage + 168), a3))
  {
    if (gLogCategory_APEndpointManager <= 90 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_injectEndpoint_cold_1(a1, v9, v10);
    }

    manager_removeEndpointForTransportDeviceIfNeeded(a1, a3, *(DerivedStorage + 168), 1);
  }

  Int64 = CFDictionaryGetInt64();
  Value = CFDictionaryGetValue(a2, @"AuthString");
  if (Int64)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v14)
    {
      v16 = 4294954514;
      goto LABEL_31;
    }

    v15 = v14(CMBaseObject, @"ScreenUsageMode", *MEMORY[0x277CD6790]);
    if (v15)
    {
      v16 = v15;
LABEL_31:
      APSLogErrorAt();
      goto LABEL_32;
    }
  }

  else if (!CFDictionaryGetInt64())
  {
    goto LABEL_10;
  }

  v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v17)
  {
    v16 = 4294954514;
    goto LABEL_31;
  }

  v18 = v17(a4, @"StartSilentAudio", *MEMORY[0x277CBED28]);
  if (v18)
  {
    v16 = v18;
    goto LABEL_31;
  }

LABEL_10:
  if (Value)
  {
    v19 = FigEndpointGetCMBaseObject();
    v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v20)
    {
      v16 = 4294954514;
      goto LABEL_31;
    }

    v21 = v20(v19, *MEMORY[0x277CC1488], Value);
    if (v21)
    {
      v16 = v21;
      goto LABEL_31;
    }
  }

  v22 = CFDictionaryGetInt64();
  if (v22)
  {
    v23 = MEMORY[0x277CBED10];
  }

  else
  {
    v23 = MEMORY[0x277CBED28];
  }

  v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v24)
  {
    v24(a4, *MEMORY[0x277CC1278], *v23);
  }

  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    v25 = "disabled";
    if (!v22)
    {
      v25 = "enabled";
    }

    LogPrintF(&gLogCategory_APEndpointManager, "OSStatus manager_injectEndpoint(FigEndpointManagerRef, CFDictionaryRef, APTransportDeviceRef, FigEndpointRef)", 33554482, "[%{ptr}] AutoConnect %s", a1, v25);
  }

  manager_addEndpoint(a1, a3, a4, *(DerivedStorage + 168));
  manager_postEndpointPresentChangedNotification(a1);
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_injectEndpoint_cold_2(a1);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v26 = FigDispatchAsyncPostNotification();
  v16 = 0;
  if (v26)
  {
    v27 = v26;
    manager_injectEndpoint_cold_3(v26);
    v16 = v27;
  }

LABEL_32:
  FigSimpleMutexUnlock();
  return v16;
}

uint64_t __manager_registerForNotifications_block_invoke_2(uint64_t a1)
{
  if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    __manager_registerForNotifications_block_invoke_2_cold_1(a1);
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t __manager_registerForNotifications_block_invoke_3(uint64_t a1, int token)
{
  state64 = 0;
  v2 = *(*(a1 + 32) + 396);
  result = notify_get_state(token, &state64);
  if (gLogCategory_APEndpointManager <= 50)
  {
    if (gLogCategory_APEndpointManager != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __manager_registerForNotifications_block_invoke_3_cold_1();
    }
  }

  v5 = v2 != 4 || state64 == 1;
  if (state64)
  {
    v6 = !v5;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      __manager_registerForNotifications_block_invoke_3_cold_2();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }

  return result;
}

uint64_t __manager_registerForNotifications_block_invoke_4(uint64_t a1)
{
  FigSimpleMutexLock();
  if (*(*(a1 + 32) + 136))
  {
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      __manager_registerForNotifications_block_invoke_4_cold_1();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  return FigSimpleMutexUnlock();
}

void manager_updateAllowedDevices(uint64_t a1, uint64_t a2)
{
  v3 = FigCFDictionaryCopyArrayOfValues();
  cf = 0;
  Count = CFArrayGetCount(v3);
  if (Count < 1)
  {
LABEL_10:
    if (!v3)
    {
      return;
    }

    goto LABEL_11;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
    CMBaseObject = FigEndpointGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v9)
    {
      break;
    }

    v10 = v9(CMBaseObject, @"EndpointDescription", 0, &cf);
    if (v10)
    {
      goto LABEL_14;
    }

    if (!manager_deviceIsAllowed(a1, cf))
    {
      manager_removeEndpointIfNeeded(a1, ValueAtIndex, 1);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v5 == ++v6)
    {
      goto LABEL_10;
    }
  }

  v10 = 4294954514;
LABEL_14:
  manager_updateAllowedDevices_cold_1(v10, &cf);
  if (v3)
  {
LABEL_11:
    CFRelease(v3);
  }
}

uint64_t __manager_handleClearEndpointWithEndpointIDNotification_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  APTransportDeviceGetDiscoveryID();
  result = CFGetInt64();
  if (result == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }

  return result;
}

void __manager_handleDiscoveryBrokerRequest_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = gLogCategory_APEndpointManager;
  if (gLogCategory_APEndpointManager <= 50)
  {
    if (gLogCategory_APEndpointManager == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_15;
      }

      v7 = gLogCategory_APEndpointManager;
    }

    if (v7 > 30)
    {
      v8 = 0;
    }

    else
    {
      if (v7 != -1)
      {
        v8 = 1;
        goto LABEL_11;
      }

      v8 = _LogCategory_Initialize() != 0;
      v7 = gLogCategory_APEndpointManager;
      if (gLogCategory_APEndpointManager <= 30)
      {
LABEL_11:
        v9 = v7 != -1 || _LogCategory_Initialize() != 0;
        goto LABEL_14;
      }
    }

    v9 = 0;
LABEL_14:
    LogPrintF(&gLogCategory_APEndpointManager, "void manager_brokerManagerAuthenticateBrokerGroupCallback(CFStringRef, OSStatus, CFDictionaryRef)", 33554482, "Broker authentication callback for request %'@. error: %#m%?s%?@\n", v6, a2, v8, ", response: ", v9, a3);
  }

LABEL_15:
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v11 = Mutable;
    CFDictionarySetValue(Mutable, @"RequestType", @"Authenticate");
    CFDictionarySetInt64();
    FigCFDictionarySetValue();
    FigCFDictionarySetValueFromKeyInDict();
    if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      __manager_handleDiscoveryBrokerRequest_block_invoke_cold_1(v11);
    }

    APSXPCServerPostEvent();
    CFRelease(v11);
  }

  else
  {
    __manager_handleDiscoveryBrokerRequest_block_invoke_cold_2();
  }

  v12 = *(a1 + 32);

  CFRelease(v12);
}

void __manager_handleDiscoveryBrokerRequest_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = gLogCategory_APEndpointManager;
  if (gLogCategory_APEndpointManager <= 50)
  {
    if (gLogCategory_APEndpointManager == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_15;
      }

      v7 = gLogCategory_APEndpointManager;
    }

    if (v7 > 30)
    {
      v8 = 0;
    }

    else
    {
      if (v7 != -1)
      {
        v8 = 1;
        goto LABEL_11;
      }

      v8 = _LogCategory_Initialize() != 0;
      v7 = gLogCategory_APEndpointManager;
      if (gLogCategory_APEndpointManager <= 30)
      {
LABEL_11:
        v9 = v7 != -1 || _LogCategory_Initialize() != 0;
        goto LABEL_14;
      }
    }

    v9 = 0;
LABEL_14:
    LogPrintF(&gLogCategory_APEndpointManager, "void manager_brokerManagerGetBrokerGroupInfoCallback(CFStringRef, OSStatus, CFDictionaryRef)", 33554482, "Broker get info callback for request %'@. error: %#m%?s%?@\n", v6, a2, v8, ", response: ", v9, a3);
  }

LABEL_15:
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v11 = Mutable;
    CFDictionarySetValue(Mutable, @"RequestType", @"GetInfo");
    CFDictionarySetInt64();
    FigCFDictionarySetValue();
    FigCFDictionarySetValueFromKeyInDict();
    if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      __manager_handleDiscoveryBrokerRequest_block_invoke_2_cold_1(v11);
    }

    APSXPCServerPostEvent();
    CFRelease(v11);
  }

  else
  {
    __manager_handleDiscoveryBrokerRequest_block_invoke_2_cold_2();
  }

  v12 = *(a1 + 32);

  CFRelease(v12);
}

uint64_t __introspector_getCollectionOfEndpointManagers_block_invoke(uint64_t a1)
{
  result = IsAppleInternalBuild();
  if (result)
  {
    introspector_getCollectionOfEndpointManagers_coll = malloc_type_calloc(1uLL, 0x18uLL, 0xF00401F3BCE50uLL);
    *introspector_getCollectionOfEndpointManagers_coll = dispatch_queue_create("CollectionOfEndpointManagers", 0);
    Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
    v3 = introspector_getCollectionOfEndpointManagers_coll;
    *(introspector_getCollectionOfEndpointManagers_coll + 8) = Mutable;
    *(v3 + 16) = "EndpointManagers";

    return APSIntrospectorAddCommand();
  }

  return result;
}

void manager_introspector_showEndpointInfo(uint64_t a1, int a2, const void *a3, int a4)
{
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v8 = *MEMORY[0x277CBECE8];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    v10(CMBaseObject, *MEMORY[0x277CC1368], v8, &v23);
  }

  v11 = FigEndpointGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(v11, *MEMORY[0x277CC1450], v8, &v22);
  }

  v13 = FigEndpointGetCMBaseObject();
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v14)
  {
    v14(v13, *MEMORY[0x277CC1440], v8, &v21);
  }

  v15 = APSGetFBOPropertyInt64();
  v16 = APSGetFBOPropertyInt64();
  v17 = APSGetFBOPropertyInt64();
  FPrintF(a1, "%*s  ", a2, "");
  if (a4)
  {
    FPrintF(a1, "[%p]/", a3);
  }

  v18 = "RC";
  if (!v17)
  {
    v18 = "AP";
  }

  v19 = ", in use";
  if (!v15)
  {
    v19 = "";
  }

  v20 = ", activated";
  if (!v16)
  {
    v20 = "";
  }

  FPrintF(a1, "[%{ptr}]%*s %-*@ %''-*@ %-*@: %s%s%s\n", a3, (4 - a2), "", 36, v23, 20, v22, 20, v21, v18, v19, v20);
  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }
}

CFTypeRef manager_introspector_copyMatchingEndpoint(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v30 = 0;
  v31 = 0;
  v5 = manager_copyEndpoints(a1, 0);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(v6);
      if (Count < 1)
      {
        v19 = 0;
        v23 = 0;
        v20 = 0;
      }

      else
      {
        v9 = Count;
        v10 = 0;
        v26 = *MEMORY[0x277CC1368];
        v28 = *MEMORY[0x277CBECE8];
        v25 = *MEMORY[0x277CC1450];
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, v10);
          v12 = APSGetFBOPropertyInt64();
          v13 = IsAnUGLWrapperEndpoint(ValueAtIndex);
          CMBaseObject = FigEndpointGetCMBaseObject();
          v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v15)
          {
            v15(CMBaseObject, v26, v28, &v31);
          }

          v16 = v12 != 0;
          if (FigCFEqual() && v16 == a3 && v13 == a4)
          {
            if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APEndpointManager, "FigEndpointRef manager_introspector_copyMatchingEndpoint(FigEndpointManagerRef, CFStringRef, Boolean, Boolean)", 33554482, "<APEndpointManagerIntrospector> [%{ptr}] found matching endpoint [%{ptr}] for ID %@", a1, ValueAtIndex, v31);
            }

            goto LABEL_52;
          }

          v17 = FigEndpointGetCMBaseObject();
          v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v18)
          {
            v18(v17, v25, v28, &v30);
          }

          if (FigCFEqual() && v16 == a3 && v13 == a4)
          {
            if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APEndpointManager, "FigEndpointRef manager_introspector_copyMatchingEndpoint(FigEndpointManagerRef, CFStringRef, Boolean, Boolean)", 33554482, "<APEndpointManagerIntrospector> [%{ptr}] found matching endpoint [%{ptr}] for name %@", a1, ValueAtIndex, v30);
            }

LABEL_52:
            v23 = CFRetain(ValueAtIndex);
            v20 = 0;
            goto LABEL_53;
          }

          v19 = CFStringCreateF(0, "%{ptr}", ValueAtIndex);
          if (FigCFEqual())
          {
            break;
          }

          v20 = CFStringCreateF(0, "%p", ValueAtIndex);
          if (FigCFEqual())
          {
            if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APEndpointManager, "FigEndpointRef manager_introspector_copyMatchingEndpoint(FigEndpointManagerRef, CFStringRef, Boolean, Boolean)", 33554482, "<APEndpointManagerIntrospector> [%{ptr}] found matching endpoint [%{ptr}] for pointer %@", a1, ValueAtIndex, v20);
            }

            v23 = CFRetain(ValueAtIndex);
            if (v6)
            {
              goto LABEL_57;
            }

            goto LABEL_58;
          }

          if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
          {
            v21 = "no";
            if (v12)
            {
              v22 = "yes";
            }

            else
            {
              v22 = "no";
            }

            if (v13)
            {
              v21 = "yes";
            }

            LogPrintF(&gLogCategory_APEndpointManager, "FigEndpointRef manager_introspector_copyMatchingEndpoint(FigEndpointManagerRef, CFStringRef, Boolean, Boolean)", 33554482, "<APEndpointManagerIntrospector> [%{ptr}] didn't match endpoint [%{ptr}] for ID %@, name %@, hash %@, remote %s, wrapper %s", a1, ValueAtIndex, v31, v30, v19, v22, v21);
          }

          if (v31)
          {
            CFRelease(v31);
            v31 = 0;
          }

          if (v30)
          {
            CFRelease(v30);
            v30 = 0;
          }

          if (v19)
          {
            CFRelease(v19);
          }

          if (v20)
          {
            CFRelease(v20);
          }

          if (v9 == ++v10)
          {
            goto LABEL_35;
          }
        }

        if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointManager, "FigEndpointRef manager_introspector_copyMatchingEndpoint(FigEndpointManagerRef, CFStringRef, Boolean, Boolean)", 33554482, "<APEndpointManagerIntrospector> [%{ptr}] found matching endpoint [%{ptr}] for hash %@", a1, ValueAtIndex, v19);
        }

        v23 = CFRetain(ValueAtIndex);
        v20 = 0;
        if (!v6)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_57;
    }
  }

  manager_introspector_copyMatchingEndpoint_cold_1();
LABEL_35:
  v20 = 0;
  v23 = 0;
LABEL_53:
  v19 = 0;
  if (v6)
  {
LABEL_57:
    CFRelease(v6);
  }

LABEL_58:
  if (v31)
  {
    CFRelease(v31);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v23;
}

uint64_t manager_introspector_printRWUsage(uint64_t a1)
{
  FPrintF(a1, "  -r|w is used when endpoint is specified with name or ID:\n");
  FPrintF(a1, "     including -r means it must be the remote-control endpoint\n");
  FPrintF(a1, "     including -w means it must be an UGL wrapper endpoint\n");

  return FPrintF(a1, "     omitting -r|w means it must be the non-remote-control, non-wrapper endpoint\n");
}

uint64_t AirPlayDebugIPCEnableForEndpointManager(const void *a1, uint64_t a2)
{
  if (!a1 || (v3 = CFGetTypeID(a1), v3 != FigEndpointManagerGetTypeID()))
  {
    AirPlayDebugIPCEnableForEndpointManager_cold_7(&v6);
    return v6;
  }

  if (!IsAppleInternalBuild())
  {
    if (gLogCategory_AirPlayDebugIPCUtilities > 40)
    {
      return 0;
    }

    if (gLogCategory_AirPlayDebugIPCUtilities != -1 || (result = _LogCategory_Initialize(), result))
    {
      AirPlayDebugIPCEnableForEndpointManager_cold_6();
      return 0;
    }

    return result;
  }

  if (AirPlayDebugIPCEnableForEndpointManager_initOnce != -1)
  {
    AirPlayDebugIPCEnableForEndpointManager_cold_1();
  }

  if (!_MergedGlobals_4)
  {
    AirPlayDebugIPCEnableForEndpointManager_cold_5(&v6);
    return v6;
  }

  if (!qword_280FB1A60)
  {
    AirPlayDebugIPCEnableForEndpointManager_cold_4(&v6);
    return v6;
  }

  Count = CFArrayGetCount(_MergedGlobals_4);
  v7.location = 0;
  v7.length = Count;
  if (CFArrayContainsValue(_MergedGlobals_4, v7, a1))
  {
    AirPlayDebugIPCEnableForEndpointManager_cold_2(&v6);
    return v6;
  }

  CFArrayAppendValue(_MergedGlobals_4, a1);
  FigCFDictionarySetValue();
  if (Count > 0)
  {
    return 0;
  }

  DebugIPC_EnsureInitialized();
  if (gLogCategory_AirPlayDebugIPCUtilities > 30)
  {
    return 0;
  }

  if (gLogCategory_AirPlayDebugIPCUtilities != -1 || (result = _LogCategory_Initialize(), result))
  {
    AirPlayDebugIPCEnableForEndpointManager_cold_3();
    return 0;
  }

  return result;
}

CFMutableDictionaryRef __AirPlayDebugIPCEnableForEndpointManager_block_invoke()
{
  _MergedGlobals_4 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  result = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  qword_280FB1A60 = result;
  return result;
}

CFTypeRef AirPlayDebugIPCDisableForEndpointManager(const void *a1)
{
  cf = 0;
  if (!a1 || (v2 = CFGetTypeID(a1), v2 != FigEndpointManagerGetTypeID()))
  {
    AirPlayDebugIPCDisableForEndpointManager_cold_5(&v11);
    return v11;
  }

  if (!_MergedGlobals_4)
  {
    AirPlayDebugIPCDisableForEndpointManager_cold_4(&v11);
    return v11;
  }

  if (!qword_280FB1A60)
  {
    AirPlayDebugIPCDisableForEndpointManager_cold_3(&v11);
    return v11;
  }

  Count = CFArrayGetCount(_MergedGlobals_4);
  v12.location = 0;
  v12.length = Count;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(_MergedGlobals_4, v12, a1);
  if (FirstIndexOfValue == -1)
  {
    AirPlayDebugIPCDisableForEndpointManager_cold_2(&v11);
    return v11;
  }

  v5 = FirstIndexOfValue;
  ValueAtIndex = CFArrayGetValueAtIndex(_MergedGlobals_4, FirstIndexOfValue);
  CFDictionaryRemoveValue(qword_280FB1A60, ValueAtIndex);
  CFArrayRemoveValueAtIndex(_MergedGlobals_4, v5);
  if (Count <= 1)
  {
    DebugIPC_EnsureFinalized();
    if (gLogCategory_AirPlayDebugIPCUtilities <= 30 && (gLogCategory_AirPlayDebugIPCUtilities != -1 || _LogCategory_Initialize()))
    {
      AirPlayDebugIPCDisableForEndpointManager_cold_1();
    }
  }

  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v8(CMBaseObject, *MEMORY[0x277CC0C50], *MEMORY[0x277CBECE8], &cf);
    result = cf;
    if (!cf)
    {
      return result;
    }

    CFRelease(cf);
  }

  return 0;
}

uint64_t airPlayDebugIPC_copyEndpointWithID(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  cf1 = 0;
  theArray = 0;
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    v15 = 4294954514;
LABEL_15:
    APSLogErrorAt();
    goto LABEL_21;
  }

  v7 = *MEMORY[0x277CBECE8];
  v8 = v6(CMBaseObject, *MEMORY[0x277CC0C30], *MEMORY[0x277CBECE8], &theArray);
  if (v8)
  {
    v15 = v8;
    goto LABEL_15;
  }

  if (!theArray)
  {
    v15 = 0;
LABEL_20:
    *a3 = 0;
    goto LABEL_21;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    v10 = 0;
    v15 = 0;
  }

  else
  {
    v10 = 0;
    v11 = *MEMORY[0x277CC1368];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
      v13 = FigEndpointGetCMBaseObject();
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      v15 = v14 ? v14(v13, v11, v7, &cf1) : 4294954514;
      if (CFEqual(cf1, a2))
      {
        break;
      }

      if (cf1)
      {
        CFRelease(cf1);
        cf1 = 0;
      }

      if (Count == ++v10)
      {
        goto LABEL_20;
      }
    }

    *a3 = CFRetain(ValueAtIndex);
  }

  if (v10 == Count)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  return v15;
}

uint64_t airPlayDebugIPC_createEndpointActivationDictionary(CFMutableDictionaryRef *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v3 = Mutable;
    result = 0;
    *a1 = v3;
  }

  else
  {
    airPlayDebugIPC_createEndpointActivationDictionary_cold_1(&v5);
    return v5;
  }

  return result;
}

void airPlayDebugIPC_overrideEndpointManagerEnabled(const void *a1, int a2)
{
  cf2 = 0;
  if (_MergedGlobals_4)
  {
    Count = CFArrayGetCount(_MergedGlobals_4);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      v7 = *MEMORY[0x277CC0C50];
      v8 = *MEMORY[0x277CBECE8];
      while (1)
      {
        CFArrayGetValueAtIndex(_MergedGlobals_4, v6);
        CMBaseObject = FigEndpointManagerGetCMBaseObject();
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v10)
        {
          v11 = 4294954514;
LABEL_20:
          airPlayDebugIPC_overrideEndpointManagerEnabled_cold_1(v11);
          return;
        }

        v11 = v10(CMBaseObject, v7, v8, &cf2);
        if (v11)
        {
          goto LABEL_20;
        }

        if (CFEqual(a1, cf2))
        {
          break;
        }

        if (cf2)
        {
          CFRelease(cf2);
          cf2 = 0;
        }

        if (v5 == ++v6)
        {
          return;
        }
      }

      if (a2)
      {
        v12 = MEMORY[0x277CBED28];
      }

      else
      {
        v12 = MEMORY[0x277CBED10];
      }

      v13 = FigEndpointManagerGetCMBaseObject();
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v14)
      {
        v14(v13, @"OverrideEndpointManagerEnabled", *v12);
      }

      if (cf2)
      {
        CFRelease(cf2);
      }
    }
  }
}

uint64_t airPlayDebugIPC_showStats(const void *a1, const __CFString *a2)
{
  theArray = 0;
  cf2 = 0;
  cf = 0;
  if (_MergedGlobals_4)
  {
    Count = CFArrayGetCount(_MergedGlobals_4);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      v7 = *MEMORY[0x277CC0C50];
      v8 = *MEMORY[0x277CBECE8];
      while (1)
      {
        CFArrayGetValueAtIndex(_MergedGlobals_4, v6);
        CMBaseObject = FigEndpointManagerGetCMBaseObject();
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v10)
        {
          break;
        }

        v11 = v10(CMBaseObject, v7, v8, &cf2);
        if (v11)
        {
          v12 = v11;
          goto LABEL_21;
        }

        if (CFEqual(a1, cf2))
        {
          v13 = FigEndpointManagerGetCMBaseObject();
          v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v14)
          {
            v15 = v14(v13, *MEMORY[0x277CC0C30], v8, &theArray);
            if (v15)
            {
              v12 = v15;
            }

            else
            {
              if (CFArrayGetCount(theArray) < 1)
              {
                goto LABEL_10;
              }

              CFArrayGetValueAtIndex(theArray, 0);
              v16 = FigEndpointGetCMBaseObject();
              v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v17)
              {
                v18 = v17(v16, @"Statistics", 0, &cf);
                if (!v18)
                {
                  Length = CFStringGetLength(a2);
                  v20 = malloc_type_malloc(Length + 1, 0xBBAD2306uLL);
                  if (CFStringGetCString(a2, v20, Length + 1, 0x8000100u))
                  {
                    v21 = CFPropertyListWriteToFilePath();
                    v12 = v21;
                    if (v21)
                    {
                      airPlayDebugIPC_showStats_cold_1(v21);
                    }
                  }

                  else
                  {
                    airPlayDebugIPC_showStats_cold_2();
                    v12 = 0;
                  }

                  goto LABEL_23;
                }

                v12 = v18;
              }

              else
              {
                v12 = 4294954514;
              }
            }
          }

          else
          {
            v12 = 4294954514;
          }

LABEL_21:
          APSLogErrorAt();
          goto LABEL_22;
        }

        if (cf2)
        {
          CFRelease(cf2);
          cf2 = 0;
        }

        if (v5 == ++v6)
        {
          goto LABEL_10;
        }
      }

      v12 = 4294954514;
      goto LABEL_21;
    }
  }

LABEL_10:
  v12 = 0;
LABEL_22:
  v20 = 0;
LABEL_23:
  if (cf2)
  {
    CFRelease(cf2);
    cf2 = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    free(v20);
  }

  return v12;
}

uint64_t APMessageRingGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_5 != -1)
  {
    APMessageRingGetTypeID_cold_1();
  }

  return qword_280FB1A70;
}

uint64_t ring_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APMessageRingCreate(uint64_t a1, size_t a2, __int16 a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (!a4)
  {
    APMessageRingCreate_cold_9();
    return 4294960591;
  }

  if (_MergedGlobals_5 != -1)
  {
    APMessageRingGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APMessageRingCreate_cold_8();
    return 4294960568;
  }

  v12 = Instance;
  *(Instance + 96) = 0;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 16) = 0u;
  v13 = FigSimpleMutexCreate();
  *(v12 + 16) = v13;
  if (!v13)
  {
    APMessageRingCreate_cold_7();
LABEL_28:
    v21 = 4294960568;
LABEL_29:
    CFRelease(v12);
    return v21;
  }

  *(v12 + 24) = a3;
  *(v12 + 26) = a3;
  v14 = malloc_type_calloc(a2, 8uLL, 0x2004093837F09uLL);
  *(v12 + 40) = v14;
  if (!v14)
  {
    APMessageRingCreate_cold_6();
    goto LABEL_28;
  }

  v15 = malloc_type_calloc(a2, 8uLL, 0x2004093837F09uLL);
  *(v12 + 48) = v15;
  if (!v15)
  {
    APMessageRingCreate_cold_5();
    goto LABEL_28;
  }

  v16 = malloc_type_calloc(a2, 4uLL, 0x100004052888210uLL);
  *(v12 + 56) = v16;
  if (!v16)
  {
    APMessageRingCreate_cold_4();
    goto LABEL_28;
  }

  v17 = malloc_type_calloc(a2, 0x18uLL, 0x1000040504FFAC1uLL);
  *(v12 + 72) = v17;
  if (!v17)
  {
    APMessageRingCreate_cold_3();
    goto LABEL_28;
  }

  *(v12 + 32) = a2;
  *(v12 + 96) = CFRetain(a4);
  if (a2)
  {
    v18 = 0;
    v19 = a2;
    while (1)
    {
      v20 = APTransportStreamSendBackingProviderAcquireBBuf();
      if (v20)
      {
        break;
      }

      v18 += 8;
      if (!--v19)
      {
        goto LABEL_14;
      }
    }

    v21 = v20;
    APMessageRingCreate_cold_2(v20);
    goto LABEL_29;
  }

LABEL_14:
  if (gLogCategory_APMessageRing <= 50 && (gLogCategory_APMessageRing != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APMessageRing, "OSStatus APMessageRingCreate(CFAllocatorRef, size_t, uint16_t, APTransportStreamSendBackingProviderRef, OSType, size_t, APMessageRingRef *)", 33554482, "APMessageRing %p created with capacity %d first seq number = %u\n", v12, a2, *(v12 + 26));
  }

  v21 = 0;
  *a7 = v12;
  return v21;
}

uint64_t APMessageRingGetUsedCount(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 26) - *(a1 + 24);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t APMessageRingGetNextFreeBacking(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 32);
  v3 = *(a1 + 26);
  if (v2 == (v3 - *(a1 + 24)))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(*(a1 + 48) + 8 * (v3 % v2));
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t APMessageRingGetNextEnqueueSequenceNumber(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 26);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t APMessageRingEnqueueMessageForSending(uint64_t a1, OpaqueCMBlockBuffer *a2, __int128 *a3)
{
  v4 = *a3;
  v5 = *(a3 + 2);
  return APMessageRingEnqueueMessageForSendingWithPayloadCount(a1, a2, &v4, 1);
}

uint64_t APMessageRingEnqueueMessageForSendingWithPayloadCount(uint64_t a1, OpaqueCMBlockBuffer *a2, __int128 *a3, int a4)
{
  v19 = 0;
  dataPointerOut = 0;
  FigSimpleMutexLock();
  if (*(a1 + 32) == (*(a1 + 26) - *(a1 + 24)))
  {
    APMessageRingEnqueueMessageForSendingWithPayloadCount_cold_5();
    v17 = 4294960587;
    goto LABEL_15;
  }

  if (!a4)
  {
    APMessageRingEnqueueMessageForSendingWithPayloadCount_cold_4();
LABEL_21:
    v17 = 4294960591;
    goto LABEL_15;
  }

  if (-65536 * a4 >= 0x10000)
  {
    APMessageRingEnqueueMessageForSendingWithPayloadCount_cold_3();
    goto LABEL_21;
  }

  CMBlockBufferGetDataPointer(a2, 0, 0, 0, &dataPointerOut);
  v8 = 0;
  v9 = *(a1 + 32);
  v10 = *(a1 + 26);
  if (v9 != (v10 - *(a1 + 24)))
  {
    v8 = *(*(a1 + 48) + 8 * (v10 % v9));
  }

  CMBlockBufferGetDataPointer(v8, 0, 0, 0, &v19);
  if (dataPointerOut != v19)
  {
    APMessageRingEnqueueMessageForSendingWithPayloadCount_cold_1();
    goto LABEL_21;
  }

  APSTransportMessageSetAudioDataSequenceNumber();
  if (gLogCategory_APMessageRing <= 10 && (gLogCategory_APMessageRing != -1 || _LogCategory_Initialize()))
  {
    APMessageRingEnqueueMessageForSendingWithPayloadCount_cold_2((a1 + 26), a3);
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 26) % *(a1 + 32);
  v13 = *(v11 + 8 * v12);
  if (a2)
  {
    CFRetain(a2);
  }

  *(v11 + 8 * v12) = a2;
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 26) % *(a1 + 32);
  *(*(a1 + 56) + 4 * v14) = a4;
  v15 = *(a1 + 72) + 24 * v14;
  v16 = *a3;
  *(v15 + 16) = *(a3 + 2);
  *v15 = v16;
  APTransportStreamSendBackingProviderUpdateAcquiredBBuf();
  v17 = 0;
  ++*(a1 + 26);
LABEL_15:
  FigSimpleMutexUnlock();
  return v17;
}

uint64_t APMessageRingGetNextUnsentMessage(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 24);
  if (*(a1 + 26) == v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = v4 % *(a1 + 32);
    v5 = *(*(a1 + 40) + 8 * v6);
    if (a2)
    {
      v7 = *(a1 + 72) + 24 * v6;
      v8 = *v7;
      *(a2 + 16) = *(v7 + 16);
      *a2 = v8;
    }
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t APMessageRingMarkMessageAsSent(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 24);
  if (*(a1 + 26) == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(*(a1 + 40) + 8 * (v4 % *(a1 + 32)));
  }

  if (v5 == a2)
  {
    *(a1 + 24) = v4 + 1;
    v6 = *(a1 + 80);
    if (v6)
    {
      CFRelease(v6);
      v7 = 0;
      *(a1 + 80) = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    APMessageRingMarkMessageAsSent_cold_1();
    v7 = 4294960591;
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t APMessageRingSetMaxPacketRedundancy(uint64_t a1, int a2)
{
  FigSimpleMutexLock();
  *(a1 + 64) = a2;

  return FigSimpleMutexUnlock();
}

uint64_t APMessageRingGetMaxPacketRedundancy(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 64);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t APMessageRingSetTargetPayloadRedundancy(uint64_t a1, int a2)
{
  FigSimpleMutexLock();
  *(a1 + 68) = a2;

  return FigSimpleMutexUnlock();
}

uint64_t APMessageRingGetTargetPayloadRedundancy(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 68);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t APMessageRingCopyNextBurst(uint64_t a1, const __CFAllocator *a2, CFTypeRef *a3)
{
  FigSimpleMutexLock();
  if (*(a1 + 26) == *(a1 + 24))
  {
    v14 = 4294960546;
LABEL_15:
    APSLogErrorAt();
    FigSimpleMutexUnlock();
    return v14;
  }

  Mutable = CFArrayCreateMutable(a2, (*(a1 + 64) + 1), MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    v14 = 4294960568;
    goto LABEL_15;
  }

  v7 = Mutable;
  v8 = 0;
  v9 = 0;
  v10 = *(a1 + 24);
  do
  {
    if (v8 > *(a1 + 68))
    {
      break;
    }

    v11 = *(*(a1 + 40) + 8 * (v10 % *(a1 + 32)));
    if (!v11)
    {
      break;
    }

    if (APSTransportMessageGetAudioDataSequenceNumber())
    {
      break;
    }

    if (v10)
    {
      break;
    }

    CFArrayAppendValue(v7, v11);
    ++v9;
    v12 = *(*(a1 + 56) + 4 * (0uLL % *(a1 + 32)));
    v8 += v12;
    v10 = -v12;
  }

  while (v9 <= *(a1 + 64));
  APSCFArrayReverse();
  v13 = *(a1 + 80);
  *(a1 + 80) = v7;
  CFRetain(v7);
  if (v13)
  {
    CFRelease(v13);
  }

  *a3 = CFRetain(v7);
  FigSimpleMutexUnlock();
  CFRelease(v7);
  return 0;
}

uint64_t APMessageRingMarkBurstAsSent(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  if (!a2)
  {
    APMessageRingMarkBurstAsSent_cold_2();
    goto LABEL_11;
  }

  v4 = *(a1 + 80);
  if (v4 == a2)
  {
    goto LABEL_6;
  }

  if (!v4 || !CFEqual(a2, v4))
  {
    APMessageRingMarkBurstAsSent_cold_1();
LABEL_11:
    v5 = 4294960591;
    goto LABEL_9;
  }

  v4 = *(a1 + 80);
LABEL_6:
  ++*(a1 + 24);
  if (v4)
  {
    CFRelease(v4);
    v5 = 0;
    *(a1 + 80) = 0;
  }

  else
  {
    v5 = 0;
  }

LABEL_9:
  FigSimpleMutexUnlock();
  return v5;
}

uint64_t ring_Finalize(void *a1)
{
  if (gLogCategory_APMessageRing <= 50 && (gLogCategory_APMessageRing != -1 || _LogCategory_Initialize()))
  {
    ring_Finalize_cold_1(a1);
  }

  if (a1[4])
  {
    v2 = 0;
    do
    {
      v3 = *(a1[5] + 8 * v2);
      if (v3)
      {
        CFRelease(v3);
        *(a1[5] + 8 * v2) = 0;
      }

      APTransportStreamSendBackingProviderRelinquishBBuf();
      ++v2;
    }

    while (v2 < a1[4]);
  }

  v4 = a1[5];
  if (v4)
  {
    free(v4);
    a1[5] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    free(v5);
    a1[6] = 0;
  }

  v6 = a1[7];
  if (v6)
  {
    free(v6);
    a1[7] = 0;
  }

  v7 = a1[9];
  if (v7)
  {
    free(v7);
    a1[9] = 0;
  }

  v8 = a1[12];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[10];
  if (v9)
  {
    CFRelease(v9);
  }

  return FigSimpleMutexDestroy();
}

uint64_t SPEndpointManagerCreate(void *a1)
{
  if (SPEndpointManagerGetShared_once != -1)
  {
    SPEndpointManagerCreate_cold_1();
  }

  v2 = SPEndpointManagerGetShared_sSPEndpointManager;
  if (SPEndpointManagerGetShared_sSPEndpointManager)
  {
    v2 = CFRetain(SPEndpointManagerGetShared_sSPEndpointManager);
  }

  *a1 = v2;
  return gCreationErr_1;
}

uint64_t SPEndpointManagerGetShared(uint64_t a1, uint64_t a2)
{
  if (SPEndpointManagerGetShared_once != -1)
  {
    SPEndpointManagerCreate_cold_1();
  }

  return SPEndpointManagerGetShared_sSPEndpointManager;
}

void __SPEndpointManagerGetShared_block_invoke()
{
  cf = 0;
  LogSetAppID();
  v0 = *MEMORY[0x277CBECE8];
  FigEndpointManagerGetClassID();
  v1 = CMDerivedObjectCreate();
  if (v1)
  {
    v27 = v1;
    __SPEndpointManagerGetShared_block_invoke_cold_1(v1);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v3 = dispatch_queue_create("com.apple.airplay.endpointManager.notification", 0);
    *(DerivedStorage + 8) = v3;
    if (v3)
    {
      v4 = FigSimpleMutexCreate();
      *(DerivedStorage + 24) = v4;
      if (v4)
      {
        *(DerivedStorage + 32) = 0;
        *(DerivedStorage + 34) = 0;
        Mutable = CFDictionaryCreateMutable(v0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        *(DerivedStorage + 48) = Mutable;
        if (Mutable)
        {
          v6 = CFSetCreateMutable(v0, 0, MEMORY[0x277CBF158]);
          *(DerivedStorage + 56) = v6;
          if (v6)
          {
            v7 = CFSetCreateMutable(v0, 0, MEMORY[0x277CBF158]);
            *(DerivedStorage + 64) = v7;
            if (v7)
            {
              v8 = MEMORY[0x277CC0898];
              *(DerivedStorage + 72) = *MEMORY[0x277CC0898];
              *(DerivedStorage + 88) = *(v8 + 16);
              *(DerivedStorage + 128) = APSSettingsGetIntWithDefault();
              *(DerivedStorage + 136) = APSSettingsGetIntWithDefault();
              *(DerivedStorage + 144) = APSSettingsGetIntWithDefault();
              v9 = CFDictionaryCreateMutable(v0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (v9)
              {
                v10 = v9;
                APSEventRecorderCreate();
                v11 = *(DerivedStorage + 160);
                if (v11)
                {
                  CFDictionarySetValue(v10, *MEMORY[0x277CE4CB0], v11);
                }

                v12 = *MEMORY[0x277CBED10];
                CFDictionarySetValue(v10, *MEMORY[0x277CE4CB8], *MEMORY[0x277CBED10]);
                CFDictionarySetValue(v10, *MEMORY[0x277CE4CC8], v12);
                CFDictionarySetValue(v10, *MEMORY[0x277CE4CC0], v12);
                CFDictionarySetValue(v10, *MEMORY[0x277CE4CE0], v12);
                v13 = *MEMORY[0x277CE4CD8];
                if (APSSettingsGetInt64())
                {
                  v14 = v12;
                }

                else
                {
                  v14 = *MEMORY[0x277CBED28];
                }

                CFDictionarySetValue(v10, v13, v14);
                v15 = APBrowserCreate();
                if (v15)
                {
                  v27 = v15;
                  __SPEndpointManagerGetShared_block_invoke_cold_2(v15);
                }

                else
                {
                  v16 = *(DerivedStorage + 152);
                  v17 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                  if (v17)
                  {
                    v18 = v17(v16, spmanager_browserEventHandler, cf);
                    if (!v18)
                    {
                      v19 = AirPlayDebugIPCEnableForEndpointManager(cf, *MEMORY[0x277CC0C88]);
                      if (v19)
                      {
                        v27 = v19;
                        __SPEndpointManagerGetShared_block_invoke_cold_3(v19);
                      }

                      else
                      {
                        *(DerivedStorage + 16) = -1;
                        v20 = CMBaseObjectGetDerivedStorage();
                        v21 = *(v20 + 8);
                        handler = MEMORY[0x277D85DD0];
                        v29 = 0x40000000;
                        v30 = __spmanager_registerForNotifications_block_invoke;
                        v31 = &__block_descriptor_tmp_225;
                        v32 = cf;
                        notify_register_dispatch("com.apple.airplay.prefsChanged", (v20 + 16), v21, &handler);
                        *(DerivedStorage + 112) = APSSettingsGetInt64() != 0;
                        v22 = SPHubbedDevicesProviderCreate((DerivedStorage + 104));
                        if (v22)
                        {
                          v27 = v22;
                          __SPEndpointManagerGetShared_block_invoke_cold_4(v22);
                        }

                        else
                        {
                          v23 = SPHubbedDevicesProviderAddListener(*(DerivedStorage + 104), cf, spmanager_handleHubbedDevicesChanged);
                          if (v23)
                          {
                            v27 = v23;
                            __SPEndpointManagerGetShared_block_invoke_cold_5(v23);
                          }

                          else
                          {
                            started = SPHubbedDevicesProviderStartAsync(*(DerivedStorage + 104));
                            if (started)
                            {
                              v27 = started;
                              __SPEndpointManagerGetShared_block_invoke_cold_6(started);
                            }

                            else
                            {
                              spmanager_handlePreferencesChanged(cf);
                              if (introspector_getCollectionOfSPEndpointManagers_once != -1)
                              {
                                __SPEndpointManagerGetShared_block_invoke_cold_7();
                              }

                              if (introspector_getCollectionOfSPEndpointManagers_coll)
                              {
                                v25 = *introspector_getCollectionOfSPEndpointManagers_coll;
                                handler = MEMORY[0x277D85DD0];
                                v29 = 0x40000000;
                                v30 = __spmanager_create_block_invoke;
                                v31 = &__block_descriptor_tmp_24;
                                v32 = introspector_getCollectionOfSPEndpointManagers_coll;
                                v33 = cf;
                                dispatch_sync(v25, &handler);
                              }

                              APSIntrospectorAddCommand();
                              APSIntrospectorAddCommand();
                              APSIntrospectorAddCommand();
                              APSIntrospectorAddCommand();
                              APSIntrospectorAddCommand();
                              APSIntrospectorAddCommand();
                              if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
                              {
                                __SPEndpointManagerGetShared_block_invoke_cold_8(&cf, DerivedStorage + 152, v26);
                              }

                              v27 = 0;
                              SPEndpointManagerGetShared_sSPEndpointManager = cf;
                              cf = 0;
                            }
                          }
                        }
                      }

                      goto LABEL_30;
                    }

                    v27 = v18;
                  }

                  else
                  {
                    v27 = -12782;
                  }

                  APSLogErrorAt();
                }

LABEL_30:
                CFRelease(v10);
                goto LABEL_31;
              }

              __SPEndpointManagerGetShared_block_invoke_cold_9();
            }

            else
            {
              __SPEndpointManagerGetShared_block_invoke_cold_10();
            }
          }

          else
          {
            __SPEndpointManagerGetShared_block_invoke_cold_11();
          }
        }

        else
        {
          __SPEndpointManagerGetShared_block_invoke_cold_12();
        }
      }

      else
      {
        __SPEndpointManagerGetShared_block_invoke_cold_13();
      }
    }

    else
    {
      __SPEndpointManagerGetShared_block_invoke_cold_14();
    }

    v27 = -16711;
  }

LABEL_31:
  if (cf)
  {
    CFRelease(cf);
  }

  gCreationErr_1 = v27;
}

void spmanager_browserEventHandler(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (gLogCategory_SPEndpointManager <= 30)
  {
    if (gLogCategory_SPEndpointManager != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      a1 = LogPrintF(&gLogCategory_SPEndpointManager, "void spmanager_browserEventHandler(APBrowserRef, APBrowserEventType, CFDictionaryRef, void *)", 33554462, "%###s: type %d, eventinfo=[%{ptr}]", "void spmanager_browserEventHandler(APBrowserRef, APBrowserEventType, CFDictionaryRef, void *)", a2, a3);
    }
  }

  if ((a2 - 3) >= 2)
  {
    if ((a2 - 7) >= 2)
    {
      if (a2 == 5)
      {
        if (a3)
        {
          v30 = APTransportDeviceCreate();
          if (v30)
          {
            spmanager_browserEventHandler_cold_1(v30);
          }

          else
          {
            CMBaseObjectGetDerivedStorage();
            FigSimpleMutexLock();
            if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
            {
              spmanager_browserEventHandler_cold_2(0);
            }

            DerivedStorage = CMBaseObjectGetDerivedStorage();
            if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
            {
              spmanager_browserEventHandler_cold_3(0);
            }

            spmanager_removeEndpointForTransportDeviceIfNeeded(a4, 0, *(DerivedStorage + 48), 1, 0);
            FigSimpleMutexUnlock();
          }
        }

        else
        {
          spmanager_browserEventHandler_cold_4(a1);
        }
      }

      else if (gLogCategory_SPEndpointManager <= 60 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
      {
        spmanager_browserEventHandler_cold_19(a2);
      }
    }

    return;
  }

  if (!a3)
  {
    spmanager_browserEventHandler_cold_18(a1);
    return;
  }

  v7 = *MEMORY[0x277CBECE8];
  v8 = APTransportDeviceCreate();
  if (v8)
  {
    spmanager_browserEventHandler_cold_5(v8);
    return;
  }

  v9 = CMBaseObjectGetDerivedStorage();
  v47 = 0;
  FigSimpleMutexLock();
  if (gLogCategory_SPEndpointManager <= 30 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPEndpointManager, "void spmanager_handleBrowserAddOrUpdateEvent(FigEndpointManagerRef, APTransportDeviceRef)", 33554462, "%###s, td=%{ptr}; mode = %d", "void spmanager_handleBrowserAddOrUpdateEvent(FigEndpointManagerRef, APTransportDeviceRef)", 0, *(v9 + 34));
  }

  if (!*(v9 + 34))
  {
    goto LABEL_85;
  }

  if (!APSSettingsGetInt64() || (v10 = IsAppleInternalBuild(), !v10))
  {
    v13 = SPEndpointDescriptionCreateWithTransportDevice(v7, 0, &v47);
    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_47:
    spmanager_browserEventHandler_cold_7(v13);
    goto LABEL_85;
  }

  if (gLogCategory_SPEndpointManager <= 50)
  {
    if (gLogCategory_SPEndpointManager != -1 || (v10 = _LogCategory_Initialize(), v10))
    {
      spmanager_browserEventHandler_cold_6(v10, v11, v12);
    }
  }

  v13 = APEndpointDescriptionAirPlayCreateWithTransportDevice(v7, 0, 0, &v47);
  if (v13)
  {
    goto LABEL_47;
  }

LABEL_22:
  v14 = v47;
  CMBaseObjectGetDerivedStorage();
  if (!spmanager_deviceIsAllowlisted(a4, v14))
  {
    if (gLogCategory_SPEndpointManager <= 30 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
    {
      spmanager_browserEventHandler_cold_17(a4);
    }

    goto LABEL_85;
  }

  IsSelf = APTransportDeviceIsSelf();
  IsPresentOnInfra = APTransportDeviceIsPresentOnInfra();
  if (!IsSelf)
  {
    v17 = IsPresentOnInfra;
    v18 = v47;
    v19 = CMBaseObjectGetDerivedStorage();
    if (!v17)
    {
      v22 = *(v19 + 48);
      v23 = CFDictionaryGetValue(v22, 0);
      if (v23)
      {
        v24 = v23;
        if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_SPEndpointManager, "void spmanager_handleEndpointEvent(FigEndpointManagerRef, APTransportDeviceRef, APEndpointDescriptionRef, Boolean)", 33554482, "[%{ptr}] <SidePlayDiscovery> Removing endpoint [%{ptr}] b/c device no longer meets conditions", a4, v24);
        }

        if (!APSGetFBOPropertyInt64())
        {
          spmanager_removeEndpointForTransportDevice(a4, v22, 0);
        }
      }

      goto LABEL_85;
    }

    v20 = CMBaseObjectGetDerivedStorage();
    cf = 0;
    v21 = *(v20 + 48);
    if (gLogCategory_SPEndpointManager <= 30 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
    {
      spmanager_browserEventHandler_cold_8(0);
    }

    if (CFSetContainsValue(*(v20 + 56), 0))
    {
      if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
      {
        spmanager_browserEventHandler_cold_9(0);
      }

      CFSetRemoveValue(*(v20 + 56), 0);
    }

    if (CFDictionaryContainsKey(v21, 0))
    {
      if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
      {
        spmanager_browserEventHandler_cold_10(0);
      }

      goto LABEL_78;
    }

    v25 = CMBaseObjectGetDerivedStorage();
    if (APTransportDeviceGetAdvertiserInfo())
    {
      v26 = APAdvertiserInfoCopyProperty();
      if (v26)
      {
        v27 = v26;
        v28 = CFSetContainsValue(*(v25 + 96), v26) == 0;
LABEL_55:
        if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
        {
          v29 = 116;
          if (v28)
          {
            v29 = 102;
          }

          LogPrintF(&gLogCategory_SPEndpointManager, "Boolean spmanager_IsDeviceInHubbedList(FigEndpointManagerRef, APTransportDeviceRef)", 33554482, "isInHubbedList = %c for ID '%@'", v29, v27);
        }

        if (v27)
        {
          CFRelease(v27);
        }

        if (v28)
        {
          goto LABEL_78;
        }

        Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v33 = Mutable;
        if (!Mutable)
        {
          spmanager_browserEventHandler_cold_15();
          v32 = 4294950585;
          goto LABEL_79;
        }

        v35 = *(v20 + 160);
        if (v35)
        {
          CFDictionarySetValue(Mutable, @"EventRecorder", v35);
        }

        v36 = SPEndpointCreateWithEndpointDescription(v7, v18, v33, &cf);
        if (v36)
        {
          v32 = v36;
          spmanager_browserEventHandler_cold_13(v36);
          goto LABEL_79;
        }

        value = cf;
        CMBaseObjectGetDerivedStorage();
        if (APTransportDeviceGetAdvertiserInfo())
        {
          v37 = APAdvertiserInfoCopyProperty();
          if (!v37)
          {
            v37 = APAdvertiserInfoCopyProperty();
          }

          v38 = APAdvertiserInfoCopyProperty();
          v39 = CFStringCreateWithFormat(v7, 0, @"%@ ('%@')", v37, v38);
          if (v37)
          {
            CFRelease(v37);
          }

          if (v38)
          {
            CFRelease(v38);
          }

          v40 = v39;
        }

        else
        {
          spmanager_browserEventHandler_cold_14(v7, &v49);
          v40 = v49;
        }

        if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
        {
          DiscoveryID = APTransportDeviceGetDiscoveryID();
          LogPrintF(&gLogCategory_SPEndpointManager, "void spmanager_addEndpoint(FigEndpointManagerRef, APTransportDeviceRef, FigEndpointRef, CFMutableDictionaryRef)", 33554482, "[%{ptr}] <SidePlayDiscovery> Adding endpoint [%{ptr}] for transport device [%@] %@", a4, value, DiscoveryID, v40);
        }

        CFDictionarySetValue(v21, 0, value);
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        if (!APSGetFBOPropertyInt64())
        {
          spmanager_activationAttemptsClearIfExpired(a4);
          v42 = CMBaseObjectGetDerivedStorage();
          v49 = 0;
          CMBaseObject = FigEndpointGetCMBaseObject();
          v44 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v44)
          {
            v44(CMBaseObject, *MEMORY[0x277CC1368], v7, &v49);
            if (v49)
            {
              v45 = CFSetContainsValue(*(v42 + 64), v49);
              if (v49)
              {
                CFRelease(v49);
              }

              if (v45)
              {
                if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&gLogCategory_SPEndpointManager, "void spmanager_addEndpoint(FigEndpointManagerRef, APTransportDeviceRef, FigEndpointRef, CFMutableDictionaryRef)", 33554482, "[%{ptr}] <SidePlayActivation> Skipping activation of [%{ptr}] b/c it's in recently attempted device IDs", a4, value);
                }

                spmanager_checkHubbedDevices(a4, 0);
                if (!v40)
                {
                  goto LABEL_116;
                }

                goto LABEL_115;
              }
            }
          }

          spmanager_activateEndpoint(a4, value);
        }

        if (!v40)
        {
LABEL_116:
          v32 = 0;
          goto LABEL_79;
        }

LABEL_115:
        CFRelease(v40);
        goto LABEL_116;
      }

      if (gLogCategory_SPEndpointManager <= 90)
      {
        if (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize())
        {
          spmanager_browserEventHandler_cold_11(0);
        }

LABEL_131:
        v27 = 0;
        v28 = 1;
        goto LABEL_55;
      }
    }

    else if (gLogCategory_SPEndpointManager <= 90)
    {
      if (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize())
      {
        spmanager_browserEventHandler_cold_12(0);
      }

      goto LABEL_131;
    }

LABEL_78:
    v32 = 0;
    v33 = 0;
LABEL_79:
    if (cf)
    {
      CFRelease(cf);
    }

    if (v33)
    {
      CFRelease(v33);
    }

    if (v32)
    {
      spmanager_browserEventHandler_cold_16(v32);
    }
  }

LABEL_85:
  FigSimpleMutexUnlock();
  if (v47)
  {
    CFRelease(v47);
  }
}

void spmanager_handleHubbedDevicesChanged(uint64_t a1, void *a2)
{
  if (gLogCategory_SPEndpointManager <= 40 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    spmanager_handleHubbedDevicesChanged_cold_1(a2);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigSimpleMutexLock();
  SPHubbedDevicesProviderGetCMBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6 && !v6(v5, @"HubbedDevices", *MEMORY[0x277CBECE8], &cf) && !FigCFEqual())
  {
    if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
    {
      spmanager_handleHubbedDevicesChanged_cold_2(&cf, v7, v8);
    }

    v9 = *(DerivedStorage + 96);
    v10 = cf;
    *(DerivedStorage + 96) = cf;
    if (v10)
    {
      CFRetain(v10);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (*(DerivedStorage + 96))
    {
      spmanager_checkHubbedDevices(a2, 1);
    }
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }
}

void spmanager_handlePreferencesChanged(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  APSSettingsSynchronize();
  FigSimpleMutexLock();
  v3 = APSSettingsCopyValue();
  if (FigCFEqual())
  {
    goto LABEL_2;
  }

  if (gLogCategory_SPEndpointManager <= 40 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    spmanager_handlePreferencesChanged_cold_1(v3);
  }

  v4 = *(DerivedStorage + 40);
  *(DerivedStorage + 40) = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (!*(DerivedStorage + 40))
  {
    goto LABEL_2;
  }

  v5 = FigCFDictionaryCopyArrayOfValues();
  cf = 0;
  Count = CFArrayGetCount(v5);
  if (Count < 1)
  {
LABEL_22:
    if (!v5)
    {
      goto LABEL_2;
    }

    goto LABEL_23;
  }

  v7 = Count;
  v8 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
    CMBaseObject = FigEndpointGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v11)
    {
      break;
    }

    v12 = v11(CMBaseObject, @"EndpointDescription", 0, &cf);
    if (v12)
    {
      goto LABEL_25;
    }

    if (!spmanager_deviceIsAllowlisted(a1, cf))
    {
      spmanager_removeEndpointIfNeeded(a1, ValueAtIndex, 1, 0);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v7 == ++v8)
    {
      goto LABEL_22;
    }
  }

  v12 = 4294954514;
LABEL_25:
  spmanager_handlePreferencesChanged_cold_2(v12, &cf);
  if (v5)
  {
LABEL_23:
    CFRelease(v5);
  }

LABEL_2:
  FigSimpleMutexUnlock();
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t spmanager_introspector_setDiscoveryMode(const void *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (!a1 || a3 < 2)
  {
    return FPrintF(a2, "Usage: %s <1|0>\n", *a4);
  }

  v5 = *(a4 + 8);
  v6 = 102;
  if (*v5 == 49)
  {
    v7 = v5[1] == 0;
    if (v5[1])
    {
      v6 = 102;
    }

    else
    {
      v6 = 116;
    }
  }

  else
  {
    v7 = 0;
  }

  FPrintF(a2, "Setting SPEndpointManager discoveryNeeded: %c\n", v6);

  return spmanager_setDiscoveryNeeded(a1, v7, 0, 0);
}

void spmanager_introspector_activateEndpoint(uint64_t a1, uint64_t a2, int a3, const char **a4)
{
  if (!a1 || a3 < 2)
  {
LABEL_15:
    FPrintF(a2, "Usage: %s <name|ID> [features] [TODO:options]\n", *a4);
    return;
  }

  v8 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a4[1], 0x8000100u);
  if (a3 == 2 || (v9 = a4[2], (v10 = atol(v9)) == 0))
  {
    v11 = 10;
  }

  else
  {
    v11 = v10;
    if (gLogCategory_SPEndpointManager > 50)
    {
      goto LABEL_9;
    }

    if (gLogCategory_SPEndpointManager != -1)
    {
      goto LABEL_7;
    }

    if (_LogCategory_Initialize())
    {
      v9 = a4[2];
LABEL_7:
      LogPrintF(&gLogCategory_SPEndpointManager, "void spmanager_introspector_activateEndpoint(const void *, FILE *, int, char **)", 33554482, "<SidePlayIntrospector> Setting features = 0x%x from %s", v11, v9);
    }
  }

LABEL_9:
  v12 = spmanager_introspector_copyMatchingEndpoint(a1, v8);
  if (!v12)
  {
    FPrintF(a2, "Couldn't find a matching endpoint for: %@\n", v8);
    if (v8)
    {
      CFRelease(v8);
    }

    goto LABEL_15;
  }

  v13 = v12;
  v14 = malloc_type_calloc(1uLL, 8uLL, 0x10000404A09149AuLL);
  *v14 = 1;
  v15 = (spmanager_introspector_getNextIndex_sIndex + 1);
  spmanager_introspector_getNextIndex_sIndex = v15;
  v14[1] = v15;
  FPrintF(a2, "Found matching endpoint [%{ptr}] for: %@. Activating with features 0x%x, index %d\n", v13, v8, v11, v15);
  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPEndpointManager, "void spmanager_introspector_activateEndpoint(const void *, FILE *, int, char **)", 33554482, "<SidePlayIntrospector> Found matching endpoint [%{ptr}] for: %@. Activating with features 0x%x, index %d", v13, v8, v11, v14[1]);
  }

  v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v16)
  {
    v17 = v16(v13, v11, 0, spmanager_introspector_activateEndpointCallback, v14);
  }

  else
  {
    v17 = 4294954514;
  }

  FPrintF(a2, "Immediate result = %#m\n", v17);
  if (v8)
  {
    CFRelease(v8);
  }

  CFRelease(v13);
}

void spmanager_introspector_deactivateEndpoint(uint64_t a1, uint64_t a2, int a3, const char **a4)
{
  keys[1] = *MEMORY[0x277D85DE8];
  if (!a1 || a3 < 2)
  {
LABEL_9:
    FPrintF(a2, "Usage: %s <name|ID>\n", *a4);
    return;
  }

  v7 = *MEMORY[0x277CBECE8];
  v8 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a4[1], 0x8000100u);
  v9 = spmanager_introspector_copyMatchingEndpoint(a1, v8);
  if (!v9)
  {
    FPrintF(a2, "Couldn't find a matching endpoint for: %@\n", v8);
    if (v8)
    {
      CFRelease(v8);
    }

    goto LABEL_9;
  }

  v10 = v9;
  v11 = malloc_type_calloc(1uLL, 8uLL, 0x10000404A09149AuLL);
  v12 = *MEMORY[0x277CC0B90];
  values = @"Introspector deactivation request";
  keys[0] = v12;
  *v11 = 0;
  v11[1] = ++spmanager_introspector_getNextIndex_sIndex;
  v13 = CFDictionaryCreate(v7, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  FPrintF(a2, "Found matching endpoint [%{ptr}] for: %@. Deactivating with index %d\n", v10, v8, v11[1]);
  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPEndpointManager, "void spmanager_introspector_deactivateEndpoint(const void *, FILE *, int, char **)", 33554482, "<SidePlayIntrospector> Found matching endpoint [%{ptr}] for: %@. Deactivating with index %d", v10, v8, v11[1]);
  }

  v14 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v14)
  {
    v15 = v14(v10, v13, spmanager_introspector_activateEndpointCallback, v11);
  }

  else
  {
    v15 = 4294954514;
  }

  FPrintF(a2, "Immediate result = %#m\n", v15);
  if (v8)
  {
    CFRelease(v8);
  }

  CFRelease(v10);
  if (v13)
  {
    CFRelease(v13);
  }
}

void spmanager_introspector_listEndpoints(uint64_t result, uint64_t a2)
{
  if (result)
  {
    introspector_listEndpoints(result, a2);
  }
}

uint64_t spmanager_introspector_toggleListenForAvailable(uint64_t a1, uint64_t a2)
{
  v3 = spmanager_introspector_toggleListenForAvailable_listening;
  spmanager_introspector_toggleListenForAvailable_listening = spmanager_introspector_toggleListenForAvailable_listening == 0;
  CMNotificationCenterGetDefaultLocalCenter();
  v4 = *MEMORY[0x277CC0C20];
  if (v3)
  {
    CMNotificationCenterRemoveListener();
    return FPrintF(a2, "Removed listener to %@ for %@\n", v4, @"spmanager_introspector_toggleListenForAvailable");
  }

  else
  {
    CMNotificationCenterAddListener();
    return FPrintF(a2, "Added listener to %@ for %@\n", v4, @"spmanager_introspector_toggleListenForAvailable");
  }
}

void spmanager_introspector_homeHubInfo(uint64_t a1, uint64_t a2)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  SPHubbedDevicesProviderGetCMBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(v5, @"HubbedDevices", *MEMORY[0x277CBECE8], &cf);
  }

  IsAirplayd = FigServer_IsAirplayd();
  v8 = "yes";
  if (!IsAirplayd)
  {
    v8 = "no";
  }

  FPrintF(a2, "inAirplayd: %s\n", v8);
  FPrintF(a2, "storage->hubbedDevicesProvider: %@\n", *(DerivedStorage + 104));
  FPrintF(a2, "storage->state.hubbedDeviceIDs: %@\n", *(DerivedStorage + 96));
  FPrintF(a2, "kSPHubbedDevicesProviderProperty_HubbedDevices: %@\n", cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t spmanager_Invalidate(void *a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 1))
  {
    v2 = dispatch_queue_create("com.apple.airplay.spendpointManager.invalidatequeue", 0);
    dispatch_sync_f(v2, a1, spmanager_invalidateInternal);
    if (v2)
    {
      dispatch_release(v2);
    }
  }

  return 0;
}

void spmanager_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1) && gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    spmanager_Finalize_cold_1(a1, v2, v3);
  }

  if (*DerivedStorage)
  {
    if (introspector_getCollectionOfSPEndpointManagers_once != -1)
    {
      spmanager_Finalize_cold_2();
    }

    if (introspector_getCollectionOfSPEndpointManagers_coll)
    {
      v5 = *introspector_getCollectionOfSPEndpointManagers_coll;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 0x40000000;
      v15[2] = __spmanager_Finalize_block_invoke;
      v15[3] = &__block_descriptor_tmp_120;
      v15[4] = introspector_getCollectionOfSPEndpointManagers_coll;
      v15[5] = a1;
      dispatch_sync(v5, v15);
    }

    v6 = *(DerivedStorage + 8);
    if (v6)
    {
      dispatch_release(v6);
      *(DerivedStorage + 8) = 0;
    }

    FigSimpleMutexDestroy();
    v7 = *(DerivedStorage + 40);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 40) = 0;
    }

    v8 = *(DerivedStorage + 48);
    if (v8)
    {
      CFRelease(v8);
      *(DerivedStorage + 48) = 0;
    }

    v9 = *(DerivedStorage + 56);
    if (v9)
    {
      CFRelease(v9);
      *(DerivedStorage + 56) = 0;
    }

    v10 = *(DerivedStorage + 64);
    if (v10)
    {
      CFRelease(v10);
      *(DerivedStorage + 64) = 0;
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

    v13 = *(DerivedStorage + 160);
    if (v13)
    {
      CFRelease(v13);
      *(DerivedStorage + 160) = 0;
    }

    v14 = *(DerivedStorage + 152);
    if (v14)
    {
      CFRelease(v14);
      *(DerivedStorage + 152) = 0;
    }
  }

  else
  {
    if (gLogCategory_SPEndpointManager <= 100 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
    {
      spmanager_Finalize_cold_3(a1);
    }

    __break(1u);
  }
}

__CFString *spmanager_CopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  cf = 0;
  CFStringAppendFormat(Mutable, 0, @"<SPEndpointManager %p>", a1);
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v6 = v5(CMBaseObject, @"ShowInfo", v2, &cf);
    v7 = cf;
    if (!v6)
    {
      __s = 0;
      ASPrintF(&__s, "%@", cf);
      v8 = __s;
      v9 = strlen(__s);
      if (v9 && __s[v9 - 1] == 10)
      {
        __s[v9 - 1] = 0;
        v8 = __s;
      }

      CFStringAppendFormat(Mutable, 0, @"%s", v8);
      free(__s);
      v7 = cf;
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  return Mutable;
}

uint64_t spmanager_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpointManager <= 10 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPEndpointManager, "OSStatus spmanager_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554442, "[%{ptr}] %###s propertyKey: '%@'\n", a1, "OSStatus spmanager_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", a2);
  }

  if (*DerivedStorage)
  {
    spmanager_CopyProperty_cold_1();
    return 4294950584;
  }

  if (CFEqual(a2, *MEMORY[0x277CC0C50]))
  {
    v9 = 0;
    *a4 = CFRetain(*MEMORY[0x277CC0C88]);
    return v9;
  }

  if (!CFEqual(a2, *MEMORY[0x277CC0C60]))
  {
    FigSimpleMutexLock();
    CMBaseObjectGetDerivedStorage();
    if (CFEqual(a2, *MEMORY[0x277CC0C30]))
    {
      v9 = 0;
      *a4 = spmanager_copyAvailableEndpoints(a1, a3);
LABEL_13:
      FigSimpleMutexUnlock();
      return v9;
    }

    if (!CFEqual(a2, @"ShowInfo"))
    {
      if (gLogCategory_SPEndpointManager <= 30 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
      {
        spmanager_CopyProperty_cold_6(a2);
      }

      v9 = 4294954512;
      goto LABEL_13;
    }

    CMBaseObjectGetDerivedStorage();
    v57 = 0;
    value[0] = 0;
    memset(valuePtr, 0, sizeof(valuePtr));
    DataBuffer_Init();
    v12 = CMBaseObjectGetDerivedStorage();
    v59[0] = 0;
    Mutable = CFStringCreateMutable(a3, 0);
    if (!Mutable)
    {
      APSLogErrorAt();
      v30 = 0;
      v9 = 4294960568;
      goto LABEL_93;
    }

    v14 = Mutable;
    CMBaseObject = APBrowserGetCMBaseObject();
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v16)
    {
      v17 = v16(CMBaseObject, *MEMORY[0x277CE4D20], a3, v59);
      if (!v17)
      {
        v18 = CFDictionaryGetValue(v59[0], *MEMORY[0x277CE4D28]);
        CFStringAppendFormat(v14, 0, @"\n%@", v18);
        CFStringAppend(v14, @"\n");
        CFStringAppend(v14, @"+-+ SPEndpointManager state +-+\n");
        CFStringAppend(v14, @"\n");
        v19 = 116;
        if (!*(v12 + 32))
        {
          v19 = 102;
        }

        CFStringAppendFormat(v14, 0, @"DiscoveryNeeded: %c\n", v19);
        ModeString = APBrowserGetModeString();
        CFStringAppendFormat(v14, 0, @"DiscoveryMode: %s\n", ModeString);
        CFStringAppend(v14, @"\n");
        v21 = *(v12 + 40);
        if (v21 && (v22 = CFGetTypeID(v21), TypeID = CFArrayGetTypeID(), v21 = *(v12 + 40), v22 == TypeID))
        {
          Count = CFSetGetCount(v21);
          CFStringAppendFormat(v14, 0, @"AllowlistedDevices: (%ld)\n", Count);
          CFArrayGetCount(*(v12 + 40));
          value[6] = MEMORY[0x277D85DD0];
          value[7] = 0x40000000;
          value[8] = __spmanager_copyDescription_block_invoke;
          value[9] = &__block_descriptor_tmp_158;
          value[10] = v14;
          CFArrayApplyBlock();
        }

        else
        {
          CFStringAppendFormat(v14, 0, @"AllowlistedDevices: %@\n", v21);
        }

        CFStringAppend(v14, @"\n");
        v25 = *(v12 + 96);
        if (v25 && (v26 = CFGetTypeID(v25), v27 = CFSetGetTypeID(), v25 = *(v12 + 96), v26 == v27))
        {
          v28 = CFSetGetCount(v25);
          CFStringAppendFormat(v14, 0, @"HubbedDeviceIDs: (%ld)\n", v28);
          value[1] = MEMORY[0x277D85DD0];
          value[2] = 0x40000000;
          value[3] = __spmanager_copyDescription_block_invoke_2;
          value[4] = &__block_descriptor_tmp_165_0;
          value[5] = v14;
          CFSetApplyBlock();
        }

        else
        {
          CFStringAppendFormat(v14, 0, @"HubbedDeviceIDs: %@\n", v25);
        }

        v9 = 0;
        goto LABEL_36;
      }

      v9 = v17;
    }

    else
    {
      v9 = 4294954514;
    }

    APSLogErrorAt();
    CFRelease(v14);
    v14 = 0;
LABEL_36:
    if (v59[0])
    {
      CFRelease(v59[0]);
    }

    if (!v9)
    {
      theDict = CFDictionaryCreateMutable(a3, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (theDict)
      {
        v29 = CFStringCreateMutable(a3, 0);
        v30 = v14;
        CFStringAppend(v29, v14);
        v31 = *MEMORY[0x277CBECE8];
        v32 = spmanager_copyAvailableEndpoints(a1, *MEMORY[0x277CBECE8]);
        v33 = v32;
        if (v32)
        {
          v34 = CFArrayGetCount(v32);
          if (v34 >= 1)
          {
            v52 = v29;
            v53 = v30;
            v35 = 0;
            v36 = 0;
            v37 = 0;
            theArray = 0;
            v38 = 0;
            do
            {
              v39 = v33;
              CFArrayGetValueAtIndex(v33, v37);
              value[0] = 0;
              v40 = FigEndpointGetCMBaseObject();
              v41 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v41)
              {
                v41(v40, @"EndpointShowInfo", v31, value);
              }

              v42 = value[0];
              if (value[0])
              {
                v33 = v39;
                if (!v38)
                {
                  v38 = CFArrayCreateMutable(v31, v34, MEMORY[0x277CBF128]);
                  v42 = value[0];
                }

                CFArrayAppendValue(v38, v42);
                if (CFDictionaryGetInt64())
                {
                  v43 = theArray;
                  if (!theArray)
                  {
                    v43 = CFArrayCreateMutable(v31, v34, MEMORY[0x277CBF128]);
                  }

                  theArray = v43;
                  CFArrayAppendValue(v43, value[0]);
                  ++v35;
                }

                ++v36;
                if (value[0])
                {
                  CFRelease(value[0]);
                  value[0] = 0;
                }
              }

              else
              {
                v33 = v39;
              }

              ++v37;
            }

            while (v34 != v37);
            if (v35 == 1)
            {
              DataBuffer_AppendF(valuePtr, "\n%ld Activated Endpoint%s\n", 1, "");
              v29 = v52;
              v44 = theArray;
            }

            else
            {
              DataBuffer_AppendF(valuePtr, "\n%ld Activated Endpoint%s\n", v35, "s");
              v45 = theDict;
              v29 = v52;
              if (!v35)
              {
                v30 = v53;
LABEL_68:
                v47 = "";
                if (v34 != 1)
                {
                  v47 = "s";
                }

                DataBuffer_AppendF(valuePtr, "\n%d endpoint%s available\n", v34, v47);
                if (v38)
                {
                  v48 = v33;
                  if (v36 >= 1)
                  {
                    for (i = 0; i != v36; ++i)
                    {
                      value[0] = CFArrayGetValueAtIndex(v38, i);
                      spmanager_AppendEndpointShowInfo(value[0], 0, valuePtr);
                    }
                  }

                  CFDictionarySetValue(v45, @"EndpointShowInfos", v38);
                  CFRelease(v38);
                  v33 = v48;
                }

                v50 = DataBuffer_Append();
                if (v50)
                {
                  v9 = v50;
                  spmanager_CopyProperty_cold_3(v50);
                }

                else
                {
                  v51 = DataBuffer_Commit();
                  v9 = v51;
                  if (!v51)
                  {
                    CFStringAppendFormat(v29, 0, @"%s", 0);
                    CFDictionarySetValue(v45, @"DetailedDescription", v29);
                    goto LABEL_78;
                  }

                  spmanager_CopyProperty_cold_4(v51);
                }

                CFRelease(v45);
                v45 = 0;
LABEL_78:
                DataBuffer_Free();
                if (v33)
                {
                  CFRelease(v33);
                }

                if (v29)
                {
                  CFRelease(v29);
                }

                if (!v30)
                {
                  goto LABEL_84;
                }

LABEL_83:
                CFRelease(v30);
LABEL_84:
                if (theArray)
                {
                  CFRelease(theArray);
                }

                if (!v9)
                {
                  *a4 = v45;
                }

                goto LABEL_13;
              }

              v44 = theArray;
              if (v35 < 1)
              {
                goto LABEL_64;
              }
            }

            for (j = 0; j != v35; ++j)
            {
              value[0] = CFArrayGetValueAtIndex(v44, j);
              spmanager_AppendEndpointShowInfo(value[0], 1, valuePtr);
            }

LABEL_64:
            CFDictionarySetValue(theDict, @"ActivatedEndpointShowInfos", v44);
            v30 = v53;
            if (v44)
            {
              CFRelease(v44);
            }

            theArray = 0;
            v33 = v39;
            goto LABEL_67;
          }
        }

        else
        {
          v34 = 0;
        }

        DataBuffer_AppendF(valuePtr, "\n%ld Activated Endpoint%s\n", 0, "s");
        v38 = 0;
        v36 = 0;
        theArray = 0;
LABEL_67:
        v45 = theDict;
        goto LABEL_68;
      }

      v30 = v14;
      spmanager_CopyProperty_cold_5();
      v9 = 4294950585;
LABEL_95:
      DataBuffer_Free();
      v45 = 0;
      theArray = 0;
      if (!v30)
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    }

    v30 = v14;
LABEL_93:
    APSLogErrorAt();
    goto LABEL_95;
  }

  *&valuePtr[0] = 8;
  v10 = CFNumberCreate(a3, kCFNumberSInt64Type, valuePtr);
  *a4 = v10;
  if (v10)
  {
    return 0;
  }

  spmanager_CopyProperty_cold_2();
  return 4294950585;
}

uint64_t spmanager_SetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpointManager <= 10 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPEndpointManager, "OSStatus spmanager_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554442, "[%{ptr}] %###s propertyKey: %'@, propertyValue: %'@\n", a1, "OSStatus spmanager_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", a2, a3);
  }

  if (*DerivedStorage)
  {
    spmanager_SetProperty_cold_1();
    return 4294950584;
  }

  else if (CFEqual(a2, @"SPEndpointManagerProperty_HubbedDeviceIDs"))
  {
    SPHubbedDevicesProviderGetCMBaseObject();
    v8 = v7;
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v9)
    {

      return v9(v8, @"HubbedDevices", a3);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    if (gLogCategory_SPEndpointManager <= 30 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
    {
      spmanager_SetProperty_cold_2(a2);
    }

    return 4294954512;
  }
}

void spmanager_checkHubbedDevices(void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context = 0u;
  *theSet = 0u;
  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    spmanager_checkHubbedDevices_cold_1(a2, a1, v4);
  }

  if (*DerivedStorage)
  {
    spmanager_checkHubbedDevices_cold_2();
  }

  else
  {
    theSet[0] = 0;
    context = a1;
    theSet[1] = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
    if (!theSet[1])
    {
      spmanager_checkHubbedDevices_cold_4();
      v7 = 4294950585;
      goto LABEL_18;
    }

    spmanager_activationAttemptsClearIfExpired(a1);
    CFDictionaryApplyFunction(*(DerivedStorage + 48), checkEndpointHubbedState, &context);
    Count = CFSetGetCount(*(DerivedStorage + 96));
    if (CFSetGetCount(theSet[1]) >= 1)
    {
      if (gLogCategory_SPEndpointManager <= 40 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
      {
        spmanager_checkHubbedDevices_cold_3(&theSet[1]);
      }

      CFSetApplyFunction(theSet[1], removeNonHubbedEndpoint, a1);
    }

    if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SPEndpointManager, "OSStatus spmanager_checkHubbedDevices(FigEndpointManagerRef, Boolean)", 33554482, "[%{ptr}] <SidePlayMonitor> Found %ld discovered endpoints (%d activating, %d failed) vs. %ld hubbed devices", a1, *(&context + 1), *(DerivedStorage + 36), theSet[0], Count);
    }

    spmanager_setDiscoveryNeeded(a1, *(&context + 1) < Count, (theSet[0] + *(&context + 1)) == Count, a2);
    if (theSet[1])
    {
      CFRelease(theSet[1]);
    }
  }

  v7 = 0;
LABEL_18:
  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPEndpointManager, "OSStatus spmanager_checkHubbedDevices(FigEndpointManagerRef, Boolean)", 33554482, "[%{ptr}] <SidePlayMonitor> CheckHubbedDevices() done, result = %#m", a1, v7);
  }
}

__n128 spmanager_activationAttemptsClearIfExpired(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 84))
  {
    v4 = DerivedStorage;
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&lhs, HostTimeClock);
    v9 = *(v4 + 72);
    CMTimeSubtract(&time, &lhs, &v9);
    result.n128_f64[0] = CMTimeGetSeconds(&time);
    if (result.n128_f64[0] >= *(v4 + 144))
    {
      if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
      {
        spmanager_activationAttemptsClearIfExpired_cold_1(a1, v6, v7);
      }

      CFSetRemoveAllValues(*(v4 + 64));
      v8 = MEMORY[0x277CC0898];
      result = *MEMORY[0x277CC0898];
      *(v4 + 72) = *MEMORY[0x277CC0898];
      *(v4 + 88) = *(v8 + 16);
    }
  }

  return result;
}

void checkEndpointHubbedState(uint64_t a1, const void *a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    v8 = 4294954514;
    goto LABEL_29;
  }

  v8 = v7(CMBaseObject, *MEMORY[0x277CC1368], *MEMORY[0x277CBECE8], &value);
  if (v8)
  {
LABEL_29:
    checkEndpointHubbedState_cold_1(v8);
    goto LABEL_49;
  }

  v9 = CFSetContainsValue(*(DerivedStorage + 96), value);
  v10 = APSGetFBOPropertyInt64();
  if (gLogCategory_SPEndpointManager <= 30 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    v11 = 116;
    if (v10)
    {
      v12 = 116;
    }

    else
    {
      v12 = 102;
    }

    if (!v9)
    {
      v11 = 102;
    }

    LogPrintF(&gLogCategory_SPEndpointManager, "void checkEndpointHubbedState(const void *, const void *, void *)", 33554462, "%###s: endpoint [%{ptr}] '%@': hubbed = %c, in use = %c\n", "void checkEndpointHubbedState(const void *, const void *, void *)", a2, value, v11, v12);
  }

  if (v9)
  {
    if (v10)
    {
      if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SPEndpointManager, "void checkEndpointHubbedState(const void *, const void *, void *)", 33554482, "[%{ptr}] <SidePlayMonitor> CheckEndpointHubbedState: endpoint [%{ptr}] %@ in hubbed, in use => good\n", *a3, a2, value);
      }

      ++a3[1];
    }

    else if (CFSetContainsValue(*(DerivedStorage + 64), value))
    {
      if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SPEndpointManager, "void checkEndpointHubbedState(const void *, const void *, void *)", 33554482, "[%{ptr}] <SidePlayMonitor> CheckEndpointHubbedState: endpoint [%{ptr}] %@ in hubbed, attempted activation recently => skip\n", *a3, a2, value);
      }

      ++a3[2];
    }

    else
    {
      if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SPEndpointManager, "void checkEndpointHubbedState(const void *, const void *, void *)", 33554482, "[%{ptr}] <SidePlayMonitor> CheckEndpointHubbedState: endpoint [%{ptr}] %@ in hubbed, not in use => activate\n", *a3, a2, value);
      }

      v17 = *a3;
      ++a3[1];
      spmanager_activateEndpoint(v17, a2);
    }
  }

  else if (v10)
  {
    if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SPEndpointManager, "void checkEndpointHubbedState(const void *, const void *, void *)", 33554482, "[%{ptr}] <SidePlayMonitor> CheckEndpointHubbedState: endpoint [%{ptr}] %@ not in hubbed, in use => deactivate; removing from recentlyAttemptedIDs\n", *a3, a2, value);
    }

    v13 = *a3;
    v14 = value;
    v15 = CMBaseObjectGetDerivedStorage();
    CFSetRemoveValue(*(v15 + 64), v14);
    if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SPEndpointManager, "void spmanager_activationAttemptsRemoveEndpointID(FigEndpointManagerRef, CFStringRef)", 33554482, "[%{ptr}] <SidePlayActivation> Removed device ID %@ from list of recently activated", v13, v14);
    }

    if (!CFSetGetCount(*(v15 + 64)))
    {
      v16 = MEMORY[0x277CC0898];
      *(v15 + 72) = *MEMORY[0x277CC0898];
      *(v15 + 88) = *(v16 + 16);
    }

    spmanager_deactivateEndpoint(*a3, a2, @"NoLongerHubbed");
  }

  else
  {
    if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SPEndpointManager, "void checkEndpointHubbedState(const void *, const void *, void *)", 33554482, "[%{ptr}] <SidePlayMonitor> CheckEndpointHubbedState: endpoint [%{ptr}] %@ not in hubbed, not in use => remove\n", *a3, a2, value);
    }

    CFSetAddValue(a3[3], a2);
  }

LABEL_49:
  if (value)
  {
    CFRelease(value);
  }
}

uint64_t removeNonHubbedEndpoint(uint64_t a1, void *a2)
{
  v6 = 0;
  result = spmanager_removeEndpointIfNeeded(a2, a1, 1, &v6);
  if (gLogCategory_SPEndpointManager <= 50)
  {
    v4 = result;
    if (gLogCategory_SPEndpointManager != -1 || (result = _LogCategory_Initialize(), result))
    {
      v5 = 116;
      if (!v6)
      {
        v5 = 102;
      }

      return LogPrintF(&gLogCategory_SPEndpointManager, "void removeNonHubbedEndpoint(const void *, void *)", 33554482, "removeNonHubbedEndpoint([%{ptr}]) returns %#m; wasRemoved = %c", a1, v4, v5);
    }
  }

  return result;
}

uint64_t spmanager_setDiscoveryNeeded(const void *a1, int a2, _BOOL4 a3, int a4)
{
  result = CMBaseObjectGetDerivedStorage();
  v9 = result;
  if (!a2)
  {
    v10 = *(result + 36) > 0;
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = 1;
  if (a3)
  {
LABEL_3:
    a3 = *(result + 36) == 0;
  }

LABEL_4:
  v11 = *(result + 32);
  if (v11 != v10 || (a4 ? (v12 = v10) : (v12 = 0), (v10 & a3 & 1) != 0 || v12))
  {
    if (gLogCategory_SPEndpointManager <= 50)
    {
      if (gLogCategory_SPEndpointManager != -1)
      {
LABEL_17:
        if (a4)
        {
          v14 = 116;
        }

        else
        {
          v14 = 102;
        }

        v18 = v14;
        if (a3)
        {
          v15 = 116;
        }

        else
        {
          v15 = 102;
        }

        if (v10)
        {
          v16 = 116;
        }

        else
        {
          v16 = 102;
        }

        if (v11)
        {
          v17 = 116;
        }

        else
        {
          v17 = 102;
        }

        LogPrintF(&gLogCategory_SPEndpointManager, "void spmanager_setDiscoveryNeeded(FigEndpointManagerRef, Boolean, Boolean, Boolean)", 33554482, "[%{ptr}] <SidePlayMonitor> discoveryNeeded changed: %c -> %c (should stop: %c, kick timer: %c)\n", a1, v17, v16, v15, v18);
        goto LABEL_33;
      }

      if (_LogCategory_Initialize())
      {
        v11 = *(v9 + 32);
        goto LABEL_17;
      }
    }

LABEL_33:
    *(v9 + 32) = v10;
    CFRetain(a1);
    return APSDispatchAsyncFHelper();
  }

  if (gLogCategory_SPEndpointManager > 50)
  {
    return result;
  }

  if (gLogCategory_SPEndpointManager == -1)
  {
    result = _LogCategory_Initialize();
    if (!result)
    {
      return result;
    }

    v10 = *(v9 + 32);
  }

  v13 = 116;
  if (!v10)
  {
    v13 = 102;
  }

  return LogPrintF(&gLogCategory_SPEndpointManager, "void spmanager_setDiscoveryNeeded(FigEndpointManagerRef, Boolean, Boolean, Boolean)", 33554482, "[%{ptr}] <SidePlayMonitor> discoveryNeeded unchanged: %c (%d activating)\n", a1, v13, *(v9 + 36));
}

void spmanager_activateEndpoint(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    spmanager_activateEndpoint_cold_2();
    return;
  }

  v6 = Mutable;
  CFDictionarySetValue(Mutable, @"SupportsMultipleStreams", *MEMORY[0x277CBED28]);
  v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405F07FB98uLL);
  *v7 = CFRetain(a1);
  v7[8] = 1;
  v8 = (*(DerivedStorage + 36) + 1);
  *(DerivedStorage + 36) = v8;
  if (gLogCategory_SPEndpointManager <= 50)
  {
    if (gLogCategory_SPEndpointManager != -1)
    {
LABEL_4:
      LogPrintF(&gLogCategory_SPEndpointManager, "OSStatus spmanager_activateEndpoint(FigEndpointManagerRef, FigEndpointRef)", 33554482, "[%{ptr}] <SidePlayActivation> Endpoint [%{ptr}]: activation started (%d in progress)", a1, a2, v8);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v8 = *(DerivedStorage + 36);
      goto LABEL_4;
    }
  }

LABEL_6:
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v9)
  {
    v10 = 4294954514;
    goto LABEL_12;
  }

  v10 = v9(a2, 8, v6, spmanager_activateEndpointCallback, v7);
  if (v10)
  {
LABEL_12:
    spmanager_activateEndpoint_cold_1(v10);
  }

  CFRelease(v6);
}

void spmanager_deactivateEndpoint(const void *a1, uint64_t a2, const void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405F07FB98uLL);
  *v6 = CFRetain(a1);
  v6[8] = 0;
  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPEndpointManager, "OSStatus spmanager_deactivateEndpoint(FigEndpointManagerRef, FigEndpointRef, CFStringRef)", 33554482, "[%{ptr}] <SidePlayActivation> Endpoint [%{ptr}]: deactivation started", a1, a2);
  }

  if (a3)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v8 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CC0B90], a3);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v9)
  {
    v10 = 4294954514;
LABEL_16:
    spmanager_deactivateEndpoint_cold_1(v10);
    if (!v8)
    {
      return;
    }

    goto LABEL_12;
  }

  v10 = v9(a2, v8, spmanager_activateEndpointCallback, v6);
  if (v10)
  {
    goto LABEL_16;
  }

  if (!v8)
  {
    return;
  }

LABEL_12:

  CFRelease(v8);
}

void spmanager_activateEndpointCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    if (*(a5 + 8))
    {
      v10 = "activation";
    }

    else
    {
      v10 = "deactivation";
    }

    LogPrintF(&gLogCategory_SPEndpointManager, "void spmanager_activateEndpointCallback(FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, void *)", 33554482, "[%{ptr}] <SidePlayActivation> Endpoint [%{ptr}]: %s complete (seed %llu), result = %#m", *a5, a1, v10, a3, a4);
  }

  if (!a4)
  {
    v11 = CMBaseObjectGetDerivedStorage();
    if (gLogCategory_SPEndpointManager <= 40 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
    {
      spmanager_activateEndpointCallback_cold_1();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (*(v11 + 112))
    {
      dispatch_async(*(v11 + 8), &__block_literal_global_87);
    }
  }

  FigSimpleMutexLock();
  if (*(a5 + 8))
  {
    --*(DerivedStorage + 36);
    CMBaseObject = FigEndpointGetCMBaseObject();
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13 && (v13(CMBaseObject, *MEMORY[0x277CC1368], *MEMORY[0x277CBECE8], &cf), (v14 = cf) != 0))
    {
      v15 = *a5;
      v16 = CMBaseObjectGetDerivedStorage();
      if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SPEndpointManager, "void spmanager_activationAttemptsAddEndpointID(FigEndpointManagerRef, CFStringRef)", 33554482, "[%{ptr}] <SidePlayActivation> Adding %@ to list of recently attempted device IDs", v15, v14);
      }

      CFSetAddValue(*(v16 + 64), v14);
      if ((*(v16 + 84) & 1) == 0)
      {
        if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
        {
          spmanager_activateEndpointCallback_cold_2(v15, v17, v18);
        }

        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(&v22, HostTimeClock);
        *(v16 + 72) = v22;
      }
    }

    else if (gLogCategory_SPEndpointManager <= 90 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SPEndpointManager, "void spmanager_activateEndpointCallback(FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, void *)", 33554522, "[%{ptr}] Error - couldn't get device ID for SPEndpoint [%{ptr}]", *a5, a1);
    }
  }

  if (a4 || !*(a5 + 8))
  {
    spmanager_removeEndpointIfNeeded(*a5, a1, 0, 0);
    v20 = *(a5 + 8) == 0;
  }

  else
  {
    v20 = 0;
  }

  spmanager_checkHubbedDevices(*a5, v20);
  FigSimpleMutexUnlock();
  if (*a5)
  {
    CFRelease(*a5);
  }

  free(a5);
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t spmanager_removeEndpointIfNeeded(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v10 = v9(CMBaseObject, @"TransportDevice", *MEMORY[0x277CBECE8], &cf);
  }

  else
  {
    v10 = 4294954514;
  }

  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    spmanager_removeEndpointIfNeeded_cold_1(&cf, a3, a1);
  }

  if (v10)
  {
    spmanager_removeEndpointIfNeeded_cold_2(v10);
  }

  else
  {
    spmanager_removeEndpointForTransportDeviceIfNeeded(a1, cf, *(DerivedStorage + 48), a3, a4);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

void __spmanager_notifyAvailableEndpointsChanged_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"TestOnly_ActiveSidePlayEndpointsChanged", 0, 0, 1u);
}

void spmanager_handleEndpointFailed(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = APSGetFBOPropertyInt64();
  if (gLogCategory_SPEndpointManager > 50)
  {
    goto LABEL_10;
  }

  if (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize())
  {
    v9 = "deactivating";
    if (!v8)
    {
      v9 = "already deactivated";
    }

    LogPrintF(&gLogCategory_SPEndpointManager, "void spmanager_handleEndpointFailed(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] <SidePlayActivation> Endpoint [%{ptr}]: failed; %s", a2, a4, v9);
  }

  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    spmanager_handleEndpointFailed_cold_1(a5, v10, v11);
    if (!v8)
    {
      return;
    }
  }

  else
  {
LABEL_10:
    if (!v8)
    {
      return;
    }
  }

  spmanager_deactivateEndpoint(a2, a4, @"ConnectionFailed");
}

uint64_t spmanager_handleEndpointDissociated(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpointManager <= 50)
  {
    if (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_SPEndpointManager, "void spmanager_handleEndpointDissociated(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] <SidePlayActivation> Endpoint [%{ptr}]: dissociated", a2, a4);
    }

    if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
    {
      spmanager_handleEndpointDissociated_cold_1(a5, v8, v9);
    }
  }

  FigSimpleMutexLock();
  spmanager_removeEndpointIfNeeded(a2, a4, 0, 0);

  return FigSimpleMutexUnlock();
}

void spmanager_deferredHandleDiscoveryStateChanged(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    spmanager_deferredHandleDiscoveryStateChanged_cold_1(a1, DerivedStorage, v3);
  }

  if (*(a1 + 8))
  {
    if (*(a1 + 9))
    {
      if (*(DerivedStorage + 34))
      {
        v4 = *(DerivedStorage + 120);
        if (v4)
        {
          v5 = 0;
LABEL_22:
          v14 = dispatch_time(0, v5);
          dispatch_source_set_timer(v4, v14, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
          goto LABEL_23;
        }
      }
    }

    if (*(a1 + 10))
    {
      v4 = *(DerivedStorage + 120);
      if (v4)
      {
        if (*(DerivedStorage + 34))
        {
          v5 = 1000000000 * *(DerivedStorage + 128);
        }

        else
        {
          v5 = 0;
        }

        goto LABEL_22;
      }
    }

    v7 = *a1;
    v10 = CMBaseObjectGetDerivedStorage();
    if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
    {
      spmanager_deferredHandleDiscoveryStateChanged_cold_2(v7, v8, v9);
    }

    v11 = *(v10 + 120);
    if (v11)
    {
      dispatch_source_cancel(*(v10 + 120));
      dispatch_release(v11);
      *(v10 + 120) = 0;
    }

    *(v10 + 120) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v10 + 8));
    CFRetain(v7);
    dispatch_set_context(*(v10 + 120), v7);
    dispatch_source_set_event_handler_f(*(v10 + 120), spmanager_discoveryTimerFired);
    dispatch_source_set_cancel_handler_f(*(v10 + 120), spmanager_discoveryTimerCancelled);
    v12 = *(v10 + 120);
    v13 = dispatch_time(0, 0);
    dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_resume(*(v10 + 120));
  }

  else
  {
    v6 = *(DerivedStorage + 120);
    if (v6)
    {
      dispatch_source_cancel(*(DerivedStorage + 120));
      dispatch_release(v6);
      *(DerivedStorage + 120) = 0;
    }
  }

LABEL_23:
  FigSimpleMutexUnlock();
  v15 = *a1;

  CFRelease(v15);
}

uint64_t spmanager_discoveryTimerFired(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 34) && !*(DerivedStorage + 36))
  {
    v3 = 0;
    v4 = 102;
    v5 = 136;
  }

  else
  {
    v3 = 2;
    v4 = 116;
    v5 = 128;
  }

  v6 = *(DerivedStorage + v5);
  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPEndpointManager, "void spmanager_discoveryTimerFired(void *)", 33554482, "[%{ptr}] <SidePlayMonitor> Discovery monitoring timer fired; enableDiscovery = %c, delay %llu (%d activating)\n", a1, v4, v6, *(DerivedStorage + 36));
  }

  spmanager_setDiscoveryMode(a1, v3);
  v7 = *(DerivedStorage + 120);
  v8 = dispatch_time(0, 1000000000 * v6);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  return FigSimpleMutexUnlock();
}

void spmanager_discoveryTimerCancelled(void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    spmanager_discoveryTimerCancelled_cold_1(a1, v2, v3);
  }

  FigSimpleMutexLock();
  spmanager_setDiscoveryMode(a1, 0);
  FigSimpleMutexUnlock();

  CFRelease(a1);
}

uint64_t spmanager_setDiscoveryMode(void *a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v5 = result;
  if (gLogCategory_SPEndpointManager <= 50)
  {
    if (gLogCategory_SPEndpointManager != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = spmanager_setDiscoveryMode_cold_1(v5, a2);
    }
  }

  if (*(v5 + 34) != a2)
  {
    *(v5 + 34) = a2;
    if (!a2)
    {
      v6 = *(v5 + 48);
      CMBaseObjectGetDerivedStorage();
      if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
      {
        spmanager_setDiscoveryMode_cold_2(a1, v7, v8);
      }

      v9 = FigCFDictionaryCopyArrayOfKeys();
      if (v9)
      {
        v10 = v9;
        if (CFArrayGetCount(v9) >= 1)
        {
          spmanager_setDiscoveryMode_cold_3(v10, a1, v6);
        }

        CFRelease(v10);
      }
    }

    v11 = *(v5 + 152);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v12)
    {
      result = v12(v11, a2);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = 4294954514;
    }

    return spmanager_setDiscoveryMode_cold_4(result);
  }

  return result;
}

CFMutableArrayRef spmanager_copyAvailableEndpoints(uint64_t a1, const __CFAllocator *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x277CBF128]);
  if (*(DerivedStorage + 48))
  {
    CFDictionaryApplyBlock();
  }

  return Mutable;
}

void __spmanager_copyAvailableEndpoints_block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  if (APSGetFBOPropertyInt64())
  {
    v5 = *(a1 + 32);

    CFArrayAppendValue(v5, a3);
  }
}

uint64_t __introspector_getCollectionOfSPEndpointManagers_block_invoke(uint64_t a1)
{
  result = IsAppleInternalBuild();
  if (result)
  {
    introspector_getCollectionOfSPEndpointManagers_coll = malloc_type_calloc(1uLL, 0x18uLL, 0x70040EA3A3B56uLL);
    *introspector_getCollectionOfSPEndpointManagers_coll = dispatch_queue_create("CollectionOfSPEndpointManagers", 0);
    Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
    v3 = introspector_getCollectionOfSPEndpointManagers_coll;
    *(introspector_getCollectionOfSPEndpointManagers_coll + 8) = Mutable;
    *(v3 + 16) = "SPEndpointManagers";

    return APSIntrospectorAddCommand();
  }

  return result;
}

CFTypeRef spmanager_introspector_copyMatchingEndpoint(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  cf = 0;
  v3 = *MEMORY[0x277CBECE8];
  v4 = spmanager_copyAvailableEndpoints(a1, *MEMORY[0x277CBECE8]);
  if (v4)
  {
    v5 = v4;
    Count = CFArrayGetCount(v4);
    if (Count < 1)
    {
LABEL_19:
      v15 = 0;
    }

    else
    {
      v7 = Count;
      v8 = 0;
      v9 = *MEMORY[0x277CC1368];
      v17 = *MEMORY[0x277CC1450];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
        CMBaseObject = FigEndpointGetCMBaseObject();
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v12)
        {
          v12(CMBaseObject, v9, v3, &cf);
        }

        if (FigCFEqual())
        {
          break;
        }

        v13 = FigEndpointGetCMBaseObject();
        v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v14)
        {
          v14(v13, v17, v3, &v18);
        }

        if (FigCFEqual())
        {
          if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_SPEndpointManager, "FigEndpointRef spmanager_introspector_copyMatchingEndpoint(FigEndpointManagerRef, CFStringRef)", 33554482, "<SidePlayIntrospector> [%{ptr}] found matching endpoint [%{ptr}] for name %@", a1, ValueAtIndex, v18);
          }

          goto LABEL_30;
        }

        if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_SPEndpointManager, "FigEndpointRef spmanager_introspector_copyMatchingEndpoint(FigEndpointManagerRef, CFStringRef)", 33554482, "<SidePlayIntrospector> [%{ptr}] didn't match endpoint [%{ptr}] for ID %@ name %@", a1, ValueAtIndex, cf, v18);
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v18)
        {
          CFRelease(v18);
          v18 = 0;
        }

        if (v7 == ++v8)
        {
          goto LABEL_19;
        }
      }

      if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SPEndpointManager, "FigEndpointRef spmanager_introspector_copyMatchingEndpoint(FigEndpointManagerRef, CFStringRef)", 33554482, "<SidePlayIntrospector> [%{ptr}] found matching endpoint [%{ptr}] for ID %@", a1, ValueAtIndex, cf);
      }

LABEL_30:
      v15 = CFRetain(ValueAtIndex);
    }

    CFRelease(v5);
  }

  else
  {
    v15 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v15;
}

void spmanager_introspector_activateEndpointCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    v10 = "";
    if (!*a5)
    {
      v10 = "de";
    }

    LogPrintF(&gLogCategory_SPEndpointManager, "void spmanager_introspector_activateEndpointCallback(FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, void *)", 33554482, "# Introspector # Endpoint [%{ptr}] %sactivated for index %d. Features = 0x%x, seed = %lu, err = %#m", a1, v10, a5[1], a2, a3, a4);
  }

  else if (!a5)
  {
    return;
  }

  free(a5);
}

void introspector_listEndpoints(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  cf = 0;
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v5 = v4(CMBaseObject, *MEMORY[0x277CC0C30], *MEMORY[0x277CBECE8], &cf);
    if (cf)
    {
      v6 = CFGetTypeID(cf);
      if (v6 == CFArrayGetTypeID())
      {
        Count = CFArrayGetCount(cf);
        v10 = Count;
        if (a2)
        {
          FPrintF(a2, "Retrieved %lld endpoints:\n", Count);
        }

        else if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
        {
          introspector_listEndpoints_cold_1(v10, v8, v9);
        }

        if (v10 >= 1)
        {
          for (i = 0; i != v10; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(cf, i);
            __strlcpy_chk();
            APSGetFBOPropertyCString();
            __strlcpy_chk();
            APSGetFBOPropertyCString();
            v13 = APSGetFBOPropertyInt64();
            v14 = APSGetFBOPropertyInt64();
            v15 = v14;
            if (a2)
            {
              v16 = "";
              if (v13)
              {
                v17 = "";
              }

              else
              {
                v17 = "NOT ";
              }

              if (!v14)
              {
                v16 = "NOT ";
              }

              FPrintF(a2, "  [%{ptr}] %s (%s): %sin use, %sactivated\n", ValueAtIndex, v22, v21, v17, v16);
            }

            else if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
            {
              v18 = "";
              if (v13)
              {
                v19 = "";
              }

              else
              {
                v19 = "NOT ";
              }

              if (!v15)
              {
                v18 = "NOT ";
              }

              LogPrintF(&gLogCategory_SPEndpointManager, "void introspector_listEndpoints(FigEndpointManagerRef, FILE *)", 33554482, "<SidePlayIntrospector>   [%{ptr}] %s (%s): %sin use, %sactivated\n", ValueAtIndex, v22, v21, v19, v18);
            }
          }
        }

        goto LABEL_36;
      }
    }
  }

  else
  {
    v5 = 4294954514;
  }

  if (a2)
  {
    FPrintF(a2, "Retrieved endpoints (result %#m) - wrong type (not array). endpoints = %@\n", v5, cf);
  }

  else if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPEndpointManager, "void introspector_listEndpoints(FigEndpointManagerRef, FILE *)", 33554482, "<SidePlayIntrospector> Retrieved endpoints (result %#m) - wrong type (not array). endpoints = %@\n", v5, cf);
  }

LABEL_36:
  if (cf)
  {
    CFRelease(cf);
  }
}

void spmanager_introspector_handleAvailableEndpointNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (gLogCategory_SPEndpointManager <= 50 && (gLogCategory_SPEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SPEndpointManager, "void spmanager_introspector_handleAvailableEndpointNotification(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "<SidePlayIntrospector> %@: Got notification %@", a2, a3);
  }

  introspector_listEndpoints(a4, 0);
}

uint64_t APEndpointStreamScreenUDPCreate(uint64_t a1, const __CFDictionary *a2, CFTypeRef cf, const void *a4, const void *a5, const void *a6, const void *a7, int a8, CFTypeRef *a9)
{
  v122 = *MEMORY[0x277D85DE8];
  cfa = 0;
  v114 = 0;
  v111 = 0;
  v112 = 0;
  v110 = 0;
  if (!cf || (v15 = CFGetTypeID(cf), v15 != CFStringGetTypeID()))
  {
    APEndpointStreamScreenUDPCreate_cold_29(&v115);
    goto LABEL_51;
  }

  if (!a5 || (v16 = CFGetTypeID(a5), v16 != APEndpointDescriptionGetTypeID(v16, v17)))
  {
    APEndpointStreamScreenUDPCreate_cold_28(&v115);
    goto LABEL_51;
  }

  if (!a9)
  {
    APEndpointStreamScreenUDPCreate_cold_27(&v115);
    goto LABEL_51;
  }

  if (!a7)
  {
    APEndpointStreamScreenUDPCreate_cold_26(&v115);
    goto LABEL_51;
  }

  FigEndpointStreamGetClassID();
  v18 = CMDerivedObjectCreate();
  v115 = v18;
  if (v18)
  {
    APEndpointStreamScreenUDPCreate_cold_1(v18);
    goto LABEL_44;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 268) = 60;
  *(DerivedStorage + 258) = 256;
  *(DerivedStorage + 263) = 0;
  *(DerivedStorage + 260) = APSSettingsGetInt64() == 0;
  *(DerivedStorage + 113) = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 112) = FigGetCFPreferenceNumberWithDefault();
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 259) = CFPreferenceNumberWithDefault;
  if (gLogCategory_APEndpointStreamScreenUDP <= 40)
  {
    if (gLogCategory_APEndpointStreamScreenUDP == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_17;
      }

      v21 = *(DerivedStorage + 259);
    }

    else
    {
      v21 = CFPreferenceNumberWithDefault;
    }

    if (v21)
    {
      v22 = "yes";
    }

    else
    {
      v22 = "no";
    }

    LogPrintF(&gLogCategory_APEndpointStreamScreenUDP, "OSStatus APEndpointStreamScreenUDPCreate(CFAllocatorRef, CFDictionaryRef, CFStringRef, APSenderSessionRef, APEndpointDescriptionRef, APEndpointDisplayDescriptionRef, APSNetworkClockRef, dispatch_queue_t, FigEndpointStreamRef *)", 33554472, "HDR enabled: %s\n", v22);
  }

LABEL_17:
  v23 = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 260) = v23;
  if (gLogCategory_APEndpointStreamScreenUDP > 40)
  {
    goto LABEL_26;
  }

  if (gLogCategory_APEndpointStreamScreenUDP == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_26;
    }

    v24 = *(DerivedStorage + 260);
  }

  else
  {
    v24 = v23;
  }

  if (v24)
  {
    v25 = "yes";
  }

  else
  {
    v25 = "no";
  }

  LogPrintF(&gLogCategory_APEndpointStreamScreenUDP, "OSStatus APEndpointStreamScreenUDPCreate(CFAllocatorRef, CFDictionaryRef, CFStringRef, APSenderSessionRef, APEndpointDescriptionRef, APEndpointDisplayDescriptionRef, APSNetworkClockRef, dispatch_queue_t, FigEndpointStreamRef *)", 33554472, "DoVi enabled: %s\n", v25);
LABEL_26:
  v26 = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 272) = v26;
  if (gLogCategory_APEndpointStreamScreenUDP > 40)
  {
    goto LABEL_31;
  }

  if (gLogCategory_APEndpointStreamScreenUDP == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_31;
    }

    v26 = *(DerivedStorage + 272);
  }

  LogPrintF(&gLogCategory_APEndpointStreamScreenUDP, "OSStatus APEndpointStreamScreenUDPCreate(CFAllocatorRef, CFDictionaryRef, CFStringRef, APSenderSessionRef, APEndpointDescriptionRef, APEndpointDisplayDescriptionRef, APSNetworkClockRef, dispatch_queue_t, FigEndpointStreamRef *)", 33554472, "remote log level: %d\n", v26);
LABEL_31:
  v27 = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 276) = v27;
  if (gLogCategory_APEndpointStreamScreenUDP > 40)
  {
    goto LABEL_40;
  }

  if (gLogCategory_APEndpointStreamScreenUDP == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_40;
    }

    v28 = *(DerivedStorage + 276);
  }

  else
  {
    v28 = v27;
  }

  if (v28)
  {
    v29 = "yes";
  }

  else
  {
    v29 = "no";
  }

  LogPrintF(&gLogCategory_APEndpointStreamScreenUDP, "OSStatus APEndpointStreamScreenUDPCreate(CFAllocatorRef, CFDictionaryRef, CFStringRef, APSenderSessionRef, APEndpointDescriptionRef, APEndpointDisplayDescriptionRef, APSNetworkClockRef, dispatch_queue_t, FigEndpointStreamRef *)", 33554472, "remote should show HUD: %s\n", v29);
LABEL_40:
  SNPrintF(label, 64, "APEndpointStreamScreenUDP.%{ptr}", v114);
  *DerivedStorage = dispatch_queue_create(label, 0);
  *(DerivedStorage + 16) = os_transaction_create();
  SNPrintF(label, 64, "APEndpointStreamScreenUDP.%{ptr}.notification", v114);
  *(DerivedStorage + 64) = dispatch_queue_create(label, 0);
  SNPrintF(label, 64, "APEndpointStreamScreenUDP.%{ptr}.dataProcessing", v114);
  v30 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 128) = v30;
  if (!v30)
  {
    APEndpointStreamScreenUDPCreate_cold_25(&v115);
    v35 = -16761;
    goto LABEL_45;
  }

  *(DerivedStorage + 8) = CFRetain(cf);
  *(DerivedStorage + 72) = CFRetain(a5);
  APEndpointDescriptionGetCMBaseObject();
  v32 = v31;
  v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v33)
  {
    v34 = 4294954514;
    v115 = -12782;
LABEL_43:
    APEndpointStreamScreenUDPCreate_cold_24(v34);
    goto LABEL_44;
  }

  v36 = *MEMORY[0x277CBECE8];
  v34 = v33(v32, @"DisplayDescriptionArray", *MEMORY[0x277CBECE8], &cfa);
  v115 = v34;
  if (v34)
  {
    goto LABEL_43;
  }

  if (!cfa || CFArrayGetCount(cfa) <= 0)
  {
    APEndpointStreamScreenUDPCreate_cold_23();
    goto LABEL_51;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(cfa, 0);
  if (!ValueAtIndex)
  {
    APEndpointStreamScreenUDPCreate_cold_22(&v115);
    goto LABEL_44;
  }

  v39 = ValueAtIndex;
  if (a6)
  {
    *(DerivedStorage + 80) = CFRetain(a6);
    APEndpointDisplayDescriptionCopyProperty(v39, @"UUID", v36, &v112);
    if (!v112)
    {
      APEndpointStreamScreenUDPCreate_cold_2(&v115);
      goto LABEL_44;
    }

    APEndpointDisplayDescriptionCopyProperty(*(DerivedStorage + 80), @"UUID", v36, &v111);
    if (FigCFEqual())
    {
      v40 = 110;
    }

    else
    {
      v40 = 111;
    }
  }

  else
  {
    *(DerivedStorage + 80) = CFRetain(ValueAtIndex);
    v40 = 110;
  }

  *(DerivedStorage + 96) = v40;
  if (a4)
  {
    v41 = CFRetain(a4);
  }

  else
  {
    v41 = 0;
  }

  *(DerivedStorage + 48) = v41;
  *(DerivedStorage + 56) = CFRetain(a7);
  if (!a2)
  {
    v42 = CMBaseObjectGetDerivedStorage();
    v43 = 0;
    goto LABEL_90;
  }

  Value = CFDictionaryGetValue(a2, @"clientPID");
  v43 = Value;
  if (Value)
  {
    v45 = CFGetTypeID(Value);
    if (v45 != CFNumberGetTypeID())
    {
      APEndpointStreamScreenUDPCreate_cold_3();
      goto LABEL_51;
    }
  }

  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  if (gLogCategory_APEndpointStreamScreenUDP <= 50 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    APEndpointStreamScreenUDPCreate_cold_4(DerivedStorage + 257, v46, v47);
  }

  FigCFDictionaryGetBooleanIfPresent();
  if (*(DerivedStorage + 256) && CFGetInt64() <= 0)
  {
    APEndpointStreamScreenUDPCreate_cold_5();
    goto LABEL_51;
  }

  v48 = CFDictionaryGetValue(a2, @"ProtectionOptions");
  if (v48)
  {
    v50 = v48;
    v51 = CFGetTypeID(v48);
    if (v51 == CFDictionaryGetTypeID())
    {
      v49 = *(DerivedStorage + 216);
      *(DerivedStorage + 216) = v50;
      CFRetain(v50);
      goto LABEL_87;
    }

    APEndpointStreamScreenUDPCreate_cold_6();
LABEL_51:
    v35 = -16760;
    goto LABEL_45;
  }

  v49 = *(DerivedStorage + 216);
  *(DerivedStorage + 216) = 0;
LABEL_87:
  if (v49)
  {
    CFRelease(v49);
  }

  v42 = CMBaseObjectGetDerivedStorage();
  CFDictionaryGetValue(a2, @"EventRecorder");
LABEL_90:
  v52 = *(v42 + 280);
  if (v52)
  {
    CFRelease(v52);
    *(v42 + 280) = 0;
  }

  v53 = APSEventRecorderCreate();
  if (v53)
  {
    APEndpointStreamScreenUDPCreate_cold_7(v53, &v115);
    goto LABEL_44;
  }

  APSEventRecorderAddSignPostForEvent();
  v115 = 0;
  v54 = *(DerivedStorage + 80);
  dict[0] = 0;
  v118 = 0;
  v119 = 0;
  v117 = 0;
  v116 = 0;
  v55 = *(DerivedStorage + 192);
  if (v55)
  {
    CFRelease(v55);
    *(DerivedStorage + 192) = 0;
  }

  APEndpointDescriptionGetCMBaseObject();
  v57 = v56;
  v58 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v58)
  {
    v59 = v58(v57, @"Name", v36, DerivedStorage + 192);
    v120 = v59;
    if (v59)
    {
      goto LABEL_97;
    }

    v63 = *(DerivedStorage + 144);
    if (v63)
    {
      CFRelease(v63);
      *(DerivedStorage + 144) = 0;
    }

    v64 = APEndpointDisplayDescriptionCopyProperty(v54, @"EDID", v36, DerivedStorage + 144);
    v120 = v64;
    if (v64)
    {
      APEndpointStreamScreenUDPCreate_cold_8(v64);
      goto LABEL_98;
    }

    v66 = (DerivedStorage + 208);
    v65 = *(DerivedStorage + 208);
    if (v65)
    {
      CFRelease(v65);
      *v66 = 0;
    }

    v67 = *(DerivedStorage + 259);
    if (v67)
    {
      v68 = APEndpointDisplayDescriptionCopyProperty(v54, @"HDRInfo", v36, DerivedStorage + 208);
      v120 = v68;
      if (v68)
      {
        APEndpointStreamScreenUDPCreate_cold_9(v68);
        goto LABEL_98;
      }

      if (!*v66)
      {
        goto LABEL_111;
      }

      v69 = *MEMORY[0x277CD6540];
      v70 = CFDictionaryGetValue(*v66, *MEMORY[0x277CD6540]);
      if (!v70)
      {
        goto LABEL_111;
      }

      v71 = v70;
      v72 = *MEMORY[0x277CD6530];
      if (!CFEqual(v70, *MEMORY[0x277CD6530]))
      {
        if (!CFEqual(v71, *MEMORY[0x277CD6528]))
        {
LABEL_111:
          v67 = 0;
          goto LABEL_119;
        }

        if (!*(DerivedStorage + 260))
        {
          Mutable = CFDictionaryCreateMutable(v36, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          CFDictionarySetValue(Mutable, v69, v72);
          v74 = *v66;
          *v66 = Mutable;
          if (Mutable)
          {
            CFRetain(Mutable);
          }

          if (v74)
          {
            CFRelease(v74);
          }

          CFRelease(Mutable);
        }
      }

      v67 = APSHasHDRSenderSupport() != 0;
    }

LABEL_119:
    *(DerivedStorage + 258) = v67;
    v75 = APEndpointDisplayDescriptionCopyProperty(v54, @"PixelSizeMax", v36, dict);
    v120 = v75;
    if (v75)
    {
      APEndpointStreamScreenUDPCreate_cold_10(v75);
      goto LABEL_98;
    }

    CGSizeMakeWithDictionaryRepresentation(dict[0], (DerivedStorage + 152));
    v76 = APEndpointDisplayDescriptionCopyProperty(v54, @"PhysicalSize", v36, &v119);
    v120 = v76;
    if (v76)
    {
      APEndpointStreamScreenUDPCreate_cold_11(v76);
      goto LABEL_98;
    }

    CGSizeMakeWithDictionaryRepresentation(v119, (DerivedStorage + 168));
    APEndpointDescriptionGetCMBaseObject();
    v78 = CMBaseObjectCopyProperty(v77, @"receiverHDRCapability", v36, DerivedStorage + 184);
    v120 = v78;
    if (v78)
    {
      APEndpointStreamScreenUDPCreate_cold_12(v78);
      goto LABEL_98;
    }

    v79 = APSSettingsCopyValue();
    v62 = v79;
    if (!v120)
    {
      if (v79)
      {
        v80 = CFGetTypeID(v79);
        if (v80 == CFStringGetTypeID())
        {
          v81 = *(DerivedStorage + 184);
          *(DerivedStorage + 184) = v62;
          CFRetain(v62);
          if (v81)
          {
            CFRelease(v81);
          }

          if (gLogCategory_APEndpointStreamScreenUDP <= 50 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
          {
            APEndpointStreamScreenUDPCreate_cold_13(DerivedStorage + 184, v82, v83);
          }
        }
      }
    }

    v120 = 0;
    *(DerivedStorage + 264) = APSGetFBOPropertyInt64() != 0;
    if (v120)
    {
      APEndpointStreamScreenUDPCreate_cold_14(v120);
      goto LABEL_161;
    }

    v85 = (DerivedStorage + 200);
    v84 = *(DerivedStorage + 200);
    if (v84)
    {
      CFRelease(v84);
      *v85 = 0;
    }

    v86 = APEndpointDisplayDescriptionCopyProperty(v54, @"UUID", v36, DerivedStorage + 200);
    v120 = v86;
    if (v86)
    {
      APEndpointStreamScreenUDPCreate_cold_15(v86);
      goto LABEL_161;
    }

    v87 = *(DerivedStorage + 200);
    v88 = *MEMORY[0x277CC1980];
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    *(DerivedStorage + 88) = CFStringCreateWithFormat(v36, 0, @"%@-%@-%llx", v87, v88, UpTimeNanoseconds);
    APEndpointDisplayDescriptionCopyProperty(v54, @"MaxFPS", v36, &v118);
    if (v118)
    {
      *(DerivedStorage + 268) = CFGetInt64();
    }

    APEndpointDisplayDescriptionCopyProperty(v54, @"IsOverscanned", v36, &v117);
    v90 = *MEMORY[0x277CBED28];
    *(DerivedStorage + 261) = v117 == *MEMORY[0x277CBED28];
    APEndpointDisplayDescriptionCopyProperty(v54, @"SupportsRotation", v36, &v116);
    v91 = v116 == v90;
    *(DerivedStorage + 262) = v91;
    v92 = *(DerivedStorage + 152);
    v93 = *(DerivedStorage + 160);
    v94 = *(DerivedStorage + 268);
    *(DerivedStorage + 240) = v92 * v93 * v94;
    if (gLogCategory_APEndpointStreamScreenUDP <= 50)
    {
      if (gLogCategory_APEndpointStreamScreenUDP != -1)
      {
LABEL_141:
        if (*(DerivedStorage + 144))
        {
          v95 = "present";
        }

        else
        {
          v95 = "none";
        }

        v96 = "yes";
        if (*(DerivedStorage + 258))
        {
          v97 = "yes";
        }

        else
        {
          v97 = "no";
        }

        if (*(DerivedStorage + 261))
        {
          v98 = "yes";
        }

        else
        {
          v98 = "no";
        }

        if (v91)
        {
          v99 = "yes";
        }

        else
        {
          v99 = "no";
        }

        if (*(DerivedStorage + 264))
        {
          v100 = "yes";
        }

        else
        {
          v100 = "no";
        }

        if (!*(DerivedStorage + 263))
        {
          v96 = "no";
        }

        LogPrintF(&gLogCategory_APEndpointStreamScreenUDP, "OSStatus screenstreamudp_initDisplayInfo(StreamScreenUDPStorage *)", 33554482, "endpoint display info: name: %@, max size in pixels: %.1f x %.1f, physical size: %f x %f, UUID: %@, EDID: %s, HDR: %s, max FPS: %d, overscanned: %s, supports rotation: %s,\nsupports HDR Subframe: %s,\nsupports HDR Mirroring: %s\n", *(DerivedStorage + 192), *&v92, *&v93, *(DerivedStorage + 168), *(DerivedStorage + 176), *(DerivedStorage + 200), v95, v97, v94, v98, v99, v100, v96);
        goto LABEL_159;
      }

      if (_LogCategory_Initialize())
      {
        v92 = *(DerivedStorage + 152);
        v93 = *(DerivedStorage + 160);
        v94 = *(DerivedStorage + 268);
        v91 = *(DerivedStorage + 262);
        goto LABEL_141;
      }
    }

LABEL_159:
    if (!*v85)
    {
      APEndpointStreamScreenUDPCreate_cold_16();
    }

    goto LABEL_161;
  }

  v59 = 4294954514;
  v120 = -12782;
LABEL_97:
  APEndpointStreamScreenUDPCreate_cold_17(v59);
LABEL_98:
  v62 = 0;
LABEL_161:
  if (dict[0])
  {
    CFRelease(dict[0]);
  }

  if (v119)
  {
    CFRelease(v119);
  }

  if (v118)
  {
    CFRelease(v118);
  }

  if (v117)
  {
    CFRelease(v117);
  }

  if (v116)
  {
    CFRelease(v116);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  v115 = v120;
  if (v120)
  {
    APEndpointStreamScreenUDPCreate_cold_18(v120);
  }

  else
  {
    if (*(DerivedStorage + 257) && v110)
    {
      if (gLogCategory_APEndpointStreamScreenUDP <= 50 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
      {
        APEndpointStreamScreenUDPCreate_cold_19(&v114, v60, v61);
      }

      *(DerivedStorage + 248) = 1;
    }

    v101 = v114;
    v102 = [APEndpointStreamScreenAVCWrapper alloc];
    DisplayHDRMode = screenstreamudp_getDisplayHDRMode(DerivedStorage, v103);
    v105 = *(DerivedStorage + 248) == 1;
    v106 = *(DerivedStorage + 263) != 0;
    dict[0] = v101;
    dict[1] = screenstreamudp_handleResumed;
    dict[2] = screenstreamudp_handleSuspended;
    dict[3] = screenstreamudp_handleFailed;
    dict[4] = screenstreamudp_handleClearScreen;
    *(DerivedStorage + 40) = [(APEndpointStreamScreenAVCWrapper *)v102 initWithClientPID:v43 hdrMode:DisplayHDRMode presentationMode:v105 hdrMirroringSupported:v106 eventHandlers:dict error:&v115];
    if (v115)
    {
      APEndpointStreamScreenUDPCreate_cold_20(v115);
    }

    else
    {
      *(DerivedStorage + 25) = 1;
      if (gLogCategory_APEndpointStreamScreenUDP <= 50 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
      {
        APEndpointStreamScreenUDPCreate_cold_21(&v114, v107, v108);
      }

      *a9 = v114;
      v114 = 0;
    }
  }

LABEL_44:
  v35 = v115;
  if (!v115)
  {
    goto LABEL_53;
  }

LABEL_45:
  if (gLogCategory_APEndpointStreamScreenUDP > 90)
  {
    goto LABEL_53;
  }

  if (gLogCategory_APEndpointStreamScreenUDP != -1)
  {
    goto LABEL_47;
  }

  if (_LogCategory_Initialize())
  {
    v35 = v115;
LABEL_47:
    LogPrintF(&gLogCategory_APEndpointStreamScreenUDP, "OSStatus APEndpointStreamScreenUDPCreate(CFAllocatorRef, CFDictionaryRef, CFStringRef, APSenderSessionRef, APEndpointDescriptionRef, APEndpointDisplayDescriptionRef, APSNetworkClockRef, dispatch_queue_t, FigEndpointStreamRef *)", 33554522, "Failed to create and activate screen %d\n", v35);
  }

LABEL_53:
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v111)
  {
    CFRelease(v111);
  }

  if (v112)
  {
    CFRelease(v112);
  }

  if (v114)
  {
    CFRelease(v114);
  }

  return v115;
}

void screenstreamudp_handleSuspended(const void *a1, __int128 *a2, uint64_t a3)
{
  v3 = a3;
  CMBaseObjectGetDerivedStorage();
  screenstreamudp_setResumedAndNotifyObservers(a1, 0);
  v6 = *a2;
  v7 = *(a2 + 2);
  screenstreamudp_dispatchCallback(a1, &v6, v3);
}

void screenstreamudp_handleFailed(const void *a1, uint64_t a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();

  screenstreamudp_handleFatalError(a1, a2, a3);
}

void screenstreamudp_handleClearScreen(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24))
  {
    screenstreamudp_handleClearScreen_cold_1();
  }

  v5 = DerivedStorage;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v7 = Mutable;
    if (!*(v5 + 112) || !*(v5 + 120))
    {
LABEL_14:

      CFRelease(v7);
      return;
    }

    v8 = MEMORY[0x277CBED28];
    if (!a2)
    {
      v8 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(Mutable, @"isScreenCleared", *v8);
    v9 = APTransportStreamSendPlistMessageCreatingPlistReply();
    if (!v9)
    {
      if (gLogCategory_APEndpointStreamScreenUDP <= 40 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
      {
        v10 = "yes";
        if (!a2)
        {
          v10 = "no";
        }

        LogPrintF(&gLogCategory_APEndpointStreamScreenUDP, "void screenstreamudp_handleClearScreen(CFTypeRef, Boolean)", 33554472, "screen stream %{ptr}: Control channel isScreenCleared: %s\n", a1, v10);
      }

      goto LABEL_14;
    }

    v11 = v9;
    screenstreamudp_handleClearScreen_cold_2(v9, v7);
  }

  else
  {
    screenstreamudp_handleClearScreen_cold_3();
    v11 = 4294950535;
  }

  if (gLogCategory_APEndpointStreamScreenUDP <= 90 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamScreenUDP, "void screenstreamudp_handleClearScreen(CFTypeRef, Boolean)", 33554522, "screen stream %{ptr}: Clear screen handling failed with error: %d\n", a1, v11);
  }
}

uint64_t getAVCMediaStreamNegotiatorClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__0;
  v0 = getAVCMediaStreamNegotiatorClass_softClass;
  v7 = __Block_byref_object_dispose__0;
  v8 = getAVCMediaStreamNegotiatorClass_softClass;
  if (!getAVCMediaStreamNegotiatorClass_softClass)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getAVCMediaStreamNegotiatorClass_block_invoke;
    v2[3] = &unk_27849ACC8;
    v2[4] = &v3;
    __getAVCMediaStreamNegotiatorClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2220C1FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2220C2214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2220C28A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2220C31A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void screenstreamudp_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreenUDP <= 50 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    screenstreamudp_Finalize_cold_1(a1, v2, v3);
  }

  v5 = *(DerivedStorage + 144);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 144) = 0;
  }

  v6 = *(DerivedStorage + 192);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 192) = 0;
  }

  v7 = *(DerivedStorage + 200);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 200) = 0;
  }

  v8 = *(DerivedStorage + 184);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 184) = 0;
  }

  v9 = *(DerivedStorage + 208);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 208) = 0;
  }

  v10 = *(DerivedStorage + 216);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 216) = 0;
  }

  v11 = *(DerivedStorage + 232);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 232) = 0;
  }

  v12 = *MEMORY[0x277CBF3A8];
  *(DerivedStorage + 152) = *MEMORY[0x277CBF3A8];
  *(DerivedStorage + 168) = v12;
  v13 = *(DerivedStorage + 8);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 8) = 0;
  }

  v14 = *(DerivedStorage + 280);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 280) = 0;
  }

  v15 = *(DerivedStorage + 48);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 48) = 0;
  }

  v16 = *(DerivedStorage + 88);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 88) = 0;
  }

  v17 = *(DerivedStorage + 80);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 80) = 0;
  }

  v18 = *(DerivedStorage + 72);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 72) = 0;
  }

  v19 = *(DerivedStorage + 56);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 56) = 0;
  }

  v20 = *(DerivedStorage + 32);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 32) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v21 = *(DerivedStorage + 64);
  if (v21)
  {
    dispatch_release(v21);
    *(DerivedStorage + 64) = 0;
  }

  v22 = *(DerivedStorage + 128);
  if (v22)
  {
    dispatch_release(v22);
    *(DerivedStorage + 128) = 0;
  }

  v23 = *(DerivedStorage + 16);
  if (v23)
  {

    *(DerivedStorage + 16) = 0;
  }
}

__CFString *screenstreamudp_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v4 = Mutable;
  v5 = "yes";
  if (*(DerivedStorage + 25))
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  if (!*(DerivedStorage + 26))
  {
    v5 = "no";
  }

  CFStringAppendFormat(Mutable, 0, @"<APEndpointStreamScreenUDP %p '%@', activated: %s resumed: %s >", a1, *(DerivedStorage + 8), v6, v5);
  return v4;
}

uint64_t screenstreamudp_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, __CFDictionary **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreenUDP <= 30 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamScreenUDP, "OSStatus screenstreamudp_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "screen stream %{ptr} copy propertyKey: '%@'\n", a1, a2);
  }

  if (CFEqual(a2, *MEMORY[0x277CC1900]))
  {
    v8 = MEMORY[0x277CC1980];
LABEL_7:
    v9 = *v8;
LABEL_14:
    v10 = CFRetain(v9);
LABEL_15:
    v11 = v10;
LABEL_16:
    result = 0;
    *a4 = v11;
    return result;
  }

  if (CFEqual(a2, *MEMORY[0x277CC18B0]))
  {
    if (*(DerivedStorage + 96) == 110)
    {
      v9 = *MEMORY[0x277CC1950];
    }

    else
    {
      v9 = @"ScreenAlt";
    }

    goto LABEL_14;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1878]))
  {
    v9 = *(DerivedStorage + 88);
    goto LABEL_14;
  }

  if (CFEqual(a2, *MEMORY[0x277CD6700]))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (*(DerivedStorage + 248) == 1)
    {
      v14 = MEMORY[0x277CBF3A8];
      v27 = *MEMORY[0x277CBF3A8];
      APSScreenGetMediaPresentationParams();
      if (gLogCategory_APEndpointStreamScreenUDP <= 50 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
      {
        screenstreamudp_CopyProperty_cold_1(&v27);
      }

      FigCFDictionarySetCGSize();
      if (*(DerivedStorage + 258))
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x277CD6660], *(DerivedStorage + 208));
      }

      FigCFDictionarySetInt32();
      v16 = *v14;
      v15 = v14[1];
    }

    else
    {
      FigCFDictionarySetInt32();
      v16 = *MEMORY[0x277CBF3A8];
      v15 = *(MEMORY[0x277CBF3A8] + 8);
      if (*(DerivedStorage + 152) != *MEMORY[0x277CBF3A8] || *(DerivedStorage + 160) != v15)
      {
        FigCFDictionarySetCGSize();
      }
    }

    if (*(DerivedStorage + 168) != v16 || *(DerivedStorage + 176) != v15)
    {
      FigCFDictionarySetCGSize();
    }

    v18 = *(DerivedStorage + 192);
    if (v18)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD6640], v18);
    }

    v19 = *(DerivedStorage + 144);
    if (v19)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD6638], v19);
    }

    v20 = *(DerivedStorage + 200);
    if (v20)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD6658], v20);
    }

    v21 = *MEMORY[0x277CBED28];
    v22 = *MEMORY[0x277CBED10];
    if (*(DerivedStorage + 261))
    {
      v23 = *MEMORY[0x277CBED28];
    }

    else
    {
      v23 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277CD6668], v23);
    if (*(DerivedStorage + 262))
    {
      v24 = v21;
    }

    else
    {
      v24 = v22;
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277CD6678], v24);
    result = 0;
    *a4 = Mutable;
  }

  else if (CFEqual(a2, *MEMORY[0x277CD6730]))
  {
    return 0;
  }

  else
  {
    if (CFEqual(a2, *MEMORY[0x277CC1880]) || CFEqual(a2, @"IsPlaying"))
    {
      v8 = MEMORY[0x277CBED28];
      if (!*(DerivedStorage + 26))
      {
        v8 = MEMORY[0x277CBED10];
      }

      goto LABEL_7;
    }

    if (CFEqual(a2, @"EndpointStreamShowInfo"))
    {
      v10 = screenstreamudp_copyShowInfo(DerivedStorage);
      goto LABEL_15;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1898]))
    {
      v10 = screenstreamudp_copyOutputLatency();
      goto LABEL_15;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1908]))
    {
      v9 = *(DerivedStorage + 232);
      if (!v9)
      {
        v11 = 0;
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    if (CFEqual(a2, @"screenStreamType"))
    {
      v9 = @"screenStreamUDP";
      goto LABEL_14;
    }

    if (gLogCategory_APEndpointStreamScreenUDP <= 30 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
    {
      screenstreamudp_CopyProperty_cold_2(a2, v25, v26);
    }

    return 4294954512;
  }

  return result;
}

uint64_t screenstreamudp_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreenUDP <= 30 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamScreenUDP, "OSStatus screenstreamudp_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "screen stream %{ptr} set propertyKey: '%@'\n", a1, a2);
  }

  if (CFEqual(a2, *MEMORY[0x277CD6718]) || CFEqual(a2, *MEMORY[0x277CD6710]))
  {
    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1908]))
  {
    v10 = *(DerivedStorage + 232);
    *(DerivedStorage + 232) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    return 0;
  }

  if (gLogCategory_APEndpointStreamScreenUDP <= 30 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    screenstreamudp_SetProperty_cold_1(a2, v8, v9);
  }

  return 4294954512;
}

__CFDictionary *screenstreamudp_copyShowInfo(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = Mutable;
  v4 = *MEMORY[0x277CBED28];
  v5 = *MEMORY[0x277CBED10];
  if (*(a1 + 25))
  {
    v6 = *MEMORY[0x277CBED28];
  }

  else
  {
    v6 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"Activated", v6);
  if (*(a1 + 26))
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  CFDictionarySetValue(v3, @"Resumed", v7);
  CFDictionarySetValue(v3, @"Type", *MEMORY[0x277CC1980]);
  CFDictionarySetValue(v3, @"Name", *(a1 + 8));
  return v3;
}

CFDictionaryRef screenstreamudp_copyOutputLatency()
{
  v4 = **&MEMORY[0x277CC08F0];
  v0 = APSScreenLatencyMs();
  CMTimeMake(&v4, v0, 1000);
  v1 = *MEMORY[0x277CBECE8];
  v3 = v4;
  return CMTimeCopyAsDictionary(&v3, v1);
}

uint64_t screenstreamudp_Suspend(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreenUDP <= 50 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    screenstreamudp_Suspend_cold_1(a1, v8, v9);
  }

  v11 = *(CMBaseObjectGetDerivedStorage() + 120);
  if (v11)
  {
    v12 = CFRetain(v11);
    if (v12)
    {
      v13 = v12;
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v14)
      {
        v14(v13, 0, 0, 0);
      }

      CMBaseObject = FigTransportStreamGetCMBaseObject();
      if (CMBaseObject)
      {
        v16 = CMBaseObject;
        v17 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v17)
        {
          v17(v16);
        }
      }

      CFRelease(v13);
    }
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  v18 = *DerivedStorage;
  block[0] = MEMORY[0x277D85DD0];
  if (a3)
  {
    v19 = a4;
  }

  else
  {
    v19 = 0;
  }

  block[1] = 3221225472;
  block[2] = __screenstreamudp_Suspend_block_invoke;
  block[3] = &__block_descriptor_72_e5_v8__0l;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  block[7] = v19;
  block[8] = 0;
  dispatch_async(v18, block);
  return 0;
}

uint64_t screenstreamudp_Resume(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreenUDP <= 50 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    screenstreamudp_Resume_cold_1(a1, v8, v9);
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  v11 = *DerivedStorage;
  block[0] = MEMORY[0x277D85DD0];
  if (a3)
  {
    v12 = a4;
  }

  else
  {
    v12 = 0;
  }

  block[1] = 3221225472;
  block[2] = __screenstreamudp_Resume_block_invoke;
  block[3] = &__block_descriptor_72_e5_v8__0l;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  block[7] = v12;
  block[8] = 0;
  dispatch_async(v11, block);
  return 0;
}

uint64_t screenstreamudp_Dissociate(uint64_t a1)
{
  v2 = *CMBaseObjectGetDerivedStorage();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __screenstreamudp_Dissociate_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(v2, block);
  return 0;
}

uint64_t screenstreamudp_Control(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    v7 = *DerivedStorage;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __screenstreamudp_Control_block_invoke;
    block[3] = &unk_27849BEC0;
    block[4] = &v11;
    block[5] = a1;
    block[6] = a3;
    dispatch_sync(v7, block);
    v8 = *(v12 + 6);
  }

  else
  {
    if (gLogCategory_APEndpointStreamScreenUDP <= 90 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamScreenUDP, "OSStatus screenstreamudp_Control(FigEndpointStreamRef, CFStringRef, CFDictionaryRef)", 33554522, "### screen stream %{ptr}: invalid control command '%@'\n", a1, a2);
    }

    v8 = 4294950536;
    *(v12 + 6) = -16760;
  }

  _Block_object_dispose(&v11, 8);
  return v8;
}

void screenstreamudp_teardownStream(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 120);
  if (v3)
  {
    if (gLogCategory_APEndpointStreamScreenUDP <= 40)
    {
      if (gLogCategory_APEndpointStreamScreenUDP != -1 || (v4 = _LogCategory_Initialize(), v3 = *(DerivedStorage + 120), v4))
      {
        LogPrintF(&gLogCategory_APEndpointStreamScreenUDP, "void screenstreamudp_teardownStream(FigEndpointStreamRef)", 33554472, "screen stream %{ptr}: tearing down transport media data control stream [%{ptr}]\n", a1, v3);
      }
    }

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

    v8 = *(DerivedStorage + 120);
    if (v8)
    {
      CFRelease(v8);
      *(DerivedStorage + 120) = 0;
    }
  }

  if (*(DerivedStorage + 48))
  {
    if (gLogCategory_APEndpointStreamScreenUDP <= 40 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointStreamScreenUDP, "void screenstreamudp_teardownStream(FigEndpointStreamRef)", 33554472, "screen stream %{ptr}: tearing down transport data stream [%{ptr}]\n", a1, *(DerivedStorage + 104));
    }

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

    v12 = *(DerivedStorage + 48);
    v13 = *(DerivedStorage + 96);
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v14)
    {
      v14(v12, v13, 0);
    }
  }

  v15 = *(DerivedStorage + 104);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 104) = 0;
  }
}

void screenstreamudp_dispatchCallback(const void *a1, __int128 *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*a2)
  {
    v7 = DerivedStorage;
    CFRetain(a1);
    v8 = *(v7 + 64);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __screenstreamudp_dispatchCallback_block_invoke;
    block[3] = &__block_descriptor_68_e5_v8__0l;
    v10 = *a2;
    v11 = *(a2 + 2);
    v12 = a1;
    v13 = a3;
    dispatch_async(v8, block);
  }
}

void screenstreamudp_handleFatalError(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreenUDP <= 90 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointStreamScreenUDP, "void screenstreamudp_handleFatalError(FigEndpointStreamRef, OSStatus, CFStringRef)", 33554522, "Screen Stream %{ptr} error: %d (%@)\n", a1, a2, a3);
  }

  CFRetain(a1);
  if (a3)
  {
    CFRetain(a3);
  }

  v7 = *(DerivedStorage + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __screenstreamudp_handleFatalError_block_invoke;
  block[3] = &__block_descriptor_60_e5_v8__0l;
  v11 = a2;
  block[4] = a3;
  block[5] = DerivedStorage;
  block[6] = a1;
  dispatch_async(v7, block);
  CFRetain(a1);
  v8 = *DerivedStorage;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __screenstreamudp_handleFatalError_block_invoke_2;
  v9[3] = &__block_descriptor_40_e5_v8__0l;
  v9[4] = a1;
  dispatch_async(v8, v9);
}

void __screenstreamudp_dispatchCallback_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(a1 + 40));
  v2 = *(a1 + 56);

  CFRelease(v2);
}

void __screenstreamudp_handleFatalError_block_invoke(void *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  FigCFDictionarySetInt32();
  v3 = a1[4];
  if (v3)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC17E0], v3);
    v4 = a1[4];
    if (v4)
    {
      if (!*(a1[5] + 27) && CFEqual(v4, @"Resume failed"))
      {
        CFDictionarySetValue(Mutable, @"APEndpointStream_IsStartupFailure", *MEMORY[0x277CBED28]);
      }
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[6];

  CFRelease(v6);
}

void __screenstreamudp_handleFatalError_block_invoke_2(uint64_t a1)
{
  screenstreamudp_dissociateInternal(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void __screenstreamudp_dissociateInternal_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t screenstreamudp_createAndResumeTransportMediaDataControlStream(uint64_t a1, int a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  v7 = APTransportStreamIDMakeWithPort();
  v32 = 0;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v8)
  {
    v27 = 4294954514;
LABEL_17:
    APSLogErrorAt();
    Mutable = 0;
LABEL_21:
    v19 = 0;
    goto LABEL_22;
  }

  v9 = v8(a1);
  if (v9)
  {
    v27 = v9;
    goto LABEL_17;
  }

  v10 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    screenstreamudp_createAndResumeTransportMediaDataControlStream_cold_6();
    v19 = 0;
LABEL_37:
    v27 = 4294960568;
    goto LABEL_22;
  }

  CFDictionarySetInt64();
  CFDictionarySetInt64();
  CFDictionarySetInt64();
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v12)
  {
    v27 = 4294954514;
LABEL_20:
    APSLogErrorAt();
    goto LABEL_21;
  }

  v13 = v12(a1, v7, Mutable, &cf);
  if (v13)
  {
    v27 = v13;
    goto LABEL_20;
  }

  v14 = APSSetFBOPropertyInt64();
  if (v14)
  {
    v27 = v14;
    screenstreamudp_createAndResumeTransportMediaDataControlStream_cold_1(v14);
    goto LABEL_21;
  }

  APSenderSessionGetCMBaseObject();
  v16 = v15;
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v17)
  {
    v27 = 4294954514;
    goto LABEL_20;
  }

  v18 = v17(v16, @"KeyHolder", v10, &v32);
  if (v18)
  {
    v27 = v18;
    goto LABEL_20;
  }

  v19 = APKeyHolderCoreUtilsEncryptionContextDataStreamCreateWithSeed(v10, a3);
  if (!v19)
  {
    screenstreamudp_createAndResumeTransportMediaDataControlStream_cold_5();
    goto LABEL_37;
  }

  v21 = v32;
  v20 = cf;
  v22 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v22)
  {
    v27 = 4294954514;
LABEL_35:
    APSLogErrorAt();
    goto LABEL_22;
  }

  v23 = v22(v20, v21, v19);
  if (v23)
  {
    v27 = v23;
    goto LABEL_35;
  }

  v24 = APSSetFBOPropertyInt64();
  if (v24)
  {
    v27 = v24;
    screenstreamudp_createAndResumeTransportMediaDataControlStream_cold_2(v24);
  }

  else
  {
    v25 = FigTransportStreamResume(cf);
    if (v25)
    {
      v27 = v25;
      screenstreamudp_createAndResumeTransportMediaDataControlStream_cold_3(v25);
    }

    else
    {
      v26 = FigTransportStreamWaitUntilConnected(cf);
      v27 = v26;
      if (!v26)
      {
        *a4 = cf;
        cf = 0;
LABEL_28:
        CFRelease(Mutable);
        goto LABEL_29;
      }

      screenstreamudp_createAndResumeTransportMediaDataControlStream_cold_4(v26);
    }
  }

LABEL_22:
  if (cf)
  {
    CMBaseObject = FigTransportStreamGetCMBaseObject();
    if (CMBaseObject)
    {
      v29 = CMBaseObject;
      v30 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v30)
      {
        v30(v29);
      }
    }

    CFRelease(cf);
    cf = 0;
  }

  if (Mutable)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (v32)
  {
    CFRelease(v32);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v27;
}

void screenstreamudp_setResumedAndNotifyObservers(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 26) != a2;
  *(DerivedStorage + 26) = a2;
  APSEventRecorderRecordEvent();
  CFRetain(a1);
  v6 = *(DerivedStorage + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __screenstreamudp_setResumedAndNotifyObservers_block_invoke;
  block[3] = &__block_descriptor_50_e5_v8__0l;
  v8 = a2;
  v9 = v5;
  block[4] = a1;
  block[5] = DerivedStorage;
  dispatch_async(v6, block);
}

void __screenstreamudp_setResumedAndNotifyObservers_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (*(a1 + 49))
  {
    APSWiFiTransactionUpdateTransaction();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v3 = Mutable;
    v4 = MEMORY[0x277CBED28];
    if (!*(a1 + 48))
    {
      v4 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(Mutable, @"IsPlaying", *v4);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CFRelease(v3);
  }

  v5 = *(a1 + 32);

  CFRelease(v5);
}

void *__getAVCMediaStreamNegotiatorHDRModeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVConferenceLibrary();
  result = dlsym(v2, "AVCMediaStreamNegotiatorHDRMode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCMediaStreamNegotiatorHDRModeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AVConferenceLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!AVConferenceLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __AVConferenceLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_27849BF00;
    v4 = 0;
    AVConferenceLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AVConferenceLibraryCore_frameworkLibrary;
  if (!AVConferenceLibraryCore_frameworkLibrary)
  {
    AVConferenceLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __AVConferenceLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AVConferenceLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAVCMediaStreamNegotiatorClass_block_invoke(uint64_t a1)
{
  AVConferenceLibrary();
  result = objc_getClass("AVCMediaStreamNegotiator");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getAVCMediaStreamNegotiatorClass_block_invoke_cold_1();
  }

  getAVCMediaStreamNegotiatorClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getAVCScreenCaptureConfigurationClass_block_invoke(uint64_t a1)
{
  AVConferenceLibrary();
  result = objc_getClass("AVCScreenCaptureConfiguration");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getAVCScreenCaptureConfigurationClass_block_invoke_cold_1();
  }

  getAVCScreenCaptureConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getAVCScreenCaptureClass_block_invoke(uint64_t a1)
{
  AVConferenceLibrary();
  result = objc_getClass("AVCScreenCapture");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getAVCScreenCaptureClass_block_invoke_cold_1();
  }

  getAVCScreenCaptureClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void *__getkAVCMediaStreamOptionRunInProcessSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVConferenceLibrary();
  result = dlsym(v2, "kAVCMediaStreamOptionRunInProcess");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAVCMediaStreamOptionRunInProcessSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAVCMediaStreamOptionClientPIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVConferenceLibrary();
  result = dlsym(v2, "kAVCMediaStreamOptionClientPID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAVCMediaStreamOptionClientPIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAVCVideoStreamClass_block_invoke(uint64_t a1)
{
  AVConferenceLibrary();
  result = objc_getClass("AVCVideoStream");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getAVCVideoStreamClass_block_invoke_cold_1();
  }

  getAVCVideoStreamClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getAVCDaemonProcessInfoClass_block_invoke(uint64_t a1)
{
  AVConferenceLibrary();
  result = objc_getClass("AVCDaemonProcessInfo");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getAVCDaemonProcessInfoClass_block_invoke_cold_1();
  }

  getAVCDaemonProcessInfoClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void *__getAVCKeyDaemonProcessInfoUniquePIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVConferenceLibrary();
  result = dlsym(v2, "AVCKeyDaemonProcessInfoUniquePID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCKeyDaemonProcessInfoUniquePIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t APEndpointCarPlayRemote_ServerDied(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 16) = 0;
  return result;
}

uint64_t APEndpointCarPlayRemoteCreate(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v11[0] = 0;
  if (!a3)
  {
    APEndpointCarPlayRemoteCreate_cold_6();
    return 4294950576;
  }

  FigEndpointExtendedGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v10 = v5;
    APEndpointCarPlayRemoteCreate_cold_1(v5);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 8) = a2;
    *(DerivedStorage + 16) = 0;
    CMBaseObjectGetDerivedStorage();
    v11[1] = 0;
    v11[2] = 0;
    v7 = FigXPCCreateBasicMessage();
    if (v7)
    {
      v10 = v7;
      APEndpointCarPlayRemoteCreate_cold_2(v7);
    }

    else
    {
      v8 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (v8)
      {
        v10 = v8;
        if (v8 != -6720)
        {
          APSLogErrorAt();
        }
      }

      else
      {
        APEndpointCarPlayRemoteCreate_cold_4();
        v10 = 0;
      }
    }

    if (!v10)
    {
      if (gLogCategory_APEndpointCarPlayRemote <= 50 && (gLogCategory_APEndpointCarPlayRemote != -1 || _LogCategory_Initialize()))
      {
        APEndpointCarPlayRemoteCreate_cold_5(v11);
      }

      v10 = 0;
      *a3 = v11[0];
      return v10;
    }

    if (v10 != -6720)
    {
      APSLogErrorAt();
    }
  }

  if (v11[0])
  {
    CFRelease(v11[0]);
  }

  return v10;
}

uint64_t carEndpointRemote_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointCarPlayRemote <= 30 && (gLogCategory_APEndpointCarPlayRemote != -1 || _LogCategory_Initialize()))
  {
    carEndpointRemote_Finalize_cold_1(a1);
  }

  result = FigXPCRemoteClientDisassociateObject();
  *DerivedStorage = 0;
  *(DerivedStorage + 16) = 0;
  return result;
}

CFMutableStringRef carEndpointRemote_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendF(Mutable, "<RemoteCarPlayEndpoint %p>:\n", a1);
  if (*(DerivedStorage + 16))
  {
    v4 = "Connected";
  }

  else
  {
    v4 = "Disconnected";
  }

  CFStringAppendF(Mutable, "\t Connection state: %s\n", v4);
  CFStringAppendF(Mutable, "\t Remote object id: %lu\n", *DerivedStorage);
  return Mutable;
}

uint64_t carEndpointRemote_CopyProperty(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = FigXPCSendStdCopyPropertyMessage();
  v2 = v1;
  if (v1)
  {
    carEndpointRemote_CopyProperty_cold_1(v1);
  }

  return v2;
}

uint64_t carEndpointRemote_SetProperty(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    if (*(DerivedStorage + 16))
    {
      v2 = FigXPCSendStdSetPropertyMessage();
      v3 = v2;
      if (v2)
      {
        carEndpointRemote_SetProperty_cold_1(v2);
      }
    }

    else
    {
      carEndpointRemote_SetProperty_cold_2();
      return 4294960587;
    }
  }

  else
  {
    carEndpointRemote_SetProperty_cold_3();
    return 4294960578;
  }

  return v3;
}

uint64_t APEndpointPlaybackSessionCreatePlayParamsWithTimesInSeconds(const __CFDictionary *a1, CFMutableDictionaryRef *a2)
{
  if (a1)
  {
    CFDictionaryGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (TypedValue)
    {
      v5 = TypedValue;
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a1);
      if (MutableCopy)
      {
        v7 = MutableCopy;
        CMTimeMakeFromDictionary(&time, v5);
        CMTimeGetSeconds(&time);
        CFDictionarySetDouble();
        result = 0;
        *a2 = v7;
      }

      else
      {
        APEndpointPlaybackSessionCreatePlayParamsWithTimesInSeconds_cold_1();
        return 4294950555;
      }
    }

    else
    {
      v9 = CFRetain(a1);
      result = 0;
      *a2 = v9;
    }
  }

  else
  {
    APEndpointPlaybackSessionCreatePlayParamsWithTimesInSeconds_cold_2();
    return 4294950556;
  }

  return result;
}

uint64_t APEndpointPlaybackSessionCreatePlayPlaybackInfoTimesInCMTime(CFDictionaryRef theDict, const __CFDictionary **a2)
{
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theDict);
    if (MutableCopy)
    {
      v4 = MutableCopy;
      apPlaybackUtil_convertRangeSecondsToCMTime(MutableCopy, *MEMORY[0x277CC10A8]);
      apPlaybackUtil_convertRangeSecondsToCMTime(v4, *MEMORY[0x277CC1070]);
      Value = CFDictionaryGetValue(v4, @"positionCMTime");
      v6 = *MEMORY[0x277CC1090];
      if (Value)
      {
        CFDictionarySetValue(v4, v6, Value);
        CFDictionaryRemoveValue(v4, @"positionCMTime");
      }

      else
      {
        apPlaybackUtil_convertSecondsToCMTime(v4, v6);
      }

      v7 = CFDictionaryGetValue(v4, @"durationCMTime");
      v8 = *MEMORY[0x277CC1058];
      if (v7)
      {
        CFDictionarySetValue(v4, v8, v7);
        CFDictionaryRemoveValue(v4, @"durationCMTime");
      }

      else
      {
        apPlaybackUtil_convertSecondsToCMTime(v4, v8);
      }

      result = 0;
      *a2 = v4;
    }

    else
    {
      APEndpointPlaybackSessionCreatePlayPlaybackInfoTimesInCMTime_cold_1();
      return 4294950555;
    }
  }

  else
  {
    APEndpointPlaybackSessionCreatePlayPlaybackInfoTimesInCMTime_cold_2();
    return 4294950556;
  }

  return result;
}

uint64_t APEndpointPlaybackSessionGetMediaTypeFromPlayParams(const __CFDictionary *a1)
{
  if (CFDictionaryContainsKey(a1, *MEMORY[0x277CC0F90]))
  {
    v2 = 1;
  }

  else
  {
    v2 = CFDictionaryContainsKey(a1, @"IsTLSEnabled") != 0;
  }

  v3 = CFDictionaryContainsKey(a1, *MEMORY[0x277CC0EF8]);
  v4 = CFDictionaryContainsKey(a1, *MEMORY[0x277CC0E08]);
  v5 = 2 * (((v3 | v4) | CFDictionaryContainsKey(a1, *MEMORY[0x277CC0E10])) != 0);
  if (v3 | v4)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  if (v2)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

__CFString *APEndpointPlaybackSessionGetRTCMediaTypeFromPlayParams(const __CFDictionary *a1)
{
  MediaTypeFromPlayParams = APEndpointPlaybackSessionGetMediaTypeFromPlayParams(a1);
  CFDictionaryGetValue(a1, *MEMORY[0x277CC0F68]);
  if (MediaTypeFromPlayParams > 1)
  {
    if (MediaTypeFromPlayParams != 3)
    {
      return @"LocalFileEncrypted";
    }

    v4 = FigCFEqual();
    v5 = @"HLSEncrypted";
    v6 = @"RemoteFileEncrypted";
  }

  else
  {
    if (!MediaTypeFromPlayParams)
    {
      return @"LocalFileNonEncrypted";
    }

    v4 = FigCFEqual();
    v5 = @"HLSNonEncrypted";
    v6 = @"RemoteFileNonEncrypted";
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

uint64_t APEndpointPlaybackSessionCreateVideoSyncTimeHistogram(uint64_t *a1)
{
  if (APEndpointPlaybackSessionCreateVideoSyncTimeHistogram_once != -1)
  {
    APEndpointPlaybackSessionCreateVideoSyncTimeHistogram_cold_1();
  }

  result = APEndpointPlaybackSessionCreateVideoSyncTimeHistogram_histogramCreationOptions;
  if (APEndpointPlaybackSessionCreateVideoSyncTimeHistogram_histogramCreationOptions)
  {
    v3 = APSStatsHistogramCreate();
    *a1 = v3;
    if (v3)
    {
      return 0;
    }

    else
    {
      APEndpointPlaybackSessionCreateVideoSyncTimeHistogram_cold_2();
      return 4294950555;
    }
  }

  return result;
}

uint64_t APEndpointPlaybackSessionStatsCreate(const void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = 0;
  if (!a4)
  {
    APEndpointPlaybackSessionStatsCreate_cold_7();
    v11 = 4294960591;
    goto LABEL_9;
  }

  v7 = malloc_type_calloc(1uLL, 0x40uLL, 0x1020040BB341AB5uLL);
  v13 = v7;
  v8 = FigSimpleMutexCreate();
  *v7 = v8;
  if (!v8)
  {
    APEndpointPlaybackSessionStatsCreate_cold_6();
LABEL_15:
    v11 = 4294950555;
    goto LABEL_9;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7[1] = Mutable;
  if (!Mutable)
  {
    APEndpointPlaybackSessionStatsCreate_cold_5();
    goto LABEL_15;
  }

  if (!a1)
  {
    APEndpointPlaybackSessionStatsCreate_cold_4();
LABEL_17:
    v11 = 4294950556;
    goto LABEL_9;
  }

  CFDictionarySetValue(Mutable, @"videoSessionType", a1);
  APSEventRecorderGetTimeFromDictionaryIfPresent();
  APEndpointPlaybackSessionCreateVideoSyncTimeHistogram(v7 + 4);
  if (!v7[4])
  {
    APEndpointPlaybackSessionStatsCreate_cold_3();
    goto LABEL_15;
  }

  if (!a2)
  {
    APEndpointPlaybackSessionStatsCreate_cold_2();
    goto LABEL_17;
  }

  v10 = APSEventRecorderCreate();
  v11 = v10;
  if (v10)
  {
    APEndpointPlaybackSessionStatsCreate_cold_1(v10);
  }

  else
  {
    *a4 = v7;
    v13 = 0;
  }

LABEL_9:
  APEndpointPlaybackSessionStatsDestroy(&v13);
  return v11;
}

uint64_t APEndpointPlaybackSessionStatsUpdateAtPlay(void *a1, const __CFDictionary *a2)
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  APSEventRecorderRecordEvent();
  APSEventRecorderGetTimeBetweenEventRecorderTimeAndEventInMilliSecond();
  CFStringGetTypeID();
  CFDictionaryGetTypedValue();
  APEndpointPlaybackSessionGetRTCMediaTypeFromPlayParams(a2);
  CFDictionarySetInt64();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  if (CFDictionaryContainsKey(a2, *MEMORY[0x277CC0F40]))
  {
    CFDictionarySetValue(a1[1], @"storeHLSProvided", *MEMORY[0x277CBED28]);
  }

  if (*(a1 + 24))
  {
    APSEventRecorderRecordEvent();
  }

  return FigSimpleMutexUnlock();
}

uint64_t APEndpointPlaybackSessionStatsUpdateAtInvalidate(void *a1)
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if (!*(a1 + 25))
  {
    APSEventRecorderRecordEvent();
    if (APSEventRecorderGetEventTime())
    {
      APSEventRecorderGetTimeBetweenEventsInMilliSecond();
      CFDictionarySetInt64();
    }

    if (APSEventRecorderGetEventTime())
    {
      if (*(a1 + 24))
      {
        a1[2] += APSEventRecorderGetTimeBetweenEventsInMilliSecond();
      }

      CFDictionarySetInt64();
      if (a1[4])
      {
        v2 = APSStatsHistogramCopyValuesAsRTCString();
        FigCFDictionarySetValue();
        if (v2)
        {
          CFRelease(v2);
        }
      }
    }

    *(a1 + 25) = 1;
  }

  return FigSimpleMutexUnlock();
}

uint64_t APEndpointPlaybackSessionStatsUpdateAtStartUpComplete(void *a1)
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if (!CFDictionaryContainsKey(a1[1], @"videoStartupTimeMs"))
  {
    APSEventRecorderRecordEvent();
    APSEventRecorderGetTimeBetweenEventsInMilliSecond();
    CFDictionarySetInt64();
  }

  return FigSimpleMutexUnlock();
}

uint64_t APEndpointPlaybackSessionStatsSetLastError(void *a1, int a2)
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  CFDictionarySetInt64();

  return FigSimpleMutexUnlock();
}

uint64_t APEndpointPlaybackSessionSetIsParticipatingInCoordinatedPlayback(void *a1, int a2)
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if (*(a1 + 24) != a2)
  {
    *(a1 + 24) = a2;
    if (a2)
    {
      if (APSEventRecorderGetEventTime())
      {
        APSEventRecorderRecordEvent();
      }
    }

    else
    {
      APSEventRecorderRecordEvent();
      if (APSEventRecorderGetEventTime())
      {
        a1[2] += APSEventRecorderGetTimeBetweenEventsInMilliSecond();
      }
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t APEndpointPlaybackSessionSetVideoSyncTime(void *a1, uint64_t a2)
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if ((*(a2 + 12) & 1) != 0 && a1[4])
  {
    v5 = *a2;
    CMTimeGetSeconds(&v5);
    APSStatsHistogramAddValue();
  }

  return FigSimpleMutexUnlock();
}

uint64_t APEndpointPlaybackSessionCopyRTCStats(void *a1, CFDictionaryRef *a2)
{
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  *a2 = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], a1[1]);

  return FigSimpleMutexUnlock();
}

void APEndpointPlaybackSessionSetV2Item(uint64_t a1, __CFDictionary *a2)
{
  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    v4 = Value;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Mutable, @"uuid", v4);
    CFDictionarySetValue(a2, @"item", Mutable);
    if (Mutable)
    {

      CFRelease(Mutable);
    }
  }
}

CMTime *apPlaybackUtil_getCMTimeFromRangeForKeys@<X0>(const __CFDictionary *a1@<X0>, const void *a2@<X1>, const void *a3@<X2>, CMTime *a4@<X8>)
{
  *a4 = **&MEMORY[0x277CC0898];
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v8 = a4;
LABEL_9:

    return CMTimeMakeFromDictionary(v8, Value);
  }

  v9 = CFDictionaryGetValue(a1, a3);
  v10 = v9;
  if (!v9 || (v11 = CFGetTypeID(v9), v11 != CFNumberGetTypeID()))
  {
    v8 = a4;
    Value = v10;
    goto LABEL_9;
  }

  valuePtr = 0.0;
  result = CFNumberGetValue(v10, kCFNumberFloat64Type, &valuePtr);
  if (result)
  {
    return CMTimeMakeWithSeconds(a4, valuePtr, 1000);
  }

  return result;
}

uint64_t APAudioSinkSharedMemCreate(uint64_t a1, __int128 *a2, CFTypeRef *a3)
{
  if (!a3)
  {
    APAudioSinkSharedMemCreate_cold_3();
    return 4294950504;
  }

  if (!a2)
  {
    APAudioSinkSharedMemCreate_cold_2();
    return 4294950504;
  }

  FigEndpointAudioSinkGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v13 = v5;
    APSLogErrorAt();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = *(a2 + 4);
    v10 = a2[1];
    *(DerivedStorage + 48) = *a2;
    *(DerivedStorage + 64) = v10;
    *(DerivedStorage + 80) = v9;
    v12 = *a2;
    v11 = a2[1];
    *(DerivedStorage + 40) = *(a2 + 4);
    *(DerivedStorage + 8) = v12;
    *(DerivedStorage + 24) = v11;
    if (gLogCategory_APAudioSinkSharedMem <= 30)
    {
      if (gLogCategory_APAudioSinkSharedMem != -1 || (DerivedStorage = _LogCategory_Initialize(), DerivedStorage))
      {
        APAudioSinkSharedMemCreate_cold_1(DerivedStorage, v7, v8);
      }
    }

    v13 = 0;
    *a3 = 0;
  }

  return v13;
}

void sharedMemSink_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioSinkSharedMem <= 30 && (gLogCategory_APAudioSinkSharedMem != -1 || _LogCategory_Initialize()))
  {
    sharedMemSink_Finalize_cold_1(a1, v2, v3);
  }

  v5 = *(DerivedStorage + 96);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 96) = 0;
  }
}

__CFString *sharedMemSink_CopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAudioSinkSharedMem>");
  return Mutable;
}

uint64_t sharedMemSink_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"SharedMemoryBuffer"))
  {
    if (*(DerivedStorage + 96))
    {
      APSSharedRingBuffer_GetSharedMemoryBuffer();
    }

LABEL_7:
    v7 = FigXPCRetain();
    result = 0;
    *a4 = v7;
    return result;
  }

  if (CFEqual(a2, @"SharedMemoryBufferState"))
  {
    if (*(DerivedStorage + 96))
    {
      APSSharedRingBuffer_GetSharedMemoryState();
    }

    goto LABEL_7;
  }

  return 4294954512;
}