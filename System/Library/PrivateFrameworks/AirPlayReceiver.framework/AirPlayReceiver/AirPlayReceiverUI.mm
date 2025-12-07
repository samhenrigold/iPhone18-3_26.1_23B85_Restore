@interface AirPlayReceiverUI
@end

@implementation AirPlayReceiverUI

void __AirPlayReceiverUI_GetShared_block_invoke()
{
  v0 = malloc_type_calloc(1uLL, 0xC8uLL, 0x10E00403FEE3558uLL);
  v1 = dispatch_queue_create("AirPlayReceiverUI", 0);
  *v0 = v1;
  dispatch_set_context(v1, v0);
  IsAppleTV();
  v2 = APSSettingsGetIntWithDefault() != 0;
  *(v0 + 40) = v2;
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50)
  {
    if (gLogCategory_AirPlayReceiverUIXPCServerCore == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_8:
        v2 = *(v0 + 40);
        goto LABEL_9;
      }

      v2 = *(v0 + 40);
    }

    if (v2)
    {
      v3 = "S";
    }

    else
    {
      v3 = "Not s";
    }

    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "AirPlayReceiverUIRef _AirPlayReceiverUI_Create(void)", 33554482, "%starting AirPlayReceiverUI server\n", v3);
    goto LABEL_8;
  }

LABEL_9:
  if (v2)
  {
    if (!v0[2])
    {
      mach_service = xpc_connection_create_mach_service("com.apple.airplay.receiver", *v0, 1uLL);
      v0[2] = mach_service;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = ___AirPlayReceiverUI_StartServer_block_invoke;
      handler[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
      handler[4] = v0;
      xpc_connection_set_event_handler(mach_service, handler);
      xpc_connection_resume(v0[2]);
      if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus _AirPlayReceiverUI_StartServer(AirPlayReceiverUIRef)", 33554462, "Started\n");
      }
    }
  }

  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "AirPlayReceiverUIRef _AirPlayReceiverUI_Create(void)", 33554462, "Created   %p\n", v0);
  }

  AirPlayReceiverUI_GetShared_ui = v0;
}

void ___AirPlayReceiverUI_StartServer_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 10 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "void _AirPlayReceiverUI_XPCListenerEventHandler(AirPlayReceiverUIRef, xpc_object_t)", 33554442, "Event\n%1{xpc}\n", a2);
  }

  if (*(v3 + 16))
  {
    v4 = MEMORY[0x23EF1BE90](a2);
    if (v4 != MEMORY[0x277D86450])
    {
      if (v4 == MEMORY[0x277D86480])
      {
        if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 60 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
        {
          xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
          LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "void _AirPlayReceiverUI_XPCListenerEventHandler(AirPlayReceiverUIRef, xpc_object_t)", 33554492, "### XPC listener error event: %s\n");
        }
      }

      else if (a2 == MEMORY[0x277D863F0] || a2 == MEMORY[0x277D863F8])
      {
        if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 60 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "void _AirPlayReceiverUI_XPCListenerEventHandler(AirPlayReceiverUIRef, xpc_object_t)", 33554492, "### Client unloaded or crashed\n");
        }

        xpc_connection_cancel(*(v3 + 32));
        xpc_release(*(v3 + 32));
        *(v3 + 32) = 0;

        _AirPlayReceiverUI_HandleServerReset(v3);
      }

      return;
    }

    v5 = *(v3 + 32);
    if (!v5)
    {
      goto LABEL_23;
    }

    if (gLogCategory_AirPlayReceiverUIXPCServerCore > 90)
    {
      goto LABEL_22;
    }

    if (gLogCategory_AirPlayReceiverUIXPCServerCore == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_21:
        v5 = *(v3 + 32);
        if (!v5)
        {
LABEL_23:
          xpc_retain(a2);
          *(v3 + 32) = a2;
          xpc_connection_set_target_queue(a2, *v3);
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 3221225472;
          handler[2] = ___AirPlayReceiverUI_XPCListenerEventHandler_block_invoke;
          handler[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
          handler[4] = v3;
          xpc_connection_set_event_handler(a2, handler);
          xpc_connection_resume(a2);
          *(v3 + 24) = 1;
          if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 40 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "void _AirPlayReceiverUI_XPCListenerEventHandler(AirPlayReceiverUIRef, xpc_object_t)", 33554472, "XPC connection started\n", v6);
          }

          return;
        }

LABEL_22:
        xpc_connection_cancel(v5);
        xpc_release(v5);
        *(v3 + 32) = 0;
        goto LABEL_23;
      }

      v5 = *(v3 + 32);
    }

    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "void _AirPlayReceiverUI_XPCListenerEventHandler(AirPlayReceiverUIRef, xpc_object_t)", 33554522, "### XPC Connection is not NULL (%p)", v5);
    goto LABEL_21;
  }

  APSLogErrorAt();
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 90 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "void _AirPlayReceiverUI_XPCListenerEventHandler(AirPlayReceiverUIRef, xpc_object_t)", 33554522, "### Listener connection is NULL\n%1{xpc}\n", a2);
  }
}

void ___AirPlayReceiverUI_XPCListenerEventHandler_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 10 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "void _AirPlayReceiverUI_XPCEventHandler(AirPlayReceiverUIRef, xpc_object_t)", 33554442, "Event\n%1{xpc}\n", a2);
  }

  if (!*(v3 + 32))
  {
    return;
  }

  if (a2 == MEMORY[0x277D863F0])
  {
    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 60 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "void _AirPlayReceiverUI_XPCEventHandler(AirPlayReceiverUIRef, xpc_object_t)", 33554492, "### Server process crashed\n");
    }

    goto LABEL_49;
  }

  if (a2 == MEMORY[0x277D863F8])
  {
    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 60 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "void _AirPlayReceiverUI_XPCEventHandler(AirPlayReceiverUIRef, xpc_object_t)", 33554492, "### Server unloaded\n");
    }

    xpc_connection_cancel(*(v3 + 32));
    xpc_release(*(v3 + 32));
    *(v3 + 32) = 0;
LABEL_49:

    _AirPlayReceiverUI_HandleServerReset(v3);
    return;
  }

  if (MEMORY[0x23EF1BE90](a2) != MEMORY[0x277D86468])
  {
    APSLogErrorAt();
    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 90 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "void _AirPlayReceiverUI_XPCEventHandler(AirPlayReceiverUIRef, xpc_object_t)", 33554522, "### Bad XPC event\n%1{xpc}\n", a2);
    }

    return;
  }

  string = xpc_dictionary_get_string(a2, "function");
  if (!string)
  {

    goto LABEL_87;
  }

  v5 = string;
  if (strcmp(string, "postEvent"))
  {
    if (!strcmp(v5, "ping"))
    {
      if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 10 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "void _AirPlayReceiverUI_XPCEventHandler(AirPlayReceiverUIRef, xpc_object_t)", 33554442, "Ping message received %p");
      }
    }

    else if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 60 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "void _AirPlayReceiverUI_XPCEventHandler(AirPlayReceiverUIRef, xpc_object_t)", 33554492, "### Unknown receiver UI function: %s\n");
    }

    return;
  }

  v6 = xpc_dictionary_get_string(a2, "eventType");
  if (!strcmp(v6, "ended"))
  {
    goto LABEL_42;
  }

  if (!strcmp(v6, "error"))
  {
    if (AirPlayReceiverUI_GetShared_once != -1)
    {
      dispatch_once(&AirPlayReceiverUI_GetShared_once, &__block_literal_global_2889);
    }

    v7 = AirPlayReceiverUI_GetShared_ui;
    v8 = [MEMORY[0x277CBEB38] dictionary];
    [v8 setObject:@"video" forKey:@"category"];
    v9 = xpc_dictionary_copy_cf_object();
    if (v9)
    {
      v10 = v9;
      v11 = CFGetTypeID(v9);
      if (v11 == CFDictionaryGetTypeID())
      {
        [v8 setObject:v10 forKey:@"error"];
        Value = CFDictionaryGetValue(v10, @"sessionID");
        if (Value)
        {
          [v8 setObject:Value forKey:@"sessionID"];
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = ___AirPlayReceiverUI_HandleErrorEvent_block_invoke;
        block[3] = &unk_278C60A58;
        block[4] = v8;
        block[5] = v7;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }

      else
      {
        APSLogErrorAt();
      }

      CFRelease(v10);
      return;
    }

LABEL_87:
    APSLogErrorAt();
    return;
  }

  if (!strcmp(v6, "failedURLRequest"))
  {

    _AirPlayReceiverUI_HandleFailedURLRequest(a2);
    return;
  }

  if (!strcmp(v6, "loading"))
  {
    goto LABEL_42;
  }

  if (!strcmp(v6, "metaDataChanged"))
  {

    _AirPlayReceiverUI_HandleMetaDataEvent(a2);
    return;
  }

  if (!strcmp(v6, "paused") || !strcmp(v6, "playing"))
  {
    goto LABEL_42;
  }

  if (!strcmp(v6, "stopAudio"))
  {

    _AirPlayReceiverUI_HandleAudioStop(v3, a2);
    return;
  }

  if (!strcmp(v6, "stopped"))
  {
LABEL_42:

    _AirPlayReceiverUI_HandleStateEvent(a2);
    return;
  }

  if (strcmp_prefix())
  {
    if (!strcmp(v6, "currentItemChanged"))
    {
LABEL_73:

      _AirPlayReceiverUI_HandlePlaylistEvent(a2);
      return;
    }

    if (strcmp(v6, "dateRange"))
    {
      if (strcmp(v6, "itemPlayedToEnd") && strcmp(v6, "itemRemoved"))
      {
        if (!strcmp(v6, "fpsSecureStopGenerated"))
        {

          _AirPlayReceiverUI_HandleFPSSecureStopGenerated(a2);
        }

        else
        {

          _AirPlayReceiverUI_HandleOtherEvent(a2);
        }

        return;
      }

      goto LABEL_73;
    }

    _AirPlayReceiverUI_HandleDateRangeEvent(a2);
  }

  else
  {

    _AirPlayReceiverUI_HandleUserEvent(a2);
  }
}

void ___AirPlayReceiverUI_HandleServerReset_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  v4 = *(v2 + 128);
  if (v3)
  {
    if (!v4)
    {
LABEL_12:
      if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50)
      {
        if (gLogCategory_AirPlayReceiverUIXPCServerCore == -1)
        {
          v6 = _LogCategory_Initialize();
          v2 = *(a1 + 32);
          if (!v6)
          {
            goto LABEL_16;
          }

          v3 = *(v2 + 112);
        }

        LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "void _AirPlayReceiverUI_HandleServerReset(AirPlayReceiverUIRef)_block_invoke", 33554482, "Stopped audio session %u, device 0x%llx because presentation server died.\n", v3, *(v2 + 104));
        v2 = *(a1 + 32);
      }

LABEL_16:
      *(v2 + 104) = 0;
      *(v2 + 112) = 0;
      goto LABEL_17;
    }
  }

  else if (!v4)
  {
    if (!*(v2 + 160))
    {
      goto LABEL_29;
    }

    goto LABEL_17;
  }

  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50)
  {
    if (gLogCategory_AirPlayReceiverUIXPCServerCore != -1)
    {
LABEL_7:
      LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "void _AirPlayReceiverUI_HandleServerReset(AirPlayReceiverUIRef)_block_invoke", 33554482, "Stopped presentation session %u, device 0x%llx because presentation server died.\n", v4, v4);
      v2 = *(a1 + 32);
      goto LABEL_11;
    }

    v5 = _LogCategory_Initialize();
    v2 = *(a1 + 32);
    if (v5)
    {
      v4 = *(v2 + 128);
      goto LABEL_7;
    }
  }

LABEL_11:
  _AirPlayReceiverUI_CleanupPresentation(v2, 0, 0);
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  if (v3)
  {
    goto LABEL_12;
  }

LABEL_17:
  if (*(v2 + 160))
  {
    if (*(v2 + 176))
    {
      v7 = *(v2 + 48);
      if (v7)
      {
        do
        {
          (v7[2])("stopPlayingOverP2P", 0, v7[3]);
          v7 = *v7;
        }

        while (v7);
        v2 = *(a1 + 32);
      }

      *(v2 + 176) = 0;
    }

    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50)
    {
      if (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || (v8 = _LogCategory_Initialize(), v2 = *(a1 + 32), v8))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "void _AirPlayReceiverUI_HandleServerReset(AirPlayReceiverUIRef)_block_invoke", 33554482, "Stopped video session %u, device 0x%llx because presentation server died.\n", *(v2 + 160), *(v2 + 152));
        v2 = *(a1 + 32);
      }
    }

    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
    *(v2 + 164) = 0;
    *(v2 + 168) = 0;
    v2 = *(a1 + 32);
  }

  _AirPlayReceiverUI_ActiveSessionsStopped(v2);
  v2 = *(a1 + 32);
LABEL_29:
  v9 = *(v2 + 48);
  if (v9)
  {
    do
    {
      (v9[2])("serverDied", 0, v9[3]);
      v9 = *v9;
    }

    while (v9);
    v2 = *(a1 + 32);
  }

  v10 = *v2;

  dispatch_release(v10);
}

void ___AirPlayReceiverUI_SendMessageWithReplySync_block_invoke(void *a1)
{
  if (*(a1[8] + 24))
  {
    *(*(a1[6] + 8) + 24) = 0;
  }

  if (*(*(a1[6] + 8) + 24))
  {
    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus _AirPlayReceiverUI_SendMessageWithReplySync(AirPlayReceiverUIRef, xpc_object_t, xpc_object_t *)_block_invoke", 33554482, "### Could not post message, no connection: \n%1{xpc}\n", a1[4]);
    }

    v2 = a1[5];

    dispatch_semaphore_signal(v2);
  }

  else
  {
    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus _AirPlayReceiverUI_SendMessageWithReplySync(AirPlayReceiverUIRef, xpc_object_t, xpc_object_t *)_block_invoke", 33554462, "Posting message");
    }

    v3 = a1[8];
    v4 = *(v3 + 32);
    v5 = *v3;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = ___AirPlayReceiverUI_SendMessageWithReplySync_block_invoke_2;
    handler[3] = &unk_278C5FFF8;
    v6 = a1[7];
    v7 = a1[4];
    handler[4] = a1[5];
    handler[5] = v6;
    xpc_connection_send_message_with_reply(v4, v7, v5, handler);
    *(*(a1[6] + 8) + 24) = 0;
  }
}

intptr_t ___AirPlayReceiverUI_SendMessageWithReplySync_block_invoke_2(uint64_t a1, xpc_object_t object)
{
  xpc_retain(object);
  *(*(*(a1 + 40) + 8) + 40) = object;
  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

uint64_t ___AirPlayReceiverUI_HandleErrorEvent_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 184);
  if (v2)
  {
    return v2(*(v1 + 192), *(result + 32));
  }

  return result;
}

uint64_t ___AirPlayReceiverUI_HandleOtherEvent_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 184);
  if (v2)
  {
    return v2(*(v1 + 192), *(result + 32));
  }

  return result;
}

void ___AirPlayReceiverUI_HandleFPSSecureStopGenerated_block_invoke(uint64_t a1)
{
  if (AirPlayReceiverUI_GetShared_once != -1)
  {
    dispatch_once(&AirPlayReceiverUI_GetShared_once, &__block_literal_global_2889);
  }

  v2 = *(a1 + 32);
  v3 = *(AirPlayReceiverUI_GetShared_ui + 48);
  if (v3)
  {
    do
    {
      (v3[2])("FPSSecureStopGenerated", v2, v3[3]);
      v3 = *v3;
    }

    while (v3);
    v2 = *(a1 + 32);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t ___AirPlayReceiverUI_HandleDateRangeEvent_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 184);
  if (v2)
  {
    return v2(*(v1 + 192), *(result + 32));
  }

  return result;
}

uint64_t ___AirPlayReceiverUI_HandlePlaylistEvent_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 184);
  if (v2)
  {
    return v2(*(v1 + 192), *(result + 32));
  }

  return result;
}

void ___AirPlayReceiverUI_HandleUserEvent_block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }

  if ([*(a1 + 40) count])
  {
    v2 = *(a1 + 48);
    v3 = *(v2 + 184);
    if (v3)
    {
      v3(*(v2 + 192), *(a1 + 40));
    }
  }

  if (*(a1 + 56))
  {
    if (AirPlayReceiverUI_GetShared_once != -1)
    {
      dispatch_once(&AirPlayReceiverUI_GetShared_once, &__block_literal_global_2889);
    }

    for (i = *(AirPlayReceiverUI_GetShared_ui + 48); i; i = *i)
    {
      (i[2])("userStop", 0, i[3]);
    }
  }
}

void ___AirPlayReceiverUI_HandleAudioStop_block_invoke(uint64_t a1)
{
  _AirPlayReceiverUI_NotifyObserversF(*(a1 + 32), "stopAudio", "{%kO=%i}", @"sessionID", *(a1 + 40));
  v2 = **(a1 + 32);

  dispatch_release(v2);
}

uint64_t ___AirPlayReceiverUI_HandleMetaDataEvent_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 184);
  if (v2)
  {
    return v2(*(v1 + 192), *(result + 32));
  }

  return result;
}

uint64_t ___AirPlayReceiverUI_HandleFailedURLRequest_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 184);
  if (v2)
  {
    return v2(*(v1 + 192), *(result + 32));
  }

  return result;
}

uint64_t ___AirPlayReceiverUI_HandleStateEvent_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 184);
  if (v2)
  {
    return v2(*(v1 + 192), *(result + 32));
  }

  return result;
}

@end