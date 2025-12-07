@interface _STXPCClient
- (BOOL)_setUpXPCConnectionWithDelegate:(id)delegate;
- (BOOL)setUpPeerForDelegate:(id)delegate context:(id)context;
- (_STSpeechTranslatorService)synchronousTranslatorPeer;
- (_STXPCClient)init;
- (_STXPCClient)initWithXPCConnection:(id)connection;
- (id)_fetchRemoteTranslatorPeer;
- (void)_fetchRemoteTranslatorPeer;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _STXPCClient

- (_STXPCClient)init
{
  v3 = +[_STXPCServerInterface machService];
  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:v3 options:0];
  v5 = [(_STXPCClient *)self initWithXPCConnection:v4];

  return v5;
}

- (_STXPCClient)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v11.receiver = self;
  v11.super_class = _STXPCClient;
  v5 = [(_STXPCClient *)&v11 init];
  v7 = v5;
  if (v5)
  {
    [(_STXPCClient *)v5 setXpcConnection:connectionCopy];
    v8 = v7;
  }

  else
  {
    v9 = _LTOSLogSTMultiprocess(0, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_STXPCClient initWithXPCConnection:];
    }
  }

  return v7;
}

- (void)invalidate
{
  xpcConnection = [(_STXPCClient *)self xpcConnection];
  [xpcConnection invalidate];

  [(_STXPCClient *)self setXpcConnection:0];
}

- (BOOL)setUpPeerForDelegate:(id)delegate context:(id)context
{
  delegateCopy = delegate;
  [(_STXPCClient *)self setPeerProviderContext:context];
  LODWORD(context) = [(_STXPCClient *)self _setUpXPCConnectionWithDelegate:delegateCopy];

  if (!context)
  {
    return 0;
  }

  _fetchRemoteTranslatorPeer = [(_STXPCClient *)self _fetchRemoteTranslatorPeer];
  [(_STXPCClient *)self setTranslatorPeer:_fetchRemoteTranslatorPeer];

  translatorPeer = [(_STXPCClient *)self translatorPeer];
  v9 = translatorPeer != 0;

  return v9;
}

- (_STSpeechTranslatorService)synchronousTranslatorPeer
{
  translatorPeer = [(_STXPCClient *)self translatorPeer];
  v4 = objc_opt_respondsToSelector();
  if (v4)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __41___STXPCClient_synchronousTranslatorPeer__block_invoke;
    v9[3] = &unk_279CF7C48;
    objc_copyWeak(&v10, &location);
    v6 = [translatorPeer synchronousRemoteObjectProxyWithErrorHandler:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = _LTOSLogSTMultiprocess(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_STXPCClient synchronousTranslatorPeer];
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)_setUpXPCConnectionWithDelegate:(id)delegate
{
  v32 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  _exportedInterface = [(_STXPCClient *)self _exportedInterface];
  protocol = [_exportedInterface protocol];
  v7 = [delegateCopy conformsToProtocol:protocol];

  if (v7)
  {
    v10 = +[_STXPCServerInterface interface];
    xpcConnection = [(_STXPCClient *)self xpcConnection];
    [xpcConnection setRemoteObjectInterface:v10];

    xpcConnection2 = [(_STXPCClient *)self xpcConnection];
    [xpcConnection2 setExportedInterface:_exportedInterface];

    xpcConnection3 = [(_STXPCClient *)self xpcConnection];
    [xpcConnection3 setExportedObject:delegateCopy];

    objc_initWeak(location, self);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __48___STXPCClient__setUpXPCConnectionWithDelegate___block_invoke;
    v25[3] = &unk_279CF7FC0;
    objc_copyWeak(&v26, location);
    xpcConnection4 = [(_STXPCClient *)self xpcConnection];
    [xpcConnection4 setInterruptionHandler:v25];

    v23 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v24, location);
    v15 = [(_STXPCClient *)self xpcConnection:v23];
    [v15 setInvalidationHandler:&v23];

    xpcConnection5 = [(_STXPCClient *)self xpcConnection];
    [xpcConnection5 activate];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(location);
  }

  else
  {
    v17 = _LTOSLogSTMultiprocess(v8, v9);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = v17;
      protocol2 = [_exportedInterface protocol];
      v21 = NSStringFromProtocol(protocol2);
      peerProviderContext = [(_STXPCClient *)self peerProviderContext];
      *location = 134218498;
      *&location[4] = delegateCopy;
      v28 = 2114;
      v29 = v21;
      v30 = 2114;
      v31 = peerProviderContext;
      _os_log_error_impl(&dword_26B5BC000, v19, OS_LOG_TYPE_ERROR, "delegate: %p does NOT conform to exportedInterface protocol: %{public}@ with peerProviderContext: %{public}@", location, 0x20u);
    }
  }

  return v7;
}

- (id)_fetchRemoteTranslatorPeer
{
  v28 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  xpcConnection = [(_STXPCClient *)self xpcConnection];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __42___STXPCClient__fetchRemoteTranslatorPeer__block_invoke;
  v19[3] = &unk_279CF7C48;
  objc_copyWeak(&v20, &location);
  v4 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v19];

  v5 = v4;
  v6 = v5;
  if (v5 && ([v5 conformsToProtocol:&unk_287C1F0D0]& 1) != 0)
  {
    *buf = 0;
    v23 = buf;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__1;
    v26 = __Block_byref_object_dispose__1;
    v27 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __42___STXPCClient__fetchRemoteTranslatorPeer__block_invoke_54;
    aBlock[3] = &unk_279CF7FE8;
    aBlock[4] = buf;
    v7 = _Block_copy(aBlock);
    peerProviderContext = [(_STXPCClient *)self peerProviderContext];
    type = [peerProviderContext type];

    if (type == 2)
    {
      peerProviderContext2 = [(_STXPCClient *)self peerProviderContext];
      identifier = [peerProviderContext2 identifier];
      [v6 makePeerWithIdentifier:identifier inReply:v7];
    }

    else
    {
      if (type != 1)
      {
LABEL_11:
        v16 = *(v23 + 5);

        _Block_object_dispose(buf, 8);
        v14 = v6;
        goto LABEL_12;
      }

      peerProviderContext2 = [(_STXPCClient *)self peerProviderContext];
      identifier = [peerProviderContext2 configuration];
      [v6 makePeerWithConfiguration:identifier inReply:v7];
    }

    goto LABEL_11;
  }

  v14 = _LTOSLogSTMultiprocess(v12, v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    xpcConnection2 = [(_STXPCClient *)self xpcConnection];
    [(_STXPCClient *)xpcConnection2 _fetchRemoteTranslatorPeer:v6];
  }

  v16 = 0;
LABEL_12:

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v16;
}

- (void)dealloc
{
  [(_STXPCClient *)self invalidate];
  v3.receiver = self;
  v3.super_class = _STXPCClient;
  [(_STXPCClient *)&v3 dealloc];
}

- (void)_fetchRemoteTranslatorPeer
{
  *buf = 138543874;
  *(buf + 4) = 0;
  *(buf + 6) = 2114;
  *(buf + 14) = self;
  *(buf + 11) = 2114;
  *(buf + 3) = a2;
  _os_log_error_impl(&dword_26B5BC000, log, OS_LOG_TYPE_ERROR, "xpcService: %{public}@ for connection: %{public}@, serverProxy: %{public}@", buf, 0x20u);
}

@end