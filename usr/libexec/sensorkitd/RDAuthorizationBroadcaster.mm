@interface RDAuthorizationBroadcaster
+ (void)initialize;
- (BOOL)hasReaderEntitlementForConnection:(id)connection;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)authorizationStore:(id)store didDetermineInitialAuthorizationValues:(id)values;
- (void)authorizationStore:(id)store didUpdateAuthorizationsForBundleId:(id)id sensors:(id)sensors;
- (void)completeEnrollmentForBundleId:(id)id sensors:(id)sensors;
- (void)dealloc;
- (void)legacyResearchStudyBundleIDs:(id)ds;
- (void)legacyResearchStudyEntitlement:(id)entitlement;
- (void)registerForAuthorizationChangeNotificationsWithEffectiveBundleId:(id)id;
- (void)retrieveCurrentAuthorizedServicesWithReply:(id)reply;
- (void)setDataCollectionEnabled:(BOOL)enabled;
- (void)setFirstRunOnboardingCompleted:(BOOL)completed;
@end

@implementation RDAuthorizationBroadcaster

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100071B38 = os_log_create("com.apple.SensorKit", "AuthorizationBroadcaster");
  }
}

- (void)dealloc
{
  if (self)
  {
    [(NSXPCListener *)self->_listener invalidate];
    [(NSXPCListener *)self->_listener setDelegate:0];
  }

  self->_listener = 0;
  self->_exportedInterface = 0;

  self->_remoteInterface = 0;
  self->_connectionToBundleIds = 0;

  self->_bundleIdToConnections = 0;
  objc_setProperty_nonatomic(self, v3, 0, 72);
  objc_setProperty_nonatomic(self, v4, 0, 80);
  objc_setProperty_nonatomic(self, v5, 0, 88);
  objc_setProperty_nonatomic(self, v6, 0, 96);
  dispatch_release(self->_q);
  v7.receiver = self;
  v7.super_class = RDAuthorizationBroadcaster;
  [(RDAuthorizationBroadcaster *)&v7 dealloc];
}

- (void)authorizationStore:(id)store didDetermineInitialAuthorizationValues:(id)values
{
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003BD84;
  block[3] = &unk_100060E48;
  block[4] = self;
  dispatch_async(q, block);
}

- (void)authorizationStore:(id)store didUpdateAuthorizationsForBundleId:(id)id sensors:(id)sensors
{
  q = self->_q;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003C14C;
  v6[3] = &unk_100061308;
  v6[4] = self;
  v6[5] = id;
  dispatch_async(q, v6);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v6 = _os_activity_create(&_mh_execute_header, "RDAuthorizationBroadcaster new connection", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);
  v7 = qword_100071B38;
  if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_INFO))
  {
    processIdentifier = [connection processIdentifier];
    LODWORD(buf) = 67240192;
    HIDWORD(buf) = processIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "New connection from pid %{public}d", &buf, 8u);
  }

  if (self)
  {
    stateCache = self->_stateCache;
    if (stateCache)
    {
      v10 = mach_continuous_time();
      if (qword_100071B60 != -1)
      {
        dispatch_once(&qword_100071B60, &stru_100060D90);
      }

      v11 = qword_100071B68;
      v12 = *&qword_100071B70;
      v13 = *&qword_100071B78;
      TMConvertTicksToSeconds();
      if (v11 >= v10)
      {
        v14 = -v14;
      }

      if (v13 + v12 + v14 < stateCache->_localDaemonLaunchTime + 3.0 + stateCache->_remoteRTCOffset)
      {
        AnalyticsSendEventLazy();
      }
    }

    exportedInterface = self->_exportedInterface;
  }

  else
  {
    exportedInterface = 0;
  }

  [connection setExportedInterface:exportedInterface];
  [connection setExportedObject:self];
  if (self)
  {
    remoteInterface = self->_remoteInterface;
  }

  else
  {
    remoteInterface = 0;
  }

  [connection setRemoteObjectInterface:remoteInterface];
  [connection setInterruptionHandler:&stru_1000617C8];
  objc_initWeak(&buf, connection);
  objc_initWeak(&location, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10003C790;
  v18[3] = &unk_1000617F0;
  objc_copyWeak(&v19, &buf);
  objc_copyWeak(&v20, &location);
  [connection setInvalidationHandler:v18];
  [connection _setQueue:self->_q];
  [connection resume];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
  objc_destroyWeak(&buf);
  os_activity_scope_leave(&state);
  return 1;
}

- (void)registerForAuthorizationChangeNotificationsWithEffectiveBundleId:(id)id
{
  selfCopy = self;
  dispatch_assert_queue_V2(self->_q);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&_mh_execute_header, "RDAuthorizationBroadcaster registration", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);
  v6 = +[NSXPCConnection currentConnection];
  v8 = v6;
  if (id)
  {
    idCopy2 = id;
    if (([id isEqualToString:@"com.apple.private.SensorKit._compositeBundle"] & 1) == 0)
    {
      idCopy2 = id;
      if (![(RDAuthorizationBroadcaster *)selfCopy valueForEntitlement:@"com.apple.SensorKit.effective-bundle" connection:v8])
      {
        v10 = qword_100071B38;
        if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_ERROR))
        {
          processIdentifier = [(NSXPCConnection *)v8 processIdentifier];
          *buf = 67240192;
          LODWORD(v82) = processIdentifier;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Attempting to set effective bundle identifier without proper entitlement, pid %{public}d", buf, 8u);
        }

LABEL_86:
        [(NSXPCConnection *)v8 invalidate];
        goto LABEL_87;
      }
    }
  }

  else
  {
    idCopy2 = sub_10001B58C(v6, v7);
    if (!idCopy2)
    {
      v53 = qword_100071B38;
      if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_FAULT))
      {
        processIdentifier2 = [(NSXPCConnection *)v8 processIdentifier];
        *buf = 67240192;
        LODWORD(v82) = processIdentifier2;
        _os_log_fault_impl(&_mh_execute_header, v53, OS_LOG_TYPE_FAULT, "Failed to determine bundle id for pid %{public}d", buf, 8u);
      }

      goto LABEL_86;
    }
  }

  v12 = qword_100071B38;
  if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_DEFAULT))
  {
    processIdentifier3 = [(NSXPCConnection *)v8 processIdentifier];
    *buf = 138543874;
    v82 = idCopy2;
    v83 = 1026;
    v84 = processIdentifier3;
    v85 = 1026;
    v86 = id != 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Client bundleId determined, bundle id, %{public}@, pid, %{public}d, effective bundle id used, %{public}d", buf, 0x18u);
  }

  v14 = [(NSMapTable *)selfCopy->_connectionToBundleIds objectForKey:v8];
  if (!v14)
  {
    v14 = +[NSMutableSet set];
  }

  obj = v14;
  [v14 addObject:idCopy2];
  [(NSMapTable *)selfCopy->_connectionToBundleIds setObject:obj forKey:v8];
  v15 = [(NSMutableDictionary *)selfCopy->_bundleIdToConnections objectForKeyedSubscript:idCopy2];
  if (!v15)
  {
    v15 = +[NSMutableSet set];
  }

  [v15 addObject:v8];
  [(NSMutableDictionary *)selfCopy->_bundleIdToConnections setObject:v15 forKeyedSubscript:idCopy2];
  if ([-[SRAuthorizationStore readerAuthorizationBundleIdValues](selfCopy->_authStore "readerAuthorizationBundleIdValues")])
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v56 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
    if (v56)
    {
      v57 = *v64;
      v58 = selfCopy;
      v55 = v8;
      do
      {
        for (i = 0; i != v56; i = i + 1)
        {
          if (*v64 != v57)
          {
            objc_enumerationMutation(obj);
          }

          v61 = *(*(&v63 + 1) + 8 * i);
          if ([v61 isEqualToString:{@"com.apple.private.SensorKit._compositeBundle", v55}])
          {
            v16 = +[NSMutableSet set];
            readerAuthorizationBundleIdValues = [(SRAuthorizationStore *)selfCopy->_authStore readerAuthorizationBundleIdValues];
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v18 = [readerAuthorizationBundleIdValues countByEnumeratingWithState:&v72 objects:buf count:16];
            if (v18)
            {
              v19 = *v73;
              do
              {
                for (j = 0; j != v18; j = j + 1)
                {
                  if (*v73 != v19)
                  {
                    objc_enumerationMutation(readerAuthorizationBundleIdValues);
                  }

                  v21 = [readerAuthorizationBundleIdValues objectForKeyedSubscript:*(*(&v72 + 1) + 8 * j)];
                  v70 = 0u;
                  v71 = 0u;
                  v68 = 0u;
                  v69 = 0u;
                  v22 = [v21 countByEnumeratingWithState:&v68 objects:&v77 count:16];
                  if (v22)
                  {
                    v23 = *v69;
                    do
                    {
                      for (k = 0; k != v22; k = k + 1)
                      {
                        if (*v69 != v23)
                        {
                          objc_enumerationMutation(v21);
                        }

                        v25 = *(*(&v68 + 1) + 8 * k);
                        if ([objc_msgSend(v21 objectForKeyedSubscript:{v25), "BOOLValue"}])
                        {
                          [v16 addObject:v25];
                        }
                      }

                      v22 = [v21 countByEnumeratingWithState:&v68 objects:&v77 count:16];
                    }

                    while (v22);
                  }
                }

                v18 = [readerAuthorizationBundleIdValues countByEnumeratingWithState:&v72 objects:buf count:16];
              }

              while (v18);
            }

            v26 = v58;
            v27 = [NSSet setWithSet:v16];
            v28 = v61;
          }

          else
          {
            dispatch_assert_queue_V2(selfCopy->_q);
            v27 = +[NSMutableSet set];
            readerAuthorizationBundleIdValues2 = [(SRAuthorizationStore *)selfCopy->_authStore readerAuthorizationBundleIdValues];
            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            v30 = [readerAuthorizationBundleIdValues2 objectForKeyedSubscript:v61];
            v31 = [v30 countByEnumeratingWithState:&v77 objects:buf count:16];
            v28 = v61;
            if (v31)
            {
              v32 = *v78;
              do
              {
                for (m = 0; m != v31; m = m + 1)
                {
                  if (*v78 != v32)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v34 = *(*(&v77 + 1) + 8 * m);
                  if ([objc_msgSend(objc_msgSend(readerAuthorizationBundleIdValues2 objectForKeyedSubscript:{v61), "objectForKeyedSubscript:", v34), "BOOLValue"}])
                  {
                    [(NSSet *)v27 addObject:v34];
                  }
                }

                v31 = [v30 countByEnumeratingWithState:&v77 objects:buf count:16];
              }

              while (v31);
            }

            v26 = v58;
          }

          if ([v28 isEqualToString:@"com.apple.private.SensorKit._compositeBundle"])
          {
            v35 = +[NSMutableSet set];
            readerAuthorizationBundleIdValues3 = [(SRAuthorizationStore *)v26->_authStore readerAuthorizationBundleIdValues];
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v37 = [readerAuthorizationBundleIdValues3 countByEnumeratingWithState:&v72 objects:buf count:16];
            if (v37)
            {
              v62 = *v73;
              do
              {
                for (n = 0; n != v37; n = n + 1)
                {
                  if (*v73 != v62)
                  {
                    objc_enumerationMutation(readerAuthorizationBundleIdValues3);
                  }

                  v39 = [readerAuthorizationBundleIdValues3 objectForKeyedSubscript:*(*(&v72 + 1) + 8 * n)];
                  v70 = 0u;
                  v71 = 0u;
                  v68 = 0u;
                  v69 = 0u;
                  v40 = [v39 countByEnumeratingWithState:&v68 objects:&v77 count:16];
                  if (v40)
                  {
                    v41 = *v69;
                    do
                    {
                      for (ii = 0; ii != v40; ii = ii + 1)
                      {
                        if (*v69 != v41)
                        {
                          objc_enumerationMutation(v39);
                        }

                        v43 = *(*(&v68 + 1) + 8 * ii);
                        if ([v39 count] && !-[NSSet containsObject:](v27, "containsObject:", v43))
                        {
                          [v35 addObject:v43];
                        }
                      }

                      v40 = [v39 countByEnumeratingWithState:&v68 objects:&v77 count:16];
                    }

                    while (v40);
                  }
                }

                v37 = [readerAuthorizationBundleIdValues3 countByEnumeratingWithState:&v72 objects:buf count:16];
              }

              while (v37);
            }

            selfCopy = v58;
            v44 = [NSSet setWithSet:v35];
          }

          else
          {
            dispatch_assert_queue_V2(v26->_q);
            v44 = +[NSMutableSet set];
            readerAuthorizationBundleIdValues4 = [(SRAuthorizationStore *)v26->_authStore readerAuthorizationBundleIdValues];
            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            v46 = [readerAuthorizationBundleIdValues4 objectForKeyedSubscript:v61];
            v47 = [v46 countByEnumeratingWithState:&v77 objects:buf count:16];
            if (v47)
            {
              v48 = *v78;
              do
              {
                for (jj = 0; jj != v47; jj = jj + 1)
                {
                  if (*v78 != v48)
                  {
                    objc_enumerationMutation(v46);
                  }

                  v50 = *(*(&v77 + 1) + 8 * jj);
                  if (([objc_msgSend(objc_msgSend(readerAuthorizationBundleIdValues4 objectForKeyedSubscript:{v61), "objectForKeyedSubscript:", v50), "BOOLValue"}] & 1) == 0)
                  {
                    [(NSSet *)v44 addObject:v50];
                  }
                }

                v47 = [v46 countByEnumeratingWithState:&v77 objects:buf count:16];
              }

              while (v47);
            }

            selfCopy = v58;
          }

          v51 = [(NSDictionary *)[(SRAuthorizationStore *)selfCopy->_authStore readerLastModifiedAuthorizationTimes] objectForKeyedSubscript:v61];
          if (v51)
          {
            v52 = v51;
          }

          else
          {
            v52 = &__NSDictionary0__struct;
          }

          [-[NSXPCConnection remoteObjectProxy](v55 "remoteObjectProxy")];
        }

        v56 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
      }

      while (v56);
    }
  }

LABEL_87:
  os_activity_scope_leave(&state);
}

- (void)retrieveCurrentAuthorizedServicesWithReply:(id)reply
{
  selfCopy = self;
  dispatch_assert_queue_V2(self->_q);
  v5 = +[NSXPCConnection currentConnection];
  if ([(RDAuthorizationBroadcaster *)selfCopy valueForEntitlement:@"com.apple.private.SensorKit.prerequisite.readonly" connection:v5]|| [(RDAuthorizationBroadcaster *)selfCopy valueForEntitlement:@"com.apple.private.SensorKit.prerequisite.readwrite" connection:v5]|| [(RDAuthorizationBroadcaster *)selfCopy hasReaderEntitlementForConnection:v5])
  {
    v6 = [(NSMapTable *)selfCopy->_connectionToBundleIds objectForKey:v5];
    if (v6)
    {
      v7 = v6;
      replyCopy = reply;
      v77 = +[NSMutableDictionary dictionary];
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v82 = v7;
      v83 = selfCopy;
      v80 = [v7 countByEnumeratingWithState:&v96 objects:v110 count:16];
      if (v80)
      {
        v8 = *v97;
        v78 = *v97;
        do
        {
          v9 = 0;
          do
          {
            if (*v97 != v8)
            {
              objc_enumerationMutation(v7);
            }

            v84 = v9;
            v10 = *(*(&v96 + 1) + 8 * v9);
            v86 = v10;
            if ([v10 isEqualToString:@"com.apple.private.SensorKit._compositeBundle"])
            {
              v11 = +[NSMutableSet set];
              readerAuthorizationBundleIdValues = [(SRAuthorizationStore *)selfCopy->_authStore readerAuthorizationBundleIdValues];
              v104 = 0u;
              v105 = 0u;
              v106 = 0u;
              v107 = 0u;
              v13 = [readerAuthorizationBundleIdValues countByEnumeratingWithState:&v104 objects:buf count:16];
              if (v13)
              {
                v14 = v13;
                v15 = *v105;
                do
                {
                  for (i = 0; i != v14; i = i + 1)
                  {
                    if (*v105 != v15)
                    {
                      objc_enumerationMutation(readerAuthorizationBundleIdValues);
                    }

                    v17 = [readerAuthorizationBundleIdValues objectForKeyedSubscript:*(*(&v104 + 1) + 8 * i)];
                    v100 = 0u;
                    v101 = 0u;
                    v102 = 0u;
                    v103 = 0u;
                    v18 = [v17 countByEnumeratingWithState:&v100 objects:&v111 count:16];
                    if (v18)
                    {
                      v19 = v18;
                      v20 = *v101;
                      do
                      {
                        for (j = 0; j != v19; j = j + 1)
                        {
                          if (*v101 != v20)
                          {
                            objc_enumerationMutation(v17);
                          }

                          v22 = *(*(&v100 + 1) + 8 * j);
                          if ([objc_msgSend(v17 objectForKeyedSubscript:{v22), "BOOLValue"}])
                          {
                            [v11 addObject:v22];
                          }
                        }

                        v19 = [v17 countByEnumeratingWithState:&v100 objects:&v111 count:16];
                      }

                      while (v19);
                    }
                  }

                  v14 = [readerAuthorizationBundleIdValues countByEnumeratingWithState:&v104 objects:buf count:16];
                }

                while (v14);
              }

              v23 = [NSSet setWithSet:v11];
              v7 = v82;
              selfCopy = v83;
              v8 = v78;
            }

            else
            {
              dispatch_assert_queue_V2(selfCopy->_q);
              v23 = +[NSMutableSet set];
              readerAuthorizationBundleIdValues2 = [(SRAuthorizationStore *)selfCopy->_authStore readerAuthorizationBundleIdValues];
              v111 = 0u;
              v112 = 0u;
              v113 = 0u;
              v114 = 0u;
              v25 = [readerAuthorizationBundleIdValues2 objectForKeyedSubscript:v10];
              v26 = [v25 countByEnumeratingWithState:&v111 objects:buf count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v112;
                do
                {
                  for (k = 0; k != v27; k = k + 1)
                  {
                    if (*v112 != v28)
                    {
                      objc_enumerationMutation(v25);
                    }

                    v30 = *(*(&v111 + 1) + 8 * k);
                    if ([objc_msgSend(objc_msgSend(readerAuthorizationBundleIdValues2 objectForKeyedSubscript:{v86), "objectForKeyedSubscript:", v30), "BOOLValue"}])
                    {
                      [(NSSet *)v23 addObject:v30];
                    }
                  }

                  v27 = [v25 countByEnumeratingWithState:&v111 objects:buf count:16];
                }

                while (v27);
              }
            }

            if (v23)
            {
              [v77 setObject:v23 forKeyedSubscript:v86];
            }

            v9 = v84 + 1;
          }

          while ((v84 + 1) != v80);
          v80 = [v7 countByEnumeratingWithState:&v96 objects:v110 count:16];
        }

        while (v80);
      }

      v76 = +[NSMutableDictionary dictionary];
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v81 = [v7 countByEnumeratingWithState:&v92 objects:v109 count:16];
      if (v81)
      {
        v31 = *v93;
        v75 = *v93;
        do
        {
          for (m = 0; m != v81; m = m + 1)
          {
            if (*v93 != v31)
            {
              objc_enumerationMutation(v7);
            }

            v87 = *(*(&v92 + 1) + 8 * m);
            if ([v87 isEqualToString:@"com.apple.private.SensorKit._compositeBundle"])
            {
              if (selfCopy)
              {
                v79 = m;
                v33 = +[NSMutableSet set];
                readerAuthorizationBundleIdValues3 = [(SRAuthorizationStore *)selfCopy->_authStore readerAuthorizationBundleIdValues];
                v104 = 0u;
                v105 = 0u;
                v106 = 0u;
                v107 = 0u;
                v35 = [readerAuthorizationBundleIdValues3 countByEnumeratingWithState:&v104 objects:buf count:16];
                if (v35)
                {
                  v36 = v35;
                  v37 = *v105;
                  do
                  {
                    for (n = 0; n != v36; n = n + 1)
                    {
                      if (*v105 != v37)
                      {
                        objc_enumerationMutation(readerAuthorizationBundleIdValues3);
                      }

                      v39 = [readerAuthorizationBundleIdValues3 objectForKeyedSubscript:*(*(&v104 + 1) + 8 * n)];
                      v100 = 0u;
                      v101 = 0u;
                      v102 = 0u;
                      v103 = 0u;
                      v40 = [v39 countByEnumeratingWithState:&v100 objects:&v111 count:16];
                      if (v40)
                      {
                        v41 = v40;
                        v42 = *v101;
                        do
                        {
                          for (ii = 0; ii != v41; ii = ii + 1)
                          {
                            if (*v101 != v42)
                            {
                              objc_enumerationMutation(v39);
                            }

                            v44 = *(*(&v100 + 1) + 8 * ii);
                            if ([objc_msgSend(v39 objectForKeyedSubscript:{v44), "BOOLValue"}])
                            {
                              [v33 addObject:v44];
                            }
                          }

                          v41 = [v39 countByEnumeratingWithState:&v100 objects:&v111 count:16];
                        }

                        while (v41);
                      }
                    }

                    v36 = [readerAuthorizationBundleIdValues3 countByEnumeratingWithState:&v104 objects:buf count:16];
                  }

                  while (v36);
                  v54 = [NSSet setWithSet:v33];
                  selfCopy = v83;
                }

                else
                {
                  v54 = [NSSet setWithSet:v33];
                }

                v55 = +[NSMutableSet set];
                readerAuthorizationBundleIdValues4 = [(SRAuthorizationStore *)selfCopy->_authStore readerAuthorizationBundleIdValues];
                v104 = 0u;
                v105 = 0u;
                v106 = 0u;
                v107 = 0u;
                v57 = [readerAuthorizationBundleIdValues4 countByEnumeratingWithState:&v104 objects:buf count:16];
                if (v57)
                {
                  v58 = v57;
                  v85 = *v105;
                  do
                  {
                    for (jj = 0; jj != v58; jj = jj + 1)
                    {
                      if (*v105 != v85)
                      {
                        objc_enumerationMutation(readerAuthorizationBundleIdValues4);
                      }

                      v60 = [readerAuthorizationBundleIdValues4 objectForKeyedSubscript:*(*(&v104 + 1) + 8 * jj)];
                      v100 = 0u;
                      v101 = 0u;
                      v102 = 0u;
                      v103 = 0u;
                      v61 = [v60 countByEnumeratingWithState:&v100 objects:&v111 count:16];
                      if (v61)
                      {
                        v62 = v61;
                        v63 = *v101;
                        do
                        {
                          for (kk = 0; kk != v62; kk = kk + 1)
                          {
                            if (*v101 != v63)
                            {
                              objc_enumerationMutation(v60);
                            }

                            v65 = *(*(&v100 + 1) + 8 * kk);
                            if ([v60 count] && !-[NSSet containsObject:](v54, "containsObject:", v65))
                            {
                              [v55 addObject:v65];
                            }
                          }

                          v62 = [v60 countByEnumeratingWithState:&v100 objects:&v111 count:16];
                        }

                        while (v62);
                      }
                    }

                    v58 = [readerAuthorizationBundleIdValues4 countByEnumeratingWithState:&v104 objects:buf count:16];
                  }

                  while (v58);
                }

                v45 = [NSSet setWithSet:v55];
                v7 = v82;
                selfCopy = v83;
                v31 = v75;
                m = v79;
                if (v45)
                {
                  goto LABEL_100;
                }
              }
            }

            else if (selfCopy)
            {
              dispatch_assert_queue_V2(selfCopy->_q);
              v45 = +[NSMutableSet set];
              readerAuthorizationBundleIdValues5 = [(SRAuthorizationStore *)selfCopy->_authStore readerAuthorizationBundleIdValues];
              v111 = 0u;
              v112 = 0u;
              v113 = 0u;
              v114 = 0u;
              v47 = [readerAuthorizationBundleIdValues5 objectForKeyedSubscript:v87];
              v48 = [v47 countByEnumeratingWithState:&v111 objects:buf count:16];
              if (!v48)
              {
                selfCopy = v83;
                if (!v45)
                {
                  continue;
                }

LABEL_100:
                [v76 setObject:v45 forKeyedSubscript:v87];
                continue;
              }

              v49 = v48;
              v50 = m;
              v51 = *v112;
              do
              {
                for (mm = 0; mm != v49; mm = mm + 1)
                {
                  if (*v112 != v51)
                  {
                    objc_enumerationMutation(v47);
                  }

                  v53 = *(*(&v111 + 1) + 8 * mm);
                  if (([objc_msgSend(objc_msgSend(readerAuthorizationBundleIdValues5 objectForKeyedSubscript:{v87), "objectForKeyedSubscript:", v53), "BOOLValue"}] & 1) == 0)
                  {
                    [(NSSet *)v45 addObject:v53];
                  }
                }

                v49 = [v47 countByEnumeratingWithState:&v111 objects:buf count:16];
              }

              while (v49);
              m = v50;
              v7 = v82;
              selfCopy = v83;
              if (v45)
              {
                goto LABEL_100;
              }
            }
          }

          v81 = [v7 countByEnumeratingWithState:&v92 objects:v109 count:16];
        }

        while (v81);
      }

      v66 = +[NSMutableDictionary dictionary];
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v67 = [v7 countByEnumeratingWithState:&v88 objects:v108 count:16];
      if (v67)
      {
        v68 = v67;
        v69 = *v89;
        do
        {
          for (nn = 0; nn != v68; nn = nn + 1)
          {
            if (*v89 != v69)
            {
              objc_enumerationMutation(v7);
            }

            [v66 setObject:-[NSDictionary objectForKeyedSubscript:](-[SRAuthorizationStore readerLastModifiedAuthorizationTimes](selfCopy->_authStore forKeyedSubscript:{"readerLastModifiedAuthorizationTimes"), "objectForKeyedSubscript:", *(*(&v88 + 1) + 8 * nn)), *(*(&v88 + 1) + 8 * nn)}];
          }

          v68 = [v7 countByEnumeratingWithState:&v88 objects:v108 count:16];
        }

        while (v68);
      }

      sub_10003B54C(selfCopy);
      v71 = *(replyCopy + 2);
    }

    else
    {
      v72 = qword_100071B38;
      if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        LODWORD(v116) = [(NSXPCConnection *)v5 processIdentifier];
        _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "Client requested authorized services prior to registration, pid %{public}d", buf, 8u);
      }

      sub_10003B54C(selfCopy);
      v71 = *(reply + 2);
    }

    v71();
  }

  else
  {
    v73 = qword_100071B38;
    if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v116 = v5;
      _os_log_error_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "Attempting to read prerequisite values without the proper entitlement, %{public}@", buf, 0xCu);
    }

    [(NSXPCConnection *)v5 invalidate];
  }
}

- (void)setDataCollectionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  dispatch_assert_queue_V2(self->_q);
  v5 = +[NSXPCConnection currentConnection];
  v6 = [(RDAuthorizationBroadcaster *)self valueForEntitlement:@"com.apple.private.SensorKit.prerequisite.readwrite" connection:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 BOOLValue])
  {
    defaults = self->_defaults;
    if (defaults)
    {
      sub_100029538(defaults, 0, enabledCopy);
    }

    sub_10001D9A8(RDNotifier, @"com.apple.SensorKit.prerequisitesUpdated");
    followUpController = self->_followUpController;
    *v11 = @"com.apple.SensorKit.followup.enableSensorKit";
    [(SRFollowUpPosting *)followUpController clearPendingFollowUpItemsWithUniqueIdentifiers:[NSArray completion:"arrayWithObjects:count:" arrayWithObjects:v11 count:1], &stru_100061830];
    Weak = objc_loadWeak(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [Weak authorizationBroadcaster:self didSetDataCollectionEnabled:enabledCopy];
    }

    sub_10003C280(&self->super.isa);
  }

  else
  {
    v10 = qword_100071B38;
    if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_ERROR))
    {
      *v11 = 138543362;
      *&v11[4] = v5;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Attempting to set prerequisite values without the proper entitlement, %{public}@", v11, 0xCu);
    }

    [(NSXPCConnection *)v5 invalidate];
  }
}

- (void)setFirstRunOnboardingCompleted:(BOOL)completed
{
  completedCopy = completed;
  dispatch_assert_queue_V2(self->_q);
  v5 = +[NSXPCConnection currentConnection];
  v6 = [(RDAuthorizationBroadcaster *)self valueForEntitlement:@"com.apple.private.SensorKit.prerequisite.readwrite" connection:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 BOOLValue])
  {
    defaults = self->_defaults;
    if (defaults)
    {
      sub_100029538(&self->_defaults->super.isa, 2, completedCopy);
      sub_100029538(defaults, 1, completedCopy);
    }

    sub_10001D9A8(RDNotifier, @"com.apple.SensorKit.prerequisitesUpdated");

    sub_10003C280(&self->super.isa);
  }

  else
  {
    v8 = qword_100071B38;
    if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Attempting to set prerequisite values without the proper entitlement, %{public}@", &v9, 0xCu);
    }

    [(NSXPCConnection *)v5 invalidate];
  }
}

- (void)completeEnrollmentForBundleId:(id)id sensors:(id)sensors
{
  dispatch_assert_queue_V2(self->_q);
  v7 = +[NSXPCConnection currentConnection];
  v8 = [(RDAuthorizationBroadcaster *)self valueForEntitlement:@"com.apple.private.SensorKit.prerequisite.enrollment-complete" connection:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 BOOLValue])
  {
    Weak = objc_loadWeak(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {

      [Weak authorizationBroadcaster:self didCompleteEnrollmentFor:id sensors:sensors];
    }
  }

  else
  {
    v10 = qword_100071B38;
    if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v7;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Attempting to set prerequisite values without the proper entitlement, %{public}@", &v11, 0xCu);
    }

    [(NSXPCConnection *)v7 invalidate];
  }
}

- (void)legacyResearchStudyBundleIDs:(id)ds
{
  dispatch_assert_queue_V2(self->_q);
  v5 = +[NSXPCConnection currentConnection];
  if ([(RDAuthorizationBroadcaster *)self valueForEntitlement:@"com.apple.private.SensorKit.prerequisite.readonly" connection:v5]|| [(RDAuthorizationBroadcaster *)self valueForEntitlement:@"com.apple.private.SensorKit.prerequisite.readwrite" connection:v5])
  {
    v6 = sub_10002B488(&self->_defaults->super.isa);
    v7 = *(ds + 2);

    v7(ds, v6);
  }

  else
  {
    v8 = qword_100071B38;
    if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Attempting to read prerequisite values without the proper entitlement, %{public}@", &v9, 0xCu);
    }

    [(NSXPCConnection *)v5 invalidate];
  }
}

- (void)legacyResearchStudyEntitlement:(id)entitlement
{
  dispatch_assert_queue_V2(self->_q);
  v5 = +[NSXPCConnection currentConnection];
  if ([(RDAuthorizationBroadcaster *)self valueForEntitlement:@"com.apple.private.SensorKit.prerequisite.readonly" connection:v5]|| [(RDAuthorizationBroadcaster *)self valueForEntitlement:@"com.apple.private.SensorKit.prerequisite.readwrite" connection:v5])
  {
    v6 = sub_10002B4A0(&self->_defaults->super.isa);
    v7 = *(entitlement + 2);

    v7(entitlement, v6);
  }

  else
  {
    v8 = qword_100071B38;
    if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Attempting to read prerequisite values without the proper entitlement, %{public}@", &v9, 0xCu);
    }

    [(NSXPCConnection *)v5 invalidate];
  }
}

- (BOOL)hasReaderEntitlementForConnection:(id)connection
{
  if ([(RDAuthorizationBroadcaster *)self valueForEntitlement:@"com.apple.sensorkit.reader.allow" connection:connection])
  {
    return 1;
  }

  if ([(RDAuthorizationBroadcaster *)self valueForEntitlement:@"com.apple.private.sensorkit.reader.wildcard.allow" connection:connection])
  {
    return 1;
  }

  if ([(RDAuthorizationBroadcaster *)self valueForEntitlement:@"com.apple.developer.sensorkit.reader.allow" connection:connection])
  {
    return 1;
  }

  return [(RDAuthorizationBroadcaster *)self valueForEntitlement:@"com.apple.private.sensorkit.reader.allow" connection:connection]!= 0;
}

@end