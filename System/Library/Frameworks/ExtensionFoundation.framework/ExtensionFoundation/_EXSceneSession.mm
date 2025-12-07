@interface _EXSceneSession
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)shouldAcceptXPCConnection:(id)connection;
- (NSXPCConnection)sessionXPCConnection;
- (_EXExtension)extension;
- (_EXSceneSession)initWithExtension:(id)extension;
- (id)makeConfigurationWithParameters:(id)parameters;
- (id)makeConnectionResponse;
- (id)makeSceneWithError:(id *)error;
- (id)makeXPCConnectionWithError:(id *)error;
- (void)connectSceneSessionWithRequest:(id)request reply:(id)reply;
- (void)connectToScene:(id)scene;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _EXSceneSession

- (_EXSceneSession)initWithExtension:(id)extension
{
  extensionCopy = extension;
  v11.receiver = self;
  v11.super_class = _EXSceneSession;
  v5 = [(_EXSceneSession *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v7 = _EXDefaultLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [_EXSceneSession initWithExtension:];
    }

    objc_storeWeak(&v6->_extension, extensionCopy);
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    sceneConnectionListener = v6->_sceneConnectionListener;
    v6->_sceneConnectionListener = anonymousListener;

    [(NSXPCListener *)v6->_sceneConnectionListener setDelegate:v6];
  }

  return v6;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = _EXDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    *buf = 138412546;
    selfCopy = self;
    v14 = 2114;
    v15 = identifier;
    _os_log_impl(&dword_1847D1000, v3, OS_LOG_TYPE_DEFAULT, "%@ deallocated with identifier: '%{public}@'", buf, 0x16u);
  }

  v6 = _EXSignpostLog(v5);
  v7 = v6;
  if (self->_signpost && os_signpost_enabled(v6))
  {
    v8 = v7;
    v9 = v8;
    signpost = self->_signpost;
    if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1847D1000, v9, OS_SIGNPOST_EVENT, signpost, "extensionkit-lifecycle", "dealloc", buf, 2u);
    }
  }

  v11.receiver = self;
  v11.super_class = _EXSceneSession;
  [(_EXSceneSession *)&v11 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  listenerCopy = listener;
  v8 = _EXDefaultLog(listenerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [_EXSceneSession listener:connectionCopy shouldAcceptNewConnection:?];
  }

  sceneConnectionListener = self->_sceneConnectionListener;
  if (sceneConnectionListener == listenerCopy && ([(_EXSceneSession *)self setSceneXPCConnection:connectionCopy], (objc_opt_respondsToSelector() & 1) != 0) && (v10 = [(_EXScene *)self->_scene shouldAcceptConnection:connectionCopy], v10))
  {
    v11 = _EXDefaultLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [_EXSceneSession listener:shouldAcceptNewConnection:];
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)shouldAcceptXPCConnection:(id)connection
{
  connectionCopy = connection;
  WeakRetained = objc_loadWeakRetained(&self->_sessionXPCConnection);

  if (!WeakRetained)
  {
    [connectionCopy setExportedObject:self];
    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF2A1500];
    [connectionCopy setExportedInterface:v6];

    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF2ABF98];
    [connectionCopy setRemoteObjectInterface:v7];

    [connectionCopy _setQueue:MEMORY[0x1E69E96A0]];
    objc_initWeak(&location, self);
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __45___EXSceneSession_shouldAcceptXPCConnection___block_invoke;
    v12 = &unk_1E6E4DDB8;
    objc_copyWeak(&v13, &location);
    [connectionCopy setInvalidationHandler:&v9];
    [(_EXSceneSession *)self setSessionXPCConnection:connectionCopy, v9, v10, v11, v12];
    [connectionCopy activate];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return WeakRetained == 0;
}

- (id)makeConfigurationWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v4 = [[_EXSceneConfiguration alloc] initWithParameters:parametersCopy];

  return v4;
}

- (id)makeSceneWithError:(id *)error
{
  v4 = _EXDefaultLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [_EXSceneSession makeSceneWithError:];
  }

  configuration = [(_EXSceneSession *)self configuration];
  extension = [(_EXSceneSession *)self extension];
  [extension prepareForSceneConnectionWithConfiguration:configuration];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v11 = _EXDefaultLog(isKindOfClass);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(_EXSceneSession *)configuration makeSceneWithError:v11];
    }

    goto LABEL_33;
  }

  v8 = class_conformsToProtocol([configuration sceneClass], &unk_1EF2A3888);
  v9 = v8;
  v10 = _EXDefaultLog(v8);
  v11 = v10;
  if (!v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [_EXSceneSession makeSceneWithError:configuration];
    }

    goto LABEL_33;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [_EXSceneSession makeSceneWithError:configuration];
  }

  v12 = objc_alloc_init([configuration sceneClass]);
  v13 = _EXDefaultLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [_EXSceneSession makeSceneWithError:];
  }

  if (!v12)
  {
    v11 = _EXDefaultLog(v14);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [_EXSceneSession makeSceneWithError:configuration];
    }

    goto LABEL_33;
  }

  v15 = [v12 conformsToProtocol:&unk_1EF2A3888];
  if ((v15 & 1) == 0)
  {
    configuration = _EXDefaultLog(v15);
    if (os_log_type_enabled(configuration, OS_LOG_TYPE_FAULT))
    {
      [_EXSceneSession makeSceneWithError:];
    }

    __break(1u);
LABEL_31:
    v11 = _EXDefaultLog(v20);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [_EXSceneSession makeSceneWithError:configuration];
    }

LABEL_33:

    __break(1u);
    return result;
  }

  if ([configuration sceneDelegateClass])
  {
    v16 = objc_opt_respondsToSelector();
    if (v16)
    {
      v17 = _EXDefaultLog(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [_EXSceneSession makeSceneWithError:configuration];
      }

      v18 = objc_alloc_init([configuration sceneDelegateClass]);
      v19 = _EXDefaultLog(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [_EXSceneSession makeSceneWithError:];
      }

      if (v18)
      {
        [v12 setDelegate:v18];

        goto LABEL_19;
      }

      goto LABEL_31;
    }
  }

LABEL_19:

  return v12;
}

- (void)connectToScene:(id)scene
{
  sceneCopy = scene;
  if (sceneCopy)
  {
    v8 = sceneCopy;
    scene = [(_EXSceneSession *)self scene];
    v6 = objc_opt_respondsToSelector();

    sceneCopy = v8;
    if (v6)
    {
      scene2 = [(_EXSceneSession *)self scene];
      [scene2 connectToSession:self];

      sceneCopy = v8;
    }
  }
}

- (id)makeConnectionResponse
{
  v3 = objc_alloc_init(_EXSceneSessionConnectionResponse);
  sceneConnectionListener = [(_EXSceneSession *)self sceneConnectionListener];
  endpoint = [sceneConnectionListener endpoint];
  [(_EXSceneSessionConnectionResponse *)v3 setSceneEndpoint:endpoint];

  return v3;
}

- (void)connectSceneSessionWithRequest:(id)request reply:(id)reply
{
  v59 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  replyCopy = reply;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v9 = _EXDefaultLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [requestCopy identifier];
    *buf = 138543362;
    v58 = identifier;
    _os_log_impl(&dword_1847D1000, v9, OS_LOG_TYPE_DEFAULT, "Received UI session %{public}@ root view controller from UIKit", buf, 0xCu);
  }

  identifier2 = [requestCopy identifier];
  identifier = self->_identifier;
  self->_identifier = identifier2;

  v14 = _EXSignpostLog(v13);
  v15 = os_signpost_id_make_with_pointer(v14, self->_identifier);
  if (v15)
  {
    v16 = v14;
    v17 = v16;
    if (v15 != -1 && os_signpost_enabled(v16))
    {
      v18 = self->_identifier;
      *buf = 138412290;
      v58 = v18;
      _os_signpost_emit_with_name_impl(&dword_1847D1000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "extensionkit-lifecycle", "ID: %@", buf, 0xCu);
    }
  }

  self->_signpost = v15;
  v20 = _EXSignpostLog(v19);
  if ([(_EXSceneSession *)self signpost]&& os_signpost_enabled(v20))
  {
    v21 = v20;
    signpost = [(_EXSceneSession *)self signpost];
    if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1847D1000, v21, OS_SIGNPOST_EVENT, signpost, "extensionkit-lifecycle", "[EXSceneSession shouldAcceptXPCConnection:]", buf, 2u);
    }
  }

  parameters = [requestCopy parameters];
  v24 = [(_EXSceneSession *)self makeConfigurationWithParameters:parameters];
  configuration = self->_configuration;
  self->_configuration = v24;

  hostEndpoint = [requestCopy hostEndpoint];
  hostEndpoint = self->_hostEndpoint;
  self->_hostEndpoint = hostEndpoint;

  extension = [(_EXSceneSession *)self extension];
  [extension prepareForSceneConnectionWithConfiguration:self->_configuration];

  v29 = +[_EXSceneSessionManager sharedInstance];
  [v29 addSession:self];

  v31 = _EXSignpostLog(v30);
  if ([(_EXSceneSession *)self signpost]&& os_signpost_enabled(v31))
  {
    v32 = v31;
    signpost2 = [(_EXSceneSession *)self signpost];
    if (signpost2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1847D1000, v32, OS_SIGNPOST_EVENT, signpost2, "extensionkit-lifecycle", "PRE: [EXSceneSession makeSceneWithError:]", buf, 2u);
    }
  }

  v56 = 0;
  v34 = [(_EXSceneSession *)self makeSceneWithError:&v56];
  v35 = v56;
  v36 = _EXSignpostLog(v35);
  if ([(_EXSceneSession *)self signpost]&& os_signpost_enabled(v36))
  {
    v37 = v36;
    signpost3 = [(_EXSceneSession *)self signpost];
    if (signpost3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1847D1000, v37, OS_SIGNPOST_EVENT, signpost3, "extensionkit-lifecycle", "POST: [EXSceneSession makeSceneWithError:]", buf, 2u);
    }
  }

  if (v34)
  {
    v39 = _EXSignpostLog([(_EXSceneSession *)self setScene:v34]);
    if ([(_EXSceneSession *)self signpost]&& os_signpost_enabled(v39))
    {
      v40 = v39;
      signpost4 = [(_EXSceneSession *)self signpost];
      if (signpost4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1847D1000, v40, OS_SIGNPOST_EVENT, signpost4, "extensionkit-lifecycle", "PRE: [EXSceneSession connectToScene:]", buf, 2u);
      }
    }

    v42 = _EXSignpostLog([(_EXSceneSession *)self connectToScene:v34]);
    if ([(_EXSceneSession *)self signpost]&& os_signpost_enabled(v42))
    {
      v43 = v42;
      signpost5 = [(_EXSceneSession *)self signpost];
      if (signpost5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1847D1000, v43, OS_SIGNPOST_EVENT, signpost5, "extensionkit-lifecycle", "POST: [EXSceneSession connectToScene:]", buf, 2u);
      }
    }

    [(NSXPCListener *)self->_sceneConnectionListener resume];
    makeConnectionResponse = [(_EXSceneSession *)self makeConnectionResponse];
    v46 = _EXSignpostLog(makeConnectionResponse);
    if ([(_EXSceneSession *)self signpost]&& os_signpost_enabled(v46))
    {
      v47 = v46;
      signpost6 = [(_EXSceneSession *)self signpost];
      if (signpost6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1847D1000, v47, OS_SIGNPOST_EVENT, signpost6, "extensionkit-lifecycle", "Initialized", buf, 2u);
      }
    }

    replyCopy[2](replyCopy, makeConnectionResponse, 0);
  }

  else
  {
    v49 = (replyCopy[2])(replyCopy, 0, v35);
    v50 = _EXSignpostLog(v49);
    if ([(_EXSceneSession *)self signpost]&& os_signpost_enabled(v50))
    {
      v51 = v50;
      signpost7 = [(_EXSceneSession *)self signpost];
      if (signpost7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1847D1000, v51, OS_SIGNPOST_EVENT, signpost7, "extensionkit-lifecycle", "Failure", buf, 2u);
      }
    }

    objc_copyWeak(buf, &self->_sessionXPCConnection);
    WeakRetained = objc_loadWeakRetained(&self->_sessionXPCConnection);
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __56___EXSceneSession_connectSceneSessionWithRequest_reply___block_invoke;
    v54[3] = &unk_1E6E4DDB8;
    objc_copyWeak(&v55, buf);
    [WeakRetained addBarrierBlock:v54];

    objc_destroyWeak(&v55);
    objc_destroyWeak(buf);
  }
}

- (id)makeXPCConnectionWithError:(id *)error
{
  hostEndpoint = [(_EXSceneSession *)self hostEndpoint];
  if (hostEndpoint)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:hostEndpoint];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)invalidate
{
  v3 = _EXSignpostLog(self);
  if ([(_EXSceneSession *)self signpost]&& os_signpost_enabled(v3))
  {
    v4 = v3;
    signpost = [(_EXSceneSession *)self signpost];
    if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = signpost;
      if (os_signpost_enabled(v4))
      {
        *v8 = 0;
        _os_signpost_emit_with_name_impl(&dword_1847D1000, v4, OS_SIGNPOST_EVENT, v6, "extensionkit-lifecycle", "invalidate", v8, 2u);
      }
    }
  }

  [(NSXPCListener *)self->_sceneConnectionListener invalidate];
  WeakRetained = objc_loadWeakRetained(&self->_sessionXPCConnection);
  [WeakRetained invalidate];
}

- (NSXPCConnection)sessionXPCConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionXPCConnection);

  return WeakRetained;
}

- (_EXExtension)extension
{
  WeakRetained = objc_loadWeakRetained(&self->_extension);

  return WeakRetained;
}

- (void)listener:(void *)a1 shouldAcceptNewConnection:.cold.1(void *a1)
{
  [a1 processIdentifier];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)makeSceneWithError:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v9[0] = 136316162;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_1();
  v10 = v4;
  v11 = v7;
  v12 = v8;
  _os_log_fault_impl(&dword_1847D1000, a2, OS_LOG_TYPE_FAULT, "%s - %s:%d: Unexpected configuration class '%{public}@' expected '%{public}@'", v9, 0x30u);
}

- (void)makeSceneWithError:(void *)a1 .cold.3(void *a1)
{
  [a1 sceneClass];
  v1 = NSStringFromProtocol(&unk_1EF2A3888);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x30u);
}

- (void)makeSceneWithError:(void *)a1 .cold.4(void *a1)
{
  v1 = NSStringFromClass([a1 sceneClass]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)makeSceneWithError:.cold.6()
{
  v0 = NSStringFromProtocol(&unk_1EF2A3888);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_2();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x30u);
}

- (void)makeSceneWithError:(void *)a1 .cold.7(void *a1)
{
  v1 = NSStringFromClass([a1 sceneDelegateClass]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)makeSceneWithError:(void *)a1 .cold.9(void *a1)
{
  v1 = NSStringFromClass([a1 sceneDelegateClass]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)makeSceneWithError:(void *)a1 .cold.10(void *a1)
{
  v1 = NSStringFromClass([a1 sceneClass]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x26u);
}

@end