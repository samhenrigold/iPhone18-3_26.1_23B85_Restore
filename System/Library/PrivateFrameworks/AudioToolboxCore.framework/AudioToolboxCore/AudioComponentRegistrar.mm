@interface AudioComponentRegistrar
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)initForMode:(BOOL)mode;
- (id)replaceListener:(id)listener withListener:(id)withListener;
- (void)dealloc;
- (void)resumeListeners;
@end

@implementation AudioComponentRegistrar

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v19[3] = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  listenerCopy = listener;
  connectionCopy = connection;
  _queue = [listenerCopy _queue];
  [connectionCopy _setQueue:_queue];

  v9 = *(impl + 13);
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v10 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "AudioComponentRegistrar.mm";
    *&buf[12] = 1024;
    *&buf[14] = 194;
    *&buf[18] = 1024;
    *&buf[20] = v9 != listenerCopy;
    LOWORD(v18) = 1024;
    *(&v18 + 2) = [connectionCopy processIdentifier];
    _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d (main %d  pid %d)", buf, 0x1Eu);
  }

  if (v9 == listenerCopy)
  {
    [connectionCopy setExportedInterface:*(impl + 14)];
    v12 = [[AudioComponentPrefRegConnection alloc] initWithRegistrar:impl connection:connectionCopy];
    [connectionCopy setExportedObject:v12];
  }

  else
  {
    [connectionCopy setExportedInterface:*(impl + 11)];
    [connectionCopy setRemoteObjectInterface:*(impl + 12)];
    v12 = [[AudioComponentMainRegConnection alloc] initWithRegistrar:impl connection:connectionCopy];
    [*(impl + 16) addObject:v12];
    objc_initWeak(&location, v12);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZN27AudioComponentRegistrarImpl33listenerShouldAcceptNewConnectionEP13NSXPCListenerP15NSXPCConnection_block_invoke;
    v18 = &unk_1E72C2AA8;
    v19[1] = impl;
    objc_copyWeak(v19, &location);
    [connectionCopy setInterruptionHandler:buf];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = ___ZN27AudioComponentRegistrarImpl33listenerShouldAcceptNewConnectionEP13NSXPCListenerP15NSXPCConnection_block_invoke_2;
    v14[3] = &unk_1E72C2AA8;
    v15[1] = impl;
    objc_copyWeak(v15, &location);
    [connectionCopy setInvalidationHandler:v14];
    [connectionCopy setExportedObject:v12];
    objc_destroyWeak(v15);
    objc_destroyWeak(v19);
    objc_destroyWeak(&location);
  }

  [connectionCopy resume];
  return 1;
}

- (void)resumeListeners
{
  impl = self->_impl;
  [impl[10] resume];
  if ((*impl & 1) == 0)
  {
    v3 = impl[13];

    [v3 resume];
  }
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v3 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "AudioComponentRegistrar.mm";
    v8 = 1024;
    v9 = 568;
    _os_log_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioComponentRegistrar stopping", buf, 0x12u);
  }

  v5.receiver = self;
  v5.super_class = AudioComponentRegistrar;
  [(AudioComponentRegistrar *)&v5 dealloc];
}

- (id)initForMode:(BOOL)mode
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = AudioComponentRegistrar;
  if ([(AudioComponentRegistrar *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (id)replaceListener:(id)listener withListener:(id)withListener
{
  impl = self->_impl;
  listenerCopy = listener;
  withListenerCopy = withListener;
  if ([listenerCopy isEqualToString:@"com.apple.audio.AudioComponentRegistrar"])
  {
    v8 = 80;
LABEL_5:
    v9 = *&impl[v8];
    objc_storeStrong(&impl[v8], withListener);
    goto LABEL_7;
  }

  if ([listenerCopy isEqualToString:@"com.apple.audio.AudioComponentPrefs"])
  {
    v8 = 104;
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

@end