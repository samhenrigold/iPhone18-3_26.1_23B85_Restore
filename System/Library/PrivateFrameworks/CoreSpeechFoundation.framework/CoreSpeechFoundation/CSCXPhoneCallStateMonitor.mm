@interface CSCXPhoneCallStateMonitor
+ (id)sharedInstance;
- (BOOL)firstPartyCall;
- (CSCXPhoneCallStateMonitor)init;
- (unint64_t)phoneCallState;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
- (void)callObserver:(id)observer callChanged:(id)changed;
@end

@implementation CSCXPhoneCallStateMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3882 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3882, &__block_literal_global_3883);
  }

  v3 = sharedInstance_sharedInstance_3884;

  return v3;
}

- (unint64_t)phoneCallState
{
  v33 = *MEMORY[0x1E69E9840];
  [(CXCallObserver *)self->_callObserver calls];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v21 = 0u;
  v2 = [obj countByEnumeratingWithState:&v18 objects:v32 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v19;
    *&v3 = 136316162;
    v16 = v3;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v8;
          hasConnected = [v7 hasConnected];
          isOnHold = [v7 isOnHold];
          hasEnded = [v7 hasEnded];
          isOutgoing = [v7 isOutgoing];
          *buf = v16;
          v23 = "[CSCXPhoneCallStateMonitor phoneCallState]";
          v24 = 1024;
          v25 = hasConnected;
          v26 = 1024;
          v27 = isOnHold;
          v28 = 1024;
          v29 = hasEnded;
          v30 = 1024;
          v31 = isOutgoing;
          _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Call : [connected:%d] [onhold:%d] [hasEnd:%d] [isOutputgoing:%d]", buf, 0x24u);
        }

        if ([v7 hasEnded])
        {
          v14 = 1;
          goto LABEL_23;
        }

        if ([v7 isOutgoing] && !objc_msgSend(v7, "hasConnected"))
        {
          v14 = 4;
          goto LABEL_23;
        }

        if (([v7 hasConnected] & 1) == 0 && (objc_msgSend(v7, "hasEnded") & 1) == 0 && (objc_msgSend(v7, "isOnHold") & 1) == 0 && !objc_msgSend(v7, "isOutgoing"))
        {
          v14 = 2;
          goto LABEL_23;
        }

        if ([v7 hasConnected])
        {
          v14 = 3;
          goto LABEL_23;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v32 count:16];
      v14 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_23:

  return v14;
}

- (BOOL)firstPartyCall
{
  v27 = *MEMORY[0x1E69E9840];
  [(CXCallObserver *)self->_callObserver calls];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v21 = 0u;
  v3 = [obj countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    v6 = 1;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        providerIdentifier = [v8 providerIdentifier];
        v10 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v23 = "[CSCXPhoneCallStateMonitor firstPartyCall]";
          v24 = 2112;
          v25 = providerIdentifier;
          _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Call : [providerIdentifier: %@]", buf, 0x16u);
        }

        if (!providerIdentifier)
        {
          v6 = 0;
          goto LABEL_18;
        }

        v11 = [(TUCallProviderManager *)self->_tuCallProviderManager providerWithIdentifier:providerIdentifier];
        v12 = v11;
        if (v11)
        {
          if (([v11 isSystemProvider] & 1) == 0)
          {
            v13 = CSLogContextFacilityCoreSpeech;
            v6 = 0;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              v14 = v13;
              providerIdentifier2 = [v8 providerIdentifier];
              *buf = 136315394;
              v23 = "[CSCXPhoneCallStateMonitor firstPartyCall]";
              v24 = 2112;
              v25 = providerIdentifier2;
              _os_log_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_DEFAULT, "%s Call identifier is not first party: %@", buf, 0x16u);

              v6 = 0;
            }
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 1;
  }

LABEL_18:

  return v6 & 1;
}

- (void)callObserver:(id)observer callChanged:(id)changed
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    changedCopy = changed;
    hasConnected = [changedCopy hasConnected];
    isOnHold = [changedCopy isOnHold];
    hasEnded = [changedCopy hasEnded];
    isOutgoing = [changedCopy isOutgoing];

    *buf = 136316162;
    v15 = "[CSCXPhoneCallStateMonitor callObserver:callChanged:]";
    v16 = 1024;
    v17 = hasConnected;
    v18 = 1024;
    v19 = isOnHold;
    v20 = 1024;
    v21 = hasEnded;
    v22 = 1024;
    v23 = isOutgoing;
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Received Call Observer Input : [connected:%d] [onhold:%d] [hasEnd:%d] [isOutputgoing:%d]", buf, 0x24u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__CSCXPhoneCallStateMonitor_callObserver_callChanged___block_invoke;
  v13[3] = &unk_1E865CB20;
  v13[4] = self;
  [(CSEventMonitor *)self enumerateObserversInQueue:v13];
}

void __54__CSCXPhoneCallStateMonitor_callObserver_callChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) notifyObserver:v3];
  if (objc_opt_respondsToSelector())
  {
    [v3 CSPhoneCallStateMonitor:*(a1 + 32) didRecievePhoneCallStateChange:{objc_msgSend(*(a1 + 32), "phoneCallState")}];
  }
}

- (void)_stopMonitoring
{
  callObserver = self->_callObserver;
  if (callObserver)
  {
    self->_callObserver = 0;
  }

  tuCallProviderManager = self->_tuCallProviderManager;
  if (tuCallProviderManager)
  {
    self->_tuCallProviderManager = 0;
  }

  [(CSPhoneCallStateMonitor *)self deregisterDropInCallNotification];
}

- (void)_startMonitoringWithQueue:(id)queue
{
  queueCopy = queue;
  if (!self->_callObserver)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695AF00]);
    callObserver = self->_callObserver;
    self->_callObserver = v4;

    [(CXCallObserver *)self->_callObserver setDelegate:self queue:0];
  }

  if (!self->_tuCallProviderManager)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69D8A88]);
    tuCallProviderManager = self->_tuCallProviderManager;
    self->_tuCallProviderManager = v6;
  }

  [(CSPhoneCallStateMonitor *)self registerDropInCallNotificationIfNeeded];
}

- (CSCXPhoneCallStateMonitor)init
{
  if (+[CSUtils isDarwinOS])
  {
    selfCopy = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CSCXPhoneCallStateMonitor;
    self = [(CSEventMonitor *)&v5 init];
    selfCopy = self;
  }

  return selfCopy;
}

uint64_t __43__CSCXPhoneCallStateMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSCXPhoneCallStateMonitor);
  v1 = sharedInstance_sharedInstance_3884;
  sharedInstance_sharedInstance_3884 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end