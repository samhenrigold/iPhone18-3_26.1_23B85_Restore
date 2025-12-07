@interface AVVoiceTriggerServer
- (AVVoiceTriggerServer)init;
- (BOOL)isAssistantVoiceTriggerEnabled;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)activateSecureSession:(BOOL)session reply:(id)reply;
- (void)dealloc;
- (void)enableBargeInMode:(BOOL)mode reply:(id)reply;
- (void)enableListeningOnPorts:(id)ports reply:(id)reply;
- (void)enableSpeakerStateListening:(BOOL)listening reply:(id)reply;
- (void)enableVoiceTriggerListening:(BOOL)listening reply:(id)reply;
- (void)getInputChannelInfoCompletion:(id)completion;
- (void)initializeWithReply:(id)reply;
- (void)listeningEnabledReply:(id)reply;
- (void)portsActiveReply:(id)reply;
- (void)sendActiveStateChangedNotificationForPort:(unint64_t)port isActive:(BOOL)active;
- (void)sendSpeakerMuteStateChangedNotification:(BOOL)notification;
- (void)sendVoiceTriggerOccuredNotification:(id)notification triggerTime:(unint64_t)time;
- (void)setAggressiveECMode:(BOOL)mode reply:(id)reply;
- (void)setListeningProperty:(BOOL)property reply:(id)reply;
- (void)siriClientRecordStateChanged:(BOOL)changed;
- (void)siriClientsRecordingReply:(id)reply;
- (void)speakerStateActiveReply:(id)reply;
- (void)speakerStateMutedReply:(id)reply;
- (void)speechDetectionVADCreated;
- (void)updateVoiceTriggerConfiguration:(id)configuration reply:(id)reply;
- (void)voiceTriggerPastDataFramesAvailable:(id)available;
@end

@implementation AVVoiceTriggerServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v35 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v28 = "AVVoiceTriggerServer.mm";
    v29 = 1024;
    v30 = 2274;
    v31 = 2112;
    v32 = connectionCopy;
    v33 = 1024;
    processIdentifier = [connectionCopy processIdentifier];
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d newConnection: %@ from PID: %d", buf, 0x22u);
  }

  v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F37D6250];
  [connectionCopy setExportedInterface:v8];

  [connectionCopy setExportedObject:self];
  v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F37DBEA8];
  [connectionCopy setRemoteObjectInterface:v9];

  objc_initWeak(&location, self);
  objc_initWeak(&from, connectionCopy);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __59__AVVoiceTriggerServer_listener_shouldAcceptNewConnection___block_invoke;
  v22[3] = &unk_1E7ECE060;
  objc_copyWeak(&v23, &from);
  objc_copyWeak(&v24, &location);
  [connectionCopy setInterruptionHandler:v22];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __59__AVVoiceTriggerServer_listener_shouldAcceptNewConnection___block_invoke_2;
  v19[3] = &unk_1E7ECE060;
  objc_copyWeak(&v20, &from);
  objc_copyWeak(&v21, &location);
  [connectionCopy setInvalidationHandler:v19];
  notificationQueue = self->_notificationQueue;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __59__AVVoiceTriggerServer_listener_shouldAcceptNewConnection___block_invoke_2_171;
  v16 = &unk_1E7ECE038;
  v11 = connectionCopy;
  v17 = v11;
  selfCopy = self;
  dispatch_async(notificationQueue, &v13);
  [v11 resume];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v28 = "AVVoiceTriggerServer.mm";
    v29 = 1024;
    v30 = 2327;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%25s:%-5d Done", buf, 0x12u);
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

void __59__AVVoiceTriggerServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2 = objc_loadWeakRetained((a1 + 32));
    *buf = 136315906;
    v11 = "AVVoiceTriggerServer.mm";
    v12 = 1024;
    v13 = 2286;
    v14 = 2112;
    v15 = v2;
    v16 = 1024;
    v17 = [v2 processIdentifier];
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d Interruption Handler: %@, client PID: %d)", buf, 0x22u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (WeakRetained && v4)
  {
    v6 = [WeakRetained notificationQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__AVVoiceTriggerServer_listener_shouldAcceptNewConnection___block_invoke_169;
    v7[3] = &unk_1E7ECE038;
    v8 = v5;
    v9 = WeakRetained;
    dispatch_async(v6, v7);
  }
}

void __59__AVVoiceTriggerServer_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2 = objc_loadWeakRetained((a1 + 32));
    *buf = 136315906;
    v17 = "AVVoiceTriggerServer.mm";
    v18 = 1024;
    v19 = 2297;
    v20 = 2112;
    v21 = v2;
    v22 = 1024;
    v23 = [v2 processIdentifier];
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d Invalidation Handler: %@, client PID: %d exited", buf, 0x22u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained[1];
  v6 = *(v5 + 72);
  v7 = v6;
  if (v6)
  {
    v8 = [v6 processIdentifier];
    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = v8 == [v9 processIdentifier];

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_loadWeakRetained((a1 + 32));
        v12 = [v11 processIdentifier];
        *buf = 136315650;
        v17 = "AVVoiceTriggerServer.mm";
        v18 = 1024;
        v19 = 2303;
        v20 = 1024;
        LODWORD(v21) = v12;
        _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d Disabling Barge-In since PID: %d exited.", buf, 0x18u);
      }

      AVVoiceTriggerServerImpl::enableBargeInMode(v5, 0, 0);
    }
  }

  if (v4)
  {
    v13 = [WeakRetained notificationQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__AVVoiceTriggerServer_listener_shouldAcceptNewConnection___block_invoke_170;
    v14[3] = &unk_1E7ECE038;
    v14[4] = WeakRetained;
    v15 = v4;
    dispatch_async(v13, v14);
  }
}

void __59__AVVoiceTriggerServer_listener_shouldAcceptNewConnection___block_invoke_2_171(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v2 = [*(a1 + 32) processIdentifier];
    *buf = 136315650;
    v16 = "AVVoiceTriggerServer.mm";
    v17 = 1024;
    v18 = 2316;
    v19 = 1024;
    v20 = v2;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d Adding connection for client PID (%d)", buf, 0x18u);
  }

  v3 = [*(a1 + 40) clientConnections];
  [v3 addObject:*(a1 + 32)];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v16 = "AVVoiceTriggerServer.mm";
    v17 = 1024;
    v18 = 2319;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d Client connections dump:", buf, 0x12u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [*(a1 + 40) clientConnections];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v23 count:16];
  if (v5)
  {
    v6 = *v12;
    v7 = MEMORY[0x1E69E9C10];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v10 = [v9 processIdentifier];
          *buf = 136315906;
          v16 = "AVVoiceTriggerServer.mm";
          v17 = 1024;
          v18 = 2321;
          v19 = 1024;
          v20 = v10;
          v21 = 2112;
          v22 = v9;
          _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d \tFor client PID (%d): %@", buf, 0x22u);
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v23 count:16];
    }

    while (v5);
  }
}

void __59__AVVoiceTriggerServer_listener_shouldAcceptNewConnection___block_invoke_170(uint64_t a1)
{
  v2 = [*(a1 + 32) clientConnections];
  [v2 removeObject:*(a1 + 40)];
}

void __59__AVVoiceTriggerServer_listener_shouldAcceptNewConnection___block_invoke_169(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = [*(a1 + 40) clientConnections];
  [v2 removeObject:*(a1 + 32)];
}

- (void)siriClientRecordStateChanged:(BOOL)changed
{
  notificationQueue = [(AVVoiceTriggerServer *)self notificationQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__AVVoiceTriggerServer_siriClientRecordStateChanged___block_invoke;
  v6[3] = &unk_1E7ECE010;
  v6[4] = self;
  changedCopy = changed;
  dispatch_async(notificationQueue, v6);
}

void __53__AVVoiceTriggerServer_siriClientRecordStateChanged___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 116);
  if (*(a1 + 40) == 1)
  {
    v4 = v3 + 1;
LABEL_5:
    *(v2 + 116) = v4;
    goto LABEL_6;
  }

  if (v3)
  {
    v4 = v3 - 1;
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v27 = "AVVoiceTriggerServer.mm";
    v28 = 1024;
    v29 = 1604;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d mNumRecordingSiriClients trying to go negative", buf, 0x12u);
    v4 = *(v2 + 116);
  }

  else
  {
    v4 = 0;
  }

LABEL_6:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v27 = "AVVoiceTriggerServer.mm";
    v28 = 1024;
    v29 = 1607;
    v30 = 1024;
    v31 = v4;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d recording siri clients %d", buf, 0x18u);
    v4 = *(v2 + 116);
  }

  v5 = v4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v27 = "AVVoiceTriggerServer.mm";
    v28 = 1024;
    v29 = 1585;
    v30 = 1024;
    v31 = v4 != 0;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d %d", buf, 0x18u);
    v5 = *(v2 + 116);
  }

  *(v2 + 64) = v4 != 0;
  v6 = [*(a1 + 32) clientConnections];
  v7 = [v6 count];

  if (v7)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [*(a1 + 32) clientConnections];
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v11 = v5;
      v12 = *v22;
      v13 = MEMORY[0x1E69E9C10];
      *&v10 = 136315650;
      v20 = v10;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          v16 = [v15 remoteObjectProxy];
          v17 = v16 == 0;

          if (v17)
          {
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v19 = [v15 processIdentifier];
              *buf = v20;
              v27 = "AVVoiceTriggerServer.mm";
              v28 = 1024;
              v29 = 2255;
              v30 = 1024;
              v31 = v19;
              _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d remoteObjectProxy is nil for client PID (%d)", buf, 0x18u);
            }
          }

          else
          {
            v18 = [v15 remoteObjectProxy];
            [v18 siriClientRecordStateChangedNotification:*(a1 + 40) recordingCount:v11];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v27 = "AVVoiceTriggerServer.mm";
    v28 = 1024;
    v29 = 2259;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d No clients connected", buf, 0x12u);
  }
}

- (void)speechDetectionVADCreated
{
  v7 = *MEMORY[0x1E69E9840];
  serverImpl = self->serverImpl;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315394;
    v4 = "AVVoiceTriggerServer.mm";
    v5 = 1024;
    v6 = 1569;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d speechDetectionVADCreated()", &v3, 0x12u);
  }

  os_unfair_recursive_lock_lock_with_options();
  if (serverImpl->var10 && serverImpl->var12 && serverImpl->var11)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315394;
      v4 = "AVVoiceTriggerServer.mm";
      v5 = 1024;
      v6 = 1576;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d attempt to force enable AOP voice trigger", &v3, 0x12u);
    }

    AVVoiceTriggerServerImpl::enableVoiceTriggerListening(serverImpl, 1u, 1, &__block_literal_global_359);
    notify_post("com.apple.coreaudio.speechDetectionVAD.created");
  }

  os_unfair_recursive_lock_unlock();
}

- (BOOL)isAssistantVoiceTriggerEnabled
{
  serverImpl = self->serverImpl;
  os_unfair_recursive_lock_lock_with_options();
  var11 = 0;
  if (serverImpl->var12)
  {
    var11 = serverImpl->var11;
  }

  os_unfair_recursive_lock_unlock();
  return var11;
}

- (void)sendSpeakerMuteStateChangedNotification:(BOOL)notification
{
  notificationCopy = notification;
  v30 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v25 = "AVVoiceTriggerServer.mm";
    v26 = 1024;
    v27 = 2218;
    v28 = 1024;
    v29 = notificationCopy;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d sending speaker mute state changed notification. isMuted: %d", buf, 0x18u);
  }

  clientConnections = [(AVVoiceTriggerServer *)self clientConnections];
  v6 = [clientConnections count] == 0;

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "AVVoiceTriggerServer.mm";
      v26 = 1024;
      v27 = 2230;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d No clients connected", buf, 0x12u);
    }
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    clientConnections2 = [(AVVoiceTriggerServer *)self clientConnections];
    v8 = [clientConnections2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v10 = *v20;
      v11 = MEMORY[0x1E69E9C10];
      *&v9 = 136315650;
      v18 = v9;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(clientConnections2);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          remoteObjectProxy = [v13 remoteObjectProxy];
          v15 = remoteObjectProxy == 0;

          if (v15)
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              processIdentifier = [v13 processIdentifier];
              *buf = v18;
              v25 = "AVVoiceTriggerServer.mm";
              v26 = 1024;
              v27 = 2226;
              v28 = 1024;
              v29 = processIdentifier;
              _os_log_impl(&dword_1B9A08000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d remoteObjectProxy is nil for client PID (%d)", buf, 0x18u);
            }
          }

          else
          {
            remoteObjectProxy2 = [v13 remoteObjectProxy];
            [remoteObjectProxy2 speakerMuteStateChangedNotification:notificationCopy];
          }
        }

        v8 = [clientConnections2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }
  }
}

- (void)sendActiveStateChangedNotificationForPort:(unint64_t)port isActive:(BOOL)active
{
  activeCopy = active;
  v40 = *MEMORY[0x1E69E9840];
  v7 = AVVoiceTriggerServerImpl::getCachedPortStateInfo(self->serverImpl);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v31 = "AVVoiceTriggerServer.mm";
    v32 = 1024;
    v33 = 2192;
    v34 = 2048;
    v35 = v7;
    v36 = 2048;
    v37 = 8;
    v38 = 2112;
    v39 = v7;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d cached port info %p count: %lu %@", buf, 0x30u);
  }

  v8 = MEMORY[0x1E695DF20];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:activeCopy];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:port];
  v24 = [v8 dictionaryWithObjectsAndKeys:{v9, @"active", v10, @"currentPort", 0}];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v31 = "AVVoiceTriggerServer.mm";
    v32 = 1024;
    v33 = 2195;
    v34 = 2048;
    v35 = v24;
    v36 = 2112;
    v37 = v24;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d sending speaker state changed notification with dictionary (%p) %@", buf, 0x26u);
  }

  clientConnections = [(AVVoiceTriggerServer *)self clientConnections];
  v12 = [clientConnections count] == 0;

  if (v12)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "AVVoiceTriggerServer.mm";
      v32 = 1024;
      v33 = 2212;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d No clients connected", buf, 0x12u);
    }
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    clientConnections2 = [(AVVoiceTriggerServer *)self clientConnections];
    v14 = [clientConnections2 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v14)
    {
      v15 = *v26;
      v16 = MEMORY[0x1E69E9C10];
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(clientConnections2);
          }

          v18 = *(*(&v25 + 1) + 8 * i);
          remoteObjectProxy = [v18 remoteObjectProxy];
          v20 = remoteObjectProxy == 0;

          if (v20)
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              processIdentifier = [v18 processIdentifier];
              *buf = 136315650;
              v31 = "AVVoiceTriggerServer.mm";
              v32 = 1024;
              v33 = 2208;
              v34 = 1024;
              LODWORD(v35) = processIdentifier;
              _os_log_impl(&dword_1B9A08000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d remoteObjectProxy is nil for client PID (%d)", buf, 0x18u);
            }
          }

          else
          {
            if (port == 1)
            {
              remoteObjectProxy2 = [v18 remoteObjectProxy];
              [remoteObjectProxy2 speakerStateChangedNotification:v24];
            }

            remoteObjectProxy3 = [v18 remoteObjectProxy];
            [remoteObjectProxy3 portStateChangedNotification:v7];
          }
        }

        v14 = [clientConnections2 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }
  }
}

- (void)sendVoiceTriggerOccuredNotification:(id)notification triggerTime:(unint64_t)time
{
  v37 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v32 = "AVVoiceTriggerServer.mm";
    v33 = 1024;
    v34 = 2155;
    v35 = 2112;
    v36 = notificationCopy;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d sending voice trigger notification with trigger dictionary %@", buf, 0x1Cu);
  }

  afSiriActivationBuiltInMicVoiceFuncPtr = self->_afSiriActivationBuiltInMicVoiceFuncPtr;
  if (afSiriActivationBuiltInMicVoiceFuncPtr)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __72__AVVoiceTriggerServer_sendVoiceTriggerOccuredNotification_triggerTime___block_invoke;
    v27[3] = &unk_1E7ECDFE8;
    v28 = notificationCopy;
    timeCopy = time;
    afSiriActivationBuiltInMicVoiceFuncPtr(time, v28, v27);
  }

  clientConnections = [(AVVoiceTriggerServer *)self clientConnections];
  v9 = [clientConnections count] == 0;

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "AVVoiceTriggerServer.mm";
      v33 = 1024;
      v34 = 2185;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d No clients connected", buf, 0x12u);
    }
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    clientConnections2 = [(AVVoiceTriggerServer *)self clientConnections];
    v11 = [clientConnections2 countByEnumeratingWithState:&v23 objects:v30 count:16];
    if (v11)
    {
      v13 = *v24;
      v14 = MEMORY[0x1E69E9C10];
      *&v12 = 136315650;
      v22 = v12;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(clientConnections2);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          remoteObjectProxy = [v16 remoteObjectProxy];
          v18 = remoteObjectProxy == 0;

          if (v18)
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              processIdentifier = [v16 processIdentifier];
              *buf = v22;
              v32 = "AVVoiceTriggerServer.mm";
              v33 = 1024;
              v34 = 2180;
              v35 = 1024;
              LODWORD(v36) = processIdentifier;
              _os_log_impl(&dword_1B9A08000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d remoteObjectProxy is nil for client PID (%d)", buf, 0x18u);
            }
          }

          else
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              processIdentifier2 = [v16 processIdentifier];
              *buf = v22;
              v32 = "AVVoiceTriggerServer.mm";
              v33 = 1024;
              v34 = 2176;
              v35 = 1024;
              LODWORD(v36) = processIdentifier2;
              _os_log_impl(&dword_1B9A08000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d sendVoiceTriggerOccuredNotification for client PID (%d)", buf, 0x18u);
            }

            remoteObjectProxy2 = [v16 remoteObjectProxy];
            [remoteObjectProxy2 voiceTriggerNotification:notificationCopy];
          }
        }

        v11 = [clientConnections2 countByEnumeratingWithState:&v23 objects:v30 count:16];
      }

      while (v11);
    }
  }
}

void __72__AVVoiceTriggerServer_sendVoiceTriggerOccuredNotification_triggerTime___block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = 136316162;
      v13 = "AVVoiceTriggerServer.mm";
      v14 = 1024;
      v15 = 2163;
      v16 = 1024;
      *v17 = a2;
      *&v17[4] = 2112;
      *&v17[6] = v5;
      v18 = 2112;
      v19 = v11;
      v7 = MEMORY[0x1E69E9C10];
      v8 = "%25s:%-5d failed to send voicetrigger MAF. success(%d), err(%@). %@";
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 44;
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v12 = 136315650;
    v13 = "AVVoiceTriggerServer.mm";
    v14 = 1024;
    v15 = 2166;
    v16 = 2048;
    *v17 = v6;
    v7 = MEMORY[0x1E69E9C10];
    v8 = "%25s:%-5d voicetrigger sent to MAF. triggerTime(%lld)";
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 28;
LABEL_7:
    _os_log_impl(&dword_1B9A08000, v7, v9, v8, &v12, v10);
  }
}

- (void)activateSecureSession:(BOOL)session reply:(id)reply
{
  sessionCopy = session;
  v16 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 136315650;
    *&v11[4] = "AVVoiceTriggerServer.mm";
    *&v11[12] = 1024;
    *&v11[14] = 2149;
    *&v11[18] = 1024;
    *&v11[20] = sessionCopy;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d activateSecureSession: %d", v11, 0x18u);
  }

  serverImpl = self->serverImpl;
  v8 = replyCopy;
  if (!isHACProduct(0))
  {
    goto LABEL_15;
  }

  {
    CASIsDarwinOS(void)::global = os_variant_is_darwinos();
  }

  if ((CASIsDarwinOS(void)::global & 1) == 0)
  {
    notificationQueue = [serverImpl->var14 notificationQueue];
    *v11 = MEMORY[0x1E69E9820];
    *&v11[8] = 3221225472;
    *&v11[16] = ___ZN24AVVoiceTriggerServerImpl21activateSecureSessionEbU13block_pointerFvP7NSErrorE_block_invoke;
    v12 = &unk_1E7ECE148;
    v14 = serverImpl;
    v15 = sessionCopy;
    v13 = v8;
    dispatch_async(notificationQueue, v11);

    v9 = v13;
  }

  else
  {
LABEL_15:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v11 = 136315394;
      *&v11[4] = "AVVoiceTriggerServer.mm";
      *&v11[12] = 1024;
      *&v11[14] = 1691;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d Session activation/deactivation unsupported", v11, 0x12u);
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:1852797029 userInfo:0];
    (*(v8 + 2))(v8, v9);
  }
}

- (void)setAggressiveECMode:(BOOL)mode reply:(id)reply
{
  modeCopy = mode;
  v41 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v32 = "AVVoiceTriggerServer.mm";
    v33 = 1024;
    v34 = 2138;
    v35 = 1024;
    LODWORD(p_inAddress) = modeCopy;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d setAggressiveECMode: %d", buf, 0x18u);
  }

  if (isHACProduct(0))
  {
    outData = 0;
    inQualifierData = 1936290409;
    ioDataSize = 4;
    p_inObjectID = *"diuibolg";
    LODWORD(v22) = 0;
    PropertyData = AudioObjectGetPropertyData(1u, &p_inObjectID, 4u, &inQualifierData, &ioDataSize, &outData);
    v8.i32[0] = inQualifierData;
    v9 = vrev64_s16(*&vmovl_u8(v8));
    inAddress.mSelector = vuzp1_s8(v9, v9).u32[0];
    LOBYTE(inAddress.mScope) = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v32 = "AVVoiceTriggerServer.mm";
      v33 = 1024;
      v34 = 1828;
      v35 = 2080;
      p_inAddress = &inAddress;
      v37 = 1024;
      v38 = outData;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d useCaseID: %s, deviceID: %d", buf, 0x22u);
    }

    if (PropertyData)
    {
      LOBYTE(v25.mSelector) = HIBYTE(PropertyData);
      BYTE1(v25.mSelector) = BYTE2(PropertyData);
      BYTE2(v25.mSelector) = BYTE1(PropertyData);
      HIBYTE(v25.mSelector) = PropertyData;
      LOBYTE(v25.mScope) = 0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v32 = "AVVoiceTriggerServer.mm";
        v33 = 1024;
        v34 = 1832;
        v35 = 2080;
        p_inAddress = &v25;
        _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d Could not get deviceID error: %s ", buf, 0x1Cu);
      }
    }

    SpeechDetectionDeviceID = outData;
  }

  else
  {
    SpeechDetectionDeviceID = AVVoiceTriggerServerImpl::GetSpeechDetectionDeviceID(0, 0, v6);
  }

  inObjectID = SpeechDetectionDeviceID;
  if (SpeechDetectionDeviceID)
  {
    os_unfair_recursive_lock_lock_with_options();
    *&inAddress.mSelector = 0x696E70746467706DLL;
    inAddress.mElement = 0;
    *&v25.mSelector = 0x696E70746467686DLL;
    v25.mElement = 0;
    outData = 1987339878;
    p_inObjectID = &inObjectID;
    v22 = &inAddress;
    v23 = &v25;
    v24 = 1987339878;
    if (AudioObjectHasProperty(SpeechDetectionDeviceID, &inAddress) && AudioObjectHasProperty(inObjectID, &v25) && (inQualifierData = 0, *buf = 4, !AudioObjectGetPropertyData(inObjectID, &v25, 4u, &v24, buf, &inQualifierData)) && inQualifierData)
    {
      v11 = 0.0;
      if (modeCopy)
      {
        v11 = 1.0;
      }

      inQualifierData = LODWORD(v11);
      v12 = AudioObjectSetPropertyData(inObjectID, &inAddress, 4u, &outData, 4u, &inQualifierData);
      if (!v12)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }

        v20 = "Disable";
        v32 = "AVVoiceTriggerServer.mm";
        *buf = 136315906;
        v33 = 1024;
        if (modeCopy)
        {
          v20 = "Enable";
        }

        v34 = 1651;
        v35 = 2080;
        p_inAddress = v20;
        v37 = 1024;
        v38 = inObjectID;
        v14 = MEMORY[0x1E69E9C10];
        v15 = "%25s:%-5d setAggressiveECMode (%s) on device %d";
        v16 = OS_LOG_TYPE_DEFAULT;
        v17 = 34;
        goto LABEL_25;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = "Disable";
        v32 = "AVVoiceTriggerServer.mm";
        *buf = 136316162;
        v33 = 1024;
        if (modeCopy)
        {
          v13 = "Enable";
        }

        v34 = 1654;
        v35 = 2080;
        p_inAddress = v13;
        v37 = 1024;
        v38 = inObjectID;
        v39 = 1024;
        v40 = v12;
        v14 = MEMORY[0x1E69E9C10];
        v15 = "%25s:%-5d setAggressiveECMode failure to %s listening property on device %d [err2 (%d)]";
        v16 = OS_LOG_TYPE_ERROR;
        v17 = 40;
        goto LABEL_25;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v32 = "AVVoiceTriggerServer.mm";
      v33 = 1024;
      v34 = 1658;
      v35 = 1024;
      LODWORD(p_inAddress) = inObjectID;
      v14 = MEMORY[0x1E69E9C10];
      v15 = "%25s:%-5d setAggressiveECMode device(%d) doesn't have property.";
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 24;
LABEL_25:
      _os_log_impl(&dword_1B9A08000, v14, v16, v15, buf, v17);
    }

LABEL_26:
    os_unfair_recursive_lock_unlock();
    v18 = 0;
    goto LABEL_32;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = "Disabling";
    v32 = "AVVoiceTriggerServer.mm";
    *buf = 136315650;
    if (modeCopy)
    {
      v19 = "Enabling";
    }

    v33 = 1024;
    v34 = 1662;
    v35 = 2080;
    p_inAddress = v19;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d %s setAggressiveECMode - No valid audio device found", buf, 0x1Cu);
  }

  v18 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:560227702 userInfo:0];
LABEL_32:
  replyCopy[2](replyCopy, v18);
}

- (void)siriClientsRecordingReply:(id)reply
{
  v13 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *v9 = 136315394;
    *&v9[4] = "AVVoiceTriggerServer.mm";
    *&v9[12] = 1024;
    *&v9[14] = 2132;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d siriClientsRecording", v9, 0x12u);
  }

  serverImpl = self->serverImpl;
  v6 = replyCopy;
  notificationQueue = [serverImpl->var14 notificationQueue];
  *v9 = MEMORY[0x1E69E9820];
  *&v9[8] = 3221225472;
  *&v9[16] = ___ZN24AVVoiceTriggerServerImpl25siriClientsRecordingReplyEU13block_pointerFvmP7NSErrorE_block_invoke;
  v10 = &unk_1E7ECEB40;
  v11 = v6;
  v12 = serverImpl;
  v8 = v6;
  dispatch_async(notificationQueue, v9);
}

- (void)listeningEnabledReply:(id)reply
{
  v20 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AVVoiceTriggerServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 2126;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d listeningEnabled", buf, 0x12u);
  }

  serverImpl = self->serverImpl;
  v6 = replyCopy;
  outData = 0;
  SpeechDetectionDeviceID = AVVoiceTriggerServerImpl::GetSpeechDetectionDeviceID(1, 0, v7);
  if (SpeechDetectionDeviceID)
  {
    os_unfair_recursive_lock_lock_with_options();
    strcpy(buf, "lepdbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    if (AudioObjectHasProperty(SpeechDetectionDeviceID, buf))
    {
      strcpy(buf, "lepdbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      ioDataSize[0] = 4;
      PropertyData = AudioObjectGetPropertyData(SpeechDetectionDeviceID, buf, 0, 0, ioDataSize, &outData);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "AVVoiceTriggerServer.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1243;
        *&buf[18] = 1024;
        *&buf[20] = outData;
        _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d listeningEnabled : %u", buf, 0x18u);
      }

      if (!PropertyData || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      CAX4CCString::CAX4CCString(ioDataSize, PropertyData);
      *buf = 136315906;
      *&buf[4] = "AVVoiceTriggerServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1245;
      *&buf[18] = 2080;
      *&buf[20] = ioDataSize;
      *&buf[28] = 1024;
      *&buf[30] = SpeechDetectionDeviceID;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "%25s:%-5d Error %s querying listeningEnabled on device 0x%x";
      v12 = 34;
    }

    else
    {
      PropertyData = 2003332927;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_15:
        os_unfair_recursive_lock_unlock();
        goto LABEL_16;
      }

      *buf = 136315394;
      *&buf[4] = "AVVoiceTriggerServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1249;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "%25s:%-5d Property not supported";
      v12 = 18;
    }

    _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_ERROR, v11, buf, v12);
    goto LABEL_15;
  }

  PropertyData = 560227702;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "AVVoiceTriggerServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1254;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d speech detection device not found!", buf, 0x12u);
  }

LABEL_16:
  notificationQueue = [serverImpl->var14 notificationQueue];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZN24AVVoiceTriggerServerImpl21listeningEnabledReplyEU13block_pointerFvbP7NSErrorE_block_invoke;
  *&buf[24] = &unk_1E7ECEB40;
  *&buf[32] = v6;
  v17 = outData;
  v18 = PropertyData;
  v14 = v6;
  dispatch_async(notificationQueue, buf);
}

- (void)getInputChannelInfoCompletion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v22 = 0;
  if ((MGGetBoolAnswer() & 1) == 0)
  {
    unsignedIntValue = 0;
    unsignedIntValue3 = 0;
    v17 = 0;
    unsignedIntValue2 = 1;
    goto LABEL_19;
  }

  SpeechDetectionDeviceID = AVVoiceTriggerServerImpl::GetSpeechDetectionDeviceID(0, &v22, v4);
  unsignedIntValue = 0;
  v7 = v22;
  unsignedIntValue2 = 1;
  if (v22)
  {
    unsignedIntValue3 = 0;
  }

  else
  {
    v9 = SpeechDetectionDeviceID;
    unsignedIntValue3 = 0;
    if (SpeechDetectionDeviceID)
    {
      os_unfair_recursive_lock_lock_with_options();
      *&inAddress.mSelector = 0x676C6F6273647370;
      inAddress.mElement = 0;
      if (AudioObjectHasProperty(v9, &inAddress))
      {
        v11 = AVVoiceTriggerServerImpl::getDictionaryForPropertySelector(0x73647370u, 0, &v22);
        v12 = v11;
        v13 = v22;
        if (v22 || !v11)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            CAX4CCString::CAX4CCString(v25, v13);
            inAddress.mSelector = 136316162;
            *&inAddress.mScope = "AVVoiceTriggerServer.mm";
            v27 = 1024;
            v28 = 1538;
            v29 = 2080;
            v30 = v25;
            v31 = 1024;
            v32 = v9;
            v33 = 2112;
            v34 = v12;
            _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d Error %s fetching barge-in param dict on device 0x%x. Dict(%@)", &inAddress, 0x2Cu);
            unsignedIntValue = 0;
            unsignedIntValue3 = 0;
            unsignedIntValue2 = 1;
          }

          else
          {
            unsignedIntValue = 0;
            unsignedIntValue3 = 0;
          }
        }

        else
        {
          v14 = [v11 objectForKeyedSubscript:@"DSP channels"];
          unsignedIntValue = [v14 unsignedIntValue];

          v15 = [v12 objectForKeyedSubscript:@"mics"];
          unsignedIntValue2 = [v15 unsignedIntValue];

          v16 = [v12 objectForKeyedSubscript:@"refs"];
          unsignedIntValue3 = [v16 unsignedIntValue];
        }
      }

      else
      {
        unsignedIntValue = 0;
        unsignedIntValue3 = 0;
      }

      os_unfair_recursive_lock_unlock();
      v7 = v22;
      if (!v22)
      {
        goto LABEL_18;
      }

LABEL_11:
      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v7 userInfo:0];
      goto LABEL_19;
    }
  }

  if (v22)
  {
    goto LABEL_11;
  }

LABEL_18:
  v17 = 0;
LABEL_19:
  v23[0] = @"dsp-count";
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:unsignedIntValue];
  v24[0] = v18;
  v23[1] = @"mic-count";
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:unsignedIntValue2];
  v24[1] = v19;
  v23[2] = @"speaker-ref-count";
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:unsignedIntValue3];
  v24[2] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    inAddress.mSelector = 136315650;
    *&inAddress.mScope = "AVVoiceTriggerServer.mm";
    v27 = 1024;
    v28 = 2120;
    v29 = 2112;
    v30 = v21;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d getInputChannelInfoCompletion: %@", &inAddress, 0x1Cu);
  }

  completionCopy[2](completionCopy, v21, v17);
}

- (void)voiceTriggerPastDataFramesAvailable:(id)available
{
  v21 = *MEMORY[0x1E69E9840];
  availableCopy = available;
  outData = 0;
  serverImpl = self->serverImpl;
  SpeechDetectionDeviceID = AVVoiceTriggerServerImpl::GetSpeechDetectionDeviceID(1, 0, v6);
  if (!SpeechDetectionDeviceID)
  {
    goto LABEL_13;
  }

  os_unfair_recursive_lock_lock_with_options();
  if (!serverImpl->var10 || (*&inAddress.mSelector = 0x676C6F6264617064, inAddress.mElement = 0, !AudioObjectHasProperty(SpeechDetectionDeviceID, &inAddress)))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      inAddress.mSelector = 136315394;
      *&inAddress.mScope = "AVVoiceTriggerServer.mm";
      v15 = 1024;
      v16 = 1514;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d Property not supported or hardware doesn't support voice trigger", &inAddress, 0x12u);
    }

    goto LABEL_12;
  }

  *&inAddress.mSelector = 0x676C6F6264617064;
  inAddress.mElement = 0;
  ioDataSize[0] = 4;
  PropertyData = AudioObjectGetPropertyData(SpeechDetectionDeviceID, &inAddress, 0, 0, ioDataSize, &outData);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    inAddress.mSelector = 136315650;
    *&inAddress.mScope = "AVVoiceTriggerServer.mm";
    v15 = 1024;
    v16 = 1508;
    v17 = 1024;
    LODWORD(v18) = outData;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d PastData available : %u", &inAddress, 0x18u);
  }

  if (!PropertyData)
  {
LABEL_12:
    os_unfair_recursive_lock_unlock();
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    CAX4CCString::CAX4CCString(ioDataSize, PropertyData);
    inAddress.mSelector = 136315906;
    *&inAddress.mScope = "AVVoiceTriggerServer.mm";
    v15 = 1024;
    v16 = 1510;
    v17 = 2080;
    v18 = ioDataSize;
    v19 = 1024;
    v20 = SpeechDetectionDeviceID;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d Error %s fetching past data available frames on device 0x%x", &inAddress, 0x22u);
  }

  os_unfair_recursive_lock_unlock();
  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:PropertyData userInfo:0];
LABEL_14:
  v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
  v11 = outData;
  if (v10)
  {
    inAddress.mSelector = 136315650;
    *&inAddress.mScope = "AVVoiceTriggerServer.mm";
    v15 = 1024;
    v16 = 2103;
    v17 = 1024;
    LODWORD(v18) = outData;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d past frames %u", &inAddress, 0x18u);
    v11 = outData;
  }

  availableCopy[2](availableCopy, v11, v9);
}

- (void)enableBargeInMode:(BOOL)mode reply:(id)reply
{
  modeCopy = mode;
  v11 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "AVVoiceTriggerServer.mm";
    v9 = 1024;
    v10 = 2089;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d enableBargeInMode", &v7, 0x12u);
  }

  AVVoiceTriggerServerImpl::enableBargeInMode(self->serverImpl, modeCopy, replyCopy);
}

- (void)updateVoiceTriggerConfiguration:(id)configuration reply:(id)reply
{
  v14 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  replyCopy = reply;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "AVVoiceTriggerServer.mm";
    v12 = 1024;
    v13 = 2064;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d updateVoiceTriggerConfiguration", buf, 0x12u);
  }

  if (isHACProduct(0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "AVVoiceTriggerServer.mm";
      v12 = 1024;
      v13 = 2068;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d Configuration of AOP via AVVTC unsupported on this product", buf, 0x12u);
    }

    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:1852797029 userInfo:0];
    replyCopy[2](replyCopy, v7);
  }

  else if (configurationCopy)
  {
    v7 = replyCopy;
    if (AVVoiceTriggerServerImpl::GetSpeechDetectionDeviceID(1, 0, v8))
    {
      os_unfair_recursive_lock_lock_with_options();
      [v7 copy];
      operator new();
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "AVVoiceTriggerServer.mm";
      v12 = 1024;
      v13 = 1217;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d Updating voice trigger configuration - No valid audio device found", buf, 0x12u);
    }

    if (v7)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:560227702 userInfo:0];
      v7[2](v7, v9);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "AVVoiceTriggerServer.mm";
      v12 = 1024;
      v13 = 2077;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d First pass configuration data is nil", buf, 0x12u);
    }

    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:0];
    replyCopy[2](replyCopy, v7);
  }
}

- (void)speakerStateMutedReply:(id)reply
{
  v13 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *v9 = 136315394;
    *&v9[4] = "AVVoiceTriggerServer.mm";
    *&v9[12] = 1024;
    *&v9[14] = 2058;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d speakerMuted", v9, 0x12u);
  }

  serverImpl = self->serverImpl;
  v6 = replyCopy;
  notificationQueue = [serverImpl->var14 notificationQueue];
  *v9 = MEMORY[0x1E69E9820];
  *&v9[8] = 3221225472;
  *&v9[16] = ___ZN24AVVoiceTriggerServerImpl12speakerMutedEU13block_pointerFvbP7NSErrorE_block_invoke;
  v10 = &unk_1E7ECEB40;
  v11 = v6;
  v12 = serverImpl;
  v8 = v6;
  dispatch_async(notificationQueue, v9);
}

- (void)speakerStateActiveReply:(id)reply
{
  replyCopy = reply;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__AVVoiceTriggerServer_speakerStateActiveReply___block_invoke;
  v7[3] = &unk_1E7ECE120;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(notificationQueue, v7);
}

void __48__AVVoiceTriggerServer_speakerStateActiveReply___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *v6 = 136315394;
    *&v6[4] = "AVVoiceTriggerServer.mm";
    *&v6[12] = 1024;
    *&v6[14] = 2051;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d speakerStateActive", v6, 0x12u);
  }

  v2 = *(*(a1 + 32) + 8);
  v3 = *(a1 + 40);
  v4 = [*(v2 + 80) notificationQueue];
  *v6 = MEMORY[0x1E69E9820];
  *&v6[8] = 3221225472;
  *&v6[16] = ___ZN24AVVoiceTriggerServerImpl12isPortActiveEmU13block_pointerFvbP7NSErrorE_block_invoke;
  v7 = &unk_1E7ECE0F8;
  v9 = v2;
  v10 = 1;
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

- (void)enableSpeakerStateListening:(BOOL)listening reply:(id)reply
{
  replyCopy = reply;
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__AVVoiceTriggerServer_enableSpeakerStateListening_reply___block_invoke;
  block[3] = &unk_1E7ECDFC0;
  listeningCopy = listening;
  block[4] = self;
  v10 = replyCopy;
  v8 = replyCopy;
  dispatch_async(notificationQueue, block);
}

uint64_t __58__AVVoiceTriggerServer_enableSpeakerStateListening_reply___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 48);
    v4 = 136315650;
    v5 = "AVVoiceTriggerServer.mm";
    v6 = 1024;
    v7 = 2038;
    v8 = 1024;
    v9 = v2;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d enableSpeakerStateListening %d", &v4, 0x18u);
  }

  AVVoiceTriggerServerImpl::enableListeningOnPort(*(*(a1 + 32) + 8), 1, *(a1 + 48));
  return (*(*(a1 + 40) + 16))();
}

- (void)portsActiveReply:(id)reply
{
  replyCopy = reply;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__AVVoiceTriggerServer_portsActiveReply___block_invoke;
  v7[3] = &unk_1E7ECE120;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(notificationQueue, v7);
}

void __41__AVVoiceTriggerServer_portsActiveReply___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = AVVoiceTriggerServerImpl::getCachedPortStateInfo(*(*(a1 + 32) + 8));
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315906;
    v5 = "AVVoiceTriggerServer.mm";
    v6 = 1024;
    v7 = 2023;
    v8 = 2048;
    v9 = v2;
    v10 = 2112;
    v11 = v2;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d portsActiveReply: (%p) (%@)", &v4, 0x26u);
  }

  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:0];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)enableListeningOnPorts:(id)ports reply:(id)reply
{
  v21 = *MEMORY[0x1E69E9840];
  portsCopy = ports;
  replyCopy = reply;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v16 = "AVVoiceTriggerServer.mm";
    v17 = 1024;
    v18 = 1995;
    v19 = 2112;
    v20 = portsCopy;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d enableListeningOnPorts: (%@)", buf, 0x1Cu);
  }

  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__AVVoiceTriggerServer_enableListeningOnPorts_reply___block_invoke;
  block[3] = &unk_1E7ECDF98;
  v12 = portsCopy;
  selfCopy = self;
  v14 = replyCopy;
  v9 = portsCopy;
  v10 = replyCopy;
  dispatch_async(notificationQueue, block);
}

uint64_t __53__AVVoiceTriggerServer_enableListeningOnPorts_reply___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = [*(a1 + 32) objectForKey:{v6, v12}];
        v8 = [v7 BOOLValue];
        v9 = v6;
        if (v9)
        {
          if ([@"AVVoiceTriggerPort_BuiltinSpeaker" isEqualToString:v9])
          {
            v10 = 1;
          }

          else if ([@"AVVoiceTriggerPort_BluetoothSpeaker" isEqualToString:v9])
          {
            v10 = 2;
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }

        AVVoiceTriggerServerImpl::enableListeningOnPort(*(*(a1 + 40) + 8), v10, v8);
      }

      v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)setListeningProperty:(BOOL)property reply:(id)reply
{
  propertyCopy = property;
  v29 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v20 = "AVVoiceTriggerServer.mm";
    v21 = 1024;
    v22 = 1984;
    v23 = 1024;
    LODWORD(v24) = propertyCopy;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d setListeningProperty: %d", buf, 0x18u);
  }

  SpeechDetectionDeviceID = AVVoiceTriggerServerImpl::GetSpeechDetectionDeviceID(1, 0, v6);
  if (SpeechDetectionDeviceID)
  {
    os_unfair_recursive_lock_lock_with_options();
    v17.mElement = 0;
    inData = propertyCopy;
    *&v17.mSelector = 0x676C6F626470656CLL;
    if (AudioObjectHasProperty(SpeechDetectionDeviceID, &v17))
    {
      v8 = AudioObjectSetPropertyData(SpeechDetectionDeviceID, &v17, 0, 0, 4u, &inData);
      if (v8)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v20 = "AVVoiceTriggerServer.mm";
          v22 = 1051;
          v9 = "Disable";
          v23 = 2080;
          *buf = 136316162;
          v21 = 1024;
          if (propertyCopy)
          {
            v9 = "Enable";
          }

          v24 = v9;
          v25 = 1024;
          v26 = SpeechDetectionDeviceID;
          v27 = 1024;
          v28 = v8;
          v10 = MEMORY[0x1E69E9C10];
          v11 = "%25s:%-5d setListeningProperty failure to %s listening property on device %d [err2 (%d)]";
          v12 = OS_LOG_TYPE_ERROR;
          v13 = 40;
          goto LABEL_21;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v16 = "Disable";
        v20 = "AVVoiceTriggerServer.mm";
        v22 = 1048;
        v23 = 2080;
        *buf = 136315906;
        v21 = 1024;
        if (propertyCopy)
        {
          v16 = "Enable";
        }

        v24 = v16;
        v25 = 1024;
        v26 = SpeechDetectionDeviceID;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "%25s:%-5d setListeningProperty (%s) on device %d";
        v12 = OS_LOG_TYPE_DEFAULT;
        v13 = 34;
        goto LABEL_21;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v20 = "AVVoiceTriggerServer.mm";
      v21 = 1024;
      v22 = 1055;
      v23 = 1024;
      LODWORD(v24) = SpeechDetectionDeviceID;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "%25s:%-5d setListeningProperty device(%d) doesn't have property.";
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 24;
LABEL_21:
      _os_log_impl(&dword_1B9A08000, v10, v12, v11, buf, v13);
    }

    os_unfair_recursive_lock_unlock();
    v15 = 0;
    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = "Disabling";
    v20 = "AVVoiceTriggerServer.mm";
    *buf = 136315650;
    if (propertyCopy)
    {
      v14 = "Enabling";
    }

    v21 = 1024;
    v22 = 1059;
    v23 = 2080;
    v24 = v14;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d %s setListeningProperty - No valid audio device found", buf, 0x1Cu);
  }

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:560227702 userInfo:0];
LABEL_23:
  replyCopy[2](replyCopy, v15);
}

- (void)enableVoiceTriggerListening:(BOOL)listening reply:(id)reply
{
  listeningCopy = listening;
  v13 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "AVVoiceTriggerServer.mm";
    v9 = 1024;
    v10 = 1978;
    v11 = 1024;
    v12 = listeningCopy;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d enableVoiceTriggerListening: %d", &v7, 0x18u);
  }

  AVVoiceTriggerServerImpl::enableVoiceTriggerListening(self->serverImpl, listeningCopy, 0, replyCopy);
}

- (void)initializeWithReply:(id)reply
{
  v12 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315394;
    v9 = "AVVoiceTriggerServer.mm";
    v10 = 1024;
    v11 = 1967;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d Initialize Voice Trigger", &v8, 0x12u);
  }

  serverImpl = self->serverImpl;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "AVVoiceTriggerServer.mm";
    v10 = 1024;
    v11 = 751;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d Re-Notifying AOP listening state", &v8, 0x12u);
  }

  SpeechDetectionDeviceID = AVVoiceTriggerServerImpl::GetSpeechDetectionDeviceID(1, 0, v6);
  if (SpeechDetectionDeviceID)
  {
    AVVoiceTriggerServerImpl::notifyAOPListeningStateChanged(serverImpl, SpeechDetectionDeviceID);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "AVVoiceTriggerServer.mm";
    v10 = 1024;
    v11 = 755;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d Re-Notifying AOP listening state failed -- device not found", &v8, 0x12u);
  }

  replyCopy[2](replyCopy, 0);
}

- (void)dealloc
{
  notificationQueue = self->_notificationQueue;
  self->_notificationQueue = 0;

  serverImpl = self->serverImpl;
  if (serverImpl)
  {
    (*(serverImpl->var0 + 1))(serverImpl);
    self->serverImpl = 0;
  }

  clientConnections = self->_clientConnections;
  self->_clientConnections = 0;

  v6.receiver = self;
  v6.super_class = AVVoiceTriggerServer;
  [(AVVoiceTriggerServer *)&v6 dealloc];
}

- (AVVoiceTriggerServer)init
{
  v24 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = AVVoiceTriggerServer;
  v2 = [(AVVoiceTriggerServer *)&v19 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("AVVoiceTriggerServer.notification", v3);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v4;

    v6 = v2->_notificationQueue;
    if (GetAudioWorkQueuePriority(void)::once != -1)
    {
      dispatch_once(&GetAudioWorkQueuePriority(void)::once, &__block_literal_global_9182);
    }

    v7 = GetCustomRootQueue(GetAudioWorkQueuePriority(void)::gAudioWorkQueuePriority);
    dispatch_set_target_queue(v6, v7);

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    clientConnections = v2->_clientConnections;
    v2->_clientConnections = v8;

    v10 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.audio.voicetrigger.xpc"];
    serverListener = v2->_serverListener;
    v2->_serverListener = v10;

    [(NSXPCListener *)v2->_serverListener setDelegate:v2];
    strcpy(__path, "/System/Library/PrivateFrameworks/AssistantServices.framework/AssistantServices");
    v12 = dlopen(__path, 1);
    v2->_mobileAssistantDylib = v12;
    if (v12)
    {
      v13 = dlsym(v12, "AFSiriActivationBuiltInMicVoice");
      v2->_afSiriActivationBuiltInMicVoiceFuncPtr = v13;
      if (!v13)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        *buf = 136315394;
        *&buf[4] = "AVVoiceTriggerServer.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1910;
        v14 = MEMORY[0x1E69E9C10];
        v15 = "%25s:%-5d Unable to find AFSiriActivationBuiltInMicVoice in MAF";
        v16 = OS_LOG_TYPE_ERROR;
        v17 = 18;
LABEL_13:
        _os_log_impl(&dword_1B9A08000, v14, v16, v15, buf, v17);
LABEL_14:
        operator new();
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 136315650;
      *&buf[4] = "AVVoiceTriggerServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1913;
      v21 = 2048;
      v22 = v13;
      v14 = MEMORY[0x1E69E9C10];
      v15 = "%25s:%-5d Successfully found address of AFSiriActivationBuiltInMicVoice in MAF: 0x%p";
      v16 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 136315650;
      *&buf[4] = "AVVoiceTriggerServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1917;
      v21 = 2080;
      v22 = __path;
      v14 = MEMORY[0x1E69E9C10];
      v15 = "%25s:%-5d Unable to open %s";
      v16 = OS_LOG_TYPE_ERROR;
    }

    v17 = 28;
    goto LABEL_13;
  }

  return 0;
}

void __28__AVVoiceTriggerServer_init__block_invoke(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315650;
    v4 = "AVVoiceTriggerServer.mm";
    v5 = 1024;
    v6 = 1936;
    v7 = 1024;
    v8 = a2;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d VTStateManager callback message: %d (0-start,1-stop,2-modelupdate)", &v3, 0x18u);
  }
}

@end