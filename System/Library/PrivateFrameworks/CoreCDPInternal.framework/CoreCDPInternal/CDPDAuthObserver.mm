@interface CDPDAuthObserver
- (CDPDAuthObserver)init;
- (void)eventReceived:(const char *)received eventInfo:(id)info;
@end

@implementation CDPDAuthObserver

- (CDPDAuthObserver)init
{
  v6.receiver = self;
  v6.super_class = CDPDAuthObserver;
  v2 = [(CDPDAuthObserver *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    authListeners = v2->_authListeners;
    v2->_authListeners = array;
  }

  return v2;
}

- (void)eventReceived:(const char *)received eventInfo:(id)info
{
  v20 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    receivedCopy = received;
    v18 = 2112;
    v19 = infoCopy;
    _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Received Auth Notification %s, with userInfo %@", buf, 0x16u);
  }

  if (!strcmp([*MEMORY[0x277CF0120] UTF8String], received))
  {
    v8 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CF0118]];
    v9 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CF0128]];
    v10 = _CDPLogSystem();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 141558274;
        receivedCopy = 1752392040;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&dword_24510B000, v11, OS_LOG_TYPE_DEFAULT, "Detected security level change for %{mask.hash}@", buf, 0x16u);
      }

      v12 = [MEMORY[0x277CFD4A8] contextForAccountWithAltDSID:v8];
      authListeners = self->_authListeners;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __44__CDPDAuthObserver_eventReceived_eventInfo___block_invoke;
      v14[3] = &unk_278E25488;
      v15 = v12;
      v11 = v12;
      [(NSMutableArray *)authListeners enumerateObjectsUsingBlock:v14];
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [CDPDAuthObserver eventReceived:received eventInfo:v11];
    }
  }

  else
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CDPDAuthObserver eventReceived:received eventInfo:v8];
    }
  }
}

- (void)eventReceived:(uint64_t)a1 eventInfo:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = a1;
  _os_log_debug_impl(&dword_24510B000, a2, OS_LOG_TYPE_DEBUG, "Auth observer ignoring: %s", &v2, 0xCu);
}

- (void)eventReceived:(uint64_t)a1 eventInfo:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = a1;
  v4 = 2112;
  v5 = 0;
  _os_log_debug_impl(&dword_24510B000, a2, OS_LOG_TYPE_DEBUG, "Auth observer ignoring %s, securityLevel %@", &v2, 0x16u);
}

@end