@interface CSVoiceTriggerXPCClient
- (CSVoiceTriggerXPCClient)init;
- (CSVoiceTriggerXPCClientDelegate)delegate;
- (id)fetchVoiceTriggerStats;
- (void)_handleListenerDisconnectedError:(id)error;
- (void)_handleListenerError:(id)error;
- (void)_handleListenerEvent:(id)event;
- (void)_sendMessage:(id)message connection:(id)connection completion:(id)completion;
- (void)connect;
- (void)dealloc;
- (void)enableVoiceTrigger:(BOOL)trigger withAssertion:(id)assertion timestamp:(double)timestamp;
- (void)notifyVoiceTriggeredSiriSessionCancelled;
- (void)setPhraseSpotterBypassing:(BOOL)bypassing timeout:(double)timeout;
- (void)setRaiseToSpeakBypassing:(BOOL)bypassing timeout:(double)timeout;
@end

@implementation CSVoiceTriggerXPCClient

- (CSVoiceTriggerXPCClient)init
{
  v6.receiver = self;
  v6.super_class = CSVoiceTriggerXPCClient;
  v2 = [(CSVoiceTriggerXPCClient *)&v6 init];
  if (v2)
  {
    CSLogInitIfNeeded();
    mach_service = xpc_connection_create_mach_service("com.apple.corespeech.voicetriggerservice", 0, 0);
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = mach_service;
  }

  return v2;
}

- (void)connect
{
  objc_initWeak(&location, self);
  xpcConnection = self->_xpcConnection;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__CSVoiceTriggerXPCClient_connect__block_invoke;
  v4[3] = &unk_2784C69C0;
  objc_copyWeak(&v5, &location);
  xpc_connection_set_event_handler(xpcConnection, v4);
  xpc_connection_activate(self->_xpcConnection);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    v4 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v8 = "[CSVoiceTriggerXPCClient dealloc]";
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s disconnect VoiceTriggerXPCClient", buf, 0xCu);
      xpcConnection = self->_xpcConnection;
    }

    xpc_connection_cancel(xpcConnection);
    v5 = self->_xpcConnection;
    self->_xpcConnection = 0;
  }

  v6.receiver = self;
  v6.super_class = CSVoiceTriggerXPCClient;
  [(CSVoiceTriggerXPCClient *)&v6 dealloc];
}

void __34__CSVoiceTriggerXPCClient_connect__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleListenerEvent:v3];
}

- (CSVoiceTriggerXPCClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_sendMessage:(id)message connection:(id)connection completion:(id)completion
{
  messageCopy = message;
  connectionCopy = connection;
  completionCopy = completion;
  v10 = completionCopy;
  if (messageCopy && connectionCopy)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __62__CSVoiceTriggerXPCClient__sendMessage_connection_completion___block_invoke;
    handler[3] = &unk_2784C6A48;
    v12 = completionCopy;
    xpc_connection_send_message_with_reply(connectionCopy, messageCopy, 0, handler);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __62__CSVoiceTriggerXPCClient__sendMessage_connection_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = xpc_dictionary_get_BOOL(v3, "result");
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v4, 0);
  }
}

- (id)fetchVoiceTriggerStats
{
  keys[1] = *MEMORY[0x277D85DE8];
  keys[0] = "type";
  values = xpc_int64_create(5);
  v3 = xpc_dictionary_create(keys, &values, 1uLL);
  *v18 = xmmword_2784C6A30;
  v17[0] = xpc_int64_create(2);
  v4 = v3;
  v17[1] = v4;
  v5 = xpc_dictionary_create(v18, v17, 2uLL);
  v6 = xpc_connection_send_message_with_reply_sync(self->_xpcConnection, v5);
  v7 = v6;
  if (v6)
  {
    if (xpc_dictionary_get_BOOL(v6, "result"))
    {
      v8 = xpc_dictionary_get_dictionary(v7, "triggerStats");
      if (v8)
      {
        v9 = objc_alloc(MEMORY[0x277CBEAC0]);
        v10 = [v9 _cs_initWithXPCObject:v8];
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_10;
    }

    v11 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[CSVoiceTriggerXPCClient fetchVoiceTriggerStats]";
      _os_log_error_impl(&dword_222E4D000, v11, OS_LOG_TYPE_ERROR, "%s ERR: failed to get response !", &v15, 0xCu);
    }
  }

  v10 = 0;
LABEL_10:
  v12 = v10;

  for (i = 1; i != -1; --i)
  {
  }

  return v12;
}

- (void)setRaiseToSpeakBypassing:(BOOL)bypassing timeout:(double)timeout
{
  v17 = *MEMORY[0x277D85DE8];
  *keys = xmmword_2784C6A18;
  v16 = "bypassTimeout";
  values[0] = xpc_int64_create(4);
  values[1] = xpc_BOOL_create(bypassing);
  values[2] = xpc_double_create(timeout);
  v7 = xpc_dictionary_create(keys, values, 3uLL);
  *v13 = xmmword_2784C6A30;
  v12[0] = xpc_int64_create(2);
  v8 = v7;
  v12[1] = v8;
  v9 = xpc_dictionary_create(v13, v12, 2uLL);
  [(CSVoiceTriggerXPCClient *)self _sendMessage:v9 connection:self->_xpcConnection completion:0, v12[0]];

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 2; j != -1; --j)
  {
  }
}

- (void)notifyVoiceTriggeredSiriSessionCancelled
{
  keys[1] = *MEMORY[0x277D85DE8];
  keys[0] = "type";
  values = xpc_int64_create(2);
  v3 = xpc_dictionary_create(keys, &values, 1uLL);
  *v8 = xmmword_2784C6A30;
  v7[0] = xpc_int64_create(2);
  v4 = v3;
  v7[1] = v4;
  v5 = xpc_dictionary_create(v8, v7, 2uLL);
  [(CSVoiceTriggerXPCClient *)self _sendMessage:v5 connection:self->_xpcConnection completion:0, v7[0]];

  for (i = 1; i != -1; --i)
  {
  }
}

- (void)setPhraseSpotterBypassing:(BOOL)bypassing timeout:(double)timeout
{
  v17 = *MEMORY[0x277D85DE8];
  *keys = xmmword_2784C6A00;
  v16 = "bypassTimeout";
  values[0] = xpc_int64_create(1);
  values[1] = xpc_BOOL_create(bypassing);
  values[2] = xpc_double_create(timeout);
  v7 = xpc_dictionary_create(keys, values, 3uLL);
  *v13 = xmmword_2784C6A30;
  v12[0] = xpc_int64_create(2);
  v8 = v7;
  v12[1] = v8;
  v9 = xpc_dictionary_create(v13, v12, 2uLL);
  [(CSVoiceTriggerXPCClient *)self _sendMessage:v9 connection:self->_xpcConnection completion:0, v12[0]];

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 2; j != -1; --j)
  {
  }
}

- (void)enableVoiceTrigger:(BOOL)trigger withAssertion:(id)assertion timestamp:(double)timestamp
{
  v19 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  *keys = xmmword_2784C69E0;
  v18 = *&off_2784C69F0;
  values[0] = xpc_int64_create(3);
  values[1] = xpc_BOOL_create(trigger);
  values[2] = xpc_string_create([assertionCopy UTF8String]);
  values[3] = xpc_double_create(timestamp);
  v9 = xpc_dictionary_create(keys, values, 4uLL);
  *v15 = xmmword_2784C6A30;
  v14[0] = xpc_int64_create(2);
  v10 = v9;
  v14[1] = v10;
  v11 = xpc_dictionary_create(v15, v14, 2uLL);
  [(CSVoiceTriggerXPCClient *)self _sendMessage:v11 connection:self->_xpcConnection completion:0, v14[0]];

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 3; j != -1; --j)
  {
  }
}

- (void)_handleListenerDisconnectedError:(id)error
{
  delegate = [(CSVoiceTriggerXPCClient *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained voiceTriggerXPCClient:self didDisconnect:1];
  }
}

- (void)_handleListenerError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = errorCopy;
  if (!errorCopy)
  {
    v10 = *MEMORY[0x277D015D8];
    if (!os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v12 = 136315394;
    v13 = "[CSVoiceTriggerXPCClient _handleListenerError:]";
    v14 = 2050;
    v15 = 0;
    v8 = "%s cannot handle error : error = %{public}p";
    goto LABEL_15;
  }

  if (errorCopy != MEMORY[0x277D863F8] && errorCopy != MEMORY[0x277D863F0])
  {
    string = xpc_dictionary_get_string(errorCopy, *MEMORY[0x277D86400]);
    v10 = *MEMORY[0x277D015D8];
    if (!os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v12 = 136315394;
    v13 = "[CSVoiceTriggerXPCClient _handleListenerError:]";
    v14 = 2082;
    v15 = string;
    v8 = "%s connection error: %{public}s";
LABEL_15:
    _os_log_error_impl(&dword_222E4D000, v10, OS_LOG_TYPE_ERROR, v8, &v12, 0x16u);
    goto LABEL_13;
  }

  v7 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[CSVoiceTriggerXPCClient _handleListenerError:]";
    _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_DEFAULT, "%s Listener connection disconnected", &v12, 0xCu);
  }

  [(CSVoiceTriggerXPCClient *)self _handleListenerDisconnectedError:v5];
LABEL_13:
}

- (void)_handleListenerEvent:(id)event
{
  v15 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy)
  {
    if (MEMORY[0x223DD2E40](eventCopy) == MEMORY[0x277D86480])
    {
      [(CSVoiceTriggerXPCClient *)self _handleListenerError:v5];
      goto LABEL_9;
    }

    v6 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[CSVoiceTriggerXPCClient _handleListenerEvent:]";
      v7 = "%s ignore unknown types of message ";
      v8 = v6;
      v9 = 12;
LABEL_7:
      _os_log_error_impl(&dword_222E4D000, v8, OS_LOG_TYPE_ERROR, v7, &v11, v9);
    }
  }

  else
  {
    v10 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[CSVoiceTriggerXPCClient _handleListenerEvent:]";
      v13 = 2050;
      v14 = 0;
      v7 = "%s cannot handle event : event = %{public}p";
      v8 = v10;
      v9 = 22;
      goto LABEL_7;
    }
  }

LABEL_9:
}

@end