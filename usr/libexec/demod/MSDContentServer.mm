@interface MSDContentServer
- (BOOL)shouldTryLocalHub:(id)hub;
- (MSDContentServer)init;
- (MSDContentServer)initWithCellularAccess:(BOOL)access;
- (id)getSessionForRequest:(id)request;
- (id)getSessionWithMinRequestLoad;
- (void)allocateRequest:(id)request forSession:(id)session;
- (void)downloadFile:(id)file;
- (void)freeRequest:(id)request forSession:(id)session;
- (void)handleCompletionForDownloadRequest:(id)request withResponse:(id)response forSession:(id)session;
- (void)initServer;
- (void)launchRequest:(id)request toSession:(id)session;
- (void)limitConcurrentRequests;
- (void)updateLocalHubReachability:(BOOL)reachability withRequest:(id)request andResponse:(id)response;
@end

@implementation MSDContentServer

- (MSDContentServer)init
{
  v10.receiver = self;
  v10.super_class = MSDContentServer;
  v2 = [(MSDContentServer *)&v10 init];
  v3 = v2;
  if (v2)
  {
    [(MSDContentServer *)v2 initServer];
    if ([(MSDContentServer *)v3 concurrentSession]>= 1)
    {
      v4 = 0;
      do
      {
        v5 = objc_alloc_init(MSDCDNSession);
        sessionTable = [(MSDContentServer *)v3 sessionTable];
        v7 = objc_alloc_init(NSMutableArray);
        [sessionTable setObject:v7 forKey:v5];

        ++v4;
      }

      while (v4 < [(MSDContentServer *)v3 concurrentSession]);
    }

    v8 = v3;
  }

  return v3;
}

- (MSDContentServer)initWithCellularAccess:(BOOL)access
{
  accessCopy = access;
  v12.receiver = self;
  v12.super_class = MSDContentServer;
  v4 = [(MSDContentServer *)&v12 init];
  v5 = v4;
  if (v4)
  {
    [(MSDContentServer *)v4 initServer];
    if ([(MSDContentServer *)v5 concurrentSession]>= 1)
    {
      v6 = 0;
      do
      {
        v7 = [(MSDSession *)[MSDCDNSession alloc] initWithCellularAccess:accessCopy];
        sessionTable = [(MSDContentServer *)v5 sessionTable];
        v9 = objc_alloc_init(NSMutableArray);
        [sessionTable setObject:v9 forKey:v7];

        ++v6;
      }

      while (v6 < [(MSDContentServer *)v5 concurrentSession]);
    }

    v10 = v5;
  }

  return v5;
}

- (void)downloadFile:(id)file
{
  fileCopy = file;
  v4 = [(MSDContentServer *)self getSessionForRequest:?];
  if (v4)
  {
    [(MSDContentServer *)self launchRequest:fileCopy toSession:v4];
  }
}

- (void)launchRequest:(id)request toSession:(id)session
{
  requestCopy = request;
  sessionCopy = session;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = sub_1000BFE20;
  v44[4] = sub_1000BFE30;
  v45 = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = sub_1000BFE20;
  v42[4] = sub_1000BFE30;
  v43 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = sub_1000BFE20;
  v40[4] = sub_1000BFE30;
  v41 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = sub_1000BFE20;
  v38[4] = sub_1000BFE30;
  v39 = 0;
  v8 = objc_alloc_init(MSDServerRetryPolicyContext);
  downloadCredentials = [requestCopy downloadCredentials];
  [(MSDServerRetryPolicyContext *)v8 setFdc:downloadCredentials];

  originServer = [requestCopy originServer];
  [(MSDServerRetryPolicyContext *)v8 setOriginServer:originServer];

  [(MSDServerRetryPolicyContext *)v8 setTryCachingHub:[(MSDContentServer *)self shouldTryLocalHub:requestCopy]];
  localHubURLSchema = [(MSDContentServer *)self localHubURLSchema];
  [(MSDServerRetryPolicyContext *)v8 setCachedLocalURL:localHubURLSchema];

  v12 = objc_alloc_init(MSDCDNSessionTaskInfo);
  fileInfo = [requestCopy fileInfo];
  fileHash = [fileInfo fileHash];
  [(MSDCDNSessionTaskInfo *)v12 setFileHash:fileHash];

  [(MSDSessionTaskInfo *)v12 setMaxRetry:3];
  savePath = [requestCopy savePath];
  [(MSDSessionTaskInfo *)v12 setSavePath:savePath];

  v16 = [[MSDContentServerURLRetryPolicy alloc] initWithContext:v8];
  v17 = +[NSDate date];
  [v17 timeIntervalSince1970];
  [requestCopy setDispatchTime:?];

  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1000BFE38;
  v27 = &unk_10016C698;
  v34 = v44;
  selfCopy = self;
  v18 = requestCopy;
  v29 = v18;
  v35 = v40;
  v36 = v42;
  v19 = v16;
  v30 = v19;
  v20 = v12;
  v31 = v20;
  v21 = sessionCopy;
  v32 = v21;
  v37 = v38;
  v22 = v8;
  v33 = v22;
  v23 = objc_retainBlock(&v24);
  [(MSDSessionTaskInfo *)v20 setHandler:v23, v24, v25, v26, v27, selfCopy];
  (v23[2])(v23, 0, 0);

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v40, 8);

  _Block_object_dispose(v42, 8);
  _Block_object_dispose(v44, 8);
}

- (void)initServer
{
  [(MSDContentServer *)self setLocalHubReachable:1];
  [(MSDContentServer *)self setLocalHubURLSchema:0];
  [(MSDContentServer *)self setCachedFDC:0];
  [(MSDContentServer *)self setNextRetryTime:0.0];
  [(MSDContentServer *)self setReachabilityLastUpdatedTime:0.0];
  [(MSDContentServer *)self setCachingHubRequest:0];
  [(MSDContentServer *)self setRequestDispatchLock:0];
  [(MSDContentServer *)self setCachingHubRetryLock:0];
  [(MSDContentServer *)self setCachingHubRetryInterval:600.0];
  [(MSDContentServer *)self setConcurrentSession:2];
  [(MSDContentServer *)self setRequestPerSession:6];
  [(MSDContentServer *)self setNumConcurrentRequests:0];
  v3 = objc_alloc_init(NSMutableArray);
  [(MSDContentServer *)self setPendingRequests:v3];

  v4 = +[NSMapTable strongToStrongObjectsMapTable];
  [(MSDContentServer *)self setSessionTable:v4];

  v6 = sub_100063BEC(v5);
  [(MSDContentServer *)self setSignpostId:os_signpost_id_generate(v6)];

  if (os_variant_has_internal_content())
  {
    v7 = +[MSDTestPreferences sharedInstance];
    concurrentSession = [v7 concurrentSession];

    if (concurrentSession >= 1)
    {
      v10 = sub_100063A54(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 134217984;
        v21 = *&concurrentSession;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Override default number of concurrent download session: %ld", &v20, 0xCu);
      }

      [(MSDContentServer *)self setConcurrentSession:concurrentSession];
    }

    v11 = +[MSDTestPreferences sharedInstance];
    concurrentDownloadRequest = [v11 concurrentDownloadRequest];

    if (concurrentDownloadRequest >= 1)
    {
      v14 = sub_100063A54(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 134217984;
        v21 = *&concurrentDownloadRequest;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Override default number of concurrent requests per session: %ld", &v20, 0xCu);
      }

      [(MSDContentServer *)self setRequestPerSession:concurrentDownloadRequest];
    }

    v15 = +[MSDTestPreferences sharedInstance];
    [v15 cachingHubRetryInterval];
    v17 = v16;

    if (v17 > 0.0)
    {
      v19 = sub_100063A54(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 134217984;
        v21 = v17;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Override default caching hub retry interval: %lf", &v20, 0xCu);
      }

      [(MSDContentServer *)self setCachingHubRetryInterval:v17];
    }
  }

  [(MSDContentServer *)self setMaxConcurrentRequests:[(MSDContentServer *)self requestPerSession]* [(MSDContentServer *)self concurrentSession]];
}

- (void)handleCompletionForDownloadRequest:(id)request withResponse:(id)response forSession:(id)session
{
  requestCopy = request;
  responseCopy = response;
  sessionCopy = session;
  os_unfair_lock_lock(&self->_requestDispatchLock);
  [(MSDContentServer *)self freeRequest:requestCopy forSession:sessionCopy];
  numConcurrentRequests = [(MSDContentServer *)self numConcurrentRequests];
  if (numConcurrentRequests < -[MSDContentServer maxConcurrentRequests](self, "maxConcurrentRequests") && (-[MSDContentServer pendingRequests](self, "pendingRequests"), v11 = objc_claimAutoreleasedReturnValue(), [v11 firstObject], v12 = objc_claimAutoreleasedReturnValue(), v11, v12))
  {
    pendingRequests = [(MSDContentServer *)self pendingRequests];
    [pendingRequests removeObjectAtIndex:0];

    [(MSDContentServer *)self allocateRequest:v12 forSession:sessionCopy];
    os_unfair_lock_unlock(&self->_requestDispatchLock);
    [(MSDContentServer *)self launchRequest:v12 toSession:sessionCopy];
  }

  else
  {
    os_unfair_lock_unlock(&self->_requestDispatchLock);
  }

  observer = [(MSDContentServer *)self observer];

  if (observer)
  {
    observer2 = [(MSDContentServer *)self observer];
    [observer2 requestComplete:requestCopy withResponse:responseCopy];
  }

  else
  {
    completion = [requestCopy completion];

    if (!completion)
    {
      goto LABEL_10;
    }

    observer2 = [requestCopy completion];
    (observer2)[2](observer2, responseCopy);
  }

LABEL_10:
}

- (id)getSessionForRequest:(id)request
{
  requestCopy = request;
  os_unfair_lock_lock(&self->_requestDispatchLock);
  numConcurrentRequests = [(MSDContentServer *)self numConcurrentRequests];
  if (numConcurrentRequests >= [(MSDContentServer *)self maxConcurrentRequests])
  {
    pendingRequests = [(MSDContentServer *)self pendingRequests];
    [pendingRequests addObject:requestCopy];

    getSessionWithMinRequestLoad = 0;
    requestCopy = pendingRequests;
  }

  else
  {
    getSessionWithMinRequestLoad = [(MSDContentServer *)self getSessionWithMinRequestLoad];
    [(MSDContentServer *)self allocateRequest:requestCopy forSession:getSessionWithMinRequestLoad];
  }

  os_unfair_lock_unlock(&self->_requestDispatchLock);

  return getSessionWithMinRequestLoad;
}

- (void)allocateRequest:(id)request forSession:(id)session
{
  sessionCopy = session;
  requestCopy = request;
  sessionTable = [(MSDContentServer *)self sessionTable];
  v9 = [sessionTable objectForKey:sessionCopy];

  [v9 addObject:requestCopy];
  [(MSDContentServer *)self setNumConcurrentRequests:[(MSDContentServer *)self numConcurrentRequests]+ 1];
}

- (void)freeRequest:(id)request forSession:(id)session
{
  sessionCopy = session;
  requestCopy = request;
  sessionTable = [(MSDContentServer *)self sessionTable];
  v9 = [sessionTable objectForKey:sessionCopy];

  [v9 removeObject:requestCopy];
  [(MSDContentServer *)self setNumConcurrentRequests:[(MSDContentServer *)self numConcurrentRequests]- 1];
}

- (id)getSessionWithMinRequestLoad
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  sessionTable = [(MSDContentServer *)self sessionTable];
  v4 = [sessionTable countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(sessionTable);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        sessionTable2 = [(MSDContentServer *)self sessionTable];
        v12 = [sessionTable2 objectForKey:v10];

        if ([v12 count] < v8)
        {
          v8 = [v12 count];
          v13 = v10;

          v6 = v13;
        }
      }

      v5 = [sessionTable countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)limitConcurrentRequests
{
  os_unfair_lock_lock(&self->_requestDispatchLock);
  if ([(MSDContentServer *)self requestPerSession]>= 2)
  {
    [(MSDContentServer *)self setRequestPerSession:[(MSDContentServer *)self requestPerSession]- 1];
    v3 = sub_100063A54([(MSDContentServer *)self setMaxConcurrentRequests:[(MSDContentServer *)self requestPerSession]* [(MSDContentServer *)self concurrentSession]]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1000EB258(self, v3);
    }
  }

  os_unfair_lock_unlock(&self->_requestDispatchLock);
}

- (BOOL)shouldTryLocalHub:(id)hub
{
  hubCopy = hub;
  downloadCredentials = [hubCopy downloadCredentials];
  originServer = [hubCopy originServer];
  v7 = [downloadCredentials localCredentialForOriginServer:originServer];

  os_unfair_lock_lock(&self->_cachingHubRetryLock);
  localHubReachable = [(MSDContentServer *)self localHubReachable];
  v9 = localHubReachable;
  if (v7 && (localHubReachable & 1) == 0)
  {
    cachingHubRequest = [(MSDContentServer *)self cachingHubRequest];

    if (cachingHubRequest)
    {
LABEL_4:
      LOBYTE(v9) = 0;
      goto LABEL_18;
    }

    cachedFDC = [(MSDContentServer *)self cachedFDC];
    if (cachedFDC && (v12 = cachedFDC, -[MSDContentServer cachedFDC](self, "cachedFDC"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v7 isEqualToDictionary:v13], v13, v12, (v14 & 1) != 0))
    {
      v15 = +[NSDate date];
      [v15 timeIntervalSince1970];
      v17 = v16;
      [(MSDContentServer *)self nextRetryTime];
      v19 = v18;

      if (v17 <= v19)
      {
        goto LABEL_4;
      }

      v21 = sub_100063A54(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = +[NSDate date];
        [v22 timeIntervalSince1970];
        v24 = v23;
        [(MSDContentServer *)self cachingHubRetryInterval];
        v28 = 134218240;
        v29 = v24;
        v30 = 2048;
        v31 = v25;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Trying local caching hub at %lf after %lf s", &v28, 0x16u);
      }
    }

    else
    {
      v21 = sub_100063A54(cachedFDC);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Request local FDC is new, retrying local caching hub", &v28, 2u);
      }
    }

    v26 = sub_100063A54([(MSDContentServer *)self setCachingHubRequest:hubCopy]);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138543362;
      v29 = hubCopy;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Launching request %{public}@ to retry caching hub", &v28, 0xCu);
    }

    v9 = 1;
  }

  if (v7 && v9)
  {
    [(MSDContentServer *)self setCachedFDC:v7];
  }

LABEL_18:
  os_unfair_lock_unlock(&self->_cachingHubRetryLock);

  return v9;
}

- (void)updateLocalHubReachability:(BOOL)reachability withRequest:(id)request andResponse:(id)response
{
  reachabilityCopy = reachability;
  requestCopy = request;
  responseCopy = response;
  os_unfair_lock_lock(&self->_cachingHubRetryLock);
  [requestCopy dispatchTime];
  v11 = v10;
  [(MSDContentServer *)self reachabilityLastUpdatedTime];
  v13 = v12;
  cachingHubRequest = [(MSDContentServer *)self cachingHubRequest];
  if (cachingHubRequest && (v15 = cachingHubRequest, [(MSDContentServer *)self cachingHubRequest], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16 == requestCopy))
  {
    v18 = sub_100063A54(cachingHubRequest);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 138543618;
      v33 = requestCopy;
      v34 = 1024;
      LODWORD(v35) = reachabilityCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Request %{public}@ complete with local hub reachability=%d", &v32, 0x12u);
    }

    cachingHubRequest = [(MSDContentServer *)self setCachingHubRequest:0];
    v17 = reachabilityCopy;
  }

  else
  {
    v17 = !reachabilityCopy;
  }

  if (v11 > v13 && v17)
  {
    v20 = sub_100063A54(cachingHubRequest);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      [(MSDContentServer *)self reachabilityLastUpdatedTime];
      v22 = v21;
      [requestCopy dispatchTime];
      v32 = 134218754;
      v33 = v22;
      v34 = 2114;
      v35 = requestCopy;
      v36 = 2048;
      v37 = v23;
      v38 = 1024;
      v39 = reachabilityCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Reachability last updated by request dispatched at: %lf; request %{public}@ dispatched at %lf changing local hub reachability={public}%d", &v32, 0x26u);
    }

    [(MSDContentServer *)self setLocalHubReachable:reachabilityCopy];
    [requestCopy dispatchTime];
    [(MSDContentServer *)self setReachabilityLastUpdatedTime:?];
    localHubError = [responseCopy localHubError];
    localizedDescription = [localHubError localizedDescription];
    v26 = +[MSDTargetDevice sharedInstance];
    [v26 setLocalHubFailureReason:localizedDescription];

    v27 = +[MSDMailProcessor sharedInstance];
    [v27 reportCachingHubFailed];
  }

  if (![(MSDContentServer *)self localHubReachable])
  {
    v28 = +[NSDate date];
    [v28 timeIntervalSince1970];
    v30 = v29;
    [(MSDContentServer *)self cachingHubRetryInterval];
    [(MSDContentServer *)self setNextRetryTime:v30 + v31];
  }

  os_unfair_lock_unlock(&self->_cachingHubRetryLock);
}

@end