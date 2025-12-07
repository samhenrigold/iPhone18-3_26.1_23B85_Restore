@interface _LSDClient
- (_LSDClient)initWithXPCConnection:(id)connection;
- (void)handleXPCInvocation:(id)invocation isReply:(BOOL)reply;
@end

@implementation _LSDClient

- (_LSDClient)initWithXPCConnection:(id)connection
{
  v7.receiver = self;
  v7.super_class = _LSDClient;
  v4 = [(_LSDClient *)&v7 init];
  _LSAssertRunningInServer("[_LSDClient initWithXPCConnection:]", v5);
  if (v4)
  {
    objc_storeStrong(&v4->_XPCConnection, connection);
  }

  return v4;
}

- (void)handleXPCInvocation:(id)invocation isReply:(BOOL)reply
{
  replyCopy = reply;
  [_LSDClient willHandleInvocation:"willHandleInvocation:isReply:" isReply:?];
  [(_LSDClient *)self invokeServiceInvocation:invocation isReply:replyCopy];

  [(_LSDClient *)self didHandleInvocation:invocation isReply:replyCopy];
}

@end