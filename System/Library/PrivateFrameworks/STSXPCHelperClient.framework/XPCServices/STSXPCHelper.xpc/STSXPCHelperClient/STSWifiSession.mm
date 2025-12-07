@interface STSWifiSession
- (BOOL)isConnected;
- (void)altCarrierSendData:(id)data completion:(id)completion;
- (void)connectionCancelled:(id)cancelled;
- (void)connectionEstablishmentTimedout;
- (void)processRequest:(id)request connection:(id)connection;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidInvalidate:(id)invalidate error:(id)error;
- (void)sessionTimedout;
@end

@implementation STSWifiSession

- (void)connectionEstablishmentTimedout
{
  if (self)
  {
    sub_10001BF6C(*(self + 56));
    os_unfair_lock_lock((self + 12));
    v2 = [*(self + 64) copy];
    [*(self + 64) removeAllObjects];
    v3 = *(self + 56);
    *(self + 56) = 0;

    os_unfair_lock_unlock((self + 12));
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        v8 = 0;
        do
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          sub_10001BF6C(*(*(&v17 + 1) + 8 * v8));
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    sub_100024EC0(*(self + 40), v9, v10, v11, v12, v13, v14, v15);
    v16 = *(self + 40);
    *(self + 40) = 0;

    os_unfair_lock_lock((self + 12));
    *(self + 48) = 0;
    os_unfair_lock_unlock((self + 12));
  }
}

- (void)sessionDidConnect:(id)connect
{
  connectCopy = connect;
  sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSWifiSession sessionDidConnect:]", 159, self, @"connectionHandle=%@", v5, v6, connectCopy);
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    [(NSMutableArray *)self->_connectionHandles addObject:connectCopy];
    connectionState = self->_connectionState;
    self->_connectionState = 1;
    v8 = connectionState == 1;
  }

  else
  {
    [0 addObject:connectCopy];
    v8 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = +[NSDate now];
  v20[0] = @"transactionStartEventTime";
  v20[1] = @"transportType";
  v21[0] = v9;
  v21[1] = &off_10005F628;
  v10 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  v11 = +[STSAnalyticsLogger sharedCALogger];
  [v11 postISOTransactionEvent:v10 prepOnly:1];

  if (self && (WeakRetained = objc_loadWeakRetained(&self->_parent)) != 0)
  {
    v13 = WeakRetained;
    v14 = WeakRetained[4];
    if (v14)
    {
      v15 = v14[8];

      if (v15 == 1)
      {
        sub_100021710(self, connectCopy);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v16 = sub_100021538(self);
  if (!v16 || v16[8] != 1)
  {

    if (v8)
    {
      goto LABEL_21;
    }

    if (!self)
    {
LABEL_20:
      [(STSWifiSession *)self altCarrierConnectedWithStatus:0];

      goto LABEL_21;
    }

LABEL_19:
    self = objc_loadWeakRetained(&self->_carrierListener);
    goto LABEL_20;
  }

  if (!self)
  {

    if (v8)
    {
      goto LABEL_21;
    }

    self = 0;
    goto LABEL_20;
  }

  useHTTPServerOnPublisher = self->_useHTTPServerOnPublisher;

  if (useHTTPServerOnPublisher)
  {
    handoverSession = self->_handoverSession;
    if (handoverSession)
    {
      handoverSession = handoverSession->_workQueue;
    }

    v19 = handoverSession;
    sub_10001BA50(connectCopy, self, v19);
  }

  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_21:
}

- (void)sessionDidInvalidate:(id)invalidate error:(id)error
{
  errorCopy = error;
  sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSWifiSession sessionDidInvalidate:error:]", 195, self, @"error=%@", v6, v7, errorCopy);
  os_unfair_lock_lock(&self->_lock);
  if (!self)
  {
    os_unfair_lock_unlock(0xC);
    goto LABEL_6;
  }

  connectionState = self->_connectionState;
  self->_connectionState = 2;
  os_unfair_lock_unlock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_carrierListener);
  self = WeakRetained;
  if (!connectionState)
  {
LABEL_6:
    WeakRetained = self;
    v10 = 3;
    goto LABEL_7;
  }

  if (connectionState == 1)
  {
    v10 = 1;
LABEL_7:
    [(STSWifiSession *)WeakRetained altCarrierDisconnectedWithStatus:v10];
  }

  v11 = +[NSDate now];
  v16[0] = @"transactionEndEventTime";
  v16[1] = @"errorCode";
  v17[0] = v11;
  code = [errorCopy code];

  v13 = [NSNumber numberWithInteger:code];
  v17[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];

  v15 = +[STSAnalyticsLogger sharedCALogger];
  [v15 postISOTransactionEvent:v14 prepOnly:0];
}

- (void)connectionCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSWifiSession connectionCancelled:]", 218, self, &stru_100059C08, v5, v6, v10);
  sub_10001BF6C(cancelledCopy);
  os_unfair_lock_lock(&self->_lock);
  if (!self)
  {
    [0 removeObject:cancelledCopy];

    os_unfair_lock_unlock(0xC);
    WeakRetained = 0;
    goto LABEL_6;
  }

  [(NSMutableArray *)self->_connectionHandles removeObject:cancelledCopy];

  connectionState = self->_connectionState;
  self->_connectionState = 2;
  os_unfair_lock_unlock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_carrierListener);
  if (!connectionState)
  {
LABEL_6:
    v11 = WeakRetained;
    v9 = 3;
    goto LABEL_7;
  }

  if (connectionState != 1)
  {
    goto LABEL_8;
  }

  v11 = WeakRetained;
  v9 = 1;
LABEL_7:
  [WeakRetained altCarrierDisconnectedWithStatus:v9];
  WeakRetained = v11;
LABEL_8:
}

- (void)altCarrierSendData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    connectionHandles = self->_connectionHandles;
  }

  else
  {
    connectionHandles = 0;
  }

  v9 = [(NSMutableArray *)connectionHandles count];
  os_unfair_lock_unlock(&self->_lock);
  if (!v9)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSWifiSession altCarrierSendData:completion:]", 250, self, @"AC not connected", v10, v11, v50);
    v69 = NSLocalizedDescriptionKey;
    *buf = off_100069A80;
    v16 = [NSDictionary dictionaryWithObjects:buf forKeys:&v69 count:1];
    firstObject = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:8 userInfo:v16];

    completionCopy[2](completionCopy, firstObject);
    goto LABEL_41;
  }

  v12 = sub_100024AE0();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WifiSession_SendData", &unk_10005485E, buf, 2u);
  }

  v13 = sub_100021538(self);
  v14 = v13;
  if (!v13 || (*(v13 + 8) & 1) == 0)
  {
    if (self && (WeakRetained = objc_loadWeakRetained(&self->_parent), (v19 = WeakRetained) != 0))
    {
      v20 = WeakRetained[4];
      if (v20)
      {
        v15 = v20[8] ^ 1;
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      v20 = 0;
      v19 = 0;
    }

    v15 = 1;
    goto LABEL_14;
  }

  v15 = 0;
LABEL_15:

  v21 = [dataCopy length];
  sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSWifiSession altCarrierSendData:completion:]", 259, self, @"Data len=%ld,subscriberWithHttpClient=%d, httpServerStarted=%d", v22, v23, v21);
  v24 = sub_100021538(self);
  if (v24 && v24[8] == 1)
  {
    if (self)
    {
      useHTTPServerOnPublisher = self->_useHTTPServerOnPublisher;

      if (useHTTPServerOnPublisher)
      {
        v26 = [[NSURL alloc] initWithString:&stru_100059C08];
        v27 = dataCopy;
        v28 = objc_alloc_init(NSMutableDictionary);
        [v28 setObject:@"application/CBOR" forKeyedSubscript:@"Content-Type"];
        v29 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v27 length]);
        stringValue = [v29 stringValue];
        [v28 setObject:stringValue forKeyedSubscript:@"Content-Length"];

        v31 = [[NSHTTPURLResponse alloc] initWithURL:v26 statusCode:200 HTTPVersion:@"HTTP/1.1" headerFields:v28];
        v32 = [[HTTPServerResponse alloc] initWithResponse:v31 bodyData:v27];

        os_unfair_lock_lock(&self->_lock);
        firstObject = self->_activeHandle;
        os_unfair_lock_unlock(&self->_lock);
        v59[0] = _NSConcreteStackBlock;
        v59[1] = 3221225472;
        v59[2] = sub_1000226EC;
        v59[3] = &unk_100058F20;
        v59[4] = self;
        v60 = completionCopy;
        sub_10001BB34(&firstObject->super.isa, v32, v59);

        goto LABEL_41;
      }

      os_unfair_lock_lock(&self->_lock);
      if (v15)
      {
        goto LABEL_26;
      }

      goto LABEL_33;
    }

    os_unfair_lock_lock(0xC);
    v33 = 0;
    v34 = 0;
    if (v15)
    {
      goto LABEL_27;
    }

    goto LABEL_34;
  }

  os_unfair_lock_lock(&self->_lock);
  if ((v15 & 1) == 0)
  {
    if (self)
    {
LABEL_33:
      v34 = self->_connectionHandles;
      goto LABEL_34;
    }

    v34 = 0;
LABEL_34:
    firstObject = [(NSMutableArray *)v34 firstObject];
    os_unfair_lock_unlock(&self->_lock);
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_1000229A0;
    v53[3] = &unk_100059140;
    v53[4] = self;
    v54 = completionCopy;
    sub_10001B964(firstObject, dataCopy, v53);

    goto LABEL_41;
  }

  if (self)
  {
LABEL_26:
    v33 = self->_connectionHandles;
    goto LABEL_27;
  }

  v33 = 0;
LABEL_27:
  firstObject = [(NSMutableArray *)v33 firstObject];
  v52 = sub_10001B740(firstObject);
  os_unfair_lock_unlock(&self->_lock);
  if (v52)
  {
    v51 = dataCopy;
    v35 = v52;
    if (self)
    {
      v36 = sub_100021538(self);
      if (v36)
      {
        v37 = v36[10] + 5.0;
      }

      else
      {
        v37 = 5.0;
      }

      v38 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
      v39 = [NSURLSession sessionWithConfiguration:v38];
      sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSWifiSession _send:remoteURL:]", 423, self, @"Remote: %@", v40, v41, v35);
      v42 = [NSMutableURLRequest requestWithURL:v35 cachePolicy:1 timeoutInterval:v37];
      [v42 setHTTPMethod:@"POST"];
      [v42 addValue:@"application/CBOR" forHTTPHeaderField:@"Content-Type"];
      [v42 setHTTPBody:v51];
      objc_initWeak(&location, self);
      v69 = 0;
      v70 = &v69;
      v71 = 0x3032000000;
      v72 = sub_1000230BC;
      v73 = sub_1000230CC;
      v74 = 0;
      *buf = _NSConcreteStackBlock;
      v63 = 3221225472;
      v64 = sub_1000230D4;
      v65 = &unk_100059118;
      selfCopy = self;
      objc_copyWeak(v68, &location);
      v67 = &v69;
      v43 = [v39 dataTaskWithRequest:v42 completionHandler:buf];
      v44 = v70[5];
      v70[5] = v43;

      [(NSString *)v70[5] resume];
      _Block_object_dispose(&v69, 8);

      objc_destroyWeak(v68);
      objc_destroyWeak(&location);
    }

    v45 = 0;
  }

  else
  {
    v69 = NSLocalizedDescriptionKey;
    *buf = off_100069A50;
    v46 = [NSDictionary dictionaryWithObjects:buf forKeys:&v69 count:1];
    v45 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:2 userInfo:v46];
  }

  v47 = sub_100024AE0();
  if (os_signpost_enabled(v47))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WifiSession_SendData", &unk_10005485E, buf, 2u);
  }

  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022920;
  block[3] = &unk_100059190;
  v56 = v45;
  selfCopy2 = self;
  v58 = completionCopy;
  v49 = v45;
  dispatch_async(queue, block);

LABEL_41:
}

- (void)sessionTimedout
{
  v3 = [[NSURL alloc] initWithString:&stru_100059C08];
  v4 = [[NSHTTPURLResponse alloc] initWithURL:v3 statusCode:400 HTTPVersion:0 headerFields:0];
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    activeHandle = self->_activeHandle;
  }

  else
  {
    activeHandle = 0;
  }

  v6 = activeHandle;
  os_unfair_lock_unlock(&self->_lock);
  v7 = [[HTTPServerResponse alloc] initWithResponse:v4];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100022CE4;
  v8[3] = &unk_1000590C8;
  v8[4] = self;
  sub_10001BB34(v6, v7, v8);
}

- (BOOL)isConnected
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    v3 = self->_connectionState == 1;
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)processRequest:(id)request connection:(id)connection
{
  requestCopy = request;
  connectionCopy = connection;
  v8 = [[NSURL alloc] initWithString:&stru_100059C08];
  v9 = [[NSHTTPURLResponse alloc] initWithURL:v8 statusCode:400 HTTPVersion:0 headerFields:0];
  hTTPMethod = [requestCopy HTTPMethod];
  uppercaseString = [hTTPMethod uppercaseString];
  v12 = [uppercaseString isEqualToString:@"POST"];

  if (v12)
  {
    v15 = [requestCopy valueForHTTPHeaderField:@"Content-Type"];
    v16 = v15;
    if (v15 && ([(HTTPServerResponse *)v15 isEqualToString:@"application/CBOR"]& 1) != 0)
    {
      os_unfair_lock_lock(&self->_lock);
      if (self)
      {
        if (self->_activeHandle)
        {
          os_unfair_lock_unlock(&self->_lock);
          sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSWifiSession processRequest:connection:]", 391, self, @"One outstanding request in progress", v17, v18, v22[0]);
          v19 = [[NSHTTPURLResponse alloc] initWithURL:v8 statusCode:503 HTTPVersion:0 headerFields:0];
          v20 = [[HTTPServerResponse alloc] initWithResponse:v19];
          sub_10001BB34(connectionCopy, v20, 0);

LABEL_9:
          goto LABEL_10;
        }

        sub_1000168CC(self, connectionCopy);
        os_unfair_lock_unlock(&self->_lock);
        queue = self->_queue;
      }

      else
      {
        sub_1000168CC(0, connectionCopy);
        os_unfair_lock_unlock(0xC);
        queue = 0;
      }

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100023040;
      v22[3] = &unk_100058CB0;
      v22[4] = self;
      v23 = requestCopy;
      dispatch_async(queue, v22);

      goto LABEL_10;
    }

    v19 = [[HTTPServerResponse alloc] initWithResponse:v9];
    sub_10001BB34(connectionCopy, v19, 0);
    goto LABEL_9;
  }

  sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSWifiSession processRequest:connection:]", 370, self, @"Expected POST command on HTTP request", v13, v14, v22[0]);
  v16 = [[HTTPServerResponse alloc] initWithResponse:v9];
  sub_10001BB34(connectionCopy, v16, 0);
LABEL_10:
}

@end