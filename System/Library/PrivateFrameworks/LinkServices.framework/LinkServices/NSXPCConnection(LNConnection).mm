@interface NSXPCConnection(LNConnection)
- (void)ln_configureWithBundleIdentifier:()LNConnection interface:;
@end

@implementation NSXPCConnection(LNConnection)

- (void)ln_configureWithBundleIdentifier:()LNConnection interface:
{
  v12[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNConnection.m" lineNumber:1108 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  [self setRemoteObjectInterface:v8];
  v11 = @"bundleIdentifier";
  v12[0] = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [self setUserInfo:v9];
}

@end