@interface _EXNSExtensionUIShimScene
- (BOOL)shouldAcceptConnection:(id)connection;
- (id)makePrincipalObjectForExtension:(id)extension;
- (void)connectToSession:(id)session;
@end

@implementation _EXNSExtensionUIShimScene

- (id)makePrincipalObjectForExtension:(id)extension
{
  extensionCopy = extension;
  identity = [extensionCopy identity];
  principalClass = [identity principalClass];

  if (([(objc_class *)principalClass isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v9 = _EXDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_EXNSExtensionUIShimScene makePrincipalObjectForExtension:principalClass];
    }

    goto LABEL_10;
  }

  v6 = objc_alloc_init(principalClass);
  if (!v6)
  {
    v9 = _EXDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_EXNSExtensionUIShimScene makePrincipalObjectForExtension:];
    }

LABEL_10:

    __break(1u);
    return result;
  }

  v7 = v6;

  return v7;
}

- (void)connectToSession:(id)session
{
  sessionCopy = session;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    extension = [sessionCopy extension];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9.receiver = self;
      v9.super_class = _EXNSExtensionUIShimScene;
      [(_EXNSExtensionShimScene *)&v9 connectToSession:sessionCopy];
      context = [(_EXNSExtensionShimScene *)self context];
      _principalObject = [context _principalObject];
      [(_EXNSExtensionUIShimScene *)self setViewController:_principalObject];

      return;
    }
  }

  else
  {
    extension = _EXDefaultLog();
    if (os_log_type_enabled(extension, OS_LOG_TYPE_FAULT))
    {
      [_EXNSExtensionUIShimScene connectToSession:sessionCopy];
    }

    __break(1u);
  }

  v8 = _EXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    [_EXNSExtensionUIShimScene connectToSession:extension];
  }

  __break(1u);
}

- (BOOL)shouldAcceptConnection:(id)connection
{
  connectionCopy = connection;
  context = [(_EXNSExtensionShimScene *)self context];
  v6 = [context conformsToProtocol:&unk_1F4E08D90];

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

- (void)makePrincipalObjectForExtension:(objc_class *)a1 .cold.1(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  v8 = 136315906;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1D29CC000, v2, v3, "%s - %s:%d: Pricipal object is unexpected class '%@'", v4, v5, v6, v7, v8);
}

- (void)makePrincipalObjectForExtension:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = "principalObject!=nil";
  v3 = 2080;
  v1 = 136315650;
  OUTLINED_FUNCTION_0();
  v4 = 58;
  _os_log_fault_impl(&dword_1D29CC000, v0, OS_LOG_TYPE_FAULT, "%s - %s:%d: The principal object must not be NULL.", &v1, 0x1Cu);
}

- (void)connectToSession:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v9 = 136315906;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1D29CC000, v3, v4, "%s - %s:%d: Unexpected extension class '%@'", v5, v6, v7, v8, v9);
}

- (void)connectToSession:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v9 = 136315906;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1D29CC000, v3, v4, "%s - %s:%d: Unexpected extension class '%@'", v5, v6, v7, v8, v9);
}

@end