@interface MSDRapportMessageHandler
- (MSDRapportMessageHandler)initWithObserver:(id)observer;
- (MSDRapportMessageHandlerProtocol)observer;
- (id)_extractRapportOptionsFromMessage:(id)message;
- (id)_extractRapportPayloadFromMessage:(id)message;
- (id)_findSenderRPClientForDevice:(id)device;
- (unint64_t)_getCurrentProtocolVersion;
- (void)_ensureListenerRPClientStartedWithCompletion:(id)completion;
- (void)_ensureSenderRPClientStartedForDevice:(id)device withCompletion:(id)completion;
- (void)_invalidateListenerRPClient;
- (void)_invalidateSenderRPClientForDevice:(id)device;
- (void)_listenForIncomingEventMessageOfID:(id)d;
- (void)_listenForIncomingRequestMessageOfID:(id)d;
- (void)_sendOutgoingEventMessage:(id)message toDevice:(id)device withCompletion:(id)completion;
- (void)_sendOutgoingRequestMessage:(id)message toDevice:(id)device withCompletion:(id)completion;
- (void)invalidateOutgoingConnectionForDevice:(id)device;
- (void)listenForIncomingEventMessageOfID:(id)d;
- (void)listenForIncomingRequestMessageOfID:(id)d;
- (void)sendOutgoingEventMessage:(id)message toDevice:(id)device withCompletion:(id)completion;
- (void)sendOutgoingRequestMessage:(id)message toDevice:(id)device withCompletion:(id)completion;
@end

@implementation MSDRapportMessageHandler

- (MSDRapportMessageHandler)initWithObserver:(id)observer
{
  observerCopy = observer;
  v9.receiver = self;
  v9.super_class = MSDRapportMessageHandler;
  v5 = [(MSDRapportMessageHandler *)&v9 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.MobileStoreDemo.RapportMessageHandler", 0);
    [(MSDRapportMessageHandler *)v5 setQueue:v6];

    [(MSDRapportMessageHandler *)v5 setObserver:observerCopy];
    v7 = [NSMutableArray arrayWithCapacity:4];
    [(MSDRapportMessageHandler *)v5 setSenderRPClients:v7];
  }

  return v5;
}

- (void)listenForIncomingRequestMessageOfID:(id)d
{
  dCopy = d;
  objc_initWeak(&location, self);
  queue = [(MSDRapportMessageHandler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098B6C;
  block[3] = &unk_10016A1C8;
  objc_copyWeak(&v9, &location);
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)listenForIncomingEventMessageOfID:(id)d
{
  dCopy = d;
  objc_initWeak(&location, self);
  queue = [(MSDRapportMessageHandler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098CAC;
  block[3] = &unk_10016A1C8;
  objc_copyWeak(&v9, &location);
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)sendOutgoingRequestMessage:(id)message toDevice:(id)device withCompletion:(id)completion
{
  messageCopy = message;
  deviceCopy = device;
  completionCopy = completion;
  objc_initWeak(&location, self);
  if (completionCopy)
  {
    queue = [(MSDRapportMessageHandler *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100098E34;
    block[3] = &unk_10016BCC0;
    objc_copyWeak(&v16, &location);
    v13 = messageCopy;
    v14 = deviceCopy;
    v15 = completionCopy;
    dispatch_async(queue, block);

    objc_destroyWeak(&v16);
  }

  objc_destroyWeak(&location);
}

- (void)sendOutgoingEventMessage:(id)message toDevice:(id)device withCompletion:(id)completion
{
  messageCopy = message;
  deviceCopy = device;
  completionCopy = completion;
  objc_initWeak(&location, self);
  if (completionCopy)
  {
    queue = [(MSDRapportMessageHandler *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100098FC0;
    block[3] = &unk_10016BCC0;
    objc_copyWeak(&v16, &location);
    v13 = messageCopy;
    v14 = deviceCopy;
    v15 = completionCopy;
    dispatch_async(queue, block);

    objc_destroyWeak(&v16);
  }

  objc_destroyWeak(&location);
}

- (void)invalidateOutgoingConnectionForDevice:(id)device
{
  deviceCopy = device;
  objc_initWeak(&location, self);
  queue = [(MSDRapportMessageHandler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100099104;
  block[3] = &unk_10016A1C8;
  objc_copyWeak(&v9, &location);
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_ensureListenerRPClientStartedWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(MSDRapportMessageHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  if (completionCopy)
  {
    listenerRPClient = [(MSDRapportMessageHandler *)self listenerRPClient];

    if (listenerRPClient)
    {
      listenerRPClient2 = [(MSDRapportMessageHandler *)self listenerRPClient];
      completionCopy[2](completionCopy, listenerRPClient2, 0);
    }

    else
    {
      v9 = sub_100063A54(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Creating RPCompanionLinkClient for listener!", buf, 2u);
      }

      objc_initWeak(buf, self);
      v10 = objc_alloc_init(RPCompanionLinkClient);
      [(MSDRapportMessageHandler *)self setListenerRPClient:v10];

      queue2 = [(MSDRapportMessageHandler *)self queue];
      listenerRPClient3 = [(MSDRapportMessageHandler *)self listenerRPClient];
      [listenerRPClient3 setDispatchQueue:queue2];

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100099428;
      v20[3] = &unk_100169C78;
      objc_copyWeak(&v21, buf);
      listenerRPClient4 = [(MSDRapportMessageHandler *)self listenerRPClient];
      [listenerRPClient4 setInterruptionHandler:v20];

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000994A8;
      v18[3] = &unk_100169C78;
      objc_copyWeak(&v19, buf);
      listenerRPClient5 = [(MSDRapportMessageHandler *)self listenerRPClient];
      [listenerRPClient5 setInvalidationHandler:v18];

      listenerRPClient6 = [(MSDRapportMessageHandler *)self listenerRPClient];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100099528;
      v16[3] = &unk_10016BCE8;
      v16[4] = self;
      v17 = completionCopy;
      [listenerRPClient6 activateWithCompletion:v16];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&v21);
      objc_destroyWeak(buf);
    }
  }
}

- (void)_invalidateListenerRPClient
{
  queue = [(MSDRapportMessageHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  listenerRPClient = [(MSDRapportMessageHandler *)self listenerRPClient];

  if (listenerRPClient)
  {
    listenerRPClient2 = [(MSDRapportMessageHandler *)self listenerRPClient];
    [listenerRPClient2 setInvalidationHandler:0];

    listenerRPClient3 = [(MSDRapportMessageHandler *)self listenerRPClient];
    [listenerRPClient3 invalidate];

    [(MSDRapportMessageHandler *)self setListenerRPClient:0];
  }
}

- (void)_listenForIncomingRequestMessageOfID:(id)d
{
  dCopy = d;
  queue = [(MSDRapportMessageHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100063A54(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = dCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Registering request of ID: %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000997FC;
  v9[3] = &unk_10016BD60;
  v8 = dCopy;
  v10 = v8;
  objc_copyWeak(&v12, buf);
  selfCopy = self;
  [(MSDRapportMessageHandler *)self _ensureListenerRPClientStartedWithCompletion:v9];
  objc_destroyWeak(&v12);

  objc_destroyWeak(buf);
}

- (void)_listenForIncomingEventMessageOfID:(id)d
{
  dCopy = d;
  queue = [(MSDRapportMessageHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100063A54(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = dCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Registering event of ID: %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100099DF4;
  v9[3] = &unk_10016BDB0;
  v8 = dCopy;
  v10 = v8;
  objc_copyWeak(&v11, buf);
  [(MSDRapportMessageHandler *)self _ensureListenerRPClientStartedWithCompletion:v9];
  objc_destroyWeak(&v11);

  objc_destroyWeak(buf);
}

- (id)_findSenderRPClientForDevice:(id)device
{
  deviceCopy = device;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(MSDRapportMessageHandler *)self senderRPClients];
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        destinationDevice = [v8 destinationDevice];
        identifier = [destinationDevice identifier];
        rpDevice = [deviceCopy rpDevice];
        identifier2 = [rpDevice identifier];
        v13 = [identifier isEqualToString:identifier2];

        if (v13)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (void)_ensureSenderRPClientStartedForDevice:(id)device withCompletion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  queue = [(MSDRapportMessageHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  if (completionCopy)
  {
    v9 = [(MSDRapportMessageHandler *)self _findSenderRPClientForDevice:deviceCopy];
    if (v9)
    {
      senderRPClients = [(MSDRapportMessageHandler *)self senderRPClients];
      lastObject = [senderRPClients lastObject];

      if (lastObject != v9)
      {
        senderRPClients2 = [(MSDRapportMessageHandler *)self senderRPClients];
        [senderRPClients2 removeObject:v9];

        senderRPClients3 = [(MSDRapportMessageHandler *)self senderRPClients];
        [senderRPClients3 addObject:v9];
      }

      completionCopy[2](completionCopy, v9, 0);
    }

    else
    {
      v14 = sub_100063A54(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v44 = deviceCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Creating RPCompanionLinkClient for device: %{public}@", buf, 0xCu);
      }

      senderRPClients4 = [(MSDRapportMessageHandler *)self senderRPClients];
      v16 = [senderRPClients4 count] > 3;

      if (v16)
      {
        v18 = sub_100063A54(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Removing", buf, 2u);
        }

        senderRPClients5 = [(MSDRapportMessageHandler *)self senderRPClients];
        firstObject = [senderRPClients5 firstObject];

        senderRPClients6 = [(MSDRapportMessageHandler *)self senderRPClients];
        [senderRPClients6 removeObjectAtIndex:0];

        [firstObject setInvalidationHandler:0];
        [firstObject invalidate];
      }

      objc_initWeak(buf, self);
      v22 = objc_alloc_init(RPCompanionLinkClient);
      queue2 = [(MSDRapportMessageHandler *)self queue];
      [v22 setDispatchQueue:queue2];

      [v22 setControlFlags:8454];
      rpDevice = [deviceCopy rpDevice];
      [v22 setDestinationDevice:rpDevice];

      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_10009A720;
      v40[3] = &unk_10016BDD8;
      v25 = deviceCopy;
      v41 = v25;
      objc_copyWeak(&v42, buf);
      [v22 setInterruptionHandler:v40];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10009A784;
      v37[3] = &unk_10016BDD8;
      v26 = v25;
      v38 = v26;
      objc_copyWeak(&v39, buf);
      [v22 setInvalidationHandler:v37];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10009A7E8;
      v34[3] = &unk_10016BDD8;
      v27 = v26;
      v35 = v27;
      objc_copyWeak(&v36, buf);
      [v22 setDisconnectHandler:v34];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10009A84C;
      v29[3] = &unk_10016A618;
      v30 = v27;
      v33 = completionCopy;
      selfCopy = self;
      v28 = v22;
      v32 = v28;
      [v28 activateWithCompletion:v29];

      objc_destroyWeak(&v36);
      objc_destroyWeak(&v39);

      objc_destroyWeak(&v42);
      objc_destroyWeak(buf);
    }
  }
}

- (void)_invalidateSenderRPClientForDevice:(id)device
{
  deviceCopy = device;
  queue = [(MSDRapportMessageHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [(MSDRapportMessageHandler *)self _findSenderRPClientForDevice:deviceCopy];
  v7 = v6;
  if (v6)
  {
    v8 = sub_100063A54(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = deviceCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Invalidating sender RPCompanionLinkClient for device: %{public}@", &v10, 0xCu);
    }

    [v7 setInvalidationHandler:0];
    [v7 invalidate];
    senderRPClients = [(MSDRapportMessageHandler *)self senderRPClients];
    [senderRPClients removeObject:v7];
  }
}

- (void)_sendOutgoingRequestMessage:(id)message toDevice:(id)device withCompletion:(id)completion
{
  messageCopy = message;
  deviceCopy = device;
  completionCopy = completion;
  queue = [(MSDRapportMessageHandler *)self queue];
  dispatch_assert_queue_V2(queue);

  identifier = [messageCopy identifier];
  v13 = sub_100063A54(identifier);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = identifier;
    v25 = 2114;
    v26 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Sending request of ID: %{public}@ to device: %{public}@", buf, 0x16u);
  }

  if (!deviceCopy)
  {
    v15 = @"Cannot find specified demo peer.";
    v16 = 3727741104;
LABEL_8:
    v14 = [NSError errorDomainMSDWithCode:v16 message:v15];
    completionCopy[2](completionCopy, 0, v14);
    goto LABEL_9;
  }

  if (([deviceCopy authenticated] & 1) == 0)
  {
    v15 = @"Cannot operate on demo peer not already authenticated.";
    v16 = 3727741106;
    goto LABEL_8;
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10009AC3C;
  v17[3] = &unk_10016BE28;
  v18 = deviceCopy;
  v22 = completionCopy;
  selfCopy = self;
  v20 = messageCopy;
  v21 = identifier;
  [(MSDRapportMessageHandler *)self _ensureSenderRPClientStartedForDevice:v18 withCompletion:v17];

  v14 = v18;
LABEL_9:
}

- (void)_sendOutgoingEventMessage:(id)message toDevice:(id)device withCompletion:(id)completion
{
  messageCopy = message;
  deviceCopy = device;
  completionCopy = completion;
  identifier = [messageCopy identifier];
  v12 = sub_100063A54(identifier);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = identifier;
    v25 = 2114;
    v26 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MSDRapportMessageHandler: Sending event of ID: %{public}@ to device: %{public}@", buf, 0x16u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10009B13C;
  v17[3] = &unk_10016BE28;
  v21 = identifier;
  v22 = completionCopy;
  v18 = deviceCopy;
  selfCopy = self;
  v20 = messageCopy;
  v13 = identifier;
  v14 = messageCopy;
  v15 = completionCopy;
  v16 = deviceCopy;
  [(MSDRapportMessageHandler *)self _ensureSenderRPClientStartedForDevice:v16 withCompletion:v17];
}

- (unint64_t)_getCurrentProtocolVersion
{
  if (!os_variant_has_internal_content())
  {
    return 3;
  }

  v2 = +[MSDTestPreferences sharedInstance];
  mockPeerProtocolVersion = [v2 mockPeerProtocolVersion];

  if (mockPeerProtocolVersion)
  {
    v5 = sub_100063A54(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = mockPeerProtocolVersion;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerCommander: Use mock protocol version: %@", &v8, 0xCu);
    }

    unsignedIntegerValue = [mockPeerProtocolVersion unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 3;
  }

  return unsignedIntegerValue;
}

- (id)_extractRapportPayloadFromMessage:(id)message
{
  messageCopy = message;
  v5 = +[NSMutableDictionary dictionary];
  payload = [messageCopy payload];

  if (payload)
  {
    payload2 = [messageCopy payload];
    [v5 addEntriesFromDictionary:payload2];
  }

  if ([(MSDRapportMessageHandler *)self _getCurrentProtocolVersion])
  {
    v8 = [NSNumber numberWithUnsignedInteger:[(MSDRapportMessageHandler *)self _getCurrentProtocolVersion]];
    [v5 setObject:v8 forKey:@"ProtocolVersion"];
  }

  v9 = [v5 copy];

  return v9;
}

- (id)_extractRapportOptionsFromMessage:(id)message
{
  messageCopy = message;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10009B748;
  v13 = sub_10009B758;
  v14 = [NSMutableDictionary dictionaryWithCapacity:0];
  options = [messageCopy options];

  if (options)
  {
    options2 = [messageCopy options];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10009B760;
    v8[3] = &unk_10016BE78;
    v8[4] = &v9;
    [options2 enumerateKeysAndObjectsUsingBlock:v8];
  }

  v6 = [v10[5] copy];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (MSDRapportMessageHandlerProtocol)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end