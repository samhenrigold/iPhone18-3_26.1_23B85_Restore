@interface GEOOfflineStateServer
- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id;
- (GEOOfflineStateServer)initWithDaemon:(id)daemon;
- (void)_suggestedOfflineStateChanged:(id)changed;
- (void)checkConnectivityWithMessage:(id)message;
- (void)dealloc;
- (void)fetchStateWithRequest:(id)request;
- (void)peerDidDisconnect:(id)disconnect;
- (void)setStateWithRequest:(id)request;
- (void)subscribeWithRequest:(id)request;
@end

@implementation GEOOfflineStateServer

- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id
{
  messageCopy = message;
  objectCopy = object;
  peerCopy = peer;
  v13 = sub_100001334(messageCopy);
  v14 = 0;
  if (v13 > 1034)
  {
    if (v13 == 1789)
    {
      v22 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
      v17 = v22;
      if (v22)
      {
        [v22 setSignpostId:id];
        [(GEOOfflineStateServer *)self checkConnectivityWithMessage:v17];
        goto LABEL_14;
      }

      goto LABEL_17;
    }

    if (v13 == 1035)
    {
      v18 = objc_opt_class();
      v19 = sub_100001388(@"offlinestate", messageCopy, objectCopy, v18, peerCopy);
      v17 = v19;
      if (v19)
      {
        [v19 setSignpostId:id];
        [(GEOOfflineStateServer *)self fetchStateWithRequest:v17];
        goto LABEL_14;
      }

LABEL_17:
      v14 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    if (v13 == 845)
    {
      v20 = objc_opt_class();
      v21 = sub_100001388(@"offlinestate", messageCopy, objectCopy, v20, peerCopy);
      v17 = v21;
      if (v21)
      {
        [v21 setSignpostId:id];
        [(GEOOfflineStateServer *)self setStateWithRequest:v17];
        goto LABEL_14;
      }

      goto LABEL_17;
    }

    if (v13 == 962)
    {
      v15 = objc_opt_class();
      v16 = sub_100001388(@"offlinestate", messageCopy, objectCopy, v15, peerCopy);
      v17 = v16;
      if (v16)
      {
        [v16 setSignpostId:id];
        [(GEOOfflineStateServer *)self subscribeWithRequest:v17];
LABEL_14:
        v14 = 1;
LABEL_15:

        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

LABEL_16:

  return v14;
}

- (void)peerDidDisconnect:(id)disconnect
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_10001CBB4;
  v8 = sub_10001CBC4;
  v9 = 0;
  disconnectCopy = disconnect;
  geo_isolate_sync_data();
  sub_10001CE08(v5[5], 1);

  _Block_object_dispose(&v4, 8);
}

- (void)_suggestedOfflineStateChanged:(id)changed
{
  object = [changed object];
  v4 = sub_10001D448(self, object);
  v5 = v4;
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((v4 + 24));
    if (WeakRetained)
    {
      geo_isolate_sync_data();
      connection = [WeakRetained connection];
      [connection initiateBarrierIfNecessary:0 delegate:v5];
    }
  }
}

- (void)checkConnectivityWithMessage:(id)message
{
  messageCopy = message;
  preferredAuditToken = [messageCopy preferredAuditToken];
  offlineCohortId = [preferredAuditToken offlineCohortId];

  if (![offlineCohortId length])
  {
    v11 = @"Invalid cohort id";
LABEL_8:
    v9 = [NSError GEOErrorWithCode:-10 reason:v11];
    peer3 = [NSDictionary _geo_replyDictionaryForError:v9 key:@"err"];
    [messageCopy sendReply:peer3];
    goto LABEL_9;
  }

  peer = [messageCopy peer];
  v8 = sub_10001D804(self, peer, offlineCohortId);

  if (!v8)
  {
    v12 = GEOGetOfflineServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      peer2 = [messageCopy peer];
      v14 = 138543618;
      v15 = offlineCohortId;
      v16 = 2114;
      v17 = peer2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Non-active peer attempted to check the connectivity for %{public}@ - %{public}@", &v14, 0x16u);
    }

    v11 = @"Not currently subscribed peer";
    goto LABEL_8;
  }

  v9 = +[GEOOfflineStateManager shared];
  peer3 = [messageCopy peer];
  [v9 checkConnectivityForPeer:peer3];
LABEL_9:
}

- (void)setStateWithRequest:(id)request
{
  requestCopy = request;
  preferredAuditToken = [requestCopy preferredAuditToken];
  offlineCohortId = [preferredAuditToken offlineCohortId];

  v28 = [[GEOOfflineServiceSetStateReply alloc] initWithRequest:requestCopy];
  if ([offlineCohortId length])
  {
    v5 = sub_10001D448(self, offlineCohortId);
    v6 = v5;
    if (v5 && (WeakRetained = objc_loadWeakRetained((v5 + 24)), v6, (v27 = WeakRetained) != 0))
    {
      peer = [requestCopy peer];

      if (WeakRetained != peer)
      {
        v9 = GEOGetOfflineServiceLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          peer2 = [requestCopy peer];
          *buf = 138543618;
          v55 = offlineCohortId;
          v56 = 2114;
          v57 = peer2;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Non-active peer attempted to set the offline state for %{public}@ - %{public}@", buf, 0x16u);
        }

        v11 = [NSError GEOErrorWithCode:-10 reason:@"Not currently subscribed peer"];
        [v28 setError:v11];

        v12 = v28;
        goto LABEL_26;
      }
    }

    else
    {
      v27 = 0;
    }

    if ([offlineCohortId length])
    {
      v15 = +[GEOOfflineStateManager shared];
      [v15 setState:objc_msgSend(requestCopy forCohortId:{"state"), offlineCohortId}];

      [v28 send];
      peer3 = [requestCopy peer];
      v16 = offlineCohortId;
      if (self)
      {
        v43 = 0;
        v44 = &v43;
        v45 = 0x3032000000;
        v46 = sub_10001CBB4;
        v47 = sub_10001CBC4;
        v48 = 0;
        v35 = _NSConcreteStackBlock;
        v36 = 3221225472;
        v37 = sub_10001DD74;
        v38 = &unk_1000826F8;
        selfCopy = self;
        v25 = v16;
        v40 = v16;
        v41 = peer3;
        v42 = &v43;
        geo_isolate_sync_data();
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v17 = v44[5];
        v18 = [v17 countByEnumeratingWithState:&v31 objects:buf count:16];
        if (v18)
        {
          v19 = *v32;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v32 != v19)
              {
                objc_enumerationMutation(v17);
              }

              v21 = *(*(&v31 + 1) + 8 * i);
              if (v21)
              {
                v22 = objc_loadWeakRetained((v21 + 24));
                if (v22)
                {
                  v49 = _NSConcreteStackBlock;
                  v50 = 3221225472;
                  v51 = sub_10001DF68;
                  v52 = &unk_1000838C8;
                  v53 = v21;
                  geo_isolate_sync_data();
                  connection = [v22 connection];
                  [connection initiateBarrierIfNecessary:0 delegate:v21];
                }
              }
            }

            v18 = [v17 countByEnumeratingWithState:&v31 objects:buf count:16];
          }

          while (v18);
        }

        _Block_object_dispose(&v43, 8);
        v16 = v25;
      }

      goto LABEL_27;
    }

    v24 = [NSError GEOErrorWithCode:-10 reason:@"Invalid cohort id"];
    v12 = v28;
    [v28 setError:v24];

LABEL_26:
    [v12 send];
LABEL_27:

    v14 = v28;
    goto LABEL_28;
  }

  v13 = [NSError GEOErrorWithCode:-10 reason:@"Invalid cohort id"];
  v14 = v28;
  [v28 setError:v13];

  [v28 send];
LABEL_28:
}

- (void)subscribeWithRequest:(id)request
{
  requestCopy = request;
  preferredAuditToken = [requestCopy preferredAuditToken];
  offlineCohortId = [preferredAuditToken offlineCohortId];

  v7 = [[GEOOfflineServiceStateSubscribeReply alloc] initWithRequest:requestCopy];
  if ([offlineCohortId length])
  {
    v56 = 0;
    v57 = &v56;
    v58 = 0x2020000000;
    v59 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = sub_10001CBB4;
    v54 = sub_10001CBC4;
    v55 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = sub_10001CBB4;
    v48 = sub_10001CBC4;
    v49 = 0;
    if (![requestCopy subscribe])
    {
      [v7 setSubscribed:0];
      v13 = offlineCohortId;
      v36 = requestCopy;
      geo_isolate_sync_data();
      *(v57 + 24) = v51[5] != 0;
      v14 = GEOGetOfflineServiceLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = v45[5];
        v16 = v51[5];
        *buf = 138543874;
        *&buf[4] = v13;
        *&buf[12] = 2114;
        *&buf[14] = v15;
        *&buf[22] = 2114;
        v98 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "via unsubscribe: cohort %{public}@ ownership will switch from %{public}@ -> %{public}@", buf, 0x20u);
      }

      goto LABEL_32;
    }

    peer = [requestCopy peer];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v38 = sub_10001EA8C;
    v39 = &unk_100081E10;
    v40 = v7;
    v41 = &v56;
    v42 = &v50;
    v43 = &v44;
    v9 = peer;
    v10 = offlineCohortId;
    v11 = v37;
    if (!self)
    {
LABEL_31:

LABEL_32:
      [v7 send];
      sub_10001CE08(v51[5], *(v57 + 24));
      sub_10001CE08(v45[5], 0);
      _Block_object_dispose(&v44, 8);

      _Block_object_dispose(&v50, 8);
      _Block_object_dispose(&v56, 8);
      goto LABEL_33;
    }

    if (sub_10001D804(self, v9, v10))
    {
      v38(v11, 1, 0, 0);
      goto LABEL_31;
    }

    v80 = 0;
    v81 = &v80;
    v82 = 0x2020000000;
    v83 = [v9 hasEntitlement:@"com.apple.geod.offline.service.takeover"];
    if (v81[3])
    {
      v17 = GEOGetOfflineServiceLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v9;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Will allow takeover by peer %{public}@", buf, 0xCu);
      }

      v18 = v10;
      *&v90 = 0;
      *(&v90 + 1) = &v90;
      v91 = 0x3032000000;
      v92 = sub_10001CBB4;
      selfCopy3 = sub_10001CBC4;
      v94 = 0;
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10001F7C4;
      v98 = &unk_1000826F8;
      v102 = &v90;
      selfCopy2 = self;
      v100 = 0;
      v19 = v18;
      v101 = v19;
      geo_isolate_sync_data();
      v20 = *(*(&v90 + 1) + 40);

      _Block_object_dispose(&v90, 8);
      goto LABEL_21;
    }

    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10001EDC4;
    v98 = &unk_1000826F8;
    selfCopy2 = self;
    v100 = v10;
    v102 = &v80;
    v21 = v9;
    v101 = v21;
    geo_isolate_sync_data();
    if (*(v81 + 24) == 1)
    {
      v22 = GEOGetOfflineServiceLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(v90) = 138543362;
        *(&v90 + 4) = v21;
        v23 = "No active peers found, will allow subscription from peer %{public}@";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, v23, &v90, 0xCu);
      }
    }

    else
    {
      v22 = GEOGetOfflineServiceLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(v90) = 138543362;
        *(&v90 + 4) = v21;
        v23 = "Active peers found, will NOT allow subscription from peer %{public}@";
        goto LABEL_19;
      }
    }

LABEL_21:
    v74 = 0;
    v75 = &v74;
    v76 = 0x3032000000;
    v77 = sub_10001CBB4;
    v78 = sub_10001CBC4;
    v79 = 0;
    *&v90 = _NSConcreteStackBlock;
    *(&v90 + 1) = 3221225472;
    v91 = sub_10001EEC4;
    v92 = &unk_1000826F8;
    selfCopy3 = self;
    v24 = v10;
    v94 = v24;
    v96 = &v74;
    v25 = v9;
    v95 = v25;
    geo_isolate_sync_data();
    if (!v75[5])
    {
      v26 = sub_10001EF78([_GEOOfflinePeerHelper alloc], v25, v24);
      v27 = v75[5];
      v75[5] = v26;
    }

    if (*(v81 + 24) == 1)
    {
      v68 = 0;
      v69 = &v68;
      v70 = 0x3032000000;
      v71 = sub_10001CBB4;
      v72 = sub_10001CBC4;
      v73 = 0;
      v60 = _NSConcreteStackBlock;
      v61 = 3221225472;
      v62 = sub_10001F034;
      v63 = &unk_100083990;
      selfCopy5 = self;
      v28 = v24;
      v65 = v28;
      v66 = &v68;
      v67 = &v74;
      geo_isolate_sync_data();
      sub_10001ED08(v75[5], 1);
      v29 = GEOGetOfflineServiceLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v30 = v69[5];
        v31 = v75[5];
        *v84 = 138543874;
        v85 = v28;
        v86 = 2114;
        v87 = v30;
        v88 = 2114;
        v89 = v31;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "via subscribe: cohort %{public}@ ownership will switch from %{public}@ -> %{public}@", v84, 0x20u);
      }

      v38(v11, 1, v75[5], v69[5]);
      _Block_object_dispose(&v68, 8);
    }

    else
    {
      v68 = 0;
      v69 = &v68;
      v70 = 0x3032000000;
      v71 = sub_10001CBB4;
      v72 = sub_10001CBC4;
      v73 = 0;
      v60 = _NSConcreteStackBlock;
      v61 = 3221225472;
      v62 = sub_10001F0D8;
      v63 = &unk_100083990;
      selfCopy5 = self;
      v32 = v24;
      v65 = v32;
      v66 = &v68;
      v67 = &v74;
      geo_isolate_sync_data();
      sub_10001ED08(v75[5], 1);
      v33 = GEOGetOfflineServiceLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = v69[5];
        v35 = v75[5];
        *v84 = 138543874;
        v85 = v32;
        v86 = 2114;
        v87 = v34;
        v88 = 2114;
        v89 = v35;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "via subscribe: cohort %{public}@ ownership will NOT switch from %{public}@ -> %{public}@", v84, 0x20u);
      }

      v38(v11, 0, v75[5], 0);
      _Block_object_dispose(&v68, 8);
    }

    _Block_object_dispose(&v74, 8);
    _Block_object_dispose(&v80, 8);
    goto LABEL_31;
  }

  v12 = [NSError GEOErrorWithCode:-10 reason:@"Invalid cohort id"];
  [v7 setError:v12];

  [v7 send];
LABEL_33:
}

- (void)fetchStateWithRequest:(id)request
{
  requestCopy = request;
  preferredAuditToken = [requestCopy preferredAuditToken];
  offlineCohortId = [preferredAuditToken offlineCohortId];

  v7 = [[GEOOfflineServiceStateFetchStateReply alloc] initWithRequest:requestCopy];
  if ([offlineCohortId length])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    selfCopy = self;
    v8 = offlineCohortId;
    v14 = requestCopy;
    geo_isolate_sync_data();
    if (*(v17 + 24) == 1)
    {
      v9 = [GEOOfflineStateManager shared:_NSConcreteStackBlock];
      [v7 setCurrentSuggestedState:{objc_msgSend(v9, "currentSuggestedStateForCohortId:", v8)}];
    }

    else
    {
      [v7 setCurrentSuggestedState:{0, _NSConcreteStackBlock, 3221225472, sub_10001FA18, &unk_1000826F8, selfCopy, v8, v14, &v16}];
    }

    v11 = +[GEOOfflineStateManager shared];
    [v7 setCurrentState:{objc_msgSend(v11, "currentStateForCohortId:", v8)}];

    [v7 send];
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v10 = [NSError GEOErrorWithCode:-10 reason:@"Invalid cohort id"];
    [v7 setError:v10];

    [v7 send];
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = GEOOfflineStateServer;
  [(GEOOfflineStateServer *)&v4 dealloc];
}

- (GEOOfflineStateServer)initWithDaemon:(id)daemon
{
  v10.receiver = self;
  v10.super_class = GEOOfflineStateServer;
  v3 = [(GEOOfflineStateServer *)&v10 initWithDaemon:daemon];
  if (v3)
  {
    v4 = geo_isolater_create();
    peersIsolater = v3->_peersIsolater;
    v3->_peersIsolater = v4;

    v6 = [NSMutableDictionary dictionaryWithCapacity:10];
    peerHelpers = v3->_peerHelpers;
    v3->_peerHelpers = v6;

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v3 selector:"_suggestedOfflineStateChanged:" name:GEOOfflineSuggestedStateChangedNotification object:0];
  }

  return v3;
}

@end