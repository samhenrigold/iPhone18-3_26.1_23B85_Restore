@interface AirPlayReceiverXPCClient
@end

@implementation AirPlayReceiverXPCClient

void __AirPlayReceiverXPCClient_Connect_block_invoke(uint64_t a1)
{
  mach_service = xpc_connection_create_mach_service("com.apple.airplay.receiver", **(a1 + 32), 0);
  v3 = *(a1 + 32);
  *(v3 + 24) = mach_service;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __AirPlayReceiverXPCClient_Connect_block_invoke_2;
  handler[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  handler[4] = v3;
  xpc_connection_set_event_handler(mach_service, handler);
  xpc_connection_resume(*(*(a1 + 32) + 24));
  if (gLogCategory_AirPlayReceiverXPCClientCore <= 30 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverXPCClientCore, "OSStatus AirPlayReceiverXPCClient_Connect(AirPlayReceiverXPCClientRef)_block_invoke", 33554462, "Connection created   %{ptr}\n", *(a1 + 32));
  }

  _AirPlayReceiverXPCClient_SendPingMsg(*(a1 + 32));
}

void *___AirPlayReceiverXPCClient_StopVideo_block_invoke(void *a1)
{
  result = [*(a1[6] + 32) airplayUIStopVideo:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

void *___AirPlayReceiverXPCClient_StopPresentation_block_invoke(void *a1)
{
  result = [*(a1[6] + 32) airplayUIStopPresentation:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

void *___AirPlayReceiverXPCClient_StopAudio_block_invoke(void *a1)
{
  result = [*(a1[6] + 32) airplayUIStopAudio:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

void __AirPlayReceiverXPCClient_Connect_block_invoke_2(uint64_t a1, void *a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (gLogCategory_AirPlayReceiverXPCClientCore <= 10 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverXPCClientCore, "void _AirPlayReceiverXPCClient_ConnectionEventHandler(AirPlayReceiverXPCClientRef, xpc_object_t)", 33554442, "New Event\n%1{xpc}\n", a2);
  }

  if (a2 == MEMORY[0x277D863F8])
  {
    if (gLogCategory_AirPlayReceiverXPCClientCore <= 100 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverXPCClientCore, "void _AirPlayReceiverXPCClient_ConnectionEventHandler(AirPlayReceiverXPCClientRef, xpc_object_t)", 33554532, "### Server Unloaded\n");
    }

    _AirPlayReceiverXPCClient_StopAllActiveSessions(v3);
    return;
  }

  if (a2 == MEMORY[0x277D863F0])
  {
    if (gLogCategory_AirPlayReceiverXPCClientCore <= 100 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverXPCClientCore, "void _AirPlayReceiverXPCClient_ConnectionEventHandler(AirPlayReceiverXPCClientRef, xpc_object_t)", 33554532, "### Server process crashed\n");
    }

    _AirPlayReceiverXPCClient_StopAllActiveSessions(v3);

    _AirPlayReceiverXPCClient_SendPingMsg(v3);
    return;
  }

  if (MEMORY[0x259C83080](a2) != MEMORY[0x277D86468] || (string = xpc_dictionary_get_string(a2, "function")) == 0)
  {

    APSLogErrorAt();
    return;
  }

  v5 = string;
  if (!strcmp(string, "getProperty"))
  {
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    LODWORD(v51) = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x3052000000;
    v43 = __Block_byref_object_copy_;
    v44 = __Block_byref_object_dispose_;
    v45 = 0;
    v6 = xpc_dictionary_copy_cf_object();
    *(v41 + 40) = 0;
    v7 = xpc_dictionary_copy_cf_object();
    if (*(v49 + 6))
    {
      APSLogErrorAt();
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = *(v3 + 8);
        block = MEMORY[0x277D85DD0];
        v59 = 3221225472;
        v60 = ___AirPlayReceiverXPCClient_GetProperty_block_invoke;
        v61 = &unk_27989A290;
        v62 = v7;
        v63 = v6;
        v64 = &v40;
        v65 = &v48;
        v66 = v3;
        dispatch_sync(v8, &block);
      }

      else
      {
        APSLogErrorAt();
        *(v49 + 6) = -6756;
      }
    }

    reply = xpc_dictionary_create_reply(a2);
    xpc_dictionary_set_int64(reply, "error", *(v49 + 6));
    if (*(v41 + 40))
    {
      xpc_dictionary_set_cf_object();
    }

    xpc_connection_send_message(*(v3 + 24), reply);
    xpc_release(reply);

    goto LABEL_39;
  }

  if (!strcmp(v5, "postActivity"))
  {
    if (*(v3 + 32))
    {
      v11 = *(v3 + 8);
      block = MEMORY[0x277D85DD0];
      v59 = 3221225472;
      v60 = ___AirPlayReceiverXPCClient_PostActivity_block_invoke;
      v61 = &__block_descriptor_40_e5_v8__0l;
      v62 = v3;
      dispatch_sync(v11, &block);
      v12 = 0;
    }

    else
    {
      APSLogErrorAt();
      v12 = -6745;
    }

    v13 = xpc_dictionary_create_reply(a2);
    xpc_dictionary_set_int64(v13, "error", v12);
    xpc_connection_send_message(*(v3 + 24), v13);
    xpc_release(v13);
    return;
  }

  if (!strcmp(v5, "setProperty"))
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    LODWORD(v43) = 0;
    v14 = xpc_dictionary_copy_cf_object();
    v15 = xpc_dictionary_copy_cf_object();
    v16 = xpc_dictionary_copy_cf_object();
    if (*(v41 + 24))
    {
      APSLogErrorAt();
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = *(v3 + 8);
        block = MEMORY[0x277D85DD0];
        v59 = 3221225472;
        v60 = ___AirPlayReceiverXPCClient_SetProperty_block_invoke;
        v61 = &unk_27989A2B8;
        v65 = &v40;
        v66 = v3;
        v62 = v16;
        v63 = v14;
        v64 = v15;
        dispatch_sync(v17, &block);
      }

      else
      {
        APSLogErrorAt();
        *(v41 + 24) = -6756;
      }
    }

    v18 = xpc_dictionary_create_reply(a2);
    xpc_dictionary_set_int64(v18, "error", *(v41 + 24));
    xpc_connection_send_message(*(v3 + 24), v18);
    xpc_release(v18);

LABEL_51:
    v10 = &v40;
    goto LABEL_110;
  }

  if (!strcmp(v5, "perform"))
  {
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    LODWORD(v51) = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x3052000000;
    v43 = __Block_byref_object_copy_;
    v44 = __Block_byref_object_dispose_;
    v45 = 0;
    v19 = xpc_dictionary_copy_cf_object();
    if (!*(v49 + 6))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = xpc_dictionary_copy_cf_object();
        if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v21 = *(v3 + 8);
          block = MEMORY[0x277D85DD0];
          v59 = 3221225472;
          v60 = ___AirPlayReceiverXPCClient_Perform_block_invoke;
          v61 = &unk_27989A290;
          v62 = v19;
          v63 = v20;
          v64 = &v48;
          v65 = &v40;
          v66 = v3;
          dispatch_sync(v21, &block);
LABEL_61:
          v22 = xpc_dictionary_create_reply(a2);
          xpc_dictionary_set_int64(v22, "error", *(v49 + 6));
          if (*(v41 + 40))
          {
            xpc_dictionary_set_cf_object();
          }

          xpc_connection_send_message(*(v3 + 24), v22);
          xpc_release(v22);

LABEL_39:
          _Block_object_dispose(&v40, 8);
          v10 = &v48;
LABEL_110:
          _Block_object_dispose(v10, 8);
          return;
        }

        APSLogErrorAt();
      }

      else
      {
        APSLogErrorAt();
        v20 = 0;
      }

      *(v49 + 6) = -6756;
      goto LABEL_61;
    }

    APSLogErrorAt();
    v20 = 0;
    goto LABEL_61;
  }

  if (!strcmp(v5, "startPresentation"))
  {
    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x3052000000;
    v51 = __Block_byref_object_copy_;
    v52 = __Block_byref_object_dispose_;
    v53 = 0;
    LOBYTE(block) = 0;
    v23 = xpc_dictionary_copy_cf_object();
    if (!v23 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v24 = *(v3 + 40);
      if (v24)
      {
        if (gLogCategory_AirPlayReceiverXPCClientCore <= 40 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverXPCClientCore, "void _AirPlayReceiverXPCClient_StartPresentation(AirPlayReceiverXPCClientRef, xpc_object_t)", 33554472, "Reusing presentation\n");
        }

        *(v55 + 6) = 0;
        goto LABEL_100;
      }

      if (gLogCategory_AirPlayReceiverXPCClientCore <= 40 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverXPCClientCore, "void _AirPlayReceiverXPCClient_StartPresentation(AirPlayReceiverXPCClientRef, xpc_object_t)", 33554472, "Starting presentation\n");
      }

      if (!*(v3 + 32))
      {
        APSLogErrorAt();
        v39 = -6745;
        goto LABEL_148;
      }

      *(v55 + 6) = -6700;
      v27 = *(v3 + 8);
      v40 = MEMORY[0x277D85DD0];
      v41 = 3221225472;
      v42 = ___AirPlayReceiverXPCClient_StartPresentation_block_invoke;
      v43 = &unk_27989A2E0;
      v44 = v23;
      v45 = &v54;
      v46 = &v48;
      v47 = v3;
      dispatch_sync(v27, &v40);
      if (*(v55 + 6))
      {
        v37 = 0;
        goto LABEL_105;
      }

      v24 = [v49[5] objectForKey:@"presentationLayer"];
      if (!v24)
      {
        APSLogErrorAt();
        v39 = -6712;
        goto LABEL_148;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = v24;
        *(v3 + 40) = v24;
LABEL_100:
        *(v3 + 58) = 1;
        if (v23)
        {
          Int64 = CFDictionaryGetInt64();
        }

        else
        {
          Int64 = 0;
        }

        *(v3 + 64) = Int64;
        [v24 frame];
        __snprintf_chk(&block, 0x80uLL, 0, 0x80uLL, "%f,%f,%f,%f", v30, v31, v32, v33);
        xpc_dictionary_get_uint64(a2, "presentationContextID");
        CALayerForRemoteDrawing = CreateCALayerForRemoteDrawing();
        v35 = CALayerForRemoteDrawing;
        if (CALayerForRemoteDrawing)
        {
          [CALayerForRemoteDrawing setName:@"AirPlayReceiverUI_ClientLayerHost"];
          [v35 setEdgeAntialiasingMask:0];
          [*(v3 + 48) removeFromSuperlayer];

          *(v3 + 48) = v35;
          [MEMORY[0x277CD9FF0] flush];
          [MEMORY[0x277CD9FF0] synchronize];
          v36 = objc_alloc(MEMORY[0x277CBEB38]);
          v37 = [v36 initWithDictionary:v49[5]];
          [v37 removeObjectForKey:@"presentationLayer"];
LABEL_105:
          v38 = xpc_dictionary_create_reply(a2);
          xpc_dictionary_set_int64(v38, "error", *(v55 + 6));
          if (v37)
          {
            xpc_dictionary_set_cf_object();
          }

          if (block)
          {
            xpc_dictionary_set_string(v38, "presentationFrame", &block);
          }

          xpc_connection_send_message(*(v3 + 24), v38);
          xpc_release(v38);

          _Block_object_dispose(&v48, 8);
          v10 = &v54;
          goto LABEL_110;
        }

        APSLogErrorAt();
        v39 = -6700;
LABEL_148:
        v37 = 0;
        *(v55 + 6) = v39;
        goto LABEL_105;
      }
    }

    APSLogErrorAt();
    v39 = -6756;
    goto LABEL_148;
  }

  if (strcmp(v5, "stopPresentation"))
  {
    if (strcmp(v5, "showProgress"))
    {
      if (!strcmp(v5, "hideProgress"))
      {

        _AirPlayReceiverXPCClient_HideProgress(v3, a2);
      }

      else if (!strcmp(v5, "startVideo"))
      {

        _AirPlayReceiverXPCClient_StartVideo(v3, a2);
      }

      else if (!strcmp(v5, "stopVideo"))
      {

        _AirPlayReceiverXPCClient_StopVideo(v3, a2);
      }

      else if (!strcmp(v5, "startAudio"))
      {

        _AirPlayReceiverXPCClient_StartAudio(v3, a2);
      }

      else if (!strcmp(v5, "stopAudio"))
      {

        _AirPlayReceiverXPCClient_StopAudio(v3, a2);
      }

      else if (!strcmp(v5, "updateAudioMetaData"))
      {

        _AirPlayReceiverXPCClient_UpdateAudioMetaData(v3, a2);
      }

      else if (!strcmp(v5, "updateAudioProgress"))
      {

        _AirPlayReceiverXPCClient_UpdateAudioProgress(v3, a2);
      }

      else if (!strcmp(v5, "detach"))
      {

        _AirPlayReceiverXPCClient_Detach(v3, a2);
      }

      else if (gLogCategory_AirPlayReceiverXPCClientCore <= 60 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverXPCClientCore, "void _AirPlayReceiverXPCClient_MessageHandler(AirPlayReceiverXPCClientRef, xpc_object_t)", 33554492, "### Unknown XPC function %s\n", v5);
      }

      return;
    }

    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    LODWORD(v43) = 0;
    if (gLogCategory_AirPlayReceiverXPCClientCore <= 40 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverXPCClientCore, "void _AirPlayReceiverXPCClient_ShowProgress(AirPlayReceiverXPCClientRef, xpc_object_t)", 33554472, "Showing presentation progress\n");
    }

    if (*(v3 + 32))
    {
      v25 = *(v3 + 8);
      block = MEMORY[0x277D85DD0];
      v59 = 3221225472;
      v60 = ___AirPlayReceiverXPCClient_ShowProgress_block_invoke;
      v61 = &unk_27989A308;
      v62 = &v40;
      v63 = v3;
      dispatch_sync(v25, &block);
    }

    else
    {
      APSLogErrorAt();
      *(v41 + 24) = -6745;
    }

    v26 = xpc_dictionary_create_reply(a2);
    xpc_dictionary_set_int64(v26, "error", *(v41 + 24));
    xpc_connection_send_message(*(v3 + 24), v26);
    xpc_release(v26);
    goto LABEL_51;
  }

  _AirPlayReceiverXPCClient_StopPresentation(v3, a2);
}

id ___AirPlayReceiverXPCClient_GetProperty_block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[8] + 32) airplayUIGetProperty:a1[4] qualifier:a1[5] error:*(a1[7] + 8) + 24];
  v2 = *(*(a1[6] + 8) + 40);

  return v2;
}

void *___AirPlayReceiverXPCClient_SetProperty_block_invoke(void *a1)
{
  result = [*(a1[8] + 32) airplayUISetProperty:a1[4] qualifier:a1[5] value:a1[6]];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

id ___AirPlayReceiverXPCClient_Perform_block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 24) = [*(a1[8] + 32) airplayUIPerform:a1[4] inputParams:a1[5] outputParams:*(a1[7] + 8) + 40];
  v2 = *(*(a1[7] + 8) + 40);

  return v2;
}

id ___AirPlayReceiverXPCClient_StartPresentation_block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = [*(a1[7] + 32) airplayUIStartPresentation:a1[4] outputParams:*(a1[6] + 8) + 40];
  v2 = *(*(a1[6] + 8) + 40);

  return v2;
}

void *___AirPlayReceiverXPCClient_ShowProgress_block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 40) + 32) airplayUIShowProgress];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void *___AirPlayReceiverXPCClient_UpdateAudioProgress_block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 40) + 32) airplayUIUpdateAudioProgress:*(a1 + 48) duration:*(a1 + 56)];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void *___AirPlayReceiverXPCClient_UpdateAudioMetaData_block_invoke(void *a1)
{
  result = [*(a1[6] + 32) airplayUIUpdateAudioMetaData:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

id ___AirPlayReceiverXPCClient_StartAudio_block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = [*(a1[7] + 32) airplayUIStartAudio:a1[4] outputParams:*(a1[6] + 8) + 40];
  v2 = *(*(a1[6] + 8) + 40);

  return v2;
}

id ___AirPlayReceiverXPCClient_StartVideo_block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = [*(a1[7] + 32) airplayUIStartVideo:a1[4] outputParams:*(a1[6] + 8) + 40];
  v2 = *(*(a1[6] + 8) + 40);

  return v2;
}

void *___AirPlayReceiverXPCClient_HideProgress_block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 40) + 32) airplayUIHideProgress];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __AirPlayReceiverXPCClient_PostEvent_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (strcmp(v2, "ended") && strcmp(v2, "error") && strcmp(v2, "failedURLRequest") && strcmp(v2, "loading") && strcmp(v2, "metaDataChanged") && strcmp(v2, "paused") && strcmp(v2, "playing"))
  {
    if (!strcmp(v2, "stopAudio"))
    {
      v5 = *(v3 + 60);
      goto LABEL_24;
    }

    if (strcmp(v2, "stopped"))
    {
      if (!strcmp(v2, "userDown") || !strcmp(v2, "userNext") || !strcmp(v2, "userPlayPause") || !strcmp(v2, "userPrevious") || !strcmp(v2, "userSelect") || !strcmp(v2, "userStop") || !strcmp(v2, "userUp"))
      {
        v5 = *(v3 + 64);
        goto LABEL_24;
      }

      if (strcmp(v2, "currentItemChanged") && strcmp(v2, "itemPlayedToEnd") && strcmp(v2, "itemRemoved") && strcmp(v2, "dateRange") && strcmp(v2, "fpsSecureStopGenerated"))
      {
        v18 = 0;
        goto LABEL_25;
      }
    }
  }

  v5 = *(v3 + 68);
LABEL_24:
  v18 = v5;
LABEL_25:
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "function", "postEvent");
  xpc_dictionary_set_string(v6, "eventType", v2);
  if (v4)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v4);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v8 = MutableCopy;
  if (!MutableCopy)
  {
    APSLogErrorAt();
    goto LABEL_40;
  }

  CFDictionarySetNumber();
  if (!strcmp(v2, "dateRange"))
  {
    Value = CFDictionaryGetValue(v4, @"dateRangeArray");
    if (Value)
    {
      v11 = Value;
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      CFArrayGetCount(v11);
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = ___AirPlayReceiverXPCClient_PostEvent_block_invoke;
      v16 = &__block_descriptor_40_e10_v16__0r_v8l;
      v17 = Mutable;
      CFArrayApplyBlock();
      if (Mutable)
      {
        CFDictionarySetValue(v8, @"dateRangeArray", Mutable);
      }

      goto LABEL_31;
    }

    if (gLogCategory_AirPlayReceiverXPCClientCore <= 90 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverXPCClientCore, "OSStatus _AirPlayReceiverXPCClient_PostEvent(AirPlayReceiverXPCClientRef, const char *, CFDictionaryRef)", 33554522, "### kMediaControlKey_DateRangeArray key is required\n", v18, v3);
    }
  }

  Mutable = 0;
LABEL_31:
  xpc_dictionary_set_cf_object();
  CFRelease(v8);
  if (gLogCategory_AirPlayReceiverXPCClientCore <= 40 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverXPCClientCore, "OSStatus _AirPlayReceiverXPCClient_PostEvent(AirPlayReceiverXPCClientRef, const char *, CFDictionaryRef)", 33554472, "Posting event for sessionID %d; client %{ptr}", v18, v3, v13, v14, v15, v16, v17);
  }

  xpc_connection_send_message(*(v3 + 24), v6);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_40:
  xpc_release(v6);
  free(*(a1 + 40));
  v12 = *(a1 + 48);
  if (v12)
  {
    CFRelease(v12);
  }
}

void ___AirPlayReceiverXPCClient_PostEvent_block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 propertyList];
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(*(a1 + 32), v4);

    CFRelease(v5);
  }

  else if (gLogCategory_AirPlayReceiverXPCClientCore <= 90 && (gLogCategory_AirPlayReceiverXPCClientCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverXPCClientCore, "OSStatus _AirPlayReceiverXPCClient_PostEvent(AirPlayReceiverXPCClientRef, const char *, CFDictionaryRef)_block_invoke", 33554522, "### [group propertyList] returned NULL for group %{ptr}\n", a2);
  }
}

@end