@interface XPCNSServiceListener
- (BOOL)XPCServiceListener:(id)listener shouldAcceptNewConnection:(id)connection;
- (XPCNSServiceListener)initWithServiceName:(id)name queue:(id)queue delegate:(id)delegate;
- (void)XPCServiceListener:(id)listener didReceiveNewConnection:(id)connection;
@end

@implementation XPCNSServiceListener

- (void)XPCServiceListener:(id)listener didReceiveNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [[XPCNSServiceConnection alloc] initWithXPCServiceConnection:connectionCopy];

  [(XPCNSServiceListenerDelegate *)self->_delegate XPCNSServiceListener:self didReceiveNewConnection:v6];
}

- (BOOL)XPCServiceListener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  if (objc_opt_respondsToSelector())
  {
    v6 = [(XPCNSServiceListenerDelegate *)self->_delegate XPCNSServiceListener:self shouldReceiveNewConnection:connectionCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (XPCNSServiceListener)initWithServiceName:(id)name queue:(id)queue delegate:(id)delegate
{
  nameCopy = name;
  queueCopy = queue;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = XPCNSServiceListener;
  v11 = [(XPCNSServiceListener *)&v15 init];
  if (v11)
  {
    v12 = [[XPCServiceListener alloc] initWithServiceName:nameCopy queue:queueCopy delegate:v11];
    serviceListener = v11->_serviceListener;
    v11->_serviceListener = v12;

    v11->_delegate = delegateCopy;
  }

  return v11;
}

@end