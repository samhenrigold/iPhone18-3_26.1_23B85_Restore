@interface NSXPCConnection(XPC_Connection_Uniquifier)
- (void)uniquify;
@end

@implementation NSXPCConnection(XPC_Connection_Uniquifier)

- (void)uniquify
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v3[1] = 0;
  MEMORY[0x1E12C2910](v3);
  _xpcConnection = [self _xpcConnection];
  xpc_connection_set_oneshot_instance();
}

@end