@interface _EXConnectionHandlerExtension
- (BOOL)shouldAcceptConnection:(id)connection;
- (void)willFinishLaunching;
@end

@implementation _EXConnectionHandlerExtension

- (void)willFinishLaunching
{
  v1 = NSStringFromClass(self);
  v8 = 136315906;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_7();
}

- (BOOL)shouldAcceptConnection:(id)connection
{
  connectionCopy = connection;
  connectionHandler = [(_EXConnectionHandlerExtension *)self connectionHandler];

  if (connectionHandler)
  {
    connectionHandler2 = [(_EXConnectionHandlerExtension *)self connectionHandler];
    v7 = [connectionHandler2 shouldAcceptXPCConnection:connectionCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end