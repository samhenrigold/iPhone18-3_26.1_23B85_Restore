@interface FTConversationService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)shouldAcceptConnection:(id)connection;
- (FTConversationService)initWithQueue:(id)queue;
@end

@implementation FTConversationService

- (FTConversationService)initWithQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = FTConversationService;
  v6 = [(FTConversationService *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = objc_alloc_init(FTPersistentDataSource);
    dataSource = v7->_dataSource;
    v7->_dataSource = v8;

    v10 = [[FTConversationServiceConnectionManager alloc] initWithDataSource:v7->_dataSource];
    connectionManager = v7->_connectionManager;
    v7->_connectionManager = v10;
  }

  return v7;
}

- (BOOL)shouldAcceptConnection:(id)connection
{
  conversationServiceEntitlements = [connection conversationServiceEntitlements];
  if ([conversationServiceEntitlements containsObject:@"access-conversation-links"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [conversationServiceEntitlements containsObject:@"modify-conversation-links"];
  }

  return v4;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v7 = FTCServiceLog(connectionCopy, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Asked to accept connection %@", &v17, 0xCu);
  }

  v8 = [(FTConversationService *)self shouldAcceptConnection:connectionCopy];
  v10 = FTCServiceLog(v8, v9);
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Entitlement found; accepting connection %@", &v17, 0xCu);
    }

    v12 = [FTConversationServiceConnection alloc];
    queue = [(FTConversationService *)self queue];
    v14 = [(FTConversationServiceConnection *)v12 initWithConnection:connectionCopy queue:queue];

    connectionManager = [(FTConversationService *)self connectionManager];
    [connectionManager addConnection:v14];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000CF64(connectionCopy, v11);
    }

    [connectionCopy invalidate];
  }

  return v8;
}

@end