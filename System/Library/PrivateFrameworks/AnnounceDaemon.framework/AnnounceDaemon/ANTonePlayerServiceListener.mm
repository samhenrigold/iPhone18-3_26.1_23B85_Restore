@interface ANTonePlayerServiceListener
- (ANTonePlayerServiceListener)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_fileURLForTone:(unint64_t)tone;
- (void)cleanForExit;
- (void)playTone:(unint64_t)tone audioSessionID:(unsigned int)d endpointUUID:(id)iD completionHandler:(id)handler;
@end

@implementation ANTonePlayerServiceListener

- (ANTonePlayerServiceListener)init
{
  v11 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = ANTonePlayerServiceListener;
  v2 = [(ANTonePlayerServiceListener *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCAE98]);
    v4 = [v3 initWithMachServiceName:*MEMORY[0x277CEAA30]];
    listener = v2->_listener;
    v2->_listener = v4;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    v6 = ANLogHandleTonePlayerServiceListener([(NSXPCListener *)v2->_listener resume]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "%@Tone Player Service Listener Up!", buf, 0xCu);
    }
  }

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v30 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = ANLogHandleTonePlayerServiceListener(connectionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(connectionCopy, "processIdentifier")}];
    serviceName = [connectionCopy serviceName];
    *buf = 138412802;
    v25 = &stru_2851BDB18;
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = serviceName;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%@New Connection Request From (PID = %@) For Service: (%@)", buf, 0x20u);
  }

  isAnnounceEnabled = [MEMORY[0x277CEAB38] isAnnounceEnabled];
  if ((isAnnounceEnabled & 1) == 0)
  {
    v16 = ANLogHandleTonePlayerServiceListener(isAnnounceEnabled);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v16, OS_LOG_TYPE_ERROR, "%@Rejecting connection. Announce not enabled.", buf, 0xCu);
    }

    goto LABEL_13;
  }

  hasAnnounceEntitlement = [connectionCopy hasAnnounceEntitlement];
  if ((hasAnnounceEntitlement & 1) == 0)
  {
    v16 = ANLogHandleTonePlayerServiceListener(hasAnnounceEntitlement);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *MEMORY[0x277CEAC10];
      *buf = 138412546;
      v25 = &stru_2851BDB18;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_23F525000, v16, OS_LOG_TYPE_ERROR, "%@Missing Announce Entitlement: %@", buf, 0x16u);
    }

LABEL_13:

    v15 = 0;
    goto LABEL_14;
  }

  an_tonePlayerServiceInterface = [MEMORY[0x277CCAE90] an_tonePlayerServiceInterface];
  [connectionCopy setExportedInterface:an_tonePlayerServiceInterface];

  [connectionCopy setExportedObject:self];
  objc_initWeak(&location, connectionCopy);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__ANTonePlayerServiceListener_listener_shouldAcceptNewConnection___block_invoke;
  v21[3] = &unk_278C86580;
  objc_copyWeak(&v22, &location);
  [connectionCopy setInterruptionHandler:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__ANTonePlayerServiceListener_listener_shouldAcceptNewConnection___block_invoke_5;
  v19[3] = &unk_278C86580;
  objc_copyWeak(&v20, &location);
  [connectionCopy setInvalidationHandler:v19];
  v14 = ANLogHandleTonePlayerServiceListener([connectionCopy resume]);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = &stru_2851BDB18;
    v26 = 2112;
    v27 = connectionCopy;
    _os_log_impl(&dword_23F525000, v14, OS_LOG_TYPE_DEFAULT, "%@Connection Accepted: (%@)", buf, 0x16u);
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
  v15 = 1;
LABEL_14:

  return v15;
}

void __66__ANTonePlayerServiceListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleTonePlayerServiceListener(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = 138412546;
    v5 = &stru_2851BDB18;
    v6 = 2112;
    v7 = WeakRetained;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@Connection Interrupted: (%@)", &v4, 0x16u);
  }
}

void __66__ANTonePlayerServiceListener_listener_shouldAcceptNewConnection___block_invoke_5(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleTonePlayerServiceListener(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = 138412546;
    v5 = &stru_2851BDB18;
    v6 = 2112;
    v7 = WeakRetained;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@Connection Invalidated: (%@)", &v4, 0x16u);
  }
}

- (void)cleanForExit
{
  listener = [(ANTonePlayerServiceListener *)self listener];
  [listener invalidate];
}

- (void)playTone:(unint64_t)tone audioSessionID:(unsigned int)d endpointUUID:(id)iD completionHandler:(id)handler
{
  v7 = *&d;
  v23 = *MEMORY[0x277D85DE8];
  iDCopy = iD;
  handlerCopy = handler;
  player = [(ANTonePlayerServiceListener *)self player];
  [player stop];

  v14 = ANLogHandleTonePlayerServiceListener(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    v20 = &stru_2851BDB18;
    v21 = 2112;
    toneCopy = iDCopy;
    _os_log_impl(&dword_23F525000, v14, OS_LOG_TYPE_DEFAULT, "%@Received Request to play tone. Endpoint ID = %@", &v19, 0x16u);
  }

  v15 = [(ANTonePlayerServiceListener *)self _fileURLForTone:tone];
  if (v15)
  {
    v16 = [[ANTonePlayer alloc] initWithAudioSessionID:v7 endpointUUID:iDCopy];
    [(ANTonePlayerServiceListener *)self setPlayer:v16];

    player2 = [(ANTonePlayerServiceListener *)self player];
    [player2 playFileURL:v15 completionHandler:handlerCopy];
  }

  else
  {
    v18 = ANLogHandleTonePlayerServiceListener(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 138412546;
      v20 = &stru_2851BDB18;
      v21 = 2048;
      toneCopy = tone;
      _os_log_impl(&dword_23F525000, v18, OS_LOG_TYPE_ERROR, "%@Failed to find URL for tone: %lu", &v19, 0x16u);
    }

    player2 = [MEMORY[0x277CCA9B8] an_errorWithCode:1052 component:*MEMORY[0x277CEA9D0]];
    handlerCopy[2](handlerCopy, player2);
  }
}

- (id)_fileURLForTone:(unint64_t)tone
{
  if (tone)
  {
    v3 = 0;
  }

  else
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 pathForResource:@"AnnounceSent" ofType:@"wav"];
    v3 = [v4 fileURLWithPath:v6];
  }

  return v3;
}

@end