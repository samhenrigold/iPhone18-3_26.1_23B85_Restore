@interface AppReceiptController
+ (BOOL)connectionHasEntitlement:(id)entitlement;
+ (id)sharedController;
+ (void)getApplicationReceiptPathWithMessage:(id)message connection:(id)connection;
+ (void)observeXPCServer:(id)server;
+ (void)refreshAllReceipts:(id)receipts connection:(id)connection;
+ (void)refreshAppReceipt:(id)receipt connection:(id)connection;
- (AppReceiptController)init;
- (id)_operationQueue;
- (void)_addOperation:(id)operation;
- (void)_dispatchAsync:(id)async;
- (void)dealloc;
@end

@implementation AppReceiptController

- (AppReceiptController)init
{
  v6.receiver = self;
  v6.super_class = AppReceiptController;
  v2 = [(AppReceiptController *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.itunesstored.AppReceiptController", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_operationQueue)
  {
    v3 = +[Daemon daemon];
    [v3 removeKeepAliveOperationQueue:self->_operationQueue];

    [(ISOperationQueue *)self->_operationQueue cancelAllOperations];
  }

  v4.receiver = self;
  v4.super_class = AppReceiptController;
  [(AppReceiptController *)&v4 dealloc];
}

+ (BOOL)connectionHasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  HasEntitlement = SSXPCConnectionHasEntitlement();
  if ((HasEntitlement & 1) == 0)
  {
    v5 = SSXPCConnectionCopyClientIdentifier();
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v8) = shouldLog | 2;
    }

    else
    {
      LODWORD(v8) = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v13 = 138412546;
      v14 = objc_opt_class();
      v15 = 2112;
      v16 = v5;
      v10 = v14;
      v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "[%@]: Cannot register unentitled event monitor: %@", &v13, 22);

      if (!v11)
      {
LABEL_14:

        goto LABEL_15;
      }

      oSLogObject = [NSString stringWithCString:v11 encoding:4];
      free(v11);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:

  return HasEntitlement;
}

+ (void)getApplicationReceiptPathWithMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  v7 = dispatch_get_global_queue(0, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001DFD7C;
  v10[3] = &unk_100327238;
  v11 = connectionCopy;
  v12 = messageCopy;
  v8 = messageCopy;
  v9 = connectionCopy;
  dispatch_async(v7, v10);
}

+ (void)observeXPCServer:(id)server
{
  serverCopy = server;
  [serverCopy addObserver:self selector:"getApplicationReceiptPathWithMessage:connection:" forMessage:700];
  [serverCopy addObserver:self selector:"refreshAllReceipts:connection:" forMessage:117];
  [serverCopy addObserver:self selector:"refreshAppReceipt:connection:" forMessage:10011];
}

+ (void)refreshAllReceipts:(id)receipts connection:(id)connection
{
  connectionCopy = connection;
  v5 = [objc_opt_class() connectionHasEntitlement:connectionCopy];

  if (v5)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v8) = shouldLog | 2;
    }

    else
    {
      LODWORD(v8) = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v12 = 138412290;
      v13 = objc_opt_class();
      v10 = v13;
      v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject, 2, "[%@]:  Responding to XPC -- NOOP SSXPCMessageRefreshAllAppReceipts", &v12, 12);

      if (!v11)
      {
LABEL_14:

        return;
      }

      oSLogObject = [NSString stringWithCString:v11 encoding:4];
      free(v11);
      SSFileLog();
    }

    goto LABEL_14;
  }
}

+ (void)refreshAppReceipt:(id)receipt connection:(id)connection
{
  receiptCopy = receipt;
  connectionCopy = connection;
  if (xpc_dictionary_get_BOOL(receiptCopy, "3"))
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  if (xpc_dictionary_get_BOOL(receiptCopy, "2"))
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = xpc_dictionary_get_BOOL(receiptCopy, "1");
  if ((SSXPCConnectionHasEntitlement() & 1) != 0 || SSXPCConnectionHasEntitlement())
  {
    v10 = objc_alloc(sub_1001FA240());
    v11 = xpc_dictionary_get_value(receiptCopy, "4");
    v12 = [v10 initWithXPCEncoding:v11];

    if (v12)
    {
      storeExternalVersion = [v12 storeExternalVersion];
      if (storeExternalVersion && (v14 = storeExternalVersion, [v12 storeItemIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
      {
        v16 = 0;
      }

      else
      {
        v16 = v8 | v9 | 4;
      }

      v18 = [[XPCClient alloc] initWithInputConnection:connectionCopy];
      clientIdentifier = [(XPCClient *)v18 clientIdentifier];
      v25 = +[AppReceiptController sharedController];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1001E04FC;
      v28[3] = &unk_10032BE28;
      v29 = v12;
      v30 = clientIdentifier;
      v34 = v16;
      v31 = receiptCopy;
      v32 = connectionCopy;
      v33 = v25;
      v26 = v25;
      v27 = clientIdentifier;
      v17 = v12;
      [v26 _dispatchAsync:v28];

      goto LABEL_28;
    }
  }

  v17 = SSXPCConnectionCopyClientIdentifier();
  if ([v17 length])
  {
    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [(XPCClient *)v18 shouldLog];
    if ([(XPCClient *)v18 shouldLogToDisk])
    {
      LODWORD(v20) = shouldLog | 2;
    }

    else
    {
      LODWORD(v20) = shouldLog;
    }

    oSLogObject = [(XPCClient *)v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v20 = v20;
    }

    else
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v35 = 138412546;
      v36 = objc_opt_class();
      v37 = 2112;
      v38 = v17;
      v22 = v36;
      v23 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, oSLogObject, 2, "[%@]: Responding to XPC -- NOOP SKXPCMessageRefreshReceipt [%@]", &v35, 22);

      if (!v23)
      {
LABEL_28:

        goto LABEL_29;
      }

      oSLogObject = [NSString stringWithCString:v23 encoding:4];
      free(v23);
      SSFileLog();
    }

    goto LABEL_28;
  }

LABEL_29:
}

+ (id)sharedController
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E06E8;
  block[3] = &unk_100327170;
  block[4] = self;
  if (qword_1003840C8 != -1)
  {
    dispatch_once(&qword_1003840C8, block);
  }

  v2 = qword_1003840C0;

  return v2;
}

- (void)_addOperation:(id)operation
{
  operationCopy = operation;
  objc_setAssociatedObject(operationCopy, "com.apple.itunesstore.AppReceiptController.self", self, 0x301);
  _operationQueue = [(AppReceiptController *)self _operationQueue];
  [_operationQueue addOperation:operationCopy];
}

- (void)_dispatchAsync:(id)async
{
  asyncCopy = async;
  v5 = +[Daemon daemon];
  [v5 takeKeepAliveAssertion:@"com.apple.itunesstored.ReceiptRevocation"];

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E0864;
  block[3] = &unk_100327198;
  v9 = asyncCopy;
  v7 = asyncCopy;
  dispatch_async(dispatchQueue, block);
}

- (id)_operationQueue
{
  operationQueue = self->_operationQueue;
  if (!operationQueue)
  {
    v4 = objc_alloc_init(ISOperationQueue);
    v5 = self->_operationQueue;
    self->_operationQueue = v4;

    [(ISOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:1];
    v6 = +[Daemon daemon];
    [v6 addKeepAliveOperationQueue:self->_operationQueue];

    operationQueue = self->_operationQueue;
  }

  return operationQueue;
}

@end