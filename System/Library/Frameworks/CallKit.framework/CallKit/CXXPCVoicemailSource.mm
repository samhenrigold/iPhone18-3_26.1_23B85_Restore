@interface CXXPCVoicemailSource
- (BOOL)isConnected;
- (BOOL)isPermittedToUsePrivateAPI;
- (CXXPCVoicemailSource)initWithConnection:(id)connection;
- (id)vendorProtocolDelegate;
- (int)processIdentifier;
- (void)dealloc;
@end

@implementation CXXPCVoicemailSource

- (CXXPCVoicemailSource)initWithConnection:(id)connection
{
  v52 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v39.receiver = self;
  v39.super_class = CXXPCVoicemailSource;
  v6 = [(CXVoicemailSource *)&v39 init];
  if (v6)
  {
    cx_applicationIdentifier = [connectionCopy cx_applicationIdentifier];
    applicationIdentifier = v6->_applicationIdentifier;
    v6->_applicationIdentifier = cx_applicationIdentifier;

    cx_capabilities = [connectionCopy cx_capabilities];
    capabilities = v6->_capabilities;
    v6->_capabilities = cx_capabilities;

    v11 = [MEMORY[0x1E69635F8] cx_applicationRecordForConnection:connectionCopy];
    bundleIdentifier = [v11 bundleIdentifier];
    bundleIdentifier = v6->_bundleIdentifier;
    v6->_bundleIdentifier = bundleIdentifier;

    v14 = [v11 URL];
    bundleURL = v6->_bundleURL;
    v6->_bundleURL = v14;

    if (v6->_applicationIdentifier && (v16 = [(CXXPCVoicemailSource *)v6 isPermittedToUsePrivateAPI], v16))
    {
      objc_storeStrong(&v6->_connection, connection);
      [(NSXPCConnection *)v6->_connection setExportedObject:v6];
      cx_voicemailProviderHostInterface = [MEMORY[0x1E696B0D0] cx_voicemailProviderHostInterface];
      [(NSXPCConnection *)v6->_connection setExportedInterface:cx_voicemailProviderHostInterface];

      cx_voicemailProviderVendorInterface = [MEMORY[0x1E696B0D0] cx_voicemailProviderVendorInterface];
      [(NSXPCConnection *)v6->_connection setRemoteObjectInterface:cx_voicemailProviderVendorInterface];

      objc_initWeak(&location, v6);
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __43__CXXPCVoicemailSource_initWithConnection___block_invoke;
      v36[3] = &unk_1E7C06E50;
      objc_copyWeak(&v37, &location);
      [(NSXPCConnection *)v6->_connection setInterruptionHandler:v36];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __43__CXXPCVoicemailSource_initWithConnection___block_invoke_3;
      v34[3] = &unk_1E7C06E50;
      objc_copyWeak(&v35, &location);
      [(NSXPCConnection *)v6->_connection setInvalidationHandler:v34];
      v19 = CXDefaultLog([(NSXPCConnection *)v6->_connection resume]);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        v21 = v6->_applicationIdentifier;
        v22 = v6->_bundleIdentifier;
        v23 = v6->_bundleURL;
        v24 = v6->_capabilities;
        *buf = 138413570;
        v41 = v20;
        v42 = 2112;
        v43 = v21;
        v44 = 2112;
        v45 = v22;
        v46 = 2112;
        v47 = v23;
        v48 = 2112;
        v49 = v24;
        v50 = 2112;
        v51 = connectionCopy;
        v25 = v20;
        _os_log_impl(&dword_1B47F3000, v19, OS_LOG_TYPE_DEFAULT, "Created %@ with applicationIdentifier: %@ bundleIdentifier: %@ bundleURL: %@ capabilities: %@ connection: %@", buf, 0x3Eu);
      }

      objc_destroyWeak(&v35);
      objc_destroyWeak(&v37);
      objc_destroyWeak(&location);
    }

    else
    {
      v26 = CXDefaultLog(v16);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v28 = objc_opt_class();
        v29 = v6->_applicationIdentifier;
        v30 = v6->_bundleIdentifier;
        v31 = v6->_bundleURL;
        v32 = v6->_capabilities;
        *buf = 138413570;
        v41 = v28;
        v42 = 2112;
        v43 = v29;
        v44 = 2112;
        v45 = v30;
        v46 = 2112;
        v47 = v31;
        v48 = 2112;
        v49 = v32;
        v50 = 2112;
        v51 = connectionCopy;
        v33 = v28;
        _os_log_error_impl(&dword_1B47F3000, v26, OS_LOG_TYPE_ERROR, "Denying creation of %@ with applicationIdentifier: %@ bundleIdentifier: %@ bundleURL: %@ capabilities: %@ connection: %@", buf, 0x3Eu);
      }

      v6 = 0;
    }
  }

  return v6;
}

void __43__CXXPCVoicemailSource_initWithConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CXXPCVoicemailSource_initWithConnection___block_invoke_2;
  block[3] = &unk_1E7C06CA8;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_async(v2, block);
}

void __43__CXXPCVoicemailSource_initWithConnection___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Connection interrupted for XPC voicemail source %@", &v5, 0xCu);
  }

  v4 = [*(a1 + 32) connection];
  [v4 invalidate];
}

void __43__CXXPCVoicemailSource_initWithConnection___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CXXPCVoicemailSource_initWithConnection___block_invoke_2_4;
  block[3] = &unk_1E7C06CA8;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_async(v2, block);
}

void __43__CXXPCVoicemailSource_initWithConnection___block_invoke_2_4(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Connection invalidated for XPC voicemail source %@", &v5, 0xCu);
  }

  [*(a1 + 32) setConnection:0];
  v4 = [*(a1 + 32) delegate];
  [v4 voicemailSourceInvalidated:*(a1 + 32)];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = CXXPCVoicemailSource;
  [(CXXPCVoicemailSource *)&v3 dealloc];
}

- (BOOL)isConnected
{
  connection = [(CXXPCVoicemailSource *)self connection];
  v3 = connection != 0;

  return v3;
}

- (int)processIdentifier
{
  connection = [(CXXPCVoicemailSource *)self connection];
  processIdentifier = [connection processIdentifier];

  return processIdentifier;
}

- (BOOL)isPermittedToUsePrivateAPI
{
  capabilities = [(CXXPCVoicemailSource *)self capabilities];
  v3 = [capabilities containsObject:@"private-voicemail-provider-api"];

  return v3;
}

- (id)vendorProtocolDelegate
{
  connection = [(CXXPCVoicemailSource *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  return remoteObjectProxy;
}

@end