@interface CSDIDSFirewallManager
+ (id)predicateForUpgrade;
- (CSDIDSFirewallManager)initWithService:(id)service chManager:(id)manager featureFlags:(id)flags serverBag:(id)bag queue:(id)queue;
- (CSDIDSFirewallManager)initWithService:(id)service queue:(id)queue;
- (id)latestRecentOutgoingFacetimeCallWithRemoteParticipantHandle:(id)handle sinceDate:(id)date noDeletedCallsPredicate:(id)predicate;
- (void)allCallHistoryDeleted;
- (void)recentCallsDeleted:(id)deleted;
- (void)updateFirewallWithCallHistoryIfNecessary;
@end

@implementation CSDIDSFirewallManager

- (CSDIDSFirewallManager)initWithService:(id)service chManager:(id)manager featureFlags:(id)flags serverBag:(id)bag queue:(id)queue
{
  serviceCopy = service;
  managerCopy = manager;
  flagsCopy = flags;
  bagCopy = bag;
  queueCopy = queue;
  v21.receiver = self;
  v21.super_class = CSDIDSFirewallManager;
  v17 = [(CSDIDSFirewallManager *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_service, service);
    objc_storeStrong(&v18->_queue, queue);
    objc_storeStrong(&v18->_featureFlags, flags);
    objc_storeStrong(&v18->_serverBag, bag);
    objc_storeStrong(&v18->_chManager, manager);
  }

  return v18;
}

- (CSDIDSFirewallManager)initWithService:(id)service queue:(id)queue
{
  serviceCopy = service;
  queueCopy = queue;
  service = self->_service;
  self->_service = serviceCopy;
  v9 = serviceCopy;

  queue = self->_queue;
  self->_queue = queueCopy;
  v11 = queueCopy;

  v12 = objc_alloc_init(TUFeatureFlags);
  v13 = objc_alloc_init(CSDSharedConversationServerBag);
  v14 = objc_alloc_init(CHManager);
  v15 = [(CSDIDSFirewallManager *)self initWithService:v9 chManager:v14 featureFlags:v12 serverBag:v13 queue:v11];

  return v15;
}

- (void)updateFirewallWithCallHistoryIfNecessary
{
  v3 = +[NSUserDefaults tu_defaults];
  v4 = [v3 integerForKey:@"kLastIDSFirewallVersionDefaultsKey"];

  if (!v4)
  {
    featureFlags = [(CSDIDSFirewallManager *)self featureFlags];
    offrampEnabled = [featureFlags offrampEnabled];

    if (offrampEnabled)
    {
      queue = [(CSDIDSFirewallManager *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001EA6CC;
      block[3] = &unk_100619D38;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }
}

- (void)recentCallsDeleted:(id)deleted
{
  deletedCopy = deleted;
  selfCopy = self;
  featureFlags = [(CSDIDSFirewallManager *)self featureFlags];
  offrampEnabled = [featureFlags offrampEnabled];

  if (offrampEnabled)
  {
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v58 = deletedCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Deleting calls from IDS firewall if necessary: %@", buf, 0xCu);
    }

    v37 = +[NSMutableDictionary dictionary];
    v38 = +[NSMutableSet set];
    v9 = +[NSCalendar currentCalendar];
    serverBag = [(CSDIDSFirewallManager *)selfCopy serverBag];
    idsFirewallCHExpiryTimeDays = [serverBag idsFirewallCHExpiryTimeDays];
    v12 = +[NSDate date];
    v36 = [v9 dateByAddingUnit:16 value:idsFirewallCHExpiryTimeDays toDate:v12 options:0];

    v13 = +[NSMutableArray array];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v34 = deletedCopy;
    v14 = deletedCopy;
    v15 = [v14 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v52;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v52 != v17)
          {
            objc_enumerationMutation(v14);
          }

          uniqueId = [*(*(&v51 + 1) + 8 * i) uniqueId];
          v20 = [NSPredicate predicateWithFormat:@"unique_id != %@", uniqueId];
          [v13 addObject:v20];
        }

        v16 = [v14 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v16);
    }

    v35 = [NSCompoundPredicate andPredicateWithSubpredicates:v13];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v21 = v14;
    v22 = [v21 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v48;
      v25 = kCHServiceProviderFaceTime;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v48 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v47 + 1) + 8 * j);
          serviceProvider = [v27 serviceProvider];
          v29 = [serviceProvider isEqualToString:v25];

          if (v29)
          {
            validRemoteParticipantHandles = [v27 validRemoteParticipantHandles];
            v40[0] = _NSConcreteStackBlock;
            v40[1] = 3221225472;
            v40[2] = sub_1001EAED0;
            v40[3] = &unk_10061E2A0;
            v41 = v37;
            v42 = selfCopy;
            v43 = v36;
            v44 = v35;
            v45 = v27;
            v46 = v38;
            [validRemoteParticipantHandles enumerateObjectsUsingBlock:v40];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v23);
    }

    v32 = sub_100004778(v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v58 = v38;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Removing handle(s) from firewall %@", buf, 0xCu);
    }

    service = [(CSDIDSFirewallManager *)selfCopy service];
    [service removeFirewallEntries:v38];

    deletedCopy = v34;
  }
}

- (void)allCallHistoryDeleted
{
  featureFlags = [(CSDIDSFirewallManager *)self featureFlags];
  offrampEnabled = [featureFlags offrampEnabled];

  if (offrampEnabled)
  {
    service = [(CSDIDSFirewallManager *)self service];
    [service removeAllFirewallEntries];
  }
}

- (id)latestRecentOutgoingFacetimeCallWithRemoteParticipantHandle:(id)handle sinceDate:(id)date noDeletedCallsPredicate:(id)predicate
{
  predicateCopy = predicate;
  handleCopy = handle;
  v10 = [CHRecentCall predicateForCallsLessThanDate:date];
  v11 = [CHRecentCall predicateForCallsWithRemoteParticipantHandle:handleCopy];

  v12 = [CHRecentCall predicateForCallsWithServiceProvider:kCHServiceProviderFaceTime];
  v13 = [CHRecentCall predicateForCallsWithStatusOriginated:1];
  v20[0] = v10;
  v20[1] = v11;
  v20[2] = v12;
  v20[3] = v13;
  v20[4] = predicateCopy;
  v14 = [NSArray arrayWithObjects:v20 count:5];
  v15 = [NSCompoundPredicate andPredicateWithSubpredicates:v14];

  chManager = [(CSDIDSFirewallManager *)self chManager];
  v17 = [chManager callsWithPredicate:v15 limit:1 offset:0 batchSize:1];
  firstObject = [v17 firstObject];

  return firstObject;
}

+ (id)predicateForUpgrade
{
  v2 = objc_alloc_init(CSDSharedConversationServerBag);
  v3 = +[NSCalendar currentCalendar];
  idsFirewallCHExpiryTimeDays = [(CSDSharedConversationServerBag *)v2 idsFirewallCHExpiryTimeDays];
  v5 = +[NSDate date];
  v6 = [v3 dateByAddingUnit:16 value:idsFirewallCHExpiryTimeDays toDate:v5 options:0];

  v7 = [CHRecentCall predicateForCallsLessThanDate:v6];
  v8 = [CHRecentCall predicateForCallsWithServiceProvider:kCHServiceProviderFaceTime];
  v9 = [CHRecentCall predicateForCallsWithStatusOriginated:1];
  v10 = [NSArray arrayWithObjects:v7, v8, v9, 0];
  v11 = [NSCompoundPredicate andPredicateWithSubpredicates:v10];

  return v11;
}

@end