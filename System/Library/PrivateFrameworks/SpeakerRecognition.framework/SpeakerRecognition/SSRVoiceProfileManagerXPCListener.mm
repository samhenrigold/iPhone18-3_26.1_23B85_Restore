@interface SSRVoiceProfileManagerXPCListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SSRVoiceProfileManagerXPCListener)init;
- (void)listen;
@end

@implementation SSRVoiceProfileManagerXPCListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v20 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = MEMORY[0x277D01970];
  v9 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[SSRVoiceProfileManagerXPCListener listener:shouldAcceptNewConnection:]";
    _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s SSRVoiceProfileManagerXPCListener: New connection request", &v16, 0xCu);
  }

  xpcListener = self->_xpcListener;
  if (xpcListener == listenerCopy)
  {
    v12 = objc_alloc_init(SSRVoiceProfileManagerXPCService);
    v13 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283941E28];
    [connectionCopy setExportedInterface:v13];

    [connectionCopy setExportedObject:v12];
    [connectionCopy setRemoteObjectInterface:0];
    [connectionCopy resume];
    v14 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "[SSRVoiceProfileManagerXPCListener listener:shouldAcceptNewConnection:]";
      _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s SSRVoiceProfileManagerXPCListener: Connection accepted and resumed", &v16, 0xCu);
    }
  }

  else
  {
    v11 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "[SSRVoiceProfileManagerXPCListener listener:shouldAcceptNewConnection:]";
      v18 = 2114;
      v19 = listenerCopy;
      _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s Invalid listener - %{public}@", &v16, 0x16u);
    }
  }

  return xpcListener == listenerCopy;
}

- (void)listen
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SSRVoiceProfileManagerXPCListener listen]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s SSRVoiceProfileManagerXPCListener: Starting to listen", &v4, 0xCu);
  }

  [(NSXPCListener *)self->_xpcListener resume];
}

- (SSRVoiceProfileManagerXPCListener)init
{
  v6.receiver = self;
  v6.super_class = SSRVoiceProfileManagerXPCListener;
  v2 = [(SSRVoiceProfileManagerXPCListener *)&v6 init];
  if (v2)
  {
    SSRLogInitIfNeeded();
    v3 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.siri.voiceprofilemanager.xpc"];
    xpcListener = v2->_xpcListener;
    v2->_xpcListener = v3;

    [(NSXPCListener *)v2->_xpcListener setDelegate:v2];
  }

  return v2;
}

@end