@interface FMDExtHostContext
- (BOOL)respondsToSelector:(SEL)selector;
- (FMDExtHostContext)init;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation FMDExtHostContext

- (FMDExtHostContext)init
{
  v3 = LogCategory_Extensions(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF650000, v3, OS_LOG_TYPE_DEFAULT, "#ext - alloced host context instance", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = FMDExtHostContext;
  return [(FMDExtHostContext *)&v5 init];
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = FMDExtHostContext;
  if ([(FMDExtHostContext *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    accessoryDelegate = [(FMDExtHostContext *)self accessoryDelegate];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = FMDExtHostContext;
  v5 = [(FMDExtHostContext *)&v8 methodSignatureForSelector:?];
  if (!v5)
  {
    accessoryDelegate = [(FMDExtHostContext *)self accessoryDelegate];
    v5 = [accessoryDelegate methodSignatureForSelector:selector];
  }

  return v5;
}

- (void)forwardInvocation:(id)invocation
{
  v15 = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  accessoryDelegate = [(FMDExtHostContext *)self accessoryDelegate];
  [invocationCopy selector];
  v6 = objc_opt_respondsToSelector();

  v8 = LogCategory_Extensions(v7);
  accessoryDelegate3 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      accessoryDelegate2 = [(FMDExtHostContext *)self accessoryDelegate];
      v11 = 138412546;
      v12 = invocationCopy;
      v13 = 2112;
      v14 = accessoryDelegate2;
      _os_log_impl(&dword_1DF650000, accessoryDelegate3, OS_LOG_TYPE_DEFAULT, "HostContext forwardInvocation %@ to delegate %@", &v11, 0x16u);
    }

    accessoryDelegate3 = [(FMDExtHostContext *)self accessoryDelegate];
    [invocationCopy invokeWithTarget:accessoryDelegate3];
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(FMDExtHostContext *)invocationCopy forwardInvocation:accessoryDelegate3];
  }
}

- (void)forwardInvocation:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector([a1 selector]);
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1DF650000, a2, OS_LOG_TYPE_ERROR, "Invocation %@ not supported skipping completion block", &v4, 0xCu);
}

@end