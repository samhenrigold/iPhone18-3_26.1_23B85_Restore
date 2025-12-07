@interface _ANEDaemonConnection
+ (id)daemonConnection;
+ (id)daemonConnectionRestricted;
+ (id)userDaemonConnection;
- (_ANEDaemonConnection)init;
- (_ANEDaemonConnection)initWithMachServiceName:(id)name restricted:(BOOL)restricted;
- (void)beginRealTimeTaskWithReply:(id)reply;
- (void)compileModel:(id)model sandboxExtension:(id)extension options:(id)options qos:(unsigned int)qos withReply:(id)reply;
- (void)compiledModelExistsFor:(id)for withReply:(id)reply;
- (void)compiledModelExistsMatchingHash:(id)hash withReply:(id)reply;
- (void)dealloc;
- (void)echo:(id)echo withReply:(id)reply;
- (void)endRealTimeTaskWithReply:(id)reply;
- (void)loadModel:(id)model sandboxExtension:(id)extension options:(id)options qos:(unsigned int)qos withReply:(id)reply;
- (void)loadModelNewInstance:(id)instance options:(id)options modelInstParams:(id)params qos:(unsigned int)qos withReply:(id)reply;
- (void)prepareChainingWithModel:(id)model options:(id)options chainingReq:(id)req qos:(unsigned int)qos withReply:(id)reply;
- (void)purgeCompiledModel:(id)model withReply:(id)reply;
- (void)purgeCompiledModelMatchingHash:(id)hash withReply:(id)reply;
- (void)reportTelemetryToPPS:(id)s playload:(id)playload;
- (void)unloadModel:(id)model options:(id)options qos:(unsigned int)qos withReply:(id)reply;
@end

@implementation _ANEDaemonConnection

- (_ANEDaemonConnection)init
{
  v3 = +[_ANEStrings machServiceName];
  v4 = [(_ANEDaemonConnection *)self initWithMachServiceName:v3 restricted:0];

  return v4;
}

- (_ANEDaemonConnection)initWithMachServiceName:(id)name restricted:(BOOL)restricted
{
  restrictedCopy = restricted;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = _ANEDaemonConnection;
  v7 = [(_ANEDaemonConnection *)&v12 init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:nameCopy options:4096];
    daemonConnection = v7->_daemonConnection;
    v7->_daemonConnection = v8;

    v7->_restricted = restrictedCopy;
    if (restrictedCopy)
    {
      _ANEDaemonInterfacePrivate();
    }

    else
    {
      _ANEDaemonInterface();
    }
    v10 = ;
    [(NSXPCConnection *)v7->_daemonConnection setRemoteObjectInterface:v10];

    [(NSXPCConnection *)v7->_daemonConnection resume];
  }

  return v7;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_daemonConnection invalidate];
  v3.receiver = self;
  v3.super_class = _ANEDaemonConnection;
  [(_ANEDaemonConnection *)&v3 dealloc];
}

+ (id)daemonConnection
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)daemonConnectionRestricted
{
  v2 = objc_alloc(objc_opt_class());
  v3 = +[_ANEStrings machServiceNamePrivate];
  v4 = [v2 initWithMachServiceName:v3 restricted:1];

  return v4;
}

+ (id)userDaemonConnection
{
  v2 = objc_alloc(objc_opt_class());
  v3 = +[_ANEStrings userMachServiceName];
  v4 = [v2 initWithMachServiceName:v3 restricted:0];

  return v4;
}

- (void)beginRealTimeTaskWithReply:(id)reply
{
  replyCopy = reply;
  if ([(_ANEDaemonConnection *)self restricted])
  {
    daemonConnection = self->_daemonConnection;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51___ANEDaemonConnection_beginRealTimeTaskWithReply___block_invoke;
    v11[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v11[4] = a2;
    v7 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51___ANEDaemonConnection_beginRealTimeTaskWithReply___block_invoke_6;
    v9[3] = &unk_1E79BA258;
    v10 = replyCopy;
    [v7 beginRealTimeTaskWithReply:v9];
  }

  else
  {
    v7 = NSStringFromSelector(a2);
    v8 = [_ANEErrors entitlementErrorForMethod:v7];
    (*(replyCopy + 2))(replyCopy, 0, v8);
  }
}

- (void)endRealTimeTaskWithReply:(id)reply
{
  replyCopy = reply;
  if ([(_ANEDaemonConnection *)self restricted])
  {
    daemonConnection = self->_daemonConnection;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49___ANEDaemonConnection_endRealTimeTaskWithReply___block_invoke;
    v11[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v11[4] = a2;
    v7 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49___ANEDaemonConnection_endRealTimeTaskWithReply___block_invoke_8;
    v9[3] = &unk_1E79BA258;
    v10 = replyCopy;
    [v7 endRealTimeTaskWithReply:v9];
  }

  else
  {
    v7 = NSStringFromSelector(a2);
    v8 = [_ANEErrors entitlementErrorForMethod:v7];
    (*(replyCopy + 2))(replyCopy, 0, v8);
  }
}

- (void)echo:(id)echo withReply:(id)reply
{
  echoCopy = echo;
  replyCopy = reply;
  if ([(_ANEDaemonConnection *)self restricted])
  {
    daemonConnection = self->_daemonConnection;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __39___ANEDaemonConnection_echo_withReply___block_invoke;
    v14[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v14[4] = a2;
    v10 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __39___ANEDaemonConnection_echo_withReply___block_invoke_9;
    v12[3] = &unk_1E79BA258;
    v13 = replyCopy;
    [v10 echo:echoCopy withReply:v12];
  }

  else
  {
    v10 = NSStringFromSelector(a2);
    v11 = [_ANEErrors entitlementErrorForMethod:v10];
    (*(replyCopy + 2))(replyCopy, 0, v11);
  }
}

- (void)compileModel:(id)model sandboxExtension:(id)extension options:(id)options qos:(unsigned int)qos withReply:(id)reply
{
  v8 = *&qos;
  modelCopy = model;
  extensionCopy = extension;
  optionsCopy = options;
  replyCopy = reply;
  v17 = [_ANEQoSMapper programPriorityForQoS:v8];
  if (v17 == +[_ANEQoSMapper realTimeProgramPriority]&& ![(_ANEDaemonConnection *)self restricted])
  {
    v20 = NSStringFromSelector(a2);
    v21 = [_ANEErrors priorityErrorForMethod:v20];

    (*(replyCopy + 2))(replyCopy, 0, MEMORY[0x1E695E0F8], 0, v21);
  }

  else
  {
    daemonConnection = self->_daemonConnection;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __76___ANEDaemonConnection_compileModel_sandboxExtension_options_qos_withReply___block_invoke;
    v24[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v24[4] = a2;
    v19 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v24];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __76___ANEDaemonConnection_compileModel_sandboxExtension_options_qos_withReply___block_invoke_11;
    v22[3] = &unk_1E79BA280;
    v23 = replyCopy;
    [v19 compileModel:modelCopy sandboxExtension:extensionCopy options:optionsCopy qos:v8 withReply:v22];
  }
}

- (void)loadModel:(id)model sandboxExtension:(id)extension options:(id)options qos:(unsigned int)qos withReply:(id)reply
{
  v8 = *&qos;
  modelCopy = model;
  extensionCopy = extension;
  optionsCopy = options;
  replyCopy = reply;
  v17 = [_ANEQoSMapper programPriorityForQoS:v8];
  if (v17 == +[_ANEQoSMapper realTimeProgramPriority]&& ![(_ANEDaemonConnection *)self restricted])
  {
    v20 = NSStringFromSelector(a2);
    v21 = [_ANEErrors priorityErrorForMethod:v20];

    (*(replyCopy + 2))(replyCopy, 0, MEMORY[0x1E695E0F8], 0, 0, 0, 0, v21);
  }

  else
  {
    daemonConnection = self->_daemonConnection;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __73___ANEDaemonConnection_loadModel_sandboxExtension_options_qos_withReply___block_invoke;
    v24[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v24[4] = a2;
    v19 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v24];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __73___ANEDaemonConnection_loadModel_sandboxExtension_options_qos_withReply___block_invoke_13;
    v22[3] = &unk_1E79BA2A8;
    v23 = replyCopy;
    [v19 loadModel:modelCopy sandboxExtension:extensionCopy options:optionsCopy qos:v8 withReply:v22];
  }
}

- (void)loadModelNewInstance:(id)instance options:(id)options modelInstParams:(id)params qos:(unsigned int)qos withReply:(id)reply
{
  v8 = *&qos;
  instanceCopy = instance;
  optionsCopy = options;
  paramsCopy = params;
  replyCopy = reply;
  v17 = [_ANEQoSMapper programPriorityForQoS:v8];
  if (v17 == +[_ANEQoSMapper realTimeProgramPriority]&& ![(_ANEDaemonConnection *)self restricted])
  {
    v20 = NSStringFromSelector(a2);
    v21 = [_ANEErrors priorityErrorForMethod:v20];

    (*(replyCopy + 2))(replyCopy, 0, MEMORY[0x1E695E0F8], 0, 0, 0, 0, v21);
  }

  else
  {
    daemonConnection = self->_daemonConnection;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __83___ANEDaemonConnection_loadModelNewInstance_options_modelInstParams_qos_withReply___block_invoke;
    v24[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v24[4] = a2;
    v19 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v24];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __83___ANEDaemonConnection_loadModelNewInstance_options_modelInstParams_qos_withReply___block_invoke_15;
    v22[3] = &unk_1E79BA2A8;
    v23 = replyCopy;
    [v19 loadModelNewInstance:instanceCopy options:optionsCopy modelInstParams:paramsCopy qos:v8 withReply:v22];
  }
}

- (void)unloadModel:(id)model options:(id)options qos:(unsigned int)qos withReply:(id)reply
{
  v7 = *&qos;
  v32 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  optionsCopy = options;
  replyCopy = reply;
  v14 = +[_ANELog framework];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v27 = "[_ANEDaemonConnection unloadModel:options:qos:withReply:]";
    v28 = 2048;
    v29 = modelCopy;
    v30 = 2112;
    v31 = modelCopy;
    _os_log_impl(&dword_1AD246000, v14, OS_LOG_TYPE_INFO, "%s: START model[%p]=%@", buf, 0x20u);
  }

  v15 = [_ANEQoSMapper programPriorityForQoS:v7];
  if (v15 == +[_ANEQoSMapper realTimeProgramPriority]&& ![(_ANEDaemonConnection *)self restricted])
  {
    v19 = NSStringFromSelector(a2);
    v17 = [_ANEErrors priorityErrorForMethod:v19];

    replyCopy[2](replyCopy, 0, v17);
  }

  else
  {
    daemonConnection = self->_daemonConnection;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __58___ANEDaemonConnection_unloadModel_options_qos_withReply___block_invoke;
    v25[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v25[4] = a2;
    v17 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v25];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __58___ANEDaemonConnection_unloadModel_options_qos_withReply___block_invoke_16;
    v23 = &unk_1E79BA258;
    v24 = replyCopy;
    [v17 unloadModel:modelCopy options:optionsCopy qos:v7 withReply:&v20];
    v18 = [_ANELog framework:v20];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v27 = "[_ANEDaemonConnection unloadModel:options:qos:withReply:]";
      v28 = 2048;
      v29 = modelCopy;
      v30 = 2112;
      v31 = modelCopy;
      _os_log_impl(&dword_1AD246000, v18, OS_LOG_TYPE_INFO, "%s: END model[%p]=%@", buf, 0x20u);
    }
  }
}

- (void)reportTelemetryToPPS:(id)s playload:(id)playload
{
  daemonConnection = self->_daemonConnection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54___ANEDaemonConnection_reportTelemetryToPPS_playload___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = a2;
  playloadCopy = playload;
  sCopy = s;
  v8 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
  [v8 reportTelemetryToPPS:sCopy playload:playloadCopy];
}

- (void)compiledModelExistsFor:(id)for withReply:(id)reply
{
  replyCopy = reply;
  daemonConnection = self->_daemonConnection;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57___ANEDaemonConnection_compiledModelExistsFor_withReply___block_invoke;
  v14[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v14[4] = a2;
  forCopy = for;
  v10 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57___ANEDaemonConnection_compiledModelExistsFor_withReply___block_invoke_17;
  v12[3] = &unk_1E79BA2D0;
  v13 = replyCopy;
  v11 = replyCopy;
  [v10 compiledModelExistsFor:forCopy withReply:v12];
}

- (void)purgeCompiledModel:(id)model withReply:(id)reply
{
  replyCopy = reply;
  daemonConnection = self->_daemonConnection;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53___ANEDaemonConnection_purgeCompiledModel_withReply___block_invoke;
  v14[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v14[4] = a2;
  modelCopy = model;
  v10 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53___ANEDaemonConnection_purgeCompiledModel_withReply___block_invoke_19;
  v12[3] = &unk_1E79BA258;
  v13 = replyCopy;
  v11 = replyCopy;
  [v10 purgeCompiledModel:modelCopy withReply:v12];
}

- (void)prepareChainingWithModel:(id)model options:(id)options chainingReq:(id)req qos:(unsigned int)qos withReply:(id)reply
{
  v8 = *&qos;
  modelCopy = model;
  optionsCopy = options;
  reqCopy = req;
  replyCopy = reply;
  v17 = [_ANEQoSMapper programPriorityForQoS:v8];
  if (v17 == +[_ANEQoSMapper realTimeProgramPriority]&& ![(_ANEDaemonConnection *)self restricted])
  {
    v20 = objc_opt_class();
    v21 = NSStringFromSelector(a2);
    v22 = [v20 priorityErrorForMethod:v21];

    replyCopy[2](replyCopy, 0, v22);
  }

  else
  {
    daemonConnection = self->_daemonConnection;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __83___ANEDaemonConnection_prepareChainingWithModel_options_chainingReq_qos_withReply___block_invoke;
    v25[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v25[4] = a2;
    v19 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v25];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __83___ANEDaemonConnection_prepareChainingWithModel_options_chainingReq_qos_withReply___block_invoke_20;
    v23[3] = &unk_1E79BA258;
    v24 = replyCopy;
    [v19 prepareChainingWithModel:modelCopy options:optionsCopy chainingReq:reqCopy qos:v8 withReply:v23];
  }
}

- (void)compiledModelExistsMatchingHash:(id)hash withReply:(id)reply
{
  replyCopy = reply;
  daemonConnection = self->_daemonConnection;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66___ANEDaemonConnection_compiledModelExistsMatchingHash_withReply___block_invoke;
  v14[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v14[4] = a2;
  hashCopy = hash;
  v10 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66___ANEDaemonConnection_compiledModelExistsMatchingHash_withReply___block_invoke_21;
  v12[3] = &unk_1E79BA258;
  v13 = replyCopy;
  v11 = replyCopy;
  [v10 compiledModelExistsMatchingHash:hashCopy withReply:v12];
}

- (void)purgeCompiledModelMatchingHash:(id)hash withReply:(id)reply
{
  replyCopy = reply;
  daemonConnection = self->_daemonConnection;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65___ANEDaemonConnection_purgeCompiledModelMatchingHash_withReply___block_invoke;
  v14[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v14[4] = a2;
  hashCopy = hash;
  v10 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65___ANEDaemonConnection_purgeCompiledModelMatchingHash_withReply___block_invoke_22;
  v12[3] = &unk_1E79BA258;
  v13 = replyCopy;
  v11 = replyCopy;
  [v10 purgeCompiledModelMatchingHash:hashCopy withReply:v12];
}

@end