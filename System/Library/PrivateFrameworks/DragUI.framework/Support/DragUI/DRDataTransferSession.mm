@interface DRDataTransferSession
+ (BOOL)_shouldRestrictOpenInPlaceFor:(id)for destinationAuditToken:(id *)token;
- (BOOL)_isRepresentationAllowed:(id)allowed forDestination:(id)destination;
- (BOOL)setDestinationAuditToken:(id *)token;
- (DRDataTransferSession)initWithSourceItemCollection:(id)collection sourceAuditToken:(id *)token dataProviderEndpoint:(id)endpoint filter:(id)filter;
- (DRDataTransferSessionDelegate)delegate;
- (PBItemCollection)destinationItemCollection;
- (id)_copyItemCollectionForDestinationWithFilter:(id)filter;
- (id)_registerRequestFromSourceItem:(id)item typeIdentifier:(id)identifier completionHandler:(id)handler;
- (id)destinationDataProviderEndpoint;
- (void)_setupItem:(id)item forLoadingFromSourceItem:(id)sourceItem destination:(id)destination;
- (void)_transferQueue_scheduleNextTransfer;
- (void)_transferQueue_sendDelegateCallbacksIfNeeded;
- (void)clearDestinationAuditToken;
- (void)dataTransferMonitorBeganTransfers:(id)transfers;
- (void)dataTransferMonitorFinishedTransfers:(id)transfers;
- (void)setDataProviderEndpoint:(id)endpoint auditToken:(id *)token;
- (void)setDestinationIsAnotherDevice:(BOOL)device;
- (void)setSourceItemCollection:(id)collection;
- (void)startSendingDelegateCallbacks;
@end

@implementation DRDataTransferSession

- (DRDataTransferSession)initWithSourceItemCollection:(id)collection sourceAuditToken:(id *)token dataProviderEndpoint:(id)endpoint filter:(id)filter
{
  collectionCopy = collection;
  endpointCopy = endpoint;
  filterCopy = filter;
  v30.receiver = self;
  v30.super_class = DRDataTransferSession;
  v14 = [(DRDataTransferSession *)&v30 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sourceItemCollection, collection);
    [(PBItemCollection *)v15->_sourceItemCollection setDataProviderEndpoint:endpointCopy];
    objc_msgSend_establishConnectionToDataProviderCompletionBlock_(v15->_sourceItemCollection);
    v16 = [DRProcessInfo alloc];
    v17 = *&token->var0[4];
    v29[0] = *token->var0;
    v29[1] = v17;
    v18 = [(DRProcessInfo *)v16 initWithAuditToken:v29];
    sourceProcessInfo = v15->_sourceProcessInfo;
    v15->_sourceProcessInfo = v18;

    sub_10000F97C(v15->_sourceItemCollection, v15->_sourceProcessInfo);
    v20 = objc_alloc_init(PBDataTransferMonitor);
    dataTransferMonitor = v15->_dataTransferMonitor;
    v15->_dataTransferMonitor = v20;

    [(PBDataTransferMonitor *)v15->_dataTransferMonitor setDelegate:v15];
    v22 = +[NSMutableArray array];
    transferQueue_requestsQueue = v15->_transferQueue_requestsQueue;
    v15->_transferQueue_requestsQueue = v22;

    v24 = +[NSMutableArray array];
    transferQueue_requestsInProgress = v15->_transferQueue_requestsInProgress;
    v15->_transferQueue_requestsInProgress = v24;

    v26 = objc_retainBlock(filterCopy);
    filter = v15->_filter;
    v15->_filter = v26;
  }

  return v15;
}

- (void)setSourceItemCollection:(id)collection
{
  objc_storeStrong(&self->_sourceItemCollection, collection);
  collectionCopy = collection;
  sub_10000F97C(self->_sourceItemCollection, self->_sourceProcessInfo);
  destinationItemCollection = self->_destinationItemCollection;
  self->_destinationItemCollection = 0;
}

- (BOOL)setDestinationAuditToken:(id *)token
{
  v5 = [DRProcessInfo alloc];
  v6 = *&token->var0[4];
  v11[0] = *token->var0;
  v11[1] = v6;
  v7 = [(DRProcessInfo *)v5 initWithAuditToken:v11];
  destinationProcessInfo = self->_destinationProcessInfo;
  self->_destinationProcessInfo = v7;

  destinationItemCollection = self->_destinationItemCollection;
  self->_destinationItemCollection = 0;

  return 1;
}

- (PBItemCollection)destinationItemCollection
{
  destinationItemCollection = self->_destinationItemCollection;
  if (!destinationItemCollection)
  {
    v4 = [(DRDataTransferSession *)self _copyItemCollectionForDestinationWithFilter:0];
    v5 = self->_destinationItemCollection;
    self->_destinationItemCollection = v4;

    [(PBItemCollection *)self->_destinationItemCollection setDataTransferDelegate:self->_dataTransferMonitor];
    destinationItemCollection = self->_destinationItemCollection;
  }

  return destinationItemCollection;
}

- (void)clearDestinationAuditToken
{
  destinationProcessInfo = self->_destinationProcessInfo;
  self->_destinationProcessInfo = 0;

  destinationItemCollection = self->_destinationItemCollection;
  self->_destinationItemCollection = 0;
}

- (void)setDestinationIsAnotherDevice:(BOOL)device
{
  [(DRProcessInfo *)self->_destinationProcessInfo setIsAnotherDevice:device];
  destinationItemCollection = self->_destinationItemCollection;
  self->_destinationItemCollection = 0;
}

- (id)_copyItemCollectionForDestinationWithFilter:(id)filter
{
  filterCopy = filter;
  if (self->_destinationProcessInfo)
  {
    [(PBItemCollection *)self->_sourceItemCollection originatorDataOwner];
    bundleID = [(DRProcessInfo *)self->_sourceProcessInfo bundleID];
    bundleID2 = [(DRProcessInfo *)self->_destinationProcessInfo bundleID];
    v7 = _UIDropAllowedBetweenApps();

    if (v7)
    {
      copyWithDoNothingLoaders = [(PBItemCollection *)self->_sourceItemCollection copyWithDoNothingLoaders];
      items = [(PBItemCollection *)self->_sourceItemCollection items];
      v10 = [items count];

      if (v10)
      {
        v11 = 0;
        do
        {
          items2 = [(PBItemCollection *)self->_sourceItemCollection items];
          v13 = [items2 objectAtIndexedSubscript:v11];

          items3 = [copyWithDoNothingLoaders items];
          v15 = [items3 objectAtIndexedSubscript:v11];

          [(DRDataTransferSession *)self _setupItem:v15 forLoadingFromSourceItem:v13 destination:self->_destinationProcessInfo];
          ++v11;
          items4 = [(PBItemCollection *)self->_sourceItemCollection items];
          v17 = [items4 count];
        }

        while (v11 < v17);
      }
    }

    else
    {
      v18 = [NSMutableArray alloc];
      items5 = [(PBItemCollection *)self->_sourceItemCollection items];
      v20 = [v18 initWithCapacity:{objc_msgSend(items5, "count")}];

      items6 = [(PBItemCollection *)self->_sourceItemCollection items];
      v22 = [items6 count];

      if (v22)
      {
        v23 = 0;
        do
        {
          v24 = objc_alloc_init(PBItem);
          [v20 addObject:v24];

          ++v23;
          items7 = [(PBItemCollection *)self->_sourceItemCollection items];
          v26 = [items7 count];
        }

        while (v23 < v26);
      }

      copyWithDoNothingLoaders = [(PBItemCollection *)self->_sourceItemCollection copyWithItems:v20];
    }
  }

  else
  {
    copyWithDoNothingLoaders = 0;
  }

  return copyWithDoNothingLoaders;
}

- (id)destinationDataProviderEndpoint
{
  [(PBItemCollection *)self->_sourceItemCollection originatorDataOwner];
  bundleID = [(DRProcessInfo *)self->_sourceProcessInfo bundleID];
  bundleID2 = [(DRProcessInfo *)self->_destinationProcessInfo bundleID];
  v5 = _UIDropAllowedBetweenApps();

  if (v5)
  {
    destinationItemCollection = [(DRDataTransferSession *)self destinationItemCollection];
    dataConsumersEndpoint = [destinationItemCollection dataConsumersEndpoint];
  }

  else
  {
    dataConsumersEndpoint = 0;
  }

  return dataConsumersEndpoint;
}

+ (BOOL)_shouldRestrictOpenInPlaceFor:(id)for destinationAuditToken:(id *)token
{
  forCopy = for;
  if (forCopy)
  {
    v6 = *&token->var0[4];
    v11[0] = *token->var0;
    v11[1] = v6;
    v7 = sub_100001E3C(v11, 0xD0000u);
    v8 = forCopy;
    v9 = !v7 && FPURLIsLocatedOnRemovableStorage() != 0;
    CFRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_isRepresentationAllowed:(id)allowed forDestination:(id)destination
{
  allowedCopy = allowed;
  destinationCopy = destination;
  if (qword_1000635A8 != -1)
  {
    sub_100030000();
  }

  if (![destinationCopy isAppleProcess] || objc_msgSend(destinationCopy, "isAnotherDevice")) && (v8 = qword_1000635A0, objc_msgSend(allowedCopy, "typeIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), LOBYTE(v8) = objc_msgSend(v8, "containsObject:", v9), v9, (v8) || self->_filter && (v10 = (-[PBItemCollection originatorDataOwner](self->_sourceItemCollection, "originatorDataOwner") & 0xFFFFFFFFFFFFFFFELL) == 2, filter = self->_filter, objc_msgSend(allowedCopy, "typeIdentifier"), v12 = objc_claimAutoreleasedReturnValue(), LODWORD(v10) = filter[2](filter, v12, v10, self->_sourceProcessInfo, destinationCopy), v12, !v10))
  {
    v15 = 0;
  }

  else
  {
    visibility = [allowedCopy visibility];
    if (visibility == 1)
    {
      v14 = [destinationCopy isSameTeamAsSource:self->_sourceProcessInfo];
    }

    else
    {
      if (visibility != 3)
      {
        v15 = 1;
        goto LABEL_15;
      }

      v14 = [destinationCopy isSameProcessAsSource:self->_sourceProcessInfo];
    }

    v15 = v14;
  }

LABEL_15:

  return v15;
}

- (void)_setupItem:(id)item forLoadingFromSourceItem:(id)sourceItem destination:(id)destination
{
  itemCopy = item;
  val = sourceItem;
  destinationCopy = destination;
  if (qword_1000635B8 != -1)
  {
    sub_100030014();
  }

  metadata = [val metadata];
  v11 = [metadata mutableCopy];

  if (([destinationCopy isSameTeamAsSource:self->_sourceProcessInfo] & 1) == 0)
  {
    [v11 removeObjectsForKeys:qword_1000635B0];
  }

  v24 = v11;
  [itemCopy setMetadata:v11];
  objc_initWeak(&location, val);
  v26 = +[NSMutableArray array];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  representations = [itemCopy representations];
  v13 = [representations countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v13)
  {
    v14 = *v38;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(representations);
        }

        v16 = *(*(&v37 + 1) + 8 * i);
        typeIdentifier = [v16 typeIdentifier];
        if ([(DRDataTransferSession *)self _isRepresentationAllowed:v16 forDestination:destinationCopy])
        {
          objc_initWeak(&from, self);
          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_100010558;
          v31[3] = &unk_100055230;
          objc_copyWeak(&v34, &location);
          v32 = typeIdentifier;
          objc_copyWeak(&v35, &from);
          v33 = destinationCopy;
          [v16 setLoaderBlock:v31];

          objc_destroyWeak(&v35);
          objc_destroyWeak(&v34);
          objc_destroyWeak(&from);
        }

        else
        {
          typeIdentifier2 = [v16 typeIdentifier];
          [v26 addObject:typeIdentifier2];
        }
      }

      v13 = [representations countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v13);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = v26;
  v20 = [v19 countByEnumeratingWithState:&v27 objects:v42 count:16];
  if (v20)
  {
    v21 = *v28;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v27 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          [itemCopy removeRepresentationOfType:v23];
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v27 objects:v42 count:16];
    }

    while (v20);
  }

  objc_destroyWeak(&location);
}

- (id)_registerRequestFromSourceItem:(id)item typeIdentifier:(id)identifier completionHandler:(id)handler
{
  itemCopy = item;
  identifierCopy = identifier;
  handlerCopy = handler;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100010FF0;
  v30 = sub_100011000;
  v31 = 0;
  v11 = DRLogTarget();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    uUID = [itemCopy UUID];
    *buf = 138412546;
    v33 = uUID;
    v34 = 2112;
    v35 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Registering request for item UUID %@, type: %@", buf, 0x16u);
  }

  v14 = sub_100011008(v13);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001104C;
  block[3] = &unk_100055258;
  v21 = itemCopy;
  v22 = identifierCopy;
  v24 = handlerCopy;
  v25 = &v26;
  selfCopy = self;
  v15 = handlerCopy;
  v16 = identifierCopy;
  v17 = itemCopy;
  dispatch_sync(v14, block);

  v18 = v27[5];
  _Block_object_dispose(&v26, 8);

  return v18;
}

- (void)_transferQueue_scheduleNextTransfer
{
  v3 = DRLogTarget();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Checking for transfer requests to schedule.", buf, 2u);
  }

  if (qword_1000635E0 != -1)
  {
    sub_100030064();
  }

  if (byte_1000635E8 == 1)
  {
    v5 = sub_100012200(v4);
  }

  else
  {
    v5 = 3;
  }

  if ([(NSMutableArray *)self->_transferQueue_requestsInProgress count]>= v5)
  {
    v8 = DRLogTarget();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v25 = [(NSMutableArray *)self->_transferQueue_requestsInProgress count];
      *buf = 134217984;
      v41 = v25;
      v26 = "There are already %lu requests in progress. Not scheduling any more.";
      v27 = v8;
      v28 = 12;
LABEL_32:
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, v26, buf, v28);
    }

LABEL_33:

    return;
  }

  v6 = (v5 - [(NSMutableArray *)self->_transferQueue_requestsInProgress count]);
  if (v6 > [(NSMutableArray *)self->_transferQueue_requestsQueue count])
  {
    v6 = [(NSMutableArray *)self->_transferQueue_requestsQueue count];
  }

  v7 = DRLogTarget();
  v8 = v7;
  if (!v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v26 = "Nothing to transfer.";
      v27 = v8;
      v28 = 2;
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v41 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Scheduling %lu items...", buf, 0xCu);
  }

  do
  {
    v9 = [(NSMutableArray *)self->_transferQueue_requestsQueue objectAtIndex:0];
    [(NSMutableArray *)self->_transferQueue_requestsQueue removeObjectAtIndex:0];
    typeIdentifier = [v9 typeIdentifier];
    sourceItem = [v9 sourceItem];
    uUID = [sourceItem UUID];

    sourceItem2 = [v9 sourceItem];
    v14 = [sourceItem2 representationConformingToType:typeIdentifier];

    v15 = DRLogTarget();
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v41 = typeIdentifier;
        v42 = 2112;
        v43 = uUID;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Scheduling load for type %@ from item UUID %@", buf, 0x16u);
      }

      [(NSMutableArray *)self->_transferQueue_requestsInProgress addObject:v9];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100011684;
      v35[3] = &unk_100055280;
      v36 = typeIdentifier;
      v37 = uUID;
      v17 = v9;
      v38 = v17;
      selfCopy = self;
      v18 = objc_retainBlock(v35);
      v19 = v18;
      if (qword_1000635E0 != -1)
      {
        sub_10003008C();
      }

      if (byte_1000635E8 == 1 && (v23 = sub_1000123A4(v18), v23 >= 1.0))
      {
        v24 = v23;
        v20 = [NSProgress discreteProgressWithTotalUnitCount:100];
        v30 = [NSProgress discreteProgressWithTotalUnitCount:vcvtpd_s64_f64(v24 + v24)];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100011880;
        v32[3] = &unk_1000552D0;
        v33 = v30;
        v34 = v19;
        v31 = v30;
        v29 = [v14 loadWithCompletionHandler:v32];
        [v20 addChild:v29 withPendingUnitCount:10];
        [v20 addChild:v31 withPendingUnitCount:90];
      }

      else
      {
        v20 = [v14 loadWithCompletionHandler:v19];
      }

      progress = [v17 progress];
      [progress addChild:v20 withPendingUnitCount:100];

      v16 = v36;
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      typeIdentifier2 = [v9 typeIdentifier];
      *buf = 138412546;
      v41 = typeIdentifier2;
      v42 = 2112;
      v43 = uUID;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Could not find representation for type %@ in item UUID %@", buf, 0x16u);
    }

    --v6;
  }

  while (v6);
}

- (void)_transferQueue_sendDelegateCallbacksIfNeeded
{
  if (self->_transferQueue_canTellDelegateAboutFinishedTransfers)
  {
    v10 = v2;
    v11 = v3;
    if (self->_transferQueue_shouldSendBeganCallback)
    {
      v5 = DRLogTarget();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9[0] = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Data transfer session began.", v9, 2u);
      }

      self->_transferQueue_shouldSendBeganCallback = 0;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100011C30;
      block[3] = &unk_100054B50;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }

    if (self->_transferQueue_shouldSendFinishedCallback)
    {
      v6 = DRLogTarget();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9[0] = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Data transfer session ended.", v9, 2u);
      }

      self->_transferQueue_shouldSendFinishedCallback = 0;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100011CC8;
      v7[3] = &unk_100054B50;
      v7[4] = self;
      dispatch_async(&_dispatch_main_q, v7);
    }
  }
}

- (void)startSendingDelegateCallbacks
{
  v3 = sub_100011008(self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011DE8;
  block[3] = &unk_100054B50;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)dataTransferMonitorBeganTransfers:(id)transfers
{
  v4 = sub_100011008(self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011ED4;
  block[3] = &unk_100054B50;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)dataTransferMonitorFinishedTransfers:(id)transfers
{
  v4 = sub_100011008(self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011F70;
  block[3] = &unk_100054B50;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)setDataProviderEndpoint:(id)endpoint auditToken:(id *)token
{
  [(PBItemCollection *)self->_sourceItemCollection setDataProviderEndpoint:endpoint];
  objc_msgSend_establishConnectionToDataProviderCompletionBlock_(self->_sourceItemCollection);
  v6 = [DRProcessInfo alloc];
  v7 = *&token->var0[4];
  v10[0] = *token->var0;
  v10[1] = v7;
  v8 = [(DRProcessInfo *)v6 initWithAuditToken:v10];
  sourceProcessInfo = self->_sourceProcessInfo;
  self->_sourceProcessInfo = v8;
}

- (DRDataTransferSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end