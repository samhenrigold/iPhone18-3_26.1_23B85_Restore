@interface NPKSharedPeerPaymentWebServiceArchiver
- (NPKSharedPeerPaymentWebServiceArchiver)initWithCompanionAgentConnection:(id)connection;
- (void)archiveContext:(id)context;
@end

@implementation NPKSharedPeerPaymentWebServiceArchiver

- (NPKSharedPeerPaymentWebServiceArchiver)initWithCompanionAgentConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = NPKSharedPeerPaymentWebServiceArchiver;
  v6 = [(NPKSharedPeerPaymentWebServiceArchiver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (void)archiveContext:(id)context
{
  contextCopy = context;
  v5 = pk_Payment_log(contextCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Telling daemon to archive peer payment web service context", v11, 2u);
    }
  }

  connection = [(NPKSharedPeerPaymentWebServiceArchiver *)self connection];
  v10 = NPKPairedOrPairingDevice();
  [connection setSharedPeerPaymentWebServiceContext:contextCopy forDevice:v10];
}

@end