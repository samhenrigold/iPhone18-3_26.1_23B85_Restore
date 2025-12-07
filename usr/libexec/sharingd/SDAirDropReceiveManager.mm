@interface SDAirDropReceiveManager
- (NSString)description;
- (SDAirDropReceiveManager)init;
- (void)alertManager:(id)manager acceptingTransferWithRecordID:(id)d withDestinationURL:(id)l shouldExtractMediaFromPhotosBundlesForRecordID:(BOOL)iD;
- (void)alertManager:(id)manager cancelingTransferWithRecordID:(id)d withFailureReason:(unint64_t)reason;
- (void)listener:(id)listener didReceiveError:(id)error;
- (void)listener:(id)listener didReceiveNewRequest:(id)request;
- (void)networkOperation:(id)operation event:(int64_t)event withResults:(id)results;
- (void)start;
- (void)stop;
@end

@implementation SDAirDropReceiveManager

- (SDAirDropReceiveManager)init
{
  v8.receiver = self;
  v8.super_class = SDAirDropReceiveManager;
  v2 = [(SDAirDropReceiveManager *)&v8 init];
  v3 = v2;
  if (v2)
  {
    listener = v2->_listener;
    v2->_listener = 0;

    v5 = objc_opt_new();
    transferIdentifierToNetworkOperation = v3->_transferIdentifierToNetworkOperation;
    v3->_transferIdentifierToNetworkOperation = v5;
  }

  return v3;
}

- (void)start
{
  if (!self->_listener)
  {
    v3 = objc_alloc_init(SDAirDropListener);
    listener = self->_listener;
    self->_listener = v3;

    [(SDAirDropListener *)self->_listener setDelegate:self];
    [(SDAirDropListener *)self->_listener start];
    v7 = +[SDStatusMonitor sharedMonitor];
    if ([v7 enableDebugMode])
    {
      v5 = IsAppleInternalBuild();

      if (!v5)
      {
        return;
      }

      v6 = +[SDAirDropFakeTransfer sharedFakeTransfer];
      [v6 setTransferManager:self->_alertManager];

      v7 = +[SDAirDropFakeTransfer sharedFakeTransfer];
      [v7 setDebugModeEnabled:1];
    }
  }
}

- (void)stop
{
  listener = self->_listener;
  if (listener)
  {
    [(SDAirDropListener *)listener setDelegate:0];
    [(SDAirDropListener *)self->_listener stop];
    v4 = self->_listener;
    self->_listener = 0;

    v6 = +[SDStatusMonitor sharedMonitor];
    if ([v6 enableDebugMode])
    {
      v5 = IsAppleInternalBuild();

      if (!v5)
      {
        return;
      }

      v6 = +[SDAirDropFakeTransfer sharedFakeTransfer];
      [v6 setDebugModeEnabled:0];
    }
  }
}

- (void)listener:(id)listener didReceiveNewRequest:(id)request
{
  requestCopy = request;
  objectKey = [requestCopy objectKey];
  v7 = airdrop_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10010E240();
  }

  [(NSMutableDictionary *)self->_transferIdentifierToNetworkOperation setObject:requestCopy forKeyedSubscript:objectKey];
  [requestCopy setDelegate:self];
  [requestCopy resume];
}

- (void)listener:(id)listener didReceiveError:(id)error
{
  errorCopy = error;
  v5 = airdrop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10010E2C0(errorCopy, v5);
  }
}

- (void)networkOperation:(id)operation event:(int64_t)event withResults:(id)results
{
  operationCopy = operation;
  resultsCopy = results;
  objectKey = [operationCopy objectKey];
  if (event == 7)
  {
    v11 = airdrop_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10010E478(objectKey, resultsCopy, v11);
    }

    [(SDAirDropAlertManagerProtocol *)self->_alertManager progressEventForRecordID:objectKey withResults:resultsCopy];
    goto LABEL_5;
  }

  v12 = airdrop_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if ((event - 1) > 0xE)
    {
      v13 = @"?";
    }

    else
    {
      v13 = *(&off_1008D0900 + event - 1);
    }

    v19 = 138412546;
    v20 = v13;
    v21 = 2112;
    v22 = objectKey;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SDAirDropReceiveManager: Received event %@ for transfer %@", &v19, 0x16u);
  }

  if (event <= 7)
  {
    if (event <= 4)
    {
      if (event == 2)
      {
        [(SDAirDropAlertManagerProtocol *)self->_alertManager askEventForRecordID:objectKey withResults:resultsCopy];
        goto LABEL_5;
      }

      if (event == 4)
      {
        [(SDAirDropAlertManagerProtocol *)self->_alertManager cancelEventForRecordID:objectKey withResults:resultsCopy];
        [(NSMutableDictionary *)self->_transferIdentifierToNetworkOperation removeObjectForKey:objectKey];
        [operationCopy invalidate];
        goto LABEL_5;
      }
    }

    else if ((event - 5) < 2)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

  if (event > 9)
  {
    if (event != 10)
    {
      if (event == 13)
      {
        goto LABEL_5;
      }

LABEL_33:
      v18 = airdrop_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10010E3C4(event, resultsCopy, v18);
      }

      goto LABEL_5;
    }

    v14 = [resultsCopy objectForKeyedSubscript:kSFOperationErrorKey];
    code = [v14 code];
    domain = [v14 domain];
    if ((![domain isEqual:NSPOSIXErrorDomain] || code != 89) && (!objc_msgSend(domain, "isEqual:", NSOSStatusErrorDomain) || code != -128))
    {
      v17 = airdrop_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_10010E338();
      }

      [(SDAirDropAlertManagerProtocol *)self->_alertManager errorEventForRecordID:objectKey withResults:resultsCopy];
    }

    [(NSMutableDictionary *)self->_transferIdentifierToNetworkOperation removeObjectForKey:objectKey];
    [operationCopy invalidate];
  }

  else if (event != 8)
  {
    [(SDAirDropAlertManagerProtocol *)self->_alertManager finishedEventForRecordID:objectKey withResults:resultsCopy];
    [(NSMutableDictionary *)self->_transferIdentifierToNetworkOperation removeObjectForKey:objectKey];
  }

LABEL_5:
}

- (void)alertManager:(id)manager acceptingTransferWithRecordID:(id)d withDestinationURL:(id)l shouldExtractMediaFromPhotosBundlesForRecordID:(BOOL)iD
{
  iDCopy = iD;
  lCopy = l;
  v10 = [(NSMutableDictionary *)self->_transferIdentifierToNetworkOperation objectForKeyedSubscript:d];
  if (v10)
  {
    if (lCopy)
    {
      v11 = kSFOperationDestinationURLKey;
      v16[0] = kSFOperationDestinationURLKey;
      v17[0] = lCopy;
      absoluteString = [lCopy absoluteString];
      v16[1] = absoluteString;
      v13 = +[NSNull null];
      v17[1] = v13;
      v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];

      [v10 setProperty:v14 forKey:v11];
    }

    v15 = [NSNumber numberWithBool:iDCopy];
    [v10 setProperty:v15 forKey:kSFOperationExtractPhotosBundleMediaKey];

    [v10 resume];
  }
}

- (void)alertManager:(id)manager cancelingTransferWithRecordID:(id)d withFailureReason:(unint64_t)reason
{
  dCopy = d;
  v6 = [(NSMutableDictionary *)self->_transferIdentifierToNetworkOperation objectForKeyedSubscript:?];
  if (v6)
  {
    [(NSMutableDictionary *)self->_transferIdentifierToNetworkOperation removeObjectForKey:dCopy];
    [v6 invalidate];
  }
}

- (NSString)description
{
  listener = self->_listener;
  if (listener)
  {
    v6 = 0;
    v3 = [(SDAirDropListener *)listener description];
    NSAppendPrintF(&v6, "%@\n", v3);
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end