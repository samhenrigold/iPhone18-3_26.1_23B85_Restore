@interface _EXNSExtensionShimScene
- (BOOL)shouldAcceptConnection:(id)connection;
- (_EXNSExtensionShimScene)init;
- (id)makePrincipalObjectForExtension:(id)extension;
- (void)connectToSession:(id)session;
- (void)dealloc;
@end

@implementation _EXNSExtensionShimScene

- (_EXNSExtensionShimScene)init
{
  v3.receiver = self;
  v3.super_class = _EXNSExtensionShimScene;
  return [(_EXNSExtensionShimScene *)&v3 init];
}

- (void)dealloc
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v10 = 136315906;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_3();
}

- (id)makePrincipalObjectForExtension:(id)extension
{
  v3 = objc_alloc_init([extension principalClass]);

  return v3;
}

- (void)connectToSession:(id)session
{
  sessionCopy = session;
  extension = [sessionCopy extension];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v7 = _EXDefaultLog(isKindOfClass);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(_EXNSExtensionShimScene *)extension connectToSession:v7];
    }

    __break(1u);
    goto LABEL_13;
  }

  v6 = [(_EXNSExtensionShimScene *)self makePrincipalObjectForExtension:extension];
  v7 = [_EXNSExtensionContextShimImplementation makeContextWithSceneSession:sessionCopy];
  objc_opt_class();
  v8 = objc_opt_isKindOfClass();
  if ((v8 & 1) == 0)
  {
LABEL_13:
    v14 = _EXDefaultLog(v8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(_EXNSExtensionShimScene *)v7 connectToSession:v14];
    }

    goto LABEL_19;
  }

  v9 = objc_opt_class();
  v10 = objc_opt_class();
  if (v9 == v10)
  {
    v14 = _EXDefaultLog(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(_EXNSExtensionShimScene *)v7 connectToSession:v14];
    }

    goto LABEL_19;
  }

  _sharedExtensionContextVendor = [MEMORY[0x1E696B0F8] _sharedExtensionContextVendor];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();
  if ((v12 & 1) == 0)
  {
    v14 = _EXDefaultLog(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(_EXNSExtensionShimScene *)_sharedExtensionContextVendor connectToSession:v14];
    }

LABEL_19:

    __break(1u);
    return;
  }

  [_sharedExtensionContextVendor _addExtensionContext:v7];
  [(_EXNSExtensionShimScene *)self setContext:v7];
  internalImplementation = [v7 internalImplementation];
  [internalImplementation set__principalObject:v6];
  if ([v6 conformsToProtocol:&unk_1EF2ABFF8])
  {
    [v6 beginRequestWithExtensionContext:v7];
  }
}

- (BOOL)shouldAcceptConnection:(id)connection
{
  connectionCopy = connection;
  context = [(_EXNSExtensionShimScene *)self context];
  v6 = [context conformsToProtocol:&unk_1EF2A1588];

  if (v6)
  {
    context2 = [(_EXNSExtensionShimScene *)self context];
    v8 = [context2 shouldAcceptXPCConnection:connectionCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)connectToSession:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v10 = 136315906;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_3(&dword_1847D1000, v4, v5, "%s - %s:%d: Unexpected extension class '%@'", v6, v7, v8, v9, v10);
}

- (void)connectToSession:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v10 = 136315906;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_3();
}

- (void)connectToSession:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v10 = 136315906;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_3();
}

- (void)connectToSession:(uint64_t)a1 .cold.4(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v10 = 136315906;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_3();
}

@end