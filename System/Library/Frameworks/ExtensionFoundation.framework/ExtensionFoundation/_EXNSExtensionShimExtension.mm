@interface _EXNSExtensionShimExtension
- (BOOL)shouldAcceptConnection:(id)connection;
- (void)willFinishLaunching;
@end

@implementation _EXNSExtensionShimExtension

- (void)willFinishLaunching
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromClass(*self);
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_1847D1000, a2, OS_LOG_TYPE_DEBUG, "NSExtension shim launched with principal class: %{public}@", &v4, 0xCu);
}

- (BOOL)shouldAcceptConnection:(id)connection
{
  connectionCopy = connection;
  principalObject = [(_EXNSExtensionShimExtension *)self principalObject];

  if (!principalObject)
  {
    v6 = objc_alloc_init([(_EXNSExtensionShimExtension *)self principalClass]);
    [(_EXNSExtensionShimExtension *)self setPrincipalObject:v6];
  }

  v7 = objc_alloc_init([(_EXNSExtensionShimExtension *)self extensionContextClass]);
  principalObject2 = [(_EXNSExtensionShimExtension *)self principalObject];
  [v7 setPrincipalObject:principalObject2];

  LOBYTE(principalObject2) = [v7 shouldAcceptXPCConnection:connectionCopy];
  return principalObject2;
}

@end