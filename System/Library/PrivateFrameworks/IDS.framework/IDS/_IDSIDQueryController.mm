@interface _IDSIDQueryController
+ (id)_createXPCConnectionOnQueue:(id)queue;
+ (void)initialize;
- (BOOL)_currentRemoteDevicesForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue waitForReply:(BOOL)reply completionBlock:(id)block completionBlockWithError:(id)self0;
- (BOOL)_flushQueryCacheForService:(id)service;
- (BOOL)_refreshIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD allowRefresh:(BOOL)refresh respectExpiry:(BOOL)expiry waitForReply:(BOOL)reply forceRefresh:(BOOL)self0 bypassLimit:(BOOL)self1 queue:(id)self2 completionBlock:(id)self3;
- (BOOL)_sync_currentIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d respectExpiry:(BOOL)expiry listenerID:(id)iD completionBlock:(id)block;
- (BOOL)_sync_refreshIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD completionBlock:(id)block;
- (BOOL)_warmupQueryCacheForService:(id)service;
- (BOOL)currentIDStatusForDestination:(id)destination service:(id)service preferredFromID:(id)d respectExpiry:(BOOL)expiry listenerID:(id)iD queue:(id)queue completionBlock:(id)block;
- (BOOL)currentIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d respectExpiry:(BOOL)expiry listenerID:(id)iD queue:(id)queue completionBlock:(id)block;
- (BOOL)idInfoForDestinations:(id)destinations service:(id)service preferredFromID:(id)d infoTypes:(unint64_t)types options:(id)options listenerID:(id)iD queue:(id)queue completionBlock:(id)self0;
- (BOOL)refreshIDStatusForDestination:(id)destination service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block;
- (BOOL)refreshIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD forceRefresh:(BOOL)refresh queue:(id)queue completionBlock:(id)block;
- (BOOL)removeListenerID:(id)d forService:(id)service;
- (BOOL)requiredIDStatusForDestination:(id)destination service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block;
- (BOOL)requiredIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block;
- (_IDSIDQueryController)init;
- (_IDSIDQueryController)initWithDelegateContext:(id)context queueController:(id)controller;
- (id)__sendMessage:(id)message queue:(id)queue reply:(id)reply failBlock:(id)block waitForReply:(BOOL)forReply;
- (id)_cachedStatusForDestination:(id)destination service:(id)service;
- (id)_delegateMapForListenerID:(id)d service:(id)service;
- (int64_t)_currentCachedIDStatusForDestination:(id)destination service:(id)service listenerID:(id)d;
- (void)IDQueryCompletedWithFromURI:(id)i idStatusUpdates:(id)updates service:(id)service success:(BOOL)success error:(id)error;
- (void)___oldDealloc;
- (void)_callDelegatesForService:(id)service destinationToVerifierResult:(id)result;
- (void)_callDelegatesWithBlock:(id)block;
- (void)_callDelegatesWithBlock:(id)block delegateMap:(id)map;
- (void)_connect;
- (void)_disconnectFromQueryService;
- (void)_idStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD allowRenew:(BOOL)renew respectExpiry:(BOOL)expiry waitForReply:(BOOL)reply forceRefresh:(BOOL)self0 bypassLimit:(BOOL)self1 completionBlock:(id)self2;
- (void)_purgeIDStatusCache;
- (void)_purgeIDStatusCacheAfter:(double)after;
- (void)_requestCacheForService:(id)service completionBlock:(id)block;
- (void)_requestCachedStatusForDestinations:(id)destinations fromID:(id)d service:(id)service waitForReply:(BOOL)reply respectExpiry:(BOOL)expiry listenerID:(id)iD completionBlock:(id)block;
- (void)_requestIDInfoForDestinations:(id)destinations fromID:(id)d service:(id)service infoTypes:(unint64_t)types options:(id)options listenerID:(id)iD queue:(id)queue completionBlock:(id)self0;
- (void)_requestRemoteDevicesForDestination:(id)destination fromID:(id)d service:(id)service listenerID:(id)iD waitForReply:(BOOL)reply completionBlock:(id)block;
- (void)_requestStatusForDestinations:(id)destinations fromID:(id)d service:(id)service waitForReply:(BOOL)reply forceRefresh:(BOOL)refresh bypassLimit:(BOOL)limit listenerID:(id)iD completionBlock:(id)self0;
- (void)_setCurrentIDStatus:(int64_t)status forDestination:(id)destination service:(id)service;
- (void)_updateCacheWithDictionary:(id)dictionary service:(id)service;
- (void)addDelegate:(id)delegate forService:(id)service listenerID:(id)d queue:(id)queue;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)addListenerID:(id)d forService:(id)service;
- (void)dealloc;
- (void)flushQueryCache;
- (void)removeDelegate:(id)delegate;
- (void)removeDelegate:(id)delegate forService:(id)service listenerID:(id)d;
- (void)setFromID:(id)d;
@end

@implementation _IDSIDQueryController

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class() && qword_1ED5DDF80 != -1)
  {
    sub_195A02104();
  }
}

- (_IDSIDQueryController)init
{
  v13.receiver = self;
  v13.super_class = _IDSIDQueryController;
  v2 = [(_IDSIDQueryController *)&v13 init];
  v3 = v2;
  if (v2)
  {
    connection = v2->_connection;
    v2->_connection = 0;

    delegateContext = v3->_delegateContext;
    v3->_delegateContext = 0;

    serviceToken = v3->_serviceToken;
    v3->_serviceToken = 0;

    listenerIDToServicesMap = v3->_listenerIDToServicesMap;
    v3->_listenerIDToServicesMap = 0;

    delegateToInfo = v3->_delegateToInfo;
    v3->_delegateToInfo = 0;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("_IDSIDQueryControllerConnectionQueue", v9);
    connectionQueue = v3->_connectionQueue;
    v3->_connectionQueue = v10;
  }

  return v3;
}

- (void)_purgeIDStatusCache
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A05AC8;
  block[3] = &unk_1E743E878;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)___oldDealloc
{
  serviceToken = self->_serviceToken;
  self->_serviceToken = 0;

  listenerIDToServicesMap = self->_listenerIDToServicesMap;
  self->_listenerIDToServicesMap = 0;

  delegateToInfo = self->_delegateToInfo;
  self->_delegateToInfo = 0;
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  if (delegateCopy)
  {
    if (queueCopy)
    {
      v7 = [(NSMapTable *)self->_delegateToInfo objectForKey:delegateCopy];

      if (!v7)
      {
        if (!self->_delegateToInfo)
        {
          weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
          delegateToInfo = self->_delegateToInfo;
          self->_delegateToInfo = weakToStrongObjectsMapTable;
        }

        v10 = objc_alloc_init(MEMORY[0x1E69A5228]);
        [v10 setQueue:queueCopy];
        [(NSMapTable *)self->_delegateToInfo setObject:v10 forKey:delegateCopy];
      }
    }
  }
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = delegateCopy;
  if (delegateCopy)
  {
    v7 = delegateCopy;
    [(NSMapTable *)self->_delegateToInfo removeObjectForKey:delegateCopy];
    delegateCopy = [(NSMapTable *)self->_delegateToInfo count];
    v5 = v7;
    if (!delegateCopy)
    {
      delegateToInfo = self->_delegateToInfo;
      self->_delegateToInfo = 0;

      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](delegateCopy, v5);
}

- (void)_callDelegatesWithBlock:(id)block
{
  v21 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (blockCopy)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = self->_delegateToInfo;
    v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [(NSMapTable *)self->_delegateToInfo objectForKey:v9];
          queue = [v10 queue];
          if (queue)
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = sub_195A4AB90;
            block[3] = &unk_1E743F110;
            v12 = blockCopy;
            block[4] = v9;
            v15 = v12;
            dispatch_async(queue, block);
          }
        }

        v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }
  }
}

- (void)_connect
{
  if (!self->_serviceToken)
  {
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    serviceToken = self->_serviceToken;
    self->_serviceToken = stringGUID;

    MEMORY[0x1EEE66BB8](stringGUID, serviceToken);
  }
}

- (void)IDQueryCompletedWithFromURI:(id)i idStatusUpdates:(id)updates service:(id)service success:(BOOL)success error:(id)error
{
  successCopy = success;
  v47 = *MEMORY[0x1E69E9840];
  iCopy = i;
  updatesCopy = updates;
  serviceCopy = service;
  errorCopy = error;
  context = objc_autoreleasePoolPush();
  v14 = MEMORY[0x1E696ACD0];
  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v28 = v18;
  v20 = iCopy;
  v21 = [v15 setWithObjects:{v16, v17, v28, v19, objc_opt_class(), 0}];
  v34 = 0;
  v22 = [v14 _strictlyUnarchivedObjectOfClasses:v21 fromData:updatesCopy error:&v34];
  v23 = v34;

  v24 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = @"NO";
    *buf = 138413570;
    v36 = iCopy;
    v37 = 2112;
    if (successCopy)
    {
      v25 = @"YES";
    }

    v38 = v22;
    v39 = 2112;
    v40 = serviceCopy;
    v41 = 2112;
    v42 = v25;
    v43 = 2112;
    v44 = errorCopy;
    v45 = 2112;
    v46 = v23;
    _os_log_impl(&dword_1959FF000, v24, OS_LOG_TYPE_DEFAULT, "Received IDQueryCompletedWithFromURI %@ idStatusUpdates %@ service %@ success %@ error %@ decodeError %@", buf, 0x3Eu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A4AEA0;
  block[3] = &unk_1E743EA30;
  block[4] = self;
  v33 = v22;
  v27 = v22;
  dispatch_async(queue, block);

  objc_autoreleasePoolPop(context);
}

- (void)addListenerID:(id)d forService:(id)service
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  serviceCopy = service;
  v8 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "addListener:forService:", &v18, 2u);
  }

  if (![(NSMutableDictionary *)dCopy length])
  {
    v13 = +[IDSLogging IDQuery];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    LOWORD(v18) = 0;
    v17 = "ListenerID is empty, bailing...";
LABEL_20:
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, v17, &v18, 2u);
    goto LABEL_21;
  }

  if (![serviceCopy length])
  {
    v13 = +[IDSLogging IDQuery];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    LOWORD(v18) = 0;
    v17 = "Service name is empty, bailing...";
    goto LABEL_20;
  }

  listenerIDToServicesMap = self->_listenerIDToServicesMap;
  if (!listenerIDToServicesMap)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v11 = self->_listenerIDToServicesMap;
    self->_listenerIDToServicesMap = Mutable;

    listenerIDToServicesMap = self->_listenerIDToServicesMap;
  }

  v12 = [(NSMutableDictionary *)listenerIDToServicesMap objectForKey:dCopy];
  v13 = [v12 mutableCopy];

  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  if (([v13 containsObject:serviceCopy]& 1) == 0)
  {
    [v13 addObject:serviceCopy];
    v14 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = dCopy;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "%@ -> %@", &v18, 0x16u);
    }
  }

  [(NSMutableDictionary *)self->_listenerIDToServicesMap setObject:v13 forKey:dCopy];
  v15 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = self->_listenerIDToServicesMap;
    v18 = 138412290;
    v19 = v16;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "Final map after add %@", &v18, 0xCu);
  }

LABEL_21:
}

- (BOOL)removeListenerID:(id)d forService:(id)service
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  serviceCopy = service;
  v8 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "removeListenerID:forService:", &v20, 2u);
  }

  if (![(NSMutableDictionary *)dCopy length])
  {
    v10 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      v14 = "ListenerID is empty, bailing...";
LABEL_14:
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, v14, &v20, 2u);
    }

LABEL_15:
    v15 = 0;
    goto LABEL_22;
  }

  if (![serviceCopy length])
  {
    v10 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      v14 = "Service name is empty, bailing...";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v9 = [(NSMutableDictionary *)self->_listenerIDToServicesMap objectForKey:dCopy];
  v10 = [v9 mutableCopy];

  if (v10)
  {
    [v10 removeObject:serviceCopy];
    v11 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412546;
      v21 = dCopy;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "%@ -> %@", &v20, 0x16u);
    }

    v12 = [v10 count];
    listenerIDToServicesMap = self->_listenerIDToServicesMap;
    if (v12)
    {
      [(NSMutableDictionary *)listenerIDToServicesMap setObject:v10 forKey:dCopy];
    }

    else
    {
      [(NSMutableDictionary *)listenerIDToServicesMap removeObjectForKey:dCopy];
    }
  }

  v16 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_listenerIDToServicesMap;
    v20 = 138412290;
    v21 = v17;
    _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "Final map after remove %@", &v20, 0xCu);
  }

  if (![(NSMutableDictionary *)self->_listenerIDToServicesMap count])
  {
    v18 = self->_listenerIDToServicesMap;
    self->_listenerIDToServicesMap = 0;
  }

  v15 = 1;
LABEL_22:

  return v15;
}

- (void)_disconnectFromQueryService
{
  v3 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Clearing out _connection, we're disconnecting", buf, 2u);
  }

  if (self->_connection)
  {
    v4 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Forcing a disconnect, terminating connection", v6, 2u);
    }

    xpc_connection_cancel(self->_connection);
    connection = self->_connection;
    self->_connection = 0;
  }
}

- (void)_requestCacheForService:(id)service completionBlock:(id)block
{
  v45 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  blockCopy = block;
  if ([(NSMutableDictionary *)serviceCopy length])
  {
    v8 = +[IDSLogging IDQuery];
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (blockCopy)
    {
      if (v9)
      {
        *buf = 138412290;
        v42 = serviceCopy;
        _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Cache request for service %@", buf, 0xCu);
      }

      stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
      v11 = [blockCopy copy];
      transactionIDToBlockMap = self->_transactionIDToBlockMap;
      if (!transactionIDToBlockMap)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v14 = self->_transactionIDToBlockMap;
        self->_transactionIDToBlockMap = Mutable;

        transactionIDToBlockMap = self->_transactionIDToBlockMap;
      }

      v15 = MEMORY[0x19A8BBEF0](v11);
      [(NSMutableDictionary *)transactionIDToBlockMap setObject:v15 forKey:stringGUID];

      v16 = +[IDSLogging IDQuery];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = self->_transactionIDToBlockMap;
        *buf = 138412290;
        v42 = v17;
        _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "transactionID map after ADD %@", buf, 0xCu);
      }

      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = sub_195AD7A00;
      v38[3] = &unk_1E7442400;
      v38[4] = self;
      v8 = stringGUID;
      v39 = v8;
      v18 = serviceCopy;
      v40 = v18;
      v19 = MEMORY[0x19A8BBEF0](v38);
      v20 = xpc_dictionary_create(0, 0, 0);
      v21 = v20;
      if (v20)
      {
        xpc_dictionary_set_BOOL(v20, "service-cache-request", 1);
        IMInsertNSStringsToXPCDictionary();
        IMInsertNSStringsToXPCDictionary();
        if (byte_1ED5DDF30 == 1)
        {
          xpc_dictionary_set_BOOL(v21, "is-springboard", 1);
        }

        v22 = [IDSLogging IDQuery:v8];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v42 = v18;
          v43 = 2112;
          v44 = v8;
          _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "Sending cache request for service %@ transactionID %@", buf, 0x16u);
        }

        v23 = [(_IDSIDQueryController *)self __sendMessage:v21 queue:0 reply:0 failBlock:v19 waitForReply:1];
        if (!v23)
        {
          goto LABEL_31;
        }

        v24 = v23;
        v35 = v19;
        v36 = blockCopy;
        v25 = IMGetXPCStringFromDictionary();
        v37 = IMGetXPCDictionaryFromDictionary();
        v26 = IMGetXPCStringFromDictionary();
        objc_opt_class();
        v27 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
        v28 = [(NSMutableDictionary *)self->_transactionIDToBlockMap objectForKey:v26];
        v29 = [v28 copy];

        v30 = v37;
        if (v29)
        {
          (v29)[2](v29, v37, v25, 0, v27);
        }

        if (v26)
        {
          [(NSMutableDictionary *)self->_transactionIDToBlockMap removeObjectForKey:v26];
          v31 = +[IDSLogging IDQuery];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = self->_transactionIDToBlockMap;
            *buf = 138412290;
            v42 = v32;
            _os_log_impl(&dword_1959FF000, v31, OS_LOG_TYPE_DEFAULT, "transactionID map after REMOVE %@", buf, 0xCu);
          }

          v30 = v37;
        }

        v19 = v35;
        blockCopy = v36;
      }

      else
      {
        v34 = +[IDSLogging IDQuery];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1959FF000, v34, OS_LOG_TYPE_DEFAULT, "Could not create message for cache query", buf, 2u);
        }

        v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSIDQueryControllerErrorDomain" code:-1000 userInfo:0];
        (v19)[2](v19, v25);
      }

LABEL_31:
      goto LABEL_32;
    }

    if (v9)
    {
      *buf = 134217984;
      v42 = 0;
      v33 = "No block %p, bailing...";
      goto LABEL_26;
    }
  }

  else
  {
    v8 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = serviceCopy;
      v33 = "No service %@, bailing...";
LABEL_26:
      _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, v33, buf, 0xCu);
    }
  }

LABEL_32:
}

- (void)_requestCachedStatusForDestinations:(id)destinations fromID:(id)d service:(id)service waitForReply:(BOOL)reply respectExpiry:(BOOL)expiry listenerID:(id)iD completionBlock:(id)block
{
  expiryCopy = expiry;
  replyCopy = reply;
  v57 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  dCopy = d;
  serviceCopy = service;
  iDCopy = iD;
  blockCopy = block;
  if (![serviceCopy length])
  {
    v27 = +[IDSLogging IDQuery];
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    *buf = 138412290;
    v50 = serviceCopy;
    v36 = "No service %@, bailing...";
LABEL_23:
    _os_log_impl(&dword_1959FF000, v27, OS_LOG_TYPE_DEFAULT, v36, buf, 0xCu);
    goto LABEL_31;
  }

  if (![iDCopy length])
  {
    v27 = +[IDSLogging IDQuery];
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    *buf = 138412290;
    v50 = iDCopy;
    v36 = "No listenerID %@, bailing...";
    goto LABEL_23;
  }

  if (blockCopy)
  {
    v39 = expiryCopy;
    v40 = replyCopy;
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v21 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v50 = destinationsCopy;
      v51 = 2112;
      v52 = serviceCopy;
      v53 = 2112;
      v54 = iDCopy;
      v55 = 2112;
      v56 = stringGUID;
      _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "Cached ID status request (destinations: %@)  (service: %@)  (listenerID: %@)  (transactionID: %@)", buf, 0x2Au);
    }

    v22 = [blockCopy copy];
    transactionIDToBlockMap = self->_transactionIDToBlockMap;
    if (!transactionIDToBlockMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v25 = self->_transactionIDToBlockMap;
      self->_transactionIDToBlockMap = Mutable;

      transactionIDToBlockMap = self->_transactionIDToBlockMap;
    }

    v26 = MEMORY[0x19A8BBEF0](v22);
    [(NSMutableDictionary *)transactionIDToBlockMap setObject:v26 forKey:stringGUID];

    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = sub_195AD8040;
    v45[3] = &unk_1E7442428;
    v45[4] = self;
    v27 = stringGUID;
    v46 = v27;
    v28 = serviceCopy;
    v47 = v28;
    v29 = iDCopy;
    v48 = v29;
    v41 = MEMORY[0x19A8BBEF0](v45);
    if ([destinationsCopy count])
    {
      v30 = xpc_dictionary_create(0, 0, 0);
      v31 = v30;
      if (v30)
      {
        xpc_dictionary_set_BOOL(v30, "cached-id-status-query", 1);
        IMInsertNSStringsToXPCDictionary();
        IMInsertArraysToXPCDictionary();
        IMInsertNSStringsToXPCDictionary();
        if (dCopy)
        {
          unprefixedURI = [dCopy unprefixedURI];
          IMInsertNSStringsToXPCDictionary();
        }

        if (byte_1ED5DDF30 == 1)
        {
          xpc_dictionary_set_BOOL(v31, "is-springboard", 1);
        }

        if (v39)
        {
          xpc_dictionary_set_BOOL(v31, "respect-expiry", 1);
        }

        queue = self->_queue;
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = sub_195AD8100;
        v42[3] = &unk_1E7442450;
        v42[4] = self;
        v43 = v27;
        v44 = v29;
        selfCopy = self;
        v34 = v41;
        v35 = [(_IDSIDQueryController *)selfCopy __sendMessage:v31 queue:queue reply:v42 failBlock:v41 waitForReply:v40];
      }

      else
      {
        v34 = v41;
      }
    }

    else
    {
      v37 = +[IDSLogging IDQuery];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1959FF000, v37, OS_LOG_TYPE_DEFAULT, "No destinations, not issuing query...", buf, 2u);
      }

      v34 = v41;
      if (!v41)
      {
        goto LABEL_30;
      }

      v31 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSIDQueryControllerErrorDomain" code:-2000 userInfo:0];
      (*(v41 + 16))(v41, v31);
    }

LABEL_30:
    goto LABEL_31;
  }

  v27 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v50 = 0;
    v36 = "No block %p, bailing...";
    goto LABEL_23;
  }

LABEL_31:
}

- (void)_requestStatusForDestinations:(id)destinations fromID:(id)d service:(id)service waitForReply:(BOOL)reply forceRefresh:(BOOL)refresh bypassLimit:(BOOL)limit listenerID:(id)iD completionBlock:(id)self0
{
  limitCopy = limit;
  refreshCopy = refresh;
  replyCopy = reply;
  v66 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  dCopy = d;
  serviceCopy = service;
  iDCopy = iD;
  blockCopy = block;
  if (![(NSMutableDictionary *)serviceCopy length])
  {
    v31 = +[IDSLogging IDQuery];
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 138412290;
    v59 = serviceCopy;
    v39 = "No service %@, bailing...";
LABEL_27:
    _os_log_impl(&dword_1959FF000, v31, OS_LOG_TYPE_DEFAULT, v39, buf, 0xCu);
    goto LABEL_35;
  }

  if (![(NSMutableDictionary *)iDCopy length])
  {
    v31 = +[IDSLogging IDQuery];
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 138412290;
    v59 = iDCopy;
    v39 = "No listenerID %@, bailing...";
    goto LABEL_27;
  }

  if (blockCopy)
  {
    v43 = limitCopy;
    v44 = replyCopy;
    v45 = dCopy;
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = sub_195AD8994;
    v56[3] = &unk_1E7441850;
    v21 = serviceCopy;
    v57 = v21;
    v47 = destinationsCopy;
    v22 = [destinationsCopy __imArrayByApplyingBlock:v56];
    v23 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v59 = v22;
      v60 = 2112;
      v61 = v21;
      v62 = 2112;
      v63 = iDCopy;
      v64 = 2112;
      v65 = stringGUID;
      _os_log_impl(&dword_1959FF000, v23, OS_LOG_TYPE_DEFAULT, "ID status renewal request (destinations: %@)  (service: %@)  (listenerID: %@)  (transactionID: %@)", buf, 0x2Au);
    }

    v46 = blockCopy;
    v24 = [blockCopy copy];
    transactionIDToBlockMap = self->_transactionIDToBlockMap;
    if (!transactionIDToBlockMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v27 = self->_transactionIDToBlockMap;
      self->_transactionIDToBlockMap = Mutable;

      transactionIDToBlockMap = self->_transactionIDToBlockMap;
    }

    v28 = MEMORY[0x19A8BBEF0](v24);
    [(NSMutableDictionary *)transactionIDToBlockMap setObject:v28 forKey:stringGUID];

    v29 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = self->_transactionIDToBlockMap;
      *buf = 138412290;
      v59 = v30;
      _os_log_impl(&dword_1959FF000, v29, OS_LOG_TYPE_DEFAULT, "transactionID map after ADD %@", buf, 0xCu);
    }

    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = sub_195AD89AC;
    v52[3] = &unk_1E7442428;
    v52[4] = self;
    v31 = stringGUID;
    v53 = v31;
    v32 = v21;
    v54 = v32;
    v33 = iDCopy;
    v55 = v33;
    v34 = MEMORY[0x19A8BBEF0](v52);
    if ([v47 count])
    {
      v35 = xpc_dictionary_create(0, 0, 0);
      v36 = v35;
      blockCopy = v46;
      if (v35)
      {
        xpc_dictionary_set_BOOL(v35, "id-status-query", 1);
        IMInsertNSStringsToXPCDictionary();
        IMInsertArraysToXPCDictionary();
        v41 = v32;
        IMInsertNSStringsToXPCDictionary();
        dCopy = v45;
        if (v45)
        {
          unprefixedURI = [v45 unprefixedURI];
          IMInsertNSStringsToXPCDictionary();
        }

        if (refreshCopy)
        {
          xpc_dictionary_set_BOOL(v36, "force", 1);
        }

        if (v43)
        {
          xpc_dictionary_set_BOOL(v36, "bypass-limit", 1);
        }

        if (byte_1ED5DDF30 == 1)
        {
          xpc_dictionary_set_BOOL(v36, "is-springboard", 1);
        }

        queue = self->_queue;
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = sub_195AD8A6C;
        v49[3] = &unk_1E7442450;
        v49[4] = self;
        v50 = v31;
        v51 = v33;
        v38 = [(_IDSIDQueryController *)self __sendMessage:v36 queue:queue reply:v49 failBlock:v34 waitForReply:v44];

        blockCopy = v46;
        destinationsCopy = v47;
      }

      else
      {
        destinationsCopy = v47;
        dCopy = v45;
      }
    }

    else
    {
      v40 = +[IDSLogging IDQuery];
      blockCopy = v46;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1959FF000, v40, OS_LOG_TYPE_DEFAULT, "No destinations, not issuing query...", buf, 2u);
      }

      destinationsCopy = v47;
      dCopy = v45;
      if (!v34)
      {
        goto LABEL_34;
      }

      v36 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSIDQueryControllerErrorDomain" code:-2000 userInfo:0];
      (v34)[2](v34, v36);
    }

LABEL_34:
    goto LABEL_35;
  }

  v31 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v59 = 0;
    v39 = "No block %p, bailing...";
    goto LABEL_27;
  }

LABEL_35:
}

- (void)_requestRemoteDevicesForDestination:(id)destination fromID:(id)d service:(id)service listenerID:(id)iD waitForReply:(BOOL)reply completionBlock:(id)block
{
  replyCopy = reply;
  v61 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  dCopy = d;
  serviceCopy = service;
  iDCopy = iD;
  blockCopy = block;
  if (![(NSMutableDictionary *)serviceCopy length])
  {
    v28 = +[IDSLogging IDQuery];
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *buf = 138412290;
    v54 = serviceCopy;
    v39 = "No service %@, bailing...";
LABEL_25:
    _os_log_impl(&dword_1959FF000, v28, OS_LOG_TYPE_DEFAULT, v39, buf, 0xCu);
    goto LABEL_33;
  }

  if (![(NSMutableDictionary *)iDCopy length])
  {
    v28 = +[IDSLogging IDQuery];
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *buf = 138412290;
    v54 = iDCopy;
    v39 = "No listenerID %@, bailing...";
    goto LABEL_25;
  }

  if (blockCopy)
  {
    v43 = replyCopy;
    v45 = dCopy;
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v20 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v54 = destinationCopy;
      v55 = 2112;
      v56 = serviceCopy;
      v57 = 2112;
      v58 = iDCopy;
      v59 = 2112;
      v60 = stringGUID;
      _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "ID remote device request (destination: %@)  (service: %@)  (listenerID: %@)  (transactionID: %@)", buf, 0x2Au);
    }

    v21 = [blockCopy copy];
    transactionIDToBlockMap = self->_transactionIDToBlockMap;
    if (!transactionIDToBlockMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v24 = self->_transactionIDToBlockMap;
      self->_transactionIDToBlockMap = Mutable;

      transactionIDToBlockMap = self->_transactionIDToBlockMap;
    }

    v25 = MEMORY[0x19A8BBEF0](v21);
    [(NSMutableDictionary *)transactionIDToBlockMap setObject:v25 forKey:stringGUID];

    v26 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = self->_transactionIDToBlockMap;
      *buf = 138412290;
      v54 = v27;
      _os_log_impl(&dword_1959FF000, v26, OS_LOG_TYPE_DEFAULT, "transactionID map after ADD %@", buf, 0xCu);
    }

    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = sub_195AD9308;
    v49[3] = &unk_1E7442428;
    v49[4] = self;
    v28 = stringGUID;
    v50 = v28;
    v29 = serviceCopy;
    v51 = v29;
    v30 = iDCopy;
    v52 = v30;
    v44 = MEMORY[0x19A8BBEF0](v49);
    destinationURIs = [(NSMutableDictionary *)destinationCopy destinationURIs];
    v32 = [destinationURIs count];

    if (v32)
    {
      v33 = xpc_dictionary_create(0, 0, 0);
      v34 = v33;
      if (v33)
      {
        xpc_dictionary_set_BOOL(v33, "remote-device-status-query", 1);
        IMInsertNSStringsToXPCDictionary();
        IMInsertKeyedCodableObjectsToXPCDictionary();
        v41 = v29;
        IMInsertNSStringsToXPCDictionary();
        dCopy = v45;
        if (v45)
        {
          unprefixedURI = [v45 unprefixedURI];
          IMInsertNSStringsToXPCDictionary();
        }

        if (byte_1ED5DDF30 == 1)
        {
          xpc_dictionary_set_BOOL(v34, "is-springboard", 1);
        }

        if (v43)
        {
          xpc_dictionary_set_BOOL(v34, "disallow-query", 1);
        }

        queue = self->_queue;
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = sub_195AD93C8;
        v46[3] = &unk_1E7442450;
        v46[4] = self;
        v47 = v28;
        v48 = v30;
        v36 = queue;
        v37 = v44;
        v38 = [(_IDSIDQueryController *)self __sendMessage:v34 queue:v36 reply:v46 failBlock:v44 waitForReply:v43];
      }

      else
      {
        v37 = v44;
        dCopy = v45;
      }
    }

    else
    {
      v40 = +[IDSLogging IDQuery];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1959FF000, v40, OS_LOG_TYPE_DEFAULT, "No destinations, not issuing query...", buf, 2u);
      }

      v37 = v44;
      dCopy = v45;
      if (!v44)
      {
        goto LABEL_32;
      }

      v34 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSIDQueryControllerErrorDomain" code:-2000 userInfo:0];
      (*(v44 + 16))(v44, v34);
    }

LABEL_32:
    goto LABEL_33;
  }

  v28 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v54 = 0;
    v39 = "No block %p, bailing...";
    goto LABEL_25;
  }

LABEL_33:
}

- (void)_requestIDInfoForDestinations:(id)destinations fromID:(id)d service:(id)service infoTypes:(unint64_t)types options:(id)options listenerID:(id)iD queue:(id)queue completionBlock:(id)self0
{
  v62 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  dCopy = d;
  serviceCopy = service;
  optionsCopy = options;
  iDCopy = iD;
  blockCopy = block;
  if (![(NSMutableDictionary *)serviceCopy length])
  {
    v30 = +[IDSLogging IDQuery];
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    *buf = 138412290;
    v55 = serviceCopy;
    v41 = "No service %@, bailing...";
LABEL_23:
    _os_log_impl(&dword_1959FF000, v30, OS_LOG_TYPE_DEFAULT, v41, buf, 0xCu);
    goto LABEL_31;
  }

  if (![(NSMutableDictionary *)iDCopy length])
  {
    v30 = +[IDSLogging IDQuery];
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    *buf = 138412290;
    v55 = iDCopy;
    v41 = "No listenerID %@, bailing...";
    goto LABEL_23;
  }

  if (blockCopy)
  {
    v45 = dCopy;
    v46 = optionsCopy;
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v22 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v55 = destinationsCopy;
      v56 = 2112;
      v57 = serviceCopy;
      v58 = 2112;
      v59 = iDCopy;
      v60 = 2112;
      v61 = stringGUID;
      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "ID remote device request (destination: %@)  (service: %@)  (listenerID: %@)  (transactionID: %@)", buf, 0x2Au);
    }

    v23 = [blockCopy copy];
    transactionIDToBlockMap = self->_transactionIDToBlockMap;
    if (!transactionIDToBlockMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v26 = self->_transactionIDToBlockMap;
      self->_transactionIDToBlockMap = Mutable;

      transactionIDToBlockMap = self->_transactionIDToBlockMap;
    }

    v27 = MEMORY[0x19A8BBEF0](v23);
    [(NSMutableDictionary *)transactionIDToBlockMap setObject:v27 forKey:stringGUID];

    v28 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = self->_transactionIDToBlockMap;
      *buf = 138412290;
      v55 = v29;
      _os_log_impl(&dword_1959FF000, v28, OS_LOG_TYPE_DEFAULT, "transactionID map after ADD %@", buf, 0xCu);
    }

    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = sub_195AD9CA0;
    v50[3] = &unk_1E7442428;
    v50[4] = self;
    v30 = stringGUID;
    v51 = v30;
    v52 = serviceCopy;
    v31 = iDCopy;
    v53 = v31;
    v44 = MEMORY[0x19A8BBEF0](v50);
    destinationURIs = [(NSMutableDictionary *)destinationsCopy destinationURIs];
    v33 = [destinationURIs count];

    if (v33)
    {
      v34 = xpc_dictionary_create(0, 0, 0);
      v35 = v34;
      if (v34)
      {
        xpc_dictionary_set_BOOL(v34, "id-status-info-query", 1);
        IMInsertNSStringsToXPCDictionary();
        IMInsertKeyedCodableObjectsToXPCDictionary();
        IMInsertNSStringsToXPCDictionary();
        IMInsertIntsToXPCDictionary();
        IMInsertKeyedCodableObjectsToXPCDictionary();
        dCopy = v45;
        if (v45)
        {
          unprefixedURI = [v45 unprefixedURI];
          IMInsertNSStringsToXPCDictionary();
        }

        if (byte_1ED5DDF30 == 1)
        {
          xpc_dictionary_set_BOOL(v35, "is-springboard", 1);
        }

        queue = self->_queue;
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = sub_195AD9D60;
        v47[3] = &unk_1E7442450;
        v47[4] = self;
        v48 = v30;
        v49 = v31;
        waitForReply = [v46 waitForReply];
        queueCopy = queue;
        optionsCopy = v46;
        v39 = v44;
        v40 = [(_IDSIDQueryController *)self __sendMessage:v35 queue:queueCopy reply:v47 failBlock:v44 waitForReply:waitForReply];
      }

      else
      {
        dCopy = v45;
        optionsCopy = v46;
        v39 = v44;
      }
    }

    else
    {
      v42 = +[IDSLogging IDQuery];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1959FF000, v42, OS_LOG_TYPE_DEFAULT, "No destinations, not issuing query...", buf, 2u);
      }

      dCopy = v45;
      optionsCopy = v46;
      v39 = v44;
      if (!v44)
      {
        goto LABEL_30;
      }

      v35 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSIDQueryControllerErrorDomain" code:-2000 userInfo:0];
      (*(v44 + 16))(v44, v35);
    }

LABEL_30:
    goto LABEL_31;
  }

  v30 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v55 = 0;
    v41 = "No block %p, bailing...";
    goto LABEL_23;
  }

LABEL_31:
}

- (id)__sendMessage:(id)message queue:(id)queue reply:(id)reply failBlock:(id)block waitForReply:(BOOL)forReply
{
  v37 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  queueCopy = queue;
  replyCopy = reply;
  blockCopy = block;
  if (messageCopy)
  {
    if (!queueCopy)
    {
      queueCopy = dispatch_get_global_queue(0, 0);
    }

    connection = self->_connection;
    if (connection)
    {
      v17 = connection;
    }

    else
    {
      v19 = [objc_opt_class() _createXPCConnectionOnQueue:self->_connectionQueue];
      v20 = self->_connection;
      self->_connection = v19;

      v21 = self->_connection;
      if (!v21)
      {
        v24 = +[IDSLogging IDQuery];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1959FF000, v24, OS_LOG_TYPE_DEFAULT, "No connection to send message on", buf, 2u);
        }

        v17 = 0;
        v18 = 0;
        goto LABEL_16;
      }

      v17 = v21;
      v30 = MEMORY[0x1E69E9820];
      v31 = 3221225472;
      v32 = sub_195ADA39C;
      v33 = &unk_1E743E878;
      selfCopy = self;
      IMXPCConfigureConnection();
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_195ADA490;
    v27[3] = &unk_1E7442478;
    v28 = blockCopy;
    v29 = replyCopy;
    v22 = MEMORY[0x19A8BBEF0](v27);
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    IMInsertNSStringsToXPCDictionary();

    if (forReply)
    {
      v18 = xpc_connection_send_message_with_reply_sync(v17, messageCopy);
      if (v22)
      {
        (v22)[2](v22, v18);
      }
    }

    else
    {
      xpc_connection_send_message_with_reply(v17, messageCopy, queueCopy, v22);
      v18 = 0;
    }

    v24 = v28;
LABEL_16:

    goto LABEL_17;
  }

  v17 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = 0;
    _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "No message to send %@, ignoring...", buf, 0xCu);
  }

  v18 = 0;
LABEL_17:

  return v18;
}

+ (id)_createXPCConnectionOnQueue:(id)queue
{
  v3 = *MEMORY[0x1E69A5440];
  queueCopy = queue;
  [v3 UTF8String];
  v5 = IMXPCCreateConnectionForServiceWithQueue();

  return v5;
}

- (_IDSIDQueryController)initWithDelegateContext:(id)context queueController:(id)controller
{
  controllerCopy = controller;
  v6 = [(_IDSIDQueryController *)self init];
  if (v6)
  {
    v7 = [MEMORY[0x1E6995700] weakRefWithObject:v6->_delegateContext];
    delegateContext = v6->_delegateContext;
    v6->_delegateContext = v7;

    connection = v6->_connection;
    v6->_connection = 0;

    queue = [controllerCopy queue];
    queue = v6->_queue;
    v6->_queue = queue;

    if (!v6->_queue)
    {
      v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = dispatch_queue_create("_IDSIDQueryControllerQueue", v12);
      v14 = v6->_queue;
      v6->_queue = v13;
    }

    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    serviceToken = v6->_serviceToken;
    v6->_serviceToken = stringGUID;

    stringGUID2 = [MEMORY[0x1E696AEC0] stringGUID];
    listenerGUID = v6->_listenerGUID;
    v6->_listenerGUID = stringGUID2;
  }

  return v6;
}

- (void)dealloc
{
  [(_IDSIDQueryController *)self ___oldDealloc];
  [(_IDSIDQueryController *)self _disconnectFromQueryService];
  v3 = +[IDSDaemonController sharedInstance];
  [v3 removeListenerID:self->_listenerGUID];

  v4.receiver = self;
  v4.super_class = _IDSIDQueryController;
  [(_IDSIDQueryController *)&v4 dealloc];
}

- (void)setFromID:(id)d
{
  v3 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "This has been deprecated, please adopt the preferredFromID query APIs", v4, 2u);
  }
}

- (id)_cachedStatusForDestination:(id)destination service:(id)service
{
  destinationCopy = destination;
  serviceCopy = service;
  if (self->_idStatusCache && [destinationCopy length] && objc_msgSend(serviceCopy, "length"))
  {
    v8 = [(_IDSIDQueryController *)self _cacheForService:serviceCopy];
    v9 = [v8 objectForKey:destinationCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_updateCacheWithDictionary:(id)dictionary service:(id)service
{
  dictionaryCopy = dictionary;
  serviceCopy = service;
  if (!self->_idStatusCache)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    idStatusCache = self->_idStatusCache;
    self->_idStatusCache = Mutable;

    [(_IDSIDQueryController *)self _purgeIDStatusCacheAfter:5.0];
  }

  if ([dictionaryCopy count])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_195AE6E9C;
    v12[3] = &unk_1E743FD20;
    v12[4] = self;
    [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v12];
  }

  else if ([serviceCopy length])
  {
    v10 = self->_idStatusCache;
    dictionary = [MEMORY[0x1E695DF20] dictionary];
    [(NSMutableDictionary *)v10 setObject:dictionary forKey:serviceCopy];
  }
}

- (void)_purgeIDStatusCacheAfter:(double)after
{
  objc_initWeak(&location, self->_idStatusCache);
  v5 = dispatch_time(0, (after * 1000000000.0));
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195AE7034;
  block[3] = &unk_1E743EDC8;
  objc_copyWeak(&v8, &location);
  block[4] = self;
  dispatch_after(v5, queue, block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_callDelegatesWithBlock:(id)block delegateMap:(id)map
{
  v23 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  mapCopy = map;
  v7 = mapCopy;
  if (blockCopy)
  {
    if (mapCopy)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = [mapCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v18 + 1) + 8 * i);
            v13 = [v7 objectForKey:v12];
            queue = [v13 queue];
            if (queue)
            {
              v16[0] = MEMORY[0x1E69E9820];
              v16[1] = 3221225472;
              v16[2] = sub_195AE7288;
              v16[3] = &unk_1E743F110;
              v15 = blockCopy;
              v16[4] = v12;
              v17 = v15;
              dispatch_async(queue, v16);
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v9);
      }
    }
  }
}

- (id)_delegateMapForListenerID:(id)d service:(id)service
{
  dCopy = d;
  serviceCopy = service;
  v8 = serviceCopy;
  if (dCopy && [serviceCopy length])
  {
    v9 = [(NSMutableDictionary *)self->_listeners objectForKey:dCopy];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 objectForKey:v8];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_callDelegatesForService:(id)service destinationToVerifierResult:(id)result
{
  v22 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  resultCopy = result;
  if ([serviceCopy length] && objc_msgSend(resultCopy, "count"))
  {
    allValues = [(NSMutableDictionary *)self->_listeners allValues];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(allValues);
          }

          v13 = [*(*(&v17 + 1) + 8 * v12) objectForKey:serviceCopy];
          if (v13)
          {
            v14[0] = MEMORY[0x1E69E9820];
            v14[1] = 3221225472;
            v14[2] = sub_195AE7510;
            v14[3] = &unk_1E74428E0;
            v15 = serviceCopy;
            v16 = resultCopy;
            [(_IDSIDQueryController *)self _callDelegatesWithBlock:v14 delegateMap:v13];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }
}

- (void)_setCurrentIDStatus:(int64_t)status forDestination:(id)destination service:(id)service
{
  statusCopy = status;
  v20 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  serviceCopy = service;
  if ([destinationCopy length] && objc_msgSend(serviceCopy, "length"))
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    v11 = v10;
    if (v10)
    {
      xpc_dictionary_set_BOOL(v10, "set-id-status", 1);
      IMInsertIntsToXPCDictionary();
      IMInsertNSStringsToXPCDictionary();
      IMInsertNSStringsToXPCDictionary();
      v12 = [IDSLogging IDQuery:destinationCopy];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        v15 = statusCopy;
        v16 = 2112;
        v17 = serviceCopy;
        v18 = 2112;
        v19 = destinationCopy;
        _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "Sending ID status update (%d) for service %@ destination %@", buf, 0x1Cu);
      }

      v13 = [(_IDSIDQueryController *)self __sendMessage:v11 queue:0 reply:0 failBlock:0 waitForReply:0];
    }
  }
}

- (void)flushQueryCache
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    xpc_dictionary_set_BOOL(v3, "flush-query-cache", 1);
    v5 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "Sending query cache flush", v7, 2u);
    }

    v6 = [(_IDSIDQueryController *)self __sendMessage:v4 queue:0 reply:0 failBlock:0 waitForReply:0];
  }
}

- (void)_idStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD allowRenew:(BOOL)renew respectExpiry:(BOOL)expiry waitForReply:(BOOL)reply forceRefresh:(BOOL)self0 bypassLimit:(BOOL)self1 completionBlock:(id)self2
{
  expiryCopy = expiry;
  v57 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  blockCopy = block;
  if (![destinationsCopy count])
  {
    v23 = +[IDSLogging IDQuery];
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *buf = 0;
    v33 = "No destinations, bailing...";
LABEL_25:
    _os_log_impl(&dword_1959FF000, v23, OS_LOG_TYPE_DEFAULT, v33, buf, 2u);
    goto LABEL_26;
  }

  if (![serviceCopy length])
  {
    v23 = +[IDSLogging IDQuery];
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *buf = 0;
    v33 = "No service, bailing...";
    goto LABEL_25;
  }

  if (![iDCopy length])
  {
    v23 = +[IDSLogging IDQuery];
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *buf = 0;
    v33 = "No listenerID, bailing...";
    goto LABEL_25;
  }

  if (!blockCopy)
  {
    v23 = +[IDSLogging IDQuery];
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *buf = 0;
    v33 = "No query complete block, bailing...";
    goto LABEL_25;
  }

  v23 = [(_IDSIDQueryController *)self _cacheForService:serviceCopy];
  if (!v23 || renew)
  {
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = sub_195AE7CE8;
    v47[3] = &unk_1E7442908;
    v47[4] = self;
    v42 = serviceCopy;
    v48 = v42;
    v39 = iDCopy;
    v49 = v39;
    v50 = blockCopy;
    v34 = MEMORY[0x19A8BBEF0](v47);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = sub_195AE8278;
    v44[3] = &unk_1E7442930;
    replyCopy = reply;
    v44[4] = self;
    v45 = v34;
    v37 = v34;
    v35 = MEMORY[0x19A8BBEF0](v44);
    v36 = v35;
    if (renew || refresh)
    {
      [(_IDSIDQueryController *)self _requestStatusForDestinations:destinationsCopy fromID:dCopy service:v42 waitForReply:reply forceRefresh:refresh bypassLimit:limit listenerID:v39 completionBlock:v35];
    }

    else
    {
      [(_IDSIDQueryController *)self _requestCachedStatusForDestinations:destinationsCopy fromID:dCopy service:v42 waitForReply:reply respectExpiry:expiryCopy listenerID:v39 completionBlock:v35];
    }
  }

  else
  {
    v38 = blockCopy;
    v40 = iDCopy;
    v41 = dCopy;
    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v43 = destinationsCopy;
    v25 = destinationsCopy;
    v26 = [v25 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v52;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v52 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v51 + 1) + 8 * i);
          v31 = [(_IDSIDQueryController *)self _cachedStatusForDestination:v30 service:serviceCopy];
          if (v31)
          {
            [v24 setObject:v31 forKey:v30];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v27);
    }

    v32 = [objc_alloc(MEMORY[0x1E69956E8]) initWithSuccess:v24];
    blockCopy = v38;
    v38[2](v38, v32);

    dCopy = v41;
    destinationsCopy = v43;
    iDCopy = v40;
  }

LABEL_26:
}

- (BOOL)_refreshIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD allowRefresh:(BOOL)refresh respectExpiry:(BOOL)expiry waitForReply:(BOOL)reply forceRefresh:(BOOL)self0 bypassLimit:(BOOL)self1 queue:(id)self2 completionBlock:(id)self3
{
  expiryCopy = expiry;
  refreshCopy = refresh;
  destinationsCopy = destinations;
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  queueCopy = queue;
  blockCopy = block;
  if (!blockCopy)
  {
    v25 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v26 = "No completion block, bailing...";
      goto LABEL_15;
    }

LABEL_16:
    v34 = 0;
    goto LABEL_17;
  }

  if (!queueCopy && !reply)
  {
    v25 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v26 = "No queue, bailing...";
LABEL_15:
      _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 2u);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (![iDCopy length])
  {
    v25 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v26 = "No listener ID, bailing...";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (![destinationsCopy count])
  {
    v25 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v26 = "No destinations, bailing...";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_195AE8690;
  v37[3] = &unk_1E7442958;
  replyCopy = reply;
  v39 = blockCopy;
  v38 = queueCopy;
  v27 = MEMORY[0x19A8BBEF0](v37);
  v28 = expiryCopy;
  v29 = iDCopy;
  v30 = destinationsCopy;
  v31 = dCopy;
  v32 = serviceCopy;
  v33 = v27;
  *(&v36 + 1) = __PAIR16__(limit, forceRefresh);
  LOBYTE(v36) = reply;
  [_IDSIDQueryController _idStatusForDestinations:"_idStatusForDestinations:service:preferredFromID:listenerID:allowRenew:respectExpiry:waitForReply:forceRefresh:bypassLimit:completionBlock:" service:v30 preferredFromID:v32 listenerID:v31 allowRenew:v29 respectExpiry:refreshCopy waitForReply:v28 forceRefresh:v36 bypassLimit:v27 completionBlock:?];

  serviceCopy = v32;
  dCopy = v31;
  destinationsCopy = v30;
  iDCopy = v29;

  v34 = 1;
  v25 = v39;
LABEL_17:

  return v34;
}

- (BOOL)_sync_refreshIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD completionBlock:(id)block
{
  BYTE2(v8) = 0;
  LOWORD(v8) = 1;
  return [_IDSIDQueryController _refreshIDStatusForDestinations:"_refreshIDStatusForDestinations:service:preferredFromID:listenerID:allowRefresh:respectExpiry:waitForReply:forceRefresh:bypassLimit:queue:completionBlock:" service:destinations preferredFromID:service listenerID:d allowRefresh:iD respectExpiry:1 waitForReply:1 forceRefresh:v8 bypassLimit:0 queue:block completionBlock:?];
}

- (BOOL)_sync_currentIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d respectExpiry:(BOOL)expiry listenerID:(id)iD completionBlock:(id)block
{
  expiryCopy = expiry;
  blockCopy = block;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_195AE889C;
  v18[3] = &unk_1E7440DC0;
  v19 = blockCopy;
  v15 = blockCopy;
  BYTE2(v17) = 0;
  LOWORD(v17) = 1;
  LOBYTE(iD) = [_IDSIDQueryController _refreshIDStatusForDestinations:"_refreshIDStatusForDestinations:service:preferredFromID:listenerID:allowRefresh:respectExpiry:waitForReply:forceRefresh:bypassLimit:queue:completionBlock:" service:destinations preferredFromID:service listenerID:d allowRefresh:iD respectExpiry:0 waitForReply:expiryCopy forceRefresh:v17 bypassLimit:0 queue:v18 completionBlock:?];

  return iD;
}

- (BOOL)refreshIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD forceRefresh:(BOOL)refresh queue:(id)queue completionBlock:(id)block
{
  BYTE2(v10) = 0;
  BYTE1(v10) = refresh;
  LOBYTE(v10) = 0;
  return [_IDSIDQueryController _refreshIDStatusForDestinations:"_refreshIDStatusForDestinations:service:preferredFromID:listenerID:allowRefresh:respectExpiry:waitForReply:forceRefresh:bypassLimit:queue:completionBlock:" service:destinations preferredFromID:service listenerID:d allowRefresh:iD respectExpiry:1 waitForReply:1 forceRefresh:v10 bypassLimit:queue queue:block completionBlock:?];
}

- (BOOL)refreshIDStatusForDestination:(id)destination service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block
{
  destinationCopy = destination;
  serviceCopy = service;
  blockCopy = block;
  queueCopy = queue;
  iDCopy = iD;
  dCopy = d;
  v20 = IMSingleObjectArray();
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_195AE8B00;
  v25[3] = &unk_1E7442980;
  v27 = serviceCopy;
  v28 = blockCopy;
  v26 = destinationCopy;
  v21 = serviceCopy;
  v22 = destinationCopy;
  v23 = blockCopy;
  LOBYTE(self) = [(_IDSIDQueryController *)self refreshIDStatusForDestinations:v20 service:v21 preferredFromID:dCopy listenerID:iDCopy forceRefresh:0 queue:queueCopy completionBlock:v25];

  return self;
}

- (BOOL)requiredIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block
{
  BYTE2(v9) = 1;
  LOWORD(v9) = 0;
  return [_IDSIDQueryController _refreshIDStatusForDestinations:"_refreshIDStatusForDestinations:service:preferredFromID:listenerID:allowRefresh:respectExpiry:waitForReply:forceRefresh:bypassLimit:queue:completionBlock:" service:destinations preferredFromID:service listenerID:d allowRefresh:iD respectExpiry:1 waitForReply:1 forceRefresh:v9 bypassLimit:queue queue:block completionBlock:?];
}

- (BOOL)requiredIDStatusForDestination:(id)destination service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block
{
  destinationCopy = destination;
  blockCopy = block;
  queueCopy = queue;
  iDCopy = iD;
  dCopy = d;
  serviceCopy = service;
  v20 = IMSingleObjectArray();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_195AE8DE8;
  v24[3] = &unk_1E74429A8;
  v25 = destinationCopy;
  v26 = blockCopy;
  v21 = destinationCopy;
  v22 = blockCopy;
  LOBYTE(self) = [(_IDSIDQueryController *)self requiredIDStatusForDestinations:v20 service:serviceCopy preferredFromID:dCopy listenerID:iDCopy queue:queueCopy completionBlock:v24];

  return self;
}

- (BOOL)currentIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d respectExpiry:(BOOL)expiry listenerID:(id)iD queue:(id)queue completionBlock:(id)block
{
  expiryCopy = expiry;
  blockCopy = block;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_195AE8FC8;
  v20[3] = &unk_1E7440DC0;
  v21 = blockCopy;
  v17 = blockCopy;
  BYTE2(v19) = 0;
  LOWORD(v19) = 0;
  LOBYTE(queue) = [_IDSIDQueryController _refreshIDStatusForDestinations:"_refreshIDStatusForDestinations:service:preferredFromID:listenerID:allowRefresh:respectExpiry:waitForReply:forceRefresh:bypassLimit:queue:completionBlock:" service:destinations preferredFromID:service listenerID:d allowRefresh:iD respectExpiry:0 waitForReply:expiryCopy forceRefresh:v19 bypassLimit:queue queue:v20 completionBlock:?];

  return queue;
}

- (BOOL)currentIDStatusForDestination:(id)destination service:(id)service preferredFromID:(id)d respectExpiry:(BOOL)expiry listenerID:(id)iD queue:(id)queue completionBlock:(id)block
{
  expiryCopy = expiry;
  destinationCopy = destination;
  blockCopy = block;
  queueCopy = queue;
  iDCopy = iD;
  dCopy = d;
  serviceCopy = service;
  v21 = IMSingleObjectArray();
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_195AE91B4;
  v25[3] = &unk_1E74429D0;
  v26 = destinationCopy;
  v27 = blockCopy;
  v22 = destinationCopy;
  v23 = blockCopy;
  LOBYTE(expiryCopy) = [(_IDSIDQueryController *)self currentIDStatusForDestinations:v21 service:serviceCopy preferredFromID:dCopy respectExpiry:expiryCopy listenerID:iDCopy queue:queueCopy completionBlock:v25];

  return expiryCopy;
}

- (BOOL)_currentRemoteDevicesForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue waitForReply:(BOOL)reply completionBlock:(id)block completionBlockWithError:(id)self0
{
  replyCopy = reply;
  iDCopy = iD;
  queueCopy = queue;
  blockCopy = block;
  errorCopy = error;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_195AE945C;
  v37[3] = &unk_1E7442A20;
  v37[4] = self;
  v38 = iDCopy;
  v40 = blockCopy;
  v41 = errorCopy;
  v42 = replyCopy;
  v39 = queueCopy;
  v33 = queueCopy;
  v32 = errorCopy;
  v31 = blockCopy;
  v20 = iDCopy;
  dCopy = d;
  serviceCopy = service;
  destinationsCopy = destinations;
  v24 = MEMORY[0x19A8BBEF0](v37);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = sub_195AE9AC8;
  v34[3] = &unk_1E7442930;
  v36 = replyCopy;
  v34[4] = self;
  v35 = v24;
  v25 = v24;
  v26 = MEMORY[0x19A8BBEF0](v34);
  v27 = MEMORY[0x1E69A5240];
  v28 = [MEMORY[0x1E695DFD8] setWithArray:destinationsCopy];

  v29 = [v27 destinationWithDestinations:v28];

  [(_IDSIDQueryController *)self _requestRemoteDevicesForDestination:v29 fromID:dCopy service:serviceCopy listenerID:v20 waitForReply:replyCopy completionBlock:v26];
  return 1;
}

- (BOOL)idInfoForDestinations:(id)destinations service:(id)service preferredFromID:(id)d infoTypes:(unint64_t)types options:(id)options listenerID:(id)iD queue:(id)queue completionBlock:(id)self0
{
  optionsCopy = options;
  iDCopy = iD;
  queueCopy = queue;
  blockCopy = block;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_195AE9E40;
  v32[3] = &unk_1E7442A98;
  v32[4] = self;
  v33 = iDCopy;
  v35 = queueCopy;
  v36 = blockCopy;
  v34 = optionsCopy;
  v19 = queueCopy;
  v20 = optionsCopy;
  v30 = blockCopy;
  v21 = iDCopy;
  dCopy = d;
  serviceCopy = service;
  destinationsCopy = destinations;
  v25 = MEMORY[0x19A8BBEF0](v32);
  v26 = MEMORY[0x1E69A5240];
  v27 = [MEMORY[0x1E695DFD8] setWithArray:destinationsCopy];

  v28 = [v26 destinationWithDestinations:v27];

  [(_IDSIDQueryController *)self _requestIDInfoForDestinations:v28 fromID:dCopy service:serviceCopy infoTypes:types options:v20 listenerID:v21 queue:v19 completionBlock:v25];
  return 1;
}

- (int64_t)_currentCachedIDStatusForDestination:(id)destination service:(id)service listenerID:(id)d
{
  v5 = [(_IDSIDQueryController *)self _cachedStatusForDestination:destination service:service, d];
  integerValue = [v5 integerValue];

  return integerValue;
}

- (BOOL)_warmupQueryCacheForService:(id)service
{
  v13 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v5 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = serviceCopy;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "_warmupQueryCacheForService:  (service: %@)", buf, 0xCu);
  }

  v6 = [serviceCopy length];
  if (v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_195AEA5F8;
    v9[3] = &unk_1E7442AC0;
    v9[4] = self;
    v10 = serviceCopy;
    [(_IDSIDQueryController *)self _requestCacheForService:v10 completionBlock:v9];
  }

  else
  {
    v7 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "No service name, bailing...", buf, 2u);
    }
  }

  return v6 != 0;
}

- (BOOL)_flushQueryCacheForService:(id)service
{
  v11 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v5 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = serviceCopy;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "_flushQueryCacheForService:  (service: %@)", &v9, 0xCu);
  }

  v6 = [serviceCopy length];
  if (v6)
  {
    p_super = &self->_idStatusCache->super.super;
    self->_idStatusCache = 0;
  }

  else
  {
    p_super = +[IDSLogging IDQuery];
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1959FF000, p_super, OS_LOG_TYPE_DEFAULT, "No service name, bailing...", &v9, 2u);
    }
  }

  return v6 != 0;
}

- (void)addDelegate:(id)delegate forService:(id)service listenerID:(id)d queue:(id)queue
{
  v47 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  serviceCopy = service;
  dCopy = d;
  queueCopy = queue;
  v14 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    v40 = delegateCopy;
    v41 = 2112;
    v42 = serviceCopy;
    v43 = 2112;
    v44 = dCopy;
    v45 = 2048;
    v46 = queueCopy;
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "addDelegate:forService:listenerID:queue:  (delegate: %p)   (service: %@)   (listenerID: %@)   (queue: %p)", buf, 0x2Au);
  }

  if (delegateCopy && queueCopy && [serviceCopy length] && objc_msgSend(dCopy, "length"))
  {
    listeners = self->_listeners;
    if (!listeners)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v17 = self->_listeners;
      self->_listeners = Mutable;

      listeners = self->_listeners;
    }

    v18 = [(NSMutableDictionary *)listeners objectForKey:dCopy];
    v19 = [v18 mutableCopy];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v22 = v21;

    v23 = [v22 objectForKey:serviceCopy];
    v24 = v23;
    if (v23)
    {
      weakToStrongObjectsMapTable = v23;
    }

    else
    {
      weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    }

    v26 = weakToStrongObjectsMapTable;

    v27 = [v26 objectForKey:delegateCopy];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = objc_alloc_init(MEMORY[0x1E69A5228]);
    }

    v30 = v29;

    [v30 setQueue:queueCopy];
    [v26 setObject:v30 forKey:delegateCopy];
    [v22 setObject:v26 forKey:serviceCopy];
    [(NSMutableDictionary *)self->_listeners setObject:v22 forKey:dCopy];
    v31 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      allKeys = [(NSMutableDictionary *)self->_listeners allKeys];
      *buf = 138412290;
      v40 = allKeys;
      _os_log_impl(&dword_1959FF000, v31, OS_LOG_TYPE_DEFAULT, "Listeners after ADD %@", buf, 0xCu);
    }

    if (objc_opt_respondsToSelector())
    {
      v38 = v30;
      v33 = +[IDSDaemonController sharedInstance];
      listenerGUID = self->_listenerGUID;
      v35 = [MEMORY[0x1E695DFD8] setWithObject:serviceCopy];
      [v33 addListenerID:listenerGUID services:v35];

      v36 = +[IDSLogging IDQuery];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = self->_listenerGUID;
        *buf = 138412290;
        v40 = v37;
        _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_DEFAULT, "Adding listener for KT Peer Verification Results notification: %@", buf, 0xCu);
      }

      v30 = v38;
    }
  }

  else
  {
    v22 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "Invalid add delegate params -- bailing...", buf, 2u);
    }
  }
}

- (void)removeDelegate:(id)delegate forService:(id)service listenerID:(id)d
{
  v25 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  serviceCopy = service;
  dCopy = d;
  v11 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134218498;
    v20 = delegateCopy;
    v21 = 2112;
    v22 = serviceCopy;
    v23 = 2112;
    v24 = dCopy;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "removeDelegate:forService:listenerID:  (delegate: %p)   (service: %@)   (listenerID: %@)", &v19, 0x20u);
  }

  if (delegateCopy && [serviceCopy length] && objc_msgSend(dCopy, "length"))
  {
    v12 = [(NSMutableDictionary *)self->_listeners objectForKey:dCopy];
    v13 = [v12 mutableCopy];

    v14 = [v13 objectForKey:serviceCopy];
    v15 = v14;
    if (v13 && v14)
    {
      [v14 removeObjectForKey:delegateCopy];
      if (![v15 count])
      {
        [v13 removeObjectForKey:serviceCopy];
      }

      if (![v13 count])
      {
        [(NSMutableDictionary *)self->_listeners removeObjectForKey:dCopy];
      }

      if (![(NSMutableDictionary *)self->_listeners count])
      {
        listeners = self->_listeners;
        self->_listeners = 0;
      }

      v17 = +[IDSLogging IDQuery];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        allKeys = [(NSMutableDictionary *)self->_listeners allKeys];
        v19 = 138412290;
        v20 = allKeys;
        _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "Listeners after REMOVE %@", &v19, 0xCu);
      }
    }
  }

  else
  {
    v13 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "Invalid remove delegate params -- bailing...", &v19, 2u);
    }
  }
}

@end