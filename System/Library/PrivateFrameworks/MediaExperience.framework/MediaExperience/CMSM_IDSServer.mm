@interface CMSM_IDSServer
- (CMSM_IDSServer)init;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
@end

@implementation CMSM_IDSServer

- (CMSM_IDSServer)init
{
  v6.receiver = self;
  v6.super_class = CMSM_IDSServer;
  v2 = [(CMSM_IDSServer *)&v6 init];
  v2->pIdsService = [objc_alloc(CMSM_GetIDSServiceClass()) initWithService:@"com.apple.private.alloy.cmsession"];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.cmsession.ids.server.dispatch", v3);
  v2->idsDispatchQueue = v4;
  [(IDSService *)v2->pIdsService addDelegate:v2 queue:v4];
  return v2;
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = [message objectForKey:{kMXSession_IDSMessage_TypeKey, account}];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocal() && v9 != kMXSession_IDSMessage_Type_BTDeviceConnectionStatusChanged && v9 != kMXSession_IDSMessage_Type_BTDeviceConnectionStatusReply)
  {
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (FigCFEqual())
  {
    outgoingResponseIdentifier = [context outgoingResponseIdentifier];
    v13 = CMSM_IDSConnection_CopyMXCoreSession(outgoingResponseIdentifier);
    if (cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_onceToken != -1)
    {
      [CMSM_IDSServer service:account:incomingMessage:fromID:context:];
    }

    if (!message)
    {
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v19 = [message objectForKey:kMXSession_IDSMessage_SessionWillPlayInfoKey];
    if (!v19)
    {
      v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v21 = [v19 objectForKey:@"AudioCategory"];
    if (!v21)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithString:@"MediaPlayback"];
    }

    v22 = [v19 objectForKey:@"AudioMode"];
    if (!v22)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithString:@"Default"];
    }

    v23 = [v19 objectForKey:?];
    if (!v23)
    {
      v23 = [MEMORY[0x1E696AD98] numberWithInt:0];
    }

    v24 = [v19 objectForKey:kMXSession_IDSMessage_HandoverInterruption];
    if (!v24)
    {
      v24 = [MEMORY[0x1E696AD98] numberWithBool:0];
    }

    v25 = [v19 objectForKey:@"ClientName"];
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = @"Unknown";
    }

    if (![v21 isEqualToString:cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_oldAudioCategory] || !objc_msgSend(v22, "isEqualToString:", cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_oldAudioMode) || !objc_msgSend(v23, "isEqualToNumber:", cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_oldClientPriority) || !objc_msgSend(v24, "isEqualToNumber:", cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_oldHandoverInterruption) || (-[__CFString isEqualToString:](v26, "isEqualToString:", cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_oldClientName) & 1) == 0)
    {
      CMSessionSetProperty(v13, @"DoesntActuallyPlayAudio", [MEMORY[0x1E696AD98] numberWithBool:0]);
      CMSessionSetProperty(v13, @"ClientName", [MEMORY[0x1E696AEC0] stringWithFormat:@"IDSMXCoreSession (%@)", v26]);
      CMSessionSetProperty(v13, @"IAmIDSMXCoreSession", [MEMORY[0x1E696AD98] numberWithBool:1]);
      CMSessionSetProperty(v13, @"AudioCategory", v21);
      CMSessionSetProperty(v13, @"AudioMode", v22);
      CMSessionSetProperty(v13, @"ClientPriority", v23);
      CMSessionSetProperty(v13, @"AudioHardwareControlFlags", [MEMORY[0x1E696AD98] numberWithUnsignedInt:0]);
      CMSessionSetProperty(v13, @"HandsOverInterruptionsToInterruptor", v24);
      CMSessionSetProperty(v13, @"DoesntActuallyPlayAudio", [MEMORY[0x1E696AD98] numberWithBool:1]);

      cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_oldAudioCategory = v21;
      cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_oldAudioMode = v22;

      cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_oldClientPriority = v23;
      cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_oldHandoverInterruption = v24;

      cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_oldClientName = v26;
    }

    v27 = CMSessionBeginInterruption(v13);
    v28 = CMSM_IDSClient_NotifyRemote_InterruptionDone(v27, outgoingResponseIdentifier);
    v30 = MXGetNotificationSenderQueue(v28, v29);
    v33 = MEMORY[0x1E69E9820];
    v34 = 3221225472;
    v35 = __cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_block_invoke_130;
    v36 = &__block_descriptor_40_e5_v8__0l;
    v37 = v13;
    MXDispatchAsync("cmsm_IDSServer_ProcessRemoteInterruptionStartMessage", "CMSessionManager_IDSServer.m", 306, 0, 0, v30, &v33);
  }

  else if (FigCFEqual())
  {
    Value = CFDictionaryGetValue(message, kMXSession_IDSMessage_IdentifierKey);
    MessagingQueue = CMSM_IDSConnection_GetMessagingQueue(Value, v16);
    v33 = MEMORY[0x1E69E9820];
    v34 = 3221225472;
    v35 = __cmsm_IDSServer_ProcessRemoteInterruptionDoneMessage_block_invoke;
    v36 = &__block_descriptor_40_e5_v8__0l;
    v37 = Value;
    MXDispatchSync("cmsm_IDSServer_ProcessRemoteInterruptionDoneMessage", "CMSessionManager_IDSServer.m", 323, 0, 0, MessagingQueue, &v33);
  }

  else if (FigCFEqual())
  {
    IsSharedAudioRouteConnectedToLocal = CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocal();
    CMSM_IDSClient_ReplyToRemote_BTDeviceConnectionStatus(IsSharedAudioRouteConnectedToLocal);
  }

  else if (FigCFEqual())
  {
    v31 = CFDictionaryGetValue(message, kMXSession_IDSMessage_BTDeviceIsConnectedKey) == *MEMORY[0x1E695E4D0];
    CMSM_IDSConnection_UpdateSharedAudioRouteIsConnectedToRemote(v31);
  }

  else if (FigCFEqual())
  {
    cmsm_IDSServer_ProcessBTDeviceConnectionStatusChangedMessage(message);
  }

  else if (FigCFEqual())
  {
    cmsm_IDSServer_ProcessRemotePlayingInfoQueryMessage();
  }

  else if (FigCFEqual())
  {
    cmsm_IDSServer_ProcessRemotePlayingInfoReplyMessage(message);
  }

  else if (FigCFEqual())
  {
    cmsm_IDSServer_ProcessLocalIsPlayingStartMessage(message);
  }

  else if (FigCFEqual())
  {
    cmsm_IDSServer_ProcessLocalIsPlayingDoneMessage(message);
  }

  else if (FigCFEqual())
  {
    cmsm_IDSServer_ProcessLocalIsDoingEndInterruption(message);
  }

  else if (FigCFEqual())
  {
    CMSM_IDSConnection_ResetRemotePlayingInfo();
    CMSM_IDSConnection_DeactivateIDSMXCoreSession(@"non-resumable.remoteDeviceIsBeingInitialized");
  }

  else if (FigCFEqual())
  {
    cmsm_IDSServer_ProcessUpdateSharedAudioRouteMacAddress(message);
  }
}

@end