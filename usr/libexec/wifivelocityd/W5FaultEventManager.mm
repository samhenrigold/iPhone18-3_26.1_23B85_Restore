@interface W5FaultEventManager
- (W5FaultEventManager)initWithPeerManager:(id)manager diagnosticsModeManager:(id)modeManager;
- (id)faultEventCache;
- (void)__addFaultEvent:(id)event;
- (void)__archiveEventCache;
- (void)__archiveNotifyPeers;
- (void)__purgeObsoleteFaultEvents;
- (void)__unarchiveEventCache;
- (void)__unarchiveNotifyPeers;
- (void)notifyPeersWithFaultEvent:(id)event info:(id)info;
- (void)queryFaultEventCacheForPeer:(id)peer reply:(id)reply;
- (void)startMonitoringFaultEventsForPeer:(id)peer reply:(id)reply;
- (void)stopMonitoringFaultEventsForPeer:(id)peer reply:(id)reply;
- (void)submitFaultEvent:(id)event;
@end

@implementation W5FaultEventManager

- (W5FaultEventManager)initWithPeerManager:(id)manager diagnosticsModeManager:(id)modeManager
{
  managerCopy = manager;
  modeManagerCopy = modeManager;
  v21.receiver = self;
  v21.super_class = W5FaultEventManager;
  v9 = [(W5FaultEventManager *)&v21 init];
  v10 = v9;
  if (v9 && (objc_storeStrong(&v9->_peerManager, manager), v10->_peerManager) && (objc_storeStrong(&v10->_diagnosticsModeManager, modeManager), v10->_diagnosticsModeManager) && (v11 = objc_alloc_init(W5PeerGenericRequestListener), listener = v10->_listener, v10->_listener = v11, listener, (v13 = v10->_listener) != 0))
  {
    [(W5PeerGenericRequestListener *)v13 setIdentifier:@"com.apple.wifi.peer.faults"];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10008892C;
    v18[3] = &unk_1000E3380;
    v19 = v10;
    v14 = v19;
    v20 = v14;
    [(W5PeerGenericRequestListener *)v10->_listener setRequestHandler:v18];

    v15 = v19;
  }

  else
  {

    v15 = sub_100098A04();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315650;
      v23 = "[W5FaultEventManager initWithPeerManager:diagnosticsModeManager:]";
      v24 = 2080;
      v25 = "W5FaultEventManager.m";
      v26 = 1024;
      v27 = 164;
      LODWORD(v17) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v15, 0, "[wifivelocity] %s (%s:%u) init error!", &v22, v17, LODWORD(v18[0]));
    }

    v14 = 0;
  }

  return v14;
}

- (void)startMonitoringFaultEventsForPeer:(id)peer reply:(id)reply
{
  peerCopy = peer;
  replyCopy = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = objc_alloc_init(W5PeerGenericRequest);
  [(W5PeerGenericRequest *)v9 setIdentifier:@"com.apple.wifi.peer.faults"];
  [(W5PeerGenericRequest *)v9 setPeer:peerCopy];
  [(W5PeerGenericRequest *)v9 setDiscoveryFlags:1];
  -[W5PeerGenericRequest setControlFlags:](v9, "setControlFlags:", [peerCopy controlFlags]);
  v10 = +[NSMutableDictionary dictionary];
  [v10 setObject:&off_1000EFB18 forKeyedSubscript:@"Type"];
  localPeer = [(W5FaultEventManager *)selfCopy localPeer];
  [v10 setObject:localPeer forKeyedSubscript:@"RequestPeer"];

  [v10 setObject:peerCopy forKeyedSubscript:@"ResponsePeer"];
  [(W5PeerGenericRequest *)v9 setRequestInfo:v10];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000891F0;
  v15[3] = &unk_1000E33A8;
  v15[4] = selfCopy;
  v12 = peerCopy;
  v16 = v12;
  v13 = replyCopy;
  v17 = v13;
  [(W5PeerGenericRequest *)v9 setResponseHandler:v15];
  v14 = [(W5PeerManager *)selfCopy->_peerManager sendRequest:v9];

  objc_sync_exit(selfCopy);
}

- (void)stopMonitoringFaultEventsForPeer:(id)peer reply:(id)reply
{
  peerCopy = peer;
  replyCopy = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSCountedSet *)selfCopy->_monitoringPeers removeObject:peerCopy];
  if (![(NSCountedSet *)selfCopy->_monitoringPeers countForObject:peerCopy])
  {
    v9 = objc_alloc_init(W5PeerGenericRequest);
    [(W5PeerGenericRequest *)v9 setIdentifier:@"com.apple.wifi.peer.faults"];
    [(W5PeerGenericRequest *)v9 setPeer:peerCopy];
    [(W5PeerGenericRequest *)v9 setDiscoveryFlags:1];
    -[W5PeerGenericRequest setControlFlags:](v9, "setControlFlags:", [peerCopy controlFlags]);
    v10 = +[NSMutableDictionary dictionary];
    [v10 setObject:&off_1000EFB30 forKeyedSubscript:@"Type"];
    localPeer = [(W5FaultEventManager *)selfCopy localPeer];
    [v10 setObject:localPeer forKeyedSubscript:@"RequestPeer"];

    [v10 setObject:peerCopy forKeyedSubscript:@"ResponsePeer"];
    [(W5PeerGenericRequest *)v9 setRequestInfo:v10];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000894BC;
    v13[3] = &unk_1000E33D0;
    v14 = replyCopy;
    [(W5PeerGenericRequest *)v9 setResponseHandler:v13];
    v12 = [(W5PeerManager *)selfCopy->_peerManager sendRequest:v9];
  }

  objc_sync_exit(selfCopy);
}

- (void)queryFaultEventCacheForPeer:(id)peer reply:(id)reply
{
  replyCopy = reply;
  peerCopy = peer;
  v8 = objc_alloc_init(W5PeerGenericRequest);
  [(W5PeerGenericRequest *)v8 setIdentifier:@"com.apple.wifi.peer.faults"];
  [(W5PeerGenericRequest *)v8 setPeer:peerCopy];
  [(W5PeerGenericRequest *)v8 setDiscoveryFlags:1];
  -[W5PeerGenericRequest setControlFlags:](v8, "setControlFlags:", [peerCopy controlFlags]);
  v9 = +[NSMutableDictionary dictionary];
  [v9 setObject:&off_1000EFB48 forKeyedSubscript:@"Type"];
  localPeer = [(W5FaultEventManager *)self localPeer];
  [v9 setObject:localPeer forKeyedSubscript:@"RequestPeer"];

  [v9 setObject:peerCopy forKeyedSubscript:@"ResponsePeer"];
  [(W5PeerGenericRequest *)v8 setRequestInfo:v9];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100089664;
  v13[3] = &unk_1000E33D0;
  v14 = replyCopy;
  v11 = replyCopy;
  [(W5PeerGenericRequest *)v8 setResponseHandler:v13];
  v12 = [(W5PeerManager *)self->_peerManager sendRequest:v8];
}

- (void)__archiveNotifyPeers
{
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.wifi.logs"];
  v5 = [v4 URLByAppendingPathComponent:@"FaultEventNotifyPeers"];

  v6 = [(NSMutableSet *)self->_notifyPeers copy];
  v12 = 0;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v12];
  v8 = v12;

  if (!v7)
  {
    v10 = sub_100098A04();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v8;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v10, 0, "[wifivelocity] FAILED to archive notify peers, returned error (%{public}@)", &v13, 12);
    }

    goto LABEL_7;
  }

  v11 = 0;
  v9 = [v7 writeToURL:v5 options:1 error:&v11];
  v8 = v11;
  if ((v9 & 1) == 0)
  {
    v10 = sub_100098A04();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v8;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v10, 0, "[wifivelocity] FAILED to write notify peers to URL, returned error (%{public}@)", &v13, 12);
    }

LABEL_7:
  }
}

- (void)__unarchiveNotifyPeers
{
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.wifi.logs"];
  v5 = [v4 URLByAppendingPathComponent:@"FaultEventNotifyPeers"];

  v6 = [[NSData alloc] initWithContentsOfURL:v5];
  if ([v6 length])
  {
    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
    v13 = 0;
    v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v8 fromData:v6 error:&v13];
    v10 = v13;

    if (v9)
    {
      [(NSMutableSet *)self->_notifyPeers unionSet:v9];
    }

    else
    {
      v11 = sub_100098A04();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = v10;
        LODWORD(v12) = 12;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v11, 0, "[wifivelocity] FAILED to unarchive notify peers from URL, returned error (%{public}@)", &v14, v12);
      }
    }
  }
}

- (void)__archiveEventCache
{
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.wifi.logs"];
  v5 = [v4 URLByAppendingPathComponent:@"FaultEventCache"];

  v6 = [(NSMutableOrderedSet *)self->_faultEventCache copy];
  v12 = 0;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v12];
  v8 = v12;

  if (!v7)
  {
    v10 = sub_100098A04();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v8;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v10, 0, "[wifivelocity] FAILED to archive event cache, returned error (%{public}@)", &v13, 12);
    }

    goto LABEL_7;
  }

  v11 = 0;
  v9 = [v7 writeToURL:v5 options:1 error:&v11];
  v8 = v11;
  if ((v9 & 1) == 0)
  {
    v10 = sub_100098A04();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v8;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v10, 0, "[wifivelocity] FAILED to write event cache to URL, returned error (%{public}@)", &v13, 12);
    }

LABEL_7:
  }
}

- (void)__unarchiveEventCache
{
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.wifi.logs"];
  v5 = [v4 URLByAppendingPathComponent:@"FaultEventCache"];

  v6 = [[NSData alloc] initWithContentsOfURL:v5];
  if ([v6 length])
  {
    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
    v14 = 0;
    v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v8 fromData:v6 error:&v14];
    v10 = v14;

    if (v9)
    {
      faultEventCache = self->_faultEventCache;
      v12 = [v9 set];
      [(NSMutableOrderedSet *)faultEventCache unionSet:v12];
    }

    else
    {
      v12 = sub_100098A04();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543362;
        v16 = v10;
        LODWORD(v13) = 12;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v12, 0, "[wifivelocity] FAILED to unarchive event cache from URL, returned error (%{public}@)", &v15, v13);
      }
    }
  }
}

- (void)__purgeObsoleteFaultEvents
{
  array = [(NSMutableOrderedSet *)self->_faultEventCache array];
  v3 = [array mutableCopy];

  +[NSDate timeIntervalSinceReferenceDate];
  v5 = v4;
  v21 = [NSSortDescriptor sortDescriptorWithKey:0 ascending:0 comparator:&stru_1000E3410];
  v24 = v21;
  v6 = [NSArray arrayWithObjects:&v24 count:1];
  [v3 sortUsingDescriptors:v6];

  v7 = +[NSMutableIndexSet indexSet];
  v8 = +[NSCountedSet set];
  if ([v3 count])
  {
    v9 = 0;
    v23 = v3;
    do
    {
      v10 = [v3 objectAtIndexedSubscript:v9];
      [v10 timestamp];
      if (v5 - v11 <= 86400.0)
      {
        v12 = v7;
        peer = [v10 peer];
        peerID = [peer peerID];
        info = [v10 info];
        v16 = [info objectForKeyedSubscript:@"FaultType"];
        v17 = [NSString stringWithFormat:@"%@/%@", peerID, v16];

        v18 = [v8 countForObject:v17];
        if (v18 && ((v19 = v18, [v10 timestamp], v5 - v20 > 3600.0) || v19 >= 0xA))
        {
          v7 = v12;
          [v12 addIndex:v9];
        }

        else
        {
          [v8 addObject:v17];
          v7 = v12;
        }

        v3 = v23;
      }

      else
      {
        [v7 addIndex:v9];
      }

      ++v9;
    }

    while (v9 < [v3 count]);
  }

  if ([v7 count])
  {
    [v3 removeObjectsAtIndexes:v7];
  }

  if ([v3 count] >= 0x65)
  {
    [v3 removeObjectsInRange:{100, objc_msgSend(v3, "count") - 100}];
  }

  [(NSMutableOrderedSet *)self->_faultEventCache removeAllObjects];
  [(NSMutableOrderedSet *)self->_faultEventCache addObjectsFromArray:v3];
}

- (void)__addFaultEvent:(id)event
{
  eventCopy = event;
  faultEventCache = self->_faultEventCache;
  v8 = eventCopy;
  if (!faultEventCache)
  {
    v6 = +[NSMutableOrderedSet orderedSet];
    v7 = self->_faultEventCache;
    self->_faultEventCache = v6;

    [(W5FaultEventManager *)self __unarchiveEventCache];
    eventCopy = v8;
    faultEventCache = self->_faultEventCache;
  }

  [(NSMutableOrderedSet *)faultEventCache addObject:eventCopy];
  [(W5FaultEventManager *)self __purgeObsoleteFaultEvents];
  [(W5FaultEventManager *)self __archiveEventCache];
}

- (void)notifyPeersWithFaultEvent:(id)event info:(id)info
{
  eventCopy = event;
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_notifyPeers)
  {
    v8 = +[NSMutableSet set];
    notifyPeers = selfCopy->_notifyPeers;
    selfCopy->_notifyPeers = v8;

    [(W5FaultEventManager *)selfCopy __unarchiveNotifyPeers];
  }

  info = [eventCopy info];
  v11 = [info objectForKeyedSubscript:@"FaultType"];
  integerValue = [v11 integerValue];

  diagnosticsModeManager = [(W5FaultEventManager *)selfCopy diagnosticsModeManager];
  v14 = [diagnosticsModeManager registeredPeersForFaultType:integerValue];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v14;
  v15 = [obj countByEnumeratingWithState:&v52 objects:v67 count:16];
  if (v15)
  {
    v16 = *v53;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v53 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v52 + 1) + 8 * i);
        peer = [v18 peer];
        v20 = peer == 0;

        if (v20)
        {
          peer2 = sub_100098A04();
          if (os_log_type_enabled(peer2, OS_LOG_TYPE_DEFAULT))
          {
            v56 = 136315906;
            v57 = "[W5FaultEventManager notifyPeersWithFaultEvent:info:]";
            v58 = 2080;
            v59 = "W5FaultEventManager.m";
            v60 = 1024;
            v61 = 388;
            v62 = 2114;
            v63 = v18;
            LODWORD(v39) = 38;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, peer2, 0, "[wifivelocity] %s (%s:%u) [DM] nil W5Peer for peer='%{public}@'", &v56, v39);
          }
        }

        else
        {
          v21 = selfCopy->_notifyPeers;
          peer2 = [v18 peer];
          [(NSMutableSet *)v21 addObject:peer2];
        }
      }

      v15 = [obj countByEnumeratingWithState:&v52 objects:v67 count:16];
    }

    while (v15);
  }

  v51 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  v23 = [(NSMutableSet *)selfCopy->_notifyPeers copy];
  v24 = [v23 countByEnumeratingWithState:&v48 objects:v66 count:16];
  if (v24)
  {
    v43 = *v49;
    v40 = v23;
    do
    {
      v44 = v24;
      for (j = 0; j != v44; j = j + 1)
      {
        if (*v49 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v26 = *(*(&v48 + 1) + 8 * j);
        v27 = objc_alloc_init(W5PeerGenericRequest);
        [(W5PeerGenericRequest *)v27 setIdentifier:@"com.apple.wifi.peer.faults"];
        [(W5PeerGenericRequest *)v27 setPeer:v26];
        [(W5PeerGenericRequest *)v27 setDiscoveryFlags:1];
        [(W5PeerGenericRequest *)v27 setControlFlags:0];
        v28 = +[NSMutableDictionary dictionary];
        [v28 setObject:&off_1000EFB60 forKeyedSubscript:@"Type"];
        localPeer = [(W5FaultEventManager *)selfCopy localPeer];
        [v28 setObject:localPeer forKeyedSubscript:@"RequestPeer"];

        [v28 setObject:v26 forKeyedSubscript:@"ResponsePeer"];
        v30 = [eventCopy copy];
        info2 = [eventCopy info];
        if (info2)
        {
          info3 = [eventCopy info];
          v33 = [info3 mutableCopy];
        }

        else
        {
          v33 = +[NSMutableDictionary dictionary];
        }

        diagnosticsModeManager2 = [(W5FaultEventManager *)selfCopy diagnosticsModeManager];
        v35 = [diagnosticsModeManager2 registeredRoleForPeer:v26] == 16;

        if (v35)
        {
          peerID = [v26 peerID];
          [v33 setObject:peerID forKeyedSubscript:@"RemoteListener"];

          if (infoCopy)
          {
            v46[0] = _NSConcreteStackBlock;
            v46[1] = 3221225472;
            v46[2] = sub_10008A91C;
            v46[3] = &unk_1000E3438;
            v47 = v33;
            [infoCopy enumerateKeysAndObjectsUsingBlock:v46];
          }
        }

        [v30 setInfo:v33];
        [v28 setObject:v30 forKeyedSubscript:@"Event"];
        [(W5PeerGenericRequest *)v27 setRequestInfo:v28];
        v37 = sub_100098A04();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v56 = 136316162;
          v57 = "[W5FaultEventManager notifyPeersWithFaultEvent:info:]";
          v58 = 2080;
          v59 = "W5FaultEventManager.m";
          v60 = 1024;
          v61 = 424;
          v62 = 2112;
          v63 = v26;
          v64 = 2112;
          v65 = v30;
          LODWORD(v39) = 48;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v37, 0, "[wifivelocity] %s (%s:%u) Notifying peer: %@ for event: %@", &v56, v39);
        }

        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_10008A928;
        v45[3] = &unk_1000E3460;
        v45[4] = selfCopy;
        v45[5] = v26;
        [(W5PeerGenericRequest *)v27 setResponseHandler:v45];
        v38 = [(W5PeerManager *)selfCopy->_peerManager sendRequest:v27];
      }

      v23 = v40;
      v24 = [v40 countByEnumeratingWithState:&v48 objects:v66 count:16];
    }

    while (v24);
  }

  objc_sync_exit(selfCopy);
}

- (void)submitFaultEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  localPeer = [(W5FaultEventManager *)selfCopy localPeer];
  [eventCopy setPeer:localPeer];

  [(W5FaultEventManager *)selfCopy __addFaultEvent:eventCopy];
  faultEventHandler = [(W5FaultEventManager *)selfCopy faultEventHandler];
  (faultEventHandler)[2](faultEventHandler, eventCopy);

  objc_sync_exit(selfCopy);
}

- (id)faultEventCache
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_faultEventCache)
  {
    v3 = +[NSMutableOrderedSet orderedSet];
    faultEventCache = selfCopy->_faultEventCache;
    selfCopy->_faultEventCache = v3;

    [(W5FaultEventManager *)selfCopy __unarchiveEventCache];
  }

  [(W5FaultEventManager *)selfCopy __purgeObsoleteFaultEvents];
  if (selfCopy->_faultEventCache)
  {
    v5 = [NSArray alloc];
    array = [(NSMutableOrderedSet *)selfCopy->_faultEventCache array];
    v7 = [v5 initWithArray:array copyItems:1];
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

@end