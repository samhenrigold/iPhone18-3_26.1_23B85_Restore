@interface AVVoiceTriggerClient
+ (BOOL)isAPIAvailable;
+ (BOOL)supportsDuckingOnSpeakerOutput;
+ (id)sharedInstance:(int64_t)instance;
- (BOOL)speakerStateActive;
- (BOOL)speakerStateMuted;
- (NSXPCConnection)voiceTriggerServerConnection;
- (id)activateSecureSession:(BOOL)session;
- (id)init:(int64_t)init;
- (id)recordingPIDList;
- (unint64_t)voiceTriggerPastDataFramesAvailable;
- (void)callServerCrashedBlock;
- (void)callServerResetBlock;
- (void)closeServerConnection;
- (void)dealloc;
- (void)enableBargeInMode:(BOOL)mode completionBlock:(id)block;
- (void)enableListeningOnPorts:(id)ports completionBlock:(id)block;
- (void)enableSpeakerStateListening:(BOOL)listening;
- (void)enableSpeakerStateListening:(BOOL)listening completionBlock:(id)block;
- (void)enableVoiceTriggerListening:(BOOL)listening;
- (void)enableVoiceTriggerListening:(BOOL)listening completionBlock:(id)block;
- (void)getInputChannelInfoCompletion:(id)completion;
- (void)listeningEnabledCompletionBlock:(id)block;
- (void)portStateActiveCompletionBlock:(id)block;
- (void)portStateChangedNotification:(id)notification;
- (void)removeAudioServerUpNotificationHandler;
- (void)setAVVCServerCrashedBlock:(id)block;
- (void)setAVVCServerResetBlock:(id)block;
- (void)setAggressiveECMode:(BOOL)mode completionBlock:(id)block;
- (void)setAudioServerUpNotificationHandler;
- (void)setListeningProperty:(BOOL)property completionBlock:(id)block;
- (void)siriClientRecordStateChangedNotification:(BOOL)notification recordingCount:(unint64_t)count;
- (void)siriClientsRecordingCompletionBlock:(id)block;
- (void)speakerMuteStateChangedNotification:(BOOL)notification;
- (void)speakerStateActiveCompletionBlock:(id)block;
- (void)speakerStateChangedNotification:(id)notification;
- (void)speakerStateMutedCompletionBlock:(id)block;
- (void)updateVoiceTriggerConfiguration:(id)configuration completionBlock:(id)block;
- (void)voiceTriggerNotification:(id)notification;
- (void)voiceTriggerPastDataFramesAvailableCompletion:(id)completion;
@end

@implementation AVVoiceTriggerClient

+ (BOOL)isAPIAvailable
{
  if (+[AVVoiceTriggerClient isAPIAvailable]::once != -1)
  {
    dispatch_once(&+[AVVoiceTriggerClient isAPIAvailable]::once, &__block_literal_global_8438);
  }

  return gHasBorealisXPC;
}

- (NSXPCConnection)voiceTriggerServerConnection
{
  v20 = *MEMORY[0x1E69E9840];
  if (!+[AVVoiceTriggerClient isAPIAvailable])
  {
    v5 = 0;
    goto LABEL_13;
  }

  voiceTriggerServerConnection = self->_voiceTriggerServerConnection;
  if (!voiceTriggerServerConnection)
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
LABEL_11:
        v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.audio.voicetrigger.xpc" options:4096];
        v8 = self->_voiceTriggerServerConnection;
        self->_voiceTriggerServerConnection = v7;

        v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F386CE28];
        [(NSXPCConnection *)self->_voiceTriggerServerConnection setRemoteObjectInterface:v9];

        v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38698B0];
        [(NSXPCConnection *)self->_voiceTriggerServerConnection setExportedInterface:v10];

        v11 = objc_alloc_init(AVVoiceTriggerNotificationForwarder);
        [(AVVoiceTriggerNotificationForwarder *)v11 setTarget:self];
        [(NSXPCConnection *)self->_voiceTriggerServerConnection setExportedObject:v11];
        objc_initWeak(buf, self);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __52__AVVoiceTriggerClient_voiceTriggerServerConnection__block_invoke;
        v14[3] = &unk_1E7EF6678;
        objc_copyWeak(&v15, buf);
        [(NSXPCConnection *)self->_voiceTriggerServerConnection setInterruptionHandler:v14];
        [(NSXPCConnection *)self->_voiceTriggerServerConnection resume];
        v12 = [(NSXPCConnection *)self->_voiceTriggerServerConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_179];
        [v12 initializeWithReply:&__block_literal_global_182];

        objc_destroyWeak(&v15);
        objc_destroyWeak(buf);

        voiceTriggerServerConnection = self->_voiceTriggerServerConnection;
        goto LABEL_12;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v17 = "AVVoiceTriggerClient.mm";
      v18 = 1024;
      v19 = 1698;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d VoiceTrigger XPC connection is nil - first time - creating the connection", buf, 0x12u);
    }

    goto LABEL_11;
  }

LABEL_12:
  v5 = voiceTriggerServerConnection;
LABEL_13:

  return v5;
}

+ (BOOL)supportsDuckingOnSpeakerOutput
{
  v12 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    v2 = MGGetBoolAnswer();
  }

  else
  {
    v2 = 0;
  }

  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      return v2;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "AVVCUtils.mm";
    v8 = 1024;
    v9 = 938;
    v10 = 1024;
    v11 = v2;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IsSpeakerDuckingProduct(%d)", &v6, 0x18u);
  }

  return v2;
}

- (void)siriClientRecordStateChangedNotification:(BOOL)notification recordingCount:(unint64_t)count
{
  notificationCopy = notification;
  v20 = *MEMORY[0x1E69E9840];
  if (!+[AVVoiceTriggerClient isAPIAvailable])
  {
    return;
  }

  if (!kAVVCScope)
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
    goto LABEL_6;
  }

  v7 = *kAVVCScope;
  if (v7)
  {
LABEL_6:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315906;
      v13 = "AVVoiceTriggerClient.mm";
      v14 = 1024;
      v15 = 2818;
      v16 = 1024;
      v17 = notificationCopy;
      v18 = 1024;
      countCopy = count;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d siri client record state changed. starting(%d), recordingCount(%u)", &v12, 0x1Eu);
    }
  }

  siriClientRecordStateChangedBlock = self->_siriClientRecordStateChangedBlock;
  if (siriClientRecordStateChangedBlock)
  {
    siriClientRecordStateChangedBlock[2](siriClientRecordStateChangedBlock, notificationCopy, count);
    return;
  }

  if (kAVVCScope)
  {
    v10 = *kAVVCScope;
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "AVVoiceTriggerClient.mm";
    v14 = 1024;
    v15 = 2823;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d siri client record state changed but no block set", &v12, 0x12u);
  }
}

- (void)portStateChangedNotification:(id)notification
{
  v16 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  if (!+[AVVoiceTriggerClient isAPIAvailable])
  {
    goto LABEL_18;
  }

  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "AVVoiceTriggerClient.mm";
    v12 = 1024;
    v13 = 2801;
    v14 = 2112;
    v15 = notificationCopy;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d port state changed : %@", &v10, 0x1Cu);
  }

LABEL_9:
  portStateChangedBlock = self->_portStateChangedBlock;
  if (portStateChangedBlock)
  {
    portStateChangedBlock[2](portStateChangedBlock, notificationCopy);
  }

  else
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "AVVoiceTriggerClient.mm";
      v12 = 1024;
      v13 = 2806;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d port state changed but no block set", &v10, 0x12u);
    }
  }

LABEL_18:
}

- (void)speakerMuteStateChangedNotification:(BOOL)notification
{
  notificationCopy = notification;
  v16 = *MEMORY[0x1E69E9840];
  if (!+[AVVoiceTriggerClient isAPIAvailable])
  {
    return;
  }

  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
    goto LABEL_6;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
LABEL_6:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315650;
      v11 = "AVVoiceTriggerClient.mm";
      v12 = 1024;
      v13 = 2783;
      v14 = 1024;
      v15 = notificationCopy;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d speaker mute changed : %d", &v10, 0x18u);
    }
  }

  speakerMuteStateChangedBlock = self->_speakerMuteStateChangedBlock;
  if (speakerMuteStateChangedBlock)
  {
    speakerMuteStateChangedBlock[2](speakerMuteStateChangedBlock, notificationCopy);
    return;
  }

  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "AVVoiceTriggerClient.mm";
    v12 = 1024;
    v13 = 2788;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d speaker mute changed but no block set", &v10, 0x12u);
  }
}

- (void)speakerStateChangedNotification:(id)notification
{
  v16 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  if (!+[AVVoiceTriggerClient isAPIAvailable])
  {
    goto LABEL_18;
  }

  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315650;
    v11 = "AVVoiceTriggerClient.mm";
    v12 = 1024;
    v13 = 2764;
    v14 = 2112;
    v15 = notificationCopy;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d speaker state changed : %@", &v10, 0x1Cu);
  }

LABEL_9:
  speakerStateChangedBlock = self->_speakerStateChangedBlock;
  if (speakerStateChangedBlock)
  {
    speakerStateChangedBlock[2](speakerStateChangedBlock, notificationCopy);
  }

  else
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "AVVoiceTriggerClient.mm";
      v12 = 1024;
      v13 = 2769;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d speaker state changed but no block set", &v10, 0x12u);
    }
  }

LABEL_18:
}

- (void)voiceTriggerNotification:(id)notification
{
  v17 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  if (!+[AVVoiceTriggerClient isAPIAvailable])
  {
    goto LABEL_25;
  }

  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
    goto LABEL_6;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
LABEL_6:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315650;
      v12 = "AVVoiceTriggerClient.mm";
      v13 = 1024;
      v14 = 2744;
      v15 = 2112;
      v16 = notificationCopy;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d voice trigger occured : %@", &v11, 0x1Cu);
    }
  }

  if (self->_voiceTriggerBlock)
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
LABEL_20:
        (*(self->_voiceTriggerBlock + 2))();
        goto LABEL_25;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "AVVoiceTriggerClient.mm";
      v13 = 1024;
      v14 = 2746;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d voice trigger occured, calling block", &v11, 0x12u);
    }

    goto LABEL_20;
  }

  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "AVVoiceTriggerClient.mm";
    v13 = 1024;
    v14 = 2750;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d voice trigger occured but no block set", &v11, 0x12u);
  }

LABEL_25:
}

- (id)activateSecureSession:(BOOL)session
{
  v24 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__8283;
  v18 = __Block_byref_object_dispose__8284;
  v19 = 0;
  if (isHACProduct())
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__AVVoiceTriggerClient_activateSecureSession___block_invoke;
    block[3] = &unk_1E7EF68F0;
    sessionCopy = session;
    block[4] = self;
    block[5] = &v14;
    dispatch_sync(workQueue, block);
    goto LABEL_10;
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11794 userInfo:0];
  v7 = v15[5];
  v15[5] = v6;

  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "AVVoiceTriggerClient.mm";
    v22 = 1024;
    v23 = 2724;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Operation not supported on this platform", buf, 0x12u);
  }

LABEL_10:
  v10 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v10;
}

void __46__AVVoiceTriggerClient_activateSecureSession___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) voiceTriggerServerConnection];
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "deactivate";
    v6 = *(a1 + 48);
    v16 = "AVVoiceTriggerClient.mm";
    *buf = 136315650;
    if (v6)
    {
      v5 = "activate";
    }

    v17 = 1024;
    v18 = 2704;
    v19 = 2080;
    v20 = v5;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d activateSecureSession: %s", buf, 0x1Cu);
  }

LABEL_10:
  if (!v2)
  {
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
LABEL_19:
        v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11792 userInfo:0];
        v12 = *(*(a1 + 40) + 8);
        v7 = *(v12 + 40);
        *(v12 + 40) = v11;
        goto LABEL_20;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "AVVoiceTriggerClient.mm";
      v17 = 1024;
      v18 = 2717;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d activateSecureSession: couldn't connect to server", buf, 0x12u);
    }

    goto LABEL_19;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__AVVoiceTriggerClient_activateSecureSession___block_invoke_237;
  v14[3] = &unk_1E7EF68C8;
  v14[4] = *(a1 + 40);
  v7 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v8 = *(a1 + 48);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__AVVoiceTriggerClient_activateSecureSession___block_invoke_238;
  v13[3] = &unk_1E7EF68C8;
  v13[4] = *(a1 + 40);
  [v7 activateSecureSession:v8 reply:v13];
LABEL_20:
}

void __46__AVVoiceTriggerClient_activateSecureSession___block_invoke_237(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  v6 = v4;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [v3 code];
    v8 = [v3 localizedDescription];
    v11 = 136315906;
    v12 = "AVVoiceTriggerClient.mm";
    v13 = 1024;
    v14 = 2707;
    v15 = 2048;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ProxyErrorHandler: activateSecureSession error handler : %ld (%@)", &v11, 0x26u);
  }

LABEL_8:
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v3;
}

void __46__AVVoiceTriggerClient_activateSecureSession___block_invoke_238(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    v6 = v4;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [v3 code];
      v8 = [v3 localizedDescription];
      v11 = 136315906;
      v12 = "AVVoiceTriggerClient.mm";
      v13 = 1024;
      v14 = 2711;
      v15 = 2048;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d activateSecureSession returned error %ld (%@)", &v11, 0x26u);
    }
  }

LABEL_9:
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v3;
}

- (id)recordingPIDList
{
  v5 = *MEMORY[0x1E69E9840];
  ElapsedTime::ElapsedTime(v4, "[AVVoiceTriggerClient recordingPIDList]", 0, 0);
  v2 = GetRecordingAppsList();
  ElapsedTime::~ElapsedTime(v4);

  return v2;
}

- (void)setAggressiveECMode:(BOOL)mode completionBlock:(id)block
{
  blockCopy = block;
  TraceMethod::TraceMethod(v12, "setAggressiveECMode:completionBlock:");
  if (+[AVVoiceTriggerClient isAPIAvailable])
  {
    workQueue = self->_workQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__AVVoiceTriggerClient_setAggressiveECMode_completionBlock___block_invoke;
    v9[3] = &unk_1E7EF67D8;
    v9[4] = self;
    modeCopy = mode;
    v10 = blockCopy;
    dispatch_async(workQueue, v9);
  }

  else if (blockCopy)
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11794 userInfo:0];
    (*(blockCopy + 2))(blockCopy, v8);
  }

  TraceMethod::~TraceMethod(v12);
}

void __60__AVVoiceTriggerClient_setAggressiveECMode_completionBlock___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) voiceTriggerServerConnection];
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "Disable";
    v6 = *(a1 + 48);
    v19 = "AVVoiceTriggerClient.mm";
    *buf = 136315650;
    if (v6)
    {
      v5 = "Enable";
    }

    v20 = 1024;
    v21 = 2626;
    v22 = 2080;
    v23 = v5;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setAggressiveECMode: %s", buf, 0x1Cu);
  }

LABEL_10:
  if (v2)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60__AVVoiceTriggerClient_setAggressiveECMode_completionBlock___block_invoke_233;
    v15[3] = &unk_1E7EF67B0;
    v17 = *(a1 + 48);
    v16 = *(a1 + 40);
    v7 = [v2 remoteObjectProxyWithErrorHandler:v15];
    v8 = *(a1 + 48);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__AVVoiceTriggerClient_setAggressiveECMode_completionBlock___block_invoke_234;
    v12[3] = &unk_1E7EF67B0;
    v14 = v8;
    v13 = *(a1 + 40);
    [v7 setAggressiveECMode:v8 reply:v12];

    v9 = v16;
LABEL_21:

    goto LABEL_22;
  }

  if (kAVVCScope)
  {
    v10 = *kAVVCScope;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v19 = "AVVoiceTriggerClient.mm";
    v20 = 1024;
    v21 = 2643;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d setAggressiveECMode: couldn't connect to server", buf, 0x12u);
  }

LABEL_19:
  if (*(a1 + 40))
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11792 userInfo:0];
    (*(*(a1 + 40) + 16))();
    goto LABEL_21;
  }

LABEL_22:
}

void __60__AVVoiceTriggerClient_setAggressiveECMode_completionBlock___block_invoke_233(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  v6 = v4;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    if (*(a1 + 40))
    {
      v7 = "enable";
    }

    else
    {
      v7 = "disable";
    }

    v8 = [v3 code];
    v9 = [v3 localizedDescription];
    v11 = 136316162;
    v12 = "AVVoiceTriggerClient.mm";
    v13 = 1024;
    v14 = 2629;
    v15 = 2080;
    v16 = v7;
    v17 = 2048;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ProxyErrorHandler: setAggressiveECMode (%s) error handler : %ld (%@)", &v11, 0x30u);
  }

LABEL_11:
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v3);
  }
}

void __60__AVVoiceTriggerClient_setAggressiveECMode_completionBlock___block_invoke_234(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    v5 = v4;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 40))
      {
        v7 = "enable";
      }

      else
      {
        v7 = "disable";
      }

      v8 = [v3 code];
      v9 = [v3 localizedDescription];
      v14 = 136316162;
      v15 = "AVVoiceTriggerClient.mm";
      v16 = 1024;
      v17 = 2634;
      v18 = 2080;
      v19 = v7;
      v20 = 2048;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d setAggressiveECMode: (%s) reply error : %ld (%@)", &v14, 0x30u);
    }

LABEL_20:
    goto LABEL_21;
  }

  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
LABEL_16:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "Disabled";
      v12 = *(a1 + 40);
      v15 = "AVVoiceTriggerClient.mm";
      v14 = 136315650;
      if (v12)
      {
        v11 = "Enabled";
      }

      v16 = 1024;
      v17 = 2636;
      v18 = 2080;
      v19 = v11;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s listening property - Success", &v14, 0x1Cu);
    }

    goto LABEL_20;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
    goto LABEL_16;
  }

LABEL_21:
  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, v3);
  }
}

- (void)siriClientsRecordingCompletionBlock:(id)block
{
  blockCopy = block;
  TraceMethod::TraceMethod(v9, "siriClientRunningCountCompletionBlock:");
  if (+[AVVoiceTriggerClient isAPIAvailable])
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__AVVoiceTriggerClient_siriClientsRecordingCompletionBlock___block_invoke;
    block[3] = &unk_1E7EF6710;
    block[4] = self;
    v8 = blockCopy;
    dispatch_async(workQueue, block);
  }

  else if (blockCopy)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11794 userInfo:0];
    (*(blockCopy + 2))(blockCopy, 0, v6);
  }

  TraceMethod::~TraceMethod(v9);
}

void __60__AVVoiceTriggerClient_siriClientsRecordingCompletionBlock___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) voiceTriggerServerConnection];
  if (v2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__AVVoiceTriggerClient_siriClientsRecordingCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7EF66C0;
    v10 = *(a1 + 40);
    v3 = [v2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__AVVoiceTriggerClient_siriClientsRecordingCompletionBlock___block_invoke_230;
    v7[3] = &unk_1E7EF68A0;
    v8 = *(a1 + 40);
    [v3 siriClientsRecordingReply:v7];

    v4 = v10;
LABEL_12:

    goto LABEL_13;
  }

  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v12 = "AVVoiceTriggerClient.mm";
    v13 = 1024;
    v14 = 2596;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d serverConnection is nil - no xpc connection established", buf, 0x12u);
  }

LABEL_10:
  if (*(a1 + 40))
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11792 userInfo:0];
    (*(*(a1 + 40) + 16))();
    goto LABEL_12;
  }

LABEL_13:
}

void __60__AVVoiceTriggerClient_siriClientsRecordingCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  v6 = v4;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [v3 code];
    v8 = [v3 localizedDescription];
    v10 = 136315906;
    v11 = "AVVoiceTriggerClient.mm";
    v12 = 1024;
    v13 = 2582;
    v14 = 2048;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ProxyErrorHandler: siriClientRunningCount returned error : %ld (%@)", &v10, 0x26u);
  }

LABEL_8:
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, 0, v3);
  }
}

void __60__AVVoiceTriggerClient_siriClientsRecordingCompletionBlock___block_invoke_230(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    v7 = v6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [v5 code];
      v10 = [v5 localizedDescription];
      v13 = 136315906;
      v14 = "AVVoiceTriggerClient.mm";
      v15 = 1024;
      v16 = 2587;
      v17 = 2048;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d siriClientRunningCount returned error : %ld (%@)", &v13, 0x26u);
    }

LABEL_15:
    goto LABEL_16;
  }

  if (!kAVVCScope)
  {
    v7 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
LABEL_13:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315394;
      v14 = "AVVoiceTriggerClient.mm";
      v15 = 1024;
      v16 = 2589;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d siriClientRunningCount - Success", &v13, 0x12u);
    }

    goto LABEL_15;
  }

  v7 = *kAVVCScope;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))(v12, a2, v5);
  }
}

- (void)listeningEnabledCompletionBlock:(id)block
{
  blockCopy = block;
  TraceMethod::TraceMethod(v9, "listeningEnabledCompletionBlock:");
  if (+[AVVoiceTriggerClient isAPIAvailable])
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__AVVoiceTriggerClient_listeningEnabledCompletionBlock___block_invoke;
    block[3] = &unk_1E7EF6710;
    block[4] = self;
    v8 = blockCopy;
    dispatch_async(workQueue, block);
  }

  else if (blockCopy)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11794 userInfo:0];
    (*(blockCopy + 2))(blockCopy, 0, v6);
  }

  TraceMethod::~TraceMethod(v9);
}

void __56__AVVoiceTriggerClient_listeningEnabledCompletionBlock___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) voiceTriggerServerConnection];
  if (v2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__AVVoiceTriggerClient_listeningEnabledCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7EF66C0;
    v10 = *(a1 + 40);
    v3 = [v2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__AVVoiceTriggerClient_listeningEnabledCompletionBlock___block_invoke_228;
    v7[3] = &unk_1E7EF6800;
    v8 = *(a1 + 40);
    [v3 listeningEnabledReply:v7];

    v4 = v10;
LABEL_12:

    goto LABEL_13;
  }

  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v12 = "AVVoiceTriggerClient.mm";
    v13 = 1024;
    v14 = 2542;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d serverConnection is nil - no xpc connection established", buf, 0x12u);
  }

LABEL_10:
  if (*(a1 + 40))
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11792 userInfo:0];
    (*(*(a1 + 40) + 16))();
    goto LABEL_12;
  }

LABEL_13:
}

void __56__AVVoiceTriggerClient_listeningEnabledCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  v6 = v4;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [v3 code];
    v8 = [v3 localizedDescription];
    v10 = 136315906;
    v11 = "AVVoiceTriggerClient.mm";
    v12 = 1024;
    v13 = 2528;
    v14 = 2048;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ProxyErrorHandler: listeningEnabled returned error : %ld (%@)", &v10, 0x26u);
  }

LABEL_8:
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, 0, v3);
  }
}

void __56__AVVoiceTriggerClient_listeningEnabledCompletionBlock___block_invoke_228(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    v7 = v6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [v5 code];
      v10 = [v5 localizedDescription];
      v13 = 136315906;
      v14 = "AVVoiceTriggerClient.mm";
      v15 = 1024;
      v16 = 2533;
      v17 = 2048;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d listeningEnabled returned error : %ld (%@)", &v13, 0x26u);
    }

LABEL_15:
    goto LABEL_16;
  }

  if (!kAVVCScope)
  {
    v7 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
LABEL_13:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315394;
      v14 = "AVVoiceTriggerClient.mm";
      v15 = 1024;
      v16 = 2535;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d listeningEnabled - Success", &v13, 0x12u);
    }

    goto LABEL_15;
  }

  v7 = *kAVVCScope;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))(v12, a2, v5);
  }
}

- (void)updateVoiceTriggerConfiguration:(id)configuration completionBlock:(id)block
{
  configurationCopy = configuration;
  blockCopy = block;
  TraceMethod::TraceMethod(v13, "updateVoiceTriggerConfiguration:completionBlock:");
  if (+[AVVoiceTriggerClient isAPIAvailable])
  {
    workQueue = self->_workQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __72__AVVoiceTriggerClient_updateVoiceTriggerConfiguration_completionBlock___block_invoke;
    v10[3] = &unk_1E7EF6878;
    v10[4] = self;
    v12 = blockCopy;
    v11 = configurationCopy;
    dispatch_async(workQueue, v10);
  }

  else if (blockCopy)
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11794 userInfo:0];
    (*(blockCopy + 2))(blockCopy, v9);
  }

  TraceMethod::~TraceMethod(v13);
}

void __72__AVVoiceTriggerClient_updateVoiceTriggerConfiguration_completionBlock___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) voiceTriggerServerConnection];
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "AVVoiceTriggerClient.mm";
    v18 = 1024;
    v19 = 2438;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d updateVoiceTriggerConfiguration:", buf, 0x12u);
  }

LABEL_8:
  if (v2)
  {
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
LABEL_19:
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __72__AVVoiceTriggerClient_updateVoiceTriggerConfiguration_completionBlock___block_invoke_225;
        v14[3] = &unk_1E7EF66C0;
        v15 = *(a1 + 48);
        v8 = [v2 remoteObjectProxyWithErrorHandler:v14];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __72__AVVoiceTriggerClient_updateVoiceTriggerConfiguration_completionBlock___block_invoke_226;
        v12[3] = &unk_1E7EF66C0;
        v9 = *(a1 + 40);
        v13 = *(a1 + 48);
        [v8 updateVoiceTriggerConfiguration:v9 reply:v12];

        v10 = v15;
LABEL_26:

        goto LABEL_27;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v17 = "AVVoiceTriggerClient.mm";
      v18 = 1024;
      v19 = 2440;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d sending config data to updateVoiceTriggerConfiguration", buf, 0x12u);
    }

    goto LABEL_19;
  }

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v17 = "AVVoiceTriggerClient.mm";
    v18 = 1024;
    v19 = 2456;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d updateVoiceTriggerConfiguration: couldn't connect to server", buf, 0x12u);
  }

LABEL_24:
  if (*(a1 + 48))
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11792 userInfo:0];
    (*(*(a1 + 48) + 16))();
    goto LABEL_26;
  }

LABEL_27:
}

void __72__AVVoiceTriggerClient_updateVoiceTriggerConfiguration_completionBlock___block_invoke_225(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  v6 = v4;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [v3 code];
    v8 = [v3 localizedDescription];
    v10 = 136315906;
    v11 = "AVVoiceTriggerClient.mm";
    v12 = 1024;
    v13 = 2442;
    v14 = 2048;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ProxyErrorHandler: updateVoiceTriggerConfiguration: error handler : %ld (%@)", &v10, 0x26u);
  }

LABEL_8:
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }
}

void __72__AVVoiceTriggerClient_updateVoiceTriggerConfiguration_completionBlock___block_invoke_226(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    v5 = v4;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [v3 code];
      v8 = [v3 localizedDescription];
      v11 = 136315906;
      v12 = "AVVoiceTriggerClient.mm";
      v13 = 1024;
      v14 = 2447;
      v15 = 2048;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d updateVoiceTriggerConfiguration reply error : %ld (%@)", &v11, 0x26u);
    }

LABEL_15:
    goto LABEL_16;
  }

  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
LABEL_13:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315394;
      v12 = "AVVoiceTriggerClient.mm";
      v13 = 1024;
      v14 = 2449;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Update VoiceTrigger configuration successful", &v11, 0x12u);
    }

    goto LABEL_15;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_16:
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v3);
  }
}

- (void)enableBargeInMode:(BOOL)mode completionBlock:(id)block
{
  blockCopy = block;
  TraceMethod::TraceMethod(v12, "enableBargeInMode:completionBlock:");
  if (+[AVVoiceTriggerClient isAPIAvailable])
  {
    workQueue = self->_workQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__AVVoiceTriggerClient_enableBargeInMode_completionBlock___block_invoke;
    v9[3] = &unk_1E7EF67D8;
    v9[4] = self;
    modeCopy = mode;
    v10 = blockCopy;
    dispatch_async(workQueue, v9);
  }

  else if (blockCopy)
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11794 userInfo:0];
    (*(blockCopy + 2))(blockCopy, v8);
  }

  TraceMethod::~TraceMethod(v12);
}

void __58__AVVoiceTriggerClient_enableBargeInMode_completionBlock___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) voiceTriggerServerConnection];
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "Disable";
    v6 = *(a1 + 48);
    v19 = "AVVoiceTriggerClient.mm";
    *buf = 136315650;
    if (v6)
    {
      v5 = "Enable";
    }

    v20 = 1024;
    v21 = 2387;
    v22 = 2080;
    v23 = v5;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d enableBargeInMode: %s", buf, 0x1Cu);
  }

LABEL_10:
  if (v2)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __58__AVVoiceTriggerClient_enableBargeInMode_completionBlock___block_invoke_222;
    v15[3] = &unk_1E7EF67B0;
    v17 = *(a1 + 48);
    v16 = *(a1 + 40);
    v7 = [v2 remoteObjectProxyWithErrorHandler:v15];
    v8 = *(a1 + 48);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__AVVoiceTriggerClient_enableBargeInMode_completionBlock___block_invoke_223;
    v12[3] = &unk_1E7EF67B0;
    v14 = v8;
    v13 = *(a1 + 40);
    [v7 enableBargeInMode:v8 reply:v12];

    v9 = v16;
LABEL_21:

    goto LABEL_22;
  }

  if (kAVVCScope)
  {
    v10 = *kAVVCScope;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v19 = "AVVoiceTriggerClient.mm";
    v20 = 1024;
    v21 = 2404;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d enableBargeInMode: couldn't connect to server", buf, 0x12u);
  }

LABEL_19:
  if (*(a1 + 40))
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11792 userInfo:0];
    (*(*(a1 + 40) + 16))();
    goto LABEL_21;
  }

LABEL_22:
}

void __58__AVVoiceTriggerClient_enableBargeInMode_completionBlock___block_invoke_222(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  v6 = v4;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    if (*(a1 + 40))
    {
      v7 = "enable";
    }

    else
    {
      v7 = "disable";
    }

    v8 = [v3 code];
    v9 = [v3 localizedDescription];
    v11 = 136316162;
    v12 = "AVVoiceTriggerClient.mm";
    v13 = 1024;
    v14 = 2390;
    v15 = 2080;
    v16 = v7;
    v17 = 2048;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ProxyErrorHandler: enableBargeInMode (%s) error handler : %ld (%@)", &v11, 0x30u);
  }

LABEL_11:
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v3);
  }
}

void __58__AVVoiceTriggerClient_enableBargeInMode_completionBlock___block_invoke_223(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    v5 = v4;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 40))
      {
        v7 = "enable";
      }

      else
      {
        v7 = "disable";
      }

      v8 = [v3 code];
      v9 = [v3 localizedDescription];
      v14 = 136316162;
      v15 = "AVVoiceTriggerClient.mm";
      v16 = 1024;
      v17 = 2395;
      v18 = 2080;
      v19 = v7;
      v20 = 2048;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d enableBargeInMode: (%s) reply error : %ld (%@)", &v14, 0x30u);
    }

LABEL_20:
    goto LABEL_21;
  }

  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
LABEL_16:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "Disabled";
      v12 = *(a1 + 40);
      v15 = "AVVoiceTriggerClient.mm";
      v14 = 136315650;
      if (v12)
      {
        v11 = "Enabled";
      }

      v16 = 1024;
      v17 = 2397;
      v18 = 2080;
      v19 = v11;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s barge-in - Success", &v14, 0x1Cu);
    }

    goto LABEL_20;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
    goto LABEL_16;
  }

LABEL_21:
  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, v3);
  }
}

- (void)portStateActiveCompletionBlock:(id)block
{
  blockCopy = block;
  TraceMethod::TraceMethod(v9, "portStateActiveCompletionBlock:");
  if (+[AVVoiceTriggerClient isAPIAvailable])
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__AVVoiceTriggerClient_portStateActiveCompletionBlock___block_invoke;
    block[3] = &unk_1E7EF6710;
    block[4] = self;
    v8 = blockCopy;
    dispatch_async(workQueue, block);
  }

  else if (blockCopy)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11794 userInfo:0];
    (*(blockCopy + 2))(blockCopy, 0, v6);
  }

  TraceMethod::~TraceMethod(v9);
}

void __55__AVVoiceTriggerClient_portStateActiveCompletionBlock___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) voiceTriggerServerConnection];
  if (v2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__AVVoiceTriggerClient_portStateActiveCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7EF66C0;
    v10 = *(a1 + 40);
    v3 = [v2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__AVVoiceTriggerClient_portStateActiveCompletionBlock___block_invoke_220;
    v7[3] = &unk_1E7EF6738;
    v8 = *(a1 + 40);
    [v3 portsActiveReply:v7];

    v4 = v10;
LABEL_12:

    goto LABEL_13;
  }

  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v12 = "AVVoiceTriggerClient.mm";
    v13 = 1024;
    v14 = 2348;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d serverConnection is nil - no xpc connection established", buf, 0x12u);
  }

LABEL_10:
  if (*(a1 + 40))
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11792 userInfo:0];
    (*(*(a1 + 40) + 16))();
    goto LABEL_12;
  }

LABEL_13:
}

void __55__AVVoiceTriggerClient_portStateActiveCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  v6 = v4;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [v3 code];
    v8 = [v3 localizedDescription];
    v10 = 136315906;
    v11 = "AVVoiceTriggerClient.mm";
    v12 = 1024;
    v13 = 2334;
    v14 = 2048;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ProxyErrorHandler: portStateActive returned error : %ld (%@)", &v10, 0x26u);
  }

LABEL_8:
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, 0, v3);
  }
}

void __55__AVVoiceTriggerClient_portStateActiveCompletionBlock___block_invoke_220(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    v8 = v7;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = [v6 code];
      v11 = [v6 localizedDescription];
      v14 = 136315906;
      v15 = "AVVoiceTriggerClient.mm";
      v16 = 1024;
      v17 = 2339;
      v18 = 2048;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d portStateActive returned error : %ld (%@)", &v14, 0x26u);
    }

LABEL_15:
    goto LABEL_16;
  }

  if (!kAVVCScope)
  {
    v8 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
LABEL_13:
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315394;
      v15 = "AVVoiceTriggerClient.mm";
      v16 = 1024;
      v17 = 2341;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d portStateActive - Success", &v14, 0x12u);
    }

    goto LABEL_15;
  }

  v8 = *kAVVCScope;
  if (v8)
  {
    goto LABEL_13;
  }

LABEL_16:
  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, v5, v6);
  }
}

- (void)enableListeningOnPorts:(id)ports completionBlock:(id)block
{
  portsCopy = ports;
  blockCopy = block;
  TraceMethod::TraceMethod(v13, "enablePortStateListening:completionBlock:");
  if (+[AVVoiceTriggerClient isAPIAvailable])
  {
    workQueue = self->_workQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __63__AVVoiceTriggerClient_enableListeningOnPorts_completionBlock___block_invoke;
    v10[3] = &unk_1E7EF6878;
    v10[4] = self;
    v11 = portsCopy;
    v12 = blockCopy;
    dispatch_async(workQueue, v10);
  }

  else if (blockCopy)
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11794 userInfo:0];
    (*(blockCopy + 2))(blockCopy, v9);
  }

  TraceMethod::~TraceMethod(v13);
}

void __63__AVVoiceTriggerClient_enableListeningOnPorts_completionBlock___block_invoke(id *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] voiceTriggerServerConnection];
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[5];
    *buf = 136315650;
    v18 = "AVVoiceTriggerClient.mm";
    v19 = 1024;
    v20 = 2275;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d enablePortStateListening: %@", buf, 0x1Cu);
  }

LABEL_8:
  if (v2)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __63__AVVoiceTriggerClient_enableListeningOnPorts_completionBlock___block_invoke_217;
    v14[3] = &unk_1E7EF6850;
    v15 = a1[5];
    v16 = a1[6];
    v6 = [v2 remoteObjectProxyWithErrorHandler:v14];
    v7 = a1[5];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __63__AVVoiceTriggerClient_enableListeningOnPorts_completionBlock___block_invoke_218;
    v11[3] = &unk_1E7EF6850;
    v12 = v7;
    v13 = a1[6];
    [v6 enableListeningOnPorts:v12 reply:v11];

    v8 = v15;
LABEL_19:

    goto LABEL_20;
  }

  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = "AVVoiceTriggerClient.mm";
    v19 = 1024;
    v20 = 2292;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d serverConnection is nil - no xpc connection established", buf, 0x12u);
  }

LABEL_17:
  if (a1[6])
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11792 userInfo:0];
    (*(a1[6] + 2))();
    goto LABEL_19;
  }

LABEL_20:
}

void __63__AVVoiceTriggerClient_enableListeningOnPorts_completionBlock___block_invoke_217(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  v6 = v4;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = [v3 code];
    v9 = [v3 localizedDescription];
    v11 = 136316162;
    v12 = "AVVoiceTriggerClient.mm";
    v13 = 1024;
    v14 = 2278;
    v15 = 2112;
    v16 = v7;
    v17 = 2048;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ProxyErrorHandler: enablePortStateListening: (%@) error handler : %ld (%@)", &v11, 0x30u);
  }

LABEL_8:
  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v3);
  }
}

void __63__AVVoiceTriggerClient_enableListeningOnPorts_completionBlock___block_invoke_218(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    v5 = v4;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = [v3 code];
      v9 = [v3 localizedDescription];
      v12 = 136316162;
      v13 = "AVVoiceTriggerClient.mm";
      v14 = 1024;
      v15 = 2283;
      v16 = 2112;
      v17 = v7;
      v18 = 2048;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d enablePortStateListening (%@) reply error : %ld (%@)", &v12, 0x30u);
    }

LABEL_15:
    goto LABEL_16;
  }

  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
LABEL_13:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315394;
      v13 = "AVVoiceTriggerClient.mm";
      v14 = 1024;
      v15 = 2285;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Succesfully updated port listening state", &v12, 0x12u);
    }

    goto LABEL_15;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_16:
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v3);
  }
}

- (BOOL)speakerStateMuted
{
  v22 = *MEMORY[0x1E69E9840];
  TraceMethod::TraceMethod(v17, "speakerStateMuted");
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v3 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__AVVoiceTriggerClient_speakerStateMuted__block_invoke;
  v10[3] = &unk_1E7EF6828;
  v12 = &v13;
  v4 = v3;
  v11 = v4;
  [(AVVoiceTriggerClient *)self speakerStateMutedCompletionBlock:v10];
  v5 = dispatch_time(0, 2000000000);
  if (dispatch_semaphore_wait(v4, v5))
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "AVVoiceTriggerClient.mm";
      v20 = 1024;
      v21 = 2255;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d server timeout", buf, 0x12u);
    }
  }

LABEL_9:
  v8 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  TraceMethod::~TraceMethod(v17);
  return v8 & 1;
}

- (void)speakerStateMutedCompletionBlock:(id)block
{
  blockCopy = block;
  TraceMethod::TraceMethod(v9, "speakerStateMutedCompletionBlock:");
  if (+[AVVoiceTriggerClient isAPIAvailable])
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__AVVoiceTriggerClient_speakerStateMutedCompletionBlock___block_invoke;
    block[3] = &unk_1E7EF6710;
    block[4] = self;
    v8 = blockCopy;
    dispatch_async(workQueue, block);
  }

  else if (blockCopy)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11794 userInfo:0];
    (*(blockCopy + 2))(blockCopy, 0, v6);
  }

  TraceMethod::~TraceMethod(v9);
}

void __57__AVVoiceTriggerClient_speakerStateMutedCompletionBlock___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) voiceTriggerServerConnection];
  if (v2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__AVVoiceTriggerClient_speakerStateMutedCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7EF66C0;
    v10 = *(a1 + 40);
    v3 = [v2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__AVVoiceTriggerClient_speakerStateMutedCompletionBlock___block_invoke_214;
    v7[3] = &unk_1E7EF6800;
    v8 = *(a1 + 40);
    [v3 speakerStateMutedReply:v7];

    v4 = v10;
LABEL_12:

    goto LABEL_13;
  }

  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v12 = "AVVoiceTriggerClient.mm";
    v13 = 1024;
    v14 = 2207;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d serverConnection is nil - no xpc connection established", buf, 0x12u);
  }

LABEL_10:
  if (*(a1 + 40))
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11792 userInfo:0];
    (*(*(a1 + 40) + 16))();
    goto LABEL_12;
  }

LABEL_13:
}

void __57__AVVoiceTriggerClient_speakerStateMutedCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  v6 = v4;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [v3 code];
    v8 = [v3 localizedDescription];
    v10 = 136315906;
    v11 = "AVVoiceTriggerClient.mm";
    v12 = 1024;
    v13 = 2193;
    v14 = 2048;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ProxyErrorHandler: speakerStateMuted returned error : %ld (%@)", &v10, 0x26u);
  }

LABEL_8:
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, 0, v3);
  }
}

void __57__AVVoiceTriggerClient_speakerStateMutedCompletionBlock___block_invoke_214(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    v7 = v6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [v5 code];
      v10 = [v5 localizedDescription];
      v13 = 136315906;
      v14 = "AVVoiceTriggerClient.mm";
      v15 = 1024;
      v16 = 2198;
      v17 = 2048;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d speakerStateMuted returned error : %ld (%@)", &v13, 0x26u);
    }

LABEL_15:
    goto LABEL_16;
  }

  if (!kAVVCScope)
  {
    v7 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
LABEL_13:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315394;
      v14 = "AVVoiceTriggerClient.mm";
      v15 = 1024;
      v16 = 2200;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d speakerStateMuted - Success", &v13, 0x12u);
    }

    goto LABEL_15;
  }

  v7 = *kAVVCScope;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))(v12, a2, v5);
  }
}

- (BOOL)speakerStateActive
{
  v22 = *MEMORY[0x1E69E9840];
  TraceMethod::TraceMethod(v17, "speakerStateActive");
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v3 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__AVVoiceTriggerClient_speakerStateActive__block_invoke;
  v10[3] = &unk_1E7EF6828;
  v12 = &v13;
  v4 = v3;
  v11 = v4;
  [(AVVoiceTriggerClient *)self speakerStateActiveCompletionBlock:v10];
  v5 = dispatch_time(0, 2000000000);
  if (dispatch_semaphore_wait(v4, v5))
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "AVVoiceTriggerClient.mm";
      v20 = 1024;
      v21 = 2171;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d server timeout", buf, 0x12u);
    }
  }

LABEL_9:
  v8 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  TraceMethod::~TraceMethod(v17);
  return v8 & 1;
}

- (void)speakerStateActiveCompletionBlock:(id)block
{
  blockCopy = block;
  TraceMethod::TraceMethod(v9, "speakerStateActiveCompletionBlock:");
  if (+[AVVoiceTriggerClient isAPIAvailable])
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__AVVoiceTriggerClient_speakerStateActiveCompletionBlock___block_invoke;
    block[3] = &unk_1E7EF6710;
    block[4] = self;
    v8 = blockCopy;
    dispatch_async(workQueue, block);
  }

  else if (blockCopy)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11794 userInfo:0];
    (*(blockCopy + 2))(blockCopy, 0, v6);
  }

  TraceMethod::~TraceMethod(v9);
}

void __58__AVVoiceTriggerClient_speakerStateActiveCompletionBlock___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) voiceTriggerServerConnection];
  if (v2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__AVVoiceTriggerClient_speakerStateActiveCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7EF66C0;
    v10 = *(a1 + 40);
    v3 = [v2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__AVVoiceTriggerClient_speakerStateActiveCompletionBlock___block_invoke_210;
    v7[3] = &unk_1E7EF6800;
    v8 = *(a1 + 40);
    [v3 speakerStateActiveReply:v7];

    v4 = v10;
LABEL_12:

    goto LABEL_13;
  }

  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v12 = "AVVoiceTriggerClient.mm";
    v13 = 1024;
    v14 = 2122;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d serverConnection is nil - no xpc connection established", buf, 0x12u);
  }

LABEL_10:
  if (*(a1 + 40))
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11792 userInfo:0];
    (*(*(a1 + 40) + 16))();
    goto LABEL_12;
  }

LABEL_13:
}

void __58__AVVoiceTriggerClient_speakerStateActiveCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  v6 = v4;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [v3 code];
    v8 = [v3 localizedDescription];
    v10 = 136315906;
    v11 = "AVVoiceTriggerClient.mm";
    v12 = 1024;
    v13 = 2108;
    v14 = 2048;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ProxyErrorHandler: speakerStateActive returned error : %ld (%@)", &v10, 0x26u);
  }

LABEL_8:
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, 0, v3);
  }
}

void __58__AVVoiceTriggerClient_speakerStateActiveCompletionBlock___block_invoke_210(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    v7 = v6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [v5 code];
      v10 = [v5 localizedDescription];
      v13 = 136315906;
      v14 = "AVVoiceTriggerClient.mm";
      v15 = 1024;
      v16 = 2113;
      v17 = 2048;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d speakerStateActive returned error : %ld (%@)", &v13, 0x26u);
    }

LABEL_15:
    goto LABEL_16;
  }

  if (!kAVVCScope)
  {
    v7 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
LABEL_13:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315394;
      v14 = "AVVoiceTriggerClient.mm";
      v15 = 1024;
      v16 = 2115;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d speakerStateActive - Success", &v13, 0x12u);
    }

    goto LABEL_15;
  }

  v7 = *kAVVCScope;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))(v12, a2, v5);
  }
}

- (void)enableSpeakerStateListening:(BOOL)listening
{
  listeningCopy = listening;
  v17 = *MEMORY[0x1E69E9840];
  TraceMethod::TraceMethod(v12, "enableVoiceTriggerListening:");
  v5 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__AVVoiceTriggerClient_enableSpeakerStateListening___block_invoke;
  v10[3] = &unk_1E7EF6788;
  v6 = v5;
  v11 = v6;
  [(AVVoiceTriggerClient *)self enableSpeakerStateListening:listeningCopy completionBlock:v10];
  v7 = dispatch_time(0, 2000000000);
  if (dispatch_semaphore_wait(v6, v7))
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "AVVoiceTriggerClient.mm";
      v15 = 1024;
      v16 = 2088;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d server timeout", buf, 0x12u);
    }
  }

LABEL_9:

  TraceMethod::~TraceMethod(v12);
}

- (void)enableSpeakerStateListening:(BOOL)listening completionBlock:(id)block
{
  blockCopy = block;
  TraceMethod::TraceMethod(v12, "enableSpeakerStateListening:completionBlock:");
  if (+[AVVoiceTriggerClient isAPIAvailable])
  {
    workQueue = self->_workQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__AVVoiceTriggerClient_enableSpeakerStateListening_completionBlock___block_invoke;
    v9[3] = &unk_1E7EF67D8;
    v9[4] = self;
    listeningCopy = listening;
    v10 = blockCopy;
    dispatch_async(workQueue, v9);
  }

  else if (blockCopy)
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11794 userInfo:0];
    (*(blockCopy + 2))(blockCopy, v8);
  }

  TraceMethod::~TraceMethod(v12);
}

void __68__AVVoiceTriggerClient_enableSpeakerStateListening_completionBlock___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) voiceTriggerServerConnection];
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "disable";
    v6 = *(a1 + 48);
    v19 = "AVVoiceTriggerClient.mm";
    *buf = 136315650;
    if (v6)
    {
      v5 = "enable";
    }

    v20 = 1024;
    v21 = 2031;
    v22 = 2080;
    v23 = v5;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d enableSpeakerStateListening: %s", buf, 0x1Cu);
  }

LABEL_10:
  if (v2)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__AVVoiceTriggerClient_enableSpeakerStateListening_completionBlock___block_invoke_206;
    v15[3] = &unk_1E7EF67B0;
    v17 = *(a1 + 48);
    v16 = *(a1 + 40);
    v7 = [v2 remoteObjectProxyWithErrorHandler:v15];
    v8 = *(a1 + 48);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__AVVoiceTriggerClient_enableSpeakerStateListening_completionBlock___block_invoke_207;
    v12[3] = &unk_1E7EF67B0;
    v14 = v8;
    v13 = *(a1 + 40);
    [v7 enableSpeakerStateListening:v8 reply:v12];

    v9 = v16;
LABEL_21:

    goto LABEL_22;
  }

  if (kAVVCScope)
  {
    v10 = *kAVVCScope;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v19 = "AVVoiceTriggerClient.mm";
    v20 = 1024;
    v21 = 2048;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d serverConnection is nil - no xpc connection established", buf, 0x12u);
  }

LABEL_19:
  if (*(a1 + 40))
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11792 userInfo:0];
    (*(*(a1 + 40) + 16))();
    goto LABEL_21;
  }

LABEL_22:
}

void __68__AVVoiceTriggerClient_enableSpeakerStateListening_completionBlock___block_invoke_206(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  v6 = v4;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    if (*(a1 + 40))
    {
      v7 = "enable";
    }

    else
    {
      v7 = "disable";
    }

    v8 = [v3 code];
    v9 = [v3 localizedDescription];
    v11 = 136316162;
    v12 = "AVVoiceTriggerClient.mm";
    v13 = 1024;
    v14 = 2034;
    v15 = 2080;
    v16 = v7;
    v17 = 2048;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ProxyErrorHandler: enableSpeakerStateListening: (%s) error handler : %ld (%@)", &v11, 0x30u);
  }

LABEL_11:
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v3);
  }
}

void __68__AVVoiceTriggerClient_enableSpeakerStateListening_completionBlock___block_invoke_207(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    v5 = v4;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 40))
      {
        v7 = "enable";
      }

      else
      {
        v7 = "disable";
      }

      v8 = [v3 code];
      v9 = [v3 localizedDescription];
      v14 = 136316162;
      v15 = "AVVoiceTriggerClient.mm";
      v16 = 1024;
      v17 = 2039;
      v18 = 2080;
      v19 = v7;
      v20 = 2048;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d enableSpeakerStateListening (%s) reply error : %ld (%@)", &v14, 0x30u);
    }

LABEL_20:
    goto LABEL_21;
  }

  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
LABEL_16:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v11 = "disabled";
      v12 = *(a1 + 40);
      v15 = "AVVoiceTriggerClient.mm";
      v14 = 136315650;
      if (v12)
      {
        v11 = "Enabled";
      }

      v16 = 1024;
      v17 = 2041;
      v18 = 2080;
      v19 = v11;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s speaker state listening - Success", &v14, 0x1Cu);
    }

    goto LABEL_20;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
    goto LABEL_16;
  }

LABEL_21:
  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, v3);
  }
}

- (void)setListeningProperty:(BOOL)property completionBlock:(id)block
{
  blockCopy = block;
  TraceMethod::TraceMethod(v6, "setListeningProperty:completionBlock:");
  if (+[AVVoiceTriggerClient isAPIAvailable])
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy, 0);
    }
  }

  else if (blockCopy)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11794 userInfo:0];
    (blockCopy)[2](blockCopy, v5);
  }

  TraceMethod::~TraceMethod(v6);
}

- (void)enableVoiceTriggerListening:(BOOL)listening completionBlock:(id)block
{
  listeningCopy = listening;
  v22 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  TraceMethod::TraceMethod(v15, "enableVoiceTriggerListening:completionBlock:");
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "Disable";
    v17 = "AVVoiceTriggerClient.mm";
    *buf = 136315650;
    if (listeningCopy)
    {
      v9 = "Enable";
    }

    v18 = 1024;
    v19 = 1905;
    v20 = 2080;
    v21 = v9;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d enableVoiceTriggerListening: %s", buf, 0x1Cu);
  }

LABEL_10:
  if (+[AVVoiceTriggerClient isAPIAvailable])
  {
    workQueue = self->_workQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__AVVoiceTriggerClient_enableVoiceTriggerListening_completionBlock___block_invoke;
    v12[3] = &unk_1E7EF67D8;
    v12[4] = self;
    v14 = listeningCopy;
    v13 = blockCopy;
    dispatch_async(workQueue, v12);
  }

  else if (blockCopy)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11794 userInfo:0];
    (*(blockCopy + 2))(blockCopy, v11);
  }

  TraceMethod::~TraceMethod(v15);
}

void __68__AVVoiceTriggerClient_enableVoiceTriggerListening_completionBlock___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) voiceTriggerServerConnection];
  if (v2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__AVVoiceTriggerClient_enableVoiceTriggerListening_completionBlock___block_invoke_2;
    v11[3] = &unk_1E7EF67B0;
    v13 = *(a1 + 48);
    v12 = *(a1 + 40);
    v3 = [v2 remoteObjectProxyWithErrorHandler:v11];
    v4 = *(a1 + 48);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__AVVoiceTriggerClient_enableVoiceTriggerListening_completionBlock___block_invoke_201;
    v8[3] = &unk_1E7EF67B0;
    v10 = v4;
    v9 = *(a1 + 40);
    [v3 enableVoiceTriggerListening:v4 reply:v8];

    v5 = v12;
LABEL_12:

    goto LABEL_13;
  }

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v15 = "AVVoiceTriggerClient.mm";
    v16 = 1024;
    v17 = 1934;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d enableVoiceTriggerListening: couldn't connect to server", buf, 0x12u);
  }

LABEL_10:
  if (*(a1 + 40))
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11792 userInfo:0];
    (*(*(a1 + 40) + 16))();
    goto LABEL_12;
  }

LABEL_13:
}

void __68__AVVoiceTriggerClient_enableVoiceTriggerListening_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  v6 = v4;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    if (*(a1 + 40))
    {
      v7 = "enable";
    }

    else
    {
      v7 = "disable";
    }

    v8 = [v3 code];
    v9 = [v3 localizedDescription];
    v11 = 136316162;
    v12 = "AVVoiceTriggerClient.mm";
    v13 = 1024;
    v14 = 1920;
    v15 = 2080;
    v16 = v7;
    v17 = 2048;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ProxyErrorHandler: enableVoiceTriggerListening (%s) error handler : %ld (%@)", &v11, 0x30u);
  }

LABEL_11:
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v3);
  }
}

void __68__AVVoiceTriggerClient_enableVoiceTriggerListening_completionBlock___block_invoke_201(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    v5 = v4;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 40))
      {
        v7 = "enable";
      }

      else
      {
        v7 = "disable";
      }

      v8 = [v3 code];
      v9 = [v3 localizedDescription];
      v14 = 136316162;
      v15 = "AVVoiceTriggerClient.mm";
      v16 = 1024;
      v17 = 1925;
      v18 = 2080;
      v19 = v7;
      v20 = 2048;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d enableVoiceTriggerListening: (%s) reply error : %ld (%@)", &v14, 0x30u);
    }

LABEL_20:
    goto LABEL_21;
  }

  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
LABEL_16:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "Disabled";
      v12 = *(a1 + 40);
      v15 = "AVVoiceTriggerClient.mm";
      v14 = 136315650;
      if (v12)
      {
        v11 = "Enabled";
      }

      v16 = 1024;
      v17 = 1927;
      v18 = 2080;
      v19 = v11;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s voice trigger - Success", &v14, 0x1Cu);
    }

    goto LABEL_20;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
    goto LABEL_16;
  }

LABEL_21:
  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, v3);
  }
}

- (void)enableVoiceTriggerListening:(BOOL)listening
{
  listeningCopy = listening;
  v17 = *MEMORY[0x1E69E9840];
  TraceMethod::TraceMethod(v12, "enableVoiceTriggerListening:");
  v5 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__AVVoiceTriggerClient_enableVoiceTriggerListening___block_invoke;
  v10[3] = &unk_1E7EF6788;
  v6 = v5;
  v11 = v6;
  [(AVVoiceTriggerClient *)self enableVoiceTriggerListening:listeningCopy completionBlock:v10];
  v7 = dispatch_time(0, 2000000000);
  if (dispatch_semaphore_wait(v6, v7))
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "AVVoiceTriggerClient.mm";
      v15 = 1024;
      v16 = 1898;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d server timeout", buf, 0x12u);
    }
  }

LABEL_9:

  TraceMethod::~TraceMethod(v12);
}

- (unint64_t)voiceTriggerPastDataFramesAvailable
{
  TraceMethod::TraceMethod(v13, "voiceTriggerPastDataFramesAvailable");
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  voiceTriggerServerConnection = [(AVVoiceTriggerClient *)self voiceTriggerServerConnection];
  v4 = voiceTriggerServerConnection;
  if (voiceTriggerServerConnection)
  {
    v5 = [voiceTriggerServerConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_193];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__AVVoiceTriggerClient_voiceTriggerPastDataFramesAvailable__block_invoke_194;
    v8[3] = &unk_1E7EF6760;
    v8[4] = &v9;
    [v5 voiceTriggerPastDataFramesAvailable:v8];
  }

  v6 = v10[3];

  _Block_object_dispose(&v9, 8);
  TraceMethod::~TraceMethod(v13);
  return v6;
}

void __59__AVVoiceTriggerClient_voiceTriggerPastDataFramesAvailable__block_invoke_194(uint64_t a1, unsigned int a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    v8 = v6;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v5 code];
      v10 = [v5 localizedDescription];
      v11 = 136315906;
      v12 = "AVVoiceTriggerClient.mm";
      v13 = 1024;
      v14 = 1863;
      v15 = 2048;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d VoiceTrigger pastDataFramesAvailable error : %ld(%@)", &v11, 0x26u);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

LABEL_10:
}

void __59__AVVoiceTriggerClient_voiceTriggerPastDataFramesAvailable__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  v5 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [v2 code];
    v7 = [v2 localizedDescription];
    v8 = 136315906;
    v9 = "AVVoiceTriggerClient.mm";
    v10 = 1024;
    v11 = 1860;
    v12 = 2048;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d ProxyErrorHandler: VoiceTrigger pastDataFramesAvailable returned error : %ld(%@)", &v8, 0x26u);
  }

LABEL_8:
}

- (void)setAVVCServerResetBlock:(id)block
{
  blockCopy = block;
  v4 = [blockCopy copy];
  avvcServerResetBlock = self->_avvcServerResetBlock;
  self->_avvcServerResetBlock = v4;
}

- (void)setAVVCServerCrashedBlock:(id)block
{
  blockCopy = block;
  v4 = [blockCopy copy];
  avvcServerCrashedBlock = self->_avvcServerCrashedBlock;
  self->_avvcServerCrashedBlock = v4;
}

- (void)getInputChannelInfoCompletion:(id)completion
{
  completionCopy = completion;
  TraceMethod::TraceMethod(v9, "getInputChannelInfoCompletion");
  if (+[AVVoiceTriggerClient isAPIAvailable])
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__AVVoiceTriggerClient_getInputChannelInfoCompletion___block_invoke;
    block[3] = &unk_1E7EF6710;
    block[4] = self;
    v8 = completionCopy;
    dispatch_async(workQueue, block);
  }

  else if (completionCopy)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11794 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v6);
  }

  TraceMethod::~TraceMethod(v9);
}

void __54__AVVoiceTriggerClient_getInputChannelInfoCompletion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) voiceTriggerServerConnection];
  if (v2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__AVVoiceTriggerClient_getInputChannelInfoCompletion___block_invoke_2;
    v9[3] = &unk_1E7EF66C0;
    v10 = *(a1 + 40);
    v3 = [v2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__AVVoiceTriggerClient_getInputChannelInfoCompletion___block_invoke_188;
    v7[3] = &unk_1E7EF6738;
    v8 = *(a1 + 40);
    [v3 getInputChannelInfoCompletion:v7];

    v4 = v10;
LABEL_12:

    goto LABEL_13;
  }

  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v12 = "AVVoiceTriggerClient.mm";
    v13 = 1024;
    v14 = 1824;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d serverConnection is nil - no xpc connection established", buf, 0x12u);
  }

LABEL_10:
  if (*(a1 + 40))
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11792 userInfo:0];
    (*(*(a1 + 40) + 16))();
    goto LABEL_12;
  }

LABEL_13:
}

void __54__AVVoiceTriggerClient_getInputChannelInfoCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  v6 = v4;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [v3 code];
    v8 = [v3 localizedDescription];
    v10 = 136315906;
    v11 = "AVVoiceTriggerClient.mm";
    v12 = 1024;
    v13 = 1807;
    v14 = 2048;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ProxyErrorHandler: VoiceTrigger getInputChannelInfoCompletion returned error : %ld(%@)", &v10, 0x26u);
  }

LABEL_8:
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, 0, v3);
  }
}

void __54__AVVoiceTriggerClient_getInputChannelInfoCompletion___block_invoke_188(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    v9 = v7;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v6 code];
      v11 = [v6 localizedDescription];
      v16 = 136315906;
      v17 = "AVVoiceTriggerClient.mm";
      v18 = 1024;
      v19 = 1812;
      v20 = 2048;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d VoiceTrigger getInputChannelInfoCompletion error : %ld(%@)", &v16, 0x26u);
    }
  }

LABEL_9:
  if (*(a1 + 32))
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    (*(*(a1 + 32) + 16))();
  }
}

- (void)voiceTriggerPastDataFramesAvailableCompletion:(id)completion
{
  completionCopy = completion;
  TraceMethod::TraceMethod(v9, "voiceTriggerPastDataFramesAvailableCompletion");
  if (+[AVVoiceTriggerClient isAPIAvailable])
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__AVVoiceTriggerClient_voiceTriggerPastDataFramesAvailableCompletion___block_invoke;
    block[3] = &unk_1E7EF6710;
    block[4] = self;
    v8 = completionCopy;
    dispatch_async(workQueue, block);
  }

  else if (completionCopy)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11794 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v6);
  }

  TraceMethod::~TraceMethod(v9);
}

void __70__AVVoiceTriggerClient_voiceTriggerPastDataFramesAvailableCompletion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) voiceTriggerServerConnection];
  if (v2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__AVVoiceTriggerClient_voiceTriggerPastDataFramesAvailableCompletion___block_invoke_2;
    v9[3] = &unk_1E7EF66C0;
    v10 = *(a1 + 40);
    v3 = [v2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__AVVoiceTriggerClient_voiceTriggerPastDataFramesAvailableCompletion___block_invoke_185;
    v7[3] = &unk_1E7EF66E8;
    v8 = *(a1 + 40);
    [v3 voiceTriggerPastDataFramesAvailable:v7];

    v4 = v10;
LABEL_12:

    goto LABEL_13;
  }

  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v12 = "AVVoiceTriggerClient.mm";
    v13 = 1024;
    v14 = 1763;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d serverConnection is nil - no xpc connection established", buf, 0x12u);
  }

LABEL_10:
  if (*(a1 + 40))
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11792 userInfo:0];
    (*(*(a1 + 40) + 16))();
    goto LABEL_12;
  }

LABEL_13:
}

void __70__AVVoiceTriggerClient_voiceTriggerPastDataFramesAvailableCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  v6 = v4;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [v3 code];
    v8 = [v3 localizedDescription];
    v10 = 136315906;
    v11 = "AVVoiceTriggerClient.mm";
    v12 = 1024;
    v13 = 1751;
    v14 = 2048;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ProxyErrorHandler: VoiceTrigger pastDataFramesAvailable returned error : %ld(%@)", &v10, 0x26u);
  }

LABEL_8:
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, 0, v3);
  }
}

void __70__AVVoiceTriggerClient_voiceTriggerPastDataFramesAvailableCompletion___block_invoke_185(uint64_t a1, unsigned int a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    v8 = v6;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v5 code];
      v10 = [v5 localizedDescription];
      v12 = 136315906;
      v13 = "AVVoiceTriggerClient.mm";
      v14 = 1024;
      v15 = 1756;
      v16 = 2048;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d VoiceTrigger pastDataFramesAvailable error : %ld(%@)", &v12, 0x26u);
    }
  }

LABEL_9:
  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, a2, v5);
  }
}

void __52__AVVoiceTriggerClient_voiceTriggerServerConnection__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v2 = *kAVVCScope;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "AVVoiceTriggerClient.mm";
    v7 = 1024;
    v8 = 1711;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d VoiceTriggerServerConnection was interrupted", &v5, 0x12u);
  }

LABEL_8:
  if (isDarwinOSProduct(void)::onceToken != -1)
  {
    dispatch_once(&isDarwinOSProduct(void)::onceToken, &__block_literal_global_164);
  }

  if (isDarwinOSProduct(void)::isDarwinOS == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained callServerCrashedBlock];
  }
}

void __52__AVVoiceTriggerClient_voiceTriggerServerConnection__block_invoke_180(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315650;
    v6 = "AVVoiceTriggerClient.mm";
    v7 = 1024;
    v8 = 1726;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d VoiceTrigger server initializWithReply called (%@)", &v5, 0x1Cu);
  }

LABEL_8:
}

void __52__AVVoiceTriggerClient_voiceTriggerServerConnection__block_invoke_176(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    v5 = v3;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [v2 code];
      v7 = [v2 localizedDescription];
      v8 = 136315906;
      v9 = "AVVoiceTriggerClient.mm";
      v10 = 1024;
      v11 = 1723;
      v12 = 2048;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d ProxyErrorHandler: VoiceTrigger Initialize returned error : %ld(%@)", &v8, 0x26u);
    }
  }

LABEL_9:
}

- (void)callServerResetBlock
{
  v14 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v11 = "AVVoiceTriggerClient.mm";
    v12 = 1024;
    v13 = 1632;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d server reset", buf, 0x12u);
  }

LABEL_8:
  if (+[AVVoiceTriggerClient isAPIAvailable])
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__AVVoiceTriggerClient_callServerResetBlock__block_invoke;
    block[3] = &unk_1E7EF6628;
    block[4] = self;
    dispatch_async(workQueue, block);
    v6 = [self->_avvcServerResetBlock copy];
    v7 = [self->_serverResetBlock copy];
    v8 = v7;
    if (v6)
    {
      v6[2](v6, v7);
    }

    else if (v7)
    {
      (*(v7 + 16))(v7);
    }
  }
}

- (void)callServerCrashedBlock
{
  v12 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "AVVoiceTriggerClient.mm";
    v10 = 1024;
    v11 = 1607;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d server crashed", &v8, 0x12u);
  }

LABEL_8:
  if (+[AVVoiceTriggerClient isAPIAvailable])
  {
    v5 = [self->_avvcServerCrashedBlock copy];
    v6 = [self->_serverCrashedBlock copy];
    v7 = v6;
    if (v5)
    {
      v5[2](v5, v6);
    }

    else if (v6)
    {
      (*(v6 + 16))(v6);
    }
  }
}

- (void)removeAudioServerUpNotificationHandler
{
  v9 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "AVVoiceTriggerClient.mm";
    v7 = 1024;
    v8 = 1598;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d removing bridgeaudiod up notification handler", &v5, 0x12u);
  }

LABEL_8:
  if (notify_is_valid_token(self->_audioSeverUpNotificationToken))
  {
    notify_cancel(self->_audioSeverUpNotificationToken);
    self->_audioSeverUpNotificationToken = -1;
  }
}

- (void)setAudioServerUpNotificationHandler
{
  v12 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v9 = "AVVoiceTriggerClient.mm";
    v10 = 1024;
    v11 = 1589;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d setting up audio server up notification handler", buf, 0x12u);
  }

LABEL_8:
  objc_initWeak(buf, self);
  v5 = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __59__AVVoiceTriggerClient_setAudioServerUpNotificationHandler__block_invoke;
  handler[3] = &unk_1E7EF6650;
  objc_copyWeak(&v7, buf);
  notify_register_dispatch("com.apple.darwinaudiod.up", &self->_audioSeverUpNotificationToken, v5, handler);

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __59__AVVoiceTriggerClient_setAudioServerUpNotificationHandler__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained callServerResetBlock];
}

- (void)closeServerConnection
{
  [(NSXPCConnection *)self->_voiceTriggerServerConnection invalidate];
  voiceTriggerServerConnection = self->_voiceTriggerServerConnection;
  self->_voiceTriggerServerConnection = 0;
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  TraceMethod::TraceMethod(v8, "dealloc");
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = "AVVoiceTriggerClient.mm";
    v11 = 1024;
    v12 = 1537;
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVoiceTriggerClient dealloc %@", buf, 0x1Cu);
  }

LABEL_8:
  if (+[AVVoiceTriggerClient isAPIAvailable])
  {
    if (isAudioSessionAvailable(void)::onceToken != -1)
    {
      dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
    }

    if (isAudioSessionAvailable(void)::audioSessionAvailable == 1)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:self name:*MEMORY[0x1E698D5A8] object:0];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 removeObserver:self name:*MEMORY[0x1E698D5B8] object:0];
    }

    else
    {
      if (isDarwinOSProduct(void)::onceToken != -1)
      {
        dispatch_once(&isDarwinOSProduct(void)::onceToken, &__block_literal_global_164);
      }

      if (isDarwinOSProduct(void)::isDarwinOS == 1)
      {
        [(AVVoiceTriggerClient *)self removeAudioServerUpNotificationHandler];
      }
    }

    [(AVVoiceTriggerClient *)self closeServerConnection];
  }

  TraceMethod::~TraceMethod(v8);
  v7.receiver = self;
  v7.super_class = AVVoiceTriggerClient;
  [(AVVoiceTriggerClient *)&v7 dealloc];
}

- (id)init:(int64_t)init
{
  v32 = *MEMORY[0x1E69E9840];
  Initialize_Logging();
  TraceMethod::TraceMethod(v23, "AVVoiceTriggerClient init");
  v22.receiver = self;
  v22.super_class = AVVoiceTriggerClient;
  v5 = [(AVVoiceTriggerClient *)&v22 init];
  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v25 = "AVVoiceTriggerClient.mm";
    v26 = 1024;
    v27 = 1485;
    v28 = 2112;
    v29 = v5;
    v30 = 1024;
    initCopy = init;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVoiceTriggerClient init %@, clientType: %d", buf, 0x22u);
  }

LABEL_8:
  if (v5)
  {
    v8 = init == 2 ? 1 : init;
    v5->_clientType = v8;
    if (+[AVVoiceTriggerClient isAPIAvailable])
    {
      if (isAudioSessionAvailable(void)::onceToken != -1)
      {
        dispatch_once(&isAudioSessionAvailable(void)::onceToken, &__block_literal_global_44);
      }

      if (isAudioSessionAvailable(void)::audioSessionAvailable == 1)
      {
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        v10 = NSSelectorFromString(&cfstr_Callservercras.isa);
        mEMORY[0x1E698D708] = [MEMORY[0x1E698D708] sharedInstance];
        [defaultCenter addObserver:v5 selector:v10 name:*MEMORY[0x1E698D5A8] object:mEMORY[0x1E698D708]];

        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        v13 = NSSelectorFromString(&cfstr_Callserverrese.isa);
        mEMORY[0x1E698D708]2 = [MEMORY[0x1E698D708] sharedInstance];
        [defaultCenter2 addObserver:v5 selector:v13 name:*MEMORY[0x1E698D5B8] object:mEMORY[0x1E698D708]2];
      }

      else
      {
        if (isDarwinOSProduct(void)::onceToken != -1)
        {
          dispatch_once(&isDarwinOSProduct(void)::onceToken, &__block_literal_global_164);
        }

        if (isDarwinOSProduct(void)::isDarwinOS == 1)
        {
          [(AVVoiceTriggerClient *)v5 setAudioServerUpNotificationHandler];
        }
      }

      v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
      v16 = dispatch_queue_create("AVVTC Work Queue", v15);
      workQueue = v5->_workQueue;
      v5->_workQueue = v16;

      v18 = v5->_workQueue;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __29__AVVoiceTriggerClient_init___block_invoke;
      v20[3] = &unk_1E7EF6628;
      v21 = v5;
      dispatch_async(v18, v20);
    }
  }

  TraceMethod::~TraceMethod(v23);
  return v5;
}

+ (id)sharedInstance:(int64_t)instance
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__AVVoiceTriggerClient_sharedInstance___block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = self;
  v5[5] = instance;
  if (+[AVVoiceTriggerClient sharedInstance:]::onceToken != -1)
  {
    dispatch_once(&+[AVVoiceTriggerClient sharedInstance:]::onceToken, v5);
  }

  v3 = voiceTriggerClientSharedInstance;

  return v3;
}

void __39__AVVoiceTriggerClient_sharedInstance___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(*(a1 + 32)) init:*(a1 + 40)];
  v3 = voiceTriggerClientSharedInstance;
  voiceTriggerClientSharedInstance = v2;

  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = 136315906;
    v8 = "AVVoiceTriggerClient.mm";
    v9 = 1024;
    v10 = 1462;
    v11 = 2048;
    v12 = voiceTriggerClientSharedInstance;
    v13 = 1024;
    v14 = v6;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Created AVVoiceTriggerClient (%p) with clientType: %d", &v7, 0x22u);
  }
}

@end